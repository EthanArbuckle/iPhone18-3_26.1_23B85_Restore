uint64_t sub_226EAD594()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226EAD5CC()
{
  v1 = sub_22766B5F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226EAD654()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_226EAD694()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EAD6D4()
{
  v1 = sub_22766B5F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t objectdestroy_33Tm(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 40));

  return MEMORY[0x2821FE8E8](v1, 48, 7);
}

uint64_t objectdestroy_33Tm_0()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EAD8C8()
{
  v0 = sub_22766BCB0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766B820();
  sub_22766BCC0();
  sub_22766B5F0();
  sub_22766B690();
  sub_22766BA10();
  sub_22766BA00();
  return (*(v1 + 8))(v4, v0);
}

id sub_226EADA78@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v38 = a1;
  v43 = a4;
  v44 = a3;
  v41 = a2;
  v35 = a5;
  v6 = sub_22766BD90();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v37 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9FC0, qword_227677150);
  v9 = sub_22766BD30();
  v40 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v42 = 4 * v11;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_227675BE0;
  v36 = v13;
  v14 = (v13 + v12);
  v15 = *&a2[OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_scriptConfiguration];
  *v14 = 0xD000000000000013;
  v14[1] = 0x80000002276980A0;
  v14[2] = v15;
  v16 = *MEMORY[0x277D22448];
  v17 = *(v10 + 104);
  v17(v14, v16, v9);
  v18 = (v14 + v11);
  v19 = objc_allocWithZone(type metadata accessor for ScriptStorefrontCache());
  v20 = v15;
  v21 = [v19 init];
  *v18 = 0xD000000000000015;
  v18[1] = 0x80000002276980C0;
  v18[2] = v21;
  v22 = v40;
  v17((v14 + v11), v16, v40);
  v23 = (v14 + 2 * v11);
  v24 = swift_allocObject();
  v25 = v41;
  *(v24 + 16) = v41;
  *v23 = 0xD000000000000015;
  v23[1] = 0x8000000227698060;
  v23[2] = sub_226EADE5C;
  v23[3] = v24;
  v26 = *MEMORY[0x277D22450];
  v17(v23, v26, v22);
  v27 = (v14 + 3 * v11);
  v28 = swift_allocObject();
  *(v28 + 16) = v43;
  *v27 = 0xD000000000000010;
  v27[1] = 0x8000000227698080;
  v27[2] = sub_226EDFD3C;
  v27[3] = v28;
  v17(v27, v26, v22);
  v29 = v42;
  sub_226E91B50(v44, v14 + v42);
  v17((v14 + v29), *MEMORY[0x277D22460], v22);
  v30 = objc_allocWithZone(MEMORY[0x277CD4660]);
  v31 = v25;
  result = [v30 init];
  if (result)
  {
    sub_22766BDB0();
    sub_22766BD80();

    v33 = v39;
    result = sub_22766BDA0();
    if (!v33)
    {
      *v35 = result;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_226EADE0C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EADED0(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = sub_22766B390();
  v2[24] = v3;
  v4 = *(v3 - 8);
  v2[25] = v4;
  v5 = *(v4 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226EADF9C, 0, 0);
}

uint64_t sub_226EADF9C()
{
  v1 = v0[23];
  if (sub_226EAE084("AchievementSystem is not active, not populating progress."))
  {
    v2 = swift_task_alloc();
    v0[28] = v2;
    *v2 = v0;
    v2[1] = sub_226ECD0AC;
    v3 = v0[22];
    v4 = v0[23];

    return sub_226EB6FEC(v3);
  }

  else
  {
    v7 = v0[26];
    v6 = v0[27];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_226EAE084(const char *a1)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  if ((v8 & 1) == 0)
  {
    sub_22766A610();
    v9 = sub_22766B380();
    v10 = sub_22766C890();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_226E8E000, v9, v10, a1, v11, 2u);
      MEMORY[0x22AA9A450](v11, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }

  return v8;
}

id sub_226EAE1D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4[1];
  v6 = *v4 + v5;
  if (__OFADD__(*v4, v5))
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = v6 + a2;
  if (__OFADD__(v6, a2))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = [objc_allocWithZone(MEMORY[0x277CE8D50]) init];
  sub_22766CE20();

  v9 = sub_22766D140();
  MEMORY[0x22AA98450](v9);

  v10 = sub_22766BFD0();

  [v8 setUniqueName_];

  [v8 setVersion_];
  [v8 setMinimumEngineVersion_];
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD00000000000003BLL, 0x800000022769CE20);
  v11 = sub_22766D140();
  MEMORY[0x22AA98450](v11);

  v12 = sub_22766BFD0();

  [v8 setPredicate_];

  [v8 setEarnLimit_];
  v13 = sub_22766BFD0();
  [v8 setProgressExpression_];

  sub_22766D140();
  v14 = sub_22766BFD0();

  [v8 setGoalExpression_];

  v15 = [objc_opt_self() countUnit];
  [v8 setCanonicalUnit_];

  [v8 setVisibilityPredicate_];
  [v8 setDuplicateRemovalStrategy_];
  result = [v8 setEarnDateStrategy_];
  if (v7 < 0)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  [v8 setDisplayOrder_];
  if ((a4 & 1) == 0)
  {
    sub_22766CE20();

    v17 = sub_22766D140();
    MEMORY[0x22AA98450](v17);

    v18 = sub_22766BFD0();

    [v8 setPrerequisiteTemplateName_];
  }

  return v8;
}

uint64_t sub_226EAE564()
{
  v12 = MEMORY[0x277D84F90];
  v1 = 12;
  sub_22766CF30();
  v2 = 0;
  while (2)
  {
    v3 = v1;
    v1 = byte_283A92410[v2 + 32];
    v4 = 1;
    v5 = 10;
    v6 = 0;
    switch(v3)
    {
      case 1:
        v5 = 25;
        goto LABEL_14;
      case 2:
        v5 = 50;
        goto LABEL_14;
      case 3:
        v5 = 100;
        goto LABEL_14;
      case 4:
        v5 = 250;
        goto LABEL_14;
      case 5:
        v5 = 500;
        goto LABEL_14;
      case 6:
        v5 = 750;
        goto LABEL_14;
      case 7:
        v5 = 1000;
        goto LABEL_14;
      case 8:
        v5 = 1250;
        goto LABEL_14;
      case 9:
        v5 = 1500;
        goto LABEL_14;
      case 10:
        v5 = 1750;
        goto LABEL_14;
      case 11:
        v5 = 2000;
        goto LABEL_14;
      case 12:
        goto LABEL_15;
      default:
LABEL_14:
        v4 = 0;
        v6 = v5;
LABEL_15:
        v7 = v2 + 1;
        v8 = *(v0 + 16);
        sub_226EAE1D0(qword_22767EF88[byte_283A92410[v2 + 32]], v2, v6, v4);
        sub_22766CF00();
        v9 = *(v12 + 16);
        sub_22766CF40();
        sub_22766CF50();
        sub_22766CF10();
        v2 = v7;
        if (v7 != 12)
        {
          continue;
        }

        v10 = *(v0 + 8);

        return v10(v12);
    }
  }
}

uint64_t sub_226EAE72C(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = a1;

  return MEMORY[0x2822009F8](sub_226EAE82C, 0, 0);
}

uint64_t sub_226EAE82C()
{
  v1 = v0[16];
  v2 = v0[17];
  v2[4] = v0[19];
  v0[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_227670B30;
  sub_226EAE94C();
  *(v3 + 32) = v4;
  v2[5] = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_227670B30;
  sub_226EB2E64();
  *(v5 + 32) = v6;
  v2[6] = v5;
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_226EB82F0;
  v8 = v0[16];

  return sub_226EAEBAC(0);
}

void sub_226EAE94C()
{
  v1 = v0[2];
  v2 = *v0 + v1;
  if (__OFADD__(*v0, v1))
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CE8D50]) init];
  v5 = sub_22766BFD0();
  [v4 setUniqueName_];

  [v4 setVersion_];
  [v4 setMinimumEngineVersion_];
  v6 = sub_22766BFD0();
  [v4 setPredicate_];

  v7 = sub_22766BFD0();
  [v4 setValueExpression_];

  v8 = sub_22766BFD0();
  [v4 setProgressExpression_];

  v9 = sub_22766BFD0();
  [v4 setGoalExpression_];

  [v4 setEarnLimit_];
  [v4 setVisibilityPredicate_];
  [v4 setDuplicateRemovalStrategy_];
  [v4 setDuplicateRemovalCalendarUnit_];
  v10 = [objc_opt_self() countUnit];
  [v4 setCanonicalUnit_];

  [v4 setEarnDateStrategy_];
  if ((v3 & 0x8000000000000000) == 0)
  {
    [v4 setDisplayOrder_];
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_226EAEBAC(char a1)
{
  *(v2 + 264) = v1;
  *(v2 + 336) = a1;
  v3 = sub_22766B390();
  *(v2 + 272) = v3;
  v4 = *(v3 - 8);
  *(v2 + 280) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 288) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC7E8, &unk_22767EF78);
  *(v2 + 296) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v2 + 304) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226EAECAC, 0, 0);
}

uint64_t sub_226EAECAC()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 336);
  v3 = v1[14];
  v4 = v1[15];
  __swift_project_boxed_opaque_existential_0(v1 + 11, v3);
  sub_226EB3000(v1, v0 + 16);
  v5 = swift_allocObject();
  *(v0 + 312) = v5;
  v6 = *(v0 + 192);
  *(v5 + 176) = *(v0 + 176);
  *(v5 + 192) = v6;
  *(v5 + 208) = *(v0 + 208);
  v7 = *(v0 + 128);
  *(v5 + 112) = *(v0 + 112);
  *(v5 + 128) = v7;
  v8 = *(v0 + 160);
  *(v5 + 144) = *(v0 + 144);
  *(v5 + 160) = v8;
  v9 = *(v0 + 64);
  *(v5 + 48) = *(v0 + 48);
  *(v5 + 64) = v9;
  v10 = *(v0 + 96);
  *(v5 + 80) = *(v0 + 80);
  *(v5 + 96) = v10;
  v11 = *(v0 + 32);
  *(v5 + 16) = *(v0 + 16);
  *(v5 + 32) = v11;
  *(v5 + 224) = v2;
  v12 = *(v4 + 24);
  v17 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v0 + 320) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC7E0, &qword_22767EF70);
  *v14 = v0;
  v14[1] = sub_226EBB704;

  return (v17)(v0 + 248, sub_226EAEE88, v5, v15, v3, v4);
}

uint64_t sub_226EAEED0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t (*a5)(char *)@<X4>, void **a6@<X8>)
{
  v74 = a5;
  v75 = a4;
  v71 = a3;
  v70 = a6;
  v76[5] = *MEMORY[0x277D85DE8];
  v9 = sub_227667C20();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227663FA0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *__swift_project_boxed_opaque_existential_0((a2 + 128), *(a2 + 152));
  result = sub_226EAF48C(a1, v18);
  if (v6)
  {
    goto LABEL_29;
  }

  v21 = v70;
  v68 = a1;
  v69 = v18;
  v63 = 0;
  if (v71)
  {
    v22 = sub_227663F40();
  }

  else
  {
    v22 = sub_227663EE0();
  }

  v23 = v22;
  v24 = v21;
  v25 = *(v22 + 32);
  v62 = ((1 << v25) + 63) >> 6;
  v65 = v15;
  v66 = v14;
  if ((v25 & 0x3Fu) > 0xD)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v61 = &v61;
    MEMORY[0x28223BE20](v22);
    v64 = &v61 - ((v26 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v64, v26);
    v67 = 0;
    v27 = 0;
    v28 = v23 + 56;
    v29 = 1 << *(v23 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & *(v23 + 56);
    v24 = ((v29 + 63) >> 6);
    v73 = v10 + 16;
    v74 = v23;
    v72 = v10 + 8;
    while (v31)
    {
      v32 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v33 = v32 | (v27 << 6);
      v34 = v74;
LABEL_16:
      v37 = (*(v10 + 16))(v13, *(v34 + 6) + *(v10 + 72) * v33, v9);
      v23 = v75(v37);
      (*(v10 + 8))(v13, v9);
      if (v23)
      {
        *&v64[(v33 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v33;
        if (__OFADD__(v67++, 1))
        {
          __break(1u);
LABEL_20:
          v39 = sub_226EB10D0(v64, v62, v67, v34);
          v24 = v70;
          goto LABEL_21;
        }
      }
    }

    v35 = v27;
    v33 = v68;
    v34 = v74;
    while (1)
    {
      v27 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v27 >= v24)
      {
        goto LABEL_20;
      }

      v36 = *(v28 + 8 * v27);
      ++v35;
      if (v36)
      {
        v31 = (v36 - 1) & v36;
        v33 = __clz(__rbit64(v36)) | (v27 << 6);
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_31:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v46 = swift_slowAlloc();
  v58 = v63;
  v59 = sub_2272C5D44(v46, v62, v23, v74, 0);
  v63 = v58;
  if (!v58)
  {
    v60 = v59;

    MEMORY[0x22AA9A450](v46, -1, -1);
    v39 = v60;
    v33 = v68;
LABEL_21:
    v40 = v63;
    v41 = sub_226EB13F8(v39);

    v42 = sub_226EB16F8(v33);
    v44 = v65;
    v43 = v66;
    v45 = v69;
    if (v40)
    {
      (*(v65 + 8))(v69, v66);

LABEL_29:
      v57 = *MEMORY[0x277D85DE8];
      return result;
    }

    v46 = sub_226EBAB3C(v42, v41, v71 & 1);
    v75 = 0;

    v47 = v46[2];
    if (v47)
    {
      v48 = sub_226EB7448(v46[2], 0);
      v49 = *(sub_227666FF0() - 8);
      v50 = sub_226EB7718(v76, &v48[(*(v49 + 80) + 32) & ~*(v49 + 80)], v47, v46);
      v51 = v76[0];
      v52 = v76[1];
      v53 = v76[2];
      v54 = v76[3];
      v55 = v76[4];

      sub_226EBB218(v51, v52, v53, v54, v55);
      if (v50 != v47)
      {
        __break(1u);
      }

      v44 = v65;
      v43 = v66;
      v45 = v69;
    }

    else
    {
      v48 = MEMORY[0x277D84F90];
    }

    v76[0] = v48;
    v56 = v75;
    sub_226EBB224(v76);
    if (!v56)
    {

      result = (*(v44 + 8))(v45, v43);
      *v24 = v76[0];
      goto LABEL_29;
    }

    __break(1u);
  }

  result = MEMORY[0x22AA9A450](v46, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_226EAF48C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB3E8, &unk_227686370);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v119 = v107 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB3F0, &unk_22767A950);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v118 = v107 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9EE8, &qword_227676AA8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v117 = v107 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F20, &qword_22767A960);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v116 = v107 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB3F8, &qword_22767A968);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v115 = v107 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB400, &qword_22767A970);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v114 = v107 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB408, &qword_22767A978);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v122 = v107 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB410, &qword_22767A980);
  v112 = *(v24 - 8);
  v113 = v24;
  v25 = *(v112 + 64);
  MEMORY[0x28223BE20](v24);
  v111 = v107 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB418, &qword_22767A988);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v121 = v107 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB420, &qword_22767A990);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = v107 - v32;
  v124 = sub_227663FA0();
  v127 = *(v124 - 8);
  v34 = *(v127 + 64);
  v35 = MEMORY[0x28223BE20](v124);
  v120 = v107 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = v107 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = v107 - v40;
  sub_226EB00A4(v107 - v40);
  v42 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v43 = *v42;
  v44 = v42[1];
  v45 = *(v42 + 16);
  v46 = v42[3];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB428, &qword_22767A998);
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  v50 = swift_allocObject();
  v51 = v43;
  v52 = v44;

  v53 = sub_22766A070();
  *(v50 + 16) = v51;
  *(v50 + 24) = v52;
  *(v50 + 32) = v45;
  *(v50 + 40) = v46;
  v54 = MEMORY[0x22AA99A00](v53);
  v55 = v33;
  v56 = v123;
  sub_226EB0B24(v50, v33);
  if (v56)
  {
    objc_autoreleasePoolPop(v54);
    swift_setDeallocating();

    v57 = *(v50 + 40);

    v58 = qword_2813B2078;
    v59 = sub_22766A100();
    (*(*(v59 - 8) + 8))(v50 + v58, v59);
    v60 = *(*v50 + 48);
    v61 = *(*v50 + 52);
    swift_deallocClassInstance();
    return (*(v127 + 8))(v41, v124);
  }

  else
  {
    v123 = 0;
    v63 = v41;
    objc_autoreleasePoolPop(v54);
    swift_setDeallocating();

    v64 = *(v50 + 40);

    v65 = qword_2813B2078;
    v66 = sub_22766A100();
    (*(*(v66 - 8) + 8))(v50 + v65, v66);
    v67 = *(*v50 + 48);
    v68 = *(*v50 + 52);
    swift_deallocClassInstance();
    v69 = v127;
    v70 = *(v127 + 48);
    v71 = v33;
    v72 = v124;
    if (v70(v71, 1, v124) == 1)
    {
      v73 = v63;
      (*(v69 + 16))(v39, v63, v72);
      v74 = v70(v55, 1, v72);
      v76 = v120;
      v75 = v121;
      if (v74 != 1)
      {
        sub_226E97D1C(v55, &qword_27D7BB420, &qword_22767A990);
      }
    }

    else
    {
      (*(v69 + 32))(v39, v55, v72);
      v73 = v63;
      v76 = v120;
      v75 = v121;
    }

    v108 = v73;
    v77 = v39;
    v78 = sub_227663F80();
    v79 = sub_227663F80();
    v80 = *(v69 + 16);
    v109 = v77;
    if (v78 >= v79)
    {
      v81 = v77;
    }

    else
    {
      v81 = v73;
    }

    v80(v76, v81, v72);
    v82 = sub_227668CB0();
    (*(*(v82 - 8) + 56))(v75, 1, 1, v82);
    v83 = v114;
    v84 = v122;
    if (qword_28139A408 != -1)
    {
      swift_once();
    }

    v85 = v113;
    v86 = __swift_project_value_buffer(v113, qword_28139A410);
    v88 = v111;
    v87 = v112;
    v89 = *(v112 + 16);
    v89(v111, v86, v85);
    sub_227669730();
    v90 = *(v87 + 8);
    v90(v88, v85);
    v112 = v125;
    v107[3] = v126;
    v91 = sub_227668300();
    (*(*(v91 - 8) + 56))(v84, 1, 1, v91);
    v89(v88, v86, v85);
    sub_227669730();
    v90(v88, v85);
    v92 = sub_227666ED0();
    (*(*(v92 - 8) + 56))(v83, 1, 1, v92);
    v93 = sub_227666CB0();
    v94 = v115;
    (*(*(v93 - 8) + 56))(v115, 1, 1, v93);
    v95 = sub_227668970();
    v96 = v116;
    (*(*(v95 - 8) + 56))(v116, 1, 1, v95);
    v97 = sub_227667500();
    v98 = v117;
    (*(*(v97 - 8) + 56))(v117, 1, 1, v97);
    v99 = sub_2276676D0();
    v100 = v118;
    (*(*(v99 - 8) + 56))(v118, 1, 1, v99);
    v101 = sub_227667370();
    v102 = v119;
    (*(*(v101 - 8) + 56))(v119, 1, 1, v101);
    v104 = v120;
    v103 = v121;
    sub_227663F90();
    sub_226E97D1C(v102, &qword_27D7BB3E8, &unk_227686370);
    sub_226E97D1C(v100, &qword_27D7BB3F0, &unk_22767A950);
    sub_226E97D1C(v98, &qword_27D7B9EE8, &qword_227676AA8);
    sub_226E97D1C(v96, &qword_27D7B9F20, &qword_22767A960);
    sub_226E97D1C(v94, &qword_27D7BB3F8, &qword_22767A968);
    sub_226E97D1C(v83, &qword_27D7BB400, &qword_22767A970);
    sub_226E97D1C(v122, &qword_27D7BB408, &qword_22767A978);
    sub_226E97D1C(v103, &qword_27D7BB418, &qword_22767A988);
    v105 = *(v127 + 8);
    v106 = v124;
    v105(v104, v124);
    v105(v109, v106);
    return (v105)(v108, v106);
  }
}

