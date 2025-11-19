uint64_t (*TTRIRemindersListReminderCellAccessibilityElement.accessibilityHint.modify(id *a1))()
{
  *a1 = TTRIRemindersListReminderCellAccessibilityElement.accessibilityHint.getter();
  a1[1] = v2;
  return destroy for TTRRemindersBoardCellInfoButtonStates;
}

uint64_t TTRIRemindersListReminderCellAccessibilityElement.accessibilityCustomRotors.getter()
{
  v1 = v0;
  if ([v0 accessibilityContainer])
  {
    ObjectType = swift_getObjectType();
    v3 = swift_conformsToProtocol2();
    if (v3)
    {
      v4 = (*(v3 + 96))(ObjectType, v3);
      swift_unknownObjectRelease();
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v4 = 0;
LABEL_6:
  v5 = [v1 _accessibilityInternalTextLinkCustomRotors];
  if (v5)
  {
    v6 = v5;
    sub_21D0D8CF0(0, &qword_27CE5DE78);
    v7 = sub_21DBFA5EC();

    if (v4)
    {
      sub_21D563218(v7);
    }

    else
    {
    }
  }

  return v4;
}

uint64_t TTRIRemindersListReminderCellAccessibilityElement._accessibilityInternalTextLinks()()
{
  v1 = [v0 accessibilityContainer];
  if (v1)
  {
    v2 = v1;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v3 = [v2 _accessibilityInternalTextLinks];
      swift_unknownObjectRelease();
      if (v3)
      {
        sub_21D0D8CF0(0, &unk_27CE5F130);
        v4 = sub_21DBFA5EC();

        return v4;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return MEMORY[0x277D84F90];
}

id sub_21D6CF7E8(void *a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4)
{
  v6 = a1;
  v7 = a3();

  if (v7)
  {
    sub_21D0D8CF0(0, a4);
    v8 = sub_21DBFA5DC();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id TTRIRemindersListReminderCellAccessibilityElement.accessibilityDragSourceDescriptors.getter()
{
  result = [v0 accessibilityContainer];
  if (result)
  {
    v2 = result;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v3 = [v2 accessibilityDragSourceDescriptors];
      swift_unknownObjectRelease();
      if (v3)
      {
        sub_21D0D8CF0(0, &unk_27CE5FB40);
        v4 = sub_21DBFA5EC();

        return v4;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

uint64_t (*TTRIRemindersListReminderCellAccessibilityElement.accessibilityDragSourceDescriptors.modify(void *a1))()
{
  v3 = [v1 accessibilityContainer];
  if (v3)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v4 = [v3 accessibilityDragSourceDescriptors];
      swift_unknownObjectRelease();
      if (v4)
      {
        sub_21D0D8CF0(0, &unk_27CE5FB40);
        v3 = sub_21DBFA5EC();

        goto LABEL_7;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v3 = 0;
  }

LABEL_7:
  *a1 = v3;
  return destroy for TTRReminderDetailViewModel.LocationQuickPicksState;
}

id TTRIRemindersListReminderCellAccessibilityElement.accessibilityDropPointDescriptors.getter()
{
  result = [v0 accessibilityContainer];
  if (result)
  {
    v7 = result;
    swift_getObjectType();
    if (!swift_conformsToProtocol2() || (v8 = [v7 accessibilityDropPointDescriptors]) == 0)
    {
LABEL_12:
      swift_unknownObjectRelease();
      return 0;
    }

    v9 = v8;
    sub_21D0D8CF0(0, &unk_27CE5FB40);
    v10 = sub_21DBFA5EC();

    if (v10 >> 62)
    {
      if (sub_21DBFBD7C())
      {
        goto LABEL_6;
      }
    }

    else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x223D44740](0, v10);
      }

      else
      {
        if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v11 = *(v10 + 32);
      }

      v12 = v11;

      v10 = [v12 view];

      if (v10)
      {
        [swift_unknownObjectRetain() bounds];
        [v7 convertRect:v10 toCoordinateSpace:?];
        v2 = v13;
        v3 = v14;
        v4 = v15;
        v5 = v16;
        swift_unknownObjectRelease();
        v1 = 0x800000021DC67CE0;
        if (qword_280D1BAA8 == -1)
        {
LABEL_11:
          sub_21DBF516C();
          v37.origin.x = v2;
          v37.origin.y = v3;
          v37.size.width = v4;
          v37.size.height = v5;
          MidX = CGRectGetMidX(v37);
          v38.origin.x = v2;
          v38.origin.y = v3;
          v38.size.width = v4;
          v38.size.height = v5;
          CGRectGetMidY(v38);
          v39.origin.x = v2;
          v39.origin.y = v3;
          v39.size.width = v4;
          v39.size.height = v5;
          v18 = CGRectGetMinY(v39) + 5.0;
          v19 = objc_allocWithZone(MEMORY[0x277D750B8]);
          v20 = v10;
          v21 = sub_21DBFA12C();

          v36 = [v19 initWithName:v21 point:v20 inView:{MidX, v18, v1}];

          sub_21DBF516C();
          v40.origin.x = v2;
          v40.origin.y = v3;
          v40.size.width = v4;
          v40.size.height = v5;
          v22 = CGRectGetMidX(v40);
          v41.origin.x = v2;
          v41.origin.y = v3;
          v41.size.width = v4;
          v41.size.height = v5;
          MidY = CGRectGetMidY(v41);
          v24 = objc_allocWithZone(MEMORY[0x277D750B8]);
          v25 = v20;
          v26 = sub_21DBFA12C();

          v27 = [v24 initWithName:v26 point:v25 inView:{v22, MidY, 0x800000021DC67D40}];

          sub_21DBF516C();
          v42.origin.x = v2;
          v42.origin.y = v3;
          v42.size.width = v4;
          v42.size.height = v5;
          v28 = CGRectGetMidX(v42);
          v43.origin.x = v2;
          v43.origin.y = v3;
          v43.size.width = v4;
          v43.size.height = v5;
          CGRectGetMidY(v43);
          v44.origin.x = v2;
          v44.origin.y = v3;
          v44.size.width = v4;
          v44.size.height = v5;
          v29 = CGRectGetMaxY(v44) + -5.0;
          v30 = objc_allocWithZone(MEMORY[0x277D750B8]);
          v31 = v25;
          v32 = sub_21DBFA12C();

          v33 = [v30 initWithName:v32 point:v31 inView:{v28, v29, 0x800000021DC67D70}];

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_21DC0BFD0;
          *(v34 + 32) = v36;
          *(v34 + 40) = v27;
          *(v34 + 48) = v33;
          v35 = v36;

          swift_unknownObjectRelease();
          return v34;
        }

LABEL_19:
        swift_once();
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    swift_unknownObjectRelease();

    return 0;
  }

  return result;
}

id sub_21D6D0020(SEL *a1)
{
  v3 = [v1 accessibilityContainer];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v5 = [v4 *a1];
  }

  else
  {
    v5 = 0;
  }

  swift_unknownObjectRelease();
  return v5;
}

id sub_21D6D00C0(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = [v4 accessibilityContainer];
  if (v5)
  {
    v6 = v5;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v7 = [v6 *a3];
      swift_unknownObjectRelease();

      return v7;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return 0;
}

uint64_t sub_21D6D0168()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE60150 = result;
  *algn_27CE60158 = v1;
  return result;
}

uint64_t sub_21D6D022C()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE60160 = result;
  *algn_27CE60168 = v1;
  return result;
}

uint64_t sub_21D6D02F4()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE60170 = result;
  *algn_27CE60178 = v1;
  return result;
}

uint64_t sub_21D6D03B8()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE60180 = result;
  *algn_27CE60188 = v1;
  return result;
}

uint64_t sub_21D6D047C()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE60190 = result;
  *algn_27CE60198 = v1;
  return result;
}

uint64_t sub_21D6D0540()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE601A0 = result;
  *algn_27CE601A8 = v1;
  return result;
}

uint64_t sub_21D6D0604()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE601B0 = result;
  *algn_27CE601B8 = v1;
  return result;
}

uint64_t sub_21D6D06C8()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE601C0 = result;
  *algn_27CE601C8 = v1;
  return result;
}

id TTRIRemindersListReminderCellAccessibilityElement.init(accessibilityContainer:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC15RemindersUICore49TTRIRemindersListReminderCellAccessibilityElement_ttriAccessibilityLabelSeparator;
  if (qword_280D1B938 != -1)
  {
    swift_once();
  }

  v5 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v6 = sub_21DBFA12C();
  v7 = [v5 initWithString_];

  *&v1[v4] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_21DBFC62C();
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithAccessibilityContainer_, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

id TTRIRemindersListReminderCellAccessibilityElement.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRIRemindersListReminderCellAccessibilityElement.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC15RemindersUICore49TTRIRemindersListReminderCellAccessibilityElement_ttriAccessibilityLabelSeparator;
  if (qword_280D1B938 != -1)
  {
    swift_once();
  }

  v3 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v4 = sub_21DBFA12C();
  v5 = [v3 initWithString_];

  *&v0[v2] = v5;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id TTRIRemindersListReminderCellAccessibilityElement.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21D6D0C14(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        return a4 == 3;
      case 4:
        return a4 == 4;
      case 5:
        return a4 == 5;
    }
  }

  else
  {
    switch(a2)
    {
      case 0:
        return !a4;
      case 1:
        return a4 == 1;
      case 2:
        return a4 == 2;
    }
  }

  if (a4 < 6)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_21DBFC64C();
  }
}

uint64_t sub_21D6D0CD4(uint64_t a1)
{
  v1 = 0xEB00000000656C62;
  v2 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  if (v3)
  {
    v23 = MEMORY[0x277D84F90];
    sub_21D18E678(0, v3, 0);
    v2 = v23;
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      if (*v5 > 2)
      {
        switch(v6)
        {
          case 3uLL:
            if (qword_280D1BAA8 == -1)
            {
              break;
            }

            goto LABEL_29;
          case 4uLL:
            if (qword_280D1BAA8 != -1)
            {
              goto LABEL_29;
            }

            break;
          case 5uLL:
            if (qword_280D1BAA8 != -1)
            {
              goto LABEL_29;
            }

            break;
          default:
LABEL_18:
            sub_21D6D1380(*(v5 - 1), *v5);
            v8 = qword_280D1BAA8;
            sub_21DBF8E0C();
            if (v8 != -1)
            {
              swift_once();
            }

            sub_21DBF516C();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
            v9 = v1;
            v10 = swift_allocObject();
            *(v10 + 16) = xmmword_21DC08D00;
            *(v10 + 56) = MEMORY[0x277D837D0];
            *(v10 + 64) = sub_21D17A884();
            *(v10 + 32) = v7;
            *(v10 + 40) = v6;
            v11 = sub_21DBFA13C();
            v13 = v12;
            sub_21D6D1394(v7, v6);

            v1 = v9;

            goto LABEL_25;
        }
      }

      else
      {
        if (!v6)
        {
          if (qword_280D1BAA8 == -1)
          {
            goto LABEL_24;
          }

          goto LABEL_29;
        }

        if (v6 == 1)
        {
          if (qword_280D1BAA8 == -1)
          {
            goto LABEL_24;
          }

LABEL_29:
          swift_once();
          goto LABEL_24;
        }

        if (v6 != 2)
        {
          goto LABEL_18;
        }

        if (qword_280D1BAA8 != -1)
        {
          goto LABEL_29;
        }
      }

LABEL_24:
      v11 = sub_21DBF516C();
      v13 = v14;
LABEL_25:
      v16 = v23[2];
      v15 = v23[3];
      if (v16 >= v15 >> 1)
      {
        sub_21D18E678((v15 > 1), v16 + 1, 1);
      }

      v5 += 2;
      v23[2] = v16 + 1;
      v17 = &v23[2 * v16];
      v17[4] = v11;
      v17[5] = v13;
      --v3;
    }

    while (v3);
  }

  v18 = Array<A>.ttrAccessibilitySpeakableList.getter(v2);
  v20 = v19;

  if (v20)
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_21DC08D00;
    *(v21 + 56) = MEMORY[0x277D837D0];
    *(v21 + 64) = sub_21D17A884();
    *(v21 + 32) = v18;
    *(v21 + 40) = v20;
    v18 = sub_21DBFA13C();
  }

  return v18;
}

uint64_t sub_21D6D1380(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
    return sub_21DBF8E0C();
  }

  return result;
}

uint64_t sub_21D6D1394(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t sub_21D6D1498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.LinkAttachment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D6D14FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersListReminderCellAccessibilityElement.AccessibilityHints.ActionsRotor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRIRemindersListReminderCellAccessibilityElement.AccessibilityHints.ActionsRotor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_21D6D163C(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TTRIReminderCellQuickBarTimeInteractor();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  v6 = type metadata accessor for TTRIReminderCellQuickBarTimeRouter();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25[3] = v6;
  v25[4] = &off_282ECD170;
  v25[0] = v7;
  type metadata accessor for TTRIReminderCellQuickBarTimePresenter();
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v25, v6);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v25[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v10);
  v14 = *v12;
  v15 = (v8 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellQuickBarTimePresenter_router);
  v15[3] = v6;
  v15[4] = &off_282ECD170;
  *v15 = v14;
  *(v8 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + 40) = 0;
  swift_unknownObjectWeakInit();
  v16 = OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellQuickBarTimePresenter_dateComponents;
  v17 = sub_21DBF509C();
  (*(*(v17 - 8) + 56))(v8 + v16, 1, 1, v17);
  v18 = (v8 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellQuickBarTimePresenter_interactor);
  *v18 = v5;
  v18[1] = &off_282ECD168;

  __swift_destroy_boxed_opaque_existential_0(v25);
  v19 = type metadata accessor for TTRIReminderCellQuickBarTimeViewController();
  v20 = objc_allocWithZone(v19);

  v22 = sub_21D6D18E4(v21, v20);

  *(v5 + 24) = &off_282ECD198;
  swift_unknownObjectWeakAssign();
  *(v8 + 24) = sub_21D6D1ECC();
  swift_unknownObjectWeakAssign();
  *(v8 + 40) = a3;
  swift_unknownObjectWeakAssign();
  a1[3] = v19;
  a1[4] = &off_282ECD220;

  *a1 = v22;
  return v8;
}

void *sub_21D6D18E4(void *a1, void *a2)
{
  v41[0] = sub_21DBFB7EC();
  v4 = *(v41[0] - 1);
  MEMORY[0x28223BE20](v41[0]);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBFB95C();
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v41 - v11;
  v13 = off_282ECD1B8;

  v14 = sub_21DBFA12C();
  v15 = [objc_opt_self() systemImageNamed_];

  if (qword_27CE57478 != -1)
  {
    swift_once();
  }

  v41[2] = *algn_27CE66FE8;
  v41[3] = qword_27CE66FE0;
  if (qword_27CE57480 != -1)
  {
    swift_once();
  }

  v41[4] = *algn_27CE66FF8;
  v41[5] = qword_27CE66FF0;
  v16 = MEMORY[0x277D85000];
  v17 = (a2 + *((*MEMORY[0x277D85000] & *a2) + 0x68));
  *v17 = a1;
  v17[1] = v13;
  *(a2 + *((*v16 & *a2) + 0x70)) = 1148846080;
  v18 = (a2 + *((*v16 & *a2) + 0x60));
  *v18 = 0;
  v18[1] = 0;

  sub_21DBFB8EC();
  v19 = [objc_opt_self() quaternarySystemFillColor];
  v41[1] = a1;
  v20 = sub_21DBFB79C();
  sub_21DBF883C();
  v20(v45, 0);
  (*(v4 + 104))(v6, *MEMORY[0x277D74FD8], v41[0]);
  sub_21DBFB7FC();
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v21 = sub_21D900614(7);
  v22 = [objc_opt_self() configurationWithFont:v21 scale:2];

  sub_21DBFB78C();
  v41[0] = v15;
  sub_21DBFB8FC();
  sub_21DBFB80C();
  sub_21DBFB87C();
  type metadata accessor for TTRIReminderCellQuickBarPopoverAnchoringButton();
  v23 = v42;
  (*(v42 + 16))(v9, v12, v43);
  v24 = sub_21DBFB96C();
  v25 = MEMORY[0x277D85000];
  *(a2 + *((*MEMORY[0x277D85000] & *a2) + 0x78)) = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE601E0);
  v44.receiver = a2;
  v44.super_class = v26;
  v27 = objc_msgSendSuper2(&v44, sel_init);
  v28 = *((*v25 & *v27) + 0x78);
  v29 = *(v27 + v28);
  v30 = v27;
  v31 = v29;
  sub_21D5D8F60();

  [*(v27 + v28) setShowsMenuAsPrimaryAction_];
  v32 = *(v27 + v28);
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = v32;

  v35 = _sSo6UIMenuC15RemindersUICoreE12ttr_uncached7options_ABSo0A7OptionsV_ABSgyctFZ_0(0, sub_21D1AA09C, v33);

  [v34 setMenu_];

  [*(v27 + v28) setPreferredMenuElementOrder_];
  v36 = *(v27 + v28);
  v37 = sub_21DBFA12C();
  [v36 setAccessibilityLabel_];

  v38 = *(v27 + v28);
  v39 = sub_21DBFA12C();
  [v38 setAccessibilityHint_];

  (*(v23 + 8))(v12, v43);
  return v30;
}

unint64_t sub_21D6D1ECC()
{
  result = qword_27CE601D8;
  if (!qword_27CE601D8)
  {
    type metadata accessor for TTRIReminderCellQuickBarTimeViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE601D8);
  }

  return result;
}

uint64_t sub_21D6D1F6C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v2 - 8);
  v67 = &v62 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0);
  MEMORY[0x28223BE20](v4 - 8);
  v66 = &v62 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v6 - 8);
  v77 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v76 = &v62 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v62 - v11;
  v13 = sub_21DBF509C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21DBFA12C();
  v18 = objc_opt_self();
  v19 = &off_278331000;
  v80 = [v18 systemImageNamed_];

  v20 = OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellQuickBarTimePresenter_dateComponents;
  swift_beginAccess();
  v21 = *(v14 + 48);
  v81 = 1;
  v22 = v21(v1 + v20, 1, v13);
  v79 = v14 + 48;
  if (v22)
  {
    v63 = 0;
  }

  else
  {
    v63 = sub_21DBF4F5C();
    v81 = v23;
  }

  sub_21D1A91F8(v1 + v20, v12);
  swift_endAccess();
  if (v21(v12, 1, v13) == 1)
  {
    sub_21D0CF7E0(v12, &qword_27CE58D60);
    v68 = 0;
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v24 = sub_21DBF4FCC();
    if ((v25 & 1) != 0 || !v24) && ((v26 = sub_21DBF4FEC(), (v27) || !v26))
    {
      v28 = sub_21DBF4DEC();
      v30 = v29;
      (*(v14 + 8))(v16, v13);
      v31 = (v30 & 1) != 0 || v28 == 0;
      v68 = v31;
    }

    else
    {
      (*(v14 + 8))(v16, v13);
      v68 = 0;
    }
  }

  v32 = off_27CE601F0;
  v33 = *(off_27CE601F0 + 2);
  v34 = MEMORY[0x277D84F90];
  v83 = v1;
  if (v33)
  {
    v74 = v21;
    v62 = v18;
    v84 = MEMORY[0x277D84F90];
    sub_21DBF8E0C();
    sub_21DBFC01C();
    v72 = sub_21D0D8CF0(0, &qword_280D0C1D0);
    v78 = 0;
    v65 = (v14 + 32);
    v64 = v68;
    v70 = (v14 + 56);
    v71 = (v14 + 16);
    v35 = 32;
    v36 = v81;
    v75 = v20;
    v73 = v32;
    while (1)
    {
      v42 = *&v32[v35];
      v82 = swift_allocBox();
      v44 = v43;
      v45 = v76;
      sub_21D1A91F8(v1 + v20, v76);
      v46 = v74;
      if (v74(v45, 1, v13) == 1)
      {
        v47 = sub_21DBF5A2C();
        v48 = *(*(v47 - 8) + 56);
        v69 = v42;
        v48(v66, 1, 1, v47);
        v49 = sub_21DBF5C4C();
        (*(*(v49 - 8) + 56))(v67, 1, 1, v49);
        v42 = v69;
        sub_21DBF504C();
        if (v46(v45, 1, v13) != 1)
        {
          sub_21D0CF7E0(v45, &qword_27CE58D60);
        }
      }

      else
      {
        (*v65)(v44, v45, v13);
      }

      sub_21DBFB39C();
      sub_21DBF4F6C();
      sub_21DBF4FDC();
      sub_21DBF4FFC();
      sub_21DBF4DFC();
      v50 = sub_21DBF4F5C();
      if (v36)
      {
        if ((v51 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else if ((v51 & 1) != 0 || v63 != v50)
      {
        goto LABEL_18;
      }

      v78 |= v68;
LABEL_18:
      v37 = v77;
      (*v71)(v77, v44, v13);
      (*v70)(v37, 0, 1, v13);
      sub_21D6D3434(v37, 1);
      sub_21D0CF7E0(v37, &qword_27CE58D60);
      _s15RemindersUICore21TTRLocalizableStringsO14InCellQuickBarO9timeOfDayySSSo016REMLocalizedTimejK0VFZ_0(v42);
      v38 = swift_allocObject();
      swift_weakInit();
      v39 = swift_allocObject();
      v40 = v82;
      *(v39 + 16) = v38;
      *(v39 + 24) = v40;
      v41 = v80;
      v1 = v83;
      sub_21DBFB77C();
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      v35 += 8;
      --v33;
      v36 = v81;
      v20 = v75;
      v32 = v73;
      if (!v33)
      {

        v34 = v84;
        v18 = v62;
        v19 = &off_278331000;
        break;
      }
    }
  }

  v84 = v34;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v52 = sub_21DBFA12C();
  v53 = [v18 v19[482]];

  sub_21D0D8CF0(0, &qword_280D0C1D0);
  swift_allocObject();
  swift_weakInit();
  v54 = sub_21DBFB77C();
  MEMORY[0x223D42D80]();
  if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21DBFA63C();
  }

  sub_21DBFA6CC();
  v55 = v84;
  sub_21DBF516C();
  swift_allocObject();
  swift_weakInit();
  v56 = sub_21DBFB77C();
  sub_21D0D8CF0(0, &qword_280D0C1F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_21DC09CF0;
  *(v57 + 32) = v56;
  v58 = v56;
  v59 = sub_21DBFB58C();
  if (v55 >> 62 && (result = sub_21DBFBD7C(), result < 0))
  {
    __break(1u);
  }

  else
  {
    sub_21DBD1730(0, 0, v59);
    v60 = sub_21DBFB58C();

    return v60;
  }

  return result;
}

uint64_t sub_21D6D2B6C()
{
  v0 = type metadata accessor for TTRDateChangeType();
  MEMORY[0x28223BE20](v0);
  v2 = &v8[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_21DBF509C();
  v4 = swift_projectBox();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    (*(*(v3 - 8) + 16))(v2, v4, v3);
    swift_storeEnumTagMultiPayload();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;

      sub_21D1A9270(v2, v7);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return sub_21D1A94E8(v2);
  }

  return result;
}

void sub_21D6D2CD4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      v4 = (*(*(v2 + 8) + 40))(ObjectType);
      swift_unknownObjectRelease();
      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        v6 = v5;
        v8 = v4;
        v9 = 0u;
        v10 = 0u;
        v11 = 1;
        v12 = 0;
        v13 = 1;

        v7 = v4;
        sub_21D6D3F04(&v8, v6);

        swift_unknownObjectRelease();
        sub_21D1A9430(&v8);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_21D6D2DF0()
{
  v0 = type metadata accessor for TTRDateChangeType();
  MEMORY[0x28223BE20](v0);
  v2 = &v17[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17[-v4];
  v6 = sub_21DBF509C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellQuickBarTimePresenter_dateComponents;
    swift_beginAccess();
    sub_21D1A91F8(v11 + v12, v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      return sub_21D0CF7E0(v5, &qword_27CE58D60);
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      v13 = sub_21DBF4EDC();
      v14 = [v13 rem_allDayDateComponents];

      sub_21DBF4EFC();
      swift_storeEnumTagMultiPayload();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v16 = Strong;

        sub_21D1A9270(v2, v16);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      sub_21D1A94E8(v2);
      return (*(v7 + 8))(v9, v6);
    }
  }

  return result;
}

uint64_t sub_21D6D30A0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15[-v4];
  v6 = OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellQuickBarTimePresenter_dateComponents;
  swift_beginAccess();
  sub_21D1A9544(a1, v1 + v6);
  swift_endAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    sub_21D1A91F8(v1 + v6, v5);
    v9 = sub_21D6D3434(v5, 0);
    v11 = v10;
    sub_21D0CF7E0(v5, &qword_27CE58D60);
    v12 = (*(*(v7 + 8) + 32))(v15, ObjectType);
    *v13 = v9;
    v13[1] = v11;

    v12(v15, 0);
    swift_unknownObjectRelease();
  }

  return sub_21D0CF7E0(a1, &qword_27CE58D60);
}

