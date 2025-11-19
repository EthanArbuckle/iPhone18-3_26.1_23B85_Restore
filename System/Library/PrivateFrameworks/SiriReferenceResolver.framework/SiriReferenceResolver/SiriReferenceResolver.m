uint64_t sub_268C958E0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_268C958F8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_268C95930()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_268C95970()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_268C95A80@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_268CA7454();
  *a2 = result;
  return result;
}

uint64_t sub_268C95AB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_268CB7750();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_268C95AF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_268CB7750();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_268C95C30()
{
  v1 = sub_268CB7930();
  OUTLINED_FUNCTION_2_4(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_268C95CDC@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_268C95D68(void *a1)
{
  v2 = sub_268CB7840();
  v4 = sub_268C95E08(a1, v2, v3);

  v5 = sub_268C9F044(0, 0, 0, 0, v4, 0, 0, 0, 0xF000000000000000);

  return v5;
}

uint64_t sub_268C95E08(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_268CB7160();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_268CB7280();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_268CB7270();
  sub_268C96094(a1);
  if (v15)
  {
    sub_268CB7260();
  }

  else
  {
    sub_268CB7260();
  }

  v16 = [a1 messageConversationIdentifier];
  sub_268CB7A10();

  sub_268CB7130();
  sub_268CB7090();
  (*(v7 + 8))(v10, v6);
  v17 = sub_268C960F8(a1);
  if (!v17)
  {
    goto LABEL_15;
  }

  v18 = v17;
  result = sub_268CAAE90();
  if (!result)
  {
LABEL_14:

LABEL_15:
    v24 = MEMORY[0x26D62AA30](v14);

    return v24;
  }

  v20 = result;
  if (result >= 1)
  {
    for (i = 0; i != v20; ++i)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x26D62B570](i, v18);
      }

      else
      {
        v22 = *(v18 + 8 * i + 32);
      }

      v23 = v22;
      if (sub_268CB44B4(a2, a3, v22))
      {

        sub_268CB7250();
      }
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_268C96094(void *a1)
{
  v1 = [a1 groupName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_268CB7A10();

  return v3;
}

uint64_t sub_268C960F8(void *a1)
{
  v1 = [a1 recipients];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_268C96158();
  v3 = sub_268CB7B50();

  return v3;
}

unint64_t sub_268C96158()
{
  result = qword_2802DA4B0;
  if (!qword_2802DA4B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802DA4B0);
  }

  return result;
}

uint64_t sub_268C961B0()
{
  Matcher = type metadata accessor for BaseQueryMatcher();
  v1 = *(Matcher + 48);
  v2 = *(Matcher + 52);
  v3 = swift_allocObject();
  result = sub_268C97DE4();
  qword_28131ECD8 = v3;
  return result;
}

uint64_t sub_268C961F0()
{
  result = sub_268C96224(0x2E217D7B5D5B2928, 0xE800000000000000);
  qword_2802DA630 = result;
  return result;
}

uint64_t sub_268C96224(uint64_t a1, unint64_t a2)
{
  v4 = sub_268CB7A70();
  v10 = MEMORY[0x26D62B450](v4, MEMORY[0x277D835B0], MEMORY[0x277D835B8]);
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v9[2] = a1;
  v9[3] = a2;
  v9[4] = 0;
  v9[5] = v5;
  while (1)
  {
    v6 = sub_268CB7AA0();
    if (!v7)
    {
      break;
    }

    sub_268C98E64(v9, v6, v7);
  }

  return v10;
}

uint64_t sub_268C962C4(uint64_t a1, uint64_t a2, char a3)
{
  sub_268CB77B0();
  sub_268C96540();
  v5 = v4;

  if (v5)
  {
LABEL_33:
    a3 = 1;
    return a3 & 1;
  }

  v6 = sub_268CB77C0();
  if (!v6)
  {
LABEL_17:
    sub_268CB77B0();
    v18 = sub_268CB7670();
    v20 = v19;

    if (v18 == 0x505F6E6F6D6D6F63 && v20 == 0xED00006E6F737265)
    {
    }

    else
    {
      v22 = OUTLINED_FUNCTION_3();

      if ((v22 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    if (sub_268CB7670() == 0xD000000000000012 && 0x8000000268CB95B0 == v23)
    {

      return a3 & 1;
    }

    v25 = sub_268CB7DC0();

    if (v25)
    {
      return a3 & 1;
    }

LABEL_29:
    a3 = 0;
    return a3 & 1;
  }

  v7 = v6;
  v26 = a3;
  result = sub_268CAAE90(v6);
  v9 = result;
  v10 = 0;
  while (1)
  {
    if (v9 == v10)
    {

      a3 = v26;
      goto LABEL_17;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D62B570](v10, v7);
    }

    else
    {
      if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v11 = *(v7 + 8 * v10 + 32);
    }

    if (__OFADD__(v10, 1))
    {
      break;
    }

    v12 = sub_268CB7670();
    v14 = v13;
    if (v12 == sub_268CB7670() && v14 == v15)
    {

LABEL_32:

      goto LABEL_33;
    }

    v17 = sub_268CB7DC0();

    ++v10;
    if (v17)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void sub_268C96540()
{
  OUTLINED_FUNCTION_8();
  v15 = v1;
  v2 = sub_268CB7670();
  v4 = v3;
  v5 = sub_268CB7670();
  v7 = v6;
  v8 = v2 == 0x535F6E6F6D6D6F63 && v4 == 0xEE00676E69747465;
  if (!v8 && (sub_268CB7DC0() & 1) == 0 || (v5 == 0x535F6E6F6D6D6F63 ? (v9 = v7 == 0xEE00676E69747465) : (v9 = 0), !v9 && (sub_268CB7DC0() & 1) == 0))
  {
    v10 = v2 == v5 && v4 == v7;
    if (v10 || (sub_268CB7DC0() & 1) != 0 || (v2 == 0x6E456F4E5F6F7375 ? (v11 = v4 == 0xEC00000079746974) : (v11 = 0), v11 || (sub_268CB7DC0() & 1) != 0))
    {
    }

    else
    {
      v12 = sub_268CA63D0(v5, v7, *(v0 + OBJC_IVAR____TtC21SiriReferenceResolver16BaseQueryMatcher_equivalentTypesForEntityType));
      if (!v12)
      {
        goto LABEL_24;
      }

      v16[0] = v2;
      v16[1] = v4;
      MEMORY[0x28223BE20]();
      v14[2] = v16;
      v13 = sub_268C9B0B0(sub_268C9AE9C, v14, v12);

      if (!v13)
      {

        goto LABEL_25;
      }
    }

    sub_268CB7650();
    sub_268CB7650();
    sub_268C96794();

LABEL_24:

    goto LABEL_25;
  }

LABEL_25:
  OUTLINED_FUNCTION_7();
}

void sub_268C96794()
{
  OUTLINED_FUNCTION_8();
  v76 = v0;
  v79 = v2;
  v4 = v3;
  v74 = v5;
  OUTLINED_FUNCTION_9();
  v10 = v6 + 64;
  v11 = 1 << *(v6 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v6 + 64);
  v68 = OBJC_IVAR____TtC21SiriReferenceResolver16BaseQueryMatcher_equivalentTypesForEntityType;
  v75 = OBJC_IVAR____TtC21SiriReferenceResolver16BaseQueryMatcher_logger;
  v14 = (v11 + 63) >> 6;
  v77 = v7;
  v78 = v8;
  v72 = 0x8000000268CB94D0;
  v16 = v7 == v9 && 0x8000000268CB94D0 == v8;
  v73 = v16;
  v70 = "common_PostalAddress";
  v71 = "licationQueryMatcher";

  v17 = 0;
  v67 = 0;
  while (v13)
  {
LABEL_15:
    OUTLINED_FUNCTION_16();
    v20 = v19 | (v17 << 6);
    v21 = (*(v4 + 48) + 16 * v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = *(*(v4 + 56) + 8 * v20);

    if (sub_268CB7B00())
    {
    }

    else
    {
      if (v79)
      {
        v25 = v22 == v1 && v23 == 0xE500000000000000;
        if (v25 || (OUTLINED_FUNCTION_15(), (sub_268CB7DC0() & 1) != 0))
        {
          if (v73)
          {
            goto LABEL_25;
          }

          if (sub_268CB7DC0())
          {
            goto LABEL_25;
          }

          v32 = *(v76 + v68);
          if (*(v32 + 16))
          {
            v33 = sub_268CA5E3C(v77, v78);
            if (v34)
            {
              v69 = v4;
              v66 = v64;
              v35 = *(*(v32 + 56) + 8 * v33);
              v80[0] = 0xD000000000000015;
              v80[1] = v72;
              MEMORY[0x28223BE20]();
              *&v64[-16] = v80;

              v36 = v1;
              v37 = v67;
              v65 = sub_268C9B0B0(sub_268C9AE30, &v64[-32], v35);
              v67 = v37;
              v1 = v36;

              v4 = v69;
              if (v65)
              {
LABEL_25:

                v26 = sub_268CB7730();
                v27 = sub_268CB7BC0();
                if (!os_log_type_enabled(v26, v27))
                {
                  goto LABEL_45;
                }

                v28 = swift_slowAlloc();
                *v28 = 0;
                v29 = v27;
                v30 = v26;
                v31 = "Disable label matching qualified";
                goto LABEL_44;
              }
            }
          }
        }
      }

      if (v22 != 1701869940 || v23 != 0xE400000000000000)
      {
        OUTLINED_FUNCTION_15();
        if ((sub_268CB7DC0() & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      if (qword_28131EA10 != -1)
      {
        swift_once();
      }

      v39 = qword_28131EC98 == v77 && unk_28131ECA0 == v78;
      if (v39 || (sub_268CB7DC0() & 1) != 0)
      {

        v26 = sub_268CB7730();
        v40 = sub_268CB7BC0();
        if (!os_log_type_enabled(v26, v40))
        {
          goto LABEL_45;
        }

        v28 = swift_slowAlloc();
        *v28 = 0;
        v29 = v40;
        v30 = v26;
        v31 = "Skip matching common_Calendar.type.common_CalendarEventType";
LABEL_44:
        _os_log_impl(&dword_268C94000, v30, v29, v31, v28, 2u);
        MEMORY[0x26D62BBE0](v28, -1, -1);
LABEL_45:
      }

      else
      {
LABEL_46:
        v1 = v74;
        if (!*(v74 + 16) || (v41 = OUTLINED_FUNCTION_15(), v43 = sub_268CA5E3C(v41, v42), (v44 & 1) == 0))
        {

LABEL_80:

          goto LABEL_75;
        }

        v69 = v4;
        v45 = *(*(v1 + 56) + 8 * v43);

        v47 = sub_268C96DFC(v46, v24);

        if (v47)
        {

          v4 = v69;
          OUTLINED_FUNCTION_9();
        }

        else
        {
          if (v22 == 1701667182 && v23 == 0xE400000000000000)
          {

            v4 = v69;
          }

          else
          {
            OUTLINED_FUNCTION_15();
            v49 = OUTLINED_FUNCTION_17();

            v4 = v69;
            if ((v49 & 1) == 0)
            {
              goto LABEL_77;
            }
          }

          v50 = v74;
          if (!*(v74 + 16))
          {
            goto LABEL_79;
          }

          v1 = v74;
          v51 = sub_268CA5E3C(0xD000000000000018, v71 | 0x8000000000000000);
          if ((v52 & 1) == 0)
          {
            goto LABEL_79;
          }

          v53 = *(*(v50 + 56) + 8 * v51);
          if (v53 >> 62)
          {
            if (v53 < 0)
            {
              v63 = *(*(v1 + 56) + 8 * v51);
            }

            sub_268CB7D50();
          }

          else
          {
            v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          OUTLINED_FUNCTION_9();
          if (!v55)
          {
            goto LABEL_77;
          }

          if ((v53 & 0xC000000000000001) != 0)
          {

            OUTLINED_FUNCTION_14();
          }

          else
          {
            if (!*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_82;
            }

            v56 = *(v53 + 32);
          }

          v57 = sub_268CB7620();

          if (!v57)
          {
LABEL_77:

LABEL_74:

LABEL_75:
            OUTLINED_FUNCTION_7();
            return;
          }

          v58 = sub_268CB7650();

          if (!*(v58 + 16) || (v59 = sub_268CA5E3C(v1, 0xE500000000000000), (v60 & 1) == 0))
          {

LABEL_79:

            goto LABEL_80;
          }

          v61 = *(*(v58 + 56) + 8 * v59);

          v62 = sub_268C96DFC(v61, v24);

          if ((v62 & 1) == 0)
          {
            goto LABEL_74;
          }
        }
      }
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v14)
    {
      goto LABEL_74;
    }

    v13 = *(v10 + 8 * v18);
    ++v17;
    if (v13)
    {
      v17 = v18;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_82:
  __break(1u);
}

uint64_t sub_268C96DFC(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_268CB7D50())
  {
    v5 = a1 >> 62 ? sub_268CB7D50() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 < i)
    {
      break;
    }

    v11 = MEMORY[0x277D84FA0];
    v6 = sub_268CAAE90(a2);

    for (j = 0; ; ++j)
    {
      if (v6 == j)
      {

        return 1;
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26D62B570](j, a2);
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(a2 + 8 * j + 32);
      }

      if (__OFADD__(j, 1))
      {
        break;
      }

      v9 = sub_268C96FD4(v8, a1, &v11);

      if ((v9 & 1) == 0)
      {

        return 0;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return 0;
}

uint64_t sub_268C96FD4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = sub_268CAAE90(a2);
  v6 = result;
  v7 = 0;
  v8 = a2 & 0xC000000000000001;
  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v18 = a2;
  v10 = a2 + 32;
  while (1)
  {
    if (v7 == v6)
    {
      return v7 != v6;
    }

    if (v8)
    {
      result = MEMORY[0x26D62B570](v7, v18);
    }

    else
    {
      if (v7 >= *(v9 + 16))
      {
        goto LABEL_18;
      }

      v11 = *(v10 + 8 * v7);
    }

    if (__OFADD__(v7, 1))
    {
      break;
    }

    v12 = *a3;
    if (*(*a3 + 16))
    {
      v13 = *(v12 + 40);
      v14 = sub_268CB7E40();
      v15 = ~(-1 << *(v12 + 32));
      while (1)
      {
        v16 = v14 & v15;
        if (((*(v12 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        v14 = v16 + 1;
        if (*(*(v12 + 48) + 8 * v16) == v7)
        {
          goto LABEL_13;
        }
      }
    }

    sub_268C97144();
    if (v17)
    {
      sub_268C98FB0(&v19, v7);

      return v7 != v6;
    }

LABEL_13:

    ++v7;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_268C97144()
{
  OUTLINED_FUNCTION_8();
  v1 = v0;
  sub_268CB75F0();
  if (v2)
  {
    type metadata accessor for BaseQueryMatcher();
    sub_268C97254();
  }

  else
  {
    v3 = sub_268CB7600();
    if (v4)
    {
      if (sub_268CB7620())
      {
        sub_268C977CC();
      }

      else
      {
        if (!sub_268CB7630())
        {
          goto LABEL_10;
        }

        sub_268C97834();
      }

      goto LABEL_10;
    }

    sub_268C97798(v1, v3);
  }

LABEL_10:
  OUTLINED_FUNCTION_7();
}

void sub_268C97254()
{
  OUTLINED_FUNCTION_8();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_268CB75F0();
  if (!v8)
  {
    goto LABEL_57;
  }

  if (!v1)
  {
    goto LABEL_27;
  }

  v9 = v3 == 1701667182 && v1 == 0xE400000000000000;
  if (v9 || (OUTLINED_FUNCTION_17() & 1) != 0)
  {
    OUTLINED_FUNCTION_2();
    sub_268C97508();
LABEL_56:
    OUTLINED_FUNCTION_11();

    goto LABEL_57;
  }

  v10 = v3 == 0x6C6562616CLL && v1 == 0xE500000000000000;
  if (v10 || (sub_268CB7DC0() & 1) != 0)
  {
    if (!v5)
    {
      goto LABEL_58;
    }

    v11 = v7 == 0xD000000000000012 && 0x8000000268CB95B0 == v5;
    if (v11 || (OUTLINED_FUNCTION_10() & 1) != 0)
    {
      goto LABEL_55;
    }

    v12 = v7 == 0xD000000000000013 && 0x8000000268CB95D0 == v5;
    if (v12 || (sub_268CB7DC0() & 1) != 0)
    {
      goto LABEL_55;
    }
  }

  else
  {
LABEL_27:
    if (!v5)
    {
      goto LABEL_58;
    }

    if (v7 == 0xD000000000000012 && 0x8000000268CB95B0 == v5)
    {
      if (!v1)
      {
        goto LABEL_42;
      }

      goto LABEL_36;
    }
  }

  v14 = OUTLINED_FUNCTION_10();
  if (!v1 || (v14 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_36:
  v15 = v3 == 0x65756C6176 && v1 == 0xE500000000000000;
  if (v15 || (OUTLINED_FUNCTION_13() & 1) != 0)
  {
    v16 = OUTLINED_FUNCTION_2();
    sub_268C97598(v16, v17, v18);
    goto LABEL_56;
  }

LABEL_42:
  if (v7 == 0xD000000000000014 && 0x8000000268CB9590 == v5)
  {
    if (!v1)
    {
      goto LABEL_58;
    }

LABEL_50:
    v21 = v3 == 0x65756C6176 && v1 == 0xE500000000000000;
    if (v21 || (OUTLINED_FUNCTION_13() & 1) != 0)
    {
LABEL_55:
      OUTLINED_FUNCTION_2();
      sub_268C976C0();
      goto LABEL_56;
    }

    goto LABEL_58;
  }

  v20 = sub_268CB7DC0();
  if (v1 && (v20 & 1) != 0)
  {
    goto LABEL_50;
  }

LABEL_58:
  v22 = sub_268CB7A30();
  v24 = v23;

  OUTLINED_FUNCTION_5();
  if (v22 != sub_268CB7A30() || v24 != v25)
  {
    sub_268CB7DC0();
  }

LABEL_57:
  OUTLINED_FUNCTION_7();
}

uint64_t sub_268C97508()
{
  sub_268C979D8();
  v8 = sub_268C979D8();
  v0 = sub_268C98E10();
  OUTLINED_FUNCTION_1(v0, MEMORY[0x277D837D0], v1, v0, v2, v3, v4, v5, v8);
  v6 = sub_268CB7C60();

  return v6 & 1;
}

uint64_t sub_268C97598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_268C9A88C();

  v5 = sub_268C97BD4();
  sub_268C9ADC0(v5);
  if (v6)
  {

    OUTLINED_FUNCTION_5();
    v7 = sub_268C97BD4();
    v8 = sub_268C9ADC0(v7);
    if (v9)
    {
      v29 = v8;
      v10 = sub_268C98E10();
      OUTLINED_FUNCTION_1(v10, MEMORY[0x277D837D0], v11, v10, v12, v13, v14, v15, v29);
      sub_268CB7C60();
      OUTLINED_FUNCTION_11();
    }

    else
    {
      v22 = sub_268C98E10();
      OUTLINED_FUNCTION_1(v22, MEMORY[0x277D837D0], v23, v22, v24, v25, v26, v27, a3);
      sub_268CB7C60();
      OUTLINED_FUNCTION_11();
    }
  }

  else
  {
    v16 = sub_268C98E10();
    OUTLINED_FUNCTION_1(v16, MEMORY[0x277D837D0], v17, v16, v18, v19, v20, v21, a3);
    v4 = sub_268CB7C60();
  }

  return v4 & 1;
}

uint64_t sub_268C976C0()
{
  v0 = sub_268C979D8();
  v1 = sub_268C979D8();
  v2 = sub_268C98E10();
  OUTLINED_FUNCTION_1(v2, MEMORY[0x277D837D0], v3, v4, v5, v6, v7, v8, v1);
  v9 = sub_268CB7C60();
  if (v9)
  {

    v16 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_1(v9, MEMORY[0x277D837D0], v10, v11, v12, v13, v14, v15, v0);
    v16 = sub_268CB7C60();
  }

  return v16 & 1;
}

uint64_t sub_268C977CC()
{
  result = sub_268CB7620();
  if (result)
  {
    v1 = OUTLINED_FUNCTION_5();
    v2 = sub_268C96540(v1);

    return v2 & 1;
  }

  return result;
}

uint64_t sub_268C97834()
{
  result = sub_268CB7630();
  if (result)
  {
    v1 = sub_268C9788C();

    return v1 & 1;
  }

  return result;
}

uint64_t sub_268C9788C()
{
  v0 = sub_268CB70D0();
  v2 = v1;
  v3 = sub_268CB70D0();
  if (!v2)
  {
    goto LABEL_12;
  }

  if (!v4)
  {

    return 0;
  }

  if (v0 == v3 && v2 == v4)
  {

LABEL_12:

    goto LABEL_13;
  }

  v6 = sub_268CB7DC0();

  result = 0;
  if (v6)
  {
LABEL_13:
    v8 = sub_268CB70C0();
    v9 = sub_268CB70C0();
    v10 = v9;
    if (!v8)
    {

      return 1;
    }

    if (v9)
    {

      v11 = sub_268C97144(v10, v8, 0, 0, 0, 0, 0);

      return v11 & 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_268C979D8()
{

  while (1)
  {
    v0 = sub_268CB7AA0();
    if (!v1)
    {
      break;
    }

    v2 = v0;
    v3 = v1;
    if (qword_2802DA148 != -1)
    {
      swift_once();
    }

    v4 = qword_2802DA630;
    if (*(qword_2802DA630 + 16))
    {
      v5 = *(qword_2802DA630 + 40);
      sub_268CB7E50();
      sub_268CB79E0();
      v6 = sub_268CB7E70();
      v7 = ~(-1 << *(v4 + 32));
      while (1)
      {
        v8 = v6 & v7;
        if (((*(v4 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
        {
          break;
        }

        v9 = (*(v4 + 48) + 16 * v8);
        if (*v9 != v2 || v3 != v9[1])
        {
          v11 = sub_268CB7DC0();
          v6 = v8 + 1;
          if ((v11 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_15;
      }
    }

    v12 = OUTLINED_FUNCTION_5();
    MEMORY[0x26D62B320](v12);
LABEL_15:
  }

  sub_268C98E10();
  sub_268CB7C40();

  v13 = sub_268CB7A30();

  return v13;
}

id sub_268C97BD4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_268CB7A00();

  v2 = [v0 initWithStringValue_];

  return v2;
}

uint64_t sub_268C97C48()
{
  v1 = OBJC_IVAR____TtC21SiriReferenceResolver16BaseQueryMatcher_logger;
  v2 = sub_268CB7750();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC21SiriReferenceResolver16BaseQueryMatcher_equivalentTypesForEntityType);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for BaseQueryMatcher()
{
  result = qword_28131EB30;
  if (!qword_28131EB30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268C97D48()
{
  result = sub_268CB7750();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_268C97DE4()
{
  type metadata accessor for BaseQueryMatcher();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA3D0, &qword_268CB8768);
  sub_268CB7A20();
  sub_268CB7740();
  v1 = OBJC_IVAR____TtC21SiriReferenceResolver16BaseQueryMatcher_equivalentTypesForEntityType;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA3D8, &qword_268CB8770);
  *(v0 + v1) = sub_268CB79C0();
  return v0;
}

void sub_268C97ED8()
{
  type metadata accessor for AttachmentQueryMatcher();
  v0 = swift_allocObject();
  sub_268C98318();
  qword_28131EC50 = v0;
}

uint64_t sub_268C97F14()
{
  v4 = v1;
  OUTLINED_FUNCTION_19();
  v5 = sub_268C98144();

  if (!v5)
  {
    goto LABEL_26;
  }

  v6 = sub_268CB7670();
  v8 = v7;

  v9 = *(v4 + 16);

  v10 = sub_268CA3954(v6, v8, v9);
  v12 = v11;

  v13 = sub_268CB7670();
  if (v12)
  {
    if (v13 == v10 && v12 == v14)
    {
      goto LABEL_30;
    }

    v16 = OUTLINED_FUNCTION_3();

    if (v16)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v17 = sub_268CB7650();
  v18 = sub_268CA63D0(0xD000000000000018, 0x8000000268CB98E0, v17);

  if (!v18)
  {
    goto LABEL_24;
  }

  if (!sub_268CAAE90(v18))
  {

    goto LABEL_24;
  }

  OUTLINED_FUNCTION_6();
  if ((v18 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_14();
  }

  else
  {
    v19 = *(v18 + 32);
  }

  v20 = sub_268CB7620();

  if (!v20)
  {
LABEL_24:
    if (!v12)
    {
      return 1;
    }

    goto LABEL_25;
  }

  v21 = sub_268CB7670();
  v23 = v22;

  if (!v12)
  {
LABEL_25:

    goto LABEL_26;
  }

  if (v21 == v10 && v12 == v23)
  {
LABEL_30:

LABEL_31:

    return 1;
  }

  v25 = OUTLINED_FUNCTION_3();

  if (v25)
  {
    return 1;
  }

LABEL_26:
  if (qword_28131EB40 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  return sub_268C962C4(v3, v0, v2 & 1) & 1;
}

uint64_t sub_268C98144()
{
  v0 = sub_268CB7650();
  v1 = sub_268CA63D0(1701869940, 0xE400000000000000, v0);

  if (!v1)
  {
    return 0;
  }

  if (!sub_268CAAE90(v1))
  {
    goto LABEL_11;
  }

  sub_268CAAE98(0, (v1 & 0xC000000000000001) == 0, v1);
  if ((v1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D62B570](0, v1);
  }

  else
  {
    v2 = *(v1 + 32);
  }

  v3 = sub_268CB7620();

  if (!v3)
  {
    return 0;
  }

  v4 = sub_268CB7650();
  v5 = sub_268CA63D0(0x5664656E69666564, 0xEC00000065756C61, v4);

  if (!v5)
  {

    return 0;
  }

  if (!sub_268CAAE90(v5))
  {

LABEL_11:

    return 0;
  }

  OUTLINED_FUNCTION_6();
  if ((v5 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_14();
  }

  else
  {
    v6 = *(v5 + 32);
  }

  v7 = sub_268CB7620();

  return v7;
}

uint64_t sub_268C982BC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_268C98318()
{
  OUTLINED_FUNCTION_8();
  v32 = v0;
  v2 = sub_268CB73F0();
  v3 = OUTLINED_FUNCTION_12(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v31 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA3E0, &qword_268CB8778);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268CB8610;
  v16 = *(v5 + 104);
  v16(v14, *MEMORY[0x277D5EEF0], v1);
  v17 = sub_268CB73E0();
  v19 = v18;
  v20 = *(v5 + 8);
  v20(v14, v1);
  *(inited + 32) = v17;
  *(inited + 40) = v19;
  if (qword_28131E9F0 != -1)
  {
    swift_once();
  }

  v21 = unk_28131EC80;
  *(inited + 48) = qword_28131EC78;
  *(inited + 56) = v21;
  v16(v12, *MEMORY[0x277D5EF28], v1);

  v22 = sub_268CB73E0();
  v24 = v23;
  v20(v12, v1);
  *(inited + 64) = v22;
  *(inited + 72) = v24;
  if (qword_28131E9E8 != -1)
  {
    swift_once();
  }

  v25 = unk_28131EC70;
  *(inited + 80) = qword_28131EC68;
  *(inited + 88) = v25;
  v26 = v31;
  v16(v31, *MEMORY[0x277D5EF70], v1);

  v27 = sub_268CB73E0();
  v29 = v28;
  v20(v26, v1);
  *(inited + 96) = v27;
  *(inited + 104) = v29;
  if (qword_28131E9E0 != -1)
  {
    swift_once();
  }

  v30 = unk_28131EC60;
  *(inited + 112) = qword_28131EC58;
  *(inited + 120) = v30;

  *(v32 + 16) = sub_268CB79C0();
  OUTLINED_FUNCTION_7();
}

void sub_268C98630()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_19();
  v3 = sub_268CB7650();

  v4 = sub_268CA63D0(0xD000000000000018, 0x8000000268CB98E0, v3);

  if (!v4)
  {
    goto LABEL_10;
  }

  if (!sub_268CAAE90(v4))
  {

LABEL_10:
    v11 = 0;
    v12 = 0;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_6();
  if ((v4 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_14();
  }

  else
  {
    v5 = *(v4 + 32);
  }

  v6 = sub_268CB7620();

  if (!v6)
  {
    goto LABEL_10;
  }

  if (qword_28131EB40 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v7 = sub_268CB77D0();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  v10 = sub_268CB77A0();
  v11 = sub_268C962C4(v10, v0, v1 & 1);

  type metadata accessor for PersonQueryMatcher();
  v12 = sub_268C9891C(v0, v6);

LABEL_11:
  v13 = sub_268CB7650();
  v14 = sub_268CA63D0(0xD000000000000018, 0x8000000268CB98E0, v13);

  if (v14)
  {
    if (sub_268CAAE90(v14))
    {
      OUTLINED_FUNCTION_6();
      if ((v14 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_14();
      }

      else
      {
        v15 = *(v14 + 32);
      }

      v16 = sub_268CB7620();

      if (v16)
      {
        if (v12)
        {

          v12 = 1;
        }

        else
        {
          type metadata accessor for PersonQueryMatcher();
          v17 = sub_268CB77B0();
          v12 = sub_268C9891C(v17, v16);
        }
      }
    }

    else
    {
    }
  }

  type metadata accessor for PersonQueryMatcher();
  sub_268CB77B0();
  OUTLINED_FUNCTION_4();
  sub_268C98A8C(v18, v19, v20);
  v22 = v21;

  if (v22)
  {

    sub_268CB77B0();
    v23 = sub_268C989DC();

    if (v11 & 1 | (((v23 | v12) & 1) == 0))
    {
      goto LABEL_27;
    }
  }

  else if (v11)
  {
    goto LABEL_27;
  }

  if (qword_28131EB40 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  sub_268C962C4(v2, v0, v1 & 1);
LABEL_27:
  OUTLINED_FUNCTION_7();
}

uint64_t sub_268C9891C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4();
  sub_268C98A8C(v3, v4, v5);
  if (v6)
  {
    sub_268C98A8C(a2, 0x6C6562616CLL, 0xE500000000000000);
    if (v7)
    {
      type metadata accessor for BaseQueryMatcher();
      OUTLINED_FUNCTION_5();
      v9 = v8;
      sub_268C97508();
      OUTLINED_FUNCTION_11();
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_268C989DC()
{
  OUTLINED_FUNCTION_4();
  sub_268C98A8C(v0, v1, v2);
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    sub_268C98A8C(v4, v5, v6);
    if (v7)
    {
      type metadata accessor for BaseQueryMatcher();
      OUTLINED_FUNCTION_5();
      v9 = v8;
      sub_268C97508();
      OUTLINED_FUNCTION_11();
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

uint64_t sub_268C98A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_268CB7650();
  v6 = sub_268CA63D0(a2, a3, v5);

  if (v6)
  {
    if (sub_268CAAE90(v6))
    {
      sub_268CAAE98(0, (v6 & 0xC000000000000001) == 0, v6);
      if ((v6 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D62B570](0, v6);
      }

      else
      {
        v7 = *(v6 + 32);
      }

      v6 = sub_268CB75F0();
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

uint64_t sub_268C98BB0()
{
  v3 = OUTLINED_FUNCTION_18();
  v5 = v4;
  if (qword_2802DA198 != -1)
  {
    swift_once();
  }

  if (v3 == qword_2802DA680 && v5 == *algn_2802DA688)
  {

    return 1;
  }

  v7 = sub_268CB7DC0();

  if (v7)
  {
    return 1;
  }

  if (qword_28131EB40 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  return sub_268C962C4(v1, v2, v0 & 1) & 1;
}

uint64_t sub_268C98CDC()
{
  v3 = OUTLINED_FUNCTION_18();
  v5 = v4;
  if (qword_28131EA30 != -1)
  {
    swift_once();
  }

  if (v3 == qword_28131ECC8 && v5 == unk_28131ECD0)
  {

    if (v0)
    {
      return 1;
    }
  }

  else
  {
    v7 = sub_268CB7DC0();

    if (v7 & 1) != 0 && (v0)
    {
      return 1;
    }
  }

  if (qword_28131EB40 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  return sub_268C962C4(v1, v2, v0 & 1) & 1;
}

unint64_t sub_268C98E10()
{
  result = qword_28131E5F0;
  if (!qword_28131E5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131E5F0);
  }

  return result;
}

BOOL sub_268C98E64(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_268CB7E50();
  sub_268CB79E0();
  v9 = sub_268CB7E70();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_268CB7DC0() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_268C99AC4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

BOOL sub_268C98FB0(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(v6 + 40);
  v8 = sub_268CB7E40();
  v9 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v6 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v10) == a2)
    {
      goto LABEL_6;
    }

    v8 = v10 + 1;
  }

  v12 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v3;
  sub_268C99C2C(a2, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v15;
LABEL_6:
  result = v11 == 0;
  *a1 = a2;
  return result;
}

void sub_268C99080()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  v27 = v4;
  v5 = sub_268CB7790();
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v0;
  v13 = *v0;
  v14 = *(*v0 + 40);
  sub_268C9AE50(qword_28131E6C8);
  v32 = v3;
  v15 = sub_268CB79D0();
  v29 = v13;
  v30 = v13 + 56;
  v16 = ~(-1 << *(v13 + 32));
  v31 = v8 + 16;
  v28 = v8 + 8;
  while (1)
  {
    v17 = v15 & v16;
    if (((1 << (v15 & v16)) & *(v30 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      v22 = v26;
      v23 = *v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v32;
      (*(v8 + 16))(v12, v32, v1);
      v33 = *v22;
      sub_268C99D30(v12, v17, isUniquelyReferenced_nonNull_native);
      *v22 = v33;
      (*(v8 + 32))(v27, v25, v1);
      goto LABEL_7;
    }

    v18 = *(v8 + 72) * v17;
    v19 = *(v8 + 16);
    v19(v12, *(v29 + 48) + v18, v1);
    sub_268C9AE50(&qword_2802DA3B8);
    v20 = sub_268CB79F0();
    v21 = *(v8 + 8);
    v21(v12, v1);
    if (v20)
    {
      break;
    }

    v15 = v17 + 1;
  }

  v21(v32, v1);
  v19(v27, *(v29 + 48) + v18, v1);
LABEL_7:
  OUTLINED_FUNCTION_7();
}

uint64_t sub_268C99300(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA3A0, &qword_268CB8748);
  result = sub_268CB7CA0();
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
      sub_268C99F94(0, (v30 + 63) >> 6, v3 + 56);
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
    sub_268CB7E50();
    sub_268CB79E0();
    result = sub_268CB7E70();
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

uint64_t sub_268C9955C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA3B0, &qword_268CB8750);
  result = sub_268CB7CA0();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v9 = (v3 + 56);
  v8 = *(v3 + 56);
  v10 = 1 << *(v3 + 32);
  v27 = v2;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = result + 56;
  if ((v11 & v8) == 0)
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

      if (v7 >= ((v10 + 63) >> 6))
      {
        break;
      }

      v16 = v9[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    if (v10 >= 64)
    {
      sub_268C99F94(0, (v10 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v2 = v27;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    result = sub_268CB7E40();
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
    if (!v12)
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

uint64_t sub_268C99780(uint64_t a1)
{
  v2 = v1;
  v41 = sub_268CB7790();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA3C0, &qword_268CB8758);
  result = sub_268CB7CA0();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

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
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_268C99F94(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_268C9AE50(qword_28131E6C8);
    result = sub_268CB79D0();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_268C99AC4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_268C99300(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_268C9A610(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_268CB7E50();
      sub_268CB79E0();
      result = sub_268CB7E70();
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
        if (v19 || (sub_268CB7DC0() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_268C99FF8();
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
    result = sub_268CB7DD0();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_268C99C2C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_268C9955C(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_268C9A8D0(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      result = sub_268CB7E40();
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

    result = sub_268C9A150();
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
    result = sub_268CB7DD0();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_268C99D30(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_268CB7790();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_268C99780(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_268C9AABC(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_268C9AE50(qword_28131E6C8);
      v15 = sub_268CB79D0();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_268C9AE50(&qword_2802DA3B8);
        v17 = sub_268CB79F0();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_268C9A290();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_268CB7DD0();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_268C99F94(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_268CB8620;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_268C99FF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA3A0, &qword_268CB8748);
  v2 = *v0;
  v3 = sub_268CB7C90();
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

void *sub_268C9A150()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA3B0, &qword_268CB8750);
  v2 = *v0;
  v3 = sub_268CB7C90();
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

void *sub_268C9A290()
{
  v1 = v0;
  v2 = sub_268CB7790();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA3C0, &qword_268CB8758);
  v7 = *v0;
  v8 = sub_268CB7C90();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
  }

  return result;
}

void *sub_268C9A4C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA3C8, &qword_268CB8760);
  v2 = *v0;
  v3 = sub_268CB7C90();
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
        OUTLINED_FUNCTION_16();
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

uint64_t sub_268C9A610(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA3A0, &qword_268CB8748);
  result = sub_268CB7CA0();
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
        sub_268CB7E50();
        sub_268CB79E0();
        result = sub_268CB7E70();
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_268C9A88C()
{
  result = qword_2802DA3A8;
  if (!qword_2802DA3A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802DA3A8);
  }

  return result;
}

uint64_t sub_268C9A8D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA3B0, &qword_268CB8750);
  result = sub_268CB7CA0();
  v6 = result;
  if (*(v3 + 16))
  {
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
        result = sub_268CB7E40();
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
          goto LABEL_25;
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
LABEL_25:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_268C9AABC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_268CB7790();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA3C0, &qword_268CB8758);
  v10 = sub_268CB7CA0();
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
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_268C9AE50(qword_28131E6C8);
        result = sub_268CB79D0();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_268C9ADC0(void *a1)
{
  v2 = [a1 unformattedInternationalStringValue];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_268CB7A10();

  return v3;
}

uint64_t sub_268C9AE50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268CB7790();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3()
{

  return sub_268CB7DC0();
}

uint64_t OUTLINED_FUNCTION_6()
{
  if (v0)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  return sub_268CAAE98(0, v3, v1);
}

uint64_t OUTLINED_FUNCTION_10()
{

  return sub_268CB7DC0();
}

uint64_t OUTLINED_FUNCTION_13()
{

  return sub_268CB7DC0();
}

void OUTLINED_FUNCTION_14()
{

  JUMPOUT(0x26D62B570);
}

uint64_t OUTLINED_FUNCTION_17()
{

  return sub_268CB7DC0();
}

uint64_t OUTLINED_FUNCTION_18()
{

  return sub_268CB7670();
}

uint64_t OUTLINED_FUNCTION_19()
{

  return sub_268CB77B0();
}

BOOL sub_268C9B0B0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

double sub_268C9B160@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_268C9EA64(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void *sub_268C9B198()
{
  v0 = type metadata accessor for RRLinkMatcher();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_268C9BBC4();
  qword_2802DA638 = result;
  return result;
}

void *sub_268C9B1D8()
{
  type metadata accessor for RRLinkMatcher();
  result = sub_268C9B20C();
  off_2802DA3E8 = result;
  return result;
}

uint64_t sub_268C9B20C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA468, &qword_268CB8978);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_268CB8790;
  *(v0 + 56) = &type metadata for PersonStructuredDataHandler;
  *(v0 + 64) = &off_281F86948;
  *(v0 + 96) = &type metadata for TimerStructuredDataHandler;
  *(v0 + 104) = &off_281F86978;
  *(v0 + 136) = &type metadata for TaskStructuredDataHandler;
  *(v0 + 144) = &off_281F869A8;
  *(v0 + 176) = &type metadata for TaskListStructuredDataHandler;
  *(v0 + 184) = &off_281F869D8;
  *(v0 + 216) = type metadata accessor for MediaItemStructuredDataHandler();
  *(v0 + 224) = &off_281F86830;
  __swift_allocate_boxed_opaque_existential_1((v0 + 192));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA470, &qword_268CB8980);
  sub_268CB7A20();
  sub_268CB7740();
  *(v0 + 256) = &type metadata for MessageConversationStructuredDataHandler;
  *(v0 + 264) = &off_281F86418;
  *(v0 + 296) = &type metadata for ApplicationStructuredDataHandler;
  *(v0 + 304) = &off_281F86918;
  *(v0 + 272) = 0;
  *(v0 + 280) = 0;
  *(v0 + 336) = &type metadata for EnvironmentStructuredDataHandler;
  *(v0 + 344) = &off_281F86640;
  *(v0 + 312) = 0;
  *(v0 + 320) = 0;
  return v0;
}

uint64_t sub_268C9B370()
{
  v1 = *v0;
  if (v0[3])
  {
    v2 = v0[3];
  }

  else
  {
    v2 = sub_268C9B3F4();
    v3 = v0[3];
    v0[3] = v2;
  }

  return v2;
}

uint64_t sub_268C9B3F4()
{
  if (qword_2802DA160 != -1)
  {
LABEL_20:
    swift_once();
  }

  v0 = off_2802DA3E8;
  v21 = *(off_2802DA3E8 + 2);
  if (v21)
  {
    v1 = off_2802DA3E8 + 32;

    v2 = 0;
    v3 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v2 >= v0[2])
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      sub_268C9EA64(v1, v23);
      v4 = v24;
      v5 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      v6 = (*(v5 + 16))(v4, v5);
      v8 = v7;
      sub_268C9EA64(v23, v22);
      swift_isUniquelyReferenced_nonNull_native();
      v9 = sub_268CA5E3C(v6, v8);
      if (__OFADD__(v3[2], (v10 & 1) == 0))
      {
        goto LABEL_18;
      }

      v11 = v9;
      v12 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA460, &qword_268CB8970);
      if (sub_268CB7D40())
      {
        v13 = sub_268CA5E3C(v6, v8);
        if ((v12 & 1) != (v14 & 1))
        {
          result = sub_268CB7DE0();
          __break(1u);
          return result;
        }

        v11 = v13;
      }

      if (v12)
      {

        v15 = (v3[7] + 40 * v11);
        __swift_destroy_boxed_opaque_existential_0Tm(v15);
        sub_268C958E0(v22, v15);
      }

      else
      {
        v3[(v11 >> 6) + 8] |= 1 << v11;
        v16 = (v3[6] + 16 * v11);
        *v16 = v6;
        v16[1] = v8;
        sub_268C958E0(v22, v3[7] + 40 * v11);
        v17 = v3[2];
        v18 = __OFADD__(v17, 1);
        v19 = v17 + 1;
        if (v18)
        {
          goto LABEL_19;
        }

        v3[2] = v19;
      }

      ++v2;
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      v1 += 40;
      if (v21 == v2)
      {

        return v3;
      }
    }
  }

  return MEMORY[0x277D84F98];
}

uint64_t sub_268C9B650()
{
  v1 = *v0;
  if (v0[4])
  {
    v2 = v0[4];
  }

  else
  {
    v2 = sub_268C9B6D4();
    v3 = v0[4];
    v0[4] = v2;
  }

  return v2;
}

uint64_t sub_268C9B6D4()
{
  if (qword_2802DA160 != -1)
  {
LABEL_21:
    swift_once();
  }

  v0 = off_2802DA3E8;
  v22 = *(off_2802DA3E8 + 2);
  if (v22)
  {
    v1 = off_2802DA3E8 + 32;

    v2 = 0;
    v3 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v2 >= v0[2])
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      sub_268C9EA64(v1, v24);
      v4 = v25;
      v5 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      v6 = (*(v5 + 24))(v4, v5);
      if (v7)
      {
        v8 = v6;
        v9 = v7;
        sub_268C9EA64(v24, v23);
        swift_isUniquelyReferenced_nonNull_native();
        v10 = sub_268CA5E3C(v8, v9);
        if (__OFADD__(v3[2], (v11 & 1) == 0))
        {
          goto LABEL_19;
        }

        v12 = v10;
        v13 = v11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA460, &qword_268CB8970);
        if (sub_268CB7D40())
        {
          v14 = sub_268CA5E3C(v8, v9);
          if ((v13 & 1) != (v15 & 1))
          {
            result = sub_268CB7DE0();
            __break(1u);
            return result;
          }

          v12 = v14;
        }

        if (v13)
        {

          v16 = (v3[7] + 40 * v12);
          __swift_destroy_boxed_opaque_existential_0Tm(v16);
          sub_268C958E0(v23, v16);
        }

        else
        {
          v3[(v12 >> 6) + 8] |= 1 << v12;
          v17 = (v3[6] + 16 * v12);
          *v17 = v8;
          v17[1] = v9;
          sub_268C958E0(v23, v3[7] + 40 * v12);
          v18 = v3[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_20;
          }

          v3[2] = v20;
        }
      }

      ++v2;
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      v1 += 40;
      if (v22 == v2)
      {

        return v3;
      }
    }
  }

  return MEMORY[0x277D84F98];
}

uint64_t sub_268C9B934()
{
  result = sub_268C9B954();
  qword_2802DA640 = result;
  return result;
}

uint64_t sub_268C9B954()
{
  v0 = sub_268CB7280();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_268CB7270();
  v3 = MEMORY[0x26D62AA30]();
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  v5 = sub_268CB7340();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_268CB7330();
  v8 = MEMORY[0x26D62AA30]();
  if (!v8)
  {

    goto LABEL_7;
  }

  v9 = sub_268CB7080();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_268CB7070();
  v12 = MEMORY[0x26D62AA30]();
  if (!v12)
  {

LABEL_9:

    return 0;
  }

  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA480, &qword_268CB8990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268CB87A0;
  strcpy((inited + 32), "common_Person");
  *(inited + 46) = -4864;
  *(inited + 48) = v4;
  strcpy((inited + 56), "common_Agent");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  *(inited + 72) = v8;
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x8000000268CB9510;
  *(inited + 96) = v8;
  *(inited + 104) = 0xD000000000000014;
  *(inited + 112) = 0x8000000268CB9530;
  *(inited + 120) = v8;
  strcpy((inited + 128), "common_Setting");
  *(inited + 143) = -18;
  *(inited + 144) = v13;
  sub_268CB7680();
  swift_retain_n();
  v8 = sub_268CB79C0();

LABEL_7:

  return v8;
}

uint64_t sub_268C9BB8C()
{
  type metadata accessor for SiriReferenceResolverDefaults();
  result = sub_268CABCD8();
  byte_28131EC48 = result & 1;
  return result;
}

void *sub_268C9BBC4()
{
  v1 = MEMORY[0x277D84F98];
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v1;
  type metadata accessor for RRLinkMatcher();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA488, qword_268CB8998);
  sub_268CB7A20();
  sub_268CB7740();
  return v0;
}

void *sub_268C9BC60(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_268CB7990();
  v9 = OUTLINED_FUNCTION_2_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v217 = (&v208 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v218 = (&v208 - v16);
  v17 = swift_allocObject();
  v220 = v17;
  *(v17 + 16) = 0;
  v18 = v17 + 16;
  if (qword_28131EB70 != -1)
  {
    swift_once();
  }

  v19 = byte_28131EC48;
  v219 = OBJC_IVAR____TtC21SiriReferenceResolver13RRLinkMatcher_logger;
  v20 = sub_268CB7730();
  v21 = sub_268CB7BC0();
  v22 = os_log_type_enabled(v20, v21);
  if (v19 != 1)
  {
    if (!v22)
    {
LABEL_22:
      OUTLINED_FUNCTION_4_0();

      return 0;
    }

    v38 = OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_6_0(v38);
LABEL_21:
    OUTLINED_FUNCTION_8_0();
    _os_log_impl(v39, v40, v41, v42, v43, 2u);
    OUTLINED_FUNCTION_1_0();
    goto LABEL_22;
  }

  if (v22)
  {
    v23 = OUTLINED_FUNCTION_10_0();
    *v23 = 0;
    _os_log_impl(&dword_268C94000, v20, v21, "Link matching is on.", v23, 2u);
    OUTLINED_FUNCTION_5_0();
  }

  if (sub_268CB7670() == 0xD000000000000011 && 0x8000000268CB9A40 == v24)
  {

    if ((a3 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v26 = sub_268CB7DC0();

    if ((v26 & 1) == 0 || (a3 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  sub_268CB7810();
  v27 = sub_268CB7670();
  v29 = v28;

  v227[0] = v27;
  v227[1] = v29;
  MEMORY[0x28223BE20](v30);
  v206 = v227;
  v31 = OS_LOG_TYPE_DEFAULT;
  v32 = sub_268C9B0B0(sub_268C9AE9C, (&v208 - 4), &unk_287987670);

  if (v32)
  {
LABEL_39:
    v86 = OUTLINED_FUNCTION_0_0();
    v87 = sub_268CB7BC0();
    if (OUTLINED_FUNCTION_3_0(v87))
    {
      v88 = OUTLINED_FUNCTION_10_0();
      *v88 = 0;
      _os_log_impl(&dword_268C94000, v86, v31, "Link query is common_Attachment, proposed entity was found by Marrs identifier, and entity type is acceptable. Returning entity without Structured Data Conversion and caching", v88, 2u);
      OUTLINED_FUNCTION_5_0();
    }

    OUTLINED_FUNCTION_4_0();

    v89 = a1;
    return a1;
  }

  v213 = 0;
  v216 = v11;
  v31 = v8;
  sub_268CB7810();
  v33 = sub_268CB7670();
  v35 = v34;

  if (v33 == 0x415F6E6F6D6D6F63 && v35 == 0xEA00000000007070)
  {

    goto LABEL_39;
  }

  v37 = sub_268CB7DC0();

  v11 = v216;
  v31 = v213;
  if (v37)
  {
    goto LABEL_39;
  }

LABEL_25:
  sub_268C9D8CC(&v224);
  if (!v225)
  {
    sub_268C9E984(&v224, &qword_2802DA408, &qword_268CB8918);
    v20 = OUTLINED_FUNCTION_0_0();
    v59 = sub_268CB7BC0();
    if (!OUTLINED_FUNCTION_3_0(v59))
    {
      goto LABEL_22;
    }

    v60 = OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_6_0(v60);
    goto LABEL_21;
  }

  v216 = v11;
  sub_268C958E0(&v224, v227);
  sub_268C9EA64(v227, &v224);
  v44 = OUTLINED_FUNCTION_0_0();
  v45 = sub_268CB7BD0();
  v46 = os_log_type_enabled(v44, v45);
  v215 = v18;
  v214 = a2;
  if (v46)
  {
    v47 = OUTLINED_FUNCTION_16_0();
    v48 = OUTLINED_FUNCTION_15_0();
    v213 = v8;
    v49 = v48;
    *&v222[0] = v48;
    *v47 = 136315138;
    OUTLINED_FUNCTION_11_0();
    v51 = *(v50 + 24);
    v52 = OUTLINED_FUNCTION_11();
    *&v223[0] = v53(v52, v18);
    *(&v223[0] + 1) = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA448, &qword_268CB8958);
    v55 = sub_268CB7A20();
    v57 = v56;
    __swift_destroy_boxed_opaque_existential_0Tm(&v224);
    v58 = sub_268CA5820(v55, v57, v222);

    *(v47 + 4) = v58;
    _os_log_impl(&dword_268C94000, v44, v45, "using handler for %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v49);
    v8 = v213;
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_5_0();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(&v224);
  }

  sub_268CB7810();
  v61 = sub_268CB7670();
  v63 = v62;

  *&v224 = v61;
  *(&v224 + 1) = v63;
  MEMORY[0x28223BE20](v64);
  v206 = &v224;
  LOBYTE(v61) = sub_268C9B0B0(sub_268C9AE30, (&v208 - 4), &unk_287987670);

  if ((v61 & 1) == 0)
  {
    v78 = OUTLINED_FUNCTION_0_0();
    v79 = sub_268CB7BC0();
    if (OUTLINED_FUNCTION_3_0(v79))
    {
LABEL_37:
      v80 = OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_6_0(v80);
      OUTLINED_FUNCTION_8_0();
      _os_log_impl(v81, v82, v83, v84, v85, 2u);
      OUTLINED_FUNCTION_1_0();
    }

LABEL_84:

    __swift_destroy_boxed_opaque_existential_0Tm(v227);
    OUTLINED_FUNCTION_4_0();

    return 0;
  }

  v65 = sub_268CB7890();
  v67 = v66;
  v213 = sub_268CB7840();
  v69 = v68;
  sub_268C9EA64(v227, v223);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA418, &qword_268CB8E00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA420, &qword_268CB8930);
  v71 = swift_dynamicCast();
  v212 = v65;
  if (v71)
  {
    sub_268C958E0(v222, &v224);
    v72 = *(v4 + 16);
    v73 = *(v72 + 16);

    if (v73 && (v74 = OUTLINED_FUNCTION_19_0(v65), (v75 & 1) != 0))
    {
      v76 = v67;
      v77 = *(*(v72 + 56) + 8 * v74);
    }

    else
    {
      type metadata accessor for CachedEntityInfo();
      v77 = swift_allocObject();

      v91 = MEMORY[0x277D84F98];
      v77[5] = v69;
      v77[6] = v91;
      v77[2] = v65;
      v77[3] = v67;
      v76 = v67;
      v77[4] = v213;
    }

    OUTLINED_FUNCTION_11_0();
    v93 = *(v92 + 16);
    v94 = OUTLINED_FUNCTION_11();
    v96 = v95(v94, v67);
    v97 = sub_268CB7A10();
    v99 = v98;

    OUTLINED_FUNCTION_20();
    v100 = v77[6];

    v101 = sub_268CA3A14(v97, v99, v100);

    if (v101)
    {

      v102 = OUTLINED_FUNCTION_0_0();
      v103 = sub_268CB7BD0();
      if (OUTLINED_FUNCTION_3_0(v103))
      {
        v104 = OUTLINED_FUNCTION_10_0();
        OUTLINED_FUNCTION_6_0(v104);
        OUTLINED_FUNCTION_8_0();
        _os_log_impl(v105, v106, v107, v108, v109, 2u);
        OUTLINED_FUNCTION_1_0();
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v227);
      __swift_destroy_boxed_opaque_existential_0Tm(&v224);
      OUTLINED_FUNCTION_4_0();

      return v101;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v224);
    v67 = v76;
  }

  else
  {
    OUTLINED_FUNCTION_9_0();
    sub_268C9E984(v222, &qword_2802DA428, &qword_268CB8938);
  }

  sub_268C9EA64(v227, v223);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA430, &qword_268CB8940);
  if ((swift_dynamicCast() & 1) == 0)
  {

    OUTLINED_FUNCTION_9_0();
    sub_268C9E984(v222, &qword_2802DA438, &qword_268CB8948);
    goto LABEL_61;
  }

  v211 = v110;
  v111 = v70;
  sub_268C958E0(v222, &v224);
  OUTLINED_FUNCTION_11_0();
  v113 = *(v112 + 16);
  v114 = OUTLINED_FUNCTION_11();
  v115(v114, v67);
  v116 = LNIntentsValueTypeIdentifierAsString();
  v209 = sub_268CB7A10();
  v118 = v117;

  v119 = *(v4 + 16);
  v120 = *(v119 + 16);

  if (v120 && (v121 = OUTLINED_FUNCTION_19_0(v212), (v122 & 1) != 0))
  {
    v123 = *(*(v119 + 56) + 8 * v121);
  }

  else
  {
    type metadata accessor for CachedEntityInfo();
    v123 = swift_allocObject();

    v124 = MEMORY[0x277D84F98];
    v123[5] = v69;
    v123[6] = v124;
    v123[2] = v212;
    v123[3] = v67;
    v123[4] = v213;
  }

  OUTLINED_FUNCTION_20();
  v125 = v123[6];

  v126 = sub_268CA3A14(v209, v118, v125);

  if (!v126)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v224);
    v70 = v111;
    v110 = v211;
LABEL_61:
    type metadata accessor for SiriReferenceResolverDefaults();
    v135 = sub_268CABE18();
    v210 = v70;
    if (v136)
    {
      v137 = v135;
      v138 = v136;
      v139 = OUTLINED_FUNCTION_0_0();
      v140 = sub_268CB7BC0();
      if (os_log_type_enabled(v139, v140))
      {
        v141 = OUTLINED_FUNCTION_16_0();
        v142 = OUTLINED_FUNCTION_15_0();
        *&v224 = v142;
        *v141 = 136315138;
        v143 = sub_268CA5820(v137, v138, &v224);

        *(v141 + 4) = v143;
        OUTLINED_FUNCTION_8_0();
        _os_log_impl(v144, v145, v146, v147, v148, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v142);
        OUTLINED_FUNCTION_5_0();
        OUTLINED_FUNCTION_1_0();
      }

      else
      {
      }
    }

    else
    {
      v211 = v110;
      v149 = a1;
      v150 = OUTLINED_FUNCTION_0_0();
      v151 = sub_268CB7BC0();

      if (os_log_type_enabled(v150, v151))
      {
        v152 = OUTLINED_FUNCTION_16_0();
        v153 = OUTLINED_FUNCTION_15_0();
        *&v224 = v153;
        *v152 = 136315138;
        v154 = sub_268CB7890();
        v156 = sub_268CA5820(v154, v155, &v224);

        *(v152 + 4) = v156;
        _os_log_impl(&dword_268C94000, v150, v151, "About to execute Link SPI for entity with id %s.", v152, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v153);
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_5_0();
      }
    }

    v157 = sub_268CB7810();
    v158 = sub_268C9CEFC(v157);
    v160 = v159;

    if (v160)
    {
      v212 = v158;
      v213 = v160;
      v161 = dispatch_semaphore_create(0);
      v162 = swift_allocObject();
      *(v162 + 16) = v220;
      *(v162 + 24) = v161;

      v163 = v161;
      v211 = sub_268CB7890();
      v165 = v164;
      v166 = sub_268CB7840();
      v168 = v167;
      sub_268C9EA64(v227, v223);
      swift_retain_n();
      if (swift_dynamicCast())
      {
        sub_268C958E0(v222, &v224);
        v169 = v165;
        v210 = v166;
        v170 = v225;
        v171 = v226;
        v209 = __swift_project_boxed_opaque_existential_1(&v224, v225);
        sub_268C9EA64(&v224, v223);
        v172 = swift_allocObject();
        v172[2] = v4;
        v172[3] = sub_268C9E9E0;
        v172[4] = v162;
        sub_268C958E0(v223, (v172 + 5));
        v172[10] = a1;
        v173 = a1;

        v206 = v170;
        v207 = v171;
        sub_268C9F830(v211, v169, v210, v168, v212, v213, sub_268C9EAC4);

        __swift_destroy_boxed_opaque_existential_0Tm(&v224);

        OUTLINED_FUNCTION_4_0();
      }

      else
      {

        OUTLINED_FUNCTION_9_0();
        sub_268C9E984(v222, &qword_2802DA438, &qword_268CB8948);
        swift_beginAccess();
        *(v220 + 16) = 0;
        sub_268CB7C00();
      }

      v175 = v214;
      v176 = v216;

      OUTLINED_FUNCTION_4_0();

      v177 = v217;
      sub_268CB7980();
      if (qword_2802DA178 != -1)
      {
        swift_once();
      }

      v178 = sub_268CB7970();
      v179 = __swift_project_value_buffer(v178, qword_2802DA650);
      v180 = v218;
      MEMORY[0x26D62B240](v177, v179);
      v181 = *(v176 + 8);
      v181(v177, v8);
      v217 = v163;
      v182 = sub_268CB7BF0();
      v181(v180, v8);
      if ((v182 & 1) == 0)
      {
        v191 = a1;

        v192 = OUTLINED_FUNCTION_0_0();
        v193 = sub_268CB7BC0();

        if (os_log_type_enabled(v192, v193))
        {
          v194 = OUTLINED_FUNCTION_15_0();
          *&v223[0] = swift_slowAlloc();
          *v194 = 136315650;
          sub_268CB7810();
          v195 = sub_268CB7670();
          v197 = v196;

          v198 = sub_268CA5820(v195, v197, v223);

          *(v194 + 4) = v198;
          *(v194 + 12) = 2080;
          v199 = sub_268CB7670();
          sub_268CA5820(v199, v200, v223);
          OUTLINED_FUNCTION_11();

          *(v194 + 14) = v175;
          *(v194 + 22) = 2080;
          v201 = v215;
          OUTLINED_FUNCTION_20();
          v221 = *v201;
          v202 = v221;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA440, &qword_268CB8950);
          v203 = sub_268CB7A20();
          sub_268CA5820(v203, v204, v223);
          OUTLINED_FUNCTION_11();

          *(v194 + 24) = v175;
          _os_log_impl(&dword_268C94000, v192, v193, "linkEntity(%s, matches: %s) -> %s", v194, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_5_0();
          OUTLINED_FUNCTION_5_0();
        }

        else
        {
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v227);
        OUTLINED_FUNCTION_20();
        a1 = *(v220 + 16);
        v205 = a1;

        return a1;
      }

      v78 = OUTLINED_FUNCTION_0_0();
      v183 = sub_268CB7BE0();
      if (OUTLINED_FUNCTION_3_0(v183))
      {
        v184 = OUTLINED_FUNCTION_16_0();
        *v184 = 134217984;
        *(v184 + 4) = 1000;
        OUTLINED_FUNCTION_8_0();
        _os_log_impl(v185, v186, v187, v188, v189, 0xCu);
        OUTLINED_FUNCTION_1_0();
        v190 = v217;
      }

      else
      {
        v190 = v78;
        v78 = v217;
      }

      goto LABEL_84;
    }

    v78 = OUTLINED_FUNCTION_0_0();
    v174 = sub_268CB7BC0();
    if (OUTLINED_FUNCTION_3_0(v174))
    {
      goto LABEL_37;
    }

    goto LABEL_84;
  }

  v127 = OUTLINED_FUNCTION_0_0();
  v128 = sub_268CB7BD0();
  if (os_log_type_enabled(v127, v128))
  {
    v129 = OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_6_0(v129);
    OUTLINED_FUNCTION_8_0();
    _os_log_impl(v130, v131, v132, v133, v134, 2u);
    OUTLINED_FUNCTION_1_0();
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v227);
  __swift_destroy_boxed_opaque_existential_0Tm(&v224);
  OUTLINED_FUNCTION_4_0();

  return v126;
}

uint64_t sub_268C9CE9C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;
  v5 = a1;

  return sub_268CB7C00();
}

uint64_t sub_268C9CEFC(uint64_t a1)
{
  sub_268CB71D0();
  sub_268C9E598(v12, v10);
  if (v11)
  {
    sub_268CB7060();
    if (OUTLINED_FUNCTION_14_0())
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_268C9E984(v10, &qword_2802DA410, &unk_268CB8920);
  }

  sub_268C9E598(v12, v10);
  if (v11)
  {
    sub_268CB72F0();
    if (OUTLINED_FUNCTION_14_0())
    {
LABEL_7:

      v2 = sub_268C9D0D8();
      sub_268C9E984(v12, &qword_2802DA410, &unk_268CB8920);
      return v2;
    }
  }

  else
  {
    sub_268C9E984(v10, &qword_2802DA410, &unk_268CB8920);
  }

  v3 = sub_268CB7730();
  v4 = sub_268CB7BE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_16_0();
    v6 = OUTLINED_FUNCTION_15_0();
    v10[0] = v6;
    *v5 = 136315138;
    v7 = sub_268CB7670();
    sub_268CA5820(v7, v8, v10);
    OUTLINED_FUNCTION_11();

    *(v5 + 4) = a1;
    _os_log_impl(&dword_268C94000, v3, v4, "Pool entity %s wasn't convertible to supported entity types, returning nil", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_5_0();
  }

  sub_268C9E984(v12, &qword_2802DA410, &unk_268CB8920);
  return 0;
}

uint64_t sub_268C9D0D8()
{
  v0 = sub_268CB7160();
  v1 = OUTLINED_FUNCTION_2_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v1);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  result = sub_268CB7660();
  v12 = result;
  v22 = *(result + 16);
  if (v22)
  {
    v21 = v10;
    v13 = 0;
    v14 = result + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    while (v13 < *(v12 + 16))
    {
      (*(v3 + 16))(v8, v14 + *(v3 + 72) * v13, v0);
      v15 = sub_268CB7150();
      if (v16)
      {
        if (v15 == 0x69746E655F707061 && v16 == 0xEF657079745F7974)
        {

LABEL_13:

          v20 = v21;
          (*(v3 + 32))(v21, v8, v0);
          v19 = sub_268CB7140();
          (*(v3 + 8))(v20, v0);
          return v19;
        }

        v18 = sub_268CB7DC0();

        if (v18)
        {
          goto LABEL_13;
        }
      }

      ++v13;
      result = (*(v3 + 8))(v8, v0);
      if (v22 == v13)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    return 0;
  }

  return result;
}

uint64_t sub_268C9D304(void *a1, char a2, uint64_t a3, void (*a4)(void), uint64_t a5, void *a6, uint64_t a7)
{
  v13 = sub_268CB7730();
  v14 = sub_268CB7BC0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = a4;
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_268C94000, v13, v14, "FetchStructuredData Link SPI completed", v16, 2u);
    v17 = v16;
    a4 = v15;
    MEMORY[0x26D62BBE0](v17, -1, -1);
  }

  if (a2)
  {
    v18 = a1;
    v19 = sub_268CB7730();
    v20 = sub_268CB7BE0();
    sub_268C9EADC(a1);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v51[0] = v22;
      *v21 = 136315138;
      *&v50[0] = a1;
      v23 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA450, &qword_268CB8960);
      v24 = sub_268CB7A20();
      v26 = sub_268CA5820(v24, v25, v51);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_268C94000, v19, v20, "Error occured in fetchStructuredData: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x26D62BBE0](v22, -1, -1);
      v27 = v21;
LABEL_10:
      MEMORY[0x26D62BBE0](v27, -1, -1);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (!a1)
  {
    v19 = sub_268CB7730();
    v31 = sub_268CB7BE0();
    if (os_log_type_enabled(v19, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_268C94000, v19, v31, "Retrieved Link data is nil", v32, 2u);
      v27 = v32;
      goto LABEL_10;
    }

LABEL_11:

    return (a4)(0);
  }

  v49 = a4;
  v28 = [a1 value];
  sub_268CB7C70();
  swift_unknownObjectRelease();
  sub_268C9EAE8(v50, v51);
  v30 = a6[3];
  v29 = a6[4];
  __swift_project_boxed_opaque_existential_1(a6, v30);
  v34 = (*(*(v29 + 8) + 40))(v51, a7, MEMORY[0x277D84F70] + 8, v30);
  v35 = sub_268CB7730();
  v36 = sub_268CB7BD0();

  if (os_log_type_enabled(v35, v36))
  {
    v38 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v50[0] = v48;
    *v38 = 136315138;
    sub_268CB7810();
    v47 = v36;
    v39 = sub_268CB7670();
    v41 = v40;

    v42 = sub_268CA5820(v39, v41, v50);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_268C94000, v35, v47, "Returning and caching annotated %s entity", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v48);
    MEMORY[0x26D62BBE0](v48, -1, -1);
    MEMORY[0x26D62BBE0](v38, -1, -1);
  }

  v43 = a6[3];
  v44 = a6[4];
  v45 = __swift_project_boxed_opaque_existential_1(a6, v43);
  sub_268C9EAF8(v34, a7, v45, a3, v43, *(v44 + 8));
  v46 = v34;
  v49(v34);

  return __swift_destroy_boxed_opaque_existential_0Tm(v51);
}

double sub_268C9D8CC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_268CB7670();
  v4 = v3;
  v5 = sub_268C9B370();
  sub_268CA3A10(v2, v4, v5, &v10);

  if (!v11)
  {
    sub_268C9E984(&v10, &qword_2802DA408, &qword_268CB8918);
    sub_268C9DA74(&v10);
    if (!v11)
    {
      sub_268C9E984(&v10, &qword_2802DA408, &qword_268CB8918);
      if (sub_268CB7670() == 0x6E456F4E5F6F7375 && v6 == 0xEC00000079746974)
      {
      }

      else
      {
        v8 = sub_268CB7DC0();

        if ((v8 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      sub_268CB7810();
      sub_268C9DA74(&v10);

      if (!v11)
      {
        sub_268C9E984(&v10, &qword_2802DA408, &qword_268CB8918);
LABEL_14:
        *(a1 + 32) = 0;
        result = 0.0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
        return result;
      }
    }
  }

  sub_268C958E0(&v10, v12);
  sub_268C958E0(v12, a1);
  return result;
}

uint64_t sub_268C9DA74@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v44 = 0;
  v2 = sub_268CB7160();
  v3 = OUTLINED_FUNCTION_2_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(sub_268CB7660() + 16);
  if (!v10)
  {

    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_18_0();
  v12 = *(v5 + 16);
  v11 = v5 + 16;
  v13 = *(v11 + 64);
  v42[1] = v14;
  v15 = v14 + ((v13 + 32) & ~v13);
  v46 = *(v11 + 56);
  v47 = v12;
  v16 = (v11 - 8);
  v17 = MEMORY[0x277D84F90];
  v45 = v11;
  do
  {
    v47(v9, v15, v2);
    v18 = sub_268CB7150();
    if (!v19)
    {
LABEL_9:
      (*v16)(v9, v2);
      goto LABEL_16;
    }

    if (v18 == v1 && v19 == 0xE800000000000000)
    {
    }

    else
    {
      v21 = sub_268CB7DC0();

      if ((v21 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v22 = sub_268CB7140();
    v24 = v23;
    (*v16)(v9, v2);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = v17[2];
      sub_268CA9410();
      v17 = v28;
    }

    v25 = v17[2];
    v1 = v25 + 1;
    if (v25 >= v17[3] >> 1)
    {
      sub_268CA9410();
      v17 = v29;
    }

    v17[2] = v1;
    v26 = &v17[2 * v25];
    v26[4] = v22;
    v26[5] = v24;
    OUTLINED_FUNCTION_18_0();
LABEL_16:
    v15 += v46;
    --v10;
  }

  while (v10);

LABEL_19:
  v31 = 0;
  v32 = v17[2];
  v33 = MEMORY[0x277D84F90];
  v34 = v17 + 5;
  v35 = v44;
  while (1)
  {
    if (v32 == v31)
    {

      sub_268C9B160(v33, v43);
    }

    if (v31 >= v17[2])
    {
      break;
    }

    v36 = *v34;
    v51[0] = *(v34 - 1);
    v51[1] = v36;

    sub_268C9DDF4(v51, &v48);

    if (v49)
    {
      sub_268C958E0(&v48, v50);
      sub_268C958E0(v50, &v48);
      v37 = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = *(v33 + 16);
        sub_268CA92F0();
        v33 = v40;
      }

      v38 = *(v33 + 16);
      if (v38 >= *(v33 + 24) >> 1)
      {
        sub_268CA92F0();
        v33 = v41;
      }

      *(v33 + 16) = v38 + 1;
      result = sub_268C958E0(&v48, v33 + 40 * v38 + 32);
      v35 = v37;
    }

    else
    {
      result = sub_268C9E984(&v48, &qword_2802DA408, &qword_268CB8918);
    }

    v34 += 2;
    ++v31;
  }

  __break(1u);
  return result;
}

void sub_268C9DDF4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_268C9B650();
  sub_268CA3A10(v3, v4, v5, &v14);

  if (v15)
  {
    sub_268C958E0(&v14, v16);

    v6 = sub_268CB7730();
    v7 = sub_268CB7BD0();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *&v14 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_268CA5820(v3, v4, &v14);
      _os_log_impl(&dword_268C94000, v6, v7, "Chosen protocol for handler: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x26D62BBE0](v9, -1, -1);
      MEMORY[0x26D62BBE0](v8, -1, -1);
    }

    sub_268C958E0(v16, a2);
  }

  else
  {
    sub_268C9E984(&v14, &qword_2802DA408, &qword_268CB8918);

    v10 = sub_268CB7730();
    v11 = sub_268CB7BD0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v16[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_268CA5820(v3, v4, v16);
      _os_log_impl(&dword_268C94000, v10, v11, "Ignored protocol: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x26D62BBE0](v13, -1, -1);
      MEMORY[0x26D62BBE0](v12, -1, -1);
    }

    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

char *sub_268C9E050()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = OBJC_IVAR____TtC21SiriReferenceResolver13RRLinkMatcher_logger;
  v5 = sub_268CB7750();
  OUTLINED_FUNCTION_17_0(v5);
  (*(v6 + 8))(&v0[v4]);
  return v0;
}

uint64_t sub_268C9E0C4()
{
  sub_268C9E050();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for RRLinkMatcher()
{
  result = qword_2802DA3F0;
  if (!qword_2802DA3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268C9E170()
{
  result = sub_268CB7750();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_268C9E21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_268CB7DC0(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_268CB7DC0();
    }
  }

  return result;
}

uint64_t sub_268C9E2BC()
{
  sub_268CB79E0();

  return sub_268CB79E0();
}

uint64_t sub_268C9E30C()
{
  sub_268CB7E50();
  sub_268CB79E0();
  sub_268CB79E0();
  return sub_268CB7E70();
}

uint64_t sub_268C9E37C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_268C9E30C();
}

uint64_t sub_268C9E388()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_268C9E2BC();
}

uint64_t sub_268C9E394()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_268CB7E50();
  sub_268CB79E0();
  sub_268CB79E0();
  return sub_268CB7E70();
}

void *sub_268C9E414()
{
  v1 = v0[3];
  v2 = v0[5];

  v3 = v0[6];

  return v0;
}

uint64_t sub_268C9E450()
{
  v0 = sub_268C9E414();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_268C9E4B0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_268C9E4F0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_268C9E544()
{
  result = qword_2802DA400;
  if (!qword_2802DA400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802DA400);
  }

  return result;
}

uint64_t sub_268C9E598(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA410, &unk_268CB8920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_268C9E654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_268CB7DC0() & 1;
  }
}

void sub_268C9E698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_268CA5E3C(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA458, &qword_268CB8968);
  if ((sub_268CB7D40() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_268CA5E3C(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_268CB7DE0();
    __break(1u);
    return;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v11);
    *(v17 + 8 * v11) = a1;
  }

  else
  {
    sub_268C9E910(v11, a2, a3, a1, v16);
  }
}

uint64_t sub_268C9E7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_268CA5E3C(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA478, &qword_268CB8988);
  if ((sub_268CB7D40() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_268CA5E3C(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_268CB7DE0();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v11);
    *(v17 + 8 * v11) = a1;
  }

  else
  {
    sub_268C9E910(v11, a2, a3, a1, v16);
  }
}

unint64_t sub_268C9E910(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_268C9E984(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_17_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_268C9EA64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_17_0(v3);
  (*v4)(a2);
  return a2;
}

_OWORD *sub_268C9EAE8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_268C9EAF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40[3] = a5;
  v40[4] = a6;
  __swift_allocate_boxed_opaque_existential_1(v40);
  OUTLINED_FUNCTION_17_0(a5);
  (*(v9 + 16))();
  v10 = sub_268CB7890();
  v12 = v11;
  v13 = sub_268CB7840();
  v15 = v14;
  sub_268C9EA64(v40, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA418, &qword_268CB8E00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA420, &qword_268CB8930);
  if (OUTLINED_FUNCTION_13_0())
  {
    sub_268C958E0(&v34, v38);
    __swift_project_boxed_opaque_existential_1(v38, v39);
    v16 = OUTLINED_FUNCTION_12_0();
    v18 = v17(v16);
  }

  else
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    sub_268C9E984(&v34, &qword_2802DA428, &qword_268CB8938);
    sub_268C9EA64(v40, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA430, &qword_268CB8940);
    if ((OUTLINED_FUNCTION_13_0() & 1) == 0)
    {

      v36 = 0;
      v34 = 0u;
      v35 = 0u;
      sub_268C9E984(&v34, &qword_2802DA438, &qword_268CB8948);
      return __swift_destroy_boxed_opaque_existential_0Tm(v40);
    }

    sub_268C958E0(&v34, v38);
    __swift_project_boxed_opaque_existential_1(v38, v39);
    v19 = OUTLINED_FUNCTION_12_0();
    v20(v19);
    v18 = LNIntentsValueTypeIdentifierAsString();
  }

  v21 = v18;
  v22 = sub_268CB7A10();
  v24 = v23;

  v25 = *(a4 + 16);
  v26 = *(v25 + 16);

  if (v26 && (v27 = sub_268CA5EB4(v10, v12, v13, v15), (v28 & 1) != 0))
  {
    v29 = *(*(v25 + 56) + 8 * v27);
  }

  else
  {
    type metadata accessor for CachedEntityInfo();
    v29 = swift_allocObject();

    v30 = MEMORY[0x277D84F98];
    v29[5] = v15;
    v29[6] = v30;
    v29[2] = v10;
    v29[3] = v12;
    v29[4] = v13;
  }

  swift_beginAccess();
  v31 = a1;
  v32 = v29[6];
  swift_isUniquelyReferenced_nonNull_native();
  *&v34 = v29[6];
  sub_268C9E698(v31, v22, v24);
  v29[6] = v34;

  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0Tm(v38);
  return __swift_destroy_boxed_opaque_existential_0Tm(v40);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t OUTLINED_FUNCTION_0_0()
{
  v3 = v0 + *(v1 - 328);

  return sub_268CB7730();
}

void OUTLINED_FUNCTION_1_0()
{

  JUMPOUT(0x26D62BBE0);
}

BOOL OUTLINED_FUNCTION_3_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_5_0()
{

  JUMPOUT(0x26D62BBE0);
}

double OUTLINED_FUNCTION_9_0()
{
  *(v0 - 224) = 0;
  result = 0.0;
  *(v0 - 256) = 0u;
  *(v0 - 240) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_13_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_14_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_15_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_16_0()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_19_0(uint64_t a1)
{
  v5 = *(v3 - 376);

  return sub_268CA5EB4(a1, v2, v5, v1);
}

uint64_t OUTLINED_FUNCTION_20()
{

  return swift_beginAccess();
}

uint64_t sub_268C9F044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4D8, &qword_268CB8A00) - 8) + 64);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20]();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4E0, &qword_268CB8A08) - 8) + 64);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20]();
  if (!a2)
  {
    sub_268CB7890();
  }

  if (!a4)
  {
    sub_268CB7840();
  }

  if (!a5)
  {
    sub_268CB7810();
  }

  if (!a7)
  {
    sub_268CB78F0();
  }

  if (a9 >> 60 == 15)
  {
    sub_268CB78A0();
  }

  sub_268CA1278(a8, a9);
  sub_268CB78B0();
  sub_268CB7900();
  sub_268CB78C0();
  sub_268CB7850();
  sub_268CB7830();
  sub_268CB78E0();
  v16 = objc_allocWithZone(sub_268CB7910());
  return sub_268CB7880();
}

id sub_268C9F2A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = a2;
  v67 = a5;
  v61 = *(a5 + 8);
  v68 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_268CB7C20();
  OUTLINED_FUNCTION_2_1();
  v64 = v9;
  v65 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_8_1();
  (MEMORY[0x28223BE20])();
  v13 = &v61 - v12;
  OUTLINED_FUNCTION_2_1();
  v66 = v14;
  v16 = *(v15 + 64);
  v17 = (MEMORY[0x28223BE20])();
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v61 - v20;
  OUTLINED_FUNCTION_2_1();
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v26);
  v28 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v70);
  v30 = *(v23 + 16);
  v30(boxed_opaque_existential_1, a1, a4);
  v30(v28, a1, a4);
  sub_268CA10D8(0, &qword_2802DA4C0, 0x277D23958);
  if (swift_dynamicCast())
  {
    v31 = *&v69[0];
    v32 = [*&v69[0] value];
    sub_268CB7C70();

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0Tm(&v70);
    sub_268C9EAE8(v69, &v70);
  }

  sub_268CA1118(&v70, v69);
  v33 = swift_dynamicCast();
  v34 = v21;
  v35 = v72;
  v36 = v68;
  if (v33)
  {
    __swift_storeEnumTagSinglePayload(v13, 0, 1, AssociatedTypeWitness);
    v37 = v66;
    (*(v66 + 32))(v34, v13, AssociatedTypeWitness);
    (*(v37 + 16))(v19, v34, AssociatedTypeWitness);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4D0, &qword_268CB89F8);
    if (swift_dynamicCast())
    {
      v38 = *&v69[0];
      swift_getObjectType();
      v35 = v38;
      v39 = v63;
      v40 = sub_268C9FF18();
      if (!v39)
      {
        v46 = v40;
        v47 = v41;
        v48 = v68;
        v49 = (*(v61 + 32))(v34, v62, v68);
        v50 = v34;
        v51 = v49;
        v65 = v50;
        v52 = (*(v67 + 24))(v48);
        v54 = v53;
        v55 = OUTLINED_FUNCTION_6_1();
        sub_268CA1220(v55, v56);
        v35 = sub_268C9F044(0, 0, 0, 0, 0, v52, v54, v46, v47);
        v57 = OUTLINED_FUNCTION_6_1();
        sub_268CA11C8(v57, v58);
        swift_unknownObjectRelease();

        v59 = OUTLINED_FUNCTION_6_1();
        sub_268CA11C8(v59, v60);
        (*(v37 + 8))(v65, AssociatedTypeWitness);
        goto LABEL_12;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      sub_268CA1174();
      swift_allocError();
      *v44 = 1;
      swift_willThrow();
    }

    (*(v37 + 8))(v34, AssociatedTypeWitness);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, AssociatedTypeWitness);
    (*(v64 + 8))(v13, v65);
    (*(v67 + 24))(v36);
    if (v42)
    {

      sub_268CA1174();
      swift_allocError();
      *v43 = 0;
      swift_willThrow();
    }

    else
    {
      v35 = v62;
    }
  }

LABEL_12:
  __swift_destroy_boxed_opaque_existential_0Tm(&v70);
  return v35;
}

void sub_268C9F830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  type metadata accessor for SiriReferenceResolverDefaults();
  v10 = sub_268CABE18();
  if (v11)
  {
    v12 = sub_268C9F8F8(v10, v11, a3, a4, v10, v11);
    v14 = v13;

    (a7)(v12, v14 & 1);

    sub_268C9EADC(v12);
  }

  else
  {
    a7(0);
  }
}

unsigned __int8 *sub_268C9F8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA490, &qword_268CB89E0) - 8) + 64);
  OUTLINED_FUNCTION_8_1();
  result = MEMORY[0x28223BE20](v11);
  v14 = &v62 - v13;
  v15 = HIBYTE(a6) & 0xF;
  v16 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v17 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {
    goto LABEL_70;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {

    v19 = sub_268CA061C(a5, a6, 10);
    v37 = v36;

    if (v37)
    {
      goto LABEL_70;
    }

LABEL_72:
    v35 = 3;
    switch(v19)
    {
      case 0:
        v65 = MEMORY[0x277D837D0];
        v63 = a3;
        v64 = a4;
        v38 = objc_opt_self();

        v39 = [v38 applicationValueType];
        goto LABEL_76;
      case 2:
        v65 = MEMORY[0x277D837D0];
        v63 = 0x68636E6946;
        v64 = 0xE500000000000000;
        v39 = [objc_opt_self() environmentValueType];
LABEL_76:
        v50 = v39;
        v51 = objc_allocWithZone(MEMORY[0x277D23958]);
        v49 = OUTLINED_FUNCTION_5_1();
        if (!v49)
        {
          goto LABEL_77;
        }

        return v49;
      case 3:
        v40 = objc_allocWithZone(MEMORY[0x277CD3E98]);
        v41 = sub_268CA016C(0xD000000000000013, 0x8000000268CB9A90, 1);
        v42 = sub_268CB7020();
        __swift_storeEnumTagSinglePayload(v14, 1, 1, v42);
        objc_allocWithZone(MEMORY[0x277CD3E90]);
        v43 = v41;
        v44 = sub_268CA01D8(v43, v14, 6644289, 0xE300000000000000, 0, 0, 0, 0, 0);
        v65 = sub_268CA10D8(0, &qword_2802DA4B0, 0x277CD3E90);
        v63 = v44;
        v45 = objc_opt_self();
        v46 = v44;
        v47 = [v45 personValueType];
        v48 = objc_allocWithZone(MEMORY[0x277D23958]);
        v49 = OUTLINED_FUNCTION_5_1();

        goto LABEL_82;
      case 9:
        v53 = objc_allocWithZone(MEMORY[0x277CD3DB8]);
        v54 = sub_268CA03D4(0xD000000000000024, 0x8000000268CB9A60, 0, 0xE000000000000000, 1, 0, 0, 0xE000000000000000);
        v65 = sub_268CA10D8(0, &qword_2802DA4A8, 0x277CD3DB8);
        v63 = v54;
        v55 = objc_opt_self();
        v43 = v54;
        v56 = [v55 mediaItemValueType];
        goto LABEL_81;
      case 11:
        v57 = objc_allocWithZone(MEMORY[0x277D23898]);
        v58 = sub_268CA04D0(875770417, 0xE400000000000000, 0x2079656B73696877, 0xEC00000062756C63, 0);
        v65 = sub_268CA10D8(0, &qword_2802DA4A0, 0x277D23898);
        v63 = v58;
        v59 = objc_opt_self();
        v43 = v58;
        v56 = [v59 messageConversationValueType];
LABEL_81:
        v60 = v56;
        v61 = objc_allocWithZone(MEMORY[0x277D23958]);
        v49 = OUTLINED_FUNCTION_5_1();
LABEL_82:

        if (v49)
        {
          return v49;
        }

LABEL_77:
        v35 = 3;
        break;
      default:
        goto LABEL_78;
    }

    goto LABEL_78;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v63 = a5;
    v64 = a6 & 0xFFFFFFFFFFFFFFLL;
    if (a5 == 43)
    {
      if (v15)
      {
        if (v15 != 1)
        {
          OUTLINED_FUNCTION_7_0();
          while (1)
          {
            OUTLINED_FUNCTION_1_1();
            if (!v21 & v20)
            {
              break;
            }

            OUTLINED_FUNCTION_0_1();
            if (!v21)
            {
              break;
            }

            v19 = v30 + v29;
            if (__OFADD__(v30, v29))
            {
              break;
            }

            OUTLINED_FUNCTION_4_1();
            if (v21)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }

LABEL_88:
      __break(1u);
      return result;
    }

    if (a5 != 45)
    {
      if (v15)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1_1();
          if (!v21 & v20)
          {
            break;
          }

          OUTLINED_FUNCTION_0_1();
          if (!v21)
          {
            break;
          }

          v19 = v34 + v33;
          if (__OFADD__(v34, v33))
          {
            break;
          }

          OUTLINED_FUNCTION_4_1();
          if (v21)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    if (v15)
    {
      if (v15 != 1)
      {
        OUTLINED_FUNCTION_7_0();
        while (1)
        {
          OUTLINED_FUNCTION_1_1();
          if (!v21 & v20)
          {
            break;
          }

          OUTLINED_FUNCTION_0_1();
          if (!v21)
          {
            break;
          }

          v19 = v26 - v25;
          if (__OFSUB__(v26, v25))
          {
            break;
          }

          OUTLINED_FUNCTION_4_1();
          if (v21)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    goto LABEL_86;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = ((a6 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_268CB7CF0();
  }

  v18 = *result;
  if (v18 == 43)
  {
    if (v16 >= 1)
    {
      if (v16 != 1)
      {
        v19 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_1();
            if (!v21 & v20)
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_0_1();
            if (!v21)
            {
              goto LABEL_68;
            }

            v19 = v28 + v27;
            if (__OFADD__(v28, v27))
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_4_1();
            if (v21)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_59;
      }

      goto LABEL_68;
    }

    goto LABEL_87;
  }

  if (v18 == 45)
  {
    if (v16 >= 1)
    {
      if (v16 != 1)
      {
        v19 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_1();
            if (!v21 & v20)
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_0_1();
            if (!v21)
            {
              goto LABEL_68;
            }

            v19 = v23 - v22;
            if (__OFSUB__(v23, v22))
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_4_1();
            if (v21)
            {
              goto LABEL_69;
            }
          }
        }

LABEL_59:
        v24 = 0;
        goto LABEL_69;
      }

      goto LABEL_68;
    }

    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  if (v16)
  {
    v19 = 0;
    if (result)
    {
      while (1)
      {
        v31 = *result - 48;
        if (v31 > 9)
        {
          goto LABEL_68;
        }

        v32 = 10 * v19;
        if ((v19 * 10) >> 64 != (10 * v19) >> 63)
        {
          goto LABEL_68;
        }

        v19 = v32 + v31;
        if (__OFADD__(v32, v31))
        {
          goto LABEL_68;
        }

        ++result;
        if (!--v16)
        {
          goto LABEL_59;
        }
      }
    }

    goto LABEL_59;
  }

LABEL_68:
  v19 = 0;
  v24 = 1;
LABEL_69:
  v66 = v24;
  if ((v24 & 1) == 0)
  {
    goto LABEL_72;
  }

LABEL_70:
  v35 = 4;
LABEL_78:
  sub_268CA0BA4();
  v49 = swift_allocError();
  *v52 = v35;
  return v49;
}

uint64_t sub_268C9FF38()
{
  v0 = sub_268CB7D60();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_268C9FF84(char a1)
{
  if (!a1)
  {
    return 0x707954676E6F7277;
  }

  if (a1 == 1)
  {
    return 0x6169726553746F6ELL;
  }

  return 0xD000000000000012;
}

uint64_t sub_268CA0014@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_268C9FF38();
  *a2 = result;
  return result;
}

uint64_t sub_268CA0044@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268C9FF84(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_268CA016C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_268CB7A00();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithValue:v5 type:a3];

  return v6;
}

id sub_268CA01D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v16 = sub_268CB7020();
  v17 = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v16) != 1)
  {
    v17 = sub_268CB7010();
    (*(*(v16 - 8) + 8))(a2, v16);
  }

  if (a4)
  {
    v18 = sub_268CB7A00();
  }

  else
  {
    v18 = 0;
  }

  if (!a7)
  {
    v19 = 0;
    if (a9)
    {
      goto LABEL_8;
    }

LABEL_10:
    v20 = 0;
    goto LABEL_11;
  }

  v19 = sub_268CB7A00();

  if (!a9)
  {
    goto LABEL_10;
  }

LABEL_8:
  v20 = sub_268CB7A00();

LABEL_11:
  v21 = [v10 initWithPersonHandle:a1 nameComponents:v17 displayName:v18 image:a5 contactIdentifier:v19 customIdentifier:v20];

  return v21;
}

id sub_268CA035C(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = [v2 initWithValue:sub_268CB7DA0() valueType:a2];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v5;
}

id sub_268CA03D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  if (a2)
  {
    v14 = sub_268CB7A00();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = 0;
    if (a8)
    {
      goto LABEL_4;
    }

LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  v14 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v15 = sub_268CB7A00();

  if (!a8)
  {
    goto LABEL_7;
  }

LABEL_4:
  v16 = sub_268CB7A00();

LABEL_8:
  v17 = [v9 initWithIdentifier:v14 title:v15 type:a5 artwork:a6 artist:v16];

  return v17;
}

id sub_268CA04D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_268CB7A00();

  if (!a4)
  {
    v9 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = sub_268CB7A00();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_268CA10D8(0, &qword_2802DA4B0, 0x277CD3E90);
  v10 = sub_268CB7B40();

LABEL_6:
  v11 = [v5 initWithMessageConversationIdentifier:v8 groupName:v9 recipients:v10];

  return v11;
}

void *sub_268CA05AC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4B8, &unk_268CB89E8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unsigned __int8 *sub_268CA061C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_268CB7B10();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_268CA0C48();
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_268CB7CF0();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_268CA0BA4()
{
  result = qword_2802DA498;
  if (!qword_2802DA498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802DA498);
  }

  return result;
}

uint64_t sub_268CA0C48()
{
  v0 = sub_268CA0CB4();
  v4 = sub_268CA0CE8(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_268CA0CE8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_268CB7A50();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_268CB7C30();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_268CA05AC(v9, 0);
  v12 = sub_268CA0E48(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_268CB7A50();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_268CB7CF0();
LABEL_4:

  return sub_268CB7A50();
}

unint64_t sub_268CA0E48(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_268CA1058(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_268CB7AE0();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_268CB7CF0();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_268CA1058(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_268CB7AC0();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
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

uint64_t sub_268CA1058(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_268CB7AF0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26D62B370](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_268CA10D8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_268CA1118(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_268CA1174()
{
  result = qword_2802DA4C8;
  if (!qword_2802DA4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802DA4C8);
  }

  return result;
}

uint64_t sub_268CA11C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_268CA1220(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_268CA1278(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_268CA1220(a1, a2);
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for StructuredDataHandlingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StructuredDataHandlingError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_268CA1410()
{
  result = qword_2802DA4E8;
  if (!qword_2802DA4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802DA4E8);
  }

  return result;
}

id OUTLINED_FUNCTION_3_1@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{

  return sub_268C9F2A8(a1, a2, a3, a5, a4);
}

id OUTLINED_FUNCTION_5_1()
{

  return sub_268CA035C((v1 - 88), v0);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_268CA1510(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268CA1564(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

id sub_268CA1604(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268CB7160();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_268CB71C0();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();

  v12 = sub_268CB71B0();

  sub_268CB7130();
  sub_268CB7090();
  (*(v5 + 8))(v8, v4);
  v13 = sub_268CB7080();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_268CB7070();
  v20[3] = v12;
  sub_268CB7170();
  v17 = MEMORY[0x26D62AA30](v16);
  if (v17)
  {
    v18 = sub_268C9F044(0, 0, 0, 0, v17, 0, 0, 0, 0xF000000000000000);
  }

  else
  {
    v18 = a3;
  }

  return v18;
}

uint64_t sub_268CA1838()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

Swift::String_optional __swiftcall CNContactStore.retriveContactName(identifier:)(Swift::String identifier)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = HIBYTE(identifier._object) & 0xF;
  if ((identifier._object & 0x2000000000000000) == 0)
  {
    v2 = identifier._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4F0, &unk_268CB8BB0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_268CB8BA0;
  *(v3 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  v4 = sub_268CB7A00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4F8, &qword_268CB8BC0);
  v5 = sub_268CB7B40();

  v19[0] = 0;
  v6 = [v1 unifiedContactWithIdentifier:v4 keysToFetch:v5 error:v19];

  if (!v6)
  {
    v13 = v19[0];
    v14 = sub_268CB7030();

    swift_willThrow();
LABEL_9:
    v10 = 0;
    v12 = 0;
    goto LABEL_10;
  }

  v7 = v19[0];
  v8 = [v6 fullName];
  if (!v8)
  {

    goto LABEL_9;
  }

  v9 = v8;
  v10 = sub_268CB7A10();
  v12 = v11;

LABEL_10:
  v15 = *MEMORY[0x277D85DE8];
  v16 = v10;
  v17 = v12;
  result.value._object = v17;
  result.value._countAndFlagsBits = v16;
  return result;
}

uint64_t sub_268CA1ACC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4D8, &qword_268CB8A00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v74 = &v71 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4E0, &qword_268CB8A08);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v73 = &v71 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA500, &qword_268CB8C18);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v88 = &v71 - v11;
  v12 = sub_268CA21B0(a1);
  v76 = OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_logger;
  v77 = v1;
  v13 = sub_268CB7730();
  v14 = sub_268CB7BC0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v91[0] = v16;
    *v15 = 136315138;
    v17 = sub_268CB7910();
    v18 = MEMORY[0x26D62B420](v12, v17);
    v20 = sub_268CA5820(v18, v19, v91);

    *(v15 + 4) = v20;
    OUTLINED_FUNCTION_1_2(&dword_268C94000, v21, v22, "[postResolveProcessing] pureMatchFilteredEntities: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_5_0();
  }

  sub_268CB77B0();
  v23 = sub_268CA25BC(v12);

  v24 = sub_268CB7730();
  v25 = sub_268CB7BC0();

  v26 = os_log_type_enabled(v24, v25);
  v75 = v23;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v91[0] = v28;
    *v27 = 136315138;
    v29 = sub_268CB7910();
    v30 = MEMORY[0x26D62B420](v23, v29);
    v32 = sub_268CA5820(v30, v31, v91);

    *(v27 + 4) = v32;
    v23 = v75;
    OUTLINED_FUNCTION_1_2(&dword_268C94000, v33, v34, "[postResolveProcessing] selectExactValueMatchedCandidatesFrom: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_5_0();
  }

  v92 = MEMORY[0x277D84F90];
  result = sub_268CAAE90(v23);
  if (!result)
  {

    return MEMORY[0x277D84F90];
  }

  v37 = result;
  if (result >= 1)
  {
    v38 = 0;
    v87 = v23 & 0xC000000000000001;
    *&v36 = 136315138;
    v71 = v36;
    v72 = result;
    do
    {
      if (v87)
      {
        v39 = MEMORY[0x26D62B570](v38, v23);
      }

      else
      {
        v39 = *(v23 + 8 * v38 + 32);
      }

      v40 = v39;
      v91[0] = sub_268CB7890();
      v91[1] = v41;
      v89 = 0x776F646168532DLL;
      v90 = 0xE700000000000000;
      v42 = sub_268CB7050();
      v43 = v88;
      __swift_storeEnumTagSinglePayload(v88, 1, 1, v42);
      sub_268C98E10();
      sub_268CB7C50();
      v45 = v44;
      sub_268CA3600(v43);

      v46 = v40;
      if (v45)
      {
        MEMORY[0x26D62B3D0]();
        if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_268CB7B70();
        }

        sub_268CB7BA0();

        v47 = v92;
      }

      else
      {
        v48 = sub_268CB7730();
        v49 = sub_268CB7BC0();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v91[0] = v51;
          *v50 = v71;
          v52 = sub_268CB7890();
          v54 = sub_268CA5820(v52, v53, v91);

          *(v50 + 4) = v54;
          _os_log_impl(&dword_268C94000, v48, v49, "[postResolveProcessing] Modifying entityId: %s", v50, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v51);
          OUTLINED_FUNCTION_5_0();
          OUTLINED_FUNCTION_5_0();
        }

        sub_268CB7890();
        v55 = sub_268CB7B20();
        v57 = v56;
        v59 = v58;
        v61 = v60;

        v62 = MEMORY[0x26D62B2E0](v55, v57, v59, v61);
        v85 = v63;
        v86 = v62;

        v64 = sub_268CB7840();
        v83 = v65;
        v84 = v64;
        v82 = sub_268CB7810();
        v66 = sub_268CB78F0();
        v80 = v67;
        v81 = v66;
        v68 = sub_268CB78A0();
        v78 = v69;
        v79 = v68;
        sub_268CB78B0();
        sub_268CB7900();
        sub_268CB78C0();
        sub_268CB7850();
        sub_268CB7860();
        sub_268CB7830();
        sub_268CB78E0();
        v70 = objc_allocWithZone(sub_268CB7910());
        sub_268CB7880();
        MEMORY[0x26D62B3D0]();
        if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_268CB7B70();
        }

        sub_268CB7BA0();
        v47 = v92;

        v23 = v75;
        v37 = v72;
      }

      ++v38;
    }

    while (v37 != v38);

    return v47;
  }

  __break(1u);
  return result;
}

id sub_268CA21B0(uint64_t a1)
{
  v2 = sub_268CB7160();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D84F90];
  v41 = MEMORY[0x277D84F90];
  result = sub_268CAAE90(a1);
  v36 = result;
  v33 = a1;
  if (!result)
  {
    v34 = v7;
LABEL_33:
    v25 = v34;
    if (sub_268CAAE90(v34))
    {
      v26 = sub_268CB7730();
      v27 = sub_268CB7BC0();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_268C94000, v26, v27, "Filtered out flexible matched entities and only returning pure matches", v28, 2u);
        MEMORY[0x26D62BBE0](v28, -1, -1);
      }
    }

    else
    {
      v29 = v33;

      return v29;
    }

    return v25;
  }

  v9 = 0;
  v35 = a1 & 0xC000000000000001;
  v31 = a1 + 32;
  v32 = a1 & 0xFFFFFFFFFFFFFF8;
  v39 = 0x8000000268CB9B50;
  v40 = v3 + 16;
  v10 = (v3 + 8);
  v34 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v35)
    {
      result = MEMORY[0x26D62B570](v9, v33);
    }

    else
    {
      if (v9 >= *(v32 + 16))
      {
        goto LABEL_41;
      }

      result = *(v31 + 8 * v9);
    }

    v11 = __OFADD__(v9, 1);
    v12 = (v9 + 1);
    if (v11)
    {
      goto LABEL_40;
    }

    v37 = result;
    v38 = v12;
    sub_268CB7810();
    v13 = sub_268CB7660();

    v14 = *(v13 + 16);
    if (v14)
    {
      break;
    }

LABEL_25:

    MEMORY[0x26D62B3D0](v24);
    if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_268CB7B70();
    }

    result = sub_268CB7BA0();
    v34 = v41;
LABEL_30:
    v9 = v38;
    if (v38 == v36)
    {
      goto LABEL_33;
    }
  }

  v15 = 0;
  v16 = v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  while (v15 < *(v13 + 16))
  {
    (*(v3 + 16))(v6, v16 + *(v3 + 72) * v15, v2);
    v17 = sub_268CB7150();
    if (!v18)
    {
      goto LABEL_17;
    }

    if (v17 == 0xD000000000000013 && v18 == v39)
    {
    }

    else
    {
      v20 = sub_268CB7DC0();

      if ((v20 & 1) == 0)
      {
LABEL_17:
        result = (*v10)(v6, v2);
        goto LABEL_24;
      }
    }

    if (sub_268CB7140() == 0x65747265766E6F63 && v21 == 0xE900000000000064)
    {

      (*v10)(v6, v2);
LABEL_29:

      goto LABEL_30;
    }

    v23 = sub_268CB7DC0();

    result = (*v10)(v6, v2);
    if (v23)
    {
      goto LABEL_29;
    }

LABEL_24:
    if (v14 == ++v15)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_268CA25BC(uint64_t a1)
{
  v3 = sub_268CA2C94();
  if (!v4)
  {
    goto LABEL_84;
  }

  v5 = v3;
  v6 = v4;
  v7 = sub_268CB7730();
  v8 = sub_268CB7BC0();
  if (os_log_type_enabled(v7, v8))
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    _os_log_impl(&dword_268C94000, v7, v8, "Try to filter for exact match candidates only", v1, 2u);
    MEMORY[0x26D62BBE0](v1, -1, -1);
  }

  v9 = v5 == 1701667182 && v6 == 0xE400000000000000;
  v10 = MEMORY[0x277D84F90];
  v51 = a1;
  if (!v9 && (sub_268CB7DC0() & 1) == 0)
  {
    v17 = v5 == 0x6C6562616CLL && v6 == 0xE500000000000000;
    if (v17 || (sub_268CB7DC0() & 1) != 0)
    {
      v53 = v10;
      v18 = sub_268CAAE90(a1);
      v19 = 0;
      v8 = 0;
      v20 = a1 & 0xC000000000000001;
      v21 = a1 & 0xFFFFFFFFFFFFFF8;
      while (v18 != v19)
      {
        if (v20)
        {
          v22 = MEMORY[0x26D62B570](v19, a1);
        }

        else
        {
          if (v19 >= *(v21 + 16))
          {
            goto LABEL_90;
          }

          v22 = *(a1 + 8 * v19 + 32);
        }

        v1 = v22;
        if (__OFADD__(v19, 1))
        {
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
          goto LABEL_91;
        }

        v52 = v22;
        if (sub_268CA33C8(&v52))
        {
          sub_268CB7D00();
          v23 = *(v53 + 16);
          sub_268CB7D20();
          a1 = v51;
          sub_268CB7D30();
          sub_268CB7D10();
        }

        else
        {
        }

        ++v19;
      }

      goto LABEL_78;
    }

    v24 = v5 == 0x65756C6176 && v6 == 0xE500000000000000;
    if (!v24 && (sub_268CB7DC0() & 1) == 0)
    {

      v43 = MEMORY[0x277D84F90];
      goto LABEL_79;
    }

    v53 = v10;
    v25 = sub_268CAAE90(a1);
    v26 = 0;
    v27 = a1 & 0xC000000000000001;
    v49 = v25;
    v50 = a1 & 0xFFFFFFFFFFFFFF8;
    v48 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v25 == v26)
      {
        goto LABEL_78;
      }

      if (v27)
      {
        v28 = MEMORY[0x26D62B570](v26, a1);
      }

      else
      {
        if (v26 >= *(v50 + 16))
        {
          goto LABEL_92;
        }

        v28 = *(a1 + 8 * v26 + 32);
      }

      v8 = v28;
      if (__OFADD__(v26, 1))
      {
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);

        __break(1u);
        return result;
      }

      sub_268CB7810();
      v29 = sub_268CB7670();
      v31 = v30;

      if (v29 == 0xD000000000000014 && 0x8000000268CB9590 == v31)
      {
      }

      else
      {
        v1 = sub_268CB7DC0();

        if ((v1 & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      sub_268CB7810();
      v1 = sub_268CB7650();

      a1 = v51;
      if (!*(v1 + 16) || (v33 = sub_268CA5E3C(0x65756C6176, 0xE500000000000000), (v34 & 1) == 0))
      {
LABEL_68:

        goto LABEL_73;
      }

      v35 = *(*(v1 + 56) + 8 * v33);

      if (v35 >> 62)
      {
        if (!sub_268CB7D50())
        {
          goto LABEL_68;
        }
      }

      else if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_68;
      }

      if ((v35 & 0xC000000000000001) != 0)
      {
        v1 = MEMORY[0x26D62B570](0, v35);
      }

      else
      {
        if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_93;
        }

        v1 = *(v35 + 32);
      }

      sub_268CB75F0();
      v37 = v36;

      if (!v37)
      {

        a1 = v51;
        v27 = v48;
        v25 = v49;
        goto LABEL_73;
      }

      type metadata accessor for BaseQueryMatcher();
      v38 = sub_268C979D8();
      v1 = v39;

      if (v38 == sub_268C979D8() && v1 == v40)
      {

        v27 = v48;
        v25 = v49;
LABEL_71:
        sub_268CB7D00();
        v1 = *(v53 + 16);
        sub_268CB7D20();
        sub_268CB7D30();
        sub_268CB7D10();
        goto LABEL_72;
      }

      v42 = sub_268CB7DC0();

      v27 = v48;
      v25 = v49;
      if (v42)
      {
        goto LABEL_71;
      }

LABEL_52:

LABEL_72:
      a1 = v51;
LABEL_73:
      ++v26;
    }
  }

  v53 = v10;
  v11 = sub_268CAAE90(a1);
  v12 = 0;
  v8 = 0;
  v13 = a1 & 0xC000000000000001;
  v14 = a1 & 0xFFFFFFFFFFFFFF8;
  while (v11 != v12)
  {
    if (v13)
    {
      v15 = MEMORY[0x26D62B570](v12, a1);
    }

    else
    {
      if (v12 >= *(v14 + 16))
      {
        goto LABEL_88;
      }

      v15 = *(a1 + 8 * v12 + 32);
    }

    v1 = v15;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v52 = v15;
    if (sub_268CA3130(&v52))
    {
      sub_268CB7D00();
      v16 = *(v53 + 16);
      sub_268CB7D20();
      a1 = v51;
      sub_268CB7D30();
      sub_268CB7D10();
    }

    else
    {
    }

    ++v12;
  }

LABEL_78:

  v43 = v53;
LABEL_79:
  if (sub_268CAAE90(v43))
  {
    v44 = sub_268CB7730();
    v45 = sub_268CB7BC0();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_268C94000, v44, v45, "We did filter to exact match candidates only", v46, 2u);
      MEMORY[0x26D62BBE0](v46, -1, -1);
    }

    return v43;
  }

LABEL_84:

  return a1;
}

uint64_t sub_268CA2C94()
{
  if (sub_268CB7670() != 0x505F6E6F6D6D6F63 || v0 != 0xED00006E6F737265)
  {
    v2 = sub_268CB7DC0();

    if (v2)
    {
      goto LABEL_18;
    }

    if (sub_268CB7670() != 0x525F6E6F6D6D6F63 || v3 != 0xEF7265646E696D65)
    {
      v5 = sub_268CB7DC0();

      if (v5)
      {
        goto LABEL_18;
      }

      if (sub_268CB7670() != 0xD000000000000013 || 0x8000000268CB9B30 != v6)
      {
        v8 = sub_268CB7DC0();

        if ((v8 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_18;
      }
    }
  }

LABEL_18:
  v9 = 1701667182;
  v10 = sub_268CB7650();
  v11 = sub_268CA63D0(1701667182, 0xE400000000000000, v10);

  if (v11)
  {
    if (sub_268CAAE90(v11))
    {
      sub_268CAAE98(0, (v11 & 0xC000000000000001) == 0, v11);
      if ((v11 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D62B570](0, v11);
      }

      else
      {
        v12 = *(v11 + 32);
      }

      sub_268CB75F0();
      v14 = v13;

      if (v14)
      {
        return v9;
      }
    }

    else
    {
    }
  }

LABEL_25:
  v15 = sub_268CB7650();
  v16 = sub_268CA63D0(0xD000000000000018, 0x8000000268CB98E0, v15);

  if (!v16)
  {
    goto LABEL_39;
  }

  if (!sub_268CAAE90(v16))
  {
    goto LABEL_38;
  }

  sub_268CAAE98(0, (v16 & 0xC000000000000001) == 0, v16);
  if ((v16 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D62B570](0, v16);
  }

  else
  {
    v17 = *(v16 + 32);
  }

  v18 = sub_268CB7620();

  if (!v18)
  {
LABEL_39:
    if (sub_268CB7670() == 0xD000000000000014 && 0x8000000268CB9590 == v24)
    {
    }

    else
    {
      v26 = sub_268CB7DC0();

      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }

    v9 = 0x65756C6176;
    v27 = sub_268CB7650();
    v28 = sub_268CA63D0(0x65756C6176, 0xE500000000000000, v27);

    if (v28)
    {
      if (sub_268CAAE90(v28))
      {
        sub_268CAAE98(0, (v28 & 0xC000000000000001) == 0, v28);
        if ((v28 & 0xC000000000000001) != 0)
        {
          MEMORY[0x26D62B570](0, v28);
        }

        else
        {
          v29 = *(v28 + 32);
        }

        sub_268CB75F0();
        v31 = v30;

        if (!v31)
        {
          return 0;
        }

        return v9;
      }
    }

    return 0;
  }

  v9 = 0x6C6562616CLL;
  v19 = sub_268CB7650();
  v20 = sub_268CA63D0(0x6C6562616CLL, 0xE500000000000000, v19);

  if (!v20)
  {

    goto LABEL_39;
  }

  if (!sub_268CAAE90(v20))
  {

LABEL_38:

    goto LABEL_39;
  }

  sub_268CAAE98(0, (v20 & 0xC000000000000001) == 0, v20);
  if ((v20 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D62B570](0, v20);
  }

  else
  {
    v21 = *(v20 + 32);
  }

  sub_268CB75F0();
  v23 = v22;

  if (!v23)
  {
    goto LABEL_39;
  }

  return v9;
}

uint64_t sub_268CA3130(uint64_t *a1)
{
  v1 = *a1;
  sub_268CB7810();
  v2 = sub_268CB7670();
  v4 = v3;

  v5 = v2 == 0x505F6E6F6D6D6F63 && v4 == 0xED00006E6F737265;
  if (v5 || (sub_268CB7DC0() & 1) != 0 || (v2 == 0x525F6E6F6D6D6F63 ? (v6 = v4 == 0xEF7265646E696D65) : (v6 = 0), v6 || (sub_268CB7DC0() & 1) != 0 || (v2 == 0xD000000000000013 ? (v7 = 0x8000000268CB9B30 == v4) : (v7 = 0), v7)))
  {
  }

  else
  {
    v8 = sub_268CB7DC0();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  sub_268CB7810();
  v9 = sub_268CB7650();

  v10 = sub_268CA63D0(1701667182, 0xE400000000000000, v9);

  if (!v10)
  {
    return 0;
  }

  if (!sub_268CAAE90(v10))
  {

    return 0;
  }

  sub_268CAAE98(0, (v10 & 0xC000000000000001) == 0, v10);
  if ((v10 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D62B570](0, v10);
  }

  else
  {
    v11 = *(v10 + 32);
  }

  sub_268CB75F0();
  v13 = v12;

  if (!v13)
  {
    return 0;
  }

  type metadata accessor for BaseQueryMatcher();
  v14 = sub_268C979D8();
  v16 = v15;

  if (v14 == sub_268C979D8() && v16 == v17)
  {

    return 1;
  }

  else
  {
    v19 = sub_268CB7DC0();

    return v19 & 1;
  }
}

uint64_t sub_268CA33C8(uint64_t *a1)
{
  v1 = *a1;
  sub_268CB7810();
  v2 = sub_268CB7650();

  v3 = sub_268CA63D0(0xD000000000000018, 0x8000000268CB98E0, v2);

  if (v3)
  {
    if (sub_268CAAE90(v3))
    {
      sub_268CAAE98(0, (v3 & 0xC000000000000001) == 0, v3);
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D62B570](0, v3);
      }

      else
      {
        v4 = *(v3 + 32);
      }

      v5 = sub_268CB7620();

      if (!v5)
      {
        goto LABEL_18;
      }

      v6 = sub_268CB7650();
      v3 = sub_268CA63D0(0x6C6562616CLL, 0xE500000000000000, v6);

      if (!v3)
      {
LABEL_22:

        return v3 & 1;
      }

      if (sub_268CAAE90(v3))
      {
        sub_268CAAE98(0, (v3 & 0xC000000000000001) == 0, v3);
        if ((v3 & 0xC000000000000001) != 0)
        {
          MEMORY[0x26D62B570](0, v3);
        }

        else
        {
          v7 = *(v3 + 32);
        }

        sub_268CB75F0();
        v9 = v8;

        if (v9)
        {
          type metadata accessor for BaseQueryMatcher();
          v10 = sub_268C979D8();
          v12 = v11;

          if (v10 == sub_268C979D8() && v12 == v13)
          {
            LOBYTE(v3) = 1;
          }

          else
          {
            LOBYTE(v3) = sub_268CB7DC0();
          }

          goto LABEL_22;
        }

        goto LABEL_18;
      }
    }

LABEL_18:
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

uint64_t sub_268CA3600(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA500, &qword_268CB8C18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_268CA3688()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_268CA36B0()
{
  sub_268CA3688();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t getEnumTagSinglePayload for RRConstants(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for RRConstants(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_268CA3810()
{
  v0 = sub_268CB7970();
  __swift_allocate_value_buffer(v0, qword_2802DA650);
  *__swift_project_value_buffer(v0, qword_2802DA650) = 1000;
  v1 = *MEMORY[0x277D85178];
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_268CA3904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_268CA5E3C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

uint64_t sub_268CA3954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_268CA5E3C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

double sub_268CA39AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_268CA5E3C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_268CA1118(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

void *sub_268CA3A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_268CA5E3C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_268CA3A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_268CA5E3C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

double sub_268CA3AAC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_268CA5E3C(a1, a2), (v7 & 1) != 0))
  {
    sub_268CA636C(*(a3 + 56) + 40 * v6, a4);
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_268CA3B04@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_268CA5F54(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(a1 + 56);
    v8 = sub_268CB7160();
    (*(*(v8 - 8) + 16))(a2, v7 + *(*(v8 - 8) + 72) * v6, v8);
    v9 = a2;
    v10 = 0;
    v11 = 1;
    v12 = v8;
  }

  else
  {
    sub_268CB7160();
    OUTLINED_FUNCTION_19_1();
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t sub_268CA3BC8()
{
  v0 = sub_268CB7750();
  __swift_allocate_value_buffer(v0, qword_28131ECF0);
  __swift_project_value_buffer(v0, qword_28131ECF0);
  type metadata accessor for RRResolver();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA538, &qword_268CB8D30);
  sub_268CB7A20();
  return sub_268CB7740();
}

uint64_t sub_268CA3C6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA540, &qword_268CB8D38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268CB8CB0;
  if (qword_28131EA28 != -1)
  {
    swift_once();
  }

  v1 = unk_28131ECC0;
  *(inited + 32) = qword_28131ECB8;
  *(inited + 40) = v1;
  Matcher = type metadata accessor for PersonQueryMatcher();
  v3 = swift_initStaticObject();
  *(inited + 72) = Matcher;
  *(inited + 80) = &off_287987888;
  *(inited + 48) = v3;
  v4 = qword_28131EA00;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = unk_28131EC90;
  *(inited + 88) = qword_28131EC88;
  *(inited + 96) = v5;
  v6 = qword_28131E910;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_28131EC50;
  *(inited + 128) = type metadata accessor for AttachmentQueryMatcher();
  *(inited + 136) = &off_287987898;
  *(inited + 104) = v7;
  v8 = qword_28131EA10;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = unk_28131ECA0;
  *(inited + 144) = qword_28131EC98;
  *(inited + 152) = v9;
  v10 = type metadata accessor for CalendarEventQueryMatcher();
  v11 = swift_initStaticObject();
  *(inited + 184) = v10;
  *(inited + 192) = &off_287987878;
  *(inited + 160) = v11;
  v12 = qword_28131EA18;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = unk_28131ECB0;
  *(inited + 200) = qword_28131ECA8;
  *(inited + 208) = v13;
  v14 = type metadata accessor for ApplicationQueryMatcher();
  v15 = swift_initStaticObject();
  *(inited + 240) = v14;
  *(inited + 248) = &off_287987868;
  *(inited + 216) = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA548, &qword_268CB8D40);
  result = sub_268CB79C0();
  qword_28131EB60 = result;
  return result;
}

void static RREntityMatcher.entity(_:matches:entityFoundByMarrsIdentifier:)()
{
  OUTLINED_FUNCTION_25();
  LODWORD(v126) = v0;
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4D8, &qword_268CB8A00);
  OUTLINED_FUNCTION_9_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_13_1();
  v122[4] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4E0, &qword_268CB8A08);
  OUTLINED_FUNCTION_9_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_13_1();
  v122[3] = v14;
  v15 = sub_268CB76E0();
  v16 = OUTLINED_FUNCTION_2_0(v15);
  v122[5] = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = sub_268CB7750();
  v21 = OUTLINED_FUNCTION_2_0(v20);
  v127 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5_2();
  v123 = v25 - v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_16_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_16_1();
  MEMORY[0x28223BE20](v29);
  v31 = v122 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA510, &qword_268CB8CD0);
  v33 = OUTLINED_FUNCTION_9_1(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_16_1();
  MEMORY[0x28223BE20](v36);
  v38 = v122 - v37;
  v39 = sub_268CB7960();
  v40 = OUTLINED_FUNCTION_2_0(v39);
  v125 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  v45 = v122 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28131EB70 != -1)
  {
    swift_once();
  }

  if (byte_28131EC48 == 1 && sub_268CA4B10(v4, v2, v126 & 1))
  {
    goto LABEL_72;
  }

  sub_268CB7820();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v38, 1, v39);
  v124 = v20;
  if (EnumTagSinglePayload != 1)
  {
    v47 = (*(v125 + 32))(v45, v38, v39);
    if (qword_28131EB50 != -1)
    {
      v47 = OUTLINED_FUNCTION_0_2();
    }

    OUTLINED_FUNCTION_3_2(v47, qword_28131ECF0);
    v48(v31);
    v49 = sub_268CB7730();
    v50 = sub_268CB7BD0();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = OUTLINED_FUNCTION_10_0();
      *v51 = 0;
      _os_log_impl(&dword_268C94000, v49, v50, "rrEntity.typedValue conversion", v51, 2u);
      v20 = v124;
      OUTLINED_FUNCTION_5_0();
    }

    (*(v127 + 8))(v31, v20);
    sub_268CB7670();
    v52 = sub_268CB71E0();

    if (v52)
    {
      v129 = v39;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v128);
      (*(v125 + 16))(boxed_opaque_existential_1, v45, v39);
      sub_268CB76D0();
      sub_268CB76B0();
      sub_268CB76C0();
      v54 = OUTLINED_FUNCTION_24();
      v55(v54);
      __swift_destroy_boxed_opaque_existential_0Tm(&v128);
      sub_268C9E598(v130, &v128);
      if (!v129)
      {
        sub_268CA5D30(v130, &qword_2802DA410, &unk_268CB8920);
        v67 = OUTLINED_FUNCTION_6_2();
        v68(v67);
        sub_268CA5D30(&v128, &qword_2802DA410, &unk_268CB8920);
        goto LABEL_18;
      }

      sub_268CB70B0();
      if (swift_dynamicCast())
      {
        v127 = sub_268CB70A0();

        sub_268CB7890();
        v126 = sub_268CB7840();
        sub_268CB7820();
        sub_268CB7800();
        OUTLINED_FUNCTION_19_1();
        __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
        sub_268CB78C0();
        sub_268CB7040();
        OUTLINED_FUNCTION_19_1();
        __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
        sub_268CB7920();
        sub_268CB79C0();
        v64 = objc_allocWithZone(sub_268CB7910());
        OUTLINED_FUNCTION_17_1();
        sub_268CB7870();
        sub_268CA5D30(v130, &qword_2802DA410, &unk_268CB8920);
        v65 = OUTLINED_FUNCTION_6_2();
        v66(v65);
        goto LABEL_72;
      }

      sub_268CA5D30(v130, &qword_2802DA410, &unk_268CB8920);
    }

    v69 = OUTLINED_FUNCTION_6_2();
    v70(v69);
    goto LABEL_18;
  }

  sub_268CA5D30(v38, &qword_2802DA510, &qword_268CB8CD0);
LABEL_18:
  if (qword_28131EB58 != -1)
  {
    swift_once();
  }

  v71 = qword_28131EB60;
  v72 = sub_268CB7670();
  sub_268CA3AAC(v72, v73, v71, &v128);

  if (v129)
  {
    sub_268C958E0(&v128, v130);
  }

  else if (qword_28131EB40 == -1)
  {
    v74 = qword_28131ECD8;
    Matcher = type metadata accessor for BaseQueryMatcher();
    v132 = &off_2879878A8;
    v130[0] = v74;
  }

  else
  {
    OUTLINED_FUNCTION_0();
    v120 = v129;
    v121 = qword_28131ECD8;
    Matcher = type metadata accessor for BaseQueryMatcher();
    v132 = &off_2879878A8;
    v130[0] = v121;

    if (v120)
    {
      sub_268CA5D30(&v128, &qword_2802DA518, &unk_268CB8CD8);
    }
  }

  v75 = Matcher;
  v76 = v132;
  v77 = __swift_project_boxed_opaque_existential_1(v130, Matcher);
  v78 = sub_268CB77D0();
  v79 = *(v78 + 48);
  v80 = *(v78 + 52);
  swift_allocObject();

  v81 = sub_268CB77A0();
  v82 = sub_268CB7810();
  LOBYTE(v75) = (v76[1])(v81, v82, v126 & 1, v75, v76);

  if (v75)
  {
    sub_268CB7670();
    OUTLINED_FUNCTION_22();
    if (qword_28131EA28 != -1)
    {
      swift_once();
    }

    v84 = qword_28131ECB8;
    v85 = unk_28131ECC0;
    if (v77 == qword_28131ECB8 && v2 == unk_28131ECC0)
    {
    }

    else
    {
      v77 = OUTLINED_FUNCTION_2_2();

      if ((v77 & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    v94 = sub_268CB7810();
    sub_268CB7670();
    OUTLINED_FUNCTION_22();

    if (v77 == v84 && v94 == v85)
    {
    }

    else
    {
      v96 = OUTLINED_FUNCTION_2_2();

      if ((v96 & 1) == 0)
      {
        if (qword_28131EB50 != -1)
        {
          v97 = OUTLINED_FUNCTION_0_2();
        }

        OUTLINED_FUNCTION_3_2(v97, qword_28131ECF0);
        v98(v122[1]);
        v99 = sub_268CB7730();
        v100 = sub_268CB7BD0();
        if (OUTLINED_FUNCTION_21(v100))
        {
          *OUTLINED_FUNCTION_10_0() = 0;
          OUTLINED_FUNCTION_11_1(&dword_268C94000, v101, v102, "convertRREntityToPersonAnnotatedEntity conversion");
          OUTLINED_FUNCTION_5_0();
        }

        v103 = OUTLINED_FUNCTION_7_1();
        v104(v103);
        static RREntityMatcher.convertRREntityToPersonAnnotatedEntity(rrEntity:)();
        goto LABEL_69;
      }
    }

LABEL_50:
    sub_268CB7670();
    OUTLINED_FUNCTION_22();
    if (qword_28131EA10 != -1)
    {
      swift_once();
    }

    v105 = qword_28131EC98;
    v106 = unk_28131ECA0;
    if (v77 == qword_28131EC98 && v2 == unk_28131ECA0)
    {
    }

    else
    {
      v77 = OUTLINED_FUNCTION_2_2();

      if ((v77 & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    v108 = sub_268CB7810();
    sub_268CB7670();
    OUTLINED_FUNCTION_22();

    if (v77 == v105 && v108 == v106)
    {
    }

    else
    {
      v110 = OUTLINED_FUNCTION_2_2();

      if ((v110 & 1) == 0)
      {
        if (qword_28131EB50 != -1)
        {
          v111 = OUTLINED_FUNCTION_0_2();
        }

        OUTLINED_FUNCTION_3_2(v111, qword_28131ECF0);
        v112(v122[0]);
        v113 = sub_268CB7730();
        v114 = sub_268CB7BD0();
        if (OUTLINED_FUNCTION_21(v114))
        {
          *OUTLINED_FUNCTION_10_0() = 0;
          OUTLINED_FUNCTION_11_1(&dword_268C94000, v115, v116, "convertRREntityToCalendarEventAnnotatedEntity conversion");
          OUTLINED_FUNCTION_5_0();
        }

        v117 = OUTLINED_FUNCTION_7_1();
        v118(v117);
        static RREntityMatcher.convertRREntityToCalendarEventAnnotatedEntity(rrEntity:)();
LABEL_69:
        __swift_destroy_boxed_opaque_existential_0Tm(v130);
        goto LABEL_72;
      }
    }

LABEL_71:
    __swift_destroy_boxed_opaque_existential_0Tm(v130);
    v119 = v4;
    goto LABEL_72;
  }

  if (qword_28131EB50 != -1)
  {
    v83 = OUTLINED_FUNCTION_0_2();
  }

  OUTLINED_FUNCTION_3_2(v83, qword_28131ECF0);
  v87(v123);
  v88 = sub_268CB7730();
  v89 = sub_268CB7BD0();
  if (OUTLINED_FUNCTION_21(v89))
  {
    *OUTLINED_FUNCTION_10_0() = 0;
    OUTLINED_FUNCTION_11_1(&dword_268C94000, v90, v91, "queryMatcher.match returned nil");
    OUTLINED_FUNCTION_5_0();
  }

  v92 = OUTLINED_FUNCTION_7_1();
  v93(v92);
  __swift_destroy_boxed_opaque_existential_0Tm(v130);
LABEL_72:
  OUTLINED_FUNCTION_10_1();
}

void *sub_268CA4B10(void *a1, uint64_t a2, char a3)
{
  if (qword_2802DA180 != -1)
  {
    swift_once();
  }

  v6 = sub_268C9BC60(a1, a2, a3 & 1);

  if (!v6)
  {
    if (qword_2802DA168 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v7 = qword_2802DA640;
    if (!qword_2802DA640)
    {
      swift_endAccess();
      return 0;
    }

    v8 = sub_268CB7670();
    v10 = sub_268CA3A5C(v8, v9, v7);
    swift_endAccess();

    if (!v10)
    {
      return 0;
    }

    v6 = sub_268C9BC60(a1, v10, 0);

    if (!v6)
    {
      return 0;
    }
  }

  return v6;
}

void static RREntityMatcher.convertRREntityToPersonAnnotatedEntity(rrEntity:)()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4D8, &qword_268CB8A00);
  OUTLINED_FUNCTION_9_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13_1();
  v52 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4E0, &qword_268CB8A08);
  OUTLINED_FUNCTION_9_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_13_1();
  v51 = v11;
  v12 = sub_268CB7750();
  v13 = OUTLINED_FUNCTION_2_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_2();
  v54 = (v18 - v19);
  MEMORY[0x28223BE20](v20);
  v22 = &v51 - v21;
  if (qword_28131EB50 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v23 = __swift_project_value_buffer(v12, qword_28131ECF0);
  v55 = *(v15 + 16);
  v55(v22, v23, v12);
  v24 = sub_268CB7730();
  v25 = sub_268CB7BC0();
  if (os_log_type_enabled(v24, v25))
  {
    *OUTLINED_FUNCTION_10_0() = 0;
    OUTLINED_FUNCTION_26(&dword_268C94000, v26, v27, "common_Person query matched with a basic contact address RREntity. Converting matched RREntity to common_Person");
    OUTLINED_FUNCTION_5_0();
  }

  v53 = *(v15 + 8);
  v53(v22, v12);
  if (qword_2802DA188 != -1)
  {
    swift_once();
  }

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA520, &qword_268CB8CE8);
  __swift_project_value_buffer(v28, qword_2802DA668);
  OUTLINED_FUNCTION_23();
  v29 = sub_268CB76A0();
  v30 = sub_268CB7810();
  v31 = OUTLINED_FUNCTION_12_1(v30);
  v29(v31);
  if (v24)
  {

    v32 = v54;
    v55(v54, v23, v12);
    v55 = v1;
    v33 = sub_268CB7730();
    v34 = sub_268CB7BE0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v56 = v36;
      *v35 = 136315138;
      sub_268CB7810();
      v37 = sub_268CB7640();
      v39 = v38;

      v40 = sub_268CA5820(v37, v39, &v56);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_268C94000, v33, v34, "Failed to transform the matched entity %s into common_Person. Returning orignal matched entity", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_5_0();

      v41 = v54;
    }

    else
    {

      v41 = v32;
    }

    v53(v41, v12);
    OUTLINED_FUNCTION_10_1();

    v50 = v48;
  }

  else
  {

    sub_268CB7890();
    v55 = sub_268CB7840();

    sub_268CB70A0();

    sub_268CB78B0();
    sub_268CB7900();
    sub_268CB78C0();
    sub_268CB7040();
    v42 = v52;
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
    sub_268CB7830();
    v47 = objc_allocWithZone(sub_268CB7910());
    OUTLINED_FUNCTION_8_2();
    v54 = v42;
    v55 = 0;
    OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_17_1();
    sub_268CB7880();

    OUTLINED_FUNCTION_10_1();
  }
}

void static RREntityMatcher.convertRREntityToCalendarEventAnnotatedEntity(rrEntity:)()
{
  OUTLINED_FUNCTION_25();
  v62 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4D8, &qword_268CB8A00);
  OUTLINED_FUNCTION_9_1(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_13_1();
  v58 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4E0, &qword_268CB8A08);
  OUTLINED_FUNCTION_9_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_13_1();
  v57[1] = v10;
  v11 = sub_268CB7750();
  v12 = OUTLINED_FUNCTION_2_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_2();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = v57 - v21;
  if (qword_28131EB50 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v23 = __swift_project_value_buffer(v11, qword_28131ECF0);
  v24 = *(v14 + 16);
  v24(v22, v23, v11);
  v25 = sub_268CB7730();
  v26 = sub_268CB7BC0();
  if (os_log_type_enabled(v25, v26))
  {
    *OUTLINED_FUNCTION_10_0() = 0;
    OUTLINED_FUNCTION_26(&dword_268C94000, v27, v28, "common_CalendarEvent query matched with DateTimeRange entity. Converting matched RREntity to common_CalendarEvent");
    OUTLINED_FUNCTION_5_0();
  }

  v61 = v19;

  v59 = *(v14 + 8);
  v60 = v14 + 8;
  v59(v22, v11);
  if (qword_2802DA1A8 != -1)
  {
    swift_once();
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA528, &qword_268CB8CF0);
  __swift_project_value_buffer(v29, qword_2802DA698);
  OUTLINED_FUNCTION_23();
  v30 = sub_268CB76A0();
  v31 = v62;
  v32 = sub_268CB7810();
  v33 = OUTLINED_FUNCTION_12_1(v32);
  v30(v33);
  if (v25)
  {

    v34 = v61;
    v24(v61, v23, v11);
    v62 = v31;
    v35 = v25;
    v36 = sub_268CB7730();
    v37 = sub_268CB7BE0();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v63 = v40;
      *v38 = 136315394;
      sub_268CB7810();
      v41 = sub_268CB7640();
      v43 = v42;

      v44 = sub_268CA5820(v41, v43, &v63);

      *(v38 + 4) = v44;
      *(v38 + 12) = 2112;
      v45 = v25;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 14) = v46;
      *v39 = v46;
      _os_log_impl(&dword_268C94000, v36, v37, "Failed to transform the matched entity %s into common_CalendarEvent, with error: %@ Returning original matched entity", v38, 0x16u);
      sub_268CA5D30(v39, &qword_2802DA530, qword_268CB8CF8);
      OUTLINED_FUNCTION_5_0();
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_5_0();

      v47 = v61;
    }

    else
    {

      v47 = v34;
    }

    v59(v47, v11);
    OUTLINED_FUNCTION_10_1();

    v56 = v54;
  }

  else
  {

    sub_268CB7890();
    v61 = sub_268CB7840();

    sub_268CB70A0();

    sub_268CB78B0();
    sub_268CB7900();
    sub_268CB78C0();
    sub_268CB7040();
    v48 = v58;
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
    sub_268CB7830();
    v53 = objc_allocWithZone(sub_268CB7910());
    OUTLINED_FUNCTION_8_2();
    v59 = v48;
    v60 = 0;
    OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_17_1();
    sub_268CB7880();

    OUTLINED_FUNCTION_10_1();
  }
}

uint64_t static RREntityMatcher.entity(_:matches:lastProposedEntityType:)()
{
  if (qword_28131EB40 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  sub_268C96540();
  return v0 & 1;
}

uint64_t sub_268CA56EC()
{
  if (qword_2802DA158 != -1)
  {
    swift_once();
  }

  qword_2802DA508 = qword_2802DA638;
}

uint64_t sub_268CA5750(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_268CA57C4(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_268CA5820(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_268CA5820(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_268CA58E4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_268CA1118(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_268CA58E4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_268CA59E4(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_268CB7CF0();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}