unint64_t sub_2302DC608()
{
  result = qword_280C993F0;
  if (!qword_280C993F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C993F0);
  }

  return result;
}

unint64_t sub_2302DC660()
{
  result = qword_280C993B8;
  if (!qword_280C993B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C993B8);
  }

  return result;
}

unint64_t sub_2302DC6B8()
{
  result = qword_280C993C0;
  if (!qword_280C993C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C993C0);
  }

  return result;
}

uint64_t sub_2302DC70C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C756465686373 && a2 == 0xE900000000000064;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656767616C66 && a2 == 0xE700000000000000 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7105633 && a2 == 0xE300000000000000 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7961646F74 && a2 == 0xE500000000000000 || (sub_230311048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000230346E20 == a2 || (sub_230311048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000230346E40 == a2 || (sub_230311048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000002ELL && 0x8000000230346E60 == a2 || (sub_230311048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7463656A624F7962 && a2 == 0xEA00000000004449)
  {

    return 7;
  }

  else
  {
    v6 = sub_230311048();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_2302DC9B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746E756F636361 && a2 == 0xE800000000000000;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C746C7561666564 && a2 == 0xEB00000000747369 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265646E696D6572 && a2 == 0xEE0073746E756F43 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C67617468736168 && a2 == 0xED0000736C656261 || (sub_230311048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000230345920 == a2 || (sub_230311048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000002BLL && 0x8000000230346E90 == a2 || (sub_230311048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000230346EC0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_230311048();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_2302DCC1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6363416863746566 && a2 == 0xED000073746E756FLL;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000230346F00 == a2 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000230346F20 == a2 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000230346F40 == a2 || (sub_230311048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000030 && 0x8000000230346F60 == a2 || (sub_230311048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000230346FA0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_230311048();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_2302DCE24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000230346FC0 == a2 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1717987684 && a2 == 0xE400000000000000)
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

unint64_t sub_2302DCF40()
{
  result = qword_27DB19900;
  if (!qword_27DB19900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19900);
  }

  return result;
}

uint64_t REMNotifyPublisher.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t REMNotifyPublisher.init(name:accessQueue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_2302DD0A0()
{
  v1 = *(v0 + 56);
  if (v1 != -1)
  {
    notify_cancel(v1);
  }

  MEMORY[0x231914180](*(v0 + 32), -1, -1);
  MEMORY[0x231914180](*(v0 + 40), -1, -1);

  v2 = *(*v0 + 136);
  v3 = sub_2303104C8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return v0;
}

uint64_t sub_2302DD194()
{
  sub_2302DD0A0();

  return swift_deallocClassInstance();
}

uint64_t sub_2302DD1E8()
{
  v1 = *(*v0 + 80);
  v2 = sub_2303104C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  v6 = *(v0 + 14);
  if (v6 != -1)
  {
    notify_cancel(v6);
    *(v0 + 14) = -1;
  }

  (*(*(v1 - 8) + 56))(v5, 1, 1, v1);
  v7 = *(*v0 + 136);
  swift_beginAccess();
  (*(v3 + 40))(&v0[v7], v5, v2);
  return swift_endAccess();
}

void *assignWithCopy for REMNotifyPublisher(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  v4 = a2[2];
  v5 = a1[2];
  a1[2] = v4;
  v6 = v4;

  return a1;
}

uint64_t assignWithTake for REMNotifyPublisher(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t REMManualOrdering.init(templates:)(unint64_t a1)
{
  v2 = sub_23030EB58();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x28223BE20](v2);
  v38 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - v5;
  v7 = sub_23030EBB8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  sub_23030EB68();
  result = (*(v8 + 48))(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    v15 = objc_opt_self();
    v16 = sub_23030EB88();
    v17 = [v15 objectIDWithUUID_];

    v18 = type metadata accessor for REMObjectID_Codable();
    v41 = objc_allocWithZone(v18);
    v19 = [v17 uuid];
    sub_23030EBA8();

    v20 = sub_23030EB88();
    v21 = *(v8 + 8);
    v21(v11, v7);
    v22 = [v17 entityName];
    if (!v22)
    {
      _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v22 = sub_23030F8B8();
    }

    v43.receiver = v41;
    v43.super_class = v18;
    v41 = objc_msgSendSuper2(&v43, sel_initWithUUID_entityName_, v20, v22);

    v21(v13, v7);
    v42 = MEMORY[0x277D84F90];
    if (a1 >> 62)
    {
LABEL_20:
      v23 = sub_2303106D8();
    }

    else
    {
      v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = 0;
    while (v23 != v24)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x231912650](v24, a1);
      }

      else
      {
        if (v24 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v25 = *(a1 + 8 * v24 + 32);
      }

      v26 = v25;
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v28 = [v25 objectID];

      ++v24;
      if (v28)
      {
        MEMORY[0x231911A30]();
        if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23030FD18();
        }

        sub_23030FD68();
        v24 = v27;
      }
    }

    v29 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v30 = v41;
    v31 = sub_23030F8B8();
    sub_23004CBA4(0, &qword_280C9C478);
    v32 = sub_23030FCC8();

    sub_23008D558(MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16590);
    sub_23004CD24();
    v33 = sub_23030F638();

    v34 = v38;
    sub_23030EB48();
    v35 = sub_23030EAA8();
    (*(v39 + 8))(v34, v40);
    v36 = [v29 initWithObjectID:v30 listType:5 listID:v31 topLevelElementIDs:v32 secondaryLevelElementIDsByTopLevelElementID:v33 uncommitedElementsAccountID:0 modifiedDate:v35];

    return v36;
  }

  return result;
}

uint64_t sub_2302DD9A4()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB19910);
  v1 = __swift_project_value_buffer(v0, qword_27DB19910);
  if (qword_280C9C490 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB17C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void REMManualOrdering.Predefined.init(smartListType:)(void *a1@<X0>, char *a2@<X8>)
{
  v4 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v6 = v5;
  if (v4 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v6 == v7)
  {

    goto LABEL_8;
  }

  v9 = sub_230311048();

  if (v9)
  {

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v11 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v13 = v12;
  if (v11 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v13 == v14)
  {

    v10 = 1;
  }

  else
  {
    v16 = sub_230311048();

    if (v16)
    {

      v10 = 1;
    }

    else
    {
      v17 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v19 = v18;
      if (v17 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v19 == v20)
      {

        v10 = 2;
      }

      else
      {
        v21 = sub_230311048();

        if (v21)
        {

          v10 = 2;
        }

        else
        {
          v22 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
          v24 = v23;
          if (v22 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v24 == v25)
          {

            v10 = 3;
          }

          else
          {
            v26 = sub_230311048();

            if (v26)
            {

              v10 = 3;
            }

            else
            {
              v27 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
              v29 = v28;
              if (v27 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v29 == v30)
              {

                v10 = 4;
              }

              else
              {
                v31 = sub_230311048();

                if (v31)
                {

                  v10 = 4;
                }

                else
                {
                  v32 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
                  v34 = v33;
                  if (v32 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v34 == v35)
                  {

                    v10 = 5;
                  }

                  else
                  {
                    v36 = sub_230311048();

                    if (v36)
                    {
                      v10 = 5;
                    }

                    else
                    {
                      v10 = 8;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_9:
  *a2 = v10;
}

uint64_t REMManualOrdering.ManualOrderingID.init(objectID:listType:listID:)@<X0>(uint64_t result@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t REMManualOrdering.ManualOrderingID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19928);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302DF13C();
  sub_230311428();
  if (!v2)
  {
    type metadata accessor for REMObjectID_Codable();
    v23 = 0;
    sub_2300EBFDC(&qword_280C9C5D0);
    sub_230310CE8();
    v9 = v24;
    v22 = 1;
    v10 = sub_230310CF8();
    v12 = sub_2300DBA3C(v10);
    if ((v12 & 0x10000) != 0)
    {
      v16 = objc_opt_self();
      v17 = v9;
      v18 = sub_23030F8B8();
      [v16 unexpectedNilPropertyWithObjectID:v17 property:v18];

      swift_willThrow();
      (*(v6 + 8))(v8, v5);
    }

    else
    {
      v20 = v12;
      v21 = 2;
      v13 = sub_230310C98();
      v15 = v14;
      (*(v6 + 8))(v8, v5);
      *a2 = v9;
      *(a2 + 8) = v20;
      *(a2 + 16) = v13;
      *(a2 + 24) = v15;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t REMManualOrdering.ManualOrderingID.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19938);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - v6;
  v8 = *v1;
  v13 = *(v1 + 8);
  v9 = *(v1 + 16);
  v12[1] = *(v1 + 24);
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302DF13C();
  v10 = v8;
  sub_230311448();
  v17 = v10;
  v16 = 0;
  type metadata accessor for REMObjectID_Codable();
  sub_2300EBFDC(qword_280C9BFD8);
  sub_230310DF8();

  if (!v2)
  {
    v15 = 1;
    sub_230310E08();
    v14 = 2;
    sub_230310DA8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2302DE300()
{
  v1 = 0x657079547473696CLL;
  if (*v0 != 1)
  {
    v1 = 0x44497473696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x44497463656A626FLL;
  }
}

uint64_t sub_2302DE358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2302DF53C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2302DE380(uint64_t a1)
{
  v2 = sub_2302DF13C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302DE3BC(uint64_t a1)
{
  v2 = sub_2302DF13C();

  return MEMORY[0x2821FE720](a1, v2);
}

void REMManualOrdering.elementType.getter(_BYTE *a1@<X8>)
{
  v3 = [v1 listType] - 1;
  if (v3 >= 6)
  {
    if (qword_27DB13D70 != -1)
    {
      swift_once();
    }

    v5 = sub_23030EF48();
    __swift_project_value_buffer(v5, qword_27DB19910);
    v6 = v1;
    v7 = sub_23030EF38();
    v8 = sub_230310288();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 33554688;
      *(v9 + 4) = [v6 listType];

      _os_log_impl(&dword_230044000, v7, v8, "Attempted to compute '\\REMManualOrdering.elementType' for unknown 'listType'. {listType.rawValue: %hd}", v9, 6u);
      MEMORY[0x231914180](v9, -1, -1);
    }

    else
    {

      v7 = v6;
    }

    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = 0x30201000000uLL >> (8 * v3);
  }

  *a1 = v4;
}

uint64_t REMManualOrdering.PinnedList.elementObjectID.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    v2 = v1;
  }

  else
  {
    REMSmartList.NonCustom.init(smartListType:)(v1, &v4);
    if (v4 == 8)
    {
      return 0;
    }

    else
    {
      return REMSmartList.NonCustom.remObjectID.getter();
    }
  }

  return v1;
}

uint64_t REMManualOrdering.PinnedList.hash(into:)()
{
  if (*(v0 + 8))
  {
    MEMORY[0x2319130E0](1);
    return sub_230310458();
  }

  else
  {
    MEMORY[0x2319130E0](0);
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    sub_23030F9C8();
  }
}

uint64_t REMManualOrdering.PinnedList.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_230311358();
  if (v1)
  {
    MEMORY[0x2319130E0](1);
    sub_230310458();
  }

  else
  {
    MEMORY[0x2319130E0](0);
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    sub_23030F9C8();
  }

  return sub_2303113A8();
}

uint64_t sub_2302DE718()
{
  v1 = *(v0 + 8);
  sub_230311358();
  if (v1)
  {
    MEMORY[0x2319130E0](1);
    sub_230310458();
  }

  else
  {
    MEMORY[0x2319130E0](0);
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    sub_23030F9C8();
  }

  return sub_2303113A8();
}

uint64_t sub_2302DE7AC()
{
  if (*(v0 + 8))
  {
    MEMORY[0x2319130E0](1);
    return sub_230310458();
  }

  else
  {
    MEMORY[0x2319130E0](0);
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    sub_23030F9C8();
  }
}

uint64_t sub_2302DE848()
{
  v1 = *(v0 + 8);
  sub_230311358();
  if (v1)
  {
    MEMORY[0x2319130E0](1);
    sub_230310458();
  }

  else
  {
    MEMORY[0x2319130E0](0);
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    sub_23030F9C8();
  }

  return sub_2303113A8();
}

void REMManualOrdering.init(pinnedLists:)(uint64_t a1)
{
  v2 = sub_23030EB58();
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x28223BE20](v2);
  v47 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - v8;
  v10 = sub_23030EBB8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v45 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - v18;
  sub_23030EB68();
  v61 = v11[6];
  v62 = v11 + 6;
  if (v61(v9, 1, v10) == 1)
  {
LABEL_22:
    __break(1u);
  }

  else
  {
    v59 = v11[4];
    v60 = v11 + 4;
    v59(v19, v9, v10);
    v20 = objc_opt_self();
    v63 = v19;
    v21 = sub_23030EB88();
    v22 = [v20 objectIDWithUUID_];

    v23 = type metadata accessor for REMObjectID_Codable();
    v58 = objc_allocWithZone(v23);
    v24 = [v22 uuid];
    sub_23030EBA8();

    v25 = sub_23030EB88();
    v26 = v11[1];
    v26(v17, v10);
    v27 = [v22 entityName];
    v64 = v11 + 1;
    if (!v27)
    {
      _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v27 = sub_23030F8B8();
    }

    v67.receiver = v58;
    v67.super_class = v23;
    v46 = objc_msgSendSuper2(&v67, sel_initWithUUID_entityName_, v25, v27);

    v26(v63, v10);
    v66 = MEMORY[0x277D84F90];
    v28 = *(a1 + 16);
    if (v28)
    {
      v50 = v26;
      v29 = 0;
      v63 = v28 - 1;
      v57 = "member description ";
      v58 = "ED-AAD8-FA78346D60D7";
      v55 = "3F-8795-47C038796559";
      v56 = "55-92B3-821F8DCF93AA";
      v53 = "B4-AAC2-573817F6DE04";
      v54 = "25-96B8-931A41AC50CC";
      v51 = "72-89F6-812F04330B7E";
      v52 = "00-AD02-181D65D8C331";
      do
      {
        v30 = (a1 + 40 + 16 * v29);
        v31 = v29;
        while (1)
        {
          if (v31 >= *(a1 + 16))
          {
            __break(1u);
            goto LABEL_21;
          }

          v32 = *(v30 - 1);
          if (*v30)
          {
            break;
          }

          v33 = v32;
          REMSmartList.NonCustom.init(smartListType:)(v33, &v65);
          if (v65 != 8)
          {
            sub_23030EB68();

            if (v61(v7, 1, v10) != 1)
            {
              v59(v14, v7, v10);
              v34 = objc_opt_self();
              v35 = sub_23030EB88();
              v36 = [v34 objectIDWithUUID_];

              v37 = v50(v14, v10);
              goto LABEL_14;
            }

LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

          ++v31;

          v30 += 16;
          if (v28 == v31)
          {
            goto LABEL_19;
          }
        }

        v37 = v32;
LABEL_14:
        MEMORY[0x231911A30](v37);
        if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23030FD18();
        }

        v29 = v31 + 1;
        sub_23030FD68();
      }

      while (v63 != v31);
    }

LABEL_19:

    v38 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v39 = v46;
    v40 = sub_23030F8B8();
    sub_23004CBA4(0, &qword_280C9C478);
    v41 = sub_23030FCC8();

    sub_23008D558(MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16590);
    sub_23004CD24();
    v42 = sub_23030F638();

    v43 = v47;
    sub_23030EB48();
    v44 = sub_23030EAA8();
    (*(v48 + 8))(v43, v49);
    [v38 initWithObjectID:v39 listType:4 listID:v40 topLevelElementIDs:v41 secondaryLevelElementIDsByTopLevelElementID:v42 uncommitedElementsAccountID:0 modifiedDate:v44];
  }
}

uint64_t _sSo17REMManualOrderingC19ReminderKitInternalE10PinnedListO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      sub_23004CBA4(0, &qword_280C9B980);
      v4 = v2;
      v5 = v3;
      v6 = sub_230310448();

      return v6 & 1;
    }

    return 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  v8 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v10 = v9;
  if (v8 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v10 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_230311048();
  }

  v14 = v3;
  v15 = v2;

  return v13 & 1;
}

unint64_t sub_2302DF13C()
{
  result = qword_27DB19930;
  if (!qword_27DB19930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19930);
  }

  return result;
}

unint64_t sub_2302DF194()
{
  result = qword_27DB19940;
  if (!qword_27DB19940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19940);
  }

  return result;
}

unint64_t sub_2302DF1EC()
{
  result = qword_27DB19948;
  if (!qword_27DB19948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB19950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19948);
  }

  return result;
}

unint64_t sub_2302DF254()
{
  result = qword_27DB19958;
  if (!qword_27DB19958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19958);
  }

  return result;
}

unint64_t sub_2302DF2AC()
{
  result = qword_27DB19960;
  if (!qword_27DB19960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19960);
  }

  return result;
}

uint64_t _s16ManualOrderingIDVwcp(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = v3;

  return a1;
}

uint64_t _s16ManualOrderingIDVwca(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t _s16ManualOrderingIDVwta(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  return a1;
}

unint64_t sub_2302DF438()
{
  result = qword_27DB19968;
  if (!qword_27DB19968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19968);
  }

  return result;
}

unint64_t sub_2302DF490()
{
  result = qword_27DB19970;
  if (!qword_27DB19970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19970);
  }

  return result;
}

unint64_t sub_2302DF4E8()
{
  result = qword_27DB19978;
  if (!qword_27DB19978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19978);
  }

  return result;
}

uint64_t sub_2302DF53C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44497463656A626FLL && a2 == 0xE800000000000000;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657079547473696CLL && a2 == 0xE800000000000000 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44497473696CLL && a2 == 0xE600000000000000)
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

uint64_t sub_2302DF65C()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB19980);
  v1 = __swift_project_value_buffer(v0, qword_27DB19980);
  if (qword_27DB13B90 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27DB4F5C0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t REMAlarmKitManager.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_23030F428();
  *(v0 + 16) = sub_23030F418();
  return v0;
}

uint64_t REMAlarmKitManager.init()()
{
  sub_23030F428();
  *(v0 + 16) = sub_23030F418();
  return v0;
}

void REMAlarmKitManager.authorizationState.getter(char *a1@<X8>)
{
  v2 = sub_23030F3D8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v40 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v35 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v35 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  if (qword_27DB13D78 != -1)
  {
    swift_once();
  }

  v14 = sub_23030EF48();
  v39 = __swift_project_value_buffer(v14, qword_27DB19980);
  v15 = sub_23030EF38();
  v16 = sub_2303102A8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = v13;
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_230044000, v15, v16, "REMAlarmKitManager: Authorization Check START", v18, 2u);
    v19 = v18;
    v13 = v17;
    MEMORY[0x231914180](v19, -1, -1);
  }

  sub_23030F3E8();
  v41 = *(v3 + 16);
  v41(v11, v13, v2);
  v20 = sub_23030EF38();
  v21 = sub_2303102A8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v37 = v13;
    v24 = v23;
    v42 = v23;
    *v22 = 136446210;
    v41(v8, v11, v2);
    v25 = sub_23030F948();
    v38 = a1;
    v27 = v26;
    v36 = *(v3 + 8);
    v36(v11, v2);
    v28 = sub_23004E30C(v25, v27, &v42);
    a1 = v38;

    *(v22 + 4) = v28;
    _os_log_impl(&dword_230044000, v20, v21, "REMAlarmKitManager: Authorization Check END {result: %{public}s}", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v29 = v24;
    v13 = v37;
    MEMORY[0x231914180](v29, -1, -1);
    MEMORY[0x231914180](v22, -1, -1);

    v30 = v36;
  }

  else
  {

    v30 = *(v3 + 8);
    v30(v11, v2);
  }

  v31 = v40;
  v41(v40, v13, v2);
  v32 = (*(v3 + 88))(v31, v2);
  if (v32 == *MEMORY[0x277CB9AB8])
  {
    v33 = 1;
LABEL_14:
    v30(v13, v2);
    *a1 = v33;
    return;
  }

  if (v32 == *MEMORY[0x277CB9AC0])
  {
    v33 = 2;
    goto LABEL_14;
  }

  if (v32 == *MEMORY[0x277CB9AB0])
  {
    v33 = 0;
    goto LABEL_14;
  }

  v34 = MEMORY[0x277D84F90];
  sub_23008C5BC(MEMORY[0x277D84F90]);
  sub_23008C5BC(v34);
  sub_230166680("REMAlarmKitManager: Unknown alarm manager authorization status", 62, 2);
  __break(1u);
}

uint64_t sub_2302DFBEC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 24) = a3;
  *(v5 + 32) = v4;
  *(v5 + 232) = a4;
  *(v5 + 16) = a1;
  v7 = sub_23030EBB8();
  *(v5 + 40) = v7;
  *(v5 + 48) = *(v7 - 8);
  *(v5 + 56) = swift_task_alloc();
  v8 = sub_23030F308();
  *(v5 + 64) = v8;
  *(v5 + 72) = *(v8 - 8);
  *(v5 + 80) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB199A0);
  *(v5 + 88) = v9;
  *(v5 + 96) = *(v9 - 8);
  *(v5 + 104) = swift_task_alloc();
  v10 = sub_23030EB58();
  *(v5 + 112) = v10;
  *(v5 + 120) = *(v10 - 8);
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = *a2;
  *(v5 + 176) = *(a2 + 16);

  return MEMORY[0x2822009F8](sub_2302DFE0C, 0, 0);
}

uint64_t sub_2302DFE0C()
{
  v84 = v0;
  if (qword_27DB13D78 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 24);
  v6 = sub_23030EF48();
  *(v0 + 184) = __swift_project_value_buffer(v6, qword_27DB19980);
  v7 = *(v4 + 16);
  *(v0 + 192) = v7;
  *(v0 + 200) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v79 = v7;
  v7(v2, v5, v3);
  v8 = v1;

  v9 = sub_23030EF38();
  v10 = sub_2303102A8();

  if (os_log_type_enabled(v9, v10))
  {
    v78 = v10;
    v12 = *(v0 + 152);
    v11 = *(v0 + 160);
    log = v9;
    v13 = *(v0 + 112);
    v14 = *(v0 + 120);
    v77 = *(v0 + 232);
    v15 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v83[0] = v76;
    *v15 = 138543874;
    *(v15 + 4) = v11;
    *v75 = v11;
    *(v15 + 12) = 2082;
    sub_2302E39E8(&qword_27DB17350, MEMORY[0x277CC9578]);
    v16 = v11;
    v17 = sub_230310E58();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v12, v13);
    v21 = sub_23004E30C(v17, v19, v83);

    *(v15 + 14) = v21;
    *(v15 + 22) = 1024;
    *(v15 + 24) = v77;
    _os_log_impl(&dword_230044000, log, v78, "REMAlarmKitManager: Attempting to schedule AlarmKit alarm {reminderID: %{public}@, fireDate: %{public}s, shouldRequestAuthorizationForRemindtool: %{BOOL}d}", v15, 0x1Cu);
    sub_2302E3474(v75);
    MEMORY[0x231914180](v75, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v76);
    MEMORY[0x231914180](v76, -1, -1);
    MEMORY[0x231914180](v15, -1, -1);
  }

  else
  {
    v22 = *(v0 + 152);
    v23 = *(v0 + 112);
    v24 = *(v0 + 120);

    v20 = *(v24 + 8);
    v20(v22, v23);
  }

  *(v0 + 208) = v20;
  v25 = *(v0 + 232);
  REMAlarmKitManager.authorizationState.getter(v83);
  v26 = *(v0 + 176);
  if (!LOBYTE(v83[0]) || v25)
  {
    v42 = *(v0 + 168);
    v44 = *(v0 + 144);
    v45 = *(v0 + 104);
    v46 = *(v0 + 112);
    v47 = *(v0 + 24);
    v83[0] = *(v0 + 160);
    v43 = v83[0];
    v83[1] = v42;
    v83[2] = v26;
    sub_2302E0B74(v83, v47, v45);
    v79(v44, v47, v46);
    v48 = v43;

    v49 = sub_23030EF38();
    v50 = sub_2303102A8();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = *(v0 + 160);
      v52 = *(v0 + 144);
      v81 = v20;
      v53 = *(v0 + 112);
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v83[0] = v56;
      *v54 = 138543618;
      *(v54 + 4) = v51;
      *v55 = v51;
      *(v54 + 12) = 2082;
      sub_2302E39E8(&qword_27DB17350, MEMORY[0x277CC9578]);
      v57 = v51;
      v58 = sub_230310E58();
      v60 = v59;
      v81(v52, v53);
      v61 = sub_23004E30C(v58, v60, v83);

      *(v54 + 14) = v61;
      _os_log_impl(&dword_230044000, v49, v50, "REMAlarmKitManager: Alarm Schedule START {reminderID: %{public}@, fireDate: %{public}s}", v54, 0x16u);
      sub_2302E3474(v55);
      MEMORY[0x231914180](v55, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v56);
      MEMORY[0x231914180](v56, -1, -1);
      MEMORY[0x231914180](v54, -1, -1);
    }

    else
    {
      v62 = *(v0 + 144);
      v63 = *(v0 + 112);

      v20(v62, v63);
    }

    v64 = [*(v0 + 160) uuid];
    sub_23030EBA8();

    v82 = (*MEMORY[0x277CB9AE0] + MEMORY[0x277CB9AE0]);
    v65 = swift_task_alloc();
    *(v0 + 216) = v65;
    v66 = sub_2302E3A30();
    *v65 = v0;
    v65[1] = sub_2302E0640;
    v67 = *(v0 + 104);
    v68 = *(v0 + 80);
    v69 = *(v0 + 56);

    return v82(v68, v69, v67, &type metadata for REMUrgentAlarmMetadata, v66);
  }

  else
  {
    v27 = *(v0 + 160);
    v79(*(v0 + 128), *(v0 + 24), *(v0 + 112));
    v28 = v27;

    v29 = sub_23030EF38();
    v30 = sub_2303102A8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 160);
      v32 = *(v0 + 128);
      v80 = v20;
      v33 = *(v0 + 112);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v83[0] = v36;
      *v34 = 138543618;
      *(v34 + 4) = v31;
      *v35 = v31;
      *(v34 + 12) = 2082;
      sub_2302E39E8(&qword_27DB17350, MEMORY[0x277CC9578]);
      v37 = v31;
      v38 = sub_230310E58();
      v40 = v39;
      v80(v32, v33);
      v41 = sub_23004E30C(v38, v40, v83);

      *(v34 + 14) = v41;
      _os_log_impl(&dword_230044000, v29, v30, "REMAlarmKitManager: AlarmKit manager is not authorized. Skipping alarm scheduling {reminderID: %{public}@, fireDate: %{public}s}", v34, 0x16u);
      sub_2302E3474(v35);
      MEMORY[0x231914180](v35, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x231914180](v36, -1, -1);
      MEMORY[0x231914180](v34, -1, -1);
    }

    else
    {
      v71 = *(v0 + 128);
      v72 = *(v0 + 112);

      v20(v71, v72);
    }

    sub_2302E3994();
    swift_allocError();
    swift_willThrow();

    v73 = *(v0 + 8);

    return v73();
  }
}

uint64_t sub_2302E0640()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 224) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_2302E0AA0;
  }

  else
  {
    v5 = sub_2302E07B0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2302E07B0()
{
  v32 = v0;
  v1 = *(v0 + 160);
  (*(v0 + 192))(*(v0 + 136), *(v0 + 24), *(v0 + 112));
  v2 = v1;

  v3 = sub_23030EF38();
  v4 = sub_2303102A8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 208);
  if (v5)
  {
    v7 = *(v0 + 160);
    v8 = *(v0 + 136);
    v9 = *(v0 + 112);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v6;
    v12 = swift_slowAlloc();
    v31 = v12;
    *v10 = 138543618;
    *(v10 + 4) = v7;
    *v11 = v7;
    *(v10 + 12) = 2082;
    sub_2302E39E8(&qword_27DB17350, MEMORY[0x277CC9578]);
    v13 = v7;
    v14 = sub_230310E58();
    v16 = v15;
    v30(v8, v9);
    v17 = sub_23004E30C(v14, v16, &v31);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_230044000, v3, v4, "REMAlarmKitManager: Alarm Schedule END {reminderID: %{public}@, fireDate: %{public}s}", v10, 0x16u);
    sub_2302E3474(v11);
    MEMORY[0x231914180](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x231914180](v12, -1, -1);
    MEMORY[0x231914180](v10, -1, -1);
  }

  else
  {
    v18 = *(v0 + 136);
    v19 = *(v0 + 112);

    v6(v18, v19);
  }

  v21 = *(v0 + 96);
  v20 = *(v0 + 104);
  v23 = *(v0 + 80);
  v22 = *(v0 + 88);
  v25 = *(v0 + 64);
  v24 = *(v0 + 72);
  v26 = *(v0 + 16);
  v26[3] = v25;
  v26[4] = &protocol witness table for Alarm;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
  (*(v24 + 32))(boxed_opaque_existential_0, v23, v25);
  (*(v21 + 8))(v20, v22);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_2302E0AA0()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2302E0B74@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v105 = a2;
  v112 = a3;
  v4 = sub_23030EE88();
  MEMORY[0x28223BE20](v4 - 8);
  v111 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB199B8);
  MEMORY[0x28223BE20](v6 - 8);
  v110 = &v85 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB199C0);
  MEMORY[0x28223BE20](v8 - 8);
  v108 = &v85 - v9;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB199C8);
  v107 = *(v109 - 8);
  v10 = MEMORY[0x28223BE20](v109);
  v106 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v124 = &v85 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB199D0);
  MEMORY[0x28223BE20](v13 - 8);
  v102 = &v85 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB199D8);
  MEMORY[0x28223BE20](v15 - 8);
  v100 = &v85 - v16;
  v123 = sub_23030F398();
  v104 = *(v123 - 8);
  v17 = MEMORY[0x28223BE20](v123);
  v101 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v122 = &v85 - v19;
  v121 = sub_23030F388();
  v103 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v120 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB199E0);
  MEMORY[0x28223BE20](v21 - 8);
  v95 = &v85 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB199E8);
  MEMORY[0x28223BE20](v23 - 8);
  v96 = &v85 - v24;
  v116 = sub_23030E818();
  v93 = *(v116 - 1);
  MEMORY[0x28223BE20](v116);
  v87 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_23030ED38();
  MEMORY[0x28223BE20](v26 - 8);
  v92 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_23030F8A8();
  MEMORY[0x28223BE20](v28 - 8);
  v89 = &v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_23030F3B8();
  v91 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v114 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_23030E828();
  v32 = MEMORY[0x28223BE20](v31 - 8);
  MEMORY[0x28223BE20](v32);
  v113 = &v85 - v33;
  v34 = sub_23030F348();
  v118 = *(v34 - 8);
  v119 = v34;
  v35 = MEMORY[0x28223BE20](v34);
  v90 = &v85 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v117 = &v85 - v37;
  v38 = sub_23030EBB8();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = &v85 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *a1;
  v43 = type metadata accessor for REMObjectID_Codable();
  v44 = objc_allocWithZone(v43);
  v45 = v42;
  v46 = [v45 uuid];
  sub_23030EBA8();

  v47 = sub_23030EB88();
  v48 = *(v39 + 8);
  v97 = v41;
  v99 = v38;
  v98 = v39 + 8;
  v94 = v48;
  v48(v41, v38);
  v49 = v45;
  v50 = [v45 entityName];
  if (!v50)
  {
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v50 = sub_23030F8B8();
  }

  v131.receiver = v44;
  v131.super_class = v43;
  v88 = objc_msgSendSuper2(&v131, sel_initWithUUID_entityName_, v47, v50);

  static REMUrgentAlarmLocalizedStringResources.Alert.title(for:)();
  sub_23030F848();
  sub_23030EC88();
  v52 = v93[13];
  v53 = v87;
  v86 = *MEMORY[0x277CC9110];
  v51 = v86;
  v54 = v116;
  v52(v87, v86, v116);
  v85 = v52;
  sub_23030E848();
  sub_23030F2B8();
  sub_23030F3A8();
  sub_23030F848();
  sub_23030EC88();
  v52(v53, v51, v54);
  sub_23030E848();
  sub_23030F2B8();
  v93 = v49;
  v55 = v96;
  sub_23030F3A8();
  v91 = *(v91 + 56);
  (v91)(v55, 0, 1, v115);
  v56 = *MEMORY[0x277CB99B8];
  v57 = sub_23030F328();
  v58 = *(v57 - 8);
  v59 = v95;
  (*(v58 + 104))(v95, v56, v57);
  (*(v58 + 56))(v59, 0, 1, v57);
  v60 = v117;
  sub_23030F338();
  sub_23030F848();
  sub_23030EC88();
  v85(v53, v86, v116);
  sub_23030E848();
  (v91)(v55, 1, 1, v115);
  v61 = v120;
  sub_23030F378();
  (*(v118 + 16))(v90, v60, v119);
  v62 = v103;
  v63 = v100;
  v64 = v121;
  (*(v103 + 16))(v100, v61, v121);
  (*(v62 + 56))(v63, 0, 1, v64);
  v65 = sub_23030F368();
  (*(*(v65 - 8) + 56))(v102, 1, 1, v65);
  v66 = v122;
  sub_23030F358();
  v67 = v104;
  (*(v104 + 16))(v101, v66, v123);
  v128 = v88;
  v116 = v88;
  sub_23030F2A8();
  v115 = sub_2302E3A30();
  v68 = v124;
  sub_23030F318();
  v69 = v108;
  sub_23030F2C8();
  v70 = sub_23030F2D8();
  (*(*(v70 - 8) + 56))(v69, 0, 1, v70);
  v71 = sub_23030EB58();
  v72 = v110;
  (*(*(v71 - 8) + 16))(v110, v105, v71);
  v73 = *MEMORY[0x277CB9948];
  v74 = sub_23030F2F8();
  v75 = *(v74 - 8);
  (*(v75 + 104))(v72, v73, v74);
  (*(v75 + 56))(v72, 0, 1, v74);
  v76 = v107;
  v77 = v109;
  (*(v107 + 16))(v106, v68, v109);
  v78 = [v93 uuid];
  v79 = v97;
  sub_23030EBA8();

  v80 = sub_23030EB78();
  v82 = v81;
  v94(v79, v99);
  v83 = sub_2302160A4(v80, v82);
  v129 = &type metadata for UrgentAlarmStopIntent;
  v130 = sub_2302E3A84();
  v127 = 0;
  v128 = v83;
  v125 = 0u;
  v126 = 0u;
  sub_23030EE78();
  sub_23030F3C8();

  (*(v76 + 8))(v124, v77);
  (*(v67 + 8))(v122, v123);
  (*(v62 + 8))(v120, v121);
  return (*(v118 + 8))(v117, v119);
}

uint64_t REMAlarmKitManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t REMAlarmKitManager.scheduleAlarm(for:fireDate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v6;
  v7 = swift_task_alloc();
  *(v3 + 40) = v7;
  *v7 = v3;
  v7[1] = sub_230065728;

  return sub_2302DFBEC(a1, v3 + 16, a3, 0);
}

void REMAlarmKitManager.cancelAlarm(uuid:)(uint64_t a1)
{
  v2 = sub_23030EBB8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - v7;
  if (qword_27DB13D78 != -1)
  {
    swift_once();
  }

  v9 = sub_23030EF48();
  v10 = __swift_project_value_buffer(v9, qword_27DB19980);
  v39 = *(v3 + 16);
  v39(v8, a1, v2);
  v40 = v10;
  v11 = sub_23030EF38();
  v12 = sub_2303102A8();
  v13 = os_log_type_enabled(v11, v12);
  v41 = v3;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v38 = v6;
    v15 = v14;
    v16 = swift_slowAlloc();
    v43 = v2;
    v37 = v16;
    v44 = v16;
    *v15 = 136446210;
    sub_2302E39E8(&qword_27DB19998, MEMORY[0x277CC95F0]);
    v17 = sub_230310E58();
    v18 = a1;
    v20 = v19;
    v21 = *(v3 + 8);
    v21(v8, v43);
    v22 = sub_23004E30C(v17, v20, &v44);
    a1 = v18;

    *(v15 + 4) = v22;
    _os_log_impl(&dword_230044000, v11, v12, "REMAlarmKitManager: Alarm Cancel START {alarmUUID: %{public}s}", v15, 0xCu);
    v23 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    v24 = v23;
    v2 = v43;
    MEMORY[0x231914180](v24, -1, -1);
    v25 = v15;
    v6 = v38;
    MEMORY[0x231914180](v25, -1, -1);
  }

  else
  {

    v21 = *(v3 + 8);
    v21(v8, v2);
  }

  v26 = v42;
  sub_23030F408();
  if (!v26)
  {
    v39(v6, a1, v2);
    v27 = sub_23030EF38();
    v28 = sub_2303102A8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = v21;
      v31 = swift_slowAlloc();
      v44 = v31;
      *v29 = 136446210;
      sub_2302E39E8(&qword_27DB19998, MEMORY[0x277CC95F0]);
      v32 = sub_230310E58();
      v33 = v6;
      v35 = v34;
      v30(v33, v2);
      v36 = sub_23004E30C(v32, v35, &v44);

      *(v29 + 4) = v36;
      _os_log_impl(&dword_230044000, v27, v28, "REMAlarmKitManager: Alarm Cancel END {alarmUUID: %{public}s}", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x231914180](v31, -1, -1);
      MEMORY[0x231914180](v29, -1, -1);
    }

    else
    {

      v21(v6, v2);
    }
  }
}