id sub_21D6D3224()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v0 setDateStyle_];
  result = [v0 setTimeStyle_];
  qword_27CE601E8 = v0;
  return result;
}

uint64_t sub_21D6D3288()
{
  sub_21D157444(v0 + 16);
  sub_21D157444(v0 + 32);
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellQuickBarTimePresenter_dateComponents, &qword_27CE58D60);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC15RemindersUICore37TTRIReminderCellQuickBarTimePresenter_router);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIReminderCellQuickBarTimePresenter()
{
  result = qword_27CE60208;
  if (!qword_27CE60208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D6D3380()
{
  sub_21D1A919C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21D6D3434(uint64_t a1, int a2)
{
  v92 = a2;
  v3 = sub_21DBF5C4C();
  v96 = *(v3 - 8);
  v97 = v3;
  MEMORY[0x28223BE20](v3);
  v88 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v77 - v6;
  v8 = sub_21DBF604C();
  v94 = *(v8 - 8);
  v95 = v8;
  MEMORY[0x28223BE20](v8);
  v93 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v10 - 8);
  v91 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v77 - v13;
  v98 = sub_21DBF5A2C();
  v15 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v18 - 8);
  v90 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v77 - v21;
  v23 = sub_21DBF563C();
  v100 = *(v23 - 8);
  v101 = v23;
  MEMORY[0x28223BE20](v23);
  v89 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v99 = &v77 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v77 - v28;
  v30 = sub_21DBF509C();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v77 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D1A91F8(a1, v29);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    v34 = &qword_27CE58D60;
    v35 = v29;
LABEL_3:
    sub_21D0CF7E0(v35, v34);
    return 0;
  }

  (*(v31 + 32))(v33, v29, v30);
  v36 = sub_21DBF4EDC();
  v37 = [v36 rem_isAllDayDateComponents];

  if (v37)
  {
    (*(v31 + 8))(v33, v30);
    return 0;
  }

  v86 = objc_opt_self();
  v39 = [v86 currentCalendar];
  sub_21DBF596C();

  sub_21DBF597C();
  v40 = *(v15 + 8);
  v87 = v15 + 8;
  v85 = v40;
  v40(v17, v98);
  v41 = v100;
  v42 = v101;
  v43 = v100 + 48;
  v84 = *(v100 + 48);
  if (v84(v22, 1, v101) == 1)
  {
    (*(v31 + 8))(v33, v30);
    v34 = &qword_27CE58D68;
    v35 = v22;
    goto LABEL_3;
  }

  v81 = v7;
  v44 = *(v41 + 32);
  v79 = v41 + 32;
  v78 = v44;
  v44(v99, v22, v42);
  if (qword_27CE56BF0 != -1)
  {
    swift_once();
  }

  v45 = qword_27CE601E8;
  sub_21DBF507C();
  v46 = v96;
  v47 = v97;
  v48 = *(v96 + 48);
  v83 = v96 + 48;
  v82 = v48;
  v49 = v48(v14, 1, v97);
  v80 = v43;
  if (v49 == 1)
  {
    v50 = 0;
  }

  else
  {
    v50 = sub_21DBF5C0C();
    (*(v46 + 8))(v14, v47);
  }

  [v45 setTimeZone_];

  v51 = qword_27CE601E8;
  v52 = v99;
  v53 = sub_21DBF55BC();
  v54 = [v51 stringFromDate_];

  v55 = sub_21DBFA16C();
  v57 = v56;

  v104 = v55;
  v105 = v57;
  v58 = v93;
  v59 = v94;
  v60 = v95;
  (*(v94 + 104))(v93, *MEMORY[0x277D44DC0], v95);
  LOBYTE(v55) = sub_21DBF603C();
  (*(v59 + 8))(v58, v60);
  if ((v55 & 1) == 0 || (v92 & 1) == 0)
  {
    (*(v100 + 8))(v52, v101);
LABEL_19:
    (*(v31 + 8))(v33, v30);
    return v104;
  }

  v61 = v91;
  sub_21DBF507C();
  v62 = v97;
  if (v82(v61, 1, v97) != 1)
  {
    v63 = v96;
    v64 = v81;
    (*(v96 + 32))(v81, v61, v62);
    v65 = [v86 currentCalendar];
    sub_21DBF596C();

    v66 = v90;
    sub_21DBF597C();
    v85(v17, v98);
    v67 = v101;
    if (v84(v66, 1, v101) == 1)
    {
      (*(v63 + 8))(v64, v62);
      (*(v100 + 8))(v99, v67);
      (*(v31 + 8))(v33, v30);
      sub_21D0CF7E0(v66, &qword_27CE58D68);
      return v104;
    }

    v68 = v89;
    v78(v89, v66, v67);
    v69 = v67;
    v70 = sub_21DBF5BDC();
    if (v71)
    {
      v72 = v71;
      v98 = v70;
      v73 = [objc_opt_self() defaultTimeZone];
      v74 = v88;
      sub_21DBF5C2C();

      sub_21D5B60BC();
      LOBYTE(v73) = sub_21DBFA10C();
      v75 = *(v63 + 8);
      v75(v74, v62);
      if ((v73 & 1) == 0)
      {
        v102 = 32;
        v103 = 0xE100000000000000;
        MEMORY[0x223D42AA0](v98, v72);

        MEMORY[0x223D42AA0](v102, v103);
      }

      v69 = v101;
      v76 = *(v100 + 8);
      v76(v89, v101);
      v75(v64, v62);
    }

    else
    {
      v76 = *(v100 + 8);
      v76(v68, v69);
      (*(v63 + 8))(v64, v62);
    }

    v76(v99, v69);
    goto LABEL_19;
  }

  (*(v100 + 8))(v52, v101);
  (*(v31 + 8))(v33, v30);
  sub_21D0CF7E0(v61, &unk_27CE60DB0);
  return v104;
}

uint64_t sub_21D6D3F04(_OWORD *a1, uint64_t a2)
{
  v3 = (a2 + OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_quickBarDelegate);
  result = swift_beginAccess();
  v5 = v3[3];
  if (v5)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v3, v5);
    v7 = *v6;
    v8 = *v6 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v9 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      v11 = a1[1];
      v12[0] = *a1;
      v12[1] = v11;
      v13[0] = a1[2];
      *(v13 + 9) = *(a1 + 41);
      (*(v9 + 88))(v7, v12, ObjectType, v9);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t type metadata accessor for TTRIReminderCellQuickBarTimeViewController()
{
  result = qword_27CE60218;
  if (!qword_27CE60218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21D6D4044(uint64_t a1)
{
  result = sub_21D6D406C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21D6D406C()
{
  result = qword_27CE60228;
  if (!qword_27CE60228)
  {
    type metadata accessor for TTRIReminderCellQuickBarTimeViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE60228);
  }

  return result;
}

void sub_21D6D40C4(id a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_contact);
  *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_contact) = a1;
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    v7 = v3;
    goto LABEL_8;
  }

  v7 = v3;
  if (!v3)
  {
    a1 = a1;
    goto LABEL_8;
  }

  sub_21D0D8CF0(0, &qword_280D0C1A0);
  a1 = a1;
  v4 = v7;
  v5 = sub_21DBFB63C();

  if ((v5 & 1) == 0)
  {
LABEL_8:
    sub_21D6D4234();

    v6 = v7;
    goto LABEL_9;
  }

  v6 = v4;
LABEL_9:
}

uint64_t sub_21D6D41B4(uint64_t result, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_name);
  v4 = *(v2 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_name);
  v5 = *(v2 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_name + 8);
  *v3 = result;
  v3[1] = a2;
  if (a2)
  {
    if (v5)
    {
      v6 = v4 == result && v5 == a2;
      if (v6 || (sub_21DBFC64C() & 1) != 0)
      {
        goto LABEL_11;
      }
    }
  }

  else if (!v5)
  {
    return result;
  }

  sub_21D6D43D8();
LABEL_11:
}

void sub_21D6D4234()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_contact;
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_contact);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_avatarViewController);
    v4 = v2;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = sub_21D6D4760(v0);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_21DC09CF0;
    *(v9 + 32) = v2;
    sub_21D0D8CF0(0, &qword_280D0C1A0);
    v10 = v2;
    v11 = v3;
    v12 = sub_21DBFA5DC();

    [v5 setContacts_];
  }

  else
  {
    v6 = OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_avatarViewController;
    v7 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_avatarViewController);
    if (v7)
    {
      v8 = [v7 viewIfLoaded];
    }

    else
    {
      v8 = 0;
    }

    [v8 removeFromSuperview];

    v12 = *(v0 + v6);
    *(v0 + v6) = 0;
  }

  v13 = *(v0 + v1) == 0;
  v14 = *(v0 + OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListCellAttributePillView_iconViewHidden);
  *(v0 + OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListCellAttributePillView_iconViewHidden) = v13;
  if (v13 != v14)
  {

    sub_21D6B0314();
  }
}

void sub_21D6D43D8()
{
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_name + 8))
  {
    v1 = qword_280D1BAA8;
    sub_21DBF8E0C();
    if (v1 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    sub_21D6AFAB0();
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListCellAttributePillView_labelView);
    if (v2)
    {
      v3 = v2;
      v4 = sub_21DBFA12C();
      [v3 setText_];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_21D6D45FC(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_contact] = 0;
  v4 = &v1[OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_name];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_avatarViewController] = 0;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_21D6D4234();
    sub_21D6D43D8();
  }

  return v6;
}

id sub_21D6D46C0()
{
  sub_21D0D8CF0(0, &qword_280D176A0);
  v0 = sub_21DBFA5DC();
  v1 = [objc_opt_self() containerBoxViewWithArrangedSubviews_];

  [v1 setHorizontalAlignment_];
  [v1 setVerticalAlignment_];
  return v1;
}

id sub_21D6D4760(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBDBF0]) init];
  [v2 setThreeDTouchEnabled_];
  v3 = *(a1 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_avatarViewController);
  *(a1 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_avatarViewController) = v2;
  v4 = v2;

  v5 = [v4 view];
  v6 = *(a1 + OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListCellAttributePillView_iconView);
  if (v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_21DC09CF0;
      *(v9 + 32) = v5;
      sub_21D0D8CF0(0, &qword_280D176A0);
      v10 = v6;
      v11 = v5;
      v12 = sub_21DBFA5DC();

      [v8 setArrangedSubviews_];
    }
  }

  return v4;
}

void sub_21D6D48C0()
{

  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_avatarViewController);
}

double TTRIShowRemindersEditableCellScrollingTargetProviding<>.rectForScrolling(to:)(void *a1)
{
  [a1 bounds];
  [v1 convertRect:a1 fromCoordinateSpace:?];

  return TTRIShowRemindersEditableCellScrollingTargetProviding<>.expandRectForScrolling(_:)(v3, v4, v5, v6);
}

void TTRIShowRemindersEditableCellScrollingTargetProviding<>.rectForScrolling(toCaretIn:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = [a1 selectedTextRange];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 end];
    [a1 caretRectForPosition_];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [v2 convertRect:a1 fromCoordinateSpace:{v9, v11, v13, v15}];
    v26 = TTRIShowRemindersEditableCellScrollingTargetProviding<>.expandRectForScrolling(_:)(v16, v17, v18, v19);
    v27 = v20;
    v25 = v21;
    v28 = v22;

    *&v24 = v25;
    *&v23 = v26;
    *(&v23 + 1) = v27;
    *(&v24 + 1) = v28;
  }

  else
  {
    v23 = 0uLL;
    v24 = 0uLL;
  }

  *a2 = v23;
  *(a2 + 16) = v24;
  *(a2 + 32) = v6 == 0;
}

double TTRIShowRemindersEditableCellScrollingTargetProviding<>.expandRectForScrolling(_:)(double a1, double a2, double a3, double a4)
{
  v23 = CGRectInset(*&a1, 0.0, -12.0);
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  [v4 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;

  *&result = CGRectIntersection(*&v17, *&v10);
  return result;
}

uint64_t TTRIShowRemindersEditableCell.attachmentAndView(at:)(double a1, double a2)
{
  v5 = sub_21D6D4C90();
  if (!v5)
  {
    return 0;
  }

  v7 = v6;
  v8 = v5;
  ObjectType = swift_getObjectType();
  [v8 convertPoint:v2 fromCoordinateSpace:{a1, a2}];
  v10 = (*(v7 + 8))(ObjectType, v7);

  return v10;
}

id sub_21D6D4C90()
{
  v1 = [v0 hitTest:0 withEvent:?];
  if (v1)
  {
    while (v1 != v0)
    {
      swift_getObjectType();
      if (!swift_conformsToProtocol2())
      {
        v2 = [v1 superview];

        v1 = v2;
        if (v2)
        {
          continue;
        }
      }

      return v1;
    }

    return 0;
  }

  return v1;
}

unint64_t sub_21D6D4D4C()
{
  result = qword_27CE60248;
  if (!qword_27CE60248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE60248);
  }

  return result;
}

unint64_t sub_21D6D4DA4()
{
  result = qword_27CE60250;
  if (!qword_27CE60250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE60250);
  }

  return result;
}

uint64_t sub_21D6D4E9C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE60258);
  v1 = __swift_project_value_buffer(v0, qword_27CE60258);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRTreeStorageSubtreeView.rootItemID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 104);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a1, v1 + v3, AssociatedTypeWitness);
}

uint64_t TTRTreeStorageSubtreeView.__allocating_init(upstreamTree:rootItemID:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TTRTreeStorageSubtreeView.init(upstreamTree:rootItemID:)(a1, a2);
  return v4;
}

char *TTRTreeStorageSubtreeView.init(upstreamTree:rootItemID:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  *(v2 + 2) = a1;
  v5 = *(v4 + 104);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(&v2[v5], a2, AssociatedTypeWitness);
  return v2;
}

uint64_t TTRTreeStorageSubtreeView.numberOfChildren(of:)(uint64_t a1)
{
  v3 = *(*(*(*v1 + 88) + 8) + 8);
  v31 = *(*v1 + 80);
  v32 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_21DBFBA8C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v29 - v18;
  v20 = *(v6 + 16);
  v33 = v21;
  v20(v14, a1, v17);
  v22 = *(v15 + 48);
  if (v22(v14, 1, AssociatedTypeWitness) == 1)
  {
    v30 = *(v6 + 8);
    v30(v14, v33);
    v34 = *(v1 + 2);
    v23 = *(*v1 + 104);
    v24 = v32;
    v29 = *(v32 + 40);
    swift_unknownObjectRetain();
    v29(&v1[v23], v31, v24);
    swift_unknownObjectRelease();
    v25 = v22(v8, 1, AssociatedTypeWitness) != 1;
    v30(v8, v33);
  }

  else
  {
    (*(v15 + 32))(v19, v14, AssociatedTypeWitness);
    v34 = *(v1 + 2);
    (*(v15 + 16))(v11, v19, AssociatedTypeWitness);
    (*(v15 + 56))(v11, 0, 1, AssociatedTypeWitness);
    v26 = v32;
    v27 = *(v32 + 24);
    swift_unknownObjectRetain();
    v25 = v27(v11, v31, v26);
    (*(v6 + 8))(v11, v33);
    swift_unknownObjectRelease();
    (*(v15 + 8))(v19, AssociatedTypeWitness);
  }

  return v25;
}

void TTRTreeStorageSubtreeView.child(_:of:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a1;
  v43 = a3;
  v5 = *(*v3 + 80);
  v40 = *(*(*(*v3 + 88) + 8) + 8);
  v42 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_21DBFBA8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v39 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v35 - v19;
  (*(v8 + 16))(v15, a2, v7, v18);
  v21 = *(v16 + 48);
  if (v21(v15, 1, AssociatedTypeWitness) == 1)
  {
    v22 = v40;
    v23 = *(v8 + 8);
    v37 = v8 + 8;
    v38 = v7;
    v36 = v23;
    v23(v15, v7);
    if (v41)
    {
      if (qword_27CE56BF8 != -1)
      {
        swift_once();
      }

      v29 = sub_21DBF84BC();
      __swift_project_value_buffer(v29, qword_27CE60258);
      v30 = MEMORY[0x277D84F90];
      sub_21D17716C(MEMORY[0x277D84F90]);
      sub_21D17716C(v30);
      v31 = "TTRTreeStorageSubtreeView: invalid index for top level";
      v32 = 54;
    }

    else
    {
      v44 = v3[2];
      v24 = *(*v3 + 104);
      v25 = *(v22 + 40);
      swift_unknownObjectRetain();
      v26 = v3 + v24;
      v27 = v39;
      v25(v26, v42, v22);
      swift_unknownObjectRelease();
      if (v21(v27, 1, AssociatedTypeWitness) != 1)
      {
        (*(v16 + 32))(v43, v27, AssociatedTypeWitness);
        return;
      }

      v36(v27, v38);
      if (qword_27CE56BF8 != -1)
      {
        swift_once();
      }

      v33 = sub_21DBF84BC();
      __swift_project_value_buffer(v33, qword_27CE60258);
      v34 = MEMORY[0x277D84F90];
      sub_21D17716C(MEMORY[0x277D84F90]);
      sub_21D17716C(v34);
      v31 = "TTRTreeStorageSubtreeView: missing root item";
      v32 = 44;
    }

    sub_21DAEAB00(v31, v32, 2);
    __break(1u);
  }

  else
  {
    (*(v16 + 32))(v20, v15, AssociatedTypeWitness);
    v44 = v3[2];
    (*(v16 + 16))(v12, v20, AssociatedTypeWitness);
    (*(v16 + 56))(v12, 0, 1, AssociatedTypeWitness);
    v28 = v40;
    v39 = *(v40 + 32);
    swift_unknownObjectRetain();
    (v39)(v41, v12, v42, v28);
    (*(v8 + 8))(v12, v7);
    swift_unknownObjectRelease();
    (*(v16 + 8))(v20, AssociatedTypeWitness);
  }
}

uint64_t TTRTreeStorageSubtreeView.item(withID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v43 = a2;
  v3 = *(*(*(*v2 + 88) + 8) + 8);
  v4 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_21DBFBA8C();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6);
  v42 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v35 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v12);
  v37 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v16 = v2[2];
  v44 = v35 - v17;
  v45 = v16;
  v18 = *(v3 + 40);
  v19 = v41;
  v38 = v4;
  v41 = v3;
  v18(v19, v4, v3, v15);
  v20 = *(v11 + 48);
  if (v20(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v39 + 8))(v10, v40);
LABEL_5:
    v26 = 1;
    v27 = v43;
    return (*(v11 + 56))(v27, v26, 1, AssociatedTypeWitness);
  }

  v35[0] = *(v11 + 32);
  v35[1] = v11 + 32;
  (v35[0])(v44, v10, AssociatedTypeWitness);
  v45 = v16;
  v21 = *(*v2 + 104);
  swift_unknownObjectRetain();
  v22 = v2 + v21;
  v36 = v11;
  v23 = v41;
  v24 = v42;
  v25 = v38;
  (v18)(v22, v38, v41);
  swift_unknownObjectRelease();
  if (v20(v24, 1, AssociatedTypeWitness) == 1)
  {
    v11 = v36;
    (*(v36 + 8))(v44, AssociatedTypeWitness);
    (*(v39 + 8))(v42, v40);
    goto LABEL_5;
  }

  v28 = v37;
  v29 = v35[0];
  (v35[0])(v37, v42, AssociatedTypeWitness);
  v45 = v16;
  v30 = TTRTreeContentsQueryable.contains(_:inSubtreeAtRoot:)(v44, v28, v25, v23);
  v31 = v36;
  v32 = *(v36 + 8);
  v32(v28, AssociatedTypeWitness);
  if (v30)
  {
    v33 = v43;
    v29(v43, v44, AssociatedTypeWitness);
    v27 = v33;
    v26 = 0;
  }

  else
  {
    v32(v44, AssociatedTypeWitness);
    v26 = 1;
    v27 = v43;
  }

  v11 = v31;
  return (*(v11 + 56))(v27, v26, 1, AssociatedTypeWitness);
}

uint64_t TTRTreeStorageSubtreeView.parent(of:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v23 = a1;
  v24 = a2;
  v22 = *v2;
  v3 = *(*(*(v22 + 88) + 8) + 8);
  v4 = *(v22 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_21DBFBA8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v22 - v13;
  v25 = v2[2];
  (*(v3 + 48))(v23, v4, v3, v12);
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) == 1)
  {
    (*(v7 + 8))(v9, v6);
LABEL_6:
    v20 = 1;
    v19 = v24;
    return (*(v10 + 56))(v19, v20, 1, AssociatedTypeWitness);
  }

  v15 = *(v10 + 32);
  v15(v14, v9, AssociatedTypeWitness);
  v25 = v2;
  v16 = v22;
  WitnessTable = swift_getWitnessTable();
  if (!TTRTreeContentsQueryable.contains(_:)(v14, v16, WitnessTable))
  {
    (*(v10 + 8))(v14, AssociatedTypeWitness);
    goto LABEL_6;
  }

  v18 = v24;
  v15(v24, v14, AssociatedTypeWitness);
  v19 = v18;
  v20 = 0;
  return (*(v10 + 56))(v19, v20, 1, AssociatedTypeWitness);
}

