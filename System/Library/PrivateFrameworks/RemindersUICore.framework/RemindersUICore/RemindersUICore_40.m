void sub_21D498AD4()
{
  [*(v0 + 24) removeFromSuperview];
  swift_beginAccess();
  v1 = *(v0 + 32);
  *(v0 + 32) = 0;

  swift_beginAccess();
  v2 = *(v0 + 40);
  *(v0 + 40) = 0;

  swift_beginAccess();
  v3 = *(v0 + 48);
  *(v0 + 48) = 0;

  swift_beginAccess();
  v4 = *(v0 + 56);
  *(v0 + 56) = 0;
}

void sub_21D498B80(void *a1)
{
  v1 = [a1 superview];
  [v1 layoutIfNeeded];
}

uint64_t sub_21D498BD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_21D498C28(char a1, void *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_bottomBarToContainerTopConstraint;
  v7 = *&v2[OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_bottomBarToContainerTopConstraint];
  if (v7)
  {
    v8 = v7;
    MEMORY[0x223D42D80]();
    if (*((a2[1] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a2[1] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
  }

  if (a1)
  {
    v9 = *&v2[OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_tabBar];
    if (!v9)
    {
      __break(1u);
      return;
    }

    v10 = [v9 topAnchor];
    v11 = [v3 topAnchor];
    v12 = [v10 constraintEqualToAnchor_];

    v13 = *&v3[v6];
    *&v3[v6] = v12;
    v14 = v12;

    v16 = v14;
    MEMORY[0x223D42D80]();
    if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
    v15 = v16;
  }

  else
  {
    v15 = *&v2[v6];
    *&v2[v6] = 0;
  }
}

id sub_21D498E40(void *a1, void *a2)
{
  v3 = [a1 superview];
  [v3 layoutIfNeeded];

  v5[0] = 0x3FF0000000000000;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = 0x3FF0000000000000;
  v5[4] = 0;
  v5[5] = 0;
  return [a2 setTransform_];
}

uint64_t sub_21D498F54()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocClassInstance();
}

id sub_21D498FE0(id result)
{
  if (!result)
  {
    if (*(v1 + 16))
    {
      return [*(v1 + 24) setHidden_];
    }
  }

  return result;
}

void sub_21D499024(uint64_t a1)
{
  if (!a1)
  {
    sub_21D498AD4();
  }
}

void sub_21D499074()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
  [v1 addInteraction_];

  type metadata accessor for TTRIQuickBarQuickPickButton();
  v3 = [swift_getObjCClassFromMetadata() buttonWithType_];
  v4 = OBJC_IVAR____TtC15RemindersUICore29TTRIQuickBarQuickPickItemView_button;
  v5 = *&v1[OBJC_IVAR____TtC15RemindersUICore29TTRIQuickBarQuickPickItemView_button];
  *&v1[OBJC_IVAR____TtC15RemindersUICore29TTRIQuickBarQuickPickItemView_button] = v3;
  v6 = v3;

  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = *&v1[v4];
  if (!v7)
  {
    __break(1u);
    goto LABEL_25;
  }

  [v7 setHitTestInsets_];
  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v9 = OBJC_IVAR____TtC15RemindersUICore29TTRIQuickBarQuickPickItemView_label;
  v10 = *&v1[OBJC_IVAR____TtC15RemindersUICore29TTRIQuickBarQuickPickItemView_label];
  *&v1[OBJC_IVAR____TtC15RemindersUICore29TTRIQuickBarQuickPickItemView_label] = v8;
  v11 = v8;

  if (!v11)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v11 setTranslatesAutoresizingMaskIntoConstraints_];

  v12 = *&v1[v9];
  if (!v12)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v13 = *MEMORY[0x277D76940];
  v14 = *MEMORY[0x277D76840];
  v15 = objc_opt_self();
  v16 = v12;
  v17 = [v15 traitCollectionWithPreferredContentSizeCategory_];
  v18 = [objc_opt_self() preferredFontDescriptorWithTextStyle:v13 compatibleWithTraitCollection:v17];
  if (!v18)
  {
    v20 = 0;
LABEL_9:
    v21 = [objc_opt_self() preferredFontForTextStyle_];
    goto LABEL_10;
  }

  v19 = v18;
  v20 = [v18 fontDescriptorWithDesign_];

  if (!v20)
  {
    goto LABEL_9;
  }

  v21 = [objc_opt_self() fontWithDescriptor:v20 size:0.0];
  if (!v21)
  {
    goto LABEL_9;
  }

LABEL_10:

  [v16 setFont_];
  v22 = *&v1[v9];
  if (!v22)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v22 setTextAlignment_];
  v23 = *&v1[v9];
  if (!v23)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 labelColor];
  [v25 setTextColor_];

  v27 = *&v1[v9];
  if (!v27)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v27 setNumberOfLines_];
  v28 = *&v1[v9];
  if (!v28)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v28 setAllowsDefaultTighteningForTruncation_];
  v29 = *&v1[v9];
  if (!v29)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v29 setLineBreakMode_];
  if (!*&v1[v4])
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v1 addSubview_];
  if (!*&v1[v9])
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  [v1 addSubview_];
  v30 = *&v1[v4];
  if (!v30)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v31 = v30;
  UIView.constraintsEqualTo(_:edges:)(v31, 11);

  v32 = *&v1[v9];
  if (!v32)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v33 = v32;
  v34 = UIView.constraintsEqualTo(_:edges:)(v33, 4);

  sub_21D562934(v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC0BFD0;
  v36 = *&v1[v9];
  if (!v36)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v37 = [v36 leadingAnchor];
  v38 = [v1 leadingAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:-4.0];

  *(inited + 32) = v39;
  v40 = *&v1[v9];
  if (!v40)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v41 = [v40 trailingAnchor];
  v42 = [v1 trailingAnchor];
  v43 = [v41 constraintEqualToAnchor:v42 constant:4.0];

  *(inited + 40) = v43;
  v44 = *&v1[v9];
  if (!v44)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v45 = [v44 topAnchor];
  v46 = *&v1[v4];
  if (v46)
  {
    v47 = [v46 bottomAnchor];
    v48 = [v45 constraintEqualToAnchor:v47 constant:5.0];

    *(inited + 48) = v48;
    sub_21D562934(inited);
    v49 = objc_opt_self();
    sub_21D3677A0();
    v50 = sub_21DBFA5DC();

    [v49 activateConstraints_];

    return;
  }

LABEL_39:
  __break(1u);
}

id sub_21D4996E4(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC15RemindersUICore29TTRIQuickBarQuickPickItemView_itemID];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore29TTRIQuickBarQuickPickItemView_button] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore29TTRIQuickBarQuickPickItemView_label] = 0;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_21D499074();
  }

  return v6;
}

unint64_t sub_21D4997FC()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v7, sel_accessibilityTraits);
  v2 = *MEMORY[0x277D76548];
  if ((*MEMORY[0x277D76548] & ~result) == 0)
  {
    v2 = 0;
  }

  v3 = *&v0[OBJC_IVAR____TtC15RemindersUICore29TTRIQuickBarQuickPickItemView_button];
  if (v3)
  {
    v4 = v2 | result;
    v6.receiver = v3;
    v6.super_class = type metadata accessor for TTRIQuickBarQuickPickButton();
    if (objc_msgSendSuper2(&v6, sel_isSelected))
    {
      v5 = *MEMORY[0x277D76598];
      if ((*MEMORY[0x277D76598] & ~v4) == 0)
      {
        v5 = 0;
      }

      v4 |= v5;
    }

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_21D4998B4(char *result)
{
  v1 = *&result[OBJC_IVAR____TtC15RemindersUICore29TTRIQuickBarQuickPickItemView_label];
  if (v1)
  {
    v2 = result;
    v3 = [v1 text];
    if (v3)
    {
      v4 = v3;
      sub_21DBFA16C();

      v5 = sub_21DBFA12C();
    }

    else
    {

      v5 = 0;
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D499A88()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5CC08);
  v1 = __swift_project_value_buffer(v0, qword_27CE5CC08);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D499B50(uint64_t a1, uint64_t a2)
{
  v5 = v2[7];
  v6 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v5);
  v7 = (*(v6 + 16))(v5, v6);
  if (!v7)
  {
    v17 = 0;
    return v17 & 1;
  }

  v8 = v7;
  if (!a1)
  {
    goto LABEL_14;
  }

  ObjectType = swift_getObjectType();
  v10 = (*(a2 + 40))(ObjectType, a2);
  v11 = sub_21D7A5E9C();
  v12 = v11;
  if (!(v11 >> 62))
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_13:

    goto LABEL_14;
  }

  result = sub_21DBFBD7C();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_5:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x223D44740](0, v12);
    goto LABEL_8;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v12 + 32);
LABEL_8:
    v15 = v14;

    if ([v15 proximity] == 1)
    {
      v16 = [v15 structuredLocation];
      v17 = sub_21DBFB40C();

LABEL_15:
      return v17 & 1;
    }

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_21D499CE0(uint64_t a1, uint64_t a2)
{
  v5 = v2[7];
  v6 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v5);
  v7 = (*(v6 + 24))(v5, v6);
  if (!v7)
  {
    v17 = 0;
    return v17 & 1;
  }

  v8 = v7;
  if (!a1)
  {
    goto LABEL_14;
  }

  ObjectType = swift_getObjectType();
  v10 = (*(a2 + 40))(ObjectType, a2);
  v11 = sub_21D7A5E9C();
  v12 = v11;
  if (!(v11 >> 62))
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_13:

    goto LABEL_14;
  }

  result = sub_21DBFBD7C();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_5:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x223D44740](0, v12);
    goto LABEL_8;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v12 + 32);
LABEL_8:
    v15 = v14;

    if ([v15 proximity] == 1)
    {
      v16 = [v15 structuredLocation];
      v17 = sub_21DBFB40C();

LABEL_15:
      return v17 & 1;
    }

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_21D499E70(uint64_t a1, uint64_t a2)
{
  v5 = v2[7];
  v6 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v5);
  v7 = (*(v6 + 32))(v5, v6);
  result = 0;
  if ((v7 & 1) == 0 || !a1)
  {
    return result;
  }

  ObjectType = swift_getObjectType();
  v10 = (*(a2 + 40))(ObjectType, a2);
  v11 = sub_21D7A5EA8();
  v12 = v11;
  if (v11 >> 62)
  {
    result = sub_21DBFBD7C();
    if (result)
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x223D44740](0, v12);
    goto LABEL_8;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v12 + 32);
LABEL_8:
    v14 = v13;

    v15 = [v14 event];

    return v15 == 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_21D499FB0(uint64_t a1, uint64_t a2)
{
  v5 = v2[7];
  v6 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v5);
  result = (*(v6 + 32))(v5, v6);
  if ((result & 1) != 0 && a1)
  {
    v8 = v2[7];
    v9 = v2[8];
    __swift_project_boxed_opaque_existential_1(v2 + 4, v8);
    v10 = *(v9 + 32);
    swift_unknownObjectRetain_n();
    if (v10(v8, v9))
    {
      ObjectType = swift_getObjectType();
      v12 = (*(a2 + 40))(ObjectType, a2);
      v13 = sub_21D7A5EA8();
      v14 = v13;
      if (v13 >> 62)
      {
        result = sub_21DBFBD7C();
        if (result)
        {
LABEL_6:
          if ((v14 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x223D44740](0, v14);
          }

          else
          {
            if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v15 = *(v14 + 32);
          }

          v16 = v15;

          v17 = [v16 event];

          swift_unknownObjectRelease();
          if (v17 == 1)
          {
            v18 = 0;
LABEL_15:
            v19 = swift_getObjectType();
            (*(a2 + 72))(v22, v19, a2);
            v20 = v23;
            v21 = v24;
            __swift_project_boxed_opaque_existential_1(v22, v23);
            (*(v21 + 144))(v18, v20, v21);
            swift_unknownObjectRelease();

            return __swift_destroy_boxed_opaque_existential_0(v22);
          }

LABEL_14:
          v18 = [objc_allocWithZone(MEMORY[0x277D44590]) initWithEvent_];
          goto LABEL_15;
        }
      }

      else
      {
        result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
          goto LABEL_6;
        }
      }
    }

    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_21D49A1DC()
{
  sub_21D157444(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_21D49A248()
{
  v1 = v0;
  if (qword_27CE56948 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE5CC08);

  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAEAC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v27 = v6;
    *v5 = 136315650;
    v7 = v0[7];
    v8 = v0[8];
    __swift_project_boxed_opaque_existential_1(v0 + 4, v7);
    v9 = (*(v8 + 24))(v7, v8);
    if (v9)
    {

      v10 = 0xE400000000000000;
      v11 = 1702195828;
    }

    else
    {
      v10 = 0xE500000000000000;
      v11 = 0x65736C6166;
    }

    v12 = sub_21D0CDFB4(v11, v10, &v27);

    *(v5 + 4) = v12;
    *(v5 + 12) = 2080;
    v13 = v1[7];
    v14 = v1[8];
    __swift_project_boxed_opaque_existential_1(v1 + 4, v13);
    v15 = (*(v14 + 24))(v13, v14);
    if (v15)
    {

      v16 = 0xE400000000000000;
      v17 = 1702195828;
    }

    else
    {
      v17 = 0x65736C6166;
      v16 = 0xE500000000000000;
    }

    v18 = sub_21D0CDFB4(v17, v16, &v27);

    *(v5 + 14) = v18;
    *(v5 + 22) = 2080;
    v19 = v1[7];
    v20 = v1[8];
    __swift_project_boxed_opaque_existential_1(v1 + 4, v19);
    v21 = (*(v20 + 32))(v19, v20);
    v22 = (v21 & 1) == 0;
    if (v21)
    {
      v23 = 1702195828;
    }

    else
    {
      v23 = 0x65736C6166;
    }

    if (v22)
    {
      v24 = 0xE500000000000000;
    }

    else
    {
      v24 = 0xE400000000000000;
    }

    v25 = sub_21D0CDFB4(v23, v24, &v27);

    *(v5 + 24) = v25;
    _os_log_impl(&dword_21D0C9000, v3, v4, "TTRIQuickBarInputAccessoryInteractor: location options did Change: { arrivingHome: %s, arrivingWork: %s, gettingInCar: %s}", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_21D49BA08(result);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D49A544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21DBF509C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v10 = (*(a3 + 40))(ObjectType, a3);
    v11 = [v10 dueDateComponents];
    if (v11)
    {
      v12 = v11;
      sub_21DBF4EFC();

      v13 = sub_21DBF4EDC();
      (*(v6 + 8))(v8, v5);
    }

    else
    {
      v13 = 0;
    }

    v14 = [objc_allocWithZone(MEMORY[0x277D44600]) initWithDueDateComponents:v13 alarms:0];

    v15 = objc_allocWithZone(MEMORY[0x277D44600]);
    v16 = sub_21DBF4EDC();
    v17 = [v15 initWithDueDateComponents:v16 alarms:0];

    if (v14)
    {
      if (v17)
      {
        sub_21D0D8CF0(0, &qword_27CE5CC20);
        v14 = v14;
        LOBYTE(a2) = sub_21DBFB63C();

        v10 = v14;
      }

      else
      {
        LOBYTE(a2) = 0;
      }

      v17 = v10;
    }

    else
    {

      if (!v17)
      {
        LOBYTE(a2) = 1;
        return a2 & 1;
      }

      LOBYTE(a2) = 0;
    }
  }

  return a2 & 1;
}

uint64_t sub_21D49A744(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  (*(a2 + 32))(&v17, ObjectType, a2);
  sub_21D0D0FD0(&v17, v20);
  v4 = swift_getObjectType();
  TTRRemindersListEditingSession.effectiveParentList.getter(v4, a2, &v14);
  if (v15)
  {
    sub_21D0D0FD0(&v14, &v17);
    v5 = v21;
    v6 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (*(v6 + 208))(&v14, v5, v6);
    v7 = v15;
    sub_21D0CF7E0(&v14, &qword_27CE5CC28);
    if (v7)
    {
      v8 = v18;
      v9 = v19;
      __swift_project_boxed_opaque_existential_1(&v17, v18);
      (*(v9 + 96))(&v14, v8, v9);
      v7 = v15;
      if (v15)
      {
        v10 = v16;
        __swift_project_boxed_opaque_existential_1(&v14, v15);
        v11 = (*(v10 + 8))(v7, v10);
        if (v11 >> 62)
        {
          v12 = sub_21DBFBD7C();
        }

        else
        {
          v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v7 = v12 != 0;
        __swift_destroy_boxed_opaque_existential_0(&v14);
      }

      else
      {
        sub_21D0CF7E0(&v14, &qword_27CE62630);
      }
    }

    __swift_destroy_boxed_opaque_existential_0(&v17);
    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {
    sub_21D0CF7E0(&v14, &qword_27CE59DC0);
    __swift_destroy_boxed_opaque_existential_0(v20);
    return 0;
  }

  return v7;
}

uint64_t sub_21D49A938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  v5 = (*(a3 + 40))(ObjectType, a3);
  v6 = sub_21D7A5E9C();
  v7 = v6;
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  result = sub_21DBFBD7C();
  if (!result)
  {
LABEL_11:

    return 0;
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x223D44740](0, v7);
    goto LABEL_7;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v7 + 32);
LABEL_7:
    v10 = v9;

    if ([v10 proximity] == 1)
    {
      v11 = [v10 structuredLocation];
      v12 = sub_21DBFB40C();

      return v12 & 1;
    }

    return 0;
  }

  __break(1u);
  return result;
}

BOOL sub_21D49AA78(_BOOL8 result, uint64_t a2)
{
  if (result)
  {
    ObjectType = swift_getObjectType();
    v4 = *(a2 + 40);
    v5 = v4(ObjectType, a2);
    v6 = [v5 flaggedContext];

    if (v6 && (v6, v7 = swift_getObjectType(), v8 = v4(v7, a2), v9 = [v8 flaggedContext], v8, v9))
    {
      v10 = [v9 flagged];

      return v10 > 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *sub_21D49AB60(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  (*(a2 + 32))(&v38, ObjectType, a2);
  sub_21D0D0FD0(&v38, v52);
  v4 = swift_getObjectType();
  TTRRemindersListEditingSession.effectiveParentList.getter(v4, a2, &v38);
  if (!*(&v39 + 1))
  {
    sub_21D0CF7E0(&v38, &qword_27CE59DC0);
LABEL_34:
    __swift_destroy_boxed_opaque_existential_0(v52);
    return 0;
  }

  sub_21D0D0FD0(&v38, v49);
  v5 = v53;
  v6 = v54;
  __swift_project_boxed_opaque_existential_1(v52, v53);
  (*(v6 + 208))(&v38, v5, v6);
  if (!*(&v39 + 1))
  {
    sub_21D0CF7E0(&v38, &qword_27CE5CC28);
LABEL_33:
    __swift_destroy_boxed_opaque_existential_0(v49);
    goto LABEL_34;
  }

  sub_21D0D0FD0(&v38, v46);
  v7 = v50;
  v8 = v51;
  __swift_project_boxed_opaque_existential_1(v49, v50);
  (*(v8 + 96))(&v38, v7, v8);
  v9 = *(&v39 + 1);
  if (!*(&v39 + 1))
  {
    sub_21D0CF7E0(&v38, &qword_27CE62630);
LABEL_32:
    __swift_destroy_boxed_opaque_existential_0(v46);
    goto LABEL_33;
  }

  v10 = v40;
  __swift_project_boxed_opaque_existential_1(&v38, *(&v39 + 1));
  v11 = (*(v10 + 32))(v9, v10);
  __swift_destroy_boxed_opaque_existential_0(&v38);
  if (v11 >> 62)
  {
    if (sub_21DBFBD7C())
    {
      goto LABEL_7;
    }

LABEL_31:

    goto LABEL_32;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_31;
  }

LABEL_7:
  v12 = v50;
  v13 = v51;
  __swift_project_boxed_opaque_existential_1(v49, v50);
  v14 = (*(v13 + 80))(v12, v13);
  if (!v14)
  {
    goto LABEL_31;
  }

  v15 = v14;
  v16 = [v14 objectID];

  if (!v16)
  {
    goto LABEL_31;
  }

  if (v11 >> 62)
  {
    v17 = sub_21DBFBD7C();
  }

  else
  {
    v17 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v17)
  {

    v19 = MEMORY[0x277D84F90];
LABEL_27:
    v33 = v47;
    v34 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    v35 = (*(v34 + 8))(v33, v34);
    if (v35)
    {
      v36 = v35;
      [v35 assigneeID];
    }

    __swift_destroy_boxed_opaque_existential_0(v46);
    __swift_destroy_boxed_opaque_existential_0(v49);
    __swift_destroy_boxed_opaque_existential_0(v52);
    return v19;
  }

  v45 = MEMORY[0x277D84F90];
  result = sub_21D18EFC4(0, v17 & ~(v17 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v19 = v45;
    sub_21D0D8CF0(0, &qword_280D17680);
    v20 = 0;
    v21 = v17 - 1;
    if ((v11 & 0xC000000000000001) == 0)
    {
      goto LABEL_19;
    }

LABEL_18:
    for (i = MEMORY[0x223D44740](v20, v11); ; i = *(v11 + 8 * v20 + 32))
    {
      v23 = i;
      TTRParticipantModel.init(sharee:)(v23, v43);
      v24 = [v23 objectID];
      v25 = [v23 objectID];
      v26 = sub_21DBFB63C();

      v44[0] = v38;
      *(v44 + 3) = *(&v38 + 3);
      v45 = v19;
      v28 = *(v19 + 16);
      v27 = *(v19 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_21D18EFC4((v27 > 1), v28 + 1, 1);
        v19 = v45;
      }

      v41 = v43[3];
      v42 = v43[4];
      v39 = v43[1];
      v40 = v43[2];
      v38 = v43[0];
      LODWORD(v37) = v44[0];
      *(&v37 + 3) = *(v44 + 3);
      *(v19 + 16) = v28 + 1;
      v29 = v19 + 112 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = 0;
      *(v29 + 48) = v38;
      v31 = v41;
      v30 = v42;
      v32 = v40;
      *(v29 + 64) = v39;
      *(v29 + 80) = v32;
      *(v29 + 96) = v31;
      *(v29 + 112) = v30;
      *(v29 + 128) = v26 & 1;
      *(v29 + 132) = *(&v37 + 3);
      *(v29 + 129) = v37;
      *(v29 + 136) = 0;
      if (v21 == v20)
      {
        break;
      }

      ++v20;
      if ((v11 & 0xC000000000000001) != 0)
      {
        goto LABEL_18;
      }

LABEL_19:
      ;
    }

    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_21D49B034(uint64_t result, uint64_t a2)
{
  if (result)
  {
    ObjectType = swift_getObjectType();
    v4 = *(a2 + 40);
    v5 = v4(ObjectType, a2);
    v6 = [v5 attachmentContext];

    if (v6)
    {

      v7 = swift_getObjectType();
      v8 = v4(v7, a2);
      v9 = [v8 attachments];

      sub_21D0D8CF0(0, &qword_280D0C310);
      v10 = sub_21DBFA5EC();

      if (v10 >> 62)
      {
        goto LABEL_17;
      }

      for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
      {
        v12 = 0;
        while (1)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x223D44740](v12, v10);
          }

          else
          {
            if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_16;
            }

            v13 = *(v10 + 8 * v12 + 32);
          }

          v14 = v13;
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {

            return 1;
          }

          ++v12;
          if (v15 == i)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        ;
      }

LABEL_18:
    }

    return 0;
  }

  return result;
}

BOOL sub_21D49B1E4(_BOOL8 result, uint64_t a2)
{
  if (result)
  {
    ObjectType = swift_getObjectType();
    v4 = *(a2 + 40);
    v5 = v4(ObjectType, a2);
    v6 = [v5 hashtagContext];

    if (v6 && (v6, v7 = swift_getObjectType(), v8 = v4(v7, a2), v9 = [v8 hashtagContext], v8, v9))
    {
      v10 = [v9 hashtags];

      sub_21D0D8CF0(0, &qword_280D0C348);
      sub_21D365CC4();
      v11 = sub_21DBFAAAC();

      if ((v11 & 0xC000000000000001) != 0)
      {
        v12 = sub_21DBFBD7C();
      }

      else
      {
        v12 = *(v11 + 16);
      }

      return v12 != 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21D49B338(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(result + 8);
    if (v4 == 255)
    {
      ObjectType = swift_getObjectType();
      v13 = *(a3 + 72);
      swift_unknownObjectRetain();
      v13(v16, ObjectType, a3);
      v14 = v17;
      v15 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      (*(v15 + 136))(0, v14, v15);
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = *result;
      v6 = swift_getObjectType();
      v7 = *(a3 + 72);
      swift_unknownObjectRetain();
      v7(v16, v6, a3);
      v8 = v17;
      v9 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      if (v4)
      {
        v10 = *(v9 + 144);
      }

      else
      {
        v10 = *(v9 + 136);
      }

      v11 = v5;
      v10(v5, v8, v9);
      swift_unknownObjectRelease();
      sub_21D157864(v5, v4);
    }

    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

  return result;
}

uint64_t sub_21D49B500(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = result;
    v5 = swift_unknownObjectRetain();
    if (sub_21D49A744(v5, a3))
    {
      ObjectType = swift_getObjectType();
      (*(a3 + 32))(v24, ObjectType, a3);
      v7 = v25;
      v8 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      (*(v8 + 208))(v27, v7, v8);
      v9 = v28;
      if (v28)
      {
        v10 = v29;
        __swift_project_boxed_opaque_existential_1(v27, v28);
        v11 = (*(v10 + 8))(v9, v10);
        if (v11)
        {
          v12 = v11;
          v13 = [v11 assigneeID];

          __swift_destroy_boxed_opaque_existential_0(v27);
          __swift_destroy_boxed_opaque_existential_0(v24);
          if (v13)
          {
            sub_21D0D8CF0(0, &qword_280D17880);
            v14 = v4;
            v15 = sub_21DBFB63C();

            if (v15)
            {
              (*(a3 + 72))(v27, ObjectType, a3);
              v16 = v28;
              v17 = v29;
              __swift_project_boxed_opaque_existential_1(v27, v28);
              (*(v17 + 56))(v16, v17);
              swift_unknownObjectRelease();
              return __swift_destroy_boxed_opaque_existential_0(v27);
            }
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0(v27);
          __swift_destroy_boxed_opaque_existential_0(v24);
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v24);
        sub_21D0CF7E0(v27, &qword_27CE5CC28);
      }

      (*(a3 + 72))(v27, ObjectType, a3);
      v18 = v28;
      v19 = v29;
      __swift_project_boxed_opaque_existential_1(v27, v28);
      TTRRemindersListEditingSession.effectiveParentList.getter(ObjectType, a3, v24);
      v20 = v25;
      if (v25)
      {
        v21 = v26;
        __swift_project_boxed_opaque_existential_1(v24, v25);
        v22 = (*(v21 + 80))(v20, v21);
        if (v22)
        {
          v23 = v22;
          v20 = [v22 objectID];

          __swift_destroy_boxed_opaque_existential_0(v24);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0(v24);
          v20 = 0;
        }
      }

      else
      {
        sub_21D0CF7E0(v24, &qword_27CE59DC0);
      }

      (*(v19 + 64))(v4, v20, v18, v19);
      swift_unknownObjectRelease();

      return __swift_destroy_boxed_opaque_existential_0(v27);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21D49B848(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    ObjectType = swift_getObjectType();
    v4 = *(a2 + 40);
    v5 = v4(ObjectType, a2);
    v6 = [v5 flaggedContext];

    if (v6)
    {

      v7 = swift_getObjectType();
      swift_unknownObjectRetain_n();
      v8 = v4(v7, a2);
      v9 = [v8 flaggedContext];

      if (v9 && (v9, v10 = v4(v7, a2), v11 = [v10 flaggedContext], v10, v11))
      {
        v12 = [v11 flagged];

        swift_unknownObjectRelease();
        v13 = v12 < 1;
      }

      else
      {
        swift_unknownObjectRelease();
        v13 = 1;
      }

      (*(a2 + 72))(v16, v7, a2);
      v14 = v17;
      v15 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      (*(v15 + 24))(v13, v14, v15);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v16);
    }
  }
}

uint64_t sub_21D49BA08(uint64_t result)
{
  if (*(result + 232))
  {
    v1 = result;
    v2 = *(result + 240);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 40);
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v5 = *(v1 + 56);
      swift_getObjectType();
      sub_21D4B9640();
      (*(v5 + 16))();

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t static TTRIQuickBarInputAccessoryAssembly.createViewController(supportedIdioms:allowsClearingDueDate:store:locationOptionsProvider:locationQuickPicksInteractor:contactsProvider:contactStoreCreator:participantAvatarProvider:)(void *a1, uint64_t *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v49 = a7;
  v51 = a6;
  v52 = a3;
  v54 = a1;
  v50 = a11;
  v53 = *a2;
  sub_21D0D32E4(a8, &v65);
  sub_21D0CE468();
  v13 = sub_21DBFB12C();
  v14 = type metadata accessor for TTRIQuickBarParticipantAvatarProvider();
  v15 = swift_allocObject();
  v16 = v66;
  v17 = v67;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(&v65, v66);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v19);

  v23 = sub_21D4B6808(v21, a9, a10, v13, v15, v16, v17);
  __swift_destroy_boxed_opaque_existential_0(&v65);
  v66 = type metadata accessor for TTRReminderLocationOptionsProvider();
  v67 = &protocol witness table for TTRReminderLocationOptionsProvider;
  *&v65 = a5;
  type metadata accessor for TTRIQuickBarInputAccessoryInteractor();
  v24 = swift_allocObject();
  v24[3] = 0;
  swift_unknownObjectWeakInit();
  sub_21D0D0FD0(&v65, (v24 + 4));
  v25 = v49;
  v24[9] = a6;
  v24[10] = v25;
  v26 = type metadata accessor for TTRIQuickBarInputAccessoryRouter();
  v27 = swift_allocObject();
  sub_21D0D32E4(v50, &v65);
  v64[3] = v26;
  v64[4] = &off_282EBF3B0;
  v64[0] = v27;
  v62 = v14;
  v63 = &off_282EC0000;
  v61[0] = v23;
  type metadata accessor for TTRIQuickBarInputAccessoryPresenter();
  v28 = swift_allocObject();
  v29 = __swift_mutable_project_boxed_opaque_existential_1(v64, v26);
  v30 = MEMORY[0x28223BE20](v29);
  v32 = (&v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32, v30);
  v34 = __swift_mutable_project_boxed_opaque_existential_1(v61, v62);
  v35 = MEMORY[0x28223BE20](v34);
  v37 = (&v49 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v38 + 16))(v37, v35);
  v39 = *v32;
  v40 = *v37;
  v59 = v26;
  v60 = &off_282EBF3B0;
  *&v58 = v39;
  v57 = &off_282EC0000;
  v56 = v14;
  *&v55 = v40;
  *(v28 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v28 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v28 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v28 + 72) = 0;
  swift_unknownObjectWeakInit();
  *(v28 + 224) = 0u;
  *(v28 + 240) = 0u;
  *(v28 + 80) = v24;
  *(v28 + 88) = &off_282EBF5D0;
  sub_21D0D0FD0(&v58, v28 + 96);
  sub_21D0D0FD0(&v55, v28 + 136);
  sub_21D0D0FD0(&v65, v28 + 176);
  *(v28 + 216) = v52;

  swift_unknownObjectRetain();

  __swift_destroy_boxed_opaque_existential_0(v61);
  __swift_destroy_boxed_opaque_existential_0(v64);
  v41 = type metadata accessor for TTRIQuickBarProvider();
  v42 = swift_allocObject();

  v44 = sub_21D49C0E4(v43, v53, v42);
  swift_beginAccess();
  *(a5 + 24) = &off_282EBF5C0;
  swift_unknownObjectWeakAssign();
  v23[3] = &off_282EC0388;
  swift_unknownObjectWeakAssign();
  v24[3] = &off_282EC0378;
  swift_unknownObjectWeakAssign();
  *(v28 + 40) = &off_282EBE618;
  swift_unknownObjectWeakAssign();
  v45 = v44[3];
  if ((~v45 & 0xF000000000000006) != 0)
  {
    if (v45 < 0)
    {
      v46 = *((v45 & 0x7FFFFFFFFFFFFFFFLL) + 8);
    }

    else
    {
      v46 = &off_282EBEA80;
    }
  }

  else
  {
    v46 = 0;
  }

  *(v28 + 56) = v46;
  swift_unknownObjectWeakAssign();
  v47 = v54;
  v54[3] = v41;

  *v47 = v44;
  return v28;
}

void *sub_21D49C0E4(uint64_t a1, uint64_t a2, void *a3)
{
  a3[4] = 0;
  a3[5] = 0;
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6)
  {
    if (v6 == 1)
    {
      sub_21D49C634();
      if (sub_21DBFC8CC())
      {
        type metadata accessor for TTRIQuickBarInputAssistentButtonsController();
        v7 = swift_allocObject();
        *(v7 + 24) = 0;
        swift_unknownObjectWeakInit();
        *(v7 + 32) = 0;
        *(v7 + 40) = 0;
        swift_unknownObjectWeakInit();
        *(v7 + 48) = a1;
        *(v7 + 56) = &off_282EC02D8;

        v8 = sub_21D4B9640();
        v10 = v9;

        *(v7 + 64) = v8;
        *(v7 + 72) = v10 & 1;

        v11 = sub_21DBFC8CC();
        a3[2] = v7;
        a3[3] = (v11 & 1) == 0;
        *(v7 + 24) = &off_282EBE5F8;
        swift_unknownObjectWeakAssign();

        return a3;
      }
    }

LABEL_10:

    *(a3 + 1) = xmmword_21DC17DB0;
    return a3;
  }

  sub_21D49C634();
  if ((sub_21DBFC8CC() & 1) == 0)
  {
    goto LABEL_10;
  }

  if (qword_280D17218 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_280D17220)
  {
    type metadata accessor for TTRIQuickBarInputAccessoryViewController_toolbar();
    v12 = swift_allocObject();
    v13 = sub_21D49C3C0(a1, v12);
    v14 = &off_282EAAB00;
  }

  else
  {
    type metadata accessor for TTRIQuickBarInputAccessoryViewController();
    v13 = swift_allocObject();
    *(v13 + 48) = 0;
    type metadata accessor for TTRIDateIconGenerator();
    *(v13 + 56) = swift_allocObject();
    *(v13 + 64) = 6;
    *(v13 + 16) = a1;
    *(v13 + 24) = &off_282EC02D8;

    v16 = sub_21D4B9640();
    v18 = v17;

    *(v13 + 32) = v16;
    *(v13 + 40) = v18 & 1;
    v14 = &off_282EBE7A0;
  }

  a3[2] = v13;
  a3[3] = v14 | 0x8000000000000000;
  return a3;
}

uint64_t sub_21D49C3C0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TTRIDateIconGenerator();
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84F98];
  *(a2 + 32) = v4;
  *(a2 + 72) = v5;
  *(a2 + 16) = a1;
  *(a2 + 24) = &off_282EC02D8;

  v6 = sub_21D4B9640();
  v8 = v7;

  *(a2 + 56) = v6;
  *(a2 + 64) = v8 & 1;
  v9 = [objc_allocWithZone(MEMORY[0x277D75C58]) init];
  v10 = objc_allocWithZone(type metadata accessor for TTRIQuickBarInputAccessoryView_toolbar());
  v11 = sub_21D37201C(v9, 0.0, 0.0, 0.0, 0.0);
  *(a2 + 40) = v9;
  *(a2 + 48) = v11;
  v12 = v9;
  v13 = v11;
  sub_21D1ADC08();

  return a2;
}

unint64_t sub_21D49C4B8()
{
  result = qword_280D0EC08;
  if (!qword_280D0EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D0EC08);
  }

  return result;
}

unint64_t sub_21D49C510()
{
  result = qword_280D0EC00;
  if (!qword_280D0EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D0EC00);
  }

  return result;
}

unint64_t sub_21D49C568()
{
  result = qword_280D0EC10;
  if (!qword_280D0EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D0EC10);
  }

  return result;
}

unint64_t sub_21D49C5C0()
{
  result = qword_280D0EBF8;
  if (!qword_280D0EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D0EBF8);
  }

  return result;
}