uint64_t REMAlarmKitManager.fetchAlarms()()
{
  if (qword_27DB13D78 != -1)
  {
    swift_once();
  }

  v1 = sub_23030EF48();
  __swift_project_value_buffer(v1, qword_27DB19980);
  v2 = sub_23030EF38();
  v3 = sub_2303102A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_230044000, v2, v3, "REMAlarmKitManager: Alarms Fetch START", v4, 2u);
    MEMORY[0x231914180](v4, -1, -1);
  }

  result = sub_23030F3F8();
  if (!v0)
  {
    v6 = result;

    v7 = sub_23030EF38();
    v8 = sub_2303102A8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134349056;
      *(v9 + 4) = *(v6 + 16);

      _os_log_impl(&dword_230044000, v7, v8, "REMAlarmKitManager: Alarms Fetch END {count: %{public}ld}", v9, 0xCu);
      MEMORY[0x231914180](v9, -1, -1);
    }

    else
    {
    }

    v10 = sub_2301C0394(v6);

    return v10;
  }

  return result;
}

uint64_t sub_2302E224C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v6;
  v7 = swift_task_alloc();
  *(v3 + 40) = v7;
  *v7 = v3;
  v7[1] = sub_2302E2314;

  return sub_2302DFBEC(a1, v3 + 16, a3, 0);
}

uint64_t sub_2302E2314()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2302E3AF4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t REMAlarmKitManager.requestAuthorization()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_23030F3D8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2302E2550, 0, 0);
}

uint64_t sub_2302E2550()
{
  if (qword_27DB13D78 != -1)
  {
    swift_once();
  }

  v1 = sub_23030EF48();
  v0[10] = __swift_project_value_buffer(v1, qword_27DB19980);
  v2 = sub_23030EF38();
  v3 = sub_2303102A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_230044000, v2, v3, "REMAlarmKitManager: Authorization Request START", v4, 2u);
    MEMORY[0x231914180](v4, -1, -1);
  }

  v8 = (*MEMORY[0x277CB9AD8] + MEMORY[0x277CB9AD8]);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_2302E26C0;
  v6 = v0[9];

  return v8(v6);
}

uint64_t sub_2302E26C0()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_2302E2AE8;
  }

  else
  {
    v2 = sub_2302E27D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_2302E27D4()
{
  v29 = v0;
  v1 = *(v0[5] + 16);
  v1(v0[8], v0[9], v0[4]);
  v2 = sub_23030EF38();
  v3 = sub_2303102A8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[8];
  if (v4)
  {
    v6 = v0[7];
    v8 = v0[4];
    v7 = v0[5];
    v9 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v9 = 136446210;
    v1(v6, v5, v8);
    v10 = sub_23030F948();
    v27 = v1;
    v12 = v11;
    v13 = v8;
    v14 = *(v7 + 8);
    v14(v5, v13);
    v15 = sub_23004E30C(v10, v12, &v28);
    v1 = v27;

    *(v9 + 4) = v15;
    _os_log_impl(&dword_230044000, v2, v3, "REMAlarmKitManager: Authorization Request END {result: %{public}s}", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x231914180](v26, -1, -1);
    MEMORY[0x231914180](v9, -1, -1);
  }

  else
  {
    v16 = v0[4];
    v17 = v0[5];

    v14 = *(v17 + 8);
    v14(v5, v16);
  }

  v19 = v0[5];
  v18 = v0[6];
  v20 = v0[4];
  v1(v18, v0[9], v20);
  v21 = (*(v19 + 88))(v18, v20);
  if (v21 == *MEMORY[0x277CB9AB8])
  {
    v22 = 1;
LABEL_10:
    v23 = v0[2];
    v14(v0[9], v0[4]);
    *v23 = v22;

    v24 = v0[1];

    v24();
    return;
  }

  if (v21 == *MEMORY[0x277CB9AC0])
  {
    v22 = 2;
    goto LABEL_10;
  }

  if (v21 == *MEMORY[0x277CB9AB0])
  {
    v22 = 0;
    goto LABEL_10;
  }

  v25 = MEMORY[0x277D84F90];
  sub_23008C5BC(MEMORY[0x277D84F90]);
  sub_23008C5BC(v25);

  sub_230166680("REMAlarmKitManager: Unknown alarm manager authorization status", 62, 2);
}

uint64_t sub_2302E2AE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2302E2B94(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23009646C;

  return REMAlarmKitManager.requestAuthorization()(a1);
}

uint64_t REMAlarmKitManager.authorizeAndScheduleAlarm(for:fireDate:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  *(v2 + 56) = *a1;
  *(v2 + 72) = v4;
  v5 = swift_task_alloc();
  *(v2 + 80) = v5;
  *v5 = v2;
  v5[1] = sub_2302E2CF0;

  return sub_2302DFBEC(v2 + 16, v2 + 56, a2, 1);
}

uint64_t sub_2302E2CF0()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_2302E2E0C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 16);
    v3 = sub_2300E5640;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> REMAlarmKitManager.cancelAllAlarms()()
{
  v2 = sub_23030EBB8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - v7;
  v9 = REMAlarmKitManager.fetchAlarms()();
  if (!v1)
  {
    v11 = *(v9 + 16);
    if (v11)
    {
      v18 = v6;
      v15[1] = v9;
      v12 = v9 + 32;
      v20 = (v3 + 8);
      *&v10 = 136446466;
      v16 = v10;
      v19 = v0;
      v17 = v8;
      do
      {
        sub_2300819F0(v12, v21);
        v13 = v22;
        v14 = v23;
        __swift_project_boxed_opaque_existential_1(v21, v22);
        (*(v14 + 8))(v13, v14);
        REMAlarmKitManager.cancelAlarm(uuid:)(v8);
        (*v20)(v8, v2);
        __swift_destroy_boxed_opaque_existential_1(v21);
        v12 += 40;
        --v11;
      }

      while (v11);
    }
  }
}

uint64_t sub_2302E3268(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  *(v2 + 56) = *a1;
  *(v2 + 72) = v4;
  v5 = swift_task_alloc();
  *(v2 + 80) = v5;
  *v5 = v2;
  v5[1] = sub_2302E332C;

  return sub_2302DFBEC(v2 + 16, v2 + 56, a2, 1);
}

uint64_t sub_2302E332C()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_2302E3AF0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 16);
    v3 = sub_2302E3AF8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2302E3474(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of REMAlarmKitSchedulingManagerType.scheduleAlarm(for:fireDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2300E7CA0;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of REMAlarmKitAuthorizationManagerType.requestAuthorization()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2300E7CA0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of REMRemindtoolAlarmKitManagerType.authorizeAndScheduleAlarm(for:fireDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_23009646C;

  return v11(a1, a2, a3, a4);
}

unint64_t sub_2302E3994()
{
  result = qword_27DB199A8;
  if (!qword_27DB199A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB199A8);
  }

  return result;
}

uint64_t sub_2302E39E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2302E3A30()
{
  result = qword_27DB199B0;
  if (!qword_27DB199B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB199B0);
  }

  return result;
}

unint64_t sub_2302E3A84()
{
  result = qword_27DB199F0;
  if (!qword_27DB199F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB199F0);
  }

  return result;
}

uint64_t REMRemindersListDataView.CustomSmartListInvocation.Parameters.init(smartList:sortingStyle:showCompleted:countCompleted:remindersPrefetch:fetchSubtasks:shouldFetchManualOrderingID:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char *a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v13 = *a2;
  v14 = *a6;
  *a8 = a1;
  *(a8 + 8) = v13;
  v15 = type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation.Parameters(0);
  sub_2302E3BE0(a3, a8 + v15[6], type metadata accessor for REMRemindersListDataView.ShowCompleted);
  *(a8 + v15[7]) = a4;
  result = sub_2302E3BE0(a5, a8 + v15[8], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  *(a8 + v15[9]) = v14;
  *(a8 + v15[10]) = a7;
  return result;
}

uint64_t sub_2302E3BE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id REMRemindersListDataView.CustomSmartListInvocation.__allocating_init(fetchResultTokenToDiffAgainst:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithFetchResultTokenToDiffAgainst_];

  return v3;
}

_BYTE *REMRemindersListDataView.TemplateSectionsInvocation.Parameters.FetchConfiguration.init(sortingStyle:fetchSubtasks:shouldFetchManualOrderingID:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  v4 = *a2;
  *a4 = *result;
  a4[1] = v4;
  a4[2] = a3;
  return result;
}

uint64_t REMRemindersListDataView.GroupInvocation.Parameters.init(group:sortingStyle:showCompleted:countCompleted:remindersPrefetch:includePinnedSublists:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v12 = *a2;
  *a7 = a1;
  *(a7 + 8) = v12;
  v13 = type metadata accessor for REMRemindersListDataView.GroupInvocation.Parameters(0);
  sub_2302E3BE0(a3, a7 + v13[6], type metadata accessor for REMRemindersListDataView.ShowCompleted);
  *(a7 + v13[7]) = a4;
  result = sub_2302E3BE0(a5, a7 + v13[8], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  *(a7 + v13[9]) = a6;
  return result;
}

uint64_t REMRemindersListDataView.AssignedInvocation.Parameters.init(sortingStyle:showCompleted:countCompleted:remindersPrefetch:currentUserShareParticipantIDsOverride:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  *a6 = *a1;
  v11 = type metadata accessor for REMRemindersListDataView.AssignedInvocation.Parameters(0);
  sub_2302E3BE0(a2, &a6[v11[5]], type metadata accessor for REMRemindersListDataView.ShowCompleted);
  a6[v11[6]] = a3;
  result = sub_2302E3BE0(a4, &a6[v11[7]], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  *&a6[v11[8]] = a5;
  return result;
}

uint64_t REMRemindersListDataView.SearchInvocation.Parameters.init(objectIDs:sortingStyle:showCompleted:countCompleted:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  *a5 = a1;
  *(a5 + 8) = v8;
  v9 = type metadata accessor for REMRemindersListDataView.SearchInvocation.Parameters(0);
  result = sub_2302E3BE0(a3, a5 + *(v9 + 24), type metadata accessor for REMRemindersListDataView.ShowCompleted);
  *(a5 + *(v9 + 28)) = a4;
  return result;
}

uint64_t sub_2302E3F8C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, _BYTE *a6@<X8>)
{
  *a6 = *a1;
  v10 = a5(0);
  sub_2302E3BE0(a2, &a6[v10[5]], type metadata accessor for REMRemindersListDataView.ShowCompleted);
  a6[v10[6]] = a3;
  return sub_2302E3BE0(a4, &a6[v10[7]], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
}

uint64_t REMRemindersListDataView.TaggedInvocation.Parameters.init(hashtagLabelPredicate:sortingStyle:showCompleted:countCompleted:remindersPrefetch:smartListHashtagLabelsFetchStyle:shouldFetchManualOrderingID:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char *a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v13 = *(a1 + 16);
  v14 = *a2;
  v15 = *a6;
  *a8 = *a1;
  *(a8 + 16) = v13;
  *(a8 + 17) = v14;
  v16 = type metadata accessor for REMRemindersListDataView.TaggedInvocation.Parameters(0);
  sub_2302E3BE0(a3, a8 + v16[6], type metadata accessor for REMRemindersListDataView.ShowCompleted);
  *(a8 + v16[7]) = a4;
  result = sub_2302E3BE0(a5, a8 + v16[8], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  *(a8 + v16[9]) = v15;
  *(a8 + v16[10]) = a7;
  return result;
}

uint64_t sub_2302E4168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  v6 = a3(0);
  return sub_2302E3BE0(a2, a4 + *(v6 + 20), type metadata accessor for REMRemindersListDataView.FetchConfiguration);
}

uint64_t sub_2302E4230@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  v7 = a4(0);
  return sub_2302E3BE0(a3, a5 + *(v7 + 24), type metadata accessor for REMRemindersListDataView.FetchConfiguration);
}

uint64_t REMRemindersListDataView.TodayGroupInvocation.Parameters.init(grouped:currentLocation:today:configuration:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  v8 = type metadata accessor for REMRemindersListDataView.TodayGroupInvocation.Parameters(0);
  v9 = *(v8 + 24);
  v10 = sub_23030EB58();
  (*(*(v10 - 8) + 32))(a5 + v9, a3, v10);
  return sub_2302E3BE0(a4, a5 + *(v8 + 28), type metadata accessor for REMRemindersListDataView.FetchConfiguration);
}

uint64_t REMRemindersListDataView.ScheduledByDayInvocation.Parameters.init(includeTodayGroup:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for REMRemindersListDataView.ScheduledByDayInvocation.Parameters(0);
  sub_2302E3BE0(a2, a3 + *(v6 + 20), type metadata accessor for REMRemindersListDataView.FetchConfiguration);
  return sub_2302E3BE0(a1, a3, type metadata accessor for REMRemindersListDataView.ScheduledTodayGroup);
}

uint64_t REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters.init(style:today:configuration:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  *a4 = *a1;
  v7 = type metadata accessor for REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters(0);
  v8 = *(v7 + 20);
  v9 = sub_23030EB58();
  (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  return sub_2302E3BE0(a3, &a4[*(v7 + 24)], type metadata accessor for REMRemindersListDataView.FetchConfiguration);
}

uint64_t REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters.init(today:calendar:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23030EB58();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters(0);
  v10 = *(v9 + 20);
  v11 = sub_23030EE08();
  (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  return sub_2302E3BE0(a3, a4 + *(v9 + 24), type metadata accessor for REMRemindersListDataView.FetchConfiguration);
}

uint64_t REMRemindersListDataView.RecentlyDeletedInvocation.Parameters.init(accountID:deletedAfterDate:countCompleted:remindersPrefetch:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  v9 = type metadata accessor for REMRemindersListDataView.RecentlyDeletedInvocation.Parameters(0);
  sub_2300E0878(a2, a5 + v9[5]);
  *(a5 + v9[7]) = a3;
  return sub_2302E3BE0(a4, a5 + v9[6], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
}

uint64_t REMRemindersListDataView.DefaultInvocationResult.diff.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 44));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
}

__n128 REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 32);
  (*(*(a3 - 8) + 32))(a4, a1);
  v7 = a4 + *(type metadata accessor for REMRemindersListDataView.DefaultInvocationResult() + 44);
  result = *a2;
  v9 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v9;
  *(v7 + 32) = v6;
  return result;
}

uint64_t sub_2302E47F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1717987684 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_230311048();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2302E48C0(char a1)
{
  if (a1)
  {
    return 1717987684;
  }

  else
  {
    return 0x6C65646F6DLL;
  }
}

uint64_t sub_2302E492C()
{
  sub_230311358();
  sub_230125590(v2, *v0);
  return sub_2303113A8();
}

uint64_t sub_2302E498C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2302E47F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2302E49C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23007DFC4();
  *a1 = result;
  return result;
}

uint64_t sub_2302E49F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2302E4A48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t REMRemindersListDataView.DefaultInvocationResult.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v20[1] = *(a2 + 32);
  v20[2] = v4;
  _s23DefaultInvocationResultV10CodingKeysOMa();
  swift_getWitnessTable();
  v5 = sub_230310E18();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = v5;
  v10 = v20[3];
  sub_230311448();
  LOBYTE(v21) = 0;
  v11 = v8;
  v12 = v20[4];
  sub_230310DF8();
  if (v12)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v14 = v6;
  v15 = (v10 + *(a2 + 44));
  v16 = v15[1];
  v17 = v15[2];
  v18 = v15[3];
  v19 = v15[4];
  v21 = *v15;
  v22 = v16;
  v23 = v17;
  v24 = v18;
  v25 = v19;
  v26 = 1;
  sub_2302E4D00();

  sub_230310DF8();

  return (*(v14 + 8))(v11, v9);
}

unint64_t sub_2302E4D00()
{
  result = qword_280C97750;
  if (!qword_280C97750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97750);
  }

  return result;
}

uint64_t REMRemindersListDataView.DefaultInvocationResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v31 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v35 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s23DefaultInvocationResultV10CodingKeysOMa();
  swift_getWitnessTable();
  v34 = sub_230310D18();
  v30 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v9 = &v27 - v8;
  v32 = a3;
  v33 = a2;
  v10 = type metadata accessor for REMRemindersListDataView.DefaultInvocationResult();
  v28 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = v36;
  sub_230311428();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v12;
  v36 = v10;
  v15 = v30;
  v16 = v31;
  LOBYTE(v37) = 0;
  v17 = v34;
  v18 = v33;
  sub_230310CE8();
  v19 = *(v16 + 32);
  v32 = v14;
  v19(v14, v35, v18);
  v40 = 1;
  sub_2302E5100();
  sub_230310CE8();
  (*(v15 + 8))(v9, v17);
  v20 = v39;
  v21 = v36;
  v22 = v32;
  v23 = &v32[*(v36 + 44)];
  v24 = v38;
  *v23 = v37;
  *(v23 + 1) = v24;
  *(v23 + 4) = v20;
  v25 = v28;
  (*(v28 + 16))(v29, v22, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v25 + 8))(v22, v21);
}

unint64_t sub_2302E5100()
{
  result = qword_280C9A2B8;
  if (!qword_280C9A2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A2B8);
  }

  return result;
}

uint64_t sub_2302E5228(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t REMRemindersListDataView.ListInvocation.Parameters.fetchSubtasks.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for REMRemindersListDataView.ListInvocation.Parameters(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t sub_2302E52C4()
{
  v1 = *v0;
  v2 = 1953720684;
  v3 = 0x6D6F43746E756F63;
  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 0x6275536863746566;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x53676E6974726F73;
  if (v1 != 1)
  {
    v5 = 0x706D6F43776F6873;
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

uint64_t sub_2302E53A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230307A64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2302E53D0(uint64_t a1)
{
  v2 = sub_2302E5778();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302E540C(uint64_t a1)
{
  v2 = sub_2302E5778();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.ListInvocation.Parameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB199F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302E5778();
  sub_230311448();
  v12 = *v3;
  HIBYTE(v11) = 0;
  type metadata accessor for REMList_Codable();
  sub_2302E57CC(&qword_280C9C348, type metadata accessor for REMList_Codable);
  sub_230310DF8();
  if (!v2)
  {
    LOBYTE(v12) = *(v3 + 8);
    HIBYTE(v11) = 1;
    sub_230271510();
    sub_230310DF8();
    v9 = type metadata accessor for REMRemindersListDataView.ListInvocation.Parameters(0);
    LOBYTE(v12) = 2;
    type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    sub_2302E57CC(&qword_280C9A708, type metadata accessor for REMRemindersListDataView.ShowCompleted);
    sub_230310DF8();
    LOBYTE(v12) = 3;
    sub_230310DB8();
    LOBYTE(v12) = 4;
    type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    sub_2302E57CC(&qword_280C9A570, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
    sub_230310DF8();
    LOBYTE(v12) = *(v3 + *(v9 + 36));
    HIBYTE(v11) = 5;
    sub_230271564();
    sub_230310DF8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2302E5778()
{
  result = qword_280C9A840;
  if (!qword_280C9A840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A840);
  }

  return result;
}

uint64_t sub_2302E57CC(unint64_t *a1, void (*a2)(uint64_t))
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

void REMRemindersListDataView.ListInvocation.Parameters.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v27 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  MEMORY[0x28223BE20](v27);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19A00);
  v9 = *(v8 - 8);
  v29 = v8;
  v30 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for REMRemindersListDataView.ListInvocation.Parameters(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2302E5778();
  v28 = v11;
  v16 = v31;
  sub_230311428();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    v31 = v7;
    v25 = v4;
    v17 = v14;
    type metadata accessor for REMList_Codable();
    v33 = 0;
    sub_2302E57CC(&qword_280C9C340, type metadata accessor for REMList_Codable);
    v18 = v29;
    v19 = v28;
    sub_230310CE8();
    *v17 = v34;
    v33 = 1;
    sub_2302715B8();
    sub_230310CE8();
    *(v17 + 8) = v34;
    LOBYTE(v34) = 2;
    sub_2302E57CC(&qword_280C97C18, type metadata accessor for REMRemindersListDataView.ShowCompleted);
    v20 = v31;
    sub_230310CE8();
    sub_2302E3BE0(v20, v17 + v12[6], type metadata accessor for REMRemindersListDataView.ShowCompleted);
    LOBYTE(v34) = 3;
    v21 = sub_230310CA8();
    v22 = v30;
    *(v17 + v12[7]) = v21 & 1;
    LOBYTE(v34) = 4;
    sub_2302E57CC(&qword_280C97B20, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
    v23 = v25;
    sub_230310CE8();
    sub_2302E3BE0(v23, v17 + v12[8], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
    v33 = 5;
    sub_23027160C();
    sub_230310CE8();
    (*(v22 + 8))(v19, v18);
    *(v17 + v12[9]) = v34;
    sub_2302E5228(v17, v26, type metadata accessor for REMRemindersListDataView.ListInvocation.Parameters);
    __swift_destroy_boxed_opaque_existential_1(v32);
    sub_2302E5DDC(v17, type metadata accessor for REMRemindersListDataView.ListInvocation.Parameters);
  }
}

uint64_t sub_2302E5DDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t REMRemindersListDataView.ListInvocation.Result.model.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 25);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v2;
  *(a1 + 25) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

uint64_t REMRemindersListDataView.ListInvocation.Result.diff.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
}

__n128 REMRemindersListDataView.ListInvocation.Result.init(model:diff:list:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 8) = *(a1 + 8);
  result = *(a1 + 32);
  v5 = *a2;
  v6 = a2[1];
  *(a4 + 32) = result;
  *(a4 + 48) = v5;
  v7 = *(a1 + 24);
  v8 = *(a1 + 25);
  v9 = *(a2 + 4);
  *a4 = *a1;
  *(a4 + 24) = v7;
  *(a4 + 25) = v8;
  *(a4 + 64) = v6;
  *(a4 + 80) = v9;
  *(a4 + 88) = a3;
  return result;
}

void REMRemindersListDataView.ListInvocation.Result.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19A08);
  v5 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v7 = &v19 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302E6358();
  sub_230311428();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v8 = v5;
    type metadata accessor for REMList_Codable();
    LOBYTE(v30) = 2;
    sub_2302E57CC(&qword_280C9C340, type metadata accessor for REMList_Codable);
    v9 = v58;
    sub_230310CE8();
    v10 = v36;
    LOBYTE(v30) = 0;
    sub_230272074();
    sub_230310CE8();
    v29 = v36;
    v25 = v38;
    v26 = v37;
    v24 = v40;
    v27 = v44;
    v28 = v43;
    v57 = v39;
    v51 = 1;
    sub_2302E5100();
    sub_230310CE8();
    (*(v8 + 8))(v7, v9);
    v22 = *(&v52 + 1);
    v23 = v52;
    v20 = *(&v53 + 1);
    v21 = v53;
    v19 = v54;
    v11 = v29;
    *&v30 = v29;
    *(&v30 + 1) = v26;
    *&v31 = v25;
    LODWORD(v58) = v57;
    BYTE8(v31) = v57;
    v12 = v24;
    BYTE9(v31) = v24;
    HIWORD(v31) = v56;
    *(&v31 + 10) = v55;
    v14 = v27;
    v13 = v28;
    *&v32 = v28;
    *(&v32 + 1) = v27;
    v33 = v52;
    v34 = v53;
    *&v35 = v54;
    *(&v35 + 1) = v10;
    v15 = v31;
    *a2 = v30;
    a2[1] = v15;
    v16 = v32;
    v17 = v33;
    v18 = v35;
    a2[4] = v34;
    a2[5] = v18;
    a2[2] = v16;
    a2[3] = v17;
    sub_2302E63AC(&v30, &v36);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v36 = v11;
    v37 = v26;
    v38 = v25;
    v39 = v58;
    v40 = v12;
    v41 = v55;
    v42 = v56;
    v43 = v13;
    v44 = v14;
    v45 = v23;
    v46 = v22;
    v47 = v21;
    v48 = v20;
    v49 = v19;
    v50 = v10;
    sub_2302E63E4(&v36);
  }
}

unint64_t sub_2302E6358()
{
  result = qword_280C9A788;
  if (!qword_280C9A788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A788);
  }

  return result;
}

uint64_t REMRemindersListDataView.ListInvocation.Result.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19A10);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - v5;
  v7 = *v1;
  v8 = v1[1];
  v24 = v1[2];
  v25 = v8;
  v36 = *(v1 + 24);
  v23 = *(v1 + 25);
  v9 = v1[5];
  v26 = v1[4];
  v27 = v7;
  v28 = v9;
  v10 = v1[6];
  v21 = v1[7];
  v22 = v10;
  v11 = v1[9];
  v18 = v1[8];
  v19 = v11;
  v12 = v1[11];
  v20 = v1[10];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302E6358();
  v13 = v12;
  sub_230311448();
  v30 = v13;
  v37 = 2;
  type metadata accessor for REMList_Codable();
  sub_2302E57CC(&qword_280C9C348, type metadata accessor for REMList_Codable);
  v14 = v29;
  sub_230310DF8();
  if (v14)
  {

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v17 = v21;
    v16 = v22;
    v29 = v4;

    v30 = v27;
    v31 = v25;
    v32 = v24;
    LOBYTE(v33) = v36;
    BYTE1(v33) = v23;
    v34 = v26;
    v35 = v28;
    v37 = 0;
    sub_230272020();

    sub_230310DF8();

    v30 = v16;
    v31 = v17;
    v32 = v18;
    v33 = v19;
    v34 = v20;
    v37 = 1;
    sub_2302E4D00();

    sub_230310DF8();

    return (*(v29 + 8))(v6, v3);
  }
}

uint64_t sub_2302E6760(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1717987684;
  if (v2 != 1)
  {
    v3 = 1953720684;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6C65646F6DLL;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 1717987684;
  if (*a2 != 1)
  {
    v6 = 1953720684;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6C65646F6DLL;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_230311048();
  }

  return v9 & 1;
}

uint64_t sub_2302E6840()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2302E68D0()
{
  sub_23030F9C8();
}

uint64_t sub_2302E694C()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2302E69D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_230307C84();
  *a1 = result;
  return result;
}

void sub_2302E6A08(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 1717987684;
  if (v2 != 1)
  {
    v4 = 1953720684;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6C65646F6DLL;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_2302E6A54()
{
  v1 = 1717987684;
  if (*v0 != 1)
  {
    v1 = 1953720684;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C65646F6DLL;
  }
}

uint64_t sub_2302E6A9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_230307C84();
  *a1 = result;
  return result;
}

uint64_t sub_2302E6AC4(uint64_t a1)
{
  v2 = sub_2302E6358();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302E6B00(uint64_t a1)
{
  v2 = sub_2302E6358();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.CustomSmartListInvocation.Parameters.fetchSubtasks.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation.Parameters(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t sub_2302E6C50()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x53676E6974726F73;
    if (v1 != 1)
    {
      v5 = 0x706D6F43776F6873;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x73694C7472616D73;
    }
  }

  else
  {
    v2 = 0x6275536863746566;
    if (v1 != 5)
    {
      v2 = 0xD00000000000001BLL;
    }

    v3 = 0x6D6F43746E756F63;
    if (v1 != 3)
    {
      v3 = 0xD000000000000011;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2302E6D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230307CD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2302E6D8C(uint64_t a1)
{
  v2 = sub_2302E7160();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302E6DC8(uint64_t a1)
{
  v2 = sub_2302E7160();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.CustomSmartListInvocation.Parameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19A18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302E7160();
  sub_230311448();
  v12 = *v3;
  HIBYTE(v11) = 0;
  type metadata accessor for REMSmartList_Codable();
  sub_2302E57CC(qword_280C9AC10, type metadata accessor for REMSmartList_Codable);
  sub_230310DF8();
  if (!v2)
  {
    LOBYTE(v12) = *(v3 + 8);
    HIBYTE(v11) = 1;
    sub_230271510();
    sub_230310DF8();
    v9 = type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation.Parameters(0);
    LOBYTE(v12) = 2;
    type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    sub_2302E57CC(&qword_280C9A708, type metadata accessor for REMRemindersListDataView.ShowCompleted);
    sub_230310DF8();
    LOBYTE(v12) = 3;
    sub_230310DB8();
    LOBYTE(v12) = 4;
    type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    sub_2302E57CC(&qword_280C9A570, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
    sub_230310DF8();
    LOBYTE(v12) = *(v3 + *(v9 + 36));
    HIBYTE(v11) = 5;
    sub_230271564();
    sub_230310DF8();
    LOBYTE(v12) = 6;
    sub_230310DB8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2302E7160()
{
  result = qword_27DB19A20;
  if (!qword_27DB19A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19A20);
  }

  return result;
}

void REMRemindersListDataView.CustomSmartListInvocation.Parameters.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v24 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  MEMORY[0x28223BE20](v24);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19A28);
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v9 = &v21 - v8;
  v10 = type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation.Parameters(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_2302E7160();
  v26 = v9;
  v14 = v28;
  sub_230311428();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    v28 = v7;
    v22 = v4;
    v15 = v25;
    type metadata accessor for REMSmartList_Codable();
    v30 = 0;
    sub_2302E57CC(&qword_280C9B750, type metadata accessor for REMSmartList_Codable);
    v16 = v27;
    v17 = v26;
    sub_230310CE8();
    v18 = v12;
    *v12 = v31;
    v30 = 1;
    sub_2302715B8();
    sub_230310CE8();
    v12[8] = v31;
    LOBYTE(v31) = 2;
    sub_2302E57CC(&qword_280C97C18, type metadata accessor for REMRemindersListDataView.ShowCompleted);
    v19 = v28;
    sub_230310CE8();
    sub_2302E3BE0(v19, v18 + v10[6], type metadata accessor for REMRemindersListDataView.ShowCompleted);
    LOBYTE(v31) = 3;
    *(v18 + v10[7]) = sub_230310CA8() & 1;
    LOBYTE(v31) = 4;
    sub_2302E57CC(&qword_280C97B20, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
    v20 = v22;
    sub_230310CE8();
    sub_2302E3BE0(v20, v18 + v10[8], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
    v30 = 5;
    sub_23027160C();
    sub_230310CE8();
    *(v18 + v10[9]) = v31;
    LOBYTE(v31) = 6;
    LOBYTE(v20) = sub_230310CA8();
    (*(v15 + 8))(v17, v16);
    *(v18 + v10[10]) = v20 & 1;
    sub_2302E5228(v18, v23, type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation.Parameters);
    __swift_destroy_boxed_opaque_existential_1(v29);
    sub_2302E5DDC(v18, type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation.Parameters);
  }
}

uint64_t REMRemindersListDataView.CustomSmartListInvocation.Result.model.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 25);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v2;
  *(a1 + 25) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

uint64_t REMRemindersListDataView.CustomSmartListInvocation.Result.diff.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
}

void *REMRemindersListDataView.CustomSmartListInvocation.Result.manualOrderingID.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[12];
  v3 = v1[13];
  v4 = v1[14];
  v5 = v1[15];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_2300E0488(v2);
}

__n128 REMRemindersListDataView.CustomSmartListInvocation.Result.init(model:diff:smartList:manualOrderingID:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = *(a2 + 4);
  *a5 = *a1;
  *(a5 + 8) = *(a1 + 8);
  *(a5 + 24) = v5;
  *(a5 + 25) = v6;
  v8 = *a2;
  v9 = a2[1];
  *(a5 + 32) = *(a1 + 32);
  *(a5 + 48) = v8;
  *(a5 + 64) = v9;
  *(a5 + 80) = v7;
  *(a5 + 88) = a3;
  result = *a4;
  v11 = *(a4 + 16);
  *(a5 + 96) = *a4;
  *(a5 + 112) = v11;
  return result;
}

unint64_t sub_2302E78E0()
{
  v1 = 0x6C65646F6DLL;
  v2 = 0x73694C7472616D73;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 1717987684;
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

uint64_t sub_2302E7958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230307F48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2302E7980(uint64_t a1)
{
  v2 = sub_2302E7DE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302E79BC(uint64_t a1)
{
  v2 = sub_2302E7DE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.CustomSmartListInvocation.Result.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19A30);
  v33 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - v4;
  v7 = *v1;
  v6 = *(v1 + 8);
  v30 = *(v1 + 16);
  v31 = v6;
  v40 = *(v1 + 24);
  v29 = *(v1 + 25);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 56);
  v24 = *(v1 + 48);
  v25 = v10;
  v11 = *(v1 + 72);
  v26 = *(v1 + 64);
  v27 = v11;
  v12 = *(v1 + 88);
  v28 = *(v1 + 80);
  v13 = *(v1 + 96);
  v22 = *(v1 + 104);
  v23 = v12;
  v14 = *(v1 + 120);
  v21 = *(v1 + 112);
  v19 = v13;
  v20 = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302E7DE0();

  sub_230311448();
  v34 = v7;
  v35 = v31;
  v36 = v30;
  LOBYTE(v37) = v40;
  BYTE1(v37) = v29;
  v38 = v8;
  v39 = v9;
  v41 = 0;
  sub_230272020();
  v15 = v32;
  sub_230310DF8();
  if (v15)
  {

    return (*(v33 + 8))(v5, v3);
  }

  else
  {
    v17 = v23;

    v34 = v24;
    v35 = v25;
    v36 = v26;
    v37 = v27;
    v38 = v28;
    v41 = 1;
    sub_2302E4D00();

    sub_230310DF8();

    v34 = v17;
    v41 = 2;
    type metadata accessor for REMSmartList_Codable();
    sub_2302E57CC(qword_280C9AC10, type metadata accessor for REMSmartList_Codable);
    sub_230310DF8();
    v18 = v33;
    v34 = v19;
    v35 = v22;
    v36 = v21;
    v37 = v20;
    v41 = 3;
    sub_2300E0488(v19);
    sub_230272280();
    sub_230310D98();
    sub_2300E04C8(v34);
    return (*(v18 + 8))(v5, v3);
  }
}

unint64_t sub_2302E7DE0()
{
  result = qword_27DB19A38;
  if (!qword_27DB19A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19A38);
  }

  return result;
}

void REMRemindersListDataView.CustomSmartListInvocation.Result.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19A40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  v9 = a1[3];
  v75 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2302E7DE0();
  sub_230311428();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v75);
  }

  else
  {
    v10 = v6;
    v44 = a2;
    LOBYTE(v45) = 0;
    sub_230272074();
    v11 = v5;
    sub_230310CE8();
    v12 = v54;
    v13 = v55;
    v14 = BYTE1(v56);
    v42 = v57;
    v43 = v53;
    v41 = v58;
    v74 = v56;
    LOBYTE(v45) = 1;
    sub_2302E5100();
    sub_230310CE8();
    v34 = v13;
    v35 = v12;
    v33 = v14;
    v37 = v54;
    v38 = v53;
    v36 = v55;
    v39 = v57;
    v40 = v56;
    type metadata accessor for REMSmartList_Codable();
    LOBYTE(v45) = 2;
    sub_2302E57CC(&qword_280C9B750, type metadata accessor for REMSmartList_Codable);
    sub_230310CE8();
    v15 = v53;
    v69 = 3;
    sub_2302722D4();
    sub_230310C88();
    (*(v10 + 8))(v8, v11);
    v30 = *(&v70 + 1);
    v31 = v70;
    v28 = *(&v71 + 1);
    v29 = v71;
    *&v45 = v43;
    *(&v45 + 1) = v35;
    *&v46 = v34;
    v32 = v74;
    BYTE8(v46) = v74;
    BYTE9(v46) = v33;
    HIWORD(v46) = v73;
    *(&v46 + 10) = v72;
    v17 = v41;
    v16 = v42;
    *&v47 = v42;
    *(&v47 + 1) = v41;
    v19 = v37;
    v18 = v38;
    *&v48 = v38;
    *(&v48 + 1) = v37;
    v20 = v36;
    *&v49 = v36;
    *(&v49 + 1) = v40;
    *&v50 = v39;
    *(&v50 + 1) = v15;
    v51 = v70;
    v52 = v71;
    v21 = v45;
    v22 = v46;
    v23 = v48;
    v24 = v44;
    v44[2] = v47;
    v24[3] = v23;
    *v24 = v21;
    v24[1] = v22;
    v25 = v49;
    v26 = v50;
    v27 = v52;
    v24[6] = v51;
    v24[7] = v27;
    v24[4] = v25;
    v24[5] = v26;
    sub_2302E82DC(&v45, &v53);
    __swift_destroy_boxed_opaque_existential_1(v75);
    v53 = v43;
    v54 = v35;
    v55 = v34;
    LOBYTE(v56) = v32;
    BYTE1(v56) = v33;
    *(&v56 + 2) = v72;
    HIWORD(v56) = v73;
    v57 = v16;
    v58 = v17;
    v59 = v18;
    v60 = v19;
    v61 = v20;
    v62 = v40;
    v63 = v39;
    v64 = v15;
    v65 = v31;
    v66 = v30;
    v67 = v29;
    v68 = v28;
    sub_2302E8314(&v53);
  }
}

id REMRemindersListDataView.CustomSmartListInvocation.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_2302E8460()
{
  v1 = *v0;
  v2 = 0x70756F7267;
  v3 = 0x6D6F43746E756F63;
  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x53676E6974726F73;
  if (v1 != 1)
  {
    v5 = 0x706D6F43776F6873;
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

uint64_t sub_2302E853C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2303080B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2302E8564(uint64_t a1)
{
  v2 = sub_2302E88F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302E85A0(uint64_t a1)
{
  v2 = sub_2302E88F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.GroupInvocation.Parameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19A48);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302E88F4();
  sub_230311448();
  v11 = *v3;
  v10[7] = 0;
  type metadata accessor for REMList_Codable();
  sub_2302E57CC(&qword_280C9C348, type metadata accessor for REMList_Codable);
  sub_230310DF8();
  if (!v2)
  {
    v10[6] = *(v3 + 8);
    v10[5] = 1;
    sub_230271510();
    sub_230310DF8();
    type metadata accessor for REMRemindersListDataView.GroupInvocation.Parameters(0);
    v10[4] = 2;
    type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    sub_2302E57CC(&qword_280C9A708, type metadata accessor for REMRemindersListDataView.ShowCompleted);
    sub_230310DF8();
    v10[3] = 3;
    sub_230310DB8();
    v10[2] = 4;
    type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    sub_2302E57CC(&qword_280C9A570, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
    sub_230310DF8();
    v10[1] = 5;
    sub_230310DB8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2302E88F4()
{
  result = qword_27DB19A50;
  if (!qword_27DB19A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19A50);
  }

  return result;
}

void REMRemindersListDataView.GroupInvocation.Parameters.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v27 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  MEMORY[0x28223BE20](v27);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19A58);
  v9 = *(v8 - 8);
  v29 = v8;
  v30 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for REMRemindersListDataView.GroupInvocation.Parameters(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2302E88F4();
  v28 = v11;
  v16 = v31;
  sub_230311428();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    v31 = v7;
    v25 = v4;
    v17 = v14;
    type metadata accessor for REMList_Codable();
    v39 = 0;
    sub_2302E57CC(&qword_280C9C340, type metadata accessor for REMList_Codable);
    v18 = v29;
    v19 = v28;
    sub_230310CE8();
    *v17 = v40;
    v37 = 1;
    sub_2302715B8();
    sub_230310CE8();
    *(v17 + 8) = v38;
    v36 = 2;
    sub_2302E57CC(&qword_280C97C18, type metadata accessor for REMRemindersListDataView.ShowCompleted);
    v20 = v31;
    sub_230310CE8();
    sub_2302E3BE0(v20, v17 + v12[6], type metadata accessor for REMRemindersListDataView.ShowCompleted);
    v35 = 3;
    v21 = sub_230310CA8();
    v22 = v30;
    *(v17 + v12[7]) = v21 & 1;
    v34 = 4;
    sub_2302E57CC(&qword_280C97B20, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
    v23 = v25;
    sub_230310CE8();
    sub_2302E3BE0(v23, v17 + v12[8], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
    v33 = 5;
    LOBYTE(v23) = sub_230310CA8();
    (*(v22 + 8))(v19, v18);
    *(v17 + v12[9]) = v23 & 1;
    sub_2302E5228(v17, v26, type metadata accessor for REMRemindersListDataView.GroupInvocation.Parameters);
    __swift_destroy_boxed_opaque_existential_1(v32);
    sub_2302E5DDC(v17, type metadata accessor for REMRemindersListDataView.GroupInvocation.Parameters);
  }
}

uint64_t REMRemindersListDataView.GroupInvocation.Result.model.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = *(v1 + 17);
  v6 = v1[3];
  v7 = v1[4];
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 17) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
}

uint64_t REMRemindersListDataView.GroupInvocation.Result.diff.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
}

__n128 REMRemindersListDataView.GroupInvocation.Result.init(model:diff:group:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 24) = *(a1 + 24);
  result = *a2;
  v5 = *(a2 + 16);
  *(a4 + 40) = *a2;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 17);
  v9 = *(a2 + 32);
  *a4 = *a1;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7;
  *(a4 + 17) = v8;
  *(a4 + 56) = v5;
  *(a4 + 72) = v9;
  *(a4 + 80) = a3;
  return result;
}