uint64_t sub_226EB00A4@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v1 = sub_227667370();
  v61 = *(v1 - 8);
  v62 = v1;
  v2 = *(v61 + 64);
  MEMORY[0x28223BE20](v1);
  v60 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2276676D0();
  v55 = *(v4 - 8);
  v56 = v4;
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v4);
  v59 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_227667500();
  v52 = *(v7 - 8);
  v53 = v7;
  v8 = *(v52 + 64);
  MEMORY[0x28223BE20](v7);
  v58 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_227668970();
  v10 = *(v51 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v51);
  v57 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_227666CB0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v66 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_227666ED0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v65 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_227668300();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v64 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_227668CB0();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28139BBA8 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v25, qword_28139BBB0);
  v31 = *(v26 + 16);
  v54 = v29;
  v31(v29, v30, v25);
  if (qword_28139BA90 != -1)
  {
    swift_once();
  }

  if (qword_28139BA58 != -1)
  {
    swift_once();
  }

  if (qword_28139BB00 != -1)
  {
    swift_once();
  }

  if (qword_28139BB18 != -1)
  {
    swift_once();
  }

  if (qword_28139BB50 != -1)
  {
    swift_once();
  }

  if (qword_28139BBC8 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v21, qword_28139BBD0);
  (*(v22 + 16))(v64, v32, v21);
  if (qword_28139BB40 != -1)
  {
    swift_once();
  }

  v33 = qword_28139BAB0;

  v34 = v59;
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = __swift_project_value_buffer(v17, qword_28139BAB8);
  (*(v18 + 16))(v65, v35, v17);
  if (qword_28139BB98 != -1)
  {
    swift_once();
  }

  v36 = qword_28139BAA0;

  if (v36 != -1)
  {
    swift_once();
  }

  v37 = qword_28139BA48;

  if (v37 != -1)
  {
    swift_once();
  }

  if (qword_28139BC10 != -1)
  {
    swift_once();
  }

  v38 = __swift_project_value_buffer(v13, qword_28139BC18);
  (*(v14 + 16))(v66, v38, v13);
  if (qword_28139BA70 != -1)
  {
    swift_once();
  }

  v39 = v51;
  v40 = __swift_project_value_buffer(v51, qword_28139BA78);
  (*(v10 + 16))(v57, v40, v39);
  if (qword_28139BAD8 != -1)
  {
    swift_once();
  }

  v41 = v53;
  v42 = __swift_project_value_buffer(v53, qword_28139BAE0);
  (*(v52 + 16))(v58, v42, v41);
  if (qword_28139BB68 != -1)
  {
    swift_once();
  }

  v43 = v56;
  v44 = __swift_project_value_buffer(v56, qword_28139BB70);
  (*(v55 + 16))(v34, v44, v43);
  if (qword_28139BB88 != -1)
  {
    swift_once();
  }

  v45 = qword_28139BB28;

  if (v45 != -1)
  {
    swift_once();
  }

  v46 = qword_28139BBF0;

  if (v46 != -1)
  {
    swift_once();
  }

  v47 = v62;
  v48 = __swift_project_value_buffer(v62, qword_28139BBF8);
  (*(v61 + 16))(v60, v48, v47);
  return sub_227663E70();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_226EB0B24(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_226EB0E3C(0);
  if (v2)
  {
    return;
  }

  v6 = v5;
  [v5 setReturnsObjectsAsFaults_];
  [v6 setFetchLimit_];
  v7 = *(a1 + 24);
  type metadata accessor for ManagedConfiguration();
  v8 = sub_22766C9E0();
  if (v8 >> 62)
  {
    v17 = v8;
    v18 = sub_22766CD20();
    v8 = v17;
    if (v18)
    {
      goto LABEL_4;
    }

LABEL_12:

    v19 = sub_227663FA0();
    (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
    return;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x22AA991A0](0);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v9 = *(v8 + 32);
  }

  v10 = v9;

  v11 = v10;
  v12 = [v11 data];
  if (v12)
  {
    v13 = v12;
    sub_227662590();

    v14 = sub_227663FA0();
    sub_226EB1040(&qword_28139BA28, MEMORY[0x277D50560]);
    sub_2276683D0();

    (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
  }

  else
  {
    v15 = sub_227664DD0();
    sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D51028], v15);
    swift_willThrow();
  }
}

uint64_t sub_226EB0E90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226EB0ED8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226EB0F20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226EB0F68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226EB0FB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226EB0FF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226EB1040(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226EB1088(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226EB10D0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_227667C20();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A40, &qword_22767DE30);
  result = sub_22766CDE0();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_226E9CF88(&qword_28139B4E0, MEMORY[0x277D531E0]);
    result = sub_22766BF50();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_226EB13F8(uint64_t a1)
{
  v33 = sub_227667C20();
  v3 = *(v33 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v33);
  v32 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v26[1] = v1;
    v37 = MEMORY[0x277D84F90];
    sub_226EB5238(0, v6, 0);
    v8 = -1 << *(a1 + 32);
    v35 = a1 + 56;
    v36 = v37;
    result = sub_22766CC90();
    v9 = result;
    v10 = 0;
    v30 = v3 + 8;
    v31 = v3 + 16;
    v27 = a1 + 64;
    v28 = v6;
    v29 = v3;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v35 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_22;
      }

      v34 = *(a1 + 36);
      v13 = v32;
      v14 = v33;
      (*(v3 + 16))(v32, *(a1 + 48) + *(v3 + 72) * v9, v33);
      v15 = sub_227667BF0();
      result = (*(v3 + 8))(v13, v14);
      v16 = v36;
      v37 = v36;
      v18 = *(v36 + 16);
      v17 = *(v36 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_226EB5238((v17 > 1), v18 + 1, 1);
        v16 = v37;
      }

      *(v16 + 16) = v18 + 1;
      *(v16 + 8 * v18 + 32) = v15;
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_23;
      }

      v19 = *(v35 + 8 * v12);
      if ((v19 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      v36 = v16;
      if (v34 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v9 & 0x3F));
      if (v20)
      {
        v11 = __clz(__rbit64(v20)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v3 = v29;
      }

      else
      {
        v21 = v12 << 6;
        v22 = v12 + 1;
        v23 = (v27 + 8 * v12);
        v3 = v29;
        while (v22 < (v11 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_226EB526C(v9, v34, 0);
            v11 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v9, v34, 0);
      }

LABEL_4:
      ++v10;
      v9 = v11;
      if (v10 == v28)
      {
        return v36;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

char *sub_226EB16F8(uint64_t a1)
{
  v29 = sub_227669890();
  v25 = *(v29 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v29);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A830();
  sub_226E91B50(a1, v28);
  sub_226E9DD3C("CatalogDataStore::queryAllCatalogModalityReferences", 51, 2, &dword_226E8E000, 0, v26);
  v6 = __swift_project_boxed_opaque_existential_0(v28, v28[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FB0, &qword_22767CDE0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = v7;
  v16 = v8;

  sub_22766A070();
  *(v14 + 16) = v15;
  *(v14 + 24) = v16;
  *(v14 + 32) = v9;
  *(v14 + 40) = v10;
  v17 = sub_226EB1A68(100);
  swift_setDeallocating();

  v18 = *(v14 + 40);

  v19 = qword_2813B2078;
  v20 = sub_22766A100();
  (*(*(v20 - 8) + 8))(v14 + v19, v20);
  v21 = *(*v14 + 48);
  v22 = *(*v14 + 52);
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_0(v26, v27);
  sub_227669930();
  if (v1)
  {
    swift_willThrow();
    __swift_project_boxed_opaque_existential_0(v26, v27);
    sub_227669920();
  }

  (*(v25 + 8))(v5, v29);
  __swift_destroy_boxed_opaque_existential_0(v26);
  __swift_destroy_boxed_opaque_existential_0(v28);
  return v17;
}

char *sub_226EB1A68(uint64_t a1)
{
  v4 = sub_227669A90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC480, &qword_22767DB18);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = sub_226EB3A78(a1);
  if (!v2)
  {
    v14 = v13;
    v26 = 0;
    v15 = *(v1 + 2);
    if (sub_226EB1D68(v15))
    {
      v16 = sub_22766C2B0();
    }

    else
    {
      v16 = 0;
    }

    [v14 setRelationshipKeyPathsForPrefetching_];

    (*(v5 + 104))(v8, *MEMORY[0x277D4F000], v4);
    v28 = 1;
    v17 = v15;
    sub_227669760();
    *&v12[*(v9 + 28)] = v14;
    *&v12[*(v9 + 32)] = v17;
    v18 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
    v1 = v12;
    v19 = sub_227669730();
    if (v27 == 1)
    {
      sub_227262EBC(MEMORY[0x277D84FA0], sub_226EB2A38, 0);
      v1 = v20;
    }

    else
    {
      v21 = MEMORY[0x22AA99A00](v19);
      v22 = v26;
      v23 = sub_22725A9B0(v12, MEMORY[0x277D84FA0], sub_226EB2A38, 0);
      if (!v22)
      {
        v1 = v23;
      }

      objc_autoreleasePoolPop(v21);
    }

    sub_226E97D1C(v12, &qword_27D7BC480, &qword_22767DB18);
  }

  return v1;
}

uint64_t sub_226EB1D68(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v6 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v6 + 56) + 8 * v15);

    v20 = v19;
    v21 = [v20 userInfo];
    if (!v21)
    {

      v32 = 0u;
      v33 = 0u;
      goto LABEL_8;
    }

    v22 = v21;
    v23 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v23 + 16) || (v24 = sub_226E9BF6C(&v31), (v25 & 1) == 0))
    {

      sub_226E9B62C(&v31);
      v32 = 0u;
      v33 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v23 + 56) + 32 * v24, &v32);
    sub_226E9B62C(&v31);

    if (*(&v33 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = sub_226EB5278();

        if ((v26 & 1) == 0)
        {
          goto LABEL_28;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226EB3F78(0, *(v30 + 16) + 1, 1, v30);
          v30 = result;
        }

        v28 = *(v30 + 16);
        v27 = *(v30 + 24);
        if (v28 >= v27 >> 1)
        {
          result = sub_226EB3F78((v27 > 1), v28 + 1, 1, v30);
          v30 = result;
        }

        *(v30 + 16) = v28 + 1;
        v29 = v30 + 16 * v28;
        *(v29 + 32) = v17;
        *(v29 + 40) = v18;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      result = sub_226E97D1C(&v32, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v30;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226EB218C(void *a1, void (*a2)(BOOL, unint64_t, uint64_t), void (*a3)(void), SEL *a4, void (*a5)(void), uint64_t a6)
{
  v47 = a5;
  v48 = a6;
  v49 = a4;
  v50 = a3;
  v52 = sub_2276622D0();
  v46 = *(v52 - 8);
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v52);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 count];
  v60 = MEMORY[0x277D84F90];
  v45 = a2;
  a2(0, v11 & ~(v11 >> 63), 0);
  v12 = v60;
  v51 = v10;
  result = sub_22766CA80();
  if (v11 < 0)
  {
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
    if (v11)
    {
      sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178]);
      while (1)
      {
        result = sub_22766CBB0();
        if (!v59)
        {
          goto LABEL_25;
        }

        sub_226E97CC0(&v58, &v55);
        v50(0);
        if (!swift_dynamicCast())
        {
          break;
        }

        v14 = v53;
        v15 = [v14 *v49];
        if (!v15)
        {

          (*(v46 + 8))(v51, v52);
          v38 = sub_227664DD0();
          sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
          swift_allocError();
          (*(*(v38 - 8) + 104))(v39, *MEMORY[0x277D51028], v38);
          swift_willThrow();

          goto LABEL_19;
        }

        v16 = v15;
        v17 = sub_22766C000();
        v19 = v18;

        v53 = v17;
        v54 = v19;
        v47();
        sub_227663AE0();

        v20 = v55;
        v21 = v56;
        __swift_destroy_boxed_opaque_existential_0(&v58);
        v60 = v12;
        v23 = *(v12 + 16);
        v22 = *(v12 + 24);
        if (v23 >= v22 >> 1)
        {
          v45(v22 > 1, v23 + 1, 1);
          v12 = v60;
        }

        *(v12 + 16) = v23 + 1;
        v24 = v12 + 24 * v23;
        *(v24 + 32) = v20;
        *(v24 + 48) = v21;
        if (!--v11)
        {
          goto LABEL_10;
        }
      }

      (*(v46 + 8))(v51, v52);
      v36 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D51028], v36);
      swift_willThrow();

LABEL_19:
      __swift_destroy_boxed_opaque_existential_0(&v58);
      return v12;
    }

LABEL_10:
    sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178]);
    sub_22766CBB0();
    if (v57)
    {
      while (1)
      {
        sub_226F04970(&v55, &v58);
        sub_226E97CC0(&v58, &v55);
        v50(0);
        if (!swift_dynamicCast())
        {
          (*(v46 + 8))(v51, v52);
          v40 = sub_227664DD0();
          sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
          swift_allocError();
          (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D51028], v40);
          swift_willThrow();
          goto LABEL_22;
        }

        v25 = v53;
        v26 = [v25 *v49];
        if (!v26)
        {
          break;
        }

        v27 = v26;
        v28 = sub_22766C000();
        v30 = v29;

        v53 = v28;
        v54 = v30;
        v47();
        sub_227663AE0();

        __swift_destroy_boxed_opaque_existential_0(&v58);
        v31 = v55;
        v32 = v56;
        v60 = v12;
        v34 = *(v12 + 16);
        v33 = *(v12 + 24);
        if (v34 >= v33 >> 1)
        {
          v44 = v55;
          v45(v33 > 1, v34 + 1, 1);
          v31 = v44;
          v12 = v60;
        }

        *(v12 + 16) = v34 + 1;
        v35 = v12 + 24 * v34;
        *(v35 + 32) = v31;
        *(v35 + 48) = v32;
        sub_22766CBB0();
        if (!v57)
        {
          goto LABEL_16;
        }
      }

      (*(v46 + 8))(v51, v52);
      v42 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v42 - 8) + 104))(v43, *MEMORY[0x277D51028], v42);
      swift_willThrow();

LABEL_22:
      __swift_destroy_boxed_opaque_existential_0(&v58);
    }

    else
    {
LABEL_16:
      (*(v46 + 8))(v51, v52);
      sub_226E97D1C(&v55, &unk_27D7BC990, &qword_227670A30);
    }

    return v12;
  }

  return result;
}

