uint64_t sub_2301D1F6C()
{
  v0 = REMFeatureFlags.rawValue.getter();
  v2 = v1;
  if (v0 == REMFeatureFlags.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_230311048();
  }

  return v5 & 1;
}

uint64_t sub_2301D2008()
{
  sub_230311358();
  REMFeatureFlags.rawValue.getter();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2301D2070()
{
  REMFeatureFlags.rawValue.getter();
  sub_23030F9C8();
}

uint64_t sub_2301D20D4()
{
  sub_230311358();
  REMFeatureFlags.rawValue.getter();
  sub_23030F9C8();

  return sub_2303113A8();
}

unint64_t sub_2301D2144@<X0>(unint64_t *a1@<X8>)
{
  result = REMFeatureFlags.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_2301D217C()
{
  ObjectType = swift_getObjectType();
  if ((v0[OBJC_IVAR____TtC19ReminderKitInternalP33_BCDA9BEAAF9519B32B6DBABA4FDACDFF17TemporaryOverride_finishCalled] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC19ReminderKitInternalP33_BCDA9BEAAF9519B32B6DBABA4FDACDFF17TemporaryOverride_finishCalled] = 1;
    if (qword_280C9C350 != -1)
    {
      swift_once();
    }

    v2 = *&v0[OBJC_IVAR____TtC19ReminderKitInternalP33_BCDA9BEAAF9519B32B6DBABA4FDACDFF17TemporaryOverride_overridesToRestore];
    swift_beginAccess();
    off_280C9C358 = v2;
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2301D2390()
{
  if ((*(v0 + OBJC_IVAR____TtC19ReminderKitInternalP33_BCDA9BEAAF9519B32B6DBABA4FDACDFF17TemporaryOverride_finishCalled) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC19ReminderKitInternalP33_BCDA9BEAAF9519B32B6DBABA4FDACDFF17TemporaryOverride_finishCalled) = 1;
    if (qword_280C9C350 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + OBJC_IVAR____TtC19ReminderKitInternalP33_BCDA9BEAAF9519B32B6DBABA4FDACDFF17TemporaryOverride_overridesToRestore);
    swift_beginAccess();
    off_280C9C358 = v1;
  }

  return result;
}

unint64_t sub_2301D246C()
{
  result = qword_27DB16AC0;
  if (!qword_27DB16AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16AC0);
  }

  return result;
}

unint64_t sub_2301D24C4()
{
  result = qword_27DB16AC8;
  if (!qword_27DB16AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16AC8);
  }

  return result;
}

unint64_t sub_2301D251C()
{
  result = qword_27DB16AD0;
  if (!qword_27DB16AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16AD0);
  }

  return result;
}

unint64_t sub_2301D2574()
{
  result = qword_27DB16AD8;
  if (!qword_27DB16AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16AD8);
  }

  return result;
}

unint64_t sub_2301D25CC()
{
  result = qword_27DB16AE0;
  if (!qword_27DB16AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16AE0);
  }

  return result;
}

unint64_t sub_2301D2624()
{
  result = qword_27DB16AE8;
  if (!qword_27DB16AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16AE8);
  }

  return result;
}

unint64_t sub_2301D267C()
{
  result = qword_27DB16AF0;
  if (!qword_27DB16AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16AF0);
  }

  return result;
}

unint64_t sub_2301D26D4()
{
  result = qword_27DB16AF8;
  if (!qword_27DB16AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB16B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16AF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REMFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE5)
  {
    goto LABEL_17;
  }

  if (a2 + 27 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 27) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 27;
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

      return (*a1 | (v4 << 8)) - 27;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 27;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v8 = v6 - 28;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for REMFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE5)
  {
    v4 = 0;
  }

  if (a2 > 0xE4)
  {
    v5 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
    *result = a2 + 27;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2301D28D0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
LABEL_28:
    v18 = 1;
    return v18 & 1;
  }

  v9 = 0;
  v10 = a4 & 0xFFFFFFFFFFFFFFLL;
  v11 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (1)
  {
    if ((a4 & 0x1000000000000000) != 0)
    {
      v14 = sub_230310838();
      v16 = v15;
      goto LABEL_15;
    }

    if ((a4 & 0x2000000000000000) != 0)
    {
      v21[0] = a3;
      v21[1] = v10;
      v13 = v21 + v9;
    }

    else
    {
      v12 = v11;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v12 = sub_230310958();
      }

      v13 = (v12 + v9);
    }

    v14 = *v13;
    if ((*v13 & 0x80000000) == 0)
    {
LABEL_14:
      v16 = 1;
      goto LABEL_15;
    }

    v19 = (__clz(v14 ^ 0xFF) - 24);
    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v14 = ((v14 & 0xF) << 12) | ((v13[1] & 0x3F) << 6) | v13[2] & 0x3F;
        v16 = 3;
      }

      else
      {
        v14 = ((v14 & 0xF) << 18) | ((v13[1] & 0x3F) << 12) | ((v13[2] & 0x3F) << 6) | v13[3] & 0x3F;
        v16 = 4;
      }
    }

    else
    {
      if (v19 == 1)
      {
        goto LABEL_14;
      }

      v14 = v13[1] & 0x3F | ((v14 & 0x1F) << 6);
      v16 = 2;
    }

LABEL_15:
    LODWORD(v21[0]) = v14;
    v17 = a1(v21);
    if (v4)
    {
      return v18 & 1;
    }

    if ((v17 & 1) == 0)
    {
      break;
    }

    v9 += v16;
    if (v9 >= v5)
    {
      goto LABEL_28;
    }
  }

  v18 = 0;
  return v18 & 1;
}

uint64_t sub_2301D2A78(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  v13[2] = a3;
  v13[3] = a4;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v13[4] = 0;
  v13[5] = v6;

  v7 = sub_23030FA38();
  if (v8)
  {
    v9 = v8;
    while (1)
    {
      v13[0] = v7;
      v13[1] = v9;
      v10 = a1(v13);

      if (v4 || (v10 & 1) == 0)
      {
        break;
      }

      v7 = sub_23030FA38();
      v9 = v11;
      if (!v11)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  else
  {
LABEL_8:

    return 1;
  }
}

Swift::Bool __swiftcall CharacterSet.containsUnicodeScalars(of:)(Swift::String of)
{
  v2 = v1;
  object = of._object;
  countAndFlagsBits = of._countAndFlagsBits;
  v5 = sub_23030E4A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  (*(v6 + 16))(&v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v2, v5);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  (*(v6 + 32))(v9 + v8, &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v5);
  LOBYTE(object) = sub_2301D3190(countAndFlagsBits, object, sub_2301D2CA0);

  return object & 1;
}

uint64_t sub_2301D2CF8(uint64_t *a1, uint64_t a2)
{
  v4 = sub_23030E4A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = *a1;
  v7 = a1[1];
  (*(v5 + 16))(v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v11 = sub_2301D3190(v8, v7, sub_2301D340C);

  return v11 & 1;
}

void static CharacterSet.emojis.getter()
{
  v0 = CEMGetSharedEmojiCharacterSet();
  if (v0)
  {
    v1 = v0;
    sub_23030E488();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2301D2ECC()
{
  v0 = sub_23030E4A8();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_280C98570);
  v5 = __swift_project_value_buffer(v0, qword_280C98570);
  sub_2301D334C();
  sub_230310638();
  v8 = dword_2844EC8A0;
  sub_230310608();
  v8 = dword_2844EC8A4;
  sub_230310608();
  return (*(v1 + 32))(v5, v4, v0);
}

void sub_2301D3040()
{
  v0 = sub_23030E4A8();
  __swift_allocate_value_buffer(v0, qword_280C98548);
  __swift_project_value_buffer(v0, qword_280C98548);
  v1 = [objc_opt_self() hashtagTokenAllowedCharacters];
  sub_23030E488();
}

uint64_t sub_2301D30F4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_23030E4A8();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_2301D3190(uint64_t a1, unint64_t a2, unsigned int (*a3)(uint64_t))
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v8 = 0;
    v9 = a2 & 0xFFFFFFFFFFFFFFLL;
    v10 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v13 = sub_230310838();
        v15 = v14;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v18[0] = a1;
          v18[1] = v9;
          v12 = v18 + v8;
        }

        else
        {
          v11 = v10;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v11 = sub_230310958();
          }

          v12 = (v11 + v8);
        }

        v13 = *v12;
        if ((*v12 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v17 = (__clz(v13 ^ 0xFF) - 24);
        if (v17 > 2)
        {
          if (v17 == 3)
          {
            v13 = ((v13 & 0xF) << 12) | ((v12[1] & 0x3F) << 6) | v12[2] & 0x3F;
            v15 = 3;
          }

          else
          {
            v13 = ((v13 & 0xF) << 18) | ((v12[1] & 0x3F) << 12) | ((v12[2] & 0x3F) << 6) | v12[3] & 0x3F;
            v15 = 4;
          }

          goto LABEL_15;
        }

        if (v17 == 1)
        {
LABEL_14:
          v15 = 1;
        }

        else
        {
          v13 = v12[1] & 0x3F | ((v13 & 0x1F) << 6);
          v15 = 2;
        }
      }

LABEL_15:
      result = (v3 == 0) & a3(v13);
      if (result == 1)
      {
        v8 += v15;
        if (v8 < v4)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 1;
}

unint64_t sub_2301D334C()
{
  result = qword_280C98530;
  if (!qword_280C98530)
  {
    sub_23030E4A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98530);
  }

  return result;
}

uint64_t sub_2301D3410()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_280C970E0);
  v1 = __swift_project_value_buffer(v0, qword_280C970E0);
  if (qword_280C97090 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB1718);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t static REMNLQueryParserUtils.recurrentEventsFromStrings(attrStrings:referenceDate:)(unint64_t result, uint64_t a2)
{
  v3 = result;
  v11 = MEMORY[0x277D84F90];
  if (!(result >> 62))
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  result = sub_2303106D8();
  v4 = result;
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x231912650](v5, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = sub_2301D3638(v7, a2);
      if (v9)
      {
        v10 = v9;
        MEMORY[0x231911A30]();
        if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23030FD18();
        }

        sub_23030FD68();

        v6 = v11;
      }

      else
      {
      }

      ++v5;
    }

    while (v4 != v5);
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_2301D3638(void *a1, uint64_t a2)
{
  v92 = a2;
  v99 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  v91 = *(v2 - 8);
  v3 = *(v91 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v82 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v4);
  v81 = &v76 - v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v76 - v7;
  v89 = &v76 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C28);
  v10 = MEMORY[0x28223BE20](v9);
  v88 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v83 = &v76 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v80 = &v76 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v86 = &v76 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v76 - v19;
  v98 = &v76 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v76 - v21;
  v94 = &v76 - v21;
  v23 = sub_23030E758();
  v87 = *(v23 - 8);
  v24 = *(v87 + 56);
  v24(v22, 1, 1, v23);
  v97 = swift_allocBox();
  v78 = v25;
  v24(v25, 1, 1, v23);
  v84 = v23;
  v24(v20, 1, 1, v23);
  v104 = 0;
  v96 = swift_allocBox();
  v27 = v26;
  v28 = sub_23030EB58();
  v85 = *(v28 - 8);
  v29 = *(v85 + 56);
  v77 = v27;
  v29(v27, 1, 1, v28);
  v95 = swift_allocBox();
  v76 = v30;
  v79 = v28;
  v29(v30, 1, 1, v28);
  v101 = 0;
  v102 = 0;
  v103 = 1;
  v31 = [v99 string];
  v32 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v34 = v33;

  v90 = MEMORY[0x231911820](v32, v34);

  sub_230055F74(v92, v8, &unk_27DB15AA0);
  v35 = (*(v91 + 80) + 24) & ~*(v91 + 80);
  v36 = (v3 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  *(v43 + 16) = v99;
  sub_2300E0878(v89, v43 + v35);
  *(v43 + v36) = v93;
  *(v43 + v37) = v98;
  v44 = v94;
  *(v43 + v38) = v94;
  *(v43 + v39) = v96;
  *(v43 + v40) = &v104;
  *(v43 + v41) = v97;
  *(v43 + v42) = v95;
  *(v43 + ((v42 + 15) & 0xFFFFFFFFFFFFFFF8)) = &v101;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_2301D68D4;
  *(v45 + 24) = v43;
  v93 = v43;
  aBlock[4] = sub_2301D6A70;
  aBlock[5] = v45;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2301D5AE0;
  aBlock[3] = &block_descriptor_15;
  v46 = _Block_copy(aBlock);
  v47 = v99;

  [v47 enumerateAttributesInRange:0 options:v90 usingBlock:{0, v46}];
  _Block_release(v46);
  LOBYTE(v47) = swift_isEscapingClosureAtFileLocation();

  if (v47)
  {
    __break(1u);
  }

  else
  {
    if (v103)
    {

      v49 = 0;
    }

    else
    {
      v50 = v101;
      v99 = v102;
      v51 = v77;
      swift_beginAccess();
      v52 = v81;
      sub_230055F74(v51, v81, &unk_27DB15AA0);
      v53 = v76;
      swift_beginAccess();
      v54 = v82;
      sub_230055F74(v53, v82, &unk_27DB15AA0);
      LODWORD(v92) = v104;
      v55 = v80;
      sub_230055F74(v44, v80, &qword_27DB15C28);
      sub_2301D5B80(v55, v86);
      sub_230061918(v55, &qword_27DB15C28);
      v56 = v78;
      swift_beginAccess();
      sub_230055F74(v56, v55, &qword_27DB15C28);
      v57 = v83;
      sub_2301D5B80(v55, v83);
      sub_230061918(v55, &qword_27DB15C28);
      sub_230055F74(v98, v55, &qword_27DB15C28);
      sub_2301D5B80(v55, v88);
      sub_230061918(v55, &qword_27DB15C28);
      v58 = *(v85 + 48);
      v59 = v79;
      v60 = 0;
      if (v58(v52, 1, v79) != 1)
      {
        v60 = sub_23030EAA8();
        (*(v85 + 8))(v52, v59);
      }

      v61 = v58(v54, 1, v59);
      v62 = v87;
      if (v61 == 1)
      {
        v63 = 0;
      }

      else
      {
        v63 = sub_23030EAA8();
        (*(v85 + 8))(v54, v59);
      }

      v64 = v84;
      v65 = v86;
      v66 = *(v62 + 48);
      if (v66(v86, 1, v84) == 1)
      {
        v67 = 0;
      }

      else
      {
        v68 = sub_23030E668();
        v64 = v84;
        v67 = v68;
        (*(v62 + 8))(v65, v84);
      }

      if (v66(v57, 1, v64) == 1)
      {
        v69 = 0;
      }

      else
      {
        v70 = sub_23030E668();
        v71 = v57;
        v69 = v70;
        (*(v87 + 8))(v71, v64);
      }

      v72 = v88;
      if (v66(v88, 1, v64) == 1)
      {
        v73 = 0;
      }

      else
      {
        v74 = v72;
        v73 = sub_23030E668();
        (*(v87 + 8))(v74, v64);
      }

      v44 = v94;
      v75 = objc_allocWithZone(TTRNLTextStructuredEventRecurrentEvent);
      v49 = [v75 initWithRange:v50 startDate:v99 endDate:v60 isAllDay:v63 startComponents:v92 endComponents:v67 frequencyComponents:{v69, v73}];
    }

    sub_230061918(v98, &qword_27DB15C28);

    sub_230061918(v44, &qword_27DB15C28);

    return v49;
  }

  return result;
}

unint64_t static REMNLQueryParserUtils.locationsFromStrings(attrStrings:)(unint64_t result)
{
  v1 = result;
  v20 = MEMORY[0x277D84F90];
  if (result >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = result)
  {
    v3 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v3;
    }

    if (i < 1)
    {
      break;
    }

    v4 = 0;
    v16 = v18;
    while (1)
    {
      v5 = (v1 & 0xC000000000000001) != 0 ? MEMORY[0x231912650](v4, v1) : *(v1 + 8 * v4 + 32);
      v6 = v5;
      v19 = v3;
      v7 = [v5 string];
      _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v9 = v8;

      v10 = (v9 & 0x1000000000000000) != 0 ? sub_23030FA88() : sub_23030FA98();
      v11 = v10;

      v12 = swift_allocObject();
      *(v12 + 16) = &v19;
      v13 = swift_allocObject();
      *(v13 + 16) = sub_2301D6810;
      *(v13 + 24) = v12;
      v18[2] = sub_2301D6818;
      v18[3] = v13;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v18[0] = sub_2301D5AE0;
      v18[1] = &block_descriptor_9;
      v14 = _Block_copy(aBlock);

      [v6 enumerateAttributesInRange:0 options:v11 usingBlock:{0, v14}];
      _Block_release(v14);
      LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

      if (v14)
      {
        break;
      }

      ++v4;
      v15 = v19;

      sub_23009D154(v15);

      if (i == v4)
      {
        return v20;
      }
    }

    __break(1u);
LABEL_17:
    result = sub_2303106D8();
  }

  __break(1u);
  return result;
}

uint64_t sub_2301D430C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char *a5, unsigned int (*a6)(char *, uint64_t, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(char *, uint64_t), uint64_t a12, uint64_t a13, char **a14)
{
  v174 = a8;
  v179 = a7;
  v169 = a6;
  v168 = a5;
  v182 = a14;
  v17 = a12;
  v18 = a13;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C28);
  v19 = MEMORY[0x28223BE20](v157);
  v166 = &v151 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v161 = &v151 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v172 = &v151 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v158 = &v151 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v170 = (&v151 - v28);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v151 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v175 = &v151 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v151 - v34;
  v176 = sub_23030E758();
  v180 = *(v176 - 8);
  v36 = MEMORY[0x28223BE20](v176);
  v173 = &v151 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v159 = &v151 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v167 = &v151 - v41;
  MEMORY[0x28223BE20](v40);
  v43 = &v151 - v42;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  v44 = MEMORY[0x28223BE20](v163);
  v171 = &v151 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v47 = &v151 - v46;
  v181 = sub_23030EB58();
  v178 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v177 = &v151 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = a10;
  v49 = swift_projectBox();
  v165 = a12;
  v162 = swift_projectBox();
  v164 = a13;
  v50 = swift_projectBox();
  if (!*(a1 + 16) || (v17 = v50, v51 = sub_230081F60(*MEMORY[0x277D43E28]), (v52 & 1) == 0) || (sub_23004D5CC(*(a1 + 56) + 32 * v51, v185), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16B08), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_280C96E80 == -1)
    {
      if (!*(a1 + 16))
      {
        goto LABEL_65;
      }
    }

    else
    {
      swift_once();
      if (!*(a1 + 16))
      {
        goto LABEL_65;
      }
    }

    v64 = sub_230081F60(qword_280C96E88);
    if (v65)
    {
      sub_23004D5CC(*(a1 + 56) + 32 * v64, v185);
      result = sub_230061918(v185, &qword_27DB14810);
      if (v182[2])
      {
        v67 = v182;
        *v182 = a2;
LABEL_55:
        v67[1] = a3;
        *(v67 + 16) = 0;
        return result;
      }

      v68 = *v182;
      v69 = v182[1];
      v70 = __OFADD__(*v182, v69);
      v71 = &v69[*v182];
      if (v70)
      {
        __break(1u);
      }

      else if (!__OFADD__(a2, a3))
      {
        if (v71 <= &a2[a3])
        {
          v71 = &a2[a3];
        }

        if (v68 >= a2)
        {
          v68 = a2;
        }

        v70 = __OFSUB__(v71, v68);
        v72 = (v71 - v68);
        if (!v70)
        {
          goto LABEL_63;
        }

        __break(1u);
        goto LABEL_25;
      }

      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

LABEL_65:
    memset(v185, 0, sizeof(v185));
    return sub_230061918(v185, &qword_27DB14810);
  }

  v152 = v49;
  v156 = a3;
  v49 = v183;
  if (qword_280C970D8 != -1)
  {
    swift_once();
  }

  v53 = sub_23030EF48();
  v54 = __swift_project_value_buffer(v53, qword_280C970E0);
  v55 = v168;
  v155 = v54;
  v56 = sub_23030EF38();
  v57 = sub_2303102A8();

  v58 = os_log_type_enabled(v56, v57);
  v168 = a2;
  v153 = v17;
  if (v58)
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v59 = 138412290;
    *(v59 + 4) = v55;
    *v60 = v55;
    v61 = v55;
    _os_log_impl(&dword_230044000, v56, v57, "QueryParser: found recurrent event for: %@", v59, 0xCu);
    sub_230061918(v60, &qword_27DB15000);
    v62 = v60;
    v17 = v153;
    MEMORY[0x231914180](v62, -1, -1);
    MEMORY[0x231914180](v59, -1, -1);
  }

  sub_230055F74(v169, v47, &unk_27DB15AA0);
  v18 = v178;
  v63 = *(v178 + 48);
  a2 = v181;
  if (v63(v47, 1, v181) != 1)
  {
LABEL_25:
    (*(v18 + 32))(v177, v47, a2);
    goto LABEL_26;
  }

  sub_23030EB48();
  if (v63(v47, 1, a2) != 1)
  {
    sub_230061918(v47, &unk_27DB15AA0);
  }