uint64_t sub_2302E9034()
{
  v1 = 1717987684;
  if (*v0 != 1)
  {
    v1 = 0x70756F7267;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C65646F6DLL;
  }
}

uint64_t sub_2302E9080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2303082D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2302E90A8(uint64_t a1)
{
  v2 = sub_2302E9454();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302E90E4(uint64_t a1)
{
  v2 = sub_2302E9454();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.GroupInvocation.Result.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19A60);
  v26 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - v4;
  v6 = *v1;
  v24 = v1[1];
  v32 = *(v1 + 16);
  v23 = *(v1 + 17);
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[6];
  v18 = v1[5];
  v19 = v9;
  v10 = v1[8];
  v20 = v1[7];
  v21 = v10;
  v11 = v1[10];
  v22 = v1[9];
  v17 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302E9454();

  sub_230311448();
  v27 = v6;
  v28 = v24;
  LOBYTE(v29) = v32;
  BYTE1(v29) = v23;
  v30 = v7;
  v31 = v8;
  v12 = v5;
  v33 = 0;
  sub_230272184();
  v13 = v25;
  sub_230310DF8();
  if (v13)
  {

    return (*(v26 + 8))(v5, v3);
  }

  else
  {
    v15 = v26;

    v27 = v18;
    v28 = v19;
    v29 = v20;
    v30 = v21;
    v31 = v22;
    v33 = 1;
    sub_2302E4D00();

    sub_230310DF8();

    v27 = v17;
    v33 = 2;
    type metadata accessor for REMList_Codable();
    sub_2302E57CC(&qword_280C9C348, type metadata accessor for REMList_Codable);
    sub_230310DF8();
    return (*(v15 + 8))(v12, v3);
  }
}

unint64_t sub_2302E9454()
{
  result = qword_27DB19A68;
  if (!qword_27DB19A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19A68);
  }

  return result;
}

uint64_t REMRemindersListDataView.GroupInvocation.Result.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19A70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302E9454();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v32) = 0;
  sub_2302721D8();
  sub_230310CE8();
  v54 = v38;
  v29 = v39;
  v9 = BYTE1(v40);
  v31 = v41;
  v30 = v42;
  v53 = v40;
  LOBYTE(v32) = 1;
  sub_2302E5100();
  sub_230310CE8();
  v24 = v9;
  v27 = v38;
  v28 = v39;
  v25 = v40;
  v26 = v41;
  v10 = v42;
  type metadata accessor for REMList_Codable();
  v49 = 2;
  sub_2302E57CC(&qword_280C9C340, type metadata accessor for REMList_Codable);
  sub_230310CE8();
  (*(v6 + 8))(v8, v5);
  v11 = v50;
  *&v32 = v54;
  *(&v32 + 1) = v29;
  v23 = v53;
  LOBYTE(v33) = v53;
  v12 = v24;
  BYTE1(v33) = v24;
  *(&v33 + 2) = v51;
  WORD3(v33) = v52;
  v13 = v31;
  *(&v33 + 1) = v31;
  v14 = v10;
  v22 = v10;
  v15 = v30;
  *&v34 = v30;
  *(&v34 + 1) = v27;
  *&v35 = v28;
  v16 = v25;
  v17 = v26;
  *(&v35 + 1) = v25;
  *&v36 = v26;
  *(&v36 + 1) = v14;
  v37 = v50;
  *(a2 + 80) = v50;
  v18 = v36;
  v19 = v34;
  *(a2 + 48) = v35;
  *(a2 + 64) = v18;
  v20 = v33;
  *a2 = v32;
  *(a2 + 16) = v20;
  *(a2 + 32) = v19;
  sub_2302E9964(&v32, &v38);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v38 = v54;
  v39 = v29;
  LOBYTE(v40) = v23;
  BYTE1(v40) = v12;
  *(&v40 + 2) = v51;
  HIWORD(v40) = v52;
  v41 = v13;
  v42 = v15;
  v43 = v27;
  v44 = v28;
  v45 = v16;
  v46 = v17;
  v47 = v22;
  v48 = v11;
  return sub_2302E999C(&v38);
}

