uint64_t sub_2273CC2AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = *MEMORY[0x277D85DE8];
  v6 = sub_227663480();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v52 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;

  if (v10 > 0xD)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v41 = v11;
    v42 = v3;
    v40 = &v40;
    MEMORY[0x28223BE20](v13);
    v43 = &v40 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v43, v12);
    v11 = 0;
    v14 = a1 + 56;
    v15 = 1 << *(a1 + 32);
    v16 = v15 < 64 ? ~(-1 << v15) : -1;
    v17 = v16 & *(a1 + 56);
    v18 = (v15 + 63) >> 6;
    v46 = v7 + 16;
    v47 = v7;
    v12 = a2 + 56;
    v44 = 0;
    v45 = (v7 + 8);
    v48 = v6;
    v49 = a1;
    while (v17)
    {
      v19 = __clz(__rbit64(v17));
      v51 = (v17 - 1) & v17;
LABEL_14:
      v22 = v19 | (v11 << 6);
      v23 = *(a1 + 48);
      v24 = *(v7 + 72);
      v50 = v22;
      v3 = v52;
      (*(v7 + 16))(v52, v23 + v24 * v22, v6);
      v25 = sub_227663410();
      v27 = v26;
      if (*(a2 + 16) && (v3 = v25, v28 = *(a2 + 40), sub_22766D370(), sub_22766C100(), v29 = sub_22766D3F0(), v30 = -1 << *(a2 + 32), v31 = v29 & ~v30, ((*(v12 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0))
      {
        v32 = ~v30;
        while (1)
        {
          v33 = (*(a2 + 48) + 16 * v31);
          v34 = *v33 == v3 && v33[1] == v27;
          if (v34 || (sub_22766D190() & 1) != 0)
          {
            break;
          }

          v31 = (v31 + 1) & v32;
          if (((*(v12 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        v6 = v48;
        (*v45)(v52, v48);
        a1 = v49;
        v7 = v47;
        v17 = v51;
      }

      else
      {
LABEL_23:

        v6 = v48;
        (*v45)(v52, v48);
        a1 = v49;
        *&v43[(v50 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v50;
        v35 = __OFADD__(v44++, 1);
        v7 = v47;
        v17 = v51;
        if (v35)
        {
          __break(1u);
LABEL_26:
          v36 = sub_22726AD50(v43, v41, v44, a1);

          goto LABEL_27;
        }
      }
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v18)
      {
        goto LABEL_26;
      }

      v21 = *(v14 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v51 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_29:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v39 = swift_slowAlloc();

  v36 = sub_2273CA99C(v39, v11, a1, a2, sub_2273CBFA4);

  MEMORY[0x22AA9A450](v39, -1, -1);

LABEL_27:
  v37 = *MEMORY[0x277D85DE8];
  return v36;
}

unint64_t *sub_2273CC70C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = 0;
  v23 = a4;
  v20 = a2;
  v21 = result;
  v4 = 0;
  v25 = a3;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v25 + 48) + 16 * v13);
    v15 = v14[1];
    v24[0] = *v14;
    v24[1] = v15;
    MEMORY[0x28223BE20](result);
    v19[2] = v24;

    v16 = sub_226F7E160(sub_2273CCF14, v19, v23);

    if ((v16 & 1) == 0)
    {
      *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        v18 = v25;

        return sub_22726999C(v21, v20, v22, v18);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2273CC8BC(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v33[2] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = v3 & 0x3F;
  v5 = ((1 << v3) + 63) >> 6;
  v6 = 8 * v5;
  v32 = a2;

  if (v4 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v27[1] = v27;
    v28 = v5;
    MEMORY[0x28223BE20](v7);
    v29 = v27 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v29, v6);
    v30 = 0;
    v31 = v2;
    v5 = 0;
    v10 = *(v2 + 56);
    v2 += 56;
    v9 = v10;
    v11 = 1 << *(v2 - 24);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v9;
    v6 = (v11 + 63) >> 6;
    while (v13)
    {
      v14 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v17 = v14 | (v5 << 6);
      v18 = (*(v31 + 48) + 16 * v17);
      v19 = v18[1];
      v33[0] = *v18;
      v33[1] = v19;
      MEMORY[0x28223BE20](v8);
      v27[-2] = v33;

      v20 = sub_226F7E160(sub_226FA6D84, &v27[-4], v32);

      if ((v20 & 1) == 0)
      {
        *&v29[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
LABEL_16:
          v22 = sub_22726999C(v29, v28, v30, v31);
          goto LABEL_17;
        }
      }
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v6)
      {
        goto LABEL_16;
      }

      v16 = *(v2 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v13 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v25 = swift_slowAlloc();
  v26 = v32;

  v22 = sub_2273CA99C(v25, v5, v2, v26, sub_2273CC70C);

  MEMORY[0x22AA9A450](v25, -1, -1);
LABEL_17:

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t sub_2273CCBB4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2273CCCA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 24);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E92F34;

  return sub_2273C6F10(a1, v4, v6, v5);
}

uint64_t sub_2273CCD6C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 16);
  return sub_2273C7BFC(a1, a2);
}

uint64_t sub_2273CCDD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2273CCE34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_2273CCF40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v52 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E10, &qword_227676660);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v51 = v42 - v4;
  v48 = sub_227662CA0();
  v45 = *(v48 - 8);
  v5 = *(v45 + 64);
  v6 = MEMORY[0x28223BE20](v48);
  v47 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v46 = v42 - v8;
  v43 = sub_227662C90();
  v9 = *(v43 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v43);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_227665C20();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_227662C60();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2276688C0();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2276627D0();
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  MEMORY[0x28223BE20](v28);
  v44 = v42 - v29;
  sub_227662D40();
  v30 = sub_227662D60();
  v42[0] = v31;
  v42[1] = v30;
  sub_227662D70();
  v49 = v25;
  sub_226FFF5EC(v25);
  v32 = v21;
  v33 = v45;
  (*(v18 + 8))(v32, v17);
  sub_227662D30();
  sub_22735CAE4(v16);
  v34 = v12;
  v35 = v47;
  (*(v9 + 8))(v34, v43);
  v36 = v46;
  sub_227662D80();
  v37 = v48;
  (*(v33 + 32))(v35, v36, v48);
  v38 = (*(v33 + 88))(v35, v37);
  if (v38 != *MEMORY[0x277D494D8] && v38 != *MEMORY[0x277D494E0] && v38 != *MEMORY[0x277D494E8])
  {
    (*(v33 + 8))(v35, v37);
  }

  sub_2276686B0();
  sub_227662D50();
  sub_227668680();
  v39 = v51;
  sub_2276686A0();
  v40 = sub_2276686C0();
  (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  return sub_227666D30();
}

uint64_t sub_2273CD428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_22766B390();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2273CD4EC, 0, 0);
}

uint64_t sub_2273CD4EC()
{
  v1 = *(*(v0 + 80) + OBJC_IVAR____TtC15SeymourServices21AMSRequestBagConsumer_bagConsumer);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_2273CD588;

  return sub_226EA0808();
}

uint64_t sub_2273CD588(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v5 = *v2;
  *(*v2 + 120) = a1;

  if (v1)
  {
    v6 = *(v3 + 104);

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2273CD6D8, 0, 0);
  }
}

uint64_t sub_2273CD6D8()
{
  v1 = v0[15];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_22766BFD0();
  v5 = [v1 URLForKey_];

  v6 = [v5 valuePromise];
  v0[16] = v6;

  v7 = swift_task_alloc();
  v0[17] = v7;
  *(v7 + 16) = v6;
  v8 = *(MEMORY[0x277D85A40] + 4);
  v9 = swift_task_alloc();
  v0[18] = v9;
  v10 = sub_226E99364(0, &qword_281398A30, 0x277CBEBC0);
  *v9 = v0;
  v9[1] = sub_2273CD838;

  return MEMORY[0x2822008A0](v0 + 5, 0, 0, 0xD000000000000013, 0x8000000227697E90, sub_226EA24CC, v7, v10);
}

uint64_t sub_2273CD838()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_2273CD9EC;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_2273CD954;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2273CD954()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 56);

  v4 = *(v0 + 40);
  sub_227662430();

  swift_unknownObjectRelease();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2273CD9EC()
{
  v27 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 104);

  sub_22766A6C0();
  v4 = v1;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 152);
    v9 = *(v0 + 96);
    v8 = *(v0 + 104);
    v10 = *(v0 + 88);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136446210;
    swift_getErrorValue();
    v13 = *(v0 + 16);
    v14 = MEMORY[0x22AA995D0](*(v0 + 24), *(v0 + 32));
    v16 = sub_226E97AE8(v14, v15, &v26);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_226E8E000, v5, v6, "URL value couldn't be loaded: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA9A450](v12, -1, -1);
    MEMORY[0x22AA9A450](v11, -1, -1);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v18 = *(v0 + 96);
    v17 = *(v0 + 104);
    v19 = *(v0 + 88);

    (*(v18 + 8))(v17, v19);
  }

  v20 = *(v0 + 152);
  v21 = *(v0 + 120);
  sub_227145EAC();
  swift_allocError();
  *v22 = 0;
  swift_willThrow();

  swift_unknownObjectRelease();
  v23 = *(v0 + 104);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_2273CDC0C(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2[13] = a1;
  v2[14] = v1;
  v3 = sub_22766B390();
  v2[15] = v3;
  v4 = *(v3 - 8);
  v2[16] = v4;
  v5 = *(v4 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v6 = *(*(sub_22766C050() - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2273CDD3C, 0, 0);
}

uint64_t sub_2273CDD3C()
{
  v53 = v0;
  v52[1] = *MEMORY[0x277D85DE8];
  v1 = v0[13];
  v2 = [*(v0[14] + OBJC_IVAR____TtC15SeymourServices21AMSRequestBagConsumer_amsSession) dataTaskPromiseWithRequest_];
  v0[21] = v2;
  v3 = [v1 HTTPBody];
  if (v3)
  {
    v4 = v0[20];
    v5 = v3;
    v6 = sub_227662590();
    v8 = v7;

    sub_22766C040();
    v9 = sub_22766C020();
    if (v10)
    {
      v11 = v10;
      v51 = v9;
      v12 = objc_opt_self();
      v13 = sub_227662560();
      v0[11] = 0;
      v14 = [v12 JSONObjectWithData:v13 options:0 error:v0 + 11];

      v15 = v0[11];
      if (v14)
      {
        v16 = v15;
        sub_22766CC20();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CA8, &unk_227675D20);
        if (swift_dynamicCast())
        {
          v17 = v0[19];
          v18 = v0[12];
          sub_22766A6C0();

          v19 = sub_22766B380();
          v20 = sub_22766C8B0();

          v49 = v20;
          v21 = os_log_type_enabled(v19, v20);
          v22 = v0[19];
          v23 = v0[16];
          v50 = v0[15];
          if (v21)
          {
            v48 = v0[19];
            v24 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            v52[0] = v47;
            *v24 = 136315394;
            log = v19;
            v25 = sub_22766BEC0();
            v27 = v26;

            v28 = sub_226E97AE8(v25, v27, v52);

            *(v24 + 4) = v28;
            *(v24 + 12) = 2080;
            v29 = sub_226E97AE8(v51, v11, v52);

            *(v24 + 14) = v29;
            _os_log_impl(&dword_226E8E000, log, v49, "Decoded request body: %s, request body string: %s", v24, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x22AA9A450](v47, -1, -1);
            MEMORY[0x22AA9A450](v24, -1, -1);
            sub_226EDC420(v6, v8);

            (*(v23 + 8))(v48, v50);
          }

          else
          {
            sub_226EDC420(v6, v8);

            (*(v23 + 8))(v22, v50);
          }
        }

        else
        {
          sub_226EDC420(v6, v8);
        }
      }

      else
      {
        v43 = v15;

        v44 = sub_2276622C0();

        swift_willThrow();
        sub_226EDC420(v6, v8);
      }

      goto LABEL_11;
    }

    sub_226EDC420(v6, v8);
  }

  v30 = v0[18];
  sub_22766A6C0();
  v31 = sub_22766B380();
  v32 = sub_22766C8B0();
  v33 = os_log_type_enabled(v31, v32);
  v34 = v0[18];
  v35 = v0[15];
  v36 = v0[16];
  if (v33)
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_226E8E000, v31, v32, "No request body", v37, 2u);
    MEMORY[0x22AA9A450](v37, -1, -1);
  }

  (*(v36 + 8))(v34, v35);
LABEL_11:
  v38 = swift_task_alloc();
  v0[22] = v38;
  *(v38 + 16) = v2;
  v39 = *(MEMORY[0x277D85A40] + 4);
  v40 = swift_task_alloc();
  v0[23] = v40;
  v41 = sub_226E99364(0, &qword_281398B50, 0x277CEE6E8);
  *v40 = v0;
  v40[1] = sub_2273CE280;
  v42 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822008A0](v0 + 9, 0, 0, 0xD000000000000013, 0x8000000227697E90, sub_2273D1138, v38, v41);
}

uint64_t sub_2273CE280()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 184);
  v9 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = sub_2273CE4A0;
  }

  else
  {
    v5 = *(v2 + 176);

    v4 = sub_2273CE3D0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2273CE3D0()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 136);
  v5 = *(v0 + 72);

  v6 = *(v0 + 8);
  v7 = *MEMORY[0x277D85DE8];

  return v6(v5);
}

uint64_t sub_2273CE4A0()
{
  v31 = v0;
  v30[1] = *MEMORY[0x277D85DE8];
  v1 = v0[24];
  v2 = v0[22];
  v3 = v0[17];

  sub_22766A6C0();
  v4 = v1;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[24];
    v9 = v0[16];
    v8 = v0[17];
    v10 = v0[15];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30[0] = v12;
    *v11 = 136446210;
    swift_getErrorValue();
    v13 = v0[6];
    v14 = MEMORY[0x22AA995D0](v0[7], v0[8]);
    v16 = sub_226E97AE8(v14, v15, v30);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_226E8E000, v5, v6, "Encountered AMS Error. Content couldn't be fetched: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA9A450](v12, -1, -1);
    MEMORY[0x22AA9A450](v11, -1, -1);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v18 = v0[16];
    v17 = v0[17];
    v19 = v0[15];

    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[24];
  v21 = v0[20];
  v22 = v0[21];
  v24 = v0[18];
  v23 = v0[19];
  v25 = v0[17];
  swift_willThrow();

  v26 = v0[1];
  v27 = v0[24];
  v28 = *MEMORY[0x277D85DE8];

  return v26();
}

uint64_t sub_2273CE6CC(uint64_t a1, uint64_t a2)
{
  v3[105] = v2;
  v3[104] = a2;
  v3[103] = a1;
  v4 = sub_22766B390();
  v3[106] = v4;
  v5 = *(v4 - 8);
  v3[107] = v5;
  v6 = *(v5 + 64) + 15;
  v3[108] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2273CE794, 0, 0);
}

uint64_t sub_2273CE794()
{
  v1 = *(v0 + 840);
  v2 = swift_allocObject();
  *(v0 + 872) = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9520, &unk_227674410);
  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 16, v0 + 760, sub_2273CE860, v0 + 656);
}

