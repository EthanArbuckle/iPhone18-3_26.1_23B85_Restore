uint64_t sub_20BC40F54(uint64_t a1, uint64_t *a2, void (*a3)(void))
{
  v5 = sub_20C1377D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C136704();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C1356C4();
  __swift_allocate_value_buffer(v13, a2);
  __swift_project_value_buffer(v13, a2);
  a3();
  (*(v10 + 104))(v12, *MEMORY[0x277D52C40], v9);
  (*(v6 + 104))(v8, *MEMORY[0x277D53698], v5);
  return sub_20C135694();
}

uint64_t sub_20BC41120()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C730);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A28);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C14F320;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = sub_20C1355A4();
  v4[1] = v6;
  if (qword_27C760A18 != -1)
  {
    swift_once();
  }

  v7 = sub_20C1356C4();
  v8 = __swift_project_value_buffer(v7, qword_27C76C6D0);
  v9 = *(*(v7 - 8) + 16);
  v9(v4 + v5, v8, v7);
  v10 = (v4 + v1);
  v11 = *(v0 + 48);
  *v10 = sub_20C135584();
  v10[1] = v12;
  if (qword_27C760A20 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v7, qword_27C76C6E8);
  v9(v10 + v11, v13, v7);
  v14 = sub_20B6B4C84(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27C76C700 = v14;
  return result;
}

uint64_t sub_20BC41324()
{
  v0 = sub_20C13BB84();
  MEMORY[0x28223BE20](v0);
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_20C13C914();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_20C13DA64();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_20C132554();
      swift_allocObject();
      sub_20C132544();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C708);
      sub_20BC41A34();
      sub_20C132534();
      sub_20B7197A0(v6, v7);

      return *&v10[0];
    }
  }

  else
  {
    sub_20B520158(v10, &unk_27C768A00);
  }

  if (qword_27C760A28 != -1)
  {
    swift_once();
  }

  v5 = qword_27C76C700;

  return v5;
}

uint64_t sub_20BC416CC()
{
  v0 = sub_20C13BB84();
  MEMORY[0x28223BE20](v0);
  sub_20C132584();
  swift_allocObject();
  sub_20C132574();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C708);
  sub_20BC4198C();
  v1 = sub_20C132564();
  v3 = v2;

  v4 = [objc_opt_self() standardUserDefaults];
  v5 = sub_20C132C34();
  v6 = sub_20C13C914();
  [v4 setObject:v5 forKey:v6];

  return sub_20B7197A0(v1, v3);
}

unint64_t sub_20BC4198C()
{
  result = qword_27C76C710;
  if (!qword_27C76C710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76C708);
    sub_20BC41ADC(&qword_27C76C718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76C710);
  }

  return result;
}

unint64_t sub_20BC41A34()
{
  result = qword_27C76C720;
  if (!qword_27C76C720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76C708);
    sub_20BC41ADC(&qword_27C76C728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76C720);
  }

  return result;
}

uint64_t sub_20BC41ADC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_20C1356C4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_20BC41B20(size_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765E38);
  MEMORY[0x28223BE20](v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v29 = v23 - v8;
  v9 = *(a1 + 16);
  if (v9 < 2)
  {
    return;
  }

  v10 = 0;
  v11 = v9 >> 1;
  v12 = v9 - 1;
  v24 = v9 >> 1;
  v25 = v6;
  v23[1] = v6 + 16;
  v26 = (v6 + 40);
  while (1)
  {
    if (v10 == v12)
    {
      goto LABEL_5;
    }

    v13 = *(a1 + 16);
    if (v10 >= v13)
    {
      break;
    }

    v14 = v4;
    v28 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v15 = a1 + v28;
    v16 = *(v6 + 72);
    v17 = a1;
    v18 = *(v6 + 16);
    v27 = v16 * v10;
    v18(v29, v15 + v16 * v10, v2, v7);
    if (v12 >= v13)
    {
      goto LABEL_14;
    }

    v19 = v16 * v12;
    v20 = v15 + v16 * v12;
    v4 = v14;
    (v18)(v14, v20, v2);
    a1 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_20BF9088C(v17);
    }

    v21 = a1 + v28;
    v22 = *v26;
    (*v26)(a1 + v28 + v27, v4, v2);
    if (v12 >= *(a1 + 16))
    {
      goto LABEL_15;
    }

    v22(v21 + v19, v29, v2);
    v11 = v24;
    v6 = v25;
LABEL_5:
    ++v10;
    --v12;
    if (v11 == v10)
    {
      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

unint64_t sub_20BC41D58(uint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(unint64_t, uint64_t, uint64_t), uint64_t (*a4)(unint64_t))
{
  if (!(a1 >> 62))
  {
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v22 = a2;
    v23 = a3;
    v24 = a1;
    v25 = sub_20C13DB34();
    if (v25)
    {
      v26 = v25;
      v5 = v22(v25, 0);
      v23(v5 + 32, v26, v24);
      v28 = v27;

      if (v28 != v26)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v5 = MEMORY[0x277D84F90];
LABEL_3:
      if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
      {
        v6 = *(v5 + 16);
        v7 = v6 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_20C13DB34();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v6 = a1;
    v7 = a1 / 2;
LABEL_6:
    if (v6 + 1 < 3)
    {
      return v5;
    }

    v9 = -v7;
    v10 = 4;
    while (1)
    {
      v11 = v6 - (v10 - 3);
      if (__OFSUB__(v6, v10 - 3))
      {
        break;
      }

      a1 = v10 - 4;
      if (v10 - 4 != v11)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x20F2F5430]();
          v15 = MEMORY[0x20F2F5430](v6 - (v10 - 3), v5);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v12)
          {
            goto LABEL_32;
          }

          if (v11 >= v12)
          {
            goto LABEL_33;
          }

          v13 = *(v5 + 8 * v11 + 32);
          v14 = *(v5 + 8 * v10);
          v15 = v13;
        }

        v16 = v15;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = a4(v5);
          v17 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v17) = 0;
        }

        v18 = v5 & 0xFFFFFFFFFFFFFF8;
        v19 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v10);
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v10) = v16;

        if ((v5 & 0x8000000000000000) != 0 || v17)
        {
          a1 = a4(v5);
          v5 = a1;
          v18 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v11 >= *(v18 + 16))
        {
          goto LABEL_34;
        }

        v20 = v18 + 8 * v11;
        v21 = *(v20 + 32);
        *(v20 + 32) = v14;
      }

      ++v10;
      if (v9 + v10 == 4)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

void sub_20BC41F84()
{
  v1 = v0;
  v38.receiver = v0;
  v38.super_class = type metadata accessor for DisplayPreferencesViewController();
  objc_msgSendSuper2(&v38, sel_viewDidLoad);
  v2 = [v0 navigationController];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 navigationBar];

    v5 = [objc_opt_self() whiteColor];
    [v4 setTintColor_];
  }

  v6 = [v1 tableView];
  if (!v6)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = v6;
  v8 = objc_opt_self();
  v9 = [v8 whiteColor];
  [v7 setTintColor_];

  sub_20C1380F4();
  v10 = sub_20C138104();
  if (v10 == sub_20C138104())
  {
    v11 = [v1 tableView];
    if (!v11)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v12 = v11;
    v13 = [v8 clearColor];
    [v12 setBackgroundColor_];

    v14 = [objc_opt_self() effectWithStyle_];
    v15 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

    [v12 setBackgroundView_];
  }

  v16 = [v1 tableView];
  if (!v16)
  {
    goto LABEL_18;
  }

  v17 = v16;
  sub_20B51C88C(0, &qword_27C76C770);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = sub_20C13C914();
  [v17 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v19];

  v20 = [v1 tableView];
  if (!v20)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v21 = v20;
  sub_20B51C88C(0, &qword_27C76C778);
  v22 = swift_getObjCClassFromMetadata();
  v23 = sub_20C13C914();
  [v21 registerClass:v22 forHeaderFooterViewReuseIdentifier:v23];

  v24 = [v1 navigationItem];
  type metadata accessor for SeymourLocalizationBundle();
  v25 = swift_getObjCClassFromMetadata();
  v26 = [objc_opt_self() bundleForClass_];
  sub_20C132964();

  v27 = sub_20C13C914();

  [v24 setTitle_];

  v28 = [v1 navigationItem];
  v29 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v1 action:sel_dismissTapped];
  [v28 setRightBarButtonItem_];

  sub_20C1380F4();
  v30 = sub_20C138104();
  if (v30 != sub_20C138104())
  {
    sub_20C1380F4();
    v34 = sub_20C138104();
    if (v34 != sub_20C138104())
    {
      return;
    }

    v35 = [v1 tableView];
    if (v35)
    {
      v36 = v35;
      swift_getKeyPath();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v37 = sub_20C132A84();

      v33 = *&v1[OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_contentSizeObserver];
      *&v1[OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_contentSizeObserver] = v37;
      goto LABEL_15;
    }

LABEL_22:
    __break(1u);
    return;
  }

  v31 = [v1 tableView];
  if (!v31)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v32 = v31;
  v33 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v32 setTableHeaderView_];

LABEL_15:
}

void sub_20BC42540(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [v1 contentSize];
    v5 = v4;
    [v1 contentSize];
    [v3 setPreferredContentSize_];
  }
}

id sub_20BC42778()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_contentSizeObserver;
  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_contentSizeObserver];
  if (v3)
  {
    v4 = v3;
    sub_20C132A14();

    v3 = *&v1[v2];
  }

  *&v1[v2] = 0;

  v6.receiver = v1;
  v6.super_class = type metadata accessor for DisplayPreferencesViewController();
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

unint64_t sub_20BC428B4(void *a1)
{
  result = [a1 tag];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_sectionViewModels);
    if (result < *(v4 + 16))
    {
      return sub_20B642DEC([a1 isOn], *(v4 + 88 * result + 80));
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20BC42A88(void *a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_20C13BDF4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C13C914();
  v11 = [a1 dequeueReusableHeaderFooterViewWithIdentifier_];

  if (!v11)
  {
    return v11;
  }

  result = MEMORY[0x20F2F4840]();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*(v3 + OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_sectionViewModels) + 16) > a2)
  {

    sub_20C13BDB4();
    v18[3] = v6;
    v18[4] = MEMORY[0x277D74C30];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
    (*(v7 + 16))(boxed_opaque_existential_1, v9, v6);
    MEMORY[0x20F2F4830](v18);
    sub_20C1380F4();
    v14 = sub_20C138104();
    if (v14 == sub_20C138104())
    {
      v15 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
      v16 = [objc_opt_self() clearColor];
      [v15 setBackgroundColor_];

      [v11 setBackgroundView_];
    }

    (*(v7 + 8))(v9, v6);
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_20BC42D34(void *a1, unint64_t a2)
{
  v5 = sub_20C13BDF4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C13C914();
  v10 = [a1 dequeueReusableHeaderFooterViewWithIdentifier_];

  if (!v10)
  {
    return v10;
  }

  result = sub_20C13BDD4();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*(v2 + OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_sectionViewModels) + 16) > a2)
  {

    sub_20C13BDB4();
    v17[3] = v5;
    v17[4] = MEMORY[0x277D74C30];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
    (*(v6 + 16))(boxed_opaque_existential_1, v8, v5);
    MEMORY[0x20F2F4830](v17);
    sub_20C1380F4();
    v13 = sub_20C138104();
    if (v13 == sub_20C138104())
    {
      v14 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
      v15 = [objc_opt_self() clearColor];
      [v14 setBackgroundColor_];

      [v10 setBackgroundView_];
    }

    (*(v6 + 8))(v8, v5);
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_20BC43074(void *a1)
{
  v3 = sub_20C13C914();
  v4 = [a1 dequeueReusableCellWithIdentifier_];

  if (!v4)
  {
    goto LABEL_21;
  }

  v5 = sub_20C133234();
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_sectionViewModels);
  if (v5 >= *(v6 + 16))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = *(v6 + 88 * v5 + 32);

  v8 = sub_20C133204();
  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v8 >= *(v7 + 16))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    result = sub_20C13DE24();
    __break(1u);
    return result;
  }

  v9 = *(v7 + 24 * v8 + 32);

  v10 = [v4 textLabel];
  if (v10)
  {
    v11 = v10;

    v12 = sub_20C13C914();

    [v11 setText_];
  }

  if (v9 < 0)
  {
    v14 = [objc_allocWithZone(MEMORY[0x277D75AE8]) initWithFrame_];
    [v14 setTag_];
    [v14 setOn_];
    [v14 addTarget:v1 action:sel_visibilitySwitchChanged_ forControlEvents:4096];
    [v4 setAccessoryView_];
  }

  else
  {
    if (v9)
    {
      v13 = 3;
    }

    else
    {
      v13 = 0;
    }

    [v4 setAccessoryType_];
    [v4 setAccessoryView_];
  }

  sub_20C1380F4();
  v15 = sub_20C138104();
  if (v15 == sub_20C138104())
  {
    v16 = objc_opt_self();
    v17 = v4;
    v18 = [v16 systemGroupedBackgroundColor];
    [v17 setBackgroundColor_];
  }

  return v4;
}

unint64_t sub_20BC43614(void *a1)
{
  v2 = v1;
  v4 = sub_20C133244();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_20C133234();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_sectionViewModels;
  v10 = *(v1 + OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_sectionViewModels);
  if (result >= *(v10 + 16))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (*(v10 + 88 * result + 41) != 1)
  {
    return result;
  }

  v11 = sub_20C1331B4();
  [a1 deselectRowAtIndexPath:v11 animated:1];

  sub_20B64347C();
  v21 = sub_20C133204();
  result = sub_20C133234();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

  v12 = *(v2 + v9);
  if (result >= *(v12 + 16))
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v13 = *(*(v12 + 88 * result + 32) + 16);
  if (v13)
  {
    v14 = 0;
    v15 = (v5 + 8);
    do
    {
      v16 = sub_20C133234();
      MEMORY[0x20F2EA960](v14, v16);
      v17 = sub_20C1331B4();
      v18 = [a1 cellForRowAtIndexPath_];

      if (v18)
      {
        if (v21 == v14)
        {
          v19 = 3;
        }

        else
        {
          v19 = 0;
        }

        [v18 setAccessoryType_];
      }

      ++v14;
      result = (*v15)(v7, v4);
    }

    while (v13 != v14);
  }

  return result;
}

void sub_20BC43938(uint64_t a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_sectionViewModels] = a1;

  v79 = v2;
  v4 = [v2 tableView];
  if (v4)
  {
    v5 = v4;
    [v4 reloadData];

    if (!_UISolariumEnabled())
    {
      return;
    }

    v6 = MEMORY[0x277D84F90];
    v101 = MEMORY[0x277D84F90];
    *&v2[OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_currentSections] = a1;

    v7 = sub_20B6B325C(v6);
    v8 = OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_currentActions;
    swift_beginAccess();
    v82 = v8;
    *&v2[v8] = v7;

    v99 = 0;
    v100 = 0;
    v98 = a1;

    sub_20B7B3BF8(&v86);
    v94 = v88;
    v95 = v89;
    v96 = v90;
    v97 = v91;
    v92 = v86;
    v93 = v87;
    v9 = *(&v86 + 1);
    if (!*(&v86 + 1))
    {
LABEL_51:

      v56 = sub_20C13C914();
      v57 = [objc_opt_self() smm:v56 systemImageNamed:?];

      v58 = [objc_opt_self() configurationWithWeight_];
      v59 = [v57 imageWithConfiguration_];

      v60 = *&v79[OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_transportBarControlsCoordinator];
      sub_20B51C88C(0, &unk_27C76FED0);
      v61 = v59;
      sub_20BC41D58(v6, sub_20BEE31C4, sub_20B8DBEC4, sub_20BF98A94);
      v62 = sub_20C13D554();
      swift_beginAccess();
      v63 = v62;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = *(v60 + 40);
      *(v60 + 40) = 0x8000000000000000;
      sub_20B91DA38(v63, 2, isUniquelyReferenced_nonNull_native);
      *(v60 + 40) = v85;
      swift_endAccess();
      v65 = *(v60 + 16);
      if (v65)
      {
        sub_20B584050(*(v60 + 16));

        v65(v66);

        sub_20B583ECC(v65);
      }

      else
      {
      }

      return;
    }

    v10 = *(&v97 + 1);
    v11 = v93;
    while (1)
    {
      if (v94)
      {
        v12 = *(&v93 + 1);
      }

      else
      {
        v12 = 0;
      }

      v13 = 0xE000000000000000;
      if (v94)
      {
        v13 = v94;
      }

      v80 = v13;
      v81 = v12;
      v14 = *(v9 + 16);
      if (v14)
      {
        v75 = v10;
        v73 = v92;
        v84 = MEMORY[0x277D84F90];

        sub_20C13DD64();
        v76 = *(v9 + 16);
        sub_20B51C88C(0, &qword_27C7713A0);
        v15 = 0;
        v72 = objc_opt_self();
        v16 = (v9 + 48);
        v74 = v9;
        while (v76 != v15)
        {
          if (v15 >= *(v9 + 16))
          {
            goto LABEL_56;
          }

          v21 = *(v16 - 16);
          v22 = *(v16 - 1);
          v23 = *v16;
          if (v21 >= 0)
          {
            v24 = v21 & 1;
          }

          else
          {
            v24 = 0;
          }

          swift_bridgeObjectRetain_n();

          if (v75)
          {
            v17 = sub_20C13C914();
          }

          else
          {
            v17 = 0;
          }

          v18 = [v72 _systemImageNamed_];

          *&v86 = 0;
          *(&v86 + 1) = 0xE000000000000000;

          MEMORY[0x20F2F4230](v81, v80);

          MEMORY[0x20F2F4230](v22, v23);
          sub_20C13C914();

          v19 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v20 = swift_allocObject();
          v20[2] = v19;
          v20[3] = v15;
          v20[4] = v73;
          v70 = sub_20BC44524;
          v71 = v20;
          v68 = (v11 & 1) == 0;
          v69 = v24;
          v67 = 0;
          sub_20C13D624();

          sub_20C13DD34();
          sub_20C13DD74();
          sub_20C13DD84();
          sub_20C13DD44();
          v16 += 3;
          ++v15;
          v9 = v74;
          if (v14 == v15)
          {

            sub_20BC44530(&v92);
            v25 = v84;
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      sub_20BC44530(&v92);
      v25 = MEMORY[0x277D84F90];
LABEL_23:
      v26 = v79;
      if (!(v25 >> 62))
      {
        v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v27)
        {
          break;
        }

        goto LABEL_44;
      }

      v27 = sub_20C13DB34();
      if (v27)
      {
        break;
      }

LABEL_44:
      v53 = sub_20BC41D58(v25, sub_20BEE31C4, sub_20B8DC874, sub_20BF98A94);
      if (v53 >> 62)
      {
        sub_20B51C88C(0, &qword_27C764F30);
        v54 = sub_20C13DE34();
      }

      else
      {

        sub_20C13E004();
        sub_20B51C88C(0, &qword_27C764F30);
        v54 = v53;
      }

      sub_20B51C88C(0, &unk_27C76FED0);
      v67 = v54;
      v55 = sub_20C13D554();
      MEMORY[0x20F2F43B0]();
      if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20C13CCA4();
      }

      sub_20C13CCE4();

      v6 = v101;
      sub_20B7B3BF8(&v86);
      v92 = v86;
      v93 = v87;
      v94 = v88;
      v95 = v89;
      v96 = v90;
      v97 = v91;
      v9 = *(&v86 + 1);
      v11 = v87;
      v10 = *(&v91 + 1);
      if (!*(&v86 + 1))
      {
        goto LABEL_51;
      }
    }

    v28 = 0;
    v83 = v25 & 0xC000000000000001;
    v77 = v25;
    v78 = v25 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v83)
      {
        v32 = MEMORY[0x20F2F5430](v28, v25);
      }

      else
      {
        if (v28 >= *(v78 + 16))
        {
          goto LABEL_58;
        }

        v32 = *(v25 + 8 * v28 + 32);
      }

      v33 = v32;
      v34 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_57;
      }

      v35 = v27;
      v36 = [v32 identifier];
      swift_beginAccess();
      v37 = v33;
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v39 = *&v26[v82];
      v40 = v26;
      *&v26[v82] = 0x8000000000000000;
      v41 = sub_20B65CEB8(v36);
      v43 = v39[2];
      v44 = (v42 & 1) == 0;
      v45 = __OFADD__(v43, v44);
      v46 = v43 + v44;
      if (v45)
      {
        goto LABEL_59;
      }

      v47 = v42;
      if (v39[3] < v46)
      {
        break;
      }

      if (v38)
      {
        goto LABEL_37;
      }

      v52 = v41;
      sub_20BA101A4();
      v41 = v52;
      v49 = v39;
      if (v47)
      {
LABEL_26:
        v29 = v49[7];
        v30 = *(v29 + 8 * v41);
        *(v29 + 8 * v41) = v37;

        goto LABEL_27;
      }

LABEL_38:
      v49[(v41 >> 6) + 8] |= 1 << v41;
      *(v49[6] + 8 * v41) = v36;
      *(v49[7] + 8 * v41) = v37;
      v50 = v49[2];
      v45 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v45)
      {
        goto LABEL_60;
      }

      v49[2] = v51;
LABEL_27:
      v26 = v40;
      *&v40[v82] = v49;
      swift_endAccess();

      ++v28;
      v27 = v35;
      v31 = v34 == v35;
      v25 = v77;
      if (v31)
      {
        goto LABEL_44;
      }
    }

    sub_20BA09E18(v46, v38);
    v41 = sub_20B65CEB8(v36);
    if ((v47 & 1) != (v48 & 1))
    {
      goto LABEL_62;
    }

LABEL_37:
    v49 = v39;
    if (v47)
    {
      goto LABEL_26;
    }

    goto LABEL_38;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  type metadata accessor for Identifier(0);
  sub_20C13E054();
  __break(1u);
}

uint64_t sub_20BC442C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_20C133244();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;

    MEMORY[0x20F2EA980](a3, a4);
    sub_20B64347C();

    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_20BC443FC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_onSettingsDismissed);
  v4 = *(v2 + OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_onSettingsDismissed);
  *v3 = a1;
  v3[1] = a2;
  return sub_20B583ECC(v4);
}

id sub_20BC44420(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_contentSizeObserver] = 0;
  v5 = &v2[OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_onSettingsDismissed];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_sectionViewModels] = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_currentSections] = v6;
  v7 = OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_currentActions;
  *&v2[v7] = sub_20B6B325C(v6);
  *&v2[OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_presenter] = a1;
  *&v2[OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_transportBarControlsCoordinator] = a2;

  sub_20C1380F4();
  v8 = sub_20C138104();
  if (v8 == sub_20C138104())
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v12.receiver = v2;
  v12.super_class = type metadata accessor for DisplayPreferencesViewController();
  v10 = objc_msgSendSuper2(&v12, sel_initWithStyle_, v9);
  *(a1 + 24) = &off_2822D82F8;
  swift_unknownObjectWeakAssign();
  return v10;
}

uint64_t sub_20BC44530(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7655D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20BC44598()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_contentSizeObserver) = 0;
  v1 = (v0 + OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_onSettingsDismissed);
  *v1 = 0;
  v1[1] = 0;
  v2 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_sectionViewModels) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_currentSections) = v2;
  v3 = OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_currentActions;
  *(v0 + v3) = sub_20B6B325C(v2);
  sub_20C13DE24();
  __break(1u);
}

unint64_t sub_20BC44644(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(*(v1 + OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_sectionViewModels) + 16) <= result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t sub_20BC44694(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(*(v1 + OBJC_IVAR____TtC9SeymourUI32DisplayPreferencesViewController_sectionViewModels) + 16) <= result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

id sub_20BC446F8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  while (2)
  {
    v7 = a6;
    v8 = a5;
    v9 = a4;
    v10 = a3;
    v11 = a2;
    v12 = a1;
    v13 = a7;
    v14 = type metadata accessor for LayoutListConfiguration();
    MEMORY[0x28223BE20](v14);
    v16 = &v128[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0) - 7];
    v17 = sub_20BC457D4(v12, v9);
    v21 = v17;
    v22 = v18;
    v23 = v19;
    v24 = v20;
    switch((v12 >> 57) & 0x78 | v12 & 7)
    {
      case 2uLL:
      case 3uLL:
      case 5uLL:
      case 8uLL:
      case 0xBuLL:
      case 0xCuLL:
      case 0xEuLL:
      case 0x10uLL:
      case 0x12uLL:
      case 0x13uLL:
      case 0x14uLL:
      case 0x17uLL:
      case 0x1BuLL:
      case 0x22uLL:
      case 0x23uLL:
      case 0x24uLL:
      case 0x2BuLL:
      case 0x2DuLL:
      case 0x2EuLL:
      case 0x2FuLL:
      case 0x30uLL:
      case 0x31uLL:
      case 0x35uLL:
      case 0x38uLL:
      case 0x3FuLL:
      case 0x41uLL:
      case 0x45uLL:
      case 0x46uLL:
      case 0x47uLL:
      case 0x49uLL:
      case 0x4CuLL:
        v25 = [objc_opt_self() fixedSpacing_];
        *v13 = 1;
        *(v13 + 8) = v25;
        v26 = MEMORY[0x277D84F90];
        *(v13 + 16) = MEMORY[0x277D84F90];
        *(v13 + 24) = v21;
        *(v13 + 32) = v22;
        *(v13 + 40) = v23;
        *(v13 + 48) = v24;
        *(v13 + 72) = 0;
        *(v13 + 56) = v26;
        goto LABEL_3;
      case 4uLL:
      case 0x34uLL:
        v47 = *MEMORY[0x277D74D50];
        v48 = sub_20C13BFF4();
        (*(*(v48 - 8) + 104))(v16, v47, v48);
        sub_20C132ED4();
        v49 = &v16[*(v14 + 20)];
        *v49 = 0;
        v49[1] = 0;
        v50 = &v16[*(v14 + 24)];
        *v50 = 0;
        v50[1] = 0;
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769AF8);
        v52 = v51[12];
        v53 = v51[16];
        v43 = v13 + v51[20];
        sub_20BC47FA4(v16, v13);
        v54 = [objc_opt_self() systemBackgroundColor];
        goto LABEL_35;
      case 6uLL:
      case 0x11uLL:
      case 0x1AuLL:
      case 0x37uLL:
      case 0x3BuLL:
        v28 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x28);
        v29 = sub_20BC47B4C(v12, v9);
        v30 = ceil(v28 / v29);
        if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
          goto LABEL_71;
        }

        if (v30 <= -9.22337204e18)
        {
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

        if (v30 >= 9.22337204e18)
        {
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        v16 = v29;
        v14 = v30;
        if (qword_27C7606E8 == -1)
        {
          goto LABEL_15;
        }

LABEL_73:
        swift_once();
LABEL_15:
        v31 = qword_27C799F58;
        v32 = objc_opt_self();
        v33 = v31;
        v34 = [v32 fixedSpacing_];
        *v13 = v16;
        *(v13 + 8) = v14;
        v35 = MEMORY[0x277D84F90];
        *(v13 + 16) = v33;
        *(v13 + 24) = v34;
        *(v13 + 32) = v35;
        *(v13 + 40) = v21;
        *(v13 + 48) = v22;
        *(v13 + 56) = v23;
        *(v13 + 64) = v24;
        *(v13 + 72) = v35;
        *(v13 + 80) = 0x4022000000000000;
        *(v13 + 88) = 0;
        *(v13 + 96) = 1;
        type metadata accessor for LayoutSectionType();
        *(v13 + 104) = 0;
        *(v13 + 112) = 0;
LABEL_5:

        return swift_storeEnumTagMultiPayload();
      case 7uLL:
      case 9uLL:
      case 0xAuLL:
      case 0xFuLL:
      case 0x15uLL:
      case 0x16uLL:
      case 0x19uLL:
      case 0x25uLL:
      case 0x32uLL:
      case 0x33uLL:
      case 0x3AuLL:
      case 0x43uLL:

        return sub_20C0936C8(v12);
      case 0xDuLL:
        v72 = MEMORY[0x277D84F90];
        *v13 = MEMORY[0x277D84F90];
        *(v13 + 8) = v17;
        *(v13 + 16) = v18;
        *(v13 + 24) = v19;
        *(v13 + 32) = v20;
        v73 = 0x4022000000000000;
        goto LABEL_40;
      case 0x18uLL:
      case 0x4DuLL:
        v55 = MEMORY[0x277D84F90];
        *v13 = MEMORY[0x277D84F90];
        *(v13 + 8) = v17;
        *(v13 + 16) = v18;
        *(v13 + 24) = v19;
        *(v13 + 32) = v20;
        *(v13 + 48) = 0;
        *(v13 + 56) = 0;
        *(v13 + 40) = v55;
        *(v13 + 64) = 1;
        type metadata accessor for LayoutSectionType();
        *(v13 + 72) = 0;
        *(v13 + 80) = 0;
        goto LABEL_5;
      case 0x1CuLL:
        a1 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x20);
        a7 = v13;
        a2 = v11;
        a3 = v10;
        a4 = v9;
        a5 = v8;
        a6 = v7;

        continue;
      case 0x1EuLL:
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7677D0);
        v69 = swift_projectBox();
        v70 = (v69 + *(v68 + 64));
        v71 = (v68 + 128);
        goto LABEL_55;
      case 0x1FuLL:
        v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B80);
        v69 = swift_projectBox();
        v70 = (v69 + *(v105 + 64));
        v71 = (v105 + 80);
        goto LABEL_55;
      case 0x20uLL:
        v67 = &unk_27C772250;
        goto LABEL_53;
      case 0x21uLL:
        v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B28);
        v69 = swift_projectBox();
        v70 = (v69 + *(v107 + 48));
        v71 = (v107 + 64);
        goto LABEL_55;
      case 0x26uLL:
      case 0x3CuLL:
        if (qword_27C7606E8 != -1)
        {
          swift_once();
        }

        v45 = qword_27C799F58;
        v127 = qword_27C799F58;
        *v13 = 5;
        *(v13 + 8) = v45;
        v46 = MEMORY[0x277D84F90];
        *(v13 + 16) = MEMORY[0x277D84F90];
        *(v13 + 24) = v21;
        *(v13 + 32) = v22;
        *(v13 + 40) = v23;
        *(v13 + 48) = v24;
        *(v13 + 56) = v46;
        *(v13 + 64) = 0x4024000000000000;
        *(v13 + 72) = 2;
        *(v13 + 80) = 1;
        type metadata accessor for LayoutSectionType();
        *(v13 + 88) = 0;
        *(v13 + 96) = 0;
        goto LABEL_47;
      case 0x27uLL:
        v117 = sub_20C034D34(*((v12 & 0xFFFFFFFFFFFFFF8) + 0x18), v9);
        v118 = 10.0;
        v119 = sub_20C1380F4();
        if (!v119)
        {
          goto LABEL_67;
        }

        if (v119 != 1)
        {
          result = sub_20C13DE24();
          __break(1u);
          return result;
        }

        if (qword_27C760BF0 != -1)
        {
          swift_once();
        }

        [qword_27C79C2B8 spacing];
        v118 = v120;
