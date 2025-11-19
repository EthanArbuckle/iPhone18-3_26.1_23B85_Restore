void sub_188FF2160(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000024, 0x800000018A69D920);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](41, 0xE100000000000000);
  *(v5 + 16) = 0;
  *(v5 + 24) = 0xE000000000000000;
  v18[1] = 2105354;
  v18[2] = 0xE300000000000000;
  MEMORY[0x18CFE22D0](a1, a2);
  MEMORY[0x18CFE22D0](2105354, 0xE300000000000000);

  swift_beginAccess();
  v6 = *(v2 + 16);
  if (v6 >> 62)
  {
    v7 = sub_18A4A7F68();
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v7; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = sub_188E48D74(i, v6);
    }

    else
    {
      v9 = *(v6 + 8 * i + 32);
    }

    sub_188FF3F94(v9, 1, v5);
  }

LABEL_10:
  if (qword_1EA931DC0 != -1)
  {
    swift_once();
  }

  v10 = sub_18A4A4378();
  __swift_project_value_buffer(v10, qword_1EA9398D8);
  v11 = sub_18A4A4358();
  v12 = sub_18A4A7998();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18[0] = v14;
    *v13 = 136315138;
    swift_beginAccess();
    v15 = *(v5 + 16);
    v16 = *(v5 + 24);

    v17 = sub_1891D69C0(v15, v16, v18);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_188A29000, v11, v12, "%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x18CFEA5B0](v14, -1, -1);
    MEMORY[0x18CFEA5B0](v13, -1, -1);
  }
}

uint64_t sub_188FF248C(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (a2 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18A4A7F68())
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      for (j = 0; ; ++j)
      {
        result = sub_188E48D74(j, v2);
        v7 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        if (*(result + 24) == a1)
        {
          return result;
        }

        v8 = result;
        swift_beginAccess();
        v9 = *(v8 + 40);

        v10 = sub_188FF248C(a1, v9);
        swift_unknownObjectRelease();

        if (v10)
        {
          return v10;
        }

        if (v7 == i)
        {
          return 0;
        }
      }

      __break(1u);
    }

    else
    {
      v11 = v2 + 32;
      for (k = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); k; --k)
      {
        v13 = *v11;
        if (*(*v11 + 24) == a1)
        {
        }

        swift_beginAccess();
        v14 = *(v13 + 40);

        v2 = sub_188FF248C(a1, v14);

        if (v2)
        {
          return v2;
        }

        v11 += 8;
        if (!--i)
        {
          return 0;
        }
      }
    }

    __break(1u);
LABEL_22:
    ;
  }

  return 0;
}

unint64_t sub_188FF264C(void *a1)
{
  v3 = *v1;
  if (*v1 >> 62)
  {
    v4 = sub_18A4A7F68();
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
LABEL_10:
      _s17TransitionManagerC5EntryCMa();
      v8 = swift_allocObject();
      swift_weakInit();
      *(v8 + 32) = 0;
      v9 = MEMORY[0x1E69E7CD0];
      *(v8 + 48) = 0;
      *(v8 + 56) = v9;
      *(v8 + 24) = a1;
      swift_weakAssign();
      *(v8 + 40) = MEMORY[0x1E69E7CC0];
      v10 = a1;

      MEMORY[0x18CFE2450](v11);
      if (*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18A4A7588();
      }

      sub_18A4A75F8();
      goto LABEL_14;
    }
  }

  v5 = __OFSUB__(v4, 1);
  result = v4 - 1;
  if (v5)
  {
    __break(1u);
  }

  else if ((v3 & 0xC000000000000001) == 0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v7 = *(v3 + 8 * result + 32);

      goto LABEL_8;
    }

    __break(1u);
    return result;
  }

  v7 = sub_188E48D74(result, v3);
LABEL_8:
  if (*(v7 + 24) != a1)
  {

    goto LABEL_10;
  }

  *(v7 + 32) = 0;
LABEL_14:
}

uint64_t sub_188FF27C4(void *a1, uint64_t a2)
{
  if (*(v2 + 48) || *(a2 + 48) || (v4 = v2, swift_beginAccess(), sub_188C1CAD8(v2, *(a2 + 56))))
  {
    result = sub_18A4A8398();
    __break(1u);
  }

  else
  {
    v6 = [a1 transitionContext];
    v7 = *(v2 + 48);
    *(v4 + 48) = v6;
    v8 = v6;

    swift_beginAccess();
    sub_188E71698(&v25, v4);
    swift_endAccess();
    v9 = v8;
    v10 = [v9 _completionHandler];
    if (v10)
    {
      v11 = swift_allocObject();
      *(v11 + 16) = v10;
      v10 = sub_188FF448C;
    }

    else
    {
      v11 = 0;
    }

    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    v13[2] = v9;
    v13[3] = v12;
    v13[4] = a2;
    v13[5] = v10;
    v13[6] = v11;
    v23 = sub_188FF447C;
    v24 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v20 = 1107296256;
    v21 = sub_189031424;
    v22 = &block_descriptor_67;
    v14 = _Block_copy(&aBlock);
    v15 = v9;

    sub_188A52E38(v10);

    [v15 _setCompletionHandler_];
    _Block_release(v14);

    _UIViewControllerTransitioningRunCustomTransitionWithRequest(a1);
    if (swift_weakLoadStrong())
    {
      aBlock = 0;
      v20 = 0xE000000000000000;
      sub_18A4A80E8();

      aBlock = 0xD000000000000011;
      v20 = 0x800000018A69D7F0;
      v16 = sub_188FF3690();
      MEMORY[0x18CFE22D0](v16);

      MEMORY[0x18CFE22D0](0x206D6F72662820, 0xE700000000000000);
      v17 = sub_188FF3690();
      MEMORY[0x18CFE22D0](v17);

      MEMORY[0x18CFE22D0](41, 0xE100000000000000);
      sub_188FF2160(aBlock, v20);

      sub_188A55B8C(v10);
    }

    else
    {

      return sub_188A55B8C(v10);
    }
  }

  return result;
}

uint64_t sub_188FF2BA4()
{
  if (*(v0 + 32))
  {
    return 0;
  }

  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 40);
  if (v2 >> 62)
  {
LABEL_44:
    v3 = sub_18A4A7F68();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v2 & 0xC000000000000001;

  v6 = 0;
  while (v3 != v6)
  {
    if (v4)
    {
      v7 = sub_188E48D74(v6, v2);
    }

    else
    {
      if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }
    }

    v8 = sub_188FF2BA4(v7);

    if (v8)
    {
      v3 = v6;
      break;
    }

    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_42;
    }
  }

  if (v2 >> 62)
  {
    if (v3 != sub_18A4A7F68())
    {
      result = sub_18A4A7F68();
      if (result)
      {
        v10 = result;
        v1 = sub_18A4A7F68();
LABEL_26:
        while (1)
        {
          v9 = __OFSUB__(v10--, 1);
          if (v9)
          {
            goto LABEL_40;
          }

          if ((v10 & 0x8000000000000000) != 0 || v10 >= v1)
          {
            goto LABEL_41;
          }

          if (v4)
          {
            v11 = sub_188E48D74(v10, v2);
          }

          else
          {
            if (v10 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }
          }

          v12 = sub_188FF2BA4(v11);

          if (v12)
          {
            if (v4)
            {
              v13 = sub_188E48D74(v10, v2);
            }

            else
            {
              if (v10 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_46;
              }
            }

            v1 = sub_188FF2BA4(v13);

            if (v1)
            {

              return v1;
            }

            goto LABEL_47;
          }
        }
      }

      goto LABEL_45;
    }

LABEL_21:

    return v1;
  }

  v10 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3 == v10)
  {
    goto LABEL_21;
  }

  v1 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10)
  {
    goto LABEL_26;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_188FF2DF0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if (a4 >> 62)
  {
    v10 = result;
    v11 = a4;
    v12 = a2;
    v13 = a3;
    result = sub_18A4A7F68();
    if (v10 < 0 || result < v10)
    {
      goto LABEL_23;
    }

    v14 = sub_18A4A7F68();
    a3 = v13;
    a2 = v12;
    a4 = v11;
    v5 = v14;
    result = v10;
    if (v13 < 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v5 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 < result)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (a3 < 0)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }
  }

  if (v5 < a3)
  {
    goto LABEL_22;
  }

  v6 = a3 - result;
  if (a2 >= 1)
  {
    if (v6 < 0 || v6 >= a2)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a2)
  {
    return 0;
  }

LABEL_12:
  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  if (v4)
  {
    v9 = result;
    v8 = sub_18A4A7F68();
    result = v9;
  }

  else
  {
    v8 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < 0 || v8 < result)
  {
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_188FF2F1C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
  }

  else if (!(*v2 >> 62))
  {
    result = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  v5 = a2;
  result = sub_18A4A7F68();
  a2 = v5;
  if (v3 < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v3 < result)
  {
    *a2 = v3;
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t *sub_188FF2F8C(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (!(*v1 >> 62))
  {
    v3 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  v4 = result;
  v3 = sub_18A4A7F68();
  result = v4;
  if (v2 < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v2 < v3)
  {
    *result = v2;
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_188FF3004@<X0>(uint64_t *a1@<X8>)
{
  if (*v1 >> 62)
  {
    v3 = a1;
    result = sub_18A4A7F68();
    a1 = v3;
  }

  else
  {
    result = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *a1 = result;
  return result;
}

unint64_t sub_188FF3054(uint64_t *a1, unint64_t *a2)
{
  result = *a2;
  v5 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    v6 = sub_188E48D74(result, v5);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_5:
    *a1 = v6;
    a1[1] = v6;
    return sub_188FF30D4;
  }

  __break(1u);
  return result;
}

uint64_t sub_188FF30DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *v2;
  v7 = *v2 & 0xFFFFFFFFFFFFFF8;
  v8 = *v2 >> 62;
  if (!v8)
  {
    result = *(v7 + 16);
    if (result >= v5)
    {
      goto LABEL_3;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_18A4A7F68();
  if (result < v5)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v5 < 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v8)
  {
    result = sub_18A4A7F68();
  }

  else
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v4)
  {
    goto LABEL_13;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    result = sub_188FF4330(v5, v4, v6);
    *a2 = result;
    a2[1] = v10;
    a2[2] = v11;
    a2[3] = v12;
    return result;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_188FF3194@<X0>(void *a1@<X8>)
{
  if (*v1 >> 62)
  {
    v3 = a1;
    result = sub_18A4A7F68();
    if (result < 0)
    {
      __break(1u);
    }

    a1 = v3;
  }

  else
  {
    result = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *a1 = 0;
  a1[1] = result;
  return result;
}

BOOL sub_188FF31EC()
{
  if (*v0 >> 62)
  {
    v1 = sub_18A4A7F68();
  }

  else
  {
    v1 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 == 0;
}

uint64_t sub_188FF3230(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v2 = result;
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

    goto LABEL_7;
  }

  v2 = sub_18A4A7F68();
  result = sub_18A4A7F68();
  if ((result & 0x8000000000000000) == 0)
  {
    result = sub_18A4A7F68();
    if ((v2 & 0x8000000000000000) == 0)
    {
LABEL_3:
      if (result >= v2)
      {
        return v2;
      }
    }

LABEL_7:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_188FF32A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1 + a2;
  if (__OFADD__(*a1, a2))
  {
    __break(1u);
  }

  else if (!(*v3 >> 62))
  {
    result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  v6 = a3;
  result = sub_18A4A7F68();
  a3 = v6;
  if (v4 < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (result >= v4)
  {
    *a3 = v4;
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_188FF3318@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_188FF2DF0(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t sub_188FF3354(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (*v2 >> 62)
  {
    result = sub_18A4A7F68();
    if (v3 < 0 || result < v3)
    {
      goto LABEL_10;
    }

    result = sub_18A4A7F68();
    if (v4 < 0)
    {
      goto LABEL_9;
    }

    goto LABEL_4;
  }

  result = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3 <= result)
  {
    if (v4 < 0)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

LABEL_4:
    if (result >= v4)
    {
      return v4 - v3;
    }

    goto LABEL_9;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t *sub_188FF33E0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_188FF33FC(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_188FF3418(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_188FF3434@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_188FF344C(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t sub_188FF3470()
{
  v1 = sub_188FF4254(*v0);

  return v1;
}

uint64_t sub_188FF34B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_188FF2BA4();
  *a1 = result;
  return result;
}

uint64_t sub_188FF34DC(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_188FF4728(a3, a5);
  }

  if (a6)
  {
    return a6(a3, a2 & 1);
  }

  return result;
}

uint64_t sub_188FF357C()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

unint64_t sub_188FF363C()
{
  result = qword_1EA939900;
  if (!qword_1EA939900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA939900);
  }

  return result;
}

unint64_t sub_188FF3690()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939968);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v26 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939970);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939978);
  sub_18A4A3278();
  sub_18A4A7228();
  sub_188A34360(&qword_1EA939980, &qword_1EA939970);
  sub_18A4A3268();
  sub_18A4A7448();

  sub_18A4A3288();
  v27 = v9;
  v28 = v4;
  v26 = *(v4 + 8);
  v26(v6, v3);

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939988);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v2, 1, v10) == 1)
  {
    v12 = v27;
    v13 = v26;
    sub_188FF4414(v2);
    v14 = sub_18A4A7D68();
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    sub_18A4A3298();

    v14 = v31;
    v16 = v32;
    v18 = v33;
    v20 = v34;
    (*(v11 + 8))(v2, v10);
    v12 = v27;
    v13 = v26;
  }

  v29 = 0;
  v30 = 0xE000000000000000;
  sub_18A4A80E8();

  v29 = 0xD000000000000019;
  v30 = 0x800000018A69D660;
  v21 = MEMORY[0x18CFE2270](v14, v16, v18, v20);
  v23 = v22;

  MEMORY[0x18CFE22D0](v21, v23);

  MEMORY[0x18CFE22D0](62, 0xE100000000000000);
  v24 = v29;
  v13(v12, v3);
  return v24;
}

unint64_t sub_188FF3B2C()
{
  result = qword_1EA939908;
  if (!qword_1EA939908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA939908);
  }

  return result;
}

unint64_t sub_188FF3BC8()
{
  result = qword_1EA939920;
  if (!qword_1EA939920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA939920);
  }

  return result;
}

unint64_t sub_188FF3C5C()
{
  result = qword_1EA92FC00[0];
  if (!qword_1EA92FC00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA92FC00);
  }

  return result;
}

unint64_t sub_188FF3CF8()
{
  result = qword_1EA939938;
  if (!qword_1EA939938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA939938);
  }

  return result;
}

unint64_t sub_188FF3DC8()
{
  result = qword_1EA939950;
  if (!qword_1EA939950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA939950);
  }

  return result;
}

uint64_t sub_188FF3E50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA93E6F0);
    sub_188FF3C5C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_188FF3F0C()
{
  v0 = sub_18A4A4378();
  __swift_allocate_value_buffer(v0, qword_1EA9398D8);
  __swift_project_value_buffer(v0, qword_1EA9398D8);
  return sub_18A4A4368();
}

uint64_t sub_188FF3F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0xE200000000000000;
  v7 = sub_18A4A7408();
  v9 = v8;
  if (*(a1 + 32))
  {
    v10 = 88;
  }

  else
  {
    v10 = 15917;
  }

  if (*(a1 + 32))
  {
    v6 = 0xE100000000000000;
  }

  if (*(a1 + 48))
  {
    v11 = 0xEF5D474E494E4F49;
    v12 = 0x5449534E4152545BLL;
  }

  else
  {
    v13 = v7;
    swift_beginAccess();
    v7 = v13;
    if (*(*(a1 + 56) + 16))
    {
      v12 = 0x6E6572656665725BLL;
    }

    else
    {
      v12 = 0x5D656C64695BLL;
    }

    if (*(*(a1 + 56) + 16))
    {
      v11 = 0xEC0000005D646563;
    }

    else
    {
      v11 = 0xE600000000000000;
    }
  }

  MEMORY[0x18CFE22D0](v7, v9);

  MEMORY[0x18CFE22D0](v10, v6);

  MEMORY[0x18CFE22D0](539173664, 0xE400000000000000);
  MEMORY[0x18CFE22D0](v12, v11);

  MEMORY[0x18CFE22D0](32, 0xE100000000000000);
  v14 = [*(a1 + 24) description];
  v15 = sub_18A4A7288();
  v17 = v16;

  MEMORY[0x18CFE22D0](v15, v17);

  swift_beginAccess();
  MEMORY[0x18CFE22D0](10, 0xE100000000000000);
  swift_endAccess();

  result = swift_beginAccess();
  v19 = *(a1 + 40);
  if (v19 >> 62)
  {
    result = sub_18A4A7F68();
    v20 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      return result;
    }
  }

  v21 = __OFADD__(a2, 2);
  v22 = a2 + 2;
  if (v21)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v20 < 1)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  for (i = 0; i != v20; ++i)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v24 = sub_188E48D74(i, v19);
    }

    else
    {
      v24 = *(v19 + 8 * i + 32);
    }

    sub_188FF3F94(v24, v22, a3);
  }
}

uint64_t sub_188FF4254(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

  v3 = sub_18A4A7F68();
  result = sub_18A4A7F68();
  if ((result & 0x8000000000000000) == 0)
  {
    result = sub_18A4A7F68();
    if ((v3 & 0x8000000000000000) == 0)
    {
LABEL_3:
      if (result >= v3)
      {
        if (v3)
        {
          v4 = sub_188AF0A60(v3, 0);

          v5 = sub_188FED304(&v6, v4 + 32, v3, a1);

          if (v5 == v3)
          {
            return v4;
          }

          __break(1u);
        }

        return MEMORY[0x1E69E7CC0];
      }
    }

LABEL_11:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_188FF4330(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  if ((a3 & 0xC000000000000001) == 0)
  {
    goto LABEL_4;
  }

  if (a2 < result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (result == a2)
  {
LABEL_4:

LABEL_8:
    if (a3 >> 62)
    {

      return sub_18A4A8438();
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      return a3 & 0xFFFFFFFFFFFFFF8;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (result < a2)
  {
    _s17TransitionManagerC5EntryCMa();

    result = v5;
    do
    {
      v6 = result + 1;
      sub_18A4A8148();
      result = v6;
    }

    while (a2 != v6);
    goto LABEL_8;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_188FF4414(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939968);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_188FF4494()
{
  v1 = *v0;
  v8 = v0[1];
  if (*v0 >> 62)
  {
LABEL_17:
    v2 = sub_18A4A7F68();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  v4 = v0[3];
  while (v2 != v3)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = sub_188E48D74(v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v9 = v5;
    v8(&v10, &v9);

    v9 = v10;
    v0 = v4(&v9);

    if (v0)
    {
      return v3;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_16;
    }
  }

  return v2;
}

uint64_t sub_188FF45BC(unint64_t *a1)
{
  v4 = *a1;
  if (!*a1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v2 = *v1;
  v3 = v1[1];
  v10 = a1;
  if (*v1 >> 62)
  {
LABEL_18:
    v11 = v2 & 0xFFFFFFFFFFFFFF8;
    v5 = sub_18A4A7F68();
    goto LABEL_4;
  }

  v11 = v2 & 0xFFFFFFFFFFFFFF8;
  v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v6 = v1[3];
  do
  {
    if (__OFSUB__(v4--, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if ((v4 & 0x8000000000000000) != 0 || v4 >= v5)
    {
      goto LABEL_15;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = sub_188E48D74(v4, v2);
    }

    else
    {
      if (v4 >= *(v11 + 16))
      {
        goto LABEL_16;
      }

      v7 = *(v2 + 32 + 8 * v4);
    }

    v12 = v7;
    v3(&v13, &v12);

    v12 = v13;
    v1 = v6(&v12);
  }

  while ((v1 & 1) == 0);
  *v10 = v4;
  return result;
}

uint64_t sub_188FF4714@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = *a1;
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_188FF4728(void *a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(v2 + 48);
  if (v4 && v4 == a1 && (swift_beginAccess(), sub_188C1CAD8(v3, *(a2 + 56))))
  {
    swift_beginAccess();
    v6 = v4;
    sub_189221DF8(v3);
    swift_endAccess();
    v7 = *(v3 + 48);
    *(v3 + 48) = 0;

    if (swift_weakLoadStrong())
    {
      sub_188FF2160(0xD000000000000037, 0x800000018A69DA90);
    }
  }

  else
  {
    sub_18A4A8398();
    __break(1u);
  }
}

void sub_188FF48D8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_allowLargeTitles;
  if ((*(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_allowLargeTitles) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_beginWithLargeTitle) = 0;
    *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_endWithLargeTitle) = 0;
  }

  v3 = *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout);
  v78 = OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_backgroundAlpha;
  v4 = *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_backgroundAlpha);
  v5 = *(v3 + 16);
  *(v3 + 16) = v4;
  if (v4 != v5)
  {
    sub_188B386EC();
  }

  sub_188B38ED0(*(v3 + 224));
  swift_beginAccess();
  v6 = *(v3 + 344);
  v7 = v6;
  if (!v6)
  {
    v7 = *(v3 + 352);
    v8 = v7;
  }

  swift_beginAccess();
  v9 = *(v3 + 232);
  v10 = v6;

  sub_188B3A13C(v11, v7, v9);

  swift_beginAccess();
  v12 = *(v3 + 400);
  if (v12 >> 62)
  {
    v13 = sub_18A4A7F68();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = &unk_1EA93E000;
  if (v13)
  {
    if (v13 < 1)
    {
      __break(1u);
      goto LABEL_66;
    }

    v15 = 0;
    v16 = 0.0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v17 = sub_188E4A488(v15, v12);
      }

      else
      {
        v17 = *(v12 + 8 * v15 + 32);
      }

      ++v15;
      v18 = &v17[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData__verticalOrigin];
      *v18 = v16;
      *(v18 + 8) = 0;
      v19 = *&v17[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight];

      v16 = v16 + v19;
    }

    while (v13 != v15);
  }

  *(v3 + 40) = 1;
  sub_188B386EC();

  v12 = *(v1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout);
  v79 = v12;
  if (*(v12 + 224) != 0.0)
  {
    goto LABEL_92;
  }

  v9 = *(v3 + 224);
  UIFloorToScale(10000.0, 6.0);
  v21 = v9 == *(v12 + 224) && v20 == *(v12 + 232);
  if (!v21 || *(v12 + 40) != 1)
  {
    *(v12 + 224) = v9;
    *(v12 + 232) = v20;
    sub_188B38ED0(v9);
    swift_beginAccess();
    v22 = *(v12 + 344);
    v7 = v22;
    if (!v22)
    {
      v7 = *(v12 + 352);
      v23 = v7;
    }

    swift_beginAccess();
    v24 = *(v12 + 232);
    v25 = v22;

    sub_188B3A13C(v26, v7, v24);

    swift_beginAccess();
    v13 = *(v12 + 400);
    if (!(v13 >> 62))
    {
      v27 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v27)
      {
LABEL_28:
        if (v27 < 1)
        {
          __break(1u);
          goto LABEL_71;
        }

        v28 = 0;
        v29 = 0.0;
        do
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v30 = sub_188E4A488(v28, v13);
          }

          else
          {
            v30 = *(v13 + 8 * v28 + 32);
          }

          ++v28;
          v31 = &v30[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData__verticalOrigin];
          *v31 = v29;
          *(v31 + 8) = 0;
          v32 = *&v30[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight];

          v29 = v29 + v32;
        }

        while (v27 != v28);
      }

LABEL_35:
      v12 = v79;
      *(v79 + 40) = 1;
      sub_188B386EC();

      goto LABEL_36;
    }

LABEL_66:
    v27 = sub_18A4A7F68();
    if (v27)
    {
      goto LABEL_28;
    }

    goto LABEL_35;
  }

LABEL_36:
  if (*(v1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_endWithLargeTitle) & 1) == 0 && (*(v1 + v2))
  {
    swift_beginAccess();
    v7 = *(v12 + 400);
    if (!(v7 >> 62))
    {
      v33 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v33)
      {
        goto LABEL_40;
      }

      goto LABEL_73;
    }

LABEL_72:
    v33 = sub_18A4A7F68();
    if (v33)
    {
LABEL_40:
      v34 = v33 - 1;
      if (v33 >= 1)
      {

        v35 = 0;
        v36 = 0.0;
        if ((v7 & 0xC000000000000001) == 0)
        {
          goto LABEL_43;
        }

        while (1)
        {
          for (i = sub_188E4A488(v35, v7); ; i = *(v7 + 8 * v35 + 32))
          {
            if (i[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible] == 1)
            {

              v36 = v36 + 0.0;
              if (v34 == v35)
              {
                goto LABEL_63;
              }
            }

            else
            {
              v38 = *&i[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight];

              v36 = v36 + v38;
              if (v34 == v35)
              {
                goto LABEL_63;
              }
            }

            ++v35;
            if ((v7 & 0xC000000000000001) != 0)
            {
              break;
            }

LABEL_43:
            ;
          }
        }
      }

      goto LABEL_113;
    }

    goto LABEL_73;
  }

  swift_beginAccess();
  v7 = *(v12 + 400);
  if (!(v7 >> 62))
  {
    v39 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v39)
    {
      goto LABEL_52;
    }

LABEL_73:
    v36 = 0.0;
    goto LABEL_74;
  }

  v39 = sub_18A4A7F68();
  if (!v39)
  {
    goto LABEL_73;
  }

LABEL_52:
  if (v39 < 1)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v40 = 0;
  v36 = 0.0;
  do
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v44 = sub_188E4A488(v40, v7);
    }

    else
    {
      v44 = *(v7 + 8 * v40 + 32);
    }

    v45 = v14;
    v46 = 0.0;
    if ((v44[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible] & 1) == 0)
    {
      v46 = *&v44[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight];
    }

    ++v40;
    v41 = *&v44[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight];
    v42 = v44[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_prefersExpanded];

    if (v42)
    {
      v43 = v41;
    }

    else
    {
      v43 = v46;
    }

    v36 = v36 + v43;
    v14 = v45;
  }

  while (v39 != v40);