uint64_t sub_226EB2904(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226EB294C(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_22766CF30();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_226E97CC0(i, v6);
    type metadata accessor for ManagedHealthKitActivityType();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_22766CF00();
    v4 = *(v7 + 16);
    sub_22766CF40();
    sub_22766CF50();
    sub_22766CF10();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

void sub_226EB2A38(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D52AF8], sub_226EB5880, sub_226EB58F8);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226EB9D38(v7);

    sub_226EB707C(v8, MEMORY[0x277D52AF8], sub_226EB9F1C);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_226EB2B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t), uint64_t a9, uint64_t *a10, uint64_t *a11, void (*a12)(void))
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a10, a11);
  [*(a3 + *(v19 + 28)) copy];
  sub_22766CC20();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96F8, &qword_2276749C0);
  if (!swift_dynamicCast())
  {
    goto LABEL_8;
  }

  [v33 setReturnsObjectsAsFaults_];
  if (__OFSUB__(a4, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  if (a4 - 1 != a2)
  {
    v22 = 0;
    goto LABEL_10;
  }

  v20 = a4 * a6;
  if ((a4 * a6) >> 64 != (a4 * a6) >> 63)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v21 = __OFSUB__(a5, v20);
  v22 = a5 - v20;
  if (v21)
  {
    __break(1u);
LABEL_8:
    v23 = sub_227664DD0();
    sub_226E9CF88(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D50FF0], v23);
    swift_willThrow();
    return;
  }

LABEL_10:
  v25 = a6 + v22;
  if (__OFADD__(a6, v22))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v33 setFetchBatchSize_];
  [v33 setFetchLimit_];
  v26 = a2 * a6;
  if ((a2 * a6) >> 64 != (a2 * a6) >> 63)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (__OFADD__(a7, v26))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v33 setFetchOffset_];
  v27 = *(a3 + *(v19 + 32));
  a12(0);
  v28 = sub_22766C9E0();
  if (!v12)
  {
    v29 = v28;
    v30 = MEMORY[0x22AA99A00]();
    a8(a1, v29);
    objc_autoreleasePoolPop(v30);

    [v27 reset];
  }
}

uint64_t sub_226EB2DFC(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

void sub_226EB2E64()
{
  v1 = v0[5];
  v2 = *v0 + v1;
  if (__OFADD__(*v0, v1))
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CE8D50]) init];
  v5 = sub_22766BFD0();
  [v4 setUniqueName_];

  [v4 setVersion_];
  [v4 setMinimumEngineVersion_];
  v6 = sub_22766BFD0();
  [v4 setPredicate_];

  [v4 setEarnLimit_];
  [v4 setVisibilityPredicate_];
  [v4 setDuplicateRemovalStrategy_];
  [v4 setDuplicateRemovalCalendarUnit_];
  [v4 setDisplaysEarnedInstanceCount_];
  [v4 setEarnDateStrategy_];
  if ((v3 & 0x8000000000000000) == 0)
  {
    [v4 setDisplayOrder_];
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_226EB3038(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86D0, &qword_22768B670);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v41 = &v40 - v8;
  v44 = sub_2276622D0();
  v42 = *(v44 - 8);
  v9 = *(v42 + 64);
  MEMORY[0x28223BE20](v44);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 count];
  v50 = MEMORY[0x277D84F90];
  sub_226EC18B4(0, v12 & ~(v12 >> 63), 0);
  v13 = v50;
  v43 = v11;
  result = sub_22766CA80();
  if (v12 < 0)
  {
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    if (v12)
    {
      sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178]);
      while (1)
      {
        result = sub_22766CBB0();
        if (!v49)
        {
          goto LABEL_26;
        }

        sub_226E97CC0(&v48, &v46);
        type metadata accessor for ManagedAlternativeActivityType();
        if (!swift_dynamicCast())
        {
          break;
        }

        v15 = v45;
        v16 = [v15 alternativeActivityType];
        if (!v16)
        {

          (*(v42 + 8))(v43, v44);
          v34 = sub_227664DD0();
          sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
          swift_allocError();
          (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D51028], v34);
          swift_willThrow();

          goto LABEL_20;
        }

        v17 = v16;
        v18 = sub_22766C000();
        v20 = v19;

        *&v46 = v18;
        *(&v46 + 1) = v20;
        sub_227666520();
        sub_226EB2904(&qword_28139B668, MEMORY[0x277D52360]);
        sub_227663AE0();

        __swift_destroy_boxed_opaque_existential_0(&v48);
        v50 = v13;
        v22 = *(v13 + 16);
        v21 = *(v13 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_226EC18B4(v21 > 1, v22 + 1, 1);
          v13 = v50;
        }

        *(v13 + 16) = v22 + 1;
        sub_226EB700C(v7, v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v22);
        if (!--v12)
        {
          goto LABEL_10;
        }
      }

      (*(v42 + 8))(v43, v44);
      v32 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277D51028], v32);
      swift_willThrow();

LABEL_20:
      __swift_destroy_boxed_opaque_existential_0(&v48);
      return v13;
    }

LABEL_10:
    sub_226EB2904(&qword_28139BDF0, MEMORY[0x277CC9178]);
    sub_22766CBB0();
    if (v47)
    {
      v23 = v41;
      while (1)
      {
        sub_226F04970(&v46, &v48);
        sub_226E97CC0(&v48, &v46);
        type metadata accessor for ManagedAlternativeActivityType();
        if (!swift_dynamicCast())
        {
          (*(v42 + 8))(v43, v44);
          v36 = sub_227664DD0();
          sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
          swift_allocError();
          (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D51028], v36);
          swift_willThrow();
          goto LABEL_23;
        }

        v24 = v45;
        v25 = [v24 alternativeActivityType];
        if (!v25)
        {
          break;
        }

        v26 = v25;
        v27 = sub_22766C000();
        v29 = v28;

        *&v46 = v27;
        *(&v46 + 1) = v29;
        sub_227666520();
        sub_226EB2904(&qword_28139B668, MEMORY[0x277D52360]);
        sub_227663AE0();

        __swift_destroy_boxed_opaque_existential_0(&v48);
        v50 = v13;
        v31 = *(v13 + 16);
        v30 = *(v13 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_226EC18B4(v30 > 1, v31 + 1, 1);
          v13 = v50;
        }

        *(v13 + 16) = v31 + 1;
        sub_226EB700C(v23, v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v31);
        sub_22766CBB0();
        if (!v47)
        {
          goto LABEL_17;
        }
      }

      (*(v42 + 8))(v43, v44);
      v38 = sub_227664DD0();
      sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v38 - 8) + 104))(v39, *MEMORY[0x277D51028], v38);
      swift_willThrow();

LABEL_23:
      __swift_destroy_boxed_opaque_existential_0(&v48);
    }

    else
    {
LABEL_17:
      (*(v42 + 8))(v43, v44);
      sub_226E97D1C(&v46, &unk_27D7BC990, &qword_227670A30);
    }

    return v13;
  }

  return result;
}

uint64_t sub_226EB3880(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86E0, &qword_227679650);
  v4 = sub_226EB6150(&qword_28139BC60, &qword_27D7B86E0, &qword_227679650, sub_226EB63D4);
  result = MEMORY[0x22AA98980](v2, v3, v4);
  v12 = result;
  if (v2)
  {
    v6 = (a1 + 48);
    do
    {
      v7 = *v6;
      v9 = *(v6 - 2);
      v8 = *(v6 - 1);
      sub_226EB396C(v9, v8, *v6);
      sub_226EB61D4(v10, v9, v8, v7);
      sub_226EB2DFC(v10[0], v10[1], v11);
      v6 += 24;
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

uint64_t sub_226EB396C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

char *sub_226EB397C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

id sub_226EB3A78(uint64_t a1)
{
  v5 = sub_22766A100();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v46 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v53 = &v46 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v18 = *(v1 + 32);
  if (sub_227669C10())
  {
    v19 = sub_227664DD0();
    sub_226E9CF88(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51010], v19);
    swift_willThrow();
  }

  else
  {
    v50 = v13;
    v51 = v10;
    v52 = v2;
    v21 = objc_allocWithZone(MEMORY[0x277CBE428]);
    v22 = sub_22766BFD0();
    v23 = [v21 initWithEntityName_];
    v48 = v23;

    [v23 setFetchBatchSize_];
    v24 = v1;
    v25 = qword_2813B2078;
    swift_beginAccess();
    v26 = v17;
    v27 = v6[2];
    v27(v26, v24 + v25, v5);
    sub_22766A090();
    v47 = v6[1];
    v49 = v26;
    v47(v26, v5);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v28 = sub_22766C2B0();

    v29 = [objc_opt_self() andPredicateWithSubpredicates_];

    v30 = v53;
    v3 = v48;
    [v48 setPredicate_];

    v55 = v25;
    v31 = v24 + v25;
    v32 = v24;
    v54 = v27;
    v27(v30, v31, v5);
    v33 = v47;
    v34 = sub_22766A0C0();
    LOBYTE(v29) = v35;
    v33(v30, v5);
    if ((v29 & 1) == 0)
    {
      [v3 setFetchLimit_];
    }

    v36 = v50;
    v54(v50, v32 + v55, v5);
    v37 = sub_22766A0E0();
    v39 = v38;
    v33(v36, v5);
    if ((v39 & 1) == 0)
    {
      [v3 setFetchOffset_];
    }

    v40 = v51;
    v54(v51, v32 + v55, v5);
    v41 = sub_22766A0B0();
    v42 = v33;
    v33(v40, v5);
    v43 = v49;
    if (v41 >> 62)
    {
      v44 = sub_22766CD20();
    }

    else
    {
      v44 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v44)
    {
      v54(v43, v32 + v55, v5);
      sub_22766A0B0();
      v42(v43, v5);
      sub_226E99364(0, &qword_281398AF8, 0x277CCAC98);
      v44 = sub_22766C2B0();
    }

    [v3 setSortDescriptors_];
  }

  return v3;
}

char *sub_226EB3F78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void sub_226EB4120()
{
  v1 = type metadata accessor for ScriptLinkState();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v15[-v6];
  v8 = *(v0 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_lock);
  sub_2276696A0();
  sub_226EA81F8(v7, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v10 = *v5;
      sub_22766BDB0();
      sub_227669280();
      sub_226EA4FC0(v7);
      return;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v11 = sub_22766B5F0();
    (*(*(v11 - 8) + 8))(v5, v11);
  }

  else
  {
    sub_226EA4FC0(v5);
  }

  sub_226F6649C();
  v12 = swift_allocError();
  *v13 = 4;
  *(swift_allocObject() + 16) = v12;
  v14 = v12;
  sub_22766BDB0();
  sub_227669280();
  sub_226EA4FC0(v7);
}

uint64_t sub_226EB4354(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

uint64_t sub_226EB439C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_227669270();
}

void sub_226EB4458(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t *), uint64_t a4, uint64_t *a5)
{
  v7 = *a5;
  a3(&v8, &v7);
  v6 = v8;
  v9 = 0;
  a1(&v8);

  sub_226EB4548(v6, 0);
}

void sub_226EB4548(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t objectdestroy_6Tm(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t objectdestroy_6Tm_0()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_226EB4668(id a1, char a2, void (*a3)(id))
{
  if (a2)
  {
  }

  else
  {
    a3(a1);
  }
}

void sub_226EB46D8()
{
  v1 = type metadata accessor for ScriptLinkState();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v15[-v6];
  v8 = *(v0 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_lock);
  v16 = v0;
  sub_2276696A0();
  sub_226EA81F8(v7, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v10 = *v5;
      sub_22766BDB0();
      sub_227669280();
      sub_226EA4FC0(v7);
      return;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v11 = sub_22766B5F0();
    (*(*(v11 - 8) + 8))(v5, v11);
  }

  else
  {
    sub_226EA4FC0(v5);
  }

  sub_226F6649C();
  v12 = swift_allocError();
  *v13 = 4;
  *(swift_allocObject() + 16) = v12;
  v14 = v12;
  sub_22766BDB0();
  sub_227669280();
  sub_226EA4FC0(v7);
}

uint64_t sub_226EB48F0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EB492C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

void sub_226EB4998(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr))
{
  a3(&v5);
  v4 = v5;
  v6 = 0;
  a1(&v5);

  sub_226EB4548(v4, 0);
}

uint64_t sub_226EB4A44()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_226EB4A74(uint64_t a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 128))
  {
    sub_22766A730();
    v7 = sub_22766B380();
    v8 = sub_22766C890();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_226E8E000, v7, v8, "Unexpected script connection state after activating", v9, 2u);
      MEMORY[0x22AA9A450](v9, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  else
  {
    dispatch_group_leave(*(a1 + 120));
    v10 = *(a1 + 120);
    *(a1 + 120) = 1;
    v11 = *(a1 + 128);
    *(a1 + 128) = 1;
    sub_226E972B0(v10, v11);
  }
}

uint64_t sub_226EB4CF0(uint64_t result, uint64_t (*a2)(uint64_t *))
{
  v2 = *(result + 8);
  v3 = *result;
  v4 = v2;
  if (a2)
  {
    return a2(&v3);
  }

  return result;
}

id sub_226EB4D38(uint64_t a1)
{
  v5 = sub_22766A100();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v46 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v53 = &v46 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v18 = *(v1 + 32);
  if (sub_227669C10())
  {
    v19 = sub_227664DD0();
    sub_226E9CF88(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51010], v19);
    swift_willThrow();
  }

  else
  {
    v50 = v13;
    v51 = v10;
    v52 = v2;
    v21 = objc_allocWithZone(MEMORY[0x277CBE428]);
    v22 = sub_22766BFD0();
    v23 = [v21 initWithEntityName_];
    v48 = v23;

    [v23 setFetchBatchSize_];
    v24 = v1;
    v25 = qword_2813B2078;
    swift_beginAccess();
    v26 = v17;
    v27 = v6[2];
    v27(v26, v24 + v25, v5);
    sub_22766A090();
    v47 = v6[1];
    v49 = v26;
    v47(v26, v5);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v28 = sub_22766C2B0();

    v29 = [objc_opt_self() andPredicateWithSubpredicates_];

    v30 = v53;
    v3 = v48;
    [v48 setPredicate_];

    v55 = v25;
    v31 = v24 + v25;
    v32 = v24;
    v54 = v27;
    v27(v30, v31, v5);
    v33 = v47;
    v34 = sub_22766A0C0();
    LOBYTE(v29) = v35;
    v33(v30, v5);
    if ((v29 & 1) == 0)
    {
      [v3 setFetchLimit_];
    }

    v36 = v50;
    v54(v50, v32 + v55, v5);
    v37 = sub_22766A0E0();
    v39 = v38;
    v33(v36, v5);
    if ((v39 & 1) == 0)
    {
      [v3 setFetchOffset_];
    }

    v40 = v51;
    v54(v51, v32 + v55, v5);
    v41 = sub_22766A0B0();
    v42 = v33;
    v33(v40, v5);
    v43 = v49;
    if (v41 >> 62)
    {
      v44 = sub_22766CD20();
    }

    else
    {
      v44 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v44)
    {
      v54(v43, v32 + v55, v5);
      sub_22766A0B0();
      v42(v43, v5);
      sub_226E99364(0, &qword_281398AF8, 0x277CCAC98);
      v44 = sub_22766C2B0();
    }

    [v3 setSortDescriptors_];
  }

  return v3;
}

char *sub_226EB5238(char *a1, int64_t a2, char a3)
{
  result = sub_226EB5258(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_226EB526C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_226EB5278()
{
  v1 = sub_22766C070();
  v2 = v0;
  if (v1 == 121 && v0 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v1 == 7562617 && v2 == 0xE300000000000000 || (sub_22766D190() & 1) != 0 || v1 == 116 && v2 == 0xE100000000000000 || (sub_22766D190() & 1) != 0 || v1 == 1702195828 && v2 == 0xE400000000000000 || (sub_22766D190() & 1) != 0 || v1 == 49 && v2 == 0xE100000000000000)
  {

    return 1;
  }

  else
  {
    v4 = sub_22766D190();

    return v4 & 1;
  }
}

uint64_t sub_226EB5448(unint64_t a1, uint64_t (*a2)(void), void (*a3)(BOOL, unint64_t, uint64_t), void (*a4)(id))
{
  v24 = a4;
  v23 = a2(0);
  v7 = *(v23 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v23);
  v25 = &v18 - v9;
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v11 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v11;
    }

    v26 = MEMORY[0x277D84F90];
    result = (a3)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v13 = 0;
    v11 = v26;
    v19 = a3;
    v20 = a1 & 0xFFFFFFFFFFFFFF8;
    v21 = v7 + 32;
    v22 = a1 & 0xC000000000000001;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v22)
      {
        v15 = MEMORY[0x22AA991A0](v13, a1);
      }

      else
      {
        if (v13 >= *(v20 + 16))
        {
          goto LABEL_19;
        }

        v15 = *(a1 + 8 * v13 + 32);
      }

      v24(v15);
      if (v4)
      {

        return v11;
      }

      v26 = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      a3 = (v17 + 1);
      if (v17 >= v16 >> 1)
      {
        v19(v16 > 1, v17 + 1, 1);
        v11 = v26;
      }

      *(v11 + 16) = a3;
      (*(v7 + 32))(v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, v25, v23);
      ++v13;
      if (v14 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
  return result;
}

size_t sub_226EB567C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_226EB5880(size_t a1, int64_t a2, char a3)
{
  result = sub_226EB5858(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_226EB58F8(void *a1)
{
  v2 = a1;
  v3 = [a1 identifier];
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  sub_22766C000();

  v5 = [v2 name];
  if (!v5)
  {
LABEL_9:

LABEL_10:
    v13 = sub_227664DD0();
    sub_2273364DC(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277D51028], v13);
    swift_willThrow();
LABEL_11:

    return;
  }

  v6 = v5;
  sub_22766C000();

  v7 = [v2 kind];
  if (!v7)
  {

    goto LABEL_9;
  }

  v8 = v7;
  sub_22766C000();

  v9 = [v2 features];
  if (!v9)
  {
    v15 = sub_227664DD0();
    sub_2273364DC(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D51028], v15);
    swift_willThrow();

    goto LABEL_13;
  }

  v10 = v9;
  v11 = MEMORY[0x22AA99A00]();
  v12 = sub_226EB5F10(v10);
  if (v1)
  {
    objc_autoreleasePoolPop(v11);

    v2 = v10;
LABEL_13:

    return;
  }

  v17 = v12;
  objc_autoreleasePoolPop(v11);
  sub_226EB3880(v17);

  v18 = [v2 filterPropertyTypes];
  if (v18)
  {
    v19 = v18;
    v20 = MEMORY[0x22AA99A00]();
    v23 = sub_226EB6660(v19);
    objc_autoreleasePoolPop(v20);
    sub_226EB67D8(v23);

    sub_226EB6D50([v2 healthKitActivityTypes]);
    v24 = [v2 alternativeActivityTypes];
    if (v24)
    {
      v25 = v24;
      v26 = MEMORY[0x22AA99A00]();
      v29 = sub_226EB3038(v25);
      objc_autoreleasePoolPop(v26);
      sub_226EB9540(v29);

      sub_226EC1E18();
      sub_227663AE0();
      sub_227666FD0();
      goto LABEL_11;
    }

    v27 = sub_227664DD0();
    sub_2273364DC(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51028], v27);
    swift_willThrow();
  }

  else
  {
    v21 = sub_227664DD0();
    sub_2273364DC(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51028], v21);
    swift_willThrow();
  }
}