uint64_t sub_2273CE860()
{
  *(v1 + 880) = v0;
  if (v0)
  {
    v2 = sub_2273CEF34;
  }

  else
  {
    v2 = sub_2273CE894;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2273CE894()
{
  v1 = v0[104];
  v2 = v0[103];
  v3 = v0[95];
  swift_unknownObjectRetain();
  v4 = sub_22766BFD0();
  v5 = [v3 integerForKey_];
  swift_unknownObjectRelease();

  v6 = [v5 valuePromise];
  v0[111] = v6;

  v7 = swift_task_alloc();
  v0[112] = v7;
  *(v7 + 16) = v6;
  v8 = *(MEMORY[0x277D85A40] + 4);
  v9 = swift_task_alloc();
  v0[113] = v9;
  v10 = sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
  *v9 = v0;
  v9[1] = sub_2273CEA10;

  return MEMORY[0x2822008A0](v0 + 102, 0, 0, 0xD000000000000013, 0x8000000227697E90, sub_2273D1060, v7, v10);
}

uint64_t sub_2273CEA10()
{
  v2 = *v1;
  v3 = *(*v1 + 904);
  v7 = *v1;
  *(*v1 + 912) = v0;

  if (v0)
  {
    v4 = sub_2273CEC44;
  }

  else
  {
    v5 = *(v2 + 896);

    v4 = sub_2273CEB2C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2273CEB2C()
{
  v1 = *(v0 + 816);
  *(v0 + 920) = [v1 integerValue];

  return MEMORY[0x282200920](v0 + 16, v0 + 760, sub_2273CEBB4, v0 + 768);
}

uint64_t sub_2273CEBD0()
{
  v1 = v0[109];
  v2 = v0[108];

  v3 = v0[1];
  v4 = v0[115];

  return v3(v4);
}

uint64_t sub_2273CEC44()
{
  v25 = v0;
  v1 = *(v0 + 896);

  v2 = *(v0 + 912);
  v3 = *(v0 + 864);
  v4 = *(v0 + 832);
  sub_22766A690();

  v5 = v2;
  v6 = sub_22766B380();
  v7 = sub_22766C890();

  if (os_log_type_enabled(v6, v7))
  {
    v23 = *(v0 + 864);
    v8 = *(v0 + 856);
    v9 = *(v0 + 848);
    v10 = *(v0 + 832);
    v11 = *(v0 + 824);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24[0] = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_226E97AE8(v11, v10, v24);
    *(v12 + 12) = 2082;
    swift_getErrorValue();
    v14 = *(v0 + 696);
    v15 = MEMORY[0x22AA995D0](*(v0 + 704), *(v0 + 712));
    v17 = sub_226E97AE8(v15, v16, v24);

    *(v12 + 14) = v17;
    _os_log_impl(&dword_226E8E000, v6, v7, "Int value couldn't be loaded from the bag for key %s: %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v13, -1, -1);
    MEMORY[0x22AA9A450](v12, -1, -1);

    (*(v8 + 8))(v23, v9);
  }

  else
  {
    v18 = *(v0 + 864);
    v19 = *(v0 + 856);
    v20 = *(v0 + 848);

    (*(v19 + 8))(v18, v20);
  }

  sub_227145EAC();
  *(v0 + 928) = swift_allocError();
  *v21 = 0;
  swift_willThrow();

  return MEMORY[0x282200920](v0 + 16, v0 + 760, sub_2273CEEA8, v0 + 720);
}

uint64_t sub_2273CEEC4()
{
  v1 = v0[109];
  v2 = v0[108];

  v3 = v0[1];
  v4 = v0[116];

  return v3();
}

uint64_t sub_2273CEF34()
{
  v24 = v0;
  v1 = v0[110];
  v2 = v0[108];
  v3 = v0[104];
  sub_22766A690();

  v4 = v1;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v22 = v0[108];
    v7 = v0[107];
    v8 = v0[106];
    v9 = v0[104];
    v10 = v0[103];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_226E97AE8(v10, v9, v23);
    *(v11 + 12) = 2082;
    swift_getErrorValue();
    v13 = v0[87];
    v14 = MEMORY[0x22AA995D0](v0[88], v0[89]);
    v16 = sub_226E97AE8(v14, v15, v23);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_226E8E000, v5, v6, "Int value couldn't be loaded from the bag for key %s: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v12, -1, -1);
    MEMORY[0x22AA9A450](v11, -1, -1);

    (*(v7 + 8))(v22, v8);
  }

  else
  {
    v17 = v0[108];
    v18 = v0[107];
    v19 = v0[106];

    (*(v18 + 8))(v17, v19);
  }

  sub_227145EAC();
  v0[116] = swift_allocError();
  *v20 = 0;
  swift_willThrow();

  return MEMORY[0x282200920](v0 + 2, v0 + 95, sub_2273CEEA8, v0 + 90);
}

uint64_t sub_2273CF184(uint64_t a1, uint64_t a2)
{
  v3[105] = v2;
  v3[104] = a2;
  v3[103] = a1;
  v4 = sub_22766B390();
  v3[106] = v4;
  v5 = *(v4 - 8);
  v3[107] = v5;
  v6 = *(v5 + 64) + 15;
  v3[108] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2273CF24C, 0, 0);
}

uint64_t sub_2273CF24C()
{
  v1 = *(v0 + 840);
  v2 = swift_allocObject();
  *(v0 + 872) = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9520, &unk_227674410);
  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 16, v0 + 760, sub_2273CF318, v0 + 656);
}

uint64_t sub_2273CF318()
{
  *(v1 + 880) = v0;
  if (v0)
  {
    v2 = sub_2273CF9FC;
  }

  else
  {
    v2 = sub_2273CF34C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2273CF34C()
{
  v1 = v0[104];
  v2 = v0[103];
  v3 = v0[95];
  swift_unknownObjectRetain();
  v4 = sub_22766BFD0();
  v5 = [v3 stringForKey_];
  swift_unknownObjectRelease();

  v6 = [v5 valuePromise];
  v0[111] = v6;

  v7 = swift_task_alloc();
  v0[112] = v7;
  *(v7 + 16) = v6;
  v8 = *(MEMORY[0x277D85A40] + 4);
  v9 = swift_task_alloc();
  v0[113] = v9;
  v10 = sub_226E99364(0, &qword_281398A00, 0x277CCACA8);
  *v9 = v0;
  v9[1] = sub_2273CF4C8;

  return MEMORY[0x2822008A0](v0 + 102, 0, 0, 0xD000000000000013, 0x8000000227697E90, sub_2273D111C, v7, v10);
}

uint64_t sub_2273CF4C8()
{
  v2 = *v1;
  v3 = *(*v1 + 904);
  v7 = *v1;
  *(*v1 + 912) = v0;

  if (v0)
  {
    v4 = sub_2273CF70C;
  }

  else
  {
    v5 = *(v2 + 896);

    v4 = sub_2273CF5E4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2273CF5E4()
{
  v1 = *(v0 + 816);
  v2 = sub_22766C000();
  v4 = v3;

  *(v0 + 920) = v2;
  *(v0 + 928) = v4;

  return MEMORY[0x282200920](v0 + 16, v0 + 760, sub_2273CF678, v0 + 768);
}

uint64_t sub_2273CF694()
{
  v1 = v0[109];
  v2 = v0[108];

  v3 = v0[1];
  v4 = v0[116];
  v5 = v0[115];

  return v3(v5, v4);
}

uint64_t sub_2273CF70C()
{
  v25 = v0;
  v1 = *(v0 + 896);

  v2 = *(v0 + 912);
  v3 = *(v0 + 864);
  v4 = *(v0 + 832);
  sub_22766A690();

  v5 = v2;
  v6 = sub_22766B380();
  v7 = sub_22766C890();

  if (os_log_type_enabled(v6, v7))
  {
    v23 = *(v0 + 864);
    v8 = *(v0 + 856);
    v9 = *(v0 + 848);
    v10 = *(v0 + 832);
    v11 = *(v0 + 824);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24[0] = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_226E97AE8(v11, v10, v24);
    *(v12 + 12) = 2082;
    swift_getErrorValue();
    v14 = *(v0 + 696);
    v15 = MEMORY[0x22AA995D0](*(v0 + 704), *(v0 + 712));
    v17 = sub_226E97AE8(v15, v16, v24);

    *(v12 + 14) = v17;
    _os_log_impl(&dword_226E8E000, v6, v7, "String value couldn't be loaded from the bag for key %s: %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v13, -1, -1);
    MEMORY[0x22AA9A450](v12, -1, -1);

    (*(v8 + 8))(v23, v9);
  }

  else
  {
    v18 = *(v0 + 864);
    v19 = *(v0 + 856);
    v20 = *(v0 + 848);

    (*(v19 + 8))(v18, v20);
  }

  sub_227145EAC();
  *(v0 + 936) = swift_allocError();
  *v21 = 0;
  swift_willThrow();

  return MEMORY[0x282200920](v0 + 16, v0 + 760, sub_2273CF970, v0 + 720);
}

uint64_t sub_2273CF98C()
{
  v1 = v0[109];
  v2 = v0[108];

  v3 = v0[1];
  v4 = v0[117];

  return v3();
}

uint64_t sub_2273CF9FC()
{
  v24 = v0;
  v1 = v0[110];
  v2 = v0[108];
  v3 = v0[104];
  sub_22766A690();

  v4 = v1;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v22 = v0[108];
    v7 = v0[107];
    v8 = v0[106];
    v9 = v0[104];
    v10 = v0[103];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_226E97AE8(v10, v9, v23);
    *(v11 + 12) = 2082;
    swift_getErrorValue();
    v13 = v0[87];
    v14 = MEMORY[0x22AA995D0](v0[88], v0[89]);
    v16 = sub_226E97AE8(v14, v15, v23);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_226E8E000, v5, v6, "String value couldn't be loaded from the bag for key %s: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v12, -1, -1);
    MEMORY[0x22AA9A450](v11, -1, -1);

    (*(v7 + 8))(v22, v8);
  }

  else
  {
    v17 = v0[108];
    v18 = v0[107];
    v19 = v0[106];

    (*(v18 + 8))(v17, v19);
  }

  sub_227145EAC();
  v0[117] = swift_allocError();
  *v20 = 0;
  swift_willThrow();

  return MEMORY[0x282200920](v0 + 2, v0 + 95, sub_2273CF970, v0 + 90);
}

uint64_t sub_2273CFC4C(char a1)
{
  *(v2 + 1352) = v1;
  *(v2 + 1416) = a1;
  return MEMORY[0x2822009F8](sub_2273CFC70, 0, 0);
}

uint64_t sub_2273CFC70()
{
  v1 = *(v0 + 1352);
  v2 = swift_allocObject();
  *(v0 + 1360) = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9520, &unk_227674410);
  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 16, v0 + 1336, sub_2273CFD3C, v0 + 656);
}

uint64_t sub_2273CFD3C()
{
  *(v1 + 1368) = v0;
  if (v0)
  {
    return MEMORY[0x282200920](v1 + 16, v1 + 1336, sub_2273D0080, v1 + 656);
  }

  else
  {
    return MEMORY[0x2822009F8](sub_2273CFD80, 0, 0);
  }
}

uint64_t sub_2273CFD80()
{
  v1 = *(v0 + 1416);
  v2 = [objc_allocWithZone(MEMORY[0x277CEE6D8]) initWithBag_];
  *(v0 + 1376) = v2;
  [v2 setRequestEncoding_];
  if (v1)
  {
    *(v0 + 1400) = 0u;

    return MEMORY[0x282200920](v0 + 16, v0 + 1336, sub_2273CFFE8, v0 + 656);
  }

  else
  {
    v3 = *(v0 + 1352);
    v4 = swift_allocObject();
    *(v0 + 1384) = v4;
    *(v4 + 16) = v3;
    v5 = v3;
    sub_226E99364(0, &qword_2813989F0, 0x277CB8F30);
    swift_asyncLet_begin();

    return MEMORY[0x282200930](v0 + 656, v0 + 1344, sub_2273CFED4, v0 + 1296);
  }
}

uint64_t sub_2273CFED4()
{
  *(v1 + 1392) = v0;
  if (v0)
  {
    return MEMORY[0x282200920](v1 + 656, v1 + 1344, sub_2273D010C, v1 + 1296);
  }

  else
  {
    return MEMORY[0x2822009F8](sub_2273CFF18, 0, 0);
  }
}

uint64_t sub_2273CFF18()
{
  [*(v0 + 1376) setAccount_];

  return MEMORY[0x282200920](v0 + 656, v0 + 1344, sub_2273CFF90, v0 + 1296);
}

uint64_t sub_2273CFFAC()
{
  v0[176] = v0[173];
  v0[175] = &unk_227684A40;
  return MEMORY[0x282200920](v0 + 2, v0 + 167, sub_2273CFFE8, v0 + 82);
}

uint64_t sub_2273D0004()
{
  v1 = v0[176];
  v2 = v0[175];
  v3 = v0[170];

  sub_226EA9E3C(v2);
  v4 = v0[1];
  v5 = v0[172];

  return v4(v5);
}

uint64_t sub_2273D009C()
{
  v1 = v0[171];
  v2 = v0[170];

  sub_226EA9E3C(0);
  v3 = v0[1];

  return v3();
}

uint64_t sub_2273D0128()
{

  return MEMORY[0x282200920](v0 + 16, v0 + 1336, sub_2273D0194, v0 + 656);
}

uint64_t sub_2273D01B0()
{
  v1 = v0[174];
  v2 = v0[173];
  v3 = v0[170];

  sub_226EA9E3C(&unk_227684A40);
  v4 = v0[1];

  return v4();
}

uint64_t sub_2273D0234(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2273D0254, 0, 0);
}

uint64_t sub_2273D0254()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC15SeymourServices21AMSRequestBagConsumer_bagConsumer);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_226FCECEC;

  return sub_226EA0808();
}

uint64_t sub_2273D02F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2273D0310, 0, 0);
}

uint64_t sub_2273D0310()
{
  v1 = (*(v0 + 24) + OBJC_IVAR____TtC15SeymourServices21AMSRequestBagConsumer_accountProvider);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v3);
  v4 = *(MEMORY[0x277D4FAD8] + 4);
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_226FCECEC;

  return MEMORY[0x2821AFC58](v3, v2);
}

uint64_t sub_2273D0484(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2273D04A4, 0, 0);
}

uint64_t sub_2273D04A4()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC15SeymourServices21AMSRequestBagConsumer_bagConsumer);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_226FCADF8;

  return sub_226EA0808();
}

uint64_t sub_2273D0540(void *a1, void *a2, uint64_t (*a3)(void, void))
{
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v11 = a1;
  v12 = a2;
  v13 = sub_22766B380();
  v14 = sub_22766C8B0();

  if (os_log_type_enabled(v13, v14))
  {
    v37 = v14;
    v38 = v13;
    v39 = v7;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v45 = v36;
    *v15 = 138543618;
    *(v15 + 4) = v11;
    v35 = v16;
    *v16 = a1;
    *(v15 + 12) = 2082;
    if (a2)
    {
      swift_getErrorValue();
      v34[1] = v40;
      v17 = a3;
      v19 = v41;
      v18 = v42;
      v20 = v11;
      v21 = v19;
      a3 = v17;
      v22 = MEMORY[0x22AA995D0](v21, v18);
      v24 = v23;
    }

    else
    {
      v25 = v11;
      v22 = 0;
      v24 = 0;
    }

    v43 = v22;
    v44 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v26 = sub_22766CB80();
    v28 = v27;

    v29 = sub_226E97AE8(v26, v28, &v45);

    *(v15 + 14) = v29;
    v30 = v38;
    _os_log_impl(&dword_226E8E000, v38, v37, "Authenticate - Result: %{public}@ Error: %{public}s", v15, 0x16u);
    v31 = v35;
    sub_226F2534C(v35);
    MEMORY[0x22AA9A450](v31, -1, -1);
    v32 = v36;
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x22AA9A450](v32, -1, -1);
    MEMORY[0x22AA9A450](v15, -1, -1);

    (*(v39 + 8))(v10, v6);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  return a3(a1, a2);
}

uint64_t sub_2273D0900(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E93028;

  return sub_2273D0234(a1, v4);
}

void sub_2273D09A0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD380, &qword_227684A18);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_2273D173C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226EA24D4;
  aBlock[3] = &block_descriptor_45;
  v11 = _Block_copy(aBlock);

  [a2 addFinishBlock_];
  _Block_release(v11);
}

void sub_2273D0B50(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD370, &qword_227684A08);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_2273D1140;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226EA24D4;
  aBlock[3] = &block_descriptor_37_0;
  v11 = _Block_copy(aBlock);

  [a2 addFinishBlock_];
  _Block_release(v11);
}

void sub_2273D0D00(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD358, &qword_2276849D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_2273D1068;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226EA24D4;
  aBlock[3] = &block_descriptor_30;
  v11 = _Block_copy(aBlock);

  [a2 addFinishBlock_];
  _Block_release(v11);
}