unint64_t sub_21D49C634()
{
  result = qword_280D0EBF0;
  if (!qword_280D0EBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D0EBF0);
  }

  return result;
}

id sub_21D49C688(uint64_t a1, unsigned __int8 *a2, char a3)
{
  v6 = *a2;
  *&v3[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_quickPicks] = a1;
  sub_21DBF8E0C();

  v3[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_quickBarTabBarItem] = v6;
  result = [v3 isViewLoaded];
  if (result)
  {
    v8 = *&v3[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_quickPickView];
    if (v8)
    {
      if (v6 == 3)
      {
        v9 = v3[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_isForGroceries];
        v10 = v8;
        v11 = _s15RemindersUICore21TTRLocalizableStringsO0A4ListO31quickbarAssignReminderLabelText14isForGroceriesSSSb_tFZ_0(v9);
        v13 = v12;
      }

      else
      {
        v14 = v8;
        v11 = 0;
        v13 = 0;
      }

      sub_21D49C840(v8, a1, v11, v13, a3 & 1);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_21D49C840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v76 = a5;
  v73 = a4;
  v72 = a3;
  v7 = type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C8C0);
  MEMORY[0x28223BE20](v11 - 8);
  v74 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v70 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v70 - v17;
  v19 = type metadata accessor for TTRIQuickBarQuickPickItem(0);
  v83 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v82 = v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = v70 - v22;
  MEMORY[0x28223BE20](v24);
  v81 = v70 - v25;
  v26 = *(a1 + OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_items);
  v80 = v19;
  v77 = v15;
  v75 = a1;
  v78 = a2;
  if (v26)
  {
    v27 = *(v26 + 16);
    if (v27)
    {
      v71 = v8;
      v28 = v26 + 32;
      v29 = (v83 + 56);
      v30 = (v83 + 48);
      v70[1] = v26;
      sub_21DBF8E0C();
      v31 = MEMORY[0x277D84F90];
      do
      {
        sub_21D47FBCC(v28, &v85);
        sub_21DBFBE1C();
        sub_21D47FC28(&v85);
        v32 = swift_dynamicCast();
        (*v29)(v18, v32 ^ 1u, 1, v19);
        if ((*v30)(v18, 1, v19) == 1)
        {
          sub_21D0CF7E0(v18, &qword_27CE5C8C0);
        }

        else
        {
          sub_21D47FAA4(v18, v81);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_21D211180(0, v31[2] + 1, 1, v31);
          }

          v34 = v31[2];
          v33 = v31[3];
          if (v34 >= v33 >> 1)
          {
            v31 = sub_21D211180(v33 > 1, v34 + 1, 1, v31);
          }

          v31[2] = v34 + 1;
          sub_21D47FAA4(v81, v31 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v34);
          v19 = v80;
        }

        v28 += 104;
        --v27;
      }

      while (v27);

      a2 = v78;
      v8 = v71;
    }

    else
    {
      v31 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v31 = 0;
  }

  v35 = *(a2 + 16);
  v36 = MEMORY[0x277D84F90];
  if (v35)
  {
    *&v85 = MEMORY[0x277D84F90];
    sub_21D18E8F8(0, v35, 0);
    v37 = v85;
    v38 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v39 = *(v8 + 72);
    do
    {
      sub_21D47FB08(v38, v10, type metadata accessor for TTRIQuickBarInputAccessoryViewModel.QuickPick);
      sub_21D47FAA4(v10, v23);
      *&v85 = v37;
      v41 = *(v37 + 16);
      v40 = *(v37 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_21D18E8F8(v40 > 1, v41 + 1, 1);
        v37 = v85;
      }

      *(v37 + 16) = v41 + 1;
      sub_21D47FAA4(v23, v37 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v41);
      v38 += v39;
      --v35;
    }

    while (v35);
    v19 = v80;
    v36 = MEMORY[0x277D84F90];
    if (!v31)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
    if (!v31)
    {
      goto LABEL_25;
    }
  }

  sub_21DBF8E0C();
  v42 = sub_21DBF8E0C();
  v43 = sub_21D1D7C44(v42, v37);

  swift_bridgeObjectRelease_n();
  if (v43)
  {

    v44 = 1;
    v45 = v77;
    goto LABEL_33;
  }

LABEL_25:
  v46 = *(v37 + 16);
  if (v46)
  {
    v47 = *&v79[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_dateIconGenerator];
    v84 = v36;
    sub_21D18E8D8(0, v46, 0);
    v48 = v84;
    v49 = v37 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
    v50 = *(v83 + 72);
    do
    {
      v51 = v82;
      sub_21D47FB08(v49, v82, type metadata accessor for TTRIQuickBarQuickPickItem);
      sub_21D487450(v47, &v85);
      sub_21D47FB70(v51);
      v84 = v48;
      v53 = *(v48 + 16);
      v52 = *(v48 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_21D18E8D8((v52 > 1), v53 + 1, 1);
        v48 = v84;
      }

      *(v48 + 16) = v53 + 1;
      v54 = v48 + 104 * v53;
      v55 = v85;
      v56 = v87;
      *(v54 + 48) = v86;
      *(v54 + 64) = v56;
      *(v54 + 32) = v55;
      v57 = v88;
      v58 = v89;
      v59 = v90;
      *(v54 + 128) = v91;
      *(v54 + 96) = v58;
      *(v54 + 112) = v59;
      *(v54 + 80) = v57;
      v49 += v50;
      --v46;
    }

    while (v46);

    v19 = v80;
  }

  else
  {

    v48 = MEMORY[0x277D84F90];
  }

  sub_21D4AE1B0(v48, v72, v73);

  v44 = 0;
  v45 = v77;
LABEL_33:
  *&v85 = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C8C8);
  sub_21D49DB1C();
  sub_21DBFA48C();
  v60 = v74;
  sub_21D0D3954(v45, v74, &qword_27CE5C8C0);
  if ((*(v83 + 48))(v60, 1, v19) == 1)
  {
    sub_21D0CF7E0(v60, &qword_27CE5C8C0);
    v85 = 0u;
    v86 = 0u;
    *&v87 = 0;
  }

  else
  {
    sub_21D47FAA4(v60, v82);
    sub_21D49DB80();
    sub_21DBFBE2C();
  }

  v61 = v79;
  sub_21D4AE314(&v85, v44 & v76);
  sub_21D0CF7E0(&v85, &qword_27CE5BE60);
  if (v44)
  {
    return sub_21D0CF7E0(v45, &qword_27CE5C8C0);
  }

  result = [v61 view];
  if (result)
  {
    v65 = result;
    LODWORD(v63) = 1148846080;
    LODWORD(v64) = 1132068864;
    [result systemLayoutSizeFittingSize:374.0 withHorizontalFittingPriority:*(MEMORY[0x277D76C78] + 8) verticalFittingPriority:{v63, v64}];
    v67 = v66;
    v69 = v68;

    [v61 setPreferredContentSize_];
    return sub_21D0CF7E0(v45, &qword_27CE5C8C0);
  }

  __break(1u);
  return result;
}

void sub_21D49D0E0()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v2 setLayoutMargins_];
  type metadata accessor for TTRIQuickBarQuickPickView();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_delegate + 8] = &off_282EBF7C8;
  swift_unknownObjectWeakAssign();
  [v2 addSubview_];
  v4 = *&v1[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_quickPickView];
  *&v1[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_quickPickView] = v3;
  v5 = v3;

  [v1 setView_];
  v6 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21DC0AA10;
  v8 = [v2 layoutMarginsGuide];
  v9 = [v8 leadingAnchor];

  v10 = [v5 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v7 + 32) = v11;
  v12 = [v2 layoutMarginsGuide];
  v13 = [v12 trailingAnchor];

  v14 = [v5 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v7 + 40) = v15;
  v16 = [v2 layoutMarginsGuide];
  v17 = [v16 topAnchor];

  v18 = [v5 topAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v7 + 48) = v19;
  v20 = [v2 layoutMarginsGuide];
  v21 = [v20 bottomAnchor];

  v22 = [v5 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v7 + 56) = v23;
  sub_21D3677A0();
  v24 = sub_21DBFA5DC();

  [v6 activateConstraints_];
}

id sub_21D49D4B0()
{
  v1 = v0;
  v33.receiver = v0;
  v33.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v33, sel_viewDidLoad);
  v3 = *&v0[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_quickPickView];
  if (v3)
  {
    v4 = *&v0[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_quickPicks];
    if (v0[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_quickBarTabBarItem] == 3)
    {
      v5 = v0[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_isForGroceries];
      v6 = v3;
      sub_21DBF8E0C();
      v7 = _s15RemindersUICore21TTRLocalizableStringsO0A4ListO31quickbarAssignReminderLabelText14isForGroceriesSSSb_tFZ_0(v5);
      v9 = v8;
    }

    else
    {
      v10 = v3;
      sub_21DBF8E0C();
      v7 = 0;
      v9 = 0;
    }

    sub_21D49C840(v3, v4, v7, v9, 0);

    v11 = [objc_opt_self() defaultCenter];
    v12 = *MEMORY[0x277D76C50];
    memset(v32, 0, sizeof(v32));
    v13 = [objc_opt_self() mainQueue];
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21D0D3954(v32, aBlock, &qword_27CE5C690);
    v15 = v29;
    if (v29)
    {
      v16 = __swift_project_boxed_opaque_existential_1(aBlock, v29);
      v17 = *(v15 - 1);
      v18 = MEMORY[0x28223BE20](v16);
      v20 = aBlock - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v20, v18);

      v21 = sub_21DBFC62C();
      (*(v17 + 8))(v20, v15);
      __swift_destroy_boxed_opaque_existential_0(aBlock);
    }

    else
    {

      v21 = 0;
    }

    v30 = sub_21D49DDB0;
    v31 = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0EE46C;
    v29 = &block_descriptor_35;
    v22 = _Block_copy(aBlock);

    v23 = [v11 addObserverForName:v12 object:v21 queue:v13 usingBlock:v22];
    _Block_release(v22);
    swift_unknownObjectRelease();
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    *(v26 + 24) = v25;
    sub_21DBF902C();
    swift_allocObject();

    v27 = sub_21DBF903C();
    swift_unknownObjectRelease();

    sub_21D0CF7E0(v32, &qword_27CE5C690);

    *&v1[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_keyboardWillHideObserver] = v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21D49D900()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

unint64_t sub_21D49DB1C()
{
  result = qword_27CE5C8D0;
  if (!qword_27CE5C8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5C8C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5C8D0);
  }

  return result;
}

unint64_t sub_21D49DB80()
{
  result = qword_27CE5C8D8;
  if (!qword_27CE5C8D8)
  {
    type metadata accessor for TTRIQuickBarQuickPickItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5C8D8);
  }

  return result;
}

uint64_t sub_21D49DBD8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C8C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-v1];
  v3 = type metadata accessor for TTRIQuickBarQuickPickItem(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21DBFBE1C();
  v7 = swift_dynamicCast();
  (*(v4 + 56))(v2, v7 ^ 1u, 1, v3);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_21D0CF7E0(v2, &qword_27CE5C8C0);
  }

  sub_21D47FAA4(v2, v6);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return sub_21D47FB70(v6);
  }

  sub_21D4BC7E0(v6);
  sub_21D47FB70(v6);
  return swift_unknownObjectRelease();
}

RemindersUICore::TTRRemindersListItemSeparatorFlags __swiftcall TTRRemindersListItemSeparatorFlags.init(forceTopSeparatorHiddenForSectionHeader:forceBottomSeparatorHiddenForSectionDescendant:)(Swift::Bool forceTopSeparatorHiddenForSectionHeader, Swift::Bool forceBottomSeparatorHiddenForSectionDescendant)
{
  *v2 = forceTopSeparatorHiddenForSectionHeader;
  v2[1] = forceBottomSeparatorHiddenForSectionDescendant;
  result.forceTopSeparatorHiddenForSectionHeader = forceTopSeparatorHiddenForSectionHeader;
  return result;
}

uint64_t TTRRemindersListItemSeparatorStates.sectionsWithHiddenTopSeparator.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t TTRRemindersListItemSeparatorStates.sectionDescendantsWithHiddenBottomSeparator.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t TTRRemindersListItemSeparatorStates.init(sectionsWithHiddenTopSeparator:sectionDescendantsWithHiddenBottomSeparator:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t TTRRemindersListItemSeparatorStates.separatorFlags(forItemID:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = sub_21D1E1F5C(a1, v5);
  result = sub_21D1E1F5C(a1, v6);
  *a2 = v7 & 1;
  a2[1] = result & 1;
  return result;
}

uint64_t TTRRemindersListItemSeparatorStates.init(remindersListTree:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19[-v5];
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D84FA0];
  *(v7 + 16) = MEMORY[0x277D84FA0];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CC68);
  v10 = swift_allocBox();
  v12 = v11;
  v13 = type metadata accessor for TTRRemindersListItemSeparatorStates.InspectedItem(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  sub_21D49E1D4(v6, a1, v10, v14, v7, v9);
  __swift_destroy_boxed_opaque_existential_0(a1);
  sub_21D0CF7E0(v6, &unk_27CE5CD80);
  swift_beginAccess();
  v16 = *(v7 + 16);
  swift_beginAccess();
  v17 = *(v9 + 16);
  sub_21DBF8E0C();
  sub_21DBF8E0C();

  *a2 = v16;
  a2[1] = v17;
  return result;
}