LABEL_63:

  v12 = v79;
LABEL_74:
  UIFloorToScale(v36, 6.0);
  v48 = v9 == *(v12 + 224) && v47 == *(v12 + 232);
  if (v48 && (*(v12 + 40) & 1) != 0)
  {
    goto LABEL_92;
  }

  *(v12 + 224) = v9;
  *(v12 + 232) = v47;
  sub_188B38ED0(v9);
  swift_beginAccess();
  v49 = *(v12 + 344);
  v50 = v49;
  if (!v49)
  {
    v50 = *(v12 + 352);
    v51 = v50;
  }

  swift_beginAccess();
  v52 = *(v12 + 232);
  v53 = v49;

  sub_188B3A13C(v54, v50, v52);

  swift_beginAccess();
  v55 = *(v12 + 400);
  if (v55 >> 62)
  {
    goto LABEL_110;
  }

  v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v56)
  {
LABEL_84:
    if (v56 >= 1)
    {

      v57 = 0;
      v58 = 0.0;
      do
      {
        if ((v55 & 0xC000000000000001) != 0)
        {
          v59 = sub_188E4A488(v57, v55);
        }

        else
        {
          v59 = *(v55 + 8 * v57 + 32);
        }

        ++v57;
        v60 = &v59[v14[258]];
        *v60 = v58;
        *(v60 + 8) = 0;
        v61 = *&v59[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight];

        v58 = v58 + v61;
      }

      while (v56 != v57);

      goto LABEL_91;
    }

    __break(1u);
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  while (1)
  {
LABEL_91:
    v12 = v79;
    *(v79 + 40) = 1;
    sub_188B386EC();

LABEL_92:
    v62 = *(v1 + v78);
    v63 = *(v12 + 16);
    *(v12 + 16) = v62;
    if (v62 != v63)
    {
      sub_188B386EC();
    }

    sub_188B38ED0(*(v12 + 224));
    swift_beginAccess();
    v64 = *(v12 + 344);
    v50 = v64;
    if (!v64)
    {
      v50 = *(v12 + 352);
      v65 = v50;
    }

    swift_beginAccess();
    v66 = *(v12 + 232);
    v67 = v64;

    sub_188B3A13C(v68, v50, v66);

    swift_beginAccess();
    v55 = *(v12 + 400);
    if (v55 >> 62)
    {
      v69 = sub_18A4A7F68();
      if (!v69)
      {
        goto LABEL_105;
      }
    }

    else
    {
      v69 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v69)
      {
        goto LABEL_105;
      }
    }

    if (v69 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_110:
    v56 = sub_18A4A7F68();
    if (v56)
    {
      goto LABEL_84;
    }
  }

  v70 = 0;
  v71 = 0.0;
  do
  {
    if ((v55 & 0xC000000000000001) != 0)
    {
      v72 = sub_188E4A488(v70, v55);
    }

    else
    {
      v72 = *(v55 + 8 * v70 + 32);
    }

    ++v70;
    v73 = &v72[v14[258]];
    *v73 = v71;
    *(v73 + 8) = 0;
    v74 = *&v72[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight];

    v71 = v71 + v74;
  }

  while (v69 != v70);

LABEL_105:
  *(v79 + 40) = 1;
  sub_188B386EC();

  v75 = *(v1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_navigationBar);
  v76 = v75;
  if (v75)
  {
    v77 = v76;
    sub_1891678E4(v79, v76);

    return;
  }

LABEL_114:
  __break(1u);
}

void sub_188FF5164()
{
  v1 = OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_backgroundView;
  v2 = *&v0[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_backgroundView];
  if (v2)
  {
    v3 = v2;
    [v3 frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = *&v0[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout];
    v13 = *(v12 + 208);
    v14 = -v13;
    if (*(v12 + 96))
    {
      v15 = *(v12 + 224);
      v16 = v13 + *(v12 + 232);
    }

    else
    {
      v16 = 0.0;
      v15 = 0;
    }

    v17 = objc_opt_self();
    v18 = swift_allocObject();
    *(v18 + 16) = v3;
    *(v18 + 24) = v5;
    *(v18 + 32) = v7;
    *(v18 + 40) = v9;
    *(v18 + 48) = v11;
    *(v18 + 56) = 0;
    *(v18 + 64) = v14;
    *(v18 + 72) = v15;
    *(v18 + 80) = v16;
    v35 = sub_188FF735C;
    v36 = v18;
    v31 = MEMORY[0x1E69E9820];
    v32 = 1107296256;
    v33 = sub_188D85708;
    v34 = &block_descriptor_121;
    v19 = _Block_copy(&v31);
    v20 = v3;

    [v17 _animateInProcessAlongsideTransition_];
    _Block_release(v19);
  }

  v21 = *&v0[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout];
  v22 = 104;
  if (v0[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_compact])
  {
    v22 = 112;
  }

  v23 = *(v21 + v22);
  v24 = *(v21 + 304);
  v25 = v23;
  [v25 setBackgroundTransitionProgress_];
  if (v23)
  {
    [v25 setBackgroundAlpha_];
  }

  v26 = OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_usesBarBackground;
  if (v0[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_usesBarBackground] == 1)
  {
    [*&v0[v1] setLayout_];
  }

  if (((v0[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_beginWithTransparencyAllowed] & 1) != 0 || v0[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_endWithTransparencyAllowed] == 1) && *(v21 + 304) != *(*&v0[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout] + 304))
  {
    v28 = swift_allocObject();
    *(v28 + 16) = v0;
    v35 = sub_188FF7354;
    v36 = v28;
    v31 = MEMORY[0x1E69E9820];
    v32 = 1107296256;
    v33 = sub_188A4A8F0;
    v34 = &block_descriptor_115;
    v29 = _Block_copy(&v31);
    v30 = v0;

    _UIBarsTwoPartCrossfadeTransitionProgress(v29, 0, v24);

    _Block_release(v29);
  }

  else
  {
    if (v0[v26] == 1)
    {
      [*&v0[v1] transitionBackgroundViews];
    }

    v27 = *&v0[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_navigationBar];
    [v27 _updatePaletteBackgroundIfNecessary];
  }
}

id sub_188FF54E8()
{
  v1 = v0;
  sub_188FF6170(1);
  v2 = *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLargeTitleLayout);
  if (v2)
  {
    [v2 setContentHidden_];
  }

  v3 = *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLargeTitleLayout);
  if (v3)
  {
    [v3 setContentHidden_];
  }

  v4 = *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout);
  sub_188CC5D78(v4);
  if (*(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_usesBarBackground) == 1)
  {
    v5 = OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_backgroundView;
    v6 = *(v1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_backgroundView);
    if (v6)
    {
      v7 = 104;
      if (*(v1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_compact))
      {
        v7 = 112;
      }

      [v6 setLayout_];
      v6 = *(v1 + v5);
    }

    [v6 transitionBackgroundViews];
  }

  return sub_188FF56DC();
}

id sub_188FF55E4()
{
  sub_188FF6170(0);
  [*(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLargeTitleLayout) setContentHidden_];
  [*(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLargeTitleLayout) setContentHidden_];
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout);
  sub_188CC5D78(v1);
  if (*(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_usesBarBackground) == 1)
  {
    v2 = OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_backgroundView;
    v3 = *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_backgroundView);
    if (v3)
    {
      v4 = 104;
      if (*(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_compact))
      {
        v4 = 112;
      }

      [v3 setLayout_];
      v3 = *(v0 + v2);
    }

    [v3 transitionBackgroundViews];
  }

  return sub_188FF56DC();
}

id sub_188FF56DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout);
  v2 = *(v1 + 152);
  if (v2)
  {
    [v2 setTransitioning_];
    v3 = *(v1 + 152);
    if (v3)
    {
      [v3 setAlpha_];
    }
  }

  v4 = *(v1 + 160);
  if (v4)
  {
    [v4 setTransitioning_];
    v5 = *(v1 + 160);
    if (v5)
    {
      [v5 setAlpha_];
    }
  }

  v6 = *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout);
  v7 = *(v6 + 152);
  if (v7)
  {
    [v7 setTransitioning_];
    v8 = *(v6 + 152);
    if (v8)
    {
      [v8 setAlpha_];
    }
  }

  result = *(v6 + 160);
  if (result)
  {
    [result setTransitioning_];
    result = *(v6 + 160);
    if (result)
    {

      return [result setAlpha_];
    }
  }

  return result;
}

