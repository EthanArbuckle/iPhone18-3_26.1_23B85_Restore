void sub_267BE20E8()
{
  v1 = *v0;
  sub_267BE2020();
  *v0 = v2;
}

uint64_t sub_267BE2128(uint64_t a1)
{
  v2 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  sub_267BE20E8();
  v3 = (a1 + 32);
  v4 = v9;
  if (v2)
  {
    while (1)
    {
      v8 = *v3;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B5F0, &unk_267F0C690);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B50, &qword_267EFEFF0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v5 = *(v9 + 16);
      if (v5 >= *(v9 + 24) >> 1)
      {
        sub_267BE20E8();
      }

      *(v9 + 16) = v5 + 1;
      *(v9 + 8 * v5 + 32) = v7;
      ++v3;
      if (!--v2)
      {
        return v4;
      }
    }

    return 0;
  }

  return v4;
}

uint64_t sub_267BE2268(uint64_t a1)
{
  v4[0] = MEMORY[0x277D84F90];
  if (sub_267BAF0DC(MEMORY[0x277D84F90]))
  {
    sub_267E6E8F0(MEMORY[0x277D84F90]);
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v4[1] = v2;
  sub_267BE22E4(a1, v4);

  return v4[0];
}

void sub_267BE22E4(uint64_t a1, void *a2)
{
  v4 = sub_267BAF0DC(a1);
  v5 = 0;
  v6 = a1 & 0xC000000000000001;
  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = a1;
  v28 = a2;
  v29 = a1 + 32;
  v26 = a1 & 0xC000000000000001;
  v27 = v4;
  v25 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v5 != v4)
  {
    if (v6)
    {
      v8 = MEMORY[0x26D609870](v5, v24);
    }

    else
    {
      if (v5 >= *(v7 + 16))
      {
        goto LABEL_24;
      }

      v8 = *(v29 + 8 * v5);
    }

    v9 = v8;
    if (__OFADD__(v5++, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      return;
    }

    v11 = a2[1];
    if ((v11 & 0xC000000000000001) != 0)
    {
      if (v11 < 0)
      {
        v12 = a2[1];
      }

      v13 = v8;
      v14 = sub_267EF9AA8();

      if ((v14 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (*(v11 + 16))
      {
        sub_267BA9F38(0, &qword_28022A350, 0x277CD3DE0);
        v15 = *(v11 + 40);
        v16 = sub_267EF9808();
        v17 = ~(-1 << *(v11 + 32));
        while (1)
        {
          v18 = v16 & v17;
          if (((*(v11 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
          {
            break;
          }

          v19 = *(*(v11 + 48) + 8 * v18);
          v20 = sub_267EF9818();

          v16 = v18 + 1;
          if (v20)
          {

            v4 = v27;
            a2 = v28;
            v7 = v25;
            v6 = v26;
            goto LABEL_2;
          }
        }

        v4 = v27;
        a2 = v28;
        v7 = v25;
        v6 = v26;
      }

LABEL_18:
      v21 = v9;
      MEMORY[0x26D608F90]();
      if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_267EF9328();
      }

      sub_267EF9368();
      v22 = v21;
      sub_267BE2754(&v30, v22);
      v23 = v30;
    }
  }
}

uint64_t sub_267BE24FC(void *a1, void *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
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

    v17 = sub_267EF9A78();

    if (v17)
    {

      sub_267BA9F38(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v35;
    }

    else
    {
      result = sub_267EF9A68();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_267D304C0(v15, result + 1, a5, a6, a3, a4);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_267D30FF8(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_267D311A0(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_267BA9F38(0, a3, a4);
    v19 = *(v14 + 40);
    sub_267EF9808();
    v20 = *(v14 + 32);
    OUTLINED_FUNCTION_16_18();
    v23 = ~v22;
    while (1)
    {
      v24 = v21 & v23;
      if (((*(v14 + 56 + (((v21 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v23)) & 1) == 0)
      {
        v30 = *v11;
        swift_isUniquelyReferenced_nonNull_native();
        v36 = *v11;
        v31 = a2;
        sub_267BE2778();
        *v11 = v36;
        *a1 = v31;
        return 1;
      }

      v25 = *(*(v14 + 48) + 8 * v24);
      v26 = sub_267EF9818();

      if (v26)
      {
        break;
      }

      v21 = v24 + 1;
    }

    v32 = *(*(v14 + 48) + 8 * v24);
    *a1 = v32;
    v33 = v32;
    return 0;
  }

  return result;
}

void sub_267BE2778()
{
  OUTLINED_FUNCTION_10_25();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *(*v0 + 16);
  v13 = *(*v0 + 24);
  if (v13 <= v12 || (v1 & 1) == 0)
  {
    if (v1)
    {
      sub_267D30FF8(v12 + 1, v2, v3);
      goto LABEL_8;
    }

    if (v13 <= v12)
    {
      sub_267BE5768();
LABEL_8:
      v14 = *v0;
      v15 = *(*v0 + 40);
      sub_267EF9808();
      v16 = *(v14 + 32);
      OUTLINED_FUNCTION_16_18();
      v19 = ~v18;
      while (1)
      {
        v9 = v17 & v19;
        if (((*(v14 + 56 + (((v17 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v19)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_267BA9F38(0, v7, v5);
        v20 = *(*(v14 + 48) + 8 * v9);
        v21 = sub_267EF9818();

        if (v21)
        {
          goto LABEL_15;
        }

        v17 = v9 + 1;
      }
    }

    sub_267D31CEC(v2, v3);
  }

LABEL_12:
  v22 = *v0;
  *(*v0 + 8 * (v9 >> 6) + 56) |= 1 << v9;
  *(*(v22 + 48) + 8 * v9) = v11;
  v23 = *(v22 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
LABEL_15:
    sub_267EF9F18();
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v25;
    OUTLINED_FUNCTION_9_28();
  }
}

uint64_t sub_267BE28D0(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_267EF9028();

  return v4;
}

uint64_t sub_267BE2930(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_22(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_267BE2990(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_22(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

void sub_267BE29F0()
{
  OUTLINED_FUNCTION_59_5();
  OUTLINED_FUNCTION_12_8();
  if (v7)
  {
    OUTLINED_FUNCTION_2_21();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_18_10();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_24();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_24_4(v8);
  if (v3)
  {
    OUTLINED_FUNCTION_50_6(v11, v12, v13, v14, v15, v16);
    v4 = 40;
    v17 = swift_allocObject();
    v18 = _swift_stdlib_malloc_size(v17);
    OUTLINED_FUNCTION_41_5((v18 - 32) / 40);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_48_5();
  if (v1)
  {
    if (v17 != v0 || v5 + 40 * v2 <= v4)
    {
      v20 = OUTLINED_FUNCTION_68_0();
      memmove(v20, v21, v22);
    }

    v0[2] = 0;
  }

  else
  {
    v23 = OUTLINED_FUNCTION_19();
    __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
    OUTLINED_FUNCTION_25_9();
  }

  OUTLINED_FUNCTION_60_2();
}

uint64_t sub_267BE2AF4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_267BE2B3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_22(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_267BE2B94(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_23();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_0();
  v15 = v14 - v13;
  sub_267BE2C9C();
  v16 = *(*a2 + 16);
  sub_267BE2D38(v16);
  (*(v9 + 16))(v15, a1, a3);
  sub_267BE2D98(v16, v15, a2, a3, a4);
  return (*(v9 + 8))(a1, a3);
}

void sub_267BE2C9C()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v3 = *(v1 + 16);
    sub_267BE29F0();
    *v0 = v4;
  }
}

uint64_t sub_267BE2D08()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

void sub_267BE2D38(uint64_t a1)
{
  if (a1 + 1 > *(*v1 + 24) >> 1)
  {
    sub_267BE29F0();
    *v1 = v2;
  }
}

uint64_t sub_267BE2D98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_267B9A5E8(&v12, v10 + 40 * a1 + 32);
}

void *sub_267BE2E30(void *a1)
{
  if (qword_280228818 != -1)
  {
LABEL_116:
    OUTLINED_FUNCTION_0();
  }

  v2 = sub_267EF8A08();
  __swift_project_value_buffer(v2, qword_280240FB0);

  v3 = sub_267EF89F8();
  v4 = sub_267EF95D8();

  v123 = a1;
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *&__src[0] = v6;
    *v5 = 136315138;
    v8 = a1[2];
    v9 = MEMORY[0x277D84F90];
    if (v8)
    {
      v119 = v6;
      v121 = v5;
      v131[0] = MEMORY[0x277D84F90];
      sub_267BC7934(0, v8, 0);
      v9 = v131[0];
      v10 = a1 + 4;
      do
      {
        v11 = v10[4];
        __swift_project_boxed_opaque_existential_0(v10, v10[3]);
        OUTLINED_FUNCTION_23();
        v13 = *(v12 + 64);
        MEMORY[0x28223BE20](v14);
        OUTLINED_FUNCTION_0_0();
        (*(v17 + 16))(v16 - v15);
        v18 = *(v11 + 8);
        v19 = sub_267EF90A8();
        v21 = v20;
        v131[0] = v9;
        v23 = *(v9 + 16);
        v22 = *(v9 + 24);
        if (v23 >= v22 >> 1)
        {
          v25 = OUTLINED_FUNCTION_8_2(v22);
          sub_267BC7934(v25, v23 + 1, 1);
          v9 = v131[0];
        }

        *(v9 + 16) = v23 + 1;
        v24 = v9 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v21;
        v10 += 5;
        --v8;
      }

      while (v8);
      v5 = v121;
      a1 = v123;
      v7 = v119;
    }

    v26 = MEMORY[0x26D608FD0](v9, MEMORY[0x277D837D0]);
    v28 = v27;

    v29 = sub_267BA33E8(v26, v28, __src);

    *(v5 + 4) = v29;
    _os_log_impl(&dword_267B93000, v3, v4, "#ConversationStateBuilder Attempting to group eligible ReactionComponents. Component types: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v30 = 0;
  v31 = 0;
  v32 = a1[2];
  v33 = (a1 + 4);
  v34 = -1;
  v116 = MEMORY[0x277D84F90];
  while (1)
  {
    v35 = 0uLL;
    v36 = v32;
    v37 = 0uLL;
    v38 = 0uLL;
    if (v30 != v32)
    {
      if (v30 >= v32)
      {
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
        goto LABEL_116;
      }

      v36 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_110;
      }

      *&__src[0] = v30;
      sub_267B9AFEC(&v33[40 * v30], __src + 8);
      v35 = __src[0];
      v37 = __src[1];
      v38 = __src[2];
    }

    v132[0] = v35;
    v132[1] = v37;
    v132[2] = v38;
    if (!v38)
    {
      break;
    }

    v125 = v35;
    sub_267BE58F4((v132 + 8), v130);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    if (swift_dynamicCast())
    {
      memcpy(v131, __src, 0x71uLL);
      if (v34 == -1)
      {
        v41 = __OFADD__(v31++, 1);
        if (v41)
        {
          goto LABEL_114;
        }

        v57 = sub_267EF89F8();
        v58 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_27(v58))
        {
          a1 = OUTLINED_FUNCTION_35_0();
          *a1 = 134218240;
          v34 = v125;
          *(a1 + 4) = v125;
          *(a1 + 6) = 2048;
          *(a1 + 14) = v31;
          OUTLINED_FUNCTION_10_22(&dword_267B93000, v57, v3, "#ConversationStateBuilder startIndex: %ld, reactionCounter: %ld");
          OUTLINED_FUNCTION_40_0();
          sub_267C77240(v131);
        }

        else
        {
          sub_267C77240(v131);

          v34 = v125;
        }

        v30 = v36;
      }

      else
      {
        v39 = v125 - 1;
        if (__OFSUB__(v125, 1))
        {
          goto LABEL_111;
        }

        if (v39 >= v32)
        {
          goto LABEL_112;
        }

        sub_267B9AFEC(&v33[40 * v39], &v127);
        if (swift_dynamicCast())
        {
          memcpy(v128, v129, 0x71uLL);
          a1 = v128[11];
          v3 = v131[11];
          if (!v128[11])
          {
            if (!v131[11])
            {
              goto LABEL_24;
            }

LABEL_46:
            sub_267C77240(v128);
            goto LABEL_47;
          }

          if (!v131[11])
          {
            goto LABEL_46;
          }

          sub_267CF6EB4();
          v3 = v3;
          a1 = a1;
          v40 = sub_267EF9818();

          if ((v40 & 1) == 0)
          {
            goto LABEL_46;
          }

LABEL_24:
          v41 = __OFADD__(v31++, 1);
          if (v41)
          {
            goto LABEL_115;
          }

          v42 = sub_267EF89F8();
          v43 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_27(v43))
          {
            v44 = OUTLINED_FUNCTION_35_0();
            OUTLINED_FUNCTION_1_32(v44);
            *(v45 + 14) = v31;
            OUTLINED_FUNCTION_10_22(&dword_267B93000, v42, v3, "#ConversationStateBuilder encountered consecutive reactions with same referencedMessage. startIndex: %ld, reactionCounter: %ld");
            OUTLINED_FUNCTION_40_0();
          }

          sub_267C77240(v131);
          sub_267C77240(v128);
          v30 = v36;
        }

        else
        {
LABEL_47:
          v59 = sub_267EF89F8();
          v60 = sub_267EF95D8();
          if (!OUTLINED_FUNCTION_27(v60))
          {

            sub_267C77240(v131);
            goto LABEL_51;
          }

          v34 = -1;
          v61 = OUTLINED_FUNCTION_35_0();
          OUTLINED_FUNCTION_1_32(v61);
          *(v62 + 14) = 0;
          OUTLINED_FUNCTION_10_22(&dword_267B93000, v59, v3, "#ConversationStateBuilder consecutive reactions were not to the same referencedMessage. Resetting startIndex: %ld, reactionCounter: %ld");
          OUTLINED_FUNCTION_40_0();

          sub_267C77240(v131);
LABEL_49:
          v31 = 0;
          v30 = v36;
        }
      }
    }

    else
    {
      if (v31 >= 3)
      {
        v46 = v125 - 1;
        if (__OFSUB__(v125, 1))
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = *(v116 + 16);
          OUTLINED_FUNCTION_4_7();
          sub_267C7083C();
          v116 = v64;
        }

        v3 = *(v116 + 16);
        v47 = *(v116 + 24);
        if (v3 >= v47 >> 1)
        {
          OUTLINED_FUNCTION_8_2(v47);
          sub_267C7083C();
          v116 = v65;
        }

        *(v116 + 16) = v3 + 1;
        v48 = v116 + 16 * v3;
        *(v48 + 32) = v34;
        *(v48 + 40) = v46;
        v49 = sub_267EF89F8();
        v50 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_27(v50))
        {
          v51 = OUTLINED_FUNCTION_35_0();
          OUTLINED_FUNCTION_1_32(v51);
          *(v52 + 14) = v46;
          OUTLINED_FUNCTION_10_22(&dword_267B93000, v49, v3, "#ConversationStateBuilder currentComponent is not a ReactionComponent. Appending array slice (%ld, %ld)");
          OUTLINED_FUNCTION_40_0();
        }
      }

      v53 = sub_267EF89F8();
      v54 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_27(v54))
      {
        v34 = -1;
        v55 = OUTLINED_FUNCTION_35_0();
        OUTLINED_FUNCTION_1_32(v55);
        *(v56 + 14) = 0;
        OUTLINED_FUNCTION_10_22(&dword_267B93000, v53, v3, "#ConversationStateBuilder Resetting startIndex: %ld, reactionCounter: %ld");
        OUTLINED_FUNCTION_40_0();

        goto LABEL_49;
      }

LABEL_51:
      v31 = 0;
      v34 = -1;
      v30 = v36;
    }
  }

  if (v34 == -1 || v31 < 3)
  {
    v68 = v116;
    v67 = v123;
  }

  else
  {
    v68 = v116;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = v123;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v113 = *(v116 + 16);
      OUTLINED_FUNCTION_4_7();
      sub_267C7083C();
      v68 = v114;
    }

    v70 = v32 - 1;
    v72 = *(v68 + 16);
    v71 = *(v68 + 24);
    if (v72 >= v71 >> 1)
    {
      OUTLINED_FUNCTION_8_2(v71);
      sub_267C7083C();
      v68 = v115;
    }

    *(v68 + 16) = v72 + 1;
    v73 = v68 + 16 * v72;
    *(v73 + 32) = v34;
    *(v73 + 40) = v70;
    v74 = sub_267EF89F8();
    v75 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_27(v75))
    {
      v76 = OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_1_32(v76);
      *(v77 + 14) = v70;
      OUTLINED_FUNCTION_10_22(&dword_267B93000, v74, v72, "#ConversationStateBuilder Appending array slice (%ld, %ld)");
      OUTLINED_FUNCTION_40_0();
    }
  }

  v127 = v67;
  v78 = *(v68 + 16);
  if (v78)
  {
    v118 = v68 + 32;

    v117 = v68;
    while (v78 <= *(v68 + 16))
    {
      --v78;
      v79 = (v118 + 16 * v78);
      v80 = *v79;
      v81 = v79[1];
      if (v81 < *v79)
      {
        goto LABEL_102;
      }

      v82 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        goto LABEL_103;
      }

      if ((v80 & 0x8000000000000000) != 0)
      {
        goto LABEL_104;
      }

      v126 = v78;
      v83 = v127;
      v84 = v127[2];
      if (v84 < v80 || v84 < v82)
      {
        goto LABEL_105;
      }

      if (v82 < 0)
      {
        goto LABEL_106;
      }

      v120 = v81;
      v122 = v81 + 1;
      a1 = ((2 * v82) | 1);
      v86 = v80;

      v88 = sub_267CF6D9C(v87, v83 + 32, v86, a1);
      v124 = v86;
      if (v88)
      {
        v89 = v88;

        v90 = v89;
      }

      else
      {
        sub_267C73B1C(v83, v83 + 32, v86, a1);
        v90 = v91;
      }

      v92 = *(v90 + 16);
      if (v92)
      {
        a1 = (v90 + 32);
        v93 = v92 - 1;
        v94 = MEMORY[0x277D84F90];
        while (1)
        {
          sub_267B9AFEC(a1, v132);
          sub_267BE58F4(v132, v130);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
          if ((swift_dynamicCast() & 1) == 0)
          {
            break;
          }

          if (!v131[3])
          {
            goto LABEL_90;
          }

          memcpy(v129, v131, 0x71uLL);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v97 = *(v94 + 16);
            OUTLINED_FUNCTION_4_7();
            sub_267C70768();
            v94 = v98;
          }

          v96 = *(v94 + 16);
          v95 = *(v94 + 24);
          if (v96 >= v95 >> 1)
          {
            OUTLINED_FUNCTION_8_2(v95);
            sub_267C70768();
            v94 = v99;
          }

          memcpy(v128, v129, 0x71uLL);
          *(v94 + 16) = v96 + 1;
          memcpy((v94 + 120 * v96 + 32), v128, 0x71uLL);
          if (!v93)
          {
LABEL_92:

            v68 = v117;
            goto LABEL_94;
          }

LABEL_91:
          --v93;
          a1 += 5;
        }

        memset(v131, 0, 113);
LABEL_90:
        memcpy(v129, v131, 0x71uLL);
        sub_267B9FF34(v129, &qword_28022AAE8, &qword_267F02C58);
        if (!v93)
        {
          goto LABEL_92;
        }

        goto LABEL_91;
      }

      v94 = MEMORY[0x277D84F90];
LABEL_94:
      sub_267D57660(v94, __src);
      v100 = *(&__src[1] + 1);
      if (*(&__src[1] + 1))
      {
        v101 = sub_267EF89F8();
        v102 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_27(v102))
        {
          a1 = OUTLINED_FUNCTION_35_0();
          *a1 = 134218240;
          *(a1 + 4) = v124;
          *(a1 + 6) = 2048;
          *(a1 + 14) = v120;
          OUTLINED_FUNCTION_10_22(&dword_267B93000, v101, v94, "#ConversationStateBuilder replacing array slice (%ld, %ld) with an AggregatedReactionComponent");
          OUTLINED_FUNCTION_40_0();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B38, &unk_267F02C60);
        v103 = swift_allocObject();
        *(v103 + 16) = xmmword_267EFC020;
        *(v103 + 56) = &type metadata for AggregatedReactionComponent;
        *(v103 + 64) = sub_267CF6E60();
        v104 = swift_allocObject();
        *(v103 + 32) = v104;
        *(v104 + 16) = __src[0];
        *(v104 + 32) = *&__src[1];
        *(v104 + 40) = v100;
        memcpy((v104 + 48), &__src[2], 0x51uLL);
        sub_267CF5CF4(v124, v122, v103);
      }

      v78 = v126;
      if (!v126)
      {
        goto LABEL_99;
      }
    }

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
    goto LABEL_107;
  }

LABEL_99:

  a1 = v127;

  v78 = sub_267EF89F8();
  v105 = sub_267EF95D8();
  if (!os_log_type_enabled(v78, v105))
  {
LABEL_107:

    goto LABEL_108;
  }

  v106 = swift_slowAlloc();
  v107 = swift_slowAlloc();
  v131[0] = v107;
  *v106 = 136315138;
  sub_267BE3C00(a1);
  v108 = MEMORY[0x26D608FD0]();
  v110 = v109;

  v111 = sub_267BA33E8(v108, v110, v131);

  *(v106 + 4) = v111;

  _os_log_impl(&dword_267B93000, v78, v105, "#ConversationStateBuilder Resulting components: %s", v106, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v107);
  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_32_0();
LABEL_108:

  return a1;
}

uint64_t sub_267BE3A78()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  v6 = *(v0 + 88);

  v7 = *(v0 + 96);

  v8 = *(v0 + 120);

  return MEMORY[0x2821FE8E8](v0, 129, 7);
}

uint64_t sub_267BE3B18(void (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  a1(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return OUTLINED_FUNCTION_144_1();
}

double OUTLINED_FUNCTION_149()
{
  result = 0.0;
  *(v0 + 528) = 0u;
  *(v0 + 544) = 0u;
  return result;
}

void OUTLINED_FUNCTION_149_0(uint64_t a1@<X8>)
{
  *(v2 + 240) = 0;
  *(v2 + 264) = a1;
  *(v2 + 272) = 0x7461636F4C736168;
  *(v2 + 280) = 0xEB000000006E6F69;
  *(v2 + 288) = *(v1 + *(v3 + 32));
  *(v2 + 312) = a1;
  strcpy((v2 + 320), "isAudioReply");
  *(v2 + 333) = 0;
  *(v2 + 334) = -5120;
  *(v2 + 336) = *(v1 + *(v3 + 36));
}

uint64_t OUTLINED_FUNCTION_149_1()
{
  result = v0[71];
  v2 = v0[69];
  v3 = *(v0[70] + 8);
  return result;
}

uint64_t sub_267BE3C00(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v20 = MEMORY[0x277D84F90];
    sub_267BC7934(0, v1, 0);
    v2 = v20;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[3];
      v6 = v4[4];
      v7 = __swift_project_boxed_opaque_existential_0(v4, v5);
      v8 = *(*(v5 - 8) + 64);
      MEMORY[0x28223BE20](v7);
      (*(v10 + 16))(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      v11 = *(v6 + 8);
      v12 = sub_267EF90A8();
      v14 = v13;
      v20 = v2;
      v16 = *(v2 + 16);
      v15 = *(v2 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_267BC7934((v15 > 1), v16 + 1, 1);
        v2 = v20;
      }

      *(v2 + 16) = v16 + 1;
      v17 = v2 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      v4 += 5;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_267BE3DA8(void *a1)
{
  v2 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
  if ([a1 sender])
  {
    MEMORY[0x26D608F90]();
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_267EF9328();
    }

    sub_267EF9368();
    v2 = v12;
  }

  v3 = sub_267BE3F34(a1);
  if (!v3)
  {
    goto LABEL_17;
  }

  v4 = v3;
  result = sub_267BAF0DC(v3);
  if (!result)
  {
LABEL_16:

LABEL_17:
    sub_267BE3F94(v2);
    v11 = v10;

    return v11;
  }

  v6 = result;
  if (result >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26D609870](i, v4);
      }

      else
      {
        v8 = *(v4 + 8 * i + 32);
      }

      v9 = v8;
      MEMORY[0x26D608F90]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_267EF9328();
      }

      sub_267EF9368();
    }

    v2 = v12;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_267BE3F34(void *a1)
{
  v1 = [a1 recipients];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_267BCA2C8();
  v3 = sub_267EF92F8();

  return v3;
}

void sub_267BE3F94(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = sub_267BAF0DC(a1);
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x26D609870](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return;
    }

    if ([v4 isMe])
    {
    }

    else
    {
      sub_267EF9BD8();
      v6 = *(v7 + 16);
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
    }
  }
}

uint64_t sub_267BE40A0(void *a1)
{
  v2 = [a1 conversationIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_267EF9028();

  return v3;
}

void sub_267BE4134(uint64_t a1)
{
  v2 = v1;
  *(v1 + 24) = 0;
  v4 = [objc_allocWithZone(MEMORY[0x277D57520]) init];
  if (!v4)
  {
    goto LABEL_24;
  }

  v5 = v4;
  *(v2 + 16) = v4;
  v6 = objc_allocWithZone(MEMORY[0x277D576E0]);
  v7 = v5;
  v8 = [v6 init];
  [v7 setSmsContext_];

  v9 = [*(v2 + 16) smsContext];
  if (v9)
  {
    v10 = v9;
    v11 = [objc_allocWithZone(MEMORY[0x277D576A8]) init];
    [v10 setRichAttachmentIntelligenceFeatureUsage_];
  }

  v26 = *(a1 + 16);
  if (!v26)
  {
LABEL_21:

    return;
  }

  v12 = 0;
  v24 = a1;
  v25 = a1 + 32;
  while (v12 < *(a1 + 16))
  {
    sub_267B9AFEC(v25 + 40 * v12, v27);
    v13 = v27[4];
    __swift_project_boxed_opaque_existential_0(v27, v27[3]);
    v14 = *(v13 + 16);
    v15 = OUTLINED_FUNCTION_33();
    v17 = v16(v15);
    __swift_destroy_boxed_opaque_existential_0(v27);

    if (v17 >> 62)
    {
      v18 = sub_267EF9A68();
      if (!v18)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_17;
      }
    }

    if (v18 < 1)
    {
      goto LABEL_23;
    }

    for (i = 0; i != v18; ++i)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x26D609870](i, v17);
      }

      else
      {
        v20 = *(v17 + 8 * i + 32);
      }

      v21 = v20;
      v22 = [*(v2 + 16) smsContext];
      if (v22)
      {
        v23 = v22;
        [v22 addIsGroupMessage_];
      }
    }

LABEL_17:
    ++v12;

    a1 = v24;
    if (v12 == v26)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_267BE43E8(char a1)
{
  v2 = v1;
  if (qword_280228818 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v3 = sub_267EF8A08();
    __swift_project_value_buffer(v3, qword_280240FB0);
    v4 = sub_267EF89F8();
    v5 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v5))
    {
      v6 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_61(v6);
      OUTLINED_FUNCTION_90_0(&dword_267B93000, v4, v5, "#ConversationStateManager Initialize maps for navigation");
      OUTLINED_FUNCTION_32_0();
    }

    OUTLINED_FUNCTION_83();
    v7 = *(v2 + 56);
    v62 = v7 & 0xC000000000000001;
    v63 = sub_267BAF0DC(v7);
    v61 = v7 + 32;
    v64 = v7;

    v8 = 0;
LABEL_5:
    if (v8 == v63)
    {
    }

    sub_267BBD0EC(v8, v62 == 0, v64);
    if (v62)
    {
      v9 = MEMORY[0x26D609870](v8, v64);
    }

    else
    {
      v9 = *(v61 + 8 * v8);
    }

    if (!__OFADD__(v8, 1))
    {
      break;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  *(&v75 + 1) = &type metadata for Features;
  *&v76 = sub_267BAFCAC();
  LOBYTE(v74) = 12;
  v10 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0(&v74);
  if ((v10 & 1) == 0 || (a1 & 1) == 0)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_83();
  sub_267BE4994((v9 + 5), &v71);
  if (!*(&v72 + 1))
  {
    sub_267B9FF34(&v71, &qword_280229910, &unk_267EFEB70);
LABEL_16:
    v16 = sub_267EF89F8();
    v17 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v17))
    {
      v18 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_61(v18);
      OUTLINED_FUNCTION_90_0(&dword_267B93000, v16, v17, "#ConversationStateManager using non-summary components for readableComponents before creating navigation map");
      OUTLINED_FUNCTION_32_0();
    }

    v19 = v9[4];
    swift_beginAccess();
    v20 = v9[3];
    v9[3] = v19;

    goto LABEL_19;
  }

  sub_267BE58F4(&v71, &v74);
  v11 = sub_267EF89F8();
  v12 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v12))
  {
    v13 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_61(v13);
    OUTLINED_FUNCTION_90_0(&dword_267B93000, v11, v12, "#ConversationStateManager using ConversationSummaryComponent for readableComponents before creating navigation map");
    OUTLINED_FUNCTION_32_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B38, &unk_267F02C60);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_267EFC020;
  sub_267BE58F4(&v74, v14 + 32);
  swift_beginAccess();
  v15 = v9[3];
  v9[3] = v14;
LABEL_19:

  v21 = v9[11];
  v22 = v9[12];
  OUTLINED_FUNCTION_66_3();
  v23 = *(v2 + 384);
  swift_isUniquelyReferenced_nonNull_native();
  *&v71 = *(v2 + 384);
  sub_267BE4A04();
  *(v2 + 384) = v71;
  swift_endAccess();
  OUTLINED_FUNCTION_83();
  v24 = v9[3];
  v68 = *(v24 + 16);
  v65 = v24 + 32;
  v66 = v24;

  for (i = v9; ; v9 = i)
  {
    *&v26 = OUTLINED_FUNCTION_6_45();
    if (!v29)
    {
      if (v25 >= *(v66 + 16))
      {
        goto LABEL_37;
      }

      *&v71 = v25;
      sub_267B9AFEC(v65 + 40 * v25, &v71 + 8);
      v28 = v71;
      v27 = v72;
      v26 = v73;
    }

    v74 = v28;
    v75 = v27;
    v76 = v26;
    if (!v26)
    {

      ++v8;
      goto LABEL_5;
    }

    v69 = v28;
    sub_267BE58F4((&v74 + 8), &v71);
    v30 = *(&v72 + 1);
    v31 = v73;
    __swift_project_boxed_opaque_existential_0(&v71, *(&v72 + 1));
    v32 = (*(v31 + 32))(v30, v31);
    v34 = v33;
    v35 = v9[11];
    v36 = v9[12];
    OUTLINED_FUNCTION_66_3();

    v37 = *(v2 + 392);
    swift_isUniquelyReferenced_nonNull_native();
    v70 = *(v2 + 392);
    v38 = v2;
    *(v2 + 392) = 0x8000000000000000;
    sub_267BA9948();
    OUTLINED_FUNCTION_5_55();
    if (__OFADD__(v41, v42))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v2 = v39;
    v43 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C7B8, &qword_267F0B668);
    if (sub_267EF9C68())
    {
      break;
    }

LABEL_28:
    if (v43)
    {

      v46 = v70;
      OUTLINED_FUNCTION_13_38();
      v49 = (v47 + v2 * v48);
      v50 = v49[2];
      *v49 = v69;
      v49[1] = v35;
      v49[2] = v36;
    }

    else
    {
      v46 = v70;
      OUTLINED_FUNCTION_7_44(v70 + 8 * (v2 >> 6));
      v52 = (v51 + 16 * v2);
      *v52 = v32;
      v52[1] = v34;
      OUTLINED_FUNCTION_13_38();
      v55 = (v53 + v2 * v54);
      *v55 = v69;
      v55[1] = v35;
      v55[2] = v36;
      v56 = *(v70 + 16);
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (v57)
      {
        goto LABEL_38;
      }

      *(v70 + 16) = v58;
    }

    v2 = v38;
    v38[49] = v46;
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_0(&v71);
  }

  v44 = sub_267BA9948();
  if ((v43 & 1) == (v45 & 1))
  {
    v2 = v44;
    goto LABEL_28;
  }

  result = sub_267EF9F28();
  __break(1u);
  return result;
}

uint64_t sub_267BE4994(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229910, &unk_267EFEB70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_267BE4A04()
{
  v4 = OUTLINED_FUNCTION_1_82();
  OUTLINED_FUNCTION_0_73(v4, v5);
  if (v6)
  {
    __break(1u);
LABEL_12:
    sub_267EF9F28();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_10_45();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C408, &unk_267F0A710);
  OUTLINED_FUNCTION_2_67();
  if (sub_267EF9C68())
  {
    OUTLINED_FUNCTION_8_55();
    OUTLINED_FUNCTION_6_51();
    if (!v8)
    {
      goto LABEL_12;
    }

    v3 = v7;
  }

  if (v2)
  {
    *(*(*v1 + 56) + 8 * v3) = v0;
    OUTLINED_FUNCTION_60_2();
  }

  else
  {
    OUTLINED_FUNCTION_5_67();
    sub_267BE6244(v9, v10, v11, v12, v13);
    OUTLINED_FUNCTION_60_2();
  }
}

unint64_t sub_267BE4AD0()
{
  OUTLINED_FUNCTION_4_58();
  v1 = *(v0 + 56);
  v2 = v1 & 0xC000000000000001;
  sub_267BBD0EC(0, (v1 & 0xC000000000000001) == 0, v1);
  if ((v1 & 0xC000000000000001) != 0)
  {

    MEMORY[0x26D609870](0, v1);
    OUTLINED_FUNCTION_43();
  }

  else
  {
    v2 = *(v1 + 32);
  }

  return v2;
}

uint64_t type metadata accessor for ConversationActionGroup()
{
  result = qword_280229980;
  if (!qword_280229980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267BE4B90(uint64_t a1, char a2)
{
  *(&v39 + 1) = &type metadata for Features;
  *&v40 = sub_267BAFCAC();
  LOBYTE(v38) = 12;
  v4 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0(&v38);
  if (v4 & 1) != 0 && (a2)
  {
    swift_beginAccess();
    sub_267BB16A4(a1 + 40, &v31, &qword_280229910, &unk_267EFEB70);
    if (*(&v32 + 1))
    {
      sub_267BE58F4(&v31, &v38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A58, &unk_267F0D640);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_267EFC020;
      *(v5 + 32) = sub_267E2E1C8(&v38, *(v2 + 16), 0);
      *(v5 + 40) = v6;
      __swift_destroy_boxed_opaque_existential_0(&v38);
      goto LABEL_15;
    }

    sub_267B9FF34(&v31, &qword_280229910, &unk_267EFEB70);
  }

  v7 = *(v2 + 16);
  v29 = *(v7 + 88) != 0;
  swift_beginAccess();
  v8 = *(a1 + 24);
  v9 = *(v8 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v9)
  {
    v37 = MEMORY[0x277D84F90];

    sub_267BE50EC();
    v5 = v37;
    v10 = v8 + 32;
    do
    {
      sub_267B9AFEC(v10, v36);
      sub_267B9AFEC(v36, v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(v36);
        v38 = v31;
        v39 = v32;
        v40 = v33;
        v41 = v34;
        type metadata accessor for ReadAudioComponentAction();
        swift_allocObject();
        v11 = sub_267E38820(&v38, v7);
        v12 = type metadata accessor for ReadAudioComponentAction;
        v13 = &unk_280229268;
      }

      else
      {
        type metadata accessor for DefaultReadComponentAction();
        swift_allocObject();
        v11 = sub_267BF902C(v36, v7, v29 & a2);
        v12 = type metadata accessor for DefaultReadComponentAction;
        v13 = &unk_280229258;
      }

      v14 = sub_267BF9074(v13, v12);

      __swift_destroy_boxed_opaque_existential_0(v35);
      v37 = v5;
      v15 = *(v5 + 16);
      if (v15 >= *(v5 + 24) >> 1)
      {
        sub_267BE50EC();
        v5 = v37;
      }

      *(v5 + 16) = v15 + 1;
      v16 = v5 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v14;
      v10 += 40;
      --v9;
    }

    while (v9);
  }

LABEL_15:
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v17 = sub_267EF8A08();
  __swift_project_value_buffer(v17, qword_280240FB0);
  v18 = sub_267EF89F8();
  v19 = sub_267EF95D8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v31 = v21;
    *v20 = 136315138;

    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BE10, &qword_267EFEED0);
    v23 = MEMORY[0x26D608FD0](v5, v22);
    v25 = v24;

    v26 = sub_267BA33E8(v23, v25, &v31);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_267B93000, v18, v19, "#MessageReadingActionGroup Created actions for conversation: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x26D60A7B0](v21, -1, -1);
    MEMORY[0x26D60A7B0](v20, -1, -1);
  }

  sub_267C36888(v27);

  return v5;
}

void sub_267BE5024()
{
  OUTLINED_FUNCTION_59_5();
  OUTLINED_FUNCTION_12_8();
  if (v7)
  {
    OUTLINED_FUNCTION_2_21();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_18_10();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_24();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_24_4(v8);
  if (v3)
  {
    OUTLINED_FUNCTION_50_6(v11, v12, v13, v14, v15, v16);
    v17 = OUTLINED_FUNCTION_37_3();
    _swift_stdlib_malloc_size(v17);
    OUTLINED_FUNCTION_7_14();
    v17[2] = v2;
    v17[3] = v18;
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_48_5();
  if (v1)
  {
    if (v17 != v0 || v5 + 16 * v2 <= v4)
    {
      v20 = OUTLINED_FUNCTION_68_0();
      memmove(v20, v21, v22);
    }

    v0[2] = 0;
  }

  else
  {
    v23 = OUTLINED_FUNCTION_19();
    __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
    OUTLINED_FUNCTION_25_9();
  }

  OUTLINED_FUNCTION_60_2();
}

void sub_267BE50EC()
{
  v1 = *v0;
  sub_267BE5024();
  *v0 = v2;
}

uint64_t OUTLINED_FUNCTION_122_0()
{

  return sub_267EF8AE8();
}

uint64_t OUTLINED_FUNCTION_122_1()
{
}

uint64_t OUTLINED_FUNCTION_122_2@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_267BC9B04(v3 + a3, v4, a1, a2);
}

uint64_t OUTLINED_FUNCTION_122_4()
{

  return sub_267EF90F8();
}

uint64_t OUTLINED_FUNCTION_122_6()
{
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[65];
  v6 = v0[63];
  v5 = v0[64];
  v8 = v0[61];
  v7 = v0[62];
  v10 = v0[59];
  v9 = v0[60];
  v11 = v0[56];
  v12 = v0[53];
  v14 = v0[50];
  v15 = v0[49];
  v16 = v0[46];
}

uint64_t sub_267BE5258(id *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  if ([*a1 messageType] == 26)
  {
    v8 = [v7 referencedMessage];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 identifier];
      v11 = sub_267EF9028();
      v13 = v12;

      v45 = v7;
      v14 = *a2;
      swift_isUniquelyReferenced_nonNull_native();
      v46 = *a2;
      v15 = v46;
      *a2 = 0x8000000000000000;
      v16 = sub_267BA9948();
      if (__OFADD__(*(v15 + 16), (v17 & 1) == 0))
      {
        __break(1u);
      }

      else
      {
        v18 = v16;
        v19 = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AAF8, &qword_267F02C70);
        if ((sub_267EF9C68() & 1) == 0)
        {
LABEL_7:
          v22 = *a2;
          *a2 = v46;

          v23 = *a2;
          if (v19)
          {
          }

          else
          {
            sub_267E87218(v18, v11, v13, MEMORY[0x277D84F90], *a2);
          }

          sub_267C74A48(0, *(*(v23 + 56) + 8 * v18));
          sub_267CF5E78(0, 0, v45);
          v41 = [v45 identifier];
          v42 = sub_267EF9028();
          v44 = v43;

          sub_267D302A8(&v46, v42, v44);
        }

        v20 = sub_267BA9948();
        if ((v19 & 1) == (v21 & 1))
        {
          v18 = v20;
          goto LABEL_7;
        }
      }

      result = sub_267EF9F28();
      __break(1u);
      return result;
    }
  }

  v24 = [v7 identifier];
  v25 = sub_267EF9028();

  v26 = *a2;
  v27 = sub_267BC2EE0(v25);

  if (!v27)
  {
    return result;
  }

  sub_267CF5124(v29);

  v30 = [v7 identifier];
  v31 = sub_267EF9028();
  v33 = v32;

  v34 = *a5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = *a5;
  sub_267E86BAC(v27, v31, v33, isUniquelyReferenced_nonNull_native);
  *a5 = v46;

  v36 = [v7 identifier];
  sub_267EF9028();

  sub_267CF5F28();

  v37 = [v7 identifier];
  v38 = sub_267EF9028();
  v40 = v39;

  sub_267CF6ABC(v38, v40);
}

char *sub_267BE55F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B58, &qword_267EFEFF8);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_267BE56FC(void *a1)
{
  v1 = [a1 inlineGlyphContent];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B5F0, &unk_267F0C690);
  v3 = sub_267EF92F8();

  return v3;
}

void sub_267BE5768()
{
  OUTLINED_FUNCTION_10_25();
  OUTLINED_FUNCTION_15_19(v2, v3, v4);
  v5 = sub_267EF9B08();
  v6 = v5;
  if (*(v1 + 16))
  {
    v26 = v0;
    v7 = 0;
    v8 = 1 << *(v1 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v1 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v5 + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v17 = *(v6 + 40);
        *(*(v1 + 48) + 8 * (v13 | (v7 << 6)));
        v18 = sub_267EF9808() & ~(-1 << *(v6 + 32));
        if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_5_5();
LABEL_21:
        OUTLINED_FUNCTION_22_16();
        *(v12 + v23) |= v24;
        OUTLINED_FUNCTION_18_18(v25);
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      OUTLINED_FUNCTION_7_4();
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        if (*(v12 + 8 * v19) != -1)
        {
          OUTLINED_FUNCTION_6_23();
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v0 = v26;
          goto LABEL_25;
        }

        ++v14;
        if (*(v1 + 56 + 8 * v7))
        {
          OUTLINED_FUNCTION_12_5();
          v10 = v16 & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v0 = v6;
    OUTLINED_FUNCTION_9_28();
  }
}

uint64_t sub_267BE591C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = sub_267EF2D28();
  v15 = OUTLINED_FUNCTION_58(v14);
  v52 = v16;
  v53 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v51 = v19;
  *(v6 + 67) = 0u;
  *(v6 + 7) = 0u;
  *(v6 + 5) = 0u;
  v6[19] = 0;
  v6[20] = 0;
  sub_267BBD3E4(v54, a1);
  v20 = v55;
  if (v55)
  {
    v21 = v56;
    __swift_project_boxed_opaque_existential_0(v54, v55);
    OUTLINED_FUNCTION_42_7(v21);
    v22(v20, v21);
    OUTLINED_FUNCTION_76();
    if (sub_267BAF0DC(v23))
    {
      OUTLINED_FUNCTION_4_50();
      if (v20)
      {
        v24 = MEMORY[0x26D609870](0, v6);
      }

      else
      {
        v24 = v6[4];
      }

      v25 = v24;

      __swift_destroy_boxed_opaque_existential_0(v54);
      v6[2] = sub_267BE3DA8(v25);
      v6[3] = a1;
      v6[4] = a1;
      if (*(a1 + 16))
      {
        v48 = v25;
        v49 = a3;
        a3 = a4;
        a4 = a2;
        v26 = a5;
        v50 = a6;
        sub_267B9AFEC(a1 + 32, v54);
        v21 = v55;
        v27 = v56;
        v6 = __swift_project_boxed_opaque_existential_0(v54, v55);
        v25 = *(v27 + 16);
        swift_bridgeObjectRetain_n();
        (v25)(v21, v27);
        OUTLINED_FUNCTION_76();
        if (!sub_267BAF0DC(v28))
        {

          v6 = 0;
          v21 = 0;
          a5 = v26;
          v31 = a4;
          goto LABEL_11;
        }

        OUTLINED_FUNCTION_4_50();
        a5 = v26;
        if (!v25)
        {
          v29 = v6[4];
LABEL_9:
          v30 = v29;
          v31 = a4;

          sub_267BE40A0(v30);
          OUTLINED_FUNCTION_76();
LABEL_11:
          __swift_destroy_boxed_opaque_existential_0(v54);
          v7[13] = v6;
          v7[14] = v21;
          sub_267B9AFEC(a1 + 32, v54);
          v32 = v55;
          v33 = v56;
          __swift_project_boxed_opaque_existential_0(v54, v55);
          OUTLINED_FUNCTION_42_7(v33);
          v34(v32, v33);
          OUTLINED_FUNCTION_76();
          if (sub_267BAF0DC(v35))
          {
            OUTLINED_FUNCTION_4_50();
            if (v25)
            {
              v36 = MEMORY[0x26D609870](0, v6);
            }

            else
            {
              v36 = v6[4];
            }

            v37 = v36;

            v38 = [v37 groupName];
          }

          else
          {

            v38 = 0;
          }

          __swift_destroy_boxed_opaque_existential_0(v54);
          v7[15] = v38;
          sub_267EF2D18();
          sub_267EF2CE8();
          OUTLINED_FUNCTION_76();
          (*(v52 + 8))(v51, v53);
          v7[11] = v51;
          v7[12] = v32;
          *(v7 + 80) = 0;
          v7[16] = v31;
          v7[17] = v49;
          v39 = v7[20];
          v7[18] = a3;
          v7[19] = a5;
          v7[20] = v50;

          type metadata accessor for ReadMessageSelfContext();
          swift_allocObject();
          sub_267BE4134(a1);
          v41 = v40;

          v7[21] = v41;
          return v7;
        }
      }

      else
      {
        __break(1u);
      }

      v29 = MEMORY[0x26D609870](0, v6);
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_0(v54);
  }

  else
  {
    sub_267B9FF34(v54, &qword_280229910, &unk_267EFEB70);
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v43 = sub_267EF8A08();
  __swift_project_value_buffer(v43, qword_280240FB0);
  v44 = sub_267EF89F8();
  v45 = sub_267EF95E8();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v54[0] = v47;
    *v46 = 136315138;
    *(v46 + 4) = sub_267BA33E8(0xD00000000000003FLL, 0x8000000267F1A4D0, v54);
    _os_log_impl(&dword_267B93000, v44, v45, "Fatal error: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  result = sub_267EF9C98();
  __break(1u);
  return result;
}

uint64_t sub_267BE5E38(uint64_t result)
{
  v46 = *(result + 16);
  if (v46)
  {
    v1 = 0;
    v2 = 0;
    v45 = result + 32;
    while (1)
    {
      sub_267B9AFEC(v45 + 40 * v2, v56);
      v3 = v57;
      v4 = v58;
      __swift_project_boxed_opaque_existential_0(v56, v57);
      v5 = (*(v4 + 16))(v3, v4);

      v6 = v5 >> 62 ? sub_267EF9A68() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v47 = v2;
      if (v6)
      {
        break;
      }

LABEL_31:
      v2 = v47 + 1;

      __swift_destroy_boxed_opaque_existential_0(v56);
      if (v47 + 1 == v46)
      {
        return sub_267BA1BFC(v1);
      }
    }

    v7 = 0;
    v50 = v5;
    v51 = v5 & 0xC000000000000001;
    v48 = v5 & 0xFFFFFFFFFFFFFF8;
    v49 = v6;
    while (1)
    {
      if (v51)
      {
        v8 = MEMORY[0x26D609870](v7, v5);
      }

      else
      {
        if (v7 >= *(v48 + 16))
        {
          goto LABEL_40;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      if (__OFADD__(v7, 1))
      {
        break;
      }

      v52 = v8;
      v53 = v7 + 1;
      v9 = [v8 identifier];
      v10 = sub_267EF9028();
      v12 = v11;

      v13 = v57;
      v14 = v58;
      __swift_project_boxed_opaque_existential_0(v56, v57);
      v15 = (*(v14 + 32))(v13, v14);
      v17 = v16;
      sub_267BA1BFC(v1);
      v18 = *v54;
      swift_isUniquelyReferenced_nonNull_native();
      v55 = *v54;
      v19 = v55;
      v20 = sub_267BA9948();
      if (__OFADD__(*(v19 + 16), (v21 & 1) == 0))
      {
        goto LABEL_36;
      }

      v22 = v20;
      v23 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CD08, &unk_267F0D8B0);
      if (sub_267EF9C68())
      {
        sub_267BA9948();
        OUTLINED_FUNCTION_3_80();
        if (!v25)
        {
          goto LABEL_41;
        }

        v22 = v24;
      }

      v26 = v55;
      *v54 = v55;
      if (v23)
      {
      }

      else
      {
        sub_267BE84B4(&v55);
        v27 = v55;
        v26[(v22 >> 6) + 8] |= 1 << v22;
        v28 = (v26[6] + 16 * v22);
        *v28 = v10;
        v28[1] = v12;
        *(v26[7] + 8 * v22) = v27;
        v29 = v26[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_38;
        }

        v26[2] = v31;
      }

      v32 = v26[7];
      v33 = *(v32 + 8 * v22);
      swift_isUniquelyReferenced_nonNull_native();
      v55 = *(v32 + 8 * v22);
      v34 = v55;
      *(v32 + 8 * v22) = 0x8000000000000000;
      v35 = OUTLINED_FUNCTION_12_45();
      if (__OFADD__(*(v34 + 16), (v36 & 1) == 0))
      {
        goto LABEL_37;
      }

      v37 = v35;
      v38 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CD00, &qword_267F0D8A8);
      if (sub_267EF9C68())
      {
        OUTLINED_FUNCTION_12_45();
        OUTLINED_FUNCTION_3_80();
        if (!v25)
        {
          goto LABEL_41;
        }

        v37 = v39;
      }

      if (v38)
      {

        v40 = v55;
        *(v55[7] + v37) = 0;
      }

      else
      {
        v40 = v55;
        v55[(v37 >> 6) + 8] |= 1 << v37;
        v41 = (v40[6] + 16 * v37);
        *v41 = v15;
        v41[1] = v17;
        *(v40[7] + v37) = 0;
        v42 = v40[2];
        v30 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v30)
        {
          goto LABEL_39;
        }

        v40[2] = v43;
      }

      v44 = *(v32 + 8 * v22);
      *(v32 + 8 * v22) = v40;

      ++v7;
      v1 = sub_267BE84B4;
      v5 = v50;
      if (v53 == v49)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    result = sub_267EF9F28();
    __break(1u);
  }

  return result;
}

unint64_t sub_267BE6244(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = OUTLINED_FUNCTION_7_50(a1, a2, a3, a4, a5);
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v7;
  }

  return result;
}

uint64_t sub_267BE6268()
{
  v1 = v0;
  v2 = sub_267EF7008();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-1] - v8;
  v10 = v0[5];
  v11 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v10);
  (*(v11 + 8))(v17, v10, v11);
  __swift_project_boxed_opaque_existential_0(v17, v17[3]);
  sub_267EF3B78();
  (*(v3 + 104))(v7, *MEMORY[0x277D61C80], v2);
  sub_267BFBF08(&unk_28022A370, MEMORY[0x277D61CA8]);
  v12 = sub_267EF8FE8();
  v13 = *(v3 + 8);
  v13(v7, v2);
  v13(v9, v2);
  __swift_destroy_boxed_opaque_existential_0(v17);
  if ((v12 & 1) != 0 || v1[11] || sub_267E2B5FC() || sub_267E2B49C())
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_267E2B648() ^ 1;
  }

  return v14 & 1;
}

void *sub_267BE6480(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v9 = *v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229110, &unk_267F08700);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = (&v60 - v12);
  *(v4 + OBJC_IVAR____TtC16SiriMessagesFlow23ConversationActionGroup_conversation) = a1;
  v14 = sub_267BE6C54(a2);
  v15 = *(a2 + 416);
  *(a2 + 416) = a1;
  swift_retain_n();

  swift_retain_n();

  v16 = sub_267BE4B90(a1, a3);
  v17 = sub_267DA8624(v16);

  if (v17[2])
  {
    v18 = v17[4];
    v19 = *(v17[5] + 8);
    v20 = swift_unknownObjectRetain();
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  v21 = v14[3];
  v14[3] = v20;
  v14[4] = v19;

  swift_unknownObjectRelease();
  if ((a4 & 1) != 0 && sub_267E2B3E0())
  {
    v60 = v9;
    type metadata accessor for ComponentAppendingAction();
    swift_allocObject();
    v22 = sub_267C1C110(a2, a1, 0);
    if (sub_267C96D2C(v17))
    {
      swift_getObjectType();
      OUTLINED_FUNCTION_0_13();
      sub_267C6BAC4(v23, v24);

      sub_267EF3DB8();
      swift_unknownObjectRelease();
    }

    else
    {
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v60;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v57 = v17[2];
      sub_267C71568();
      v17 = v58;
    }

    v26 = v17[2];
    if (v26 >= v17[3] >> 1)
    {
      sub_267C71568();
      v17 = v59;
    }

    OUTLINED_FUNCTION_0_13();
    v29 = sub_267C6BAC4(v27, v28);
    v17[2] = v26 + 1;
    v30 = &v17[2 * v26];
    v30[4] = v22;
    v30[5] = v29;
  }

  v31 = *(a2 + 408);

  if (v31)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v32 = sub_267EF8A08();
    __swift_project_value_buffer(v32, qword_280240FB0);
    v33 = sub_267EF89F8();
    v34 = sub_267EF95D8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_267B93000, v33, v34, "ConversationActionGroup# Device is offline, skipping reply offer", v35, 2u);
      MEMORY[0x26D60A7B0](v35, -1, -1);
    }

    v36 = *(a1 + 88);
    v37 = *(a1 + 96);

    v38 = sub_267BFB860();

    v39 = sub_267E623A8(a1, v38, a2);
    v41 = v40;
    v42 = sub_267BF42CC();

    if (v42 != 1)
    {

      *v13 = v39;
      v13[1] = v41;
      goto LABEL_24;
    }

    v43 = type metadata accessor for DeviceOfflineNotificationActionGroup(0);
    OUTLINED_FUNCTION_27_4(v43);
    v44 = swift_allocObject();
    ObjectType = swift_getObjectType();

    swift_unknownObjectRetain();
    v46 = sub_267DFA39C(a2, v39, v44, ObjectType, v41);

    swift_unknownObjectRelease();

    v47 = &unk_280229998;
    v48 = type metadata accessor for DeviceOfflineNotificationActionGroup;
  }

  else
  {

    v49 = swift_allocObject();
    v49[2] = a1;
    v49[3] = a2;
    v49[4] = v9;
    v50 = type metadata accessor for OfferTransitionActionGroup();
    OUTLINED_FUNCTION_27_4(v50);
    swift_allocObject();
    v46 = sub_267CFB440(sub_267BA1BD8, v49);
    v47 = &qword_280229990;
    v48 = type metadata accessor for OfferTransitionActionGroup;
  }

  v51 = sub_267C6BAC4(v47, v48);
  *v13 = v46;
  v13[1] = v51;
