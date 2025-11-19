uint64_t sub_1C1ACD1D8()
{
  v1 = OBJC_IVAR____TtC15PromotedContent31JourneyMetricsHelperDiagnostics_history;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);

  if (v3)
  {
    v5 = 0;
    v6 = (v2 + 48);
    while (v5 < *(v2 + 16))
    {
      v9 = *(v6 - 2);
      v8 = *(v6 - 1);
      v10 = *v6;
      if (v10 > 1)
      {
        if (v10 == 2)
        {
          sub_1C1ACCAF4(*(v6 - 2), *(v6 - 1), 2u);
          v7 = 33;
        }

        else
        {
          v7 = qword_1C1B9A080[v9];
        }
      }

      else if (*v6)
      {
        sub_1C1ACCAF4(*(v6 - 2), *(v6 - 1), 1u);
        v7 = 63;
      }

      else
      {
        v7 = 78;
      }

      ++v5;
      MEMORY[0x1C6906DF0](v7, 0xE100000000000000);

      result = sub_1C1ACCBB8(v9, v8, v10);
      v6 += 32;
      if (v3 == v5)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    return 0;
  }

  return result;
}

uint64_t sub_1C1ACD320()
{
  v36 = sub_1C1B94588();
  v1 = *(v36 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC15PromotedContent31JourneyMetricsHelperDiagnostics_history;
  swift_beginAccess();
  v6 = *(v0 + v5);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v42 = MEMORY[0x1E69E7CC0];

    sub_1C1AC7E04(0, v7, 0);
    v8 = v42;
    v32 = v6;
    v33 = 0x80000001C1BA71A0;
    v34 = (v1 + 8);
    v35 = "ed.  Used to be ";
    v9 = (v6 + 56);
    while (1)
    {
      v11 = *(v9 - 3);
      v10 = *(v9 - 2);
      v12 = *(v9 - 8);
      v13 = *v9;
      sub_1C1B944E8();
      v14 = objc_allocWithZone(MEMORY[0x1E696AB78]);
      v15 = [v14 init];
      v16 = sub_1C1B94D78();
      [v15 setDateFormat_];

      v17 = sub_1C1B94538();
      v18 = [v15 stringFromDate_];

      v19 = sub_1C1B94D88();
      v21 = v20;

      v40 = v19;
      v41 = v21;
      MEMORY[0x1C6906DF0](32, 0xE100000000000000);
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          if (v11 <= 3)
          {
            if (v11 > 1)
            {
              if (v11 ^ 2 | v10)
              {
                v10 = 0xE800000000000000;
                v11 = 0x6465646E61707865;
              }

              else
              {
                v10 = 0xE500000000000000;
                v11 = 0x7964616572;
              }
            }

            else if (v11 | v10)
            {
              v10 = 0xE600000000000000;
              v11 = 0x646564616F6CLL;
            }

            else
            {
              v10 = 0xE700000000000000;
              v11 = 0x64657461657263;
            }
          }

          else if (v11 <= 5)
          {
            if (v11 ^ 4 | v10)
            {
              v10 = 0xE800000000000000;
              v11 = 0x6E65657263536E6FLL;
            }

            else
            {
              v11 = 0x657370616C6C6F63;
              v10 = 0xE900000000000064;
            }
          }

          else if (v11 ^ 6 | v10)
          {
            if (v11 ^ 7 | v10)
            {
              v10 = 0xE800000000000000;
              v11 = 0x646564616F6C6E75;
            }

            else
            {
              v11 = 0x74736F6E67616944;
              v10 = 0xEF706D7544206369;
            }
          }

          else
          {
            v10 = 0xE90000000000006ELL;
            v11 = 0x656572635366666FLL;
          }

          goto LABEL_10;
        }

        v38 = 0x3A524F525245;
        v39 = 0xE600000000000000;
        v23 = v11;
        v24 = v10;
      }

      else
      {
        if (v12)
        {

          goto LABEL_10;
        }

        v38 = 0;
        v39 = 0xE000000000000000;
        sub_1C1B95468();

        v38 = 0xD00000000000001BLL;
        v39 = v33;
        v37 = v11;
        v22 = sub_1C1B95858();
        MEMORY[0x1C6906DF0](v22);

        v23 = 41;
        v24 = 0xE100000000000000;
      }

      MEMORY[0x1C6906DF0](v23, v24);
      v11 = v38;
      v10 = v39;
LABEL_10:
      MEMORY[0x1C6906DF0](v11, v10);

      v25 = v40;
      v26 = v41;
      (*v34)(v4, v36);
      v42 = v8;
      v28 = *(v8 + 16);
      v27 = *(v8 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1C1AC7E04((v27 > 1), v28 + 1, 1);
        v8 = v42;
      }

      *(v8 + 16) = v28 + 1;
      v29 = v8 + 16 * v28;
      *(v29 + 32) = v25;
      *(v29 + 40) = v26;
      v9 += 4;
      if (!--v7)
      {

        break;
      }
    }
  }

  v40 = v8;
  sub_1C1AC1F08(&unk_1EBF07AA0, &qword_1C1B98CF0);
  sub_1C1ACE700();
  v30 = sub_1C1B94D58();

  return v30;
}

uint64_t sub_1C1ACD800(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  if (*(v1 + OBJC_IVAR____TtC15PromotedContent31JourneyMetricsHelperDiagnostics_lastReadyIdentifier + 8))
  {
    v5 = 82;
  }

  else
  {
    v5 = 95;
  }

  MEMORY[0x1C6906DF0](v5, 0xE100000000000000);

  v6 = sub_1C1ACD1D8();
  v8 = v7;
  v9 = JourneyMetricsHelperDiagnostics.EventType.initial.getter();

  MEMORY[0x1C6906DF0](v9, 0xE100000000000000);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = [v12 identifier];
      swift_unknownObjectRelease();
      v14 = sub_1C1B94D88();
      v24 = v15;
      v25 = v14;

      sub_1C1B95468();

      MEMORY[0x1C6906DF0](46, 0xE100000000000000);
      MEMORY[0x1C6906DF0](v6, v8);

      MEMORY[0x1C6906DF0](0xD000000000000014, 0x80000001C1BA7380);
      v16 = JourneyMetricsHelperDiagnostics.EventType.description.getter();
      MEMORY[0x1C6906DF0](v16);

      MEMORY[0x1C6906DF0](1531138080, 0xE400000000000000);
      MEMORY[0x1C6906DF0](v25, v24);

      MEMORY[0x1C6906DF0](93, 0xE100000000000000);
      sub_1C1B95118();
      sub_1C1AC53E4();
      v17 = sub_1C1B95298();
      sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1C1B98E60;
      *(v18 + 56) = MEMORY[0x1E69E6158];
      *(v18 + 64) = sub_1C1AA5E7C();
      *(v18 + 32) = 0;
      *(v18 + 40) = 0xE000000000000000;
      sub_1C1B94BA8();

LABEL_11:
    }
  }

  if (v4 != 3 || v3 | v2)
  {
    sub_1C1B95118();
    sub_1C1AC53E4();
    v17 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1C1B98E60;
    v21 = JourneyMetricsHelperDiagnostics.EventType.description.getter();
    v23 = v22;
    *(v20 + 56) = MEMORY[0x1E69E6158];
    *(v20 + 64) = sub_1C1AA5E7C();
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    sub_1C1B94BA8();
    goto LABEL_11;
  }

  return result;
}

id JourneyMetricsHelperDiagnostics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id JourneyMetricsHelperDiagnostics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JourneyMetricsHelperDiagnostics();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1C1ACDD20(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C1AC1F08(&qword_1EBF07E50, &qword_1C1B9A040);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1C1ACDE74(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C1AC1F08(&qword_1EBF07E78, &unk_1C1B9A070);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C1ACDF80(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C1AC1F08(&qword_1EBF07B60, &qword_1C1B9A030);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1C1ACE08C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C1AC1F08(&qword_1EBF07E28, &qword_1C1B9A010);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_1C1ACE1CC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1C1AC1F08(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

void *sub_1C1ACE3BC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
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

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1C1AC1F08(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C1AC1F08(&qword_1EBF07E60, &unk_1C1B9A050);
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1C1ACE4E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C1AC1F08(&qword_1EBF07E40, &qword_1C1B9A028);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C1ACE5F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C1AC1F08(&qword_1EBF07E38, &qword_1C1B9A020);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1C1ACE700()
{
  result = qword_1EBF07D10;
  if (!qword_1EBF07D10)
  {
    sub_1C1AC3404(&unk_1EBF07AA0, &qword_1C1B98CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07D10);
  }

  return result;
}

__n128 sub_1C1ACE808(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C1ACE81C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C1ACE864(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

__n128 sub_1C1ACE8B8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C1ACE8C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 32))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C1ACE90C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JourneyMetricsHelperDiagnostics.EventType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JourneyMetricsHelperDiagnostics.EventType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricEventsTrackingDTO.WrappedType(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MetricEventsTrackingDTO.WrappedType(_WORD *result, int a2, int a3)
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

unint64_t sub_1C1ACEC68()
{
  result = qword_1EBF07D20;
  if (!qword_1EBF07D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07D20);
  }

  return result;
}

unint64_t sub_1C1ACECC0()
{
  result = qword_1EBF07D28;
  if (!qword_1EBF07D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07D28);
  }

  return result;
}

unint64_t sub_1C1ACED18()
{
  result = qword_1EBF07D30;
  if (!qword_1EBF07D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07D30);
  }

  return result;
}

unint64_t sub_1C1ACED70()
{
  result = qword_1EBF07D38;
  if (!qword_1EBF07D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07D38);
  }

  return result;
}

unint64_t sub_1C1ACEDC8()
{
  result = qword_1EBF07D40;
  if (!qword_1EBF07D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07D40);
  }

  return result;
}

unint64_t sub_1C1ACEE20()
{
  result = qword_1EBF07D48;
  if (!qword_1EBF07D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07D48);
  }

  return result;
}

unint64_t sub_1C1ACEE78()
{
  result = qword_1EBF07D50;
  if (!qword_1EBF07D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07D50);
  }

  return result;
}

unint64_t sub_1C1ACEED0()
{
  result = qword_1EBF07D58;
  if (!qword_1EBF07D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07D58);
  }

  return result;
}

unint64_t sub_1C1ACEF28()
{
  result = qword_1EBF07D60;
  if (!qword_1EBF07D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07D60);
  }

  return result;
}

unint64_t sub_1C1ACEF80()
{
  result = qword_1EBF07D68;
  if (!qword_1EBF07D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07D68);
  }

  return result;
}

unint64_t sub_1C1ACEFD8()
{
  result = qword_1EBF07D70;
  if (!qword_1EBF07D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07D70);
  }

  return result;
}

unint64_t sub_1C1ACF030()
{
  result = qword_1EBF07D78;
  if (!qword_1EBF07D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07D78);
  }

  return result;
}

unint64_t sub_1C1ACF088()
{
  result = qword_1EBF07D80;
  if (!qword_1EBF07D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07D80);
  }

  return result;
}

unint64_t sub_1C1ACF0E0()
{
  result = qword_1EBF07D88;
  if (!qword_1EBF07D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07D88);
  }

  return result;
}

unint64_t sub_1C1ACF138()
{
  result = qword_1EBF07D90;
  if (!qword_1EBF07D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07D90);
  }

  return result;
}

unint64_t sub_1C1ACF190()
{
  result = qword_1EBF07D98;
  if (!qword_1EBF07D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07D98);
  }

  return result;
}

unint64_t sub_1C1ACF1E8()
{
  result = qword_1EBF07DA0;
  if (!qword_1EBF07DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07DA0);
  }

  return result;
}

unint64_t sub_1C1ACF240()
{
  result = qword_1EBF07DA8;
  if (!qword_1EBF07DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07DA8);
  }

  return result;
}

unint64_t sub_1C1ACF298()
{
  result = qword_1EBF07DB0;
  if (!qword_1EBF07DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07DB0);
  }

  return result;
}

unint64_t sub_1C1ACF2F0()
{
  result = qword_1EBF07DB8;
  if (!qword_1EBF07DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07DB8);
  }

  return result;
}

unint64_t sub_1C1ACF348()
{
  result = qword_1EBF07DC0;
  if (!qword_1EBF07DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07DC0);
  }

  return result;
}

unint64_t sub_1C1ACF3A0()
{
  result = qword_1EBF07DC8;
  if (!qword_1EBF07DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07DC8);
  }

  return result;
}

unint64_t sub_1C1ACF3F8()
{
  result = qword_1EBF07DD0;
  if (!qword_1EBF07DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07DD0);
  }

  return result;
}

unint64_t sub_1C1ACF450()
{
  result = qword_1EBF07DD8;
  if (!qword_1EBF07DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07DD8);
  }

  return result;
}

unint64_t sub_1C1ACF4A8()
{
  result = qword_1EBF07DE0;
  if (!qword_1EBF07DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07DE0);
  }

  return result;
}

unint64_t sub_1C1ACF500()
{
  result = qword_1EBF07DE8;
  if (!qword_1EBF07DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07DE8);
  }

  return result;
}

unint64_t sub_1C1ACF558()
{
  result = qword_1EBF07DF0;
  if (!qword_1EBF07DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07DF0);
  }

  return result;
}

unint64_t sub_1C1ACF5B0()
{
  result = qword_1EBF07DF8;
  if (!qword_1EBF07DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07DF8);
  }

  return result;
}

unint64_t sub_1C1ACF608()
{
  result = qword_1EBF07E00;
  if (!qword_1EBF07E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07E00);
  }

  return result;
}

unint64_t sub_1C1ACF660()
{
  result = qword_1EBF07E08;
  if (!qword_1EBF07E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07E08);
  }

  return result;
}

unint64_t sub_1C1ACF6B8()
{
  result = qword_1EBF07E10;
  if (!qword_1EBF07E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07E10);
  }

  return result;
}

unint64_t sub_1C1ACF710()
{
  result = qword_1EBF07E18;
  if (!qword_1EBF07E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07E18);
  }

  return result;
}

unint64_t sub_1C1ACF768()
{
  result = qword_1EBF07E20;
  if (!qword_1EBF07E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07E20);
  }

  return result;
}