LABEL_67:
        v121 = [objc_opt_self() fixedSpacing_];
        v103 = MEMORY[0x277D84F90];
        *v13 = v117;
        *(v13 + 8) = v121;
        *(v13 + 16) = v103;
        *(v13 + 24) = v21;
        *(v13 + 32) = v22;
        *(v13 + 40) = v23;
        *(v13 + 48) = v24;
        v104 = 0x4024000000000000;
LABEL_68:
        *(v13 + 56) = v103;
        *(v13 + 64) = v104;
        *(v13 + 72) = 0;
        *(v13 + 80) = 1;
LABEL_4:
        type metadata accessor for LayoutSectionType();
        *(v13 + 88) = 0;
        *(v13 + 96) = 0;
        goto LABEL_5;
      case 0x28uLL:
        v75 = ((v12 & 0xFFFFFFFFFFFFFF8) + 40);
        goto LABEL_59;
      case 0x29uLL:
        v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767A80);
        v123 = swift_projectBox();
        v124 = sub_20C0592E4(*(v123 + *(v122 + 112)));
        v125 = [objc_opt_self() fixedSpacing_];
        *v13 = 1;
        *(v13 + 8) = v125;
        *(v13 + 16) = MEMORY[0x277D84F90];
        *(v13 + 24) = v21;
        *(v13 + 32) = v22;
        *(v13 + 40) = v23;
        *(v13 + 48) = v24;
        *(v13 + 72) = 0;
        *(v13 + 56) = v124;
        goto LABEL_3;
      case 0x2AuLL:
        v87 = *MEMORY[0x277D74D60];
        v88 = sub_20C13BFF4();
        (*(*(v88 - 8) + 104))(v16, v87, v88);
        v89 = swift_allocObject();
        *(v89 + 16) = v11;
        sub_20C132ED4();
        v90 = &v16[*(v14 + 20)];
        *v90 = sub_20BC48010;
        v90[1] = v89;
        v91 = &v16[*(v14 + 24)];
        *v91 = 0;
        v91[1] = 0;
        v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769AF8);
        v41 = v92[12];
        v42 = v92[16];
        v43 = v13 + v92[20];
        sub_20BC47FA4(v16, v13);
        v44 = [objc_opt_self() systemBackgroundColor];
        goto LABEL_37;
      case 0x2CuLL:
        v101 = sub_20BC47B4C(v12, v9);
        v102 = [objc_opt_self() fixedSpacing_];
        v103 = MEMORY[0x277D84F90];
        *v13 = v101;
        *(v13 + 8) = v102;
        *(v13 + 16) = v103;
        *(v13 + 24) = v21;
        *(v13 + 32) = v22;
        *(v13 + 40) = v23;
        *(v13 + 48) = v24;
        v104 = 0x4022000000000000;
        goto LABEL_68;
      case 0x36uLL:
        v72 = MEMORY[0x277D84F90];
        *v13 = MEMORY[0x277D84F90];
        *(v13 + 8) = v17;
        *(v13 + 16) = v18;
        *(v13 + 24) = v19;
        *(v13 + 32) = v20;
        v73 = 0x4024000000000000;
LABEL_40:
        *(v13 + 40) = v72;
        *(v13 + 48) = v73;
        *(v13 + 56) = 2;
        *(v13 + 64) = 1;
        type metadata accessor for LayoutSectionType();
        *(v13 + 72) = 0;
        *(v13 + 80) = 0;
        goto LABEL_5;
      case 0x39uLL:
        v95 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x28);
        v96 = objc_opt_self();

        v97 = [v96 fixedSpacing_];
        if (qword_27C7606C0 != -1)
        {
          v126 = v97;
          swift_once();
          v97 = v126;
        }

        v98 = qword_27C799F30;
        v127 = qword_27C799F30;
        *v13 = v95;
        *(v13 + 8) = v97;
        v99 = MEMORY[0x277D84F90];
        *(v13 + 16) = v98;
        *(v13 + 24) = v99;
        *(v13 + 32) = v21;
        *(v13 + 40) = v22;
        *(v13 + 48) = v23;
        *(v13 + 56) = v24;
        *(v13 + 64) = v99;
        *(v13 + 72) = 0x4024000000000000;
        *(v13 + 80) = 2;
        *(v13 + 88) = 1;
        type metadata accessor for LayoutSectionType();
        *(v13 + 96) = 0;
        *(v13 + 104) = 0;
LABEL_47:
        swift_storeEnumTagMultiPayload();
        v100 = v127;

        return v100;
      case 0x3DuLL:
        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7681A0);
        v75 = (swift_projectBox() + *(v74 + 80));
LABEL_59:
        v110 = *v75;
        v111 = sub_20BC47B4C(v12, v9);
        if (qword_27C7606E8 != -1)
        {
          swift_once();
        }

        v112 = qword_27C799F58;
        v113 = objc_opt_self();
        v114 = v112;
        v115 = [v113 fixedSpacing_];
        *v13 = v111;
        *(v13 + 8) = v110;
        *(v13 + 16) = v111;
        *(v13 + 24) = v114;
        v116 = MEMORY[0x277D84F90];
        *(v13 + 32) = v115;
        *(v13 + 40) = v116;
        *(v13 + 48) = v21;
        *(v13 + 56) = v22;
        *(v13 + 64) = v23;
        *(v13 + 72) = v24;
        *(v13 + 80) = v116;
        *(v13 + 88) = 0x4022000000000000;
        *(v13 + 96) = 4;
        *(v13 + 104) = 1;
        type metadata accessor for LayoutSectionType();
        *(v13 + 112) = 0;
        *(v13 + 120) = 0;
        goto LABEL_5;
      case 0x3EuLL:
        v80 = *MEMORY[0x277D74D60];
        v81 = sub_20C13BFF4();
        (*(*(v81 - 8) + 104))(v16, v80, v81);
        sub_20C132ED4();
        v82 = &v16[*(v14 + 20)];
        *v82 = 0;
        v82[1] = 0;
        v83 = &v16[*(v14 + 24)];
        *v83 = 0;
        v83[1] = 0;
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769AF8);
        v52 = v84[12];
        v53 = v84[16];
        v43 = v13 + v84[20];
        sub_20BC47FA4(v16, v13);
        v54 = [objc_opt_self() clearColor];
LABEL_35:
        v85 = v54;
        sub_20BBB1FB0(v16);
        *(v13 + v52) = v85;
        *(v13 + v53) = 0;
        v86 = MEMORY[0x277D84F90];
        *v43 = MEMORY[0x277D84F90];
        *(v43 + 8) = v21;
        *(v43 + 16) = v22;
        *(v43 + 24) = v23;
        *(v43 + 32) = v24;
        *(v43 + 40) = v86;
        *(v43 + 48) = 0;
        *(v43 + 56) = 0;
        goto LABEL_38;
      case 0x40uLL:
        v56 = *MEMORY[0x277D74D60];
        v57 = sub_20C13BFF4();
        (*(*(v57 - 8) + 104))(v16, v56, v57);
        v58 = swift_allocObject();
        *(v58 + 16) = v11;
        sub_20C132ED4();
        v59 = &v16[*(v14 + 20)];
        *v59 = sub_20BC48008;
        v59[1] = v58;
        v60 = &v16[*(v14 + 24)];
        *v60 = 0;
        v60[1] = 0;
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769AF8);
        v41 = v61[12];
        v42 = v61[16];
        v43 = v13 + v61[20];
        sub_20BC47FA4(v16, v13);
        v44 = [objc_opt_self() clearColor];
        goto LABEL_37;
      case 0x42uLL:
        v64 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x30);
        v65 = [objc_opt_self() fixedSpacing_];
        *v13 = v64;
        *(v13 + 8) = v65;
        v66 = MEMORY[0x277D84F90];
        *(v13 + 16) = MEMORY[0x277D84F90];
        *(v13 + 24) = v21;
        *(v13 + 32) = v22;
        *(v13 + 40) = v23;
        *(v13 + 48) = v24;
        *(v13 + 56) = v66;
        *(v13 + 64) = 0x4024000000000000;
        *(v13 + 72) = 2;
        *(v13 + 80) = 1;
        type metadata accessor for LayoutSectionType();
        *(v13 + 88) = 0;
        *(v13 + 96) = 0;
        goto LABEL_5;
      case 0x44uLL:
        v62 = [objc_opt_self() fixedSpacing_];
        *v13 = 1;
        *(v13 + 8) = v62;
        v63 = MEMORY[0x277D84F90];
        *(v13 + 16) = MEMORY[0x277D84F90];
        *(v13 + 24) = v21;
        *(v13 + 32) = 0x4034000000000000;
        *(v13 + 40) = v23;
        *(v13 + 48) = 0x4034000000000000;
        *(v13 + 56) = v63;
        *(v13 + 72) = 0;
LABEL_3:
        *(v13 + 64) = 0;
        *(v13 + 80) = 1;
        goto LABEL_4;
      case 0x48uLL:
        if (qword_27C7606D0 != -1)
        {
          swift_once();
        }

        v76 = qword_27C799F40;
        if (qword_27C7606E0 != -1)
        {
          swift_once();
        }

        v77 = qword_27C799F50;
        v78 = [objc_opt_self() fixedSpacing_];
        v79 = MEMORY[0x277D84F90];
        *v13 = 1;
        *(v13 + 8) = v78;
        *(v13 + 16) = v79;
        *(v13 + 24) = 0;
        *(v13 + 32) = v76;
        *(v13 + 40) = 0x4034000000000000;
        *(v13 + 48) = v77;
        *(v13 + 56) = v79;
        *(v13 + 64) = 0x4024000000000000;
        *(v13 + 72) = 0;
        *(v13 + 80) = 1;
        goto LABEL_4;
      case 0x4AuLL:
        v67 = &unk_27C762A70;
LABEL_53:
        v106 = __swift_instantiateConcreteTypeFromMangledNameV2(v67);
        v69 = swift_projectBox();
        v70 = (v69 + *(v106 + 48));
        v71 = (v106 + 112);
LABEL_55:
        v108 = *(v69 + *v71);
        v109 = *v70;

        return sub_20BC46578(v109, v108, v11, v10, v9, v8, v7, v13, v21, v22, v23, v24);
      default:
        v36 = *MEMORY[0x277D74D50];
        v37 = sub_20C13BFF4();
        (*(*(v37 - 8) + 104))(v16, v36, v37);
        sub_20C132ED4();
        v38 = &v16[*(v14 + 20)];
        *v38 = 0;
        v38[1] = 0;
        v39 = &v16[*(v14 + 24)];
        *v39 = 0;
        v39[1] = 0;
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769AF8);
        v41 = v40[12];
        v42 = v40[16];
        v43 = v13 + v40[20];
        sub_20BC47FA4(v16, v13);
        v44 = [objc_opt_self() systemBackgroundColor];
LABEL_37:
        v93 = v44;
        sub_20BBB1FB0(v16);
        *(v13 + v41) = v93;
        *(v13 + v42) = 1;
        v94 = MEMORY[0x277D84F90];
        *v43 = MEMORY[0x277D84F90];
        *(v43 + 8) = v21;
        *(v43 + 16) = v22;
        *(v43 + 24) = v23;
        *(v43 + 32) = v24;
        *(v43 + 40) = v94;
        *(v43 + 48) = 0;
        *(v43 + 56) = 0;
LABEL_38:
        *(v43 + 64) = 1;
        *(v43 + 68) = *&v128[3];
        *(v43 + 65) = *v128;
        type metadata accessor for LayoutSectionType();
        *(v43 + 72) = 0;
        *(v43 + 80) = 0;
        return swift_storeEnumTagMultiPayload();
    }
  }
}

double sub_20BC457D4(unint64_t a1, void *a2)
{
  result = 32.0;
  switch((a1 >> 57) & 0x78 | a1 & 7)
  {
    case 1uLL:
      if (qword_27C7606C8 != -1)
      {
        swift_once();
      }

      return *&qword_27C799F38;
    case 2uLL:
    case 0x1BuLL:
    case 0x31uLL:
    case 0x41uLL:
      if (qword_27C7606D0 != -1)
      {
        swift_once();
      }

      if (qword_27C7606E0 != -1)
      {
        swift_once();
      }

      return 20.0;
    case 3uLL:
    case 0x1DuLL:
    case 0x44uLL:
    case 0x45uLL:
    case 0x47uLL:
    case 0x4AuLL:
      if (qword_27C7606D0 != -1)
      {
        swift_once();
      }

      if (qword_27C7606E0 != -1)
      {
        swift_once();
      }

      return 20.0;
    case 4uLL:
    case 0x34uLL:
    case 0x42uLL:
    case 0x4BuLL:
      if (qword_27C7606D0 != -1)
      {
        swift_once();
      }

      if (qword_27C7606D8 != -1)
      {
        swift_once();
      }

      if (qword_27C7606E0 != -1)
      {
        swift_once();
      }

      return 0.0;
    case 5uLL:
    case 8uLL:
    case 0xEuLL:
    case 0x30uLL:
    case 0x3EuLL:
    case 0x46uLL:
    case 0x4CuLL:
      v3 = MEMORY[0x277D75060];
      return *v3;
    case 6uLL:
    case 0xDuLL:
    case 0x11uLL:
    case 0x1AuLL:
    case 0x26uLL:
    case 0x28uLL:
    case 0x29uLL:
    case 0x37uLL:
    case 0x3AuLL:
    case 0x3BuLL:
    case 0x3CuLL:
    case 0x3DuLL:
    case 0x48uLL:
      if (qword_27C7606D0 != -1)
      {
        swift_once();
      }

      if (qword_27C7606E0 != -1)
      {
        swift_once();
      }

      return 0.0;
    case 7uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xFuLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x19uLL:
    case 0x25uLL:
    case 0x32uLL:
    case 0x33uLL:
    case 0x3FuLL:
    case 0x43uLL:
      sub_20C0940C8(a1);
      return result;
    case 0xBuLL:
    case 0x10uLL:
    case 0x22uLL:
      if (qword_27C7606D0 != -1)
      {
        swift_once();
      }

      if (qword_27C7606E0 == -1)
      {
        return 10.0;
      }

      goto LABEL_109;
    case 0xCuLL:
      if (qword_27C7606F0 != -1)
      {
        swift_once();
      }

      v3 = &xmmword_27C799F60;
      return *v3;
    case 0x12uLL:
    case 0x14uLL:
    case 0x2EuLL:
      if (qword_27C7606D0 != -1)
      {
        swift_once();
      }

      if (qword_27C7606E0 != -1)
      {
        swift_once();
      }

      return 20.0;
    case 0x13uLL:
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x39) <= 1u)
      {
        if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x39))
        {
          if (qword_27C7606D0 != -1)
          {
            swift_once();
          }

          if (qword_27C7606E0 != -1)
          {
            swift_once();
          }

          return 0.0;
        }

        else
        {
          if (qword_27C7606C8 != -1)
          {
            swift_once();
          }

          result = *&qword_27C799F38;
          if (qword_27C7606D0 != -1)
          {
            v11 = *&qword_27C799F38;
            swift_once();
            result = v11;
          }

          if (qword_27C7606E0 != -1)
          {
            v12 = result;
            swift_once();
            return v12;
          }
        }

        return result;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x39) != 2)
      {
        if (qword_27C7606D0 != -1)
        {
          swift_once();
        }

        if (qword_27C7606E0 != -1)
        {
          swift_once();
        }

        return 16.0;
      }

LABEL_94:
      if (qword_27C7606D0 != -1)
      {
        goto LABEL_66;
      }

      goto LABEL_95;
    case 0x17uLL:
    case 0x18uLL:
    case 0x2DuLL:
    case 0x4DuLL:
      goto LABEL_94;
    case 0x1CuLL:
    case 0x39uLL:
      sub_20BC457D4(*((a1 & 0xFFFFFFFFFFFFFF8) + 0x20), 32.0, 16.0, 0.0, 16.0);
      return result;
    case 0x1EuLL:
      v4 = a2;
      v6 = &unk_27C7677D0;
      goto LABEL_76;
    case 0x1FuLL:
      v4 = a2;
      v6 = &qword_27C762B80;
LABEL_76:
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v6);
      v8 = swift_projectBox();
      v9 = (v10 + 64);
      return sub_20BC4778C(*(v8 + *v9), v4);
    case 0x20uLL:
      v4 = a2;
      v5 = &unk_27C772250;
      goto LABEL_74;
    case 0x21uLL:
      v4 = a2;
      v5 = &qword_27C762B28;
LABEL_74:
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5);
      v8 = swift_projectBox();
      v9 = (v7 + 48);
      return sub_20BC4778C(*(v8 + *v9), v4);
    case 0x23uLL:
    case 0x49uLL:
      return 0.0;
    case 0x24uLL:
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x18))
      {
        if (qword_27C7606D0 != -1)
        {
LABEL_66:
          swift_once();
        }

LABEL_95:
        if (qword_27C7606E0 != -1)
        {
          swift_once();
        }

        return 0.0;
      }

      else
      {
        if (qword_27C7606D0 != -1)
        {
          swift_once();
        }

        if (qword_27C7606E0 != -1)
        {
          swift_once();
        }

        return 0.0;
      }

    case 0x27uLL:
      if (qword_27C7606D0 != -1)
      {
        swift_once();
      }

      if (qword_27C7606E0 != -1)
      {
        swift_once();
      }

      return 0.0;
    case 0x2AuLL:
      if (qword_27C7606D0 != -1)
      {
        swift_once();
      }

      return 0.0;
    case 0x2BuLL:
    case 0x40uLL:
      return 0.0;
    case 0x2CuLL:
      return 0.0;
    case 0x2FuLL:
      if (qword_27C7606D0 != -1)
      {
        swift_once();
      }

      if (qword_27C7606E0 != -1)
      {
        swift_once();
      }

      return 20.0;
    case 0x35uLL:
    case 0x38uLL:
      if (qword_27C7606D0 != -1)
      {
        swift_once();
      }

      if (qword_27C7606E0 != -1)
      {
        swift_once();
      }

      return 10.0;
    case 0x36uLL:
      if (qword_27C7606D0 != -1)
      {
        swift_once();
      }

      if (qword_27C7606E0 != -1)
      {
LABEL_109:
        swift_once();
      }

      return 10.0;
    default:
      return result;
  }
}

uint64_t sub_20BC46288@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_20C13BED4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C13BEF4();
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  v11 = [objc_opt_self() separatorColor];
  sub_20C13BEE4();
  result = sub_20C133224();
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (result == a2 - 1)
    {
      v13 = MEMORY[0x277D74C98];
    }

    else
    {
      v13 = MEMORY[0x277D74CA0];
    }

    (*(v7 + 104))(v9, *v13, v6);
    return sub_20C13BEA4();
  }

  return result;
}

uint64_t sub_20BC46400@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_20C13BED4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C13BEF4();
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  result = sub_20C133224();
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (result == a2 - 1)
    {
      v12 = MEMORY[0x277D74C98];
    }

    else
    {
      v12 = MEMORY[0x277D74CA0];
    }

    (*(v7 + 104))(v9, *v12, v6);
    sub_20C13BEA4();
    sub_20C13BEB4();
    sub_20C13BEB4();
    return sub_20C13BEC4();
  }

  return result;
}

id sub_20BC46578@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>, double a12@<D3>)
{
  v24 = type metadata accessor for LayoutListConfiguration();
  *&v26 = MEMORY[0x28223BE20](v24).n128_u64[0];
  v28 = &v113[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0) - 7];
  switch(a1)
  {
    case 1:
    case 7:
    case 8:
    case 17:
    case 25:
    case 28:
    case 29:
    case 34:
      v41 = *MEMORY[0x277D74D60];
      v42 = v25;
      v43 = sub_20C13BFF4();
      (*(*(v43 - 8) + 104))(v28, v41, v43);
      sub_20C132ED4();
      v44 = &v28[*(v42 + 20)];
      *v44 = 0;
      v44[1] = 0;
      v45 = &v28[*(v42 + 24)];
      *v45 = 0;
      v45[1] = 0;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769AF8);
      v47 = v46[12];
      v48 = v46[16];
      v49 = a8 + v46[20];
      sub_20BC47FA4(v28, a8);
      v50 = [objc_opt_self() systemBackgroundColor];
      goto LABEL_10;
    case 2:
    case 3:
    case 12:
    case 21:
    case 24:
    case 30:
    case 35:
    case 36:
    case 40:
    case 41:
    case 44:
    case 45:
    case 47:
    case 48:

      return sub_20C093948(a1);
    case 5:
      v87 = sub_20C0592E4(a2);
      if (qword_27C7606C0 != -1)
      {
        v111 = v87;
        swift_once();
        v87 = v111;
      }

      v88 = qword_27C799F30;
      v112 = qword_27C799F30;
      v89 = 3;
      goto LABEL_34;
    case 11:
    case 42:
      v53 = sub_20C0592E4(a2);
      v54 = [objc_opt_self() fixedSpacing_];
      *a8 = 1;
      *(a8 + 8) = v54;
      *(a8 + 16) = MEMORY[0x277D84F90];
      *(a8 + 24) = a9;
      *(a8 + 32) = a10;
      *(a8 + 40) = a11;
      *(a8 + 48) = a12;
      *(a8 + 56) = v53;
      *(a8 + 64) = 0x4034000000000000;
      goto LABEL_26;
    case 13:
      v87 = sub_20C0592E4(a2);
      if (qword_27C7606C0 != -1)
      {
        v110 = v87;
        swift_once();
        v87 = v110;
      }

      v88 = qword_27C799F30;
      v112 = qword_27C799F30;
      v89 = 2;
LABEL_34:
      *a8 = v89;
      *(a8 + 8) = v88;
      *(a8 + 16) = MEMORY[0x277D84F90];
      *(a8 + 24) = a9;
      *(a8 + 32) = a10;
      *(a8 + 40) = a11;
      *(a8 + 48) = a12;
      *(a8 + 56) = v87;
      *(a8 + 64) = 0x4024000000000000;
      *(a8 + 72) = 4;
      *(a8 + 80) = 1;
      type metadata accessor for LayoutSectionType();
      *(a8 + 88) = 0;
      *(a8 + 96) = 0;
      swift_storeEnumTagMultiPayload();
      v100 = v112;

      return v100;
    case 14:
      if (a3 >= 2)
      {
        goto LABEL_6;
      }

      goto LABEL_41;
    case 15:
    case 18:
    case 19:
    case 23:
      v85 = sub_20C0592E4(a2);
      v86 = [objc_opt_self() fixedSpacing_];
      *a8 = 1;
      *(a8 + 8) = v86;
      *(a8 + 16) = MEMORY[0x277D84F90];
      *(a8 + 24) = a9;
      *(a8 + 32) = a10;
      *(a8 + 40) = a11;
      *(a8 + 48) = a12;
      *(a8 + 64) = 0;
      *(a8 + 72) = 0;
      *(a8 + 56) = v85;
      goto LABEL_27;
    case 16:
      if (a3 < 2)
      {
        goto LABEL_41;
      }

      goto LABEL_6;
    case 22:
      if (a3 >= 2)
      {
        goto LABEL_6;
      }

      goto LABEL_41;
    case 26:
      sub_20BCE30A8(a5, 1);
      v67 = v66;
      if (a3 < 2)
      {
        v78 = 2;
      }

      else
      {
        v68 = [a5 container];
        [v68 contentInsets];
        v70 = v69;
        [v68 contentInsets];
        v72 = v70 + v71;
        [v68 contentSize];
        v74 = v73 - v72;
        v75 = [a4 widthDimension];
        [v75 dimension];
        v77 = v76;

        swift_unknownObjectRelease();
        if (v74 > v67 * (a3 - 1) + v77 * a3 - (v67 + v77))
        {
          v78 = 1;
        }

        else
        {
          v78 = 2;
        }
      }

      v109 = sub_20C0592E4(a2);
      *a8 = MEMORY[0x277D84F90];
      *(a8 + 8) = a9;
      *(a8 + 16) = a10;
      *(a8 + 24) = a11;
      *(a8 + 32) = a12;
      *(a8 + 40) = v109;
      *(a8 + 48) = v67;
      *(a8 + 56) = v78;
      *(a8 + 64) = 1;
      goto LABEL_43;
    case 27:
      v90 = sub_20C0592E4(a2);
      sub_20BCD81F8(a5, 0);
      v92 = v91;
      v93 = [objc_opt_self() fixedSpacing_];
      *a8 = 1;
      *(a8 + 8) = v93;
      *(a8 + 16) = MEMORY[0x277D84F90];
      *(a8 + 24) = a9;
      *(a8 + 32) = a10;
      *(a8 + 40) = a11;
      *(a8 + 48) = a12;
      *(a8 + 56) = v90;
      *(a8 + 64) = v92;