uint64_t sub_2302E9A64(uint64_t a1)
{
  v2 = sub_2302E9B20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302E9AA0(uint64_t a1)
{
  v2 = sub_2302E9B20();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2302E9B20()
{
  result = qword_280C99050;
  if (!qword_280C99050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99050);
  }

  return result;
}

uint64_t REMRemindersListDataView.FlaggedInvocation.Parameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  MEMORY[0x28223BE20](Configuration);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19A80);
  v16 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for REMRemindersListDataView.FlaggedInvocation.Parameters(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302E9B20();
  sub_230311428();
  if (!v2)
  {
    v12 = v15;
    sub_2302E57CC(&qword_280C97A78, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
    v13 = v17;
    sub_230310CE8();
    (*(v16 + 8))(v8, v6);
    sub_2302E3BE0(v13, v11, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
    sub_2302E3BE0(v11, v12, type metadata accessor for REMRemindersListDataView.FlaggedInvocation.Parameters);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2302E9EFC(uint64_t a1)
{
  v2 = sub_2302EA1E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302E9F38(uint64_t a1)
{
  v2 = sub_2302EA1E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.AllInvocation.Parameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19A88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302EA1E8();
  sub_230311448();
  v10[15] = *v3;
  v10[14] = 0;
  sub_230271510();
  sub_230310DF8();
  if (!v2)
  {
    type metadata accessor for REMRemindersListDataView.AllInvocation.Parameters(0);
    v10[13] = 1;
    type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    sub_2302E57CC(&qword_280C9A708, type metadata accessor for REMRemindersListDataView.ShowCompleted);
    sub_230310DF8();
    v10[12] = 2;
    sub_230310DB8();
    v10[11] = 3;
    type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    sub_2302E57CC(&qword_280C9A570, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
    sub_230310DF8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2302EA1E8()
{
  result = qword_280C99180;
  if (!qword_280C99180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99180);
  }

  return result;
}

uint64_t REMRemindersListDataView.AllInvocation.Parameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v22 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  MEMORY[0x28223BE20](v22);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19A90);
  v23 = *(v8 - 8);
  v24 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for REMRemindersListDataView.AllInvocation.Parameters(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_2302EA1E8();
  v25 = v10;
  v15 = v26;
  sub_230311428();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  v16 = v23;
  v17 = v13;
  v26 = v4;
  v31 = 0;
  sub_2302715B8();
  sub_230310CE8();
  *v13 = v32;
  v30 = 1;
  sub_2302E57CC(&qword_280C97C18, type metadata accessor for REMRemindersListDataView.ShowCompleted);
  sub_230310CE8();
  sub_2302E3BE0(v7, &v13[v11[5]], type metadata accessor for REMRemindersListDataView.ShowCompleted);
  v29 = 2;
  v13[v11[6]] = sub_230310CA8() & 1;
  v28 = 3;
  sub_2302E57CC(&qword_280C97B20, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  v18 = v26;
  sub_230310CE8();
  (*(v16 + 8))(v25, v24);
  sub_2302E3BE0(v18, v17 + v11[7], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  sub_2302E5228(v17, v21, type metadata accessor for REMRemindersListDataView.AllInvocation.Parameters);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return sub_2302E5DDC(v17, type metadata accessor for REMRemindersListDataView.AllInvocation.Parameters);
}

void *REMRemindersListDataView.TodayGroupInvocation.Parameters.currentLocation.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t REMRemindersListDataView.TodayGroupInvocation.Parameters.today.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for REMRemindersListDataView.TodayGroupInvocation.Parameters(0) + 24);
  v4 = sub_23030EB58();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2302EA7B4()
{
  v1 = 0x646570756F7267;
  v2 = 0x7961646F74;
  if (*v0 != 2)
  {
    v2 = 0x72756769666E6F63;
  }

  if (*v0)
  {
    v1 = 0x4C746E6572727563;
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

uint64_t sub_2302EA844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2303083E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2302EA86C(uint64_t a1)
{
  v2 = sub_2302EAB8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302EA8A8(uint64_t a1)
{
  v2 = sub_2302EAB8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.TodayGroupInvocation.Parameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19A98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302EAB8C();
  sub_230311448();
  v12 = 0;
  sub_230310DB8();
  if (!v2)
  {
    v11 = *(v3 + 8);
    v10[15] = 1;
    type metadata accessor for REMStructuredLocation_Codable();
    sub_2302E57CC(&qword_280C9C308, type metadata accessor for REMStructuredLocation_Codable);
    sub_230310D98();
    type metadata accessor for REMRemindersListDataView.TodayGroupInvocation.Parameters(0);
    v10[14] = 2;
    sub_23030EB58();
    sub_2302E57CC(&qword_280C9B760, MEMORY[0x277CC9578]);
    sub_230310DF8();
    v10[13] = 3;
    type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
    sub_2302E57CC(&qword_280C9A4D0, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
    sub_230310DF8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2302EAB8C()
{
  result = qword_280C9A460;
  if (!qword_280C9A460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A460);
  }

  return result;
}

void REMRemindersListDataView.TodayGroupInvocation.Parameters.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  MEMORY[0x28223BE20](Configuration);
  v23 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23030EB58();
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19AA0);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v8 = &v18 - v7;
  v9 = type metadata accessor for REMRemindersListDataView.TodayGroupInvocation.Parameters(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2302EAB8C();
  v13 = v25;
  sub_230311428();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    v14 = v6;
    v15 = v4;
    v17 = v22;
    v16 = v23;
    v31 = 0;
    *v11 = sub_230310CA8() & 1;
    type metadata accessor for REMStructuredLocation_Codable();
    v30 = 1;
    sub_2302E57CC(&qword_280C9C300, type metadata accessor for REMStructuredLocation_Codable);
    sub_230310C88();
    *(v11 + 1) = v27;
    v29 = 2;
    sub_2302E57CC(&qword_280C9B738, MEMORY[0x277CC9578]);
    sub_230310CE8();
    (*(v20 + 32))(&v11[*(v9 + 24)], v14, v15);
    v28 = 3;
    sub_2302E57CC(&qword_280C97A78, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
    sub_230310CE8();
    (*(v17 + 8))(v8, v24);
    sub_2302E3BE0(v16, &v11[*(v9 + 28)], type metadata accessor for REMRemindersListDataView.FetchConfiguration);
    sub_2302E5228(v11, v19, type metadata accessor for REMRemindersListDataView.TodayGroupInvocation.Parameters);
    __swift_destroy_boxed_opaque_existential_1(v26);
    sub_2302E5DDC(v11, type metadata accessor for REMRemindersListDataView.TodayGroupInvocation.Parameters);
  }
}

uint64_t sub_2302EB10C(uint64_t a1)
{
  v2 = sub_2302EB1C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302EB148(uint64_t a1)
{
  v2 = sub_2302EB1C8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2302EB1C8()
{
  result = qword_27DB19AB0;
  if (!qword_27DB19AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19AB0);
  }

  return result;
}

uint64_t sub_2302EB270(uint64_t a1)
{
  v2 = sub_2302EB32C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302EB2AC(uint64_t a1)
{
  v2 = sub_2302EB32C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2302EB32C()
{
  result = qword_27DB19AC0;
  if (!qword_27DB19AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19AC0);
  }

  return result;
}

uint64_t REMRemindersListDataView.ScheduledFlatInvocation.Parameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  MEMORY[0x28223BE20](Configuration);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19AC8);
  v16 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for REMRemindersListDataView.ScheduledFlatInvocation.Parameters(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302EB32C();
  sub_230311428();
  if (!v2)
  {
    v12 = v15;
    sub_2302E57CC(&qword_280C97A78, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
    v13 = v17;
    sub_230310CE8();
    (*(v16 + 8))(v8, v6);
    sub_2302E3BE0(v13, v11, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
    sub_2302E3BE0(v11, v12, type metadata accessor for REMRemindersListDataView.ScheduledFlatInvocation.Parameters);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2302EB6E0()
{
  if (*v0)
  {
    return 0x72756769666E6F63;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_2302EB72C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000230347900 == a2 || (sub_230311048() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_230311048();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_2302EB81C(uint64_t a1)
{
  v2 = sub_2302EBA94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302EB858(uint64_t a1)
{
  v2 = sub_2302EBA94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.ScheduledByDayInvocation.Parameters.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19AD0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302EBA94();
  sub_230311448();
  v8[15] = 0;
  type metadata accessor for REMRemindersListDataView.ScheduledTodayGroup(0);
  sub_2302E57CC(&qword_280C979C0, type metadata accessor for REMRemindersListDataView.ScheduledTodayGroup);
  sub_230310DF8();
  if (!v1)
  {
    type metadata accessor for REMRemindersListDataView.ScheduledByDayInvocation.Parameters(0);
    v8[14] = 1;
    type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
    sub_2302E57CC(&qword_280C9A4D0, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
    sub_230310DF8();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2302EBA94()
{
  result = qword_280C978F0;
  if (!qword_280C978F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C978F0);
  }

  return result;
}

uint64_t REMRemindersListDataView.ScheduledByDayInvocation.Parameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  MEMORY[0x28223BE20](Configuration);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for REMRemindersListDataView.ScheduledTodayGroup(0);
  MEMORY[0x28223BE20](v22);
  v23 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19AD8);
  v21 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v8 = &v17 - v7;
  v9 = type metadata accessor for REMRemindersListDataView.ScheduledByDayInvocation.Parameters(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302EBA94();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = a1;
  v12 = v21;
  v13 = v11;
  v26 = 0;
  sub_2302E57CC(&qword_280C979B8, type metadata accessor for REMRemindersListDataView.ScheduledTodayGroup);
  v14 = v23;
  v15 = v24;
  sub_230310CE8();
  sub_2302E3BE0(v14, v13, type metadata accessor for REMRemindersListDataView.ScheduledTodayGroup);
  v25 = 1;
  sub_2302E57CC(&qword_280C97A78, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
  sub_230310CE8();
  (*(v12 + 8))(v8, v15);
  sub_2302E3BE0(v5, v13 + *(v9 + 20), type metadata accessor for REMRemindersListDataView.FetchConfiguration);
  sub_2302E5228(v13, v19, type metadata accessor for REMRemindersListDataView.ScheduledByDayInvocation.Parameters);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return sub_2302E5DDC(v13, type metadata accessor for REMRemindersListDataView.ScheduledByDayInvocation.Parameters);
}

uint64_t sub_2302EBF50()
{
  v1 = 0x7961646F74;
  if (*v0 != 1)
  {
    v1 = 0x72756769666E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C797473;
  }
}

uint64_t sub_2302EBFB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230308550(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2302EBFD8(uint64_t a1)
{
  v2 = sub_2302EC298();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302EC014(uint64_t a1)
{
  v2 = sub_2302EC298();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19AE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302EC298();
  sub_230311448();
  v10[15] = *v3;
  v10[14] = 0;
  sub_2302EC2EC();
  sub_230310DF8();
  if (!v2)
  {
    type metadata accessor for REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters(0);
    v10[13] = 1;
    sub_23030EB58();
    sub_2302E57CC(&qword_280C9B760, MEMORY[0x277CC9578]);
    sub_230310DF8();
    v10[12] = 2;
    type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
    sub_2302E57CC(&qword_280C9A4D0, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
    sub_230310DF8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2302EC298()
{
  result = qword_280C98C40;
  if (!qword_280C98C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98C40);
  }

  return result;
}

unint64_t sub_2302EC2EC()
{
  result = qword_280C97768;
  if (!qword_280C97768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97768);
  }

  return result;
}

uint64_t REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  MEMORY[0x28223BE20](Configuration);
  v26 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23030EB58();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19AE8);
  v24 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v8 = &v20 - v7;
  v9 = type metadata accessor for REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302EC298();
  v27 = v8;
  v12 = v29;
  sub_230311428();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v11;
  v29 = a1;
  v15 = v24;
  v14 = v25;
  v16 = v26;
  v32 = 0;
  sub_2302EC798();
  sub_230310CE8();
  v21 = v13;
  *v13 = v33;
  v31 = 1;
  sub_2302E57CC(&qword_280C9B738, MEMORY[0x277CC9578]);
  sub_230310CE8();
  v17 = *(v14 + 32);
  v18 = v21;
  v20 = *(v9 + 20);
  v17(&v21[v20], v6, v4);
  v30 = 2;
  sub_2302E57CC(&qword_280C97A78, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
  sub_230310CE8();
  (*(v15 + 8))(v27, v28);
  sub_2302E3BE0(v16, v18 + *(v9 + 24), type metadata accessor for REMRemindersListDataView.FetchConfiguration);
  sub_2302E5228(v18, v22, type metadata accessor for REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_2302E5DDC(v18, type metadata accessor for REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters);
}

unint64_t sub_2302EC798()
{
  result = qword_280C97760;
  if (!qword_280C97760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97760);
  }

  return result;
}

uint64_t REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters.today.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23030EB58();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2302EC8C0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t sub_2302EC978()
{
  v1 = 0x7261646E656C6163;
  if (*v0 != 1)
  {
    v1 = 0x72756769666E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7961646F74;
  }
}

uint64_t sub_2302EC9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230308668(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2302ECA04(uint64_t a1)
{
  v2 = sub_2302ECCF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302ECA40(uint64_t a1)
{
  v2 = sub_2302ECCF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19AF0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302ECCF4();
  sub_230311448();
  v8[15] = 0;
  sub_23030EB58();
  sub_2302E57CC(&qword_280C9B760, MEMORY[0x277CC9578]);
  sub_230310DF8();
  if (!v1)
  {
    type metadata accessor for REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters(0);
    v8[14] = 1;
    sub_23030EE08();
    sub_2302E57CC(&qword_27DB19B00, MEMORY[0x277CC99E8]);
    sub_230310DF8();
    v8[13] = 2;
    type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
    sub_2302E57CC(&qword_280C9A4D0, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
    sub_230310DF8();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2302ECCF4()
{
  result = qword_27DB19AF8;
  if (!qword_27DB19AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19AF8);
  }

  return result;
}

uint64_t REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  MEMORY[0x28223BE20](Configuration);
  v26 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_23030EE08();
  v28 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23030EB58();
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v32 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19B08);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v9 = &v24 - v8;
  v10 = type metadata accessor for REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302ECCF4();
  v34 = v9;
  v13 = v35;
  sub_230311428();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v10;
  v24 = v12;
  v35 = a1;
  v16 = v30;
  v15 = v31;
  v38 = 0;
  sub_2302E57CC(&qword_280C9B738, MEMORY[0x277CC9578]);
  v17 = v32;
  sub_230310CE8();
  v18 = *(v29 + 32);
  v32 = v6;
  v18(v24, v17, v6);
  v37 = 1;
  sub_2302E57CC(&qword_27DB19B10, MEMORY[0x277CC99E8]);
  v19 = v5;
  sub_230310CE8();
  v20 = v24;
  (*(v28 + 32))(&v24[*(v14 + 20)], v19, v15);
  v36 = 2;
  sub_2302E57CC(&qword_280C97A78, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
  v21 = v26;
  v22 = v34;
  sub_230310CE8();
  (*(v16 + 8))(v22, v33);
  sub_2302E3BE0(v21, v20 + *(v14 + 24), type metadata accessor for REMRemindersListDataView.FetchConfiguration);
  sub_2302E5228(v20, v25, type metadata accessor for REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return sub_2302E5DDC(v20, type metadata accessor for REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters);
}

uint64_t REMRemindersListDataView.RecentlyDeletedInvocation.Parameters.deletedAfterDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for REMRemindersListDataView.RecentlyDeletedInvocation.Parameters(0) + 20);

  return sub_2301818F8(v3, a1);
}

unint64_t sub_2302ED394()
{
  v1 = 0x49746E756F636361;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x6D6F43746E756F63;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_2302ED42C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230308784(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2302ED454(uint64_t a1)
{
  v2 = sub_2302ED778();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302ED490(uint64_t a1)
{
  v2 = sub_2302ED778();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.RecentlyDeletedInvocation.Parameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19B18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302ED778();
  sub_230311448();
  v11 = *v3;
  v10[7] = 0;
  type metadata accessor for REMObjectID_Codable();
  sub_2302E57CC(qword_280C9BFD8, type metadata accessor for REMObjectID_Codable);
  sub_230310DF8();
  if (!v2)
  {
    type metadata accessor for REMRemindersListDataView.RecentlyDeletedInvocation.Parameters(0);
    v10[6] = 1;
    sub_23030EB58();
    sub_2302E57CC(&qword_280C9B760, MEMORY[0x277CC9578]);
    sub_230310D98();
    v10[5] = 2;
    type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    sub_2302E57CC(&qword_280C9A570, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
    sub_230310DF8();
    v10[4] = 3;
    sub_230310DB8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2302ED778()
{
  result = qword_280C97840;
  if (!qword_280C97840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97840);
  }

  return result;
}

void REMRemindersListDataView.RecentlyDeletedInvocation.Parameters.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  MEMORY[0x28223BE20](v28);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19B20);
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for REMRemindersListDataView.RecentlyDeletedInvocation.Parameters(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_2302ED778();
  v15 = v31;
  sub_230311428();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    v16 = v7;
    v25 = v4;
    v26 = v11;
    v17 = v29;
    v31 = v13;
    type metadata accessor for REMObjectID_Codable();
    v36 = 0;
    sub_2302E57CC(&qword_280C9C5D0, type metadata accessor for REMObjectID_Codable);
    v18 = v30;
    sub_230310CE8();
    v19 = v37;
    v20 = v31;
    *v31 = v37;
    sub_23030EB58();
    v35 = 1;
    sub_2302E57CC(&qword_280C9B738, MEMORY[0x277CC9578]);
    v21 = v16;
    sub_230310C88();
    v24 = v19;
    v22 = v26;
    sub_2300E0878(v21, v20 + *(v26 + 20));
    v34 = 2;
    sub_2302E57CC(&qword_280C97B20, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
    v23 = v25;
    sub_230310CE8();
    sub_2302E3BE0(v23, v20 + *(v22 + 24), type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
    v33 = 3;
    LOBYTE(v23) = sub_230310CA8();
    (*(v17 + 8))(v10, v18);
    *(v20 + *(v22 + 28)) = v23 & 1;
    sub_2302E5228(v20, v27, type metadata accessor for REMRemindersListDataView.RecentlyDeletedInvocation.Parameters);
    __swift_destroy_boxed_opaque_existential_1(v32);
    sub_2302E5DDC(v20, type metadata accessor for REMRemindersListDataView.RecentlyDeletedInvocation.Parameters);
  }
}

uint64_t REMRemindersListDataView.AssignedInvocation.Parameters.currentUserShareParticipantIDsOverride.getter()
{
  type metadata accessor for REMRemindersListDataView.AssignedInvocation.Parameters(0);
}

uint64_t sub_2302EDDDC()
{
  v1 = *v0;
  v2 = 0x53676E6974726F73;
  v3 = 0x6D6F43746E756F63;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0xD000000000000026;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x706D6F43776F6873;
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

uint64_t sub_2302EDE9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230308904(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2302EDEC4(uint64_t a1)
{
  v2 = sub_2302EE22C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302EDF00(uint64_t a1)
{
  v2 = sub_2302EE22C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.AssignedInvocation.Parameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19B28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302EE22C();
  sub_230311448();
  v17 = *v3;
  v16 = 0;
  sub_230271510();
  sub_230310DF8();
  if (!v2)
  {
    v9 = type metadata accessor for REMRemindersListDataView.AssignedInvocation.Parameters(0);
    v15 = 1;
    type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    sub_2302E57CC(&qword_280C9A708, type metadata accessor for REMRemindersListDataView.ShowCompleted);
    sub_230310DF8();
    v14 = 2;
    sub_230310DB8();
    v13 = 3;
    type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    sub_2302E57CC(&qword_280C9A570, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
    sub_230310DF8();
    v12 = *&v3[*(v9 + 32)];
    v11[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
    sub_230059F7C(&qword_280C96EE8);
    sub_230310D98();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2302EE22C()
{
  result = qword_27DB19B30;
  if (!qword_27DB19B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19B30);
  }

  return result;
}

uint64_t REMRemindersListDataView.AssignedInvocation.Parameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v19 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  MEMORY[0x28223BE20](v19);
  v20 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  MEMORY[0x28223BE20](v22);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19B38);
  v21 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = &v19 - v6;
  v8 = type metadata accessor for REMRemindersListDataView.AssignedInvocation.Parameters(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302EE22C();
  v11 = v25;
  sub_230311428();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = a1;
  v12 = v21;
  v13 = v10;
  v14 = v23;
  v31 = 0;
  sub_2302715B8();
  sub_230310CE8();
  *v13 = v32;
  v30 = 1;
  sub_2302E57CC(&qword_280C97C18, type metadata accessor for REMRemindersListDataView.ShowCompleted);
  sub_230310CE8();
  sub_2302E3BE0(v5, &v13[v8[5]], type metadata accessor for REMRemindersListDataView.ShowCompleted);
  v29 = 2;
  v13[v8[6]] = sub_230310CA8() & 1;
  v28 = 3;
  sub_2302E57CC(&qword_280C97B20, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  v15 = v20;
  sub_230310CE8();
  v16 = v12;
  v17 = v25;
  sub_2302E3BE0(v15, &v13[v8[7]], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
  v27 = 4;
  sub_230059F7C(&qword_280C98850);
  sub_230310C88();
  (*(v16 + 8))(v7, v24);
  *&v13[v8[8]] = v26;
  sub_2302E5228(v13, v14, type metadata accessor for REMRemindersListDataView.AssignedInvocation.Parameters);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return sub_2302E5DDC(v13, type metadata accessor for REMRemindersListDataView.AssignedInvocation.Parameters);
}

uint64_t sub_2302EE834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000026 && 0x8000000230347940 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_230311048();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2302EE8C8(uint64_t a1)
{
  v2 = sub_2302EEAD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302EE904(uint64_t a1)
{
  v2 = sub_2302EEAD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.DEBUG_AssignedCountInvocation.Parameters.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19B40);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302EEAD8();

  sub_230311448();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
  sub_230059F7C(&qword_280C96EE8);
  sub_230310D98();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2302EEAD8()
{
  result = qword_27DB19B48;
  if (!qword_27DB19B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19B48);
  }

  return result;
}

uint64_t REMRemindersListDataView.DEBUG_AssignedCountInvocation.Parameters.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19B50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302EEAD8();
  sub_230311428();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
    sub_230059F7C(&qword_280C98850);
    sub_230310C88();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2302EED68()
{
  v1 = 0x44497463656A626FLL;
  v2 = 0x706D6F43776F6873;
  if (*v0 != 2)
  {
    v2 = 0x6D6F43746E756F63;
  }

  if (*v0)
  {
    v1 = 0x53676E6974726F73;
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

uint64_t sub_2302EEE08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230308AD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2302EEE30(uint64_t a1)
{
  v2 = sub_2302EF134();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302EEE6C(uint64_t a1)
{
  v2 = sub_2302EF134();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.SearchInvocation.Parameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19B58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302EF134();
  sub_230311448();
  v11 = *v3;
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AA8);
  sub_23006DC28(&qword_280C9B990, qword_280C9BFD8);
  sub_230310DF8();
  if (!v2)
  {
    v10[6] = *(v3 + 8);
    v10[5] = 1;
    sub_230271510();
    sub_230310DF8();
    type metadata accessor for REMRemindersListDataView.SearchInvocation.Parameters(0);
    v10[4] = 2;
    type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    sub_2302E57CC(&qword_280C9A708, type metadata accessor for REMRemindersListDataView.ShowCompleted);
    sub_230310DF8();
    v10[3] = 3;
    sub_230310DB8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2302EF134()
{
  result = qword_27DB19B60;
  if (!qword_27DB19B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19B60);
  }

  return result;
}

uint64_t REMRemindersListDataView.SearchInvocation.Parameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19B68);
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = &v21 - v7;
  v9 = type metadata accessor for REMRemindersListDataView.SearchInvocation.Parameters(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2302EF134();
  v25 = v8;
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  v22 = v6;
  v13 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AA8);
  v32 = 0;
  sub_23006DC28(&qword_280C9C480, &qword_280C9C5D0);
  v14 = v26;
  v15 = v25;
  sub_230310CE8();
  v16 = v11;
  *v11 = v33;
  v30 = 1;
  sub_2302715B8();
  sub_230310CE8();
  v17 = v13;
  *(v16 + 8) = v31;
  v29 = 2;
  sub_2302E57CC(&qword_280C97C18, type metadata accessor for REMRemindersListDataView.ShowCompleted);
  v18 = v22;
  sub_230310CE8();
  sub_2302E3BE0(v18, v16 + *(v9 + 24), type metadata accessor for REMRemindersListDataView.ShowCompleted);
  v28 = 3;
  v20 = sub_230310CA8();
  (*(v17 + 8))(v15, v14);
  *(v16 + *(v9 + 28)) = v20 & 1;
  sub_2302E5228(v16, v23, type metadata accessor for REMRemindersListDataView.SearchInvocation.Parameters);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return sub_2302E5DDC(v16, type metadata accessor for REMRemindersListDataView.SearchInvocation.Parameters);
}

uint64_t sub_2302EF640()
{
  if (*v0)
  {
    return 0x72756769666E6F63;
  }

  else
  {
    return 0x44497463656A626FLL;
  }
}

uint64_t sub_2302EF68C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x44497463656A626FLL && a2 == 0xE900000000000073;
  if (v6 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461)
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

uint64_t sub_2302EF778(uint64_t a1)
{
  v2 = sub_2302EFA0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302EF7B4(uint64_t a1)
{
  v2 = sub_2302EFA0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.SearchFlatInvocation.Parameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19B70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302EFA0C();
  sub_230311448();
  v11 = *v3;
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AA8);
  sub_23006DC28(&qword_280C9B990, qword_280C9BFD8);
  sub_230310DF8();
  if (!v2)
  {
    type metadata accessor for REMRemindersListDataView.SearchFlatInvocation.Parameters(0);
    v10[6] = 1;
    type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
    sub_2302E57CC(&qword_280C9A4D0, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
    sub_230310DF8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2302EFA0C()
{
  result = qword_27DB19B78;
  if (!qword_27DB19B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19B78);
  }

  return result;
}

uint64_t REMRemindersListDataView.SearchFlatInvocation.Parameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  MEMORY[0x28223BE20](Configuration);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19B80);
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = v17 - v6;
  v8 = type metadata accessor for REMRemindersListDataView.SearchFlatInvocation.Parameters(0);
  MEMORY[0x28223BE20](v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302EFA0C();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = a1;
  v11 = v10;
  v12 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AA8);
  v24 = 0;
  sub_23006DC28(&qword_280C9C480, &qword_280C9C5D0);
  v13 = v22;
  sub_230310CE8();
  v17[0] = v11;
  v17[1] = v25;
  *v11 = v25;
  v23 = 1;
  sub_2302E57CC(&qword_280C97A78, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
  sub_230310CE8();
  (*(v12 + 8))(v7, v13);
  v14 = *(v8 + 20);
  v15 = v17[0];
  sub_2302E3BE0(v5, v17[0] + v14, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
  sub_2302E5228(v15, v19, type metadata accessor for REMRemindersListDataView.SearchFlatInvocation.Parameters);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return sub_2302E5DDC(v15, type metadata accessor for REMRemindersListDataView.SearchFlatInvocation.Parameters);
}

uint64_t sub_2302EFEE4(uint64_t a1)
{
  v2 = sub_2302F01D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302EFF20(uint64_t a1)
{
  v2 = sub_2302F01D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.SiriFoundInAppsInvocation.Parameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19B88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302F01D0();
  sub_230311448();
  v10[15] = *v3;
  v10[14] = 0;
  sub_230271510();
  sub_230310DF8();
  if (!v2)
  {
    type metadata accessor for REMRemindersListDataView.SiriFoundInAppsInvocation.Parameters(0);
    v10[13] = 1;
    type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    sub_2302E57CC(&qword_280C9A708, type metadata accessor for REMRemindersListDataView.ShowCompleted);
    sub_230310DF8();
    v10[12] = 2;
    sub_230310DB8();
    v10[11] = 3;
    type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    sub_2302E57CC(&qword_280C9A570, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
    sub_230310DF8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2302F01D0()
{
  result = qword_27DB19B90;
  if (!qword_27DB19B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19B90);
  }

  return result;
}

uint64_t REMRemindersListDataView.SiriFoundInAppsInvocation.Parameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v22 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  MEMORY[0x28223BE20](v22);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19B98);
  v23 = *(v8 - 8);
  v24 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for REMRemindersListDataView.SiriFoundInAppsInvocation.Parameters(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_2302F01D0();
  v25 = v10;
  v15 = v26;
  sub_230311428();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  v16 = v23;
  v17 = v13;
  v26 = v4;
  v31 = 0;
  sub_2302715B8();
  sub_230310CE8();
  *v13 = v32;
  v30 = 1;
  sub_2302E57CC(&qword_280C97C18, type metadata accessor for REMRemindersListDataView.ShowCompleted);
  sub_230310CE8();
  sub_2302E3BE0(v7, &v13[v11[5]], type metadata accessor for REMRemindersListDataView.ShowCompleted);
  v29 = 2;
  v13[v11[6]] = sub_230310CA8() & 1;
  v28 = 3;
  sub_2302E57CC(&qword_280C97B20, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  v18 = v26;
  sub_230310CE8();
  (*(v16 + 8))(v25, v24);
  sub_2302E3BE0(v18, v17 + v11[7], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  sub_2302E5228(v17, v21, type metadata accessor for REMRemindersListDataView.SiriFoundInAppsInvocation.Parameters);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return sub_2302E5DDC(v17, type metadata accessor for REMRemindersListDataView.SiriFoundInAppsInvocation.Parameters);
}

uint64_t REMRemindersListDataView.TaggedInvocation.Parameters.hashtagLabelPredicate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_2302727E4(v2, v3, v4);
}

uint64_t REMRemindersListDataView.TaggedInvocation.Parameters.smartListHashtagLabelsFetchStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for REMRemindersListDataView.TaggedInvocation.Parameters(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

unint64_t sub_2302F07F8()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x53676E6974726F73;
    if (v1 != 1)
    {
      v5 = 0x706D6F43776F6873;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000015;
    }
  }

  else
  {
    v2 = 0xD00000000000001BLL;
    if (v1 == 5)
    {
      v2 = 0xD000000000000020;
    }

    v3 = 0x6D6F43746E756F63;
    if (v1 != 3)
    {
      v3 = 0xD000000000000011;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2302F090C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230308DD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2302F0934(uint64_t a1)
{
  v2 = sub_2302F0CF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302F0970(uint64_t a1)
{
  v2 = sub_2302F0CF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.TaggedInvocation.Parameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19BA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302F0CF8();
  sub_230311448();
  v9 = *(v3 + 8);
  v10 = *(v3 + 16);
  v14 = *v3;
  v15 = v9;
  v16 = v10;
  HIBYTE(v13) = 0;
  sub_2302727E4(v14, v9, v10);
  sub_2302F0D4C();
  sub_230310DF8();
  if (v2)
  {
    sub_230276494(v14, v15, v16);
  }

  else
  {
    sub_230276494(v14, v15, v16);
    LOBYTE(v14) = *(v3 + 17);
    HIBYTE(v13) = 1;
    sub_230271510();
    sub_230310DF8();
    v11 = type metadata accessor for REMRemindersListDataView.TaggedInvocation.Parameters(0);
    LOBYTE(v14) = 2;
    type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    sub_2302E57CC(&qword_280C9A708, type metadata accessor for REMRemindersListDataView.ShowCompleted);
    sub_230310DF8();
    LOBYTE(v14) = 3;
    sub_230310DB8();
    LOBYTE(v14) = 4;
    type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    sub_2302E57CC(&qword_280C9A570, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
    sub_230310DF8();
    LOBYTE(v14) = *(v3 + *(v11 + 36));
    HIBYTE(v13) = 5;
    sub_2300DA9F4();
    sub_230310DF8();
    LOBYTE(v14) = 6;
    sub_230310DB8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2302F0CF8()
{
  result = qword_27DB19BA8;
  if (!qword_27DB19BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19BA8);
  }

  return result;
}

unint64_t sub_2302F0D4C()
{
  result = qword_27DB19BB0;
  if (!qword_27DB19BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19BB0);
  }

  return result;
}

uint64_t REMRemindersListDataView.TaggedInvocation.Parameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v24 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  MEMORY[0x28223BE20](v24);
  v25 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19BB8);
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for REMRemindersListDataView.TaggedInvocation.Parameters(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_2302F0CF8();
  v14 = v28;
  sub_230311428();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v28 = v6;
  v15 = v26;
  v16 = v12;
  v32 = 0;
  sub_2302F133C();
  v17 = v27;
  sub_230310CE8();
  v18 = v31;
  *v16 = v30;
  *(v16 + 16) = v18;
  v32 = 1;
  sub_2302715B8();
  sub_230310CE8();
  *(v16 + 17) = v30;
  LOBYTE(v30) = 2;
  sub_2302E57CC(&qword_280C97C18, type metadata accessor for REMRemindersListDataView.ShowCompleted);
  v19 = v28;
  sub_230310CE8();
  sub_2302E3BE0(v19, v16 + v10[6], type metadata accessor for REMRemindersListDataView.ShowCompleted);
  LOBYTE(v30) = 3;
  *(v16 + v10[7]) = sub_230310CA8() & 1;
  LOBYTE(v30) = 4;
  sub_2302E57CC(&qword_280C97B20, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  v21 = v25;
  sub_230310CE8();
  sub_2302E3BE0(v21, v16 + v10[8], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  v32 = 5;
  sub_230235184();
  sub_230310CE8();
  *(v16 + v10[9]) = v30;
  LOBYTE(v30) = 6;
  LOBYTE(v21) = sub_230310CA8();
  (*(v15 + 8))(v9, v17);
  *(v16 + v10[10]) = v21 & 1;
  sub_2302E5228(v16, v23, type metadata accessor for REMRemindersListDataView.TaggedInvocation.Parameters);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_2302E5DDC(v16, type metadata accessor for REMRemindersListDataView.TaggedInvocation.Parameters);
}

unint64_t sub_2302F133C()
{
  result = qword_27DB19BC0;
  if (!qword_27DB19BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19BC0);
  }

  return result;
}

uint64_t sub_2302F1404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000002303479C0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_230311048();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2302F1498(uint64_t a1)
{
  v2 = sub_2302F16A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302F14D4(uint64_t a1)
{
  v2 = sub_2302F16A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.PublicTemplateInvocation.Parameters.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19BC8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302F16A4();
  v8 = v7;
  sub_230311448();
  v10[1] = v8;
  type metadata accessor for REMObjectID_Codable();
  sub_2302E57CC(qword_280C9BFD8, type metadata accessor for REMObjectID_Codable);
  sub_230310DF8();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2302F16A4()
{
  result = qword_27DB19BD0;
  if (!qword_27DB19BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19BD0);
  }

  return result;
}

uint64_t REMRemindersListDataView.PublicTemplateInvocation.Parameters.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19BD8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302F16A4();
  sub_230311428();
  if (!v2)
  {
    type metadata accessor for REMObjectID_Codable();
    sub_2302E57CC(&qword_280C9C5D0, type metadata accessor for REMObjectID_Codable);
    sub_230310CE8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2302F18DC(uint64_t a1)
{
  v2 = sub_2302F1998();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302F1918(uint64_t a1)
{
  v2 = sub_2302F1998();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2302F1998()
{
  result = qword_27DB19BE8;
  if (!qword_27DB19BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19BE8);
  }

  return result;
}

uint64_t sub_2302F1A68(uint64_t a1)
{
  v2 = sub_2302F1C44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302F1AA4(uint64_t a1)
{
  v2 = sub_2302F1C44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2302F1B24(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_230311448();
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2302F1C44()
{
  result = qword_27DB19BF8;
  if (!qword_27DB19BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19BF8);
  }

  return result;
}

uint64_t sub_2302F1CDC(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_230311448();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2302F1E88()
{
  if (*v0)
  {
    return 0x72756769666E6F63;
  }

  else
  {
    return 1953720684;
  }
}

uint64_t sub_2302F1EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1953720684 && a2 == 0xE400000000000000;
  if (v5 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461)
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

uint64_t sub_2302F1FAC(uint64_t a1)
{
  v2 = sub_2302F222C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302F1FE8(uint64_t a1)
{
  v2 = sub_2302F222C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.ListSectionsInvocation.Parameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19C00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302F222C();
  sub_230311448();
  v11 = *v3;
  v10[7] = 0;
  type metadata accessor for REMList_Codable();
  sub_2302E57CC(&qword_280C9C348, type metadata accessor for REMList_Codable);
  sub_230310DF8();
  if (!v2)
  {
    type metadata accessor for REMRemindersListDataView.ListSectionsInvocation.Parameters(0);
    v10[6] = 1;
    type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
    sub_2302E57CC(&qword_280C9A4D0, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
    sub_230310DF8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2302F222C()
{
  result = qword_280C992C8;
  if (!qword_280C992C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C992C8);
  }

  return result;
}

void REMRemindersListDataView.ListSectionsInvocation.Parameters.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  MEMORY[0x28223BE20](Configuration);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19C08);
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = v15 - v6;
  v8 = type metadata accessor for REMRemindersListDataView.ListSectionsInvocation.Parameters(0);
  MEMORY[0x28223BE20](v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302F222C();
  sub_230311428();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v16 = a1;
    v11 = v10;
    v12 = v18;
    type metadata accessor for REMList_Codable();
    v22 = 0;
    sub_2302E57CC(&qword_280C9C340, type metadata accessor for REMList_Codable);
    v13 = v20;
    sub_230310CE8();
    v15[0] = v11;
    v15[1] = v23;
    *v11 = v23;
    v21 = 1;
    sub_2302E57CC(&qword_280C97A78, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
    sub_230310CE8();
    (*(v12 + 8))(v7, v13);
    v14 = v15[0];
    sub_2302E3BE0(v5, v15[0] + *(v8 + 20), type metadata accessor for REMRemindersListDataView.FetchConfiguration);
    sub_2302E5228(v14, v17, type metadata accessor for REMRemindersListDataView.ListSectionsInvocation.Parameters);
    __swift_destroy_boxed_opaque_existential_1(v16);
    sub_2302E5DDC(v14, type metadata accessor for REMRemindersListDataView.ListSectionsInvocation.Parameters);
  }
}

uint64_t sub_2302F2658()
{
  v1 = 0xD00000000000001BLL;
  if (*v0 != 1)
  {
    v1 = 0x72756769666E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73694C7472616D73;
  }
}

uint64_t sub_2302F26C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230309038(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2302F26F0(uint64_t a1)
{
  v2 = sub_2302F29D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302F272C(uint64_t a1)
{
  v2 = sub_2302F29D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19C10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302F29D4();
  sub_230311448();
  v11 = *v3;
  v10[7] = 0;
  type metadata accessor for REMSmartList_Codable();
  sub_2302E57CC(qword_280C9AC10, type metadata accessor for REMSmartList_Codable);
  sub_230310DF8();
  if (!v2)
  {
    v10[6] = 1;
    sub_230310DB8();
    type metadata accessor for REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters(0);
    v10[5] = 2;
    type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
    sub_2302E57CC(&qword_280C9A4D0, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
    sub_230310DF8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2302F29D4()
{
  result = qword_27DB19C18;
  if (!qword_27DB19C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19C18);
  }

  return result;
}

void REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  MEMORY[0x28223BE20](Configuration);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19C20);
  v16 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v7 = &v15 - v6;
  v8 = type metadata accessor for REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302F29D4();
  v17 = v7;
  v11 = v19;
  sub_230311428();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v19 = a1;
    v12 = v16;
    type metadata accessor for REMSmartList_Codable();
    v22 = 0;
    sub_2302E57CC(&qword_280C9B750, type metadata accessor for REMSmartList_Codable);
    v13 = v17;
    sub_230310CE8();
    *v10 = v23;
    v21 = 1;
    v10[8] = sub_230310CA8() & 1;
    v20 = 2;
    sub_2302E57CC(&qword_280C97A78, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
    v14 = v18;
    sub_230310CE8();
    (*(v12 + 8))(v13, v14);
    sub_2302E3BE0(v5, &v10[*(v8 + 24)], type metadata accessor for REMRemindersListDataView.FetchConfiguration);
    sub_2302E5228(v10, v15, type metadata accessor for REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters);
    __swift_destroy_boxed_opaque_existential_1(v19);
    sub_2302E5DDC(v10, type metadata accessor for REMRemindersListDataView.CustomSmartListSectionsInvocation.Parameters);
  }
}

void REMRemindersListDataView.TemplateSectionsInvocation.Parameters.configuration.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 10);
  *a1 = *(v1 + 8);
  *(a1 + 2) = v2;
}

uint64_t sub_2302F2E3C()
{
  v1 = 0x6275536863746566;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x53676E6974726F73;
  }
}

uint64_t sub_2302F2EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230309168(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2302F2ED8(uint64_t a1)
{
  v2 = sub_2302F311C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302F2F14(uint64_t a1)
{
  v2 = sub_2302F311C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.TemplateSectionsInvocation.Parameters.FetchConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19C28);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = v1[1];
  v11[2] = v1[2];
  v12 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302F311C();
  sub_230311448();
  v17 = v8;
  v16 = 0;
  sub_230271510();
  sub_230310DF8();
  if (!v2)
  {
    v15 = v12;
    v14 = 1;
    sub_230271564();
    sub_230310DF8();
    v13 = 2;
    sub_230310DB8();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2302F311C()
{
  result = qword_27DB19C30;
  if (!qword_27DB19C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19C30);
  }

  return result;
}

uint64_t REMRemindersListDataView.TemplateSectionsInvocation.Parameters.FetchConfiguration.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19C38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302F311C();
  sub_230311428();
  if (!v2)
  {
    v17 = 0;
    sub_2302715B8();
    sub_230310CE8();
    v9 = v18;
    v15 = 1;
    sub_23027160C();
    sub_230310CE8();
    v11 = v16;
    v14 = 2;
    v12 = sub_230310CA8();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
    a2[2] = v12 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2302F33A4()
{
  if (*v0)
  {
    return 0x72756769666E6F63;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_2302F33F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000002303479E0 == a2 || (sub_230311048() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_230311048();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_2302F34E0(uint64_t a1)
{
  v2 = sub_2302F3758();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302F351C(uint64_t a1)
{
  v2 = sub_2302F3758();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.TemplateSectionsInvocation.Parameters.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19C40);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v14 = *(v1 + 9);
  v15 = v9;
  v13 = *(v1 + 10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302F3758();
  v10 = v8;
  sub_230311448();
  v21 = v10;
  v20 = 0;
  type metadata accessor for REMObjectID_Codable();
  sub_2302E57CC(qword_280C9BFD8, type metadata accessor for REMObjectID_Codable);
  sub_230310DF8();

  if (!v2)
  {
    v17 = v15;
    v18 = v14;
    v19 = v13;
    v16 = 1;
    sub_2302F37AC();
    sub_230310DF8();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2302F3758()
{
  result = qword_27DB19C48;
  if (!qword_27DB19C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19C48);
  }

  return result;
}

unint64_t sub_2302F37AC()
{
  result = qword_27DB19C50;
  if (!qword_27DB19C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19C50);
  }

  return result;
}

void REMRemindersListDataView.TemplateSectionsInvocation.Parameters.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19C58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302F3758();
  sub_230311428();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    type metadata accessor for REMObjectID_Codable();
    v16 = 0;
    sub_2302E57CC(&qword_280C9C5D0, type metadata accessor for REMObjectID_Codable);
    sub_230310CE8();
    v9 = v17;
    v13[11] = 1;
    sub_2302F3A3C();
    sub_230310CE8();
    (*(v6 + 8))(v8, v5);
    v10 = v14;
    v11 = v15;
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 10) = v11;
    v12 = v9;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

unint64_t sub_2302F3A3C()
{
  result = qword_27DB19C60;
  if (!qword_27DB19C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19C60);
  }

  return result;
}

uint64_t sub_2302F3AD0(uint64_t a1)
{
  v2 = sub_2302F3B8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302F3B0C(uint64_t a1)
{
  v2 = sub_2302F3B8C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2302F3B8C()
{
  result = qword_280C98EE8[0];
  if (!qword_280C98EE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C98EE8);
  }

  return result;
}

uint64_t REMRemindersListDataView.AllSectionsInvocation.Parameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  MEMORY[0x28223BE20](Configuration);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19C70);
  v16 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for REMRemindersListDataView.AllSectionsInvocation.Parameters(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302F3B8C();
  sub_230311428();
  if (!v2)
  {
    v12 = v15;
    sub_2302E57CC(&qword_280C97A78, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
    v13 = v17;
    sub_230310CE8();
    (*(v16 + 8))(v8, v6);
    sub_2302E3BE0(v13, v11, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
    sub_2302E3BE0(v11, v12, type metadata accessor for REMRemindersListDataView.AllSectionsInvocation.Parameters);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2302F3F5C()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0x72756769666E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x70756F7267;
  }
}

uint64_t sub_2302F3FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230309294(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2302F3FEC(uint64_t a1)
{
  v2 = sub_2302F42D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302F4028(uint64_t a1)
{
  v2 = sub_2302F42D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.GroupSectionsInvocation.Parameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19C78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302F42D0();
  sub_230311448();
  v11 = *v3;
  v10[7] = 0;
  type metadata accessor for REMList_Codable();
  sub_2302E57CC(&qword_280C9C348, type metadata accessor for REMList_Codable);
  sub_230310DF8();
  if (!v2)
  {
    v10[6] = 1;
    sub_230310DB8();
    type metadata accessor for REMRemindersListDataView.GroupSectionsInvocation.Parameters(0);
    v10[5] = 2;
    type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
    sub_2302E57CC(&qword_280C9A4D0, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
    sub_230310DF8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2302F42D0()
{
  result = qword_27DB19C80;
  if (!qword_27DB19C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19C80);
  }

  return result;
}

void REMRemindersListDataView.GroupSectionsInvocation.Parameters.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  MEMORY[0x28223BE20](Configuration);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19C88);
  v16 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v7 = &v15 - v6;
  v8 = type metadata accessor for REMRemindersListDataView.GroupSectionsInvocation.Parameters(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302F42D0();
  v17 = v7;
  v11 = v19;
  sub_230311428();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v19 = a1;
    v12 = v16;
    type metadata accessor for REMList_Codable();
    v22 = 0;
    sub_2302E57CC(&qword_280C9C340, type metadata accessor for REMList_Codable);
    v13 = v17;
    sub_230310CE8();
    *v10 = v23;
    v21 = 1;
    v10[8] = sub_230310CA8() & 1;
    v20 = 2;
    sub_2302E57CC(&qword_280C97A78, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
    v14 = v18;
    sub_230310CE8();
    (*(v12 + 8))(v13, v14);
    sub_2302E3BE0(v5, &v10[*(v8 + 24)], type metadata accessor for REMRemindersListDataView.FetchConfiguration);
    sub_2302E5228(v10, v15, type metadata accessor for REMRemindersListDataView.GroupSectionsInvocation.Parameters);
    __swift_destroy_boxed_opaque_existential_1(v19);
    sub_2302E5DDC(v10, type metadata accessor for REMRemindersListDataView.GroupSectionsInvocation.Parameters);
  }
}

uint64_t sub_2302F46FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461)
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

uint64_t sub_2302F478C(uint64_t a1)
{
  v2 = sub_2302F49C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302F47C8(uint64_t a1)
{
  v2 = sub_2302F49C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2302F4848(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_230311448();
  type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  sub_2302E57CC(&qword_280C9A4D0, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
  sub_230310DF8();
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2302F49C8()
{
  result = qword_27DB19C98;
  if (!qword_27DB19C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19C98);
  }

  return result;
}

uint64_t REMRemindersListDataView.AppIntentsSectionsInvocation.Parameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  MEMORY[0x28223BE20](Configuration);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19CA0);
  v16 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for REMRemindersListDataView.AppIntentsSectionsInvocation.Parameters(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302F49C8();
  sub_230311428();
  if (!v2)
  {
    v12 = v15;
    sub_2302E57CC(&qword_280C97A78, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
    v13 = v17;
    sub_230310CE8();
    (*(v16 + 8))(v8, v6);
    sub_2302E3BE0(v13, v11, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
    sub_2302E3BE0(v11, v12, type metadata accessor for REMRemindersListDataView.AppIntentsSectionsInvocation.Parameters);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2302F4D0C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_230311448();
  type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  sub_2302E57CC(&qword_280C9A4D0, type metadata accessor for REMRemindersListDataView.FetchConfiguration);
  sub_230310DF8();
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_2302F4F24()
{
  result = qword_27DB19CB0;
  if (!qword_27DB19CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19CB0);
  }

  return result;
}

unint64_t sub_2302F5010()
{
  result = qword_27DB19CC0;
  if (!qword_27DB19CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19CC0);
  }

  return result;
}

unint64_t sub_2302F50FC()
{
  result = qword_27DB19CD0;
  if (!qword_27DB19CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19CD0);
  }

  return result;
}

unint64_t sub_2302F5414()
{
  result = qword_27DB19D08;
  if (!qword_27DB19D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19D08);
  }

  return result;
}

unint64_t sub_2302F5474()
{
  result = qword_27DB19D10;
  if (!qword_27DB19D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19D10);
  }

  return result;
}

unint64_t sub_2302F5A4C()
{
  result = qword_27DB19D70;
  if (!qword_27DB19D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19D70);
  }

  return result;
}

unint64_t sub_2302F5DF4()
{
  result = qword_27DB19DA8;
  if (!qword_27DB19DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19DA8);
  }

  return result;
}

unint64_t sub_2302F5ED4()
{
  result = qword_27DB19DB8;
  if (!qword_27DB19DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19DB8);
  }

  return result;
}

unint64_t sub_2302F5F30()
{
  result = qword_27DB19DC8;
  if (!qword_27DB19DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19DC8);
  }

  return result;
}

unint64_t sub_2302F5F8C()
{
  result = qword_27DB19DD0;
  if (!qword_27DB19DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19DD0);
  }

  return result;
}

uint64_t sub_2302F644C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_2302F64E4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 40 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    v10[1] = v11[1];
    v10[2] = v11[2];
    v10[3] = v11[3];
    v10[4] = v11[4];
  }

  return v3;
}

uint64_t sub_2302F6624(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

uint64_t sub_2302F66B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  v7[2] = v8[2];
  v7[3] = v8[3];
  v7[4] = v8[4];

  return a1;
}

uint64_t sub_2302F677C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  v7[1] = v8[1];

  v7[2] = v8[2];

  v7[3] = v8[3];

  v7[4] = v8[4];

  return a1;
}

uint64_t sub_2302F6868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 32);
  v10 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v10;
  *(v7 + 32) = v9;
  return a1;
}

uint64_t sub_2302F68EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  v7[1] = v8[1];

  v7[2] = v8[2];

  v7[3] = v8[3];

  v7[4] = v8[4];

  return a1;
}

uint64_t sub_2302F69B0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_2302F6AEC(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = (result + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      *(v18 + 8) = 0u;
      v19 = a2 & 0x7FFFFFFF;
      *(v18 + 24) = 0u;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t _s14ListInvocationC10ParametersVwca(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  *(a1 + 8) = *(a2 + 8);
  if (a1 == a2)
  {
    *(a1 + a3[7]) = *(a2 + a3[7]);
    goto LABEL_12;
  }

  v9 = a3[6];
  sub_2302E5DDC(a1 + v9, type metadata accessor for REMRemindersListDataView.ShowCompleted);
  v10 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *(a1 + v9) = *(a2 + v9);

    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    v12 = sub_23030EB58();
    (*(*(v12 - 8) + 16))(a1 + v9, a2 + v9, v12);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    goto LABEL_9;
  }

  memcpy((a1 + v9), (a2 + v9), *(*(v10 - 8) + 64));
LABEL_9:
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v13 = a3[8];
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  sub_2302E5DDC(a1 + v13, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  v16 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v14 = *v15;
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v18 = v14 + v17;
    v19 = v15 + v17;
    v20 = sub_23030EB58();
    v21 = *(*(v20 - 8) + 16);
    v21(v18, v19, v20);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v21(&v18[*(v22 + 36)], &v19[*(v22 + 36)], v20);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v14, v15, *(*(v16 - 8) + 64));
  }

LABEL_12:
  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

uint64_t _s14ListInvocationC10ParametersVwta(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  if (a1 == a2)
  {
    *(a1 + a3[7]) = *(a2 + a3[7]);
  }

  else
  {
    v7 = a3[6];
    sub_2302E5DDC(a1 + v7, type metadata accessor for REMRemindersListDataView.ShowCompleted);
    v8 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy((a1 + v7), (a2 + v7), *(*(v8 - 8) + 64));
    }

    else
    {
      v9 = sub_23030EB58();
      (*(*(v9 - 8) + 32))(a1 + v7, a2 + v7, v9);
      swift_storeEnumTagMultiPayload();
    }

    v10 = a3[8];
    *(a1 + a3[7]) = *(a2 + a3[7]);
    v11 = (a1 + v10);
    v12 = (a2 + v10);
    sub_2302E5DDC(a1 + v10, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
    v13 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      *v11 = *v12;
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
      v15 = v11 + v14;
      v16 = v12 + v14;
      v17 = sub_23030EB58();
      v18 = *(*(v17 - 8) + 32);
      v18(v15, v16, v17);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
      v18(&v15[*(v19 + 36)], &v16[*(v19 + 36)], v17);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v11, v12, *(*(v13 - 8) + 64));
    }
  }

  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

void _s14ListInvocationC6ResultVwxx(uint64_t a1)
{

  v2 = *(a1 + 88);
}

uint64_t _s14ListInvocationC6ResultVwcp(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;
  v4 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v4;
  v5 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v5;
  v6 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v6;

  v7 = v6;
  return a1;
}

uint64_t _s14ListInvocationC6ResultVwca(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  v5 = *(a2 + 88);
  v6 = *(a1 + 88);
  *(a1 + 88) = v5;
  v7 = v5;

  return a1;
}

uint64_t _s14ListInvocationC6ResultVwta(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);

  v4 = *(a1 + 88);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t _s14ListInvocationC6ResultVwet(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t _s14ListInvocationC6ResultVwst(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *_s25CustomSmartListInvocationC10ParametersVwCP(char *a1, char **a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v7 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v7 = a1;
    a1[8] = *(a2 + 8);
    v8 = a3[6];
    v9 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    v10 = v4;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      *&v7[v8] = *(a2 + v8);

      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy(&v7[v8], a2 + v8, *(*(v9 - 8) + 64));
    }

    else
    {
      v12 = sub_23030EB58();
      (*(*(v12 - 8) + 16))(&v7[v8], a2 + v8, v12);
      swift_storeEnumTagMultiPayload();
    }

    v13 = a3[8];
    v7[a3[7]] = *(a2 + a3[7]);
    v14 = &v7[v13];
    v15 = (a2 + v13);
    v16 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      *v14 = *v15;
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
      v18 = &v14[v17];
      v19 = v15 + v17;
      v20 = sub_23030EB58();
      v21 = *(*(v20 - 8) + 16);
      v21(v18, v19, v20);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
      v21(&v18[*(v22 + 36)], &v19[*(v22 + 36)], v20);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v14, v15, *(*(v16 - 8) + 64));
    }

    v23 = a3[10];
    v7[a3[9]] = *(a2 + a3[9]);
    v7[v23] = *(a2 + v23);
  }

  return v7;
}

uint64_t _s25CustomSmartListInvocationC10ParametersVwcp(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v7 = a3[6];
  v8 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  v9 = v6;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *(a1 + v7) = *(a2 + v7);

    swift_storeEnumTagMultiPayload();
  }

  else if (EnumCaseMultiPayload)
  {
    memcpy((a1 + v7), (a2 + v7), *(*(v8 - 8) + 64));
  }

  else
  {
    v11 = sub_23030EB58();
    (*(*(v11 - 8) + 16))(a1 + v7, a2 + v7, v11);
    swift_storeEnumTagMultiPayload();
  }

  v12 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  v15 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v13 = *v14;
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v17 = v13 + v16;
    v18 = v14 + v16;
    v19 = sub_23030EB58();
    v20 = *(*(v19 - 8) + 16);
    v20(v17, v18, v19);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v20(&v17[*(v21 + 36)], &v18[*(v21 + 36)], v19);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v13, v14, *(*(v15 - 8) + 64));
  }

  v22 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v22) = *(a2 + v22);
  return a1;
}

uint64_t _s25CustomSmartListInvocationC10ParametersVwca(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  *(a1 + 8) = *(a2 + 8);
  if (a1 == a2)
  {
    *(a1 + a3[7]) = *(a2 + a3[7]);
    goto LABEL_12;
  }

  v9 = a3[6];
  sub_2302E5DDC(a1 + v9, type metadata accessor for REMRemindersListDataView.ShowCompleted);
  v10 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *(a1 + v9) = *(a2 + v9);

    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    v12 = sub_23030EB58();
    (*(*(v12 - 8) + 16))(a1 + v9, a2 + v9, v12);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    goto LABEL_9;
  }

  memcpy((a1 + v9), (a2 + v9), *(*(v10 - 8) + 64));
LABEL_9:
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v13 = a3[8];
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  sub_2302E5DDC(a1 + v13, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  v16 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v14 = *v15;
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v18 = v14 + v17;
    v19 = v15 + v17;
    v20 = sub_23030EB58();
    v21 = *(*(v20 - 8) + 16);
    v21(v18, v19, v20);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v21(&v18[*(v22 + 36)], &v19[*(v22 + 36)], v20);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v14, v15, *(*(v16 - 8) + 64));
  }

LABEL_12:
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  return a1;
}

uint64_t _s25CustomSmartListInvocationC10ParametersVwtk(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = a3[6];
  v7 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy((a1 + v6), (a2 + v6), *(*(v7 - 8) + 64));
  }

  else
  {
    v8 = sub_23030EB58();
    (*(*(v8 - 8) + 32))(a1 + v6, a2 + v6, v8);
    swift_storeEnumTagMultiPayload();
  }

  v9 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  v12 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v10 = *v11;
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v14 = v10 + v13;
    v15 = v11 + v13;
    v16 = sub_23030EB58();
    v17 = *(*(v16 - 8) + 32);
    v17(v14, v15, v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v17(&v14[*(v18 + 36)], &v15[*(v18 + 36)], v16);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v10, v11, *(*(v12 - 8) + 64));
  }

  v19 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v19) = *(a2 + v19);
  return a1;
}

uint64_t _s25CustomSmartListInvocationC10ParametersVwta(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  if (a1 == a2)
  {
    *(a1 + a3[7]) = *(a2 + a3[7]);
  }

  else
  {
    v7 = a3[6];
    sub_2302E5DDC(a1 + v7, type metadata accessor for REMRemindersListDataView.ShowCompleted);
    v8 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy((a1 + v7), (a2 + v7), *(*(v8 - 8) + 64));
    }

    else
    {
      v9 = sub_23030EB58();
      (*(*(v9 - 8) + 32))(a1 + v7, a2 + v7, v9);
      swift_storeEnumTagMultiPayload();
    }

    v10 = a3[8];
    *(a1 + a3[7]) = *(a2 + a3[7]);
    v11 = (a1 + v10);
    v12 = (a2 + v10);
    sub_2302E5DDC(a1 + v10, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
    v13 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      *v11 = *v12;
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
      v15 = v11 + v14;
      v16 = v12 + v14;
      v17 = sub_23030EB58();
      v18 = *(*(v17 - 8) + 32);
      v18(v15, v16, v17);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
      v18(&v15[*(v19 + 36)], &v16[*(v19 + 36)], v17);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v11, v12, *(*(v13 - 8) + 64));
    }
  }

  v20 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v20) = *(a2 + v20);
  return a1;
}

void _s25CustomSmartListInvocationC6ResultVwxx(uint64_t a1)
{

  v2 = *(a1 + 96);
  if (v2)
  {
  }
}

uint64_t _s25CustomSmartListInvocationC6ResultVwcp(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;
  v6 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v6;
  v7 = (a2 + 96);
  v14 = *(a2 + 88);
  v15 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v14;

  v8 = v14;
  if (v15)
  {
    *(a1 + 96) = v15;
    *(a1 + 104) = *(a2 + 104);
    v9 = *(a2 + 112);
    v10 = *(a2 + 120);
    *(a1 + 112) = v9;
    *(a1 + 120) = v10;
    v11 = v15;
  }

  else
  {
    v12 = v7[1];
    *(a1 + 96) = *v7;
    *(a1 + 112) = v12;
  }

  return a1;
}

uint64_t _s25CustomSmartListInvocationC6ResultVwca(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  v5 = *(a2 + 88);
  v6 = *(a1 + 88);
  *(a1 + 88) = v5;
  v7 = v5;

  v8 = (a1 + 96);
  v9 = *(a1 + 96);
  v11 = (a2 + 96);
  v10 = *(a2 + 96);
  if (v9)
  {
    if (v10)
    {
      *(a1 + 96) = v10;
      v12 = v10;

      *(a1 + 104) = *(a2 + 104);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 120) = *(a2 + 120);
    }

    else
    {
      sub_23027674C(a1 + 96);
      v14 = *(a2 + 112);
      *v8 = *v11;
      *(a1 + 112) = v14;
    }
  }

  else if (v10)
  {
    *(a1 + 96) = v10;
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 120) = *(a2 + 120);
    v13 = v10;
  }

  else
  {
    v15 = *(a2 + 112);
    *v8 = *v11;
    *(a1 + 112) = v15;
  }

  return a1;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t _s25CustomSmartListInvocationC6ResultVwta(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  v4 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);

  v5 = *(a1 + 96);
  v6 = *(a2 + 96);
  if (!v5)
  {
    goto LABEL_5;
  }

  if (!v6)
  {
    sub_23027674C(a1 + 96);
LABEL_5:
    v8 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v8;
    return a1;
  }

  *(a1 + 96) = v6;

  *(a1 + 104) = *(a2 + 104);
  v7 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v7;

  return a1;
}

uint64_t _s25CustomSmartListInvocationC6ResultVwet(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t _s25CustomSmartListInvocationC6ResultVwst(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_2302F86D4(char *a1, char **a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v7 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v7 = a1;
    a1[8] = *(a2 + 8);
    v8 = a3[6];
    v9 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    v10 = v4;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      *&v7[v8] = *(a2 + v8);

      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy(&v7[v8], a2 + v8, *(*(v9 - 8) + 64));
    }

    else
    {
      v12 = sub_23030EB58();
      (*(*(v12 - 8) + 16))(&v7[v8], a2 + v8, v12);
      swift_storeEnumTagMultiPayload();
    }

    v13 = a3[8];
    v7[a3[7]] = *(a2 + a3[7]);
    v14 = &v7[v13];
    v15 = (a2 + v13);
    v16 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      *v14 = *v15;
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
      v18 = &v14[v17];
      v19 = v15 + v17;
      v20 = sub_23030EB58();
      v21 = *(*(v20 - 8) + 16);
      v21(v18, v19, v20);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
      v21(&v18[*(v22 + 36)], &v19[*(v22 + 36)], v20);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v14, v15, *(*(v16 - 8) + 64));
    }

    v7[a3[9]] = *(a2 + a3[9]);
  }

  return v7;
}

uint64_t sub_2302F8940(id *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v6 = sub_23030EB58();
    (*(*(v6 - 8) + 8))(a1 + v4, v6);
  }

  v7 = a1 + *(a2 + 32);
  type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    v9 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48)];
    v10 = sub_23030EB58();
    v12 = *(*(v10 - 8) + 8);
    (v12)((v10 - 8), v9, v10);
    v11 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78) + 36)];

    return v12(v11, v10);
  }

  return result;
}

uint64_t sub_2302F8AB8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v7 = a3[6];
  v8 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  v9 = v6;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *(a1 + v7) = *(a2 + v7);

    swift_storeEnumTagMultiPayload();
  }

  else if (EnumCaseMultiPayload)
  {
    memcpy((a1 + v7), (a2 + v7), *(*(v8 - 8) + 64));
  }

  else
  {
    v11 = sub_23030EB58();
    (*(*(v11 - 8) + 16))(a1 + v7, a2 + v7, v11);
    swift_storeEnumTagMultiPayload();
  }

  v12 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  v15 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v13 = *v14;
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v17 = v13 + v16;
    v18 = v14 + v16;
    v19 = sub_23030EB58();
    v20 = *(*(v19 - 8) + 16);
    v20(v17, v18, v19);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v20(&v17[*(v21 + 36)], &v18[*(v21 + 36)], v19);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v13, v14, *(*(v15 - 8) + 64));
  }

  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

uint64_t sub_2302F8CDC(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = a3[6];
  v7 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy((a1 + v6), (a2 + v6), *(*(v7 - 8) + 64));
  }

  else
  {
    v8 = sub_23030EB58();
    (*(*(v8 - 8) + 32))(a1 + v6, a2 + v6, v8);
    swift_storeEnumTagMultiPayload();
  }

  v9 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  v12 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v10 = *v11;
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v14 = v10 + v13;
    v15 = v11 + v13;
    v16 = sub_23030EB58();
    v17 = *(*(v16 - 8) + 32);
    v17(v14, v15, v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v17(&v14[*(v18 + 36)], &v15[*(v18 + 36)], v16);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v10, v11, *(*(v12 - 8) + 64));
  }

  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *__swift_store_extra_inhabitant_indexTm_2(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2302F9150()
{
  result = type metadata accessor for REMRemindersListDataView.ShowCompleted(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(319);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void _s15GroupInvocationC6ResultVwxx(uint64_t a1)
{

  v2 = *(a1 + 80);
}

uint64_t _s15GroupInvocationC6ResultVwcp(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  v6 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v6;
  v7 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v7;

  v8 = v7;
  return a1;
}

uint64_t _s15GroupInvocationC6ResultVwca(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  v5 = *(a2 + 80);
  v6 = *(a1 + 80);
  *(a1 + 80) = v5;
  v7 = v5;

  return a1;
}

uint64_t _s15GroupInvocationC6ResultVwta(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);

  v4 = *(a1 + 80);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

char *_s20TodayGroupInvocationC10ParametersVwCP(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v19 = *a2;
    *v3 = *a2;
    v3 = (v19 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = *(a2 + 1);
    *(a1 + 1) = v5;
    v6 = *(a3 + 24);
    v9 = sub_23030EB58();
    v10 = *(*(v9 - 8) + 16);
    v11 = v5;
    v10(&v3[v6], &a2[v6], v9);
    v12 = *(a3 + 28);
    v13 = &v3[v12];
    v14 = &a2[v12];
    v3[v12] = a2[v12];
    Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
    v16 = Configuration[5];
    v17 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      *&v13[v16] = *&v14[v16];

      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy(&v13[v16], &v14[v16], *(*(v17 - 8) + 64));
    }

    else
    {
      v10(&v13[v16], &v14[v16], v9);
      swift_storeEnumTagMultiPayload();
    }

    v13[Configuration[6]] = v14[Configuration[6]];
    v20 = Configuration[7];
    v21 = &v13[v20];
    v22 = &v14[v20];
    v23 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      *v21 = *v22;
      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
      v25 = v10;
      v26 = &v21[v24];
      v27 = &v22[v24];
      v25(&v21[v24], v27, v9);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
      v25(&v26[*(v28 + 36)], &v27[*(v28 + 36)], v9);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v21, v22, *(*(v23 - 8) + 64));
    }

    v13[Configuration[8]] = v14[Configuration[8]];
  }

  return v3;
}

uint64_t _s20TodayGroupInvocationC10ParametersVwxx(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_23030EB58();
  v14 = *(*(v5 - 8) + 8);
  v14(a1 + v4, v5);
  v6 = a1 + *(a2 + 28);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v8 = *(Configuration + 20);
  type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v14(v6 + v8, v5);
  }

  v10 = v6 + *(Configuration + 28);
  type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    v12 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v14(v12, v5);
    v13 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78) + 36);

    return (v14)(v13, v5);
  }

  return result;
}

uint64_t _s20TodayGroupInvocationC10ParametersVwcp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a2 + 8);
  *(a1 + 8) = v6;
  v7 = *(a3 + 24);
  v8 = sub_23030EB58();
  v9 = *(*(v8 - 8) + 16);
  v10 = v6;
  v9((a1 + v7), (a2 + v7), v8);
  v11 = *(a3 + 28);
  v12 = a1 + v11;
  v13 = a2 + v11;
  *(a1 + v11) = *(a2 + v11);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v15 = Configuration[5];
  v16 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *(v12 + v15) = *(v13 + v15);

    swift_storeEnumTagMultiPayload();
  }

  else if (EnumCaseMultiPayload)
  {
    memcpy((v12 + v15), (v13 + v15), *(*(v16 - 8) + 64));
  }

  else
  {
    v9((v12 + v15), (v13 + v15), v8);
    swift_storeEnumTagMultiPayload();
  }

  *(v12 + Configuration[6]) = *(v13 + Configuration[6]);
  v18 = Configuration[7];
  v19 = (v12 + v18);
  v20 = (v13 + v18);
  v21 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v19 = *v20;
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v23 = v9;
    v24 = &v19[v22];
    v25 = v20 + v22;
    v23(&v19[v22], v25, v8);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v23(&v24[*(v26 + 36)], &v25[*(v26 + 36)], v8);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v19, v20, *(*(v21 - 8) + 64));
  }

  *(v12 + Configuration[8]) = *(v13 + Configuration[8]);
  return a1;
}

uint64_t _s20TodayGroupInvocationC10ParametersVwca(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a1 + 8);
  v7 = *(a2 + 8);
  *(a1 + 8) = v7;
  v8 = v7;

  v9 = *(a3 + 24);
  v10 = sub_23030EB58();
  v11 = *(v10 - 8);
  (*(v11 + 24))(a1 + v9, a2 + v9, v10);
  v12 = *(a3 + 28);
  v13 = a1 + v12;
  v14 = a2 + v12;
  *(a1 + v12) = *(a2 + v12);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v16 = Configuration;
  if (a1 == a2)
  {
    *(v13 + *(Configuration + 24)) = *(v14 + *(Configuration + 24));
    goto LABEL_12;
  }

  v17 = *(Configuration + 20);
  sub_2302E5DDC(v13 + v17, type metadata accessor for REMRemindersListDataView.ShowCompleted);
  v18 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *(v13 + v17) = *(v14 + v17);

    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    (*(v11 + 16))(v13 + v17, v14 + v17, v10);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    goto LABEL_9;
  }

  memcpy((v13 + v17), (v14 + v17), *(*(v18 - 8) + 64));
LABEL_9:
  *(v13 + v16[6]) = *(v14 + v16[6]);
  v20 = v16[7];
  v21 = (v13 + v20);
  v22 = (v14 + v20);
  sub_2302E5DDC(v13 + v20, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  v23 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v21 = *v22;
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v25 = &v21[v24];
    v29 = v22 + v24;
    v26 = *(v11 + 16);
    v26(&v21[v24]);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    (v26)(&v25[*(v27 + 36)], &v29[*(v27 + 36)], v10);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v21, v22, *(*(v23 - 8) + 64));
  }

LABEL_12:
  *(v13 + v16[8]) = *(v14 + v16[8]);
  return a1;
}

uint64_t _s20TodayGroupInvocationC10ParametersVwtk(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a3 + 24);
  v7 = sub_23030EB58();
  v8 = *(*(v7 - 8) + 32);
  v8((a1 + v6), (a2 + v6), v7);
  v9 = *(a3 + 28);
  v10 = a1 + v9;
  v11 = a2 + v9;
  *(a1 + v9) = *(a2 + v9);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v13 = Configuration[5];
  v14 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy((v10 + v13), (v11 + v13), *(*(v14 - 8) + 64));
  }

  else
  {
    v8((v10 + v13), (v11 + v13), v7);
    swift_storeEnumTagMultiPayload();
  }

  *(v10 + Configuration[6]) = *(v11 + Configuration[6]);
  v15 = Configuration[7];
  v16 = (v10 + v15);
  v17 = (v11 + v15);
  v18 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v16 = *v17;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v20 = v8;
    v21 = &v16[v19];
    v22 = v17 + v19;
    v20(&v16[v19], v22, v7);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v20(&v21[*(v23 + 36)], &v22[*(v23 + 36)], v7);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v16, v17, *(*(v18 - 8) + 64));
  }

  *(v10 + Configuration[8]) = *(v11 + Configuration[8]);
  return a1;
}

uint64_t _s20TodayGroupInvocationC10ParametersVwta(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v7 = *(a3 + 24);
  v8 = sub_23030EB58();
  v9 = *(v8 - 8);
  (*(v9 + 40))(a1 + v7, a2 + v7, v8);
  v10 = *(a3 + 28);
  v11 = a1 + v10;
  v12 = a2 + v10;
  *(a1 + v10) = *(a2 + v10);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v14 = Configuration;
  if (a1 == a2)
  {
    *(v11 + *(Configuration + 24)) = *(v12 + *(Configuration + 24));
  }

  else
  {
    v15 = *(Configuration + 20);
    sub_2302E5DDC(v11 + v15, type metadata accessor for REMRemindersListDataView.ShowCompleted);
    v16 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy((v11 + v15), (v12 + v15), *(*(v16 - 8) + 64));
    }

    else
    {
      (*(v9 + 32))(v11 + v15, v12 + v15, v8);
      swift_storeEnumTagMultiPayload();
    }

    *(v11 + v14[6]) = *(v12 + v14[6]);
    v17 = v14[7];
    v18 = (v11 + v17);
    v19 = (v12 + v17);
    sub_2302E5DDC(v11 + v17, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
    v20 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      *v18 = *v19;
      v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
      v22 = &v18[v21];
      v26 = v19 + v21;
      v23 = *(v9 + 32);
      v23(&v18[v21]);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
      (v23)(&v22[*(v24 + 36)], &v26[*(v24 + 36)], v8);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v18, v19, *(*(v20 - 8) + 64));
    }
  }

  *(v11 + v14[8]) = *(v12 + v14[8]);
  return a1;
}

uint64_t sub_2302FA420()
{
  result = sub_23030EB58();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for REMRemindersListDataView.FetchConfiguration(319);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *_s24ScheduledByDayInvocationC10ParametersVwCP(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18738);
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = type metadata accessor for REMRemindersListDataView.ScheduledTodayGroup(0);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      v11 = sub_23030EB58();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v12 = *(a3 + 20);
    v13 = a1 + v12;
    v14 = a2 + v12;
    *(a1 + v12) = *(a2 + v12);
    Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
    v16 = Configuration[5];
    v17 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      *&v13[v16] = *&v14[v16];

      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy(&v13[v16], &v14[v16], *(*(v17 - 8) + 64));
    }

    else
    {
      v19 = sub_23030EB58();
      (*(*(v19 - 8) + 16))(&v13[v16], &v14[v16], v19);
      swift_storeEnumTagMultiPayload();
    }

    v13[Configuration[6]] = v14[Configuration[6]];
    v20 = Configuration[7];
    v21 = &v13[v20];
    v22 = &v14[v20];
    v23 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      *v21 = *v22;
      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
      v25 = &v21[v24];
      v26 = &v22[v24];
      v27 = sub_23030EB58();
      v28 = *(*(v27 - 8) + 16);
      v28(v25, v26, v27);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
      v28(&v25[*(v29 + 36)], &v26[*(v29 + 36)], v27);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v21, v22, *(*(v23 - 8) + 64));
    }

    v13[Configuration[8]] = v14[Configuration[8]];
  }

  return a1;
}

uint64_t _s24ScheduledByDayInvocationC10ParametersVwxx(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18738);
  if (!(*(*(v4 - 8) + 48))(a1, 1, v4))
  {
    v5 = sub_23030EB58();
    (*(*(v5 - 8) + 8))(a1, v5);
  }

  v6 = a1 + *(a2 + 20);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v8 = *(Configuration + 20);
  type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v10 = sub_23030EB58();
    (*(*(v10 - 8) + 8))(v6 + v8, v10);
  }

  v11 = v6 + *(Configuration + 28);
  type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    v13 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v14 = sub_23030EB58();
    v16 = *(*(v14 - 8) + 8);
    (v16)((v14 - 8), v13, v14);
    v15 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78) + 36);

    return v16(v15, v14);
  }

  return result;
}