void *sub_226EB5F74(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_226EB60DC(void *a1, int64_t a2, char a3)
{
  result = sub_226EB60B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_226EB60FC()
{
  result = qword_28139B678;
  if (!qword_28139B678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B678);
  }

  return result;
}

uint64_t sub_226EB6150(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_226EB61D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *v4;
  v8 = *(*v4 + 40);
  v21 = a4 & 1;
  sub_22766D370();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86E0, &qword_227679650);
  sub_226EB63D4();
  sub_227663B10();
  v9 = sub_22766D3F0();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    sub_226EC1E6C();
    sub_226EB60FC();
    while (1)
    {
      v13 = *(v7 + 48) + 24 * v11;
      v25 = *v13;
      v27 = *(v13 + 16);
      if (sub_227663B20())
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_226EB2DFC(a2, a3, a4 & 1);
    v17 = *(v7 + 48) + 24 * v11;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    *a1 = *v17;
    *(a1 + 8) = v19;
    *(a1 + 16) = v20;
    sub_226EB396C(v18, v19, v20);
    return 0;
  }

  else
  {
LABEL_5:
    v14 = *v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v22;
    sub_226EB396C(a2, a3, v21);
    sub_226EB6428(a2, a3, v21, v11, isUniquelyReferenced_nonNull_native);
    *v22 = v26;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = v21;
    return 1;
  }
}

unint64_t sub_226EB63D4()
{
  result = qword_28139B688;
  if (!qword_28139B688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B688);
  }

  return result;
}