void sub_2273D0EB0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD368, &qword_2276849F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_2273D1124;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226EA24D4;
  aBlock[3] = &block_descriptor_27;
  v11 = _Block_copy(aBlock);

  [a2 addFinishBlock_];
  _Block_release(v11);
}

uint64_t sub_2273D107C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E92F34;

  return sub_2273D0484(a1, v4);
}

uint64_t sub_2273D1154(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = a5;
  *(v5 + 136) = a3;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  v6 = sub_22766B390();
  *(v5 + 88) = v6;
  v7 = *(v6 - 8);
  *(v5 + 96) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2273D121C, 0, 0);
}

uint64_t sub_2273D121C()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[14] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[15] = v4;
  v5 = sub_226E99364(0, &qword_281398B38, 0x277CEE6D0);
  *v4 = v0;
  v4[1] = sub_2273D1328;

  return MEMORY[0x2822008A0](v0 + 5, 0, 0, 0xD000000000000013, 0x8000000227697E90, sub_2273D1734, v2, v5);
}

uint64_t sub_2273D1328()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_2273D1528;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_2273D1444;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2273D1444()
{
  v1 = *(v0 + 40);
  if ((*(v0 + 136) & 1) == 0)
  {
    [*(v0 + 40) setNetworkServiceType_];
  }

  if (*(v0 + 80))
  {
    v2 = *(v0 + 72);
    v3 = sub_22766BFD0();
    v4 = sub_22766BFD0();
    [v1 setValue:v3 forHTTPHeaderField:v4];
  }

  v5 = *(v0 + 104);

  v6 = *(v0 + 8);

  return v6(v1);
}

uint64_t sub_2273D1528()
{
  v26 = v0;
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];

  sub_22766A6C0();
  v4 = v1;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[16];
    v9 = v0[12];
    v8 = v0[13];
    v10 = v0[11];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136446210;
    swift_getErrorValue();
    v13 = v0[2];
    v14 = MEMORY[0x22AA995D0](v0[3], v0[4]);
    v16 = sub_226E97AE8(v14, v15, &v25);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_226E8E000, v5, v6, "Request couldn't be encoded: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA9A450](v12, -1, -1);
    MEMORY[0x22AA9A450](v11, -1, -1);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[11];

    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[16];
  v21 = v0[13];
  sub_227145EAC();
  swift_allocError();
  *v22 = 1;
  swift_willThrow();

  v23 = v0[1];

  return v23();
}

uint64_t sub_2273D1750(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E93028;

  return sub_2273D0234(a1, v4);
}

uint64_t sub_2273D17F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E93028;

  return sub_2273D02F0(a1, v4);
}

void sub_2273D1898(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v11 = sub_22766B380();
  v12 = sub_22766C8B0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_226E8E000, v11, v12, "Authenticate - Attempting to authenticate", v13, 2u);
    MEMORY[0x22AA9A450](v13, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v14 = [a1 options];
  if (!v14)
  {
    v14 = [objc_allocWithZone(MEMORY[0x277CEE3D8]) init];
  }

  v15 = v14;
  [v14 setAuthenticationType_];
  v16 = sub_22766BFD0();
  [v15 setDebugReason_];

  [a1 setOptions_];
  v17 = [objc_allocWithZone(MEMORY[0x277CEE3E8]) initWithRequest_];
  v18 = [v17 performAuthentication];
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  aBlock[4] = sub_2273D1B70;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9F1D0;
  aBlock[3] = &block_descriptor_83;
  v20 = _Block_copy(aBlock);

  [v18 addFinishBlock_];
  _Block_release(v20);
}

void *sub_2273D1B98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD390, &qword_227684A58);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v29 - v4;
  v6 = sub_227663590();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2276640B0();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v35 = v29 - v17;
  v18 = *(a1 + 16);
  if (!v18)
  {
    return MEMORY[0x277D84F90];
  }

  v19 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v20 = *(v16 + 72);
  v33 = (v7 + 56);
  v34 = v20;
  v21 = (v7 + 32);
  v32 = (v7 + 48);
  v22 = MEMORY[0x277D84F90];
  v30 = v10;
  v31 = v7;
  v29[1] = v11;
  do
  {
    v23 = v35;
    sub_227141704(v19, v35);
    sub_2273D1F28(v23, v15);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*v21)(v5, v15, v6);
      (*v33)(v5, 0, 1, v6);
    }

    else
    {
      (*v33)(v5, 1, 1, v6);
      sub_227141768(v15);
    }

    if ((*v32)(v5, 1, v6) == 1)
    {
      sub_2273D1F8C(v5);
    }

    else
    {
      v24 = *v21;
      (*v21)(v10, v5, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_2273A6CEC(0, v22[2] + 1, 1, v22);
      }

      v26 = v22[2];
      v25 = v22[3];
      if (v26 >= v25 >> 1)
      {
        v22 = sub_2273A6CEC(v25 > 1, v26 + 1, 1, v22);
      }

      v22[2] = v26 + 1;
      v27 = v22 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v26;
      v10 = v30;
      v24(v27, v30, v6);
    }

    v19 += v34;
    --v18;
  }

  while (v18);
  return v22;
}

uint64_t sub_2273D1F28(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276640B0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2273D1F8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD390, &qword_227684A58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2273D2018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v111 = a7;
  v108 = a5;
  v109 = a6;
  v116 = a3;
  v119 = a2;
  v120 = a8;
  v10 = sub_2276665E0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1B0, &unk_2276775B0);
  v114 = *(v15 - 8);
  v115 = v15;
  v16 = *(v114 + 64);
  MEMORY[0x28223BE20](v15);
  v112 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v113 = &v107 - v18;
  v19 = sub_227662750();
  v117 = *(v19 - 8);
  v118 = v19;
  v20 = *(v117 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v107 - v28;
  v30 = sub_227664D30();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v107 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2273D2AF4(a1, v33);
  if ((*(v11 + 48))(v33, 1, v10) != 1)
  {
    v113 = v14;
    v114 = v11;
    v37 = *(v11 + 32);
    v115 = v10;
    v37(v14, v33, v10);
    v38 = sub_2276636B0();
    v121 = sub_227666C60();
    v122 = v39 & 1;
    LOBYTE(v123) = 1;
    sub_226FFD9B0();
    sub_226FFDA04();
    v40 = sub_227663B30();
    sub_226E93170(v119, v26, &qword_27D7B8428, &qword_227675CB0);
    v41 = sub_227665AD0();
    v42 = *(v41 - 8);
    if ((*(v42 + 48))(v26, 1, v41) == 1)
    {
      sub_226E97D1C(v26, &qword_27D7B8428, &qword_227675CB0);
      v43 = 0;
    }

    else
    {
      sub_227662740();
      v43 = sub_227665AA0();
      (*(v117 + 8))(v22, v118);
      (*(v42 + 8))(v26, v41);
    }

    v62 = sub_22714972C(MEMORY[0x277D84F90]);
    v64 = v113;
    v63 = v114;
    if (v43 & 1 | ((v40 & 1) == 0) | v38 & 1)
    {
      v65 = sub_227666580();
      v67 = v115;
      if (v66)
      {
        v68 = v65;
        v69 = v66;
        v70 = sub_2276647F0();
        v72 = v71;
        v123 = v68;
        v124 = v69;
        sub_22766CDA0();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v123 = v62;
        sub_22736A5BC(&v121, v70, v72, isUniquelyReferenced_nonNull_native);

        v62 = v123;
      }

      v74 = sub_227666550();
      if (v75)
      {
        v76 = v74;
        v77 = v75;
        v78 = sub_2276647D0();
        v80 = v79;
        v123 = v76;
        v124 = v77;
        sub_22766CDA0();
        v81 = swift_isUniquelyReferenced_nonNull_native();
        v123 = v62;
        sub_22736A5BC(&v121, v78, v80, v81);

        v82 = v123;
        v83 = sub_227664810();
        v85 = v84;
        v123 = sub_227666560();
        sub_22766CDA0();
        v86 = swift_isUniquelyReferenced_nonNull_native();
        v123 = v82;
        sub_22736A5BC(&v121, v83, v85, v86);

        v62 = v123;
      }

      v87 = sub_227666570();
      if (v88)
      {
        v89 = v87;
        v90 = v88;
        v91 = sub_227664820();
        v93 = v92;
        v123 = v89;
        v124 = v90;
        sub_22766CDA0();
        v94 = swift_isUniquelyReferenced_nonNull_native();
        v123 = v62;
        sub_22736A5BC(&v121, v91, v93, v94);

        v62 = v123;
      }

      v95 = sub_227666590();
      if (!v96)
      {
        goto LABEL_22;
      }

      v97 = v95;
      v98 = v96;
      v99 = sub_227664800();
    }

    else
    {
      v101 = sub_227666550();
      v67 = v115;
      if (!v102)
      {
LABEL_22:
        *(swift_allocObject() + 16) = v62;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC940, &qword_22767F830);
        sub_227669280();
        return (*(v63 + 8))(v64, v67);
      }

      v97 = v101;
      v98 = v102;
      v99 = sub_227664780();
    }

    v103 = v99;
    v104 = v100;
    v123 = v97;
    v124 = v98;
    sub_22766CDA0();
    v105 = swift_isUniquelyReferenced_nonNull_native();
    v123 = v62;
    sub_22736A5BC(&v121, v103, v104, v105);

    v62 = v123;
    goto LABEL_22;
  }

  v34 = a4;
  sub_226E93170(v119, v29, &qword_27D7B8428, &qword_227675CB0);
  v35 = sub_227665AD0();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v29, 1, v35) == 1)
  {
    sub_226E97D1C(v29, &qword_27D7B8428, &qword_227675CB0);
  }

  else
  {
    sub_227662740();
    v44 = sub_227665AA0();
    (*(v117 + 8))(v22, v118);
    (*(v36 + 8))(v29, v35);
    if (v44)
    {
LABEL_8:
      v45 = v110;
      v46 = v111;
      v47 = v113;
      v48 = v34;
      v49 = v109;
      (*(v111 + 40))(v48, v108, v109, v111);
      v50 = sub_2273D29D4(v45, v49, v46);
      v52 = v51;
      v53 = swift_allocObject();
      *(v53 + 16) = v50;
      *(v53 + 24) = v52;
      v54 = swift_allocObject();
      *(v54 + 16) = sub_2273F40C4;
      *(v54 + 24) = v53;
      v56 = v114;
      v55 = v115;
      v57 = v112;
      (*(v114 + 16))(v112, v47, v115);
      v58 = (*(v56 + 80) + 16) & ~*(v56 + 80);
      v59 = swift_allocObject();
      (*(v56 + 32))(v59 + v58, v57, v55);
      v60 = (v59 + ((v16 + v58 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v60 = sub_2273F4100;
      v60[1] = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC940, &qword_22767F830);
      sub_227669270();
      return (*(v56 + 8))(v47, v55);
    }
  }

  if (sub_2276636B0())
  {
    goto LABEL_8;
  }

  v106 = sub_22714972C(MEMORY[0x277D84F90]);
  *(swift_allocObject() + 16) = v106;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC940, &qword_22767F830);
  return sub_227669280();
}

unint64_t (*sub_2273D29D4(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return sub_2273F4264;
}

uint64_t sub_2273D2AF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_227664D30();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2273D8890(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD630, &unk_227684CC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v24[-1] - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8400, &unk_227670840);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v24[-1] - v16;
  sub_226E93170(a1, v25, &qword_27D7BA2B8, &qword_227678B38);
  if (v26)
  {
    v18 = *&v25[0];
    *v12 = *&v25[0];
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    a4(v12);

    return sub_226E97D1C(v12, &unk_27D7BD630, &unk_227684CC0);
  }

  else
  {
    sub_226E92AB8(v25, v24);
    a2(v24);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = a4;
    *(v22 + 24) = a5;

    v21(sub_226E93814, v22);

    (*(v14 + 8))(v17, v13);
    return __swift_destroy_boxed_opaque_existential_0(v24);
  }
}

uint64_t sub_2273D8AD8(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD610, &unk_227684CA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C60, &unk_227675C98);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &unk_27D7BD610, &unk_227684CA0);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E937DC, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_2273D8CEC(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v25 = a2;
  v26 = a4;
  v24[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v24 - v10;
  v12 = type metadata accessor for MetricServiceSubscriptionState();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD630, &unk_227684CC0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (v24 - v18);
  sub_226E93170(a1, v24 - v18, &unk_27D7BD630, &unk_227684CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v19;
    v20 = v27;
    v28 = 1;
    v21 = v27;
    v26(&v27);
  }

  else
  {
    sub_2273F60B0(v19, v15, type metadata accessor for MetricServiceSubscriptionState);
    v25(v15);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v26;
    *(v23 + 24) = a5;

    v22(sub_226EB4544, v23);

    (*(v8 + 8))(v11, v7);
    sub_2273F6118(v15, type metadata accessor for MetricServiceSubscriptionState);
  }
}

void sub_2273D8F90(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_2276666A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD560, &unk_227684C50);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_226E93170(a1, v23 - v17, &qword_27D7BD560, &unk_227684C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_226EB4544, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

void sub_2273D9270(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_227666C80();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2D0, &qword_227678B48);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_226E93170(a1, v23 - v17, &qword_27D7BA2D0, &qword_227678B48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_226EB4544, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

void sub_2273D9550(void *a1, char a2, void (*a3)(char *), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  if (a2)
  {
    v21 = a1;
    v22 = 1;
    v16 = a1;
    a5(&v21);
    sub_226EB4548(a1, 1);
  }

  else
  {
    v20 = a1;
    a3(&v20);
    v17 = sub_227669290();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_226EB4544, v18);

    (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_2273D96F8(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v28[1] = a3;
  v29 = a2;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD630, &unk_227684CC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v28 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8400, &unk_227670840);
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - v11;
  v13 = sub_227665AD0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B28, &unk_227684550);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (v28 - v20);
  sub_226E93170(v32, v28 - v20, &qword_27D7B9B28, &unk_227684550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    *v8 = *v21;
    swift_storeEnumTagMultiPayload();
    v23 = v22;
    v33(v8);

    return sub_226E97D1C(v8, &unk_27D7BD630, &unk_227684CC0);
  }

  else
  {
    (*(v14 + 32))(v17, v21, v13);
    v29(v17);
    v25 = v31;
    v26 = sub_227669290();
    v27 = swift_allocObject();
    *(v27 + 16) = v33;
    *(v27 + 24) = v34;

    v26(sub_226E937DC, v27);

    (*(v30 + 8))(v12, v25);
    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_2273D9A44(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B28, &unk_227684550);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v24[-1] - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v24[-1] - v16;
  sub_226E93170(a1, v25, &qword_27D7BA2B8, &qword_227678B38);
  if (v26)
  {
    v18 = *&v25[0];
    *v12 = *&v25[0];
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    a4(v12);

    return sub_226E97D1C(v12, &qword_27D7B9B28, &unk_227684550);
  }

  else
  {
    sub_226E92AB8(v25, v24);
    a2(v24);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = a4;
    *(v22 + 24) = a5;

    v21(sub_226E937DC, v22);

    (*(v14 + 8))(v17, v13);
    return __swift_destroy_boxed_opaque_existential_0(v24);
  }
}

uint64_t sub_2273D9C8C(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA330, &qword_227678B70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA328, &unk_227684D30);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &qword_27D7BA330, &qword_227678B70);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_2273D9EA0(void *a1, uint64_t a2, char a3, void (*a4)(void *), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v24 = a5;
  v25 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA330, &qword_227678B70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v24 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA328, &unk_227684D30);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - v19;
  if (a3)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v21 = a1;
    v25(v15);
    sub_226E97D1C(v15, &qword_27D7BA330, &qword_227678B70);
  }

  else
  {
    v26[0] = a1;
    v26[1] = a2;

    a4(v26);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a7;

    v22(sub_226E937DC, v23);

    (*(v17 + 8))(v20, v16);
    sub_226EC33EC(a1, a2, 0);
  }
}

uint64_t sub_2273DA0D8(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6C0, &unk_22768B740);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA310, &unk_22767E470);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &qword_27D7BD6C0, &unk_22768B740);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_2273DA2EC(void *a1, uint64_t a2, char a3, void (*a4)(void *), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v24 = a5;
  v25 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6C0, &unk_22768B740);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v24 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA310, &unk_22767E470);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - v19;
  if (a3)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v21 = a1;
    v25(v15);
    sub_226E97D1C(v15, &qword_27D7BD6C0, &unk_22768B740);
  }

  else
  {
    v26[0] = a1;
    v26[1] = a2;

    a4(v26);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a7;

    v22(sub_226E937DC, v23);

    (*(v17 + 8))(v20, v16);
    sub_226EC33EC(a1, a2, 0);
  }
}