char *_s24ScheduledByDayInvocationC10ParametersVwcp(char *a1, char *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18738);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = type metadata accessor for REMRemindersListDataView.ScheduledTodayGroup(0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    v9 = sub_23030EB58();
    (*(*(v9 - 8) + 16))(a1, a2, v9);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v10 = *(a3 + 20);
  v11 = &a1[v10];
  v12 = &a2[v10];
  a1[v10] = a2[v10];
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v14 = Configuration[5];
  v15 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *&v11[v14] = *&v12[v14];

    swift_storeEnumTagMultiPayload();
  }

  else if (EnumCaseMultiPayload)
  {
    memcpy(&v11[v14], &v12[v14], *(*(v15 - 8) + 64));
  }

  else
  {
    v17 = sub_23030EB58();
    (*(*(v17 - 8) + 16))(&v11[v14], &v12[v14], v17);
    swift_storeEnumTagMultiPayload();
  }

  v11[Configuration[6]] = v12[Configuration[6]];
  v18 = Configuration[7];
  v19 = &v11[v18];
  v20 = &v12[v18];
  v21 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v19 = *v20;
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v23 = &v19[v22];
    v24 = &v20[v22];
    v25 = sub_23030EB58();
    v26 = *(*(v25 - 8) + 16);
    v26(v23, v24, v25);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v26(&v23[*(v27 + 36)], &v24[*(v27 + 36)], v25);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v19, v20, *(*(v21 - 8) + 64));
  }

  v11[Configuration[8]] = v12[Configuration[8]];
  return a1;
}

char *_s24ScheduledByDayInvocationC10ParametersVwca(char *a1, char *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18738);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      v11 = sub_23030EB58();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    sub_230061918(a1, &qword_27DB18738);
LABEL_6:
    v12 = type metadata accessor for REMRemindersListDataView.ScheduledTodayGroup(0);
    memcpy(a1, a2, *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  v34 = sub_23030EB58();
  (*(*(v34 - 8) + 24))(a1, a2, v34);
LABEL_7:
  v13 = *(a3 + 20);
  v14 = &a1[v13];
  v15 = &a2[v13];
  a1[v13] = a2[v13];
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v17 = Configuration;
  if (a1 == a2)
  {
    v14[*(Configuration + 24)] = v15[*(Configuration + 24)];
    goto LABEL_18;
  }

  v18 = *(Configuration + 20);
  sub_2302E5DDC(&v14[v18], type metadata accessor for REMRemindersListDataView.ShowCompleted);
  v19 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *&v14[v18] = *&v15[v18];

    goto LABEL_13;
  }

  if (!EnumCaseMultiPayload)
  {
    v21 = sub_23030EB58();
    (*(*(v21 - 8) + 16))(&v14[v18], &v15[v18], v21);
LABEL_13:
    swift_storeEnumTagMultiPayload();
    goto LABEL_15;
  }

  memcpy(&v14[v18], &v15[v18], *(*(v19 - 8) + 64));
LABEL_15:
  v14[v17[6]] = v15[v17[6]];
  v22 = v17[7];
  v23 = &v14[v22];
  v24 = &v15[v22];
  sub_2302E5DDC(&v14[v22], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  v25 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v23 = *v24;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v35 = a1;
    v27 = &v23[v26];
    v28 = &v24[v26];
    v29 = sub_23030EB58();
    v30 = *(*(v29 - 8) + 16);
    v30(v27, v28, v29);
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78) + 36);
    v32 = &v27[v31];
    a1 = v35;
    v30(v32, &v28[v31], v29);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v23, v24, *(*(v25 - 8) + 64));
  }

LABEL_18:
  v14[v17[8]] = v15[v17[8]];
  return a1;
}

char *_s24ScheduledByDayInvocationC10ParametersVwtk(char *a1, char *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18738);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = type metadata accessor for REMRemindersListDataView.ScheduledTodayGroup(0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    v9 = sub_23030EB58();
    (*(*(v9 - 8) + 32))(a1, a2, v9);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v10 = *(a3 + 20);
  v11 = &a1[v10];
  v12 = &a2[v10];
  a1[v10] = a2[v10];
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v14 = Configuration[5];
  v15 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(&v11[v14], &v12[v14], *(*(v15 - 8) + 64));
  }

  else
  {
    v16 = sub_23030EB58();
    (*(*(v16 - 8) + 32))(&v11[v14], &v12[v14], v16);
    swift_storeEnumTagMultiPayload();
  }

  v11[Configuration[6]] = v12[Configuration[6]];
  v17 = Configuration[7];
  v18 = &v11[v17];
  v19 = &v12[v17];
  v20 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v18 = *v19;
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v22 = &v18[v21];
    v23 = &v19[v21];
    v24 = sub_23030EB58();
    v25 = *(*(v24 - 8) + 32);
    v25(v22, v23, v24);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v25(&v22[*(v26 + 36)], &v23[*(v26 + 36)], v24);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v18, v19, *(*(v20 - 8) + 64));
  }

  v11[Configuration[8]] = v12[Configuration[8]];
  return a1;
}

char *_s24ScheduledByDayInvocationC10ParametersVwta(char *a1, char *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18738);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      v11 = sub_23030EB58();
      (*(*(v11 - 8) + 32))(a1, a2, v11);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    sub_230061918(a1, &qword_27DB18738);
LABEL_6:
    v12 = type metadata accessor for REMRemindersListDataView.ScheduledTodayGroup(0);
    memcpy(a1, a2, *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  v33 = sub_23030EB58();
  (*(*(v33 - 8) + 40))(a1, a2, v33);
LABEL_7:
  v13 = *(a3 + 20);
  v14 = &a1[v13];
  v15 = &a2[v13];
  a1[v13] = a2[v13];
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v17 = Configuration;
  if (a1 == a2)
  {
    v14[*(Configuration + 24)] = v15[*(Configuration + 24)];
  }

  else
  {
    v18 = *(Configuration + 20);
    sub_2302E5DDC(&v14[v18], type metadata accessor for REMRemindersListDataView.ShowCompleted);
    v19 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(&v14[v18], &v15[v18], *(*(v19 - 8) + 64));
    }

    else
    {
      v20 = sub_23030EB58();
      (*(*(v20 - 8) + 32))(&v14[v18], &v15[v18], v20);
      swift_storeEnumTagMultiPayload();
    }

    v14[v17[6]] = v15[v17[6]];
    v21 = v17[7];
    v22 = &v14[v21];
    v23 = &v15[v21];
    sub_2302E5DDC(&v14[v21], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
    v24 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      *v22 = *v23;
      v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
      v34 = a1;
      v26 = &v22[v25];
      v27 = &v23[v25];
      v28 = sub_23030EB58();
      v29 = *(*(v28 - 8) + 32);
      v29(v26, v27, v28);
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78) + 36);
      v31 = &v26[v30];
      a1 = v34;
      v29(v31, &v27[v30], v28);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v22, v23, *(*(v24 - 8) + 64));
    }
  }

  v14[v17[8]] = v15[v17[8]];
  return a1;
}

uint64_t sub_2302FB9C8()
{
  result = type metadata accessor for REMRemindersListDataView.ScheduledTodayGroup(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for REMRemindersListDataView.FetchConfiguration(319);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

char *_s32ScheduledByDateBucketsInvocationC10ParametersVwCP(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v17 = *a2;
    *v3 = *a2;
    v3 = (v17 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = *(a3 + 20);
    v8 = sub_23030EB58();
    v9 = *(*(v8 - 8) + 16);
    v9(&v3[v5], &a2[v5], v8);
    v10 = *(a3 + 24);
    v11 = &v3[v10];
    v12 = &a2[v10];
    v3[v10] = a2[v10];
    Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
    v14 = Configuration[5];
    v15 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      *&v11[v14] = *&v12[v14];

      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy(&v11[v14], &v12[v14], *(*(v15 - 8) + 64));
    }

    else
    {
      v9(&v11[v14], &v12[v14], v8);
      swift_storeEnumTagMultiPayload();
    }

    v11[Configuration[6]] = v12[Configuration[6]];
    v18 = Configuration[7];
    v19 = &v11[v18];
    v20 = &v12[v18];
    v21 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      *v19 = *v20;
      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
      v23 = v9;
      v24 = &v19[v22];
      v25 = &v20[v22];
      v23(&v19[v22], v25, v8);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
      v23(&v24[*(v26 + 36)], &v25[*(v26 + 36)], v8);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v19, v20, *(*(v21 - 8) + 64));
    }

    v11[Configuration[8]] = v12[Configuration[8]];
  }

  return v3;
}

uint64_t _s32ScheduledByDateBucketsInvocationC10ParametersVwxx(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_23030EB58();
  v14 = *(*(v5 - 8) + 8);
  v14(a1 + v4, v5);
  v6 = a1 + *(a2 + 24);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v8 = *(Configuration + 20);
  type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v14(v6 + v8, v5);
  }

  v10 = v6 + *(Configuration + 28);
  type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    v12 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v14(v12, v5);
    v13 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78) + 36);

    return (v14)(v13, v5);
  }

  return result;
}

_BYTE *_s32ScheduledByDateBucketsInvocationC10ParametersVwcp(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_23030EB58();
  v8 = *(*(v7 - 8) + 16);
  v8(&a1[v6], &a2[v6], v7);
  v9 = *(a3 + 24);
  v10 = &a1[v9];
  v11 = &a2[v9];
  a1[v9] = a2[v9];
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v13 = Configuration[5];
  v14 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *&v10[v13] = *&v11[v13];

    swift_storeEnumTagMultiPayload();
  }

  else if (EnumCaseMultiPayload)
  {
    memcpy(&v10[v13], &v11[v13], *(*(v14 - 8) + 64));
  }

  else
  {
    v8(&v10[v13], &v11[v13], v7);
    swift_storeEnumTagMultiPayload();
  }

  v10[Configuration[6]] = v11[Configuration[6]];
  v16 = Configuration[7];
  v17 = &v10[v16];
  v18 = &v11[v16];
  v19 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v17 = *v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v21 = v8;
    v22 = &v17[v20];
    v23 = v18 + v20;
    v21(&v17[v20], v23, v7);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v21(&v22[*(v24 + 36)], &v23[*(v24 + 36)], v7);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v17, v18, *(*(v19 - 8) + 64));
  }

  v10[Configuration[8]] = v11[Configuration[8]];
  return a1;
}

_BYTE *_s32ScheduledByDateBucketsInvocationC10ParametersVwca(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_23030EB58();
  v8 = *(v7 - 8);
  (*(v8 + 24))(&a1[v6], &a2[v6], v7);
  v9 = *(a3 + 24);
  v10 = &a1[v9];
  v11 = &a2[v9];
  a1[v9] = a2[v9];
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v13 = Configuration;
  if (a1 == a2)
  {
    v10[*(Configuration + 24)] = v11[*(Configuration + 24)];
    goto LABEL_12;
  }

  v14 = *(Configuration + 20);
  sub_2302E5DDC(&v10[v14], type metadata accessor for REMRemindersListDataView.ShowCompleted);
  v15 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *&v10[v14] = *&v11[v14];

    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    (*(v8 + 16))(&v10[v14], &v11[v14], v7);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    goto LABEL_9;
  }

  memcpy(&v10[v14], &v11[v14], *(*(v15 - 8) + 64));
LABEL_9:
  v10[v13[6]] = v11[v13[6]];
  v17 = v13[7];
  v18 = &v10[v17];
  v19 = &v11[v17];
  sub_2302E5DDC(&v10[v17], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  v20 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v18 = *v19;
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v22 = &v18[v21];
    v26 = v19 + v21;
    v23 = *(v8 + 16);
    v23(&v18[v21]);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    (v23)(&v22[*(v24 + 36)], &v26[*(v24 + 36)], v7);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v18, v19, *(*(v20 - 8) + 64));
  }

LABEL_12:
  v10[v13[8]] = v11[v13[8]];
  return a1;
}

_BYTE *_s32ScheduledByDateBucketsInvocationC10ParametersVwtk(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_23030EB58();
  v8 = *(*(v7 - 8) + 32);
  v8(&a1[v6], &a2[v6], v7);
  v9 = *(a3 + 24);
  v10 = &a1[v9];
  v11 = &a2[v9];
  a1[v9] = a2[v9];
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v13 = Configuration[5];
  v14 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(&v10[v13], &v11[v13], *(*(v14 - 8) + 64));
  }

  else
  {
    v8(&v10[v13], &v11[v13], v7);
    swift_storeEnumTagMultiPayload();
  }

  v10[Configuration[6]] = v11[Configuration[6]];
  v15 = Configuration[7];
  v16 = &v10[v15];
  v17 = &v11[v15];
  v18 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v16 = *v17;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v20 = v8;
    v21 = &v16[v19];
    v22 = v17 + v19;
    v20(&v16[v19], v22, v7);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v20(&v21[*(v23 + 36)], &v22[*(v23 + 36)], v7);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v16, v17, *(*(v18 - 8) + 64));
  }

  v10[Configuration[8]] = v11[Configuration[8]];
  return a1;
}

_BYTE *_s32ScheduledByDateBucketsInvocationC10ParametersVwta(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_23030EB58();
  v8 = *(v7 - 8);
  (*(v8 + 40))(&a1[v6], &a2[v6], v7);
  v9 = *(a3 + 24);
  v10 = &a1[v9];
  v11 = &a2[v9];
  a1[v9] = a2[v9];
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v13 = Configuration;
  if (a1 == a2)
  {
    v10[*(Configuration + 24)] = v11[*(Configuration + 24)];
  }

  else
  {
    v14 = *(Configuration + 20);
    sub_2302E5DDC(&v10[v14], type metadata accessor for REMRemindersListDataView.ShowCompleted);
    v15 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(&v10[v14], &v11[v14], *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(&v10[v14], &v11[v14], v7);
      swift_storeEnumTagMultiPayload();
    }

    v10[v13[6]] = v11[v13[6]];
    v16 = v13[7];
    v17 = &v10[v16];
    v18 = &v11[v16];
    sub_2302E5DDC(&v10[v16], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
    v19 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      *v17 = *v18;
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
      v21 = &v17[v20];
      v25 = v18 + v20;
      v22 = *(v8 + 32);
      v22(&v17[v20]);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
      (v22)(&v21[*(v23 + 36)], &v25[*(v23 + 36)], v7);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v17, v18, *(*(v19 - 8) + 64));
    }
  }

  v10[v13[8]] = v11[v13[8]];
  return a1;
}

uint64_t sub_2302FC894()
{
  result = sub_23030EB58();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for REMRemindersListDataView.FetchConfiguration(319);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

char *_s32CompletedByDateBucketsInvocationC10ParametersVwCP(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v18 = *a2;
    *a1 = *a2;
    a1 = (v18 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_23030EB58();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    v9 = *(a3 + 20);
    v10 = sub_23030EE08();
    (*(*(v10 - 8) + 16))(&a1[v9], &a2[v9], v10);
    v11 = *(a3 + 24);
    v12 = &a1[v11];
    v13 = &a2[v11];
    a1[v11] = a2[v11];
    Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
    v15 = Configuration[5];
    v16 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      *&v12[v15] = *&v13[v15];

      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy(&v12[v15], &v13[v15], *(*(v16 - 8) + 64));
    }

    else
    {
      v8(&v12[v15], &v13[v15], v7);
      swift_storeEnumTagMultiPayload();
    }

    v12[Configuration[6]] = v13[Configuration[6]];
    v19 = Configuration[7];
    v20 = &v12[v19];
    v21 = &v13[v19];
    v22 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      *v20 = *v21;
      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
      v24 = v8;
      v25 = &v20[v23];
      v26 = &v21[v23];
      v24(&v20[v23], v26, v7);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
      v24(&v25[*(v27 + 36)], &v26[*(v27 + 36)], v7);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v20, v21, *(*(v22 - 8) + 64));
    }

    v12[Configuration[8]] = v13[Configuration[8]];
  }

  return a1;
}

uint64_t _s32CompletedByDateBucketsInvocationC10ParametersVwxx(uint64_t a1, uint64_t a2)
{
  v4 = sub_23030EB58();
  v15 = *(*(v4 - 8) + 8);
  v15(a1, v4);
  v5 = *(a2 + 20);
  v6 = sub_23030EE08();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
  v7 = a1 + *(a2 + 24);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v9 = *(Configuration + 20);
  type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v15(v7 + v9, v4);
  }

  v11 = v7 + *(Configuration + 28);
  type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    v13 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v15(v13, v4);
    v14 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78) + 36);

    return (v15)(v14, v4);
  }

  return result;
}

char *_s32CompletedByDateBucketsInvocationC10ParametersVwcp(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_23030EB58();
  v7 = *(*(v6 - 8) + 16);
  v7(a1, a2, v6);
  v8 = *(a3 + 20);
  v9 = sub_23030EE08();
  (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
  v10 = *(a3 + 24);
  v11 = &a1[v10];
  v12 = &a2[v10];
  a1[v10] = a2[v10];
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v14 = Configuration[5];
  v15 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *&v11[v14] = *&v12[v14];

    swift_storeEnumTagMultiPayload();
  }

  else if (EnumCaseMultiPayload)
  {
    memcpy(&v11[v14], &v12[v14], *(*(v15 - 8) + 64));
  }

  else
  {
    v7(&v11[v14], &v12[v14], v6);
    swift_storeEnumTagMultiPayload();
  }

  v11[Configuration[6]] = v12[Configuration[6]];
  v17 = Configuration[7];
  v18 = &v11[v17];
  v19 = &v12[v17];
  v20 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v18 = *v19;
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v22 = v7;
    v23 = &v18[v21];
    v24 = &v19[v21];
    v22(&v18[v21], v24, v6);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v22(&v23[*(v25 + 36)], &v24[*(v25 + 36)], v6);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v18, v19, *(*(v20 - 8) + 64));
  }

  v11[Configuration[8]] = v12[Configuration[8]];
  return a1;
}

uint64_t _s32CompletedByDateBucketsInvocationC10ParametersVwca(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23030EB58();
  v7 = *(v6 - 8);
  (*(v7 + 24))(a1, a2, v6);
  v8 = *(a3 + 20);
  v9 = sub_23030EE08();
  (*(*(v9 - 8) + 24))(a1 + v8, a2 + v8, v9);
  v10 = *(a3 + 24);
  v11 = a1 + v10;
  v12 = a2 + v10;
  *(a1 + v10) = *(a2 + v10);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v14 = Configuration;
  if (a1 == a2)
  {
    *(v11 + *(Configuration + 24)) = *(v12 + *(Configuration + 24));
    goto LABEL_12;
  }

  v15 = *(Configuration + 20);
  sub_2302E5DDC(v11 + v15, type metadata accessor for REMRemindersListDataView.ShowCompleted);
  v16 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *(v11 + v15) = *(v12 + v15);

    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    (*(v7 + 16))(v11 + v15, v12 + v15, v6);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    goto LABEL_9;
  }

  memcpy((v11 + v15), (v12 + v15), *(*(v16 - 8) + 64));
LABEL_9:
  *(v11 + v14[6]) = *(v12 + v14[6]);
  v18 = v14[7];
  v19 = (v11 + v18);
  v20 = (v12 + v18);
  sub_2302E5DDC(v11 + v18, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  v21 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v19 = *v20;
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v23 = &v19[v22];
    v27 = v20 + v22;
    v24 = *(v7 + 16);
    v24(&v19[v22]);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    (v24)(&v23[*(v25 + 36)], &v27[*(v25 + 36)], v6);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v19, v20, *(*(v21 - 8) + 64));
  }

LABEL_12:
  *(v11 + v14[8]) = *(v12 + v14[8]);
  return a1;
}

char *_s32CompletedByDateBucketsInvocationC10ParametersVwtk(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_23030EB58();
  v7 = *(*(v6 - 8) + 32);
  v7(a1, a2, v6);
  v8 = *(a3 + 20);
  v9 = sub_23030EE08();
  (*(*(v9 - 8) + 32))(&a1[v8], &a2[v8], v9);
  v10 = *(a3 + 24);
  v11 = &a1[v10];
  v12 = &a2[v10];
  a1[v10] = a2[v10];
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v14 = Configuration[5];
  v15 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(&v11[v14], &v12[v14], *(*(v15 - 8) + 64));
  }

  else
  {
    v7(&v11[v14], &v12[v14], v6);
    swift_storeEnumTagMultiPayload();
  }

  v11[Configuration[6]] = v12[Configuration[6]];
  v16 = Configuration[7];
  v17 = &v11[v16];
  v18 = &v12[v16];
  v19 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v17 = *v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v21 = v7;
    v22 = &v17[v20];
    v23 = &v18[v20];
    v21(&v17[v20], v23, v6);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v21(&v22[*(v24 + 36)], &v23[*(v24 + 36)], v6);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v17, v18, *(*(v19 - 8) + 64));
  }

  v11[Configuration[8]] = v12[Configuration[8]];
  return a1;
}

uint64_t _s32CompletedByDateBucketsInvocationC10ParametersVwta(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23030EB58();
  v7 = *(v6 - 8);
  (*(v7 + 40))(a1, a2, v6);
  v8 = *(a3 + 20);
  v9 = sub_23030EE08();
  (*(*(v9 - 8) + 40))(a1 + v8, a2 + v8, v9);
  v10 = *(a3 + 24);
  v11 = a1 + v10;
  v12 = a2 + v10;
  *(a1 + v10) = *(a2 + v10);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v14 = Configuration;
  if (a1 == a2)
  {
    *(v11 + *(Configuration + 24)) = *(v12 + *(Configuration + 24));
  }

  else
  {
    v15 = *(Configuration + 20);
    sub_2302E5DDC(v11 + v15, type metadata accessor for REMRemindersListDataView.ShowCompleted);
    v16 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy((v11 + v15), (v12 + v15), *(*(v16 - 8) + 64));
    }

    else
    {
      (*(v7 + 32))(v11 + v15, v12 + v15, v6);
      swift_storeEnumTagMultiPayload();
    }

    *(v11 + v14[6]) = *(v12 + v14[6]);
    v17 = v14[7];
    v18 = (v11 + v17);
    v19 = (v12 + v17);
    sub_2302E5DDC(v11 + v17, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
    v20 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      *v18 = *v19;
      v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
      v22 = &v18[v21];
      v26 = v19 + v21;
      v23 = *(v7 + 32);
      v23(&v18[v21]);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
      (v23)(&v22[*(v24 + 36)], &v26[*(v24 + 36)], v6);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v18, v19, *(*(v20 - 8) + 64));
    }
  }

  *(v11 + v14[8]) = *(v12 + v14[8]);
  return a1;
}

uint64_t sub_2302FD8D8()
{
  result = sub_23030EB58();
  if (v1 <= 0x3F)
  {
    result = sub_23030EE08();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for REMRemindersListDataView.FetchConfiguration(319);
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

void **_s25RecentlyDeletedInvocationC10ParametersVwCP(void **a1, void **a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v7 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v7 = a1;
    v8 = a3[5];
    v9 = sub_23030EB58();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);
    v12 = v4;
    if (v11(a2 + v8, 1, v9))
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
      memcpy(v7 + v8, a2 + v8, *(*(v13 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(v7 + v8, a2 + v8, v9);
      (*(v10 + 56))(v7 + v8, 0, 1, v9);
    }

    v14 = a3[6];
    v15 = v7 + v14;
    v16 = (a2 + v14);
    v17 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      *v15 = *v16;
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
      v19 = &v15[v18];
      v20 = v16 + v18;
      v21 = *(v10 + 16);
      v21(&v15[v18], v20, v9);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
      v21(&v19[*(v22 + 36)], &v20[*(v22 + 36)], v9);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v15, v16, *(*(v17 - 8) + 64));
    }

    *(v7 + a3[7]) = *(a2 + a3[7]);
  }

  return v7;
}

uint64_t _s25RecentlyDeletedInvocationC10ParametersVwxx(id *a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_23030EB58();
  v11 = *(v5 - 8);
  if (!(*(v11 + 48))(a1 + v4, 1, v5))
  {
    (*(v11 + 8))(a1 + v4, v5);
  }

  v6 = a1 + *(a2 + 24);
  type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    v8 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48)];
    v10 = *(v11 + 8);
    v10(v8, v5);
    v9 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78) + 36)];

    return (v10)(v9, v5);
  }

  return result;
}

void **_s25RecentlyDeletedInvocationC10ParametersVwcp(void **a1, void **a2, int *a3)
{
  v6 = *a2;
  *a1 = *a2;
  v7 = a3[5];
  v8 = sub_23030EB58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v6;
  if (v10(a2 + v7, 1, v8))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    memcpy(a1 + v7, a2 + v7, *(*(v12 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a1 + v7, a2 + v7, v8);
    (*(v9 + 56))(a1 + v7, 0, 1, v8);
  }

  v13 = a3[6];
  v14 = a1 + v13;
  v15 = (a2 + v13);
  v16 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v14 = *v15;
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v18 = &v14[v17];
    v19 = v15 + v17;
    v20 = *(v9 + 16);
    v20(&v14[v17], v19, v8);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v20(&v18[*(v21 + 36)], &v19[*(v21 + 36)], v8);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v14, v15, *(*(v16 - 8) + 64));
  }

  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

void **_s25RecentlyDeletedInvocationC10ParametersVwca(void **a1, void **a2, int *a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = a3[5];
  v10 = sub_23030EB58();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(a1 + v9, 1, v10);
  v14 = v12(a2 + v9, 1, v10);
  if (v13)
  {
    if (!v14)
    {
      (*(v11 + 16))(a1 + v9, a2 + v9, v10);
      (*(v11 + 56))(a1 + v9, 0, 1, v10);
      if (a1 == a2)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

LABEL_7:
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    memcpy(a1 + v9, a2 + v9, *(*(v15 - 8) + 64));
    if (a1 == a2)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v14)
  {
    (*(v11 + 8))(a1 + v9, v10);
    goto LABEL_7;
  }

  (*(v11 + 24))(a1 + v9, a2 + v9, v10);
  if (a1 == a2)
  {
    goto LABEL_11;
  }

LABEL_8:
  v16 = a3[6];
  v17 = a1 + v16;
  v18 = (a2 + v16);
  sub_2302E5DDC(a1 + v16, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  v19 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v17 = *v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v21 = &v17[v20];
    v22 = v18 + v20;
    v23 = *(v11 + 16);
    v23(&v17[v20], v22, v10);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v23(&v21[*(v24 + 36)], &v22[*(v24 + 36)], v10);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v17, v18, *(*(v19 - 8) + 64));
  }

LABEL_11:
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

char *_s25RecentlyDeletedInvocationC10ParametersVwtk(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = sub_23030EB58();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(&a2[v6], 1, v7))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    memcpy(&a1[v6], &a2[v6], *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 1, v7);
  }

  v10 = a3[6];
  v11 = &a1[v10];
  v12 = &a2[v10];
  v13 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v11 = *v12;
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v15 = &v11[v14];
    v16 = &v12[v14];
    v17 = *(v8 + 32);
    v17(&v11[v14], v16, v7);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v17(&v15[*(v18 + 36)], &v16[*(v18 + 36)], v7);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v11, v12, *(*(v13 - 8) + 64));
  }

  a1[a3[7]] = a2[a3[7]];
  return a1;
}

