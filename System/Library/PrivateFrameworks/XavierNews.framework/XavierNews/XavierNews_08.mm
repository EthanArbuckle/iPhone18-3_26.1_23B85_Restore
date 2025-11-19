unint64_t sub_217F17190(uint64_t a1)
{
  sub_217F4ADD4();

  v2 = MEMORY[0x21CEAEBA0](a1, &type metadata for GroupableHeadline);
  MEMORY[0x21CEAEAC0](v2);

  return 0xD00000000000002BLL;
}

uint64_t sub_217F17218(_OWORD *a1, void **a2, uint64_t a3)
{
  *v42 = *a1;
  *&v42[13] = *(a1 + 13);
  sub_217E98168(v42, v40);
  v6 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *a2;
  *&v40[0] = *a2;
  *a2 = 0x8000000000000000;
  v9 = 256;
  if (!v42[25])
  {
    v9 = 0;
  }

  v10 = v9 | v42[24];
  v11 = 0x10000;
  if (!v42[26])
  {
    v11 = 0;
  }

  v12 = 0x1000000;
  if (!v42[27])
  {
    v12 = 0;
  }

  v13 = v10 | v11 | v12;
  v14 = 0x100000000;
  if (!v42[28])
  {
    v14 = 0;
  }

  v16 = sub_217E8E9D0(*v42, *&v42[8], v13 | v14, *&v42[16]);
  v17 = v8[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_35;
  }

  v3 = v15;
  if (v8[3] >= v19)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_22;
    }

LABEL_35:
    sub_217E8FA94();
    v8 = *&v40[0];
    goto LABEL_22;
  }

  sub_217E927B4(v19, isUniquelyReferenced_nonNull_native);
  v8 = *&v40[0];
  v20 = 256;
  if (!v42[25])
  {
    v20 = 0;
  }

  v21 = v20 | v42[24];
  v22 = 0x10000;
  if (!v42[26])
  {
    v22 = 0;
  }

  v23 = 0x1000000;
  if (!v42[27])
  {
    v23 = 0;
  }

  v24 = v21 | v22 | v23;
  v25 = 0x100000000;
  if (!v42[28])
  {
    v25 = 0;
  }

  v26 = sub_217E8E9D0(*v42, *&v42[8], v24 | v25, *&v42[16]);
  if ((v3 & 1) != (v27 & 1))
  {
    result = sub_217F4B1C4();
    __break(1u);
    return result;
  }

  v16 = v26;
LABEL_22:
  v28 = *a2;
  *a2 = v8;

  v29 = *a2;
  if (v3)
  {
    sub_217F23FA4(v42);
  }

  else
  {
    v30 = 256;
    if (!v42[25])
    {
      v30 = 0;
    }

    v31 = v30 | v42[24];
    v32 = 0x10000;
    if (!v42[26])
    {
      v32 = 0;
    }

    v33 = 0x1000000;
    if (!v42[27])
    {
      v33 = 0;
    }

    v34 = v31 | v32 | v33;
    v35 = 0x100000000;
    if (!v42[28])
    {
      v35 = 0;
    }

    sub_217F35600(v16, *v42, *&v42[8], v34 | v35, MEMORY[0x277D84FA0], *a2, *&v42[16]);
  }

  v36 = v29[7] + 8 * v16;
  sub_217E98218(a3, v40);
  sub_217F19600(v40, a3);
  v38[2] = v40[2];
  v38[3] = v40[3];
  v39[0] = v41[0];
  *(v39 + 9) = *(v41 + 9);
  v38[0] = v40[0];
  v38[1] = v40[1];
  return sub_217E98274(v38);
}

uint64_t sub_217F174B8(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = floor(*(a2 + 952) * (*(*result + 16) + 1));
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v3 < 9.22337204e18)
  {
    v4 = 1 << *(v2 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v2 + 64);
    v7 = (v4 + 63) >> 6;
    v8 = *result;

    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    if (!v6)
    {
      goto LABEL_9;
    }

    do
    {
LABEL_7:
      while (1)
      {
        v11 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v12 = *(v2 + 56) + 40 * (v11 | (v9 << 6));
        if ((*(v12 + 16) & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          goto LABEL_9;
        }
      }

      v15 = *v12;
      v14 = *(v12 + 8);
      v16 = *(v12 + 24);
      v17 = *(v12 + 32);

      result = swift_isUniquelyReferenced_nonNull_native();
      v23 = v15;
      if ((result & 1) == 0)
      {
        result = sub_217EA0D20(0, *(v10 + 16) + 1, 1);
      }

      v19 = *(v10 + 16);
      v18 = *(v10 + 24);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        result = sub_217EA0D20((v18 > 1), v19 + 1, 1);
        v20 = v19 + 1;
      }

      *(v10 + 16) = v20;
      v21 = v10 + 40 * v19;
      *(v21 + 32) = v23;
      *(v21 + 40) = v14;
      *(v21 + 48) = 0;
      *(v21 + 56) = v16;
      *(v21 + 64) = v17;
    }

    while (v6);
LABEL_9:
    while (1)
    {
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v13 >= v7)
      {

        v22 = *(v10 + 16);

        return v22 < v3;
      }

      v6 = *(v2 + 64 + 8 * v13);
      ++v9;
      if (v6)
      {
        v9 = v13;
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_217F176C4(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = floor(*(a2 + 960) * (*(*result + 16) + 1));
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v3 < 9.22337204e18)
  {
    v4 = 1 << *(v2 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v2 + 64);
    v7 = (v4 + 63) >> 6;
    v8 = *result;

    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    if (!v6)
    {
      goto LABEL_9;
    }

    do
    {
LABEL_7:
      while (1)
      {
        v11 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v12 = *(v2 + 56) + 40 * (v11 | (v9 << 6));
        if (*(v12 + 16))
        {
          break;
        }

        if (!v6)
        {
          goto LABEL_9;
        }
      }

      v14 = *(v12 + 8);
      v22 = *v12;
      v15 = *(v12 + 24);
      v16 = *(v12 + 32);

      result = swift_isUniquelyReferenced_nonNull_native();
      v23 = v15;
      if ((result & 1) == 0)
      {
        result = sub_217EA0D20(0, *(v10 + 16) + 1, 1);
      }

      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        result = sub_217EA0D20((v17 > 1), v18 + 1, 1);
        v19 = v18 + 1;
      }

      *(v10 + 16) = v19;
      v20 = v10 + 40 * v18;
      *(v20 + 32) = v22;
      *(v20 + 40) = v14;
      *(v20 + 48) = 1;
      *(v20 + 56) = v23;
      *(v20 + 64) = v16;
    }

    while (v6);
LABEL_9:
    while (1)
    {
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v13 >= v7)
      {

        v21 = *(v10 + 16);

        return v21 < v3;
      }

      v6 = *(v2 + 64 + 8 * v13);
      ++v9;
      if (v6)
      {
        v9 = v13;
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_217F178D4(uint64_t a1, uint64_t *a2, uint64_t a3, char a4, char a5)
{
  sub_217F4ADD4();
  MEMORY[0x21CEAEAC0](0x6E697463656C6553, 0xEF206D6F72662067);
  v6 = *(a1 + 16);
  v7 = sub_217F4B104();
  MEMORY[0x21CEAEAC0](v7);

  result = MEMORY[0x21CEAEAC0](0xD000000000000017, 0x8000000217F60590);
  v9 = 0;
  v10 = a1 - 8;
  v11 = MEMORY[0x277D84F90];
LABEL_2:
  v12 = (v10 + 40 * v9);
  while (v6 != v9)
  {
    if (v9 >= v6)
    {
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_67;
    }

    v14 = *(v12 + 56);
    ++v9;
    v12 += 5;
    if ((v14 & 1) == 0)
    {
      v15 = *v12;
      v16 = v12[1];
      v17 = v12[3];
      v18 = v12[4];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_217EA0D20(0, *(v11 + 16) + 1, 1);
      }

      v20 = *(v11 + 16);
      v19 = *(v11 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_217EA0D20((v19 > 1), v20 + 1, 1);
      }

      *(v11 + 16) = v20 + 1;
      v21 = v11 + 40 * v20;
      *(v21 + 32) = v15;
      *(v21 + 40) = v16;
      *(v21 + 48) = 0;
      *(v21 + 56) = v17;
      *(v21 + 64) = v18;
      v9 = v13;
      goto LABEL_2;
    }
  }

  v22 = *(v11 + 16);

  v23 = sub_217F4B104();
  MEMORY[0x21CEAEAC0](v23);

  result = MEMORY[0x21CEAEAC0](0xD000000000000014, 0x8000000217F605B0);
  v24 = 0;
  v25 = MEMORY[0x277D84F90];
LABEL_13:
  v26 = (v10 + 40 * v24);
  while (v6 != v24)
  {
    if (v24 >= v6)
    {
      goto LABEL_70;
    }

    v27 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_71;
    }

    v28 = *(v26 + 56);
    ++v24;
    v26 += 5;
    if (v28)
    {
      v30 = *v26;
      v29 = v26[1];
      v31 = v26[3];
      v32 = v26[4];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_217EA0D20(0, *(v25 + 16) + 1, 1);
      }

      v34 = *(v25 + 16);
      v33 = *(v25 + 24);
      if (v34 >= v33 >> 1)
      {
        result = sub_217EA0D20((v33 > 1), v34 + 1, 1);
      }

      *(v25 + 16) = v34 + 1;
      v35 = v25 + 40 * v34;
      *(v35 + 32) = v30;
      *(v35 + 40) = v29;
      *(v35 + 48) = 1;
      *(v35 + 56) = v31;
      *(v35 + 64) = v32;
      v24 = v27;
      goto LABEL_13;
    }
  }

  v36 = *(v25 + 16);

  v37 = sub_217F4B104();
  MEMORY[0x21CEAEAC0](v37);

  MEMORY[0x21CEAEAC0](0xD000000000000025, 0x8000000217F605D0);
  v38 = *a2;
  v39 = *a2 + 64;
  v40 = 1 << *(*a2 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & *(*a2 + 64);
  v43 = (v40 + 63) >> 6;

  v44 = 0;
  v45 = MEMORY[0x277D84F90];
  if (!v42)
  {
    goto LABEL_28;
  }

  do
  {
LABEL_26:
    while (1)
    {
      v46 = __clz(__rbit64(v42));
      v42 &= v42 - 1;
      v47 = *(v38 + 56) + 40 * (v46 | (v44 << 6));
      if ((*(v47 + 16) & 1) == 0)
      {
        break;
      }

      if (!v42)
      {
        goto LABEL_28;
      }
    }

    v49 = *(v47 + 8);
    v82 = *v47;
    v50 = *(v47 + 24);
    v51 = *(v47 + 32);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_217EA0D20(0, *(v45 + 16) + 1, 1);
    }

    v53 = *(v45 + 16);
    v52 = *(v45 + 24);
    v54 = v53 + 1;
    if (v53 >= v52 >> 1)
    {
      result = sub_217EA0D20((v52 > 1), v53 + 1, 1);
      v54 = v53 + 1;
    }

    *(v45 + 16) = v54;
    v55 = v45 + 40 * v53;
    *(v55 + 32) = v82;
    *(v55 + 40) = v49;
    *(v55 + 48) = 0;
    *(v55 + 56) = v50;
    *(v55 + 64) = v51;
  }

  while (v42);
LABEL_28:
  while (1)
  {
    v48 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v48 >= v43)
    {

      v56 = *(v45 + 16);

      v57 = sub_217F4B104();
      MEMORY[0x21CEAEAC0](v57);

      MEMORY[0x21CEAEAC0](0xD000000000000014, 0x8000000217F605B0);
      v58 = *a2;
      v59 = *a2 + 64;
      v60 = 1 << *(*a2 + 32);
      v61 = -1;
      if (v60 < 64)
      {
        v61 = ~(-1 << v60);
      }

      v62 = v61 & *(*a2 + 64);
      v63 = (v60 + 63) >> 6;

      v64 = 0;
      v65 = MEMORY[0x277D84F90];
      if (!v62)
      {
        goto LABEL_43;
      }

      do
      {
LABEL_41:
        while (1)
        {
          v66 = __clz(__rbit64(v62));
          v62 &= v62 - 1;
          v67 = *(v58 + 56) + 40 * (v66 | (v64 << 6));
          if (*(v67 + 16))
          {
            break;
          }

          if (!v62)
          {
            goto LABEL_43;
          }
        }

        v83 = *v67;
        v84 = *(v67 + 8);
        v69 = *(v67 + 24);
        v70 = *(v67 + 32);

        v89 = v69;

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_217EA0D20(0, *(v65 + 16) + 1, 1);
        }

        v72 = *(v65 + 16);
        v71 = *(v65 + 24);
        if (v72 >= v71 >> 1)
        {
          result = sub_217EA0D20((v71 > 1), v72 + 1, 1);
        }

        *(v65 + 16) = v72 + 1;
        v73 = v65 + 40 * v72;
        *(v73 + 32) = v83;
        *(v73 + 40) = v84;
        *(v73 + 48) = 1;
        *(v73 + 56) = v89;
        *(v73 + 64) = v70;
      }

      while (v62);
LABEL_43:
      while (1)
      {
        v68 = v64 + 1;
        if (__OFADD__(v64, 1))
        {
          goto LABEL_69;
        }

        if (v68 >= v63)
        {

          v74 = *(v65 + 16);

          v75 = sub_217F4B104();
          MEMORY[0x21CEAEAC0](v75);

          MEMORY[0x21CEAEAC0](0xD000000000000024, 0x8000000217F60600);
          v76 = *(a3 + 952);
          sub_217F4ACB4();
          MEMORY[0x21CEAEAC0](0xD000000000000015, 0x8000000217F60630);
          v77 = *(a3 + 960);
          sub_217F4ACB4();
          MEMORY[0x21CEAEAC0](0xD000000000000016, 0x8000000217F60650);
          if (a4)
          {
            v78 = 1702195828;
          }

          else
          {
            v78 = 0x65736C6166;
          }

          if (a4)
          {
            v79 = 0xE400000000000000;
          }

          else
          {
            v79 = 0xE500000000000000;
          }

          MEMORY[0x21CEAEAC0](v78, v79);

          MEMORY[0x21CEAEAC0](0xD000000000000014, 0x8000000217F60670);
          if (a5)
          {
            v80 = 1702195828;
          }

          else
          {
            v80 = 0x65736C6166;
          }

          if (a5)
          {
            v81 = 0xE400000000000000;
          }

          else
          {
            v81 = 0xE500000000000000;
          }

          MEMORY[0x21CEAEAC0](v80, v81);

          return 0;
        }

        v62 = *(v59 + 8 * v68);
        ++v64;
        if (v62)
        {
          v64 = v68;
          goto LABEL_41;
        }
      }
    }

    v42 = *(v39 + 8 * v48);
    ++v44;
    if (v42)
    {
      v44 = v48;
      goto LABEL_26;
    }
  }

LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

void (*sub_217F180A0(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x28uLL);
  }

  *a1 = v10;
  v10[4] = sub_217F1C5F8(v10, a2, a3, a4 & 0x101010101, a5);
  return sub_217F18148;
}

void sub_217F18148(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_217F18194(void *__src, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  memcpy(__dst, __src, 0x1B2uLL);
  if (sub_217F2B6CC(__dst) == 1)
  {
    if ((a4 & 0x100000000) != 0)
    {
      if ((a4 & 0x100) != 0)
      {
        memcpy(v19, (a5 + 1440), 0x1B2uLL);
        v10 = swift_allocObject();
        memcpy((v10 + 16), (a5 + 1440), 0x1B2uLL);
        sub_217F2B89C(v19, v17, &qword_27CBF5F98, &qword_217F52250);
        v11 = sub_217F2C1D4;
        v12 = sub_217F2B9B8;
      }

      else
      {
        memcpy(v19, a5, 0x1B2uLL);
        v10 = swift_allocObject();
        memcpy((v10 + 16), a5, 0x1B2uLL);
        sub_217F2B89C(v19, v17, &qword_27CBF5F80, &qword_217F52238);
        v11 = sub_217F2C1D4;
        v12 = sub_217F2C118;
      }
    }

    else
    {
      memcpy(v19, (a5 + 440), 0x1B2uLL);
      v10 = swift_allocObject();
      memcpy((v10 + 16), (a5 + 440), 0x1B2uLL);
      sub_217F2B89C(v19, v17, &qword_27CBF5F88, &qword_217F52240);
      v11 = sub_217F2C1D4;
      v12 = sub_217F2C11C;
    }

    v13 = v12;
  }

  else
  {
    v10 = swift_allocObject();
    memcpy((v10 + 16), __dst, 0x1B2uLL);
    v11 = sub_217F2C1D8;
    v13 = sub_217F2C120;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v10;
  sub_217F2B89C(__src, v17, &qword_27CBF7308, &qword_217F5A030);
  v15 = v11(a6);

  return v15;
}

uint64_t sub_217F18428(void *__src, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  memcpy(__dst, __src, 0x1B2uLL);
  if (sub_217F2B6CC(__dst) == 1)
  {
    if ((a4 & 0x100000000) != 0)
    {
      if ((a4 & 0x100) != 0)
      {
        memcpy(v19, (a5 + 1440), 0x1B2uLL);
        v10 = swift_allocObject();
        memcpy((v10 + 16), (a5 + 1440), 0x1B2uLL);
        sub_217F2B89C(v19, v17, &qword_27CBF5F98, &qword_217F52250);
        v11 = sub_217F2C1CC;
        v12 = sub_217F2B95C;
      }

      else
      {
        memcpy(v19, a5, 0x1B2uLL);
        v10 = swift_allocObject();
        memcpy((v10 + 16), a5, 0x1B2uLL);
        sub_217F2B89C(v19, v17, &qword_27CBF5F80, &qword_217F52238);
        v11 = sub_217F2C1CC;
        v12 = sub_217F2C10C;
      }
    }

    else
    {
      memcpy(v19, (a5 + 440), 0x1B2uLL);
      v10 = swift_allocObject();
      memcpy((v10 + 16), (a5 + 440), 0x1B2uLL);
      sub_217F2B89C(v19, v17, &qword_27CBF5F88, &qword_217F52240);
      v11 = sub_217F2C1CC;
      v12 = sub_217F2C110;
    }

    v13 = v12;
  }

  else
  {
    v10 = swift_allocObject();
    memcpy((v10 + 16), __dst, 0x1B2uLL);
    v11 = sub_217F2C1D0;
    v13 = sub_217F2C114;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v10;
  sub_217F2B89C(__src, v17, &qword_27CBF7308, &qword_217F5A030);
  v15 = v11(a6);

  return v15;
}

uint64_t sub_217F186BC(void *__src, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  memcpy(__dst, __src, 0x1B2uLL);
  if (sub_217F2B6CC(__dst) == 1)
  {
    if ((a4 & 0x100000000) != 0)
    {
      if ((a4 & 0x100) != 0)
      {
        memcpy(v19, (a5 + 1440), 0x1B2uLL);
        v10 = swift_allocObject();
        memcpy((v10 + 16), (a5 + 1440), 0x1B2uLL);
        sub_217F2B89C(v19, v17, &qword_27CBF5F98, &qword_217F52250);
        v11 = sub_217F2C1C4;
        v12 = sub_217F2B904;
      }

      else
      {
        memcpy(v19, a5, 0x1B2uLL);
        v10 = swift_allocObject();
        memcpy((v10 + 16), a5, 0x1B2uLL);
        sub_217F2B89C(v19, v17, &qword_27CBF5F80, &qword_217F52238);
        v11 = sub_217F2C1C4;
        v12 = sub_217F2C100;
      }
    }

    else
    {
      memcpy(v19, (a5 + 440), 0x1B2uLL);
      v10 = swift_allocObject();
      memcpy((v10 + 16), (a5 + 440), 0x1B2uLL);
      sub_217F2B89C(v19, v17, &qword_27CBF5F88, &qword_217F52240);
      v11 = sub_217F2C1C4;
      v12 = sub_217F2C104;
    }

    v13 = v12;
  }

  else
  {
    v10 = swift_allocObject();
    memcpy((v10 + 16), __dst, 0x1B2uLL);
    v11 = sub_217F2C1C8;
    v13 = sub_217F2C108;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v10;
  sub_217F2B89C(__src, v17, &qword_27CBF7308, &qword_217F5A030);
  v15 = v11(a6);

  return v15;
}

uint64_t sub_217F18950(void *a1, uint64_t a2, uint64_t a3)
{
  v79 = a1;
  v4 = *(a2 + 32);

  v5 = sub_217F36A9C(v4, a3);
  v6 = v5;
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = sub_217E8E5AC(*(v5 + 16), 0);
    v9 = sub_217E966DC(&v77, v8 + 4, v7, v6);
    sub_217E7F628();
    if (v9 != v7)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      result = sub_217F4B1C4();
      __break(1u);
      return result;
    }

    v10 = v8[2];
    if (v10)
    {
LABEL_4:
      if (v8[2])
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v72 = v8 + 4;
        v14 = v8 + 7;
        v15 = 1;
        v75 = v8;
        v76 = v10;
        while (1)
        {
          v16 = &v72[2 * v13];
          v74 = v15;
          v18 = *v16;
          v17 = v16[1];

          sub_217F2BA80(v11);
          v19 = v79;
          v20 = *v79;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v77 = *v19;
          v22 = v77;
          v23 = sub_217E8E88C(v18, v17);
          v25 = v22[2];
          v26 = (v24 & 1) == 0;
          v27 = __OFADD__(v25, v26);
          v28 = v25 + v26;
          if (v27)
          {
            break;
          }

          v29 = v24;
          if (v22[3] >= v28)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v69 = v23;
              sub_217E8FF84();
              v23 = v69;
              v22 = v77;
            }
          }

          else
          {
            sub_217E930A8(v28, isUniquelyReferenced_nonNull_native);
            v22 = v77;
            v23 = sub_217E8E88C(v18, v17);
            if ((v29 & 1) != (v30 & 1))
            {
              goto LABEL_55;
            }
          }

          *v79 = v22;
          if ((v29 & 1) == 0)
          {
            v22[(v23 >> 6) + 8] |= 1 << v23;
            v31 = (v22[6] + 16 * v23);
            *v31 = v18;
            v31[1] = v17;
            *(v22[7] + 8 * v23) = 0;
            v32 = v22[2];
            v27 = __OFADD__(v32, 1);
            v33 = v32 + 1;
            if (v27)
            {
              goto LABEL_53;
            }

            v22[2] = v33;
            v34 = v23;

            v23 = v34;
          }

          v35 = v22[7];
          v36 = *(v35 + 8 * v23);
          v27 = __OFADD__(v36, 1);
          v37 = v36 + 1;
          if (v27)
          {
            goto LABEL_52;
          }

          *(v35 + 8 * v23) = v37;
          v38 = v76;
          if (v74 == v76)
          {

            v70 = sub_217F2BF98;
            goto LABEL_44;
          }

          v73 = v14;
          v39 = v14;
          v40 = v74;
          do
          {
            if (v40 >= v38)
            {
              __break(1u);
LABEL_46:
              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

            if (v40 >= v75[2])
            {
              goto LABEL_46;
            }

            v42 = *(v39 - 1);
            v41 = *v39;
            v43 = v18 == v42 && v17 == v41;
            if (v43 || (v44 = *(v39 - 1), v45 = *v39, (sub_217F4B144() & 1) == 0))
            {
              v77 = v42;
              v78 = v41;
              swift_bridgeObjectRetain_n();
              v46 = v18;
              v47 = v17;
            }

            else
            {
              v77 = v18;
              v78 = v17;

              v46 = v42;
              v47 = v41;
            }

            MEMORY[0x21CEAEAC0](v46, v47);

            sub_217F2BA80(v12);
            v48 = v77;
            v49 = v78;
            v50 = v79;
            v51 = *v79;
            v52 = swift_isUniquelyReferenced_nonNull_native();
            v53 = *v50;
            v77 = v53;
            v54 = sub_217E8E88C(v48, v49);
            v56 = v53[2];
            v57 = (v55 & 1) == 0;
            v27 = __OFADD__(v56, v57);
            v58 = v56 + v57;
            if (v27)
            {
              goto LABEL_47;
            }

            v59 = v55;
            if (v53[3] >= v58)
            {
              if ((v52 & 1) == 0)
              {
                v68 = v54;
                sub_217E8FF84();
                v54 = v68;
                v53 = v77;
              }
            }

            else
            {
              sub_217E930A8(v58, v52);
              v53 = v77;
              v54 = sub_217E8E88C(v48, v49);
              if ((v59 & 1) != (v60 & 1))
              {
                goto LABEL_55;
              }
            }

            *v79 = v53;
            if (v59)
            {
              v61 = v54;

              v54 = v61;
            }

            else
            {
              v53[(v54 >> 6) + 8] |= 1 << v54;
              v62 = (v53[6] + 16 * v54);
              *v62 = v48;
              v62[1] = v49;
              *(v53[7] + 8 * v54) = 0;
              v63 = v53[2];
              v27 = __OFADD__(v63, 1);
              v64 = v63 + 1;
              if (v27)
              {
                goto LABEL_49;
              }

              v53[2] = v64;
            }

            v65 = v53[7];
            v66 = *(v65 + 8 * v54);
            v27 = __OFADD__(v66, 1);
            v67 = v66 + 1;
            if (v27)
            {
              goto LABEL_48;
            }

            ++v40;
            *(v65 + 8 * v54) = v67;
            v39 += 2;
            v12 = sub_217F2BF9C;
            v38 = v76;
          }

          while (v76 != v40);

          v13 = v74;
          v15 = v74 + 1;
          v14 = v73 + 2;
          v12 = sub_217F2BF9C;
          v11 = sub_217F2BF98;
          if (v74 >= v75[2])
          {
            goto LABEL_50;
          }
        }
      }

      else
      {
LABEL_50:
        __break(1u);
      }

      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
    v10 = *(MEMORY[0x277D84F90] + 16);
    if (v10)
    {
      goto LABEL_4;
    }
  }

  v70 = 0;
  v12 = 0;
LABEL_44:
  sub_217F2BA80(v70);
  return sub_217F2BA80(v12);
}

BOOL sub_217F18E50(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v4 = *a2;
    v5 = a2[1];
    v6 = sub_217E8E88C(*a1, a1[1]);
    v7 = 0.0;
    v8 = 0.0;
    if (v9)
    {
      v8 = *(*(a3 + 56) + 40 * v6 + 32);
    }

    if (*(a3 + 16))
    {
      v10 = sub_217E8E88C(v4, v5);
      if (v11)
      {
        v7 = *(*(a3 + 56) + 40 * v10 + 32);
      }
    }
  }

  else
  {
    v8 = 0.0;
    v7 = 0.0;
  }

  return v7 < v8;
}