void sub_2273DA524(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_227663480();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD9C0, &qword_227684EF8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_226E93170(a1, v23 - v17, &unk_27D7BD9C0, &qword_227684EF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_226EB4544, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_2273DA804(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v32 = a4;
  v33 = a5;
  v28 = a3;
  v29 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85B8, &unk_227671050);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = sub_227663480();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD9C0, &qword_227684EF8);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = (&v28 - v20);
  sub_226E93170(a1, &v28 - v20, &unk_27D7BD9C0, &qword_227684EF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    *v19 = *v21;
    swift_storeEnumTagMultiPayload();
    v23 = v22;
    v32(v19);

    return sub_226E97D1C(v19, &unk_27D7BD9C0, &qword_227684EF8);
  }

  else
  {
    (*(v11 + 32))(v14, v21, v10);
    v29(v14);
    v25 = v31;
    v26 = sub_227669290();
    v27 = swift_allocObject();
    *(v27 + 16) = v32;
    *(v27 + 24) = v33;

    v26(sub_226E93814, v27);

    (*(v30 + 8))(v9, v25);
    return (*(v11 + 8))(v14, v10);
  }
}

void sub_2273DAB20(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - v18;
  v26 = a1;
  if (a2)
  {
    v27 = 1;
    v20 = a1;
    a5(&v26);
    v21 = MEMORY[0x277D84FB8];
    v22 = a1;
    v23 = 1;
  }

  else
  {

    a3(&v26);
    v24 = sub_227669290();
    v25 = swift_allocObject();
    *(v25 + 16) = a5;
    *(v25 + 24) = a6;

    v24(a10, v25);

    (*(v16 + 8))(v19, v15);
    v21 = MEMORY[0x277D84FB8];
    v22 = a1;
    v23 = 0;
  }

  sub_226EB4668(v22, v23, v21);
}

void sub_2273DACE8(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_227663180();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD9A0, &qword_227684EE8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_226E93170(a1, v23 - v17, &unk_27D7BD9A0, &qword_227684EE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_226EB4544, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_2273DAFC8(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6A0, &qword_227684D08);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C50, &qword_227684D00);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &qword_27D7BD6A0, &qword_227684D08);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_2273DB1DC(void *a1, uint64_t a2, char a3, void (*a4)(void *), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v24 = a5;
  v25 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6A0, &qword_227684D08);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v24 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C50, &qword_227684D00);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - v19;
  if (a3)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v21 = a1;
    v25(v15);
    sub_226E97D1C(v15, &qword_27D7BD6A0, &qword_227684D08);
  }

  else
  {
    v26[0] = a1;
    v26[1] = a2;

    a4(v26);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a7;

    v22(sub_226E937DC, v23);

    (*(v17 + 8))(v20, v16);
    sub_226EC33EC(a1, a2, 0);
  }
}

void sub_2273DB414(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_227664700();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6A0, &qword_227684D08);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_226E93170(a1, v23 - v17, &qword_27D7BD6A0, &qword_227684D08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_226EB4544, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

void sub_2273DB6F4(void *a1, char a2, void (*a3)(void *), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20[-1] - v14;
  if (a2)
  {
    v20[0] = a1;
    v20[1] = 0;
    v21 = 1;
    v16 = a1;
    a5(v20);
    sub_226EB4548(a1, 1);
  }

  else
  {
    LOBYTE(v20[0]) = a1;
    a3(v20);
    v17 = sub_227669290();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_226EC29B8, v18);

    (*(v12 + 8))(v15, v11);
  }
}

void sub_2273DB89C(void *a1, uint64_t a2, char a3, void (*a4)(void *), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v25[-1] - v16;
  v25[0] = a1;
  v25[1] = a2;
  if (a3)
  {
    v26 = 1;
    v18 = a1;
    a6(v25);
    v19 = a1;
    v20 = a2;
    v21 = 1;
  }

  else
  {

    a4(v25);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = a6;
    *(v23 + 24) = a7;

    v22(sub_226EC29B8, v23);

    (*(v14 + 8))(v17, v13);
    v19 = a1;
    v20 = a2;
    v21 = 0;
  }

  sub_226EC33EC(v19, v20, v21);
}

uint64_t sub_2273DBA60(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD790, &unk_227671C90);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6C8, &unk_227684DC0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &unk_27D7BD790, &unk_227671C90);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_2273DBC74(void *a1, uint64_t a2, char a3, void (*a4)(void *), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v24 = a5;
  v25 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD790, &unk_227671C90);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v24 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6C8, &unk_227684DC0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - v19;
  if (a3)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v21 = a1;
    v25(v15);
    sub_226E97D1C(v15, &unk_27D7BD790, &unk_227671C90);
  }

  else
  {
    v26[0] = a1;
    v26[1] = a2;

    a4(v26);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a7;

    v22(sub_226E937DC, v23);

    (*(v17 + 8))(v20, v16);
    sub_226EC33EC(a1, a2, 0);
  }
}

uint64_t sub_2273DBEAC(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD780, &qword_227684DB8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6C0, &unk_22767E4C0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &unk_27D7BD780, &qword_227684DB8);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_2273DC0C0(void *a1, uint64_t a2, char a3, void (*a4)(void *), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v24 = a5;
  v25 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD780, &qword_227684DB8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v24 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6C0, &unk_22767E4C0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - v19;
  if (a3)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v21 = a1;
    v25(v15);
    sub_226E97D1C(v15, &unk_27D7BD780, &qword_227684DB8);
  }

  else
  {
    v26[0] = a1;
    v26[1] = a2;

    a4(v26);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a7;

    v22(sub_226E937DC, v23);

    (*(v17 + 8))(v20, v16);
    sub_226EC33EC(a1, a2, 0);
  }
}

uint64_t sub_2273DC2F8(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD770, &qword_22768B7A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6B8, &qword_227684DB0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &unk_27D7BD770, &qword_22768B7A0);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_2273DC50C(void *a1, uint64_t a2, char a3, void (*a4)(void *), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v24 = a5;
  v25 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD770, &qword_22768B7A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v24 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6B8, &qword_227684DB0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - v19;
  if (a3)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v21 = a1;
    v25(v15);
    sub_226E97D1C(v15, &unk_27D7BD770, &qword_22768B7A0);
  }

  else
  {
    v26[0] = a1;
    v26[1] = a2;

    a4(v26);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a7;

    v22(sub_226E937DC, v23);

    (*(v17 + 8))(v20, v16);
    sub_226EC33EC(a1, a2, 0);
  }
}

uint64_t sub_2273DC744(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD760, &qword_227684DA8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6B0, &unk_22767E4B0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &unk_27D7BD760, &qword_227684DA8);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_2273DC958(void *a1, uint64_t a2, char a3, void (*a4)(void *), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v24 = a5;
  v25 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD760, &qword_227684DA8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v24 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6B0, &unk_22767E4B0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - v19;
  if (a3)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v21 = a1;
    v25(v15);
    sub_226E97D1C(v15, &unk_27D7BD760, &qword_227684DA8);
  }

  else
  {
    v26[0] = a1;
    v26[1] = a2;

    a4(v26);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a7;

    v22(sub_226E937DC, v23);

    (*(v17 + 8))(v20, v16);
    sub_226EC33EC(a1, a2, 0);
  }
}

uint64_t sub_2273DCB90(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD740, &unk_22768B770);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA360, &qword_2276720F0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &unk_27D7BD740, &unk_22768B770);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_2273DCDA4(void *a1, uint64_t a2, char a3, void (*a4)(void *), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v24 = a5;
  v25 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD740, &unk_22768B770);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v24 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA360, &qword_2276720F0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - v19;
  if (a3)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v21 = a1;
    v25(v15);
    sub_226E97D1C(v15, &unk_27D7BD740, &unk_22768B770);
  }

  else
  {
    v26[0] = a1;
    v26[1] = a2;

    a4(v26);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a7;

    v22(sub_226E937DC, v23);

    (*(v17 + 8))(v20, v16);
    sub_226EC33EC(a1, a2, 0);
  }
}

uint64_t sub_2273DCFDC(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD750, &unk_22767B6B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBA00, &qword_227684DA0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &unk_27D7BD750, &unk_22767B6B0);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_2273DD1F0(void *a1, uint64_t a2, char a3, void (*a4)(void *), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v24 = a5;
  v25 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD750, &unk_22767B6B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v24 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBA00, &qword_227684DA0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - v19;
  if (a3)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v21 = a1;
    v25(v15);
    sub_226E97D1C(v15, &unk_27D7BD750, &unk_22767B6B0);
  }

  else
  {
    v26[0] = a1;
    v26[1] = a2;

    a4(v26);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a7;

    v22(sub_226E937DC, v23);

    (*(v17 + 8))(v20, v16);
    sub_226EC33EC(a1, a2, 0);
  }
}

uint64_t sub_2273DD428(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6A8, &unk_227684D10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6B0, &qword_22767D9D8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &qword_27D7BD6A8, &unk_227684D10);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_2273DD63C(void *a1, uint64_t a2, char a3, void (*a4)(void *), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v24 = a5;
  v25 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6A8, &unk_227684D10);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v24 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6B0, &qword_22767D9D8);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - v19;
  if (a3)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v21 = a1;
    v25(v15);
    sub_226E97D1C(v15, &qword_27D7BD6A8, &unk_227684D10);
  }

  else
  {
    v26[0] = a1;
    v26[1] = a2;

    a4(v26);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a7;

    v22(sub_226E937DC, v23);

    (*(v17 + 8))(v20, v16);
    sub_226EC33EC(a1, a2, 0);
  }
}

void sub_2273DD874(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  sub_226E93170(a1, v21, &qword_27D7BA300, &unk_227684C90);
  if (v22)
  {
    v14 = *&v21[0];
    v19 = *&v21[0];
    v20 = 1;
    v15 = *&v21[0];
    a4(&v19);
  }

  else
  {
    sub_226E92AB8(v21, &v19);
    a2(&v19);
    v16 = sub_227669290();
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;

    v16(sub_226EB4544, v17);

    (*(v10 + 8))(v13, v9);
    __swift_destroy_boxed_opaque_existential_0(&v19);
  }
}

void sub_2273DDA48(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_227665AD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B28, &unk_227684550);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_226E93170(a1, v23 - v17, &qword_27D7B9B28, &unk_227684550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_226EB4544, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

void sub_2273DDD28(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v25 = a2;
  v26 = a4;
  v24[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v24 - v10;
  v12 = type metadata accessor for MetricRecordingContext();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD610, &unk_227684CA0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (v24 - v18);
  sub_226E93170(a1, v24 - v18, &unk_27D7BD610, &unk_227684CA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v19;
    v20 = v27;
    v28 = 1;
    v21 = v27;
    v26(&v27);
  }

  else
  {
    sub_2273F60B0(v19, v15, type metadata accessor for MetricRecordingContext);
    v25(v15);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v26;
    *(v23 + 24) = a5;

    v22(sub_226EB4544, v23);

    (*(v8 + 8))(v11, v7);
    sub_2273F6118(v15, type metadata accessor for MetricRecordingContext);
  }
}

uint64_t sub_2273DDFCC(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v27 = a3;
  v28 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C60, &unk_227675C98);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = type metadata accessor for MetricRecordingContext();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD610, &unk_227684CA0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = (&v27 - v20);
  sub_226E93170(a1, &v27 - v20, &unk_27D7BD610, &unk_227684CA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    *v19 = *v21;
    swift_storeEnumTagMultiPayload();
    v23 = v22;
    v29(v19);

    return sub_226E97D1C(v19, &unk_27D7BD610, &unk_227684CA0);
  }

  else
  {
    sub_2273F60B0(v21, v14, type metadata accessor for MetricRecordingContext);
    v28(v14);
    v25 = sub_227669290();
    v26 = swift_allocObject();
    *(v26 + 16) = v29;
    *(v26 + 24) = v30;

    v25(sub_226E93814, v26);

    (*(v7 + 8))(v10, v6);
    return sub_2273F6118(v14, type metadata accessor for MetricRecordingContext);
  }
}

uint64_t sub_2273DE2A8(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAB8, &qword_22767FE80);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD990, &qword_227679D00);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &qword_27D7BCAB8, &qword_22767FE80);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_2273DE4BC(void *a1, uint64_t a2, char a3, void (*a4)(void **), uint64_t a5, void (*a6)(void **), uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9390, &unk_227677B70);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  v21 = a1;
  if (a3)
  {
    LOBYTE(v22) = 1;
    v18 = a1;
    a6(&v21);
    sub_2273F7F54(a1, a2, 1);
  }

  else
  {
    v22 = a2;

    a4(&v21);
    v19 = sub_227669290();
    v20 = swift_allocObject();
    *(v20 + 16) = a6;
    *(v20 + 24) = a7;

    v19(sub_226E9F880, v20);

    (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_2273DE68C(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v32 = a4;
  v33 = a5;
  v28 = a3;
  v29 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD680, &unk_227680050);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = sub_2276624A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBD48, &qword_22767C010);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = (&v28 - v20);
  sub_226E93170(a1, &v28 - v20, &qword_27D7BBD48, &qword_22767C010);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    *v19 = *v21;
    swift_storeEnumTagMultiPayload();
    v23 = v22;
    v32(v19);

    return sub_226E97D1C(v19, &qword_27D7BBD48, &qword_22767C010);
  }

  else
  {
    (*(v11 + 32))(v14, v21, v10);
    v29(v14);
    v25 = v31;
    v26 = sub_227669290();
    v27 = swift_allocObject();
    *(v27 + 16) = v32;
    *(v27 + 24) = v33;

    v26(sub_226E93814, v27);

    (*(v30 + 8))(v9, v25);
    return (*(v11 + 8))(v14, v10);
  }
}

void sub_2273DE9A8(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9390, &unk_227677B70);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_2276642E0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD448, &unk_22768B800);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_226E93170(a1, v23 - v17, &qword_27D7BD448, &unk_22768B800);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_226E9F880, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

void sub_2273DEC88(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD970, &qword_227673C10);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v19 = a1;
  if (a2)
  {
    v20 = 1;
    v16 = a1;
    a5(&v19);
    sub_226EB4548(a1, 1);
  }

  else
  {
    a3(&v19);
    v17 = sub_227669290();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_226E9F880, v18);

    (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_2273DEE30(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD538, &unk_22768B7F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD530, &unk_227673EB0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &qword_27D7BD538, &unk_22768B7F0);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_2273DF044(void *a1, uint64_t a2, char a3, void (*a4)(void *), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v24 = a5;
  v25 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD538, &unk_22768B7F0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v24 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD530, &unk_227673EB0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - v19;
  if (a3)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v21 = a1;
    v25(v15);
    sub_226E97D1C(v15, &qword_27D7BD538, &unk_22768B7F0);
  }

  else
  {
    v26[0] = a1;
    v26[1] = a2;

    a4(v26);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a7;

    v22(sub_226E937DC, v23);

    (*(v17 + 8))(v20, v16);
    sub_226EC33EC(a1, a2, 0);
  }
}