uint64_t sub_1C1ACF7BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64657461657263 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C1B95888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646564616F6CLL && a2 == 0xE600000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7964616572 && a2 == 0xE500000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6465646E61707865 && a2 == 0xE800000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E61707845746F6ELL && a2 == 0xEC000000676E6964 || (sub_1C1B95888() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657370616C6C6F63 && a2 == 0xE900000000000064 || (sub_1C1B95888() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E65657263536E6FLL && a2 == 0xE800000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656572635366666FLL && a2 == 0xE90000000000006ELL || (sub_1C1B95888() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x74736F6E67616964 && a2 == 0xEA00000000006369 || (sub_1C1B95888() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x646564616F6C6E75 && a2 == 0xE800000000000000)
  {

    return 11;
  }

  else
  {
    v6 = sub_1C1B95888();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

id sub_1C1ACFB88()
{
  v1 = v0;
  v2 = sub_1C1B94588();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC15PromotedContent31JourneyMetricsHelperDiagnostics_history] = MEMORY[0x1E69E7CC0];
  v7 = OBJC_IVAR____TtC15PromotedContent31JourneyMetricsHelperDiagnostics_createdDate;
  sub_1C1B94578();
  sub_1C1B944F8();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  *&v1[v7] = v9;
  v10 = &v1[OBJC_IVAR____TtC15PromotedContent31JourneyMetricsHelperDiagnostics_lastReadyIdentifier];
  *v10 = 0;
  *(v10 + 1) = 0;
  swift_unknownObjectWeakAssign();
  v11 = type metadata accessor for JourneyMetricsHelperDiagnostics();
  v18.receiver = v1;
  v18.super_class = v11;
  v12 = objc_msgSendSuper2(&v18, sel_init);
  v16[0] = 0;
  v16[1] = 0;
  v17 = 3;
  v13 = v12;
  sub_1C1ACCE70(v16);

  return v13;
}

uint64_t sub_1C1ACFD40(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x654D73656E755469;
  }

  else
  {
    v4 = 0x6E6564496D616461;
  }

  if (v3)
  {
    v5 = 0xEE00726569666974;
  }

  else
  {
    v5 = 0xEE00617461646174;
  }

  if (*a2)
  {
    v6 = 0x654D73656E755469;
  }

  else
  {
    v6 = 0x6E6564496D616461;
  }

  if (*a2)
  {
    v7 = 0xEE00617461646174;
  }

  else
  {
    v7 = 0xEE00726569666974;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C1B95888();
  }

  return v9 & 1;
}

uint64_t sub_1C1ACFE00()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1ACFE9C()
{
  *v0;
  sub_1C1B94DE8();
}

uint64_t sub_1C1ACFF24()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1ACFFBC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1C1B955F8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1C1AD001C(uint64_t *a1@<X8>)
{
  v2 = 0x6E6564496D616461;
  if (*v1)
  {
    v2 = 0x654D73656E755469;
  }

  v3 = 0xEE00726569666974;
  if (*v1)
  {
    v3 = 0xEE00617461646174;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C1AD0074()
{
  if (*v0)
  {
    result = 0x654D73656E755469;
  }

  else
  {
    result = 0x6E6564496D616461;
  }

  *v0;
  return result;
}

uint64_t sub_1C1AD00C8@<X0>(char *a1@<X8>)
{
  v2 = sub_1C1B955F8();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1C1AD012C(uint64_t a1)
{
  v2 = sub_1C1AD0B04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AD0168(uint64_t a1)
{
  v2 = sub_1C1AD0B04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id StoreTapAction.__allocating_init(adamIdentifier:iTunesMetadata:confirmedClickInterval:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC15PromotedContent14StoreTapAction_adamIdentifier] = a1;
  *&v5[OBJC_IVAR____TtC15PromotedContent14StoreTapAction_iTunesMetadata] = a2;
  *&v5[OBJC_IVAR___APPCTapAction_actionType] = 2;
  *&v5[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = 0x3FF0000000000000;
  v7.receiver = v5;
  v7.super_class = type metadata accessor for TapAction();
  return objc_msgSendSuper2(&v7, sel_init);
}

id StoreTapAction.init(adamIdentifier:iTunesMetadata:confirmedClickInterval:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC15PromotedContent14StoreTapAction_adamIdentifier] = a1;
  *&v2[OBJC_IVAR____TtC15PromotedContent14StoreTapAction_iTunesMetadata] = a2;
  *&v2[OBJC_IVAR___APPCTapAction_actionType] = 2;
  *&v2[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = 0x3FF0000000000000;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TapAction();
  return objc_msgSendSuper2(&v4, sel_init);
}

id StoreTapAction.__allocating_init(_:)(char *a1)
{
  return sub_1C1AD02F0(a1, &OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_adamIdentifier, &OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_iTunesMetadata, "Unable to initialize StoreTapAction from MobileRichAdInterfaceDefinitionTapAction because of missing required fields.");
}

{
  return sub_1C1AD02F0(a1, &OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_adamIdentifier, &OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_iTunesMetadata, "Unable to initialize StoreTapAction from OutstreamVideoTapAction because of missing required fields.");
}

id sub_1C1AD02F0(char *a1, void *a2, void *a3, const char *a4)
{
  v5 = *&a1[*a2];
  if (v5 && (v6 = *&a1[*a3]) != 0)
  {
    v7 = objc_allocWithZone(type metadata accessor for StoreTapAction());
    *&v7[OBJC_IVAR____TtC15PromotedContent14StoreTapAction_adamIdentifier] = v5;
    *&v7[OBJC_IVAR____TtC15PromotedContent14StoreTapAction_iTunesMetadata] = v6;
    *&v7[OBJC_IVAR___APPCTapAction_actionType] = 2;
    *&v7[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = 0x3FF0000000000000;
    v16.receiver = v7;
    v16.super_class = type metadata accessor for TapAction();
    v8 = v5;

    v9 = objc_msgSendSuper2(&v16, sel_init);

    return v9;
  }

  else
  {
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v12 = sub_1C1B94BE8();
    sub_1C1AB4454(v12, qword_1EDE6D058);
    v13 = sub_1C1B94BC8();
    v14 = sub_1C1B95118();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1C1AA2000, v13, v14, a4, v15, 2u);
      MEMORY[0x1C6908230](v15, -1, -1);
    }

    return 0;
  }
}

void *sub_1C1AD04D4(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF07EC0, &unk_1C1B9A240);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AD0B04();
  sub_1C1B95A08();
  if (v2)
  {
    sub_1C1AA86F8(a1);
    type metadata accessor for StoreTapAction();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v14[0]) = 0;
    sub_1C1B956B8();
    v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    *&v1[OBJC_IVAR____TtC15PromotedContent14StoreTapAction_adamIdentifier] = v13;
    sub_1C1AC1F08(&qword_1EBF07EA0, &qword_1C1B9ACD0);
    v15 = 1;
    sub_1C1AD0C9C(&unk_1EDE6BBF0);
    sub_1C1B956F8();
    *&v1[OBJC_IVAR____TtC15PromotedContent14StoreTapAction_iTunesMetadata] = v14[0];
    sub_1C1B95628();
    v3 = TapAction.init(from:)(v14);
    (*(v6 + 8))(v9, v5);
    sub_1C1AA86F8(a1);
  }

  return v3;
}

uint64_t sub_1C1AD07C0(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF07E90, &qword_1C1B9A0C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AD0B04();
  sub_1C1B95A18();
  [*(v3 + OBJC_IVAR____TtC15PromotedContent14StoreTapAction_adamIdentifier) doubleValue];
  LOBYTE(v12[0]) = 0;
  sub_1C1B957C8();
  if (!v2)
  {
    v12[0] = *(v3 + OBJC_IVAR____TtC15PromotedContent14StoreTapAction_iTunesMetadata);
    v13 = 1;
    sub_1C1AC1F08(&qword_1EBF07EA0, &qword_1C1B9ACD0);
    sub_1C1AD0C9C(&qword_1EDE6BC00);
    sub_1C1B95808();
    sub_1C1B95738();
    sub_1C1B3BBE0(v12);
    sub_1C1AA86F8(v12);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1C1AD0A20()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent14StoreTapAction_iTunesMetadata);
}

id StoreTapAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoreTapAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C1AD0B04()
{
  result = qword_1EBF07E98;
  if (!qword_1EBF07E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07E98);
  }

  return result;
}

unint64_t sub_1C1AD0B98()
{
  result = qword_1EBF07EA8;
  if (!qword_1EBF07EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07EA8);
  }

  return result;
}

unint64_t sub_1C1AD0BF0()
{
  result = qword_1EBF07EB0;
  if (!qword_1EBF07EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07EB0);
  }

  return result;
}

unint64_t sub_1C1AD0C48()
{
  result = qword_1EBF07EB8;
  if (!qword_1EBF07EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07EB8);
  }

  return result;
}

uint64_t sub_1C1AD0C9C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(&qword_1EBF07EA0, &qword_1C1B9ACD0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

PromotedContent::FrequencyCapStorageType_optional __swiftcall FrequencyCapStorageType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C1B955F8();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FrequencyCapStorageType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x614C686372616573;
  v3 = 0x6F6C537961646F74;
  if (v1 != 5)
  {
    v3 = 0x6F6C537961646F74;
  }

  v4 = 0x50746375646F7270;
  if (v1 != 3)
  {
    v4 = 0x6F6C537961646F74;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6552686372616573;
  if (v1 != 1)
  {
    v5 = 0x6F44676E69727564;
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

unint64_t sub_1C1AD0EC0()
{
  result = qword_1EBF07EC8;
  if (!qword_1EBF07EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07EC8);
  }

  return result;
}

uint64_t sub_1C1AD0F20()
{
  *v0;
  *v0;
  *v0;
  *v0;
  sub_1C1B94DE8();
}

void sub_1C1AD107C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000676E69646ELL;
  v4 = 0x614C686372616573;
  v5 = 0x6F6C537961646F74;
  v6 = 0xEA00000000003374;
  if (v2 == 5)
  {
    v6 = 0xEA00000000003274;
  }

  else
  {
    v5 = 0x6F6C537961646F74;
  }

  v7 = 0xEB00000000656761;
  v8 = 0x50746375646F7270;
  if (v2 != 3)
  {
    v8 = 0x6F6C537961646F74;
    v7 = 0xEA00000000003174;
  }

  if (*v1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xED000073746C7573;
  v10 = 0x6552686372616573;
  if (v2 != 1)
  {
    v10 = 0x6F44676E69727564;
    v9 = 0xEE0064616F6C6E77;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for FrequencyCapStorageType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FrequencyCapStorageType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t ClientLayoutAsset.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCClientLayoutAsset_name);
  v2 = *(v0 + OBJC_IVAR___APPCClientLayoutAsset_name + 8);

  return v1;
}

uint64_t ClientLayoutAsset.adamId.getter()
{
  result = *(v0 + OBJC_IVAR___APPCClientLayoutAsset_adamId);
  v2 = *(v0 + OBJC_IVAR___APPCClientLayoutAsset_adamId + 8);
  return result;
}

uint64_t ClientLayoutAsset.treatment.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCClientLayoutAsset_treatment);
  v2 = *(v0 + OBJC_IVAR___APPCClientLayoutAsset_treatment + 8);

  return v1;
}