LABEL_26:
  sub_2301D5744(*MEMORY[0x277D43E40], v49, v35);
  v73 = v180;
  v74 = v176;
  v169 = *(v180 + 48);
  if (v169(v35, 1, v176) == 1)
  {
    sub_230061918(v35, &qword_27DB15C28);
  }

  else
  {
    v75 = *(v73 + 32);
    v75(v43, v35, v74);
    v76 = v174;
    sub_230061918(v174, &qword_27DB15C28);
    v75(v76, v43, v74);
    (*(v73 + 56))(v76, 0, 1, v74);
  }

  a3 = v156;
  sub_2301D5744(*MEMORY[0x277D43E30], v49, v31);
  v77 = v169;
  v78 = v169(v31, 1, v74);
  v79 = v175;
  v80 = v49;
  v81 = v181;
  v154 = v80;
  v82 = v17;
  if (v78 == 1)
  {
    sub_2301D5744(*MEMORY[0x277D43E48], v80, v175);
    v83 = v77(v31, 1, v74);
    v84 = v170;
    if (v83 != 1)
    {
      sub_230061918(v31, &qword_27DB15C28);
    }
  }

  else
  {
    v85 = v180;
    (*(v180 + 32))(v175, v31, v74);
    (*(v85 + 56))(v79, 0, 1, v74);
    v84 = v170;
  }

  sub_230055F74(v79, v84, &qword_27DB15C28);
  v86 = v169;
  if (v169(v84, 1, v74) == 1)
  {
    sub_230061918(v84, &qword_27DB15C28);
    v87 = v180;
    v88 = v173;
    v89 = v82;
    v90 = v172;
  }

  else
  {
    v91 = v74;
    v170 = a11;
    v87 = v180;
    v92 = v167;
    (*(v180 + 32))(v167, v84, v91);
    v93 = v158;
    sub_230055F74(v174, v158, &qword_27DB15C28);
    LODWORD(v91) = v86(v93, 1, v91);
    sub_230061918(v93, &qword_27DB15C28);
    v94 = v91 == 1;
    v95 = v92;
    if (!v94)
    {
      sub_230061918(a9, &qword_27DB15C28);
      v96 = v176;
      (*(v87 + 16))(a9, v92, v176);
      (*(v87 + 56))(a9, 0, 1, v96);
    }

    sub_23030E628();
    v97 = v159;
    v89 = v82;
    if ((v98 & 1) != 0 || (sub_23030E6A8(), (v99 & 1) == 0))
    {
      v100 = v171;
      DateComponents.nextDate(after:)(v177, v171);
      (*(v178 + 56))(v100, 0, 1, v81);
      v101 = v152;
      swift_beginAccess();
      sub_2301D6A04(v100, v101, &unk_27DB15AA0);
    }

    sub_23030E6A8();
    *v170 = v102 & 1;
    v103 = v92;
    v74 = v176;
    (*(v87 + 16))(v97, v103, v176);

    v104 = sub_23030EF38();
    v105 = sub_2303102A8();

    v106 = os_log_type_enabled(v104, v105);
    v90 = v172;
    if (v106)
    {
      v107 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      *&v185[0] = v160;
      *v107 = 136315394;
      LODWORD(v158) = v105;
      v108 = MEMORY[0x2319103B0]();
      v110 = v109;
      v170 = *(v87 + 8);
      v170(v97, v176);
      v111 = sub_23004E30C(v108, v110, v185);

      *(v107 + 4) = v111;
      *(v107 + 12) = 2080;
      v112 = v152;
      swift_beginAccess();
      v113 = v171;
      sub_230055F74(v112, v171, &unk_27DB15AA0);
      v114 = sub_2303104B8();
      v115 = v89;
      v117 = v116;
      v79 = v175;
      sub_230061918(v113, &unk_27DB15AA0);
      v118 = sub_23004E30C(v114, v117, v185);
      v89 = v115;
      v90 = v172;
      v87 = v180;

      *(v107 + 14) = v118;
      _os_log_impl(&dword_230044000, v104, v158, "QueryParser: calculated relative date from dateComponents=%s -> startDate=%s", v107, 0x16u);
      v119 = v160;
      swift_arrayDestroy();
      MEMORY[0x231914180](v119, -1, -1);
      v120 = v107;
      v74 = v176;
      MEMORY[0x231914180](v120, -1, -1);

      v170(v167, v74);
      a3 = v156;
      v88 = v173;
    }

    else
    {

      v121 = *(v87 + 8);
      v121(v97, v74);
      v121(v95, v74);
      a3 = v156;
      v88 = v173;
      v79 = v175;
    }
  }

  sub_2301D5744(*MEMORY[0x277D43E38], v154, v90);

  v122 = v169;
  if (v169(v90, 1, v74) == 1)
  {
    sub_230061918(v79, &qword_27DB15C28);
    (*(v178 + 8))(v177, v181);
    result = sub_230061918(v90, &qword_27DB15C28);
    v123 = v168;
  }

  else
  {
    (*(v87 + 32))(v88, v90, v74);
    v124 = v161;
    sub_230055F74(v174, v161, &qword_27DB15C28);
    v125 = v122(v124, 1, v74);
    sub_230061918(v124, &qword_27DB15C28);
    if (v125 != 1)
    {
      v126 = v166;
      (*(v87 + 16))(v166, v88, v74);
      (*(v87 + 56))(v126, 0, 1, v74);
      v127 = v162;
      swift_beginAccess();
      sub_2301D6A04(v126, v127, &qword_27DB15C28);
    }

    sub_23030E5E8();
    if (v128)
    {
      v129 = v171;
      DateComponents.nextDate(after:)(v177, v171);
      (*(v178 + 56))(v129, 0, 1, v181);
      swift_beginAccess();
      sub_2301D6A04(v129, v89, &unk_27DB15AA0);
    }

    v130 = sub_23030EF38();
    v131 = sub_2303102A8();

    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      v179 = swift_slowAlloc();
      v184 = v179;
      *v132 = 136315394;
      v133 = v162;
      swift_beginAccess();
      v134 = v133;
      v135 = v166;
      sub_230055F74(v134, v166, &qword_27DB15C28);
      v136 = sub_2303104B8();
      v138 = v137;
      sub_230061918(v135, &qword_27DB15C28);
      v139 = sub_23004E30C(v136, v138, &v184);

      *(v132 + 4) = v139;
      *(v132 + 12) = 2080;
      v140 = v153;
      swift_beginAccess();
      v141 = v140;
      v142 = v171;
      sub_230055F74(v141, v171, &unk_27DB15AA0);
      v143 = sub_2303104B8();
      v145 = v144;
      sub_230061918(v142, &unk_27DB15AA0);
      v146 = sub_23004E30C(v143, v145, &v184);

      *(v132 + 14) = v146;
      _os_log_impl(&dword_230044000, v130, v131, "QueryParser: calculated relative date from dateComps=%s -> endDate=%s", v132, 0x16u);
      v147 = v179;
      swift_arrayDestroy();
      MEMORY[0x231914180](v147, -1, -1);
      MEMORY[0x231914180](v132, -1, -1);

      (*(v180 + 8))(v173, v176);
    }

    else
    {

      (*(v87 + 8))(v88, v74);
    }

    sub_230061918(v79, &qword_27DB15C28);
    result = (*(v178 + 8))(v177, v181);
    v123 = v168;
    a3 = v156;
  }

  if (v182[2])
  {
    v67 = v182;
    *v182 = v123;
    goto LABEL_55;
  }

  v68 = *v182;
  v148 = v182[1];
  v70 = __OFADD__(*v182, v148);
  v149 = &v148[*v182];
  if (v70)
  {
    goto LABEL_68;
  }

  if (!__OFADD__(v123, a3))
  {
    if (v149 <= &v123[a3])
    {
      v149 = &v123[a3];
    }

    if (v68 >= v123)
    {
      v68 = v123;
    }

    v70 = __OFSUB__(v149, v68);
    v72 = (v149 - v68);
    if (!v70)
    {
LABEL_63:
      v150 = v182;
      *v182 = v68;
      v150[1] = v72;
      return result;
    }

    goto LABEL_70;
  }

LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
  return result;
}

uint64_t sub_2301D5744@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C28);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v27 - v7;
  if (*(a2 + 16) && (v9 = sub_230081F60(a1), (v10 & 1) != 0))
  {
    sub_23004D5CC(*(a2 + 56) + 32 * v9, v28);
    sub_23004D5CC(v28, v27);
    v11 = sub_23030E758();
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v28);
      v12 = *(v11 - 8);
      v13 = *(v12 + 56);
      v13(v8, 0, 1, v11);
      (*(v12 + 32))(a3, v8, v11);
      return (v13)(a3, 0, 1, v11);
    }

    else
    {
      v17 = *(*(v11 - 8) + 56);
      v17(v8, 1, 1, v11);
      sub_230061918(v8, &qword_27DB15C28);
      if (qword_280C970D8 != -1)
      {
        swift_once();
      }

      v18 = sub_23030EF48();
      __swift_project_value_buffer(v18, qword_280C970E0);
      v19 = a1;
      v20 = sub_23030EF38();
      v21 = sub_230310298();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v27[0] = v23;
        *v22 = 136315138;
        v24 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        v26 = sub_23004E30C(v24, v25, v27);

        *(v22 + 4) = v26;
        _os_log_impl(&dword_230044000, v20, v21, "QueryParser: Could not cast to DateComponents value for %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        MEMORY[0x231914180](v23, -1, -1);
        MEMORY[0x231914180](v22, -1, -1);
      }

      __swift_destroy_boxed_opaque_existential_1(v28);
      return (v17)(a3, 1, 1, v11);
    }
  }

  else
  {
    v15 = sub_23030E758();
    v16 = *(*(v15 - 8) + 56);

    return v16(a3, 1, 1, v15);
  }
}

uint64_t sub_2301D5AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_2301D687C();
  v9 = sub_23030F658();
  v8(v9, a3, a4, a5);
}

uint64_t sub_2301D5B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB147D8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v45 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB147E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C28);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v45 - v10;
  v12 = sub_23030E758();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230055F74(a1, v11, &qword_27DB15C28);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_230061918(v11, &qword_27DB15C28);
    v16 = 1;
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    sub_23030EDC8();
    v17 = sub_23030EE08();
    (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
    v18 = [objc_opt_self() defaultTimeZone];
    sub_23030EE48();

    v19 = sub_23030EE68();
    (*(*(v19 - 8) + 56))(v5, 0, 1, v19);
    v20 = sub_23030E6B8();
    if (v21)
    {
      v22 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v20;
    }

    v45[8] = v22;
    v23 = sub_23030E6C8();
    if (v24)
    {
      v25 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v25 = v23;
    }

    v45[7] = v25;
    v26 = sub_23030E688();
    if (v27)
    {
      v28 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v28 = v26;
    }

    v45[6] = v28;
    v29 = sub_23030E6A8();
    if (v30)
    {
      v31 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v31 = v29;
    }

    v45[5] = v31;
    v32 = sub_23030E6D8();
    if (v33)
    {
      v34 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v34 = v32;
    }

    v45[4] = v34;
    v35 = sub_23030E6E8();
    if (v36)
    {
      v37 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v37 = v35;
    }

    v45[3] = v37;
    v38 = sub_23030E5D8();
    if (v39)
    {
      v40 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v40 = v38;
    }

    v45[2] = v40;
    v41 = sub_23030E708();
    if (v42)
    {
      v43 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v43 = v41;
    }

    v45[1] = v43;
    sub_23030E628();
    sub_23030E6F8();
    sub_23030E618();
    sub_23030E5E8();
    sub_23030E648();
    sub_23030E718();
    (*(v13 + 8))(v15, v12);
    v16 = 0;
  }

  return (*(v13 + 56))(v46, v16, 1, v12);
}

uint64_t sub_2301D5FFC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = result;
  if (qword_280C96E30 == -1)
  {
    if (!*(result + 16))
    {
      goto LABEL_5;
    }
  }

  else
  {
    result = swift_once();
    if (!*(v8 + 16))
    {
      goto LABEL_5;
    }
  }

  result = sub_230081F60(qword_280C96E38);
  if (v9)
  {
    sub_23004D5CC(*(v8 + 56) + 32 * result, v36);
    result = swift_dynamicCast();
    if (result)
    {
      goto LABEL_33;
    }
  }

LABEL_5:
  if (qword_280C96E18 == -1)
  {
    if (!*(v8 + 16))
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = swift_once();
    if (!*(v8 + 16))
    {
      goto LABEL_9;
    }
  }

  result = sub_230081F60(qword_280C96E20);
  if (v10)
  {
    sub_23004D5CC(*(v8 + 56) + 32 * result, v36);
    result = swift_dynamicCast();
    if (result)
    {
      goto LABEL_17;
    }
  }

LABEL_9:
  if (qword_280C96E70 == -1)
  {
    if (!*(v8 + 16))
    {
      goto LABEL_13;
    }
  }

  else
  {
    result = swift_once();
    if (!*(v8 + 16))
    {
      goto LABEL_13;
    }
  }

  result = sub_230081F60(qword_280C96E78);
  if (v11)
  {
    sub_23004D5CC(*(v8 + 56) + 32 * result, v36);
    result = swift_dynamicCast();
    if (result)
    {
      goto LABEL_33;
    }
  }

LABEL_13:
  if (qword_280C96E48 == -1)
  {
    if (!*(v8 + 16))
    {
      goto LABEL_25;
    }
  }

  else
  {
    result = swift_once();
    if (!*(v8 + 16))
    {
      goto LABEL_25;
    }
  }

  result = sub_230081F60(qword_280C96E50);
  if (v12)
  {
    sub_23004D5CC(*(v8 + 56) + 32 * result, v36);
    result = swift_dynamicCast();
    if (result)
    {
LABEL_17:
      v13 = v34;
      v14 = v35;
      v15 = 1;
LABEL_34:
      if (v13 == 1162694472 && v14 == 0xE400000000000000 || (sub_230311048() & 1) != 0)
      {
        v18 = 0;
      }

      else if (v13 == 0x454C4349484556 && v14 == 0xE700000000000000 || (sub_230311048() & 1) != 0)
      {
        v18 = 2;
      }

      else
      {
        if ((v13 != 1263685463 || v14 != 0xE400000000000000) && (sub_230311048() & 1) == 0)
        {
        }

        v18 = 1;
      }

      if (qword_280C970D8 != -1)
      {
        swift_once();
      }

      v19 = sub_23030EF48();
      __swift_project_value_buffer(v19, qword_280C970E0);

      v20 = sub_23030EF38();
      v21 = sub_2303102A8();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v33 = v18;
        v23 = a5;
        v24 = v15;
        v25 = a2;
        v26 = a3;
        v27 = swift_slowAlloc();
        v36[0] = v27;
        *v22 = 136315394;
        v28 = sub_23004E30C(v13, v14, v36);

        *(v22 + 4) = v28;
        *(v22 + 12) = 2080;
        v29 = sub_230310488();
        v31 = sub_23004E30C(v29, v30, v36);

        *(v22 + 14) = v31;
        _os_log_impl(&dword_230044000, v20, v21, "QueryParser: found event location: %s, range={%s}", v22, 0x16u);
        swift_arrayDestroy();
        v32 = v27;
        a3 = v26;
        a2 = v25;
        v15 = v24;
        a5 = v23;
        v18 = v33;
        MEMORY[0x231914180](v32, -1, -1);
        MEMORY[0x231914180](v22, -1, -1);
      }

      else
      {
      }

      [objc_allocWithZone(TTRNLTextStructuredEventLocation) initWithRange:a2 locationType:a3 proximity:{v18, v15}];
      MEMORY[0x231911A30]();
      if (*((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23030FD18();
      }

      return sub_23030FD68();
    }
  }

LABEL_25:
  if (qword_280C96E60 == -1)
  {
    if (!*(v8 + 16))
    {
      goto LABEL_29;
    }
  }

  else
  {
    result = swift_once();
    if (!*(v8 + 16))
    {
      goto LABEL_29;
    }
  }

  result = sub_230081F60(qword_280C96E68);
  if (v16)
  {
    sub_23004D5CC(*(v8 + 56) + 32 * result, v36);
    result = swift_dynamicCast();
    if (result)
    {
LABEL_33:
      v15 = 0;
      v13 = v34;
      v14 = v35;
      goto LABEL_34;
    }
  }

LABEL_29:
  if (qword_280C96E98 == -1)
  {
    if (!*(v8 + 16))
    {
      return result;
    }
  }

  else
  {
    result = swift_once();
    if (!*(v8 + 16))
    {
      return result;
    }
  }

  result = sub_230081F60(qword_280C96EA0);
  if (v17)
  {
    sub_23004D5CC(*(v8 + 56) + 32 * result, v36);
    result = swift_dynamicCast();
    if (result)
    {
      goto LABEL_33;
    }
  }

  return result;
}

uint64_t sub_2301D6684()
{
  result = sub_23030F8B8();
  qword_280C96E38 = result;
  return result;
}

uint64_t sub_2301D66BC()
{
  result = sub_23030F8B8();
  qword_280C96E20 = result;
  return result;
}

uint64_t sub_2301D66F4()
{
  result = sub_23030F8B8();
  qword_280C96E78 = result;
  return result;
}

uint64_t sub_2301D672C()
{
  result = sub_23030F8B8();
  qword_280C96E50 = result;
  return result;
}

uint64_t sub_2301D6764()
{
  result = sub_23030F8B8();
  qword_280C96E68 = result;
  return result;
}

uint64_t sub_2301D679C()
{
  result = sub_23030F8B8();
  qword_280C96EA0 = result;
  return result;
}

uint64_t sub_2301D67D8()
{
  result = sub_23030F8B8();
  qword_280C96E88 = result;
  return result;
}

unint64_t sub_2301D687C()
{
  result = qword_280C96E10;
  if (!qword_280C96E10)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C96E10);
  }

  return result;
}