void sub_2273DF27C(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - v18;
  v26 = a1;
  if (a2)
  {
    v27 = 1;
    v20 = a1;
    a5(&v26);
    v21 = MEMORY[0x277D85028];
    v22 = a1;
    v23 = 1;
  }

  else
  {
    swift_unknownObjectRetain();
    a3(&v26);
    v24 = sub_227669290();
    v25 = swift_allocObject();
    *(v25 + 16) = a5;
    *(v25 + 24) = a6;

    v24(a10, v25);

    (*(v16 + 8))(v19, v15);
    v21 = MEMORY[0x277D85028];
    v22 = a1;
    v23 = 0;
  }

  sub_226EB4668(v22, v23, v21);
}

void sub_2273DF444(void *a1, char a2, void (*a3)(void *), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v23[-1] - v14;
  if (a2)
  {
    v23[0] = a1;
    v23[1] = 0;
    v24 = 1;
    v16 = a1;
    a5(v23);
    v17 = MEMORY[0x277D85028];
    v18 = a1;
    v19 = 1;
  }

  else
  {
    v23[0] = a1;
    swift_unknownObjectRetain();
    a3(v23);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = a5;
    *(v21 + 24) = a6;

    v20(sub_226EC29B8, v21);

    (*(v12 + 8))(v15, v11);
    v17 = MEMORY[0x277D85028];
    v18 = a1;
    v19 = 0;
  }

  sub_226EB4668(v18, v19, v17);
}

void sub_2273DF624(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v22 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9528, &qword_227674710);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v22 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD690, &unk_227674730);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    v22(v13);
    sub_226E97D1C(v13, &qword_27D7B9528, &qword_227674710);
  }

  else
  {
    v23 = a1;
    swift_unknownObjectRetain();
    a3(&v23);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v22;
    *(v21 + 24) = a6;

    v20(sub_226E93814, v21);

    (*(v15 + 8))(v18, v14);
    sub_226EB4668(a1, 0, MEMORY[0x277D85028]);
  }
}

void sub_2273DF864(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_2276658F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9528, &qword_227674710);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_226E93170(a1, v23 - v17, &qword_27D7B9528, &qword_227674710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_226EB4544, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

void sub_2273DFB44(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v20 = a1;
  if (a2)
  {
    v21 = 1;
    v16 = a1;
    a5(&v20);
  }

  else
  {
    v17 = a1;
    a3(&v20);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = a5;
    *(v19 + 24) = a6;

    v18(sub_226EB4544, v19);

    (*(v12 + 8))(v15, v11);
  }

  sub_226EF4F04(a1);
}

uint64_t sub_2273DFCF8(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD650, &qword_227684CF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96C0, &unk_227684560);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &qword_27D7BD650, &qword_227684CF0);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E937DC, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

uint64_t sub_2273DFF0C(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v28[1] = a3;
  v29 = a2;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD650, &qword_227684CF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v28 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96C0, &unk_227684560);
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - v11;
  v13 = sub_2276624A0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBD48, &qword_22767C010);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (v28 - v20);
  sub_226E93170(v32, v28 - v20, &qword_27D7BBD48, &qword_22767C010);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    *v8 = *v21;
    swift_storeEnumTagMultiPayload();
    v23 = v22;
    v33(v8);

    return sub_226E97D1C(v8, &qword_27D7BD650, &qword_227684CF0);
  }

  else
  {
    (*(v14 + 32))(v17, v21, v13);
    v29(v17);
    v25 = v31;
    v26 = sub_227669290();
    v27 = swift_allocObject();
    *(v27 + 16) = v33;
    *(v27 + 24) = v34;

    v26(sub_226E937DC, v27);

    (*(v30 + 8))(v12, v25);
    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_2273E0258(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v28[1] = a3;
  v29 = a2;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96C8, &qword_227674900);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v28 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD660, &qword_22767E5C0);
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - v11;
  v13 = sub_227666130();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD650, &qword_227684CF0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (v28 - v20);
  sub_226E93170(v32, v28 - v20, &qword_27D7BD650, &qword_227684CF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    *v8 = *v21;
    swift_storeEnumTagMultiPayload();
    v23 = v22;
    v33(v8);

    return sub_226E97D1C(v8, &qword_27D7B96C8, &qword_227674900);
  }

  else
  {
    (*(v14 + 32))(v17, v21, v13);
    v29(v17);
    v25 = v31;
    v26 = sub_227669290();
    v27 = swift_allocObject();
    *(v27 + 16) = v33;
    *(v27 + 24) = v34;

    v26(sub_226E93814, v27);

    (*(v30 + 8))(v12, v25);
    return (*(v14 + 8))(v17, v13);
  }
}

void sub_2273E05A4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v25 = a2;
  v26 = a4;
  v24[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v24 - v10;
  v12 = type metadata accessor for AssetLoaderResponse();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (v24 - v18);
  sub_226E93170(a1, v24 - v18, &qword_27D7B9628, &unk_227674860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v19;
    v20 = v27;
    v28 = 1;
    v21 = v27;
    v26(&v27);
  }

  else
  {
    sub_2273F60B0(v19, v15, type metadata accessor for AssetLoaderResponse);
    v25(v15);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v26;
    *(v23 + 24) = a5;

    v22(sub_226EB4544, v23);

    (*(v8 + 8))(v11, v7);
    sub_2273F6118(v15, type metadata accessor for AssetLoaderResponse);
  }
}

uint64_t sub_2273E0848(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v28[1] = a3;
  v29 = a2;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v28 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD3C0, &qword_22767FE60);
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - v11;
  v13 = sub_2276631F0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD658, &unk_227685650);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (v28 - v20);
  sub_226E93170(v32, v28 - v20, &qword_27D7BD658, &unk_227685650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    *v8 = *v21;
    swift_storeEnumTagMultiPayload();
    v23 = v22;
    v33(v8);

    return sub_226E97D1C(v8, &qword_27D7B9628, &unk_227674860);
  }

  else
  {
    (*(v14 + 32))(v17, v21, v13);
    v29(v17);
    v25 = v31;
    v26 = sub_227669290();
    v27 = swift_allocObject();
    *(v27 + 16) = v33;
    *(v27 + 24) = v34;

    v26(sub_226E937DC, v27);

    (*(v30 + 8))(v12, v25);
    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_2273E0B94(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v28[1] = a3;
  v29 = a2;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD658, &unk_227685650);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v28 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9670, qword_2276748A0);
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - v11;
  v13 = sub_227666230();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96C8, &qword_227674900);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (v28 - v20);
  sub_226E93170(v32, v28 - v20, &qword_27D7B96C8, &qword_227674900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    *v8 = *v21;
    swift_storeEnumTagMultiPayload();
    v23 = v22;
    v33(v8);

    return sub_226E97D1C(v8, &qword_27D7BD658, &unk_227685650);
  }

  else
  {
    (*(v14 + 32))(v17, v21, v13);
    v29(v17);
    v25 = v31;
    v26 = sub_227669290();
    v27 = swift_allocObject();
    *(v27 + 16) = v33;
    *(v27 + 24) = v34;

    v26(sub_226E93814, v27);

    (*(v30 + 8))(v12, v25);
    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_2273E0EE0(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD658, &unk_227685650);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9670, qword_2276748A0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &qword_27D7BD658, &unk_227685650);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E937DC, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

uint64_t sub_2273E10F4(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD658, &unk_227685650);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v24[-1] - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9670, qword_2276748A0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v24[-1] - v16;
  sub_226E93170(a1, v25, &unk_27D7BE8D0, &qword_227684CF8);
  if (v26)
  {
    v18 = *&v25[0];
    *v12 = *&v25[0];
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    a4(v12);

    return sub_226E97D1C(v12, &qword_27D7BD658, &unk_227685650);
  }

  else
  {
    sub_226F04970(v25, v24);
    a2(v24);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = a4;
    *(v22 + 24) = a5;

    v21(sub_226E937DC, v22);

    (*(v14 + 8))(v17, v13);
    return __swift_destroy_boxed_opaque_existential_0(v24);
  }
}

void sub_2273E133C(void *a1, char a2, void (*a3)(void *), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD670, &qword_227680080);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21[-1] - v14;
  v21[0] = a1;
  if (a2)
  {
    v22 = 1;
    v16 = a1;
    a5(v21);
    sub_226E97D1C(v21, &unk_27D7BE8D0, &qword_227684CF8);
  }

  else
  {
    v17 = a1;
    a3(v21);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = a5;
    *(v19 + 24) = a6;

    v18(sub_2273F6310, v19);

    (*(v12 + 8))(v15, v11);
    sub_226EF4F04(a1);
  }
}

void sub_2273E1500(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAF0, &unk_227680068);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_2276624A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBD48, &qword_22767C010);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_226E93170(a1, v23 - v17, &qword_27D7BBD48, &qword_22767C010);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_226E9F880, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

void sub_2273E17E0(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_22766B7F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD620, &unk_227684CB0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_226E93170(a1, v23 - v17, &unk_27D7BD620, &unk_227684CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_226EB4544, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

void sub_2273E1AC0(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(id *), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1B0, &unk_2276775B0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v20 - v15;
  if (a2)
  {
    v21 = a1;
    v22 = 0;
    v23 = 1;
    v17 = a1;
    a5(&v21);
    sub_2270934D8(v21, v22, v23);
  }

  else
  {
    a3(v14);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = a5;
    *(v19 + 24) = a6;

    v18(sub_226EC29B8, v19);

    (*(v12 + 8))(v16, v11);
  }
}

void sub_2273E1C60(uint64_t a1, void (*a2)(_OWORD *), uint64_t a3, void (*a4)(_OWORD *), uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  sub_226E93170(a1, v20, &unk_27D7BE8D0, &qword_227684CF8);
  if (v21)
  {
    v14 = *&v20[0];
    *&v19[0] = *&v20[0];
    BYTE8(v19[0]) = 1;
    v15 = *&v20[0];
    a4(v19);
  }

  else
  {
    sub_226F04970(v20, v19);
    a2(v19);
    v16 = sub_227669290();
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;

    v16(sub_226EB4544, v17);

    (*(v10 + 8))(v13, v9);
    __swift_destroy_boxed_opaque_existential_0(v19);
  }
}

void sub_2273E1E34(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_227668CE0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BEB60, &unk_227684DD0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_226E93170(a1, v23 - v17, &unk_27D7BEB60, &unk_227684DD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_226EB4544, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_2273E2114(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v28[1] = a3;
  v29 = a2;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BEB60, &unk_227684DD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v28 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA410, &qword_227678AB0);
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - v11;
  v13 = sub_2276690A0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD7B8, &qword_227684DE0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (v28 - v20);
  sub_226E93170(v32, v28 - v20, &qword_27D7BD7B8, &qword_227684DE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    *v8 = *v21;
    swift_storeEnumTagMultiPayload();
    v23 = v22;
    v33(v8);

    return sub_226E97D1C(v8, &unk_27D7BEB60, &unk_227684DD0);
  }

  else
  {
    (*(v14 + 32))(v17, v21, v13);
    v29(v17);
    v25 = v31;
    v26 = sub_227669290();
    v27 = swift_allocObject();
    *(v27 + 16) = v33;
    *(v27 + 24) = v34;

    v26(sub_226E937DC, v27);

    (*(v30 + 8))(v12, v25);
    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_2273E2460(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BEB60, &unk_227684DD0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA410, &qword_227678AB0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &unk_27D7BEB60, &unk_227684DD0);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E937DC, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_2273E2674(void *a1, uint64_t a2, char a3, void (*a4)(void *), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v24 = a5;
  v25 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BEB60, &unk_227684DD0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v24 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA410, &qword_227678AB0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - v19;
  if (a3)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v21 = a1;
    v25(v15);
    sub_226E97D1C(v15, &unk_27D7BEB60, &unk_227684DD0);
  }

  else
  {
    v26[0] = a1;
    v26[1] = a2;

    a4(v26);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a7;

    v22(sub_226E937DC, v23);

    (*(v17 + 8))(v20, v16);
    sub_226EC33EC(a1, a2, 0);
  }
}

void sub_2273E28AC(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23 = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6B8, &unk_227684D20);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = sub_227665AD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B28, &unk_227684550);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v23 - v17);
  sub_226E93170(a1, &v23 - v17, &qword_27D7B9B28, &unk_227684550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28[0] = *v18;
    v19 = v28[0];
    v28[1] = 0;
    v29 = 1;
    v20 = v28[0];
    v26(v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_226EC29B0, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_2273E2B8C(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B28, &unk_227684550);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &qword_27D7B9B28, &unk_227684550);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_2273E2DA0(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_22766AAF0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6F0, &qword_227684D58);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_226E93170(a1, v23 - v17, &qword_27D7BD6F0, &qword_227684D58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_226EB4544, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

void sub_2273E3080(void *a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void **), uint64_t a6, void (*a7)(void **), uint64_t a8)
{
  v26 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - v17;
  v27 = a1;
  if (a4)
  {
    LOBYTE(v28) = 1;
    v19 = a1;
    v26(&v27);
    v20 = a1;
    v21 = a2;
    v22 = a3;
    v23 = 1;
  }

  else
  {
    v28 = a2;
    v29 = a3;
    swift_unknownObjectRetain();
    a5(&v27);
    v24 = sub_227669290();
    v25 = swift_allocObject();
    *(v25 + 16) = v26;
    *(v25 + 24) = a8;

    v24(sub_226EB4544, v25);

    (*(v15 + 8))(v18, v14);
    v20 = a1;
    v21 = a2;
    v22 = a3;
    v23 = 0;
  }

  sub_2273F5F54(v20, v21, v22, v23);
}

uint64_t sub_2273E325C(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v30[1] = a3;
  v31 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD710, &qword_22768B760);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v30 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB88, &qword_227684D80);
  v32 = *(v10 - 8);
  v11 = *(v32 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD720, &qword_227684D88);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD728, &unk_227684D90);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (v30 - v20);
  sub_226E93170(a1, v30 - v20, &qword_27D7BD728, &unk_227684D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    *v9 = *v21;
    swift_storeEnumTagMultiPayload();
    v23 = v22;
    v33(v9);

    v24 = &unk_27D7BD710;
    v25 = &qword_22768B760;
    v26 = v9;
  }

  else
  {
    sub_226E95D18(v21, v17, &qword_27D7BD720, &qword_227684D88);
    v31(v17);
    v27 = sub_227669290();
    v28 = swift_allocObject();
    *(v28 + 16) = v33;
    *(v28 + 24) = v34;

    v27(sub_226E93814, v28);

    (*(v32 + 8))(v13, v10);
    v26 = v17;
    v24 = &qword_27D7BD720;
    v25 = &qword_227684D88;
  }

  return sub_226E97D1C(v26, v24, v25);
}

void sub_2273E3574(void *a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void *), uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v26 = a5;
  v27 = a7;
  v25 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD450, &qword_227684B70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v25 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB78, &qword_22767BC10);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v25 - v20;
  if (a4)
  {
    *v16 = a1;
    swift_storeEnumTagMultiPayload();
    v22 = a1;
    v27(v16);
    sub_226E97D1C(v16, &unk_27D7BD450, &qword_227684B70);
  }

  else
  {
    v28[0] = a1;
    v28[1] = a2;
    v28[2] = a3;
    swift_unknownObjectRetain();
    v26(v28);
    v23 = sub_227669290();
    v24 = swift_allocObject();
    *(v24 + 16) = v27;
    *(v24 + 24) = a8;

    v23(sub_226E937DC, v24);

    (*(v18 + 8))(v21, v17);
    sub_2273F5F54(a1, a2, a3, 0);
  }
}

