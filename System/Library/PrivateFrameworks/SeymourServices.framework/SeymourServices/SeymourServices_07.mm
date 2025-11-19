uint64_t sub_226F4FEB8(uint64_t a1)
{
  v2 = sub_2276682D0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226F4FF14(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276682D0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226F4FF78(uint64_t a1)
{
  v2 = sub_227669480();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8B18, &qword_227671788);
    v10 = sub_22766CDE0();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_226F51878(&unk_2813A54E0, MEMORY[0x277D53C88]);
      v18 = sub_22766BF50();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v6, *(v10 + 48) + v20 * v15, v2);
          sub_226F51878(&qword_27D7B8B20, MEMORY[0x277D53C88]);
          v25 = sub_22766BFB0();
          v26 = *v16;
          (*v16)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_226F50298(uint64_t a1)
{
  v2 = sub_2276650A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8B08, &qword_227671780);
    v10 = sub_22766CDE0();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_226F51878(&qword_2813A5738, MEMORY[0x277D51330]);
      v18 = sub_22766BF50();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_226F51878(&qword_27D7B8B10, MEMORY[0x277D51330]);
          v25 = sub_22766BFB0();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_226F505E0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_22766CDE0();
    v8 = 0;
    v9 = v7 + 56;
    v21 = a1 + 32;
    while (2)
    {
      v13 = *(v21 + v8);
      v14 = *(v7 + 40);
      sub_22766D370();
      v15 = a4(v13);
      MEMORY[0x22AA996B0](v15);
      result = sub_22766D3F0();
      v17 = ~(-1 << *(v7 + 32));
      for (i = result & v17; ; i = (i + 1) & v17)
      {
        v19 = *(v9 + 8 * (i >> 6));
        if (((1 << i) & v19) == 0)
        {
          break;
        }

        v20 = a4(*(*(v7 + 48) + i));
        result = a4(v13);
        if (v20 == result)
        {
          goto LABEL_5;
        }
      }

      *(v9 + 8 * (i >> 6)) = (1 << i) | v19;
      *(*(v7 + 48) + i) = v13;
      v10 = *(v7 + 16);
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (!v11)
      {
        *(v7 + 16) = v12;
LABEL_5:
        if (++v8 == v4)
        {
          return v7;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_226F50758(unint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a3;
    v10 = a2;
    v11 = sub_22766CD20();
    a2 = v10;
    a3 = v9;
    if (v11)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v6 = sub_22766CDE0();
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = sub_22766CD20();
      if (!v8)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = MEMORY[0x277D84FA0];
  v7 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v12 = v6 + 56;
  v46 = v8;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v13 = 0;
    v43 = v4;
    while (1)
    {
      v14 = MEMORY[0x22AA991A0](v13, v4);
      v15 = __OFADD__(v13++, 1);
      if (v15)
      {
        break;
      }

      v16 = v14;
      v17 = *(v6 + 40);
      v18 = sub_22766CB20();
      v19 = -1 << *(v6 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *(v12 + 8 * (v20 >> 6));
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        a4(0);
        while (1)
        {
          v25 = *(*(v6 + 48) + 8 * v20);
          v26 = sub_22766CB30();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *(v12 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v8 = v46;
            v4 = v43;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v46;
        v4 = v43;
        if (v13 == v46)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v12 + 8 * v21) = v23 | v22;
        *(*(v6 + 48) + 8 * v20) = v16;
        v27 = *(v6 + 16);
        v15 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v15)
        {
          goto LABEL_32;
        }

        *(v6 + 16) = v28;
        if (v13 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v29 = 0;
    v44 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v44)
    {
      v30 = *(v6 + 40);
      v31 = *(v4 + 32 + 8 * v29);
      v32 = sub_22766CB20();
      v33 = -1 << *(v6 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = *(v12 + 8 * (v34 >> 6));
      v37 = 1 << v34;
      if (((1 << v34) & v36) != 0)
      {
        v38 = ~v33;
        a4(0);
        while (1)
        {
          v39 = *(*(v6 + 48) + 8 * v34);
          v40 = sub_22766CB30();

          if (v40)
          {
            break;
          }

          v34 = (v34 + 1) & v38;
          v35 = v34 >> 6;
          v36 = *(v12 + 8 * (v34 >> 6));
          v37 = 1 << v34;
          if (((1 << v34) & v36) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v12 + 8 * v35) = v37 | v36;
        *(*(v6 + 48) + 8 * v34) = v31;
        v41 = *(v6 + 16);
        v15 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v15)
        {
          goto LABEL_34;
        }

        *(v6 + 16) = v42;
      }

      if (++v29 == v46)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_226F50A74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226F50AE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226F50B4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226F50BBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8AD0, &unk_227671750);
    v3 = sub_22766CDE0();
    v4 = 0;
    v5 = v3 + 56;
    v23 = v1;
    v24 = a1 + 32;
    while (1)
    {
      v6 = v24 + 24 * v4;
      v7 = *v6;
      v8 = *(v6 + 8);
      v9 = *(v6 + 16);
      v10 = *(v3 + 40);
      sub_22766D370();
      sub_226EB396C(v7, v8, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEF50, &qword_227671540);
      sub_226F4364C();
      sub_227663B10();
      result = sub_22766D3F0();
      v12 = -1 << *(v3 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      v15 = *(v5 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_226F50DC8();
        sub_226F50E1C();
        do
        {
          v18 = *(v3 + 48) + 24 * v13;
          v25 = *v18;
          v26 = *(v18 + 16);
          result = sub_227663B20();
          if (result)
          {
            sub_226EB2DFC(v7, v8, v9);
            v1 = v23;
            goto LABEL_4;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
        }

        while (((1 << v13) & v15) != 0);
        v1 = v23;
      }

      *(v5 + 8 * v14) = v16 | v15;
      v19 = *(v3 + 48) + 24 * v13;
      *v19 = v7;
      *(v19 + 8) = v8;
      *(v19 + 16) = v9;
      v20 = *(v3 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      *(v3 + 16) = v22;
LABEL_4:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

unint64_t sub_226F50DC8()
{
  result = qword_28139B7B8;
  if (!qword_28139B7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B7B8);
  }

  return result;
}

unint64_t sub_226F50E1C()
{
  result = qword_28139B7B0;
  if (!qword_28139B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B7B0);
  }

  return result;
}

uint64_t sub_226F50E70(uint64_t a1)
{
  v2 = sub_227664CA0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8B00, &qword_227671778);
    v10 = sub_22766CDE0();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_226F51878(&qword_2813A5770, MEMORY[0x277D50E98]);
      v18 = sub_22766BF50();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v6, *(v10 + 48) + v20 * v15, v2);
          sub_226F51878(&qword_28139B8F8, MEMORY[0x277D50E98]);
          v25 = sub_22766BFB0();
          v26 = *v16;
          (*v16)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_226F51190(uint64_t a1)
{
  v2 = sub_227666BF0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8AF0, &qword_227671770);
    v10 = sub_22766CDE0();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_226F51878(&qword_2813A5660, MEMORY[0x277D528B8]);
      v18 = sub_22766BF50();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v6, *(v10 + 48) + v20 * v15, v2);
          sub_226F51878(&qword_27D7B8AF8, MEMORY[0x277D528B8]);
          v25 = sub_22766BFB0();
          v26 = *v16;
          (*v16)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_226F514B0(uint64_t a1)
{
  v2 = sub_227663480();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8B38, &unk_2276717A0);
    v10 = sub_22766CDE0();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_226F51878(&unk_2813A5800, MEMORY[0x277D4FF88]);
      v18 = sub_22766BF50();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_226F51878(&qword_27D7B89E0, MEMORY[0x277D4FF88]);
          v25 = sub_22766BFB0();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_226F517D0()
{
  result = qword_27D7B8BF8;
  if (!qword_27D7B8BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8BF8);
  }

  return result;
}

unint64_t sub_226F51824()
{
  result = qword_27D7B8C00;
  if (!qword_27D7B8C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8C00);
  }

  return result;
}

uint64_t sub_226F51878(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226F518DC@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53CF0];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_226F5195C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227665290();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_226F51984(uint64_t a1)
{
  *(a1 + 24) = sub_226F519EC(&qword_2813A5710);
  result = sub_226F519EC(&qword_2813A5708);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_226F519EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2276652D0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_226F51A40(uint64_t a1)
{
  v1 = 0;
  v2 = MEMORY[0x277D84F98];
  v3 = a1 + 56;
  v46 = MEMORY[0x277D84F98];
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  v39 = v7;
  v40 = a1 + 56;
  while (v6)
  {
LABEL_9:
    v9 = *(a1 + 48) + 24 * (__clz(__rbit64(v6)) | (v1 << 6));
    v11 = *v9;
    v10 = *(v9 + 8);
    v12 = *(v9 + 16);
    v13 = sub_226F491D4(v12);
    v15 = v2[2];
    v16 = (v14 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_24;
    }

    v18 = v13;
    v19 = v14;
    v42 = v2;
    v44 = v11;
    v20 = v2[3];
    v45 = v10;
    sub_226F48BA8(v11, v10, v12);
    if (v20 >= v17)
    {
      v7 = v39;
      v2 = v42;
      v23 = v18;
    }

    else
    {
      sub_226FE2F84(v17, 1);
      v2 = v46;
      v21 = sub_226F491D4(v12);
      if ((v19 & 1) != (v22 & 1))
      {
        goto LABEL_26;
      }

      v23 = v21;
      v7 = v39;
    }

    v6 &= v6 - 1;
    v3 = v40;
    if (v19)
    {
      v24 = v2[7];
      v25 = *(v24 + 8 * v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v23) = v25;
      v43 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_2273A4F34(0, *(v25 + 2) + 1, 1, v25);
        *(v24 + 8 * v23) = v25;
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      v29 = v28 + 1;
      v31 = v44;
      v30 = v45;
      if (v28 >= v27 >> 1)
      {
        v37 = sub_2273A4F34((v27 > 1), v28 + 1, 1, v25);
        v29 = v28 + 1;
        v31 = v44;
        v30 = v45;
        v25 = v37;
        *(v43 + 8 * v23) = v37;
      }

      *(v25 + 2) = v29;
      v32 = &v25[24 * v28];
      *(v32 + 4) = v31;
      *(v32 + 5) = v30;
      v32[48] = v12;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C28, &unk_22768AE90);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_227670CD0;
      *(v33 + 32) = v44;
      *(v33 + 40) = v45;
      *(v33 + 48) = v12;
      v2[(v23 >> 6) + 8] |= 1 << v23;
      *(v2[6] + 8 * v23) = v12;
      *(v2[7] + 8 * v23) = v33;
      v34 = v2[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_25;
      }

      v2[2] = v36;
    }
  }

  while (1)
  {
    v8 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v8);
    ++v1;
    if (v6)
    {
      v1 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_226F51D00()
{
  v0 = sub_227664380();
  v1 = sub_226F51A40(v0);
  v2 = sub_227664380();
  v3 = sub_226F51A40(v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v102[0] = v1;
  sub_226F52504(v3, sub_226F524F8, 0, isUniquelyReferenced_nonNull_native, v102);

  v5 = v102[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C20, &unk_2276718F0);
  v6 = sub_22766CFF0();
  v7 = v6;
  v8 = 0;
  v9 = 1 << *(v5 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  if (v11)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v5 + 48) + 8 * v17);
      v19 = *(*(v5 + 56) + 8 * v17);
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v7 + 48) + 8 * v17) = v18;
      *(*(v7 + 56) + 8 * v17) = v19;
      v20 = *(v7 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      *(v7 + 16) = v22;

      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_95;
      }

      if (v8 >= v12)
      {
        break;
      }

      v16 = *(v5 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    v23 = 1 << *(v7 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v7 + 64);
    v26 = (v23 + 63) >> 6;

    v27 = 0;
    v28 = MEMORY[0x277D84F90];
    while (v25)
    {
LABEL_22:
      v30 = (v27 << 9) | (8 * __clz(__rbit64(v25)));
      v31 = *(*(v7 + 56) + v30);
      v32 = *(v31 + 16);
      v33 = *(v28 + 2);
      v34 = v33 + v32;
      if (__OFADD__(v33, v32))
      {
        goto LABEL_101;
      }

      v35 = *(*(v7 + 56) + v30);

      v36 = swift_isUniquelyReferenced_nonNull_native();
      if (!v36 || v34 > *(v28 + 3) >> 1)
      {
        if (v33 <= v34)
        {
          v37 = v33 + v32;
        }

        else
        {
          v37 = v33;
        }

        v28 = sub_2273A4F34(v36, v37, 1, v28);
      }

      v25 &= v25 - 1;
      if (*(v31 + 16))
      {
        if ((*(v28 + 3) >> 1) - *(v28 + 2) < v32)
        {
          goto LABEL_106;
        }

        swift_arrayInitWithCopy();

        if (v32)
        {
          v38 = *(v28 + 2);
          v21 = __OFADD__(v38, v32);
          v39 = v38 + v32;
          if (v21)
          {
            goto LABEL_108;
          }

          *(v28 + 2) = v39;
        }
      }

      else
      {

        if (v32)
        {
          goto LABEL_102;
        }
      }
    }

    while (1)
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v29 >= v26)
      {
        v101 = v28;

        v40 = sub_227664370();
        v41 = sub_226F51A40(v40);
        v42 = sub_227664370();
        v43 = sub_226F51A40(v42);
        v44 = swift_isUniquelyReferenced_nonNull_native();
        v102[0] = v41;
        sub_226F52504(v43, sub_226F524F8, 0, v44, v102);

        v45 = v102[0];
        v46 = sub_22766CFF0();
        v47 = v46;
        v48 = 0;
        v49 = 1 << *(v45 + 32);
        v50 = -1;
        if (v49 < 64)
        {
          v50 = ~(-1 << v49);
        }

        v51 = v50 & *(v45 + 64);
        v52 = (v49 + 63) >> 6;
        v53 = v46 + 64;
        if (!v51)
        {
LABEL_38:
          v55 = v48;
          while (1)
          {
            v48 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              goto LABEL_96;
            }

            if (v48 >= v52)
            {

              v62 = 1 << *(v47 + 32);
              v63 = -1;
              if (v62 < 64)
              {
                v63 = ~(-1 << v62);
              }

              v64 = v63 & *(v47 + 64);
              v65 = (v62 + 63) >> 6;

              v66 = 0;
              v67 = MEMORY[0x277D84F90];
              while (v64)
              {
LABEL_55:
                v69 = (v66 << 9) | (8 * __clz(__rbit64(v64)));
                v70 = *(*(v47 + 56) + v69);
                v71 = *(v70 + 16);
                v72 = *(v67 + 2);
                v73 = v72 + v71;
                if (__OFADD__(v72, v71))
                {
                  goto LABEL_104;
                }

                v74 = *(*(v47 + 56) + v69);

                v75 = swift_isUniquelyReferenced_nonNull_native();
                if (!v75 || v73 > *(v67 + 3) >> 1)
                {
                  if (v72 <= v73)
                  {
                    v76 = v72 + v71;
                  }

                  else
                  {
                    v76 = v72;
                  }

                  v67 = sub_2273A4F34(v75, v76, 1, v67);
                }

                v64 &= v64 - 1;
                if (*(v70 + 16))
                {
                  if ((*(v67 + 3) >> 1) - *(v67 + 2) < v71)
                  {
                    goto LABEL_107;
                  }

                  swift_arrayInitWithCopy();

                  if (v71)
                  {
                    v77 = *(v67 + 2);
                    v21 = __OFADD__(v77, v71);
                    v78 = v77 + v71;
                    if (v21)
                    {
                      goto LABEL_109;
                    }

                    *(v67 + 2) = v78;
                  }
                }

                else
                {

                  if (v71)
                  {
                    goto LABEL_105;
                  }
                }
              }

              while (1)
              {
                v68 = v66 + 1;
                if (__OFADD__(v66, 1))
                {
                  goto LABEL_97;
                }

                if (v68 >= v65)
                {

                  v79 = *(v67 + 2);
                  if (v79)
                  {
                    v80 = 0;
                    v81 = v67 + 48;
                    v82 = MEMORY[0x277D84F90];
                    while (v80 < *(v67 + 2))
                    {
                      v83 = *(v81 - 2);
                      if (*v81)
                      {
                        v84 = *(v81 - 1);

                        v85 = 2;
                      }

                      else
                      {
                        v84 = 0;
                        v85 = 0;
                        v83 = *(v81 - 2);
                      }

                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v82 = sub_2273A4F18(0, *(v82 + 2) + 1, 1, v82);
                      }

                      v87 = *(v82 + 2);
                      v86 = *(v82 + 3);
                      if (v87 >= v86 >> 1)
                      {
                        v82 = sub_2273A4F18((v86 > 1), v87 + 1, 1, v82);
                      }

                      ++v80;
                      *(v82 + 2) = v87 + 1;
                      v88 = &v82[24 * v87];
                      *(v88 + 4) = v83;
                      *(v88 + 5) = v84;
                      v88[48] = v85;
                      v81 += 24;
                      if (v79 == v80)
                      {
                        goto LABEL_80;
                      }
                    }

                    goto LABEL_98;
                  }

                  v82 = MEMORY[0x277D84F90];
LABEL_80:

                  v100 = sub_226F40AD0(v82);

                  v89 = *(v101 + 2);
                  if (v89)
                  {
                    v90 = 0;
                    v91 = v101 + 48;
                    v92 = MEMORY[0x277D84F90];
                    while (v90 < *(v101 + 2))
                    {
                      v93 = *(v91 - 2);
                      if (*v91)
                      {
                        v94 = *(v91 - 1);

                        v95 = 2;
                      }

                      else
                      {
                        v94 = 0;
                        v95 = 0;
                        v93 = *(v91 - 2);
                      }

                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v92 = sub_2273A4F18(0, *(v92 + 2) + 1, 1, v92);
                      }

                      v97 = *(v92 + 2);
                      v96 = *(v92 + 3);
                      if (v97 >= v96 >> 1)
                      {
                        v92 = sub_2273A4F18((v96 > 1), v97 + 1, 1, v92);
                      }

                      ++v90;
                      *(v92 + 2) = v97 + 1;
                      v98 = &v92[24 * v97];
                      *(v98 + 4) = v93;
                      *(v98 + 5) = v94;
                      v98[48] = v95;
                      v91 += 24;
                      if (v89 == v90)
                      {
                        goto LABEL_93;
                      }
                    }

                    goto LABEL_99;
                  }

                  v92 = MEMORY[0x277D84F90];
LABEL_93:

                  sub_226F40AD0(v92);

                  return v100;
                }

                v64 = *(v53 + 8 * v68);
                ++v66;
                if (v64)
                {
                  v66 = v68;
                  goto LABEL_55;
                }
              }
            }

            v56 = *(v45 + 64 + 8 * v48);
            ++v55;
            if (v56)
            {
              v54 = __clz(__rbit64(v56));
              v51 = (v56 - 1) & v56;
              goto LABEL_43;
            }
          }
        }

        while (1)
        {
          v54 = __clz(__rbit64(v51));
          v51 &= v51 - 1;
LABEL_43:
          v57 = v54 | (v48 << 6);
          v58 = *(*(v45 + 48) + 8 * v57);
          v59 = *(*(v45 + 56) + 8 * v57);
          *(v53 + ((v57 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v57;
          *(*(v47 + 48) + 8 * v57) = v58;
          *(*(v47 + 56) + 8 * v57) = v59;
          v60 = *(v47 + 16);
          v21 = __OFADD__(v60, 1);
          v61 = v60 + 1;
          if (v21)
          {
            goto LABEL_103;
          }

          *(v47 + 16) = v61;

          if (!v51)
          {
            goto LABEL_38;
          }
        }
      }

      v25 = *(v13 + 8 * v29);
      ++v27;
      if (v25)
      {
        v27 = v29;
        goto LABEL_22;
      }
    }

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
  }

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

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_226F524F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_226F52504(uint64_t a1, void (*a2)(void *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v42 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v36 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v39 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v41[0] = *(*(a1 + 48) + v16);
    v41[1] = v17;

    a2(v40, v41);

    v19 = v40[0];
    v18 = v40[1];
    v20 = *v42;
    v22 = sub_226F491D4(v40[0]);
    v23 = *(v20 + 16);
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_25;
    }

    v26 = v21;
    if (*(v20 + 24) >= v25)
    {
      if ((v39 & 1) == 0)
      {
        sub_226FF09E0();
      }
    }

    else
    {
      v27 = v42;
      sub_226FE2F84(v25, v39 & 1);
      v28 = *v27;
      v29 = sub_226F491D4(v19);
      if ((v26 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v22 = v29;
    }

    v9 &= v9 - 1;
    v31 = *v42;
    if (v26)
    {
      v12 = v31[7];
      v13 = *(v12 + 8 * v22);
      *(v12 + 8 * v22) = v18;
    }

    else
    {
      v31[(v22 >> 6) + 8] |= 1 << v22;
      *(v31[6] + 8 * v22) = v19;
      *(v31[7] + 8 * v22) = v18;
      v32 = v31[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v31[2] = v34;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_226EBB21C();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v39 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for AchievementEvaluationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AchievementEvaluationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_226F528B8()
{
  result = qword_27D7B8C30;
  if (!qword_27D7B8C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8C30);
  }

  return result;
}

uint64_t sub_226F52920()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);

  return swift_deallocClassInstance();
}

uint64_t sub_226F52994()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  v5 = *(v2 + 96);
  if (v0)
  {

    v6 = sub_226F52B84;
  }

  else
  {

    v6 = sub_226F52ADC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226F52ADC()
{
  (*(*(v0 + 64) + 8))(*(v0 + 88), *(v0 + 56));
  v1 = *(v0 + 16);
  if (*(v0 + 24))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v0 + 16);
  }

  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 48);

  v6 = *(v0 + 8);

  return v6(v2);
}

uint64_t sub_226F52B84()
{
  (*(v0[8] + 8))(v0[11], v0[7]);
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[6];

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_226F52C14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2276627D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276637C0();
  sub_227669DE0();
  sub_227669DA0();
  v11 = v10;
  v12 = sub_2276637D0();
  v13 = sub_226F491E8(v12);
  v14 = sub_22727227C(v9, v13, a1, v11);
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    v16 = v14;
    (*(v6 + 8))(v9, v5);

    v17 = *(v16 + 16);

    *a2 = v17;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t sub_226F52D8C()
{
  v39 = v0;
  v1 = v0[33];
  v2 = v0[28];
  sub_22766A610();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[33];
    v7 = v0[30];
    v36 = v0[31];
    v8 = v0[28];
    v9 = v0[25];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v38 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = v0[7];
    v13 = MEMORY[0x22AA995D0](v0[8], v0[9]);
    v15 = sub_226E97AE8(v13, v14, &v38);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_226E8E000, v4, v5, "Failed to query environment cache during achievement progress update fetch with error %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    v7(v8, v9);
  }

  else
  {
    v17 = v0[30];
    v16 = v0[31];
    v18 = v0[28];
    v19 = v0[25];

    v17(v18, v19);
  }

  if (!(MEMORY[0x277D84F90] >> 62))
  {
    v20 = v0[33];
LABEL_6:
    v37 = MEMORY[0x277D84FA0];
    goto LABEL_7;
  }

  v33 = sub_22766CD20();
  v20 = v0[33];
  if (!v33)
  {
    goto LABEL_6;
  }

  v34 = v0[33];
  sub_226F4B508(MEMORY[0x277D84F90]);
  v37 = v35;
  v20 = v34;
LABEL_7:

  v22 = v0[28];
  v21 = v0[29];
  v23 = v0[27];
  v25 = v0[23];
  v24 = v0[24];
  v27 = v0[21];
  v26 = v0[22];
  v29 = v0[17];
  v28 = v0[18];
  v30 = v0[15];

  v31 = v0[1];

  return v31(v37);
}

uint64_t sub_226F53004()
{
  v1 = v0[18];
  v2 = sub_2276638D0();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[35] = v3;
  *v3 = v0;
  v3[1] = sub_226ECB2C0;
  v4 = v0[18];
  v5 = v0[12];

  return sub_226ECA1B4(v4);
}

uint64_t sub_226F530E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*(sub_2276638D0() - 8) + 80);
  v6 = *(v2 + 16);
  return sub_226F52C14(a1, a2);
}

uint64_t getEnumTagSinglePayload for ManagedConfigurationConstants(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ManagedConfigurationConstants(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_226F53278()
{
  v1 = v0;
  sub_22766CE20();

  sub_2276694E0();
  sub_226F534B4(&qword_28139B258, MEMORY[0x277D53DA0]);
  v2 = sub_22766D140();
  MEMORY[0x22AA98450](v2);

  MEMORY[0x22AA98450](0x28203A79656B202CLL, 0xE800000000000000);
  v3 = type metadata accessor for SyncSubmissionChangeset();
  v4 = v0 + *(v3 + 20);
  v5 = type metadata accessor for SyncEncryptionKey();
  v6 = *(v5 + 28);
  sub_2276627D0();
  sub_226F534B4(&unk_28139BD90, MEMORY[0x277CC95F0]);
  v7 = sub_22766D140();
  MEMORY[0x22AA98450](v7);

  MEMORY[0x22AA98450](8236, 0xE200000000000000);
  MEMORY[0x22AA98450](*(v4 + *(v5 + 24)), *(v4 + *(v5 + 24) + 8));
  MEMORY[0x22AA98450](2108457, 0xE300000000000000);
  v8 = (v1 + *(v3 + 24));
  v9 = v8[2];
  v10 = sub_2275D66A0(*v8, v8[1]);
  MEMORY[0x22AA98450](v10);

  MEMORY[0x22AA98450](41, 0xE100000000000000);
  return 0x656E6F7A28435353;
}

uint64_t type metadata accessor for SyncSubmissionChangeset()
{
  result = qword_28139A340;
  if (!qword_28139A340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226F534B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226F53524()
{
  result = sub_2276694E0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SyncEncryptionKey();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_226F535D8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_226F53F48();
  }

  return result;
}

uint64_t sub_226F53630(uint64_t *a1)
{
  v2 = sub_22766A310();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_226F540AC(v7);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = *(result + 256);
    v10 = *(result + 264);
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_22766A300();
    sub_2276699D0();
    swift_unknownObjectRelease();
    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_226F537D8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a1);
  }

  return result;
}

uint64_t sub_226F5384C()
{
  v0 = sub_227669910();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 416);
    v7 = *(result + 424);
    swift_unknownObjectRetain();

    swift_getObjectType();
    (*(v1 + 104))(v4, *MEMORY[0x277D4E148], v0);
    sub_227669660();
    swift_unknownObjectRelease();
    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_226F53998()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_226F53AFC(v4);

    v6 = sub_227669290();
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    v6(sub_226EB4544, v7);

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_226F53AFC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A600();
  sub_22766B370();
  (*(v11 + 8))(v14, v10);
  v15 = v2[37];
  v16 = v2[38];
  __swift_project_boxed_opaque_existential_0(v2 + 34, v15);

  sub_226ECF5D8(sub_226F5AFA4, v2, v15, MEMORY[0x277D84F78] + 8, v16, v9);

  v17 = swift_allocObject();
  *(v17 + 16) = sub_226F5B0C4;
  *(v17 + 24) = v2;
  (*(v4 + 16))(v7, v9, v3);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = (v5 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v4 + 32))(v20 + v18, v7, v3);
  v21 = (v20 + v19);
  *v21 = sub_226F32FEC;
  v21[1] = v17;

  sub_227669270();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_226F53E10()
{
  v0 = sub_22766A310();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 256);
    v7 = *(result + 264);
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_22766A300();
    sub_2276699D0();
    swift_unknownObjectRelease();
    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_226F53F48()
{
  v1 = sub_2276646D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v6 = *(v0 + 440);
  v7 = *(v6 + 16);
  if (v7)
  {
    v10 = *(v2 + 16);
    v8 = v2 + 16;
    v9 = v10;
    v11 = v6 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    v13 = *(v0 + 440);

    do
    {
      v9(v5, v11, v1);
      sub_226F55B70(v5);
      (*(v8 - 8))(v5, v1);
      v11 += v12;
      --v7;
    }

    while (v7);

    v14 = *(v0 + 440);
  }

  *(v0 + 440) = MEMORY[0x277D84F90];
}

uint64_t sub_226F540AC(uint64_t a1)
{
  v2 = v1;
  v58 = a1;
  v3 = sub_22766B390();
  v50 = *(v3 - 8);
  v51 = v3;
  v4 = *(v50 + 64);
  MEMORY[0x28223BE20](v3);
  v49 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD530, &unk_227673EB0);
  v54 = *(v6 - 8);
  v55 = v6;
  v7 = *(v54 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v48 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v52 = &v48 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v56 = *(v10 - 8);
  v57 = v10;
  v11 = *(v56 + 64);
  MEMORY[0x28223BE20](v10);
  v53 = &v48 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v48 - v16;
  v18 = sub_22766A8A0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v2 + 312);
  v24 = sub_2276693C0();
  (*(v19 + 104))(v22, *MEMORY[0x277D4F8F0], v18);
  v25 = sub_226EC9A38(v22, v24);

  result = (*(v19 + 8))(v22, v18);
  if (v25)
  {
    (*(v14 + 16))(v17, v2 + OBJC_IVAR____TtC15SeymourServices16EngagementSystem__journeysEnabled, v13);
    sub_227669730();
    (*(v14 + 8))(v17, v13);
    if (v59 == 1)
    {
      v27 = *(v2 + 296);
      v28 = *(v2 + 304);
      __swift_project_boxed_opaque_existential_0((v2 + 272), v27);
      v29 = sub_227663FA0();

      v30 = v52;
      sub_226ECF5D8(sub_226F5AC78, v2, v27, v29, v28, v52);

      v31 = swift_allocObject();
      *(v31 + 16) = v58;
      *(v31 + 24) = v2;
      v32 = swift_allocObject();
      *(v32 + 16) = sub_226F5ACC8;
      *(v32 + 24) = v31;
      v34 = v54;
      v33 = v55;
      v35 = v48;
      (*(v54 + 16))(v48, v30, v55);
      v36 = (*(v34 + 80) + 16) & ~*(v34 + 80);
      v37 = (v7 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
      v38 = swift_allocObject();
      (*(v34 + 32))(v38 + v36, v35, v33);
      v39 = (v38 + v37);
      *v39 = sub_226F5ACE4;
      v39[1] = v32;

      v40 = v53;
      sub_227669270();
      (*(v34 + 8))(v30, v33);
      v41 = v57;
      v42 = sub_227669290();
      v43 = swift_allocObject();
      *(v43 + 16) = 0;
      *(v43 + 24) = 0;
      v42(sub_226EB4544, v43);

      return (*(v56 + 8))(v40, v41);
    }

    else
    {
      v44 = v49;
      sub_22766A730();
      v45 = sub_22766B380();
      v46 = sub_22766C8B0();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_226E8E000, v45, v46, "Engagement journeys disabled", v47, 2u);
        MEMORY[0x22AA9A450](v47, -1, -1);
      }

      return (*(v50 + 8))(v44, v51);
    }
  }

  return result;
}

uint64_t sub_226F546F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a1;
  v29 = a3;
  v27 = sub_227666ED0();
  v4 = *(v27 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v27);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_227664530();
  v8 = *(v26 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v26);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2 + 56;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 56);
  v16 = (v13 + 63) >> 6;
  v24 = v8 + 8;
  v25 = v8 + 16;
  v23 = (v4 + 8);
  v30 = a2;

  for (i = 0; v15; result = (*v23)(v7, v27))
  {
    v19 = i;
LABEL_9:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v21 = v26;
    (*(v8 + 16))(v11, *(v30 + 48) + *(v8 + 72) * (v20 | (v19 << 6)), v26);
    sub_227663F30();
    sub_226F54960(v11);
    (*(v8 + 8))(v11, v21);
  }

  while (1)
  {
    v19 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
    }

    v15 = *(v12 + 8 * v19);
    ++i;
    if (v15)
    {
      i = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226F54960(uint64_t a1)
{
  v124 = a1;
  v113 = sub_227664530();
  v111 = *(v113 - 8);
  v1 = *(v111 + 64);
  MEMORY[0x28223BE20](v113);
  v109 = v2;
  v110 = &v94 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_22766B390();
  v100 = *(v101 - 8);
  v3 = *(v100 + 64);
  MEMORY[0x28223BE20](v101);
  v99 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C50, &qword_227684D00);
  v105 = *(v5 - 8);
  v106 = v5;
  v6 = *(v105 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v103 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v8;
  MEMORY[0x28223BE20](v7);
  v116 = &v94 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v114 = *(v10 - 8);
  v115 = v10;
  v11 = *(v114 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v108 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v117 = &v94 - v15;
  v107 = v16;
  MEMORY[0x28223BE20](v14);
  v112 = &v94 - v17;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C58, &qword_227671C50);
  v18 = *(*(v122 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v122);
  v121 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v120 = &v94 - v21;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C60, &qword_227671C58);
  v22 = *(*(v119 - 8) + 64);
  MEMORY[0x28223BE20](v119);
  v123 = &v94 - v23;
  v24 = sub_227662930();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v94 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v94 - v34;
  v36 = sub_227662750();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v39 = MEMORY[0x28223BE20](v36);
  v118 = &v94 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v94 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v94 - v44;
  sub_227662740();
  (*(v25 + 104))(v28, *MEMORY[0x277CC9968], v24);
  sub_227666EA0();
  sub_227662610();
  (*(v25 + 8))(v28, v24);
  sub_226E93170(v35, v33, &qword_27D7B9690, qword_227670B50);
  if ((*(v37 + 48))(v33, 1, v36) == 1)
  {
    sub_226E97D1C(v35, &qword_27D7B9690, qword_227670B50);
    (*(v37 + 8))(v45, v36);
    return sub_226E97D1C(v33, &qword_27D7B9690, qword_227670B50);
  }

  v47 = *(v37 + 32);
  v47(v43, v33, v36);
  v98 = sub_226F5AE70(&qword_28139BDC0, MEMORY[0x277CC9578]);
  result = sub_22766BFA0();
  if (result)
  {
    v97 = v35;
    v48 = v37;
    v49 = *(v37 + 16);
    v50 = v120;
    v95 = v43;
    v49(v120, v43, v36);
    v51 = v122;
    v52 = v50 + *(v122 + 48);
    v96 = v45;
    v49(v52, v45, v36);
    v53 = v121;
    sub_226E93170(v50, v121, &qword_27D7B8C58, &qword_227671C50);
    v54 = *(v51 + 48);
    v55 = v123;
    v47(v123, v53, v36);
    v57 = *(v48 + 8);
    v56 = (v48 + 8);
    v57(v53 + v54, v36);
    sub_226F5AB40(v50, v53);
    v47((v55 + *(v119 + 36)), (v53 + *(v51 + 48)), v36);
    v58 = v53;
    v59 = v57;
    v57(v58, v36);
    v60 = v118;
    v61 = v124;
    sub_227664520();
    if (sub_22766BF90())
    {
      v62 = sub_22766BFA0();
      v59(v60, v36);
      sub_226E97D1C(v55, &qword_27D7B8C60, &qword_227671C58);
      if (v62)
      {
        v63 = *(v104 + 320);
        v64 = v99;
        sub_22766A600();
        sub_22766B370();
        (*(v100 + 8))(v64, v101);
        v65 = *__swift_project_boxed_opaque_existential_0((v63 + 16), *(v63 + 40));
        v66 = v116;
        sub_2272B02B4(0, v61, v116);
        v67 = swift_allocObject();
        swift_weakInit();
        v68 = swift_allocObject();
        *(v68 + 16) = sub_226F5ABB0;
        *(v68 + 24) = v67;
        v70 = v105;
        v69 = v106;
        v71 = v103;
        (*(v105 + 16))(v103, v66, v106);
        v72 = (*(v70 + 80) + 16) & ~*(v70 + 80);
        v73 = (v102 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
        v74 = swift_allocObject();
        (*(v70 + 32))(v74 + v72, v71, v69);
        v75 = (v74 + v73);
        *v75 = sub_226F5ABCC;
        v75[1] = v68;
        sub_227669270();
        (*(v70 + 8))(v116, v69);
        v123 = v56;
        v77 = v110;
        v76 = v111;
        v78 = v113;
        (*(v111 + 16))(v110, v124, v113);
        v79 = (*(v76 + 80) + 16) & ~*(v76 + 80);
        v80 = swift_allocObject();
        (*(v76 + 32))(v80 + v79, v77, v78);
        v81 = swift_allocObject();
        *(v81 + 16) = sub_226F5ABFC;
        *(v81 + 24) = v80;
        v83 = v114;
        v82 = v115;
        v84 = v108;
        v85 = v117;
        (*(v114 + 16))(v108, v117, v115);
        v86 = (*(v83 + 80) + 16) & ~*(v83 + 80);
        v87 = (v107 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
        v88 = swift_allocObject();
        (*(v83 + 32))(v88 + v86, v84, v82);
        v89 = (v88 + v87);
        *v89 = sub_226F5B0C0;
        v89[1] = v81;
        v90 = v112;
        sub_227669270();
        v91 = *(v83 + 8);
        v91(v85, v82);
        v92 = sub_227669290();
        v93 = swift_allocObject();
        *(v93 + 16) = 0;
        *(v93 + 24) = 0;
        v92(sub_226EB4544, v93);

        v91(v90, v82);
        v59(v95, v36);
        sub_226E97D1C(v97, &qword_27D7B9690, qword_227670B50);
        return (v59)(v96, v36);
      }
    }

    else
    {
      v59(v60, v36);
      sub_226E97D1C(v55, &qword_27D7B8C60, &qword_227671C58);
    }

    v59(v95, v36);
    sub_226E97D1C(v97, &qword_27D7B9690, qword_227670B50);
    return (v59)(v96, v36);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_226F55630()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  v5 = sub_22766B380();
  v6 = sub_22766C8B0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_226E8E000, v5, v6, "Reporting event for archived session", v7, 2u);
    MEMORY[0x22AA9A450](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_226E91B50(result + 216, v10);

    __swift_project_boxed_opaque_existential_0(v10, v10[3]);
    v9 = off_283A9AD80;
    type metadata accessor for EngagementEventReporter();
    v9();
    return __swift_destroy_boxed_opaque_existential_0(v10);
  }

  return result;
}

uint64_t sub_226F55810(void *a1, uint64_t a2)
{
  v4 = sub_227664530();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22766B390();
  v31 = *(v9 - 8);
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  (*(v5 + 16))(v8, a2, v4);
  v13 = a1;
  v14 = sub_22766B380();
  v15 = sub_22766C890();
  v30 = a1;

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = v9;
    v17 = v16;
    v28 = swift_slowAlloc();
    v34 = v28;
    *v17 = 141558530;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2080;
    sub_226F5AE70(&qword_27D7B8C68, MEMORY[0x277D50978]);
    v18 = sub_22766D140();
    v20 = v19;
    (*(v5 + 8))(v8, v4);
    v21 = sub_226E97AE8(v18, v20, &v34);

    *(v17 + 14) = v21;
    *(v17 + 22) = 2082;
    swift_getErrorValue();
    v22 = MEMORY[0x22AA995D0](v32, v33);
    v24 = sub_226E97AE8(v22, v23, &v34);

    *(v17 + 24) = v24;
    _os_log_impl(&dword_226E8E000, v14, v15, "Failed to report archived session %{mask.hash}s, error: %{public}s", v17, 0x20u);
    v25 = v28;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v25, -1, -1);
    MEMORY[0x22AA9A450](v17, -1, -1);

    return (*(v31 + 8))(v12, v29);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    return (*(v31 + 8))(v12, v9);
  }
}

uint64_t sub_226F55B70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v70 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v71 = &v63 - v8;
  v69 = v9;
  MEMORY[0x28223BE20](v7);
  v68 = &v63 - v10;
  v11 = sub_22766A8A0();
  v74 = *(v11 - 8);
  v75 = v11;
  v12 = *(v74 + 64);
  MEMORY[0x28223BE20](v11);
  v73 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2276646D0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v76 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v63 - v19;
  v72 = sub_22766B390();
  v21 = *(v72 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v72);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  v25 = *(v15 + 16);
  v77 = a1;
  v66 = v25;
  v67 = v15 + 16;
  v25(v20, a1, v14);
  v26 = sub_22766B380();
  v27 = sub_22766C8B0();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v64 = v3;
    v29 = v28;
    v30 = swift_slowAlloc();
    v65 = v2;
    v31 = v30;
    v79[0] = v30;
    *v29 = 136446210;
    v32 = sub_227664690();
    v33 = v15;
    v63 = v15;
    v35 = v34;
    (*(v33 + 8))(v20, v14);
    v36 = sub_226E97AE8(v32, v35, v79);

    *(v29 + 4) = v36;
    _os_log_impl(&dword_226E8E000, v26, v27, "Adding engagement badge %{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    v37 = v31;
    v2 = v65;
    MEMORY[0x22AA9A450](v37, -1, -1);
    v38 = v29;
    v3 = v64;
    MEMORY[0x22AA9A450](v38, -1, -1);

    (*(v21 + 8))(v24, v72);
    v39 = v63;
  }

  else
  {

    (*(v15 + 8))(v20, v14);
    (*(v21 + 8))(v24, v72);
    v39 = v15;
  }

  v40 = v78;
  v41 = *(v78 + 312);
  v42 = sub_2276693C0();
  v43 = v73;
  v44 = v74;
  v45 = v75;
  (*(v74 + 104))(v73, *MEMORY[0x277D4F8A0], v75);
  v46 = sub_226EC9A38(v43, v42);

  result = (*(v44 + 8))(v43, v45);
  if (v46)
  {
    v66(v76, v77, v14);
    swift_beginAccess();
    v48 = *(v40 + 440);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v40 + 440) = v48;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v48 = sub_2273A4F74(0, v48[2] + 1, 1, v48);
      *(v40 + 440) = v48;
    }

    v51 = v48[2];
    v50 = v48[3];
    if (v51 >= v50 >> 1)
    {
      v48 = sub_2273A4F74(v50 > 1, v51 + 1, 1, v48);
    }

    v48[2] = v51 + 1;
    (*(v39 + 32))(v48 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v51, v76, v14);
    *(v40 + 440) = v48;
    swift_endAccess();
    v52 = v71;
    sub_226F5627C(v77, v71);
    v53 = swift_allocObject();
    *(v53 + 16) = sub_226F566B0;
    *(v53 + 24) = 0;
    v54 = v70;
    (*(v3 + 16))(v70, v52, v2);
    v55 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v56 = (v69 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = swift_allocObject();
    (*(v3 + 32))(v57 + v55, v54, v2);
    v58 = (v57 + v56);
    *v58 = sub_226F5AAF8;
    v58[1] = v53;
    v59 = v68;
    sub_227669270();
    v60 = *(v3 + 8);
    v60(v52, v2);
    v61 = sub_227669290();
    v62 = swift_allocObject();
    *(v62 + 16) = 0;
    *(v62 + 24) = 0;
    v61(sub_226EB4544, v62);

    return (v60)(v59, v2);
  }

  return result;
}