LABEL_26:
      *(a8 + 72) = 0;
LABEL_27:
      *(a8 + 80) = 1;
      type metadata accessor for LayoutSectionType();
      *(a8 + 88) = 0;
      *(a8 + 96) = 0;
      goto LABEL_44;
    case 37:
      v101 = v25;
      v102 = swift_allocObject();
      *(v102 + 16) = a6;
      *(v102 + 24) = a7;
      v103 = *MEMORY[0x277D74D60];
      v104 = sub_20C13BFF4();
      (*(*(v104 - 8) + 104))(v28, v103, v104);

      sub_20C132ED4();
      v105 = &v28[*(v101 + 20)];
      *v105 = 0;
      v105[1] = 0;
      v106 = &v28[*(v101 + 24)];
      *v106 = sub_20BC48020;
      v106[1] = v102;
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769AF8);
      v47 = v107[12];
      v48 = v107[16];
      v49 = a8 + v107[20];
      sub_20BC47FA4(v28, a8);
      v50 = [objc_opt_self() clearColor];
      goto LABEL_10;
    case 39:
      v55 = *MEMORY[0x277D74D60];
      v56 = v25;
      v57 = sub_20C13BFF4();
      (*(*(v57 - 8) + 104))(v28, v55, v57);
      v58 = swift_allocObject();
      *(v58 + 16) = a3;
      sub_20C132ED4();
      v59 = &v28[*(v56 + 20)];
      *v59 = sub_20BC48018;
      v59[1] = v58;
      v60 = &v28[*(v56 + 24)];
      *v60 = 0;
      v60[1] = 0;
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769AF8);
      v62 = v61[12];
      v63 = v61[16];
      v49 = a8 + v61[20];
      sub_20BC47FA4(v28, a8);
      v64 = [objc_opt_self() systemBackgroundColor];
      sub_20BBB1FB0(v28);
      *(a8 + v62) = v64;
      *(a8 + v63) = 1;
      v65 = MEMORY[0x277D84F90];
      *v49 = MEMORY[0x277D84F90];
      *(v49 + 8) = a9;
      *(v49 + 16) = a10;
      *(v49 + 24) = a11;
      *(v49 + 32) = a12;
      *(v49 + 40) = v65;
      *(v49 + 48) = 0x4034000000000000;
      *(v49 + 56) = 0;
      goto LABEL_11;
    case 43:
      v79 = *MEMORY[0x277D74D60];
      v80 = v25;
      v81 = sub_20C13BFF4();
      (*(*(v81 - 8) + 104))(v28, v79, v81);
      sub_20C132ED4();
      v82 = &v28[*(v80 + 20)];
      *v82 = 0;
      v82[1] = 0;
      v83 = &v28[*(v80 + 24)];
      *v83 = 0;
      v83[1] = 0;
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769AF8);
      v47 = v84[12];
      v48 = v84[16];
      v49 = a8 + v84[20];
      sub_20BC47FA4(v28, a8);
      v50 = [objc_opt_self() clearColor];
      goto LABEL_10;
    case 46:
      v94 = v25;
      if (qword_27C7606D0 != -1)
      {
        swift_once();
      }

      a10 = *&qword_27C799F40;
      v95 = *MEMORY[0x277D74D60];
      v96 = sub_20C13BFF4();
      (*(*(v96 - 8) + 104))(v28, v95, v96);
      sub_20C132ED4();
      v97 = &v28[*(v94 + 20)];
      *v97 = 0;
      v97[1] = 0;
      v98 = &v28[*(v94 + 24)];
      *v98 = 0;
      v98[1] = 0;
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769AF8);
      v47 = v99[12];
      v48 = v99[16];
      v49 = a8 + v99[20];
      sub_20BC47FA4(v28, a8);
      v50 = [objc_opt_self() systemBackgroundColor];
LABEL_10:
      v51 = v50;
      sub_20BBB1FB0(v28);
      *(a8 + v47) = v51;
      *(a8 + v48) = 0;
      v52 = MEMORY[0x277D84F90];
      *v49 = MEMORY[0x277D84F90];
      *(v49 + 8) = a9;
      *(v49 + 16) = a10;
      *(v49 + 24) = a11;
      *(v49 + 32) = a12;
      *(v49 + 40) = v52;
      *(v49 + 48) = 0;
      *(v49 + 56) = 0;
LABEL_11:
      *(v49 + 64) = 1;
      *(v49 + 68) = *&v113[3];
      *(v49 + 65) = *v113;
      type metadata accessor for LayoutSectionType();
      *(v49 + 72) = 0;
      *(v49 + 80) = 0;
      result = swift_storeEnumTagMultiPayload();
      break;
    default:
      if (a3 < 2)
      {
LABEL_41:
        v40 = 2;
      }

      else
      {
LABEL_6:
        v30 = [a5 container];
        [v30 contentInsets];
        v32 = v31;
        [v30 contentInsets];
        v34 = v32 + v33;
        [v30 contentSize];
        v36 = v35 - v34;
        v37 = [a4 widthDimension];
        [v37 dimension];
        v39 = v38;

        swift_unknownObjectRelease();
        if (v36 > (a3 - 1) * 10.0 + v39 * a3 - (v39 + 10.0))
        {
          v40 = 1;
        }

        else
        {
          v40 = 2;
        }
      }

      v108 = sub_20C0592E4(a2);
      *a8 = MEMORY[0x277D84F90];
      *(a8 + 8) = a9;
      *(a8 + 16) = a10;
      *(a8 + 24) = a11;
      *(a8 + 32) = a12;
      *(a8 + 40) = v108;
      *(a8 + 48) = 0x4024000000000000;
      *(a8 + 56) = v40;
      *(a8 + 64) = 1;
LABEL_43:
      type metadata accessor for LayoutSectionType();
      *(a8 + 72) = 0;
      *(a8 + 80) = 0;
LABEL_44:

      result = swift_storeEnumTagMultiPayload();
      break;
  }

  return result;
}

id sub_20BC47208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C133244();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  sub_20C132964();

  (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  v13 = sub_20C13C914();

  aBlock[4] = sub_20BC48028;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20BC47520;
  aBlock[3] = &block_descriptor_111;
  v14 = _Block_copy(aBlock);
  v15 = [objc_opt_self() contextualActionWithStyle:1 title:v13 handler:v14];

  _Block_release(v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20C14F580;
  *(v16 + 32) = v15;
  sub_20BC480A8();
  v17 = v15;
  v18 = sub_20C13CC54();

  v19 = [objc_opt_self() configurationWithActions_];

  return v19;
}

void sub_20BC47520(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_20BC480F4, v8);
}

uint64_t sub_20BC475F4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_20C13BED4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C13BEF4();
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  v11 = [objc_opt_self() separatorColor];
  sub_20C13BEE4();
  result = sub_20C133224();
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (result == a2 - 1)
    {
      v13 = MEMORY[0x277D74C98];
    }

    else
    {
      v13 = MEMORY[0x277D74CA0];
    }

    (*(v7 + 104))(v9, *v13, v6);
    sub_20C13BEA4();
    return sub_20C13BEC4();
  }

  return result;
}

double sub_20BC4778C(char a1, void *a2)
{
  switch(a1)
  {
    case 1:
    case 7:
    case 8:
    case 12:
    case 15:
    case 17:
    case 23:
    case 24:
    case 25:
    case 28:
    case 29:
    case 34:
    case 37:
    case 43:
      v2 = MEMORY[0x277D75060];
      return *v2;
    case 2:
    case 3:
    case 21:
    case 30:
    case 35:
    case 36:
    case 40:
    case 41:
    case 44:
    case 45:
    case 47:
    case 48:
      sub_20C09433C(a1);
      return result;
    case 6:
    case 9:
    case 20:
    case 31:
    case 32:
    case 33:
    case 42:
    case 46:
      if (qword_27C7606D0 != -1)
      {
        swift_once();
      }

      if (qword_27C7606E0 == -1)
      {
        return 0.0;
      }

      goto LABEL_37;
    case 11:
      if (qword_27C7606F0 != -1)
      {
        swift_once();
      }

      v2 = &xmmword_27C799F60;
      return *v2;
    case 18:
      if (qword_27C7606D0 != -1)
      {
        swift_once();
      }

      if (qword_27C7606D8 != -1)
      {
        swift_once();
      }

      if (qword_27C7606E0 == -1)
      {
        return 0.0;
      }

      goto LABEL_37;
    case 19:
      if (qword_27C7606D0 != -1)
      {
        swift_once();
      }

      return 0.0;
    case 22:
      if (qword_27C7606D0 != -1)
      {
        swift_once();
      }

      if (qword_27C7606E0 != -1)
      {
        swift_once();
      }

      return 0.0;
    case 26:
      return sub_20BCE2EB4(a2, 1);
    case 27:
      sub_20BCD805C(a2, 0);
      return result;
    case 39:
      if (qword_27C7606D0 != -1)
      {
        swift_once();
      }

      if (qword_27C7606E0 == -1)
      {
        return 0.0;
      }

      goto LABEL_37;
    default:
      if (qword_27C7606D0 != -1)
      {
        swift_once();
      }

      if (qword_27C7606E0 == -1)
      {
        return 0.0;
      }

LABEL_37:
      swift_once();
      return 0.0;
  }
}

uint64_t sub_20BC47B4C(unint64_t a1, id a2)
{
  v2 = 2;
  switch((a1 >> 57) & 0x78 | a1 & 7)
  {
    case 6uLL:
    case 0x11uLL:
    case 0x1AuLL:
    case 0x28uLL:
    case 0x37uLL:
    case 0x3AuLL:
    case 0x3BuLL:
    case 0x3DuLL:
      goto LABEL_7;
    case 0xEuLL:
    case 0x18uLL:
    case 0x2CuLL:
      goto LABEL_6;
    case 0x26uLL:
    case 0x3CuLL:
      v3 = [a2 traitCollection];
      v4 = [v3 preferredContentSizeCategory];

      LOBYTE(v3) = sub_20C13D424();
      v2 = 1;
      if ((v3 & 1) == 0)
      {
        v2 = 2;
      }

      goto LABEL_7;
    case 0x4DuLL:
      if (a1 != 0x9000000000000005)
      {
        goto LABEL_8;
      }

LABEL_6:
      v2 = 1;
LABEL_7:
      result = v2;
      break;
    default:
LABEL_8:
      sub_20C13DC94();
      MEMORY[0x20F2F4230](0xD000000000000024, 0x800000020C1AD210);
      sub_20C13DDF4();
      result = sub_20C13DE24();
      __break(1u);
      break;
  }

  return result;
}

unint64_t sub_20BC47CC0(unint64_t a1)
{
  result = 0;
  v3 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v3 <= 31)
  {
    if (v3 != 30)
    {
      if (v3 != 31)
      {
        return result;
      }

      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B80);
      v5 = swift_projectBox();
      v6 = (v4 + 64);
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7677D0);
    v13 = swift_projectBox();
    v14 = (v12 + 64);
LABEL_15:
    v16 = *(v13 + *v14);
    v9 = v16 > 0x22;
    v17 = (1 << v16) & 0x400800100;
    if (!v9 && v17 != 0)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (v3 == 32)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
    v13 = swift_projectBox();
    v14 = (v15 + 48);
    goto LABEL_15;
  }

  if (v3 != 33)
  {
    return result;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B28);
  v5 = swift_projectBox();
  v6 = (v7 + 48);
LABEL_8:
  v8 = *(v5 + *v6);
  v9 = v8 > 0x22;
  v10 = (1 << v8) & 0x400800100;
  if (v9 || v10 == 0)
  {
    return 0;
  }

LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C780);
  inited = swift_initStackObject();
  strcpy((inited + 32), "ShelfTitleView");
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 47) = -18;
  if (qword_27C7606D0 != -1)
  {
    swift_once();
  }

  v20 = qword_27C799F40;
  if (qword_27C7606E0 != -1)
  {
    swift_once();
  }

  v21 = qword_27C799F50;
  *(inited + 48) = 0;
  *(inited + 56) = v20;
  *(inited + 64) = 0;
  *(inited + 72) = v21;
  v22 = sub_20B6B4860(inited);
  swift_setDeallocating();
  sub_20BC47F3C(inited + 32);
  return v22;
}

uint64_t sub_20BC47F3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C788);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BC47FA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LayoutListConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20BC480A8()
{
  result = qword_27C76C790;
  if (!qword_27C76C790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C76C790);
  }

  return result;
}

uint64_t (*sub_20BC4810C(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_20BC48728(v4, a2);
  return sub_20BC495B0;
}

uint64_t (*sub_20BC48184(uint64_t **a1, uint64_t a2, uint64_t a3))()
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
  v6[4] = sub_20BC487CC(v6, a2, a3);
  return sub_20BC495B0;
}

uint64_t (*sub_20BC4820C(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_20BC48878(v4, a2);
  return sub_20BC495B0;
}

uint64_t (*sub_20BC48284(uint64_t **a1, unsigned __int8 a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_20BC4891C(v4, a2);
  return sub_20BC482FC;
}

void sub_20BC48300(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_20BC4834C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  if (*(*a1 + 16))
  {
    v6 = sub_20B65AA60(a2, a3);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 16 * v6);
      v9 = v8;
      sub_20BB7F1BC(v8);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
}

uint64_t sub_20BC483D0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = 0;
  v4 = *result;
  v5 = *result;
  v6 = 1 << *(*result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v9 = *(v5 + 64);
  v8 = v5 + 64;
  v10 = v7 & v9;
  v11 = (v6 + 63) >> 6;
  while (v10)
  {
LABEL_10:
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v14 = v13 | (v3 << 6);
    v15 = *(*(v4 + 56) + 16 * v14);
    if (v15)
    {
      if (v15 == a2)
      {
LABEL_12:
        v16 = (*(v4 + 48) + 16 * v14);
        v17 = v16[1];
        *a3 = *v16;
        a3[1] = v17;
      }
    }

    else if (!a2)
    {
      goto LABEL_12;
    }
  }

  while (1)
  {
    v12 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      *a3 = 0;
      a3[1] = 0;
      return result;
    }

    v10 = *(v8 + 8 * v12);
    ++v3;
    if (v10)
    {
      v3 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20BC48498(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{

  sub_20BB7F1CC(a4);
  return sub_20C0C0B0C(a4, a5, a2, a3);
}

unint64_t sub_20BC4850C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(*result + 16))
  {
    result = sub_20B65AA60(a2, a3);
    if (v5)
    {
      v7 = sub_20BC48184(v8, a2, a3);
      if (*v6 != 1)
      {
        *(v6 + 8) = 0;
      }

      return (v7)(v8, 0);
    }
  }

  return result;
}

unint64_t sub_20BC485B0@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = *result;
  if (*(*result + 16) && (result = sub_20B65AA60(a2, a3), (v6 & 1) != 0) && (v7 = *(v5 + 56) + 16 * result, *v7))
  {
    v8 = *(v7 + 8);
  }

  else
  {
    v8 = 2;
  }

  *a4 = v8;
  return result;
}

unint64_t sub_20BC4861C(unint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (*(*result + 16))
  {
    result = sub_20B65AA60(a2, a3);
    if (v7)
    {
      v9 = sub_20BC48184(v10, a2, a3);
      if (*v8 != 1)
      {
        *(v8 + 8) = a4;
      }

      return (v9)(v10, 0);
    }
  }

  return result;
}

uint64_t sub_20BC486CC()
{

  return swift_deallocClassInstance();
}

uint64_t (*sub_20BC48728(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_20BC49414(v5);
  v5[9] = sub_20BC48A24(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_20BC495B4;
}

uint64_t (*sub_20BC487CC(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 64) = sub_20BC49414(v7);
  *(v7 + 72) = sub_20BC48B98((v7 + 32), a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_20BC495B4;
}

uint64_t (*sub_20BC48878(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_20BC49414(v5);
  v5[9] = sub_20BC48DDC(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_20BC495B4;
}

uint64_t (*sub_20BC4891C(uint64_t *a1, unsigned __int8 a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_20BC4943C(v5);
  v5[9] = sub_20BC48FC4(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_20BC489C0;
}

void sub_20BC489C4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_20BC48A24(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, uint64_t a2)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_20B65AFAC(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_20BA111D4();
      v11 = v19;
      goto LABEL_11;
    }

    sub_20BA0BE78(v16, a3 & 1);
    v11 = sub_20B65AFAC(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_20C13E054();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return sub_20BC48B6C;
}

void (*sub_20BC48B98(uint64_t **a1, uint64_t a2, uint64_t a3, char a4))(void ***a1)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[3] = a3;
  v10[4] = v4;
  v10[2] = a2;
  v12 = *v4;
  v13 = sub_20B65AA60(a2, a3);
  *(v11 + 9) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_20BA114E0();
      v13 = v21;
      goto LABEL_11;
    }

    sub_20BA0C414(v18, a4 & 1);
    v13 = sub_20B65AA60(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_20C13E054();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[5] = v13;
  if (v19)
  {
    v23 = *(*v5 + 56) + 16 * v13;
    v24 = *v23;
    v25 = *(v23 + 8);
  }

  else
  {
    v25 = 0;
    v24 = 1;
  }

  *v11 = v24;
  *(v11 + 8) = v25;
  return sub_20BC48D00;
}

void sub_20BC48D00(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 8);
  v4 = *(*a1 + 9);
  if (v2 == 1)
  {
    if (*(*a1 + 9))
    {
      v5 = v1[5];
      v6 = *v1[4];
      sub_20B5D9804(*(v6 + 48) + 16 * v5);
      sub_20BE39718(v5, v6);
    }
  }

  else
  {
    v7 = v1[5];
    v8 = *v1[4];
    if (v4)
    {
      v9 = *(v8 + 56) + 16 * v7;
      *v9 = v2;
      *(v9 + 8) = v3;
    }

    else
    {
      sub_20BE44914(v7, v1[2], v1[3], v2, v3, v8);
    }
  }

  v10 = *v1;
  sub_20BB7F1CC(v2);
  sub_20BB7F1BC(v10);

  free(v1);
}

void (*sub_20BC48DDC(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, uint64_t a2)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_20B65AFAC(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_20BA11660();
      v11 = v19;
      goto LABEL_11;
    }

    sub_20BA0C6D8(v16, a3 & 1);
    v11 = sub_20B65AFAC(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_20C13E054();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return sub_20BC48B6C;
}

void sub_20BC48F24(uint64_t **a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, void))
{
  v4 = *a1;
  v5 = **a1;
  v6 = *(*a1 + 32);
  if (v5)
  {
    v7 = v4[3];
    v8 = *v4[2];
    if (v6)
    {
      *(*(v8 + 56) + 8 * v7) = v5;
    }

    else
    {
      a3(v7, v4[1], v5, v8);
    }
  }

  else if ((*a1)[4])
  {
    a4(v4[3], *v4[2]);
  }

  free(v4);
}

void (*sub_20BC48FC4(uint64_t *a1, unsigned __int8 a2, char a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x58uLL);
  }

  v10 = v9;
  *a1 = v9;
  *v9 = v3;
  *(v9 + 80) = a2;
  v11 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
  *(v10 + 8) = v11;
  v12 = *(v11 - 8);
  v13 = v12;
  *(v10 + 16) = v12;
  v14 = *(v12 + 64);
  if (v8)
  {
    *(v10 + 24) = swift_coroFrameAlloc();
    *(v10 + 32) = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    *(v10 + 24) = malloc(*(v12 + 64));
    *(v10 + 32) = malloc(v14);
    v15 = malloc(v14);
  }

  *(v10 + 40) = v15;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772B50) - 8) + 64);
  if (v8)
  {
    *(v10 + 48) = swift_coroFrameAlloc();
    *(v10 + 56) = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    *(v10 + 48) = malloc(v16);
    *(v10 + 56) = malloc(v16);
    v17 = malloc(v16);
  }

  v18 = v17;
  *(v10 + 64) = v17;
  v19 = *v4;
  v20 = sub_20B65B078(a2);
  *(v10 + 81) = v21 & 1;
  v22 = *(v19 + 16);
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
    __break(1u);
    goto LABEL_22;
  }

  v26 = v21;
  v27 = *(v19 + 24);
  if (v27 < v25 || (a3 & 1) == 0)
  {
    if (v27 >= v25 && (a3 & 1) == 0)
    {
      v28 = v20;
      sub_20BA11978();
      v20 = v28;
      goto LABEL_17;
    }

    sub_20BA0CC48(v25, a3 & 1);
    v20 = sub_20B65B078(a2);
    if ((v26 & 1) == (v29 & 1))
    {
      goto LABEL_17;
    }

LABEL_22:
    result = sub_20C13E054();
    __break(1u);
    return result;
  }

LABEL_17:
  *(v10 + 72) = v20;
  if (v26)
  {
    sub_20BC49548(*(*v4 + 56) + *(v13 + 72) * v20, v18);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  (*(v13 + 56))(v18, v30, 1, v11);
  return sub_20BC4926C;
}

void sub_20BC4926C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = (*(*a1 + 16) + 48);
  v5 = *(*a1 + 64);
  if (a2)
  {
    v6 = *(v2 + 48);
    sub_20BC49470(v5, v6);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 81);
    v9 = *(v2 + 48);
    if (v7 != 1)
    {
      v10 = *v2;
      sub_20BC49548(v9, *(v2 + 32));
      v11 = *v10;
      v12 = *(v2 + 72);
      v13 = *(v2 + 32);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 24);
        v15 = *(v2 + 80);
        sub_20BC49548(v13, v14);
        sub_20BE3A6B0(v12, v15, v14, v11);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = *(v2 + 56);
    sub_20BC49470(v5, v16);
    v17 = (*v4)(v16, 1, v3);
    v8 = *(v2 + 81);
    v9 = *(v2 + 56);
    if (v17 != 1)
    {
      v18 = *v2;
      sub_20BC49548(v9, *(v2 + 40));
      v11 = *v18;
      v12 = *(v2 + 72);
      v13 = *(v2 + 40);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_20BC49548(v13, v11[7] + *(*(v2 + 16) + 72) * v12);
      goto LABEL_10;
    }
  }

  sub_20BC494E0(v9);
  if (v8)
  {
    sub_20BE39A44(*(v2 + 72), **v2);
  }

LABEL_10:
  v19 = *(v2 + 56);
  v20 = *(v2 + 64);
  v22 = *(v2 + 40);
  v21 = *(v2 + 48);
  v24 = *(v2 + 24);
  v23 = *(v2 + 32);
  sub_20BC494E0(v20);
  free(v20);
  free(v19);
  free(v21);
  free(v22);
  free(v23);
  free(v24);

  free(v2);
}

uint64_t (*sub_20BC49414(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_20BC495AC;
}

uint64_t (*sub_20BC4943C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_20BC49464;
}

uint64_t sub_20BC49470(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772B50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BC494E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772B50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BC49548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionEventPresentationCoordinator.QueueItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_20BC495B8()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if ((*(v1 + 440) & 1) == 0)
  {
    sub_20C13B534();
    v6 = sub_20C13BB74();
    v7 = sub_20C13D1F4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20B517000, v6, v7, "[TVCatalogEditorialCollectionDetailPageDataProvider] Activating", v8, 2u);
      MEMORY[0x20F2F6A40](v8, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    *(v1 + 440) = 1;
    sub_20BC49E7C();
    swift_getObjectType();
    sub_20C13AEC4();
    swift_allocObject();
    swift_weakInit();
    sub_20C13A784();

    __swift_destroy_boxed_opaque_existential_1(v10);
  }
}

uint64_t sub_20BC497A4@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v2 - 8);
  v60 = &v48 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v4 - 8);
  v59 = &v48 - v5;
  v6 = sub_20C136D34();
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x28223BE20](v6);
  v49 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C1377C4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v54 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764970);
  MEMORY[0x28223BE20](v11 - 8);
  v53 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v16 - 8);
  v63 = &v48 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v48 - v19;
  v21 = (v1[6] + OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier);
  v23 = *v21;
  v22 = v21[1];
  v57 = v23;
  v62 = v22;
  v24 = *MEMORY[0x277D517C8];
  v25 = sub_20C1352F4();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v20, v24, v25);
  v27 = *(v26 + 56);
  v58 = v20;
  v28 = v20;
  v29 = v8;
  v27(v28, 0, 1, v25);
  v30 = v1[51];
  v31 = v1[52];
  v32 = OBJC_IVAR____TtC9SeymourUI50TVCatalogEditorialCollectionDetailPageDataProvider_editorialCollectionDetail;
  swift_beginAccess();
  v52 = v1;
  sub_20B52F9E8(v1 + v32, v15, &qword_27C764970);
  v33 = v9;
  v34 = *(v9 + 48);
  v35 = v34(v15, 1, v29);
  v48 = v9;
  v55 = v31;
  v56 = v30;
  if (v35)
  {

    sub_20B58C2C8(v30, v31);
    sub_20B520158(v15, &qword_27C764970);
    v36 = 1;
    v37 = v54;
  }

  else
  {
    v38 = *(v9 + 16);
    v39 = v54;
    v38(v54, v15, v29);

    sub_20B58C2C8(v30, v31);
    sub_20B520158(v15, &qword_27C764970);
    v40 = v49;
    sub_20C1377A4();
    (*(v33 + 8))(v39, v29);
    sub_20C136D04();
    (*(v50 + 8))(v40, v51);
    v36 = 0;
    v37 = v39;
  }

  v41 = sub_20C132C14();
  (*(*(v41 - 8) + 56))(v63, v36, 1, v41);
  v42 = v53;
  sub_20B52F9E8(v52 + v32, v53, &qword_27C764970);
  if (v34(v42, 1, v29))
  {
    sub_20B520158(v42, &qword_27C764970);
  }

  else
  {
    v43 = v48;
    (*(v48 + 16))(v37, v42, v29);
    sub_20B520158(v42, &qword_27C764970);
    v44 = v49;
    sub_20C1377A4();
    (*(v43 + 8))(v37, v29);
    sub_20C136D14();
    (*(v50 + 8))(v44, v51);
  }

  v45 = sub_20C135ED4();
  (*(*(v45 - 8) + 56))(v59, 1, 1, v45);
  v46 = sub_20C136914();
  (*(*(v46 - 8) + 56))(v60, 1, 1, v46);
  return sub_20C133384();
}