uint64_t sub_2273E37B8(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v28[1] = a3;
  v29 = a2;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD450, &qword_227684B70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v28 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB78, &qword_22767BC10);
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - v11;
  v13 = sub_227668BB0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD700, &qword_227684D68);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (v28 - v20);
  sub_226E93170(v32, v28 - v20, &qword_27D7BD700, &qword_227684D68);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    *v8 = *v21;
    swift_storeEnumTagMultiPayload();
    v23 = v22;
    v33(v8);

    return sub_226E97D1C(v8, &unk_27D7BD450, &qword_227684B70);
  }

  else
  {
    (*(v14 + 32))(v17, v21, v13);
    v29(v17);
    v25 = v31;
    v26 = sub_227669290();
    v27 = swift_allocObject();
    *(v27 + 16) = v33;
    *(v27 + 24) = v34;

    v26(sub_226E937DC, v27);

    (*(v30 + 8))(v12, v25);
    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_2273E3B04(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v28[1] = a3;
  v29 = a2;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD700, &qword_227684D68);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v28 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6F8, &qword_227684D60);
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - v11;
  v13 = sub_22766AAF0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6F0, &qword_227684D58);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (v28 - v20);
  sub_226E93170(v32, v28 - v20, &qword_27D7BD6F0, &qword_227684D58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    *v8 = *v21;
    swift_storeEnumTagMultiPayload();
    v23 = v22;
    v33(v8);

    return sub_226E97D1C(v8, &qword_27D7BD700, &qword_227684D68);
  }

  else
  {
    (*(v14 + 32))(v17, v21, v13);
    v29(v17);
    v25 = v31;
    v26 = sub_227669290();
    v27 = swift_allocObject();
    *(v27 + 16) = v33;
    *(v27 + 24) = v34;

    v26(sub_226E93814, v27);

    (*(v30 + 8))(v12, v25);
    return (*(v14 + 8))(v17, v13);
  }
}

void sub_2273E3E50(void *a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void *), uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v26 = a5;
  v27 = a7;
  v25 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B28, &unk_227684550);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v25 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v25 - v20;
  if (a4)
  {
    *v16 = a1;
    swift_storeEnumTagMultiPayload();
    v22 = a1;
    v27(v16);
    sub_226E97D1C(v16, &qword_27D7B9B28, &unk_227684550);
  }

  else
  {
    v28[0] = a1;
    v28[1] = a2;
    v28[2] = a3;
    swift_unknownObjectRetain();
    v26(v28);
    v23 = sub_227669290();
    v24 = swift_allocObject();
    *(v24 + 16) = v27;
    *(v24 + 24) = a8;

    v23(sub_226E937DC, v24);

    (*(v18 + 8))(v21, v17);
    sub_2273F5F54(a1, a2, a3, 0);
  }
}

void sub_2273E4094(void *a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void *), uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v26 = a5;
  v27 = a7;
  v25 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD5F8, &qword_227684C88);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v25 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD600, &unk_22767BC30);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v25 - v20;
  if (a4)
  {
    *v16 = a1;
    swift_storeEnumTagMultiPayload();
    v22 = a1;
    v27(v16);
    sub_226E97D1C(v16, &qword_27D7BD5F8, &qword_227684C88);
  }

  else
  {
    v28[0] = a1;
    v28[1] = a2;
    v28[2] = a3;
    swift_unknownObjectRetain();
    v26(v28);
    v23 = sub_227669290();
    v24 = swift_allocObject();
    *(v24 + 16) = v27;
    *(v24 + 24) = a8;

    v23(sub_226E93814, v24);

    (*(v18 + 8))(v21, v17);
    sub_2273F5F54(a1, a2, a3, 0);
  }
}

void sub_2273E42D8(void *a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void *), uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v26 = a5;
  v27 = a7;
  v25 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBD20, &unk_227684BF0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v25 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB80, &unk_22767BC20);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v25 - v20;
  if (a4)
  {
    *v16 = a1;
    swift_storeEnumTagMultiPayload();
    v22 = a1;
    v27(v16);
    sub_226E97D1C(v16, &unk_27D7BBD20, &unk_227684BF0);
  }

  else
  {
    v28[0] = a1;
    v28[1] = a2;
    v28[2] = a3;
    swift_unknownObjectRetain();
    v26(v28);
    v23 = sub_227669290();
    v24 = swift_allocObject();
    *(v24 + 16) = v27;
    *(v24 + 24) = a8;

    v23(sub_226E937DC, v24);

    (*(v18 + 8))(v21, v17);
    sub_2273F5F54(a1, a2, a3, 0);
  }
}

void sub_2273E451C(void *a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void *), uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v26 = a5;
  v27 = a7;
  v25 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6D8, &qword_227684D50);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v25 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD6E0, &qword_22767BC18);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v25 - v20;
  if (a4)
  {
    *v16 = a1;
    swift_storeEnumTagMultiPayload();
    v22 = a1;
    v27(v16);
    sub_226E97D1C(v16, &qword_27D7BD6D8, &qword_227684D50);
  }

  else
  {
    v28[0] = a1;
    v28[1] = a2;
    v28[2] = a3;
    swift_unknownObjectRetain();
    v26(v28);
    v23 = sub_227669290();
    v24 = swift_allocObject();
    *(v24 + 16) = v27;
    *(v24 + 24) = a8;

    v23(sub_226E93814, v24);

    (*(v18 + 8))(v21, v17);
    sub_2273F5F54(a1, a2, a3, 0);
  }
}

uint64_t sub_2273E4760(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD450, &qword_227684B70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB78, &qword_22767BC10);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &unk_27D7BD450, &qword_227684B70);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_2273E4974(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_227668720();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6D0, &qword_22768C440);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_226E93170(a1, v23 - v17, &qword_27D7BD6D0, &qword_22768C440);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_226EB4544, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

void sub_2273E4C54(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23 = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6B8, &unk_227684D20);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = sub_2276666A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD560, &unk_227684C50);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v23 - v17);
  sub_226E93170(a1, &v23 - v17, &qword_27D7BD560, &unk_227684C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28[0] = *v18;
    v19 = v28[0];
    v28[1] = 0;
    v29 = 1;
    v20 = v28[0];
    v26(v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_2273F86A4, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_2273E4F34(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD560, &unk_227684C50);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA2E0, &qword_227672100);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &qword_27D7BD560, &unk_227684C50);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_2273E5148(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23 = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6B8, &unk_227684D20);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = sub_227666C80();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2D0, &qword_227678B48);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v23 - v17);
  sub_226E93170(a1, &v23 - v17, &qword_27D7BA2D0, &qword_227678B48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28[0] = *v18;
    v19 = v28[0];
    v28[1] = 0;
    v29 = 1;
    v20 = v28[0];
    v26(v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_2273F86A4, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_2273E5428(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2D0, &qword_227678B48);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD570, &unk_227670850);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &qword_27D7BA2D0, &qword_227678B48);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

uint64_t sub_2273E563C(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEBF0, &qword_227684EE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD900, &unk_22767E580);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &qword_27D7BEBF0, &qword_227684EE0);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_2273E5850(void *a1, uint64_t a2, char a3, void (*a4)(void *), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v24 = a5;
  v25 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEBF0, &qword_227684EE0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v24 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD900, &unk_22767E580);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - v19;
  if (a3)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v21 = a1;
    v25(v15);
    sub_226E97D1C(v15, &qword_27D7BEBF0, &qword_227684EE0);
  }

  else
  {
    v26[0] = a1;
    v26[1] = a2;

    a4(v26);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a7;

    v22(sub_226E937DC, v23);

    (*(v17 + 8))(v20, v16);
    sub_226EC33EC(a1, a2, 0);
  }
}

uint64_t sub_2273E5A88(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v28[1] = a3;
  v29 = a2;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD908, &unk_227684ED0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v28 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD910, &qword_22767D5A8);
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - v11;
  v13 = sub_227669080();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEBF0, &qword_227684EE0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (v28 - v20);
  sub_226E93170(v32, v28 - v20, &qword_27D7BEBF0, &qword_227684EE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    *v8 = *v21;
    swift_storeEnumTagMultiPayload();
    v23 = v22;
    v33(v8);

    return sub_226E97D1C(v8, &qword_27D7BD908, &unk_227684ED0);
  }

  else
  {
    (*(v14 + 32))(v17, v21, v13);
    v29(v17);
    v25 = v31;
    v26 = sub_227669290();
    v27 = swift_allocObject();
    *(v27 + 16) = v33;
    *(v27 + 24) = v34;

    v26(sub_226E93814, v27);

    (*(v30 + 8))(v12, v25);
    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_2273E5DD4(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8E8, &unk_227684EB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8D0, &unk_22767E570);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &qword_27D7BD8E8, &unk_227684EB0);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_2273E5FE8(void *a1, uint64_t a2, char a3, void (*a4)(void *), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v24 = a5;
  v25 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8E8, &unk_227684EB0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v24 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8D0, &unk_22767E570);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - v19;
  if (a3)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v21 = a1;
    v25(v15);
    sub_226E97D1C(v15, &qword_27D7BD8E8, &unk_227684EB0);
  }

  else
  {
    v26[0] = a1;
    v26[1] = a2;

    a4(v26);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a7;

    v22(sub_226E937DC, v23);

    (*(v17 + 8))(v20, v16);
    sub_226EC33EC(a1, a2, 0);
  }
}

uint64_t sub_2273E6220(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v28[1] = a3;
  v29 = a2;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8D8, &unk_227684EA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v28 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8E0, &qword_22767D5A0);
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - v11;
  v13 = sub_2276645D0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8E8, &unk_227684EB0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (v28 - v20);
  sub_226E93170(v32, v28 - v20, &qword_27D7BD8E8, &unk_227684EB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    *v8 = *v21;
    swift_storeEnumTagMultiPayload();
    v23 = v22;
    v33(v8);

    return sub_226E97D1C(v8, &qword_27D7BD8D8, &unk_227684EA0);
  }

  else
  {
    (*(v14 + 32))(v17, v21, v13);
    v29(v17);
    v25 = v31;
    v26 = sub_227669290();
    v27 = swift_allocObject();
    *(v27 + 16) = v33;
    *(v27 + 24) = v34;

    v26(sub_226E93814, v27);

    (*(v30 + 8))(v12, v25);
    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_2273E656C(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BEBD0, &unk_227684E80);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD8A0, &unk_22767E560);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &unk_27D7BEBD0, &unk_227684E80);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_2273E6780(void *a1, uint64_t a2, char a3, void (*a4)(void *), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v24 = a5;
  v25 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BEBD0, &unk_227684E80);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v24 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD8A0, &unk_22767E560);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - v19;
  if (a3)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v21 = a1;
    v25(v15);
    sub_226E97D1C(v15, &unk_27D7BEBD0, &unk_227684E80);
  }

  else
  {
    v26[0] = a1;
    v26[1] = a2;

    a4(v26);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a7;

    v22(sub_226E937DC, v23);

    (*(v17 + 8))(v20, v16);
    sub_226EC33EC(a1, a2, 0);
  }
}

uint64_t sub_2273E69B8(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v28[1] = a3;
  v29 = a2;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BEBC0, &unk_227684E70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v28 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD8B0, &qword_22767D598);
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - v11;
  v13 = sub_227664220();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BEBD0, &unk_227684E80);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (v28 - v20);
  sub_226E93170(v32, v28 - v20, &unk_27D7BEBD0, &unk_227684E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    *v8 = *v21;
    swift_storeEnumTagMultiPayload();
    v23 = v22;
    v33(v8);

    return sub_226E97D1C(v8, &unk_27D7BEBC0, &unk_227684E70);
  }

  else
  {
    (*(v14 + 32))(v17, v21, v13);
    v29(v17);
    v25 = v31;
    v26 = sub_227669290();
    v27 = swift_allocObject();
    *(v27 + 16) = v33;
    *(v27 + 24) = v34;

    v26(sub_226E93814, v27);

    (*(v30 + 8))(v12, v25);
    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_2273E6D04(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD448, &unk_22768B800);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD440, &unk_227684B60);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &qword_27D7BD448, &unk_22768B800);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E937DC, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_2273E6F18(void *a1, uint64_t a2, char a3, void (*a4)(void *), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v24 = a5;
  v25 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD448, &unk_22768B800);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v24 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD440, &unk_227684B60);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - v19;
  if (a3)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v21 = a1;
    v25(v15);
    sub_226E97D1C(v15, &qword_27D7BD448, &unk_22768B800);
  }

  else
  {
    v26[0] = a1;
    v26[1] = a2;

    a4(v26);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a7;

    v22(sub_226E937DC, v23);

    (*(v17 + 8))(v20, v16);
    sub_226EC33EC(a1, a2, 0);
  }
}

uint64_t sub_2273E7150(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v28[1] = a3;
  v29 = a2;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD7F0, &qword_22767C068);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v28 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB188, &unk_227684DF0);
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - v11;
  v13 = sub_2276642E0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD448, &unk_22768B800);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (v28 - v20);
  sub_226E93170(v32, v28 - v20, &qword_27D7BD448, &unk_22768B800);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    *v8 = *v21;
    swift_storeEnumTagMultiPayload();
    v23 = v22;
    v33(v8);

    return sub_226E97D1C(v8, &unk_27D7BD7F0, &qword_22767C068);
  }

  else
  {
    (*(v14 + 32))(v17, v21, v13);
    v29(v17);
    v25 = v31;
    v26 = sub_227669290();
    v27 = swift_allocObject();
    *(v27 + 16) = v33;
    *(v27 + 24) = v34;

    v26(sub_226E93814, v27);

    (*(v30 + 8))(v12, v25);
    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_2273E749C(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD890, &qword_22768B860);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC340, &unk_22767E550);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &unk_27D7BD890, &qword_22768B860);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_2273E76B0(void *a1, uint64_t a2, char a3, void (*a4)(void *), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v24 = a5;
  v25 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD890, &qword_22768B860);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v24 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC340, &unk_22767E550);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - v19;
  if (a3)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v21 = a1;
    v25(v15);
    sub_226E97D1C(v15, &unk_27D7BD890, &qword_22768B860);
  }

  else
  {
    v26[0] = a1;
    v26[1] = a2;

    a4(v26);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a7;

    v22(sub_226E937DC, v23);

    (*(v17 + 8))(v20, v16);
    sub_226EC33EC(a1, a2, 0);
  }
}

uint64_t sub_2273E78E8(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD850, &unk_22768B850);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6E0, &unk_227684E20);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &unk_27D7BD850, &unk_22768B850);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_2273E7AFC(void *a1, uint64_t a2, char a3, void (*a4)(void *), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v24 = a5;
  v25 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD850, &unk_22768B850);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v24 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6E0, &unk_227684E20);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - v19;
  if (a3)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v21 = a1;
    v25(v15);
    sub_226E97D1C(v15, &unk_27D7BD850, &unk_22768B850);
  }

  else
  {
    v26[0] = a1;
    v26[1] = a2;

    a4(v26);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a7;

    v22(sub_226E937DC, v23);

    (*(v17 + 8))(v20, v16);
    sub_226EC33EC(a1, a2, 0);
  }
}

uint64_t sub_2273E7D34(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v28[1] = a3;
  v29 = a2;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD840, &unk_22768B840);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v28 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC320, &qword_227684E30);
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - v11;
  v13 = sub_2276692D0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD850, &unk_22768B850);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (v28 - v20);
  sub_226E93170(v32, v28 - v20, &unk_27D7BD850, &unk_22768B850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    *v8 = *v21;
    swift_storeEnumTagMultiPayload();
    v23 = v22;
    v33(v8);

    return sub_226E97D1C(v8, &unk_27D7BD840, &unk_22768B840);
  }

  else
  {
    (*(v14 + 32))(v17, v21, v13);
    v29(v17);
    v25 = v31;
    v26 = sub_227669290();
    v27 = swift_allocObject();
    *(v27 + 16) = v33;
    *(v27 + 24) = v34;

    v26(sub_226E93814, v27);

    (*(v30 + 8))(v12, v25);
    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_2273E8080(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BEBB0, &unk_227684E10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD830, &unk_227682470);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &unk_27D7BEBB0, &unk_227684E10);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_2273E8294(void *a1, uint64_t a2, char a3, void (*a4)(void *), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v24 = a5;
  v25 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BEBB0, &unk_227684E10);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v24 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD830, &unk_227682470);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - v19;
  if (a3)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v21 = a1;
    v25(v15);
    sub_226E97D1C(v15, &unk_27D7BEBB0, &unk_227684E10);
  }

  else
  {
    v26[0] = a1;
    v26[1] = a2;

    a4(v26);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a7;

    v22(sub_226E937DC, v23);

    (*(v17 + 8))(v20, v16);
    sub_226EC33EC(a1, a2, 0);
  }
}