uint64_t sub_2301D68D4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0) - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_2301D430C(a1, a2, a3, a4, *(v4 + 16), (v4 + v10), *(v4 + v11), *(v4 + v12), *(v4 + v13), *(v4 + v14), *(v4 + v15), *(v4 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v15 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((((v15 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2301D6A04(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_2301D6A78(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2302A386C(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_230310E48();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = v2[2 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = v13[3];
          *(v13 + 1) = *v13;
          *v13 = v11;
          v13[1] = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14318);
      v7 = sub_23030FD48();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_2301DC70C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t when<A>(on:_:)()
{
  sub_23030FDE8();
  type metadata accessor for Promise();
  return Promise.__allocating_init(resolver:)(sub_2301D7314);
}

uint64_t sub_2301D6C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v59 = a6;
  v48 = a3;
  v49 = a4;
  v11 = sub_23030F458();
  v54 = *(v11 - 8);
  v55 = v11;
  MEMORY[0x28223BE20](v11);
  v53 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23030F4C8();
  v51 = *(v13 - 8);
  v52 = v13;
  MEMORY[0x28223BE20](v13);
  v50 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v15[2] = a7;
  v15[3] = a1;
  v47 = v15;
  v15[4] = a2;

  v16 = dispatch_group_create();
  v17 = swift_allocObject();
  swift_getTupleTypeMetadata2();
  v18 = sub_23030F608();
  v58 = v17;
  *(v17 + 16) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = MEMORY[0x277D84F90];
  aBlock[0] = a5;
  v57 = a7;
  type metadata accessor for Promise();
  v20 = sub_23030FDE8();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x231911900](&v61, v20, WitnessTable);
  v63 = v61;
  sub_230310B58();
  sub_230310B28();
  v56 = sub_230310B48();
  sub_230310B38();
  if (v62)
  {
    v22 = v61;
    do
    {
      dispatch_group_enter(v16);
      v23 = swift_allocObject();
      v23[2] = v57;
      v23[3] = v58;
      v23[4] = v22;

      v24 = sub_230047648(v59, sub_2301DCF94, v23);

      v25 = swift_allocObject();
      *(v25 + 16) = v19;
      *(v25 + 24) = v22;
      v26 = qword_280C9BA30;

      if (v26 != -1)
      {
        swift_once();
      }

      v27 = qword_280C9BA38;
      v28 = *(v24 + 16);
      os_unfair_lock_lock_with_options();
      v29 = swift_allocObject();
      *(v29 + 16) = v27;
      *(v29 + 24) = 0;
      *(v29 + 32) = 1;
      *(v29 + 40) = nullsub_1;
      *(v29 + 48) = 0;
      *(v29 + 56) = sub_2301DCFB4;
      *(v29 + 64) = v25;
      *(v29 + 72) = nullsub_1;
      *(v29 + 80) = 0;
      v30 = v27;

      v31 = sub_230064FA4(sub_2300654B4, v29);

      os_unfair_lock_unlock(*(*(v28 + 16) + 16));
      v31();

      v32 = swift_allocObject();
      *(v32 + 16) = v16;
      v33 = *(v24 + 16);
      v34 = v16;
      os_unfair_lock_lock_with_options();
      v35 = swift_allocObject();
      v35[2] = v30;
      v35[3] = sub_2301DCFBC;
      v35[4] = v32;
      v36 = v30;

      v37 = sub_230064FA4(sub_2301DD008, v35);

      os_unfair_lock_unlock(*(*(v33 + 16) + 16));
      v37();

      sub_230310B38();
      v22 = v61;
    }

    while (v62);
  }

  v38 = swift_allocObject();
  v39 = v58;
  v38[2] = v57;
  v38[3] = v19;
  v40 = v49;
  v38[4] = v48;
  v38[5] = v40;
  v38[6] = v39;
  v38[7] = sub_2301DCF48;
  v38[8] = v47;
  aBlock[4] = sub_2301DCF80;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2300F5280;
  aBlock[3] = &block_descriptor_145_0;
  v41 = _Block_copy(aBlock);

  v42 = v50;
  sub_23030F488();
  v61 = MEMORY[0x277D84F90];
  sub_2300ED808();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB16A40);
  sub_2300ED860();
  v43 = v53;
  v44 = v55;
  sub_230310648();
  sub_2303102E8();
  _Block_release(v41);

  (*(v54 + 8))(v43, v44);
  (*(v51 + 8))(v42, v52);
}

uint64_t sub_2301D7320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = &v13 - v9;
  v11 = *(v8 + 48);
  *v10 = a3;
  (*(*(a4 - 8) + 16))(&v10[v11], a1, a4);
  swift_beginAccess();
  sub_23030FDE8();
  sub_23030FD98();
  return swift_endAccess();
}

uint64_t sub_2301D7448(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  v7 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_23007FF54(0, v6[2] + 1, 1, v6);
    *(a2 + 16) = v6;
  }

  v10 = v6[2];
  v9 = v6[3];
  if (v10 >= v9 >> 1)
  {
    v6 = sub_23007FF54((v9 > 1), v10 + 1, 1, v6);
  }

  v6[2] = v10 + 1;
  v11 = &v6[2 * v10];
  v11[4] = a3;
  v11[5] = a1;
  *(a2 + 16) = v6;
  return swift_endAccess();
}

void sub_2301D7524(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  if (*(*(a1 + 16) + 16))
  {
    v29 = *(a1 + 16);
    swift_bridgeObjectRetain_n();
    sub_2301D6A78(&v29);

    v11 = v29;
    v12 = v29[2];
    if (v12)
    {
      v29 = MEMORY[0x277D84F90];
      sub_23009EEF0(0, v12, 0);
      v13 = 5;
      v14 = v29;
      do
      {
        v15 = v11[v13];
        v16 = v15;
        v29 = v14;
        v18 = v14[2];
        v17 = v14[3];
        if (v18 >= v17 >> 1)
        {
          sub_23009EEF0((v17 > 1), v18 + 1, 1);
          v14 = v29;
        }

        v14[2] = v18 + 1;
        v14[v18 + 4] = v15;
        v13 += 2;
        --v12;
      }

      while (v12);
    }

    else
    {

      v14 = MEMORY[0x277D84F90];
    }

    sub_2301DCD28();
    v26 = swift_allocError();
    *v27 = v14;
    a2();
  }

  else
  {
    v19 = swift_beginAccess();
    MEMORY[0x28223BE20](v19);

    swift_getTupleTypeMetadata2();
    v20 = sub_23030FDE8();
    swift_getWitnessTable();
    v21 = sub_23030FBE8();

    v28[4] = v21;
    MEMORY[0x28223BE20](v22);
    v28[2] = a7;
    WitnessTable = swift_getWitnessTable();
    v25 = sub_23006CBDC(sub_2301DCFD8, v28, v20, a7, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v24);

    a5(v25);
  }
}

uint64_t sub_2301D7844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, TupleTypeMetadata2);
  return (*(*(a2 - 8) + 32))(a3, &v8[*(TupleTypeMetadata2 + 48)], a2);
}

uint64_t when2<A, B>(on:_:_:)()
{
  swift_getTupleTypeMetadata2();
  type metadata accessor for Promise();
  return Promise.__allocating_init(resolver:)(sub_2301D818C);
}

uint64_t sub_2301D7A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6, uint64_t *a7)
{
  v56 = a3;
  v57 = a4;
  v11 = *a5;
  v12 = *a7;
  v13 = sub_23030F458();
  v62 = *(v13 - 8);
  v63 = v13;
  MEMORY[0x28223BE20](v13);
  v61 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23030F4C8();
  v59 = *(v15 - 8);
  v60 = v15;
  MEMORY[0x28223BE20](v15);
  v58 = v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v18 = *(v11 + 80);
  v17[2] = v18;
  v53[1] = a7;
  v19 = *(v12 + 80);
  v17[3] = v19;
  v17[4] = a1;
  v54 = v17;
  v17[5] = a2;

  v20 = dispatch_group_create();
  sub_2303104C8();
  sub_2303104C8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v22 = swift_allocBox();
  v24 = v23;
  v25 = *(TupleTypeMetadata2 + 48);
  (*(*(v18 - 8) + 56))(v23, 1, 1, v18);
  (*(*(v19 - 8) + 56))(v24 + v25, 1, 1, v19);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  dispatch_group_enter(v20);
  v27 = swift_allocObject();
  v64 = v18;
  v27[2] = v18;
  v27[3] = v19;
  v27[4] = v22;
  v55 = v22;

  v65 = a6;
  sub_230047648(a6, sub_2301DCE4C, v27);

  v28 = qword_280C9BA30;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = qword_280C9BA38;
  v30 = sub_230065368(qword_280C9BA38, sub_2301DCE6C, v26);

  v31 = swift_allocObject();
  *(v31 + 16) = v20;
  v32 = *(v30 + 16);
  v33 = v20;
  os_unfair_lock_lock_with_options();
  v34 = swift_allocObject();
  v34[2] = v29;
  v34[3] = sub_2301DD03C;
  v34[4] = v31;
  v35 = v29;

  v36 = sub_230064FA4(sub_2301DD008, v34);

  os_unfair_lock_unlock(*(*(v32 + 16) + 16));
  v36();

  dispatch_group_enter(v33);
  v37 = swift_allocObject();
  v37[2] = v64;
  v37[3] = v19;
  v38 = v55;
  v37[4] = v55;

  sub_230047648(v65, sub_2301DCE88, v37);

  v39 = sub_230065368(v35, sub_2301DCEA8, v26);

  v40 = swift_allocObject();
  *(v40 + 16) = v33;
  v41 = *(v39 + 16);
  v42 = v33;
  os_unfair_lock_lock_with_options();
  v43 = swift_allocObject();
  v43[2] = v35;
  v43[3] = sub_2301DD03C;
  v43[4] = v40;
  v44 = v35;

  v45 = sub_230064FA4(sub_2301DD008, v43);

  os_unfair_lock_unlock(*(*(v41 + 16) + 16));
  v45();

  v46 = swift_allocObject();
  v46[2] = v64;
  v46[3] = v19;
  v46[4] = v38;
  v46[5] = sub_2301DCE40;
  v46[6] = v54;
  v46[7] = v26;
  v47 = v57;
  v46[8] = v56;
  v46[9] = v47;
  aBlock[4] = sub_2301DCF14;
  aBlock[5] = v46;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2300F5280;
  aBlock[3] = &block_descriptor_130;
  v48 = _Block_copy(aBlock);

  v49 = v58;
  sub_23030F488();
  v66 = MEMORY[0x277D84F90];
  sub_2300ED808();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB16A40);
  sub_2300ED860();
  v50 = v61;
  v51 = v63;
  sub_230310648();
  sub_2303102E8();
  _Block_release(v48);

  (*(v62 + 8))(v50, v51);
  (*(v59 + 8))(v49, v60);
}

uint64_t sub_2301D8198(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v14 = &v16 - v13;
  (*(*(a5 - 8) + 16))(&v16 - v13, a1, a5);
  (*(*(a6 - 8) + 16))(&v14[*(TupleTypeMetadata2 + 48)], a2, a6);
  a3(v14);
  return (*(v12 + 8))(v14, TupleTypeMetadata2);
}

uint64_t sub_2301D8304(uint64_t a1, void (*a2)(char *, char *), uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v63 = a6;
  v64 = a5;
  v55 = a3;
  v56 = a2;
  v58 = *(a8 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v54 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *(v13 - 8);
  MEMORY[0x28223BE20](v11);
  v53 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2303104C8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v57 = &v52 - v17;
  v59 = a8;
  v18 = sub_2303104C8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = *(TupleTypeMetadata2 - 8);
  v21 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v52 - v24;
  v26 = swift_projectBox();
  swift_beginAccess();
  v60 = v20;
  v27 = v20;
  v28 = a7;
  (*(v27 + 16))(v25, v26, TupleTypeMetadata2);
  v61 = v16;
  v62 = TupleTypeMetadata2;
  v29 = *(TupleTypeMetadata2 + 48);
  (*(v16 + 32))(v23, v25, v15);
  v30 = *(*(v18 - 8) + 32);
  v31 = v18;
  v32 = v65;
  v30(&v23[v29], &v25[v29], v31);
  if ((*(v32 + 48))(v23, 1, a7) != 1)
  {
    v33 = v57;
    (*(v61 + 16))(v57, v23, v15);
    v35 = v58;
    v34 = v59;
    if ((*(v58 + 48))(&v23[v29], 1, v59) != 1)
    {
      v49 = v53;
      (*(v32 + 32))(v53, v33, v28);
      v50 = v54;
      (*(v35 + 32))(v54, &v23[v29], v34);
      v56(v49, v50);
      (*(v35 + 8))(v50, v34);
      (*(v32 + 8))(v49, v28);
      v48 = v61;
      return (*(v48 + 8))(v23, v15);
    }

    (*(v32 + 8))(v33, v28);
  }

  swift_beginAccess();
  v36 = *(a4 + 16);
  v37 = a4;
  if (v36)
  {
    v38 = v36;
    v39 = sub_230080088(0, 1, 1, MEMORY[0x277D84F90]);
    v41 = v39[2];
    v40 = v39[3];
    if (v41 >= v40 >> 1)
    {
      v39 = sub_230080088((v40 > 1), v41 + 1, 1, v39);
    }

    v39[2] = v41 + 1;
    v39[v41 + 4] = v36;
  }

  else
  {
    v39 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v42 = *(v37 + 24);
  if (v42)
  {
    v43 = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_230080088(0, v39[2] + 1, 1, v39);
    }

    v45 = v39[2];
    v44 = v39[3];
    if (v45 >= v44 >> 1)
    {
      v39 = sub_230080088((v44 > 1), v45 + 1, 1, v39);
    }

    v39[2] = v45 + 1;
    v39[v45 + 4] = v42;
  }

  sub_2301DCD28();
  v46 = swift_allocError();
  *v47 = v39;
  v64();

  v15 = v62;
  v48 = v60;
  return (*(v48 + 8))(v23, v15);
}

uint64_t whenSome<A, B>(on:_:_:)()
{
  sub_2303104C8();
  sub_2303104C8();
  swift_getTupleTypeMetadata2();
  type metadata accessor for Promise();
  return Promise.__allocating_init(resolver:)(sub_2301D90FC);
}

uint64_t sub_2301D8988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6, uint64_t *a7)
{
  v56 = a3;
  v57 = a4;
  v11 = *a5;
  v12 = *a7;
  v13 = sub_23030F458();
  v62 = *(v13 - 8);
  v63 = v13;
  MEMORY[0x28223BE20](v13);
  v61 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23030F4C8();
  v59 = *(v15 - 8);
  v60 = v15;
  MEMORY[0x28223BE20](v15);
  v58 = v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v18 = *(v11 + 80);
  v17[2] = v18;
  v53[1] = a7;
  v19 = *(v12 + 80);
  v17[3] = v19;
  v17[4] = a1;
  v54 = v17;
  v17[5] = a2;

  v20 = dispatch_group_create();
  sub_2303104C8();
  sub_2303104C8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v22 = swift_allocBox();
  v24 = v23;
  v25 = *(TupleTypeMetadata2 + 48);
  (*(*(v18 - 8) + 56))(v23, 1, 1, v18);
  (*(*(v19 - 8) + 56))(v24 + v25, 1, 1, v19);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  dispatch_group_enter(v20);
  v27 = swift_allocObject();
  v64 = v18;
  v27[2] = v18;
  v27[3] = v19;
  v27[4] = v22;
  v55 = v22;

  v65 = a6;
  sub_230047648(a6, sub_2301DD00C, v27);

  v28 = qword_280C9BA30;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = qword_280C9BA38;
  v30 = sub_230065368(qword_280C9BA38, sub_2301DD054, v26);

  v31 = swift_allocObject();
  *(v31 + 16) = v20;
  v32 = *(v30 + 16);
  v33 = v20;
  os_unfair_lock_lock_with_options();
  v34 = swift_allocObject();
  v34[2] = v29;
  v34[3] = sub_2301DD03C;
  v34[4] = v31;
  v35 = v29;

  v36 = sub_230064FA4(sub_2301DD008, v34);

  os_unfair_lock_unlock(*(*(v32 + 16) + 16));
  v36();

  dispatch_group_enter(v33);
  v37 = swift_allocObject();
  v37[2] = v64;
  v37[3] = v19;
  v38 = v55;
  v37[4] = v55;

  sub_230047648(v65, sub_2301DD024, v37);

  v39 = sub_230065368(v35, sub_2301DD058, v26);

  v40 = swift_allocObject();
  *(v40 + 16) = v33;
  v41 = *(v39 + 16);
  v42 = v33;
  os_unfair_lock_lock_with_options();
  v43 = swift_allocObject();
  v43[2] = v35;
  v43[3] = sub_2301DD03C;
  v43[4] = v40;
  v44 = v35;

  v45 = sub_230064FA4(sub_2301DD008, v43);

  os_unfair_lock_unlock(*(*(v41 + 16) + 16));
  v45();

  v46 = swift_allocObject();
  v46[2] = v64;
  v46[3] = v19;
  v46[4] = v38;
  v46[5] = sub_2301DCE1C;
  v46[6] = v54;
  v46[7] = v26;
  v47 = v57;
  v46[8] = v56;
  v46[9] = v47;
  aBlock[4] = sub_2301DCE28;
  aBlock[5] = v46;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2300F5280;
  aBlock[3] = &block_descriptor_100;
  v48 = _Block_copy(aBlock);

  v49 = v58;
  sub_23030F488();
  v66 = MEMORY[0x277D84F90];
  sub_2300ED808();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB16A40);
  sub_2300ED860();
  v50 = v61;
  v51 = v63;
  sub_230310648();
  sub_2303102E8();
  _Block_release(v48);

  (*(v62 + 8))(v50, v51);
  (*(v59 + 8))(v49, v60);
}

uint64_t sub_2301D9108(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v6 = sub_2303104C8();
  v7 = sub_2303104C8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v11 = &v13 - v10;
  (*(*(v6 - 8) + 16))(&v13 - v10, a1, v6);
  (*(*(v7 - 8) + 16))(&v11[*(TupleTypeMetadata2 + 48)], a2, v7);
  a3(v11);
  return (*(v9 + 8))(v11, TupleTypeMetadata2);
}

uint64_t sub_2301D9290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2303104C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  sub_2303104C8();
  v9 = swift_projectBox();
  v10 = *(a3 - 8);
  (*(v10 + 16))(v8, a1, a3);
  (*(v10 + 56))(v8, 0, 1, a3);
  swift_beginAccess();
  return (*(v6 + 40))(v9, v8, v5);
}

uint64_t sub_2301D940C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2303104C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - v8;
  sub_2303104C8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = swift_projectBox();
  v12 = *(a4 - 8);
  (*(v12 + 16))(v9, a1, a4);
  (*(v12 + 56))(v9, 0, 1, a4);
  swift_beginAccess();
  return (*(v7 + 40))(v11 + *(TupleTypeMetadata2 + 48), v9, v6);
}

void sub_2301D95B4(uint64_t a1, void (*a2)(char *, char *), uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40[1] = a6;
  v41 = a5;
  v40[0] = a4;
  v44 = a3;
  v45 = a2;
  v10 = sub_2303104C8();
  v42 = a8;
  v11 = sub_2303104C8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = *(TupleTypeMetadata2 - 8);
  v13 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v15 = v40 - v14;
  v16 = *(v11 - 8);
  v17 = MEMORY[0x28223BE20](v13);
  v19 = v40 - v18;
  v20 = *(v10 - 8);
  MEMORY[0x28223BE20](v17);
  v22 = v40 - v21;
  v23 = swift_projectBox();
  swift_beginAccess();
  (*(v20 + 16))(v22, v23, v10);
  LODWORD(a7) = (*(*(a7 - 8) + 48))(v22, 1, a7);
  v24 = v22;
  v25 = *(v20 + 8);
  v25(v24, v10);
  if (a7 == 1 && (swift_beginAccess(), (*(v16 + 16))(v19, v23 + *(TupleTypeMetadata2 + 48), v11), v26 = (*(*(v42 - 8) + 48))(v19, 1), (*(v16 + 8))(v19, v11), v26 == 1))
  {
    v27 = v40[0];
    swift_beginAccess();
    v28 = *(v27 + 16);
    if (v28)
    {
      v29 = v28;
      v30 = sub_230080088(0, 1, 1, MEMORY[0x277D84F90]);
      v32 = v30[2];
      v31 = v30[3];
      if (v32 >= v31 >> 1)
      {
        v30 = sub_230080088((v31 > 1), v32 + 1, 1, v30);
      }

      v30[2] = v32 + 1;
      v30[v32 + 4] = v28;
    }

    else
    {
      v30 = MEMORY[0x277D84F90];
    }

    swift_beginAccess();
    v34 = *(v27 + 24);
    if (v34)
    {
      v35 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_230080088(0, v30[2] + 1, 1, v30);
      }

      v37 = v30[2];
      v36 = v30[3];
      if (v37 >= v36 >> 1)
      {
        v30 = sub_230080088((v36 > 1), v37 + 1, 1, v30);
      }

      v30[2] = v37 + 1;
      v30[v37 + 4] = v34;
    }

    sub_2301DCD28();
    v38 = swift_allocError();
    *v39 = v30;
    v41();
  }

  else
  {
    swift_beginAccess();
    (*(v43 + 16))(v15, v23, TupleTypeMetadata2);
    v33 = *(TupleTypeMetadata2 + 48);
    v45(v15, &v15[v33]);
    (*(v16 + 8))(&v15[v33], v11);
    v25(v15, v10);
  }
}

uint64_t whenFirst<A, B>(on:_:maybe:)()
{
  sub_2303104C8();
  swift_getTupleTypeMetadata2();
  type metadata accessor for Promise();
  return Promise.__allocating_init(resolver:)(sub_2301DA2E0);
}