uint64_t sub_21D49E1D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v128 = a6;
  v130 = a5;
  v140 = a4;
  v146 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v8 - 8);
  v126 = v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v138 = (v112 - v11);
  v12 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v12 - 8);
  v124 = v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v123 = v112 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CC68);
  MEMORY[0x28223BE20](v16 - 8);
  v122 = v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v112 - v19;
  MEMORY[0x28223BE20](v21);
  v117 = v112 - v22;
  v132 = type metadata accessor for TTRRemindersListItemSeparatorStates.InspectedItem(0);
  v143 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v114 = v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v113 = v112 - v25;
  v137 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  MEMORY[0x28223BE20](v137);
  v136 = v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v135 = v112 - v28;
  v144 = type metadata accessor for TTRRemindersListItemSeparatorStates.ItemType(0);
  MEMORY[0x28223BE20](v144);
  v116 = v112 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v119 = v112 - v31;
  MEMORY[0x28223BE20](v32);
  v115 = v112 - v33;
  MEMORY[0x28223BE20](v34);
  v118 = v112 - v35;
  MEMORY[0x28223BE20](v36);
  v38 = v112 - v37;
  MEMORY[0x28223BE20](v39);
  v145 = v112 - v40;
  MEMORY[0x28223BE20](v41);
  v43 = v112 - v42;
  v147 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v44 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v121 = v112 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v120 = v112 - v47;
  MEMORY[0x28223BE20](v48);
  v148 = v112 - v49;
  MEMORY[0x28223BE20](v50);
  v52 = v112 - v51;
  v127 = a3;
  v53 = swift_projectBox();
  v55 = a2[3];
  v54 = a2[4];
  v139 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v55);
  v56 = TTRTreeContentsQueryable.children(of:)(v146, v55, v54);
  v57 = *(v56 + 16);
  if (v57)
  {
    v58 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v112[1] = v56;
    v59 = v56 + v58;
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v146 = v53;
    swift_beginAccess();
    v141 = (v143 + 56);
    v142 = v52;
    v131 = (v143 + 48);
    v143 = *(v44 + 72);
    v133 = v20;
    v134 = (v44 + 56);
    v125 = (v44 + 48);
    v129 = v38;
    v60 = v132;
    while (1)
    {
      sub_21D104FAC(v59, v52, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D104FAC(v52, v148, type metadata accessor for TTRRemindersListViewModel.Item);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 0xA)
      {
        goto LABEL_11;
      }

      v62 = 1 << EnumCaseMultiPayload;
      if (((1 << EnumCaseMultiPayload) & 0x1E0) != 0 || (v62 & 0x1C) != 0)
      {
        sub_21D106AF8(v148, type metadata accessor for TTRRemindersListViewModel.Item);
        goto LABEL_12;
      }

      if ((v62 & 0x600) == 0)
      {
LABEL_11:
        sub_21D4AAFC0(v148, v145, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      }

LABEL_12:
      v63 = v145;
      swift_storeEnumTagMultiPayload();
      sub_21D4AAFC0(v63, v43, type metadata accessor for TTRRemindersListItemSeparatorStates.ItemType);
      sub_21D104FAC(v43, v38, type metadata accessor for TTRRemindersListItemSeparatorStates.ItemType);
      v64 = swift_getEnumCaseMultiPayload();
      if ((v64 - 2) >= 2)
      {
        v52 = v142;
        if (v64)
        {
          v68 = v136;
          sub_21D4AAFC0(v38, v136, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
          if (*(v68 + *(v137 + 24)) == 1)
          {
            v69 = *v131;
            v70 = v146;
            v71 = (*v131)(v146, 1, v60);
            v72 = v122;
            if (v71)
            {
              goto LABEL_20;
            }

            sub_21D104FAC(v70 + *(v60 + 20), v119, type metadata accessor for TTRRemindersListItemSeparatorStates.ItemType);
            v82 = swift_getEnumCaseMultiPayload();
            if (v82 > 1)
            {
              v75 = v146;
              if (v82 != 2)
              {
LABEL_20:
                v73 = v140;
                swift_beginAccess();
                v74 = *(v73 + 16);
                v75 = v146;
                if (v74 != 1)
                {
                  goto LABEL_29;
                }
              }
            }

            else
            {
              if (!v82)
              {
                sub_21D106AF8(v119, type metadata accessor for TTRRemindersListItemSeparatorStates.ItemType);
                v75 = v146;
LABEL_29:
                v83 = v124;
                TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v124);
                swift_beginAccess();
                v84 = v123;
                sub_21D29B520(v123, v83);
                swift_endAccess();
                v85 = type metadata accessor for TTRRemindersListViewModel.ItemID;
                v86 = v84;
                v60 = v132;
LABEL_50:
                sub_21D106AF8(v86, v85);
                goto LABEL_51;
              }

              sub_21D106AF8(v119, type metadata accessor for TTRRemindersListItemSeparatorStates.ItemType);
              v75 = v146;
            }

            sub_21D4AB098(v75, v72);
            if (v69(v72, 1, v60) != 1)
            {
              v96 = v114;
              sub_21D4AAFC0(v72, v114, type metadata accessor for TTRRemindersListItemSeparatorStates.InspectedItem);
              sub_21D104FAC(v96 + *(v60 + 20), v116, type metadata accessor for TTRRemindersListItemSeparatorStates.ItemType);
              if (swift_getEnumCaseMultiPayload() - 2 >= 2)
              {
                sub_21D106AF8(v96, type metadata accessor for TTRRemindersListItemSeparatorStates.InspectedItem);
                v85 = type metadata accessor for TTRRemindersListItemSeparatorStates.ItemType;
                v86 = v116;
              }

              else
              {
                v97 = v124;
                TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v124);
                swift_beginAccess();
                v98 = v123;
                sub_21D29B520(v123, v97);
                swift_endAccess();
                v99 = v98;
                v60 = v132;
                sub_21D106AF8(v99, type metadata accessor for TTRRemindersListViewModel.ItemID);
                v85 = type metadata accessor for TTRRemindersListItemSeparatorStates.InspectedItem;
                v86 = v96;
              }

              goto LABEL_50;
            }

            sub_21D0CF7E0(v72, &qword_27CE5CC68);
LABEL_51:
            v100 = v133;
            sub_21D104FAC(v52, v133, type metadata accessor for TTRRemindersListViewModel.Item);
            sub_21D104FAC(v43, v100 + *(v60 + 20), type metadata accessor for TTRRemindersListItemSeparatorStates.ItemType);
            (*v141)(v100, 0, 1, v60);
            sub_21D4AB028(v100, v75);
            v101 = v140;
            swift_beginAccess();
            *(v101 + 16) = 1;
          }

          v102 = v139[3];
          v103 = v139[4];
          __swift_project_boxed_opaque_existential_1(v139, v102);
          v104 = v138;
          sub_21D104FAC(v52, v138, type metadata accessor for TTRRemindersListViewModel.Item);
          v105 = v147;
          (*v134)(v104, 0, 1, v147);
          v106 = v103;
          v107 = v126;
          TTRTreeContentsQueryable.lastDescendant(of:)(v104, v102, v106, v126);
          sub_21D0CF7E0(v104, &unk_27CE5CD80);
          if ((*v125)(v107, 1, v105) == 1)
          {
            sub_21D106AF8(v136, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
            sub_21D106AF8(v43, type metadata accessor for TTRRemindersListItemSeparatorStates.ItemType);
            sub_21D106AF8(v52, type metadata accessor for TTRRemindersListViewModel.Item);
            sub_21D0CF7E0(v107, &unk_27CE5CD80);
            v60 = v132;
            v20 = v133;
          }

          else
          {
            v108 = v120;
            sub_21D4AAFC0(v107, v120, type metadata accessor for TTRRemindersListViewModel.Item);
            v20 = v133;
            sub_21D104FAC(v108, v133, type metadata accessor for TTRRemindersListViewModel.Item);
            v109 = v121;
            sub_21D104FAC(v108, v121, type metadata accessor for TTRRemindersListViewModel.Item);
            v110 = v132;
            sub_21D4AAE98(v109, &v20[*(v132 + 20)]);
            sub_21D106AF8(v108, type metadata accessor for TTRRemindersListViewModel.Item);
            sub_21D106AF8(v136, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
            sub_21D106AF8(v43, type metadata accessor for TTRRemindersListItemSeparatorStates.ItemType);
            sub_21D106AF8(v52, type metadata accessor for TTRRemindersListViewModel.Item);
            (*v141)(v20, 0, 1, v110);
            sub_21D4AB028(v20, v146);
            v60 = v110;
          }

          v38 = v129;
          goto LABEL_4;
        }

        v65 = v135;
        sub_21D4AAFC0(v38, v135, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
        if (*(v65 + *(v137 + 24)) == 1)
        {
          v66 = *v131;
          if ((*v131)(v146, 1, v60))
          {
            goto LABEL_16;
          }

          sub_21D104FAC(v146 + *(v60 + 20), v118, type metadata accessor for TTRRemindersListItemSeparatorStates.ItemType);
          v76 = swift_getEnumCaseMultiPayload();
          if (v76 > 1)
          {
            if (v76 != 2)
            {
LABEL_16:
              v67 = v140;
              swift_beginAccess();
              if (*(v67 + 16) != 1)
              {
                goto LABEL_25;
              }
            }
          }

          else
          {
            if (!v76)
            {
              sub_21D106AF8(v118, type metadata accessor for TTRRemindersListItemSeparatorStates.ItemType);
LABEL_25:
              v77 = v124;
              TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v124);
              swift_beginAccess();
              v78 = v123;
              v79 = v77;
              v20 = v133;
              sub_21D29B520(v123, v79);
              swift_endAccess();
              v80 = type metadata accessor for TTRRemindersListViewModel.ItemID;
              v81 = v78;
              v60 = v132;
LABEL_39:
              sub_21D106AF8(v81, v80);
LABEL_40:
              v38 = v129;
              goto LABEL_41;
            }

            sub_21D106AF8(v118, type metadata accessor for TTRRemindersListItemSeparatorStates.ItemType);
          }

          v87 = v60;
          v88 = v117;
          sub_21D4AB098(v146, v117);
          if (v66(v88, 1, v87) == 1)
          {
            sub_21D0CF7E0(v88, &qword_27CE5CC68);
            v60 = v87;
            goto LABEL_40;
          }

          v89 = v113;
          sub_21D4AAFC0(v88, v113, type metadata accessor for TTRRemindersListItemSeparatorStates.InspectedItem);
          sub_21D104FAC(v89 + *(v87 + 20), v115, type metadata accessor for TTRRemindersListItemSeparatorStates.ItemType);
          if (swift_getEnumCaseMultiPayload() - 2 < 2)
          {
            v90 = v124;
            TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v124);
            swift_beginAccess();
            v91 = v123;
            v92 = v90;
            v20 = v133;
            sub_21D29B520(v123, v92);
            swift_endAccess();
            v93 = v91;
            v60 = v132;
            sub_21D106AF8(v93, type metadata accessor for TTRRemindersListViewModel.ItemID);
            v80 = type metadata accessor for TTRRemindersListItemSeparatorStates.InspectedItem;
            v81 = v89;
            goto LABEL_39;
          }

          v60 = v87;
          v38 = v129;
          sub_21D106AF8(v89, type metadata accessor for TTRRemindersListItemSeparatorStates.InspectedItem);
          sub_21D106AF8(v115, type metadata accessor for TTRRemindersListItemSeparatorStates.ItemType);
LABEL_41:
          sub_21D104FAC(v52, v20, type metadata accessor for TTRRemindersListViewModel.Item);
          sub_21D104FAC(v43, &v20[*(v60 + 20)], type metadata accessor for TTRRemindersListItemSeparatorStates.ItemType);
          (*v141)(v20, 0, 1, v60);
          sub_21D4AB028(v20, v146);
          v94 = v140;
          swift_beginAccess();
          *(v94 + 16) = 1;
        }

        v95 = v138;
        sub_21D104FAC(v52, v138, type metadata accessor for TTRRemindersListViewModel.Item);
        (*v134)(v95, 0, 1, v147);
        sub_21D49E1D4(v95, v139, v127, v140, v130, v128);
        sub_21D0CF7E0(v95, &unk_27CE5CD80);
        sub_21D106AF8(v135, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
        sub_21D106AF8(v43, type metadata accessor for TTRRemindersListItemSeparatorStates.ItemType);
        sub_21D106AF8(v52, type metadata accessor for TTRRemindersListViewModel.Item);
        goto LABEL_4;
      }

      v52 = v142;
      sub_21D4AAFC0(v142, v20, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D4AAFC0(v43, &v20[*(v60 + 20)], type metadata accessor for TTRRemindersListItemSeparatorStates.ItemType);
      (*v141)(v20, 0, 1, v60);
      sub_21D4AB028(v20, v146);
LABEL_4:
      v59 += v143;
      if (!--v57)
      {
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for TTRRemindersListItemSeparatorFlags(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for TTRRemindersListItemSeparatorFlags(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *sub_21D49F5E4(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

void *assignWithCopy for TTRRemindersListItemSeparatorStates(void *a1, void *a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  a1[1] = a2[1];
  sub_21DBF8E0C();

  return a1;
}

_OWORD *assignWithTake for TTRRemindersListItemSeparatorStates(_OWORD *a1, _OWORD *a2)
{

  *a1 = *a2;

  return a1;
}

void **sub_21D49F6CC(void **a1, void **a2, uint64_t a3)
{
  v3 = a2;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = &v11[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = a3;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v24 = *v3;
        *a1 = *v3;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        v25 = *(v17 + 48);
        v26 = v24;
        if (v25(v3 + v15, 1, v16))
        {
          goto LABEL_28;
        }

        v38 = swift_getEnumCaseMultiPayload();
        if (v38 > 4)
        {
          if (v38 <= 7)
          {
            if (v38 == 5 || v38 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v38 != 8 && v38 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v38 > 2)
        {
          goto LABEL_114;
        }

        if (v38 == 1)
        {
          goto LABEL_113;
        }

        if (v38 != 2)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v14 = *v3;
        *a1 = *v3;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        v18 = *(v17 + 48);
        v19 = v14;
        if (v18(v3 + v15, 1, v16))
        {
          goto LABEL_28;
        }

        v37 = swift_getEnumCaseMultiPayload();
        if (v37 > 4)
        {
          if (v37 <= 7)
          {
            if (v37 == 5 || v37 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v37 != 8 && v37 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v37 > 2)
        {
          goto LABEL_114;
        }

        if (v37 == 1)
        {
          goto LABEL_113;
        }

        if (v37 != 2)
        {
          goto LABEL_127;
        }
      }

      goto LABEL_114;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_35;
      }

      v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v13 = swift_getEnumCaseMultiPayload();
      v168 = v6;
      if (v13 <= 4)
      {
        if (v13 > 2)
        {
LABEL_65:
          v50 = sub_21DBF563C();
          (*(*(v50 - 8) + 16))(a1, v3, v50);
          swift_storeEnumTagMultiPayload();
          goto LABEL_92;
        }

        if (v13 != 1)
        {
          if (v13 == 2)
          {
            goto LABEL_65;
          }

          goto LABEL_91;
        }

LABEL_68:
        v51 = *v3;
        *a1 = *v3;
        v52 = v51;
        swift_storeEnumTagMultiPayload();
        goto LABEL_92;
      }

      if (v13 > 7)
      {
        if (v13 == 8 || v13 == 9)
        {
          goto LABEL_68;
        }
      }

      else if (v13 == 5 || v13 == 6)
      {
        goto LABEL_65;
      }

LABEL_91:
      memcpy(a1, v3, *(*(v12 - 8) + 64));
LABEL_92:
      v56 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v57 = v56[5];
      v58 = a1 + v57;
      v59 = v3 + v57;
      v60 = *(v3 + v57 + 8);
      if (v60)
      {
        v162 = v3;
        v170 = a1;
        *v58 = *v59;
        *(v58 + 1) = v60;
        v61 = *(v59 + 2);
        v62 = *(v59 + 3);
        v63 = *(v59 + 4);
        v64 = *(v59 + 5);
        v65 = *(v59 + 6);
        v66 = *(v59 + 7);
        v67 = v59[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v61, v62, v63, v64, v65, v66, v67);
        *(v58 + 2) = v61;
        *(v58 + 3) = v62;
        *(v58 + 4) = v63;
        *(v58 + 5) = v64;
        *(v58 + 6) = v65;
        *(v58 + 7) = v66;
        v58[64] = v67;
        *(v58 + 65) = *(v59 + 65);
        v68 = v59[120];
        if (v68 == 255)
        {
          *(v58 + 72) = *(v59 + 72);
          *(v58 + 88) = *(v59 + 88);
          *(v58 + 104) = *(v59 + 104);
          v58[120] = v59[120];
        }

        else
        {
          v69 = *(v59 + 9);
          v70 = *(v59 + 10);
          v71 = *(v59 + 11);
          v72 = *(v59 + 12);
          v73 = *(v59 + 13);
          v74 = *(v59 + 14);
          v75 = v68 & 1;
          sub_21D0FB960(v69, v70, v71, v72, v73, v74, v68 & 1);
          *(v58 + 9) = v69;
          *(v58 + 10) = v70;
          *(v58 + 11) = v71;
          *(v58 + 12) = v72;
          *(v58 + 13) = v73;
          *(v58 + 14) = v74;
          v58[120] = v75;
        }

        v6 = v168;
        v58[121] = v59[121];
        a1 = v170;
        v3 = v162;
        goto LABEL_98;
      }

LABEL_95:
      v76 = *(v59 + 5);
      *(v58 + 4) = *(v59 + 4);
      *(v58 + 5) = v76;
      *(v58 + 6) = *(v59 + 6);
      *(v58 + 106) = *(v59 + 106);
      v77 = *(v59 + 1);
      *v58 = *v59;
      *(v58 + 1) = v77;
      v78 = *(v59 + 3);
      *(v58 + 2) = *(v59 + 2);
      *(v58 + 3) = v78;
LABEL_98:
      *(a1 + v56[6]) = *(v3 + v56[6]);
      *(a1 + v56[7]) = *(v3 + v56[7]);
      *(a1 + v56[8]) = *(v3 + v56[8]);
      *(a1 + v56[9]) = *(v3 + v56[9]);
      *(a1 + v56[10]) = *(v3 + v56[10]);
      v79 = v56[11];
      v80 = *(v3 + v79);
      *(a1 + v79) = v80;
      v81 = v80;
      goto LABEL_129;
    }

    v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v23 = swift_getEnumCaseMultiPayload();
    v169 = v6;
    if (v23 <= 4)
    {
      if (v23 > 2)
      {
LABEL_69:
        v53 = sub_21DBF563C();
        (*(*(v53 - 8) + 16))(a1, v3, v53);
        swift_storeEnumTagMultiPayload();
        goto LABEL_100;
      }

      if (v23 != 1)
      {
        if (v23 == 2)
        {
          goto LABEL_69;
        }

        goto LABEL_99;
      }

LABEL_72:
      v54 = *v3;
      *a1 = *v3;
      v55 = v54;
      swift_storeEnumTagMultiPayload();
      goto LABEL_100;
    }

    if (v23 > 7)
    {
      if (v23 == 8 || v23 == 9)
      {
        goto LABEL_72;
      }
    }

    else if (v23 == 5 || v23 == 6)
    {
      goto LABEL_69;
    }

LABEL_99:
    memcpy(a1, v3, *(*(v22 - 8) + 64));
LABEL_100:
    v56 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v82 = v56[5];
    v58 = a1 + v82;
    v59 = v3 + v82;
    v83 = *(v3 + v82 + 8);
    if (v83)
    {
      v163 = v3;
      v171 = a1;
      *v58 = *v59;
      *(v58 + 1) = v83;
      v84 = *(v59 + 2);
      v85 = *(v59 + 3);
      v86 = *(v59 + 4);
      v87 = *(v59 + 5);
      v88 = *(v59 + 6);
      v89 = *(v59 + 7);
      v90 = v59[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v84, v85, v86, v87, v88, v89, v90);
      *(v58 + 2) = v84;
      *(v58 + 3) = v85;
      *(v58 + 4) = v86;
      *(v58 + 5) = v87;
      *(v58 + 6) = v88;
      *(v58 + 7) = v89;
      v58[64] = v90;
      *(v58 + 65) = *(v59 + 65);
      v91 = v59[120];
      if (v91 == 255)
      {
        *(v58 + 72) = *(v59 + 72);
        *(v58 + 88) = *(v59 + 88);
        *(v58 + 104) = *(v59 + 104);
        v58[120] = v59[120];
      }

      else
      {
        v92 = *(v59 + 9);
        v93 = *(v59 + 10);
        v94 = *(v59 + 11);
        v95 = *(v59 + 12);
        v96 = *(v59 + 13);
        v97 = *(v59 + 14);
        v98 = v91 & 1;
        sub_21D0FB960(v92, v93, v94, v95, v96, v97, v91 & 1);
        *(v58 + 9) = v92;
        *(v58 + 10) = v93;
        *(v58 + 11) = v94;
        *(v58 + 12) = v95;
        *(v58 + 13) = v96;
        *(v58 + 14) = v97;
        v58[120] = v98;
      }

      v6 = v169;
      v58[121] = v59[121];
      a1 = v171;
      v3 = v163;
      goto LABEL_98;
    }

    goto LABEL_95;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *a1 = *v3;
      *(a1 + 8) = *(v3 + 8);
      *(a1 + 9) = *(v3 + 9);
      v20 = v3[2];
      a1[2] = v20;
      v21 = v20;
      goto LABEL_129;
    }

    v31 = *v3;
    *a1 = *v3;
    v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v17 = *(v16 - 8);
    v32 = *(v17 + 48);
    v33 = v31;
    if (v32(v3 + v15, 1, v16))
    {
LABEL_28:
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(a1 + v15, v3 + v15, *(*(v27 - 8) + 64));
      goto LABEL_129;
    }

    v47 = swift_getEnumCaseMultiPayload();
    if (v47 > 4)
    {
      if (v47 <= 7)
      {
        if (v47 == 5 || v47 == 6)
        {
          goto LABEL_114;
        }

        goto LABEL_127;
      }

      if (v47 != 8 && v47 != 9)
      {
        goto LABEL_127;
      }

LABEL_113:
      v99 = *(v3 + v15);
      *(a1 + v15) = v99;
      v100 = v99;
      swift_storeEnumTagMultiPayload();
LABEL_128:
      (*(v17 + 56))(a1 + v15, 0, 1, v16);
      goto LABEL_129;
    }

    if (v47 <= 2)
    {
      if (v47 != 1)
      {
        if (v47 == 2)
        {
          goto LABEL_114;
        }

LABEL_127:
        memcpy(a1 + v15, v3 + v15, *(v17 + 64));
        goto LABEL_128;
      }

      goto LABEL_113;
    }

LABEL_114:
    v101 = sub_21DBF563C();
    (*(*(v101 - 8) + 16))(a1 + v15, v3 + v15, v101);
    swift_storeEnumTagMultiPayload();
    goto LABEL_128;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v28 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(v3, 1, v28))
    {
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
      memcpy(a1, v3, *(*(v30 - 8) + 64));
    }

    else
    {
      *a1 = *v3;
      v39 = *(v28 + 20);
      v40 = sub_21DBF6C1C();
      v161 = *(*(v40 - 8) + 16);
      sub_21DBF8E0C();
      v161(a1 + v39, v3 + v39, v40);
      (*(v29 + 56))(a1, 0, 1, v28);
    }

    v41 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
    v42 = (a1 + v41);
    v43 = (v3 + v41);
    v44 = v43[1];
    if (v44)
    {
      *v42 = *v43;
      v42[1] = v44;
      v45 = v43[2];
      v42[2] = v45;
      sub_21DBF8E0C();
      v46 = v45;
    }

    else
    {
      *v42 = *v43;
      v42[2] = v43[2];
    }

    goto LABEL_129;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v34 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v3, 1, v34))
    {
      v36 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(a1, v3, *(*(v36 - 8) + 64));
    }

    else
    {
      v48 = sub_21DBF563C();
      (*(*(v48 - 8) + 16))(a1, v3, v48);
      *(a1 + *(v34 + 20)) = *(v3 + *(v34 + 20));
      (*(v35 + 56))(a1, 0, 1, v34);
    }

    v49 = type metadata accessor for TTRTemplatePublicLinkData(0);
    *(a1 + *(v49 + 20)) = *(v3 + *(v49 + 20));
    goto LABEL_129;
  }

  if (EnumCaseMultiPayload != 8)
  {
LABEL_35:
    memcpy(a1, v3, *(*(v7 - 8) + 64));
    goto LABEL_130;
  }

  *a1 = *v3;
  v9 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v10 = sub_21DBF8D7C();
  (*(*(v10 - 8) + 16))(a1 + v9, v3 + v9, v10);
LABEL_129:
  swift_storeEnumTagMultiPayload();
LABEL_130:
  v102 = *(v6 + 20);
  v103 = (a1 + v102);
  v104 = (v3 + v102);
  v105 = type metadata accessor for TTRRemindersListItemSeparatorStates.ItemType(0);
  v106 = swift_getEnumCaseMultiPayload();
  if (v106 == 1)
  {
    v109 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v110 = swift_getEnumCaseMultiPayload();
    v173 = a1;
    if (v110 <= 4)
    {
      if (v110 > 2)
      {
LABEL_155:
        v114 = sub_21DBF563C();
        (*(*(v114 - 8) + 16))(v103, v104, v114);
        swift_storeEnumTagMultiPayload();
        goto LABEL_173;
      }

      if (v110 != 1)
      {
        if (v110 == 2)
        {
          goto LABEL_155;
        }

        goto LABEL_172;
      }

LABEL_158:
      v115 = *v104;
      *v103 = *v104;
      v116 = v115;
      swift_storeEnumTagMultiPayload();
      goto LABEL_173;
    }

    if (v110 > 7)
    {
      if (v110 == 8 || v110 == 9)
      {
        goto LABEL_158;
      }
    }

    else if (v110 == 5 || v110 == 6)
    {
      goto LABEL_155;
    }

LABEL_172:
    memcpy(v103, v104, *(*(v109 - 8) + 64));
LABEL_173:
    v117 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v137 = v117[5];
    v119 = v103 + v137;
    v120 = v104 + v137;
    v138 = *(v104 + v137 + 8);
    if (v138)
    {
      v165 = v104;
      v167 = v103;
      *v119 = *v120;
      *(v119 + 1) = v138;
      v139 = *(v120 + 2);
      v140 = *(v120 + 3);
      v141 = *(v120 + 4);
      v142 = *(v120 + 5);
      v143 = *(v120 + 6);
      v144 = *(v120 + 7);
      v145 = v120[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v139, v140, v141, v142, v143, v144, v145);
      *(v119 + 2) = v139;
      *(v119 + 3) = v140;
      *(v119 + 4) = v141;
      *(v119 + 5) = v142;
      *(v119 + 6) = v143;
      *(v119 + 7) = v144;
      v119[64] = v145;
      *(v119 + 65) = *(v120 + 65);
      v146 = v120[120];
      if (v146 == 255)
      {
        *(v119 + 72) = *(v120 + 72);
        *(v119 + 88) = *(v120 + 88);
        *(v119 + 104) = *(v120 + 104);
        v119[120] = v120[120];
      }

      else
      {
        v147 = *(v120 + 9);
        v148 = *(v120 + 10);
        v149 = *(v120 + 11);
        v150 = *(v120 + 12);
        v151 = *(v120 + 13);
        v152 = *(v120 + 14);
        v153 = v146 & 1;
        sub_21D0FB960(v147, v148, v149, v150, v151, v152, v146 & 1);
        *(v119 + 9) = v147;
        *(v119 + 10) = v148;
        *(v119 + 11) = v149;
        *(v119 + 12) = v150;
        *(v119 + 13) = v151;
        *(v119 + 14) = v152;
        v119[120] = v153;
      }

      a1 = v173;
      v119[121] = v120[121];
      v104 = v165;
      v103 = v167;
      goto LABEL_179;
    }

    goto LABEL_176;
  }

  if (!v106)
  {
    v107 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v108 = swift_getEnumCaseMultiPayload();
    v172 = a1;
    if (v108 <= 4)
    {
      if (v108 > 2)
      {
LABEL_151:
        v111 = sub_21DBF563C();
        (*(*(v111 - 8) + 16))(v103, v104, v111);
        swift_storeEnumTagMultiPayload();
        goto LABEL_166;
      }

      if (v108 != 1)
      {
        if (v108 == 2)
        {
          goto LABEL_151;
        }

        goto LABEL_165;
      }

LABEL_154:
      v112 = *v104;
      *v103 = *v104;
      v113 = v112;
      swift_storeEnumTagMultiPayload();
      goto LABEL_166;
    }

    if (v108 > 7)
    {
      if (v108 == 8 || v108 == 9)
      {
        goto LABEL_154;
      }
    }

    else if (v108 == 5 || v108 == 6)
    {
      goto LABEL_151;
    }

LABEL_165:
    memcpy(v103, v104, *(*(v107 - 8) + 64));
LABEL_166:
    v117 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v118 = v117[5];
    v119 = v103 + v118;
    v120 = v104 + v118;
    v121 = *(v104 + v118 + 8);
    if (v121)
    {
      v164 = v104;
      v166 = v103;
      *v119 = *v120;
      *(v119 + 1) = v121;
      v122 = *(v120 + 2);
      v123 = *(v120 + 3);
      v124 = *(v120 + 4);
      v125 = *(v120 + 5);
      v127 = *(v120 + 6);
      v126 = *(v120 + 7);
      v128 = v120[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v122, v123, v124, v125, v127, v126, v128);
      *(v119 + 2) = v122;
      *(v119 + 3) = v123;
      *(v119 + 4) = v124;
      *(v119 + 5) = v125;
      *(v119 + 6) = v127;
      *(v119 + 7) = v126;
      v119[64] = v128;
      *(v119 + 65) = *(v120 + 65);
      v129 = v120[120];
      if (v129 == 255)
      {
        *(v119 + 72) = *(v120 + 72);
        *(v119 + 88) = *(v120 + 88);
        *(v119 + 104) = *(v120 + 104);
        v119[120] = v120[120];
      }

      else
      {
        v130 = *(v120 + 9);
        v131 = *(v120 + 10);
        v132 = *(v120 + 11);
        v133 = *(v120 + 12);
        v134 = *(v120 + 13);
        v135 = *(v120 + 14);
        v136 = v129 & 1;
        sub_21D0FB960(v130, v131, v132, v133, v134, v135, v129 & 1);
        *(v119 + 9) = v130;
        *(v119 + 10) = v131;
        *(v119 + 11) = v132;
        *(v119 + 12) = v133;
        *(v119 + 13) = v134;
        *(v119 + 14) = v135;
        v119[120] = v136;
      }

      a1 = v172;
      v119[121] = v120[121];
      v104 = v164;
      v103 = v166;
      goto LABEL_179;
    }

LABEL_176:
    v154 = *(v120 + 5);
    *(v119 + 4) = *(v120 + 4);
    *(v119 + 5) = v154;
    *(v119 + 6) = *(v120 + 6);
    *(v119 + 106) = *(v120 + 106);
    v155 = *(v120 + 1);
    *v119 = *v120;
    *(v119 + 1) = v155;
    v156 = *(v120 + 3);
    *(v119 + 2) = *(v120 + 2);
    *(v119 + 3) = v156;
LABEL_179:
    *(v103 + v117[6]) = *(v104 + v117[6]);
    *(v103 + v117[7]) = *(v104 + v117[7]);
    *(v103 + v117[8]) = *(v104 + v117[8]);
    *(v103 + v117[9]) = *(v104 + v117[9]);
    *(v103 + v117[10]) = *(v104 + v117[10]);
    v157 = v117[11];
    v158 = *(v104 + v157);
    *(v103 + v157) = v158;
    v159 = v158;
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  memcpy(v103, v104, *(*(v105 - 8) + 64));
  return a1;
}

void sub_21D4A159C(id *a1, uint64_t a2)
{
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      switch(EnumCaseMultiPayload)
      {
        case 6:
          v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          if (!(*(*(v11 - 8) + 48))(a1, 1, v11))
          {

            v12 = *(v11 + 20);
            v13 = sub_21DBF6C1C();
            (*(*(v13 - 8) + 8))(a1 + v12, v13);
          }

          v14 = (a1 + *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20));
          if (v14[1])
          {
          }

          break;
        case 7:
          v15 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          if (!(*(*(v15 - 8) + 48))(a1, 1, v15))
          {
            v16 = sub_21DBF563C();
            (*(*(v16 - 8) + 8))(a1, v16);
          }

          break;
        case 8:
          v5 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
          v6 = sub_21DBF8D7C();
          (*(*(v6 - 8) + 8))(a1 + v5, v6);
          break;
      }

      goto LABEL_46;
    }

    if (EnumCaseMultiPayload != 4)
    {

      goto LABEL_46;
    }

LABEL_17:

    v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v9 - 8) + 48))(a1 + v8, 1, v9))
    {
      goto LABEL_46;
    }

    v10 = swift_getEnumCaseMultiPayload();
    if (v10 > 4)
    {
      if (v10 <= 7)
      {
        if (v10 != 5 && v10 != 6)
        {
          goto LABEL_46;
        }

LABEL_45:
        v21 = sub_21DBF563C();
        (*(*(v21 - 8) + 8))(a1 + v8, v21);
        goto LABEL_46;
      }

      if (v10 != 8 && v10 != 9)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v10 > 2)
      {
        goto LABEL_45;
      }

      if (v10 != 1)
      {
        if (v10 != 2)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }
    }

    goto LABEL_46;
  }

  if (EnumCaseMultiPayload > 1)
  {
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload > 1)
  {
    goto LABEL_46;
  }

  type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v7 = swift_getEnumCaseMultiPayload();
  if (v7 > 4)
  {
    if (v7 <= 7)
    {
      if (v7 != 5 && v7 != 6)
      {
        goto LABEL_41;
      }

      goto LABEL_37;
    }

    if (v7 != 8 && v7 != 9)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (v7 > 2)
  {
LABEL_37:
    v17 = sub_21DBF563C();
    (*(*(v17 - 8) + 8))(a1, v17);
    goto LABEL_41;
  }

  if (v7 == 1)
  {
LABEL_40:

    goto LABEL_41;
  }

  if (v7 == 2)
  {
    goto LABEL_37;
  }

LABEL_41:
  v18 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v19 = a1 + *(v18 + 20);
  if (*(v19 + 1))
  {

    sub_21D179EF0(*(v19 + 2), *(v19 + 3), *(v19 + 4), *(v19 + 5), *(v19 + 6), *(v19 + 7), v19[64]);
    v20 = v19[120];
    if (v20 != 255)
    {
      sub_21D1078C0(*(v19 + 9), *(v19 + 10), *(v19 + 11), *(v19 + 12), *(v19 + 13), *(v19 + 14), v20 & 1);
    }
  }

LABEL_46:
  v22 = (a1 + *(a2 + 20));
  type metadata accessor for TTRRemindersListItemSeparatorStates.ItemType(0);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    return;
  }

  type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v23 = swift_getEnumCaseMultiPayload();
  if (v23 > 4)
  {
    if (v23 <= 7)
    {
      if (v23 != 5 && v23 != 6)
      {
        goto LABEL_61;
      }

      goto LABEL_57;
    }

    if (v23 != 8 && v23 != 9)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  if (v23 > 2)
  {
LABEL_57:
    v24 = sub_21DBF563C();
    (*(*(v24 - 8) + 8))(v22, v24);
    goto LABEL_61;
  }

  if (v23 == 1)
  {
LABEL_60:

    goto LABEL_61;
  }

  if (v23 == 2)
  {
    goto LABEL_57;
  }

LABEL_61:
  v25 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v26 = v22 + *(v25 + 20);
  if (*(v26 + 1))
  {

    sub_21D179EF0(*(v26 + 2), *(v26 + 3), *(v26 + 4), *(v26 + 5), *(v26 + 6), *(v26 + 7), v26[64]);
    v27 = v26[120];
    if (v27 != 255)
    {
      sub_21D1078C0(*(v26 + 9), *(v26 + 10), *(v26 + 11), *(v26 + 12), *(v26 + 13), *(v26 + 14), v27 & 1);
    }
  }

  v28 = *(v22 + *(v25 + 44));
}

