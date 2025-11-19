void sub_268ADC980(uint64_t a1)
{
  v16 = MEMORY[0x277D84F90];
  v2 = sub_2688EFD0C(a1);
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x26D625BD0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    v6 = [v4 context];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 nowPlayingState];

      if (!v8)
      {
        goto LABEL_16;
      }
    }

    v9 = [v5 context];
    if (!v9)
    {
      goto LABEL_16;
    }

    v10 = v9;
    v11 = [v9 nowPlayingMediaType];

    if (v11 != 7)
    {
      goto LABEL_16;
    }

    v12 = [v5 context];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 proximity];
    }

    else
    {
      v14 = 0;
    }

    if (sub_268AD3DDC(v14, v13 == 0, &unk_28794F0D8))
    {
      sub_268B38214();
      v15 = *(v16 + 16);
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    else
    {
LABEL_16:
    }
  }
}

void sub_268ADCB40()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v4 = sub_268B37A54();
  v5 = OUTLINED_FUNCTION_1(v4);
  v30 = v6;
  v31 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  v32 = MEMORY[0x277D84F90];
  v12 = sub_2688EFD0C(v3);
  for (i = 0; v12 != i; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x26D625BD0](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v14 = *(v3 + 8 * i + 32);
    }

    v15 = v14;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (sub_268ADA114(v14) || sub_268ADA06C(v15))
    {
      sub_268B38214();
      v16 = v32[2];
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    else
    {
    }
  }

  v1 = v32;
  if (qword_2802A4F30 == -1)
  {
    goto LABEL_14;
  }

LABEL_19:
  OUTLINED_FUNCTION_0_2();
  swift_once();
LABEL_14:
  OUTLINED_FUNCTION_82(v31, qword_2802CDA10);
  OUTLINED_FUNCTION_15_7();
  v17(v11);

  v18 = sub_268B37A34();
  v19 = sub_268B37F04();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_172_0();
    v21 = OUTLINED_FUNCTION_173_0();
    v32 = v21;
    *v20 = 136315138;
    v22 = type metadata accessor for Device();
    v23 = MEMORY[0x26D6256F0](v1, v22);
    v25 = sub_26892CDB8(v23, v24, &v32);

    *(v20 + 4) = v25;
    OUTLINED_FUNCTION_44_9();
    _os_log_impl(v26, v27, v28, v29, v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    OUTLINED_FUNCTION_12_8();
    OUTLINED_FUNCTION_12();
  }

  (*(v30 + 8))(v11, v31);
  sub_268AD6F0C(1, v1);

  OUTLINED_FUNCTION_23();
}

void sub_268ADCDE0()
{
  OUTLINED_FUNCTION_26();
  v76 = v1;
  v3 = v2;
  v4 = sub_268B37A54();
  v5 = OUTLINED_FUNCTION_1(v4);
  v80 = v6;
  v81 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_20_0();
  v74 = v9 - v10;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  v77 = v12;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18();
  v79 = v14;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v15);
  v17 = &v74 - v16;
  v78 = v3;
  v75 = v0;
  v18 = sub_268AD70C8(v3);
  v19 = sub_2688EFD0C(v18);
  v20 = 0;
  v21 = v18 & 0xC000000000000001;
  while (v19 != v20)
  {
    if (v21)
    {
      v22 = MEMORY[0x26D625BD0](v20, v18);
    }

    else
    {
      if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_49;
      }

      v22 = *(v18 + 8 * v20 + 32);
    }

    v23 = v22;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      OUTLINED_FUNCTION_0_2();
      swift_once();
LABEL_25:
      v33 = v81;
      OUTLINED_FUNCTION_82(v81, qword_2802CDA10);
      v35 = v79;
      v34 = v80;
      (*(v80 + 16))(v79);

      v36 = sub_268B37A34();
      v37 = sub_268B37EC4();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = OUTLINED_FUNCTION_172_0();
        v39 = OUTLINED_FUNCTION_173_0();
        v83 = v39;
        *v38 = 136315138;
        v40 = type metadata accessor for Device();
        v41 = MEMORY[0x26D6256F0](v19, v40);
        v43 = sub_26892CDB8(v41, v42, &v83);

        *(v38 + 4) = v43;
        OUTLINED_FUNCTION_60_5(&dword_2688BB000, v36, v37, "selectMostRelevantContexts: Selecting playing immediate device context(s): %s");
        __swift_destroy_boxed_opaque_existential_0Tm(v39);
        OUTLINED_FUNCTION_84_0();
        OUTLINED_FUNCTION_6();
      }

      (*(v34 + 8))(v35, v33);
      goto LABEL_34;
    }

    v24 = [v22 context];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 proximity];

      if ((v26 - 1) >= 4)
      {
        if (v26)
        {
          while (1)
          {
            v83 = v26;
LABEL_54:
            sub_268B38474();
            __break(1u);
          }
        }

        if (qword_2802A4F30 != -1)
        {
          OUTLINED_FUNCTION_0_2();
          swift_once();
        }

        v57 = v81;
        OUTLINED_FUNCTION_82(v81, qword_2802CDA10);
        v58 = v80;
        (*(v80 + 16))(v17);
        v59 = sub_268B37A34();
        sub_268B37EC4();
        OUTLINED_FUNCTION_13();
        if (os_log_type_enabled(v59, v60))
        {
          *OUTLINED_FUNCTION_14() = 0;
          OUTLINED_FUNCTION_78_0(&dword_2688BB000, v61, v62, "selectMostRelevantContexts: Selecting the playing primary device context");
          OUTLINED_FUNCTION_84_0();
        }

        (*(v58 + 8))(v17, v57);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        v63 = swift_allocObject();
        *(v63 + 16) = xmmword_268B3BBA0;
        *(v63 + 32) = v23;
        goto LABEL_34;
      }
    }

    ++v20;
  }

  v27 = 0;
  v83 = MEMORY[0x277D84F90];
  while (v19 != v27)
  {
    if (v21)
    {
      v28 = MEMORY[0x26D625BD0](v27, v18);
    }

    else
    {
      if (v27 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }

      v28 = *(v18 + 8 * v27 + 32);
    }

    v29 = v28;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_50;
    }

    v30 = [v28 context];
    if (v30)
    {
      v26 = v30;
      v31 = [v30 proximity];

      switch(v31)
      {
        case 0uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
          break;
        case 1uLL:
          sub_268B38214();
          v32 = v83[2];
          sub_268B38244();
          sub_268B38254();
          sub_268B38224();
          goto LABEL_20;
        default:
          v82 = v31;
          goto LABEL_54;
      }
    }

LABEL_20:
    ++v27;
  }

  v19 = v83;
  if (sub_2688EFD0C(v83))
  {

    if (qword_2802A4F30 != -1)
    {
      goto LABEL_52;
    }

    goto LABEL_25;
  }

  v44 = v78;
  sub_268ADC980(v78);
  v46 = v45;
  if (sub_2688EFD0C(v45))
  {

    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v47 = v81;
    OUTLINED_FUNCTION_82(v81, qword_2802CDA10);
    v48 = v80;
    v49 = v77;
    (*(v80 + 16))(v77);

    v50 = sub_268B37A34();
    v51 = sub_268B37EC4();

    if (os_log_type_enabled(v50, v51))
    {
      OUTLINED_FUNCTION_172_0();
      v52 = OUTLINED_FUNCTION_53_1();
      v83 = v52;
      LODWORD(selRef_groupLeader) = 136315138;
      v53 = type metadata accessor for Device();
      v54 = MEMORY[0x26D6256F0](v46, v53);
      v56 = sub_26892CDB8(v54, v55, &v83);

      *(&selRef_groupLeader + 4) = v56;
      OUTLINED_FUNCTION_56_8(&dword_2688BB000, v50, v51, "selectMostRelevantContexts: Found same room devices with video up on the screen, returning those devices: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      OUTLINED_FUNCTION_84_0();
      OUTLINED_FUNCTION_20_2();
    }

    (*(v48 + 8))(v49, v47);
  }

  else
  {

    v83 = v18;
    v64 = __swift_project_boxed_opaque_existential_1((v75 + 16), *(v75 + 40));
    v65 = sub_268AE15A4(v76, *v64, v44);
    if (sub_2688EFD0C(v65))
    {
      sub_2689848D8(v65);
    }

    else
    {

      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      OUTLINED_FUNCTION_82(v81, qword_2802CDA10);
      v66 = v80;
      (*(v80 + 16))(v74);
      v67 = sub_268B37A34();
      sub_268B37EC4();
      OUTLINED_FUNCTION_13();
      if (os_log_type_enabled(v67, v68))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_78_0(&dword_2688BB000, v69, v70, "selectMostRelevantContexts: No devices selected");
        OUTLINED_FUNCTION_84_0();
      }

      v71 = *(v66 + 8);
      v72 = OUTLINED_FUNCTION_192();
      v73(v72);
    }
  }

LABEL_34:
  OUTLINED_FUNCTION_23();
}

uint64_t *sub_268ADD560()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  v1 = v0[17];

  v2 = v0[18];

  return v0;
}

uint64_t sub_268ADD5A0()
{
  sub_268ADD560();

  return MEMORY[0x2821FE8D8](v0, 152, 7);
}