id ClientLayoutAsset.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C1AD1418()
{
  v1 = 1701667182;
  v2 = 0x64496D616461;
  if (*v0 != 2)
  {
    v2 = 0x6E656D7461657274;
  }

  if (*v0)
  {
    v1 = 0x666E497465737361;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C1AD1498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1AD2030(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1AD14CC(uint64_t a1)
{
  v2 = sub_1C1AD1848();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AD1508(uint64_t a1)
{
  v2 = sub_1C1AD1848();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ClientLayoutAsset.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientLayoutAsset();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C1AD1600(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF07EF0, &qword_1C1B9A3B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AD1848();
  sub_1C1B95A18();
  v11 = *(v3 + OBJC_IVAR___APPCClientLayoutAsset_name);
  v12 = *(v3 + OBJC_IVAR___APPCClientLayoutAsset_name + 8);
  v20 = 0;
  sub_1C1B95748();
  if (!v2)
  {
    v19 = *(v3 + OBJC_IVAR___APPCClientLayoutAsset_assetInfoArray);
    v18[15] = 1;
    sub_1C1AC1F08(&qword_1EBF07F00, &qword_1C1B9A3B8);
    sub_1C1AD1C0C(&qword_1EBF07F08, &qword_1EBF07F10);
    sub_1C1B95788();
    v13 = *(v3 + OBJC_IVAR___APPCClientLayoutAsset_adamId);
    v14 = *(v3 + OBJC_IVAR___APPCClientLayoutAsset_adamId + 8);
    v18[14] = 2;
    sub_1C1B95798();
    v15 = *(v3 + OBJC_IVAR___APPCClientLayoutAsset_treatment);
    v16 = *(v3 + OBJC_IVAR___APPCClientLayoutAsset_treatment + 8);
    v18[13] = 3;
    sub_1C1B95748();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1C1AD1848()
{
  result = qword_1EBF07EF8;
  if (!qword_1EBF07EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07EF8);
  }

  return result;
}

id ClientLayoutAsset.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF07F18, &qword_1C1B9A3C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AD1848();
  sub_1C1B95A08();
  if (v2)
  {
    sub_1C1AA86F8(a1);
    type metadata accessor for ClientLayoutAsset();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v25) = 0;
    v11 = sub_1C1B95638();
    v13 = &v1[OBJC_IVAR___APPCClientLayoutAsset_name];
    *v13 = v11;
    v13[1] = v14;
    sub_1C1AC1F08(&qword_1EBF07F00, &qword_1C1B9A3B8);
    v24 = 1;
    sub_1C1AD1C0C(&qword_1EBF07F20, &qword_1EBF07F28);
    sub_1C1B95678();
    *&v1[OBJC_IVAR___APPCClientLayoutAsset_assetInfoArray] = v25;
    LOBYTE(v25) = 2;
    v15 = sub_1C1B95688();
    v16 = &v1[OBJC_IVAR___APPCClientLayoutAsset_adamId];
    *v16 = v15;
    v16[8] = v17 & 1;
    LOBYTE(v25) = 3;
    v18 = sub_1C1B95638();
    v19 = &v1[OBJC_IVAR___APPCClientLayoutAsset_treatment];
    *v19 = v18;
    v19[1] = v20;
    v21 = type metadata accessor for ClientLayoutAsset();
    v23.receiver = v1;
    v23.super_class = v21;
    v3 = objc_msgSendSuper2(&v23, sel_init);
    (*(v6 + 8))(v9, v5);
    sub_1C1AA86F8(a1);
  }

  return v3;
}

uint64_t sub_1C1AD1C0C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(&qword_1EBF07F00, &qword_1C1B9A3B8);
    sub_1C1AD1C94(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C1AD1C94(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ClientLayoutAssetInfo();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1C1AD1CD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ClientLayoutAsset());
  result = ClientLayoutAsset.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClientLayoutAsset.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClientLayoutAsset.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C1AD1F2C()
{
  result = qword_1EBF07F30;
  if (!qword_1EBF07F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07F30);
  }

  return result;
}

unint64_t sub_1C1AD1F84()
{
  result = qword_1EBF07F38;
  if (!qword_1EBF07F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07F38);
  }

  return result;
}

unint64_t sub_1C1AD1FDC()
{
  result = qword_1EBF07F40;
  if (!qword_1EBF07F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF07F40);
  }

  return result;
}

uint64_t sub_1C1AD2030(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C1B95888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x666E497465737361 && a2 == 0xEE0079617272416FLL || (sub_1C1B95888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64496D616461 && a2 == 0xE600000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E656D7461657274 && a2 == 0xE900000000000074)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C1B95888();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

char *sub_1C1AD26A0()
{
  v1 = v0;
  v2 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v45 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - v6;
  v8 = sub_1C1B94588();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v0 + OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_storeFront;
  v14 = *(v0 + OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_storeFront);
  v15 = *(v13 + 8);
  v16 = *(v1 + OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_storeFrontLocale);
  v17 = *(v1 + OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_storeFrontLocale + 8);
  objc_allocWithZone(type metadata accessor for AppStoreSupplementalContext());

  v18 = AppStoreSupplementalContext.init(storeFront:storeFrontLocale:)(v14, v15, v16, v17);
  v19 = *(v1 + OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_impressionCap);
  if (v19)
  {
    v20 = OBJC_IVAR___APPCAppStoreSupplementalContext_impressionCap;
    swift_beginAccess();
    v21 = *&v18[v20];
    *&v18[v20] = v19;
  }

  v22 = *(v1 + OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_clickCap);
  if (v22)
  {
    v23 = OBJC_IVAR___APPCAppStoreSupplementalContext_clickCap;
    swift_beginAccess();
    v24 = *&v18[v23];
    *&v18[v23] = v22;
  }

  v25 = OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_additionalImpressionCaps;
  swift_beginAccess();
  v26 = *(v1 + v25);
  v27 = OBJC_IVAR___APPCAppStoreSupplementalContext_additionalImpressionCaps;
  swift_beginAccess();
  v28 = *&v18[v27];
  *&v18[v27] = v26;

  v29 = OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_additionalClickCaps;
  swift_beginAccess();
  v30 = *(v1 + v29);
  v31 = OBJC_IVAR___APPCAppStoreSupplementalContext_additionalClickCaps;
  swift_beginAccess();
  v32 = *&v18[v31];
  *&v18[v31] = v30;

  v33 = *(v1 + OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_adamId + 8);
  if (v33)
  {
    v34 = *(v1 + OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_adamId);
    v35 = &v18[OBJC_IVAR___APPCAppStoreSupplementalContext_adamId];
    swift_beginAccess();
    v36 = *(v35 + 1);
    *v35 = v34;
    *(v35 + 1) = v33;
  }

  v37 = *(v1 + OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_appMetadataFields);
  if (v37)
  {
    v38 = OBJC_IVAR___APPCAppStoreSupplementalContext_appMetadataFields;
    swift_beginAccess();
    v39 = *&v18[v38];
    *&v18[v38] = v37;
  }

  v40 = OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_requestTime;
  swift_beginAccess();
  sub_1C1AA7E30(v1 + v40, v7, &qword_1EBF07F50, &qword_1C1B9A590);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1C1ABBAF4(v7);
  }

  else
  {
    v41 = *(v9 + 32);
    v41(v12, v7, v8);
    v42 = v45;
    v41(v45, v12, v8);
    (*(v9 + 56))(v42, 0, 1, v8);
    v43 = OBJC_IVAR___APPCAppStoreSupplementalContext_requestTime;
    swift_beginAccess();
    sub_1C1AABE90(v42, &v18[v43]);
    swift_endAccess();
  }

  return v18;
}

id AppStoreSupplementalContextBuilder.init(storeFront:storeFrontLocale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_impressionCap] = 0;
  *&v4[OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_clickCap] = 0;
  v9 = OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_additionalImpressionCaps;
  v10 = MEMORY[0x1E69E7CC0];
  *&v4[v9] = sub_1C1AD40A0(MEMORY[0x1E69E7CC0]);
  v11 = OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_additionalClickCaps;
  *&v4[v11] = sub_1C1AD40A0(v10);
  v12 = &v4[OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_adamId];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v4[OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_appMetadataFields] = 0;
  v13 = OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_requestTime;
  v14 = sub_1C1B94588();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v15 = &v4[OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_storeFront];
  *v15 = a1;
  *(v15 + 1) = a2;
  v16 = &v4[OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_storeFrontLocale];
  *v16 = a3;
  *(v16 + 1) = a4;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for AppStoreSupplementalContextBuilder();
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t sub_1C1AD2CBC(uint64_t a1, void *a2)
{
  v3 = *(v2 + *a2);
  *(v2 + *a2) = a1;
}

unint64_t sub_1C1AD2D08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    result = sub_1C1AE4068(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v16;
  }

  else
  {
    v9 = *v2;
    result = sub_1C1AD8AE8(a2);
    if (v10)
    {
      v11 = result;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v17 = *v3;
      if (!v13)
      {
        sub_1C1ADA820();
        v14 = v17;
      }

      v15 = *(*(v14 + 56) + 8 * v11);

      result = sub_1C1AD371C(v11, v14);
      *v3 = v14;
    }
  }

  return result;
}

uint64_t sub_1C1AD2DC8(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v6 = *v3;
  if (a2 == -1)
  {
    v12 = *v3;
    v13 = sub_1C1AD8BA0(a3);
    if (v14)
    {
      v15 = v13;
      v16 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v4;
      v26 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1C1ADA990();
        v18 = v26;
      }

      v19 = *(v18 + 48);
      v20 = sub_1C1B944A8();
      v21 = *(v20 - 8);
      v22 = *(v21 + 8);
      v22(v19 + *(v21 + 72) * v15, v20);
      sub_1C1AD4AEC(*(*(v18 + 56) + 16 * v15), *(*(v18 + 56) + 16 * v15 + 8));
      sub_1C1AD3A40(v15, v18);
      result = (v22)(a3, v20);
      *v4 = v18;
    }

    else
    {
      v23 = sub_1C1B944A8();
      v24 = *(*(v23 - 8) + 8);

      return v24(a3, v23);
    }
  }

  else
  {
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v4;
    sub_1C1AE41E0(a1, a2 & 1, a3, v9);
    v10 = sub_1C1B944A8();
    result = (*(*(v10 - 8) + 8))(a3, v10);
    *v4 = v25;
  }

  return result;
}