void sub_2273E84CC(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v22 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD810, &unk_22768B830);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v22 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC318, &unk_227684E00);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    v22(v13);
    sub_226E97D1C(v13, &unk_27D7BD810, &unk_22768B830);
  }

  else
  {
    v23 = a1;

    a3(&v23);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v22;
    *(v21 + 24) = a6;

    v20(sub_226E93814, v21);

    (*(v15 + 8))(v18, v14);
    sub_226EB4668(a1, 0, MEMORY[0x277D84FB8]);
  }
}

void sub_2273E870C(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v22 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD448, &unk_22768B800);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v22 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD440, &unk_227684B60);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    v22(v13);
    sub_226E97D1C(v13, &qword_27D7BD448, &unk_22768B800);
  }

  else
  {
    v23 = a1;

    a3(&v23);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v22;
    *(v21 + 24) = a6;

    v20(sub_226E93814, v21);

    (*(v15 + 8))(v18, v14);
    sub_226EB4668(a1, 0, MEMORY[0x277D84FB8]);
  }
}

void sub_2273E894C(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3E8, &unk_22767E4F0);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_2276687F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD7E0, &qword_227684DE8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_226E93170(a1, v23 - v17, &unk_27D7BD7E0, &qword_227684DE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_226E9F880, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

void sub_2273E8C2C(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v22 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD7E0, &qword_227684DE8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v22 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF20, &unk_2276823C0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    v22(v13);
    sub_226E97D1C(v13, &unk_27D7BD7E0, &qword_227684DE8);
  }

  else
  {
    v23 = a1;

    a3(&v23);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v22;
    *(v21 + 24) = a6;

    v20(sub_226E93814, v21);

    (*(v15 + 8))(v18, v14);
    sub_226EB4668(a1, 0, MEMORY[0x277D84FB8]);
  }
}

uint64_t sub_2273E8E6C(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v32 = a4;
  v33 = a5;
  v28 = a3;
  v29 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA410, &qword_227678AB0);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = sub_227668CE0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BEB60, &unk_227684DD0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = (&v28 - v20);
  sub_226E93170(a1, &v28 - v20, &unk_27D7BEB60, &unk_227684DD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    *v19 = *v21;
    swift_storeEnumTagMultiPayload();
    v23 = v22;
    v32(v19);

    return sub_226E97D1C(v19, &unk_27D7BEB60, &unk_227684DD0);
  }

  else
  {
    (*(v11 + 32))(v14, v21, v10);
    v29(v14);
    v25 = v31;
    v26 = sub_227669290();
    v27 = swift_allocObject();
    *(v27 + 16) = v32;
    *(v27 + 24) = v33;

    v26(sub_226E93814, v27);

    (*(v30 + 8))(v9, v25);
    return (*(v11 + 8))(v14, v10);
  }
}

void sub_2273E9188(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v22 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD7B8, &qword_227684DE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v22 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD7B0, &unk_227682270);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    v22(v13);
    sub_226E97D1C(v13, &qword_27D7BD7B8, &qword_227684DE0);
  }

  else
  {
    v23 = a1;

    a3(&v23);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v22;
    *(v21 + 24) = a6;

    v20(sub_226E93814, v21);

    (*(v15 + 8))(v18, v14);
    sub_226EB4668(a1, 0, MEMORY[0x277D84FB8]);
  }
}

void sub_2273E93C8(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA260, &unk_227684B00);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_227665AD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B28, &unk_227684550);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_226E93170(a1, v23 - v17, &qword_27D7B9B28, &unk_227684550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_226E9F880, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_2273E96A8(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v28[1] = a3;
  v29 = a2;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v28 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD3C0, &qword_22767FE60);
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - v11;
  v13 = sub_227663180();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD9A0, &qword_227684EE8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (v28 - v20);
  sub_226E93170(v32, v28 - v20, &unk_27D7BD9A0, &qword_227684EE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    *v8 = *v21;
    swift_storeEnumTagMultiPayload();
    v23 = v22;
    v33(v8);

    return sub_226E97D1C(v8, &qword_27D7B9628, &unk_227674860);
  }

  else
  {
    (*(v14 + 32))(v17, v21, v13);
    v29(v17);
    v25 = v31;
    v26 = sub_227669290();
    v27 = swift_allocObject();
    *(v27 + 16) = v33;
    *(v27 + 24) = v34;

    v26(sub_226E937DC, v27);

    (*(v30 + 8))(v12, v25);
    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_2273E99F4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v27 = a3;
  v28 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD3C0, &qword_22767FE60);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = type metadata accessor for AssetLoaderResponse();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = (&v27 - v20);
  sub_226E93170(a1, &v27 - v20, &qword_27D7B9628, &unk_227674860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    *v19 = *v21;
    swift_storeEnumTagMultiPayload();
    v23 = v22;
    v29(v19);

    return sub_226E97D1C(v19, &qword_27D7B9628, &unk_227674860);
  }

  else
  {
    sub_2273F60B0(v21, v14, type metadata accessor for AssetLoaderResponse);
    v28(v14);
    v25 = sub_227669290();
    v26 = swift_allocObject();
    *(v26 + 16) = v29;
    *(v26 + 24) = v30;

    v25(sub_226E937DC, v26);

    (*(v7 + 8))(v10, v6);
    return sub_2273F6118(v14, type metadata accessor for AssetLoaderResponse);
  }
}

uint64_t sub_2273E9CD0(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v24[-1] - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD3C0, &qword_22767FE60);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v24[-1] - v16;
  sub_226E93170(a1, v25, &qword_27D7BD410, &qword_227684B30);
  if (v26)
  {
    v18 = *&v25[0];
    *v12 = *&v25[0];
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    a4(v12);

    return sub_226E97D1C(v12, &qword_27D7B9628, &unk_227674860);
  }

  else
  {
    sub_226E92AB8(v25, v24);
    a2(v24);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = a4;
    *(v22 + 24) = a5;

    v21(sub_226E937DC, v22);

    (*(v14 + 8))(v17, v13);
    return __swift_destroy_boxed_opaque_existential_0(v24);
  }
}

void sub_2273E9F18(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v25 = a2;
  v26 = a4;
  v24[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA260, &unk_227684B00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3F0, &unk_2276823F0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBF50, &qword_22767C288);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (v24 - v18);
  sub_226E93170(a1, v24 - v18, &unk_27D7BBF50, &qword_22767C288);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v19;
    v20 = v27;
    v28 = 1;
    v21 = v27;
    v26(&v27);
  }

  else
  {
    sub_226E95D18(v19, v15, &unk_27D7BD3F0, &unk_2276823F0);
    v25(v15);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v26;
    *(v23 + 24) = a5;

    v22(sub_226E9F880, v23);

    (*(v8 + 8))(v11, v7);
    sub_226E97D1C(v15, &unk_27D7BD3F0, &unk_2276823F0);
  }
}

uint64_t sub_2273EA1C8(void *a1, char a2, void (*a3)(char *, double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v24 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD3C0, &qword_22767FE60);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v24(v13);
    return sub_226E97D1C(v13, &qword_27D7B9628, &unk_227674860);
  }

  else
  {
    v25 = a1 & 1;
    a3(&v25, v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v24;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

uint64_t sub_2273EA3E8(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD3C0, &qword_22767FE60);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &qword_27D7B9628, &unk_227674860);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E937DC, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_2273EA5FC(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v25 = a2;
  v26 = a4;
  v24[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD9F0, qword_2276873A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD9F8, &qword_227684F20);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (v24 - v18);
  sub_226E93170(a1, v24 - v18, &qword_27D7BD9F8, &qword_227684F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v19;
    v20 = v27;
    v28 = 1;
    v21 = v27;
    v26(&v27);
  }

  else
  {
    sub_226E95D18(v19, v15, &qword_27D7BD9F0, qword_2276873A0);
    v25(v15);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v26;
    *(v23 + 24) = a5;

    v22(sub_226EB4544, v23);

    (*(v8 + 8))(v11, v7);
    sub_226E97D1C(v15, &qword_27D7BD9F0, qword_2276873A0);
  }
}

void sub_2273EA8AC(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v22 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v22 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD3C0, &qword_22767FE60);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    v22(v13);
    sub_226E97D1C(v13, &qword_27D7B9628, &unk_227674860);
  }

  else
  {
    v23 = a1;

    a3(&v23);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v22;
    *(v21 + 24) = a6;

    v20(sub_226E937DC, v21);

    (*(v15 + 8))(v18, v14);
    sub_226EB4668(a1, 0, MEMORY[0x277D84FB8]);
  }
}

void sub_2273EAAEC(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23 = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1B0, &unk_2276775B0);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = sub_2276624A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBD48, &qword_22767C010);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v23 - v17);
  sub_226E93170(a1, &v23 - v17, &qword_27D7BBD48, &qword_22767C010);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 0;
    v30 = 1;
    v20 = v28;
    v26(&v28);

    sub_2270934D8(v28, v29, v30);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_226EC29B8, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

void sub_2273EADD0(void *a1, unint64_t a2, char a3, void (*a4)(uint64_t *), uint64_t a5, void (*a6)(uint64_t *), uint64_t a7, uint64_t *a8, uint64_t *a9, uint64_t a10, uint64_t a11)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a8, a9);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v25 - v20;
  if (a3)
  {
    v27 = a1;
    LOBYTE(v28) = 1;
    v22 = a1;
    a6(&v27);
    sub_2270934D8(a1, a2, 1);
  }

  else
  {
    v26 = a11;
    v27 = a1;
    v28 = a2;
    sub_226F5E0B4(a1, a2);
    a4(&v27);
    v23 = sub_227669290();
    v24 = swift_allocObject();
    *(v24 + 16) = a6;
    *(v24 + 24) = a7;

    v23(v26, v24);

    (*(v18 + 8))(v21, v17);
    sub_226EDC420(v27, v28);
  }
}

void sub_2273EAF80(void *a1, char a2, void (*a3)(id *), uint64_t a4, void (*a5)(id *), uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void *, void))
{
  v23 = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1B0, &unk_2276775B0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v23 - v17;
  if (a2)
  {
    v24 = a1;
    v25 = 0;
    v26 = 1;
    v19 = a1;
    a5(&v24);
    sub_2270934D8(v24, v25, v26);
  }

  else
  {
    v24 = a1;
    v20 = a1;
    a3(&v24);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = a5;
    *(v22 + 24) = a6;

    v21(v23, v22);

    (*(v15 + 8))(v18, v14);
    a9(a1, 0);
  }
}

void sub_2273EB134(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAF0, &unk_227680068);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v20 = a1;
  if (a2)
  {
    v21 = 1;
    v16 = a1;
    a5(&v20);
  }

  else
  {
    v17 = a1;
    a3(&v20);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = a5;
    *(v19 + 24) = a6;

    v18(sub_226E9F880, v19);

    (*(v12 + 8))(v15, v11);
  }

  sub_226EF4F04(a1);
}

void sub_2273EB2E8(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAE8, &qword_227680060);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_2276624A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBD48, &qword_22767C010);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_226E93170(a1, v23 - v17, &qword_27D7BBD48, &qword_22767C010);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_226E9F880, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

void sub_2273EB5C8(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_227666230();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96C8, &qword_227674900);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_226E93170(a1, v23 - v17, &qword_27D7B96C8, &qword_227674900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_226EB4544, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_2273EB8A8(void *a1, unint64_t a2, char a3, void (*a4)(uint64_t *), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v24 = a6;
  v25 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96C8, &qword_227674900);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v24 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD660, &qword_22767E5C0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v24 - v18;
  if (a3)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v24(v14);
    return sub_226E97D1C(v14, &qword_27D7B96C8, &qword_227674900);
  }

  else
  {
    v26 = a1;
    v27 = a2;
    sub_226F5E0B4(a1, a2);
    a4(&v26);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v24;
    *(v23 + 24) = v25;

    v22(sub_226E937DC, v23);

    (*(v16 + 8))(v19, v15);
    return sub_226EDC420(v26, v27);
  }
}

void sub_2273EBAD4(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v19 = a1;
  if (a2)
  {
    v20 = 1;
    v16 = a1;
    a5(&v19);
    sub_226EB4548(a1, 1);
  }

  else
  {
    a3(&v19);
    v17 = sub_227669290();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_226EB4544, v18);

    (*(v12 + 8))(v15, v11);
  }
}

void sub_2273EBC7C(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD420, &qword_227679D40);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_227663480();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD9C0, &qword_227684EF8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_226E93170(a1, v23 - v17, &unk_27D7BD9C0, &qword_227684EF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_226E9F880, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

void sub_2273EBF5C(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD650, &qword_227684CF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v23 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96C0, &unk_227684560);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v23 - v17;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    v23(v13);
    sub_226E97D1C(v13, &qword_27D7BD650, &qword_227684CF0);
  }

  else
  {
    v24 = a1;
    v20 = a1;
    a3(&v24);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v23;
    *(v22 + 24) = a6;

    v21(sub_226E93814, v22);

    (*(v15 + 8))(v18, v14);
    sub_226EF4F04(a1);
  }
}

uint64_t sub_2273EC184(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD800, &qword_227678BD0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA3D0, &unk_22767E500);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &unk_27D7BD800, &qword_227678BD0);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_2273EC398(void *a1, uint64_t a2, char a3, void (*a4)(void *), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v24 = a5;
  v25 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD800, &qword_227678BD0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v24 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA3D0, &unk_22767E500);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - v19;
  if (a3)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v21 = a1;
    v25(v15);
    sub_226E97D1C(v15, &unk_27D7BD800, &qword_227678BD0);
  }

  else
  {
    v26[0] = a1;
    v26[1] = a2;

    a4(v26);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a7;

    v22(sub_226E937DC, v23);

    (*(v17 + 8))(v20, v16);
    sub_226EC33EC(a1, a2, 0);
  }
}

void sub_2273EC5D0(void *a1, uint64_t a2, char a3, void (*a4)(void **), uint64_t a5, void (*a6)(void **), uint64_t a7, uint64_t *a8, uint64_t *a9, uint64_t a10, uint64_t a11)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a8, a9);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v29 - v20;
  if (a3)
  {
    v31 = a1;
    LOBYTE(v32) = 1;
    v22 = a1;
    a6(&v31);
    v23 = a1;
    v24 = a2;
    v25 = 1;
  }

  else
  {
    v30 = a11;
    v31 = a1;
    v26 = a6;
    v32 = a2;

    a4(&v31);
    v27 = sub_227669290();
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    *(v28 + 24) = a7;

    v27(v30, v28);

    (*(v18 + 8))(v21, v17);
    v23 = a1;
    v24 = a2;
    v25 = 0;
  }

  sub_226EC33EC(v23, v24, v25);
}

void sub_2273EC788(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v22 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD908, &unk_227684ED0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v22 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD910, &qword_22767D5A8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    v22(v13);
    sub_226E97D1C(v13, &qword_27D7BD908, &unk_227684ED0);
  }

  else
  {
    v23 = a1;

    a3(&v23);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v22;
    *(v21 + 24) = a6;

    v20(sub_226E937DC, v21);

    (*(v15 + 8))(v18, v14);
    sub_226EB4668(a1, 0, MEMORY[0x277D84FB8]);
  }
}

uint64_t sub_2273EC9C8(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BEBE0, &unk_227684EC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD8F0, &qword_227682520);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &unk_27D7BEBE0, &unk_227684EC0);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_2273ECBDC(void *a1, uint64_t a2, char a3, void (*a4)(void *), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v24 = a5;
  v25 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BEBE0, &unk_227684EC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v24 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD8F0, &qword_227682520);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - v19;
  if (a3)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v21 = a1;
    v25(v15);
    sub_226E97D1C(v15, &unk_27D7BEBE0, &unk_227684EC0);
  }

  else
  {
    v26[0] = a1;
    v26[1] = a2;

    a4(v26);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a7;

    v22(sub_226E937DC, v23);

    (*(v17 + 8))(v20, v16);
    sub_226EC33EC(a1, a2, 0);
  }
}