uint64_t sub_226F5627C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a1;
  v35 = a2;
  v4 = sub_2276646D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v8 = *(v34 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v34);
  v33 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v31 = &v30 - v11;
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A600();
  sub_22766B370();
  (*(v13 + 8))(v16, v12);
  v17 = v3[37];
  v30 = v3[38];
  __swift_project_boxed_opaque_existential_0(v3 + 34, v17);
  v18 = v4;
  (*(v5 + 16))(v7, v32, v4);
  v19 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v3;
  (*(v5 + 32))(v20 + v19, v7, v18);

  v21 = v31;
  sub_226ECF5D8(sub_226F5AB00, v20, v17, MEMORY[0x277D84F78] + 8, v30, v31);

  v22 = swift_allocObject();
  *(v22 + 16) = sub_226F5B0E0;
  *(v22 + 24) = v3;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_226F5B0EC;
  *(v23 + 24) = v22;
  v25 = v33;
  v24 = v34;
  (*(v8 + 16))(v33, v21, v34);
  v26 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v27 = swift_allocObject();
  (*(v8 + 32))(v27 + v26, v25, v24);
  v28 = (v27 + ((v9 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v28 = sub_226F32FEC;
  v28[1] = v23;

  sub_227669270();
  return (*(v8 + 8))(v21, v24);
}

void sub_226F566B0(void *a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v18 = a1;
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if (swift_dynamicCast())
  {
    sub_22766A730();
    v11 = sub_22766B380();
    v12 = sub_22766C890();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_226E8E000, v11, v12, "Failed to insert engagement badge.", v13, 2u);
      MEMORY[0x22AA9A450](v13, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
  }

  else
  {

    sub_22766A730();
    v14 = sub_22766B380();
    v15 = sub_22766C890();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_226E8E000, v14, v15, "Failed to add engagement badge.", v16, 2u);
      MEMORY[0x22AA9A450](v16, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
  }
}

uint64_t sub_226F568F8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v35 = *(v3 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v3);
  v34 = v30 - v5;
  v6 = sub_2276646D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766B390();
  v32 = *(v11 - 8);
  v33 = v11;
  v12 = *(v32 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  (*(v7 + 16))(v10, a1, v6);
  v15 = sub_22766B380();
  v16 = sub_22766C8B0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30[0] = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v30[1] = v1;
    v20 = v19;
    v36 = v19;
    *v18 = 136446210;
    v21 = sub_227664690();
    v31 = v3;
    v23 = v22;
    (*(v7 + 8))(v10, v6);
    v24 = sub_226E97AE8(v21, v23, &v36);
    v3 = v31;

    *(v18 + 4) = v24;
    _os_log_impl(&dword_226E8E000, v15, v16, "Removing engagement badge %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x22AA9A450](v20, -1, -1);
    v25 = v18;
    a1 = v30[0];
    MEMORY[0x22AA9A450](v25, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  (*(v32 + 8))(v14, v33);
  v26 = v34;
  sub_226F56CA8(a1, v34);
  v27 = sub_227669290();
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  v27(sub_226EB4544, v28);

  return (*(v35 + 8))(v26, v3);
}

uint64_t sub_226F56CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a1;
  v35 = a2;
  v4 = sub_2276646D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v8 = *(v34 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v34);
  v33 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v31 = &v30 - v11;
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A600();
  sub_22766B370();
  (*(v13 + 8))(v16, v12);
  v17 = v3[37];
  v30 = v3[38];
  __swift_project_boxed_opaque_existential_0(v3 + 34, v17);
  v18 = v4;
  (*(v5 + 16))(v7, v32, v4);
  v19 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v3;
  (*(v5 + 32))(v20 + v19, v7, v18);

  v21 = v31;
  sub_226ECF5D8(sub_226F5AA88, v20, v17, MEMORY[0x277D84F78] + 8, v30, v31);

  v22 = swift_allocObject();
  *(v22 + 16) = sub_226F5AAF4;
  *(v22 + 24) = v3;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_226EB4A28;
  *(v23 + 24) = v22;
  v25 = v33;
  v24 = v34;
  (*(v8 + 16))(v33, v21, v34);
  v26 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v27 = swift_allocObject();
  (*(v8 + 32))(v27 + v26, v25, v24);
  v28 = (v27 + ((v9 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v28 = sub_226EBFB9C;
  v28[1] = v23;

  sub_227669270();
  return (*(v8 + 8))(v21, v24);
}

uint64_t sub_226F570DC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - v4;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v6 = *(v25 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v25);
  v9 = &v24 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  v15 = sub_22766B380();
  v16 = sub_22766C8B0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_226E8E000, v15, v16, "EngagementSystem launching app to handle badge count change", v17, 2u);
    MEMORY[0x22AA9A450](v17, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v18 = *(v1 + 312);
  sub_2276693E0();
  v19 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_0((v1 + 16), *(v1 + 40));
  sub_227665920();
  sub_227662470();

  sub_22766AAC0();

  sub_226E97D1C(v5, &unk_27D7BB570, &unk_227670FC0);
  v20 = v25;
  v21 = sub_227669290();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  v21(sub_226E9F7B0, v22);

  return (*(v6 + 8))(v9, v20);
}

uint64_t *sub_226F573F4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  v1 = v0[32];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 34);
  v2 = v0[40];

  v3 = v0[41];

  __swift_destroy_boxed_opaque_existential_0(v0 + 42);
  __swift_destroy_boxed_opaque_existential_0(v0 + 47);
  v4 = v0[52];
  swift_unknownObjectRelease();
  v5 = v0[55];

  v6 = OBJC_IVAR____TtC15SeymourServices16EngagementSystem__journeysEnabled;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t sub_226F574D0()
{
  sub_226F573F4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EngagementSystem()
{
  result = qword_2813A34C8;
  if (!qword_2813A34C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_226F5757C()
{
  sub_226F57660();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_226F57660()
{
  if (!qword_2813A5890)
  {
    v0 = sub_227669750();
    if (!v1)
    {
      atomic_store(v0, &qword_2813A5890);
    }
  }
}

uint64_t sub_226F576C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a1;
  v64 = a2;
  v65 = a3;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v56 = *(v58 - 1);
  v4 = *(v56 + 64);
  v5 = MEMORY[0x28223BE20](v58);
  v53 = v6;
  v54 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v55 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD7A0, &unk_22767E4D0);
  v60 = *(v8 - 8);
  v61 = v8;
  v9 = *(v60 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v59 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v11;
  MEMORY[0x28223BE20](v10);
  v62 = &v51 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v51 - v16;
  v18 = sub_22766B390();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  v23 = *(v19 + 8);
  v23(v22, v18);
  (*(v14 + 16))(v17, v3 + OBJC_IVAR____TtC15SeymourServices16EngagementSystem__journeysEnabled, v13);
  sub_227669730();
  (*(v14 + 8))(v17, v13);
  if (v66 == 1)
  {
    v52 = v3;
    v24 = *(v3 + 320);
    sub_22766A600();
    sub_22766B370();
    v23(v22, v18);
    v25 = *(*__swift_project_boxed_opaque_existential_0((v24 + 16), *(v24 + 40)) + 24);
    v26 = swift_allocObject();
    *(v26 + 16) = v63;
    *(v26 + 24) = v64;

    v27 = v55;
    sub_227669280();
    v28 = swift_allocObject();
    *(v28 + 16) = v25;
    *(v28 + 24) = 10;
    v29 = v56;
    v30 = v54;
    v31 = v58;
    (*(v56 + 16))(v54, v27, v58);
    v32 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v33 = (v53 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    (*(v29 + 32))(v34 + v32, v30, v31);
    v35 = (v34 + v33);
    *v35 = sub_226F5AEF0;
    v35[1] = v28;

    v36 = v59;
    sub_227669270();
    (*(v29 + 8))(v27, v31);
    v37 = v62;
    sub_2272A2C28(v36, v62);
    v38 = v60;
    v39 = v61;
    v58 = *(v60 + 8);
    (v58)(v36, v61);
    v40 = swift_allocObject();
    v41 = v63;
    v42 = v64;
    *(v40 + 2) = v52;
    *(v40 + 3) = v41;
    *(v40 + 4) = v42;
    (*(v38 + 16))(v36, v37, v39);
    v43 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v44 = (v57 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = swift_allocObject();
    (*(v38 + 32))(v45 + v43, v36, v39);
    v46 = (v45 + v44);
    *v46 = sub_226F5AF48;
    v46[1] = v40;

    sub_227669270();
    return (v58)(v62, v39);
  }

  else
  {
    v48 = sub_2276646E0();
    sub_226F5AE70(&qword_27D7B8C40, MEMORY[0x277D50B70]);
    v49 = swift_allocError();
    (*(*(v48 - 8) + 104))(v50, *MEMORY[0x277D50B48], v48);
    *(swift_allocObject() + 16) = v49;
    return sub_227669280();
  }
}

uint64_t sub_226F57DF8(uint64_t a1)
{
  v2 = sub_22766B390();
  v42 = *(v2 - 8);
  v43 = v2;
  v3 = *(v42 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v41 = &v39 - v7;
  v8 = sub_227667D20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD790, &unk_227671C90);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v39 - v18);
  sub_226E93170(a1, &v39 - v18, &unk_27D7BD790, &unk_227671C90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    sub_22766A600();
    v21 = v20;
    v22 = sub_22766B380();
    v23 = sub_22766C890();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138543362;
      v26 = v20;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_226E8E000, v22, v23, "[Audio Language Engagement Sheet Failed fetching language engagement sheet: %{public}@", v24, 0xCu);
      sub_226E97D1C(v25, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v25, -1, -1);
      MEMORY[0x22AA9A450](v24, -1, -1);
    }

    else
    {
    }

    return (*(v42 + 8))(v6, v43);
  }

  else
  {
    (*(v9 + 32))(v15, v19, v8);
    sub_22766A600();
    (*(v9 + 16))(v13, v15, v8);
    v28 = sub_22766B380();
    v29 = sub_22766C8B0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v44 = v31;
      *v30 = 136315138;
      sub_226F5AE70(&qword_27D7B8C98, MEMORY[0x277D532D0]);
      v32 = sub_22766D140();
      v34 = v33;
      v40 = v15;
      v35 = *(v9 + 8);
      v35(v13, v8);
      v36 = sub_226E97AE8(v32, v34, &v44);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_226E8E000, v28, v29, "[Audio Language Engagement Sheet] Fetched audio language engagement sheet: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x22AA9A450](v31, -1, -1);
      MEMORY[0x22AA9A450](v30, -1, -1);

      (*(v42 + 8))(v41, v43);
      return (v35)(v40, v8);
    }

    else
    {

      v38 = *(v9 + 8);
      v38(v13, v8);
      (*(v42 + 8))(v41, v43);
      return (v38)(v15, v8);
    }
  }
}

uint64_t sub_226F582F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_22766B390();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F583F0, 0, 0);
}

uint64_t sub_226F583F0()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_22766A600();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v4 = *(MEMORY[0x277CEE0C0] + 4);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_226F584F8;
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[3];

  return MEMORY[0x2821406E8](v6, v7, 0);
}

uint64_t sub_226F584F8()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226F585F4, 0, 0);
}