uint64_t sub_1C1AD2FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_1C1AE458C(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_1C1AA7C14(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_1C1ADAD98();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_1C1AD356C(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_1C1AD30AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1C1AE43C8(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1C1AA7C14(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_1C1ADAC24();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_1C1AD3D04(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_1C1AD31B0(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (a2)
  {
    v3 = result;
    v4 = *a3;
    swift_beginAccess();

    sub_1C1AD2D08(v5, v3);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1C1AD3220(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_adamId);
  v4 = *(v2 + OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_adamId + 8);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1C1AD326C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_appMetadataFields);
  *(v1 + OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_appMetadataFields) = a1;
}

uint64_t sub_1C1AD32B0(uint64_t a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  v7 = sub_1C1B94588();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC15PromotedContent34AppStoreSupplementalContextBuilder_requestTime;
  swift_beginAccess();
  sub_1C1AABE90(v6, v1 + v9);
  return swift_endAccess();
}

id AppStoreSupplementalContextBuilder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppStoreSupplementalContextBuilder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppStoreSupplementalContextBuilder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C1AD356C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C1B95338() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1C1B95958();

      sub_1C1B94DE8();
      v13 = sub_1C1B959A8();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1C1AD371C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C1B95338() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_1C1B95948();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1C1AD388C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C1B95338() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_1C1B95958();

      sub_1C1B94DE8();
      v14 = sub_1C1B959A8();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1C1AD3A40(int64_t a1, uint64_t a2)
{
  v4 = sub_1C1B944A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_1C1B95338();
    v15 = v13;
    v39 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = *(v16 + 56);
    v37 = (v16 - 8);
    v38 = v17;
    do
    {
      v18 = v10;
      v19 = v40 * v12;
      v20 = v15;
      v21 = v16;
      v38(v9, *(a2 + 48) + v40 * v12, v4);
      v22 = *(a2 + 40);
      sub_1C1AD4AF8();
      v23 = sub_1C1B94D28();
      result = (*v37)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v39)
      {
        if (v24 >= v39 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          result = v27 + v40 * a1;
          v28 = v27 + v19 + v40;
          v29 = v40 * a1 < v19 || result >= v28;
          v16 = v21;
          if (v29)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v15 = v20;
            v10 = v18;
          }

          else
          {
            v30 = v40 * a1 == v19;
            v10 = v18;
            if (!v30)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
            }
          }

          v31 = *(a2 + 56);
          v32 = (v31 + 16 * a1);
          v33 = (v31 + 16 * v12);
          if (16 * a1 != 16 * v12 || (a1 = v12, v32 >= v33 + 1))
          {
            *v32 = *v33;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v39 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1C1AD3D04(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C1B95338() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1C1B95958();

      sub_1C1B94DE8();
      v13 = sub_1C1B959A8();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1C1AD3EB8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C1B95338() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_1C1B95958();
      MEMORY[0x1C6907960](50 * v10);
      result = sub_1C1B959A8();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + v3);
      v14 = (v12 + v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_1C1B94588() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_1C1AD40A0(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1C1AC1F08(&qword_1EBF080F8, &qword_1C1B9A6D0);
  v3 = sub_1C1B955C8();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1C1AD8AE8(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1C1AD8AE8(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for AppStoreSupplementalContextBuilder()
{
  result = qword_1EDE6BC78;
  if (!qword_1EDE6BC78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1AD41FC()
{
  sub_1C1AA3EA0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1C1AD44D8(uint64_t a1)
{
  v2 = sub_1C1AC1F08(&unk_1EBF07FB0, &unk_1C1B9A630);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1C1AC1F08(&unk_1EBF09720, &unk_1C1BA36A0);
    v8 = sub_1C1B955C8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_1C1AA7E30(v10, v6, &unk_1EBF07FB0, &unk_1C1B9A630);
      result = sub_1C1AD8B2C(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_1C1B94588();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C1AD46B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C1AC1F08(&qword_1EBF08038, &unk_1C1B9A660);
    v3 = sub_1C1B955C8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1C1AA7C14(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C1AD47CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1C1AC1F08(a2, a3);
    v5 = sub_1C1B955C8();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1C1AA7C14(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C1AD48DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C1AC1F08(&qword_1EBF07FC0, &qword_1C1B9A640);
    v3 = sub_1C1B955C8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1C1AA7C14(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C1AD49F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C1AC1F08(&unk_1EBF07FA0, &unk_1C1B9A620);
    v3 = sub_1C1B955C8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C1AA7C14(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1C1AD4AEC(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_1C1AD4AF8()
{
  result = qword_1EDE6B868;
  if (!qword_1EDE6B868)
  {
    sub_1C1B944A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B868);
  }

  return result;
}

PromotedContent::OptionalBoolean_optional __swiftcall OptionalBoolean.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if ((rawValue + 1) < 3)
  {
    v2 = rawValue + 1;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1C1AD4B78()
{
  result = qword_1EBF08100;
  if (!qword_1EBF08100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08100);
  }

  return result;
}

uint64_t sub_1C1AD4BCC()
{
  v1 = *v0;
  sub_1C1B95958();
  MEMORY[0x1C6907960](v1 - 1);
  return sub_1C1B959A8();
}

uint64_t sub_1C1AD4C44()
{
  v1 = *v0;
  sub_1C1B95958();
  MEMORY[0x1C6907960](v1 - 1);
  return sub_1C1B959A8();
}

uint64_t getEnumTagSinglePayload for OptionalBoolean(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OptionalBoolean(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C1AD4EA0()
{
  result = qword_1EBF08108;
  if (!qword_1EBF08108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08108);
  }

  return result;
}

uint64_t sub_1C1AD4F08(uint64_t a1)
{
  v2 = sub_1C1AD55E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AD4F44(uint64_t a1)
{
  v2 = sub_1C1AD55E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AD4F80()
{
  v1 = 0x70756F7267;
  if (*v0 != 1)
  {
    v1 = 0x646165687473616DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72656E6E6162;
  }
}

uint64_t sub_1C1AD4FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1AD6074(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1AD5008(uint64_t a1)
{
  v2 = sub_1C1AD54E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AD5044(uint64_t a1)
{
  v2 = sub_1C1AD54E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AD5080(uint64_t a1)
{
  v2 = sub_1C1AD5590();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AD50BC(uint64_t a1)
{
  v2 = sub_1C1AD5590();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1AD50F8(uint64_t a1)
{
  v2 = sub_1C1AD553C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AD5134(uint64_t a1)
{
  v2 = sub_1C1AD553C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SponsorshipPlacement.encode(to:)(void *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF08110, &qword_1C1B9A7F0);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v5;
  v6 = sub_1C1AC1F08(&qword_1EBF08118, &qword_1C1B9A7F8);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v8;
  v9 = sub_1C1AC1F08(&qword_1EBF08120, &qword_1C1B9A800);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = sub_1C1AC1F08(&qword_1EBF08128, &qword_1C1B9A808);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AD54E8();
  sub_1C1B95A18();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_1C1AD5590();
      v12 = v26;
      sub_1C1B95728();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_1C1AD553C();
      v12 = v29;
      sub_1C1B95728();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_1C1AD55E4();
    sub_1C1B95728();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_1C1AD54E8()
{
  result = qword_1EBF08130;
  if (!qword_1EBF08130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08130);
  }

  return result;
}

unint64_t sub_1C1AD553C()
{
  result = qword_1EBF08138;
  if (!qword_1EBF08138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08138);
  }

  return result;
}

unint64_t sub_1C1AD5590()
{
  result = qword_1EBF08140;
  if (!qword_1EBF08140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08140);
  }

  return result;
}

unint64_t sub_1C1AD55E4()
{
  result = qword_1EBF08148;
  if (!qword_1EBF08148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08148);
  }

  return result;
}

uint64_t SponsorshipPlacement.hashValue.getter()
{
  v1 = *v0;
  sub_1C1B95958();
  MEMORY[0x1C6907960](v1);
  return sub_1C1B959A8();
}

uint64_t SponsorshipPlacement.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = sub_1C1AC1F08(&qword_1EBF08150, &qword_1C1B9A810);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v35 - v5;
  v40 = sub_1C1AC1F08(&qword_1EBF08158, &qword_1C1B9A818);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v35 - v7;
  v9 = sub_1C1AC1F08(&qword_1EBF08160, &qword_1C1B9A820);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v13 = sub_1C1AC1F08(&qword_1EBF08168, &unk_1C1B9A828);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  sub_1C1AAABE0(a1, v18);
  sub_1C1AD54E8();
  v20 = v43;
  sub_1C1B95A08();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_1C1B95718();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_1C1ACC6DC();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_1C1B954C8();
      swift_allocError();
      v30 = v29;
      v31 = *(sub_1C1AC1F08(&qword_1EBF07CC0, &qword_1C1B99190) + 48);
      *v30 = &type metadata for SponsorshipPlacement;
      sub_1C1B95618();
      sub_1C1B954B8();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_1C1AD5590();
          sub_1C1B95608();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_1C1AD553C();
          v33 = v22;
          sub_1C1B95608();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_1C1AD55E4();
        sub_1C1B95608();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return sub_1C1AA86F8(v44);
}

unint64_t sub_1C1AD5C20()
{
  result = qword_1EBF08170;
  if (!qword_1EBF08170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08170);
  }

  return result;
}

unint64_t sub_1C1AD5C78()
{
  result = qword_1EBF08178;
  if (!qword_1EBF08178)
  {
    sub_1C1AC3404(&qword_1EBF08180, &qword_1C1B9A8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08178);
  }

  return result;
}

unint64_t sub_1C1AD5D60()
{
  result = qword_1EBF08188;
  if (!qword_1EBF08188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08188);
  }

  return result;
}

unint64_t sub_1C1AD5DB8()
{
  result = qword_1EBF08190;
  if (!qword_1EBF08190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08190);
  }

  return result;
}

unint64_t sub_1C1AD5E10()
{
  result = qword_1EBF08198;
  if (!qword_1EBF08198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08198);
  }

  return result;
}

unint64_t sub_1C1AD5E68()
{
  result = qword_1EBF081A0;
  if (!qword_1EBF081A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF081A0);
  }

  return result;
}

unint64_t sub_1C1AD5EC0()
{
  result = qword_1EBF081A8;
  if (!qword_1EBF081A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF081A8);
  }

  return result;
}

unint64_t sub_1C1AD5F18()
{
  result = qword_1EBF081B0;
  if (!qword_1EBF081B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF081B0);
  }

  return result;
}

unint64_t sub_1C1AD5F70()
{
  result = qword_1EBF081B8;
  if (!qword_1EBF081B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF081B8);
  }

  return result;
}

unint64_t sub_1C1AD5FC8()
{
  result = qword_1EBF081C0;
  if (!qword_1EBF081C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF081C0);
  }

  return result;
}

unint64_t sub_1C1AD6020()
{
  result = qword_1EBF081C8;
  if (!qword_1EBF081C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF081C8);
  }

  return result;
}

uint64_t sub_1C1AD6074(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656E6E6162 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C1B95888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646165687473616DLL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C1B95888();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t AppStoreSupplementalContext.storeFront.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCAppStoreSupplementalContext_storeFront);
  v2 = *(v0 + OBJC_IVAR___APPCAppStoreSupplementalContext_storeFront + 8);

  return v1;
}

id sub_1C1AD6244(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_1C1B94D78();

  return v6;
}

uint64_t AppStoreSupplementalContext.storeFrontLocale.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCAppStoreSupplementalContext_storeFrontLocale);
  v2 = *(v0 + OBJC_IVAR___APPCAppStoreSupplementalContext_storeFrontLocale + 8);

  return v1;
}

id sub_1C1AD630C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  swift_beginAccess();
  if (*(a1 + v4))
  {

    sub_1C1AC1F08(&qword_1EBF08230, &qword_1C1B9ACC0);
    v5 = sub_1C1B94CA8();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1C1AD63CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a3;
  if (a3)
  {
    sub_1C1AC1F08(&qword_1EBF08230, &qword_1C1B9ACC0);
    v5 = sub_1C1B94CB8();
  }

  v7 = *a4;
  swift_beginAccess();
  v8 = *(a1 + v7);
  *(a1 + v7) = v5;
}

id sub_1C1AD6490(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  swift_beginAccess();
  v5 = *(a1 + v4);

  sub_1C1AC1F08(&qword_1EBF08228, &qword_1C1B9ACB8);
  v6 = sub_1C1B94CA8();

  return v6;
}

uint64_t sub_1C1AD6544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1C1AC1F08(&qword_1EBF08228, &qword_1C1B9ACB8);
  v6 = sub_1C1B94CB8();
  v7 = *a4;
  swift_beginAccess();
  v8 = *(a1 + v7);
  *(a1 + v7) = v6;
}

uint64_t sub_1C1AD65D4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
}

uint64_t sub_1C1AD66C4()
{
  v1 = (v0 + OBJC_IVAR___APPCAppStoreSupplementalContext_adamId);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_1C1AD6798(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___APPCAppStoreSupplementalContext_adamId);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1C1AD6A7C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___APPCAppStoreSupplementalContext_requestTime;
  swift_beginAccess();
  return sub_1C1AA7E30(v1 + v3, a1, &qword_1EBF07F50, &qword_1C1B9A590);
}

uint64_t sub_1C1AD6C24(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C1AA7E30(a1, &v11 - v6, &qword_1EBF07F50, &qword_1C1B9A590);
  v8 = *a2;
  v9 = OBJC_IVAR___APPCAppStoreSupplementalContext_requestTime;
  swift_beginAccess();
  sub_1C1AABE90(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t sub_1C1AD6D7C()
{
  v34 = sub_1C1B959E8();
  v33 = *(v34 - 8);
  v1 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C1AB77A4(MEMORY[0x1E69E7CC0]);
  *(&v41 + 1) = type metadata accessor for AppStoreSupplementalContext();
  *&v40 = v0;
  v5 = v0;
  sub_1C1B959C8();
  v32 = v3;
  sub_1C1B959D8();
  sub_1C1B95548();

  sub_1C1B955E8();
  if (!v42)
  {
LABEL_40:
    (*(v33 + 8))(v32, v34);

    return v4;
  }

  v31 = 0x80000001C1BA55D0;
  v30 = 0x80000001C1BA55B0;
  v29 = 0x80000001C1BA5590;
  v28 = 0x80000001C1BA5570;
  while (1)
  {
    while (1)
    {
      v38 = v40;
      sub_1C1AA7E98(&v41, &v39);
      sub_1C1AA7E30(&v38, v36, &unk_1EBF08550, &qword_1C1B9ACA8);
      if (v36[1])
      {
        break;
      }

      sub_1C1AA7C8C(&v38, &unk_1EBF08550, &qword_1C1B9ACA8);
      sub_1C1AA86F8(v37);
LABEL_4:
      sub_1C1B955E8();
      if (!v42)
      {
        goto LABEL_40;
      }
    }

    sub_1C1AA86F8(v37);
    sub_1C1AA7E30(&v38, v36, &unk_1EBF08550, &qword_1C1B9ACA8);

    sub_1C1AC1F08(&qword_1EBF08210, &qword_1C1BA4330);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1C1AA7C8C(&v38, &unk_1EBF08550, &qword_1C1B9ACA8);

      goto LABEL_4;
    }

    v6 = v35;
    v7 = sub_1C1B955F8();

    if (v7 <= 3)
    {
      if (v7 > 1)
      {
        if (v7 == 2)
        {
          v8 = 0xD000000000000018;
          v9 = v28;
        }

        else
        {
          v8 = 0xD000000000000013;
          v9 = v29;
        }
      }

      else if (v7)
      {
        if (v7 != 1)
        {
          goto LABEL_22;
        }

        v9 = 0xE800000000000000;
        v8 = 0x7061436B63696C63;
      }

      else
      {
        v8 = 0x6973736572706D69;
        v9 = 0xED00007061436E6FLL;
      }
    }

    else if (v7 <= 5)
    {
      if (v7 == 4)
      {
        v9 = 0xEA0000000000746ELL;
        v8 = 0x6F724665726F7473;
      }

      else
      {
        v8 = 0xD000000000000010;
        v9 = v30;
      }
    }

    else
    {
      switch(v7)
      {
        case 6:
          v9 = 0xE600000000000000;
          v8 = 0x64496D616461;
          break;
        case 7:
          v8 = 0xD000000000000011;
          v9 = v31;
          break;
        case 8:
          v8 = 0x5474736575716572;
          v9 = 0xEB00000000656D69;
          break;
        default:
LABEL_22:
          sub_1C1AA7C8C(&v38, &unk_1EBF08550, &qword_1C1B9ACA8);
          swift_unknownObjectRelease();
          goto LABEL_4;
      }
    }

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36[0] = v4;
    v11 = v9;
    v13 = sub_1C1AA7C14(v8, v9);
    v14 = v4;
    v15 = v4[2];
    v16 = (v12 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      break;
    }

    v18 = v12;
    if (v14[3] >= v17)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v12)
        {
          goto LABEL_35;
        }
      }

      else
      {
        sub_1C1ADA6C0(&qword_1EBF080F0, &unk_1C1B9AF20);
        if (v18)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      sub_1C1AB3348(v17, isUniquelyReferenced_nonNull_native, &qword_1EBF080F0, &unk_1C1B9AF20);
      v19 = sub_1C1AA7C14(v8, v11);
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_43;
      }

      v13 = v19;
      if (v18)
      {
LABEL_35:

        v4 = v36[0];
        v21 = *(v36[0] + 56);
        v22 = *(v21 + 8 * v13);
        *(v21 + 8 * v13) = v6;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        sub_1C1AA7C8C(&v38, &unk_1EBF08550, &qword_1C1B9ACA8);
        goto LABEL_39;
      }
    }

    v4 = v36[0];
    *(v36[0] + 8 * (v13 >> 6) + 64) |= 1 << v13;
    v23 = (v4[6] + 16 * v13);
    *v23 = v8;
    v23[1] = v11;
    *(v4[7] + 8 * v13) = v6;
    swift_unknownObjectRelease();
    sub_1C1AA7C8C(&v38, &unk_1EBF08550, &qword_1C1B9ACA8);
    v24 = v4[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_42;
    }

    v4[2] = v26;
LABEL_39:
    sub_1C1B955E8();
    if (!v42)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result = sub_1C1B958E8();
  __break(1u);
  return result;
}

id AppStoreSupplementalContext.init(storeFront:storeFrontLocale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR___APPCAppStoreSupplementalContext_impressionCap] = 0;
  *&v4[OBJC_IVAR___APPCAppStoreSupplementalContext_clickCap] = 0;
  v9 = OBJC_IVAR___APPCAppStoreSupplementalContext_additionalImpressionCaps;
  v10 = MEMORY[0x1E69E7CC0];
  *&v4[v9] = sub_1C1AD40A0(MEMORY[0x1E69E7CC0]);
  v11 = OBJC_IVAR___APPCAppStoreSupplementalContext_additionalClickCaps;
  *&v4[v11] = sub_1C1AD40A0(v10);
  v12 = &v4[OBJC_IVAR___APPCAppStoreSupplementalContext_adamId];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v4[OBJC_IVAR___APPCAppStoreSupplementalContext_appMetadataFields] = 0;
  v13 = OBJC_IVAR___APPCAppStoreSupplementalContext_requestTime;
  v14 = sub_1C1B94588();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v15 = &v4[OBJC_IVAR___APPCAppStoreSupplementalContext_storeFront];
  *v15 = a1;
  *(v15 + 1) = a2;
  v16 = &v4[OBJC_IVAR___APPCAppStoreSupplementalContext_storeFrontLocale];
  *v16 = a3;
  *(v16 + 1) = a4;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for AppStoreSupplementalContext();
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t sub_1C1AD7498@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v43 - v6;
  v8 = *(v1 + OBJC_IVAR___APPCAppStoreSupplementalContext_storeFront);
  v9 = *(v1 + OBJC_IVAR___APPCAppStoreSupplementalContext_storeFront + 8);
  v11 = *(v1 + OBJC_IVAR___APPCAppStoreSupplementalContext_storeFrontLocale);
  v10 = *(v1 + OBJC_IVAR___APPCAppStoreSupplementalContext_storeFrontLocale + 8);
  v12 = type metadata accessor for AppStoreSupplementalContext();
  v13 = objc_allocWithZone(v12);

  v14 = AppStoreSupplementalContext.init(storeFront:storeFrontLocale:)(v8, v9, v11, v10);
  v15 = OBJC_IVAR___APPCAppStoreSupplementalContext_impressionCap;
  swift_beginAccess();
  v16 = *(v2 + v15);
  v17 = OBJC_IVAR___APPCAppStoreSupplementalContext_impressionCap;
  swift_beginAccess();
  v18 = *&v14[v17];
  *&v14[v17] = v16;

  v19 = OBJC_IVAR___APPCAppStoreSupplementalContext_clickCap;
  swift_beginAccess();
  v20 = *(v2 + v19);
  v21 = OBJC_IVAR___APPCAppStoreSupplementalContext_clickCap;
  swift_beginAccess();
  v22 = *&v14[v21];
  *&v14[v21] = v20;

  v23 = OBJC_IVAR___APPCAppStoreSupplementalContext_additionalImpressionCaps;
  swift_beginAccess();
  v24 = *(v2 + v23);
  v25 = OBJC_IVAR___APPCAppStoreSupplementalContext_additionalImpressionCaps;
  swift_beginAccess();
  v26 = *&v14[v25];
  *&v14[v25] = v24;

  v27 = OBJC_IVAR___APPCAppStoreSupplementalContext_additionalClickCaps;
  swift_beginAccess();
  v28 = *(v2 + v27);
  v29 = OBJC_IVAR___APPCAppStoreSupplementalContext_additionalClickCaps;
  swift_beginAccess();
  v30 = *&v14[v29];
  *&v14[v29] = v28;

  v31 = (v2 + OBJC_IVAR___APPCAppStoreSupplementalContext_adamId);
  swift_beginAccess();
  v33 = *v31;
  v32 = v31[1];
  v34 = &v14[OBJC_IVAR___APPCAppStoreSupplementalContext_adamId];
  swift_beginAccess();
  v35 = *(v34 + 1);
  *v34 = v33;
  *(v34 + 1) = v32;

  v36 = OBJC_IVAR___APPCAppStoreSupplementalContext_appMetadataFields;
  swift_beginAccess();
  v37 = *(v2 + v36);
  v38 = OBJC_IVAR___APPCAppStoreSupplementalContext_appMetadataFields;
  swift_beginAccess();
  v39 = *&v14[v38];
  *&v14[v38] = v37;

  v40 = OBJC_IVAR___APPCAppStoreSupplementalContext_requestTime;
  swift_beginAccess();
  sub_1C1AA7E30(v2 + v40, v7, &qword_1EBF07F50, &qword_1C1B9A590);
  v41 = OBJC_IVAR___APPCAppStoreSupplementalContext_requestTime;
  swift_beginAccess();
  sub_1C1AABE90(v7, &v14[v41]);
  result = swift_endAccess();
  a1[3] = v12;
  *a1 = v14;
  return result;
}

id AppStoreSupplementalContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1C1AD78D8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6F724665726F7473;
    v6 = 0x6973736572706D69;
    if (a1 != 2)
    {
      v6 = 0x7061436B63696C63;
    }

    if (a1)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x64496D616461;
    v2 = 0xD000000000000011;
    if (a1 != 7)
    {
      v2 = 0x5474736575716572;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000013;
    if (a1 == 4)
    {
      v3 = 0xD000000000000018;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1C1AD7A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1ADBA9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1AD7A50(uint64_t a1)
{
  v2 = sub_1C1ADB1E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AD7A8C(uint64_t a1)
{
  v2 = sub_1C1ADB1E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id AppStoreSupplementalContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppStoreSupplementalContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C1AD7BCC(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v29 - v7;
  v9 = sub_1C1AC1F08(&unk_1EBF08218, &qword_1C1B9ACB0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v29 - v12;
  v14 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1ADB1E4();
  sub_1C1B95A18();
  v15 = *(v3 + OBJC_IVAR___APPCAppStoreSupplementalContext_storeFront);
  v16 = *(v3 + OBJC_IVAR___APPCAppStoreSupplementalContext_storeFront + 8);
  v35 = 0;
  sub_1C1B957A8();
  if (!v2)
  {
    v17 = *(v3 + OBJC_IVAR___APPCAppStoreSupplementalContext_storeFrontLocale);
    v18 = *(v3 + OBJC_IVAR___APPCAppStoreSupplementalContext_storeFrontLocale + 8);
    v35 = 1;
    sub_1C1B957A8();
    v19 = OBJC_IVAR___APPCAppStoreSupplementalContext_impressionCap;
    swift_beginAccess();
    v34 = *(v3 + v19);
    LOBYTE(v33) = 2;
    sub_1C1AC1F08(&qword_1EBF08228, &qword_1C1B9ACB8);
    sub_1C1ADB238();
    sub_1C1B95788();
    v20 = OBJC_IVAR___APPCAppStoreSupplementalContext_clickCap;
    swift_beginAccess();
    v33 = *(v3 + v20);
    LOBYTE(v32) = 3;
    sub_1C1B95788();
    v21 = OBJC_IVAR___APPCAppStoreSupplementalContext_additionalImpressionCaps;
    swift_beginAccess();
    v32 = *(v3 + v21);
    LOBYTE(v31) = 4;
    sub_1C1AC1F08(&qword_1EBF08238, &qword_1C1B9ACC8);
    sub_1C1ADB2E8(&qword_1EDE6A740, sub_1C1ADB238);
    sub_1C1B95808();
    v22 = OBJC_IVAR___APPCAppStoreSupplementalContext_additionalClickCaps;
    swift_beginAccess();
    v31 = *(v3 + v22);
    v30 = 5;
    sub_1C1B95808();
    v24 = (v3 + OBJC_IVAR___APPCAppStoreSupplementalContext_adamId);
    swift_beginAccess();
    v25 = *v24;
    v26 = v24[1];
    v30 = 6;

    sub_1C1B95748();

    v27 = OBJC_IVAR___APPCAppStoreSupplementalContext_appMetadataFields;
    swift_beginAccess();
    v29[0] = *(v3 + v27);
    v36 = 7;
    sub_1C1AC1F08(&qword_1EBF07EA0, &qword_1C1B9ACD0);
    sub_1C1AD0C9C(&qword_1EDE6BC00);
    sub_1C1B95788();
    v28 = OBJC_IVAR___APPCAppStoreSupplementalContext_requestTime;
    swift_beginAccess();
    sub_1C1AA7E30(v3 + v28, v8, &qword_1EBF07F50, &qword_1C1B9A590);
    v36 = 8;
    sub_1C1B94588();
    sub_1C1ADBD9C(&unk_1EDE6C380, MEMORY[0x1E6969530]);
    sub_1C1B95788();
    sub_1C1AA7C8C(v8, &qword_1EBF07F50, &qword_1C1B9A590);
  }

  return (*(v10 + 8))(v13, v9);
}

char *AppStoreSupplementalContext.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v72 - v7;
  v77 = sub_1C1AC1F08(&unk_1EBF08240, &qword_1C1B9ACD8);
  v76 = *(v77 - 8);
  v9 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v11 = &v72 - v10;
  v80 = OBJC_IVAR___APPCAppStoreSupplementalContext_impressionCap;
  *&v1[OBJC_IVAR___APPCAppStoreSupplementalContext_impressionCap] = 0;
  v79 = OBJC_IVAR___APPCAppStoreSupplementalContext_clickCap;
  *&v1[OBJC_IVAR___APPCAppStoreSupplementalContext_clickCap] = 0;
  v12 = OBJC_IVAR___APPCAppStoreSupplementalContext_additionalImpressionCaps;
  v13 = MEMORY[0x1E69E7CC0];
  v14 = sub_1C1AD40A0(MEMORY[0x1E69E7CC0]);
  v78 = v12;
  *&v3[v12] = v14;
  v15 = OBJC_IVAR___APPCAppStoreSupplementalContext_additionalClickCaps;
  v16 = sub_1C1AD40A0(v13);
  v82 = v15;
  *&v3[v15] = v16;
  v17 = &v3[OBJC_IVAR___APPCAppStoreSupplementalContext_adamId];
  *v17 = 0;
  v17[1] = 0;
  v85 = v17;
  v84 = OBJC_IVAR___APPCAppStoreSupplementalContext_appMetadataFields;
  *&v3[OBJC_IVAR___APPCAppStoreSupplementalContext_appMetadataFields] = 0;
  v18 = OBJC_IVAR___APPCAppStoreSupplementalContext_requestTime;
  v19 = sub_1C1B94588();
  v20 = *(*(v19 - 8) + 56);
  v83 = v18;
  v20(&v3[v18], 1, 1, v19);
  v22 = a1[3];
  v21 = a1[4];
  v81 = a1;
  v23 = a1;
  v24 = v11;
  sub_1C1AAABE0(v23, v22);
  sub_1C1ADB1E4();
  sub_1C1B95A08();
  if (v2)
  {
    v94 = v2;
    v28 = v78;
    sub_1C1AA86F8(v81);
    v29 = v79;
    v30 = v80;
    v31 = v82;
  }

  else
  {
    v74 = v19;
    v75 = v8;
    v25 = v76;
    v93 = 0;
    v26 = v77;
    v27 = sub_1C1B95698();
    v41 = &v3[OBJC_IVAR___APPCAppStoreSupplementalContext_storeFront];
    *v41 = v27;
    v41[1] = v42;
    v93 = 1;
    v43 = sub_1C1B95698();
    v28 = v78;
    v44 = &v3[OBJC_IVAR___APPCAppStoreSupplementalContext_storeFrontLocale];
    *v44 = v43;
    v44[1] = v45;
    sub_1C1AC1F08(&qword_1EBF08228, &qword_1C1B9ACB8);
    v93 = 2;
    v73 = sub_1C1ADB36C();
    sub_1C1B95678();
    v94 = 0;
    v29 = v79;
    v46 = v92;
    v30 = v80;
    swift_beginAccess();
    v47 = *&v3[v30];
    *&v3[v30] = v46;

    LOBYTE(v92) = 3;
    v48 = v94;
    sub_1C1B95678();
    v94 = v48;
    if (v48)
    {
      (*(v25 + 8))(v24, v26);
      v31 = v82;
    }

    else
    {
      v49 = v91;
      swift_beginAccess();
      v50 = *&v3[v29];
      *&v3[v29] = v49;

      sub_1C1AC1F08(&qword_1EBF08238, &qword_1C1B9ACC8);
      LOBYTE(v91) = 4;
      v72 = sub_1C1ADB2E8(&qword_1EDE6A738, sub_1C1ADB36C);
      v73 = v24;
      v51 = v94;
      sub_1C1B956F8();
      v94 = v51;
      v31 = v82;
      if (!v51)
      {
        v52 = v90;
        swift_beginAccess();
        v53 = *&v3[v28];
        *&v3[v28] = v52;

        LOBYTE(v90) = 5;
        v54 = v94;
        sub_1C1B956F8();
        v94 = v54;
        if (!v54)
        {
          v55 = v89;
          swift_beginAccess();
          v56 = *&v3[v31];
          *&v3[v31] = v55;

          LOBYTE(v89) = 6;
          v57 = v94;
          v72 = sub_1C1B95638();
          v94 = v57;
          if (!v57)
          {
            v59 = v58;
            v60 = v85;
            swift_beginAccess();
            v61 = v60[1];
            *v60 = v72;
            v60[1] = v59;

            sub_1C1AC1F08(&qword_1EBF07EA0, &qword_1C1B9ACD0);
            v88 = 7;
            sub_1C1AD0C9C(&unk_1EDE6BBF0);
            v62 = v94;
            sub_1C1B95678();
            v94 = v62;
            if (!v62)
            {
              v63 = v87;
              v64 = v84;
              swift_beginAccess();
              v65 = *&v3[v64];
              *&v3[v64] = v63;

              LOBYTE(v87) = 8;
              sub_1C1ADBD9C(&unk_1EDE6C370, MEMORY[0x1E6969530]);
              v66 = v75;
              v67 = v94;
              sub_1C1B95678();
              v94 = v67;
              if (!v67)
              {
                v70 = v83;
                swift_beginAccess();
                sub_1C1AABE90(v66, &v3[v70]);
                swift_endAccess();
                v71 = type metadata accessor for AppStoreSupplementalContext();
                v86.receiver = v3;
                v86.super_class = v71;
                v3 = objc_msgSendSuper2(&v86, sel_init);
                (*(v25 + 8))(v73, v26);
                sub_1C1AA86F8(v81);
                return v3;
              }
            }
          }
        }
      }

      (*(v25 + 8))(v73, v26);
    }

    sub_1C1AA86F8(v81);
    v68 = *&v3[OBJC_IVAR___APPCAppStoreSupplementalContext_storeFront + 8];

    v69 = *&v3[OBJC_IVAR___APPCAppStoreSupplementalContext_storeFrontLocale + 8];
  }

  v32 = *&v3[v30];

  v33 = *&v3[v29];

  v34 = *&v3[v28];

  v35 = *&v3[v31];

  v36 = v85[1];

  v37 = *&v3[v84];

  sub_1C1AA7C8C(&v3[v83], &qword_1EBF07F50, &qword_1C1B9A590);
  type metadata accessor for AppStoreSupplementalContext();
  v38 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x30);
  v39 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x34);
  swift_deallocPartialClassInstance();
  return v3;
}

char *sub_1C1AD8A6C@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for AppStoreSupplementalContext());
  result = AppStoreSupplementalContext.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1C1AD8AE8(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1C1B95948();

  return sub_1C1AD8C38(a1, v4);
}

unint64_t sub_1C1AD8B2C(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1C1B95958();
  MEMORY[0x1C6907960](50 * a1);
  v4 = sub_1C1B959A8();

  return sub_1C1AD8CA4(a1, v4);
}

unint64_t sub_1C1AD8BA0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1C1B944A8();
  sub_1C1ADBD9C(&qword_1EDE6B868, MEMORY[0x1E6968FB0]);
  v5 = sub_1C1B94D28();

  return sub_1C1AD8D14(a1, v5);
}

unint64_t sub_1C1AD8C38(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C1AD8CA4(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C1AD8D14(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1C1B944A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_1C1ADBD9C(&qword_1EDE6B860, MEMORY[0x1E6968FB0]);
      v16 = sub_1C1B94D68();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_1C1AD8ED4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1C1AC1F08(&qword_1EBF080E8, qword_1C1B9A6B8);
  v38 = a2;
  result = sub_1C1B955B8();
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
      sub_1C1B95958();
      sub_1C1B94DE8();
      result = sub_1C1B959A8();
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

uint64_t sub_1C1AD917C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1C1AC1F08(&qword_1EBF07FC0, &qword_1C1B9A640);
  v40 = a2;
  result = sub_1C1B955B8();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1C1B95958();
      sub_1C1B94DE8();
      result = sub_1C1B959A8();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1C1AD943C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1C1AC1F08(&qword_1EBF080F8, &qword_1C1B9A6D0);
  result = sub_1C1B955B8();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = sub_1C1B95948();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1C1AD96AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1C1AC1F08(&unk_1EBF080D0, &unk_1C1B9A6A0);
  v36 = a2;
  result = sub_1C1B955B8();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_1C1AA7E98(v25, v37);
      }

      else
      {
        sub_1C1AAA7B8(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1C1B95958();
      sub_1C1B94DE8();
      result = sub_1C1B959A8();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1C1AA7E98(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1C1AD9978(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1C1B944A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  sub_1C1AC1F08(&unk_1EBF082E0, &unk_1C1B9AF10);
  v48 = a2;
  result = sub_1C1B955B8();
  v13 = result;
  if (*(v10 + 16))
  {
    v53 = v6;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v44 = v2;
    v45 = (v7 + 16);
    v46 = v10;
    v47 = v7;
    v50 = (v7 + 32);
    v20 = result + 64;
    v21 = v49;
    while (v18)
    {
      v24 = __clz(__rbit64(v18));
      v25 = (v18 - 1) & v18;
LABEL_17:
      v28 = v24 | (v14 << 6);
      v29 = *(v10 + 48) + *(v47 + 72) * v28;
      v30 = 16 * v28;
      v51 = *(v47 + 72);
      v52 = v25;
      if (v48)
      {
        (*v50)(v21, v29, v53);
        v31 = *(v10 + 56) + v30;
        v32 = *v31;
        v33 = *(v31 + 8);
      }

      else
      {
        (*v45)(v21, v29, v53);
        v34 = *(v10 + 56) + v30;
        v32 = *v34;
        v33 = *(v34 + 8);
        sub_1C1ADBD90(*v34, v33);
      }

      v35 = *(v13 + 40);
      sub_1C1ADBD9C(&qword_1EDE6B868, MEMORY[0x1E6968FB0]);
      result = sub_1C1B94D28();
      v36 = -1 << *(v13 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v20 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v21 = v49;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v20 + 8 * v38);
          if (v42 != -1)
          {
            v22 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v37) & ~*(v20 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v21 = v49;
LABEL_9:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v50)(*(v13 + 48) + v51 * v22, v21, v53);
      v23 = *(v13 + 56) + 16 * v22;
      *v23 = v32;
      *(v23 + 8) = v33;
      ++*(v13 + 16);
      v10 = v46;
      v18 = v52;
    }

    v26 = v14;
    while (1)
    {
      v14 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v27 = v15[v14];
      ++v26;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v25 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v10 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v15, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v43;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_1C1AD9D84(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_1C1AC1F08(a3, a4);
  v40 = a2;
  result = sub_1C1B955B8();
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
      sub_1C1B95958();
      sub_1C1B94DE8();
      result = sub_1C1B959A8();
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

uint64_t sub_1C1ADA038(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_1C1B94588();
  v6 = *(v45 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_1C1AC1F08(&unk_1EBF09720, &unk_1C1BA36A0);
  v43 = a2;
  result = sub_1C1B955B8();
  v12 = result;
  if (*(v9 + 16))
  {
    v39 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v40 = (v6 + 16);
    v41 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    v42 = v9;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = *(*(v9 + 48) + v25);
      v28 = *(v6 + 72);
      v29 = v26 + v28 * v25;
      if (v43)
      {
        (*v19)(v44, v29, v45);
      }

      else
      {
        (*v40)(v44, v29, v45);
      }

      v30 = *(v12 + 40);
      sub_1C1B95958();
      MEMORY[0x1C6907960](50 * v27);
      result = sub_1C1B959A8();
      v31 = -1 << *(v12 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + v21) = v27;
      result = (*v19)(*(v12 + 56) + v28 * v21, v44, v45);
      ++*(v12 + 16);
      v6 = v41;
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v9 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v14, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

void *sub_1C1ADA39C()
{
  v1 = v0;
  sub_1C1AC1F08(&qword_1EBF080E8, qword_1C1B9A6B8);
  v2 = *v0;
  v3 = sub_1C1B955A8();
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

void *sub_1C1ADA50C()
{
  v1 = v0;
  sub_1C1AC1F08(&qword_1EBF07FC0, &qword_1C1B9A640);
  v2 = *v0;
  v3 = sub_1C1B955A8();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_1C1ADA6C0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1C1AC1F08(a1, a2);
  v4 = *v2;
  v5 = sub_1C1B955A8();
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
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = swift_unknownObjectRetain();
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

void *sub_1C1ADA820()
{
  v1 = v0;
  sub_1C1AC1F08(&qword_1EBF080F8, &qword_1C1B9A6D0);
  v2 = *v0;
  v3 = sub_1C1B955A8();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

char *sub_1C1ADA990()
{
  v1 = v0;
  v2 = sub_1C1B944A8();
  v3 = *(v2 - 8);
  v39 = v2;
  v40 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1AC1F08(&unk_1EBF082E0, &unk_1C1B9AF10);
  v6 = *v0;
  v7 = sub_1C1B955A8();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v41 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = v40 + 32;
    v36 = v40 + 16;
    v37 = v6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v42 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v39;
        v23 = v40;
        v24 = *(v40 + 72) * v21;
        v25 = v38;
        (*(v40 + 16))(v38, *(v6 + 48) + v24, v39);
        v26 = *(v6 + 56);
        v27 = 16 * v21;
        v28 = v26 + 16 * v21;
        v29 = *v28;
        v30 = *(v28 + 8);
        v31 = v41;
        (*(v23 + 32))(*(v41 + 48) + v24, v25, v22);
        v32 = *(v31 + 56) + v27;
        v6 = v37;
        *v32 = v29;
        *(v32 + 8) = v30;
        result = sub_1C1ADBD90(v29, v30);
        v16 = v42;
      }

      while (v42);
    }

    v19 = v12;
    v8 = v41;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v20 = *(v34 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v42 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_1C1ADAC38(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1C1AC1F08(a1, a2);
  v4 = *v2;
  v5 = sub_1C1B955A8();
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
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
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

void *sub_1C1ADADC0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1C1AC1F08(a1, a2);
  v4 = *v2;
  v5 = sub_1C1B955A8();
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
        v19 = 16 * (v16 | (v10 << 6));
        v20 = (*(v4 + 48) + v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = *(*(v4 + 56) + v19);
        v24 = (*(v6 + 48) + v19);
        *v24 = v22;
        v24[1] = v21;
        *(*(v6 + 56) + v19) = v23;
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

void *sub_1C1ADAF30()
{
  v1 = v0;
  v30 = sub_1C1B94588();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1AC1F08(&unk_1EBF09720, &unk_1C1BA36A0);
  v4 = *v0;
  v5 = sub_1C1B955A8();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + v18) = v19;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t type metadata accessor for AppStoreSupplementalContext()
{
  result = qword_1EDE6BE58;
  if (!qword_1EDE6BE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C1ADB1E4()
{
  result = qword_1EDE6A860[0];
  if (!qword_1EDE6A860[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE6A860);
  }

  return result;
}

unint64_t sub_1C1ADB238()
{
  result = qword_1EDE6A750;
  if (!qword_1EDE6A750)
  {
    sub_1C1AC3404(&qword_1EBF08228, &qword_1C1B9ACB8);
    sub_1C1ADB41C(&qword_1EDE6A678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A750);
  }

  return result;
}

uint64_t sub_1C1ADB2E8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(&qword_1EBF08238, &qword_1C1B9ACC8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1ADB36C()
{
  result = qword_1EDE6A748;
  if (!qword_1EDE6A748)
  {
    sub_1C1AC3404(&qword_1EBF08228, &qword_1C1B9ACB8);
    sub_1C1ADB41C(&qword_1EDE6A670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A748);
  }

  return result;
}

uint64_t sub_1C1ADB41C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(&qword_1EBF08230, &qword_1C1B9ACC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C1ADB488@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

void sub_1C1ADB4E8()
{
  sub_1C1AA3EA0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for AppStoreSupplementalContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppStoreSupplementalContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C1ADB998()
{
  result = qword_1EBF08250;
  if (!qword_1EBF08250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08250);
  }

  return result;
}

unint64_t sub_1C1ADB9F0()
{
  result = qword_1EDE6A848;
  if (!qword_1EDE6A848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A848);
  }

  return result;
}

unint64_t sub_1C1ADBA48()
{
  result = qword_1EDE6A850;
  if (!qword_1EDE6A850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A850);
  }

  return result;
}

uint64_t sub_1C1ADBA9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F724665726F7473 && a2 == 0xEA0000000000746ELL;
  if (v4 || (sub_1C1B95888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C1BA55B0 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6973736572706D69 && a2 == 0xED00007061436E6FLL || (sub_1C1B95888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7061436B63696C63 && a2 == 0xE800000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001C1BA5570 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C1BA5590 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x64496D616461 && a2 == 0xE600000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C1BA55D0 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x5474736575716572 && a2 == 0xEB00000000656D69)
  {

    return 8;
  }

  else
  {
    v6 = sub_1C1B95888();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

id sub_1C1ADBD90(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_1C1ADBD9C(unint64_t *a1, void (*a2)(uint64_t))
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

PromotedContent::NewsSupplementalContext::AppleNewsFormatComponentMetadataKeys_optional __swiftcall NewsSupplementalContext.AppleNewsFormatComponentMetadataKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C1B955F8();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t NewsSupplementalContext.AppleNewsFormatComponentMetadataKeys.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x656372756F73;
  v3 = 0x6565667265707573;
  if (v1 != 4)
  {
    v3 = 0x6F72677265707573;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000013;
  }

  if (v1 == 1)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
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

uint64_t sub_1C1ADBF24()
{
  *v0;
  *v0;
  sub_1C1B94DE8();
}

void sub_1C1ADC03C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656372756F73;
  v5 = 0x80000001C1BA5640;
  v6 = 0xEE003179656B5F64;
  v7 = 0x6565667265707573;
  if (v2 != 4)
  {
    v7 = 0x6F72677265707573;
    v6 = 0xEF3179656B5F7075;
  }

  if (v2 == 3)
  {
    v7 = 0xD000000000000013;
  }

  else
  {
    v5 = v6;
  }

  if (v2 == 1)
  {
    v4 = 0xD00000000000001ALL;
    v3 = 0x80000001C1BA5610;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000014;
    v3 = 0x80000001C1BA55F0;
  }

  if (*v1 <= 2u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t (*sub_1C1ADC188(unint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1C1AA7514();
  return sub_1C1ADC1D0;
}

uint64_t sub_1C1ADC1D0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_1C1AA7EA8(*a1);
  }

  v4 = *a1;

  sub_1C1AA7EA8(v5);
}

uint64_t sub_1C1ADC228(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (NewsRequestedAdType.rawValue.getter(*a1) == 1162760014 && v4 == 0xE400000000000000)
  {
  }

  else
  {
    v6 = sub_1C1B95888();

    if ((v6 & 1) == 0)
    {
      v7 = NewsRequestedAdType.rawValue.getter(v2);
      goto LABEL_9;
    }
  }

  v7 = 0;
  v8 = 0;
LABEL_9:
  v9 = (v3 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_requestedAdTypeInternal);
  v10 = *(v3 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_requestedAdTypeInternal + 8);
  *v9 = v7;
  v9[1] = v8;
}

uint64_t sub_1C1ADC2E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_requestedAdTypeInternal + 8);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_requestedAdTypeInternal);

    return _s15PromotedContent19NewsRequestedAdTypeO8rawValueACSS_tcfC_0(v2, v1);
  }

  else
  {
    sub_1C1B95128();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v4 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1C1B98E60;
    *(v5 + 56) = MEMORY[0x1E69E6158];
    *(v5 + 64) = sub_1C1AA5E7C();
    *(v5 + 32) = 0xD000000000000029;
    *(v5 + 40) = 0x80000001C1BA7F90;
    sub_1C1B94BA8();

    return 0;
  }
}

uint64_t (*sub_1C1ADC458(uint64_t *a1))(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_requestedAdTypeInternal;
  a1[1] = v1;
  a1[2] = v3;
  v4 = (v1 + v3);
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v4[1];

    v8 = _s15PromotedContent19NewsRequestedAdTypeO8rawValueACSS_tcfC_0(v6, v5);
  }

  else
  {
    sub_1C1B95128();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v9 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1C1B98E60;
    *(v10 + 56) = MEMORY[0x1E69E6158];
    *(v10 + 64) = sub_1C1AA5E7C();
    *(v10 + 32) = 0xD000000000000029;
    *(v10 + 40) = 0x80000001C1BA7F90;
    sub_1C1B94BA8();

    v8 = 0;
  }

  *a1 = v8;
  return sub_1C1ADC5DC;
}

uint64_t sub_1C1ADC5DC(uint64_t *a1)
{
  v2 = *a1;
  if (NewsRequestedAdType.rawValue.getter(*a1) == 1162760014 && v3 == 0xE400000000000000)
  {

LABEL_10:
    v7 = 0;
    v8 = 0;
    goto LABEL_12;
  }

  v6 = sub_1C1B95888();

  if (v6)
  {
    goto LABEL_10;
  }

  v7 = NewsRequestedAdType.rawValue.getter(v2);
LABEL_12:
  v9 = (a1[1] + a1[2]);
  v10 = v9[1];
  *v9 = v7;
  v9[1] = v8;
}

void *sub_1C1ADC804()
{
  v1 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleIsSponsored;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C1ADC850(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleIsSponsored;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1C1ADC908()
{
  v1 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleIsSponsored;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C1ADC954(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleIsSponsored;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1C1ADCDCC()
{
  v1 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceContentProviderId;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C1ADCE18(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceContentProviderId;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1C1ADCED0()
{
  v1 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceContentProviderId;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C1ADCF1C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceContentProviderId;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1C1ADD214()
{
  v1 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataContentProviderID;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *sub_1C1ADDBFC()
{
  v1 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextContentProviderId;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C1ADDC48(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextContentProviderId;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1C1ADDD00()
{
  v1 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveContentProviderId;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C1ADDD4C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveContentProviderId;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1C1ADDE04()
{
  v1 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowContentProviderId;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C1ADDE50(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowContentProviderId;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1C1ADE0DC()
{
  v1 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_isDraft;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C1ADE128(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_isDraft;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1C1ADE374()
{
  v1 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralPublisherInventory;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C1ADE3C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralPublisherInventory;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1C1ADE478()
{
  v1 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_numOfArticlesSeenSinceLastInterstitial;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C1ADE4C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_numOfArticlesSeenSinceLastInterstitial;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1C1ADE57C(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

void *sub_1C1ADE5D8()
{
  v1 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_playerAspectRatio;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C1ADE624(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_playerAspectRatio;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1C1ADE754(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_1C1ADE7C8(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t (*sub_1C1ADE8A0(uint64_t a1))()
{
  v3 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueIsDraftInternal;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4)
  {
    if ([v4 BOOLValue])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 16) = v5;
  return sub_1C1ADE914;
}

id sub_1C1ADE924@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  result = *(v2 + *a1);
  if (result)
  {
    result = [result BOOLValue];
    if (result)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

unsigned __int8 *sub_1C1ADE980(unsigned __int8 *result, void *a2)
{
  v4 = *result;
  if (v4 == 2 || v4 == 1)
  {
    sub_1C1AA576C(0, &qword_1EDE6C9F0, 0x1E696AD98);
    v5 = sub_1C1B95248();
    v6 = *(v2 + *a2);
    *(v2 + *a2) = v5;

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

uint64_t (*sub_1C1ADEA20(uint64_t a1))()
{
  v3 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueIsCurrentInternal;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4)
  {
    if ([v4 BOOLValue])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 16) = v5;
  return sub_1C1AE7D34;
}

uint64_t sub_1C1ADEA94(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 == 1 || v1 == 2)
  {
    v3 = *result;
    v2 = *(result + 8);
    sub_1C1AA576C(0, &qword_1EDE6C9F0, 0x1E696AD98);
    v4 = sub_1C1B95248();
    v5 = *(v3 + v2);
    *(v3 + v2) = v4;

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

unint64_t sub_1C1ADEC0C(char a1)
{
  result = 0x6576697461657263;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
    case 62:
      result = 0xD000000000000017;
      break;
    case 3:
    case 8:
    case 22:
    case 32:
    case 63:
      result = 0xD000000000000014;
      break;
    case 4:
    case 17:
    case 33:
    case 34:
      result = 0xD000000000000019;
      break;
    case 5:
    case 18:
    case 26:
    case 39:
    case 41:
      result = 0xD000000000000016;
      break;
    case 6:
    case 12:
      result = 0xD000000000000021;
      break;
    case 7:
    case 13:
      result = 0xD00000000000001ELL;
      break;
    case 10:
    case 27:
    case 28:
    case 60:
      result = 0xD00000000000001BLL;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 14:
      result = 0xD000000000000025;
      break;
    case 15:
    case 43:
    case 44:
      result = 0xD000000000000022;
      break;
    case 16:
    case 59:
      result = 0xD00000000000001CLL;
      break;
    case 19:
      result = 0xD000000000000015;
      break;
    case 21:
    case 42:
    case 61:
      result = 0xD00000000000001DLL;
      break;
    case 23:
      result = 0xD000000000000015;
      break;
    case 24:
    case 48:
    case 51:
      result = 0xD000000000000012;
      break;
    case 25:
      result = 0xD000000000000015;
      break;
    case 29:
      result = 0x6E6F4370756F7267;
      break;
    case 30:
    case 31:
      result = 0xD000000000000013;
      break;
    case 35:
      result = 0xD000000000000015;
      break;
    case 36:
    case 37:
    case 38:
    case 40:
    case 53:
      result = 0xD00000000000001ALL;
      break;
    case 45:
    case 52:
    case 56:
      result = 0xD000000000000010;
      break;
    case 46:
      result = 0xD000000000000015;
      break;
    case 47:
      result = 0xD000000000000015;
      break;
    case 49:
      result = 0x74666172447369;
      break;
    case 50:
      result = 0x6E656D6563616C70;
      break;
    case 54:
      result = 0xD000000000000026;
      break;
    case 57:
      result = 0x49746E6572727563;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1C1ADF130(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1C1ADEC0C(*a1);
  v5 = v4;
  if (v3 == sub_1C1ADEC0C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C1B95888();
  }

  return v8 & 1;
}

uint64_t sub_1C1ADF1B8()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1ADEC0C(v1);
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1ADF21C()
{
  sub_1C1ADEC0C(*v0);
  sub_1C1B94DE8();
}

uint64_t sub_1C1ADF270()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1ADEC0C(v1);
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1ADF2D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C1AE7C28();
  *a2 = result;
  return result;
}

unint64_t sub_1C1ADF300@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C1ADEC0C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C1ADF334@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1AE7C28();
  *a1 = result;
  return result;
}

uint64_t sub_1C1ADF368(uint64_t a1)
{
  v2 = sub_1C1AE4798();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1ADF3A4(uint64_t a1)
{
  v2 = sub_1C1AE4798();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id NewsSupplementalContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NewsSupplementalContext.init(from:)(uint64_t *a1)
{
  v2 = v1;
  v479 = *MEMORY[0x1E69E9840];
  v4 = sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v388 - v6;
  v8 = sub_1C1AC1F08(&qword_1EBF08568, &qword_1C1B9AFA8);
  v392 = *(v8 - 8);
  v9 = *(v392 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v388 - v10;
  v12 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_advertisementType];
  *v12 = 0;
  v12[1] = 0;
  v449 = v12;
  v13 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_creativeType];
  *v13 = 0;
  v13[1] = 0;
  v452 = v13;
  v14 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleArticleId];
  *v14 = 0;
  v14[1] = 0;
  v457 = v14;
  v15 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleArticleId];
  *v15 = 0;
  v15[1] = 0;
  v451 = v15;
  v453 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleIsSponsored];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleIsSponsored] = 0;
  v456 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleIsSponsored];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleIsSponsored] = 0;
  v455 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticlePublicationMetadata];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticlePublicationMetadata] = 0;
  v454 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticlePublicationMetadata];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticlePublicationMetadata] = 0;
  v16 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleRating];
  *v16 = 0;
  v16[1] = 0;
  v450 = v16;
  v17 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleRating];
  *v17 = 0;
  v17[1] = 0;
  v448 = v17;
  v18 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceChannel];
  *v18 = 0;
  v18[1] = 0;
  v447 = v18;
  v19 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceChannel];
  *v19 = 0;
  v19[1] = 0;
  v446 = v19;
  v20 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceChannelRating];
  *v20 = 0;
  v20[1] = 0;
  v445 = v20;
  v21 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceChannelRating];
  *v21 = 0;
  v21[1] = 0;
  v444 = v21;
  v443 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceContentProviderId];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceContentProviderId] = 0;
  v442 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceContentProviderId];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceContentProviderId] = 0;
  v441 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceSections];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentArticleSourceSections] = 0;
  v440 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceSections];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_nextArticleSourceSections] = 0;
  v439 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataCategories];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataCategories] = 0;
  v22 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataChannelId];
  *v22 = 0;
  v22[1] = 0;
  v438 = v22;
  v23 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataTagId];
  *v23 = 0;
  v23[1] = 0;
  v437 = v23;
  v436 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataContentProviderID];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataContentProviderID] = 0;
  v435 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataKeywords];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataKeywords] = 0;
  v434 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataLanguages];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataLanguages] = 0;
  v24 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataRating];
  *v24 = 0;
  v24[1] = 0;
  v433 = v24;
  v25 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataSectionId];
  *v25 = 0;
  v25[1] = 0;
  v432 = v25;
  v431 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextCategories];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextCategories] = 0;
  v430 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveCategories];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveCategories] = 0;
  v429 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowCategories];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowCategories] = 0;
  v26 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextId];
  *v26 = 0;
  v26[1] = 0;
  v428 = v26;
  v27 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveId];
  *v27 = 0;
  v27[1] = 0;
  v427 = v27;
  v28 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowId];
  *v28 = 0;
  v28[1] = 0;
  v426 = v28;
  v425 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextKeywords];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextKeywords] = 0;
  v424 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveKeywords];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveKeywords] = 0;
  v423 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowKeywords];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowKeywords] = 0;
  v422 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextLanguages];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextLanguages] = 0;
  v421 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveLanguages];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveLanguages] = 0;
  v420 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowLanguages];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowLanguages] = 0;
  v29 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveChannelId];
  *v29 = 0;
  v29[1] = 0;
  v419 = v29;
  v30 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveTagId];
  *v30 = 0;
  v30[1] = 0;
  v418 = v30;
  v31 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowChannelId];
  *v31 = 0;
  v31[1] = 0;
  v417 = v31;
  v32 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowTagId];
  *v32 = 0;
  v32[1] = 0;
  v416 = v32;
  v415 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextContentProviderId];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextContentProviderId] = 0;
  v414 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveContentProviderId];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveContentProviderId] = 0;
  v413 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowContentProviderId];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowContentProviderId] = 0;
  v33 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextType];
  *v33 = 0;
  v33[1] = 0;
  v412 = v33;
  v34 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextAboveType];
  *v34 = 0;
  v34[1] = 0;
  v411 = v34;
  v35 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_groupContextBelowType];
  *v35 = 0;
  v35[1] = 0;
  v410 = v35;
  v36 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_contentEnvironment];
  *v36 = 0;
  v36[1] = 0;
  v409 = v36;
  v408 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_isDraft];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_isDraft] = 0;
  v37 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_placement];
  *v37 = 0;
  v37[1] = 0;
  v407 = v37;
  v38 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralCampaignId];
  *v38 = 0;
  v38[1] = 0;
  v406 = v38;
  v39 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralLocation];
  *v39 = 0;
  v39[1] = 0;
  v405 = v39;
  v404 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralPublisherInventory];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_referralPublisherInventory] = 0;
  v403 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_numOfArticlesSeenSinceLastInterstitial];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_numOfArticlesSeenSinceLastInterstitial] = 0;
  v402 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_playerAspectRatio];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_playerAspectRatio] = 0;
  v40 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_subscriptionType];
  *v40 = 0;
  v40[1] = 0;
  v401 = v40;
  v41 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueId];
  *v41 = 0;
  v41[1] = 0;
  v400 = v41;
  v399 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_superFeedMetadata];
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_superFeedMetadata] = 0;
  v42 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_sponsorshipPlacement;
  v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_sponsorshipPlacement] = 3;
  v394 = a1;
  v395 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_anfComponentMetadataInternal;
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_anfComponentMetadataInternal] = 0;
  v396 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueIsDraftInternal;
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueIsDraftInternal] = 0;
  v398 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueIsCurrentInternal;
  *&v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_currentIssueIsCurrentInternal] = 0;
  v43 = &v2[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_requestedAdTypeInternal];
  *v43 = 0;
  v43[1] = 0;
  v397 = v43;
  v44 = a1[4];
  v45 = sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AE4798();
  v46 = v393;
  sub_1C1B95A08();
  if (v46)
  {
    v47 = v452;
    v48 = v453;
    v49 = v449;
    v50 = v451;
LABEL_4:
    sub_1C1AA86F8(v394);
    v51 = v49[1];

    v52 = v47[1];

    v53 = v457[1];

    v54 = v50[1];

    v55 = *v455;

    v56 = *v454;

    v57 = v450[1];

    v58 = v448[1];

    v59 = v447[1];

    v60 = v446[1];

    v61 = v445[1];

    v62 = v444[1];

    v63 = *v441;

    v64 = *v440;

    v65 = *v439;

    v66 = v438[1];

    v67 = v437[1];

    v68 = *v435;

    v69 = *v434;

    v70 = v433[1];

    v71 = v432[1];

    v72 = *v431;

    v73 = *v430;

    v74 = *v429;

    v75 = v428[1];

    v76 = v427[1];

    v77 = v426[1];

    v78 = *v425;

    v79 = *v424;

    v80 = *v423;

    v81 = *v422;

    v82 = *v421;

    v83 = *v420;

    v84 = v419[1];

    v85 = v418[1];

    v86 = v417[1];

    v87 = v416[1];

    v88 = v412[1];

    v89 = v411[1];

    v90 = v410[1];

    v91 = v409[1];

    v92 = v407[1];

    v93 = v406[1];

    v94 = v405[1];

    v95 = v401[1];

    v96 = v400[1];

    v97 = *v399;

    v98 = *&v2[v395];

    v99 = v397[1];

    type metadata accessor for NewsSupplementalContext();
    swift_deallocPartialClassInstance();
    goto LABEL_5;
  }

  v391 = v42;
  v393 = v7;
  LOBYTE(v460) = 0;
  v102 = sub_1C1B95638();
  v104 = v103;
  v389 = v8;
  v390 = v11;
  v105 = v449;
  swift_beginAccess();
  v106 = v105[1];
  *v105 = v102;
  v105[1] = v104;

  LOBYTE(v460) = 1;
  v107 = sub_1C1B95638();
  v109 = v108;
  v110 = v452;
  swift_beginAccess();
  v111 = v110[1];
  *v110 = v107;
  v110[1] = v109;

  LOBYTE(v460) = 2;
  v112 = sub_1C1B95638();
  v114 = v113;
  v115 = v457;
  swift_beginAccess();
  v116 = v115[1];
  *v115 = v112;
  v115[1] = v114;

  LOBYTE(v460) = 3;
  v117 = sub_1C1B95638();
  v119 = v118;
  v120 = v451;
  swift_beginAccess();
  v121 = v120[1];
  *v120 = v117;
  v120[1] = v119;

  LOBYTE(v460) = 4;
  v122 = sub_1C1B95648();
  v123 = v453;
  if (v122 != 2)
  {
    v124 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    swift_beginAccess();
    v125 = *v123;
    *v123 = v124;
  }

  LOBYTE(v460) = 5;
  v126 = sub_1C1B95648();
  if (v126 != 2)
  {
    v127 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v128 = v456;
    swift_beginAccess();
    v129 = *v128;
    *v128 = v127;
  }

  v130 = sub_1C1AC1F08(&unk_1EBF08578, &qword_1C1B9AFB0);
  v478 = 6;
  v388[1] = sub_1C1AE47EC();
  v388[2] = v130;
  sub_1C1B95678();
  v388[0] = v460;
  v131 = v455;
  swift_beginAccess();
  v132 = *v131;
  *v131 = v388[0];

  v477 = 7;
  sub_1C1B95678();
  v133 = v460;
  v134 = v454;
  swift_beginAccess();
  v135 = *v134;
  *v134 = v133;

  LOBYTE(v460) = 8;
  v136 = sub_1C1B95638();
  v138 = v137;
  v139 = v450;
  swift_beginAccess();
  v140 = v139[1];
  *v139 = v136;
  v139[1] = v138;

  LOBYTE(v460) = 9;
  v141 = sub_1C1B95638();
  v143 = v142;
  v144 = v448;
  swift_beginAccess();
  v145 = v144[1];
  *v144 = v141;
  v144[1] = v143;

  LOBYTE(v460) = 10;
  v146 = sub_1C1B95638();
  v148 = v147;
  v149 = v447;
  swift_beginAccess();
  v150 = v149[1];
  *v149 = v146;
  v149[1] = v148;

  LOBYTE(v460) = 11;
  v151 = sub_1C1B95638();
  v153 = v152;
  v154 = v446;
  swift_beginAccess();
  v155 = v154[1];
  *v154 = v151;
  v154[1] = v153;

  LOBYTE(v460) = 12;
  v156 = sub_1C1B95638();
  v158 = v157;
  v159 = v445;
  swift_beginAccess();
  v160 = v159[1];
  *v159 = v156;
  v159[1] = v158;

  LOBYTE(v460) = 13;
  v161 = sub_1C1B95638();
  v163 = v162;
  v164 = v444;
  swift_beginAccess();
  v165 = v164[1];
  *v164 = v161;
  v164[1] = v163;

  LOBYTE(v460) = 14;
  v166 = sub_1C1B95668();
  if ((v167 & 1) == 0)
  {
    v168 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v169 = v443;
    swift_beginAccess();
    v170 = *v169;
    *v169 = v168;
  }

  LOBYTE(v460) = 15;
  v171 = sub_1C1B95668();
  if ((v172 & 1) == 0)
  {
    v173 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v174 = v442;
    swift_beginAccess();
    v175 = *v174;
    *v174 = v173;
  }

  sub_1C1AC1F08(&unk_1EBF07AA0, &qword_1C1B98CF0);
  v476 = 16;
  sub_1C1AC34C8(&qword_1EDE6BB98);
  sub_1C1B95678();
  v176 = v460;
  v177 = v441;
  swift_beginAccess();
  v178 = *v177;
  *v177 = v176;

  v475 = 17;
  sub_1C1B95678();
  v179 = v460;
  v180 = v440;
  swift_beginAccess();
  v181 = *v180;
  *v180 = v179;

  v474 = 18;
  sub_1C1B95678();
  v182 = v460;
  v183 = v439;
  swift_beginAccess();
  v184 = *v183;
  *v183 = v182;

  LOBYTE(v460) = 19;
  v185 = sub_1C1B95638();
  v187 = v186;
  v188 = v438;
  swift_beginAccess();
  v189 = v188[1];
  *v188 = v185;
  v188[1] = v187;

  LOBYTE(v460) = 20;
  v190 = sub_1C1B95638();
  v192 = v191;
  v193 = v437;
  swift_beginAccess();
  v194 = v193[1];
  *v193 = v190;
  v193[1] = v192;

  LOBYTE(v460) = 21;
  v195 = sub_1C1B95668();
  if ((v196 & 1) == 0)
  {
    v197 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v198 = v436;
    swift_beginAccess();
    v199 = *v198;
    *v198 = v197;
  }

  v473 = 22;
  sub_1C1B95678();
  v200 = v460;
  v201 = v435;
  swift_beginAccess();
  v202 = *v201;
  *v201 = v200;

  v472 = 23;
  sub_1C1B95678();
  v203 = v460;
  v204 = v434;
  swift_beginAccess();
  v205 = *v204;
  *v204 = v203;

  LOBYTE(v460) = 24;
  v206 = sub_1C1B95638();
  v208 = v207;
  v209 = v433;
  swift_beginAccess();
  v210 = v209[1];
  *v209 = v206;
  v209[1] = v208;

  LOBYTE(v460) = 25;
  v211 = sub_1C1B95638();
  v213 = v212;
  v214 = v432;
  swift_beginAccess();
  v215 = v214[1];
  *v214 = v211;
  v214[1] = v213;

  v471 = 26;
  sub_1C1B95678();
  v216 = v460;
  v217 = v431;
  swift_beginAccess();
  v218 = *v217;
  *v217 = v216;

  v470 = 27;
  sub_1C1B95678();
  v219 = v460;
  v220 = v430;
  swift_beginAccess();
  v221 = *v220;
  *v220 = v219;

  v469 = 28;
  sub_1C1B95678();
  v222 = v460;
  v223 = v429;
  swift_beginAccess();
  v224 = *v223;
  *v223 = v222;

  LOBYTE(v460) = 29;
  v225 = sub_1C1B95638();
  v227 = v226;
  v228 = v428;
  swift_beginAccess();
  v229 = v228[1];
  *v228 = v225;
  v228[1] = v227;

  LOBYTE(v460) = 30;
  v230 = sub_1C1B95638();
  v232 = v231;
  v233 = v427;
  swift_beginAccess();
  v234 = v233[1];
  *v233 = v230;
  v233[1] = v232;

  LOBYTE(v460) = 31;
  v235 = sub_1C1B95638();
  v237 = v236;
  v238 = v426;
  swift_beginAccess();
  v239 = v238[1];
  *v238 = v235;
  v238[1] = v237;

  v468 = 32;
  sub_1C1B95678();
  v240 = v460;
  v241 = v425;
  swift_beginAccess();
  v242 = *v241;
  *v241 = v240;

  v467 = 33;
  sub_1C1B95678();
  v243 = v460;
  v244 = v424;
  swift_beginAccess();
  v245 = *v244;
  *v244 = v243;

  v466 = 34;
  sub_1C1B95678();
  v246 = v460;
  v247 = v423;
  swift_beginAccess();
  v248 = *v247;
  *v247 = v246;

  v465 = 35;
  sub_1C1B95678();
  v249 = v460;
  v250 = v422;
  swift_beginAccess();
  v251 = *v250;
  *v250 = v249;

  v464 = 36;
  sub_1C1B95678();
  v252 = v460;
  v253 = v421;
  swift_beginAccess();
  v254 = *v253;
  *v253 = v252;

  v463 = 37;
  sub_1C1B95678();
  v255 = v460;
  v256 = v420;
  swift_beginAccess();
  v257 = *v256;
  *v256 = v255;

  LOBYTE(v460) = 38;
  v258 = sub_1C1B95638();
  v260 = v259;
  v261 = v419;
  swift_beginAccess();
  v262 = v261[1];
  *v261 = v258;
  v261[1] = v260;

  LOBYTE(v460) = 39;
  v263 = sub_1C1B95638();
  v265 = v264;
  v266 = v418;
  swift_beginAccess();
  v267 = v266[1];
  *v266 = v263;
  v266[1] = v265;

  LOBYTE(v460) = 40;
  v268 = sub_1C1B95638();
  v270 = v269;
  v271 = v417;
  swift_beginAccess();
  v272 = v271[1];
  *v271 = v268;
  v271[1] = v270;

  LOBYTE(v460) = 41;
  v273 = sub_1C1B95638();
  v275 = v274;
  v276 = v416;
  swift_beginAccess();
  v277 = v276[1];
  *v276 = v273;
  v276[1] = v275;

  LOBYTE(v460) = 42;
  v278 = sub_1C1B95668();
  if ((v279 & 1) == 0)
  {
    v280 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v281 = v415;
    swift_beginAccess();
    v282 = *v281;
    *v281 = v280;
  }

  LOBYTE(v460) = 43;
  v283 = sub_1C1B95668();
  if ((v284 & 1) == 0)
  {
    v285 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v286 = v414;
    swift_beginAccess();
    v287 = *v286;
    *v286 = v285;
  }

  LOBYTE(v460) = 44;
  v288 = sub_1C1B95668();
  if ((v289 & 1) == 0)
  {
    v290 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v291 = v413;
    swift_beginAccess();
    v292 = *v291;
    *v291 = v290;
  }

  LOBYTE(v460) = 45;
  v293 = sub_1C1B95638();
  v295 = v294;
  v296 = v412;
  swift_beginAccess();
  v297 = v296[1];
  *v296 = v293;
  v296[1] = v295;

  LOBYTE(v460) = 46;
  v298 = sub_1C1B95638();
  v300 = v299;
  v301 = v411;
  swift_beginAccess();
  v302 = v301[1];
  *v301 = v298;
  v301[1] = v300;

  LOBYTE(v460) = 47;
  v303 = sub_1C1B95638();
  v305 = v304;
  v306 = v410;
  swift_beginAccess();
  v307 = v306[1];
  *v306 = v303;
  v306[1] = v305;

  LOBYTE(v460) = 48;
  v308 = sub_1C1B95638();
  v310 = v309;
  v311 = v409;
  swift_beginAccess();
  v312 = v311[1];
  *v311 = v308;
  v311[1] = v310;

  LOBYTE(v460) = 49;
  v313 = sub_1C1B95668();
  if ((v314 & 1) == 0)
  {
    v315 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v316 = v408;
    swift_beginAccess();
    v317 = *v316;
    *v316 = v315;
  }

  LOBYTE(v460) = 50;
  v318 = sub_1C1B95638();
  v320 = v319;
  v321 = v407;
  swift_beginAccess();
  v322 = v321[1];
  *v321 = v318;
  v321[1] = v320;

  LOBYTE(v460) = 51;
  v323 = sub_1C1B95638();
  v325 = v324;
  v326 = v406;
  swift_beginAccess();
  v327 = v326[1];
  *v326 = v323;
  v326[1] = v325;

  LOBYTE(v460) = 52;
  v328 = sub_1C1B95638();
  v330 = v329;
  v331 = v405;
  swift_beginAccess();
  v332 = v331[1];
  *v331 = v328;
  v331[1] = v330;

  LOBYTE(v460) = 53;
  v333 = sub_1C1B95658();
  if ((v334 & 1) == 0)
  {
    v335 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v336 = v404;
    swift_beginAccess();
    v337 = *v336;
    *v336 = v335;
  }

  LOBYTE(v460) = 54;
  v338 = sub_1C1B95668();
  if ((v339 & 1) == 0)
  {
    v340 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v341 = v403;
    swift_beginAccess();
    v342 = *v341;
    *v341 = v340;
  }

  LOBYTE(v460) = 55;
  v343 = sub_1C1B95658();
  if ((v344 & 1) == 0)
  {
    v345 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v346 = v402;
    swift_beginAccess();
    v347 = *v346;
    *v346 = v345;
  }

  LOBYTE(v460) = 56;
  v348 = sub_1C1B95638();
  v350 = v349;
  v351 = v401;
  swift_beginAccess();
  v352 = v351[1];
  *v351 = v348;
  v351[1] = v350;

  LOBYTE(v460) = 57;
  v353 = sub_1C1B95638();
  v355 = v354;
  v356 = v400;
  swift_beginAccess();
  v357 = v356[1];
  *v356 = v353;
  v356[1] = v355;

  v462 = 58;
  sub_1C1B95678();
  v358 = v460;
  v359 = v399;
  swift_beginAccess();
  v360 = *v359;
  *v359 = v358;

  LOBYTE(v459) = 59;
  sub_1C1AE4898();
  sub_1C1B95678();
  v361 = v461;
  if (v461 >> 60 == 15)
  {
    goto LABEL_35;
  }

  v362 = v460;
  v363 = objc_opt_self();
  v364 = sub_1C1B944C8();
  v460 = 0;
  v365 = [v363 JSONObjectWithData:v364 options:0 error:&v460];

  if (!v365)
  {
    v45 = v460;
    sub_1C1B94458();

    swift_willThrow();
    sub_1C1AE49EC(v362, v361);
    (*(v392 + 8))(v390, v389);
    v47 = v452;
    v50 = v451;
    v48 = v453;
    v49 = v449;
    goto LABEL_4;
  }

  v366 = v460;
  sub_1C1B952F8();
  sub_1C1AE49EC(v362, v361);
  swift_unknownObjectRelease();
  sub_1C1AC1F08(&unk_1EBF08348, &unk_1C1B9F740);
  v367 = swift_dynamicCast();
  v368 = v459;
  if (!v367)
  {
    v368 = 0;
  }

  v369 = *&v2[v395];
  *&v2[v395] = v368;