uint64_t TTRTreeStorageSubtreeView.convertFromImmediateUpstream(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v159 = a2;
  v152 = *v2;
  v5 = *(*(*(v152 + 88) + 8) + 8);
  v6 = *(v152 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v153 = v6;
  v154 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedTypeWitness();
  v149 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v127 = &v123 - v10;
  v148 = v11;
  v12 = sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v129 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v136 = &v123 - v13;
  v137 = v12;
  v142 = *(v12 - 8);
  MEMORY[0x28223BE20](v14);
  v128 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v140 = &v123 - v17;
  MEMORY[0x28223BE20](v18);
  v147 = &v123 - v19;
  v20 = sub_21DBFBA8C();
  v146 = swift_getTupleTypeMetadata2();
  v133 = sub_21DBFBA8C();
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v145 = &v123 - v21;
  v131 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](v131);
  v130 = &v123 - v22;
  v23 = *(v20 - 8);
  MEMORY[0x28223BE20](v24);
  v126 = &v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v135 = &v123 - v27;
  MEMORY[0x28223BE20](v28);
  v134 = &v123 - v29;
  MEMORY[0x28223BE20](v30);
  v150 = &v123 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v123 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v123 - v36;
  v38 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v39);
  v151 = &v123 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v43 = &v123 - v42;
  v139 = AssociatedConformanceWitness;
  v44 = type metadata accessor for TTRDerivedTreeLocation();
  MEMORY[0x28223BE20](v44);
  v125 = &v123 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v46);
  v156 = &v123 - v48;
  v157 = v49;
  v50 = *(v49 + 16);
  v158 = v51;
  v50(v47);
  v52 = *(v23 + 16);
  v138 = a1;
  v143 = v52;
  v144 = v23 + 16;
  v52(v37, a1, v20);
  v160 = *(v38 + 48);
  v53 = v160(v37, 1, AssociatedTypeWitness);
  v155 = v23;
  if (v53 == 1)
  {
    (*(v23 + 8))(v37, v20);
    v54 = AssociatedTypeWitness;
    goto LABEL_6;
  }

  (*(v38 + 32))(v43, v37, AssociatedTypeWitness);
  v161 = v3;
  v55 = v152;
  WitnessTable = swift_getWitnessTable();
  v57 = TTRTreeContentsQueryable.contains(_:)(v43, v55, WitnessTable);
  (*(v38 + 8))(v43, AssociatedTypeWitness);
  v54 = AssociatedTypeWitness;
  if (!v57)
  {
LABEL_6:
    v152 = v20;
    v65 = v3[2];
    v161 = v65;
    v66 = *(*v3 + 104);
    v67 = v154;
    v68 = *(v154 + 40);
    swift_unknownObjectRetain();
    v69 = v3 + v66;
    v70 = v153;
    v68(v69, v153, v67);
    swift_unknownObjectRelease();
    if (v160(v34, 1, v54) == 1)
    {
      v58 = v157;
      v59 = v158;
      (*(v157 + 8))(v156, v158);
      (*(v155 + 8))(v34, v152);
LABEL_23:
      v64 = 1;
      v63 = v159;
      return (*(v58 + 56))(v63, v64, 1, v59);
    }

    v71 = v67;
    v72 = v151;
    (*(v38 + 32))(v151, v34, v54);
    v161 = v65;
    v73 = v145;
    TTRTreeContentsQueryable.parentAndChildIndex(for:)(v72, v70, v71, v145);
    v74 = v146;
    v75 = (*(*(v146 - 8) + 48))(v73, 1, v146);
    v76 = v152;
    if (v75 == 1)
    {
      (*(v132 + 8))(v73, v133);
      (*(v38 + 8))(v72, v54);
      v58 = v157;
      v59 = v158;
      (*(v157 + 8))(v156, v158);
      goto LABEL_23;
    }

    v124 = v38;
    v77 = *(v73 + *(v74 + 48));
    v78 = v131;
    v79 = *(v131 + 48);
    v80 = v155;
    v81 = v73;
    v82 = *(v155 + 32);
    v83 = v130;
    v82(v130, v81, v152);
    *&v83[v79] = v77;
    v154 = *&v83[*(v78 + 48)];
    v82(v150, v83, v76);
    v84 = v134;
    v143(v134, v138, v76);
    v85 = 1;
    if (v160(v84, 1, v54) == 1)
    {
      v86 = v80;
      v87 = v76;
      v88 = v147;
      v89 = v135;
      v90 = v124;
    }

    else
    {
      v88 = v147;
      (*(v139 + 24))(v54);
      v85 = 0;
      v90 = v124;
      v86 = v124;
      v87 = v54;
      v89 = v135;
    }

    (*(v86 + 8))(v84, v87);
    v91 = *(v149 + 56);
    v92 = 1;
    v91(v88, v85, 1, v148);
    v143(v89, v150, v76);
    v93 = v160(v89, 1, v54);
    v123 = v54;
    if (v93 == 1)
    {
      v94 = v155;
      v95 = v76;
      v96 = v142;
      v97 = v140;
    }

    else
    {
      v97 = v140;
      (*(v139 + 24))(v54);
      v92 = 0;
      v94 = v90;
      v95 = v54;
      v96 = v142;
    }

    (*(v94 + 8))(v89, v95);
    v98 = v148;
    v91(v97, v92, 1, v148);
    v99 = *(TupleTypeMetadata2 + 48);
    v100 = *(v96 + 16);
    v101 = v136;
    v102 = v137;
    v100(v136, v88, v137);
    v100(&v101[v99], v97, v102);
    v103 = *(v149 + 48);
    if (v103(v101, 1, v98) == 1)
    {
      v104 = *(v96 + 8);
      v104(v97, v102);
      v104(v147, v102);
      v105 = v103(&v101[v99], 1, v98);
      v106 = v152;
      v107 = v101;
      v59 = v158;
      v61 = v156;
      if (v105 == 1)
      {
        v104(v107, v102);
LABEL_26:
        v117 = v106;
        v118 = v159;
        v119 = v124;
        v120 = v123;
        if (*(v138 + *(v59 + 36)) != v154)
        {
          (*(v155 + 8))(v150, v117);
          (*(v119 + 8))(v151, v120);
          v58 = v157;
          (*(v157 + 8))(v61, v59);
          v64 = 1;
          v63 = v118;
          return (*(v58 + 56))(v63, v64, 1, v59);
        }

        v121 = v126;
        (*(v124 + 56))(v126, 1, 1, v123);
        v122 = v125;
        TTRDerivedTreeLocation.init(parent:index:)(v121, 0, v120, v139, v125);
        (*(v155 + 8))(v150, v117);
        (*(v119 + 8))(v151, v120);
        v58 = v157;
        (*(v157 + 8))(v61, v59);
        v60 = *(v58 + 32);
        v60(v61, v122, v59);
        v62 = v118;
        goto LABEL_5;
      }
    }

    else
    {
      v108 = v128;
      v100(v128, v101, v102);
      v109 = v103(&v101[v99], 1, v98);
      v106 = v152;
      v107 = v101;
      if (v109 != 1)
      {
        v112 = v149;
        v113 = v127;
        (*(v149 + 32))(v127, &v107[v99], v98);
        swift_getAssociatedConformanceWitness();
        v114 = sub_21DBFA10C();
        v115 = *(v112 + 8);
        v115(v113, v98);
        v116 = *(v142 + 8);
        v116(v140, v102);
        v116(v147, v102);
        v115(v108, v98);
        v116(v107, v102);
        v59 = v158;
        v61 = v156;
        if (v114)
        {
          goto LABEL_26;
        }

LABEL_22:
        (*(v155 + 8))(v150, v106);
        (*(v124 + 8))(v151, v123);
        v58 = v157;
        (*(v157 + 8))(v61, v59);
        goto LABEL_23;
      }

      v110 = *(v142 + 8);
      v110(v140, v102);
      v110(v147, v102);
      (*(v149 + 8))(v108, v98);
      v59 = v158;
      v61 = v156;
    }

    (*(v129 + 8))(v107, TupleTypeMetadata2);
    goto LABEL_22;
  }

  v58 = v157;
  v59 = v158;
  v60 = *(v157 + 32);
  v61 = v156;
  v62 = v159;
LABEL_5:
  v60(v62, v61, v59);
  v63 = v62;
  v64 = 0;
  return (*(v58 + 56))(v63, v64, 1, v59);
}

uint64_t TTRTreeStorageSubtreeView.convertToImmediateUpstream(_:for:)(char *a1, void (*a2)(char *, uint64_t))
{
  v96 = a2;
  v4 = *(*(*(*v2 + 88) + 8) + 8);
  v5 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v86 = sub_21DBFBA8C();
  v84 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v88 = v70 - v8;
  v83 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](v83);
  v82 = v70 - v9;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v11);
  v91 = v70 - v12;
  v13 = *(v7 - 8);
  MEMORY[0x28223BE20](v14);
  v79 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v85 = v70 - v17;
  MEMORY[0x28223BE20](v18);
  v92 = v70 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = v70 - v21;
  v94 = v5;
  v95 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = type metadata accessor for TTRDerivedTreeLocation();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v76 = v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = v70 - v28;
  v80 = *v96;
  (*(v24 + 16))(v70 - v28, a1, v23, v27);
  v30 = *(v13 + 16);
  v87 = a1;
  v77 = v30;
  v78 = v13 + 16;
  v30(v22, a1, v7);
  v90 = v10;
  v31 = *(v10 + 48);
  LODWORD(v4) = v31(v22, 1, AssociatedTypeWitness);
  v81 = v13;
  v33 = *(v13 + 8);
  v32 = v13 + 8;
  v96 = v33;
  v33(v22, v7);
  if (v4 == 1)
  {
    v70[1] = v32;
    v72 = v24;
    v71 = v29;
    v73 = v23;
    v74 = v7;
    v34 = v93;
    v35 = *(v93 + 2);
    v97 = v35;
    v36 = *(*v93 + 104);
    v37 = v95;
    v38 = AssociatedTypeWitness;
    v39 = *(v95 + 40);
    swift_unknownObjectRetain();
    v40 = v92;
    v39(&v34[v36], v94, v37);
    v41 = v38;
    swift_unknownObjectRelease();
    if (v31(v40, 1, v38) == 1)
    {
      v96(v40, v74);
LABEL_6:
      v48 = v73;
      v49 = v72;
      v50 = sub_21DBFA68C();
      (*(v49 + 8))(v71, v48);
      return v50;
    }

    v43 = v90;
    v42 = v91;
    (*(v90 + 32))(v91, v40, v38);
    v97 = v35;
    v44 = v88;
    TTRTreeContentsQueryable.parentAndChildIndex(for:)(v42, v94, v95, v88);
    v45 = TupleTypeMetadata2;
    v46 = (*(*(TupleTypeMetadata2 - 8) + 48))(v44, 1, TupleTypeMetadata2);
    v47 = v74;
    if (v46 == 1)
    {
      (*(v43 + 8))(v42, v38);
      (*(v84 + 8))(v44, v86);
      goto LABEL_6;
    }

    v52 = *(v44 + *(v45 + 48));
    v54 = v82;
    v53 = v83;
    v55 = *(v83 + 48);
    v56 = *(v81 + 32);
    v56(v82, v44, v74);
    *&v54[v55] = v52;
    v57 = *&v54[*(v53 + 48)];
    v58 = v85;
    v56(v85, v54, v47);
    v23 = v73;
    if (v80)
    {
      v59 = v79;
      result = v77(v79, v58, v47);
      v60 = *&v87[*(v23 + 36)];
      v24 = v72;
      if (__OFADD__(v57, v60))
      {
        __break(1u);
        return result;
      }

      v61 = v76;
      TTRDerivedTreeLocation.init(parent:index:)(v59, v57 + v60, v41, AssociatedConformanceWitness, v76);
      v96(v58, v47);
      (*(v43 + 8))(v91, v41);
    }

    else
    {
      v62 = (v43 + 8);
      v24 = v72;
      v63 = (v72 + 8);
      if (*&v87[*(v73 + 36)])
      {
        v64 = sub_21DBFA68C();
        v96(v58, v47);
        (*v62)(v91, v41);
        (*v63)(v71, v23);
        return v64;
      }

      v65 = v79;
      v77(v79, v58, v47);
      v66 = v65;
      v61 = v76;
      TTRDerivedTreeLocation.init(parent:index:)(v66, v57, v41, AssociatedConformanceWitness, v76);
      v96(v58, v47);
      (*v62)(v91, v41);
    }

    v67 = v71;
    (*(v24 + 8))(v71, v23);
    (*(v24 + 32))(v67, v61, v23);
    v29 = v67;
  }

  sub_21DBFC5CC();
  swift_allocObject();
  v68 = sub_21DBFA60C();
  (*(v24 + 32))(v69, v29, v23);
  result = v68;
  sub_21D23C8B4();
  return result;
}

uint64_t TTRTreeStorageSubtreeView.deinit()
{
  swift_unknownObjectRelease();
  v1 = *(*v0 + 104);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  return v0;
}

uint64_t TTRTreeStorageSubtreeView.__deallocating_deinit()
{
  TTRTreeStorageSubtreeView.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21D6D7CDC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21D6D7D18(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21D6D7D54()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

BOOL static TTRSnapshotApplicationOption.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t TTRSnapshotApplicationOption.hash(into:)()
{
  if (*v0 == 2)
  {
    return MEMORY[0x223D44FA0](1);
  }

  MEMORY[0x223D44FA0](0);
  return sub_21DBFC7FC();
}

uint64_t TTRSnapshotApplicationOption.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  if (v1 == 2)
  {
    MEMORY[0x223D44FA0](1);
  }

  else
  {
    MEMORY[0x223D44FA0](0);
    sub_21DBFC7FC();
  }

  return sub_21DBFC82C();
}

uint64_t sub_21D6D7FA4()
{
  v1 = *v0;
  sub_21DBFC7DC();
  if (v1 == 2)
  {
    MEMORY[0x223D44FA0](1);
  }

  else
  {
    MEMORY[0x223D44FA0](0);
    sub_21DBFC7FC();
  }

  return sub_21DBFC82C();
}

uint64_t sub_21D6D800C()
{
  if (*v0 == 2)
  {
    return MEMORY[0x223D44FA0](1);
  }

  MEMORY[0x223D44FA0](0);
  return sub_21DBFC7FC();
}

uint64_t sub_21D6D8058()
{
  v1 = *v0;
  sub_21DBFC7DC();
  if (v1 == 2)
  {
    MEMORY[0x223D44FA0](1);
  }

  else
  {
    MEMORY[0x223D44FA0](0);
    sub_21DBFC7FC();
  }

  return sub_21DBFC82C();
}

unint64_t sub_21D6D80C0()
{
  result = qword_27CE602F0;
  if (!qword_27CE602F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE602F0);
  }

  return result;
}

double ceil(_:toScale:)(double a1, double a2)
{
  if (a2 == 1.0)
  {
    return ceil(a1);
  }

  else
  {
    return ceil(a1 * a2) / a2;
  }
}

double round(_:toScale:)(double a1, double a2)
{
  if (a2 == 1.0)
  {
    return round(a1);
  }

  else
  {
    return round(a1 * a2) / a2;
  }
}

void adjust(_:toScale:with:)(void (*a1)(void), double a2, double a3)
{
  if (a3 == 1.0)
  {
    a1();
  }

  else
  {
    (a1)(a2 * a3);
  }
}

double floor(_:toScale:)(double a1, double a2)
{
  if (a2 == 1.0)
  {
    return floor(a1);
  }

  else
  {
    return floor(a1 * a2) / a2;
  }
}

uint64_t TTRIViewControllerDismissalState.description.getter()
{
  if (*v0)
  {
    return 0x6574736575716572;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t TTRIViewControllerDismissalState.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

unint64_t sub_21D6D82C4()
{
  result = qword_27CE602F8;
  if (!qword_27CE602F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE602F8);
  }

  return result;
}

uint64_t sub_21D6D8318()
{
  if (*v0)
  {
    return 0x6574736575716572;
  }

  else
  {
    return 0xD000000000000011;
  }
}

void (*TTRICollectionViewPresentationTreeManagementViewCapability.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24989C;
}

uint64_t TTRICollectionViewPresentationTreeManagementViewCapability.__allocating_init(diffableDataSource:)(uint64_t a1)
{
  v2 = swift_allocObject();
  TTRICollectionViewPresentationTreeManagementViewCapability.init(diffableDataSource:)(a1);
  return v2;
}

uint64_t sub_21D6D847C(uint64_t a1)
{
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v1 = sub_21DBFAB4C();

  if ((v1 & 1) == 0)
  {
    sub_21DBFABAC();
    sub_21DBF8E0C();
    swift_getWitnessTable();
    sub_21DBFAB8C();
    swift_beginAccess();
    sub_21DBFAB9C();
    swift_endAccess();
  }

  if ((sub_21DBFAB4C() & 1) == 0)
  {
    sub_21D6D87B8(a1);
  }
}

Swift::Void __swiftcall TTRICollectionViewPresentationTreeManagementViewCapability.processPendingReminderViewModelUpdates()()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = sub_21DBFA68C();
  if (sub_21DBFA6DC())
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v3 = sub_21D495A08(v1, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v3 = MEMORY[0x277D84FA0];
  }

  sub_21D6D847C(v3);
}

uint64_t sub_21D6D87B8(uint64_t a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  if (v1[4])
  {
    v9 = a1;
    MEMORY[0x28223BE20](result);
    v5 = *(v3 + 96);
    v8[1] = *(v3 + 80);
    v8[2] = v5;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v6 = sub_21DBFABAC();

    WitnessTable = swift_getWitnessTable();
    TTRObservableViewModelCollection.updateAndPublish<A>(forItemIDs:using:)(&v9, sub_21D6D8B1C, v8, v6, WitnessTable);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D6D8970@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = type metadata accessor for TTRCollectionViewItemObservedViewModel();
  v5 = sub_21DBFBA8C();
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  result = (*(*(v4 - 8) + 48))(a2, 1, v4);
  if (!result)
  {
    ++*a2;
  }

  return result;
}

uint64_t TTRICollectionViewPresentationTreeManagementViewCapability.deinit()
{
  sub_21D157444(v0 + 16);

  return v0;
}

uint64_t TTRICollectionViewPresentationTreeManagementViewCapability.__deallocating_deinit()
{
  TTRICollectionViewPresentationTreeManagementViewCapability.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21D6D8B3C(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  result = 0;
  while (*(a2 + 32 + result) != a1)
  {
    if (v2 == ++result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_21D6D8B84(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v6 = sub_21DBFBD7C();
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223D44740](v7, a2);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = *(a2 + 8 * v7 + 32);
    }

    v9 = v8;
    sub_21D0D8CF0(0, a3);
    v10 = sub_21DBFB63C();

    if (v10)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_21D6D8C8C(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a2 + 32;
  if (a1)
  {
    v5 = 0x736E6D756C6F63;
  }

  else
  {
    v5 = 1953720684;
  }

  if (a1)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  while (1)
  {
    v7 = *(v4 + v3) ? 0x736E6D756C6F63 : 1953720684;
    v8 = *(v4 + v3) ? 0xE700000000000000 : 0xE400000000000000;
    if (v7 == v5 && v8 == v6)
    {
      break;
    }

    v10 = sub_21DBFC64C();

    if (v10)
    {
      return v3;
    }

    if (v2 == ++v3)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_21D6D8D9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(sub_21DBF54CC() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_21D17A744();
  v7 = 0;
  while ((sub_21DBFA10C() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

void TTRReminderEditor.update(metadata:for:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_21DBF54CC();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 16);
  v12 = [v11 attachmentContext];
  if (!v12)
  {
    if (qword_27CE56C00 != -1)
    {
      swift_once();
    }

    v27 = sub_21DBF84BC();
    __swift_project_value_buffer(v27, qword_27CE60300);

    v70 = sub_21DBF84AC();
    v28 = sub_21DBFAECC();

    if (os_log_type_enabled(v70, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v71 = v30;
      *v29 = 136315138;
      v31 = [v11 description];
      v32 = sub_21DBFA16C();
      v34 = v33;

      v35 = sub_21D0CDFB4(v32, v34, &v71);

      *(v29 + 4) = v35;
      _os_log_impl(&dword_21D0C9000, v70, v28, "attempted to update metadata on a reminder that does not support attachments %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x223D46520](v30, -1, -1);
      MEMORY[0x223D46520](v29, -1, -1);
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  v69 = v7;
  v70 = v12;
  v13 = [v12 attachments];
  sub_21D0D8CF0(0, &qword_280D0C310);
  v14 = sub_21DBFA5EC();

  v15 = sub_21D6D8B84(a2, v14, &qword_280D0C310);
  if ((v16 & 1) == 0)
  {
    v36 = v15;
    v37 = v15 < 1;
    v38 = v15 - 1;
    if (v37)
    {
      v67 = 0;
    }

    else
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x223D44740](v38, v14);
      }

      else
      {
        if (v36 > *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v39 = *(v14 + 8 * v38 + 32);
      }

      v67 = v39;
    }

    v41 = [a2 objectID];
    v42 = [v41 entityName];

    v43 = sub_21DBFA16C();
    v45 = v44;

    ObjCClassFromMetadata = objc_opt_self();
    v47 = [ObjCClassFromMetadata cdEntityNameForSavedAttachment];
    v48 = sub_21DBFA16C();
    v50 = v49;

    v68 = v6;
    if (v43 == v48 && v45 == v50)
    {
    }

    else
    {
      v51 = sub_21DBFC64C();

      if ((v51 & 1) == 0)
      {
        sub_21D0D8CF0(0, &qword_280D17820);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v52 = &selRef_newObjectID;
        goto LABEL_28;
      }
    }

    v52 = &selRef_newObjectIDForSavedAttachment;
LABEL_28:
    v53 = [ObjCClassFromMetadata *v52];
    v54 = [a2 accountID];
    v55 = [a2 reminderID];
    v56 = [a2 url];
    sub_21DBF546C();

    v57 = [a1 dataRepresentation];
    v58 = sub_21DBF551C();
    v60 = v59;

    v61 = objc_allocWithZone(MEMORY[0x277D448E8]);
    v62 = sub_21DBF53FC();
    v63 = sub_21DBF54FC();
    sub_21D17B8A8(v58, v60);
    v64 = [v61 initWithObjectID:v53 accountID:v54 reminderID:v55 url:v62 metadata:v63];

    (*(v69 + 8))(v10, v68);
    [v70 removeAttachment:a2];
    v65 = v67;
    [v70 insertAttachment:v64 afterAttachment:v67];

    return;
  }

  if (qword_27CE56C00 != -1)
  {
    swift_once();
  }

  v17 = sub_21DBF84BC();
  __swift_project_value_buffer(v17, qword_27CE60300);

  v18 = sub_21DBF84AC();
  v19 = sub_21DBFAECC();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v71 = v21;
    *v20 = 136315138;
    v22 = [v11 description];
    v23 = sub_21DBFA16C();
    v25 = v24;

    v26 = sub_21D0CDFB4(v23, v25, &v71);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_21D0C9000, v18, v19, "attempted to update metadata on an attachment that does not exist in this reminder %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x223D46520](v21, -1, -1);
    MEMORY[0x223D46520](v20, -1, -1);

LABEL_11:
    return;
  }

LABEL_18:
  v40 = v70;
}

uint64_t sub_21D6D9584()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE60300);
  v1 = __swift_project_value_buffer(v0, qword_27CE60300);
  if (qword_280D17A58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21AB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t REMReminder.isSiriFoundInApps.getter()
{
  sub_21D1B2ABC();
  v1 = [v0 list];
  v2 = [v1 objectID];

  v3 = [objc_opt_self() siriFoundInAppsListID];
  v4 = sub_21DBFB63C();

  return v4 & 1;
}

uint64_t static TTRDebugMenuUtilities.objectIDContextualActions(provideObjectID:)(void (*a1)(__int128 *__return_ptr))
{
  if ([objc_opt_self() isInternalInstall])
  {
    v2 = [objc_opt_self() daemonUserDefaults];
    v3 = [v2 enableInAppDebugMenu];

    if (v3)
    {
      a1(&aBlock);
      if (v26)
      {
        sub_21D0D0FD0(&aBlock, v29);
        v4 = v30;
        v5 = v31;
        __swift_project_boxed_opaque_existential_1(v29, v30);
        v6 = (*(v5 + 8))(v4, v5);
        if (v6)
        {
          v7 = v6;
          v8 = swift_allocObject();
          *(v8 + 16) = v7;
          v9 = v7;
          v10 = sub_21DBFA12C();
          v27 = sub_21D6D9AE0;
          v28 = v8;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          v25 = sub_21D6D9B28;
          v26 = &block_descriptor_81;
          v11 = _Block_copy(&aBlock);
          v12 = objc_opt_self();
          v13 = [v12 contextualActionWithStyle:0 title:v10 handler:v11];

          _Block_release(v11);

          v14 = objc_opt_self();
          v15 = [v14 systemPurpleColor];
          [v13 setBackgroundColor_];

          v16 = swift_allocObject();
          *(v16 + 16) = v9;
          v17 = v9;
          v18 = sub_21DBFA12C();
          v27 = sub_21D6D9D80;
          v28 = v16;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          v25 = sub_21D6D9B28;
          v26 = &block_descriptor_6_4;
          v19 = _Block_copy(&aBlock);
          v20 = [v12 contextualActionWithStyle:0 title:v18 handler:v19];

          _Block_release(v19);

          v21 = [v14 systemPurpleColor];
          [v20 setBackgroundColor_];

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_21DC0AA00;
          *(v22 + 32) = v13;
          *(v22 + 40) = v20;

          __swift_destroy_boxed_opaque_existential_0(v29);
          return v22;
        }

        __swift_destroy_boxed_opaque_existential_0(v29);
      }

      else
      {
        sub_21D6D9A78(&aBlock);
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_21D6D9A78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21D6D9B28(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_21D6D9EE4, v8);
}

uint64_t sub_21D6D9BFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void *a5, void (*a6)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60398);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 56) = sub_21D37FB1C();
  *(inited + 64) = &protocol witness table for REMObjectID;
  *(inited + 32) = a5;
  v10 = a5;
  a6(inited);
  v12 = v11;
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0(inited + 32);
  if (v12)
  {
    v13 = [objc_opt_self() generalPasteboard];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_21DC09CF0;
    v15 = sub_21DBFA12C();

    *(v14 + 32) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60390);
    v16 = sub_21DBFA5DC();

    [v13 setObjects_];
  }

  return a3(1);
}

void sub_21D6D9DC8(uint64_t a1, void (*a2)(void))
{
  a2();
  if (v2)
  {
    v3 = [objc_opt_self() generalPasteboard];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_21DC09CF0;
    v5 = sub_21DBFA12C();

    *(v4 + 32) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60390);
    v6 = sub_21DBFA5DC();

    [v3 setObjects_];
  }
}

uint64_t sub_21D6D9F04()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE603A0);
  v1 = __swift_project_value_buffer(v0, qword_27CE603A0);
  if (qword_280D17A48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_21D6D9FCC()
{
  result = [objc_allocWithZone(type metadata accessor for TTRAutoCategorizationActivityMonitor()) init];
  qword_27CE603B8 = result;
  return result;
}

id static TTRAutoCategorizationActivityMonitor.shared.getter()
{
  if (qword_27CE56C10 != -1)
  {
    swift_once();
  }

  v1 = qword_27CE603B8;

  return v1;
}

id TTRAutoCategorizationActivityMonitor.currentActivity.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore36TTRAutoCategorizationActivityMonitor_currentActivity;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t TTRAutoCategorizationActivityMonitor.activityPublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE603C8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v7 - v3;
  v7[1] = *(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRAutoCategorizationActivityMonitor_currentActivitySubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE603D8);
  sub_21D0D0F1C(&qword_27CE603E0, &qword_27CE603D8);
  sub_21D6DA5C8(&qword_27CE603E8, sub_21D6DA270);
  sub_21DBF93AC();
  sub_21D0D0F1C(&qword_27CE603F8, &qword_27CE603C8);
  v5 = sub_21DBF920C();
  (*(v2 + 8))(v4, v1);
  return v5;
}

unint64_t sub_21D6DA270()
{
  result = qword_27CE603F0;
  if (!qword_27CE603F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE603F0);
  }

  return result;
}

Swift::Void __swiftcall TTRAutoCategorizationActivityMonitor.startMonitoringIfNeeded()()
{
  v1 = sub_21DBF9D2C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF9D5C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v0[OBJC_IVAR____TtC15RemindersUICore36TTRAutoCategorizationActivityMonitor_isMonitoring] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC15RemindersUICore36TTRAutoCategorizationActivityMonitor_isMonitoring] = 1;
    v13[1] = *&v0[OBJC_IVAR____TtC15RemindersUICore36TTRAutoCategorizationActivityMonitor_backgroundQueue];
    v14 = v7;
    v10 = swift_allocObject();
    *(v10 + 16) = v0;
    aBlock[4] = sub_21D6DA5A0;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_82;
    v11 = _Block_copy(aBlock);
    v12 = v0;
    sub_21DBF9D4C();
    v15 = MEMORY[0x277D84F90];
    sub_21D6DA5C8(&qword_280D1B920, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v9, v4, v11);
    _Block_release(v11);
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v9, v14);
  }
}

uint64_t sub_21D6DA5C8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21D6DA610()
{
  v1 = v0;
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRAutoCategorizationActivityMonitor_backgroundQueue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2, v4);
  v8 = v7;
  v9 = sub_21DBF9DAC();
  (*(v3 + 8))(v6, v2);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v6 = [objc_opt_self() weakSharedInstance];
  v10 = sub_21DBFA12C();
  aBlock[4] = sub_21D6DAC3C;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D182340;
  aBlock[3] = &block_descriptor_10_2;
  v11 = _Block_copy(aBlock);
  v9 = [v6 syncSyncInterfacePerformerWithReason:v10 errorHandler:v11];
  _Block_release(v11);

  if (!v9)
  {

    return;
  }

  if (qword_27CE56C08 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_27CE603A0);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAEDC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_21D0C9000, v13, v14, "TTRAutoCategorizationActivityMonitor start observing auto categorization activity", v15, 2u);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  [v6 setAutoCategorizationActivityObserver_];
  [v9 observeAutoCategorizationActivityChanges];

  swift_unknownObjectRelease();
}

