uint64_t sub_261A70A30(uint64_t result)
{
  v3 = v2;
  v4 = result;
  v5 = 0;
  v6 = *(v1 + 56);
  v7 = result + 32;
  v8 = v6 + 56;
  v9 = -*(v6 + 16);
  v10 = MEMORY[0x277D84F90];
  v11 = 1;
LABEL_2:
  v12 = v11;
LABEL_3:
  v13 = v5 + 1;
  v14 = (v8 + 32 * v5);
  while (1)
  {
    v5 = v13;
    if (v9 + v13 == 1)
    {
      break;
    }

    v15 = v14;
    if ((v13 - 1) >= *(v6 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

    v16 = *(v14 - 2);
    if ((v16 & 0x8000000000000000) != 0)
    {
      goto LABEL_21;
    }

    if (v16 >= *(v4 + 16))
    {
      goto LABEL_22;
    }

    v17 = *(v14 - 1);
    v18 = *(v7 + 8 * v16);
    if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v12 = 0;
      v11 = 0;
      if (v17 > v18)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    v13 = v5 + 1;
    v14 += 4;
    if (v17 <= v18)
    {
      v11 = v12;
LABEL_12:
      v25 = v8;
      v23 = *v15;

      result = swift_isUniquelyReferenced_nonNull_native();
      v24 = v3;
      if ((result & 1) == 0)
      {
        result = sub_261A66924(0, *(v10 + 16) + 1, 1, v10);
        v10 = result;
      }

      v20 = *(v10 + 16);
      v19 = *(v10 + 24);
      v21 = v20 + 1;
      v8 = v25;
      if (v20 >= v19 >> 1)
      {
        result = sub_261A66924((v19 > 1), v20 + 1, 1, v10);
        v21 = v20 + 1;
        v8 = v25;
        v10 = result;
      }

      *(v10 + 16) = v21;
      v22 = v10 + 16 * v20;
      v3 = v24;
      *(v22 + 32) = v23;
      *(v22 + 40) = 1;
      goto LABEL_2;
    }
  }

  if ((v12 & 1) == 0)
  {

    return 0;
  }

  return v10;
}

uint64_t sub_261A70BF0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBE00, &qword_261A8CAC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A77164();
  sub_261A85CD4();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v16) = 0;
  sub_261A85B14();
  if (!v2)
  {
    v13 = *(v3 + 2);
    v16 = *(v3 + 1);
    v17 = v13;
    v15[15] = 1;
    sub_261A7720C();
    sub_261A85B54();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_261A70D6C()
{
  if (*v0)
  {
    result = 0x6973736572707865;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_261A70DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_261A85BA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6973736572707865 && a2 == 0xEA00000000006E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_261A85BA4();

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

uint64_t sub_261A70E88(uint64_t a1)
{
  v2 = sub_261A77164();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A70EC4(uint64_t a1)
{
  v2 = sub_261A77164();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_261A70F00@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_261A76F5C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_261A70F68()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[7];

  v5 = v0[9];

  return MEMORY[0x2821FE8D8](v0, 81, 7);
}

uint64_t sub_261A70FFC(unint64_t a1)
{
  v13 = swift_allocObject();
  *(v13 + 16) = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    v5 = sub_261A85994();
    if (v5 < 0)
    {
      __break(1u);
    }

    v3 = v5;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_7:
    v4 = MEMORY[0x277D84F90];
    goto LABEL_8;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = sub_261A856E4();
  *(v4 + 16) = v3;
  bzero((v4 + 32), v3);
LABEL_8:
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  v6 = v14 + 16;
  if (a1 >> 62)
  {
    v7 = sub_261A85994();
    if (!v7)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
LABEL_25:
      swift_beginAccess();
      a1 = *(v13 + 16);

LABEL_26:

      return a1;
    }
  }

  result = swift_beginAccess();
  v9 = 0;
  while ((a1 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x266716BE0](v9, a1);
    v10 = result;
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_27;
    }

LABEL_20:
    v12 = *(v10 + 64);
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_28;
    }

    if (v12 >= *(*v6 + 16))
    {
      goto LABEL_29;
    }

    if (!*(*v6 + v12 + 32))
    {
      sub_261A71240(v10, v14, v13);
      if (v1)
      {

        goto LABEL_26;
      }
    }

    ++v9;
    if (v11 == v7)
    {
      goto LABEL_25;
    }
  }

  if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_30;
  }

  v10 = *(a1 + 8 * v9 + 32);

  v11 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    goto LABEL_20;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_261A71240(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = *(a1 + 64);
  swift_beginAccess();
  v8 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_32;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_3;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  a3 = sub_261A85994();
LABEL_6:

  swift_beginAccess();
  if (a3)
  {
    v10 = 0;
    v7 = v8 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x266716BE0](v10, v8);
        v6 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_20:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          v8 = sub_261A67BBC(v8);
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_33;
          }

LABEL_3:
          if (v7 < *(v8 + 16))
          {
            v24 = a3;
            v22 = v7;
            *(v8 + v7 + 32) = 1;
            *(a2 + 16) = v8;
            swift_endAccess();
            v23 = v6;
            v8 = *(v6 + 72);
            if (!(v8 >> 62))
            {
              a3 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
              goto LABEL_6;
            }

            goto LABEL_35;
          }

          goto LABEL_34;
        }

        v11 = *(v8 + 8 * v10 + 32);

        v6 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_20;
        }
      }

      v12 = *(v11 + 64);
      if ((v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_30;
      }

      v13 = *(a2 + 16);
      if (v12 >= *(v13 + 16))
      {
        goto LABEL_31;
      }

      v14 = *(v13 + v12 + 32);
      if (v14)
      {
        if (v14 != 2)
        {

          v19 = *(v23 + 16);
          v18 = *(v23 + 24);
          sub_261A77260();
          swift_allocError();
          *v20 = v19;
          *(v20 + 8) = v18;
          *(v20 + 16) = 0u;
          *(v20 + 32) = 0u;
          *(v20 + 48) = 0;
          swift_willThrow();
        }
      }

      else
      {
        sub_261A71240(v11, a2, v24);
        if (v3)
        {
        }
      }

      ++v10;
    }

    while (v6 != a3);
  }

  swift_beginAccess();

  MEMORY[0x2667169A0](v15);
  if (*((*(v24 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v24 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v21 = *((*(v24 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_261A856D4();
  }

  sub_261A856F4();
  swift_endAccess();
  swift_beginAccess();
  v16 = *(a2 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v16;
  if ((result & 1) == 0)
  {
    result = sub_261A67BBC(v16);
    v16 = result;
  }

  if (v22 >= *(v16 + 16))
  {
    __break(1u);
  }

  else
  {
    *(v16 + v22 + 32) = 2;
    *(a2 + 16) = v16;
    return swift_endAccess();
  }

  return result;
}

unint64_t sub_261A7156C()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 48);
  if (v5 <= 2)
  {
    if (!*(v0 + 48))
    {
      sub_261A858C4();

      v14 = 0xD000000000000011;
      MEMORY[0x2667168A0](v2, v1);
      v8 = 0x8000000261A8ED70;
      v7 = 0xD000000000000012;
      goto LABEL_17;
    }

    if (v5 == 1)
    {
      sub_261A858C4();

      v14 = 0xD00000000000002BLL;
LABEL_14:
      v7 = v2;
      v8 = v1;
      goto LABEL_17;
    }

    v10 = *(v0 + 32);
    v9 = *(v0 + 40);
    sub_261A858C4();

    v14 = v10;
    MEMORY[0x2667168A0](0xD000000000000012, 0x8000000261A8ED00);
    MEMORY[0x2667168A0](v2, v1);
    v11 = 0x20646E6120;
    v12 = 0xE500000000000000;
LABEL_16:
    MEMORY[0x2667168A0](v11, v12);
    v7 = v4;
    v8 = v3;
    goto LABEL_17;
  }

  if (*(v0 + 48) > 4u)
  {
    if (v5 == 5)
    {
      sub_261A858C4();

      v14 = v2;
      v6 = "ences a non-metric expression ";
      v7 = 0xD00000000000001DLL;
      goto LABEL_10;
    }

    sub_261A858C4();

    v14 = v2;
    v11 = 0xD00000000000002ELL;
    v12 = 0x8000000261A8EC60;
    goto LABEL_16;
  }

  if (v5 != 3)
  {
    sub_261A858C4();

    v14 = v4;
    MEMORY[0x2667168A0](0xD00000000000002ELL, 0x8000000261A8ECB0);
    goto LABEL_14;
  }

  sub_261A858C4();

  v14 = v2;
  v6 = "f an expression for threshold ";
  v7 = 0xD00000000000001FLL;
LABEL_10:
  v8 = v6 | 0x8000000000000000;
LABEL_17:
  MEMORY[0x2667168A0](v7, v8);
  return v14;
}

uint64_t sub_261A71868(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_261A76A64(v5, v7) & 1;
}

uint64_t sub_261A718C4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v344 = a5;
  v348 = a3;
  v343 = a2;
  v342 = *v5;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  v351 = a1;
  v347 = a4;
  if (v7)
  {
    v9 = a1;
    v354[0] = MEMORY[0x277D84F90];

    sub_261A85944();
    v6 = 0;
    v10 = *(v9 + 16);
    v349 = v7;
    v350 = v10;
    v11 = (v9 + 72);
    while (v350 != v6)
    {
      if (v6 >= *(v9 + 16))
      {
        goto LABEL_115;
      }

      *&v352 = v6 + 1;
      v13 = *(v11 - 5);
      v12 = *(v11 - 4);
      v14 = *(v11 - 3);
      v15 = *(v11 - 2);
      v16 = *(v11 - 1);
      v17 = *v11;
      type metadata accessor for ExpressionNode();
      v18 = swift_allocObject();
      *(v18 + 16) = v13;
      *(v18 + 24) = v12;
      v9 = v351;
      *(v18 + 32) = v14;
      *(v18 + 40) = v15;
      *(v18 + 48) = v16;
      *(v18 + 56) = v17;
      v19 = v349;
      *(v18 + 64) = v6;
      *(v18 + 72) = MEMORY[0x277D84F90];
      *(v18 + 80) = 0;

      sub_261A85924();
      v8 = *(v354[0] + 2);
      sub_261A85954();
      sub_261A85964();
      sub_261A85934();
      v11 += 6;
      v6 = v352;
      if (v19 == v352)
      {

        v8 = v354[0];
        a4 = v347;
        goto LABEL_7;
      }
    }

LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    v31 = sub_261A85994();
  }

  else
  {
LABEL_7:
    v20 = 0;
    v9 = *(a4 + 16);
    v21 = MEMORY[0x277D84F90];
    v22 = 40;
    v349 = v8;
LABEL_8:
    v23 = v22 + 24 * v20;
    while (v9 != v20)
    {
      if (v20 >= *(a4 + 16))
      {
        __break(1u);
        goto LABEL_114;
      }

      ++v20;
      v24 = v23 + 24;
      v25 = *(a4 + v23);
      v23 += 24;
      if (v25)
      {
        v26 = v22;
        v6 = *(a4 + v24 - 32);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_261A66A68(0, *(v21 + 2) + 1, 1, v21);
        }

        v28 = *(v21 + 2);
        v27 = *(v21 + 3);
        a4 = v347;
        if (v28 >= v27 >> 1)
        {
          v30 = sub_261A66A68((v27 > 1), v28 + 1, 1, v21);
          v22 = v26;
          a4 = v347;
          v21 = v30;
        }

        else
        {
          v22 = v26;
        }

        *(v21 + 2) = v28 + 1;
        v29 = &v21[16 * v28];
        *(v29 + 4) = v6;
        *(v29 + 5) = v25;
        v8 = v349;
        goto LABEL_8;
      }
    }

    v339 = v22;
    v6 = sub_261A7BF08(v21);

    v340 = v8 >> 62;
    if (v8 >> 62)
    {
      goto LABEL_118;
    }

    v31 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = MEMORY[0x277D84F90];
  *&v352 = v6;
  if (v31)
  {
    v355 = MEMORY[0x277D84F90];
    sub_261A3F420(0, v31 & ~(v31 >> 63), 0);
    if ((v31 & 0x8000000000000000) == 0)
    {
      v33 = v355;
      v346 = v31;
      if ((v8 & 0xC000000000000001) != 0)
      {
        v34 = 0;
        v8 = v6 + 56;
        while (1)
        {
          v35 = (v34 + 1);
          if (__OFADD__(v34, 1))
          {
            goto LABEL_117;
          }

          v350 = v33;
          v36 = MEMORY[0x266716BE0]();
          v37 = v36;
          v39 = *(v36 + 16);
          v38 = *(v36 + 24);
          if (*(v6 + 16))
          {
            v40 = *(v6 + 40);
            sub_261A85C44();

            sub_261A85554();
            v41 = sub_261A85C84();
            v42 = -1 << *(v6 + 32);
            v43 = v41 & ~v42;
            if ((*(v8 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43))
            {
              v44 = ~v42;
              while (1)
              {
                v45 = (*(v6 + 48) + 16 * v43);
                v46 = *v45 == v39 && v45[1] == v38;
                if (v46 || (sub_261A85BA4() & 1) != 0)
                {
                  break;
                }

                v43 = (v43 + 1) & v44;
                if (((*(v8 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
                {
                  goto LABEL_36;
                }
              }

LABEL_64:

              v352 = xmmword_261A8C930;
LABEL_65:

              sub_261A77260();
              swift_allocError();
              *v73 = v352;
              *(v73 + 16) = xmmword_261A8C950;
              *(v73 + 32) = v39;
              *(v73 + 40) = v38;
              *(v73 + 48) = 2;
              swift_willThrow();

LABEL_66:

              goto LABEL_67;
            }
          }

          else
          {
            v47 = *(v36 + 24);
          }

LABEL_36:
          if (*(v348 + 16))
          {
            sub_261A5BD84(v39, v38);
            if (v48)
            {
              goto LABEL_111;
            }
          }

          v33 = v350;
          v355 = v350;
          v50 = *(v350 + 16);
          v49 = *(v350 + 24);
          if (v50 >= v49 >> 1)
          {
            sub_261A3F420((v49 > 1), v50 + 1, 1);
            v33 = v355;
          }

          *(v33 + 16) = v50 + 1;
          v51 = (v33 + 24 * v50);
          v51[4] = v39;
          v51[5] = v38;
          v51[6] = v37;
          v34 = v35;
          v6 = v352;
          if (v35 == v346)
          {
            goto LABEL_110;
          }
        }
      }

      v59 = 0;
      v338 = (v8 & 0xFFFFFFFFFFFFFF8);
      v337 = (v8 + 32);
      v8 = v6 + 56;
      while (v59 < v338[2])
      {
        v350 = v33;
        v60 = *&v337[8 * v59];
        v39 = *(v60 + 16);
        v38 = *(v60 + 24);
        if (*(v6 + 16))
        {
          v61 = *(v6 + 40);
          sub_261A85C44();

          sub_261A85554();
          v62 = sub_261A85C84();
          v63 = -1 << *(v6 + 32);
          v64 = v62 & ~v63;
          if ((*(v8 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64))
          {
            v65 = ~v63;
            do
            {
              v66 = (*(v6 + 48) + 16 * v64);
              v67 = *v66 == v39 && v66[1] == v38;
              if (v67 || (sub_261A85BA4() & 1) != 0)
              {
                goto LABEL_64;
              }

              v64 = (v64 + 1) & v65;
            }

            while (((*(v8 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) != 0);
          }
        }

        else
        {
          v68 = *&v337[8 * v59];
        }

        if (*(v348 + 16))
        {
          sub_261A5BD84(v39, v38);
          if (v69)
          {
LABEL_111:

            v352 = xmmword_261A8C940;
            v110 = v347;
            v347 = v349;
            v348 = v110;
            goto LABEL_65;
          }
        }

        v33 = v350;
        v355 = v350;
        v71 = *(v350 + 16);
        v70 = *(v350 + 24);
        v32 = v71 + 1;
        if (v71 >= v70 >> 1)
        {
          sub_261A3F420((v70 > 1), v71 + 1, 1);
          v33 = v355;
        }

        ++v59;
        *(v33 + 16) = v32;
        v72 = (v33 + 24 * v71);
        v72[4] = v39;
        v72[5] = v38;
        v72[6] = v60;
        v6 = v352;
        if (v59 == v346)
        {
LABEL_110:
          v52 = v33;
          v8 = v349;
          v32 = MEMORY[0x277D84F90];
          goto LABEL_43;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    v77 = sub_261A85994();
    if (!v77)
    {
      goto LABEL_123;
    }

LABEL_76:
    v78 = 0;
    v333 = v8 & 0xC000000000000001;
    v331 = v8 + 32;
    v350 = v6 + 56;
    v332 = v77;
    do
    {
      sub_261A812B8(v78, v333 == 0, v8);
      if (v333)
      {
        v80 = MEMORY[0x266716BE0](v78, v8);
        v81 = __OFADD__(v78, 1);
        v82 = (v78 + 1);
        if (v81)
        {
          goto LABEL_121;
        }
      }

      else
      {
        v83 = *(v331 + 8 * v78);

        v81 = __OFADD__(v78, 1);
        v82 = (v78 + 1);
        if (v81)
        {
          goto LABEL_121;
        }
      }

      v338 = v82;
      v340 = v80;
      v84 = *(v80 + 40);
      v355 = v32;
      v85 = v84 + 56;
      v86 = 1 << *(v84 + 32);
      if (v86 < 64)
      {
        v87 = ~(-1 << v86);
      }

      else
      {
        v87 = -1;
      }

      v88 = v87 & *(v84 + 56);
      v89 = (v86 + 63) >> 6;
      v346 = v84;
      swift_bridgeObjectRetain_n();
      v8 = 0;
      v341 = v32;
LABEL_87:
      v90 = v348;
      while (v88)
      {
LABEL_94:
        v92 = __clz(__rbit64(v88));
        v88 &= v88 - 1;
        v93 = (v346[6] + ((v8 << 10) | (16 * v92)));
        v95 = *v93;
        v94 = v93[1];
        v96 = *(v90 + 16);

        if (!v96 || (sub_261A5BD84(v95, v94), (v97 & 1) == 0))
        {
          if (!*(v352 + 16) || (v98 = *(v352 + 40), sub_261A85C44(), sub_261A85554(), v99 = sub_261A85C84(), v100 = -1 << *(v352 + 32), v101 = v99 & ~v100, ((*(v350 + ((v101 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v101) & 1) == 0))
          {
LABEL_105:
            if (!*(v337 + 2) || (v105 = sub_261A5BD84(v95, v94), (v106 & 1) == 0))
            {

              sub_261A77260();
              swift_allocError();
              *v111 = v95;
              *(v111 + 8) = v94;
              *(v111 + 16) = 0u;
              *(v111 + 32) = 0u;
              *(v111 + 48) = 3;
              swift_willThrow();

              goto LABEL_66;
            }

            v107 = *(*(v337 + 7) + 8 * v105);

            MEMORY[0x2667169A0](v108);
            v6 = v352;
            if (*((v355 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v355 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v109 = *((v355 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_261A856D4();
            }

            sub_261A856F4();
            v341 = v355;
            goto LABEL_87;
          }

          v102 = ~v100;
          while (1)
          {
            v103 = (*(v352 + 48) + 16 * v101);
            v104 = *v103 == v95 && v103[1] == v94;
            if (v104 || (sub_261A85BA4() & 1) != 0)
            {
              break;
            }

            v101 = (v101 + 1) & v102;
            if (((*(v350 + ((v101 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v101) & 1) == 0)
            {
              goto LABEL_105;
            }
          }
        }

        v90 = v348;
        v6 = v352;
      }

      while (1)
      {
        v91 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_116;
        }

        if (v91 >= v89)
        {
          break;
        }

        v88 = *(v85 + 8 * v91);
        ++v8;
        if (v88)
        {
          v8 = v91;
          goto LABEL_94;
        }
      }

      v79 = *(v340 + 72);
      *(v340 + 72) = v341;

      v78 = v338;
      v8 = v349;
      v32 = MEMORY[0x277D84F90];
    }

    while (v338 != v332);
    goto LABEL_123;
  }

  v52 = MEMORY[0x277D84F90];
LABEL_43:

  v54 = sub_261A76634(v53, v6);

  if (*(v54 + 16))
  {

    v354[0] = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBDC0, &qword_261A8C8E8);
    sub_261A772B4();
    sub_261A4E05C();
    v55 = sub_261A85684();
    v57 = v56;

    sub_261A77260();
    swift_allocError();
    *v58 = xmmword_261A8C940;
    *(v58 + 16) = xmmword_261A8C930;
    *(v58 + 32) = v55;
    *(v58 + 40) = v57;
    *(v58 + 48) = 2;
    swift_willThrow();
    goto LABEL_67;
  }

  if (v52[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBE20, &qword_261A8CAD0);
    v75 = sub_261A859C4();
    v76 = v52;
  }

  else
  {
    v76 = v52;
    v75 = MEMORY[0x277D84F98];
  }

  v354[0] = v75;
  sub_261A74714(v76, 1, v354);
  v336 = v341;
  if (v341)
  {

    goto LABEL_73;
  }

  v337 = v354[0];
  if (v340)
  {
    goto LABEL_122;
  }

  v77 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v77)
  {
    goto LABEL_76;
  }

LABEL_123:

  v112 = sub_261A70FFC(v8);
  v113 = v336;

  if (v336)
  {

    goto LABEL_73;
  }

  *&v352 = v112;
  if (v9)
  {
    v114 = 0;
    v115 = v347;
    v116 = v347 + 48;
    v117 = -v9;
    v118 = MEMORY[0x277D84F90];
    do
    {
      v119 = *(v115 + 16);
      if (v114 > v119)
      {
        v119 = v114;
      }

      v120 = -v119;
      v121 = (v116 + 24 * v114++);
      while (1)
      {
        if (v120 + v114 == 1)
        {
          goto LABEL_171;
        }

        v113 = *(v121 - 1);
        if (v113)
        {
          if (*v121)
          {
            break;
          }
        }

        ++v114;
        v121 += 24;
        if (v117 + v114 == 1)
        {
          goto LABEL_141;
        }
      }

      v122 = *(v121 - 2);
      v123 = *(v121 - 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v118 = sub_261A66A68(0, *(v118 + 2) + 1, 1, v118);
      }

      v125 = *(v118 + 2);
      v124 = *(v118 + 3);
      v9 = v125 + 1;
      v115 = v347;
      if (v125 >= v124 >> 1)
      {
        v127 = sub_261A66A68((v124 > 1), v125 + 1, 1, v118);
        v115 = v347;
        v118 = v127;
      }

      *(v118 + 2) = v9;
      v126 = &v118[16 * v125];
      *(v126 + 4) = v122;
      *(v126 + 5) = v113;
      v112 = v352;
    }

    while (v117 + v114);
  }

  else
  {
    v118 = MEMORY[0x277D84F90];
  }

LABEL_141:
  v113 = sub_261A7BF08(v118);

  v338 = (v112 >> 62);
  if (v112 >> 62)
  {
    goto LABEL_174;
  }

  v350 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v350)
  {
LABEL_143:
    v9 = 0;
    v128 = v112 & 0xC000000000000001;
    v341 = (v112 & 0xFFFFFFFFFFFFFF8);
    v340 = v112 + 32;
    v349 = v113;
    v346 = (v112 & 0xC000000000000001);
    while (1)
    {
      if (v128)
      {
        v130 = MEMORY[0x266716BE0](v9, v112);
        v81 = __OFADD__(v9++, 1);
        if (v81)
        {
          goto LABEL_172;
        }
      }

      else
      {
        if (v9 >= *(v341 + 2))
        {
          goto LABEL_173;
        }

        v130 = *(v340 + 8 * v9);

        v81 = __OFADD__(v9++, 1);
        if (v81)
        {
          goto LABEL_172;
        }
      }

      v131 = *(v130 + 40);

      v132 = sub_261A73F48(v113, v131);

      if (v132)
      {
        break;
      }

      v129 = 1;
LABEL_145:
      *(v130 + 80) = v129;

      if (v9 == v350)
      {
        goto LABEL_175;
      }
    }

    v133 = *(v130 + 72);
    v113 = v133 & 0xFFFFFFFFFFFFFF8;
    if (v133 >> 62)
    {
      if (v133 < 0)
      {
        v139 = *(v130 + 72);
      }

      v134 = sub_261A85994();
    }

    else
    {
      v134 = *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v112 = v133 & 0xC000000000000001;

    v135 = 0;
    while (1)
    {
      v129 = v134 != v135;
      if (v134 == v135)
      {
LABEL_165:

        v112 = v352;
        v113 = v349;
        v128 = v346;
        goto LABEL_145;
      }

      if (v112)
      {
        v137 = MEMORY[0x266716BE0](v135, v133);
        if (__OFADD__(v135, 1))
        {
          goto LABEL_169;
        }
      }

      else
      {
        if (v135 >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_170;
        }

        v136 = *(v133 + 8 * v135 + 32);

        if (__OFADD__(v135, 1))
        {
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
          v350 = sub_261A85994();
          if (!v350)
          {
            break;
          }

          goto LABEL_143;
        }
      }

      v138 = *(v137 + 80);

      ++v135;
      if (v138 == 1)
      {
        goto LABEL_165;
      }
    }
  }

LABEL_175:

  v140 = sub_261A70348(v348);
  if (v336)
  {
    goto LABEL_413;
  }

  v349 = 0;
  v141 = *(v140 + 16);
  v142 = MEMORY[0x277D84F90];
  v337 = v140;
  if (v141)
  {
    v354[0] = MEMORY[0x277D84F90];
    v143 = v140;

    v350 = v141;
    sub_261A3E8C8(v141);
    v144 = v141;
    v112 = 0;
    v145 = *(v143 + 16);
    v146 = (v143 + 40);
    do
    {
      if (v145 == v112)
      {
LABEL_389:
        __break(1u);
LABEL_390:
        __break(1u);
        goto LABEL_391;
      }

      v147 = *(v146 - 1);
      v9 = *v146;
      v142 = v354[0];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_261A3F180(0, *(v142 + 16) + 1, 1);
        v144 = v350;
        v142 = v354[0];
      }

      v149 = *(v142 + 16);
      v148 = *(v142 + 24);
      if (v149 >= v148 >> 1)
      {
        sub_261A3F180((v148 > 1), v149 + 1, 1);
        v144 = v350;
        v142 = v354[0];
      }

      *(v142 + 16) = v149 + 1;
      v150 = (v142 + 24 * v149);
      v150[5] = v9;
      v150[6] = v112;
      v150[4] = v147;
      v146 += 3;
      ++v112;
    }

    while (v144 != v112);

    v112 = v352;
  }

  v151 = v347;
  v152 = v348;
  v9 = v351;
  if (v338)
  {
    goto LABEL_399;
  }

  v153 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v153)
  {
    v354[0] = MEMORY[0x277D84F90];

    sub_261A3E8C8(v153);
    if (v153 < 0)
    {
LABEL_403:
      __break(1u);
LABEL_404:
      v154 = sub_261A85994();
      goto LABEL_191;
    }

    if (v338)
    {
      goto LABEL_404;
    }

    v154 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_191:
    v350 = v153;
    if ((v112 & 0xC000000000000001) != 0)
    {
      v155 = 0;
      v9 = v154 & ~(v154 >> 63);
      while (v9 != v155)
      {
        v156 = MEMORY[0x266716BE0](v155, v112);
        v157 = *(v156 + 16);
        v158 = *(v156 + 24);
        v159 = *(v348 + 16);

        swift_unknownObjectRelease();
        v160 = v159 + v155;
        if (__OFADD__(v159, v155))
        {
          goto LABEL_392;
        }

        v161 = v354[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_261A3F180(0, *(v161 + 2) + 1, 1);
          v161 = v354[0];
        }

        v163 = *(v161 + 2);
        v162 = *(v161 + 3);
        if (v163 >= v162 >> 1)
        {
          sub_261A3F180((v162 > 1), v163 + 1, 1);
          v161 = v354[0];
        }

        ++v155;
        *(v161 + 2) = v163 + 1;
        v164 = &v161[24 * v163];
        *(v164 + 4) = v157;
        *(v164 + 5) = v158;
        *(v164 + 6) = v160;
        v112 = v352;
        if (v350 == v155)
        {
          goto LABEL_210;
        }
      }

LABEL_391:
      __break(1u);
LABEL_392:
      __break(1u);
LABEL_393:
      __break(1u);
    }

    else
    {
      v165 = 0;
      v166 = v154 & ~(v154 >> 63);
      v167 = v348;
      while (v166 != v165)
      {
        v168 = *(v167 + 16);
        v169 = v168 + v165;
        if (__OFADD__(v168, v165))
        {
          goto LABEL_395;
        }

        v170 = *(v112 + 8 * v165 + 32);
        v172 = *(v170 + 16);
        v171 = *(v170 + 24);
        v161 = v354[0];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_261A3F180(0, *(v161 + 2) + 1, 1);
          v161 = v354[0];
        }

        v174 = *(v161 + 2);
        v173 = *(v161 + 3);
        v9 = v174 + 1;
        v167 = v348;
        if (v174 >= v173 >> 1)
        {
          sub_261A3F180((v173 > 1), v174 + 1, 1);
          v167 = v348;
          v161 = v354[0];
        }

        ++v165;
        *(v161 + 2) = v9;
        v175 = &v161[24 * v174];
        *(v175 + 4) = v172;
        *(v175 + 5) = v171;
        *(v175 + 6) = v169;
        v112 = v352;
        if (v350 == v165)
        {
LABEL_210:
          v340 = v161;

          v151 = v347;
          v152 = v348;
          v9 = v351;
          goto LABEL_211;
        }
      }
    }

    __break(1u);
LABEL_395:
    __break(1u);
LABEL_396:
    __break(1u);
LABEL_397:
    __break(1u);
LABEL_398:
    __break(1u);
LABEL_399:
    v327 = sub_261A85994();
    v152 = v348;
    v153 = v327;
    v151 = v347;
  }

  v340 = MEMORY[0x277D84F90];
LABEL_211:
  v176 = 0;
  v177 = *(v151 + 16);
  v153 = MEMORY[0x277D84F90];
LABEL_212:
  v178 = v339 + 24 * v176;
  while (v177 != v176)
  {
    if (v176 >= *(v151 + 16))
    {
      __break(1u);
      goto LABEL_389;
    }

    v179 = *(v151 + v178);
    ++v176;
    v178 += 24;
    if (v179)
    {
      v180 = *(v152 + 16);
      v181 = *(v9 + 16);
      v81 = __OFADD__(v180, v181);
      v182 = v180 + v181;
      if (v81)
      {
        __break(1u);
LABEL_402:
        __break(1u);
        goto LABEL_403;
      }

      v183 = v182 + v176 - 1;
      if (__OFADD__(v182, v176 - 1))
      {
        goto LABEL_402;
      }

      v184 = *(v151 + v178 - 32);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v153 = sub_261A660EC(0, *(v153 + 16) + 1, 1, v153);
      }

      v186 = *(v153 + 16);
      v185 = *(v153 + 24);
      v151 = v347;
      v152 = v348;
      if (v186 >= v185 >> 1)
      {
        v188 = sub_261A660EC((v185 > 1), v186 + 1, 1, v153);
        v152 = v348;
        v153 = v188;
        v151 = v347;
      }

      *(v153 + 16) = v186 + 1;
      v187 = (v153 + 24 * v186);
      v187[4] = v184;
      v187[5] = v179;
      v187[6] = v183;
      v9 = v351;
      v112 = v352;
      goto LABEL_212;
    }
  }

  v354[0] = v142;

  sub_261A7F540(v189);
  sub_261A7F540(v153);
  if (*(v354[0] + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB960, &qword_261A8AC18);
    v190 = sub_261A859C4();
  }

  else
  {
    v190 = MEMORY[0x277D84F98];
  }

  v354[0] = v190;

  sub_261A74364(v191, 1, v354);
  v192 = &v356;
  v336 = v349;
  if (v349)
  {
    goto LABEL_414;
  }

  v193 = v354[0];
  if (v338)
  {
    v194 = sub_261A85994();
  }

  else
  {
    v194 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v195 = MEMORY[0x277D84F90];
  v346 = v193;
  v347 = v194;
  if (!v194)
  {
    v197 = MEMORY[0x277D84F90];
    goto LABEL_247;
  }

  v354[0] = MEMORY[0x277D84F90];
  sub_261A3E940(v347);
  v194 = v347;
  if (v347 < 0)
  {
    __break(1u);
LABEL_406:
    __break(1u);
LABEL_407:
    v328 = sub_261A85994();
    v280 = v344;
    v281 = v328;
    v9 = v142;
    if (v328)
    {
      goto LABEL_331;
    }

    goto LABEL_408;
  }

  if ((v112 & 0xC000000000000001) != 0)
  {
    v196 = 0;
    v197 = v354[0];
    do
    {
      v198 = MEMORY[0x266716BE0](v196, v112);
      v199 = v198[4];
      v200 = v198[5];
      v201 = v198[6];
      v202 = v198[7];

      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_261A3F3E0(0, *(v197 + 2) + 1, 1);
        v194 = v347;
        v197 = v354[0];
      }

      v204 = *(v197 + 2);
      v203 = *(v197 + 3);
      if (v204 >= v203 >> 1)
      {
        sub_261A3F3E0((v203 > 1), v204 + 1, 1);
        v194 = v347;
        v197 = v354[0];
      }

      ++v196;
      *(v197 + 2) = v204 + 1;
      v205 = &v197[32 * v204];
      *(v205 + 4) = v199;
      *(v205 + 5) = v200;
      *(v205 + 6) = v201;
      *(v205 + 7) = v202;
    }

    while (v194 != v196);
  }

  else
  {
    v206 = v112 + 32;
    v197 = v354[0];
    v207 = v347;
    do
    {
      v208 = *(*v206 + 32);
      v209 = *(*v206 + 40);
      v211 = *(*v206 + 48);
      v210 = *(*v206 + 56);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_261A3F3E0(0, *(v197 + 2) + 1, 1);
        v194 = v347;
        v197 = v354[0];
      }

      v112 = *(v197 + 2);
      v212 = *(v197 + 3);
      if (v112 >= v212 >> 1)
      {
        sub_261A3F3E0((v212 > 1), v112 + 1, 1);
        v194 = v347;
        v197 = v354[0];
      }

      *(v197 + 2) = v112 + 1;
      v213 = &v197[32 * v112];
      *(v213 + 4) = v208;
      *(v213 + 5) = v209;
      *(v213 + 6) = v211;
      *(v213 + 7) = v210;
      v206 += 8;
      --v207;
    }

    while (v207);
  }

  v9 = v351;
  v195 = MEMORY[0x277D84F90];
LABEL_247:
  v142 = *(v197 + 2);
  if (v142)
  {
    v214 = 0;
    v334 = *(v197 + 2);
    do
    {
      v341 = v197;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v341 = sub_261A67BD0(v341);
      }

      if (v214 >= *(v341 + 2))
      {
        goto LABEL_396;
      }

      v215 = &v341[32 * v214];
      v218 = *(v215 + 4);
      v216 = (v215 + 32);
      v217 = v218;
      v219 = *(v218 + 16);
      if (v219)
      {
        v338 = v216;
        v339 = v214;
        v354[0] = v195;
        v349 = v219;
        sub_261A3E8E0(v219);
        v220 = 0;
        v112 = v217 + 56;
        v350 = v217;
        while (v220 < *(v217 + 16))
        {
          v222 = *(v112 - 24);
          v221 = *(v112 - 16);
          v223 = *(v112 - 8);
          v142 = *v112;
          if (v142 == 1)
          {
            v224 = v346[2];
            sub_261A77318(*(v112 - 24), *(v112 - 16), *(v112 - 8), 1u);

            if (!v224 || (v225 = sub_261A5BD84(v222, v221), (v226 & 1) == 0))
            {

              sub_261A7739C();
              swift_allocError();
              *v233 = v222;
              *(v233 + 8) = v221;
              *(v233 + 16) = 0;
              swift_willThrow();

              sub_261A773F0(v222, v221, v223, 1u);

              goto LABEL_73;
            }

            v227 = *(v346[7] + 8 * v225);
            sub_261A773F0(v222, v221, v223, 1u);
            v142 = 2;
            v223 = v227;
          }

          else
          {
            sub_261A77318(*(v112 - 24), *(v112 - 16), *(v112 - 8), *v112);
          }

          v228 = v354[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_261A3F360(0, *(v228 + 2) + 1, 1);
            v228 = v354[0];
          }

          v230 = *(v228 + 2);
          v229 = *(v228 + 3);
          if (v230 >= v229 >> 1)
          {
            sub_261A3F360((v229 > 1), v230 + 1, 1);
            v228 = v354[0];
          }

          ++v220;
          *(v228 + 2) = v230 + 1;
          v231 = &v228[32 * v230];
          *(v231 + 4) = v222;
          *(v231 + 5) = v221;
          *(v231 + 6) = v223;
          v231[56] = v142;
          v112 += 32;
          v217 = v350;
          v9 = v351;
          if (v349 == v220)
          {
            v216 = v338;
            v232 = *v338;
            v195 = MEMORY[0x277D84F90];
            v142 = v334;
            v214 = v339;
            goto LABEL_267;
          }
        }

        goto LABEL_390;
      }

      v228 = v195;
LABEL_267:
      ++v214;
      *v216 = v228;

      v194 = v347;
      v197 = v341;
    }

    while (v214 != v142);
  }

  v341 = v197;

  *(v345 + 16) = v197;
  v234 = *(v337 + 2);
  if (v234 && (sub_261A84BF0(0, 1, v337), v349 = *(*(v337 + 6) + 16), v350 = (v337 + 48), v349))
  {

    v142 = 0;
    v236 = v195;
    do
    {
      ++v142;
      MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
      swift_getKeyPath();
      v355 = v195;
      sub_261A3E928(v234);
      v237 = v355;
      v238 = v350;
      v239 = v234;
      do
      {
        v240 = *(v238 - 1);
        v241 = *v238;
        v354[0] = *(v238 - 2);
        v354[1] = v240;
        v354[2] = v241;

        swift_getAtKeyPath();

        v242 = v353;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_261A3F3C0(0, *(v237 + 16) + 1, 1);
          v237 = v355;
        }

        v244 = *(v237 + 16);
        v243 = *(v237 + 24);
        if (v244 >= v243 >> 1)
        {
          sub_261A3F3C0((v243 > 1), v244 + 1, 1);
          v237 = v355;
        }

        *(v237 + 16) = v244 + 1;
        *(v237 + 8 * v244 + 32) = v242;
        v238 += 3;
        --v239;
      }

      while (v239);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_261A66D74(0, v236[2] + 1, 1, v236);
        v236 = isUniquelyReferenced_nonNull_native;
      }

      v246 = v236[2];
      v245 = v236[3];
      if (v246 >= v245 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_261A66D74((v245 > 1), v246 + 1, 1, v236);
        v236 = isUniquelyReferenced_nonNull_native;
      }

      v195 = MEMORY[0x277D84F90];
      v236[2] = v246 + 1;
      v236[v246 + 4] = v237;
    }

    while (v142 != v349);

    v194 = v347;
  }

  else
  {

    v236 = MEMORY[0x277D84F90];
  }

  v112 = v352;
  v9 = v336;
  if (v343)
  {
    v247 = *(v343 + 16);

    v354[0] = sub_261A6A430(0, v247);

    v248 = sub_261A76C50(v352, v343, v354);
    if (v336)
    {
      goto LABEL_416;
    }

    v249 = v248;
    v9 = 0;
    swift_bridgeObjectRelease_n();
    v250 = v345;
    *(v345 + 64) = v354[0];
    v251 = v250;
  }

  else
  {
    v142 = MEMORY[0x277D84F90];
    if (v194)
    {
      v354[0] = MEMORY[0x277D84F90];
      sub_261A3E910(v347);
      v252 = v347;
      if (v347 < 0)
      {
        goto LABEL_412;
      }

      v349 = v352 & 0xC000000000000001;
      if ((v352 & 0xC000000000000001) != 0)
      {
        v253 = 0;
        v249 = v354[0];
        do
        {
          v254 = *(MEMORY[0x266716BE0](v253, v352) + 64);
          swift_unknownObjectRelease();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_261A3F3A0(0, *(v249 + 2) + 1, 1);
            v252 = v347;
            v249 = v354[0];
          }

          v256 = *(v249 + 2);
          v255 = *(v249 + 3);
          if (v256 >= v255 >> 1)
          {
            sub_261A3F3A0((v255 > 1), v256 + 1, 1);
            v252 = v347;
            v249 = v354[0];
          }

          ++v253;
          *(v249 + 2) = v256 + 1;
          v257 = &v249[16 * v256];
          *(v257 + 4) = v254;
          v257[40] = 0;
        }

        while (v252 != v253);
      }

      else
      {
        v258 = v352 + 32;
        v249 = v354[0];
        v259 = v347;
        do
        {
          v260 = *(*v258 + 64);
          v336 = v9;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_261A3F3A0(0, *(v249 + 2) + 1, 1);
            v252 = v347;
            v249 = v354[0];
          }

          v262 = *(v249 + 2);
          v261 = *(v249 + 3);
          if (v262 >= v261 >> 1)
          {
            sub_261A3F3A0((v261 > 1), v262 + 1, 1);
            v252 = v347;
            v249 = v354[0];
          }

          *(v249 + 2) = v262 + 1;
          v263 = &v249[16 * v262];
          *(v263 + 4) = v260;
          v263[40] = 0;
          v258 += 8;
          --v259;
          v9 = v336;
        }

        while (v259);
      }

      v350 = v236;
      v354[0] = v142;
      sub_261A3E8F8(v252);
      if (v349)
      {
        v264 = 0;
        v142 = v354[0];
        v112 = v352;
        v265 = v347;
        do
        {
          v266 = *(MEMORY[0x266716BE0](v264, v112) + 80);
          swift_unknownObjectRelease();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_261A3F380(0, *(v142 + 16) + 1, 1);
            v265 = v347;
            v142 = v354[0];
          }

          v268 = *(v142 + 16);
          v267 = *(v142 + 24);
          if (v268 >= v267 >> 1)
          {
            sub_261A3F380((v267 > 1), v268 + 1, 1);
            v265 = v347;
            v142 = v354[0];
          }

          ++v264;
          *(v142 + 16) = v268 + 1;
          *(v142 + v268 + 32) = v266;
        }

        while (v265 != v264);
      }

      else
      {
        v269 = v352 + 32;
        v142 = v354[0];
        v270 = v347;
        do
        {
          v271 = *(*v269 + 80);
          v336 = v9;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_261A3F380(0, *(v142 + 16) + 1, 1);
            v142 = v354[0];
          }

          v273 = *(v142 + 16);
          v272 = *(v142 + 24);
          if (v273 >= v272 >> 1)
          {
            sub_261A3F380((v272 > 1), v273 + 1, 1);
            v142 = v354[0];
          }

          *(v142 + 16) = v273 + 1;
          *(v142 + v273 + 32) = v271;
          v269 += 8;
          --v270;
          v112 = v352;
          v9 = v336;
        }

        while (v270);
      }

      v195 = MEMORY[0x277D84F90];
      v236 = v350;
    }

    else
    {
      v249 = MEMORY[0x277D84F90];
    }

    v251 = v345;
    *(v345 + 64) = v142;
  }

  *(v251 + 40) = v249;
  v274 = *(v249 + 2);
  if (v274)
  {
    v275 = 0;
    v276 = v249 + 40;
    while (1)
    {
      v277 = (*v276 & 1) == 0;
      v81 = __OFADD__(v275, v277);
      v275 += v277;
      if (v81)
      {
        goto LABEL_393;
      }

      v276 += 16;
      if (!--v274)
      {
        goto LABEL_328;
      }
    }
  }

  v275 = 0;
LABEL_328:
  v142 = v9;

  v278 = v345;
  *(v345 + 48) = v275;
  *(v278 + 24) = v236;
  v193 = *(v348 + 16);
  v279 = *(v351 + 16);

  if (__OFADD__(v193, v279))
  {
    goto LABEL_406;
  }

  *(v278 + 32) = &v193[v279];
  v280 = v344;
  v193 = v340;
  if (v344 >> 62)
  {
    goto LABEL_407;
  }

  v281 = *((v344 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = v142;
  if (!v281)
  {
LABEL_408:
    v283 = MEMORY[0x277D84F90];
LABEL_409:

    result = v345;
    *(v345 + 56) = v283;
    return result;
  }

LABEL_331:
  v282 = 0;
  v349 = v280 & 0xFFFFFFFFFFFFFF8;
  v350 = v280 & 0xC000000000000001;
  v346 = (v280 + 32);
  v338 = (v112 & 0xC000000000000001);
  v337 = (v112 + 32);
  v341 = v193 + 40;
  v283 = v195;
  v339 = v281;
  while (1)
  {
    while (1)
    {
      if (v350)
      {
        v142 = MEMORY[0x266716BE0](v282);
      }

      else
      {
        if (v282 >= *(v349 + 16))
        {
          goto LABEL_398;
        }

        v142 = v346[v282];
      }

      v81 = __OFADD__(v282, 1);
      v284 = v282 + 1;
      if (v81)
      {
        goto LABEL_397;
      }

      v351 = v284;
      v285 = *(v340 + 16);
      if (v285)
      {
        break;
      }

LABEL_332:

      v282 = v351;
      if (v351 == v281)
      {
        goto LABEL_409;
      }
    }

    v286 = 0;
    v287 = v341;
    while (1)
    {
      v288 = *(v142 + 104) == *(v287 - 1) && *(v142 + 112) == *v287;
      if (v288 || (sub_261A85BA4() & 1) != 0)
      {
        break;
      }

      ++v286;
      v287 += 24;
      if (v285 == v286)
      {
        goto LABEL_332;
      }
    }

    v354[0] = *(v142 + 120);

    sub_261A75D10(v354);
    if (v9)
    {
      goto LABEL_415;
    }

    v289 = v354[0];
    if (!*(v354[0] + 2))
    {
      break;
    }

    sub_261A84BF0(0, 1, v354[0]);
    v290 = *(v289 + 4);

    v291 = v343;
    v336 = 0;
    if (v343)
    {
    }

    else if (v347)
    {
      v354[0] = v195;
      sub_261A3E8B0(v347);
      if (v347 < 0)
      {
        goto LABEL_411;
      }

      v292 = v347;
      v335 = v283;
      v291 = v354[0];
      if (v338)
      {
        v293 = 0;
        do
        {
          v294 = MEMORY[0x266716BE0](v293, v352);
          v295 = *(v294 + 16);
          v296 = *(v294 + 24);

          swift_unknownObjectRelease();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_261A3EFB0(0, *(v291 + 2) + 1, 1);
            v292 = v347;
            v291 = v354[0];
          }

          v298 = *(v291 + 2);
          v297 = *(v291 + 3);
          if (v298 >= v297 >> 1)
          {
            sub_261A3EFB0((v297 > 1), v298 + 1, 1);
            v292 = v347;
            v291 = v354[0];
          }

          ++v293;
          *(v291 + 2) = v298 + 1;
          v299 = &v291[16 * v298];
          *(v299 + 4) = v295;
          *(v299 + 5) = v296;
        }

        while (v292 != v293);
      }

      else
      {
        v300 = v337;
        v301 = v347;
        do
        {
          v302 = *(*v300 + 16);
          v303 = *(*v300 + 24);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_261A3EFB0(0, *(v291 + 2) + 1, 1);
            v291 = v354[0];
          }

          v305 = *(v291 + 2);
          v304 = *(v291 + 3);
          if (v305 >= v304 >> 1)
          {
            sub_261A3EFB0((v304 > 1), v305 + 1, 1);
            v291 = v354[0];
          }

          *(v291 + 2) = v305 + 1;
          v306 = &v291[16 * v305];
          *(v306 + 4) = v302;
          *(v306 + 5) = v303;
          v300 += 8;
          --v301;
        }

        while (v301);
      }

      v112 = v352;
      v195 = MEMORY[0x277D84F90];
      v283 = v335;
    }

    else
    {
      v291 = v195;
    }

    v307 = *(v291 + 2);
    if (!v307)
    {
LABEL_385:

      v316 = *(v142 + 16);
      v315 = *(v142 + 24);
      v318 = *(v142 + 104);
      v317 = *(v142 + 112);
      sub_261A77260();
      swift_allocError();
      *v319 = v316;
      *(v319 + 8) = v315;
      *(v319 + 16) = v318;
      *(v319 + 24) = v317;
      *(v319 + 32) = 0;
      *(v319 + 40) = 0;
      *(v319 + 48) = 6;

      goto LABEL_386;
    }

    v308 = 0;
    v309 = v291 + 40;
    while (1)
    {
      v310 = *(v142 + 104) == *(v309 - 1) && *(v142 + 112) == *v309;
      if (v310 || (sub_261A85BA4() & 1) != 0)
      {
        break;
      }

      ++v308;
      v309 += 2;
      if (v307 == v308)
      {
        goto LABEL_385;
      }
    }

    v311 = *(v348 + 16);
    v9 = v311 + v286;
    if (__OFADD__(v311, v286))
    {
      __break(1u);
LABEL_411:
      __break(1u);
LABEL_412:
      __break(1u);
      while (1)
      {
LABEL_413:
        swift_deallocPartialClassInstance();
        __break(1u);
LABEL_414:
        v329 = *(v192 - 32);
        swift_unexpectedError();
        __break(1u);
LABEL_415:
        MEMORY[0x2667175A0](v9);

        __break(1u);
LABEL_416:

        v330 = *(v345 + 16);
      }
    }

    v281 = v339;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v283 = sub_261A66C68(0, *(v283 + 2) + 1, 1, v283);
    }

    v313 = *(v283 + 2);
    v312 = *(v283 + 3);
    if (v313 >= v312 >> 1)
    {
      v283 = sub_261A66C68((v312 > 1), v313 + 1, 1, v283);
    }

    *(v283 + 2) = v313 + 1;
    v314 = &v283[32 * v313];
    *(v314 + 4) = v9;
    *(v314 + 5) = v308;
    *(v314 + 6) = v290;
    *(v314 + 7) = v142;
    v282 = v351;
    v9 = v336;
    if (v351 == v281)
    {
      goto LABEL_409;
    }
  }

  v325 = *(v142 + 16);
  v324 = *(v142 + 24);
  sub_261A77260();
  swift_allocError();
  *v326 = v325;
  *(v326 + 8) = v324;
  *(v326 + 16) = 0u;
  *(v326 + 32) = 0u;
  *(v326 + 48) = 5;
LABEL_386:

  swift_willThrow();

  v320 = *(v345 + 16);

  v321 = *(v345 + 24);

  v322 = *(v345 + 40);

  v323 = *(v345 + 64);
LABEL_73:

LABEL_67:
  swift_deallocPartialClassInstance();
  return v345;
}

uint64_t sub_261A73F48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v26 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      v19 = *(v6 + 40);
      sub_261A85C44();

      sub_261A85554();
      v20 = sub_261A85C84();
      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      if ((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = (*(v6 + 48) + 16 * v22);
          v25 = *v24 == v18 && v24[1] == v17;
          if (v25 || (sub_261A85BA4() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v26;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_261A74130(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  v4 = *a3;
  v5 = *a1;
  v6 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_261A67BA8(v6);
  v6 = result;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v4 < *(v6 + 16))
  {
    *(v6 + 8 * v4 + 32) = v5;
    *a2 = v6;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_261A741AC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[8];

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_261A74228(uint64_t a1, int a2)
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

uint64_t sub_261A74270(uint64_t result, int a2, int a3)
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

uint64_t sub_261A742C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_261A74308(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_261A74364(void *a1, char a2, void *a3)
{
  v40 = a1[2];
  if (!v40)
  {
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_261A5BD84(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v9[3] < v15)
  {
    sub_261A757D0(v15, v5 & 1, &qword_27FECB960, &qword_261A8AC18);
    v17 = *a3;
    v10 = sub_261A5BD84(v7, v6);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_261A85BE4();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v22 = v10;
  sub_261A74F58(&qword_27FECB960, &qword_261A8AC18);
  v10 = v22;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB1B8, &qword_261A8C910);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return MEMORY[0x2667175A0](v19);
    }

    goto LABEL_26;
  }

LABEL_11:
  v23 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v24 = (v23[6] + 16 * v10);
  *v24 = v7;
  v24[1] = v6;
  *(v23[7] + 8 * v10) = v8;
  v25 = v23[2];
  v14 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_261A858C4();
    MEMORY[0x2667168A0](0xD00000000000001BLL, 0x8000000261A8EB60);
    sub_261A85974();
    MEMORY[0x2667168A0](39, 0xE100000000000000);
    result = sub_261A85984();
    __break(1u);
    return result;
  }

  v23[2] = v26;
  if (v40 != 1)
  {
    v7 = a1 + 9;
    v16 = 1;
    while (v16 < a1[2])
    {
      v5 = *(v7 - 2);
      v6 = *(v7 - 1);
      v27 = *v7;
      v28 = *a3;

      v29 = sub_261A5BD84(v5, v6);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v14 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v14)
      {
        goto LABEL_23;
      }

      v8 = v30;
      if (v28[3] < v33)
      {
        sub_261A757D0(v33, 1, &qword_27FECB960, &qword_261A8AC18);
        v34 = *a3;
        v29 = sub_261A5BD84(v5, v6);
        if ((v8 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v8)
      {
        goto LABEL_8;
      }

      v36 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v37 = (v36[6] + 16 * v29);
      *v37 = v5;
      v37[1] = v6;
      *(v36[7] + 8 * v29) = v27;
      v38 = v36[2];
      v14 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v16;
      v36[2] = v39;
      v7 += 3;
      if (v40 == v16)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_261A74714(void *a1, char a2, void *a3)
{
  v43 = a1[2];
  if (!v43)
  {
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_261A5BD84(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_261A75514(v15, v5 & 1);
    v17 = *a3;
    v10 = sub_261A5BD84(v7, v6);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_261A85BE4();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v25 = v10;
  sub_261A74DD4();
  v10 = v25;
  if (v16)
  {
LABEL_8:
    v20 = *(v8 + 16);
    v19 = *(v8 + 24);
    sub_261A77260();
    v21 = swift_allocError();
    *v22 = v20;
    *(v22 + 8) = v19;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 0u;
    *(v22 + 48) = 1;
    swift_willThrow();

    v23 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB1B8, &qword_261A8C910);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return MEMORY[0x2667175A0](v21);
    }

    goto LABEL_26;
  }

LABEL_11:
  v26 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v27 = (v26[6] + 16 * v10);
  *v27 = v7;
  v27[1] = v6;
  *(v26[7] + 8 * v10) = v8;
  v28 = v26[2];
  v14 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_261A858C4();
    MEMORY[0x2667168A0](0xD00000000000001BLL, 0x8000000261A8EB60);
    sub_261A85974();
    MEMORY[0x2667168A0](39, 0xE100000000000000);
    result = sub_261A85984();
    __break(1u);
    return result;
  }

  v26[2] = v29;
  if (v43 != 1)
  {
    v5 = a1 + 9;
    v30 = 1;
    while (v30 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v31 = *a3;

      v32 = sub_261A5BD84(v7, v6);
      v34 = v31[2];
      v35 = (v33 & 1) == 0;
      v14 = __OFADD__(v34, v35);
      v36 = v34 + v35;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v33;
      if (v31[3] < v36)
      {
        sub_261A75514(v36, 1);
        v37 = *a3;
        v32 = sub_261A5BD84(v7, v6);
        if ((v16 & 1) != (v38 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v39 = *a3;
      *(*a3 + 8 * (v32 >> 6) + 64) |= 1 << v32;
      v40 = (v39[6] + 16 * v32);
      *v40 = v7;
      v40[1] = v6;
      *(v39[7] + 8 * v32) = v8;
      v41 = v39[2];
      v14 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v30;
      v39[2] = v42;
      v5 += 3;
      if (v43 == v30)
      {
      }
    }

    goto LABEL_25;
  }
}

void *sub_261A74AC8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB380, &qword_261A88868);
  v2 = *v0;
  v3 = sub_261A859A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 40;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 32);
        v26 = (*(v4 + 48) + v18);
        v27 = *(v22 + 16);
        *v26 = v21;
        v26[1] = v20;
        v28 = *(v4 + 56) + v17;
        *v28 = v23;
        *(v28 + 8) = v24;
        *(v28 + 16) = v27;
        *(v28 + 32) = v25;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_261A74C58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB208, &qword_261A87D48);
  v2 = *v0;
  v3 = sub_261A859A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_261A74DD4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBE20, &qword_261A8CAD0);
  v2 = *v0;
  v3 = sub_261A859A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_261A74F58(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_261A859A4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = *(*(v4 + 56) + 8 * v19);
        v24 = (*(v6 + 48) + 16 * v19);
        *v24 = v22;
        v24[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v23;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_261A750B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBD40, &unk_261A8C450);
  v2 = *v0;
  v3 = sub_261A859A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_261A75220(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB380, &qword_261A88868);
  v39 = a2;
  result = sub_261A859B4();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 40 * v22;
      v27 = *(v26 + 8);
      v41 = *v26;
      v42 = *(v26 + 16);
      v40 = *(v26 + 32);
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_261A85C44();
      sub_261A85554();
      result = sub_261A85C84();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 40 * v16;
      *v18 = v41;
      *(v18 + 8) = v27;
      *(v18 + 16) = v42;
      *(v18 + 32) = v40;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_261A75514(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBE20, &qword_261A8CAD0);
  v38 = a2;
  result = sub_261A859B4();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_261A85C44();
      sub_261A85554();
      result = sub_261A85C84();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_261A757D0(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_261A859B4();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_261A85C44();
      sub_261A85554();
      result = sub_261A85C84();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_261A75A68(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBD40, &unk_261A8C450);
  v38 = a2;
  result = sub_261A859B4();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_261A85C44();
      sub_261A85554();
      result = sub_261A85C84();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_261A75D10(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_261A76A50(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_261A85B84();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_261A856E4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_261A75E44(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_261A75E44(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_261A76620(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_261A763A0((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
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
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
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
      result = sub_261A65FE8(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_261A65FE8((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
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

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_261A763A0((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
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

uint64_t sub_261A763A0(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_261A76594(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_261A76620(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_261A76634(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_261A767D4(v9, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_261A77444(v15, v7, v18);
    v10 = v18[0];

    MEMORY[0x266717700](v15, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_261A767D4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v37 = a4 + 56;

  v32 = 0;
  v33 = v5;
  v12 = 0;
  v35 = v10;
  v36 = v6;
  while (v9)
  {
LABEL_11:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = (*(v5 + 48) + ((v12 << 10) | (16 * v15)));
    v18 = *v16;
    v17 = v16[1];
    v19 = *(v4 + 40);
    sub_261A85C44();

    sub_261A85554();
    v20 = sub_261A85C84();
    v21 = -1 << *(v4 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & *(v37 + 8 * (v22 >> 6))) != 0)
    {
      v25 = v4;
      v26 = (*(v4 + 48) + 16 * v22);
      if (*v26 != v18 || v26[1] != v17)
      {
        v28 = ~v21;
        while ((sub_261A85BA4() & 1) == 0)
        {
          v22 = (v22 + 1) & v28;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v37 + 8 * (v22 >> 6))) == 0)
          {
            v4 = v25;
            v5 = v33;
            goto LABEL_23;
          }

          v29 = (*(v25 + 48) + 16 * v22);
          if (*v29 == v18 && v29[1] == v17)
          {
            break;
          }
        }
      }

      v13 = a1[v23];
      a1[v23] = v13 | v24;
      v4 = v25;
      v5 = v33;
      v10 = v35;
      v6 = v36;
      if ((v13 & v24) == 0 && __OFADD__(v32++, 1))
      {
        __break(1u);
LABEL_27:

        return sub_261A6F4C8(a1, a2, v32, v4);
      }
    }

    else
    {
LABEL_23:

      v10 = v35;
      v6 = v36;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      goto LABEL_27;
    }

    v9 = *(v6 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_261A76A64(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 48);
  v9 = *a2;
  v10 = a2[1];
  if (v8 <= 2)
  {
    if (*(a1 + 48))
    {
      if (v8 != 1)
      {
        if (*(a2 + 48) != 2)
        {
          return 0;
        }

        v12 = a1[4];
        v13 = a1[5];
        v14 = a2[2];
        v15 = a2[3];
        v16 = a2[4];
        v17 = a2[5];
        if ((v4 != v9 || v5 != v10) && (sub_261A85BA4() & 1) == 0)
        {
          return 0;
        }

        if ((v6 != v14 || v7 != v15) && (sub_261A85BA4() & 1) == 0)
        {
          return 0;
        }

        if (v12 == v16 && v13 == v17)
        {
          return 1;
        }

        goto LABEL_41;
      }

      if (*(a2 + 48) == 1)
      {
        goto LABEL_12;
      }
    }

    else if (!*(a2 + 48))
    {
      if (v4 != v9 || v5 != v10)
      {
        goto LABEL_41;
      }

      return 1;
    }

    return 0;
  }

  if (*(a1 + 48) <= 4u)
  {
    if (v8 == 3)
    {
      if (*(a2 + 48) != 3)
      {
        return 0;
      }

LABEL_12:
      if (v4 != v9 || v5 != v10)
      {
        goto LABEL_41;
      }

      return 1;
    }

    if (*(a2 + 48) == 4)
    {
      goto LABEL_34;
    }

    return 0;
  }

  if (v8 == 5)
  {
    if (*(a2 + 48) == 5)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (*(a2 + 48) != 6)
  {
    return 0;
  }

LABEL_34:
  v18 = a2[2];
  v19 = a2[3];
  if ((v4 != v9 || v5 != v10) && (sub_261A85BA4() & 1) == 0)
  {
    return 0;
  }

  if (v6 == v18 && v7 == v19)
  {
    return 1;
  }

LABEL_41:

  return sub_261A85BA4();
}

char *sub_261A76C50(char **a1, uint64_t a2, char **a3)
{
  v4 = a1;
  if (a1 >> 62)
  {
    goto LABEL_31;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v28 = MEMORY[0x277D84F90];
  result = sub_261A3F3A0(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v28;
    v9 = *(a2 + 16);
    v22 = v4 & 0xFFFFFFFFFFFFFF8;
    v23 = v5;
    v21 = v4 + 4;
    v26 = (a2 + 40);
    v27 = v4 & 0xC000000000000001;
    v24 = v4;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        v5 = sub_261A85994();
        goto LABEL_3;
      }

      if (v27)
      {
        a2 = MEMORY[0x266716BE0]();
        v11 = v9 == 0;
        if (!v9)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v8 >= *(v22 + 16))
        {
          goto LABEL_30;
        }

        a2 = v21[v8];

        v11 = v9 == 0;
        if (!v9)
        {
LABEL_19:

          v12 = 0;
          goto LABEL_24;
        }
      }

      v12 = 0;
      v13 = v26;
      v11 = v9 == 0;
      while (1)
      {
        v14 = *(a2 + 16) == *(v13 - 1) && *(a2 + 24) == *v13;
        if (v14 || (sub_261A85BA4() & 1) != 0)
        {
          break;
        }

        ++v12;
        v13 += 2;
        v11 = v9 == v12;
        if (v9 == v12)
        {
          goto LABEL_19;
        }
      }

      v15 = *(a2 + 80);
      v4 = a3;
      v16 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = sub_261A67C0C(v16);
        *a3 = v16;
      }

      if (v12 >= *(v16 + 2))
      {
        goto LABEL_29;
      }

      v16[v12 + 32] = v15;

      v5 = v23;
      v4 = v24;
LABEL_24:
      v19 = *(v28 + 16);
      v18 = *(v28 + 24);
      a2 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        sub_261A3F3A0((v18 > 1), v19 + 1, 1);
      }

      *(v28 + 16) = a2;
      v20 = v28 + 16 * v19;
      *(v20 + 32) = v12;
      *(v20 + 40) = v11;
      v8 = v10;
      if (v10 == v5)
      {
        return v6;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_261A76E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_261A858C4();

  MEMORY[0x2667168A0](a1, a2);
  MEMORY[0x2667168A0](2108450, 0xE300000000000000);
  v6 = sub_261A844B8(a3);
  MEMORY[0x2667168A0](v6);

  MEMORY[0x2667168A0](10537, 0xE200000000000000);
  return 0xD000000000000011;
}

uint64_t sub_261A76F5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBDE8, &qword_261A8CAC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A77164();
  sub_261A85CB4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v19) = 0;
  v11 = sub_261A85A54();
  v13 = v12;
  v14 = v11;
  v22 = 1;
  sub_261A771B8();
  sub_261A85A94();
  (*(v6 + 8))(v9, v5);
  v15 = v20;
  v16 = v21;
  v18 = v19;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v18;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  return result;
}

unint64_t sub_261A77164()
{
  result = qword_27FECBDF0;
  if (!qword_27FECBDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBDF0);
  }

  return result;
}

unint64_t sub_261A771B8()
{
  result = qword_27FECBDF8;
  if (!qword_27FECBDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBDF8);
  }

  return result;
}

unint64_t sub_261A7720C()
{
  result = qword_27FECBE08;
  if (!qword_27FECBE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBE08);
  }

  return result;
}

unint64_t sub_261A77260()
{
  result = qword_27FECBE10;
  if (!qword_27FECBE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBE10);
  }

  return result;
}

unint64_t sub_261A772B4()
{
  result = qword_27FECBE18;
  if (!qword_27FECBE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECBDC0, &qword_261A8C8E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBE18);
  }

  return result;
}

uint64_t sub_261A77318(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 1 <= 1)
  {
  }

  return result;
}

uint64_t sub_261A77334@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*result + 16))
  {
    *a3 = *(*result + 8 * v3 + 32);
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_261A7739C()
{
  result = qword_27FECBE28;
  if (!qword_27FECBE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBE28);
  }

  return result;
}

uint64_t sub_261A773F0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 1 <= 1)
  {
  }

  return result;
}

uint64_t sub_261A7740C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261A77444@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_261A767D4(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_261A774B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 49))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 48);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_261A774F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

unint64_t sub_261A77578()
{
  result = qword_27FECBE30;
  if (!qword_27FECBE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBE30);
  }

  return result;
}

unint64_t sub_261A775D4()
{
  result = qword_27FECBE38;
  if (!qword_27FECBE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBE38);
  }

  return result;
}

unint64_t sub_261A7762C()
{
  result = qword_27FECBE40;
  if (!qword_27FECBE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBE40);
  }

  return result;
}

unint64_t sub_261A77684()
{
  result = qword_27FECBE48;
  if (!qword_27FECBE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBE48);
  }

  return result;
}

uint64_t sub_261A776DC(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = a1;
    v47 = MEMORY[0x277D84F90];
    sub_261A3F4A0(0, v3, 0);
    v6 = v47;
    v7 = v5 + 64;
    v8 = -1 << *(v5 + 32);
    result = sub_261A85854();
    v10 = result;
    v11 = 0;
    v12 = *(v5 + 36);
    v39 = v5 + 72;
    v40 = v3;
    v42 = v5 + 64;
    v43 = v5;
    v41 = v12;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v5 + 32))
    {
      if ((*(v7 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_25;
      }

      if (v12 != *(v5 + 36))
      {
        goto LABEL_26;
      }

      v45 = v10 >> 6;
      v44 = v11;
      v14 = (*(v5 + 48) + 16 * v10);
      v15 = v14[1];
      v46 = *v14;
      v16 = (*(v5 + 56) + 16 * v10);
      v18 = *v16;
      v17 = v16[1];
      swift_bridgeObjectRetain_n();

      v19 = sub_261A698B4(v4);
      v20 = sub_261A82274(v18, v17, v19);
      if (v2)
      {
        sub_261A7D514();
        swift_allocError();
        *v38 = v46;
        v38[1] = v15;
        v38[2] = v18;
        v38[3] = v17;
        v38[4] = v2;
        v38[7] = 0x4000000000000000;
        swift_willThrow();

        return v6;
      }

      v24 = v20;
      v25 = v21;
      v26 = v22;
      v27 = v23;

      v29 = *(v47 + 16);
      v28 = *(v47 + 24);
      if (v29 >= v28 >> 1)
      {
        result = sub_261A3F4A0((v28 > 1), v29 + 1, 1);
      }

      *(v47 + 16) = v29 + 1;
      v30 = (v47 + 48 * v29);
      v30[4] = v46;
      v30[5] = v15;
      v30[6] = v24;
      v30[7] = v25;
      v30[8] = v26;
      v30[9] = v27;
      v5 = v43;
      v13 = 1 << *(v43 + 32);
      if (v10 >= v13)
      {
        goto LABEL_27;
      }

      v7 = v42;
      v31 = *(v42 + 8 * v45);
      if ((v31 & (1 << v10)) == 0)
      {
        goto LABEL_28;
      }

      v12 = v41;
      if (v41 != *(v43 + 36))
      {
        goto LABEL_29;
      }

      v32 = v31 & (-2 << (v10 & 0x3F));
      if (v32)
      {
        v13 = __clz(__rbit64(v32)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v33 = v45 << 6;
        v34 = v45 + 1;
        v35 = (v39 + 8 * v45);
        while (v34 < (v13 + 63) >> 6)
        {
          v37 = *v35++;
          v36 = v37;
          v33 += 64;
          ++v34;
          if (v37)
          {
            result = sub_261A4984C(v10, v41, 0);
            v13 = __clz(__rbit64(v36)) + v33;
            goto LABEL_4;
          }
        }

        result = sub_261A4984C(v10, v41, 0);
      }

LABEL_4:
      v11 = v44 + 1;
      v10 = v13;
      v2 = 0;
      v4 = MEMORY[0x277D84F90];
      if (v44 + 1 == v40)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_25:
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

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_261A779E4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *sub_261A77A90(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_261A7B1A8(*(a1 + 16), 0);
  v4 = sub_261A7BC64(&v6, v3 + 4, v2, a1);
  sub_261A70290();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_261A77B20(uint64_t a1)
{
  result = MEMORY[0x266716A20](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_261A81300(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_261A77C3C()
{
  v1 = v0[3];
  v9 = v0[2];
  v10 = v1;
  v2 = v0[5];
  v11 = v0[4];
  v12 = v2;
  v3 = v0[1];
  v7 = *v0;
  v8 = v3;
  if (*(&v10 + 1) >> 62)
  {
    if (*(&v10 + 1) >> 62 == 1)
    {
      *&v5 = 0;
      *(&v5 + 1) = 0xE000000000000000;
      sub_261A858C4();
      MEMORY[0x2667168A0](v7, *(&v7 + 1));
      MEMORY[0x2667168A0](0xD000000000000023, 0x8000000261A8EE20);
      MEMORY[0x2667168A0](v8, *(&v8 + 1));
      MEMORY[0x2667168A0](8250, 0xE200000000000000);
      *&v6 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB1B8, &qword_261A8C910);
      sub_261A85974();
    }

    else
    {
      sub_261A858C4();

      v5 = v7;
      MEMORY[0x2667168A0](0xD000000000000013, 0x8000000261A8EE00);
      MEMORY[0x2667168A0](v9, *(&v9 + 1));
      MEMORY[0x2667168A0](5720096, 0xE300000000000000);
    }

    return v5;
  }

  else
  {
    v6 = v7;
    sub_261A7E698(&v7, &v5);
    MEMORY[0x2667168A0](0x6F6620746F6E203ALL, 0xEB00000000646E75);
    return v6;
  }
}

uint64_t CounterAnalysis.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CounterAnalysis.name.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t CounterAnalysis.displayName.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t CounterAnalysis.initialModeID.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t CounterAnalysis.initialModeName.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t sub_261A77F04@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 168);
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[5];
  v10[3] = v2[4];
  v10[4] = v5;
  v10[1] = v3;
  v10[2] = v4;
  v10[0] = v2[1];
  v6 = v2[3];
  a1[3] = v2[4];
  a1[4] = v5;
  v7 = v2[1];
  a1[1] = v2[2];
  a1[2] = v6;
  *a1 = v7;
  return sub_261A39B98(v10, &v9);
}

char *static CounterAnalysis.availableNames.getter()
{
  v34 = sub_261A85394();
  v0 = *(v34 - 8);
  v1 = *(v0 + 64);
  v2 = MEMORY[0x28223BE20](v34);
  v33 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v32 = v28 - v4;
  v5 = sub_261A7BFA0(0);
  v6 = *(v5 + 16);
  if (v6)
  {
    v35 = MEMORY[0x277D84F90];
    sub_261A3EFB0(0, v6, 0);
    v7 = v35;
    v9 = *(v0 + 16);
    v8 = v0 + 16;
    v10 = *(v8 + 64);
    v28[1] = v5;
    v11 = v5 + ((v10 + 32) & ~v10);
    v29 = *(v8 + 56);
    v30 = v9;
    v12 = (v8 - 8);
    v31 = v8;
    do
    {
      v13 = v32;
      v14 = v34;
      v30(v32, v11, v34);
      v15 = v33;
      sub_261A85344();
      v16 = sub_261A85324();
      v18 = v17;
      v19 = *v12;
      (*v12)(v15, v14);
      v19(v13, v14);
      v35 = v7;
      v21 = *(v7 + 2);
      v20 = *(v7 + 3);
      if (v21 >= v20 >> 1)
      {
        sub_261A3EFB0((v20 > 1), v21 + 1, 1);
        v7 = v35;
      }

      *(v7 + 2) = v21 + 1;
      v22 = &v7[16 * v21];
      *(v22 + 4) = v16;
      *(v22 + 5) = v18;
      v11 += v29;
      --v6;
    }

    while (v6);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v23 = sub_261A7BF08(v7);

  v24 = *(v23 + 16);
  if (!v24)
  {
    goto LABEL_11;
  }

  v25 = sub_261A7B1A8(*(v23 + 16), 0);
  v26 = sub_261A7BC64(&v35, v25 + 4, v24, v23);
  sub_261A70290();
  if (v26 != v24)
  {
    __break(1u);
LABEL_11:

    v25 = MEMORY[0x277D84F90];
  }

  v35 = v25;

  sub_261A7B22C(&v35);

  return v35;
}

unint64_t CounterAnalysis.__allocating_init(name:silicon:directories:)(uint64_t a1, unint64_t a2, __int128 *a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAEC8, &qword_261A8BFE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v33 - v10;
  v12 = sub_261A85394();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v33 - v18;
  v20 = a3[3];
  v36 = a3[2];
  v37 = v20;
  v38 = a3[4];
  v22 = *a3;
  v21 = a3[1];
  v23 = a1;
  v34 = v22;
  v35 = v21;
  sub_261A785EC(a1, a2, a4, v11);

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_261A39BF4(&v34);
    sub_261A5E854(v11, &qword_27FECAEC8, &qword_261A8BFE0);
    if (qword_27FECAD60 != -1)
    {
      swift_once();
    }

    v24 = sub_261A853D4();
    __swift_project_value_buffer(v24, qword_27FED7C90);

    v25 = sub_261A853B4();
    v26 = sub_261A85744();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v33[0] = v28;
      *v27 = 136446210;
      *(v27 + 4) = sub_261A3E9E8(v23, a2, v33);
      _os_log_impl(&dword_261A33000, v25, v26, "could not find CounterAnalysis named %{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x266717700](v28, -1, -1);
      MEMORY[0x266717700](v27, -1, -1);
    }

    sub_261A7D514();
    swift_allocError();
    *v29 = v23;
    v29[1] = a2;
    v29[7] = 0;
    swift_willThrow();
  }

  else
  {

    (*(v13 + 32))(v19, v11, v12);
    (*(v13 + 16))(v17, v19, v12);
    v33[2] = v36;
    v33[3] = v37;
    v33[4] = v38;
    v33[0] = v34;
    v33[1] = v35;
    v30 = v39;
    v31 = sub_261A7D80C(v17, v33);
    if (!v30)
    {
      a2 = v31;
    }

    (*(v13 + 8))(v19, v12);
  }

  return a2;
}

uint64_t sub_261A785EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v61 = a1;
  v62 = a2;
  v6 = sub_261A85394();
  v64 = *(v6 - 8);
  v7 = *(v64 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v50 - v11;
  v13 = sub_261A7BFA0(a3);
  if (qword_27FECAD60 != -1)
  {
LABEL_26:
    swift_once();
  }

  v14 = sub_261A853D4();
  __swift_project_value_buffer(v14, qword_27FED7C90);

  v15 = sub_261A853B4();
  v16 = sub_261A85734();

  v17 = os_log_type_enabled(v15, v16);
  v63 = v13;
  if (v17)
  {
    v56 = v16;
    v18 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v66 = v54;
    v55 = v18;
    *v18 = 136315138;
    v19 = *(v13 + 16);
    v20 = MEMORY[0x277D84F90];
    if (v19)
    {
      v51 = v15;
      v52 = v10;
      v60 = v6;
      v53 = a4;
      v65 = MEMORY[0x277D84F90];
      sub_261A3EFB0(0, v19, 0);
      v20 = v65;
      v21 = *(v64 + 16);
      v22 = v13 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
      v57 = *(v64 + 72);
      v58 = v21;
      v59 = v64 + 16;
      v23 = (v64 + 8);
      do
      {
        v24 = v60;
        v58(v12, v22, v60);
        v25 = sub_261A85324();
        v27 = v26;
        (*v23)(v12, v24);
        v65 = v20;
        v29 = *(v20 + 16);
        v28 = *(v20 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_261A3EFB0((v28 > 1), v29 + 1, 1);
          v20 = v65;
        }

        *(v20 + 16) = v29 + 1;
        v30 = v20 + 16 * v29;
        *(v30 + 32) = v25;
        *(v30 + 40) = v27;
        v22 += v57;
        --v19;
      }

      while (v19);
      v10 = v52;
      a4 = v53;
      v6 = v60;
      v13 = v63;
      v15 = v51;
    }

    v31 = MEMORY[0x2667169D0](v20, MEMORY[0x277D837D0]);
    v33 = v32;

    v34 = sub_261A3E9E8(v31, v33, &v66);

    v35 = v55;
    *(v55 + 1) = v34;
    _os_log_impl(&dword_261A33000, v15, v56, "found CounterAnalysis specifications: %s", v35, 0xCu);
    v36 = v54;
    __swift_destroy_boxed_opaque_existential_1(v54);
    MEMORY[0x266717700](v36, -1, -1);
    MEMORY[0x266717700](v35, -1, -1);
  }

  v37 = *(v13 + 16);
  if (v37)
  {
    v12 = 0;
    v60 = v13 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
    v38 = (v64 + 8);
    do
    {
      if (v12 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      (*(v64 + 16))(v10, v60 + *(v64 + 72) * v12, v6);
      v43 = sub_261A85324();
      v45 = v44;
      v66 = v61;
      v67 = v62;

      MEMORY[0x2667168A0](0x6E6F736A2ELL, 0xE500000000000000);
      if (v43 == v66 && v45 == v67)
      {
      }

      else
      {
        v47 = sub_261A85BA4();

        if ((v47 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v39 = [objc_opt_self() defaultManager];
      sub_261A85364();
      v40 = v10;
      v41 = sub_261A85494();

      v42 = [v39 fileExistsAtPath_];

      v10 = v40;
      if (v42)
      {

        (*(v64 + 32))(a4, v40, v6);
        v48 = 0;
        return (*(v64 + 56))(a4, v48, 1, v6);
      }

LABEL_14:
      ++v12;
      (*v38)(v10, v6);
      v13 = v63;
    }

    while (v37 != v12);
  }

  v48 = 1;
  return (*(v64 + 56))(a4, v48, 1, v6);
}

uint64_t sub_261A78B30(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v135 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB018, &unk_261A87D10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v120 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB020, &qword_261A87880);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v133 = v120 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB028, &unk_261A87D20);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v134 = v120 - v17;
  v18 = a2[3];
  v154 = a2[2];
  v155 = v18;
  v156 = a2[4];
  v19 = a2[1];
  v152 = *a2;
  v153 = v19;
  v136 = a1;
  v151 = *(a1 + 56);
  v20 = *(v151 + 16);

  *&v139 = v20;
  if (!v20)
  {
    v32 = *(&v153 + 1);
    v31 = v153;
LABEL_8:
    sub_261A5E854(&v151, &qword_27FECB528, &qword_261A89458);
    v33 = v136;
    v35 = *v136;
    v34 = v136[1];
    v36 = v152;
    v141 = v154;
    v37 = DWORD2(v154) | 0x8000000000000000;
    sub_261A7D514();
    v140 = v155;
    v139 = v156;
    swift_allocError();
    *v38 = v35;
    *(v38 + 8) = v34;
    *(v38 + 16) = v36;
    *(v38 + 32) = v31;
    *(v38 + 40) = v32;
    *(v38 + 48) = v141;
    *(v38 + 56) = v37;
    v39 = v139;
    *(v38 + 64) = v140;
    *(v38 + 80) = v39;
    swift_willThrow();

    sub_261A54910(v33);
    v5 = v137;
LABEL_11:
    type metadata accessor for CounterAnalysis();
    swift_deallocPartialClassInstance();
    return v5;
  }

  v126 = v11;
  v132 = v10;
  v127 = v9;
  v128 = v15;
  v129 = v14;
  v130 = v6;
  v131 = v5;
  v22 = 0;
  v23 = (v21 + 64);
  while (1)
  {
    if (v22 >= *(v21 + 16))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v5 = v21;
    *&v140 = v120;
    v9 = *(v23 - 4);
    v24 = *(v23 - 3);
    v26 = *(v23 - 2);
    v25 = *(v23 - 1);
    v27 = *v23;
    v28 = *(&v153 + 1);
    v138 = v153;
    v144 = v153;
    MEMORY[0x28223BE20](v21);
    v120[-2] = &v144;

    v29 = v141;
    v30 = sub_261A779E4(sub_261A7E818, &v120[-4], v9);
    v141 = v29;
    if (v30)
    {
      break;
    }

    ++v22;
    v23 += 5;
    v21 = v5;
    if (v139 == v22)
    {
      v31 = v138;
      v32 = v28;
      goto LABEL_8;
    }
  }

  *&v140 = v27;
  v40 = v9;
  sub_261A5E854(&v151, &qword_27FECB528, &qword_261A89458);
  v41 = v136;
  v42 = *v136;
  v149 = *(v136 + 1);
  v43 = v149;
  v150 = v42;
  v5 = v137;
  *(v137 + 16) = v42;
  *(v5 + 32) = v42;
  v44 = *(v41 + 32);
  v45 = *(v41 + 48);
  v148 = v44;
  *(v5 + 64) = v44;
  *(v5 + 80) = v44;
  *(v5 + 48) = v43;
  *(v5 + 152) = v45;
  *(v5 + 136) = v44;
  *(v5 + 120) = v43;
  *(v5 + 104) = v42;
  sub_261A3DF5C(&v150, &v144);
  sub_261A3DFB8(&v148, &v144);

  sub_261A3DF5C(&v150, &v144);
  sub_261A3DFB8(&v148, &v144);
  sub_261A3DF5C(&v149, &v144);
  sub_261A548D8(v41, &v144);
  v46 = v141;
  v47 = sub_261A776DC(v24);
  v138 = v46;
  if (v46)
  {

    sub_261A39BF4(&v152);

    sub_261A54910(v41);

    v48 = *(v5 + 24);

    v49 = *(v5 + 40);

    v50 = *(v5 + 56);

    v51 = *(v5 + 72);

    v52 = *(v5 + 88);

    v53 = *(v5 + 120);
    v144 = *(v5 + 104);
    v145 = v53;
    v54 = *(v5 + 152);
    v146 = *(v5 + 136);
    v147 = v54;
    sub_261A54910(&v144);
    goto LABEL_11;
  }

  v122 = v47;
  v121 = v24;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBD40, &unk_261A8C450);
  v56 = sub_261A859A4();
  v57 = 0;
  v5 = v25 + 64;
  v58 = 1 << *(v25 + 32);
  v59 = -1;
  if (v58 < 64)
  {
    v59 = ~(-1 << v58);
  }

  v9 = v59 & *(v25 + 64);
  v60 = (v58 + 63) >> 6;
  v124 = v56 + 64;
  v125 = xmmword_261A8CE90;
  v120[0] = v26;
  v61 = v56;
  v120[1] = v40;
  v62 = v140;
  v123 = v56;
  if (!v9)
  {
LABEL_17:
    v64 = v57;
    while (1)
    {
      v57 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        goto LABEL_37;
      }

      if (v57 >= v60)
      {
        v81 = *(&v156 + 1);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v143 = v81;
        v83 = v138;
        sub_261A7D568(v61, sub_261A7BE30, 0, isUniquelyReferenced_nonNull_native, &v143);
        v138 = v83;
        if (v83)
        {

          MEMORY[0x2667175A0](v138);
          v112 = v137;
          v113 = *(v137 + 24);

          v114 = *(v112 + 40);

          v115 = *(v112 + 56);

          v116 = *(v112 + 72);

          v117 = *(v112 + 88);

          v118 = *(v112 + 120);
          v144 = *(v112 + 104);
          v145 = v118;
          v119 = *(v112 + 152);
          v146 = *(v112 + 136);
          v147 = v119;
          sub_261A54910(&v144);
          type metadata accessor for CounterAnalysis();
          result = swift_deallocPartialClassInstance();
          __break(1u);
          return result;
        }

        v9 = v143;
        type metadata accessor for Platform();
        v84 = swift_allocObject();
        v85 = v155;
        *(v84 + 48) = v154;
        *(v84 + 64) = v85;
        *(v84 + 80) = v156;
        v86 = v153;
        *(v84 + 16) = v152;
        *(v84 + 32) = v86;
        v87 = v122;
        *(v84 + 96) = v135;
        *(v84 + 104) = v87;
        v88 = v120[0];
        *(v84 + 112) = v121;
        *(v84 + 120) = v88;
        *(v84 + 128) = v9;
        *(v84 + 136) = v62;
        v5 = v137;
        *(v137 + 168) = v84;

        v89 = v136;
        v90 = sub_261A3D960(v136, v62);
        sub_261A54910(v89);

        *(v5 + 96) = v90;
        if (qword_27FECAD60 != -1)
        {
          goto LABEL_39;
        }

        goto LABEL_33;
      }

      v65 = *(v5 + 8 * v57);
      ++v64;
      if (v65)
      {
        v63 = __clz(__rbit64(v65));
        v9 = (v65 - 1) & v65;
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v63 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_22:
    v66 = v63 | (v57 << 6);
    v67 = *(v25 + 56);
    v68 = (*(v25 + 48) + 16 * v66);
    v69 = v68[1];
    v141 = *v68;
    v70 = v67 + 32 * v66;
    v71 = *v70;
    LODWORD(v139) = *(v70 + 8);
    v72 = *(v70 + 16);
    v73 = *(v70 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB060, &unk_261A8D2C0);
    v74 = swift_allocObject();
    *(v74 + 16) = v125;
    v75 = v73 ? 0.0 : v72;
    v76 = v139 ? 0.0 : v71;
    *(v74 + 32) = v75;
    *(v74 + 40) = v76;
    *(v124 + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v66;
    v61 = v123;
    v77 = (*(v123 + 48) + 16 * v66);
    *v77 = v141;
    v77[1] = v69;
    *(*(v61 + 56) + 8 * v66) = v74;
    v78 = *(v61 + 16);
    v79 = __OFADD__(v78, 1);
    v80 = v78 + 1;
    if (v79)
    {
      break;
    }

    *(v61 + 16) = v80;

    v62 = v140;
    if (!v9)
    {
      goto LABEL_17;
    }
  }

LABEL_38:
  __break(1u);
LABEL_39:
  swift_once();
LABEL_33:
  v91 = sub_261A853D4();
  __swift_project_value_buffer(v91, qword_27FED7C90);

  v92 = sub_261A853B4();
  v93 = sub_261A85754();

  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    v143 = v141;
    *v94 = 136446978;
    *&v140 = v92;
    v95 = sub_261A79938();
    v97 = sub_261A3E9E8(v95, v96, &v143);

    *(v94 + 4) = v97;
    *(v94 + 12) = 2080;
    v142 = *(*(v5 + 168) + 136);
    *&v125 = v142;
    v98 = *MEMORY[0x277CC8AF0];
    v99 = v126;
    v100 = *(v126 + 104);
    v136 = v9;
    LODWORD(v139) = v93;
    v101 = v133;
    v100(v133, v98, v132);
    v102 = v130;
    v103 = v127;
    v104 = v131;
    (*(v130 + 104))(v127, *MEMORY[0x277CC8B10], v131);

    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAF58, &qword_261A87428);
    sub_261A3BF78(&qword_27FECB038, &qword_27FECAF58, &qword_261A87428);
    v105 = v134;
    sub_261A85154();
    (*(v102 + 8))(v103, v104);
    (*(v99 + 8))(v101, v132);
    sub_261A3BF78(&qword_27FECB040, &qword_27FECB028, &unk_261A87D20);
    v106 = v129;
    sub_261A85674();
    (*(v128 + 8))(v105, v106);

    v107 = sub_261A3E9E8(v144, *(&v144 + 1), &v143);

    *(v94 + 14) = v107;
    *(v94 + 22) = 2050;
    v108 = *(v122 + 16);

    *(v94 + 24) = v108;

    *(v94 + 32) = 2050;
    v109 = v136[2];

    *(v94 + 34) = v109;
    v5 = v137;

    v110 = v140;
    _os_log_impl(&dword_261A33000, v140, v139, "initialized %{public}s with modes %s, %{public}ld expressions, %{public}ld constants", v94, 0x2Au);
    v111 = v141;
    swift_arrayDestroy();
    MEMORY[0x266717700](v111, -1, -1);
    MEMORY[0x266717700](v94, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return v5;
}

unint64_t sub_261A79938()
{
  v1 = v0;
  sub_261A858C4();

  MEMORY[0x2667168A0](v1[6], v1[7]);
  MEMORY[0x2667168A0](10272, 0xE200000000000000);
  MEMORY[0x2667168A0](v1[4], v1[5]);
  MEMORY[0x2667168A0](0x20726F662029, 0xE600000000000000);
  v2 = v0[21];
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);

  MEMORY[0x2667168A0](v3, v4);

  return 0xD000000000000016;
}

Recount::CounterAnalysis::CodingKeys_optional __swiftcall CounterAnalysis.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  v3 = sub_261A859E4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CounterAnalysis.CodingKeys.stringValue.getter()
{
  v1 = 0x6E6F63696C6973;
  if (*v0 != 1)
  {
    v1 = 0x636944746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6369666963657073;
  }
}

uint64_t sub_261A79AF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x6E6F63696C6973;
  if (v2 != 1)
  {
    v4 = 0x636944746E657665;
    v3 = 0xEF7972616E6F6974;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6369666963657073;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xED00006E6F697461;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6E6F63696C6973;
  if (*a2 != 1)
  {
    v8 = 0x636944746E657665;
    v7 = 0xEF7972616E6F6974;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6369666963657073;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xED00006E6F697461;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_261A85BA4();
  }

  return v11 & 1;
}

uint64_t sub_261A79C18()
{
  v1 = *v0;
  sub_261A85C44();
  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A79CD4()
{
  *v0;
  *v0;
  sub_261A85554();
}

uint64_t sub_261A79D7C()
{
  v1 = *v0;
  sub_261A85C44();
  sub_261A85554();

  return sub_261A85C84();
}

void sub_261A79E40(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006E6F697461;
  v4 = 0xE700000000000000;
  v5 = 0x6E6F63696C6973;
  if (v2 != 1)
  {
    v5 = 0x636944746E657665;
    v4 = 0xEF7972616E6F6974;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6369666963657073;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_261A79EB8()
{
  v1 = 0x6E6F63696C6973;
  if (*v0 != 1)
  {
    v1 = 0x636944746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6369666963657073;
  }
}

uint64_t sub_261A79F64(uint64_t a1)
{
  v2 = sub_261A7E200();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A79FA0(uint64_t a1)
{
  v2 = sub_261A7E200();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261A79FF4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBE58, &qword_261A8CEA8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v32[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A7E200();
  sub_261A85CD4();
  v10 = *(v2 + 120);
  v52[0] = *(v2 + 104);
  v52[1] = v10;
  v11 = *(v2 + 152);
  v52[2] = *(v2 + 136);
  v52[3] = v11;
  v12 = *(v2 + 120);
  v48 = *(v2 + 104);
  v49 = v12;
  v13 = *(v2 + 152);
  v50 = *(v2 + 136);
  v51 = v13;
  v47 = 0;
  sub_261A548D8(v52, &v42);
  sub_261A7E254();
  v14 = v53;
  sub_261A85B54();
  if (v14)
  {
    v42 = v48;
    v43 = v49;
    v44 = v50;
    v45 = v51;
    sub_261A54910(&v42);
    (*(v5 + 8))(v8, v4);
    if (qword_27FECAD60 != -1)
    {
      swift_once();
    }

    v19 = sub_261A853D4();
    __swift_project_value_buffer(v19, qword_27FED7C90);

    v20 = v14;
    v21 = sub_261A853B4();
    v22 = sub_261A85744();

    MEMORY[0x2667175A0](v14);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v42 = v24;
      *v23 = 136446466;
      v25 = sub_261A79938();
      v27 = sub_261A3E9E8(v25, v26, &v42);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2082;
      swift_getErrorValue();
      v28 = sub_261A85BF4();
      v30 = sub_261A3E9E8(v28, v29, &v42);

      *(v23 + 14) = v30;
      _os_log_impl(&dword_261A33000, v21, v22, "failed to encode %{public}s: %{public}s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266717700](v24, -1, -1);
      MEMORY[0x266717700](v23, -1, -1);
    }

    return swift_willThrow();
  }

  else
  {
    v53 = v5;
    v41[0] = v48;
    v41[1] = v49;
    v41[2] = v50;
    v41[3] = v51;
    sub_261A54910(v41);
    v15 = *(v2 + 168);
    v16 = *(v15 + 32);
    v17 = *(v15 + 48);
    v18 = *(v15 + 80);
    v45 = *(v15 + 64);
    v46 = v18;
    v43 = v16;
    v44 = v17;
    v42 = *(v15 + 16);
    v38 = v17;
    v39 = v45;
    v40 = v18;
    v36 = v42;
    v37 = v16;
    v35 = 1;
    sub_261A39B98(&v42, v34);
    sub_261A5FE58();
    sub_261A85B54();
    v34[2] = v38;
    v34[3] = v39;
    v34[4] = v40;
    v34[0] = v36;
    v34[1] = v37;
    sub_261A39BF4(v34);
    v33 = *(v15 + 96);
    v32[7] = 2;
    type metadata accessor for EventDictionary();
    sub_261A7E724(&qword_27FECB9C0, 255, type metadata accessor for EventDictionary);
    sub_261A85B54();
    return v53[1](v8, v4);
  }
}

uint64_t sub_261A7A4C4(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 168);
  v6 = *(v5 + 136);
  v23[0] = a1;
  v23[1] = a2;
  v22[2] = v23;

  v7 = sub_261A779E4(sub_261A7E2A8, v22, v6);

  if (v7)
  {
    v8 = *(v2 + 152);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9[1];
      v24[0] = *v9;
      v24[1] = v11;
      v12 = v9[2];
      v13 = v9[3];
      v14 = v9[5];
      v24[4] = v9[4];
      v24[5] = v14;
      v24[2] = v12;
      v24[3] = v13;
      if (v24[0] != __PAIR128__(a2, a1))
      {
        v9 += 6;
        if ((sub_261A85BA4() & 1) == 0)
        {
          continue;
        }
      }

      type metadata accessor for CountingMode();
      swift_allocObject();
      sub_261A3DEAC(v24, v23);

      return sub_261A6A790(v24, v5);
    }

    if (qword_27FECAD60 != -1)
    {
      swift_once();
    }

    v16 = sub_261A853D4();
    __swift_project_value_buffer(v16, qword_27FED7C90);

    v17 = v2;
    v18 = sub_261A853B4();
    v19 = sub_261A85744();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23[0] = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_261A3E9E8(*(v17 + 32), *(v17 + 40), v23);
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_261A3E9E8(a1, a2, v23);
      _os_log_impl(&dword_261A33000, v18, v19, "CounterAnalysis %s failed to create mode named %s, despite being supported", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266717700](v21, -1, -1);
      MEMORY[0x266717700](v20, -1, -1);
    }
  }

  return 0;
}

void *CounterAnalysis.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[12];

  v7 = v0[14];
  v8 = v0[16];
  v9 = v0[18];
  v10 = v0[19];
  v11 = v0[20];

  v12 = v0[21];

  return v0;
}

uint64_t CounterAnalysis.__deallocating_deinit()
{
  CounterAnalysis.deinit();

  return MEMORY[0x2821FE8D8](v0, 176, 7);
}

uint64_t sub_261A7A850@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_261A7DDC8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t CounterAnalysis.hash(into:)()
{
  v1 = v0[4];
  v2 = v0[5];
  sub_261A85554();
  v3 = v0[21];
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);

  sub_261A85554();
}

uint64_t CounterAnalysis.hashValue.getter()
{
  sub_261A85C44();
  v1 = v0[4];
  v2 = v0[5];
  sub_261A85554();
  v3 = v0[21];
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);

  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A7A974()
{
  v1 = *v0;
  sub_261A85C44();
  v2 = v1[4];
  v3 = v1[5];
  sub_261A85554();
  v4 = v1[21];
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);

  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A7A9E4()
{
  v1 = *v0;
  v2 = v1[4];
  v3 = v1[5];
  sub_261A85554();
  v4 = v1[21];
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);

  sub_261A85554();
}

uint64_t sub_261A7AA4C()
{
  sub_261A85C44();
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 40);
  sub_261A85554();
  v4 = *(v1 + 168);
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);

  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A7AAC4@<X0>(void *a1@<X8>)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v3 = sub_261A85394();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v34 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v8 = sub_261A85334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBEC0, &qword_261A8D320);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_261A87870;
  v10 = *MEMORY[0x277CBE8E8];
  *(v9 + 32) = *MEMORY[0x277CBE8E8];
  type metadata accessor for URLResourceKey();
  v11 = v10;
  v12 = sub_261A856A4();

  v38[0] = 0;
  v13 = [v7 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:v12 options:0 error:v38];

  v14 = v38[0];
  if (!v13)
  {
    v29 = v38[0];
    v30 = sub_261A852F4();

    swift_willThrow();
    result = MEMORY[0x2667175A0](v30);
LABEL_10:
    v18 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  v15 = sub_261A856B4();
  v16 = v14;

  v17 = *(v15 + 16);
  if (!v17)
  {

    goto LABEL_10;
  }

  v32[2] = v1;
  v33 = a1;
  v38[0] = MEMORY[0x277D84F90];
  sub_261A3F4C0(0, v17, 0);
  v18 = v38[0];
  v20 = *(v4 + 16);
  v19 = v4 + 16;
  v21 = *(v19 + 64);
  v32[1] = v15;
  v35 = (v21 + 32) & ~v21;
  v36 = v20;
  v22 = v15 + v35;
  v23 = *(v19 + 56);
  v37 = v19;
  v24 = v34;
  do
  {
    v36(v24, v22, v3);
    v38[0] = v18;
    v25 = v3;
    v27 = v18[2];
    v26 = v18[3];
    if (v27 >= v26 >> 1)
    {
      sub_261A3F4C0(v26 > 1, v27 + 1, 1);
      v18 = v38[0];
    }

    v18[2] = v27 + 1;
    (*(v19 + 16))(v18 + v35 + v27 * v23, v24, v25);
    v22 += v23;
    --v17;
    v3 = v25;
  }

  while (v17);

  a1 = v33;
LABEL_11:
  *a1 = v18;
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_261A7ADE8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_261A85654();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_261A65AFC(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_261A65AFC((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_261A85634();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_261A85574();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_261A85574();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_261A85654();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_261A65AFC(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_261A85654();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_261A65AFC(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_261A65AFC((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_261A85574();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

void *sub_261A7B1A8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB118, &qword_261A8D2D0);
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

uint64_t sub_261A7B22C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_261A76A3C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_261A7B298(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_261A7B298(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_261A85B84();
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
        v5 = sub_261A856E4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_261A7B460(v7, v8, a1, v4);
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
    return sub_261A7B390(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_261A7B390(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_261A85BA4(), (result & 1) == 0))
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

uint64_t sub_261A7B460(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_261A76620(v8);
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
        sub_261A7BA3C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
        result = sub_261A85BA4();
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
            result = sub_261A85BA4();
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
      result = sub_261A65FE8(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_261A65FE8((v39 > 1), v40 + 1, 1, v8);
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
        sub_261A7BA3C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_261A76620(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_261A76594(v44);
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
    if (v37 || (result = sub_261A85BA4(), (result & 1) == 0))
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

uint64_t sub_261A7BA3C(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_261A85BA4() & 1) != 0)
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
      if (!v21 && (sub_261A85BA4() & 1) != 0)
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

void *sub_261A7BC64(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_261A7BDD8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_261A85BA4() & 1;
  }
}

uint64_t sub_261A7BE30@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t _s7Recount15CounterAnalysisC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[4] == a2[4] && a1[5] == a2[5];
  if (v4 || (v5 = sub_261A85BA4(), result = 0, (v5 & 1) != 0))
  {
    v7 = a1[21];
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    v10 = a2[21];
    if (v8 == *(v10 + 32) && v9 == *(v10 + 40))
    {
      return 1;
    }

    else
    {

      return sub_261A85BA4();
    }
  }

  return result;
}

uint64_t sub_261A7BF08(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x266716A20](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_261A81300(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_261A7BFA0(char *a1)
{
  v169 = a1;
  v1 = 0;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBEA0, &qword_261A8D2D8);
  v161 = *(v162 - 8);
  v2 = *(v161 + 64);
  MEMORY[0x28223BE20](v162);
  v160 = v148 - v3;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB018, &unk_261A87D10);
  v156 = *(v168 - 8);
  v4 = *(v156 + 64);
  MEMORY[0x28223BE20](v168);
  v153 = v148 - v5;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB020, &qword_261A87880);
  v152 = *(v163 - 8);
  v6 = *(v152 + 64);
  MEMORY[0x28223BE20](v163);
  v150 = v148 - v7;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB028, &unk_261A87D20);
  v154 = *(v155 - 8);
  v8 = *(v154 + 64);
  MEMORY[0x28223BE20](v155);
  v151 = v148 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAEC8, &qword_261A8BFE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v172 = v148 - v12;
  v173 = sub_261A85314();
  v166 = *(v173 - 1);
  v13 = *(v166 + 8);
  MEMORY[0x28223BE20](v173);
  v15 = v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_261A85394();
  v175 = *(v16 - 8);
  v17 = *(v175 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v171 = (v148 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v148 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = (v148 - v24);
  v26 = MEMORY[0x28223BE20](v23);
  v170 = v148 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = (v148 - v29);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = v148 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = (v148 - v35);
  MEMORY[0x28223BE20](v34);
  v38 = (v148 - v37);
  v39 = sub_261A85504();
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v174 = v16;
  if (v169)
  {

LABEL_15:
    v77 = v168;
    goto LABEL_16;
  }

  v164 = v30;
  v165 = v33;
  v159 = v38;
  v167 = v36;
  v169 = v15;
  v42 = v168;
  v43 = getenv("RECOUNT_ANALYSIS_PATH");
  v157 = v22;
  if (v43)
  {
    sub_261A854F4();
    v44 = sub_261A854E4();
    if (v45)
    {
      v177 = 59;
      v178 = 0xE100000000000000;
      MEMORY[0x28223BE20](v44);
      v148[-2] = &v177;
      v48 = sub_261A7ADE8(0x7FFFFFFFFFFFFFFFLL, 1, sub_261A7E818, &v148[-4], v46, v47, v148);
      v49 = *(v48 + 16);
      if (!v49)
      {

        v41 = MEMORY[0x277D84F90];
        v22 = v157;
        v77 = v42;
LABEL_16:
        v78 = MEMORY[0x277D84F90];
        if (qword_27FECAD60 != -1)
        {
          goto LABEL_65;
        }

        while (1)
        {
          v79 = sub_261A853D4();
          v80 = __swift_project_value_buffer(v79, qword_27FED7C90);

          v159 = v80;
          v81 = sub_261A853B4();
          v82 = sub_261A85734();

          if (os_log_type_enabled(v81, v82))
          {
            LODWORD(v166) = v82;
            v167 = v81;
            v157 = v22;
            v83 = swift_slowAlloc();
            v164 = swift_slowAlloc();
            v179 = v164;
            v165 = v83;
            *v83 = 136446210;
            v84 = *(v41 + 16);
            v85 = MEMORY[0x277D84F90];
            v169 = v41;
            if (v84)
            {
              v149 = v25;
              v158 = v1;
              v177 = MEMORY[0x277D84F90];
              sub_261A3EFB0(0, v84, 0);
              v85 = v177;
              v86 = *(v175 + 16);
              v87 = v41 + ((*(v175 + 80) + 32) & ~*(v175 + 80));
              v172 = *(v175 + 72);
              v173 = v86;
              v88 = (v175 + 8);
              do
              {
                v89 = v170;
                v173(v170, v87, v16);
                v90 = sub_261A85364();
                v92 = v91;
                (*v88)(v89, v16);
                v177 = v85;
                v94 = *(v85 + 16);
                v93 = *(v85 + 24);
                if (v94 >= v93 >> 1)
                {
                  sub_261A3EFB0((v93 > 1), v94 + 1, 1);
                  v85 = v177;
                }

                *(v85 + 16) = v94 + 1;
                v95 = v85 + 16 * v94;
                *(v95 + 32) = v90;
                *(v95 + 40) = v92;
                v87 += v172;
                --v84;
                v16 = v174;
              }

              while (v84);
              v1 = v158;
              v25 = v149;
              v77 = v168;
            }

            v176 = v85;
            v96 = v152;
            v97 = v150;
            (*(v152 + 104))(v150, *MEMORY[0x277CC8AF0], v163);
            v98 = v156;
            v99 = v153;
            (*(v156 + 104))(v153, *MEMORY[0x277CC8B10], v77);
            v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAF58, &qword_261A87428);
            v173 = sub_261A3BF78(&qword_27FECB038, &qword_27FECAF58, &qword_261A87428);
            v100 = v151;
            sub_261A85154();
            (*(v98 + 8))(v99, v168);
            (*(v96 + 8))(v97, v163);
            sub_261A3BF78(&qword_27FECB040, &qword_27FECB028, &unk_261A87D20);
            v101 = v155;
            sub_261A85674();
            (*(v154 + 8))(v100, v101);

            v102 = sub_261A3E9E8(v177, v178, &v179);

            v103 = v165;
            *(v165 + 4) = v102;
            v104 = v167;
            _os_log_impl(&dword_261A33000, v167, v166, "searching in %{public}s for CounterAnalysis specifications", v103, 0xCu);
            v105 = v164;
            __swift_destroy_boxed_opaque_existential_1(v164);
            MEMORY[0x266717700](v105, -1, -1);
            MEMORY[0x266717700](v103, -1, -1);

            v22 = v157;
            v41 = v169;
            v78 = MEMORY[0x277D84F90];
          }

          else
          {
          }

          v177 = v78;
          v77 = *(v41 + 16);
          if (v77)
          {
            v78 = 0;
            v59 = (v175 + 8);
            while (v78 < *(v41 + 16))
            {
              (*(v175 + 16))(v25, v41 + ((*(v175 + 80) + 32) & ~*(v175 + 80)) + *(v175 + 72) * v78, v16);
              sub_261A7AAC4(&v179);
              if (v1)
              {
                goto LABEL_68;
              }

              ++v78;
              (*v59)(v25, v16);
              sub_261A7FB04(v179);
              if (v77 == v78)
              {
                goto LABEL_31;
              }
            }

            __break(1u);
          }

          else
          {
LABEL_31:

            v106 = v177;
            v179 = MEMORY[0x277D84FA0];
            v169 = *(v177 + 16);
            if (!v169)
            {

              v78 = MEMORY[0x277D84F90];
LABEL_52:

              v122 = sub_261A853B4();
              v123 = sub_261A85734();
              if (os_log_type_enabled(v122, v123))
              {
                v124 = swift_slowAlloc();
                v125 = swift_slowAlloc();
                v126 = v125;
                v177 = v125;
                *v124 = 136446210;
                v127 = *(v78 + 16);
                v128 = MEMORY[0x277D84F90];
                if (v127)
                {
                  v167 = v125;
                  LODWORD(v168) = v123;
                  v169 = v124;
                  v171 = v122;
                  v176 = MEMORY[0x277D84F90];
                  sub_261A3EFB0(0, v127, 0);
                  v128 = v176;
                  v129 = v175 + 16;
                  v175 = *(v175 + 16);
                  v130 = v78 + ((*(v129 + 64) + 32) & ~*(v129 + 64));
                  v172 = *(v129 + 56);
                  v173 = v78;
                  v131 = (v129 - 8);
                  do
                  {
                    v132 = v170;
                    v133 = v174;
                    (v175)(v170, v130, v174);
                    v134 = sub_261A85364();
                    v136 = v135;
                    (*v131)(v132, v133);
                    v176 = v128;
                    v138 = *(v128 + 16);
                    v137 = *(v128 + 24);
                    if (v138 >= v137 >> 1)
                    {
                      sub_261A3EFB0((v137 > 1), v138 + 1, 1);
                      v128 = v176;
                    }

                    *(v128 + 16) = v138 + 1;
                    v139 = v128 + 16 * v138;
                    *(v139 + 32) = v134;
                    *(v139 + 40) = v136;
                    v130 += v172;
                    --v127;
                  }

                  while (v127);
                  v78 = v173;
                  v122 = v171;
                  v124 = v169;
                  LOBYTE(v123) = v168;
                  v126 = v167;
                }

                v140 = MEMORY[0x2667169D0](v128, MEMORY[0x277D837D0]);
                v142 = v141;

                v143 = sub_261A3E9E8(v140, v142, &v177);

                *(v124 + 4) = v143;

                _os_log_impl(&dword_261A33000, v122, v123, "discovered specifications: %{public}s", v124, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v126);
                MEMORY[0x266717700](v126, -1, -1);
                MEMORY[0x266717700](v124, -1, -1);
              }

              else
              {
              }

              v177 = v78;
              swift_getKeyPath();
              v144 = v160;
              sub_261A85284();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBEA8, &qword_261A8D318);
              sub_261A3BF78(&qword_27FECBEB0, &qword_27FECBEA8, &qword_261A8D318);
              sub_261A3BF78(&qword_27FECBEB8, &qword_27FECBEA0, &qword_261A8D2D8);
              v145 = v162;
              v146 = sub_261A85664();
              (*(v161 + 8))(v144, v145);

              return v146;
            }

            v158 = v1;
            v41 = 0;
            v165 = (*(v175 + 80) + 32) & ~*(v175 + 80);
            v167 = (v177 + v165);
            v172 = v175 + 16;
            v166 = (v175 + 8);
            v164 = (v175 + 32);
            v78 = MEMORY[0x277D84F90];
            v168 = v177;
            while (v41 < *(v106 + 16))
            {
              v173 = v78;
              v107 = *(v175 + 72);
              v108 = *(v175 + 16);
              v108(v22, v167 + v107 * v41, v16);
              v109 = v179;
              v1 = v22;
              v110 = sub_261A85324();
              v25 = v111;
              if (v109[2] && (v112 = v110, v113 = v109[5], sub_261A85C44(), sub_261A85554(), v114 = sub_261A85C84(), v115 = -1 << *(v109 + 32), v116 = v114 & ~v115, ((*(v109 + ((v116 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v116) & 1) != 0))
              {
                v77 = ~v115;
                while (1)
                {
                  v117 = (v109[6] + 16 * v116);
                  v118 = *v117 == v112 && v117[1] == v25;
                  if (v118 || (sub_261A85BA4() & 1) != 0)
                  {
                    break;
                  }

                  v116 = (v116 + 1) & v77;
                  if (((*(v109 + ((v116 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v116) & 1) == 0)
                  {
                    goto LABEL_45;
                  }
                }

                v22 = v1;
                v16 = v174;
                (*v166)(v1, v174);

                v78 = v173;
              }

              else
              {
LABEL_45:

                v22 = v1;
                v119 = sub_261A85324();
                sub_261A81300(&v177, v119, v120);

                v16 = v174;
                v108(v171, v1, v174);
                v78 = v173;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v78 = sub_261A676B8(0, *(v78 + 16) + 1, 1, v78);
                }

                v77 = *(v78 + 16);
                v121 = *(v78 + 24);
                if (v77 >= v121 >> 1)
                {
                  v78 = sub_261A676B8(v121 > 1, v77 + 1, 1, v78);
                }

                (*v166)(v1, v16);
                *(v78 + 16) = v77 + 1;
                (*v164)(v78 + v165 + v77 * v107, v171, v16);
              }

              ++v41;
              v106 = v168;
              if (v41 == v169)
              {

                goto LABEL_52;
              }
            }
          }

          __break(1u);
LABEL_65:
          swift_once();
        }
      }

      v149 = v25;
      v158 = 0;
      v177 = MEMORY[0x277D84F90];
      sub_261A3F4C0(0, v49, 0);
      v41 = v177;
      LODWORD(v167) = *MEMORY[0x277CC91E8];
      v166 += 104;
      v165 = v175 + 56;
      v164 = (v175 + 32);
      v148[1] = v48;
      v50 = (v48 + 56);
      v51 = v159;
      do
      {
        v52 = *(v50 - 3);
        v53 = *(v50 - 2);
        v55 = *(v50 - 1);
        v54 = *v50;

        MEMORY[0x266716840](v52, v53, v55, v54);
        (*v166)(v169, v167, v173);
        (*v165)(v172, 1, 1, v16);
        sub_261A85374();

        v177 = v41;
        v57 = *(v41 + 16);
        v56 = *(v41 + 24);
        if (v57 >= v56 >> 1)
        {
          sub_261A3F4C0(v56 > 1, v57 + 1, 1);
          v41 = v177;
        }

        *(v41 + 16) = v57 + 1;
        (*(v175 + 32))(v41 + ((*(v175 + 80) + 32) & ~*(v175 + 80)) + *(v175 + 72) * v57, v51, v16);
        v50 += 4;
        --v49;
      }

      while (v49);

      goto LABEL_14;
    }
  }

  v158 = 0;
  v58 = sub_261A85494();
  v59 = [objc_opt_self() bundleWithIdentifier_];

  if (v59)
  {
    v149 = v25;
    v159 = v59;
    v60 = [v59 resourceURL];
    v59 = v173;
    v61 = v169;
    v1 = v166;
    v62 = v165;
    v25 = v164;
    if (v60)
    {
      v63 = v60;
      sub_261A85354();

      v177 = 0x736973796C616E41;
      v178 = 0xE800000000000000;
      v64 = *MEMORY[0x277CC91C0];
      v65 = *(v1 + 13);
      v65(v61, v64, v59);
      sub_261A4E05C();
      sub_261A85384();
      (*(v1 + 1))(v61, v59);
      v66 = v175;
      v67 = v62;
      v68 = *(v175 + 8);
      v69 = v25;
      v70 = v174;
      v68(v69, v174);
      sub_261A85304();
      v68(v67, v70);
      v65(v61, v64, v59);
      v16 = v70;
      (*(v66 + 56))(v172, 1, 1, v70);
      v71 = v170;
      sub_261A85374();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB120, &qword_261A8D2E0);
      v72 = *(v66 + 72);
      v73 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_261A8CE90;
      v75 = v74 + v73;
      v76 = v167;
      (*(v66 + 16))(v75, v167, v70);
      (*(v66 + 32))(v75 + v72, v71, v70);

      v68(v76, v70);
      v41 = v74;
LABEL_14:
      v1 = v158;
      v22 = v157;
      v25 = v149;
      goto LABEL_15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_68:
  MEMORY[0x2667175A0](v1);
  (*v59)(v25, v16);

  __break(1u);
  return result;
}

unint64_t sub_261A7D514()
{
  result = qword_27FECBE50;
  if (!qword_27FECBE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBE50);
  }

  return result;
}

uint64_t sub_261A7D568(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, int a4, void *a5)
{
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v41 = -1 << *(a1 + 32);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v43 = a5;
  v44 = v7;
  v42 = v11;
  while (v10)
  {
    v51 = a4;
    v16 = v12;
LABEL_14:
    v18 = __clz(__rbit64(v10)) | (v16 << 6);
    v19 = (*(a1 + 48) + 16 * v18);
    v20 = v19[1];
    v21 = *(*(a1 + 56) + 8 * v18);
    v50[0] = *v19;
    v50[1] = v20;
    v50[2] = v21;

    a2(&v47, v50);

    v23 = v47;
    v22 = v48;
    v24 = v49;
    v25 = *a5;
    v27 = sub_261A5BD84(v47, v48);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_25;
    }

    v31 = v26;
    if (v25[3] >= v30)
    {
      if ((v51 & 1) == 0)
      {
        sub_261A750B0();
      }
    }

    else
    {
      sub_261A75A68(v30, v51 & 1);
      v32 = *a5;
      v33 = sub_261A5BD84(v23, v22);
      if ((v31 & 1) != (v34 & 1))
      {
        goto LABEL_27;
      }

      v27 = v33;
    }

    v10 &= v10 - 1;
    v35 = *a5;
    if (v31)
    {
      v13 = *(v35[7] + 8 * v27);

      v14 = v35[7];
      v15 = *(v14 + 8 * v27);
      *(v14 + 8 * v27) = v13;
    }

    else
    {
      v35[(v27 >> 6) + 8] |= 1 << v27;
      v36 = (v35[6] + 16 * v27);
      *v36 = v23;
      v36[1] = v22;
      *(v35[7] + 8 * v27) = v24;
      v37 = v35[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_26;
      }

      v35[2] = v39;
    }

    a4 = 1;
    v12 = v16;
    a5 = v43;
    v7 = v44;
    v11 = v42;
  }

  v17 = v12;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v11)
    {
      sub_261A70290();
    }

    v10 = *(v7 + 8 * v16);
    ++v17;
    if (v10)
    {
      v51 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_261A85BE4();
  __break(1u);
  return result;
}

uint64_t sub_261A7D80C(char *a1, __int128 *a2)
{
  v53 = sub_261A85394();
  v5 = *(v53 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v53);
  v52 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261A85174();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2[3];
  v63 = a2[2];
  v64 = v13;
  v65 = a2[4];
  v14 = a2[1];
  v61 = *a2;
  v62 = v14;
  v15 = sub_261A853A4();
  if (v2)
  {
    v17 = v53;
    v27 = v52;
    if (qword_27FECAD60 != -1)
    {
      swift_once();
    }

    v28 = sub_261A853D4();
    v26 = __swift_project_value_buffer(v28, qword_27FED7C90);
    (*(v5 + 16))(v27, a1, v17);
    sub_261A39B98(&v61, &v55);
    v29 = v2;
    v30 = sub_261A853B4();
    v31 = sub_261A85744();
    sub_261A39BF4(&v61);
    MEMORY[0x2667175A0](v2);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v51 = a1;
      v33 = v32;
      v50 = swift_slowAlloc();
      *&v55 = v50;
      *v33 = 136446722;
      v34 = sub_261A85364();
      v36 = v35;
      v37 = v27;
      v38 = *(v5 + 8);
      v38(v37, v53);
      v39 = sub_261A3E9E8(v34, v36, &v55);

      *(v33 + 4) = v39;
      *(v33 + 12) = 2082;
      v41 = *(&v62 + 1);
      v40 = v62;

      sub_261A39BF4(&v61);
      v42 = sub_261A3E9E8(v40, v41, &v55);

      *(v33 + 14) = v42;
      *(v33 + 22) = 2082;
      swift_getErrorValue();
      v43 = sub_261A85BF4();
      v45 = sub_261A3E9E8(v43, v44, &v55);

      *(v33 + 24) = v45;
      v17 = v53;
      _os_log_impl(&dword_261A33000, v30, v31, "failed to decode CounterAnalysis from URL %{public}s for %{public}s: %{public}s", v33, 0x20u);
      v26 = v50;
      swift_arrayDestroy();
      MEMORY[0x266717700](v26, -1, -1);
      v46 = v33;
      a1 = v51;
      MEMORY[0x266717700](v46, -1, -1);
    }

    else
    {
      sub_261A39BF4(&v61);

      v47 = v27;
      v38 = *(v5 + 8);
      v38(v47, v17);
    }

    swift_willThrow();
    v38(a1, v17);
  }

  else
  {
    v18 = v16;
    v50 = v5;
    v51 = a1;
    v19 = v15;
    v20 = sub_261A851B4();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    sub_261A851A4();
    (*(v9 + 104))(v12, *MEMORY[0x277CC86A8], v8);
    sub_261A85184();
    sub_261A85164();
    sub_261A7E6D0();
    sub_261A85194();
    v60[0] = v55;
    v60[1] = v56;
    v60[2] = v57;
    v60[3] = v58;
    v57 = v63;
    v58 = v64;
    v59 = v65;
    v55 = v61;
    v56 = v62;
    sub_261A39B98(&v61, v54);
    v23 = sub_261A4D704(&v55);
    v24 = v53;
    v25 = v23;
    v57 = v63;
    v58 = v64;
    v59 = v65;
    v55 = v61;
    v56 = v62;
    type metadata accessor for CounterAnalysis();
    v26 = swift_allocObject();
    sub_261A39B98(&v61, v54);
    sub_261A78B30(v60, &v55, v25);
    (*(v50 + 8))(v51, v24);
    sub_261A39BF4(&v61);

    sub_261A47728(v19, v18);
  }

  return v26;
}

uint64_t sub_261A7DDC8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBE90, &qword_261A8D2A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v21 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A7E200();
  sub_261A85CB4();
  if (v1)
  {
    if (qword_27FECAD60 != -1)
    {
      swift_once();
    }

    v10 = sub_261A853D4();
    v20 = __swift_project_value_buffer(v10, qword_27FED7C90);
    v11 = v1;
    v12 = sub_261A853B4();
    v13 = sub_261A85744();
    MEMORY[0x2667175A0](v1);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v23 = v15;
      *v14 = 136446210;
      swift_getErrorValue();
      v16 = sub_261A85BF4();
      v20 = v17;
      v18 = sub_261A3E9E8(v16, v17, &v23);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_261A33000, v12, v13, "failed to decode CounterAnalysis: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x266717700](v15, -1, -1);
      MEMORY[0x266717700](v14, -1, -1);
    }

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v21[0]) = 0;
    sub_261A7E6D0();
    sub_261A85A94();
    v28[0] = v23;
    v28[1] = v24;
    v28[2] = v25;
    v28[3] = v26;
    type metadata accessor for EventDictionary();
    LOBYTE(v21[0]) = 2;
    sub_261A7E724(&qword_27FECBA00, 255, type metadata accessor for EventDictionary);
    sub_261A85A94();
    v9 = v23;
    v22 = 1;
    sub_261A5FFB0();
    sub_261A85A94();
    v21[2] = v25;
    v21[3] = v26;
    v21[4] = v27;
    v21[0] = v23;
    v21[1] = v24;
    type metadata accessor for CounterAnalysis();
    v20 = swift_allocObject();
    sub_261A78B30(v28, v21, v9);
    (*(v4 + 8))(v7, v3);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v20;
}

unint64_t sub_261A7E200()
{
  result = qword_27FECBE60;
  if (!qword_27FECBE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBE60);
  }

  return result;
}

unint64_t sub_261A7E254()
{
  result = qword_27FECBE68;
  if (!qword_27FECBE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBE68);
  }

  return result;
}

unint64_t sub_261A7E2C8()
{
  result = qword_27FECBE70;
  if (!qword_27FECBE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBE70);
  }

  return result;
}

unint64_t sub_261A7E320()
{
  result = qword_27FECBE78;
  if (!qword_27FECBE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBE78);
  }

  return result;
}

unint64_t sub_261A7E378()
{
  result = qword_27FECBE80;
  if (!qword_27FECBE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBE80);
  }

  return result;
}

uint64_t sub_261A7E5A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 60);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 30;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

double sub_261A7E5F8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 88) = 0;
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 96) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      HIDWORD(v4) = -a2;
      LODWORD(v4) = -a2;
      *a1 = 0u;
      *(a1 + 48) = 0;
      *(a1 + 56) = (v4 >> 2) << 32;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      return result;
    }

    *(a1 + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_261A7E6D0()
{
  result = qword_27FECBE98;
  if (!qword_27FECBE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBE98);
  }

  return result;
}

uint64_t sub_261A7E724(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_261A7E76C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261A85324();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_261A7E798(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_261A85BA4() & 1;
  }
}

unint64_t sub_261A7E834()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB018, &unk_261A87D10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v41 - v4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB020, &qword_261A87880);
  v48 = *(v50 - 8);
  v6 = *(v48 + 64);
  MEMORY[0x28223BE20](v50);
  v47 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB028, &unk_261A87D20);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v49 = &v41 - v11;
  v12 = *v0;
  v13 = *(v0 + 8);
  v14 = v0[2];
  v15 = *(v14 + 16);
  v16 = MEMORY[0x277D84F90];
  v51 = v17;
  v52 = v10;
  if (v15)
  {
    v42 = v12;
    v43 = v13;
    v44 = v5;
    v45 = v2;
    v46 = v1;
    v57 = MEMORY[0x277D84F90];
    sub_261A3EFB0(0, v15, 0);
    v16 = v57;
    v18 = (v14 + 32);
    v53 = xmmword_261A87870;
    v19 = MEMORY[0x277D839F8];
    v20 = MEMORY[0x277D83A80];
    do
    {
      v21 = *v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB030, &qword_261A88860);
      v22 = swift_allocObject();
      *(v22 + 16) = v53;
      *(v22 + 56) = v19;
      *(v22 + 64) = v20;
      *(v22 + 32) = v21;
      v23 = sub_261A854D4();
      v25 = v24;
      v57 = v16;
      v27 = *(v16 + 16);
      v26 = *(v16 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_261A3EFB0((v26 > 1), v27 + 1, 1);
        v16 = v57;
      }

      *(v16 + 16) = v27 + 1;
      v28 = v16 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
      ++v18;
      --v15;
    }

    while (v15);
    v2 = v45;
    v1 = v46;
    v5 = v44;
    v13 = v43;
    v12 = v42;
  }

  v57 = 0;
  v58 = 0xE000000000000000;
  sub_261A858C4();

  v57 = 0xD000000000000012;
  v58 = 0x8000000261A8EEC0;
  v55 = v12;
  v29 = sub_261A85B94();
  MEMORY[0x2667168A0](v29);

  MEMORY[0x2667168A0](544108320, 0xE400000000000000);
  v30 = 0xEA00000000007963;
  v31 = 0x6E65696369666645;
  if (v13 != 1)
  {
    v31 = 0x616D726F66726550;
    v30 = 0xEB0000000065636ELL;
  }

  if (v13)
  {
    v32 = v31;
  }

  else
  {
    v32 = 0x647261646E617453;
  }

  if (v13)
  {
    v33 = v30;
  }

  else
  {
    v33 = 0xE800000000000000;
  }

  MEMORY[0x2667168A0](v32, v33);

  MEMORY[0x2667168A0](0x920666F20, 0xE500000000000000);
  v54 = v16;
  v35 = v47;
  v34 = v48;
  v36 = v50;
  (*(v48 + 104))(v47, *MEMORY[0x277CC8AF0], v50);
  (*(v2 + 104))(v5, *MEMORY[0x277CC8B10], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAF58, &qword_261A87428);
  sub_261A3BF78(&qword_27FECB038, &qword_27FECAF58, &qword_261A87428);
  v37 = v2;
  v38 = v49;
  sub_261A85154();
  (*(v37 + 8))(v5, v1);
  (*(v34 + 8))(v35, v36);
  sub_261A3BF78(&qword_27FECB040, &qword_27FECB028, &unk_261A87D20);
  v39 = v52;
  sub_261A85674();
  (*(v51 + 8))(v38, v39);

  MEMORY[0x2667168A0](v55, v56);

  return v57;
}