LABEL_24:
  v52 = *MEMORY[0x277D5BF58];
  v53 = sub_267EF4548();
  OUTLINED_FUNCTION_22(v53);
  (*(v54 + 104))(v13, v52, v53);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v53);
  v55 = OBJC_IVAR____TtC16SiriMessagesFlow25MessageReadingActionGroup_staticTransition;
  swift_beginAccess();
  sub_267C13844(v13, v14 + v55);
  swift_endAccess();

  return v14;
}

uint64_t sub_267BE6A64(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t a4)
{
  v9 = *(a1 + 8);
  result = sub_267EF9E48();
  if (result < v9)
  {
    v11 = result;
    a4 = a2(v9 / 2);
    v13[0] = v12;
    v13[1] = v9 / 2;
    result = a3(v13, v14, a1, v11);
    if (v4)
    {
      if (v9 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v9 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

LABEL_5:
  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v9)
  {
    return (a4)(0, v9, 1, a1);
  }

  return result;
}

void sub_267BE6B68()
{
  OUTLINED_FUNCTION_59_5();
  OUTLINED_FUNCTION_12_8();
  if (v7)
  {
    OUTLINED_FUNCTION_2_21();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_18_10();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_24();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_24_4(v8);
  if (v3)
  {
    OUTLINED_FUNCTION_50_6(v11, v12, v13, v14, v15, v16);
    v17 = OUTLINED_FUNCTION_37_3();
    _swift_stdlib_malloc_size(v17);
    OUTLINED_FUNCTION_14_14();
    OUTLINED_FUNCTION_41_5(v18);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_48_5();
  if (v1)
  {
    if (v17 != v0 || v5 + 8 * v2 <= v4)
    {
      v20 = OUTLINED_FUNCTION_68_0();
      memmove(v20, v21, v22);
    }

    v0[2] = 0;
  }

  else
  {
    v23 = OUTLINED_FUNCTION_19();
    __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
    OUTLINED_FUNCTION_25_9();
  }

  OUTLINED_FUNCTION_60_2();
}

void *sub_267BE6C54(uint64_t a1)
{
  v1[3] = 0;
  v1[4] = 0;
  v3 = OBJC_IVAR____TtC16SiriMessagesFlow25MessageReadingActionGroup_staticTransition;
  v4 = sub_267EF4548();
  __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, v4);
  v1[2] = a1;
  return v1;
}

void *sub_267BE6CAC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), int a5)
{
  v38 = a3;
  v39 = a4;
  v37 = a2;

  v45[0] = sub_267BE512C(v6);
  sub_267BDE58C(v45, sub_267BE6A4C, sub_267D2FE1C, sub_267E5053C, sub_267BDE748);
  v7 = sub_267BDEADC(v45[0]);

  v46[0] = MEMORY[0x277D84F90];
  v36 = *(v7 + 2);
  if (!v36)
  {

    if ((a5 & 1) == 0)
    {
      goto LABEL_20;
    }

    return v46[0];
  }

  HIDWORD(v33) = a5;
  v8 = 0;
  v34 = v7;
  v35 = v7 + 32;
  while (1)
  {
    if (v8 >= *(v7 + 2))
    {
      goto LABEL_24;
    }

    v9 = &v35[16 * v8];
    v10 = v9[8];
    v11 = *v9;
    v12 = sub_267BDEF8C(v11, v10, v37, v38, v39);
    v13 = *(v12 + 16);
    if (v13)
    {
      break;
    }

LABEL_16:
    ++v8;

    if (v8 == v36)
    {

      if ((v33 & 0x100000000) != 0)
      {
        return v46[0];
      }

LABEL_20:
      v45[3] = &type metadata for Features;
      v45[4] = sub_267BAFCAC();
      LOBYTE(v45[0]) = 17;
      v30 = sub_267EF5128();
      __swift_destroy_boxed_opaque_existential_0(v45);
      v29 = v46[0];
      if (v30)
      {
        v31 = sub_267BE2E30(v46[0]);

        return v31;
      }

      return v29;
    }
  }

  v40 = v12;
  v41 = v11;
  v14 = v12 + 32;
  while (1)
  {
    sub_267B9AFEC(v14, v45);
    v15 = v46[0];
    v16 = *(v46[0] + 16);
    if (!v16)
    {
LABEL_12:
      sub_267B9AFEC(v45, v42);
      v21 = v43;
      v22 = v44;
      v23 = __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
      v24 = *(*(v21 - 8) + 64);
      MEMORY[0x28223BE20](v23);
      v26 = &v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v27 + 16))(v26);
      sub_267BE2B94(v26, v46, v21, v22);
      __swift_destroy_boxed_opaque_existential_0(v45);
      __swift_destroy_boxed_opaque_existential_0(v42);
      goto LABEL_13;
    }

    sub_267B9AFEC(v45, v42);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_267D5FF8C(v15);
      v15 = v28;
    }

    if (v16 > v15[2])
    {
      break;
    }

    v17 = &v15[5 * v16];
    v18 = v17[2];
    v19 = v17[3];
    __swift_mutable_project_boxed_opaque_existential_1((v17 - 1), v18);
    v20 = (*(v19 + 80))(v42, v18, v19);
    sub_267B9F98C(v42, &qword_280229910, &unk_267EFEB70);
    v46[0] = v15;
    if ((v20 & 1) == 0)
    {
      goto LABEL_12;
    }

    __swift_destroy_boxed_opaque_existential_0(v45);