void sub_188FF57E8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout);
  v3 = v2[19];
  v4 = v3;
  sub_18916764C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout);
  v14 = v13[19];
  v15 = v14;
  sub_18916764C();
  v17.n128_u64[0] = v16;
  v19.n128_u64[0] = v18;
  v21.n128_u64[0] = v20;
  v23.n128_u64[0] = v22;
  v24 = ((*MEMORY[0x1E69E7D40] & *v0) + 1232);
  v89 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x4D0);
  v89(v3, v14, v6, v8, v10, v12, v17, v19, v21, v23);

  v25 = v2[20];
  swift_beginAccess();
  v26 = v2[48];
  v27 = &unk_1EA93E000;
  if (!v26 || *(v26 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_active) != 1)
  {
    swift_beginAccess();
    v37 = v2[50];
    if (v37 >> 62)
    {
      goto LABEL_30;
    }

    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v38)
    {
LABEL_31:
      v50 = v26;
      v51 = v25;
      v43 = 0;
      goto LABEL_32;
    }

    while (1)
    {
      v87 = v24;
      v88 = v1;
      v27 = (v37 & 0xC000000000000001);
      v84 = (v37 + 32);
      v86 = v25;
      v39 = v25;
      v40 = v26;

      if ((v37 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v41 = *v84;
        goto LABEL_9;
      }

LABEL_29:
      __break(1u);
LABEL_30:
      v38 = sub_18A4A7F68();
      if (!v38)
      {
        goto LABEL_31;
      }
    }

    v41 = sub_188E4A488(0, v37);
LABEL_9:
    v24 = &unk_1EA93E000;
    v42 = v41[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

    if (v42 > 9)
    {

      v43 = 0;
      v24 = v87;
      v25 = v86;
      v27 = &unk_1EA93E000;
      goto LABEL_32;
    }

    if (v38 == 1)
    {
      v25 = 0;
      v24 = v87;
      if (v27)
      {
        goto LABEL_73;
      }

      goto LABEL_26;
    }

    v25 = 0;
    while (1)
    {
      v44 = v25 + 1;
      if (v27)
      {
        v45 = sub_188E4A488(v25 + 1, v37);
        v46 = __OFADD__(v44, 1);
        v47 = v25 + 2;
        if (v46)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v44 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v45 = *(v37 + 8 * v25 + 40);
        v46 = __OFADD__(v44, 1);
        v47 = v25 + 2;
        if (v46)
        {
LABEL_23:
          __break(1u);
LABEL_24:
          if (v27)
          {
            goto LABEL_72;
          }

          v24 = v87;
          v1 = v88;
          if ((v25 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else
          {
LABEL_26:
            if (v25 < *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v48 = v84[v25];
              goto LABEL_28;
            }
          }

          __break(1u);
          goto LABEL_70;
        }
      }

      v1 = v45[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

      if (v1 < 0xA)
      {
        ++v25;
        if (v47 != v38)
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  v28 = v25;
  v29 = v26;
  v30 = sub_188B4C524();
  v32 = v31;
  v34 = v33;
  v36 = v35;

LABEL_33:
  v55 = v13[20];
  swift_beginAccess();
  v26 = v13[48];
  if (v26 && (*(v26 + v27[262]) & 1) != 0)
  {
    v56 = v55;
    v57 = v26;
    v58 = sub_188B4C524();
    v60 = v59;
    v62 = v61;
    v64 = v63;

    v65.n128_u64[0] = v62;
    v66.n128_u64[0] = v64;
    v67.n128_u64[0] = v60;
    v68.n128_f64[0] = v58;
    goto LABEL_65;
  }

  swift_beginAccess();
  v37 = v13[50];
  if (v37 >> 62)
  {
    while (1)
    {
      v13 = sub_18A4A7F68();
      if (!v13)
      {
        goto LABEL_63;
      }

LABEL_38:
      v87 = v24;
      v88 = v1;
      v69 = v37 & 0xC000000000000001;
      v85 = (v37 + 32);
      v70 = v55;
      v71 = v26;

      if ((v37 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v72 = *v85;
        goto LABEL_41;
      }

LABEL_61:
      __break(1u);
    }

    v72 = sub_188E4A488(0, v37);
LABEL_41:
    v24 = &unk_1EA93E000;
    v1 = v72[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

    if (v1 > 9)
    {

      v73 = 0;
      goto LABEL_64;
    }

    v86 = v25;
    if (v13 == 1)
    {
      v25 = 0;
      if (!v69)
      {
        goto LABEL_58;
      }

LABEL_74:
      v77 = sub_188E4A488(v25, v37);
LABEL_60:
      v78 = v77;

      v73 = v78;
      sub_1891698A4();

      v25 = v86;
      goto LABEL_64;
    }

    v25 = 0;
    while (1)
    {
      v74 = v25 + 1;
      if (v69)
      {
        v75 = sub_188E4A488(v25 + 1, v37);
        v46 = __OFADD__(v74, 1);
        v76 = (v25 + 2);
        if (v46)
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (v74 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_61;
        }

        v75 = *(v37 + 8 * v25 + 40);
        v46 = __OFADD__(v74, 1);
        v76 = (v25 + 2);
        if (v46)
        {
LABEL_55:
          __break(1u);
LABEL_56:
          if (v69)
          {
            goto LABEL_74;
          }

          if ((v25 & 0x8000000000000000) == 0)
          {
LABEL_58:
            if (v25 < *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v77 = v85[v25];
              goto LABEL_60;
            }

LABEL_70:
            __break(1u);
          }

          __break(1u);
LABEL_72:
          v24 = v87;
          v1 = v88;
LABEL_73:
          v48 = sub_188E4A488(v25, v37);
LABEL_28:
          v49 = v48;
          v27 = &unk_1EA93E000;

          v43 = v49;
          sub_1891698A4();

          v25 = v86;
LABEL_32:

          v30 = CGRectMake();
          v32 = v52;
          v34 = v53;
          v36 = v54;
          goto LABEL_33;
        }
      }

      v1 = v75[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

      if (v1 < 0xA)
      {
        ++v25;
        if (v76 != v13)
        {
          continue;
        }
      }

      goto LABEL_56;
    }
  }

  v13 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
    goto LABEL_38;
  }

LABEL_63:
  v79 = v26;
  v80 = v55;
  v73 = 0;
LABEL_64:

  v68.n128_u64[0] = CGRectMake();
  v67.n128_u64[0] = v81;
  v65.n128_u64[0] = v82;
  v66.n128_u64[0] = v83;
  v56 = v55;
LABEL_65:
  v89(v25, v55, v30, v32, v34, v36, v68, v67, v65, v66);
}

void sub_188FF5DF4()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout);
  v2 = *(v1 + 152);
  v3 = *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout);
  v4 = v3[19];
  v5 = v4;
  v6 = v2;
  sub_18916764C();
  v7 = v2;
  v8 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x4C8);
  v8(v7, v4);

  v9 = *(v1 + 160);
  v10 = v3[20];
  swift_beginAccess();
  v11 = v3[48];
  if (v11 && *(v11 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_active) == 1)
  {
    v12 = v10;
    v13 = v11;
    v14 = v9;
    v15 = sub_188B4C524();
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v22.n128_u64[0] = v21;
    v23.n128_u64[0] = v19;
    v24.n128_u64[0] = v17;
    v25.n128_f64[0] = v15;
    goto LABEL_33;
  }

  swift_beginAccess();
  v26 = v3[50];
  if (v26 >> 62)
  {
    goto LABEL_30;
  }

  v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
LABEL_31:
    v41 = v11;
    v42 = v9;
    v43 = v10;
    v34 = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v46 = v8;
    v28 = v26 & 0xC000000000000001;
    v47 = (v26 + 32);
    v29 = v9;
    v30 = v10;
    v31 = v11;

    if ((v26 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v32 = *v47;
      goto LABEL_9;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    v27 = sub_18A4A7F68();
    if (!v27)
    {
      goto LABEL_31;
    }
  }

  v32 = sub_188E4A488(0, v26);
LABEL_9:
  v8 = &unk_1EA93E000;
  v33 = v32[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

  if (v33 > 9)
  {

    v34 = 0;
    v8 = v46;
    goto LABEL_32;
  }

  if (v27 == 1)
  {
    v35 = 0;
    v8 = v46;
    if (!v28)
    {
      goto LABEL_26;
    }

    goto LABEL_38;
  }

  v44 = v10;
  v45 = v9;
  v35 = 0;
  while (1)
  {
    v10 = (v35 + 1);
    if (!v28)
    {
      break;
    }

    v36 = sub_188E4A488(v35 + 1, v26);
    v37 = __OFADD__(v10, 1);
    v38 = v35 + 2;
    if (v37)
    {
      goto LABEL_23;
    }

LABEL_18:
    v9 = v36[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

    if (v9 < 0xA)
    {
      ++v35;
      if (v38 != v27)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v10 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

  v36 = *(v26 + 8 * v35 + 40);
  v37 = __OFADD__(v10, 1);
  v38 = v35 + 2;
  if (!v37)
  {
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  if (!v28)
  {
    v8 = v46;
    v10 = v44;
    v9 = v45;
    if ((v35 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
LABEL_26:
      if (v35 < *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v39 = v47[v35];
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  v8 = v46;
  v10 = v44;
  v9 = v45;
LABEL_38:
  v39 = sub_188E4A488(v35, v26);
LABEL_28:
  v40 = v39;

  v34 = v40;
  sub_1891698A4();

LABEL_32:
  v25.n128_f64[0] = CGRectMake();
  v14 = v9;
  v12 = v10;
LABEL_33:
  (v8)(v9, v10, v25, v24, v23, v22);
}

void sub_188FF6170(char a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout;
  }

  else
  {
    v3 = OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout;
  }

  v4 = *(v1 + v3);
  v5 = *(v4 + 80);
  if (v5 && *(v4 + 88))
  {
    [*(v5 + OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView) adoptLayout_];
  }

  v6 = *(v1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_contentView);
  if (v6)
  {
    v7 = v6;
    sub_188EBF07C();
  }

  v8 = *(v2 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_largeTitleView);
  if (v8)
  {
    v9 = *(v8 + OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView);

    [v9 clearTransitionContext];
  }
}

void sub_188FF6280(char *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = *&a1[*a4];
  v6 = *(v5 + 88);
  *(v5 + 88) = a3;
  v8 = a3;
  v7 = a1;

  sub_188B36AB8();
}

id sub_188FF62F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = objc_allocWithZone(v7);
  *&v15[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_twoPartAnimationBaseDuration] = 0;
  *&v15[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_twoPartAnimationOverlapDuration] = 0;
  *&v15[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_clippingViews] = 0;
  *&v15[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLargeTitleLayout] = 0;
  *&v15[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLargeTitleLayout] = 0;
  v15[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_largeTitleTransitionType] = 0;
  v16 = OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_navigationBar;
  *&v15[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_navigationBar] = 0;
  v15[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_isPushOperation] = 0;
  v15[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_compact] = 0;
  v15[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_usesBarBackground] = 0;
  v15[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_allowLargeTitles] = 0;
  v15[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_twoPart] = 0;
  *&v15[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_apiVersion] = 0;
  *&v15[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_backgroundAlpha] = 0;
  *&v15[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_promptView] = 0;
  *&v15[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_contentView] = 0;
  *&v15[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_backgroundView] = 0;
  *&v15[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_largeTitleView] = 0;
  *&v15[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_tabBarHostedView] = 0;
  v15[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_beginWithLargeTitle] = 0;
  v15[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_endWithLargeTitle] = 0;
  v15[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_beginWithTransparencyAllowed] = 0;
  v15[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_endWithTransparencyAllowed] = 0;
  v17 = &v15[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_startingContentOffsetForObservedScrollView];
  *v17 = 0;
  v17[1] = 0;
  v15[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_observedScrollViewOffsetIsApplicable] = 0;
  v15[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_sharesContentViewLayouts] = 0;
  *&v15[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_transitionOverlayView] = 0;
  *&v15[v16] = a1;
  *&v15[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_transition] = a2;
  *&v15[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_stack] = a3;
  *&v15[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout] = a4;
  *&v15[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout] = a5;
  v18 = &v15[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_completionHandler];
  *v18 = a6;
  v18[1] = a7;
  v21.receiver = v15;
  v21.super_class = v7;
  v19 = objc_msgSendSuper2(&v21, sel_init);

  return v19;
}

id sub_188FF6500(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v24 = _UILerp_1(a2, a3, a7);
  v25 = _UILerp_1(a2, a4, a8);
  v26 = _UILerp_1(a2, a5, a9);
  v27 = _UILerp_1(a2, a6, a10);

  return [a1 setFrame_];
}

void sub_188FF65CC(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_usesBarBackground) == 1)
  {
    [*(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_backgroundView) transitionBackgroundViews];
  }

  v2 = *(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_navigationBar);
  [v2 _updatePaletteBackgroundIfNecessary];
}

uint64_t sub_188FF6654(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  if (result)
  {
    v11 = result;
    v12 = objc_opt_self();
    v13 = *(a3 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_twoPartAnimationBaseDuration) + a6;
    v24 = v11;
    v25 = a2;
    v20 = MEMORY[0x1E69E9820];
    v21 = 1107296256;
    v22 = sub_188A4A8F0;
    v23 = &block_descriptor_112_1;
    v14 = _Block_copy(&v20);
    sub_188D738F4(v11);

    [v12 &selRef:v14 addInvisibleRange:{0.0, v13}];
    _Block_release(v14);
    result = sub_188A55B8C(v11);
  }

  if (a4)
  {
    v15 = objc_opt_self();
    v16 = *(a3 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_twoPartAnimationBaseDuration);
    v17 = v16 - a6;
    v18 = v16 + a6;
    v24 = a4;
    v25 = a5;
    v20 = MEMORY[0x1E69E9820];
    v21 = 1107296256;
    v22 = sub_188A4A8F0;
    v23 = &block_descriptor_68;
    v19 = _Block_copy(&v20);
    sub_188D738F4(a4);

    [v15 addKeyframeWithRelativeStartTime:v19 relativeDuration:v17 animations:v18];
    _Block_release(v19);
    return sub_188A55B8C(a4);
  }

  return result;
}

id sub_188FF684C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v1) = 1036831949;
  LODWORD(v2) = 0.75;
  LODWORD(v3) = 0.75;
  LODWORD(v4) = 1036831949;
  result = [v0 initWithControlPoints__:v2 :{v1, v3, v4}];
  qword_1EA9399A0 = result;
  return result;
}

id sub_188FF6898()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v1) = 1063675494;
  LODWORD(v2) = 0.25;
  LODWORD(v3) = 0.25;
  LODWORD(v4) = 1063675494;
  result = [v0 initWithControlPoints__:v2 :{v1, v3, v4}];
  qword_1EA9399A8 = result;
  return result;
}

uint64_t sub_188FF694C()
{
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_18A4A80E8();
  v8.receiver = v0;
  v8.super_class = type metadata accessor for NavigationBarTransitionContext();
  v1 = objc_msgSendSuper2(&v8, sel_description);
  v2 = sub_18A4A7288();
  v4 = v3;

  v9 = v2;
  v10 = v4;
  MEMORY[0x18CFE22D0](0x3D6D6F726620, 0xE600000000000000);
  v5 = sub_189168978();
  MEMORY[0x18CFE22D0](v5);

  MEMORY[0x18CFE22D0](1030714400, 0xE400000000000000);
  v6 = sub_189168978();
  MEMORY[0x18CFE22D0](v6);

  return v9;
}

id sub_188FF6A84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavigationBarTransitionContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_188FF6BF0()
{
  result = qword_1EA939B18;
  if (!qword_1EA939B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA939B18);
  }

  return result;
}

void sub_188FF6C44(void *a1, void *a2)
{
  if (*(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_sharesContentViewLayouts) == 1)
  {
    v4 = *(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_largeTitleView);
    if (!v4)
    {
LABEL_27:

      sub_1890D4E94(a2);
      return;
    }

    v5 = OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView;
    v6 = *&v4[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView];
    v7 = v4;
    v8 = [v6 layout];
    if (!v8)
    {
      v9 = *(*(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout) + 88);
      if (v9)
      {
        v10 = *(*(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout) + 88);
        v8 = v10;
      }

      else
      {
        v8 = *(*(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout) + 88);
        if (!v8)
        {
          [*&v4[v5] adoptNewLayout];
          v8 = [*&v4[v5] layout];
          goto LABEL_26;
        }

        v10 = v8;
        v9 = 0;
      }

      v31 = *&v4[v5];
      v32 = v9;
      [v31 adoptLayout_];
    }

LABEL_26:
    v33 = *(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout);
    v34 = *(v33 + 88);
    *(v33 + 88) = v8;
    v35 = v8;

    sub_188B36AB8();
    v36 = *(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLargeTitleLayout);
    *(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLargeTitleLayout) = v8;

    v37 = *(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout);
    v38 = *(v37 + 88);
    *(v37 + 88) = v8;
    v39 = v35;

    sub_188B36AB8();
    v40 = *(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLargeTitleLayout);
    *(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLargeTitleLayout) = v8;

    goto LABEL_27;
  }

  v11 = *(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout);
  v12 = v11[7];
  if (v12)
  {
    v13 = v12;
    sub_188EBEDE8();
    swift_unknownObjectWeakAssign();
    sub_188EBC308();
  }

  v14 = v11[10];
  if (v14)
  {
    v15 = v14;
    sub_189172E10(a1);
  }

  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x4F0))();
  v16 = v11[11];
  v17 = OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLargeTitleLayout;
  v18 = *(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLargeTitleLayout);
  *(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLargeTitleLayout) = v16;
  v19 = v16;

  v20 = *(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout);
  v21 = v20[7];
  if (v21)
  {
    v22 = v21;
    sub_188EBEF68();
  }

  v23 = v20[10];
  if (v23)
  {
    [*(v23 + OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView) prepareToRecordToState_];
  }

  sub_1890D4E94(a2);
  v24 = *(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_contentView);
  if (v24)
  {
    v25 = v24;
    sub_188EBDD14(1);
  }

  v26 = *(a1 + v17);
  if (v26)
  {
    [v26 setContentHidden_];
  }

  v27 = OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLargeTitleLayout;
  v28 = *(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLargeTitleLayout);
  if (v28)
  {
    [v28 setContentHidden_];
  }

  sub_189167C38(a1);
  v29 = v20[11];
  v41 = *(a1 + v27);
  *(a1 + v27) = v29;
  v30 = v29;
}

void sub_188FF6FC0(void *a1, char *a2, uint64_t a3)
{
  if (*(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_sharesContentViewLayouts) == 1)
  {
    v6 = *(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_largeTitleView);
    if (!v6)
    {
LABEL_27:

      sub_1890D520C(a2, a3);
      return;
    }

    v7 = OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView;
    v8 = *&v6[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView];
    v9 = v6;
    v10 = [v8 layout];
    if (!v10)
    {
      v11 = *(*(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout) + 88);
      if (v11)
      {
        v12 = *(*(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout) + 88);
        v10 = v12;
      }

      else
      {
        v10 = *(*(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout) + 88);
        if (!v10)
        {
          [*&v6[v7] adoptNewLayout];
          v10 = [*&v6[v7] layout];
          goto LABEL_26;
        }

        v12 = v10;
        v11 = 0;
      }

      v33 = *&v6[v7];
      v34 = v11;
      [v33 adoptLayout_];
    }

LABEL_26:
    v35 = *(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout);
    v36 = *(v35 + 88);
    *(v35 + 88) = v10;
    v37 = v10;

    sub_188B36AB8();
    v38 = *(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLargeTitleLayout);
    *(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLargeTitleLayout) = v10;

    v39 = *(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout);
    v40 = *(v39 + 88);
    *(v39 + 88) = v10;
    v41 = v37;

    sub_188B36AB8();
    v42 = *(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLargeTitleLayout);
    *(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLargeTitleLayout) = v10;

    goto LABEL_27;
  }

  v13 = *(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout);
  v14 = v13[7];
  if (v14)
  {
    v15 = v14;
    sub_188EBEDE8();
    swift_unknownObjectWeakAssign();
    sub_188EBC308();
  }

  v16 = v13[10];
  if (v16)
  {
    v17 = v16;
    sub_189172E10(a1);
  }

  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x4F0))();
  v18 = v13[11];
  v19 = OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLargeTitleLayout;
  v20 = *(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLargeTitleLayout);
  *(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLargeTitleLayout) = v18;
  v21 = v18;

  v22 = *(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout);
  v23 = v22[7];
  if (v23)
  {
    v24 = v23;
    sub_188EBEF68();
  }

  v25 = v22[10];
  if (v25)
  {
    [*(v25 + OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView) prepareToRecordToState_];
  }

  sub_1890D520C(a2, a3);
  v26 = *(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_contentView);
  if (v26)
  {
    v27 = v26;
    sub_188EBDD14(1);
  }

  v28 = *(a1 + v19);
  if (v28)
  {
    [v28 setContentHidden_];
  }

  v29 = OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLargeTitleLayout;
  v30 = *(a1 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLargeTitleLayout);
  if (v30)
  {
    [v30 setContentHidden_];
  }

  sub_189167C38(a1);
  v31 = v22[11];
  v43 = *(a1 + v29);
  *(a1 + v29) = v31;
  v32 = v31;
}

void *sub_188FF73A4(char a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 56);
  if (*(v7 + 16) && (v8 = sub_188A5E664(a1 & 1, a2, a3), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    v11 = v10;
  }

  else
  {
    v10 = 0;
  }

  swift_endAccess();
  return v10;
}

uint64_t sub_188FF7430()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v1);
  sub_18A4A7348();
  return sub_18A4A88E8();
}

uint64_t sub_188FF7494()
{
  MEMORY[0x18CFE37E0](*v0);

  return sub_18A4A7348();
}

uint64_t sub_188FF74E8()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v1);
  sub_18A4A7348();
  return sub_18A4A88E8();
}

uint64_t sub_188FF7548(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return sub_18A4A86C8();
  }
}

unint64_t sub_188FF75A4()
{
  result = qword_1EA939B20;
  if (!qword_1EA939B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA939B20);
  }

  return result;
}

void sub_188FF7624(double a1)
{
  v1 = 1.0;
  if (a1 <= 1.0)
  {
    v1 = a1;
  }

  v2 = v1 * 32.0;
  v3 = a1 > 0.0;
  v4 = 0.0;
  if (v3)
  {
    v4 = v2;
    if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_9;
    }
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
  }
}

uint64_t sub_188FF778C()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = _s12BackdropViewCMa();
  v2 = objc_msgSendSuper2(&v9, sel_description);
  v3 = sub_18A4A7288();
  v5 = v4;

  v10 = v3;
  v11 = v5;
  v6 = [v1 layer];
  objc_opt_self();
  LODWORD(v3) = [swift_dynamicCastObjCClassUnconditional() tracksLuma];

  if (v3)
  {
    MEMORY[0x18CFE22D0](0x746E657272756320, 0xEF203D20616D754CLL);
    if (*(v1 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView12BackdropView_currentLuma + 8))
    {
      MEMORY[0x18CFE22D0](0x6E776F6E6B6E753CLL, 0xE90000000000003ELL);
    }

    else
    {
      v7 = sub_18A4A76F8();
      MEMORY[0x18CFE22D0](v7);
    }
  }

  return v10;
}

id sub_188FF7A04()
{
  v2.receiver = v0;
  v2.super_class = _s12BackdropViewCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_188FF7A70(double a1)
{
  sub_188FF7624(a1);
  v3 = v1 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView12BackdropView_currentLuma;
  v4 = *(v1 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView12BackdropView_currentLuma);
  v5 = *(v1 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView12BackdropView_currentLuma + 8);
  *v3 = v2;
  *(v3 + 8) = 0;
  v6 = *(v1 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView12BackdropView_lumaDidChangeHandler);
  if (v6 && v5 & 1 | (v2 != v4))
  {
    v7 = v2;

    v6(v8, v7);

    sub_188A55B8C(v6);
  }
}

unint64_t sub_188FF7B1C()
{
  result = qword_1ED48EC00;
  if (!qword_1ED48EC00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED48EC00);
  }

  return result;
}

uint64_t sub_188FF7B68()
{
  v1 = [v0 layer];
  v2 = [*&v0[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView9DebugView_debugColor] CGColor];
  [v1 setBorderColor_];

  v3 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView9DebugView_pocketMaskPortal;
  swift_beginAccess();
  sub_188A3F29C(&v0[v3], v8, &qword_1EA939B70);
  if (v9)
  {
    sub_188A3F29C(v8, v6, &qword_1EA939B78);
    sub_188A3F5FC(v8, &qword_1EA939B70);
    v4 = v7;
    sub_188A3F5FC(v6, &qword_1EA939B78);
  }

  else
  {
    sub_188A3F5FC(v8, &qword_1EA939B70);
    v4 = 0;
  }

  return sub_188FF7D10(v4);
}

uint64_t sub_188FF7D10(uint64_t a1)
{
  v4 = sub_188FF7CB0();
  if (*(v3 + 16))
  {
    v5 = v3;
    v6 = *(v3 + 24);
    if (v6)
    {
      [v6 removeFromSuperview];
      v7 = *(v5 + 24);
      *(v5 + 24) = 0;
    }

    (v4)(&v10, 0);
    if (a1)
    {
      goto LABEL_5;
    }

LABEL_7:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_8;
  }

  (v4)(&v10, 0);
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_5:
  *(&v11 + 1) = 0;
  swift_unknownObjectUnownedInit();
  *(&v10 + 1) = 0;
  *&v11 = a1;
LABEL_8:
  v8 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView9DebugView_pocketMaskPortal;
  swift_beginAccess();
  sub_188FF89C4(&v10, v1 + v8);
  return swift_endAccess();
}