void **sub_21D4A1B24(void **a1, void **a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v23 = *(v15 + 48);
        v24 = v22;
        if (v23(a2 + v13, 1, v14))
        {
          goto LABEL_26;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 > 4)
        {
          if (v36 <= 7)
          {
            if (v36 == 5 || v36 == 6)
            {
              goto LABEL_112;
            }

            goto LABEL_125;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_125;
          }

          goto LABEL_111;
        }

        if (v36 > 2)
        {
          goto LABEL_112;
        }

        if (v36 == 1)
        {
          goto LABEL_111;
        }

        if (v36 != 2)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v12 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v16 = *(v15 + 48);
        v17 = v12;
        if (v16(a2 + v13, 1, v14))
        {
          goto LABEL_26;
        }

        v35 = swift_getEnumCaseMultiPayload();
        if (v35 > 4)
        {
          if (v35 <= 7)
          {
            if (v35 == 5 || v35 == 6)
            {
              goto LABEL_112;
            }

            goto LABEL_125;
          }

          if (v35 != 8 && v35 != 9)
          {
            goto LABEL_125;
          }

          goto LABEL_111;
        }

        if (v35 > 2)
        {
          goto LABEL_112;
        }

        if (v35 == 1)
        {
          goto LABEL_111;
        }

        if (v35 != 2)
        {
          goto LABEL_125;
        }
      }

      goto LABEL_112;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_33;
      }

      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      v166 = a3;
      if (v11 <= 4)
      {
        if (v11 > 2)
        {
LABEL_63:
          v49 = sub_21DBF563C();
          (*(*(v49 - 8) + 16))(a1, a2, v49);
          swift_storeEnumTagMultiPayload();
          goto LABEL_90;
        }

        if (v11 != 1)
        {
          if (v11 == 2)
          {
            goto LABEL_63;
          }

          goto LABEL_89;
        }

LABEL_66:
        v50 = *a2;
        *a1 = *a2;
        v51 = v50;
        swift_storeEnumTagMultiPayload();
        goto LABEL_90;
      }

      if (v11 > 7)
      {
        if (v11 == 8 || v11 == 9)
        {
          goto LABEL_66;
        }
      }

      else if (v11 == 5 || v11 == 6)
      {
        goto LABEL_63;
      }

LABEL_89:
      memcpy(a1, a2, *(*(v10 - 8) + 64));
LABEL_90:
      v55 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v56 = v55[5];
      v57 = a1 + v56;
      v58 = a2 + v56;
      v59 = *(a2 + v56 + 8);
      if (v59)
      {
        v160 = a2;
        v168 = a1;
        *v57 = *v58;
        *(v57 + 1) = v59;
        v60 = *(v58 + 2);
        v61 = *(v58 + 3);
        v62 = *(v58 + 4);
        v63 = *(v58 + 5);
        v64 = *(v58 + 6);
        v65 = *(v58 + 7);
        v66 = v58[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v60, v61, v62, v63, v64, v65, v66);
        *(v57 + 2) = v60;
        *(v57 + 3) = v61;
        *(v57 + 4) = v62;
        *(v57 + 5) = v63;
        *(v57 + 6) = v64;
        *(v57 + 7) = v65;
        v57[64] = v66;
        *(v57 + 65) = *(v58 + 65);
        v67 = v58[120];
        if (v67 == 255)
        {
          *(v57 + 72) = *(v58 + 72);
          *(v57 + 88) = *(v58 + 88);
          *(v57 + 104) = *(v58 + 104);
          v57[120] = v58[120];
        }

        else
        {
          v68 = *(v58 + 9);
          v69 = *(v58 + 10);
          v70 = *(v58 + 11);
          v71 = *(v58 + 12);
          v72 = *(v58 + 13);
          v73 = *(v58 + 14);
          v74 = v67 & 1;
          sub_21D0FB960(v68, v69, v70, v71, v72, v73, v67 & 1);
          *(v57 + 9) = v68;
          *(v57 + 10) = v69;
          *(v57 + 11) = v70;
          *(v57 + 12) = v71;
          *(v57 + 13) = v72;
          *(v57 + 14) = v73;
          v57[120] = v74;
        }

        a3 = v166;
        v57[121] = v58[121];
        a1 = v168;
        a2 = v160;
        goto LABEL_96;
      }

LABEL_93:
      v75 = *(v58 + 5);
      *(v57 + 4) = *(v58 + 4);
      *(v57 + 5) = v75;
      *(v57 + 6) = *(v58 + 6);
      *(v57 + 106) = *(v58 + 106);
      v76 = *(v58 + 1);
      *v57 = *v58;
      *(v57 + 1) = v76;
      v77 = *(v58 + 3);
      *(v57 + 2) = *(v58 + 2);
      *(v57 + 3) = v77;
LABEL_96:
      *(a1 + v55[6]) = *(a2 + v55[6]);
      *(a1 + v55[7]) = *(a2 + v55[7]);
      *(a1 + v55[8]) = *(a2 + v55[8]);
      *(a1 + v55[9]) = *(a2 + v55[9]);
      *(a1 + v55[10]) = *(a2 + v55[10]);
      v78 = v55[11];
      v79 = *(a2 + v78);
      *(a1 + v78) = v79;
      v80 = v79;
      goto LABEL_127;
    }

    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    v167 = a3;
    if (v21 <= 4)
    {
      if (v21 > 2)
      {
LABEL_67:
        v52 = sub_21DBF563C();
        (*(*(v52 - 8) + 16))(a1, a2, v52);
        swift_storeEnumTagMultiPayload();
        goto LABEL_98;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          goto LABEL_67;
        }

        goto LABEL_97;
      }

LABEL_70:
      v53 = *a2;
      *a1 = *a2;
      v54 = v53;
      swift_storeEnumTagMultiPayload();
      goto LABEL_98;
    }

    if (v21 > 7)
    {
      if (v21 == 8 || v21 == 9)
      {
        goto LABEL_70;
      }
    }

    else if (v21 == 5 || v21 == 6)
    {
      goto LABEL_67;
    }

LABEL_97:
    memcpy(a1, a2, *(*(v20 - 8) + 64));
LABEL_98:
    v55 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v81 = v55[5];
    v57 = a1 + v81;
    v58 = a2 + v81;
    v82 = *(a2 + v81 + 8);
    if (v82)
    {
      v161 = a2;
      v169 = a1;
      *v57 = *v58;
      *(v57 + 1) = v82;
      v83 = *(v58 + 2);
      v84 = *(v58 + 3);
      v85 = *(v58 + 4);
      v86 = *(v58 + 5);
      v88 = *(v58 + 6);
      v87 = *(v58 + 7);
      v89 = v58[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v83, v84, v85, v86, v88, v87, v89);
      *(v57 + 2) = v83;
      *(v57 + 3) = v84;
      *(v57 + 4) = v85;
      *(v57 + 5) = v86;
      *(v57 + 6) = v88;
      *(v57 + 7) = v87;
      v57[64] = v89;
      *(v57 + 65) = *(v58 + 65);
      v90 = v58[120];
      if (v90 == 255)
      {
        *(v57 + 72) = *(v58 + 72);
        *(v57 + 88) = *(v58 + 88);
        *(v57 + 104) = *(v58 + 104);
        v57[120] = v58[120];
      }

      else
      {
        v91 = *(v58 + 9);
        v92 = *(v58 + 10);
        v93 = *(v58 + 11);
        v94 = *(v58 + 12);
        v95 = *(v58 + 13);
        v96 = *(v58 + 14);
        v97 = v90 & 1;
        sub_21D0FB960(v91, v92, v93, v94, v95, v96, v90 & 1);
        *(v57 + 9) = v91;
        *(v57 + 10) = v92;
        *(v57 + 11) = v93;
        *(v57 + 12) = v94;
        *(v57 + 13) = v95;
        *(v57 + 14) = v96;
        v57[120] = v97;
      }

      a3 = v167;
      v57[121] = v58[121];
      a1 = v169;
      a2 = v161;
      goto LABEL_96;
    }

    goto LABEL_93;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 9) = *(a2 + 9);
      v18 = a2[2];
      a1[2] = v18;
      v19 = v18;
      goto LABEL_127;
    }

    v29 = *a2;
    *a1 = *a2;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    v30 = *(v15 + 48);
    v31 = v29;
    if (v30(a2 + v13, 1, v14))
    {
LABEL_26:
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(a1 + v13, a2 + v13, *(*(v25 - 8) + 64));
      goto LABEL_127;
    }

    v46 = swift_getEnumCaseMultiPayload();
    if (v46 > 4)
    {
      if (v46 <= 7)
      {
        if (v46 == 5 || v46 == 6)
        {
          goto LABEL_112;
        }

        goto LABEL_125;
      }

      if (v46 != 8 && v46 != 9)
      {
        goto LABEL_125;
      }

LABEL_111:
      v98 = *(a2 + v13);
      *(a1 + v13) = v98;
      v99 = v98;
      swift_storeEnumTagMultiPayload();
LABEL_126:
      (*(v15 + 56))(a1 + v13, 0, 1, v14);
      goto LABEL_127;
    }

    if (v46 <= 2)
    {
      if (v46 != 1)
      {
        if (v46 == 2)
        {
          goto LABEL_112;
        }

LABEL_125:
        memcpy(a1 + v13, a2 + v13, *(v15 + 64));
        goto LABEL_126;
      }

      goto LABEL_111;
    }

LABEL_112:
    v100 = sub_21DBF563C();
    (*(*(v100 - 8) + 16))(a1 + v13, a2 + v13, v100);
    swift_storeEnumTagMultiPayload();
    goto LABEL_126;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v26 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(a2, 1, v26))
    {
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
      memcpy(a1, a2, *(*(v28 - 8) + 64));
    }

    else
    {
      *a1 = *a2;
      v37 = *(v26 + 20);
      v38 = sub_21DBF6C1C();
      v39 = *(*(v38 - 8) + 16);
      sub_21DBF8E0C();
      v39(a1 + v37, a2 + v37, v38);
      (*(v27 + 56))(a1, 0, 1, v26);
    }

    v40 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
    v41 = (a1 + v40);
    v42 = (a2 + v40);
    v43 = v42[1];
    if (v43)
    {
      *v41 = *v42;
      v41[1] = v43;
      v44 = v42[2];
      v41[2] = v44;
      sub_21DBF8E0C();
      v45 = v44;
    }

    else
    {
      *v41 = *v42;
      v41[2] = v42[2];
    }

    goto LABEL_127;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v32 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(a2, 1, v32))
    {
      v34 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(a1, a2, *(*(v34 - 8) + 64));
    }

    else
    {
      v47 = sub_21DBF563C();
      (*(*(v47 - 8) + 16))(a1, a2, v47);
      *(a1 + *(v32 + 20)) = *(a2 + *(v32 + 20));
      (*(v33 + 56))(a1, 0, 1, v32);
    }

    v48 = type metadata accessor for TTRTemplatePublicLinkData(0);
    *(a1 + *(v48 + 20)) = *(a2 + *(v48 + 20));
    goto LABEL_127;
  }

  if (EnumCaseMultiPayload != 8)
  {
LABEL_33:
    memcpy(a1, a2, *(*(v6 - 8) + 64));
    goto LABEL_128;
  }

  *a1 = *a2;
  v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v9 = sub_21DBF8D7C();
  (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
LABEL_127:
  swift_storeEnumTagMultiPayload();
LABEL_128:
  v101 = *(a3 + 20);
  v102 = (a1 + v101);
  v103 = (a2 + v101);
  v104 = type metadata accessor for TTRRemindersListItemSeparatorStates.ItemType(0);
  v105 = swift_getEnumCaseMultiPayload();
  if (v105 == 1)
  {
    v108 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v109 = swift_getEnumCaseMultiPayload();
    if (v109 <= 4)
    {
      if (v109 > 2)
      {
LABEL_153:
        v113 = sub_21DBF563C();
        (*(*(v113 - 8) + 16))(v102, v103, v113);
        swift_storeEnumTagMultiPayload();
        goto LABEL_171;
      }

      if (v109 != 1)
      {
        if (v109 == 2)
        {
          goto LABEL_153;
        }

        goto LABEL_170;
      }

LABEL_156:
      v114 = *v103;
      *v102 = *v103;
      v115 = v114;
      swift_storeEnumTagMultiPayload();
      goto LABEL_171;
    }

    if (v109 > 7)
    {
      if (v109 == 8 || v109 == 9)
      {
        goto LABEL_156;
      }
    }

    else if (v109 == 5 || v109 == 6)
    {
      goto LABEL_153;
    }

LABEL_170:
    memcpy(v102, v103, *(*(v108 - 8) + 64));
LABEL_171:
    v116 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v136 = v116[5];
    v118 = v102 + v136;
    v119 = v103 + v136;
    v137 = *(v103 + v136 + 8);
    if (v137)
    {
      v163 = v103;
      v165 = v102;
      v171 = a1;
      *v118 = *v119;
      *(v118 + 1) = v137;
      v138 = *(v119 + 2);
      v139 = *(v119 + 3);
      v140 = *(v119 + 4);
      v141 = *(v119 + 5);
      v142 = *(v119 + 6);
      v143 = *(v119 + 7);
      v144 = v119[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v138, v139, v140, v141, v142, v143, v144);
      *(v118 + 2) = v138;
      *(v118 + 3) = v139;
      *(v118 + 4) = v140;
      *(v118 + 5) = v141;
      *(v118 + 6) = v142;
      *(v118 + 7) = v143;
      v118[64] = v144;
      *(v118 + 65) = *(v119 + 65);
      v145 = v119[120];
      if (v145 == 255)
      {
        *(v118 + 72) = *(v119 + 72);
        *(v118 + 88) = *(v119 + 88);
        *(v118 + 104) = *(v119 + 104);
        v118[120] = v119[120];
      }

      else
      {
        v146 = *(v119 + 9);
        v147 = *(v119 + 10);
        v148 = *(v119 + 11);
        v149 = *(v119 + 12);
        v150 = *(v119 + 13);
        v151 = *(v119 + 14);
        v152 = v145 & 1;
        sub_21D0FB960(v146, v147, v148, v149, v150, v151, v145 & 1);
        *(v118 + 9) = v146;
        *(v118 + 10) = v147;
        *(v118 + 11) = v148;
        *(v118 + 12) = v149;
        *(v118 + 13) = v150;
        *(v118 + 14) = v151;
        v118[120] = v152;
      }

      a1 = v171;
      v118[121] = v119[121];
      v103 = v163;
      v102 = v165;
      goto LABEL_177;
    }

    goto LABEL_174;
  }

  if (!v105)
  {
    v106 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v107 = swift_getEnumCaseMultiPayload();
    v170 = a1;
    if (v107 <= 4)
    {
      if (v107 > 2)
      {
LABEL_149:
        v110 = sub_21DBF563C();
        (*(*(v110 - 8) + 16))(v102, v103, v110);
        swift_storeEnumTagMultiPayload();
        goto LABEL_164;
      }

      if (v107 != 1)
      {
        if (v107 == 2)
        {
          goto LABEL_149;
        }

        goto LABEL_163;
      }

LABEL_152:
      v111 = *v103;
      *v102 = *v103;
      v112 = v111;
      swift_storeEnumTagMultiPayload();
      goto LABEL_164;
    }

    if (v107 > 7)
    {
      if (v107 == 8 || v107 == 9)
      {
        goto LABEL_152;
      }
    }

    else if (v107 == 5 || v107 == 6)
    {
      goto LABEL_149;
    }

LABEL_163:
    memcpy(v102, v103, *(*(v106 - 8) + 64));
LABEL_164:
    v116 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v117 = v116[5];
    v118 = v102 + v117;
    v119 = v103 + v117;
    v120 = *(v103 + v117 + 8);
    if (v120)
    {
      v162 = v103;
      v164 = v102;
      *v118 = *v119;
      *(v118 + 1) = v120;
      v121 = *(v119 + 2);
      v122 = *(v119 + 3);
      v123 = *(v119 + 4);
      v124 = *(v119 + 5);
      v126 = *(v119 + 6);
      v125 = *(v119 + 7);
      v127 = v119[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v121, v122, v123, v124, v126, v125, v127);
      *(v118 + 2) = v121;
      *(v118 + 3) = v122;
      *(v118 + 4) = v123;
      *(v118 + 5) = v124;
      *(v118 + 6) = v126;
      *(v118 + 7) = v125;
      v118[64] = v127;
      *(v118 + 65) = *(v119 + 65);
      v128 = v119[120];
      if (v128 == 255)
      {
        *(v118 + 72) = *(v119 + 72);
        *(v118 + 88) = *(v119 + 88);
        *(v118 + 104) = *(v119 + 104);
        v118[120] = v119[120];
      }

      else
      {
        v129 = *(v119 + 9);
        v130 = *(v119 + 10);
        v131 = *(v119 + 11);
        v132 = *(v119 + 12);
        v133 = *(v119 + 13);
        v134 = *(v119 + 14);
        v135 = v128 & 1;
        sub_21D0FB960(v129, v130, v131, v132, v133, v134, v128 & 1);
        *(v118 + 9) = v129;
        *(v118 + 10) = v130;
        *(v118 + 11) = v131;
        *(v118 + 12) = v132;
        *(v118 + 13) = v133;
        *(v118 + 14) = v134;
        v118[120] = v135;
      }

      a1 = v170;
      v118[121] = v119[121];
      v103 = v162;
      v102 = v164;
      goto LABEL_177;
    }

LABEL_174:
    v153 = *(v119 + 5);
    *(v118 + 4) = *(v119 + 4);
    *(v118 + 5) = v153;
    *(v118 + 6) = *(v119 + 6);
    *(v118 + 106) = *(v119 + 106);
    v154 = *(v119 + 1);
    *v118 = *v119;
    *(v118 + 1) = v154;
    v155 = *(v119 + 3);
    *(v118 + 2) = *(v119 + 2);
    *(v118 + 3) = v155;
LABEL_177:
    *(v102 + v116[6]) = *(v103 + v116[6]);
    *(v102 + v116[7]) = *(v103 + v116[7]);
    *(v102 + v116[8]) = *(v103 + v116[8]);
    *(v102 + v116[9]) = *(v103 + v116[9]);
    *(v102 + v116[10]) = *(v103 + v116[10]);
    v156 = v116[11];
    v157 = *(v103 + v156);
    *(v102 + v156) = v157;
    v158 = v157;
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  memcpy(v102, v103, *(*(v104 - 8) + 64));
  return a1;
}

void *sub_21D4A398C(uint64_t a1, void **a2, uint64_t a3)
{
  v3 = a1;
  if (a1 == a2)
  {
    return v3;
  }

  v5 = a2;
  sub_21D106AF8(a1, type metadata accessor for TTRRemindersListViewModel.Item);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22 = *v5;
        *v3 = *v5;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v23 = *(v15 + 48);
        v24 = v22;
        if (v23(v5 + v13, 1, v14))
        {
          goto LABEL_27;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 > 4)
        {
          if (v36 <= 7)
          {
            if (v36 == 5 || v36 == 6)
            {
              goto LABEL_113;
            }

            goto LABEL_126;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_126;
          }

          goto LABEL_112;
        }

        if (v36 > 2)
        {
          goto LABEL_113;
        }

        if (v36 == 1)
        {
          goto LABEL_112;
        }

        if (v36 != 2)
        {
          goto LABEL_126;
        }
      }

      else
      {
        v12 = *v5;
        *v3 = *v5;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v16 = *(v15 + 48);
        v17 = v12;
        if (v16(v5 + v13, 1, v14))
        {
          goto LABEL_27;
        }

        v35 = swift_getEnumCaseMultiPayload();
        if (v35 > 4)
        {
          if (v35 <= 7)
          {
            if (v35 == 5 || v35 == 6)
            {
              goto LABEL_113;
            }

            goto LABEL_126;
          }

          if (v35 != 8 && v35 != 9)
          {
            goto LABEL_126;
          }

          goto LABEL_112;
        }

        if (v35 > 2)
        {
          goto LABEL_113;
        }

        if (v35 == 1)
        {
          goto LABEL_112;
        }

        if (v35 != 2)
        {
          goto LABEL_126;
        }
      }

      goto LABEL_113;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_34;
      }

      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      v180 = a3;
      if (v11 <= 4)
      {
        if (v11 > 2)
        {
LABEL_64:
          v49 = sub_21DBF563C();
          (*(*(v49 - 8) + 16))(v3, v5, v49);
          swift_storeEnumTagMultiPayload();
          goto LABEL_91;
        }

        if (v11 != 1)
        {
          if (v11 == 2)
          {
            goto LABEL_64;
          }

          goto LABEL_90;
        }

LABEL_67:
        v50 = *v5;
        *v3 = *v5;
        v51 = v50;
        swift_storeEnumTagMultiPayload();
        goto LABEL_91;
      }

      if (v11 > 7)
      {
        if (v11 == 8 || v11 == 9)
        {
          goto LABEL_67;
        }
      }

      else if (v11 == 5 || v11 == 6)
      {
        goto LABEL_64;
      }

LABEL_90:
      memcpy(v3, v5, *(*(v10 - 8) + 64));