uint64_t sub_226EB6428(uint64_t result, uint64_t a2, char a3, unint64_t a4, char a5)
{
  v7 = result;
  v8 = *(*v5 + 16);
  v9 = *(*v5 + 24);
  if (v9 > v8 && (a5 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a5)
  {
    sub_2270C4AB0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2270EF51C(&qword_27D7BA5C0, &qword_227678E50, sub_226F491DC);
      goto LABEL_12;
    }

    sub_2270F2288(v8 + 1);
  }

  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_22766D370();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86E0, &qword_227679650);
  sub_226EB63D4();
  sub_227663B10();
  result = sub_22766D3F0();
  v12 = -1 << *(v10 + 32);
  a4 = result & ~v12;
  if ((*(v10 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v13 = ~v12;
    sub_226EC1E6C();
    sub_226EB60FC();
    do
    {
      v14 = *(v10 + 48) + 24 * a4;
      v23 = *v14;
      v24 = *(v14 + 16);
      result = sub_227663B20();
      if (result)
      {
        goto LABEL_15;
      }

      a4 = (a4 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_12:
  v15 = *v20;
  *(*v20 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v16 = *(v15 + 48) + 24 * a4;
  *v16 = v7;
  *(v16 + 8) = a2;
  *(v16 + 16) = a3 & 1;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

void *sub_226EB6740(void *a1, int64_t a2, char a3)
{
  result = sub_226EB6760(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_226EB6784()
{
  result = qword_28139B528;
  if (!qword_28139B528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B528);
  }

  return result;
}

uint64_t sub_226EB67D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86D8, &unk_227671530);
  v4 = sub_226EB6150(&qword_28139BC50, &qword_27D7B86D8, &unk_227671530, sub_226EB6AC4);
  result = MEMORY[0x22AA98980](v2, v3, v4);
  v12 = result;
  if (v2)
  {
    v6 = (a1 + 48);
    do
    {
      v7 = *v6;
      v9 = *(v6 - 2);
      v8 = *(v6 - 1);
      sub_226EB396C(v9, v8, *v6);
      sub_226EB68C4(v10, v9, v8, v7);
      sub_226EB2DFC(v10[0], v10[1], v11);
      v6 += 24;
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

uint64_t sub_226EB68C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *v4;
  v8 = *(*v4 + 40);
  v21 = a4 & 1;
  sub_22766D370();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86D8, &unk_227671530);
  sub_226EB6AC4();
  sub_227663B10();
  v9 = sub_22766D3F0();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    sub_226EC21AC();
    sub_226EB6784();
    while (1)
    {
      v13 = *(v7 + 48) + 24 * v11;
      v25 = *v13;
      v27 = *(v13 + 16);
      if (sub_227663B20())
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_226EB2DFC(a2, a3, a4 & 1);
    v17 = *(v7 + 48) + 24 * v11;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    *a1 = *v17;
    *(a1 + 8) = v19;
    *(a1 + 16) = v20;
    sub_226EB396C(v18, v19, v20);
    return 0;
  }

  else
  {
LABEL_5:
    v14 = *v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v22;
    sub_226EB396C(a2, a3, v21);
    sub_226EB6B18(a2, a3, v21, v11, isUniquelyReferenced_nonNull_native);
    *v22 = v26;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = v21;
    return 1;
  }
}

unint64_t sub_226EB6AC4()
{
  result = qword_28139B538;
  if (!qword_28139B538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B538);
  }

  return result;
}

uint64_t sub_226EB6B18(uint64_t result, uint64_t a2, char a3, unint64_t a4, char a5)
{
  v7 = result;
  v8 = *(*v5 + 16);
  v9 = *(*v5 + 24);
  if (v9 > v8 && (a5 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a5)
  {
    sub_2270C4804(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2270EF51C(&qword_27D7BA5B8, &qword_227678E48, sub_226F491DC);
      goto LABEL_12;
    }

    sub_2270F1FFC(v8 + 1);
  }

  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_22766D370();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86D8, &unk_227671530);
  sub_226EB6AC4();
  sub_227663B10();
  result = sub_22766D3F0();
  v12 = -1 << *(v10 + 32);
  a4 = result & ~v12;
  if ((*(v10 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v13 = ~v12;
    sub_226EC21AC();
    sub_226EB6784();
    do
    {
      v14 = *(v10 + 48) + 24 * a4;
      v23 = *v14;
      v24 = *(v14 + 16);
      result = sub_227663B20();
      if (result)
      {
        goto LABEL_15;
      }

      a4 = (a4 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_12:
  v15 = *v20;
  *(*v20 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v16 = *(v15 + 48) + 24 * a4;
  *v16 = v7;
  *(v16 + 8) = a2;
  *(v16 + 16) = a3 & 1;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

char *sub_226EB6D50(void *a1)
{
  v1 = MEMORY[0x277D84F90];
  if (!a1)
  {
    return v1;
  }

  v2 = a1;
  v3 = [a1 array];
  v4 = sub_22766C2C0();

  v5 = sub_226EB294C(v4);

  if (!v5)
  {
    v1 = sub_227664DD0();
    sub_226FC4F70();
    swift_allocError();
    (*(*(v1 - 8) + 104))(v13, *MEMORY[0x277D51028], v1);
    swift_willThrow();

    return v1;
  }

  if (v5 >> 62)
  {
    goto LABEL_17;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
LABEL_18:

LABEL_19:

    return v1;
  }

  while (1)
  {
    v14 = v2;
    result = sub_226EB5238(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      break;
    }

    v8 = 0;
    while (1)
    {
      v9 = (v5 & 0xC000000000000001) != 0 ? MEMORY[0x22AA991A0](v8, v5) : *(v5 + 8 * v8 + 32);
      v10 = v9;
      v11 = [v9 value];

      if ((v11 & 0x8000000000000000) != 0)
      {
        break;
      }

      v2 = *(v1 + 16);
      v12 = *(v1 + 24);
      if (v2 >= v12 >> 1)
      {
        sub_226EB5238((v12 > 1), v2 + 1, 1);
      }

      ++v8;
      *(v1 + 16) = v2 + 1;
      *(v1 + 8 * v2 + 32) = v11;
      if (v6 == v8)
      {

        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    v6 = sub_22766CD20();
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226EB6FEC(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return MEMORY[0x2822009F8](sub_226EB9140, 0, 0);
}

uint64_t sub_226EB700C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86D0, &qword_22768B670);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226EB707C(uint64_t a1, uint64_t (*a2)(void), void (*a3)(char *, char *))
{
  v27 = a3;
  v4 = a2(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v26 - v11;
  result = MEMORY[0x28223BE20](v10);
  v15 = v26 - v14;
  v16 = 0;
  v28 = a1;
  v19 = *(a1 + 56);
  v18 = a1 + 56;
  v17 = v19;
  v20 = 1 << *(v18 - 24);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v26[2] = v5 + 32;
  v26[3] = v5 + 16;
  v26[1] = v5 + 8;
  if ((v21 & v17) != 0)
  {
    do
    {
      v24 = v16;
LABEL_9:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v5 + 16))(v15, *(v28 + 48) + *(v5 + 72) * (v25 | (v24 << 6)), v4);
      (*(v5 + 32))(v9, v15, v4);
      v27(v12, v9);
      result = (*(v5 + 8))(v12, v4);
    }

    while (v22);
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v23)
    {
    }

    v22 = *(v18 + 8 * v24);
    ++v16;
    if (v22)
    {
      v16 = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_226EB729C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_227666F90();
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    while (2)
    {
      v8 = *(v5 + 32 + 8 * v7++);
      v9 = *(a2 + 16);
      v10 = (a2 + 32);
      do
      {
        if (!v9)
        {

          return 0;
        }

        v11 = *v10++;
        --v9;
      }

      while (v11 != v8);
      if (v7 != v6)
      {
        continue;
      }

      break;
    }
  }

  if ((a3 & 1) == 0)
  {
    return 1;
  }

  v12 = *(sub_227666F90() + 16);

  return v12 == 1;
}

size_t sub_226EB734C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_226EB7470(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v42 = a5(0);
  v44 = *(v42 - 8);
  v9 = *(v44 + 64);
  v10 = (MEMORY[0x28223BE20])();
  v43 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v41 = &v35 - v13;
  v14 = a4 + 56;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v33 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v14;
    *(a1 + 16) = ~v15;
    *(a1 + 24) = v33;
    *(a1 + 32) = v17;
    return a3;
  }

  if (!a3)
  {
    v33 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(a4 + 32);
    v36 = a1;
    result = 0;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v37 = v44 + 32;
    v38 = v44 + 16;
    a1 = 1;
    v39 = a4 + 56;
    v40 = a3;
    v20 = v41;
    while (v17)
    {
      v46 = a2;
LABEL_15:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v45 = v18;
      v24 = a4;
      v25 = *(a4 + 48);
      v26 = v43;
      v27 = v44;
      v28 = *(v44 + 72);
      v29 = v42;
      (*(v44 + 16))(v43, v25 + v28 * (v23 | (v18 << 6)), v42);
      v30 = *(v27 + 32);
      v30(v20, v26, v29);
      v31 = v46;
      v30(v46, v20, v29);
      a3 = v40;
      if (a1 == v40)
      {
        v15 = v35;
        a1 = v36;
        a4 = v24;
        v33 = v45;
        v14 = v39;
        goto LABEL_25;
      }

      a2 = &v31[v28];
      result = a1;
      v32 = __OFADD__(a1++, 1);
      a4 = v24;
      v18 = v45;
      v14 = v39;
      if (v32)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v46 = a2;
        v18 = v22;
        goto LABEL_15;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v34 = v18 + 1;
    }

    else
    {
      v34 = v19;
    }

    v33 = v34 - 1;
    a3 = result;
    v15 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t objectdestroyTm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return MEMORY[0x2821FE8E8](v2, 32, 7);
}

uint64_t objectdestroyTm_0()
{
  v1 = (sub_227667AA0() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = sub_227665FB0();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v3 + v1[9]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_1(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t objectdestroyTm_2(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t objectdestroyTm_3()
{
  v1 = sub_227667370();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_4(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);
  v7 = *(v1 + v6);

  return MEMORY[0x2821FE8E8](v1, v6 + 8, v4 | 7);
}

uint64_t objectdestroyTm_5(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 24);

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t objectdestroyTm_6()
{
  v1 = sub_2276627D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 200) & ~v3;
  v5 = *(v2 + 64);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  __swift_destroy_boxed_opaque_existential_0(v0 + 20);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_7(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t objectdestroyTm_8(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);
  v7 = *(v1 + v6);

  return MEMORY[0x2821FE8E8](v1, v6 + 8, v4 | 7);
}

uint64_t objectdestroyTm_9(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_0(v1 + 13);
  __swift_destroy_boxed_opaque_existential_0(v1 + 18);
  __swift_destroy_boxed_opaque_existential_0(v1 + 23);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroyTm_10()
{
  v1 = (type metadata accessor for InferenceProvider() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[7]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[8]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[9]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[10]));
  v6 = *(v0 + v3 + v1[11]);

  v7 = *(v0 + v3 + v1[12]);

  v8 = *(v0 + v3 + v1[13]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_11()
{
  v1 = sub_2276639B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t objectdestroyTm_12(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t objectdestroyTm_13(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t objectdestroyTm_14()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroyTm_15(uint64_t (*a1)(void), void (*a2)(void))
{
  v4 = a1(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v5 + 8))(v2 + v7, v4);
  a2(*(v2 + v8));

  return MEMORY[0x2821FE8E8](v2, v8 + 8, v6 | 7);
}

uint64_t sub_226EB8288(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC7E8, &unk_22767EF78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226EB82F0(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_226EB83F0, 0, 0);
}

uint64_t sub_226EB83F0()
{
  *(v0[17] + 56) = v0[22];
  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  v1[1] = sub_226EC7DAC;
  v2 = v0[16];

  return sub_226EB848C();
}

uint64_t sub_226EB848C()
{
  v1[33] = v0;
  v2 = sub_22766B390();
  v1[34] = v2;
  v3 = *(v2 - 8);
  v1[35] = v3;
  v4 = *(v3 + 64) + 15;
  v1[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226EBBDC0, 0, 0);
}

uint64_t sub_226EB8590(uint64_t a1)
{
  v2 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = a1;

  return MEMORY[0x2822009F8](sub_226EB8690, 0, 0);
}

uint64_t sub_226EB8690()
{
  *(v0[17] + 72) = v0[26];
  v1 = swift_task_alloc();
  v0[27] = v1;
  *v1 = v0;
  v1[1] = sub_226EBD714;
  v2 = v0[16];

  return sub_226EAEBAC(1);
}

uint64_t sub_226EB8730()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 329);
  v3 = v1[14];
  v4 = v1[15];
  __swift_project_boxed_opaque_existential_0(v1 + 11, v3);
  sub_226EB3000(v1, v0 + 16);
  v5 = swift_allocObject();
  *(v0 + 304) = v5;
  v6 = *(v0 + 192);
  *(v5 + 176) = *(v0 + 176);
  *(v5 + 192) = v6;
  *(v5 + 208) = *(v0 + 208);
  v7 = *(v0 + 128);
  *(v5 + 112) = *(v0 + 112);
  *(v5 + 128) = v7;
  v8 = *(v0 + 160);
  *(v5 + 144) = *(v0 + 144);
  *(v5 + 160) = v8;
  v9 = *(v0 + 64);
  *(v5 + 48) = *(v0 + 48);
  *(v5 + 64) = v9;
  v10 = *(v0 + 96);
  *(v5 + 80) = *(v0 + 80);
  *(v5 + 96) = v10;
  v11 = *(v0 + 32);
  *(v5 + 16) = *(v0 + 16);
  *(v5 + 32) = v11;
  *(v5 + 224) = v2;
  v12 = *(v4 + 24);
  v17 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v0 + 312) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC7E0, &qword_22767EF70);
  *v14 = v0;
  v14[1] = sub_226EC1698;

  return (v17)(v0 + 248, sub_226EBD978, v5, v15, v3, v4);
}

uint64_t sub_226EB8904(uint64_t *a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  v6 = *(a1 + 8);
  v8 = *a1;
  v9 = v6;
  v3(&v8);
  return v5(&v8);
}

uint64_t sub_226EB89A4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v45 = a2;
  v46 = a3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC7E8, &unk_22767EF78);
  v4 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v43 = (&v35 - v5);
  v42 = *(a1 + 16);
  if (!v42)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = 0;
  v41 = sub_227666FF0();
  v7 = *(v41 - 8);
  v8 = *(v7 + 16);
  v7 += 16;
  v40 = v8;
  v38 = a1 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
  v9 = MEMORY[0x277D84F90];
  v39 = v7;
  v37 = *(v7 + 56);
  while (1)
  {
    v11 = v38 + v37 * v6;
    v12 = v43;
    v13 = *(v44 + 48);
    *v43 = v6;
    v40(v12 + v13, v11, v41);
    v14 = v45(v6, v12 + v13);
    sub_226EB8288(v12);
    v15 = v14 >> 62;
    v16 = v14 >> 62 ? sub_22766CD20() : *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v17 = v9 >> 62;
    if (v9 >> 62)
    {
      v34 = sub_22766CD20();
      v19 = v34 + v16;
      if (__OFADD__(v34, v16))
      {
LABEL_34:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v19 = v18 + v16;
      if (__OFADD__(v18, v16))
      {
        goto LABEL_34;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v17)
      {
        goto LABEL_16;
      }

      v20 = v9 & 0xFFFFFFFFFFFFFF8;
      if (v19 <= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v17)
      {
LABEL_16:
        sub_22766CD20();
        goto LABEL_17;
      }

      v20 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v21 = *(v20 + 16);
LABEL_17:
    result = sub_22766CE90();
    v9 = result;
    v20 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v22 = *(v20 + 16);
    v23 = *(v20 + 24);
    if (v15)
    {
      break;
    }

    v24 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v24)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v23 >> 1) - v22) < v16)
    {
      goto LABEL_38;
    }

    v47 = v16;
    v48 = v6;
    v50 = v9;
    v26 = v20 + 8 * v22 + 32;
    v36 = v20;
    if (v15)
    {
      if (v24 < 1)
      {
        goto LABEL_40;
      }

      sub_2272C7054();
      for (i = 0; i != v24; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC7D0, &qword_22767EF68);
        v28 = sub_2275F0174(v49, i, v14);
        v30 = *v29;
        (v28)(v49, 0);
        *(v26 + 8 * i) = v30;
      }
    }

    else
    {
      sub_226EBD6C8();
      swift_arrayInitWithCopy();
    }

    v6 = v48;
    v9 = v50;
    if (v47 >= 1)
    {
      v31 = *(v36 + 16);
      v32 = __OFADD__(v31, v47);
      v33 = v31 + v47;
      if (v32)
      {
        goto LABEL_39;
      }

      *(v36 + 16) = v33;
    }

LABEL_4:
    if (++v6 == v42)
    {
      return v9;
    }
  }

  v25 = v20;
  result = sub_22766CD20();
  v20 = v25;
  v24 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v16 <= 0)
  {
    goto LABEL_4;
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

uint64_t sub_226EB8D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v24 = a1;
  v3 = sub_22766B3B0();
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B3F0();
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766B410();
  v23 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v23 - v17;
  sub_226EA1CF4();
  v19 = sub_22766C950();
  sub_22766B400();
  sub_22766C550();
  sub_22766B430();
  v20 = *(v12 + 8);
  v20(v16, v11);
  aBlock[4] = v25;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = v26;
  v21 = _Block_copy(aBlock);

  sub_22766B3D0();
  v30 = MEMORY[0x277D84F90];
  sub_226E9ECD0(&qword_2813A5870, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9D394();
  sub_22766CC80();
  MEMORY[0x22AA98C50](v18, v10, v6, v21);
  _Block_release(v21);

  (*(v29 + 8))(v6, v3);
  (*(v27 + 8))(v10, v28);
  v20(v18, v23);
}

uint64_t sub_226EB90D0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 40);
  v5 = *(v2 + 24);
  *v3 = 12;
  v7[1] = v5;
  v8 = a2;
  v9 = v4;
  v10 = a1;
  v11 = v3;
  return sub_226EC17B4(sub_226EC1B60, v7, &unk_283A941F0);
}

uint64_t sub_226EB9140()
{
  __swift_project_boxed_opaque_existential_0((*(v0 + 80) + 48), *(*(v0 + 80) + 72));
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_226EC6F28;

  return sub_226EB91E0();
}

uint64_t sub_226EB9200()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC7C8, &qword_22767EF38);
  inited = swift_initStackObject();
  v0[17] = inited;
  *(inited + 16) = xmmword_22767EEC0;
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_226EAE72C;
  v3 = v0[16];

  return sub_226EB92BC();
}

size_t sub_226EB9358(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_226EB9540(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86D0, &qword_22768B670);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EC1AA4();
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_226E93170(v13, v7, &qword_27D7B86D0, &qword_22768B670);
      sub_226EB96AC(v9, v7);
      sub_226E97D1C(v9, &qword_27D7B86D0, &qword_22768B670);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t sub_226EB96AC(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86D0, &qword_22768B670);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - v7;
  v23 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_22766D370();
  sub_226EB99C8(&qword_28139B670, MEMORY[0x277D52360]);
  v27 = a2;
  sub_227663B10();
  v11 = sub_22766D3F0();
  v25 = v9 + 56;
  v26 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v5 + 72);
    while (1)
    {
      sub_226E93170(*(v26 + 48) + v15 * v13, v8, &qword_27D7B86D0, &qword_22768B670);
      sub_227666520();
      v16 = MEMORY[0x277D52360];
      sub_226EB99C8(&qword_27D7BA5A8, MEMORY[0x277D52360]);
      sub_226EB99C8(&qword_28139B668, v16);
      v17 = sub_227663B20();
      sub_226E97D1C(v8, &qword_27D7B86D0, &qword_22768B670);
      if (v17)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v25 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_226E97D1C(v27, &qword_27D7B86D0, &qword_22768B670);
    sub_226E93170(*(v26 + 48) + v15 * v13, v24, &qword_27D7B86D0, &qword_22768B670);
    return 0;
  }

  else
  {
LABEL_5:
    v18 = v23;
    v19 = *v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v27;
    sub_226E93170(v27, v8, &qword_27D7B86D0, &qword_22768B670);
    v28 = *v18;
    sub_226EB9A10(v8, v13, isUniquelyReferenced_nonNull_native);
    *v18 = v28;
    sub_226E95D18(v21, v24, &qword_27D7B86D0, &qword_22768B670);
    return 1;
  }
}

uint64_t sub_226EB99C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226EB9A10(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86D0, &qword_22768B670);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v28 = v7;
  v29 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2270C44A4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF1BC(&qword_27D7B86D0, &qword_22768B670, &qword_27D7BA5B0, &qword_227678E40);
      goto LABEL_12;
    }

    sub_2270F1CCC(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_22766D370();
  sub_226EB99C8(&qword_28139B670, MEMORY[0x277D52360]);
  sub_227663B10();
  v15 = sub_22766D3F0();
  v16 = v13 + 56;
  v30 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v27 = v6;
    v18 = ~v17;
    v19 = *(v7 + 72);
    do
    {
      sub_226E93170(*(v30 + 48) + v19 * a2, v10, &qword_27D7B86D0, &qword_22768B670);
      sub_227666520();
      v20 = MEMORY[0x277D52360];
      sub_226EB99C8(&qword_27D7BA5A8, MEMORY[0x277D52360]);
      sub_226EB99C8(&qword_28139B668, v20);
      v21 = sub_227663B20();
      sub_226E97D1C(v10, &qword_27D7B86D0, &qword_22768B670);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = *v29;
  *(*v29 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_226E95D18(v31, *(v22 + 48) + *(v28 + 72) * a2, &qword_27D7B86D0, &qword_22768B670);
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v22 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_226EB9D38(uint64_t a1)
{
  v2 = sub_227666FF0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&unk_28139B578, MEMORY[0x277D52AF8]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_226EB9F1C(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226EB9ED4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226EB9F1C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_227666FF0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226EB99C8(&unk_28139B578, MEMORY[0x277D52AF8]);
  v36 = a2;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226EB99C8(&qword_28139B570, MEMORY[0x277D52AF8]);
      v23 = sub_22766BFB0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_226EBA1FC(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_226EBA1FC(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_227666FF0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_226EBA7E0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2270EF7AC(MEMORY[0x277D52AF8], &qword_27D7BA5A0, &qword_227678E38);
      goto LABEL_12;
    }

    sub_226EBA4C4(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_226EB99C8(&unk_28139B578, MEMORY[0x277D52AF8]);
  v15 = sub_22766BF50();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_226EB99C8(&qword_28139B570, MEMORY[0x277D52AF8]);
      v23 = sub_22766BFB0();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22766D210();
  __break(1u);
  return result;
}

uint64_t sub_226EBA4C4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_227666FF0();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA5A0, &qword_227678E38);
  v10 = sub_22766CDC0();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_226EB99C8(&unk_28139B578, MEMORY[0x277D52AF8]);
      result = sub_22766BF50();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_226EBA7E0(uint64_t a1)
{
  v2 = v1;
  v41 = sub_227666FF0();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA5A0, &qword_227678E38);
  result = sub_22766CDC0();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_226EB99C8(&unk_28139B578, MEMORY[0x277D52AF8]);
      result = sub_22766BF50();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_226EBAB3C(uint64_t a1, uint64_t a2, int a3)
{
  v43 = a3;
  v47 = *MEMORY[0x277D85DE8];
  v5 = sub_227666FF0();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v10 = v8 & 0x3F;
  v35 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v35;
  v45 = a2;

  if (v10 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v41 = v9;
    v42 = v5;
    v37 = &v34;
    MEMORY[0x28223BE20](v12);
    v36 = &v34 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v36, v11);
    v5 = 0;
    v44 = a1;
    v14 = *(a1 + 56);
    a1 += 56;
    v13 = v14;
    v15 = 1 << *(a1 - 24);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & v13;
    v18 = (v15 + 63) >> 6;
    v38 = 0;
    v39 = v6 + 2;
    v40 = (v6 + 1);
    while (v17)
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_12:
      v22 = v19 | (v5 << 6);
      v23 = *(v44 + 48) + v6[9] * v22;
      v24 = v6;
      v25 = v6[2];
      v9 = v41;
      v26 = v42;
      v25(v41, v23, v42);
      v27 = v46;
      v28 = sub_226EB729C(v9, v45, v43 & 1);
      v46 = v27;
      if (v27)
      {
        (*v40)(v9, v26);

        swift_willThrow();

        goto LABEL_18;
      }

      v11 = v28;
      (*v40)(v9, v26);
      v6 = v24;
      if (v11)
      {
        *&v36[(v22 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v22;
        if (__OFADD__(v38++, 1))
        {
          __break(1u);
LABEL_17:
          v5 = sub_226EBAEF0(v36, v35, v38, v44);

          goto LABEL_18;
        }
      }
    }

    v20 = v5;
    while (1)
    {
      v5 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v5 >= v18)
      {
        goto LABEL_17;
      }

      v21 = *(a1 + 8 * v5);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v32 = swift_slowAlloc();
  v33 = v45;

  v5 = sub_2272C5C04(v32, v35, a1, v33, v43 & 1);

  MEMORY[0x22AA9A450](v32, -1, -1);

LABEL_18:
  v30 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_226EBAEF0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_227666FF0();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA5A0, &qword_227678E38);
  result = sub_22766CDE0();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_226E9CF88(&unk_28139B578, MEMORY[0x277D52AF8]);
    result = sub_22766BF50();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_226EBB224(void **a1)
{
  v2 = *(sub_227666FF0() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_227117960(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_226EBB2CC(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_226EBB2CC(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_22766D130();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_227666FF0();
        v6 = sub_22766C380();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_227666FF0() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2272C5DFC(v8, v9, a1, v4);
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
    return sub_226EBB3F8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_226EBB3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_227666FF0();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v45 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v49 = &v35 - v13;
  result = MEMORY[0x28223BE20](v12);
  v48 = &v35 - v16;
  v37 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v46 = *(v15 + 16);
    v47 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v43 = (v15 + 32);
    v44 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v42 = -v18;
    v21 = a1 - a3;
    v36 = v18;
    v22 = v17 + v18 * a3;
LABEL_6:
    v40 = v20;
    v41 = a3;
    v38 = v22;
    v39 = v21;
    v24 = v20;
    while (1)
    {
      v25 = v46;
      v46(v48, v22, v8);
      v25(v49, v24, v8);
      v26 = sub_227666F70();
      v28 = v27;
      if (v26 == sub_227666F70() && v28 == v29)
      {

        v23 = *v19;
        (*v19)(v49, v8);
        result = (v23)(v48, v8);
LABEL_5:
        a3 = v41 + 1;
        v20 = v40 + v36;
        v21 = v39 - 1;
        v22 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return result;
        }

        goto LABEL_6;
      }

      v30 = sub_22766D190();

      v31 = *v19;
      (*v19)(v49, v8);
      result = (v31)(v48, v8);
      if ((v30 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v32 = *v43;
      v33 = v45;
      (*v43)(v45, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v32)(v24, v33, v8);
      v24 += v42;
      v22 += v42;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_226EBB704()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v7 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = sub_2272C4E84;
  }

  else
  {
    v5 = *(v2 + 312);

    v4 = sub_226EBB820;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_226EBB820()
{
  v1 = 0;
  v2 = *(v0 + 296);
  v3 = *(v0 + 248);
  v21 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v4 = *(v3 + 16);
  if (v4)
  {
    while (v1 < *(v3 + 16))
    {
      v12 = *(v0 + 304);
      v13 = *(v0 + 336);
      v14 = sub_227666FF0();
      v15 = *(v14 - 8);
      v16 = *(v15 + 16);
      v17 = v3 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v1;
      v18 = *(v2 + 48);
      *v12 = v1;
      v16(&v12[v18], v17, v14);
      v19 = 0;
      if (v13 == 1)
      {
        v19 = 20 * v1;
        if ((v1 * 20) >> 64 != (20 * v1) >> 63)
        {
          goto LABEL_16;
        }
      }

      v8 = *(v0 + 304);
      v9 = *(v0 + 264);
      v10 = sub_226EBBA0C(&v12[v18], *(v0 + 336), v19);
      v11 = sub_226EB8288(v8);
      ++v1;
      if (v10)
      {
        MEMORY[0x22AA985C0](v11);
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v20 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22766C360();
        }

        sub_22766C3A0();
        v21 = v22;
        if (v4 == v1)
        {
          goto LABEL_2;
        }
      }

      else if (v4 == v1)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_2:

    v5 = *(v0 + 304);
    v6 = *(v0 + 288);

    v7 = *(v0 + 8);

    v7(v21);
  }
}

id sub_226EBBA0C(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_227666FB0();
  v8 = v7;
  v10 = v9 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_227663B00();
  sub_226EB2DFC(v6, v8, v10);
  if (v31 == 14)
  {
    return 0;
  }

  result = MEMORY[0x22AA91B00]();
  v14 = 6;
  if (a2)
  {
    v14 = 9;
  }

  v15 = v3[v14];
  v16 = __OFADD__(*v3, v15);
  v17 = *v3 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = __OFADD__(v17, a3);
  v18 = v17 + a3;
  if (v16)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19 = result;
  v20 = v13;
  v30 = v18;
  if (a2)
  {
    sub_227669DE0();
    v21 = sub_227669D70();
    v23 = v22;
    v24 = 0xE400000000000000;
    v29 = 1702195828;
  }

  else
  {
    v21 = 0;
    v29 = 0x65736C6166;
    v24 = 0xE500000000000000;
    v23 = 0xE000000000000000;
  }

  v11 = [objc_allocWithZone(MEMORY[0x277CE8D50]) init];
  sub_22766CE20();

  MEMORY[0x22AA98450](v21, v23);
  MEMORY[0x22AA98450](v19, v20);

  v25 = sub_22766BFD0();

  [v11 setUniqueName_];

  [v11 setVersion_];
  [v11 setMinimumEngineVersion_];
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD000000000000017, 0x800000022769CB10);
  v26 = sub_227666F70();
  MEMORY[0x22AA98450](v26);

  MEMORY[0x22AA98450](0xD000000000000038, 0x800000022769CB30);
  MEMORY[0x22AA98450](v21, v23);

  MEMORY[0x22AA98450](0xD000000000000024, 0x800000022769CB70);
  v27 = sub_227666F70();
  MEMORY[0x22AA98450](v27);

  MEMORY[0x22AA98450](0xD00000000000001ELL, 0x800000022769CCE0);
  MEMORY[0x22AA98450](v29, v24);

  v28 = sub_22766BFD0();

  [v11 setPredicate_];

  [v11 setEarnLimit_];
  [v11 setVisibilityPredicate_];
  [v11 setDuplicateRemovalStrategy_];
  result = [v11 setEarnDateStrategy_];
  if ((v30 & 0x8000000000000000) == 0)
  {
    [v11 setDisplayOrder_];
    return v11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_226EBBDC0()
{
  v1 = *(v0 + 264);
  v2 = v1[14];
  v3 = v1[15];
  __swift_project_boxed_opaque_existential_0(v1 + 11, v2);
  sub_226EB3000(v1, v0 + 16);
  v4 = swift_allocObject();
  *(v0 + 296) = v4;
  v5 = *(v0 + 64);
  v4[3] = *(v0 + 48);
  v4[4] = v5;
  v6 = *(v0 + 128);
  v4[7] = *(v0 + 112);
  v4[8] = v6;
  v7 = *(v0 + 96);
  v4[5] = *(v0 + 80);
  v4[6] = v7;
  v8 = *(v0 + 208);
  v4[12] = *(v0 + 192);
  v4[13] = v8;
  v9 = *(v0 + 176);
  v4[10] = *(v0 + 160);
  v4[11] = v9;
  v4[9] = *(v0 + 144);
  v10 = *(v0 + 32);
  v4[1] = *(v0 + 16);
  v4[2] = v10;
  v11 = *(v3 + 24);
  v16 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v0 + 304) = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB978, &unk_22767B520);
  *v13 = v0;
  v13[1] = sub_226EBC42C;

  return (v16)(v0 + 248, sub_226EB854C, v4, v14, v2, v3);
}

uint64_t sub_226EBBF90@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v51 = a3;
  v55 = *MEMORY[0x277D85DE8];
  v6 = sub_227667C20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227663FA0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *__swift_project_boxed_opaque_existential_0((a2 + 128), *(a2 + 152));
  result = sub_226EAF48C(a1, v15);
  if (v3)
  {
LABEL_21:
    v37 = *MEMORY[0x277D85DE8];
    return result;
  }

  v48 = 0;
  v46 = v15;
  v18 = sub_227663EE0();
  v19 = v18;
  v20 = *(v18 + 32);
  v21 = ((1 << v20) + 63) >> 6;
  v47 = a1;
  if ((v20 & 0x3Fu) > 0xD)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v43 = v21;
    v44 = v12;
    v45 = v11;
    v42 = &v42;
    MEMORY[0x28223BE20](v18);
    v49 = &v42 - ((v22 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v49, v22);
    v50 = 0;
    v21 = 0;
    v12 = v19 + 56;
    v23 = 1 << *(v19 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v19 + 56);
    v26 = (v23 + 63) >> 6;
    v53 = v7 + 16;
    v54 = v19;
    v52 = v7 + 8;
    while (v25)
    {
      v27 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_13:
      v11 = v27 | (v21 << 6);
      (*(v7 + 16))(v10, *(v54 + 48) + *(v7 + 72) * v11, v6);
      v19 = sub_227667C00();
      (*(v7 + 8))(v10, v6);
      if (v19)
      {
        *&v49[(v11 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v11;
        if (__OFADD__(v50++, 1))
        {
          __break(1u);
LABEL_17:
          v31 = sub_226EB10D0(v49, v43, v50, v54);
          v12 = v44;
          v11 = v45;
          goto LABEL_18;
        }
      }
    }

    v28 = v21;
    while (1)
    {
      v21 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v21 >= v26)
      {
        goto LABEL_17;
      }

      v29 = *(v12 + 8 * v21);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v25 = (v29 - 1) & v29;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_23:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v38 = swift_slowAlloc();
  v39 = v48;
  v40 = sub_2272C5D44(v38, v21, v19, sub_2272C5274, 0);
  v48 = v39;
  if (!v39)
  {
    v41 = v40;

    MEMORY[0x22AA9A450](v38, -1, -1);
    v31 = v41;
LABEL_18:
    v32 = v48;
    v33 = sub_226EB13F8(v31);

    v34 = sub_226EB16F8(v47);
    v35 = v46;
    if (v32)
    {
      (*(v12 + 8))(v46, v11);
    }

    else
    {
      v36 = sub_226EC696C(v34, v33);

      result = (*(v12 + 8))(v35, v11);
      *v51 = v36;
    }

    goto LABEL_21;
  }

  result = MEMORY[0x22AA9A450](v38, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_226EBC42C()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v7 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = sub_2272C52A4;
  }

  else
  {
    v5 = *(v2 + 296);

    v4 = sub_226EBC548;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226EBC548()
{
  v1 = v0[39];
  v2 = v0[33];
  v3 = v0[31];
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  v5 = sub_226EBC60C(sub_226EC78E8, v4, v3);

  v6 = v0[36];

  v7 = v0[1];

  return v7(v5);
}

uint64_t sub_226EBC60C(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v20 = a2;
  v22 = sub_227666FF0();
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v22);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = MEMORY[0x277D84F90];
  v25 = MEMORY[0x277D84F90];
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  v18[1] = v5 + 16;
  v21 = (v5 + 8);
  v23 = a3;

  v14 = 0;
  while (v11)
  {
    v15 = v22;
LABEL_11:
    (*(v5 + 16))(v8, *(v23 + 48) + *(v5 + 72) * (__clz(__rbit64(v11)) | (v14 << 6)), v15);
    v19(&v24, v8);
    if (v3)
    {
      (*v21)(v8, v15);
      v17 = v18[0];

      return v17;
    }

    v11 &= v11 - 1;
    result = (*v21)(v8, v15);
    if (v24)
    {
      MEMORY[0x22AA985C0](result);
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v18[0] = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      result = sub_22766C3A0();
      v18[0] = v25;
    }
  }

  v15 = v22;
  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v12)
    {

      return v18[0];
    }

    v11 = *(a3 + 56 + 8 * v16);
    ++v14;
    if (v11)
    {
      v14 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226EBC888(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC990, &qword_227670A30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226EBC8F0()
{
  v1 = v0 + 328;
  v2 = *(v0 + 329);
  v3 = *(v0 + 248);
  *(v0 + 328) = 12;
  v4 = *(v0 + 320);
  if (v2 == 1)
  {
    v5 = *(v0 + 272);
    *(v0 + 264) = 1;
    v6 = swift_task_alloc();
    *(v6 + 16) = v1;
    *(v6 + 24) = v0 + 264;
    *(v6 + 32) = v5;
    *(v6 + 40) = 1;
    v7 = sub_226EB89A4(v3, sub_226EB90D0, v6);
  }

  else
  {
    v8 = *(v0 + 272);
    v9 = swift_task_alloc();
    *(v9 + 16) = v3;
    *(v9 + 24) = v8;
    *(v9 + 32) = 0;
    *(v9 + 40) = v1;
    v7 = sub_226EBCAA0(&unk_283A92410, sub_226EBCA30);
  }

  v10 = v7;

  v11 = *(v0 + 296);

  v12 = *(v0 + 8);

  return v12(v10);
}

void *sub_226EBCA30(uint64_t a1, char a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v9[2] = v5;
  v10 = a2;
  v11 = v6;
  v12 = a1;
  v13 = v7;
  result = sub_226EBCD6C(sub_226EB8568, v9, v4);
  *v7 = a2;
  return result;
}

uint64_t sub_226EBCAA0(uint64_t a1, uint64_t (*a2)(uint64_t, void))
{
  v31 = *(a1 + 16);
  if (!v31)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  v30 = a1 + 32;
  v4 = &qword_27D7BC7D0;
  while (1)
  {
    v6 = a2(v2, *(v30 + v2));
    v7 = v6;
    v8 = v6 >> 62;
    v9 = v6 >> 62 ? sub_22766CD20() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = v3 >> 62;
    if (v3 >> 62)
    {
      v28 = sub_22766CD20();
      v12 = v28 + v9;
      if (__OFADD__(v28, v9))
      {
LABEL_34:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = v11 + v9;
      if (__OFADD__(v11, v9))
      {
        goto LABEL_34;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v36 = v9;
    if (result)
    {
      if (v10)
      {
        goto LABEL_16;
      }

      v13 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v10)
      {
LABEL_16:
        sub_22766CD20();
        goto LABEL_17;
      }

      v13 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = *(v13 + 16);
LABEL_17:
    result = sub_22766CE90();
    v3 = result;
    v13 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v15 = *(v13 + 16);
    v16 = *(v13 + 24);
    if (v8)
    {
      break;
    }

    v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v16 >> 1) - v15) < v36)
    {
      goto LABEL_38;
    }

    v33 = v2;
    v34 = v3;
    v19 = v13 + 8 * v15 + 32;
    v29 = v13;
    if (v8)
    {
      if (v17 < 1)
      {
        goto LABEL_40;
      }

      sub_2272C7054();
      for (i = 0; i != v17; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v4, &qword_22767EF68);
        v21 = v4;
        v22 = sub_2275F0174(v35, i, v7);
        v24 = *v23;
        (v22)(v35, 0);
        v4 = v21;
        *(v19 + 8 * i) = v24;
      }
    }

    else
    {
      sub_226EBD6C8();
      swift_arrayInitWithCopy();
    }

    v2 = v33;
    v3 = v34;
    if (v36 >= 1)
    {
      v25 = *(v29 + 16);
      v26 = __OFADD__(v25, v36);
      v27 = v25 + v36;
      if (v26)
      {
        goto LABEL_39;
      }

      *(v29 + 16) = v27;
    }

LABEL_4:
    if (++v2 == v31)
    {
      return v3;
    }
  }

  v18 = v13;
  result = sub_22766CD20();
  v13 = v18;
  v17 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v36 <= 0)
  {
    goto LABEL_4;
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

void *sub_226EBCD6C(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v6 = *(a3 + 16);
  if (v6)
  {
    v8 = 0;
    do
    {
      v14 = result;
      for (i = v8; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v10 = sub_227666FF0();
        v12 = *(v10 - 8);
        result = (v10 - 8);
        v11 = v12;
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v15, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
        if (v3)
        {

          return v14;
        }

        if (v15)
        {
          break;
        }

        if (v8 == v6)
        {
          return v14;
        }
      }

      MEMORY[0x22AA985C0](result);
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      sub_22766C3A0();
      result = v16;
    }

    while (v8 != v6);
  }

  return result;
}

id sub_226EBCEEC@<X0>(uint64_t a1@<X0>, char a2@<W2>, char a3@<W3>, uint64_t a4@<X4>, unsigned __int8 *a5@<X5>, void *a6@<X8>)
{
  v7 = *a5;
  v8 = 1;
  v9 = 10;
  v11 = 0;
  switch(v7)
  {
    case 1:
      v9 = 25;
      goto LABEL_13;
    case 2:
      v9 = 50;
      goto LABEL_13;
    case 3:
      v9 = 100;
      goto LABEL_13;
    case 4:
      v9 = 250;
      goto LABEL_13;
    case 5:
      v9 = 500;
      goto LABEL_13;
    case 6:
      v9 = 750;
      goto LABEL_13;
    case 7:
      v9 = 1000;
      goto LABEL_13;
    case 8:
      v9 = 1250;
      goto LABEL_13;
    case 9:
      v9 = 1500;
      goto LABEL_13;
    case 10:
      v9 = 1750;
      goto LABEL_13;
    case 11:
      v9 = 2000;
      goto LABEL_13;
    case 12:
      goto LABEL_14;
    default:
LABEL_13:
      v8 = 0;
      v11 = v9;
LABEL_14:
      result = sub_226EBD004(a1, qword_22767EF88[a2], a3 & 1, a4, v11, v8);
      *a6 = result;
      return result;
  }
}

id sub_226EBD004(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = sub_227666FB0();
  v11 = v10;
  v13 = v12 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_227663B00();
  sub_226EB2DFC(v9, v11, v13);
  if (v44 == 14)
  {
    return 0;
  }

  result = MEMORY[0x22AA91B00]();
  v42 = result;
  v17 = 8;
  if (a3)
  {
    v17 = 10;
  }

  v18 = v6[v17];
  v19 = __OFADD__(*v6, v18);
  v20 = *v6 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = __OFADD__(v20, a4);
  v21 = v20 + a4;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22 = v16;
  v41 = v21;
  if (a3)
  {
    sub_227669DE0();
    v23 = sub_227669D70();
    v25 = v24;
    v26 = 0xE400000000000000;
    v40 = 1702195828;
  }

  else
  {
    v23 = 0;
    v40 = 0x65736C6166;
    v26 = 0xE500000000000000;
    v25 = 0xE000000000000000;
  }

  v14 = [objc_allocWithZone(MEMORY[0x277CE8D50]) init];
  sub_22766CE20();

  MEMORY[0x22AA98450](v23, v25);
  MEMORY[0x22AA98450](v42, v22);
  MEMORY[0x22AA98450](45, 0xE100000000000000);
  v27 = sub_22766D140();
  MEMORY[0x22AA98450](v27);

  v28 = sub_22766BFD0();

  [v14 setUniqueName_];

  [v14 setVersion_];
  [v14 setMinimumEngineVersion_];
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD000000000000017, 0x800000022769CB10);
  v29 = sub_227666F70();
  MEMORY[0x22AA98450](v29);

  MEMORY[0x22AA98450](0xD000000000000038, 0x800000022769CB30);
  MEMORY[0x22AA98450](v23, v25);
  MEMORY[0x22AA98450](0xD000000000000024, 0x800000022769CB70);
  v30 = sub_227666F70();
  MEMORY[0x22AA98450](v30);

  MEMORY[0x22AA98450](0x203D3D202927, 0xE600000000000000);
  v31 = sub_22766D140();
  MEMORY[0x22AA98450](v31);

  MEMORY[0x22AA98450](0xD000000000000017, 0x800000022769CBA0);
  MEMORY[0x22AA98450](v40, v26);

  v32 = sub_22766BFD0();

  [v14 setPredicate_];

  [v14 setEarnLimit_];
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD000000000000018, 0x800000022769CBC0);
  MEMORY[0x22AA98450](v23, v25);
  MEMORY[0x22AA98450](0xD000000000000024, 0x800000022769CB70);
  v33 = sub_227666F70();
  MEMORY[0x22AA98450](v33);

  MEMORY[0x22AA98450](10535, 0xE200000000000000);
  v34 = sub_22766BFD0();

  [v14 setProgressExpression_];

  sub_22766D140();
  v35 = sub_22766BFD0();

  [v14 setGoalExpression_];

  v36 = [objc_opt_self() countUnit];
  [v14 setCanonicalUnit_];

  [v14 setVisibilityPredicate_];
  [v14 setDuplicateRemovalStrategy_];
  result = [v14 setEarnDateStrategy_];
  if ((v41 & 0x8000000000000000) == 0)
  {
    [v14 setDisplayOrder_];
    sub_22766CE20();

    MEMORY[0x22AA98450](v23, v25);

    if (a6)
    {
      v37 = v42;
      v38 = v22;
    }

    else
    {
      MEMORY[0x22AA98450](v42, v22);

      MEMORY[0x22AA98450](45, 0xE100000000000000);
      v37 = sub_22766D140();
    }

    MEMORY[0x22AA98450](v37, v38);

    v39 = sub_22766BFD0();

    [v14 setPrerequisiteTemplateName_];

    return v14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_226EBD6C8()
{
  result = qword_281398B88;
  if (!qword_281398B88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281398B88);
  }

  return result;
}

uint64_t sub_226EBD714(uint64_t a1)
{
  v2 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = a1;

  return MEMORY[0x2822009F8](sub_226EBD814, 0, 0);
}

uint64_t sub_226EBD814()
{
  *(v0[17] + 80) = v0[28];
  v1 = swift_task_alloc();
  v0[29] = v1;
  *v1 = v0;
  v1[1] = sub_226EC1D18;
  v2 = v0[16];

  return sub_226EBD8B4(1);
}

uint64_t sub_226EBD8B4(char a1)
{
  *(v2 + 272) = v1;
  *(v2 + 329) = a1;
  v3 = sub_22766B390();
  *(v2 + 280) = v3;
  v4 = *(v3 - 8);
  *(v2 + 288) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 296) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226EB8730, 0, 0);
}

uint64_t sub_226EBD9F4(void *a1, unint64_t a2, uint64_t a3)
{
  v89 = a3;
  v5 = sub_22766BE10();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v84 - v11;
  v13 = sub_22766B390();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v88 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v84 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v84 - v21;
  v94 = v20;
  v86 = v6;
  v87 = v5;
  v85 = v12;
  v91 = v23;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x22AA991A0](0, a2);
  }

  else
  {
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_28;
    }

    v24 = *(a2 + 32);
  }

  v25 = v24;
  sub_22766CAA0();
  v27 = v26;

  if (!v27 || (v28 = sub_226EA68D8(), v28 == 52))
  {
    sub_226F6649C();
    swift_allocError();
    v30 = 2;
LABEL_7:
    *v29 = v30;
    swift_willThrow();
    return v25;
  }

  LOBYTE(v6) = v28;
  sub_22766B9F0();
  v84 = MEMORY[0x22AA97CF0]();
  if (!v84)
  {
    sub_22766A730();
    v33 = sub_22766B380();
    v34 = sub_22766C8B0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v93[0] = v36;
      *v35 = 136315138;
      v37 = sub_226EA8DA8(v6);
      v39 = sub_226E97AE8(v37, v38, v93);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_226E8E000, v33, v34, "Invalid worker thread for request: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x22AA9A450](v36, -1, -1);
      MEMORY[0x22AA9A450](v35, -1, -1);
    }

    v40 = *(v91 + 8);
    v41 = v94;
    v40(v22, v94);
    sub_22766A730();
    v42 = sub_22766B380();
    v43 = sub_22766C8B0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v93[0] = v45;
      *v44 = 136315138;
      v46 = [objc_opt_self() currentThread];
      v47 = v40;
      v48 = [v46 description];

      v49 = sub_22766C000();
      v51 = v50;

      v40 = v47;
      v52 = sub_226E97AE8(v49, v51, v93);

      *(v44 + 4) = v52;
      _os_log_impl(&dword_226E8E000, v42, v43, "Current Thread: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      v53 = v45;
      v41 = v94;
      MEMORY[0x22AA9A450](v53, -1, -1);
      MEMORY[0x22AA9A450](v44, -1, -1);

      v47(v19, v41);
    }

    else
    {

      v40(v19, v41);
    }

    v54 = v88;
    sub_22766A730();
    v25 = v54;
    v55 = sub_22766B380();
    v56 = sub_22766C8B0();
    if (os_log_type_enabled(v55, v56))
    {
      v25 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v93[0] = v57;
      *v25 = 136315138;
      v58 = [objc_opt_self() currentThread];
      v59 = v40;
      v60 = [v58 threadDictionary];

      v61 = [v60 description];
      v62 = sub_22766C000();
      v64 = v63;

      v65 = sub_226E97AE8(v62, v64, v93);

      *(v25 + 1) = v65;
      _os_log_impl(&dword_226E8E000, v55, v56, "Thread Dictionary: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x22AA9A450](v57, -1, -1);
      MEMORY[0x22AA9A450](v25, -1, -1);

      v59(v54, v94);
    }

    else
    {

      v40(v54, v41);
    }

    sub_226F6649C();
    swift_allocError();
    v30 = 8;
    goto LABEL_7;
  }

  if (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result > 1)
    {
      goto LABEL_12;
    }

LABEL_29:
    v68 = 0;
    v70 = 0;
    v67 = v89;
    goto LABEL_30;
  }

LABEL_28:
  result = sub_22766CD20();
  if (result <= 1)
  {
    goto LABEL_29;
  }

LABEL_12:
  if ((a2 & 0xC000000000000001) != 0)
  {
    v32 = MEMORY[0x22AA991A0](1, a2);
LABEL_25:
    v66 = v32;
    v67 = v89;
    v68 = sub_22766CAA0();
    v70 = v69;

LABEL_30:
    v71 = __swift_project_boxed_opaque_existential_0((v67 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v67 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
    v72 = *(*v71 + 16);
    MEMORY[0x28223BE20](v71);
    *(&v84 - 2) = v73;
    *(&v84 - 8) = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC748, &qword_22767E990);
    v74 = v90;
    sub_2276696A0();
    v75 = v93[0];
    if (v93[0])
    {
      v93[0] = v68;
      v93[1] = v70;
      v75(&v92, v93);
      sub_226EA9E3C(v75);
      v25 = swift_allocObject();
      *(v25 + 1) = v92;

      v76 = sub_226EA9E88;
    }

    else
    {

      v25 = 0;
      v76 = sub_2274E9878;
    }

    v77 = v76;
    v78 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v79 = swift_allocObject();
    v79[2] = v77;
    v79[3] = v25;
    v79[4] = v84;
    v79[5] = v78;

    v80 = a1;
    sub_22766BDF0();

    if (v74)
    {
    }

    else
    {
      v82 = v85;
      v81 = v86;
      v83 = v87;
      (*(v86 + 32))(v85, v10, v87);
      v25 = sub_22766BE00();

      (*(v81 + 8))(v82, v83);
    }

    return v25;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v32 = *(a2 + 40);
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

void sub_226EBE30C(uint64_t *a1, uint64_t a2, void (*a3)(void *, void))
{
  v4 = *a1;
  sub_22766BDB0();
  sub_22766B820();
  sub_22766BCC0();
  sub_226EBE3DC(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  sub_22766D430();
  a3(v5, v6);

  sub_226EB4548(v5, v6);
}

uint64_t sub_226EBE3DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  v9 = sub_22766B380();
  v10 = sub_22766C8B0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16[0] = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_226E97AE8(0xD000000000000011, 0x800000022767E8F0, v16);
    _os_log_impl(&dword_226E8E000, v9, v10, "[%{public}s] Successfully created JSStack", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA9A450](v12, -1, -1);
    MEMORY[0x22AA9A450](v11, -1, -1);
  }

  v13 = (*(v5 + 8))(v8, v4);
  v14 = *(v2 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_lock);
  MEMORY[0x28223BE20](v13);
  v16[-2] = v2;
  v16[-1] = a1;
  sub_2276696A0();
  return sub_226EBE924();
}

void sub_226EBE608(void *a1, uint64_t a2)
{
  v5 = sub_22766B390();
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ScriptLinkState();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = (&v27 - v14);
  v16 = OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_state;
  swift_beginAccess();
  sub_226EA81F8(a1 + v16, v15);
  if (swift_getEnumCaseMultiPayload())
  {
    v28 = v5;
    sub_226EA4FC0(v15);
    sub_22766A730();
    v17 = a1;
    v18 = sub_22766B380();
    v19 = sub_22766C8A0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v27 = v2;
      v21 = v20;
      v22 = swift_slowAlloc();
      v29[0] = v22;
      *v21 = 136446466;
      *(v21 + 4) = sub_226E97AE8(0xD000000000000011, 0x800000022767E8F0, v29);
      *(v21 + 12) = 2082;
      sub_226EA81F8(a1 + v16, v13);
      v23 = sub_22766C060();
      v25 = sub_226E97AE8(v23, v24, v29);

      *(v21 + 14) = v25;
      _os_log_impl(&dword_226E8E000, v18, v19, "[%{public}s] JSStack stack created in unexpected state %{public}s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v22, -1, -1);
      MEMORY[0x22AA9A450](v21, -1, -1);
    }

    (*(v30 + 8))(v8, v28);
  }

  else
  {
    v26 = *v15;
    *v13 = a2;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();

    sub_226EA4F5C(v13, a1 + v16);
    swift_endAccess();
    dispatch_group_leave(v26);
  }
}

uint64_t sub_226EBE924()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  (*(v14 + 16))(&v28 - v16, v1 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink__shrinkJsFootprintEnabled, v13);
  sub_227669730();
  result = (*(v14 + 8))(v17, v13);
  if (v31 == 1)
  {
    *(swift_allocObject() + 16) = v1;
    sub_22766BDB0();
    v19 = v1;
    sub_227669270();
    v20 = swift_allocObject();
    *(v20 + 16) = sub_226EB4500;
    *(v20 + 24) = 0;
    (*(v3 + 16))(v6, v8, v2);
    v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v22 = (v4 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    (*(v3 + 32))(v23 + v21, v6, v2);
    v24 = (v23 + v22);
    *v24 = sub_2272B81D0;
    v24[1] = v20;
    sub_227669270();
    (*(v3 + 8))(v8, v2);
    v25 = v30;
    v26 = sub_227669290();
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    v26(sub_226EB4544, v27);

    return (*(v29 + 8))(v12, v25);
  }

  return result;
}

uint64_t sub_226EBED30()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226EBED80(uint64_t a1, uint64_t a2, char *a3)
{
  v91 = sub_22766B3B0();
  v90 = *(v91 - 8);
  v6 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v88 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_22766B3F0();
  v87 = *(v89 - 8);
  v8 = *(v87 + 64);
  MEMORY[0x28223BE20](v89);
  v86 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v82 = *(v84 - 8);
  v10 = *(v82 + 64);
  v11 = MEMORY[0x28223BE20](v84);
  v80 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v81 = &v79 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3B0, &unk_227684AF0);
  v96 = *(v13 - 8);
  v97 = v13;
  v14 = *(v96 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v85 = &v79 - v18;
  v95 = sub_22766B5F0();
  v83 = *(v95 - 8);
  v19 = *(v83 + 64);
  MEMORY[0x28223BE20](v95);
  v94 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22766B390();
  v92 = *(v21 - 8);
  v93 = v21;
  v22 = *(v92 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v79 - v26;
  v28 = type metadata accessor for ScriptLinkState();
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = (&v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v30);
  v34 = &v79 - v33;
  v35 = swift_allocObject();
  *(v35 + 16) = a1;
  *(v35 + 24) = a2;
  v98 = v35;
  v36 = *&a3[OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_lock];
  v99 = a3;
  v101 = a3;

  sub_2276696A0();
  v100 = v34;
  sub_226EA81F8(v34, v32);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_226EA4FC0(v32);
    }

    sub_226EB46D8();
    v52 = swift_allocObject();
    v54 = v97;
    v53 = v98;
    *(v52 + 16) = sub_226EBF9F4;
    *(v52 + 24) = v53;
    v55 = sub_227669290();
    v56 = swift_allocObject();
    *(v56 + 16) = sub_226EB4390;
    *(v56 + 24) = v52;

    v55(sub_226E9F880, v56);

    (*(v96 + 8))(v17, v54);
    return sub_226EA4FC0(v100);
  }

  if (EnumCaseMultiPayload)
  {
    v57 = v83;
    v58 = v94;
    (*(v83 + 32))(v94, v32, v95);
    sub_22766A730();
    sub_22766B370();
    (*(v92 + 8))(v25, v93);
    v59 = v99;
    if ([*&v99[OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_scriptConfiguration] useSimulatorBag])
    {
      v60 = v81;
      sub_2272BA6C8(v58, v81);
    }

    else
    {
      v60 = v81;
      sub_226EAB110(v58);
    }

    v61 = swift_allocObject();
    *(v61 + 16) = v59;
    v62 = swift_allocObject();
    *(v62 + 16) = sub_2272B4674;
    *(v62 + 24) = v61;
    v63 = v82;
    v64 = v80;
    v65 = v84;
    (*(v82 + 16))(v80, v60, v84);
    v66 = (*(v63 + 80) + 16) & ~*(v63 + 80);
    v67 = v10 + v66 + 7;
    v68 = v60;
    v69 = v67 & 0xFFFFFFFFFFFFFFF8;
    v70 = swift_allocObject();
    (*(v63 + 32))(v70 + v66, v64, v65);
    v71 = (v70 + v69);
    *v71 = sub_2272B81D4;
    v71[1] = v62;
    sub_22766BDB0();
    v72 = v59;
    v73 = v85;
    sub_227669270();
    (*(v63 + 8))(v68, v65);
    v74 = swift_allocObject();
    v76 = v97;
    v75 = v98;
    *(v74 + 16) = sub_226EBF9F4;
    *(v74 + 24) = v75;
    v77 = sub_227669290();
    v78 = swift_allocObject();
    *(v78 + 16) = sub_226EB4390;
    *(v78 + 24) = v74;

    v77(sub_226E9F880, v78);

    (*(v96 + 8))(v73, v76);
    (*(v57 + 8))(v94, v95);
    return sub_226EA4FC0(v100);
  }

  v38 = *v32;
  sub_22766A730();
  v39 = sub_22766B380();
  v40 = sub_22766C8B0();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v41 = 136446210;
    *(v41 + 4) = sub_226E97AE8(0xD000000000000011, 0x800000022769C290, aBlock);
    _os_log_impl(&dword_226E8E000, v39, v40, "[%{public}s] Stack requested before JS load -- waiting", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x22AA9A450](v42, -1, -1);
    MEMORY[0x22AA9A450](v41, -1, -1);
  }

  (*(v92 + 8))(v27, v93);
  v43 = v99;
  sub_226EA1CF4();
  v44 = sub_22766C950();
  v45 = swift_allocObject();
  v45[2] = v43;
  v45[3] = sub_226EBF9F4;
  v45[4] = v98;
  aBlock[4] = sub_2272B4698;
  aBlock[5] = v45;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_353;
  v46 = _Block_copy(aBlock);
  v47 = v43;
  v48 = v86;
  sub_22766B3D0();
  v102 = MEMORY[0x277D84F90];
  sub_226E9ECD0(&qword_2813A5870, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9D394();
  v49 = v88;
  v50 = v91;
  sub_22766CC80();
  sub_22766C910();
  _Block_release(v46);

  (*(v90 + 8))(v49, v50);
  (*(v87 + 8))(v48, v89);
  sub_226EA4FC0(v100);
}

uint64_t sub_226EBF8E8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226EBF98C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_state;
  swift_beginAccess();
  return sub_226EA81F8(v3 + v4, a1);
}

void sub_226EBF9F8(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v20 - v15;
  if (a2)
  {
    v20 = a1;
    v21 = 1;
    v17 = a1;
    a5(&v20);
    sub_226EB4548(a1, 1);
  }

  else
  {
    a3(v14);
    v18 = sub_227669290();
    v19 = swift_allocObject();
    *(v19 + 16) = a5;
    *(v19 + 24) = a6;

    v18(sub_226E9F7B0, v19);

    (*(v12 + 8))(v16, v11);
  }
}

uint64_t sub_226EBFBA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  return sub_227669270();
}

uint64_t sub_226EBFCC0@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v8 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return v7(a3, v8, v5);
}

void sub_226EBFD38(void *a1, char a2, void (*a3)(void *), uint64_t a4, void (*a5)(void *), uint64_t a6)
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
    v17 = MEMORY[0x277D85008];
    v18 = a1;
    v19 = 1;
  }

  else
  {
    v23[0] = a1;

    a3(v23);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = a5;
    *(v21 + 24) = a6;

    v20(sub_226EC29B8, v21);

    (*(v12 + 8))(v15, v11);
    v17 = MEMORY[0x277D85008];
    v18 = a1;
    v19 = 0;
  }

  sub_226EB4668(v18, v19, v17);
}

uint64_t sub_226EBFF7C(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = *a2;
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 40) = v6;

  return sub_227669270();
}

uint64_t sub_226EC004C(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v71 - v20;
  v78 = v22;
  MEMORY[0x28223BE20](v19);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_226EC0768(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v29, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v21, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_2272B822C;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2272B822C;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

unint64_t sub_226EC0768(char a1)
{
  result = 0x746E497972657571;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000024;
      break;
    case 2:
    case 3:
    case 19:
      result = 0xD000000000000023;
      break;
    case 4:
    case 15:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0xD00000000000001DLL;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 7:
      result = 0xD00000000000001ELL;
      break;
    case 8:
    case 16:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 10:
      result = 0xD00000000000001DLL;
      break;
    case 12:
      result = 0xD000000000000026;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    case 14:
      result = 0xD00000000000001FLL;
      break;
    case 17:
    case 21:
      result = 0xD000000000000012;
      break;
    case 18:
      result = 0xD00000000000001DLL;
      break;
    case 20:
      return result;
    default:
      result = 0xD000000000000028;
      break;
  }

  return result;
}

uint64_t objectdestroy_69Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EC0A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v11 = *(a1 + 112);
  sub_2276696A0();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;

  v13 = sub_227669290();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_226EB4354;
  *(v14 + 24) = v12;

  v13(sub_226EB4544, v14);

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_226EC0D0C(uint64_t a1, uint64_t a2, char a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v77 = a6;
  v72 = a4;
  v10 = sub_22766B390();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v82 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766BE40();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v71 - v20;
  v78 = v22;
  MEMORY[0x28223BE20](v19);
  v85 = v71 - v23;
  v24 = sub_22766BD20();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v71 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;
  v76 = v32;
  sub_226EC0768(a3);

  sub_22766BD10();
  v79 = v31;
  v80 = v25;
  v33 = *(v25 + 16);
  v81 = v24;
  v33(v29, v31, v24);
  sub_22766BE30();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    v35 = a5;
    v36 = v72;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v86[2] = 0;
  }

  v86[0] = v36;
  v86[1] = v35;
  v87 = v34;

  v37 = v85;
  sub_22766BE20();
  v38 = v84;
  v39 = v84 + 8;
  v72 = *(v84 + 8);
  v72(v21, v13);
  sub_226E97D1C(v86, &unk_27D7BC990, &qword_227670A30);
  v40 = v82;
  sub_22766A730();
  v41 = v73;
  v42 = v37;
  v43 = *(v38 + 16);
  v43(v73, v42, v13);
  v44 = sub_22766B380();
  v45 = sub_22766C8B0();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v83;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71[1] = v39;
    v50 = v43;
    v51 = v49;
    v86[0] = v49;
    *v48 = 136315138;
    v50(v47, v41, v13);
    v52 = sub_22766C060();
    v53 = v41;
    v54 = v52;
    v56 = v55;
    v57 = v72;
    v72(v53, v13);
    v58 = sub_226E97AE8(v54, v56, v86);
    v47 = v83;

    *(v48 + 4) = v58;
    _os_log_impl(&dword_226E8E000, v44, v45, "ScriptConnection invoking %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v59 = v51;
    v43 = v50;
    MEMORY[0x22AA9A450](v59, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);

    (*(v74 + 8))(v82, v75);
  }

  else
  {

    v57 = v72;
    v72(v41, v13);
    (*(v74 + 8))(v40, v75);
  }

  v60 = v85;
  sub_22766BD50();
  v87 = sub_22766B9C0();
  v88 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v86);
  sub_22766B9B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v86);
  v43(v47, v60, v13);
  v61 = v84;
  v62 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v63 = (v78 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v61 + 32))(v64 + v62, v47, v13);
  v65 = (v64 + v63);
  v66 = v76;
  *v65 = sub_2272B822C;
  v65[1] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_2272B822C;
  *(v67 + 24) = v66;
  v68 = sub_226EA1CF4();

  v69 = sub_22766C950();
  v87 = v68;
  v88 = MEMORY[0x277D225C0];
  v86[0] = v69;
  sub_22766BDD0();

  v57(v60, v13);
  (*(v80 + 8))(v79, v81);
  return __swift_destroy_boxed_opaque_existential_0(v86);
}

uint64_t sub_226EC1424(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_226EC14C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_226EC161C(v4, a1);
}

uint64_t sub_226EC154C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t sub_226EC161C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_226EC1698()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v7 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = sub_2272C509C;
  }

  else
  {
    v5 = *(v2 + 304);

    v4 = sub_226EBC8F0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226EC17B4(void *(*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    while (1)
    {
      v8 = *v7++;
      v13 = v8;
      v9 = a1(&v12, &v13);
      if (v3)
      {
        break;
      }

      if (v12)
      {
        MEMORY[0x22AA985C0](v9);
        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v10 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22766C360();
        }

        sub_22766C3A0();
        v4 = v14;
      }

      if (!--v5)
      {
        return v4;
      }
    }
  }

  return v4;
}

size_t sub_226EC18B4(size_t a1, int64_t a2, char a3)
{
  result = sub_226EB90AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id sub_226EC1938@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X5>, _BYTE *a6@<X6>, void *a7@<X8>)
{
  v8 = *a2 + 1;
  if (__OFADD__(*a2, 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *a1;
  *a2 = v8;
  v10 = 20 * a5;
  if ((a5 * 20) >> 64 != (20 * a5) >> 63)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = __OFADD__(v8, v10);
  v12 = v8 + v10;
  if (v11)
  {
LABEL_20:
    __break(1u);
    JUMPOUT(0x226EC1A70);
  }

  v14 = v9;
  v15 = *a6;
  v16 = 1;
  v17 = 10;
  v18 = 0;
  switch(v15)
  {
    case 1:
      v17 = 25;
      goto LABEL_16;
    case 2:
      v17 = 50;
      goto LABEL_16;
    case 3:
      v17 = 100;
      goto LABEL_16;
    case 4:
      v17 = 250;
      goto LABEL_16;
    case 5:
      v17 = 500;
      goto LABEL_16;
    case 6:
      v17 = 750;
      goto LABEL_16;
    case 7:
      v17 = 1000;
      goto LABEL_16;
    case 8:
      v17 = 1250;
      goto LABEL_16;
    case 9:
      v17 = 1500;
      goto LABEL_16;
    case 10:
      v17 = 1750;
      goto LABEL_16;
    case 11:
      v17 = 2000;
      goto LABEL_16;
    case 12:
      goto LABEL_17;
    default:
LABEL_16:
      v16 = 0;
      v18 = v17;
LABEL_17:
      result = sub_226EBD004(a3, qword_22767EF88[v9], a4 & 1, v12, v18, v16);
      *a6 = v14;
      *a7 = result;
      return result;
  }
}

unint64_t sub_226EC1AA4()
{
  result = qword_28139BC58;
  if (!qword_28139BC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B86D0, &qword_22768B670);
    sub_226EB9ED4(&qword_28139B670, MEMORY[0x277D52360]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139BC58);
  }

  return result;
}

void sub_226EC1B88(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v25[-1] - v19;
  if (a2)
  {
    v25[0] = a1;
    v25[1] = 0;
    v26 = 1;
    v21 = a1;
    a5(v25);
    sub_226EB4548(a1, 1);
  }

  else
  {
    a3(v18);
    v22 = sub_227669290();
    v23 = swift_allocObject();
    *(v23 + 16) = a5;
    *(v23 + 24) = a6;

    v22(a10, v23);

    (*(v16 + 8))(v20, v15);
  }
}

uint64_t sub_226EC1D18(uint64_t a1)
{
  v2 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = a1;

  return MEMORY[0x2822009F8](sub_226EC1EC0, 0, 0);
}

unint64_t sub_226EC1E18()
{
  result = qword_28139B7D0;
  if (!qword_28139B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B7D0);
  }

  return result;
}

unint64_t sub_226EC1E6C()
{
  result = qword_28139B680;
  if (!qword_28139B680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B680);
  }

  return result;
}

uint64_t sub_226EC1EC0()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[17];
  v3[11] = v0[30];
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_227670B30;
  sub_226EC2200();
  *(v4 + 32) = v5;
  v3[12] = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_227670B30;
  sub_226EC250C();
  *(v6 + 32) = v7;
  v3[13] = v6;
  v8 = sub_226EC26B4(v3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC7D0, &qword_22767EF68);
  swift_arrayDestroy();
  if (v8 >> 62)
  {
    v9 = sub_22766CD20();
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_11:

    v16 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_3:
  v19 = MEMORY[0x277D84F90];
  result = sub_22766CF30();
  if (v9 < 0)
  {
    __break(1u);
    return result;
  }

  sub_227669DE0();
  v11 = 0;
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x22AA991A0](v11, v8);
    }

    else
    {
      v12 = *(v8 + 8 * v11 + 32);
    }

    v13 = v12;
    ++v11;
    sub_227669D80();
    v14 = sub_22766BFD0();

    [v13 setSourceName_];

    sub_22766CF00();
    v15 = *(v19 + 16);
    sub_22766CF40();
    sub_22766CF50();
    sub_22766CF10();
  }

  while (v9 != v11);

  v16 = v19;
LABEL_12:
  v17 = sub_226EC2980(v16);

  v18 = v0[1];

  return v18(v17);
}

uint64_t sub_226EC2110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);

  return sub_227669270();
}

unint64_t sub_226EC21AC()
{
  result = qword_28139B530;
  if (!qword_28139B530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B530);
  }

  return result;
}

void sub_226EC2200()
{
  v1 = v0[3];
  v2 = *v0 + v1;
  if (__OFADD__(*v0, v1))
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CE8D50]) init];
  v5 = sub_22766BFD0();
  [v4 setUniqueName_];

  [v4 setVersion_];
  [v4 setMinimumEngineVersion_];
  v6 = sub_22766BFD0();
  [v4 setPredicate_];

  v7 = sub_22766BFD0();
  [v4 setValueExpression_];

  v8 = sub_22766BFD0();
  [v4 setProgressExpression_];

  v9 = sub_22766BFD0();
  [v4 setGoalExpression_];

  v10 = [objc_opt_self() countUnit];
  [v4 setCanonicalUnit_];

  [v4 setEarnLimit_];
  [v4 setVisibilityPredicate_];
  [v4 setDuplicateRemovalStrategy_];
  [v4 setDuplicateRemovalCalendarUnit_];
  [v4 setDisplaysEarnedInstanceCount_];
  [v4 setEarnDateStrategy_];
  if ((v3 & 0x8000000000000000) == 0)
  {
    [v4 setDisplayOrder_];
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_226EC2474(void (*a1)(void *), uint64_t a2, void (*a3)(void *__return_ptr))
{
  a3(v6);
  v4 = v6[0];
  v5 = v6[1];
  v7 = 0;
  a1(v6);

  sub_226EC33EC(v4, v5, 0);
}

void sub_226EC250C()
{
  v1 = v0[4];
  v2 = *v0 + v1;
  if (__OFADD__(*v0, v1))
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CE8D50]) init];
  v5 = sub_22766BFD0();
  [v4 setUniqueName_];

  [v4 setVersion_];
  [v4 setMinimumEngineVersion_];
  v6 = sub_22766BFD0();
  [v4 setPredicate_];

  [v4 setEarnLimit_];
  [v4 setVisibilityPredicate_];
  [v4 setDuplicateRemovalStrategy_];
  [v4 setDuplicateRemovalCalendarUnit_];
  [v4 setDisplaysEarnedInstanceCount_];
  [v4 setEarnDateStrategy_];
  if ((v3 & 0x8000000000000000) == 0)
  {
    [v4 setDisplayOrder_];
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_226EC26B4(uint64_t a1)
{
  v29 = *(a1 + 16);
  if (!v29)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v28 = a1 + 32;
  while (1)
  {
    v4 = *(v28 + 8 * v1);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      if (v4 < 0)
      {
        v25 = *(v28 + 8 * v1);
      }

      v6 = sub_22766CD20();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v26 = sub_22766CD20();
      v9 = v26 + v6;
      if (__OFADD__(v26, v6))
      {
LABEL_35:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_35;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v32 = v6;
    if (!result)
    {
      break;
    }

    if (v7)
    {
      goto LABEL_18;
    }

    v10 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v9 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_17;
    }

    v11 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (v5)
    {
      goto LABEL_20;
    }

LABEL_13:
    v13 = v4;
    v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (((v12 >> 1) - v11) < v32)
    {
      goto LABEL_39;
    }

    v30 = v2;
    v17 = v10 + 8 * v11 + 32;
    v27 = v10;
    if (v5)
    {
      if (v14 < 1)
      {
        goto LABEL_41;
      }

      sub_2272C7054();
      for (i = 0; i != v14; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC7D0, &qword_22767EF68);
        v19 = sub_2275F0174(v31, i, v13);
        v21 = *v20;
        (v19)(v31, 0);
        *(v17 + 8 * i) = v21;
      }
    }

    else
    {
      sub_226EBD6C8();
      swift_arrayInitWithCopy();
    }

    v2 = v30;
    if (v32 >= 1)
    {
      v22 = *(v27 + 16);
      v23 = __OFADD__(v22, v32);
      v24 = v22 + v32;
      if (v23)
      {
        goto LABEL_40;
      }

      *(v27 + 16) = v24;
    }

LABEL_4:
    if (++v1 == v29)
    {
      return v2;
    }
  }

  if (!v7)
  {
    v10 = v2 & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v15 = *(v10 + 16);
    goto LABEL_19;
  }

LABEL_18:
  sub_22766CD20();
LABEL_19:
  result = sub_22766CE90();
  v2 = result;
  v10 = result & 0xFFFFFFFFFFFFFF8;
  v11 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  v12 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_20:
  v13 = v4;
  v16 = v10;
  result = sub_22766CD20();
  v10 = v16;
  v14 = result;
  if (result)
  {
    goto LABEL_21;
  }

LABEL_3:

  if (v32 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_226EC29BC(unint64_t a1, unint64_t a2, uint64_t *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v12 = sub_226E99364(0, a2, a3);
    v13 = sub_226ECCEB4(a4, a2, a3);
    result = MEMORY[0x22AA98980](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x22AA991A0](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      ++a2;
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_22766CD20();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_226EC2B14(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(result + 16);
  v5 = *result;
  v6 = v4;
  if (v2)
  {
    return v2(&v5);
  }

  return result;
}

uint64_t sub_226EC2B80(void *a1, void *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_22766CD30();

    if (v17)
    {

      sub_226E99364(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v38;
    }

    else
    {
      result = sub_22766CD20();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_2270C1C4C(v15, result + 1, a5, a6, a3, a4);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_2270D9070(v30 + 1, a5, a6);
        }

        v31 = v16;
        sub_2270D9BC4(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    sub_226E99364(0, a3, a4);
    v19 = *(v14 + 40);
    v20 = sub_22766CB20();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_22766CB30();

        if (v25)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v32 = *(*(v14 + 48) + 8 * v22);
      *a1 = v32;
      v33 = v32;
      return 0;
    }

    else
    {
LABEL_11:
      v26 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *v11;
      v28 = a2;
      sub_226EC2E3C(v28, v22, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v39;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_226EC2DF4(uint64_t result, uint64_t (*a2)(__int128 *))
{
  v2 = *(result + 16);
  v3 = *result;
  v4 = v2;
  if (a2)
  {
    return a2(&v3);
  }

  return result;
}

void sub_226EC2E3C(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_2270D9070(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2270EF3DC(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_227102DF0(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = *(*v7 + 40);
  v16 = sub_22766CB20();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_226E99364(0, v12, v13);
    do
    {
      v19 = *(*(v14 + 48) + 8 * a2);
      v20 = sub_22766CB30();

      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22766D210();
  __break(1u);
}

uint64_t sub_226EC2FCC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8), *(a1 + 16));
}

uint64_t sub_226EC3004(void *a1, uint64_t a2, char a3)
{
  v7 = *(sub_22766B780() - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 24) & ~v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v3 + 16);
  v12 = *(v3 + v10);

  return sub_226EC30CC(a1, a2, a3 & 1, v11, v3 + v9, v12, v3 + ((v8 + v10 + 8) & ~v8));
}

uint64_t sub_226EC30CC(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a6;
  v30 = a4;
  v28 = a3;
  v27 = a2;
  v25 = a1;
  v10 = sub_22766B780();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v26 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  v16 = *(v11 + 16);
  v16(&v25 - v14, a5, v10);
  v16(&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a7, v10);
  v17 = *(v11 + 80);
  v18 = (v17 + 33) & ~v17;
  v19 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v17 + v19 + 8) & ~v17;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  v22 = v27;
  *(v21 + 24) = v27;
  LOBYTE(v16) = v28 & 1;
  *(v21 + 32) = v28 & 1;
  v23 = *(v11 + 32);
  v23(v21 + v18, v15, v10);
  *(v21 + v19) = v29;
  v23(v21 + v20, v26, v10);
  sub_226EC33DC(v25, v22, v16);

  sub_22766B9E0();
}

uint64_t sub_226EC32D0()
{
  v1 = sub_22766B780();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v3 + v6 + 8) & ~v3;
  sub_226EC33EC(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v9 = *(v0 + v6);

  v8(v0 + v7, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + v5, v3 | 7);
}

id sub_226EC33DC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void sub_226EC33EC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_226EC33FC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7[0] = a1;
  v7[1] = a2;
  v8 = a3 & 1;
  return v4(v7);
}

void sub_226EC343C(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a5;
  v44 = sub_22766BD00();
  v43 = *(v44 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v44);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_22766B390();
  v13 = *(v46 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v46);
  v17 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v18);
  v20 = v42 - v19;
  if (a3)
  {
    sub_22766A730();
    v21 = a1;
    v22 = sub_22766B380();
    v23 = sub_22766C890();
    sub_226EC33EC(a1, a2, 1);
    v24 = os_log_type_enabled(v22, v23);
    v42[3] = v13;
    v42[2] = a1;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v42[1] = v17;
      v27 = v26;
      v49[0] = v26;
      *v25 = 136446210;
      swift_getErrorValue();
      v28 = MEMORY[0x22AA995D0](v47, v48);
      v30 = sub_226E97AE8(v28, v29, v49);
      v42[0] = a6;
      v31 = v30;

      *(v25 + 4) = v31;
      v32 = v46;
      _os_log_impl(&dword_226E8E000, v22, v23, "Rejecting script promise with error: %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AA9A450](v27, -1, -1);
      MEMORY[0x22AA9A450](v25, -1, -1);

      (*(v13 + 8))(v20, v32);
    }

    else
    {

      (*(v13 + 8))(v20, v46);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v35 = Strong;
      swift_getErrorValue();
      sub_2273331E8();
      sub_22766BCD0();
      (*(v43 + 8))(v12, v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FE8, &qword_227672B80);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_227670CD0;
      v38 = v50;
      v39 = __swift_project_boxed_opaque_existential_0(v49, v50);
      *(v37 + 56) = v38;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v37 + 32));
      (*(*(v38 - 8) + 16))(boxed_opaque_existential_0, v39, v38);
      v41 = sub_22766B770();

      __swift_destroy_boxed_opaque_existential_0(v49);
    }

    else
    {
    }
  }

  else
  {
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FE8, &qword_227672B80);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_227670CD0;
      *(v33 + 56) = MEMORY[0x277D837D0];
      *(v33 + 32) = a1;
      *(v33 + 40) = a2;

      v46 = sub_22766B770();

      v36 = v46;
    }

    else
    {
      v36 = sub_22766B770();
    }
  }
}

uint64_t sub_226EC3C5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(uint64_t *a1)@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = swift_allocObject();
  *(v9 + 2) = a2;
  *(v9 + 3) = a3;
  *(v9 + 4) = v8;
  *(v9 + 5) = v7;
  *a4 = sub_226EC3EEC;
  a4[1] = v9;
}