LABEL_13:
    v14 += 40;
    if (!--v13)
    {

      v7 = v34;
      v11 = v41;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);

  __break(1u);
  return result;
}

void sub_267BE704C(void **a1, void **a2, void **a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v226 = a4;
  v9 = *a1;
  v10 = *a2;

  v11 = [v9 identifier];
  v12 = sub_267EF9028();
  v14 = v13;

  LOBYTE(v11) = sub_267BC2F78(v12, v14, v10);

  if (v11)
  {
    return;
  }

  v15 = *a3;

  v16 = [v9 identifier];
  v17 = sub_267EF9028();
  v19 = v18;

  LOBYTE(v16) = sub_267BC2F78(v17, v19, v15);

  v20 = MEMORY[0x277D84F90];
  if ((v16 & 1) == 0)
  {
    v33 = v9;
    MEMORY[0x26D608F90]();
    sub_267BDECD0(*((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_267EF9368();
    v34 = [v33 identifier];
    v35 = sub_267EF9028();

    v36 = *a6;
    v37 = sub_267BC2EE0(v35);

    if (!v37)
    {
      return;
    }

    v225[0] = v20;
    v38 = sub_267BAF0DC(v37);
    v39 = 0;
    v40 = v37 & 0xC000000000000001;
    while (v38 != v39)
    {
      if (v40)
      {
        v41 = MEMORY[0x26D609870](v39, v37);
      }

      else
      {
        if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_215;
        }

        v41 = *(v37 + 8 * v39 + 32);
      }

      v42 = v41;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
LABEL_215:
        __break(1u);
LABEL_216:
        __break(1u);
LABEL_217:
        __break(1u);
LABEL_218:
        __break(1u);
LABEL_219:
        __break(1u);
LABEL_220:
        __break(1u);
LABEL_221:
        __break(1u);
LABEL_222:
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
        goto LABEL_225;
      }

      if (sub_267D606A0())
      {
        sub_267EF9BD8();
        v43 = *(v225[0] + 16);
        sub_267EF9C08();
        sub_267EF9C18();
        sub_267EF9BE8();
      }

      else
      {
      }

      ++v39;
    }

    v44 = v20;
    v45 = 0;
    v46 = v225[0];
    v225[0] = v44;
    while (v38 != v45)
    {
      if (v40)
      {
        v47 = MEMORY[0x26D609870](v45, v37);
      }

      else
      {
        if (v45 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_218;
        }

        v47 = *(v37 + 8 * v45 + 32);
      }

      v48 = v47;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_217;
      }

      if (sub_267D606A0())
      {
      }

      else
      {
        sub_267EF9BD8();
        v49 = *(v225[0] + 16);
        sub_267EF9C08();
        sub_267EF9C18();
        sub_267EF9BE8();
      }

      ++v45;
    }

    v196 = v225[0];
    v50 = sub_267CF5A70(v46);
    v51 = v50;
    v192 = v6;
    v52 = v50 + 64;
    v53 = 1 << *(v50 + 32);
    v54 = -1;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    v55 = v54 & *(v50 + 64);
    v56 = (v53 + 63) >> 6;

    v58 = 0;
    v59 = MEMORY[0x277D84F90];
    v213 = v56;
    v199 = v52;
    v203 = v57;
LABEL_43:
    if (v55)
    {
      goto LABEL_48;
    }

    while (1)
    {
      v60 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        goto LABEL_216;
      }

      if (v60 >= v56)
      {
        break;
      }

      v55 = *(v52 + 8 * v60);
      ++v58;
      if (v55)
      {
        v58 = v60;
LABEL_48:
        v61 = *(*(v51 + 56) + ((v58 << 9) | (8 * __clz(__rbit64(v55)))));
        if (v61 >> 62)
        {
          v62 = sub_267EF9A68();
        }

        else
        {
          v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v63 = v59 >> 62;
        if (v59 >> 62)
        {
          v64 = sub_267EF9A68();
        }

        else
        {
          v64 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v226 = v62;
        v65 = __OFADD__(v64, v62);
        v66 = v64 + v62;
        if (v65)
        {
          goto LABEL_226;
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (!v63)
          {
            v67 = v59 & 0xFFFFFFFFFFFFFF8;
            goto LABEL_59;
          }

LABEL_60:
          sub_267EF9A68();
          goto LABEL_61;
        }

        if (v63)
        {
          goto LABEL_60;
        }

        v67 = v59 & 0xFFFFFFFFFFFFFF8;
        if (v66 <= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v220 = v59;
          goto LABEL_62;
        }

LABEL_59:
        v68 = *(v67 + 16);
LABEL_61:
        v220 = sub_267EF9BB8();
        v67 = v220 & 0xFFFFFFFFFFFFFF8;
LABEL_62:
        v55 &= v55 - 1;
        v69 = *(v67 + 16);
        v70 = (*(v67 + 24) >> 1) - v69;
        v71 = v67 + 8 * v69;
        v216 = v67;
        if (v61 >> 62)
        {
          v73 = sub_267EF9A68();
          if (!v73)
          {
            goto LABEL_76;
          }

          v74 = v73;
          v75 = sub_267EF9A68();
          if (v70 < v75)
          {
            goto LABEL_237;
          }

          v206 = v75;
          if (v74 < 1)
          {
LABEL_238:
            __break(1u);
LABEL_239:
            __break(1u);
LABEL_240:
            __break(1u);
LABEL_241:
            __break(1u);
LABEL_242:
            __break(1u);
LABEL_243:
            __break(1u);
            goto LABEL_244;
          }

          sub_267CF6EF8();
          for (i = 0; i != v74; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229968, &unk_267EFEBC0);
            v77 = sub_267C73FD8(v225, i, v61);
            v79 = *v78;
            v77(v225, 0);
            *(v71 + 32 + 8 * i) = v79;
          }

          v52 = v199;
          v51 = v203;
          v59 = v220;
          v72 = v206;
LABEL_72:
          v80 = v226;

          v56 = v213;
          if (v72 < v80)
          {
            goto LABEL_227;
          }

          if (v72 > 0)
          {
            v81 = *(v216 + 16);
            v65 = __OFADD__(v81, v72);
            v82 = v81 + v72;
            if (v65)
            {
              goto LABEL_234;
            }

            *(v216 + 16) = v82;
          }
        }

        else
        {
          v72 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v72)
          {
            if (v70 < v72)
            {
              goto LABEL_236;
            }

            sub_267CF6EB4();
            swift_arrayInitWithCopy();
            v59 = v220;
            goto LABEL_72;
          }

LABEL_76:

          v59 = v220;
          v56 = v213;
          if (v226 > 0)
          {
            goto LABEL_227;
          }
        }

        goto LABEL_43;
      }
    }

    sub_267BD057C(v59);
    v83 = sub_267CF5A70(v196);
    v84 = v83;
    v85 = v192;
    v86 = v83 + 64;
    v87 = 1 << *(v83 + 32);
    v88 = -1;
    if (v87 < 64)
    {
      v88 = ~(-1 << v87);
    }

    v89 = v88 & *(v83 + 64);
    v90 = (v87 + 63) >> 6;

    v92 = 0;
    v93 = MEMORY[0x277D84F90];
    v204 = v90;
    v207 = v86;
    v193 = v91;
    while (1)
    {
      if (!v89)
      {
        do
        {
          v94 = v92 + 1;
          if (__OFADD__(v92, 1))
          {
            goto LABEL_219;
          }

          if (v94 >= v90)
          {

            sub_267BD057C(v93);
            return;
          }

          v89 = *(v86 + 8 * v94);
          ++v92;
        }

        while (!v89);
        v92 = v94;
      }

      v95 = *(*(v84 + 56) + ((v92 << 9) | (8 * __clz(__rbit64(v89)))));
      v96 = v95 >> 62;
      v226 = v95;
      if (v95 >> 62)
      {
        v97 = sub_267EF9A68();
      }

      else
      {
        v97 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v98 = v93 >> 62;
      if (v93 >> 62)
      {
        v99 = sub_267EF9A68();
      }

      else
      {
        v99 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v221 = v97;
      v65 = __OFADD__(v99, v97);
      v100 = v99 + v97;
      if (v65)
      {
        goto LABEL_228;
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v98)
      {
        goto LABEL_100;
      }

      v101 = v93 & 0xFFFFFFFFFFFFFF8;
      if (v100 > *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_99;
      }

      v217 = v93;
LABEL_102:
      v89 &= v89 - 1;
      v103 = *(v101 + 16);
      v104 = (*(v101 + 24) >> 1) - v103;
      v105 = v101 + 8 * v103;
      v210 = v101;
      if (v96)
      {
        v107 = sub_267EF9A68();
        if (!v107)
        {
          goto LABEL_116;
        }

        v108 = v107;
        v109 = sub_267EF9A68();
        if (v104 < v109)
        {
          goto LABEL_240;
        }

        v197 = v109;
        v200 = v89;
        v214 = v85;
        if (v108 < 1)
        {
          goto LABEL_241;
        }

        sub_267CF6EF8();
        v110 = 0;
        v111 = v226;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229968, &unk_267EFEBC0);
          v112 = sub_267C73FD8(v225, v110, v111);
          v114 = *v113;
          v112(v225, 0);
          *(v105 + 32 + 8 * v110++) = v114;
        }

        while (v108 != v110);
        v85 = v214;
        v93 = v217;
        v84 = v193;
        v106 = v197;
        v90 = v204;
        v86 = v207;
        v89 = v200;
LABEL_112:

        if (v106 < v221)
        {
          goto LABEL_229;
        }

        if (v106 > 0)
        {
          v115 = *(v210 + 16);
          v65 = __OFADD__(v115, v106);
          v116 = v115 + v106;
          if (v65)
          {
            goto LABEL_235;
          }

          *(v210 + 16) = v116;
        }
      }

      else
      {
        v106 = *((v226 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v106)
        {
          if (v104 < v106)
          {
            goto LABEL_239;
          }

          sub_267CF6EB4();
          swift_arrayInitWithCopy();
          v90 = v204;
          v86 = v207;
          v93 = v217;
          goto LABEL_112;
        }

LABEL_116:

        v93 = v217;
        v90 = v204;
        v86 = v207;
        if (v221 > 0)
        {
          goto LABEL_229;
        }
      }
    }

    if (v98)
    {
LABEL_100:
      sub_267EF9A68();
    }

    else
    {
      v101 = v93 & 0xFFFFFFFFFFFFFF8;
LABEL_99:
      v102 = *(v101 + 16);
    }

    v217 = sub_267EF9BB8();
    v101 = v217 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_102;
  }

  v21 = [v9 referencedMessage];
  if (!v21)
  {
    return;
  }

  v22 = v21;
  v23 = [v21 identifier];
  v24 = sub_267EF9028();

  v25 = *v226;
  v26 = sub_267BC2EE0(v24);

  if (!v26)
  {

    return;
  }

  v189 = v22;
  v225[0] = v20;
  v27 = sub_267BAF0DC(v26);
  v28 = 0;
  v29 = v26 & 0xC000000000000001;
  while (v27 != v28)
  {
    if (v29)
    {
      v30 = MEMORY[0x26D609870](v28, v26);
    }

    else
    {
      if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_221;
      }

      v30 = *(v26 + 8 * v28 + 32);
    }

    v31 = v30;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_220;
    }

    if (sub_267D606A0())
    {
      sub_267EF9BD8();
      v32 = *(v225[0] + 16);
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
    }

    else
    {
    }

    ++v28;
  }

  v117 = v20;
  v118 = 0;
  v119 = v225[0];
  v225[0] = v117;
  while (v27 != v118)
  {
    if (v29)
    {
      v120 = MEMORY[0x26D609870](v118, v26);
    }

    else
    {
      if (v118 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_224;
      }

      v120 = *(v26 + 8 * v118 + 32);
    }

    v121 = v120;
    if (__OFADD__(v118, 1))
    {
      goto LABEL_223;
    }

    if (sub_267D606A0())
    {
    }

    else
    {
      sub_267EF9BD8();
      v122 = *(v225[0] + 16);
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
    }

    ++v118;
  }

  v190 = v225[0];
  v123 = sub_267CF5A70(v119);
  v124 = v123;
  v125 = v123 + 64;
  v126 = 1 << *(v123 + 32);
  v127 = -1;
  if (v126 < 64)
  {
    v127 = ~(-1 << v126);
  }

  v128 = v127 & *(v123 + 64);
  v129 = (v126 + 63) >> 6;

  v131 = 0;
  v132 = MEMORY[0x277D84F90];
  v208 = v129;
  v194 = v125;
  v198 = v130;
  while (2)
  {
    while (2)
    {
      if (v128)
      {
        goto LABEL_140;
      }

      do
      {
        v133 = v131 + 1;
        if (__OFADD__(v131, 1))
        {
          goto LABEL_222;
        }

        if (v133 >= v129)
        {

          sub_267BD057C(v132);
          v156 = sub_267CF5A70(v190);
          v157 = v156;
          v158 = v156 + 64;
          v159 = 1 << *(v156 + 32);
          v160 = -1;
          if (v159 < 64)
          {
            v160 = ~(-1 << v159);
          }

          v161 = v160 & *(v156 + 64);
          v162 = (v159 + 63) >> 6;

          v164 = 0;
          v219 = MEMORY[0x277D84F90];
          v165 = &off_279C2E000;
          v202 = v162;
          v205 = v158;
          v191 = v163;
          while (1)
          {
            if (!v161)
            {
              while (1)
              {
                v166 = v164 + 1;
                if (__OFADD__(v164, 1))
                {
                  break;
                }

                if (v166 >= v162)
                {

                  sub_267BD057C(v219);
                  v188 = [v189 v165[424]];
                  sub_267EF9028();

                  sub_267CF5F28();

                  return;
                }

                v161 = *(v158 + 8 * v166);
                ++v164;
                if (v161)
                {
                  v164 = v166;
                  goto LABEL_180;
                }
              }

LABEL_225:
              __break(1u);
LABEL_226:
              __break(1u);
LABEL_227:
              __break(1u);
LABEL_228:
              __break(1u);
LABEL_229:
              __break(1u);
LABEL_230:
              __break(1u);
LABEL_231:
              __break(1u);
LABEL_232:
              __break(1u);
LABEL_233:
              __break(1u);
LABEL_234:
              __break(1u);
LABEL_235:
              __break(1u);
LABEL_236:
              __break(1u);
LABEL_237:
              __break(1u);
              goto LABEL_238;
            }

LABEL_180:
            v167 = *(*(v157 + 56) + ((v164 << 9) | (8 * __clz(__rbit64(v161)))));
            v168 = v167 >> 62;
            v223 = v167;
            if (v167 >> 62)
            {
              v169 = sub_267EF9A68();
            }

            else
            {
              v169 = *((v167 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v170 = v219 >> 62;
            if (v219 >> 62)
            {
              v171 = sub_267EF9A68();
            }

            else
            {
              v171 = *((v219 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v212 = v169;
            v65 = __OFADD__(v171, v169);
            v172 = v171 + v169;
            if (v65)
            {
              goto LABEL_232;
            }

            if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
            {
              break;
            }

            if (v170)
            {
              goto LABEL_192;
            }

            v173 = v219 & 0xFFFFFFFFFFFFFF8;
            if (v172 > *((v219 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_191;
            }

LABEL_194:
            v161 &= v161 - 1;
            v175 = *(v173 + 16);
            v176 = (*(v173 + 24) >> 1) - v175;
            v177 = v173 + 8 * v175;
            v209 = v173;
            if (v168)
            {
              v179 = sub_267EF9A68();
              if (!v179)
              {
                goto LABEL_208;
              }

              v180 = v179;
              v181 = sub_267EF9A68();
              if (v176 < v181)
              {
                goto LABEL_248;
              }

              v195 = v181;
              if (v180 < 1)
              {
                goto LABEL_249;
              }

              sub_267CF6EF8();
              for (j = 0; j != v180; ++j)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229968, &unk_267EFEBC0);
                v183 = sub_267C73FD8(v225, j, v223);
                v185 = *v184;
                v183(v225, 0);
                *(v177 + 32 + 8 * j) = v185;
              }

              v165 = &off_279C2E000;
              v157 = v191;
              v178 = v195;
LABEL_204:

              v162 = v202;
              v158 = v205;
              if (v178 < v212)
              {
                goto LABEL_233;
              }

              if (v178 > 0)
              {
                v186 = *(v209 + 16);
                v65 = __OFADD__(v186, v178);
                v187 = v186 + v178;
                if (v65)
                {
                  goto LABEL_243;
                }

                *(v209 + 16) = v187;
              }
            }

            else
            {
              v178 = *((v223 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v178)
              {
                if (v176 < v178)
                {
                  goto LABEL_247;
                }

                sub_267CF6EB4();
                swift_arrayInitWithCopy();
                goto LABEL_204;
              }

LABEL_208:

              v162 = v202;
              v158 = v205;
              if (v212 > 0)
              {
                goto LABEL_233;
              }
            }
          }

          if (v170)
          {
LABEL_192:
            sub_267EF9A68();
          }

          else
          {
            v173 = v219 & 0xFFFFFFFFFFFFFF8;
LABEL_191:
            v174 = *(v173 + 16);
          }

          v219 = sub_267EF9BB8();
          v173 = v219 & 0xFFFFFFFFFFFFFF8;
          goto LABEL_194;
        }

        v128 = *(v125 + 8 * v133);
        ++v131;
      }

      while (!v128);
      v131 = v133;
LABEL_140:
      v134 = *(*(v124 + 56) + ((v131 << 9) | (8 * __clz(__rbit64(v128)))));
      v135 = v134 >> 62;
      if (v134 >> 62)
      {
        v136 = sub_267EF9A68();
      }

      else
      {
        v136 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v137 = v132 >> 62;
      if (v132 >> 62)
      {
        v138 = sub_267EF9A68();
      }

      else
      {
        v138 = *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v218 = v136;
      v65 = __OFADD__(v138, v136);
      v139 = v138 + v136;
      if (v65)
      {
        goto LABEL_230;
      }

      v222 = v134;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v137)
        {
          v140 = v132 & 0xFFFFFFFFFFFFFF8;
          goto LABEL_151;
        }

LABEL_152:
        sub_267EF9A68();
        goto LABEL_153;
      }

      if (v137)
      {
        goto LABEL_152;
      }

      v140 = v132 & 0xFFFFFFFFFFFFFF8;
      if (v139 <= *((v132 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v215 = v132;
        goto LABEL_154;
      }

LABEL_151:
      v141 = *(v140 + 16);
LABEL_153:
      v215 = sub_267EF9BB8();
      v140 = v215 & 0xFFFFFFFFFFFFFF8;
LABEL_154:
      v128 &= v128 - 1;
      v142 = *(v140 + 16);
      v143 = (*(v140 + 24) >> 1) - v142;
      v144 = v140 + 8 * v142;
      v211 = v140;
      if (!v135)
      {
        v145 = *((v222 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v145)
        {
          if (v143 >= v145)
          {
            sub_267CF6EB4();
            swift_arrayInitWithCopy();
            v132 = v215;
            v146 = v218;
            goto LABEL_164;
          }

LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
          goto LABEL_246;
        }

LABEL_168:

        v132 = v215;
        v129 = v208;
        if (v218 > 0)
        {
          goto LABEL_231;
        }

        continue;
      }

      break;
    }

    v147 = sub_267EF9A68();
    if (!v147)
    {
      goto LABEL_168;
    }

    v148 = v147;
    v149 = sub_267EF9A68();
    if (v143 < v149)
    {
      goto LABEL_245;
    }

    v201 = v149;
    if (v148 >= 1)
    {
      sub_267CF6EF8();
      for (k = 0; k != v148; ++k)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229968, &unk_267EFEBC0);
        v151 = sub_267C73FD8(v225, k, v222);
        v153 = *v152;
        v151(v225, 0);
        *(v144 + 32 + 8 * k) = v153;
      }

      v125 = v194;
      v124 = v198;
      v132 = v215;
      v146 = v218;
      v145 = v201;
LABEL_164:

      v129 = v208;
      if (v145 < v146)
      {
        goto LABEL_231;
      }

      if (v145 > 0)
      {
        v154 = *(v211 + 16);
        v65 = __OFADD__(v154, v145);
        v155 = v154 + v145;
        if (v65)
        {
          goto LABEL_242;
        }

        *(v211 + 16) = v155;
      }

      continue;
    }

    break;
  }

LABEL_246:
  __break(1u);
LABEL_247:
  __break(1u);
LABEL_248:
  __break(1u);
LABEL_249:
  __break(1u);
}

uint64_t sub_267BE8214()
{
  v1 = [v0 groupName];
  if (v1)
  {
    v2 = v1;
    if (!sub_267EB8F8C())
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v12 = sub_267EF8A08();
      __swift_project_value_buffer(v12, qword_280240FB0);
      v13 = sub_267EF89F8();
      v14 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_5_2(v14))
      {
        v15 = OUTLINED_FUNCTION_32();
        *v15 = 0;
        _os_log_impl(&dword_267B93000, v13, v14, "Is group message (group name)", v15, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      return 1;
    }
  }

  v3 = sub_267BE3F34(v0);
  if (v3)
  {
    v4 = v3;
    sub_267BE3F94(v3);
    v6 = sub_267BAF0DC(v5);

    if (v6)
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v7 = sub_267EF8A08();
      __swift_project_value_buffer(v7, qword_280240FB0);

      v8 = sub_267EF89F8();
      v9 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_5_2(v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 134217984;
        v11 = sub_267BAF0DC(v4);

        *(v10 + 4) = v11;

        _os_log_impl(&dword_267B93000, v8, v9, "Is group message (recipient count: %ld", v10, 0xCu);
        OUTLINED_FUNCTION_32_0();
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      return 1;
    }
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v16 = sub_267EF8A08();
  __swift_project_value_buffer(v16, qword_280240FB0);
  v17 = sub_267EF89F8();
  v18 = sub_267EF95D8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_32();
    *v19 = 0;
    _os_log_impl(&dword_267B93000, v17, v18, "Not a group message", v19, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  return 0;
}

uint64_t sub_267BE84B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267EF8F28();
  *a1 = result;
  return result;
}

uint64_t sub_267BE84FC()
{
  sub_267EF7C18();
  v0 = sub_267EF9218();

  return v0 & 1;
}

uint64_t sub_267BE855C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_179(uint64_t a1@<X8>)
{
  *(v2 + 224) = v1;
  *(v2 + 232) = a1;
  v4 = *(v3 + 32);
}

uint64_t OUTLINED_FUNCTION_179_1()
{
  __swift_destroy_boxed_opaque_existential_0((v1 + 256));
  v3 = *(v2 + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_177_0()
{
  v1 = *(v0 + 1376);
  v2 = *(v0 + 840);
  sub_267B9A5E8((v0 + 496), v0 + 456);

  return sub_267B9B050(v0 + 456, v0 + 536);
}

uint64_t *OUTLINED_FUNCTION_177_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  a24 = a1;

  return __swift_allocate_boxed_opaque_existential_0(&a20);
}

uint64_t OUTLINED_FUNCTION_142_1()
{

  return sub_267EF8F08();
}

void sub_267BE881C(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    OUTLINED_FUNCTION_116_7();
    v4 = (v2 + 32);
    do
    {
      v11 = *v4++;
      v10 = v11;
      if (v11)
      {
        v2 = sub_267BBD380(v10);
      }

      else
      {
        v2 = 0;
      }

      OUTLINED_FUNCTION_158_2();
      if (v13)
      {
        sub_267BE8B74((v12 > 1), v3, 1);
      }

      OUTLINED_FUNCTION_156_0();
    }

    while (!v14);
  }

  if (a2)
  {
    sub_267BAF0DC(a2);
    OUTLINED_FUNCTION_126_6();
    while (1)
    {
      if (v8 == v2)
      {
        v18 = sub_267BAF0DC(v9);
        if (v18)
        {
          OUTLINED_FUNCTION_115_5(v18);
          if (v8 < 0)
          {
            goto LABEL_38;
          }

          v19 = v9;
          do
          {
            if ((v9 & 0xC000000000000001) != 0)
            {
              v20 = MEMORY[0x26D609870](0, v9);
            }

            else
            {
              v20 = *(v9 + 32);
            }

            v21 = v20;
            sub_267BBD380(v20);

            OUTLINED_FUNCTION_152_2();
            if (v13)
            {
              sub_267BE8B74((v22 > 1), v4, 1);
              v19 = v9;
            }

            OUTLINED_FUNCTION_120_6();
          }

          while (!v14);
        }

        else
        {

          v19 = MEMORY[0x277D84F90];
        }

        sub_267BE8BC8(v19);
        return;
      }

      if (v4)
      {
        v15 = MEMORY[0x26D609870](v2, a2);
      }

      else
      {
        if (v2 >= *(v5 + 16))
        {
          goto LABEL_37;
        }

        v15 = *(a2 + 8 * v2 + 32);
      }

      v16 = v15;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if ([v15 (v6 + 3192)])
      {
      }

      else
      {
        sub_267EF9BD8();
        v17 = *(v9 + 16);
        OUTLINED_FUNCTION_154_1();
        sub_267EF9C08();
        OUTLINED_FUNCTION_154_1();
        sub_267EF9C18();
        sub_267EF9BE8();
      }

      ++v2;
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }
}

void *sub_267BE8A44(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A60, &qword_267EFEED8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_267BE8B74(void *a1, int64_t a2, char a3)
{
  result = sub_267BE8A44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t *OUTLINED_FUNCTION_160()
{
  *(v0 + 168) = v1;

  return __swift_allocate_boxed_opaque_existential_0((v0 + 144));
}

uint64_t OUTLINED_FUNCTION_160_0()
{
  result = v0 + 8;
  v3 = *(v0 + 8);
  v4 = *(v1 - 104);
  return result;
}

void sub_267BE8BC8(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_23(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_267BDAEA8(v4, 1, sub_267C70644);
  OUTLINED_FUNCTION_96_2();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_15_13();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
  OUTLINED_FUNCTION_105_3();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_94_2();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_267BE8C80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229FC0, &qword_267EFFDD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267BE8CF0()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_17();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_267BE8D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_28_1();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_53();
  a18 = v20;
  v23 = *(v20 + 440);
  v25 = *(v20 + 368);
  v24 = *(v20 + 376);
  *(v20 + 336) = v23;
  v26 = v23;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v61 = *(v20 + 368);
    OUTLINED_FUNCTION_79_5(v61, v28, v29, *(v20 + 376));
    sub_267B9FED8(v61, &qword_28022ABC0, &unk_267F030D0);
LABEL_10:
    v65 = *(v20 + 440);
    v66 = *(v20 + 408);
    v67 = v65;
    v68 = sub_267EF89F8();
    v69 = sub_267EF95E8();

    v70 = os_log_type_enabled(v68, v69);
    v71 = *(v20 + 440);
    if (v70)
    {
      v72 = OUTLINED_FUNCTION_48();
      v73 = OUTLINED_FUNCTION_52();
      a9 = v73;
      *v72 = 136315138;
      *(v20 + 344) = v71;
      v74 = v71;
      v75 = sub_267EF9098();
      v77 = sub_267BA33E8(v75, v76, &a9);

      *(v72 + 4) = v77;
      _os_log_impl(&dword_267B93000, v68, v69, "Gatekeeper# new message search failed: %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v73);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_18_2();
    }

    else
    {
    }

    v78 = *(v20 + 360);
    if (*(v78 + 120))
    {
      v79 = 0;
      v80 = 2;
    }

    else
    {
      type metadata accessor for SendMessageState();
      OUTLINED_FUNCTION_89_1();
      sub_267BC963C(2);
      OUTLINED_FUNCTION_53_17();
      v78 = *(v20 + 360);
      v80 = 1;
    }

    v81 = *(v20 + 416);
    v82 = *(v20 + 352);
    *(v20 + 128) = v79;
    *(v20 + 176) = v80;
    OUTLINED_FUNCTION_66_3();
    sub_267BE9CA0(v20 + 128, v78 + 56);
    swift_endAccess();
    OUTLINED_FUNCTION_101_8();

    goto LABEL_17;
  }

  v31 = *(v20 + 392);
  v30 = *(v20 + 400);
  v32 = *(v20 + 376);
  v33 = *(v20 + 384);
  v34 = *(v20 + 368);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v32);
  v38 = *(v33 + 32);
  v39 = OUTLINED_FUNCTION_100_0();
  v40(v39);
  (*(v33 + 16))(v31, v30, v32);
  if ((*(v33 + 88))(v31, v32) != *MEMORY[0x277D5BE70])
  {
    v62 = *(v20 + 392);
    v63 = *(*(v20 + 384) + 8);
    (v63)(*(v20 + 400), *(v20 + 376));
    v64 = OUTLINED_FUNCTION_108();
    v63(v64);
    goto LABEL_10;
  }

  v41 = *(v20 + 392);
  (*(*(v20 + 384) + 96))(v41, *(v20 + 376));
  v42 = *v41;
  v43 = sub_267EF2A68();
  v44 = [v43 code];

  if (v44 != *MEMORY[0x277D48478])
  {
    (*(*(v20 + 384) + 8))(*(v20 + 400), *(v20 + 376));

    goto LABEL_10;
  }

  v45 = *(v20 + 408);
  v46 = sub_267EF89F8();
  v47 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_10_2(v47))
  {
    v48 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_4_2(v48);
    OUTLINED_FUNCTION_29_19(&dword_267B93000, v49, v27, "Gatekeeper# App is disabled for Siri. TCC is required");
    OUTLINED_FUNCTION_29_1();
  }

  v50 = *(v20 + 440);
  v51 = *(v20 + 416);
  v52 = *(v20 + 400);
  v53 = *(v20 + 376);
  v54 = *(v20 + 384);
  v55 = *(v20 + 352);
  v56 = *(v20 + 360);

  *(v20 + 184) = v51;
  *(v20 + 232) = 4;
  OUTLINED_FUNCTION_66_3();
  v57 = v51;
  sub_267BE9CA0(v20 + 184, v56 + 56);
  swift_endAccess();
  sub_267EF3FB8();

  v58 = *(v54 + 8);
  v59 = OUTLINED_FUNCTION_44_0();
  v60(v59);
LABEL_17:
  v84 = *(v20 + 392);
  v83 = *(v20 + 400);
  v85 = *(v20 + 368);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v87(v86, v87, v88, v89, v90, v91, v92, v93, a9, a10, a11, a12);
}

uint64_t sub_267BE916C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = v3[5];

    v13 = v3[2];
    OUTLINED_FUNCTION_4_3();

    return v14();
  }
}

uint64_t sub_267BE9290()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_9_1();
  *v6 = v5;
  v8 = *(v7 + 48);
  v9 = *v1;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v5 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_26_1();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    v14 = *(v5 + 40);

    v15 = *(v9 + 8);

    return v15(v3);
  }
}

void sub_267BE93C8(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, void *a4)
{
  v7 = sub_267EF43D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229FC0, &qword_267EFFDD8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v36 - v14);
  sub_267BE8C80(a1, &v36 - v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v11, v15, v7);
    sub_267BE9CD8(&unk_28022AE10, MEMORY[0x277D5BE90]);
    v16 = swift_allocError();
    (*(v8 + 16))(v17, v11, v7);
    a2(v16, 1);

    (*(v8 + 8))(v11, v7);
  }

  else
  {
    v18 = *v15;
    v19 = [a4 typeName];
    v20 = sub_267EF9028();
    v22 = v21;

    v23 = sub_267C86350(v18, v20, v22);

    if (v23 && (objc_opt_self(), (v24 = swift_dynamicCastObjCClass()) != 0))
    {
      v25 = v24;
      v23 = v23;
      a2(v25, 0);
    }

    else
    {
      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v26 = sub_267EF8A08();
      __swift_project_value_buffer(v26, qword_280240FB0);
      v27 = sub_267EF89F8();
      v28 = sub_267EF95E8();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_267B93000, v27, v28, "No valid intent response found", v29, 2u);
        MEMORY[0x26D60A7B0](v29, -1, -1);
      }

      v30 = sub_267EF3E98();
      v31 = *(v30 + 48);
      v32 = *(v30 + 52);
      swift_allocObject();
      v33 = sub_267EF3E88();
      sub_267BE9CD8(&qword_280229FC8, MEMORY[0x277D5BCB8]);
      v34 = swift_allocError();
      *v35 = v33;
      a2(v34, 1);
    }
  }
}

uint64_t sub_267BE97B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_1_69();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_267BE986C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_76_4(a1, a2, a3);
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 80);
  v7 = OUTLINED_FUNCTION_18_11();

  return a4(v7);
}