void **_s25RecentlyDeletedInvocationC10ParametersVwta(void **a1, void **a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = a3[5];
  v8 = sub_23030EB58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1 + v7, 1, v8);
  v12 = v10(a2 + v7, 1, v8);
  if (v11)
  {
    if (!v12)
    {
      (*(v9 + 32))(a1 + v7, a2 + v7, v8);
      (*(v9 + 56))(a1 + v7, 0, 1, v8);
      if (a1 == a2)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

LABEL_7:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    memcpy(a1 + v7, a2 + v7, *(*(v13 - 8) + 64));
    if (a1 == a2)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v12)
  {
    (*(v9 + 8))(a1 + v7, v8);
    goto LABEL_7;
  }

  (*(v9 + 40))(a1 + v7, a2 + v7, v8);
  if (a1 == a2)
  {
    goto LABEL_11;
  }

LABEL_8:
  v14 = a3[6];
  v15 = a1 + v14;
  v16 = (a2 + v14);
  sub_2302E5DDC(a1 + v14, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  v17 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v15 = *v16;
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v19 = &v15[v18];
    v20 = v16 + v18;
    v21 = *(v9 + 32);
    v21(&v15[v18], v20, v8);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v21(&v19[*(v22 + 36)], &v20[*(v22 + 36)], v8);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v15, v16, *(*(v17 - 8) + 64));
  }

LABEL_11:
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

void sub_2302FE770()
{
  sub_23005AFA0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for REMRemindersListDataView.RemindersPrefetch(319);
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

char *_s18AssignedInvocationC10ParametersVwCP(char *a1, char *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *v4 = *a2;
    v4 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    v7 = a3[5];
    v8 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      *&v4[v7] = *&a2[v7];

      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy(&v4[v7], &a2[v7], *(*(v8 - 8) + 64));
    }

    else
    {
      v10 = sub_23030EB58();
      (*(*(v10 - 8) + 16))(&v4[v7], &a2[v7], v10);
      swift_storeEnumTagMultiPayload();
    }

    v12 = a3[7];
    v4[a3[6]] = a2[a3[6]];
    v13 = &v4[v12];
    v14 = &a2[v12];
    v15 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      *v13 = *v14;
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
      v17 = &v13[v16];
      v18 = &v14[v16];
      v19 = sub_23030EB58();
      v20 = *(*(v19 - 8) + 16);
      v20(v17, v18, v19);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
      v20(&v17[*(v21 + 36)], &v18[*(v21 + 36)], v19);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v13, v14, *(*(v15 - 8) + 64));
    }

    *&v4[a3[8]] = *&a2[a3[8]];
  }

  return v4;
}

uint64_t _s18AssignedInvocationC10ParametersVwxx(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v6 = sub_23030EB58();
    (*(*(v6 - 8) + 8))(a1 + v4, v6);
  }

  v7 = a1 + *(a2 + 28);
  type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v8 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v9 = sub_23030EB58();
    v10 = *(*(v9 - 8) + 8);
    v10(v8, v9);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v10(v8 + *(v11 + 36), v9);
  }
}

_BYTE *_s18AssignedInvocationC10ParametersVwcp(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *&a1[v6] = *&a2[v6];

    swift_storeEnumTagMultiPayload();
  }

  else if (EnumCaseMultiPayload)
  {
    memcpy(&a1[v6], &a2[v6], *(*(v7 - 8) + 64));
  }

  else
  {
    v9 = sub_23030EB58();
    (*(*(v9 - 8) + 16))(&a1[v6], &a2[v6], v9);
    swift_storeEnumTagMultiPayload();
  }

  v10 = a3[7];
  a1[a3[6]] = a2[a3[6]];
  v11 = &a1[v10];
  v12 = &a2[v10];
  v13 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v11 = *v12;
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v15 = v11 + v14;
    v16 = v12 + v14;
    v17 = sub_23030EB58();
    v18 = *(*(v17 - 8) + 16);
    v18(v15, v16, v17);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v18(&v15[*(v19 + 36)], &v16[*(v19 + 36)], v17);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v11, v12, *(*(v13 - 8) + 64));
  }

  *&a1[a3[8]] = *&a2[a3[8]];

  return a1;
}

_BYTE *_s18AssignedInvocationC10ParametersVwca(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  if (a1 == a2)
  {
    a1[a3[6]] = a2[a3[6]];
    goto LABEL_12;
  }

  v6 = a3[5];
  sub_2302E5DDC(&a1[v6], type metadata accessor for REMRemindersListDataView.ShowCompleted);
  v7 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *&a1[v6] = *&a2[v6];

    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    v9 = sub_23030EB58();
    (*(*(v9 - 8) + 16))(&a1[v6], &a2[v6], v9);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    goto LABEL_9;
  }

  memcpy(&a1[v6], &a2[v6], *(*(v7 - 8) + 64));
LABEL_9:
  a1[a3[6]] = a2[a3[6]];
  v10 = a3[7];
  v11 = &a1[v10];
  v12 = &a2[v10];
  sub_2302E5DDC(&a1[v10], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  v13 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v11 = *v12;
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v15 = v11 + v14;
    v16 = v12 + v14;
    v17 = sub_23030EB58();
    v18 = *(*(v17 - 8) + 16);
    v18(v15, v16, v17);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v18(&v15[*(v19 + 36)], &v16[*(v19 + 36)], v17);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v11, v12, *(*(v13 - 8) + 64));
  }

LABEL_12:
  *&a1[a3[8]] = *&a2[a3[8]];

  return a1;
}

_BYTE *_s18AssignedInvocationC10ParametersVwtk(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(&a1[v6], &a2[v6], *(*(v7 - 8) + 64));
  }

  else
  {
    v8 = sub_23030EB58();
    (*(*(v8 - 8) + 32))(&a1[v6], &a2[v6], v8);
    swift_storeEnumTagMultiPayload();
  }

  v9 = a3[7];
  a1[a3[6]] = a2[a3[6]];
  v10 = &a1[v9];
  v11 = &a2[v9];
  v12 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v10 = *v11;
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v14 = v10 + v13;
    v15 = v11 + v13;
    v16 = sub_23030EB58();
    v17 = *(*(v16 - 8) + 32);
    v17(v14, v15, v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v17(&v14[*(v18 + 36)], &v15[*(v18 + 36)], v16);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v10, v11, *(*(v12 - 8) + 64));
  }

  *&a1[a3[8]] = *&a2[a3[8]];
  return a1;
}

_BYTE *_s18AssignedInvocationC10ParametersVwta(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  if (a1 == a2)
  {
    a1[a3[6]] = a2[a3[6]];
  }

  else
  {
    v6 = a3[5];
    sub_2302E5DDC(&a1[v6], type metadata accessor for REMRemindersListDataView.ShowCompleted);
    v7 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(&a1[v6], &a2[v6], *(*(v7 - 8) + 64));
    }

    else
    {
      v8 = sub_23030EB58();
      (*(*(v8 - 8) + 32))(&a1[v6], &a2[v6], v8);
      swift_storeEnumTagMultiPayload();
    }

    v9 = a3[7];
    a1[a3[6]] = a2[a3[6]];
    v10 = &a1[v9];
    v11 = &a2[v9];
    sub_2302E5DDC(&a1[v9], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
    v12 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      *v10 = *v11;
      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
      v14 = v10 + v13;
      v15 = v11 + v13;
      v16 = sub_23030EB58();
      v17 = *(*(v16 - 8) + 32);
      v17(v14, v15, v16);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
      v17(&v14[*(v18 + 36)], &v15[*(v18 + 36)], v16);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v10, v11, *(*(v12 - 8) + 64));
    }
  }

  *&a1[a3[8]] = *&a2[a3[8]];

  return a1;
}

uint64_t sub_2302FF52C()
{
  result = type metadata accessor for REMRemindersListDataView.ShowCompleted(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(319);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void *_s29DEBUG_AssignedCountInvocationC10ParametersVwca(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *_s29DEBUG_AssignedCountInvocationC10ParametersVwta(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t _s16SearchInvocationC10ParametersVwCP(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v7 = v4 + ((v3 + 16) & ~v3);
  }

  else
  {
    v7 = a1;
    *(a1 + 8) = *(a2 + 8);
    v8 = *(a3 + 24);
    v9 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      *(v7 + v8) = *(a2 + v8);

      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy((v7 + v8), a2 + v8, *(*(v9 - 8) + 64));
    }

    else
    {
      v11 = sub_23030EB58();
      (*(*(v11 - 8) + 16))(v7 + v8, a2 + v8, v11);
      swift_storeEnumTagMultiPayload();
    }

    *(v7 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  }

  return v7;
}

uint64_t _s16SearchInvocationC10ParametersVwxx(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 24);
  type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
  }

  else if (!result)
  {
    v6 = sub_23030EB58();
    v7 = *(*(v6 - 8) + 8);

    return v7(a1 + v4, v6);
  }

  return result;
}

uint64_t _s16SearchInvocationC10ParametersVwcp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *(a1 + v6) = *(a2 + v6);

    swift_storeEnumTagMultiPayload();
  }

  else if (EnumCaseMultiPayload)
  {
    memcpy((a1 + v6), (a2 + v6), *(*(v7 - 8) + 64));
  }

  else
  {
    v9 = sub_23030EB58();
    (*(*(v9 - 8) + 16))(a1 + v6, a2 + v6, v9);
    swift_storeEnumTagMultiPayload();
  }

  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  return a1;
}

uint64_t _s16SearchInvocationC10ParametersVwca(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  if (a1 != a2)
  {
    v6 = *(a3 + 24);
    sub_2302E5DDC(a1 + v6, type metadata accessor for REMRemindersListDataView.ShowCompleted);
    v7 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      *(a1 + v6) = *(a2 + v6);

      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy((a1 + v6), (a2 + v6), *(*(v7 - 8) + 64));
    }

    else
    {
      v9 = sub_23030EB58();
      (*(*(v9 - 8) + 16))(a1 + v6, a2 + v6, v9);
      swift_storeEnumTagMultiPayload();
    }
  }

  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  return a1;
}

uint64_t _s16SearchInvocationC10ParametersVwtk(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy((a1 + v6), (a2 + v6), *(*(v7 - 8) + 64));
  }

  else
  {
    v8 = sub_23030EB58();
    (*(*(v8 - 8) + 32))(a1 + v6, a2 + v6, v8);
    swift_storeEnumTagMultiPayload();
  }

  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  return a1;
}

uint64_t _s16SearchInvocationC10ParametersVwta(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  if (a1 != a2)
  {
    v6 = *(a3 + 24);
    sub_2302E5DDC(a1 + v6, type metadata accessor for REMRemindersListDataView.ShowCompleted);
    v7 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy((a1 + v6), (a2 + v6), *(*(v7 - 8) + 64));
    }

    else
    {
      v8 = sub_23030EB58();
      (*(*(v8 - 8) + 32))(a1 + v6, a2 + v6, v8);
      swift_storeEnumTagMultiPayload();
    }
  }

  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  return a1;
}

uint64_t sub_2302FFD78()
{
  result = type metadata accessor for REMRemindersListDataView.ShowCompleted(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *_s20SearchFlatInvocationC10ParametersVwCP(void *a1, void *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v5 = a1;
    v6 = *(a3 + 20);
    v7 = a1 + v6;
    v8 = a2 + v6;
    *(a1 + v6) = *(a2 + v6);
    Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
    v10 = Configuration[5];
    v11 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      *&v7[v10] = *&v8[v10];

      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy(&v7[v10], &v8[v10], *(*(v11 - 8) + 64));
    }

    else
    {
      v13 = sub_23030EB58();
      (*(*(v13 - 8) + 16))(&v7[v10], &v8[v10], v13);
      swift_storeEnumTagMultiPayload();
    }

    v7[Configuration[6]] = v8[Configuration[6]];
    v14 = Configuration[7];
    v15 = &v7[v14];
    v16 = &v8[v14];
    v17 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      *v15 = *v16;
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
      v19 = &v15[v18];
      v20 = &v16[v18];
      v21 = sub_23030EB58();
      v22 = *(*(v21 - 8) + 16);
      v22(v19, v20, v21);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
      v22(&v19[*(v23 + 36)], &v20[*(v23 + 36)], v21);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v15, v16, *(*(v17 - 8) + 64));
    }

    v7[Configuration[8]] = v8[Configuration[8]];
  }

  return v5;
}

uint64_t _s20SearchFlatInvocationC10ParametersVwxx(uint64_t a1, uint64_t a2)
{

  v4 = a1 + *(a2 + 20);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v6 = *(Configuration + 20);
  type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v8 = sub_23030EB58();
    (*(*(v8 - 8) + 8))(v4 + v6, v8);
  }

  v9 = v4 + *(Configuration + 28);
  type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    v11 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v12 = sub_23030EB58();
    v14 = *(*(v12 - 8) + 8);
    (v14)((v12 - 8), v11, v12);
    v13 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78) + 36);

    return v14(v13, v12);
  }

  return result;
}

void *_s20SearchFlatInvocationC10ParametersVwcp(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  *(a1 + v4) = *(a2 + v4);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v8 = Configuration[5];
  v9 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *&v5[v8] = *&v6[v8];

    swift_storeEnumTagMultiPayload();
  }

  else if (EnumCaseMultiPayload)
  {
    memcpy(&v5[v8], &v6[v8], *(*(v9 - 8) + 64));
  }

  else
  {
    v11 = sub_23030EB58();
    (*(*(v11 - 8) + 16))(&v5[v8], &v6[v8], v11);
    swift_storeEnumTagMultiPayload();
  }

  v5[Configuration[6]] = v6[Configuration[6]];
  v12 = Configuration[7];
  v13 = &v5[v12];
  v14 = &v6[v12];
  v15 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v13 = *v14;
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v17 = &v13[v16];
    v18 = &v14[v16];
    v19 = sub_23030EB58();
    v20 = *(*(v19 - 8) + 16);
    v20(v17, v18, v19);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v20(&v17[*(v21 + 36)], &v18[*(v21 + 36)], v19);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v13, v14, *(*(v15 - 8) + 64));
  }

  v5[Configuration[8]] = v6[Configuration[8]];
  return a1;
}

void *_s20SearchFlatInvocationC10ParametersVwca(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(a3 + 20);
  v7 = a1 + v6;
  v8 = a2 + v6;
  *(a1 + v6) = *(a2 + v6);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v10 = Configuration;
  if (a1 == a2)
  {
    v7[*(Configuration + 24)] = v8[*(Configuration + 24)];
    goto LABEL_12;
  }

  v11 = *(Configuration + 20);
  sub_2302E5DDC(&v7[v11], type metadata accessor for REMRemindersListDataView.ShowCompleted);
  v12 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *&v7[v11] = *&v8[v11];

    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    v14 = sub_23030EB58();
    (*(*(v14 - 8) + 16))(&v7[v11], &v8[v11], v14);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    goto LABEL_9;
  }

  memcpy(&v7[v11], &v8[v11], *(*(v12 - 8) + 64));
LABEL_9:
  v7[v10[6]] = v8[v10[6]];
  v15 = v10[7];
  v16 = &v7[v15];
  v17 = &v8[v15];
  sub_2302E5DDC(&v7[v15], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  v18 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v16 = *v17;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v27 = v10;
    v20 = &v16[v19];
    v21 = &v17[v19];
    v22 = sub_23030EB58();
    v23 = *(*(v22 - 8) + 16);
    v23(v20, v21, v22);
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78) + 36);
    v25 = &v20[v24];
    v10 = v27;
    v23(v25, &v21[v24], v22);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v16, v17, *(*(v18 - 8) + 64));
  }

LABEL_12:
  v7[v10[8]] = v8[v10[8]];
  return a1;
}

void *_s20SearchFlatInvocationC10ParametersVwta(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(a3 + 20);
  v7 = a1 + v6;
  v8 = a2 + v6;
  *(a1 + v6) = *(a2 + v6);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v10 = Configuration;
  if (a1 == a2)
  {
    v7[*(Configuration + 24)] = v8[*(Configuration + 24)];
  }

  else
  {
    v11 = *(Configuration + 20);
    sub_2302E5DDC(&v7[v11], type metadata accessor for REMRemindersListDataView.ShowCompleted);
    v12 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(&v7[v11], &v8[v11], *(*(v12 - 8) + 64));
    }

    else
    {
      v13 = sub_23030EB58();
      (*(*(v13 - 8) + 32))(&v7[v11], &v8[v11], v13);
      swift_storeEnumTagMultiPayload();
    }

    v7[v10[6]] = v8[v10[6]];
    v14 = v10[7];
    v15 = &v7[v14];
    v16 = &v8[v14];
    sub_2302E5DDC(&v7[v14], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
    v17 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      *v15 = *v16;
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
      v19 = &v15[v18];
      v20 = &v16[v18];
      v21 = sub_23030EB58();
      v22 = *(*(v21 - 8) + 32);
      v22(v19, v20, v21);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
      v22(&v19[*(v23 + 36)], &v20[*(v23 + 36)], v21);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v15, v16, *(*(v17 - 8) + 64));
    }
  }

  v7[v10[8]] = v8[v10[8]];
  return a1;
}

char *sub_230300A34(char *a1, char *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *v4 = *a2;
    v4 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    v7 = a3[5];
    v8 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      *&v4[v7] = *&a2[v7];

      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy(&v4[v7], &a2[v7], *(*(v8 - 8) + 64));
    }

    else
    {
      v10 = sub_23030EB58();
      (*(*(v10 - 8) + 16))(&v4[v7], &a2[v7], v10);
      swift_storeEnumTagMultiPayload();
    }

    v12 = a3[7];
    v4[a3[6]] = a2[a3[6]];
    v13 = &v4[v12];
    v14 = &a2[v12];
    v15 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      *v13 = *v14;
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
      v17 = &v13[v16];
      v18 = &v14[v16];
      v19 = sub_23030EB58();
      v20 = *(*(v19 - 8) + 16);
      v20(v17, v18, v19);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
      v20(&v17[*(v21 + 36)], &v18[*(v21 + 36)], v19);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v13, v14, *(*(v15 - 8) + 64));
    }
  }

  return v4;
}

_BYTE *sub_230300C84(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *&a1[v6] = *&a2[v6];

    swift_storeEnumTagMultiPayload();
  }

  else if (EnumCaseMultiPayload)
  {
    memcpy(&a1[v6], &a2[v6], *(*(v7 - 8) + 64));
  }

  else
  {
    v9 = sub_23030EB58();
    (*(*(v9 - 8) + 16))(&a1[v6], &a2[v6], v9);
    swift_storeEnumTagMultiPayload();
  }

  v10 = a3[7];
  a1[a3[6]] = a2[a3[6]];
  v11 = &a1[v10];
  v12 = &a2[v10];
  v13 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v11 = *v12;
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v15 = v11 + v14;
    v16 = v12 + v14;
    v17 = sub_23030EB58();
    v18 = *(*(v17 - 8) + 16);
    v18(v15, v16, v17);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v18(&v15[*(v19 + 36)], &v16[*(v19 + 36)], v17);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v11, v12, *(*(v13 - 8) + 64));
  }

  return a1;
}

_BYTE *sub_230300E88(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  if (a1 == a2)
  {
    a1[a3[6]] = a2[a3[6]];
    return a1;
  }

  v6 = a3[5];
  sub_2302E5DDC(&a1[v6], type metadata accessor for REMRemindersListDataView.ShowCompleted);
  v7 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *&a1[v6] = *&a2[v6];

    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    v9 = sub_23030EB58();
    (*(*(v9 - 8) + 16))(&a1[v6], &a2[v6], v9);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    goto LABEL_9;
  }

  memcpy(&a1[v6], &a2[v6], *(*(v7 - 8) + 64));
LABEL_9:
  a1[a3[6]] = a2[a3[6]];
  v10 = a3[7];
  v11 = &a1[v10];
  v12 = &a2[v10];
  sub_2302E5DDC(&a1[v10], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  v13 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v11 = *v12;
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v15 = v11 + v14;
    v16 = v12 + v14;
    v17 = sub_23030EB58();
    v18 = *(*(v17 - 8) + 16);
    v18(v15, v16, v17);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v18(&v15[*(v19 + 36)], &v16[*(v19 + 36)], v17);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v11, v12, *(*(v13 - 8) + 64));
  }

  return a1;
}

_BYTE *sub_2303010DC(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(&a1[v6], &a2[v6], *(*(v7 - 8) + 64));
  }

  else
  {
    v8 = sub_23030EB58();
    (*(*(v8 - 8) + 32))(&a1[v6], &a2[v6], v8);
    swift_storeEnumTagMultiPayload();
  }

  v9 = a3[7];
  a1[a3[6]] = a2[a3[6]];
  v10 = &a1[v9];
  v11 = &a2[v9];
  v12 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v10 = *v11;
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v14 = v10 + v13;
    v15 = v11 + v13;
    v16 = sub_23030EB58();
    v17 = *(*(v16 - 8) + 32);
    v17(v14, v15, v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v17(&v14[*(v18 + 36)], &v15[*(v18 + 36)], v16);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v10, v11, *(*(v12 - 8) + 64));
  }

  return a1;
}

_BYTE *sub_2303012B8(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  if (a1 == a2)
  {
    a1[a3[6]] = a2[a3[6]];
  }

  else
  {
    v6 = a3[5];
    sub_2302E5DDC(&a1[v6], type metadata accessor for REMRemindersListDataView.ShowCompleted);
    v7 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(&a1[v6], &a2[v6], *(*(v7 - 8) + 64));
    }

    else
    {
      v8 = sub_23030EB58();
      (*(*(v8 - 8) + 32))(&a1[v6], &a2[v6], v8);
      swift_storeEnumTagMultiPayload();
    }

    v9 = a3[7];
    a1[a3[6]] = a2[a3[6]];
    v10 = &a1[v9];
    v11 = &a2[v9];
    sub_2302E5DDC(&a1[v9], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
    v12 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      *v10 = *v11;
      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
      v14 = v10 + v13;
      v15 = v11 + v13;
      v16 = sub_23030EB58();
      v17 = *(*(v16 - 8) + 32);
      v17(v14, v15, v16);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
      v17(&v14[*(v18 + 36)], &v15[*(v18 + 36)], v16);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v10, v11, *(*(v12 - 8) + 64));
    }
  }

  return a1;
}

uint64_t __swift_get_extra_inhabitant_index_36Tm(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 254)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t __swift_store_extra_inhabitant_index_37Tm(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 254)
  {
    *(a1 + a4[6]) = a2 + 1;
  }

  else
  {
    v13 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_230301764()
{
  result = type metadata accessor for REMRemindersListDataView.ShowCompleted(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(319);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

unint64_t _s16TaggedInvocationC10ParametersVwCP(unint64_t a1, uint64_t a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = v14 + ((v5 + 16) & ~v5);
  }

  else
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    v9 = *(a2 + 16);
    sub_2302727E4(*a2, v8, v9);
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    *(a1 + 17) = *(a2 + 17);
    v10 = a3[6];
    v11 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      *(a1 + v10) = *(a2 + v10);

      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy((a1 + v10), (a2 + v10), *(*(v11 - 8) + 64));
    }

    else
    {
      v13 = sub_23030EB58();
      (*(*(v13 - 8) + 16))(a1 + v10, a2 + v10, v13);
      swift_storeEnumTagMultiPayload();
    }

    v15 = a3[8];
    *(a1 + a3[7]) = *(a2 + a3[7]);
    v16 = (a1 + v15);
    v17 = (a2 + v15);
    v18 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      *v16 = *v17;
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
      v20 = v16 + v19;
      v21 = v17 + v19;
      v22 = sub_23030EB58();
      v23 = *(*(v22 - 8) + 16);
      v23(v20, v21, v22);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
      v23(&v20[*(v24 + 36)], &v21[*(v24 + 36)], v22);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v16, v17, *(*(v18 - 8) + 64));
    }

    v25 = a3[10];
    *(a1 + a3[9]) = *(a2 + a3[9]);
    *(a1 + v25) = *(a2 + v25);
  }

  return a1;
}

uint64_t _s16TaggedInvocationC10ParametersVwxx(uint64_t a1, uint64_t a2)
{
  sub_230276494(*a1, *(a1 + 8), *(a1 + 16));
  v4 = *(a2 + 24);
  type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v6 = sub_23030EB58();
    (*(*(v6 - 8) + 8))(a1 + v4, v6);
  }

  v7 = a1 + *(a2 + 32);
  type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    v9 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v10 = sub_23030EB58();
    v12 = *(*(v10 - 8) + 8);
    (v12)((v10 - 8), v9, v10);
    v11 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78) + 36);

    return v12(v11, v10);
  }

  return result;
}

uint64_t _s16TaggedInvocationC10ParametersVwcp(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  sub_2302727E4(*a2, v7, v8);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 17) = *(a2 + 17);
  v9 = a3[6];
  v10 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *(a1 + v9) = *(a2 + v9);

    swift_storeEnumTagMultiPayload();
  }

  else if (EnumCaseMultiPayload)
  {
    memcpy((a1 + v9), (a2 + v9), *(*(v10 - 8) + 64));
  }

  else
  {
    v12 = sub_23030EB58();
    (*(*(v12 - 8) + 16))(a1 + v9, a2 + v9, v12);
    swift_storeEnumTagMultiPayload();
  }

  v13 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  v16 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v14 = *v15;
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v18 = v14 + v17;
    v19 = v15 + v17;
    v20 = sub_23030EB58();
    v21 = *(*(v20 - 8) + 16);
    v21(v18, v19, v20);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v21(&v18[*(v22 + 36)], &v19[*(v22 + 36)], v20);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v14, v15, *(*(v16 - 8) + 64));
  }

  v23 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v23) = *(a2 + v23);
  return a1;
}

uint64_t _s16TaggedInvocationC10ParametersVwca(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  sub_2302727E4(*a2, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  v11 = *(a1 + 16);
  *(a1 + 16) = v8;
  sub_230276494(v9, v10, v11);
  *(a1 + 17) = *(a2 + 17);
  if (a1 == a2)
  {
    *(a1 + a3[7]) = *(a2 + a3[7]);
    goto LABEL_12;
  }

  v12 = a3[6];
  sub_2302E5DDC(a1 + v12, type metadata accessor for REMRemindersListDataView.ShowCompleted);
  v13 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *(a1 + v12) = *(a2 + v12);

    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    v15 = sub_23030EB58();
    (*(*(v15 - 8) + 16))(a1 + v12, a2 + v12, v15);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    goto LABEL_9;
  }

  memcpy((a1 + v12), (a2 + v12), *(*(v13 - 8) + 64));
LABEL_9:
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v16 = a3[8];
  v17 = (a1 + v16);
  v18 = (a2 + v16);
  sub_2302E5DDC(a1 + v16, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  v19 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v17 = *v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v21 = v17 + v20;
    v22 = v18 + v20;
    v23 = sub_23030EB58();
    v24 = *(*(v23 - 8) + 16);
    v24(v21, v22, v23);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v24(&v21[*(v25 + 36)], &v22[*(v25 + 36)], v23);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v17, v18, *(*(v19 - 8) + 64));
  }

LABEL_12:
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  return a1;
}

uint64_t _s16TaggedInvocationC10ParametersVwtk(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v6 = a3[6];
  v7 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy((a1 + v6), (a2 + v6), *(*(v7 - 8) + 64));
  }

  else
  {
    v8 = sub_23030EB58();
    (*(*(v8 - 8) + 32))(a1 + v6, a2 + v6, v8);
    swift_storeEnumTagMultiPayload();
  }

  v9 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  v12 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v10 = *v11;
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v14 = v10 + v13;
    v15 = v11 + v13;
    v16 = sub_23030EB58();
    v17 = *(*(v16 - 8) + 32);
    v17(v14, v15, v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v17(&v14[*(v18 + 36)], &v15[*(v18 + 36)], v16);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v10, v11, *(*(v12 - 8) + 64));
  }

  v19 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v19) = *(a2 + v19);
  return a1;
}

uint64_t _s16TaggedInvocationC10ParametersVwta(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 16);
  v7 = *a1;
  v8 = *(a1 + 8);
  *a1 = *a2;
  v9 = *(a1 + 16);
  *(a1 + 16) = v6;
  sub_230276494(v7, v8, v9);
  *(a1 + 17) = *(a2 + 17);
  if (a1 == a2)
  {
    *(a1 + a3[7]) = *(a2 + a3[7]);
  }

  else
  {
    v10 = a3[6];
    sub_2302E5DDC(a1 + v10, type metadata accessor for REMRemindersListDataView.ShowCompleted);
    v11 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy((a1 + v10), (a2 + v10), *(*(v11 - 8) + 64));
    }

    else
    {
      v12 = sub_23030EB58();
      (*(*(v12 - 8) + 32))(a1 + v10, a2 + v10, v12);
      swift_storeEnumTagMultiPayload();
    }

    v13 = a3[8];
    *(a1 + a3[7]) = *(a2 + a3[7]);
    v14 = (a1 + v13);
    v15 = (a2 + v13);
    sub_2302E5DDC(a1 + v13, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
    v16 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      *v14 = *v15;
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
      v18 = v14 + v17;
      v19 = v15 + v17;
      v20 = sub_23030EB58();
      v21 = *(*(v20 - 8) + 32);
      v21(v18, v19, v20);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
      v21(&v18[*(v22 + 36)], &v19[*(v22 + 36)], v20);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v14, v15, *(*(v16 - 8) + 64));
    }
  }

  v23 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v23) = *(a2 + v23);
  return a1;
}

uint64_t sub_2303025F4()
{
  result = type metadata accessor for REMRemindersListDataView.ShowCompleted(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(319);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void **_s22ListSectionsInvocationC10ParametersVwCP(void **a1, void **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v5 = a1;
    v6 = *(a3 + 20);
    v7 = a1 + v6;
    v8 = a2 + v6;
    *(a1 + v6) = *(a2 + v6);
    Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
    v10 = Configuration[5];
    v11 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    v12 = v4;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      *&v7[v10] = *&v8[v10];

      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy(&v7[v10], &v8[v10], *(*(v11 - 8) + 64));
    }

    else
    {
      v14 = sub_23030EB58();
      (*(*(v14 - 8) + 16))(&v7[v10], &v8[v10], v14);
      swift_storeEnumTagMultiPayload();
    }

    v7[Configuration[6]] = v8[Configuration[6]];
    v15 = Configuration[7];
    v16 = &v7[v15];
    v17 = &v8[v15];
    v18 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      *v16 = *v17;
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
      v20 = &v16[v19];
      v21 = &v17[v19];
      v22 = sub_23030EB58();
      v23 = *(*(v22 - 8) + 16);
      v23(v20, v21, v22);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
      v23(&v20[*(v24 + 36)], &v21[*(v24 + 36)], v22);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v16, v17, *(*(v18 - 8) + 64));
    }

    v7[Configuration[8]] = v8[Configuration[8]];
  }

  return v5;
}

uint64_t _s22ListSectionsInvocationC10ParametersVwxx(id *a1, uint64_t a2)
{
  v4 = a1 + *(a2 + 20);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v6 = *(Configuration + 20);
  type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v8 = sub_23030EB58();
    (*(*(v8 - 8) + 8))(&v4[v6], v8);
  }

  v9 = &v4[*(Configuration + 28)];
  type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    v11 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48)];
    v12 = sub_23030EB58();
    v14 = *(*(v12 - 8) + 8);
    (v14)((v12 - 8), v11, v12);
    v13 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78) + 36)];

    return v14(v13, v12);
  }

  return result;
}

void **_s22ListSectionsInvocationC10ParametersVwcp(void **a1, void **a2, uint64_t a3)
{
  v4 = *a2;
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = a1 + v5;
  v7 = a2 + v5;
  *(a1 + v5) = *(a2 + v5);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v9 = Configuration[5];
  v10 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  v11 = v4;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *&v6[v9] = *&v7[v9];

    swift_storeEnumTagMultiPayload();
  }

  else if (EnumCaseMultiPayload)
  {
    memcpy(&v6[v9], &v7[v9], *(*(v10 - 8) + 64));
  }

  else
  {
    v13 = sub_23030EB58();
    (*(*(v13 - 8) + 16))(&v6[v9], &v7[v9], v13);
    swift_storeEnumTagMultiPayload();
  }

  v6[Configuration[6]] = v7[Configuration[6]];
  v14 = Configuration[7];
  v15 = &v6[v14];
  v16 = &v7[v14];
  v17 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v15 = *v16;
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v19 = &v15[v18];
    v20 = &v16[v18];
    v21 = sub_23030EB58();
    v22 = *(*(v21 - 8) + 16);
    v22(v19, v20, v21);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v22(&v19[*(v23 + 36)], &v20[*(v23 + 36)], v21);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v15, v16, *(*(v17 - 8) + 64));
  }

  v6[Configuration[8]] = v7[Configuration[8]];
  return a1;
}

void **_s22ListSectionsInvocationC10ParametersVwca(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a3 + 20);
  v10 = a1 + v9;
  v11 = a2 + v9;
  *(a1 + v9) = *(a2 + v9);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v13 = Configuration;
  if (a1 == a2)
  {
    v10[*(Configuration + 24)] = v11[*(Configuration + 24)];
    goto LABEL_12;
  }

  v14 = *(Configuration + 20);
  sub_2302E5DDC(&v10[v14], type metadata accessor for REMRemindersListDataView.ShowCompleted);
  v15 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *&v10[v14] = *&v11[v14];

    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    v17 = sub_23030EB58();
    (*(*(v17 - 8) + 16))(&v10[v14], &v11[v14], v17);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    goto LABEL_9;
  }

  memcpy(&v10[v14], &v11[v14], *(*(v15 - 8) + 64));
LABEL_9:
  v10[v13[6]] = v11[v13[6]];
  v18 = v13[7];
  v19 = &v10[v18];
  v20 = &v11[v18];
  sub_2302E5DDC(&v10[v18], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  v21 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v19 = *v20;
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v30 = v13;
    v23 = &v19[v22];
    v24 = &v20[v22];
    v25 = sub_23030EB58();
    v26 = *(*(v25 - 8) + 16);
    v26(v23, v24, v25);
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78) + 36);
    v28 = &v23[v27];
    v13 = v30;
    v26(v28, &v24[v27], v25);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v19, v20, *(*(v21 - 8) + 64));
  }

LABEL_12:
  v10[v13[8]] = v11[v13[8]];
  return a1;
}

void *sub_2303030CC(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  *(a1 + v4) = *(a2 + v4);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v8 = Configuration[5];
  v9 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(&v5[v8], &v6[v8], *(*(v9 - 8) + 64));
  }

  else
  {
    v10 = sub_23030EB58();
    (*(*(v10 - 8) + 32))(&v5[v8], &v6[v8], v10);
    swift_storeEnumTagMultiPayload();
  }

  v5[Configuration[6]] = v6[Configuration[6]];
  v11 = Configuration[7];
  v12 = &v5[v11];
  v13 = &v6[v11];
  v14 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v12 = *v13;
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v16 = &v12[v15];
    v17 = &v13[v15];
    v18 = sub_23030EB58();
    v19 = *(*(v18 - 8) + 32);
    v19(v16, v17, v18);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v19(&v16[*(v20 + 36)], &v17[*(v20 + 36)], v18);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v12, v13, *(*(v14 - 8) + 64));
  }

  v5[Configuration[8]] = v6[Configuration[8]];
  return a1;
}

void **_s22ListSectionsInvocationC10ParametersVwta(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *(a1 + v7) = *(a2 + v7);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v11 = Configuration;
  if (a1 == a2)
  {
    v8[*(Configuration + 24)] = v9[*(Configuration + 24)];
  }

  else
  {
    v12 = *(Configuration + 20);
    sub_2302E5DDC(&v8[v12], type metadata accessor for REMRemindersListDataView.ShowCompleted);
    v13 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(&v8[v12], &v9[v12], *(*(v13 - 8) + 64));
    }

    else
    {
      v14 = sub_23030EB58();
      (*(*(v14 - 8) + 32))(&v8[v12], &v9[v12], v14);
      swift_storeEnumTagMultiPayload();
    }

    v8[v11[6]] = v9[v11[6]];
    v15 = v11[7];
    v16 = &v8[v15];
    v17 = &v9[v15];
    sub_2302E5DDC(&v8[v15], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
    v18 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      *v16 = *v17;
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
      v20 = &v16[v19];
      v21 = &v17[v19];
      v22 = sub_23030EB58();
      v23 = *(*(v22 - 8) + 32);
      v23(v20, v21, v22);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
      v23(&v20[*(v24 + 36)], &v21[*(v24 + 36)], v22);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v16, v17, *(*(v18 - 8) + 64));
    }
  }

  v8[v11[8]] = v9[v11[8]];
  return a1;
}