uint64_t sub_217F18EF4(void *a1, uint64_t a2, uint64_t a3)
{
  v79 = a1;
  v4 = *(a2 + 32);

  v5 = sub_217F36A9C(v4, a3);
  v6 = v5;
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = sub_217E8E5AC(*(v5 + 16), 0);
    v9 = sub_217E966DC(&v77, v8 + 4, v7, v6);
    sub_217E7F628();
    if (v9 != v7)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      result = sub_217F4B1C4();
      __break(1u);
      return result;
    }

    v10 = v8[2];
    if (v10)
    {
LABEL_4:
      if (v8[2])
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v72 = v8 + 4;
        v14 = v8 + 7;
        v15 = 1;
        v75 = v8;
        v76 = v10;
        while (1)
        {
          v16 = &v72[2 * v13];
          v74 = v15;
          v18 = *v16;
          v17 = v16[1];

          sub_217F2BA80(v11);
          v19 = v79;
          v20 = *v79;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v77 = *v19;
          v22 = v77;
          v23 = sub_217E8E88C(v18, v17);
          v25 = v22[2];
          v26 = (v24 & 1) == 0;
          v27 = __OFADD__(v25, v26);
          v28 = v25 + v26;
          if (v27)
          {
            break;
          }

          v29 = v24;
          if (v22[3] >= v28)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v69 = v23;
              sub_217E8FF84();
              v23 = v69;
              v22 = v77;
            }
          }

          else
          {
            sub_217E930A8(v28, isUniquelyReferenced_nonNull_native);
            v22 = v77;
            v23 = sub_217E8E88C(v18, v17);
            if ((v29 & 1) != (v30 & 1))
            {
              goto LABEL_55;
            }
          }

          *v79 = v22;
          if ((v29 & 1) == 0)
          {
            v22[(v23 >> 6) + 8] |= 1 << v23;
            v31 = (v22[6] + 16 * v23);
            *v31 = v18;
            v31[1] = v17;
            *(v22[7] + 8 * v23) = 0;
            v32 = v22[2];
            v27 = __OFADD__(v32, 1);
            v33 = v32 + 1;
            if (v27)
            {
              goto LABEL_53;
            }

            v22[2] = v33;
            v34 = v23;

            v23 = v34;
          }

          v35 = v22[7];
          v36 = *(v35 + 8 * v23);
          v27 = __OFADD__(v36, 1);
          v37 = v36 + 1;
          if (v27)
          {
            goto LABEL_52;
          }

          *(v35 + 8 * v23) = v37;
          v38 = v76;
          if (v74 == v76)
          {

            v70 = sub_217F2BF94;
            goto LABEL_44;
          }

          v73 = v14;
          v39 = v14;
          v40 = v74;
          do
          {
            if (v40 >= v38)
            {
              __break(1u);
LABEL_46:
              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

            if (v40 >= v75[2])
            {
              goto LABEL_46;
            }

            v42 = *(v39 - 1);
            v41 = *v39;
            v43 = v18 == v42 && v17 == v41;
            if (v43 || (v44 = *(v39 - 1), v45 = *v39, (sub_217F4B144() & 1) == 0))
            {
              v77 = v42;
              v78 = v41;
              swift_bridgeObjectRetain_n();
              v46 = v18;
              v47 = v17;
            }

            else
            {
              v77 = v18;
              v78 = v17;

              v46 = v42;
              v47 = v41;
            }

            MEMORY[0x21CEAEAC0](v46, v47);

            sub_217F2BA80(v12);
            v48 = v77;
            v49 = v78;
            v50 = v79;
            v51 = *v79;
            v52 = swift_isUniquelyReferenced_nonNull_native();
            v53 = *v50;
            v77 = v53;
            v54 = sub_217E8E88C(v48, v49);
            v56 = v53[2];
            v57 = (v55 & 1) == 0;
            v27 = __OFADD__(v56, v57);
            v58 = v56 + v57;
            if (v27)
            {
              goto LABEL_47;
            }

            v59 = v55;
            if (v53[3] >= v58)
            {
              if ((v52 & 1) == 0)
              {
                v68 = v54;
                sub_217E8FF84();
                v54 = v68;
                v53 = v77;
              }
            }

            else
            {
              sub_217E930A8(v58, v52);
              v53 = v77;
              v54 = sub_217E8E88C(v48, v49);
              if ((v59 & 1) != (v60 & 1))
              {
                goto LABEL_55;
              }
            }

            *v79 = v53;
            if (v59)
            {
              v61 = v54;

              v54 = v61;
            }

            else
            {
              v53[(v54 >> 6) + 8] |= 1 << v54;
              v62 = (v53[6] + 16 * v54);
              *v62 = v48;
              v62[1] = v49;
              *(v53[7] + 8 * v54) = 0;
              v63 = v53[2];
              v27 = __OFADD__(v63, 1);
              v64 = v63 + 1;
              if (v27)
              {
                goto LABEL_49;
              }

              v53[2] = v64;
            }

            v65 = v53[7];
            v66 = *(v65 + 8 * v54);
            v27 = __OFADD__(v66, 1);
            v67 = v66 + 1;
            if (v27)
            {
              goto LABEL_48;
            }

            ++v40;
            *(v65 + 8 * v54) = v67;
            v39 += 2;
            v12 = sub_217F2BF90;
            v38 = v76;
          }

          while (v76 != v40);

          v13 = v74;
          v15 = v74 + 1;
          v14 = v73 + 2;
          v12 = sub_217F2BF90;
          v11 = sub_217F2BF94;
          if (v74 >= v75[2])
          {
            goto LABEL_50;
          }
        }
      }

      else
      {
LABEL_50:
        __break(1u);
      }

      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
    v10 = *(MEMORY[0x277D84F90] + 16);
    if (v10)
    {
      goto LABEL_4;
    }
  }

  v70 = 0;
  v12 = 0;
LABEL_44:
  sub_217F2BA80(v70);
  return sub_217F2BA80(v12);
}

char *sub_217F193F4(int64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_217EA0CC0(result, v5, 0);
  }

  return result;
}

char *sub_217F1946C(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_217E8D720((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

uint64_t sub_217F194B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_217F4B224();
  sub_217F4AB24();
  v9 = sub_217F4B254();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_217F4B144() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_217F197BC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_217F19600(_OWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_217F4B224();
  v7 = *a2;
  v8 = *(a2 + 8);
  sub_217F4AB24();
  v9 = sub_217F4B254();
  v10 = -1 << *(v5 + 32);
  v11 = v9 & ~v10;
  if ((*(v5 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v5 + 48) + 96 * v11);
      v14 = *v13 == v7 && v13[1] == v8;
      if (v14 || (sub_217F4B144() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v5 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    sub_217E98274(a2);
    v20 = (*(v5 + 48) + 96 * v11);
    v21 = v20[1];
    v30[0] = *v20;
    v30[1] = v21;
    v23 = v20[3];
    v22 = v20[4];
    v24 = v20[2];
    *&v31[9] = *(v20 + 73);
    v30[3] = v23;
    *v31 = v22;
    v30[2] = v24;
    v25 = v20[1];
    *a1 = *v20;
    a1[1] = v25;
    v26 = v20[2];
    v27 = v20[3];
    v28 = v20[4];
    *(a1 + 73) = *(v20 + 73);
    a1[3] = v27;
    a1[4] = v28;
    a1[2] = v26;
    sub_217E98218(v30, v29);
    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29[0] = *v2;
    sub_217E98218(a2, v30);
    sub_217F1993C(a2, v11, isUniquelyReferenced_nonNull_native);
    *v2 = v29[0];
    v17 = *(a2 + 48);
    a1[2] = *(a2 + 32);
    a1[3] = v17;
    a1[4] = *(a2 + 64);
    *(a1 + 73) = *(a2 + 73);
    v18 = *(a2 + 16);
    result = 1;
    *a1 = *a2;
    a1[1] = v18;
  }

  return result;
}

uint64_t sub_217F197BC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_217ECF508(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_217ECFC40();
      goto LABEL_16;
    }

    sub_217ED006C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_217F4B224();
  sub_217F4AB24();
  result = sub_217F4B254();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_217F4B144();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_217F4B1B4();
  __break(1u);
  return result;
}

uint64_t sub_217F1993C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_217ECF768(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_217ECFD9C();
      goto LABEL_16;
    }

    sub_217ED02A4(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_217F4B224();
  v10 = *v5;
  v11 = *(v5 + 8);
  sub_217F4AB24();
  result = sub_217F4B254();
  v12 = -1 << *(v8 + 32);
  a2 = result & ~v12;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v8 + 48) + 96 * a2);
      if (*v14 == v10 && v14[1] == v11)
      {
        goto LABEL_19;
      }

      result = sub_217F4B144();
      if (result)
      {
        goto LABEL_19;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v17 = (*(v16 + 48) + 96 * a2);
  v18 = *(v5 + 16);
  *v17 = *v5;
  v17[1] = v18;
  *(v17 + 73) = *(v5 + 73);
  v19 = *(v5 + 64);
  v17[3] = *(v5 + 48);
  v17[4] = v19;
  v17[2] = *(v5 + 32);
  v20 = *(v16 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v16 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_217F4B1B4();
  __break(1u);
  return result;
}

uint64_t sub_217F19AE8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v6 = *v4;
  v7 = sub_217E8E9D0(a1, a2, a3 & 0x101010101, a4);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  v10 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v5;
  v18 = *v5;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_217E8FA94();
    v12 = v18;
  }

  v13 = (*(v12 + 48) + 32 * v9);
  v14 = *(v13 + 13);
  v17[0] = *v13;
  *(v17 + 13) = v14;
  sub_217F23FA4(v17);
  v15 = *(*(v12 + 56) + 8 * v9);
  sub_217F35220(v9, v12);
  *v5 = v12;
  return v15;
}

uint64_t sub_217F19B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_217E8E88C(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = result;
      sub_217E8F000();
      result = v21;
      goto LABEL_8;
    }

    sub_217E91414(v18, a5 & 1);
    v22 = *v6;
    result = sub_217E8E88C(a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_14:
      result = sub_217F4B1C4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
  }

  else
  {
    sub_217F35410(result, a3, a4, a1, a2, v24);
  }

  return result;
}

uint64_t sub_217F19CD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_217E8E88C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_217E8F168();
      v11 = v19;
      goto LABEL_8;
    }

    sub_217E916C0(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_217E8E88C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_217F4B1C4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {
    sub_217F35460(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_217F19E20(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_217E8E88C(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = result;
      sub_217E8F43C();
      result = v21;
      goto LABEL_8;
    }

    sub_217E91C44(v18, a5 & 1);
    v22 = *v6;
    result = sub_217E8E88C(a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_14:
      result = sub_217F4B1C4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = v24[7] + 16 * result;
    *v25 = a1;
    *(v25 + 8) = a2 & 1;
  }

  else
  {
    sub_217F354A8(result, a3, a4, a1, a2 & 1, v24);
  }

  return result;
}

uint64_t sub_217F19F64(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_217E8E88C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_217E8F5B4();
      result = v19;
      goto LABEL_8;
    }

    sub_217E91F04(v16, a4 & 1);
    v20 = *v5;
    result = sub_217E8E88C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = sub_217F4B1C4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 48 * result);
    v24 = a1[1];
    *v23 = *a1;
    v23[1] = v24;
    v23[2] = a1[2];
  }

  else
  {
    sub_217F35500(result, a2, a3, a1, v22);
  }

  return result;
}

uint64_t sub_217F1A0A8(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_217E8E88C(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = result;
      sub_217E8F918();
      result = v19;
      goto LABEL_8;
    }

    sub_217E924FC(v16, a3 & 1);
    v20 = *v5;
    result = sub_217E8E88C(a1, a2);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = sub_217F4B1C4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a4;
  }

  else
  {
    sub_217F3555C(result, a1, a2, v22, a4);
  }

  return result;
}