void sub_188FF7E08(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView9DebugView_overlays] = MEMORY[0x1E69E7CC0];
  v9 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView9DebugView_bar;
  *&v4[v9] = [objc_allocWithZone(UIView) init];
  v10 = &v4[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView9DebugView_barRect];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v10[32] = 1;
  v11 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView9DebugView_lumaLabel;
  *&v4[v11] = [objc_allocWithZone(UILabel) init];
  v12 = &v4[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView9DebugView_luma];
  *(v12 + 4) = 0;
  *v12 = 0u;
  *(v12 + 1) = 0u;
  v12[40] = 1;
  v13 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView9DebugView_debugColor;
  v14 = objc_opt_self();
  *&v4[v13] = [v14 redColor];
  v15 = &v4[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView9DebugView_pocketMaskPortal];
  v16 = _s9DebugViewCMa();
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v46.receiver = v4;
  v46.super_class = v16;
  v17 = objc_msgSendSuper2(&v46, sel_initWithFrame_, a1, a2, a3, a4);
  v18 = _UIShowPocketMask();
  if (qword_1EA931E00 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for ScrollEdgeEffectView.Params(0);
  if (!(v18 | ((*__swift_project_value_buffer(v19, qword_1EA995128) & 1) == 0)))
  {
    v20 = v17;
    v21 = [v20 layer];
    [v21 setBorderWidth_];

    v22 = [v20 layer];
    v23 = [v14 redColor];
    v24 = [v23 CGColor];

    [v22 setBorderColor_];
    v25 = [v20 layer];
    v26 = [*&v20[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView9DebugView_debugColor] CGColor];
    [v25 setBorderColor_];

    v27 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView9DebugView_bar;
    v28 = *&v20[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView9DebugView_bar];
    v29 = [v14 cyanColor];
    v30 = [v29 colorWithAlphaComponent_];

    [v28 setBackgroundColor_];
    [v20 addSubview_];
    v31 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView9DebugView_lumaLabel;
    [*&v20[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView9DebugView_lumaLabel] setTranslatesAutoresizingMaskIntoConstraints_];
    v32 = *&v20[v31];
    v33 = [v14 blackColor];
    [v32 setTextColor_];

    v34 = *&v20[v31];
    v35 = [v14 whiteColor];
    [v34 setBackgroundColor_];

    [v20 addSubview_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_18A64E3F0;
    v37 = [*&v20[v31] centerXAnchor];
    v38 = [v20 safeAreaLayoutGuide];

    if (v38)
    {
      v39 = objc_opt_self();
      v40 = [v38 centerXAnchor];

      v41 = [v37 constraintEqualToAnchor_];
      *(v36 + 32) = v41;
      v42 = [*&v20[v31] topAnchor];
      v43 = [*&v20[v27] bottomAnchor];
      v44 = [v42 constraintEqualToAnchor:v43 constant:8.0];

      *(v36 + 40) = v44;
      sub_188A34624(0, &qword_1ED48CFF0);
      v45 = sub_18A4A7518();

      [v39 activateConstraints_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_188FF83B0()
{
  v1 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView9DebugView_overlays;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_18A4A7F68())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_188E49300(v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [v5 removeFromSuperview];

      ++v4;
      if (v7 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_12:

  *(v0 + v1) = MEMORY[0x1E69E7CC0];
}

id sub_188FF84D4()
{
  v12.receiver = v0;
  v12.super_class = _s9DebugViewCMa();
  objc_msgSendSuper2(&v12, sel_layoutSubviews);
  v2 = sub_188FF7CB0();
  if (*(v1 + 16))
  {
    sub_188FFF5D4(v1);
  }

  (v2)(v10, 0);
  v3 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView9DebugView_pocketMaskPortal;
  swift_beginAccess();
  sub_188A3F29C(&v0[v3], v10, &qword_1EA939B70);
  if (v11)
  {
    sub_188A3F29C(v10, v8, &qword_1EA939B78);
    sub_188A3F5FC(v10, &qword_1EA939B70);
    if (v9)
    {
      v4 = v9;
      sub_188FF8628(v4, v0);
    }

    v5 = &qword_1EA939B78;
    v6 = v8;
  }

  else
  {
    v5 = &qword_1EA939B70;
    v6 = v10;
  }

  sub_188A3F5FC(v6, v5);
  return [v0 bringSubviewToFront_];
}

void sub_188FF8628(void *a1, uint64_t a2)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v4 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v28 = 1.0;
  v29[0] = 1.0;
  v26 = 1.0;
  v27 = 1.0;
  [*(a2 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView9DebugView_debugColor) getRed:v29 green:&v28 blue:&v27 alpha:&v26];
  v5 = v29[0];
  v6 = v28;
  v7 = v27;
  v8 = v26;
  v14[0] = 0;
  v14[1] = 0;
  v15 = v5;
  v17 = 0;
  v16 = 0;
  v18 = v6;
  v19 = 0;
  v20 = 0;
  v21 = v7;
  v23 = 0;
  v22 = 0;
  v24 = v8;
  v25 = 0;
  v9 = [objc_opt_self() valueWithCAColorMatrix_];
  [v4 setValue:v9 forKey:*MEMORY[0x1E6979AC0]];

  v10 = [a1 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_18A64BFB0;
  *(v11 + 56) = sub_188A34624(0, &qword_1ED48EE50);
  *(v11 + 32) = v4;
  v12 = v4;
  v13 = sub_18A4A7518();

  [v10 setFilters_];
}

id sub_188FF88EC()
{
  v2.receiver = v0;
  v2.super_class = _s9DebugViewCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_188FF89C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939B70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_188FF8A34()
{
  *(v0 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView9DebugView_overlays) = MEMORY[0x1E69E7CC0];
  v1 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView9DebugView_bar;
  *(v0 + v1) = [objc_allocWithZone(UIView) init];
  v2 = v0 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView9DebugView_barRect;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 1;
  v3 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView9DebugView_lumaLabel;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = v0 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView9DebugView_luma;
  *(v4 + 32) = 0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 40) = 1;
  v5 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView9DebugView_debugColor;
  *(v0 + v5) = [objc_opt_self() redColor];
  v6 = (v0 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView9DebugView_pocketMaskPortal);
  *v6 = 0u;
  v6[1] = 0u;
  sub_18A4A8398();
  __break(1u);
}

double sub_188FF8B68()
{
  v1 = &v0[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_captureColorLuminance];
  if ((v0[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_captureColorLuminance + 8] & 1) == 0)
  {
    return *v1;
  }

  v1 = (*&v0[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_backgroundReplay] + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView12BackdropView_currentLuma);
  if ((v1[8] & 1) == 0)
  {
    return *v1;
  }

  v2 = *&v0[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_preferredUserInterfaceStyle];
  if (v2)
  {
    v3 = v2 == 2;
  }

  else
  {
    v5 = [v0 traitCollection];
    v6 = [v5 userInterfaceStyle];

    v3 = v6 == 2;
  }

  result = 1.0;
  if (v3)
  {
    return 0.0;
  }

  return result;
}

void sub_188FF8C48()
{
  v1 = *(v0 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_captureColor);
  if (v1)
  {
    v2 = v1;
    [v2 _luminance];
    v3 = v0 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_captureColorLuminance;
    *v3 = v4;
    *(v3 + 8) = 0;
    v5 = *(v0 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_backgroundReplay);
    [v5 setBackgroundColor_];
    v6 = [v5 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEnabled_];

    v7 = [v5 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setTracksLuma_];

    v8 = [v5 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setAllowsFilteredLuma_];

    v9 = &v5[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView12BackdropView_currentLuma];
    *v9 = 0;
    v9[8] = 1;
  }

  else
  {
    v10 = v0 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_captureColorLuminance;
    *v10 = 0;
    *(v10 + 8) = 1;
    v11 = *(v0 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_backgroundReplay);
    [v11 setBackgroundColor_];
    v12 = [v11 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEnabled_];

    v13 = [v11 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setTracksLuma_];

    v14 = [v11 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setAllowsFilteredLuma_];
  }
}

uint64_t sub_188FF8F8C(uint64_t a1)
{
  v4 = sub_188FF8F2C();
  if (*(v3 + 16))
  {
    v5 = v3;
    v6 = *(v3 + 24);
    if (v6)
    {
      [v6 removeFromSuperview];
      v7 = *(v5 + 24);
      *(v5 + 24) = 0;
    }

    (v4)(&v10, 0);
    if (a1)
    {
      goto LABEL_5;
    }

LABEL_7:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_8;
  }

  (v4)(&v10, 0);
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_5:
  *(&v11 + 1) = 0;
  swift_unknownObjectUnownedInit();
  *(&v10 + 1) = 0;
  *&v11 = a1;
LABEL_8:
  v8 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_pocketMaskPortal;
  swift_beginAccess();
  sub_188FF89C4(&v10, v1 + v8);
  return swift_endAccess();
}

char *sub_188FF9084(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v55[0] = swift_getObjectType();
  v10 = type metadata accessor for ScrollEdgeEffectView.Params(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_preferredUserInterfaceStyle] = 0;
  v13 = &v5[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_backgroundGroupName];
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  *&v5[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_backgroundScale] = 0;
  v14 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_backgroundReplay;
  _s12BackdropViewCMa();
  *&v5[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_darkeningView;
  *&v5[v15] = [objc_allocWithZone(UIView) init];
  v16 = &v5[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_parameters];
  *(v16 + 28) = 0u;
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 6) = 0;
  *(v16 + 7) = 0;
  v17 = &v5[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_lumaStyle];
  *v17 = 0;
  *(v17 + 1) = 0;
  v17[16] = 1;
  v5[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_useHardEdges] = 0;
  v5[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_useHeavyReplay] = 0;
  v5[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_enableDimming] = 1;
  v5[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_prefersSolidColorHardPocket] = 0;
  *&v5[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_captureColor] = 0;
  v18 = &v5[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_captureColorLuminance];
  *v18 = 0;
  v18[8] = 1;
  v19 = &v5[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_pocketMaskPortal];
  *v19 = 0u;
  v19[1] = 0u;
  v5[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_showingBackgroundReplay] = 1;
  *&v5[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_scrollVelocity] = 0;
  v5[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_hasFloatingElements] = 0;
  v20 = &v5[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_alphaValues];
  v21 = _s19LuminanceAdjustmentCMa();
  *v20 = 0;
  v20[1] = 0;
  v58.receiver = v5;
  v58.super_class = v21;
  v22 = objc_msgSendSuper2(&v58, sel_initWithFrame_, a1, a2, a3, a4);
  v23 = qword_1EA931E00;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v10, qword_1EA995128);
  sub_188FFA2B0(v25, v12);
  v26 = &v12[*(v10 + 84)];
  v27 = &v24[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_parameters];
  v28 = *(v26 + 3);
  v29 = *v26;
  v30 = *(v26 + 1);
  *(v27 + 2) = *(v26 + 2);
  *(v27 + 3) = v28;
  *v27 = v29;
  *(v27 + 1) = v30;
  v56 = 0;
  v57 = 0xE000000000000000;
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000010, 0x800000018A69E2D0);
  v55[7] = v24;
  sub_18A4A82D8();
  v31 = v57;
  v32 = &v24[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_backgroundGroupName];
  *v32 = v56;
  *(v32 + 1) = v31;

  *&v24[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_backgroundScale] = *(v12 + 1);
  v33 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_backgroundReplay;
  [v24 addSubview_];
  v34 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_darkeningView;
  [v24 addSubview_];
  v35 = *&v24[v33];
  sub_188FF9B44(v35);

  v36 = objc_opt_self();
  v37 = [v36 systemBackgroundColor];
  v38 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_captureColor;
  v39 = *&v24[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_captureColor];
  *&v24[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_captureColor] = v37;

  v40 = *&v24[v33];
  v41 = [v40 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEnabled_];

  v42 = *&v24[v33];
  v43 = [v42 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setTracksLuma_];

  v44 = [v42 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setAllowsFilteredLuma_];

  v45 = &v42[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView12BackdropView_currentLuma];
  *v45 = 0;
  v45[8] = 1;
  v46 = *&v42[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView12BackdropView_lumaDidChangeHandler];
  sub_188A52E38(v46);

  if (v46)
  {
    sub_188A55B8C(v46);
  }

  [*&v24[v33] setBackgroundColor_];
  [*&v24[v33] setAlpha_];
  v47 = *&v24[v33];
  v48 = sub_18A4A7258();
  [v47 _setIdentifier_];

  v49 = *&v24[v34];
  v50 = [v36 blackColor];
  [v49 setBackgroundColor_];

  [*&v24[v34] setAlpha_];
  v51 = *&v24[v34];
  v52 = sub_18A4A7258();
  [v51 _setIdentifier_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFB0;
  *(inited + 32) = &type metadata for UITraitUserInterfaceStyle;
  *(inited + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges<A>(_:handler:)(inited, sub_188FFA370, 0, v55[0]);
  swift_unknownObjectRelease();
  swift_setDeallocating();
  sub_188FFA314(v12);

  return v24;
}

uint64_t sub_188FF973C()
{
  v1 = type metadata accessor for ScrollEdgeEffectView.Params(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v25[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v4 = _s19LuminanceAdjustmentCMa();
  v29.receiver = v0;
  v29.super_class = v4;
  objc_msgSendSuper2(&v29, sel_layoutSubviews);
  v5 = *&v0[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_backgroundReplay];
  [v0 bounds];
  [v5 setFrame_];
  v6 = *&v0[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_darkeningView];
  [v0 bounds];
  [v6 setFrame_];
  sub_188FF9CF8();
  if (v0[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_useHardEdges] == 1)
  {
    v8 = sub_188FF8F2C();
    if (*(v7 + 16))
    {
      v9 = v7;
      v10 = *(v7 + 24);
      if (v10)
      {
        [v10 removeFromSuperview];
        v11 = *(v9 + 24);
        *(v9 + 24) = 0;
      }
    }

    return (v8)(v27, 0);
  }

  else
  {
    v14 = sub_188FF8F2C();
    if (*(v13 + 16))
    {
      sub_188FFF5D4(v13);
    }

    (v14)(v27, 0);
    v15 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_pocketMaskPortal;
    swift_beginAccess();
    sub_188A3F29C(&v0[v15], v27, &qword_1EA939B70);
    if (v28)
    {
      sub_188A3F29C(v27, v25, &qword_1EA939B78);
      sub_188A3F5FC(v27, &qword_1EA939B70);
      if (v26)
      {
        v16 = v26;
        v17 = [v16 layer];
        [v17 setCompositingFilter_];

        if (qword_1EA931E00 != -1)
        {
          swift_once();
        }

        v18 = __swift_project_value_buffer(v1, qword_1EA995128);
        sub_188FFA2B0(v18, v3);
        if (*(v3 + 88) == 1)
        {
          v19 = [v16 layer];
          v20 = v3[12];
          [v19 setShouldRasterize_];

          v21 = [v16 layer];
          [v21 setRasterizationScale_];
        }

        sub_188FFA314(v3);
      }

      v22 = &qword_1EA939B78;
      v23 = v25;
    }

    else
    {
      v22 = &qword_1EA939B70;
      v23 = v27;
    }

    return sub_188A3F5FC(v23, v22);
  }
}

void sub_188FF9B44(void *a1)
{

  v3 = [a1 layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClassUnconditional();
  v5 = sub_18A4A7258();

  [v4 setGroupName_];

  v6 = *(v1 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_backgroundScale);
  v7 = [a1 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setScale_];

  v8 = [a1 layer];
  objc_opt_self();
  v9 = swift_dynamicCastObjCClassUnconditional();
  v10 = sub_18A4A7518();
  [v9 setFilters_];
}

void sub_188FF9CF8()
{
  if (v0[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_useHardEdges] == 1)
  {
    v0[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_showingBackgroundReplay] = 1;
    v1 = 0.9;
    if (v0[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_prefersSolidColorHardPocket])
    {
      v1 = 1.0;
    }

    v2 = 0;
    goto LABEL_13;
  }

  if ((v0[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_useHeavyReplay] & 1) != 0 || (v0[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_enableDimming] & 1) == 0)
  {
    goto LABEL_12;
  }

  v3 = [v0 traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (*&v0[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_scrollVelocity] < 0.15 || v0[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_showingBackgroundReplay] == 1)
  {
    v5 = sub_188FF8B68();
    v6 = _UIClamp_2(v5);
    v7 = &v0[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_parameters];
    if (v4 == 1)
    {
      v8 = *v7 * v6;
      v9 = v7[1] * v6;
      if (v8 > v9)
      {
        __break(1u);
LABEL_12:
        v0[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_showingBackgroundReplay] = 1;
        v2 = 0;
        v1 = 0.85;
        goto LABEL_13;
      }
    }

    else
    {
      v13 = (1.0 - v6) * v7[2];
      v8 = v13 + v6;
      v14 = (1.0 - v6) * v7[3];
      v9 = v14 + v6;
      if ((v13 + v6) > (v14 + v6))
      {
        __break(1u);
        return;
      }
    }

    v15 = &v0[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_lumaStyle];
    if (v0[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_lumaStyle + 16])
    {
      v16 = [v0 traitCollection];
      v17 = [v16 userInterfaceStyle];

      if (v17 == 2)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = 1.0;
      }

      v19 = v18 < v8;
      if (v15[4])
      {
        v20 = [v0 traitCollection];
        v21 = [v20 userInterfaceStyle];

        if (v21 == 2)
        {
          v22 = 0.0;
        }

        else
        {
          v22 = 1.0;
        }
      }

      else
      {
        v22 = *v15;
      }
    }

    else
    {
      v22 = *v15;
      v19 = v8 > *v15;
    }

    if (v0[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_showingBackgroundReplay])
    {
      v23 = v9 < v22;
      if (v4 == 1)
      {
        v23 = v19;
      }

      if (!v23)
      {
        goto LABEL_37;
      }

      v24 = 0;
    }

    else
    {
      v25 = v9 < v22;
      if (v4 != 1)
      {
        v25 = v19;
      }

      if (!v25)
      {
        goto LABEL_37;
      }

      v24 = 1;
    }

    v0[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_showingBackgroundReplay] = v24;
  }

LABEL_37:
  if (v4 == 1)
  {
    v1 = sub_188FF9FE8(v0);
  }

  else
  {
    v1 = sub_188FFA094(v0);
  }

LABEL_13:
  v10 = &v0[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_alphaValues];
  *v10 = v1;
  *(v10 + 1) = v2;
  [*&v0[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_backgroundReplay] setAlpha_];
  v11 = *&v0[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_darkeningView];
  v12 = v10[1];

  [v11 setAlpha_];
}

double sub_188FF9FE8(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_showingBackgroundReplay))
  {
    return *(a1 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_parameters + 48);
  }

  if ((*(a1 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_lumaStyle + 16) & 1) == 0 && *(a1 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_lumaStyle + 8) == 2 && *(a1 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_preferredUserInterfaceStyle) == 2)
  {
    return 0.0;
  }

  return 0.0;
}

double sub_188FFA094(_BYTE *a1)
{
  if (a1[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_showingBackgroundReplay] == 1)
  {
    return *&a1[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_parameters + 56];
  }

  v2 = &a1[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_lumaStyle];
  if (a1[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_lumaStyle + 16])
  {
    v3 = a1;
    v4 = [a1 traitCollection];
    v5 = [v4 userInterfaceStyle];

    a1 = v3;
    v6 = 1.0;
    if (v5 == 2)
    {
      v6 = 0.0;
    }

    goto LABEL_12;
  }

  if (v2[1] != 1)
  {
    LODWORD(v6) = *v2;
LABEL_12:
    v7 = &a1[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_parameters];
    if (*&a1[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_parameters + 40] >= v6)
    {
      return v7[3];
    }

    else
    {
      return v7[4];
    }
  }

  result = 0.1;
  if (a1[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_hasFloatingElements])
  {
    return 0.3;
  }

  return result;
}

id sub_188FFA1B4()
{
  v2.receiver = v0;
  v2.super_class = _s19LuminanceAdjustmentCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_188FFA2B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScrollEdgeEffectView.Params(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_188FFA314(uint64_t a1)
{
  v2 = type metadata accessor for ScrollEdgeEffectView.Params(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_188FFA394()
{
  *(v0 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_preferredUserInterfaceStyle) = 0;
  v1 = (v0 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_backgroundGroupName);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_backgroundScale) = 0;
  v2 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_backgroundReplay;
  _s12BackdropViewCMa();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_darkeningView;
  *(v0 + v3) = [objc_allocWithZone(UIView) init];
  v4 = v0 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_parameters;
  *(v4 + 28) = 0u;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  v5 = v0 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_lumaStyle;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  *(v0 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_useHardEdges) = 0;
  *(v0 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_useHeavyReplay) = 0;
  *(v0 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_enableDimming) = 1;
  *(v0 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_prefersSolidColorHardPocket) = 0;
  *(v0 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_captureColor) = 0;
  v6 = v0 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_captureColorLuminance;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (v0 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_pocketMaskPortal);
  *v7 = 0u;
  v7[1] = 0u;
  *(v0 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_showingBackgroundReplay) = 1;
  *(v0 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_scrollVelocity) = 0;
  *(v0 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_hasFloatingElements) = 0;
  v8 = (v0 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_alphaValues);
  *v8 = 0;
  v8[1] = 0;
  sub_18A4A8398();
  __break(1u);
}

uint64_t sub_188FFA594(uint64_t a1)
{
  v4 = sub_188FFA534();
  if (*(v3 + 16))
  {
    v5 = v3;
    v6 = *(v3 + 24);
    if (v6)
    {
      [v6 removeFromSuperview];
      v7 = *(v5 + 24);
      *(v5 + 24) = 0;
    }

    (v4)(&v10, 0);
    if (a1)
    {
      goto LABEL_5;
    }

LABEL_7:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_8;
  }

  (v4)(&v10, 0);
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_5:
  *(&v11 + 1) = 0;
  swift_unknownObjectUnownedInit();
  *(&v10 + 1) = 0;
  *&v11 = a1;
LABEL_8:
  v8 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketBlur_pocketMaskPortal;
  swift_beginAccess();
  sub_188FF89C4(&v10, v1 + v8);
  return swift_endAccess();
}

void sub_188FFA68C(float a1)
{
  v2 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketBlur_blurAttenuation;
  v3 = *(v1 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketBlur_blurAttenuation);
  *(v1 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketBlur_blurAttenuation) = a1;
  if (v3 != a1)
  {
    v4 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketBlur_pocketMaskPortal;
    swift_beginAccess();
    sub_188A3F29C(v1 + v4, v29, &qword_1EA939B70);
    if (v30)
    {
      sub_188A3F29C(v29, v27, &qword_1EA939B78);
      sub_188A3F5FC(v29, &qword_1EA939B70);
      if (v28)
      {
        v5 = v28;
        v6 = [v5 layer];
        v7 = *(v1 + v2);
        if (v7 <= 1.0)
        {
          v12 = sub_18A4A7518();
          [v6 setFilters_];
        }

        else
        {
          v8 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
          v15 = 1065353216;
          v17 = 0;
          v16 = 0;
          v18 = 0x3F80000000000000;
          v20 = 0;
          v19 = 0;
          v21 = 0x3F80000000000000;
          v23 = 0;
          v22 = 0;
          v24 = 0;
          v25 = v7;
          v26 = 1.0 - v7;
          v9 = [objc_opt_self() valueWithCAColorMatrix_];
          [v8 setValue:v9 forKey:*MEMORY[0x1E6979AC0]];

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
          v10 = swift_allocObject();
          *(v10 + 16) = xmmword_18A64BFB0;
          *(v10 + 56) = sub_188B0F668();
          *(v10 + 32) = v8;
          v11 = v8;
          v12 = sub_18A4A7518();

          [v6 setFilters_];
        }
      }

      v13 = &qword_1EA939B78;
      v14 = v27;
    }

    else
    {
      v13 = &qword_1EA939B70;
      v14 = v29;
    }

    sub_188A3F5FC(v14, v13);
  }
}

id sub_188FFA928(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketBlur_useHardEdges] = 0;
  v9 = &v4[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketBlur_pocketMaskPortal];
  *v9 = 0u;
  v9[1] = 0u;
  *&v4[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketBlur_blurAttenuation] = 1065353216;
  v4[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketBlur_blurEnabled] = 1;
  v13.receiver = v4;
  v13.super_class = _s10PocketBlurCMa();
  v10 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = [v10 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setTracksLumaWhileHidden_];

  sub_188FFAE38();
  return v10;
}

void sub_188FFABB0(void *a1, uint64_t a2)
{
  v10 = [a1 layer];
  v3 = *(a2 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketBlur_blurAttenuation);
  if (v3 <= 1.0)
  {
    v9 = sub_18A4A7518();
    [v10 setFilters_];
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    v11 = 1065353216;
    v13 = 0;
    v12 = 0;
    v14 = 0x3F80000000000000;
    v16 = 0;
    v15 = 0;
    v17 = 0x3F80000000000000;
    v19 = 0;
    v18 = 0;
    v20 = 0;
    v21 = v3;
    v22 = 1.0 - v3;
    v5 = [objc_opt_self() valueWithCAColorMatrix_];
    [v4 setValue:v5 forKey:*MEMORY[0x1E6979AC0]];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18A64BFB0;
    *(v6 + 56) = sub_188B0F668();
    *(v6 + 32) = v4;
    v7 = v4;
    v8 = sub_18A4A7518();

    [v10 setFilters_];
  }
}

uint64_t sub_188FFAE38()
{
  v1 = type metadata accessor for ScrollEdgeEffectView.Params(0);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v40[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (qword_1EA931E00 != -1)
  {
    v38 = v2;
    swift_once();
    v2 = v38;
  }

  v5 = __swift_project_value_buffer(v2, qword_1EA995128);
  sub_188FFA2B0(v5, v4);
  v6 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketBlur_useHardEdges;
  v7 = 5;
  if (v0[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketBlur_useHardEdges])
  {
    v7 = 7;
  }

  v8 = 6;
  if (v0[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketBlur_useHardEdges])
  {
    v8 = 8;
  }

  v9 = LOBYTE(v4[v8]);
  v10 = v4[v7];
  v12 = sub_188FFA534();
  if (*(v11 + 16))
  {
    v13 = *(v11 + 24);
    if (v13)
    {
      [v13 setHidden_];
    }
  }

  (v12)(v42, 0);
  if (v0[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketBlur_blurEnabled] == 1 && (v14 = sub_18902F8E4(v10)) != 0)
  {
    v15 = v14;
    if (v0[v6] == 1)
    {
      v17 = sub_188FFA534();
      if (*(v16 + 16))
      {
        v18 = v16;
        v19 = *(v16 + 24);
        if (v19)
        {
          [v19 removeFromSuperview];
          v20 = *(v18 + 24);
          *(v18 + 24) = 0;
        }
      }

      (v17)(v42, 0);
    }

    else
    {
      v25 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketBlur_pocketMaskPortal;
      swift_beginAccess();
      sub_188A3F29C(&v0[v25], v42, &qword_1EA939B70);
      if (v43)
      {
        sub_188A3F29C(v42, v40, &qword_1EA939B78);
        sub_188A3F5FC(v42, &qword_1EA939B70);
        if (v41)
        {
          v26 = v41;
          sub_188FFB480(v26, v9, v4);
        }

        v27 = &qword_1EA939B78;
        v28 = v40;
      }

      else
      {
        v27 = &qword_1EA939B70;
        v28 = v42;
      }

      sub_188A3F5FC(v28, v27);
    }

    if (v9)
    {
      v29 = sub_18A4A7258();
      [v15 setValue:v29 forKey:*MEMORY[0x1E6979C10]];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_18A64BFB0;
    *(v30 + 56) = sub_188B0F668();
    *(v30 + 32) = v15;
    v31 = v15;
    v32 = [v0 layer];
    objc_opt_self();
    v33 = swift_dynamicCastObjCClassUnconditional();
    v34 = sub_18A4A7518();

    [v33 setFilters_];

    v35 = v4[3];
    v36 = [v0 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setScale_];

    [v0 setHidden_];
  }

  else
  {
    v21 = [v0 layer];
    objc_opt_self();
    v22 = swift_dynamicCastObjCClassUnconditional();
    v23 = sub_18A4A7518();
    [v22 setFilters_];

    v24 = [v0 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setScale_];

    [v0 setHidden_];
  }

  return sub_188FFA314(v4);
}

id sub_188FFB3F4()
{
  v2.receiver = v0;
  v2.super_class = _s10PocketBlurCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_188FFB480(void *a1, char a2, uint64_t a3)
{
  v6 = [a1 layer];
  v7 = v6;
  if (a2)
  {
    v8 = sub_18A4A7258();
    [v7 setName_];

    v7 = v8;
  }

  else
  {
    [v6 setCompositingFilter_];
  }

  if (*(a3 + 88) == 1)
  {
    v9 = [a1 layer];
    v10 = *(a3 + 96);
    [v9 setShouldRasterize_];

    v11 = [a1 layer];
    [v11 setRasterizationScale_];
  }
}

uint64_t sub_188FFB5E8(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_188E6D154(0, v2, 0);
    v4 = v31;
    v5 = v1 + 64;
    result = sub_18A4A7EC8();
    v6 = result;
    v7 = 0;
    v25 = v1 + 72;
    v26 = v2;
    v27 = v1 + 64;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      v28 = v7;
      v29 = *(v1 + 36);
      sub_188FA952C(*(v1 + 56) + 32 * v6, v30);
      swift_unknownObjectWeakLoadStrong();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939C48);
      v10 = sub_18A4A7D18();
      v12 = v11;
      swift_unknownObjectRelease();
      result = sub_188FFD074(v30);
      v13 = v4;
      v31 = v4;
      v14 = v1;
      v16 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_188E6D154((v15 > 1), v16 + 1, 1);
        v13 = v31;
      }

      *(v13 + 16) = v16 + 1;
      v17 = v13 + 16 * v16;
      *(v17 + 32) = v10;
      *(v17 + 40) = v12;
      v8 = 1 << *(v14 + 32);
      if (v6 >= v8)
      {
        goto LABEL_23;
      }

      v5 = v27;
      v18 = *(v27 + 8 * v9);
      if ((v18 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v14;
      v4 = v13;
      if (v29 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v19 = v18 & (-2 << (v6 & 0x3F));
      if (v19)
      {
        v8 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v9 << 6;
        v21 = v9 + 1;
        v22 = (v25 + 8 * v9);
        while (v21 < (v8 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_188FFD0A4(v6, v29, 0);
            v8 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = sub_188FFD0A4(v6, v29, 0);
      }

LABEL_4:
      v7 = v28 + 1;
      v6 = v8;
      if (v28 + 1 == v26)
      {
        return v4;
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

void *sub_188FFB85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_unknownObjectUnownedInit();
  v5 = *MEMORY[0x1E695F050];
  v46 = *(MEMORY[0x1E695F050] + 16);
  v45 = v5;
  v35 = *(v2 + 8);
  v36 = *(v2 + 10);
  result = swift_unknownObjectUnownedLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = result;
  [result convertRect:a1 toCoordinateSpace:{*(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40)}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v37 = v9;
  v38 = v11;
  v39 = v13;
  v40 = v15;
  result = swift_unknownObjectUnownedLoadStrong();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v16 = result;
  [result convertRect:a1 toCoordinateSpace:{*(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72)}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v41 = v18;
  v42 = v20;
  v43 = v22;
  v44 = v24;
  result = swift_unknownObjectUnownedLoadStrong();
  if (result)
  {
    v25 = result;
    [result convertRect:a1 toCoordinateSpace:{*(v2 + 112), *(v2 + 120), *(v2 + 128), *(v2 + 136)}];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v47 = v27;
    v48 = v29;
    v49 = v31;
    v50 = v33;
    v51 = *(v2 + 144);
    sub_188FFCFD8(v34, a2);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_188FFB9C8(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v4 + 16) && (v5 = sub_188A403F4(a1), (v6 & 1) != 0))
  {
    sub_188FA952C(*(v4 + 56) + 32 * v5, &v9);
    sub_188FFD0B0(&v9);
    return 0;
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    sub_188FFD0B0(&v9);
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    v7 = 1;
    *(v2 + 64) = 1;
    swift_unknownObjectWeakInit();
    *(&v10 + 1) = [objc_allocWithZone(_UIScrollPocketElementFrameCache) init];
    *&v9 = a1;
    swift_unknownObjectWeakAssign();
    *&v10 = [a1 _style];
    swift_beginAccess();
    sub_188F28D18(&v9, a1);
    swift_endAccess();
  }

  return v7;
}

uint64_t sub_188FFBAE8(uint64_t a1)
{
  swift_beginAccess();
  sub_189000248(a1, &v5);
  swift_endAccess();
  if (v6)
  {
    sub_188F166A0(&v5, v7);
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 64) = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_188FFD074(v7);
    if (Strong)
    {
      swift_unknownObjectRelease();
      return 1;
    }
  }

  else
  {
    sub_188FFD0B0(&v5);
  }

  return 0;
}

uint64_t sub_188FFBBA4(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (!*(v4 + 16))
  {
    return 0;
  }

  v5 = sub_188A403F4(a1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  sub_188FA952C(*(v4 + 56) + 32 * v5, v8);
  sub_188F166A0(v8, v9);
  [v10 invalidate];
  sub_188FFD074(v9);
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  result = 1;
  *(v2 + 64) = 1;
  return result;
}

uint64_t sub_188FFBC50()
{
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 1;
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v4; result = sub_188FFD074(v10))
  {
    v8 = i;
LABEL_9:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    sub_188FA952C(*(v1 + 56) + ((v8 << 11) | (32 * v9)), v10);
    [v11 invalidate];
  }

  while (1)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return *(*(v0 + 24) + 16) != 0;
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++i;
    if (v4)
    {
      i = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_188FFBD88()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 24);
  swift_bridgeObjectRetain_n();
  v3 = sub_18A4A7EC8();
  v4 = *(v2 + 36);
  v5 = *(v2 + 32);

  v7 = 1 << v5;
  v8 = v3 == 1 << v5;
  v9 = v3 != 1 << v5;
  if (v8)
  {
LABEL_23:

    sub_188FFD0A4(v3, v4, 0);
    sub_188FFD0A4(v7, v4, 0);
    result = sub_188FFD0A4(v7, v4, 0);
    if (v9)
    {
      *(v1 + 32) = 0u;
      *(v1 + 48) = 0u;
      *(v1 + 64) = 1;
    }
  }

  else
  {
    v21 = v9;
    v23 = 0;
    v22 = v3;
LABEL_3:
    v10 = v3;
    while ((v10 & 0x8000000000000000) == 0)
    {
      v3 = 1 << *(v2 + 32);
      if (v10 >= v3)
      {
        break;
      }

      v11 = v10 >> 6;
      v12 = *(v2 + 64 + 8 * (v10 >> 6));
      if ((v12 & (1 << v10)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v2 + 36) != v4)
      {
        goto LABEL_28;
      }

      v13 = v12 & (-2 << (v10 & 0x3F));
      if (v13)
      {
        v3 = __clz(__rbit64(v13)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v14 = v11 << 6;
        v15 = v11 + 1;
        v16 = (v2 + 72 + 8 * v11);
        while (v15 < (v3 + 63) >> 6)
        {
          v18 = *v16++;
          v17 = v18;
          v14 += 64;
          ++v15;
          if (v18)
          {
            v3 = __clz(__rbit64(v17)) + v14;
            break;
          }
        }
      }

      v19 = *(v1 + 24);
      if (v10 >= 1 << *(v19 + 32))
      {
        goto LABEL_29;
      }

      if ((*(v19 + 8 * v11 + 64) & (1 << v10)) == 0)
      {
        goto LABEL_30;
      }

      if (*(v19 + 36) != v4)
      {
        goto LABEL_31;
      }

      sub_188FA952C(*(v19 + 56) + 32 * v10, v24);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_188FFD074(v24);
      if (!Strong)
      {
        swift_beginAccess();
        sub_188FFCD04(v24, v10, v4);
        sub_188FFD074(v24);
        swift_endAccess();
        result = sub_188FFD0A4(v10, v4, 0);
        v23 = 1;
        if (v3 != v7)
        {
          goto LABEL_3;
        }

        v9 = v21;
        goto LABEL_22;
      }

      sub_188FFD0A4(v10, v4, 0);
      result = swift_unknownObjectRelease();
      v10 = v3;
      if (v3 == v7)
      {
        v9 = v23;
LABEL_22:
        v3 = v22;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  return result;
}

id sub_188FFC040(void *a1)
{
  result = swift_beginAccess();
  if (!*(*(v1 + 24) + 16))
  {
    return result;
  }

  v4 = objc_opt_self();
  [v4 lock];
  if (!a1)
  {
    return [v4 unlock];
  }

  v5 = a1;
  v6 = [v5 superview];
  if (!v6)
  {

    return [v4 unlock];
  }

  v7 = v6;
  if ((*(v1 + 64) & 1) == 0)
  {

    return [v4 unlock];
  }

  [v5 frame];
  v43 = v9;
  v44 = v8;
  v41 = v11;
  v42 = v10;
  v12 = *MEMORY[0x1E695F050];
  v13 = *(MEMORY[0x1E695F050] + 8);
  v14 = *(MEMORY[0x1E695F050] + 16);
  v15 = *(MEMORY[0x1E695F050] + 24);
  sub_188FFBD88();
  v16 = *(v1 + 24);
  v17 = 1 << *(v16 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v16 + 64);
  v20 = (v17 + 63) >> 6;

  v21 = 0;
  x = v12;
  y = v13;
  width = v14;
  height = v15;
  while (v19)
  {
LABEL_16:
    v27 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    sub_188FA952C(*(v16 + 56) + ((v21 << 11) | (32 * v27)), v48);
    sub_188F166A0(v48, v45);
    if (v46 == 5)
    {
      if (*(v1 + 17) != 1)
      {
        goto LABEL_10;
      }
    }

    else if (v46 == -1)
    {
      goto LABEL_10;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong _frameInView_cache_];
      v40.origin.x = v29;
      v40.origin.y = v30;
      v40.size.width = v31;
      v40.size.height = v32;
      swift_unknownObjectRelease();
      v57.origin.y = v43;
      v57.origin.x = v44;
      v57.size.height = v41;
      v57.size.width = v42;
      if (CGRectIntersectsRect(v40, v57))
      {
        v33 = swift_unknownObjectWeakLoadStrong();
        if (v33 && (v39 = [v33 _requiresPocket], swift_unknownObjectRelease(), v39))
        {
          v49.origin.x = x;
          v49.origin.y = y;
          v49.size.width = width;
          v49.size.height = height;
          v50 = CGRectUnion(v49, v40);
          x = v50.origin.x;
          y = v50.origin.y;
          width = v50.size.width;
          height = v50.size.height;
        }

        else
        {
          v51.origin.x = v12;
          v51.origin.y = v13;
          v51.size.width = v14;
          v51.size.height = v15;
          v52 = CGRectUnion(v51, v40);
          v12 = v52.origin.x;
          v13 = v52.origin.y;
          v14 = v52.size.width;
          v15 = v52.size.height;
        }
      }
    }

LABEL_10:
    result = sub_188FFD074(v45);
  }

  while (1)
  {
    v26 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      return result;
    }

    if (v26 >= v20)
    {
      break;
    }

    v19 = *(v16 + 64 + 8 * v26);
    ++v21;
    if (v19)
    {
      v21 = v26;
      goto LABEL_16;
    }
  }

  v53.origin.x = x;
  v53.origin.y = y;
  v53.size.width = width;
  v53.size.height = height;
  IsNull = CGRectIsNull(v53);
  if (IsNull)
  {

    v35 = 0.0;
    v36 = 0.0;
    v37 = 0.0;
    v38 = 0.0;
  }

  else
  {
    v54.origin.x = x;
    v54.origin.y = y;
    v54.size.width = width;
    v54.size.height = height;
    v58.origin.x = v12;
    v58.origin.y = v13;
    v58.size.width = v14;
    v58.size.height = v15;
    v55 = CGRectUnion(v54, v58);
    v59.origin.y = v43;
    v59.origin.x = v44;
    v59.size.height = v41;
    v59.size.width = v42;
    v56 = CGRectIntersection(v55, v59);
    v35 = v56.origin.x;
    v36 = v56.origin.y;
    v37 = v56.size.width;
    v38 = v56.size.height;
  }

  *(v1 + 32) = v35;
  *(v1 + 40) = v36;
  *(v1 + 48) = v37;
  *(v1 + 56) = v38;
  *(v1 + 64) = IsNull;
  return [v4 unlock];
}

void sub_188FFC404(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *MEMORY[0x1E695F050];
  v6 = *(MEMORY[0x1E695F050] + 8);
  v8 = *(MEMORY[0x1E695F050] + 16);
  v7 = *(MEMORY[0x1E695F050] + 24);
  swift_unknownObjectUnownedInit();
  *(a2 + 8) = 0;
  *(a2 + 10) = 0;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v8;
  *(a2 + 40) = v7;
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  *(a2 + 64) = v8;
  *(a2 + 72) = v7;
  *(a2 + 80) = v5;
  *(a2 + 88) = v6;
  *(a2 + 96) = v8;
  *(a2 + 104) = v7;
  *(a2 + 112) = v5;
  *(a2 + 120) = v6;
  *(a2 + 128) = v8;
  *(a2 + 136) = v7;
  v9 = MEMORY[0x1E69E7CC0];
  *(a2 + 144) = MEMORY[0x1E69E7CC0];
  *(a2 + 9) = *(v2 + 16);
  sub_188FFBD88();
  swift_beginAccess();
  v10 = *(v2 + 24);
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  v54 = 0;
  v16 = v5;
  MaxY = v6;
  v18 = v8;
  v19 = v7;
  y = v6;
  x = v5;
  height = v7;
  width = v8;
  v65 = v6;
  v66 = v5;
  v63 = v7;
  v64 = v8;
  v61 = v6;
  v62 = v5;
  v59 = v7;
  v60 = v8;
  v52 = v6;
  v53 = v5;
  v50 = v7;
  v51 = v8;
  v69 = v8;
  v70 = v5;
  v67 = v7;
  v68 = v6;
  while (v13)
  {
LABEL_11:
    v21 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    sub_188FA952C(*(v10 + 56) + ((v15 << 11) | (32 * v21)), v74);
    sub_188F166A0(v74, v72);
    v22 = v73;
    if (v73 == 5)
    {
      if (*(v2 + 17) != 1)
      {
        goto LABEL_5;
      }
    }

    else if (v73 == -1)
    {
      goto LABEL_5;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v45 = v16;
      v46 = v18;
      v47 = MaxY;
      v48 = v19;
      v49 = a1;
      [Strong _frameInView_cache_];
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;
      swift_unknownObjectRelease();
      v44.origin.x = v25;
      v44.origin.y = v27;
      v75.origin.x = v25;
      v75.origin.y = v27;
      v44.size.width = v29;
      v44.size.height = v31;
      v75.size.width = v29;
      v75.size.height = v31;
      if (CGRectIsEmpty(v75))
      {
        sub_188FFD074(v72);
        MaxY = v47;
        v19 = v48;
        v16 = v45;
        v18 = v46;
      }

      else
      {
        if ((*(v2 + 18) & 1) == 0)
        {
          v54 |= v22 == 0;
          *(a2 + 10) = v54 & 1;
        }

        v32 = v29;
        v33 = v31;
        MaxY = v47;
        v19 = v48;
        v34 = v25;
        v35 = v27;
        v16 = v45;
        v18 = v46;
        if (v22 > 1)
        {
          switch(v22)
          {
            case 4uLL:
              v86.origin.y = y;
              v86.origin.x = x;
              v86.size.height = height;
              v86.size.width = width;
              v87 = CGRectUnion(v86, *&v34);
              y = v87.origin.y;
              x = v87.origin.x;
              height = v87.size.height;
              width = v87.size.width;
              break;
            case 3uLL:
              v84.origin.y = v65;
              v84.origin.x = v66;
              v84.size.height = v63;
              v84.size.width = v64;
              v85 = CGRectUnion(v84, *&v34);
              v65 = v85.origin.y;
              v66 = v85.origin.x;
              *(a2 + 48) = v85;
              v63 = v85.size.height;
              v64 = v85.size.width;
              break;
            case 2uLL:
              v82.size.width = v69;
              v82.origin.x = v70;
              v82.size.height = v67;
              v82.origin.y = v68;
              v83 = CGRectUnion(v82, *&v34);
              v69 = v83.size.width;
              v70 = v83.origin.x;
              *(a2 + 16) = v83;
              v67 = v83.size.height;
              v68 = v83.origin.y;
              break;
          }

          goto LABEL_5;
        }

        v76.origin.x = v45;
        v76.origin.y = v47;
        v76.size.width = v46;
        v76.size.height = v48;
        v77 = CGRectUnion(v76, *&v34);
        v16 = v77.origin.x;
        MaxY = v77.origin.y;
        v18 = v77.size.width;
        v19 = v77.size.height;
        sub_188FA952C(v72, v71);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_188E4C538(0, v9[2] + 1, 1, v9);
        }

        v37 = v9[2];
        v36 = v9[3];
        v38 = v37 + 1;
        if (v37 >= v36 >> 1)
        {
          v39 = sub_188E4C538((v36 > 1), v37 + 1, 1, v9);
          v38 = v37 + 1;
          v9 = v39;
        }

        v9[2] = v38;
        sub_188F166A0(v71, &v9[4 * v37 + 4]);
        *(a2 + 144) = v9;
        v78.origin.y = v61;
        v78.origin.x = v62;
        v78.size.height = v59;
        v78.size.width = v60;
        v79 = CGRectUnion(v78, v44);
        v61 = v79.origin.y;
        v62 = v79.origin.x;
        *(a2 + 80) = v79;
        v59 = v79.size.height;
        v60 = v79.size.width;
        if (v22 != 1)
        {
          a1 = v49;
          goto LABEL_5;
        }

        v80.origin.y = v52;
        v80.origin.x = v53;
        v80.size.height = v50;
        v80.size.width = v51;
        v81 = CGRectUnion(v80, v44);
        v52 = v81.origin.y;
        v53 = v81.origin.x;
        v50 = v81.size.height;
        v51 = v81.size.width;
        sub_188FFD074(v72);
        *(a2 + 112) = v53;
        *(a2 + 120) = v52;
        *(a2 + 128) = v51;
        *(a2 + 136) = v50;
        a1 = v49;
      }
    }

    else
    {
LABEL_5:
      sub_188FFD074(v72);
    }
  }

  while (1)
  {
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      return;
    }

    if (v20 >= v14)
    {
      break;
    }

    v13 = *(v10 + 64 + 8 * v20);
    ++v15;
    if (v13)
    {
      v15 = v20;
      goto LABEL_11;
    }
  }

  v88.size.width = v69;
  v88.origin.x = v70;
  v88.size.height = v67;
  v88.origin.y = v68;
  if (CGRectIsNull(v88))
  {
    v89.origin.x = v16;
    v89.origin.y = MaxY;
    v89.size.width = v18;
    v89.size.height = v19;
    if (CGRectIsNull(v89))
    {
      MaxY = y;
      v16 = x;
      v90.origin.x = x;
      v90.origin.y = y;
      v19 = height;
      v18 = width;
      v90.size.width = width;
      v90.size.height = height;
      if (CGRectIsNull(v90))
      {
        v19 = v67;
        v18 = v69;
        MaxY = v68;
        v16 = v70;
      }
    }
  }

  else
  {
    v91.origin.y = v61;
    v91.origin.x = v62;
    v91.size.height = v59;
    v91.size.width = v60;
    if (CGRectIsNull(v91))
    {
      v18 = v69;
      v16 = v70;
      v40 = v70;
      v42 = v67;
      v41 = v68;
      v43 = v69;
      if (*(v2 + 16))
      {
        MaxY = CGRectGetMaxY(*&v40);
      }

      else
      {
        MaxY = floor(CGRectGetMinY(*&v40) * 0.5);
      }

      v19 = 0.0;
    }

    else
    {
      v19 = v67;
      MaxY = v68;
      v18 = v69;
      v16 = v70;
    }
  }

  if (*(v2 + 17) == 1)
  {
    *(a2 + 8) = 2;
  }

  v92.origin.x = v16;
  v92.origin.y = MaxY;
  v92.size.width = v18;
  v92.size.height = v19;
  v93.origin.y = v65;
  v93.origin.x = v66;
  v93.size.height = v63;
  v93.size.width = v64;
  *(a2 + 16) = CGRectUnion(v92, v93);
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  *(a2 + 64) = v8;
  *(a2 + 72) = v7;
}

uint64_t sub_188FFC958()
{
  swift_beginAccess();

  sub_188FFB5E8(v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3B0);
  sub_188FFD010();
  v2 = sub_18A4A71F8();
  v4 = v3;

  BYTE8(v6) = 0;
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0x6E656D6E67696C61, 0xEB00000000203A74);
  *&v6 = *(v0 + 16);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](0x6E656D656C65202CLL, 0xEC0000007B3A7374);
  MEMORY[0x18CFE22D0](v2, v4);

  MEMORY[0x18CFE22D0](125, 0xE100000000000000);
  return *(&v6 + 1);
}

uint64_t sub_188FFCAC8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_188FFCB24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 144);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188FFCB6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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
      *(result + 144) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_188FFCBE0(uint64_t a1, int a2)
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

uint64_t sub_188FFCC28(uint64_t result, int a2, int a3)
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

unint64_t sub_188FFCC8C()
{
  result = qword_1EA939C38;
  if (!qword_1EA939C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA939C38);
  }

  return result;
}

uint64_t sub_188FFCD04(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  if ((result & 1) == 0)
  {
    result = sub_188FA5400();
    *v4 = v9;
  }

  if ((a2 & 0x8000000000000000) != 0 || 1 << *(v9 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v9 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v9 + 36) == a3)
  {
    v10 = *(*(v9 + 48) + 8 * a2);
    sub_188F166A0(*(v9 + 56) + 32 * a2, a1);
    sub_188F9E7DC(a2, v9);
    *v4 = v9;
    return v10;
  }

LABEL_10:
  __break(1u);
  return result;
}

BOOL sub_188FFCDD8(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v6)
    {
      v7 = v6;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (Strong != v7)
      {
        return 0;
      }

      goto LABEL_8;
    }

LABEL_10:
    swift_unknownObjectRelease();
    return 0;
  }

  if (v6)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (a1[2] == a2[2])
  {
    return a1[3] == a2[3];
  }

  return 0;
}

BOOL sub_188FFCE8C(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = swift_unknownObjectUnownedLoadStrong();
  v6 = v5;
  if (!Strong)
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (!v5)
  {

    return 0;
  }

  sub_188AF7A44();
  v7 = sub_18A4A7C88();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

LABEL_7:
  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 9) != *(a2 + 9) || *(a1 + 10) != *(a2 + 10) || !CGRectEqualToRect(*(a1 + 16), *(a2 + 16)) || !CGRectEqualToRect(*(a1 + 48), *(a2 + 48)) || !CGRectEqualToRect(*(a1 + 80), *(a2 + 80)) || !CGRectEqualToRect(*(a1 + 112), *(a2 + 112)))
  {
    return 0;
  }

  v8 = *(a1 + 144);
  v9 = *(a2 + 144);

  return sub_189015550(v8, v9);
}

unint64_t sub_188FFD010()
{
  result = qword_1EA939C40;
  if (!qword_1EA939C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93F3B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA939C40);
  }

  return result;
}

uint64_t sub_188FFD0A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_188FFD0B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939C50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_188FFD12C()
{
  result = qword_1EA939C58;
  if (!qword_1EA939C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA939C58);
  }

  return result;
}

uint64_t sub_188FFD180(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a2 + 8);
  v5 = *(a2 + 16);
  v7 = *(a2 + 24);
  type metadata accessor for CGColor(0);
  sub_188FFF538(&qword_1EA931358, type metadata accessor for CGColor);
  v8 = sub_18A4A3238();
  result = 0;
  if ((v8 & 1) != 0 && v3 == v6)
  {
    if (v4)
    {
      if (v7)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v5)
      {
        v10 = v7;
      }

      else
      {
        v10 = 1;
      }

      if ((v10 & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

id sub_188FFD260(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketMask_layout;
  swift_beginAccess();
  sub_188FFF474(a1, v8);
  sub_188FFF474(v1 + v3, v10);
  if (!v9)
  {
    if (!v11)
    {
      return sub_188A3F5FC(v8, &qword_1EA939CB0);
    }

    goto LABEL_8;
  }

  sub_188FFF474(v8, v7);
  if (!v11)
  {
    sub_188FFF4E4(v7);
LABEL_8:
    sub_188A3F5FC(v8, &qword_1EA939CB8);
    return [v1 setNeedsLayout];
  }

  sub_188FFCFD8(v10, v6);
  v4 = sub_188FFCE8C(v7, v6);
  sub_188FFF4E4(v6);
  sub_188FFF4E4(v7);
  result = sub_188A3F5FC(v8, &qword_1EA939CB0);
  if (!v4)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

char *sub_188FFD384(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for ScrollEdgeEffectView.Params(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = &v4[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketMask_layout];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  *(v12 + 3) = 0u;
  *(v12 + 4) = 0u;
  *(v12 + 5) = 0u;
  *(v12 + 6) = 0u;
  *(v12 + 7) = 0u;
  *(v12 + 8) = 0u;
  *(v12 + 18) = 0;
  v13 = &v4[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketMask_previousBarFrame];
  v14 = *(MEMORY[0x1E695F040] + 16);
  *v13 = *MEMORY[0x1E695F040];
  *(v13 + 1) = v14;
  v15 = [objc_opt_self() systemBlackColor];
  v16 = [v15 CGColor];

  v17 = &v4[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketMask_elementStyle];
  *v17 = v16;
  *(v17 + 1) = 0x4032000000000000;
  *(v17 + 2) = 0;
  v17[24] = 1;
  v18 = [objc_allocWithZone(UIView) init];
  *&v4[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketMask_containerView] = v18;
  v19 = v18;
  v20 = sub_18A4A7258();
  [v19 _setIdentifier_];

  v21 = [v19 layer];
  v34[0] = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v22 = [objc_allocWithZone(_UINoAnimationDelegate) init];

  v34[2] = v22;
  v23 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketMask_layerPool;
  swift_beginAccess();
  sub_188A3F704(v34, &v4[v23], &qword_1EA939C90);
  v24 = _s10PocketMaskCMa();
  v33.receiver = v4;
  v33.super_class = v24;
  v25 = objc_msgSendSuper2(&v33, sel_initWithFrame_, a1, a2, a3, a4);
  v26 = qword_1EA931E00;
  v27 = v25;
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v9, qword_1EA995128);
  sub_188FFA2B0(v28, v11);
  if ((v11[11] & 1) == 0)
  {
    v29 = [v27 layer];
    v30 = v11[12];
    [v29 setShouldRasterize_];

    v31 = [v27 layer];
    [v31 setRasterizationScale_];
  }

  [v27 addSubview_];

  sub_188FFA314(v11);
  return v27;
}

double sub_188FFD8D4()
{
  v1 = *(v0 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketMask_elementStyle + 8);
  v2 = *(v0 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketMask_elementStyle + 16);
  v3 = *(v0 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketMask_elementStyle + 24);
  v4 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketMask_layout;
  swift_beginAccess();
  sub_188FFF474(v0 + v4, v10);
  sub_188A3F704(v10, v8, &qword_1EA939CB0);
  if (v8[18])
  {
    sub_188FFCFD8(v8, v9);
    v5 = v9[10];
    sub_188FFF4E4(v9);
    if (v3)
    {
      v6 = v1;
    }

    else
    {
      v6 = v2;
    }

    if (v5)
    {
      v1 = v6;
    }
  }

  else
  {
    sub_188A3F5FC(v8, &qword_1EA939CB0);
  }

  return v1 * 2.7;
}

uint64_t sub_188FFD9C4()
{
  v8.receiver = v0;
  v8.super_class = _s10PocketMaskCMa();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketMask_containerView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketMask_layout;
  swift_beginAccess();
  sub_188FFF474(&v0[v2], v5);
  if (!v6)
  {
    return sub_188A3F5FC(v5, &qword_1EA939CB0);
  }

  sub_188FFCFD8(v5, v7);
  v3 = sub_188FFE698(v7);
  if (v3)
  {
    sub_188FFDAF0(v3);
  }

  return sub_188FFF4E4(v7);
}

uint64_t sub_188FFDAF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939CC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v46 - v3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939CC8);
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = v46 - v5;
  v64 = sub_18A4A2CC8();
  v62 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939CD0);
  v53 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v61 = (v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = v46 - v11;
  v13 = sub_18A4A2D08();
  v60 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v46 - v17;
  v65 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939CD8);
  v19 = v52;
  sub_188F76428(&qword_1EA931360, &qword_1EA939CD8);
  v20 = v13;
  v21 = v51;
  sub_18A4A2CE8();
  sub_18A4A2CB8();
  v47 = v18;
  sub_18A4A2C98();
  (*(v62 + 8))(v7, v64);
  v22 = (v63 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketMask_layerPool);
  swift_beginAccess();
  v58 = v22;
  v23 = *v22;
  v56 = v22 + 1;
  v24 = *(v53 + 16);
  v48 = v12;
  v24(v61, v12, v8);

  swift_getOpaqueTypeConformance2();
  sub_18A4A7458();
  v49 = v8;
  v25 = v23;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = 0;
  v28 = 0;
  v61 = (v60 + 6);
  v62 = AssociatedConformanceWitness;
  v59 = (v60 + 4);
  v29 = v25 & 0xFFFFFFFFFFFFFF8;
  v64 = v25 & 0xFFFFFFFFFFFFFF8;
  if (v25 < 0)
  {
    v29 = v25;
  }

  v46[1] = v29;
  v54 = v25 + 32;
  v55 = v25 & 0xC000000000000001;
  ++v60;
  v30 = v25;
  v57 = v25;
  do
  {
    sub_18A4A7D78();
    if ((*v61)(v4, 1, v20) == 1)
    {
      (*(v50 + 8))(v21, v19);

      if (v30 >> 62)
      {
        goto LABEL_43;
      }

      v39 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v27 < v39)
      {
        v40 = v39 == v27;
        if (v39 < v27)
        {
          goto LABEL_45;
        }

        goto LABEL_23;
      }

      goto LABEL_29;
    }

    (*v59)(v15, v4, v20);
    if (v25 >> 62)
    {
      if (v28 == sub_18A4A7F68())
      {
LABEL_4:
        type metadata accessor for ShadowLayer();
        v31 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        Strong = swift_unknownObjectWeakLoadStrong();
        [Strong addSublayer_];

        sub_188FFE2D0(v31, v15, v63);
        v33 = v31;
        v34 = v58;
        MEMORY[0x18CFE2450]();
        if (*((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18A4A7588();
        }

        sub_18A4A75F8();

        (*v60)(v15, v20);
        v30 = *v34;
        v25 = v57;
        goto LABEL_7;
      }
    }

    else if (v28 == *(v64 + 16))
    {
      goto LABEL_4;
    }

    if (v55)
    {
      v36 = sub_188E4AA14(v28, v25);
    }

    else
    {
      if ((v28 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v28 >= *(v64 + 16))
      {
        goto LABEL_42;
      }

      v36 = *(v54 + 8 * v28);
    }

    v37 = v36;
    v35 = __OFADD__(v28++, 1);
    if (v35)
    {
      goto LABEL_41;
    }

    sub_188FFE2D0(v36, v15, v63);

    (*v60)(v15, v20);
LABEL_7:
    v35 = __OFADD__(v27++, 1);
  }

  while (!v35);
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  if (v27 >= sub_18A4A7F68())
  {
    goto LABEL_29;
  }

  result = sub_18A4A7F68();
  v39 = result;
  v40 = result == v27;
  if (result < v27)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    v41 = sub_18A4A7F68();
    goto LABEL_27;
  }

LABEL_23:
  if (v40)
  {
LABEL_25:
    if (v30 >> 62)
    {
      goto LABEL_46;
    }

    v41 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_27:
    v35 = __OFSUB__(v41, v27);
    result = v41 - v27;
    if (v35)
    {
      __break(1u);
      goto LABEL_48;
    }

    sub_188FFF280(result);
LABEL_29:
    swift_endAccess();
    (*(v53 + 8))(v48, v49);
    return (*v60)(v47, v20);
  }

  if (v27 < v39)
  {
    v42 = v27;
    if ((v30 & 0xC000000000000001) != 0)
    {
      goto LABEL_37;
    }

    v43 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27 < v43)
    {
      v42 = v27;
      if (v39 - 1 < v43)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_35:
    for (i = *(v30 + 8 * v42 + 32); ; i = sub_188E4AA14(v42, v30))
    {
      v45 = i;
      ++v42;
      [i removeFromSuperlayer];

      if (v39 == v42)
      {
        break;
      }

LABEL_37:
      if ((v30 & 0xC000000000000001) == 0)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_25;
  }

LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_188FFE2D0(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18A4A2CC8();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v37 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18A4A2D08();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A2C68();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  (*(v9 + 16))(v11, a2, v8);
  CGAffineTransformMakeTranslation(&v43, -v13, -v15);
  sub_18A4A2CD8();
  v20 = a3 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketMask_elementStyle;
  v21 = *(a3 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketMask_elementStyle);
  v22 = *&a1[OBJC_IVAR____TtC5UIKitP33_85E9C0EF4CE083FCE5405A75E0676D6F11ShadowLayer_elementColor];
  *&a1[OBJC_IVAR____TtC5UIKitP33_85E9C0EF4CE083FCE5405A75E0676D6F11ShadowLayer_elementColor] = v21;
  v23 = v21;

  [a1 setShadowColor_];
  [a1 setFrame_];
  v24 = sub_18A4A2C78();
  v25 = 0;
  if ((v24 & 1) == 0)
  {
    v42[0] = MEMORY[0x1E69E7CC0];
    v36[1] = sub_188FFF538(&qword_1EA9309F8, MEMORY[0x1E695EEE0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA939CE0);
    sub_188F76428(&unk_1EA930988, qword_1EA939CE0);
    v26 = v37;
    v27 = v39;
    sub_18A4A7EB8();
    v28 = sub_18A4A2CA8();
    (*(v38 + 8))(v26, v27);
    v25 = v28;
  }

  sub_188FFEBB8(v25);
  v29 = *(v20 + 8);
  v30 = *(v20 + 16);
  v31 = *(v20 + 24);
  v32 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketMask_layout;
  swift_beginAccess();
  sub_188FFF474(a3 + v32, v42);
  sub_188A3F704(v42, v40, &qword_1EA939CB0);
  if (v40[18])
  {
    sub_188FFCFD8(v40, v41);
    v33 = v41[10];
    sub_188FFF4E4(v41);
    if (v31)
    {
      v34 = v29;
    }

    else
    {
      v34 = v30;
    }

    if (v33)
    {
      v29 = v34;
    }
  }

  else
  {
    sub_188A3F5FC(v40, &qword_1EA939CB0);
  }

  *&a1[OBJC_IVAR____TtC5UIKitP33_85E9C0EF4CE083FCE5405A75E0676D6F11ShadowLayer_radius] = v29;
  [a1 setShadowRadius_];
  return (*(v9 + 8))(v11, v8);
}

char *sub_188FFE698(uint64_t a1)
{
  v3 = *(a1 + 144);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketMask_containerView;
    v6 = v3 + 32;
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_188FA952C(v6, v46);
      if (v46[2] || (v8 = *(v1 + v5), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
      {
        sub_188FFD074(v46);
      }

      else
      {
        v10 = Strong;
        [Strong _frameInView_cache_];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;
        [v10 _visualInsets];
        v23 = UIRectInset(v12, v14, v16, v18, v19, v22, v21, v20);
        v25 = v24;
        v27 = v26;
        v29 = v28;
        swift_unknownObjectRelease();
        sub_188FFD074(v46);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_188E4BB80(0, *(v7 + 2) + 1, 1, v7);
        }

        v31 = *(v7 + 2);
        v30 = *(v7 + 3);
        if (v31 >= v30 >> 1)
        {
          v7 = sub_188E4BB80((v30 > 1), v31 + 1, 1, v7);
        }

        *(v7 + 2) = v31 + 1;
        v32 = &v7[32 * v31];
        v32[4] = v23;
        *(v32 + 5) = v25;
        *(v32 + 6) = v27;
        *(v32 + 7) = v29;
      }

      v6 += 32;
      --v4;
    }

    while (v4);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v33 = sub_188FFE930(a1);
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = *(v7 + 2);

  if (v40 || (v47.origin.x = v33, v47.origin.y = v35, v47.size.width = v37, v47.size.height = v39, !CGRectEqualToRect(v47, *(v1 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketMask_previousBarFrame))))
  {
    v41 = (v1 + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketMask_previousBarFrame);
    *v41 = v33;
    v41[1] = v35;
    v41[2] = v37;
    v41[3] = v39;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_188E4BB80(0, *(v7 + 2) + 1, 1, v7);
    }

    v43 = *(v7 + 2);
    v42 = *(v7 + 3);
    if (v43 >= v42 >> 1)
    {
      v7 = sub_188E4BB80((v42 > 1), v43 + 1, 1, v7);
    }

    *(v7 + 2) = v43 + 1;
    v44 = &v7[32 * v43];
    v44[4] = v33;
    v44[5] = v35;
    v44[6] = v37;
    v44[7] = v39;
  }

  else
  {

    return 0;
  }

  return v7;
}

double sub_188FFE930(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketMask_elementStyle + 8] + 2.0;
  v31.origin.x = *(a1 + 16);
  v4 = *(a1 + 24);
  v31.size.width = *(a1 + 32);
  v5 = *(a1 + 40);
  v31.origin.y = v4;
  v31.size.height = v5;
  IsNull = CGRectIsNull(v31);
  v7 = 0.0;
  if (IsNull)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v4;
  }

  if (IsNull)
  {
    v5 = 0.0;
  }

  [v1 bounds];
  v33.size.width = CGRectGetWidth(v32);
  v9 = -v3;
  v33.origin.x = 0.0;
  v33.origin.y = v8;
  v33.size.height = v5;
  v34 = CGRectInset(v33, -v3, 0.0);
  y = v34.origin.y;
  height = v34.size.height;
  if (*(a1 + 9))
  {
    width = 0.0;
    v9 = 0.0;
    v13 = 0.0;
    if (*(a1 + 9) != 1)
    {
      goto LABEL_11;
    }

    x = v34.origin.x;
    width = v34.size.width;
    v9 = CGRectGetMaxY(v34) + -20.0;
    [v1 bounds];
    MaxY = CGRectGetMaxY(v35);
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    v16 = CGRectGetMaxY(v36);
    v34.size.width = width;
    v17 = v16;
    v34.origin.x = x;
    v18 = MaxY - v17;
  }

  else
  {
    v19 = v34.origin.x;
    width = v34.size.width;
    MinY = CGRectGetMinY(v34);
    v34.size.width = width;
    v18 = MinY;
    v34.origin.x = v19;
  }

  v7 = v3 + 20.0 + v18;
  v13 = v34.origin.x;
LABEL_11:
  v21 = 10.0;
  if (*(a1 + 10))
  {
    v21 = 0.0;
  }

  if (height >= v21 + v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = height * 0.5;
  }

  v23 = y;
  v24 = height;
  v37 = CGRectInset(v34, 0.0, v22);
  v25 = v13;
  v26 = v9;
  v27 = width;
  v28 = v7;

  *&result = CGRectUnion(v37, *&v25);
  return result;
}

void sub_188FFEBB8(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC5UIKitP33_85E9C0EF4CE083FCE5405A75E0676D6F11ShadowLayer_contour];
  *&v1[OBJC_IVAR____TtC5UIKitP33_85E9C0EF4CE083FCE5405A75E0676D6F11ShadowLayer_contour] = a1;
  v4 = a1;

  if (a1)
  {

    [v1 setShadowPath_];
    [v1 setShadowPathIsBounds_];
  }

  else
  {
    [v1 setShadowPath_];

    [v1 setShadowPathIsBounds_];
  }
}

uint64_t sub_188FFEC98(void *a1)
{
  sub_188A55598(a1, v16);
  v3 = type metadata accessor for ShadowLayer();
  if (swift_dynamicCast())
  {
    v4 = v15;
    v5 = *&v15[OBJC_IVAR____TtC5UIKitP33_85E9C0EF4CE083FCE5405A75E0676D6F11ShadowLayer_contour];
    *&v1[OBJC_IVAR____TtC5UIKitP33_85E9C0EF4CE083FCE5405A75E0676D6F11ShadowLayer_contour] = v5;
    v6 = *&v4[OBJC_IVAR____TtC5UIKitP33_85E9C0EF4CE083FCE5405A75E0676D6F11ShadowLayer_elementColor];
    *&v1[OBJC_IVAR____TtC5UIKitP33_85E9C0EF4CE083FCE5405A75E0676D6F11ShadowLayer_elementColor] = v6;
    *&v1[OBJC_IVAR____TtC5UIKitP33_85E9C0EF4CE083FCE5405A75E0676D6F11ShadowLayer_radius] = *&v4[OBJC_IVAR____TtC5UIKitP33_85E9C0EF4CE083FCE5405A75E0676D6F11ShadowLayer_radius];
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v7 = v5;
    v8 = v6;
    v9 = sub_18A4A86A8();
    v14.receiver = v1;
    v14.super_class = v3;
    v10 = objc_msgSendSuper2(&v14, sel_initWithLayer_, v9);
    swift_unknownObjectRelease();
    v11 = v10;
    [v11 setShadowOffset_];
    [v11 setBackgroundColor_];
    LODWORD(v12) = 1.0;
    [v11 setShadowOpacity_];

    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return v11;
  }

  else
  {
    result = sub_18A4A8398();
    __break(1u);
  }

  return result;
}

id sub_188FFEE88()
{
  v1 = [objc_opt_self() systemBlackColor];
  v2 = [v1 CGColor];

  *&v0[OBJC_IVAR____TtC5UIKitP33_85E9C0EF4CE083FCE5405A75E0676D6F11ShadowLayer_elementColor] = v2;
  *&v0[OBJC_IVAR____TtC5UIKitP33_85E9C0EF4CE083FCE5405A75E0676D6F11ShadowLayer_contour] = 0;
  *&v0[OBJC_IVAR____TtC5UIKitP33_85E9C0EF4CE083FCE5405A75E0676D6F11ShadowLayer_radius] = 0x4032000000000000;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ShadowLayer();
  v3 = objc_msgSendSuper2(&v6, sel_init);
  [v3 setShadowOffset_];
  [v3 setBackgroundColor_];
  LODWORD(v4) = 1.0;
  [v3 setShadowOpacity_];

  return v3;
}

id sub_188FFF024(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_188FFF0CC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188FFF11C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_188FFF184(uint64_t a1)
{

  MEMORY[0x18CFEA6E0](a1 + 8);

  return swift_unknownObjectRelease();
}

void *sub_188FFF1C8(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectWeakTakeInit();
  a1[2] = a2[2];
  return a1;
}

void *sub_188FFF204(void *a1, void *a2)
{
  *a1 = *a2;

  swift_unknownObjectWeakTakeAssign();
  a1[2] = a2[2];
  swift_unknownObjectRelease();
  return a1;
}

uint64_t sub_188FFF280(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
  }

  else if (!(*v1 >> 62))
  {
    v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = -v2;
    if (!__OFSUB__(0, v2))
    {
      goto LABEL_5;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = result;
  v2 = sub_18A4A7F68();
  result = v6;
  v3 = -v2;
  if (__OFSUB__(0, v2))
  {
    goto LABEL_19;
  }

LABEL_5:
  v4 = -result;
  if (v3 <= 0 && v3 > v4)
  {
    goto LABEL_22;
  }

  result = v2 - result;
  if (__OFADD__(v2, v4))
  {
    goto LABEL_20;
  }

  if (v2 < result)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  return sub_189014268(result, v2);
}

void sub_188FFF338(void *a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = &v5[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketMask_elementStyle];
  v15 = *&v5[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketMask_elementStyle];
  v12 = *&v5[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketMask_elementStyle + 8];
  v11 = *&v5[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketMask_elementStyle + 16];
  v13 = v5[OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView10PocketMask_elementStyle + 24];
  *v10 = a1;
  v10[1] = a4;
  v10[2] = *&a2;
  *(v10 + 24) = a3 & 1;
  type metadata accessor for CGColor(0);
  sub_188FFF538(&qword_1EA931358, type metadata accessor for CGColor);
  v14 = a1;
  if ((sub_18A4A3238() & 1) == 0 || v12 != a4)
  {
    goto LABEL_8;
  }

  if (v13)
  {
    if (a3)
    {
      goto LABEL_9;
    }

LABEL_8:
    [v5 setNeedsLayout];
    goto LABEL_9;
  }

  if ((a3 & 1) != 0 || v11 != *&a2)
  {
    goto LABEL_8;
  }

LABEL_9:
}

uint64_t sub_188FFF474(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_188FFF538(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_188FFF580()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_188FFF5D4(uint64_t a1)
{
  sub_188FFFA1C(a1, v17);
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_188FFFA8C(v17);
  v3 = [Strong _isInAWindow];

  v4 = *(a1 + 24);
  if (v3)
  {
    if (!v4)
    {
      v4 = [objc_allocWithZone(_UIPortalView) initWithSourceView_];
      [v4 setHidesSourceView_];
      [v4 setMatchesPosition_];
      [v4 setMatchesTransform_];
      [v4 setAllowsBackdropGroups_];
      v5 = *(a1 + 8);
      sub_188FFFA1C(a1, v17);
      v6 = swift_unknownObjectUnownedLoadStrong();
      if (v5)
      {
        v7 = v5;
        sub_188FFFA8C(v17);
        [v6 insertSubview:v4 aboveSubview:v7];
      }

      else
      {
        sub_188FFFA8C(v17);
        [v6 addSubview_];
      }

      *(a1 + 24) = v4;
    }

    sub_188FFFA1C(a1, v17);
    v8 = swift_unknownObjectUnownedLoadStrong();
    sub_188FFFA8C(v17);
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [v4 setFrame_];
  }

  else if (v4)
  {
    [*(a1 + 24) removeFromSuperview];

    *(a1 + 24) = 0;
  }
}

void sub_188FFF7F0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_188FFFA1C(a1, v21);
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_188FFFA8C(v21);
  v6 = [Strong _isInAWindow];

  v7 = *(a1 + 24);
  if (v6)
  {
    if (!v7)
    {
      v7 = [objc_allocWithZone(_UIPortalView) initWithSourceView_];
      [v7 setHidesSourceView_];
      [v7 setMatchesPosition_];
      [v7 setMatchesTransform_];
      [v7 setAllowsBackdropGroups_];
      v8 = *(a1 + 8);
      sub_188FFFA1C(a1, v21);
      v9 = swift_unknownObjectUnownedLoadStrong();
      if (v8)
      {
        v10 = v8;
        sub_188FFFA8C(v21);
        [v9 insertSubview:v7 aboveSubview:v10];
      }

      else
      {
        sub_188FFFA8C(v21);
        [v9 addSubview_];
      }

      *(a1 + 24) = v7;
      v11 = v7;
      a3();
    }

    sub_188FFFA1C(a1, v21);
    v12 = swift_unknownObjectUnownedLoadStrong();
    sub_188FFFA8C(v21);
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    [v7 setFrame_];
  }

  else if (v7)
  {
    [*(a1 + 24) removeFromSuperview];

    *(a1 + 24) = 0;
  }
}

uint64_t sub_188FFFA1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939B78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_188FFFA8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939B78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_188FFFB54()
{
  v1 = v0;
  v2 = [v0 navigationBar];
  v3 = [v2 traitCollection];

  v4 = sub_188A84438();
  if (v4)
  {

    v5 = [v1 scrollPocketInteraction];
    if (!v5)
    {
      v12 = [objc_allocWithZone(_UIScrollPocketInteraction) initWithStyle_];
      [v1 setScrollPocketInteraction_];
      v13 = [v1 navigationBar];
      [v13 addInteraction_];

      goto LABEL_9;
    }
  }

  v6 = [v1 navigationBar];
  v7 = [v6 traitCollection];

  v8 = sub_188A84438();
  if (v8)
  {
  }

  else
  {
    v9 = [v1 scrollPocketInteraction];
    if (v9)
    {
      v10 = v9;
      v11 = [v1 navigationBar];
      [v11 removeInteraction_];

      [v1 setScrollPocketInteraction_];
    }
  }

LABEL_9:
  v14 = [v1 scrollPocketInteraction];
  if (v14)
  {
    v24 = v14;
    v15 = [v1 navigationBar];
    [v15 safeAreaInsets];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    [v24 _setInsets_];
  }
}

uint64_t sub_188FFFE1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_188A86B54(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_188FA0830();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935770);
    v18 = *(v11 - 8);
    sub_188A3F704(v10 + *(v18 + 72) * v7, a2, &unk_1EA935770);
    sub_188F9C650(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935770);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_188FFFF94(uint64_t a1)
{
  v2 = v1;
  v3 = sub_188C46540(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_188FA0D78();
    v7 = v10;
  }

  sub_188C4680C(*(v7 + 48) + 48 * v5);
  v8 = *(*(v7 + 56) + 8 * v5);
  sub_188C4D458(v5, v7);
  *v2 = v7;
  return v8;
}

double sub_18900002C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_188A403F4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_188FA2094();
      v9 = v11;
    }

    sub_188E8FC60(*(v9 + 56) + 16 * v7, a2);
    sub_188F9D5A4(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_18A64C520;
  }

  return result;
}

double sub_1890000C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_188E8B92C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_188FA31C8();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UITextEffectView.EffectID();
    sub_188ECAA48(v10 + *(*(v11 - 8) + 72) * v7);
    sub_188A8F66C((*(v9 + 56) + 40 * v7), a2);
    sub_188F9DAA4(v7, v9);
    *v3 = v9;
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

unint64_t sub_189000190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  result = sub_188A403F4(a1);
  v7 = v6;
  if (v6)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_188FA43E4();
      v10 = v11;
    }

    sub_188A3F704(*(v10 + 56) + 8 * v8, a2, &unk_1EA93B9E0);
    result = sub_188F9E0EC(v8, v10);
    *v3 = v10;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 8) = (v7 & 1) == 0;
  return result;
}

double sub_189000248@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_188A403F4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_188FA5400();
      v9 = v11;
    }

    sub_188F166A0(*(v9 + 56) + 32 * v7, a2);
    sub_188F9E7DC(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1890002DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_188E8BC0C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_188FA5724();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for UITextEffectView.EffectID();
    v19 = *(v12 - 8);
    sub_188ECA9E4(v11 + *(v19 + 72) * v8, a3);
    sub_188F9EADC(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for UITextEffectView.EffectID();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_18900047C(uint64_t a1, void (*a2)(unint64_t, uint64_t), void (*a3)(void))
{
  v6 = v3;
  v7 = sub_188E8B9FC(a1);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v16 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v11 = v16;
  }

  v12 = *(v11 + 48);
  v13 = sub_18A4A29D8();
  (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v9, v13);
  v14 = *(*(v11 + 56) + 16 * v9);
  a2(v9, v11);
  *v6 = v11;
  return v14;
}

id UITextEffectView.__allocating_init(source:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();

  return sub_189004820(a1, v3);
}

double sub_1890005B8()
{
  v1 = [v0 parameters];
  v2 = [v1 _textLineRects];

  if (!v2)
  {
    return 24.0;
  }

  sub_188A34624(0, &qword_1ED48EC30);
  v3 = sub_18A4A7548();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_17:

    v7 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  v4 = sub_18A4A7F68();
  if (!v4)
  {
    goto LABEL_17;
  }

LABEL_4:
  v29 = MEMORY[0x1E69E7CC0];
  sub_188E6D1DC(0, v4 & ~(v4 >> 63), 0);
  if (v4 < 0)
  {
    __break(1u);
    return result;
  }

  v6 = 0;
  v7 = v29;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = sub_188E49AE4(v6, v3);
    }

    else
    {
      v8 = *(v3 + 8 * v6 + 32);
    }

    v9 = v8;
    [v8 CGRectValue];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v19 = v29[2];
    v18 = v29[3];
    if (v19 >= v18 >> 1)
    {
      sub_188E6D1DC((v18 > 1), v19 + 1, 1);
    }

    ++v6;
    v29[2] = v19 + 1;
    v20 = &v29[4 * v19];
    v20[4] = v11;
    v20[5] = v13;
    v20[6] = v15;
    v20[7] = v17;
  }

  while (v4 != v6);

  if (!v29[2])
  {
LABEL_18:

    return 24.0;
  }

LABEL_13:
  v21 = v7[4];
  v22 = v7[5];
  v23 = v7[6];
  v24 = v7[7];

  v25 = v21;
  v26 = v22;
  v27 = v23;
  v28 = v24;

  return CGRectGetHeight(*&v25);
}

uint64_t sub_18900080C()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v0[2] = v0;
    v0[7] = v0 + 19;
    v0[3] = sub_189000994;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939DD0);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_189000EC8;
    v0[13] = &block_descriptor_24_2;
    v0[14] = v3;
    swift_unknownObjectRetain();
    [v2 _textEffects_sourceCanGenerateTargetedPreviewsWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v4 = v0[1];

    return v4(1);
  }
}

uint64_t sub_189000994()
{

  return MEMORY[0x1EEE6DFA0](sub_189000A74, 0, 0);
}

uint64_t sub_189000A74()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 152);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_189000AD8(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x1EEE6DFA0](sub_189000AF8, 0, 0);
}