uint64_t sub_20BC49E7C()
{
  v1 = sub_20C13C554();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7641E0);
  v72 = *(v75 - 8);
  v5 = *(v72 + 64);
  MEMORY[0x28223BE20](v75);
  v71 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v70 = &v63 - v7;
  MEMORY[0x28223BE20](v8);
  v73 = &v63 - v9;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7644E8);
  v79 = *(v81 - 8);
  v10 = *(v79 + 64);
  MEMORY[0x28223BE20](v81);
  v76 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v78 = &v63 - v12;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v13 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v82 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v83 = &v63 - v16;
  v80 = v17;
  MEMORY[0x28223BE20](v18);
  v77 = &v63 - v19;
  v20 = v0;
  sub_20B5E2E18();

  *v4 = sub_20C13D374();
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v21 = sub_20C13C584();
  result = (*(v2 + 8))(v4, v1);
  if (v21)
  {
    __swift_project_boxed_opaque_existential_1((v20 + 176), *(v20 + 200));
    v23 = v70;
    sub_20C139F04();

    v24 = v71;
    v25 = v72;
    v26 = *(v72 + 16);
    v66 = v72 + 16;
    v67 = v26;
    v68 = v10;
    v27 = v75;
    v26(v71, v23, v75);
    v69 = v13;
    v28 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v65 = v28;
    v29 = (v5 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    v64 = *(v25 + 32);
    v64(v30 + v28, v24, v27);
    v31 = (v30 + v29);
    *v31 = sub_20BC4F090;
    v31[1] = v20;
    sub_20C1377C4();

    v32 = v73;
    sub_20C137C94();
    v72 = *(v25 + 8);
    (v72)(v23, v27);
    v33 = swift_allocObject();
    *(v33 + 16) = sub_20BC4F0BC;
    *(v33 + 24) = v20;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_20BC4F0C0;
    *(v34 + 24) = v33;
    v67(v23, v32, v27);
    v35 = swift_allocObject();
    v64(v35 + v65, v23, v27);
    v36 = (v35 + v29);
    *v36 = sub_20BC4F0DC;
    v36[1] = v34;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7644F0);
    v37 = v78;
    sub_20C137C94();
    (v72)(v32, v27);
    v38 = swift_allocObject();
    *(v38 + 16) = sub_20BC4F10C;
    *(v38 + 24) = v20;
    v39 = v20;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_20B8FD76C;
    *(v40 + 24) = v38;
    v41 = v79;
    v42 = v76;
    v43 = v81;
    (*(v79 + 16))(v76, v37, v81);
    v44 = (*(v41 + 80) + 16) & ~*(v41 + 80);
    v45 = (v68 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    (*(v41 + 32))(v46 + v44, v42, v43);
    v47 = (v46 + v45);
    *v47 = sub_20B8FD788;
    v47[1] = v40;

    v48 = v83;
    sub_20C137C94();
    (*(v41 + 8))(v37, v43);
    v49 = swift_allocObject();
    *(v49 + 16) = sub_20BC4F138;
    *(v49 + 24) = v39;
    v50 = swift_allocObject();
    *(v50 + 16) = sub_20B5F67D4;
    *(v50 + 24) = v49;
    v51 = v69;
    v52 = v82;
    v53 = v74;
    (*(v69 + 16))(v82, v48, v74);
    v54 = v51;
    v55 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v56 = (v80 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = swift_allocObject();
    (*(v54 + 32))(v57 + v55, v52, v53);
    v58 = (v57 + v56);
    *v58 = sub_20B5DF204;
    v58[1] = v50;

    v59 = v77;
    sub_20C137C94();
    v60 = *(v54 + 8);
    v60(v48, v53);
    v61 = sub_20C137CB4();
    v62 = swift_allocObject();
    *(v62 + 16) = 0;
    *(v62 + 24) = 0;
    v61(sub_20B52347C, v62);

    return (v60)(v59, v53);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20BC4A758()
{
  v1 = v0;
  v2 = sub_20C135E14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13C554();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v9 = sub_20C13D374();
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v10 = sub_20C13C584();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v12 = sub_20C1377B4();
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = *(v1 + 256);
      v16 = *(v3 + 16);
      v15 = v3 + 16;
      v28 = v16;
      v29 = v14;
      v17 = v12 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
      v18 = *(v15 + 56);
      v26[1] = v12;
      v27 = v18;
      v30 = v15;
      v19 = MEMORY[0x277D84F90];
      v16(v5, v17, v2);
      while (1)
      {
        v21 = sub_20BE533E4(v29);
        v23 = v22;
        (*(v15 - 8))(v5, v2);
        if (v21)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_20BC0577C(0, v19[2] + 1, 1, v19);
          }

          v25 = v19[2];
          v24 = v19[3];
          if (v25 >= v24 >> 1)
          {
            v19 = sub_20BC0577C((v24 > 1), v25 + 1, 1, v19);
          }

          v19[2] = v25 + 1;
          v20 = &v19[2 * v25];
          v20[4] = v21;
          v20[5] = v23;
        }

        v17 += v27;
        if (!--v13)
        {
          break;
        }

        v28(v5, v17, v2);
      }
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20BC4AA28(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764970);
  MEMORY[0x28223BE20](v4 - 8);
  v43 = &v36 - v5;
  v6 = sub_20C1377C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v44 = v8;
  v45 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v12 = sub_20C13BB84();
  v41 = *(v12 - 8);
  v42 = v12;
  MEMORY[0x28223BE20](v12);
  v46 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C13C554();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v17 = sub_20C13D374();
  (*(v15 + 104))(v17, *MEMORY[0x277D85200], v14);
  v18 = sub_20C13C584();
  result = (*(v15 + 8))(v17, v14);
  if (v18)
  {
    v39 = v2;
    sub_20C13B534();
    v20 = *(v7 + 16);
    v40 = a1;
    v20(v11, a1, v6);
    v21 = sub_20C13BB74();
    v22 = sub_20C13D1F4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v47[0] = v37;
      *v23 = 141558274;
      *(v23 + 4) = 1752392040;
      *(v23 + 12) = 2080;
      sub_20BC4F048(&qword_27C76C7C8, MEMORY[0x277D53670]);
      v24 = sub_20C13DFA4();
      v38 = v20;
      v26 = v25;
      (*(v7 + 8))(v11, v6);
      v27 = sub_20B51E694(v24, v26, v47);
      v20 = v38;

      *(v23 + 14) = v27;
      _os_log_impl(&dword_20B517000, v21, v22, "[CatalogEditorialCollectionPageDataProvider] Updating with detail %{mask.hash}s", v23, 0x16u);
      v28 = v37;
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x20F2F6A40](v28, -1, -1);
      MEMORY[0x20F2F6A40](v23, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v11, v6);
    }

    (*(v41 + 8))(v46, v42);
    v29 = v43;
    v30 = v40;
    v20(v43, v40, v6);
    (*(v7 + 56))(v29, 0, 1, v6);
    v31 = OBJC_IVAR____TtC9SeymourUI50TVCatalogEditorialCollectionDetailPageDataProvider_editorialCollectionDetail;
    v32 = v39;
    swift_beginAccess();
    sub_20BC4EF6C(v29, v32 + v31);
    swift_endAccess();
    v33 = v45;
    v20(v45, v30, v6);
    v34 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v35 = swift_allocObject();
    (*(v7 + 32))(v35 + v34, v33, v6);
    return sub_20C137CA4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20BC4AF78(void *a1)
{
  v2 = v1;
  v4 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v4 - 8);
  v80 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C13C554();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v13 = sub_20C13D374();
  (*(v11 + 104))(v13, *MEMORY[0x277D85200], v10);
  v14 = sub_20C13C584();
  v16 = *(v11 + 8);
  v15 = v11 + 8;
  v16(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    sub_20BB5D394((v17 > 1), v10, 1);
    v43 = v90[0];
    goto LABEL_5;
  }

  sub_20C13B534();
  v18 = a1;
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1D4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v79 = v2;
    v22 = v21;
    v23 = swift_slowAlloc();
    v93[0] = v23;
    *v22 = 136446210;
    swift_getErrorValue();
    v24 = MEMORY[0x20F2F5850](v81, v82);
    v26 = sub_20B51E694(v24, v25, v93);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_20B517000, v19, v20, "[CatalogEditorialCollectionPageDataProvider] Failed to fetch remote content with %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x20F2F6A40](v23, -1, -1);
    v27 = v22;
    v2 = v79;
    MEMORY[0x20F2F6A40](v27, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  type metadata accessor for LoadingErrorShelf();
  swift_allocObject();

  a1 = sub_20BEFE8F4(v28, 0, 0);

  v29 = *(v2 + OBJC_IVAR____TtC9SeymourUI50TVCatalogEditorialCollectionDetailPageDataProvider_editorialCollectionIdentifier + 8);
  v79 = *(v2 + OBJC_IVAR____TtC9SeymourUI50TVCatalogEditorialCollectionDetailPageDataProvider_editorialCollectionIdentifier);
  v30 = *(*(v2 + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  v78 = v29;

  v77 = v30;
  v76 = sub_20C1380F4();
  sub_20C13C734();
  v31 = sub_20C13C724();
  v6 = v2;
  v2 = type metadata accessor for CatalogPageImpressionTracker();
  v32 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v33 = MEMORY[0x277D221C0];
  v32[2] = sub_20C13C6D4();
  v32[3] = v31;
  v32[4] = v33;
  v94 = v2;
  v15 = sub_20BC4F048(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker);
  v95 = v15;
  v93[0] = v32;
  v9 = type metadata accessor for MetricLocationStore();
  v34 = swift_allocObject();
  v35 = MEMORY[0x277D84F90];
  v36 = MEMORY[0x277D84F98];
  *(v34 + 16) = MEMORY[0x277D84F90];
  *(v34 + 24) = v36;
  v37 = __swift_mutable_project_boxed_opaque_existential_1(v93, v2);
  v80 = v75;
  v38 = MEMORY[0x28223BE20](v37);
  v40 = (v75 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v41 + 16))(v40, v38);
  v42 = *v40;
  v92[3] = v2;
  v92[4] = v15;
  v92[0] = v42;
  v91[3] = v9;
  v91[4] = &off_2822B6968;
  v91[0] = v34;
  v90[0] = v35;
  sub_20BB5D394(0, 1, 0);
  v43 = v90[0];
  v7 = *(v90[0] + 16);
  v17 = *(v90[0] + 24);
  v10 = v7 + 1;
  if (v7 >= v17 >> 1)
  {
    goto LABEL_10;
  }

LABEL_5:
  *(v43 + 16) = v10;
  v44 = v43 + 24 * v7;
  *(v44 + 32) = a1;
  *(v44 + 40) = &off_2822F4EF0;
  *(v44 + 48) = 0;
  sub_20B51CC64(v92, v90);
  sub_20B51CC64(v91, v89);
  v45 = __swift_mutable_project_boxed_opaque_existential_1(v90, v90[3]);
  v75[1] = v75;
  v46 = MEMORY[0x28223BE20](v45);
  v48 = (v75 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v49 + 16))(v48, v46);
  v50 = __swift_mutable_project_boxed_opaque_existential_1(v89, v89[3]);
  v51 = MEMORY[0x28223BE20](v50);
  v75[2] = a1;
  v53 = (v75 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v54 + 16))(v53, v51);
  v55 = *v48;
  v56 = *v53;
  v87 = v2;
  v88 = v15;
  v86[0] = v55;
  v84 = v9;
  v85 = &off_2822B6968;
  v83[0] = v56;
  v57 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v58 = __swift_mutable_project_boxed_opaque_existential_1(v86, v87);
  v59 = MEMORY[0x28223BE20](v58);
  v61 = (v75 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v62 + 16))(v61, v59);
  v63 = __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
  v64 = MEMORY[0x28223BE20](v63);
  v66 = (v75 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v67 + 16))(v66, v64);
  v68 = sub_20BE3AA74(v79, v78, v43, v76, v77, *v61, *v66, 2, v57);
  __swift_destroy_boxed_opaque_existential_1(v91);
  __swift_destroy_boxed_opaque_existential_1(v92);
  __swift_destroy_boxed_opaque_existential_1(v83);
  __swift_destroy_boxed_opaque_existential_1(v86);
  __swift_destroy_boxed_opaque_existential_1(v89);
  __swift_destroy_boxed_opaque_existential_1(v90);
  __swift_destroy_boxed_opaque_existential_1(v93);
  v69 = *(v6 + 48);
  *(v6 + 48) = v68;

  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v70 = *(v6 + 40);
  ObjectType = swift_getObjectType();
  v94 = type metadata accessor for TVCatalogEditorialCollectionDetailPageDataProvider();
  v95 = &off_2822D8610;
  v93[0] = v6;
  v72 = *(v6 + 48);

  v73 = v72;
  sub_20B76FFF8(v93, v73, ObjectType, v70);

  swift_unknownObjectRelease();

  return __swift_destroy_boxed_opaque_existential_1(v93);
}

uint64_t sub_20BC4B8DC(void *a1)
{
  v2 = v1;
  v4 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v166 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v192 = sub_20C137C24();
  v189 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v8 = (&v166 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_20C136D64();
  v172 = *(v9 - 8);
  v173 = v9;
  MEMORY[0x28223BE20](v9);
  v167 = &v166 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v169 = &v166 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C7C0);
  MEMORY[0x28223BE20](v13 - 8);
  v188 = &v166 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v174 = &v166 - v16;
  v17 = sub_20C1377C4();
  v181 = *(v17 - 8);
  v182 = v17;
  MEMORY[0x28223BE20](v17);
  v171 = &v166 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764970);
  MEMORY[0x28223BE20](v19 - 8);
  v180 = &v166 - v20;
  v21 = sub_20C136D34();
  v178 = *(v21 - 8);
  v179 = v21;
  MEMORY[0x28223BE20](v21);
  v166 = &v166 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v170 = &v166 - v24;
  MEMORY[0x28223BE20](v25);
  v177 = &v166 - v26;
  v184 = sub_20C136D94();
  v176 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v168 = &v166 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764DF8);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v166 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v31 - 8);
  v187 = &v166 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v175 = &v166 - v34;
  MEMORY[0x28223BE20](v35);
  v190 = &v166 - v36;
  v37 = sub_20C13C554();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = (&v166 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v40 = sub_20C13D374();
  (*(v38 + 104))(v40, *MEMORY[0x277D85200], v37);
  v41 = sub_20C13C584();
  result = (*(v38 + 8))(v40, v37);
  if ((v41 & 1) == 0)
  {
    __break(1u);
    goto LABEL_77;
  }

  v183 = v8;
  v185 = v6;
  v191 = v2;
  v43 = a1[2];
  v44 = v43 == 0;
  v45 = 0;
  if (v43)
  {
    v46 = a1 + 4;
    while (1)
    {
      v47 = *v46;
      swift_getObjectType();
      if (swift_conformsToProtocol2() && v47 != 0)
      {
        break;
      }

      ++v45;
      v46 += 2;
      v44 = v43 == v45;
      if (v43 == v45)
      {
        v45 = 0;
        break;
      }
    }
  }

  v49 = v43 + 1;
  v50 = 32;
  v51 = v190;
  while (--v49)
  {
    v52 = v50 + 16;
    v53 = *(a1 + v50);
    type metadata accessor for EditorialLockupsShelf();
    v54 = swift_dynamicCastClass();
    v50 = v52;
    if (v54)
    {
      *(v54 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_canSuggestFocus) = 1;
      swift_unknownObjectRetain();
      goto LABEL_16;
    }
  }

  v53 = 0;
LABEL_16:
  v55 = v43 + 1;
  v56 = 32;
  v186 = v53;
  while (--v55)
  {
    v57 = v56 + 16;
    v58 = *(a1 + v56);
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v59 = v58 == 0;
    }

    else
    {
      v59 = 1;
    }

    v56 = v57;
    if (!v59)
    {
      swift_unknownObjectRetain();
      goto LABEL_24;
    }
  }

  v58 = 0;
LABEL_24:
  v206 = a1;
  v60 = *(v189 + 56);
  v60(v51, 1, 1, v192);

  if (!v44)
  {
    v61 = sub_20B91F8C4(v45);
    swift_getObjectType();
    if (swift_conformsToProtocol2() && v61)
    {
      v62 = OBJC_IVAR____TtC9SeymourUI31CatalogWorkoutDetailHeaderShelf_item;
      swift_beginAccess();
      sub_20B52F9E8(v61 + v62, v30, &qword_27C764DF8);
      v63 = v176;
      v64 = v184;
      if ((*(v176 + 48))(v30, 1, v184))
      {
        swift_unknownObjectRelease();
        sub_20B520158(v51, &unk_27C766680);
        sub_20B520158(v30, &qword_27C764DF8);
        v65 = 1;
        v66 = v175;
      }

      else
      {
        v72 = v168;
        (*(v63 + 16))(v168, v30, v64);
        sub_20B520158(v30, &qword_27C764DF8);
        v66 = v175;
        sub_20C136D74();
        swift_unknownObjectRelease();
        (*(v63 + 8))(v72, v64);
        sub_20B520158(v51, &unk_27C766680);
        v65 = 0;
      }

      v60(v66, v65, 1, v192);
      sub_20BAF11B0(v66, v51);
      if (!v58)
      {
        goto LABEL_36;
      }

      goto LABEL_31;
    }

    swift_unknownObjectRelease();
  }

  if (!v58)
  {
LABEL_36:
    v184 = 0;
    v71 = 0;
    v68 = v191;
    v69 = v188;
    goto LABEL_37;
  }

LABEL_31:
  swift_getObjectType();
  v67 = swift_conformsToProtocol2();
  v68 = v191;
  v69 = v188;
  if (v67)
  {
    swift_unknownObjectRetain();
    v184 = sub_20C136D54();
    v71 = v70;
    swift_unknownObjectRelease();
  }

  else
  {
    v184 = 0;
    v71 = 0;
  }

LABEL_37:
  v73 = v206;
  v74 = v206[2];
  if (!v74)
  {
    goto LABEL_53;
  }

  type metadata accessor for TVExpandingTextEditorialSectionShelf();
  v75 = 0;
  v76 = 32;
  while (!swift_dynamicCastClass())
  {
    ++v75;
    v76 += 16;
    if (v74 == v75)
    {
      goto LABEL_41;
    }
  }

  v188 = v71;
  v77 = OBJC_IVAR____TtC9SeymourUI50TVCatalogEditorialCollectionDetailPageDataProvider_editorialCollectionDetail;
  v78 = v191;
  swift_beginAccess();
  v79 = v180;
  sub_20B52F9E8(v78 + v77, v180, &qword_27C764970);
  v80 = v181;
  v81 = v182;
  if ((*(v181 + 48))(v79, 1, v182))
  {
    sub_20B520158(v79, &qword_27C764970);
    v68 = v191;
    v71 = v188;
    goto LABEL_53;
  }

  v82 = v171;
  (*(v80 + 16))(v171, v79, v81);
  sub_20B520158(v79, &qword_27C764970);
  v83 = v170;
  sub_20C1377A4();
  (*(v80 + 8))(v82, v81);
  (*(v178 + 32))(v177, v83, v179);
  v84 = sub_20B91F8C4(v75);
  v181 = v85;
  v182 = v84;
  v86 = swift_dynamicCastClass();
  if (v86)
  {
    v88 = v172;
    v87 = v173;
    v89 = v174;
    (*(v172 + 16))(v174, v86 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_item, v173);
    v90 = 0;
    v68 = v191;
  }

  else
  {
    v90 = 1;
    v68 = v191;
    v87 = v173;
    v89 = v174;
    v88 = v172;
  }

  v71 = v188;
  (*(v88 + 56))(v89, v90, 1, v87);
  sub_20B52F9E8(v89, v69, &qword_27C76C7C0);
  v91 = (*(v88 + 48))(v69, 1, v87);
  v51 = v190;
  if (v91 != 1)
  {
    v156 = v69;
    v157 = v169;
    (*(v88 + 32))(v169, v156, v87);
    v158 = v166;
    (*(v178 + 16))(v166, v177, v179);
    v159 = *(v88 + 16);
    v160 = v167;
    v159(v167, v157, v87);
    type metadata accessor for TVCatalogEditorialCollectionHeaderShelf();
    swift_allocObject();

    v162 = sub_20B7EFD80(v161, v158, v160);

    v73 = v206;
    v163 = v206[2];
    if (v163 >= v75)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v163 >= v73[3] >> 1)
      {
        v73 = sub_20BC0577C(isUniquelyReferenced_nonNull_native, v163 + 1, 1, v73);
        v206 = v73;
      }

      v165 = v174;
      sub_20B7A3628(v75, v75, 1, v162, &off_2822A8C00);
      swift_unknownObjectRelease();

      (*(v172 + 8))(v169, v173);
      sub_20B520158(v165, &qword_27C76C7C0);
      (*(v178 + 8))(v177, v179);
LABEL_41:
      v68 = v191;
      goto LABEL_53;
    }

    goto LABEL_78;
  }

  result = sub_20B520158(v69, &qword_27C76C7C0);
  v73 = v206;
  v92 = v206[2];
  if (v92 < v75)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    return result;
  }

  v93 = swift_isUniquelyReferenced_nonNull_native();
  if (!v93 || v92 >= v73[3] >> 1)
  {
    v73 = sub_20BC0577C(v93, v92 + 1, 1, v73);
    v206 = v73;
  }

  sub_20B7A3628(v75, v75, 1, v182, v181);
  swift_unknownObjectRelease();
  sub_20B520158(v89, &qword_27C76C7C0);
  (*(v178 + 8))(v177, v179);
LABEL_53:
  v94 = v187;
  sub_20B52F9E8(v51, v187, &unk_27C766680);
  v95 = v189;
  v96 = v192;
  if ((*(v189 + 48))(v94, 1, v192) == 1)
  {
    sub_20B520158(v94, &unk_27C766680);
  }

  else
  {
    v97 = v183;
    (*(v95 + 32))(v183, v94, v96);
    sub_20BC4DC68(v97);
    (*(v95 + 8))(v97, v96);
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {

    if (v73[2])
    {
      goto LABEL_58;
    }

LABEL_60:
    v101 = 0uLL;
    goto LABEL_61;
  }

  v98 = *(v68 + 24);
  ObjectType = swift_getObjectType();
  v204 = type metadata accessor for TVCatalogEditorialCollectionDetailPageDataProvider();
  v205 = &off_2822D8488;
  v203[0] = v68;
  v100 = *(v98 + 16);

  v100(v203, v190, v184, v71, 0, 0, ObjectType, v98);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v203);
  if (!v73[2])
  {
    goto LABEL_60;
  }

LABEL_58:
  v192 = *(v73 + 2);
  swift_unknownObjectRetain();
  v101 = v192;
LABEL_61:
  *(v68 + 424) = v101;
  swift_unknownObjectRelease();
  v102 = *(v68 + OBJC_IVAR____TtC9SeymourUI50TVCatalogEditorialCollectionDetailPageDataProvider_editorialCollectionIdentifier);
  v103 = *(*(v68 + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  v189 = *(v68 + OBJC_IVAR____TtC9SeymourUI50TVCatalogEditorialCollectionDetailPageDataProvider_editorialCollectionIdentifier + 8);

  v188 = v103;
  LODWORD(v187) = sub_20C1380F4();
  sub_20C13C734();
  v104 = sub_20C13C724();
  v105 = type metadata accessor for CatalogPageImpressionTracker();
  v106 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v107 = MEMORY[0x277D221C0];
  v106[2] = sub_20C13C6D4();
  v106[3] = v104;
  v106[4] = v107;
  v204 = v105;
  v108 = sub_20BC4F048(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker);
  v205 = v108;
  v203[0] = v106;
  v109 = type metadata accessor for MetricLocationStore();
  v110 = swift_allocObject();
  v111 = MEMORY[0x277D84F90];
  v112 = MEMORY[0x277D84F98];
  *(v110 + 16) = MEMORY[0x277D84F90];
  *(v110 + 24) = v112;
  v113 = __swift_mutable_project_boxed_opaque_existential_1(v203, v105);
  v185 = &v166;
  v114 = MEMORY[0x28223BE20](v113);
  v116 = (&v166 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v117 + 16))(v116, v114);
  v118 = *v116;
  v202[3] = v105;
  v202[4] = v108;
  v202[0] = v118;
  v201[3] = v109;
  v201[4] = &off_2822B6968;
  v184 = v109;
  v201[0] = v110;
  v119 = v73[2];
  if (v119)
  {
    v181 = v108;
    v182 = v105;
    v183 = v102;
    v200[0] = v111;
    sub_20BB5D394(0, v119, 0);
    v120 = 4;
    v121 = v200[0];
    do
    {
      v122 = *&v73[v120];
      v200[0] = v121;
      v123 = *(v121 + 16);
      v124 = *(v121 + 24);
      v192 = v122;
      swift_unknownObjectRetain();
      if (v123 >= v124 >> 1)
      {
        sub_20BB5D394((v124 > 1), v123 + 1, 1);
        v121 = v200[0];
      }

      *(v121 + 16) = v123 + 1;
      v125 = v121 + 24 * v123;
      *(v125 + 32) = v192;
      *(v125 + 48) = 0;
      v120 += 2;
      --v119;
    }

    while (v119);

    v105 = v182;
    v102 = v183;
    v108 = v181;
  }

  else
  {

    v121 = MEMORY[0x277D84F90];
  }

  sub_20B51CC64(v202, v200);
  sub_20B51CC64(v201, v199);
  v126 = __swift_mutable_project_boxed_opaque_existential_1(v200, v200[3]);
  *&v192 = &v166;
  v127 = MEMORY[0x28223BE20](v126);
  v129 = (&v166 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v130 + 16))(v129, v127);
  v131 = __swift_mutable_project_boxed_opaque_existential_1(v199, v199[3]);
  v183 = &v166;
  v132 = MEMORY[0x28223BE20](v131);
  v134 = (&v166 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v135 + 16))(v134, v132);
  v136 = *v129;
  v137 = *v134;
  v197 = v105;
  v198 = v108;
  v196[0] = v136;
  v194 = v184;
  v195 = &off_2822B6968;
  v193[0] = v137;
  v138 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v139 = __swift_mutable_project_boxed_opaque_existential_1(v196, v197);
  v140 = MEMORY[0x28223BE20](v139);
  v142 = (&v166 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v143 + 16))(v142, v140);
  v144 = __swift_mutable_project_boxed_opaque_existential_1(v193, v194);
  v145 = MEMORY[0x28223BE20](v144);
  v147 = (&v166 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v148 + 16))(v147, v145);
  v149 = sub_20BE3AA74(v102, v189, v121, v187, v188, *v142, *v147, 2, v138);
  __swift_destroy_boxed_opaque_existential_1(v201);
  __swift_destroy_boxed_opaque_existential_1(v202);
  __swift_destroy_boxed_opaque_existential_1(v193);
  __swift_destroy_boxed_opaque_existential_1(v196);
  __swift_destroy_boxed_opaque_existential_1(v199);
  __swift_destroy_boxed_opaque_existential_1(v200);
  __swift_destroy_boxed_opaque_existential_1(v203);
  v150 = v191;
  v151 = *(v191 + 48);
  *(v191 + 48) = v149;

  if (swift_unknownObjectWeakLoadStrong())
  {
    v152 = *(v150 + 40);
    v153 = swift_getObjectType();
    v204 = type metadata accessor for TVCatalogEditorialCollectionDetailPageDataProvider();
    v205 = &off_2822D8610;
    v203[0] = v150;
    v154 = *(v150 + 48);

    v155 = v154;
    sub_20B76FFF8(v203, v155, v153, v152);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    sub_20B520158(v190, &unk_27C766680);
    return __swift_destroy_boxed_opaque_existential_1(v203);
  }

  else
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return sub_20B520158(v190, &unk_27C766680);
  }
}