uint64_t sub_226F585F4()
{
  v1 = v0[5];
  v2 = sub_2276624A0();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[8];
    sub_226E97D1C(v1, &unk_27D7BB570, &unk_227670FC0);
    v5 = sub_2276646E0();
    sub_226F5AE70(&qword_27D7B8C40, MEMORY[0x277D50B70]);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D50B38], v5);
    swift_willThrow();
  }

  else
  {
    v8 = v0[8];
    (*(v3 + 32))(v0[2], v1, v2);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_226F587E0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C48, &unk_227671C40);
  v5 = sub_2276646D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_227670CD0;
  (*(v6 + 16))(v9 + v8, a3, v5);
  sub_2275575BC(v9, v4[1], *(v4 + 16), v4[3]);
}

uint64_t sub_226F58900@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A600();
  sub_22766B370();
  (*(v11 + 8))(v14, v10);
  v15 = v2[37];
  v16 = v2[38];
  __swift_project_boxed_opaque_existential_0(v2 + 34, v15);

  sub_226ECF5D8(sub_226F5AE54, v2, v15, MEMORY[0x277D84F78] + 8, v16, v9);

  v17 = swift_allocObject();
  *(v17 + 16) = sub_226F5B0E0;
  *(v17 + 24) = v2;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_226F5B0EC;
  *(v18 + 24) = v17;
  (*(v4 + 16))(v7, v9, v3);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  (*(v4 + 32))(v20 + v19, v7, v3);
  v21 = (v20 + ((v5 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_226F32FEC;
  v21[1] = v18;

  sub_227669270();
  return (*(v4 + 8))(v9, v3);
}

void sub_226F58C40(void *a1)
{
  v2 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[3];
  v6 = *(v2 + 16);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C88, &qword_227671C80);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = v3;
  v12 = v4;

  sub_22766A070();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v6;
  *(v10 + 40) = v5;
  v13 = qword_2813B2078;
  swift_beginAccess();
  v14 = sub_227542618(v10 + v13, v6, v5);
  if (v14)
  {
    if (v14 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_5;
  }

  v15 = sub_2272846DC(0);
  if (v1)
  {
LABEL_5:

    return;
  }

  v16 = v15;
  [v15 setResultType_];
  sub_226ED9864();
  v17 = sub_22766C9E0();
  v18 = sub_226EDAB24(v17);

  sub_226EDAB78(v18, v12);
}

uint64_t sub_226F58DF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A600();
  sub_22766B370();
  (*(v11 + 8))(v14, v10);
  v15 = v2[37];
  v16 = v2[38];
  __swift_project_boxed_opaque_existential_0(v2 + 34, v15);

  sub_226ECF5D8(sub_226F5AD54, v2, v15, MEMORY[0x277D84F78] + 8, v16, v9);

  v17 = swift_allocObject();
  *(v17 + 16) = sub_226F5B0C4;
  *(v17 + 24) = v2;
  (*(v4 + 16))(v7, v9, v3);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = (v5 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v4 + 32))(v20 + v18, v7, v3);
  v21 = (v20 + v19);
  *v21 = sub_226F32FEC;
  v21[1] = v17;

  sub_227669270();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_226F5910C(void *a1, uint64_t a2)
{
  v5 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v9 = v5[3];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C78, &unk_227671C70);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  v14 = v6;
  v15 = v7;

  sub_22766A070();
  *(v13 + 16) = v14;
  *(v13 + 24) = v15;
  *(v13 + 32) = v8;
  *(v13 + 40) = v9;
  v16 = sub_2272331B8(100);
  if (v2)
  {
    swift_setDeallocating();

    v17 = *(v13 + 40);

    v18 = qword_2813B2078;
    v19 = sub_22766A100();
    (*(*(v19 - 8) + 8))(v13 + v18, v19);
    v20 = *(*v13 + 48);
    v21 = *(*v13 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v23 = v16;
    swift_setDeallocating();

    v24 = *(v13 + 40);

    v25 = qword_2813B2078;
    v26 = sub_22766A100();
    (*(*(v26 - 8) + 8))(v13 + v25, v26);
    v27 = *(*v13 + 48);
    v28 = *(*v13 + 52);
    swift_deallocClassInstance();
    sub_22751304C(v23, a1);
    v29 = *__swift_project_boxed_opaque_existential_0((a2 + 376), *(a2 + 400));
    v30 = sub_226F5A5AC(v23);

    sub_2272D7A98(1, v30, a1);
  }
}

char *sub_226F593A0(void *a1, uint64_t a2)
{
  result = sub_2275134A4(a1);
  if (!v2)
  {
    v6 = result;
    sub_22751304C(result, a1);
    v7 = *__swift_project_boxed_opaque_existential_0((a2 + 376), *(a2 + 400));
    v8 = sub_226F5A5AC(v6);

    sub_2272D7A98(1, v8, a1);
  }

  return result;
}

uint64_t sub_226F59450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v40 = a2;
  v5 = sub_227669040();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v9 = *(v39 - 8);
  v38 = *(v9 + 64);
  v10 = MEMORY[0x28223BE20](v39);
  v37 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v36 = &v35 - v12;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v14 + 8))(v17, v13);
  v18 = v3[37];
  v19 = v3[38];
  __swift_project_boxed_opaque_existential_0(v3 + 34, v18);
  (*(v6 + 16))(v8, a1, v5);
  v20 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v3;
  (*(v6 + 32))(v21 + v20, v8, v5);

  v22 = v36;
  sub_226ECF5D8(sub_226F5ACEC, v21, v18, MEMORY[0x277D84F78] + 8, v19, v36);

  v23 = *__swift_project_boxed_opaque_existential_0(v3 + 47, v3[50]);
  v42[3] = type metadata accessor for SyncCoordinator();
  v42[4] = &off_283AA3680;
  v42[0] = v23;
  sub_226E91B50(v42, v41);
  v24 = swift_allocObject();
  sub_226F19770(v41, v24 + 16);

  __swift_destroy_boxed_opaque_existential_0(v42);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_226F3277C;
  *(v25 + 24) = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_226F5AD2C;
  *(v26 + 24) = v25;
  v27 = v37;
  v28 = v22;
  v29 = v39;
  (*(v9 + 16))(v37, v22, v39);
  v30 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v31 = (v38 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  (*(v9 + 32))(v32 + v30, v27, v29);
  v33 = (v32 + v31);
  *v33 = sub_226F32FEC;
  v33[1] = v26;
  sub_227669270();
  return (*(v9 + 8))(v28, v29);
}