LABEL_91:
      v55 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v56 = v55[5];
      v57 = v3 + v56;
      v58 = v5 + v56;
      if (*(v5 + v56 + 8))
      {
        v174 = v5;
        v181 = v3;
        *v57 = *v58;
        *(v57 + 1) = *(v58 + 1);
        v59 = *(v58 + 2);
        v60 = *(v58 + 3);
        v61 = *(v58 + 4);
        v62 = *(v58 + 5);
        v63 = *(v58 + 6);
        v64 = *(v58 + 7);
        v65 = v58[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v59, v60, v61, v62, v63, v64, v65);
        *(v57 + 2) = v59;
        *(v57 + 3) = v60;
        *(v57 + 4) = v61;
        *(v57 + 5) = v62;
        *(v57 + 6) = v63;
        *(v57 + 7) = v64;
        v57[64] = v65;
        v57[65] = v58[65];
        v57[66] = v58[66];
        v57[67] = v58[67];
        v57[68] = v58[68];
        v66 = v58[120];
        if (v66 == 255)
        {
          v80 = *(v58 + 72);
          v81 = *(v58 + 88);
          v82 = *(v58 + 104);
          v57[120] = v58[120];
          *(v57 + 104) = v82;
          *(v57 + 88) = v81;
          *(v57 + 72) = v80;
        }

        else
        {
          v67 = *(v58 + 9);
          v68 = *(v58 + 10);
          v69 = *(v58 + 11);
          v70 = *(v58 + 12);
          v71 = *(v58 + 13);
          v72 = *(v58 + 14);
          v73 = v66 & 1;
          sub_21D0FB960(v67, v68, v69, v70, v71, v72, v66 & 1);
          *(v57 + 9) = v67;
          *(v57 + 10) = v68;
          *(v57 + 11) = v69;
          *(v57 + 12) = v70;
          *(v57 + 13) = v71;
          *(v57 + 14) = v72;
          v57[120] = v73;
        }

        a3 = v180;
        v57[121] = v58[121];
        v3 = v181;
        v5 = v174;
        goto LABEL_97;
      }

LABEL_94:
      v74 = *v58;
      v75 = *(v58 + 1);
      v76 = *(v58 + 3);
      *(v57 + 2) = *(v58 + 2);
      *(v57 + 3) = v76;
      *v57 = v74;
      *(v57 + 1) = v75;
      v77 = *(v58 + 4);
      v78 = *(v58 + 5);
      v79 = *(v58 + 6);
      *(v57 + 106) = *(v58 + 106);
      *(v57 + 5) = v78;
      *(v57 + 6) = v79;
      *(v57 + 4) = v77;
      a3 = v180;
LABEL_97:
      *(v3 + v55[6]) = *(v5 + v55[6]);
      *(v3 + v55[7]) = *(v5 + v55[7]);
      *(v3 + v55[8]) = *(v5 + v55[8]);
      *(v3 + v55[9]) = *(v5 + v55[9]);
      *(v3 + v55[10]) = *(v5 + v55[10]);
      v83 = v55[11];
      v84 = *(v5 + v83);
      *(v3 + v83) = v84;
      v85 = v84;
      goto LABEL_128;
    }

    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    v180 = a3;
    if (v21 <= 4)
    {
      if (v21 > 2)
      {
LABEL_68:
        v52 = sub_21DBF563C();
        (*(*(v52 - 8) + 16))(v3, v5, v52);
        swift_storeEnumTagMultiPayload();
        goto LABEL_99;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          goto LABEL_68;
        }

        goto LABEL_98;
      }

LABEL_71:
      v53 = *v5;
      *v3 = *v5;
      v54 = v53;
      swift_storeEnumTagMultiPayload();
      goto LABEL_99;
    }

    if (v21 > 7)
    {
      if (v21 == 8 || v21 == 9)
      {
        goto LABEL_71;
      }
    }

    else if (v21 == 5 || v21 == 6)
    {
      goto LABEL_68;
    }

LABEL_98:
    memcpy(v3, v5, *(*(v20 - 8) + 64));
LABEL_99:
    v55 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v86 = v55[5];
    v57 = v3 + v86;
    v58 = v5 + v86;
    if (*(v5 + v86 + 8))
    {
      v175 = v5;
      v182 = v3;
      *v57 = *v58;
      *(v57 + 1) = *(v58 + 1);
      v87 = *(v58 + 2);
      v88 = *(v58 + 3);
      v89 = *(v58 + 4);
      v90 = *(v58 + 5);
      v91 = *(v58 + 6);
      v92 = *(v58 + 7);
      v93 = v58[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v87, v88, v89, v90, v91, v92, v93);
      *(v57 + 2) = v87;
      *(v57 + 3) = v88;
      *(v57 + 4) = v89;
      *(v57 + 5) = v90;
      *(v57 + 6) = v91;
      *(v57 + 7) = v92;
      v57[64] = v93;
      v57[65] = v58[65];
      v57[66] = v58[66];
      v57[67] = v58[67];
      v57[68] = v58[68];
      v94 = v58[120];
      if (v94 == 255)
      {
        v102 = *(v58 + 72);
        v103 = *(v58 + 88);
        v104 = *(v58 + 104);
        v57[120] = v58[120];
        *(v57 + 104) = v104;
        *(v57 + 88) = v103;
        *(v57 + 72) = v102;
      }

      else
      {
        v95 = *(v58 + 9);
        v96 = *(v58 + 10);
        v97 = *(v58 + 11);
        v98 = *(v58 + 12);
        v99 = *(v58 + 13);
        v100 = *(v58 + 14);
        v101 = v94 & 1;
        sub_21D0FB960(v95, v96, v97, v98, v99, v100, v94 & 1);
        *(v57 + 9) = v95;
        *(v57 + 10) = v96;
        *(v57 + 11) = v97;
        *(v57 + 12) = v98;
        *(v57 + 13) = v99;
        *(v57 + 14) = v100;
        v57[120] = v101;
      }

      a3 = v180;
      v57[121] = v58[121];
      v3 = v182;
      v5 = v175;
      goto LABEL_97;
    }

    goto LABEL_94;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *v3 = *v5;
      *(v3 + 8) = *(v5 + 8);
      *(v3 + 9) = *(v5 + 9);
      *(v3 + 10) = *(v5 + 10);
      v18 = v5[2];
      v3[2] = v18;
      v19 = v18;
      goto LABEL_128;
    }

    v29 = *v5;
    *v3 = *v5;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    v30 = *(v15 + 48);
    v31 = v29;
    if (v30(v5 + v13, 1, v14))
    {
LABEL_27:
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(v3 + v13, v5 + v13, *(*(v25 - 8) + 64));
      goto LABEL_128;
    }

    v46 = swift_getEnumCaseMultiPayload();
    if (v46 > 4)
    {
      if (v46 <= 7)
      {
        if (v46 == 5 || v46 == 6)
        {
          goto LABEL_113;
        }

        goto LABEL_126;
      }

      if (v46 != 8 && v46 != 9)
      {
        goto LABEL_126;
      }

LABEL_112:
      v105 = *(v5 + v13);
      *(v3 + v13) = v105;
      v106 = v105;
      swift_storeEnumTagMultiPayload();
LABEL_127:
      (*(v15 + 56))(v3 + v13, 0, 1, v14);
      goto LABEL_128;
    }

    if (v46 <= 2)
    {
      if (v46 != 1)
      {
        if (v46 == 2)
        {
          goto LABEL_113;
        }

LABEL_126:
        memcpy(v3 + v13, v5 + v13, *(v15 + 64));
        goto LABEL_127;
      }

      goto LABEL_112;
    }

LABEL_113:
    v107 = sub_21DBF563C();
    (*(*(v107 - 8) + 16))(v3 + v13, v5 + v13, v107);
    swift_storeEnumTagMultiPayload();
    goto LABEL_127;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v26 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v5, 1, v26))
    {
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
      memcpy(v3, v5, *(*(v28 - 8) + 64));
    }

    else
    {
      *v3 = *v5;
      v37 = *(v26 + 20);
      v38 = sub_21DBF6C1C();
      v39 = *(*(v38 - 8) + 16);
      sub_21DBF8E0C();
      v39(v3 + v37, v5 + v37, v38);
      (*(v27 + 56))(v3, 0, 1, v26);
    }

    v40 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
    v41 = (v3 + v40);
    v42 = (v5 + v40);
    if (v42[1])
    {
      *v41 = *v42;
      v41[1] = v42[1];
      v43 = v42[2];
      v41[2] = v43;
      sub_21DBF8E0C();
      v44 = v43;
    }

    else
    {
      v45 = *v42;
      v41[2] = v42[2];
      *v41 = v45;
    }

    goto LABEL_128;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v32 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v5, 1, v32))
    {
      v34 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(v3, v5, *(*(v34 - 8) + 64));
    }

    else
    {
      v47 = sub_21DBF563C();
      (*(*(v47 - 8) + 16))(v3, v5, v47);
      *(v3 + *(v32 + 20)) = *(v5 + *(v32 + 20));
      (*(v33 + 56))(v3, 0, 1, v32);
    }

    v48 = type metadata accessor for TTRTemplatePublicLinkData(0);
    *(v3 + *(v48 + 20)) = *(v5 + *(v48 + 20));
    goto LABEL_128;
  }

  if (EnumCaseMultiPayload != 8)
  {
LABEL_34:
    memcpy(v3, v5, *(*(v6 - 8) + 64));
    goto LABEL_129;
  }

  *v3 = *v5;
  v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v9 = sub_21DBF8D7C();
  (*(*(v9 - 8) + 16))(v3 + v8, v5 + v8, v9);
LABEL_128:
  swift_storeEnumTagMultiPayload();
LABEL_129:
  v108 = *(a3 + 20);
  v109 = (v3 + v108);
  v110 = (v5 + v108);
  sub_21D106AF8(v3 + v108, type metadata accessor for TTRRemindersListItemSeparatorStates.ItemType);
  v111 = type metadata accessor for TTRRemindersListItemSeparatorStates.ItemType(0);
  v112 = swift_getEnumCaseMultiPayload();
  if (v112 == 1)
  {
    v115 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v116 = swift_getEnumCaseMultiPayload();
    v183 = v3;
    if (v116 <= 4)
    {
      if (v116 > 2)
      {
LABEL_154:
        v120 = sub_21DBF563C();
        (*(*(v120 - 8) + 16))(v109, v110, v120);
        swift_storeEnumTagMultiPayload();
        goto LABEL_172;
      }

      if (v116 != 1)
      {
        if (v116 == 2)
        {
          goto LABEL_154;
        }

        goto LABEL_171;
      }

LABEL_157:
      v121 = *v110;
      *v109 = *v110;
      v122 = v121;
      swift_storeEnumTagMultiPayload();
      goto LABEL_172;
    }

    if (v116 > 7)
    {
      if (v116 == 8 || v116 == 9)
      {
        goto LABEL_157;
      }
    }

    else if (v116 == 5 || v116 == 6)
    {
      goto LABEL_154;
    }

LABEL_171:
    memcpy(v109, v110, *(*(v115 - 8) + 64));
LABEL_172:
    v123 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v145 = v123[5];
    v125 = v109 + v145;
    v126 = v110 + v145;
    if (*(v110 + v145 + 8))
    {
      v177 = v110;
      v179 = v109;
      *v125 = *v126;
      *(v125 + 1) = *(v126 + 1);
      v146 = *(v126 + 2);
      v147 = *(v126 + 3);
      v148 = *(v126 + 4);
      v149 = *(v126 + 5);
      v150 = *(v126 + 6);
      v151 = *(v126 + 7);
      v152 = v126[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v146, v147, v148, v149, v150, v151, v152);
      *(v125 + 2) = v146;
      *(v125 + 3) = v147;
      *(v125 + 4) = v148;
      *(v125 + 5) = v149;
      *(v125 + 6) = v150;
      *(v125 + 7) = v151;
      v125[64] = v152;
      v125[65] = v126[65];
      v125[66] = v126[66];
      v125[67] = v126[67];
      v125[68] = v126[68];
      v153 = v126[120];
      if (v153 == 255)
      {
        v167 = *(v126 + 72);
        v168 = *(v126 + 88);
        v169 = *(v126 + 104);
        v125[120] = v126[120];
        *(v125 + 104) = v169;
        *(v125 + 88) = v168;
        *(v125 + 72) = v167;
      }

      else
      {
        v154 = *(v126 + 9);
        v155 = *(v126 + 10);
        v156 = *(v126 + 11);
        v157 = *(v126 + 12);
        v158 = *(v126 + 13);
        v159 = *(v126 + 14);
        v160 = v153 & 1;
        sub_21D0FB960(v154, v155, v156, v157, v158, v159, v153 & 1);
        *(v125 + 9) = v154;
        *(v125 + 10) = v155;
        *(v125 + 11) = v156;
        *(v125 + 12) = v157;
        *(v125 + 13) = v158;
        *(v125 + 14) = v159;
        v125[120] = v160;
      }

      v3 = v183;
      v125[121] = v126[121];
      v110 = v177;
      v109 = v179;
      goto LABEL_178;
    }

    goto LABEL_175;
  }

  if (!v112)
  {
    v113 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v114 = swift_getEnumCaseMultiPayload();
    v183 = v3;
    if (v114 <= 4)
    {
      if (v114 > 2)
      {
LABEL_150:
        v117 = sub_21DBF563C();
        (*(*(v117 - 8) + 16))(v109, v110, v117);
        swift_storeEnumTagMultiPayload();
        goto LABEL_165;
      }

      if (v114 != 1)
      {
        if (v114 == 2)
        {
          goto LABEL_150;
        }

        goto LABEL_164;
      }

LABEL_153:
      v118 = *v110;
      *v109 = *v110;
      v119 = v118;
      swift_storeEnumTagMultiPayload();
      goto LABEL_165;
    }

    if (v114 > 7)
    {
      if (v114 == 8 || v114 == 9)
      {
        goto LABEL_153;
      }
    }

    else if (v114 == 5 || v114 == 6)
    {
      goto LABEL_150;
    }

LABEL_164:
    memcpy(v109, v110, *(*(v113 - 8) + 64));
LABEL_165:
    v123 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v124 = v123[5];
    v125 = v109 + v124;
    v126 = v110 + v124;
    if (*(v110 + v124 + 8))
    {
      v176 = v110;
      v178 = v109;
      *v125 = *v126;
      *(v125 + 1) = *(v126 + 1);
      v127 = *(v126 + 2);
      v128 = *(v126 + 3);
      v129 = *(v126 + 4);
      v130 = *(v126 + 5);
      v132 = *(v126 + 6);
      v131 = *(v126 + 7);
      v133 = v126[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v127, v128, v129, v130, v132, v131, v133);
      *(v125 + 2) = v127;
      *(v125 + 3) = v128;
      *(v125 + 4) = v129;
      *(v125 + 5) = v130;
      *(v125 + 6) = v132;
      *(v125 + 7) = v131;
      v125[64] = v133;
      v125[65] = v126[65];
      v125[66] = v126[66];
      v125[67] = v126[67];
      v125[68] = v126[68];
      v134 = v126[120];
      if (v134 == 255)
      {
        v142 = *(v126 + 72);
        v143 = *(v126 + 88);
        v144 = *(v126 + 104);
        v125[120] = v126[120];
        *(v125 + 104) = v144;
        *(v125 + 88) = v143;
        *(v125 + 72) = v142;
      }

      else
      {
        v135 = *(v126 + 9);
        v136 = *(v126 + 10);
        v137 = *(v126 + 11);
        v138 = *(v126 + 12);
        v139 = *(v126 + 13);
        v140 = *(v126 + 14);
        v141 = v134 & 1;
        sub_21D0FB960(v135, v136, v137, v138, v139, v140, v134 & 1);
        *(v125 + 9) = v135;
        *(v125 + 10) = v136;
        *(v125 + 11) = v137;
        *(v125 + 12) = v138;
        *(v125 + 13) = v139;
        *(v125 + 14) = v140;
        v125[120] = v141;
      }

      v3 = v183;
      v125[121] = v126[121];
      v110 = v176;
      v109 = v178;
      goto LABEL_178;
    }

LABEL_175:
    v161 = *v126;
    v162 = *(v126 + 1);
    v163 = *(v126 + 3);
    *(v125 + 2) = *(v126 + 2);
    *(v125 + 3) = v163;
    *v125 = v161;
    *(v125 + 1) = v162;
    v164 = *(v126 + 4);
    v165 = *(v126 + 5);
    v166 = *(v126 + 6);
    *(v125 + 106) = *(v126 + 106);
    *(v125 + 5) = v165;
    *(v125 + 6) = v166;
    *(v125 + 4) = v164;
    v3 = v183;
LABEL_178:
    *(v109 + v123[6]) = *(v110 + v123[6]);
    *(v109 + v123[7]) = *(v110 + v123[7]);
    *(v109 + v123[8]) = *(v110 + v123[8]);
    *(v109 + v123[9]) = *(v110 + v123[9]);
    *(v109 + v123[10]) = *(v110 + v123[10]);
    v170 = v123[11];
    v171 = *(v110 + v170);
    *(v109 + v170) = v171;
    v172 = v171;
    swift_storeEnumTagMultiPayload();
    return v3;
  }

  memcpy(v109, v110, *(*(v111 - 8) + 64));
  return v3;
}

void *sub_21D4A58C0(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v19 = swift_getEnumCaseMultiPayload();
        if (v19 <= 3)
        {
          if (v19 == 2 || v19 == 3)
          {
            goto LABEL_9;
          }
        }

        else if (v19 == 4 || v19 == 5 || v19 == 6)
        {
          goto LABEL_9;
        }

        goto LABEL_64;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v9 = swift_getEnumCaseMultiPayload();
        if (v9 <= 3)
        {
          if (v9 == 2 || v9 == 3)
          {
            goto LABEL_9;
          }
        }

        else if (v9 == 4 || v9 == 5 || v9 == 6)
        {
LABEL_9:
          v10 = sub_21DBF563C();
          (*(*(v10 - 8) + 32))(a1, a2, v10);
          swift_storeEnumTagMultiPayload();
LABEL_65:
          v35 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v36 = v35[5];
          v37 = (a1 + v36);
          v38 = (a2 + v36);
          v39 = v38[3];
          v37[2] = v38[2];
          v37[3] = v39;
          v40 = v38[1];
          *v37 = *v38;
          v37[1] = v40;
          *(v37 + 106) = *(v38 + 106);
          v41 = v38[6];
          v37[5] = v38[5];
          v37[6] = v41;
          v37[4] = v38[4];
          *(a1 + v35[6]) = *(a2 + v35[6]);
          *(a1 + v35[7]) = *(a2 + v35[7]);
          *(a1 + v35[8]) = *(a2 + v35[8]);
          *(a1 + v35[9]) = *(a2 + v35[9]);
          *(a1 + v35[10]) = *(a2 + v35[10]);
          *(a1 + v35[11]) = *(a2 + v35[11]);
          goto LABEL_87;
        }

LABEL_64:
        memcpy(a1, a2, *(*(v8 - 8) + 64));
        goto LABEL_65;
      }

LABEL_32:
      memcpy(a1, a2, *(*(v6 - 8) + 64));
      goto LABEL_88;
    }

    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;
      v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(a2 + v14, 1, v15))
      {
LABEL_29:
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v14, a2 + v14, *(*(v20 - 8) + 64));
        goto LABEL_87;
      }

      v25 = swift_getEnumCaseMultiPayload();
      if (v25 <= 3)
      {
        if (v25 == 2 || v25 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v25 == 4 || v25 == 5 || v25 == 6)
      {
        goto LABEL_57;
      }
    }

    else
    {
      *a1 = *a2;
      v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(a2 + v14, 1, v15))
      {
        goto LABEL_29;
      }

      v33 = swift_getEnumCaseMultiPayload();
      if (v33 <= 3)
      {
        if (v33 == 2 || v33 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v33 == 4 || v33 == 5 || v33 == 6)
      {
LABEL_57:
        v34 = sub_21DBF563C();
        (*(*(v34 - 8) + 32))(a1 + v14, a2 + v14, v34);
        swift_storeEnumTagMultiPayload();
LABEL_86:
        (*(v16 + 56))(a1 + v14, 0, 1, v15);
        goto LABEL_87;
      }
    }

LABEL_85:
    memcpy(a1 + v14, a2 + v14, *(v16 + 64));
    goto LABEL_86;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(a2, 1, v11))
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
          memcpy(a1, a2, *(*(v13 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v28 = *(v11 + 20);
          v29 = sub_21DBF6C1C();
          (*(*(v29 - 8) + 32))(a1 + v28, a2 + v28, v29);
          (*(v12 + 56))(a1, 0, 1, v11);
        }

        v30 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v31 = a1 + v30;
        v32 = a2 + v30;
        *v31 = *v32;
        *(v31 + 2) = *(v32 + 2);
        goto LABEL_87;
      }

      goto LABEL_32;
    }

    *a1 = *a2;
    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(a2 + v14, 1, v15))
    {
      goto LABEL_29;
    }

    v24 = swift_getEnumCaseMultiPayload();
    if (v24 <= 3)
    {
      if (v24 == 2 || v24 == 3)
      {
        goto LABEL_57;
      }
    }

    else if (v24 == 4 || v24 == 5 || v24 == 6)
    {
      goto LABEL_57;
    }

    goto LABEL_85;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v21 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(a2, 1, v21))
    {
      v23 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(a1, a2, *(*(v23 - 8) + 64));
    }

    else
    {
      v26 = sub_21DBF563C();
      (*(*(v26 - 8) + 32))(a1, a2, v26);
      *(a1 + *(v21 + 20)) = *(a2 + *(v21 + 20));
      (*(v22 + 56))(a1, 0, 1, v21);
    }

    v27 = type metadata accessor for TTRTemplatePublicLinkData(0);
    *(a1 + *(v27 + 20)) = *(a2 + *(v27 + 20));
    goto LABEL_87;
  }

  if (EnumCaseMultiPayload != 8)
  {
    goto LABEL_32;
  }

  *a1 = *a2;
  v17 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v18 = sub_21DBF8D7C();
  (*(*(v18 - 8) + 32))(a1 + v17, a2 + v17, v18);
LABEL_87:
  swift_storeEnumTagMultiPayload();
LABEL_88:
  v42 = *(a3 + 20);
  v43 = a1 + v42;
  v44 = a2 + v42;
  v45 = type metadata accessor for TTRRemindersListItemSeparatorStates.ItemType(0);
  v46 = swift_getEnumCaseMultiPayload();
  if (v46 == 1)
  {
    v47 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v50 = swift_getEnumCaseMultiPayload();
    if (v50 <= 3)
    {
      if (v50 == 2 || v50 == 3)
      {
        goto LABEL_94;
      }
    }

    else if (v50 == 4 || v50 == 5 || v50 == 6)
    {
      goto LABEL_94;
    }

    goto LABEL_113;
  }

  if (!v46)
  {
    v47 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v48 = swift_getEnumCaseMultiPayload();
    if (v48 <= 3)
    {
      if (v48 == 2 || v48 == 3)
      {
        goto LABEL_94;
      }
    }

    else if (v48 == 4 || v48 == 5 || v48 == 6)
    {
LABEL_94:
      v49 = sub_21DBF563C();
      (*(*(v49 - 8) + 32))(v43, v44, v49);
      swift_storeEnumTagMultiPayload();
LABEL_114:
      v51 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v52 = v51[5];
      v53 = &v43[v52];
      v54 = &v44[v52];
      v55 = v54[3];
      v53[2] = v54[2];
      v53[3] = v55;
      v56 = v54[1];
      *v53 = *v54;
      v53[1] = v56;
      *(v53 + 106) = *(v54 + 106);
      v57 = v54[6];
      v53[5] = v54[5];
      v53[6] = v57;
      v53[4] = v54[4];
      v43[v51[6]] = v44[v51[6]];
      v43[v51[7]] = v44[v51[7]];
      v43[v51[8]] = v44[v51[8]];
      v43[v51[9]] = v44[v51[9]];
      v43[v51[10]] = v44[v51[10]];
      *&v43[v51[11]] = *&v44[v51[11]];
      swift_storeEnumTagMultiPayload();
      return a1;
    }

LABEL_113:
    memcpy(v43, v44, *(*(v47 - 8) + 64));
    goto LABEL_114;
  }

  memcpy(v43, v44, *(*(v45 - 8) + 64));
  return a1;
}

_BYTE *sub_21D4A6EF4(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D106AF8(a1, type metadata accessor for TTRRemindersListViewModel.Item);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v21 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v22 = *(v21 - 8);
        if ((*(v22 + 48))(a2, 1, v21))
        {
          v23 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(a1, a2, *(*(v23 - 8) + 64));
        }

        else
        {
          v26 = sub_21DBF563C();
          (*(*(v26 - 8) + 32))(a1, a2, v26);
          a1[*(v21 + 20)] = a2[*(v21 + 20)];
          (*(v22 + 56))(a1, 0, 1, v21);
        }

        v27 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *&a1[*(v27 + 20)] = *&a2[*(v27 + 20)];
        goto LABEL_88;
      }

      if (EnumCaseMultiPayload != 8)
      {
        goto LABEL_33;
      }

      *a1 = *a2;
      v17 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v18 = sub_21DBF8D7C();
      (*(*(v18 - 8) + 32))(&a1[v17], &a2[v17], v18);
LABEL_88:
      swift_storeEnumTagMultiPayload();
      goto LABEL_89;
    }

    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(a2, 1, v11))
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
          memcpy(a1, a2, *(*(v13 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v28 = *(v11 + 20);
          v29 = sub_21DBF6C1C();
          (*(*(v29 - 8) + 32))(&a1[v28], &a2[v28], v29);
          (*(v12 + 56))(a1, 0, 1, v11);
        }

        v30 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v31 = &a1[v30];
        v32 = &a2[v30];
        *v31 = *v32;
        *(v31 + 2) = *(v32 + 2);
        goto LABEL_88;
      }

      goto LABEL_33;
    }

    *a1 = *a2;
    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(&a2[v14], 1, v15))
    {
      v24 = swift_getEnumCaseMultiPayload();
      if (v24 <= 3)
      {
        if (v24 == 2 || v24 == 3)
        {
          goto LABEL_58;
        }
      }

      else if (v24 == 4 || v24 == 5 || v24 == 6)
      {
        goto LABEL_58;
      }

      goto LABEL_86;
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      *a1 = *a2;
      v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(&a2[v14], 1, v15))
      {
        goto LABEL_30;
      }

      v33 = swift_getEnumCaseMultiPayload();
      if (v33 <= 3)
      {
        if (v33 == 2 || v33 == 3)
        {
          goto LABEL_58;
        }
      }

      else if (v33 == 4 || v33 == 5 || v33 == 6)
      {
LABEL_58:
        v34 = sub_21DBF563C();
        (*(*(v34 - 8) + 32))(&a1[v14], &a2[v14], v34);
        swift_storeEnumTagMultiPayload();
LABEL_87:
        (*(v16 + 56))(&a1[v14], 0, 1, v15);
        goto LABEL_88;
      }