uint64_t sub_267BE98D8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 424);
  *v3 = *v1;
  *(v2 + 432) = v6;
  *(v2 + 440) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267BE99DC(id a1, char a2)
{
  if (a2)
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    if (sub_267EF9E78())
    {
      sub_267C095E0(a1);
    }

    else
    {
      swift_allocError();
      *v6 = a1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A3C0, &qword_267F00A88);
    return sub_267EF93B8();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A3C0, &qword_267F00A88);
    return sub_267EF93C8();
  }
}

uint64_t sub_267BE9AD8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 2200);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267BE9BBC(void *a1)
{
  v2 = [a1 typeName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_267EF9028();

  return v3;
}

uint64_t sub_267BE9C54(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t sub_267BE9CD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267BE9D20()
{
  v1 = *(v0 + 112);
  result = sub_267EF7C18();
  if (!v3)
  {
    return 0x6E776F6E6B6E75;
  }

  return result;
}

uint64_t sub_267BE9D64(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  v4 = OUTLINED_FUNCTION_4();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267BE9D90()
{
  OUTLINED_FUNCTION_56();
  if ((*(v0[30] + 120) & 1) == 0)
  {
    v1 = v0[29];
  }

  if (v0[29] > 0)
  {
    v2 = v0[29];
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[31] = v3;
  *v3 = v4;
  v3[1] = sub_267BCED24;
  v5 = v0[30];

  return sub_267BE9E58();
}

uint64_t sub_267BE9E58()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 232) = v2;
  *(v1 + 240) = v0;
  *(v1 + 456) = v3;
  *(v1 + 224) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v5);
  v7 = *(v6 + 64);
  *(v1 + 248) = OUTLINED_FUNCTION_2();
  v8 = sub_267EF3CF8();
  OUTLINED_FUNCTION_18(v8);
  v10 = *(v9 + 64);
  *(v1 + 256) = OUTLINED_FUNCTION_2();
  v11 = sub_267EF48A8();
  *(v1 + 264) = v11;
  OUTLINED_FUNCTION_30_0(v11);
  *(v1 + 272) = v12;
  v14 = *(v13 + 64);
  *(v1 + 280) = OUTLINED_FUNCTION_2();
  v15 = sub_267EF8228();
  *(v1 + 288) = v15;
  OUTLINED_FUNCTION_30_0(v15);
  *(v1 + 296) = v16;
  v18 = *(v17 + 64);
  *(v1 + 304) = OUTLINED_FUNCTION_2();
  v19 = sub_267EF79B8();
  *(v1 + 312) = v19;
  OUTLINED_FUNCTION_30_0(v19);
  *(v1 + 320) = v20;
  v22 = *(v21 + 64);
  *(v1 + 328) = OUTLINED_FUNCTION_50();
  *(v1 + 336) = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_267BE9FF4()
{
  v1 = *(v0 + 336);
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = *(v0 + 288);
  v5 = *(v0 + 240);
  v42 = *(v3 + 104);
  v42(v2, *MEMORY[0x277D5D458], v4);
  v6 = v5[5];
  v7 = v5[6];
  __swift_project_boxed_opaque_existential_0(v5 + 2, v6);
  OUTLINED_FUNCTION_14_4();
  v8(v6, v7);
  v9 = sub_267BEA714(v2, (v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v10 = *(v3 + 8);
  v10(v2, v4);
  *(v0 + 208) = v9;
  sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
  sub_267EF8348();
  v41 = *(v0 + 328);
  v11 = *(v0 + 304);
  v12 = *(v0 + 288);

  v42(v11, *MEMORY[0x277D5D4B8], v12);
  v13 = v5[6];
  __swift_project_boxed_opaque_existential_0(v5 + 2, v5[5]);
  v14 = *(v13 + 8);
  v15 = OUTLINED_FUNCTION_25_0();
  v16(v15, v13);
  v17 = sub_267BEA714(v11, (v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v10(v11, v12);
  *(v0 + 216) = v17;
  sub_267EF8348();
  v18 = *(v0 + 240);
  v19 = *(v0 + 456);

  v20 = __swift_project_boxed_opaque_existential_0((v18 + 392), *(v18 + 416));
  v21 = *(v0 + 336);
  if (v19)
  {
    if (v19 == 1)
    {
      v23 = *(v0 + 232);
      v22 = *(v0 + 240);
      v24 = swift_task_alloc();
      *(v0 + 392) = v24;
      v24[2] = v23;
      v24[3] = v22;
      v24[4] = v21;
      v25 = *v20;
      v26 = swift_task_alloc();
      *(v0 + 400) = v26;
      *v26 = v0;
      v26[1] = sub_267E1BFF4;
      OUTLINED_FUNCTION_15();

      return sub_267EC0238();
    }

    else
    {
      v36 = *(v0 + 328);
      v37 = swift_task_alloc();
      *(v0 + 368) = v37;
      *(v37 + 16) = v21;
      *(v37 + 24) = v36;
      v38 = *v20;
      v39 = swift_task_alloc();
      *(v0 + 376) = v39;
      *v39 = v0;
      v39[1] = sub_267BC7CF8;
      OUTLINED_FUNCTION_15();

      return sub_267BEA460();
    }
  }

  else
  {
    v29 = *(v0 + 328);
    v31 = *(v0 + 232);
    v30 = *(v0 + 240);
    v32 = swift_task_alloc();
    *(v0 + 344) = v32;
    v32[2] = v31;
    v32[3] = v30;
    v32[4] = v21;
    v32[5] = v29;
    v33 = *v20;
    v34 = swift_task_alloc();
    *(v0 + 352) = v34;
    *v34 = v0;
    v34[1] = sub_267E1BBA4;
    OUTLINED_FUNCTION_15();

    return sub_267EBFBEC();
  }
}

uint64_t sub_267BEA460()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_22_38(v1, v2);
  v4 = type metadata accessor for GatekeeperSendCallParameters(v3);
  OUTLINED_FUNCTION_79_3(v4);
  v6 = *(v5 + 64) + 15;
  *(v0 + 48) = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267BEA4E0()
{
  OUTLINED_FUNCTION_62();
  v2 = OUTLINED_FUNCTION_25_44();
  OUTLINED_FUNCTION_0_78(v2);
  v3 = *(v0 + 4);
  v4 = swift_task_alloc();
  *(v1 + 56) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_6_60(v4);

  return v6(v5);
}

uint64_t sub_267BEA59C()
{
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_60_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_71_5(v4);

  return sub_267BEAB3C(v6, v7, v1);
}

uint64_t OUTLINED_FUNCTION_102_0()
{
}

uint64_t OUTLINED_FUNCTION_102_2()
{

  return sub_267EF9B68();
}

void OUTLINED_FUNCTION_102_5(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_102_6(uint64_t result)
{
  v1[8] = result;
  v1[4] = v2;
  v1[5] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_102_8()
{

  return sub_267EF4468();
}

__n128 *OUTLINED_FUNCTION_102_9(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_102_10()
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  *(v3 + 16) = v0;
  *(v3 + 24) = v1;
  return v4;
}

id sub_267BEA714(uint64_t a1, void *a2)
{
  v3 = sub_267EF8428();
  v4 = OUTLINED_FUNCTION_58(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_0();
  v11 = v10 - v9;
  sub_267BA9F38(0, &unk_28022BC90, 0x277D5C220);
  (*(v6 + 104))(v11, *MEMORY[0x277D5D6F8], v3);
  sub_267EF8418();
  v12 = *(v6 + 8);
  v13 = OUTLINED_FUNCTION_108();
  v14(v13);
  v15 = sub_267BEA93C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA78, &unk_267F08660);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFC020;
  v17 = MEMORY[0x277D837D0];
  sub_267EF9AE8();
  v18 = sub_267EF8218();
  *(inited + 96) = v17;
  *(inited + 72) = v18;
  *(inited + 80) = v19;
  v20 = sub_267EF8F28();
  sub_267BEA9B0(v20, v15);
  v21 = objc_opt_self();
  v22 = a2[3];
  v23 = a2[4];
  OUTLINED_FUNCTION_131(a2);
  v24 = sub_267EF3C68();
  v25 = [v21 runSiriKitExecutorCommandWithContext:v24 payload:v15];

  return v25;
}

id sub_267BEA93C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_267EF8FF8();

  v2 = [v0 initWithIdentifier_];

  return v2;
}

void sub_267BEA9B0(uint64_t a1, void *a2)
{
  v3 = sub_267EF8EE8();

  [a2 setUserData_];
}

uint64_t sub_267BEAA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = v12[3];
  v14 = v12[4];
  v15 = v12[2];
  v16 = *(type metadata accessor for GatekeeperSendCallParameters(0) + 20);
  OUTLINED_FUNCTION_74();
  sub_267B9FED8(v17, v18, v19);
  v20 = sub_267EF79B8();
  OUTLINED_FUNCTION_5_0(v20);
  v22 = *(v21 + 16);
  v22(v15 + v16, v13, v20);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v20);
  OUTLINED_FUNCTION_74();
  sub_267B9FED8(v26, v27, v28);
  v22(v15, v14, v20);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v20);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
}

uint64_t sub_267BEAB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_267BEAA30, 0, 0);
}

uint64_t sub_267BEAB60()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 64) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267BEAC5C()
{
  v1 = v0[6];
  v0[9] = sub_267BEAD24(type metadata accessor for GatekeeperSendCallParameters);
  v2 = OUTLINED_FUNCTION_28_0(MEMORY[0x277D55BE8]);
  v0[10] = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_55_2(v2);
  v3 = OUTLINED_FUNCTION_28_2(19);

  return v4(v3);
}

uint64_t sub_267BEAD24(uint64_t (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v36 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v36 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v36 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_267F00200;
  OUTLINED_FUNCTION_12_1();
  *(v20 + 32) = 0xD000000000000012;
  *(v20 + 40) = v21;
  sub_267C2FB6C(v1, v18, &unk_28022AE30, &qword_267EFC0B0);
  v22 = sub_267EF79B8();
  OUTLINED_FUNCTION_7_0(v18);
  if (v23)
  {
    sub_267B9F98C(v18, &unk_28022AE30, &qword_267EFC0B0);
    *(v19 + 48) = 0u;
    *(v19 + 64) = 0u;
  }

  else
  {
    *(v19 + 72) = v22;
    __swift_allocate_boxed_opaque_existential_0((v19 + 48));
    OUTLINED_FUNCTION_8_9();
    (*(v24 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v19 + 80) = 0xD000000000000017;
  *(v19 + 88) = v25;
  v26 = MEMORY[0x277D839B0];
  *(v19 + 96) = 0;
  *(v19 + 120) = v26;
  *(v19 + 128) = 0xD000000000000018;
  *(v19 + 136) = 0x8000000267F1D420;
  v27 = a1(0);
  sub_267C2FB6C(v1 + v27[5], v16, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v16);
  if (v23)
  {
    sub_267B9F98C(v16, &unk_28022AE30, &qword_267EFC0B0);
    *(v19 + 144) = 0u;
    *(v19 + 160) = 0u;
  }

  else
  {
    *(v19 + 168) = v22;
    __swift_allocate_boxed_opaque_existential_0((v19 + 144));
    OUTLINED_FUNCTION_8_9();
    (*(v28 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v19 + 176) = 0xD00000000000001FLL;
  *(v19 + 184) = v29;
  sub_267C2FB6C(v1 + v27[6], v13, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v13);
  if (v23)
  {
    sub_267B9F98C(v13, &unk_28022AE30, &qword_267EFC0B0);
    *(v19 + 192) = 0u;
    *(v19 + 208) = 0u;
  }

  else
  {
    *(v19 + 216) = v22;
    __swift_allocate_boxed_opaque_existential_0((v19 + 192));
    OUTLINED_FUNCTION_8_9();
    (*(v30 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v19 + 224) = 0xD000000000000026;
  *(v19 + 232) = v31;
  sub_267C2FB6C(v1 + v27[7], v10, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v10);
  if (v23)
  {
    sub_267B9F98C(v10, &unk_28022AE30, &qword_267EFC0B0);
    *(v19 + 240) = 0u;
    *(v19 + 256) = 0u;
  }

  else
  {
    *(v19 + 264) = v22;
    __swift_allocate_boxed_opaque_existential_0((v19 + 240));
    OUTLINED_FUNCTION_8_9();
    (*(v32 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v19 + 272) = 0xD00000000000001CLL;
  *(v19 + 280) = v33;
  sub_267C2FB6C(v1 + v27[8], v7, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_7_0(v7);
  if (v23)
  {
    sub_267B9F98C(v7, &unk_28022AE30, &qword_267EFC0B0);
    *(v19 + 288) = 0u;
    *(v19 + 304) = 0u;
  }

  else
  {
    *(v19 + 312) = v22;
    __swift_allocate_boxed_opaque_existential_0((v19 + 288));
    OUTLINED_FUNCTION_8_9();
    (*(v34 + 32))();
  }

  return v19;
}

void OUTLINED_FUNCTION_118_2()
{
  v4 = v1[15];
  v3 = v1[16];
  v5 = v1[13];
  v6 = v1[14];
}

uint64_t OUTLINED_FUNCTION_118_4()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);
  v4 = *(v0 + 107);
  v5 = *(v0 + 106);
  v6 = *(v0 + 105);
  v7 = *(v0 + 104);
  v8 = *(*(v0 + 40) + 20);

  return sub_267EF79B8();
}

uint64_t OUTLINED_FUNCTION_118_6(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;

  return swift_willThrow();
}

void *OUTLINED_FUNCTION_118_7()
{
  v2 = *(v0 - 136);
  v3 = *(v0 - 144);

  return __swift_project_boxed_opaque_existential_0((v0 - 168), v3);
}

unint64_t ConversationEventStore.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_267BEB478(0xD00000000000001BLL, 0x8000000267F132A0);
  if (v3)
  {
    v4 = v3;
    result = sub_267BEB4DC();
    *(a1 + 24) = result;
    *(a1 + 32) = &off_2878D36E8;
    *a1 = v4;
    *(a1 + 80) = 0xD00000000000001BLL;
    *(a1 + 88) = 0x8000000267F132A0;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0;
  }

  else
  {
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    sub_267EF9B68();
    MEMORY[0x26D608E60](0xD00000000000004DLL, 0x8000000267F132C0);
    MEMORY[0x26D608E60](0xD00000000000001BLL, 0x8000000267F132A0);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v6 = sub_267EF8A08();
    __swift_project_value_buffer(v6, qword_280240FB0);
    OUTLINED_FUNCTION_43();

    v7 = sub_267EF89F8();
    v8 = sub_267EF95E8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = OUTLINED_FUNCTION_48();
      v10 = OUTLINED_FUNCTION_52();
      v11[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_267BA33E8(0, 0xE000000000000000, v11);
      _os_log_impl(&dword_267B93000, v7, v8, "Fatal error: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    result = sub_267EF9C98();
    __break(1u);
  }

  return result;
}

id sub_267BEB478(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_267EF8FF8();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

unint64_t sub_267BEB4DC()
{
  result = qword_280229280;
  if (!qword_280229280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280229280);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_267BEB588()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v104 = v9;
  v99 = type metadata accessor for SendMessageFlow.State(0);
  v10 = OUTLINED_FUNCTION_22(v99);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_0();
  v100 = v14 - v13;
  OUTLINED_FUNCTION_26_2();
  v15 = sub_267EF4C08();
  v16 = OUTLINED_FUNCTION_18(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_0();
  v96 = v20 - v19;
  OUTLINED_FUNCTION_26_2();
  sub_267EF4BA8();
  OUTLINED_FUNCTION_23();
  v97 = v22;
  v98 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6();
  v94 = v25;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v26);
  v95 = &v94 - v27;
  OUTLINED_FUNCTION_26_2();
  v28 = sub_267EF68A8();
  OUTLINED_FUNCTION_23();
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3_62();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299A8, &unk_267F00CF0);
  v35 = OUTLINED_FUNCTION_18(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v94 - v38;
  v105 = v8;
  v40 = sub_267BEC254();
  v41 = *(v40 + 104);
  *(v40 + 104) = v6;

  *(v40 + 144) = v4;
  sub_267BEBE48();
  v102 = v2;
  sub_267B9AFEC(v2 + 16, &v106);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298C8, &unk_267EFEC00);
  v103 = v39;
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  v46 = qword_2802286F0;

  if (v46 != -1)
  {
    OUTLINED_FUNCTION_4_0();
  }

  sub_267B9AFEC(qword_2802405A0, v120);
  sub_267EF8668();
  sub_267EF3838();
  sub_267EF6898();
  v47 = type metadata accessor for StewieStateMonitor();
  inited = swift_initStaticObject();
  __swift_mutable_project_boxed_opaque_existential_1(v120, v121);
  v116 = &type metadata for CATProvider;
  v117 = &off_2878CE7A0;
  v113 = &type metadata for MessagesFeatureFlagsImpl;
  v114 = &off_2878D1228;
  v110 = v28;
  v111 = &off_2878D54D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v109);
  (*(v30 + 16))(boxed_opaque_existential_0, v1, v28);
  v108[3] = v47;
  v108[4] = &off_2878CE700;
  v108[0] = inited;
  v50 = type metadata accessor for SendMessageRCHFlowStrategy();
  OUTLINED_FUNCTION_27_4(v50);
  v51 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v115, v116);
  __swift_mutable_project_boxed_opaque_existential_1(v112, v113);
  v52 = v110;
  __swift_mutable_project_boxed_opaque_existential_1(v109, v110);
  OUTLINED_FUNCTION_28_7();
  v101 = v53;
  OUTLINED_FUNCTION_23();
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_0_0();
  v59 = v58 - v57;
  (*(v60 + 16))(v58 - v57);
  __swift_mutable_project_boxed_opaque_existential_1(v108, v47);
  OUTLINED_FUNCTION_23();
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_0_0();
  v65 = OUTLINED_FUNCTION_28_29(v64);
  v66(v65);
  v67 = sub_267BEC408(v40, &v106, v103, v119, v118, v59, *v52, v51);
  (*(v30 + 8))(v1, v28);
  __swift_destroy_boxed_opaque_existential_0(v108);
  __swift_destroy_boxed_opaque_existential_0(v109);
  __swift_destroy_boxed_opaque_existential_0(v112);
  __swift_destroy_boxed_opaque_existential_0(v115);
  __swift_destroy_boxed_opaque_existential_0(v120);
  v68 = v102;
  sub_267BED974();
  v70 = v69;
  v71 = v105;
  sub_267BCCFA4(v105, &v106);
  v103 = v67;
  if (BYTE8(v107[1]))
  {
    v72 = *(&v106 + 1);

    v73 = *__swift_project_boxed_opaque_existential_0((v68 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_siriKitFlowFactory), *(v68 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_siriKitFlowFactory + 24));
    sub_267BF04E0();

LABEL_7:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v82 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v82, qword_280240FB0);
    v83 = sub_267EF89F8();
    v84 = sub_267EF95C8();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = OUTLINED_FUNCTION_32();
      *v85 = 0;
      _os_log_impl(&dword_267B93000, v83, v84, "#SendMessageFlow pushing RCHFlow", v85, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v86 = v100;
    swift_storeEnumTagMultiPayload();
    v87 = OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_state;
    OUTLINED_FUNCTION_66_3();
    sub_267B9DC10(v86, v68 + v87);
    swift_endAccess();
    sub_267BCCFA4(v71, &v106);
    v88 = swift_allocObject();
    *(v88 + 16) = v68;
    v89 = v107[0];
    *(v88 + 24) = v106;
    *(v88 + 40) = v89;
    *(v88 + 49) = *(v107 + 9);

    sub_267EF3FD8();

    goto LABEL_17;
  }

  sub_267B9A5E8(&v106, v120);
  v74 = *__swift_project_boxed_opaque_existential_0((v68 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_siriKitFlowFactory), *(v68 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_siriKitFlowFactory + 24));
  v101 = v70;
  sub_267E2F338();
  v75 = v121;
  v76 = v122;
  __swift_project_boxed_opaque_existential_0(v120, v121);
  v77 = *(v76 + 8);

  v78 = v94;
  v77(v75, v76);
  sub_267EF4B88();
  v79 = v98;
  v80 = *(v97 + 8);
  v80(v78, v98);
  v81 = v95;
  sub_267EF4B98();
  LOBYTE(v74) = sub_267EF3528();

  v80(v81, v79);
  if (v74)
  {
    __swift_destroy_boxed_opaque_existential_0(v120);
    v71 = v105;
    goto LABEL_7;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v90 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v90, qword_280240FB0);
  v91 = sub_267EF89F8();
  v92 = sub_267EF95E8();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_31_5(v93);
    OUTLINED_FUNCTION_66_16(&dword_267B93000, v91, v92, "#SendMessageFlow RCHFlow.on() returned false");
    OUTLINED_FUNCTION_18_2();
  }

  sub_267EF4018();

  __swift_destroy_boxed_opaque_existential_0(v120);
LABEL_17:
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267BEBDE4()
{
  v1 = *(v0 + 16);

  if (*(v0 + 64))
  {
    v2 = *(v0 + 24);

    v3 = *(v0 + 40);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  }

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

void sub_267BEBE48()
{
  if (*(v0 + 16) - 3 >= 3)
  {
    v4 = v0;
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v5 = sub_267EF8A08();
    __swift_project_value_buffer(v5, qword_280240FB0);
    v6 = sub_267EF89F8();
    v7 = sub_267EF95D8();
    if (os_log_type_enabled(v6, v7))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_28_11(&dword_267B93000, v8, v9, "#SendMessageState initializing SendMessageIntentConfirmationInferrer");
      OUTLINED_FUNCTION_32_0();
    }

    type metadata accessor for SendMessageIntentConfirmationInferrer();
    swift_allocObject();
    v10 = sub_267BEC01C(0);
    v11 = *(v4 + 112);
    *(v4 + 112) = v10;
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v1 = sub_267EF8A08();
    __swift_project_value_buffer(v1, qword_280240FB0);
    oslog = sub_267EF89F8();
    v2 = sub_267EF95D8();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = OUTLINED_FUNCTION_32();
      *v3 = 0;
      _os_log_impl(&dword_267B93000, oslog, v2, "#SendMessageState not initializing SendMessageIntentConfirmationInferrer", v3, 2u);
      OUTLINED_FUNCTION_32_0();
    }
  }
}

uint64_t sub_267BEC01C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  if (!a1)
  {
    v7 = sub_267EF93F8();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    sub_267D76104();
    a1 = v9;
  }

  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_267BEC100()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t OUTLINED_FUNCTION_81_3()
{
  v3 = *(v1 + 136);
  v4 = *(v1 + 128);
  v5 = *(v1 + 112);
  **(v1 + 144) = v0;

  return swift_storeEnumTagMultiPayload();
}

BOOL OUTLINED_FUNCTION_81_4()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_81_5()
{
  result = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  return result;
}

unint64_t OUTLINED_FUNCTION_81_6()
{

  return sub_267C266B0();
}

void OUTLINED_FUNCTION_81_8()
{
  *(v5 - 136) = v0[160];
  *(v5 - 128) = v4;
  v7 = v0[159];
  *(v5 - 120) = v2;
  *(v5 - 112) = v3;
  v8 = v0[141];
  *(v5 - 104) = v0[140];
  v9 = v0[108];
  v10 = v0[106];
  v11 = v0[93];
  *(v5 - 144) = v0[87];
}

void OUTLINED_FUNCTION_81_9()
{
  v4 = *(v3 - 152);
  *(v0 + 64) = v2;
  *(v0 + 48) = v1;
}

uint64_t OUTLINED_FUNCTION_81_12()
{

  return sub_267EF5638();
}

uint64_t sub_267BEC254()
{
  sub_267BCCFA4(v0, &v18);
  if (v20)
  {
    v1 = *(&v18 + 1);
    v2 = v19;
  }

  else
  {
    sub_267B9A5E8(&v18, v15);
    v3 = v17;
    __swift_project_boxed_opaque_existential_0(v15, v16);
    v4 = *(v3 + 144);
    v5 = OUTLINED_FUNCTION_26_0();
    v6(v5);
    __swift_project_boxed_opaque_existential_0(v15, v16);
    v7 = OUTLINED_FUNCTION_108();
    if (sub_267E583B0(v7, v8))
    {
      sub_267DD2D80();
      OUTLINED_FUNCTION_74_0();
    }

    type metadata accessor for SendMessageState();
    OUTLINED_FUNCTION_59_0();
    v2 = sub_267D60CC0(v9, v10, v11);
    v12 = v16;
    v13 = v17;
    __swift_project_boxed_opaque_existential_0(v15, v16);
    *(v2 + 145) = (*(v13 + 480))(v12, v13) & 1;
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  return v2;
}

uint64_t type metadata accessor for SendMessageRCHFlowStrategy()
{
  result = qword_28022A938;
  if (!qword_28022A938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_267BEC408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v97 = a4;
  v98 = a5;
  v96 = a3;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298C8, &unk_267EFEC00);
  v92 = *(v90 - 8);
  v14 = *(v92 + 64);
  MEMORY[0x28223BE20](v90);
  v91 = &v83 - v15;
  v16 = sub_267EF7B88();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v89 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_267EF68A8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v95 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299A8, &unk_267F00CF0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v99 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v94 = &v83 - v27;
  v141[3] = &type metadata for CATProvider;
  v141[4] = &off_2878CE7A0;
  v140[3] = &type metadata for MessagesFeatureFlagsImpl;
  v140[4] = &off_2878D1228;
  v139[3] = v19;
  v139[4] = &off_2878D54D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v139);
  v87 = v20;
  v29 = *(v20 + 32);
  v86 = v20 + 32;
  v93 = v29;
  (v29)(boxed_opaque_existential_0, a6, v19);
  v138[3] = type metadata accessor for StewieStateMonitor();
  v138[4] = &off_2878CE700;
  v138[0] = a7;
  v30 = (a8 + OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_appName);
  *v30 = 0;
  v30[1] = 0;
  sub_267B9AFEC(v138, a8 + OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_stewieStateMonitor);
  v31 = a8 + OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_contextConversationResolver;
  sub_267B9AFEC(a4, a8 + OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_contextConversationResolver);
  sub_267B9AFEC(a2, (v31 + 40));
  sub_267B9AFEC(v139, v124);
  v32 = a2;
  v33 = *(a2 + 24);
  v34 = *(a2 + 32);
  __swift_project_boxed_opaque_existential_0(v32, v33);
  v35 = *(v34 + 8);

  v35(v137, v33, v34);
  v36 = v32;
  sub_267EF3838();
  v37 = v124[3];
  v38 = __swift_mutable_project_boxed_opaque_existential_1(v124, v124[3]);
  v39 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v41 = &v83 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v42 + 16))(v41);
  v133 = v19;
  v134 = &off_2878D54D8;
  v43 = __swift_allocate_boxed_opaque_existential_0(v132);
  v44 = v93;
  (v93)(v43, v41, v19);
  type metadata accessor for SendMessageChangeHandler();
  v45 = swift_allocObject();
  v46 = v133;
  v47 = __swift_mutable_project_boxed_opaque_existential_1(v132, v133);
  v48 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v83 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v51 + 16))(v50);
  v45[6] = v19;
  v45[7] = &off_2878D54D8;
  v52 = __swift_allocate_boxed_opaque_existential_0(v45 + 3);
  v88 = v19;
  (v44)(v52, v50, v19);
  v86 = a1;
  v45[2] = a1;
  sub_267B9A5E8(v137, (v45 + 8));
  sub_267B9A5E8(&v135, (v45 + 13));
  __swift_destroy_boxed_opaque_existential_0(v132);
  __swift_destroy_boxed_opaque_existential_0(v124);
  *(a8 + OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_changeHandler) = v45;
  v93 = v36;
  sub_267B9AFEC(v36, v137);
  sub_267B9AFEC(v141, &v135);
  sub_267C2FB6C(v96, v94, &qword_2802299A8, &unk_267F00CF0);
  sub_267B9AFEC(v140, v132);
  sub_267B9AFEC(v98, v131);
  sub_267B9AFEC(v97, v130);
  v53 = sub_267EF8938();
  v54 = sub_267EF8928();
  v129[4] = MEMORY[0x277D5FDD8];
  v84 = v53;
  v129[3] = v53;
  v129[0] = v54;
  v85 = sub_267EF3AA8();
  v55 = type metadata accessor for NetworkStatusProvider();
  v56 = swift_allocObject();
  sub_267BA9F38(0, &qword_280229280, 0x277CBEBD0);
  sub_267BF0A00(v128);
  v57 = [objc_allocWithZone(MEMORY[0x277CEF2E8]) init];
  v58 = sub_267BA9F38(0, &qword_28022C300, 0x277CEF2E8);
  v127 = &off_2878CF540;
  v126 = v58;
  *&v125 = v57;
  v59 = sub_267EF72E8();
  v60 = v95;
  sub_267EF6898();
  ConversationEventStore.init()(v124);
  if (qword_280228730 != -1)
  {
    swift_once();
  }

  v61 = qword_280240A10;
  v122 = type metadata accessor for EligibleAppFinder();
  v123 = sub_267B9DEEC(&qword_28022A688, type metadata accessor for EligibleAppFinder);
  *&v121 = v61;
  v62 = type metadata accessor for ShareSheetProvider();
  v63 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(&v135, v136);
  __swift_mutable_project_boxed_opaque_existential_1(v132, v133);
  v119 = &type metadata for CATProvider;
  v120 = &off_2878CE7A0;
  v117[3] = &type metadata for MessagesFeatureFlagsImpl;
  v117[4] = &off_2878D1228;
  v116[3] = v55;
  v116[4] = &off_2878D2ED0;
  v116[0] = v56;
  v114 = &type metadata for TTSUtil;
  v115 = &off_2878D0CB0;
  *&v113 = v59;
  *(&v113 + 1) = &off_2878D0918;
  v64 = v88;
  v111 = v88;
  v112 = &off_2878D54D8;
  v65 = __swift_allocate_boxed_opaque_existential_0(&v110);
  v66 = v87;
  (*(v87 + 16))(v65, v60, v64);
  v108 = v62;
  v109 = &off_2878D0D48;
  *&v107 = v63;
  a8[7] = v86;
  sub_267B9AFEC(v118, (a8 + 8));
  type metadata accessor for SendMessageCATs();

  sub_267EF7B68();
  a8[13] = sub_267EF78E8();
  type metadata accessor for SendMessageCATsSimple();
  sub_267EF7B68();
  *(a8 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageCATsSimple) = sub_267EF79E8();
  type metadata accessor for MessagesCATs();
  sub_267EF7B68();
  a8[15] = sub_267EF78E8();
  __swift_project_boxed_opaque_existential_0(v118, v119);
  a8[14] = sub_267BB4A3C();
  v67 = v94;
  v68 = v99;
  sub_267C2FB6C(v94, v99, &qword_2802299A8, &unk_267F00CF0);
  v69 = v68;
  v70 = v90;
  v71 = v64;
  if (__swift_getEnumTagSinglePayload(v69, 1, v90) == 1)
  {
    v105 = v64;
    v106 = &off_2878D54D8;
    __swift_allocate_boxed_opaque_existential_0(&v104);
    sub_267EF6898();
    v72 = v70;
    v73 = v84;
    v74 = sub_267EF8928();
    v103[3] = v73;
    v103[4] = MEMORY[0x277D5FDD8];
    v103[0] = v74;
    sub_267B9AFEC(v137, v102);
    sub_267B9AFEC(&v104, v101);
    sub_267B9AFEC(v103, v100);
    v75 = swift_allocObject();
    sub_267B9A5E8(v102, v75 + 16);
    sub_267B9A5E8(v101, v75 + 56);
    sub_267B9A5E8(v100, v75 + 96);
    sub_267EF4C08();
    sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
    v70 = v72;
    v76 = v91;
    sub_267EF7058();
    __swift_destroy_boxed_opaque_existential_0(v103);
    __swift_destroy_boxed_opaque_existential_0(&v104);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v99, 1, v70);
    v78 = v92;
    if (EnumTagSinglePayload != 1)
    {
      sub_267B9F98C(v99, &qword_2802299A8, &unk_267F00CF0);
    }
  }

  else
  {
    v76 = v91;
    v78 = v92;
    (*(v92 + 32))(v91, v99, v70);
  }

  (*(v78 + 32))(a8 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_transformer, v76, v70);
  sub_267B9AFEC(v117, a8 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags);
  sub_267B9AFEC(v129, a8 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_referenceResolver);
  v79 = (a8 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_disambiguationSnippetProvider);
  *v79 = v85;
  v79[1] = &off_2878D5360;
  sub_267B9AFEC(v131, a8 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender);
  sub_267B9AFEC(v116, a8 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_networkStatusProvider);
  sub_267B9AFEC(v128, a8 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_userDefaults);
  v80 = type metadata accessor for SendMessageCATPatternsExecutor(0);
  sub_267EF7B68();
  v81 = sub_267EF78E8();
  v105 = v80;
  v106 = &off_2878D1100;

  *&v104 = v81;
  __swift_destroy_boxed_opaque_existential_0(v98);
  __swift_destroy_boxed_opaque_existential_0(v97);
  sub_267B9F98C(v96, &qword_2802299A8, &unk_267F00CF0);
  (*(v66 + 8))(v95, v71);
  __swift_destroy_boxed_opaque_existential_0(v128);
  __swift_destroy_boxed_opaque_existential_0(v131);
  sub_267B9F98C(v67, &qword_2802299A8, &unk_267F00CF0);
  __swift_destroy_boxed_opaque_existential_0(v138);
  __swift_destroy_boxed_opaque_existential_0(v139);
  __swift_destroy_boxed_opaque_existential_0(v140);
  __swift_destroy_boxed_opaque_existential_0(v141);
  __swift_destroy_boxed_opaque_existential_0(v129);
  __swift_destroy_boxed_opaque_existential_0(v116);
  __swift_destroy_boxed_opaque_existential_0(v117);
  sub_267B9A5E8(&v104, a8 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns);
  sub_267B9A5E8(v130, a8 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sharedContextService);
  sub_267B9A5E8(&v125, a8 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_locationService);
  sub_267B9A5E8(&v113, a8 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_ttsUtil);
  sub_267B9A5E8(&v110, a8 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_contactResolver);
  memcpy(a8 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageEventStore, v124, 0x60uLL);
  sub_267B9A5E8(&v121, a8 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_appFinder);
  sub_267B9A5E8(&v107, a8 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_shareSheetProvider);
  sub_267B9A5E8(v137, (a8 + 2));
  __swift_destroy_boxed_opaque_existential_0(v118);
  __swift_destroy_boxed_opaque_existential_0(v132);
  __swift_destroy_boxed_opaque_existential_0(&v135);
  __swift_destroy_boxed_opaque_existential_0(v93);
  return a8;
}

uint64_t sub_267BED0D8()
{
  OUTLINED_FUNCTION_56();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = sub_267EF8A08();
  v0[3] = __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_26();
  }

  v10 = swift_task_alloc();
  v0[4] = v10;
  *v10 = v0;
  v10[1] = sub_267BF1AF4;
  v11 = v0[2];

  return sub_267BED218(v11, sub_267BED378, 0);
}

uint64_t sub_267BED218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267BED230()
{
  OUTLINED_FUNCTION_56();
  v1 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_4_21(v1);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_59_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A418, &qword_267F00AE0);
  OUTLINED_FUNCTION_14_3();
  *v0 = v4;
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_2_27();

  return MEMORY[0x2822008A0]();
}