uint64_t sub_20BC4CEB8()
{
  sub_20B583E6C(v0 + 16);
  sub_20B583E6C(v0 + 32);

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1(v0 + 216);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 280);
  __swift_destroy_boxed_opaque_existential_1(v0 + 320);

  __swift_destroy_boxed_opaque_existential_1(v0 + 368);
  sub_20B58CFB0(*(v0 + 408), *(v0 + 416));
  swift_unknownObjectRelease();
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI50TVCatalogEditorialCollectionDetailPageDataProvider_editorialCollectionDetail, &qword_27C764970);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI50TVCatalogEditorialCollectionDetailPageDataProvider_configuration, &qword_27C761800);
  return v0;
}

uint64_t sub_20BC4CFF4()
{
  sub_20BC4CEB8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVCatalogEditorialCollectionDetailPageDataProvider()
{
  result = qword_27C76C7A8;
  if (!qword_27C76C7A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BC4D0A0()
{
  sub_20BC4D224(319, &qword_27C76C7B8, MEMORY[0x277D53670]);
  if (v0 <= 0x3F)
  {
    sub_20BC4D224(319, &qword_281103BF0, MEMORY[0x277D50560]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_20BC4D224(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20BC4D278()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v4 = sub_20C13BB74();
  v5 = sub_20C13D1F4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_20B517000, v4, v5, "[TVCatalogEditorialCollectionDetailPageDataProvider] archived sessions updated, refreshing page", v6, 2u);
    MEMORY[0x20F2F6A40](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BC49E7C();
  }

  return result;
}

uint64_t sub_20BC4D494@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI50TVCatalogEditorialCollectionDetailPageDataProvider_configuration;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C761800);
}

uint64_t sub_20BC4D528(uint64_t a1)
{
  v22[2] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v5 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v9 = *(v8 - 8);
  v23 = v8;
  v24 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = v22 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B70);
  sub_20C133AA4();
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v12 = [objc_opt_self() mainScreen];
  [v12 bounds];

  sub_20C138B14();
  v13 = swift_allocObject();
  v14 = v22[1];
  *(v13 + 16) = sub_20BC4F178;
  *(v13 + 24) = v14;
  (*(v2 + 16))(v5, v7, v1);
  v15 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v16 = swift_allocObject();
  (*(v2 + 32))(v16 + v15, v5, v1);
  v17 = (v16 + ((v3 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = sub_20BB41370;
  v17[1] = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  sub_20C137C94();
  (*(v2 + 8))(v7, v1);
  v18 = v23;
  v19 = sub_20C137CB4();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  v19(sub_20B5DF6DC, v20);

  (*(v24 + 8))(v11, v18);
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_20BC4D8C8(uint64_t a1)
{
  v22[2] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v9 = *(v8 - 8);
  v23 = v8;
  v24 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = v22 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B70);
  sub_20C133AA4();
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v12 = [objc_opt_self() mainScreen];
  [v12 bounds];

  sub_20C138B14();
  v13 = swift_allocObject();
  v14 = v22[1];
  *(v13 + 16) = sub_20BC4F13C;
  *(v13 + 24) = v14;
  (*(v2 + 16))(v4, v7, v1);
  v15 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v16 = swift_allocObject();
  (*(v2 + 32))(v16 + v15, v4, v1);
  v17 = (v16 + ((v3 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = sub_20BB41370;
  v17[1] = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  sub_20C137C94();
  (*(v2 + 8))(v7, v1);
  v18 = v23;
  v19 = sub_20C137CB4();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  v19(sub_20B5DF6DC, v20);

  (*(v24 + 8))(v11, v18);
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_20BC4DC68(uint64_t a1)
{
  v22[2] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v9 = *(v8 - 8);
  v23 = v8;
  v24 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = v22 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B70);
  sub_20C133AA4();
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v12 = [objc_opt_self() mainScreen];
  [v12 bounds];

  sub_20C138B14();
  v13 = swift_allocObject();
  v14 = v22[1];
  *(v13 + 16) = sub_20BC4EF18;
  *(v13 + 24) = v14;
  (*(v2 + 16))(v4, v7, v1);
  v15 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v16 = swift_allocObject();
  (*(v2 + 32))(v16 + v15, v4, v1);
  v17 = (v16 + ((v3 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = sub_20BAC2FC0;
  v17[1] = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  sub_20C137C94();
  (*(v2 + 8))(v7, v1);
  v18 = v23;
  v19 = sub_20C137CB4();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  v19(sub_20B52347C, v20);

  (*(v24 + 8))(v11, v18);
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_20BC4E008(uint64_t a1)
{
  v22[2] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v9 = *(v8 - 8);
  v23 = v8;
  v24 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = v22 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B70);
  sub_20C133AA4();
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v12 = [objc_opt_self() mainScreen];
  [v12 bounds];

  sub_20C138B14();
  v13 = swift_allocObject();
  v14 = v22[1];
  *(v13 + 16) = sub_20BC4F1F8;
  *(v13 + 24) = v14;
  (*(v2 + 16))(v4, v7, v1);
  v15 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v16 = swift_allocObject();
  (*(v2 + 32))(v16 + v15, v4, v1);
  v17 = (v16 + ((v3 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = sub_20BB41370;
  v17[1] = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  sub_20C137C94();
  (*(v2 + 8))(v7, v1);
  v18 = v23;
  v19 = sub_20C137CB4();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  v19(sub_20B5DF6DC, v20);

  (*(v24 + 8))(v11, v18);
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

BOOL sub_20BC4E3A8(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v9 = a2 + *a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    v15[3] = a4(0);
    v15[4] = a5;
    v15[0] = a2;
    v13 = *(v11 + 8);

    v13(v15, a1, ObjectType, v11);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  return Strong == 0;
}

BOOL sub_20BC4E47C(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    v9[3] = type metadata accessor for TVCatalogEditorialCollectionDetailPageDataProvider();
    v9[4] = &off_2822D8488;
    v9[0] = a2;
    v7 = *(v5 + 8);

    v7(v9, a1, ObjectType, v5);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  return Strong == 0;
}

BOOL sub_20BC4E544(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = a2[5];
    ObjectType = swift_getObjectType();
    v10[3] = v4;
    v10[4] = &off_2822EA028;
    v10[0] = a2;
    v8 = *(v6 + 8);

    v8(v10, a1, ObjectType, v6);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return Strong == 0;
}

uint64_t sub_20BC4E62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v63 = a1;
  v12 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v12 - 8);
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 424) = 0;
  *(v5 + 432) = 0;
  *(v5 + 440) = 0;
  v13 = OBJC_IVAR____TtC9SeymourUI50TVCatalogEditorialCollectionDetailPageDataProvider_editorialCollectionDetail;
  v14 = sub_20C1377C4();
  (*(*(v14 - 8) + 56))(v6 + v13, 1, 1, v14);
  v15 = MEMORY[0x277D84FA0];
  *(v6 + OBJC_IVAR____TtC9SeymourUI50TVCatalogEditorialCollectionDetailPageDataProvider_assetBundles) = MEMORY[0x277D84FA0];
  *(v6 + OBJC_IVAR____TtC9SeymourUI50TVCatalogEditorialCollectionDetailPageDataProvider_bookmarks) = v15;
  *(v6 + OBJC_IVAR____TtC9SeymourUI50TVCatalogEditorialCollectionDetailPageDataProvider_playlists) = v15;
  *(v6 + OBJC_IVAR____TtC9SeymourUI50TVCatalogEditorialCollectionDetailPageDataProvider_resumableSessions) = v15;
  *(v6 + OBJC_IVAR____TtC9SeymourUI50TVCatalogEditorialCollectionDetailPageDataProvider_upNextQueueItems) = MEMORY[0x277D84F90];
  v16 = OBJC_IVAR____TtC9SeymourUI50TVCatalogEditorialCollectionDetailPageDataProvider_configuration;
  v17 = sub_20C134104();
  (*(*(v17 - 8) + 56))(v6 + v16, 1, 1, v17);
  v18 = (v6 + OBJC_IVAR____TtC9SeymourUI50TVCatalogEditorialCollectionDetailPageDataProvider_editorialCollectionIdentifier);
  *v18 = a1;
  v18[1] = a2;
  v62 = a2;
  *(v6 + 256) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A40);
  sub_20C133AA4();
  sub_20B51C710(&v74, v6 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769590);
  sub_20C133AA4();
  sub_20B51C710(&v74, v6 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50);
  sub_20C133AA4();
  sub_20B51C710(&v74, v6 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51C710(&v74, v6 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60);
  sub_20C133AA4();
  sub_20B51C710(&v74, v6 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v6 + 264) = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70);
  sub_20C133AA4();
  sub_20B51C710(&v74, v6 + 280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(&v74, v6 + 320);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v6 + 360) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80);
  sub_20C133AA4();
  sub_20B51C710(&v74, v6 + 368);
  *(v6 + 408) = a4;
  *(v6 + 416) = a5;
  v61 = sub_20C1380F4();
  v19 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v20 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v19 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  sub_20C13C734();
  v21 = sub_20C13C724();
  v22 = type metadata accessor for CatalogPageImpressionTracker();
  v23 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v24 = MEMORY[0x277D221C0];
  v23[2] = sub_20C13C6D4();
  v23[3] = v21;
  v23[4] = v24;
  v75 = v22;
  v25 = sub_20BC4F048(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker);
  v76 = v25;
  *&v74 = v23;
  v26 = type metadata accessor for MetricLocationStore();
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D84F98];
  *(v27 + 16) = MEMORY[0x277D84F90];
  *(v27 + 24) = v28;
  v29 = __swift_mutable_project_boxed_opaque_existential_1(&v74, v22);
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v60[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v33 + 16))(v32, v30);
  v34 = *v32;
  v73[3] = v22;
  v73[4] = v25;
  v73[0] = v34;
  v72[3] = v26;
  v72[4] = &off_2822B6968;
  v72[0] = v27;
  sub_20B51CC64(v73, v71);
  sub_20B51CC64(v72, v70);
  v35 = __swift_mutable_project_boxed_opaque_existential_1(v71, v71[3]);
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v60[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v39 + 16))(v38, v36);
  v40 = __swift_mutable_project_boxed_opaque_existential_1(v70, v70[3]);
  v41 = MEMORY[0x28223BE20](v40);
  v43 = &v60[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v44 + 16))(v43, v41);
  v45 = *v38;
  v46 = *v43;
  v68 = v22;
  v69 = v25;
  v66 = &off_2822B6968;
  v67[0] = v45;
  v65 = v26;
  v64[0] = v46;
  v47 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v48 = __swift_mutable_project_boxed_opaque_existential_1(v67, v68);
  v49 = MEMORY[0x28223BE20](v48);
  v51 = &v60[-((v50 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v52 + 16))(v51, v49);
  v53 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
  v54 = MEMORY[0x28223BE20](v53);
  v56 = &v60[-((v55 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v57 + 16))(v56, v54);
  v58 = sub_20BE3AA74(v63, v62, MEMORY[0x277D84F90], v61, v20, *v51, *v56, 2, v47);
  __swift_destroy_boxed_opaque_existential_1(v72);
  __swift_destroy_boxed_opaque_existential_1(v73);
  __swift_destroy_boxed_opaque_existential_1(v64);
  __swift_destroy_boxed_opaque_existential_1(v67);
  __swift_destroy_boxed_opaque_existential_1(v70);
  __swift_destroy_boxed_opaque_existential_1(v71);
  __swift_destroy_boxed_opaque_existential_1(&v74);
  *(v6 + 48) = v58;
  sub_20BE12AD0();
  return v6;
}

uint64_t sub_20BC4EF6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764970);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BC4F048(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_20BC4F1B4@<W0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = sub_20BC4E3A8(*a1, v5, a2, a3, a4);
  if (!v6)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_20BC4F224@<X0>(void *a1@<X0>, uint64_t (*a2)(void, uint64_t)@<X1>, _BYTE *a3@<X8>)
{
  result = a2(*a1, v3);
  if (!v4)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t sub_20BC4F264(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

id sub_20BC4F340(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = v4;
  v61 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v9 - 8);
  v63 = &v57 - v10;
  v11 = sub_20C132C14();
  v66 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v62 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v13 - 8);
  v60 = &v57 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v57 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v57 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v57 - v22;
  v59 = sub_20C1333A4();
  v24 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v26 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C138F44();
  sub_20C133AA4();
  *&v5[OBJC_IVAR____TtC9SeymourUI35MarketingBannerPlayerViewController_audioSessionCoordinator] = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  v65 = a1;
  sub_20C133AA4();
  *&v5[OBJC_IVAR____TtC9SeymourUI35MarketingBannerPlayerViewController_eventHub] = v68;
  v27 = &v5[OBJC_IVAR____TtC9SeymourUI35MarketingBannerPlayerViewController_identifier];
  *v27 = a2;
  *(v27 + 1) = a3;
  v28 = *MEMORY[0x277D517B0];
  v29 = sub_20C1352F4();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v23, v28, v29);
  (*(v30 + 56))(v23, 0, 1, v29);
  v31 = v66;
  v32 = v61;
  v58 = *(v66 + 16);
  v58(v20, v61, v11);
  v33 = *(v31 + 56);
  v64 = v11;
  v33(v20, 0, 1, v11);
  v34 = sub_20C135ED4();
  (*(*(v34 - 8) + 56))(v17, 1, 1, v34);
  v35 = sub_20C136914();
  (*(*(v35 - 8) + 56))(v60, 1, 1, v35);
  sub_20C133384();
  (*(v24 + 32))(&v5[OBJC_IVAR____TtC9SeymourUI35MarketingBannerPlayerViewController_metricPage], v26, v59);
  v36 = v32;
  v37 = sub_20BD09848();
  if (!v38)
  {
    v37 = sub_20BD09C88();
    if (!v38)
    {
      v37 = sub_20C132B54();
    }
  }

  v39 = &v5[OBJC_IVAR____TtC9SeymourUI35MarketingBannerPlayerViewController_videoID];
  *v39 = v37;
  v39[1] = v38;
  v40 = type metadata accessor for MarketingBannerPlayerViewController();
  v67.receiver = v5;
  v67.super_class = v40;
  v41 = objc_msgSendSuper2(&v67, sel_initWithNibName_bundle_, 0, 0);
  v42 = v62;
  v43 = v64;
  v58(v62, v32, v64);
  v44 = objc_allocWithZone(MEMORY[0x277CE6650]);
  v45 = v41;
  v46 = sub_20C132B64();
  v47 = [v44 initWithURL:v46 options:0];

  v48 = *(v66 + 8);
  v48(v42, v43);
  v49 = [objc_allocWithZone(MEMORY[0x277CE65B0]) initWithAsset_];
  [v45 setAllowsPictureInPicturePlayback_];
  v50 = [objc_allocWithZone(MEMORY[0x277CE6598]) initWithPlayerItem_];
  [v45 setPlayer_];

  [v45 setVideoGravity_];
  v51 = v63;
  sub_20C13CDC4();
  v52 = sub_20C13CDF4();
  (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
  sub_20C13CDA4();
  v53 = sub_20C13CD94();
  v54 = swift_allocObject();
  v55 = MEMORY[0x277D85700];
  v54[2] = v53;
  v54[3] = v55;
  v54[4] = v45;
  sub_20B6383D0(0, 0, v51, &unk_20C174708, v54);

  v48(v36, v43);
  return v45;
}

uint64_t sub_20BC4FA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_20C13CDA4();
  v4[3] = sub_20C13CD94();
  v6 = sub_20C13CD24();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_20BC4FB2C, v6, v5);
}

uint64_t sub_20BC4FB2C()
{
  *(v0 + 48) = *(*(v0 + 16) + OBJC_IVAR____TtC9SeymourUI35MarketingBannerPlayerViewController_audioSessionCoordinator);
  sub_20C138F44();
  sub_20BC50FD8(&qword_27C76C6B0, MEMORY[0x277D541D0]);
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BC4FBF4, v2, v1);
}

uint64_t sub_20BC4FBF4()
{
  sub_20C138F14();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_20B694150, v1, v2);
}

uint64_t sub_20BC4FCB4()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for MarketingBannerPlayerViewController();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v1 = [v0 player];
  [v1 play];

  v2 = [objc_opt_self() defaultCenter];
  v3 = sub_20C13C914();
  v4 = [v0 player];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 currentItem];

    if (v6)
    {
      v8 = v6;
      sub_20BC40208();
      v6 = sub_20C13DFD4();
    }
  }

  else
  {
    v6 = 0;
  }

  [v2 addObserver:v0 selector:sel_playerFinished_ name:v3 object:v6];

  return swift_unknownObjectRelease();
}

void sub_20BC4FE58(char a1)
{
  v3 = sub_20C1391E4();
  v61 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v60 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C134C44();
  MEMORY[0x28223BE20](v5 - 8);
  v59 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70);
  MEMORY[0x28223BE20](v7 - 8);
  v58 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0);
  MEMORY[0x28223BE20](v9 - 8);
  v57 = &v51 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80);
  MEMORY[0x28223BE20](v11 - 8);
  v56 = &v51 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900);
  MEMORY[0x28223BE20](v13 - 8);
  v53 = &v51 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v51 - v16;
  v18 = sub_20C135D24();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = (&v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_20C134F74();
  v54 = *(v22 - 8);
  v55 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v51 - v26;
  v28 = type metadata accessor for MarketingBannerPlayerViewController();
  v62.receiver = v1;
  v62.super_class = v28;
  objc_msgSendSuper2(&v62, sel_viewWillDisappear_, a1 & 1);
  v29 = [v1 player];
  if (v29)
  {
    v30 = v29;
    v31 = [v29 currentItem];

    if (v31)
    {
      [v31 currentTime];
      sub_20C13D524();
      v33 = v32;
      [v31 duration];
      sub_20C13D524();
      v34 = *&v1[OBJC_IVAR____TtC9SeymourUI35MarketingBannerPlayerViewController_videoID + 8];
      *v21 = *&v1[OBJC_IVAR____TtC9SeymourUI35MarketingBannerPlayerViewController_videoID];
      v21[1] = v34;
      v21[2] = v33;
      v21[3] = v35;
      (*(v19 + 104))(v21, *MEMORY[0x277D52130], v18);
      v36 = OBJC_IVAR____TtC9SeymourUI35MarketingBannerPlayerViewController_metricPage;
      v37 = sub_20C1333A4();
      v38 = *(v37 - 8);
      v52 = v3;
      v39 = v38;
      (*(v38 + 16))(v17, &v1[v36], v37);
      (*(v39 + 56))(v17, 0, 1, v37);
      v40 = sub_20C135664();
      v41 = *(*(v40 - 8) + 56);
      v51 = v31;
      v41(v53, 1, 1, v40);
      v42 = sub_20C135674();
      (*(*(v42 - 8) + 56))(v56, 1, 1, v42);

      v43 = v57;
      sub_20C134F94();
      v44 = sub_20C134FB4();
      (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0);
      (*(*(v45 - 8) + 56))(v58, 1, 1, v45);
      v46 = sub_20C135F14();
      (*(*(v46 - 8) + 56))(v59, 1, 1, v46);
      sub_20C134F54();
      v48 = v54;
      v47 = v55;
      (*(v54 + 16))(v24, v27, v55);
      v49 = v60;
      sub_20C1391F4();
      swift_getObjectType();
      sub_20BC50FD8(&qword_281103B30, MEMORY[0x277D542C0]);
      v50 = v52;
      sub_20C13A764();

      (*(v61 + 8))(v49, v50);
      (*(v48 + 8))(v27, v47);
    }
  }
}

void sub_20BC50640(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v24 - v4;
  v6 = type metadata accessor for MarketingBannerPlayerViewController();
  v25.receiver = v1;
  v25.super_class = v6;
  objc_msgSendSuper2(&v25, sel_viewDidDisappear_, a1 & 1);
  v7 = [v1 player];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 currentItem];

    if (v9)
    {
      [v9 currentTime];

      sub_20C13D544();
      v11 = v10;
      v12 = [v1 player];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 currentItem];

        if (v14)
        {
          [v14 duration];

          sub_20C13D544();
          v16 = v15;
          sub_20C13CDC4();
          v17 = sub_20C13CDF4();
          (*(*(v17 - 8) + 56))(v5, 0, 1, v17);
          sub_20C13CDA4();
          v18 = v1;
          v19 = sub_20C13CD94();
          v20 = swift_allocObject();
          v21 = MEMORY[0x277D85700];
          v20[2] = v19;
          v20[3] = v21;
          v20[4] = v18;
          sub_20B6383D0(0, 0, v5, &unk_20C174718, v20);

          swift_getObjectType();
          v22 = *&v18[OBJC_IVAR____TtC9SeymourUI35MarketingBannerPlayerViewController_identifier];
          v23 = *&v18[OBJC_IVAR____TtC9SeymourUI35MarketingBannerPlayerViewController_identifier + 8];
          v24[0] = v22;
          v24[1] = v23;
          v24[2] = v11;
          v24[3] = v16;
          sub_20B880EBC();

          sub_20C13A764();
        }
      }
    }
  }
}

uint64_t sub_20BC508F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_20C13CDA4();
  v4[3] = sub_20C13CD94();
  v6 = sub_20C13CD24();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_20BC5098C, v6, v5);
}

uint64_t sub_20BC5098C()
{
  *(v0 + 48) = *(*(v0 + 16) + OBJC_IVAR____TtC9SeymourUI35MarketingBannerPlayerViewController_audioSessionCoordinator);
  sub_20C138F44();
  sub_20BC50FD8(&qword_27C76C6B0, MEMORY[0x277D541D0]);
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BC50A54, v2, v1);
}

uint64_t sub_20BC50A54()
{
  sub_20C138F04();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_20B8E0958, v1, v2);
}

id sub_20BC50C84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MarketingBannerPlayerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MarketingBannerPlayerViewController()
{
  result = qword_27C76C7F8;
  if (!qword_27C76C7F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BC50DC4()
{
  result = sub_20C1333A4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_20BC50E70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20BC4FA94(a1, v4, v5, v6);
}

uint64_t sub_20BC50F24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BC508F4(a1, v4, v5, v6);
}

uint64_t sub_20BC50FD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BC51020()
{
  result = sub_20C1323A4();
  dword_27C79BD68 = result;
  byte_27C79BD6C = BYTE4(result);
  dword_27C79BD70 = v1;
  byte_27C79BD74 = v2;
  return result;
}

uint64_t sub_20BC51060()
{
  v1 = v0;
  v110 = sub_20C1321D4();
  v108 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v107 = &v95 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F98);
  v113 = *(v3 - 8);
  v114 = v3;
  MEMORY[0x28223BE20](v3);
  v109 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v111 = &v95 - v6;
  MEMORY[0x28223BE20](v7);
  v112 = &v95 - v8;
  v118 = sub_20C132364();
  v123 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v116 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v101 = &v95 - v11;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F90);
  v122 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v105 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v106 = &v95 - v14;
  MEMORY[0x28223BE20](v15);
  v102 = &v95 - v16;
  MEMORY[0x28223BE20](v17);
  v103 = &v95 - v18;
  v99 = sub_20C132144();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v100 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_20C132154();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v97 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_20C132EE4();
  v21 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v23 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v95 - v26;
  v115 = sub_20C132254();
  v28 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v30 = &v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  v121 = v1;
  v31 = (v1 + OBJC_IVAR____TtC9SeymourUI30RangedCoachingEventNodeBuilder_containerBuilder);
  if (qword_27C760748 != -1)
  {
    swift_once();
  }

  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FC0) + 48);
  v33 = *MEMORY[0x277CE9C90];
  v34 = sub_20C132234();
  (*(*(v34 - 8) + 104))(v30, v33, v34);
  *&v30[v32] = 0;
  (*(v28 + 104))(v30, *MEMORY[0x277CE9CB8], v115);
  v31[1] = 2;
  sub_20C132ED4();
  sub_20C132104();
  v35 = *(v21 + 8);
  v104 = v23;
  v119 = v35;
  v120 = v21 + 8;
  v35(v23, v124);
  v36 = type metadata accessor for ContainerNodeBuilder();
  sub_20C131F24();
  (*(v25 + 8))(v27, v24);
  *v31 = 1;
  v37 = sub_20C131F44();
  v38 = &v31[v36[7]];
  *v38 = v37;
  v38[8] = v39;
  v40 = sub_20C131FD4();
  v41 = &v31[v36[8]];
  *v41 = v40;
  v41[8] = v42;
  v43 = sub_20C131FE4();
  v44 = &v31[v36[9]];
  *v44 = v43;
  *(v44 + 1) = v45;
  v44[20] = v46;
  *(v44 + 4) = v47;
  v44[21] = v48;
  v49 = sub_20C132384();
  v50 = &v31[v36[10]];
  *v50 = v49 & 0xFFFFFFFFFFLL;
  v50[12] = v51;
  *(v50 + 2) = v52;
  v50[13] = 0;
  v53 = sub_20C132004();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  (*(v28 + 8))(v30, v115);
  v60 = &v31[v36[11]];
  *v60 = v53;
  *(v60 + 1) = v55;
  *(v60 + 2) = v57;
  v60[24] = v59;
  v61 = OBJC_IVAR____TtC9SeymourUI30RangedCoachingEventNodeBuilder_plusAsset;
  v62 = [objc_opt_self() whiteColor];
  (*(v95 + 104))(v97, *MEMORY[0x277CE9BD8], v96);
  (*(v98 + 104))(v100, *MEMORY[0x277CE9BC8], v99);
  v63 = swift_allocObject();
  *(v63 + 16) = 0x7472616568;
  *(v63 + 24) = 0xE500000000000000;
  *(v63 + 40) = 0;
  *(v63 + 48) = 0;
  *(v63 + 32) = v62;
  *(v63 + 56) = 1;
  *(v63 + 64) = 0x7472616568;
  *(v63 + 72) = 0xE500000000000000;
  v64 = v121;
  v115 = v61;
  sub_20C132124();
  v65 = (v64 + OBJC_IVAR____TtC9SeymourUI30RangedCoachingEventNodeBuilder_valueString);
  *v65 = 0;
  v65[1] = 0;
  v66 = (v64 + OBJC_IVAR____TtC9SeymourUI30RangedCoachingEventNodeBuilder_unitString);
  *v66 = 0;
  v66[1] = 0;
  *(v64 + OBJC_IVAR____TtC9SeymourUI30RangedCoachingEventNodeBuilder_showPlus) = 0;
  sub_20BA6BBC8(3);
  v67 = v101;
  sub_20C132374();
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.921568627 alpha:1.0];
  sub_20C1323E4();
  if (v68 == -1)
  {
    sub_20C1323D4();
  }

  v69 = v104;
  sub_20C132ED4();
  v70 = v102;
  sub_20C1320B4();
  v119(v69, v124);
  v71 = *(v123 + 8);
  v123 += 8;
  v71(v67, v118);
  sub_20C1323A4();
  v72 = v103;
  v73 = v117;
  sub_20C131FF4();
  v74 = v122;
  v75 = *(v122 + 8);
  v75(v70, v73);
  v76 = *(v74 + 32);
  v122 = v74 + 32;
  v76(v121 + OBJC_IVAR____TtC9SeymourUI30RangedCoachingEventNodeBuilder_valueNode, v72, v73);
  sub_20BA6C4EC(3);
  sub_20C132374();
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.921568627 alpha:1.0];
  sub_20C1323E4();
  if (v77 == -1)
  {
    sub_20C1323D4();
  }

  sub_20C132ED4();
  v78 = v105;
  v79 = v69;
  v80 = v116;
  sub_20C1320B4();
  v119(v79, v124);
  v71(v80, v118);
  sub_20C1323A4();
  v81 = v106;
  v82 = v117;
  sub_20C131FF4();
  v75(v78, v82);
  v83 = v121;
  v76(v121 + OBJC_IVAR____TtC9SeymourUI30RangedCoachingEventNodeBuilder_unitNode, v81, v82);
  v84 = sub_20C132164();
  v85 = v107;
  (*(*(v84 - 8) + 16))(v107, v83 + v115, v84);
  v86 = v108;
  v87 = v110;
  (*(v108 + 104))(v85, *MEMORY[0x277CE9C40], v110);
  sub_20C1323D4();
  sub_20C132ED4();
  v88 = v109;
  sub_20C1320E4();
  v119(v79, v124);
  (*(v86 + 8))(v85, v87);
  if (qword_27C760A30 != -1)
  {
    swift_once();
  }

  v89 = v111;
  v90 = v114;
  sub_20C131FF4();
  v91 = v113;
  v92 = *(v113 + 8);
  v92(v88, v90);
  sub_20C132504();
  v93 = v112;
  sub_20C131F64();
  v92(v89, v90);
  (*(v91 + 32))(v83 + OBJC_IVAR____TtC9SeymourUI30RangedCoachingEventNodeBuilder_plusNode, v93, v90);
  return v83;
}