LABEL_86:
      memcpy(&a1[v14], &a2[v14], *(v16 + 64));
      goto LABEL_87;
    }

    *a1 = *a2;
    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(&a2[v14], 1, v15))
    {
      v25 = swift_getEnumCaseMultiPayload();
      if (v25 <= 3)
      {
        if (v25 == 2 || v25 == 3)
        {
          goto LABEL_58;
        }
      }

      else if (v25 == 4 || v25 == 5 || v25 == 6)
      {
        goto LABEL_58;
      }

      goto LABEL_86;
    }

LABEL_30:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
    memcpy(&a1[v14], &a2[v14], *(*(v20 - 8) + 64));
    goto LABEL_88;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v19 = swift_getEnumCaseMultiPayload();
    if (v19 <= 3)
    {
      if (v19 == 2 || v19 == 3)
      {
        goto LABEL_10;
      }
    }

    else if (v19 == 4 || v19 == 5 || v19 == 6)
    {
      goto LABEL_10;
    }

    goto LABEL_65;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 <= 3)
    {
      if (v9 == 2 || v9 == 3)
      {
        goto LABEL_10;
      }
    }

    else if (v9 == 4 || v9 == 5 || v9 == 6)
    {
LABEL_10:
      v10 = sub_21DBF563C();
      (*(*(v10 - 8) + 32))(a1, a2, v10);
      swift_storeEnumTagMultiPayload();
LABEL_66:
      v35 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v36 = v35[5];
      v37 = &a1[v36];
      v38 = &a2[v36];
      v39 = v38[3];
      v37[2] = v38[2];
      v37[3] = v39;
      v40 = v38[1];
      *v37 = *v38;
      v37[1] = v40;
      *(v37 + 106) = *(v38 + 106);
      v41 = v38[6];
      v37[5] = v38[5];
      v37[6] = v41;
      v37[4] = v38[4];
      a1[v35[6]] = a2[v35[6]];
      a1[v35[7]] = a2[v35[7]];
      a1[v35[8]] = a2[v35[8]];
      a1[v35[9]] = a2[v35[9]];
      a1[v35[10]] = a2[v35[10]];
      *&a1[v35[11]] = *&a2[v35[11]];
      goto LABEL_88;
    }

LABEL_65:
    memcpy(a1, a2, *(*(v8 - 8) + 64));
    goto LABEL_66;
  }

LABEL_33:
  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_89:
  v42 = *(a3 + 20);
  v43 = &a1[v42];
  v44 = &a2[v42];
  sub_21D106AF8(&a1[v42], type metadata accessor for TTRRemindersListItemSeparatorStates.ItemType);
  v45 = type metadata accessor for TTRRemindersListItemSeparatorStates.ItemType(0);
  v46 = swift_getEnumCaseMultiPayload();
  if (v46 == 1)
  {
    v47 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v50 = swift_getEnumCaseMultiPayload();
    if (v50 <= 3)
    {
      if (v50 == 2 || v50 == 3)
      {
        goto LABEL_95;
      }
    }

    else if (v50 == 4 || v50 == 5 || v50 == 6)
    {
      goto LABEL_95;
    }

    goto LABEL_114;
  }

  if (!v46)
  {
    v47 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v48 = swift_getEnumCaseMultiPayload();
    if (v48 <= 3)
    {
      if (v48 == 2 || v48 == 3)
      {
        goto LABEL_95;
      }
    }

    else if (v48 == 4 || v48 == 5 || v48 == 6)
    {
LABEL_95:
      v49 = sub_21DBF563C();
      (*(*(v49 - 8) + 32))(v43, v44, v49);
      swift_storeEnumTagMultiPayload();
LABEL_115:
      v51 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v52 = v51[5];
      v53 = &v43[v52];
      v54 = &v44[v52];
      v55 = v54[3];
      v53[2] = v54[2];
      v53[3] = v55;
      v56 = v54[1];
      *v53 = *v54;
      v53[1] = v56;
      *(v53 + 106) = *(v54 + 106);
      v57 = v54[6];
      v53[5] = v54[5];
      v53[6] = v57;
      v53[4] = v54[4];
      v43[v51[6]] = v44[v51[6]];
      v43[v51[7]] = v44[v51[7]];
      v43[v51[8]] = v44[v51[8]];
      v43[v51[9]] = v44[v51[9]];
      v43[v51[10]] = v44[v51[10]];
      *&v43[v51[11]] = *&v44[v51[11]];
      swift_storeEnumTagMultiPayload();
      return a1;
    }

LABEL_114:
    memcpy(v43, v44, *(*(v47 - 8) + 64));
    goto LABEL_115;
  }

  memcpy(v43, v44, *(*(v45 - 8) + 64));
  return a1;
}

uint64_t sub_21D4A8590()
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TTRRemindersListItemSeparatorStates.ItemType(319);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void **_s37SectionsContainersAndSectionCasesItemOwCP(void **a1, void **a2, uint64_t a3)
{
  v3 = a2;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = &v10[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v12 = swift_getEnumCaseMultiPayload();
    if (v12 <= 4)
    {
      if (v12 > 2)
      {
LABEL_30:
        v18 = sub_21DBF563C();
        (*(*(v18 - 8) + 16))(a1, v3, v18);
        swift_storeEnumTagMultiPayload();
        goto LABEL_48;
      }

      if (v12 != 1)
      {
        if (v12 == 2)
        {
          goto LABEL_30;
        }

        goto LABEL_47;
      }

LABEL_33:
      v19 = *v3;
      *a1 = *v3;
      v20 = v19;
      swift_storeEnumTagMultiPayload();
      goto LABEL_48;
    }

    if (v12 > 7)
    {
      if (v12 == 8 || v12 == 9)
      {
        goto LABEL_33;
      }
    }

    else if (v12 == 5 || v12 == 6)
    {
      goto LABEL_30;
    }

LABEL_47:
    memcpy(a1, v3, *(*(v11 - 8) + 64));
LABEL_48:
    v21 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v39 = v21[5];
    v23 = a1 + v39;
    v24 = v3 + v39;
    v40 = *(v3 + v39 + 8);
    if (v40)
    {
      v64 = a1;
      v66 = v3;
      *v23 = *v24;
      *(v23 + 1) = v40;
      v41 = *(v24 + 2);
      v42 = *(v24 + 3);
      v43 = *(v24 + 4);
      v44 = *(v24 + 5);
      v45 = *(v24 + 6);
      v46 = *(v24 + 7);
      v47 = v24[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v41, v42, v43, v44, v45, v46, v47);
      *(v23 + 2) = v41;
      *(v23 + 3) = v42;
      *(v23 + 4) = v43;
      *(v23 + 5) = v44;
      *(v23 + 6) = v45;
      *(v23 + 7) = v46;
      v23[64] = v47;
      *(v23 + 65) = *(v24 + 65);
      v48 = v24[120];
      if (v48 == 255)
      {
        *(v23 + 72) = *(v24 + 72);
        *(v23 + 88) = *(v24 + 88);
        *(v23 + 104) = *(v24 + 104);
        v23[120] = v24[120];
      }

      else
      {
        v49 = *(v24 + 9);
        v50 = *(v24 + 10);
        v51 = *(v24 + 11);
        v52 = *(v24 + 12);
        v53 = *(v24 + 13);
        v54 = *(v24 + 14);
        v55 = v48 & 1;
        sub_21D0FB960(v49, v50, v51, v52, v53, v54, v48 & 1);
        *(v23 + 9) = v49;
        *(v23 + 10) = v50;
        *(v23 + 11) = v51;
        *(v23 + 12) = v52;
        *(v23 + 13) = v53;
        *(v23 + 14) = v54;
        v23[120] = v55;
      }

      v3 = v66;
      v23[121] = v24[121];
      a1 = v64;
      goto LABEL_54;
    }

    goto LABEL_51;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 <= 4)
    {
      if (v9 > 2)
      {
LABEL_26:
        v15 = sub_21DBF563C();
        (*(*(v15 - 8) + 16))(a1, v3, v15);
        swift_storeEnumTagMultiPayload();
        goto LABEL_41;
      }

      if (v9 != 1)
      {
        if (v9 == 2)
        {
          goto LABEL_26;
        }

        goto LABEL_40;
      }

LABEL_29:
      v16 = *v3;
      *a1 = *v3;
      v17 = v16;
      swift_storeEnumTagMultiPayload();
      goto LABEL_41;
    }

    if (v9 > 7)
    {
      if (v9 == 8 || v9 == 9)
      {
        goto LABEL_29;
      }
    }

    else if (v9 == 5 || v9 == 6)
    {
      goto LABEL_26;
    }

LABEL_40:
    memcpy(a1, v3, *(*(v8 - 8) + 64));
LABEL_41:
    v21 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v22 = v21[5];
    v23 = a1 + v22;
    v24 = v3 + v22;
    v25 = *(v3 + v22 + 8);
    if (v25)
    {
      v65 = v3;
      *v23 = *v24;
      *(v23 + 1) = v25;
      v26 = *(v24 + 2);
      v27 = *(v24 + 3);
      v28 = *(v24 + 4);
      v29 = *(v24 + 5);
      v31 = *(v24 + 6);
      v30 = *(v24 + 7);
      v62 = v24[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v26, v27, v28, v29, v31, v30, v62);
      *(v23 + 2) = v26;
      *(v23 + 3) = v27;
      *(v23 + 4) = v28;
      *(v23 + 5) = v29;
      *(v23 + 6) = v31;
      *(v23 + 7) = v30;
      v23[64] = v62;
      *(v23 + 65) = *(v24 + 65);
      v32 = v24[120];
      if (v32 == 255)
      {
        *(v23 + 72) = *(v24 + 72);
        *(v23 + 88) = *(v24 + 88);
        *(v23 + 104) = *(v24 + 104);
        v23[120] = v24[120];
      }

      else
      {
        v33 = *(v24 + 10);
        v63 = *(v24 + 9);
        v34 = *(v24 + 11);
        v35 = *(v24 + 12);
        v36 = *(v24 + 13);
        v37 = *(v24 + 14);
        v38 = v32 & 1;
        sub_21D0FB960(v63, v33, v34, v35, v36, v37, v32 & 1);
        *(v23 + 9) = v63;
        *(v23 + 10) = v33;
        *(v23 + 11) = v34;
        *(v23 + 12) = v35;
        *(v23 + 13) = v36;
        *(v23 + 14) = v37;
        v23[120] = v38;
      }

      v3 = v65;
      v23[121] = v24[121];
      goto LABEL_54;
    }

LABEL_51:
    v56 = *(v24 + 5);
    *(v23 + 4) = *(v24 + 4);
    *(v23 + 5) = v56;
    *(v23 + 6) = *(v24 + 6);
    *(v23 + 106) = *(v24 + 106);
    v57 = *(v24 + 1);
    *v23 = *v24;
    *(v23 + 1) = v57;
    v58 = *(v24 + 3);
    *(v23 + 2) = *(v24 + 2);
    *(v23 + 3) = v58;
LABEL_54:
    *(a1 + v21[6]) = *(v3 + v21[6]);
    *(a1 + v21[7]) = *(v3 + v21[7]);
    *(a1 + v21[8]) = *(v3 + v21[8]);
    *(a1 + v21[9]) = *(v3 + v21[9]);
    *(a1 + v21[10]) = *(v3 + v21[10]);
    v59 = v21[11];
    v60 = *(v3 + v59);
    *(a1 + v59) = v60;
    v61 = v60;
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v13 = *(v6 + 64);

  return memcpy(a1, v3, v13);
}

void _s37SectionsContainersAndSectionCasesItemOwxx(id *a1)
{
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    return;
  }

  type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload != 5 && EnumCaseMultiPayload != 6)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }

    if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload > 2)
  {
LABEL_12:
    v3 = sub_21DBF563C();
    (*(*(v3 - 8) + 8))(a1, v3);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 1)
  {
LABEL_15:

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_12;
  }

LABEL_16:
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v5 = a1 + *(v4 + 20);
  if (*(v5 + 1))
  {

    sub_21D179EF0(*(v5 + 2), *(v5 + 3), *(v5 + 4), *(v5 + 5), *(v5 + 6), *(v5 + 7), v5[64]);
    v6 = v5[120];
    if (v6 != 255)
    {
      sub_21D1078C0(*(v5 + 9), *(v5 + 10), *(v5 + 11), *(v5 + 12), *(v5 + 13), *(v5 + 14), v6 & 1);
    }
  }

  v7 = *(a1 + *(v4 + 44));
}

void **_s37SectionsContainersAndSectionCasesItemOwcp(void **a1, void **a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v10 = swift_getEnumCaseMultiPayload();
    if (v10 <= 4)
    {
      if (v10 > 2)
      {
LABEL_28:
        v16 = sub_21DBF563C();
        (*(*(v16 - 8) + 16))(a1, a2, v16);
        swift_storeEnumTagMultiPayload();
        goto LABEL_46;
      }

      if (v10 != 1)
      {
        if (v10 == 2)
        {
          goto LABEL_28;
        }

        goto LABEL_45;
      }

LABEL_31:
      v17 = *a2;
      *a1 = *a2;
      v18 = v17;
      swift_storeEnumTagMultiPayload();
      goto LABEL_46;
    }

    if (v10 > 7)
    {
      if (v10 == 8 || v10 == 9)
      {
        goto LABEL_31;
      }
    }

    else if (v10 == 5 || v10 == 6)
    {
      goto LABEL_28;
    }

LABEL_45:
    memcpy(a1, a2, *(*(v9 - 8) + 64));
LABEL_46:
    v19 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v39 = v19[5];
    v21 = a1 + v39;
    v22 = a2 + v39;
    v40 = *(a2 + v39 + 8);
    if (v40)
    {
      v63 = a2;
      v65 = a1;
      *v21 = *v22;
      *(v21 + 1) = v40;
      v41 = *(v22 + 2);
      v42 = *(v22 + 3);
      v43 = *(v22 + 4);
      v44 = *(v22 + 5);
      v45 = *(v22 + 6);
      v46 = *(v22 + 7);
      v47 = v22[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v41, v42, v43, v44, v45, v46, v47);
      *(v21 + 2) = v41;
      *(v21 + 3) = v42;
      *(v21 + 4) = v43;
      *(v21 + 5) = v44;
      *(v21 + 6) = v45;
      *(v21 + 7) = v46;
      v21[64] = v47;
      *(v21 + 65) = *(v22 + 65);
      v48 = v22[120];
      if (v48 == 255)
      {
        *(v21 + 72) = *(v22 + 72);
        *(v21 + 88) = *(v22 + 88);
        *(v21 + 104) = *(v22 + 104);
        v21[120] = v22[120];
      }

      else
      {
        v49 = *(v22 + 9);
        v50 = *(v22 + 10);
        v51 = *(v22 + 11);
        v52 = *(v22 + 12);
        v53 = *(v22 + 13);
        v54 = *(v22 + 14);
        v55 = v48 & 1;
        sub_21D0FB960(v49, v50, v51, v52, v53, v54, v48 & 1);
        *(v21 + 9) = v49;
        *(v21 + 10) = v50;
        *(v21 + 11) = v51;
        *(v21 + 12) = v52;
        *(v21 + 13) = v53;
        *(v21 + 14) = v54;
        v21[120] = v55;
      }

      v21[121] = v22[121];
      a2 = v63;
      a1 = v65;
      goto LABEL_52;
    }

    goto LABEL_49;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v8 = swift_getEnumCaseMultiPayload();
    if (v8 <= 4)
    {
      if (v8 > 2)
      {
LABEL_24:
        v13 = sub_21DBF563C();
        (*(*(v13 - 8) + 16))(a1, a2, v13);
        swift_storeEnumTagMultiPayload();
        goto LABEL_39;
      }

      if (v8 != 1)
      {
        if (v8 == 2)
        {
          goto LABEL_24;
        }

        goto LABEL_38;
      }

LABEL_27:
      v14 = *a2;
      *a1 = *a2;
      v15 = v14;
      swift_storeEnumTagMultiPayload();
      goto LABEL_39;
    }

    if (v8 > 7)
    {
      if (v8 == 8 || v8 == 9)
      {
        goto LABEL_27;
      }
    }

    else if (v8 == 5 || v8 == 6)
    {
      goto LABEL_24;
    }

LABEL_38:
    memcpy(a1, a2, *(*(v7 - 8) + 64));
LABEL_39:
    v19 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v20 = v19[5];
    v21 = a1 + v20;
    v22 = a2 + v20;
    v23 = *(a2 + v20 + 8);
    if (v23)
    {
      v62 = a2;
      v64 = a1;
      *v21 = *v22;
      *(v21 + 1) = v23;
      v24 = *(v22 + 2);
      v25 = *(v22 + 3);
      v26 = *(v22 + 4);
      v27 = *(v22 + 5);
      v28 = *(v22 + 6);
      v29 = *(v22 + 7);
      v30 = v22[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v24, v25, v26, v27, v28, v29, v30);
      *(v21 + 2) = v24;
      *(v21 + 3) = v25;
      *(v21 + 4) = v26;
      *(v21 + 5) = v27;
      *(v21 + 6) = v28;
      *(v21 + 7) = v29;
      v21[64] = v30;
      *(v21 + 65) = *(v22 + 65);
      v31 = v22[120];
      if (v31 == 255)
      {
        *(v21 + 72) = *(v22 + 72);
        *(v21 + 88) = *(v22 + 88);
        *(v21 + 104) = *(v22 + 104);
        v21[120] = v22[120];
      }

      else
      {
        v32 = *(v22 + 9);
        v33 = *(v22 + 10);
        v34 = *(v22 + 11);
        v35 = *(v22 + 12);
        v36 = *(v22 + 13);
        v37 = *(v22 + 14);
        v38 = v31 & 1;
        sub_21D0FB960(v32, v33, v34, v35, v36, v37, v31 & 1);
        *(v21 + 9) = v32;
        *(v21 + 10) = v33;
        *(v21 + 11) = v34;
        *(v21 + 12) = v35;
        *(v21 + 13) = v36;
        *(v21 + 14) = v37;
        v21[120] = v38;
      }

      v21[121] = v22[121];
      a2 = v62;
      a1 = v64;
      goto LABEL_52;
    }

LABEL_49:
    v56 = *(v22 + 5);
    *(v21 + 4) = *(v22 + 4);
    *(v21 + 5) = v56;
    *(v21 + 6) = *(v22 + 6);
    *(v21 + 106) = *(v22 + 106);
    v57 = *(v22 + 1);
    *v21 = *v22;
    *(v21 + 1) = v57;
    v58 = *(v22 + 3);
    *(v21 + 2) = *(v22 + 2);
    *(v21 + 3) = v58;
LABEL_52:
    *(a1 + v19[6]) = *(a2 + v19[6]);
    *(a1 + v19[7]) = *(a2 + v19[7]);
    *(a1 + v19[8]) = *(a2 + v19[8]);
    *(a1 + v19[9]) = *(a2 + v19[9]);
    *(a1 + v19[10]) = *(a2 + v19[10]);
    v59 = v19[11];
    v60 = *(a2 + v59);
    *(a1 + v59) = v60;
    v61 = v60;
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

void *sub_21D4A9980(uint64_t a1, void **a2, uint64_t a3)
{
  v3 = a1;
  if (a1 == a2)
  {
    return v3;
  }

  v5 = a2;
  sub_21D106AF8(a1, type metadata accessor for TTRRemindersListItemSeparatorStates.ItemType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v10 = swift_getEnumCaseMultiPayload();
    if (v10 <= 4)
    {
      if (v10 > 2)
      {
LABEL_29:
        v16 = sub_21DBF563C();
        (*(*(v16 - 8) + 16))(v3, v5, v16);
        swift_storeEnumTagMultiPayload();
        goto LABEL_47;
      }

      if (v10 != 1)
      {
        if (v10 == 2)
        {
          goto LABEL_29;
        }

        goto LABEL_46;
      }

LABEL_32:
      v17 = *v5;
      *v3 = *v5;
      v18 = v17;
      swift_storeEnumTagMultiPayload();
      goto LABEL_47;
    }

    if (v10 > 7)
    {
      if (v10 == 8 || v10 == 9)
      {
        goto LABEL_32;
      }
    }

    else if (v10 == 5 || v10 == 6)
    {
      goto LABEL_29;
    }

LABEL_46:
    memcpy(v3, v5, *(*(v9 - 8) + 64));
LABEL_47:
    v19 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v39 = v19[5];
    v21 = v3 + v39;
    v22 = v5 + v39;
    if (*(v5 + v39 + 8))
    {
      v69 = v3;
      v71 = v5;
      *v21 = *v22;
      *(v21 + 1) = *(v22 + 1);
      v40 = *(v22 + 2);
      v41 = *(v22 + 3);
      v42 = *(v22 + 4);
      v43 = *(v22 + 5);
      v44 = *(v22 + 6);
      v45 = *(v22 + 7);
      v46 = v22[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v40, v41, v42, v43, v44, v45, v46);
      *(v21 + 2) = v40;
      *(v21 + 3) = v41;
      *(v21 + 4) = v42;
      *(v21 + 5) = v43;
      *(v21 + 6) = v44;
      *(v21 + 7) = v45;
      v21[64] = v46;
      v21[65] = v22[65];
      v21[66] = v22[66];
      v21[67] = v22[67];
      v21[68] = v22[68];
      v47 = v22[120];
      if (v47 == 255)
      {
        v61 = *(v22 + 72);
        v62 = *(v22 + 88);
        v63 = *(v22 + 104);
        v21[120] = v22[120];
        *(v21 + 104) = v63;
        *(v21 + 88) = v62;
        *(v21 + 72) = v61;
      }

      else
      {
        v48 = *(v22 + 9);
        v49 = *(v22 + 10);
        v50 = *(v22 + 11);
        v51 = *(v22 + 12);
        v52 = *(v22 + 13);
        v53 = *(v22 + 14);
        v54 = v47 & 1;
        sub_21D0FB960(v48, v49, v50, v51, v52, v53, v47 & 1);
        *(v21 + 9) = v48;
        *(v21 + 10) = v49;
        *(v21 + 11) = v50;
        *(v21 + 12) = v51;
        *(v21 + 13) = v52;
        *(v21 + 14) = v53;
        v21[120] = v54;
      }

      v21[121] = v22[121];
      v3 = v69;
      v5 = v71;
      goto LABEL_53;
    }

    goto LABEL_50;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v8 = swift_getEnumCaseMultiPayload();
    if (v8 <= 4)
    {
      if (v8 > 2)
      {
LABEL_25:
        v13 = sub_21DBF563C();
        (*(*(v13 - 8) + 16))(v3, v5, v13);
        swift_storeEnumTagMultiPayload();
        goto LABEL_40;
      }

      if (v8 != 1)
      {
        if (v8 == 2)
        {
          goto LABEL_25;
        }

        goto LABEL_39;
      }

LABEL_28:
      v14 = *v5;
      *v3 = *v5;
      v15 = v14;
      swift_storeEnumTagMultiPayload();
      goto LABEL_40;
    }

    if (v8 > 7)
    {
      if (v8 == 8 || v8 == 9)
      {
        goto LABEL_28;
      }
    }

    else if (v8 == 5 || v8 == 6)
    {
      goto LABEL_25;
    }

LABEL_39:
    memcpy(v3, v5, *(*(v7 - 8) + 64));
LABEL_40:
    v19 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v20 = v19[5];
    v21 = v3 + v20;
    v22 = v5 + v20;
    if (*(v5 + v20 + 8))
    {
      *v21 = *v22;
      *(v21 + 1) = *(v22 + 1);
      v23 = *(v22 + 2);
      v24 = *(v22 + 3);
      v25 = *(v22 + 4);
      v26 = *(v22 + 5);
      v27 = *(v22 + 6);
      v67 = *(v22 + 7);
      v70 = v5;
      v28 = v22[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v23, v24, v25, v26, v27, v67, v28);
      *(v21 + 2) = v23;
      *(v21 + 3) = v24;
      *(v21 + 4) = v25;
      *(v21 + 5) = v26;
      *(v21 + 6) = v27;
      *(v21 + 7) = v67;
      v21[64] = v28;
      v21[65] = v22[65];
      v21[66] = v22[66];
      v21[67] = v22[67];
      v21[68] = v22[68];
      v29 = v22[120];
      if (v29 == 255)
      {
        v36 = *(v22 + 72);
        v37 = *(v22 + 88);
        v38 = *(v22 + 104);
        v21[120] = v22[120];
        *(v21 + 104) = v38;
        *(v21 + 88) = v37;
        *(v21 + 72) = v36;
      }

      else
      {
        v30 = *(v22 + 10);
        v68 = *(v22 + 9);
        v31 = *(v22 + 11);
        v32 = *(v22 + 12);
        v33 = *(v22 + 13);
        v34 = *(v22 + 14);
        v35 = v29 & 1;
        sub_21D0FB960(v68, v30, v31, v32, v33, v34, v29 & 1);
        *(v21 + 9) = v68;
        *(v21 + 10) = v30;
        *(v21 + 11) = v31;
        *(v21 + 12) = v32;
        *(v21 + 13) = v33;
        *(v21 + 14) = v34;
        v21[120] = v35;
      }

      v21[121] = v22[121];
      v5 = v70;
      goto LABEL_53;
    }

LABEL_50:
    v55 = *v22;
    v56 = *(v22 + 1);
    v57 = *(v22 + 3);
    *(v21 + 2) = *(v22 + 2);
    *(v21 + 3) = v57;
    *v21 = v55;
    *(v21 + 1) = v56;
    v58 = *(v22 + 4);
    v59 = *(v22 + 5);
    v60 = *(v22 + 6);
    *(v21 + 106) = *(v22 + 106);
    *(v21 + 5) = v59;
    *(v21 + 6) = v60;
    *(v21 + 4) = v58;
LABEL_53:
    *(v3 + v19[6]) = *(v5 + v19[6]);
    *(v3 + v19[7]) = *(v5 + v19[7]);
    *(v3 + v19[8]) = *(v5 + v19[8]);
    *(v3 + v19[9]) = *(v5 + v19[9]);
    *(v3 + v19[10]) = *(v5 + v19[10]);
    v64 = v19[11];
    v65 = *(v5 + v64);
    *(v3 + v64) = v65;
    v66 = v65;
    swift_storeEnumTagMultiPayload();
    return v3;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(v3, v5, v11);
}

_BYTE *_s37SectionsContainersAndSectionCasesItemOwtk(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v10 = swift_getEnumCaseMultiPayload();
    if (v10 <= 3)
    {
      if (v10 == 2 || v10 == 3)
      {
        goto LABEL_7;
      }
    }

    else if (v10 == 4 || v10 == 5 || v10 == 6)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v8 = swift_getEnumCaseMultiPayload();
    if (v8 <= 3)
    {
      if (v8 == 2 || v8 == 3)
      {
        goto LABEL_7;
      }
    }

    else if (v8 == 4 || v8 == 5 || v8 == 6)
    {
LABEL_7:
      v9 = sub_21DBF563C();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      swift_storeEnumTagMultiPayload();
LABEL_29:
      v13 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v14 = v13[5];
      v15 = &a1[v14];
      v16 = &a2[v14];
      v17 = v16[3];
      v15[2] = v16[2];
      v15[3] = v17;
      v18 = v16[1];
      *v15 = *v16;
      v15[1] = v18;
      *(v15 + 106) = *(v16 + 106);
      v19 = v16[6];
      v15[5] = v16[5];
      v15[6] = v19;
      v15[4] = v16[4];
      a1[v13[6]] = a2[v13[6]];
      a1[v13[7]] = a2[v13[7]];
      a1[v13[8]] = a2[v13[8]];
      a1[v13[9]] = a2[v13[9]];
      a1[v13[10]] = a2[v13[10]];
      *&a1[v13[11]] = *&a2[v13[11]];
      swift_storeEnumTagMultiPayload();
      return a1;
    }

LABEL_28:
    memcpy(a1, a2, *(*(v7 - 8) + 64));
    goto LABEL_29;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

_BYTE *sub_21D4AA84C(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D106AF8(a1, type metadata accessor for TTRRemindersListItemSeparatorStates.ItemType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v10 = swift_getEnumCaseMultiPayload();
    if (v10 <= 3)
    {
      if (v10 == 2 || v10 == 3)
      {
        goto LABEL_8;
      }
    }

    else if (v10 == 4 || v10 == 5 || v10 == 6)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v8 = swift_getEnumCaseMultiPayload();
    if (v8 <= 3)
    {
      if (v8 == 2 || v8 == 3)
      {
        goto LABEL_8;
      }
    }

    else if (v8 == 4 || v8 == 5 || v8 == 6)
    {
LABEL_8:
      v9 = sub_21DBF563C();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      swift_storeEnumTagMultiPayload();
LABEL_30:
      v13 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v14 = v13[5];
      v15 = &a1[v14];
      v16 = &a2[v14];
      v17 = v16[3];
      v15[2] = v16[2];
      v15[3] = v17;
      v18 = v16[1];
      *v15 = *v16;
      v15[1] = v18;
      *(v15 + 106) = *(v16 + 106);
      v19 = v16[6];
      v15[5] = v16[5];
      v15[6] = v19;
      v15[4] = v16[4];
      a1[v13[6]] = a2[v13[6]];
      a1[v13[7]] = a2[v13[7]];
      a1[v13[8]] = a2[v13[8]];
      a1[v13[9]] = a2[v13[9]];
      a1[v13[10]] = a2[v13[10]];
      *&a1[v13[11]] = *&a2[v13[11]];
      swift_storeEnumTagMultiPayload();
      return a1;
    }

LABEL_29:
    memcpy(a1, a2, *(*(v7 - 8) + 64));
    goto LABEL_30;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

uint64_t sub_21D4AAE10()
{
  result = type metadata accessor for TTRRemindersListViewModel.SectionHeader(319);
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_21D4AAE98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 0xA)
  {
    goto LABEL_10;
  }

  if (((1 << EnumCaseMultiPayload) & 0x1E0) != 0 || ((1 << EnumCaseMultiPayload) & 0x1C) != 0)
  {
    sub_21D106AF8(a1, type metadata accessor for TTRRemindersListViewModel.Item);
    goto LABEL_7;
  }

  if (((1 << EnumCaseMultiPayload) & 0x600) == 0)
  {
LABEL_10:
    sub_21D4AAFC0(a1, a2, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  }

LABEL_7:
  type metadata accessor for TTRRemindersListItemSeparatorStates.ItemType(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21D4AAFC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D4AB028(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CC68);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D4AB098(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CC68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D4AB10C()
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  v2 = sub_21D4C1328(sub_21D47F994);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CCC0);
  sub_21D0D0F1C(&qword_27CE5CCC8, &qword_27CE5CCC0);
  if (!sub_21DBFA43C())
  {
    if (qword_27CE56950 != -1)
    {
      swift_once();
    }

    v3 = sub_21DBF84BC();
    __swift_project_value_buffer(v3, qword_27CE5CC70);
    v4 = sub_21DBF84AC();
    v5 = sub_21DBFAECC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21D0C9000, v4, v5, "Returning empty items as expected all itemID of TabBarButton to be TTRIQuickBarTabBarItem", v6, 2u);
      MEMORY[0x223D46520](v6, -1, -1);
    }

    if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    sub_21D0D8CF0(0, &qword_280D176A0);
    sub_21DBF8E0C();
    v7 = sub_21DBFC33C();

    goto LABEL_12;
  }

  if (v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  sub_21DBF8E0C();
  v7 = v2;
  sub_21DBFC65C();
  sub_21D0D8CF0(0, &qword_280D176A0);
LABEL_12:

  return v7;
}

void sub_21D4AB3B0(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC15RemindersUICore18TTRIQuickBarTabBar_items) = a1;

  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore18TTRIQuickBarTabBar_stackView);
  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = [v2 arrangedSubviews];
  sub_21D0D8CF0(0, &qword_280D176A0);
  v4 = sub_21DBFA5EC();

  if (v4 >> 62)
  {
    v5 = sub_21DBFBD7C();
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_4:
      if (v5 >= 1)
      {
        for (i = 0; i != v5; ++i)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x223D44740](i, v4);
          }

          else
          {
            v7 = *(v4 + 8 * i + 32);
          }

          v8 = v7;
          [v7 removeFromSuperview];
        }

        goto LABEL_11;
      }

      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }
  }