uint64_t sub_226EC3CE4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226EC3D24(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - v12;
  v15 = *a1;
  v14 = a1[1];
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  v17 = sub_22766C4B0();
  (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = sub_226EC8390;
  v18[5] = v16;
  v18[6] = a2;
  v18[7] = a3;
  v18[8] = a4;
  v18[9] = a5;

  sub_2272CA940(0, 0, v13, &unk_227688BA0, v18);
}

uint64_t sub_226EC3E98()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_226EC3EF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_226E92F34;

  return sub_226EC3FE4(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_226EC3FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = a5;
  v13 = (a6 + *a6);
  v10 = a6[1];
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = sub_226EC81E4;

  return v13(a8);
}

uint64_t sub_226EC40F0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_227485278;

  return sub_226EC41A0(a1, a2, v7, v6);
}

uint64_t sub_226EC41A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_227666ED0();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226EC4264, 0, 0);
}

uint64_t sub_226EC4264()
{
  if (v0[6])
  {
    v1 = v0[11];
    v2 = v0[9];
    v3 = v0[5];
    v4 = v0[6];

    sub_227667720();
    v13 = (v0[7] + *v0[7]);
    v5 = *(v0[7] + 4);
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_226EC7EAC;
    v7 = v0[11];
    v8 = v0[8];

    return v13(v0 + 2, v7);
  }

  else
  {
    sub_226F6649C();
    swift_allocError();
    *v10 = 2;
    swift_willThrow();
    v11 = v0[11];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_226EC4424(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = v2[3];
  v9 = *(v2 + 4);
  v8 = *(v2 + 5);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_226E93028;

  return sub_226EC4504(a1, a2, v6, v9, v8, v7);
}

uint64_t sub_226EC4504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_226EC7924;

  return sub_226EC45CC(a2, a3, a4, a5, a6);
}

uint64_t sub_226EC45CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 80) = a3;
  *(v5 + 88) = a4;
  *(v5 + 72) = a5;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  *(v5 + 96) = v6;
  v7 = *(v6 - 8);
  *(v5 + 104) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226EC46A0, 0, 0);
}