void sub_21D6DA8F0()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = sub_21DBF9D8C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRAutoCategorizationActivityMonitor_backgroundQueue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1, v3);
  v7 = v6;
  v8 = sub_21DBF9DAC();
  (*(v2 + 8))(v5, v1);
  if ((v8 & 1) == 0)
  {
    __break(1u);
  }

  v9 = OBJC_IVAR____TtC15RemindersUICore36TTRAutoCategorizationActivityMonitor_daemonDidLaunchToken;
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRAutoCategorizationActivityMonitor_daemonDidLaunchToken) == -1)
  {
    out_token = -1;
    v10 = *MEMORY[0x277D44CA0];
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_21D6DB03C;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0ECCF0;
    aBlock[3] = &block_descriptor_7_2;
    v12 = _Block_copy(aBlock);

    v13 = notify_register_dispatch(v10, &out_token, v7, v12);
    _Block_release(v12);
    if (!v13 && out_token != -1)
    {
      *(v0 + v9) = out_token;
    }
  }
}

id sub_21D6DAB1C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC15RemindersUICore36TTRAutoCategorizationActivityMonitor_currentActivity;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277D445A8]) init];
  v4 = OBJC_IVAR____TtC15RemindersUICore36TTRAutoCategorizationActivityMonitor_backgroundQueue;
  sub_21DBF60DC();
  *&v1[v4] = sub_21DBF60CC();
  v1[OBJC_IVAR____TtC15RemindersUICore36TTRAutoCategorizationActivityMonitor_isMonitoring] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore36TTRAutoCategorizationActivityMonitor_daemonDidLaunchToken] = -1;
  v5 = OBJC_IVAR____TtC15RemindersUICore36TTRAutoCategorizationActivityMonitor_currentActivitySubject;
  v8 = [objc_allocWithZone(MEMORY[0x277D445A8]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE603D8);
  swift_allocObject();
  *&v1[v5] = sub_21DBF90AC();
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_21D6DAC3C(void *a1)
{
  if (qword_27CE56C08 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE603A0);
  v3 = a1;
  oslog = sub_21DBF84AC();
  v4 = sub_21DBFAECC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_21DBFC74C();
    v9 = sub_21D0CDFB4(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_21D0C9000, oslog, v4, "Unable to get syncPerformer. {error: %s}", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

void sub_21D6DADD4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_27CE56C08 != -1)
    {
      swift_once();
    }

    v2 = sub_21DBF84BC();
    __swift_project_value_buffer(v2, qword_27CE603A0);
    v3 = sub_21DBF84AC();
    v4 = sub_21DBFAEDC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_21D0C9000, v3, v4, "TTRAutoCategorizationActivityMonitor: received daemonDidLaunch notification", v5, 2u);
      MEMORY[0x223D46520](v5, -1, -1);
    }

    sub_21D6DA610();
  }
}

id TTRAutoCategorizationActivityMonitor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void static CNContactStore.requestContactsAuthorizationIfNeeded()()
{
  if (![objc_opt_self() authorizationStatusForEntityType_])
  {
    v0 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
    v1 = [v0 requestAccessForEntityType_];
  }
}

uint64_t TTREditSectionsViewModel.SectionIdentifier.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTREditSectionsViewModel.ItemIdentifier.hash(into:)()
{
  if (!*v0)
  {
    return MEMORY[0x223D44FA0](0);
  }

  MEMORY[0x223D44FA0](1);
  return sub_21DBFB64C();
}

uint64_t TTREditSectionsViewModel.ItemIdentifier.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  if (v1)
  {
    MEMORY[0x223D44FA0](1);
    sub_21DBFB64C();
  }

  else
  {
    MEMORY[0x223D44FA0](0);
  }

  return sub_21DBFC82C();
}

uint64_t sub_21D6DB250()
{
  v1 = *v0;
  sub_21DBFC7DC();
  if (v1)
  {
    MEMORY[0x223D44FA0](1);
    sub_21DBFB64C();
  }

  else
  {
    MEMORY[0x223D44FA0](0);
  }

  return sub_21DBFC82C();
}

uint64_t sub_21D6DB2B4()
{
  if (!*v0)
  {
    return MEMORY[0x223D44FA0](0);
  }

  MEMORY[0x223D44FA0](1);
  return sub_21DBFB64C();
}

uint64_t sub_21D6DB30C()
{
  v1 = *v0;
  sub_21DBFC7DC();
  if (v1)
  {
    MEMORY[0x223D44FA0](1);
    sub_21DBFB64C();
  }

  else
  {
    MEMORY[0x223D44FA0](0);
  }

  return sub_21DBFC82C();
}

uint64_t TTREditSectionsViewModel.SectionItem.displayName.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTREditSectionsViewModel.SectionItem.displayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t TTREditSectionsViewModel.SectionItem.canonicalName.getter()
{
  v1 = *(v0 + 24);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTREditSectionsViewModel.SectionItem.init(sectionLite:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21DBF56BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF6F4C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21DBF6F5C();
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == *MEMORY[0x277D453E0])
  {
    (*(v9 + 96))(v11, v8);
    v14 = *v11;
    v13 = v11[1];
    v16 = v11[2];
    v15 = v11[3];
    v17 = v11[4];
LABEL_5:
    v21 = sub_21DBF6F6C();
    v22 = sub_21DBF6F8C();
    result = (*(*(v22 - 8) + 8))(a1, v22);
    *a2 = v14;
    *(a2 + 8) = v13;
    *(a2 + 16) = v16;
    *(a2 + 24) = v15;
    *(a2 + 32) = v17;
    *(a2 + 40) = v21 & 1;
    return result;
  }

  if (v12 == *MEMORY[0x277D453D8])
  {
    sub_21DBF56AC();
    v18 = objc_allocWithZone(MEMORY[0x277D44700]);
    v19 = sub_21DBF566C();
    v16 = 0xE000000000000000;
    v20 = sub_21DBFA12C();
    v14 = [v18 initWithUUID:v19 entityName:v20];

    (*(v5 + 8))(v7, v4);
    v15 = 0;
    v13 = 0;
    v17 = 0;
    goto LABEL_5;
  }

  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

uint64_t TTREditSectionsViewModel.OptimisticApply.renamedSections.getter()
{
  type metadata accessor for TTREditSectionsViewModel.OptimisticApply();

  return sub_21DBF8E0C();
}

uint64_t TTREditSectionsViewModel.OptimisticApply.renamedSections.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTREditSectionsViewModel.OptimisticApply() + 20);

  *(v1 + v3) = a1;
  return result;
}

BOOL TTREditSectionsViewModel.OptimisticApply.isEmpty.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60478);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  sub_21D6DD788(v1, &v9 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60480);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_21D6DD8B4(v4);
    return *(*(v1 + *(type metadata accessor for TTREditSectionsViewModel.OptimisticApply() + 20)) + 16) == 0;
  }

  v7 = sub_21DBF5EBC();
  (*(v6 + 8))(v4, v5);
  if (v7)
  {
    return *(*(v1 + *(type metadata accessor for TTREditSectionsViewModel.OptimisticApply() + 20)) + 16) == 0;
  }

  return 0;
}

uint64_t TTREditSectionsViewModel.OptimisticApply.init(sectionOrdering:renamedSections:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60480);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  sub_21D6DD7F8(a1, a3);
  result = type metadata accessor for TTREditSectionsViewModel.OptimisticApply();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t TTREditSectionsViewModel.shouldHideEmptySections.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

BOOL TTREditSectionsViewModel.isEmpty.getter()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    v2 = sub_21DBFBD7C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 == 0;
}

uint64_t TTREditSectionsViewModel.__allocating_init(shouldHideEmptySections:editSectionViewModels:shouldCategorizeGroceryItems:shouldAutoCategorizeItems:)(char a1, uint64_t a2, char a3, char a4)
{
  v4 = sub_21D6DD91C(a1, a2, a3, a4);

  return v4;
}

uint64_t TTREditSectionsViewModel.__allocating_init(shouldHideEmptySections:sections:shouldCategorizeGroceryItems:shouldAutoCategorizeItems:)(int a1, void (**a2)(void *, uint64_t), int a3, int a4)
{
  v116 = a4;
  v115 = a3;
  v118 = a1;
  v123 = sub_21DBF56BC();
  v114 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v122 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF6F4C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v121 = (&v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v120 = &v113 - v10;
  MEMORY[0x28223BE20](v11);
  v137 = &v113 - v12;
  MEMORY[0x28223BE20](v13);
  v136 = &v113 - v14;
  v15 = sub_21DBF6F8C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v133 = (&v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v132 = (&v113 - v19);
  MEMORY[0x28223BE20](v20);
  v131 = (&v113 - v21);
  MEMORY[0x28223BE20](v22);
  v130 = (&v113 - v23);
  MEMORY[0x28223BE20](v24);
  v135 = &v113 - v25;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v113 - v28;
  v30 = a2[2];
  v140 = v16;
  v141 = v6;
  v143 = v31;
  v134 = v30;
  v117 = v7;
  if (v30)
  {
    v32 = 0;
    v128 = v16 + 16;
    v127 = *MEMORY[0x277D453D8];
    v125 = v7 + 8;
    v126 = (v7 + 104);
    v124 = (v16 + 32);
    v119 = (v16 + 8);
    v142 = MEMORY[0x277D84F90];
    v129 = a2;
    v33 = v137;
    v34 = (v7 + 8);
    while (v32 < a2[2])
    {
      v139 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v138 = *(v16 + 72);
      (*(v16 + 16))(v29, a2 + v139 + v138 * v32, v15, v27);
      v35 = v136;
      v36 = v15;
      sub_21DBF6F5C();
      (*v126)(v33, v127, v6);
      sub_21D6DDC90();
      v37 = sub_21DBFA10C();
      v38 = *v34;
      (*v34)(v33, v6);
      v38(v35, v6);
      if (v37)
      {
        (*v119)(v29, v36);
        v15 = v36;
        a2 = v129;
      }

      else
      {
        v39 = *v124;
        (*v124)(v135, v29, v36);
        v40 = v142;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v144 = v40;
        if (isUniquelyReferenced_nonNull_native)
        {
          v15 = v36;
        }

        else
        {
          sub_21D18F288(0, *(v40 + 16) + 1, 1);
          v15 = v143;
          v40 = v144;
        }

        a2 = v129;
        v43 = *(v40 + 16);
        v42 = *(v40 + 24);
        v44 = v40;
        if (v43 >= v42 >> 1)
        {
          sub_21D18F288(v42 > 1, v43 + 1, 1);
          v15 = v143;
          v44 = v144;
        }

        *(v44 + 16) = v43 + 1;
        v142 = v44;
        v39((v44 + v139 + v43 * v138), v135, v15);
        v16 = v140;
        v6 = v141;
      }

      if (v134 == ++v32)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v142 = MEMORY[0x277D84F90];
LABEL_14:

  v45 = *(v142 + 16);
  v139 = v45;
  if ((v118 & 1) == 0)
  {
    v71 = v117;
    if (v45)
    {
      v144 = MEMORY[0x277D84F90];
      sub_21D18F3B8(0, v45, 0);
      v72 = v143;
      v73 = v144;
      v74 = 0;
      v137 = (v142 + ((*(v16 + 80) + 32) & ~*(v16 + 80)));
      v135 = (v71 + 88);
      v136 = (v16 + 16);
      LODWORD(v134) = *MEMORY[0x277D453E0];
      v129 = (v71 + 96);
      v130 = (v114 + 8);
      LODWORD(v128) = *MEMORY[0x277D453D8];
      v131 = (v16 + 8);
      while (v74 < *(v142 + 16))
      {
        v75 = *(v16 + 16);
        v76 = v132;
        v75(v132, &v137[*(v16 + 72) * v74], v72);
        v75(v133, v76, v72);
        v77 = v121;
        sub_21DBF6F5C();
        v78 = (*v135)(v77, v6);
        if (v78 == v134)
        {
          (*v129)(v77, v6);
          v79 = *v77;
          v80 = v77[1];
          v81 = v77[3];
          v138 = v77[2];
          v82 = v77[4];
        }

        else
        {
          if (v78 != v128)
          {
            goto LABEL_55;
          }

          v83 = v122;
          sub_21DBF56AC();
          v84 = objc_allocWithZone(MEMORY[0x277D44700]);
          v85 = sub_21DBF566C();
          v138 = 0xE000000000000000;
          v86 = sub_21DBFA12C();
          v79 = [v84 initWithUUID:v85 entityName:v86];

          (*v130)(v83, v123);
          v80 = 0;
          v81 = 0;
          v82 = 0;
        }

        v87 = v133;
        v88 = sub_21DBF6F6C();
        v89 = *v131;
        v90 = v87;
        v91 = v143;
        (*v131)(v90, v143);
        v89(v132, v91);
        v144 = v73;
        v93 = *(v73 + 16);
        v92 = *(v73 + 24);
        if (v93 >= v92 >> 1)
        {
          sub_21D18F3B8((v92 > 1), v93 + 1, 1);
          v73 = v144;
        }

        ++v74;
        *(v73 + 16) = v93 + 1;
        v94 = v73 + 48 * v93;
        *(v94 + 32) = v79;
        *(v94 + 40) = v80;
        *(v94 + 48) = v138;
        *(v94 + 56) = v81;
        *(v94 + 64) = v82;
        *(v94 + 72) = v88 & 1;
        v16 = v140;
        v6 = v141;
        v72 = v143;
        if (v139 == v74)
        {

          goto LABEL_50;
        }
      }

      goto LABEL_54;
    }

    v73 = MEMORY[0x277D84F90];
LABEL_50:
    v111 = sub_21D6DD91C(v118 & 1, v73, v115 & 1, v116 & 1);

    return v111;
  }

  v46 = v117;
  if (!v45)
  {

    v48 = MEMORY[0x277D84F90];
LABEL_38:
    v95 = 0;
    v96 = *(v48 + 16);
    v73 = MEMORY[0x277D84F90];
LABEL_39:
    v97 = 48 * v95;
    while (v96 != v95)
    {
      if (v95 >= *(v48 + 16))
      {
        goto LABEL_52;
      }

      ++v95;
      v98 = v97 + 48;
      v99 = *(v48 + v97 + 72);
      v97 += 48;
      if ((v99 & 1) == 0)
      {
        v101 = *(v48 + v98 - 16);
        v100 = *(v48 + v98 - 8);
        v102 = *(v48 + v98);
        v142 = *(v48 + v98 + 8);
        v143 = v100;
        v103 = *(v48 + v98 + 16);
        sub_21DBF8E0C();
        v104 = v101;
        sub_21DBF8E0C();
        v105 = swift_isUniquelyReferenced_nonNull_native();
        v144 = v73;
        if ((v105 & 1) == 0)
        {
          sub_21D18F3B8(0, *(v73 + 16) + 1, 1);
          v73 = v144;
        }

        v107 = *(v73 + 16);
        v106 = *(v73 + 24);
        if (v107 >= v106 >> 1)
        {
          sub_21D18F3B8((v106 > 1), v107 + 1, 1);
          v73 = v144;
        }

        *(v73 + 16) = v107 + 1;
        v108 = v73 + 48 * v107;
        v109 = v142;
        v110 = v143;
        *(v108 + 32) = v104;
        *(v108 + 40) = v110;
        *(v108 + 48) = v102;
        *(v108 + 56) = v109;
        *(v108 + 64) = v103;
        *(v108 + 72) = 0;
        goto LABEL_39;
      }
    }

    goto LABEL_50;
  }

  v144 = MEMORY[0x277D84F90];
  sub_21D18F3B8(0, v45, 0);
  v47 = 0;
  v48 = v144;
  v137 = (v142 + ((*(v16 + 80) + 32) & ~*(v16 + 80)));
  v135 = (v46 + 88);
  v136 = (v16 + 16);
  LODWORD(v134) = *MEMORY[0x277D453E0];
  v129 = (v46 + 96);
  LODWORD(v128) = *MEMORY[0x277D453D8];
  v132 = (v114 + 8);
  v133 = (v16 + 8);
  while (v47 < *(v142 + 16))
  {
    v49 = *(v16 + 16);
    v50 = v130;
    v51 = v143;
    v49(v130, &v137[*(v16 + 72) * v47], v143);
    v49(v131, v50, v51);
    v52 = v120;
    sub_21DBF6F5C();
    v53 = (*v135)(v52, v6);
    if (v53 == v134)
    {
      (*v129)(v52, v6);
      v54 = v52;
      v55 = *v52;
      v56 = v54[1];
      v138 = v54[2];
      v58 = v54[3];
      v57 = v54[4];
    }

    else
    {
      if (v53 != v128)
      {
        goto LABEL_55;
      }

      v59 = v122;
      sub_21DBF56AC();
      v60 = objc_allocWithZone(MEMORY[0x277D44700]);
      v61 = sub_21DBF566C();
      v138 = 0xE000000000000000;
      v62 = sub_21DBFA12C();
      v55 = [v60 initWithUUID:v61 entityName:v62];

      (*v132)(v59, v123);
      v57 = 0;
      v58 = 0;
      v56 = 0;
    }

    v63 = v131;
    v64 = sub_21DBF6F6C();
    v65 = *v133;
    v66 = v63;
    v67 = v143;
    (*v133)(v66, v143);
    v65(v130, v67);
    v144 = v48;
    v69 = *(v48 + 16);
    v68 = *(v48 + 24);
    if (v69 >= v68 >> 1)
    {
      sub_21D18F3B8((v68 > 1), v69 + 1, 1);
      v48 = v144;
    }

    ++v47;
    *(v48 + 16) = v69 + 1;
    v70 = v48 + 48 * v69;
    *(v70 + 32) = v55;
    *(v70 + 40) = v56;
    *(v70 + 48) = v138;
    *(v70 + 56) = v58;
    *(v70 + 64) = v57;
    *(v70 + 72) = v64 & 1;
    v16 = v140;
    v6 = v141;
    if (v139 == v47)
    {

      goto LABEL_38;
    }
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

double TTREditSectionsViewModel.section(with:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if (*a1)
  {
    swift_beginAccess();
    v5 = *(v2 + 32);
    if (*(v5 + 16) && (v6 = sub_21D17E07C(v4), (v7 & 1) != 0))
    {
      v8 = *(v5 + 56) + 48 * v6;
      v10 = *v8;
      v9 = *(v8 + 8);
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      v13 = *(v8 + 32);
      LOBYTE(v8) = *(v8 + 40);
      *a2 = v10;
      *(a2 + 8) = v9;
      *(a2 + 16) = v12;
      *(a2 + 24) = v11;
      *(a2 + 32) = v13;
      *(a2 + 40) = v8;
      sub_21DBF8E0C();
      v14 = v10;
      sub_21DBF8E0C();
    }

    else
    {
      *(a2 + 25) = 0u;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }

    swift_endAccess();
  }

  else
  {
    result = 0.0;
    *(a2 + 25) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t TTREditSectionsViewModel.snapshot(previousViewModel:)(uint64_t a1)
{
  v3 = v1;
  sub_21D6DDCE8();
  sub_21D6DDD3C();
  sub_21DBF8AFC();
  v5 = *(v1 + 17);
  if ((v5 & 1) != 0 || *(v1 + 18) == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60498);
    sub_21DBF8A6C();
    sub_21DBF8A2C();
  }

  v6 = *(v1 + 24);
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_19;
    }

LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60498);
    sub_21DBF8A6C();
    if (v6 >> 62)
    {
      v8 = sub_21DBFBD7C();
      v24 = v5;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v24 = v5;
      if (v8)
      {
LABEL_8:
        if (v8 < 1)
        {
          __break(1u);
          goto LABEL_39;
        }

        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = 0;
          v10 = MEMORY[0x277D84F90];
          do
          {
            v11 = MEMORY[0x223D44740](v9, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v10 = sub_21D214404(0, *(v10 + 2) + 1, 1, v10);
            }

            v13 = *(v10 + 2);
            v12 = *(v10 + 3);
            if (v13 >= v12 >> 1)
            {
              v10 = sub_21D214404((v12 > 1), v13 + 1, 1, v10);
            }

            ++v9;
            *(v10 + 2) = v13 + 1;
            *&v10[8 * v13 + 32] = v11;
          }

          while (v8 != v9);
        }

        else
        {
          v19 = (v6 + 32);
          v20 = MEMORY[0x277D84F90];
          do
          {
            v21 = *v19;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v20 = sub_21D214404(0, *(v20 + 2) + 1, 1, v20);
            }

            v23 = *(v20 + 2);
            v22 = *(v20 + 3);
            if (v23 >= v22 >> 1)
            {
              v20 = sub_21D214404((v22 > 1), v23 + 1, 1, v20);
            }

            *(v20 + 2) = v23 + 1;
            *&v20[8 * v23 + 32] = v21;
            ++v19;
            --v8;
          }

          while (v8);
        }
      }
    }

    sub_21DBF8A2C();

    v5 = v24;
    goto LABEL_19;
  }

  result = sub_21DBFBD7C();
  if (result)
  {
    goto LABEL_6;
  }

LABEL_19:
  if (!a1)
  {
    return result;
  }

  sub_21D6DCBD8(v14);
  v2 = v15;
  if ((v5 & 1) != 0 || *(v3 + 18) == 1)
  {
    swift_beginAccess();
    v16 = *(a1 + 16);
    swift_beginAccess();
    if (v16 != *(v3 + 16))
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_24:
        v18 = *(v2 + 16);
        v17 = *(v2 + 24);
        if (v18 >= v17 >> 1)
        {
          v2 = sub_21D214404((v17 > 1), v18 + 1, 1, v2);
        }

        *(v2 + 16) = v18 + 1;
        *(v2 + 8 * v18 + 32) = 0;
        goto LABEL_27;
      }

LABEL_39:
      v2 = sub_21D214404(0, *(v2 + 16) + 1, 1, v2);
      goto LABEL_24;
    }
  }

LABEL_27:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60498);
  sub_21DBF8ACC();
}