uint64_t type metadata accessor for SendMessageCATsSimple()
{
  result = qword_28022CE80;
  if (!qword_28022CE80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267BED408(uint64_t a1, uint64_t a2)
{
  v5 = sub_267EF7B88();
  v6 = OUTLINED_FUNCTION_0_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v14 = OUTLINED_FUNCTION_18(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_267BB16A4(a1, &v20 - v17, &qword_280229E20, &unk_267EFDCC0);
  (*(v8 + 16))(v12, a2, v2);
  v18 = sub_267EF79C8();
  (*(v8 + 8))(a2, v2);
  sub_267B9FF34(a1, &qword_280229E20, &unk_267EFDCC0);
  return v18;
}

uint64_t type metadata accessor for MessagesCATs()
{
  result = qword_28022A570;
  if (!qword_28022A570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267BED5CC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_267BED620(a1, a2);
}

uint64_t sub_267BED620(uint64_t a1, uint64_t a2)
{
  v4 = sub_267EF7B88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_267BB3794(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_267EF78B8();
  (*(v5 + 8))(a2, v4);
  sub_267BB2D24(a1);
  return v12;
}

void sub_267BED800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = sub_267EF7B88();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &a9 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v32 = OUTLINED_FUNCTION_18(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_192();
  sub_267BC9B04(v35, v36, v37, &unk_267EFDCC0);
  (*(v27 + 16))(v30, v23, v26);
  sub_267EF78B8();
  (*(v27 + 8))(v23, v26);
  sub_267B9FED8(v25, &qword_280229E20, &unk_267EFDCC0);
  OUTLINED_FUNCTION_47();
}

void sub_267BED974()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  sub_267EF3DE8();
  OUTLINED_FUNCTION_23();
  v353 = v5;
  v354 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_0();
  v352 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298C8, &unk_267EFEC00);
  OUTLINED_FUNCTION_23();
  v388 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6();
  v348 = v15;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_77_0();
  v346 = v17;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v18);
  v357 = v337 - v19;
  OUTLINED_FUNCTION_26_2();
  v20 = sub_267EF7B88();
  v21 = OUTLINED_FUNCTION_18(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_0_0();
  v377 = v25 - v24;
  OUTLINED_FUNCTION_26_2();
  v26 = sub_267EF68A8();
  OUTLINED_FUNCTION_23();
  v390 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6();
  v373 = v31;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_77_0();
  v368 = v33;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v34);
  v36 = v337 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299A8, &unk_267F00CF0);
  v38 = OUTLINED_FUNCTION_18(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_6();
  v347 = v41;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_77_0();
  v381 = v43;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_77_0();
  v382 = v45;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_77_0();
  v342 = v47;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_77_0();
  v365 = v49;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_77_0();
  v376 = v51;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_77_0();
  v356 = v53;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_77_0();
  v374 = v55;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v56);
  v58 = v337 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C4B0, &qword_267F0AA10);
  OUTLINED_FUNCTION_23();
  v351 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_6();
  v350 = v64;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v65);
  v67 = v337 - v66;
  v68 = sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
  v69 = sub_267BA9F38(0, &qword_280229718, 0x277CD4080);
  v355 = v68;
  v349 = v69;
  sub_267EF36C8();
  OUTLINED_FUNCTION_62_0();
  v70 = swift_allocObject();
  *(v70 + 16) = v3;
  *(v70 + 24) = v1;

  sub_267EF3648();
  OUTLINED_FUNCTION_62_0();
  v71 = swift_allocObject();
  *(v71 + 16) = v3;
  *(v71 + 24) = v1;
  v380 = v3;

  v389 = v59;
  v384 = v67;
  sub_267EF36B8();
  v385 = v1;
  sub_267B9AFEC(v1 + 16, &v502);
  OUTLINED_FUNCTION_78();
  v383 = v10;
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v10);
  v75 = sub_267EF8938();
  v76 = sub_267EF8928();
  v500 = v75;
  v501 = MEMORY[0x277D5FDD8];
  v386 = v75;
  *&v499 = v76;
  v379 = sub_267EF3AA8();
  sub_267EF3838();
  v77 = type metadata accessor for NetworkStatusProvider();
  v78 = OUTLINED_FUNCTION_49();
  v367 = sub_267BA9F38(0, &qword_280229280, 0x277CBEBD0);
  sub_267BF0A00(v495);
  sub_267EF8668();
  v79 = [objc_allocWithZone(MEMORY[0x277CEF2E8]) init];
  v80 = sub_267BA9F38(0, &qword_28022C300, 0x277CEF2E8);
  v493 = &off_2878CF540;
  v366 = v80;
  v492 = v80;
  v491[0] = v79;
  v81 = sub_267EF72E8();
  sub_267EF6898();
  ConversationEventStore.init()(v490);
  if (qword_280228730 != -1)
  {
    OUTLINED_FUNCTION_2_9();
  }

  v82 = qword_280240A10;
  v375 = qword_280240A10;
  v364 = type metadata accessor for EligibleAppFinder();
  v488 = v364;
  OUTLINED_FUNCTION_24_28();
  v363 = sub_267B9DEEC(v83, v84);
  v489 = v363;
  v487[0] = v82;
  v85 = type metadata accessor for ShareSheetProvider();
  v86 = OUTLINED_FUNCTION_49();
  v485 = &type metadata for CATProvider;
  v486 = &off_2878CE7A0;
  v482 = &type metadata for MessagesFeatureFlagsImpl;
  v483 = &off_2878D1228;
  v480 = &off_2878D2ED0;
  v479 = v77;
  v478[0] = v78;
  v476 = &type metadata for TTSUtil;
  v477 = &off_2878D0CB0;
  v369 = v81;
  v474 = v81;
  v475 = &off_2878D0918;
  v472 = v26;
  v473 = &off_2878D54D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v471);
  v88 = v390;
  v89 = *(v390 + 16);
  v341 = v36;
  v361 = v89;
  v362 = v390 + 16;
  v89(boxed_opaque_existential_0, v36, v26);
  v470 = &off_2878D0D48;
  v469 = v85;
  v468[0] = v86;
  v90 = type metadata accessor for SendMessageNeedsValueFlowStrategy();
  v339 = OUTLINED_FUNCTION_27_4(v90);
  v91 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v484, v485);
  __swift_mutable_project_boxed_opaque_existential_1(v481, v482);
  __swift_mutable_project_boxed_opaque_existential_1(v478, v479);
  OUTLINED_FUNCTION_28_7();
  v338 = v92;
  OUTLINED_FUNCTION_23();
  v94 = *(v93 + 64);
  MEMORY[0x28223BE20](v95);
  v97 = OUTLINED_FUNCTION_2_56(v96, v337[0]);
  v98(v97);
  v99 = __swift_mutable_project_boxed_opaque_existential_1(&v474, v476);
  v387 = v26;
  __swift_mutable_project_boxed_opaque_existential_1(v471, v472);
  OUTLINED_FUNCTION_28_7();
  v337[5] = v100;
  OUTLINED_FUNCTION_23();
  v102 = *(v101 + 64);
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_0_0();
  v378 = v77;
  v106 = v105 - v104;
  v107 = OUTLINED_FUNCTION_60_11();
  v108(v107);
  __swift_mutable_project_boxed_opaque_existential_1(v468, v85);
  OUTLINED_FUNCTION_28_7();
  v337[4] = v109;
  OUTLINED_FUNCTION_23();
  v111 = *(v110 + 64);
  MEMORY[0x28223BE20](v112);
  v114 = (v337 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0));
  v116 = *(v115 + 16);
  v344 = v113;
  v345 = v115 + 16;
  v343 = v116;
  v116(v114);
  v117 = *v86;
  v118 = *v114;
  v119 = *v99;
  v466 = &type metadata for CATProvider;
  v467 = &off_2878CE7A0;
  v463 = &type metadata for MessagesFeatureFlagsImpl;
  v464 = &off_2878D1228;
  v461 = &off_2878D2ED0;
  v460 = v77;
  v459[0] = v117;
  v457 = &type metadata for TTSUtil;
  v458 = &off_2878D0CB0;
  v456 = v119;
  v454 = v387;
  v455 = &off_2878D54D8;
  v120 = __swift_allocate_boxed_opaque_existential_0(v453);
  v121 = *(v88 + 32);
  v121(v120, v106, v387);
  v452 = &off_2878D0D48;
  v451 = v85;
  v450[0] = v118;
  sub_267B9AFEC(&v502, v449);
  sub_267B9AFEC(&v465, &v447);
  v340 = v58;
  sub_267C2FB6C(v58, v374, &qword_2802299A8, &unk_267F00CF0);
  sub_267B9AFEC(v462, &v444);
  sub_267B9AFEC(&v499, &v441);
  sub_267B9AFEC(&v496, v438);
  sub_267B9AFEC(v459, v435);
  sub_267B9AFEC(v495, v434);
  sub_267B9AFEC(v494, &v431);
  sub_267B9AFEC(v491, &v428);
  sub_267B9AFEC(&v456, &v425);
  sub_267B9AFEC(v453, v422);
  sub_267BEB520(v490, v421);
  sub_267B9AFEC(v487, &v418);
  sub_267B9AFEC(v450, &v416);
  __swift_mutable_project_boxed_opaque_existential_1(&v447, v448);
  __swift_mutable_project_boxed_opaque_existential_1(&v444, v445);
  __swift_mutable_project_boxed_opaque_existential_1(v435, v436);
  OUTLINED_FUNCTION_28_7();
  v337[3] = v122;
  OUTLINED_FUNCTION_23();
  v124 = *(v123 + 64);
  MEMORY[0x28223BE20](v125);
  v127 = OUTLINED_FUNCTION_2_56(v126, v337[0]);
  v128(v127);
  v129 = __swift_mutable_project_boxed_opaque_existential_1(&v425, v426);
  __swift_mutable_project_boxed_opaque_existential_1(v422, v423);
  OUTLINED_FUNCTION_28_7();
  v337[2] = v130;
  OUTLINED_FUNCTION_23();
  v132 = *(v131 + 64);
  MEMORY[0x28223BE20](v133);
  OUTLINED_FUNCTION_3_62();
  v134 = OUTLINED_FUNCTION_60_11();
  v135(v134);
  __swift_mutable_project_boxed_opaque_existential_1(&v416, v417);
  OUTLINED_FUNCTION_28_7();
  v337[1] = v136;
  OUTLINED_FUNCTION_23();
  v138 = *(v137 + 64);
  MEMORY[0x28223BE20](v139);
  OUTLINED_FUNCTION_0_0();
  v142 = (v141 - v140);
  v144 = v387;
  (*(v143 + 16))(v141 - v140);
  v145 = *v118;
  v146 = *v142;
  v147 = *v129;
  v414 = &type metadata for CATProvider;
  v415 = &off_2878CE7A0;
  v411 = &type metadata for MessagesFeatureFlagsImpl;
  v412 = &off_2878D1228;
  v409 = &off_2878D2ED0;
  v408 = v378;
  v407[0] = v145;
  v405 = &type metadata for TTSUtil;
  v406 = &off_2878D0CB0;
  v404 = v147;
  v402 = v144;
  v403 = &off_2878D54D8;
  v148 = __swift_allocate_boxed_opaque_existential_0(&v401);
  v370 = v121;
  v371 = v88 + 32;
  v121(v148, v106, v144);
  v400 = &off_2878D0D48;
  v372 = v85;
  v399 = v85;
  *&v398 = v146;
  v149 = v380;
  v91[7] = v380;
  sub_267B9AFEC(&v413, (v91 + 8));
  v150 = type metadata accessor for SendMessageCATs();
  swift_retain_n();

  sub_267EF7B68();
  OUTLINED_FUNCTION_18_32();
  v360 = v150;
  v91[13] = sub_267EF78E8();
  type metadata accessor for SendMessageCATsSimple();
  OUTLINED_FUNCTION_78_15();
  OUTLINED_FUNCTION_18_32();
  v359 = v150;
  *(v91 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageCATsSimple) = sub_267EF79E8();
  type metadata accessor for MessagesCATs();
  OUTLINED_FUNCTION_78_15();
  OUTLINED_FUNCTION_18_32();
  v358 = v150;
  v91[15] = sub_267EF78E8();
  __swift_project_boxed_opaque_existential_0(&v413, v414);
  v91[14] = sub_267BB4A3C();
  v151 = v356;
  sub_267C2FB6C(v374, v356, &qword_2802299A8, &unk_267F00CF0);
  v152 = v383;
  OUTLINED_FUNCTION_77_7(v151, 1);
  v153 = v151;
  if (v154)
  {
    v396 = v144;
    v397 = &off_2878D54D8;
    __swift_allocate_boxed_opaque_existential_0(v395);
    sub_267EF6898();
    v155 = sub_267EF8928();
    v159 = MEMORY[0x277D5FDD8];
    v394 = MEMORY[0x277D5FDD8];
    OUTLINED_FUNCTION_75_10(v155);
    sub_267B9AFEC(v395, v392);
    sub_267B9AFEC(v393, v391);
    OUTLINED_FUNCTION_70_10();
    v156 = swift_allocObject();
    OUTLINED_FUNCTION_48_23(v156);
    v158 = v357;
    sub_267EF7058();
    __swift_destroy_boxed_opaque_existential_0(v393);
    __swift_destroy_boxed_opaque_existential_0(v395);
    OUTLINED_FUNCTION_77_7(v151, 1);
    v157 = v388;
    if (!v154)
    {
      sub_267B9F98C(v153, &qword_2802299A8, &unk_267F00CF0);
    }
  }

  else
  {
    v157 = v388;
    v158 = v357;
    (*(v388 + 32))(v357, v153, v152);
    v159 = MEMORY[0x277D5FDD8];
  }

  v161 = *(v157 + 32);
  v160 = v157 + 32;
  v388 = v160;
  v357 = v161;
  (v161)(v91 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_transformer, v158, v152);
  sub_267B9AFEC(&v410, v91 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags);
  sub_267B9AFEC(&v441, v91 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_referenceResolver);
  v162 = (v91 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_disambiguationSnippetProvider);
  *v162 = v379;
  v162[1] = &off_2878D5360;
  sub_267B9AFEC(v438, v91 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender);
  sub_267B9AFEC(v407, v91 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_networkStatusProvider);
  sub_267B9AFEC(v434, v91 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_userDefaults);
  type metadata accessor for SendMessageCATPatternsExecutor(0);
  OUTLINED_FUNCTION_78_15();
  OUTLINED_FUNCTION_18_32();
  v163 = sub_267EF78E8();
  v164 = (v91 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns);
  v356 = v160;
  v164[3] = v160;
  v164[4] = &off_2878D1100;
  OUTLINED_FUNCTION_82_9(v163, v164);
  sub_267B9F98C(v374, &qword_2802299A8, &unk_267F00CF0);
  sub_267B9EF14(v490);
  v165 = *(v390 + 8);
  v390 += 8;
  v374 = v165;
  v165(v341, v144);
  __swift_destroy_boxed_opaque_existential_0(v494);
  __swift_destroy_boxed_opaque_existential_0(v495);
  __swift_destroy_boxed_opaque_existential_0(&v496);
  sub_267B9F98C(v340, &qword_2802299A8, &unk_267F00CF0);
  OUTLINED_FUNCTION_19_34();
  sub_267B9A5E8(&v431, v91 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sharedContextService);
  sub_267B9A5E8(&v428, v91 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_locationService);
  sub_267B9A5E8(&v404, v91 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_ttsUtil);
  sub_267B9A5E8(&v401, v91 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_contactResolver);
  memcpy(v91 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageEventStore, v421, 0x60uLL);
  sub_267B9A5E8(&v418, v91 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_appFinder);
  sub_267B9A5E8(&v398, v91 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_shareSheetProvider);
  sub_267B9A5E8(v449, (v91 + 2));
  __swift_destroy_boxed_opaque_existential_0(&v413);
  __swift_destroy_boxed_opaque_existential_0(&v416);
  __swift_destroy_boxed_opaque_existential_0(v422);
  __swift_destroy_boxed_opaque_existential_0(&v425);
  __swift_destroy_boxed_opaque_existential_0(v435);
  __swift_destroy_boxed_opaque_existential_0(&v444);
  __swift_destroy_boxed_opaque_existential_0(&v447);
  __swift_destroy_boxed_opaque_existential_0(v468);
  __swift_destroy_boxed_opaque_existential_0(v471);
  __swift_destroy_boxed_opaque_existential_0(&v474);
  __swift_destroy_boxed_opaque_existential_0(v478);
  __swift_destroy_boxed_opaque_existential_0(v481);
  __swift_destroy_boxed_opaque_existential_0(v484);
  *&v490[0] = v91;
  sub_267B9DEEC(&qword_28022C4B8, type metadata accessor for SendMessageNeedsValueFlowStrategy);
  OUTLINED_FUNCTION_71_7();
  sub_267EF3548();

  sub_267EF3628();
  OUTLINED_FUNCTION_62_0();
  v166 = swift_allocObject();
  v167 = v385;
  *(v166 + 16) = v385;
  *(v166 + 24) = v149;

  OUTLINED_FUNCTION_53_16();
  sub_267EF3678();
  OUTLINED_FUNCTION_62_0();
  v168 = swift_allocObject();
  *(v168 + 16) = v149;
  *(v168 + 24) = v167;

  OUTLINED_FUNCTION_53_16();
  sub_267EF3698();
  OUTLINED_FUNCTION_62_0();
  v169 = swift_allocObject();
  *(v169 + 16) = v149;
  *(v169 + 24) = v167;

  OUTLINED_FUNCTION_53_16();
  sub_267EF3658();
  sub_267B9AFEC(v167 + 16, &v502);
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v170, v171, v172, v152);
  if (qword_280228710 != -1)
  {
    swift_once();
  }

  v173 = qword_280240640;
  v174 = qword_2802286F0;

  if (v174 != -1)
  {
    OUTLINED_FUNCTION_4_0();
  }

  sub_267B9AFEC(qword_2802405A0, &v499);
  v175 = v386;
  v176 = sub_267EF8928();
  v497 = v175;
  v498 = v159;
  *&v496 = v176;
  sub_267EF3838();
  v177 = v378;
  v178 = OUTLINED_FUNCTION_49();
  sub_267BF0A00(v494);
  ConversationEventStore.init()(v490);
  sub_267EF8668();
  v179 = [objc_opt_self() sharedPreferences];
  v180 = sub_267BA9F38(0, &unk_28022A3B0, 0x277CEF368);
  v489 = &off_2878D7790;
  v488 = v180;
  v487[0] = v179;
  __swift_mutable_project_boxed_opaque_existential_1(&v499, v500);
  v485 = &type metadata for CATProvider;
  v486 = &off_2878CE7A0;
  v482 = &type metadata for MessagesFeatureFlagsImpl;
  v483 = &off_2878D1228;
  v480 = &off_2878D2ED0;
  v479 = v177;
  v478[0] = v178;
  v181 = type metadata accessor for SendMessageHandleIntentFlowStrategy();
  v341 = OUTLINED_FUNCTION_27_4(v181);
  v182 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v484, &type metadata for CATProvider);
  __swift_mutable_project_boxed_opaque_existential_1(v481, &type metadata for MessagesFeatureFlagsImpl);
  __swift_mutable_project_boxed_opaque_existential_1(v478, v177);
  OUTLINED_FUNCTION_28_7();
  v340 = v183;
  OUTLINED_FUNCTION_23();
  v185 = *(v184 + 64);
  MEMORY[0x28223BE20](v186);
  v188 = OUTLINED_FUNCTION_2_56(v187, v337[0]);
  v189(v188);
  v476 = &type metadata for CATProvider;
  v477 = &off_2878CE7A0;
  v472 = &type metadata for MessagesFeatureFlagsImpl;
  v473 = &off_2878D1228;
  v470 = &off_2878D2ED0;
  v469 = v177;
  v468[0] = type metadata for CATProvider.Kind;
  v190 = (v182 + OBJC_IVAR____TtC16SiriMessagesFlow35SendMessageHandleIntentFlowStrategy_sharedContextProvider);
  *v190 = v173;
  v190[1] = &off_2878CF508;
  sub_267B9AFEC(v487, v182 + OBJC_IVAR____TtC16SiriMessagesFlow35SendMessageHandleIntentFlowStrategy_preferences);
  sub_267B9AFEC(&v502, &v465);
  sub_267B9AFEC(&v474, v462);
  v191 = v365;
  sub_267C2FB6C(v376, v365, &qword_2802299A8, &unk_267F00CF0);
  sub_267B9AFEC(v471, v459);
  sub_267B9AFEC(&v496, &v456);
  sub_267B9AFEC(v495, v453);
  sub_267B9AFEC(v468, v450);
  sub_267B9AFEC(v494, v449);
  sub_267B9AFEC(v491, &v447);
  sub_267BEB520(v490, v421);
  v192 = objc_allocWithZone(MEMORY[0x277CEF2E8]);
  v339 = v173;

  v193 = [v192 init];
  v446 = &off_2878CF540;
  v445 = v366;
  *&v444 = v193;
  v194 = v368;
  sub_267EF6898();
  v443 = v363;
  v442 = v364;
  *&v441 = v375;
  v195 = v372;
  v196 = OUTLINED_FUNCTION_49();
  __swift_mutable_project_boxed_opaque_existential_1(v462, v463);
  __swift_mutable_project_boxed_opaque_existential_1(v459, v460);
  __swift_mutable_project_boxed_opaque_existential_1(v450, v451);
  OUTLINED_FUNCTION_28_7();
  v338 = v197;
  OUTLINED_FUNCTION_23();
  v199 = *(v198 + 64);
  MEMORY[0x28223BE20](v200);
  OUTLINED_FUNCTION_3_62();
  v201 = OUTLINED_FUNCTION_60_11();
  v202(v201);
  v439 = &type metadata for CATProvider;
  v440 = &off_2878CE7A0;
  v436 = &type metadata for MessagesFeatureFlagsImpl;
  v437 = &off_2878D1228;
  v434[4] = &off_2878D2ED0;
  v434[3] = v177;
  v434[0] = off_2878D1228;
  v432 = &type metadata for TTSUtil;
  v433 = &off_2878D0CB0;
  *&v431 = v369;
  *(&v431 + 1) = &off_2878D0918;
  v203 = v387;
  v429 = v387;
  v430 = &off_2878D54D8;
  v204 = __swift_allocate_boxed_opaque_existential_0(&v428);
  v361(v204, v194, v203);
  v427 = &off_2878D0D48;
  v426 = v195;
  *&v425 = v196;
  v182[7] = v380;
  sub_267B9AFEC(v438, (v182 + 8));

  sub_267EF7B68();
  OUTLINED_FUNCTION_18_32();
  v182[13] = sub_267EF78E8();
  sub_267EF7B68();
  OUTLINED_FUNCTION_18_32();
  *(v182 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageCATsSimple) = sub_267EF79E8();
  sub_267EF7B68();
  OUTLINED_FUNCTION_18_32();
  v182[15] = sub_267EF78E8();
  __swift_project_boxed_opaque_existential_0(v438, v439);
  v182[14] = sub_267BB4A3C();
  v205 = v342;
  sub_267C2FB6C(v191, v342, &qword_2802299A8, &unk_267F00CF0);
  v206 = OUTLINED_FUNCTION_64_12();
  v207 = v383;
  OUTLINED_FUNCTION_77_7(v206, v208);
  if (v154)
  {
    v214 = v203;
    v423 = v203;
    v424 = &off_2878D54D8;
    __swift_allocate_boxed_opaque_existential_0(v422);
    sub_267EF6898();
    v209 = v386;
    v210 = sub_267EF8928();
    v420 = MEMORY[0x277D5FDD8];
    v419 = v209;
    *&v418 = v210;
    sub_267B9AFEC(&v465, &v416);
    sub_267B9AFEC(v422, &v413);
    sub_267B9AFEC(&v418, &v410);
    OUTLINED_FUNCTION_70_10();
    v211 = swift_allocObject();
    sub_267B9A5E8(&v416, v211 + 16);
    sub_267B9A5E8(&v413, v211 + 56);
    sub_267B9A5E8(&v410, v211 + 96);
    sub_267EF4C08();
    v215 = v346;
    sub_267EF7058();
    __swift_destroy_boxed_opaque_existential_0(&v418);
    __swift_destroy_boxed_opaque_existential_0(v422);
    v212 = OUTLINED_FUNCTION_64_12();
    OUTLINED_FUNCTION_77_7(v212, v213);
    v216 = v357;
    if (!v154)
    {
      sub_267B9F98C(v205, &qword_2802299A8, &unk_267F00CF0);
    }
  }

  else
  {
    v214 = v203;
    v215 = v346;
    v216 = v357;
    (v357)(v346, v205, v207);
  }

  (v216)(v182 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_transformer, v215, v207);
  sub_267B9AFEC(v435, v182 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags);
  sub_267B9AFEC(&v456, v182 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_referenceResolver);
  v217 = (v182 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_disambiguationSnippetProvider);
  *v217 = v379;
  v217[1] = &off_2878D5360;
  sub_267B9AFEC(v453, v182 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender);
  sub_267B9AFEC(v434, v182 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_networkStatusProvider);
  sub_267B9AFEC(v449, v182 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_userDefaults);
  sub_267EF7B68();
  OUTLINED_FUNCTION_18_32();
  v218 = v356;
  v219 = sub_267EF78E8();
  v220 = (v182 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns);
  v220[3] = v218;
  v220[4] = &off_2878D1100;
  *v220 = v219;

  v221 = v214;
  v374(v368, v214);
  __swift_destroy_boxed_opaque_existential_0(v449);
  __swift_destroy_boxed_opaque_existential_0(v453);
  __swift_destroy_boxed_opaque_existential_0(&v456);
  OUTLINED_FUNCTION_59_0();
  sub_267B9F98C(v222, v223, v224);
  __swift_destroy_boxed_opaque_existential_0(v491);
  sub_267B9EF14(v490);
  __swift_destroy_boxed_opaque_existential_0(v494);
  __swift_destroy_boxed_opaque_existential_0(v495);
  OUTLINED_FUNCTION_59_0();
  sub_267B9F98C(v225, v226, v227);
  __swift_destroy_boxed_opaque_existential_0(&v502);
  __swift_destroy_boxed_opaque_existential_0(v487);
  __swift_destroy_boxed_opaque_existential_0(&v496);
  __swift_destroy_boxed_opaque_existential_0(v468);
  __swift_destroy_boxed_opaque_existential_0(v471);
  __swift_destroy_boxed_opaque_existential_0(&v474);
  __swift_destroy_boxed_opaque_existential_0(v434);
  __swift_destroy_boxed_opaque_existential_0(v435);
  sub_267B9A5E8(&v447, v182 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sharedContextService);
  sub_267B9A5E8(&v444, v182 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_locationService);
  sub_267B9A5E8(&v431, v182 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_ttsUtil);
  sub_267B9A5E8(&v428, v182 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_contactResolver);
  memcpy(v182 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageEventStore, v421, 0x60uLL);
  sub_267B9A5E8(&v441, v182 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_appFinder);
  sub_267B9A5E8(&v425, v182 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_shareSheetProvider);
  sub_267B9A5E8(&v465, (v182 + 2));
  __swift_destroy_boxed_opaque_existential_0(v438);
  __swift_destroy_boxed_opaque_existential_0(v450);
  __swift_destroy_boxed_opaque_existential_0(v459);
  __swift_destroy_boxed_opaque_existential_0(v462);
  __swift_destroy_boxed_opaque_existential_0(v478);
  __swift_destroy_boxed_opaque_existential_0(v481);
  __swift_destroy_boxed_opaque_existential_0(v484);
  __swift_destroy_boxed_opaque_existential_0(&v499);
  *&v490[0] = v182;
  sub_267B9DEEC(&qword_28022C4C0, type metadata accessor for SendMessageHandleIntentFlowStrategy);
  OUTLINED_FUNCTION_71_7();
  sub_267EF3558();

  sub_267EF3638();
  sub_267B9AFEC(v385 + 16, &v502);
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v228, v229, v230, v207);
  v231 = v386;
  v232 = sub_267EF8928();
  v500 = v231;
  v501 = MEMORY[0x277D5FDD8];
  *&v499 = v232;
  sub_267EF3838();
  v233 = v378;
  v234 = OUTLINED_FUNCTION_49();
  sub_267BF0A00(v495);
  sub_267EF8668();
  v235 = [objc_allocWithZone(MEMORY[0x277CEF2E8]) init];
  v493 = &off_2878CF540;
  v492 = v366;
  v491[0] = v235;
  v236 = v373;
  sub_267EF6898();
  ConversationEventStore.init()(v490);
  v489 = v363;
  v488 = v364;
  v487[0] = v375;
  v237 = v372;
  v238 = OUTLINED_FUNCTION_49();
  v485 = &type metadata for CATProvider;
  v486 = &off_2878CE7A0;
  v482 = &type metadata for MessagesFeatureFlagsImpl;
  v483 = &off_2878D1228;
  v480 = &off_2878D2ED0;
  v479 = v233;
  v478[0] = v234;
  v476 = &type metadata for TTSUtil;
  v477 = &off_2878D0CB0;
  v474 = v369;
  v475 = &off_2878D0918;
  v472 = v221;
  v473 = &off_2878D54D8;
  v239 = __swift_allocate_boxed_opaque_existential_0(v471);
  v361(v239, v236, v221);
  v470 = &off_2878D0D48;
  v469 = v237;
  v468[0] = v238;
  v240 = type metadata accessor for SendMessageNeedsConfirmationFlowStrategy();
  v376 = OUTLINED_FUNCTION_27_4(v240);
  v241 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v484, v485);
  __swift_mutable_project_boxed_opaque_existential_1(v481, v482);
  __swift_mutable_project_boxed_opaque_existential_1(v478, v479);
  OUTLINED_FUNCTION_28_7();
  v375 = v242;
  OUTLINED_FUNCTION_23();
  v244 = *(v243 + 64);
  MEMORY[0x28223BE20](v245);
  v247 = OUTLINED_FUNCTION_2_56(v246, v337[0]);
  v248(v247);
  v249 = __swift_mutable_project_boxed_opaque_existential_1(&v474, v476);
  __swift_mutable_project_boxed_opaque_existential_1(v471, v472);
  OUTLINED_FUNCTION_28_7();
  v369 = v250;
  OUTLINED_FUNCTION_23();
  v252 = *(v251 + 64);
  MEMORY[0x28223BE20](v253);
  OUTLINED_FUNCTION_3_62();
  v254 = OUTLINED_FUNCTION_60_11();
  v255(v254);
  __swift_mutable_project_boxed_opaque_existential_1(v468, v237);
  OUTLINED_FUNCTION_28_7();
  v368 = v256;
  MEMORY[0x28223BE20](v257);
  v259 = (v337 - ((v258 + 15) & 0xFFFFFFFFFFFFFFF0));
  v343(v259);
  v260 = *v238;
  v261 = *v259;
  v262 = *v249;
  v466 = &type metadata for CATProvider;
  v467 = &off_2878CE7A0;
  v463 = &type metadata for MessagesFeatureFlagsImpl;
  v464 = &off_2878D1228;
  v461 = &off_2878D2ED0;
  v460 = v233;
  v459[0] = v260;
  v457 = &type metadata for TTSUtil;
  v458 = &off_2878D0CB0;
  v456 = v262;
  v454 = v221;
  v455 = &off_2878D54D8;
  v263 = __swift_allocate_boxed_opaque_existential_0(v453);
  v370(v263, v203, v221);
  v452 = &off_2878D0D48;
  v451 = v237;
  v450[0] = v261;
  v264 = OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageNeedsConfirmationFlowStrategy_confirmationResponse;
  sub_267EF44F8();
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v265, v266, v267, v268);
  sub_267B9AFEC(&v502, v449);
  sub_267B9AFEC(&v465, &v447);
  sub_267C2FB6C(v382, v381, &qword_2802299A8, &unk_267F00CF0);
  sub_267B9AFEC(v462, &v444);
  sub_267B9AFEC(&v499, &v441);
  sub_267B9AFEC(&v496, v438);
  sub_267B9AFEC(v459, v435);
  sub_267B9AFEC(v495, v434);
  sub_267B9AFEC(v494, &v431);
  sub_267B9AFEC(v491, &v428);
  sub_267B9AFEC(&v456, &v425);
  sub_267B9AFEC(v453, v422);
  sub_267BEB520(v490, v421);
  sub_267B9AFEC(v487, &v418);
  sub_267B9AFEC(v450, &v416);
  __swift_mutable_project_boxed_opaque_existential_1(&v447, v448);
  __swift_mutable_project_boxed_opaque_existential_1(&v444, v445);
  __swift_mutable_project_boxed_opaque_existential_1(v435, v436);
  OUTLINED_FUNCTION_28_7();
  v367 = v269;
  OUTLINED_FUNCTION_23();
  v271 = *(v270 + 64);
  MEMORY[0x28223BE20](v272);
  v274 = OUTLINED_FUNCTION_2_56(v273, v337[0]);
  v275(v274);
  v276 = __swift_mutable_project_boxed_opaque_existential_1(&v425, v426);
  __swift_mutable_project_boxed_opaque_existential_1(v422, v423);
  OUTLINED_FUNCTION_28_7();
  v366 = v277;
  OUTLINED_FUNCTION_23();
  v279 = *(v278 + 64);
  MEMORY[0x28223BE20](v280);
  OUTLINED_FUNCTION_3_62();
  v281 = OUTLINED_FUNCTION_60_11();
  v282(v281);
  __swift_mutable_project_boxed_opaque_existential_1(&v416, v417);
  OUTLINED_FUNCTION_28_7();
  v365 = v283;
  OUTLINED_FUNCTION_23();
  v285 = *(v284 + 64);
  MEMORY[0x28223BE20](v286);
  OUTLINED_FUNCTION_0_0();
  v288 = OUTLINED_FUNCTION_28_29(v287);
  v289(v288);
  v290 = *v264;
  v291 = off_2878D0D48;
  v292 = *v276;
  v414 = &type metadata for CATProvider;
  v415 = &off_2878CE7A0;
  v411 = &type metadata for MessagesFeatureFlagsImpl;
  v412 = &off_2878D1228;
  v409 = &off_2878D2ED0;
  v408 = v233;
  v407[0] = v290;
  v405 = &type metadata for TTSUtil;
  v406 = &off_2878D0CB0;
  v404 = v292;
  v402 = v221;
  v403 = &off_2878D54D8;
  v293 = __swift_allocate_boxed_opaque_existential_0(&v401);
  v294 = v203;
  v295 = v221;
  v296 = v383;
  v370(v293, v294, v221);
  v400 = &off_2878D0D48;
  v399 = v237;
  *&v398 = v291;
  v241[7] = v380;
  sub_267B9AFEC(&v413, (v241 + 8));

  sub_267EF7B68();
  OUTLINED_FUNCTION_18_32();
  v241[13] = sub_267EF78E8();
  sub_267EF7B68();
  OUTLINED_FUNCTION_18_32();
  *(v241 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageCATsSimple) = sub_267EF79E8();
  sub_267EF7B68();
  OUTLINED_FUNCTION_18_32();
  v241[15] = sub_267EF78E8();
  __swift_project_boxed_opaque_existential_0(&v413, v414);
  v241[14] = sub_267BB4A3C();
  v297 = v347;
  sub_267C2FB6C(v381, v347, &qword_2802299A8, &unk_267F00CF0);
  v298 = OUTLINED_FUNCTION_64_12();
  if (__swift_getEnumTagSinglePayload(v298, v299, v296) == 1)
  {
    v396 = v221;
    v397 = &off_2878D54D8;
    __swift_allocate_boxed_opaque_existential_0(v395);
    sub_267EF6898();
    v300 = sub_267EF8928();
    v394 = MEMORY[0x277D5FDD8];
    OUTLINED_FUNCTION_75_10(v300);
    sub_267B9AFEC(v395, v392);
    sub_267B9AFEC(v393, v391);
    OUTLINED_FUNCTION_70_10();
    v301 = swift_allocObject();
    OUTLINED_FUNCTION_48_23(v301);
    v302 = v348;
    sub_267EF7058();
    __swift_destroy_boxed_opaque_existential_0(v393);
    __swift_destroy_boxed_opaque_existential_0(v395);
    v303 = OUTLINED_FUNCTION_64_12();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v303, v304, v296);
    v306 = v357;
    if (EnumTagSinglePayload != 1)
    {
      sub_267B9F98C(v297, &qword_2802299A8, &unk_267F00CF0);
    }
  }

  else
  {
    v302 = v348;
    v307 = OUTLINED_FUNCTION_44_0();
    v306 = v357;
    (v357)(v307);
  }

  (v306)(v241 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_transformer, v302, v296);
  sub_267B9AFEC(&v410, v241 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags);
  sub_267B9AFEC(&v441, v241 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_referenceResolver);
  v308 = (v241 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_disambiguationSnippetProvider);
  *v308 = v379;
  v308[1] = &off_2878D5360;
  sub_267B9AFEC(v438, v241 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender);
  sub_267B9AFEC(v407, v241 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_networkStatusProvider);
  sub_267B9AFEC(v434, v241 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_userDefaults);
  sub_267EF7B68();
  OUTLINED_FUNCTION_18_32();
  v309 = v356;
  v310 = sub_267EF78E8();
  v311 = (v241 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns);
  v311[3] = v309;
  v311[4] = &off_2878D1100;
  OUTLINED_FUNCTION_82_9(v310, v311);
  OUTLINED_FUNCTION_59_0();
  sub_267B9F98C(v312, v313, v314);
  sub_267B9EF14(v490);
  v374(v373, v295);
  __swift_destroy_boxed_opaque_existential_0(v494);
  __swift_destroy_boxed_opaque_existential_0(v495);
  __swift_destroy_boxed_opaque_existential_0(&v496);
  OUTLINED_FUNCTION_59_0();
  sub_267B9F98C(v315, v316, v317);
  OUTLINED_FUNCTION_19_34();
  sub_267B9A5E8(&v431, v241 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sharedContextService);
  sub_267B9A5E8(&v428, v241 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_locationService);
  sub_267B9A5E8(&v404, v241 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_ttsUtil);
  sub_267B9A5E8(&v401, v241 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_contactResolver);
  memcpy(v241 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageEventStore, v421, 0x60uLL);
  sub_267B9A5E8(&v418, v241 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_appFinder);
  sub_267B9A5E8(&v398, v241 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_shareSheetProvider);
  sub_267B9A5E8(v449, (v241 + 2));
  __swift_destroy_boxed_opaque_existential_0(&v413);
  __swift_destroy_boxed_opaque_existential_0(&v416);
  __swift_destroy_boxed_opaque_existential_0(v422);
  __swift_destroy_boxed_opaque_existential_0(&v425);
  __swift_destroy_boxed_opaque_existential_0(v435);
  __swift_destroy_boxed_opaque_existential_0(&v444);
  __swift_destroy_boxed_opaque_existential_0(&v447);
  __swift_destroy_boxed_opaque_existential_0(v468);
  __swift_destroy_boxed_opaque_existential_0(v471);
  __swift_destroy_boxed_opaque_existential_0(&v474);
  __swift_destroy_boxed_opaque_existential_0(v478);
  __swift_destroy_boxed_opaque_existential_0(v481);
  __swift_destroy_boxed_opaque_existential_0(v484);
  *&v490[0] = v241;
  sub_267B9DEEC(&qword_28022C4C8, type metadata accessor for SendMessageNeedsConfirmationFlowStrategy);
  OUTLINED_FUNCTION_71_7();
  sub_267EF35A8();
  OUTLINED_FUNCTION_74_0();

  OUTLINED_FUNCTION_108();
  v318 = v384;
  sub_267EF3688();
  __swift_project_boxed_opaque_existential_0(qword_2802405A0, qword_2802405B8);
  v319 = sub_267BB4A3C();
  sub_267B9AFEC(v385 + 16, v490);
  v320 = type metadata accessor for CommonTemplateProvider();
  v321 = OUTLINED_FUNCTION_49();
  v322 = type metadata accessor for TCCTemplateProvider();
  v323 = OUTLINED_FUNCTION_49();
  v324 = v352;
  sub_267EF3DD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C4D0, &qword_267F0AA18);
  v325 = swift_allocObject();
  *&v421[2] = &off_2878D2530;
  *(&v421[1] + 1) = v320;
  *&v421[0] = v321;
  v503 = v322;
  v504 = &off_2878D0E48;
  *&v502 = v323;
  v326 = v354;
  v500 = v354;
  v501 = &off_2878D0D80;
  v327 = __swift_allocate_boxed_opaque_existential_0(&v499);
  v328 = v353;
  (*(v353 + 16))(v327, v324, v326);
  v497 = &type metadata for MessagesFeatureFlagsImpl;
  v498 = &off_2878D1228;
  (*(v328 + 8))(v324, v326);
  *(v325 + 224) = 0;
  *(v325 + 56) = v319;
  sub_267B9A5E8(v421, v325 + 64);
  sub_267B9A5E8(&v502, v325 + 104);
  sub_267B9A5E8(&v499, v325 + 144);
  sub_267B9A5E8(&v496, v325 + 184);
  sub_267B9A5E8(v490, v325 + 16);
  *&v490[0] = v325;
  sub_267BC1E20(&qword_28022C4D8, &qword_28022C4D0, &qword_267F0AA18);
  sub_267EF35C8();
  OUTLINED_FUNCTION_74_0();

  OUTLINED_FUNCTION_108();
  v329 = v389;
  sub_267EF36A8();
  v330 = OUTLINED_FUNCTION_108();
  __swift_instantiateConcreteTypeFromMangledNameV2(v330, v331);
  *&v490[0] = OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_59_0();
  sub_267BC1E20(v332, v333, v334);
  OUTLINED_FUNCTION_71_7();
  sub_267EF3598();
  OUTLINED_FUNCTION_74_0();

  OUTLINED_FUNCTION_108();
  sub_267EF3668();
  v335 = v351;
  (*(v351 + 16))(v350, v318, v329);
  v336 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C4F0, &qword_267F0AA28);
  OUTLINED_FUNCTION_27_4(v336);
  swift_allocObject();
  sub_267EF36D8();
  (*(v335 + 8))(v318, v329);
  OUTLINED_FUNCTION_47();
}