uint64_t sub_20BC51E08()
{
  sub_20B583E6C(v0 + 16);
  sub_20B593250(v0 + OBJC_IVAR____TtC9SeymourUI30RangedCoachingEventNodeBuilder_containerBuilder);
  v1 = OBJC_IVAR____TtC9SeymourUI30RangedCoachingEventNodeBuilder_plusAsset;
  v2 = sub_20C132164();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI30RangedCoachingEventNodeBuilder_valueNode;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F90);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC9SeymourUI30RangedCoachingEventNodeBuilder_unitNode, v4);
  v6 = OBJC_IVAR____TtC9SeymourUI30RangedCoachingEventNodeBuilder_plusNode;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F98);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RangedCoachingEventNodeBuilder()
{
  result = qword_27C76C808;
  if (!qword_27C76C808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BC52000()
{
  type metadata accessor for ContainerNodeBuilder();
  if (v0 <= 0x3F)
  {
    sub_20C132164();
    if (v1 <= 0x3F)
    {
      sub_20B592C74();
      if (v2 <= 0x3F)
      {
        sub_20B592D08();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_20BC52160@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v61 = a1;
  v3 = type metadata accessor for ContainerNodeBuilder();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8);
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x28223BE20](v6);
  v58 = &v52 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F90);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v52 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - v16;
  v19 = MEMORY[0x28223BE20](v18);
  v63 = &v52 - v20;
  v64 = *(v9 + 16);
  v64(v17, v2 + OBJC_IVAR____TtC9SeymourUI30RangedCoachingEventNodeBuilder_valueNode, v8, v19);

  sub_20C132074();

  v21 = *(v9 + 8);
  v21(v17, v8);
  (v64)(v11, v2 + OBJC_IVAR____TtC9SeymourUI30RangedCoachingEventNodeBuilder_unitNode, v8);
  v62 = v9 + 16;

  sub_20C132074();

  v56 = v21;
  v57 = v9 + 8;
  v21(v11, v8);
  v22 = *(v2 + OBJC_IVAR____TtC9SeymourUI30RangedCoachingEventNodeBuilder_showPlus);
  v23 = OBJC_IVAR____TtC9SeymourUI30RangedCoachingEventNodeBuilder_containerBuilder;
  v54 = v5;
  v55 = v14;
  if (v22 == 1)
  {
    swift_beginAccess();
    sub_20B6B5ADC(v2 + v23, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F88);
    v24 = sub_20C132264();
    v25 = *(v24 - 8);
    v26 = *(v25 + 72);
    v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v53 = 2 * v26;
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_20C1517D0;
    v29 = v28 + v27;
    v30 = v63;
    (v64)(v28 + v27, v63, v8);
    LODWORD(v52) = *MEMORY[0x277CE9CD8];
    v31 = *(v25 + 104);
    v31(v29);
    v32 = OBJC_IVAR____TtC9SeymourUI30RangedCoachingEventNodeBuilder_plusNode;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F98);
    (*(*(v33 - 8) + 16))(v29 + v26, v2 + v32, v33);
    (v31)(v29 + v26, *MEMORY[0x277CE9CE0], v24);
    v34 = v53;
    v35 = v55;
    (v64)(v29 + v53, v55, v8);
    (v31)(v29 + v34, v52, v24);
    v36 = v35;
  }

  else
  {
    swift_beginAccess();
    sub_20B6B5ADC(v2 + v23, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F88);
    v37 = sub_20C132264();
    v52 = v37;
    v53 = v8;
    v38 = *(v37 - 8);
    v39 = *(v38 + 72);
    v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_20C14F320;
    v42 = v41 + v40;
    v43 = v63;
    v44 = v64;
    (v64)(v41 + v40, v63, v53);
    v45 = *MEMORY[0x277CE9CD8];
    v46 = *(v38 + 104);
    v46(v42, v45, v37);
    v36 = v55;
    v44(v42 + v39, v55, v53);
    v30 = v43;
    v46(v42 + v39, v45, v52);
    v8 = v53;
  }

  v47 = v58;
  v48 = v54;
  sub_20B7E27F8(v58);

  sub_20B593250(v48);
  sub_20C1323A4();
  v49 = v60;
  sub_20C131FF4();
  (*(v59 + 8))(v47, v49);
  v50 = v56;
  v56(v36, v8);
  return v50(v30, v8);
}

uint64_t sub_20BC5281C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FA0);
  v1 = sub_20C132164();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20C14F980;
  (*(v2 + 16))(v4 + v3, v0 + OBJC_IVAR____TtC9SeymourUI30RangedCoachingEventNodeBuilder_plusAsset, v1);
  return v4;
}

uint64_t sub_20BC52908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (v4 + OBJC_IVAR____TtC9SeymourUI30RangedCoachingEventNodeBuilder_valueString);
  *v7 = a1;
  v7[1] = a2;

  v8 = (v4 + OBJC_IVAR____TtC9SeymourUI30RangedCoachingEventNodeBuilder_unitString);
  *v8 = a3;
  v8[1] = a4;

  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 8);

    v11(ObjectType, v9);

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

unint64_t sub_20BC52A48()
{
  result = qword_27C76C818;
  if (!qword_27C76C818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76C818);
  }

  return result;
}

uint64_t sub_20BC52A9C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_20C1341A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A188);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = sub_20C1364A4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 16);
  v19 = a1;
  v15(v12, a1, v13);
  (*(v14 + 56))(v12, 0, 1, v13);
  v16 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_alternatives;
  swift_beginAccess();
  sub_20B5DF2D4(v12, v1 + v16, &qword_27C76A188);
  swift_endAccess();
  v17 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_selectedDuration;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v17, v5, &qword_27C7627B8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_20B520158(v5, &qword_27C7627B8);
  }

  (*(v7 + 32))(v9, v5, v6);
  sub_20BC53220();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_20BC52D6C()
{
  v1 = sub_20C13C554();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A188);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v39 - v9;
  v11 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_alternatives;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v11, v10, &qword_27C76A188);
  v12 = sub_20C1364A4();
  LODWORD(v11) = (*(*(v12 - 8) + 48))(v10, 1, v12);
  result = sub_20B520158(v10, &qword_27C76A188);
  if (v11 != 1)
  {
    v14 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_selectedDuration;
    swift_beginAccess();
    sub_20B52F9E8(v0 + v14, v7, &qword_27C7627B8);
    v15 = sub_20C1341A4();
    if ((*(*(v15 - 8) + 48))(v7, 1, v15) == 1)
    {
      return sub_20B520158(v7, &qword_27C7627B8);
    }

    sub_20B520158(v7, &qword_27C7627B8);
    v16 = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_lazyLockupFetcher);

    v18 = sub_20C02F3E0(v17, v16, 0, 0);

    v40 = 0uLL;
    LOBYTE(v41) = 1;
    *(&v41 + 1) = 0;
    *&v42 = 0;
    WORD4(v42) = 128;
    v43 = 0uLL;
    *&v44 = 0xD00000000000001FLL;
    *(&v44 + 1) = 0x800000020C1AD4E0;
    v45 = 0uLL;
    LOBYTE(v46) = 1;
    *(&v46 + 1) = v18;
    *&v47[0] = MEMORY[0x277D84F90];
    *(v47 + 8) = 0u;
    *(&v47[1] + 8) = 0u;
    *(&v47[2] + 1) = 0;
    v48 = 2;
    nullsub_1(&v40);
    v19 = v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_row;
    v20 = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_row + 144);
    v49[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_row + 128);
    v49[9] = v20;
    v50 = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_row + 160);
    v21 = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_row + 80);
    v49[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_row + 64);
    v49[5] = v21;
    v22 = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_row + 112);
    v49[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_row + 96);
    v49[7] = v22;
    v23 = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_row + 16);
    v49[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_row);
    v49[1] = v23;
    v24 = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_row + 48);
    v49[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_row + 32);
    v49[3] = v24;
    v25 = v47[2];
    *(v19 + 128) = v47[1];
    *(v19 + 144) = v25;
    *(v19 + 160) = v48;
    v26 = v45;
    *(v19 + 64) = v44;
    *(v19 + 80) = v26;
    v27 = v47[0];
    *(v19 + 96) = v46;
    *(v19 + 112) = v27;
    v28 = v41;
    *v19 = v40;
    *(v19 + 16) = v28;
    v29 = v43;
    *(v19 + 32) = v42;
    *(v19 + 48) = v29;
    sub_20B520158(v49, &qword_27C762340);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
      {
        v30 = result;
        v31 = sub_20B61DDD8(v0, result);
        if (v32)
        {
          v34 = v31;
          v35 = v32;
          v36 = v33;
          v37 = v0;
          sub_20B5E2E18();
          *v4 = sub_20C13D374();
          (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
          v38 = sub_20C13C584();
          result = (*(v2 + 8))(v4, v1);
          if ((v38 & 1) == 0)
          {
            __break(1u);
            return result;
          }

          sub_20B621574(v34, v35, v36, v37, 1, v30);
        }

        else
        {
          sub_20C0C2D50(0);
        }
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_20BC53220()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v54 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v55 = v48 - v6;
  v53 = v7;
  MEMORY[0x28223BE20](v8);
  v10 = v48 - v9;
  v11 = sub_20C1361E4();
  v12 = *(v11 - 8);
  v60 = v11;
  v61 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_20C136594();
  v15 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v17 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20C136494();
  result = sub_20C134194();
  v21 = v20 / 60.0;
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  if (*(v18 + 16) && (v22 = sub_20B65AFAC(v21), (v23 & 1) != 0))
  {
    v52 = v10;
    v24 = *(*(v18 + 56) + 8 * v22);

    v25 = *(v24 + 16);
    if (v25)
    {
      v49 = v0;
      v50 = v3;
      v51 = v2;
      v62 = MEMORY[0x277D84F90];
      sub_20BB5D604(0, v25, 0);
      v26 = v62;
      v27 = *(v61 + 16);
      v28 = *(v61 + 80);
      v48[1] = v24;
      v29 = v24 + ((v28 + 32) & ~v28);
      v57 = *(v61 + 72);
      v58 = v27;
      v61 += 16;
      v30 = (v61 - 8);
      v56 = v15 + 32;
      do
      {
        v31 = v60;
        v58(v14, v29, v60);
        sub_20C1361A4();
        sub_20C136554();
        (*v30)(v14, v31);
        v62 = v26;
        v33 = *(v26 + 16);
        v32 = *(v26 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_20BB5D604(v32 > 1, v33 + 1, 1);
          v26 = v62;
        }

        *(v26 + 16) = v33 + 1;
        (*(v15 + 32))(v26 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v33, v17, v59);
        v29 += v57;
        --v25;
      }

      while (v25);

      v3 = v50;
      v2 = v51;
      v10 = v52;
      v1 = v49;
      v34 = *(v26 + 16);
      if (v34)
      {
        goto LABEL_15;
      }
    }

    v26 = MEMORY[0x277D84F90];
    v10 = v52;
    v34 = *(MEMORY[0x277D84F90] + 16);
    if (!v34)
    {
    }
  }

  else
  {

    v26 = MEMORY[0x277D84F90];
    v34 = *(MEMORY[0x277D84F90] + 16);
    if (!v34)
    {
    }
  }

LABEL_15:
  if (v34 >= 4)
  {
    sub_20BCC809C(v26, v26 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), 0, 7uLL);
    v36 = v35;

    v26 = v36;
  }

  v37 = v55;
  sub_20C02BC6C(v26, v55);

  v38 = swift_allocObject();
  *(v38 + 16) = sub_20BC56700;
  *(v38 + 24) = v1;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_20B5DF3B8;
  *(v39 + 24) = v38;
  v40 = v54;
  (*(v3 + 16))(v54, v37, v2);
  v41 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v42 = (v53 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  (*(v3 + 32))(v43 + v41, v40, v2);
  v44 = (v43 + v42);
  *v44 = sub_20B5DF3D4;
  v44[1] = v39;

  sub_20C137C94();
  v45 = *(v3 + 8);
  v45(v37, v2);
  v46 = sub_20C137CB4();
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  *(v47 + 24) = 0;
  v46(sub_20B5DF6DC, v47);

  return (v45)(v10, v2);
}

uint64_t sub_20BC53868(uint64_t a1)
{
  v2 = sub_20C13C4B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13C4F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B5E2E18();
  v10 = sub_20C13D374();
  aBlock[4] = sub_20BC56708;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_112;
  v11 = _Block_copy(aBlock);

  sub_20C13C4D4();
  v13[1] = MEMORY[0x277D84F90];
  sub_20BC5670C(&qword_281103AB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B682EA8();
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v9, v5, v11);
  _Block_release(v11);

  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
}

uint64_t sub_20BC53B04()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_row + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_row + 128);
  v11[9] = v3;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_row + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_row + 64);
  v11[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_row + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_row + 96);
  v11[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_row + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_row);
  v11[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_row + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_row + 32);
  v11[3] = v7;
  sub_20B520158(v11, &qword_27C762340);
  swift_unknownObjectRelease();

  sub_20BC56564(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_swappableItem, type metadata accessor for WorkoutPlanSwappableItem);
  v8 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_workoutPlan;
  v9 = sub_20C133954();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_workoutPlanClient);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_alternatives, &qword_27C76A188);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_selectedDuration, &qword_27C7627B8);
  return v0;
}

uint64_t sub_20BC53CAC()
{
  sub_20BC53B04();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanAlternativePickerShelf()
{
  result = qword_27C76C860;
  if (!qword_27C76C860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BC53D58()
{
  sub_20C132EE4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WorkoutPlanSwappableItem();
    if (v1 <= 0x3F)
    {
      sub_20C133954();
      if (v2 <= 0x3F)
      {
        sub_20BC53F44(319, &qword_27C76C870, MEMORY[0x277D52A00]);
        if (v3 <= 0x3F)
        {
          sub_20BC53F44(319, &qword_27C765E88, MEMORY[0x277D50618]);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_20BC53F44(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20BC53F98(uint64_t a1, uint64_t a2)
{
  v2[23] = a1;
  v2[24] = a2;
  v3 = sub_20C1341A4();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A188);
  v2[28] = swift_task_alloc();
  v4 = sub_20C1364A4();
  v2[29] = v4;
  v2[30] = *(v4 - 8);
  v2[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BC54130, 0, 0);
}

uint64_t sub_20BC54130()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[33];
    v4 = v0[25];
    v5 = v0[26];
    (*(v5 + 16))(v3, v0[23], v4);
    (*(v5 + 56))(v3, 0, 1, v4);
    v6 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_selectedDuration;
    swift_beginAccess();
    sub_20B5DF2D4(v3, v2 + v6, &qword_27C7627B8);
    swift_endAccess();
  }

  swift_beginAccess();
  v7 = swift_weakLoadStrong();
  v8 = v0[29];
  v9 = v0[30];
  v10 = v0[28];
  if (!v7)
  {
    (*(v9 + 56))(v0[28], 1, 1, v0[29]);
    goto LABEL_12;
  }

  v11 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_alternatives;
  v12 = v7;
  swift_beginAccess();
  sub_20B52F9E8(v12 + v11, v10, &qword_27C76A188);

  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
LABEL_12:
    v22 = v0[28];
    v23 = &qword_27C76A188;
LABEL_15:
    sub_20B520158(v22, v23);
    goto LABEL_16;
  }

  (*(v0[30] + 32))(v0[31], v0[28], v0[29]);
  swift_beginAccess();
  v13 = swift_weakLoadStrong();
  v14 = v0[32];
  v15 = v0[25];
  v16 = v0[26];
  if (!v13)
  {
    (*(v16 + 56))(v0[32], 1, 1, v0[25]);
    goto LABEL_14;
  }

  v17 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_selectedDuration;
  v18 = v13;
  swift_beginAccess();
  sub_20B52F9E8(v18 + v17, v14, &qword_27C7627B8);

  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
LABEL_14:
    v24 = v0[32];
    (*(v0[30] + 8))(v0[31], v0[29]);
    v23 = &qword_27C7627B8;
    v22 = v24;
    goto LABEL_15;
  }

  (*(v0[26] + 32))(v0[27], v0[32], v0[25]);
  swift_beginAccess();
  v19 = swift_weakLoadStrong();
  v0[34] = v19;
  if (v19)
  {
    sub_20C13CDA4();
    v0[35] = sub_20C13CD94();
    v21 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20BC5453C, v21, v20);
  }

  v27 = v0[30];
  v26 = v0[31];
  v28 = v0[29];
  (*(v0[26] + 8))(v0[27], v0[25]);
  (*(v27 + 8))(v26, v28);
LABEL_16:

  v25 = v0[1];

  return v25();
}

uint64_t sub_20BC5453C()
{

  sub_20BC53220();

  return MEMORY[0x2822009F8](sub_20BC545C8, 0, 0);
}

uint64_t sub_20BC545C8()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  (*(v0[26] + 8))(v0[27], v0[25]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20BC54694(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  sub_20C02C77C(a1, v10);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20BC565C4;
  *(v14 + 24) = v2;
  (*(v5 + 16))(v7, v10, v4);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = (v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v5 + 32))(v17 + v15, v7, v4);
  v18 = (v17 + v16);
  *v18 = sub_20B64B960;
  v18[1] = v14;

  sub_20C137C94();
  v19 = *(v5 + 8);
  v19(v10, v4);
  v20 = sub_20C137CB4();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  v20(sub_20B52347C, v21);

  return (v19)(v13, v4);
}

uint64_t sub_20BC5492C(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = "SeymourUI/WorkoutPlanAlternativePickerShelf.swift";
  *(v2 + 24) = 49;
  *(v2 + 32) = 2;
  *(v2 + 40) = 125;
  *(v2 + 48) = &unk_20C174970;
  *(v2 + 56) = a1;

  return sub_20C137C94();
}

uint64_t sub_20BC54A04()
{
  sub_20C13CDA4();
  *(v0 + 24) = sub_20C13CD94();
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BC54A98, v2, v1);
}

uint64_t sub_20BC54A98()
{

  sub_20BC52D6C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BC54B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[29] = a4;
  v5[30] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  v5[31] = swift_task_alloc();
  v6 = sub_20C134F24();
  v5[32] = v6;
  v5[33] = *(v6 - 8);
  v5[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  v5[35] = swift_task_alloc();
  v5[36] = type metadata accessor for ShelfMetricAction();
  v5[37] = swift_task_alloc();
  v7 = sub_20C135214();
  v5[38] = v7;
  v5[39] = *(v7 - 8);
  v5[40] = swift_task_alloc();
  v8 = sub_20C132E94();
  v5[41] = v8;
  v5[42] = *(v8 - 8);
  v5[43] = swift_task_alloc();
  v9 = sub_20C136594();
  v5[44] = v9;
  v5[45] = *(v9 - 8);
  v5[46] = swift_task_alloc();
  v10 = sub_20C134014();
  v5[47] = v10;
  v5[48] = *(v10 - 8);
  v5[49] = swift_task_alloc();
  v11 = sub_20C132EE4();
  v5[50] = v11;
  v5[51] = *(v11 - 8);
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v12 = sub_20C133954();
  v5[54] = v12;
  v5[55] = *(v12 - 8);
  v5[56] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767450);
  v5[57] = swift_task_alloc();
  v13 = sub_20C134A74();
  v5[58] = v13;
  v5[59] = *(v13 - 8);
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();
  v5[62] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BC54F40, 0, 0);
}

uint64_t sub_20BC54F40()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 472);
  v3 = *(v0 + 456);
  sub_20C02C020(*(v0 + 240), v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20B520158(*(v0 + 456), &qword_27C767450);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v7 = *(v0 + 488);
    v6 = *(v0 + 496);
    v8 = *(v0 + 232);
    sub_20B8C6FC8(*(v0 + 456), v6);
    v9 = *(v8 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_workoutPlanClient + 24);
    v10 = *(v8 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_workoutPlanClient + 32);
    __swift_project_boxed_opaque_existential_1((v8 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_workoutPlanClient), v9);
    *(v0 + 504) = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_workoutPlan;
    sub_20C133804();
    sub_20BC564FC(v6, v7, MEMORY[0x277D50C70]);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v12 = *(v0 + 488);
    if (EnumCaseMultiPayload == 1)
    {
      v14 = *(v0 + 384);
      v13 = *(v0 + 392);
      v15 = *(v0 + 376);
      (*(v14 + 32))(v13, v12, v15);
      v16 = sub_20C133E44();
    }

    else
    {
      v14 = *(v0 + 360);
      v13 = *(v0 + 368);
      v15 = *(v0 + 352);
      (*(v14 + 32))(v13, v12, v15);
      v16 = sub_20C136564();
    }

    v18 = v16;
    v19 = v17;
    (*(v14 + 8))(v13, v15);
    v20 = *(v0 + 232);
    *(v0 + 512) = v19;
    v21 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_swappableItem;
    *(v0 + 520) = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_swappableItem;
    v22 = v20 + v21;
    v23 = *(type metadata accessor for WorkoutPlanSwappableItem() + 28);
    *(v0 + 568) = v23;
    v24 = swift_task_alloc();
    *(v0 + 528) = v24;
    *v24 = v0;
    v24[1] = sub_20BC55288;
    v25 = *(v0 + 448);
    v26 = *(v0 + 424);

    return MEMORY[0x2821ADF10](v25, v26, v22 + v23, v18, v19, v9, v10);
  }
}

uint64_t sub_20BC55288()
{
  v2 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    (*(v2[51] + 8))(v2[53], v2[50]);

    v3 = sub_20BC55C04;
  }

  else
  {
    v5 = v2[55];
    v4 = v2[56];
    v7 = v2[53];
    v6 = v2[54];
    v8 = v2[50];
    v9 = v2[51];

    v10 = *(v9 + 8);
    v2[68] = v10;
    v2[69] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v7, v8);
    (*(v5 + 8))(v4, v6);
    v3 = sub_20BC5543C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BC5543C()
{
  v41 = v0[68];
  v48 = v0[62];
  v47 = v0[60];
  v1 = v0[52];
  v40 = v0[50];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];
  v45 = v0[34];
  v44 = v0[33];
  v5 = v0[29] + v0[65];
  v42 = v0[35];
  v43 = v0[32];
  v46 = v0[31];
  sub_20C135C04();
  sub_20C133894();
  (*(v3 + 8))(v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762258);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C1517D0;
  *(inited + 32) = 9;
  sub_20C133804();
  v7 = sub_20C132EA4();
  v9 = v8;
  v41(v1, v40);
  v0[24] = v7;
  v0[25] = v9;
  sub_20C13DC04();
  *(inited + 80) = 10;
  v0[28] = sub_20C132D84();
  sub_20C13DC04();
  *(inited + 128) = 13;
  v10 = *(v5 + 16);
  v0[26] = *(v5 + 8);
  v0[27] = v10;

  sub_20C13DC04();
  v51 = sub_20B6B29D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762260);
  swift_arrayDestroy();
  v11 = sub_20C136664();
  (*(*(v11 - 8) + 56))(v42, 1, 1, v11);
  (*(v44 + 104))(v45, *MEMORY[0x277D51450], v43);
  v12 = sub_20C132C14();
  (*(*(v12 - 8) + 56))(v46, 1, 1, v12);
  sub_20BC564FC(v48, v47, MEMORY[0x277D50C70]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = v0[60];
  if (EnumCaseMultiPayload == 1)
  {
    v16 = v0[48];
    v15 = v0[49];
    v17 = v0[47];
    (*(v16 + 32))(v15, v14, v17);
    v18 = sub_20C133E44();
  }

  else
  {
    v16 = v0[45];
    v15 = v0[46];
    v17 = v0[44];
    (*(v16 + 32))(v15, v14, v17);
    v18 = sub_20C136564();
  }

  v49 = v19;
  v50 = v18;
  (*(v16 + 8))(v15, v17);
  v21 = v0[36];
  v20 = v0[37];
  v22 = v0[34];
  v23 = v0[35];
  v25 = v0[32];
  v24 = v0[33];
  v26 = v0[31];
  v27 = v21[8];
  v28 = sub_20C135ED4();
  (*(*(v28 - 8) + 56))(v20 + v27, 1, 1, v28);
  v29 = v21[10];
  v30 = *MEMORY[0x277D51768];
  v31 = sub_20C1352E4();
  (*(*(v31 - 8) + 104))(v20 + v29, v30, v31);
  v32 = v21[11];
  v33 = sub_20C136E94();
  (*(*(v33 - 8) + 56))(v20 + v32, 1, 1, v33);
  sub_20B5DF134(v23, v20, &unk_27C7622E0);
  (*(v24 + 32))(v20 + v21[5], v22, v25);
  sub_20B5DF134(v26, v20 + v21[6], &unk_27C7617F0);
  v34 = (v20 + v21[7]);
  *v34 = v50;
  v34[1] = v49;
  v35 = (v20 + v21[9]);
  *v35 = 0;
  v35[1] = 0;
  *(v20 + v21[12]) = v51;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_20BF9FDD8(v0[29], v0[37], Strong);
    swift_unknownObjectRelease();
  }

  sub_20C13CDA4();
  v0[70] = sub_20C13CD94();
  v38 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BC559A4, v38, v37);
}

uint64_t sub_20BC559A4()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(v3 + 248))(v1, ObjectType, v3);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  return MEMORY[0x2822009F8](sub_20BC55A80, 0, 0);
}