void sub_226F598F0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_227513C04(a3, a1);
  if (!v3)
  {
    v6 = *__swift_project_boxed_opaque_existential_0((a2 + 376), *(a2 + 400));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_227670CD0;
    v8 = sub_226F5AE70(&qword_27D7B8C70, MEMORY[0x277D539C0]);
    v9 = *(v8 + 104);
    v10 = sub_227669040();
    v9(&v12, v10, v8);
    *(v7 + 32) = sub_22766D140();
    *(v7 + 40) = v11;
    sub_2272D7AC4(0, v7, a1);
  }
}

uint64_t sub_226F59A2C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C90, &qword_227671C88);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  v14 = *__swift_project_boxed_opaque_existential_0((a2 + 136), *(a2 + 160));
  result = sub_2275129B4(a1, v13);
  if (!v3)
  {
    sub_226E93170(v13, v11, &qword_27D7B8C90, &qword_227671C88);
    v16 = sub_227669040();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v11, 1, v16) == 1)
    {
      sub_226E97D1C(v11, &qword_27D7B8C90, &qword_227671C88);
      sub_227669030();
      return sub_226E97D1C(v13, &qword_27D7B8C90, &qword_227671C88);
    }

    else
    {
      sub_226E97D1C(v13, &qword_27D7B8C90, &qword_227671C88);
      return (*(v17 + 32))(a3, v11, v16);
    }
  }

  return result;
}

uint64_t sub_226F59BF8@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C88, &qword_227671C80);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = v5;
  v14 = v6;

  sub_22766A070();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v7;
  *(v12 + 40) = v8;
  v15 = sub_2272337B8(100);
  if (v2)
  {
    swift_setDeallocating();

    v16 = *(v12 + 40);

    v17 = qword_2813B2078;
    v18 = sub_22766A100();
    (*(*(v18 - 8) + 8))(v12 + v17, v18);
    v19 = *(*v12 + 48);
    v20 = *(*v12 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v22 = v15;
    swift_setDeallocating();

    v23 = *(v12 + 40);

    v24 = qword_2813B2078;
    v25 = sub_22766A100();
    (*(*(v25 - 8) + 8))(v12 + v24, v25);
    v26 = *(*v12 + 48);
    v27 = *(*v12 + 52);
    result = swift_deallocClassInstance();
    *a2 = v22;
  }

  return result;
}

uint64_t sub_226F59E0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_227513EC4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_226F59E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31 = a1;
  v34 = a2;
  v4 = sub_227666170();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v8 = *(v33 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v33);
  v32 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v30 = &v29 - v11;
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A600();
  sub_22766B370();
  (*(v13 + 8))(v16, v12);
  v17 = v3[37];
  v29 = v3[38];
  __swift_project_boxed_opaque_existential_0(v3 + 34, v17);
  v18 = v4;
  (*(v5 + 16))(v7, v31, v4);
  v19 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v3;
  (*(v5 + 32))(v20 + v19, v7, v18);

  v21 = v30;
  sub_226ECF5D8(sub_226F5AD70, v20, v17, MEMORY[0x277D84F78] + 8, v29, v30);

  v22 = swift_allocObject();
  *(v22 + 16) = sub_226F5AE3C;
  *(v22 + 24) = v3;
  v24 = v32;
  v23 = v33;
  (*(v8 + 16))(v32, v21, v33);
  v25 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v26 = swift_allocObject();
  (*(v8 + 32))(v26 + v25, v24, v23);
  v27 = (v26 + ((v9 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v27 = sub_226F32FEC;
  v27[1] = v22;

  sub_227669270();
  return (*(v8 + 8))(v21, v23);
}

uint64_t sub_226F5A240(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C80, &qword_227679AE0);
  v8 = sub_227666170();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_227670CD0;
  (*(v9 + 16))(v12 + v11, a3, v8);
  sub_2275586F8(v12, v7[1], *(v7 + 16), v7[3]);

  if (!v3)
  {
    v14 = *__swift_project_boxed_opaque_existential_0((a2 + 376), *(a2 + 400));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_227670CD0;
    *(v15 + 32) = sub_227666150();
    *(v15 + 40) = v16;
    sub_2272D7A98(0, v15, a1);
  }

  return result;
}

uint64_t sub_226F5A3E8(uint64_t a1)
{
  v3 = sub_2276624A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = *__swift_project_boxed_opaque_existential_0((*v1 + 56), *(*v1 + 80));
  sub_226E9EF44();
  v7 = objc_allocWithZone(sub_22766AA60());
  v8 = sub_22766AA50();
  (*(v4 + 16))(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  (*(v4 + 32))(v10 + v9, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v11 = swift_allocObject();
  *(v11 + 16) = "SeymourServices/EngagementSystem.swift";
  *(v11 + 24) = 38;
  *(v11 + 32) = 2;
  *(v11 + 40) = 229;
  *(v11 + 48) = &unk_227671C30;
  *(v11 + 56) = v10;
  return sub_227669270();
}

uint64_t sub_226F5A5AC(uint64_t a1)
{
  v50 = sub_227666170();
  v2 = *(v50 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v50);
  v49 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v45 = &v43 - v7;
  MEMORY[0x28223BE20](v6);
  v44 = &v43 - v8;
  v9 = *(a1 + 16);
  v55 = MEMORY[0x277D84F90];
  sub_226F1EF90(0, v9, 0);
  v10 = a1 + 56;
  v11 = v55;
  v12 = -1;
  v13 = -1 << *(a1 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & *(a1 + 56);
  v15 = (63 - v13) >> 6;
  v51 = a1;
  v52 = v2;
  v48 = v9;
  if (v9)
  {
    v46 = v2 + 8;
    v47 = v2 + 16;

    v16 = 0;
    v17 = 0;
    while (v14)
    {
      v18 = v11;
LABEL_11:
      v20 = v52;
      v21 = *(a1 + 48) + *(v52 + 72) * (__clz(__rbit64(v14)) | (v17 << 6));
      v22 = v49;
      v23 = v50;
      (*(v52 + 16))(v49, v21, v50);
      v24 = sub_227666150();
      v53 = v25;
      v54 = v24;
      (*(v20 + 8))(v22, v23);
      v11 = v18;
      v55 = v18;
      v27 = *(v18 + 16);
      v26 = *(v18 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_226F1EF90(v26 > 1, v27 + 1, 1);
        v11 = v55;
      }

      ++v16;
      v14 &= v14 - 1;
      *(v11 + 16) = v27 + 1;
      v28 = v11 + 16 * v27;
      v29 = v53;
      *(v28 + 32) = v54;
      *(v28 + 40) = v29;
      a1 = v51;
      if (v16 == v48)
      {
        goto LABEL_16;
      }
    }

    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {
        goto LABEL_29;
      }

      v14 = *(v10 + 8 * v19);
      ++v17;
      if (v14)
      {
        v18 = v11;
        v17 = v19;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    v17 = 0;
LABEL_16:
    v30 = v52;
    v53 = v52 + 16;
    v48 = v52 + 8;
    v49 = (v52 + 32);
    if (!v14)
    {
      goto LABEL_18;
    }

    do
    {
      v54 = v11;
LABEL_22:
      v32 = *(a1 + 48) + *(v30 + 72) * (__clz(__rbit64(v14)) | (v17 << 6));
      v33 = v45;
      v34 = v50;
      (*(v30 + 16))(v45, v32, v50);
      v35 = v44;
      (*(v30 + 32))(v44, v33, v34);
      v36 = sub_227666150();
      v38 = v37;
      (*(v30 + 8))(v35, v34);
      v11 = v54;
      v55 = v54;
      v40 = *(v54 + 16);
      v39 = *(v54 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_226F1EF90(v39 > 1, v40 + 1, 1);
        v11 = v55;
      }

      v14 &= v14 - 1;
      *(v11 + 16) = v40 + 1;
      v41 = v11 + 16 * v40;
      *(v41 + 32) = v36;
      *(v41 + 40) = v38;
      a1 = v51;
      v30 = v52;
    }

    while (v14);
LABEL_18:
    while (1)
    {
      v31 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v31 >= v15)
      {

        return v11;
      }

      v14 = *(v10 + 8 * v31);
      ++v17;
      if (v14)
      {
        v54 = v11;
        v17 = v31;
        goto LABEL_22;
      }
    }
  }

  __break(1u);
LABEL_29:

  __break(1u);
  return result;
}

uint64_t sub_226F5A990(uint64_t a1)
{
  v4 = *(sub_2276624A0() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E92F34;

  return sub_226F582F4(a1, v6, v1 + v5);
}

uint64_t sub_226F5AB40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C58, &qword_227671C50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226F5AD2C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_226F5AE70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226F5AEF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(v2 + 24);
  v6 = *(v2 + 16);
  return sub_227286FA0(v5, v3, v4, a2);
}

uint64_t sub_226F5AF48@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = *(v2[2] + 320);
  return sub_2274E229C(v3, v4, *a1, a2);
}

uint64_t sub_226F5AFF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_226F5B178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226F5B19C, 0, 0);
}

uint64_t sub_226F5B19C()
{
  v1 = v0[4];
  v2 = v1[2];
  v0[5] = v2;
  if (v2)
  {
    v0[6] = 0;
    v3 = v1[7];
    v4 = v1[8];
    __swift_project_boxed_opaque_existential_0(v1 + 4, v3);
    v5 = *(v4 + 8);
    v12 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_226F5B310;
    v9 = v0[2];
    v8 = v0[3];

    return v12(v9, v8, v3, v4);
  }

  else
  {
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_226F5B310()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226F5B40C, 0, 0);
}

uint64_t sub_226F5B40C()
{
  v1 = v0[6] + 1;
  if (v1 == v0[5])
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[6] = v1;
    v4 = (v0[4] + 40 * v1);
    v5 = v4[7];
    v6 = v4[8];
    __swift_project_boxed_opaque_existential_0(v4 + 4, v5);
    v7 = *(v6 + 8);
    v12 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[7] = v9;
    *v9 = v0;
    v9[1] = sub_226F5B310;
    v11 = v0[2];
    v10 = v0[3];

    return v12(v11, v10, v5, v6);
  }
}

uint64_t sub_226F5B58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = (a3 + 32);
  v12 = *(a3 + 16) + 1;
  while (--v12)
  {
    v13 = v11 + 5;
    v14 = v11[3];
    v15 = v11[4];
    __swift_project_boxed_opaque_existential_0(v11, v14);
    v16 = (*(v15 + 16))(a1, a2, a4, a5, a6, v14, v15);
    v11 = v13;
    if (v16)
    {
      return v16;
    }
  }

  return 0;
}

uint64_t sub_226F5B64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = (a4 + 32);
  v12 = *(a4 + 16) + 1;
  while (--v12)
  {
    v13 = v11 + 5;
    v14 = v11[3];
    v15 = v11[4];
    __swift_project_boxed_opaque_existential_0(v11, v14);
    v16 = (*(v15 + 24))(a1, a2, a3, a5, a6, v14, v15);
    v11 = v13;
    if (v16)
    {
      return v16;
    }
  }

  return 0;
}

uint64_t sub_226F5B70C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_226E92F34;

  return sub_226F5B178(a1, a2, v6);
}

void sub_226F5B7DC(void *a1)
{
  v3 = sub_227662190();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227665440();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = [a1 dateOffset];
  if (v10)
  {
    v21 = v4;
    v11 = v10;
    sub_22766C000();

    sub_2276620C0();
    if (!v1)
    {
      sub_227662120();
      if (v12 & 1) != 0 || (sub_227662130(), (v13) || (sub_227662160(), (v14) || (sub_227662170(), (v15))
      {
        v16 = sub_227664470();
        sub_226F5C124(&qword_27D7BA250, MEMORY[0x277D50940]);
        swift_allocError();
        (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277D50908], v16);
        swift_willThrow();

        (*(v21 + 8))(v7, v3);
        return;
      }

      sub_2276653F0();
      (*(v21 + 8))(v7, v3);
      [a1 index];
      sub_227665EF0();
    }
  }

  else
  {
    v18 = sub_227664DD0();
    sub_226F5C124(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51028], v18);
    swift_willThrow();
  }
}

size_t static WorkoutPlanReference.representativeSamples()()
{
  v32 = sub_227665440();
  v0 = *(v32 - 8);
  v1 = v0;
  v2 = *(v0 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CA0, &qword_227671D68);
  v4 = *(v30 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v30);
  v7 = v25 - v6;
  v29 = sub_227665F20();
  v8 = *(v29 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v29);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CA8, &qword_227671D70);
  v12 = *(v0 + 72);
  v13 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_227670CD0;
  sub_2276653F0();
  sub_226F05E24();
  v38 = sub_22766CFA0();
  v39[0] = v14;
  v39[1] = v39;
  v39[2] = &v38;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CB0, &qword_227671D78);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96F0, qword_227674920);
  v34 = sub_226F5BF60(&qword_27D7B8CB8, &qword_27D7B8CB0, &qword_227671D78);
  v35 = sub_226F5BF60(&qword_27D7B8510, &qword_27D7B96F0, qword_227674920);
  v15 = sub_2276638E0();

  v16 = *(v15 + 16);
  if (v16)
  {
    v27 = v11;
    v33 = MEMORY[0x277D84F90];
    result = sub_226F1F708(0, v16, 0);
    v18 = 0;
    v19 = v33;
    v28 = v4;
    v26 = v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v20 = (v1 + 16);
    v25[1] = v8 + 32;
    v21 = v27;
    while (v18 < *(v15 + 16))
    {
      sub_226F5BFF4(v26 + *(v28 + 72) * v18, v7);
      v22 = *&v7[*(v30 + 48)];
      (*v20)(v31, v7, v32);
      sub_227665EF0();
      sub_226F5C064(v7);
      v33 = v19;
      v24 = *(v19 + 16);
      v23 = *(v19 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_226F1F708(v23 > 1, v24 + 1, 1);
        v19 = v33;
      }

      ++v18;
      *(v19 + 16) = v24 + 1;
      result = (*(v8 + 32))(v19 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v24, v21, v29);
      if (v16 == v18)
      {

        return v19;
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

uint64_t sub_226F5BF60(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_226F5BFF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CA0, &qword_227671D68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226F5C064(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CA0, &qword_227671D68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226F5C0CC(uint64_t a1)
{
  result = sub_226F5C124(&qword_27D7B8CC0, MEMORY[0x277D51FE0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226F5C124(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_226F5C16C(void *a1)
{
  v3 = sub_227665440();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227665F00();
  sub_22730F2B4();
  if (v1)
  {
    return (*(v4 + 8))(v7, v3);
  }

  (*(v4 + 8))(v7, v3);
  v9 = sub_22766BFD0();

  [a1 setDateOffset_];

  v10 = sub_227665F10();
  v11 = 0x7FFFFFFFLL;
  if (v10 < 0x7FFFFFFF)
  {
    v11 = v10;
  }

  if (v11 <= 0xFFFFFFFF80000000)
  {
    v12 = 0xFFFFFFFF80000000;
  }

  else
  {
    v12 = v11;
  }

  return [a1 setIndex_];
}

void sub_226F5C2F4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CC8, &unk_227689B50);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v58 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v59 = &v50 - v8;
  v62 = sub_2276627D0();
  v60 = *(v62 - 8);
  v9 = *(v60 + 64);
  v10 = MEMORY[0x28223BE20](v62);
  v57 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v50 - v13;
  MEMORY[0x28223BE20](v12);
  v61 = &v50 - v15;
  v63 = sub_227662750();
  v16 = *(v63 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v63);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v50 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v50 - v24;
  v26 = [a1 sessionIdentifier];
  if (!v26)
  {
    goto LABEL_12;
  }

  v55 = a2;
  v27 = v26;
  v54 = sub_22766C000();
  v29 = v28;

  v30 = [a1 catalogWorkoutIdentifier];
  if (!v30)
  {
LABEL_11:

LABEL_12:
    v44 = sub_227664DD0();
    sub_226F5D360(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v44 - 8) + 104))(v45, *MEMORY[0x277D51028], v44);
    swift_willThrow();

    return;
  }

  v56 = v29;
  v31 = v30;
  v53 = sub_22766C000();
  v33 = v32;

  v34 = [a1 startDate];
  if (!v34)
  {
LABEL_10:

    goto LABEL_11;
  }

  v35 = v34;
  sub_227662710();

  v36 = v23;
  v37 = v63;
  (*(v16 + 32))(v25, v36, v63);
  v38 = [a1 healthKitWorkoutIdentifier];
  if (!v38)
  {
    (*(v16 + 8))(v25, v37);
    goto LABEL_10;
  }

  v39 = v38;
  sub_2276627B0();

  (*(v60 + 32))(v61, v14, v62);
  v51 = [a1 workoutActivityType];
  [a1 duration];
  v40 = [a1 queueIdentifier];
  v52 = v33;
  if (v40)
  {
    v41 = v40;
    sub_22766C000();

    v42 = [a1 playlistIdentifier];
    if (v42)
    {
      v43 = v42;
      v50 = sub_22766C000();
    }

    v47 = v59;
    sub_227664920();
    v46 = 0;
  }

  else
  {
    v46 = 1;
    v47 = v59;
  }

  v48 = sub_227664950();
  (*(*(v48 - 8) + 56))(v47, v46, 1, v48);
  v49 = v60;
  (*(v60 + 16))(v57, v61, v62);
  v59 = (v51 & ~(v51 >> 31));
  (*(v16 + 16))(v20, v25, v63);
  sub_226E93170(v47, v58, &qword_27D7B8CC8, &unk_227689B50);
  sub_227668340();

  sub_226E97D1C(v47, &qword_27D7B8CC8, &unk_227689B50);
  (*(v49 + 8))(v61, v62);
  (*(v16 + 8))(v25, v63);
}

size_t static HealthKitStandaloneWorkoutJob.representativeSamples()()
{
  v58 = sub_227662750();
  v61 = *(v58 - 8);
  v0 = *(v61 + 64);
  MEMORY[0x28223BE20](v58);
  v57 = v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_2276627D0();
  v60 = *(v56 - 8);
  v2 = *(v60 + 64);
  MEMORY[0x28223BE20](v56);
  v55 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CC8, &unk_227689B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v54 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v53 = v39 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CD0, &qword_227671E38);
  v9 = *(v52 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v52);
  v49 = v39 - v11;
  v51 = sub_227668390();
  v12 = *(v51 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v51);
  v50 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22766C090();
  v16 = sub_22766C090();
  v17 = sub_227662780();
  sub_226F5D220();
  v18 = sub_22766CFA0();
  v19 = sub_227662630();
  sub_226F5D274();
  v20 = sub_22766BE70();
  v21 = sub_227664950();
  v22 = sub_22766C320();
  v82 = v16;
  v83[0] = v15;
  v83[1] = v83;
  v83[2] = &v82;
  v80 = v18;
  v81 = v17;
  v83[3] = &v81;
  v83[4] = &v80;
  v78 = v20;
  v79 = v19;
  v83[5] = &v79;
  v83[6] = &v78;
  v77 = v22;
  v83[7] = &v77;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v71 = v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84D0, &unk_227675750);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CE8, &qword_227671E40);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF8, &qword_227671E50);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D00, &qword_227671E58);
  v63 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v64 = v63;
  v65 = sub_226F5BF60(&qword_27D7B84F0, &qword_27D7B84D0, &unk_227675750);
  v66 = sub_226F5BF60(&qword_27D7B8D08, &qword_27D7B8CE8, &qword_227671E40);
  v67 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v68 = sub_226F5BF60(&qword_27D7B8D18, &qword_27D7B8CF8, &qword_227671E50);
  v69 = sub_226F5BF60(&qword_27D7B8D20, &qword_27D7B8D00, &qword_227671E58);
  v23 = sub_2276638E0();

  v24 = *(v23 + 16);
  if (v24)
  {
    v62 = MEMORY[0x277D84F90];
    result = sub_226F1F728(0, v24, 0);
    v26 = 0;
    v43 = v23 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v27 = v62;
    v42 = v21 - 8;
    v41 = (v60 + 16);
    v40 = (v61 + 16);
    v39[1] = v12 + 32;
    v48 = v9;
    v47 = v12;
    v46 = v21;
    v45 = v23;
    v44 = v24;
    while (v26 < *(v23 + 16))
    {
      v28 = v49;
      sub_226E93170(v43 + *(v9 + 72) * v26, v49, &qword_27D7B8CD0, &qword_227671E38);
      v29 = *(v28 + 1);
      v61 = *v28;
      v30 = *(v28 + 3);
      v60 = *(v28 + 2);
      v31 = v52[16];
      v59 = *&v28[v52[20]];
      v32 = v52[24];
      v33 = *&v28[v52[28]];
      v34 = *(v21 - 8);
      v35 = v53;
      (*(v34 + 16))(v53, &v28[v52[32]], v21);
      (*(v34 + 56))(v35, 0, 1, v21);
      (*v41)(v55, &v28[v31], v56);
      (*v40)(v57, &v28[v32], v58);
      sub_226E93170(v35, v54, &qword_27D7B8CC8, &unk_227689B50);

      v36 = v50;
      sub_227668340();
      sub_226E97D1C(v35, &qword_27D7B8CC8, &unk_227689B50);
      sub_226E97D1C(v28, &qword_27D7B8CD0, &qword_227671E38);
      v62 = v27;
      v38 = *(v27 + 16);
      v37 = *(v27 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_226F1F728(v37 > 1, v38 + 1, 1);
        v27 = v62;
      }

      ++v26;
      *(v27 + 16) = v38 + 1;
      result = (*(v47 + 32))(v27 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v38, v36, v51);
      v9 = v48;
      v21 = v46;
      v23 = v45;
      if (v44 == v26)
      {

        return v27;
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

unint64_t sub_226F5D220()
{
  result = qword_27D7B8CD8;
  if (!qword_27D7B8CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8CD8);
  }

  return result;
}

unint64_t sub_226F5D274()
{
  result = qword_27D7B8CE0;
  if (!qword_27D7B8CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8CE0);
  }

  return result;
}

uint64_t sub_226F5D308(uint64_t a1)
{
  result = sub_226F5D360(&qword_2813A5568, MEMORY[0x277D53480]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226F5D360(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_226F5D3A8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CC8, &unk_227689B50);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v33 = &v32 - v6;
  v34 = sub_227662750();
  v7 = *(v34 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v34);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2276627D0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227668350();
  v16 = sub_22766BFD0();

  [a1 setSessionIdentifier_];

  sub_227668320();
  v17 = sub_22766BFD0();

  [a1 setCatalogWorkoutIdentifier_];

  sub_227668310();
  v18 = sub_227662790();
  v19 = v11;
  v20 = v33;
  (*(v12 + 8))(v15, v19);
  [a1 setHealthKitWorkoutIdentifier_];

  v21 = sub_227668360();
  if (v21 >= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFFLL;
  }

  else
  {
    v22 = v21;
  }

  [a1 setWorkoutActivityType_];
  sub_227668380();
  v23 = sub_2276626A0();
  (*(v7 + 8))(v10, v34);
  [a1 setStartDate_];

  sub_227668370();
  [a1 setDuration_];
  sub_227668330();
  v24 = sub_227664950();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  if (v26(v20, 1, v24) == 1)
  {
    sub_226E97D1C(v20, &qword_27D7B8CC8, &unk_227689B50);
    v27 = 0;
  }

  else
  {
    sub_227664930();
    (*(v25 + 8))(v20, v24);
    v27 = sub_22766BFD0();
  }

  [a1 setQueueIdentifier_];

  v28 = v35;
  sub_227668330();
  if (v26(v28, 1, v24) == 1)
  {
    sub_226E97D1C(v28, &qword_27D7B8CC8, &unk_227689B50);
  }

  else
  {
    sub_227664940();
    v30 = v29;
    (*(v25 + 8))(v28, v24);
    if (v30)
    {
      v31 = sub_22766BFD0();

      [a1 setPlaylistIdentifier_];
    }
  }
}

void sub_226F5D81C(void *a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8460, qword_2276709E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  v8 = sub_2276694E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 zoneName];
  if (v13)
  {
    v26 = a2;
    v14 = v13;
    sub_22766C000();

    sub_2276694B0();
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_226E97D1C(v7, &qword_27D7B8460, qword_2276709E0);
    }

    else
    {
      v15 = *(v9 + 32);
      v15(v12, v7, v8);
      v16 = [a1 changeWindow];
      if (v16)
      {
        v17 = v16;
        v18 = sub_227662590();
        v20 = v19;

        v21 = v26;
        v15(v26, v12, v8);
        v22 = &v21[*(type metadata accessor for SyncZoneChangeWindow() + 20)];
        *v22 = v18;
        v22[1] = v20;
        return;
      }

      (*(v9 + 8))(v12, v8);
    }
  }

  v23 = sub_227664DD0();
  sub_226F5DC10(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51028], v23);
  swift_willThrow();
}