uint64_t type metadata accessor for SendMessageNeedsValueFlowStrategy()
{
  result = qword_28022D1F0;
  if (!qword_28022D1F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267BF04E0()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C8A0, &qword_267F0B898);
  OUTLINED_FUNCTION_58(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v7);
  v9 = v12 - v8;
  v12[1] = v1;
  type metadata accessor for SendMessageRCHFlowStrategy();
  OUTLINED_FUNCTION_19_36();
  sub_267BC1DB4(v10, v11);

  sub_267EF3EE8();
  OUTLINED_FUNCTION_66();
  sub_267EF3ED8();
  (*(v4 + 8))(v9, v2);
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267BF0624()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 1456);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267BF0708()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  sub_267BCDB80(v0 + 304);
  OUTLINED_FUNCTION_4_56();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_125();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

void OUTLINED_FUNCTION_119_0(uint64_t a1@<X8>)
{
  *(v3 - 112) = v1;
  *(v3 - 104) = a1;
  *(v3 - 136) = v2;
}

uint64_t OUTLINED_FUNCTION_119_2@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_267BC9B04(v3 + a3, v4, a1, a2);
}

uint64_t OUTLINED_FUNCTION_119_5(uint64_t a1, uint64_t a2)
{
  *(v2 + 272) = a2;
  v5 = *(v4 + 8);
  return v3;
}