uint64_t sub_2273ECE14(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v28[1] = a3;
  v29 = a2;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8D8, &unk_227684EA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v28 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8E0, &qword_22767D5A0);
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - v11;
  v13 = sub_227668800();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BEBE0, &unk_227684EC0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (v28 - v20);
  sub_226E93170(v32, v28 - v20, &unk_27D7BEBE0, &unk_227684EC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    *v8 = *v21;
    swift_storeEnumTagMultiPayload();
    v23 = v22;
    v33(v8);

    return sub_226E97D1C(v8, &qword_27D7BD8D8, &unk_227684EA0);
  }

  else
  {
    (*(v14 + 32))(v17, v21, v13);
    v29(v17);
    v25 = v31;
    v26 = sub_227669290();
    v27 = swift_allocObject();
    *(v27 + 16) = v33;
    *(v27 + 24) = v34;

    v26(sub_226E937DC, v27);

    (*(v30 + 8))(v12, v25);
    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_2273ED160(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8C8, &unk_227684E90);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8C0, &unk_227682510);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &qword_27D7BD8C8, &unk_227684E90);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_2273ED374(void *a1, uint64_t a2, char a3, void (*a4)(void *), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v24 = a5;
  v25 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8C8, &unk_227684E90);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v24 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8C0, &unk_227682510);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - v19;
  if (a3)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v21 = a1;
    v25(v15);
    sub_226E97D1C(v15, &qword_27D7BD8C8, &unk_227684E90);
  }

  else
  {
    v26[0] = a1;
    v26[1] = a2;

    a4(v26);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a7;

    v22(sub_226E937DC, v23);

    (*(v17 + 8))(v20, v16);
    sub_226EC33EC(a1, a2, 0);
  }
}

uint64_t sub_2273ED5AC(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v28[1] = a3;
  v29 = a2;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BEBC0, &unk_227684E70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v28 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD8B0, &qword_22767D598);
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - v11;
  v13 = sub_2276684D0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD8C8, &unk_227684E90);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (v28 - v20);
  sub_226E93170(v32, v28 - v20, &qword_27D7BD8C8, &unk_227684E90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    *v8 = *v21;
    swift_storeEnumTagMultiPayload();
    v23 = v22;
    v33(v8);

    return sub_226E97D1C(v8, &unk_27D7BEBC0, &unk_227684E70);
  }

  else
  {
    (*(v14 + 32))(v17, v21, v13);
    v29(v17);
    v25 = v31;
    v26 = sub_227669290();
    v27 = swift_allocObject();
    *(v27 + 16) = v33;
    *(v27 + 24) = v34;

    v26(sub_226E937DC, v27);

    (*(v30 + 8))(v12, v25);
    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_2273ED8F8(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD860, &qword_227684E38);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6D8, &unk_22767E510);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &unk_27D7BD860, &qword_227684E38);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_2273EDB0C(void *a1, uint64_t a2, char a3, void (*a4)(void *), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v24 = a5;
  v25 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD860, &qword_227684E38);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v24 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6D8, &unk_22767E510);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - v19;
  if (a3)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v21 = a1;
    v25(v15);
    sub_226E97D1C(v15, &unk_27D7BD860, &qword_227684E38);
  }

  else
  {
    v26[0] = a1;
    v26[1] = a2;

    a4(v26);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a7;

    v22(sub_226E937DC, v23);

    (*(v17 + 8))(v20, v16);
    sub_226EC33EC(a1, a2, 0);
  }
}

uint64_t sub_2273EDD44(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v28[1] = a3;
  v29 = a2;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD840, &unk_22768B840);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v28 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC320, &qword_227684E30);
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - v11;
  v13 = sub_227666DB0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD860, &qword_227684E38);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (v28 - v20);
  sub_226E93170(v32, v28 - v20, &unk_27D7BD860, &qword_227684E38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    *v8 = *v21;
    swift_storeEnumTagMultiPayload();
    v23 = v22;
    v33(v8);

    return sub_226E97D1C(v8, &unk_27D7BD840, &unk_22768B840);
  }

  else
  {
    (*(v14 + 32))(v17, v21, v13);
    v29(v17);
    v25 = v31;
    v26 = sub_227669290();
    v27 = swift_allocObject();
    *(v27 + 16) = v33;
    *(v27 + 24) = v34;

    v26(sub_226E937DC, v27);

    (*(v30 + 8))(v12, v25);
    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_2273EE090(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v28[1] = a3;
  v29 = a2;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD7F0, &qword_22767C068);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v28 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB188, &unk_227684DF0);
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - v11;
  v13 = sub_2276685B0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD800, &qword_227678BD0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (v28 - v20);
  sub_226E93170(v32, v28 - v20, &unk_27D7BD800, &qword_227678BD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    *v8 = *v21;
    swift_storeEnumTagMultiPayload();
    v23 = v22;
    v33(v8);

    return sub_226E97D1C(v8, &unk_27D7BD7F0, &qword_22767C068);
  }

  else
  {
    (*(v14 + 32))(v17, v21, v13);
    v29(v17);
    v25 = v31;
    v26 = sub_227669290();
    v27 = swift_allocObject();
    *(v27 + 16) = v33;
    *(v27 + 24) = v34;

    v26(sub_226E937DC, v27);

    (*(v30 + 8))(v12, v25);
    return (*(v14 + 8))(v17, v13);
  }
}

void sub_2273EE3DC(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v22 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD810, &unk_22768B830);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v22 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC318, &unk_227684E00);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    v22(v13);
    sub_226E97D1C(v13, &unk_27D7BD810, &unk_22768B830);
  }

  else
  {
    v23 = a1;

    a3(&v23);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v22;
    *(v21 + 24) = a6;

    v20(sub_226E937DC, v21);

    (*(v15 + 8))(v18, v14);
    sub_226EB4668(a1, 0, MEMORY[0x277D84FB8]);
  }
}

uint64_t sub_2273EE61C(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA390, &qword_227678BA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA388, &unk_22767E4A0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &qword_27D7BA390, &qword_227678BA0);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E937DC, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_2273EE830(void *a1, uint64_t a2, char a3, void (*a4)(void *), uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v24 = a5;
  v25 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA390, &qword_227678BA0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v24 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA388, &unk_22767E4A0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - v19;
  if (a3)
  {
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v21 = a1;
    v25(v15);
    sub_226E97D1C(v15, &qword_27D7BA390, &qword_227678BA0);
  }

  else
  {
    v26[0] = a1;
    v26[1] = a2;

    a4(v26);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a7;

    v22(sub_226E93814, v23);

    (*(v17 + 8))(v20, v16);
    sub_226EC33EC(a1, a2, 0);
  }
}

uint64_t sub_2273EEA68(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD518, &qword_227684C38);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD510, &unk_227684320);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &qword_27D7BD518, &qword_227684C38);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_2273EEC7C(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_227665E60();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBD00, &unk_227684CE0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_226E93170(a1, v23 - v17, &unk_27D7BBD00, &unk_227684CE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_226EB4544, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

void sub_2273EEF5C(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_227666600();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD518, &qword_227684C38);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_226E93170(a1, v23 - v17, &qword_27D7BD518, &qword_227684C38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_226EB4544, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_2273EF23C(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA400, &unk_227684C10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9348, &qword_227673B30);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &qword_27D7BA400, &unk_227684C10);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

uint64_t sub_2273EF450(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBD30, &qword_22767BFC8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD5D0, &unk_22767E450);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &unk_27D7BBD30, &qword_22767BFC8);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

uint64_t sub_2273EF664(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD5C0, &qword_227684C60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6A0, &unk_227685280);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &qword_27D7BD5C0, &qword_227684C60);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

uint64_t sub_2273EF878(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD5C0, &qword_227684C60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v23 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6A0, &unk_227685280);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v23 - v17;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    v23(v13);
    return sub_226E97D1C(v13, &qword_27D7BD5C0, &qword_227684C60);
  }

  else
  {
    v24 = a1;
    a3(&v24);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v23;
    *(v22 + 24) = a6;

    v21(sub_226E937DC, v22);

    return (*(v15 + 8))(v18, v14);
  }
}

void sub_2273EFA94(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD528, &qword_2276855A0);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_227663FA0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD538, &unk_22768B7F0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_226E93170(a1, v23 - v17, &qword_27D7BD538, &unk_22768B7F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_226E9F880, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_2273EFD74(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD5A8, &unk_227685610);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD5A0, &unk_22767E430);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &qword_27D7BD5A8, &unk_227685610);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

uint64_t sub_2273EFF88(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBD20, &unk_227684BF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB80, &unk_22767BC20);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &unk_27D7BBD20, &unk_227684BF0);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

uint64_t sub_2273F019C(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD4B0, &unk_227684BC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC658, &qword_22767E3A8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &unk_27D7BD4B0, &unk_227684BC0);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

uint64_t sub_2273F03B0(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3E0, &unk_227684B20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC650, &qword_22767E3A0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &unk_27D7BD3E0, &unk_227684B20);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

uint64_t sub_2273F05C4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v30[1] = a3;
  v31 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3E0, &unk_227684B20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v30 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC650, &qword_22767E3A0);
  v32 = *(v10 - 8);
  v11 = *(v32 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94C0, &unk_2276874A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD4A0, &unk_227684BB0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (v30 - v20);
  sub_226E93170(a1, v30 - v20, &unk_27D7BD4A0, &unk_227684BB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    *v9 = *v21;
    swift_storeEnumTagMultiPayload();
    v23 = v22;
    v33(v9);

    v24 = &unk_27D7BD3E0;
    v25 = &unk_227684B20;
    v26 = v9;
  }

  else
  {
    sub_226E95D18(v21, v17, &qword_27D7B94C0, &unk_2276874A0);
    v31(v17);
    v27 = sub_227669290();
    v28 = swift_allocObject();
    *(v28 + 16) = v33;
    *(v28 + 24) = v34;

    v27(sub_226E937DC, v28);

    (*(v32 + 8))(v13, v10);
    v26 = v17;
    v24 = &qword_27D7B94C0;
    v25 = &unk_2276874A0;
  }

  return sub_226E97D1C(v26, v24, v25);
}

uint64_t sub_2273F08DC(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD568, &unk_2276855D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC680, &unk_22767E400);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &qword_27D7BD568, &unk_2276855D0);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

uint64_t sub_2273F0AF0(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD480, &unk_227684B90);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC640, &qword_22767E390);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &unk_27D7BD480, &unk_227684B90);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

uint64_t sub_2273F0D04(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD468, &qword_227684B78);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD460, &unk_22767E380);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &qword_27D7BD468, &qword_227684B78);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E93814, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_2273F0F18(void *a1, char a2, void (*a3)(char *), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  if (a2)
  {
    v21 = a1;
    v22 = 1;
    v16 = a1;
    a5(&v21);
    sub_226EB4548(a1, 1);
  }

  else
  {
    v20 = a1 & 1;
    a3(&v20);
    v17 = sub_227669290();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_226EB4544, v18);

    (*(v12 + 8))(v15, v11);
  }
}

void sub_2273F10C4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_227668A00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD468, &qword_227684B78);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_226E93170(a1, v23 - v17, &qword_27D7BD468, &qword_227684B78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_226EB4544, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

void sub_2273F13A4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_227668B50();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD480, &unk_227684B90);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_226E93170(a1, v23 - v17, &unk_27D7BD480, &unk_227684B90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_226EB4544, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

void sub_2273F1684(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_2276668F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3E0, &unk_227684B20);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_226E93170(a1, v23 - v17, &unk_27D7BD3E0, &unk_227684B20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_226EB4544, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

void sub_2273F1964(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_227669040();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD4B0, &unk_227684BC0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_226E93170(a1, v23 - v17, &unk_27D7BD4B0, &unk_227684BC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_226EB4544, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

void sub_2273F1C44(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_2276638D0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBD20, &unk_227684BF0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_226E93170(a1, v23 - v17, &unk_27D7BBD20, &unk_227684BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_226EB4544, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

void sub_2273F1F24(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_227667A70();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA400, &unk_227684C10);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_226E93170(a1, v23 - v17, &qword_27D7BA400, &unk_227684C10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_226EB4544, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

void sub_2273F2204(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v25 = a2;
  v26 = a4;
  v24[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8C0, &qword_22767F780);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD568, &unk_2276855D0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (v24 - v18);
  sub_226E93170(a1, v24 - v18, &qword_27D7BD568, &unk_2276855D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v19;
    v20 = v27;
    v28 = 1;
    v21 = v27;
    v26(&v27);
  }

  else
  {
    sub_226E95D18(v19, v15, &unk_27D7BB8C0, &qword_22767F780);
    v25(v15);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v26;
    *(v23 + 24) = a5;

    v22(sub_226EB4544, v23);

    (*(v8 + 8))(v11, v7);
    sub_226E97D1C(v15, &unk_27D7BB8C0, &qword_22767F780);
  }
}

void sub_2273F24B4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_227665630();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD5A8, &unk_227685610);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_226E93170(a1, v23 - v17, &qword_27D7BD5A8, &unk_227685610);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_226EB4544, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

void sub_2273F2794(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_227665E80();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD5C0, &qword_227684C60);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_226E93170(a1, v23 - v17, &qword_27D7BD5C0, &qword_227684C60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_226EB4544, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

void sub_2273F2A74(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_227663CA0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBD30, &qword_22767BFC8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_226E93170(a1, v23 - v17, &unk_27D7BBD30, &qword_22767BFC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_226EB4544, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_2273F2D54(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBD48, &qword_22767C010);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD680, &unk_227680050);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &qword_27D7BBD48, &qword_22767C010);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E937DC, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

uint64_t sub_2273F2F68(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v28[1] = a3;
  v29 = a2;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD428, &qword_227684B48);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v28 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD418, &unk_227684B38);
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - v11;
  v13 = sub_2276642E0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD448, &unk_22768B800);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (v28 - v20);
  sub_226E93170(v32, v28 - v20, &qword_27D7BD448, &unk_22768B800);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    *v8 = *v21;
    swift_storeEnumTagMultiPayload();
    v23 = v22;
    v33(v8);

    return sub_226E97D1C(v8, &qword_27D7BD428, &qword_227684B48);
  }

  else
  {
    (*(v14 + 32))(v17, v21, v13);
    v29(v17);
    v25 = v31;
    v26 = sub_227669290();
    v27 = swift_allocObject();
    *(v27 + 16) = v33;
    *(v27 + 24) = v34;

    v26(sub_226E93814, v27);

    (*(v30 + 8))(v12, v25);
    return (*(v14 + 8))(v17, v13);
  }
}

void sub_2273F32B4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v25 = a2;
  v26 = a4;
  v24[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD420, &qword_227679D40);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v24 - v10;
  v12 = type metadata accessor for AssetRequestProvider.CatalogURLs();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD428, &qword_227684B48);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (v24 - v18);
  sub_226E93170(a1, v24 - v18, &qword_27D7BD428, &qword_227684B48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v19;
    v20 = v27;
    v28 = 1;
    v21 = v27;
    v26(&v27);
  }

  else
  {
    sub_2273F60B0(v19, v15, type metadata accessor for AssetRequestProvider.CatalogURLs);
    v25(v15);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v26;
    *(v23 + 24) = a5;

    v22(sub_226E9F880, v23);

    (*(v8 + 8))(v11, v7);
    sub_2273F6118(v15, type metadata accessor for AssetRequestProvider.CatalogURLs);
  }
}

uint64_t sub_2273F3558(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD9C0, &qword_227684EF8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85B8, &unk_227671050);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_226E97D1C(v13, &unk_27D7BD9C0, &qword_227684EF8);
  }

  else
  {
    a3(v17);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_226E937DC, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_2273F376C(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD3C8, &qword_22768B560);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_2276668F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3E0, &unk_227684B20);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_226E93170(a1, v23 - v17, &unk_27D7BD3E0, &unk_227684B20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_226E9F880, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

void sub_2273F3A4C(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_227667670();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD450, &qword_227684B70);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v23 - v17);
  sub_226E93170(a1, v23 - v17, &unk_27D7BD450, &qword_227684B70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_227669290();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_226EB4544, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}