void sub_226F5DB1C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_2276694C0();
  v6 = sub_22766BFD0();

  [a1 setZoneName_];

  v7 = (v3 + *(a3 + 20));
  v8 = *v7;
  v9 = v7[1];
  v10 = sub_227662560();
  [a1 setChangeWindow_];
}

uint64_t sub_226F5DBB8(uint64_t a1)
{
  result = sub_226F5DC10(qword_28139A520, type metadata accessor for SyncZoneChangeWindow);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226F5DC10(unint64_t *a1, void (*a2)(uint64_t))
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

size_t sub_226F5DC58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D28, &qword_227671EF0);
  v1 = *(v0 - 8);
  v30 = v0;
  v31 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v28 - v3;
  v29 = type metadata accessor for SyncZoneChangeWindow();
  v5 = *(v29 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v29);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2276694D0();
  v10 = v9;
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = sub_2274CD740(*(v9 + 16), 0);
    v13 = *(sub_2276694E0() - 8);
    v14 = sub_2274CDD98(v39, (v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80))), v11, v10);
    sub_226EBB21C();
    if (v14 == v11)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v12 = MEMORY[0x277D84F90];
LABEL_5:
  v37 = sub_2276624D0();
  v38 = v12;
  v39[0] = &v38;
  v39[1] = &v37;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D30, &qword_227671EF8);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D38, &qword_227671F00);
  v33 = sub_226F5BF60(&qword_27D7B8D40, &qword_27D7B8D30, &qword_227671EF8);
  v34 = sub_226F5BF60(&qword_27D7B8D48, &qword_27D7B8D38, &qword_227671F00);
  v15 = sub_2276638E0();

  v16 = *(v15 + 16);
  if (v16)
  {
    v32 = MEMORY[0x277D84F90];
    result = sub_226F1EFD0(0, v16, 0);
    v18 = 0;
    v19 = v32;
    v20 = v15 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    while (v18 < *(v15 + 16))
    {
      sub_226F5E044(v20 + *(v31 + 72) * v18, v4);
      v21 = &v4[*(v30 + 48)];
      v22 = *v21;
      v23 = v21[1];
      v24 = sub_2276694E0();
      (*(*(v24 - 8) + 16))(v8, v4, v24);
      v25 = &v8[*(v29 + 20)];
      *v25 = v22;
      v25[1] = v23;
      sub_226F5E0B4(v22, v23);
      sub_226E97D1C(v4, &qword_27D7B8D28, &qword_227671EF0);
      v32 = v19;
      v27 = *(v19 + 16);
      v26 = *(v19 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_226F1EFD0(v26 > 1, v27 + 1, 1);
        v19 = v32;
      }

      ++v18;
      *(v19 + 16) = v27 + 1;
      result = sub_226F5E108(v8, v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v27);
      if (v16 == v18)
      {

        return v19;
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

uint64_t sub_226F5E044(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D28, &qword_227671EF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226F5E0B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_226F5E108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncZoneChangeWindow();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_226F5E16C(void *a1)
{
  v2 = [a1 identifier];
  if (!v2)
  {
    goto LABEL_30;
  }

  v3 = v2;
  sub_22766C000();

  v4 = [a1 type];
  if (!v4)
  {
LABEL_29:

LABEL_30:
    v15 = sub_227664DD0();
    sub_226F5EA44(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D51028], v15);
    swift_willThrow();

    return;
  }

  v5 = v4;
  v6 = sub_22766C000();
  v8 = v7;

  v9 = [a1 intensity];
  if (v9)
  {
    v10 = v9;
    sub_22766C000();
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = [a1 rangeLowerBound];
  if ([a1 rangeUpperBound] >= v13)
  {
    [a1 shouldShowPlus];
    if (v6 == 0x52656E696C636E69 && v8 == 0xEA00000000006E75 || (sub_22766D190() & 1) != 0 || v6 == 0x57656E696C636E69 && v8 == 0xEB000000006B6C61 || (sub_22766D190() & 1) != 0)
    {

LABEL_11:
      [a1 duration];
      [a1 leadDuration];
      [a1 startTime];
      sub_227663DE0();

      return;
    }

    if (v6 == 0x7469736E65746E69 && v8 == 0xE900000000000079 || (sub_22766D190() & 1) != 0)
    {

      if (v12)
      {
        goto LABEL_11;
      }
    }

    else
    {

      if (v6 == 7172210 && v8 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v6 == 7172211 && v8 == 0xE300000000000000)
      {

        goto LABEL_11;
      }

      v14 = sub_22766D190();

      if (v14)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_29;
  }

  __break(1u);
}

size_t static CoachingEvent.representativeSamples()()
{
  v28 = sub_227663E50();
  v0 = *(v28 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v28);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22766C090();
  sub_226F5D274();
  v5 = sub_22766BE70();
  v6 = sub_22766BE70();
  v7 = sub_22766BE70();
  v43 = v5;
  v44[0] = v4;
  v44[1] = v44;
  v44[2] = &v43;
  v41 = v7;
  v42 = v6;
  v44[3] = &v42;
  v44[4] = &v41;
  v40 = &unk_283A92378;
  v44[5] = &v40;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF8, &qword_227671E50);
  v37 = v36;
  v38 = v36;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D50, &qword_227671F08);
  v30 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v31 = sub_226F5BF60(&qword_27D7B8D18, &qword_27D7B8CF8, &qword_227671E50);
  v32 = v31;
  v33 = v31;
  v34 = sub_226F5BF60(&qword_27D7B8D58, &qword_27D7B8D50, &qword_227671F08);
  v8 = sub_2276638E0();

  v9 = *(v8 + 16);
  if (v9)
  {
    v29 = MEMORY[0x277D84F90];
    result = sub_226F1F368(0, v9, 0);
    v11 = 0;
    v12 = 0;
    v13 = v29;
    v25 = v0 + 32;
    v27 = v8;
    v26 = v9;
    while (v12 < *(v8 + 16))
    {
      v14 = v0;
      v15 = *(v8 + v11 + 32);
      v16 = *(v8 + v11 + 40);
      v17 = *(v8 + v11 + 48);
      v18 = *(v8 + v11 + 56);
      v19 = *(v8 + v11 + 64);
      v20 = *(v8 + v11 + 72);
      v21 = *(v8 + v11 + 80);
      v22 = *(v8 + v11 + 88);

      sub_226F5E9D4(v20, v21, v22);
      sub_227663DE0();
      v29 = v13;
      v24 = *(v13 + 16);
      v23 = *(v13 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_226F1F368(v23 > 1, v24 + 1, 1);
        v13 = v29;
      }

      ++v12;
      *(v13 + 16) = v24 + 1;
      v0 = v14;
      result = (*(v14 + 32))(v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v24, v3, v28);
      v11 += 64;
      v8 = v27;
      if (v26 == v12)
      {

        return v13;
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

uint64_t sub_226F5E9D4(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0xE0) == 0x40)
  {
  }

  return result;
}

uint64_t sub_226F5E9EC(uint64_t a1)
{
  result = sub_226F5EA44(&qword_27D7B8D60, MEMORY[0x277D50520]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226F5EA44(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_226F5EA8C(void *a1)
{
  sub_227663DF0();
  v2 = sub_22766BFD0();

  [a1 setIdentifier_];

  v3 = sub_227663E10();
  if (v5 >> 5 == 2)
  {
    sub_226F5ED70(v3, v4, v5);
  }

  v6 = sub_22766BFD0();

  [a1 setType_];

  sub_227663E40();
  [a1 setStartTime_];
  sub_227663E20();
  [a1 setDuration_];
  sub_227663E00();
  [a1 setLeadDuration_];
  v7 = sub_227663E10();
  v9 = v7;
  v11 = v10;
  v12 = v8 >> 5;
  if (v12 <= 2)
  {
    if (v12 >= 2)
    {
      v13 = v8;
      v18 = sub_22766BFD0();
      sub_226F5ED70(v9, v11, v13);
      [a1 setIntensity_];

      return;
    }

LABEL_14:
    if (v7 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v7 <= 0x7FFFFFFF)
    {
      [a1 setRangeLowerBound_];
      if (v11 >= 0xFFFFFFFF80000000)
      {
        if (v11 <= 0x7FFFFFFF)
        {
          v15 = sel_setRangeUpperBound_;
          v17 = a1;
          v16 = v11;
          goto LABEL_19;
        }

        goto LABEL_25;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_24;
  }

  if (v12 != 3)
  {
    goto LABEL_14;
  }

  if (v7 < 0xFFFFFFFF80000000)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v7 > 0x7FFFFFFF)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v14 = v8;
  [a1 setRangeLowerBound_];
  if (v11 < 0xFFFFFFFF80000000)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v11 > 0x7FFFFFFF)
  {
LABEL_29:
    __break(1u);
    return;
  }

  [a1 setRangeUpperBound_];
  v15 = sel_setShouldShowPlus_;
  v16 = v14 & 1;
  v17 = a1;
LABEL_19:

  [v17 v15];
}

uint64_t sub_226F5ED70(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0xE0) == 0x40)
  {
  }

  return result;
}

uint64_t sub_226F5ED98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D68, &qword_227671FC0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = v4;
  v13 = v5;

  v14 = sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v6;
  *(v11 + 40) = v7;
  v15 = MEMORY[0x22AA99A00](v14);
  sub_227544534(v11, a2);
  objc_autoreleasePoolPop(v15);
  swift_setDeallocating();

  v16 = *(v11 + 40);

  v17 = qword_2813B2078;
  v18 = sub_22766A100();
  (*(*(v18 - 8) + 8))(v11 + v17, v18);
  v19 = *(*v11 + 48);
  v20 = *(*v11 + 52);
  return swift_deallocClassInstance();
}

void sub_226F5EF20(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v7 = *(v3 + 16);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D68, &qword_227671FC0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = v4;
  v13 = v5;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v7;
  *(v11 + 40) = v6;
  v14 = qword_2813B2078;
  swift_beginAccess();
  v15 = sub_2275426F0(v11 + v14, v7, v6);
  if (v15)
  {
    if (v15 == 1)
    {

LABEL_4:
      v16 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D70, &qword_227671FC8);
      v17 = sub_227664900();
      v18 = *(v17 - 8);
      v19 = *(v18 + 72);
      v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_227670CD0;
      (*(v18 + 16))(v21 + v20, a1, v17);
      sub_227558D1C(v21, v16[1], *(v16 + 16), v16[3]);

      return;
    }

    swift_willThrow();
  }

  else
  {
    v22 = sub_22728470C(0);
    if (!v27)
    {
      v23 = v22;
      [v22 setResultType_];
      sub_226ED9864();
      v24 = sub_22766C9E0();
      v25 = sub_226EDAB24(v24);

      sub_226EDAB78(v25, v13);

      goto LABEL_4;
    }
  }
}

uint64_t sub_226F5F1D0()
{
  v1 = v0;
  v2 = sub_227669A70();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v8 + 8))(v11, v7);
  v12 = v1[2];
  v48 = v1[4];
  ObjectType = swift_getObjectType();
  v54 = v12;
  v13 = *MEMORY[0x277D4EB58];
  v52 = v3[13];
  v53 = v3 + 13;
  v52(v6, v13, v2);
  swift_allocObject();
  v47 = v1;
  swift_weakInit();
  swift_unknownObjectRetain_n();

  sub_227669EF0();

  v49 = v3[1];
  v49(v6, v2);
  v51 = v3 + 1;

  swift_unknownObjectRelease();
  v54 = v12;
  v14 = v52;
  v52(v6, *MEMORY[0x277D4EA68], v2);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669EB0();

  v46 = v2;
  v15 = v49;
  v49(v6, v2);

  swift_unknownObjectRelease();
  v54 = v12;
  v14(v6, *MEMORY[0x277D4E820], v2);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669EB0();

  v16 = v46;
  v15(v6, v46);

  swift_unknownObjectRelease();
  v54 = v12;
  v14(v6, *MEMORY[0x277D4EC78], v16);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  sub_226F62F70(&qword_281398F70, &qword_27D7B84E0, &qword_22767C6B0);
  sub_226F62680();
  sub_227669E90();

  v17 = v49;
  v49(v6, v16);
  swift_unknownObjectRelease();
  v54 = v12;
  v52(v6, *MEMORY[0x277D4E6D0], v16);
  swift_allocObject();
  swift_weakInit();
  sub_227666190();
  swift_unknownObjectRetain();
  sub_227669E90();

  v17(v6, v16);
  swift_unknownObjectRelease();
  v54 = v12;
  v18 = v52;
  v52(v6, *MEMORY[0x277D4E5E8], v16);
  swift_allocObject();
  swift_weakInit();
  sub_227664DC0();
  swift_unknownObjectRetain();
  sub_227669E90();

  v19 = v49;
  v49(v6, v16);
  swift_unknownObjectRelease();
  v54 = v12;
  v18(v6, *MEMORY[0x277D4EC40], v16);
  swift_allocObject();
  swift_weakInit();
  v45 = sub_227668F90();
  sub_2276689A0();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v19(v6, v16);
  swift_unknownObjectRelease();
  v54 = v12;
  v20 = v52;
  v52(v6, *MEMORY[0x277D4E940], v16);
  swift_allocObject();
  swift_weakInit();
  sub_227668C50();
  sub_2276671E0();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v21 = v46;
  v19(v6, v46);
  swift_unknownObjectRelease();
  v54 = v12;
  v20(v6, *MEMORY[0x277D4ED50], v21);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D78, &qword_227672050);
  sub_226F629CC();
  sub_226F62A50();
  sub_227669ED0();

  v22 = v49;
  v49(v6, v21);
  swift_unknownObjectRelease();
  v54 = v12;
  v52(v6, *MEMORY[0x277D4E338], v21);
  swift_allocObject();
  swift_weakInit();
  sub_227668850();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v22(v6, v21);
  swift_unknownObjectRelease();
  v54 = v12;
  v23 = v52;
  v52(v6, *MEMORY[0x277D4E6E8], v21);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBA20, &qword_22767B6C0);
  v43[2] = sub_226F62BB8();
  v43[1] = sub_226F62C3C();
  sub_227669E90();

  v24 = v46;
  v49(v6, v46);
  swift_unknownObjectRelease();
  v54 = v12;
  v23(v6, *MEMORY[0x277D4E898], v24);
  swift_allocObject();
  v25 = v47;
  swift_weakInit();
  v45 = sub_227666650();
  swift_unknownObjectRetain();
  sub_227669ED0();

  v26 = v46;
  v49(v6, v46);
  swift_unknownObjectRelease();
  v54 = v12;
  v52(v6, *MEMORY[0x277D4EA28], v26);
  swift_allocObject();
  v27 = v25;
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D80, &unk_227672090);
  sub_226F62E28();
  sub_226F62EAC();
  sub_227669ED0();

  v28 = v49;
  v49(v6, v26);
  swift_unknownObjectRelease();
  v54 = v12;
  v29 = v52;
  v52(v6, *MEMORY[0x277D4E980], v26);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E80();

  v30 = v46;
  v28(v6, v46);
  swift_unknownObjectRelease();
  v54 = v12;
  v29(v6, *MEMORY[0x277D4E5C0], v30);
  v31 = v29;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8B0, &unk_22767E490);
  sub_226F62F70(&qword_281399000, &unk_27D7BB8B0, &unk_22767E490);
  sub_226F62FD8();
  sub_227669E80();

  v32 = v30;
  v33 = v49;
  v49(v6, v30);
  swift_unknownObjectRelease();
  v54 = v12;
  LODWORD(v44) = *MEMORY[0x277D4E930];
  v31(v6);
  swift_allocObject();
  swift_weakInit();
  sub_227669EE0();

  v33(v6, v30);
  swift_unknownObjectRelease();
  v34 = __swift_project_boxed_opaque_existential_0(v27 + 10, v27[13]);
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = *v34;
  sub_226F64CC4(34, sub_226ECF5D0, v35);

  v37 = __swift_project_boxed_opaque_existential_0(v27 + 10, v27[13]);
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = *v37;
  sub_22712A074(50, sub_226ED3AC4, v38);

  v40 = v27[15];
  v41 = v27[17];
  swift_getObjectType();
  v54 = v40;
  v52(v6, v44, v32);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v33(v6, v32);
  return swift_unknownObjectRelease();
}