uint64_t sub_189000AF8()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = v0[18];
    v0[2] = v0;
    v0[7] = v0 + 20;
    v0[3] = sub_189000C84;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939DD0);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_189000EC8;
    v0[13] = &block_descriptor_69;
    v0[14] = v4;
    swift_unknownObjectRetain();
    [v2 _textEffects_sourceCanGenerateTargetedPreviewForChunk_completion_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v5 = v0[1];

    return v5(1);
  }
}

uint64_t sub_189000C84()
{

  return MEMORY[0x1EEE6DFA0](sub_189000D64, 0, 0);
}

uint64_t sub_189000D64()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 160);
  v2 = *(v0 + 8);

  return v2(v1);
}

id UITextEffectTextChunk.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UITextEffectTextChunk.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UITextEffectTextChunk();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_189000E88@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for UITextEffectTextChunk();
  result = sub_18A4A8128();
  *a1 = result;
  return result;
}

uint64_t sub_189000EC8(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return swift_continuation_resume();
}

uint64_t sub_189000F24(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *(v6 + 216) = v5;
  *(v6 + 200) = a4;
  *(v6 + 208) = a5;
  *(v6 + 184) = a2;
  *(v6 + 192) = a3;
  *(v6 + 176) = a1;
  return MEMORY[0x1EEE6DFA0](sub_189000F50, 0, 0);
}