uint64_t __swift_get_extra_inhabitant_index_111Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
    v9 = *(*(Configuration - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, Configuration);
  }
}

void *__swift_store_extra_inhabitant_index_112Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
    v8 = *(*(Configuration - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, Configuration);
  }

  return result;
}

uint64_t sub_2303036EC()
{
  result = type metadata accessor for REMRemindersListDataView.FetchConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t _s26TemplateSectionsInvocationC10ParametersVwca(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 10) = *(a2 + 10);
  return a1;
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t _s26TemplateSectionsInvocationC10ParametersVwta(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 10) = *(a2 + 10);
  return a1;
}

uint64_t _s26TemplateSectionsInvocationC10ParametersVwet(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 11))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t _s26TemplateSectionsInvocationC10ParametersVwst(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 11) = 1;
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

    *(result + 11) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s26TemplateSectionsInvocationC10ParametersV18FetchConfigurationVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *(a1 + 2);
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t _s26TemplateSectionsInvocationC10ParametersV18FetchConfigurationVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

char *sub_230303ACC(char *a1, char **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v5 = a1;
    a1[8] = *(a2 + 8);
    v6 = *(a3 + 24);
    v7 = &a1[v6];
    v8 = a2 + v6;
    a1[v6] = *(a2 + v6);
    Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
    v10 = Configuration[5];
    v11 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    v12 = v4;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      *&v7[v10] = *(v8 + v10);

      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy(&v7[v10], (v8 + v10), *(*(v11 - 8) + 64));
    }

    else
    {
      v14 = sub_23030EB58();
      (*(*(v14 - 8) + 16))(&v7[v10], v8 + v10, v14);
      swift_storeEnumTagMultiPayload();
    }

    v7[Configuration[6]] = *(v8 + Configuration[6]);
    v15 = Configuration[7];
    v16 = &v7[v15];
    v17 = (v8 + v15);
    v18 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      *v16 = *v17;
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
      v20 = &v16[v19];
      v21 = v17 + v19;
      v22 = sub_23030EB58();
      v23 = *(*(v22 - 8) + 16);
      v23(v20, v21, v22);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
      v23(&v20[*(v24 + 36)], &v21[*(v24 + 36)], v22);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v16, v17, *(*(v18 - 8) + 64));
    }

    v7[Configuration[8]] = *(v8 + Configuration[8]);
  }

  return v5;
}

uint64_t sub_230303D64(id *a1, uint64_t a2)
{
  v4 = a1 + *(a2 + 24);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v6 = *(Configuration + 20);
  type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v8 = sub_23030EB58();
    (*(*(v8 - 8) + 8))(&v4[v6], v8);
  }

  v9 = &v4[*(Configuration + 28)];
  type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    v11 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48)];
    v12 = sub_23030EB58();
    v14 = *(*(v12 - 8) + 8);
    (v14)((v12 - 8), v11, v12);
    v13 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78) + 36)];

    return v14(v13, v12);
  }

  return result;
}

uint64_t sub_230303EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a3 + 24);
  v6 = a1 + v5;
  v7 = a2 + v5;
  *(a1 + v5) = *(a2 + v5);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v9 = Configuration[5];
  v10 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  v11 = v4;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *(v6 + v9) = *(v7 + v9);

    swift_storeEnumTagMultiPayload();
  }

  else if (EnumCaseMultiPayload)
  {
    memcpy((v6 + v9), (v7 + v9), *(*(v10 - 8) + 64));
  }

  else
  {
    v13 = sub_23030EB58();
    (*(*(v13 - 8) + 16))(v6 + v9, v7 + v9, v13);
    swift_storeEnumTagMultiPayload();
  }

  *(v6 + Configuration[6]) = *(v7 + Configuration[6]);
  v14 = Configuration[7];
  v15 = (v6 + v14);
  v16 = (v7 + v14);
  v17 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v15 = *v16;
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v19 = v15 + v18;
    v20 = v16 + v18;
    v21 = sub_23030EB58();
    v22 = *(*(v21 - 8) + 16);
    v22(v19, v20, v21);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v22(&v19[*(v23 + 36)], &v20[*(v23 + 36)], v21);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v15, v16, *(*(v17 - 8) + 64));
  }

  *(v6 + Configuration[8]) = *(v7 + Configuration[8]);
  return a1;
}

uint64_t sub_230304140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  *(a1 + 8) = *(a2 + 8);
  v9 = *(a3 + 24);
  v10 = a1 + v9;
  v11 = a2 + v9;
  *(a1 + v9) = *(a2 + v9);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v13 = Configuration;
  if (a1 == a2)
  {
    *(v10 + *(Configuration + 24)) = *(v11 + *(Configuration + 24));
    goto LABEL_12;
  }

  v14 = *(Configuration + 20);
  sub_2302E5DDC(v10 + v14, type metadata accessor for REMRemindersListDataView.ShowCompleted);
  v15 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *(v10 + v14) = *(v11 + v14);

    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    v17 = sub_23030EB58();
    (*(*(v17 - 8) + 16))(v10 + v14, v11 + v14, v17);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    goto LABEL_9;
  }

  memcpy((v10 + v14), (v11 + v14), *(*(v15 - 8) + 64));
LABEL_9:
  *(v10 + v13[6]) = *(v11 + v13[6]);
  v18 = v13[7];
  v19 = (v10 + v18);
  v20 = (v11 + v18);
  sub_2302E5DDC(v10 + v18, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  v21 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v19 = *v20;
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v30 = v13;
    v23 = v19 + v22;
    v24 = v20 + v22;
    v25 = sub_23030EB58();
    v26 = *(*(v25 - 8) + 16);
    v26(v23, v24, v25);
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78) + 36);
    v28 = &v23[v27];
    v13 = v30;
    v26(v28, &v24[v27], v25);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v19, v20, *(*(v21 - 8) + 64));
  }

LABEL_12:
  *(v10 + v13[8]) = *(v11 + v13[8]);
  return a1;
}

uint64_t sub_2303043EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a3 + 24);
  v5 = a1 + v4;
  v6 = a2 + v4;
  *(a1 + v4) = *(a2 + v4);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v8 = Configuration[5];
  v9 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy((v5 + v8), (v6 + v8), *(*(v9 - 8) + 64));
  }

  else
  {
    v10 = sub_23030EB58();
    (*(*(v10 - 8) + 32))(v5 + v8, v6 + v8, v10);
    swift_storeEnumTagMultiPayload();
  }

  *(v5 + Configuration[6]) = *(v6 + Configuration[6]);
  v11 = Configuration[7];
  v12 = (v5 + v11);
  v13 = (v6 + v11);
  v14 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v12 = *v13;
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v16 = v12 + v15;
    v17 = v13 + v15;
    v18 = sub_23030EB58();
    v19 = *(*(v18 - 8) + 32);
    v19(v16, v17, v18);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v19(&v16[*(v20 + 36)], &v17[*(v20 + 36)], v18);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v12, v13, *(*(v14 - 8) + 64));
  }

  *(v5 + Configuration[8]) = *(v6 + Configuration[8]);
  return a1;
}

uint64_t sub_230304610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v7 = *(a3 + 24);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *(a1 + v7) = *(a2 + v7);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v11 = Configuration;
  if (a1 == a2)
  {
    *(v8 + *(Configuration + 24)) = *(v9 + *(Configuration + 24));
  }

  else
  {
    v12 = *(Configuration + 20);
    sub_2302E5DDC(v8 + v12, type metadata accessor for REMRemindersListDataView.ShowCompleted);
    v13 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy((v8 + v12), (v9 + v12), *(*(v13 - 8) + 64));
    }

    else
    {
      v14 = sub_23030EB58();
      (*(*(v14 - 8) + 32))(v8 + v12, v9 + v12, v14);
      swift_storeEnumTagMultiPayload();
    }

    *(v8 + v11[6]) = *(v9 + v11[6]);
    v15 = v11[7];
    v16 = (v8 + v15);
    v17 = (v9 + v15);
    sub_2302E5DDC(v8 + v15, type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
    v18 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      *v16 = *v17;
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
      v20 = v16 + v19;
      v21 = v17 + v19;
      v22 = sub_23030EB58();
      v23 = *(*(v22 - 8) + 32);
      v23(v20, v21, v22);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
      v23(&v20[*(v24 + 36)], &v21[*(v24 + 36)], v22);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v16, v17, *(*(v18 - 8) + 64));
    }
  }

  *(v8 + v11[8]) = *(v9 + v11[8]);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_index_104Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *__swift_store_extra_inhabitant_index_105Tm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_230304A14()
{
  result = type metadata accessor for REMRemindersListDataView.FetchConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *sub_230304ADC(char *a1, char *a2)
{
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v5 = *(*(Configuration - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = Configuration;
    *a1 = *a2;
    v7 = *(Configuration + 20);
    v8 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      *&a1[v7] = *&a2[v7];

      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy(&a1[v7], &a2[v7], *(*(v8 - 8) + 64));
    }

    else
    {
      v10 = sub_23030EB58();
      (*(*(v10 - 8) + 16))(&a1[v7], &a2[v7], v10);
      swift_storeEnumTagMultiPayload();
    }

    a1[v6[6]] = a2[v6[6]];
    v12 = v6[7];
    v13 = &a1[v12];
    v14 = &a2[v12];
    v15 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      *v13 = *v14;
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
      v17 = &v13[v16];
      v18 = &v14[v16];
      v19 = sub_23030EB58();
      v20 = *(*(v19 - 8) + 16);
      v20(v17, v18, v19);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
      v20(&v17[*(v21 + 36)], &v18[*(v21 + 36)], v19);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v13, v14, *(*(v15 - 8) + 64));
    }

    a1[v6[8]] = a2[v6[8]];
  }

  return a1;
}

uint64_t sub_230304D4C(uint64_t a1)
{
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v3 = *(Configuration + 20);
  type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v5 = sub_23030EB58();
    (*(*(v5 - 8) + 8))(a1 + v3, v5);
  }

  v6 = a1 + *(Configuration + 28);
  type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    v8 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v9 = sub_23030EB58();
    v11 = *(*(v9 - 8) + 8);
    (v11)((v9 - 8), v8, v9);
    v10 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78) + 36);

    return v11(v10, v9);
  }

  return result;
}

_BYTE *sub_230304EC4(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v5 = Configuration[5];
  v6 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *&a1[v5] = *&a2[v5];

    swift_storeEnumTagMultiPayload();
  }

  else if (EnumCaseMultiPayload)
  {
    memcpy(&a1[v5], &a2[v5], *(*(v6 - 8) + 64));
  }

  else
  {
    v8 = sub_23030EB58();
    (*(*(v8 - 8) + 16))(&a1[v5], &a2[v5], v8);
    swift_storeEnumTagMultiPayload();
  }

  a1[Configuration[6]] = a2[Configuration[6]];
  v9 = Configuration[7];
  v10 = &a1[v9];
  v11 = &a2[v9];
  v12 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v10 = *v11;
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v14 = v10 + v13;
    v15 = v11 + v13;
    v16 = sub_23030EB58();
    v17 = *(*(v16 - 8) + 16);
    v17(v14, v15, v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v17(&v14[*(v18 + 36)], &v15[*(v18 + 36)], v16);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v10, v11, *(*(v12 - 8) + 64));
  }

  a1[Configuration[8]] = a2[Configuration[8]];
  return a1;
}

_BYTE *sub_2303050E8(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v5 = Configuration;
  if (a1 == a2)
  {
    a1[*(Configuration + 24)] = a2[*(Configuration + 24)];
    goto LABEL_12;
  }

  v6 = *(Configuration + 20);
  sub_2302E5DDC(&a1[v6], type metadata accessor for REMRemindersListDataView.ShowCompleted);
  v7 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *&a1[v6] = *&a2[v6];

    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    v9 = sub_23030EB58();
    (*(*(v9 - 8) + 16))(&a1[v6], &a2[v6], v9);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    goto LABEL_9;
  }

  memcpy(&a1[v6], &a2[v6], *(*(v7 - 8) + 64));
LABEL_9:
  a1[v5[6]] = a2[v5[6]];
  v10 = v5[7];
  v11 = &a1[v10];
  v12 = &a2[v10];
  sub_2302E5DDC(&a1[v10], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
  v13 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v11 = *v12;
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v15 = v11 + v14;
    v16 = v12 + v14;
    v17 = sub_23030EB58();
    v18 = *(*(v17 - 8) + 16);
    v18(v15, v16, v17);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v18(&v15[*(v19 + 36)], &v16[*(v19 + 36)], v17);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v11, v12, *(*(v13 - 8) + 64));
  }

LABEL_12:
  a1[v5[8]] = a2[v5[8]];
  return a1;
}

_BYTE *sub_230305358(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v5 = Configuration[5];
  v6 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(&a1[v5], &a2[v5], *(*(v6 - 8) + 64));
  }

  else
  {
    v7 = sub_23030EB58();
    (*(*(v7 - 8) + 32))(&a1[v5], &a2[v5], v7);
    swift_storeEnumTagMultiPayload();
  }

  a1[Configuration[6]] = a2[Configuration[6]];
  v8 = Configuration[7];
  v9 = &a1[v8];
  v10 = &a2[v8];
  v11 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *v9 = *v10;
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
    v13 = v9 + v12;
    v14 = v10 + v12;
    v15 = sub_23030EB58();
    v16 = *(*(v15 - 8) + 32);
    v16(v13, v14, v15);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
    v16(&v13[*(v17 + 36)], &v14[*(v17 + 36)], v15);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v9, v10, *(*(v11 - 8) + 64));
  }

  a1[Configuration[8]] = a2[Configuration[8]];
  return a1;
}

_BYTE *sub_230305554(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v5 = Configuration;
  if (a1 == a2)
  {
    a1[*(Configuration + 24)] = a2[*(Configuration + 24)];
  }

  else
  {
    v6 = *(Configuration + 20);
    sub_2302E5DDC(&a1[v6], type metadata accessor for REMRemindersListDataView.ShowCompleted);
    v7 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(&a1[v6], &a2[v6], *(*(v7 - 8) + 64));
    }

    else
    {
      v8 = sub_23030EB58();
      (*(*(v8 - 8) + 32))(&a1[v6], &a2[v6], v8);
      swift_storeEnumTagMultiPayload();
    }

    a1[v5[6]] = a2[v5[6]];
    v9 = v5[7];
    v10 = &a1[v9];
    v11 = &a2[v9];
    sub_2302E5DDC(&a1[v9], type metadata accessor for REMRemindersListDataView.RemindersPrefetch);
    v12 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      *v10 = *v11;
      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB188E8) + 48);
      v14 = v10 + v13;
      v15 = v11 + v13;
      v16 = sub_23030EB58();
      v17 = *(*(v16 - 8) + 32);
      v17(v14, v15, v16);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
      v17(&v14[*(v18 + 36)], &v15[*(v18 + 36)], v16);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v10, v11, *(*(v12 - 8) + 64));
    }
  }

  a1[v5[8]] = a2[v5[8]];
  return a1;
}

uint64_t __swift_get_extra_inhabitant_index_29Tm(uint64_t a1, uint64_t a2)
{
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v5 = *(*(Configuration - 8) + 48);

  return v5(a1, a2, Configuration);
}

uint64_t __swift_store_extra_inhabitant_index_30Tm(uint64_t a1, uint64_t a2)
{
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v5 = *(*(Configuration - 8) + 56);

  return v5(a1, a2, a2, Configuration);
}

uint64_t sub_2303058A4()
{
  result = type metadata accessor for REMRemindersListDataView.FetchConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_230305B40()
{
  result = qword_27DB19ED0;
  if (!qword_27DB19ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19ED0);
  }

  return result;
}

unint64_t sub_230305B98()
{
  result = qword_27DB19ED8;
  if (!qword_27DB19ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19ED8);
  }

  return result;
}

unint64_t sub_230305BF0()
{
  result = qword_27DB19EE0;
  if (!qword_27DB19EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19EE0);
  }

  return result;
}

unint64_t sub_230305C48()
{
  result = qword_27DB19EE8;
  if (!qword_27DB19EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19EE8);
  }

  return result;
}

unint64_t sub_230305CA0()
{
  result = qword_27DB19EF0;
  if (!qword_27DB19EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19EF0);
  }

  return result;
}

unint64_t sub_230305CF8()
{
  result = qword_27DB19EF8;
  if (!qword_27DB19EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19EF8);
  }

  return result;
}

unint64_t sub_230305D50()
{
  result = qword_27DB19F00;
  if (!qword_27DB19F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19F00);
  }

  return result;
}

unint64_t sub_230305DA8()
{
  result = qword_27DB19F08;
  if (!qword_27DB19F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19F08);
  }

  return result;
}

unint64_t sub_230305E00()
{
  result = qword_27DB19F10;
  if (!qword_27DB19F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19F10);
  }

  return result;
}

unint64_t sub_230305E58()
{
  result = qword_27DB19F18;
  if (!qword_27DB19F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19F18);
  }

  return result;
}

unint64_t sub_230305EB0()
{
  result = qword_27DB19F20;
  if (!qword_27DB19F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19F20);
  }

  return result;
}

unint64_t sub_230305F08()
{
  result = qword_27DB19F28;
  if (!qword_27DB19F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19F28);
  }

  return result;
}

unint64_t sub_230305F60()
{
  result = qword_27DB19F30;
  if (!qword_27DB19F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19F30);
  }

  return result;
}

unint64_t sub_230305FB8()
{
  result = qword_27DB19F38;
  if (!qword_27DB19F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19F38);
  }

  return result;
}

unint64_t sub_230306010()
{
  result = qword_27DB19F40;
  if (!qword_27DB19F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19F40);
  }

  return result;
}

unint64_t sub_230306068()
{
  result = qword_27DB19F48;
  if (!qword_27DB19F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19F48);
  }

  return result;
}

unint64_t sub_2303060C0()
{
  result = qword_27DB19F50;
  if (!qword_27DB19F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19F50);
  }

  return result;
}

unint64_t sub_230306118()
{
  result = qword_27DB19F58;
  if (!qword_27DB19F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19F58);
  }

  return result;
}

unint64_t sub_230306170()
{
  result = qword_27DB19F60;
  if (!qword_27DB19F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19F60);
  }

  return result;
}

unint64_t sub_2303061C8()
{
  result = qword_27DB19F68;
  if (!qword_27DB19F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19F68);
  }

  return result;
}

unint64_t sub_230306220()
{
  result = qword_27DB19F70;
  if (!qword_27DB19F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19F70);
  }

  return result;
}

unint64_t sub_230306278()
{
  result = qword_27DB19F78;
  if (!qword_27DB19F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19F78);
  }

  return result;
}

unint64_t sub_2303062D0()
{
  result = qword_27DB19F80;
  if (!qword_27DB19F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19F80);
  }

  return result;
}

unint64_t sub_230306328()
{
  result = qword_27DB19F88;
  if (!qword_27DB19F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19F88);
  }

  return result;
}

unint64_t sub_230306380()
{
  result = qword_27DB19F90;
  if (!qword_27DB19F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19F90);
  }

  return result;
}

unint64_t sub_2303063D8()
{
  result = qword_27DB19F98;
  if (!qword_27DB19F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19F98);
  }

  return result;
}

unint64_t sub_230306430()
{
  result = qword_27DB19FA0;
  if (!qword_27DB19FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19FA0);
  }

  return result;
}

unint64_t sub_230306488()
{
  result = qword_27DB19FA8;
  if (!qword_27DB19FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19FA8);
  }

  return result;
}

unint64_t sub_2303064E0()
{
  result = qword_27DB19FB0;
  if (!qword_27DB19FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19FB0);
  }

  return result;
}

unint64_t sub_230306538()
{
  result = qword_27DB19FB8;
  if (!qword_27DB19FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19FB8);
  }

  return result;
}

unint64_t sub_230306590()
{
  result = qword_27DB19FC0;
  if (!qword_27DB19FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19FC0);
  }

  return result;
}

unint64_t sub_2303065E8()
{
  result = qword_27DB19FC8;
  if (!qword_27DB19FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19FC8);
  }

  return result;
}

unint64_t sub_230306640()
{
  result = qword_280C98ED8;
  if (!qword_280C98ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98ED8);
  }

  return result;
}

unint64_t sub_230306698()
{
  result = qword_280C98EE0;
  if (!qword_280C98EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98EE0);
  }

  return result;
}

unint64_t sub_2303066F0()
{
  result = qword_27DB19FD0;
  if (!qword_27DB19FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19FD0);
  }

  return result;
}

unint64_t sub_230306748()
{
  result = qword_27DB19FD8;
  if (!qword_27DB19FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19FD8);
  }

  return result;
}

unint64_t sub_2303067A0()
{
  result = qword_27DB19FE0;
  if (!qword_27DB19FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19FE0);
  }

  return result;
}

unint64_t sub_2303067F8()
{
  result = qword_27DB19FE8;
  if (!qword_27DB19FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19FE8);
  }

  return result;
}

unint64_t sub_230306850()
{
  result = qword_27DB19FF0;
  if (!qword_27DB19FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19FF0);
  }

  return result;
}

unint64_t sub_2303068A8()
{
  result = qword_27DB19FF8;
  if (!qword_27DB19FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19FF8);
  }

  return result;
}

unint64_t sub_230306900()
{
  result = qword_280C992B8;
  if (!qword_280C992B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C992B8);
  }

  return result;
}

unint64_t sub_230306958()
{
  result = qword_280C992C0;
  if (!qword_280C992C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C992C0);
  }

  return result;
}

unint64_t sub_2303069B0()
{
  result = qword_27DB1A000;
  if (!qword_27DB1A000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A000);
  }

  return result;
}

unint64_t sub_230306A08()
{
  result = qword_27DB1A008;
  if (!qword_27DB1A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A008);
  }

  return result;
}

unint64_t sub_230306A60()
{
  result = qword_27DB1A010;
  if (!qword_27DB1A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A010);
  }

  return result;
}

unint64_t sub_230306AB8()
{
  result = qword_27DB1A018;
  if (!qword_27DB1A018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A018);
  }

  return result;
}

unint64_t sub_230306B10()
{
  result = qword_27DB1A020;
  if (!qword_27DB1A020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A020);
  }

  return result;
}

unint64_t sub_230306B68()
{
  result = qword_27DB1A028;
  if (!qword_27DB1A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A028);
  }

  return result;
}

unint64_t sub_230306BC0()
{
  result = qword_27DB1A030;
  if (!qword_27DB1A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A030);
  }

  return result;
}

unint64_t sub_230306C18()
{
  result = qword_27DB1A038;
  if (!qword_27DB1A038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A038);
  }

  return result;
}

unint64_t sub_230306C70()
{
  result = qword_27DB1A040;
  if (!qword_27DB1A040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A040);
  }

  return result;
}

unint64_t sub_230306CC8()
{
  result = qword_27DB1A048;
  if (!qword_27DB1A048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A048);
  }

  return result;
}

unint64_t sub_230306D20()
{
  result = qword_27DB1A050;
  if (!qword_27DB1A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A050);
  }

  return result;
}

unint64_t sub_230306D78()
{
  result = qword_27DB1A058;
  if (!qword_27DB1A058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A058);
  }

  return result;
}

unint64_t sub_230306DD0()
{
  result = qword_27DB1A060;
  if (!qword_27DB1A060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A060);
  }

  return result;
}

unint64_t sub_230306E28()
{
  result = qword_27DB1A068;
  if (!qword_27DB1A068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A068);
  }

  return result;
}

unint64_t sub_230306E80()
{
  result = qword_27DB1A070;
  if (!qword_27DB1A070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A070);
  }

  return result;
}

unint64_t sub_230306ED8()
{
  result = qword_27DB1A078;
  if (!qword_27DB1A078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A078);
  }

  return result;
}

unint64_t sub_230306F30()
{
  result = qword_27DB1A080;
  if (!qword_27DB1A080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A080);
  }

  return result;
}

unint64_t sub_230306F88()
{
  result = qword_27DB1A088;
  if (!qword_27DB1A088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A088);
  }

  return result;
}

unint64_t sub_230306FE0()
{
  result = qword_280C97830;
  if (!qword_280C97830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97830);
  }

  return result;
}

unint64_t sub_230307038()
{
  result = qword_280C97838;
  if (!qword_280C97838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97838);
  }

  return result;
}

unint64_t sub_230307090()
{
  result = qword_27DB1A090;
  if (!qword_27DB1A090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A090);
  }

  return result;
}

unint64_t sub_2303070E8()
{
  result = qword_27DB1A098;
  if (!qword_27DB1A098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A098);
  }

  return result;
}

unint64_t sub_230307140()
{
  result = qword_280C98C30;
  if (!qword_280C98C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98C30);
  }

  return result;
}

unint64_t sub_230307198()
{
  result = qword_280C98C38;
  if (!qword_280C98C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98C38);
  }

  return result;
}

unint64_t sub_2303071F0()
{
  result = qword_280C978E0;
  if (!qword_280C978E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C978E0);
  }

  return result;
}

unint64_t sub_230307248()
{
  result = qword_280C978E8;
  if (!qword_280C978E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C978E8);
  }

  return result;
}

unint64_t sub_2303072A0()
{
  result = qword_27DB1A0A0;
  if (!qword_27DB1A0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A0A0);
  }

  return result;
}

unint64_t sub_2303072F8()
{
  result = qword_27DB1A0A8;
  if (!qword_27DB1A0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A0A8);
  }

  return result;
}

unint64_t sub_230307350()
{
  result = qword_27DB1A0B0;
  if (!qword_27DB1A0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A0B0);
  }

  return result;
}

unint64_t sub_2303073A8()
{
  result = qword_27DB1A0B8;
  if (!qword_27DB1A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A0B8);
  }

  return result;
}

unint64_t sub_230307400()
{
  result = qword_280C9A450;
  if (!qword_280C9A450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A450);
  }

  return result;
}

unint64_t sub_230307458()
{
  result = qword_280C9A458;
  if (!qword_280C9A458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A458);
  }

  return result;
}

unint64_t sub_2303074B0()
{
  result = qword_280C99170;
  if (!qword_280C99170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99170);
  }

  return result;
}

unint64_t sub_230307508()
{
  result = qword_280C99178;
  if (!qword_280C99178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99178);
  }

  return result;
}

unint64_t sub_230307560()
{
  result = qword_280C99040;
  if (!qword_280C99040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99040);
  }

  return result;
}

unint64_t sub_2303075B8()
{
  result = qword_280C99048;
  if (!qword_280C99048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99048);
  }

  return result;
}

unint64_t sub_230307610()
{
  result = qword_27DB1A0C0;
  if (!qword_27DB1A0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A0C0);
  }

  return result;
}

unint64_t sub_230307668()
{
  result = qword_27DB1A0C8;
  if (!qword_27DB1A0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A0C8);
  }

  return result;
}

unint64_t sub_2303076C0()
{
  result = qword_27DB1A0D0;
  if (!qword_27DB1A0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A0D0);
  }

  return result;
}

unint64_t sub_230307718()
{
  result = qword_27DB1A0D8;
  if (!qword_27DB1A0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A0D8);
  }

  return result;
}

unint64_t sub_230307770()
{
  result = qword_27DB1A0E0;
  if (!qword_27DB1A0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A0E0);
  }

  return result;
}

unint64_t sub_2303077C8()
{
  result = qword_27DB1A0E8;
  if (!qword_27DB1A0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A0E8);
  }

  return result;
}

unint64_t sub_230307820()
{
  result = qword_27DB1A0F0;
  if (!qword_27DB1A0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A0F0);
  }

  return result;
}

unint64_t sub_230307878()
{
  result = qword_27DB1A0F8;
  if (!qword_27DB1A0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A0F8);
  }

  return result;
}

unint64_t sub_2303078D0()
{
  result = qword_280C9A778;
  if (!qword_280C9A778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A778);
  }

  return result;
}

unint64_t sub_230307928()
{
  result = qword_280C9A780;
  if (!qword_280C9A780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A780);
  }

  return result;
}

unint64_t sub_230307980()
{
  result = qword_280C9A830;
  if (!qword_280C9A830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A830);
  }

  return result;
}

unint64_t sub_2303079D8()
{
  result = qword_280C9A838;
  if (!qword_280C9A838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A838);
  }

  return result;
}