uint64_t sub_2301D9B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6, NSObject *a7)
{
  v59 = a4;
  v57 = a3;
  v11 = *a5;
  v12.isa = a7->isa;
  v13 = sub_23030F458();
  v64 = *(v13 - 8);
  v65 = v13;
  MEMORY[0x28223BE20](v13);
  v63 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23030F4C8();
  v61 = *(v15 - 8);
  v62 = v15;
  MEMORY[0x28223BE20](v15);
  v60 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v18 = *(v11 + 80);
  v17[2] = v18;
  v54 = a7;
  v19 = *(v12.isa + 10);
  v17[3] = v19;
  v17[4] = a1;
  v55 = v17;
  v17[5] = a2;

  v20 = dispatch_group_create();
  sub_2303104C8();
  v21 = swift_allocBox();
  (*(*(v18 - 8) + 56))(v22, 1, 1, v18);
  sub_2303104C8();
  v66 = swift_allocBox();
  (*(*(v19 - 8) + 56))(v23, 1, 1, v19);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v56 = swift_allocObject();
  *(v56 + 16) = 0;
  dispatch_group_enter(v20);
  v25 = swift_allocObject();
  v25[2] = v18;
  v25[3] = v19;
  v25[4] = v21;
  v58 = v21;

  v67 = a6;
  sub_230047648(a6, sub_2301DCD88, v25);

  v26 = qword_280C9BA30;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = qword_280C9BA38;
  v28 = sub_230065368(qword_280C9BA38, sub_2301DCDA8, v24);

  v29 = swift_allocObject();
  *(v29 + 16) = v20;
  v30 = *(v28 + 16);
  v53 = v24;
  v31 = v20;
  os_unfair_lock_lock_with_options();
  v32 = swift_allocObject();
  v32[2] = v27;
  v32[3] = sub_2301DD03C;
  v32[4] = v29;
  v33 = v27;

  v34 = sub_230064FA4(sub_2301DD008, v32);

  os_unfair_lock_unlock(*(*(v30 + 16) + 16));
  v34();

  dispatch_group_enter(v31);
  v35 = swift_allocObject();
  v35[2] = v18;
  v35[3] = v19;
  v35[4] = v66;

  sub_230047648(v67, sub_2301DCDC4, v35);

  v36 = v56;

  v37 = sub_230065368(v33, sub_2301DD050, v36);

  v38 = swift_allocObject();
  *(v38 + 16) = v31;
  v39 = *(v37 + 16);
  v54 = v31;
  os_unfair_lock_lock_with_options();
  v40 = swift_allocObject();
  v40[2] = v33;
  v40[3] = sub_2301DD03C;
  v40[4] = v38;
  v41 = v33;

  v42 = sub_230064FA4(sub_2301DD008, v40);

  os_unfair_lock_unlock(*(*(v39 + 16) + 16));
  v42();

  v43 = swift_allocObject();
  v43[2] = v18;
  v43[3] = v19;
  v44 = v59;
  v43[4] = v58;
  v43[5] = sub_2301DCD7C;
  v45 = v66;
  v43[6] = v55;
  v43[7] = v45;
  v43[8] = v53;
  v43[9] = v36;
  v43[10] = v57;
  v43[11] = v44;
  aBlock[4] = sub_2301DCDE4;
  aBlock[5] = v43;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2300F5280;
  aBlock[3] = &block_descriptor_68;
  v46 = _Block_copy(aBlock);

  v47 = v60;
  sub_23030F488();
  v68 = MEMORY[0x277D84F90];
  sub_2300ED808();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB16A40);
  sub_2300ED860();
  v48 = v63;
  v49 = v65;
  sub_230310648();
  v50 = v54;
  sub_2303102E8();
  _Block_release(v46);

  (*(v64 + 8))(v48, v49);
  (*(v61 + 8))(v47, v62);
}

uint64_t sub_2301DA2EC(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v9 = sub_2303104C8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v13 = &v15 - v12;
  (*(*(a5 - 8) + 16))(&v15 - v12, a1, a5);
  (*(*(v9 - 8) + 16))(&v13[*(TupleTypeMetadata2 + 48)], a2, v9);
  a3(v13);
  return (*(v11 + 8))(v13, TupleTypeMetadata2);
}

uint64_t sub_2301DA464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2303104C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  v9 = swift_projectBox();
  v10 = *(a3 - 8);
  (*(v10 + 16))(v8, a1, a3);
  (*(v10 + 56))(v8, 0, 1, a3);
  swift_beginAccess();
  return (*(v6 + 40))(v9, v8, v5);
}

uint64_t sub_2301DA5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2303104C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  v10 = swift_projectBox();
  v11 = *(a4 - 8);
  (*(v11 + 16))(v9, a1, a4);
  (*(v11 + 56))(v9, 0, 1, a4);
  swift_beginAccess();
  return (*(v7 + 40))(v10, v9, v6);
}

id sub_2301DA73C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

void sub_2301DA790(uint64_t a1, void (*a2)(char *, char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), uint64_t a8, uint64_t a9)
{
  v41 = a8;
  v42 = a7;
  v39 = a2;
  v40 = a6;
  v36 = a5;
  v38 = a3;
  v37 = sub_2303104C8();
  v9 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v11 = &v36 - v10;
  v12 = sub_2303104C8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  v17 = *(a9 - 8);
  MEMORY[0x28223BE20](v14);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_projectBox();
  v21 = swift_projectBox();
  swift_beginAccess();
  (*(v13 + 16))(v16, v20, v12);
  if ((*(v17 + 48))(v16, 1, a9) == 1)
  {
    (*(v13 + 8))(v16, v12);
    v22 = v36;
    swift_beginAccess();
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = v23;
      v25 = sub_230080088(0, 1, 1, MEMORY[0x277D84F90]);
      v27 = v25[2];
      v26 = v25[3];
      if (v27 >= v26 >> 1)
      {
        v25 = sub_230080088((v26 > 1), v27 + 1, 1, v25);
      }

      v25[2] = v27 + 1;
      v25[v27 + 4] = v23;
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
    }

    v29 = v40;
    swift_beginAccess();
    v30 = *(v29 + 16);
    if (v30)
    {
      v31 = v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_230080088(0, v25[2] + 1, 1, v25);
      }

      v33 = v25[2];
      v32 = v25[3];
      if (v33 >= v32 >> 1)
      {
        v25 = sub_230080088((v32 > 1), v33 + 1, 1, v25);
      }

      v25[2] = v33 + 1;
      v25[v33 + 4] = v30;
    }

    sub_2301DCD28();
    v34 = swift_allocError();
    *v35 = v25;
    v42();
  }

  else
  {
    (*(v17 + 32))(v19, v16, a9);
    swift_beginAccess();
    v28 = v37;
    (*(v9 + 16))(v11, v21, v37);
    v39(v19, v11);
    (*(v9 + 8))(v11, v28);
    (*(v17 + 8))(v19, a9);
  }
}

uint64_t when3<A, B, C>(on:_:_:_:)()
{
  swift_getTupleTypeMetadata3();
  type metadata accessor for Promise();
  return Promise.__allocating_init(resolver:)(sub_2301DB62C);
}

uint64_t sub_2301DAC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6, uint64_t *a7, uint64_t *a8)
{
  v88 = a6;
  v76 = a3;
  v77 = a4;
  v12 = *a5;
  v13 = *a7;
  v14 = *a8;
  v15 = sub_23030F458();
  v82 = *(v15 - 8);
  v83 = v15;
  MEMORY[0x28223BE20](v15);
  v81 = v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23030F4C8();
  v79 = *(v17 - 8);
  v80 = v17;
  MEMORY[0x28223BE20](v17);
  v78 = v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v20 = *(v12 + 80);
  v19[2] = v20;
  v74[0] = a7;
  v21 = *(v13 + 80);
  v19[3] = v21;
  v74[1] = a8;
  v22 = *(v14 + 80);
  v19[4] = v22;
  v19[5] = a1;
  v75 = v19;
  v19[6] = a2;

  v23 = dispatch_group_create();
  sub_2303104C8();
  sub_2303104C8();
  sub_2303104C8();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v25 = swift_allocBox();
  v27 = v26;
  v28 = *(TupleTypeMetadata3 + 48);
  v29 = *(TupleTypeMetadata3 + 64);
  (*(*(v20 - 8) + 56))(v26, 1, 1, v20);
  (*(*(v21 - 8) + 56))(v27 + v28, 1, 1, v21);
  (*(*(v22 - 8) + 56))(v27 + v29, 1, 1, v22);
  v30 = swift_allocObject();
  v30[3] = 0;
  v30[4] = 0;
  v30[2] = 0;
  dispatch_group_enter(v23);
  v31 = swift_allocObject();
  v85 = v20;
  v86 = v22;
  v31[2] = v20;
  v31[3] = v21;
  v87 = v21;
  v31[4] = v22;
  v31[5] = v25;

  sub_230047648(v88, sub_2301DB9A4, v31);

  v32 = qword_280C9BA30;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = qword_280C9BA38;
  v34 = sub_230065368(qword_280C9BA38, sub_2301DD054, v30);

  v35 = swift_allocObject();
  *(v35 + 16) = v23;
  v36 = *(v34 + 16);
  v37 = v23;
  os_unfair_lock_lock_with_options();
  v38 = swift_allocObject();
  v38[2] = v33;
  v38[3] = sub_2301DD03C;
  v38[4] = v35;
  v39 = v33;

  v40 = sub_230064FA4(sub_2301DCC94, v38);

  os_unfair_lock_unlock(*(*(v36 + 16) + 16));
  v40();

  dispatch_group_enter(v37);
  v41 = swift_allocObject();
  v42 = v86;
  v43 = v87;
  v41[2] = v85;
  v41[3] = v43;
  v41[4] = v42;
  v41[5] = v25;

  v84 = v25;
  v44 = v88;
  sub_230047648(v88, sub_2301DCCA8, v41);

  v45 = sub_230065368(v39, sub_2301DD058, v30);

  v46 = swift_allocObject();
  *(v46 + 16) = v37;
  v47 = *(v45 + 16);
  v48 = v37;
  os_unfair_lock_lock_with_options();
  v49 = swift_allocObject();
  v49[2] = v39;
  v49[3] = sub_2301DD03C;
  v49[4] = v46;
  v50 = v39;

  v51 = sub_230064FA4(sub_2301DD008, v49);

  os_unfair_lock_unlock(*(*(v47 + 16) + 16));
  v51();

  dispatch_group_enter(v48);
  v52 = swift_allocObject();
  v53 = v85;
  v54 = v86;
  v55 = v87;
  v52[2] = v85;
  v52[3] = v55;
  v52[4] = v54;
  v52[5] = v84;

  sub_230047648(v44, sub_2301DCCC8, v52);

  v56 = sub_230065368(v50, sub_2301DCCE8, v30);

  v57 = swift_allocObject();
  *(v57 + 16) = v48;
  v58 = *(v56 + 16);
  v59 = v48;
  os_unfair_lock_lock_with_options();
  v60 = swift_allocObject();
  v60[2] = v50;
  v60[3] = sub_2301DD03C;
  v60[4] = v57;
  v61 = v50;

  v62 = sub_230064FA4(sub_2301DD008, v60);

  os_unfair_lock_unlock(*(*(v58 + 16) + 16));
  v62();

  v63 = swift_allocObject();
  v64 = v86;
  v65 = v87;
  v63[2] = v53;
  v63[3] = v65;
  v66 = v84;
  v63[4] = v64;
  v63[5] = v66;
  v68 = v75;
  v67 = v76;
  v63[6] = sub_2301DB800;
  v63[7] = v68;
  v63[8] = v30;
  v63[9] = v67;
  v63[10] = v77;
  aBlock[4] = sub_2301DCCF0;
  aBlock[5] = v63;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2300F5280;
  aBlock[3] = &block_descriptor_10;
  v69 = _Block_copy(aBlock);

  v70 = v78;
  sub_23030F488();
  v89 = MEMORY[0x277D84F90];
  sub_2300ED808();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB16A40);
  sub_2300ED860();
  v71 = v81;
  v72 = v83;
  sub_230310648();
  sub_2303102E8();
  _Block_release(v69);

  (*(v82 + 8))(v71, v72);
  (*(v79 + 8))(v70, v80);
}

uint64_t sub_2301DB648(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = a4;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v15 = *(TupleTypeMetadata3 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata3);
  v17 = &v19 - v16;
  (*(*(a6 - 8) + 16))(&v19 - v16, a1, a6);
  (*(*(a7 - 8) + 16))(&v17[*(TupleTypeMetadata3 + 48)], a2, a7);
  (*(*(a8 - 8) + 16))(&v17[*(TupleTypeMetadata3 + 64)], a3, a8);
  v20(v17);
  return (*(v15 + 8))(v17, TupleTypeMetadata3);
}

uint64_t sub_2301DB810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2303104C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  sub_2303104C8();
  sub_2303104C8();
  v9 = swift_projectBox();
  v10 = *(a3 - 8);
  (*(v10 + 16))(v8, a1, a3);
  (*(v10 + 56))(v8, 0, 1, a3);
  swift_beginAccess();
  return (*(v6 + 40))(v9, v8, v5);
}

void sub_2301DB9C4(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;
  v5 = a1;
}

uint64_t sub_2301DBA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2303104C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - v8;
  sub_2303104C8();
  sub_2303104C8();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v11 = swift_projectBox();
  v12 = *(a4 - 8);
  (*(v12 + 16))(v9, a1, a4);
  (*(v12 + 56))(v9, 0, 1, a4);
  swift_beginAccess();
  return (*(v7 + 40))(v11 + *(TupleTypeMetadata3 + 48), v9, v6);
}

void sub_2301DBBE4(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 24);
  *(a2 + 24) = a1;
  v5 = a1;
}

uint64_t sub_2301DBC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2303104C8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - v9;
  sub_2303104C8();
  sub_2303104C8();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v12 = swift_projectBox();
  v13 = *(a5 - 8);
  (*(v13 + 16))(v10, a1, a5);
  (*(v13 + 56))(v10, 0, 1, a5);
  swift_beginAccess();
  return (*(v8 + 40))(v12 + *(TupleTypeMetadata3 + 64), v10, v7);
}

void sub_2301DBE04(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 32);
  *(a2 + 32) = a1;
  v5 = a1;
}

uint64_t sub_2301DBE64(uint64_t a1, void (*a2)(char *, char *, char *), uint64_t a3, void *a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v85 = a6;
  v86 = a5;
  v88 = a4;
  v75 = a3;
  v76 = a2;
  v79 = *(a9 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v74 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v9);
  v73 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = *(v14 - 8);
  v91 = v14;
  MEMORY[0x28223BE20](v12);
  v78 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v16;
  v17 = sub_2303104C8();
  v87 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v77 = &v71 - v18;
  v19 = sub_2303104C8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v71 - v21;
  v80 = a9;
  v23 = sub_2303104C8();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v25 = *(TupleTypeMetadata3 - 8);
  v26 = MEMORY[0x28223BE20](TupleTypeMetadata3);
  v28 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v71 - v29;
  v31 = swift_projectBox();
  swift_beginAccess();
  v84 = v25;
  (*(v25 + 16))(v30, v31, TupleTypeMetadata3);
  v32 = *(TupleTypeMetadata3 + 48);
  v83 = TupleTypeMetadata3;
  v33 = *(TupleTypeMetadata3 + 64);
  v34 = v87;
  (*(v20 + 32))(v28, v30, v19);
  (*(v34 + 32))(&v28[v32], &v30[v32], v17);
  (*(*(v23 - 8) + 32))(&v28[v33], &v30[v33], v23);
  v35 = *(v90 + 48);
  v89 = v28;
  v36 = v28;
  v37 = v88;
  if (v35(v36, 1, v91) != 1)
  {
    v72 = v20;
    v38 = *(v20 + 16);
    v39 = v89;
    v38(v22, v89, v19);
    if ((*(v81 + 48))(&v39[v32], 1, v82) != 1)
    {
      v40 = v77;
      (*(v34 + 16))(v77, &v39[v32], v17);
      v41 = v79;
      v42 = &v39[v33];
      v43 = v17;
      v44 = v34;
      v45 = v80;
      if ((*(v79 + 48))(v42, 1, v80) != 1)
      {
        (*(v90 + 32))(v78, v22, v91);
        v64 = v81;
        v65 = *(v81 + 32);
        v88 = v43;
        v66 = v44;
        v67 = v73;
        v65(v73, v40, v82);
        v68 = v74;
        (*(v41 + 32))(v74, &v89[v33], v45);
        v69 = v78;
        v76(v78, v67, v68);
        (*(v41 + 8))(v68, v45);
        (*(v64 + 8))(v67, v82);
        v70 = v89;
        (*(v90 + 8))(v69, v91);
        (*(v66 + 8))(&v70[v32], v88);
        v62 = v70;
        v61 = v72;
        return (*(v61 + 8))(v62, v19);
      }

      (*(v81 + 8))(v40, v82);
    }

    (*(v90 + 8))(v22, v91);
  }

  swift_beginAccess();
  v46 = v37[2];
  if (v46)
  {
    v47 = v46;
    v48 = sub_230080088(0, 1, 1, MEMORY[0x277D84F90]);
    v50 = v48[2];
    v49 = v48[3];
    if (v50 >= v49 >> 1)
    {
      v48 = sub_230080088((v49 > 1), v50 + 1, 1, v48);
    }

    v48[2] = v50 + 1;
    v48[v50 + 4] = v46;
  }

  else
  {
    v48 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v51 = v37[3];
  if (v51)
  {
    v52 = v51;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = sub_230080088(0, v48[2] + 1, 1, v48);
    }

    v54 = v48[2];
    v53 = v48[3];
    if (v54 >= v53 >> 1)
    {
      v48 = sub_230080088((v53 > 1), v54 + 1, 1, v48);
    }

    v48[2] = v54 + 1;
    v48[v54 + 4] = v51;
  }

  swift_beginAccess();
  v55 = v37[4];
  if (v55)
  {
    v56 = v55;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = sub_230080088(0, v48[2] + 1, 1, v48);
    }

    v58 = v48[2];
    v57 = v48[3];
    if (v58 >= v57 >> 1)
    {
      v48 = sub_230080088((v57 > 1), v58 + 1, 1, v48);
    }

    v48[2] = v58 + 1;
    v48[v58 + 4] = v55;
  }

  sub_2301DCD28();
  v59 = swift_allocError();
  *v60 = v48;
  v86();

  v19 = v83;
  v61 = v84;
  v62 = v89;
  return (*(v61 + 8))(v62, v19);
}

uint64_t sub_2301DC70C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_2302A36A0(v8);
      v8 = result;
    }

    v82 = (v8 + 16);
    v83 = *(v8 + 16);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = (v8 + 16 * v83);
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_2301674D8((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
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
        v20 = 0;
        v21 = 16 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v27 + v11);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = v23[1];
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v11 += 16;
        }

        while (v22 < v7 + v20);
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
      result = sub_23007EA34(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v36 = *(v8 + 24);
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      result = sub_23007EA34((v36 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v37;
    v38 = v8 + 32;
    v39 = (v8 + 32 + 16 * v5);
    *v39 = v9;
    v39[1] = v7;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = *(v8 + 32);
          v41 = *(v8 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = (v8 + 16 * v37);
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = (v38 + 16 * v5);
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v66 = (v8 + 16 * v37);
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = (v38 + 16 * v5);
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v37)
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

        v77 = (v38 + 16 * (v5 - 1));
        v78 = *v77;
        v79 = (v38 + 16 * v5);
        v80 = v79[1];
        sub_2301674D8((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *(v8 + 16);
        if (v5 >= v81)
        {
          goto LABEL_101;
        }

        v37 = v81 - 1;
        result = memmove((v38 + 16 * v5), v79 + 2, 16 * (v81 - 1 - v5));
        *(v8 + 16) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = v38 + 16 * v37;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = (v8 + 16 * v37);
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = (v38 + 16 * v5);
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v7 - 16;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 16 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v7;
      v29 += 16;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
    if (__CFADD__(v32++, 1))
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

unint64_t sub_2301DCD28()
{
  result = qword_27DB16B10;
  if (!qword_27DB16B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16B10);
  }

  return result;
}

uint64_t objectdestroy_96Tm()
{

  return swift_deallocObject();
}

uint64_t sub_2301DCF48(uint64_t a1)
{
  v2 = *(v1 + 24);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_2301DD05C(uint64_t a1)
{
  v2 = sub_2301DD7FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301DD098(uint64_t a1)
{
  v2 = sub_2301DD7FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2301DD0D4(uint64_t a1)
{
  v2 = sub_2301DD7A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301DD110(uint64_t a1)
{
  v2 = sub_2301DD7A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2301DD14C()
{
  v1 = 0xD000000000000014;
  if (*v0 != 1)
  {
    v1 = 0x6369666963657073;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x756F6363416C6C61;
  }
}

uint64_t sub_2301DD1C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2301E1A8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2301DD1E8(uint64_t a1)
{
  v2 = sub_2301DD700();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301DD224(uint64_t a1)
{
  v2 = sub_2301DD700();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2301DD260(uint64_t a1)
{
  v2 = sub_2301DD754();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301DD29C(uint64_t a1)
{
  v2 = sub_2301DD754();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMListPickerDataView.PickerMode.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16B18);
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x28223BE20](v3);
  v25 = &v21 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16B20);
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16B28);
  v21 = *(v8 - 8);
  v22 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16B30);
  v11 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v13 = &v21 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301DD700();
  sub_230311448();
  if (v14)
  {
    if (v14 == 1)
    {
      v31 = 1;
      sub_2301DD7A8();
      v15 = v28;
      sub_230310D48();
      (*(v23 + 8))(v7, v24);
      return (*(v11 + 8))(v13, v15);
    }

    else
    {
      v32 = 2;
      sub_2301DD754();
      v18 = v25;
      v19 = v28;
      sub_230310D48();
      v29 = v14;
      type metadata accessor for REMObjectID_Codable();
      sub_2301E0A90(qword_280C9BFD8, type metadata accessor for REMObjectID_Codable);
      v20 = v27;
      sub_230310DF8();
      (*(v26 + 8))(v18, v20);
      return (*(v11 + 8))(v13, v19);
    }
  }

  else
  {
    v30 = 0;
    sub_2301DD7FC();
    v17 = v28;
    sub_230310D48();
    (*(v21 + 8))(v10, v22);
    return (*(v11 + 8))(v13, v17);
  }
}

unint64_t sub_2301DD700()
{
  result = qword_27DB16B38;
  if (!qword_27DB16B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16B38);
  }

  return result;
}

unint64_t sub_2301DD754()
{
  result = qword_27DB16B40;
  if (!qword_27DB16B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16B40);
  }

  return result;
}

unint64_t sub_2301DD7A8()
{
  result = qword_27DB16B48;
  if (!qword_27DB16B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16B48);
  }

  return result;
}

unint64_t sub_2301DD7FC()
{
  result = qword_27DB16B50;
  if (!qword_27DB16B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16B50);
  }

  return result;
}

uint64_t REMListPickerDataView.PickerMode.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16B58);
  v4 = *(v3 - 8);
  v35 = v3;
  v36 = v4;
  MEMORY[0x28223BE20](v3);
  v39 = &v32 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16B60);
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16B68);
  v38 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16B70);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  v16 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_2301DD700();
  v17 = v40;
  sub_230311428();
  if (!v17)
  {
    v32 = 0;
    v18 = v38;
    v40 = v13;
    v19 = sub_230310D08();
    v20 = (2 * *(v19 + 16)) | 1;
    v42 = v19;
    v43 = v19 + 32;
    v44 = 0;
    v45 = v20;
    v21 = sub_2300DB8E0();
    if (v21 == 3 || v44 != v45 >> 1)
    {
      v24 = sub_230310918();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AE8);
      *v26 = &type metadata for REMListPickerDataView.PickerMode;
      sub_230310C38();
      sub_2303108F8();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v40 + 8))(v15, v12);
    }

    else
    {
      if (v21)
      {
        v22 = v40;
        if (v21 == 1)
        {
          LOBYTE(v46) = 1;
          sub_2301DD7A8();
          v23 = v32;
          sub_230310C28();
          if (!v23)
          {
            (*(v33 + 8))(v8, v34);
            (*(v22 + 8))(v15, v12);
            swift_unknownObjectRelease();
            *v37 = 1;
            return __swift_destroy_boxed_opaque_existential_1(v41);
          }
        }

        else
        {
          LOBYTE(v46) = 2;
          sub_2301DD754();
          v29 = v32;
          sub_230310C28();
          v30 = v37;
          if (!v29)
          {
            v38 = v15;
            type metadata accessor for REMObjectID_Codable();
            sub_2301E0A90(&qword_280C9C5D0, type metadata accessor for REMObjectID_Codable);
            v31 = v35;
            sub_230310CE8();
            (*(v36 + 8))(0, v31);
            (*(v22 + 8))(v38, v12);
            swift_unknownObjectRelease();
            *v30 = v46;
            return __swift_destroy_boxed_opaque_existential_1(v41);
          }
        }
      }

      else
      {
        LOBYTE(v46) = 0;
        sub_2301DD7FC();
        v28 = v32;
        sub_230310C28();
        v22 = v40;
        if (!v28)
        {
          (*(v18 + 1))(v11, v9);
          (*(v22 + 8))(v15, v12);
          swift_unknownObjectRelease();
          *v37 = 0;
          return __swift_destroy_boxed_opaque_existential_1(v41);
        }
      }

      (*(v22 + 8))(v15, v12);
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v41);
}