uint64_t sub_20BC55A80()
{
  v1 = v0[62];
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[41];
  sub_20BC56564(v0[37], type metadata accessor for ShelfMetricAction);
  (*(v3 + 8))(v2, v4);
  sub_20BC56564(v1, MEMORY[0x277D50C70]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_20BC55C04()
{
  sub_20BC56564(*(v0 + 496), MEMORY[0x277D50C70]);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BC55D4C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BC55DC4@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20BC55E80()
{
  swift_getObjectType();
  type metadata accessor for WorkoutPlanAlternativeDurationFilterUpdated();
  swift_allocObject();
  swift_weakInit();
  sub_20BC5670C(&qword_27C765E90, type metadata accessor for WorkoutPlanAlternativeDurationFilterUpdated);
  sub_20C13A774();

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BC55F98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_20C13CDF4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  v8[5] = a2;

  sub_20B614F94(0, 0, v6, &unk_20C174960, v8);
}

uint64_t sub_20BC560A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v7 = v3 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_row;
  sub_20B5D8060(v26);
  v8 = v26[9];
  *(v7 + 128) = v26[8];
  *(v7 + 144) = v8;
  *(v7 + 160) = v27;
  v9 = v26[5];
  *(v7 + 64) = v26[4];
  *(v7 + 80) = v9;
  v10 = v26[7];
  *(v7 + 96) = v26[6];
  *(v7 + 112) = v10;
  v11 = v26[1];
  *v7 = v26[0];
  *(v7 + 16) = v11;
  v12 = v26[3];
  *(v7 + 32) = v26[2];
  *(v7 + 48) = v12;
  v13 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_alternatives;
  v14 = sub_20C1364A4();
  (*(*(v14 - 8) + 56))(v4 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_selectedDuration;
  v16 = sub_20C1341A4();
  (*(*(v16 - 8) + 56))(v4 + v15, 1, 1, v16);
  sub_20BC564FC(a2, v4 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_swappableItem, type metadata accessor for WorkoutPlanSwappableItem);
  v17 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_workoutPlan;
  v18 = sub_20C133954();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v4 + v17, a3, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v4 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_eventHub) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621C0);
  sub_20C133AA4();
  sub_20B52E424(&v25, v4 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_workoutPlanClient);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v4 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_subscriptionToken) = sub_20C13A914();
  type metadata accessor for ShelfLazyLockupFetcher();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D84F90];
  *(v20 + 152) = MEMORY[0x277D84F90];
  v22 = sub_20B6B0C04(v21);
  v23 = MEMORY[0x277D84FA0];
  *(v20 + 160) = v22;
  *(v20 + 168) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BD0);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  (*(v19 + 8))(a3, v18);
  sub_20BC56564(a2, type metadata accessor for WorkoutPlanSwappableItem);
  *(v20 + 136) = 5;
  *(v20 + 144) = 43;
  *(v4 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanAlternativePickerShelf_lazyLockupFetcher) = v20;
  return v4;
}

uint64_t sub_20BC5643C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20B52AC14;

  return sub_20BC54B00(a1, v4, v5, v7, v6);
}

uint64_t sub_20BC564FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BC56564(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BC565CC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52A9D4;

  return sub_20BC549E4(a1, v1);
}

uint64_t sub_20BC56668(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52AC14;

  return sub_20BC53F98(a1, v1);
}

uint64_t sub_20BC5670C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BC56754()
{
  sub_20C1380F4();
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v14.origin.x = v2;
  v14.origin.y = v4;
  v14.size.width = v6;
  v14.size.height = v8;
  Width = CGRectGetWidth(v14);
  v10 = sub_20C138104();
  result = sub_20C138104();
  v12 = 51.0;
  v13 = 40.0;
  if (Width >= 350.0)
  {
    v13 = 51.0;
  }

  if (v10 != result)
  {
    v12 = v13;
  }

  qword_27C76C878 = *&v12;
  return result;
}

void sub_20BC56830()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9SeymourUI24SummaryActivityRingsView_ringsView;
  v3 = sub_20C1380F4();
  sub_20C0134C0(v3, v40);
  v4 = v41;
  v5 = v42;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v6 = (*(v5 + 72))(v4, v5);
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_destroy_boxed_opaque_existential_1(v40);
  *&v1[v2] = v6;
  v7 = OBJC_IVAR____TtC9SeymourUI24SummaryActivityRingsView_headerLabelStack;
  v8 = [objc_allocWithZone(type metadata accessor for SessionStackedLabelView()) initWithFrame_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v7] = v8;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v10 = objc_opt_self();
  v11 = [v10 energyColors];
  if (!v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = v11;
  v13 = [v11 nonGradientTextColor];

  if (!v13)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = OBJC_IVAR____TtC9SeymourUI24SummaryActivityRingsView_moveLabel;
  [v9 setTextColor_];

  LODWORD(v15) = 1148846080;
  [v9 setContentCompressionResistancePriority:0 forAxis:v15];
  LODWORD(v16) = 1148846080;
  [v9 setContentCompressionResistancePriority:1 forAxis:v16];

  [v9 setAdjustsFontForContentSizeCategory_];
  *&v1[v14] = v9;
  v17 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = [v10 briskColors];
  if (!v18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v19 = v18;
  v20 = [v18 nonGradientTextColor];

  if (!v20)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v21 = OBJC_IVAR____TtC9SeymourUI24SummaryActivityRingsView_exerciseLabel;
  [v17 setTextColor_];

  LODWORD(v22) = 1148846080;
  [v17 setContentCompressionResistancePriority:0 forAxis:v22];
  LODWORD(v23) = 1148846080;
  [v17 setContentCompressionResistancePriority:1 forAxis:v23];

  [v17 setAdjustsFontForContentSizeCategory_];
  *&v1[v21] = v17;
  v24 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  v25 = [v10 sedentaryColors];
  if (!v25)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v26 = v25;
  v27 = [v25 nonGradientTextColor];

  if (v27)
  {
    v28 = OBJC_IVAR____TtC9SeymourUI24SummaryActivityRingsView_standLabel;
    [v24 setTextColor_];

    LODWORD(v29) = 1148846080;
    [v24 setContentCompressionResistancePriority:0 forAxis:v29];
    LODWORD(v30) = 1148846080;
    [v24 setContentCompressionResistancePriority:1 forAxis:v30];

    [v24 setAdjustsFontForContentSizeCategory_];
    *&v1[v28] = v24;
    v31 = OBJC_IVAR____TtC9SeymourUI24SummaryActivityRingsView_valueLabelsStack;
    v32 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
    [v32 setTranslatesAutoresizingMaskIntoConstraints_];
    [v32 setAlignment_];
    [v32 setAxis_];
    [v32 setDistribution_];
    [v32 setSpacing_];
    LODWORD(v33) = 1148846080;
    [v32 setContentCompressionResistancePriority:0 forAxis:v33];
    LODWORD(v34) = 1148846080;
    [v32 setContentCompressionResistancePriority:1 forAxis:v34];

    *&v1[v31] = v32;
    *&v1[OBJC_IVAR____TtC9SeymourUI24SummaryActivityRingsView_ringDiameterConstraint] = 0;
    v39.receiver = v1;
    v39.super_class = type metadata accessor for SummaryActivityRingsView();
    v35 = objc_msgSendSuper2(&v39, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    [v35 setUserInteractionEnabled_];
    v36 = OBJC_IVAR____TtC9SeymourUI24SummaryActivityRingsView_ringsView;
    [*&v35[OBJC_IVAR____TtC9SeymourUI24SummaryActivityRingsView_ringsView] setUserInteractionEnabled_];
    [v35 addSubview_];
    v37 = OBJC_IVAR____TtC9SeymourUI24SummaryActivityRingsView_valueLabelsStack;
    [*&v35[OBJC_IVAR____TtC9SeymourUI24SummaryActivityRingsView_valueLabelsStack] addArrangedSubview_];
    [*&v35[v37] addArrangedSubview_];
    [*&v35[v37] addArrangedSubview_];
    [v35 addSubview_];
    [v35 addSubview_];
    sub_20BC56DF0();
    v38 = sub_20C13C914();
    [v35 setAccessibilityIdentifier_];

    return;
  }

LABEL_13:
  __break(1u);
}

void sub_20BC56DF0()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI24SummaryActivityRingsView_headerLabelStack];
  v2 = [v1 leadingAnchor];
  v3 = [v0 leadingAnchor];
  v4 = [v2 constraintEqualToAnchor_];

  LODWORD(v5) = 1144750080;
  [v4 setPriority_];
  v6 = [v1 trailingAnchor];
  v7 = [v0 trailingAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  LODWORD(v9) = 1144750080;
  [v8 setPriority_];
  v10 = [v1 topAnchor];
  v11 = [v0 topAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_20C150040;
  *(v13 + 32) = v4;
  *(v13 + 40) = v8;
  *(v13 + 48) = v12;
  v14 = *&v0[OBJC_IVAR____TtC9SeymourUI24SummaryActivityRingsView_ringsView];
  v76 = v4;
  v75 = v8;
  v74 = v12;
  v15 = [v14 leadingAnchor];
  v16 = [v0 leadingAnchor];
  v72 = [v15 constraintEqualToAnchor_];

  v17 = [v14 topAnchor];
  v77 = v1;
  v18 = [v1 bottomAnchor];
  v70 = [v17 constraintEqualToAnchor:v18 constant:12.0];

  if (qword_27C760A38 != -1)
  {
    swift_once();
  }

  v19 = *&qword_27C76C878;
  v20 = [v0 traitCollection];
  v21 = [v20 preferredContentSizeCategory];

  v22 = sub_20B6DB2C0();
  v23 = v19 * v22;
  v24 = [v14 widthAnchor];
  v25 = [v24 constraintEqualToConstant_];

  v26 = *&v0[OBJC_IVAR____TtC9SeymourUI24SummaryActivityRingsView_ringDiameterConstraint];
  *&v0[OBJC_IVAR____TtC9SeymourUI24SummaryActivityRingsView_ringDiameterConstraint] = v25;
  v27 = v25;

  v28 = [v14 ringGroup];
  *&v29 = v23;
  [v28 setGroupDiameter_];

  v30 = [v14 ringGroup];
  v31 = [v0 traitCollection];
  v32 = [v31 preferredContentSizeCategory];

  v33 = sub_20B6DB2C0();
  v34 = v33 * 4.0;
  *&v34 = v33 * 4.0;
  [v30 setThickness_];

  v35 = [v14 ringGroup];
  v36 = [v0 traitCollection];
  v37 = [v36 preferredContentSizeCategory];

  v38 = sub_20B6DB2C0();
  v39 = v38 + v38;
  *&v39 = v38 + v38;
  [v35 setInterspacing_];

  v40 = [v14 heightAnchor];
  v41 = [v14 widthAnchor];
  v42 = [v40 constraintEqualToAnchor_];

  v43 = [v14 bottomAnchor];
  v44 = [v0 bottomAnchor];
  v45 = [v43 constraintLessThanOrEqualToAnchor:v44 constant:-8.0];

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C150050;
  *(inited + 32) = v72;
  *(inited + 40) = v70;
  *(inited + 48) = v27;
  *(inited + 56) = v42;
  *(inited + 64) = v45;
  v47 = *&v0[OBJC_IVAR____TtC9SeymourUI24SummaryActivityRingsView_valueLabelsStack];
  v69 = v27;
  v68 = v72;
  v67 = v70;
  v73 = v42;
  v71 = v45;
  v48 = [v47 leadingAnchor];
  v49 = [v14 trailingAnchor];
  v50 = [v48 constraintEqualToAnchor:v49 constant:10.0];

  v51 = [v47 trailingAnchor];
  v52 = [v0 trailingAnchor];
  v53 = [v51 constraintEqualToAnchor_];

  v54 = [v47 topAnchor];
  v55 = [v77 bottomAnchor];
  v56 = [v54 constraintEqualToAnchor:v55 constant:7.0];

  v57 = [v47 bottomAnchor];
  v58 = [v0 bottomAnchor];
  v59 = [v57 constraintLessThanOrEqualToAnchor:v58 constant:-8.0];

  v60 = swift_initStackObject();
  *(v60 + 16) = xmmword_20C14FE90;
  *(v60 + 32) = v50;
  *(v60 + 40) = v53;
  *(v60 + 48) = v56;
  *(v60 + 56) = v59;
  v61 = v50;
  v62 = v53;
  v63 = v56;
  v64 = v59;
  sub_20B8D9310(inited);
  sub_20B8D9310(v60);
  v65 = objc_opt_self();
  sub_20B5E29D0();
  v66 = sub_20C13CC54();

  [v65 activateConstraints_];
}

void sub_20BC5762C(uint64_t a1, int a2)
{
  v3 = v2;
  v42 = a2;
  v41 = sub_20C133984();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_20C134B64();
  v8 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + OBJC_IVAR____TtC9SeymourUI24SummaryActivityRingsView_headerLabelStack);
  v12 = type metadata accessor for SummaryActivityRingsMetricViewModel();
  [*(v11 + OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_primaryLabel) setAttributedText_];
  [*(v3 + OBJC_IVAR____TtC9SeymourUI24SummaryActivityRingsView_moveLabel) setAttributedText_];
  [*(v3 + OBJC_IVAR____TtC9SeymourUI24SummaryActivityRingsView_exerciseLabel) setAttributedText_];
  [*(v3 + OBJC_IVAR____TtC9SeymourUI24SummaryActivityRingsView_standLabel) setAttributedText_];
  v13 = sub_20C133D24();
  v15 = v14;
  v45 = v13;
  v46 = v14;
  v17 = v16 & 1;
  v47 = v16 & 1;
  v43 = xmmword_20C152300;
  v44 = 1;
  sub_20B815F98();
  sub_20B815FEC();
  LOBYTE(v11) = sub_20C133BF4();
  sub_20B583F4C(v13, v15, v17);
  if (v11)
  {
    v18 = [*(v3 + OBJC_IVAR____TtC9SeymourUI24SummaryActivityRingsView_ringsView) ringGroup];
    [v18 setIsStandalonePhoneFitnessMode_];
  }

  v19 = [*(v3 + OBJC_IVAR____TtC9SeymourUI24SummaryActivityRingsView_ringsView) ringGroup];
  sub_20C133D34();
  sub_20C134B44();
  (*(v8 + 8))(v10, v40);
  sub_20C133974();
  v21 = v20;
  sub_20C133964();
  v23 = v22;
  v24 = *(v5 + 8);
  v25 = v41;
  v24(v7, v41);
  v26 = v23;
  *&v23 = v21 / v26;
  sub_20C133D64();
  sub_20C133974();
  v28 = v27;
  sub_20C133964();
  v30 = v29;
  v24(v7, v25);
  v31 = v30;
  *&v30 = v28 / v31;
  sub_20C133D44();
  sub_20C133974();
  v33 = v32;
  sub_20C133964();
  v35 = v34;
  v36 = v24(v7, v25);
  v36.n128_f32[0] = v35;
  *&v37 = v33 / v36.n128_f32[0];
  v36.n128_u32[0] = LODWORD(v23);
  LODWORD(v38) = LODWORD(v30);
  [v19 setActiveEnergyPercentage:v42 & 1 exerciseMinutesPercentage:0 standHoursPercentage:v36.n128_f64[0] animated:v38 completion:v37];
}

void sub_20BC57A04(id a1)
{
  v34.receiver = v1;
  v34.super_class = type metadata accessor for SummaryActivityRingsView();
  objc_msgSendSuper2(&v34, sel_traitCollectionDidChange_, a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_11:
    if (qword_27C760A38 != -1)
    {
      swift_once();
    }

    v11 = *&qword_27C76C878;
    v12 = [v1 traitCollection];
    v13 = [v12 preferredContentSizeCategory];

    v14 = sub_20B6DB2C0();
    v15 = v11 * v14;
    v16 = *&v1[OBJC_IVAR____TtC9SeymourUI24SummaryActivityRingsView_ringDiameterConstraint];
    if (v16)
    {
      v17 = v16;
      v18 = [v1 traitCollection];
      v19 = [v18 preferredContentSizeCategory];

      v20 = sub_20B6DB2C0();
      [v17 setConstant_];
    }

    v21 = *&v1[OBJC_IVAR____TtC9SeymourUI24SummaryActivityRingsView_ringsView];
    v22 = [v21 ringGroup];
    *&v23 = v15;
    [v22 setGroupDiameter_];

    v24 = [v21 ringGroup];
    v25 = [v1 traitCollection];
    v26 = [v25 preferredContentSizeCategory];

    v27 = sub_20B6DB2C0();
    v28 = v27 * 4.0;
    *&v28 = v27 * 4.0;
    [v24 setThickness_];

    v29 = [v21 ringGroup];
    v30 = [v1 traitCollection];
    v31 = [v30 preferredContentSizeCategory];

    v32 = sub_20B6DB2C0();
    v33 = v32 + v32;
    *&v33 = v32 + v32;
    [v29 setInterspacing_];

    return;
  }

  v5 = sub_20C13C954();
  v7 = v6;
  if (v5 == sub_20C13C954() && v7 == v8)
  {

    return;
  }

  v10 = sub_20C13DFF4();

  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }
}

id sub_20BC57DFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummaryActivityRingsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BC57EF0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9SeymourUI24SummaryActivityRingsView_ringsView;
  v3 = sub_20C1380F4();
  sub_20C0134C0(v3, v35);
  v4 = v36;
  v5 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v6 = (*(v5 + 72))(v4, v5);
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_destroy_boxed_opaque_existential_1(v35);
  *(v1 + v2) = v6;
  v7 = OBJC_IVAR____TtC9SeymourUI24SummaryActivityRingsView_headerLabelStack;
  v8 = [objc_allocWithZone(type metadata accessor for SessionStackedLabelView()) initWithFrame_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v7) = v8;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v10 = objc_opt_self();
  v11 = [v10 energyColors];
  if (!v11)
  {
    __break(1u);
  }

  v12 = v11;
  v13 = [v11 nonGradientTextColor];

  if (!v13)
  {
    __break(1u);
  }

  v14 = OBJC_IVAR____TtC9SeymourUI24SummaryActivityRingsView_moveLabel;
  [v9 setTextColor_];

  LODWORD(v15) = 1148846080;
  [v9 setContentCompressionResistancePriority:0 forAxis:v15];
  LODWORD(v16) = 1148846080;
  [v9 setContentCompressionResistancePriority:1 forAxis:v16];

  [v9 setAdjustsFontForContentSizeCategory_];
  *(v1 + v14) = v9;
  v17 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = [v10 briskColors];
  if (!v18)
  {
    __break(1u);
  }

  v19 = v18;
  v20 = [v18 nonGradientTextColor];

  if (!v20)
  {
    __break(1u);
  }

  v21 = OBJC_IVAR____TtC9SeymourUI24SummaryActivityRingsView_exerciseLabel;
  [v17 setTextColor_];

  LODWORD(v22) = 1148846080;
  [v17 setContentCompressionResistancePriority:0 forAxis:v22];
  LODWORD(v23) = 1148846080;
  [v17 setContentCompressionResistancePriority:1 forAxis:v23];

  [v17 setAdjustsFontForContentSizeCategory_];
  *(v1 + v21) = v17;
  v24 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  v25 = [v10 sedentaryColors];
  if (!v25)
  {
    __break(1u);
  }

  v26 = v25;
  v27 = [v25 nonGradientTextColor];

  if (!v27)
  {
    __break(1u);
  }

  v28 = OBJC_IVAR____TtC9SeymourUI24SummaryActivityRingsView_standLabel;
  [v24 setTextColor_];

  LODWORD(v29) = 1148846080;
  [v24 setContentCompressionResistancePriority:0 forAxis:v29];
  LODWORD(v30) = 1148846080;
  [v24 setContentCompressionResistancePriority:1 forAxis:v30];

  [v24 setAdjustsFontForContentSizeCategory_];
  *(v1 + v28) = v24;
  v31 = OBJC_IVAR____TtC9SeymourUI24SummaryActivityRingsView_valueLabelsStack;
  v32 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  [v32 setAlignment_];
  [v32 setAxis_];
  [v32 setDistribution_];
  [v32 setSpacing_];
  LODWORD(v33) = 1148846080;
  [v32 setContentCompressionResistancePriority:0 forAxis:v33];
  LODWORD(v34) = 1148846080;
  [v32 setContentCompressionResistancePriority:1 forAxis:v34];

  *(v1 + v31) = v32;
  *(v1 + OBJC_IVAR____TtC9SeymourUI24SummaryActivityRingsView_ringDiameterConstraint) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BC583B0()
{
  v0 = sub_20C135334();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_20C136C64();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13AC94();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_20B5EC5BC(v6);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_20C136C24();
    v12 = sub_20C135324();
    (*(v1 + 8))(v3, v0);
    (*(v8 + 8))(v10, v7);
    return v12;
  }
}

uint64_t sub_20BC58610(void *a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C136704();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI29RemoteNotificationSettingCell_rowIndex + 8))
  {
    sub_20C13B534();
    v12 = sub_20C13BB74();
    v13 = sub_20C13D1D4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_20B517000, v12, v13, "Remote notification setting cell switch tapped without index", v14, 2u);
      MEMORY[0x20F2F6A40](v14, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI29RemoteNotificationSettingCell_rowIndex);
    v17 = [a1 isOn];
    v18 = MEMORY[0x277D52C40];
    if (!v17)
    {
      v18 = MEMORY[0x277D52C48];
    }

    (*(v8 + 104))(v11, *v18, v7);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_20BFB2704(v11, v16);
      swift_unknownObjectRelease();
    }

    return (*(v8 + 8))(v11, v7);
  }
}

id sub_20BC58ADC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteNotificationSettingCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20BC58B6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C1391E4();
  v5 = *(v4 - 8);
  v85 = v4;
  v86 = v5;
  MEMORY[0x28223BE20](v4);
  v84 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C134C44();
  MEMORY[0x28223BE20](v7 - 8);
  v83 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70);
  MEMORY[0x28223BE20](v9 - 8);
  v82 = v63 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0);
  MEMORY[0x28223BE20](v11 - 8);
  v80 = v63 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80);
  MEMORY[0x28223BE20](v13 - 8);
  v76 = v63 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900);
  MEMORY[0x28223BE20](v15 - 8);
  v74 = v63 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90);
  MEMORY[0x28223BE20](v17 - 8);
  v73 = v63 - v18;
  v72 = sub_20C135D24();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v89 = v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C134F74();
  v78 = *(v20 - 8);
  v79 = v20;
  MEMORY[0x28223BE20](v20);
  v77 = v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v75 = v63 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v24 - 8);
  v70 = v63 - v25;
  v69 = sub_20C1352E4();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v27 - 8);
  v66 = v63 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v29 - 8);
  v87 = v63 - v30;
  v65 = sub_20C134F24();
  v31 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v64 = v63 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = v63 - v34;
  v63[1] = v63 - v34;
  v36 = sub_20C133654();
  v90 = *(v36 - 8);
  v91 = v36;
  MEMORY[0x28223BE20](v36);
  v88 = v63 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_20C132E94();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = v63 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a2 + *(type metadata accessor for PageMetricAction() + 20);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker), *(a1 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24));
  sub_20BEAA9D8();
  type metadata accessor for CatalogPageImpressionTracker();
  sub_20BC5D0C8(&qword_27C768B80, type metadata accessor for CatalogPageImpressionTracker);
  v63[2] = sub_20C139234();
  (*(v39 + 8))(v41, v38);
  sub_20B52F9E8(v42, v35, &unk_27C7622E0);
  v43 = type metadata accessor for ShelfMetricAction();
  (*(v31 + 16))(v64, v42 + v43[5], v65);
  sub_20B52F9E8(v42 + v43[6], v87, &unk_27C7617F0);
  v65 = *(v42 + v43[9]);
  sub_20B52F9E8(v42 + v43[8], v66, &unk_27C7621D0);
  (*(v68 + 16))(v67, v42 + v43[10], v69);
  sub_20B52F9E8(v42 + v43[11], v70, &unk_27C76BC90);

  v44 = v88;
  sub_20C133644();
  v45 = v89;
  (*(v90 + 16))(v89, v44, v91);
  (*(v71 + 104))(v45, *MEMORY[0x277D52120], v72);
  v46 = OBJC_IVAR____TtC9SeymourUI21AccountViewController_metricPage;
  v47 = sub_20C1333A4();
  v48 = *(v47 - 8);
  v49 = v73;
  (*(v48 + 16))(v73, v81 + v46, v47);
  (*(v48 + 56))(v49, 0, 1, v47);
  v50 = sub_20C135664();
  (*(*(v50 - 8) + 56))(v74, 1, 1, v50);
  v51 = sub_20C135674();
  (*(*(v51 - 8) + 56))(v76, 1, 1, v51);
  v52 = v80;
  sub_20C134F94();
  v53 = sub_20C134FB4();
  (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0);
  (*(*(v54 - 8) + 56))(v82, 1, 1, v54);
  v55 = sub_20C135F14();
  (*(*(v55 - 8) + 56))(v83, 1, 1, v55);

  v56 = v75;
  sub_20C134F54();
  v57 = v78;
  v58 = v79;
  (*(v78 + 16))(v77, v56, v79);
  v59 = v84;
  sub_20C1391F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  swift_getObjectType();
  sub_20BC5D0C8(&qword_281103B30, MEMORY[0x277D542C0]);
  v60 = v59;
  v61 = v85;
  sub_20C13A764();
  swift_unknownObjectRelease();
  (*(v86 + 8))(v60, v61);
  (*(v57 + 8))(v56, v58);
  return (*(v90 + 8))(v88, v91);
}

uint64_t sub_20BC59854(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v90 = a5;
  v85 = a3;
  v86 = a4;
  v7 = sub_20C1391E4();
  v8 = *(v7 - 8);
  v91 = v7;
  v92 = v8;
  MEMORY[0x28223BE20](v7);
  v89 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C134C44();
  MEMORY[0x28223BE20](v10 - 8);
  v88 = v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70);
  MEMORY[0x28223BE20](v12 - 8);
  v87 = v66 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0);
  MEMORY[0x28223BE20](v14 - 8);
  v83 = v66 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80);
  MEMORY[0x28223BE20](v16 - 8);
  v79 = v66 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900);
  MEMORY[0x28223BE20](v18 - 8);
  v77 = v66 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90);
  MEMORY[0x28223BE20](v20 - 8);
  v76 = v66 - v21;
  v75 = sub_20C135D24();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v95 = v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20C134F74();
  v81 = *(v23 - 8);
  v82 = v23;
  MEMORY[0x28223BE20](v23);
  v80 = v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v78 = v66 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v27 - 8);
  v73 = v66 - v28;
  v72 = sub_20C1352E4();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v30 - 8);
  v69 = v66 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v32 - 8);
  v93 = v66 - v33;
  v68 = sub_20C134F24();
  v34 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = v66 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = v66 - v37;
  v66[0] = v66 - v37;
  v39 = sub_20C133654();
  v96 = *(v39 - 8);
  v97 = v39;
  MEMORY[0x28223BE20](v39);
  v94 = v66 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_20C132E94();
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v44 = v66 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a2 + *(type metadata accessor for PageMetricAction() + 20);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker), *(a1 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24));
  sub_20BEAA9D8();
  type metadata accessor for CatalogPageImpressionTracker();
  sub_20BC5D0C8(&qword_27C768B80, type metadata accessor for CatalogPageImpressionTracker);
  v66[1] = sub_20C139234();
  (*(v42 + 8))(v44, v41);
  sub_20B52F9E8(v45, v38, &unk_27C7622E0);
  v46 = type metadata accessor for ShelfMetricAction();
  (*(v34 + 16))(v67, v45 + v46[5], v68);
  sub_20B52F9E8(v45 + v46[6], v93, &unk_27C7617F0);
  v68 = *(v45 + v46[9]);
  sub_20B52F9E8(v45 + v46[8], v69, &unk_27C7621D0);
  (*(v71 + 16))(v70, v45 + v46[10], v72);
  sub_20B52F9E8(v45 + v46[11], v73, &unk_27C76BC90);

  v47 = v94;
  sub_20C133644();
  v48 = v95;
  (*(v96 + 16))(v95, v47, v97);
  (*(v74 + 104))(v48, *MEMORY[0x277D52120], v75);
  v49 = *(v84 + *v85);
  v50 = *v86;
  v51 = sub_20C1333A4();
  v52 = *(v51 - 8);
  v53 = v76;
  (*(v52 + 16))(v76, v49 + v50, v51);
  (*(v52 + 56))(v53, 0, 1, v51);
  v54 = sub_20C135664();
  (*(*(v54 - 8) + 56))(v77, 1, 1, v54);
  v55 = sub_20C135674();
  (*(*(v55 - 8) + 56))(v79, 1, 1, v55);
  v56 = v83;
  sub_20C134F94();
  v57 = sub_20C134FB4();
  (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0);
  (*(*(v58 - 8) + 56))(v87, 1, 1, v58);
  v59 = sub_20C135F14();
  (*(*(v59 - 8) + 56))(v88, 1, 1, v59);

  v60 = v78;
  sub_20C134F54();
  v61 = v81;
  v62 = v82;
  (*(v81 + 16))(v80, v60, v82);
  v63 = v89;
  sub_20C1391F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  swift_getObjectType();
  sub_20BC5D0C8(&qword_281103B30, MEMORY[0x277D542C0]);
  v64 = v91;
  sub_20C13A764();
  swift_unknownObjectRelease();
  (*(v92 + 8))(v63, v64);
  (*(v61 + 8))(v60, v62);
  return (*(v96 + 8))(v94, v97);
}