uint64_t sub_230307A64(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1953720684 && a2 == 0xE400000000000000;
  if (v3 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x53676E6974726F73 && a2 == 0xEC000000656C7974 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x706D6F43776F6873 && a2 == 0xED0000646574656CLL || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D6F43746E756F63 && a2 == 0xEE00646574656C70 || (sub_230311048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002303457D0 == a2 || (sub_230311048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6275536863746566 && a2 == 0xED0000736B736174)
  {

    return 5;
  }

  else
  {
    v6 = sub_230311048();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_230307C84()
{
  v0 = sub_230310C08();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_230307CD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73694C7472616D73 && a2 == 0xE900000000000074;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x53676E6974726F73 && a2 == 0xEC000000656C7974 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x706D6F43776F6873 && a2 == 0xED0000646574656CLL || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D6F43746E756F63 && a2 == 0xEE00646574656C70 || (sub_230311048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002303457D0 == a2 || (sub_230311048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6275536863746566 && a2 == 0xED0000736B736174 || (sub_230311048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000002303478C0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_230311048();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_230307F48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1717987684 && a2 == 0xE400000000000000 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73694C7472616D73 && a2 == 0xE900000000000074 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000230345960 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_230311048();

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

uint64_t sub_2303080B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x70756F7267 && a2 == 0xE500000000000000;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x53676E6974726F73 && a2 == 0xEC000000656C7974 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x706D6F43776F6873 && a2 == 0xED0000646574656CLL || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D6F43746E756F63 && a2 == 0xEE00646574656C70 || (sub_230311048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002303457D0 == a2 || (sub_230311048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002303478E0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_230311048();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_2303082D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1717987684 && a2 == 0xE400000000000000 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000)
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

uint64_t sub_2303083E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646570756F7267 && a2 == 0xE700000000000000;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C746E6572727563 && a2 == 0xEF6E6F697461636FLL || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7961646F74 && a2 == 0xE500000000000000 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461)
  {

    return 3;
  }

  else
  {
    v6 = sub_230311048();

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

uint64_t sub_230308550(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C797473 && a2 == 0xE500000000000000;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7961646F74 && a2 == 0xE500000000000000 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461)
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

uint64_t sub_230308668(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7961646F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461)
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

uint64_t sub_230308784(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746E756F636361 && a2 == 0xE900000000000044;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000230347920 == a2 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002303457D0 == a2 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D6F43746E756F63 && a2 == 0xEE00646574656C70)
  {

    return 3;
  }

  else
  {
    v6 = sub_230311048();

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

uint64_t sub_230308904(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53676E6974726F73 && a2 == 0xEC000000656C7974;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x706D6F43776F6873 && a2 == 0xED0000646574656CLL || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6F43746E756F63 && a2 == 0xEE00646574656C70 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002303457D0 == a2 || (sub_230311048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000026 && 0x8000000230347940 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_230311048();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_230308AD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44497463656A626FLL && a2 == 0xE900000000000073;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x53676E6974726F73 && a2 == 0xEC000000656C7974 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x706D6F43776F6873 && a2 == 0xED0000646574656CLL || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D6F43746E756F63 && a2 == 0xEE00646574656C70)
  {

    return 3;
  }

  else
  {
    v6 = sub_230311048();

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

uint64_t sub_230308C54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53676E6974726F73 && a2 == 0xEC000000656C7974;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x706D6F43776F6873 && a2 == 0xED0000646574656CLL || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6F43746E756F63 && a2 == 0xEE00646574656C70 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002303457D0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_230311048();

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

uint64_t sub_230308DD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x8000000230347970 == a2;
  if (v3 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x53676E6974726F73 && a2 == 0xEC000000656C7974 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x706D6F43776F6873 && a2 == 0xED0000646574656CLL || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D6F43746E756F63 && a2 == 0xEE00646574656C70 || (sub_230311048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002303457D0 == a2 || (sub_230311048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000230347990 == a2 || (sub_230311048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000002303478C0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_230311048();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_230309038(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73694C7472616D73 && a2 == 0xE900000000000074;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000002303478C0 == a2 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461)
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

uint64_t sub_230309168(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53676E6974726F73 && a2 == 0xEC000000656C7974;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6275536863746566 && a2 == 0xED0000736B736174 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000002303478C0 == a2)
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

uint64_t sub_230309294(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x70756F7267 && a2 == 0xE500000000000000;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002303478E0 == a2 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461)
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

uint64_t REMMatrix.init<A>(source:rowCount:columnCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v23 = a6;
  v25 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v22 - v12;
  result = sub_230310058();
  v24 = a3;
  if ((a2 * a3) >> 64 != (a2 * a3) >> 63)
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = result;
  if (result == a2 * a3)
  {
    result = sub_230310058();
    if ((result - 0x1000000000000000) >> 61 == 7)
    {
      v16 = swift_slowAlloc();
      v17 = sub_230310058();
      sub_2303104D8();
      (*(v11 + 8))(v13, AssociatedTypeWitness);
      if (v17 == v15)
      {
        (*(*(a4 - 8) + 8))(a1, a4);
        type metadata accessor for REMLinearAlgebraDataRef();
        result = swift_allocObject();
        *(result + 16) = v16;
        *(result + 24) = v15;
        v19 = v23;
        v18 = v24;
        *v23 = a2;
        v19[1] = v18;
        v19[2] = result;
        return result;
      }

      sub_2302D6140();
      swift_allocError();
      *v21 = 1;
      goto LABEL_8;
    }

LABEL_11:
    __break(1u);
    return result;
  }

  sub_2302D6140();
  swift_allocError();
  *v20 = 0;
LABEL_8:
  swift_willThrow();
  return (*(*(a4 - 8) + 8))(a1, a4);
}

void REMMatrix.transpose()(uint64_t *a1@<X8>)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  REMMatrix.init(rowCount:columnCount:)(v4, v5, v12);
  if (!v2)
  {
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = v13;
      v9 = *(v13 + 16);
      if (!v9)
      {
LABEL_9:
        __break(1u);
        return;
      }

      if (((v4 | v5) & 0x8000000000000000) == 0)
      {
        v10 = v12[0];
        v11 = v12[1];
        vDSP_mtransD(v7, 1, v9, 1, v4, v5);
        *a1 = v10;
        a1[1] = v11;
        a1[2] = v8;
        return;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t REMMatrix.columnCenterize()@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v15 = *v1;
  v16 = v5;
  v17 = v6;
  result = REMMatrix.columnMean()(v18);
  if (!v2)
  {
    v8 = v18[1];
    result = REMMatrix.init(rowCount:columnCount:)(v4, v5, &v15);
    if (v4 < 0)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (v4)
    {
      if (v5 < 0)
      {
LABEL_24:
        __break(1u);
        return result;
      }

      v9 = 0;
      v10 = v16;
      v11 = v17;
      while (!v5)
      {
LABEL_6:
        if (++v9 == v4)
        {

          goto LABEL_17;
        }
      }

      v12 = v9 * v10;
      if ((v9 * v10) >> 64 == (v9 * v10) >> 63)
      {
        v13 = v9 * v5;
        if ((v9 * v5) >> 64 != (v9 * v5) >> 63)
        {
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v14 = 0;
        while (!__OFADD__(v13, v14))
        {
          if (__OFADD__(v12, v14))
          {
            goto LABEL_20;
          }

          *(*(v11 + 16) + 8 * (v12 + v14)) = *(*(v6 + 16) + 8 * (v13 + v14)) - *(*(v8 + 16) + 8 * v14);
          if (v5 == ++v14)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
      }

      __break(1u);
      goto LABEL_22;
    }

    v10 = v16;
    v11 = v17;
LABEL_17:
    *a1 = v15;
    a1[1] = v10;
    a1[2] = v11;
  }

  return result;
}

const double *REMMatrix.svd()(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v9 = *v3;
  v8 = v3[1];
  v10 = v3[2];
  result = REMMatrix.init(rowCount:columnCount:)(v8, v9, &v37);
  if (!v4)
  {
    result = *(v10 + 16);
    if (result)
    {
      v12 = *(v39 + 16);
      if (v12)
      {
        if ((v8 | v9) < 0)
        {
          __break(1u);
        }

        else
        {
          vDSP_mtransD(result, 1, v12, 1, v8, v9);
          if (v9 <= 0x7FFFFFFF)
          {
            if (v8 <= 0x7FFFFFFF)
            {
              v31 = a3;
              if (v8 >= v9)
              {
                v13 = v9;
              }

              else
              {
                v13 = v8;
              }

              v14 = v13;
              if (v13)
              {
                v15 = sub_23030FD48();
                *(v15 + 16) = v14;
                bzero((v15 + 32), 8 * v14);
              }

              else
              {
                v15 = MEMORY[0x277D84F90];
              }

              sub_230100234(v15, v14, &v37);
              v16 = v38;
              v32 = v37;
              REMMatrix.init(rowCount:columnCount:)(v9, v9, &v37);
              v35 = v38;
              v36 = v37;
              v17 = v39;
              REMMatrix.init(rowCount:columnCount:)(v8, v8, &v37);
              v33 = v38;
              v34 = v37;
              v18 = v39;
              dgesvd_NEWLAPACK();
              if (0.0 > -2147483650.0)
              {
                if (0.0 < 2147483650.0)
                {
                  v19 = 0.0;
                  if ((0.0 & 0x80000000) == 0)
                  {
                    v20 = v19;
                    if (v19)
                    {
                      v21 = sub_23030FD48();
                      *(v21 + 16) = v20;
                      bzero((v21 + 32), 8 * v20);
                    }

                    else
                    {
                      v21 = MEMORY[0x277D84F90];
                    }

                    result = sub_230100234(v21, v20, &v37);
                    if (*(v38 + 16))
                    {
                      dgesvd_NEWLAPACK();
                      v30 = a2;
                      REMMatrix.init(rowCount:columnCount:)(v35, v36, &v37);
                      result = *(v17 + 16);
                      if (result)
                      {
                        v22 = v39;
                        v23 = *(v39 + 16);
                        if (v23)
                        {
                          if (((v35 | v36) & 0x8000000000000000) == 0)
                          {
                            v24 = v37;
                            v25 = v38;
                            vDSP_mtransD(result, 1, v23, 1, v35, v36);
                            *a1 = v24;
                            a1[1] = v25;
                            a1[2] = v22;
                            *v30 = v32;
                            v30[1] = v16;

                            REMMatrix.init(rowCount:columnCount:)(v33, v34, &v37);
                            result = *(v18 + 16);
                            if (result)
                            {
                              v26 = v39;
                              v27 = *(v39 + 16);
                              if (v27)
                              {
                                if (((v33 | v34) & 0x8000000000000000) == 0)
                                {
                                  v28 = v37;
                                  v29 = v38;
                                  vDSP_mtransD(result, 1, v27, 1, v33, v34);

                                  *v31 = v28;
                                  v31[1] = v29;
                                  v31[2] = v26;
                                  return result;
                                }

LABEL_35:
                                __break(1u);
                              }

LABEL_42:
                              __break(1u);
                              return result;
                            }

LABEL_41:
                            __break(1u);
                            goto LABEL_42;
                          }

LABEL_34:
                          __break(1u);
                          goto LABEL_35;
                        }

LABEL_40:
                        __break(1u);
                        goto LABEL_41;
                      }

LABEL_39:
                      __break(1u);
                      goto LABEL_40;
                    }

LABEL_38:
                    __break(1u);
                    goto LABEL_39;
                  }

LABEL_33:
                  __break(1u);
                  goto LABEL_34;
                }

LABEL_32:
                __break(1u);
                goto LABEL_33;
              }

LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

LABEL_30:
            __break(1u);
            __break(1u);
            goto LABEL_31;
          }
        }

        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_38;
  }

  return result;
}

uint64_t REMMatrix.topkRows(k:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*v2 >= a1)
  {
    v7 = v2[2];
    result = REMMatrix.init(rowCount:columnCount:)(a1, v2[1], &v14);
    if (!v3)
    {
      v8 = v14;
      v9 = v15;
      v10 = *(v15 + 24);
      v11 = *(v7 + 24);
      if (v11)
      {
        v12 = v10 == 0;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        if (v11 < v10)
        {
          v10 = *(v7 + 24);
        }

        v13 = v14;
        result = memcpy(*(v15 + 16), *(v7 + 16), 8 * v10);
        v8 = v13;
      }

      *a2 = v8;
      *(a2 + 16) = v9;
    }
  }

  else
  {
    sub_23030AB14();
    swift_allocError();
    *v4 = 3;
    return swift_willThrow();
  }

  return result;
}

unint64_t *static REMMatrix.* infix(_:_:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = *(a1 + 2);
  v4 = *a2;
  v5 = a2[1];
  v8 = *a1;
  v9 = v3;
  v7[0] = v4;
  v7[1] = v5;
  return static REMMatrix.mul(_:_:)(&v8, v7, a3);
}

uint64_t static REMMatrix.* infix(_:_:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *(a1 + 2);
  v4 = *(a2 + 2);
  v8 = *a1;
  v9 = v3;
  v6 = *a2;
  v7 = v4;
  return static REMMatrix.mul(_:_:)(&v8, &v6, a3);
}

uint64_t REMMatrix.data.setter(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  *(v3 + 16) = result;
  *(v3 + 24) = a2;
  return result;
}

__n128 (*REMMatrix.data.modify(uint64_t a1))(__n128 *a1)
{
  v2 = *(v1 + 16);
  *(a1 + 16) = v2;
  *a1 = *(v2 + 16);
  return sub_2302A96CC;
}

uint64_t REMMatrix.init(rowCount:columnCount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result * a2;
  if ((result * a2) >> 64 != (result * a2) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  if ((v4 - 0x1000000000000000) >> 61 != 7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  result = swift_slowAlloc();
  v7 = result;
  if (!v4)
  {
LABEL_6:
    type metadata accessor for REMLinearAlgebraDataRef();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(result + 24) = v4;
    *a3 = v6;
    a3[1] = a2;
    a3[2] = result;
    return result;
  }

  if (v4 >= 1)
  {
    bzero(result, 8 * v4);
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t REMMatrix.init<A>(diagonal:rowCount:columnCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  REMMatrix.init(rowCount:columnCount:)(a2, a3, v25);
  if (v5)
  {
    return (*(*(a4 - 8) + 8))(a1, a4);
  }

  v12 = v25[0];
  v24 = v25[1];
  v13 = v25[2];
  result = sub_230310058();
  if (a3 >= a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = a3;
  }

  if (result >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = result;
  }

  if ((v15 & 0x8000000000000000) == 0)
  {
    v23 = a5;
    if (!v15)
    {
LABEL_15:
      result = (*(*(a4 - 8) + 8))(a1, a4);
      *v23 = v12;
      v23[1] = v24;
      v23[2] = v13;
      return result;
    }

    v16 = 0;
    while (1)
    {
      v17 = v16 * a2;
      if ((v16 * a2) >> 64 != (v16 * a2) >> 63)
      {
        break;
      }

      v18 = v17 + v16;
      if (__OFADD__(v17, v16))
      {
        goto LABEL_17;
      }

      v19 = v16 + 1;
      v25[4] = v16;
      v20 = sub_230310138();
      v22 = *v21;
      result = v20(v25, 0);
      *(*(v13 + 16) + 8 * v18) = v22;
      v16 = v19;
      if (v15 == v19)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t REMMatrix.m.getter()
{
  result = *v0;
  if (*v0 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t REMMatrix.n.getter()
{
  result = *(v0 + 8);
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t REMMatrix.minimumDimension.getter()
{
  if (v0[1] >= *v0)
  {
    return *v0;
  }

  else
  {
    return v0[1];
  }
}

double (*REMMatrix.subscript.modify(void *a1, uint64_t a2))(uint64_t a1)
{
  v3 = *(v2 + 16);
  a1[1] = a2;
  a1[2] = v3;
  *a1 = *(*(v3 + 16) + 8 * a2);
  return sub_2302A97FC;
}

uint64_t REMMatrix.subscript.getter(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  if ((result * v3) >> 64 != (result * v3) >> 63)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (__OFADD__(result * v3, a2))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t REMMatrix.subscript.setter(uint64_t result, uint64_t a2, double a3)
{
  v4 = *(v3 + 8);
  v5 = result * v4;
  if ((result * v4) >> 64 == (result * v4) >> 63)
  {
    v6 = __OFADD__(v5, a2);
    v7 = v5 + a2;
    if (!v6)
    {
      *(*(*(v3 + 16) + 16) + 8 * v7) = a3;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double (*REMMatrix.subscript.modify(double (*result)(uint64_t a1), uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *(result + 1) = v4;
  v6 = a2 * v5;
  if ((a2 * v5) >> 64 == (a2 * v5) >> 63)
  {
    v7 = __OFADD__(v6, a3);
    v8 = v6 + a3;
    if (!v7)
    {
      v9 = *(v4 + 16);
      *(result + 2) = v8;
      *result = *(v9 + 8 * v8);
      return sub_23030A654;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_23030A654(uint64_t a1)
{
  result = *a1;
  *(*(*(a1 + 8) + 16) + 8 * *(a1 + 16)) = *a1;
  return result;
}

unint64_t *static REMMatrix.mul(_:_:)@<X0>(unint64_t *result@<X0>, void *a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = result[1];
  if (v4 != *a2)
  {
    sub_23030AB14();
    swift_allocError();
    *v8 = 1;
    return swift_willThrow();
  }

  v5 = *result;
  if (*result)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      v9 = sub_23030FD48();
      *(v9 + 16) = v5;
      bzero((v9 + 32), 8 * v5);
      result = sub_230100234(v9, v5, &v13);
      if (!(v5 >> 31))
      {
        if (v4 >= 0xFFFFFFFF80000000)
        {
          if (v4 <= 0x7FFFFFFF)
          {
            v10 = v14;
            if (*(v14 + 16))
            {
              v11 = v13;
              result = cblas_dgemv_NEWLAPACK();
              *a3 = v11;
              a3[1] = v10;
              return result;
            }

            goto LABEL_24;
          }

LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          return result;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v5)
  {
    v7 = sub_23030FD48();
    *(v7 + 16) = v5;
    bzero((v7 + 32), 8 * v5);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  result = sub_230100234(v7, v5, &v13);
  v12 = v14;
  *a3 = v13;
  a3[1] = v12;
  return result;
}

uint64_t static REMMatrix.mul(_:_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a1[1];
  if (v4 != *a2)
  {
    sub_23030AB14();
    swift_allocError();
    *v8 = 2;
    return swift_willThrow();
  }

  v5 = *a1;
  v6 = a2[1];
  if (*a1)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return REMMatrix.init(rowCount:columnCount:)(*a1, a2[1], a3);
  }

  v16 = a3;
  result = REMMatrix.init(rowCount:columnCount:)(v5, v6, v14);
  if (!v3)
  {
    if (v5 > 0x7FFFFFFF)
    {
      __break(1u);
    }

    else if (v6 <= 0x7FFFFFFF)
    {
      if (v4 >= 0xFFFFFFFF80000000 && v5 >= 0xFFFFFFFF80000000 && v6 >= 0xFFFFFFFF80000000)
      {
        if (v4 <= 0x7FFFFFFF)
        {
          v10 = v15;
          if (*(v15 + 16))
          {
            v12 = v14[0];
            v11 = v14[1];
            result = cblas_dgemm_NEWLAPACK();
            v13 = v16;
            *v16 = v12;
            v13[1] = v11;
            v13[2] = v10;
            return result;
          }

LABEL_23:
          __break(1u);
          return result;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

const double *REMMatrix.columnMean()@<X0>(unint64_t *a1@<X8>)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  result = REMMatrix.init(rowCount:columnCount:)(v5, v4, &v23);
  if (!v2)
  {
    result = *(v6 + 16);
    if (result)
    {
      v8 = v25;
      v9 = *(v25 + 16);
      if (!v9)
      {
LABEL_19:
        __break(1u);
        return result;
      }

      if (((v5 | v4) & 0x8000000000000000) == 0)
      {
        v10 = v23;
        v11 = v24;
        vDSP_mtransD(result, 1, v9, 1, v5, v4);
        if (v4 < 1)
        {
          v12 = MEMORY[0x277D84F90];
          if (!v4)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v12 = sub_23030FD48();
          *(v12 + 16) = v4;
        }

        v13 = 1.0 / v4;
        v14 = (v12 + 32);
        if (v4 > 3)
        {
          v15 = v4 & 0xFFFFFFFFFFFFFFFCLL;
          v14 += v4 & 0xFFFFFFFFFFFFFFFCLL;
          v16 = vdupq_lane_s64(*&v13, 0);
          v17 = (v12 + 48);
          v18 = v4 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v17[-1] = v16;
            *v17 = v16;
            v17 += 2;
            v18 -= 4;
          }

          while (v18);
          if (v4 == v15)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v15 = 0;
        }

        v19 = v4 - v15;
        do
        {
          *v14++ = v13;
          --v19;
        }

        while (v19);
LABEL_15:
        sub_230100234(v12, v4, &v23);
        v20 = v23;
        v21 = v24;
        v23 = v10;
        v24 = v11;
        v25 = v8;
        v22[0] = v20;
        v22[1] = v21;
        static REMMatrix.mul(_:_:)(&v23, v22, a1);
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }

  return result;
}

unint64_t sub_23030AB14()
{
  result = qword_27DB1A100;
  if (!qword_27DB1A100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A100);
  }

  return result;
}

const double *REMMatrix.leftkColumns(k:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v7 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  result = REMMatrix.init(rowCount:columnCount:)(v6, v7, &v21);
  if (!v3)
  {
    result = *(v8 + 16);
    if (result)
    {
      v10 = v23;
      v11 = *(v23 + 16);
      if (!v11)
      {
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (((v6 | v7) & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v12 = v21;
        v13 = v22;
        vDSP_mtransD(result, 1, v11, 1, v6, v7);
        v21 = v12;
        v22 = v13;
        v23 = v10;
        REMMatrix.topkRows(k:)(a1, &v24);

        v14 = v24;
        v15 = v25;
        v16 = v26;
        REMMatrix.init(rowCount:columnCount:)(v25, v24, &v21);
        result = *(v16 + 16);
        if (!result)
        {
          goto LABEL_15;
        }

        v17 = v23;
        v18 = *(v23 + 16);
        if (!v18)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        if (((v15 | v14) & 0x8000000000000000) == 0)
        {
          v19 = v21;
          v20 = v22;
          vDSP_mtransD(result, 1, v18, 1, v15, v14);

          *a2 = v19;
          a2[1] = v20;
          a2[2] = v17;
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }

  return result;
}

void REMMatrix.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (*v0 < 0)
  {
    goto LABEL_16;
  }

  if (v1)
  {
    if (v2 < 0)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v4 = 0;
    v5 = MEMORY[0x277D839F8];
    v6 = MEMORY[0x277D83A80];
    v14 = *v0;
    while (!v2)
    {
LABEL_5:
      ++v4;

      MEMORY[0x231911790](10, 0xE100000000000000);

      MEMORY[0x231911790](0, 0xE000000000000000);

      if (v4 == v1)
      {
        return;
      }
    }

    v7 = v4;
    v8 = v4 * v2;
    v15 = v7;
    if ((v7 * v2) >> 64 == v8 >> 63)
    {
      v9 = 0;
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14718);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_230315CE0;
        v11 = v8 + v9;
        if (__OFADD__(v8, v9))
        {
          break;
        }

        ++v9;
        v12 = *(*(v3 + 16) + 8 * v11);
        *(v10 + 56) = v5;
        *(v10 + 64) = v6;
        *(v10 + 32) = v12;
        v13 = sub_23030F918();
        MEMORY[0x231911790](v13);

        if (v2 == v9)
        {
          v1 = v14;
          v4 = v15;
          goto LABEL_5;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }
}

void *assignWithCopy for REMMatrix(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];

  return a1;
}

uint64_t assignWithTake for REMMatrix(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

unint64_t sub_23030AF1C()
{
  result = qword_27DB1A108;
  if (!qword_27DB1A108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A108);
  }

  return result;
}

unint64_t sub_23030AF74()
{
  result = qword_27DB1A110;
  if (!qword_27DB1A110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A110);
  }

  return result;
}

void sub_23030AFCC(void *a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  if (!*(v3 + 16))
  {
    v14 = 0;
    v10 = 0;
    v7 = 0;
LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  v5 = sub_230081DAC(0);
  if (v6)
  {
    v7 = *(*(v3 + 56) + 8 * v5);
    if (*(v3 + 16))
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v7 = 0;
  if (!*(v3 + 16))
  {
LABEL_11:
    v14 = 0;
    v10 = 0;
    goto LABEL_14;
  }

LABEL_4:
  v8 = sub_230081DAC(1);
  if ((v9 & 1) == 0)
  {
    v10 = 0;
    if (*(v3 + 16))
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  v10 = *(*(v3 + 56) + 8 * v8);
  if (!*(v3 + 16))
  {
LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

LABEL_6:
  v11 = sub_230081DAC(2);
  if (v12)
  {
    v13 = *(*(v3 + 56) + 8 * v11);
    if (!*(v3 + 16))
    {
      goto LABEL_73;
    }
  }

  else
  {
    v13 = 0;
    if (!*(v3 + 16))
    {
      goto LABEL_73;
    }
  }

  v63 = sub_230081DAC(3);
  if (v64)
  {
    v14 = *(*(v3 + 56) + 8 * v63);
    if ((v14 & 0x8000000000000000) != 0)
    {
      if (*(v3 + 16))
      {
        goto LABEL_62;
      }

      goto LABEL_17;
    }

    goto LABEL_15;
  }

LABEL_73:
  while (1)
  {
    v14 = 0;
LABEL_15:
    if (__OFADD__(v14, 4))
    {
      break;
    }

    v14 = 5 * ((v14 + 4) / 5);
    if (*(v3 + 16))
    {
LABEL_62:
      v65 = sub_230081DAC(4);
      if (v66)
      {
        v17 = *(*(v3 + 56) + 8 * v65);
        if (!*(v3 + 16))
        {
          goto LABEL_69;
        }
      }

      else
      {
        v17 = 0;
        if (!*(v3 + 16))
        {
LABEL_69:
          v16 = 0;
LABEL_71:
          v93 = 0;
          v18 = 4;
          goto LABEL_19;
        }
      }

      v67 = sub_230081DAC(5);
      if (v68)
      {
        v16 = *(*(v3 + 56) + 8 * v67);
        if (!*(v3 + 16))
        {
          goto LABEL_71;
        }
      }

      else
      {
        v16 = 0;
        if (!*(v3 + 16))
        {
          goto LABEL_71;
        }
      }

      v69 = sub_230081DAC(6);
      if (v70)
      {
        v71 = *(*(v3 + 56) + 8 * v69);
      }

      else
      {
        v71 = 0;
      }

      v93 = v71;
      if (!*(v3 + 16) || (v72 = sub_230081DAC(7), (v73 & 1) == 0))
      {
        v18 = 4;
LABEL_19:
        v15 = 5 * (v18 / 5);
LABEL_20:
        v88 = v10;
        v89 = v13;
        if (!*(v3 + 16))
        {
          v91 = 0;
          v92 = 0;
          goto LABEL_37;
        }

        v19 = sub_230081DAC(8);
        if (v20)
        {
          v92 = *(*(v3 + 56) + 8 * v19);
          if (*(v3 + 16))
          {
            goto LABEL_23;
          }

LABEL_36:
          v91 = 0;
LABEL_37:
          v85 = 0;
          v87 = 0;
LABEL_38:
          v86 = 0;
LABEL_39:
          v84 = 0;
LABEL_40:
          v90 = 0;
          goto LABEL_41;
        }

        v92 = 0;
        if (!*(v3 + 16))
        {
          goto LABEL_36;
        }

LABEL_23:
        v21 = sub_230081DAC(9);
        if (v22)
        {
          v87 = *(*(v3 + 56) + 8 * v21);
          if (*(v3 + 16))
          {
            goto LABEL_25;
          }

LABEL_52:
          v91 = 0;
          v85 = 0;
          goto LABEL_38;
        }

        v87 = 0;
        if (!*(v3 + 16))
        {
          goto LABEL_52;
        }

LABEL_25:
        v23 = sub_230081DAC(10);
        if (v24)
        {
          v86 = *(*(v3 + 56) + 8 * v23);
          if (*(v3 + 16))
          {
            goto LABEL_27;
          }

LABEL_81:
          v91 = 0;
          v85 = 0;
          goto LABEL_39;
        }

        v86 = 0;
        if (!*(v3 + 16))
        {
          goto LABEL_81;
        }

LABEL_27:
        v25 = sub_230081DAC(11);
        if (v26)
        {
          v85 = *(*(v3 + 56) + 8 * v25);
          if (*(v3 + 16))
          {
            goto LABEL_29;
          }

LABEL_88:
          v91 = 0;
          goto LABEL_39;
        }

        v85 = 0;
        if (!*(v3 + 16))
        {
          goto LABEL_88;
        }

LABEL_29:
        v27 = sub_230081DAC(12);
        if (v28)
        {
          v84 = *(*(v3 + 56) + 8 * v27);
          if (*(v3 + 16))
          {
LABEL_31:
            v29 = sub_230081DAC(13);
            if (v30)
            {
              v91 = *(*(v3 + 56) + 8 * v29);
              if (!*(v3 + 16))
              {
                goto LABEL_40;
              }
            }

            else
            {
              v91 = 0;
              if (!*(v3 + 16))
              {
                goto LABEL_40;
              }
            }

            v79 = sub_230081DAC(14);
            if ((v80 & 1) == 0)
            {
              goto LABEL_40;
            }

            v90 = *(*(v3 + 56) + 8 * v79);
LABEL_41:
            if (!*(v3 + 16))
            {
              v34 = v14;
              v82 = 0;
              v37 = 0;
              v33 = 0;
              goto LABEL_55;
            }

            v31 = sub_230081DAC(15);
            if (v32)
            {
              v33 = *(*(v3 + 56) + 8 * v31);
              if (*(v3 + 16))
              {
                goto LABEL_44;
              }

LABEL_50:
              v34 = v14;
              v82 = 0;
              v37 = 0;
LABEL_55:
              v83 = 0;
LABEL_56:
              v81 = 0;
              goto LABEL_57;
            }

            v33 = 0;
            if (!*(v3 + 16))
            {
              goto LABEL_50;
            }

LABEL_44:
            v34 = v14;
            v35 = sub_230081DAC(16);
            if (v36)
            {
              v37 = *(*(v3 + 56) + 8 * v35);
              if (*(v3 + 16))
              {
                goto LABEL_46;
              }
            }

            else
            {
              v37 = 0;
              if (*(v3 + 16))
              {
LABEL_46:
                v38 = sub_230081DAC(17);
                if (v39)
                {
                  v40 = *(*(v3 + 56) + 8 * v38);
                }

                else
                {
                  v40 = 0;
                }

                v83 = v40;
                if (*(v3 + 16))
                {
                  v74 = sub_230081DAC(18);
                  if (v75)
                  {
                    v76 = *(*(v3 + 56) + 8 * v74);
                  }

                  else
                  {
                    v76 = 0;
                  }

                  v82 = v76;
                  if (!*(v3 + 16))
                  {
                    goto LABEL_56;
                  }

                  v77 = sub_230081DAC(19);
                  if ((v78 & 1) == 0)
                  {
                    goto LABEL_56;
                  }

                  v81 = *(*(v3 + 56) + 8 * v77);
                }

                else
                {
                  v81 = 0;
                  v82 = 0;
                }

LABEL_57:
                *a1 = v4;
                v41 = v4;
                v42 = MEMORY[0x277D84F98];
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                sub_2300A21FC(v7, 0, isUniquelyReferenced_nonNull_native);
                v44 = swift_isUniquelyReferenced_nonNull_native();
                sub_2300A21FC(v88, 1, v44);
                v45 = swift_isUniquelyReferenced_nonNull_native();
                sub_2300A21FC(v89, 2, v45);
                v46 = swift_isUniquelyReferenced_nonNull_native();
                sub_2300A21FC(v34, 3, v46);
                v47 = swift_isUniquelyReferenced_nonNull_native();
                sub_2300A21FC(v17, 4, v47);
                v48 = swift_isUniquelyReferenced_nonNull_native();
                sub_2300A21FC(v16, 5, v48);
                v49 = swift_isUniquelyReferenced_nonNull_native();
                sub_2300A21FC(v93, 6, v49);
                v50 = swift_isUniquelyReferenced_nonNull_native();
                sub_2300A21FC(v15, 7, v50);
                v51 = swift_isUniquelyReferenced_nonNull_native();
                sub_2300A21FC(v92, 8, v51);
                v52 = swift_isUniquelyReferenced_nonNull_native();
                sub_2300A21FC(v87, 9, v52);
                v53 = swift_isUniquelyReferenced_nonNull_native();
                sub_2300A21FC(v86, 10, v53);
                v54 = swift_isUniquelyReferenced_nonNull_native();
                sub_2300A21FC(v85, 11, v54);
                v55 = swift_isUniquelyReferenced_nonNull_native();
                sub_2300A21FC(v84, 12, v55);
                v56 = swift_isUniquelyReferenced_nonNull_native();
                sub_2300A21FC(v91, 13, v56);
                v57 = swift_isUniquelyReferenced_nonNull_native();
                sub_2300A21FC(v90, 14, v57);
                v58 = swift_isUniquelyReferenced_nonNull_native();
                sub_2300A21FC(v33, 15, v58);
                v59 = swift_isUniquelyReferenced_nonNull_native();
                sub_2300A21FC(v37, 16, v59);
                v60 = swift_isUniquelyReferenced_nonNull_native();
                sub_2300A21FC(v83, 17, v60);
                v61 = swift_isUniquelyReferenced_nonNull_native();
                sub_2300A21FC(v82, 18, v61);
                v62 = swift_isUniquelyReferenced_nonNull_native();
                sub_2300A21FC(v81, 19, v62);
                a1[1] = v42;
                return;
              }
            }

            v82 = 0;
            goto LABEL_55;
          }
        }

        else
        {
          v84 = 0;
          if (*(v3 + 16))
          {
            goto LABEL_31;
          }
        }

        v90 = 0;
        v91 = 0;
        goto LABEL_41;
      }

      v15 = *(*(v3 + 56) + 8 * v72);
      if (v15 < 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
LABEL_17:
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v93 = 0;
    }

    v18 = v15 + 4;
    if (!__OFADD__(v15, 4))
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t REMAccountSnapshotSummary.nsPayload.getter()
{
  v1 = 0;
  v2 = *(v0 + 8);
  v3 = MEMORY[0x277D84F98];
  while (1)
  {
    if (!*(v2 + 16))
    {
      goto LABEL_3;
    }

    v7 = byte_2844EA420[v1 + 32];
    sub_230081DAC(byte_2844EA420[v1 + 32]);
    if ((v8 & 1) == 0)
    {
      goto LABEL_3;
    }

    v9 = 0xE800000000000000;
    v10 = 0x746E756F434C5343;
    switch(v7)
    {
      case 1:
        v10 = 0x6C6562614C676174;
        v9 = 0xED0000746E756F43;
        break;
      case 2:
        v9 = 0xEE00746E756F4374;
        v10 = 0x73694C6C61746F74;
        break;
      case 3:
        v10 = 0xD000000000000015;
        v9 = 0x800000023033FD40;
        break;
      case 4:
        v10 = 0xD000000000000012;
        v9 = 0x800000023033FD60;
        break;
      case 5:
        v10 = 0xD000000000000018;
        v9 = 0x800000023033FD80;
        break;
      case 6:
        v10 = 0xD000000000000017;
        v9 = 0x800000023033FDA0;
        break;
      case 7:
        v10 = 0xD00000000000001ELL;
        v9 = 0x800000023033FDC0;
        break;
      case 8:
        v10 = 0xD000000000000010;
        v9 = 0x800000023033FDE0;
        break;
      case 9:
        v9 = 0xEA0000000000746ELL;
        v10 = 0x756F4370756F7267;
        break;
      case 10:
        v10 = 0xD000000000000013;
        v9 = 0x800000023033FE00;
        break;
      case 11:
        v10 = 0xD000000000000014;
        v9 = 0x800000023033FE20;
        break;
      case 12:
        break;
      case 13:
        v10 = 0x6154656E696C6E69;
        v9 = 0xEE00746E756F4367;
        break;
      case 14:
        v10 = 0xD000000000000012;
        v9 = 0x800000023033FE70;
        break;
      case 15:
        v10 = 0x656D686361747461;
        v9 = 0xEF746E756F43746ELL;
        break;
      case 16:
        v10 = 0xD000000000000014;
        v9 = 0x800000023033FEA0;
        break;
      case 17:
        v10 = 0xD000000000000015;
        v9 = 0x800000023033FEC0;
        break;
      case 18:
        v10 = 0xD00000000000001DLL;
        v9 = 0x800000023033FEE0;
        break;
      case 19:
        v10 = 0xD000000000000019;
        v9 = 0x800000023033FF00;
        break;
      default:
        v10 = 0x54746E756F636361;
        v9 = 0xEB00000000657079;
        break;
    }

    v11 = sub_23030FFB8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v3;
    v13 = sub_23005EE00(v10, v9);
    v15 = v3[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      break;
    }

    v19 = v14;
    if (v3[3] < v18)
    {
      sub_230087008(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_23005EE00(v10, v9);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_39;
      }

LABEL_31:
      if (v19)
      {
        goto LABEL_2;
      }

      goto LABEL_32;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_31;
    }

    v24 = v13;
    sub_23008B338();
    v13 = v24;
    if (v19)
    {
LABEL_2:
      v4 = v13;

      v3 = v26;
      v5 = v26[7];
      v6 = *(v5 + 8 * v4);
      *(v5 + 8 * v4) = v11;

      goto LABEL_3;
    }

LABEL_32:
    v3 = v26;
    v26[(v13 >> 6) + 8] |= 1 << v13;
    v21 = (v26[6] + 16 * v13);
    *v21 = v10;
    v21[1] = v9;
    *(v26[7] + 8 * v13) = v11;
    v22 = v26[2];
    v17 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v17)
    {
      goto LABEL_38;
    }

    v26[2] = v23;
LABEL_3:
    if (++v1 == 20)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = sub_2303112A8();
  __break(1u);
  return result;
}

void REMAccountSnapshotSummary.init(accountID:accountType:tagLabelCount:totalListCount:totalGroceryListCount:totalReminderCount:softDeletedReminderCount:incompleteReminderCount:incompleteGroceryReminderCount:sharedListsCount:groupCount:parentReminderCount:flaggedReminderCount:customSmartListCount:inlineTagCount:structuredTagCount:attachmentCount:nonDeletedAlarmCount:softDeletedAlarmCount:incompleteLocationAlarmsCount:incompleteTimeAlarmsCount:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  *a9 = a1;
  v50 = a1;
  v29 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2300A21FC(a2, 0, isUniquelyReferenced_nonNull_native);
  v31 = swift_isUniquelyReferenced_nonNull_native();
  sub_2300A21FC(a3, 1, v31);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  sub_2300A21FC(a4, 2, v32);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  sub_2300A21FC(a5, 3, v33);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  sub_2300A21FC(a6, 4, v34);
  v35 = swift_isUniquelyReferenced_nonNull_native();
  sub_2300A21FC(a7, 5, v35);
  v36 = swift_isUniquelyReferenced_nonNull_native();
  sub_2300A21FC(a8, 6, v36);
  v37 = swift_isUniquelyReferenced_nonNull_native();
  sub_2300A21FC(a10, 7, v37);
  v38 = swift_isUniquelyReferenced_nonNull_native();
  sub_2300A21FC(a11, 8, v38);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  sub_2300A21FC(a12, 9, v39);
  v40 = swift_isUniquelyReferenced_nonNull_native();
  sub_2300A21FC(a13, 10, v40);
  v41 = swift_isUniquelyReferenced_nonNull_native();
  sub_2300A21FC(a14, 11, v41);
  v42 = swift_isUniquelyReferenced_nonNull_native();
  sub_2300A21FC(a15, 12, v42);
  v43 = swift_isUniquelyReferenced_nonNull_native();
  sub_2300A21FC(a16, 13, v43);
  v44 = swift_isUniquelyReferenced_nonNull_native();
  sub_2300A21FC(a17, 14, v44);
  v45 = swift_isUniquelyReferenced_nonNull_native();
  sub_2300A21FC(a18, 15, v45);
  v46 = swift_isUniquelyReferenced_nonNull_native();
  sub_2300A21FC(a19, 16, v46);
  v47 = swift_isUniquelyReferenced_nonNull_native();
  sub_2300A21FC(a20, 17, v47);
  v48 = swift_isUniquelyReferenced_nonNull_native();
  sub_2300A21FC(a21, 18, v48);
  v49 = swift_isUniquelyReferenced_nonNull_native();
  sub_2300A21FC(a22, 19, v49);

  a9[1] = v29;
}

unint64_t sub_23030BF7C(char a1)
{
  result = 0x54746E756F636361;
  switch(a1)
  {
    case 1:
      result = 0x6C6562614C676174;
      break;
    case 2:
      result = 0x73694C6C61746F74;
      break;
    case 3:
    case 17:
      result = 0xD000000000000015;
      break;
    case 4:
    case 14:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      v3 = 10;
      goto LABEL_17;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x756F4370756F7267;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0x6154656E696C6E69;
      break;
    case 15:
      result = 0x656D686361747461;
      break;
    case 16:
      result = 0xD000000000000014;
      break;
    case 18:
      v3 = 9;
LABEL_17:
      result = v3 | 0xD000000000000014;
      break;
    case 19:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23030C1E8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_23030BF7C(*a1);
  v5 = v4;
  if (v3 == sub_23030BF7C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_230311048();
  }

  return v8 & 1;
}

uint64_t sub_23030C270()
{
  v1 = *v0;
  sub_230311358();
  sub_23030BF7C(v1);
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_23030C2D4()
{
  sub_23030BF7C(*v0);
  sub_23030F9C8();
}

uint64_t sub_23030C328()
{
  v1 = *v0;
  sub_230311358();
  sub_23030BF7C(v1);
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_23030C388@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23030C4D4();
  *a1 = result;
  return result;
}

unint64_t sub_23030C3B8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23030BF7C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_23030C418()
{
  result = qword_27DB1A118;
  if (!qword_27DB1A118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB1A120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A118);
  }

  return result;
}

unint64_t sub_23030C480()
{
  result = qword_27DB1A128;
  if (!qword_27DB1A128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A128);
  }

  return result;
}

uint64_t sub_23030C4D4()
{
  v0 = sub_230311228();

  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

uint64_t NSFileManager.rem_createProtectedTemporaryDirectoryIfNeeded()()
{
  v0 = NSTemporaryDirectory();
  _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

  sub_23030E8A8();
}

id sub_23030C59C()
{
  v0 = sub_23030E9B8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = NSTemporaryDirectory();
  _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

  sub_23030E8A8();

  v5 = sub_23030E8D8();
  (*(v1 + 8))(v3, v0);

  return v5;
}

id ConfigurationIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConfigurationIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConfigurationIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ConfigurationIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ConfigurationIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ConfigurationIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id ConfigurationIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_23030F8B8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id ConfigurationIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_23030F8B8();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for ConfigurationIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id ConfigurationIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_23030F8B8();

  v8 = sub_23030F8B8();

  if (a5)
  {
    v9 = sub_23030F638();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id ConfigurationIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_23030F8B8();

  v8 = sub_23030F8B8();

  if (a5)
  {
    v9 = sub_23030F638();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for ConfigurationIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

unint64_t sub_23030CD14@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_23030D4E4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_23030CD48(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 list];
  if (v3)
  {
    v4 = v3;
    v5 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_23030CDB0(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_23030F8B8();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setList_];
}

uint64_t sub_23030CE68()
{
  v1 = OBJC_IVAR___ConfigurationIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *ConfigurationIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___ConfigurationIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

char *ConfigurationIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___ConfigurationIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id ConfigurationIntentResponse.init()()
{
  *&v0[OBJC_IVAR___ConfigurationIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConfigurationIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ConfigurationIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___ConfigurationIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ConfigurationIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id ConfigurationIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id ConfigurationIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___ConfigurationIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ConfigurationIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_23030D288(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___ConfigurationIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for ConfigurationIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id ConfigurationIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_23030F638();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id ConfigurationIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___ConfigurationIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_23030F638();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for ConfigurationIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

id sub_23030D4AC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_23030D4E4(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_23030D51C()
{
  result = qword_27DB1A138;
  if (!qword_27DB1A138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB1A138);
  }

  return result;
}

id ConfigurationList.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_23030F8B8();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_23030F8B8();

  if (a6)
  {
    v10 = sub_23030F8B8();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id ConfigurationList.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_23030F8B8();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_23030F8B8();

  if (a6)
  {
    v10 = sub_23030F8B8();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for ConfigurationList();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id ConfigurationList.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ConfigurationList.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ConfigurationList();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_23030D998(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___ConfigurationListResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_23030DA4C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_23030DB44();

    sub_230310AF8();
  }

  else
  {

    sub_230311078();
    sub_23030DB44();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_23030DB44();
  v2 = sub_23030FCC8();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___ConfigurationListResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

unint64_t sub_23030DB44()
{
  result = qword_27DB1A140;
  if (!qword_27DB1A140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DB1A140);
  }

  return result;
}

id sub_23030DBFC(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___ConfigurationListResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id ConfigurationListResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_23030F638();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id ConfigurationListResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_23030F638();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for ConfigurationListResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_23030DFEC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}