uint64_t REMListPickerDataView.Model.Account.init(account:lists:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void REMListPickerDataView.Model.Account.init(account:shouldIncludeCustomSmartLists:)(uint64_t *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v3 = a3;
  v5 = *a1;
  v4 = a1[1];
  v30 = *(v4 + 16);
  if (!v30)
  {

    v9 = MEMORY[0x277D84F90];
    goto LABEL_33;
  }

  v27 = v5;
  v7 = 0;
  v8 = v4 + 32;
  v9 = MEMORY[0x277D84F90];
  v29 = v4 + 32;
  while (1)
  {
    v10 = (v8 + 16 * v7);
    v11 = *v10;
    v12 = v10[1];
    v13 = *v10 >> 62;
    if (!v13)
    {
      sub_23006006C(v11);
      v17 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_2300801BC(0, *(v9 + 2) + 1, 1, v9);
      }

      v19 = *(v9 + 2);
      v18 = *(v9 + 3);
      if (v19 >= v18 >> 1)
      {
        v9 = sub_2300801BC((v18 > 1), v19 + 1, 1, v9);
      }

      sub_230060110(v11);
      *(v9 + 2) = v19 + 1;
      *&v9[8 * v19 + 32] = v11;
      goto LABEL_4;
    }

    if (v13 != 1)
    {
      break;
    }

    if (a2)
    {
      sub_23006006C(v11);
      v14 = (v11 & 0x3FFFFFFFFFFFFFFFLL);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_2300801BC(0, *(v9 + 2) + 1, 1, v9);
      }

      v16 = *(v9 + 2);
      v15 = *(v9 + 3);
      if (v16 >= v15 >> 1)
      {
        v9 = sub_2300801BC((v15 > 1), v16 + 1, 1, v9);
      }

      sub_230060110(v11);
      *(v9 + 2) = v16 + 1;
      *&v9[8 * v16 + 32] = v11 & 0x3FFFFFFFFFFFFFFFLL | 0x8000000000000000;
    }

LABEL_4:
    if (++v7 == v30)
    {

      v5 = v27;
      v3 = a3;
LABEL_33:
      *v3 = v5;
      v3[1] = v9;
      return;
    }
  }

  v20 = *(v12 + 16);
  sub_23006006C(v11);

  v21 = 0;
  while (1)
  {
    if (v20 == v21)
    {
      sub_230060110(v11);

      v8 = v29;
      goto LABEL_4;
    }

    if (v21 >= v20)
    {
      break;
    }

    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      goto LABEL_35;
    }

    v23 = *(v12 + 8 * v21 + 32);
    if ((v23 & 0x8000000000000000) != 0)
    {
      ++v21;
      if (a2)
      {
        v24 = (v23 & 0x7FFFFFFFFFFFFFFFLL);
        goto LABEL_26;
      }
    }

    else
    {
      v24 = v23;
LABEL_26:
      v31 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_2300801BC(0, *(v9 + 2) + 1, 1, v9);
      }

      v26 = *(v9 + 2);
      v25 = *(v9 + 3);
      if (v26 >= v25 >> 1)
      {
        v9 = sub_2300801BC((v25 > 1), v26 + 1, 1, v9);
      }

      *(v9 + 2) = v26 + 1;
      *&v9[8 * v26 + 32] = v23;

      v21 = v22;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_2301DE1C8()
{
  if (*v0)
  {
    return 0x737473696CLL;
  }

  else
  {
    return 0x746E756F636361;
  }
}

uint64_t sub_2301DE200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v6 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x737473696CLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230311048();

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

uint64_t sub_2301DE2D8(uint64_t a1)
{
  v2 = sub_2301E0490();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301DE314(uint64_t a1)
{
  v2 = sub_2301E0490();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMListPickerDataView.Model.Account.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16B78);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v11 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301E0490();
  v9 = v8;
  sub_230311448();
  v13 = v9;
  v12 = 0;
  type metadata accessor for REMAccount_Codable();
  sub_2301E0A90(qword_280C9AEC8, type metadata accessor for REMAccount_Codable);
  sub_230310DF8();

  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16B88);
    sub_2301E0538(&qword_27DB16B90, sub_2301E04E4);
    sub_230310DF8();
  }

  return (*(v5 + 8))(v7, v4);
}

void REMListPickerDataView.Model.Account.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16BA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301E0490();
  sub_230311428();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    type metadata accessor for REMAccount_Codable();
    v13 = 0;
    sub_2301E0A90(&qword_280C9B710, type metadata accessor for REMAccount_Codable);
    sub_230310CE8();
    v9 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16B88);
    v13 = 1;
    sub_2301E0538(&qword_27DB16BA8, sub_2301E05B0);
    sub_230310CE8();
    (*(v6 + 8))(v8, v5);
    v10 = v14;
    *a2 = v9;
    a2[1] = v10;
    v11 = v9;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_2301DE854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746E756F636361 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230311048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2301DE8DC(uint64_t a1)
{
  v2 = sub_2301E0604();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301DE918(uint64_t a1)
{
  v2 = sub_2301E0604();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMListPickerDataView.Model.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16BB8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301E0604();

  sub_230311448();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16BC8);
  sub_2301E0658(&qword_27DB16BD0, sub_2301E06D0);
  sub_230310DF8();

  return (*(v4 + 8))(v6, v3);
}

uint64_t REMListPickerDataView.Model.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16BE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301E0604();
  sub_230311428();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16BC8);
    sub_2301E0658(&qword_27DB16BE8, sub_2301E0724);
    sub_230310CE8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void *REMListPickerDataView.Result.latestFetchResultToken.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *REMListPickerDataView.Result.init(model:latestFetchResultToken:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = *result;
  a3[1] = a2;
  return result;
}

void static REMListPickerDataView.fetch(store:pickerMode:shouldIncludeCustomSmartLists:diffingAgainst:)(void **a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = *a1;
  v9 = objc_allocWithZone(type metadata accessor for REMListPickerDataView.Invocation());
  sub_2301363DC(v8);
  v10 = [v9 initWithFetchResultTokenToDiffAgainst_];
  sub_2300C39C0(v10, v8, a2, v12);

  sub_2301363EC(v8);
  if (!v4)
  {
    v11 = v12[1];
    *a4 = v12[0];
    a4[1] = v11;
  }
}

id REMListPickerDataView.Invocation.__allocating_init(fetchResultTokenToDiffAgainst:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithFetchResultTokenToDiffAgainst_];

  return v3;
}

id REMListPickerDataView.Invocation.Parameters.pickerMode.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_2301363DC(v2);
}

uint64_t sub_2301DEE38()
{
  if (*v0)
  {
    return 0xD00000000000001DLL;
  }

  else
  {
    return 0x6F4D72656B636970;
  }
}

uint64_t sub_2301DEE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F4D72656B636970 && a2 == 0xEA00000000006564;
  if (v6 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000230343940 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230311048();

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

uint64_t sub_2301DEF68(uint64_t a1)
{
  v2 = sub_2301E079C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301DEFA4(uint64_t a1)
{
  v2 = sub_2301E079C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMListPickerDataView.Invocation.Parameters.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16BF8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v10[2] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301363DC(v8);
  sub_2301E079C();
  sub_230311448();
  v13 = v8;
  v12 = 0;
  sub_2301E07F0();
  sub_230310DF8();
  sub_2301363EC(v13);
  if (!v2)
  {
    v11 = 1;
    sub_230310DB8();
  }

  return (*(v5 + 8))(v7, v4);
}

void REMListPickerDataView.Invocation.Parameters.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16C10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301E079C();
  sub_230311428();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11[15] = 0;
    sub_2301E0844();
    sub_230310CE8();
    v9 = v12;
    v11[14] = 1;
    v10 = sub_230310CA8();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v10 & 1;
    sub_2301363DC(v9);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_2301363EC(v9);
  }
}

uint64_t sub_2301DF3B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230311048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2301DF434(uint64_t a1)
{
  v2 = sub_2301E0898();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301DF470(uint64_t a1)
{
  v2 = sub_2301E0898();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMListPickerDataView.Invocation.Result.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16C20);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301E0898();

  sub_230311448();
  v9[1] = v7;
  sub_2301E08EC();
  sub_230310DF8();

  return (*(v4 + 8))(v6, v3);
}

uint64_t REMListPickerDataView.Invocation.Result.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16C38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301E0898();
  sub_230311428();
  if (!v2)
  {
    sub_2301E0940();
    sub_230310CE8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

id REMListPickerDataView.Invocation.init(fetchResultTokenToDiffAgainst:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithFetchResultTokenToDiffAgainst_, a1);

  return v3;
}

id REMListPickerDataView.Invocation.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id REMListPickerDataView.Invocation.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id REMListPickerDataView.Invocation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t REMListPickerDataView.Model.ListOrCustomSmartList.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x64616F6C796170;
  }

  else
  {
    return 0x54746E65746E6F63;
  }
}

uint64_t sub_2301DFA30(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x64616F6C796170;
  }

  else
  {
    v3 = 0x54746E65746E6F63;
  }

  if (v2)
  {
    v4 = 0xEB00000000657079;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x64616F6C796170;
  }

  else
  {
    v5 = 0x54746E65746E6F63;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xEB00000000657079;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_230311048();
  }

  return v8 & 1;
}

uint64_t sub_2301DFAE0()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2301DFB6C()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2301DFBF4@<X0>(char *a1@<X8>)
{
  v2 = sub_230310C08();

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

uint64_t sub_2301DFC54@<X0>(char *a1@<X8>)
{
  v2 = sub_230310C08();

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

uint64_t sub_2301DFCB8(uint64_t a1)
{
  v2 = sub_2301E0994();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301DFCF4(uint64_t a1)
{
  v2 = sub_2301E0994();

  return MEMORY[0x2821FE720](a1, v2);
}

ReminderKitInternal::REMListPickerDataView::Model::ListOrCustomSmartList::ContentType_optional __swiftcall REMListPickerDataView.Model.ListOrCustomSmartList.ContentType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t REMListPickerDataView.Model.ListOrCustomSmartList.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16C48);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301E0994();
  sub_230311428();
  if (!v2)
  {
    v13 = 0;
    sub_2301E09E8();
    sub_230310CE8();
    v10 = (v6 + 8);
    if (v12)
    {
      type metadata accessor for REMSmartList_Codable();
      v13 = 1;
      sub_2301E0A90(&qword_280C9B750, type metadata accessor for REMSmartList_Codable);
      sub_230310CE8();
      (*v10)(v8, v5);
      *a2 = v12 | 0x8000000000000000;
    }

    else
    {
      type metadata accessor for REMList_Codable();
      v13 = 1;
      sub_2301E0A90(&qword_280C9C340, type metadata accessor for REMList_Codable);
      sub_230310CE8();
      (*v10)(v8, v5);
      *a2 = v12;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t REMListPickerDataView.Model.ListOrCustomSmartList.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16C60);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301E0994();
  sub_230311448();
  if (v8 < 0)
  {
    LOBYTE(v13) = 1;
    v14 = 0;
    sub_2301E0A3C();
    sub_230310DF8();
    if (!v2)
    {
      v13 = v8 & 0x7FFFFFFFFFFFFFFFLL;
      v14 = 1;
      type metadata accessor for REMSmartList_Codable();
      v9 = qword_280C9AC10;
      v10 = type metadata accessor for REMSmartList_Codable;
      goto LABEL_6;
    }
  }

  else
  {
    LOBYTE(v13) = 0;
    v14 = 0;
    sub_2301E0A3C();
    sub_230310DF8();
    if (!v2)
    {
      v13 = v8;
      v14 = 1;
      type metadata accessor for REMList_Codable();
      v9 = &qword_280C9C348;
      v10 = type metadata accessor for REMList_Codable;
LABEL_6:
      sub_2301E0A90(v9, v10);
      sub_230310DF8();
    }
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t REMListPickerDataView.Model.Account.allREMLists.getter()
{
  v1 = 0;
  v2 = *(v0 + 8);
  result = MEMORY[0x277D84F90];
  v7 = MEMORY[0x277D84F90];
  v4 = *(v2 + 16);
  while (v4 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    v5 = *(v2 + 32 + 8 * v1++);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = v5;
      MEMORY[0x231911A30]();
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23030FD18();
      }

      sub_23030FD68();
      result = v7;
    }
  }

  return result;
}

uint64_t _s19ReminderKitInternal21REMListPickerDataViewC5ModelV017ListOrCustomSmartI0O2eeoiySbAG_AGtFZ_0(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      return 0;
    }

    v2 &= ~0x8000000000000000;
    v3 &= ~0x8000000000000000;
  }

  else if ((v3 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  sub_2301363FC();
  v5 = v3;
  v6 = v2;
  v7 = sub_230310448();

  return v7 & 1;
}

unint64_t sub_2301E0490()
{
  result = qword_27DB16B80;
  if (!qword_27DB16B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16B80);
  }

  return result;
}

unint64_t sub_2301E04E4()
{
  result = qword_27DB16B98;
  if (!qword_27DB16B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16B98);
  }

  return result;
}

uint64_t sub_2301E0538(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB16B88);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2301E05B0()
{
  result = qword_27DB16BB0;
  if (!qword_27DB16BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16BB0);
  }

  return result;
}

unint64_t sub_2301E0604()
{
  result = qword_27DB16BC0;
  if (!qword_27DB16BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16BC0);
  }

  return result;
}

uint64_t sub_2301E0658(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB16BC8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2301E06D0()
{
  result = qword_27DB16BD8;
  if (!qword_27DB16BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16BD8);
  }

  return result;
}

unint64_t sub_2301E0724()
{
  result = qword_27DB16BF0;
  if (!qword_27DB16BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16BF0);
  }

  return result;
}

unint64_t sub_2301E079C()
{
  result = qword_27DB16C00;
  if (!qword_27DB16C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16C00);
  }

  return result;
}

unint64_t sub_2301E07F0()
{
  result = qword_27DB16C08;
  if (!qword_27DB16C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16C08);
  }

  return result;
}

unint64_t sub_2301E0844()
{
  result = qword_27DB16C18;
  if (!qword_27DB16C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16C18);
  }

  return result;
}

unint64_t sub_2301E0898()
{
  result = qword_27DB16C28;
  if (!qword_27DB16C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16C28);
  }

  return result;
}

unint64_t sub_2301E08EC()
{
  result = qword_27DB16C30;
  if (!qword_27DB16C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16C30);
  }

  return result;
}

unint64_t sub_2301E0940()
{
  result = qword_27DB16C40;
  if (!qword_27DB16C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16C40);
  }

  return result;
}

unint64_t sub_2301E0994()
{
  result = qword_27DB16C50;
  if (!qword_27DB16C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16C50);
  }

  return result;
}

unint64_t sub_2301E09E8()
{
  result = qword_27DB16C58;
  if (!qword_27DB16C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16C58);
  }

  return result;
}

unint64_t sub_2301E0A3C()
{
  result = qword_27DB16C68;
  if (!qword_27DB16C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16C68);
  }

  return result;
}

uint64_t sub_2301E0A90(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2301E0ADC()
{
  result = qword_27DB16C70;
  if (!qword_27DB16C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16C70);
  }

  return result;
}

unint64_t sub_2301E0B3C()
{
  result = qword_27DB16C78;
  if (!qword_27DB16C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16C78);
  }

  return result;
}

unint64_t sub_2301E0B94()
{
  result = qword_27DB16C80;
  if (!qword_27DB16C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16C80);
  }

  return result;
}

unint64_t sub_2301E0BEC()
{
  result = qword_27DB16C88;
  if (!qword_27DB16C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16C88);
  }

  return result;
}

unint64_t sub_2301E0C44()
{
  result = qword_27DB16C90;
  if (!qword_27DB16C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16C90);
  }

  return result;
}

unint64_t sub_2301E0C9C()
{
  result = qword_27DB16C98;
  if (!qword_27DB16C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16C98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REMListPickerDataView.PickerMode(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for REMListPickerDataView.PickerMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t *assignWithCopy for REMListPickerDataView.Model.ListOrCustomSmartList(uint64_t *a1, uint64_t *a2)
{
  v3 = (*a2 & 0x7FFFFFFFFFFFFFFFLL);
  v4 = *a1;
  *a1 = *a2;
  v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
  v6 = v3;

  return a1;
}

uint64_t *assignWithTake for REMListPickerDataView.Model.ListOrCustomSmartList(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for REMListPickerDataView.Model.ListOrCustomSmartList(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for REMListPickerDataView.Model.ListOrCustomSmartList(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t assignWithCopy for REMAccountSnapshotSummary(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);

  return a1;
}

void *assignWithCopy for REMListPickerDataView.Result(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a1[1];
  v5 = a2[1];
  a1[1] = v5;
  v6 = v5;

  return a1;
}

uint64_t assignWithTake for REMListPickerDataView.Result(uint64_t a1, _OWORD *a2)
{

  v4 = *(a1 + 8);
  *a1 = *a2;

  return a1;
}

void destroy for REMListPickerDataView.Invocation.Parameters(void **a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
  }
}

uint64_t assignWithCopy for REMListPickerDataView.Invocation.Parameters(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1 >= 2uLL)
  {
    if (v5 >= 2)
    {
      *a1 = v5;
      v7 = v5;

      goto LABEL_8;
    }

    v5 = *a2;
    goto LABEL_6;
  }

  if (v5 < 2)
  {
LABEL_6:
    *a1 = v5;
    goto LABEL_8;
  }

  *a1 = v5;
  v6 = v5;
LABEL_8:
  *(a1 + 8) = *(a2 + 8);
  return a1;
}

unint64_t *assignWithTake for REMListPickerDataView.Invocation.Parameters(unint64_t *result, uint64_t a2)
{
  v3 = *result;
  v4 = *a2;
  if (*result >= 2)
  {
    if (v4 >= 2)
    {
      *result = v4;
      v6 = result;

      result = v6;
    }

    else
    {
      v5 = result;

      result = v5;
      *v5 = v4;
    }
  }

  else
  {
    *result = v4;
  }

  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t getEnumTagSinglePayload for REMListPickerDataView.Invocation.Parameters(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 9))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for REMListPickerDataView.Invocation.Parameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_2301E1300()
{
  result = qword_27DB16CA0;
  if (!qword_27DB16CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16CA0);
  }

  return result;
}

unint64_t sub_2301E1358()
{
  result = qword_27DB16CA8;
  if (!qword_27DB16CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16CA8);
  }

  return result;
}

unint64_t sub_2301E13B0()
{
  result = qword_27DB16CB0;
  if (!qword_27DB16CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16CB0);
  }

  return result;
}