uint64_t sub_267BF0818()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 1440);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267BF08FC()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  sub_267BCDB80(v0 + 16);
  OUTLINED_FUNCTION_4_56();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_125();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t type metadata accessor for SendMessageNeedsConfirmationFlowStrategy()
{
  result = qword_28022A810;
  if (!qword_28022A810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_267BF0A00@<X0>(void *a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_267BEB478(0xD000000000000017, 0x8000000267F18AD0);
  if (v3)
  {
    v4 = v3;
    result = sub_267BEB4DC();
    a1[3] = result;
    a1[4] = &off_2878D36E8;
    *a1 = v4;
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v6 = sub_267EF8A08();
    __swift_project_value_buffer(v6, qword_280240FB0);
    v7 = sub_267EF89F8();
    v8 = sub_267EF95E8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_267BA33E8(0xD000000000000037, 0x8000000267F18AF0, &v11);
      _os_log_impl(&dword_267B93000, v7, v8, "Fatal error: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x26D60A7B0](v10, -1, -1);
      MEMORY[0x26D60A7B0](v9, -1, -1);
    }

    result = sub_267EF9C98();
    __break(1u);
  }

  return result;
}

uint64_t sub_267BF0BD0()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_267BF1CB4;

  return sub_267BED0B8(v3);
}

uint64_t sub_267BF0C78()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_26_3();
  return sub_267BED408(v3, v4);
}

uint64_t sub_267BF0CC8()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  sub_267BCDB80(v0 + 448);
  OUTLINED_FUNCTION_4_56();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_125();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_267BF0D5C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 1432);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

double OUTLINED_FUNCTION_34_4()
{
  result = 0.0;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0;
  *(v0 + 176) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_34_5(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_34_6()
{
  result = v0;
  v3 = *(v1 - 128);
  return result;
}

void OUTLINED_FUNCTION_34_9()
{
  v1 = v0[43];
  v2 = v0[44];
  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[40];
  v6 = v0;
  v7 = v0[37];
  v9 = v6[33];
  v8 = v6[34];
  v10 = v6[32];
}

void *OUTLINED_FUNCTION_34_11()
{
  v2 = v0[4];
  v3 = v0[3];

  return __swift_project_boxed_opaque_existential_0(v0, v3);
}

void OUTLINED_FUNCTION_34_13()
{
  v1 = *(v0 + 360);
  *(v0 + 464) = *(v1 + 16);
  v2 = *(v1 + 40);
}

uint64_t OUTLINED_FUNCTION_34_14()
{
  v2 = v0[160];
  v3 = v0[159];
  v4 = v0[155];
  v5 = v0[145];
  v6 = v0[144];
  v7 = v0[119];
  v8 = v0[118];
  *(v1 - 160) = v0[152];
  *(v1 - 152) = v8;
  result = v0[114];
  v10 = v0[113];
  v11 = v0[112];
  v12 = v0[111];
  *(v1 - 144) = v7;
  *(v1 - 136) = v12;
  *(v1 - 120) = v0[109];
  *(v1 - 112) = v6;
  v13 = v0[92];
  *(v1 - 128) = v0[91];
  v14 = v0[90];
  v15 = v0[89];
  v16 = v0[88];
  v17 = v0[87];
  v18 = *(v10 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_34_17()
{
  v2 = *(v0 + 48);
  v3 = *(*(v0 + 40) + 8);
  return v1;
}

uint64_t OUTLINED_FUNCTION_34_18()
{
  *v1 = v0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_34_20()
{
  *(v2 + 368) = v0;
  v4 = *(v1 + 256);
}

uint64_t OUTLINED_FUNCTION_34_22(uint64_t a1)
{
  *(v1 - 104) = a1;

  return sub_267EF6568();
}

uint64_t OUTLINED_FUNCTION_34_23()
{
  v3 = v1[74];
  v4 = v1[71];
  v5 = v1[70];
  v6 = v1[67];
  v1[65] = v0;
}

uint64_t OUTLINED_FUNCTION_34_24@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 168);
}

uint64_t OUTLINED_FUNCTION_34_25()
{
  v2 = v0[7];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0[6] + 20);

  return sub_267EF79B8();
}

uint64_t OUTLINED_FUNCTION_34_29()
{
  v4 = v0[82];
  v5 = v0[79];
  v6 = v0[76];
  v7 = v0[73];
  v2 = v0[70];
  v8 = v0[67];
  v9 = v0[64];
}

uint64_t OUTLINED_FUNCTION_34_30()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
}

__n128 *OUTLINED_FUNCTION_34_31(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x64616F6C796170;
  result[2].n128_u64[1] = 0xE700000000000000;
  return result;
}

id OUTLINED_FUNCTION_34_33(float a1)
{
  *v1 = a1;
  *(v1 + 4) = v2;
  *v3 = v2;
  *(v1 + 12) = 2080;

  return v2;
}

uint64_t type metadata accessor for SendMessageHandleIntentFlowStrategy()
{
  result = qword_280229588;
  if (!qword_280229588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267BF1230()
{
  v14 = MEMORY[0x277D84F90];
  sub_267EF9BF8();
  v0 = 0;
  do
  {
    v1 = byte_2878CA9B0[v0 + 32];
    switch(byte_2878CA9B0[v0 + 32])
    {
      case 1u:
      case 2u:
        OUTLINED_FUNCTION_19_31();
        goto LABEL_4;
      case 5u:
LABEL_32:

        break;
      default:
LABEL_4:
        v2 = OUTLINED_FUNCTION_51_14();

        if ((v2 & 1) == 0)
        {
          OUTLINED_FUNCTION_39_18();
          v3 = v1;
          switch(v1)
          {
            case 0u:
              OUTLINED_FUNCTION_38_20();
              goto LABEL_13;
            case 1u:
              OUTLINED_FUNCTION_10_34();
              goto LABEL_13;
            case 2u:
              OUTLINED_FUNCTION_19_31();
              goto LABEL_13;
            case 3u:
              OUTLINED_FUNCTION_15_32();
              goto LABEL_13;
            case 4u:
              OUTLINED_FUNCTION_22_24();
              goto LABEL_13;
            case 5u:
              goto LABEL_13;
            case 6u:
              OUTLINED_FUNCTION_34_21();
              goto LABEL_13;
            case 7u:
              goto LABEL_32;
            case 8u:
              OUTLINED_FUNCTION_33_14();
LABEL_13:
              v4 = v3;
              v5 = sub_267EF9EA8();

              if ((v5 & 1) == 0)
              {
                OUTLINED_FUNCTION_22_24();
                v6 = v1;
                switch(v4)
                {
                  case 0:
                    OUTLINED_FUNCTION_38_20();
                    goto LABEL_22;
                  case 1:
                    OUTLINED_FUNCTION_10_34();
                    goto LABEL_22;
                  case 2:
                    OUTLINED_FUNCTION_19_31();
                    goto LABEL_22;
                  case 3:
                    OUTLINED_FUNCTION_15_32();
                    goto LABEL_22;
                  case 4:
                    goto LABEL_22;
                  case 5:
                    OUTLINED_FUNCTION_39_18();
                    goto LABEL_22;
                  case 6:
                    goto LABEL_32;
                  case 7:
                    OUTLINED_FUNCTION_21_25();
                    goto LABEL_22;
                  case 8:
                    OUTLINED_FUNCTION_33_14();
LABEL_22:
                    v7 = v6;
                    v8 = sub_267EF9EA8();

                    if ((v8 & 1) == 0)
                    {
                      OUTLINED_FUNCTION_22_24();
                      switch(v7)
                      {
                        case 0:
                          OUTLINED_FUNCTION_38_20();
                          goto LABEL_31;
                        case 1:
                          OUTLINED_FUNCTION_10_34();
                          goto LABEL_31;
                        case 2:
                          OUTLINED_FUNCTION_19_31();
                          goto LABEL_31;
                        case 3:
                          OUTLINED_FUNCTION_15_32();
                          goto LABEL_31;
                        case 4:
                          goto LABEL_31;
                        case 5:
                          OUTLINED_FUNCTION_39_18();
                          goto LABEL_31;
                        case 6:
                          OUTLINED_FUNCTION_34_21();
                          goto LABEL_31;
                        case 7:
                          OUTLINED_FUNCTION_21_25();
LABEL_31:
                          sub_267EF9EA8();

                          goto LABEL_33;
                        case 8:
                          goto LABEL_32;
                        default:
                          goto LABEL_35;
                      }
                    }

                    goto LABEL_33;
                  default:
                    goto LABEL_35;
                }
              }

              break;
            default:
LABEL_35:
              JUMPOUT(0);
          }
        }

        return result;
    }

LABEL_33:
    ++v0;
    v9 = sub_267EF3888();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    sub_267EF3878();
    sub_267EF9BD8();
    v12 = *(v14 + 16);
    sub_267EF9C08();
    sub_267EF9C18();
    sub_267EF9BE8();
  }

  while (v0 != 9);
  return v14;
}

uint64_t sub_267BF1710(uint64_t a1)
{
  v2 = sub_267EF8B28();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A428, &unk_267F00AF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v19[-v12];
  sub_267BF6CEC(a1, &v19[-v12], &qword_28022A428, &unk_267F00AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *(v3 + 32);
    v14(v9, v13, v2);
    (*(v3 + 16))(v7, v9, v2);
    sub_267BFEA98(&qword_28022A430, MEMORY[0x277D55948]);
    v15 = sub_267EF9E78();
    if (v15)
    {
      v16 = v15;
      (*(v3 + 8))(v7, v2);
    }

    else
    {
      v16 = swift_allocError();
      v14(v18, v7, v2);
    }

    v20[0] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A420, &qword_267F00AE8);
    sub_267EF93B8();
    return (*(v3 + 8))(v9, v2);
  }

  else
  {
    sub_267B9A5E8(v13, v20);
    sub_267B9B050(v20, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A420, &qword_267F00AE8);
    sub_267EF93C8();
    return __swift_destroy_boxed_opaque_existential_0(v20);
  }
}

uint64_t sub_267BF19D8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    OUTLINED_FUNCTION_17();

    return v13();
  }
}

uint64_t sub_267BF1AF4()
{
  OUTLINED_FUNCTION_12();
  v2 = *(*v1 + 32);
  v3 = *v1;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  if (v0)
  {
    OUTLINED_FUNCTION_17();

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_267BF1C14, 0, 0);
  }
}

uint64_t sub_267BF1C14()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 24);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_17();

  return v10();
}

uint64_t sub_267BF1CB4()
{
  OUTLINED_FUNCTION_12();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_5();
  *v3 = v2;

  OUTLINED_FUNCTION_17();

  return v4();
}

unint64_t sub_267BF1D98()
{
  result = qword_28022A430;
  if (!qword_28022A430)
  {
    sub_267EF8B28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022A430);
  }

  return result;
}

uint64_t sub_267BF1DF0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  __swift_destroy_boxed_opaque_existential_0((v0 + 72));
  return v0;
}

uint64_t sub_267BF1E20()
{
  sub_267BF1DF0();

  return swift_deallocClassInstance();
}

uint64_t sub_267BF1E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5C0D0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SendMessageRCHFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BF1F28;

  return MEMORY[0x2821BBB48](a1, a2, v10, a4);
}

uint64_t sub_267BF1F28()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_14();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_5();
  *v6 = v5;

  OUTLINED_FUNCTION_4_3();

  return v7(v2);
}

uint64_t sub_267BF2010()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 32);
  *(v0 + 56) = sub_267BF326C(0x65736143657375, 0xE700000000000000);
  v2 = OUTLINED_FUNCTION_28_0(MEMORY[0x277D55BE8]);
  v3 = OUTLINED_FUNCTION_115_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_108_0(v3);
  v5 = OUTLINED_FUNCTION_28_2(27);

  return v6(v5);
}