uint64_t sub_226EC46A0()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[14];
    v4 = v0[12];
    v5 = *(Strong + 112);
    sub_2276696A0();

    v6 = swift_task_alloc();
    v0[15] = v6;
    *(v6 + 16) = "SeymourServices/ScriptConnection.swift";
    *(v6 + 24) = 38;
    *(v6 + 32) = 2;
    *(v6 + 40) = 210;
    *(v6 + 48) = v3;
    v7 = *(MEMORY[0x277D85A40] + 4);
    v8 = swift_task_alloc();
    v0[16] = v8;
    *v8 = v0;
    v8[1] = sub_226EC4FD0;
    v9 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_227485280, v6, v9);
  }

  else
  {
    v15 = (v0[10] + *v0[10]);
    v10 = *(v0[10] + 4);
    v11 = swift_task_alloc();
    v0[18] = v11;
    *v11 = v0;
    v11[1] = sub_226EC6E14;
    v12 = v0[11];
    v13 = v0[7];

    return v15(v0 + 5, v13);
  }
}

uint64_t sub_226EC48EC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA190, &qword_227678478);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_22766B390();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v18 = sub_22766B380();
  v41 = sub_22766C8B0();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_22766CE50();
    v39 = a4;
    v23 = sub_226E97AE8(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_226E8E000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v30, -1, -1);
    MEMORY[0x22AA9A450](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v34 = sub_227669290();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_226EC4D58;
  *(v35 + 24) = v33;

  v34(sub_226E9F7B0, v35);
}