LABEL_35:
  LOBYTE(v460) = 60;
  v370 = sub_1C1B95648();
  if (v370 != 2)
  {
    v371 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v372 = *&v2[v396];
    *&v2[v396] = v371;
  }

  LOBYTE(v460) = 61;
  v373 = sub_1C1B95648();
  if (v373 != 2)
  {
    v374 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v375 = *&v2[v398];
    *&v2[v398] = v374;
  }

  LOBYTE(v460) = 62;
  v376 = sub_1C1B95638();
  v377 = v397;
  v378 = v397[1];
  *v397 = v376;
  v377[1] = v379;

  LOBYTE(v460) = 63;
  sub_1C1AE48EC();
  sub_1C1B95678();
  v380 = v459;
  v381 = v391;
  swift_beginAccess();
  v2[v381] = v380;
  if (([objc_opt_self() isActiveClientInfoSet] & 1) == 0)
  {
    v382 = sub_1C1B95028();
    v383 = v393;
    (*(*(v382 - 8) + 56))(v393, 1, 1, v382);
    sub_1C1B95008();
    v384 = sub_1C1B94FF8();
    v385 = swift_allocObject();
    v386 = MEMORY[0x1E69E85E0];
    *(v385 + 16) = v384;
    *(v385 + 24) = v386;
    sub_1C1AE33F8(0, 0, v383, &unk_1C1B9AFB8, v385);
  }

  v387 = type metadata accessor for NewsSupplementalContext();
  v458.receiver = v2;
  v458.super_class = v387;
  v45 = objc_msgSendSuper2(&v458, sel_init);
  (*(v392 + 8))(v390, v389);
  sub_1C1AA86F8(v394);
LABEL_5:
  v100 = *MEMORY[0x1E69E9840];
  return v45;
}