unint64_t sub_2301E1408()
{
  result = qword_27DB16CB8;
  if (!qword_27DB16CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16CB8);
  }

  return result;
}

unint64_t sub_2301E1460()
{
  result = qword_27DB16CC0;
  if (!qword_27DB16CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16CC0);
  }

  return result;
}

unint64_t sub_2301E14B8()
{
  result = qword_27DB16CC8;
  if (!qword_27DB16CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16CC8);
  }

  return result;
}

unint64_t sub_2301E1510()
{
  result = qword_27DB16CD0;
  if (!qword_27DB16CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16CD0);
  }

  return result;
}

unint64_t sub_2301E1568()
{
  result = qword_27DB16CD8;
  if (!qword_27DB16CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16CD8);
  }

  return result;
}

unint64_t sub_2301E15C0()
{
  result = qword_27DB16CE0;
  if (!qword_27DB16CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16CE0);
  }

  return result;
}

unint64_t sub_2301E1618()
{
  result = qword_27DB16CE8;
  if (!qword_27DB16CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16CE8);
  }

  return result;
}

unint64_t sub_2301E1670()
{
  result = qword_27DB16CF0;
  if (!qword_27DB16CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16CF0);
  }

  return result;
}

unint64_t sub_2301E16C8()
{
  result = qword_27DB16CF8;
  if (!qword_27DB16CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16CF8);
  }

  return result;
}

unint64_t sub_2301E1720()
{
  result = qword_27DB16D00;
  if (!qword_27DB16D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16D00);
  }

  return result;
}

unint64_t sub_2301E1778()
{
  result = qword_27DB16D08;
  if (!qword_27DB16D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16D08);
  }

  return result;
}

unint64_t sub_2301E17D0()
{
  result = qword_27DB16D10;
  if (!qword_27DB16D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16D10);
  }

  return result;
}

unint64_t sub_2301E1828()
{
  result = qword_27DB16D18;
  if (!qword_27DB16D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16D18);
  }

  return result;
}

unint64_t sub_2301E1880()
{
  result = qword_27DB16D20;
  if (!qword_27DB16D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16D20);
  }

  return result;
}

unint64_t sub_2301E18D8()
{
  result = qword_27DB16D28;
  if (!qword_27DB16D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16D28);
  }

  return result;
}

unint64_t sub_2301E1930()
{
  result = qword_27DB16D30;
  if (!qword_27DB16D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16D30);
  }

  return result;
}

unint64_t sub_2301E1988()
{
  result = qword_27DB16D38;
  if (!qword_27DB16D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16D38);
  }

  return result;
}

unint64_t sub_2301E19E0()
{
  result = qword_27DB16D40;
  if (!qword_27DB16D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16D40);
  }

  return result;
}

unint64_t sub_2301E1A38()
{
  result = qword_27DB16D48;
  if (!qword_27DB16D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16D48);
  }

  return result;
}

uint64_t sub_2301E1A8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F6363416C6C61 && a2 == 0xEB0000000073746ELL;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000230343920 == a2 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6369666963657073 && a2 == 0xEF746E756F636341)
  {

    return 2;
  }

  else
  {
    v6 = sub_230311048();

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

unint64_t sub_2301E1BB8()
{
  result = qword_27DB16D50;
  if (!qword_27DB16D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16D50);
  }

  return result;
}

uint64_t OrderedSet.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23030FD38();
  v10 = sub_23030F5F8();
  v20 = v9;
  v21 = v10;
  if (sub_23030FD78())
  {
    v17 = v7;
    v18 = a3;
    v11 = 0;
    while (1)
    {
      v12 = sub_23030FD58();
      sub_23030FD08();
      if (v12)
      {
        (*(v6 + 16))(v8, a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v11, a2);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_2303108C8();
        if (v17 != 8)
        {
          __break(1u);
          return result;
        }

        v19 = result;
        (*(v6 + 16))(v8, &v19, a2);
        swift_unknownObjectRelease();
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_10:
          __break(1u);
LABEL_11:

          v9 = v20;
          v10 = v21;
          a3 = v18;
          goto LABEL_13;
        }
      }

      v14 = type metadata accessor for OrderedSet();
      OrderedSet.append(_:)(v8, v14);
      (*(v6 + 8))(v8, a2);
      ++v11;
      if (v13 == sub_23030FD78())
      {
        goto LABEL_11;
      }
    }
  }

LABEL_13:
  *a3 = v9;
  a3[1] = v10;
  return result;
}

uint64_t OrderedSet.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_23030FD38();
  result = sub_23030F5F8();
  a1[1] = result;
  return result;
}

uint64_t OrderedSet.append(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_23030F728();
  v7 = v11;

  if (v7 == 1)
  {
    v8 = *(v4 + 16);
    v8(v6, a1, v3);
    v10 = sub_23030FD78();
    v11 = 0;
    sub_23030F6F8();
    sub_23030F738();
    v8(v6, a1, v3);
    sub_23030FDE8();
    sub_23030FD98();
  }

  return v7;
}

uint64_t OrderedSet.isEmpty.getter()
{
  sub_23030FDE8();
  swift_getWitnessTable();
  return sub_2303100E8() & 1;
}

uint64_t OrderedSet.contents.getter()
{
  sub_2301E2E98();
}

uint64_t OrderedSet.removeFirst()(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v45 = sub_2303104C8();
  v43 = *(v45 - 8);
  v7 = MEMORY[0x28223BE20](v45);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v35 - v10;
  sub_23030FDE8();
  swift_getWitnessTable();
  sub_230310178();
  v47 = v2;
  v41 = sub_23030F6F8();
  sub_23030F678();
  v42 = v1;
  v12 = *(v1 + 8);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  v35[1] = v3 + 16;
  v39 = v3;
  v40 = v12;
  v46 = (v3 + 32);
  v43 += 4;
  v44 = TupleTypeMetadata2 - 8;

  v19 = 0;
  v37 = v9;
  v38 = v5;
  v36 = v11;
  if (v16)
  {
    while (1)
    {
      v20 = v19;
LABEL_12:
      v23 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v24 = v23 | (v20 << 6);
      v26 = v39;
      v25 = v40;
      v27 = v38;
      v28 = v47;
      (*(v39 + 16))(v38, *(v40 + 48) + *(v39 + 72) * v24, v47);
      v29 = *(*(v25 + 56) + 8 * v24);
      v30 = *(TupleTypeMetadata2 + 48);
      v31 = *(v26 + 32);
      v5 = v27;
      v9 = v37;
      v31(v37, v5, v28);
      v32 = 0;
      *&v9[v30] = v29;
      v22 = v20;
      v11 = v36;
LABEL_13:
      v33 = *(TupleTypeMetadata2 - 8);
      (*(v33 + 56))(v9, v32, 1, TupleTypeMetadata2);
      (*v43)(v11, v9, v45);
      if ((*(v33 + 48))(v11, 1, TupleTypeMetadata2) == 1)
      {
      }

      v34 = *&v11[*(TupleTypeMetadata2 + 48)];
      result = (*v46)(v5, v11, v47);
      if (__OFSUB__(v34, 1))
      {
        goto LABEL_20;
      }

      v48 = v34 - 1;
      v49 = 0;
      result = sub_23030F738();
      v19 = v22;
      if (!v16)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v17 <= v19 + 1)
    {
      v21 = v19 + 1;
    }

    else
    {
      v21 = v17;
    }

    v22 = v21 - 1;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        v16 = 0;
        v32 = 1;
        goto LABEL_13;
      }

      v16 = *(v13 + 8 * v20);
      ++v19;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  return result;
}

uint64_t OrderedSet.removeLast()()
{
  sub_23030FDE8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_230310198();
  sub_23030F6F8();
  return sub_23030F678();
}

Swift::Void __swiftcall OrderedSet.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  sub_23030FDE8();
  sub_23030FDD8();
  sub_23030F6F8();
  sub_23030F6E8();
}

uint64_t == infix<A>(_:_:)()
{

  v0 = sub_23030FE08();

  return v0 & 1;
}

uint64_t sub_2301E2784@<X0>(uint64_t *a1@<X8>)
{
  result = OrderedSet.endIndex.getter();
  *a1 = result;
  return result;
}

uint64_t OrderedSet.endIndex.getter()
{

  v0 = sub_23030FD78();

  return v0;
}

void (*sub_2301E27F0(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_2301E28C0(v6, *a2, a3);
  return sub_2301E2878;
}

void sub_2301E2878(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_2301E28C0(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v4 = *(a3 + 16);
  *a1 = v4;
  v5 = *(v4 - 8);
  a1[1] = v5;
  v6 = *(v5 + 64);
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  a1[2] = v7;
  OrderedSet.subscript.getter();
  return sub_2301E2990;
}

void sub_2301E2990(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_2301E29E0()
{
  swift_getWitnessTable();

  return sub_230310028();
}

uint64_t sub_2301E2A60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC6F8](a1, a2, WitnessTable, v5);
}

uint64_t sub_2301E2AE8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_2301E2B3C()
{
  swift_getWitnessTable();
  v0 = sub_23024C640();

  return v0;
}

double OrderedSet.init(arrayLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  OrderedSet.init(_:)(a1, a2, &v5);
  result = *&v5;
  *a3 = v5;
  return result;
}

uint64_t OrderedSet.subscript.getter()
{

  sub_23030FE28();
}

uint64_t sub_2301E2C70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC700](a1, a2, WitnessTable, v5);
}

uint64_t sub_2301E2CF8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x277D83BC8]);
}

uint64_t OrderedSet.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_23030FDF8();
  v7 = MEMORY[0x277D83B88];
  v8 = MEMORY[0x277D83B98];

  return MEMORY[0x2821FB920](a1, v4, v5, v7, v6, v8);
}

uint64_t OrderedSet.hashValue.getter(uint64_t a1)
{
  v5 = *v1;
  sub_230311358();
  OrderedSet.hash(into:)(v4, a1);
  return sub_2303113A8();
}

uint64_t sub_2301E2E3C(uint64_t a1, uint64_t a2)
{
  sub_230311358();
  OrderedSet.hash(into:)(v4, a2);
  return sub_2303113A8();
}

double static REMSuggestedAttributesHarvester.harvestedAttributesResponse(for:in:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(a1 + 80);
  v29[4] = *(a1 + 64);
  v30[0] = v4;
  *(v30 + 15) = *(a1 + 95);
  v5 = *(a1 + 16);
  v29[0] = *a1;
  v29[1] = v5;
  v6 = *(a1 + 48);
  v29[2] = *(a1 + 32);
  v29[3] = v6;
  type metadata accessor for REMSuggestedAttributesHarvester.Invocation();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2300C4494(v7, v29, v27);

  if (!v2)
  {
    *v25 = v27[10];
    *&v25[16] = v27[11];
    v26 = v28;
    v21 = v27[6];
    v22 = v27[7];
    v23 = v27[8];
    v24 = v27[9];
    v17 = v27[2];
    v18 = v27[3];
    v19 = v27[4];
    v20 = v27[5];
    v15 = v27[0];
    v16 = v27[1];
    sub_2301E321C(&v15, &v14);
    sub_230061918(&v15, &qword_27DB16DE8);
    v9 = v24;
    a2[8] = v23;
    a2[9] = v9;
    a2[10] = *v25;
    *(a2 + 169) = *&v25[9];
    v10 = v20;
    a2[4] = v19;
    a2[5] = v10;
    v11 = v22;
    a2[6] = v21;
    a2[7] = v11;
    v12 = v16;
    *a2 = v15;
    a2[1] = v12;
    result = *&v17;
    v13 = v18;
    a2[2] = v17;
    a2[3] = v13;
  }

  return result;
}

double static REMSuggestedAttributesHarvester.mentionsExtractionResponse(for:in:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  type metadata accessor for REMSuggestedAttributesHarvester.MentionsExtractionInvocation();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2300C4F14(v5, a1, v13);

  if (!v2)
  {
    *v11 = v13[2];
    *&v11[16] = v13[3];
    v12 = v14;
    v9 = v13[0];
    v10 = v13[1];
    sub_2301E3358(&v9, &v8);
    sub_230061918(&v9, &qword_27DB16DF0);
    v7 = v10;
    *a2 = v9;
    a2[1] = v7;
    a2[2] = *v11;
    result = *&v11[9];
    *(a2 + 41) = *&v11[9];
  }

  return result;
}

uint64_t static REMSuggestedAttributesHarvester.feedback(for:in:)(uint64_t *a1, char a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  type metadata accessor for REMSuggestedAttributesHarvester.FeedbackInvocation();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2300C5A58(v6, v4, v8, v5);

  if (!v2)
  {
    a2 = v8[0];
  }

  return a2 & 1;
}

void static REMSuggestedAttributesHarvester.postSuggestionAnalytics(for:in:)(uint64_t *a1)
{
  v2 = *a1;
  type metadata accessor for REMSuggestedAttributesHarvester.PostSuggestionAnalyticsInvocation();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2300C6550(v3, v2, v4);

  if (!v1)
  {
  }
}

void static REMSuggestedAttributesHarvester.recordSuggestion(for:in:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 16);
  type metadata accessor for REMSuggestedAttributesHarvester.RecordSuggestionInvocation();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2300C7030(v6, v2, v3, v5, v4, v7);

  if (!v1)
  {
  }
}

uint64_t REMSuggestedAttributesHarvester.__allocating_init(suggestedAttributesPerformer:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t REMSuggestedAttributesHarvester.harvestAttributes(for:elector:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 80);
  v31 = *(a1 + 64);
  v32[0] = v4;
  *(v32 + 15) = *(a1 + 95);
  v5 = *(a1 + 16);
  v27 = *a1;
  v28 = v5;
  v6 = *(a1 + 48);
  v29 = *(a1 + 32);
  v30 = v6;
  type metadata accessor for REMSuggestedAttributesHarvester.Invocation();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2300C4494(v7, &v27, v25);

  if (!v2)
  {
    *v23 = v25[10];
    *&v23[16] = v25[11];
    v24 = v26;
    v19 = v25[6];
    v20 = v25[7];
    v21 = v25[8];
    v22 = v25[9];
    v15 = v25[2];
    v16 = v25[3];
    v17 = v25[4];
    v18 = v25[5];
    v13 = v25[0];
    v14 = v25[1];
    sub_2301E321C(&v13, v11);
    sub_230061918(&v13, &qword_27DB16DE8);
    v9[4] = v31;
    v10[0] = v32[0];
    *(v10 + 15) = *(v32 + 15);
    v9[0] = v27;
    v9[1] = v28;
    v9[2] = v29;
    v9[3] = v30;
    v11[8] = v21;
    v11[9] = v22;
    v12[0] = *v23;
    *(v12 + 9) = *&v23[9];
    v11[4] = v17;
    v11[5] = v18;
    v11[6] = v19;
    v11[7] = v20;
    v11[0] = v13;
    v11[1] = v14;
    v11[2] = v15;
    v11[3] = v16;
    a2 = REMSuggestedAttributesElector.electionFor(request:response:)(v9, v11);
    sub_2301E3780(&v13);
  }

  return a2;
}

void REMSuggestedAttributesHarvester.extractMentions(for:)(uint64_t a1)
{
  type metadata accessor for REMSuggestedAttributesHarvester.MentionsExtractionInvocation();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2300C4F14(v3, a1, v8);
  if (v1)
  {
  }

  else
  {

    v5[1] = v8[1];
    v5[2] = v8[2];
    v6 = v8[3];
    v7 = v9;
    v5[0] = v8[0];
    sub_2301E3358(v5, v4);
    sub_230061918(v5, &qword_27DB16DF0);
    if (BYTE8(v6))
    {
      sub_2301E3358(v5, v4);
      sub_230133BC4();
      swift_willThrowTypedImpl();

      sub_2301E38FC(v5);
    }
  }
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> REMSuggestedAttributesHarvester.feedback(for:)(ReminderKitInternal::REMSuggestedAttributesHarvester::FeedbackRequest a1)
{
  v3 = *a1.source.predictors._rawValue;
  v4 = *(a1.source.predictors._rawValue + 1);
  v5 = *(v1 + 16);
  type metadata accessor for REMSuggestedAttributesHarvester.FeedbackInvocation();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2300C5A58(v6, v3, v8, v4);

  if (!v2)
  {
    LOBYTE(v5) = v8[0];
  }

  return v5 & 1;
}

void REMSuggestedAttributesHarvester.postSuggestionAnalytics(for:)(uint64_t *a1)
{
  v2 = *a1;
  type metadata accessor for REMSuggestedAttributesHarvester.PostSuggestionAnalyticsInvocation();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2300C6550(v3, v2, v4);

  if (!v1)
  {
  }
}

void REMSuggestedAttributesHarvester.recordSuggestion(for:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 16);
  type metadata accessor for REMSuggestedAttributesHarvester.RecordSuggestionInvocation();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2300C7030(v6, v2, v3, v5, v4, v7);

  if (!v1)
  {
  }
}

id REMSuggestedAttributesHarvester.Invocation.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id REMSuggestedAttributesHarvester.Invocation.init(coder:)(void *a1)
{
  v3 = [v1 init];

  return v3;
}

id REMSuggestedAttributesHarvester.Invocation.__allocating_init(fetchResultTokenToDiffAgainst:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithFetchResultTokenToDiffAgainst_];

  return v3;
}

uint64_t REMSuggestedAttributesHarvester.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2301E3CD0(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = *(*v1 + 16);
  type metadata accessor for REMSuggestedAttributesHarvester.FeedbackInvocation();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2300C5A58(v6, v3, v8, v4);

  if (!v2)
  {
    LOBYTE(v5) = v8[0];
  }

  return v5 & 1;
}

void sub_2301E3D6C(uint64_t *a1)
{
  v2 = *a1;
  type metadata accessor for REMSuggestedAttributesHarvester.PostSuggestionAnalyticsInvocation();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2300C6550(v3, v2, v4);

  if (!v1)
  {
  }
}

void sub_2301E3DEC(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 16);
  type metadata accessor for REMSuggestedAttributesHarvester.RecordSuggestionInvocation();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2300C7030(v6, v3, v2, v5, v4, v7);

  if (!v1)
  {
  }
}

uint64_t REMSuggestedAttributesHarvester.Request.CoreBehavior.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x6E656469666E6F63;
  }

  else
  {
    return 0x65766974616C6572;
  }
}

uint64_t sub_2301E3F18(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E656469666E6F63;
  }

  else
  {
    v3 = 0x65766974616C6572;
  }

  if (v2)
  {
    v4 = 0xEF74726F70707553;
  }

  else
  {
    v4 = 0xEA00000000006563;
  }

  if (*a2)
  {
    v5 = 0x6E656469666E6F63;
  }

  else
  {
    v5 = 0x65766974616C6572;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006563;
  }

  else
  {
    v6 = 0xEF74726F70707553;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_230311048();
  }

  return v8 & 1;
}

uint64_t sub_2301E3FD0()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2301E4064()
{
  sub_23030F9C8();
}