LABEL_11:

  sub_21D4ABFE0();
}

uint64_t sub_21D4AB4F0(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C8B0);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_21D480300;
  *(v4 + 24) = v3;
  v24[0] = v4;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C8B8);
  sub_21D0D0F1C(&qword_280D0C198, &qword_27CE5C8B8);
  sub_21DBFA48C();

  sub_21D0D3954(a1, v24, &qword_27CE5BE60);
  sub_21D0D3954(v29, &v26, &qword_27CE5BE60);
  if (v25)
  {
    sub_21D0D3954(v24, v22, &qword_27CE5BE60);
    if (*(&v27 + 1))
    {
      v20[0] = v26;
      v20[1] = v27;
      v21 = v28;
      v6 = MEMORY[0x223D445C0](v22, v20);
      sub_21D181D3C(v20);
      sub_21D0CF7E0(v29, &qword_27CE5BE60);
      sub_21D181D3C(v22);
      sub_21D0CF7E0(v24, &qword_27CE5BE60);
      if (v6)
      {
        return sub_21D0CF7E0(a1, &qword_27CE5BE60);
      }

      goto LABEL_9;
    }

    sub_21D0CF7E0(v29, &qword_27CE5BE60);
    sub_21D181D3C(v22);
  }

  else
  {
    sub_21D0CF7E0(v29, &qword_27CE5BE60);
    if (!*(&v27 + 1))
    {
      sub_21D0CF7E0(v24, &qword_27CE5BE60);
      return sub_21D0CF7E0(a1, &qword_27CE5BE60);
    }
  }

  sub_21D0CF7E0(v24, &qword_27CE5BF00);
LABEL_9:
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  v9 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CCD0);
  inited = swift_initStackObject();
  *(inited + 16) = sub_21D4AE1AC;
  *(inited + 24) = v8;
  v11 = v9;
  sub_21D4ACC8C(v11, v7, v24);
  v12 = v24[0];
  if (v24[0])
  {
    while (1)
    {
      v15 = OBJC_IVAR____TtC15RemindersUICoreP33_F67546AE838D2B2D0B8FE7194B3E29A712TabBarButton_itemID;
      swift_beginAccess();
      sub_21D0D3954(v12 + v15, v24, &qword_27CE5BE60);
      sub_21D0D3954(a1, &v26, &qword_27CE5BE60);
      if (!v25)
      {
        break;
      }

      sub_21D0D3954(v24, v29, &qword_27CE5BE60);
      if (!*(&v27 + 1))
      {
        v16 = v12;
        sub_21D181D3C(v29);
LABEL_17:
        sub_21D0CF7E0(v24, &qword_27CE5BF00);
        v14 = 0;
        goto LABEL_12;
      }

      v22[0] = v26;
      v22[1] = v27;
      v23 = v28;
      v13 = v12;
      v14 = MEMORY[0x223D445C0](v29, v22);
      sub_21D181D3C(v22);
      sub_21D181D3C(v29);
      sub_21D0CF7E0(v24, &qword_27CE5BE60);
LABEL_12:
      [v12 setSelected_];

      sub_21D4ACC8C(v11, v7, v24);
      v12 = v24[0];
      if (!v24[0])
      {
        goto LABEL_19;
      }
    }

    v17 = *(&v27 + 1);
    v18 = v12;
    if (!v17)
    {
      sub_21D0CF7E0(v24, &qword_27CE5BE60);
      v14 = 1;
      goto LABEL_12;
    }

    goto LABEL_17;
  }

LABEL_19:

  sub_21D4AD164();
  return sub_21D0CF7E0(a1, &qword_27CE5BE60);
}

uint64_t sub_21D4AB984(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC15RemindersUICore18TTRIQuickBarTabBar_markedItemIDs] = a1;

  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C8B0);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_21D480300;
  *(v3 + 24) = v2;
  v21[0] = v3;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C8B8);
  sub_21D0D0F1C(&qword_280D0C198, &qword_27CE5C8B8);
  sub_21DBFA48C();

  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CCD0);
  inited = swift_initStackObject();
  *(inited + 16) = sub_21D4AE1AC;
  *(inited + 24) = v6;
  v9 = v7;
  sub_21D4ACC8C(v9, v5, v21);
  v10 = v21[0];
  if (v21[0])
  {
    while (1)
    {
      v13 = OBJC_IVAR____TtC15RemindersUICoreP33_F67546AE838D2B2D0B8FE7194B3E29A712TabBarButton_itemID;
      swift_beginAccess();
      sub_21D0D3954(v10 + v13, v21, &qword_27CE5BE60);
      sub_21D0D3954(v25, &v22, &qword_27CE5BE60);
      if (!v21[3])
      {
        break;
      }

      sub_21D0D3954(v21, v20, &qword_27CE5BE60);
      if (!*(&v23 + 1))
      {
        v14 = v10;
        sub_21D181D3C(v20);
LABEL_9:
        sub_21D0CF7E0(v21, &qword_27CE5BF00);
        v12 = 0;
        goto LABEL_4;
      }

      v18[0] = v22;
      v18[1] = v23;
      v19 = v24;
      v11 = v10;
      v12 = MEMORY[0x223D445C0](v20, v18);
      sub_21D181D3C(v18);
      sub_21D181D3C(v20);
      sub_21D0CF7E0(v21, &qword_27CE5BE60);
LABEL_4:
      [v10 setSelected_];

      sub_21D4ACC8C(v9, v5, v21);
      v10 = v21[0];
      if (!v21[0])
      {
        goto LABEL_11;
      }
    }

    v15 = *(&v23 + 1);
    v16 = v10;
    if (!v15)
    {
      sub_21D0CF7E0(v21, &qword_27CE5BE60);
      v12 = 1;
      goto LABEL_4;
    }

    goto LABEL_9;
  }

LABEL_11:

  sub_21D4AD164();
  return sub_21D0CF7E0(v25, &qword_27CE5BE60);
}

void sub_21D4ABCE4(double a1)
{
  v2 = OBJC_IVAR____TtC15RemindersUICore18TTRIQuickBarTabBar_stackView;
  v3 = *&v1[OBJC_IVAR____TtC15RemindersUICore18TTRIQuickBarTabBar_stackView];
  if (!v3)
  {
    goto LABEL_29;
  }

  [v3 layoutIfNeeded];
  *(swift_allocObject() + 16) = v1;
  v5 = v1;
  v6 = sub_21D4C1328(sub_21D480300);

  v7 = v6 < 0 || (v6 & 0x4000000000000000) != 0;
  if (v7)
  {
    if (sub_21DBFBD7C())
    {
      goto LABEL_7;
    }
  }

  else if (*(v6 + 16))
  {
LABEL_7:
    if ((v6 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223D44740](0, v6);
LABEL_10:
      v9 = v8;
      [v8 bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v27.origin.x = v11;
      v27.origin.y = v13;
      v27.size.width = v15;
      v27.size.height = v17;
      Width = CGRectGetWidth(v27);
      if (v7)
      {
        v19 = sub_21DBFBD7C();
      }

      else
      {
        v19 = *(v6 + 16);
      }

      v20 = *&v1[v2];
      if (v20)
      {
        [v20 bounds];
        v21 = CGRectGetWidth(v28);
        v22 = *&v1[v2];
        if (v22)
        {
          v23 = (v21 - Width * v19) * 0.5;
          if (v23 < 0.0)
          {
            v23 = 0.0;
          }

          if (a1 + Width * -0.5 >= v23)
          {
            v24 = v23;
          }

          else
          {
            v24 = a1 + Width * -0.5;
          }

          v25 = v22;

          [v25 setLayoutMargins_];

          return;
        }

LABEL_31:
        __break(1u);
        return;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (*(v6 + 16))
    {
      v8 = *(v6 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }
}

uint64_t sub_21D4ABF18()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5CC70);
  v1 = __swift_project_value_buffer(v0, qword_27CE5CC70);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_21D4ABFE0()
{
  result = *(v0 + OBJC_IVAR____TtC15RemindersUICore18TTRIQuickBarTabBar_items);
  if (result)
  {
    v36 = result[2];
    if (v36)
    {
      v35 = OBJC_IVAR____TtC15RemindersUICore18TTRIQuickBarTabBar_stackView;
      v2 = (result + 4);
      result = sub_21DBF8E0C();
      v3 = 0;
      v34 = result;
      do
      {
        if (v3 >= result[2])
        {
          __break(1u);
LABEL_20:
          __break(1u);
          return result;
        }

        sub_21D47F938(v2, v43);
        type metadata accessor for TabBarButton();
        v4 = [swift_getObjCClassFromMetadata() buttonWithType_];
        v5 = objc_allocWithZone(MEMORY[0x277D756C8]);
        v6 = v4;
        v7 = [v5 init];
        [v6 addInteraction_];

        [v6 setTranslatesAutoresizingMaskIntoConstraints_];
        sub_21D181CE0(v43, v41);
        v8 = OBJC_IVAR____TtC15RemindersUICoreP33_F67546AE838D2B2D0B8FE7194B3E29A712TabBarButton_itemID;
        swift_beginAccess();
        sub_21D4ADEDC(v41, v6 + v8);
        swift_endAccess();
        v9 = v44;
        [v6 setImage:v44 forState:0];
        [v6 setImage:*(&v44 + 1) forState:4];
        [v6 setImage:v9 forState:2];
        [v6 setTitle:0 forState:0];
        [v6 addTarget:v37 action:sel_buttonTouchDown_ forControlEvents:1];
        [v6 addTarget:v37 action:sel_buttonAction_ forControlEvents:0x2000];
        v10 = v6;
        v11 = sub_21DBFA12C();
        [v10 setAccessibilityLabel_];

        v12 = v46;
        v13 = v47;
        sub_21DBF8E0C();
        sub_21D1AEF04(v43);
        v14 = &v10[OBJC_IVAR____TtC15RemindersUICoreP33_F67546AE838D2B2D0B8FE7194B3E29A712TabBarButton_ttriAccessibilityHint];
        *v14 = v12;
        *(v14 + 1) = v13;

        *&v10[OBJC_IVAR____TtC15RemindersUICore32TTRIQuickBarDragSelectableButton_delegate + 8] = &off_282EBFA80;
        swift_unknownObjectWeakAssign();
        v15 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_21DC0AA00;
        v17 = [v10 widthAnchor];

        v18 = [v17 constraintEqualToConstant_];
        *(v16 + 32) = v18;
        v19 = [v10 heightAnchor];

        v20 = [v19 constraintEqualToConstant_];
        *(v16 + 40) = v20;
        sub_21D0D8CF0(0, &qword_280D177D0);
        v21 = sub_21DBFA5DC();

        [v15 activateConstraints_];

        result = *&v37[v35];
        if (!result)
        {
          goto LABEL_20;
        }

        ++v3;
        [result addArrangedSubview_];

        v2 += 88;
        result = v34;
      }

      while (v36 != v3);

      v42 = 0;
      memset(v41, 0, sizeof(v41));
      v22 = swift_allocObject();
      *(v22 + 16) = 0;
      v23 = swift_allocObject();
      *(v23 + 16) = v37;
      *(v23 + 24) = v22;
      v24 = v37;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CCD0);
      inited = swift_initStackObject();
      *(inited + 16) = sub_21D4AE1AC;
      *(inited + 24) = v23;
      v26 = v24;
      sub_21D4ACC8C(v26, v22, v43);
      for (i = v43[0]; v43[0]; i = v43[0])
      {
        v30 = OBJC_IVAR____TtC15RemindersUICoreP33_F67546AE838D2B2D0B8FE7194B3E29A712TabBarButton_itemID;
        swift_beginAccess();
        sub_21D0D3954(i + v30, v43, &qword_27CE5BE60);
        sub_21D0D3954(v41, &v44, &qword_27CE5BE60);
        if (v43[3])
        {
          sub_21D0D3954(v43, v40, &qword_27CE5BE60);
          if (*(&v45 + 1))
          {
            v38[0] = v44;
            v38[1] = v45;
            v39 = v46;
            v31 = i;
            v29 = MEMORY[0x223D445C0](v40, v38);
            sub_21D181D3C(v38);
            sub_21D181D3C(v40);
            sub_21D0CF7E0(v43, &qword_27CE5BE60);
            goto LABEL_11;
          }

          v28 = i;
          sub_21D181D3C(v40);
        }

        else
        {
          v32 = *(&v45 + 1);
          v33 = i;
          if (!v32)
          {
            sub_21D0CF7E0(v43, &qword_27CE5BE60);
            v29 = 1;
            goto LABEL_11;
          }
        }

        sub_21D0CF7E0(v43, &qword_27CE5BF00);
        v29 = 0;
LABEL_11:
        [i setSelected_];

        sub_21D4ACC8C(v26, v22, v43);
      }

      sub_21D4AD164();
      return sub_21D0CF7E0(v41, &qword_27CE5BE60);
    }
  }

  return result;
}

double sub_21D4AC600@<D0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if ([*a1 isSelected])
  {
    v4 = OBJC_IVAR____TtC15RemindersUICoreP33_F67546AE838D2B2D0B8FE7194B3E29A712TabBarButton_itemID;
    swift_beginAccess();
    sub_21D0D3954(v3 + v4, a2, &qword_27CE5BE60);
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

uint64_t sub_21D4AC6E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15RemindersUICoreP33_F67546AE838D2B2D0B8FE7194B3E29A712TabBarButton_itemID;
  swift_beginAccess();
  sub_21D0D3954(v3 + v4, v6, &qword_27CE5BE60);
  if (v7)
  {
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      *a2 = 6;
    }
  }

  else
  {
    result = sub_21D0CF7E0(v6, &qword_27CE5BE60);
    *a2 = 6;
  }

  return result;
}

void sub_21D4AC7B4()
{
  v1 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_21D0D8CF0(0, &qword_280D176A0);
  v2 = sub_21DBFA5DC();
  v3 = [v1 initWithArrangedSubviews_];

  v4 = OBJC_IVAR____TtC15RemindersUICore18TTRIQuickBarTabBar_stackView;
  v5 = *&v0[OBJC_IVAR____TtC15RemindersUICore18TTRIQuickBarTabBar_stackView];
  *&v0[OBJC_IVAR____TtC15RemindersUICore18TTRIQuickBarTabBar_stackView] = v3;
  v6 = v3;

  if (!v6)
  {
    __break(1u);
    goto LABEL_16;
  }

  [v6 setTranslatesAutoresizingMaskIntoConstraints_];

  v7 = *&v0[v4];
  if (!v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v7 setAxis_];
  v8 = *&v0[v4];
  if (!v8)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v8 setSpacing_];
  v9 = *&v0[v4];
  if (!v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v9 setDistribution_];
  v10 = *&v0[v4];
  if (!v10)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v10 setAlignment_];
  v11 = *&v0[v4];
  if (!v11)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v11 setLayoutMarginsRelativeArrangement_];
  v12 = *&v0[v4];
  if (!v12)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v12 setPreservesSuperviewLayoutMargins_];
  v13 = *&v0[v4];
  if (!v13)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v13 setInsetsLayoutMarginsFromSafeArea_];
  v14 = *&v0[v4];
  if (!v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v14 setLayoutMargins_];
  if (!*&v0[v4])
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v0 addSubview_];
  v15 = *&v0[v4];
  if (!v15)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v16 = objc_opt_self();
  v17 = v15;
  UIView.constraintsEqualTo(_:edges:)(v17, 15);

  sub_21D0D8CF0(0, &qword_280D177D0);
  v18 = sub_21DBFA5DC();

  [v16 activateConstraints_];
}

id sub_21D4ACAE4(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC15RemindersUICore18TTRIQuickBarTabBar_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC15RemindersUICore18TTRIQuickBarTabBar_items] = 0;
  v4 = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR____TtC15RemindersUICore18TTRIQuickBarTabBar_markedItemIDs] = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR____TtC15RemindersUICore18TTRIQuickBarTabBar_enabledItemIDs] = v4;
  *&v1[OBJC_IVAR____TtC15RemindersUICore18TTRIQuickBarTabBar_stackView] = 0;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_21D4AC7B4();
  }

  return v6;
}

id sub_21D4ACBD0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CCD0);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21D4ADED4;
  *(v5 + 24) = v4;
  *a2 = v5;

  return a1;
}

void sub_21D4ACC8C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + OBJC_IVAR____TtC15RemindersUICore18TTRIQuickBarTabBar_stackView);
  if (!v4)
  {
    goto LABEL_19;
  }

  v6 = [v4 arrangedSubviews];
  sub_21D0D8CF0(0, &qword_280D176A0);
  v7 = sub_21DBFA5EC();

  swift_beginAccess();
  v8 = *(a2 + 16);
  if (!(v7 >> 62))
  {
    if (v8 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_13:

    v12 = 0;
    goto LABEL_14;
  }

  if (v8 >= sub_21DBFBD7C())
  {
    goto LABEL_13;
  }

LABEL_4:
  swift_beginAccess();
  v9 = *(a2 + 16);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x223D44740](v9, v7);
    goto LABEL_8;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v7 + 8 * v9 + 32);
LABEL_8:
    v11 = v10;

    type metadata accessor for TabBarButton();
    v12 = swift_dynamicCastClass();
    if (!v12)
    {

      goto LABEL_14;
    }

    swift_beginAccess();
    v13 = *(a2 + 16);
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (!v14)
    {
      *(a2 + 16) = v15;
LABEL_14:
      *a3 = v12;
      return;
    }

    goto LABEL_18;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

uint64_t sub_21D4ACE20(uint64_t a1)
{
  sub_21D0D3954(a1, &v10, &qword_27CE5C690);
  if (!*(&v11 + 1))
  {
    v5 = &qword_27CE5C690;
    v6 = &v10;
    return sub_21D0CF7E0(v6, v5);
  }

  type metadata accessor for TabBarButton();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v3 = v7;
  v4 = OBJC_IVAR____TtC15RemindersUICoreP33_F67546AE838D2B2D0B8FE7194B3E29A712TabBarButton_itemID;
  swift_beginAccess();
  sub_21D0D3954(v7 + v4, &v7, &qword_27CE5BE60);
  if (!*(&v8 + 1))
  {

    v5 = &qword_27CE5BE60;
    v6 = &v7;
    return sub_21D0CF7E0(v6, v5);
  }

  v10 = v7;
  v11 = v8;
  v12 = v9;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_21D47E5E0(v1, &v10);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return sub_21D181D3C(&v10);
}

uint64_t sub_21D4ACFE8(uint64_t a1)
{
  sub_21D0CEB98(a1, v8);
  type metadata accessor for TabBarButton();
  result = swift_dynamicCast();
  if (result)
  {
    v3 = v5;
    v4 = OBJC_IVAR____TtC15RemindersUICoreP33_F67546AE838D2B2D0B8FE7194B3E29A712TabBarButton_itemID;
    swift_beginAccess();
    sub_21D0D3954(v5 + v4, &v5, &qword_27CE5BE60);
    if (*(&v6 + 1))
    {
      v8[0] = v5;
      v8[1] = v6;
      v9 = v7;
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_21D47F5CC(v1);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return sub_21D181D3C(v8);
    }

    else
    {

      return sub_21D0CF7E0(&v5, &qword_27CE5BE60);
    }
  }

  return result;
}