uint64_t sub_226F60324()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_226F60430;

    return sub_22715B14C();
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_226F60430()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_226F60544;
  }

  else
  {
    v3 = sub_226F69390;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226F60544()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[1];
  v2 = v0[12];

  return v1();
}

uint64_t sub_226F605A8@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, void (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v13);

    v9 = *__swift_project_boxed_opaque_existential_0(v13, v13[3]);
    a3();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
    (*(*(v10 - 8) + 56))(a4, 0, 1, v10);
    return __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
    return (*(*(v12 - 8) + 56))(a4, 1, 1, v12);
  }
}

uint64_t sub_226F606D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_226F606FC, 0, 0);
}

uint64_t sub_226F606FC()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_226F60850;
    v5 = v0[10];
    v6 = v0[11];

    return sub_22715E524(v5, v6);
  }

  else
  {
    v8 = v0[10];
    v9 = sub_2276689A0();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_226F60850()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_226F69340;
  }

  else
  {
    v3 = sub_226F60964;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226F60964()
{
  v1 = v0[10];
  v2 = sub_2276689A0();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_226F60A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_226F60A30, 0, 0);
}

uint64_t sub_226F60A30()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_226F60B84;
    v5 = v0[10];
    v6 = v0[11];

    return sub_227161A14(v5, v6);
  }

  else
  {
    v8 = v0[10];
    v9 = sub_2276671E0();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_226F60B84()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_226F60D40;
  }

  else
  {
    v3 = sub_226F60C98;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226F60C98()
{
  v1 = v0[10];
  v2 = sub_2276671E0();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_226F60D40()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[1];
  v2 = v0[14];

  return v1();
}

uint64_t sub_226F60DA4(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_226F60DC4, 0, 0);
}

uint64_t sub_226F60DC4()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v0 + 16);

    v3 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = swift_task_alloc();
    *(v0 + 96) = v4;
    *v4 = v0;
    v4[1] = sub_226F60ED8;

    return sub_227165ECC();
  }

  else
  {
    **(v0 + 80) = 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_226F60ED8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_226F69344;
  }

  else
  {
    *(v4 + 112) = a1;
    v7 = sub_226F6938C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_226F61000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_226F61024, 0, 0);
}

uint64_t sub_226F61024()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_226F61178;
    v5 = v0[10];
    v6 = v0[11];

    return sub_227161098(v5, v6);
  }

  else
  {
    v8 = v0[10];
    v9 = sub_227668850();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_226F61178()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_226F69340;
  }

  else
  {
    v3 = sub_226F6128C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226F6128C()
{
  v1 = v0[10];
  v2 = sub_227668850();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_226F61334@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v15);

    v8 = *__swift_project_boxed_opaque_existential_0(v15, v15[3]);
    sub_22766A660();
    sub_22766B370();
    (*(v3 + 8))(v6, v2);
    v9 = v8[70];
    v10 = v8[71];
    __swift_project_boxed_opaque_existential_0(v8 + 67, v9);

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBA20, &qword_22767B6C0);
    sub_226ECF5D8(sub_226F687F4, v8, v9, v11, v10, a1);

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBA10, &unk_2276720E0);
    (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBA10, &unk_2276720E0);
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }
}

uint64_t sub_226F61598(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_226F615B8, 0, 0);
}

uint64_t sub_226F615B8()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_226F6170C;
    v5 = v0[10];

    return sub_22715D2C4(v5);
  }

  else
  {
    v7 = v0[10];
    v8 = sub_227666650();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_226F6170C()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_226F618C8;
  }

  else
  {
    v3 = sub_226F61820;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226F61820()
{
  v1 = v0[10];
  v2 = sub_227666650();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_226F618C8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[1];
  v2 = v0[13];

  return v1();
}

uint64_t sub_226F6192C(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_226F6194C, 0, 0);
}

uint64_t sub_226F6194C()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v0 + 16);

    v3 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = swift_task_alloc();
    *(v0 + 96) = v4;
    *v4 = v0;
    v4[1] = sub_226F61A60;

    return sub_22715D030();
  }

  else
  {
    **(v0 + 80) = 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_226F61A60(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_226F69344;
  }

  else
  {
    *(v4 + 112) = a1;
    v7 = sub_226F61B88;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_226F61B88()
{
  **(v0 + 80) = *(v0 + 112);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F61BF8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v19);

    v11 = *__swift_project_boxed_opaque_existential_0(v19, v19[3]);
    sub_22766A660();
    sub_22766B370();
    (*(v5 + 8))(v8, v4);
    v12 = v11[70];
    v13 = v11[71];
    __swift_project_boxed_opaque_existential_0(v11 + 67, v12);
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v9;

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBA20, &qword_22767B6C0);
    sub_226ECF5D8(sub_226F687D4, v14, v12, v15, v13, a2);

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBA10, &unk_2276720E0);
    (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
    return __swift_destroy_boxed_opaque_existential_0(v19);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBA10, &unk_2276720E0);
    return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
  }
}

uint64_t sub_226F61E8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v10);

    v6 = *__swift_project_boxed_opaque_existential_0(v10, v10[3]);
    sub_22715D764(v4, v3, a2);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D90, &unk_22767B290);
    (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
    return __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D90, &unk_22767B290);
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }
}

uint64_t sub_226F61FC8(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_226F61FE8, 0, 0);
}

uint64_t sub_226F61FE8()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_226F620FC;
    v5 = v0[10];

    return sub_227170038(v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_226F620FC()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_226F69344;
  }

  else
  {
    v3 = sub_226F62210;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226F62210()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F62274(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_226F62294, 0, 0);
}

uint64_t sub_226F62294()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_226F623A8;
    v5 = v0[10];

    return sub_227170038(v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_226F623A8()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_226F69344;
  }

  else
  {
    v3 = sub_226F69390;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226F624BC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  v2 = v0[15];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_226F62530()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226E93028;

  return sub_226F60304(v0);
}

unint64_t sub_226F62680()
{
  result = qword_281398F68;
  if (!qword_281398F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B84E0, &qword_22767C6B0);
    sub_226F62704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398F68);
  }

  return result;
}

unint64_t sub_226F62704()
{
  result = qword_2813991A8;
  if (!qword_2813991A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813991A8);
  }

  return result;
}

uint64_t sub_226F627D8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_226F606D8(a1, a2, v2);
}

uint64_t sub_226F62884(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_226F60A0C(a1, a2, v2);
}

uint64_t sub_226F62930(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_226F60DA4(a1, v1);
}

unint64_t sub_226F629CC()
{
  result = qword_281398C58;
  if (!qword_281398C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B8D78, &qword_227672050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C58);
  }

  return result;
}

unint64_t sub_226F62A50()
{
  result = qword_281398C50;
  if (!qword_281398C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B8D78, &qword_227672050);
    sub_226EE1A34(&qword_28139B290, MEMORY[0x277D53920]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C50);
  }

  return result;
}

uint64_t sub_226F62B04(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_226F61000(a1, a2, v2);
}

unint64_t sub_226F62BB8()
{
  result = qword_281398E38;
  if (!qword_281398E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BBA20, &qword_22767B6C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398E38);
  }

  return result;
}

unint64_t sub_226F62C3C()
{
  result = qword_281398E30;
  if (!qword_281398E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BBA20, &qword_22767B6C0);
    sub_226EE1A34(&qword_28139B988, MEMORY[0x277D508B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398E30);
  }

  return result;
}

uint64_t sub_226F62CF0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_226F61598(a1, v1);
}

uint64_t sub_226F62D8C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_226F6192C(a1, v1);
}

unint64_t sub_226F62E28()
{
  result = qword_281398D30;
  if (!qword_281398D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B8D80, &unk_227672090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398D30);
  }

  return result;
}

unint64_t sub_226F62EAC()
{
  result = qword_281398D28;
  if (!qword_281398D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B8D80, &unk_227672090);
    sub_226EE1A34(&qword_28139B660, MEMORY[0x277D52498]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398D28);
  }

  return result;
}

uint64_t sub_226F62F70(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_226F62FD8()
{
  result = qword_281398FF8;
  if (!qword_281398FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7BB8B0, &unk_22767E490);
    sub_226EE1A34(&qword_28139B590, MEMORY[0x277D52AB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398FF8);
  }

  return result;
}

uint64_t sub_226F6308C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_226F61FC8(a1, v1);
}

uint64_t sub_226F63124@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D88, &qword_2276720C8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD730, &qword_2276720C0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v16 - v12;
  a1(v11);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8D88, &qword_2276720C8);
LABEL_6:
    v14 = 1;
    return (*(v9 + 56))(a2, v14, 1, v8);
  }

  (*(v9 + 32))(v13, v7, v8);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v9 + 8))(v13, v8);
    goto LABEL_6;
  }

  sub_226ECFB7C(v13, a2);

  (*(v9 + 8))(v13, v8);
  v14 = 0;
  return (*(v9 + 56))(a2, v14, 1, v8);
}

uint64_t sub_226F63344@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E08, &qword_2276721A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v16 - v12;
  a1(v11);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8E08, &qword_2276721A0);
LABEL_6:
    v14 = 1;
    return (*(v9 + 56))(a2, v14, 1, v8);
  }

  (*(v9 + 32))(v13, v7, v8);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v9 + 8))(v13, v8);
    goto LABEL_6;
  }

  sub_2272A6048(v13, a2);

  (*(v9 + 8))(v13, v8);
  v14 = 0;
  return (*(v9 + 56))(a2, v14, 1, v8);
}

uint64_t sub_226F63564@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E00, &qword_227672198);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v16 - v12;
  a1(v11);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8E00, &qword_227672198);
LABEL_6:
    v14 = 1;
    return (*(v9 + 56))(a2, v14, 1, v8);
  }

  (*(v9 + 32))(v13, v7, v8);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v9 + 8))(v13, v8);
    goto LABEL_6;
  }

  sub_226EA9990(v13, a2);

  (*(v9 + 8))(v13, v8);
  v14 = 0;
  return (*(v9 + 56))(a2, v14, 1, v8);
}

uint64_t sub_226F63784@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DB8, &qword_227672128);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD920, &qword_227672130);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v16 - v12;
  a1(v11);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8DB8, &qword_227672128);
LABEL_6:
    v14 = 1;
    return (*(v9 + 56))(a2, v14, 1, v8);
  }

  (*(v9 + 32))(v13, v7, v8);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v9 + 8))(v13, v8);
    goto LABEL_6;
  }

  sub_2272A7004(v13, a2);

  (*(v9 + 8))(v13, v8);
  v14 = 0;
  return (*(v9 + 56))(a2, v14, 1, v8);
}

uint64_t sub_226F639A4@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DC0, &qword_227672138);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DC8, &qword_227672140);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v16 - v12;
  a1(v11);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8DC0, &qword_227672138);
LABEL_6:
    v14 = 1;
    return (*(v9 + 56))(a2, v14, 1, v8);
  }

  (*(v9 + 32))(v13, v7, v8);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v9 + 8))(v13, v8);
    goto LABEL_6;
  }

  sub_2272A7548(v13, a2);

  (*(v9 + 8))(v13, v8);
  v14 = 0;
  return (*(v9 + 56))(a2, v14, 1, v8);
}

uint64_t sub_226F63BC4@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DD0, &qword_227672148);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD930, &qword_227672150);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v16 - v12;
  a1(v11);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8DD0, &qword_227672148);
LABEL_6:
    v14 = 1;
    return (*(v9 + 56))(a2, v14, 1, v8);
  }

  (*(v9 + 32))(v13, v7, v8);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v9 + 8))(v13, v8);
    goto LABEL_6;
  }

  sub_2272A7A8C(v13, a2);

  (*(v9 + 8))(v13, v8);
  v14 = 0;
  return (*(v9 + 56))(a2, v14, 1, v8);
}

uint64_t sub_226F63DE4@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DD8, &qword_227672158);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD940, &qword_227672160);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v16 - v12;
  a1(v11);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8DD8, &qword_227672158);
LABEL_6:
    v14 = 1;
    return (*(v9 + 56))(a2, v14, 1, v8);
  }

  (*(v9 + 32))(v13, v7, v8);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v9 + 8))(v13, v8);
    goto LABEL_6;
  }

  sub_2272A8514(v13, a2);

  (*(v9 + 8))(v13, v8);
  v14 = 0;
  return (*(v9 + 56))(a2, v14, 1, v8);
}

uint64_t sub_226F64004@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DE0, &qword_227672168);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD950, &qword_227672170);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v16 - v12;
  a1(v11);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8DE0, &qword_227672168);
LABEL_6:
    v14 = 1;
    return (*(v9 + 56))(a2, v14, 1, v8);
  }

  (*(v9 + 32))(v13, v7, v8);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v9 + 8))(v13, v8);
    goto LABEL_6;
  }

  sub_2272A8F9C(v13, a2);

  (*(v9 + 8))(v13, v8);
  v14 = 0;
  return (*(v9 + 56))(a2, v14, 1, v8);
}

uint64_t sub_226F64224@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DE8, &qword_227672178);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DF0, &qword_227672180);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v16 - v12;
  a1(v11);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8DE8, &qword_227672178);
LABEL_6:
    v14 = 1;
    return (*(v9 + 56))(a2, v14, 1, v8);
  }

  (*(v9 + 32))(v13, v7, v8);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v9 + 8))(v13, v8);
    goto LABEL_6;
  }

  sub_2272A94E0(v13, a2);

  (*(v9 + 8))(v13, v8);
  v14 = 0;
  return (*(v9 + 56))(a2, v14, 1, v8);
}

uint64_t sub_226F64444@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DF8, &qword_227672188);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD960, &qword_227672190);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v16 - v12;
  a1(v11);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8DF8, &qword_227672188);
LABEL_6:
    v14 = 1;
    return (*(v9 + 56))(a2, v14, 1, v8);
  }

  (*(v9 + 32))(v13, v7, v8);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v9 + 8))(v13, v8);
    goto LABEL_6;
  }

  sub_2272A9A24(v13, a2);

  (*(v9 + 8))(v13, v8);
  v14 = 0;
  return (*(v9 + 56))(a2, v14, 1, v8);
}

uint64_t sub_226F64664@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DA8, &qword_227672118);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DB0, &qword_227672120);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v16 - v12;
  a1(v11);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8DA8, &qword_227672118);
LABEL_6:
    v14 = 1;
    return (*(v9 + 56))(a2, v14, 1, v8);
  }

  (*(v9 + 32))(v13, v7, v8);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v9 + 8))(v13, v8);
    goto LABEL_6;
  }

  sub_2272A9F68(v13, a2);

  (*(v9 + 8))(v13, v8);
  v14 = 0;
  return (*(v9 + 56))(a2, v14, 1, v8);
}

uint64_t sub_226F64884@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D98, &qword_2276720F8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA2E0, &qword_227672100);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v16 - v12;
  a1(v11);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8D98, &qword_2276720F8);
LABEL_6:
    v14 = 1;
    return (*(v9 + 56))(a2, v14, 1, v8);
  }

  (*(v9 + 32))(v13, v7, v8);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v9 + 8))(v13, v8);
    goto LABEL_6;
  }

  sub_2272AA4AC(v13, a2);

  (*(v9 + 8))(v13, v8);
  v14 = 0;
  return (*(v9 + 56))(a2, v14, 1, v8);
}

uint64_t sub_226F64AA4@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DA0, &unk_227672108);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD570, &unk_227670850);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v16 - v12;
  a1(v11);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8DA0, &unk_227672108);
LABEL_6:
    v14 = 1;
    return (*(v9 + 56))(a2, v14, 1, v8);
  }

  (*(v9 + 32))(v13, v7, v8);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v9 + 8))(v13, v8);
    goto LABEL_6;
  }

  sub_2272AA9E0(v13, a2);

  (*(v9 + 8))(v13, v8);
  v14 = 0;
  return (*(v9 + 56))(a2, v14, 1, v8);
}