uint64_t sub_2301E40E4()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2301E4174@<X0>(char *a1@<X8>)
{
  v2 = sub_230310C08();

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

void sub_2301E41D4(uint64_t *a1@<X8>)
{
  v2 = 0x65766974616C6572;
  if (*v1)
  {
    v2 = 0x6E656469666E6F63;
  }

  v3 = 0xEF74726F70707553;
  if (*v1)
  {
    v3 = 0xEA00000000006563;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2301E4224()
{
  if (*v0)
  {
    return 0x6E656469666E6F63;
  }

  else
  {
    return 0x65766974616C6572;
  }
}

uint64_t sub_2301E4270@<X0>(char *a1@<X8>)
{
  v2 = sub_230310C08();

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

uint64_t sub_2301E42E4(uint64_t a1)
{
  v2 = sub_2301E4554();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301E4320(uint64_t a1)
{
  v2 = sub_2301E4554();

  return MEMORY[0x2821FE720](a1, v2);
}

ReminderKitInternal::REMSuggestedAttributesHarvester::Request::CoreBehavior __swiftcall REMSuggestedAttributesHarvester.Request.CoreBehavior.init(relativeSupport:confidence:)(Swift::Double_optional relativeSupport, Swift::Double_optional confidence)
{
  *v4 = *&relativeSupport.is_nil;
  *(v4 + 8) = confidence.is_nil;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3 & 1;
  result.confidence.value = confidence.value;
  result.relativeSupport.value = relativeSupport.value;
  result.confidence.is_nil = confidence.is_nil;
  result.relativeSupport.is_nil = relativeSupport.is_nil;
  return result;
}

uint64_t REMSuggestedAttributesHarvester.Request.CoreBehavior.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16DF8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v9[0] = *(v1 + 16);
  v10 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301E4554();
  sub_230311448();
  v12 = 0;
  v7 = v9[1];
  sub_230310D78();
  if (!v7)
  {
    v11 = 1;
    sub_230310D78();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2301E4554()
{
  result = qword_280C9BB98;
  if (!qword_280C9BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BB98);
  }

  return result;
}

uint64_t REMSuggestedAttributesHarvester.Request.CoreBehavior.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16E00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301E4554();
  sub_230311428();
  if (!v2)
  {
    v19 = 0;
    v9 = sub_230310C68();
    v17 = v10;
    v11 = v9;
    v18 = 1;
    v13 = sub_230310C68();
    v15 = v14;
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
    *(a2 + 8) = v17 & 1;
    *(a2 + 16) = v13;
    *(a2 + 24) = v15 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t REMSuggestedAttributesHarvester.Request.Embedding.CodingKeys.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230310C08();

  *a1 = v2 != 0;
  return result;
}

uint64_t REMSuggestedAttributesHarvester.Request.Embedding.CodingKeys.init(stringValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230310C08();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2301E48A8()
{
  sub_230311358();
  sub_23030F9C8();
  return sub_2303113A8();
}

uint64_t sub_2301E491C()
{
  sub_230311358();
  sub_23030F9C8();
  return sub_2303113A8();
}

uint64_t sub_2301E4970@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230310C08();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2301E4A00@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230310C08();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2301E4A68(uint64_t a1)
{
  v2 = sub_2301E4C48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301E4AA4(uint64_t a1)
{
  v2 = sub_2301E4C48();

  return MEMORY[0x2821FE720](a1, v2);
}

ReminderKitInternal::REMSuggestedAttributesHarvester::Request::Embedding __swiftcall REMSuggestedAttributesHarvester.Request.Embedding.init(neighborsToConsider:)(ReminderKitInternal::REMSuggestedAttributesHarvester::Request::Embedding neighborsToConsider)
{
  *v1 = neighborsToConsider.neighborsToConsider.value;
  *(v1 + 8) = neighborsToConsider.neighborsToConsider.is_nil;
  return neighborsToConsider;
}

uint64_t REMSuggestedAttributesHarvester.Request.Embedding.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16E08);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301E4C48();
  sub_230311448();
  sub_230310D88();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_2301E4C48()
{
  result = qword_280C9BB80;
  if (!qword_280C9BB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BB80);
  }

  return result;
}

uint64_t REMSuggestedAttributesHarvester.Request.Embedding.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16E10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301E4C48();
  sub_230311428();
  if (!v2)
  {
    v9 = sub_230310C78();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2301E4E30(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16E08);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301E4C48();
  sub_230311448();
  sub_230310D88();
  return (*(v3 + 8))(v5, v2);
}

ReminderKitInternal::REMSuggestedAttributesHarvester::Request::CodingKeys_optional __swiftcall REMSuggestedAttributesHarvester.Request.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230310C08();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

ReminderKitInternal::REMSuggestedAttributesHarvester::Request::CodingKeys_optional __swiftcall REMSuggestedAttributesHarvester.Request.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = REMSuggestedAttributesHarvester.Request.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t sub_2301E5038()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0x6E69646465626D65;
    if (v1 != 9)
    {
      v7 = 0xD000000000000013;
    }

    v8 = 0xD000000000000010;
    v9 = 0x7265646E696D6572;
    if (v1 != 7)
    {
      v9 = 0x6168654265726F63;
    }

    if (v1 != 6)
    {
      v8 = v9;
    }

    if (*v0 <= 8u)
    {
      return v8;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x4F64656C62616E65;
    v3 = 0x7265646E696D6572;
    v4 = 0x49746E756F636361;
    if (v1 != 4)
    {
      v4 = 0xD000000000000012;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0xD000000000000015;
    if (v1 == 1)
    {
      v5 = 0x4F64656C62616E65;
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
}

uint64_t sub_2301E51EC()
{
  v0 = REMSuggestedAttributesHarvester.Request.CodingKeys.stringValue.getter();
  v2 = v1;
  if (v0 == REMSuggestedAttributesHarvester.Request.CodingKeys.stringValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_230311048();
  }

  return v5 & 1;
}

uint64_t sub_2301E5288()
{
  v0 = sub_230311358();
  REMSuggestedAttributesHarvester.Request.CodingKeys.stringValue.getter(v0);
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2301E52F0(uint64_t a1)
{
  REMSuggestedAttributesHarvester.Request.CodingKeys.stringValue.getter(a1);
  sub_23030F9C8();
}

uint64_t sub_2301E5354()
{
  v0 = sub_230311358();
  REMSuggestedAttributesHarvester.Request.CodingKeys.stringValue.getter(v0);
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2301E53C4@<X0>(uint64_t *a1@<X8>)
{
  result = REMSuggestedAttributesHarvester.Request.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

ReminderKitInternal::REMSuggestedAttributesHarvester::Request::CodingKeys_optional sub_2301E53F0@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = REMSuggestedAttributesHarvester.Request.CodingKeys.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_2301E5438(uint64_t a1)
{
  v2 = sub_2301E9AAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301E5474(uint64_t a1)
{
  v2 = sub_2301E9AAC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *REMSuggestedAttributesHarvester.Request.accountID.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t REMSuggestedAttributesHarvester.Request.languageIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void REMSuggestedAttributesHarvester.Request.coreBehavior.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

void REMSuggestedAttributesHarvester.Request.embedding.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  *a1 = *(v1 + 88);
  *(a1 + 8) = v2;
}

uint64_t REMSuggestedAttributesHarvester.Request.init(enabledOnmacOS:enabledOniOS:modelPipelineSwitcher:reminderInput:accountID:languageIdentifier:hasPasteboardURL:reminderHasURL:coreBehavior:embedding:allowLocalOverrides:allowCloudOverrides:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, uint64_t *a11, uint64_t *a12, char a13, char a14)
{
  v14 = *a11;
  v15 = a11[2];
  v16 = *a12;
  v19 = *(a11 + 8);
  v18 = *(a11 + 24);
  v17 = *(a12 + 8);
  *a9 = (result == 2) | result & 1;
  *(a9 + 1) = (a2 == 2) | a2 & 1;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 49) = a10;
  *(a9 + 56) = v14;
  *(a9 + 64) = v19;
  *(a9 + 72) = v15;
  *(a9 + 80) = v18;
  *(a9 + 88) = v16;
  *(a9 + 96) = v17;
  *(a9 + 97) = a13;
  *(a9 + 98) = a14;
  return result;
}

uint64_t REMSuggestedAttributesHarvester.Request.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16E18);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v36 = *(v1 + 1);
  v7 = *(v1 + 8);
  v29 = *(v1 + 16);
  v30 = v7;
  v8 = *(v1 + 24);
  v26 = *(v1 + 32);
  v27 = *(v1 + 40);
  v28 = v8;
  LODWORD(v8) = *(v1 + 48);
  v24 = *(v1 + 49);
  v25 = v8;
  v20 = *(v1 + 56);
  v23 = *(v1 + 64);
  v22 = *(v1 + 72);
  v21 = *(v1 + 80);
  v18 = *(v1 + 88);
  v19 = *(v1 + 96);
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_2301E9AAC();
  sub_230311448();
  LOBYTE(v32) = 0;
  v13 = v31;
  sub_230310DB8();
  if (!v13)
  {
    v14 = v29;
    v15 = v30;
    LOBYTE(v32) = 1;
    sub_230310DB8();
    v32 = v15;
    v37 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16E20);
    sub_2301E9BA8(&qword_280C96F78);
    sub_230310DF8();
    v32 = v14;
    v37 = 3;
    type metadata accessor for REMSuggestedAttributeInput(0);
    sub_2301EA59C(&qword_280C9A218, type metadata accessor for REMSuggestedAttributeInput);
    sub_230310DF8();
    v32 = v28;
    v37 = 4;
    type metadata accessor for REMObjectID_Codable();
    sub_2301EA59C(qword_280C9BFD8, type metadata accessor for REMObjectID_Codable);
    sub_230310D98();
    LOBYTE(v32) = 5;
    sub_230310D58();
    LOBYTE(v32) = 6;
    sub_230310DB8();
    LOBYTE(v32) = 7;
    sub_230310DB8();
    v32 = v20;
    v33 = v23;
    v34 = v22;
    v35 = v21;
    v37 = 8;
    sub_2301E9B00();
    sub_230310DF8();
    v32 = v18;
    v33 = v19;
    v37 = 9;
    sub_2301E9B54();
    sub_230310DF8();
    LOBYTE(v32) = 10;
    sub_230310DB8();
    LOBYTE(v32) = 11;
    sub_230310DB8();
  }

  return (*(v4 + 8))(v6, v12);
}

void REMSuggestedAttributesHarvester.Request.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16E28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301E9AAC();
  sub_230311428();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v43) = 0;
    v9 = sub_230310CA8();
    LOBYTE(v43) = 1;
    v10 = sub_230310CA8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16E20);
    LOBYTE(v37) = 2;
    sub_2301E9BA8(&qword_280C96F70);
    sub_230310CE8();
    v73 = v43;
    type metadata accessor for REMSuggestedAttributeInput(0);
    LOBYTE(v37) = 3;
    sub_2301EA59C(&qword_280C9A210, type metadata accessor for REMSuggestedAttributeInput);
    sub_230310CE8();
    v36 = v43;
    type metadata accessor for REMObjectID_Codable();
    LOBYTE(v37) = 4;
    sub_2301EA59C(&qword_280C9C5D0, type metadata accessor for REMObjectID_Codable);
    sub_230310C88();
    v34 = v43;
    LOBYTE(v43) = 5;
    v32 = sub_230310C48();
    v33 = 0;
    v35 = v11;
    LOBYTE(v43) = 6;
    v31 = sub_230310CA8();
    LOBYTE(v43) = 7;
    v30 = sub_230310CA8();
    LOBYTE(v37) = 8;
    sub_2301E9C18();
    sub_230310CE8();
    v29 = v43;
    v28 = v45;
    v68 = v44;
    v66 = v46;
    LOBYTE(v37) = 9;
    sub_2301E9C6C();
    sub_230310CE8();
    v27 = v43;
    v64 = v44;
    LOBYTE(v43) = 10;
    v26 = sub_230310CA8();
    v63 = 11;
    v12 = sub_230310CA8();
    v13 = v9 & 1;
    v25 = v13;
    v23 = v10 & 1;
    v31 &= 1u;
    v30 &= 1u;
    v14 = v30;
    LODWORD(v33) = v26 & 1;
    (*(v6 + 8))(v8, v5);
    v24 = v12 & 1;
    LOBYTE(v37) = v13;
    LOBYTE(v13) = v23;
    BYTE1(v37) = v23;
    *(&v37 + 2) = v71;
    WORD3(v37) = v72;
    *(&v37 + 1) = v73;
    *&v38 = v36;
    *(&v38 + 1) = v34;
    *&v39 = v32;
    v15 = v35;
    *(&v39 + 1) = v35;
    LOBYTE(v40) = v31;
    BYTE1(v40) = v14;
    *(&v40 + 2) = v69;
    WORD3(v40) = v70;
    *(&v40 + 1) = v29;
    v26 = v68;
    LOBYTE(v41) = v68;
    DWORD1(v41) = *&v67[3];
    *(&v41 + 1) = *v67;
    v16 = v28;
    *(&v41 + 1) = v28;
    v17 = v66;
    v42[0] = v66;
    *&v42[4] = *&v65[3];
    *&v42[1] = *v65;
    v18 = v27;
    *&v42[8] = v27;
    v19 = v64;
    v42[16] = v64;
    v42[17] = v33;
    v42[18] = v24;
    v20 = *v42;
    *(a2 + 64) = v41;
    *(a2 + 80) = v20;
    *(a2 + 95) = *&v42[15];
    v21 = v38;
    *a2 = v37;
    *(a2 + 16) = v21;
    v22 = v40;
    *(a2 + 32) = v39;
    *(a2 + 48) = v22;
    sub_2301E9CC0(&v37, &v43);
    __swift_destroy_boxed_opaque_existential_1(a1);
    LOBYTE(v43) = v25;
    BYTE1(v43) = v13;
    *(&v43 + 2) = v71;
    HIWORD(v43) = v72;
    v44 = v73;
    v45 = v36;
    v46 = v34;
    v47 = v32;
    v48 = v15;
    v49 = v31;
    v50 = v30;
    v51 = v69;
    v52 = v70;
    v53 = v29;
    v54 = v26;
    *&v55[3] = *&v67[3];
    *v55 = *v67;
    v56 = v16;
    v57 = v17;
    *v58 = *v65;
    *&v58[3] = *&v65[3];
    v59 = v18;
    v60 = v19;
    v61 = v33;
    v62 = v24;
    sub_2301E9CF8(&v43);
  }
}

uint64_t REMSuggestedAttributesHarvester.MentionsExtractionRequest.reminderTitle.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t REMSuggestedAttributesHarvester.MentionsExtractionRequest.editingSessionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for REMSuggestedAttributesHarvester.MentionsExtractionRequest() + 24);
  v4 = sub_23030EBB8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t REMSuggestedAttributesHarvester.MentionsExtractionRequest.init(reminderTitle:listID:editingSessionID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = a3;
  v7 = *(type metadata accessor for REMSuggestedAttributesHarvester.MentionsExtractionRequest() + 24);
  v8 = sub_23030EBB8();
  v9 = *(*(v8 - 8) + 32);

  return v9(&a5[v7], a4, v8);
}

uint64_t sub_2301E6560()
{
  v1 = 0x44497473696CLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265646E696D6572;
  }
}

uint64_t sub_2301E65C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2301ECB30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2301E65F0(uint64_t a1)
{
  v2 = sub_2301E9D74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301E662C(uint64_t a1)
{
  v2 = sub_2301E9D74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMSuggestedAttributesHarvester.MentionsExtractionRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16E30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301E9D74();
  sub_230311448();
  v12 = 0;
  sub_230310DA8();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v10[15] = 1;
    type metadata accessor for REMObjectID_Codable();
    sub_2301EA59C(qword_280C9BFD8, type metadata accessor for REMObjectID_Codable);
    sub_230310DF8();
    type metadata accessor for REMSuggestedAttributesHarvester.MentionsExtractionRequest();
    v10[14] = 2;
    sub_23030EBB8();
    sub_2301EA59C(&unk_280C9C408, MEMORY[0x277CC95F0]);
    sub_230310DF8();
  }

  return (*(v6 + 8))(v8, v5);
}

void REMSuggestedAttributesHarvester.MentionsExtractionRequest.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_23030EBB8();
  v23 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16E38);
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for REMSuggestedAttributesHarvester.MentionsExtractionRequest();
  MEMORY[0x28223BE20](v9);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301E9D74();
  v27 = v8;
  v12 = v28;
  sub_230311428();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v13 = a1;
    v14 = v5;
    v32 = 0;
    v15 = v25;
    v16 = v26;
    *v11 = sub_230310C98();
    v11[1] = v17;
    v28 = v17;
    type metadata accessor for REMObjectID_Codable();
    v31 = 1;
    sub_2301EA59C(&qword_280C9C5D0, type metadata accessor for REMObjectID_Codable);
    sub_230310CE8();
    v11[2] = v29;
    v30 = 2;
    sub_2301EA59C(&unk_280C9C5F0, MEMORY[0x277CC95F0]);
    v21 = v14;
    v22 = v11;
    sub_230310CE8();
    (*(v15 + 8))(v27, v16);
    v18 = *(v9 + 24);
    v19 = v22;
    (*(v23 + 32))(v22 + v18, v21, v3);
    sub_2301E9DC8(v19, v24);
    __swift_destroy_boxed_opaque_existential_1(v13);
    sub_2301E9E2C(v19);
  }
}

ReminderKitInternal::REMSuggestedAttributesHarvester::FeedbackRequest __swiftcall REMSuggestedAttributesHarvester.FeedbackRequest.init(source:feedbackFactor:)(ReminderKitInternal::REMSuggestedAttributeOutput::Source source, Swift::Double feedbackFactor)
{
  *v2 = *source.predictors._rawValue;
  *(v2 + 8) = feedbackFactor;
  result.feedbackFactor = feedbackFactor;
  result.source = source;
  return result;
}

uint64_t sub_2301E6CC8()
{
  if (*v0)
  {
    return 0x6B63616264656566;
  }

  else
  {
    return 0x656372756F73;
  }
}

uint64_t sub_2301E6D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v6 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B63616264656566 && a2 == 0xEE00726F74636146)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230311048();

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

uint64_t sub_2301E6DEC(uint64_t a1)
{
  v2 = sub_2301E9E88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301E6E28(uint64_t a1)
{
  v2 = sub_2301E9E88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMSuggestedAttributesHarvester.FeedbackRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16E40);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301E9E88();

  sub_230311448();
  v11 = v8;
  v10[7] = 0;
  sub_230162DA0();
  sub_230310DF8();

  if (!v2)
  {
    v10[6] = 1;
    sub_230310DC8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t REMSuggestedAttributesHarvester.FeedbackRequest.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16E48);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301E9E88();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13[7] = 0;
  sub_230162CF8();
  sub_230310CE8();
  v9 = v14;
  v13[6] = 1;
  sub_230310CB8();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  a2[1] = v11;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2301E7224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7265646E696D6572 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230311048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2301E72AC(uint64_t a1)
{
  v2 = sub_2301E9EDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301E72E8(uint64_t a1)
{
  v2 = sub_2301E9EDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMSuggestedAttributesHarvester.PostSuggestionAnalyticsRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16E50);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301E9EDC();

  sub_230311448();
  v9[1] = v7;
  type metadata accessor for REMSuggestedAttributeInput(0);
  sub_2301EA59C(&qword_280C9A218, type metadata accessor for REMSuggestedAttributeInput);
  sub_230310DF8();

  return (*(v4 + 8))(v6, v3);
}

uint64_t REMSuggestedAttributesHarvester.PostSuggestionAnalyticsRequest.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16E58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301E9EDC();
  sub_230311428();
  if (!v2)
  {
    type metadata accessor for REMSuggestedAttributeInput(0);
    sub_2301EA59C(&qword_280C9A210, type metadata accessor for REMSuggestedAttributeInput);
    sub_230310CE8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t REMSuggestedAttributesHarvester.RecordSuggestionRequest.suggestionValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t REMSuggestedAttributesHarvester.RecordSuggestionRequest.init(suggestionValue:suggestionType:pipeline:reminderID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a3;
  v7 = *a4;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = v6;
  *(a6 + 17) = v7;
  *(a6 + 24) = a5;
  return result;
}

uint64_t sub_2301E76FC()
{
  v1 = 0x656E696C65706970;
  if (*v0 != 2)
  {
    v1 = 0x7265646E696D6572;
  }

  if (*v0 <= 1u)
  {
    return 0x6974736567677573;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2301E7780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2301ECC54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2301E77A8(uint64_t a1)
{
  v2 = sub_2301E9F30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301E77E4(uint64_t a1)
{
  v2 = sub_2301E9F30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMSuggestedAttributesHarvester.RecordSuggestionRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16E60);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  v8 = *(v1 + 16);
  v18 = *(v1 + 17);
  v19 = v8;
  v17 = *(v1 + 24);
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_2301E9F30();
  sub_230311448();
  v26 = 0;
  sub_230310DA8();
  if (!v2)
  {
    v13 = v18;
    v14 = v17;
    v25 = v19;
    v24 = 1;
    sub_2301E9F84();
    sub_230310DF8();
    v23 = v13;
    v22 = 2;
    sub_230162BFC();
    sub_230310DF8();
    v20 = v14;
    v21 = 3;
    type metadata accessor for REMObjectID_Codable();
    sub_2301EA59C(qword_280C9BFD8, type metadata accessor for REMObjectID_Codable);
    sub_230310DF8();
  }

  return (*(v5 + 8))(v7, v12);
}

uint64_t REMSuggestedAttributesHarvester.RecordSuggestionRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16E68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301E9F30();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_230310C98();
  v11 = v10;
  v18 = v9;
  v23 = 1;
  sub_2301E9FD8();
  sub_230310CE8();
  v12 = v24;
  v21 = 2;
  sub_230162AF8();
  sub_230310CE8();
  v17 = v12;
  LOBYTE(v12) = v22;
  type metadata accessor for REMObjectID_Codable();
  v20 = 3;
  sub_2301EA59C(&qword_280C9C5D0, type metadata accessor for REMObjectID_Codable);
  sub_230310CE8();
  (*(v6 + 8))(v8, v5);
  v14 = v19;
  *a2 = v18;
  *(a2 + 8) = v11;
  *(a2 + 16) = v17;
  *(a2 + 17) = v12;
  *(a2 + 24) = v14;

  v15 = v14;
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t REMSuggestedAttributesHarvester.Response.heuristicResult.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8[0] = v1[2];
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 41);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_2301EA02C(v7, &v6);
}

uint64_t REMSuggestedAttributesHarvester.Response.embeddingResult.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[5];
  v7[0] = v1[4];
  v7[1] = v2;
  v8[0] = v1[6];
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 105);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_2301EA02C(v7, &v6);
}