uint64_t sub_189000F50()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v6 = v1;
    v8 = v0[25];
    v7 = v0[26];
    v10 = v0[23];
    v9 = v0[24];
    v11 = *(v0 + 22);
    *(v0 + 2) = v0;
    *(v0 + 7) = v0 + 18;
    *(v0 + 3) = sub_189001118;
    v12 = swift_continuation_init();
    *(v0 + 17) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939DD8);
    *(v0 + 10) = MEMORY[0x1E69E9820];
    *(v0 + 11) = 1107296256;
    *(v0 + 12) = sub_189001260;
    *(v0 + 13) = &block_descriptor_37_0;
    *(v0 + 14) = v12;
    swift_unknownObjectRetain();
    [v6 _textEffects_updatedTargetedPreviewGeometryForChunk_previous_completion_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v4.n128_f64[0] = v0[25];
    v5.n128_f64[0] = v0[26];
    v2.n128_f64[0] = v0[23];
    v3.n128_f64[0] = v0[24];
    v13 = *(v0 + 1);

    return v13(v2, v3, v4, v5);
  }
}

uint64_t sub_189001118()
{

  return MEMORY[0x1EEE6DFA0](sub_1890011F8, 0, 0);
}

uint64_t sub_1890011F8()
{
  swift_unknownObjectRelease();
  v1.n128_u64[0] = v0[18];
  v2.n128_u64[0] = v0[19];
  v3.n128_u64[0] = v0[20];
  v4.n128_u64[0] = v0[21];
  v5 = v0[1];

  return v5(v1, v2, v3, v4);
}