uint64_t sub_226F64CC4(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  v11 = *__swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = sub_226ECF344;
  *(v12 + 24) = v10;

  sub_2274E9324(a1, sub_226ECF2EC, v12);

  v13 = *(v4 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  v16 = *__swift_project_boxed_opaque_existential_0((v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = sub_226ECF340;
  *(v17 + 24) = v15;

  sub_2274E9324(a1, sub_226ECF33C, v17);
}

uint64_t sub_226F64EB4(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  v11 = *__swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = sub_226F692CC;
  *(v12 + 24) = v10;

  sub_2274E9324(a1, sub_226F692D8, v12);

  v13 = *(v4 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  v16 = *__swift_project_boxed_opaque_existential_0((v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = sub_226F69388;
  *(v17 + 24) = v15;

  sub_2274E9324(a1, sub_226F693BC, v17);
}

uint64_t sub_226F650A4(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  v11 = *__swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = sub_226F68FD8;
  *(v12 + 24) = v10;

  sub_2274E9324(a1, sub_226F68FE4, v12);

  v13 = *(v4 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  v16 = *__swift_project_boxed_opaque_existential_0((v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = sub_226F6936C;
  *(v17 + 24) = v15;

  sub_2274E9324(a1, sub_226F693A0, v17);
}

uint64_t sub_226F65294(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  v11 = *__swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = sub_226F6904C;
  *(v12 + 24) = v10;

  sub_2274E9324(a1, sub_226F69058, v12);

  v13 = *(v4 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  v16 = *__swift_project_boxed_opaque_existential_0((v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = sub_226F69370;
  *(v17 + 24) = v15;

  sub_2274E9324(a1, sub_226F693A4, v17);
}

uint64_t sub_226F65484(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  v11 = *__swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = sub_226F690C0;
  *(v12 + 24) = v10;

  sub_2274E9324(a1, sub_226F690CC, v12);

  v13 = *(v4 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  v16 = *__swift_project_boxed_opaque_existential_0((v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = sub_226F69374;
  *(v17 + 24) = v15;

  sub_2274E9324(a1, sub_226F693A8, v17);
}

uint64_t sub_226F65674(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  v11 = *__swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = sub_226F69134;
  *(v12 + 24) = v10;

  sub_2274E9324(a1, sub_226F69140, v12);

  v13 = *(v4 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  v16 = *__swift_project_boxed_opaque_existential_0((v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = sub_226F69378;
  *(v17 + 24) = v15;

  sub_2274E9324(a1, sub_226F693AC, v17);
}

uint64_t sub_226F65864(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  v11 = *__swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = sub_226F691A8;
  *(v12 + 24) = v10;

  sub_2274E9324(a1, sub_226F691B4, v12);

  v13 = *(v4 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  v16 = *__swift_project_boxed_opaque_existential_0((v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = sub_226F6937C;
  *(v17 + 24) = v15;

  sub_2274E9324(a1, sub_226F693B0, v17);
}

uint64_t sub_226F65A54(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  v11 = *__swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = sub_226F6921C;
  *(v12 + 24) = v10;

  sub_2274E9324(a1, sub_226F69228, v12);

  v13 = *(v4 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  v16 = *__swift_project_boxed_opaque_existential_0((v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = sub_226F69380;
  *(v17 + 24) = v15;

  sub_2274E9324(a1, sub_226F693B4, v17);
}

uint64_t sub_226F65C44(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  v11 = *__swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = sub_226F69258;
  *(v12 + 24) = v10;

  sub_2274E9324(a1, sub_226F69264, v12);

  v13 = *(v4 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  v16 = *__swift_project_boxed_opaque_existential_0((v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = sub_226F69384;
  *(v17 + 24) = v15;

  sub_2274E9324(a1, sub_226F693B8, v17);
}

uint64_t sub_226F65E34(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  v11 = *__swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = sub_226F68F10;
  *(v12 + 24) = v10;

  sub_2274E9324(a1, sub_226F68F1C, v12);

  v13 = *(v4 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  v16 = *__swift_project_boxed_opaque_existential_0((v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = sub_226F69368;
  *(v17 + 24) = v15;

  sub_2274E9324(a1, sub_226F6939C, v17);
}

uint64_t sub_226F66024(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  v11 = *__swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = sub_226F68810;
  *(v12 + 24) = v10;

  sub_2274E9324(a1, sub_226F6881C, v12);

  v13 = *(v4 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  v16 = *__swift_project_boxed_opaque_existential_0((v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = sub_226F69360;
  *(v17 + 24) = v15;

  sub_2274E9324(a1, sub_226F69394, v17);
}

uint64_t sub_226F66214(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  v11 = *__swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v12 = swift_allocObject();
  *(v12 + 16) = sub_226F68E44;
  *(v12 + 24) = v10;

  sub_2274E9324(a1, sub_226F68E50, v12);

  v13 = *(v4 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  v16 = *__swift_project_boxed_opaque_existential_0((v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v13 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = sub_226F69364;
  *(v17 + 24) = v15;

  sub_2274E9324(a1, sub_226F69398, v17);
}

uint64_t sub_226F66404(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_226F62274(a1, v1);
}

unint64_t sub_226F6649C()
{
  result = qword_28139B0B8;
  if (!qword_28139B0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B0B8);
  }

  return result;
}

uint64_t sub_226F664F0@<X0>(void (*a1)(uint64_t)@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E08, &qword_2276721A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  a1(v13);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8E08, &qword_2276721A0);
    sub_226F6649C();
    v16 = swift_allocError();
    *v17 = 2;
    *(swift_allocObject() + 16) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    return sub_227669280();
  }

  else
  {
    v19 = *(v9 + 32);
    v19(v15, v7, v8);
    v20 = swift_allocObject();
    *(v20 + 16) = sub_226F68824;
    *(v20 + 24) = 0;
    (*(v9 + 16))(v12, v15, v8);
    v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v25[1] = a2;
    v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v19((v23 + v21), v12, v8);
    v24 = (v23 + v22);
    *v24 = sub_226F692E0;
    v24[1] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    sub_227669270();
    return (*(v9 + 8))(v15, v8);
  }
}

uint64_t sub_226F6681C@<X0>(void (*a1)(uint64_t)@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DB8, &qword_227672128);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD920, &qword_227672130);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  a1(v13);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8DB8, &qword_227672128);
    sub_226F6649C();
    v16 = swift_allocError();
    *v17 = 2;
    *(swift_allocObject() + 16) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    return sub_227669280();
  }

  else
  {
    v19 = *(v9 + 32);
    v19(v15, v7, v8);
    v20 = swift_allocObject();
    *(v20 + 16) = sub_226F688E8;
    *(v20 + 24) = 0;
    (*(v9 + 16))(v12, v15, v8);
    v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v25[1] = a2;
    v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v19((v23 + v21), v12, v8);
    v24 = (v23 + v22);
    *v24 = sub_226F68FEC;
    v24[1] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    sub_227669270();
    return (*(v9 + 8))(v15, v8);
  }
}

uint64_t sub_226F66B48@<X0>(void (*a1)(uint64_t)@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DC0, &qword_227672138);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DC8, &qword_227672140);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  a1(v13);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8DC0, &qword_227672138);
    sub_226F6649C();
    v16 = swift_allocError();
    *v17 = 2;
    *(swift_allocObject() + 16) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    return sub_227669280();
  }

  else
  {
    v19 = *(v9 + 32);
    v19(v15, v7, v8);
    v20 = swift_allocObject();
    *(v20 + 16) = sub_226F689AC;
    *(v20 + 24) = 0;
    (*(v9 + 16))(v12, v15, v8);
    v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v25[1] = a2;
    v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v19((v23 + v21), v12, v8);
    v24 = (v23 + v22);
    *v24 = sub_226F69060;
    v24[1] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    sub_227669270();
    return (*(v9 + 8))(v15, v8);
  }
}

uint64_t sub_226F66E74@<X0>(void (*a1)(uint64_t)@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DD0, &qword_227672148);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD930, &qword_227672150);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  a1(v13);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8DD0, &qword_227672148);
    sub_226F6649C();
    v16 = swift_allocError();
    *v17 = 2;
    *(swift_allocObject() + 16) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    return sub_227669280();
  }

  else
  {
    v19 = *(v9 + 32);
    v19(v15, v7, v8);
    v20 = swift_allocObject();
    *(v20 + 16) = sub_226F68A70;
    *(v20 + 24) = 0;
    (*(v9 + 16))(v12, v15, v8);
    v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v25[1] = a2;
    v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v19((v23 + v21), v12, v8);
    v24 = (v23 + v22);
    *v24 = sub_226F690D4;
    v24[1] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    sub_227669270();
    return (*(v9 + 8))(v15, v8);
  }
}

uint64_t sub_226F671A0@<X0>(void (*a1)(uint64_t)@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DD8, &qword_227672158);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD940, &qword_227672160);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  a1(v13);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8DD8, &qword_227672158);
    sub_226F6649C();
    v16 = swift_allocError();
    *v17 = 2;
    *(swift_allocObject() + 16) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    return sub_227669280();
  }

  else
  {
    v19 = *(v9 + 32);
    v19(v15, v7, v8);
    v20 = swift_allocObject();
    *(v20 + 16) = sub_226F68B34;
    *(v20 + 24) = 0;
    (*(v9 + 16))(v12, v15, v8);
    v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v25[1] = a2;
    v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v19((v23 + v21), v12, v8);
    v24 = (v23 + v22);
    *v24 = sub_226F69148;
    v24[1] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    sub_227669270();
    return (*(v9 + 8))(v15, v8);
  }
}

uint64_t sub_226F674CC@<X0>(void (*a1)(uint64_t)@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DE0, &qword_227672168);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD950, &qword_227672170);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  a1(v13);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8DE0, &qword_227672168);
    sub_226F6649C();
    v16 = swift_allocError();
    *v17 = 2;
    *(swift_allocObject() + 16) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    return sub_227669280();
  }

  else
  {
    v19 = *(v9 + 32);
    v19(v15, v7, v8);
    v20 = swift_allocObject();
    *(v20 + 16) = sub_226F68BF8;
    *(v20 + 24) = 0;
    (*(v9 + 16))(v12, v15, v8);
    v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v25[1] = a2;
    v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v19((v23 + v21), v12, v8);
    v24 = (v23 + v22);
    *v24 = sub_226F691BC;
    v24[1] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    sub_227669270();
    return (*(v9 + 8))(v15, v8);
  }
}

uint64_t sub_226F677F8@<X0>(void (*a1)(uint64_t)@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DE8, &qword_227672178);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DF0, &qword_227672180);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  a1(v13);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8DE8, &qword_227672178);
    sub_226F6649C();
    v16 = swift_allocError();
    *v17 = 2;
    *(swift_allocObject() + 16) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    return sub_227669280();
  }

  else
  {
    v19 = *(v9 + 32);
    v19(v15, v7, v8);
    v20 = swift_allocObject();
    *(v20 + 16) = sub_226EE1970;
    *(v20 + 24) = 0;
    (*(v9 + 16))(v12, v15, v8);
    v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v25[1] = a2;
    v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v19((v23 + v21), v12, v8);
    v24 = (v23 + v22);
    *v24 = sub_226EE1858;
    v24[1] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    sub_227669270();
    return (*(v9 + 8))(v15, v8);
  }
}

uint64_t sub_226F67B24@<X0>(void (*a1)(uint64_t)@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DF8, &qword_227672188);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD960, &qword_227672190);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  a1(v13);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8DF8, &qword_227672188);
    sub_226F6649C();
    v16 = swift_allocError();
    *v17 = 2;
    *(swift_allocObject() + 16) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    return sub_227669280();
  }

  else
  {
    v19 = *(v9 + 32);
    v19(v15, v7, v8);
    v20 = swift_allocObject();
    *(v20 + 16) = sub_226F68CBC;
    *(v20 + 24) = 0;
    (*(v9 + 16))(v12, v15, v8);
    v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v25[1] = a2;
    v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v19((v23 + v21), v12, v8);
    v24 = (v23 + v22);
    *v24 = sub_226F6926C;
    v24[1] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    sub_227669270();
    return (*(v9 + 8))(v15, v8);
  }
}

uint64_t sub_226F67E50@<X0>(void (*a1)(uint64_t)@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DA8, &qword_227672118);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DB0, &qword_227672120);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  a1(v13);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8DA8, &qword_227672118);
    sub_226F6649C();
    v16 = swift_allocError();
    *v17 = 2;
    *(swift_allocObject() + 16) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    return sub_227669280();
  }

  else
  {
    v19 = *(v9 + 32);
    v19(v15, v7, v8);
    v20 = swift_allocObject();
    *(v20 + 16) = sub_226F68D80;
    *(v20 + 24) = 0;
    (*(v9 + 16))(v12, v15, v8);
    v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v25[1] = a2;
    v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v19((v23 + v21), v12, v8);
    v24 = (v23 + v22);
    *v24 = sub_226F68F24;
    v24[1] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    sub_227669270();
    return (*(v9 + 8))(v15, v8);
  }
}

uint64_t sub_226F6817C@<X0>(void (*a1)(uint64_t)@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D98, &qword_2276720F8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA2E0, &qword_227672100);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  a1(v13);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8D98, &qword_2276720F8);
    sub_226F6649C();
    v16 = swift_allocError();
    *v17 = 2;
    *(swift_allocObject() + 16) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    return sub_227669280();
  }

  else
  {
    v19 = *(v9 + 32);
    v19(v15, v7, v8);
    v20 = swift_allocObject();
    *(v20 + 16) = sub_226F68DE0;
    *(v20 + 24) = 0;
    (*(v9 + 16))(v12, v15, v8);
    v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v25[1] = a2;
    v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v19((v23 + v21), v12, v8);
    v24 = (v23 + v22);
    *v24 = sub_226F68E14;
    v24[1] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    sub_227669270();
    return (*(v9 + 8))(v15, v8);
  }
}

uint64_t sub_226F684A8@<X0>(void (*a1)(uint64_t)@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DA0, &unk_227672108);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD570, &unk_227670850);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  a1(v13);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_226E97D1C(v7, &qword_27D7B8DA0, &unk_227672108);
    sub_226F6649C();
    v16 = swift_allocError();
    *v17 = 2;
    *(swift_allocObject() + 16) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    return sub_227669280();
  }

  else
  {
    v19 = *(v9 + 32);
    v19(v15, v7, v8);
    v20 = swift_allocObject();
    *(v20 + 16) = sub_226F68E58;
    *(v20 + 24) = 0;
    (*(v9 + 16))(v12, v15, v8);
    v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v25[1] = a2;
    v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v19((v23 + v21), v12, v8);
    v24 = (v23 + v22);
    *v24 = sub_226F68EE0;
    v24[1] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    sub_227669270();
    return (*(v9 + 8))(v15, v8);
  }
}

uint64_t sub_226F68810@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_226F64884(*(v1 + 16), a1);
}

uint64_t sub_226F68824@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  sub_227663480();
  v5 = MEMORY[0x277D4FF88];
  sub_226EE1A34(&qword_28139BCD8, MEMORY[0x277D4FF88]);
  sub_226EE1A34(&unk_2813A5800, v5);
  result = sub_22766C5C0();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_226F688E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  sub_2276633A0();
  v5 = MEMORY[0x277D4FF18];
  sub_226EE1A34(&qword_28139BCE0, MEMORY[0x277D4FF18]);
  sub_226EE1A34(&unk_28139BCF8, v5);
  result = sub_22766C5C0();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_226F689AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  sub_2276632A0();
  v5 = MEMORY[0x277D4FE80];
  sub_226EE1A34(&qword_28139BD10, MEMORY[0x277D4FE80]);
  sub_226EE1A34(&qword_28139BD28, v5);
  result = sub_22766C5C0();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_226F68A70@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  sub_227669580();
  v5 = MEMORY[0x277D53E88];
  sub_226EE1A34(&qword_28139B1F0, MEMORY[0x277D53E88]);
  sub_226EE1A34(&unk_28139B208, v5);
  result = sub_22766C5C0();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_226F68B34@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  sub_227664EB0();
  v5 = MEMORY[0x277D51130];
  sub_226EE1A34(&qword_28139B8A0, MEMORY[0x277D51130]);
  sub_226EE1A34(&qword_28139B8B8, v5);
  result = sub_22766C5C0();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_226F68BF8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  sub_227663A30();
  v5 = MEMORY[0x277D50278];
  sub_226EE1A34(&qword_28139BC78, MEMORY[0x277D50278]);
  sub_226EE1A34(&qword_28139BC90, v5);
  result = sub_22766C5C0();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_226F68CBC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  sub_227666FF0();
  v5 = MEMORY[0x277D52AF8];
  sub_226EE1A34(&qword_28139B560, MEMORY[0x277D52AF8]);
  sub_226EE1A34(&unk_28139B578, v5);
  result = sub_22766C5C0();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_226F68D80@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  sub_226F68F84();
  sub_226F44E40();
  result = sub_22766C5C0();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_226F68E44@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_226F64AA4(*(v1 + 16), a1);
}

uint64_t sub_226F68E8C@<X0>(void (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  a1(0);
  result = sub_227667710();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_226F68F10@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_226F64664(*(v1 + 16), a1);
}

unint64_t sub_226F68F84()
{
  result = qword_28139BA08;
  if (!qword_28139BA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139BA08);
  }

  return result;
}

uint64_t sub_226F68FD8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_226F63784(*(v1 + 16), a1);
}

uint64_t sub_226F6904C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_226F639A4(*(v1 + 16), a1);
}

uint64_t sub_226F690C0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_226F63BC4(*(v1 + 16), a1);
}

uint64_t sub_226F69134@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_226F63DE4(*(v1 + 16), a1);
}

uint64_t sub_226F691A8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_226F64004(*(v1 + 16), a1);
}

uint64_t sub_226F6921C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_226F64224(*(v1 + 16), a1);
}

uint64_t sub_226F69258@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_226F64444(*(v1 + 16), a1);
}

uint64_t sub_226F692CC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_226F63344(*(v1 + 16), a1);
}

uint64_t WorkoutPlanGenerationScheduledItem.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD000000000000031, 0x80000002276945A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_227663AD0();
  MEMORY[0x22AA98450]();

  MEMORY[0x22AA98450](0x697461727564202CLL, 0xEC000000203A6E6FLL);
  v6 = sub_22766D140();
  MEMORY[0x22AA98450](v6);

  MEMORY[0x22AA98450](0xD000000000000015, 0x80000002276945E0);
  sub_226F4906C();
  v7 = sub_22766C610();
  MEMORY[0x22AA98450](v7);

  MEMORY[0x22AA98450](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_226F69538()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_226F69594()
{
  v1 = *v0;
  sub_22766D370();
  sub_22766D3B0();
  return sub_22766D3F0();
}

uint64_t sub_226F69608()
{
  v1 = *v0;
  sub_22766D370();
  sub_22766D3B0();
  return sub_22766D3F0();
}

_WORD *sub_226F6964C@<X0>(_WORD *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_226F6968C()
{
  result = qword_27D7B8E10;
  if (!qword_27D7B8E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8E10);
  }

  return result;
}

unint64_t sub_226F696E4()
{
  result = qword_27D7B8E18;
  if (!qword_27D7B8E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BEA30, &unk_22768B730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8E18);
  }

  return result;
}

uint64_t sub_226F69758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = *(*(sub_2276637B0() - 8) + 64) + 15;
  v5[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F697EC, 0, 0);
}

uint64_t sub_226F697EC()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v4 = *(v3 + 16);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_226F69918;
  v8 = v0[4];
  v7 = v0[5];

  return v10(v7, v8, v2, v3);
}

uint64_t sub_226F69918()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_226F69B20;
  }

  else
  {
    v3 = sub_226F69A2C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226F69A2C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E20, &qword_22767C3B0) + 48);
  v5 = sub_227665680();
  (*(*(v5 - 8) + 16))(v3, v1, v5);
  sub_226F69C10(v2, v3 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E28, &unk_227672340);
  swift_storeEnumTagMultiPayload();
  v6 = v0[5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_226F69B20()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E20, &qword_22767C3B0) + 48);
  v5 = sub_227665680();
  (*(*(v5 - 8) + 16))(v3, v2, v5);
  *(v3 + v4) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E28, &unk_227672340);
  swift_storeEnumTagMultiPayload();
  v6 = v0[5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_226F69C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276637B0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for AccountSyncStatusUpdated(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 65284 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65284 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65284;
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

      return (*a1 | (v4 << 16)) - 65284;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65284;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for AccountSyncStatusUpdated(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65284 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65284 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 16) + 1;
    *result = a2 - 252;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_226F69DD4(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_22766B390();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F69E94, 0, 0);
}

uint64_t sub_226F69E94()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v1[30];
  v4 = v1[31];
  __swift_project_boxed_opaque_existential_0(v1 + 27, v3);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v0[12] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v2;
  v7 = *(v4 + 24);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[13] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E30, &unk_227672460);
  *v9 = v0;
  v9[1] = sub_226F6A048;

  return (v12)(v0 + 5, sub_226F6AB34, v6, v10, v3, v4);
}

uint64_t sub_226F6A048()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_226F6A1CC;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_226F6A164;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226F6A164()
{
  v1 = v0[5];
  v2 = v0[11];

  v3 = v0[1];

  return v3(v1);
}

uint64_t sub_226F6A1CC()
{
  v25 = v0;
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);

  sub_22766A610();
  v4 = v1;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 112);
    v9 = *(v0 + 80);
    v8 = *(v0 + 88);
    v10 = *(v0 + 72);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = *(v0 + 16);
    v14 = MEMORY[0x22AA995D0](*(v0 + 24), *(v0 + 32));
    v16 = sub_226E97AE8(v14, v15, &v24);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_226E8E000, v5, v6, "Failed to fetch all completed archived session identifiers: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA9A450](v12, -1, -1);
    MEMORY[0x22AA9A450](v11, -1, -1);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v18 = *(v0 + 80);
    v17 = *(v0 + 88);
    v19 = *(v0 + 72);

    (*(v18 + 8))(v17, v19);
  }

  v20 = *(v0 + 88);

  v21 = *(v0 + 8);
  v22 = MEMORY[0x277D84F90];

  return v21(v22);
}

uint64_t sub_226F6A3A4@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v24 = a3;
  v5 = sub_227662010();
  v22 = *(v5 - 8);
  v23 = v5;
  v6 = *(v22 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227662750();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  sub_2276625C0();
  (*(v10 + 16))(v15, v17, v9);
  sub_227662720();
  sub_227661FF0();
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v18 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v19 = sub_226F72B08(v8, *v18, v18[1], *(v18 + 16), v18[3]);

  if (a2)
  {
    v21 = sub_226F73070(0, v19[2], a2, v19, a2);

LABEL_5:
    (*(v22 + 8))(v8, v23);
    result = (*(v10 + 8))(v17, v9);
    *v24 = v21;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_226F6A644@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = *__swift_project_boxed_opaque_existential_0((a2 + 296), *(a2 + 320));
  result = sub_227253C1C(a3, a4, a1, v14);
  if (!v5)
  {
    v17 = sub_2276638D0();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v14, 1, v17) == 1)
    {
      sub_226E97D1C(v14, &unk_27D7BB920, &unk_227672480);
      v19 = sub_227664AB0();
      sub_226F73C88(&qword_27D7B8E58, MEMORY[0x277D50D38]);
      swift_allocError();
      (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D50CF8], v19);
      return swift_willThrow();
    }

    else
    {
      return (*(v18 + 32))(a5, v14, v17);
    }
  }

  return result;
}