uint64_t REMSuggestedAttributesHarvester.Response.coreBehaviorResult.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[9];
  v7[0] = v1[8];
  v7[1] = v2;
  v8[0] = v1[10];
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 169);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_2301EA02C(v7, &v6);
}

__n128 REMSuggestedAttributesHarvester.Response.init(heuristicResult:embeddingResult:coreBehaviorResult:)@<Q0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v4;
  *(a4 + 32) = a1[2];
  *(a4 + 41) = *(a1 + 41);
  v5 = a2[1];
  *(a4 + 64) = *a2;
  *(a4 + 80) = v5;
  *(a4 + 96) = a2[2];
  *(a4 + 105) = *(a2 + 41);
  result = *a3;
  v7 = *(a3 + 16);
  v8 = *(a3 + 32);
  *(a4 + 169) = *(a3 + 41);
  *(a4 + 144) = v7;
  *(a4 + 160) = v8;
  *(a4 + 128) = result;
  return result;
}

uint64_t sub_2301E7EA8()
{
  v1 = 0x6E69646465626D65;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6974736972756568;
  }
}

uint64_t sub_2301E7F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2301ECDD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2301E7F3C(uint64_t a1)
{
  v2 = sub_2301EA09C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301E7F78(uint64_t a1)
{
  v2 = sub_2301EA09C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMSuggestedAttributesHarvester.Response.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16E78);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - v5;
  v7 = v1[1];
  v32 = *v1;
  v33 = v7;
  v34[0] = v1[2];
  *(v34 + 9) = *(v1 + 41);
  v8 = v1[5];
  v35 = v1[4];
  v36 = v8;
  v37[0] = v1[6];
  *(v37 + 9) = *(v1 + 105);
  v9 = v1[8];
  v10 = v1[9];
  v11 = v1[10];
  *(v40 + 9) = *(v1 + 169);
  v39 = v10;
  v40[0] = v11;
  v38 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301EA02C(&v32, &v29);
  sub_2301EA09C();
  sub_230311448();
  v29 = v32;
  v30 = v33;
  v31[0] = v34[0];
  *(v31 + 9) = *(v34 + 9);
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16E70);
  sub_2301EA2B8(&qword_280C96D00);
  v12 = v41;
  sub_230310DF8();
  v26[0] = v29;
  v26[1] = v30;
  *v27 = v31[0];
  *&v27[9] = *(v31 + 9);
  sub_230061918(v26, &qword_27DB16E70);
  if (!v12)
  {
    v23 = v35;
    v24 = v36;
    v25[0] = v37[0];
    *(v25 + 9) = *(v37 + 9);
    v22 = 1;
    sub_2301EA02C(&v35, v20);
    sub_230310DF8();
    v20[0] = v23;
    v20[1] = v24;
    *v21 = v25[0];
    *&v21[9] = *(v25 + 9);
    sub_230061918(v20, &qword_27DB16E70);
    v17 = v38;
    v18 = v39;
    v19[0] = v40[0];
    *(v19 + 9) = *(v40 + 9);
    v16 = 2;
    sub_2301EA02C(&v38, v14);
    sub_230310DF8();
    v14[0] = v17;
    v14[1] = v18;
    *v15 = v19[0];
    *&v15[9] = *(v19 + 9);
    sub_230061918(v14, &qword_27DB16E70);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t REMSuggestedAttributesHarvester.Response.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16E88);
  v5 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v7 = &v20 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301EA09C();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16E70);
  v34 = 0;
  sub_2301EA2B8(&qword_280C96CF8);
  v8 = v47;
  sub_230310CE8();
  v38 = v35;
  v39 = v36;
  v40[0] = v37[0];
  *(v40 + 9) = *(v37 + 9);
  v30 = 1;
  sub_230310CE8();
  v41 = v31;
  v42 = v32;
  v43[0] = *v33;
  *(v43 + 9) = *&v33[9];
  v26 = 2;
  sub_230310CE8();
  (*(v21 + 8))(v7, v8);
  v45 = v28;
  v46[0] = *v29;
  *(v46 + 9) = *&v29[9];
  v44 = v27;
  v22[8] = v27;
  v22[9] = v28;
  v9 = v41;
  v10 = v42;
  v22[4] = v41;
  v22[5] = v42;
  v11 = v43[0];
  v12 = v43[1];
  v22[6] = v43[0];
  v22[7] = v43[1];
  v13 = v38;
  v14 = v39;
  v22[0] = v38;
  v22[1] = v39;
  v15 = v40[0];
  v16 = v40[1];
  v22[2] = v40[0];
  v22[3] = v40[1];
  v17 = v28;
  v18 = v46[0];
  v23[0] = v46[0];
  *(v23 + 9) = *&v29[9];
  a2[8] = v27;
  a2[9] = v17;
  a2[10] = v18;
  *(a2 + 169) = *(v46 + 9);
  a2[4] = v9;
  a2[5] = v10;
  a2[6] = v11;
  a2[7] = v12;
  *a2 = v13;
  a2[1] = v14;
  a2[2] = v15;
  a2[3] = v16;
  sub_2301E321C(v22, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v24[8] = v44;
  v24[9] = v45;
  *v25 = v46[0];
  *&v25[9] = *(v46 + 9);
  v24[4] = v41;
  v24[5] = v42;
  v24[6] = v43[0];
  v24[7] = v43[1];
  v24[0] = v38;
  v24[1] = v39;
  v24[2] = v40[0];
  v24[3] = v40[1];
  return sub_2301E3780(v24);
}

uint64_t REMSuggestedAttributesHarvester.MentionsExtractionResponse.result.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8[0] = v1[2];
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 41);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_2301EA02C(v7, &v6);
}

__n128 REMSuggestedAttributesHarvester.MentionsExtractionResponse.init(result:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = *(a1 + 32);
  result = *(a1 + 41);
  *(a2 + 41) = result;
  return result;
}

uint64_t sub_2301E882C(uint64_t a1)
{
  v2 = sub_2301EA3AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301E8868(uint64_t a1)
{
  v2 = sub_2301EA3AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMSuggestedAttributesHarvester.MentionsExtractionResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16E90);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = v1[1];
  v14 = *v1;
  v15 = v7;
  v16[0] = v1[2];
  *(v16 + 9) = *(v1 + 41);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301EA02C(&v14, &v11);
  sub_2301EA3AC();
  sub_230311448();
  v11 = v14;
  v12 = v15;
  v13[0] = v16[0];
  *(v13 + 9) = *(v16 + 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16E70);
  sub_2301EA2B8(&qword_280C96D00);
  sub_230310DF8();
  v9[0] = v11;
  v9[1] = v12;
  v10[0] = v13[0];
  *(v10 + 9) = *(v13 + 9);
  sub_230061918(v9, &qword_27DB16E70);
  return (*(v4 + 8))(v6, v3);
}

uint64_t REMSuggestedAttributesHarvester.MentionsExtractionResponse.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16E98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301EA3AC();
  sub_230311428();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16E70);
    sub_2301EA2B8(&qword_280C96CF8);
    sub_230310CE8();
    (*(v6 + 8))(v8, v5);
    v9 = v11[1];
    *a2 = v11[0];
    a2[1] = v9;
    a2[2] = v12[0];
    *(a2 + 41) = *(v12 + 9);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2301E8C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230311048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2301E8D10(uint64_t a1)
{
  v2 = sub_2301EA400();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2301E8D4C(uint64_t a1)
{
  v2 = sub_2301EA400();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMSuggestedAttributesHarvester.BooleanResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16EA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301EA400();
  sub_230311448();
  sub_230310DB8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t REMSuggestedAttributesHarvester.BooleanResponse.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16EA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301EA400();
  sub_230311428();
  if (!v2)
  {
    v9 = sub_230310CA8();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2301E9030(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16EA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301EA400();
  sub_230311448();
  sub_230310DB8();
  return (*(v3 + 8))(v5, v2);
}

ReminderKitInternal::REMSuggestedAttributesHarvester::CachedSuggestionType_optional __swiftcall REMSuggestedAttributesHarvester.CachedSuggestionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230310C08();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t REMSuggestedAttributesHarvester.CachedSuggestionType.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x797469726F697270;
    v7 = 6775156;
    if (v1 != 8)
    {
      v7 = 0x746361746E6F63;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x656C6369686576;
    if (v1 != 5)
    {
      v8 = 0x64656767616C66;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 1953720684;
    v3 = 0x664F796144657564;
    v4 = 0x6144657544706C6ELL;
    if (v1 != 3)
    {
      v4 = 0x6E6F697461636F6CLL;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x6E65727275636572;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_2301E930C()
{
  sub_230311358();
  sub_2302ADF08();
  return sub_2303113A8();
}

uint64_t sub_2301E935C()
{
  sub_230311358();
  sub_2302ADF08();
  return sub_2303113A8();
}

uint64_t sub_2301E93AC@<X0>(uint64_t *a1@<X8>)
{
  result = REMSuggestedAttributesHarvester.CachedSuggestionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static REMSuggestedAttributesHarvester.modelPipelineValueFromUserDefaults(for:)(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() daemonUserDefaults];
  v3 = [v2 suggestedAttributesHarvestingOverrides];

  if (v3)
  {
    v4 = sub_23030F658();
  }

  else
  {
    v4 = sub_23008D308(MEMORY[0x277D84F90]);
  }

  v17[0] = 0xD000000000000015;
  v17[1] = 0x800000023033F370;
  sub_230310768();
  if (*(v4 + 16) && (v5 = sub_230081C20(v16), (v6 & 1) != 0))
  {
    sub_23004D5CC(*(v4 + 56) + 32 * v5, v17);
    sub_23008E21C(v16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16E20);
    if (swift_dynamicCast())
    {
      v7 = v15;
      if (v1 > 2)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (v1)
      {
        if (v1 == 1)
        {
          v8 = 0xE300000000000000;
          v9 = 5131883;
          if (!*(v7 + 16))
          {
            goto LABEL_19;
          }
        }

        else
        {
          v8 = 0xEC000000726F6976;
          v9 = 0x6168654265726F63;
          if (!*(v7 + 16))
          {
            goto LABEL_19;
          }
        }

        goto LABEL_21;
      }

      v8 = 0xED00007265737261;
      v9 = 0x5079726575516C6ELL;
      if (*(v7 + 16))
      {
        goto LABEL_21;
      }

LABEL_19:

LABEL_23:
      v13 = 1;
      goto LABEL_24;
    }
  }

  else
  {

    sub_23008E21C(v16);
  }

  v7 = MEMORY[0x277D84F98];
  if (v1 <= 2)
  {
    goto LABEL_14;
  }

LABEL_8:
  if (v1 == 3)
  {
    v9 = 0x6974736972756568;
    v8 = 0xE900000000000063;
    if (*(v7 + 16))
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (v1 == 4)
  {
    v8 = 0xEE00656C62627542;
    v9 = 0x6465726F68636E61;
    if (!*(v7 + 16))
    {
      goto LABEL_19;
    }
  }

  else
  {
    v8 = 0xE900000000000074;
    v9 = 0x6867696C746F7073;
    if (!*(v7 + 16))
    {
      goto LABEL_19;
    }
  }

LABEL_21:
  v10 = sub_23005EE00(v9, v8);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    goto LABEL_23;
  }

  v13 = *(*(v7 + 56) + v10);
LABEL_24:

  return v13;
}

void static REMSuggestedAttributesHarvester.setModelPipelineValueInUserDefaults(for:value:)(unsigned __int8 *a1, char a2)
{
  v3 = *a1;
  v4 = objc_opt_self();
  v5 = [v4 daemonUserDefaults];
  v6 = [v5 suggestedAttributesHarvestingOverrides];

  if (v6)
  {
    v7 = sub_23030F658();
  }

  else
  {
    v7 = sub_23008D308(MEMORY[0x277D84F90]);
  }

  *&v26[0] = 0xD000000000000015;
  *(&v26[0] + 1) = 0x800000023033F370;
  sub_230310768();
  if (*(v7 + 16) && (v8 = sub_230081C20(v27), (v9 & 1) != 0))
  {
    sub_23004D5CC(*(v7 + 56) + 32 * v8, &v28);
    sub_23008E21C(v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16E20);
    if (swift_dynamicCast())
    {
      v10 = *&v26[0];
      goto LABEL_10;
    }
  }

  else
  {
    sub_23008E21C(v27);
  }

  v10 = MEMORY[0x277D84F98];
LABEL_10:
  v11 = 0xED00007265737261;
  v12 = 0x5079726575516C6ELL;
  v13 = 0x6974736972756568;
  v14 = 0xE900000000000063;
  v15 = 0xEE00656C62627542;
  v16 = 0x6465726F68636E61;
  if (v3 != 4)
  {
    v16 = 0x6867696C746F7073;
    v15 = 0xE900000000000074;
  }

  if (v3 != 3)
  {
    v13 = v16;
    v14 = v15;
  }

  v17 = 0xE300000000000000;
  v18 = 5131883;
  if (v3 != 1)
  {
    v18 = 0x6168654265726F63;
    v17 = 0xEC000000726F6976;
  }

  if (v3)
  {
    v12 = v18;
    v11 = v17;
  }

  if (v3 <= 2)
  {
    v19 = v12;
  }

  else
  {
    v19 = v13;
  }

  if (v3 <= 2)
  {
    v20 = v11;
  }

  else
  {
    v20 = v14;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27[0] = v10;
  sub_2300A2CA8(a2 & 1, v19, v20, isUniquelyReferenced_nonNull_native);

  v22 = v27[0];
  *&v28 = 0xD000000000000015;
  *(&v28 + 1) = 0x800000023033F370;
  sub_230310768();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16E20);
  *&v28 = v22;
  sub_230061914(&v28, v26);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_2300A1610(v26, v27, v23);
  sub_23008E21C(v27);
  v24 = [v4 daemonUserDefaults];
  v25 = sub_23030F638();
  [v24 setSuggestedAttributesHarvestingOverrides_];
}

unint64_t sub_2301E9AAC()
{
  result = qword_280C9BBB0;
  if (!qword_280C9BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BBB0);
  }

  return result;
}

unint64_t sub_2301E9B00()
{
  result = qword_280C9A0C0;
  if (!qword_280C9A0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A0C0);
  }

  return result;
}

unint64_t sub_2301E9B54()
{
  result = qword_280C9A0A0;
  if (!qword_280C9A0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A0A0);
  }

  return result;
}

uint64_t sub_2301E9BA8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB16E20);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2301E9C18()
{
  result = qword_280C9A0B8;
  if (!qword_280C9A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A0B8);
  }

  return result;
}

unint64_t sub_2301E9C6C()
{
  result = qword_280C9A098;
  if (!qword_280C9A098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A098);
  }

  return result;
}

uint64_t type metadata accessor for REMSuggestedAttributesHarvester.MentionsExtractionRequest()
{
  result = qword_280C9BC28;
  if (!qword_280C9BC28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2301E9D74()
{
  result = qword_280C9BC48;
  if (!qword_280C9BC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BC48);
  }

  return result;
}

uint64_t sub_2301E9DC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMSuggestedAttributesHarvester.MentionsExtractionRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2301E9E2C(uint64_t a1)
{
  v2 = type metadata accessor for REMSuggestedAttributesHarvester.MentionsExtractionRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2301E9E88()
{
  result = qword_280C9BC60;
  if (!qword_280C9BC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BC60);
  }

  return result;
}

unint64_t sub_2301E9EDC()
{
  result = qword_280C98A10;
  if (!qword_280C98A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98A10);
  }

  return result;
}

unint64_t sub_2301E9F30()
{
  result = qword_280C98A58;
  if (!qword_280C98A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98A58);
  }

  return result;
}

unint64_t sub_2301E9F84()
{
  result = qword_280C97458;
  if (!qword_280C97458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97458);
  }

  return result;
}

unint64_t sub_2301E9FD8()
{
  result = qword_280C97448;
  if (!qword_280C97448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97448);
  }

  return result;
}

uint64_t sub_2301EA02C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2301EA09C()
{
  result = qword_280C9BB68;
  if (!qword_280C9BB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BB68);
  }

  return result;
}

unint64_t sub_2301EA0F0()
{
  result = qword_280C98B40;
  if (!qword_280C98B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98B40);
  }

  return result;
}

uint64_t sub_2301EA144(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB16E80);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2301EA1BC()
{
  result = qword_280C98B48;
  if (!qword_280C98B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98B48);
  }

  return result;
}

unint64_t sub_2301EA210()
{
  result = qword_280C9C188;
  if (!qword_280C9C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9C188);
  }

  return result;
}

unint64_t sub_2301EA264()
{
  result = qword_280C9C190;
  if (!qword_280C9C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9C190);
  }

  return result;
}

uint64_t sub_2301EA2B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB16E70);
    sub_2301EA144(&qword_280C98858, sub_2301EA0F0);
    sub_2301EA144(&qword_280C98860, sub_2301EA1BC);
    sub_2301EA210();
    sub_2301EA264();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2301EA3AC()
{
  result = qword_280C9BBC8;
  if (!qword_280C9BBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BBC8);
  }

  return result;
}

unint64_t sub_2301EA400()
{
  result = qword_280C98A78;
  if (!qword_280C98A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98A78);
  }

  return result;
}

unint64_t sub_2301EA458()
{
  result = qword_280C9A080;
  if (!qword_280C9A080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A080);
  }

  return result;
}

unint64_t sub_2301EA4B8()
{
  result = qword_27DB16EB0;
  if (!qword_27DB16EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16EB0);
  }

  return result;
}

uint64_t sub_2301EA59C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2301EA5EC()
{
  result = qword_27DB16EC0;
  if (!qword_27DB16EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16EC0);
  }

  return result;
}

unint64_t sub_2301EA644()
{
  result = qword_27DB16EC8;
  if (!qword_27DB16EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16EC8);
  }

  return result;
}

unint64_t sub_2301EA69C()
{
  result = qword_27DB16ED0;
  if (!qword_27DB16ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16ED0);
  }

  return result;
}

unint64_t sub_2301EA6F4()
{
  result = qword_27DB16ED8;
  if (!qword_27DB16ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16ED8);
  }

  return result;
}

unint64_t sub_2301EA750()
{
  result = qword_27DB16EE0;
  if (!qword_27DB16EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16EE0);
  }

  return result;
}

unint64_t sub_2301EA7AC()
{
  result = qword_27DB16EE8;
  if (!qword_27DB16EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16EE8);
  }

  return result;
}

unint64_t sub_2301EA82C()
{
  result = qword_280C9A0C8;
  if (!qword_280C9A0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A0C8);
  }

  return result;
}

unint64_t sub_2301EA884()
{
  result = qword_280C9BB88;
  if (!qword_280C9BB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BB88);
  }

  return result;
}

unint64_t sub_2301EA8DC()
{
  result = qword_280C9BB90;
  if (!qword_280C9BB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BB90);
  }

  return result;
}

unint64_t sub_2301EA968(uint64_t a1)
{
  result = sub_2301E9C18();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2301EA994()
{
  result = qword_27DB16EF8;
  if (!qword_27DB16EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB16EF8);
  }

  return result;
}

unint64_t sub_2301EAA14()
{
  result = qword_280C9A0A8;
  if (!qword_280C9A0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A0A8);
  }

  return result;
}

unint64_t sub_2301EAA6C()
{
  result = qword_280C9BB70;
  if (!qword_280C9BB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BB70);
  }

  return result;
}

unint64_t sub_2301EAAC4()
{
  result = qword_280C9BB78;
  if (!qword_280C9BB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BB78);
  }

  return result;
}

unint64_t sub_2301EAB50(uint64_t a1)
{
  result = sub_2301E9C6C();
  *(a1 + 16) = result;
  return result;
}