uint64_t sub_20BC5A558(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v87 = a5;
  v82 = a3;
  v83 = a4;
  v7 = sub_20C1391E4();
  v8 = *(v7 - 8);
  v88 = v7;
  v89 = v8;
  MEMORY[0x28223BE20](v7);
  v86 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C134C44();
  MEMORY[0x28223BE20](v10 - 8);
  v85 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70);
  MEMORY[0x28223BE20](v12 - 8);
  v84 = v64 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0);
  MEMORY[0x28223BE20](v14 - 8);
  v81 = v64 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80);
  MEMORY[0x28223BE20](v16 - 8);
  v77 = v64 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900);
  MEMORY[0x28223BE20](v18 - 8);
  v75 = v64 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90);
  MEMORY[0x28223BE20](v20 - 8);
  v74 = v64 - v21;
  v73 = sub_20C135D24();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v92 = v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20C134F74();
  v79 = *(v23 - 8);
  v80 = v23;
  MEMORY[0x28223BE20](v23);
  v78 = v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v76 = v64 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v27 - 8);
  v71 = v64 - v28;
  v70 = sub_20C1352E4();
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v30 - 8);
  v67 = v64 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v32 - 8);
  v90 = v64 - v33;
  v66 = sub_20C134F24();
  v34 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = v64 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = v64 - v37;
  v64[0] = v64 - v37;
  v39 = sub_20C133654();
  v93 = *(v39 - 8);
  v94 = v39;
  MEMORY[0x28223BE20](v39);
  v91 = v64 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_20C132E94();
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v44 = v64 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a2 + *(type metadata accessor for PageMetricAction() + 20);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker), *(a1 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24));
  sub_20BEAA9D8();
  type metadata accessor for CatalogPageImpressionTracker();
  sub_20BC5D0C8(&qword_27C768B80, type metadata accessor for CatalogPageImpressionTracker);
  v64[1] = sub_20C139234();
  (*(v42 + 8))(v44, v41);
  sub_20B52F9E8(v45, v38, &unk_27C7622E0);
  v46 = type metadata accessor for ShelfMetricAction();
  (*(v34 + 16))(v65, v45 + v46[5], v66);
  sub_20B52F9E8(v45 + v46[6], v90, &unk_27C7617F0);
  v66 = *(v45 + v46[9]);
  sub_20B52F9E8(v45 + v46[8], v67, &unk_27C7621D0);
  (*(v69 + 16))(v68, v45 + v46[10], v70);
  sub_20B52F9E8(v45 + v46[11], v71, &unk_27C76BC90);

  v47 = v91;
  sub_20C133644();
  v48 = v92;
  (*(v93 + 16))(v92, v47, v94);
  v49 = (*(v72 + 104))(v48, *MEMORY[0x277D52120], v73);
  v50 = v74;
  v83(v49);
  v51 = sub_20C1333A4();
  (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
  v52 = sub_20C135664();
  (*(*(v52 - 8) + 56))(v75, 1, 1, v52);
  v53 = sub_20C135674();
  (*(*(v53 - 8) + 56))(v77, 1, 1, v53);
  v54 = v81;
  sub_20C134F94();
  v55 = sub_20C134FB4();
  (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0);
  (*(*(v56 - 8) + 56))(v84, 1, 1, v56);
  v57 = sub_20C135F14();
  (*(*(v57 - 8) + 56))(v85, 1, 1, v57);

  v58 = v76;
  sub_20C134F54();
  v59 = v79;
  v60 = v80;
  (*(v79 + 16))(v78, v58, v80);
  v61 = v86;
  sub_20C1391F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  swift_getObjectType();
  sub_20BC5D0C8(&qword_281103B30, MEMORY[0x277D542C0]);
  v62 = v88;
  sub_20C13A764();
  swift_unknownObjectRelease();
  (*(v89 + 8))(v61, v62);
  (*(v59 + 8))(v58, v60);
  return (*(v93 + 8))(v91, v94);
}

uint64_t sub_20BC5B234(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C1391E4();
  v5 = *(v4 - 8);
  v94 = v4;
  v95 = v5;
  MEMORY[0x28223BE20](v4);
  v93 = v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C134C44();
  MEMORY[0x28223BE20](v7 - 8);
  v92 = v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70);
  MEMORY[0x28223BE20](v9 - 8);
  v91 = v72 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0);
  MEMORY[0x28223BE20](v11 - 8);
  v90 = v72 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80);
  MEMORY[0x28223BE20](v13 - 8);
  v89 = v72 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900);
  MEMORY[0x28223BE20](v15 - 8);
  v86 = v72 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v17 - 8);
  v83 = v72 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v19 - 8);
  v81 = v72 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90);
  MEMORY[0x28223BE20](v21 - 8);
  v82 = v72 - v22;
  v80 = sub_20C135D24();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v99 = v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_20C134F74();
  v87 = *(v24 - 8);
  v88 = v24;
  MEMORY[0x28223BE20](v24);
  v85 = v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v84 = v72 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v28 - 8);
  v78 = v72 - v29;
  v77 = sub_20C1352E4();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v31 - 8);
  v74 = v72 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v33 - 8);
  v96 = v72 - v34;
  v73 = sub_20C134F24();
  v35 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v97 = v72 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v37 - 8);
  v39 = v72 - v38;
  v72[1] = v72 - v38;
  v40 = sub_20C133654();
  v100 = *(v40 - 8);
  v101 = v40;
  MEMORY[0x28223BE20](v40);
  v98 = v72 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_20C132E94();
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v45 = v72 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a2 + *(type metadata accessor for PageMetricAction() + 20);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker), *(a1 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24));
  sub_20BEAA9D8();
  type metadata accessor for CatalogPageImpressionTracker();
  sub_20BC5D0C8(&qword_27C768B80, type metadata accessor for CatalogPageImpressionTracker);
  v72[2] = sub_20C139234();
  (*(v43 + 8))(v45, v42);
  sub_20B52F9E8(v46, v39, &unk_27C7622E0);
  v47 = type metadata accessor for ShelfMetricAction();
  (*(v35 + 16))(v97, v46 + v47[5], v73);
  sub_20B52F9E8(v46 + v47[6], v96, &unk_27C7617F0);
  v73 = *(v46 + v47[9]);
  v48 = v74;
  sub_20B52F9E8(v46 + v47[8], v74, &unk_27C7621D0);
  (*(v76 + 16))(v75, v46 + v47[10], v77);
  sub_20B52F9E8(v46 + v47[11], v78, &unk_27C76BC90);

  v49 = v48;
  v50 = v98;
  sub_20C133644();
  v51 = v99;
  (*(v100 + 16))(v99, v50, v101);
  (*(v79 + 104))(v51, *MEMORY[0x277D52120], v80);
  v52 = *MEMORY[0x277D517F0];
  v53 = sub_20C1352F4();
  v54 = *(v53 - 8);
  v55 = v81;
  (*(v54 + 104))(v81, v52, v53);
  (*(v54 + 56))(v55, 0, 1, v53);

  sub_20C132C04();
  v56 = sub_20C135ED4();
  (*(*(v56 - 8) + 56))(v49, 1, 1, v56);
  v57 = sub_20C136914();
  (*(*(v57 - 8) + 56))(v83, 1, 1, v57);
  v58 = v82;
  sub_20C133384();
  v59 = sub_20C1333A4();
  (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
  v60 = sub_20C135664();
  (*(*(v60 - 8) + 56))(v86, 1, 1, v60);
  v61 = sub_20C135674();
  (*(*(v61 - 8) + 56))(v89, 1, 1, v61);
  v62 = v90;
  sub_20C134F94();
  v63 = sub_20C134FB4();
  (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0);
  (*(*(v64 - 8) + 56))(v91, 1, 1, v64);
  v65 = sub_20C135F14();
  (*(*(v65 - 8) + 56))(v92, 1, 1, v65);

  v66 = v84;
  sub_20C134F54();
  v68 = v87;
  v67 = v88;
  (*(v87 + 16))(v85, v66, v88);
  v69 = v93;
  sub_20C1391F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  swift_getObjectType();
  sub_20BC5D0C8(&qword_281103B30, MEMORY[0x277D542C0]);
  v70 = v94;
  sub_20C13A764();
  swift_unknownObjectRelease();
  (*(v95 + 8))(v69, v70);
  (*(v68 + 8))(v66, v67);
  return (*(v100 + 8))(v98, v101);
}

uint64_t sub_20BC5C114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v83 = a4;
  v88 = a5;
  v85 = a3;
  v7 = sub_20C1391E4();
  v8 = *(v7 - 8);
  v90 = v7;
  v91 = v8;
  MEMORY[0x28223BE20](v7);
  v89 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C134C44();
  MEMORY[0x28223BE20](v10 - 8);
  v87 = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70);
  MEMORY[0x28223BE20](v12 - 8);
  v86 = v67 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0);
  MEMORY[0x28223BE20](v14 - 8);
  v81 = v67 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80);
  MEMORY[0x28223BE20](v16 - 8);
  v78 = v67 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900);
  MEMORY[0x28223BE20](v18 - 8);
  v98 = v67 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90);
  MEMORY[0x28223BE20](v20 - 8);
  v95 = v67 - v21;
  v76 = sub_20C135D24();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v94 = v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_20C134F74();
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v79 = v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v77 = v67 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v26 - 8);
  v74 = v67 - v27;
  v73 = sub_20C1352E4();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v29 - 8);
  v70 = v67 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v31 - 8);
  v92 = v67 - v32;
  v69 = sub_20C134F24();
  v33 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = v67 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = v67 - v36;
  v67[1] = v67 - v36;
  v38 = sub_20C133654();
  v96 = *(v38 - 8);
  v97 = v38;
  MEMORY[0x28223BE20](v38);
  v93 = v67 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_20C132E94();
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v43 = v67 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a2 + *(type metadata accessor for PageMetricAction() + 20);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker), *(a1 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24));
  sub_20BEAA9D8();
  type metadata accessor for CatalogPageImpressionTracker();
  sub_20BC5D0C8(&qword_27C768B80, type metadata accessor for CatalogPageImpressionTracker);
  v67[2] = sub_20C139234();
  (*(v41 + 8))(v43, v40);
  sub_20B52F9E8(v44, v37, &unk_27C7622E0);
  v45 = type metadata accessor for ShelfMetricAction();
  (*(v33 + 16))(v68, v44 + v45[5], v69);
  sub_20B52F9E8(v44 + v45[6], v92, &unk_27C7617F0);
  v69 = *(v44 + v45[9]);
  sub_20B52F9E8(v44 + v45[8], v70, &unk_27C7621D0);
  (*(v72 + 16))(v71, v44 + v45[10], v73);
  sub_20B52F9E8(v44 + v45[11], v74, &unk_27C76BC90);

  v46 = v93;
  sub_20C133644();
  v47 = v94;
  (*(v96 + 16))(v94, v46, v97);
  (*(v75 + 104))(v47, *MEMORY[0x277D52120], v76);
  v48 = v84;
  v99 = v84;
  v49 = v95;
  v50 = v85;
  (*(v83 + 16))(v85);
  v51 = sub_20C1333A4();
  (*(*(v51 - 8) + 56))(v49, 0, 1, v51);
  v52 = sub_20C135664();
  (*(*(v52 - 8) + 56))(v98, 1, 1, v52);
  v53 = sub_20C135674();
  (*(*(v53 - 8) + 56))(v78, 1, 1, v53);
  v54 = v81;
  sub_20C134F94();
  v55 = sub_20C134FB4();
  (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0);
  (*(*(v56 - 8) + 56))(v86, 1, 1, v56);
  v100 = v48;
  v57 = v48;
  v58 = v88;
  (*(v88 + 16))(v50, v88);
  v59 = sub_20C135F14();
  (*(*(v59 - 8) + 56))(v87, 1, 1, v59);

  v60 = v77;
  sub_20C134F54();
  v61 = v80;
  v62 = v82;
  (*(v80 + 16))(v79, v60, v82);
  v63 = v89;
  sub_20C1391F4();
  v100 = v57;
  (*(v58 + 8))(v50, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();

  swift_getObjectType();
  sub_20BC5D0C8(&qword_281103B30, MEMORY[0x277D542C0]);
  v64 = v63;
  v65 = v90;
  sub_20C13A764();
  swift_unknownObjectRelease();
  (*(v91 + 8))(v64, v65);
  (*(v61 + 8))(v60, v62);
  return (*(v96 + 8))(v93, v97);
}

uint64_t sub_20BC5D0C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BC5D290()
{
  v0 = sub_20C138FB4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C139444();
    v5 = sub_20C139424();
    sub_20BC5D3B0(v3, v5);

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

void sub_20BC5D3B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C1391E4();
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x28223BE20](v4);
  v68 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C134C44();
  MEMORY[0x28223BE20](v6 - 8);
  v67 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70);
  MEMORY[0x28223BE20](v8 - 8);
  v66 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0);
  MEMORY[0x28223BE20](v10 - 8);
  v65 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80);
  MEMORY[0x28223BE20](v12 - 8);
  v64 = &v55 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900);
  MEMORY[0x28223BE20](v14 - 8);
  v61 = &v55 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90);
  MEMORY[0x28223BE20](v16 - 8);
  v59 = &v55 - v17;
  v18 = sub_20C135D24();
  v57 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_20C134F74();
  v62 = *(v63 - 8);
  v21 = MEMORY[0x28223BE20](v63);
  v58 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v60 = &v55 - v23;
  v24 = sub_20C136674();
  v56 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_20C135B44();
  v71 = *(v27 - 8);
  v72 = v27;
  MEMORY[0x28223BE20](v27);
  v29 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_20C138FB4();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = (&v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v33, a1, v30);
  if ((*(v31 + 88))(v33, v30) != *MEMORY[0x277D54210])
  {
    (*(v31 + 8))(v33, v30);
    return;
  }

  (*(v31 + 96))(v33, v30);
  v34 = *v33;
  if (!a2)
  {

    v76 = 0u;
    v77 = 0u;
    goto LABEL_12;
  }

  v73 = sub_20C1349F4();
  v74 = v35;
  sub_20C13DC04();
  if (!*(a2 + 16) || (v36 = sub_20B65B190(&v75), (v37 & 1) == 0))
  {
    sub_20B51D9C4(&v75);
    v76 = 0u;
    v77 = 0u;

LABEL_12:
    sub_20B8006F4(&v76);
    return;
  }

  sub_20B51F1D8(*(a2 + 56) + 32 * v36, &v76);
  sub_20B51D9C4(&v75);
  if (!*(&v77 + 1))
  {

    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0 || sub_20C1336E4() >= 0xF8u)
  {
    goto LABEL_8;
  }

  sub_20C133694();
  v38 = sub_20C1336F4();
  v40 = v39;
  if (v38 == sub_20C1336F4() && v40 == v41)
  {
  }

  else
  {
    v42 = sub_20C13DFF4();

    if ((v42 & 1) == 0)
    {
LABEL_8:

      return;
    }
  }

  v56[13](v26, *MEMORY[0x277D52BD0], v24);
  v56 = v34;
  sub_20BE7C5BC(v26, v56);
  (*(v71 + 16))(v20, v29, v72);
  (*(v57 + 104))(v20, *MEMORY[0x277D52148], v18);
  v43 = sub_20C1333A4();
  (*(*(v43 - 8) + 56))(v59, 1, 1, v43);
  v44 = sub_20C135664();
  (*(*(v44 - 8) + 56))(v61, 1, 1, v44);
  v45 = sub_20C135674();
  (*(*(v45 - 8) + 56))(v64, 1, 1, v45);
  v46 = v65;
  sub_20C134F94();
  v47 = sub_20C134FB4();
  (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0);
  (*(*(v48 - 8) + 56))(v66, 1, 1, v48);
  v49 = sub_20C135F14();
  (*(*(v49 - 8) + 56))(v67, 1, 1, v49);
  v50 = v60;
  sub_20C134F54();
  swift_getObjectType();
  v51 = v62;
  v52 = v63;
  (*(v62 + 16))(v58, v50, v63);
  v53 = v68;
  sub_20C1391F4();
  sub_20B526944(&qword_281103B30, MEMORY[0x277D542C0]);
  v54 = v70;
  sub_20C13A764();

  (*(v69 + 8))(v53, v54);
  (*(v51 + 8))(v50, v52);
  (*(v71 + 8))(v29, v72);
}

void *sub_20BC5DE8C()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  *&v3 = MEMORY[0x28223BE20](v2 - 8).n128_u64[0];
  v5 = &v14 - v4;
  v14.receiver = v0;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, sel_viewDidLoad, v3);
  result = [v0 view];
  if (result)
  {
    v7 = result;
    v8 = [objc_opt_self() systemBackgroundColor];
    [v7 setBackgroundColor_];

    v9 = [v0 navigationItem];
    [v9 setLargeTitleDisplayMode_];

    v10 = sub_20C13C914();
    [v0 setTitle_];

    v11 = *&v0[OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_dataProvider];
    v12 = sub_20C13CDF4();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v11;

    sub_20B6383D0(0, 0, v5, &unk_20C16BB60, v13);

    sub_20B793D44(0);
    return sub_20B795ECC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_20BC5E384(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_20C132E94();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.receiver = v2;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, sel_viewWillDisappear_, a1 & 1, v7);
  v10 = [v2 navigationController];
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  v12 = [v10 viewControllers];

  sub_20B62BB28();
  v13 = sub_20C13CC74();

  if (v13 >> 62)
  {
    if (sub_20C13DB34())
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

LABEL_10:
    v15 = 0;
    goto LABEL_11;
  }

LABEL_4:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x20F2F5430](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v14 = *(v13 + 32);
  }

  v15 = v14;

  v16 = [v15 navigationItem];
  [v16 setBackBarButtonItem_];

LABEL_11:
  v23 = v2;
  sub_20C132E84();
  sub_20BC5F1B4(&unk_27C76C940);
  sub_20C139274();
  (*(v6 + 8))(v9, v5);
  v17 = [v2 navigationController];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 viewControllers];
    sub_20B62BB28();
    v20 = sub_20C13CC74();

    v23 = v2;
    MEMORY[0x28223BE20](v21);
    *(&v22 - 2) = &v23;
    LOBYTE(v19) = sub_20B79AEEC(sub_20B5978BC, (&v22 - 4), v20);

    if ((v19 & 1) == 0)
    {
      v23 = v2;
      sub_20BC5F1B4(&unk_27C76C960);
      sub_20C138C64();
    }
  }
}

uint64_t sub_20BC5EA6C@<X0>(uint64_t *a1@<X8>)
{
  v3 = (*(*(*v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanGalleryDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker);
  v4 = v3[3];
  v5 = v3[4];
  v6 = __swift_project_boxed_opaque_existential_1(v3, v4);
  a1[3] = v4;
  a1[4] = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v8 = *(*(v4 - 8) + 16);

  return v8(boxed_opaque_existential_1, v6, v4);
}

uint64_t sub_20BC5EB24@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_dataProvider);
  v4 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanGalleryDataProvider_metricPage;
  v5 = sub_20C1333A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_20BC5EBF8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20BC5ECE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v5 = sub_20BC5F1B4(&unk_27C76C940);

  return a3(ObjectType, v5, a2);
}

char *sub_20BC5ED70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v26[3] = a6;
  v26[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a2, a6);
  v16 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_dynamicOfferCoordinator;
  *&a5[v16] = [objc_allocWithZone(type metadata accessor for MarketingDynamicOfferCoordinator()) init];
  v17 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_purchaseCoordinator;
  *&a5[v17] = [objc_allocWithZone(type metadata accessor for MarketingPurchaseCoordinator()) init];
  v18 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_purchaseHandler;
  *&a5[v18] = [objc_allocWithZone(type metadata accessor for MarketingPurchaseHandler()) init];
  v19 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_webUserInterfaceCoordinator;
  *&a5[v19] = [objc_allocWithZone(type metadata accessor for MarketingWebUserInterfaceCoordinator()) init];
  *&a5[OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_resignActiveObserver] = 0;
  a5[OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_visibility] = 1;
  *&a5[OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080);
  sub_20C133AA4();
  *&a5[OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_bag] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&a5[OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_eventHub] = v25;
  sub_20B51CC64(v26, &a5[OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_pageNavigator]);
  sub_20C133AA4();
  a5[OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_platform] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B52E424(&v25, &a5[OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_storefrontLocalizer]);
  v20 = &a5[OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_galleryTitle];
  *v20 = a3;
  v20[1] = a4;
  type metadata accessor for WorkoutPlanGalleryDataProvider();
  swift_allocObject();

  *&a5[OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_dataProvider] = sub_20BACFFA8(v21);
  v24.receiver = a5;
  v24.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v24, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v26);
  *(*&v22[OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanGalleryDataProvider_delegate + 8) = &off_2822D9150;
  swift_unknownObjectWeakAssign();
  return v22;
}

char *sub_20BC5F048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, objc_class *a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v23 - v18;
  (*(v13 + 32))(&v23 - v18, v17);
  v20 = objc_allocWithZone(a5);
  (*(v13 + 16))(v15, v19, a6);
  v21 = sub_20BC5ED70(a1, v15, a3, a4, v20, a6, a7);
  (*(v13 + 8))(v19, a6);
  return v21;
}

uint64_t sub_20BC5F1B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutPlanGalleryViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_20BC5F1F4()
{
  v1 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_dynamicOfferCoordinator;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for MarketingDynamicOfferCoordinator()) init];
  v2 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_purchaseCoordinator;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for MarketingPurchaseCoordinator()) init];
  v3 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_purchaseHandler;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for MarketingPurchaseHandler()) init];
  v4 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_webUserInterfaceCoordinator;
  *(v0 + v4) = [objc_allocWithZone(type metadata accessor for MarketingWebUserInterfaceCoordinator()) init];
  *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_resignActiveObserver) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_visibility) = 1;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BC5F66C(void *a1)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  sub_20C13B424();
  v9 = sub_20C13BB74();
  v10 = sub_20C13D1F4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_20B517000, v9, v10, "[UM] Action received for summary banner.", v11, 2u);
    MEMORY[0x20F2F6A40](v11, -1, -1);
  }

  v12 = *(v3 + 8);
  v12(v8, v2);
  v13 = [a1 originalRequest];
  v14 = [a1 selectedActionIdentifier];
  if (!v14)
  {
    sub_20C13C954();
    v14 = sub_20C13C914();
  }

  v15 = [v13 locateActionWithIdentifier_];

  if (v15)
  {
    v16 = [a1 originalRequest];
    v17 = [v16 identifier];

    if (v17)
    {
      v18 = sub_20C13C954();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

    sub_20C05BA10(v15, v18, v20);
  }

  else
  {
    sub_20C13B424();
    v21 = sub_20C13BB74();
    v22 = sub_20C13D1D4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_20B517000, v21, v22, "[UM] Summary Banner local action unidentified", v23, 2u);
      MEMORY[0x20F2F6A40](v23, -1, -1);
    }

    return (v12)(v5, v2);
  }
}

void sub_20BC5F968(void *a1)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = a1;
    sub_20C13B424();
    v7 = a1;
    v8 = sub_20C13BB74();
    v9 = sub_20C13D1D4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136446210;
      swift_getErrorValue();
      v12 = MEMORY[0x20F2F5860](v15[2], v15[3]);
      v14 = sub_20B51E694(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_20B517000, v8, v9, "[UM] Summary Banner error: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x20F2F6A40](v11, -1, -1);
      MEMORY[0x20F2F6A40](v10, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v5, v2);
  }
}

id AvatarSettings.contact.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t AvatarSettings.userFullName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t AvatarSettings.username.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t AvatarSettings.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  if (*v0)
  {
    sub_20C13E184();
    v4 = v1;
    sub_20C13D604();

    if (v2)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_20C13E184();
    if (v3)
    {
      goto LABEL_4;
    }

    return sub_20C13E184();
  }

  sub_20C13E184();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_20C13E184();
  sub_20C13CA64();
  if (!v3)
  {
    return sub_20C13E184();
  }

LABEL_4:
  sub_20C13E184();

  return sub_20C13CA64();
}

uint64_t AvatarSettings.hashValue.getter()
{
  sub_20C13E164();
  AvatarSettings.hash(into:)();
  return sub_20C13E1B4();
}

uint64_t sub_20BC5FD30()
{
  sub_20C13E164();
  AvatarSettings.hash(into:)();
  return sub_20C13E1B4();
}

uint64_t sub_20BC5FD88()
{
  sub_20C13E164();
  AvatarSettings.hash(into:)();
  return sub_20C13E1B4();
}

BOOL _s9SeymourUI14AvatarSettingsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (*a1)
  {
    if (!v8)
    {
      return 0;
    }

    v21 = *(a2 + 32);
    v12 = *(a1 + 32);
    v13 = *(a2 + 24);
    v14 = *(a1 + 24);
    sub_20BC5FFE8();
    v15 = v8;
    v16 = v2;
    v17 = sub_20C13D5F4();

    v4 = v14;
    v9 = v13;
    v6 = v12;
    v11 = v21;
    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v5)
  {
    if (!v10)
    {
      return 0;
    }

    if (v3 != v7 || v5 != v10)
    {
      v18 = v4;
      v19 = sub_20C13DFF4();
      v4 = v18;
      if ((v19 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v6)
  {
    return v11 && (v4 == v9 && v6 == v11 || (sub_20C13DFF4() & 1) != 0);
  }

  return !v11;
}

unint64_t sub_20BC5FF28()
{
  result = qword_27C76C9E0;
  if (!qword_27C76C9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76C9E0);
  }

  return result;
}