void sub_21D6DCBD8(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(v1 + 32);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v1 + 32) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v47 = *(v1 + 32);
  sub_21DBF8E0C();
  v10 = 0;
  v39 = MEMORY[0x277D84F90];
  if (v8)
  {
    while (1)
    {
LABEL_11:
      while (1)
      {
        v12 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v13 = v12 | (v10 << 6);
        v14 = *(*(v47 + 48) + 8 * v13);
        v15 = *(v47 + 56) + 48 * v13;
        v16 = *v15;
        v46 = *(v15 + 8);
        v17 = *(v15 + 16);
        v43 = *(v15 + 24);
        v18 = *(v15 + 32);
        v45 = *(v15 + 40);
        swift_beginAccess();
        v19 = *(a1 + 32);
        v20 = *(v19 + 16);
        sub_21DBF8E0C();
        v21 = v14;
        v22 = v16;
        sub_21DBF8E0C();
        if (v20)
        {
          v23 = sub_21D17E07C(v21);
          if (v24)
          {
            break;
          }
        }

        swift_endAccess();
LABEL_6:

        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v41 = v21;
      v25 = *(v19 + 56) + 48 * v23;
      v26 = v22;
      v27 = *v25;
      v28 = *(v25 + 8);
      v29 = *(v25 + 16);
      v38 = *(v25 + 24);
      v42 = v17;
      v30 = *(v25 + 32);
      v40 = *(v25 + 40);
      swift_endAccess();
      sub_21D0D8CF0(0, &qword_280D17680);
      sub_21DBF8E0C();
      v31 = v27;
      v32 = v18;
      v33 = v31;
      sub_21DBF8E0C();
      if ((sub_21DBFB63C() & 1) == 0)
      {
        goto LABEL_31;
      }

      v34 = v28 == v46 && v29 == v42;
      if (!v34 && (sub_21DBFC64C() & 1) == 0)
      {
        goto LABEL_31;
      }

      if (!v30)
      {
        break;
      }

      if (!v32)
      {
        goto LABEL_31;
      }

      if (v38 != v43 || v30 != v32)
      {
        if ((sub_21DBFC64C() & 1) == 0)
        {
          goto LABEL_31;
        }

LABEL_28:
        if (((v45 ^ v40) & 1) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_31;
      }

      if (v45 == v40)
      {
LABEL_29:

        v22 = v26;
        v21 = v41;
        goto LABEL_6;
      }

LABEL_31:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_21D214404(0, *(v39 + 2) + 1, 1, v39);
      }

      v37 = *(v39 + 2);
      v36 = *(v39 + 3);
      if (v37 >= v36 >> 1)
      {
        v39 = sub_21D214404((v36 > 1), v37 + 1, 1, v39);
      }

      *(v39 + 2) = v37 + 1;
      *&v39[8 * v37 + 32] = v41;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    if (v32)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

LABEL_7:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v8 = *(v4 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t TTREditSectionsViewModel.applying(_:)(uint64_t a1)
{
  v2 = v1;
  v69 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60478);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v67 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60480);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v67 - v9;
  v11 = v1[3];
  sub_21D6DD788(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v68 = v11;
    sub_21DBF8E0C();
    sub_21D6DD8B4(v6);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v79 = v11;
    sub_21DBF8E0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58858);
    sub_21D0D8CF0(0, &qword_280D17880);
    sub_21D6DDD90();
    sub_21D183A0C();
    v12 = sub_21DBFA45C();

    (*(v8 + 8))(v10, v7);
    v68 = v12;
  }

  v13 = *(a1 + *(type metadata accessor for TTREditSectionsViewModel.OptimisticApply() + 20));
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v18 = (v15 + 63) >> 6;
  sub_21DBF8E0C();
  v19 = 0;
  v70 = v13;
  v71 = v1;
  while (v17)
  {
LABEL_15:
    v21 = __clz(__rbit64(v17)) | (v19 << 6);
    v22 = *(*(v13 + 48) + 8 * v21);
    v23 = (*(v13 + 56) + 16 * v21);
    v24 = v23[1];
    v77 = *v23;
    swift_beginAccess();
    v25 = v2[4];
    v26 = *(v25 + 16);
    v27 = v22;
    v28 = v27;
    if (!v26)
    {
      sub_21DBF8E0C();
LABEL_8:
      swift_endAccess();
      goto LABEL_9;
    }

    v76 = v27;
    v29 = v27;
    sub_21DBF8E0C();
    v30 = sub_21D17E07C(v29);
    if ((v31 & 1) == 0)
    {

      v28 = v76;
      goto LABEL_8;
    }

    v32 = *(v25 + 56) + 48 * v30;
    v33 = *v32;
    v73 = *(v32 + 24);
    v34 = *(v32 + 32);
    v74 = *(v32 + 40);
    v35 = v33;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    swift_endAccess();

    sub_21DBF8E0C();

    swift_beginAccess();
    v36 = v29;
    v37 = v2;
    v38 = v36;
    v72 = v35;
    sub_21DBF8E0C();
    v75 = v34;
    sub_21DBF8E0C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = v37[4];
    v40 = v78;
    v37[4] = 0x8000000000000000;
    v42 = sub_21D17E07C(v38);
    v43 = v40[2];
    v44 = (v41 & 1) == 0;
    v45 = v43 + v44;
    if (__OFADD__(v43, v44))
    {
      goto LABEL_32;
    }

    v46 = v41;
    if (v40[3] >= v45)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v49 = v78;
        if ((v41 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        sub_21D2249EC();
        v49 = v78;
        if ((v46 & 1) == 0)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      sub_21D21CE1C(v45, isUniquelyReferenced_nonNull_native);
      v47 = sub_21D17E07C(v38);
      if ((v46 & 1) != (v48 & 1))
      {
        goto LABEL_34;
      }

      v42 = v47;
      v49 = v78;
      if ((v46 & 1) == 0)
      {
LABEL_27:
        v49[(v42 >> 6) + 8] |= 1 << v42;
        *(v49[6] + 8 * v42) = v38;
        v55 = v49[7] + 48 * v42;
        v52 = v72;
        v56 = v77;
        *v55 = v72;
        *(v55 + 8) = v56;
        v57 = v73;
        *(v55 + 16) = v24;
        *(v55 + 24) = v57;
        *(v55 + 32) = v75;
        *(v55 + 40) = v74;
        v58 = v49[2];
        v59 = __OFADD__(v58, 1);
        v60 = v58 + 1;
        if (v59)
        {
          goto LABEL_33;
        }

        v49[2] = v60;
        goto LABEL_29;
      }
    }

    v50 = v49[7] + 48 * v42;
    v51 = *(v50 + 32);
    v67[0] = *v50;
    v67[1] = v51;
    v52 = v72;
    v53 = v77;
    *v50 = v72;
    *(v50 + 8) = v53;
    v54 = v73;
    *(v50 + 16) = v24;
    *(v50 + 24) = v54;
    *(v50 + 32) = v75;
    *(v50 + 40) = v74;

LABEL_29:
    v2 = v71;
    v71[4] = v49;
    swift_endAccess();

    v13 = v70;
    v28 = v76;
LABEL_9:
    v17 &= v17 - 1;
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v18)
    {

      swift_beginAccess();
      v61 = *(v2 + 16);
      swift_beginAccess();
      v62 = v2[4];
      v63 = *(v2 + 17);
      v64 = *(v2 + 18);
      v65 = swift_allocObject();
      *(v65 + 16) = v61;
      *(v65 + 24) = v68;
      *(v65 + 32) = v62;
      *(v65 + 17) = v63;
      *(v65 + 18) = v64;
      sub_21DBF8E0C();
      return v65;
    }

    v17 = *(v14 + 8 * v20);
    ++v19;
    if (v17)
    {
      v19 = v20;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  sub_21D0D8CF0(0, &qword_280D17880);
  result = sub_21DBFC70C();
  __break(1u);
  return result;
}

uint64_t TTREditSectionsViewModel.deinit()
{

  return v0;
}

uint64_t TTREditSectionsViewModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t _s15RemindersUICore24TTREditSectionsViewModelC11SectionItemV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *(a1 + 40);
  sub_21D0D8CF0(0, &qword_280D17680);
  if (sub_21DBFB63C() & 1) != 0 && (v2 == v6 && v4 == v8 || (sub_21DBFC64C()))
  {
    if (v5)
    {
      if (v9 && (v3 == v7 && v5 == v9 || (sub_21DBFC64C() & 1) != 0))
      {
        return v12 ^ v11 ^ 1u;
      }
    }

    else if (!v9)
    {
      return v12 ^ v11 ^ 1u;
    }
  }

  return 0;
}

BOOL _s15RemindersUICore24TTREditSectionsViewModelC14ItemIdentifierO2eeoiySbAE_AEtFZ_0(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      sub_21D0D8CF0(0, &qword_280D17680);
      v4 = v3;
      v5 = v2;
      v6 = sub_21DBFB63C();

      return v6 & 1;
    }

    return 0;
  }

  return !v3;
}

uint64_t sub_21D6DD788(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60478);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D6DD7F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60478);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for TTREditSectionsViewModel.OptimisticApply()
{
  result = qword_27CE604B0;
  if (!qword_27CE604B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D6DD8B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60478);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D6DD91C(char isUniquelyReferenced_nonNull_native, uint64_t a2, char a3, char a4)
{
  LOBYTE(v4) = a4;
  LOBYTE(v5) = a3;
  v6 = a2;
  v36 = MEMORY[0x277D84F98];
  v8 = *(a2 + 16);
  if (MEMORY[0x277D84F90] >> 62)
  {
LABEL_24:
    sub_21DBFBD7C();
  }

  v9 = sub_21DBFBF9C();
  v37 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE604C8);
  sub_21DBF9EAC();
  if (v8)
  {
    v29 = isUniquelyReferenced_nonNull_native;
    v30 = v5;
    v31 = v4;
    v10 = v36;
    v11 = (v6 + 72);
    v12 = v8 & ~(v8 >> 63);
    while (1)
    {
      if (!v12)
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v14 = *(v11 - 5);
      v32 = v8;
      v33 = *(v11 - 4);
      v6 = *(v11 - 3);
      v34 = *(v11 - 2);
      v8 = *(v11 - 1);
      v35 = *v11;
      sub_21DBF8E0C();
      v15 = v14;
      v16 = sub_21DBF8E0C();
      MEMORY[0x223D42D80](v16);
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v5 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v17 = v15;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v4 = sub_21D17E07C(v17);
      v19 = v36[2];
      v20 = (v18 & 1) == 0;
      v21 = v19 + v20;
      if (__OFADD__(v19, v20))
      {
        goto LABEL_22;
      }

      LOBYTE(v5) = v18;
      if (v36[3] >= v21)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21D2249EC();
        }
      }

      else
      {
        sub_21D21CE1C(v21, isUniquelyReferenced_nonNull_native);
        v22 = sub_21D17E07C(v17);
        if ((v5 & 1) != (v23 & 1))
        {
          sub_21D0D8CF0(0, &qword_280D17880);
          result = sub_21DBFC70C();
          __break(1u);
          return result;
        }

        v4 = v22;
      }

      if (v5)
      {
        v13 = v36[7] + 48 * v4;
        v5 = *v13;
        v4 = *(v13 + 16);
        *v13 = v17;
        *(v13 + 8) = v33;
        *(v13 + 16) = v6;
        *(v13 + 24) = v34;
        *(v13 + 32) = v8;
        *(v13 + 40) = v35;
      }

      else
      {
        v36[(v4 >> 6) + 8] |= 1 << v4;
        *(v36[6] + 8 * v4) = v17;
        v24 = v36[7] + 48 * v4;
        *v24 = v17;
        *(v24 + 8) = v33;
        *(v24 + 16) = v6;
        *(v24 + 24) = v34;
        *(v24 + 32) = v8;
        *(v24 + 40) = v35;

        v25 = v36[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_23;
        }

        v36[2] = v27;
      }

      --v12;
      v11 += 48;
      v8 = v32 - 1;
      if (v32 == 1)
      {
        LOBYTE(v5) = v30;
        LOBYTE(v4) = v31;
        isUniquelyReferenced_nonNull_native = v29;
        v9 = v37;
        goto LABEL_20;
      }
    }
  }

  v10 = v36;
LABEL_20:
  type metadata accessor for TTREditSectionsViewModel();
  result = swift_allocObject();
  *(result + 16) = isUniquelyReferenced_nonNull_native & 1;
  *(result + 24) = v9;
  *(result + 32) = v10;
  *(result + 17) = v5 & 1;
  *(result + 18) = v4 & 1;
  return result;
}

unint64_t sub_21D6DDC90()
{
  result = qword_27CE5EC78;
  if (!qword_27CE5EC78)
  {
    sub_21DBF6F4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5EC78);
  }

  return result;
}

unint64_t sub_21D6DDCE8()
{
  result = qword_27CE60488;
  if (!qword_27CE60488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE60488);
  }

  return result;
}

unint64_t sub_21D6DDD3C()
{
  result = qword_27CE60490;
  if (!qword_27CE60490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE60490);
  }

  return result;
}

unint64_t sub_21D6DDD90()
{
  result = qword_27CE59838;
  if (!qword_27CE59838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE58858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE59838);
  }

  return result;
}

unint64_t sub_21D6DDDF8()
{
  result = qword_27CE604A0;
  if (!qword_27CE604A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE604A0);
  }

  return result;
}

unint64_t sub_21D6DDE50()
{
  result = qword_27CE604A8;
  if (!qword_27CE604A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE604A8);
  }

  return result;
}

uint64_t initializeWithCopy for TTREditSectionsViewModel.SectionItem(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v6 = v3;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTREditSectionsViewModel.SectionItem(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for TTREditSectionsViewModel.SectionItem(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;

  v6 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTREditSectionsViewModel.SectionItem(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t storeEnumTagSinglePayload for TTREditSectionsViewModel.SectionItem(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTREditSectionsViewModel.OptimisticApply(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60480);
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60478);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    sub_21DBF8E0C();
  }

  return a1;
}

uint64_t destroy for TTREditSectionsViewModel.OptimisticApply(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60480);
  v3 = *(v2 - 8);
  if (!(*(v3 + 48))(a1, 1, v2))
  {
    (*(v3 + 8))(a1, v2);
  }
}

char *initializeWithCopy for TTREditSectionsViewModel.OptimisticApply(char *a1, char *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60480);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60478);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  sub_21DBF8E0C();
  return a1;
}

char *assignWithCopy for TTREditSectionsViewModel.OptimisticApply(char *a1, char *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60480);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60478);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 16))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  sub_21DBF8E0C();

  return a1;
}

char *initializeWithTake for TTREditSectionsViewModel.OptimisticApply(char *a1, char *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60480);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60478);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

char *assignWithTake for TTREditSectionsViewModel.OptimisticApply(char *a1, char *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60480);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60478);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 32))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];

  return a1;
}

void sub_21D6DE950()
{
  sub_21D6DE9E8();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_21D6DE9E8()
{
  if (!qword_27CE604C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE60480);
    v0 = sub_21DBFBA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE604C0);
    }
  }
}

id sub_21D6DEA4C(double *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_preferredMaxLayoutWidth;
  result = swift_beginAccess();
  v6 = *&v3[v4];
  *&v3[v4] = v2;
  if (v2 != v6)
  {
    return [v3 invalidateIntrinsicContentSize];
  }

  return result;
}

double sub_21D6DEABC()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_preferredMaxLayoutWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_21D6DEB00(double a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_preferredMaxLayoutWidth;
  result = swift_beginAccess();
  v5 = *&v1[v3];
  *&v1[v3] = a1;
  if (v5 != a1)
  {
    return [v1 invalidateIntrinsicContentSize];
  }

  return result;
}

void (*sub_21D6DEB6C(uint64_t *a1))(id **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_preferredMaxLayoutWidth;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_21D6DEC00;
}

void sub_21D6DEC00(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 3);
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v5 = *&v3[v4];
  *&v3[v4] = v2;
  if (v2 != v5)
  {
    [v1[4] invalidateIntrinsicContentSize];
  }

  free(v1);
}

uint64_t (*sub_21D6DEC78(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21D6E0538;
}

uint64_t sub_21D6DECE8(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

id sub_21D6DED3C(uint64_t a1, char a2, void *a3)
{
  v6 = &v3[*a3];
  swift_beginAccess();
  *v6 = a1;
  v6[8] = a2 & 1;
  return [v3 invalidateIntrinsicContentSize];
}

uint64_t (*sub_21D6DEDA8(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21D6E0538;
}

uint64_t sub_21D6DEE0C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_arrangedSubviews;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  sub_21DBF8E0C();
  sub_21D6DEE7C(v5);
}

void sub_21D6DEE7C(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_arrangedSubviews;
  swift_beginAccess();
  v4 = sub_21DBF8E0C();
  v5 = sub_21D114F14(v4, a1);

  if ((v5 & 1) == 0)
  {
    if (a1 >> 62)
    {
      v6 = sub_21DBFBD7C();
      if (!v6)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        goto LABEL_11;
      }
    }

    if (v6 < 1)
    {
      __break(1u);
      goto LABEL_25;
    }

    for (i = 0; i != v6; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223D44740](i, a1);
      }

      else
      {
        v8 = *(a1 + 8 * i + 32);
      }

      v9 = v8;
      [v8 removeFromSuperview];
    }

LABEL_11:
    v10 = *&v1[v3];
    if (v10 >> 62)
    {
      v11 = sub_21DBFBD7C();
      if (v11)
      {
LABEL_13:
        if (v11 >= 1)
        {
          sub_21DBF8E0C();
          for (j = 0; j != v11; ++j)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x223D44740](j, v10);
            }

            else
            {
              v13 = *(v10 + 8 * j + 32);
            }

            v14 = v13;
            [v1 addSubview_];
          }

          goto LABEL_20;
        }

LABEL_25:
        __break(1u);
        return;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_13;
      }
    }

LABEL_20:
    [v1 invalidateIntrinsicContentSize];
    [v1 setNeedsLayout];
  }
}

uint64_t sub_21D6DF08C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_arrangedSubviews;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_21D6DEE7C(v4);
}

void (*sub_21D6DF0F0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_arrangedSubviews;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  sub_21DBF8E0C();
  return sub_21D6DF18C;
}

void sub_21D6DF18C(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(v4 + v3);
  *(v4 + v3) = *(*a1 + 24);
  if (a2)
  {
    sub_21DBF8E0C();
    sub_21D6DEE7C(v5);
  }

  else
  {
    sub_21D6DEE7C(v5);
  }

  free(v2);
}

double sub_21D6DF210()
{
  sub_21D6DF960();

  return sub_21D6DFAB0(v0);
}

id TTRListAppearanceGridView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TTRListAppearanceGridView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_preferredMaxLayoutWidth] = 0;
  v9 = &v4[OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_horizontalMargins];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v4[OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_topMargin];
  *v10 = 0;
  v10[8] = 1;
  *&v4[OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_arrangedSubviews] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_badgeSize] = vdupq_n_s64(0x4045800000000000uLL);
  *&v4[OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_minimumGap] = 0x4030000000000000;
  *&v4[OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_verticalGap] = 0x4030000000000000;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for TTRListAppearanceGridView();
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  [v11 setClipsToBounds_];
  return v11;
}