uint64_t sub_189001260(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = *(*(*__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56)) + 64) + 40);
  *v9 = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;

  return swift_continuation_resume();
}

uint64_t (*sub_1890012EC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC5UIKit16UITextEffectView_source;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_189005730;
}

uint64_t sub_18900139C()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_1890013F8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC5UIKit16UITextEffectView_animationDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_189001490;
}

void sub_189001494(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

BOOL sub_189001514()
{
  v1 = OBJC_IVAR____TtC5UIKit16UITextEffectView_textEffects;
  swift_beginAccess();
  return *(*(v0 + v1) + 16) != 0;
}

id UITextEffectView.init(source:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_189004820(a1, v1);
}

uint64_t sub_189001650@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20[-v6];
  v8 = type metadata accessor for UITextEffectView.EffectID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v11);
  (*(v12 + 8))(v11, v12);
  sub_188ECA980(a2, &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  sub_188A53994(a1, v21);
  swift_beginAccess();
  sub_188F28740(v21, &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  swift_endAccess();
  v13 = sub_18A4A76C8();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  sub_188ECA980(a2, &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  sub_188A53994(a1, v21);
  sub_18A4A76A8();
  v14 = v2;
  v15 = sub_18A4A7698();
  v16 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  v17[2] = v15;
  v17[3] = v18;
  v17[4] = v14;
  sub_188ECA9E4(&v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v17 + v16);
  sub_188A8F66C(v21, v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_188F18724(0, 0, v7, &unk_18A65C860, v17);
}

uint64_t sub_1890018D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[55] = a5;
  v6[56] = a6;
  v6[54] = a4;
  sub_18A4A76A8();
  v6[57] = sub_18A4A7698();
  v8 = sub_18A4A7678();
  v6[58] = v8;
  v6[59] = v7;

  return MEMORY[0x1EEE6DFA0](sub_189001970, v8, v7);
}

uint64_t sub_189001970()
{
  v1 = *(v0 + 432);
  v2 = objc_opt_self();
  *(v0 + 480) = v2;
  [v2 activate];
  [v2 begin];
  v3 = OBJC_IVAR____TtC5UIKit16UITextEffectView_textEffects;
  *(v0 + 488) = OBJC_IVAR____TtC5UIKit16UITextEffectView_textEffects;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!*(v4 + 16))
  {
    goto LABEL_8;
  }

  v5 = *(v0 + 440);

  v6 = sub_188E8B92C(v5);
  if ((v7 & 1) == 0)
  {

LABEL_8:

    *(v0 + 304) = 0;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    sub_189004AF0(v0 + 272);
    goto LABEL_9;
  }

  v8 = *(v0 + 448);
  sub_188A53994(*(v4 + 56) + 40 * v6, v0 + 272);

  sub_189004AF0(v0 + 272);
  v9 = v8[3];
  v10 = v8[4];
  __swift_project_boxed_opaque_existential_0(v8, v9);
  *(v0 + 496) = (*(v10 + 16))(v9, v10);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 504) = Strong;
  if (Strong)
  {
    *(v0 + 512) = swift_getObjectType();
    v12 = swift_task_alloc();
    *(v0 + 520) = v12;
    *v12 = v0;
    v12[1] = sub_189001BA4;

    return sub_1890007EC();
  }

  v15 = *(v0 + 496);
  sub_18900264C();

LABEL_9:
  [*(v0 + 480) commit];
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_189001BA4(char a1)
{
  v2 = *v1;
  *(*v1 + 552) = a1;

  v3 = *(v2 + 472);
  v4 = *(v2 + 464);

  return MEMORY[0x1EEE6DFA0](sub_189001CCC, v4, v3);
}

uint64_t sub_189001CCC()
{
  if (*(v0 + 552) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 528) = v1;
    *v1 = v0;
    v1[1] = sub_189001DD0;
    v2 = *(v0 + 496);

    return sub_189000AD8(v2);
  }

  else
  {

    swift_unknownObjectRelease();
    v4 = *(v0 + 496);
    sub_18900264C();

    [*(v0 + 480) commit];
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_189001DD0(char a1)
{
  v2 = *v1;
  *(*v1 + 553) = a1;

  v3 = *(v2 + 472);
  v4 = *(v2 + 464);

  return MEMORY[0x1EEE6DFA0](sub_189001EF8, v4, v3);
}

uint64_t sub_189001EF8()
{
  if (*(v0 + 553) == 1)
  {
    v1 = *(*(v0 + 432) + *(v0 + 488));
    v2 = *(v1 + 16);

    if (v2)
    {
      v3 = sub_188E8B92C(*(v0 + 440));
      if (v4)
      {
        v5 = *(v0 + 496);
        v6 = *(v0 + 504);
        sub_188A53994(*(v1 + 56) + 40 * v3, v0 + 312);

        sub_189004AF0(v0 + 312);
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 424;
        *(v0 + 24) = sub_18900215C;
        v7 = swift_continuation_init();
        *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936EA8);
        *(v0 + 144) = MEMORY[0x1E69E9820];
        *(v0 + 152) = 1107296256;
        *(v0 + 160) = sub_188F1D34C;
        *(v0 + 168) = &block_descriptor_42_0;
        *(v0 + 176) = v7;
        [v6 targetedPreviewFor:v5 completionHandler:v0 + 144];

        return MEMORY[0x1EEE6DEC8](v0 + 16);
      }
    }

    v12 = *(v0 + 496);
    swift_unknownObjectRelease();

    *(v0 + 344) = 0;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    sub_189004AF0(v0 + 312);
  }

  else
  {
    v8 = *(v0 + 448);

    v9 = v8[3];
    v10 = v8[4];
    __swift_project_boxed_opaque_existential_0(v8, v9);
    (*(v10 + 56))(v9, v10);
    swift_unknownObjectRelease();
    v11 = *(v0 + 496);
    sub_18900264C();
  }

  [*(v0 + 480) commit];
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_18900215C()
{
  v1 = *(*v0 + 472);
  v2 = *(*v0 + 464);

  return MEMORY[0x1EEE6DFA0](sub_189002264, v2, v1);
}

uint64_t sub_189002264()
{
  *(v0 + 536) = *(v0 + 424);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 544) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 496);
    *(v0 + 80) = v0;
    *(v0 + 88) = sub_189002460;
    v4 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936EB0);
    *(v0 + 208) = MEMORY[0x1E69E9820];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_188F194AC;
    *(v0 + 232) = &block_descriptor_45_1;
    *(v0 + 240) = v4;
    [v2 prepareForAnimationFor:v3 completionHandler:v0 + 208];

    return MEMORY[0x1EEE6DEC8](v0 + 80);
  }

  else
  {

    v5 = *(v0 + 536);
    v6 = *(v0 + 448);
    v7 = v6[3];
    v8 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v7);
    (*(v8 + 32))(v5, v7, v8);
    swift_unknownObjectRelease();

    v9 = *(v0 + 496);
    sub_18900264C();

    [*(v0 + 480) commit];
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_189002460()
{
  v1 = *(*v0 + 472);
  v2 = *(*v0 + 464);

  return MEMORY[0x1EEE6DFA0](sub_189002568, v2, v1);
}