uint64_t sub_267BF20D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB70, &unk_267F0BA10);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v24 - v11;
  v13 = *(a1 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_267EF4CC8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v4, a1);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v17);
    (*(v18 + 32))(v21, v12, v17);
    v25 = sub_267EF4CB8();
    MEMORY[0x28223BE20](v25);
    *(&v24 - 4) = a1;
    *(&v24 - 3) = a2;
    *(&v24 - 2) = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A328, &qword_267F00A48);
    sub_267BF23A4();
    v22 = sub_267EF9288();

    (*(v18 + 8))(v21, v17);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v17);
    sub_267E62030(v12);
    return sub_267EF9348();
  }

  return v22;
}

unint64_t sub_267BF23A4()
{
  result = qword_28022CAE0;
  if (!qword_28022CAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022A328, &qword_267F00A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022CAE0);
  }

  return result;
}

id sub_267BF2408@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_267BF3718(a1, a2);
}

void sub_267BF2428(void *a1)
{
  v2 = [a1 views];
  if (!v2)
  {
    v14 = 0;
    [a1 setViews_];
LABEL_16:

    return;
  }

  v3 = v2;
  sub_267BA9F38(0, &unk_28022BBA0, 0x277D47140);
  v4 = sub_267EF92F8();

  v5 = sub_267BAF0DC(v4);
  if (!v5)
  {
LABEL_15:

    v14 = sub_267EF92D8();

    [a1 setViews_];
    goto LABEL_16;
  }

  v6 = v5;
  v15 = MEMORY[0x277D84F90];
  sub_267EF9BF8();
  if (v6 < 0)
  {
    goto LABEL_21;
  }

  v7 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x26D609870](v7, v4);
      goto LABEL_10;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    v8 = *(v4 + 8 * v7 + 32);
LABEL_10:
    v9 = v8;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      v12 = v9;
      sub_267BF86F0(v11);
    }

    ++v7;
    sub_267EF9BD8();
    v13 = *(v15 + 16);
    sub_267EF9C08();
    sub_267EF9C18();
    sub_267EF9BE8();
    if (v6 == v7)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_267BF2624()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 216);
  v2 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_26();
  }

  v10 = *(v0 + 208);
  v12 = *(v0 + 184);
  v11 = *(v0 + 192);
  v13 = *(v0 + 176);
  v14 = *(v0 + 144);

  v15 = *(v12 + 8);
  v16 = OUTLINED_FUNCTION_37_1();
  v17(v16);
  sub_267B9A5E8((v0 + 16), v14);

  OUTLINED_FUNCTION_1();

  return v18();
}

double OUTLINED_FUNCTION_217()
{
  result = 0.0;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_217_0()
{
  result = __swift_destroy_boxed_opaque_existential_0((v1 + 416));
  v3 = *(v0 - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_217_1(uint64_t a1)
{
  *(v1 + 280) = a1;

  return sub_267EF3D88();
}

uint64_t sub_267BF2768()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0[3] + 56);
  sub_267ECFBDC();
  OUTLINED_FUNCTION_424();
  v2 = 1;
  switch(v3)
  {
    case 1:
      OUTLINED_FUNCTION_516();
      goto LABEL_4;
    case 2:
      OUTLINED_FUNCTION_125_7();
      goto LABEL_4;
    case 3:
      goto LABEL_5;
    default:
LABEL_4:
      v4 = v0[4];
      sub_267EF90F8();

      v2 = 0;
LABEL_5:
      v5 = v0[4];
      v6 = v0[2];
      sub_267EF79B8();
      v7 = OUTLINED_FUNCTION_240_1();
      __swift_storeEnumTagSinglePayload(v7, v2, 1, v8);
      v9 = OUTLINED_FUNCTION_108();
      sub_267BF3128(v9, v10, v11, v12);

      OUTLINED_FUNCTION_1();

      return v13();
  }
}

uint64_t sub_267BF2870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_91();
  a25 = v28;
  a26 = v29;
  OUTLINED_FUNCTION_116();
  a24 = v26;
  v31 = *(v26 + 344);
  v30 = *(v26 + 352);
  v32 = *(v26 + 336);
  OUTLINED_FUNCTION_241_1();
  sub_267EF4938();
  sub_267EF44B8();
  v33 = *(v31 + 8);
  *(v26 + 360) = v33;
  *(v26 + 368) = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v34 = OUTLINED_FUNCTION_26_0();
  v33(v34);
  OUTLINED_FUNCTION_65_5();
  v35 = sub_267C7C240();
  *(v26 + 464) = v35;
  if (v35 == 9)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v37 = *(v26 + 288);
    v36 = *(v26 + 296);
    v38 = *(v26 + 280);
    v39 = *(v26 + 256);
    v40 = sub_267EF8A08();
    v41 = __swift_project_value_buffer(v40, qword_280240FB0);
    v42 = *(v37 + 16);
    v43 = OUTLINED_FUNCTION_108();
    v44(v43);
    v45 = sub_267EF89F8();
    v46 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_36(v46))
    {
      v47 = *(v26 + 352);
      HIDWORD(a12) = v41;
      v49 = *(v26 + 288);
      v48 = *(v26 + 296);
      v50 = *(v26 + 280);
      a10 = v50;
      a11 = *(v26 + 336);
      OUTLINED_FUNCTION_48();
      a13 = OUTLINED_FUNCTION_55_0();
      a14 = a13;
      *v41 = 136315138;
      sub_267EF4938();
      sub_267EF44B8();
      v51 = OUTLINED_FUNCTION_186_2();
      (v33)(v51, a11);
      (*(v49 + 8))(v48, v50);
      v52 = sub_267BA33E8(v47, v27, &a14);

      *(v41 + 4) = v52;
      OUTLINED_FUNCTION_52_18(&dword_267B93000, v53, v41, "#SendMessageNeedsValueFlowStrategy unknown parameter: %s");
      __swift_destroy_boxed_opaque_existential_0(a13);
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_29_1();
    }

    else
    {
      v65 = *(v26 + 288);
      v64 = *(v26 + 296);
      v66 = *(v26 + 280);

      v67 = *(v65 + 8);
      v68 = OUTLINED_FUNCTION_108();
      v69(v68);
    }

    v70 = *(v26 + 352);
    v71 = *(v26 + 336);
    OUTLINED_FUNCTION_241_1();
    sub_267EF4938();
    v72 = sub_267EF44B8();
    v74 = v73;
    v75 = OUTLINED_FUNCTION_26_0();
    v33(v75);
    sub_267C4BE60();
    OUTLINED_FUNCTION_61_1();
    *v76 = v72;
    v76[1] = v74;
    swift_willThrow();
    v77 = *(v26 + 352);
    v78 = *(v26 + 328);
    v80 = *(v26 + 296);
    v79 = *(v26 + 304);
    v81 = *(v26 + 272);

    OUTLINED_FUNCTION_17();
LABEL_14:
    OUTLINED_FUNCTION_89();

    return v83(v82, v83, v84, v85, v86, v87, v88, v89, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  v54 = v35;
  v55 = *(*(v26 + 264) + 56);
  if (*(v55 + 320) == 1)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v56 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v56, qword_280240FB0);
    v57 = sub_267EF89F8();
    v58 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v58))
    {
      OUTLINED_FUNCTION_48();
      v59 = OUTLINED_FUNCTION_64_2();
      a14 = v59;
      *v32 = 136315138;
      v60 = sub_267C7C28C(v54);
      v62 = sub_267BA33E8(v60, v61, &a14);

      *(v32 + 4) = v62;
      _os_log_impl(&dword_267B93000, v57, v58, "#SendMessageNeedsValueFlowStrategy request triggered by change via snippet, supressing prompt for %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_26();
    }

    v63 = *(v26 + 248);
    *(v55 + 320) = 0;
    sub_267EF3D38();
    sub_267EF3D28();
    OUTLINED_FUNCTION_164_2();

    OUTLINED_FUNCTION_1();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_241_1();
  v91 = sub_267EF4918();
  v92 = sub_267EF97C8();
  *(v26 + 376) = v92;

  if (v54 == 3 && sub_267D60D20())
  {
    v93 = *(v55 + 56);
    if (v93)
    {
      v94 = *(v55 + 48);
      *(v26 + 240) = MEMORY[0x277D837D0];
      *(v26 + 216) = v94;
      *(v26 + 224) = v93;

      OUTLINED_FUNCTION_5_72();
      sub_267ECE45C();
      sub_267B9F98C(v26 + 216, &qword_28022AEF0, &qword_267EFCDE0);
    }
  }

  v96 = sub_267C7C28C(v54) == 0x6E65697069636572 && v95 == 0xE900000000000074;
  if (v96 || ((sub_267EF9EA8(), OUTLINED_FUNCTION_54_1(), , sub_267C7C28C(v54) == 0x746E65746E6F63) ? (v98 = v97 == 0xE700000000000000) : (v98 = 0), v98))
  {

    v109 = *(v26 + 264);
    v110 = v109[5];
    v111 = v109[6];
    OUTLINED_FUNCTION_121_6(v109 + 2);
    v112 = OUTLINED_FUNCTION_10_3();
    v113(v112);
    v114 = *(v26 + 160);
    v115 = *(v26 + 168);
    OUTLINED_FUNCTION_131((v26 + 136));
    if (sub_267BF30D0())
    {
      v116 = sub_267EF96C8();
    }

    else
    {
      v116 = 0;
    }

    __swift_destroy_boxed_opaque_existential_0((v26 + 136));
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v117 = *(v26 + 264);
    v118 = sub_267EF8A08();
    __swift_project_value_buffer(v118, qword_280240FB0);
    OUTLINED_FUNCTION_156_2();

    v119 = v92;
    v120 = sub_267EF89F8();
    v121 = sub_267EF95D8();
    v122 = os_log_type_enabled(v120, v121);
    v123 = *(v26 + 264);
    if (v122)
    {
      v124 = swift_slowAlloc();
      *v124 = 67109632;
      *(v124 + 4) = v116 & 1;
      *(v124 + 8) = 1024;
      v125 = v116;
      v127 = v109[5];
      v126 = v109[6];
      v128 = v109 + 2;
      v129 = v125;
      __swift_project_boxed_opaque_existential_0(v128, v127);
      v141 = v121;
      (*(v126 + 8))(v127, v126);
      v130 = *(v26 + 200);
      v131 = *(v26 + 208);
      OUTLINED_FUNCTION_131((v26 + 176));
      LOBYTE(v130) = sub_267BF30D0();
      __swift_destroy_boxed_opaque_existential_0((v26 + 176));
      *(v124 + 10) = v130 & 1;

      *(v124 + 14) = 1024;
      *(v124 + 16) = sub_267EF96C8() & 1;

      _os_log_impl(&dword_267B93000, v120, v141, "#SendMessageNeedsValueFlowStrategy shouldReturnSMARTOutput : %{BOOL}d because device supports smart : %{BOOL}d and isTextMessage : %{BOOL}d ", v124, 0x14u);
      OUTLINED_FUNCTION_32_0();
    }

    else
    {
      v132 = *(v26 + 264);

      v120 = v119;
      v129 = v116;
    }

    v133 = *(v26 + 280);
    v134 = *(v26 + 256);

    *(v26 + 384) = sub_267EF4908();
    if (v129)
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v26 + 392) = v135;
      *v135 = v136;
      OUTLINED_FUNCTION_155_4(v135);
      OUTLINED_FUNCTION_89();

      return sub_267ED6624();
    }

    else
    {
      OUTLINED_FUNCTION_241_1();
      *(v26 + 408) = sub_267EF4928();
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v26 + 416) = v138;
      *v138 = v139;
      OUTLINED_FUNCTION_155_4(v138);
      OUTLINED_FUNCTION_89();

      return sub_267ED2EF8();
    }
  }

  else
  {
    sub_267EF9EA8();
    OUTLINED_FUNCTION_54_1();

    v99 = *(v26 + 280);
    v100 = *(v26 + 256);
    *(v26 + 432) = sub_267EF4908();
    *(v26 + 440) = sub_267EF4918();
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v26 + 448) = v101;
    *v101 = v102;
    v101[1] = sub_267ED2904;
    v103 = *(v26 + 328);
    v104 = *(v26 + 264);
    OUTLINED_FUNCTION_89();

    return sub_267ED88A4(v105, v106, v107, v108);
  }
}

uint64_t sub_267BF30D0()
{
  OUTLINED_FUNCTION_7_5();
  if (sub_267DBF878())
  {
    return 1;
  }

  OUTLINED_FUNCTION_3();

  return sub_267EF3BE8();
}

uint64_t sub_267BF3128(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_123(a1, a2, a3, a4);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_61_0();
  v9(v8);
  return v4;
}

uint64_t sub_267BF3174()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 48) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267BF326C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v5 = OUTLINED_FUNCTION_18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_267EFCC90;
  OUTLINED_FUNCTION_12_1();
  *(v11 + 32) = 0xD000000000000017;
  *(v11 + 40) = v12;
  v13 = MEMORY[0x277D839B0];
  *(v11 + 48) = 0;
  *(v11 + 72) = v13;
  *(v11 + 80) = a1;
  *(v11 + 88) = a2;
  OUTLINED_FUNCTION_178();
  sub_267BC9B04(v14, v15, v16, &qword_267EFC0B0);
  v17 = sub_267EF79B8();
  if (__swift_getEnumTagSinglePayload(v9, 1, v17) == 1)
  {
    sub_267B9FED8(v9, &unk_28022AE30, &qword_267EFC0B0);
    *(v10 + 96) = 0u;
    *(v10 + 112) = 0u;
  }

  else
  {
    *(v10 + 120) = v17;
    __swift_allocate_boxed_opaque_existential_0((v10 + 96));
    OUTLINED_FUNCTION_5_0(v17);
    (*(v18 + 32))();
  }

  return v10;
}

uint64_t OUTLINED_FUNCTION_114_3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = (v2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000) + 1;
  *(a1 + 40) = a2;
  return v3;
}

uint64_t OUTLINED_FUNCTION_114_4()
{
  v2 = *(v0 + 224);
  v3 = *(v0 + 176);

  return sub_267EF8A08();
}

void OUTLINED_FUNCTION_114_5()
{
  v3 = v0[160];
  v4 = v0[159];
  v5 = v0[142];
  v6 = v0[87];
}

void OUTLINED_FUNCTION_114_7()
{

  JUMPOUT(0x26D609870);
}

uint64_t OUTLINED_FUNCTION_114_9()
{
  v2 = v0[82];
  v3 = v0[81];
  v4 = v0[80];
  v5 = v0[77];
}

uint64_t sub_267BF34C8()
{
  v2 = *(*v1 + 32);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_267BF35F8, 0, 0);
  }
}

uint64_t sub_267BF35F8()
{
  if (*(v0 + 40) == 1)
  {
    v1 = *(v0 + 16);
    v3 = v1[3];
    v2 = v1[4];
    __swift_project_boxed_opaque_existential_0(v1, v3);
    v4 = sub_267BA9F38(0, &qword_28022CAD0, 0x277D479E8);
    v5 = sub_267BF20D0(v3, v4, v2);
    if (sub_267BAF0DC(v5))
    {
      sub_267BBD0EC(0, (v5 & 0xC000000000000001) == 0, v5);
      if ((v5 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x26D609870](0, v5);
      }

      else
      {
        v6 = *(v5 + 32);
      }

      v7 = v6;
      v8 = *(v0 + 24);

      sub_267BF2428(v7);
    }

    else
    {
    }
  }

  v9 = *(v0 + 8);

  return v9();
}

id sub_267BF3718@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_dynamicCastUnknownClass();
  v5 = result;
  if (result)
  {
    result = v3;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_267BF3768()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 360);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v3[46] = v0;

  v9 = v3[44];

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 7);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267BF3878()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *(v1 + 416);
  *v4 = *v2;
  *(v3 + 424) = v0;

  OUTLINED_FUNCTION_22_2();
  v7 = *(v1 + 384);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267BF39AC()
{
  OUTLINED_FUNCTION_56();

  OUTLINED_FUNCTION_164_2();

  OUTLINED_FUNCTION_1();

  return v1();
}

uint64_t *OUTLINED_FUNCTION_158_0()
{
  *(v0 + 264) = v1;

  return __swift_allocate_boxed_opaque_existential_0((v0 + 240));
}

uint64_t sub_267BF3A80(uint64_t a1)
{
  v2 = sub_267EF6D88();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_267EF6F58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v12 = sub_267EF8A08();
  __swift_project_value_buffer(v12, qword_280240FB0);
  (*(v8 + 16))(v11, a1, v7);
  v13 = sub_267EF89F8();
  v14 = sub_267EF95D8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v23 = v2;
    v16 = v15;
    v24 = swift_slowAlloc();
    v26 = v24;
    *v16 = 136315138;
    sub_267EF6F28();
    v17 = sub_267EF6D08();
    v25 = a1;
    v19 = v18;
    (*(v3 + 8))(v6, v23);
    (*(v8 + 8))(v11, v7);
    v20 = sub_267BA33E8(v17, v19, &v26);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_267B93000, v13, v14, "#Donation+Utilities: Donating %s to Siri Remembers", v16, 0xCu);
    v21 = v24;
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x26D60A7B0](v21, -1, -1);
    MEMORY[0x26D60A7B0](v16, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  return sub_267EF6F38();
}

uint64_t _s11SiriKitFlow12StaticActionP0a8MessagesC0E16debugDescriptionSSvg_0()
{
  swift_getObjectType();
  swift_getMetatypeMetadata();
  return sub_267EF9098();
}

uint64_t sub_267BF3DC4()
{
  v19 = v0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = v0[50];
  v0[54] = __swift_project_value_buffer(v0[51], qword_280240FB0);
  swift_unknownObjectRetain();
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[49];
    v4 = v0[50];
    v6 = v0[48];
    swift_slowAlloc();
    v7 = OUTLINED_FUNCTION_55_0();
    v18 = v7;
    *v1 = 136315138;
    v0[47] = v4;
    v8 = *(*(*(v5 + 8) + 8) + 8);
    v9 = sub_267EF9EB8();
    v11 = sub_267BA33E8(v9, v10, &v18);

    *(v1 + 4) = v11;
    _os_log_impl(&dword_267B93000, v2, v3, "#ReadAction %s is running", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  v16 = (v0[49] + 80);
  v17 = (*v16 + **v16);
  v12 = (*v16)[1];
  v13 = swift_task_alloc();
  v0[55] = v13;
  *v13 = v0;
  v14 = OUTLINED_FUNCTION_18_6(v13);

  return v17(v14);
}

uint64_t sub_267BF3FE0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  sub_267EF2CB8();
  sub_267BD974C(v5, (v0 + 2));
  v7 = v0[5];
  v8 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v7);
  OUTLINED_FUNCTION_42_7(v8);
  v10 = v9(v7, v8);

  v11 = swift_task_alloc();
  *(v11 + 16) = v1;
  sub_267BF95F4(sub_267BF98FC, v11, v10);

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v2 + 8))(v1, v4);

  OUTLINED_FUNCTION_17();

  return v12();
}

uint64_t sub_267BF4118()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_267BF4170()
{
  v0 = sub_267BF42CC();
  v1 = sub_267BE6268();
  v2 = (v1 & 1) != 0 && sub_267E2B4DC();
  type metadata accessor for MessagesReadingRequestDialogContext();
  v3 = sub_267BF4314(*&v0, 0, v1 & 1, v2);
  if (qword_280228820 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  sub_267EF95D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229260, &unk_267EFCD90);
  v4 = OUTLINED_FUNCTION_9_14();
  *(v4 + 16) = xmmword_267EFC020;
  sub_267EF9C58();
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_267BFBEB4();
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;
  sub_267EF8998();

  return v3;
}

uint64_t sub_267BF42CC()
{
  OUTLINED_FUNCTION_4_58();
  v1 = *(v0 + 56);
  if (!(v1 >> 62))
  {
    return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v1 < 0)
  {
    v3 = *(v0 + 56);
  }

  return sub_267EF9A68();
}

uint64_t sub_267BF4314(uint64_t a1, char a2, char a3, char a4)
{
  type metadata accessor for MessagesReadingRequestDialogContext.Builder();
  inited = swift_initStackObject();
  *(inited + 16) = a1;
  *(inited + 24) = a2 & 1;
  *(inited + 25) = a3;
  *(inited + 26) = a4;
  type metadata accessor for MessagesReadingRequestDialogContext();
  v9 = swift_allocObject();
  sub_267BFBF74(inited);
  return v9;
}

uint64_t sub_267BF43D0(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_267BF4764()
{
  v1 = *v0;
  swift_getWitnessTable();
  return StaticAction.debugDescription.getter();
}

uint64_t sub_267BF47B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  swift_getWitnessTable();
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267BF9538();
}

uint64_t sub_267BF4878()
{
  OUTLINED_FUNCTION_12();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_267EF2CC8();
  v1[10] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[11] = v5;
  v7 = *(v6 + 64);
  v1[12] = OUTLINED_FUNCTION_2();
  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

BOOL sub_267BF4920()
{
  if (*(v0 + 120))
  {
    return 1;
  }

  v2 = *(v0 + 16);
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v4 = *(v0 + 16);
    }

    v3 = sub_267EF9A68();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3 > 1;
}

void *sub_267BF4998(uint64_t a1)
{
  v1[2] = 0;
  v1[3] = *(a1 + 16);
  v2 = *(a1 + 24);

  v1[4] = v2;
  return v1;
}

uint64_t sub_267BF49F0()
{
  sub_267BFC094();

  return swift_deallocClassInstance();
}

void *sub_267BF4A24(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v12 = OUTLINED_FUNCTION_8_16();
  v13(v12);
  OUTLINED_FUNCTION_76();
  if (!sub_267BAF0DC(v14))
  {

    return 0;
  }

  OUTLINED_FUNCTION_97_3();
  if ((v2 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x26D609870](0, v2);
  }

  else
  {
    v15 = *(v2 + 32);
  }

  v16 = v15;

  v17 = v16;
  if ((sub_267BE8214() & 1) == 0)
  {
    v20 = [v16 sender];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 displayName];
      sub_267EF9028();
      OUTLINED_FUNCTION_74_0();

      return v17;
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v23 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v23, qword_280240FB0);
    v24 = sub_267EF89F8();
    v25 = sub_267EF95E8();
    if (!OUTLINED_FUNCTION_27(v25))
    {
      goto LABEL_20;
    }

LABEL_19:
    v28 = OUTLINED_FUNCTION_32();
    *v28 = 0;
    OUTLINED_FUNCTION_45();
    _os_log_impl(v29, v30, v31, v32, v28, 2u);
    OUTLINED_FUNCTION_32_0();
LABEL_20:

    return 0;
  }

  v18 = [v16 groupName];
  if (!v18)
  {
    sub_267C7FEA8();
    v17 = v10;
    sub_267EFA028();
    OUTLINED_FUNCTION_74_0();
    sub_267BD6C8C(v10, &qword_2802295B8);
    if (a2)
    {

      return v17;
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v26 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v26, qword_280240FB0);
    v24 = sub_267EF89F8();
    v27 = sub_267EF95E8();
    if (!OUTLINED_FUNCTION_27(v27))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v17 = v18;
  v19 = [v18 spokenPhrase];

  sub_267EF9028();
  OUTLINED_FUNCTION_74_0();

  return v17;
}

uint64_t sub_267BF4D18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BD5D40;

  return sub_267BFC0BC();
}

uint64_t sub_267BF4DDC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 120);
  *v4 = *v1;
  v3[16] = v7;
  v3[17] = v8;
  v3[18] = v0;

  if (!v0)
  {
    v9 = v3[14];
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_267BF4EE8()
{
  OUTLINED_FUNCTION_26_7();
  if (v5)
  {
    OUTLINED_FUNCTION_2_21();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_18_10();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_24();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_10_14(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
    v9 = OUTLINED_FUNCTION_37_3();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_7_14();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = OUTLINED_FUNCTION_42_5();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_267BF4FB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  swift_getWitnessTable();
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267BF4878();
}

uint64_t sub_267BF5078(char a1, char a2, char a3, char a4, char a5, char a6, uint64_t a7, char a8, char a9)
{
  type metadata accessor for MessagesConversationDialogContext.Builder();
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  *(inited + 32) = 0;
  *(inited + 16) = a1;
  *(inited + 17) = a2;
  *(inited + 18) = a3;
  *(inited + 19) = a4;
  *(inited + 20) = a5;
  *(inited + 21) = a6;
  sub_267BFB984(a7);

  *(inited + 32) = a8;
  *(inited + 33) = a9;
  type metadata accessor for MessagesConversationDialogContext();
  v18 = swift_allocObject();
  sub_267BFB9C8(inited);

  return v18;
}

uint64_t sub_267BF5154()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v0[2] = v1;
    v0[3] = v2;
    if (qword_2802287D0 != -1)
    {
      OUTLINED_FUNCTION_38_17();
      swift_once();
    }

    __swift_project_value_buffer(v0[10], qword_280240EC0);
    sub_267BB5034();
    OUTLINED_FUNCTION_54_11();
    sub_267EF9908();
    if ((v4 & 1) == 0)
    {
      goto LABEL_8;
    }

    v5 = v0[17];
    v7 = v0[11];
    v6 = v0[12];
    v8 = v0[9];
    v9 = v0[10];
    v0[4] = v0[16];
    v0[5] = v5;
    sub_267DE9348(v6);
    sub_267EF9908();
    v11 = v10;
    (*(v7 + 8))(v6, v9);
    if ((v11 & 1) == 0)
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v24 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v24, qword_280240FB0);
      v25 = sub_267EF89F8();
      v26 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_5_2(v26))
      {
        v27 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v27);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v28, v29, v30, v31, v32, 2u);
        OUTLINED_FUNCTION_26();
      }

      v33 = v0[16];
      v34 = v0[17];
      v35 = v0[9];

      v13 = sub_267D5EA7C();
      v2 = v36;

      v12 = 0;
    }

    else
    {
LABEL_8:
      v12 = 0;
      v13 = v0[16];
    }
  }

  else
  {
    v14 = v0[17];

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v15 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v15, qword_280240FB0);
    v16 = sub_267EF89F8();
    v17 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v17))
    {
      v12 = 2;
      v18 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v18);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v19, v20, v21, v22, v23, 2u);
      OUTLINED_FUNCTION_26();

      v13 = 0;
      v2 = 0;
    }

    else
    {

      v13 = 0;
      v2 = 0;
      v12 = 2;
    }
  }

  v37 = v0[12];
  v38 = v0[6];

  *v38 = v13;
  *(v38 + 8) = v2;
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = v12;
  OUTLINED_FUNCTION_17();

  return v39();
}