id TTRListAppearanceGridView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TTRListAppearanceGridView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_preferredMaxLayoutWidth] = 0;
  v3 = &v1[OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_horizontalMargins];
  *v3 = 0;
  v3[8] = 1;
  v4 = &v1[OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_topMargin];
  *v4 = 0;
  v4[8] = 1;
  *&v1[OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_arrangedSubviews] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_badgeSize] = vdupq_n_s64(0x4045800000000000uLL);
  *&v1[OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_minimumGap] = 0x4030000000000000;
  *&v1[OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_verticalGap] = 0x4030000000000000;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for TTRListAppearanceGridView();
  v5 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    [v7 setClipsToBounds_];
  }

  return v6;
}

double sub_21D6DF5D4()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_badgeSize;
  swift_beginAccess();
  return *v1;
}

id sub_21D6DF688(double a1, double a2)
{
  v5 = &v2[OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_badgeSize];
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return [v2 invalidateIntrinsicContentSize];
}

uint64_t (*sub_21D6DF6F0(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21D6E0538;
}

double sub_21D6DF79C()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_minimumGap;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_21D6DF844(double a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_minimumGap;
  swift_beginAccess();
  *&v1[v3] = a1;
  return [v1 invalidateIntrinsicContentSize];
}

uint64_t (*sub_21D6DF8A4(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21D6DF908;
}

id sub_21D6DF90C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 invalidateIntrinsicContentSize];
  }

  return result;
}

uint64_t sub_21D6DF960()
{
  swift_beginAccess();
  swift_beginAccess();
  return swift_beginAccess();
}

double sub_21D6DFAB0(double a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_arrangedSubviews;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    v5 = sub_21DBFBD7C();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = ceil(v5 / a1);
  v7 = v1 + OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_badgeSize;
  swift_beginAccess();
  v8 = *(v7 + 8);
  v9 = v1 + OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_topMargin;
  swift_beginAccess();
  v10 = *v9;
  if (*(v9 + 8))
  {
    v10 = 16.0;
  }

  return v6 * (v8 + 16.0) + v10;
}

uint64_t sub_21D6DFBB8()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v5 = [v0 traitCollection];
  [v5 displayScale];
  v7 = v6;

  if (v7 == 0.0)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = v7;
  }

  v9 = &v0[OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_badgeSize];
  swift_beginAccess();
  v36 = v9[1];
  v37 = *v9;
  sub_21D6DF960();
  v35 = v10;
  Height = v11;
  v13 = &v0[OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_horizontalMargins];
  swift_beginAccess();
  if (*(v13 + 8))
  {
    v14 = Height;
  }

  else
  {
    v14 = *v13;
  }

  v15 = &v0[OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_topMargin];
  swift_beginAccess();
  if (*(v15 + 8))
  {
    v16 = 16.0;
  }

  else
  {
    v16 = *v15;
  }

  v17 = OBJC_IVAR____TtC15RemindersUICore25TTRListAppearanceGridView_arrangedSubviews;
  result = swift_beginAccess();
  v19 = *&v0[v17];
  if (v19 >> 62)
  {
    goto LABEL_30;
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v20)
  {
    do
    {
      v4 = v4 + v16;
      v21 = v2 + v14;
      v22 = v37 + Height;
      v2 = Height * -0.5;
      sub_21DBF8E0C();
      v23 = 0;
      v16 = 1.0;
LABEL_13:
      v14 = 0.0;
      while (1)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x223D44740](v23, v19);
        }

        else
        {
          if (v23 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v24 = *(v19 + 8 * v23 + 32);
        }

        v25 = v24;
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        Height = v21 + v22 * v14;
        [v24 frameForAlignmentRect_];
        if (v8 == 1.0)
        {
          v31 = floor(v27);
          v32 = floor(v28);
          v33 = ceil(v29);
          v34 = ceil(v30);
        }

        else
        {
          v31 = floor(v8 * v27) / v8;
          v32 = floor(v8 * v28) / v8;
          v33 = ceil(v8 * v29) / v8;
          v34 = ceil(v8 * v30) / v8;
        }

        [v25 setFrame_];
        [v25 setHitTestInsets_];
        v14 = v14 + 1.0;
        if (v35 <= v14)
        {
          v38.origin.x = Height;
          v38.origin.y = v4;
          v38.size.height = v36;
          v38.size.width = v37;
          Height = CGRectGetHeight(v38);

          v4 = v4 + Height + 16.0;
          ++v23;
          if (v26 != v20)
          {
            goto LABEL_13;
          }
        }

        ++v23;
        if (v26 == v20)
        {
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      result = sub_21DBFBD7C();
      v20 = result;
    }

    while (result);
  }

  return result;
}

id TTRListAppearanceGridView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRListAppearanceGridView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t keypath_get_3Tm@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1 + *a2;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a3 = *v4;
  *(a3 + 8) = v6;
  return result;
}

id keypath_set_4Tm(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a2;
  v8 = *a2 + *a5;
  swift_beginAccess();
  *v8 = v5;
  v8[8] = v6;
  return [v7 invalidateIntrinsicContentSize];
}

uint64_t TTRTimeProvider.isDateInToday(_:calendar:now:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v24 = a3;
  v25 = a4;
  v28 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v27 = sub_21DBF563C();
  v9 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v24 - v13;
  v15 = sub_21DBF5A2C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D3954(a2, v14, &qword_27CE5A8B0);
  v19 = *(v16 + 48);
  if (v19(v14, 1, v15) == 1)
  {
    (*(v26 + 16))(v25);
    if (v19(v14, 1, v15) != 1)
    {
      sub_21D0CF7E0(v14, &qword_27CE5A8B0);
    }
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
  }

  sub_21D0D3954(v24, v8, &qword_27CE58D68);
  v20 = *(v9 + 48);
  v21 = v27;
  if (v20(v8, 1, v27) == 1)
  {
    (*(v26 + 8))(v25);
    if (v20(v8, 1, v21) != 1)
    {
      sub_21D0CF7E0(v8, &qword_27CE58D68);
    }
  }

  else
  {
    (*(v9 + 32))(v11, v8, v21);
  }

  v22 = sub_21DBF59AC();
  (*(v9 + 8))(v11, v21);
  (*(v16 + 8))(v18, v15);
  return v22 & 1;
}

void TTRCurrentTimeProvider.timeZone.getter()
{
  v0 = [objc_opt_self() defaultTimeZone];
  sub_21DBF5C2C();
}

uint64_t sub_21D6E0A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  (*(*(a3 - 8) + 56))(a6, 1, 1, a3);
  v12 = sub_21DBFBA8C();
  (*(*(v12 - 8) + 40))(a6, a1, v12);
  result = a5(0, a3, a4);
  *(a6 + *(result + 36)) = a2;
  return result;
}

uint64_t TTRTreeStorageTreeDeriving.derivedTreeLocation(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v7 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_21DBFBA8C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  v26 = v4;
  (*(v7 + 48))(a1, a2, v7, v14);
  v26 = v4;
  v17 = TTRTreeContentsQueryable.childIndex(of:inParent:)(a1, v16, a2, v7);
  if (v18)
  {
    (*(v10 + 8))(v16, v9);
    swift_getAssociatedConformanceWitness();
    v19 = 1;
    v20 = v25;
  }

  else
  {
    v21 = v17;
    (*(v10 + 16))(v12, v16, v9);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v20 = v25;
    TTRDerivedTreeLocation.init(parent:index:)(v12, v21, AssociatedTypeWitness, AssociatedConformanceWitness, v25);
    (*(v10 + 8))(v16, v9);
    v19 = 0;
  }

  v23 = type metadata accessor for TTRDerivedTreeLocation();
  return (*(*(v23 - 8) + 56))(v20, v19, 1, v23);
}

uint64_t TTRTreeStorageTreeDeriving.item(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a3 + 8);
  result = (*(v6 + 24))(a1, a2, v6);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    if (*(a1 + *(type metadata accessor for TTRDerivedTreeLocation() + 36)) >= v8)
    {
      v10 = 1;
    }

    else
    {
      (*(v6 + 32))();
      v10 = 0;
    }

    return (*(*(AssociatedTypeWitness - 8) + 56))(a4, v10, 1, AssociatedTypeWitness);
  }

  return result;
}

void (*sub_21D6E0F9C(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = TTRBaseTreeLocation.parent.modify();
  return sub_21D4C3D30;
}

void (*sub_21D6E100C(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = TTRBaseTreeLocation.index.modify();
  return sub_21D4C30A8;
}

uint64_t sub_21D6E10B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v6 = sub_21D4C24B0(a1, WitnessTable);
  MEMORY[0x223D42AA0](v6);

  return a3;
}

BOOL sub_21D6E1124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static TTRTreeLocationType.== infix(_:_:)(a1, a2, a3, WitnessTable);
}

uint64_t _s15RemindersUICore19TTRBaseTreeLocationV6parentxSgvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBFBA8C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s15RemindersUICore19TTRBaseTreeLocationV6parentxSgvs_0(uint64_t a1)
{
  v3 = sub_21DBFBA8C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

void (*sub_21D6E12AC(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = TTRDerivedTreeLocation.parent.modify();
  return sub_21D4C3D30;
}

void (*sub_21D6E131C(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = TTRDerivedTreeLocation.index.modify();
  return sub_21D4C3D30;
}

BOOL sub_21D6E13A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static TTRTreeLocationType.== infix(_:_:)(a1, a2, a3, WitnessTable);
}

uint64_t TTRTreeLocationPurpose.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

unint64_t sub_21D6E14A8()
{
  result = qword_27CE60508;
  if (!qword_27CE60508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE60508);
  }

  return result;
}

uint64_t TTRComposableUndoAction.__allocating_init(action:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t TTRComposableUndoAction.init(action:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

void *TTRComposableUndoAction.init(combining:)()
{
  v1 = v0;
  v2 = *v0;
  sub_21DBFBA8C();
  sub_21DBFA74C();
  swift_getWitnessTable();
  v3 = sub_21DBFA41C();

  sub_21DBFA74C();
  swift_getWitnessTable();
  if (sub_21DBFACFC())
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v4 = swift_allocObject();
    v4[2] = *(v2 + 80);
    v4[3] = *(v2 + 88);
    v4[4] = v3;
    v0[2] = sub_21D6E18E4;
    v0[3] = v4;
  }

  return v1;
}

uint64_t sub_21D6E177C()
{
  type metadata accessor for TTRComposableUndoAction();
  v0 = sub_21DBFA74C();
  swift_getWitnessTable();
  v4[2] = sub_21DBFA4EC();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x223D42810](v4, v0, WitnessTable);
  sub_21DBFC39C();
  swift_getWitnessTable();
  sub_21DBFA76C();
  sub_21DBFBA8C();
  v2 = sub_21DBFC13C();

  swift_allocObject();
  return TTRComposableUndoAction.init(combining:)(v2);
}

uint64_t TTRComposableUndoAction.register(with:)()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);

  TTRUndoableEditing.registerUndo(handler:)(sub_21D6E1A0C, v0, v1, v2);
}

uint64_t sub_21D6E19B0(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 16))();
  if (result)
  {
    TTRComposableUndoAction.register(with:)(a1);
  }

  return result;
}

uint64_t TTRComposableUndoAction.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21D6E1B0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(*a1 + 16))(*(v2 + 32));
  *a2 = result;
  return result;
}

Swift::Void __swiftcall UIView.removeAssociatedAppEntity()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE60510);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v4 - v1;
  v3 = sub_21DBF4B3C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_21DBFB59C();
}

char *TTRTreeStorageDerivedTreeWithDesignatedInitialItems.__allocating_init(upstreamTree:designatedItemTree:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *v4;
  *(v4 + 2) = a1;
  (*(*(*(v5 + 88) - 8) + 32))(&v4[*(v5 + 120)], a2);
  return v4;
}

char *TTRTreeStorageDerivedTreeWithDesignatedInitialItems.init(upstreamTree:designatedItemTree:)(uint64_t a1)
{
  v2 = *v1;
  *(v1 + 2) = a1;
  (*(*(*(v2 + 88) - 8) + 32))(&v1[*(v2 + 120)]);
  return v1;
}

uint64_t TTRTreeStorageDerivedTreeWithDesignatedInitialItems.numberOfChildren(of:)(uint64_t a1)
{
  v2 = v1;
  v31 = *v2;
  v4 = *(*(v31[12] + 8) + 8);
  v33 = v31[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_21DBFBA8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v28 - v15;
  (*(v7 + 16))(v11, a1, v6, v14);
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    v17 = *(v7 + 8);
    v7 += 8;
    v17(v11, v6);
    swift_beginAccess();
    v34 = v2[2];
    AssociatedTypeWitness = (*(v4 + 24))(a1, v33, v4);
    v18 = sub_21D6E21D4();
    v19 = __OFADD__(AssociatedTypeWitness, v18);
    result = AssociatedTypeWitness + v18;
    if (!v19)
    {
      return result;
    }

    __break(1u);
  }

  v29 = v4;
  v30 = v6;
  (*(v12 + 32))(v16, v11, AssociatedTypeWitness);
  v21 = v31[11];
  v22 = v31[13];
  if (TTRTreeContentsQueryable.contains(_:)(v16, v21, v22))
  {
    v23 = v32;
    (*(v12 + 16))(v32, v16, AssociatedTypeWitness);
    (*(v12 + 56))(v23, 0, 1, AssociatedTypeWitness);
    v24 = (*(v22 + 24))(v23, v21, v22);
    (*(v7 + 8))(v23, v30);
  }

  else
  {
    swift_beginAccess();
    v34 = v2[2];
    v25 = v32;
    (*(v12 + 16))(v32, v16, AssociatedTypeWitness);
    (*(v12 + 56))(v25, 0, 1, AssociatedTypeWitness);
    v26 = v29;
    v27 = *(v29 + 24);
    swift_unknownObjectRetain();
    v24 = v27(v25, v33, v26);
    (*(v7 + 8))(v25, v30);
    swift_unknownObjectRelease();
  }

  (*(v12 + 8))(v16, AssociatedTypeWitness);
  return v24;
}

uint64_t sub_21D6E21D4()
{
  v1 = *v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_21DBFBA8C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  (*(*(AssociatedTypeWitness - 8) + 56))(&v10 - v6, 1, 1, AssociatedTypeWitness, v5);
  v8 = (*(*(v1 + 104) + 24))(v7, *(v1 + 88));
  (*(v4 + 8))(v7, v3);
  return v8;
}

unint64_t TTRTreeStorageDerivedTreeWithDesignatedInitialItems.child(_:of:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v24 = a1;
  v22[1] = a3;
  v6 = *v3;
  v7 = *(*(*(*v3 + 96) + 8) + 8);
  v22[0] = *(*v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_21DBFBA8C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v22 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v22 - v16;
  v18 = *(v10 + 16);
  v23 = a2;
  v18(v12, a2, v9, v15);
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v10 + 8))(v12, v9);
    result = sub_21D6E21D4();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      return result;
    }

    v20 = v24;
    if (result > v24)
    {
      return (*(*(v6 + 104) + 32))(v20, v23, *(v6 + 88));
    }

    v20 = v24 - result;
    if (!__OFSUB__(v24, result))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  (*(v13 + 32))(v17, v12, AssociatedTypeWitness);
  v21 = TTRTreeContentsQueryable.contains(_:)(v17, *(v6 + 88), *(v6 + 104));
  (*(v13 + 8))(v17, AssociatedTypeWitness);
  v20 = v24;
  if (v21)
  {
    return (*(*(v6 + 104) + 32))(v20, v23, *(v6 + 88));
  }

LABEL_9:
  swift_beginAccess();
  v25 = v4[2];
  return (*(v7 + 32))(v20, v23, v22[0]);
}

uint64_t TTRTreeStorageDerivedTreeWithDesignatedInitialItems.item(withID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(*(*(*v2 + 96) + 8) + 8);
  v7 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_21DBFBA8C();
  v16 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  swift_beginAccess();
  v17 = v2[2];
  (*(v6 + 40))(a1, v7, v6);
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 48);
  if (v13(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(*(v5 + 104) + 40))(a1, *(v5 + 88));
    result = v13(v11, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (*(v16 + 8))(v11, v9);
    }
  }

  else
  {
    (*(v12 + 32))(a2, v11, AssociatedTypeWitness);
    return (*(v12 + 56))(a2, 0, 1, AssociatedTypeWitness);
  }

  return result;
}

uint64_t TTRTreeStorageDerivedTreeWithDesignatedInitialItems.parent(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(*(*(*v2 + 96) + 8) + 8);
  v7 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_21DBFBA8C();
  v16 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  swift_beginAccess();
  v17 = v2[2];
  (*(v6 + 48))(a1, v7, v6);
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 48);
  if (v13(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(*(v5 + 104) + 48))(a1, *(v5 + 88));
    result = v13(v11, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (*(v16 + 8))(v11, v9);
    }
  }

  else
  {
    (*(v12 + 32))(a2, v11, AssociatedTypeWitness);
    return (*(v12 + 56))(a2, 0, 1, AssociatedTypeWitness);
  }

  return result;
}

uint64_t TTRTreeStorageDerivedTreeWithDesignatedInitialItems.isExpandSuppressed(_:)(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(*(v3 + 96) + 8);
  v5 = *(v4 + 16);
  v6 = *(v3 + 80);
  swift_unknownObjectRetain();
  LOBYTE(a1) = v5(a1, v6, v4);
  swift_unknownObjectRelease();
  return a1 & 1;
}

uint64_t TTRTreeStorageDerivedTreeWithDesignatedInitialItems.convertFromImmediateUpstream(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_21DBFBA8C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for TTRDerivedTreeLocation();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  (*(v10 + 16))(&v19 - v12, a1, v9, v11);
  (*(v6 + 16))(v8, v13, v5);
  LODWORD(a1) = (*(*(AssociatedTypeWitness - 8) + 48))(v8, 1, AssociatedTypeWitness);
  (*(v6 + 8))(v8, v5);
  if (a1 != 1)
  {
    goto LABEL_4;
  }

  result = sub_21D6E21D4();
  v15 = *(v9 + 36);
  v16 = *&v13[v15];
  v17 = __OFADD__(v16, result);
  v18 = v16 + result;
  if (!v17)
  {
    *&v13[v15] = v18;
LABEL_4:
    (*(v10 + 32))(a2, v13, v9);
    return (*(v10 + 56))(a2, 0, 1, v9);
  }

  __break(1u);
  return result;
}

unint64_t TTRTreeStorageDerivedTreeWithDesignatedInitialItems.convertToImmediateUpstream(_:for:)(uint64_t a1)
{
  v36 = a1;
  v2 = *v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_21DBFBA8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v31 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  v14 = *(v2 + 88);
  v34 = *(v2 + 104);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35 = type metadata accessor for TTRDerivedTreeLocation();
  v33 = *(v35 - 8);
  v15 = MEMORY[0x28223BE20](v35);
  v32 = &v29 - v16;
  v17 = *(v5 + 16);
  v17(v9, v36, v4, v15);
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) != 1)
  {
    (*(v10 + 32))(v13, v9, AssociatedTypeWitness);
    if (TTRTreeContentsQueryable.contains(_:)(v13, v14, v34))
    {
      v22 = sub_21DBFA68C();
      (*(v10 + 8))(v13, AssociatedTypeWitness);
      return v22;
    }

    (*(v10 + 8))(v13, AssociatedTypeWitness);
    v24 = v32;
    v23 = v33;
    v20 = v35;
    (*(v33 + 16))(v32, v36, v35);
    goto LABEL_10;
  }

  (*(v5 + 8))(v9, v4);
  result = sub_21D6E21D4();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v19 = result;
  v20 = v35;
  v21 = *(v36 + *(v35 + 36));
  if (v21 < result)
  {
    return sub_21DBFA68C();
  }

  v25 = v31;
  result = (v17)(v31);
  v26 = v21 - v19;
  if (__OFSUB__(v21, v19))
  {
    goto LABEL_13;
  }

  v24 = v32;
  TTRDerivedTreeLocation.init(parent:index:)(v25, v26, AssociatedTypeWitness, AssociatedConformanceWitness, v32);
  v23 = v33;
LABEL_10:
  sub_21DBFC5CC();
  swift_allocObject();
  v27 = sub_21DBFA60C();
  (*(v23 + 32))(v28, v24, v20);
  result = v27;
  sub_21D23C8B4();
  return result;
}

uint64_t *TTRTreeStorageDerivedTreeWithDesignatedInitialItems.deinit()
{
  v1 = *v0;
  swift_unknownObjectRelease();
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 120));
  return v0;
}

uint64_t TTRTreeStorageDerivedTreeWithDesignatedInitialItems.__deallocating_deinit()
{
  TTRTreeStorageDerivedTreeWithDesignatedInitialItems.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21D6E35A8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21D6E35E4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21D6E3640()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_21D6E3724(int a1)
{
  if ((a1 - 1) > 0x1A)
  {
    v2 = MEMORY[0x277CDA5C0];
  }

  else
  {
    v2 = qword_27832E7E0[a1 - 1];
  }

  v3 = *v2;
  v4 = objc_allocWithZone(MEMORY[0x277CD9EA0]);

  return [v4 initWithType_];
}

void *TTRLocationQuickPicksInteractor.__allocating_init(geoService:locationOptionsProvider:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a2, v8);
  v11 = sub_21D6E5C48(v7, v10, v2, v5, v8, v6, v9);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

uint64_t TTRLocationQuickPicksInteractor.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRLocationQuickPicksInteractor.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24989C;
}

void *TTRLocationQuickPicksInteractor.init(geoService:locationOptionsProvider:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v9);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  v20 = sub_21D6E5864(v11, v18, v3, v7, v13, v6, v14);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v20;
}