BOOL sub_268ADD5F8()
{
  OUTLINED_FUNCTION_40_12();
  sub_268B37C54();
  sub_268B38544();
  v5 = *(v4 + 32);
  OUTLINED_FUNCTION_63_7();
  v8 = ~v7;
  while (1)
  {
    v9 = v6 & v8;
    v10 = (1 << (v6 & v8)) & *(v4 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    v11 = (*(v4 + 48) + 16 * v9);
    v12 = *v11 == v3 && v11[1] == v1;
    if (v12 || (OUTLINED_FUNCTION_86_6() & 1) != 0)
    {

      v13 = (*(v4 + 48) + 16 * v9);
      v14 = v13[1];
      *v0 = *v13;
      v0[1] = v14;

      return v10 == 0;
    }

    v6 = v9 + 1;
  }

  v15 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_82_4();
  v16 = OUTLINED_FUNCTION_52_11();
  sub_268ADE04C(v16, v17, v18, v19);
  *v2 = v21;
  *v0 = v3;
  v0[1] = v1;
  return v10 == 0;
}

uint64_t sub_268ADD6FC()
{
  OUTLINED_FUNCTION_40_12();
  sub_268B38534();
  if (v1)
  {
    sub_268B37C54();
  }

  sub_268B38544();
  v5 = *(v4 + 32);
  OUTLINED_FUNCTION_63_7();
  v8 = v7 & ~v6;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_15:
    v14 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_82_4();
    v15 = OUTLINED_FUNCTION_52_11();
    sub_268ADE1B4(v15, v16, v17, v18);
    *v2 = v20;
    *v0 = v3;
    v0[1] = v1;
    return 1;
  }

  v9 = ~v6;
  v10 = *(v4 + 48);
  while (1)
  {
    v11 = (v10 + 16 * v8);
    v12 = v11[1];
    if (v12)
    {
      break;
    }

    if (!v1)
    {
      goto LABEL_17;
    }

LABEL_14:
    v8 = (v8 + 1) & v9;
    if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (!v1)
  {
    goto LABEL_14;
  }

  v13 = *v11 == v3 && v12 == v1;
  if (!v13 && (OUTLINED_FUNCTION_86_6() & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  *v0 = *(*(v4 + 48) + 16 * v8);

  return 0;
}

BOOL sub_268ADD83C(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_268B38514();
  MEMORY[0x26D625F10](a2);
  v7 = sub_268B38544();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    if (*(*(v5 + 48) + 8 * v9) == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  v11 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  sub_268ADE370(a2, v9, isUniquelyReferenced_nonNull_native);
  *v2 = v14;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_268ADD92C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B00, qword_268B3C520);
  result = sub_268B38184();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_2688F204C(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_268B38514();
    sub_268B37C54();
    result = sub_268B38544();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

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
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_268ADDB88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A88F8, &qword_268B50380);
  result = sub_268B38184();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_31:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_2688F204C(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v19 = *v17;
    v18 = v17[1];
    v20 = *(v6 + 40);
    sub_268B38514();
    sub_268B38534();
    if (v18)
    {
      sub_268B37C54();
    }

    result = sub_268B38544();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v18;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

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
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_25;
    }
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_268ADDE00(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8908, &qword_268B50390);
  result = sub_268B38184();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_2688F204C(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_268B38514();
    MEMORY[0x26D625F10](v17);
    result = sub_268B38544();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_268ADE04C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_268ADD92C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_268ADE894(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_268B38514();
      sub_268B37C54();
      result = sub_268B38544();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_268B38444() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_268ADE4A8();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_268B38484();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_268ADE1B4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 <= v9 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_268ADDB88(v9 + 1);
    }

    else
    {
      if (v10 > v9)
      {
        result = sub_268ADE600();
        goto LABEL_22;
      }

      sub_268ADEAC8(v9 + 1);
    }

    v11 = *v4;
    v12 = *(*v4 + 40);
    sub_268B38514();
    sub_268B38534();
    if (a2)
    {
      sub_268B37C54();
    }

    result = sub_268B38544();
    v13 = v11 + 56;
    v14 = -1 << *(v11 + 32);
    a3 = result & ~v14;
    if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v15 = ~v14;
      v16 = *(v11 + 48);
      do
      {
        v17 = (v16 + 16 * a3);
        v18 = v17[1];
        if (v18)
        {
          if (a2)
          {
            if (*v17 == v8 && v18 == a2)
            {
              goto LABEL_25;
            }

            result = sub_268B38444();
            if (result)
            {
              goto LABEL_25;
            }
          }
        }

        else if (!a2)
        {
          goto LABEL_25;
        }

        a3 = (a3 + 1) & v15;
      }

      while (((*(v13 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_22:
  v20 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = v8;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
LABEL_25:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
    result = sub_268B38484();
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }

  return result;
}

uint64_t sub_268ADE370(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_268ADDE00(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_268ADED18(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      sub_268B38514();
      MEMORY[0x26D625F10](v5);
      result = sub_268B38544();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_268ADE754();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_268B38484();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void *sub_268ADE4A8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B00, qword_268B3C520);
  v2 = *v0;
  v3 = sub_268B38174();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_268ADE600()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A88F8, &qword_268B50380);
  v2 = *v0;
  v3 = sub_268B38174();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_268ADE754()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8908, &qword_268B50390);
  v2 = *v0;
  v3 = sub_268B38174();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_268ADE894(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B00, qword_268B3C520);
  result = sub_268B38184();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_268B38514();

        sub_268B37C54();
        result = sub_268B38544();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_268ADEAC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A88F8, &qword_268B50380);
  result = sub_268B38184();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v18 = *v16;
        v17 = v16[1];
        v19 = *(v6 + 40);
        sub_268B38514();
        sub_268B38534();
        if (v17)
        {

          sub_268B37C54();
        }

        result = sub_268B38544();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v18;
        v28[1] = v17;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_25;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_29;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_268ADED18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8908, &qword_268B50390);
  result = sub_268B38184();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_268B38514();
        MEMORY[0x26D625F10](v16);
        result = sub_268B38544();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

void sub_268ADEF5C(uint64_t a1)
{
  OUTLINED_FUNCTION_43_10(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A7288, &qword_268B44560);
  v31 = v3;
  v8 = sub_268B382C4();
  if (!v2[2])
  {
LABEL_29:

    *v1 = v8;
    return;
  }

  OUTLINED_FUNCTION_13_23();
  if (!v4)
  {
LABEL_4:
    v10 = v6;
    while (1)
    {
      v6 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v1)
      {
        break;
      }

      ++v10;
      if (v5[v6])
      {
        OUTLINED_FUNCTION_75_5();
        goto LABEL_9;
      }
    }

    if (v31)
    {
      OUTLINED_FUNCTION_68_7();
      if (v28 != v29)
      {
        OUTLINED_FUNCTION_63_7();
        *v5 = v30;
      }

      else
      {
        OUTLINED_FUNCTION_83_6(v27);
      }

      v2[2] = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_76_5();
LABEL_9:
    v11 = v9 | (v6 << 6);
    v12 = (v2[6] + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = (v2[7] + 32 * v11);
    if (v31)
    {
      sub_2688EF2B0(v15, v32);
    }

    else
    {
      sub_2688EF2C0(v15, v32);
    }

    v16 = v8[5];
    sub_268B38514();
    sub_268B37C54();
    v17 = sub_268B38544();
    OUTLINED_FUNCTION_29_17(v17);
    if (v18)
    {
      break;
    }

    OUTLINED_FUNCTION_33_13();
LABEL_21:
    OUTLINED_FUNCTION_28_20(v19);
    v26 = (v25 + 16 * v24);
    *v26 = v13;
    v26[1] = v14;
    sub_2688EF2B0(v32, (v8[7] + 32 * v24));
    ++v8[2];
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_32_8();
  while (++v20 != v22 || (v21 & 1) == 0)
  {
    v23 = v20 == v22;
    if (v20 == v22)
    {
      v20 = 0;
    }

    v21 |= v23;
    if (*(v7 + 8 * v20) != -1)
    {
      OUTLINED_FUNCTION_31_11();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_268ADF148(uint64_t a1)
{
  OUTLINED_FUNCTION_43_10(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  v30 = v3;
  v10 = sub_268B382C4();
  if (!v2[2])
  {
LABEL_30:

    *v1 = v10;
    return;
  }

  OUTLINED_FUNCTION_13_23();
  if (!v4)
  {
LABEL_4:
    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v6 >= v1)
      {
        break;
      }

      ++v12;
      if (v5[v6])
      {
        OUTLINED_FUNCTION_75_5();
        goto LABEL_9;
      }
    }

    if (v30)
    {
      OUTLINED_FUNCTION_68_7();
      if (v27 != v28)
      {
        OUTLINED_FUNCTION_63_7();
        *v5 = v29;
      }

      else
      {
        OUTLINED_FUNCTION_83_6(v26);
      }

      v2[2] = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_76_5();
LABEL_9:
    v13 = v11 | (v6 << 6);
    v14 = *(v2[7] + 8 * v13);
    v31 = *(v2[6] + 16 * v13);
    v15 = *(v2[6] + 16 * v13 + 8);
    if ((v30 & 1) == 0)
    {
    }

    v16 = v10[5];
    sub_268B38514();
    sub_268B38534();
    if (v15)
    {
      sub_268B37C54();
    }

    v17 = sub_268B38544();
    OUTLINED_FUNCTION_29_17(v17);
    if (v18)
    {
      break;
    }

    OUTLINED_FUNCTION_33_13();
LABEL_22:
    OUTLINED_FUNCTION_28_20(v19);
    *(v25 + 16 * v24) = v31;
    *(v10[7] + 8 * v24) = v14;
    ++v10[2];
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_32_8();
  while (++v20 != v22 || (v21 & 1) == 0)
  {
    v23 = v20 == v22;
    if (v20 == v22)
    {
      v20 = 0;
    }

    v21 |= v23;
    if (*(v7 + 8 * v20) != -1)
    {
      OUTLINED_FUNCTION_31_11();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_268ADF328(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2688EA2F4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_268ADF410(v6);
  return sub_268B38224();
}

uint64_t sub_268ADF3A4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2688E16B4(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_268ADF4F0(v6);
  *a1 = v2;
  return result;
}

void sub_268ADF410(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = sub_268B383F4();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_26892CC90(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_268ADF944(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_268ADF5E4(0, v3, 1, a1);
  }
}

uint64_t sub_268ADF4F0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_268B383F4();
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
        v6 = sub_268B37D34();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_268AE0284(v7, v8, a1, v4);
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
    return sub_268ADF87C(0, v2, 1, a1);
  }

  return result;
}

void sub_268ADF5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v46 = sub_268B34614();
  v8 = *(*(v46 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v46);
  v45 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v49 = &v39 - v12;
  v40 = a2;
  if (a3 != a2)
  {
    v47 = *a4;
    v44 = (v11 + 8);
    v13 = v47 + 8 * a3 - 8;
    v14 = a1 - a3;
    v15 = &selRef_groupLeader;
    v16 = &unk_279C42000;
    while (2)
    {
      v42 = v13;
      v43 = a3;
      v17 = *(v47 + 8 * a3);
      v41 = v14;
      do
      {
        v18 = *v13;
        v19 = v17;
        v20 = v18;
        v21 = [v19 v15[3]];
        if (!v21)
        {
          goto LABEL_15;
        }

        v22 = v21;
        v23 = [v21 v16[497]];

        if (!v23)
        {
          goto LABEL_17;
        }

        sub_268B345D4();

        v24 = [v20 v15[3]];
        if (!v24)
        {
          goto LABEL_16;
        }

        v25 = v24;
        v26 = [v24 v16[497]];

        if (!v26)
        {
          __break(1u);
LABEL_15:
          __break(1u);
LABEL_16:
          __break(1u);
LABEL_17:
          __break(1u);
LABEL_18:
          __break(1u);
          return;
        }

        v48 = v19;
        v27 = v45;
        sub_268B345D4();

        v28 = v20;
        v29 = v16;
        v30 = v49;
        v31 = sub_268B345A4();
        v32 = *v44;
        v33 = v27;
        v34 = v46;
        (*v44)(v33, v46);
        v35 = v30;
        v16 = v29;
        v36 = v34;
        v15 = &selRef_groupLeader;
        v32(v35, v36);

        if ((v31 & 1) == 0)
        {
          break;
        }

        if (!v47)
        {
          goto LABEL_18;
        }

        v37 = *v13;
        v17 = *(v13 + 8);
        *v13 = v17;
        *(v13 + 8) = v37;
        v13 -= 8;
      }

      while (!__CFADD__(v14++, 1));
      a3 = v43 + 1;
      v13 = v42 + 8;
      v14 = v41 - 1;
      if (v43 + 1 != v40)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_268ADF87C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_268B38444();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_268ADF944(void ***a1, uint64_t a2, void ***a3, unint64_t a4)
{
  v129 = a1;
  v142 = sub_268B34614();
  v6 = *(*(v142 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v142);
  v139 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v143 = &v127 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v133 = &v127 - v12;
  MEMORY[0x28223BE20](v11);
  v137 = &v127 - v14;
  v135 = a3;
  v15 = a3[1];
  if (v15 >= 1)
  {
    v127 = a4;
    v16 = 0;
    v141 = (v13 + 8);
    v17 = MEMORY[0x277D84F90];
    v18 = &selRef_groupLeader;
    while (1)
    {
      v19 = v16++;
      v130 = v19;
      if (v16 < v15)
      {
        v20 = *v135;
        v21 = (*v135)[v19];
        v22 = (*v135)[v16];
        v23 = v21;
        v24 = v138;
        sub_268AD6600(v22, v23);
        LODWORD(v134) = v25;
        v138 = v24;
        if (v24)
        {

          return;
        }

        v128 = v17;

        v131 = (8 * v19);
        v132 = v15;
        v17 = &v20[v19 + 2];
        v26 = v19 + 2;
        while (1)
        {
          a4 = v26;
          if (v16 + 1 >= v15)
          {
            break;
          }

          v27 = *(v17 - 1);
          v28 = *v17;
          v29 = v27;
          v30 = [v28 v18[3]];
          if (!v30)
          {
            goto LABEL_146;
          }

          v31 = v30;
          v32 = [v30 nowPlayingTimestamp];

          if (!v32)
          {
            goto LABEL_147;
          }

          v140 = v17;
          sub_268B345D4();

          v33 = v18[3];
          v136 = v29;
          v34 = [v29 v33];
          if (!v34)
          {
            goto LABEL_145;
          }

          v35 = v34;
          v36 = a4;
          v37 = v16;
          v38 = [v34 nowPlayingTimestamp];

          if (!v38)
          {
            goto LABEL_148;
          }

          v39 = v133;
          sub_268B345D4();

          v40 = v137;
          v41 = sub_268B345A4() & 1;
          v42 = v142;
          v43 = *v141;
          (*v141)(v39, v142);
          v43(v40, v42);

          v17 = (v140 + 1);
          v16 = v37 + 1;
          a4 = v36;
          v26 = v36 + 1;
          v18 = &selRef_groupLeader;
          v15 = v132;
          if ((v134 & 1) != v41)
          {
            goto LABEL_14;
          }
        }

        v16 = v15;
LABEL_14:
        if (v134)
        {
          v44 = v130;
          if (v16 < v130)
          {
            goto LABEL_138;
          }

          v17 = v128;
          if (v130 < v16)
          {
            if (v15 >= a4)
            {
              v45 = a4;
            }

            else
            {
              v45 = v15;
            }

            v46 = 8 * v45 - 8;
            v47 = v16;
            v48 = v131;
            do
            {
              if (v44 != --v47)
              {
                v49 = *v135;
                if (!*v135)
                {
                  goto LABEL_151;
                }

                v50 = *&v48[v49];
                *&v48[v49] = *(v49 + v46);
                *(v49 + v46) = v50;
              }

              ++v44;
              v46 -= 8;
              v48 += 8;
            }

            while (v44 < v47);
          }
        }

        else
        {
          v17 = v128;
        }
      }

      v51 = v135[1];
      if (v16 >= v51)
      {
        goto LABEL_48;
      }

      if (__OFSUB__(v16, v130))
      {
        goto LABEL_135;
      }

      if (v16 - v130 >= v127)
      {
LABEL_48:
        v53 = v130;
      }

      else
      {
        if (__OFADD__(v130, v127))
        {
          goto LABEL_136;
        }

        if (v130 + v127 >= v51)
        {
          v52 = v135[1];
        }

        else
        {
          v52 = (v130 + v127);
        }

        if (v52 < v130)
        {
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        v53 = v130;
        if (v16 != v52)
        {
          v128 = v17;
          v140 = *v135;
          v54 = &v140[v16 - 1];
          v55 = v130 - v16;
          v131 = v52;
LABEL_37:
          v136 = v16;
          v56 = v140[v16];
          v132 = v55;
          v134 = v54;
          while (1)
          {
            v57 = *v54;
            a4 = v56;
            v58 = v57;
            v59 = [a4 v18[3]];
            if (!v59)
            {
              goto LABEL_141;
            }

            v60 = v59;
            v61 = [v59 nowPlayingTimestamp];

            if (!v61)
            {
              break;
            }

            sub_268B345D4();

            v62 = [v58 v18[3]];
            if (!v62)
            {
              goto LABEL_143;
            }

            v63 = v62;
            v64 = [v62 nowPlayingTimestamp];

            if (!v64)
            {
              goto LABEL_142;
            }

            v65 = v139;
            sub_268B345D4();

            v66 = v143;
            v67 = sub_268B345A4();
            v68 = *v141;
            v69 = v65;
            v70 = v142;
            (*v141)(v69, v142);
            v68(v66, v70);

            v18 = &selRef_groupLeader;
            if ((v67 & 1) == 0)
            {
              goto LABEL_46;
            }

            if (!v140)
            {
              goto LABEL_144;
            }

            v71 = *v54;
            v56 = v54[1];
            *v54 = v56;
            v54[1] = v71;
            --v54;
            if (__CFADD__(v55++, 1))
            {
LABEL_46:
              v16 = (v136 + 1);
              v54 = v134 + 1;
              v55 = v132 - 1;
              if (v136 + 1 == v131)
              {
                v16 = v131;
                v17 = v128;
                goto LABEL_48;
              }

              goto LABEL_37;
            }
          }

          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
          goto LABEL_153;
        }
      }

      if (v16 < v53)
      {
        goto LABEL_134;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v116 = *(v17 + 2);
        sub_268987C84();
        v17 = v117;
      }

      v73 = *(v17 + 2);
      a4 = v73 + 1;
      if (v73 >= *(v17 + 3) >> 1)
      {
        sub_268987C84();
        v17 = v118;
      }

      *(v17 + 2) = a4;
      v74 = v17 + 32;
      v75 = &v17[16 * v73 + 32];
      *v75 = v130;
      *(v75 + 1) = v16;
      v140 = *v129;
      if (!v140)
      {
        goto LABEL_152;
      }

      if (v73)
      {
        v136 = v16;
        while (1)
        {
          v76 = a4 - 1;
          v77 = &v74[16 * a4 - 16];
          v78 = &v17[16 * a4];
          if (a4 >= 4)
          {
            break;
          }

          if (a4 == 3)
          {
            v79 = *(v17 + 4);
            v80 = *(v17 + 5);
            v89 = __OFSUB__(v80, v79);
            v81 = v80 - v79;
            v82 = v89;
LABEL_70:
            if (v82)
            {
              goto LABEL_121;
            }

            v94 = *v78;
            v93 = *(v78 + 1);
            v95 = __OFSUB__(v93, v94);
            v96 = v93 - v94;
            v97 = v95;
            if (v95)
            {
              goto LABEL_124;
            }

            v98 = *(v77 + 1);
            v99 = v98 - *v77;
            if (__OFSUB__(v98, *v77))
            {
              goto LABEL_127;
            }

            if (__OFADD__(v96, v99))
            {
              goto LABEL_129;
            }

            if (v96 + v99 >= v81)
            {
              if (v81 < v99)
              {
                v76 = a4 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (a4 < 2)
          {
            goto LABEL_123;
          }

          v101 = *v78;
          v100 = *(v78 + 1);
          v89 = __OFSUB__(v100, v101);
          v96 = v100 - v101;
          v97 = v89;
LABEL_85:
          if (v97)
          {
            goto LABEL_126;
          }

          v103 = *v77;
          v102 = *(v77 + 1);
          v89 = __OFSUB__(v102, v103);
          v104 = v102 - v103;
          if (v89)
          {
            goto LABEL_128;
          }

          if (v104 < v96)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v76 - 1 >= a4)
          {
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

          if (!*v135)
          {
            goto LABEL_149;
          }

          v108 = v17;
          a4 = &v74[16 * v76 - 16];
          v17 = *a4;
          v109 = v76;
          v110 = &v74[16 * v76];
          v111 = *(v110 + 1);
          v112 = v138;
          sub_268AE08B8(&(*v135)[*a4], &(*v135)[*v110], &(*v135)[v111], v140);
          v138 = v112;
          if (v112)
          {
            goto LABEL_113;
          }

          if (v111 < v17)
          {
            goto LABEL_116;
          }

          v113 = v74;
          v114 = *(v108 + 2);
          if (v109 > v114)
          {
            goto LABEL_117;
          }

          *a4 = v17;
          *(a4 + 8) = v111;
          if (v109 >= v114)
          {
            goto LABEL_118;
          }

          a4 = v114 - 1;
          memmove(v110, v110 + 16, 16 * (v114 - 1 - v109));
          v17 = v108;
          *(v108 + 2) = v114 - 1;
          v115 = v114 > 2;
          v16 = v136;
          v74 = v113;
          if (!v115)
          {
            goto LABEL_99;
          }
        }

        v83 = &v74[16 * a4];
        v84 = *(v83 - 8);
        v85 = *(v83 - 7);
        v89 = __OFSUB__(v85, v84);
        v86 = v85 - v84;
        if (v89)
        {
          goto LABEL_119;
        }

        v88 = *(v83 - 6);
        v87 = *(v83 - 5);
        v89 = __OFSUB__(v87, v88);
        v81 = v87 - v88;
        v82 = v89;
        if (v89)
        {
          goto LABEL_120;
        }

        v90 = *(v78 + 1);
        v91 = v90 - *v78;
        if (__OFSUB__(v90, *v78))
        {
          goto LABEL_122;
        }

        v89 = __OFADD__(v81, v91);
        v92 = v81 + v91;
        if (v89)
        {
          goto LABEL_125;
        }

        if (v92 >= v86)
        {
          v106 = *v77;
          v105 = *(v77 + 1);
          v89 = __OFSUB__(v105, v106);
          v107 = v105 - v106;
          if (v89)
          {
            goto LABEL_133;
          }

          if (v81 < v107)
          {
            v76 = a4 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v15 = v135[1];
      if (v16 >= v15)
      {
        goto LABEL_103;
      }
    }
  }

  v17 = MEMORY[0x277D84F90];
LABEL_103:
  a4 = *v129;
  if (!*v129)
  {
LABEL_153:
    __break(1u);
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_139:
    v17 = sub_268AE0F64(v17);
  }

  v119 = v17 + 16;
  v120 = *(v17 + 2);
  while (v120 >= 2)
  {
    if (!*v135)
    {
      goto LABEL_150;
    }

    v121 = v17;
    v17 += 16 * v120;
    v122 = *v17;
    v123 = &v119[2 * v120];
    v124 = v123[1];
    v125 = v138;
    sub_268AE08B8(&(*v135)[*v17], &(*v135)[*v123], &(*v135)[v124], a4);
    v138 = v125;
    if (v125)
    {
      break;
    }

    if (v124 < v122)
    {
      goto LABEL_130;
    }

    if (v120 - 2 >= *v119)
    {
      goto LABEL_131;
    }

    *v17 = v122;
    *(v17 + 1) = v124;
    v126 = *v119 - v120;
    if (*v119 < v120)
    {
      goto LABEL_132;
    }

    v120 = *v119 - 1;
    memmove(v123, v123 + 2, 16 * v126);
    *v119 = v120;
    v17 = v121;
  }

LABEL_113:
}

void sub_268AE0284(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_268B38444();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_268B38444()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_268B38444() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_268987C84();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_268987C84();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_268AE0DC0((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_268AE078C(&v92, *a1, a3);
LABEL_102:
}

uint64_t sub_268AE078C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_268AE0F64(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_268AE0DC0((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

void sub_268AE08B8(id *a1, id *a2, id *a3, void **a4)
{
  v70 = sub_268B34614();
  v8 = *(*(v70 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v70);
  v68 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v72 = (&v66 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  i = (&v66 - v14);
  MEMORY[0x28223BE20](v13);
  v71 = (&v66 - v15);
  v16 = a2 - a1;
  v69 = (v17 + 8);
  v18 = a3 - a2;
  if (v16 >= v18)
  {
    sub_268988A70(a2, a3 - a2, a4);
    v19 = &a4[v18];
    v41 = &selRef_groupLeader;
    v73 = a4;
    v74 = a1;
LABEL_18:
    v42 = a2 - 1;
    v43 = a3 - 1;
    v71 = a2;
    for (i = a2 - 1; v19 > a4 && a2 > a1; v42 = i)
    {
      v75 = v43;
      v45 = v19 - 1;
      v46 = *v42;
      v47 = *(v19 - 1);
      v48 = v46;
      v49 = [v47 v41[3]];
      if (!v49)
      {
        goto LABEL_42;
      }

      v50 = v49;
      v51 = [v49 nowPlayingTimestamp];

      if (!v51)
      {
        goto LABEL_44;
      }

      sub_268B345D4();

      v52 = [v48 v41[3]];
      if (!v52)
      {
        goto LABEL_46;
      }

      v53 = v52;
      v54 = v19;
      v55 = [v52 nowPlayingTimestamp];

      if (!v55)
      {
        goto LABEL_48;
      }

      v56 = v68;
      sub_268B345D4();

      v57 = v72;
      v58 = sub_268B345A4();
      v59 = *v69;
      v60 = v56;
      v61 = v70;
      (*v69)(v60, v70);
      v59(v57, v61);

      if (v58)
      {
        a3 = v75;
        v63 = i;
        a2 = i;
        a4 = v73;
        a1 = v74;
        v19 = v54;
        v41 = &selRef_groupLeader;
        if (v75 + 1 != v71)
        {
          *v75 = *i;
          a2 = v63;
        }

        goto LABEL_18;
      }

      v62 = v75;
      a2 = v71;
      v41 = &selRef_groupLeader;
      if (v54 != v75 + 1)
      {
        *v75 = *v45;
      }

      v43 = v62 - 1;
      v19 = v45;
      a4 = v73;
      a1 = v74;
    }

LABEL_35:
    v64 = v19 - a4;
    if (a2 != a4 || a2 >= &a4[v64])
    {
      memmove(a2, a4, 8 * v64);
    }
  }

  else
  {
    sub_268988A70(a1, a2 - a1, a4);
    v19 = &a4[v16];
    v20 = &unk_279C42000;
    v75 = a3;
    v72 = v19;
    while (1)
    {
      if (a4 >= v19 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_35;
      }

      v73 = a4;
      v74 = a1;
      v22 = a2;
      v23 = *a4;
      v24 = *a2;
      v25 = v23;
      v26 = [v24 context];
      if (!v26)
      {
        break;
      }

      v27 = v26;
      v28 = [v26 v20[497]];

      if (!v28)
      {
        goto LABEL_43;
      }

      sub_268B345D4();

      v29 = [v25 context];
      if (!v29)
      {
        goto LABEL_45;
      }

      v30 = v29;
      v31 = [v29 v20[497]];

      if (!v31)
      {
        goto LABEL_47;
      }

      v32 = i;
      sub_268B345D4();

      v33 = v71;
      v34 = sub_268B345A4();
      v35 = *v69;
      v36 = v32;
      v37 = v70;
      (*v69)(v36, v70);
      v35(v33, v37);

      if (v34)
      {
        v38 = a2;
        a4 = v73;
        v39 = v74;
        v40 = v74 == a2;
        v22 = a2 + 1;
      }

      else
      {
        v39 = v74;
        v38 = v73;
        a4 = v73 + 1;
        v40 = v74 == v73;
      }

      v19 = v72;
      if (!v40)
      {
        *v39 = *v38;
      }

      a1 = v39 + 1;
      a2 = v22;
      a3 = v75;
      v20 = &unk_279C42000;
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
  }
}

uint64_t sub_268AE0DC0(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_2689882A8(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_268B38444() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_2689882A8(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_268B38444() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

char *sub_268AE0F78(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_268AE0FA4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6850, &qword_268B40A58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_268AE10A4(void *a1)
{
  v2 = [a1 groupId];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_268B37BF4();

  return v3;
}

void sub_268AE1114(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268B37BC4();

  [a3 setDisplayableName_];
}

uint64_t sub_268AE11D0(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (a1 >> 62)
  {
    v8 = sub_268B382A4();
    if (v8)
    {
      v9 = v8;
      v4 = a2(v8, 0);
      a3(v4 + 32, v9, a1);
      v11 = v10;

      if (v11 == v9)
      {
        return v4;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

void sub_268AE1274()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v5 = v4;
  v6 = v2 + 56;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  if (!v0)
  {
    v13 = 0;
LABEL_20:
    *v5 = v3;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    OUTLINED_FUNCTION_23();
    return;
  }

  v10 = v1;
  if (!v1)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v11 = v0;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = *(v3 + 48);
      OUTLINED_FUNCTION_69_8();
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_268AE1420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = type metadata accessor for AnalyticsServiceImpl();
  v13 = &off_2879539D0;
  v11[0] = a2;

  v5 = sub_268AD4D4C(2, a3);
  sub_268AD550C();
  v7 = v6;
  v8 = __swift_project_boxed_opaque_existential_1(v11, v12);
  sub_2688EFD0C(v5);

  sub_2688EFD0C(v7);
  v9 = *v8;
  sub_26894AE34();

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

uint64_t sub_268AE15A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_268B37A54();
  v51 = *(v7 - 8);
  v52 = v7;
  v8 = *(v51 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v50 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v50 - v11;
  v55 = type metadata accessor for AnalyticsServiceImpl();
  v56 = &off_2879539D0;
  v54[0] = a2;
  v13 = *__swift_project_boxed_opaque_existential_1(v54, v55);

  v14 = sub_268AE1420(a1, v13, a3);
  v53 = MEMORY[0x277D84F90];
  v15 = sub_2688EFD0C(v14);
  v16 = 0;
  v17 = v14 & 0xC000000000000001;
  v18 = v14 & 0xFFFFFFFFFFFFFF8;
  while (v15 != v16)
  {
    if (v17)
    {
      v19 = MEMORY[0x26D625BD0](v16, v14);
    }

    else
    {
      if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v19 = *(v14 + 8 * v16 + 32);
    }

    v20 = v19;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      swift_once();
LABEL_23:
      v38 = __swift_project_value_buffer(v18, qword_2802CDA10);
      (*(v17 + 16))(v3, v38, v18);
      v39 = sub_268B37A34();
      v40 = sub_268B37EC4();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v53 = v42;
        *v41 = 136315138;
        v43 = type metadata accessor for Device();

        v45 = MEMORY[0x26D6256F0](v44, v43);
        v47 = v46;

        v48 = sub_26892CDB8(v45, v47, &v53);

        *(v41 + 4) = v48;
        _os_log_impl(&dword_2688BB000, v39, v40, "Selecting most recent resumable deviceContexts: %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v42);
        MEMORY[0x26D6266E0](v42, -1, -1);
        MEMORY[0x26D6266E0](v41, -1, -1);
      }

      (*(v17 + 8))(v3, v18);
      goto LABEL_28;
    }

    if (sub_268AD621C(v19))
    {
      sub_268B38214();
      v3 = v53[2];
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    else
    {
    }

    ++v16;
  }

  if (sub_2688EFD0C(v53))
  {

    v53 = sub_268AE11D0(v21, sub_268988A7C, sub_268988668);
    sub_268ADF328(&v53);
    v18 = v52;

    v22 = v53;
    if (sub_2688EFD0C(v53))
    {
      sub_2688EFD10(0, (v22 & 0xC000000000000001) == 0, v22);
      if ((v22 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x26D625BD0](0, v22);
      }

      else
      {
        v23 = *(v22 + 32);
      }

      v24 = v23;
      v53 = v23;
      MEMORY[0x28223BE20](v23);
      *(&v50 - 2) = &v53;
      sub_2688C8F14();
      v14 = v25;
    }

    else
    {

      v14 = MEMORY[0x277D84F90];
    }

    v3 = v50;
    v17 = v51;
    if (qword_2802A4F30 != -1)
    {
      goto LABEL_31;
    }

    goto LABEL_23;
  }

  v26 = v52;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v26, qword_2802CDA10);
  v28 = v51;
  (*(v51 + 16))(v12, v27, v26);

  v29 = sub_268B37A34();
  v30 = sub_268B37F04();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v53 = v32;
    *v31 = 136315138;
    v33 = type metadata accessor for Device();
    v34 = MEMORY[0x26D6256F0](v14, v33);
    v36 = v35;

    v37 = sub_26892CDB8(v34, v36, &v53);

    *(v31 + 4) = v37;
    _os_log_impl(&dword_2688BB000, v29, v30, "Found no resumable contexts with valid timestamps. Returning all resumable without timestamp filtration: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    MEMORY[0x26D6266E0](v32, -1, -1);
    MEMORY[0x26D6266E0](v31, -1, -1);
  }

  else
  {
  }

  (*(v28 + 8))(v12, v26);
LABEL_28:
  __swift_destroy_boxed_opaque_existential_0Tm(v54);
  return v14;
}

unint64_t sub_268AE1C0C()
{
  result = qword_2802A88F0;
  if (!qword_2802A88F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A88F0);
  }

  return result;
}

uint64_t sub_268AE1C60()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v1 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_268AE1CD8()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_268AE1D10(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_268AE1D50(uint64_t result, int a2, int a3)
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

void OUTLINED_FUNCTION_2_36()
{
  v1 = *(v0 - 288);
  v2 = *(v0 - 176);
  v3 = *(v0 - 224);
}

__n128 OUTLINED_FUNCTION_10_28()
{
  result = *(v1 - 352);
  *v0 = result.n128_u32[0];
  *(v1 - 120) = *(v1 - 232);
  return result;
}

void OUTLINED_FUNCTION_12_26()
{
  v2 = *(v0 - 200);

  JUMPOUT(0x26D6266E0);
}

void OUTLINED_FUNCTION_13_23()
{
  v1 = 1 << *(v0 + 32);
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  else
  {
    v2 = -1;
  }

  v3 = v2 & *(v0 + 64);
}

void OUTLINED_FUNCTION_15_25()
{
  v2 = *(v0 - 200);

  JUMPOUT(0x26D6266E0);
}

void OUTLINED_FUNCTION_16_30()
{
  v2 = *(*(v0 - 328) + 16) + 1;

  sub_268987D58();
}

uint64_t OUTLINED_FUNCTION_29_17(uint64_t result)
{
  v3 = result & ~(-1 << *(v1 + 32));
  v4 = (-1 << v3) & ~*(v2 + 8 * (v3 >> 6));
  return result;
}

uint64_t OUTLINED_FUNCTION_40_12()
{
  v2 = *(*v0 + 40);

  return sub_268B38514();
}

uint64_t OUTLINED_FUNCTION_43_10(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_46_11()
{
  v2 = **(v1 - 120);
  result = v0;
  v4 = *(v1 - 88);
  return result;
}

__n128 OUTLINED_FUNCTION_51_8(uint64_t a1)
{
  *(v4 - 120) = v1;
  *(v4 - 112) = a1;
  result = *(v4 - 192);
  *v3 = result.n128_u32[0];
  *(v4 - 128) = v2;
  return result;
}

void OUTLINED_FUNCTION_55_9()
{
  v2 = *(v0 - 328);

  sub_268987D58();
}

void OUTLINED_FUNCTION_56_8(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_57_6()
{

  return sub_268B38444();
}

uint64_t OUTLINED_FUNCTION_58_8()
{
  v3 = *(v0 - 136);
  v2 = *(v0 - 128);

  return sub_268B376E4();
}

uint64_t OUTLINED_FUNCTION_59_5()
{
  v1 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);

  return sub_268B34C94();
}

void OUTLINED_FUNCTION_60_5(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_67_6@<X0>(uint64_t a1@<X8>)
{
  if (v1 < 0)
  {
    return v1;
  }

  else
  {
    return a1;
  }
}

uint64_t OUTLINED_FUNCTION_81_3()
{
  v3 = *v0;
  result = v1;
  v5 = *(v2 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_82_4()
{
  v3 = *v0;
}

uint64_t OUTLINED_FUNCTION_83_6@<X0>(uint64_t a1@<X8>)
{

  return sub_2688F204C(0, (a1 + 63) >> 6, v1);
}

uint64_t OUTLINED_FUNCTION_86_6()
{

  return sub_268B38444();
}

void OUTLINED_FUNCTION_87_5()
{
  v2 = *(v0 - 440);
}

void *OUTLINED_FUNCTION_89_7()
{
  v1 = *(v0 - 176);
  v2 = v1[15];
  *(v0 - 184) = v1[16];
  result = __swift_project_boxed_opaque_existential_1(v1 + 12, v2);
  *(v0 - 192) = result;
  return result;
}

void sub_268AE2278(uint64_t a1)
{
  v2 = sub_2688EFD0C(a1);
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  while (v2 != v3)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D625BD0](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    if (sub_268983434())
    {

      goto LABEL_11;
    }

    v7 = sub_268988580(v6);
    if (v8)
    {
      v9 = v7;
      v11 = v8;

LABEL_13:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = *(v4 + 16);
        sub_2689876A4();
        v4 = v15;
      }

      v12 = *(v4 + 16);
      if (v12 >= *(v4 + 24) >> 1)
      {
        sub_2689876A4();
        v4 = v16;
      }

      *(v4 + 16) = v12 + 1;
      v13 = v4 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v11;
      ++v3;
    }

    else
    {
      v9 = sub_268988568(v6);
      v11 = v10;

      if (v11)
      {
        goto LABEL_13;
      }

LABEL_11:
      ++v3;
    }
  }
}

void sub_268AE23DC(uint64_t a1)
{
  v2 = sub_2688EFD0C(a1);
  v3 = 0;
  do
  {
    v4 = v3;
    if (v2 == v3)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D625BD0](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v7 = sub_268983434();

    v3 = v4 + 1;
  }

  while ((v7 & 1) == 0);
}

uint64_t sub_268AE2494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
LABEL_19:
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_2802CDA10);
  (*(v7 + 16))(v10, v11, v6);
  v12 = sub_268B37A34();
  v13 = sub_268B37ED4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2688BB000, v12, v13, "SetAudioLanguageDeviceDisambiguationStrategy.makeDialogForDisambiguation() called", v14, 2u);
    MEMORY[0x26D6266E0](v14, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  v10 = a3;
  a3 = sub_268B35254();
  v6 = sub_2688EFD0C(a3);
  v15 = 0;
  v7 = a3 & 0xC000000000000001;
  while (v6 != v15)
  {
    if (v7)
    {
      v16 = MEMORY[0x26D625BD0](v15, a3);
    }

    else
    {
      if (v15 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v16 = *(a3 + 8 * v15 + 32);
    }

    v17 = v16;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v18 = [v16 isDeviceSelectedUsingContext];
    v10 = sub_2688C063C();
    v19 = sub_268B38054();
    v20 = v19;
    if (v18)
    {
      v10 = sub_268B38074();

      if (v10)
      {
        sub_268AE2278(a3);
        v24 = v23;
        sub_268AE23DC(a3);
        v26 = v25;

        sub_268A39260(v24, v26 & 1, v30, v31);
      }
    }

    else
    {
    }

    ++v15;
  }

  v21 = v29[31];
  v22 = v29[32];
  __swift_project_boxed_opaque_existential_1(v29 + 28, v21);
  return sub_2689CE88C(0xD000000000000024, 0x8000000268B5BBB0, v30, v31, v21, v22);
}

void sub_268AE27DC()
{
  type metadata accessor for SetAudioLanguageDeviceDisambiguationStrategy();

  JUMPOUT(0x26D622290);
}

uint64_t sub_268AE28C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for SetAudioLanguageDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F78](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_268AE2978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for SetAudioLanguageDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F88](a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_268AE2A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for SetAudioLanguageDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F80](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_268AE2AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for SetAudioLanguageDeviceDisambiguationStrategy();

  return MEMORY[0x2821B9F90](a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_268AE2B7C()
{
  type metadata accessor for SetAudioLanguageDeviceDisambiguationStrategy();

  return sub_268B353B4();
}

uint64_t sub_268AE2C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(MEMORY[0x277D5C008] + 4);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for SetAudioLanguageDeviceDisambiguationStrategy();
  *v15 = v7;
  v15[1] = sub_2688C01F0;

  return MEMORY[0x2821BB9B0](a1, a2, a3, a4, a5, v16, a7);
}

uint64_t sub_268AE2CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(MEMORY[0x277D5C010] + 4);
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  v18 = type metadata accessor for SetAudioLanguageDeviceDisambiguationStrategy();
  *v17 = v8;
  v17[1] = sub_26891DC3C;

  return MEMORY[0x2821BB9C0](a1, a2, a3, a4, a5, a6, v18, a8);
}

uint64_t sub_268AE2EE0(uint64_t a1, uint64_t a2)
{
  result = sub_268AE2F38(&qword_2802A8920, a2, type metadata accessor for SetAudioLanguageDeviceDisambiguationStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268AE2F38(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

Swift::String_optional __swiftcall UsoTask_transfer_common_MediaItem.verb()()
{
  v0 = 0x6165705365766F6DLL;
  v1 = 0xEB0000000072656BLL;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_268AE2FD0(uint64_t a1)
{
  result = sub_268AE307C(&qword_2802A8928);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268AE307C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268B362D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268AE3104(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268AE3158(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268AE31AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268AE3200(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268AE3254(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268AE32A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268AE32FC()
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268AE3350(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268AE33B4()
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268AE3408(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268AE346C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268AE34D0()
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268AE3534(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

void sub_268AE3610()
{
  OUTLINED_FUNCTION_26();
  v5 = OUTLINED_FUNCTION_23_21(v1, v2, v3, v4);
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_31();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_16_31();
  v10 = sub_2688EFD0C(v0);
  if (v10)
  {
    OUTLINED_FUNCTION_104_5(v10, (v0 & 0xC000000000000001) == 0);
    if ((v0 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_105_1();
    }

    else
    {
      v11 = *(v0 + 32);
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = [v12 isDeviceSelectedUsingContext];

  sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
  v14 = OUTLINED_FUNCTION_201_0();
  v15 = v14;
  if (v13)
  {
    OUTLINED_FUNCTION_46_1();
    v16 = sub_268B38074();

    if (v16)
    {
      if (qword_2802A4F30 != -1)
      {
        v17 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_5_31(v17, qword_2802CDA10);
      v18 = OUTLINED_FUNCTION_81_4();
      v19(v18);
      v20 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_49_8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v22);
        OUTLINED_FUNCTION_33_19();
        _os_log_impl(v23, v24, v25, v26, v27, 2u);
        OUTLINED_FUNCTION_6();
      }

      v28 = OUTLINED_FUNCTION_32_13();
      v29(v28);
      OUTLINED_FUNCTION_20_21();
      sub_268AE484C();
      goto LABEL_19;
    }
  }

  else
  {
  }

  if (qword_2802A4F30 != -1)
  {
    v17 = OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_5_31(v17, qword_2802CDA10);
  v30 = OUTLINED_FUNCTION_76_6();
  v31(v30);
  v32 = sub_268B37A34();
  v33 = sub_268B37F04();
  if (OUTLINED_FUNCTION_47_4(v33))
  {
    v34 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_279(v34);
    OUTLINED_FUNCTION_65_1(&dword_2688BB000, v35, v36, "Updating parameters for local controls");
    OUTLINED_FUNCTION_20_2();
  }

  v37 = OUTLINED_FUNCTION_31_20();
  v38(v37);
  sub_268AACBE0();
  sub_268AE46CC();
LABEL_19:
  OUTLINED_FUNCTION_23();
}

void sub_268AE3924()
{
  OUTLINED_FUNCTION_26();
  v5 = OUTLINED_FUNCTION_23_21(v1, v2, v3, v4);
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_31();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_16_31();
  v10 = sub_2688EFD0C(v0);
  if (v10)
  {
    OUTLINED_FUNCTION_104_5(v10, (v0 & 0xC000000000000001) == 0);
    if ((v0 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_105_1();
    }

    else
    {
      v11 = *(v0 + 32);
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = [v12 isDeviceSelectedUsingContext];

  sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
  v14 = OUTLINED_FUNCTION_201_0();
  v15 = v14;
  if (v13)
  {
    OUTLINED_FUNCTION_46_1();
    v16 = sub_268B38074();

    if (v16)
    {
      if (qword_2802A4F30 != -1)
      {
        v17 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_5_31(v17, qword_2802CDA10);
      v18 = OUTLINED_FUNCTION_81_4();
      v19(v18);
      v20 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_49_8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v22);
        OUTLINED_FUNCTION_33_19();
        _os_log_impl(v23, v24, v25, v26, v27, 2u);
        OUTLINED_FUNCTION_6();
      }

      v28 = OUTLINED_FUNCTION_32_13();
      v29(v28);
      OUTLINED_FUNCTION_20_21();
      sub_268AE4D40();
      goto LABEL_19;
    }
  }

  else
  {
  }

  if (qword_2802A4F30 != -1)
  {
    v17 = OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_5_31(v17, qword_2802CDA10);
  v30 = OUTLINED_FUNCTION_76_6();
  v31(v30);
  v32 = sub_268B37A34();
  v33 = sub_268B37F04();
  if (OUTLINED_FUNCTION_47_4(v33))
  {
    v34 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_279(v34);
    OUTLINED_FUNCTION_65_1(&dword_2688BB000, v35, v36, "Updating parameters for local controls");
    OUTLINED_FUNCTION_20_2();
  }

  v37 = OUTLINED_FUNCTION_31_20();
  v38(v37);
  sub_268AACBE0();
  sub_268AE46CC();
LABEL_19:
  OUTLINED_FUNCTION_23();
}

void sub_268AE3BE8()
{
  OUTLINED_FUNCTION_26();
  v5 = OUTLINED_FUNCTION_23_21(v1, v2, v3, v4);
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_31();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_16_31();
  v10 = sub_2688EFD0C(v0);
  if (v10)
  {
    OUTLINED_FUNCTION_104_5(v10, (v0 & 0xC000000000000001) == 0);
    if ((v0 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_105_1();
    }

    else
    {
      v11 = *(v0 + 32);
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = [v12 isDeviceSelectedUsingContext];

  sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
  v14 = OUTLINED_FUNCTION_201_0();
  v15 = v14;
  if (v13)
  {
    OUTLINED_FUNCTION_46_1();
    v16 = sub_268B38074();

    if (v16)
    {
      if (qword_2802A4F30 != -1)
      {
        v17 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_5_31(v17, qword_2802CDA10);
      v18 = OUTLINED_FUNCTION_81_4();
      v19(v18);
      v20 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_49_8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v22);
        OUTLINED_FUNCTION_33_19();
        _os_log_impl(v23, v24, v25, v26, v27, 2u);
        OUTLINED_FUNCTION_6();
      }

      v28 = OUTLINED_FUNCTION_32_13();
      v29(v28);
      OUTLINED_FUNCTION_20_21();
      sub_268AE5990();
      goto LABEL_19;
    }
  }

  else
  {
  }

  if (qword_2802A4F30 != -1)
  {
    v17 = OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_5_31(v17, qword_2802CDA10);
  v30 = OUTLINED_FUNCTION_76_6();
  v31(v30);
  v32 = sub_268B37A34();
  v33 = sub_268B37F04();
  if (OUTLINED_FUNCTION_47_4(v33))
  {
    v34 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_279(v34);
    OUTLINED_FUNCTION_65_1(&dword_2688BB000, v35, v36, "Updating parameters for local controls");
    OUTLINED_FUNCTION_20_2();
  }

  v37 = OUTLINED_FUNCTION_31_20();
  v38(v37);
  sub_268AACBE0();
  sub_268AE46CC();
LABEL_19:
  OUTLINED_FUNCTION_23();
}

void sub_268AE3E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = sub_268B37A54();
  v25 = OUTLINED_FUNCTION_1(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_20_0();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &a9 - v34;
  if (sub_2688EFD0C(v23))
  {
    sub_2688EFD10(0, (v23 & 0xC000000000000001) == 0, v23);
    if ((v23 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x26D625BD0](0, v23);
    }

    else
    {
      v36 = *(v23 + 32);
    }

    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  v38 = [v37 isDeviceSelectedUsingContext];

  sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
  v39 = OUTLINED_FUNCTION_201_0();
  v40 = v39;
  if (v38)
  {
    v41 = sub_268B38074();

    if (v41)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_12_27(v24, qword_2802CDA10);
      v42(v35);
      v43 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_149_0();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = OUTLINED_FUNCTION_14();
        *v45 = 0;
        _os_log_impl(&dword_2688BB000, v43, v32, "Updating parameters for smart controls", v45, 2u);
        OUTLINED_FUNCTION_12();
      }

      (*(v27 + 8))(v35, v24);
      sub_268AE5234(v23);
      goto LABEL_19;
    }
  }

  else
  {
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_12_27(v24, qword_2802CDA10);
  v46(v32);
  v47 = sub_268B37A34();
  v48 = sub_268B37F04();
  if (OUTLINED_FUNCTION_47_4(v48))
  {
    v49 = OUTLINED_FUNCTION_14();
    *v49 = 0;
    _os_log_impl(&dword_2688BB000, v47, v23, "Updating parameters for local controls", v49, 2u);
    OUTLINED_FUNCTION_132_0();
  }

  (*(v27 + 8))(v32, v24);
  sub_268AACBE0();
  sub_268AE46CC();
LABEL_19:
  OUTLINED_FUNCTION_23();
}

void sub_268AE41E4()
{
  OUTLINED_FUNCTION_26();
  v5 = OUTLINED_FUNCTION_23_21(v1, v2, v3, v4);
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_31();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_16_31();
  v10 = sub_2688EFD0C(v0);
  if (v10)
  {
    OUTLINED_FUNCTION_104_5(v10, (v0 & 0xC000000000000001) == 0);
    if ((v0 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_105_1();
    }

    else
    {
      v11 = *(v0 + 32);
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = [v12 isDeviceSelectedUsingContext];

  sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
  v14 = OUTLINED_FUNCTION_201_0();
  v15 = v14;
  if (v13)
  {
    OUTLINED_FUNCTION_46_1();
    v16 = sub_268B38074();

    if (v16)
    {
      if (qword_2802A4F30 != -1)
      {
        v17 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_5_31(v17, qword_2802CDA10);
      v18 = OUTLINED_FUNCTION_81_4();
      v19(v18);
      v20 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_49_8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v22);
        OUTLINED_FUNCTION_33_19();
        _os_log_impl(v23, v24, v25, v26, v27, 2u);
        OUTLINED_FUNCTION_6();
      }

      v28 = OUTLINED_FUNCTION_32_13();
      v29(v28);
      OUTLINED_FUNCTION_20_21();
      sub_268AE5E84();
      goto LABEL_19;
    }
  }

  else
  {
  }

  if (qword_2802A4F30 != -1)
  {
    v17 = OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_5_31(v17, qword_2802CDA10);
  v30 = OUTLINED_FUNCTION_76_6();
  v31(v30);
  v32 = sub_268B37A34();
  v33 = sub_268B37F04();
  if (OUTLINED_FUNCTION_47_4(v33))
  {
    v34 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_279(v34);
    OUTLINED_FUNCTION_65_1(&dword_2688BB000, v35, v36, "Updating parameters for local controls");
    OUTLINED_FUNCTION_20_2();
  }

  v37 = OUTLINED_FUNCTION_31_20();
  v38(v37);
  sub_268AACBE0();
  sub_268AE46CC();
LABEL_19:
  OUTLINED_FUNCTION_23();
}

void sub_268AE4458()
{
  OUTLINED_FUNCTION_26();
  v5 = OUTLINED_FUNCTION_23_21(v1, v2, v3, v4);
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_31();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_16_31();
  v10 = sub_2688EFD0C(v0);
  if (v10)
  {
    OUTLINED_FUNCTION_104_5(v10, (v0 & 0xC000000000000001) == 0);
    if ((v0 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_105_1();
    }

    else
    {
      v11 = *(v0 + 32);
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = [v12 isDeviceSelectedUsingContext];

  sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
  v14 = OUTLINED_FUNCTION_201_0();
  v15 = v14;
  if (v13)
  {
    OUTLINED_FUNCTION_46_1();
    v16 = sub_268B38074();

    if (v16)
    {
      if (qword_2802A4F30 != -1)
      {
        v17 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_5_31(v17, qword_2802CDA10);
      v18 = OUTLINED_FUNCTION_81_4();
      v19(v18);
      v20 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_49_8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v22);
        OUTLINED_FUNCTION_33_19();
        _os_log_impl(v23, v24, v25, v26, v27, 2u);
        OUTLINED_FUNCTION_6();
      }

      v28 = OUTLINED_FUNCTION_32_13();
      v29(v28);
      OUTLINED_FUNCTION_20_21();
      sub_268AE6378();
      goto LABEL_19;
    }
  }

  else
  {
  }

  if (qword_2802A4F30 != -1)
  {
    v17 = OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_5_31(v17, qword_2802CDA10);
  v30 = OUTLINED_FUNCTION_76_6();
  v31(v30);
  v32 = sub_268B37A34();
  v33 = sub_268B37F04();
  if (OUTLINED_FUNCTION_47_4(v33))
  {
    v34 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_279(v34);
    OUTLINED_FUNCTION_65_1(&dword_2688BB000, v35, v36, "Updating parameters for local controls");
    OUTLINED_FUNCTION_20_2();
  }

  v37 = OUTLINED_FUNCTION_31_20();
  v38(v37);
  sub_268AACBE0();
  sub_268AE46CC();
LABEL_19:
  OUTLINED_FUNCTION_23();
}

void sub_268AE46CC()
{
  OUTLINED_FUNCTION_26();
  v2 = OUTLINED_FUNCTION_101_4();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_43();
  if (v8)
  {
    if (v6)
    {
      OUTLINED_FUNCTION_85_7();
    }

    else if (v7 == 3)
    {
      OUTLINED_FUNCTION_86_7();
    }

    else
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      __swift_project_value_buffer(v2, qword_2802CDA10);
      v9 = OUTLINED_FUNCTION_9_29();
      v10(v9);
      v11 = sub_268B37A34();
      sub_268B37ED4();
      OUTLINED_FUNCTION_149_0();
      if (os_log_type_enabled(v11, v12))
      {
        OUTLINED_FUNCTION_172_0();
        v13 = OUTLINED_FUNCTION_59_6();
        OUTLINED_FUNCTION_89_8(v13);
        OUTLINED_FUNCTION_83_7(4.8149e-34);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6D58, &unk_268B42830);
        v14 = OUTLINED_FUNCTION_100_4();
        OUTLINED_FUNCTION_99_6(v14, v15);
        OUTLINED_FUNCTION_106_3();
        *(v0 + 4) = v1;
        OUTLINED_FUNCTION_39_10(&dword_2688BB000, v16, v17, "ControlsDialogParameters#update deviceType: %s doesn't have dialog parameter");
        OUTLINED_FUNCTION_25_19();
        OUTLINED_FUNCTION_132_0();
      }

      v18 = OUTLINED_FUNCTION_38_8();
      v19(v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_87_6();
  }

  OUTLINED_FUNCTION_23();
}

void sub_268AE484C()
{
  OUTLINED_FUNCTION_26();
  v4 = OUTLINED_FUNCTION_19_19();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_42();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_16_31();
  v10 = sub_2688EFD0C(v3);
  if (!v10)
  {
    if (qword_2802A4F30 != -1)
    {
      v10 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_2_37(v10, qword_2802CDA10);
    v14 = OUTLINED_FUNCTION_82_5();
    v15(v14);
    v16 = sub_268B37A34();
    v17 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v17))
    {
      v18 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v18);
      OUTLINED_FUNCTION_57();
      _os_log_impl(v19, v20, v21, v22, v23, 2u);
      OUTLINED_FUNCTION_6();
    }

    v24 = OUTLINED_FUNCTION_74_7();
    goto LABEL_18;
  }

  v11 = v3 & 1;
  OUTLINED_FUNCTION_103_4(v10, (v3 & 0xC000000000000001) == 0);
  if ((v3 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_259_0();
  }

  else
  {
    v12 = *(v3 + 32);
  }

  v13 = OUTLINED_FUNCTION_98_4(v12);
  if (v13 != 1)
  {
    if (qword_2802A4F30 != -1)
    {
      v13 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_2_37(v13, qword_2802CDA10);
    v26 = OUTLINED_FUNCTION_290();
    v27(v26);

    v28 = sub_268B37A34();
    v29 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v29))
    {
      v30 = OUTLINED_FUNCTION_172_0();
      v31 = OUTLINED_FUNCTION_96_6(v30, 3.852e-34);
      OUTLINED_FUNCTION_95_6(v31);
      OUTLINED_FUNCTION_57();
      _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
      OUTLINED_FUNCTION_6();
    }

    else
    {
    }

    v24 = OUTLINED_FUNCTION_75_6();
LABEL_18:
    v25(v24, v4);
LABEL_42:
    OUTLINED_FUNCTION_23();
    return;
  }

  if ([v77 routeId])
  {
    sub_268B37BF4();
    OUTLINED_FUNCTION_97_5();
  }

  else
  {
    OUTLINED_FUNCTION_73_7();
  }

  sub_268B37724();
  v38 = v37;
  if (v2)
  {
    OUTLINED_FUNCTION_72_5();
    v39 = v39 && v2 == v38;
    if (v39)
    {

LABEL_34:
      if (qword_2802A4F30 != -1)
      {
        v40 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_2_37(v40, qword_2802CDA10);
      v49 = OUTLINED_FUNCTION_88_6();
      v50(v49);
      v51 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_49_8();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_77_7(v53);
        OUTLINED_FUNCTION_34_13(&dword_2688BB000, v54, v55, "Everywhere: Smart pause of all devices or groups");
        OUTLINED_FUNCTION_55_10();
      }

      v56 = OUTLINED_FUNCTION_30_17();
      v57(v56);
      v58 = OUTLINED_FUNCTION_3_45();
      v59 = v1(v58);
      OUTLINED_FUNCTION_7_25(v59, v60);
      if (!v39)
      {
        OUTLINED_FUNCTION_79_5(v61, v62);
      }

      v63 = OUTLINED_FUNCTION_26_18();
      v64(v63);
LABEL_41:

      goto LABEL_42;
    }

    OUTLINED_FUNCTION_35_14();
    OUTLINED_FUNCTION_108_4();

    if (v11)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v41 = [v77 context];
  if (!v41)
  {
    goto LABEL_54;
  }

  v42 = v41;
  v43 = [v41 proximity];

  OUTLINED_FUNCTION_92_7();
  if (!v44)
  {
    OUTLINED_FUNCTION_84_6();
    v45 = OUTLINED_FUNCTION_3_45();
    v46 = v1(v45);
    OUTLINED_FUNCTION_26_14(v46, v47);
    if (v39)
    {
      v48 = OUTLINED_FUNCTION_26_18();
      (v42)(v48);
    }

    else
    {
      v65 = OUTLINED_FUNCTION_107_4();
      if (!v66)
      {
        v65 = sub_268988568(v77);
      }

      OUTLINED_FUNCTION_60_6(v65, v66);
      v67 = OUTLINED_FUNCTION_18_20();
      (v42)(v67);
    }

    v68 = OUTLINED_FUNCTION_3_45();
    v69 = v1(v68);
    OUTLINED_FUNCTION_26_14(v69, v70);
    if (v39)
    {
      v71 = OUTLINED_FUNCTION_26_18();
      (v42)(v71);
    }

    else
    {
      v72 = [v77 numberOfAffectedRooms];
      v73 = 1;
      if (v72)
      {
        OUTLINED_FUNCTION_40_13(1);

        OUTLINED_FUNCTION_90_7();
      }

      v76 = OUTLINED_FUNCTION_11_33(v73);
      (v42)(v76);
    }

    goto LABEL_41;
  }

  if (v43 == 1)
  {

    v0[89] = 1;
    goto LABEL_42;
  }

  if (v43)
  {
    OUTLINED_FUNCTION_10_29();
    OUTLINED_FUNCTION_13_24();
    __break(1u);
  }

  else
  {
LABEL_54:
    sub_268AACBE0();
    sub_268AE46CC();
    OUTLINED_FUNCTION_78_9();
    OUTLINED_FUNCTION_23();
  }
}

void sub_268AE4D40()
{
  OUTLINED_FUNCTION_26();
  v4 = OUTLINED_FUNCTION_19_19();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_42();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_16_31();
  v10 = sub_2688EFD0C(v3);
  if (!v10)
  {
    if (qword_2802A4F30 != -1)
    {
      v10 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_2_37(v10, qword_2802CDA10);
    v14 = OUTLINED_FUNCTION_82_5();
    v15(v14);
    v16 = sub_268B37A34();
    v17 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v17))
    {
      v18 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v18);
      OUTLINED_FUNCTION_57();
      _os_log_impl(v19, v20, v21, v22, v23, 2u);
      OUTLINED_FUNCTION_6();
    }

    v24 = OUTLINED_FUNCTION_74_7();
    goto LABEL_18;
  }

  v11 = v3 & 1;
  OUTLINED_FUNCTION_103_4(v10, (v3 & 0xC000000000000001) == 0);
  if ((v3 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_259_0();
  }

  else
  {
    v12 = *(v3 + 32);
  }

  v13 = OUTLINED_FUNCTION_98_4(v12);
  if (v13 != 1)
  {
    if (qword_2802A4F30 != -1)
    {
      v13 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_2_37(v13, qword_2802CDA10);
    v26 = OUTLINED_FUNCTION_290();
    v27(v26);

    v28 = sub_268B37A34();
    v29 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v29))
    {
      v30 = OUTLINED_FUNCTION_172_0();
      v31 = OUTLINED_FUNCTION_96_6(v30, 3.852e-34);
      OUTLINED_FUNCTION_95_6(v31);
      OUTLINED_FUNCTION_57();
      _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
      OUTLINED_FUNCTION_6();
    }

    else
    {
    }

    v24 = OUTLINED_FUNCTION_75_6();
LABEL_18:
    v25(v24, v4);
LABEL_42:
    OUTLINED_FUNCTION_23();
    return;
  }

  if ([v77 routeId])
  {
    sub_268B37BF4();
    OUTLINED_FUNCTION_97_5();
  }

  else
  {
    OUTLINED_FUNCTION_73_7();
  }

  sub_268B37724();
  v38 = v37;
  if (v2)
  {
    OUTLINED_FUNCTION_72_5();
    v39 = v39 && v2 == v38;
    if (v39)
    {

LABEL_34:
      if (qword_2802A4F30 != -1)
      {
        v40 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_2_37(v40, qword_2802CDA10);
      v49 = OUTLINED_FUNCTION_88_6();
      v50(v49);
      v51 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_49_8();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_77_7(v53);
        OUTLINED_FUNCTION_34_13(&dword_2688BB000, v54, v55, "Everywhere: Smart pause of all devices or groups");
        OUTLINED_FUNCTION_55_10();
      }

      v56 = OUTLINED_FUNCTION_30_17();
      v57(v56);
      v58 = OUTLINED_FUNCTION_3_45();
      v59 = v1(v58);
      OUTLINED_FUNCTION_7_25(v59, v60);
      if (!v39)
      {
        OUTLINED_FUNCTION_79_5(v61, v62);
      }

      v63 = OUTLINED_FUNCTION_26_18();
      v64(v63);
LABEL_41:

      goto LABEL_42;
    }

    OUTLINED_FUNCTION_35_14();
    OUTLINED_FUNCTION_108_4();

    if (v11)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v41 = [v77 context];
  if (!v41)
  {
    goto LABEL_54;
  }

  v42 = v41;
  v43 = [v41 proximity];

  OUTLINED_FUNCTION_92_7();
  if (!v44)
  {
    v0[91] = 1;
    v45 = OUTLINED_FUNCTION_3_45();
    v46 = v1(v45);
    OUTLINED_FUNCTION_26_14(v46, v47);
    if (v39)
    {
      v48 = OUTLINED_FUNCTION_26_18();
      (v42)(v48);
    }

    else
    {
      v65 = OUTLINED_FUNCTION_107_4();
      if (!v66)
      {
        v65 = sub_268988568(v77);
      }

      OUTLINED_FUNCTION_60_6(v65, v66);
      v67 = OUTLINED_FUNCTION_18_20();
      (v42)(v67);
    }

    v68 = OUTLINED_FUNCTION_3_45();
    v69 = v1(v68);
    OUTLINED_FUNCTION_26_14(v69, v70);
    if (v39)
    {
      v71 = OUTLINED_FUNCTION_26_18();
      (v42)(v71);
    }

    else
    {
      v72 = [v77 numberOfAffectedRooms];
      v73 = 1;
      if (v72)
      {
        OUTLINED_FUNCTION_40_13(1);

        OUTLINED_FUNCTION_90_7();
      }

      v76 = OUTLINED_FUNCTION_11_33(v73);
      (v42)(v76);
    }

    goto LABEL_41;
  }

  if (v43 == 1)
  {

    OUTLINED_FUNCTION_84_6();
    goto LABEL_42;
  }

  if (v43)
  {
    OUTLINED_FUNCTION_10_29();
    OUTLINED_FUNCTION_13_24();
    __break(1u);
  }

  else
  {
LABEL_54:
    sub_268AACBE0();
    sub_268AE46CC();
    OUTLINED_FUNCTION_78_9();
    OUTLINED_FUNCTION_23();
  }
}

void sub_268AE5234(uint64_t a1)
{
  v2 = v1;
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v57 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v57 - v13;
  if (sub_2688EFD0C(a1))
  {
    sub_2688EFD10(0, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x26D625BD0](0, a1);
    }

    else
    {
      v15 = *(a1 + 32);
    }

    v58 = v15;
    if (sub_2688EFD0C(a1) == 1)
    {
      v16 = [v58 routeId];
      if (v16)
      {
        v17 = v16;
        v18 = sub_268B37BF4();
        v20 = v19;
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      v29 = sub_268B37724();
      if (v20)
      {
        if (v18 == v29 && v20 == v30)
        {

LABEL_32:
          if (qword_2802A4F30 != -1)
          {
            swift_once();
          }

          v39 = __swift_project_value_buffer(v4, qword_2802CDA10);
          (*(v5 + 16))(v9, v39, v4);
          v40 = sub_268B37A34();
          v41 = sub_268B37F04();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 0;
            _os_log_impl(&dword_2688BB000, v40, v41, "Everywhere: Smart pause of all devices or groups", v42, 2u);
            MEMORY[0x26D6266E0](v42, -1, -1);
          }

          (*(v5 + 8))(v9, v4);
          sub_268A37C8C();
          if (*(v44 + 16) != 1)
          {
            *(v44 + 2) = 1;
          }

          goto LABEL_38;
        }

        v32 = sub_268B38444();

        if (v32)
        {
          goto LABEL_32;
        }
      }

      else
      {
      }

      v33 = [v58 context];
      if (!v33)
      {
        goto LABEL_49;
      }

      v34 = v33;
      v35 = [v33 proximity];

      if ((v35 - 2) < 3)
      {
        *(v2 + 90) = 1;
        sub_268A37C8C();
        v38 = v36;
        if (*(v37 + 16) == 1)
        {
          v36(v61, 0);
        }

        else
        {
          v45 = v37;
          v46 = sub_268988580(v58);
          if (!v47)
          {
            v46 = sub_268988568(v58);
          }

          v48 = *(v45 + 48);
          *(v45 + 40) = v46;
          *(v45 + 48) = v47;

          v38(v61, 0);
        }

        sub_268A37C8C();
        v50 = v43;
        if (*(v49 + 16) != 1)
        {
          v51 = v49;
          v52 = [v58 numberOfAffectedRooms];
          v53 = 1;
          if (v52)
          {
            v54 = v52;
            v59 = 0;
            v60 = 1;
            sub_268B37E54();

            v55 = v59;
            v53 = v60;
          }

          else
          {
            v55 = 0;
          }

          *(v51 + 72) = v55;
          *(v51 + 80) = v53;
          v50(v61, 0);
          goto LABEL_39;
        }

LABEL_38:
        v43(v61, 0);
LABEL_39:

        return;
      }

      if (v35 == 1)
      {

        *(v2 + 89) = 1;
        return;
      }

      if (v35)
      {
        sub_268B38284();
        __break(1u);
      }

      else
      {
LABEL_49:
        sub_268AACBE0();
        sub_268AE46CC();
        v56 = v58;
      }
    }

    else
    {
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v25 = __swift_project_value_buffer(v4, qword_2802CDA10);
      (*(v5 + 16))(v12, v25, v4);

      v26 = sub_268B37A34();
      v27 = sub_268B37EE4();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 134217984;
        *(v28 + 4) = sub_2688EFD0C(a1);

        _os_log_impl(&dword_2688BB000, v26, v27, "Smart selected more than 1 device?! count = %ld", v28, 0xCu);
        MEMORY[0x26D6266E0](v28, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v12, v4);
    }
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v14, v21, v4);
    v22 = sub_268B37A34();
    v23 = sub_268B37EE4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2688BB000, v22, v23, "Cannot update dialog parameters using an empty device list", v24, 2u);
      MEMORY[0x26D6266E0](v24, -1, -1);
    }

    (*(v5 + 8))(v14, v4);
  }
}

void sub_268AE5990()
{
  OUTLINED_FUNCTION_26();
  v4 = OUTLINED_FUNCTION_19_19();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_42();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_16_31();
  v10 = sub_2688EFD0C(v3);
  if (!v10)
  {
    if (qword_2802A4F30 != -1)
    {
      v10 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_2_37(v10, qword_2802CDA10);
    v14 = OUTLINED_FUNCTION_82_5();
    v15(v14);
    v16 = sub_268B37A34();
    v17 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v17))
    {
      v18 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v18);
      OUTLINED_FUNCTION_57();
      _os_log_impl(v19, v20, v21, v22, v23, 2u);
      OUTLINED_FUNCTION_6();
    }

    v24 = OUTLINED_FUNCTION_74_7();
    goto LABEL_18;
  }

  v11 = v3 & 1;
  OUTLINED_FUNCTION_103_4(v10, (v3 & 0xC000000000000001) == 0);
  if ((v3 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_259_0();
  }

  else
  {
    v12 = *(v3 + 32);
  }

  v13 = OUTLINED_FUNCTION_98_4(v12);
  if (v13 != 1)
  {
    if (qword_2802A4F30 != -1)
    {
      v13 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_2_37(v13, qword_2802CDA10);
    v26 = OUTLINED_FUNCTION_290();
    v27(v26);

    v28 = sub_268B37A34();
    v29 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v29))
    {
      v30 = OUTLINED_FUNCTION_172_0();
      v31 = OUTLINED_FUNCTION_96_6(v30, 3.852e-34);
      OUTLINED_FUNCTION_95_6(v31);
      OUTLINED_FUNCTION_57();
      _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
      OUTLINED_FUNCTION_6();
    }

    else
    {
    }

    v24 = OUTLINED_FUNCTION_75_6();
LABEL_18:
    v25(v24, v4);
LABEL_42:
    OUTLINED_FUNCTION_23();
    return;
  }

  if ([v77 routeId])
  {
    sub_268B37BF4();
    OUTLINED_FUNCTION_97_5();
  }

  else
  {
    OUTLINED_FUNCTION_73_7();
  }

  sub_268B37724();
  v38 = v37;
  if (v2)
  {
    OUTLINED_FUNCTION_72_5();
    v39 = v39 && v2 == v38;
    if (v39)
    {

LABEL_34:
      if (qword_2802A4F30 != -1)
      {
        v40 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_2_37(v40, qword_2802CDA10);
      v49 = OUTLINED_FUNCTION_88_6();
      v50(v49);
      v51 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_49_8();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_77_7(v53);
        OUTLINED_FUNCTION_34_13(&dword_2688BB000, v54, v55, "Everywhere: Smart pause of all devices or groups");
        OUTLINED_FUNCTION_55_10();
      }

      v56 = OUTLINED_FUNCTION_30_17();
      v57(v56);
      v58 = OUTLINED_FUNCTION_3_45();
      v59 = v1(v58);
      OUTLINED_FUNCTION_7_25(v59, v60);
      if (!v39)
      {
        OUTLINED_FUNCTION_79_5(v61, v62);
      }

      v63 = OUTLINED_FUNCTION_26_18();
      v64(v63);
LABEL_41:

      goto LABEL_42;
    }

    OUTLINED_FUNCTION_35_14();
    OUTLINED_FUNCTION_108_4();

    if (v11)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v41 = [v77 context];
  if (!v41)
  {
    goto LABEL_54;
  }

  v42 = v41;
  v43 = [v41 proximity];

  OUTLINED_FUNCTION_92_7();
  if (!v44)
  {
    v0[91] = 1;
    v45 = OUTLINED_FUNCTION_3_45();
    v46 = v1(v45);
    OUTLINED_FUNCTION_26_14(v46, v47);
    if (v39)
    {
      v48 = OUTLINED_FUNCTION_26_18();
      (v42)(v48);
    }

    else
    {
      v65 = OUTLINED_FUNCTION_107_4();
      if (!v66)
      {
        v65 = sub_268988568(v77);
      }

      OUTLINED_FUNCTION_60_6(v65, v66);
      v67 = OUTLINED_FUNCTION_18_20();
      (v42)(v67);
    }

    v68 = OUTLINED_FUNCTION_3_45();
    v69 = v1(v68);
    OUTLINED_FUNCTION_26_14(v69, v70);
    if (v39)
    {
      v71 = OUTLINED_FUNCTION_26_18();
      (v42)(v71);
    }

    else
    {
      v72 = [v77 numberOfAffectedRooms];
      v73 = 1;
      if (v72)
      {
        OUTLINED_FUNCTION_40_13(1);

        OUTLINED_FUNCTION_90_7();
      }

      v76 = OUTLINED_FUNCTION_11_33(v73);
      (v42)(v76);
    }

    goto LABEL_41;
  }

  if (v43 == 1)
  {

    OUTLINED_FUNCTION_84_6();
    goto LABEL_42;
  }

  if (v43)
  {
    OUTLINED_FUNCTION_10_29();
    OUTLINED_FUNCTION_13_24();
    __break(1u);
  }

  else
  {
LABEL_54:
    sub_268AACBE0();
    sub_268AE46CC();
    OUTLINED_FUNCTION_78_9();
    OUTLINED_FUNCTION_23();
  }
}

void sub_268AE5E84()
{
  OUTLINED_FUNCTION_26();
  v4 = OUTLINED_FUNCTION_19_19();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_42();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_16_31();
  v10 = sub_2688EFD0C(v3);
  if (!v10)
  {
    if (qword_2802A4F30 != -1)
    {
      v10 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_2_37(v10, qword_2802CDA10);
    v14 = OUTLINED_FUNCTION_82_5();
    v15(v14);
    v16 = sub_268B37A34();
    v17 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v17))
    {
      v18 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v18);
      OUTLINED_FUNCTION_57();
      _os_log_impl(v19, v20, v21, v22, v23, 2u);
      OUTLINED_FUNCTION_6();
    }

    v24 = OUTLINED_FUNCTION_74_7();
    goto LABEL_18;
  }

  v11 = v3 & 1;
  OUTLINED_FUNCTION_103_4(v10, (v3 & 0xC000000000000001) == 0);
  if ((v3 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_259_0();
  }

  else
  {
    v12 = *(v3 + 32);
  }

  v13 = OUTLINED_FUNCTION_98_4(v12);
  if (v13 != 1)
  {
    if (qword_2802A4F30 != -1)
    {
      v13 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_2_37(v13, qword_2802CDA10);
    v26 = OUTLINED_FUNCTION_290();
    v27(v26);

    v28 = sub_268B37A34();
    v29 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v29))
    {
      v30 = OUTLINED_FUNCTION_172_0();
      v31 = OUTLINED_FUNCTION_96_6(v30, 3.852e-34);
      OUTLINED_FUNCTION_95_6(v31);
      OUTLINED_FUNCTION_57();
      _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
      OUTLINED_FUNCTION_6();
    }

    else
    {
    }

    v24 = OUTLINED_FUNCTION_75_6();
LABEL_18:
    v25(v24, v4);
LABEL_42:
    OUTLINED_FUNCTION_23();
    return;
  }

  if ([v77 routeId])
  {
    sub_268B37BF4();
    OUTLINED_FUNCTION_97_5();
  }

  else
  {
    OUTLINED_FUNCTION_73_7();
  }

  sub_268B37724();
  v38 = v37;
  if (v2)
  {
    OUTLINED_FUNCTION_72_5();
    v39 = v39 && v2 == v38;
    if (v39)
    {

LABEL_34:
      if (qword_2802A4F30 != -1)
      {
        v40 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_2_37(v40, qword_2802CDA10);
      v49 = OUTLINED_FUNCTION_88_6();
      v50(v49);
      v51 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_49_8();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_77_7(v53);
        OUTLINED_FUNCTION_34_13(&dword_2688BB000, v54, v55, "Everywhere: Smart pause of all devices or groups");
        OUTLINED_FUNCTION_55_10();
      }

      v56 = OUTLINED_FUNCTION_30_17();
      v57(v56);
      v58 = OUTLINED_FUNCTION_3_45();
      v59 = v1(v58);
      OUTLINED_FUNCTION_7_25(v59, v60);
      if (!v39)
      {
        OUTLINED_FUNCTION_79_5(v61, v62);
      }

      v63 = OUTLINED_FUNCTION_26_18();
      v64(v63);
LABEL_41:

      goto LABEL_42;
    }

    OUTLINED_FUNCTION_35_14();
    OUTLINED_FUNCTION_108_4();

    if (v11)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v41 = [v77 context];
  if (!v41)
  {
    goto LABEL_54;
  }

  v42 = v41;
  v43 = [v41 proximity];

  OUTLINED_FUNCTION_92_7();
  if (!v44)
  {
    v0[91] = 1;
    v45 = OUTLINED_FUNCTION_3_45();
    v46 = v1(v45);
    OUTLINED_FUNCTION_26_14(v46, v47);
    if (v39)
    {
      v48 = OUTLINED_FUNCTION_26_18();
      (v42)(v48);
    }

    else
    {
      v65 = OUTLINED_FUNCTION_107_4();
      if (!v66)
      {
        v65 = sub_268988568(v77);
      }

      OUTLINED_FUNCTION_60_6(v65, v66);
      v67 = OUTLINED_FUNCTION_18_20();
      (v42)(v67);
    }

    v68 = OUTLINED_FUNCTION_3_45();
    v69 = v1(v68);
    OUTLINED_FUNCTION_26_14(v69, v70);
    if (v39)
    {
      v71 = OUTLINED_FUNCTION_26_18();
      (v42)(v71);
    }

    else
    {
      v72 = [v77 numberOfAffectedRooms];
      v73 = 1;
      if (v72)
      {
        OUTLINED_FUNCTION_40_13(1);

        OUTLINED_FUNCTION_90_7();
      }

      v76 = OUTLINED_FUNCTION_11_33(v73);
      (v42)(v76);
    }

    goto LABEL_41;
  }

  if (v43 == 1)
  {

    OUTLINED_FUNCTION_84_6();
    goto LABEL_42;
  }

  if (v43)
  {
    OUTLINED_FUNCTION_10_29();
    OUTLINED_FUNCTION_13_24();
    __break(1u);
  }

  else
  {
LABEL_54:
    sub_268AACBE0();
    sub_268AE46CC();
    OUTLINED_FUNCTION_78_9();
    OUTLINED_FUNCTION_23();
  }
}

void sub_268AE6378()
{
  OUTLINED_FUNCTION_26();
  v4 = OUTLINED_FUNCTION_19_19();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_42();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_35_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_16_31();
  v10 = sub_2688EFD0C(v3);
  if (!v10)
  {
    if (qword_2802A4F30 != -1)
    {
      v10 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_2_37(v10, qword_2802CDA10);
    v14 = OUTLINED_FUNCTION_82_5();
    v15(v14);
    v16 = sub_268B37A34();
    v17 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v17))
    {
      v18 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v18);
      OUTLINED_FUNCTION_57();
      _os_log_impl(v19, v20, v21, v22, v23, 2u);
      OUTLINED_FUNCTION_6();
    }

    v24 = OUTLINED_FUNCTION_74_7();
    goto LABEL_18;
  }

  v11 = v3 & 1;
  OUTLINED_FUNCTION_103_4(v10, (v3 & 0xC000000000000001) == 0);
  if ((v3 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_259_0();
  }

  else
  {
    v12 = *(v3 + 32);
  }

  v13 = OUTLINED_FUNCTION_98_4(v12);
  if (v13 != 1)
  {
    if (qword_2802A4F30 != -1)
    {
      v13 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_2_37(v13, qword_2802CDA10);
    v26 = OUTLINED_FUNCTION_290();
    v27(v26);

    v28 = sub_268B37A34();
    v29 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_115_0(v29))
    {
      v30 = OUTLINED_FUNCTION_172_0();
      v31 = OUTLINED_FUNCTION_96_6(v30, 3.852e-34);
      OUTLINED_FUNCTION_95_6(v31);
      OUTLINED_FUNCTION_57();
      _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
      OUTLINED_FUNCTION_6();
    }

    else
    {
    }

    v24 = OUTLINED_FUNCTION_75_6();
LABEL_18:
    v25(v24, v4);
LABEL_42:
    OUTLINED_FUNCTION_23();
    return;
  }

  if ([v77 routeId])
  {
    sub_268B37BF4();
    OUTLINED_FUNCTION_97_5();
  }

  else
  {
    OUTLINED_FUNCTION_73_7();
  }

  sub_268B37724();
  v38 = v37;
  if (v2)
  {
    OUTLINED_FUNCTION_72_5();
    v39 = v39 && v2 == v38;
    if (v39)
    {

LABEL_34:
      if (qword_2802A4F30 != -1)
      {
        v40 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_2_37(v40, qword_2802CDA10);
      v49 = OUTLINED_FUNCTION_88_6();
      v50(v49);
      v51 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_49_8();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_77_7(v53);
        OUTLINED_FUNCTION_34_13(&dword_2688BB000, v54, v55, "Everywhere: Smart pause of all devices or groups");
        OUTLINED_FUNCTION_55_10();
      }

      v56 = OUTLINED_FUNCTION_30_17();
      v57(v56);
      v58 = OUTLINED_FUNCTION_3_45();
      v59 = v1(v58);
      OUTLINED_FUNCTION_7_25(v59, v60);
      if (!v39)
      {
        OUTLINED_FUNCTION_79_5(v61, v62);
      }

      v63 = OUTLINED_FUNCTION_26_18();
      v64(v63);
LABEL_41:

      goto LABEL_42;
    }

    OUTLINED_FUNCTION_35_14();
    OUTLINED_FUNCTION_108_4();

    if (v11)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v41 = [v77 context];
  if (!v41)
  {
    goto LABEL_54;
  }

  v42 = v41;
  v43 = [v41 proximity];

  OUTLINED_FUNCTION_92_7();
  if (!v44)
  {
    v0[91] = 1;
    v45 = OUTLINED_FUNCTION_3_45();
    v46 = v1(v45);
    OUTLINED_FUNCTION_26_14(v46, v47);
    if (v39)
    {
      v48 = OUTLINED_FUNCTION_26_18();
      (v42)(v48);
    }

    else
    {
      v65 = OUTLINED_FUNCTION_107_4();
      if (!v66)
      {
        v65 = sub_268988568(v77);
      }

      OUTLINED_FUNCTION_60_6(v65, v66);
      v67 = OUTLINED_FUNCTION_18_20();
      (v42)(v67);
    }

    v68 = OUTLINED_FUNCTION_3_45();
    v69 = v1(v68);
    OUTLINED_FUNCTION_26_14(v69, v70);
    if (v39)
    {
      v71 = OUTLINED_FUNCTION_26_18();
      (v42)(v71);
    }

    else
    {
      v72 = [v77 numberOfAffectedRooms];
      v73 = 1;
      if (v72)
      {
        OUTLINED_FUNCTION_40_13(1);

        OUTLINED_FUNCTION_90_7();
      }

      v76 = OUTLINED_FUNCTION_11_33(v73);
      (v42)(v76);
    }

    goto LABEL_41;
  }

  if (v43 == 1)
  {

    OUTLINED_FUNCTION_84_6();
    goto LABEL_42;
  }

  if (v43)
  {
    OUTLINED_FUNCTION_10_29();
    OUTLINED_FUNCTION_13_24();
    __break(1u);
  }

  else
  {
LABEL_54:
    sub_268AACBE0();
    sub_268AE46CC();
    OUTLINED_FUNCTION_78_9();
    OUTLINED_FUNCTION_23();
  }
}

id sub_268AE686C()
{
  if (qword_2802A4EF0 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CD9D0;
  qword_2802CDB58 = qword_2802CD9D0;

  return v1;
}

void sub_268AE68D0()
{
  OUTLINED_FUNCTION_26();
  v158 = v0;
  v151 = v2;
  v152 = v1;
  v149 = v4;
  v150 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_20_0();
  v155 = (v9 - v10);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_78();
  v144 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_20_0();
  v146 = v15 - v16;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v17);
  v154 = &v137 - v18;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v19);
  v138 = &v137 - v20;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_78();
  v143 = v22;
  OUTLINED_FUNCTION_9();
  v147 = sub_268B34E24();
  v23 = OUTLINED_FUNCTION_1(v147);
  v156 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_20_0();
  v153 = v27 - v28;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_78();
  v142 = v30;
  OUTLINED_FUNCTION_9();
  v31 = sub_268B367A4();
  v32 = OUTLINED_FUNCTION_1(v31);
  v140 = v33;
  v141 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_0();
  v139 = v37 - v36;
  OUTLINED_FUNCTION_9();
  v38 = sub_268B37A54();
  v39 = OUTLINED_FUNCTION_1(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_20_0();
  v46 = (v44 - v45);
  MEMORY[0x28223BE20](v47);
  v145 = &v137 - v48;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v50 = __swift_project_value_buffer(v38, qword_2802CDA10);
  v148 = *(v41 + 16);
  v148(v0, v50, v38);
  v51 = sub_268B37A34();
  LOBYTE(v52) = sub_268B37ED4();
  v53 = os_log_type_enabled(v51, v52);
  v157 = v6;
  if (v53)
  {
    v54 = OUTLINED_FUNCTION_14();
    *v54 = 0;
    _os_log_impl(&dword_2688BB000, v51, v52, "SkipContentHandleIntentStrategy.makeIntentHandledResponse()", v54, 2u);
    v6 = v157;
    OUTLINED_FUNCTION_12();
  }

  v55 = *(v41 + 8);
  v55(v0, v38);
  v56 = sub_268B18100();
  if (!v56)
  {
    goto LABEL_16;
  }

  v52 = v56;
  if (!sub_2688EFD0C(v56))
  {

LABEL_16:
    v80 = OUTLINED_FUNCTION_112_3();
    v81(v80);
    v82 = sub_268B37A34();
    v83 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_47_4(v83))
    {
      v84 = OUTLINED_FUNCTION_14();
      *v84 = 0;
      _os_log_impl(&dword_2688BB000, v82, v52, "No device found in intent", v84, 2u);
      OUTLINED_FUNCTION_12();
    }

    v55(v46, v38);
    v85 = sub_268B36E84();
    v86 = v158;
    v87 = v147;
    if (!v88)
    {
      sub_268947F08();
    }

    v149 = v85;
    OUTLINED_FUNCTION_59_0(v86 + 18, v86[21]);
    (*(v156 + 104))(v153, *MEMORY[0x277D5BC00], v87);
    v89 = sub_268B350F4();
    v90 = v154;
    __swift_storeEnumTagSinglePayload(v154, 1, 1, v89);
    v91 = *MEMORY[0x277D5B908];
    v92 = sub_268B34B94();
    OUTLINED_FUNCTION_4(v92);
    v94 = v155;
    (*(v93 + 104))(v155, v91, v92);
    __swift_storeEnumTagSinglePayload(v94, 0, 1, v92);
    v95.isa = v82->isa;
    v96 = v90;
    v97 = v146;
    sub_2688F1FA4(v96, v146, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v97, 1, v89) == 1)
    {
      sub_2688C058C(v97, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(*(v89 - 8) + 8))(v97, v89);
    }

    v98 = v153;
    v99 = v155;
    sub_2688E36A0();

    sub_2688C058C(v99, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v154, &unk_2802A57B0, &unk_268B3CE00);
    (*(v156 + 8))(v98, v87);
    OUTLINED_FUNCTION_59_0(v86 + 18, v86[21]);
    sub_2688C2ECC();
    v100 = OUTLINED_FUNCTION_26_1();
    OUTLINED_FUNCTION_56_9(v100, v101);

    v102 = OUTLINED_FUNCTION_26_1();
    v104 = OUTLINED_FUNCTION_66_8(v102, v103);
    v105(v104);
    goto LABEL_24;
  }

  v155 = v55;
  v162 = 0;
  v57 = v158;
  v58 = sub_268AAC34C(v158 + 2, v52, &v162);
  v59 = *__swift_project_boxed_opaque_existential_1(v57 + 8, v57[11]);
  v137 = v41 + 8;
  if (v59 && (OUTLINED_FUNCTION_115_2(), v60 = sub_268B37BC4(), v61 = [v59 BOOLForKey_], v60, (v61 & 1) != 0))
  {
    v62 = 1;
  }

  else
  {
    v62 = v162;
  }

  LODWORD(v154) = v62;
  v63 = v145;
  sub_268B36754();
  v64 = sub_268B36734();
  if (!v64)
  {
    v64 = sub_268B36744();
  }

  v65 = v64;
  v153 = v52;
  v66 = OUTLINED_FUNCTION_112_3();
  v67(v66);

  v68 = v63;
  v69 = sub_268B37A34();
  v70 = sub_268B37ED4();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = OUTLINED_FUNCTION_172_0();
    v148 = OUTLINED_FUNCTION_173_0();
    v163[0] = v148;
    *v71 = 136315138;
    sub_268B36714();
    v72 = v58;
    v73 = v139;
    sub_268B36B14();

    v74 = sub_268B36784();
    v76 = v75;
    v77 = v73;
    v58 = v72;
    (*(v140 + 8))(v77, v141);
    v78 = sub_26892CDB8(v74, v76, v163);
    v6 = v157;

    *(v71 + 4) = v78;
    _os_log_impl(&dword_2688BB000, v69, v70, "SkipContentHandleIntentStrategy.makeIntentHandledResponse cached responseMode = %s", v71, 0xCu);
    OUTLINED_FUNCTION_25_19();
    OUTLINED_FUNCTION_55_10();

    v79 = v145;
  }

  else
  {

    v79 = v68;
  }

  v155(v79, v38);
  v106 = v158;
  v107 = swift_allocObject();
  *(v107 + 16) = v65;
  *(v107 + 24) = v106;
  v108 = v149;
  *(v107 + 32) = v150;
  *(v107 + 40) = v154;
  *(v107 + 48) = v6;
  *(v107 + 56) = v108;
  v109 = v152;
  *(v107 + 64) = v58;
  *(v107 + 72) = v109;
  *(v107 + 80) = v151;
  v157 = v65;

  v110 = v6;
  v111 = v108;

  v112 = [v110 direction];
  if (v112 == 2)
  {
    OUTLINED_FUNCTION_43_11();
    sub_2688C058C(v160, &qword_2802A5C88, qword_268B418C0);
    OUTLINED_FUNCTION_68_8();
    OUTLINED_FUNCTION_120_2();

    OUTLINED_FUNCTION_118_2();
    v114 = OUTLINED_FUNCTION_42_12();
    sub_268ABA2DC(v114);

    memcpy(v161, v159, 0x5CuLL);
    sub_268AC2EC4(v161);
    goto LABEL_25;
  }

  if (v112 == 1)
  {
    OUTLINED_FUNCTION_43_11();
    sub_2688C058C(v160, &qword_2802A5C88, qword_268B418C0);
    OUTLINED_FUNCTION_68_8();
    OUTLINED_FUNCTION_120_2();

    OUTLINED_FUNCTION_118_2();
    v113 = OUTLINED_FUNCTION_42_12();
    sub_268AB9844(v113);

    memcpy(v161, v159, 0x5CuLL);
    sub_268AC2E94(v161);
    goto LABEL_25;
  }

  v115 = sub_268B36E84();
  if (!v116)
  {
    sub_268947F08();
  }

  v155 = v115;
  v117 = v147;
  OUTLINED_FUNCTION_59_0(v158 + 18, v158[21]);
  (*(v156 + 104))(v142, *MEMORY[0x277D5BC00], v117);
  v118 = sub_268B350F4();
  v119 = v143;
  __swift_storeEnumTagSinglePayload(v143, 1, 1, v118);
  v120 = *MEMORY[0x277D5B908];
  v121 = sub_268B34B94();
  OUTLINED_FUNCTION_4(v121);
  v123 = v144;
  (*(v122 + 104))(v144, v120, v121);
  __swift_storeEnumTagSinglePayload(v123, 0, 1, v121);
  v124 = *v111;
  v125 = v138;
  sub_2688F1FA4(v119, v138, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v125, 1, v118) == 1)
  {
    sub_2688C058C(v125, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    v126 = *(*(v118 - 8) + 8);
    v127 = OUTLINED_FUNCTION_70_1();
    v128(v127);
  }

  v129 = v142;
  v130 = v144;
  sub_2688E36A0();

  sub_2688C058C(v130, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v143, &unk_2802A57B0, &unk_268B3CE00);
  (*(v156 + 8))(v129, v147);
  OUTLINED_FUNCTION_59_0(v158 + 18, v158[21]);
  sub_2688C2ECC();
  v131 = OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_56_9(v131, v132);

  v133 = OUTLINED_FUNCTION_26_1();
  v135 = OUTLINED_FUNCTION_66_8(v133, v134);
  v136(v135);

LABEL_24:
  sub_2688C058C(v163, &unk_2802A57C0, &qword_268B3BE00);
LABEL_25:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268AE7680(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void *), uint64_t a9)
{
  v66 = a8;
  v56 = a7;
  v59 = a6;
  v67 = a5;
  HIDWORD(v55) = a4;
  v64 = a3;
  v65 = a9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v58 = &v55 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v57 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v62 = &v55 - v18;
  v63 = sub_268B34E24();
  v61 = *(v63 - 8);
  v19 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  v60 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v55 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = (&v55 - v30);
  sub_2688F1FA4(a1, &v55 - v30, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = *v31;
    sub_268B36E84();
    if (!v33)
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
    }

    v41 = a2;
    v42 = __swift_project_boxed_opaque_existential_1(a2 + 18, a2[21]);
    (*(v61 + 104))(v60, *MEMORY[0x277D5BC00], v63);
    v43 = sub_268B350F4();
    v44 = v62;
    __swift_storeEnumTagSinglePayload(v62, 1, 1, v43);
    v45 = sub_268B34B94();
    v46 = v58;
    __swift_storeEnumTagSinglePayload(v58, 1, 1, v45);
    v47 = *v42;
    v48 = v44;
    v49 = v57;
    sub_2688F1FA4(v48, v57, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v49, 1, v43) == 1)
    {
      sub_2688C058C(v49, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      v59 = v47;
      sub_268B350B4();
      (*(*(v43 - 8) + 8))(v49, v43);
    }

    v50 = v60;
    sub_2688E36A0();

    sub_2688C058C(v46, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v62, &unk_2802A57B0, &unk_268B3CE00);
    (*(v61 + 8))(v50, v63);
    v51 = *__swift_project_boxed_opaque_existential_1(v41 + 18, v41[21]);
    v52 = v32;
    sub_26894B450();

    v68[0] = v32;
    v69 = 1;
    v53 = v32;
    v66(v68);

    return sub_2688C058C(v68, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    v34 = v59;
    sub_2689186C8(v31, v27);
    v35 = a2[27];
    __swift_project_boxed_opaque_existential_1(a2 + 23, a2[26]);
    v36 = sub_268B36FA4();
    sub_2688F1FA4(v27, v25, &unk_2802A56E0, &unk_268B3CDF0);
    v38 = *&v25[*(v21 + 48)];
    if (v36)
    {
      sub_268AE7D14(v64, BYTE4(v55) & 1, v67, v37, v56, v25, v38, v66, v65, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
    }

    else
    {
      sub_268AE8924(v64, BYTE4(v55) & 1, v67, v34, v56, v25, v38, v66, v65);
    }

    sub_2688C058C(v27, &unk_2802A56E0, &unk_268B3CDF0);
    v39 = sub_268B350F4();
    return (*(*(v39 - 8) + 8))(v25, v39);
  }
}

void sub_268AE7D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_26();
  v102 = v21;
  v103 = v23;
  v98 = v25;
  v99 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v100 = v32;
  v33 = sub_268B35044();
  v34 = OUTLINED_FUNCTION_1(v33);
  v104 = v35;
  v105 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1_0();
  v101 = v39 - v38;
  OUTLINED_FUNCTION_9();
  v40 = sub_268B37A54();
  v41 = OUTLINED_FUNCTION_1(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_1_0();
  v48 = v47 - v46;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v50 = OUTLINED_FUNCTION_1(v49);
  *&v95 = v51;
  v53 = *(v52 + 64);
  v54 = MEMORY[0x28223BE20](v50);
  *(&v95 + 1) = &v88 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_78();
  v106 = v55;
  MEMORY[0x28223BE20](v56);
  v57 = OUTLINED_FUNCTION_117_1();
  v96 = *(v57 - 8);
  v97 = v57;
  (*(v96 + 16))(v22, v29);
  v58 = v22;
  *(v22 + *(v49 + 48)) = v27;
  v59 = qword_2802A4F30;
  v60 = v27;
  if (v59 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  __swift_project_value_buffer(v40, qword_2802CDA10);
  OUTLINED_FUNCTION_36_14();
  v61(v48);
  v62 = sub_268B37A34();
  sub_268B37ED4();
  OUTLINED_FUNCTION_149_0();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = OUTLINED_FUNCTION_14();
    *v64 = 0;
    _os_log_impl(&dword_2688BB000, v62, v27, "SkipContentHandleIntentStrategy.intentHandledResponse...", v64, 2u);
    OUTLINED_FUNCTION_12();
  }

  v94 = a21;

  (*(v43 + 8))(v48, v40);
  v65 = v102;
  sub_26890C900(v102 + 264, v107);
  v90 = v109;
  v91 = v108;
  v93 = __swift_project_boxed_opaque_existential_1(v107, v108);
  v66 = v106;
  sub_2688F1FA4(v58, v106, &unk_2802A56E0, &unk_268B3CDF0);
  v92 = *(v66 + *(v49 + 48));
  if (sub_268B18100())
  {
    v67 = *(v65 + 304);
    sub_268921344();
    v69 = v68;

    if (v69[2])
    {
      v70 = v69[4];
      v71 = v69[5];
    }

    else
    {
      v70 = 0;
      v71 = 0xE000000000000000;
    }

    v88 = v70;
    v89 = v71;
  }

  else
  {
    v88 = 0;
    v89 = 0xE000000000000000;
  }

  v72 = v101;
  sub_268A82B50(v31, v101);
  v73 = sub_2689F0948();
  v74 = v58;
  v75 = v58;
  v76 = *(&v95 + 1);
  sub_2688F1FA4(v75, *(&v95 + 1), &unk_2802A56E0, &unk_268B3CDF0);
  v77 = (*(v95 + 80) + 40) & ~*(v95 + 80);
  v78 = (v53 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
  v79 = swift_allocObject();
  v79[2] = v31;
  v79[3] = v65;
  v79[4] = v99;
  sub_2689186C8(v76, v79 + v77);
  v80 = (v79 + v78);
  v81 = v94;
  *v80 = v98;
  v80[1] = v81;
  v82 = v31;

  LOBYTE(v86) = v73 & 1;
  v83 = v65 + 104;
  v84 = v106;
  v85 = v92;
  sub_268A83648(v106, v92, v88, v89, v100 & 1, v103, v72, v83, v86, sub_268AEDAEC, v79, v91, v90, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);

  (*(v104 + 8))(v72, v105);
  sub_2688C058C(v74, &unk_2802A56E0, &unk_268B3CDF0);
  (*(v96 + 8))(v84, v97);
  __swift_destroy_boxed_opaque_existential_0Tm(v107);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268AE8264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v63 = a7;
  v64 = a6;
  v60 = a4;
  v69 = a2;
  v70 = a3;
  v62 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v68 = v54 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v11 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v13 = v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v54 - v19;
  v21 = sub_268B34E24();
  v66 = *(v21 - 8);
  v67 = v21;
  v22 = *(v66 + 64);
  MEMORY[0x28223BE20](v21);
  v65 = v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_268B37A54();
  v25 = *(v24 - 8);
  v26 = v25[8];
  v27 = MEMORY[0x28223BE20](v24);
  v59 = v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = v54 - v29;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v24, qword_2802CDA10);
  v57 = v25[2];
  v58 = v31;
  v57(v30);
  v32 = sub_268B37A34();
  v33 = sub_268B37ED4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v61 = v13;
    v35 = a5;
    v36 = v25;
    v37 = v34;
    *v34 = 0;
    _os_log_impl(&dword_2688BB000, v32, v33, "SkipContentHandleIntentStrategy.intentHandledResponse output has been created.", v34, 2u);
    v38 = v37;
    v25 = v36;
    a5 = v35;
    v13 = v61;
    MEMORY[0x26D6266E0](v38, -1, -1);
  }

  v39 = v25[1];
  v61 = (v25 + 1);
  v56 = v39;
  v39(v30, v24);
  sub_268947F08();
  v54[1] = v40;
  v41 = __swift_project_boxed_opaque_existential_1((v70 + 144), *(v70 + 168));
  (*(v66 + 104))(v65, *MEMORY[0x277D5BC10], v67);
  sub_2688F1FA4(a5, v13, &unk_2802A56E0, &unk_268B3CDF0);

  v42 = sub_268B350F4();
  v43 = *(v42 - 8);
  (*(v43 + 32))(v20, v13, v42);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v42);
  v44 = sub_268B34B94();
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v44);
  v45 = *v41;
  sub_2688F1FA4(v20, v18, &unk_2802A57B0, &unk_268B3CE00);
  if (__swift_getEnumTagSinglePayload(v18, 1, v42) == 1)
  {
    sub_2688C058C(v18, &unk_2802A57B0, &unk_268B3CE00);
  }

  else
  {
    sub_268B350B4();
    (*(v43 + 8))(v18, v42);
  }

  v46 = v65;
  v47 = v68;
  sub_2688E36A0();

  sub_2688C058C(v47, &unk_2802A62B0, &unk_268B3BDF0);
  sub_2688C058C(v20, &unk_2802A57B0, &unk_268B3CE00);
  (*(v66 + 8))(v46, v67);
  v48 = *__swift_project_boxed_opaque_existential_1((v70 + 144), *(v70 + 168));
  sub_26894B450();
  v49 = v59;
  (v57)(v59, v58, v24);
  v50 = sub_268B37A34();
  v51 = sub_268B37ED4();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_2688BB000, v50, v51, "SkipContentHandleIntentStrategy.intentHandledResponse returning output", v52, 2u);
    MEMORY[0x26D6266E0](v52, -1, -1);
  }

  v56(v49, v24);
  return v64(v62);
}

uint64_t sub_268AE8D54(void *a1, int a2, char *a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8, uint64_t a9)
{
  v94 = a8;
  v95 = a7;
  v98 = a6;
  v93 = a5;
  v100 = a3;
  LODWORD(v91) = a2;
  v96 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v89 = &v83 - v12;
  v90 = sub_268B35044();
  v88 = *(v90 - 8);
  v13 = *(v88 + 64);
  MEMORY[0x28223BE20](v90);
  v87 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v92 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v84 = &v83 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v83 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v85 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v86 = &v83 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v83 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v83 - v36;
  v38 = sub_268B34E24();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v83 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v45 = &v83 - v44;
  v99 = a4;
  v97 = v39;
  if (v91)
  {
    v91 = v38;
    v46 = v98;
    sub_268B36E84();
    if (!v47)
    {
      swift_getErrorValue();
      sub_268B384A4();
      sub_268947F08();
    }

    v68 = v97;
    v69 = v85;
    v70 = __swift_project_boxed_opaque_existential_1(v99 + 18, v99[21]);
    (*(v68 + 104))(v43, *MEMORY[0x277D5BC00], v91);
    sub_2688F1FA4(v46, v24, &unk_2802A56E0, &unk_268B3CDF0);

    v71 = sub_268B350F4();
    v72 = *(v71 - 8);
    v73 = v86;
    (*(v72 + 32))(v86, v24, v71);
    __swift_storeEnumTagSinglePayload(v73, 0, 1, v71);
    v74 = sub_268B34B94();
    __swift_storeEnumTagSinglePayload(v92, 1, 1, v74);
    v75 = *v70;
    sub_2688F1FA4(v73, v69, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v69, 1, v71) == 1)
    {
      sub_2688C058C(v69, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v72 + 8))(v69, v71);
    }

    v76 = v92;
    sub_2688E36A0();

    sub_2688C058C(v76, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v73, &unk_2802A57B0, &unk_268B3CE00);
    (*(v97 + 8))(v43, v91);
    v77 = __swift_project_boxed_opaque_existential_1(v99 + 18, v99[21]);
    sub_2688C2ECC();
    v78 = swift_allocError();
    *v79 = 121;
    v80 = *v77;
    sub_26894B450();

    v103[0] = v96;
    v106 = 1;
    v81 = v96;
  }

  else
  {
    v92 = a9;
    sub_268947F08();
    v86 = v48;
    v91 = v49;
    v50 = __swift_project_boxed_opaque_existential_1(a4 + 18, a4[21]);
    (*(v39 + 104))(v45, *MEMORY[0x277D5BC10], v38);
    sub_2688F1FA4(v98, v26, &unk_2802A56E0, &unk_268B3CDF0);

    v51 = sub_268B350F4();
    v52 = *(v51 - 8);
    (*(v52 + 32))(v37, v26, v51);
    __swift_storeEnumTagSinglePayload(v37, 0, 1, v51);
    v53 = sub_268B34B94();
    v54 = v84;
    __swift_storeEnumTagSinglePayload(v84, 1, 1, v53);
    v55 = *v50;
    sub_2688F1FA4(v37, v35, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v35, 1, v51) == 1)
    {
      sub_2688C058C(v35, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v52 + 8))(v35, v51);
    }

    v56 = v100;
    sub_2688E36A0();

    sub_2688C058C(v54, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v37, &unk_2802A57B0, &unk_268B3CE00);
    (*(v97 + 8))(v45, v38);
    v57 = v99;
    v58 = *__swift_project_boxed_opaque_existential_1(v99 + 18, v99[21]);
    sub_26894B450();
    v59 = __swift_project_boxed_opaque_existential_1(v57 + 18, v57[21]);
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F8, qword_268B3BE70);
    v103[0] = v96;
    v60 = *v59;

    sub_268948494(v103);
    sub_2688C058C(v103, &byte_2802A6450, &byte_268B3BE10);
    v61 = v87;
    sub_268A82B50(v56, v87);
    v104 = sub_268B354F4();
    v105 = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v103);
    v62 = 0;
    if (sub_2689F0948())
    {
      v62 = [objc_allocWithZone(MEMORY[0x277D47B00]) init];
      sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
      v63 = sub_268B38064();
      [v62 setMinimumAutoDismissalTimeInMs_];

      [v62 setPremptivelyResumeMedia_];
    }

    v64 = v57[6];
    __swift_project_boxed_opaque_existential_1(v57 + 2, v57[5]);
    sub_268B34CA4();
    v65 = v88;
    v66 = v89;
    v67 = v90;
    (*(v88 + 16))(v89, v61, v90);
    __swift_storeEnumTagSinglePayload(v66, 0, 1, v67);
    v102 = 0;
    memset(v101, 0, sizeof(v101));
    sub_268B34EF4();

    sub_2688C058C(v101, &unk_2802A5800, &unk_268B3CE10);
    sub_2688C058C(v66, &qword_2802A57F0, &qword_268B3DDB0);
    (*(v65 + 8))(v61, v67);
    v106 = 0;
  }

  v95(v103);
  return sub_2688C058C(v103, &unk_2802A57C0, &qword_268B3BE00);
}

void sub_268AE98EC()
{
  OUTLINED_FUNCTION_26();
  v89 = v1;
  v90 = v0;
  v91 = v2;
  v92 = v3;
  v87 = v4;
  v6 = v5;
  v85 = sub_268B367A4();
  v7 = OUTLINED_FUNCTION_1(v85);
  v84 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v83 = v12 - v11;
  OUTLINED_FUNCTION_9();
  v13 = sub_268B37A54();
  v14 = OUTLINED_FUNCTION_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_20_0();
  v93 = v19 - v20;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v22 = __swift_project_value_buffer(v13, qword_2802CDA10);
  v23 = *(v16 + 16);
  v23(v0, v22, v13);
  v24 = sub_268B37A34();
  v25 = sub_268B37ED4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_279(v26);
    _os_log_impl(&dword_2688BB000, v24, v25, "SkipContentHandleIntentStrategy.makeFailureHandlingIntentResponse()", v6, 2u);
    OUTLINED_FUNCTION_12();
  }

  v27 = *(v16 + 8);
  v27(v0, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C70, &unk_268B3F600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3BBC0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000268B572E0;
  v29 = OBJC_IVAR___SkipContentIntentResponse_code;
  swift_beginAccess();
  v86 = v29;
  v94 = *&v6[v29];
  sub_268B38404();
  v88 = v6;
  v30 = sub_268B36E94();
  v32 = v31;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v30;
  *(inited + 56) = v32;
  sub_268B37B84();
  sub_268B36754();
  v33 = sub_268B36734();
  if (!v33)
  {
    v33 = sub_268B36744();
  }

  v34 = v33;
  v23(v93, v22, v13);

  v35 = sub_268B37A34();
  v36 = sub_268B37ED4();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = OUTLINED_FUNCTION_172_0();
    v38 = v34;
    v39 = OUTLINED_FUNCTION_173_0();
    v94 = v39;
    *v37 = 136315138;
    sub_268B36714();
    v82 = v27;
    v27 = v83;
    sub_268B36B14();

    v40 = sub_268B36784();
    v42 = v41;
    (*(v84 + 8))(v83, v85);
    v43 = sub_26892CDB8(v40, v42, &v94);

    *(v37 + 4) = v43;
    _os_log_impl(&dword_2688BB000, v35, v36, "SkipContentHandleIntentStrategy.makeFailureHandlingIntentResponse cached responseMode = %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    v34 = v38;
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_20_2();

    v82(v93, v13);
  }

  else
  {

    v27(v93, v13);
  }

  OUTLINED_FUNCTION_17_12();
  v44 = swift_allocObject();
  v44[2] = v34;
  v44[3] = v87;
  v44[4] = v92;
  v44[5] = v88;
  v44[6] = v89;
  v44[7] = v90;
  v44[8] = v91;
  v45 = *&v88[v86];
  if ((v45 - 102) < 2)
  {
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v46 = v88;
    v47 = v89;
    swift_retain_n();
    v48 = v46;
    v49 = v47;
    v50 = v48;
    v51 = v49;
    v52 = v50;
    v53 = v51;
    OUTLINED_FUNCTION_44_10();
    sub_268AEAAAC(v54, v55, v56, v57, v58, v59, v60, v61, v82, v83);
  }

  else
  {
    if (v45 != 101 && v45 != 100)
    {
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      v66 = v88;
      v67 = v89;
      swift_retain_n();
      v68 = v66;
      v69 = v67;
      v70 = v68;
      v71 = v69;
      v72 = v70;
      v73 = v71;
      OUTLINED_FUNCTION_44_10();
      sub_268AEB1B4(v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);

      goto LABEL_17;
    }

    v62 = swift_allocObject();
    OUTLINED_FUNCTION_93_8(v62);
    OUTLINED_FUNCTION_24_9();
    v63 = swift_allocObject();
    OUTLINED_FUNCTION_37_17(v63);

    v64 = v89;
    v65 = v27;

    sub_268B36DE4();
  }

LABEL_17:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268AEA108(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, char *a5, void *a6, uint64_t a7)
{
  v83 = a3;
  v71 = a7;
  v72 = a6;
  v74 = a5;
  v75 = a4;
  v82 = a2;
  v76 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v73 = &v68 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v69 = &v68 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A57B0, &unk_268B3CE00);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v68 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v80 = &v68 - v17;
  v81 = sub_268B34E24();
  v79 = *(v81 - 8);
  v18 = *(v79 + 64);
  MEMORY[0x28223BE20](v81);
  v77 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_268B37A54();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v68 - v27;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v29 = *(*(v78 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v78);
  v70 = &v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v68 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v68 - v35;
  sub_2688F1FA4(v76, v28, &qword_2802A6300, &unk_268B3BD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2688C058C(v28, &qword_2802A6300, &unk_268B3BD80);
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v37 = __swift_project_value_buffer(v20, qword_2802CDA10);
    (*(v21 + 16))(v24, v37, v20);
    v38 = sub_268B37A34();
    v39 = sub_268B37EE4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2688BB000, v38, v39, "SkipContentHandleIntentStrategy.makeFailureHandlingIntentResponse Unable to generate failure dialog", v40, 2u);
      MEMORY[0x26D6266E0](v40, -1, -1);
    }

    (*(v21 + 8))(v24, v20);
    sub_2688C2ECC();
    v41 = swift_allocError();
    *v42 = -77;
    v84[0] = v41;
    v85 = 1;
    v82(v84);
    return sub_2688C058C(v84, &unk_2802A57C0, &qword_268B3BE00);
  }

  else
  {
    sub_2689186C8(v28, v36);
    sub_268B36E84();
    if (!v44)
    {
      v45 = OBJC_IVAR___SkipContentIntentResponse_code;
      v46 = v75;
      swift_beginAccess();
      v86 = *(v46 + v45);
      sub_268B38404();
      sub_268947F08();
    }

    v47 = v72;
    v48 = v68;
    v49 = __swift_project_boxed_opaque_existential_1(v72 + 18, v72[21]);
    (*(v79 + 104))(v77, *MEMORY[0x277D5BC00], v81);
    v75 = v36;
    sub_2688F1FA4(v36, v34, &unk_2802A56E0, &unk_268B3CDF0);

    v50 = sub_268B350F4();
    v76 = *(v50 - 8);
    v51 = v80;
    (*(v76 + 32))(v80, v34, v50);
    __swift_storeEnumTagSinglePayload(v51, 0, 1, v50);
    v52 = sub_268B34B94();
    v53 = v69;
    __swift_storeEnumTagSinglePayload(v69, 1, 1, v52);
    v54 = *v49;
    sub_2688F1FA4(v51, v48, &unk_2802A57B0, &unk_268B3CE00);
    if (__swift_getEnumTagSinglePayload(v48, 1, v50) == 1)
    {
      sub_2688C058C(v48, &unk_2802A57B0, &unk_268B3CE00);
    }

    else
    {
      sub_268B350B4();
      (*(v76 + 8))(v48, v50);
    }

    v55 = v77;
    v56 = v74;
    sub_2688E36A0();

    sub_2688C058C(v53, &unk_2802A62B0, &unk_268B3BDF0);
    sub_2688C058C(v80, &unk_2802A57B0, &unk_268B3CE00);
    (*(v79 + 8))(v55, v81);
    v57 = __swift_project_boxed_opaque_existential_1(v47 + 18, v47[21]);
    sub_2688C2ECC();
    v58 = swift_allocError();
    *v59 = 123;
    v60 = *v57;
    sub_26894B450();

    v61 = v47[36];
    v62 = v47[37];
    __swift_project_boxed_opaque_existential_1(v47 + 33, v61);
    v63 = v75;
    v64 = v70;
    sub_2688F1FA4(v75, v70, &unk_2802A56E0, &unk_268B3CDF0);
    v65 = *(v64 + *(v78 + 48));
    v66 = v73;
    sub_268A82B50(v56, v73);
    v67 = sub_268B35044();
    __swift_storeEnumTagSinglePayload(v66, 0, 1, v67);
    (*(v62 + 40))(v64, v65, v66, v82, v83, v61, v62);

    sub_2688C058C(v66, &qword_2802A57F0, &qword_268B3DDB0);
    sub_2688C058C(v63, &unk_2802A56E0, &unk_268B3CDF0);
    return (*(v76 + 8))(v64, v50);
  }
}

uint64_t sub_268AEA9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  v16 = *(a3 + 24);
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;

  v17 = *(a4 + 56);
  return a8(a1, a2, a5, a6, a7);
}

uint64_t sub_268AEAAAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10)
{
  v55 = a3;
  v56 = a2;
  v61 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v15 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v59 = (&v54 - v16);
  v17 = sub_268B37A54();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v62 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v54 - v22;
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v58 = a5;
  v24[4] = a6;
  v24[5] = a7;
  v24[6] = a8;
  v24[7] = a9;
  v60 = v24;
  v24[8] = a10;
  v25 = qword_2802A4F30;
  v65 = a4;

  v68 = a6;

  v64 = a7;
  v63 = a8;
  v67 = a9;

  v66 = a10;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v17, qword_2802CDA10);
  v27 = *(v18 + 16);
  v27(v23, v26, v17);
  v28 = sub_268B37A34();
  v29 = sub_268B37ED4();
  v30 = v18;
  if (os_log_type_enabled(v28, v29))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2688BB000, v28, v29, "SkipContentHandleIntentStrategy.callIntentHandledFailedUnsupportedCommand()", v31, 2u);
    MEMORY[0x26D6266E0](v31, -1, -1);
  }

  v32 = *(v30 + 8);
  v32(v23, v17);
  v33 = v61;
  sub_268AEB8BC(&v69);
  if (v71 == 2)
  {
    v27(v62, v26, v17);
    v34 = sub_268B37A34();
    v35 = sub_268B37EE4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2688BB000, v34, v35, "Could not create skip error params", v36, 2u);
      MEMORY[0x26D6266E0](v36, -1, -1);
    }

    v32(v62, v17);
    sub_2688C2ECC();
    v37 = swift_allocError();
    *v38 = 124;
    v39 = v59;
    *v59 = v37;
    swift_storeEnumTagMultiPayload();
    v40 = sub_268B36754();
    MEMORY[0x28223BE20](v40);
    v41 = v58;
    *(&v54 - 8) = v39;
    *(&v54 - 7) = v41;
    v42 = v64;
    *(&v54 - 6) = v68;
    *(&v54 - 5) = v42;
    v43 = v63;
    v44 = v67;
    *(&v54 - 4) = v63;
    *(&v54 - 3) = v44;
    *(&v54 - 2) = v66;
    goto LABEL_14;
  }

  v74[2] = v69;
  v75 = v70;
  v76 = v71;
  v77 = v72;
  v78 = v73;
  *v79 = v74[0];
  *&v79[13] = *(v74 + 13);
  v45 = [v33 direction];
  if (v45 == 1)
  {
    v47 = *(v55 + 56);
    sub_268AC6488();
    sub_2688C058C(&v69, &qword_2802A70C8, qword_268B43DE0);
    v42 = v64;
    v43 = v63;
  }

  else
  {
    v42 = v64;
    v43 = v63;
    if (v45 != 2)
    {
      sub_2688C058C(&v69, &qword_2802A70C8, qword_268B43DE0);
      sub_2688C2ECC();
      v48 = swift_allocError();
      *v49 = 125;
      v39 = v59;
      *v59 = v48;
      swift_storeEnumTagMultiPayload();
      v50 = sub_268B36754();
      MEMORY[0x28223BE20](v50);
      v51 = v58;
      *(&v54 - 8) = v39;
      *(&v54 - 7) = v51;
      *(&v54 - 6) = v68;
      *(&v54 - 5) = v42;
      v52 = v67;
      *(&v54 - 4) = v43;
      *(&v54 - 3) = v52;
      *(&v54 - 2) = v66;
LABEL_14:
      sub_268B366F4();
      sub_2688C058C(v39, &qword_2802A6300, &unk_268B3BD80);
      goto LABEL_15;
    }

    v46 = *(v55 + 56);
    sub_268AC64DC();
    sub_2688C058C(&v69, &qword_2802A70C8, qword_268B43DE0);
  }

LABEL_15:
}

uint64_t sub_268AEB1B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10)
{
  v55 = a3;
  v56 = a2;
  v61 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  v15 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v59 = (&v54 - v16);
  v17 = sub_268B37A54();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v62 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v54 - v22;
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v58 = a5;
  v24[4] = a6;
  v24[5] = a7;
  v24[6] = a8;
  v24[7] = a9;
  v60 = v24;
  v24[8] = a10;
  v25 = qword_2802A4F30;
  v65 = a4;

  v68 = a6;

  v64 = a7;
  v63 = a8;
  v67 = a9;

  v66 = a10;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v17, qword_2802CDA10);
  v27 = *(v18 + 16);
  v27(v23, v26, v17);
  v28 = sub_268B37A34();
  v29 = sub_268B37ED4();
  v30 = v18;
  if (os_log_type_enabled(v28, v29))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2688BB000, v28, v29, "SkipContentHandleIntentStrategy.callGenericIntentHandledFailed()", v31, 2u);
    MEMORY[0x26D6266E0](v31, -1, -1);
  }

  v32 = *(v30 + 8);
  v32(v23, v17);
  v33 = v61;
  sub_268AEB8BC(&v69);
  if (v71 == 2)
  {
    v27(v62, v26, v17);
    v34 = sub_268B37A34();
    v35 = sub_268B37EE4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2688BB000, v34, v35, "Could not create skip error params", v36, 2u);
      MEMORY[0x26D6266E0](v36, -1, -1);
    }

    v32(v62, v17);
    sub_2688C2ECC();
    v37 = swift_allocError();
    *v38 = 126;
    v39 = v59;
    *v59 = v37;
    swift_storeEnumTagMultiPayload();
    v40 = sub_268B36754();
    MEMORY[0x28223BE20](v40);
    v41 = v58;
    *(&v54 - 8) = v39;
    *(&v54 - 7) = v41;
    v42 = v64;
    *(&v54 - 6) = v68;
    *(&v54 - 5) = v42;
    v43 = v63;
    v44 = v67;
    *(&v54 - 4) = v63;
    *(&v54 - 3) = v44;
    *(&v54 - 2) = v66;
    goto LABEL_14;
  }

  v74[2] = v69;
  v75 = v70;
  v76 = v71;
  v77 = v72;
  v78 = v73;
  *v79 = v74[0];
  *&v79[13] = *(v74 + 13);
  v45 = [v33 direction];
  if (v45 == 1)
  {
    v47 = *(v55 + 56);
    sub_268ABAEA4();
    sub_2688C058C(&v69, &qword_2802A70C8, qword_268B43DE0);
    v42 = v64;
    v43 = v63;
  }

  else
  {
    v42 = v64;
    v43 = v63;
    if (v45 != 2)
    {
      sub_2688C058C(&v69, &qword_2802A70C8, qword_268B43DE0);
      sub_2688C2ECC();
      v48 = swift_allocError();
      *v49 = 127;
      v39 = v59;
      *v59 = v48;
      swift_storeEnumTagMultiPayload();
      v50 = sub_268B36754();
      MEMORY[0x28223BE20](v50);
      v51 = v58;
      *(&v54 - 8) = v39;
      *(&v54 - 7) = v51;
      *(&v54 - 6) = v68;
      *(&v54 - 5) = v42;
      v52 = v67;
      *(&v54 - 4) = v43;
      *(&v54 - 3) = v52;
      *(&v54 - 2) = v66;
LABEL_14:
      sub_268B366F4();
      sub_2688C058C(v39, &qword_2802A6300, &unk_268B3BD80);
      goto LABEL_15;
    }

    v46 = *(v55 + 56);
    sub_268ABB0EC();
    sub_2688C058C(&v69, &qword_2802A70C8, qword_268B43DE0);
  }

LABEL_15:
}

void *sub_268AEB8BC@<X0>(void *a1@<X8>)
{
  LOWORD(__src[0]) = 0;
  BYTE2(__src[0]) = 0;
  __src[1] = 0;
  __src[2] = 0;
  __src[3] = 1;
  memset(&__src[4], 0, 61);
  v2 = sub_268B18100();
  if (v2)
  {
    if (sub_2688EFD0C(v2))
    {
      memcpy(__dst, &__src[1], 0x51uLL);
      sub_2688C058C(__dst, &qword_2802A5C88, qword_268B418C0);
      LODWORD(__src[1]) = 0;
      memset(&__src[2], 0, 72);
      LOBYTE(__src[11]) = 1;
      OUTLINED_FUNCTION_62_6();
      sub_268AE3BE8();
    }
  }

  memcpy(v5, __src, 0x5DuLL);
  memcpy(__dst, __src, 0x5DuLL);
  sub_268A13FC8(v5, v4);
  sub_2689E9FB8(__dst);
  return memcpy(a1, __src, 0x5DuLL);
}

uint64_t sub_268AEB9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SkipContentHandleIntentStrategy();

  return MEMORY[0x2821B9CA0](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268AEBA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SkipContentHandleIntentStrategy();

  return MEMORY[0x2821B9CA8](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268AEBAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SkipContentHandleIntentStrategy();

  return MEMORY[0x2821B9C80](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268AEBB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SkipContentHandleIntentStrategy();

  return MEMORY[0x2821B9C98](a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_268AEBC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SkipContentHandleIntentStrategy();

  return MEMORY[0x2821B9C90](a1, a2, a3, a4, a5, v13, a7);
}

id sub_268AEBCAC()
{
  if (qword_2802A50C8 != -1)
  {
    swift_once();
  }

  v1 = qword_2802CDB58;

  return v1;
}

uint64_t sub_268AEBD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SkipContentHandleIntentStrategy();

  return MEMORY[0x2821BBA28](a1, v5, a3);
}

uint64_t sub_268AEBD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SkipContentHandleIntentStrategy();

  return MEMORY[0x2821BBA20](a1, a2, v7, a4);
}

uint64_t sub_268AEBDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SkipContentHandleIntentStrategy();

  return MEMORY[0x2821BBA18](a1, a2, a3, a4, v11, a6);
}

unint64_t sub_268AEBE18(uint64_t a1)
{
  result = sub_268AEBE40();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268AEBE40()
{
  result = qword_2802A8940;
  if (!qword_2802A8940)
  {
    type metadata accessor for SkipContentHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8940);
  }

  return result;
}

void sub_268AEBE98(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268B37BC4();
  [a3 setPlaybackRouteUniqueIdentifier_];
}

void sub_268AEBEF0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268B37BC4();

  [a3 setViewId_];
}

void sub_268AEBF54(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268B37BC4();
  [a3 setApplicationBundleIdentifier_];
}

uint64_t sub_268AEBFAC(void *a1)
{
  v1 = [a1 viewId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_268B37BF4();

  return v3;
}

uint64_t sub_268AEC030()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_8Tm_1()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  OUTLINED_FUNCTION_24_9();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

uint64_t objectdestroyTm_10()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  OUTLINED_FUNCTION_17_12();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

uint64_t sub_268AEC16C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  return sub_268AEA05C();
}

uint64_t sub_268AEC1A8()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22_2(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;

  v10 = *(v1 + 24);

  v11 = *(v1 + 32);

  v12 = v1 + v5;
  v13 = sub_268B350F4();
  OUTLINED_FUNCTION_4(v13);
  (*(v14 + 8))(v12);

  v15 = *(v1 + v7 + 8);

  v16 = *(v1 + v8);

  return MEMORY[0x2821FE8E8](v1, v9 + 8, v4 | 7);
}

uint64_t sub_268AEC2E0(void *a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  return sub_268AE8D54(a1, a2 & 1, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + v8));
}

void sub_268AEC3BC()
{
  OUTLINED_FUNCTION_26();
  v73 = v0;
  v74 = v1;
  v72 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v76 = sub_268B37A54();
  v13 = OUTLINED_FUNCTION_1(v76);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_20_0();
  v20 = v18 - v19;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v71 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v71 - v25;
  v27 = OUTLINED_FUNCTION_115_2();
  v75 = v8;
  sub_268AEBEF0(v27, v28, v8);
  v29 = v4[4];
  OUTLINED_FUNCTION_59_0(v4, v4[3]);
  if (sub_268B36FB4())
  {
    v30 = v6[3];
    OUTLINED_FUNCTION_59_0(v6, v30);
    if (sub_268B34C84())
    {
      v31 = v76;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      __swift_project_value_buffer(v31, qword_2802CDA10);
      OUTLINED_FUNCTION_36_14();
      v32(v24);
      v33 = sub_268B37A34();
      v34 = sub_268B37ED4();
      if (OUTLINED_FUNCTION_115_0(v34))
      {
        v35 = OUTLINED_FUNCTION_14();
        *v35 = 0;
        _os_log_impl(&dword_2688BB000, v33, v30, "MediaControlsViewProvider#fetchSessionIDIfNeeded returning snippet", v35, 2u);
        OUTLINED_FUNCTION_132_0();
      }

      (*(v15 + 8))(v24, v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_268B3BBA0;
      v37 = v75;
      *(v36 + 32) = v75;
      v38 = v37;
      goto LABEL_21;
    }

    sub_268B36C54();
    v51 = sub_268B36C24() == v12 && v50 == v10;
    v52 = v76;
    if (v51)
    {
    }

    else
    {
      OUTLINED_FUNCTION_70_1();
      v53 = sub_268B38444();

      if ((v53 & 1) == 0)
      {

LABEL_24:
        if (qword_2802A4F30 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        __swift_project_value_buffer(v52, qword_2802CDA10);
        OUTLINED_FUNCTION_36_14();
        v56(v20);

        v57 = sub_268B37A34();
        v58 = sub_268B37F04();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = OUTLINED_FUNCTION_172_0();
          v60 = OUTLINED_FUNCTION_173_0();
          *&v78[0] = v60;
          *v59 = 136315138;
          v61 = OUTLINED_FUNCTION_70_1();
          *(v59 + 4) = sub_26892CDB8(v61, v62, v63);
          _os_log_impl(&dword_2688BB000, v57, v58, "MediaControlsViewProvider#suppressSnippetIfNeeded routeId: %s", v59, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v60);
          OUTLINED_FUNCTION_12();
          OUTLINED_FUNCTION_12();

          (*(v15 + 8))(v20, v76);
        }

        else
        {

          (*(v15 + 8))(v20, v52);
        }

        v64 = v72;
        v65 = v72[4];
        OUTLINED_FUNCTION_59_0(v72, v72[3]);
        sub_26890C900(v6, v78);
        sub_26890C900(v64, v77);
        v66 = swift_allocObject();
        sub_2688E6514(v78, (v66 + 2));
        sub_2688E6514(v77, (v66 + 7));
        v68 = v74;
        v67 = v75;
        v69 = v73;
        v66[12] = v75;
        v66[13] = v69;
        v66[14] = v68;
        v70 = v67;

        OUTLINED_FUNCTION_70_1();
        sub_268B36DF4();

        goto LABEL_30;
      }
    }

    v55 = *MEMORY[0x277D27928];
    sub_268B37BF4();
    goto LABEL_24;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v39 = v76;
  __swift_project_value_buffer(v76, qword_2802CDA10);
  OUTLINED_FUNCTION_36_14();
  v40(v26);
  v41 = v75;
  v42 = sub_268B37A34();
  v43 = sub_268B37F04();
  if (!os_log_type_enabled(v42, v43))
  {

    (*(v15 + 8))(v26, v39);
    goto LABEL_20;
  }

  v44 = OUTLINED_FUNCTION_172_0();
  v45 = OUTLINED_FUNCTION_173_0();
  *&v78[0] = v45;
  *v44 = 136315138;
  v46 = sub_268AEBFAC(v41);
  v48 = v47;

  if (v48)
  {
    v49 = sub_26892CDB8(v46, v48, v78);

    *(v44 + 4) = v49;
    _os_log_impl(&dword_2688BB000, v42, v43, "MediaControlsViewProvider#suppressSnippetIfNeeded snippet viewId: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    (*(v15 + 8))(v26, v76);
LABEL_20:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_268B3BBA0;
    *(v36 + 32) = v41;
    v54 = v41;
LABEL_21:
    v73(v36, 0);
LABEL_30:

    OUTLINED_FUNCTION_23();
    return;
  }

  __break(1u);
}

uint64_t sub_268AEC9D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  v67 = a6;
  v68 = a4;
  v64 = a3;
  v70 = sub_268B37A54();
  v65 = *(v70 - 8);
  v17 = *(v65 + 64);
  v18 = MEMORY[0x28223BE20](v70);
  v62 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v63 = &v61 - v20;
  v81[3] = type metadata accessor for DisplayContextProvider();
  v81[4] = &off_287953E00;
  v69 = a10;
  v81[0] = a10;
  sub_26890C900(a7, v80);
  sub_26890C900(a8, v79);
  v21 = a2;
  sub_26890C900(a9, v78);
  sub_26890C900(v81, v77);
  sub_26890C900(v80, v76);
  sub_26890C900(v79, v75);
  sub_26890C900(v78, v74);
  v22 = swift_allocObject();
  v23 = a5;
  v22[2] = a5;
  v24 = v67;
  v22[3] = v67;
  v22[4] = a1;
  v25 = a1;
  v72 = v21;
  v22[5] = v21;
  sub_2688E6514(v80, (v22 + 6));
  sub_2688E6514(v79, (v22 + 11));
  sub_2688E6514(v78, (v22 + 16));
  sub_2688E6514(v77, (v22 + 21));
  v26 = v68;
  v66 = a11;
  v22[26] = a11;
  v22[27] = a12;
  v71 = a12;
  if (!v26)
  {
    v42 = v62;
    sub_268B36C54();

    v43 = v24;
    v44 = v72;

    v45 = v43;
    v46 = v23;
    if (sub_268B36C24() == v25 && v47 == v44)
    {
    }

    else
    {
      v49 = v25;
      v69 = v45;
      v50 = sub_268B38444();

      if ((v50 & 1) == 0)
      {
        if (qword_2802A4F30 != -1)
        {
          swift_once();
        }

        v51 = v70;
        v52 = __swift_project_value_buffer(v70, qword_2802CDA10);
        v53 = v65;
        (*(v65 + 16))(v42, v52, v51);
        v54 = sub_268B37A34();
        v55 = sub_268B37F04();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v61 = v49;
          v58 = v57;
          v73 = v57;
          *v56 = 136446210;
          *(v56 + 4) = sub_26892CDB8(0x6C7070612E6D6F63, 0xEE00697269732E65, &v73);
          _os_log_impl(&dword_2688BB000, v54, v55, "Setting sash applicationBundleIdentifier to: %{public}s", v56, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v58);
          MEMORY[0x26D6266E0](v58, -1, -1);
          MEMORY[0x26D6266E0](v56, -1, -1);

          (*(v53 + 8))(v62, v70);
        }

        else
        {

          (*(v53 + 8))(v42, v70);
        }

        sub_268AEBF54(0x6C7070612E6D6F63, 0xEE00697269732E65, v46);
        [v69 setSash_];
        goto LABEL_17;
      }
    }

    sub_268B36C44();
    v59 = swift_allocObject();
    strcpy((v59 + 16), "com.apple.siri");
    *(v59 + 31) = -18;
    *(v59 + 32) = sub_268AED8F4;
    *(v59 + 40) = v22;

    sub_268B36C34();

    goto LABEL_20;
  }

  v27 = v26;
  v61 = v25;
  v28 = qword_2802A4F30;

  v69 = v24;
  v29 = v23;
  if (v28 != -1)
  {
    swift_once();
  }

  v30 = v70;
  v31 = __swift_project_value_buffer(v70, qword_2802CDA10);
  v32 = v65;
  v33 = v63;
  (*(v65 + 16))(v63, v31, v30);
  v34 = v27;

  v35 = sub_268B37A34();
  v36 = sub_268B37F04();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v67 = v29;
    v38 = v32;
    v39 = v37;
    v40 = swift_slowAlloc();
    v73 = v40;
    *v39 = 136446210;
    v41 = v64;
    *(v39 + 4) = sub_26892CDB8(v64, v34, &v73);
    _os_log_impl(&dword_2688BB000, v35, v36, "Setting sash applicationBundleIdentifier to: %{public}s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    MEMORY[0x26D6266E0](v40, -1, -1);
    MEMORY[0x26D6266E0](v39, -1, -1);

    (*(v38 + 8))(v33, v70);
    v29 = v67;
  }

  else
  {

    (*(v32 + 8))(v33, v30);
    v41 = v64;
  }

  sub_268AEBF54(v41, v34, v29);
  [v69 setSash_];
LABEL_17:
  sub_268AEC3BC();
LABEL_20:

  __swift_destroy_boxed_opaque_existential_0Tm(v74);
  __swift_destroy_boxed_opaque_existential_0Tm(v75);
  __swift_destroy_boxed_opaque_existential_0Tm(v76);
  return __swift_destroy_boxed_opaque_existential_0Tm(v81);
}

void sub_268AED0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void (*a23)(void, void), uint64_t a24)
{
  OUTLINED_FUNCTION_26();
  v94 = v25;
  v95 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v96 = v33;
  v97 = v34;
  v98 = a24;
  v99 = a23;
  v35 = sub_268B37A54();
  v36 = OUTLINED_FUNCTION_1(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_20_0();
  v43 = v41 - v42;
  v45 = MEMORY[0x28223BE20](v44);
  v47 = &v89 - v46;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_15();
  v108[3] = type metadata accessor for DisplayContextProvider();
  v108[4] = &off_287953E00;
  v108[0] = a22;
  if (v30)
  {
    v48 = qword_2802A4F30;

    if (v48 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_12_27(v35, qword_2802CDA10);
    v49(v24);
    v50 = sub_268B37A34();
    v51 = sub_268B37ED4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = OUTLINED_FUNCTION_14();
      *v52 = 0;
      _os_log_impl(&dword_2688BB000, v50, v51, "Not rendering the controls platter due to enabled suppressSnippets user default", v52, 2u);
      OUTLINED_FUNCTION_12();
    }

    (*(v38 + 8))(v24, v35);
    goto LABEL_24;
  }

  v93 = v32;
  v53 = v28[4];
  OUTLINED_FUNCTION_59_0(v28, v28[3]);

  if (sub_268B34D04())
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_24_19();
  if (sub_268B34D24())
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_24_19();
  if (sub_268B34CF4())
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_24_19();
  if (sub_268B34CB4())
  {
    goto LABEL_24;
  }

  v54 = v97;
  if (!v97)
  {
    goto LABEL_24;
  }

  sub_268B37724();
  OUTLINED_FUNCTION_109_1();
  v56 = v56 && v55 == v54;
  if (v56)
  {

    goto LABEL_24;
  }

  v57 = sub_268B38444();

  if (v57)
  {
LABEL_24:
    v99(MEMORY[0x277D84F90], 0);
    goto LABEL_25;
  }

  v89 = a21;
  v58 = [objc_allocWithZone(MEMORY[0x277D4C490]) init];
  sub_268B36C54();
  sub_268B36C24();
  OUTLINED_FUNCTION_109_1();
  if (v56 && v59 == v54)
  {
  }

  else
  {
    v61 = sub_268B38444();

    if ((v61 & 1) == 0)
    {
      sub_268AEBE98(v96, v54, v58);
    }
  }

  [v58 setPlaybackRouteUniqueIdentifierIsEncrypted_];
  sub_2688EA03C(0, &qword_2802A8948, 0x277D47200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_268B3BBA0;
  *(v62 + 32) = v58;
  v92 = v58;
  v91 = sub_268B37EB4();

  v90 = [objc_allocWithZone(MEMORY[0x277D47B08]) init];
  sub_26890C900(v28, v107);
  sub_26890C900(v95, v106);
  v63 = v89;
  sub_26890C900(v89, v105);
  sub_26890C900(v108, v103);
  OUTLINED_FUNCTION_24_19();
  if ((sub_268B34C84() & 1) == 0)
  {
    goto LABEL_41;
  }

  sub_2688EA03C(0, &qword_2802A5C90, 0x277D85C98);
  sub_26890C900(v63, v100);
  OUTLINED_FUNCTION_24_9();
  v64 = swift_allocObject();
  sub_2688E6514(v100, v64 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
  sub_268B38024();

  v65 = v102;
  if (v102 < 2)
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_12_27(v35, qword_2802CDA10);
    v66(v43);
    v67 = sub_268B37A34();
    sub_268B37ED4();
    OUTLINED_FUNCTION_149_0();
    v69 = os_log_type_enabled(v67, v68);
    v70 = v97;
    if (v69)
    {
      *OUTLINED_FUNCTION_14() = 0;
      OUTLINED_FUNCTION_119_2(&dword_2688BB000, v71, v72, "MediaControlsViewProvider#makeAceViewsForHandle no nowPlayingBundleID");
      OUTLINED_FUNCTION_12();
    }

    v73 = *(v38 + 8);
    v74 = OUTLINED_FUNCTION_46_1();
    v75(v74);
    v76 = __swift_project_boxed_opaque_existential_1(v103, v104);
    OUTLINED_FUNCTION_69_9(v76);
    v89 = v105;
    v77 = v96;
    v78 = v70;
    goto LABEL_42;
  }

  v79 = v101;
  sub_26890C900(v108, v100);
  OUTLINED_FUNCTION_17_12();
  v80 = swift_allocObject();
  sub_2688E6514(v100, v80 + 16);
  *(v80 + 56) = v79;
  *(v80 + 64) = v65;
  sub_268B38024();

  if (LOBYTE(v100[0]) == 2 || (v100[0] & 1) == 0)
  {
LABEL_41:
    v86 = __swift_project_boxed_opaque_existential_1(v103, v104);
    OUTLINED_FUNCTION_69_9(v86);
    v89 = v105;
    v77 = v96;
    v78 = v97;
LABEL_42:
    v88 = v90;
    v87 = v91;
    sub_268AEC9D8(v77, v78, v94, v93, v90, v91, v107, v106, v89, v90, v91, v92);

    OUTLINED_FUNCTION_113_3();
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_113_3();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  OUTLINED_FUNCTION_12_27(v35, qword_2802CDA10);
  v81(v47);
  v82 = sub_268B37A34();
  sub_268B37ED4();
  OUTLINED_FUNCTION_149_0();
  if (os_log_type_enabled(v82, v83))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_119_2(&dword_2688BB000, v84, v85, "MediaControlsViewProvider#makeAceViewsForHandle app is visible on screen. Not returning now snippet");
    OUTLINED_FUNCTION_12();
  }

  (*(v38 + 8))(v47, v35);
  v99(MEMORY[0x277D84F90], 0);

LABEL_25:
  __swift_destroy_boxed_opaque_existential_0Tm(v108);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268AED800()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  OUTLINED_FUNCTION_24_9();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_268AED83C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_17_12();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_268AED878(uint64_t (*a1)(char *))
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  return sub_2689AE82C(a1);
}

uint64_t sub_268AED884()
{
  v1 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 48));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 88));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 128));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 168));
  v2 = *(v0 + 216);

  return MEMORY[0x2821FE8E8](v0, 224, 7);
}

uint64_t sub_268AED938()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_268AED978()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  v1 = *(v0 + 112);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_268AED9DC()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22_2(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v1 + 24);

  v9 = *(v1 + 32);

  v10 = v1 + v5;
  v11 = sub_268B350F4();
  OUTLINED_FUNCTION_4(v11);
  (*(v12 + 8))(v10);

  v13 = *(v1 + v7 + 8);

  return MEMORY[0x2821FE8E8](v1, v7 + 16, v4 | 7);
}

uint64_t sub_268AEDAEC(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_268AE8264(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_268AEDBA0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_268AEDC08()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = *(v0 + 72);
  v10 = *(v0 + 80);
  return sub_268AE75C0();
}

uint64_t OUTLINED_FUNCTION_2_37(uint64_t a1, uint64_t a2)
{
  result = __swift_project_value_buffer(v2, a2);
  v5 = *(v3 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_31(uint64_t a1, uint64_t a2)
{
  result = __swift_project_value_buffer(v2, a2);
  v5 = *(v3 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_33@<X0>(char a1@<W8>)
{
  *(v2 + 72) = v1;
  *(v2 + 80) = a1;
  return v3 - 112;
}

uint64_t OUTLINED_FUNCTION_12_27(uint64_t a1, uint64_t a2)
{
  result = __swift_project_value_buffer(a1, a2);
  v4 = *(v2 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_24()
{

  return sub_268B38284();
}

uint64_t OUTLINED_FUNCTION_19_19()
{

  return sub_268B37A54();
}

uint64_t OUTLINED_FUNCTION_20_21()
{
  result = v0;
  v3 = *(v1 - 96);
  v4 = *(v1 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_23_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 - 96) = a3;
  *(v4 - 88) = a4;

  return sub_268B37A54();
}