uint64_t sub_226EC4D80(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v30 = a7;
  v29 = a6;
  v31 = a2;
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A710();
  v16 = sub_22766B380();
  v17 = sub_22766C8B0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28[1] = a8;
    v19 = v18;
    v20 = swift_slowAlloc();
    v28[0] = a1;
    v21 = v20;
    v32 = v20;
    *v19 = 134218498;
    *(v19 + 4) = a3;
    *(v19 + 12) = 2080;
    v22 = sub_22766CE50();
    v24 = sub_226E97AE8(v22, v23, &v32);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v30;
    _os_log_impl(&dword_226E8E000, v16, v17, "Finished P->A conversion: %ld:%s:%lu", v19, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v21);
    v25 = v21;
    a1 = v28[0];
    MEMORY[0x22AA9A450](v25, -1, -1);
    MEMORY[0x22AA9A450](v19, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  if (v31)
  {
    v32 = a1;
    v26 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA190, &qword_227678478);
    return sub_22766C440();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA190, &qword_227678478);
    return sub_22766C450();
  }
}

uint64_t sub_226EC4FD0()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  v2[17] = v0;

  v5 = v2[15];
  if (v0)
  {

    v6 = sub_2274861D0;
  }

  else
  {
    v8 = v2[13];
    v7 = v2[14];
    v9 = v2[12];

    (*(v8 + 8))(v7, v9);
    v6 = sub_226EC5128;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}