uint64_t sub_217F1A1D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_217E8E88C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_217E8FC3C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_217E92AB8(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_217E8E88C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_217F4B1C4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 40 * v11;

    return sub_217F2B650(a1, v23);
  }

  else
  {
    sub_217F355A4(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_217F1A318(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ClassicArticleData();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_217E8EABC(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_217E903E0();
      goto LABEL_7;
    }

    sub_217E93884(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_217E8EABC(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_217E9D964(a2, v12);
      return sub_217F35658(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_217F4B1C4();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_217F1A4A8(uint64_t *a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_217E8EBB4(a1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_12;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    sub_217E9062C();
    result = v17;
    goto LABEL_8;
  }

  sub_217E93BF8(v14, a2 & 1);
  v18 = *v4;
  result = sub_217E8EBB4(a1);
  if ((v15 & 1) != (v19 & 1))
  {
LABEL_12:
    result = sub_217F4B1C4();
    __break(1u);
    return result;
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    *(v20[7] + 8 * result) = a3;
  }

  else
  {
    sub_217F356F8(result, a1, v20, a3);
    return sub_217F2B5F4(a1, v21);
  }

  return result;
}

uint64_t sub_217F1A5B0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, double a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_217E8E88C(a3, a4);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      v23 = result;
      sub_217E907B4();
      result = v23;
      goto LABEL_8;
    }

    sub_217E93F10(v20, a5 & 1);
    v24 = *v7;
    result = sub_217E8E88C(a3, a4);
    if ((v21 & 1) != (v25 & 1))
    {
LABEL_14:
      result = sub_217F4B1C4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v26 = *v7;
  if (v21)
  {
    v27 = v26[7] + 24 * result;
    *v27 = a6;
    *(v27 + 8) = a1;
    *(v27 + 16) = a2 & 1;
  }

  else
  {
    sub_217F35758(result, a3, a4, a1, a2 & 1, v26, a6);
  }

  return result;
}

uint64_t sub_217F1A750(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_217E8E88C(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v26 = *v11;
    v17 = sub_217E8E88C(a2, a3);
    if ((v23 & 1) != (v27 & 1))
    {
LABEL_16:
      result = sub_217F4B1C4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v28 = *v11;
  if (v23)
  {
    v29 = *(v28 + 56);
    v30 = *(v29 + 8 * v17);
    *(v29 + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v28);
  }
}

uint64_t sub_217F1A8BC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_217F37288(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  result = sub_217F4B0F4();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[40 * i + 64];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 + 2) >= v11)
          {
            break;
          }

          v14 = *(v13 + 3);
          v15 = *(v13 + 4);
          v16 = *v13;
          *(v13 + 24) = *(v13 - 1);
          v17 = v13[40];
          v18 = *(v13 + 6);
          *(v13 + 40) = v16;
          *(v13 + 7) = *(v13 + 2);
          *(v13 - 2) = v14;
          *(v13 - 1) = v15;
          *v13 = v17;
          *(v13 + 1) = v18;
          *(v13 + 2) = v11;
          v13 -= 40;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 40;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_217F4AC54();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v20[0] = v7 + 32;
    v20[1] = v6;
    sub_217F1ABBC(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_217F1AA2C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_217F372C4(v2);
  }

  v3 = *(v2 + 2);
  v32[0] = (v2 + 32);
  v32[1] = v3;
  result = sub_217F4B0F4();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 128;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*(v12 - 5) >= *(v12 + 7))
          {
            break;
          }

          v13 = v12 - 96;
          v14 = *(v12 + 1);
          v27 = *v12;
          v28 = v14;
          v15 = *(v12 + 2);
          v16 = *(v12 + 3);
          v17 = *(v12 + 4);
          *&v31[9] = *(v12 + 73);
          v30 = v16;
          *v31 = v17;
          v29 = v15;
          v18 = *(v12 - 1);
          *(v12 + 4) = *(v12 - 2);
          *(v12 + 5) = v18;
          v19 = *(v12 - 3);
          *(v12 + 2) = *(v12 - 4);
          *(v12 + 3) = v19;
          v20 = *(v12 - 5);
          *v12 = *(v12 - 6);
          *(v12 + 1) = v20;
          v21 = v29;
          v22 = v30;
          v23 = *v31;
          *(v13 + 73) = *&v31[9];
          v24 = v28;
          *v13 = v27;
          *(v13 + 1) = v24;
          *(v13 + 3) = v22;
          *(v13 + 4) = v23;
          *(v13 + 2) = v21;
          v12 -= 96;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 96;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_217F4AC54();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    *&v27 = v7 + 32;
    *(&v27 + 1) = v6;
    sub_217F1B1AC(&v27, v26, v32, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_217F1ABBC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v100 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_217F3610C(v8);
      v8 = result;
    }

    v92 = (v8 + 16);
    v93 = *(v8 + 16);
    if (v93 >= 2)
    {
      while (*a3)
      {
        v94 = (v8 + 16 * v93);
        v95 = *v94;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_217F1B7D4((*a3 + 40 * *v94), (*a3 + 40 * *v96), *a3 + 40 * v97, v101);
        if (v5)
        {
        }

        if (v97 < v95)
        {
          goto LABEL_114;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_115;
        }

        *v94 = v95;
        v94[1] = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_116;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        if (v93 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v99 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 40 * v7 + 32);
      v11 = *a3 + 40 * v9;
      v12 = *(v11 + 32);
      v13 = v9 + 2;
      v14 = (v11 + 112);
      v15 = v10;
      while (v6 != v13)
      {
        v16 = *v14;
        v14 += 5;
        v17 = v15 >= v16;
        ++v13;
        v15 = v16;
        if ((((v12 < v10) ^ v17) & 1) == 0)
        {
          v7 = v13 - 1;
          if (v12 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v12 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v18 = 40 * v7 - 16;
        v19 = 40 * v9 + 32;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v31 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v31 + v19);
            v23 = (v31 + v18);
            v24 = *(v22 - 4);
            v25 = *(v22 - 3);
            v26 = *(v22 - 16);
            v27 = *(v22 - 1);
            v28 = *v22;
            v29 = v23[1];
            v30 = *(v23 - 1);
            *(v22 - 2) = *(v23 - 3);
            *(v22 - 1) = v30;
            *v22 = v29;
            *(v23 - 3) = v24;
            *(v23 - 2) = v25;
            *(v23 - 8) = v26;
            *v23 = v27;
            v23[1] = v28;
          }

          ++v21;
          v18 -= 40;
          v19 += 40;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_217E8DA14(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v45 = *(v8 + 16);
    v44 = *(v8 + 24);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_217E8DA14((v44 > 1), v45 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v46;
    v47 = v8 + 32;
    v48 = (v8 + 32 + 16 * v45);
    *v48 = v9;
    v48[1] = v7;
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 32);
          v51 = *(v8 + 40);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_57:
          if (v53)
          {
            goto LABEL_104;
          }

          v66 = (v8 + 16 * v46);
          v68 = *v66;
          v67 = v66[1];
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_106;
          }

          v72 = (v47 + 16 * v49);
          v74 = *v72;
          v73 = v72[1];
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_111;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v46 < 2)
        {
          goto LABEL_112;
        }

        v76 = (v8 + 16 * v46);
        v78 = *v76;
        v77 = v76[1];
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_72:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = (v47 + 16 * v49);
        v81 = *v79;
        v80 = v79[1];
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_110;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v49 - 1 >= v46)
        {
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
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v87 = (v47 + 16 * (v49 - 1));
        v88 = *v87;
        v89 = (v47 + 16 * v49);
        v90 = v89[1];
        sub_217F1B7D4((*a3 + 40 * *v87), (*a3 + 40 * *v89), *a3 + 40 * v90, v101);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_99;
        }

        if (v49 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *(v8 + 16);
        if (v49 >= v91)
        {
          goto LABEL_101;
        }

        v46 = v91 - 1;
        result = memmove((v47 + 16 * v49), v89 + 2, 16 * (v91 - 1 - v49));
        *(v8 + 16) = v91 - 1;
        if (v91 <= 2)
        {
          goto LABEL_3;
        }
      }

      v54 = v47 + 16 * v46;
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_102;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_103;
      }

      v61 = (v8 + 16 * v46);
      v63 = *v61;
      v62 = v61[1];
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_105;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_107;
      }

      if (v65 >= v57)
      {
        v83 = (v47 + 16 * v49);
        v85 = *v83;
        v84 = v83[1];
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_113;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v99;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v32 = *a3;
  v33 = *a3 + 40 * v7 - 8;
  v34 = v9 - v7;
LABEL_30:
  v35 = *(v32 + 40 * v7 + 32);
  v36 = v34;
  v37 = v33;
  while (1)
  {
    if (*v37 >= v35)
    {
LABEL_29:
      ++v7;
      v33 += 40;
      --v34;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v32)
    {
      break;
    }

    v38 = *(v37 + 8);
    v39 = *(v37 + 16);
    v40 = *(v37 - 16);
    *(v37 + 8) = *(v37 - 32);
    v41 = *(v37 + 24);
    v42 = *(v37 + 32);
    *(v37 + 24) = v40;
    *(v37 + 40) = *v37;
    *(v37 - 32) = v38;
    *(v37 - 24) = v39;
    *(v37 - 16) = v41;
    *(v37 - 8) = v42;
    *v37 = v35;
    v37 -= 40;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_217F1B1AC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v88 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v89 = *v88;
    if (!*v88)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_217F3610C(v7);
      v7 = result;
    }

    v80 = (v7 + 16);
    v81 = *(v7 + 16);
    if (v81 >= 2)
    {
      while (*a3)
      {
        v82 = (v7 + 16 * v81);
        v83 = *v82;
        v84 = &v80[2 * v81];
        v85 = v84[1];
        sub_217F1BA10((*a3 + 96 * *v82), (*a3 + 96 * *v84), (*a3 + 96 * v85), v89);
        if (v4)
        {
        }

        if (v85 < v83)
        {
          goto LABEL_114;
        }

        if (v81 - 2 >= *v80)
        {
          goto LABEL_115;
        }

        *v82 = v83;
        v82[1] = v85;
        v86 = *v80 - v81;
        if (*v80 < v81)
        {
          goto LABEL_116;
        }

        v81 = *v80 - 1;
        result = memmove(v84, v84 + 2, 16 * v86);
        *v80 = v81;
        if (v81 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 96 * v6 + 56);
      v10 = 96 * v8;
      v11 = *a3 + 96 * v8;
      v12 = *(v11 + 56);
      v13 = v8 + 2;
      v14 = (v11 + 152);
      while (v5 != v13)
      {
        v15 = *v14;
        v16 = v14[12];
        v14 += 12;
        ++v13;
        if (v12 < v9 == v15 >= v16)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v17 = 96 * v6 - 96;
        v18 = v6;
        v19 = v8;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = (v21 + v17);
            v94 = *(v21 + v10 + 32);
            v96 = *(v21 + v10 + 48);
            *v98 = *(v21 + v10 + 64);
            *&v98[9] = *(v21 + v10 + 73);
            v90 = *(v21 + v10);
            v92 = *(v21 + v10 + 16);
            result = memmove((v21 + v10), (v21 + v17), 0x60uLL);
            v20[2] = v94;
            v20[3] = v96;
            v20[4] = *v98;
            *(v20 + 73) = *&v98[9];
            *v20 = v90;
            v20[1] = v92;
          }

          ++v19;
          v17 -= 96;
          v10 += 96;
        }

        while (v19 < v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_217E8DA14(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v33 = *(v7 + 16);
    v32 = *(v7 + 24);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      result = sub_217E8DA14((v32 > 1), v33 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v34;
    v35 = v7 + 32;
    v36 = (v7 + 32 + 16 * v33);
    *v36 = v8;
    v36[1] = v6;
    v89 = *v88;
    if (!*v88)
    {
      goto LABEL_127;
    }

    if (v33)
    {
      while (1)
      {
        v37 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v38 = *(v7 + 32);
          v39 = *(v7 + 40);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_57:
          if (v41)
          {
            goto LABEL_104;
          }

          v54 = (v7 + 16 * v34);
          v56 = *v54;
          v55 = v54[1];
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_106;
          }

          v60 = (v35 + 16 * v37);
          v62 = *v60;
          v61 = v60[1];
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_111;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v37 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v64 = (v7 + 16 * v34);
        v66 = *v64;
        v65 = v64[1];
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_72:
        if (v59)
        {
          goto LABEL_108;
        }

        v67 = (v35 + 16 * v37);
        v69 = *v67;
        v68 = v67[1];
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_110;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v37 - 1 >= v34)
        {
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
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v75 = (v35 + 16 * (v37 - 1));
        v76 = *v75;
        v77 = (v35 + 16 * v37);
        v78 = v77[1];
        sub_217F1BA10((*a3 + 96 * *v75), (*a3 + 96 * *v77), (*a3 + 96 * v78), v89);
        if (v4)
        {
        }

        if (v78 < v76)
        {
          goto LABEL_99;
        }

        if (v37 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v75 = v76;
        v75[1] = v78;
        v79 = *(v7 + 16);
        if (v37 >= v79)
        {
          goto LABEL_101;
        }

        v34 = v79 - 1;
        result = memmove((v35 + 16 * v37), v77 + 2, 16 * (v79 - 1 - v37));
        *(v7 + 16) = v79 - 1;
        if (v79 <= 2)
        {
          goto LABEL_3;
        }
      }

      v42 = v35 + 16 * v34;
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_102;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_103;
      }

      v49 = (v7 + 16 * v34);
      v51 = *v49;
      v50 = v49[1];
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_105;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_107;
      }

      if (v53 >= v45)
      {
        v71 = (v35 + 16 * v37);
        v73 = *v71;
        v72 = v71[1];
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_113;
        }

        if (v40 < v74)
        {
          v37 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 96 * v6;
  v24 = v8 - v6;
LABEL_30:
  v25 = v24;
  v26 = v23;
  while (1)
  {
    if (*(v26 - 40) >= *(v26 + 56))
    {
LABEL_29:
      ++v6;
      v23 += 96;
      --v24;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    v27 = (v26 - 96);
    v95 = *(v26 + 32);
    v97 = *(v26 + 48);
    *v99 = *(v26 + 64);
    *&v99[9] = *(v26 + 73);
    v91 = *v26;
    v93 = *(v26 + 16);
    v28 = *(v26 - 48);
    *(v26 + 32) = *(v26 - 64);
    *(v26 + 48) = v28;
    v29 = *(v26 - 16);
    *(v26 + 64) = *(v26 - 32);
    *(v26 + 80) = v29;
    v30 = *(v26 - 80);
    *v26 = *(v26 - 96);
    *(v26 + 16) = v30;
    v27[2] = v95;
    v27[3] = v97;
    v27[4] = *v99;
    *(v27 + 73) = *&v99[9];
    v26 -= 96;
    *v27 = v91;
    v27[1] = v93;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_217F1B7D4(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[5 * v9] <= a4)
    {
      memmove(a4, __dst, 40 * v9);
    }

    v12 = &v4[5 * v9];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[4] < v6[4])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 5;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 5;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 5;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    v7[4] = v13[4];
    *v7 = v15;
    *(v7 + 1) = v16;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[5 * v11] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v12 = &v4[5 * v11];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v5 -= 40;
    do
    {
      v17 = (v5 + 40);
      if (*(v6 - 1) < *(v12 - 1))
      {
        v21 = v6 - 5;
        if (v17 != v6)
        {
          v22 = *v21;
          v23 = *(v6 - 3);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v22;
          *(v5 + 16) = v23;
        }

        if (v12 <= v4 || (v6 -= 5, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v18 = v12 - 5;
      if (v17 != v12)
      {
        v19 = *v18;
        v20 = *(v12 - 3);
        *(v5 + 32) = *(v12 - 1);
        *v5 = v19;
        *(v5 + 16) = v20;
      }

      v5 -= 40;
      v12 -= 5;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v24 = ((v12 - v4) * 0x6666666666666667) >> 64;
  v25 = (v24 >> 4) + (v24 >> 63);
  if (v6 != v4 || v6 >= &v4[5 * v25])
  {
    memmove(v6, v4, 40 * v25);
  }

  return 1;
}

uint64_t sub_217F1BA10(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 96;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 96;
  if (v9 < v11)
  {
    v12 = 12 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12 * 8);
    }

    v13 = &v4[v12];
    if (v8 < 96)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[7] < v6[7])
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 12;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 12;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 12;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v14, 0x60uLL);
    goto LABEL_9;
  }

  v16 = 12 * v11;
  if (a4 != __src || &__src[v16] <= a4)
  {
    memmove(a4, __src, 96 * v11);
  }

  v13 = &v4[v16];
  if (v10 >= 96 && v6 > v7)
  {
LABEL_20:
    v5 -= 12;
    do
    {
      v17 = v5 + 12;
      if (*(v6 - 5) < *(v13 - 5))
      {
        v19 = v6 - 12;
        if (v17 != v6)
        {
          memmove(v5, v6 - 12, 0x60uLL);
        }

        if (v13 <= v4 || (v6 -= 12, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v18 = (v13 - 12);
      if (v17 != v13)
      {
        memmove(v5, v13 - 12, 0x60uLL);
      }

      v5 -= 12;
      v13 -= 12;
    }

    while (v18 > v4);
    v13 = v18;
  }

LABEL_31:
  v20 = 12 * ((v13 - v4) / 96);
  if (v6 != v4 || v6 >= &v4[v20])
  {
    memmove(v6, v4, v20 * 8);
  }

  return 1;
}

char *sub_217F1BC40()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_217E8D720(result, *(v1 + 2) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

uint64_t sub_217F1BC8C(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = v3;
  v6 = a1;
  v21[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = (1 << v7) + 63;
  v10 = v9 >> 6;
  v11 = 8 * (v9 >> 6);
  if (v8 <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1, v11);
    v13 = v21 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = a2(v13, v10, v6);
    if (v5)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  v17 = 8 * (v9 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v11 = v17;
    goto LABEL_2;
  }

  v18 = swift_slowAlloc();
  v19 = v5;
  v20 = sub_217F1BFE0(v18, v10, v6, a3);
  result = MEMORY[0x21CEAF6B0](v18, -1, -1);
  if (!v19)
  {
    result = v20;
  }

LABEL_4:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *sub_217F1BDFC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  while (v8)
  {
    v9 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v10 = v9 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 40 * v10 + 16) == 1)
    {
      *(result + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_217F3659C(result, a2, v4, a3);
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

    if (v5 >= ((v6 + 63) >> 6))
    {
      return sub_217F3659C(result, a2, v4, a3);
    }

    v12 = *(a3 + 64 + 8 * v5);
    ++v11;
    if (v12)
    {
      v8 = (v12 - 1) & v12;
      v10 = __clz(__rbit64(v12)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_217F1BEF0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  while (v8)
  {
    v9 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v10 = v9 | (v5 << 6);
LABEL_11:
    if ((*(*(a3 + 56) + 40 * v10 + 16) & 1) == 0)
    {
      *(result + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_217F3659C(result, a2, v4, a3);
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

    if (v5 >= ((v6 + 63) >> 6))
    {
      return sub_217F3659C(result, a2, v4, a3);
    }

    v12 = *(a3 + 64 + 8 * v5);
    ++v11;
    if (v12)
    {
      v8 = (v12 - 1) & v12;
      v10 = __clz(__rbit64(v12)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_217F1BFE0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

unint64_t sub_217F1C068(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x21CEAF6D0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x21CEAF6D0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_217F1C108(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    for (i = 0; v6; result = sub_217F2BC84(v18, &qword_27CBF7300, &qword_217F5A018))
    {
      v9 = i;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = (*(v2 + 48) + 96 * (v10 | (v9 << 6)));
      v12 = v11[1];
      v20[0] = *v11;
      v20[1] = v12;
      v14 = v11[3];
      v13 = v11[4];
      v15 = v11[2];
      *(v21 + 9) = *(v11 + 73);
      v20[3] = v14;
      v21[0] = v13;
      v20[2] = v15;
      sub_217E98218(v20, v18);
      sub_217F1C278(v20, v16);
      sub_217E98274(v20);
      v18[2] = v16[2];
      v18[3] = v16[3];
      v19[0] = v17[0];
      *(v19 + 9) = *(v17 + 9);
      v18[0] = v16[0];
      v18[1] = v16[1];
    }

    while (1)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
      }

      v6 = *(v3 + 8 * v9);
      ++i;
      if (v6)
      {
        i = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_217F1C278@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  v7 = *(*v3 + 40);
  sub_217F4B224();
  v8 = *a1;
  v9 = a1[1];
  sub_217F4AB24();
  result = sub_217F4B254();
  v11 = -1 << *(v6 + 32);
  v12 = result & ~v11;
  if ((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = (*(v6 + 48) + 96 * v12);
      if (*v14 == v8 && v14[1] == v9)
      {
        break;
      }

      result = sub_217F4B144();
      if (result)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    v22 = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217ECFD9C();
      v18 = v22;
    }

    v19 = (*(v18 + 48) + 96 * v12);
    v20 = v19[3];
    a2[2] = v19[2];
    a2[3] = v20;
    a2[4] = v19[4];
    *(a2 + 73) = *(v19 + 73);
    v21 = v19[1];
    *a2 = *v19;
    a2[1] = v21;
    result = sub_217F1C3E8(v12);
    *v3 = v22;
  }

  else
  {
LABEL_9:
    *(a2 + 73) = 0u;
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

unint64_t sub_217F1C3E8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_217F4AD94();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = 96 * v6;
        v12 = (*(v3 + 48) + 96 * v6);
        v14 = v12[3];
        v13 = v12[4];
        v15 = v12[2];
        *(v28 + 9) = *(v12 + 73);
        v27[3] = v14;
        v28[0] = v13;
        v27[2] = v15;
        v16 = v12[1];
        v27[0] = *v12;
        v27[1] = v16;
        v17 = *(v3 + 40);
        sub_217F4B224();
        sub_217E98218(v27, v26);
        sub_217F4AB24();
        v18 = sub_217F4B254();
        sub_217E98274(v27);
        v19 = v18 & v7;
        if (v2 >= v10)
        {
          if (v19 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v19 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v19)
        {
LABEL_11:
          v20 = *(v3 + 48);
          v21 = (v20 + 96 * v2);
          v22 = (v20 + v11);
          if (96 * v2 < v11 || v21 >= v22 + 96 || v2 != v6)
          {
            memmove(v21, v22, 0x60uLL);
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

void (*sub_217F1C5F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x50uLL);
  }

  v12 = v11;
  *a1 = v11;
  v13 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12[8] = sub_217F1C980(v12);
  v12[9] = sub_217F1C72C(v12 + 4, a2, a3, a4 & 0x101010101, isUniquelyReferenced_nonNull_native, a5);
  return sub_217F1C6CC;
}

void sub_217F1C6CC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_217F1C72C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, double a6))(uint64_t **a1)
{
  v7 = v6;
  if (MEMORY[0x277D84FD8])
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(0x40uLL);
  }

  v15 = v14;
  *a1 = v14;
  *(v14 + 32) = a4;
  *(v14 + 40) = v6;
  *(v14 + 24) = a6;
  *(v14 + 8) = a2;
  *(v14 + 16) = a3;
  v16 = *v6;
  v17 = sub_217E8E9D0(a2, a3, a4 & 0x101010101, a6);
  *(v15 + 56) = v18 & 1;
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a5 & 1) == 0)
  {
    if (v24 >= v22 && (a5 & 1) == 0)
    {
      v25 = v17;
      sub_217E8FA94();
      v17 = v25;
      goto LABEL_11;
    }

    sub_217E927B4(v22, a5 & 1);
    v26 = *v7;
    v17 = sub_217E8E9D0(a2, a3, a4 & 0x101010101, a6);
    if ((v23 & 1) == (v27 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_217F4B1C4();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v15 + 48) = v17;
  if (v23)
  {
    v28 = *(*(*v7 + 56) + 8 * v17);
  }

  else
  {
    v28 = 0;
  }

  *v15 = v28;
  return sub_217F1C8B8;
}

void sub_217F1C8B8(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 56);
  if (v2)
  {
    v4 = v1[6];
    v5 = *v1[5];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_217F35600(v4, v1[1], v1[2], v1[4] & 0x101010101, v2, v5, *(v1 + 3));
    }
  }

  else if ((*a1)[7])
  {
    v6 = v1[6];
    v7 = *v1[5];
    sub_217F23FA4(*(v7 + 48) + 32 * v6);
    sub_217F35220(v6, v7);
  }

  v8 = *v1;

  free(v1);
}

uint64_t (*sub_217F1C980(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_217F1C9A8;
}

uint64_t sub_217F1C9B4(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v70 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x277D84FA0];
LABEL_53:
    v51 = *MEMORY[0x277D85DE8];
    return v5;
  }

  v57 = 0;
  v7 = a1 + 64;
  v6 = *(a1 + 64);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v61 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v65 = (a2 + 56);

  v15 = 0;
  v63 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v64 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    sub_217F4B224();

    sub_217F4AB24();
    v24 = sub_217F4B254();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v65[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v63;
    v15 = v64;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_217F4B144() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v65[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v63;
  v28 = v64;
  v67 = v61;
  v68 = v64;
  v69 = v11;
  v66[0] = v63;
  v66[1] = v7;

  v31 = *(v5 + 32);
  v58 = ((1 << v31) + 63) >> 6;
  v14 = 8 * v58;
  if ((v31 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v59 = &v57;
    MEMORY[0x28223BE20](v29, v30);
    v2 = &v57 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v65, v32);
    v33 = *(v2 + 8 * v8) & ~v4;
    v34 = *(v5 + 16);
    v62 = v2;
    *(v2 + 8 * v8) = v33;
    v35 = v34 - 1;
LABEL_23:
    v60 = v35;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v37 = v28;
    while (1)
    {
      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v38 >= v12)
      {
        v5 = sub_217F3703C(v62, v58, v60, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v38);
      ++v37;
      if (v11)
      {
        v28 = v38;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v39 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v40 = *(v3 + 48);
            v64 = v28;
            v41 = (v40 + ((v28 << 10) | (16 * v39)));
            v42 = *v41;
            v4 = v41[1];
            v43 = *(v5 + 40);
            sub_217F4B224();

            sub_217F4AB24();
            v44 = sub_217F4B254();
            v45 = -1 << *(v5 + 32);
            v8 = v44 & ~v45;
            v2 = v8 >> 6;
            v46 = 1 << v8;
            if (((1 << v8) & v65[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v64;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v47 = (*(v5 + 48) + 16 * v8);
          if (*v47 != v42 || v47[1] != v4)
          {
            v49 = ~v45;
            while ((sub_217F4B144() & 1) == 0)
            {
              v8 = (v8 + 1) & v49;
              v2 = v8 >> 6;
              v46 = 1 << v8;
              if (((1 << v8) & v65[v8 >> 6]) == 0)
              {
                v3 = v63;
                goto LABEL_45;
              }

              v50 = (*(v5 + 48) + 16 * v8);
              if (*v50 == v42 && v50[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v63;
          v36 = v62[v2];
          v62[v2] = v36 & ~v46;
          v27 = (v36 & v46) == 0;
          v28 = v64;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v35 = v60 - 1;
        if (__OFSUB__(v60, 1))
        {
          __break(1u);
        }

        if (v60 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v53 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v64;
  }

  v54 = swift_slowAlloc();
  memcpy(v54, v65, v53);
  v55 = v57;
  v56 = sub_217F1D3D0(v54, v58, v5, v2, v66);

  if (!v55)
  {

    MEMORY[0x21CEAF6B0](v54, -1, -1);
    v61 = v67;
    v5 = v56;
LABEL_52:
    sub_217E7F628();
    goto LABEL_53;
  }

  MEMORY[0x21CEAF510](v55);
  result = MEMORY[0x21CEAF6B0](v54, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_217F1CF24(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v61[2] = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v2 = MEMORY[0x277D84FA0];
    goto LABEL_43;
  }

  v61[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v52 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v57 = v4;
  v58 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v55 = v5 + 1;
    v11 = *(v2 + 40);
    sub_217F4B224();

    sub_217F4AB24();
    v12 = sub_217F4B254();
    v13 = -1 << *(v2 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    v16 = 1 << v14;
    if (((1 << v14) & v7[v14 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v55;
    if (v55 == v3)
    {
      goto LABEL_42;
    }
  }

  v17 = (*(v2 + 48) + 16 * v14);
  if (*v17 != v10 || v17[1] != v9)
  {
    v19 = ~v13;
    while ((sub_217F4B144() & 1) == 0)
    {
      v14 = (v14 + 1) & v19;
      v15 = v14 >> 6;
      v16 = 1 << v14;
      if (((1 << v14) & v7[v14 >> 6]) == 0)
      {
        v6 = v58;
        goto LABEL_6;
      }

      v20 = (*(v2 + 48) + 16 * v14);
      if (*v20 == v10 && v20[1] == v9)
      {
        break;
      }
    }
  }

  v61[1] = v55;

  v23 = *(v2 + 32);
  v53 = ((1 << v23) + 63) >> 6;
  v24 = 8 * v53;
  v25 = v58;
  if ((v23 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v46 = v24;

  v47 = v46;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v54 = &v51;
    MEMORY[0x28223BE20](v21, v22);
    v14 = &v51 - ((v26 + 15) & 0x3FFFFFFFFFFFFFF0);
    v60 = v7;
    memcpy(v14, v7, v26);
    v59 = v2;
    v27 = *(v2 + 16);
    v28 = *(v14 + 8 * v15) & ~v16;
    v56 = v14;
    *(v14 + 8 * v15) = v28;
    v29 = v27 - 1;
    v30 = v57;
    v7 = *(v57 + 16);
    v31 = v55;
    while (1)
    {
      v55 = v29;
      if (v31 == v7)
      {
LABEL_41:
        v2 = sub_217F3703C(v56, v53, v55, v59);
LABEL_42:

LABEL_43:
        v44 = *MEMORY[0x277D85DE8];
        return v2;
      }

      v15 = v31;
      while (1)
      {
        if (v31 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v15 >= *(v30 + 16))
        {
          goto LABEL_45;
        }

        v33 = (v25 + 16 * v15);
        v34 = *v33;
        v16 = v33[1];
        ++v15;
        v2 = v59;
        v35 = *(v59 + 40);
        sub_217F4B224();

        sub_217F4AB24();
        v36 = sub_217F4B254();
        v37 = -1 << *(v2 + 32);
        v38 = v36 & ~v37;
        v14 = v38 >> 6;
        v39 = 1 << v38;
        if (((1 << v38) & v60[v38 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v25 = v58;
        if (v15 == v7)
        {
          goto LABEL_41;
        }
      }

      v40 = (*(v2 + 48) + 16 * v38);
      if (*v40 != v34 || v40[1] != v16)
      {
        v42 = ~v37;
        v2 = 1;
        while ((sub_217F4B144() & 1) == 0)
        {
          v38 = (v38 + 1) & v42;
          v14 = v38 >> 6;
          v39 = 1 << v38;
          if (((1 << v38) & v60[v38 >> 6]) == 0)
          {
            v30 = v57;
            goto LABEL_37;
          }

          v43 = (*(v59 + 48) + 16 * v38);
          if (*v43 == v34 && v43[1] == v16)
          {
            break;
          }
        }
      }

      v30 = v57;
      v32 = v56[v14];
      v56[v14] = v32 & ~v39;
      if ((v32 & v39) == 0)
      {
        goto LABEL_22;
      }

      v29 = v55 - 1;
      v25 = v58;
      if (__OFSUB__(v55, 1))
      {
        __break(1u);
      }

      v31 = v15;
      if (v55 == 1)
      {

        v2 = MEMORY[0x277D84FA0];
        goto LABEL_42;
      }
    }
  }

  v48 = swift_slowAlloc();
  memcpy(v48, v7, v47);
  v49 = v52;
  v50 = sub_217F1D608(v48, v53, v2, v14, v61);

  if (!v49)
  {

    MEMORY[0x21CEAF6B0](v48, -1, -1);

    v2 = v50;
    goto LABEL_43;
  }

  MEMORY[0x21CEAF510](v49);
  result = MEMORY[0x21CEAF6B0](v48, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_217F1D3D0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_217F3703C(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_217F4B224();

        sub_217F4AB24();
        v20 = sub_217F4B254();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_217F4B144() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_217F1D608(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v27 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_217F3703C(v28, a2, v27, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        v16 = *(a3 + 40);
        sub_217F4B224();

        sub_217F4AB24();
        v17 = sub_217F4B254();
        v18 = -1 << *(a3 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 != v15 || v22[1] != v14)
      {
        v24 = ~v18;
        while ((sub_217F4B144() & 1) == 0)
        {
          v19 = (v19 + 1) & v24;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v25 = (*(a3 + 48) + 16 * v19);
          if (*v25 == v15 && v25[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v28[v20];
      v28[v20] = v10 & ~v21;
    }

    while ((v10 & v21) == 0);
    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v27 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_217F1D7EC(char *__src, char *a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a4;
  v10 = a3;
  v11 = a2 - __src;
  v12 = (a2 - __src) / 96;
  v13 = a3 - a2;
  v14 = (a3 - a2) / 96;
  v116 = __src;
  if (v12 >= v14)
  {
    v65 = 96 * v14;
    if (a4 != a2 || &a2[v65] <= a4)
    {
      v66 = a2;
      memmove(a4, a2, 96 * v14);
      a2 = v66;
    }

    v64 = a2;
    v17 = &v9[v65];
    if (v13 < 96 || a2 <= v116)
    {
      goto LABEL_126;
    }

    v128 = v9;
LABEL_66:
    v115 = v64;
    v67 = (v64 - 96);
    v68 = v17;
    while (1)
    {
      v113 = v10;
      v17 = v68;
      v69 = *(v68 - 80);
      v118 = *(v68 - 96);
      v119 = v69;
      v70 = *(v68 - 64);
      v71 = *(v68 - 48);
      v72 = *(v68 - 32);
      *(v122 + 9) = *(v68 - 23);
      v121 = v71;
      v122[0] = v72;
      v120 = v70;
      *(v127 + 9) = *(v67 + 73);
      v73 = v67[4];
      v126 = v67[3];
      v127[0] = v73;
      v74 = v67[2];
      v124 = v67[1];
      v125 = v74;
      v123 = *v67;
      v75 = v121;
      v76 = *(a7 + 928);
      v77 = *(a7 + 936);
      if (*(v121 + 16))
      {
        v78 = *(v121 + 40);
        sub_217F4B224();
        sub_217E98218(&v118, v117);
        sub_217E98218(&v123, v117);
        sub_217F4AB24();
        v79 = sub_217F4B254();
        v80 = -1 << *(v75 + 32);
        v81 = v79 & ~v80;
        if ((*(v75 + 56 + ((v81 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v81))
        {
          v82 = ~v80;
          while (1)
          {
            v83 = (*(v75 + 48) + 16 * v81);
            v84 = *v83 == a5 && v83[1] == a6;
            if (v84 || (sub_217F4B144() & 1) != 0)
            {
              break;
            }

            v81 = (v81 + 1) & v82;
            if (((*(v75 + 56 + ((v81 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v81) & 1) == 0)
            {
              goto LABEL_80;
            }
          }

          v86 = v77;
          goto LABEL_92;
        }
      }

      else
      {
        sub_217E98218(&v118, v117);
        sub_217E98218(&v123, v117);
      }

LABEL_80:
      v85 = *(&v120 + 1);
      v86 = 1.0;
      if (*(*(&v120 + 1) + 16))
      {
        v87 = *(*(&v120 + 1) + 40);
        sub_217F4B224();
        sub_217F4AB24();
        v88 = sub_217F4B254();
        v89 = -1 << *(v85 + 32);
        v90 = v88 & ~v89;
        if ((*(v85 + 56 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v90))
        {
          v91 = ~v89;
          while (1)
          {
            v92 = (*(v85 + 48) + 16 * v90);
            v93 = *v92 == a5 && v92[1] == a6;
            if (v93 || (sub_217F4B144() & 1) != 0)
            {
              break;
            }

            v90 = (v90 + 1) & v91;
            if (((*(v85 + 56 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v90) & 1) == 0)
            {
              goto LABEL_92;
            }
          }

          v86 = v76;
        }
      }

LABEL_92:
      v94 = v126;
      if (*(v126 + 16) && (v95 = *(v126 + 40), sub_217F4B224(), sub_217F4AB24(), v96 = sub_217F4B254(), v97 = -1 << *(v94 + 32), v98 = v96 & ~v97, ((*(v94 + 56 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98) & 1) != 0))
      {
        v99 = ~v97;
        while (1)
        {
          v100 = (*(v94 + 48) + 16 * v98);
          v101 = *v100 == a5 && v100[1] == a6;
          if (v101 || (sub_217F4B144() & 1) != 0)
          {
            break;
          }

          v98 = (v98 + 1) & v99;
          if (((*(v94 + 56 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98) & 1) == 0)
          {
            goto LABEL_101;
          }
        }
      }

      else
      {
LABEL_101:
        v102 = *(&v125 + 1);
        v77 = 1.0;
        if (*(*(&v125 + 1) + 16))
        {
          v103 = *(*(&v125 + 1) + 40);
          sub_217F4B224();
          sub_217F4AB24();
          v104 = sub_217F4B254();
          v105 = -1 << *(v102 + 32);
          v106 = v104 & ~v105;
          if ((*(v102 + 56 + ((v106 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v106))
          {
            v107 = ~v105;
            while (1)
            {
              v108 = (*(v102 + 48) + 16 * v106);
              v109 = *v108 == a5 && v108[1] == a6;
              if (v109 || (sub_217F4B144() & 1) != 0)
              {
                break;
              }

              v106 = (v106 + 1) & v107;
              if (((*(v102 + 56 + ((v106 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v106) & 1) == 0)
              {
                goto LABEL_112;
              }
            }

            v77 = v76;
          }
        }
      }

LABEL_112:
      sub_217E98274(&v123);
      sub_217E98274(&v118);
      v10 = (v113 - 96);
      v9 = v128;
      if (v77 * *(&v126 + 1) < v86 * *(&v121 + 1))
      {
        if (v113 < v115 || v10 >= v115 || v113 != v115)
        {
          memmove(v113 - 96, v67, 0x60uLL);
        }

        if (v68 <= v9 || (v64 = v67, v67 <= v116))
        {
          v64 = v67;
          goto LABEL_126;
        }

        goto LABEL_66;
      }

      v68 -= 96;
      if (v113 < v17 || v10 >= v17 || v113 != v17)
      {
        memmove(v113 - 96, v17 - 96, 0x60uLL);
      }

      if (v68 <= v9)
      {
        v17 -= 96;
        v64 = v115;
        goto LABEL_126;
      }
    }
  }

  v15 = a2;
  v16 = 96 * v12;
  if (a4 != __src || &__src[v16] <= a4)
  {
    memmove(a4, __src, v16);
  }

  v17 = &v9[v16];
  if (v11 >= 96 && v15 < v10)
  {
    v18 = v15;
    v19 = *(a7 + 928);
    v20 = *(a7 + 936);
    while (1)
    {
      v21 = v18[1];
      v118 = *v18;
      v119 = v21;
      v22 = v18[2];
      v23 = v18[3];
      v24 = v18[4];
      v114 = v18;
      *(v122 + 9) = *(v18 + 73);
      v121 = v23;
      v122[0] = v24;
      v120 = v22;
      v25 = *(v9 + 1);
      v123 = *v9;
      v124 = v25;
      v26 = *(v9 + 2);
      v27 = *(v9 + 3);
      v28 = *(v9 + 4);
      v128 = v9;
      *(v127 + 9) = *(v9 + 73);
      v126 = v27;
      v127[0] = v28;
      v125 = v26;
      v29 = v121;
      if (!*(v121 + 16))
      {
        break;
      }

      v30 = *(v121 + 40);
      sub_217F4B224();
      sub_217E98218(&v118, v117);
      sub_217E98218(&v123, v117);
      sub_217F4AB24();
      v31 = sub_217F4B254();
      v32 = -1 << *(v29 + 32);
      v33 = v31 & ~v32;
      if (((*(v29 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
      {
        goto LABEL_19;
      }

      v34 = ~v32;
      while (1)
      {
        v35 = (*(v29 + 48) + 16 * v33);
        v36 = *v35 == a5 && v35[1] == a6;
        if (v36 || (sub_217F4B144() & 1) != 0)
        {
          break;
        }

        v33 = (v33 + 1) & v34;
        if (((*(v29 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v38 = v20;
LABEL_31:
      v46 = v126;
      if (*(v126 + 16) && (v47 = *(v126 + 40), sub_217F4B224(), sub_217F4AB24(), v48 = sub_217F4B254(), v49 = -1 << *(v46 + 32), v50 = v48 & ~v49, ((*(v46 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) != 0))
      {
        v51 = ~v49;
        while (1)
        {
          v52 = (*(v46 + 48) + 16 * v50);
          v53 = *v52 == a5 && v52[1] == a6;
          if (v53 || (sub_217F4B144() & 1) != 0)
          {
            break;
          }

          v50 = (v50 + 1) & v51;
          if (((*(v46 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
          {
            goto LABEL_40;
          }
        }

        v55 = v20;
      }

      else
      {
LABEL_40:
        v54 = *(&v125 + 1);
        v55 = 1.0;
        if (*(*(&v125 + 1) + 16))
        {
          v56 = *(*(&v125 + 1) + 40);
          sub_217F4B224();
          sub_217F4AB24();
          v57 = sub_217F4B254();
          v58 = -1 << *(v54 + 32);
          v59 = v57 & ~v58;
          if ((*(v54 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59))
          {
            v60 = ~v58;
            while (1)
            {
              v61 = (*(v54 + 48) + 16 * v59);
              v62 = *v61 == a5 && v61[1] == a6;
              if (v62 || (sub_217F4B144() & 1) != 0)
              {
                break;
              }

              v59 = (v59 + 1) & v60;
              if (((*(v54 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
              {
                goto LABEL_52;
              }
            }

            v55 = v19;
          }
        }
      }

LABEL_52:
      sub_217E98274(&v123);
      sub_217E98274(&v118);
      v9 = v128;
      if (v55 * *(&v126 + 1) >= v38 * *(&v121 + 1))
      {
        v63 = v128;
        v9 = v128 + 96;
        if (v116 == v128)
        {
          goto LABEL_57;
        }

LABEL_56:
        memmove(v116, v63, 0x60uLL);
        goto LABEL_57;
      }

      v63 = v18;
      v18 += 6;
      if (v116 != v114)
      {
        goto LABEL_56;
      }

LABEL_57:
      if (v9 >= v17)
      {
        v64 = v116 + 96;
        goto LABEL_126;
      }

      v116 += 96;
      if (v18 >= v10)
      {
        goto LABEL_59;
      }
    }

    sub_217E98218(&v118, v117);
    sub_217E98218(&v123, v117);
LABEL_19:
    v37 = *(&v120 + 1);
    v38 = 1.0;
    if (*(*(&v120 + 1) + 16))
    {
      v39 = *(*(&v120 + 1) + 40);
      sub_217F4B224();
      sub_217F4AB24();
      v40 = sub_217F4B254();
      v41 = -1 << *(v37 + 32);
      v42 = v40 & ~v41;
      if ((*(v37 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
      {
        v43 = ~v41;
        while (1)
        {
          v44 = (*(v37 + 48) + 16 * v42);
          v45 = *v44 == a5 && v44[1] == a6;
          if (v45 || (sub_217F4B144() & 1) != 0)
          {
            break;
          }

          v42 = (v42 + 1) & v43;
          if (((*(v37 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        v38 = v19;
      }
    }

    goto LABEL_31;
  }

LABEL_59:
  v64 = v116;
LABEL_126:
  v110 = 96 * ((v17 - v9) / 96);
  if (v64 != v9 || v64 >= &v9[v110])
  {
    memmove(v64, v9, v110);
  }

  return 1;
}

uint64_t sub_217F1E144(char *a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v10 = a1;
  v11 = *a1;

  sub_217EB4358(a6, v29);
  v26 = v11;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v26 = sub_217F3610C(v26);
  }

  v22 = v10;
  *v10 = v26;
  v12 = (v26 + 16);
  v13 = *(v26 + 2);
  if (v13 < 2)
  {
LABEL_9:

    *v22 = v26;
LABEL_11:
    sub_217EB5CB8(a6);
    return 1;
  }

  else
  {
    while (1)
    {
      v14 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = &v26[16 * v13];
      v15 = *v10;
      v16 = &v12[2 * v13];
      v17 = *v16;
      v18 = v16[1];
      v30 = (v14 + 96 * *v10);
      v27 = v14 + 96 * v18;
      v28 = (v14 + 96 * v17);

      sub_217EB4358(a6, v29);
      sub_217F1D7EC(v30, v28, v27, a2, a4, a5, a6);
      sub_217EB5CB8(a6);
      if (v7)
      {
        *v22 = v26;
        swift_bridgeObjectRelease_n();
        goto LABEL_11;
      }

      if (v18 < v15)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v19 = *v12;
      if (v13 - 2 >= *v12)
      {
        goto LABEL_13;
      }

      *v10 = v15;
      *(v10 + 1) = v18;
      v20 = v19 - v13;
      if (v19 < v13)
      {
        goto LABEL_14;
      }

      v13 = v19 - 1;
      memmove(v16, v16 + 2, 16 * v20);
      *v12 = v13;
      if (v13 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v22 = v26;
    result = sub_217EB5CB8(a6);
    __break(1u);
  }

  return result;
}

uint64_t sub_217F1E334(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v227 = MEMORY[0x277D84F90];
  v10 = a3[1];

  if (v10 >= 1)
  {
    sub_217EB4358(a7, &v222);

    v196 = a7;
    sub_217EB4358(a7, &v222);
    v11 = 0;
    v12 = MEMORY[0x277D84F90];
LABEL_4:
    a7 = v11 + 1;
    v200 = v12;
    if (v11 + 1 >= v10)
    {
      v30 = v196;
      v31 = a4;
      goto LABEL_75;
    }

    v13 = v12;
    v14 = *a3;
    v15 = (*a3 + 96 * a7);
    v16 = v15[1];
    v217 = *v15;
    v218 = v16;
    v17 = v15[2];
    v18 = v15[3];
    v19 = v15[4];
    *(v221 + 9) = *(v15 + 73);
    v220 = v18;
    v221[0] = v19;
    v219 = v17;
    v205 = v11;
    v20 = (v14 + 96 * v11);
    v22 = v20[3];
    v21 = v20[4];
    v23 = v20[2];
    *(v226 + 9) = *(v20 + 73);
    v225 = v22;
    v226[0] = v21;
    v224 = v23;
    v24 = v20[1];
    v222 = *v20;
    v223 = v24;
    v25 = v220;
    v26 = *(v196 + 928);
    v27 = *(v196 + 936);
    sub_217E98218(&v217, &v212);
    sub_217E98218(&v222, &v212);
    v28 = v27;
    if ((sub_217EA3608(a5, a6, v25) & 1) == 0)
    {
      if (sub_217EA3608(a5, a6, *(&v219 + 1)))
      {
        v28 = v26;
      }

      else
      {
        v28 = 1.0;
      }
    }

    if (sub_217EA3608(a5, a6, v225))
    {
      sub_217E98274(&v222);
      sub_217E98274(&v217);
      v29 = v27;
    }

    else
    {
      v32 = sub_217EA3608(a5, a6, *(&v224 + 1));
      sub_217E98274(&v222);
      sub_217E98274(&v217);
      if (v32)
      {
        v29 = v26;
      }

      else
      {
        v29 = 1.0;
      }
    }

    v33 = v28 * *(&v220 + 1);
    v34 = v29 * *(&v225 + 1);
    v35 = v205 + 2;
    if (v205 + 2 >= v10)
    {
      v12 = v13;
      a7 = v205 + 2;
      goto LABEL_66;
    }

    while (1)
    {
      v36 = (v14 + 96 * a7);
      a7 = v35;
      v37 = (v14 + 96 * v35);
      v38 = v37[1];
      v208[0] = *v37;
      v208[1] = v38;
      v39 = v37[2];
      v40 = v37[3];
      v41 = v37[4];
      *(v211 + 9) = *(v37 + 73);
      v210 = v40;
      v211[0] = v41;
      v209 = v39;
      v42 = v36[1];
      v212 = *v36;
      v213 = v42;
      v43 = v36[2];
      v44 = v36[3];
      v45 = v36[4];
      *(v216 + 9) = *(v36 + 73);
      v215 = v44;
      v216[0] = v45;
      v214 = v43;
      v46 = v210;
      if (!*(v210 + 16))
      {
        break;
      }

      v47 = *(v210 + 40);
      sub_217F4B224();
      sub_217E98218(v208, v207);
      sub_217E98218(&v212, v207);
      sub_217F4AB24();
      v48 = sub_217F4B254();
      v49 = -1 << *(v46 + 32);
      v50 = v48 & ~v49;
      if (((*(v46 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
      {
        goto LABEL_27;
      }

      v51 = ~v49;
      while (1)
      {
        v52 = (*(v46 + 48) + 16 * v50);
        v53 = *v52 == a5 && v52[1] == a6;
        if (v53 || (sub_217F4B144() & 1) != 0)
        {
          break;
        }

        v50 = (v50 + 1) & v51;
        if (((*(v46 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v55 = v27;
LABEL_39:
      v63 = v215;
      if (*(v215 + 16) && (v64 = *(v215 + 40), sub_217F4B224(), sub_217F4AB24(), v65 = sub_217F4B254(), v66 = -1 << *(v63 + 32), v67 = v65 & ~v66, ((*(v63 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) != 0))
      {
        v68 = ~v66;
        while (1)
        {
          v69 = (*(v63 + 48) + 16 * v67);
          v70 = *v69 == a5 && v69[1] == a6;
          if (v70 || (sub_217F4B144() & 1) != 0)
          {
            break;
          }

          v67 = (v67 + 1) & v68;
          if (((*(v63 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        v72 = v27;
      }

      else
      {
LABEL_48:
        v71 = *(&v214 + 1);
        v72 = 1.0;
        v73 = v200;
        if (!*(*(&v214 + 1) + 16))
        {
          goto LABEL_61;
        }

        v74 = *(*(&v214 + 1) + 40);
        sub_217F4B224();
        sub_217F4AB24();
        v75 = sub_217F4B254();
        v76 = -1 << *(v71 + 32);
        v77 = v75 & ~v76;
        if (((*(v71 + 56 + ((v77 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v77) & 1) == 0)
        {
          goto LABEL_61;
        }

        v78 = ~v76;
        while (1)
        {
          v79 = (*(v71 + 48) + 16 * v77);
          v80 = *v79 == a5 && v79[1] == a6;
          if (v80 || (sub_217F4B144() & 1) != 0)
          {
            break;
          }

          v77 = (v77 + 1) & v78;
          if (((*(v71 + 56 + ((v77 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v77) & 1) == 0)
          {
            goto LABEL_60;
          }
        }

        v72 = v26;
      }

LABEL_60:
      v73 = v200;
LABEL_61:
      sub_217E98274(&v212);
      sub_217E98274(v208);
      if (v34 < v33 == v72 * *(&v215 + 1) >= v55 * *(&v210 + 1))
      {
        goto LABEL_64;
      }

      v35 = a7 + 1;
      if (a7 + 1 == v10)
      {
        a7 = v10;
LABEL_64:
        v12 = v73;
LABEL_66:
        v30 = v196;
        v31 = a4;
        v11 = v205;
        if (v34 < v33)
        {
          if (a7 < v205)
          {
            goto LABEL_211;
          }

          if (v205 < a7)
          {
            v81 = 96 * a7 - 96;
            v82 = 96 * v205;
            v83 = a7;
            a7 = v205;
            v84 = v83;
            do
            {
              if (a7 != --v83)
              {
                v85 = *a3;
                if (!*a3)
                {
                  goto LABEL_216;
                }

                v86 = (v85 + v81);
                v214 = *(v85 + v82 + 32);
                v215 = *(v85 + v82 + 48);
                v216[0] = *(v85 + v82 + 64);
                *(v216 + 9) = *(v85 + v82 + 73);
                v212 = *(v85 + v82);
                v213 = *(v85 + v82 + 16);
                memmove((v85 + v82), (v85 + v81), 0x60uLL);
                v86[2] = v214;
                v86[3] = v215;
                v86[4] = v216[0];
                *(v86 + 73) = *(v216 + 9);
                *v86 = v212;
                v86[1] = v213;
              }

              ++a7;
              v81 -= 96;
              v82 += 96;
            }

            while (a7 < v83);
            v30 = v196;
            v31 = a4;
            v12 = v200;
            v11 = v205;
            a7 = v84;
          }
        }

LABEL_75:
        v87 = a3[1];
        if (a7 >= v87)
        {
          goto LABEL_135;
        }

        if (__OFSUB__(a7, v11))
        {
          goto LABEL_210;
        }

        if (a7 - v11 >= v31)
        {
          goto LABEL_135;
        }

        v88 = v11 + v31;
        if (__OFADD__(v11, v31))
        {
          goto LABEL_212;
        }

        if (v88 >= v87)
        {
          v88 = a3[1];
        }

        if (v88 >= v11)
        {
          if (a7 == v88)
          {
            goto LABEL_135;
          }

          v89 = *a3;
          v90 = *(v30 + 928);
          v91 = *(v30 + 936);
          *v202 = v88;
          while (2)
          {
            v197 = a7;
            while (2)
            {
              v92 = (v89 + 96 * a7);
              v93 = v92[1];
              v217 = *v92;
              v218 = v93;
              v94 = v92[2];
              v95 = v92[3];
              v96 = v92[4];
              *(v221 + 9) = *(v92 + 73);
              v220 = v95;
              v221[0] = v96;
              v219 = v94;
              v97 = *(v92 - 5);
              v222 = *(v92 - 6);
              v223 = v97;
              v98 = *(v92 - 4);
              v99 = *(v92 - 3);
              v100 = *(v92 - 2);
              *(v226 + 9) = *(v92 - 23);
              v225 = v99;
              v226[0] = v100;
              v224 = v98;
              v101 = v220;
              if (*(v220 + 16))
              {
                v102 = *(v220 + 40);
                sub_217F4B224();
                sub_217E98218(&v217, &v212);
                sub_217E98218(&v222, &v212);
                sub_217F4AB24();
                v103 = sub_217F4B254();
                v104 = -1 << *(v101 + 32);
                v105 = v103 & ~v104;
                if ((*(v101 + 56 + ((v105 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v105))
                {
                  v106 = ~v104;
                  while (1)
                  {
                    v107 = (*(v101 + 48) + 16 * v105);
                    v108 = *v107 == a5 && v107[1] == a6;
                    if (v108 || (sub_217F4B144() & 1) != 0)
                    {
                      break;
                    }

                    v105 = (v105 + 1) & v106;
                    if (((*(v101 + 56 + ((v105 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v105) & 1) == 0)
                    {
                      goto LABEL_97;
                    }
                  }

                  v110 = v91;
                  goto LABEL_109;
                }
              }

              else
              {
                sub_217E98218(&v217, &v212);
                sub_217E98218(&v222, &v212);
              }

LABEL_97:
              v109 = *(&v219 + 1);
              v110 = 1.0;
              if (*(*(&v219 + 1) + 16))
              {
                v111 = *(*(&v219 + 1) + 40);
                sub_217F4B224();
                sub_217F4AB24();
                v112 = sub_217F4B254();
                v113 = -1 << *(v109 + 32);
                v114 = v112 & ~v113;
                if ((*(v109 + 56 + ((v114 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v114))
                {
                  v115 = ~v113;
                  while (1)
                  {
                    v116 = (*(v109 + 48) + 16 * v114);
                    v117 = *v116 == a5 && v116[1] == a6;
                    if (v117 || (sub_217F4B144() & 1) != 0)
                    {
                      break;
                    }

                    v114 = (v114 + 1) & v115;
                    if (((*(v109 + 56 + ((v114 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v114) & 1) == 0)
                    {
                      goto LABEL_109;
                    }
                  }

                  v110 = v90;
                }
              }

LABEL_109:
              v118 = v225;
              if (*(v225 + 16) && (v119 = *(v225 + 40), sub_217F4B224(), sub_217F4AB24(), v120 = sub_217F4B254(), v121 = -1 << *(v118 + 32), v122 = v120 & ~v121, ((*(v118 + 56 + ((v122 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v122) & 1) != 0))
              {
                v123 = ~v121;
                while (1)
                {
                  v124 = (*(v118 + 48) + 16 * v122);
                  v125 = *v124 == a5 && v124[1] == a6;
                  if (v125 || (sub_217F4B144() & 1) != 0)
                  {
                    break;
                  }

                  v122 = (v122 + 1) & v123;
                  if (((*(v118 + 56 + ((v122 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v122) & 1) == 0)
                  {
                    goto LABEL_118;
                  }
                }

                v127 = v91;
              }

              else
              {
LABEL_118:
                v126 = *(&v224 + 1);
                v127 = 1.0;
                if (*(*(&v224 + 1) + 16))
                {
                  v128 = *(*(&v224 + 1) + 40);
                  sub_217F4B224();
                  sub_217F4AB24();
                  v129 = sub_217F4B254();
                  v130 = -1 << *(v126 + 32);
                  v131 = v129 & ~v130;
                  if ((*(v126 + 56 + ((v131 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v131))
                  {
                    v132 = ~v130;
                    while (1)
                    {
                      v133 = (*(v126 + 48) + 16 * v131);
                      v134 = *v133 == a5 && v133[1] == a6;
                      if (v134 || (sub_217F4B144() & 1) != 0)
                      {
                        break;
                      }

                      v131 = (v131 + 1) & v132;
                      if (((*(v126 + 56 + ((v131 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v131) & 1) == 0)
                      {
                        goto LABEL_130;
                      }
                    }

                    v127 = v90;
                  }
                }
              }

LABEL_130:
              sub_217E98274(&v222);
              sub_217E98274(&v217);
              if (v127 * *(&v225 + 1) < v110 * *(&v220 + 1))
              {
                if (!v89)
                {
                  goto LABEL_214;
                }

                --a7;
                v135 = v92 - 6;
                v214 = v92[2];
                v215 = v92[3];
                v216[0] = v92[4];
                *(v216 + 9) = *(v92 + 73);
                v212 = *v92;
                v213 = v92[1];
                v136 = *(v92 - 3);
                v92[2] = *(v92 - 4);
                v92[3] = v136;
                v137 = *(v92 - 1);
                v92[4] = *(v92 - 2);
                v92[5] = v137;
                v138 = *(v92 - 5);
                *v92 = *(v92 - 6);
                v92[1] = v138;
                v135[1] = v213;
                *v135 = v212;
                *(v135 + 73) = *(v216 + 9);
                v135[4] = v216[0];
                v135[3] = v215;
                v135[2] = v214;
                if (a7 != v11)
                {
                  continue;
                }
              }

              break;
            }

            a7 = v197 + 1;
            if (v197 + 1 != *v202)
            {
              continue;
            }

            break;
          }

          a7 = *v202;
          v12 = v200;
LABEL_135:
          if (a7 < v11)
          {
            goto LABEL_209;
          }

          v139 = v12;
          v198 = a7;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v12 = v139;
          }

          else
          {
            v12 = sub_217E8DA14(0, *(v139 + 2) + 1, 1, v139);
          }

          v141 = *(v12 + 2);
          v140 = *(v12 + 3);
          a7 = v141 + 1;
          if (v141 >= v140 >> 1)
          {
            v12 = sub_217E8DA14((v140 > 1), v141 + 1, 1, v12);
          }

          *(v12 + 2) = a7;
          v142 = v12 + 32;
          v143 = &v12[16 * v141 + 32];
          *v143 = v11;
          *(v143 + 1) = v198;
          v195 = *a1;
          if (!*a1)
          {
            goto LABEL_217;
          }

          if (v141)
          {
            v201 = v12;
            v194 = v12 + 32;
            while (1)
            {
              v144 = a7 - 1;
              if (a7 >= 4)
              {
                break;
              }

              if (a7 == 3)
              {
                v145 = *(v12 + 4);
                v146 = *(v12 + 5);
                v155 = __OFSUB__(v146, v145);
                v147 = v146 - v145;
                v148 = v155;
LABEL_156:
                if (v148)
                {
                  goto LABEL_199;
                }

                v161 = &v12[16 * a7];
                v163 = *v161;
                v162 = *(v161 + 1);
                v164 = __OFSUB__(v162, v163);
                v165 = v162 - v163;
                v166 = v164;
                if (v164)
                {
                  goto LABEL_201;
                }

                v167 = &v142[16 * v144];
                v169 = *v167;
                v168 = *(v167 + 1);
                v155 = __OFSUB__(v168, v169);
                v170 = v168 - v169;
                if (v155)
                {
                  goto LABEL_204;
                }

                if (__OFADD__(v165, v170))
                {
                  goto LABEL_206;
                }

                if (v165 + v170 >= v147)
                {
                  if (v147 < v170)
                  {
                    v144 = a7 - 2;
                  }

                  goto LABEL_178;
                }

                goto LABEL_171;
              }

              if (a7 < 2)
              {
                goto LABEL_207;
              }

              v171 = &v12[16 * a7];
              v173 = *v171;
              v172 = *(v171 + 1);
              v155 = __OFSUB__(v172, v173);
              v165 = v172 - v173;
              v166 = v155;
LABEL_171:
              if (v166)
              {
                goto LABEL_203;
              }

              v174 = &v142[16 * v144];
              v176 = *v174;
              v175 = *(v174 + 1);
              v155 = __OFSUB__(v175, v176);
              v177 = v175 - v176;
              if (v155)
              {
                goto LABEL_205;
              }

              if (v177 < v165)
              {
                goto LABEL_3;
              }

LABEL_178:
              if (v144 - 1 >= a7)
              {
                __break(1u);
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
                goto LABEL_213;
              }

              v182 = *a3;
              if (!*a3)
              {
                goto LABEL_215;
              }

              v183 = &v142[16 * v144 - 16];
              v184 = *v183;
              v185 = v144;
              v186 = &v142[16 * v144];
              v187 = *(v186 + 1);
              v206 = (v182 + 96 * *v183);
              v203 = (v182 + 96 * *v186);
              v188 = v182 + 96 * v187;

              a7 = v196;
              sub_217EB4358(v196, &v222);
              sub_217F1D7EC(v206, v203, v188, v195, a5, a6, v196);
              if (v204)
              {
                sub_217EB5CB8(v196);
                v227 = v201;

                goto LABEL_191;
              }

              sub_217EB5CB8(v196);

              if (v187 < v184)
              {
                goto LABEL_194;
              }

              v189 = *(v201 + 2);
              if (v185 > v189)
              {
                goto LABEL_195;
              }

              *v183 = v184;
              *(v183 + 1) = v187;
              if (v185 >= v189)
              {
                goto LABEL_196;
              }

              a7 = v189 - 1;
              memmove(v186, v186 + 16, 16 * (v189 - 1 - v185));
              v12 = v201;
              *(v201 + 2) = v189 - 1;
              v142 = v194;
              if (v189 <= 2)
              {
                goto LABEL_3;
              }
            }

            v149 = &v142[16 * a7];
            v150 = *(v149 - 8);
            v151 = *(v149 - 7);
            v155 = __OFSUB__(v151, v150);
            v152 = v151 - v150;
            if (v155)
            {
              goto LABEL_197;
            }

            v154 = *(v149 - 6);
            v153 = *(v149 - 5);
            v155 = __OFSUB__(v153, v154);
            v147 = v153 - v154;
            v148 = v155;
            if (v155)
            {
              goto LABEL_198;
            }

            v156 = &v12[16 * a7];
            v158 = *v156;
            v157 = *(v156 + 1);
            v155 = __OFSUB__(v157, v158);
            v159 = v157 - v158;
            if (v155)
            {
              goto LABEL_200;
            }

            v155 = __OFADD__(v147, v159);
            v160 = v147 + v159;
            if (v155)
            {
              goto LABEL_202;
            }

            if (v160 >= v152)
            {
              v178 = &v142[16 * v144];
              v180 = *v178;
              v179 = *(v178 + 1);
              v155 = __OFSUB__(v179, v180);
              v181 = v179 - v180;
              if (v155)
              {
                goto LABEL_208;
              }

              if (v147 < v181)
              {
                v144 = a7 - 2;
              }

              goto LABEL_178;
            }

            goto LABEL_156;
          }

LABEL_3:
          v11 = v198;
          v10 = a3[1];
          if (v198 >= v10)
          {
            v227 = v12;
            a7 = v196;
            goto LABEL_189;
          }

          goto LABEL_4;
        }

LABEL_213:
        __break(1u);
LABEL_214:

        sub_217EB5CB8(v196);

        sub_217EB5CB8(v196);
        __break(1u);
LABEL_215:

        sub_217EB5CB8(v196);

        sub_217EB5CB8(v196);
        __break(1u);
LABEL_216:

        sub_217EB5CB8(v196);

        sub_217EB5CB8(v196);
        __break(1u);
LABEL_217:

        sub_217EB5CB8(v196);

        sub_217EB5CB8(v196);
        __break(1u);
LABEL_218:

        sub_217EB5CB8(a7);

        result = sub_217EB5CB8(a7);
        __break(1u);
        return result;
      }
    }

    sub_217E98218(v208, v207);
    sub_217E98218(&v212, v207);
LABEL_27:
    v54 = *(&v209 + 1);
    v55 = 1.0;
    if (*(*(&v209 + 1) + 16))
    {
      v56 = *(*(&v209 + 1) + 40);
      sub_217F4B224();
      sub_217F4AB24();
      v57 = sub_217F4B254();
      v58 = -1 << *(v54 + 32);
      v59 = v57 & ~v58;
      if ((*(v54 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59))
      {
        v60 = ~v58;
        while (1)
        {
          v61 = (*(v54 + 48) + 16 * v59);
          v62 = *v61 == a5 && v61[1] == a6;
          if (v62 || (sub_217F4B144() & 1) != 0)
          {
            break;
          }

          v59 = (v59 + 1) & v60;
          if (((*(v54 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        v55 = v26;
      }
    }

    goto LABEL_39;
  }

  sub_217EB4358(a7, &v222);

  sub_217EB4358(a7, &v222);
LABEL_189:
  v190 = *a1;
  if (!*a1)
  {
    goto LABEL_218;
  }

  sub_217EB4358(a7, &v222);
  sub_217F1E144(&v227, v190, a3, a5, a6, a7);
  sub_217EB5CB8(a7);

LABEL_191:

  sub_217EB5CB8(a7);

  return sub_217EB5CB8(a7);
}

uint64_t sub_217F1F2EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v75 = result;
  if (a3 != a2)
  {
    v9 = a3;
    v10 = *a4;
    v11 = *(a7 + 928);
    v12 = *(a7 + 936);
LABEL_5:
    v61 = v9;
    while (1)
    {
      v13 = (v10 + 96 * v9);
      v14 = v13[1];
      v67[0] = *v13;
      v67[1] = v14;
      v15 = v13[2];
      v16 = v13[3];
      v17 = v13[4];
      *(v70 + 9) = *(v13 + 73);
      v69 = v16;
      v70[0] = v17;
      v68 = v15;
      v18 = *(v13 - 5);
      v71[0] = *(v13 - 6);
      v71[1] = v18;
      v19 = *(v13 - 4);
      v20 = *(v13 - 3);
      v21 = *(v13 - 2);
      *(v74 + 9) = *(v13 - 23);
      v73 = v20;
      v74[0] = v21;
      v72 = v19;
      v22 = v69;
      if (!*(v69 + 16))
      {
        break;
      }

      v23 = *(v69 + 40);
      sub_217F4B224();
      sub_217E98218(v67, &v62);
      sub_217E98218(v71, &v62);
      sub_217F4AB24();
      v24 = sub_217F4B254();
      v25 = -1 << *(v22 + 32);
      v26 = v24 & ~v25;
      if (((*(v22 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
      {
        goto LABEL_17;
      }

      v27 = ~v25;
      while (1)
      {
        v28 = (*(v22 + 48) + 16 * v26);
        v29 = *v28 == a5 && v28[1] == a6;
        if (v29 || (sub_217F4B144() & 1) != 0)
        {
          break;
        }

        v26 = (v26 + 1) & v27;
        if (((*(v22 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v31 = v12;
LABEL_29:
      v39 = v73;
      if (*(v73 + 16) && (v40 = *(v73 + 40), sub_217F4B224(), sub_217F4AB24(), v41 = sub_217F4B254(), v42 = -1 << *(v39 + 32), v43 = v41 & ~v42, ((*(v39 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) != 0))
      {
        v44 = ~v42;
        while (1)
        {
          v45 = (*(v39 + 48) + 16 * v43);
          v46 = *v45 == a5 && v45[1] == a6;
          if (v46 || (sub_217F4B144() & 1) != 0)
          {
            break;
          }

          v43 = (v43 + 1) & v44;
          if (((*(v39 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        v48 = v12;
      }

      else
      {
LABEL_38:
        v47 = *(&v72 + 1);
        v48 = 1.0;
        if (*(*(&v72 + 1) + 16))
        {
          v49 = *(*(&v72 + 1) + 40);
          sub_217F4B224();
          sub_217F4AB24();
          v50 = sub_217F4B254();
          v51 = -1 << *(v47 + 32);
          v52 = v50 & ~v51;
          if ((*(v47 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52))
          {
            v53 = ~v51;
            while (1)
            {
              v54 = (*(v47 + 48) + 16 * v52);
              v55 = *v54 == a5 && v54[1] == a6;
              if (v55 || (sub_217F4B144() & 1) != 0)
              {
                break;
              }

              v52 = (v52 + 1) & v53;
              if (((*(v47 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
              {
                goto LABEL_50;
              }
            }

            v48 = v11;
          }
        }
      }

LABEL_50:
      sub_217E98274(v71);
      result = sub_217E98274(v67);
      if (v48 * *(&v73 + 1) >= v31 * *(&v69 + 1))
      {
LABEL_4:
        v9 = v61 + 1;
        if (v61 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v10)
      {
        __break(1u);
        return result;
      }

      --v9;
      v56 = v13 - 6;
      v64 = v13[2];
      v65 = v13[3];
      v66[0] = v13[4];
      *(v66 + 9) = *(v13 + 73);
      v62 = *v13;
      v63 = v13[1];
      v57 = *(v13 - 3);
      v13[2] = *(v13 - 4);
      v13[3] = v57;
      v58 = *(v13 - 1);
      v13[4] = *(v13 - 2);
      v13[5] = v58;
      v59 = *(v13 - 5);
      *v13 = *(v13 - 6);
      v13[1] = v59;
      v56[1] = v63;
      *v56 = v62;
      *(v56 + 73) = *(v66 + 9);
      v56[4] = v66[0];
      v56[3] = v65;
      v56[2] = v64;
      if (v9 == v75)
      {
        goto LABEL_4;
      }
    }

    sub_217E98218(v67, &v62);
    sub_217E98218(v71, &v62);
LABEL_17:
    v30 = *(&v68 + 1);
    v31 = 1.0;
    if (*(*(&v68 + 1) + 16))
    {
      v32 = *(*(&v68 + 1) + 40);
      sub_217F4B224();
      sub_217F4AB24();
      v33 = sub_217F4B254();
      v34 = -1 << *(v30 + 32);
      v35 = v33 & ~v34;
      if ((*(v30 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
      {
        v36 = ~v34;
        while (1)
        {
          v37 = (*(v30 + 48) + 16 * v35);
          v38 = *v37 == a5 && v37[1] == a6;
          if (v38 || (sub_217F4B144() & 1) != 0)
          {
            break;
          }

          v35 = (v35 + 1) & v36;
          if (((*(v30 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        v31 = v11;
      }
    }

    goto LABEL_29;
  }

  return result;
}

uint64_t sub_217F1F780(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[1];

  sub_217EB4358(a4, v14);

  sub_217EB4358(a4, v14);
  result = sub_217F4B0F4();
  if (result >= v8)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      if (v8)
      {

        sub_217EB4358(a4, v14);
        sub_217F1F2EC(0, v8, 1, a1, a2, a3, a4);
        sub_217EB5CB8(a4);
        swift_bridgeObjectRelease_n();
LABEL_11:
        sub_217EB5CB8(a4);

        return sub_217EB5CB8(a4);
      }

LABEL_10:

      goto LABEL_11;
    }
  }

  else
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        v12 = sub_217F4AC54();
        *(v12 + 16) = v11;
      }

      v13[0] = (v12 + 32);
      v13[1] = v11;

      sub_217EB4358(a4, v14);
      sub_217F1E334(v13, v14, a1, v10, a2, a3, a4);
      sub_217EB5CB8(a4);

      *(v12 + 16) = 0;

      goto LABEL_10;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_217F1F93C(char **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;

  sub_217EB4358(a4, v12);

  sub_217EB4358(a4, v12);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_217F372C4(v8);
  }

  v9 = *(v8 + 2);
  v11[0] = (v8 + 32);
  v11[1] = v9;

  sub_217EB4358(a4, v12);
  sub_217F1F780(v11, a2, a3, a4);
  sub_217EB5CB8(a4);

  *a1 = v8;

  sub_217EB5CB8(a4);

  return sub_217EB5CB8(a4);
}

_OWORD *sub_217F1FA44(_OWORD *result, uint64_t a2, uint64_t a3, char a4)
{
  v142 = *MEMORY[0x277D85DE8];
  v5 = result[3];
  v139 = result[2];
  v140 = v5;
  *v141 = result[4];
  *&v141[9] = *(result + 73);
  v6 = result[1];
  v137 = *result;
  v138 = v6;
  v8 = *v4;
  v7 = *(v4 + 8);
  LODWORD(v9) = *(v4 + 24);
  if (v9 > 3)
  {
LABEL_11:
    if (v9 > 5)
    {
      goto LABEL_41;
    }

    if (v9 != 4)
    {
LABEL_52:
      v46 = 1 << *(*&v8 + 32);
      if (v46 < 64)
      {
        v47 = ~(-1 << v46);
      }

      else
      {
        v47 = -1;
      }

      v48 = v47 & *(*&v8 + 64);
      v49 = (v46 + 63) >> 6;
      v50 = v139 + 56;

      v51 = 0;
      while (1)
      {
        if (v48)
        {
          v52 = v48;
          goto LABEL_63;
        }

        do
        {
          v53 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
LABEL_181:
            __break(1u);
LABEL_182:
            __break(1u);
LABEL_183:
            __break(1u);
LABEL_184:
            __break(1u);
          }

          if (v53 >= v49)
          {

            goto LABEL_158;
          }

          v52 = *(*&v8 + 64 + 8 * v53);
          ++v51;
        }

        while (!v52);
        v51 = v53;
LABEL_63:
        v48 = (v52 - 1) & v52;
        if (*(v139 + 16))
        {
          v119 = (v52 - 1) & v52;
          v54 = __clz(__rbit64(v52)) | (v51 << 6);
          v55 = (*(*&v8 + 48) + 16 * v54);
          v57 = *v55;
          v56 = v55[1];
          v58 = *(*&v8 + 56) + (v54 << 6);
          v116 = *(v58 + 16);
          v117 = *(v58 + 40);
          v59 = *(v139 + 40);
          sub_217F4B224();

          sub_217F4AB24();
          v60 = sub_217F4B254();
          v61 = -1 << *(v139 + 32);
          v62 = v60 & ~v61;
          if ((*(v50 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62))
          {
            v63 = ~v61;
            while (1)
            {
              v64 = (*(v139 + 48) + 16 * v62);
              v65 = *v64 == v57 && v64[1] == v56;
              if (v65 || (sub_217F4B144() & 1) != 0)
              {
                break;
              }

              v62 = (v62 + 1) & v63;
              if (((*(v50 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) == 0)
              {
                goto LABEL_56;
              }
            }

            if (v117)
            {

              v66 = sub_217F3AFAC(a2, v57, v56);

              if (v66 >= v116)
              {
                sub_217F2BB74();
                swift_allocError();
                *v67 = v57;
                *(v67 + 8) = v56;
                *(v67 + 24) = 0;
                *(v67 + 32) = 0;
                *(v67 + 16) = v116;
                *(v67 + 40) = 5;
                swift_willThrow();

                goto LABEL_158;
              }
            }
          }

LABEL_56:

          v48 = v119;
        }
      }
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    v15 = *(v4 + 16);
    v16 = *(a2 + 16);
    if (v16 >= v7)
    {
      v17 = v16 - v7;
    }

    else
    {
      v17 = 0;
    }

    v18 = MEMORY[0x277D84FA0];
    v122 = MEMORY[0x277D84FA0];
    sub_217F2BB04(*&v8, v7, v15, 4);

    if (v17 != v16)
    {
      v20 = a2;
      *&v21 = v8;
      if (v7 >= v16)
      {
        v22 = v16;
      }

      else
      {
        v22 = v7;
      }

      v23 = (96 * v16 - 96 * v22 + v20 + 32);
      do
      {
        if (v17 >= v16)
        {
          goto LABEL_160;
        }

        v24 = v23[3];
        v134 = v23[2];
        v135 = v24;
        *v136 = v23[4];
        *&v136[9] = *(v23 + 73);
        v25 = *v23;
        v26 = v23[1];
        v23 += 6;
        v132 = v25;
        v133 = v26;
        ++v17;
        v27 = v134;
        sub_217F2BB04(v21, v7, v15, 4);
        sub_217E98218(&v132, &v123);
        v28 = sub_217F36A9C(v27, v15);
        sub_217F2EC1C(v28);
        sub_217E98274(&v132);
        --v22;
      }

      while (v22);
      v18 = v122;
      v8 = *&v21;
    }

    swift_unknownObjectRelease();
    v29 = sub_217F36A9C(v139, v15);

    v30 = *(sub_217ECE09C(v29, v18) + 16);

    v31 = v30;
    v32 = sub_217F36A9C(v29, v18);

    v33 = *(v32 + 16);

    v34 = v33;
    if (v30)
    {
      v35 = v33 / v31;
    }

    else
    {
      v35 = 0.0;
    }

    if (v35 <= v8)
    {
      goto LABEL_158;
    }

    if (v31 <= -9.22337204e18)
    {
      goto LABEL_176;
    }

    if (v31 >= 9.22337204e18)
    {
      goto LABEL_177;
    }

    if (v34 <= -9.22337204e18)
    {
      goto LABEL_178;
    }

    if (v34 >= 9.22337204e18)
    {
      goto LABEL_179;
    }

    v36 = v34;
    sub_217F2BB74();
    swift_allocError();
    *v37 = v7;
    *(v37 + 8) = v31;
    *(v37 + 16) = v36;
    *(v37 + 24) = v35;
    *(v37 + 32) = v8;
    v38 = 2;
    goto LABEL_92;
  }

  if (*(v4 + 24) <= 1u)
  {
    if (!*(v4 + 24))
    {
      if (a4 & 1) != 0 || (v141[0])
      {
        goto LABEL_158;
      }

      v9 = 0;
      v10 = (a2 + 96);
      v11 = *(a2 + 16) + 1;
      while (--v11)
      {
        v12 = *v10;
        v10 += 96;
        v13 = (v12 & 1) == 0;
        v14 = __OFADD__(v9, v13);
        v9 += v13;
        if (v14)
        {
          __break(1u);
          goto LABEL_11;
        }
      }

      if (v9 < *&v8)
      {
        goto LABEL_158;
      }

      sub_217F2BB74();
      swift_allocError();
      *v101 = v8;
      *(v101 + 8) = 0u;
      *(v101 + 24) = 0u;
      *(v101 + 40) = 0;
LABEL_93:
      result = swift_willThrow();
      goto LABEL_158;
    }

    if ((v141[1] & 1) == 0)
    {
      goto LABEL_158;
    }

    v42 = 0;
    v43 = (a2 + 97);
    v44 = *(a2 + 16) + 1;
    while (--v44)
    {
      v45 = *v43;
      v43 += 96;
      v14 = __OFADD__(v42, v45);
      v42 += v45;
      if (v14)
      {
        __break(1u);
        goto LABEL_52;
      }
    }

    if (v42 < *&v8)
    {
      goto LABEL_158;
    }

    sub_217F2BB74();
    swift_allocError();
    *v37 = v8;
    *(v37 + 8) = 0u;
    *(v37 + 24) = 0u;
    v38 = 3;
LABEL_92:
    *(v37 + 40) = v38;
    goto LABEL_93;
  }

  if (v9 != 2)
  {
    if (*(v7 + 16))
    {
      v69 = *(v4 + 8);
      v70 = sub_217E8E88C(v138, *(&v138 + 1));
      if (v71)
      {
        v8 = *(*(v7 + 56) + 8 * v70);
      }
    }

    result = sub_217F3AF2C(a2, &v137);
    if (result < *&v8)
    {
      goto LABEL_158;
    }

    sub_217F2BB74();
    swift_allocError();
    *v37 = v8;
    *(v37 + 8) = 0u;
    *(v37 + 24) = 0u;
    v38 = 1;
    goto LABEL_92;
  }

  if ((v141[3] & 1) == 0)
  {
    goto LABEL_158;
  }

  v9 = 0;
  v39 = (a2 + 99);
  v40 = *(a2 + 16) + 1;
  do
  {
    if (!--v40)
    {
      if (v9 < *&v8)
      {
        goto LABEL_158;
      }

      sub_217F2BB74();
      swift_allocError();
      *v37 = v8;
      *(v37 + 8) = 0u;
      *(v37 + 24) = 0u;
      v38 = 4;
      goto LABEL_92;
    }

    v41 = *v39;
    v39 += 96;
    v14 = __OFADD__(v9, v41);
    v9 += v41;
  }

  while (!v14);
  __break(1u);
LABEL_41:
  if (v9 == 6)
  {
    if ((v141[2] & 1) != 0 && (v141[0] & 1) == 0 && *&v8 <= a3)
    {
      sub_217F2BB74();
      swift_allocError();
      *v37 = v8;
      *(v37 + 8) = 0u;
      *(v37 + 24) = 0u;
      v38 = 6;
      goto LABEL_92;
    }

LABEL_158:
    v104 = *MEMORY[0x277D85DE8];
    return result;
  }

  v72 = *&v141[16];
  if (*&v141[16] >> 60 == 15)
  {
    goto LABEL_158;
  }

  v73 = *&v141[8];
  v75 = *(a2 + 16);
  sub_217EA34BC(*&v141[8], *&v141[16]);
  if (!v75)
  {
LABEL_155:
    v102 = v73;
LABEL_157:
    result = sub_217EB9ED4(v102, v72);
    goto LABEL_158;
  }

  v76 = 0;
  v77 = *&v141[16] >> 62;
  v78 = a2 + 32;
  v110 = HIDWORD(*&v141[8]);
  v108 = *&v141[12] - *&v141[8];
  v79 = __OFSUB__(*&v141[12], *&v141[8]);
  v107 = v79;
  v111 = *&v141[8] >> 32;
  v112 = *&v141[8];
  v121 = v8;
  v115 = *&v141[8];
  v105 = a2 + 32;
  v106 = v75;
  v118 = *&v141[16] >> 62;
  while (2)
  {
    v80 = (v78 + 96 * v76);
    *&v136[9] = *(v80 + 73);
    v81 = v80[4];
    v135 = v80[3];
    *v136 = v81;
    v82 = v80[1];
    v134 = v80[2];
    v132 = *v80;
    v133 = v82;
    v83 = *&v136[16];
    if (*&v136[16] >> 60 == 15)
    {
LABEL_95:
      if (++v76 == v75)
      {
        goto LABEL_155;
      }

      continue;
    }

    break;
  }

  v84 = *&v136[8];
  v85 = *&v136[16] >> 62;
  v113 = HIDWORD(*&v136[8]);
  if ((*&v136[16] >> 62) > 1)
  {
    if (v85 == 2)
    {
      v88 = *(*&v136[8] + 16);
      v87 = *(*&v136[8] + 24);
      v14 = __OFSUB__(v87, v88);
      v86 = v87 - v88;
      if (v14)
      {
        goto LABEL_182;
      }
    }

    else
    {
      v86 = 0;
    }
  }

  else if (v85)
  {
    LODWORD(v86) = *&v136[12] - *&v136[8];
    if (__OFSUB__(*&v136[12], *&v136[8]))
    {
      goto LABEL_181;
    }

    v86 = v86;
  }

  else
  {
    v86 = v136[22];
  }

  v120 = v86;
  if (v77 > 1)
  {
    if (v77 == 2)
    {
      v91 = *(v73 + 16);
      v90 = *(v73 + 24);
      v14 = __OFSUB__(v90, v91);
      v89 = v90 - v91;
      if (v14)
      {
        goto LABEL_183;
      }

      goto LABEL_113;
    }

    if (!v86)
    {
      goto LABEL_115;
    }

    goto LABEL_95;
  }

  v89 = BYTE6(v72);
  if (v77)
  {
    v89 = v108;
    if (v107)
    {
      goto LABEL_184;
    }
  }

LABEL_113:
  if (v120 != v89)
  {
    goto LABEL_95;
  }

  if (v120 < 0)
  {
    goto LABEL_180;
  }

LABEL_115:
  v109 = v76;
  result = sub_217E98218(&v132, &v123);
  v93 = 0;
  v94 = 0;
  while (2)
  {
    if (v120 == v93)
    {
      sub_217E98274(&v132);
      sub_217F2BB74();
      swift_allocError();
      *v103 = 0u;
      *(v103 + 16) = 0u;
      *(v103 + 32) = 0;
      *(v103 + 40) = 7;
      swift_willThrow();
      v102 = v115;
      goto LABEL_157;
    }

    if (__OFADD__(v93, 1))
    {
      goto LABEL_161;
    }

    if (v85 <= 1)
    {
      if (!v85)
      {
        if (v93 >= BYTE6(v83))
        {
          goto LABEL_164;
        }

        LOWORD(v123) = v84;
        BYTE2(v123) = BYTE2(v84);
        HIBYTE(v123) = BYTE3(v84);
        v124 = v113;
        LOBYTE(v125) = BYTE5(v84);
        HIBYTE(v125) = BYTE6(v84);
        v126 = HIBYTE(v84);
        v127 = v83;
        v128 = BYTE2(v83);
        v129 = BYTE3(v83);
        v130 = BYTE4(v83);
        v131 = BYTE5(v83);
        v95 = *(&v123 + v93);
LABEL_134:
        if (v118 > 1)
        {
          if (v118 != 2)
          {
            goto LABEL_186;
          }

          if (v93 < *(v115 + 16))
          {
            goto LABEL_170;
          }

          if (v93 >= *(v115 + 24))
          {
            goto LABEL_172;
          }

          result = sub_217F4A994();
          if (!result)
          {
            goto LABEL_190;
          }

          v99 = result;
          result = sub_217F4A9A4();
          v100 = v93 - result;
          if (__OFSUB__(v93, result))
          {
            goto LABEL_174;
          }
        }

        else
        {
          if (!v118)
          {
            if (v93 >= BYTE6(v72))
            {
              goto LABEL_168;
            }

            v123 = v115;
            v124 = v110;
            v125 = *(&v115 + 5);
            v126 = HIBYTE(v115);
            v127 = v72;
            v128 = BYTE2(v72);
            v129 = BYTE3(v72);
            v130 = BYTE4(v72);
            v131 = BYTE5(v72);
            v98 = *(&v123 + v93);
LABEL_150:
            v92.i32[0] = v98 ^ v95;
            v92 = vcnt_s8(v92);
            v92.i16[0] = vaddlv_u8(v92);
            v14 = __OFADD__(v94, v92.u32[0]);
            v94 += v92.u32[0];
            if (v14)
            {
              goto LABEL_162;
            }

            ++v93;
            LODWORD(v85) = v83 >> 62;
            if (v94 >= *&v121)
            {
              sub_217E98274(&v132);
              v73 = v115;
              v78 = v105;
              v75 = v106;
              v76 = v109;
              LODWORD(v77) = v118;
              goto LABEL_95;
            }

            continue;
          }

          if (v93 < v112 || v93 >= v111)
          {
            goto LABEL_171;
          }

          result = sub_217F4A994();
          if (!result)
          {
            goto LABEL_189;
          }

          v99 = result;
          result = sub_217F4A9A4();
          v100 = v93 - result;
          if (__OFSUB__(v93, result))
          {
            goto LABEL_173;
          }
        }

        v98 = *(v99 + v100);
        goto LABEL_150;
      }

      if (v93 < v84 || v93 >= v84 >> 32)
      {
        goto LABEL_165;
      }

      result = sub_217F4A994();
      if (!result)
      {
        goto LABEL_187;
      }

      v96 = result;
      result = sub_217F4A9A4();
      v97 = v93 - result;
      if (__OFSUB__(v93, result))
      {
        goto LABEL_167;
      }

LABEL_133:
      v95 = *(v96 + v97);
      goto LABEL_134;
    }

    break;
  }

  if (v85 == 2)
  {
    if (v93 < *(v84 + 16))
    {
      goto LABEL_163;
    }

    if (v93 >= *(v84 + 24))
    {
      goto LABEL_166;
    }

    result = sub_217F4A994();
    if (!result)
    {
      goto LABEL_188;
    }

    v96 = result;
    result = sub_217F4A9A4();
    v97 = v93 - result;
    if (__OFSUB__(v93, result))
    {
      goto LABEL_169;
    }

    goto LABEL_133;
  }

  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
  return result;
}

uint64_t sub_217F2064C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = a2;
  v4 = 0;
  v5 = a1 + 32;
  v23 = *(a1 + 16);
  do
  {
    v6 = (v5 + 96 * v4);
    if (*(v6 + 64) == 1)
    {
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[3];
      v10 = v6[4];
      v11 = v6[6];
      v25 = v6[5];
      v26 = v4;
      v12 = v6[9];
      v27 = v6[10];
      swift_beginAccess();
      v13 = *(v3 + 16);
      if (!*(v13 + 16))
      {
        return v26;
      }

      v14 = *(v13 + 40);
      sub_217F4B224();

      sub_217EA34A8(v12, v27);

      sub_217F4AB24();
      v15 = sub_217F4B254();
      v16 = -1 << *(v13 + 32);
      v17 = v15 & ~v16;
      if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
LABEL_15:

        swift_bridgeObjectRelease_n();

        sub_217EB9ED4(v12, v27);
        return v26;
      }

      v18 = ~v16;
      while (1)
      {
        v19 = (*(v13 + 48) + 16 * v17);
        v20 = *v19 == v7 && v19[1] == v8;
        if (v20 || (sub_217F4B144() & 1) != 0)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      swift_bridgeObjectRelease_n();

      sub_217EB9ED4(v12, v27);
      v2 = v23;
      v3 = a2;
      v5 = v22;
      v4 = v26;
    }

    ++v4;
  }

  while (v4 != v2);
  return 0;
}

uint64_t sub_217F208C4(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v21 = result;
  v4 = result;
  v5 = a3 >> 1;
  v22 = a3 >> 1;
  while (1)
  {
    if (a2 == v5)
    {
      return 0;
    }

    if (a2 >= v5)
    {
      break;
    }

    v7 = v4 + 96 * a2;
    if (*(v7 + 64) == 1)
    {
      v8 = *v7;
      v9 = *(v7 + 8);
      v11 = *(v7 + 24);
      v10 = *(v7 + 32);
      v12 = *(v7 + 48);
      v24 = *(v7 + 40);
      v25 = a2;
      v26 = *(v7 + 72);
      v27 = *(v7 + 80);
      swift_beginAccess();
      v13 = *(a4 + 16);
      if (!*(v13 + 16))
      {
        return v25;
      }

      v14 = *(v13 + 40);
      sub_217F4B224();

      sub_217EA34A8(v26, v27);

      sub_217F4AB24();
      v15 = sub_217F4B254();
      v16 = -1 << *(v13 + 32);
      v17 = v15 & ~v16;
      if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
LABEL_17:

        swift_bridgeObjectRelease_n();

        sub_217EB9ED4(v26, v27);
        return v25;
      }

      v18 = ~v16;
      while (1)
      {
        v19 = (*(v13 + 48) + 16 * v17);
        v20 = *v19 == v8 && v19[1] == v9;
        if (v20 || (sub_217F4B144() & 1) != 0)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      swift_bridgeObjectRelease_n();

      result = sub_217EB9ED4(v26, v27);
      v4 = v21;
      v5 = v22;
      a2 = v25;
    }

    if (__OFADD__(a2++, 1))
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_217F20B38(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v5 = a3 >> 1;
  v38 = a4;
  result = swift_beginAccess();
  v7 = MEMORY[0x277D84F90];
  if (v5 != a2)
  {
    v8 = a2;
    v29 = a2;
    do
    {
      v9 = v8;
      while (1)
      {
        if (v9 < a2 || v8 >= v5)
        {
          __break(1u);
          return result;
        }

        v10 = (a1 + 96 * v8);
        *(v36 + 9) = *(v10 + 73);
        v11 = v10[4];
        v35 = v10[3];
        v36[0] = v11;
        v12 = v10[2];
        v33 = v10[1];
        v34 = v12;
        v32 = *v10;
        ++v8;
        v13 = *v38;
        if (!*(*v38 + 16))
        {
          break;
        }

        v14 = v32;
        v15 = *(v13 + 40);
        sub_217F4B224();
        sub_217E98218(&v32, v31);

        sub_217F4AB24();
        v16 = sub_217F4B254();
        v17 = -1 << *(v13 + 32);
        v18 = v16 & ~v17;
        if (((*(v13 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
LABEL_16:

          goto LABEL_17;
        }

        v19 = ~v17;
        while (1)
        {
          v20 = (*(v13 + 48) + 16 * v18);
          v21 = *v20 == v14 && v20[1] == *(&v14 + 1);
          if (v21 || (sub_217F4B144() & 1) != 0)
          {
            break;
          }

          v18 = (v18 + 1) & v19;
          if (((*(v13 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        result = sub_217E98274(&v32);
        a2 = v29;
        if (v8 == v5)
        {
          return v7;
        }
      }

      sub_217E98218(&v32, v31);
LABEL_17:
      result = swift_isUniquelyReferenced_nonNull_native();
      v37 = v7;
      if ((result & 1) == 0)
      {
        result = sub_217EA0CE0(0, *(v7 + 16) + 1, 1);
        v7 = v37;
      }

      a2 = v29;
      v23 = *(v7 + 16);
      v22 = *(v7 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_217EA0CE0((v22 > 1), v23 + 1, 1);
        v7 = v37;
      }

      *(v7 + 16) = v23 + 1;
      v24 = (v7 + 96 * v23);
      v25 = v33;
      v24[2] = v32;
      v24[3] = v25;
      v26 = v34;
      v27 = v35;
      v28 = v36[0];
      *(v24 + 105) = *(v36 + 9);
      v24[5] = v27;
      v24[6] = v28;
      v24[4] = v26;
    }

    while (v8 != v5);
  }

  return v7;
}

uint64_t sub_217F20DB0(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = a3;
  v5 = a2;
  v6 = 0;
  v7 = a1 + 32;
  v25 = *(a1 + 16);
  do
  {
    v8 = (v7 + 96 * v6);
    if (*(v8 + 66) == 1 && ((*(v8 + 64) ^ v5) & 1) == 0)
    {
      v9 = *v8;
      v10 = v8[1];
      v12 = v8[3];
      v11 = v8[4];
      v13 = v8[5];
      v28 = v8[6];
      v29 = v6;
      v14 = v8[9];
      v30 = v8[10];
      swift_beginAccess();
      v15 = *(v4 + 16);
      if (!*(v15 + 16))
      {
        return v29;
      }

      v16 = *(v15 + 40);
      sub_217F4B224();

      sub_217EA34A8(v14, v30);

      sub_217F4AB24();
      v17 = sub_217F4B254();
      v18 = -1 << *(v15 + 32);
      v19 = v17 & ~v18;
      if (((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
LABEL_16:

        swift_bridgeObjectRelease_n();

        sub_217EB9ED4(v14, v30);
        return v29;
      }

      v20 = ~v18;
      while (1)
      {
        v21 = (*(v15 + 48) + 16 * v19);
        v22 = *v21 == v9 && v21[1] == v10;
        if (v22 || (sub_217F4B144() & 1) != 0)
        {
          break;
        }

        v19 = (v19 + 1) & v20;
        if (((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      swift_bridgeObjectRelease_n();

      sub_217EB9ED4(v14, v30);
      v4 = a3;
      v5 = a2;
      v7 = v24;
      v3 = v25;
      v6 = v29;
    }

    ++v6;
  }

  while (v6 != v3);
  return 0;
}

uint64_t sub_217F21044(uint64_t result, uint64_t a2, unint64_t a3, int a4, uint64_t a5)
{
  v23 = result;
  v5 = a4;
  v6 = result;
  v7 = a3 >> 1;
  v25 = a3 >> 1;
  while (1)
  {
    if (a2 == v7)
    {
      return 0;
    }

    if (a2 >= v7)
    {
      break;
    }

    v9 = v6 + 96 * a2;
    if (*(v9 + 66) == 1 && ((*(v9 + 64) ^ v5) & 1) == 0)
    {
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 24);
      v13 = *(v9 + 32);
      v14 = *(v9 + 40);
      v27 = a2;
      v28 = *(v9 + 48);
      v29 = *(v9 + 72);
      v30 = *(v9 + 80);
      swift_beginAccess();
      v15 = *(a5 + 16);
      if (!*(v15 + 16))
      {
        return v27;
      }

      v16 = *(v15 + 40);
      sub_217F4B224();

      sub_217EA34A8(v29, v30);

      sub_217F4AB24();
      v17 = sub_217F4B254();
      v18 = -1 << *(v15 + 32);
      v19 = v17 & ~v18;
      if (((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
LABEL_18:

        swift_bridgeObjectRelease_n();

        sub_217EB9ED4(v29, v30);
        return v27;
      }

      v20 = ~v18;
      while (1)
      {
        v21 = (*(v15 + 48) + 16 * v19);
        v22 = *v21 == v10 && v21[1] == v11;
        if (v22 || (sub_217F4B144() & 1) != 0)
        {
          break;
        }

        v19 = (v19 + 1) & v20;
        if (((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      swift_bridgeObjectRelease_n();

      result = sub_217EB9ED4(v29, v30);
      v7 = v25;
      v5 = a4;
      v6 = v23;
      a2 = v27;
    }

    if (__OFADD__(a2++, 1))
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_217F212D0(uint64_t a1, uint64_t (*a2)(__int128 *), uint64_t a3, uint64_t (*a4)(__int128 *))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = (a1 + 32);
  do
  {
    v9 = v8[3];
    v10 = v8[1];
    v23 = v8[2];
    v24 = v9;
    v11 = v8[3];
    v25[0] = v8[4];
    *(v25 + 9) = *(v8 + 73);
    v12 = v8[1];
    v21 = *v8;
    v22 = v12;
    v18 = v23;
    v19 = v11;
    v20[0] = v8[4];
    *(v20 + 9) = *(v8 + 73);
    v16 = v21;
    v17 = v10;
    sub_217E98218(&v21, &v15);
    if (a2(&v16))
    {
      v18 = v23;
      v19 = v24;
      v20[0] = v25[0];
      *(v20 + 9) = *(v25 + 9);
      v16 = v21;
      v17 = v22;
      v13 = a4(&v16);
      sub_217E98274(&v21);
      if (v13)
      {
        return v7;
      }
    }

    else
    {
      sub_217E98274(&v21);
    }

    ++v7;
    v8 += 6;
  }

  while (v4 != v7);
  return 0;
}

uint64_t sub_217F2141C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t (*a4)(__int128 *), uint64_t a5, uint64_t (*a6)(__int128 *), uint64_t a7)
{
  v29 = a7;
  v7 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return 0;
  }

  else
  {
    v8 = a2;
    if (a2 <= v7)
    {
      v11 = a3 >> 1;
    }

    else
    {
      v11 = a2;
    }

    v12 = (result + 96 * a2);
    while (v11 != v8)
    {
      v13 = v12[3];
      v14 = v12[1];
      v26 = v12[2];
      v27 = v13;
      v15 = v12[3];
      v28[0] = v12[4];
      *(v28 + 9) = *(v12 + 73);
      v16 = v12[1];
      v24 = *v12;
      v25 = v16;
      v21 = v26;
      v22 = v15;
      v23[0] = v12[4];
      *(v23 + 9) = *(v12 + 73);
      v19 = v24;
      v20 = v14;
      sub_217E98218(&v24, v18);
      if (a4(&v19))
      {
        v21 = v26;
        v22 = v27;
        v23[0] = v28[0];
        *(v23 + 9) = *(v28 + 9);
        v19 = v24;
        v20 = v25;
        v17 = a6(&v19);
        result = sub_217E98274(&v24);
        if (v17)
        {
          return v8;
        }
      }

      else
      {
        result = sub_217E98274(&v24);
      }

      ++v8;
      v12 += 6;
      if (v7 == v8)
      {
        return 0;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_217F21584(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  swift_beginAccess();
  v95 = a1;
  v22 = *(a1 + 16);
  v23 = *a2;
  v24 = a2[1];

  v25 = sub_217EA3608(v23, v24, v22);

  if (v25)
  {
    if (qword_280C27680 == -1)
    {
LABEL_3:
      MEMORY[0x28223BE20](v26, v27);
      v28(sub_217F2C088);
      v29 = 1;
      return v29 & 1;
    }

LABEL_61:
    v26 = swift_once();
    goto LABEL_3;
  }

  v91 = a2;
  v30 = swift_beginAccess();
  v32 = *(*(a3 + 16) + 16);
  v90 = a5;
  if (v32 < a4)
  {
    v25 = a15;
    v33 = a11;
    v24 = a12;
    v34 = a10;
    v35 = v91[3];
    v112 = v91[2];
    v113 = v35;
    v114[0] = v91[4];
    *(v114 + 9) = *(v91 + 73);
    v36 = v91[1];
    v110 = *v91;
    v111 = v36;
    if (v32 >= *(a15 + 16) || (v37 = *(a15 + v32 + 32)) == 0)
    {
      sub_217E98218(v91, &v99);
      v41 = sub_217F143A0(a10, v91, a3, a5, a11, a12, &v110, a8, a6, a7);
      goto LABEL_55;
    }

    v87 = a8;
    if (v37 == 1)
    {
      swift_beginAccess();
      if ((*(a13 + 16) & 1) == 0)
      {
        swift_beginAccess();
        v38 = *(a12 + 16);
        v39 = __OFADD__(v38, a11);
        v40 = v38 + a11;
        if (!v39)
        {
          if (v40 < a16)
          {
            sub_217E98218(v91, &v99);
            v41 = sub_217F09038(a9 & 1, v95, a10, a3, a11, a12, a7, a8, a5, a6, a13, v91, a4, a14, a15, a16);
LABEL_55:
            v29 = v41;
            v101 = v112;
            v102 = v113;
            v103[0] = v114[0];
            *(v103 + 9) = *(v114 + 9);
            v99 = v110;
            v100 = v111;
            sub_217E98274(&v99);
            return v29 & 1;
          }

          v25 = v91;
          v84 = sub_217E98218(v91, &v99);
          if (qword_280C27680 == -1)
          {
LABEL_59:
            MEMORY[0x28223BE20](v84, v85);
            v86(sub_217F2C084);
            v41 = sub_217F143A0(v34, v25, a3, v90, v33, v24, &v110, v87, a6, a7);
            goto LABEL_55;
          }

LABEL_65:
          v84 = swift_once();
          goto LABEL_59;
        }

LABEL_64:
        __break(1u);
        goto LABEL_65;
      }
    }

    else
    {
      swift_beginAccess();
      if ((*(a14 + 16) & 1) == 0)
      {
        sub_217E98218(v91, &v99);
        v41 = sub_217F0C1FC(v95, a10, a3, a11, a12, a5, a6, a8, a7, a14, v91, a4, a9 & 1, a13, a15, a16);
        goto LABEL_55;
      }
    }

    sub_217E98218(v91, &v99);
    v41 = sub_217F143A0(a10, v91, a3, a5, a11, a12, &v110, a8, a6, a7);
    goto LABEL_55;
  }

  if (qword_280C27680 != -1)
  {
    v30 = swift_once();
  }

  MEMORY[0x28223BE20](v30, v31);
  v34 = a5;
  v33 = a6;
  v89 = v42;
  v42(sub_217F2BFD4);
  v43 = *(a5 + 16);
  a3 = a7;
  if (v43 < a6)
  {
    __break(1u);
    goto LABEL_63;
  }

  if ((a6 & 0x8000000000000000) != 0)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v94 = v90 + 32;
  swift_bridgeObjectRetain_n();
  if (v43 != a6)
  {
    v88 = a8;

    swift_beginAccess();
    if (v43 <= a6)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v44 = a6;
    while (1)
    {
      v45 = v94 + 96 * v44;
      v46 = *(v45 + 48);
      v47 = *(v45 + 16);
      v112 = *(v45 + 32);
      v113 = v46;
      v48 = *(v45 + 48);
      v114[0] = *(v45 + 64);
      *(v114 + 9) = *(v45 + 73);
      v49 = *(v45 + 16);
      v110 = *v45;
      v111 = v49;
      v106 = v112;
      v107 = v48;
      v108 = *(v45 + 64);
      v109 = *(v45 + 80);
      v104 = v110;
      v105 = v47;
      v50 = *(v95 + 16);
      if (!*(v50 + 16))
      {
        break;
      }

      v51 = BYTE8(v114[1]);
      v52 = v110;
      v53 = *(v50 + 40);
      sub_217F4B224();
      sub_217E98218(&v110, &v99);

      sub_217F4AB24();
      v54 = sub_217F4B254();
      v55 = -1 << *(v50 + 32);
      v56 = v54 & ~v55;
      if (((*(v50 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
      {
LABEL_28:

        a3 = a7;
        v33 = a6;
LABEL_30:
        v101 = v106;
        v102 = v107;
        v103[0] = v108;
        *&v103[1] = v109;
        v99 = v104;
        v100 = v105;
        BYTE8(v103[1]) = 2;
        swift_beginAccess();
        v60 = *(a3 + 16);
        sub_217E98218(&v99, v96);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a3 + 16) = v60;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v60 = sub_217E8D720(0, *(v60 + 2) + 1, 1, v60);
          *(a3 + 16) = v60;
        }

        v63 = *(v60 + 2);
        v62 = *(v60 + 3);
        if (v63 >= v62 >> 1)
        {
          v60 = sub_217E8D720((v62 > 1), v63 + 1, 1, v60);
        }

        *(v60 + 2) = v63 + 1;
        v64 = &v60[96 * v63];
        v65 = v100;
        *(v64 + 2) = v99;
        *(v64 + 3) = v65;
        v66 = v101;
        v67 = v102;
        v68 = v103[0];
        *(v64 + 105) = *(v103 + 9);
        *(v64 + 5) = v67;
        *(v64 + 6) = v68;
        *(v64 + 4) = v66;
        *(a3 + 16) = v60;
        swift_endAccess();
        v96[2] = v106;
        v96[3] = v107;
        v96[4] = v108;
        v97 = v109;
        v96[0] = v104;
        v96[1] = v105;
        v98 = 2;
        sub_217E98274(v96);
        goto LABEL_36;
      }

      v57 = ~v55;
      while (1)
      {
        v58 = (*(v50 + 48) + 16 * v56);
        v59 = *v58 == v52 && v58[1] == *(&v52 + 1);
        if (v59 || (sub_217F4B144() & 1) != 0)
        {
          break;
        }

        v56 = (v56 + 1) & v57;
        if (((*(v50 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      MEMORY[0x28223BE20](v69, v70);
      v89(sub_217F2C080);
      v101 = v106;
      v102 = v107;
      v103[0] = v108;
      *&v103[1] = v109;
      v99 = v104;
      v100 = v105;
      BYTE8(v103[1]) = v51;
      sub_217E98274(&v99);
      a3 = a7;
      v33 = a6;
LABEL_36:
      if (++v44 == v43)
      {

        a8 = v88;
        goto LABEL_42;
      }

      if (v44 < v33 || v44 >= v43)
      {
        goto LABEL_60;
      }
    }

    sub_217E98218(&v110, &v99);
    goto LABEL_30;
  }

LABEL_42:
  if (a8)
  {
    swift_beginAccess();
    v71 = *(a3 + 16);

    v72 = sub_217F20B38(v94, v33, (2 * v43) | 1, (v95 + 16));

    *&v110 = v71;
    sub_217E80538(v72);
    v73 = v110;
    v74 = *(v110 + 16);
    if (v74)
    {
      *&v110 = MEMORY[0x277D84F90];
      sub_217EA0CC0(0, v74, 0);
      v75 = v110;
      v76 = (v73 + 88);
      do
      {
        v78 = *(v76 - 7);
        v77 = *(v76 - 6);
        v79 = *v76;
        *&v110 = v75;
        v81 = *(v75 + 16);
        v80 = *(v75 + 24);

        if (v81 >= v80 >> 1)
        {
          sub_217EA0CC0((v80 > 1), v81 + 1, 1);
          v75 = v110;
        }

        *(v75 + 16) = v81 + 1;
        v82 = (v75 + 24 * v81);
        v82[4] = v78;
        v82[5] = v77;
        v82[6] = v79;
        v76 += 12;
        --v74;
      }

      while (v74);
    }

    else
    {

      v75 = MEMORY[0x277D84F90];
    }

    *&v99 = v75;
    LOBYTE(v103[0]) = -127;
    ClusteringJournal.record(event:)(&v99);
    v112 = v101;
    v113 = v102;
    LOBYTE(v114[0]) = v103[0];
    v110 = v99;
    v111 = v100;
    sub_217F23F40(&v110);
    v29 = 0;
  }

  else
  {
    swift_bridgeObjectRelease_n();
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t sub_217F21FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10)
{
  v11 = MEMORY[0x28223BE20](a1, a2);
  v154 = v13;
  v155 = v14;
  v156 = v15;
  v159 = v16;
  v18 = v17;
  v20 = v19;
  v170 = v11;
  v21 = v12 + 64;
  v22 = 1 << *(v12 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v172 = v23 & *(v12 + 64);
  v151 = OBJC_IVAR____TtC10XavierNews17ClusteringJournal_mode;
  v158 = v12;

  swift_beginAccess();
  v24 = (v22 + 63) >> 6;
  v150 = (v18 + 296);
  v149 = (v18 + 1736);
  v202 = a9 & 1;
  v25 = 1.0;
  v160 = v18;
  v157 = v20;
  v153 = v21;
  v152 = v24;
  v26 = 0;
  v27 = v172;
  while (v27)
  {
    v28 = v26;
LABEL_11:
    v29 = __clz(__rbit64(v27)) | (v28 << 6);
    v30 = *(v158 + 56);
    v31 = (*(v158 + 48) + 32 * v29);
    v32 = *v31;
    *&v189[13] = *(v31 + 13);
    *v189 = v32;
    v33 = *(v30 + 8 * v29);
    v203 = v189[28];
    *v187 = v32;
    v187[16] = v189[28] ^ 1;
    sub_217E98168(v189, __dst);
    sub_217E98168(v189, __dst);

    ClusteringJournal.startedClustering(group:)(v187);
    sub_217EB3F30(*v187, *&v187[8], v187[16]);
    v34 = *v156;
    v173 = v27;
    v175 = *(*a10 + 16);
    v35 = *(v18 + 896);
    v36 = *v189;
    v171 = *&v189[8];
    if (*(v35 + 16))
    {
      sub_217E98168(v189, __dst);
      v37 = sub_217E8E88C(v36, *(&v36 + 1));
      if (v38)
      {
        v39 = (*(v35 + 56) + 440 * v37);
        memcpy(v187, v39, sizeof(v187));
        memmove(__dst, v39, 0x1B2uLL);
        nullsub_152(__dst);
        v40 = swift_allocObject();
        v41 = *&v187[312];
        v40[1] = *&v187[296];
        v40[2] = v41;
        v42 = *&v187[344];
        v40[3] = *&v187[328];
        v40[4] = v42;
        sub_217F2B89C(v187, __src, &qword_27CBF5FC0, &qword_217F5A050);
        sub_217F2B89C(&v187[296], __src, &qword_27CBF7318, &unk_217F5A058);
        memcpy(v188, __dst, 0x1B2uLL);
        v43 = sub_217F2BFA8;
        goto LABEL_20;
      }
    }

    else
    {
      sub_217E98168(v189, __dst);
    }

    sub_217F2B688(__dst);
    if (v203)
    {
      if (v189[25])
      {
        v44 = v149[1];
        v199[0] = *v149;
        v199[1] = v44;
        v45 = v149[3];
        v199[2] = v149[2];
        v199[3] = v45;
        v46 = swift_allocObject();
        v47 = v149[1];
        v46[1] = *v149;
        v46[2] = v47;
        v48 = v149[3];
        v46[3] = v149[2];
        v46[4] = v48;
        sub_217F2B89C(v199, v187, &qword_27CBF5C58, &unk_217F5A040);
        memcpy(v188, __dst, 0x1B2uLL);
        v43 = sub_217F2BFA4;
      }

      else
      {
        v54 = v150[1];
        v200[0] = *v150;
        v200[1] = v54;
        v55 = v150[3];
        v200[2] = v150[2];
        v200[3] = v55;
        v56 = swift_allocObject();
        v57 = v150[1];
        v56[1] = *v150;
        v56[2] = v57;
        v58 = v150[3];
        v56[3] = v150[2];
        v56[4] = v58;
        sub_217F2B89C(v200, v187, &qword_27CBF5C80, &unk_217F5A020);
        memcpy(v188, __dst, 0x1B2uLL);
        v43 = sub_217F2BFA0;
      }
    }

    else
    {
      v49 = *(v18 + 752);
      v198[0] = *(v18 + 736);
      v198[1] = v49;
      v50 = *(v18 + 784);
      v198[2] = *(v18 + 768);
      v198[3] = v50;
      v51 = swift_allocObject();
      v52 = *(v18 + 752);
      v51[1] = *(v18 + 736);
      v51[2] = v52;
      v53 = *(v18 + 784);
      v51[3] = *(v18 + 768);
      v51[4] = v53;
      sub_217F2B89C(v198, v187, &qword_27CBF5C78, &qword_217F52098);
      memcpy(v188, __dst, 0x1B2uLL);
      v43 = sub_217F2B81C;
    }

LABEL_20:
    v59 = v43;
    memcpy(v201, v188, 0x1B2uLL);
    (v59)(__dst, v175);

    v183 = __dst[0];
    v184 = __dst[1];
    v185 = __dst[2];
    v186 = __dst[3];
    memcpy(v187, v188, sizeof(v187));
    v169 = v33;
    v168 = v34;
    if (sub_217F2B6CC(v187) == 1)
    {
      if (v203)
      {
        if (v189[25] == 1)
        {
          memcpy(v196, (v18 + 1440), 0x1B2uLL);
          v60 = swift_allocObject();
          memcpy((v60 + 16), (v18 + 1440), 0x1B2uLL);
          sub_217F2B89C(v196, __dst, &qword_27CBF5F98, &qword_217F52250);
          v61 = sub_217F2B6E4;
          v62 = sub_217F2B7C4;
        }

        else
        {
          memcpy(v197, v18, 0x1B2uLL);
          v60 = swift_allocObject();
          memcpy((v60 + 16), v18, 0x1B2uLL);
          sub_217F2B89C(v197, __dst, &qword_27CBF5F80, &qword_217F52238);
          v61 = sub_217F2B6E4;
          v62 = sub_217F2C0F4;
        }
      }

      else
      {
        memcpy(v195, (v18 + 440), 0x1B2uLL);
        v60 = swift_allocObject();
        memcpy((v60 + 16), (v18 + 440), 0x1B2uLL);
        sub_217F2B89C(v195, __dst, &qword_27CBF5F88, &qword_217F52240);
        v61 = sub_217F2B6E4;
        v62 = sub_217F2C0F8;
      }

      v63 = v62;
    }

    else
    {
      v60 = swift_allocObject();
      memcpy((v60 + 16), v187, 0x1B2uLL);
      v61 = sub_217F2C1C0;
      v63 = sub_217F2C0FC;
    }

    v64 = swift_allocObject();
    *(v64 + 16) = v63;
    *(v64 + 24) = v60;
    sub_217F2B89C(v188, __dst, &qword_27CBF7308, &qword_217F5A030);
    v167 = v61(v175);

    memcpy(__src, v188, 0x1B2uLL);
    if (sub_217F2B6CC(__src) == 1)
    {
      if (v203)
      {
        if (v189[25] == 1)
        {
          memcpy(v193, (v18 + 1440), 0x1B2uLL);
          v65 = swift_allocObject();
          memcpy((v65 + 16), (v18 + 1440), 0x1B2uLL);
          sub_217F2B89C(v193, __dst, &qword_27CBF5F98, &qword_217F52250);
          v66 = sub_217F2C1B0;
          v67 = sub_217F2B76C;
        }

        else
        {
          memcpy(v194, v18, 0x1B2uLL);
          v65 = swift_allocObject();
          memcpy((v65 + 16), v18, 0x1B2uLL);
          sub_217F2B89C(v194, __dst, &qword_27CBF5F80, &qword_217F52238);
          v66 = sub_217F2C1B0;
          v67 = sub_217F2C0E8;
        }
      }

      else
      {
        memcpy(v192, (v18 + 440), 0x1B2uLL);
        v65 = swift_allocObject();
        memcpy((v65 + 16), (v18 + 440), 0x1B2uLL);
        sub_217F2B89C(v192, __dst, &qword_27CBF5F88, &qword_217F52240);
        v66 = sub_217F2C1B0;
        v67 = sub_217F2C0EC;
      }

      v68 = v67;
    }

    else
    {
      v65 = swift_allocObject();
      memcpy((v65 + 16), __src, 0x1B2uLL);
      v66 = sub_217F2C1BC;
      v68 = sub_217F2C0F0;
    }

    v69 = swift_allocObject();
    *(v69 + 16) = v68;
    *(v69 + 24) = v65;
    sub_217F2B89C(v188, __dst, &qword_27CBF7308, &qword_217F5A030);
    v166 = v66(v175);

    v70 = *(v169 + 16);
    if (v70)
    {
      v71 = sub_217E8E420(*(v169 + 16), 0);
      v72 = sub_217E96EF4(v178, v71 + 32, v70, v169);
      v18 = *&v178[0];
      v161 = v72;
      sub_217E98168(v189, __dst);

      sub_217EB4358(v160, __dst);
      sub_217E7F628();
      if (v161 != v70)
      {
        goto LABEL_139;
      }

      v18 = v160;
    }

    else
    {
      sub_217E98168(v189, __dst);
      v18 = v160;
      sub_217EB4358(v160, __dst);
      v71 = MEMORY[0x277D84F90];
    }

    v180 = v71;
    sub_217F1F93C(&v180, v36, v171, v18);
    if (v10)
    {
      goto LABEL_142;
    }

    sub_217EB5CB8(v18);
    sub_217F23FA4(v189);
    v162 = v180;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF53D0, &qword_217F4CC40);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_217F591F0;
    v74 = 256;
    if (!v189[25])
    {
      v74 = 0;
    }

    v75 = v163 & 0xFFFFFF0000000000 | v189[24] | v74;
    if (v189[26])
    {
      v76 = 0x10000;
    }

    else
    {
      v76 = 0;
    }

    if (v189[27])
    {
      v77 = 0x1000000;
    }

    else
    {
      v77 = 0;
    }

    v78 = v75 | v76 | v77;
    if (v189[28])
    {
      v79 = 0x100000000;
    }

    else
    {
      v79 = 0;
    }

    v163 = v78 | v79;
    v80 = sub_217F18194(v201, *v189, *&v189[8], v78 | v79, v18, v175);
    *(v73 + 40) = 0;
    *(v73 + 48) = 0;
    *(v73 + 32) = v80;
    *(v73 + 56) = 0;
    v81 = 256;
    if (!v189[25])
    {
      v81 = 0;
    }

    v82 = v164 & 0xFFFFFF0000000000 | v189[24] | v81;
    if (v189[26])
    {
      v83 = 0x10000;
    }

    else
    {
      v83 = 0;
    }

    if (v189[27])
    {
      v84 = 0x1000000;
    }

    else
    {
      v84 = 0;
    }

    v85 = v82 | v83 | v84;
    if (v189[28])
    {
      v86 = 0x100000000;
    }

    else
    {
      v86 = 0;
    }

    v164 = v85 | v86;
    v87 = sub_217F18428(v201, *v189, *&v189[8], v85 | v86, v18, v175);
    *(v73 + 72) = 0;
    *(v73 + 80) = 0;
    *(v73 + 64) = v87;
    *(v73 + 88) = 1;
    v88 = 256;
    if (!v189[25])
    {
      v88 = 0;
    }

    v89 = v165 & 0xFFFFFF0000000000 | v189[24] | v88;
    if (v189[26])
    {
      v90 = 0x10000;
    }

    else
    {
      v90 = 0;
    }

    if (v189[27])
    {
      v91 = 0x1000000;
    }

    else
    {
      v91 = 0;
    }

    v92 = v89 | v90 | v91;
    if (v189[28])
    {
      v93 = 0x100000000;
    }

    else
    {
      v93 = 0;
    }

    v94 = v92 | v93;
    v95 = v18;
    v96 = sub_217F186BC(v201, *v189, *&v189[8], v92 | v93, v18, v175);
    *(v73 + 104) = 0;
    *(v73 + 112) = 0;
    *(v73 + 96) = v96;
    *(v73 + 120) = 2;
    *(v73 + 136) = 0;
    *(v73 + 144) = 0;
    *(v73 + 128) = v159;
    *(v73 + 152) = 5;
    memcpy(__dst, v188, 0x1B2uLL);
    v97 = sub_217F2B6CC(__dst);
    v98 = 360;
    if (v189[25])
    {
      v98 = 1800;
    }

    v99 = 368;
    if (v189[25])
    {
      v99 = 1808;
    }

    v100 = 376;
    if (v189[25])
    {
      v100 = 1816;
    }

    v101 = v203;
    if (!v203)
    {
      v98 = 800;
    }

    v102 = (v18 + v98);
    if (!v203)
    {
      v99 = 808;
      v100 = 816;
    }

    if (v97 != 1)
    {
      v102 = &__dst[22] + 1;
    }

    v103 = (v18 + v99);
    if (v97 != 1)
    {
      v103 = &__dst[23];
    }

    v104 = (v18 + v100);
    v105 = *v102;
    v106 = *v103;
    v107 = &__dst[23] + 1;
    if (v97 == 1)
    {
      v107 = v104;
    }

    v108 = *v107;
    *(v73 + 160) = v105;
    *(v73 + 168) = v106;
    *(v73 + 176) = v108;
    *(v73 + 184) = 4;
    v109 = *(v18 + 1424);
    *(v73 + 200) = 0;
    *(v73 + 208) = 0;
    *(v73 + 192) = v109;
    *(v73 + 216) = 7;
    v165 = v94;
    if (v101)
    {
      memcpy(v178, v188, 0x1B2uLL);
      if (sub_217F2B6CC(v178) == 1)
      {
        if (v189[25])
        {
          memcpy(v190, (v18 + 1440), 0x1B2uLL);
          v110 = swift_allocObject();
          memcpy((v110 + 16), (v18 + 1440), 0x1B2uLL);
          sub_217F2B89C(v190, v177, &qword_27CBF5F98, &qword_217F52250);
          v111 = sub_217F2C1B4;
          v112 = sub_217F2B710;
        }

        else
        {
          memcpy(v191, v18, 0x1B2uLL);
          v110 = swift_allocObject();
          memcpy((v110 + 16), v18, 0x1B2uLL);
          sub_217F2B89C(v191, v177, &qword_27CBF5F80, &qword_217F52238);
          v111 = sub_217F2C1B4;
          v112 = sub_217F2C0E0;
        }

        v115 = v112;
      }

      else
      {
        v110 = swift_allocObject();
        memcpy((v110 + 16), v178, 0x1B2uLL);
        v111 = sub_217F2C1B8;
        v115 = sub_217F2C0E4;
      }

      v114 = v169;
      v116 = swift_allocObject();
      *(v116 + 16) = v115;
      *(v116 + 24) = v110;
      sub_217F2B89C(v188, v176, &qword_27CBF7308, &qword_217F5A030);

      v117 = v111(v175);

      memcpy(v177, v188, 0x1B2uLL);
      v118 = sub_217F2B6CC(v177);
      v119 = 144;
      if (v189[25])
      {
        v119 = 1584;
      }

      v120 = (v95 + v119);
      if (v118 != 1)
      {
        v120 = &v177[9];
      }

      v121 = *v120;

      v73 = sub_217E8DFB4(1, 7, 1, v73);
      *(v73 + 16) = 7;
      *(v73 + 224) = v117;
      *(v73 + 232) = v121;
      *(v73 + 240) = 0;
      *(v73 + 248) = 3;
      sub_217F2BC84(v188, &qword_27CBF7308, &qword_217F5A030);
      v113 = v157;
    }

    else
    {

      sub_217F2BC84(v188, &qword_27CBF7308, &qword_217F5A030);
      v113 = v157;
      v114 = v169;
    }

    v174 = (v173 - 1) & v173;
    v177[0] = *v189;
    *(v177 + 13) = *&v189[13];
    *&v177[2] = v114;
    v178[0] = v183;
    v178[1] = v184;
    v178[2] = v185;
    v178[3] = v186;
    v122 = v95;
    v18 = v167;
    sub_217F0778C(v162, v167, 0, v166, v73, v178, v113, *(v95 + 912), v181, v168, v154, v155, v202);

    sub_217EB2A44(&v183);
    v123 = v181[0];
    v124 = *(v181[0] + 16);
    v125 = 0.0;
    v126 = 0.0;
    v21 = v153;
    if (v167 < v166)
    {
      if (__OFSUB__(v124, v167))
      {
        goto LABEL_140;
      }

      if (__OFSUB__(v166, v167))
      {
        goto LABEL_141;
      }

      v126 = (v124 - v167) / (v166 - v167);
    }

    v127 = v181[1];
    if (v189[25])
    {
      v128 = v25;
    }

    else
    {
      v128 = 0.0;
    }

    if (v189[26])
    {
      v129 = v25;
    }

    else
    {
      v129 = 0.0;
    }

    if (v189[27])
    {
      v130 = v25;
    }

    else
    {
      v130 = 0.0;
    }

    if (v189[24])
    {
      v131 = v25;
    }

    else
    {
      v131 = 0.0;
    }

    v18 = v122;
    v132 = pow(*(v122 + 1880), v128);
    v133 = pow(*(v122 + 1432), v129);
    v134 = pow(*(v122 + 1896), v130);
    v135 = pow(*(v122 + 1912), v131);
    v136 = pow(*(v122 + 1888), v126);
    if (v124)
    {
      v137 = (v123 + 88);
      v138 = 0.0;
      v139 = v124;
      do
      {
        v140 = *v137;
        v137 += 12;
        v138 = v138 + v140;
        --v139;
      }

      while (v139);
      v125 = v138 / v124;
    }

    v141 = *&v189[16];
    v142 = 880;
    if (v203)
    {
      v142 = 1904;
    }

    v143 = *(v122 + v142);
    if (*(v113 + v151) != 2)
    {
      if (*(v113 + 48))
      {
        v178[0] = *(v113 + 48);
        memset(&v178[1], 0, 17);

        sub_217EB06FC(v178);
        sub_217EB3F48(*&v178[0], *(&v178[0] + 1), *&v178[1], *(&v178[1] + 1), v178[2]);
      }

      else
      {
        if (qword_280C28808 != -1)
        {
          swift_once();
        }

        sub_217F4AD34();
        sub_217F4AA44();
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v170 = sub_217E8E0F8(0, *(v170 + 2) + 1, 1, v170);
    }

    v145 = *(v170 + 2);
    v144 = *(v170 + 3);
    if (v145 >= v144 >> 1)
    {
      v170 = sub_217E8E0F8((v144 > 1), v145 + 1, 1, v170);
    }

    v146 = v132 * v133 * v134 * v135 * v136;
    v25 = 1.0;
    *(v170 + 2) = v145 + 1;
    v147 = &v170[40 * v145];
    *(v147 + 4) = v36;
    *(v147 + 5) = v171;
    v147[48] = v203;
    *(v147 + 7) = v123;
    *(v147 + 8) = v146 * (v143 * v141 + v125 * (1.0 - v143));
    if (*(v122 + 904))
    {

      sub_217F37DD8(v127);
    }

    else
    {
    }

    sub_217F2BC84(v177, &qword_27CBF7310, &qword_217F5A038);
    v26 = v28;
    v27 = v174;
    v24 = v152;
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v24)
    {

      return v170;
    }

    v27 = *(v21 + 8 * v28);
    ++v26;
    if (v27)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  sub_217EB5CB8(v18);
  sub_217F23FA4(v189);
  MEMORY[0x21CEAF510](v10);

  __break(1u);
  return result;
}