void sub_21D4AD164()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C8B0);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_21D480300;
  *(v2 + 24) = v1;
  *&v70[0] = v2;
  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C8B8);
  sub_21D0D0F1C(&qword_280D0C198, &qword_27CE5C8B8);
  sub_21DBFA48C();

  v63 = v77;
  sub_21D0CF7E0(v75, &qword_27CE5BE60);
  if (*&v3[OBJC_IVAR____TtC15RemindersUICore18TTRIQuickBarTabBar_items])
  {
    v4 = *&v3[OBJC_IVAR____TtC15RemindersUICore18TTRIQuickBarTabBar_items];
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v5;
  v7 = v3;
  sub_21DBF8E0C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CCD0);
  inited = swift_initStackObject();
  *(inited + 16) = sub_21D4AE1AC;
  *(inited + 24) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CCD8);
  *(swift_initStackObject() + 16) = inited;
  v57 = OBJC_IVAR____TtC15RemindersUICore18TTRIQuickBarTabBar_markedItemIDs;
  v64 = v5;
  sub_21D4ACC8C(v7, v5, v70);
  v9 = *&v70[0];
  if (*&v70[0])
  {
    v10 = 0;
    v11 = v4 + 32;
    v12 = *MEMORY[0x277D76598];
    v60 = *MEMORY[0x277D76580];
    v61 = ~*MEMORY[0x277D76598];
    v59 = ~*MEMORY[0x277D76580];
    v62 = v7;
    v58 = v4;
    v56 = *MEMORY[0x277D76598];
    while (1)
    {
      v13 = *(v4 + 16);
      if (v10 == v13)
      {

        v7 = v9;
        goto LABEL_56;
      }

      if (v10 >= v13)
      {
        break;
      }

      sub_21D47F938(v11, &v76);
      v71 = v78;
      v72 = v79;
      v73 = v80;
      v74 = v81;
      v70[0] = v76;
      v70[1] = v77;
      v14 = OBJC_IVAR____TtC15RemindersUICoreP33_F67546AE838D2B2D0B8FE7194B3E29A712TabBarButton_itemID;
      swift_beginAccess();
      sub_21D0D3954(&v9[v14], &v67, &qword_27CE5BE60);
      if (*&v67.d)
      {
        v68[0] = *&v67.a;
        v68[1] = *&v67.c;
        tx = v67.tx;
        v15 = v9;
        v16 = [v15 isSelected];
        if (v16 & 1) != 0 || (v17 = *&v7[v57], sub_21DBF8E0C(), v18 = sub_21D1E20E4(v68, v17), , (v18))
        {
          v19 = 0;
          v20 = 0;
          v21 = v16 ^ 1;
          v22 = 1.0;
          v23 = v72;
        }

        else
        {
          v24 = [v15 isEnabled];
          v25 = objc_opt_self();
          if (v24)
          {
            v22 = 0.77;
          }

          else
          {
            v22 = 1.0;
          }

          v26 = &selRef_labelColor;
          if (!v24)
          {
            v26 = &selRef_quaternaryLabelColor;
          }

          v27 = [v25 *v26];
          v23 = *(&v71 + 1);
          v20 = v27;
          v21 = 0;
          v19 = 1;
        }

        v28 = v23;
        [v15 setTintColor_];

        [v15 setImage:v28 forState:0];
        if (v19)
        {
          [v15 setImage:v72 forState:1];
        }

        v29 = 0uLL;
        v30 = xmmword_21DC18110;
        v31 = xmmword_21DC18100;
        if (v16)
        {
          CGAffineTransformMakeScale(&v67, 1.2, 1.2);
          CGAffineTransformTranslate(&v66, &v67, 0.0, -2.0);
          v30 = *&v66.a;
          v31 = *&v66.c;
          v29 = *&v66.tx;
        }

        *&v65.a = v30;
        *&v65.c = v31;
        *&v65.tx = v29;
        v32 = v15;
        v67 = v65;
        [v32 setTransform_];
        v33 = v16 ^ 1;
        v34 = 0.5;
        if (!v63)
        {
          v33 = 0;
        }

        if ((v33 & 1) == 0)
        {
          if ([v32 isEnabled])
          {
            v34 = 1.0;
          }

          else
          {
            v34 = 0.5;
          }
        }

        [v32 setAlpha_];

        v35 = v32;
        v36 = [v35 accessibilityTraits];
        v37 = v61;
        if ((v36 & v12) == 0)
        {
          v37 = -1;
        }

        v38 = v37 & v36;
        if ((v36 & v12) == v12)
        {
          v39 = 0;
        }

        else
        {
          v39 = v12;
        }

        v40 = v39 | v36;
        if (v21)
        {
          v41 = v40;
        }

        else
        {
          v41 = v38;
        }

        [v35 setAccessibilityTraits_];

        v42 = [v35 isEnabled];
        v43 = v35;
        v44 = [v43 accessibilityTraits];
        v45 = v60;
        if ((v44 & v60) == v60)
        {
          v45 = 0;
        }

        v46 = v45 | v44;
        v47 = v59;
        if ((v44 & v60) == 0)
        {
          v47 = -1;
        }

        v48 = v47 & v44;
        if (v42)
        {
          v49 = v48;
        }

        else
        {
          v49 = v46;
        }

        [v43 setAccessibilityTraits_];

        if (v16)
        {
          v50 = qword_280D1BAA8;
          v51 = v43;
          if (v50 != -1)
          {
            swift_once();
          }

          sub_21DBF516C();
          v52 = sub_21DBFA12C();

          [v51 setAccessibilityValue_];

          sub_21DBF516C();
          v53 = sub_21DBFA12C();

          [v51 setAccessibilityHint_];
          v54 = v20;
          v55 = v28;
          v20 = v51;
          v28 = v53;
          v4 = v58;
          v12 = v56;
        }

        else
        {
          v54 = v43;
          [v54 setAccessibilityValue_];
          if (*&v54[OBJC_IVAR____TtC15RemindersUICoreP33_F67546AE838D2B2D0B8FE7194B3E29A712TabBarButton_ttriAccessibilityHint + 8])
          {
            sub_21DBF8E0C();
            v51 = sub_21DBFA12C();
          }

          else
          {
            v51 = 0;
          }

          v4 = v58;
          [v54 setAccessibilityHint_];
          v55 = v54;
        }

        sub_21D181D3C(v68);
        sub_21D1AEF04(v70);
        v7 = v62;
      }

      else
      {

        sub_21D1AEF04(v70);
        sub_21D0CF7E0(&v67, &qword_27CE5BE60);
      }

      v11 += 88;
      ++v10;
      sub_21D4ACC8C(v7, v64, v70);
      v9 = *&v70[0];
      if (!*&v70[0])
      {
        goto LABEL_54;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_54:

LABEL_56:
  }
}

uint64_t sub_21D4ADAB0(void *a1)
{
  type metadata accessor for TabBarButton();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = OBJC_IVAR____TtC15RemindersUICoreP33_F67546AE838D2B2D0B8FE7194B3E29A712TabBarButton_itemID;
    v4 = v2;
    swift_beginAccess();
    sub_21D0D3954(v4 + v3, &v9, &qword_27CE5BE60);
    if (*(&v10 + 1))
    {
      v12[0] = v9;
      v12[1] = v10;
      v13 = v11;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = a1;
        sub_21D47FC7C();
        v7 = v6;

        swift_unknownObjectRelease();
        sub_21D181D3C(v12);
        return v7;
      }

      sub_21D181D3C(v12);
    }

    else
    {
      sub_21D0CF7E0(&v9, &qword_27CE5BE60);
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_21D4ADDEC()
{
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICoreP33_F67546AE838D2B2D0B8FE7194B3E29A712TabBarButton_itemID, &qword_27CE5BE60);
}

uint64_t sub_21D4ADEDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_21D4ADF4C(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC15RemindersUICore18TTRIQuickBarTabBar_enabledItemIDs] = a1;
  sub_21DBF8E0C();

  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CCD0);
  inited = swift_initStackObject();
  *(inited + 16) = sub_21D4AE1AC;
  *(inited + 24) = v4;
  v6 = v1;

  sub_21D4ACC8C(v6, v3, v18);
  v7 = *&v18[0];
  if (*&v18[0])
  {
    v8 = a1 + 56;
    do
    {
      v9 = OBJC_IVAR____TtC15RemindersUICoreP33_F67546AE838D2B2D0B8FE7194B3E29A712TabBarButton_itemID;
      swift_beginAccess();
      sub_21D0D3954(v7 + v9, &v15, &qword_27CE5BE60);
      if (*(&v16 + 1))
      {
        v18[0] = v15;
        v18[1] = v16;
        v19 = v17;
        if (*(a1 + 16) && (v10 = sub_21DBFBDFC(), v11 = -1 << *(a1 + 32), v12 = v10 & ~v11, ((*(v8 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0))
        {
          v13 = ~v11;
          do
          {
            sub_21D181CE0(*(a1 + 48) + 40 * v12, &v15);
            v14 = MEMORY[0x223D445C0](&v15, v18);
            sub_21D181D3C(&v15);
            if (v14)
            {
              break;
            }

            v12 = (v12 + 1) & v13;
          }

          while (((*(v8 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
        }

        else
        {
          v14 = 0;
        }

        [v7 setEnabled_];

        sub_21D181D3C(v18);
      }

      else
      {

        sub_21D0CF7E0(&v15, &qword_27CE5BE60);
      }

      sub_21D4ACC8C(v6, v3, v18);
      v7 = *&v18[0];
    }

    while (*&v18[0]);
  }

  sub_21D4AD164();
}

void sub_21D4AE1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_items) = a1;

  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21D4AE934(a2, a3);
  v6 = *(v3 + OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_stackView);
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = [v6 arrangedSubviews];
  sub_21D0D8CF0(0, &qword_280D176A0);
  v8 = sub_21DBFA5EC();

  if (v8 >> 62)
  {
    v9 = sub_21DBFBD7C();
    if (v9)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_4:
      if (v9 >= 1)
      {
        for (i = 0; i != v9; ++i)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x223D44740](i, v8);
          }

          else
          {
            v11 = *(v8 + 8 * i + 32);
          }

          v12 = v11;
          [v11 removeFromSuperview];
        }

        goto LABEL_11;
      }

      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }
  }

LABEL_11:

  sub_21D4AEA24();
}

void sub_21D4AE314(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = objc_opt_self();
    sub_21D4B0C54(a1, v30);
    v5 = swift_allocObject();
    v6 = v30[1];
    *(v5 + 24) = v30[0];
    *(v5 + 16) = v2;
    *(v5 + 40) = v6;
    *(v5 + 56) = v31;
    v26 = sub_21D4B0CC4;
    *&v27 = v5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    v25 = &block_descriptor_36;
    v7 = _Block_copy(aBlock);
    v8 = v2;

    [v4 animateWithDuration:v7 animations:0.2];
    _Block_release(v7);
    return;
  }

  sub_21D4B0C54(a1, v30);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = v9;
  v11 = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C8E0);
  inited = swift_initStackObject();
  *(inited + 16) = sub_21D480240;
  *(inited + 24) = v10;
  v13 = v11;
  sub_21D4B026C(v13, v9, aBlock);
  for (i = aBlock[0]; aBlock[0]; i = aBlock[0])
  {
    v15 = OBJC_IVAR____TtC15RemindersUICore29TTRIQuickBarQuickPickItemView_itemID;
    swift_beginAccess();
    sub_21D4B0C54(&i[v15], aBlock);
    sub_21D4B0C54(v30, &v27);
    if (v25)
    {
      sub_21D4B0C54(aBlock, v22);
      if (*(&v28 + 1))
      {
        v20[0] = v27;
        v20[1] = v28;
        v21 = v29;
        v16 = MEMORY[0x223D445C0](v22, v20);
        sub_21D181D3C(v20);
        sub_21D181D3C(v22);
        sub_21D0CF7E0(aBlock, &qword_27CE5BE60);
        goto LABEL_11;
      }

      sub_21D181D3C(v22);
    }

    else if (!*(&v28 + 1))
    {
      sub_21D0CF7E0(aBlock, &qword_27CE5BE60);
      v16 = 1;
      goto LABEL_11;
    }

    sub_21D0CF7E0(aBlock, &qword_27CE5BF00);
    v16 = 0;
LABEL_11:
    v17 = *&i[OBJC_IVAR____TtC15RemindersUICore29TTRIQuickBarQuickPickItemView_button];
    if (!v17)
    {

      __break(1u);
      return;
    }

    v18 = type metadata accessor for TTRIQuickBarQuickPickButton();
    v23.receiver = v17;
    v23.super_class = v18;
    v19 = v17;
    objc_msgSendSuper2(&v23, sel_setSelected_, v16 & 1);
    v19[OBJC_IVAR____TtC15RemindersUICore27TTRIQuickBarQuickPickButton_colorsAreDirty] = 1;
    [v19 setNeedsLayout];

    sub_21D4B026C(v13, v9, aBlock);
  }

  sub_21D0CF7E0(v30, &qword_27CE5BE60);
}

void sub_21D4AE698(void *a1, uint64_t a2)
{
  sub_21D4B0C54(a2, v22);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v5 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C8E0);
  inited = swift_initStackObject();
  *(inited + 16) = sub_21D4B0CD8;
  *(inited + 24) = v4;
  v7 = v5;
  sub_21D4B026C(v7, v3, v18);
  v8 = v18[0];
  if (!v18[0])
  {
LABEL_11:

    sub_21D0CF7E0(v22, &qword_27CE5BE60);

    return;
  }

  while (1)
  {
    v9 = OBJC_IVAR____TtC15RemindersUICore29TTRIQuickBarQuickPickItemView_itemID;
    swift_beginAccess();
    sub_21D4B0C54(&v8[v9], v18);
    sub_21D4B0C54(v22, &v19);
    if (v18[3])
    {
      sub_21D4B0C54(v18, v16);
      if (*(&v20 + 1))
      {
        v14[0] = v19;
        v14[1] = v20;
        v15 = v21;
        v10 = MEMORY[0x223D445C0](v16, v14);
        sub_21D181D3C(v14);
        sub_21D181D3C(v16);
        sub_21D0CF7E0(v18, &qword_27CE5BE60);
        goto LABEL_9;
      }

      sub_21D181D3C(v16);
    }

    else if (!*(&v20 + 1))
    {
      sub_21D0CF7E0(v18, &qword_27CE5BE60);
      v10 = 1;
      goto LABEL_9;
    }

    sub_21D0CF7E0(v18, &qword_27CE5BF00);
    v10 = 0;
LABEL_9:
    v11 = *&v8[OBJC_IVAR____TtC15RemindersUICore29TTRIQuickBarQuickPickItemView_button];
    if (!v11)
    {
      break;
    }

    v12 = type metadata accessor for TTRIQuickBarQuickPickButton();
    v17.receiver = v11;
    v17.super_class = v12;
    v13 = v11;
    objc_msgSendSuper2(&v17, sel_setSelected_, v10 & 1);
    v13[OBJC_IVAR____TtC15RemindersUICore27TTRIQuickBarQuickPickButton_colorsAreDirty] = 1;
    [v13 setNeedsLayout];

    sub_21D4B026C(v7, v3, v18);
    v8 = v18[0];
    if (!v18[0])
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_21D4AE934(uint64_t result, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_contentTitle);
  v4 = *(v2 + OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_contentTitle);
  v5 = *(v2 + OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_contentTitle + 8);
  *v3 = result;
  v3[1] = a2;
  if (a2)
  {
    if (v5)
    {
      v6 = v4 == result && v5 == a2;
      if (v6 || (sub_21DBFC64C() & 1) != 0)
      {
        goto LABEL_14;
      }
    }
  }

  else if (!v5)
  {
    return result;
  }

  v7 = sub_21D4AFC60();
  if (v3[1])
  {
    sub_21DBF8E0C();
    v8 = sub_21DBFA12C();
  }

  else
  {
    v8 = 0;
  }

  [v7 setText_];

  sub_21D4AFCC0();
LABEL_14:
}

void sub_21D4AEA24()
{
  v1 = *&v0[OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_items];
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = v0;
      v33 = MEMORY[0x277D84F90];
      sub_21DBF8E0C();
      sub_21DB5D558(v2);
      v4 = 0;
      v5 = OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_needsUpdateItemImages;
      v28 = OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_stackView;
      v6 = v1 + 32;
      do
      {
        if (v4 >= *(v1 + 16))
        {
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        sub_21D47FBCC(v6, v30);
        type metadata accessor for TTRIQuickBarQuickPickItemView();
        v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        [v7 setTranslatesAutoresizingMaskIntoConstraints_];
        sub_21D181CE0(v30, v29);
        v8 = OBJC_IVAR____TtC15RemindersUICore29TTRIQuickBarQuickPickItemView_itemID;
        swift_beginAccess();
        sub_21D4ADEDC(v29, &v7[v8]);
        swift_endAccess();
        v9 = *&v7[OBJC_IVAR____TtC15RemindersUICore29TTRIQuickBarQuickPickItemView_label];
        if (!v9)
        {
          goto LABEL_24;
        }

        v10 = v9;
        v11 = sub_21DBFA12C();
        [v10 setText_];

        v12 = v31;
        if (v31)
        {
          v13 = v7;
          v12 = sub_21DBFA12C();
        }

        else
        {
          v14 = v7;
        }

        [v7 setAccessibilityValue_];

        if (v32)
        {
          v15 = sub_21DBFA12C();
        }

        else
        {
          v15 = 0;
        }

        [v7 setAccessibilityHint_];

        v3[v5] = 1;
        [v3 setNeedsLayout];
        v16 = OBJC_IVAR____TtC15RemindersUICore29TTRIQuickBarQuickPickItemView_button;
        v17 = *&v7[OBJC_IVAR____TtC15RemindersUICore29TTRIQuickBarQuickPickItemView_button];
        if (!v17)
        {
          goto LABEL_25;
        }

        [v17 addTarget:v3 action:sel_itemAction_ forControlEvents:0x2000];
        v18 = *&v7[v16];
        if (!v18)
        {
          goto LABEL_22;
        }

        *(v18 + OBJC_IVAR____TtC15RemindersUICore32TTRIQuickBarDragSelectableButton_delegate + 8) = &off_282EBFD00;
        swift_unknownObjectWeakAssign();
        v19 = [v7 widthAnchor];

        v20 = [v19 constraintLessThanOrEqualToConstant_];
        v21 = v20;
        MEMORY[0x223D42D80]();
        if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        v22 = *&v3[v28];
        if (!v22)
        {
          goto LABEL_23;
        }

        ++v4;
        v23 = v22;
        [v23 addArrangedSubview_];

        sub_21D47FC28(v30);
        v6 += 104;
      }

      while (v2 != v4);
      v24 = objc_opt_self();
      sub_21D0D8CF0(0, &qword_280D177D0);
      v25 = sub_21DBFA5DC();
      [v24 activateConstraints_];

      v26 = *&v3[v28];
      if (v26)
      {
        v27 = v26;

        [v27 setAlignment_];

        return;
      }

LABEL_26:
      __break(1u);
    }
  }
}

id sub_21D4AEE10(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = &v4[OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_contentTitle];
  *v10 = 0;
  v10[1] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_items] = 0;
  v4[OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_needsUpdateItemImages] = 1;
  *&v4[OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_stackView] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView____lazy_storage___titleLabelTopToViewTopConstraint] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView____lazy_storage___viewTopToQuickPickStackViewTopConstraint] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView____lazy_storage___quickPickStackViewTopToTitleLabelLastBaselineConstraint] = 0;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  sub_21D4AEF1C();

  return v11;
}

void sub_21D4AEF1C()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_21D0D8CF0(0, &qword_280D176A0);
  v3 = sub_21DBFA5DC();
  v4 = [v2 initWithArrangedSubviews_];

  v5 = OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_stackView;
  v6 = *&v1[OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_stackView];
  *&v1[OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_stackView] = v4;
  v7 = v4;

  if (!v7)
  {
    __break(1u);
    goto LABEL_17;
  }

  [v7 setTranslatesAutoresizingMaskIntoConstraints_];

  v8 = *&v1[v5];
  if (!v8)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v8 setAxis_];
  v9 = *&v1[v5];
  if (!v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v9 setSpacing_];
  v10 = *&v1[v5];
  if (!v10)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v10 setDistribution_];
  v11 = sub_21D4AFC60();
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];

  v12 = OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView____lazy_storage___titleLabel;
  v13 = *&v1[OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView____lazy_storage___titleLabel];
  if (*&v1[OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_contentTitle + 8])
  {
    v14 = v13;
    sub_21DBF8E0C();
    v15 = sub_21DBFA12C();
  }

  else
  {
    v14 = v13;
    v15 = 0;
  }

  [v14 setText_];

  v16 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
  [v1 addInteraction_];

  if (!*&v1[v5])
  {
    goto LABEL_20;
  }

  [v1 addSubview_];
  [v1 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_21DC181B0;
  v18 = [v1 centerXAnchor];
  v19 = *&v1[v5];
  if (!v19)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v20 = [v19 centerXAnchor];
  v21 = [v18 constraintEqualToAnchor_];

  *(v17 + 32) = v21;
  v22 = [v1 leadingAnchor];
  v23 = *&v1[v5];
  if (!v23)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v24 = [v23 leadingAnchor];
  v25 = [v22 constraintLessThanOrEqualToAnchor_];

  *(v17 + 40) = v25;
  v26 = [v1 trailingAnchor];
  v27 = *&v1[v5];
  if (!v27)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = [v27 trailingAnchor];
  v29 = [v26 constraintGreaterThanOrEqualToAnchor_];

  *(v17 + 48) = v29;
  v30 = [v1 leadingAnchor];
  v31 = *&v1[v5];
  if (!v31)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v53 = v12;
  v32 = [v31 leadingAnchor];
  v33 = [v30 constraintEqualToAnchor_];

  type metadata accessor for UILayoutPriority(0);
  sub_21D367748();
  sub_21DBF84EC();
  LODWORD(v34) = v54;
  [v33 setPriority_];
  *(v17 + 56) = v33;
  v35 = [v1 trailingAnchor];
  v36 = *&v1[v5];
  if (!v36)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v37 = [v36 trailingAnchor];
  v38 = [v35 constraintEqualToAnchor_];

  sub_21DBF84EC();
  LODWORD(v39) = v54;
  [v38 setPriority_];
  *(v17 + 64) = v38;
  v40 = [v1 bottomAnchor];
  v41 = *&v1[v5];
  if (v41)
  {
    v42 = v40;
    v43 = objc_opt_self();
    v44 = [v41 bottomAnchor];
    v45 = [v42 constraintEqualToAnchor_];

    *(v17 + 72) = v45;
    v46 = [*&v1[v53] leadingAnchor];
    v47 = [v1 leadingAnchor];
    v48 = [v46 constraintEqualToAnchor_];

    *(v17 + 80) = v48;
    v49 = [*&v1[v53] trailingAnchor];
    v50 = [v1 trailingAnchor];
    v51 = [v49 constraintEqualToAnchor_];

    *(v17 + 88) = v51;
    *(v17 + 96) = sub_21D4AFF30();
    *(v17 + 104) = sub_21D4AFFFC();
    *(v17 + 112) = sub_21D4B00D0();
    sub_21D0D8CF0(0, &qword_280D177D0);
    v52 = sub_21DBFA5DC();

    [v43 activateConstraints_];

    sub_21D4AFCC0();
    return;
  }

LABEL_26:
  __break(1u);
}

id sub_21D4AF5BC(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = &v1[OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_contentTitle];
  *v4 = 0;
  v4[1] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_items] = 0;
  v1[OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_needsUpdateItemImages] = 1;
  *&v1[OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_stackView] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView____lazy_storage___titleLabel] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView____lazy_storage___titleLabelTopToViewTopConstraint] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView____lazy_storage___viewTopToQuickPickStackViewTopConstraint] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView____lazy_storage___quickPickStackViewTopToTitleLabelLastBaselineConstraint] = 0;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_21D4AEF1C();
  }

  return v6;
}

void sub_21D4AF6D8()
{
  v48.receiver = v0;
  v48.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v48, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_items;
  v2 = *&v0[OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_items];
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      [v0 bounds];
      Width = CGRectGetWidth(v49);
      v5 = 16.0;
      v6 = 20.0;
      if (v3 == 4)
      {
        v6 = 13.0;
      }

      if (Width <= 327.0)
      {
        v5 = v6;
      }

      v7 = 15.0;
      if (v3 == 4)
      {
        v7 = 9.0;
      }

      if (Width <= 272.0)
      {
        v8 = v7;
      }

      else
      {
        v8 = v5;
      }

      v9 = *&v0[OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_stackView];
      if (!v9)
      {
        goto LABEL_44;
      }

      [v9 setSpacing_];
    }
  }

  if (v0[OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_needsUpdateItemImages] == 1)
  {
    v0[OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_needsUpdateItemImages] = 0;
    v10 = *&v0[v1];
    if (v10)
    {
      v11 = swift_allocObject();
      *(v11 + 16) = 0;
      v12 = swift_allocObject();
      *(v12 + 16) = v0;
      *(v12 + 24) = v11;
      v13 = v0;
      v38 = v11;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C8E0);
      inited = swift_initStackObject();
      *(inited + 16) = sub_21D4B0CD8;
      *(inited + 24) = v12;
      v37 = v13;
      sub_21DBF8E0C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CD38);
      *(swift_initStackObject() + 16) = inited;
      v36 = *(v10 + 16);
      if (!v36)
      {
LABEL_39:

        return;
      }

      v15 = 0;
      v16 = v10 + 32;
      v35 = v10;
      while (1)
      {
        if (v15 >= *(v10 + 16))
        {
          __break(1u);
LABEL_43:

          __break(1u);
LABEL_44:
          __break(1u);
          return;
        }

        sub_21D47FBCC(v16, v40);
        sub_21D4B026C(v37, v38, &v39);
        v18 = v39;
        if (!v39)
        {

          sub_21D47FC28(v40);
          return;
        }

        v46[4] = v43;
        v46[5] = v44;
        v47 = v45;
        v46[2] = v41;
        v46[3] = v42;
        v46[0] = v40[0];
        v46[1] = v40[1];
        v19 = *(&v41 + 1);

        v20 = sub_21D47FC28(v46);
        v21 = v19(v20);
        v17 = v22;

        if (v21)
        {
          break;
        }

        v17 = v18;
LABEL_19:
        ++v15;

        v16 += 104;
        if (v36 == v15)
        {
          goto LABEL_39;
        }
      }

      v23 = *&v18[OBJC_IVAR____TtC15RemindersUICore29TTRIQuickBarQuickPickItemView_button];
      if (!v23)
      {
        goto LABEL_43;
      }

      v24 = v23;
      if ([v21 renderingMode] == 2)
      {
        if (v17)
        {
          v25 = v17;
          v26 = v17;
          v27 = v17;
        }

        else
        {
          v26 = v21;
          v25 = 0;
          v27 = v21;
        }

        v29 = objc_opt_self();
        v30 = v25;
        v31 = [v29 secondaryLabelColor];
        v28 = [v21 imageWithTintColor_];
      }

      else
      {
        if (!v17)
        {
          v28 = v21;
          goto LABEL_37;
        }

        v26 = v17;
        v28 = v21;
        v27 = v17;
      }

      v32 = v26;
      if ([v32 renderingMode] != 2)
      {
LABEL_34:

LABEL_38:
        [v24 setImage:v28 forState:0];
        [v24 setImage:v27 forState:4];
        [v24 setImage:v27 forState:1];
        [v24 setImage:v27 forState:5];

        v10 = v35;
        goto LABEL_19;
      }

      v33 = [objc_opt_self() whiteColor];
      v34 = [v32 imageWithTintColor_];

      if (v34)
      {
        v27 = [v34 imageWithRenderingMode_];

        goto LABEL_34;
      }

LABEL_37:
      v27 = 0;
      goto LABEL_38;
    }
  }
}

id sub_21D4AFC60()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView____lazy_storage___titleLabel);
  }

  else
  {
    v4 = sub_21D4AFD98();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_21D4AFCC0()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_contentTitle + 8);
  v2 = sub_21D4AFC60();
  v3 = v2;
  if (v1)
  {
    v4 = 1000.0;
  }

  else
  {
    v4 = 250.0;
  }

  if (v1)
  {
    v5 = 250.0;
  }

  else
  {
    v5 = 1000.0;
  }

  [v2 setHidden_];

  v6 = sub_21D4AFF30();
  *&v7 = v4;
  [v6 setPriority_];

  v8 = sub_21D4AFFFC();
  *&v9 = v5;
  [v8 setPriority_];

  v11 = sub_21D4B00D0();
  *&v10 = v4;
  [v11 setPriority_];
}