uint64_t sub_21D6E3B40(char a1)
{
  v2 = v1;
  v3 = v1[13];
  v4 = v1[14];
  __swift_project_boxed_opaque_existential_1(v1 + 10, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v6 = v5;
  if (v5)
  {

    v7 = 1;
  }

  else
  {
    v7 = 6;
  }

  v8 = v1[13];
  v9 = v1[14];
  __swift_project_boxed_opaque_existential_1(v1 + 10, v8);
  v10 = (*(v9 + 24))(v8, v9);
  v11 = v10;
  if (v10)
  {

    v12 = 2;
  }

  else
  {
    v12 = 6;
  }

  v13 = v1[13];
  v14 = v1[14];
  __swift_project_boxed_opaque_existential_1(v1 + 10, v13);
  v15 = (*(v14 + 32))(v13, v14);
  v16 = v1[13];
  v17 = v1[14];
  __swift_project_boxed_opaque_existential_1(v1 + 10, v16);
  v18 = (*(v17 + 32))(v16, v17);
  v19 = sub_21D2137B4(0, 1, 1, MEMORY[0x277D84F90]);
  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_21D2137B4((v20 > 1), v21 + 1, 1, v19);
  }

  *(v19 + 2) = v21 + 1;
  v19[v21 + 32] = 0;
  if (v6)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_21D2137B4(0, *(v19 + 2) + 1, 1, v19);
    }

    v23 = *(v19 + 2);
    v22 = *(v19 + 3);
    if (v23 >= v22 >> 1)
    {
      v19 = sub_21D2137B4((v22 > 1), v23 + 1, 1, v19);
    }

    *(v19 + 2) = v23 + 1;
    v19[v23 + 32] = v7;
  }

  if (v11)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_21D2137B4(0, *(v19 + 2) + 1, 1, v19);
    }

    v25 = *(v19 + 2);
    v24 = *(v19 + 3);
    if (v25 >= v24 >> 1)
    {
      v19 = sub_21D2137B4((v24 > 1), v25 + 1, 1, v19);
    }

    *(v19 + 2) = v25 + 1;
    v19[v25 + 32] = v12;
  }

  if (v15)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_21D2137B4(0, *(v19 + 2) + 1, 1, v19);
    }

    v27 = *(v19 + 2);
    v26 = *(v19 + 3);
    if (v27 >= v26 >> 1)
    {
      v19 = sub_21D2137B4((v26 > 1), v27 + 1, 1, v19);
    }

    *(v19 + 2) = v27 + 1;
    v19[v27 + 32] = 3;
  }

  if (v18)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_21D2137B4(0, *(v19 + 2) + 1, 1, v19);
    }

    v29 = *(v19 + 2);
    v28 = *(v19 + 3);
    if (v29 >= v28 >> 1)
    {
      v19 = sub_21D2137B4((v28 > 1), v29 + 1, 1, v19);
    }

    *(v19 + 2) = v29 + 1;
    v19[v29 + 32] = 4;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_21D2137B4(0, *(v19 + 2) + 1, 1, v19);
  }

  v31 = *(v19 + 2);
  v30 = *(v19 + 3);
  if (v31 >= v30 >> 1)
  {
    v19 = sub_21D2137B4((v30 > 1), v31 + 1, 1, v19);
  }

  *(v19 + 2) = v31 + 1;
  v19[v31 + 32] = 5;
  swift_beginAccess();
  v2[4] = v19;

  if (a1)
  {
    v33 = v2[16];
    if (!v33 || (v34 = v2[4], sub_21DBF8E0C(), sub_21DBF8E0C(), v35 = sub_21D1D5448(v34, v33), , result = , (v35 & 1) == 0))
    {
      v2[16] = v2[4];
      sub_21DBF8E0C();

      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v36 = v2[3];
        ObjectType = swift_getObjectType();
        (*(v36 + 8))(ObjectType, v36);
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_21D6E3FCC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21D6E3B40(1);
  }

  return result;
}

uint64_t TTRLocationQuickPicksInteractor.locationTrigger(for:togglingProximityForCurrentSelection:)(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60598);
  v79 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v60 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE605A0);
  v80 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v60 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE605A8);
  v78 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v60 - v13;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE605B0);
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v72 = &v60 - v15;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE605B8);
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v71 = &v60 - v16;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE605C0);
  v64 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v63 = &v60 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE605C8);
  v66 = *(v18 - 8);
  v67 = v18;
  MEMORY[0x28223BE20](v18);
  v65 = &v60 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE605D0);
  v69 = *(v20 - 8);
  v70 = v20;
  MEMORY[0x28223BE20](v20);
  v68 = &v60 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FA78);
  MEMORY[0x28223BE20](v22);
  v26 = *a1;
  if (v26 > 2)
  {
    if (v26 == 3)
    {

      v34 = 1;
    }

    else
    {
      if (v26 != 4)
      {
        return 0;
      }

      v33 = sub_21DBFC64C();

      if (v33)
      {
        v34 = 1;
      }

      else
      {
        v34 = 2;
      }
    }

    v81 = [objc_allocWithZone(MEMORY[0x277D44590]) initWithEvent_];
    LOBYTE(v82) = 1;
    v40 = v81;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE605D8);
    sub_21DBF90EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
    sub_21DBF90DC();
    (*(v79 + 8))(v8, v6);
    sub_21D0D0F1C(&qword_27CE605E0, &qword_27CE605A0);
    v32 = sub_21DBF920C();

    v41 = *(v80 + 8);
    v42 = v11;
LABEL_17:
    v41(v42, v9);
    return v32;
  }

  v28 = *a2;
  v27 = a2[1];
  if (v26 - 1 >= 2)
  {
    v35 = &v60 - v24;
    v79 = v25;
    v80 = v23;
    v36 = v3[8];
    v37 = v3[9];
    __swift_project_boxed_opaque_existential_1(v3 + 5, v36);
    (*(v37 + 8))(&v81, v36, v37);
    v62 = v27;
    v61 = v28;
    if (v83 >> 2 != 0xFFFFFFFF || (v84 & 0xF000000000000007) != 0)
    {
      sub_21D0D73FC(v81, v82, v83, v84);
    }

    else
    {
      v38 = v3[8];
      v39 = v3[9];
      __swift_project_boxed_opaque_existential_1(v3 + 5, v38);
      (*(v39 + 24))(v38, v39);
    }

    v43 = v77;
    v44 = v3[8];
    v45 = v3[9];
    __swift_project_boxed_opaque_existential_1(v3 + 5, v44);
    v81 = (*(v45 + 72))(v44, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FA80);
    v78 = sub_21D0D8CF0(0, &qword_280D17760);
    sub_21D0D0F1C(&qword_27CE5FA88, &qword_27CE5FA80);
    sub_21DBF931C();

    v46 = v3[13];
    v47 = v3[14];
    __swift_project_boxed_opaque_existential_1(v3 + 10, v46);
    v81 = (*(v47 + 8))(v46, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E758);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE605F0);
    sub_21D0D0F1C(&qword_280D0C4B8, &qword_27CE5E758);
    v48 = v63;
    sub_21DBF927C();

    v81 = MEMORY[0x277D84F90];
    sub_21D0D0F1C(&qword_27CE605F8, &qword_27CE605C0);
    v49 = v65;
    sub_21DBF922C();
    (*(v64 + 8))(v48, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
    sub_21D0D0F1C(&qword_27CE60600, &qword_27CE605C8);
    v50 = v67;
    v51 = v68;
    sub_21DBF93BC();
    (*(v66 + 8))(v49, v50);
    sub_21D0D0F1C(&qword_27CE5FA90, &qword_27CE5FA78);
    sub_21D0D0F1C(&qword_27CE60608, &qword_27CE605D0);
    v52 = v72;
    v9 = v80;
    v53 = v70;
    sub_21DBF925C();
    v54 = swift_allocObject();
    *(v54 + 16) = v3;
    *(v54 + 24) = 0;
    v55 = v62;
    *(v54 + 32) = v61;
    *(v54 + 40) = v55;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE605D8);
    v56 = v71;
    v57 = v76;
    sub_21DBF8F6C();

    (*(v74 + 8))(v52, v57);
    sub_21D0D0F1C(&qword_27CE60610, &qword_27CE605B8);
    v58 = v75;
    v32 = sub_21DBF920C();
    (*(v73 + 8))(v56, v58);
    (*(v69 + 8))(v51, v53);
    v41 = *(v79 + 8);
    v42 = v35;
    goto LABEL_17;
  }

  v29 = v3[13];
  v30 = v3[14];
  __swift_project_boxed_opaque_existential_1(v3 + 10, v29);
  v81 = (*(v30 + 8))(v29, v30);
  v31 = swift_allocObject();
  *(v31 + 16) = v26;
  *(v31 + 24) = v3;
  *(v31 + 32) = v28;
  *(v31 + 40) = v27;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE605D8);
  sub_21D0D0F1C(&qword_280D0C4B8, &qword_27CE5E758);
  sub_21DBF931C();

  sub_21D0D0F1C(&qword_27CE605E8, &qword_27CE605A8);
  v32 = sub_21DBF920C();
  (*(v78 + 8))(v14, v12);
  return v32;
}

void sub_21D6E4D30(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (sub_21DBFADDC())
  {
    sub_21D0D8CF0(0, &qword_280D17760);
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v4 = v3;
    sub_21D8CAAE8(v4, 1);

    v5 = sub_21DBFB3EC();
    *a2 = v5;
  }

  else
  {

    v6 = objc_opt_self();
    v7 = sub_21DBFA12C();
    [v6 internalErrorWithDebugDescription_];

    swift_willThrow();
  }
}

uint64_t sub_21D6E4F04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60620);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21DC08D20;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  v6 = v4;
  v7 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60628);
  sub_21D0D8CF0(0, &qword_280D17760);
  sub_21D0D0F1C(&qword_27CE60630, &qword_27CE60628);
  v8 = sub_21DBFA41C();

  *a2 = v8;
  return result;
}

uint64_t sub_21D6E5008@<X0>(id *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v11 = *a1;
  v4 = *a2;
  if (*a2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223D44740](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      result = sub_21DBFB40C();
      if (result)
      {
        *a3 = v8;
        return result;
      }

      ++v6;
      if (v9 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
  *a3 = v11;

  return v11;
}

id sub_21D6E5138@<X0>(uint64_t *a1@<X0>, unsigned __int8 a2@<W2>, unsigned __int8 a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = *a1;
  if (a3 == 6)
  {
    v7 = 1;
  }

  else
  {
    v9 = sub_21D25BD94(a2, a3);
    v10 = 1;
    if (a4 == 1)
    {
      v10 = 2;
    }

    if (v9)
    {
      v7 = v10;
    }

    else
    {
      v7 = 1;
    }
  }

  result = [objc_allocWithZone(MEMORY[0x277D44580]) initWithStructuredLocation:v6 proximity:v7];
  *a5 = result;
  *(a5 + 8) = 0;
  return result;
}

void sub_21D6E51C8(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, unsigned __int8 a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  if (a2 == 1)
  {

    if (!v9)
    {
LABEL_3:
      v11 = objc_opt_self();
      v12 = sub_21DBFA12C();
      [v11 internalErrorWithDebugDescription_];

      swift_willThrow();
      return;
    }
  }

  else
  {
    v13 = sub_21DBFC64C();

    if ((v13 & 1) == 0)
    {
      v9 = v10;
    }

    if (!v9)
    {
      goto LABEL_3;
    }
  }

  if (a3 == 6)
  {
    v14 = v9;
    v15 = 1;
  }

  else
  {
    v16 = v9;
    v17 = sub_21D25BD94(a2, a3);
    v18 = 1;
    if (a4 == 1)
    {
      v18 = 2;
    }

    if (v17)
    {
      v15 = v18;
    }

    else
    {
      v15 = 1;
    }
  }

  v19 = [objc_allocWithZone(MEMORY[0x277D44580]) initWithStructuredLocation:v9 proximity:v15];

  *a5 = v19;
  *(a5 + 8) = 0;
}

void TTRLocationQuickPicksInteractor.quickPickItems(matchingAlarmTriggersIn:)(void *a1@<X0>, char *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  TTRReminderProtocol.mostRelevantLocationRelatedTrigger()(v3, v4, &v10);
  v5 = v11;
  if (v11 == 255)
  {
    v8 = 6;
    goto LABEL_13;
  }

  v6 = v10;
  if (v11)
  {
    v7 = [v10 event];
    sub_21D157864(v6, v5);
    if (!v7)
    {
      goto LABEL_11;
    }

    if (v7 == 2)
    {
      v8 = 4;
      goto LABEL_13;
    }

    if (v7 == 1)
    {
      v8 = 3;
    }

    else
    {
LABEL_11:
      v8 = 5;
    }

LABEL_13:
    *a2 = v8;
    return;
  }

  v9 = [v10 structuredLocation];
  TTRLocationQuickPicksInteractor.quickPickItems(matching:)(a2);

  sub_21D157864(v6, v5);
}

void TTRLocationQuickPicksInteractor.quickPickItems(matching:)(char *a1@<X8>)
{
  v2 = v1;
  v4 = v1[8];
  v5 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v4);
  v6 = (*(v5 + 16))(v4, v5);
  if (v6)
  {
    v7 = v6;
    v8 = sub_21DBFADDC();
    if (v8)
    {
      v9 = v8;
      [v8 center];
      v11 = v10;
      v13 = v12;

      v14 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v11 longitude:v13];
      v15 = v14;
      goto LABEL_6;
    }
  }

  v14 = 0;
LABEL_6:
  v16 = v2[13];
  v17 = v2[14];
  __swift_project_boxed_opaque_existential_1(v2 + 10, v16);
  v18 = (*(v17 + 16))(v16, v17);
  if (v18)
  {
    v19 = v18;
    v20 = sub_21DBFB3AC();
  }

  else
  {
    v20 = 0;
  }

  v21 = v2[13];
  v22 = v2[14];
  __swift_project_boxed_opaque_existential_1(v2 + 10, v21);
  v23 = (*(v22 + 24))(v21, v22);
  if (v23)
  {
    v24 = v23;
    v25 = sub_21DBFB3AC();
  }

  else
  {
    v25 = 0;
  }

  if (!v20)
  {
LABEL_16:
    if (v25)
    {
      v26 = v25;
      v29 = sub_21DBFB41C();

      if (v29)
      {
        v28 = 2;
        goto LABEL_23;
      }
    }

    if (v14)
    {
      v26 = v14;
      v30 = sub_21DBFB41C();

      if (v30)
      {
        v28 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      v26 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60618);
    swift_arrayDestroy();

    v28 = 5;
    goto LABEL_27;
  }

  v26 = v20;
  v27 = sub_21DBFB41C();

  if ((v27 & 1) == 0)
  {

    goto LABEL_16;
  }

  v28 = 1;
LABEL_23:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60618);
  swift_arrayDestroy();

LABEL_27:
  *a1 = v28;
}

uint64_t TTRLocationQuickPicksInteractor.deinit()
{
  sub_21D157444(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0(v0 + 40);
  __swift_destroy_boxed_opaque_existential_0(v0 + 80);

  return v0;
}

uint64_t TTRLocationQuickPicksInteractor.__deallocating_deinit()
{
  sub_21D157444(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0(v0 + 40);
  __swift_destroy_boxed_opaque_existential_0(v0 + 80);

  return swift_deallocClassInstance();
}

void *sub_21D6E5864(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0F0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v28 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E750);
  v18 = *(v17 - 8);
  v28 = v17;
  v29 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v28 - v19;
  v33[3] = a4;
  v33[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a1, a4);
  v32[3] = a5;
  v32[4] = a7;
  v22 = __swift_allocate_boxed_opaque_existential_0(v32);
  (*(*(a5 - 8) + 32))(v22, a2, a5);
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  a3[4] = MEMORY[0x277D84F90];
  a3[15] = 0;
  a3[16] = 0;
  sub_21D0D32E4(v33, (a3 + 5));
  sub_21D0D32E4(v32, (a3 + 10));
  sub_21D6E3B40(0);
  v31 = (*(a7 + 8))(a5, a7);
  v23 = [objc_opt_self() mainRunLoop];
  v30 = v23;
  v24 = sub_21DBFBA0C();
  (*(*(v24 - 8) + 56))(v16, 1, 1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E758);
  sub_21D0D8CF0(0, &qword_280D17650);
  sub_21D0D0F1C(&qword_280D0C4B8, &qword_27CE5E758);
  sub_21D5A51D8();
  sub_21DBF936C();
  sub_21D60C7A8(v16);

  swift_allocObject();
  swift_weakInit();
  sub_21D0D0F1C(&qword_280D0C518, &qword_27CE5E750);
  v25 = v28;
  v26 = sub_21DBF93CC();

  (*(v29 + 8))(v20, v25);
  __swift_destroy_boxed_opaque_existential_0(v33);
  a3[15] = v26;

  __swift_destroy_boxed_opaque_existential_0(v32);
  return a3;
}

void *sub_21D6E5C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a7;
  v12 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  (*(v16 + 16))(v19, a1, a4);
  (*(v12 + 16))(v14, a2, a5);
  return sub_21D6E5864(v19, v14, v20, a4, a5, a6, v23);
}

uint64_t TTRBoardColumnItemClusterAdjuster.presentationToDataSource.getter()
{
  v1 = *(v0 + 16);
  sub_21D0D0E78(v1);
  return v1;
}

uint64_t TTRBoardColumnItemClusterAdjuster.__allocating_init(presentationToDataSource:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC15RemindersUICore33TTRBoardColumnItemClusterAdjuster_detectedUpdate;
  v6 = type metadata accessor for TTRBoardColumnItemClusterAdjuster.DetectedUpdate(0);
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return v4;
}

uint64_t TTRBoardColumnItemClusterAdjuster.init(presentationToDataSource:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC15RemindersUICore33TTRBoardColumnItemClusterAdjuster_detectedUpdate;
  v6 = type metadata accessor for TTRBoardColumnItemClusterAdjuster.DetectedUpdate(0);
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

RemindersUICore::TTRBoardColumnItemClusterCollection __swiftcall TTRBoardColumnItemClusterAdjuster.adjust(_:)(RemindersUICore::TTRBoardColumnItemClusterCollection a1)
{
  v3 = v1;
  v4 = sub_21DBF5D5C();
  v44 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v38 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60640);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  v46 = *a1.itemClusters._rawValue;
  v47 = v46;
  swift_bridgeObjectRetain_n();
  sub_21D6E64E8(&v46, v17);

  sub_21D0D3954(v17, v14, &qword_27CE60640);
  v18 = type metadata accessor for TTRBoardColumnItemClusterAdjuster.DetectedUpdate(0);
  if ((*(*(v18 - 8) + 48))(v14, 1, v18) == 1)
  {
    goto LABEL_26;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v35 = v44;
    (*(v44 + 32))(v11, v14, v4);
    TTRBoardColumnItemClusterCollection.insert(_:)();
    (*(v35 + 8))(v11, v4);
LABEL_26:
    result.itemClusters._rawValue = sub_21D0CF7E0(v17, &qword_27CE60640);
LABEL_30:
    *v3 = v47;
    return result;
  }

  v42 = v3;
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60648) + 48);
  v20 = v45;
  v21 = v4;
  v22 = *(v44 + 32);
  v22(v45, v14, v21);
  v41 = v21;
  v22(v6, &v14[v19], v21);
  v23 = v47;
  v24 = *(v47 + 16);
  if (!v24)
  {
LABEL_28:
    TTRBoardColumnItemClusterCollection.delete(_:)();
    TTRBoardColumnItemClusterCollection.insert(_:)();
LABEL_29:
    sub_21D0CF7E0(v17, &qword_27CE60640);
    v36 = *(v44 + 8);
    v37 = v41;
    v36(v6, v41);
    result.itemClusters._rawValue = (v36)(v20, v37);
    v3 = v42;
    goto LABEL_30;
  }

  result.itemClusters._rawValue = sub_21DBF8E0C();
  v26 = 0;
  v27 = (v23 + 48);
  while (1)
  {
    if (v26 >= *(v23 + 16))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v29 = *(v27 - 2);
    v28 = *(v27 - 1);
    v30 = *v27;
    result.itemClusters._rawValue = sub_21DBF5D0C();
    if (result.itemClusters._rawValue == v29)
    {
      result.itemClusters._rawValue = sub_21DBF5CFC();
      if (result.itemClusters._rawValue >= v28)
      {
        if (__OFSUB__(result.itemClusters._rawValue, v28))
        {
          goto LABEL_32;
        }

        if (result.itemClusters._rawValue - v28 < v30)
        {
          result.itemClusters._rawValue = sub_21DBF5CFC();
          if (result.itemClusters._rawValue != v28)
          {
            break;
          }
        }
      }
    }

    ++v26;
    v27 += 3;
    if (v24 == v26)
    {
LABEL_27:

      v20 = v45;
      goto LABEL_28;
    }
  }

  v20 = v45;
  v39 = *(v23 + 16);
  if (!v39)
  {
    goto LABEL_28;
  }

  result.itemClusters._rawValue = sub_21DBF8E0C();
  v31 = 0;
  v32 = (v23 + 48);
  while (v31 < *(v23 + 16))
  {
    v33 = *(v32 - 2);
    v43 = *(v32 - 1);
    v40 = *v32;
    result.itemClusters._rawValue = sub_21DBF5D0C();
    v38 = v33;
    if (result.itemClusters._rawValue == v33)
    {
      result.itemClusters._rawValue = sub_21DBF5CFC();
      if (result.itemClusters._rawValue >= v43)
      {
        if (__OFSUB__(result.itemClusters._rawValue, v43))
        {
          goto LABEL_34;
        }

        v34 = v43;
        if (result.itemClusters._rawValue - v43 < v40)
        {
          result.itemClusters._rawValue = sub_21DBF5CFC();
          if (result.itemClusters._rawValue != v34)
          {

            v20 = v45;
            if (v29 == v38 && v28 == v43 && v30 == v40)
            {
              goto LABEL_29;
            }

            goto LABEL_28;
          }
        }
      }
    }

    ++v31;
    v32 += 3;
    if (v39 == v31)
    {
      goto LABEL_27;
    }
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

void (*sub_21D6E64E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>))(uint64_t *, void)
{
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60678);
  MEMORY[0x28223BE20](v90);
  v89 = &v84 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  MEMORY[0x28223BE20](v6 - 8);
  v102 = &v84 - v7;
  v103 = sub_21DBF5D5C();
  v8 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v10 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v84 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v84 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v84 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60680);
  MEMORY[0x28223BE20](v20 - 8);
  v101 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v84 - v23;
  v104 = *(v2 + 16);
  if (!v104 || (v25 = *a1, (v26 = *(v25 + 16)) == 0))
  {
    v59 = type metadata accessor for TTRBoardColumnItemClusterAdjuster.DetectedUpdate(0);
    v60 = *(*(v59 - 8) + 56);

    return v60(a2, 1, 1, v59);
  }

  v27 = *(v2 + 24);
  v28 = (v25 + 24 * v26);
  v29 = v28[2];
  v99 = v28[1];
  v100 = v27;
  v30 = v28[3] + v29;

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60688);
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v98 = v31;
  v95 = v33;
  v96 = v32 + 56;
  result = (v33)(v24, 1, 1);
  if (v30 < 0)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v84 = v25;
  v85 = v10;
  v86 = v8;
  v91 = v13;
  v105 = v16;
  v87 = a2;
  v36 = v102;
  v35 = v103;
  v94 = v30;
  if (!v30)
  {
LABEL_23:
    sub_21D0CF7E0(v24, &qword_27CE60680);
    sub_21D0D0E88(v104);
LABEL_26:
    v64 = type metadata accessor for TTRBoardColumnItemClusterAdjuster.DetectedUpdate(0);
    return (*(*(v64 - 8) + 56))(v87, 1, 1, v64);
  }

  v37 = 0;
  v97 = (v86 + 48);
  v107 = (v86 + 32);
  v92 = (v32 + 48);
  v93 = (v86 + 8);
  v88 = v19;
  while (1)
  {
    v40 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    MEMORY[0x223D3E490](v37, v99);
    v104(v19);
    if ((*v97)(v36, 1, v35) == 1)
    {
      sub_21D0CF7E0(v24, &qword_27CE60680);
      sub_21D0D0E88(v104);
      sub_21D0CF7E0(v36, &unk_27CE58E70);
      v61 = v87;
      (*v107)(v87, v19, v35);
      v62 = type metadata accessor for TTRBoardColumnItemClusterAdjuster.DetectedUpdate(0);
      swift_storeEnumTagMultiPayload();
      return (*(*(v62 - 8) + 56))(v61, 0, 1, v62);
    }

    v41 = *v107;
    v42 = v105;
    (*v107)(v105, v36, v35);
    v43 = sub_21DBF5D0C();
    if (v43 != sub_21DBF5D0C())
    {
      sub_21D0D0E88(v104);
      v63 = *v93;
      (*v93)(v42, v35);
      v63(v19, v35);
      sub_21D0CF7E0(v24, &qword_27CE60680);
      goto LABEL_26;
    }

    v44 = sub_21DBF5CFC();
    result = sub_21DBF5CFC();
    if (__OFSUB__(v44, result))
    {
      goto LABEL_39;
    }

    v106 = v44 - result;
    v45 = v101;
    sub_21D0D3954(v24, v101, &qword_27CE60680);
    v46 = v98;
    if ((*v92)(v45, 1, v98) != 1)
    {
      break;
    }

    (*v93)(v19, v35);
    sub_21D0CF7E0(v24, &qword_27CE60680);
    v38 = v45;
    v36 = v102;
LABEL_7:
    sub_21D0CF7E0(v38, &qword_27CE60680);
    v39 = *(v46 + 48);
    v41(v24, v105, v35);
    *&v24[v39] = v106;
    result = v95(v24, 0, 1, v46);
    ++v37;
    if (v40 == v94)
    {
      goto LABEL_23;
    }
  }

  v47 = v45;
  v48 = *(v45 + *(v46 + 48));
  v49 = v90;
  v50 = *(v90 + 48);
  v51 = v41;
  v52 = v89;
  v51(v89, v47, v103);
  *&v52[v50] = v48;
  v35 = v103;
  v53 = *&v52[*(v49 + 48)];
  v54 = v91;
  v55 = v52;
  v41 = v51;
  result = (v51)(v91, v55, v103);
  if (!v53)
  {
    v57 = *v93;
    (*v93)(v54, v35);
    v19 = v88;
    v57(v88, v35);
    v38 = v24;
LABEL_19:
    v36 = v102;
    goto LABEL_7;
  }

  if (!v106)
  {
    v58 = *v93;
    (*v93)(v91, v35);
    v19 = v88;
    v58(v88, v35);
    v38 = v24;
    goto LABEL_19;
  }

  v19 = v88;
  v36 = v102;
  if (v106 < 0 == v53 < 0)
  {
    v56 = *v93;
    (*v93)(v91, v35);
    v56(v19, v35);
    v38 = v24;
    goto LABEL_7;
  }

  v65 = v106;
  v66 = v87;
  v67 = v104;
  v68 = v105;
  if (v106 < 0)
  {
    v65 = -v106;
    if (__OFSUB__(0, v106))
    {
      goto LABEL_41;
    }
  }

  if (v53 < 0)
  {
    v69 = __OFSUB__(0, v53);
    v53 = -v53;
    if (v69)
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      return result;
    }
  }

  if (v53 < v65 || v65 == v53 && (v109[0] = v84, TTRBoardColumnItemClusterCollection.positionInCluster(forItemAt:)(&v108), v108))
  {
    sub_21D0D0E88(v67);
    v70 = v86;
    (*(v86 + 8))(v91, v35);
    sub_21D0CF7E0(v24, &qword_27CE60680);
    v71 = v35;
    v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60648) + 48);
    v41(v66, v19, v71);
    (*(v70 + 16))(v66 + v72, v68, v71);
    v73 = type metadata accessor for TTRBoardColumnItemClusterAdjuster.DetectedUpdate(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v73 - 8) + 56))(v66, 0, 1, v73);
    v74 = v98;
    v75 = *(v98 + 48);
    v41(v24, v68, v71);
    *&v24[v75] = v106;
    v95(v24, 0, 1, v74);
    v76 = v24;
  }

  else
  {
    v77 = v85;
    (*(v86 + 16))(v85, v19, v35);
    result = sub_21DBF5CEC();
    if (__OFSUB__(*v78, 1))
    {
      goto LABEL_43;
    }

    --*v78;
    result(v109, 0);
    sub_21D0D0E88(v67);
    (*v93)(v19, v35);
    sub_21D0CF7E0(v24, &qword_27CE60680);
    v79 = v35;
    v80 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60648) + 48);
    v41(v66, v77, v79);
    v41(v66 + v80, v91, v79);
    v81 = type metadata accessor for TTRBoardColumnItemClusterAdjuster.DetectedUpdate(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v81 - 8) + 56))(v66, 0, 1, v81);
    v82 = v98;
    v83 = *(v98 + 48);
    v41(v24, v68, v79);
    *&v24[v83] = v106;
    v95(v24, 0, 1, v82);
    v76 = v24;
  }

  return sub_21D0CF7E0(v76, &qword_27CE60680);
}