uint64_t sub_189002568()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 536);
  v2 = *(v0 + 448);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v3);
  (*(v4 + 32))(v1, v3, v4);
  swift_unknownObjectRelease();

  v5 = *(v0 + 496);
  sub_18900264C();

  [*(v0 + 480) commit];
  v6 = *(v0 + 8);

  return v6();
}

void sub_18900264C()
{
  sub_189004448();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OBJC_IVAR____TtC5UIKit16UITextEffectView_sharedEffectViews;
  swift_beginAccess();
  v10 = *(v0 + v9);
  if ((v10 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_18A4A7F18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AC0);
    sub_189004C34();
    sub_18A4A77D8();
    v12 = v43;
    v11 = v44;
    v13 = v45;
    v14 = v46;
    v15 = v47;
  }

  else
  {
    v16 = -1 << *(v10 + 32);
    v11 = v10 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(v10 + 56);
    v12 = v10;
    swift_bridgeObjectRetain_n();
    v14 = 0;
  }

  v19 = (v13 + 64) >> 6;
  if (v12 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v20 = v14;
  v21 = v15;
  v22 = v14;
  if (v15)
  {
LABEL_12:
    v23 = (v21 - 1) & v21;
    v24 = *(*(v12 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
    if (!v24)
    {
LABEL_19:
      sub_188E036A4();

      return;
    }

    while (1)
    {
      v25 = qword_1EA939DB0;
      [*&v24[qword_1EA939DB0] setFrame_];
      v26 = *&v24[qword_1EA939DA8];
      v27 = *&v24[v25];
      v28 = *&v24[qword_1EA939DA0];
      v29 = *&v24[qword_1EA939DA0 + 8];
      v30 = *&v24[qword_1EA939DA0 + 16];
      v31 = *&v24[qword_1EA939DA0 + 24];
      v32 = [v27 superview];
      if (!v32)
      {
        break;
      }

      v33 = v32;
      [v27 convertRect:v32 fromCoordinateSpace:{v28, v29, v30, v31}];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;

      [v26 setFrame_];
      v14 = v22;
      v15 = v23;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (sub_18A4A7FB8())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AC0);
        swift_dynamicCast();
        v24 = v42;
        v22 = v14;
        v23 = v15;
        if (v42)
        {
          continue;
        }
      }

      goto LABEL_19;
    }
  }

  else
  {
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v19)
      {
        goto LABEL_19;
      }

      v21 = *(v11 + 8 * v22);
      ++v20;
      if (v21)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_18900294C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5UIKit16UITextEffectView_textEffects;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if (*(v5 + 16))
  {

    v6 = sub_188E8B92C(a1);
    if (v7)
    {
      sub_188A53994(*(v5 + 56) + 40 * v6, v10);

      sub_188A8F66C(v10, v11);
      v8 = v12;
      v9 = v13;
      __swift_project_boxed_opaque_existential_0(v11, v12);
      (*(v9 + 48))(1, v8, v9);
      swift_beginAccess();
      sub_1890000C4(a1, v10);
      sub_189004AF0(v10);
      swift_endAccess();
      return __swift_destroy_boxed_opaque_existential_0Tm(v11);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_189002A68()
{
  v1 = OBJC_IVAR____TtC5UIKit16UITextEffectView_textEffects;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v5; result = __swift_destroy_boxed_opaque_existential_0Tm(v13))
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    sub_188A53994(*(v2 + 56) + 40 * (v10 | (v9 << 6)), v13);
    v11 = v14;
    v12 = v15;
    __swift_project_boxed_opaque_existential_0(v13, v14);
    (*(v12 + 48))(0, v11, v12);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      *(v0 + v1) = MEMORY[0x1E69E7CC8];
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_189002BD0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5UIKit16UITextEffectView_textEffects;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!*(v4 + 16))
  {
    goto LABEL_5;
  }

  v5 = sub_188E8B92C(a1);
  if ((v6 & 1) == 0)
  {

LABEL_5:
    v7 = 0;
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    goto LABEL_6;
  }

  sub_188A53994(*(v4 + 56) + 40 * v5, v9);

  v7 = 1;
LABEL_6:
  sub_189004AF0(v9);
  return v7;
}

uint64_t sub_189002C84(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5UIKit16UITextEffectView_textEffects;
  result = swift_beginAccess();
  v6 = *(v2 + v4);
  if (*(v6 + 16))
  {

    v7 = sub_188E8B92C(a1);
    if (v8)
    {
      sub_188A53994(*(v6 + 56) + 40 * v7, v13);

      sub_188A8F66C(v13, v14);
      v9 = v15;
      v10 = v16;
      __swift_project_boxed_opaque_existential_0(v14, v15);
      v11 = swift_allocObject();
      swift_beginAccess();
      swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();
      swift_unknownObjectRelease();
      v12 = *(v10 + 40);

      v12(&unk_18A65C880, v11, v9, v10);

      return __swift_destroy_boxed_opaque_existential_0Tm(v14);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_189002DE8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  *(v7 + 88) = a3;
  *(v7 + 72) = a6;
  *(v7 + 80) = a7;
  *(v7 + 56) = a4;
  *(v7 + 64) = a5;
  *(v7 + 40) = a1;
  *(v7 + 48) = a2;
  sub_18A4A76A8();
  *(v7 + 96) = sub_18A4A7698();
  v9 = sub_18A4A7678();
  *(v7 + 104) = v9;
  *(v7 + 112) = v8;

  return MEMORY[0x1EEE6DFA0](sub_189002E8C, v9, v8);
}

uint64_t sub_189002E8C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 15) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 16) = v2;
    *v2 = v0;
    v2[1] = sub_189002FA8;
    v3 = v0[9];
    v4 = v0[10];
    v5 = v0[7];
    v6 = v0[8];
    v7 = *(v0 + 6);

    return sub_189000F24(v7, v5, v6, v3, v4);
  }

  else
  {

    v9 = *(v0 + 5);
    v10 = *(v0 + 15) == 0;
    *v9 = 0u;
    *(v9 + 16) = 0u;
    *(v9 + 32) = v10;
    v11 = *(v0 + 1);

    return v11();
  }
}

uint64_t sub_189002FA8(double a1, double a2, double a3, double a4)
{
  v5 = *v4;
  v6 = *v4;
  v6[17] = a1;
  v6[18] = a2;
  v6[19] = a3;
  v6[20] = a4;

  swift_unknownObjectRelease();
  v7 = *(v5 + 14);
  v8 = *(v5 + 13);

  return MEMORY[0x1EEE6DFA0](sub_1890030F0, v8, v7);
}

uint64_t sub_1890030F0()
{
  v5 = *(v0 + 152);
  v6 = *(v0 + 136);

  v1 = *(v0 + 40);
  v2 = *(v0 + 120) == 0;
  *v1 = v6;
  *(v1 + 16) = v5;
  *(v1 + 32) = v2;
  v3 = *(v0 + 8);

  return v3();
}

void sub_189003178(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v13 = OBJC_IVAR____TtC5UIKit16UITextEffectView_sharedEffectViews;
  swift_beginAccess();
  v39 = v8;
  v14 = *&v8[v13];
  v40 = a7;
  v41 = a8;
  if ((v14 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_18A4A7F18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AC0);
    sub_189004C34();
    sub_18A4A77D8();
    v16 = v43[4];
    v15 = v43[5];
    v17 = v43[6];
    v18 = v43[7];
    v19 = v43[8];
  }

  else
  {
    v20 = -1 << *(v14 + 32);
    v15 = v14 + 56;
    v17 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v19 = v22 & *(v14 + 56);
    v16 = v14;
    swift_bridgeObjectRetain_n();
    v18 = 0;
  }

  v23 = (v17 + 64) >> 6;
  if (v16 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v24 = v18;
  v25 = v19;
  v26 = v18;
  if (v19)
  {
LABEL_12:
    v27 = (v25 - 1) & v25;
    v28 = *(*(v16 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));
    if (v28)
    {
      while (1)
      {
        v30 = *&v28[qword_1EA939D90] == a1 && *&v28[qword_1EA939D90 + 8] == a2;
        if (v30 || (sub_18A4A86C8() & 1) != 0)
        {
          break;
        }

        v18 = v26;
        v19 = v27;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        v29 = sub_18A4A7FB8();
        if (v29)
        {
          v43[0] = v29;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AC0);
          swift_dynamicCast();
          v28 = v42;
          v26 = v18;
          v27 = v19;
          if (v42)
          {
            continue;
          }
        }

        goto LABEL_23;
      }

      sub_188E036A4();

      sub_189003F30(v40, v41);
    }

    else
    {
LABEL_23:
      sub_188E036A4();

      v32 = a3(v31);
      [v39 addSubview_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AC0);

      v33 = v32;

      v34 = sub_189004F48(a1, a2, v33, a5, a6, v40, v41);

      swift_beginAccess();
      v28 = v34;
      sub_188E71794(v43, v28);
      v35 = v43[0];
      swift_endAccess();

      sub_189003F30(v40, v41);
    }
  }

  else
  {
    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v26 >= v23)
      {
        goto LABEL_23;
      }

      v25 = *(v15 + 8 * v26);
      ++v24;
      if (v25)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t UITextEffectView.EffectID.hash(into:)()
{
  sub_18A4A29D8();
  sub_189005014(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);

  return sub_18A4A71A8();
}

uint64_t UITextEffectView.EffectID.hashValue.getter()
{
  sub_18A4A8888();
  sub_18A4A29D8();
  sub_189005014(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);
  sub_18A4A71A8();
  return sub_18A4A88E8();
}

uint64_t sub_1890036C4()
{
  sub_18A4A8888();
  sub_18A4A29D8();
  sub_189005014(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);
  sub_18A4A71A8();
  return sub_18A4A88E8();
}

uint64_t sub_18900374C()
{
  sub_18A4A29D8();
  sub_189005014(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);

  return sub_18A4A71A8();
}

uint64_t sub_1890037D0()
{
  sub_18A4A8888();
  sub_18A4A29D8();
  sub_189005014(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);
  sub_18A4A71A8();
  return sub_18A4A88E8();
}

void *sub_189003860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = swift_allocObject();
  v15 = MEMORY[0x1E69E7CC0];
  result[4] = a6;
  result[5] = a7;
  result[8] = a4;
  result[9] = a5;
  result[6] = a2;
  result[7] = a3;
  result[2] = a1;
  result[3] = v15;
  return result;
}

uint64_t sub_1890038D8(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = a1;
  MEMORY[0x18CFE2450]();
  if (*((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_18A4A7588();
  }

  sub_18A4A75F8();
  swift_endAccess();
  return (*(v2 + 48))(v4);
}

uint64_t sub_1890039F0()
{
  result = swift_beginAccess();
  v2 = *(v0 + 24);
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

    return (*(v0 + 32))(result);
  }

  result = sub_18A4A7F68();
  v3 = result;
  if (!result)
  {
    return (*(v0 + 32))(result);
  }

LABEL_3:
  if (v3 >= 1)
  {

    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_188E4ABB4(v4, v2);
      }

      else
      {
        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      ++v4;
      v7 = [v5 view];
      [v7 removeFromSuperview];
    }

    while (v3 != v4);

    return (*(v0 + 32))(result);
  }

  __break(1u);
  return result;
}

uint64_t UITextEffectView.SharedEffectHandle.deinit()
{

  return v0;
}

uint64_t UITextEffectView.SharedEffectHandle.__deallocating_deinit()
{
  UITextEffectView.SharedEffectHandle.deinit();

  return swift_deallocClassInstance();
}

void sub_189003B80(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + qword_1EA939DA0);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

id sub_189003BA8()
{
  result = [*(v0 + qword_1EA939DB0) superview];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_189003BE4(char a1)
{
  (*(v1 + qword_1EA939DC0))();
  v3 = *(v1 + qword_1EA939DB0);

  return [v3 setHidden_];
}

void sub_189003C50(void *a1)
{
  v2 = v1;
  v4 = [a1 view];
  v5 = *(v2 + qword_1EA939DA8);
  v6 = [v5 subviews];
  sub_188A34624(0, &qword_1ED48F680);
  v7 = sub_18A4A7548();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64B710;
  *(inited + 32) = v4;
  v43 = v7;
  v9 = v4;
  sub_18920B994(inited);
  v10 = v7;
  if (!(v7 >> 62))
  {
    v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_10:
    x = 0.0;
    y = 0.0;
    width = 0.0;
    height = 0.0;
LABEL_11:

    v23 = (v2 + qword_1EA939DA0);
    *v23 = x;
    v23[1] = y;
    v23[2] = width;
    v23[3] = height;
    v24 = sub_189003BA8();
    [v9 frame];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = [a1 target];
    v34 = [v33 container];

    [v24 convertRect:v34 fromCoordinateSpace:{v26, v28, v30, v32}];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;

    [v9 setFrame_];
    [v5 addSubview_];

    return;
  }

  v11 = sub_18A4A7F68();
  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v11 >= 1)
  {
    v12 = 0;
    x = 0.0;
    y = 0.0;
    width = 0.0;
    height = 0.0;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v17 = sub_188E49300(v12, v10);
      }

      else
      {
        v17 = *(v10 + 8 * v12 + 32);
      }

      v18 = v17;
      ++v12;
      [v17 frame];
      v46.origin.x = v19;
      v46.origin.y = v20;
      v46.size.width = v21;
      v46.size.height = v22;
      v44.origin.x = x;
      v44.origin.y = y;
      v44.size.width = width;
      v44.size.height = height;
      v45 = CGRectUnion(v44, v46);
      x = v45.origin.x;
      y = v45.origin.y;
      width = v45.size.width;
      height = v45.size.height;
    }

    while (v11 != v12);
    goto LABEL_11;
  }

  __break(1u);
}

void *sub_189003F30(void *result, uint64_t a2)
{
  v3 = *&v2[qword_1EA939DB8];
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = v2;
    v8 = result;
    *&v2[qword_1EA939DB8] = v5;
    if (*&v2[qword_1EA939DB8] == 1)
    {
      (*&v2[qword_1EA939DC0])(0);
      [*&v2[qword_1EA939DB0] setHidden_];
    }

    type metadata accessor for UITextEffectView.SharedEffectHandle();
    v9 = *&v2[qword_1EA939DB0];
    v10 = swift_dynamicCastUnknownClassUnconditional();
    v11 = swift_allocObject();
    v11[2] = v8;
    v11[3] = a2;
    v11[4] = v6;
    v13 = *&v6[qword_1EA939DC8];
    v12 = *&v6[qword_1EA939DC8 + 8];
    v14 = swift_allocObject();
    v14[2] = v8;
    v14[3] = a2;
    v14[4] = v6;
    v15 = swift_allocObject();
    v15[3] = MEMORY[0x1E69E7CC0];
    v15[4] = sub_1890056A8;
    v15[8] = v13;
    v15[9] = v12;
    v15[5] = v14;
    v15[6] = sub_1890056CC;
    v15[7] = v11;
    v15[2] = v10;
    v16 = v9;

    v17 = v6;
    return v15;
  }

  return result;
}

void sub_1890040CC()
{
  v1 = *(v0 + qword_1EA939DB8);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + qword_1EA939DB8) = v3;
    if (!*(v0 + qword_1EA939DB8))
    {
      (*(v0 + qword_1EA939DC0))(1);
      v4 = *(v0 + qword_1EA939DB0);

      [v4 setHidden_];
    }
  }
}

id sub_189004190()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UITextEffectView.SharedEffect();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1890041EC(uint64_t a1)
{
}

uint64_t sub_189004274@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_189004C98();
  a1[1] = v2;
}

id UITextEffectView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_189004390(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_189004448()
{
  v1 = v0;
  v2 = [v0 window];
  if (v2)
  {
    v41 = v2;
    v3 = OBJC_IVAR____TtC5UIKit16UITextEffectView_sharedEffectViews;
    swift_beginAccess();
    v4 = *&v1[v3];
    v5 = MEMORY[0x1E695F050];
    if ((v4 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_18A4A7F18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AC0);
      sub_189004C34();
      sub_18A4A77D8();
      v7 = v43;
      v6 = v44;
      v8 = v45;
      v9 = v46;
      v10 = v47;
    }

    else
    {
      v11 = -1 << *(v4 + 32);
      v6 = v4 + 56;
      v8 = ~v11;
      v12 = -v11;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      else
      {
        v13 = -1;
      }

      v10 = v13 & *(v4 + 56);
      swift_bridgeObjectRetain_n();
      v9 = 0;
      v7 = v4;
    }

    x = *v5;
    y = v5[1];
    width = v5[2];
    height = v5[3];
    v18 = (v8 + 64) >> 6;
    if (v7 < 0)
    {
      goto LABEL_16;
    }

    while (1)
    {
      v19 = v9;
      v20 = v10;
      v21 = v9;
      if (!v10)
      {
        break;
      }

LABEL_14:
      v22 = (v20 - 1) & v20;
      v23 = *(*(v7 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
      if (!v23)
      {
LABEL_20:
        sub_188E036A4();

        v24 = v41;
        [v24 convertRect:v1 fromCoordinateSpace:{x, y, width, height}];
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v32 = v31;
        [v24 bounds];
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v40 = v39;

        v50.origin.x = v34;
        v50.origin.y = v36;
        v50.size.width = v38;
        v50.size.height = v40;
        v52.origin.x = v26;
        v52.origin.y = v28;
        v52.size.width = v30;
        v52.size.height = v32;
        v51 = CGRectIntersection(v50, v52);
        [v1 convertRect:v24 fromCoordinateSpace:{v51.origin.x, v51.origin.y, v51.size.width, v51.size.height}];

        return;
      }

      while (1)
      {
        v48.origin.x = x;
        v48.origin.y = y;
        v48.size.width = width;
        v48.size.height = height;
        v49 = CGRectUnion(v48, *&v23[qword_1EA939DA0]);
        x = v49.origin.x;
        y = v49.origin.y;
        width = v49.size.width;
        height = v49.size.height;

        v9 = v21;
        v10 = v22;
        if ((v7 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_16:
        if (sub_18A4A7FB8())
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934AC0);
          swift_dynamicCast();
          v23 = v42;
          v21 = v9;
          v22 = v10;
          if (v42)
          {
            continue;
          }
        }

        goto LABEL_20;
      }
    }

    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= v18)
      {
        goto LABEL_20;
      }

      v20 = *(v6 + 8 * v21);
      ++v19;
      if (v20)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    [v0 bounds];
  }
}

id sub_189004820(uint64_t a1, char *a2)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v3 = MEMORY[0x1E69E7CD0];
  *&a2[OBJC_IVAR____TtC5UIKit16UITextEffectView_managedSubviews] = MEMORY[0x1E69E7CD0];
  v4 = OBJC_IVAR____TtC5UIKit16UITextEffectView_textEffects;
  *&a2[v4] = sub_188E8E0EC(MEMORY[0x1E69E7CC0]);
  *&a2[OBJC_IVAR____TtC5UIKit16UITextEffectView_sharedEffectViews] = v3;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v7.receiver = a2;
  v7.super_class = type metadata accessor for UITextEffectView();
  v5 = objc_msgSendSuper2(&v7, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v5 setUserInteractionEnabled_];

  swift_unknownObjectRelease();
  return v5;
}

uint64_t type metadata accessor for UITextEffectView.EffectID()
{
  result = qword_1ED490888;
  if (!qword_1ED490888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1890049C4(uint64_t a1)
{
  v4 = *(type metadata accessor for UITextEffectView.EffectID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_188C482B4;

  return sub_1890018D4(a1, v7, v8, v9, v1 + v5, v1 + v6);
}

uint64_t sub_189004AF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936EA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_189004B58(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_188C48500;

  return sub_189002DE8(a1, a2, v6, a3, a4, a5, a6);
}

unint64_t sub_189004C34()
{
  result = qword_1EA939D88;
  if (!qword_1EA939D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA934AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA939D88);
  }

  return result;
}

void sub_189004CAC()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v1 = MEMORY[0x1E69E7CD0];
  *(v0 + OBJC_IVAR____TtC5UIKit16UITextEffectView_managedSubviews) = MEMORY[0x1E69E7CD0];
  v2 = OBJC_IVAR____TtC5UIKit16UITextEffectView_textEffects;
  *(v0 + v2) = sub_188E8E0EC(MEMORY[0x1E69E7CC0]);
  *(v0 + OBJC_IVAR____TtC5UIKit16UITextEffectView_sharedEffectViews) = v1;
  sub_18A4A8398();
  __break(1u);
}

id sub_189004D70(uint64_t a1, uint64_t a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *v7;
  v15 = *MEMORY[0x1E69E7D40];
  v16 = (v7 + qword_1EA939DA0);
  *v16 = 0u;
  v16[1] = 0u;
  [a3 frame];
  v21 = [objc_allocWithZone(UIView) initWithFrame_];
  v22 = qword_1EA939DA8;
  *(v7 + qword_1EA939DA8) = v21;
  v23 = swift_allocObject();
  *(v23 + 2) = *((v15 & v14) + 0x50);
  *(v23 + 3) = a6;
  *(v23 + 4) = a7;
  *(v23 + 5) = a3;
  v24 = (v7 + qword_1EA939DC0);
  *v24 = sub_1890056F0;
  v24[1] = v23;
  v25 = (v7 + qword_1EA939DC8);
  *v25 = a4;
  v25[1] = a5;
  v26 = swift_dynamicCastUnknownClassUnconditional();
  *(v7 + qword_1EA939DB0) = v26;
  *(v7 + qword_1EA939DB8) = 0;
  v27 = (v7 + qword_1EA939D90);
  *v27 = a1;
  v27[1] = a2;
  v28 = *(v7 + v22);
  v29 = a3;

  [v26 setMaskView_];
  v32.receiver = v7;
  v32.super_class = type metadata accessor for UITextEffectView.SharedEffect();
  return objc_msgSendSuper2(&v32, sel_init);
}

uint64_t sub_189005014(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_189005384()
{
  result = sub_18A4A29D8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}