uint64_t sub_226F6A860@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = sub_2276627D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276637C0();
  sub_227669DE0();
  sub_227669DA0();
  v11 = v10;
  v12 = sub_2276637D0();
  v13 = sub_226F491E8(v12);
  v14 = sub_22727227C(v9, v13, a1, v11);
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  v16 = v14;
  (*(v6 + 8))(v9, v5);

  v17 = *(v16 + 16);
  if (!v17)
  {
    goto LABEL_6;
  }

  v18 = sub_2274CD7B8(*(v16 + 16), 0);
  v19 = *(sub_227664530() - 8);
  v20 = sub_2274CDE08(&v22, &v18[(*(v19 + 80) + 32) & ~*(v19 + 80)], v17, v16);
  sub_226EBB21C();
  if (v20 != v17)
  {
    __break(1u);
LABEL_6:

    v18 = MEMORY[0x277D84F90];
  }

  v22 = v18;

  sub_226F712B8(&v22);

  *a2 = v22;
  return result;
}

uint64_t sub_226F6AAA0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v1 = v0[17];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 19);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);

  return swift_deallocClassInstance();
}

uint64_t sub_226F6AB50(uint64_t a1)
{
  v2[49] = a1;
  v2[50] = v1;
  v3 = sub_22766A490();
  v2[51] = v3;
  v4 = *(v3 - 8);
  v2[52] = v4;
  v5 = *(v4 + 64) + 15;
  v2[53] = swift_task_alloc();
  v6 = sub_227662750();
  v2[54] = v6;
  v7 = *(v6 - 8);
  v2[55] = v7;
  v8 = *(v7 + 64) + 15;
  v2[56] = swift_task_alloc();
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E38, &qword_22767C730) - 8);
  v2[57] = v9;
  v2[58] = *(v9 + 64);
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v10 = sub_2276627D0();
  v2[62] = v10;
  v11 = *(v10 - 8);
  v2[63] = v11;
  v12 = *(v11 + 64) + 15;
  v2[64] = swift_task_alloc();
  v13 = sub_2276638D0();
  v2[65] = v13;
  v14 = *(v13 - 8);
  v2[66] = v14;
  v2[67] = *(v14 + 64);
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480) - 8);
  v2[71] = v15;
  v2[72] = *(v15 + 64);
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v2[75] = swift_task_alloc();
  v16 = sub_227664530();
  v2[76] = v16;
  v17 = *(v16 - 8);
  v2[77] = v17;
  v2[78] = *(v17 + 64);
  v2[79] = swift_task_alloc();
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E40, &unk_227685580) - 8) + 64) + 15;
  v2[83] = swift_task_alloc();
  v19 = sub_227667A70();
  v2[84] = v19;
  v20 = *(v19 - 8);
  v2[85] = v20;
  v2[86] = *(v20 + 64);
  v2[87] = swift_task_alloc();
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  v2[91] = swift_task_alloc();
  v21 = sub_22766B390();
  v2[92] = v21;
  v22 = *(v21 - 8);
  v2[93] = v22;
  v23 = *(v22 + 64) + 15;
  v2[94] = swift_task_alloc();
  v2[95] = swift_task_alloc();
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();
  v2[99] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F6B038, 0, 0);
}

uint64_t sub_226F6B038()
{
  v1 = *(v0 + 792);
  v3 = *(v0 + 392);
  v2 = *(v0 + 400);
  v4 = v2[36];
  __swift_project_boxed_opaque_existential_0(v2 + 32, v2[35]);
  *(v0 + 1144) = 22;
  *(v0 + 800) = sub_226F19410();
  *(v0 + 808) = sub_226F19464();
  sub_22766A130();
  sub_22766A610();

  v5 = sub_22766B380();
  v6 = sub_22766C8B0();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 392);
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    if ((v8 & 0xC000000000000001) != 0)
    {
      v10 = sub_22766CD20();
      v11 = *(v0 + 392);
    }

    else
    {
      v10 = *(*(v0 + 392) + 16);
    }

    *(v9 + 4) = v10;

    _os_log_impl(&dword_226E8E000, v5, v6, "Running historical evaluation for [%ld] templates", v9, 0xCu);
    MEMORY[0x22AA9A450](v9, -1, -1);
  }

  else
  {
    v12 = *(v0 + 392);
  }

  v13 = *(v0 + 792);
  v14 = *(v0 + 744);
  v15 = *(v0 + 736);
  v16 = *(v0 + 728);
  v17 = *(v0 + 664);
  v18 = *(v14 + 8);
  *(v0 + 816) = v18;
  *(v0 + 824) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v13, v15);
  v19 = sub_2276667B0();
  (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  v20 = MEMORY[0x277D84F90];
  sub_226F73738(MEMORY[0x277D84F90]);
  sub_226F7383C(v20);
  sub_226F7383C(v20);
  sub_227667A20();
  v21 = swift_task_alloc();
  *(v0 + 832) = v21;
  *v21 = v0;
  v21[1] = sub_226F6B310;
  v22 = *(v0 + 400);

  return sub_226F69DD4(100);
}

uint64_t sub_226F6B310(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 832);
  v7 = *v1;
  *(v3 + 840) = a1;

  v5 = swift_task_alloc();
  *(v3 + 848) = v5;
  *v5 = v7;
  v5[1] = sub_226F6B444;

  return sub_226F7344C(a1);
}

uint64_t sub_226F6B444(char a1)
{
  v2 = *(*v1 + 848);
  v4 = *v1;
  *(*v1 + 1147) = a1;

  return MEMORY[0x2822009F8](sub_226F6B544, 0, 0);
}

uint64_t sub_226F6B544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 1147) == 1)
  {
    v4 = *(v3 + 840);
    v5 = *(v4 + 16);
    *(v3 + 856) = v5;
    if (v5)
    {
      v6 = *(v3 + 400);
      *(v3 + 872) = 0;
      *(v3 + 864) = MEMORY[0x277D84FA0];
      if (*(v4 + 16))
      {
        v7 = *(v4 + 32);
        *(v3 + 880) = v7;
        v8 = v6[22];
        v9 = v6[23];
        __swift_project_boxed_opaque_existential_0(v6 + 19, v8);
        v10 = *(MEMORY[0x277D4F208] + 4);

        v11 = swift_task_alloc();
        *(v3 + 888) = v11;
        a3 = *(v9 + 8);
        *v11 = v3;
        v11[1] = sub_226F6B9A4;
        v4 = v7;
        a2 = v8;
      }

      else
      {
        __break(1u);
      }

      return MEMORY[0x2821AED70](v4, a2, a3);
    }

    else
    {

      *(v3 + 1120) = MEMORY[0x277D84FA0];
      v30 = *(v3 + 728);
      v31 = *(v3 + 696);
      v33 = *(v3 + 440);
      v32 = *(v3 + 448);
      v34 = *(v3 + 432);
      v35 = *(v3 + 400);
      sub_227662720();
      sub_2276679C0();
      (*(v33 + 8))(v32, v34);
      v36 = *__swift_project_boxed_opaque_existential_0((v35 + 96), *(v35 + 120));
      v37 = swift_task_alloc();
      *(v3 + 1128) = v37;
      *v37 = v3;
      v37[1] = sub_226F6FF40;
      v38 = *(v3 + 696);

      return sub_226FB5BA4(v38);
    }
  }

  else
  {
    v12 = *(v3 + 840);
    v13 = *(v3 + 808);
    v14 = *(v3 + 800);
    v15 = *(v3 + 400);
    (*(*(v3 + 680) + 8))(*(v3 + 728), *(v3 + 672));

    v16 = v15[36];
    __swift_project_boxed_opaque_existential_0(v15 + 32, v15[35]);
    *(v3 + 1145) = 22;
    sub_22766A120();
    v17 = *(v3 + 792);
    v18 = *(v3 + 784);
    v19 = *(v3 + 776);
    v20 = *(v3 + 768);
    v21 = *(v3 + 760);
    v22 = *(v3 + 752);
    v23 = *(v3 + 728);
    v24 = *(v3 + 720);
    v25 = *(v3 + 712);
    v26 = *(v3 + 704);
    v39 = *(v3 + 696);
    v40 = *(v3 + 664);
    v41 = *(v3 + 656);
    v42 = *(v3 + 648);
    v43 = *(v3 + 640);
    v44 = *(v3 + 632);
    v45 = *(v3 + 600);
    v46 = *(v3 + 592);
    v47 = *(v3 + 584);
    v48 = *(v3 + 560);
    v49 = *(v3 + 552);
    v50 = *(v3 + 544);
    v51 = *(v3 + 512);
    v52 = *(v3 + 488);
    v53 = *(v3 + 480);
    v54 = *(v3 + 472);
    v55 = *(v3 + 448);
    v56 = *(v3 + 424);

    v27 = *(v3 + 8);
    v28 = MEMORY[0x277D84FA0];

    return v27(v28);
  }
}

uint64_t sub_226F6B9A4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 888);
  v6 = *v2;

  if (v1)
  {

    v7 = sub_226F707A4;
  }

  else
  {
    *(v4 + 896) = a1;
    v7 = sub_226F6BAD0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_226F6BAD0()
{
  v0[113] = v0[112];
  v1 = v0[110];
  v2 = v1[2];
  v0[114] = v2;
  if (v2)
  {
    v3 = v0[108];
    v0[116] = 0;
    v0[115] = v3;
    v4 = v0[50];
    v5 = v1[4];
    v0[117] = v5;
    v6 = v1[5];
    v0[118] = v6;
    v7 = v4[30];
    v8 = v4[31];
    __swift_project_boxed_opaque_existential_0(v4 + 27, v7);
    v9 = swift_allocObject();
    v0[119] = v9;
    v9[2] = v4;
    v9[3] = v5;
    v9[4] = v6;
    v10 = *(v8 + 24);
    swift_bridgeObjectRetain_n();

    v38 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    v0[120] = v12;
    *v12 = v0;
    v12[1] = sub_226F6BE60;
    v13 = v0[82];
    v14 = v0[76];

    return (v38)(v13, sub_226F73938, v9, v14, v7, v8);
  }

  else
  {

    v19 = v0[109] + 1;
    if (v19 == v0[107])
    {
      v20 = v0[108];
      v21 = v0[105];

      v0[140] = v20;
      v22 = v0[91];
      v23 = v0[87];
      v25 = v0[55];
      v24 = v0[56];
      v26 = v0[54];
      v27 = v0[50];
      sub_227662720();
      sub_2276679C0();
      (*(v25 + 8))(v24, v26);
      v28 = *__swift_project_boxed_opaque_existential_0((v27 + 96), *(v27 + 120));
      v29 = swift_task_alloc();
      v0[141] = v29;
      *v29 = v0;
      v29[1] = sub_226F6FF40;
      v30 = v0[87];

      return sub_226FB5BA4(v30);
    }

    else
    {
      v0[109] = v19;
      v31 = v0[105];
      if (v19 >= *(v31 + 16))
      {
        __break(1u);
      }

      else
      {
        v32 = v0[50];
        v33 = *(v31 + 8 * v19 + 32);
        v0[110] = v33;
        v34 = v32[22];
        v35 = v32[23];
        __swift_project_boxed_opaque_existential_0(v32 + 19, v34);
        v36 = *(MEMORY[0x277D4F208] + 4);

        v37 = swift_task_alloc();
        v0[111] = v37;
        v18 = *(v35 + 8);
        *v37 = v0;
        v37[1] = sub_226F6B9A4;
        v16 = v33;
        v17 = v34;
      }

      return MEMORY[0x2821AED70](v16, v17, v18);
    }
  }
}

uint64_t sub_226F6BE60()
{
  v2 = *v1;
  v3 = *(*v1 + 960);
  v7 = *v1;
  *(*v1 + 968) = v0;

  if (v0)
  {
    v4 = sub_226F70B34;
  }

  else
  {
    v5 = *(v2 + 952);

    v4 = sub_226F6BF7C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226F6BF7C()
{
  v1 = v0[82];
  v2 = v0[50];
  v3 = sub_2276644D0();
  v5 = v4;
  v6 = v2[30];
  v7 = v2[31];
  __swift_project_boxed_opaque_existential_0(v2 + 27, v6);
  v8 = swift_allocObject();
  v0[122] = v8;
  v8[2] = v2;
  v8[3] = v3;
  v8[4] = v5;
  v9 = *(v7 + 24);

  v15 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[123] = v11;
  *v11 = v0;
  v11[1] = sub_226F6C118;
  v12 = v0[75];
  v13 = v0[65];

  return (v15)(v12, sub_226F73998, v8, v13, v6, v7);
}

uint64_t sub_226F6C118()
{
  v2 = *v1;
  v3 = *(*v1 + 984);
  v4 = *v1;

  v5 = *(v2 + 976);
  if (v0)
  {

    v6 = sub_226F6CAAC;
  }

  else
  {

    v6 = sub_226F6C260;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226F6C260()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 528);
  v4 = *(v0 + 520);
  (*(v3 + 56))(v1, 0, 1, v4);
  sub_226E93170(v1, v2, &unk_27D7BB920, &unk_227672480);
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    sub_226E97D1C(*(v0 + 592), &unk_27D7BB920, &unk_227672480);
    v5 = *(v0 + 904);
    if (v5 && *(v5 + 16))
    {
      v6 = *(v0 + 944);
      v7 = *(v0 + 936);
      v8 = *(v0 + 904);

      v9 = sub_226E92000(v7, v6);
      v10 = *(v0 + 488);
      if (v11)
      {
        v12 = v9;
        v13 = *(*(v0 + 904) + 56);
        v14 = sub_22766A4C0();
        v15 = *(v14 - 8);
        (*(v15 + 16))(v10, v13 + *(v15 + 72) * v12, v14);

        (*(v15 + 56))(v10, 0, 1, v14);
LABEL_10:
        v39 = *(v0 + 480);
        v38 = *(v0 + 488);
        v40 = __swift_project_boxed_opaque_existential_0((*(v0 + 400) + 56), *(*(v0 + 400) + 80));
        sub_226E93170(v38, v39, &qword_27D7B8E38, &qword_22767C730);
        sub_22766A4C0();
        v41 = *(v14 - 8);
        v42 = (*(v41 + 48))(v39, 1, v14);
        v43 = *(v0 + 480);
        if (v42 == 1)
        {
          sub_226E97D1C(*(v0 + 480), &qword_27D7B8E38, &qword_22767C730);
          v44 = 0;
        }

        else
        {
          sub_22766A4A0();
          v44 = v45;
          (*(v41 + 8))(v43, v14);
        }

        v76 = *(v0 + 728);
        v46 = *(v0 + 720);
        v87 = v46;
        v82 = *(v0 + 688);
        v47 = *(v0 + 680);
        v48 = *(v0 + 672);
        v85 = v48;
        v73 = *(v0 + 656);
        v49 = *(v0 + 648);
        v50 = *(v0 + 616);
        v51 = *(v0 + 608);
        v86 = v51;
        v52 = *(v0 + 584);
        v79 = *(v0 + 576);
        v80 = *(v0 + 624);
        v74 = *(v0 + 600);
        v75 = *(v0 + 488);
        v53 = *(v0 + 472);
        v83 = v53;
        v84 = v52;
        v81 = *(v0 + 464);
        v77 = *(v0 + 568);
        v78 = *(v0 + 456);
        v92 = v40[16];
        v90 = v40[17];
        __swift_project_boxed_opaque_existential_0(v40 + 13, v92);
        sub_226F739B8(v40, v0 + 16);
        v54 = *(v50 + 16);
        *(v0 + 1024) = v54;
        *(v0 + 1032) = (v50 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v54(v49, v73, v51);
        sub_226E93170(v74, v52, &unk_27D7BB920, &unk_227672480);
        v55 = *(v47 + 16);
        *(v0 + 1040) = v55;
        *(v0 + 1048) = (v47 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v55(v46, v76, v48);
        sub_226E93170(v75, v53, &qword_27D7B8E38, &qword_22767C730);
        v56 = (*(v50 + 80) + 240) & ~*(v50 + 80);
        v57 = (v80 + *(v77 + 80) + v56) & ~*(v77 + 80);
        v58 = (v79 + *(v47 + 80) + v57) & ~*(v47 + 80);
        v59 = (v82 + *(v78 + 80) + v58) & ~*(v78 + 80);
        v60 = (v81 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
        v61 = swift_allocObject();
        *(v0 + 1056) = v61;
        v62 = *(v0 + 192);
        *(v61 + 11) = *(v0 + 176);
        *(v61 + 12) = v62;
        v63 = *(v0 + 224);
        *(v61 + 13) = *(v0 + 208);
        *(v61 + 14) = v63;
        v64 = *(v0 + 128);
        *(v61 + 7) = *(v0 + 112);
        *(v61 + 8) = v64;
        v65 = *(v0 + 160);
        *(v61 + 9) = *(v0 + 144);
        *(v61 + 10) = v65;
        v66 = *(v0 + 64);
        *(v61 + 3) = *(v0 + 48);
        *(v61 + 4) = v66;
        v67 = *(v0 + 96);
        *(v61 + 5) = *(v0 + 80);
        *(v61 + 6) = v67;
        v68 = *(v0 + 32);
        *(v61 + 1) = *(v0 + 16);
        *(v61 + 2) = v68;
        (*(v50 + 32))(&v61[v56], v49, v86);
        sub_226E95D18(v84, &v61[v57], &unk_27D7BB920, &unk_227672480);
        v69 = *(v47 + 32);
        *(v0 + 1064) = v69;
        *(v0 + 1072) = (v47 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v69(&v61[v58], v87, v85);
        sub_226E95D18(v83, &v61[v59], &qword_27D7B8E38, &qword_22767C730);
        *&v61[v60] = 0;
        *&v61[(v60 + 15) & 0xFFFFFFFFFFFFFFF8] = v44;
        v89 = (*(v90 + 24) + **(v90 + 24));
        v70 = *(*(v90 + 24) + 4);
        v71 = swift_task_alloc();
        *(v0 + 1080) = v71;
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E48, qword_22767C750);
        *v71 = v0;
        v71[1] = sub_226F6E734;
        v31 = sub_226F73A14;
        v32 = v0 + 240;
        v33 = v61;
        v34 = v92;
        v35 = v90;
        v36 = v89;
        goto LABEL_14;
      }

      v37 = *(v0 + 904);
    }

    else
    {
      v10 = *(v0 + 488);
    }

    v14 = sub_22766A4C0();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
    goto LABEL_10;
  }

  v16 = *(v0 + 560);
  v17 = *(v0 + 552);
  v18 = *(v0 + 536);
  v19 = *(v0 + 528);
  v20 = *(v0 + 520);
  v21 = *(v0 + 400);
  v22 = *(v19 + 32);
  v22(v16, *(v0 + 592), v20);
  v23 = v21[31];
  v91 = v21[30];
  __swift_project_boxed_opaque_existential_0(v21 + 27, v91);
  v24 = *(v19 + 16);
  v19 += 16;
  *(v0 + 992) = v24;
  *(v0 + 1000) = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v24(v17, v16, v20);
  v25 = (*(v19 + 64) + 24) & ~*(v19 + 64);
  v26 = swift_allocObject();
  *(v0 + 1008) = v26;
  *(v26 + 16) = v21;
  v22(v26 + v25, v17, v20);
  v27 = *(v23 + 24);

  v88 = v27 + *v27;
  v28 = v27[1];
  v29 = swift_task_alloc();
  *(v0 + 1016) = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEA10, &qword_2276724A0);
  *v29 = v0;
  v29[1] = sub_226F6D2F8;
  v31 = sub_226F73C08;
  v32 = v0 + 376;
  v33 = v26;
  v34 = v91;
  v35 = v23;
  v36 = v88;
LABEL_14:

  return v36(v32, v31, v33, v30, v34, v35);
}