uint64_t TTRBoardColumnItemClusterAdjuster.deinit()
{
  sub_21D0D0E88(*(v0 + 16));
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRBoardColumnItemClusterAdjuster_detectedUpdate, &qword_27CE60640);
  return v0;
}

uint64_t TTRBoardColumnItemClusterAdjuster.__deallocating_deinit()
{
  sub_21D0D0E88(*(v0 + 16));
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore33TTRBoardColumnItemClusterAdjuster_detectedUpdate, &qword_27CE60640);

  return swift_deallocClassInstance();
}

void sub_21D6E71A0()
{
  sub_21D6E7268();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21D6E7268()
{
  if (!qword_27CE60660)
  {
    type metadata accessor for TTRBoardColumnItemClusterAdjuster.DetectedUpdate(255);
    v0 = sub_21DBFBA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE60660);
    }
  }
}

uint64_t *sub_21D6E72C0(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = sub_21DBF5D5C();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    if (EnumCaseMultiPayload == 1)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60648);
      v8((a1 + *(v9 + 48)), (a2 + *(v9 + 48)), v7);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_21D6E73F8(uint64_t a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = sub_21DBF5D5C();
  v6 = *(*(v3 - 8) + 8);
  result = v6(a1, v3);
  if (EnumCaseMultiPayload == 1)
  {
    v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60648) + 48);

    return v6(v5, v3);
  }

  return result;
}

uint64_t sub_21D6E74C8(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = sub_21DBF5D5C();
  v6 = *(*(v5 - 8) + 16);
  v6(a1, a2, v5);
  if (EnumCaseMultiPayload == 1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60648);
    v6(a1 + *(v7 + 48), a2 + *(v7 + 48), v5);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_21D6E75AC(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_21D6E76A0(a1);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v5 = sub_21DBF5D5C();
    v6 = *(*(v5 - 8) + 16);
    v6(a1, a2, v5);
    if (EnumCaseMultiPayload == 1)
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60648);
      v6(a1 + *(v7 + 48), a2 + *(v7 + 48), v5);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_21D6E76A0(uint64_t a1)
{
  v2 = type metadata accessor for TTRBoardColumnItemClusterAdjuster.DetectedUpdate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D6E76FC(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = sub_21DBF5D5C();
  v6 = *(*(v5 - 8) + 32);
  v6(a1, a2, v5);
  if (EnumCaseMultiPayload == 1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60648);
    v6(a1 + *(v7 + 48), a2 + *(v7 + 48), v5);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_21D6E77E0(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_21D6E76A0(a1);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v5 = sub_21DBF5D5C();
    v6 = *(*(v5 - 8) + 32);
    v6(a1, a2, v5);
    if (EnumCaseMultiPayload == 1)
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60648);
      v6(a1 + *(v7 + 48), a2 + *(v7 + 48), v5);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_21D6E78D4()
{
  result = sub_21DBF5D5C();
  if (v1 <= 0x3F)
  {
    v2[4] = *(result - 8) + 64;
    swift_getTupleTypeLayout2();
    v2[5] = v2;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_21D6E7970()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE60690);
  v1 = __swift_project_value_buffer(v0, qword_27CE60690);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRTemplateSharingPresenterCapability.ActionPriorToCommit.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRTemplateSharingPresenterCapability.__allocating_init(interactor:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t TTRTemplateSharingPresenterCapability.init(interactor:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t TTRTemplateSharingPresenterCapability.prepareToStartOrManageSharing()(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  sub_21DBFA84C();
  v2[9] = sub_21DBFA83C();
  v4 = sub_21DBFA7CC();
  v2[10] = v4;
  v2[11] = v3;

  return MEMORY[0x2822009F8](sub_21D6E7BA4, v4, v3);
}

uint64_t sub_21D6E7BA4()
{
  v1 = v0[8];
  v0[12] = *(v1 + 16);
  v2 = *(v1 + 24);
  v0[13] = v2;
  ObjectType = swift_getObjectType();
  v0[14] = ObjectType;
  v6 = (*(v2 + 16) + **(v2 + 16));
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_21D6E7CE0;

  return v6(v0 + 5, ObjectType, v2);
}

uint64_t sub_21D6E7CE0()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_21D6E8210;
  }

  else
  {
    v5 = sub_21D6E7E1C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21D6E7E1C()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 40);
  *(v0 + 136) = v3;
  v4 = (*(v2 + 8))(v1);
  *(v0 + 144) = v4;
  v5 = [v4 publicLink];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 configuration];

    v8 = 256;
    if (v7)
    {
      v9 = [v7 shouldIncludeHashtags];
      v10 = [v7 shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval];
      v11 = [v7 shouldIncludeAlarmTriggersBasedOnLocationOrVehicle];

      if (v10)
      {
        v8 = 256;
      }

      else
      {
        v8 = 0;
      }

      if (v11)
      {
        v12 = 0x10000;
      }

      else
      {
        v12 = 0;
      }

      v13 = 1;
    }

    else
    {
      v13 = 0;
      v9 = 0;
      v12 = 0;
    }
  }

  else
  {
    v13 = 0;
    v9 = 0;
    v12 = 0;
    v8 = 256;
  }

  *(v0 + 172) = v8;
  *(v0 + 176) = v12;
  *(v0 + 168) = v9;
  *(v0 + 152) = v13;
  if ((v3 & 0x10) != 0)
  {

    v16 = *(v0 + 172) | *(v0 + 176) | *(v0 + 168);
    v17 = *(v0 + 136);
    v18 = *(v0 + 56);
    *v18 = *(v0 + 152);
    *(v18 + 8) = v17;
    *(v18 + 16) = v16;
    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v14 = swift_task_alloc();
    *(v0 + 160) = v14;
    *v14 = v0;
    v14[1] = sub_21D6E8028;

    return sub_21D6E99D4();
  }
}

uint64_t sub_21D6E8028(char a1)
{
  v2 = *v1;
  *(*v1 + 180) = a1;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return MEMORY[0x2822009F8](sub_21D6E8150, v4, v3);
}

uint64_t sub_21D6E8150()
{
  v1 = *(v0 + 180);

  v2 = *(v0 + 136);
  if (v2 == 8)
  {
    v3 = 50331648;
  }

  else
  {
    v3 = 0x4000000;
  }

  if ((v2 & 0xFFFFFFFFFFFFFFE7) != 0)
  {
    v3 = 0x2000000;
  }

  if (v1)
  {
    v4 = 0x1000000;
  }

  else
  {
    v4 = v3;
  }

  v5 = *(v0 + 176) | v4 | *(v0 + 172) | *(v0 + 168);
  v6 = *(v0 + 56);
  *v6 = *(v0 + 152);
  *(v6 + 8) = v2;
  *(v6 + 16) = v5;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_21D6E8210()
{
  v17 = v0;

  if (qword_27CE56C18 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE60690);
  v3 = v1;
  v4 = sub_21DBF84AC();
  v5 = sub_21DBFAEBC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[16];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_21DBFC75C();
    v12 = sub_21D0CDFB4(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_21D0C9000, v4, v5, "TTRTemplateSharing: failed to fetch template content attributes {error: %s}", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x223D46520](v9, -1, -1);
    MEMORY[0x223D46520](v8, -1, -1);
  }

  else
  {
  }

  v13 = v0[7];
  *v13 = xmmword_21DC241F0;
  *(v13 + 16) = 0;
  v14 = v0[1];

  return v14();
}

void TTRTemplateSharingPresenterCapability.alertNeededForCommittingLink(viewModel:)(_BYTE *a1@<X0>, void (**a2)()@<X8>)
{
  v2 = a1[18];
  if ((a1[17] & 1) == 0 && (a1[16] & 1) == 0 && !a1[18])
  {
    goto LABEL_4;
  }

  if (qword_280D1AA10 != -1)
  {
    v7 = a2;
    swift_once();
    a2 = v7;
  }

  v3 = *(qword_280D1AA18 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v3 && (v4 = a2, v5 = sub_21DBFA12C(), v6 = [v3 BOOLForKey_], v5, a2 = v4, (v6 & 1) != 0))
  {
    if (!v2)
    {
LABEL_4:
      *a2 = xmmword_21DC11550;
      return;
    }

    *v4 = 0;
    v4[1] = 0;
  }

  else
  {
    *a2 = sub_21D6E84F0;
    a2[1] = 0;
  }
}

void sub_21D6E84F0()
{
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v0 = *(qword_280D1AA18 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v0)
  {
    v1 = sub_21DBFA12C();
    [v0 setBool:1 forKey:v1];
  }
}

LPLinkMetadata __swiftcall TTRTemplateSharingPresenterCapability.templateLinkMetadataForShareSheet()()
{
  v1 = type metadata accessor for TTRTemplatesListViewModel.Template(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 8))(ObjectType, v4);
  v7 = [objc_allocWithZone(MEMORY[0x277CD46C8]) init];
  v8 = [v6 name];
  if (!v8)
  {
    sub_21DBFA16C();
    v8 = sub_21DBFA12C();
  }

  [v7 setTitle_];

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v9 = sub_21DBFA12C();

  [v7 setSummary_];

  v10 = v6;
  TTRTemplatesListViewModel.Template.init(template:)(v10, v3);
  v11 = *(v3 + 72);
  v22 = *(v3 + 56);
  v23 = v11;
  v24[0] = *(v3 + 88);
  *(v24 + 10) = *(v3 + 98);
  v12 = *(v3 + 40);
  v20 = *(v3 + 24);
  v21 = v12;
  sub_21D24BF60(&v20, v18);
  sub_21D6E9CF4(v3);
  v18[2] = v22;
  v18[3] = v23;
  v19[0] = v24[0];
  *(v19 + 10) = *(v24 + 10);
  v18[0] = v20;
  v18[1] = v21;
  v13 = _s15RemindersUICore16TTRListBadgeViewC14shareSheetIcon4withSo7UIImageCSgAA0c6DetaildE5ModelV_tFZ_0(v18);
  if (v13)
  {
    v14 = v13;
    v15 = [objc_allocWithZone(MEMORY[0x277CD46B8]) init];
    [v15 setType_];
    v16 = [objc_allocWithZone(MEMORY[0x277CD46B0]) initWithPlatformImage:v14 properties:v15];
    [v7 setImage_];

    sub_21D24C27C(&v20);
  }

  else
  {

    sub_21D24C27C(&v20);
  }

  return v7;
}

void sub_21D6E88AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE606E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  sub_21DBF942C();
  swift_allocObject();
  sub_21DBF941C();
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_21DBF93EC();

  sub_21DBFA8BC();
  sub_21D0CE468();
  v8 = sub_21DBFB12C();
  sub_21DBF93FC();
}

uint64_t sub_21D6E8A60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE606E8);
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE606F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  v9 = sub_21DBF945C();
  (*(*(v9 - 8) + 16))(v4, a1, v9);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE606E0);
  sub_21DBFA8DC();
  sub_21D0CF7E0(v4, &qword_27CE606E8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t TTRTemplateSharingPresenterCapability.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_21D6E8C74()
{
  v1 = sub_21DBF943C();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_21DBF945C();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE606B0);
  v0[10] = v3;
  v0[11] = *(v3 - 8);
  v0[12] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE606B8);
  v0[13] = v4;
  v0[14] = *(v4 - 8);
  v0[15] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE606C0);
  v0[16] = v5;
  v0[17] = *(v5 - 8);
  v0[18] = swift_task_alloc();
  v0[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE606C8);
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v0[23] = sub_21DBFA84C();
  v0[24] = sub_21DBFA83C();
  v7 = sub_21DBFA7CC();
  v0[25] = v7;
  v0[26] = v6;

  return MEMORY[0x2822009F8](sub_21D6E8F70, v7, v6);
}

uint64_t sub_21D6E8F70()
{
  if (qword_27CE56C18 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  v0[27] = __swift_project_value_buffer(v1, qword_27CE60690);
  v2 = sub_21DBF84AC();
  v3 = sub_21DBFAE9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21D0C9000, v2, v3, "TTRTemplateSharing: checking network reachability", v4, 2u);
    MEMORY[0x223D46520](v4, -1, -1);
  }

  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];

  (*(v6 + 104))(v5, *MEMORY[0x277D85778], v7);
  sub_21DBFA94C();

  return MEMORY[0x2822009F8](sub_21D6E90F8, 0, 0);
}

uint64_t sub_21D6E90F8()
{
  (*(v0[17] + 16))(v0[18], v0[19], v0[16]);
  sub_21D0D0F1C(&qword_27CE606D0, &qword_27CE606C0);
  sub_21DBFA9BC();
  v1 = sub_21D0D0F1C(&qword_27CE606D8, &qword_27CE606B0);
  v2 = swift_task_alloc();
  v0[28] = v2;
  *v2 = v0;
  v2[1] = sub_21D6E923C;
  v3 = v0[21];
  v4 = v0[10];

  return MEMORY[0x282200308](v3, v4, v1);
}

uint64_t sub_21D6E923C()
{
  v2 = *v1;

  v3 = v2[12];
  v4 = v2[11];
  v5 = v2[10];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = nullsub_1;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_21D6E93D4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_21D6E93D4()
{
  v1 = v0[21];
  v2 = v0[5];
  v3 = v0[6];
  v4 = *(v3 + 48);
  v0[29] = v4;
  v0[30] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    v5 = v0[22];
    (*(v0[17] + 8))(v0[19], v0[16]);
    (*(v3 + 56))(v5, 1, 1, v2);
    v6 = v0[25];
    v7 = v0[26];
    v8 = sub_21D6E961C;
  }

  else
  {
    (*(v3 + 32))(v0[22], v1, v2);
    v0[31] = sub_21DBFA83C();
    v9 = sub_21DBFA7CC();
    v11 = v10;
    v8 = sub_21D6E9510;
    v6 = v9;
    v7 = v11;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_21D6E9510()
{

  return MEMORY[0x2822009F8](sub_21D6E9578, 0, 0);
}

uint64_t sub_21D6E9578()
{
  v1 = v0[22];
  v2 = v0[5];
  v3 = v0[6];
  (*(v0[17] + 8))(v0[19], v0[16]);
  (*(v3 + 56))(v1, 0, 1, v2);
  v4 = v0[25];
  v5 = v0[26];

  return MEMORY[0x2822009F8](sub_21D6E961C, v4, v5);
}

uint64_t sub_21D6E961C()
{
  v39 = v0;
  v1 = v0[29];
  v2 = v0[22];
  v3 = v0[20];
  v4 = v0[5];

  sub_21D6EA07C(v2, v3);
  if (v1(v3, 1, v4) == 1)
  {
    v5 = v0[20];
    sub_21D0CF7E0(v0[22], &qword_27CE606C8);
    sub_21D0CF7E0(v5, &qword_27CE606C8);
LABEL_3:
    v36 = 0;
    goto LABEL_9;
  }

  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[5];
  v9 = v0[6];
  (*(v9 + 32))(v6, v0[20], v8);
  v10 = *(v9 + 16);
  v10(v7, v6, v8);
  v11 = sub_21DBF84AC();
  v12 = sub_21DBFAE9C();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[8];
  if (v13)
  {
    v37 = v12;
    v15 = v0[6];
    v16 = v0[7];
    v17 = v0[5];
    v18 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v38 = v35;
    *v18 = 136315138;
    v10(v16, v14, v17);
    v19 = sub_21DBFA1AC();
    v21 = v20;
    v22 = *(v15 + 8);
    v22(v14, v17);
    v23 = sub_21D0CDFB4(v19, v21, &v38);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_21D0C9000, v11, v37, "TTRTemplateSharing: got reachability result {path: %s}", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x223D46520](v35, -1, -1);
    MEMORY[0x223D46520](v18, -1, -1);
  }

  else
  {
    v24 = v0[5];
    v25 = v0[6];

    v22 = *(v25 + 8);
    v22(v14, v24);
  }

  v26 = v0[22];
  v27 = v0[9];
  v29 = v0[4];
  v28 = v0[5];
  v30 = v0[2];
  v31 = v0[3];
  sub_21DBF944C();
  v22(v27, v28);
  sub_21D0CF7E0(v26, &qword_27CE606C8);
  v32 = (*(v31 + 88))(v29, v30);
  if (v32 != *MEMORY[0x277CD8F78])
  {
    if (v32 == *MEMORY[0x277CD8F68])
    {
      goto LABEL_3;
    }

    if (v32 != *MEMORY[0x277CD8F70])
    {
      (*(v0[3] + 8))(v0[4], v0[2]);
    }
  }

  v36 = 1;
LABEL_9:

  v33 = v0[1];

  return v33(v36);
}

uint64_t sub_21D6E99D4()
{
  v0[2] = sub_21DBFA84C();
  v0[3] = sub_21DBFA83C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21D6E9A78;

  return sub_21D6E8C74();
}

uint64_t sub_21D6E9A78(char a1)
{
  *(*v1 + 40) = a1;

  v3 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D6E9BBC, v3, v2);
}

uint64_t sub_21D6E9BBC()
{

  if (qword_27CE56C18 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  __swift_project_value_buffer(v1, qword_27CE60690);
  v2 = sub_21DBF84AC();
  v3 = sub_21DBFAEDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 40);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_21D0C9000, v2, v3, "TTRTemplateSharing: network is reachable: %{BOOL}d", v5, 8u);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  v6 = *(v0 + 40);

  v7 = *(v0 + 8);

  return v7((v6 & 1) == 0);
}

uint64_t sub_21D6E9CF4(uint64_t a1)
{
  v2 = type metadata accessor for TTRTemplatesListViewModel.Template(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21D6E9D54()
{
  result = qword_27CE606A8;
  if (!qword_27CE606A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE606A8);
  }

  return result;
}

void *destroy for TTRTemplateSharingPresenterCapability.IncludePropertyAlert(void *result)
{
  if (*result >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

__n128 sub_21D6E9E24(__n128 *a1, __n128 *a2)
{
  if (a2->n128_u64[0] < 0xFFFFFFFF)
  {
    result = *a2;
    *a1 = *a2;
  }

  else
  {
    v2 = a2->n128_u64[1];
    a1->n128_u64[0] = a2->n128_u64[0];
    a1->n128_u64[1] = v2;
  }

  return result;
}

__n128 assignWithCopy for TTRTemplateSharingPresenterCapability.IncludePropertyAlert(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a1 < 0xFFFFFFFFuLL)
  {
    if (v2 < 0xFFFFFFFF)
    {
      result = *a2;
      *a1 = *a2;
    }

    else
    {
      v5 = a2[1];
      *a1 = v2;
      *(a1 + 8) = v5;
    }
  }

  else if (v2 < 0xFFFFFFFF)
  {

    result = *a2;
    *a1 = *a2;
  }

  else
  {
    v3 = a2[1];
    *a1 = v2;
    *(a1 + 8) = v3;
  }

  return result;
}

_OWORD *assignWithTake for TTRTemplateSharingPresenterCapability.IncludePropertyAlert(_OWORD *result, uint64_t a2)
{
  if (*result < 0xFFFFFFFFuLL)
  {
    *result = *a2;
  }

  else
  {
    if (*a2 < 0xFFFFFFFFuLL)
    {
      v3 = result;

      *v3 = *a2;
    }

    else
    {
      v2 = *(a2 + 8);
      *result = *a2;
      *(result + 1) = v2;
      v3 = result;
    }

    return v3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRTemplateSharingPresenterCapability.IncludePropertyAlert(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for TTRTemplateSharingPresenterCapability.IncludePropertyAlert(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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
      *result = a2;
    }
  }

  return result;
}