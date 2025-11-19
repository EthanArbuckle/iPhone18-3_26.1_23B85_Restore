void sub_21D47F1F4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  if (v2 != 6)
  {
    v3 = *a2;
    v4 = sub_21D47CDF4();
    v5 = *&v4[OBJC_IVAR____TtC15RemindersUICore30TTRIQuickBarInputAccessoryView_quickBar];

    v6 = *&v5[OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_tabBar];
    v7 = v6;

    if (v6)
    {
      v8 = *&v7[OBJC_IVAR____TtC15RemindersUICore18TTRIQuickBarTabBar_items];
      if (v8)
      {
        sub_21DBF8E0C();

        v9 = *(v8 + 16);
        if (v9)
        {
          v15 = v3;
          v10 = v8 + 32;
          v11 = MEMORY[0x277D84F90];
          do
          {
            sub_21D47F938(v10, v17);
            sub_21DBFBE1C();
            sub_21D1AEF04(v17);
            if ((swift_dynamicCast() & 1) != 0 && v16 != 6)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v11 = sub_21D2111A8(0, *(v11 + 2) + 1, 1, v11);
              }

              v13 = *(v11 + 2);
              v12 = *(v11 + 3);
              if (v13 >= v12 >> 1)
              {
                v11 = sub_21D2111A8((v12 > 1), v13 + 1, 1, v11);
              }

              *(v11 + 2) = v13 + 1;
              v11[v13 + 32] = v16;
            }

            v10 += 88;
            --v9;
          }

          while (v9);

          v3 = v15;
        }

        else
        {

          v11 = MEMORY[0x277D84F90];
        }

        sub_21D6D8B3C(v2, v11);
        if (v14)
        {
        }

        else
        {
          sub_21D6D8B3C(v3, v11);
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void *sub_21D47F414()
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_13;
  }

  v0 = sub_21D47CDF4();

  v1 = *&v0[OBJC_IVAR____TtC15RemindersUICore30TTRIQuickBarInputAccessoryView_quickBar];

  v2 = *&v1[OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_upperBar];
  if (!v2)
  {

LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  v3 = *(v2 + 24);

  result = *&v3[OBJC_IVAR____TtC15RemindersUICore25TTRIQuickBarQuickPickView_stackView];
  if (!result)
  {
    goto LABEL_17;
  }

  v5 = [result arrangedSubviews];
  sub_21D0D8CF0(0, &qword_280D176A0);
  v6 = sub_21DBFA5EC();

  if (v6 >> 62)
  {
    result = sub_21DBFBD7C();
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_12:

    goto LABEL_13;
  }

LABEL_6:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x223D44740](0, v6);
    goto LABEL_9;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v6 + 32);
LABEL_9:
    v8 = v7;

    v9 = sub_21DBFC62C();

LABEL_14:
    UIAccessibilityPostNotification(*MEMORY[0x277D76488], v9);
    return swift_unknownObjectRelease();
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void sub_21D47F5CC(void *a1)
{
  v2 = v1;
  sub_21DBFBE1C();
  if ((swift_dynamicCast() & 1) != 0 && (v4 = LOBYTE(v25[0]), LOBYTE(v25[0]) != 6))
  {
    v5 = (v1 + 64);
    if (*(v1 + 64) == LOBYTE(v25[0]))
    {
      v6 = sub_21D47CDF4();
      v7 = *&v6[OBJC_IVAR____TtC15RemindersUICore30TTRIQuickBarInputAccessoryView_quickBar];

      v8 = *&v7[OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_bottomBarToContainerTopConstraint];
      if ((!v8 || ([v8 isActive] & 1) == 0) && *&v7[OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_upperBar])
      {

        sub_21D496E04(v9, 1, 1);
      }

      v26 = 0;
      memset(v25, 0, sizeof(v25));
      v10 = objc_opt_self();
      sub_21D0D3954(v25, v23, &qword_27CE5BE60);
      v11 = swift_allocObject();
      v12 = v23[1];
      *(v11 + 24) = v23[0];
      *(v11 + 16) = a1;
      *(v11 + 40) = v12;
      *(v11 + 56) = v24;
      aBlock[4] = sub_21D4802EC;
      aBlock[5] = v11;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0D74FC;
      aBlock[3] = &block_descriptor_24;
      v13 = _Block_copy(aBlock);
      v14 = a1;

      [v10 animateWithDuration:v13 animations:0.2];
      _Block_release(v13);
      sub_21D0CF7E0(v25, &qword_27CE5BE60);
      v15 = *(v2 + 48);
      v16 = &v15[OBJC_IVAR____TtC15RemindersUICore30TTRIQuickBarInputAccessoryView_cachedQuickBarFittingSize];
      *v16 = 0;
      *(v16 + 1) = 0;
      v16[16] = 1;
      [v15 invalidateIntrinsicContentSize];
      UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
    }

    if (v4 > 2)
    {
      if (v4 == 4)
      {
        sub_21D4BC2A4();
      }
    }

    else if (v4)
    {
      if (v4 == 1)
      {
        v17 = *(v2 + 16);
        LOBYTE(aBlock[0]) = 0;
        v18 = _s15RemindersUICore27TTRIAlertControllerAssemblyO22contactsAccessSettings14relatedFeature07didOpenH7Handler06cancelM0So07UIAlertD0CSgAA011TTRContactsg5AlertJ0O_ySo0O6ActionCcSgAOtFZ_0(aBlock, 0, 0, 0, 0);
        if (v18)
        {
          v19 = v18;
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v20 = *(v17 + 24);
            ObjectType = swift_getObjectType();
            (*(v20 + 64))(v17, &off_282EC0338, v19, ObjectType, v20);

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }
      }

      else
      {
        sub_21D4BC658();
      }
    }

    LOBYTE(v25[0]) = 1;
    TTRITipKitSignal.donate(signalContext:)(0);
  }

  else
  {
    v5 = (v1 + 64);
  }

  *v5 = 6;
}

uint64_t sub_21D47F99C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];

  v2 = sub_21DBFC01C();
  v1(&v7, v2);
  result = sub_21DBFC42C();
  v4 = v7;
  if (v7)
  {
    while (1)
    {
      v5 = *&v4[OBJC_IVAR____TtC15RemindersUICore29TTRIQuickBarQuickPickItemView_button];
      if (!v5)
      {
        break;
      }

      v6 = v5;

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      result = sub_21DBFC42C();
      v4 = v7;
      if (!v7)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_4:

    return v8;
  }

  return result;
}

uint64_t sub_21D47FAA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIQuickBarQuickPickItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D47FB08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D47FB70(uint64_t a1)
{
  v2 = type metadata accessor for TTRIQuickBarQuickPickItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21D47FC7C()
{
  v1 = sub_21D47CDF4();
  v2 = *&v1[OBJC_IVAR____TtC15RemindersUICore30TTRIQuickBarInputAccessoryView_quickBar];

  v3 = *&v2[OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_bottomBarToContainerTopConstraint];
  if (v3)
  {
    v4 = v3;
    v5 = [v4 isActive];

    if (v5)
    {
      return;
    }
  }

  else
  {
  }

  v6 = *(*(*(v0 + 48) + OBJC_IVAR____TtC15RemindersUICore30TTRIQuickBarInputAccessoryView_quickBar) + OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_upperBar);
  if (v6)
  {
    v7 = *(v6 + 24);
    v17[5] = MEMORY[0x277D84F90];
    v8 = v7;
    sub_21DBFC01C();
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = v9;
    v11 = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C8E0);
    inited = swift_initStackObject();
    *(inited + 16) = sub_21D480240;
    *(inited + 24) = v10;
    v13 = v11;
    sub_21D4B026C(v13, v9, v17);
    v14 = v17[0];
    if (v17[0])
    {
      while (1)
      {
        v15 = *&v14[OBJC_IVAR____TtC15RemindersUICore29TTRIQuickBarQuickPickItemView_button];
        if (!v15)
        {
          break;
        }

        v16 = v15;

        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        sub_21D4B026C(v13, v9, v17);
        v14 = v17[0];
        if (!v17[0])
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_9:
    }
  }
}

void sub_21D47FE98()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C8C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &aBlock[-1] - v3;
  v5 = type metadata accessor for TTRIQuickBarQuickPickItem(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBFBE1C();
  v9 = swift_dynamicCast();
  (*(v6 + 56))(v4, v9 ^ 1u, 1, v5);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_21D0CF7E0(v4, &qword_27CE5C8C0);
  }

  else
  {
    sub_21D47FAA4(v4, v8);
    sub_21D4BC7E0(v8);
    v10 = sub_21D47CDF4();
    v11 = *&v10[OBJC_IVAR____TtC15RemindersUICore30TTRIQuickBarInputAccessoryView_quickBar];

    v12 = *&v11[OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_bottomBarToContainerTopConstraint];
    if (!v12 || ([v12 isActive] & 1) == 0)
    {
      if (*&v11[OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_upperBar])
      {

        sub_21D496E04(v13, 1, 1);
      }
    }

    v14 = *(*(*(v1 + 48) + OBJC_IVAR____TtC15RemindersUICore30TTRIQuickBarInputAccessoryView_quickBar) + OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_tabBar);
    if (v14)
    {
      v27 = 0;
      memset(v26, 0, sizeof(v26));
      v15 = objc_opt_self();
      sub_21D0D3954(v26, v24, &qword_27CE5BE60);
      v16 = swift_allocObject();
      v17 = v24[1];
      *(v16 + 24) = v24[0];
      *(v16 + 16) = v14;
      *(v16 + 40) = v17;
      *(v16 + 56) = v25;
      aBlock[4] = sub_21D480234;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0D74FC;
      aBlock[3] = &block_descriptor_32;
      v18 = _Block_copy(aBlock);
      v19 = v14;

      [v15 animateWithDuration:v18 animations:0.2];
      _Block_release(v18);

      sub_21D0CF7E0(v26, &qword_27CE5BE60);
      v20 = *(v1 + 48);
      v21 = &v20[OBJC_IVAR____TtC15RemindersUICore30TTRIQuickBarInputAccessoryView_cachedQuickBarFittingSize];
      *v21 = 0;
      *(v21 + 1) = 0;
      v21[16] = 1;
      [v20 invalidateIntrinsicContentSize];
      sub_21D47FB70(v8);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t objectdestroy_10Tm()
{
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_21D480298(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_21D480304@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t TTRIPreferredContentSizeUpdater.__allocating_init(hostViewController:contentScrollView:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  swift_unknownObjectWeakAssign();

  *(v4 + 24) = a2;
  return v4;
}

uint64_t TTRIPreferredContentSizeUpdater.init(hostViewController:contentScrollView:)(void *a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  swift_unknownObjectWeakAssign();

  *(v2 + 24) = a2;
  return v2;
}

Swift::Void __swiftcall TTRIPreferredContentSizeUpdater.viewWillLayoutSubviews()()
{
  v1 = v0;
  v2 = *(v0 + 40);
  *(v0 + 40) = 0;
  if (*(v0 + 32))
  {
    if ((v2 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    v3 = *(v0 + 24);
    swift_getKeyPath();
    swift_allocObject();
    swift_weakInit();
    v4 = v3;
    v5 = sub_21DBF530C();

    v6 = *(v1 + 32);
    *(v1 + 32) = v5;
  }

  v7 = *(v1 + 24);
  [v7 layoutIfNeeded];
  EKUIContainedControllerIdealWidth();
  v9 = v8;
  EKUIContainedControllerIdealHeight();
  v11 = v10;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v12 = v7;
    sub_21D4806A4(v11);
    v11 = v13;
  }

  else
  {
    [v7 contentSize];
    if (v14 < v11)
    {
      v11 = v14;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    [Strong setPreferredContentSize_];
  }
}

uint64_t sub_21D4805A4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C708);
    sub_21DBF52FC();
    if ((v1 & 1) == 0)
    {
      sub_21DBF52EC();
    }
  }

  return result;
}

void sub_21D4806A4(CGFloat a1)
{
  v2 = v1;
  v4 = sub_21DBF5D5C();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 numberOfSections];
  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
  }

  else
  {
    v10 = v9;
    if (v9)
    {
      v11 = 0;
      v12 = (v5 + 8);
      v13 = &selRef_setQueryFragment_;
      while (1)
      {
        v14 = [v2 v13[125]];
        if ((v14 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_17;
        }

        v15 = v14;
        if (v14)
        {
          break;
        }

LABEL_4:
        if (++v11 == v10)
        {
          [v2 rectForSection_];
          x = v32.origin.x;
          y = v32.origin.y;
          width = v32.size.width;
          height = v32.size.height;
          if (!CGRectIsEmpty(v32))
          {
            v33.origin.x = x;
            v33.origin.y = y;
            v33.size.width = width;
            v33.size.height = height;
            CGRectGetMaxY(v33);
          }

          goto LABEL_11;
        }
      }

      v16 = 0;
      while (1)
      {
        MEMORY[0x223D3E470](v16, v11);
        v17 = sub_21DBF5C6C();
        (*v12)(v8, v4);
        [v2 rectForRowAtIndexPath_];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;

        v31.origin.x = v19;
        v31.origin.y = v21;
        v31.size.width = v23;
        v31.size.height = v25;
        if (CGRectGetMaxY(v31) >= a1)
        {
          break;
        }

        if (v15 == ++v16)
        {
          v13 = &selRef_setQueryFragment_;
          goto LABEL_4;
        }
      }
    }

    else
    {
LABEL_11:
      if ([v2 style] == 2)
      {
        [v2 layoutMargins];
      }
    }
  }
}

uint64_t TTRIPreferredContentSizeUpdater.deinit()
{
  MEMORY[0x223D46650](v0 + 16);

  return v0;
}

uint64_t TTRIPreferredContentSizeUpdater.__deallocating_deinit()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocClassInstance();
}

id sub_21D4809C4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  if (v2)
  {
    v3 = *(v0 + 32);
  }

  else
  {
    sub_21D1986C4(&unk_282EA6408, &unk_282EA6428, 0, 5uLL);
    v3 = sub_21D480BA8(v4);

    sub_21D1986C4(&unk_282EA6408, &unk_282EA6428, 2, 0xDuLL);
    v6 = sub_21D480BA8(v5);

    v7 = *(v0 + 32);
    v8 = *(v0 + 40);
    *(v0 + 32) = v3;
    *(v0 + 40) = v6;
    v9 = v3;
    v6;
    sub_21D4824A8(v7, v8);
  }

  sub_21D4824E8(v1, v2);
  return v3;
}

uint64_t sub_21D480A98()
{
  v1 = sub_21D4809C4();

  if (v1)
  {
    v3 = v1;
    v4 = [v3 barButtonItems];
    sub_21D0D8CF0(0, &qword_280D0C300);
    v5 = sub_21DBFA5EC();
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = *(v0 + 40);
  v7 = [v6 barButtonItems];

  sub_21D0D8CF0(0, &qword_280D0C300);
  v8 = sub_21DBFA5EC();

  sub_21D562204(v8);
  return v5;
}

id sub_21D480BA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v11[1] = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      v10 = v5;
      sub_21D480CE4(&v10, v1, v11);
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      --v2;
    }

    while (v2);
  }

  v6 = objc_allocWithZone(MEMORY[0x277D751F0]);
  sub_21D0D8CF0(0, &qword_280D0C300);
  v7 = sub_21DBFA5DC();

  v8 = [v6 initWithBarButtonItems:v7 representativeItem:0];

  return v8;
}

uint64_t sub_21D480CE4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v14 = *a1;
  sub_21D486C20(v15);
  sub_21D0D8CF0(0, &qword_280D0C300);
  v6 = v15[5];
  v7 = sub_21DBFAFDC();
  v8 = sub_21DBFA12C();
  [v7 setAccessibilityLabel_];

  v9 = sub_21DBFA12C();
  [v7 setAccessibilityHint_];

  if (qword_280D17218 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_280D17220 == 1)
  {
    v16 = v5;
    sub_21D480ED0(&v16, &v12);
    v10 = v12;
    if (v13)
    {
      [v7 setPrimaryAction_];
    }

    else
    {
      [v7 setMenu_];
      [v7 setPreferredMenuElementOrder_];
    }
  }

  else
  {
    [v7 setTarget_];
    [v7 setAction_];
  }

  result = sub_21D1AEF04(v15);
  *a3 = v7;
  return result;
}

uint64_t sub_21D480ED0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v4 = swift_allocObject();
      swift_weakInit();

      v5 = sub_21D1AEF90;
      goto LABEL_12;
    }

    if (v3 != 4)
    {
      v4 = swift_allocObject();
      swift_weakInit();

      v5 = sub_21D1AEF58;
      goto LABEL_12;
    }
  }

  else
  {
    if (!*a1)
    {
      v4 = swift_allocObject();
      swift_weakInit();

      v5 = sub_21D1AEFD0;
      goto LABEL_12;
    }

    if (v3 == 1)
    {
      v4 = swift_allocObject();
      swift_weakInit();

      v5 = sub_21D1AEFC8;
LABEL_12:
      v7 = _sSo6UIMenuC15RemindersUICoreE12ttr_uncached7options_ABSo0A7OptionsV_ABSgyctFZ_0(0, v5, v4);

      v8 = 0;
      goto LABEL_13;
    }
  }

  sub_21D0D8CF0(0, &qword_280D0C1D0);
  swift_allocObject();
  swift_weakInit();
  result = sub_21DBFB77C();
  v7 = result;
  v8 = 1;
LABEL_13:
  *a2 = v7;
  *(a2 + 8) = v8;
  return result;
}

uint64_t sub_21D48114C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    a3(v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21D4811C8(uint64_t a1)
{
  v2 = v1;
  sub_21D0CEB98(a1, &aBlock);
  sub_21D0D8CF0(0, &qword_280D0C300);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v3 = v49;
  aBlock = sub_21D480A98();
  v43 = &unk_282EA6430;
  MEMORY[0x28223BE20](aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C8E8);
  sub_21D4828E8();
  sub_21DBFA48C();

  v4 = v49;
  if (v49 == 6)
  {
    goto LABEL_3;
  }

  if (((1 << v49) & 0x2B) == 0)
  {
    if (v49 == 2)
    {
      sub_21D4BC658();
    }

    else
    {
      sub_21D4BC2A4();
    }

    goto LABEL_3;
  }

  v5 = *(v1 + 64);
  LOBYTE(aBlock) = v49;
  v6 = sub_21D4873FC(&aBlock, v5);
  if (!v6)
  {
LABEL_3:

    return;
  }

  v7 = v6;
  LOBYTE(aBlock) = 1;
  TTRITipKitSignal.donate(signalContext:)(0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [v9 presentingViewController];
    if (v10)
    {

      v11 = [v9 viewIfLoaded];
      v12 = [v11 window];

      if (v12)
      {

        v13 = v9[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_quickBarTabBarItem];
        if (v13 != 6 && v13 == v4)
        {

          goto LABEL_3;
        }

        goto LABEL_18;
      }
    }

    else
    {
    }
  }

LABEL_18:
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  *(v14 + 24) = v7;
  *(v14 + 32) = v4;
  *(v14 + 40) = v3;
  v15 = swift_unknownObjectWeakLoadStrong();
  v16 = v3;

  if (v15)
  {
    v17 = v15;
    sub_21DBF8E0C();
    v18 = [v17 presentingViewController];
    if (v18)
    {

      v19 = [v17 viewIfLoaded];
      v20 = [v19 window];

      if (v20)
      {

        swift_unknownObjectWeakAssign();
        v21 = swift_allocObject();
        *(v21 + 16) = sub_21D48294C;
        *(v21 + 24) = v14;
        v46 = sub_21D482BBC;
        v47 = v21;
        aBlock = MEMORY[0x277D85DD0];
        v43 = 1107296256;
        v44 = sub_21D0D74FC;
        v45 = &block_descriptor_29_0;
        v22 = _Block_copy(&aBlock);

        [v17 dismissViewControllerAnimated:0 completion:v22];

        _Block_release(v22);

        return;
      }
    }

    else
    {
    }

    if (v4 == 1)
    {
      goto LABEL_30;
    }
  }

  else
  {
    sub_21DBF8E0C();
    if (v4 == 1)
    {
LABEL_30:
      v33 = *(v2 + 48);
      v34 = swift_allocObject();
      *(v34 + 16) = v2;
      *(v34 + 24) = v7;
      *(v34 + 32) = 1;
      *(v34 + 40) = v16;
      *(v34 + 48) = 0;
      LOBYTE(aBlock) = 0;
      v35 = v16;
      swift_retain_n();
      v36 = v35;
      sub_21DBF8E0C();
      v37 = _s15RemindersUICore27TTRIAlertControllerAssemblyO22contactsAccessSettings14relatedFeature07didOpenH7Handler06cancelM0So07UIAlertD0CSgAA011TTRContactsg5AlertJ0O_ySo0O6ActionCcSgAOtFZ_0(&aBlock, sub_21D48295C, v34, sub_21D48295C, v34);
      if (v37)
      {
        v38 = v37;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v39 = *(v33 + 24);
          ObjectType = swift_getObjectType();
          (*(v39 + 64))(v33, &off_282EC0338, v38, ObjectType, v39);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {
        v41 = [objc_allocWithZone(MEMORY[0x277D750F8]) init];
        sub_21D482960(v2, v7, 1, v36);
      }

      return;
    }
  }

  v23 = *(v2 + 72);
  v24 = type metadata accessor for TTRIQuickBarPopoverContentViewController();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v25[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_keyboardWillHideObserver] = 0;
  *&v25[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_quickPickView] = 0;
  v26 = OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_dateIconGenerator;
  type metadata accessor for TTRIDateIconGenerator();
  *&v25[v26] = swift_allocObject();
  *&v25[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_quickPicks] = v7;
  v25[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_quickBarTabBarItem] = v4;
  v25[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_isForGroceries] = v23;
  v48.receiver = v25;
  v48.super_class = v24;
  v27 = objc_msgSendSuper2(&v48, sel_initWithNibName_bundle_, 0, 0);
  [v27 setModalPresentationStyle_];
  v28 = [v27 popoverPresentationController];
  if (v28)
  {
    v29 = v28;
    [v28 setBarButtonItem_];
  }

  *&v27[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_delegate + 8] = &off_282EBEA70;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v30 = *(v2 + 48);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v31 = *(v30 + 24);
    v32 = swift_getObjectType();
    (*(v31 + 16))(v30, &off_282EC0338, v27, 0, v32, v31);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_21D481928(char a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  if (a4 == 1)
  {
    v9 = *(a2 + 48);
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = a3;
    *(v10 + 32) = 1;
    *(v10 + 40) = a5;
    *(v10 + 48) = a1 & 1;
    LOBYTE(v38[0]) = 0;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v11 = a5;
    v12 = _s15RemindersUICore27TTRIAlertControllerAssemblyO22contactsAccessSettings14relatedFeature07didOpenH7Handler06cancelM0So07UIAlertD0CSgAA011TTRContactsg5AlertJ0O_ySo0O6ActionCcSgAOtFZ_0(v38, sub_21D482BC4, v10, sub_21D482BC4, v10);
    if (v12)
    {
      v13 = v12;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v14 = *(v9 + 24);
        ObjectType = swift_getObjectType();
        (*(v14 + 64))(v9, &off_282EC0338, v13, ObjectType, v14);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
      v36 = [objc_allocWithZone(MEMORY[0x277D750F8]) init];
      v27 = *(a2 + 72);
      v28 = type metadata accessor for TTRIQuickBarPopoverContentViewController();
      v29 = objc_allocWithZone(v28);
      *&v29[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      *&v29[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_keyboardWillHideObserver] = 0;
      *&v29[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_quickPickView] = 0;
      v30 = OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_dateIconGenerator;
      type metadata accessor for TTRIDateIconGenerator();
      *&v29[v30] = swift_allocObject();
      *&v29[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_quickPicks] = a3;
      v29[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_quickBarTabBarItem] = 1;
      v29[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_isForGroceries] = v27;
      v37.receiver = v29;
      v37.super_class = v28;
      sub_21DBF8E0C();
      v31 = objc_msgSendSuper2(&v37, sel_initWithNibName_bundle_, 0, 0);
      [v31 setModalPresentationStyle_];
      v32 = [v31 popoverPresentationController];
      if (v32)
      {
        v33 = v32;
        [v32 setBarButtonItem_];
      }

      *&v31[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_delegate + 8] = &off_282EBEA70;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectWeakAssign();
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v34 = *(v9 + 24);
        v35 = swift_getObjectType();
        (*(v34 + 16))(v9, &off_282EC0338, v31, 0, v35, v34);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  else
  {
    v17 = *(a2 + 72);
    v18 = type metadata accessor for TTRIQuickBarPopoverContentViewController();
    v19 = objc_allocWithZone(v18);
    *&v19[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    *&v19[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_keyboardWillHideObserver] = 0;
    *&v19[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_quickPickView] = 0;
    v20 = OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_dateIconGenerator;
    type metadata accessor for TTRIDateIconGenerator();
    *&v19[v20] = swift_allocObject();
    *&v19[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_quickPicks] = a3;
    v19[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_quickBarTabBarItem] = a4;
    v19[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_isForGroceries] = v17;
    v39.receiver = v19;
    v39.super_class = v18;
    sub_21DBF8E0C();
    v21 = objc_msgSendSuper2(&v39, sel_initWithNibName_bundle_, 0, 0);
    [v21 setModalPresentationStyle_];
    v22 = [v21 popoverPresentationController];
    if (v22)
    {
      v23 = v22;
      [v22 setBarButtonItem_];
    }

    *&v21[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_delegate + 8] = &off_282EBEA70;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectWeakAssign();
    v24 = *(a2 + 48);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = *(v24 + 24);
      v26 = swift_getObjectType();
      (*(v25 + 16))(v24, &off_282EC0338, v21, 0, v26, v25);
      swift_unknownObjectRelease();
    }
  }
}

void sub_21D481E50(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v9 = *(a2 + 72);
  v10 = type metadata accessor for TTRIQuickBarPopoverContentViewController();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v11[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_keyboardWillHideObserver] = 0;
  *&v11[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_quickPickView] = 0;
  v12 = OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_dateIconGenerator;
  type metadata accessor for TTRIDateIconGenerator();
  *&v11[v12] = swift_allocObject();
  *&v11[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_quickPicks] = a3;
  v11[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_quickBarTabBarItem] = a4;
  v11[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_isForGroceries] = v9;
  v19.receiver = v11;
  v19.super_class = v10;
  sub_21DBF8E0C();
  v13 = objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, 0, 0);
  [v13 setModalPresentationStyle_];
  v14 = [v13 popoverPresentationController];
  if (v14)
  {
    v15 = v14;
    [v14 setBarButtonItem_];
  }

  *&v13[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_delegate + 8] = &off_282EBEA70;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v16 = *(a2 + 48);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(v16 + 24);
    ObjectType = swift_getObjectType();
    (*(v17 + 16))(v16, &off_282EC0338, v13, 0, ObjectType, v17);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_21D4820A8()
{
  sub_21D157444(v0 + 16);
  sub_21D4824A8(*(v0 + 32), *(v0 + 40));
  swift_unknownObjectRelease();

  MEMORY[0x223D46650](v0 + 80);

  return swift_deallocClassInstance();
}

double sub_21D482124()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v1 = Strong;
  v2 = [v1 presentingViewController];
  if (!v2)
  {

    goto LABEL_7;
  }

  v3 = [v1 viewIfLoaded];
  v4 = [v3 window];

  if (!v4)
  {
LABEL_7:

LABEL_8:
    v6 = [objc_opt_self() mainScreen];
    v5 = [v6 traitCollection];

    goto LABEL_9;
  }

  v5 = [v1 traitCollection];
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_9:
  [v5 displayScale];
  [v5 layoutDirection];

  return 32.0;
}

void sub_21D482274(void (*a1)(uint64_t), uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    v7 = Strong;
    v8 = [v7 presentingViewController];
    if (v8)
    {

      v9 = [v7 viewIfLoaded];
      v10 = [v9 window];

      if (v10)
      {

        swift_unknownObjectWeakAssign();
        v11 = swift_allocObject();
        *(v11 + 16) = sub_21D0E6078;
        *(v11 + 24) = v4;
        v13[4] = sub_21D48283C;
        v13[5] = v11;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 1107296256;
        v13[2] = sub_21D0D74FC;
        v13[3] = &block_descriptor_33;
        v12 = _Block_copy(v13);

        [v7 dismissViewControllerAnimated:0 completion:v12];

        _Block_release(v12);

        return;
      }
    }

    else
    {
    }
  }

  a1(v6);
}

void sub_21D4824A8(void *a1, void *a2)
{
  if (a2)
  {
  }
}

id sub_21D4824E8(id result, void *a2)
{
  if (a2)
  {
    v2 = result;

    return a2;
  }

  return result;
}

void sub_21D482588(uint64_t a1, char a2, char a3)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  sub_21DBF8E0C();

  v5 = sub_21D487304(a1);
  v6 = sub_21D487380(a1);
  v25[0] = sub_21D480A98();
  v25[1] = 0;
  v25[2] = &unk_282EA6430;
  v25[3] = 0;
  v26 = 0;
  sub_21D47BAB8(&v23);
  v7 = v23;
  if (v23)
  {
    v8 = v24;
    do
    {
      v11 = sub_21D487244(a1);
      v12 = *(v11 + 16);
      v13 = (v11 + 32);
      do
      {
        if (!v12)
        {

          v9 = 1;
          v10 = &selRef_setHidden_;
          goto LABEL_4;
        }

        v14 = *v13++;
        --v12;
      }

      while (v14 != v8);

      [v7 setHidden_];
      [v7 setSelected_];
      v9 = sub_21D22D5B8(v8, v6);
      v10 = &selRef_setEnabled_;
LABEL_4:
      [v7 *v10];

      sub_21D47BAB8(&v23);
      v7 = v23;
      v8 = v24;
    }

    while (v23);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v16 = [v22 presentingViewController];
    if (v16)
    {

      v17 = [v22 viewIfLoaded];
      v18 = [v17 window];

      if (v18)
      {

        v19 = *(v22 + OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_quickBarTabBarItem);
        LOBYTE(v25[0]) = v19;
        v20 = sub_21D4873FC(v25, a1);
        if (v20)
        {
          LOBYTE(v25[0]) = v19;
          sub_21D49C688(v20, v25, a3 & 1);

          return;
        }
      }
    }

    else
    {
    }
  }
}

uint64_t sub_21D482868@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_21D0D8CF0(0, &qword_280D17680);
  result = sub_21DBFB63C();
  if (result)
  {
    v5 = v3;
  }

  else
  {
    v5 = 6;
  }

  *a2 = v5;
  return result;
}

unint64_t sub_21D4828E8()
{
  result = qword_27CE5C8F0;
  if (!qword_27CE5C8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5C8E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5C8F0);
  }

  return result;
}

void sub_21D482960(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = *(a1 + 72);
  v9 = type metadata accessor for TTRIQuickBarPopoverContentViewController();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v10[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_keyboardWillHideObserver] = 0;
  *&v10[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_quickPickView] = 0;
  v11 = OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_dateIconGenerator;
  type metadata accessor for TTRIDateIconGenerator();
  *&v10[v11] = swift_allocObject();
  *&v10[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_quickPicks] = a2;
  v10[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_quickBarTabBarItem] = a3;
  v10[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_isForGroceries] = v8;
  v18.receiver = v10;
  v18.super_class = v9;
  sub_21DBF8E0C();
  v12 = objc_msgSendSuper2(&v18, sel_initWithNibName_bundle_, 0, 0);
  [v12 setModalPresentationStyle_];
  v13 = [v12 popoverPresentationController];
  if (v13)
  {
    v14 = v13;
    [v13 setBarButtonItem_];
  }

  *&v12[OBJC_IVAR____TtC15RemindersUICore40TTRIQuickBarPopoverContentViewController_delegate + 8] = &off_282EBEA70;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v15 = *(a1 + 48);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v15 + 24);
    ObjectType = swift_getObjectType();
    (*(v16 + 16))(v15, &off_282EC0338, v12, 0, ObjectType, v16);
    swift_unknownObjectRelease();
  }
}

uint64_t objectdestroy_18Tm()
{

  return swift_deallocObject();
}

double sub_21D482D1C()
{
  v1 = &v0[OBJC_IVAR____TtC15RemindersUICore30TTRIQuickBarInputAccessoryView_cachedQuickBarFittingSize];
  if ((v0[OBJC_IVAR____TtC15RemindersUICore30TTRIQuickBarInputAccessoryView_cachedQuickBarFittingSize + 16] & 1) == 0)
  {
    return *v1;
  }

  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_bounds);
  [*&v0[OBJC_IVAR____TtC15RemindersUICore30TTRIQuickBarInputAccessoryView_quickBar] systemLayoutSizeFittingSize_];
  *v1 = result;
  *(v1 + 1) = v3;
  v1[16] = 0;
  return result;
}

uint64_t sub_21D48302C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5C908);
  v1 = __swift_project_value_buffer(v0, qword_27CE5C908);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRStartupItemQueue.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for TTRStartupItemQueue.UnprocessedStartupItems();
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x277D84F90];
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  return v0;
}

uint64_t TTRStartupItemQueue.deinit()
{
  if (*(v0 + 24))
  {

    sub_21DBFA96C();
  }

  return v0;
}

uint64_t TTRStartupItemQueue.__deallocating_deinit()
{
  if (*(v0 + 24))
  {

    sub_21DBFA96C();
  }

  return swift_deallocClassInstance();
}

uint64_t sub_21D483238()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  result = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  if (!v0[3])
  {
    v7 = sub_21DBFA89C();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = swift_allocObject();
    swift_weakInit();
    sub_21DBFA84C();

    v9 = sub_21DBFA83C();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v8;
    v10[5] = v2;

    v1[3] = sub_21D1B5178(0, 0, v6, &unk_21DC17688, v10);
  }

  return result;
}

uint64_t TTRStartupItemQueue.finish()()
{
  v1[2] = v0;
  sub_21DBFA84C();
  v1[3] = sub_21DBFA83C();
  v3 = sub_21DBFA7CC();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_21D483468, v3, v2);
}

uint64_t sub_21D483468()
{
  v1 = *(v0[2] + 24);
  v0[6] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_21D48355C;
    v3 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200460](v2, v1, v3);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_21D48355C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21D48367C, v3, v2);
}

uint64_t sub_21D48367C()
{

  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall TTRStartupItemQueue.cancel()()
{
  if (*(v0 + 24))
  {

    sub_21DBFA96C();
  }

  *(v0 + 24) = 0;

  v1 = *(v0 + 16);
  swift_beginAccess();
  *(v1 + 16) = MEMORY[0x277D84F90];
}

uint64_t TTRStartupItemQueue.unprocessedStartupItem<A>(withContextType:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C920);
  swift_getExtendedExistentialTypeMetadata();
  sub_21D483E24();
  sub_21DBFA48C();

  return a2;
}

uint64_t sub_21D483860@<X0>(void *a1@<X8>)
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59C58);
  swift_getExtendedExistentialTypeMetadata();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

uint64_t sub_21D483904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*v2 + 88);
  swift_beginAccess();
  return (*(*(*(a1 + 80) - 8) + 16))(a2, v2 + v5);
}

uint64_t sub_21D483994(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 88);
  swift_beginAccess();
  (*(*(*(a2 + 80) - 8) + 40))(v2 + v5, a1);
  return swift_endAccess();
}

uint64_t sub_21D483A98()
{
  v16 = v0;

  if (qword_27CE56938 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE5C908);
  v3 = v1;
  v4 = sub_21DBF84AC();
  v5 = sub_21DBFAEBC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 120);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = sub_21DBFC75C();
    v12 = sub_21D0CDFB4(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_21D0C9000, v4, v5, "PromiseBasedStartupItem: encountered promise error {error: %{public}s}", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x223D46520](v9, -1, -1);
    MEMORY[0x223D46520](v8, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_21D483C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*v2 + 96);
  swift_beginAccess();
  return (*(*(*(a1 + 80) - 8) + 16))(a2, v2 + v5);
}

uint64_t sub_21D483D04(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 96);
  swift_beginAccess();
  (*(*(*(a2 + 80) - 8) + 40))(v2 + v5, a1);
  return swift_endAccess();
}

unint64_t sub_21D483E24()
{
  result = qword_27CE5C928[0];
  if (!qword_27CE5C928[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5C920);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE5C928);
  }

  return result;
}

uint64_t dispatch thunk of TTRStartupItem.performAction()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D1B795C;

  return v7(a1, a2);
}

id sub_21D4840B4(void *a1)
{
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIQuickBarDragSelectableButton_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIQuickBarDragSelectableButton_draggingSession] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for TTRIQuickBarDragSelectableButton();
  v3 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    [v5 setMultipleTouchEnabled_];
  }

  return v4;
}

void *sub_21D4841D8(void *a1, void *a2)
{
  v3 = a2;
  [a1 locationInView_];
  v5 = [v3 pointInside:0 withEvent:?];
  v6 = *(v2 + 40);
  if (!v5)
  {
    if (v6 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
    {
      for (j = 0; ; ++j)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x223D44740](j, v6);
        }

        else
        {
          if (j >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v10 = *(v6 + 8 * j + 32);
        }

        v3 = v10;
        v11 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        [a1 locationInView_];
        if ([v3 pointInside:0 withEvent:?])
        {
          return v3;
        }

        if (v11 == i)
        {
          return 0;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

    return 0;
  }

  v14 = v3;
  MEMORY[0x28223BE20](v5);
  v13[2] = &v14;
  if ((sub_21D17B954(sub_21D484AFC, v13, v6) & 1) == 0)
  {
    return 0;
  }

  v7 = v3;
  return v3;
}

void sub_21D484368(SEL *a1)
{
  v3 = *(v1 + 40);
  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    for (j = 0; ; ++j)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x223D44740](j, v3);
      }

      else
      {
        if (j >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v6 *a1];

      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_21D484470(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t))
{
  sub_21D0D8CF0(0, &qword_27CE5AE60);
  sub_21D4846A8();
  v8 = sub_21DBFAAAC();
  v9 = a4;
  v10 = a1;
  a5(v8);
}

uint64_t sub_21D484598()
{

  return swift_deallocClassInstance();
}

id sub_21D4845E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIQuickBarDragSelectableButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21D4846A8()
{
  result = qword_27CE5C9C8;
  if (!qword_27CE5C9C8)
  {
    sub_21D0D8CF0(255, &qword_27CE5AE60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5C9C8);
  }

  return result;
}

uint64_t sub_21D484710()
{
  v1 = v0;
  [v0 sendActionsForControlEvents_];
  v2 = &v0[OBJC_IVAR____TtC15RemindersUICore32TTRIQuickBarDragSelectableButton_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 8))(v0, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = [v0 isSelected];
  type metadata accessor for TTRIQuickBarDragSelectableButton.DraggingSession();
  v7 = swift_allocObject();
  v8 = [objc_allocWithZone(MEMORY[0x277D755F0]) init];
  *(v7 + 16) = v8;
  *(v7 + 24) = 0;
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIQuickBarDragSelectableButton_draggingSession] = v7;
  v9 = v8;

  [v9 prepare];

  [v1 setHighlighted_];
  [v1 setSelected_];
}

void sub_21D484870(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIQuickBarDragSelectableButton_draggingSession];
  if (v2)
  {

    v4 = sub_21D1956C8(a1);
    if (v4)
    {
      v9 = v4;
      v5 = sub_21D4841D8(v4, v1);
      if (v5)
      {
        v6 = v5;
        sub_21D484368(&selRef_setSelected_);
        v7 = *(v2 + 24);
        *(v2 + 24) = v6;
        v8 = v6;

        if (([v8 isHighlighted] & 1) == 0)
        {
          [*(v2 + 16) impactOccurred];
          [*(v2 + 16) prepare];
          sub_21D484368(&selRef_setSelected_);
          sub_21D484368(&selRef_setHighlighted_);
          [v8 setHighlighted_];
        }
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

uint64_t sub_21D4849CC(uint64_t result)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC15RemindersUICore32TTRIQuickBarDragSelectableButton_draggingSession;
  v4 = *&v1[OBJC_IVAR____TtC15RemindersUICore32TTRIQuickBarDragSelectableButton_draggingSession];
  if (!v4)
  {
    return result;
  }

  v5 = result;

  [v2 setHighlighted_];
  [v2 setSelected_];
  sub_21D484368(&selRef_setHighlighted_);
  v6 = sub_21D1956C8(v5);
  if (v6)
  {
    v7 = v6;
    v8 = sub_21D4841D8(v6, v2);
    if (v8)
    {
      v9 = v8;
      [v8 sendActionsForControlEvents_];

      goto LABEL_10;
    }
  }

  v10 = *(v4 + 24);
  if (v10)
  {
    v11 = v10;
    [v11 sendActionsForControlEvents_];
  }

  else
  {
    [v2 sendActionsForControlEvents_];
  }

LABEL_10:

  *&v2[v3] = 0;
}

uint64_t TTRUserDefaultsObservableProperty.valueChangePublisher.getter()
{
  if (!*(v0 + 96))
  {
    sub_21D4852EC(v0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0);
  sub_21D10CD1C();
  v1 = sub_21DBF920C();

  return v1;
}

uint64_t TTRUserDefaultsObservableProperty.value.setter(uint64_t a1)
{
  v3 = *v1;
  sub_21D4855DC();
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*TTRUserDefaultsObservableProperty.value.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 10);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  v1[4]();
  return sub_21D484DB4;
}

void sub_21D484DB4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_21D4855DC();
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_21D4855DC();
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t TTRUserDefaultsObservableProperty.valueDidChange.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_21D0D0E78(v1);
  return v1;
}

uint64_t sub_21D484EE0@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D0E6070;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4);
}

uint64_t sub_21D484F74(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_21D11DA58;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_21D0D0E78(v1);
  sub_21D485564(v4, v3);

  return sub_21D0D0E88(v4);
}

uint64_t TTRUserDefaultsObservableProperty.valueDidChange.setter(uint64_t a1, uint64_t a2)
{
  sub_21D485564(a1, a2);

  return sub_21D0D0E88(a1);
}

uint64_t sub_21D485064()
{
  if (*(v0 + 96))
  {

    sub_21DBF905C();

    *(v0 + 96) = 0;
  }

  return result;
}

void sub_21D4850C0()
{
  if (!v0[10])
  {
    v1 = v0;
    v2 = *v0;
    v3 = v0[8];
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = *(v2 + 80);
    *(v5 + 24) = v4;

    v6 = v3(sub_21D48565C, v5);

    v1[10] = v6;

    swift_unknownObjectRelease();
  }
}

void (*TTRUserDefaultsObservableProperty.valueDidChange.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  *(v4 + 24) = v5;
  *(v4 + 32) = v6;
  sub_21D0D0E78(v5);
  return sub_21D485260;
}

void sub_21D485260(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    sub_21D0D0E78(v3);
    sub_21D485564(v3, v4);
    sub_21D0D0E88(v3);
    v5 = v2[3];
  }

  else
  {
    sub_21D485564(v3, v4);
    v5 = v3;
  }

  sub_21D0D0E88(v5);

  free(v2);
}

uint64_t sub_21D4852EC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0);
  swift_allocObject();
  v2 = sub_21DBF907C();

  sub_21D485564(sub_21D485664, v2);

  *(a1 + 96) = v2;

  return v2;
}

void *TTRUserDefaultsObservableProperty.__allocating_init(getter:setter:observe:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_allocObject();
  result[2] = 0;
  result[3] = 0;
  result[11] = 0;
  result[12] = 0;
  result[9] = a6;
  result[10] = 0;
  result[4] = a1;
  result[5] = a2;
  result[6] = a3;
  result[7] = a4;
  result[8] = a5;
  return result;
}

void *TTRUserDefaultsObservableProperty.init(getter:setter:observe:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = 0;
  v6[3] = 0;
  v6[11] = 0;
  v6[12] = 0;
  v6[9] = a6;
  v6[10] = 0;
  v6[4] = a1;
  v6[5] = a2;
  v6[6] = a3;
  v6[7] = a4;
  v6[8] = a5;
  return v6;
}

uint64_t sub_21D485440()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 88) <= 0)
    {
      v1 = result;
      swift_beginAccess();
      v2 = *(v1 + 16);
      if (v2)
      {

        v2(v3);
        sub_21D0D0E88(v2);
      }
    }
  }

  return result;
}

uint64_t TTRUserDefaultsObservableProperty.deinit()
{
  sub_21D0D0E88(*(v0 + 16));

  swift_unknownObjectRelease();

  return v0;
}

uint64_t TTRUserDefaultsObservableProperty.__deallocating_deinit()
{
  TTRUserDefaultsObservableProperty.deinit();

  return swift_deallocClassInstance();
}

void sub_21D485564(uint64_t a1, uint64_t a2)
{
  sub_21D485064();
  swift_beginAccess();
  v5 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  sub_21D0D0E78(a1);
  sub_21D0D0E88(v5);
  sub_21D4850C0();
}

uint64_t sub_21D4855DC()
{
  v1 = *(v0 + 88);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 88) = v3;
    result = (*(v0 + 48))();
    v5 = *(v0 + 88);
    v2 = __OFSUB__(v5, 1);
    v6 = v5 - 1;
    if (!v2)
    {
      *(v0 + 88) = v6;
      return result;
    }
  }

  __break(1u);
  return result;
}

void *sub_21D485668(void *a1, _BYTE *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v7 = type metadata accessor for TTRIQuickBarQuickPickItem(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v16 = sub_21DBF509C();
        (*(*(v16 - 8) + 16))(a1, a2, v16);
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50);
        *(a1 + *(v17 + 48)) = a2[*(v17 + 48)];
        goto LABEL_11;
      }

      if (EnumCaseMultiPayload == 3)
      {
        v11 = *a2;
        v12 = *(a2 + 1);
        *a1 = *a2;
        a1[1] = v12;
        v13 = *(a2 + 3);
        a1[2] = *(a2 + 2);
        a1[3] = v13;
        v14 = v11;
        v15 = v12;
        sub_21DBF8E0C();
        goto LABEL_11;
      }
    }

    else if (EnumCaseMultiPayload <= 1)
    {
      v9 = sub_21DBF509C();
      (*(*(v9 - 8) + 16))(a1, a2, v9);
LABEL_11:
      swift_storeEnumTagMultiPayload();
      goto LABEL_12;
    }

    memcpy(a1, a2, *(*(v7 - 8) + 64));
LABEL_12:
    *(a1 + *(a3 + 20)) = a2[*(a3 + 20)];
    return a1;
  }

  v10 = *a2;
  *a1 = *a2;
  a1 = (v10 + ((v5 + 16) & ~v5));

  return a1;
}

uint64_t sub_21D4858B0(id *a1)
{
  type metadata accessor for TTRIQuickBarQuickPickItem(0);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (result >= 2)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (result == 2)
  {
LABEL_9:
    v3 = sub_21DBF509C();
    v4 = *(*(v3 - 8) + 8);

    return v4(a1, v3);
  }

  if (result == 3)
  {
  }

  return result;
}

void *sub_21D48598C(void *a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIQuickBarQuickPickItem(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v14 = sub_21DBF509C();
      (*(*(v14 - 8) + 16))(a1, a2, v14);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50);
      *(a1 + *(v15 + 48)) = a2[*(v15 + 48)];
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v9 = *a2;
      v10 = *(a2 + 1);
      *a1 = *a2;
      a1[1] = v10;
      v11 = *(a2 + 3);
      a1[2] = *(a2 + 2);
      a1[3] = v11;
      v12 = v9;
      v13 = v10;
      sub_21DBF8E0C();
      goto LABEL_9;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v8 = sub_21DBF509C();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
LABEL_9:
    swift_storeEnumTagMultiPayload();
    goto LABEL_10;
  }

  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_10:
  *(a1 + *(a3 + 20)) = a2[*(a3 + 20)];
  return a1;
}

void *sub_21D485B68(void *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D47FB70(a1);
    v6 = type metadata accessor for TTRIQuickBarQuickPickItem(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v13 = sub_21DBF509C();
        (*(*(v13 - 8) + 16))(a1, a2, v13);
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50);
        *(a1 + *(v14 + 48)) = a2[*(v14 + 48)];
        goto LABEL_10;
      }

      if (EnumCaseMultiPayload == 3)
      {
        v9 = *a2;
        *a1 = *a2;
        v10 = *(a2 + 1);
        a1[1] = v10;
        a1[2] = *(a2 + 2);
        a1[3] = *(a2 + 3);
        v11 = v9;
        v12 = v10;
        sub_21DBF8E0C();
        goto LABEL_10;
      }
    }

    else if (EnumCaseMultiPayload <= 1)
    {
      v8 = sub_21DBF509C();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
LABEL_10:
      swift_storeEnumTagMultiPayload();
      goto LABEL_11;
    }

    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

LABEL_11:
  *(a1 + *(a3 + 20)) = a2[*(a3 + 20)];
  return a1;
}

_BYTE *sub_21D485D64(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIQuickBarQuickPickItem(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v9 = sub_21DBF509C();
    (*(*(v9 - 8) + 32))(a1, a2, v9);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50);
    a1[*(v10 + 48)] = a2[*(v10 + 48)];
    swift_storeEnumTagMultiPayload();
  }

  else if (EnumCaseMultiPayload > 1)
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  else
  {
    v8 = sub_21DBF509C();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
  }

  a1[*(a3 + 20)] = a2[*(a3 + 20)];
  return a1;
}

_BYTE *sub_21D485F00(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D47FB70(a1);
    v6 = type metadata accessor for TTRIQuickBarQuickPickItem(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v9 = sub_21DBF509C();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50);
      a1[*(v10 + 48)] = a2[*(v10 + 48)];
      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload > 1)
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }

    else
    {
      v8 = sub_21DBF509C();
      (*(*(v8 - 8) + 32))(a1, a2, v8);
      swift_storeEnumTagMultiPayload();
    }
  }

  a1[*(a3 + 20)] = a2[*(a3 + 20)];
  return a1;
}

uint64_t sub_21D4860F4()
{
  result = type metadata accessor for TTRIQuickBarQuickPickItem(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_21D486188(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v18 = sub_21DBF509C();
      (*(*(v18 - 8) + 16))(a1, a2, v18);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50);
      *(a1 + *(v19 + 48)) = *(a2 + *(v19 + 48));
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v10 = *a2;
      v11 = a2[1];
      *a1 = *a2;
      a1[1] = v11;
      v12 = a2[2];
      v13 = a2[3];
      a1[2] = v12;
      a1[3] = v13;
      v14 = v10;
      v15 = v11;
      sub_21DBF8E0C();
      goto LABEL_13;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v8 = sub_21DBF509C();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
LABEL_13:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v16 = *(v6 + 64);

  return memcpy(a1, a2, v16);
}

uint64_t sub_21D48639C(id *a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (result >= 2)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (result == 2)
  {
LABEL_9:
    v3 = sub_21DBF509C();
    v4 = *(*(v3 - 8) + 8);

    return v4(a1, v3);
  }

  if (result == 3)
  {
  }

  return result;
}

void *sub_21D486468(void *a1, _BYTE *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v16 = sub_21DBF509C();
      (*(*(v16 - 8) + 16))(a1, a2, v16);
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50);
      *(a1 + *(v17 + 48)) = a2[*(v17 + 48)];
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v8 = *a2;
      v9 = *(a2 + 1);
      *a1 = *a2;
      a1[1] = v9;
      v10 = *(a2 + 2);
      v11 = *(a2 + 3);
      a1[2] = v10;
      a1[3] = v11;
      v12 = v8;
      v13 = v9;
      sub_21DBF8E0C();
      goto LABEL_11;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v7 = sub_21DBF509C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_11:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v14 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v14);
}

void *sub_21D48663C(void *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D47FB70(a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v14 = sub_21DBF509C();
      (*(*(v14 - 8) + 16))(a1, a2, v14);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50);
      *(a1 + *(v15 + 48)) = a2[*(v15 + 48)];
      goto LABEL_12;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v8 = *a2;
      *a1 = *a2;
      v9 = *(a2 + 1);
      a1[1] = v9;
      a1[2] = *(a2 + 2);
      a1[3] = *(a2 + 3);
      v10 = v8;
      v11 = v9;
      sub_21DBF8E0C();
      goto LABEL_12;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v7 = sub_21DBF509C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_12:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

_BYTE *sub_21D486830(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v8 = sub_21DBF509C();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50);
    a1[*(v9 + 48)] = a2[*(v9 + 48)];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v7 = sub_21DBF509C();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

_BYTE *sub_21D4869C4(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D47FB70(a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v8 = sub_21DBF509C();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50);
    a1[*(v9 + 48)] = a2[*(v9 + 48)];
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v7 = sub_21DBF509C();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

uint64_t sub_21D486B68()
{
  result = sub_21DBF509C();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    v4 = v3;
    swift_getTupleTypeLayout2();
    v5 = &v2;
    v6 = " ";
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void sub_21D486C20(void *a1@<X8>)
{
  v3 = *v1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      if (qword_27CE57440 != -1)
      {
        swift_once();
      }

      v22 = *algn_27CE66F98;
      v23 = qword_27CE66F90;
      v8 = qword_27CE57448;
      sub_21DBF8E0C();
      if (v8 != -1)
      {
        swift_once();
      }

      v5 = *algn_27CE66FA8;
      v21 = qword_27CE66FA0;
      sub_21DBF8E0C();
    }

    else if (v3 == 4)
    {
      if (qword_280D16710 != -1)
      {
        swift_once();
      }

      v22 = unk_280D16720;
      v23 = qword_280D16718;
      v6 = qword_280D166D0;
      sub_21DBF8E0C();
      if (v6 != -1)
      {
        swift_once();
      }

      v5 = unk_280D166E0;
      v21 = qword_280D166D8;
      sub_21DBF8E0C();
    }

    else
    {
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      v10 = sub_21DBF516C();
      v22 = v11;
      v23 = v10;
      v21 = sub_21DBF516C();
      v5 = v12;
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      if (qword_280D166B0 != -1)
      {
        swift_once();
      }

      v22 = unk_280D166C0;
      v23 = qword_280D166B8;
      v4 = qword_280D16748;
      sub_21DBF8E0C();
      if (v4 != -1)
      {
        swift_once();
      }

      v5 = unk_280D16758;
      v21 = qword_280D16750;
      sub_21DBF8E0C();
    }

    else
    {
      if (qword_280D166F0 != -1)
      {
        swift_once();
      }

      v22 = unk_280D16700;
      v23 = qword_280D166F8;
      v9 = qword_280D16768;
      sub_21DBF8E0C();
      if (v9 != -1)
      {
        swift_once();
      }

      v5 = *algn_280D16778;
      v21 = qword_280D16770;
      sub_21DBF8E0C();
    }
  }

  else
  {
    if (qword_280D16780 != -1)
    {
      swift_once();
    }

    v22 = qword_280D16790;
    v23 = qword_280D16788;
    v7 = qword_280D16728;
    sub_21DBF8E0C();
    if (v7 != -1)
    {
      swift_once();
    }

    v5 = qword_280D16738[0];
    v21 = qword_280D16730;
    sub_21DBF8E0C();
  }

  sub_21D4894DC();
  sub_21DBFBE2C();
  v13 = objc_opt_self();
  v14 = [v13 configurationWithScale_];
  v15 = sub_21DBFA12C();

  v16 = objc_opt_self();
  v17 = [v16 _systemImageNamed_withConfiguration_];

  v18 = [v13 configurationWithScale_];
  v19 = sub_21DBFA12C();

  v20 = [v16 _systemImageNamed_withConfiguration_];

  a1[5] = v17;
  a1[6] = v20;
  a1[7] = v23;
  a1[8] = v22;
  a1[9] = v21;
  a1[10] = v5;
}

uint64_t sub_21D487244(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    sub_21D18E870(0, v2, 0);
    result = v9;
    v4 = (a1 + 32);
    v5 = *(v9 + 16);
    do
    {
      v7 = *v4;
      v4 += 16;
      v6 = v7;
      v10 = result;
      v8 = *(result + 24);
      if (v5 >= v8 >> 1)
      {
        sub_21D18E870((v8 > 1), v5 + 1, 1);
        result = v10;
      }

      *(result + 16) = v5 + 1;
      *(result + v5++ + 32) = v6;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_21D487304(uint64_t a1)
{
  result = MEMORY[0x277D84FA0];
  v6 = MEMORY[0x277D84FA0];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 33);
    do
    {
      if (*v4 == 1)
      {
        sub_21D29B8B4(&v5, *(v4 - 1));
      }

      v4 += 16;
      --v3;
    }

    while (v3);
    return v6;
  }

  return result;
}

uint64_t sub_21D487380(uint64_t a1)
{
  result = MEMORY[0x277D84FA0];
  v6 = MEMORY[0x277D84FA0];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 34);
    do
    {
      if (*v4 == 1)
      {
        sub_21D29B8B4(&v5, *(v4 - 2));
      }

      v4 += 16;
      --v3;
    }

    while (v3);
    return v6;
  }

  return result;
}

uint64_t sub_21D4873FC(unsigned __int8 *a1, uint64_t a2)
{
  v2 = (a2 + 32);
  v3 = *(a2 + 16) + 1;
  while (--v3)
  {
    v4 = *v2;
    v2 += 16;
    if (v4 == *a1)
    {
      return sub_21DBF8E0C();
    }
  }

  return 0;
}

uint64_t sub_21D487450@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v124 = a1;
  v129 = a2;
  v4 = sub_21DBF5A2C();
  v122 = *(v4 - 8);
  v123 = v4;
  MEMORY[0x28223BE20](v4);
  v121 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v6 - 8);
  v119 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v118 = &v117 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v117 - v11;
  v130 = sub_21DBF509C();
  v125 = *(v130 - 8);
  v13 = *(v125 + 64);
  MEMORY[0x28223BE20](v130);
  v14 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v120 = &v117 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v117 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v117 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v117 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v117 - v27;
  v29 = type metadata accessor for TTRIQuickBarQuickPickItem(0);
  MEMORY[0x28223BE20](v29);
  v126 = &v117 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v117 - v32;
  v128 = v3;
  sub_21D489C4C(v3, &v117 - v32);
  v127 = v29;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v74 = v125;
      v75 = *(v125 + 32);
      v76 = v130;
      v75(v22, v33, v130);
      (*(v74 + 16))(v19, v22, v76);
      v77 = (*(v74 + 80) + 24) & ~*(v74 + 80);
      v78 = swift_allocObject();
      *(v78 + 16) = v124;
      v75((v78 + v77), v19, v76);
      v79 = qword_280D1BAA8;

      if (v79 != -1)
      {
        swift_once();
      }

      v120 = sub_21DBF516C();
      v124 = v80;
      v81 = [objc_opt_self() currentCalendar];
      v82 = v121;
      sub_21DBF596C();

      v83 = v118;
      sub_21DBF597C();
      (*(v122 + 8))(v82, v123);
      v84 = sub_21DBF563C();
      v85 = *(v84 - 8);
      v86 = v78;
      if ((*(v85 + 48))(v83, 1, v84) == 1)
      {
        (*(v125 + 8))(v22, v130);
        sub_21D0CF7E0(v83, &qword_27CE58D68);
        v123 = 0;
        v46 = 0;
        v48 = v129;
      }

      else
      {
        v48 = v129;
        if (qword_280D171B8 != -1)
        {
          swift_once();
        }

        v113 = qword_280D171C0;
        v114 = sub_21DBF55BC();
        v115 = [v113 stringFromDate_];

        v123 = sub_21DBFA16C();
        v46 = v116;

        (*(v125 + 8))(v22, v130);
        (*(v85 + 8))(v83, v84);
      }

      sub_21DBF8E0C();
      v54 = v86;

      v51 = v124;
      sub_21DBF8E0C();
      v130 = 0;
      v52 = 0;
      v91 = sub_21D489D10;
      v92 = v128;
      v93 = v126;
      v49 = v120;
      goto LABEL_69;
    case 2u:
      v64 = v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50) + 48)];
      v65 = v125;
      v66 = *(v125 + 32);
      v67 = v120;
      v68 = v130;
      v66(v120, v33, v130);
      (*(v65 + 16))(v14, v67, v68);
      v69 = (*(v65 + 80) + 24) & ~*(v65 + 80);
      v70 = swift_allocObject();
      *(v70 + 16) = v124;
      v66((v70 + v69), v14, v68);
      v71 = qword_280D1BAA8;

      if (v64)
      {
        if (v71 != -1)
        {
          swift_once();
        }
      }

      else if (v71 != -1)
      {
        swift_once();
      }

      v49 = sub_21DBF516C();
      v124 = v96;
      v48 = v129;
      v97 = v120;
      v98 = [objc_opt_self() currentCalendar];
      v99 = v121;
      sub_21DBF596C();

      v100 = v119;
      sub_21DBF597C();
      (*(v122 + 8))(v99, v123);
      v101 = sub_21DBF563C();
      v102 = *(v101 - 8);
      v54 = v70;
      if ((*(v102 + 48))(v100, 1, v101) == 1)
      {
        (*(v125 + 8))(v97, v130);
        sub_21D0CF7E0(v100, &qword_27CE58D68);
        v123 = 0;
        v46 = 0;
      }

      else
      {
        if (qword_280D171B8 != -1)
        {
          swift_once();
        }

        v103 = qword_280D171C0;
        v104 = v119;
        v105 = sub_21DBF55BC();
        v106 = [v103 stringFromDate_];

        v123 = sub_21DBFA16C();
        v46 = v107;

        (*(v125 + 8))(v120, v130);
        (*(v102 + 8))(v104, v101);
      }

      sub_21DBF8E0C();

      v51 = v124;
      sub_21DBF8E0C();
      v130 = 0;
      v52 = 0;
      v91 = sub_21D489F68;
      v92 = v128;
      v93 = v126;
LABEL_69:
      v53 = v123;
      break;
    case 3u:
      v72 = *(v33 + 1);
      v49 = *(v33 + 2);
      v51 = *(v33 + 3);

      v54 = swift_allocObject();
      *(v54 + 16) = v72;
      sub_21DBF8E0C();

      v130 = 0;
      v52 = 0;
      v53 = 0;
      v46 = 0;
      v55 = sub_21D489D08;
      goto LABEL_44;
    case 4u:
      v56 = qword_280D16780;
      v54 = v124;

      if (v56 != -1)
      {
        swift_once();
      }

      v49 = qword_280D16788;
      v51 = qword_280D16790;
      v57 = qword_27CE57488;
      sub_21DBF8E0C();
      v58 = v57 == -1;
      v59 = v128;
      v48 = v129;
      if (!v58)
      {
        swift_once();
      }

      v52 = *algn_27CE67008;
      v130 = qword_27CE67000;
      swift_bridgeObjectRetain_n();
      sub_21DBF8E0C();

      v53 = 0;
      v46 = 0;
      v60 = sub_21D489CF8;
      goto LABEL_52;
    case 5u:
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      v49 = sub_21DBF516C();
      v51 = v87;
      sub_21DBF8E0C();
      v130 = 0;
      v52 = 0;
      v53 = 0;
      v46 = 0;
      v54 = 0;
      v55 = sub_21D4891F0;
      goto LABEL_44;
    case 6u:
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      v49 = sub_21DBF516C();
      v51 = v89;
      sub_21DBF8E0C();
      v130 = 0;
      v52 = 0;
      v53 = 0;
      v46 = 0;
      v54 = 0;
      v55 = sub_21D489214;
      goto LABEL_44;
    case 7u:
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      v49 = sub_21DBF516C();
      v51 = v73;
      sub_21DBF8E0C();
      v130 = 0;
      v52 = 0;
      v53 = 0;
      v46 = 0;
      v54 = 0;
      v55 = sub_21D489240;
      goto LABEL_44;
    case 8u:
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      v49 = sub_21DBF516C();
      v51 = v95;
      v59 = v128;
      v48 = v129;
      if (qword_27CE57490 != -1)
      {
        swift_once();
      }

      v52 = *algn_27CE67018;
      v130 = qword_27CE67010;
      swift_bridgeObjectRetain_n();
      sub_21DBF8E0C();
      v53 = 0;
      v46 = 0;
      v54 = 0;
      v60 = sub_21D489F64;
LABEL_52:
      v91 = v60;
      v92 = v59;
      goto LABEL_45;
    case 9u:
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      v49 = sub_21DBF516C();
      v51 = v62;
      v130 = sub_21DBF516C();
      v52 = v63;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v53 = 0;
      v46 = 0;
      v54 = 0;
      v55 = sub_21D489F64;
      goto LABEL_44;
    case 0xAu:
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      v49 = sub_21DBF516C();
      v51 = v90;
      sub_21DBF8E0C();
      v130 = 0;
      v52 = 0;
      v53 = 0;
      v46 = 0;
      v54 = 0;
      v55 = sub_21D4892F0;
      goto LABEL_44;
    case 0xBu:
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      v49 = sub_21DBF516C();
      v51 = v50;
      sub_21DBF8E0C();
      v130 = 0;
      v52 = 0;
      v53 = 0;
      v46 = 0;
      v54 = 0;
      v55 = sub_21D489318;
      goto LABEL_44;
    case 0xCu:
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      v49 = sub_21DBF516C();
      v51 = v61;
      sub_21DBF8E0C();
      v130 = 0;
      v52 = 0;
      v53 = 0;
      v46 = 0;
      v54 = 0;
      v55 = sub_21D4893C0;
      goto LABEL_44;
    case 0xDu:
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      v49 = sub_21DBF516C();
      v51 = v88;
      sub_21DBF8E0C();
      v130 = 0;
      v52 = 0;
      v53 = 0;
      v46 = 0;
      v54 = 0;
      v55 = sub_21D48943C;
LABEL_44:
      v91 = v55;
      v92 = v128;
      v48 = v129;
LABEL_45:
      v93 = v126;
      break;
    default:
      v34 = v125;
      v35 = *(v125 + 32);
      v36 = v130;
      v35(v28, v33, v130);
      (*(v34 + 16))(v25, v28, v36);
      v37 = (*(v34 + 80) + 24) & ~*(v34 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = v124;
      v35((v38 + v37), v25, v36);
      v39 = qword_280D1BAA8;

      if (v39 != -1)
      {
        swift_once();
      }

      v120 = sub_21DBF516C();
      v124 = v40;
      v41 = [objc_opt_self() currentCalendar];
      v42 = v121;
      sub_21DBF596C();

      sub_21DBF597C();
      (*(v122 + 8))(v42, v123);
      v43 = sub_21DBF563C();
      v44 = *(v43 - 8);
      v45 = (*(v44 + 48))(v12, 1, v43);
      v119 = v38;
      if (v45 == 1)
      {
        (*(v125 + 8))(v28, v130);
        sub_21D0CF7E0(v12, &qword_27CE58D68);
        v123 = 0;
        v46 = 0;
        v47 = v128;
        v48 = v129;
      }

      else
      {
        v47 = v128;
        v48 = v129;
        if (qword_280D171B8 != -1)
        {
          swift_once();
        }

        v108 = qword_280D171C0;
        v109 = sub_21DBF55BC();
        v110 = [v108 stringFromDate_];

        v123 = sub_21DBFA16C();
        v46 = v111;

        (*(v125 + 8))(v28, v130);
        (*(v44 + 8))(v12, v43);
      }

      sub_21DBF8E0C();
      v54 = v119;

      v112 = v124;
      sub_21DBF8E0C();
      v130 = 0;
      v52 = 0;
      v91 = sub_21D489F68;
      v92 = v47;
      v51 = v112;
      v93 = v126;
      v49 = v120;
      v53 = v123;
      break;
  }

  sub_21D489C4C(v92, v93);
  sub_21D489CB0(&qword_27CE5C8D8, type metadata accessor for TTRIQuickBarQuickPickItem);
  sub_21DBFBE2C();

  v48[5] = v91;
  v48[6] = v54;
  v48[7] = v49;
  v48[8] = v51;
  v48[9] = v53;
  v48[10] = v46;
  v48[11] = v130;
  v48[12] = v52;
  return result;
}

void sub_21D488B9C()
{
  v1 = v0;
  v2 = sub_21DBF509C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRIQuickBarQuickPickItem(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D489C4C(v1, v8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v3 + 32))(v5, v8, v2);
      v9 = 1;
      goto LABEL_12;
    case 2u:
      v11 = *(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50) + 48));
      (*(v3 + 32))(v5, v8, v2);
      MEMORY[0x223D44FA0](2);
      sub_21D489CB0(&qword_27CE5CA68, MEMORY[0x277CC8990]);
      sub_21DBFA00C();
      MEMORY[0x223D44FA0](v11);
      goto LABEL_13;
    case 3u:
      v12 = *v8;
      v13 = v8[1];
      MEMORY[0x223D44FA0](8);
      sub_21DBFB64C();
      sub_21DBFC7FC();
      if (v13)
      {
        v14 = v13;
        sub_21DBFB64C();
      }

      else
      {
        v14 = 0;
      }

      sub_21DBFA27C();

      return;
    case 4u:
      v10 = 3;
      goto LABEL_19;
    case 5u:
      v10 = 4;
      goto LABEL_19;
    case 6u:
      v10 = 5;
      goto LABEL_19;
    case 7u:
      v10 = 6;
      goto LABEL_19;
    case 8u:
      v10 = 7;
      goto LABEL_19;
    case 9u:
      v10 = 9;
      goto LABEL_19;
    case 0xAu:
      v10 = 10;
      goto LABEL_19;
    case 0xBu:
      v10 = 11;
      goto LABEL_19;
    case 0xCu:
      v10 = 12;
      goto LABEL_19;
    case 0xDu:
      v10 = 13;
LABEL_19:
      MEMORY[0x223D44FA0](v10);
      break;
    default:
      (*(v3 + 32))(v5, v8, v2);
      v9 = 0;
LABEL_12:
      MEMORY[0x223D44FA0](v9);
      sub_21D489CB0(&qword_27CE5CA68, MEMORY[0x277CC8990]);
      sub_21DBFA00C();
LABEL_13:
      (*(v3 + 8))(v5, v2);
      break;
  }
}

uint64_t sub_21D488F04()
{
  sub_21DBFC7DC();
  sub_21D488B9C();
  return sub_21DBFC82C();
}

uint64_t sub_21D488F48()
{
  sub_21DBFC7DC();
  sub_21D488B9C();
  return sub_21DBFC82C();
}

uint64_t sub_21D488F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_21D489530(a1, a2))
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_21D488FE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  sub_21D1D5C2C(*a1, *a2);
  return v4 & ~(v2 ^ v3) & 1;
}

id sub_21D489070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_opt_self() configurationWithScale_];
  v5 = sub_21DBFA12C();
  v6 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v6);
  v8 = v7;

  v9 = [v8 imageWithTintColor:a3 renderingMode:1];
  v10 = [objc_opt_self() ttr_systemWhiteColor];
  v11 = [v8 imageWithTintColor:v10 renderingMode:1];

  return v9;
}

Class sub_21D48919C()
{
  v0._countAndFlagsBits = sub_21D3357BC();
  isa = TTRIDateIconGenerator.generateQuickBarDateIcons(withText:)(v0).normal.super.isa;

  return isa;
}

uint64_t sub_21D489260(void *a1)
{
  v2 = a1;
  if (!a1)
  {
    if (qword_27CE56E80 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v2 = qword_27CE63E58;
    v3 = qword_27CE63E58;
  }

  v4 = a1;
  return v2;
}

uint64_t sub_21D489318()
{
  v0 = RemindersUICoreBundleGet();
  v1 = sub_21DBFA12C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v2);
  v4 = v3;

  return v4;
}

id sub_21D4893C0()
{
  v0 = [objc_opt_self() tintColor];
  v1 = sub_21D489070(0xD000000000000018, 0x800000021DC5DA50, v0);

  return v1;
}

id sub_21D489468(SEL *a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() *a1];
  v6 = sub_21D489070(a2, a3, v5);

  return v6;
}

unint64_t sub_21D4894DC()
{
  result = qword_280D17068[0];
  if (!qword_280D17068[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D17068);
  }

  return result;
}

uint64_t sub_21D489530(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF509C();
  v64 = *(v4 - 8);
  v65 = v4;
  MEMORY[0x28223BE20](v4);
  v63 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v62 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v62 - v10;
  v12 = type metadata accessor for TTRIQuickBarQuickPickItem(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = &v62 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v62 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v62 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA60);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = (&v62 + *(v26 + 56) - v25);
  v28 = a1;
  v29 = &v62 - v25;
  sub_21D489C4C(v28, &v62 - v25);
  sub_21D489C4C(a2, v27);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_21D489C4C(v29, v20);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v53 = v64;
        v52 = v65;
        (*(v64 + 32))(v8, v27, v65);
        v39 = MEMORY[0x223D3D6A0](v20, v8);
        v54 = *(v53 + 8);
        v54(v8, v52);
        v54(v20, v52);
        goto LABEL_43;
      }

      (*(v64 + 8))(v20, v65);
      goto LABEL_39;
    case 2u:
      sub_21D489C4C(v29, v17);
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA50) + 48);
      v31 = v17[v30];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v64 + 8))(v17, v65);
        goto LABEL_39;
      }

      v32 = *(v27 + v30);
      v34 = v63;
      v33 = v64;
      v35 = v27;
      v36 = v65;
      (*(v64 + 32))(v63, v35, v65);
      v37 = MEMORY[0x223D3D6A0](v17, v34);
      v38 = *(v33 + 8);
      v38(v34, v36);
      v38(v17, v36);
      if (v37)
      {
        sub_21D47FB70(v29);
        v39 = v31 ^ v32 ^ 1;
        return v39 & 1;
      }

      sub_21D47FB70(v29);
      goto LABEL_40;
    case 3u:
      sub_21D489C4C(v29, v14);
      v40 = *v14;
      v41 = v14[1];
      v43 = v14[2];
      v42 = v14[3];
      if (swift_getEnumCaseMultiPayload() != 3)
      {

LABEL_39:
        sub_21D0CF7E0(v29, &qword_27CE5CA60);
        goto LABEL_40;
      }

      v65 = v29;
      v44 = *v27;
      v45 = v27[1];
      v46 = v27[2];
      v47 = v27[3];
      sub_21D0D8CF0(0, &qword_280D17680);
      v48 = sub_21DBFB63C();

      if ((v48 & 1) == 0)
      {

        goto LABEL_56;
      }

      if (v41)
      {
        if (!v45)
        {

          goto LABEL_55;
        }

        sub_21D0D8CF0(0, &qword_280D17688);
        v49 = v41;
        v50 = v45;
        v51 = sub_21DBFB63C();

        if ((v51 & 1) == 0)
        {

LABEL_55:

          goto LABEL_56;
        }
      }

      else if (v45)
      {

        goto LABEL_56;
      }

      if (v43 == v46 && v42 == v47)
      {

        v55 = v65;
        goto LABEL_35;
      }

      v61 = sub_21DBFC64C();

      if (v61)
      {
        v55 = v65;
LABEL_35:
        sub_21D47FB70(v55);
        v39 = 1;
        return v39 & 1;
      }

LABEL_56:
      sub_21D47FB70(v65);
LABEL_40:
      v39 = 0;
      return v39 & 1;
    case 4u:
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_39;
      }

      goto LABEL_34;
    case 5u:
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_39;
      }

      goto LABEL_34;
    case 6u:
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_39;
      }

      goto LABEL_34;
    case 7u:
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_39;
      }

      goto LABEL_34;
    case 8u:
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_34;
      }

      goto LABEL_39;
    case 9u:
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_39;
      }

      goto LABEL_34;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_39;
      }

      goto LABEL_34;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_39;
      }

      goto LABEL_34;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_39;
      }

      goto LABEL_34;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_39;
      }

LABEL_34:
      v55 = v29;
      goto LABEL_35;
    default:
      sub_21D489C4C(v29, v23);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v64 + 8))(v23, v65);
        goto LABEL_39;
      }

      v58 = v64;
      v57 = v65;
      (*(v64 + 32))(v11, v27, v65);
      v39 = MEMORY[0x223D3D6A0](v23, v11);
      v59 = *(v58 + 8);
      v59(v11, v57);
      v59(v23, v57);
LABEL_43:
      sub_21D47FB70(v29);
      return v39 & 1;
  }
}

uint64_t sub_21D489C4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIQuickBarQuickPickItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D489CB0(unint64_t *a1, void (*a2)(uint64_t))
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

Class sub_21D489CF8()
{
  v0._countAndFlagsBits = 11504610;
  v0._object = 0xA300000000000000;
  return TTRIDateIconGenerator.generateQuickBarDateIcons(withText:)(v0).normal.super.isa;
}

uint64_t objectdestroy_4Tm()
{
  v1 = sub_21DBF509C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21D489E30(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || ((a1[1] ^ a2[1]) & 1) != 0 || ((a1[2] ^ a2[2]) & 1) != 0)
  {
    return 0;
  }

  else
  {
    return sub_21D1D5F2C(*(a1 + 1), *(a2 + 1));
  }
}

uint64_t sub_21D489E74(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRIQuickBarInputAccessoryViewModel.Tab(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRIQuickBarInputAccessoryViewModel.Tab(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

char *sub_21D489F70(char *a1, char **a2, int *a3)
{
  v3 = a2;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v17 = *a2;
    *a1 = *a2;
    v18 = &v17[(v5 + 16) & ~v5];

    return v18;
  }

  v6 = a3;
  v7 = *(a2 + 48);
  if (v7 == 255)
  {
    v19 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v19;
    *(a1 + 2) = *(a2 + 2);
    a1[48] = *(a2 + 48);
  }

  else
  {
    v8 = *a2;
    v9 = a2[1];
    v10 = a2[2];
    v11 = a2[3];
    v13 = a2[4];
    v14 = a2[5];
    v16 = v7 & 1;
    sub_21D0FB960(*a2, v9, v10, v11, v13, v14, v7 & 1);
    *a1 = v8;
    *(a1 + 1) = v9;
    *(a1 + 2) = v10;
    *(a1 + 3) = v11;
    *(a1 + 4) = v13;
    *(a1 + 5) = v14;
    v3 = a2;
    a1[48] = v16;
    v6 = a3;
  }

  v20 = v3[8];
  *(a1 + 7) = v3[7];
  *(a1 + 8) = v20;
  v21 = v6[6];
  v22 = &a1[v21];
  v23 = (v3 + v21);
  v24 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  sub_21DBF8E0C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          goto LABEL_38;
        }

        v28 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v29 = swift_getEnumCaseMultiPayload();
        v193 = v6;
        v196 = v3;
        if (v29 <= 4)
        {
          if (v29 > 2)
          {
LABEL_68:
            v74 = sub_21DBF563C();
            (*(*(v74 - 8) + 16))(v22, v23, v74);
            swift_storeEnumTagMultiPayload();
            goto LABEL_95;
          }

          if (v29 != 1)
          {
            if (v29 == 2)
            {
              goto LABEL_68;
            }

            goto LABEL_94;
          }

LABEL_71:
          v75 = *v23;
          *v22 = *v23;
          v76 = v75;
          swift_storeEnumTagMultiPayload();
          goto LABEL_95;
        }

        if (v29 > 7)
        {
          if (v29 == 8 || v29 == 9)
          {
            goto LABEL_71;
          }
        }

        else if (v29 == 5 || v29 == 6)
        {
          goto LABEL_68;
        }

LABEL_94:
        memcpy(v22, v23, *(*(v28 - 8) + 64));
LABEL_95:
        v80 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v81 = v80[5];
        v82 = v22 + v81;
        v83 = v23 + v81;
        v84 = *(v23 + v81 + 8);
        if (v84)
        {
          v184 = v23;
          v190 = v22;
          *v82 = *v83;
          *(v82 + 1) = v84;
          v85 = *(v83 + 2);
          v86 = *(v83 + 3);
          v87 = *(v83 + 4);
          v88 = *(v83 + 5);
          v90 = *(v83 + 6);
          v89 = *(v83 + 7);
          v179 = v83[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v85, v86, v87, v88, v90, v89, v179);
          *(v82 + 2) = v85;
          *(v82 + 3) = v86;
          *(v82 + 4) = v87;
          *(v82 + 5) = v88;
          *(v82 + 6) = v90;
          *(v82 + 7) = v89;
          v82[64] = v179;
          *(v82 + 65) = *(v83 + 65);
          v91 = v83[120];
          if (v91 == 255)
          {
            *(v82 + 72) = *(v83 + 72);
            *(v82 + 88) = *(v83 + 88);
            *(v82 + 104) = *(v83 + 104);
            v82[120] = v83[120];
          }

          else
          {
            v92 = *(v83 + 10);
            v180 = *(v83 + 9);
            v93 = *(v83 + 11);
            v94 = *(v83 + 12);
            v95 = *(v83 + 13);
            v96 = *(v83 + 14);
            v97 = v91 & 1;
            sub_21D0FB960(v180, v92, v93, v94, v95, v96, v91 & 1);
            *(v82 + 9) = v180;
            *(v82 + 10) = v92;
            *(v82 + 11) = v93;
            *(v82 + 12) = v94;
            *(v82 + 13) = v95;
            *(v82 + 14) = v96;
            v82[120] = v97;
          }

          v6 = v193;
          v3 = v196;
          v22 = v190;
          v82[121] = v83[121];
          v23 = v184;
          goto LABEL_101;
        }

LABEL_98:
        v98 = *(v83 + 5);
        *(v82 + 4) = *(v83 + 4);
        *(v82 + 5) = v98;
        *(v82 + 6) = *(v83 + 6);
        *(v82 + 106) = *(v83 + 106);
        v99 = *(v83 + 1);
        *v82 = *v83;
        *(v82 + 1) = v99;
        v100 = *(v83 + 3);
        *(v82 + 2) = *(v83 + 2);
        *(v82 + 3) = v100;
LABEL_101:
        *(v22 + v80[6]) = *(v23 + v80[6]);
        *(v22 + v80[7]) = *(v23 + v80[7]);
        *(v22 + v80[8]) = *(v23 + v80[8]);
        *(v22 + v80[9]) = *(v23 + v80[9]);
        *(v22 + v80[10]) = *(v23 + v80[10]);
        v101 = v80[11];
        v102 = *(v23 + v101);
        *(v22 + v101) = v102;
        v103 = v102;
        goto LABEL_134;
      }

      v39 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v40 = swift_getEnumCaseMultiPayload();
      v194 = v6;
      v197 = v3;
      if (v40 <= 4)
      {
        if (v40 > 2)
        {
LABEL_72:
          v77 = sub_21DBF563C();
          (*(*(v77 - 8) + 16))(v22, v23, v77);
          swift_storeEnumTagMultiPayload();
          goto LABEL_103;
        }

        if (v40 != 1)
        {
          if (v40 == 2)
          {
            goto LABEL_72;
          }

          goto LABEL_102;
        }

LABEL_75:
        v78 = *v23;
        *v22 = *v23;
        v79 = v78;
        swift_storeEnumTagMultiPayload();
        goto LABEL_103;
      }

      if (v40 > 7)
      {
        if (v40 == 8 || v40 == 9)
        {
          goto LABEL_75;
        }
      }

      else if (v40 == 5 || v40 == 6)
      {
        goto LABEL_72;
      }

LABEL_102:
      memcpy(v22, v23, *(*(v39 - 8) + 64));
LABEL_103:
      v80 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v104 = v80[5];
      v82 = v22 + v104;
      v83 = v23 + v104;
      v105 = *(v23 + v104 + 8);
      if (v105)
      {
        v185 = v23;
        v191 = v22;
        *v82 = *v83;
        *(v82 + 1) = v105;
        v106 = *(v83 + 2);
        v107 = *(v83 + 3);
        v109 = *(v83 + 4);
        v108 = *(v83 + 5);
        v110 = *(v83 + 6);
        v111 = *(v83 + 7);
        v181 = v83[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v106, v107, v109, v108, v110, v111, v181);
        *(v82 + 2) = v106;
        *(v82 + 3) = v107;
        *(v82 + 4) = v109;
        *(v82 + 5) = v108;
        *(v82 + 6) = v110;
        *(v82 + 7) = v111;
        v82[64] = v181;
        *(v82 + 65) = *(v83 + 65);
        v112 = v83[120];
        if (v112 == 255)
        {
          *(v82 + 72) = *(v83 + 72);
          *(v82 + 88) = *(v83 + 88);
          *(v82 + 104) = *(v83 + 104);
          v82[120] = v83[120];
        }

        else
        {
          v113 = *(v83 + 10);
          v182 = *(v83 + 9);
          v114 = *(v83 + 11);
          v115 = *(v83 + 12);
          v116 = *(v83 + 13);
          v117 = *(v83 + 14);
          v118 = v112 & 1;
          sub_21D0FB960(v182, v113, v114, v115, v116, v117, v112 & 1);
          *(v82 + 9) = v182;
          *(v82 + 10) = v113;
          *(v82 + 11) = v114;
          *(v82 + 12) = v115;
          *(v82 + 13) = v116;
          *(v82 + 14) = v117;
          v82[120] = v118;
        }

        v6 = v194;
        v3 = v197;
        v22 = v191;
        v82[121] = v83[121];
        v23 = v185;
        goto LABEL_101;
      }

      goto LABEL_98;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v41 = *v23;
      *v22 = *v23;
      v188 = v22;
      v42 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v43 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v44 = *(v43 - 8);
      v45 = v23;
      v46 = *(v44 + 48);
      v47 = v41;
      if (v46(v23 + v42, 1, v43))
      {
        goto LABEL_31;
      }

      v59 = swift_getEnumCaseMultiPayload();
      if (v59 <= 4)
      {
        v60 = v188;
        if (v59 <= 2)
        {
          if (v59 == 1)
          {
            goto LABEL_126;
          }

          if (v59 != 2)
          {
            goto LABEL_146;
          }
        }

LABEL_113:
        v122 = sub_21DBF563C();
        (*(*(v122 - 8) + 16))(v60 + v42, v23 + v42, v122);
LABEL_127:
        swift_storeEnumTagMultiPayload();
LABEL_128:
        (*(v44 + 56))(v60 + v42, 0, 1, v43);
        goto LABEL_134;
      }

      v60 = v188;
      if (v59 <= 7)
      {
        if (v59 == 5 || v59 == 6)
        {
          goto LABEL_113;
        }

        goto LABEL_146;
      }

      if (v59 != 8 && v59 != 9)
      {
        goto LABEL_146;
      }

LABEL_126:
      v123 = *(v23 + v42);
      *(v60 + v42) = v123;
      v124 = v123;
      goto LABEL_127;
    }

    v30 = *v23;
    *v22 = *v23;
    v31 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v32 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v187 = v22;
    v33 = *(v32 - 8);
    v34 = *(v33 + 48);
    v35 = v30;
    if (v34(v23 + v31, 1, v32))
    {
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(v187 + v31, v23 + v31, *(*(v36 - 8) + 64));
      goto LABEL_134;
    }

    v58 = swift_getEnumCaseMultiPayload();
    if (v58 > 4)
    {
      if (v58 <= 7)
      {
        if (v58 == 5 || v58 == 6)
        {
          goto LABEL_109;
        }

        goto LABEL_132;
      }

      if (v58 != 8 && v58 != 9)
      {
        goto LABEL_132;
      }
    }

    else
    {
      if (v58 > 2)
      {
LABEL_109:
        v119 = sub_21DBF563C();
        (*(*(v119 - 8) + 16))(v187 + v31, v23 + v31, v119);
        swift_storeEnumTagMultiPayload();
LABEL_133:
        (*(v33 + 56))(v187 + v31, 0, 1, v32);
        goto LABEL_134;
      }

      if (v58 != 1)
      {
        if (v58 == 2)
        {
          goto LABEL_109;
        }

LABEL_132:
        memcpy(v187 + v31, v23 + v31, *(v33 + 64));
        goto LABEL_133;
      }
    }

    v120 = *(v23 + v31);
    *(v187 + v31) = v120;
    v121 = v120;
    swift_storeEnumTagMultiPayload();
    goto LABEL_133;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *v22 = *v23;
      *(v22 + 8) = *(v23 + 8);
      *(v22 + 9) = *(v23 + 9);
      v37 = v23[2];
      v22[2] = v37;
      v38 = v37;
      goto LABEL_134;
    }

    v52 = *v23;
    *v22 = *v23;
    v188 = v22;
    v42 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v43 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v44 = *(v43 - 8);
    v45 = v23;
    v53 = *(v44 + 48);
    v54 = v52;
    if (v53(v23 + v42, 1, v43))
    {
LABEL_31:
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(v188 + v42, v45 + v42, *(*(v48 - 8) + 64));
      goto LABEL_134;
    }

    v71 = swift_getEnumCaseMultiPayload();
    if (v71 > 4)
    {
      v60 = v188;
      if (v71 <= 7)
      {
        if (v71 == 5 || v71 == 6)
        {
          goto LABEL_113;
        }

        goto LABEL_146;
      }

      if (v71 != 8 && v71 != 9)
      {
        goto LABEL_146;
      }
    }

    else
    {
      v60 = v188;
      if (v71 > 2)
      {
        goto LABEL_113;
      }

      if (v71 != 1)
      {
        if (v71 == 2)
        {
          goto LABEL_113;
        }

LABEL_146:
        memcpy(v60 + v42, v23 + v42, *(v44 + 64));
        goto LABEL_128;
      }
    }

    goto LABEL_126;
  }

  switch(EnumCaseMultiPayload)
  {
    case 6:
      v49 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v50 = *(v49 - 8);
      if ((*(v50 + 48))(v23, 1, v49))
      {
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
        memcpy(v22, v23, *(*(v51 - 8) + 64));
      }

      else
      {
        *v22 = *v23;
        v61 = *(v49 + 20);
        v62 = v23;
        v63 = sub_21DBF6C1C();
        v189 = *(*(v63 - 8) + 16);
        sub_21DBF8E0C();
        v64 = v63;
        v23 = v62;
        v189(v22 + v61, v62 + v61, v64);
        (*(v50 + 56))(v22, 0, 1, v49);
      }

      v65 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
      v66 = (v22 + v65);
      v67 = (v23 + v65);
      v68 = v67[1];
      if (v68)
      {
        *v66 = *v67;
        v66[1] = v68;
        v69 = v67[2];
        v66[2] = v69;
        sub_21DBF8E0C();
        v70 = v69;
      }

      else
      {
        *v66 = *v67;
        v66[2] = v67[2];
      }

      goto LABEL_134;
    case 7:
      v55 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v56 = *(v55 - 8);
      if ((*(v56 + 48))(v23, 1, v55))
      {
        v57 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
        memcpy(v22, v23, *(*(v57 - 8) + 64));
      }

      else
      {
        v72 = sub_21DBF563C();
        (*(*(v72 - 8) + 16))(v22, v23, v72);
        *(v22 + *(v55 + 20)) = *(v23 + *(v55 + 20));
        (*(v56 + 56))(v22, 0, 1, v55);
      }

      v73 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *(v22 + *(v73 + 20)) = *(v23 + *(v73 + 20));
      goto LABEL_134;
    case 8:
      *v22 = *v23;
      v26 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v27 = sub_21DBF8D7C();
      (*(*(v27 - 8) + 16))(v22 + v26, v23 + v26, v27);
LABEL_134:
      swift_storeEnumTagMultiPayload();
      goto LABEL_135;
  }

LABEL_38:
  memcpy(v22, v23, *(*(v24 - 8) + 64));
LABEL_135:
  v125 = v6[8];
  a1[v6[7]] = *(v3 + v6[7]);
  v126 = *(v3 + v125);
  *&a1[v125] = v126;
  v127 = v6[9];
  v128 = v6[10];
  v129 = *(v3 + v127);
  *&a1[v127] = v129;
  *&a1[v128] = *(v3 + v128);
  v130 = v6[12];
  a1[v6[11]] = *(v3 + v6[11]);
  v131 = &a1[v130];
  v132 = v3 + v130;
  v133 = v126;
  v134 = v129;
  sub_21DBF8E0C();
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
  v136 = *(v135 - 1);
  if ((*(v136 + 48))(v132, 1, v135))
  {
    v137 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
    memcpy(v131, v132, *(*(v137 - 8) + 64));
  }

  else
  {
    v186 = v136;
    v195 = v6;
    v198 = v3;
    v138 = sub_21DBF563C();
    v178 = *(v138 - 8);
    v183 = v138;
    v177 = *(v178 + 16);
    v177(v131, v132);
    v139 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
    v131[v139[5]] = v132[v139[5]];
    v140 = v139[6];
    v141 = sub_21DBF509C();
    (*(*(v141 - 8) + 16))(&v131[v140], &v132[v140], v141);
    v131[v139[7]] = v132[v139[7]];
    v142 = v139[8];
    v143 = &v131[v142];
    v144 = &v132[v142];
    v143[16] = v144[16];
    *v143 = *v144;
    v131[v139[9]] = v132[v139[9]];
    v131[v139[10]] = v132[v139[10]];
    v131[v139[11]] = v132[v139[11]];
    v145 = v139[12];
    v146 = &v131[v145];
    v147 = &v132[v145];
    v148 = *(v147 + 1);
    *v146 = *v147;
    *(v146 + 1) = v148;
    v149 = v135[12];
    v150 = &v131[v149];
    v151 = &v132[v149];
    *v150 = *v151;
    v150[8] = v151[8];
    v152 = *(v151 + 3);
    *(v150 + 2) = *(v151 + 2);
    *(v150 + 3) = v152;
    v153 = *(v151 + 5);
    *(v150 + 4) = *(v151 + 4);
    *(v150 + 5) = v153;
    v154 = v135[16];
    __dst = &v131[v154];
    v155 = &v132[v154];
    v156 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
    v157 = *(v156 - 8);
    v158 = *(v157 + 48);
    v159 = v156;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (v158(v155, 1, v159))
    {
      v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0);
      memcpy(__dst, v155, *(*(v160 - 8) + 64));
      v3 = v198;
    }

    else
    {
      v161 = *(v155 + 1);
      *__dst = *v155;
      *(__dst + 1) = v161;
      v176 = v159;
      v162 = *(v159 + 20);
      v163 = *(v178 + 48);
      sub_21DBF8E0C();
      if (v163(&v155[v162], 1, v183))
      {
        v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
        memcpy(&__dst[v162], &v155[v162], *(*(v164 - 8) + 64));
      }

      else
      {
        (v177)(&__dst[v162], &v155[v162], v183);
        (*(v178 + 56))(&__dst[v162], 0, 1, v183);
      }

      v3 = v198;
      (*(v157 + 56))(__dst, 0, 1, v176);
    }

    v6 = v195;
    v131[v135[20]] = v132[v135[20]];
    v131[v135[24]] = v132[v135[24]];
    (*(v186 + 56))(v131, 0, 1, v135);
  }

  v165 = v6[13];
  v166 = a1;
  v167 = &a1[v165];
  v168 = v3 + v165;
  v169 = *v168;
  v170 = *(v168 + 8);
  v171 = *(v168 + 16);
  v172 = *(v168 + 24);
  v173 = *(v168 + 32);
  sub_21D48BB60(*v168, v170, v171, v172, v173);
  *v167 = v169;
  *(v167 + 1) = v170;
  *(v167 + 2) = v171;
  *(v167 + 3) = v172;
  v167[32] = v173;
  v18 = v166;
  v174 = v6[15];
  v166[v6[14]] = *(v3 + v6[14]);
  *&v166[v174] = *(v3 + v174);
  sub_21DBF8E0C();
  return v18;
}

void sub_21D48BB60(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 >> 6 == 1)
  {

    sub_21DBF8E0C();
  }

  else if (!(a5 >> 6))
  {
    sub_21DBF8E0C();

    v6 = a3;
  }
}

uint64_t sub_21D48BBC4(uint64_t a1, int *a2)
{
  v4 = *(a1 + 48);
  if (v4 != 255)
  {
    sub_21D1078C0(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), v4 & 1);
  }

  v5 = a1 + a2[6];
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_18;
    }

    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_48;
    }

    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 > 4)
    {
      if (v9 <= 7)
      {
        if (v9 != 5 && v9 != 6)
        {
          goto LABEL_43;
        }

        goto LABEL_39;
      }

      if (v9 != 8 && v9 != 9)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (v9 > 2)
      {
        goto LABEL_39;
      }

      if (v9 != 1)
      {
        if (v9 != 2)
        {
LABEL_43:
          v19 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v20 = v5 + *(v19 + 20);
          if (*(v20 + 8))
          {

            sub_21D179EF0(*(v20 + 16), *(v20 + 24), *(v20 + 32), *(v20 + 40), *(v20 + 48), *(v20 + 56), *(v20 + 64));
            v21 = *(v20 + 120);
            if (v21 != 255)
            {
              sub_21D1078C0(*(v20 + 72), *(v20 + 80), *(v20 + 88), *(v20 + 96), *(v20 + 104), *(v20 + 112), v21 & 1);
            }
          }

          goto LABEL_48;
        }

LABEL_39:
        v18 = sub_21DBF563C();
        (*(*(v18 - 8) + 8))(v5, v18);
        goto LABEL_43;
      }
    }

    goto LABEL_43;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
LABEL_32:

      goto LABEL_48;
    }

LABEL_18:

    v10 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v11 - 8) + 48))(v5 + v10, 1, v11))
    {
      goto LABEL_48;
    }

    v12 = swift_getEnumCaseMultiPayload();
    if (v12 > 4)
    {
      if (v12 > 7)
      {
        if (v12 != 8 && v12 != 9)
        {
          goto LABEL_48;
        }

        goto LABEL_57;
      }

      if (v12 != 5 && v12 != 6)
      {
        goto LABEL_48;
      }
    }

    else if (v12 <= 2)
    {
      if (v12 != 1)
      {
        if (v12 != 2)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      }

LABEL_57:

      goto LABEL_48;
    }

LABEL_47:
    v22 = sub_21DBF563C();
    (*(*(v22 - 8) + 8))(v5 + v10, v22);
    goto LABEL_48;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v16 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      if (!(*(*(v16 - 8) + 48))(v5, 1, v16))
      {
        v17 = sub_21DBF563C();
        (*(*(v17 - 8) + 8))(v5, v17);
      }
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v7 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v8 = sub_21DBF8D7C();
      (*(*(v8 - 8) + 8))(v5 + v7, v8);
    }

    goto LABEL_48;
  }

  v13 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  if (!(*(*(v13 - 8) + 48))(v5, 1, v13))
  {

    v14 = *(v13 + 20);
    v15 = sub_21DBF6C1C();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  v5 += *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
  if (*(v5 + 8))
  {

    goto LABEL_32;
  }

LABEL_48:

  v23 = a1 + a2[12];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
  if (!(*(*(v24 - 8) + 48))(v23, 1, v24))
  {
    v25 = sub_21DBF563C();
    v26 = *(v25 - 8);
    v27 = *(v26 + 8);
    v27(v23, v25);
    v28 = *(type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0) + 24);
    v29 = sub_21DBF509C();
    (*(*(v29 - 8) + 8))(v23 + v28, v29);

    v30 = v23 + *(v24 + 64);
    v31 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
    if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
    {

      v32 = *(v31 + 20);
      if (!(*(v26 + 48))(v30 + v32, 1, v25))
      {
        v27(v30 + v32, v25);
      }
    }
  }

  v33 = a1 + a2[13];
  sub_21D48C240(*v33, *(v33 + 8), *(v33 + 16), *(v33 + 24), *(v33 + 32));
}

void sub_21D48C240(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 >> 6 == 1)
  {
  }

  else if (!(a5 >> 6))
  {
  }
}

uint64_t sub_21D48C2A4(uint64_t a1, uint64_t *a2, int *a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  v6 = *(a2 + 48);
  if (v6 == 255)
  {
    v16 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v16;
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 48) = *(a2 + 48);
  }

  else
  {
    v7 = *a2;
    v8 = a2[1];
    v9 = a2[2];
    v10 = a2[3];
    v12 = a2[4];
    v13 = a2[5];
    v15 = v6 & 1;
    sub_21D0FB960(*a2, v8, v9, v10, v12, v13, v6 & 1);
    *v5 = v7;
    *(v5 + 8) = v8;
    *(v5 + 16) = v9;
    *(v5 + 24) = v10;
    *(v5 + 32) = v12;
    *(v5 + 40) = v13;
    v4 = a2;
    *(v5 + 48) = v15;
    v3 = a3;
  }

  v17 = v4[8];
  *(v5 + 56) = v4[7];
  *(v5 + 64) = v17;
  v18 = v3[6];
  v19 = (v5 + v18);
  v20 = (v4 + v18);
  v21 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  sub_21DBF8E0C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v186 = v5;
        v38 = *v20;
        *v19 = *v20;
        v28 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v29 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v30 = *(v29 - 8);
        v31 = v20;
        v39 = *(v30 + 48);
        v40 = v38;
        if (v39(v31 + v28, 1, v29))
        {
          goto LABEL_29;
        }

        v51 = v28;
        v53 = swift_getEnumCaseMultiPayload();
        v5 = v186;
        if (v53 > 4)
        {
          if (v53 <= 7)
          {
            if (v53 == 5 || v53 == 6)
            {
              goto LABEL_115;
            }

            goto LABEL_128;
          }

          if (v53 != 8 && v53 != 9)
          {
            goto LABEL_128;
          }

          goto LABEL_114;
        }

        if (v53 > 2)
        {
          goto LABEL_115;
        }

        if (v53 == 1)
        {
          goto LABEL_114;
        }

        if (v53 != 2)
        {
          goto LABEL_128;
        }
      }

      else
      {
        v186 = v5;
        v27 = *v20;
        *v19 = *v20;
        v28 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v29 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v30 = *(v29 - 8);
        v31 = v20;
        v32 = *(v30 + 48);
        v33 = v27;
        if (v32(v31 + v28, 1, v29))
        {
          goto LABEL_29;
        }

        v51 = v28;
        v52 = swift_getEnumCaseMultiPayload();
        if (v52 > 4)
        {
          v5 = v186;
          if (v52 <= 7)
          {
            if (v52 == 5 || v52 == 6)
            {
              goto LABEL_115;
            }

            goto LABEL_128;
          }

          if (v52 != 8 && v52 != 9)
          {
            goto LABEL_128;
          }

          goto LABEL_114;
        }

        v5 = v186;
        if (v52 > 2)
        {
          goto LABEL_115;
        }

        if (v52 == 1)
        {
          goto LABEL_114;
        }

        if (v52 != 2)
        {
          goto LABEL_128;
        }
      }

      goto LABEL_115;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_36;
      }

      v25 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v26 = swift_getEnumCaseMultiPayload();
      v180 = v3;
      v183 = v4;
      if (v26 <= 4)
      {
        if (v26 > 2)
        {
LABEL_66:
          v66 = sub_21DBF563C();
          (*(*(v66 - 8) + 16))(v19, v20, v66);
          swift_storeEnumTagMultiPayload();
          goto LABEL_93;
        }

        if (v26 != 1)
        {
          if (v26 == 2)
          {
            goto LABEL_66;
          }

          goto LABEL_92;
        }

LABEL_69:
        v67 = *v20;
        *v19 = *v20;
        v68 = v67;
        swift_storeEnumTagMultiPayload();
        goto LABEL_93;
      }

      if (v26 > 7)
      {
        if (v26 == 8 || v26 == 9)
        {
          goto LABEL_69;
        }
      }

      else if (v26 == 5 || v26 == 6)
      {
        goto LABEL_66;
      }

LABEL_92:
      memcpy(v19, v20, *(*(v25 - 8) + 64));
LABEL_93:
      v72 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v73 = v72[5];
      v74 = v19 + v73;
      v75 = v20 + v73;
      v76 = *(v20 + v73 + 8);
      if (v76)
      {
        v176 = v20;
        v187 = v19;
        *v74 = *v75;
        *(v74 + 1) = v76;
        v77 = *(v75 + 2);
        v78 = *(v75 + 3);
        v79 = *(v75 + 4);
        v80 = *(v75 + 5);
        v82 = *(v75 + 6);
        v81 = *(v75 + 7);
        v170 = v75[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v77, v78, v79, v80, v82, v81, v170);
        *(v74 + 2) = v77;
        *(v74 + 3) = v78;
        *(v74 + 4) = v79;
        *(v74 + 5) = v80;
        *(v74 + 6) = v82;
        *(v74 + 7) = v81;
        v74[64] = v170;
        *(v74 + 65) = *(v75 + 65);
        v83 = v75[120];
        if (v83 == 255)
        {
          *(v74 + 72) = *(v75 + 72);
          *(v74 + 88) = *(v75 + 88);
          *(v74 + 104) = *(v75 + 104);
          v74[120] = v75[120];
        }

        else
        {
          v84 = *(v75 + 10);
          v171 = *(v75 + 9);
          v85 = *(v75 + 11);
          v86 = *(v75 + 12);
          v87 = *(v75 + 13);
          v88 = *(v75 + 14);
          v89 = v83 & 1;
          sub_21D0FB960(v171, v84, v85, v86, v87, v88, v83 & 1);
          *(v74 + 9) = v171;
          *(v74 + 10) = v84;
          *(v74 + 11) = v85;
          *(v74 + 12) = v86;
          *(v74 + 13) = v87;
          *(v74 + 14) = v88;
          v74[120] = v89;
        }

        v3 = v180;
        v4 = v183;
        v20 = v176;
        v74[121] = v75[121];
        v19 = v187;
        goto LABEL_99;
      }

LABEL_96:
      v90 = *(v75 + 5);
      *(v74 + 4) = *(v75 + 4);
      *(v74 + 5) = v90;
      *(v74 + 6) = *(v75 + 6);
      *(v74 + 106) = *(v75 + 106);
      v91 = *(v75 + 1);
      *v74 = *v75;
      *(v74 + 1) = v91;
      v92 = *(v75 + 3);
      *(v74 + 2) = *(v75 + 2);
      *(v74 + 3) = v92;
LABEL_99:
      *(v19 + v72[6]) = *(v20 + v72[6]);
      *(v19 + v72[7]) = *(v20 + v72[7]);
      *(v19 + v72[8]) = *(v20 + v72[8]);
      *(v19 + v72[9]) = *(v20 + v72[9]);
      *(v19 + v72[10]) = *(v20 + v72[10]);
      v93 = v72[11];
      v94 = *(v20 + v93);
      *(v19 + v93) = v94;
      v95 = v94;
      goto LABEL_130;
    }

    v36 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v37 = swift_getEnumCaseMultiPayload();
    v181 = v3;
    v184 = v4;
    if (v37 <= 4)
    {
      if (v37 > 2)
      {
LABEL_70:
        v69 = sub_21DBF563C();
        (*(*(v69 - 8) + 16))(v19, v20, v69);
        swift_storeEnumTagMultiPayload();
        goto LABEL_101;
      }

      if (v37 != 1)
      {
        if (v37 == 2)
        {
          goto LABEL_70;
        }

        goto LABEL_100;
      }

LABEL_73:
      v70 = *v20;
      *v19 = *v20;
      v71 = v70;
      swift_storeEnumTagMultiPayload();
      goto LABEL_101;
    }

    if (v37 > 7)
    {
      if (v37 == 8 || v37 == 9)
      {
        goto LABEL_73;
      }
    }

    else if (v37 == 5 || v37 == 6)
    {
      goto LABEL_70;
    }

LABEL_100:
    memcpy(v19, v20, *(*(v36 - 8) + 64));
LABEL_101:
    v72 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v96 = v72[5];
    v74 = v19 + v96;
    v75 = v20 + v96;
    v97 = *(v20 + v96 + 8);
    if (v97)
    {
      v177 = v20;
      v188 = v19;
      *v74 = *v75;
      *(v74 + 1) = v97;
      v98 = *(v75 + 2);
      v99 = *(v75 + 3);
      v101 = *(v75 + 4);
      v100 = *(v75 + 5);
      v102 = *(v75 + 6);
      v103 = *(v75 + 7);
      v172 = v75[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v98, v99, v101, v100, v102, v103, v172);
      *(v74 + 2) = v98;
      *(v74 + 3) = v99;
      *(v74 + 4) = v101;
      *(v74 + 5) = v100;
      *(v74 + 6) = v102;
      *(v74 + 7) = v103;
      v74[64] = v172;
      *(v74 + 65) = *(v75 + 65);
      v104 = v75[120];
      if (v104 == 255)
      {
        *(v74 + 72) = *(v75 + 72);
        *(v74 + 88) = *(v75 + 88);
        *(v74 + 104) = *(v75 + 104);
        v74[120] = v75[120];
      }

      else
      {
        v105 = *(v75 + 10);
        v173 = *(v75 + 9);
        v106 = *(v75 + 11);
        v107 = *(v75 + 12);
        v108 = *(v75 + 13);
        v109 = *(v75 + 14);
        v110 = v104 & 1;
        sub_21D0FB960(v173, v105, v106, v107, v108, v109, v104 & 1);
        *(v74 + 9) = v173;
        *(v74 + 10) = v105;
        *(v74 + 11) = v106;
        *(v74 + 12) = v107;
        *(v74 + 13) = v108;
        *(v74 + 14) = v109;
        v74[120] = v110;
      }

      v3 = v181;
      v4 = v184;
      v20 = v177;
      v74[121] = v75[121];
      v19 = v188;
      goto LABEL_99;
    }

    goto LABEL_96;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *v19 = *v20;
      *(v19 + 8) = *(v20 + 8);
      *(v19 + 9) = *(v20 + 9);
      v34 = v20[2];
      v19[2] = v34;
      v35 = v34;
      goto LABEL_130;
    }

    v186 = v5;
    v45 = *v20;
    *v19 = *v20;
    v28 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v29 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v30 = *(v29 - 8);
    v31 = v20;
    v46 = *(v30 + 48);
    v47 = v45;
    if (v46(v31 + v28, 1, v29))
    {
LABEL_29:
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(v19 + v28, v31 + v28, *(*(v41 - 8) + 64));
      v5 = v186;
      goto LABEL_130;
    }

    v51 = v28;
    v63 = swift_getEnumCaseMultiPayload();
    v5 = v186;
    if (v63 > 4)
    {
      if (v63 <= 7)
      {
        if (v63 == 5 || v63 == 6)
        {
          goto LABEL_115;
        }

        goto LABEL_128;
      }

      if (v63 != 8 && v63 != 9)
      {
        goto LABEL_128;
      }

LABEL_114:
      v111 = *(v31 + v28);
      *(v19 + v28) = v111;
      v112 = v111;
      v113 = v29;
      swift_storeEnumTagMultiPayload();
LABEL_129:
      (*(v30 + 56))(v19 + v51, 0, 1, v113);
      goto LABEL_130;
    }

    if (v63 <= 2)
    {
      if (v63 != 1)
      {
        if (v63 == 2)
        {
          goto LABEL_115;
        }

LABEL_128:
        memcpy(v19 + v28, v31 + v28, *(v30 + 64));
        v113 = v29;
        goto LABEL_129;
      }

      goto LABEL_114;
    }

LABEL_115:
    v114 = sub_21DBF563C();
    (*(*(v114 - 8) + 16))(v19 + v28, v31 + v28, v114);
    v113 = v29;
    swift_storeEnumTagMultiPayload();
    goto LABEL_129;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v42 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
    v43 = *(v42 - 8);
    if ((*(v43 + 48))(v20, 1, v42))
    {
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
      memcpy(v19, v20, *(*(v44 - 8) + 64));
    }

    else
    {
      *v19 = *v20;
      v175 = *(v42 + 20);
      v54 = v20;
      v55 = sub_21DBF6C1C();
      v169 = *(*(v55 - 8) + 16);
      sub_21DBF8E0C();
      v56 = v55;
      v20 = v54;
      v169(v19 + v175, v54 + v175, v56);
      (*(v43 + 56))(v19, 0, 1, v42);
    }

    v57 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
    v58 = (v19 + v57);
    v59 = (v20 + v57);
    v60 = v59[1];
    if (v60)
    {
      *v58 = *v59;
      v58[1] = v60;
      v61 = v59[2];
      v58[2] = v61;
      sub_21DBF8E0C();
      v62 = v61;
    }

    else
    {
      *v58 = *v59;
      v58[2] = v59[2];
    }

    goto LABEL_130;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v48 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v49 = *(v48 - 8);
    if ((*(v49 + 48))(v20, 1, v48))
    {
      v50 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(v19, v20, *(*(v50 - 8) + 64));
    }

    else
    {
      v64 = sub_21DBF563C();
      (*(*(v64 - 8) + 16))(v19, v20, v64);
      *(v19 + *(v48 + 20)) = *(v20 + *(v48 + 20));
      (*(v49 + 56))(v19, 0, 1, v48);
    }

    v65 = type metadata accessor for TTRTemplatePublicLinkData(0);
    *(v19 + *(v65 + 20)) = *(v20 + *(v65 + 20));
    goto LABEL_130;
  }

  if (EnumCaseMultiPayload != 8)
  {
LABEL_36:
    memcpy(v19, v20, *(*(v21 - 8) + 64));
    goto LABEL_131;
  }

  *v19 = *v20;
  v23 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v24 = sub_21DBF8D7C();
  (*(*(v24 - 8) + 16))(v19 + v23, v20 + v23, v24);
LABEL_130:
  swift_storeEnumTagMultiPayload();
LABEL_131:
  v115 = v3[8];
  *(v5 + v3[7]) = *(v4 + v3[7]);
  v116 = *(v4 + v115);
  *(v5 + v115) = v116;
  v117 = v3[9];
  v118 = v3[10];
  v119 = *(v4 + v117);
  *(v5 + v117) = v119;
  *(v5 + v118) = *(v4 + v118);
  v120 = v3[12];
  *(v5 + v3[11]) = *(v4 + v3[11]);
  v121 = (v5 + v120);
  v122 = v4 + v120;
  v123 = v116;
  v124 = v119;
  sub_21DBF8E0C();
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
  v126 = *(v125 - 1);
  if ((*(v126 + 48))(v122, 1, v125))
  {
    v127 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
    memcpy(v121, v122, *(*(v127 - 8) + 64));
  }

  else
  {
    v178 = v126;
    v182 = v3;
    v185 = v4;
    v189 = v5;
    v128 = sub_21DBF563C();
    v167 = *(v128 - 8);
    v168 = v128;
    v166 = *(v167 + 16);
    v166(v121, v122);
    v129 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
    v121[v129[5]] = v122[v129[5]];
    v130 = v129[6];
    v131 = sub_21DBF509C();
    (*(*(v131 - 8) + 16))(&v121[v130], &v122[v130], v131);
    v121[v129[7]] = v122[v129[7]];
    v132 = v129[8];
    v133 = &v121[v132];
    v134 = &v122[v132];
    v133[16] = v134[16];
    *v133 = *v134;
    v121[v129[9]] = v122[v129[9]];
    v121[v129[10]] = v122[v129[10]];
    v121[v129[11]] = v122[v129[11]];
    v135 = v129[12];
    v136 = &v121[v135];
    v137 = &v122[v135];
    v138 = *(v137 + 1);
    *v136 = *v137;
    *(v136 + 1) = v138;
    v139 = v125[12];
    v140 = &v121[v139];
    v141 = &v122[v139];
    *v140 = *v141;
    v140[8] = v141[8];
    v142 = *(v141 + 3);
    *(v140 + 2) = *(v141 + 2);
    *(v140 + 3) = v142;
    v143 = *(v141 + 5);
    *(v140 + 4) = *(v141 + 4);
    *(v140 + 5) = v143;
    v144 = v125[16];
    __dst = &v121[v144];
    v174 = &v122[v144];
    v145 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
    v146 = *(v145 - 8);
    v147 = *(v146 + 48);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (v147(v174, 1, v145))
    {
      v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0);
      memcpy(__dst, v174, *(*(v148 - 8) + 64));
      v4 = v185;
      v5 = v189;
      v3 = v182;
      v149 = v178;
    }

    else
    {
      v150 = *(v174 + 1);
      *__dst = *v174;
      *(__dst + 1) = v150;
      v165 = v145;
      v151 = *(v145 + 20);
      v152 = *(v167 + 48);
      sub_21DBF8E0C();
      if (v152(&v174[v151], 1, v168))
      {
        v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
        memcpy(&__dst[v151], &v174[v151], *(*(v153 - 8) + 64));
      }

      else
      {
        (v166)(&__dst[v151], &v174[v151], v168);
        (*(v167 + 56))(&__dst[v151], 0, 1, v168);
      }

      v4 = v185;
      v5 = v189;
      v149 = v178;
      (*(v146 + 56))(__dst, 0, 1, v165);
      v3 = v182;
    }

    v121[v125[20]] = v122[v125[20]];
    v121[v125[24]] = v122[v125[24]];
    (*(v149 + 56))(v121, 0, 1, v125);
  }

  v154 = v3[13];
  v155 = v5 + v154;
  v156 = v4 + v154;
  v157 = v5;
  v158 = *v156;
  v159 = *(v156 + 8);
  v160 = *(v156 + 16);
  v161 = *(v156 + 24);
  v162 = *(v156 + 32);
  sub_21D48BB60(*v156, v159, v160, v161, v162);
  *v155 = v158;
  *(v155 + 8) = v159;
  *(v155 + 16) = v160;
  *(v155 + 24) = v161;
  *(v155 + 32) = v162;
  v163 = v3[15];
  *(v157 + v3[14]) = *(v4 + v3[14]);
  *(v157 + v163) = *(v4 + v163);
  sub_21DBF8E0C();
  return v157;
}

uint64_t sub_21D48DEE4(uint64_t a1, __int128 *a2, int *a3)
{
  v3 = a3;
  v4 = a2;
  v6 = *(a2 + 48);
  if (*(a1 + 48) == 255)
  {
    if (v6 == 255)
    {
      v35 = *a2;
      v36 = a2[1];
      v37 = a2[2];
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 16) = v36;
      *(a1 + 32) = v37;
      *a1 = v35;
    }

    else
    {
      v23 = *a2;
      v24 = *(a2 + 1);
      v25 = *(a2 + 2);
      v26 = *(a2 + 3);
      v28 = *(a2 + 4);
      v29 = *(a2 + 5);
      v31 = v6 & 1;
      sub_21D0FB960(*a2, v24, v25, v26, v28, v29, v6 & 1);
      *a1 = v23;
      *(a1 + 8) = v24;
      *(a1 + 16) = v25;
      *(a1 + 24) = v26;
      *(a1 + 32) = v28;
      *(a1 + 40) = v29;
      v4 = a2;
      *(a1 + 48) = v31;
      v3 = a3;
    }
  }

  else if (v6 == 255)
  {
    sub_21D2E979C(a1);
    v33 = v4[1];
    v32 = v4[2];
    v34 = *v4;
    *(a1 + 48) = *(v4 + 48);
    *(a1 + 16) = v33;
    *(a1 + 32) = v32;
    *a1 = v34;
  }

  else
  {
    v7 = *a2;
    v8 = *(a2 + 1);
    v9 = *(a2 + 2);
    v10 = *(a2 + 3);
    v12 = *(a2 + 4);
    v13 = *(a2 + 5);
    v15 = v6 & 1;
    sub_21D0FB960(*a2, v8, v9, v10, v12, v13, v6 & 1);
    v16 = *a1;
    v17 = *(a1 + 8);
    v18 = *(a1 + 16);
    v19 = *(a1 + 24);
    v20 = *(a1 + 32);
    v21 = *(a1 + 40);
    v22 = *(a1 + 48);
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    *(a1 + 24) = v10;
    *(a1 + 32) = v12;
    *(a1 + 40) = v13;
    v4 = a2;
    *(a1 + 48) = v15;
    v3 = a3;
    sub_21D1078C0(v16, v17, v18, v19, v20, v21, v22);
  }

  *(a1 + 56) = *(v4 + 7);
  *(a1 + 64) = *(v4 + 8);
  sub_21DBF8E0C();

  if (a1 != v4)
  {
    v38 = v3[6];
    v39 = (a1 + v38);
    v40 = (v4 + v38);
    sub_21D106A98(a1 + v38, type metadata accessor for TTRRemindersListViewModel.Item);
    v41 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v64 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v65 = *(v64 - 8);
            if ((*(v65 + 48))(v40, 1, v64))
            {
              v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(v39, v40, *(*(v66 - 8) + 64));
            }

            else
            {
              *v39 = *v40;
              v77 = *(v64 + 20);
              v78 = v40;
              v79 = sub_21DBF6C1C();
              v252 = *(*(v79 - 8) + 16);
              sub_21DBF8E0C();
              v80 = v79;
              v40 = v78;
              v252(v39 + v77, v78 + v77, v80);
              (*(v65 + 56))(v39, 0, 1, v64);
            }

            v81 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v82 = (v39 + v81);
            v83 = (v40 + v81);
            if (v83[1])
            {
              *v82 = *v83;
              v82[1] = v83[1];
              v84 = v83[2];
              v82[2] = v84;
              sub_21DBF8E0C();
              v85 = v84;
            }

            else
            {
              v86 = *v83;
              v82[2] = v83[2];
              *v82 = v86;
            }

            goto LABEL_137;
          case 7:
            v71 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v72 = *(v71 - 8);
            if ((*(v72 + 48))(v40, 1, v71))
            {
              v73 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(v39, v40, *(*(v73 - 8) + 64));
            }

            else
            {
              v88 = sub_21DBF563C();
              (*(*(v88 - 8) + 16))(v39, v40, v88);
              *(v39 + *(v71 + 20)) = *(v40 + *(v71 + 20));
              (*(v72 + 56))(v39, 0, 1, v71);
            }

            v89 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(v39 + *(v89 + 20)) = *(v40 + *(v89 + 20));
            goto LABEL_137;
          case 8:
            *v39 = *v40;
            v43 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v44 = sub_21DBF8D7C();
            (*(*(v44 - 8) + 16))(v39 + v43, v40 + v43, v44);
LABEL_137:
            swift_storeEnumTagMultiPayload();
            goto LABEL_138;
        }

LABEL_41:
        memcpy(v39, v40, *(*(v41 - 8) + 64));
        goto LABEL_138;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *v39 = *v40;
        *(v39 + 8) = *(v40 + 8);
        *(v39 + 9) = *(v40 + 9);
        *(v39 + 10) = *(v40 + 10);
        v53 = v40[2];
        v39[2] = v53;
        v54 = v53;
        goto LABEL_137;
      }

      v67 = *v40;
      *v39 = *v40;
      v251 = v39;
      v58 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v59 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v60 = *(v59 - 8);
      v61 = v40;
      v68 = *(v60 + 48);
      v69 = v67;
      if (v68(v40 + v58, 1, v59))
      {
LABEL_38:
        v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(&v251[v58], v61 + v58, *(*(v70 - 8) + 64));
        goto LABEL_137;
      }

      v87 = swift_getEnumCaseMultiPayload();
      if (v87 > 4)
      {
        v76 = v251;
        if (v87 <= 7)
        {
          if (v87 == 5 || v87 == 6)
          {
            goto LABEL_120;
          }

          goto LABEL_172;
        }

        if (v87 != 8 && v87 != 9)
        {
          goto LABEL_172;
        }

LABEL_134:
        v146 = *(v40 + v58);
        *&v76[v58] = v146;
        v147 = v146;
        goto LABEL_135;
      }

      v76 = v251;
      if (v87 <= 2)
      {
        if (v87 != 1)
        {
          if (v87 == 2)
          {
            goto LABEL_120;
          }

LABEL_172:
          memcpy(&v76[v58], v40 + v58, *(v60 + 64));
          goto LABEL_136;
        }

        goto LABEL_134;
      }

LABEL_120:
      v143 = sub_21DBF563C();
      (*(*(v143 - 8) + 16))(&v76[v58], v40 + v58, v143);
LABEL_135:
      swift_storeEnumTagMultiPayload();
LABEL_136:
      (*(v60 + 56))(&v76[v58], 0, 1, v59);
      goto LABEL_137;
    }

    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          goto LABEL_41;
        }

        v45 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v46 = swift_getEnumCaseMultiPayload();
        v259 = v3;
        v262 = v4;
        if (v46 <= 4)
        {
          if (v46 > 2)
          {
LABEL_71:
            v90 = sub_21DBF563C();
            (*(*(v90 - 8) + 16))(v39, v40, v90);
            swift_storeEnumTagMultiPayload();
            goto LABEL_98;
          }

          if (v46 != 1)
          {
            if (v46 == 2)
            {
              goto LABEL_71;
            }

            goto LABEL_97;
          }

LABEL_74:
          v91 = *v40;
          *v39 = *v40;
          v92 = v91;
          swift_storeEnumTagMultiPayload();
          goto LABEL_98;
        }

        if (v46 > 7)
        {
          if (v46 == 8 || v46 == 9)
          {
            goto LABEL_74;
          }
        }

        else if (v46 == 5 || v46 == 6)
        {
          goto LABEL_71;
        }

LABEL_97:
        memcpy(v39, v40, *(*(v45 - 8) + 64));
LABEL_98:
        v96 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v97 = v96[5];
        v98 = v39 + v97;
        v99 = v40 + v97;
        if (*(v40 + v97 + 8))
        {
          v246 = v40;
          v253 = v39;
          *v98 = *v99;
          *(v98 + 1) = *(v99 + 1);
          v100 = *(v99 + 2);
          v101 = *(v99 + 3);
          v102 = *(v99 + 4);
          v103 = *(v99 + 5);
          v105 = *(v99 + 6);
          v104 = *(v99 + 7);
          v240 = v99[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v100, v101, v102, v103, v105, v104, v240);
          *(v98 + 2) = v100;
          *(v98 + 3) = v101;
          *(v98 + 4) = v102;
          *(v98 + 5) = v103;
          *(v98 + 6) = v105;
          *(v98 + 7) = v104;
          v98[64] = v240;
          v98[65] = v99[65];
          v98[66] = v99[66];
          v98[67] = v99[67];
          v98[68] = v99[68];
          v106 = v99[120];
          if (v106 == 255)
          {
            v119 = *(v99 + 72);
            v120 = *(v99 + 88);
            v121 = *(v99 + 104);
            v98[120] = v99[120];
            *(v98 + 104) = v121;
            *(v98 + 88) = v120;
            *(v98 + 72) = v119;
          }

          else
          {
            v107 = *(v99 + 10);
            v241 = *(v99 + 9);
            v108 = *(v99 + 11);
            v109 = *(v99 + 12);
            v110 = *(v99 + 13);
            v111 = *(v99 + 14);
            v112 = v106 & 1;
            sub_21D0FB960(v241, v107, v108, v109, v110, v111, v106 & 1);
            *(v98 + 9) = v241;
            *(v98 + 10) = v107;
            *(v98 + 11) = v108;
            *(v98 + 12) = v109;
            *(v98 + 13) = v110;
            *(v98 + 14) = v111;
            v98[120] = v112;
          }

          v3 = v259;
          v4 = v262;
          v39 = v253;
          v98[121] = v99[121];
          v40 = v246;
          goto LABEL_104;
        }

LABEL_101:
        v113 = *v99;
        v114 = *(v99 + 1);
        v115 = *(v99 + 3);
        *(v98 + 2) = *(v99 + 2);
        *(v98 + 3) = v115;
        *v98 = v113;
        *(v98 + 1) = v114;
        v116 = *(v99 + 4);
        v117 = *(v99 + 5);
        v118 = *(v99 + 6);
        *(v98 + 106) = *(v99 + 106);
        *(v98 + 5) = v117;
        *(v98 + 6) = v118;
        *(v98 + 4) = v116;
        v3 = v259;
        v4 = v262;
LABEL_104:
        *(v39 + v96[6]) = *(v40 + v96[6]);
        *(v39 + v96[7]) = *(v40 + v96[7]);
        *(v39 + v96[8]) = *(v40 + v96[8]);
        *(v39 + v96[9]) = *(v40 + v96[9]);
        *(v39 + v96[10]) = *(v40 + v96[10]);
        v122 = v96[11];
        v123 = *(v40 + v122);
        *(v39 + v122) = v123;
        v124 = v123;
        goto LABEL_137;
      }

      v55 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v56 = swift_getEnumCaseMultiPayload();
      v259 = v3;
      v262 = v4;
      if (v56 <= 4)
      {
        if (v56 > 2)
        {
LABEL_75:
          v93 = sub_21DBF563C();
          (*(*(v93 - 8) + 16))(v39, v40, v93);
          swift_storeEnumTagMultiPayload();
          goto LABEL_106;
        }

        if (v56 != 1)
        {
          if (v56 == 2)
          {
            goto LABEL_75;
          }

          goto LABEL_105;
        }

LABEL_78:
        v94 = *v40;
        *v39 = *v40;
        v95 = v94;
        swift_storeEnumTagMultiPayload();
        goto LABEL_106;
      }

      if (v56 > 7)
      {
        if (v56 == 8 || v56 == 9)
        {
          goto LABEL_78;
        }
      }

      else if (v56 == 5 || v56 == 6)
      {
        goto LABEL_75;
      }

LABEL_105:
      memcpy(v39, v40, *(*(v55 - 8) + 64));
LABEL_106:
      v96 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v125 = v96[5];
      v98 = v39 + v125;
      v99 = v40 + v125;
      if (*(v40 + v125 + 8))
      {
        v247 = v40;
        v254 = v39;
        *v98 = *v99;
        *(v98 + 1) = *(v99 + 1);
        v126 = *(v99 + 2);
        v127 = *(v99 + 3);
        v129 = *(v99 + 4);
        v128 = *(v99 + 5);
        v130 = *(v99 + 6);
        v131 = *(v99 + 7);
        v242 = v99[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v126, v127, v129, v128, v130, v131, v242);
        *(v98 + 2) = v126;
        *(v98 + 3) = v127;
        *(v98 + 4) = v129;
        *(v98 + 5) = v128;
        *(v98 + 6) = v130;
        *(v98 + 7) = v131;
        v98[64] = v242;
        v98[65] = v99[65];
        v98[66] = v99[66];
        v98[67] = v99[67];
        v98[68] = v99[68];
        v132 = v99[120];
        if (v132 == 255)
        {
          v139 = *(v99 + 72);
          v140 = *(v99 + 88);
          v141 = *(v99 + 104);
          v98[120] = v99[120];
          *(v98 + 104) = v141;
          *(v98 + 88) = v140;
          *(v98 + 72) = v139;
        }

        else
        {
          v133 = *(v99 + 10);
          v243 = *(v99 + 9);
          v134 = *(v99 + 11);
          v135 = *(v99 + 12);
          v136 = *(v99 + 13);
          v137 = *(v99 + 14);
          v138 = v132 & 1;
          sub_21D0FB960(v243, v133, v134, v135, v136, v137, v132 & 1);
          *(v98 + 9) = v243;
          *(v98 + 10) = v133;
          *(v98 + 11) = v134;
          *(v98 + 12) = v135;
          *(v98 + 13) = v136;
          *(v98 + 14) = v137;
          v98[120] = v138;
        }

        v3 = v259;
        v4 = v262;
        v39 = v254;
        v98[121] = v99[121];
        v40 = v247;
        goto LABEL_104;
      }

      goto LABEL_101;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v57 = *v40;
      *v39 = *v40;
      v251 = v39;
      v58 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v59 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v60 = *(v59 - 8);
      v61 = v40;
      v62 = *(v60 + 48);
      v63 = v57;
      if (v62(v40 + v58, 1, v59))
      {
        goto LABEL_38;
      }

      v75 = swift_getEnumCaseMultiPayload();
      if (v75 > 4)
      {
        v76 = v251;
        if (v75 <= 7)
        {
          if (v75 == 5 || v75 == 6)
          {
            goto LABEL_120;
          }

          goto LABEL_172;
        }

        if (v75 != 8 && v75 != 9)
        {
          goto LABEL_172;
        }

        goto LABEL_134;
      }

      v76 = v251;
      if (v75 > 2)
      {
        goto LABEL_120;
      }

      if (v75 == 1)
      {
        goto LABEL_134;
      }

      if (v75 != 2)
      {
        goto LABEL_172;
      }

      goto LABEL_120;
    }

    v47 = *v40;
    *v39 = *v40;
    v250 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v48 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v49 = *(v48 - 8);
    v50 = *(v49 + 48);
    v51 = v47;
    if (v50(v40 + v250, 1, v48))
    {
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(v39 + v250, v40 + v250, *(*(v52 - 8) + 64));
      goto LABEL_137;
    }

    v74 = swift_getEnumCaseMultiPayload();
    if (v74 > 4)
    {
      if (v74 <= 7)
      {
        if (v74 == 5 || v74 == 6)
        {
          goto LABEL_112;
        }

        goto LABEL_171;
      }

      if (v74 != 8 && v74 != 9)
      {
        goto LABEL_171;
      }
    }

    else
    {
      if (v74 > 2)
      {
LABEL_112:
        v142 = sub_21DBF563C();
        (*(*(v142 - 8) + 16))(v39 + v250, v40 + v250, v142);
LABEL_127:
        swift_storeEnumTagMultiPayload();
LABEL_128:
        (*(v49 + 56))(v39 + v250, 0, 1, v48);
        goto LABEL_137;
      }

      if (v74 != 1)
      {
        if (v74 == 2)
        {
          goto LABEL_112;
        }

LABEL_171:
        memcpy(v39 + v250, v40 + v250, *(v49 + 64));
        goto LABEL_128;
      }
    }

    v144 = *(v40 + v250);
    *(v39 + v250) = v144;
    v145 = v144;
    goto LABEL_127;
  }

LABEL_138:
  *(a1 + v3[7]) = *(v4 + v3[7]);
  v148 = v3[8];
  v149 = *(v4 + v148);
  v150 = *(a1 + v148);
  *(a1 + v148) = v149;
  v151 = v149;

  v152 = v3[9];
  v153 = *(v4 + v152);
  v154 = *(a1 + v152);
  *(a1 + v152) = v153;
  v155 = v153;

  *(a1 + v3[10]) = *(v4 + v3[10]);
  sub_21DBF8E0C();

  *(a1 + v3[11]) = *(v4 + v3[11]);
  v156 = v3[12];
  v157 = (a1 + v156);
  v158 = v4 + v156;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
  v160 = *(v159 - 1);
  v161 = *(v160 + 48);
  v162 = v161(v157, 1, v159);
  v163 = v161(v158, 1, v159);
  if (!v162)
  {
    if (v163)
    {
      sub_21D0CF7E0(v157, &qword_27CE5C678);
      goto LABEL_144;
    }

    v261 = v3;
    v263 = v4;
    v187 = sub_21DBF563C();
    v245 = *(v187 - 8);
    v249 = v187;
    v238 = *(v245 + 24);
    (v238)(v157, v158);
    v188 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
    v157[v188[5]] = v158[v188[5]];
    v189 = v188[6];
    v190 = sub_21DBF509C();
    (*(*(v190 - 8) + 24))(&v157[v189], &v158[v189], v190);
    v157[v188[7]] = v158[v188[7]];
    v191 = v188[8];
    v192 = &v157[v191];
    v193 = &v158[v191];
    v194 = v193[16];
    *v192 = *v193;
    v192[16] = v194;
    v157[v188[9]] = v158[v188[9]];
    v157[v188[10]] = v158[v188[10]];
    v157[v188[11]] = v158[v188[11]];
    v195 = v188[12];
    v196 = &v157[v195];
    v197 = &v158[v195];
    *v196 = *v197;
    v196[1] = v197[1];
    sub_21DBF8E0C();

    v198 = v159[12];
    v199 = &v157[v198];
    v200 = &v158[v198];
    *v199 = *&v158[v198];
    v199[8] = v158[v198 + 8];
    *(v199 + 2) = *&v158[v198 + 16];
    *(v199 + 3) = *&v158[v198 + 24];
    sub_21DBF8E0C();

    *(v199 + 4) = *(v200 + 4);
    *(v199 + 5) = *(v200 + 5);
    sub_21DBF8E0C();

    v201 = v159[16];
    v202 = &v157[v201];
    v203 = &v158[v201];
    v204 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
    v205 = *(v204 - 8);
    v206 = *(v205 + 48);
    v256 = v202;
    LODWORD(v202) = v206(v202, 1, v204);
    __dsta = v203;
    v207 = v206(v203, 1, v204);
    if (v202)
    {
      if (!v207)
      {
        *v256 = *v203;
        *(v256 + 1) = *(v203 + 1);
        v213 = *(v204 + 20);
        v239 = *(v245 + 48);
        sub_21DBF8E0C();
        if (v239(&v203[v213], 1, v249))
        {
          v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
          memcpy(&v256[v213], &v203[v213], *(*(v214 - 8) + 64));
        }

        else
        {
          (*(v245 + 16))(&v256[v213], &v203[v213], v249);
          (*(v245 + 56))(&v256[v213], 0, 1, v249);
        }

        v4 = v263;
        (*(v205 + 56))(v256, 0, 1, v204);
        goto LABEL_163;
      }

      v208 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0) - 8) + 64);
      v209 = v256;
    }

    else
    {
      if (!v207)
      {
        *v256 = *v203;
        *(v256 + 1) = *(v203 + 1);
        sub_21DBF8E0C();

        v215 = *(v204 + 20);
        v216 = *(v245 + 48);
        v217 = v216(&v256[v215], 1, v249);
        v218 = v216(&__dsta[v215], 1, v249);
        if (v217)
        {
          v3 = v261;
          v4 = v263;
          if (!v218)
          {
            (*(v245 + 16))(&v256[v215], &__dsta[v215], v249);
            (*(v245 + 56))(&v256[v215], 0, 1, v249);
            goto LABEL_164;
          }

          v219 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68) - 8) + 64);
          v220 = &v256[v215];
        }

        else
        {
          v3 = v261;
          v4 = v263;
          if (!v218)
          {
            v238(&v256[v215], &__dsta[v215], v249);
            goto LABEL_164;
          }

          (*(v245 + 8))(&v256[v215], v249);
          v219 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68) - 8) + 64);
          v220 = &v256[v215];
        }

        memcpy(v220, &__dsta[v215], v219);
LABEL_164:
        v157[v159[20]] = v158[v159[20]];
        v157[v159[24]] = v158[v159[24]];
        goto LABEL_165;
      }

      sub_21D106A98(v256, type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd);
      v208 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0) - 8) + 64);
      v209 = v256;
    }

    memcpy(v209, v203, v208);
    v4 = v263;
LABEL_163:
    v3 = v261;
    goto LABEL_164;
  }

  if (v163)
  {
LABEL_144:
    v186 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
    memcpy(v157, v158, *(*(v186 - 8) + 64));
    goto LABEL_165;
  }

  v248 = v160;
  v260 = v3;
  v164 = sub_21DBF563C();
  v237 = *(v164 - 8);
  v244 = v164;
  v236 = *(v237 + 16);
  (v236)(v157, v158);
  v165 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
  v157[v165[5]] = v158[v165[5]];
  v166 = v165[6];
  v167 = sub_21DBF509C();
  (*(*(v167 - 8) + 16))(&v157[v166], &v158[v166], v167);
  v157[v165[7]] = v158[v165[7]];
  v168 = v165[8];
  v169 = &v157[v168];
  v170 = &v158[v168];
  v171 = v170[16];
  *v169 = *v170;
  v169[16] = v171;
  v157[v165[9]] = v158[v165[9]];
  v157[v165[10]] = v158[v165[10]];
  v157[v165[11]] = v158[v165[11]];
  v172 = v165[12];
  v173 = &v157[v172];
  v174 = &v158[v172];
  *v173 = *v174;
  v173[1] = v174[1];
  v175 = v159[12];
  v176 = &v157[v175];
  v177 = &v158[v175];
  *v176 = *v177;
  v176[8] = v177[8];
  *(v176 + 2) = *(v177 + 2);
  *(v176 + 3) = *(v177 + 3);
  *(v176 + 4) = *(v177 + 4);
  *(v176 + 5) = *(v177 + 5);
  v178 = v159[16];
  v255 = v159;
  __dst = &v157[v178];
  v179 = &v158[v178];
  v180 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
  v181 = *(v180 - 8);
  v182 = *(v181 + 48);
  v183 = v180;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v182(v179, 1, v183))
  {
    v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0);
    memcpy(__dst, v179, *(*(v184 - 8) + 64));
    v3 = v260;
    v185 = v248;
  }

  else
  {
    v235 = v183;
    *__dst = *v179;
    __dst[1] = v179[1];
    v210 = *(v183 + 20);
    v211 = *(v237 + 48);
    sub_21DBF8E0C();
    if (v211(v179 + v210, 1, v244))
    {
      v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
      memcpy(__dst + v210, v179 + v210, *(*(v212 - 8) + 64));
    }

    else
    {
      v236(__dst + v210, v179 + v210, v244);
      (*(v237 + 56))(__dst + v210, 0, 1, v244);
    }

    v3 = v260;
    v185 = v248;
    (*(v181 + 56))(__dst, 0, 1, v235);
  }

  v157[v255[20]] = v158[v255[20]];
  v157[v255[24]] = v158[v255[24]];
  (*(v185 + 56))(v157, 0, 1);
LABEL_165:
  v221 = v3[13];
  v222 = a1 + v221;
  v223 = v4 + v221;
  v224 = *v223;
  v225 = *(v223 + 8);
  v226 = *(v223 + 16);
  v227 = *(v223 + 24);
  v228 = *(v223 + 32);
  sub_21D48BB60(*v223, v225, v226, v227, v228);
  v229 = *v222;
  v230 = *(v222 + 8);
  v231 = *(v222 + 16);
  v232 = *(v222 + 24);
  *v222 = v224;
  *(v222 + 8) = v225;
  *(v222 + 16) = v226;
  *(v222 + 24) = v227;
  v233 = *(v222 + 32);
  *(v222 + 32) = v228;
  sub_21D48C240(v229, v230, v231, v232, v233);
  *(a1 + v3[14]) = *(v4 + v3[14]);
  *(a1 + v3[15]) = *(v4 + v3[15]);
  sub_21DBF8E0C();

  return a1;
}

uint64_t sub_21D490168(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = a3;
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v7 = a3[6];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v23 = swift_getEnumCaseMultiPayload();
        if (v23 <= 3)
        {
          if (v23 == 2 || v23 == 3)
          {
            goto LABEL_9;
          }
        }

        else if (v23 == 4 || v23 == 5 || v23 == 6)
        {
          goto LABEL_9;
        }

        goto LABEL_64;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v13 = swift_getEnumCaseMultiPayload();
        if (v13 <= 3)
        {
          if (v13 == 2 || v13 == 3)
          {
            goto LABEL_9;
          }
        }

        else if (v13 == 4 || v13 == 5 || v13 == 6)
        {
LABEL_9:
          v14 = sub_21DBF563C();
          (*(*(v14 - 8) + 32))(v8, v9, v14);
          swift_storeEnumTagMultiPayload();
LABEL_65:
          v39 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v40 = v39[5];
          v41 = (v8 + v40);
          v42 = (v9 + v40);
          v43 = v42[3];
          v41[2] = v42[2];
          v41[3] = v43;
          v44 = v42[1];
          *v41 = *v42;
          v41[1] = v44;
          *(v41 + 106) = *(v42 + 106);
          v45 = v42[6];
          v41[5] = v42[5];
          v41[6] = v45;
          v41[4] = v42[4];
          *(v8 + v39[6]) = *(v9 + v39[6]);
          *(v8 + v39[7]) = *(v9 + v39[7]);
          *(v8 + v39[8]) = *(v9 + v39[8]);
          *(v8 + v39[9]) = *(v9 + v39[9]);
          *(v8 + v39[10]) = *(v9 + v39[10]);
          *(v8 + v39[11]) = *(v9 + v39[11]);
          goto LABEL_87;
        }

LABEL_64:
        memcpy(v8, v9, *(*(v12 - 8) + 64));
        goto LABEL_65;
      }

LABEL_32:
      memcpy(v8, v9, *(*(v10 - 8) + 64));
      goto LABEL_88;
    }

    if (EnumCaseMultiPayload == 2)
    {
      *v8 = *v9;
      v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v9 + v18, 1, v19))
      {
LABEL_29:
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(v8 + v18, v9 + v18, *(*(v24 - 8) + 64));
        goto LABEL_87;
      }

      v29 = swift_getEnumCaseMultiPayload();
      if (v29 <= 3)
      {
        if (v29 == 2 || v29 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v29 == 4 || v29 == 5 || v29 == 6)
      {
        goto LABEL_57;
      }
    }

    else
    {
      *v8 = *v9;
      v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v9 + v18, 1, v19))
      {
        goto LABEL_29;
      }

      v37 = swift_getEnumCaseMultiPayload();
      if (v37 <= 3)
      {
        if (v37 == 2 || v37 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v37 == 4 || v37 == 5 || v37 == 6)
      {
LABEL_57:
        v38 = sub_21DBF563C();
        (*(*(v38 - 8) + 32))(v8 + v18, v9 + v18, v38);
        swift_storeEnumTagMultiPayload();
LABEL_86:
        (*(v20 + 56))(v8 + v18, 0, 1, v19);
        goto LABEL_87;
      }
    }

LABEL_85:
    memcpy(v8 + v18, v9 + v18, *(v20 + 64));
    goto LABEL_86;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v15 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(v9, 1, v15))
        {
          v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
          memcpy(v8, v9, *(*(v17 - 8) + 64));
        }

        else
        {
          *v8 = *v9;
          v32 = *(v15 + 20);
          v33 = sub_21DBF6C1C();
          (*(*(v33 - 8) + 32))(v8 + v32, v9 + v32, v33);
          (*(v16 + 56))(v8, 0, 1, v15);
        }

        v34 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v35 = v8 + v34;
        v36 = v9 + v34;
        *v35 = *v36;
        *(v35 + 2) = *(v36 + 2);
        goto LABEL_87;
      }

      goto LABEL_32;
    }

    *v8 = *v9;
    v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v9 + v18, 1, v19))
    {
      goto LABEL_29;
    }

    v28 = swift_getEnumCaseMultiPayload();
    if (v28 <= 3)
    {
      if (v28 == 2 || v28 == 3)
      {
        goto LABEL_57;
      }
    }

    else if (v28 == 4 || v28 == 5 || v28 == 6)
    {
      goto LABEL_57;
    }

    goto LABEL_85;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v25 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v9, 1, v25))
    {
      v27 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(v8, v9, *(*(v27 - 8) + 64));
    }

    else
    {
      v30 = sub_21DBF563C();
      (*(*(v30 - 8) + 32))(v8, v9, v30);
      *(v8 + *(v25 + 20)) = *(v9 + *(v25 + 20));
      (*(v26 + 56))(v8, 0, 1, v25);
    }

    v31 = type metadata accessor for TTRTemplatePublicLinkData(0);
    *(v8 + *(v31 + 20)) = *(v9 + *(v31 + 20));
    goto LABEL_87;
  }

  if (EnumCaseMultiPayload != 8)
  {
    goto LABEL_32;
  }

  *v8 = *v9;
  v21 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v22 = sub_21DBF8D7C();
  (*(*(v22 - 8) + 32))(v8 + v21, v9 + v21, v22);
LABEL_87:
  swift_storeEnumTagMultiPayload();
LABEL_88:
  v46 = v3[8];
  *(a1 + v3[7]) = *(a2 + v3[7]);
  *(a1 + v46) = *(a2 + v46);
  v47 = v3[10];
  *(a1 + v3[9]) = *(a2 + v3[9]);
  *(a1 + v47) = *(a2 + v47);
  v48 = v3[12];
  *(a1 + v3[11]) = *(a2 + v3[11]);
  v49 = (a1 + v48);
  v50 = (a2 + v48);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
  v52 = *(v51 - 1);
  if ((*(v52 + 48))(v50, 1, v51))
  {
    v53 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
    memcpy(v49, v50, *(*(v53 - 8) + 64));
  }

  else
  {
    v88 = v3;
    v54 = sub_21DBF563C();
    v86 = *(v54 - 8);
    v87 = v54;
    v85 = *(v86 + 32);
    v85(v49, v50);
    v55 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
    v49[v55[5]] = v50[v55[5]];
    v56 = v55[6];
    v57 = sub_21DBF509C();
    (*(*(v57 - 8) + 32))(&v49[v56], &v50[v56], v57);
    v49[v55[7]] = v50[v55[7]];
    v58 = v55[8];
    v59 = &v49[v58];
    v60 = &v50[v58];
    v59[16] = v60[16];
    *v59 = *v60;
    v49[v55[9]] = v50[v55[9]];
    v49[v55[10]] = v50[v55[10]];
    v49[v55[11]] = v50[v55[11]];
    *&v49[v55[12]] = *&v50[v55[12]];
    v61 = v51[12];
    v62 = &v49[v61];
    v63 = &v50[v61];
    v64 = *(v63 + 2);
    *(v62 + 1) = *(v63 + 1);
    *(v62 + 2) = v64;
    *v62 = *v63;
    v65 = v51[16];
    v66 = &v49[v65];
    v67 = &v50[v65];
    v68 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
    v69 = *(v68 - 8);
    if ((*(v69 + 48))(v67, 1, v68))
    {
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0);
      memcpy(v66, v67, *(*(v70 - 8) + 64));
    }

    else
    {
      v84 = v66;
      *v66 = *v67;
      v71 = *(v68 + 20);
      if ((*(v86 + 48))(&v67[v71], 1, v87))
      {
        v72 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68) - 8) + 64);
        v73 = v84 + v71;
        v74 = &v67[v71];
        v75 = v84;
        memcpy(v73, v74, v72);
      }

      else
      {
        (v85)(v84 + v71, &v67[v71], v87);
        v76 = v84 + v71;
        v75 = v84;
        (*(v86 + 56))(v76, 0, 1, v87);
      }

      (*(v69 + 56))(v75, 0, 1, v68);
    }

    v49[v51[20]] = v50[v51[20]];
    v49[v51[24]] = v50[v51[24]];
    (*(v52 + 56))(v49, 0, 1, v51);
    v3 = v88;
  }

  v77 = v3[13];
  v78 = v3[14];
  v79 = a1 + v77;
  v80 = (a2 + v77);
  v81 = *v80;
  v82 = v80[1];
  *(v79 + 32) = *(v80 + 32);
  *v79 = v81;
  *(v79 + 16) = v82;
  *(a1 + v78) = *(a2 + v78);
  *(a1 + v3[15]) = *(a2 + v3[15]);
  return a1;
}

uint64_t sub_21D491660(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a1 + 48);
  if (v6 != 255)
  {
    v7 = *(a2 + 48);
    if (v7 != 255)
    {
      v8 = *a1;
      v9 = *(a1 + 8);
      v10 = *(a1 + 16);
      v11 = *(a1 + 24);
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v14 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v14;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v7 & 1;
      sub_21D1078C0(v8, v9, v10, v11, v12, v13, v6 & 1);
      goto LABEL_6;
    }

    sub_21D2E979C(a1);
  }

  v15 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v15;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
LABEL_6:
  v16 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v16;

  if (a1 == a2)
  {
    goto LABEL_94;
  }

  v17 = a3[6];
  v18 = (a1 + v17);
  v19 = (a2 + v17);
  sub_21D106A98(a1 + v17, type metadata accessor for TTRRemindersListViewModel.Item);
  v20 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v33 = swift_getEnumCaseMultiPayload();
        if (v33 <= 3)
        {
          if (v33 == 2 || v33 == 3)
          {
            goto LABEL_15;
          }
        }

        else if (v33 == 4 || v33 == 5 || v33 == 6)
        {
          goto LABEL_15;
        }

        goto LABEL_70;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v23 = swift_getEnumCaseMultiPayload();
        if (v23 <= 3)
        {
          if (v23 == 2 || v23 == 3)
          {
            goto LABEL_15;
          }
        }

        else if (v23 == 4 || v23 == 5 || v23 == 6)
        {
LABEL_15:
          v24 = sub_21DBF563C();
          (*(*(v24 - 8) + 32))(v18, v19, v24);
          swift_storeEnumTagMultiPayload();
LABEL_71:
          v49 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v50 = v49[5];
          v51 = (v18 + v50);
          v52 = (v19 + v50);
          v53 = v52[3];
          v51[2] = v52[2];
          v51[3] = v53;
          v54 = v52[1];
          *v51 = *v52;
          v51[1] = v54;
          *(v51 + 106) = *(v52 + 106);
          v55 = v52[6];
          v51[5] = v52[5];
          v51[6] = v55;
          v51[4] = v52[4];
          *(v18 + v49[6]) = *(v19 + v49[6]);
          *(v18 + v49[7]) = *(v19 + v49[7]);
          *(v18 + v49[8]) = *(v19 + v49[8]);
          *(v18 + v49[9]) = *(v19 + v49[9]);
          *(v18 + v49[10]) = *(v19 + v49[10]);
          *(v18 + v49[11]) = *(v19 + v49[11]);
          goto LABEL_93;
        }

LABEL_70:
        memcpy(v18, v19, *(*(v22 - 8) + 64));
        goto LABEL_71;
      }

LABEL_38:
      memcpy(v18, v19, *(*(v20 - 8) + 64));
      goto LABEL_94;
    }

    if (EnumCaseMultiPayload == 2)
    {
      *v18 = *v19;
      v28 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v29 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v30 = *(v29 - 8);
      if ((*(v30 + 48))(v19 + v28, 1, v29))
      {
LABEL_35:
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(v18 + v28, v19 + v28, *(*(v34 - 8) + 64));
        goto LABEL_93;
      }

      v39 = swift_getEnumCaseMultiPayload();
      if (v39 <= 3)
      {
        if (v39 == 2 || v39 == 3)
        {
          goto LABEL_63;
        }
      }

      else if (v39 == 4 || v39 == 5 || v39 == 6)
      {
        goto LABEL_63;
      }
    }

    else
    {
      *v18 = *v19;
      v28 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v29 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v30 = *(v29 - 8);
      if ((*(v30 + 48))(v19 + v28, 1, v29))
      {
        goto LABEL_35;
      }

      v47 = swift_getEnumCaseMultiPayload();
      if (v47 <= 3)
      {
        if (v47 == 2 || v47 == 3)
        {
          goto LABEL_63;
        }
      }

      else if (v47 == 4 || v47 == 5 || v47 == 6)
      {
LABEL_63:
        v48 = sub_21DBF563C();
        (*(*(v48 - 8) + 32))(v18 + v28, v19 + v28, v48);
        swift_storeEnumTagMultiPayload();
LABEL_92:
        (*(v30 + 56))(v18 + v28, 0, 1, v29);
        goto LABEL_93;
      }
    }

LABEL_91:
    memcpy(v18 + v28, v19 + v28, *(v30 + 64));
    goto LABEL_92;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v25 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v26 = *(v25 - 8);
        if ((*(v26 + 48))(v19, 1, v25))
        {
          v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
          memcpy(v18, v19, *(*(v27 - 8) + 64));
        }

        else
        {
          *v18 = *v19;
          v42 = *(v25 + 20);
          v43 = sub_21DBF6C1C();
          (*(*(v43 - 8) + 32))(v18 + v42, v19 + v42, v43);
          (*(v26 + 56))(v18, 0, 1, v25);
        }

        v44 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v45 = v18 + v44;
        v46 = v19 + v44;
        *v45 = *v46;
        *(v45 + 2) = *(v46 + 2);
        goto LABEL_93;
      }

      goto LABEL_38;
    }

    *v18 = *v19;
    v28 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v29 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(v19 + v28, 1, v29))
    {
      goto LABEL_35;
    }

    v38 = swift_getEnumCaseMultiPayload();
    if (v38 <= 3)
    {
      if (v38 == 2 || v38 == 3)
      {
        goto LABEL_63;
      }
    }

    else if (v38 == 4 || v38 == 5 || v38 == 6)
    {
      goto LABEL_63;
    }

    goto LABEL_91;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v35 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v19, 1, v35))
    {
      v37 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(v18, v19, *(*(v37 - 8) + 64));
    }

    else
    {
      v40 = sub_21DBF563C();
      (*(*(v40 - 8) + 32))(v18, v19, v40);
      *(v18 + *(v35 + 20)) = *(v19 + *(v35 + 20));
      (*(v36 + 56))(v18, 0, 1, v35);
    }

    v41 = type metadata accessor for TTRTemplatePublicLinkData(0);
    *(v18 + *(v41 + 20)) = *(v19 + *(v41 + 20));
    goto LABEL_93;
  }

  if (EnumCaseMultiPayload != 8)
  {
    goto LABEL_38;
  }

  *v18 = *v19;
  v31 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v32 = sub_21DBF8D7C();
  (*(*(v32 - 8) + 32))(v18 + v31, v19 + v31, v32);
LABEL_93:
  swift_storeEnumTagMultiPayload();
LABEL_94:
  v56 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v57 = *(a1 + v56);
  *(a1 + v56) = *(a2 + v56);

  v58 = a3[9];
  v59 = *(a1 + v58);
  *(a1 + v58) = *(a2 + v58);

  *(a1 + a3[10]) = *(a2 + a3[10]);

  v60 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  v61 = (a1 + v60);
  v62 = (a2 + v60);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
  v64 = *(v63 - 1);
  v65 = *(v64 + 48);
  v66 = v65(v61, 1, v63);
  v67 = v65(v62, 1, v63);
  if (!v66)
  {
    if (v67)
    {
      sub_21D0CF7E0(v61, &qword_27CE5C678);
      goto LABEL_100;
    }

    v148 = a3;
    v86 = sub_21DBF563C();
    v141 = *(v86 - 8);
    v143 = v86;
    v137 = *(v141 + 40);
    (v137)(v61, v62);
    v87 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
    v61[v87[5]] = v62[v87[5]];
    v88 = v87[6];
    v89 = sub_21DBF509C();
    (*(*(v89 - 8) + 40))(&v61[v88], &v62[v88], v89);
    v61[v87[7]] = v62[v87[7]];
    v90 = v87[8];
    v91 = &v61[v90];
    v92 = &v62[v90];
    v91[16] = v92[16];
    *v91 = *v92;
    v61[v87[9]] = v62[v87[9]];
    v61[v87[10]] = v62[v87[10]];
    v61[v87[11]] = v62[v87[11]];
    v93 = v87[12];
    v94 = &v61[v93];
    v95 = &v62[v93];
    v97 = *v95;
    v96 = v95[1];
    *v94 = v97;
    v94[1] = v96;

    v98 = v63[12];
    v99 = &v61[v98];
    v100 = &v62[v98];
    *v99 = *&v62[v98];
    v99[8] = v62[v98 + 8];
    v101 = *&v62[v98 + 24];
    *(v99 + 2) = *&v62[v98 + 16];
    *(v99 + 3) = v101;

    v102 = *(v100 + 5);
    *(v99 + 4) = *(v100 + 4);
    *(v99 + 5) = v102;

    v103 = v63[16];
    v104 = &v61[v103];
    v105 = &v62[v103];
    v106 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
    v138 = *(v106 - 8);
    v107 = *(v138 + 48);
    v146 = v104;
    LODWORD(v104) = v107(v104, 1, v106);
    v108 = v107(v105, 1, v106);
    if (v104)
    {
      if (!v108)
      {
        *v146 = *v105;
        v116 = *(v106 + 20);
        if ((*(v141 + 48))(&v105[v116], 1, v143))
        {
          v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
          memcpy((v146 + v116), &v105[v116], *(*(v117 - 8) + 64));
        }

        else
        {
          (*(v141 + 32))(v146 + v116, &v105[v116], v143);
          (*(v141 + 56))(v146 + v116, 0, 1, v143);
        }

        (*(v138 + 56))(v146, 0, 1, v106);
        goto LABEL_119;
      }

      v109 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0) - 8) + 64);
      v110 = v146;
    }

    else
    {
      if (!v108)
      {
        v119 = *(v105 + 1);
        *v146 = *v105;
        *(v146 + 8) = v119;

        v120 = *(v106 + 20);
        v121 = *(v141 + 48);
        v140 = v121(v146 + v120, 1, v143);
        v122 = v121(&v105[v120], 1, v143);
        if (v140)
        {
          a3 = v148;
          if (!v122)
          {
            (*(v141 + 32))(v146 + v120, &v105[v120], v143);
            (*(v141 + 56))(v146 + v120, 0, 1, v143);
            goto LABEL_120;
          }

          v123 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68) - 8) + 64);
          v124 = (v146 + v120);
        }

        else
        {
          a3 = v148;
          if (!v122)
          {
            v137(v146 + v120, &v105[v120], v143);
            goto LABEL_120;
          }

          (*(v141 + 8))(v146 + v120, v143);
          v123 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68) - 8) + 64);
          v124 = (v146 + v120);
        }

        memcpy(v124, &v105[v120], v123);
LABEL_120:
        v61[v63[20]] = v62[v63[20]];
        v61[v63[24]] = v62[v63[24]];
        goto LABEL_121;
      }

      sub_21D106A98(v146, type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd);
      v109 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0) - 8) + 64);
      v110 = v146;
    }

    memcpy(v110, v105, v109);
LABEL_119:
    a3 = v148;
    goto LABEL_120;
  }

  if (v67)
  {
LABEL_100:
    v85 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
    memcpy(v61, v62, *(*(v85 - 8) + 64));
    goto LABEL_121;
  }

  v147 = a3;
  v68 = sub_21DBF563C();
  __src = *(v68 - 8);
  v145 = v68;
  v142 = __src[4];
  (v142)(v61, v62);
  v69 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
  v61[v69[5]] = v62[v69[5]];
  v70 = v69[6];
  v71 = sub_21DBF509C();
  (*(*(v71 - 8) + 32))(&v61[v70], &v62[v70], v71);
  v61[v69[7]] = v62[v69[7]];
  v72 = v69[8];
  v73 = &v61[v72];
  v74 = &v62[v72];
  v73[16] = v74[16];
  *v73 = *v74;
  v61[v69[9]] = v62[v69[9]];
  v61[v69[10]] = v62[v69[10]];
  v61[v69[11]] = v62[v69[11]];
  *&v61[v69[12]] = *&v62[v69[12]];
  v75 = v63[12];
  v76 = &v61[v75];
  v77 = &v62[v75];
  v78 = v77[2];
  v76[1] = v77[1];
  v76[2] = v78;
  *v76 = *v77;
  v79 = v63[16];
  v80 = &v61[v79];
  v81 = &v62[v79];
  v82 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
  v83 = *(v82 - 8);
  if ((*(v83 + 48))(v81, 1, v82))
  {
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0);
    memcpy(v80, v81, *(*(v84 - 8) + 64));
  }

  else
  {
    v139 = v80;
    *v80 = *v81;
    v111 = *(v82 + 20);
    if ((__src[6])(v81 + v111, 1, v145))
    {
      v112 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68) - 8) + 64);
      v113 = v139 + v111;
      v114 = v81 + v111;
      v115 = v139;
      memcpy(v113, v114, v112);
    }

    else
    {
      v142(v139 + v111, v81 + v111, v145);
      v118 = v139 + v111;
      v115 = v139;
      (__src[7])(v118, 0, 1, v145);
    }

    (*(v83 + 56))(v115, 0, 1, v82);
  }

  a3 = v147;
  v61[v63[20]] = v62[v63[20]];
  v61[v63[24]] = v62[v63[24]];
  (*(v64 + 56))(v61, 0, 1, v63);
LABEL_121:
  v125 = a3[13];
  v126 = a1 + v125;
  v127 = a2 + v125;
  v128 = *(v127 + 32);
  v129 = *v126;
  v130 = *(v126 + 8);
  v131 = *(v126 + 16);
  v132 = *(v126 + 24);
  v133 = *(v127 + 16);
  *v126 = *v127;
  *(v126 + 16) = v133;
  v134 = *(v126 + 32);
  *(v126 + 32) = v128;
  sub_21D48C240(v129, v130, v131, v132, v134);
  v135 = a3[15];
  *(a1 + a3[14]) = *(a2 + a3[14]);
  *(a1 + v135) = *(a2 + v135);

  return a1;
}

uint64_t type metadata accessor for TTRIQuickReminderViewModel()
{
  result = qword_27CE5CA88;
  if (!qword_27CE5CA88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D4931B0()
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TTRReminderDetailViewModel.DueDateState(319);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21D4932D0@<X0>(uint64_t a1@<X8>)
{
  if (qword_280D1BAC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = xmmword_280D1BAC8;
  v3 = xmmword_280D1BAD8;
  v4 = xmmword_280D1BAE8;
  v5 = byte_280D1BAF8;
  v6 = type metadata accessor for TTRIQuickReminderViewModel();
  v7 = v6[6];
  sub_21D0FB960(v2, *(&v2 + 1), v3, *(&v3 + 1), v4, *(&v4 + 1), v5);
  if (qword_27CE56940 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v9 = __swift_project_value_buffer(v8, qword_27CE5CA70);
  sub_21D104F44(v9, a1 + v7, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  swift_storeEnumTagMultiPayload();
  v10 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
  v11 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
  v12 = v6[12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
  result = (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  *a1 = v2;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  *(a1 + v6[7]) = 0;
  *(a1 + v6[8]) = v10;
  *(a1 + v6[9]) = v11;
  *(a1 + v6[10]) = 0;
  *(a1 + v6[11]) = 0;
  v15 = a1 + v6[13];
  *v15 = 1;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = 0x80;
  *(a1 + v6[14]) = 2;
  *(a1 + v6[15]) = MEMORY[0x277D84F90];
  return result;
}

double sub_21D49351C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v63 = a4;
  v62 = a1;
  v8 = type metadata accessor for TTRReminderDetailViewModel(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v74 + 1) = sub_21D0D8CF0(0, &qword_280D17770);
  v75 = &protocol witness table for REMReminderChangeItem;
  *&v73 = a2;
  *&v71[0] = 3;
  v11 = a2;
  TTRReminderViewModelComputedProperties.init(reminder:postProcessingOperations:)(&v73, v71, &v65);
  v12 = v65;
  v64 = *(&v66 + 1);
  v60 = v67;
  if (v65)
  {
    v13 = v65;
  }

  else
  {
    v13 = [v11 title];
    if (!v13)
    {
      v13 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
    }
  }

  v61 = v13;
  if (*(&v12 + 1))
  {
    v14 = v12;
    v15 = *(&v12 + 1);
  }

  else
  {
    v16 = v12;
    v15 = [v11 notes];
    if (!v15)
    {
      v15 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
    }
  }

  v59 = v15;
  v75 = 0;
  v73 = 0u;
  v74 = 0u;
  v72 = 0;
  memset(v71, 0, sizeof(v71));
  v67 = 0;
  v66 = 0u;
  v65 = 0u;
  v17 = 255;
  LOBYTE(v68) = -1;
  v70[0] = 0;
  v55 = *(&v12 + 1);
  v18 = v11;
  sub_21D7BC638(v18, &v73, v71, 0, &v65, v70, 1, v10);
  v19 = v18;
  v20 = sub_21D493C10(v19);

  v21 = v8[23];
  v49 = v10;
  v22 = &v10[v21];
  v23 = *(v22 + 1);
  v24 = *(v22 + 2);
  v25 = *(v22 + 3);
  v26 = v22[32];
  *&v65 = *v22;
  *(&v65 + 1) = v23;
  *&v66 = v24;
  *(&v66 + 1) = v25;
  LOBYTE(v67) = v26;
  sub_21D48BB60(v65, v23, v24, v25, v26);
  v27 = sub_21D4941F4(&v65);
  sub_21D494A88(v65, *(&v65 + 1), v66, *(&v66 + 1), v67);
  *&v65 = v20;
  sub_21D562840(v27);
  v56 = v65;
  sub_21D0D3954(a3, &v73, &qword_27CE59DC0);
  if (*(&v74 + 1))
  {
    sub_21D0D0FD0(&v73, v71);
    type metadata accessor for TTRListColors();
    sub_21D0D32E4(v71, v70);
    static TTRListColors.color(for:)(v70, &v65);
    v52 = v66;
    v58 = v65;
    v54 = v67;
    v53 = v68;
    v17 = v69;
    sub_21D0CF7E0(v70, &qword_27CE59DC0);
    __swift_destroy_boxed_opaque_existential_0(v71);
  }

  else
  {
    v58 = 0u;
    v54 = 0;
    v53 = 0;
    v52 = 0u;
  }

  v57 = v17;
  sub_21D0D3954(a3, &v65, &qword_27CE59DC0);
  v28 = *(&v66 + 1);
  if (*(&v66 + 1))
  {
    v29 = v8;
    v30 = v67;
    __swift_project_boxed_opaque_existential_1(&v65, *(&v66 + 1));
    v31 = *(v30 + 32);
    v32 = v30;
    v8 = v29;
    v51 = v31(v28, v32);
    v50 = v33;
    __swift_destroy_boxed_opaque_existential_0(&v65);
  }

  else
  {
    sub_21D0CF7E0(&v65, &qword_27CE59DC0);
    v51 = 0;
    v50 = 0xE000000000000000;
  }

  v34 = type metadata accessor for TTRIQuickReminderViewModel();
  v35 = v62;
  sub_21D104F44(v62, a5 + v34[6], type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21DBF8E0C();
  v36 = [v19 accountCapabilities];
  HIDWORD(v48) = [v36 supportsTextStyling];

  sub_21D0CF7E0(a3, &qword_27CE59DC0);
  sub_21D106A98(v35, type metadata accessor for TTRRemindersListViewModel.Item);
  v37 = v49;
  sub_21D104F44(&v49[v8[20]], a5 + v34[12], type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  v38 = *v22;
  v39 = *(v22 + 1);
  v41 = *(v22 + 2);
  v40 = *(v22 + 3);
  v42 = *(v37 + v8[17]);
  LOBYTE(v35) = v22[32];
  sub_21D48BB60(*v22, v39, v41, v40, v35);
  sub_21D106A98(v37, type metadata accessor for TTRReminderDetailViewModel);
  v43 = v52;
  result = *&v58;
  *a5 = v58;
  *(a5 + 16) = v43;
  v45 = v53;
  *(a5 + 32) = v54;
  *(a5 + 40) = v45;
  *(a5 + 48) = v57;
  v46 = v50;
  *(a5 + 56) = v51;
  *(a5 + 64) = v46;
  *(a5 + v34[7]) = v63 & 1;
  *(a5 + v34[8]) = v61;
  *(a5 + v34[9]) = v59;
  *(a5 + v34[10]) = v64;
  *(a5 + v34[11]) = BYTE4(v48);
  v47 = a5 + v34[13];
  *v47 = v38;
  *(v47 + 8) = v39;
  *(v47 + 16) = v41;
  *(v47 + 24) = v40;
  *(v47 + 32) = v35;
  *(a5 + v34[14]) = v42;
  *(a5 + v34[15]) = v56;
  return result;
}

uint64_t sub_21D493B5C()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  __swift_allocate_value_buffer(v0, qword_27CE5CA70);
  v1 = __swift_project_value_buffer(v0, qword_27CE5CA70);
  v2 = [objc_opt_self() newObjectID];
  v3 = *(v0 + 20);
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  result = (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *v1 = v2;
  return result;
}

uint64_t sub_21D493C10(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v41 - v3;
  v5 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v15 = sub_21D0D8CF0(0, &qword_280D17770);
  v47[3] = v15;
  v47[4] = &protocol witness table for REMReminderChangeItem;
  v47[0] = a1;
  v16 = a1;
  static TTRRemindersListViewModel.Reminder.displayDate(from:dateHidden:)(v47, 0, v14);
  sub_21D0D3954(v14, v11, &unk_27CE5F2B0);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    sub_21D0CF7E0(v11, &unk_27CE5F2B0);
LABEL_11:
    sub_21D0CF7E0(v14, &unk_27CE5F2B0);
    v36 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  sub_21D3DA2C4(v11, v8);
  v17 = v8[1];
  if (!v17)
  {
    sub_21D106A98(v8, type metadata accessor for TTRRemindersListViewModel.DisplayDate);
    goto LABEL_11;
  }

  v42 = *v8;
  sub_21DBF8E0C();
  v18 = sub_21D11274C(MEMORY[0x277D84F90]);
  if ((*(v8 + *(v5 + 36)) & 1) != 0 && (v19 = *MEMORY[0x277D740C0], v20 = [objc_opt_self() ttr_systemRedColor], v46 = sub_21D0D8CF0(0, &qword_280D1B8F0), *&v45 = v20, sub_21D0CF2E8(&v45, v44), isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(), v43 = v18, sub_21D476CE0(v44, v19, isUniquelyReferenced_nonNull_native), v18 = v43, UIAccessibilityShouldDifferentiateWithoutColor()))
  {
    v22 = sub_21DBFA12C();
    v23 = [objc_opt_self() _systemImageNamed_];
  }

  else
  {
    v23 = 0;
  }

  v24 = off_282EEAD30(v15, &protocol witness table for REMReminderChangeItem);
  v25 = *(v5 + 24);
  v26 = sub_21DBF563C();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v4, v8 + v25, v26);
  (*(v27 + 56))(v4, 0, 1, v26);
  v28 = _s15RemindersUICore25TTRRemindersListViewModelC8ReminderV21recurrenceDescription4from11displayDateSSSgSaySo17REMRecurrenceRuleCGSg_10Foundation0L0VSgtFZ_0(v24, v4);
  v30 = v29;

  sub_21D0CF7E0(v4, &qword_27CE58D68);
  if (v30)
  {
    sub_21DBF8E0C();
    sub_21D11274C(MEMORY[0x277D84F90]);
    sub_21DBF8E0C();
    v31 = sub_21DBFA12C();
    v32 = [objc_opt_self() _systemImageNamed_];

    _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v32);
    v34 = v33;

    sub_21DBF8E0C();
    swift_bridgeObjectRelease_n();
    v35 = v18;
  }

  else
  {
    v34 = 0;
    v28 = 0;
    v35 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CA98);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_21DC08D20;
  v38 = v42;
  *(v37 + 32) = v23;
  *(v37 + 40) = v38;
  *(v37 + 48) = v17;
  *(v37 + 56) = v18;
  *(v37 + 64) = v34;
  *(v37 + 72) = v28;
  *(v37 + 80) = v30;
  *(v37 + 88) = v35;
  *&v45 = v37;
  v39 = v23;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CAA0);
  sub_21D494A9C();
  v36 = sub_21DBFA41C();
  sub_21D106A98(v8, type metadata accessor for TTRRemindersListViewModel.DisplayDate);
  sub_21D0CF7E0(v14, &unk_27CE5F2B0);

LABEL_14:
  __swift_destroy_boxed_opaque_existential_0(v47);
  return v36;
}

uint64_t sub_21D4941F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 0xFD)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  if (!(v1 >> 6))
  {
    sub_21DBF8E0C();
    REMAlarmProximity.localizedLabelFormatString.getter(v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_21DC08D00;
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = sub_21D17A884();
    *(v10 + 32) = v3;
    *(v10 + 40) = v4;
    v3 = sub_21DBFA17C();
    v4 = v11;

    v6 = sub_21D11274C(MEMORY[0x277D84F90]);
    v12 = sub_21DBFA12C();
    v8 = [objc_opt_self() _systemImageNamed_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59AC0);
    result = swift_allocObject();
    v9 = xmmword_21DC08D00;
    goto LABEL_7;
  }

  if (v1 >> 6 == 1)
  {
    sub_21D48BB60(*a1, v4, *(a1 + 16), v5, v1);
    v6 = sub_21D11274C(MEMORY[0x277D84F90]);
    v7 = sub_21DBFA12C();
    v8 = [objc_opt_self() _systemImageNamed_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59AC0);
    result = swift_allocObject();
    v9 = xmmword_21DC08D00;
LABEL_7:
    *(result + 16) = v9;
    *(result + 32) = v8;
    *(result + 40) = v3;
    *(result + 48) = v4;
    *(result + 56) = v6;
    return result;
  }

  return MEMORY[0x277D84F90];
}

id sub_21D494418(uint64_t a1, void *a2)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v53 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  v3 = *(a1 + 16);
  v4 = 0x277CCA000;
  if (v3)
  {
    v5 = (a1 + 56);
    v55 = MEMORY[0x277D84F90];
    v6 = &off_278331000;
    do
    {
      v7 = *(v5 - 3);
      v8 = *v5;
      v56 = v7;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v9 = v53;
      if ([v9 length])
      {
        v10 = objc_allocWithZone(*(v4 + 2200));
        v11 = sub_21DBFA12C();
        v12 = [v10 v6[476]];

        [v9 appendAttributedString_];
      }

      if (v7)
      {
        v13 = objc_opt_self();
        v14 = v56;
        v15 = [v13 configurationWithFont:a2 scale:1];
        v54 = [v14 imageWithConfiguration_];

        v16 = [objc_opt_self() textAttachmentWithImage_];
        v17 = [objc_opt_self() attributedStringWithAttachment_];
        [v9 appendAttributedString_];
        v18 = objc_allocWithZone(*(v4 + 2200));
        v19 = sub_21DBFA12C();
        v20 = [v18 initWithString_];

        [v9 appendAttributedString_];
        v4 = 0x277CCA000uLL;

        v6 = &off_278331000;
      }

      v21 = objc_allocWithZone(*(v4 + 2200));
      v22 = sub_21DBFA12C();
      v23 = [v21 v6[476]];

      if (*(v8 + 16))
      {
        v24 = [v9 length];

        v25 = [v23 length];
        sub_21DBF8E0C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_21D212ABC(0, v55[2] + 1, 1, v55);
        }

        v4 = 0x277CCA000;
        v27 = v55[2];
        v26 = v55[3];
        if (v27 >= v26 >> 1)
        {
          v55 = sub_21D212ABC((v26 > 1), v27 + 1, 1, v55);
        }

        v55[2] = v27 + 1;
        v28 = &v55[3 * v27];
        v28[4] = v8;
        v28[5] = v24;
        v28[6] = v25;
        v6 = &off_278331000;
      }

      else
      {

        v4 = 0x277CCA000uLL;
      }

      [v9 appendAttributedString_];

      v5 += 4;
      --v3;
    }

    while (v3);
  }

  else
  {
    v55 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D20;
  v30 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v31 = sub_21D0D8CF0(0, &qword_280D176B0);
  *(inited + 40) = a2;
  v32 = *MEMORY[0x277D740C0];
  *(inited + 64) = v31;
  *(inited + 72) = v32;
  v33 = objc_opt_self();
  v34 = v30;
  v35 = a2;
  v36 = v32;
  v37 = [v33 secondaryLabelColor];
  *(inited + 104) = sub_21D0D8CF0(0, &qword_280D1B8F0);
  *(inited + 80) = v37;
  sub_21D11274C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2C0);
  swift_arrayDestroy();
  type metadata accessor for Key(0);
  sub_21D112874();
  v38 = sub_21DBF9E5C();

  v39 = v53;
  v40 = [v39 string];
  v41 = sub_21DBFA16C();
  v43 = v42;

  v44 = MEMORY[0x223D42B30](v41, v43);

  [v39 addAttributes:v38 range:{0, v44}];

  v45 = v55[2];
  if (v45)
  {
    v46 = v55 + 6;
    do
    {
      v47 = *(v46 - 1);
      v48 = *v46;
      v46 += 3;
      sub_21DBF8E0C();
      v49 = sub_21DBF9E5C();

      [v39 addAttributes:v49 range:{v47, v48}];

      --v45;
    }

    while (v45);
  }

  v50 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];

  return v50;
}

void sub_21D494A88(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 0xFDu)
  {
    sub_21D48C240(a1, a2, a3, a4, a5);
  }
}

unint64_t sub_21D494A9C()
{
  result = qword_27CE5CAA8;
  if (!qword_27CE5CAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5CAA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5CAA8);
  }

  return result;
}

uint64_t destroy for TTRIQuickReminderViewModel.DetailComponent(id *a1)
{
}

void *initializeWithCopy for TTRIQuickReminderViewModel.DetailComponent(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a2 + 24);
  a1[2] = *(a2 + 16);
  a1[3] = v5;
  v6 = v3;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRIQuickReminderViewModel.DetailComponent(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRIQuickReminderViewModel.DetailComponent(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderDetailViewModel.Attachment(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRReminderDetailViewModel.Attachment(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

char *TTRBatchProcessor.__allocating_init(resultType:process:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_allocObject();
  v8 = sub_21D495DC4(a1, a2, a3, a4);

  return v8;
}

void TTRBatchProcessor.accumulate(_:)(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  LOBYTE(v3) = (*(*(v3 + 88) + 48))(a1, *(v3 + 80));
  swift_endAccess();
  if (v3)
  {
    v4._object = 0x800000021DC49D80;
    v4._countAndFlagsBits = 0xD000000000000017;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v4);
  }
}

char *TTRBatchProcessor.init(resultType:process:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_21D495DC4(a1, a2, a3, a4);

  return v5;
}

uint64_t TTRBatchProcessor.accumulate(_:)(void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v5 = &v15[-1] - v4;
  v6 = sub_21DBFBA8C();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15[-1] - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = MEMORY[0x28223BE20](v9);
  (*(v12 + 16))(&v15[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v16 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v15);
  sub_21DBFA40C();
  while (1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    sub_21DBFBAFC();
    if ((*(v3 + 48))(v8, 1, AssociatedTypeWitness) == 1)
    {
      break;
    }

    (*(v3 + 32))(v5, v8, AssociatedTypeWitness);
    TTRBatchProcessor.accumulate(_:)(v5);
    (*(v3 + 8))(v5, AssociatedTypeWitness);
  }

  return __swift_destroy_boxed_opaque_existential_0(v15);
}

uint64_t TTRBatchProcessor.pop()(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v10[-v5];
  v7 = *(v2 + 112);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  v8 = *(v2 + 88);
  (*(v8 + 24))(v3, v8);
  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  (*(v8 + 56))(v3, v8);
  return swift_endAccess();
}

uint64_t *TTRBatchProcessor.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  sub_21D496348(v0 + *(*v0 + 120));
  return v0;
}

uint64_t TTRBatchProcessor.__deallocating_deinit()
{
  TTRBatchProcessor.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21D495404(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CBC0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE5CAB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v18[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE594F0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v18[-v14];
  v16 = *(*a1 + 120);
  swift_beginAccess();
  sub_21D4965C0(a1 + v16, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_21D496348(v11);
  }

  (*(v13 + 32))(v15, v11, v12);
  (*(v13 + 56))(v8, 1, 1, v12);
  swift_beginAccess();
  sub_21D496630(v8, a1 + v16);
  swift_endAccess();
  sub_21DBFA8EC();
  (*(v3 + 8))(v5, v2);
  return (*(v13 + 8))(v15, v12);
}

uint64_t TTRBatchSetResult.accumulatedResult.getter()
{
  sub_21D496098();

  return sub_21DBF8E0C();
}

uint64_t TTRBatchSetResult.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_21DBFA68C();
  if (sub_21DBFA6DC())
  {
    v7 = sub_21D495A08(v6, a1, a2);
  }

  else
  {
    v7 = MEMORY[0x277D84FA0];
  }

  *a3 = v7;
  return result;
}

uint64_t TTRBatchSetResult.accumulate(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v17 - v13;
  (*(v4 + 16))(v6, a1, v3, v12);
  sub_21DBFABAC();
  *v14 = sub_21DBFAB2C() & 1;
  (*(v8 + 32))(v10, v14, TupleTypeMetadata2);
  v15 = *v10;
  (*(v4 + 8))(&v10[*(TupleTypeMetadata2 + 48)], v3);
  return v15;
}

Swift::Void __swiftcall TTRBatchSetResult.reset()()
{
  sub_21DBFABAC();

  sub_21DBFAB9C();
}

uint64_t sub_21D4959B8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_21D496098();

  return sub_21DBF8E0C();
}

uint64_t sub_21D495A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v50 = &v38 - v11;
  v39 = v12;
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  if (sub_21DBFA6DC())
  {
    sub_21DBFBECC();
    v15 = sub_21DBFBEBC();
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
  }

  v43 = sub_21DBFA6DC();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    v17 = sub_21DBFA6AC();
    sub_21DBFA61C();
    if (v17)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_21DBFBF7C();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = sub_21DBF9FFC();
    v22 = v15;
    v23 = -1 << *(v15 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *(v49 + 8 * (v24 >> 6));
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v9, (*(v22 + 48) + v28 * v24), a2);
        v30 = a3;
        v31 = sub_21DBFA10C();
        v32 = *v47;
        (*v47)(v9, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *(v49 + 8 * (v24 >> 6));
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *(v49 + 8 * v25) = v27 | v26;
    v34 = *(v22 + 48) + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = *(v22 + 16);
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    *(v22 + 16) = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

char *sub_21D495DC4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v22 = a2;
  v23 = a3;
  v7 = *v5;
  v8 = *(*v5 + 80);
  v21 = *(v8 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v21 - v9;
  v11 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v11);
  v12 = *(v7 + 120);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE594F0);
  (*(*(v13 - 8) + 56))(&v5[v12], 1, 1, v13);
  type metadata accessor for TTRDeferredAction();
  v14 = swift_allocObject();
  v14[3] = 0;
  swift_unknownObjectWeakInit();
  v24 = MEMORY[0x277D84F90];
  sub_21D0DD20C();
  v15 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90);
  sub_21D0DA49C();
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v16 = sub_21DBF5EEC();
  v17 = MEMORY[0x277D84F90];
  v14[5] = v16;
  v14[6] = v17;
  v14[4] = v15;
  *(v5 + 2) = v14;
  (*(*(v7 + 88) + 40))(v8);
  (*(v21 + 32))(&v5[*(*v5 + 112)], v10, v8);
  v18 = v23;
  *(v5 + 3) = v22;
  *(v5 + 4) = v18;
  v19 = *(v5 + 2);
  swift_beginAccess();
  *(v19 + 24) = &protocol witness table for TTRBatchProcessor<A>;
  swift_unknownObjectWeakAssign();
  return v5;
}

uint64_t _s15RemindersUICore17TTRBatchProcessorC21deferredActionPerform_6reasonyAA011TTRDeferredF0C_SStF_0()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  v19 = AssociatedTypeWitness;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = &v16 - v6;
  v7 = *(v4 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  v11 = *(v2 + 112);
  swift_beginAccess();
  v12 = *(v7 + 16);
  v12(v10, v1 + v11, v4);
  LOBYTE(v2) = (*(v3 + 32))(v4, v3);
  v13 = *(v7 + 8);
  v13(v10, v4);
  if ((v2 & 1) == 0)
  {
    v12(v10, v1 + v11, v4);
    v14 = v17;
    (*(v3 + 24))(v4, v3);
    v13(v10, v4);
    swift_beginAccess();
    (*(v3 + 56))(v4, v3);
    swift_endAccess();
    (*(v1 + 24))(v14);
    (*(v18 + 8))(v14, v19);
  }

  return sub_21D495404(v1);
}

uint64_t sub_21D496348(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE5CAB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21D496414()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_21D496544();
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_21D496544()
{
  if (!qword_27CE5CB38[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE594F0);
    v0 = sub_21DBFBA8C();
    if (!v1)
    {
      atomic_store(v0, qword_27CE5CB38);
    }
  }
}

uint64_t sub_21D4965C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE5CAB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D496630(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE5CAB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_21D4966C4(void *a1, char a2, char a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_upperBar;
  v9 = *(v4 + OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_upperBar);
  if (!v9 || *(v9 + 24) != a1)
  {
    type metadata accessor for UpperBar();
    v10 = swift_allocObject();
    *(v10 + 32) = 0u;
    *(v10 + 48) = 0u;
    swift_unknownObjectUnownedInit();
    *(v10 + 24) = a1;
    v11 = OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_bottomBarToContainerTopConstraint;
    v12 = *(v4 + OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_bottomBarToContainerTopConstraint);
    if (v12)
    {
      v13 = a1;
      if ([v12 isActive])
      {
        if (*(v4 + v8))
        {

          sub_21D498AD4();
        }

        v31 = MEMORY[0x277D84F90];
        v32 = MEMORY[0x277D84F90];
        sub_21D498C28(1, &v31);
        v14 = objc_opt_self();
        sub_21D3677A0();
        v15 = sub_21DBFA5DC();
        [v14 deactivateConstraints_];

        v16 = sub_21DBFA5DC();
        [v14 activateConstraints_];

        v17 = *(v10 + 24);
        [v17 setTranslatesAutoresizingMaskIntoConstraints_];
        result = *(v4 + OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_clipView);
        if (result)
        {
          [result addSubview_];
          sub_21D4981A8(15, 1, 1);
          *(v4 + v8) = v10;

          if (a2)
          {
            v19 = *(v4 + v11);
            if (!v19 || ([v19 isActive] & 1) == 0)
            {
              v20 = *(v4 + v8);
              if (v20)
              {

                sub_21D4981A8(4, 0, 1);
                [*(v20 + 24) setHidden_];
                UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
              }
            }

            v21 = *(v4 + v11);
            if (v21 && [v21 isActive] && *(v4 + v8))
            {

              sub_21D496E04(v22, 0, 1);
            }
          }

          goto LABEL_30;
        }

LABEL_35:
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = a1;
    }

    v24 = *(v4 + v8);
    if (a2)
    {
      if (v24)
      {

        sub_21D4971E8(v25, v10, a3);

LABEL_25:
        *(v4 + v8) = v10;
        goto LABEL_30;
      }
    }

    else if (v24)
    {

      sub_21D498AD4();
    }

    v31 = MEMORY[0x277D84F90];
    v32 = MEMORY[0x277D84F90];
    sub_21D498C28(1, &v31);
    v26 = objc_opt_self();
    sub_21D3677A0();
    v27 = sub_21DBFA5DC();
    [v26 deactivateConstraints_];

    v28 = sub_21DBFA5DC();
    [v26 activateConstraints_];

    v29 = *(v10 + 24);
    [v29 setTranslatesAutoresizingMaskIntoConstraints_];
    result = *(v4 + OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_clipView);
    if (!result)
    {
      __break(1u);
      goto LABEL_35;
    }

    [result addSubview_];
    sub_21D4981A8(15, 1, 1);
    goto LABEL_25;
  }

  result = *(v4 + OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_bottomBarToContainerTopConstraint);
  if (!result)
  {
    return result;
  }

  result = [result isActive];
  if (!result || !*(v4 + v8))
  {
    return result;
  }

  sub_21D496E04(v30, 0, a2 & 1);
LABEL_30:
}

void sub_21D496B14(void *a1)
{
  [a1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  v3 = [a1 leadingAnchor];
  v4 = [v1 safeAreaLayoutGuide];
  v5 = [v4 leadingAnchor];

  v6 = [v3 constraintEqualToAnchor:v5 constant:20.0];
  v7 = [v1 safeAreaLayoutGuide];
  v8 = [v7 trailingAnchor];

  v9 = [a1 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:20.0];

  v11 = [v1 bottomAnchor];
  v12 = [a1 bottomAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  v14 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21DC0BFD0;
  *(v15 + 32) = v6;
  *(v15 + 40) = v10;
  *(v15 + 48) = v13;
  sub_21D3677A0();
  v16 = v6;
  v17 = v10;
  v21 = v13;
  v18 = sub_21DBFA5DC();

  [v14 activateConstraints_];

  v22[0] = MEMORY[0x277D84F90];
  v22[1] = MEMORY[0x277D84F90];
  sub_21D498C28(1, v22);
  v19 = sub_21DBFA5DC();
  [v14 deactivateConstraints_];

  v20 = sub_21DBFA5DC();
  [v14 activateConstraints_];

  sub_21D498014(a1);
}

void sub_21D496E04(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  if (a3)
  {
    v7 = [v4 superview];
    [v7 layoutIfNeeded];

    sub_21D4981A8(4, (a2 & 1) == 0, 1);
    v8 = *(a1 + 24);
    [v8 setHidden_];
    if (qword_280D1AA10 != -1)
    {
      swift_once();
    }

    v9 = *(qword_280D1AA18 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
    if (v9)
    {
      v10 = sub_21DBFA12C();
      v11 = [v9 BOOLForKey_];

      if (v11)
      {
        v12 = 3.0;
      }

      else
      {
        v12 = 1.0;
      }
    }

    else
    {
      v12 = 1.0;
    }

    v13 = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithMass:1.0 stiffness:350.0 damping:30.0 initialVelocity:{0.0, 0.0}];
    [v13 mass];
    v15 = v14;
    [v13 stiffness];
    v17 = v16 / (v12 * v12);
    [v13 damping];
    v19 = v18 / v12;
    [v13 initialVelocity];
    v22 = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithMass:v15 stiffness:v17 damping:v19 initialVelocity:{v20, v21}];
    v23 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v22 timingParameters:0.0];

    v24 = swift_allocObject();
    *(v24 + 16) = v4;
    v34 = sub_21D498FD8;
    v35 = v24;
    v30 = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_21D0D74FC;
    v33 = &block_descriptor_34;
    v25 = _Block_copy(&v30);
    v26 = v4;

    [v23 addAnimations_];
    _Block_release(v25);
    v27 = swift_allocObject();
    *(v27 + 16) = a2 & 1;
    *(v27 + 24) = v8;
    v34 = sub_21D498FE0;
    v35 = v27;
    v30 = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_21D498BD4;
    v33 = &block_descriptor_7_1;
    v28 = _Block_copy(&v30);
    v29 = v8;

    [v23 addCompletion_];
    _Block_release(v28);
    [v23 startAnimation];

    if (a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_21D4981A8(4, (a2 & 1) == 0, 1);
    [*(a1 + 24) setHidden_];
    if (a2)
    {
LABEL_12:
      UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
    }
  }
}

void sub_21D4971E8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = 1.0;
  if (a3 == 2)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = -1.0;
  }

  v9 = [v3 traitCollection];
  v10 = [v9 layoutDirection];

  if (v10 == 1)
  {
    v11 = -v8;
  }

  else
  {
    v11 = v8;
  }

  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v60 = v4;
  v12 = *(qword_280D1AA18 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v12)
  {
    v13 = sub_21DBFA12C();
    v14 = [v12 BOOLForKey_];

    if (v14)
    {
      v7 = 3.0;
    }

    else
    {
      v7 = 1.0;
    }
  }

  v15 = *(a1 + 24);
  v59 = *(a2 + 24);
  v16 = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithMass:1.0 stiffness:450.0 damping:60.0 initialVelocity:{0.0, 0.0}];
  [v16 mass];
  v18 = v17;
  [v16 stiffness];
  v20 = v19 / (v7 * v7);
  [v16 damping];
  v22 = v21 / v7;
  v57 = v16;
  [v16 initialVelocity];
  v25 = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithMass:v18 stiffness:v20 damping:v22 initialVelocity:{v23, v24}];
  v26 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v25 timingParameters:0.0];

  v27 = swift_allocObject();
  *(v27 + 16) = v15;
  *(v27 + 24) = v11;
  *&aBlock.tx = sub_21D499004;
  *&aBlock.ty = v27;
  *&aBlock.a = MEMORY[0x277D85DD0];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_21D0D74FC;
  *&aBlock.d = &block_descriptor_13_1;
  v28 = _Block_copy(&aBlock);
  v29 = v15;

  v58 = v26;
  [v26 addAnimations_];
  _Block_release(v28);
  v56 = [objc_allocWithZone(MEMORY[0x277D753D0]) initWithControlPoint1:0.33 controlPoint2:{0.0, 0.67, 1.0}];
  v30 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v56 timingParameters:v7 * 0.083];
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *&aBlock.tx = sub_21D499010;
  *&aBlock.ty = v31;
  *&aBlock.a = MEMORY[0x277D85DD0];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_21D0D74FC;
  *&aBlock.d = &block_descriptor_19_0;
  v32 = _Block_copy(&aBlock);
  v33 = v29;

  [v30 addAnimations_];
  _Block_release(v32);
  *&aBlock.tx = sub_21D499024;
  *&aBlock.ty = a1;
  *&aBlock.a = MEMORY[0x277D85DD0];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_21D498BD4;
  *&aBlock.d = &block_descriptor_22_0;
  v34 = _Block_copy(&aBlock);

  [v30 addCompletion_];
  _Block_release(v34);
  [v59 setTranslatesAutoresizingMaskIntoConstraints_];
  v35 = *&v60[OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_clipView];
  if (v35)
  {
    [v35 addSubview_];
    sub_21D4981A8(14, 1, 0);
    v36 = [v60 superview];
    [v36 layoutIfNeeded];

    sub_21D4981A8(1, 0, 0);
    sub_21D4981A8(1, 1, 0);
    CGAffineTransformMakeTranslation(&aBlock, v11 * -72.5, 0.0);
    [v59 setTransform_];
    [v59 setAlpha_];
    v37 = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithMass:1.0 stiffness:250.0 damping:60.0 initialVelocity:{0.0, 0.0}];
    [v37 mass];
    v39 = v38;
    [v37 stiffness];
    v41 = v40 / (v7 * v7);
    [v37 damping];
    v43 = v42 / v7;
    [v37 initialVelocity];
    v46 = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithMass:v39 stiffness:v41 damping:v43 initialVelocity:{v44, v45}];
    v47 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v46 timingParameters:0.0];

    v48 = swift_allocObject();
    *(v48 + 16) = v60;
    *(v48 + 24) = v59;
    *&aBlock.tx = sub_21D499030;
    *&aBlock.ty = v48;
    *&aBlock.a = MEMORY[0x277D85DD0];
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_21D0D74FC;
    *&aBlock.d = &block_descriptor_28;
    v49 = _Block_copy(&aBlock);
    v50 = v60;
    v51 = v59;

    [v47 addAnimations_];
    _Block_release(v49);
    v52 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v56 timingParameters:v7 * 0.083];
    v53 = swift_allocObject();
    *(v53 + 16) = v51;
    *&aBlock.tx = sub_21D499038;
    *&aBlock.ty = v53;
    *&aBlock.a = MEMORY[0x277D85DD0];
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_21D0D74FC;
    *&aBlock.d = &block_descriptor_34;
    v54 = _Block_copy(&aBlock);
    v55 = v51;

    [v52 addAnimations_];
    _Block_release(v54);
    [v58 startAnimation];
    [v30 startAnimation];
    [v47 startAnimation];
    [v52 startAnimationAfterDelay_];
  }

  else
  {
    __break(1u);
  }
}

id sub_21D497A1C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_tabBar] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_clipView] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_clipViewBottomConstraint] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_bottomBarToContainerTopConstraint] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_upperBar] = 0;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  sub_21D497AE0();

  return v10;
}

void sub_21D497AE0()
{
  v1 = v0;
  v2 = [objc_opt_self() effectWithStyle_];
  v3 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 addSubview_];
  v4 = objc_allocWithZone(type metadata accessor for TTRISeparator());
  v5 = TTRISeparator.init(axis:)(0);
  v6 = *MEMORY[0x277D768C8];
  v7 = *(MEMORY[0x277D768C8] + 8);
  v8 = *(MEMORY[0x277D768C8] + 16);
  v9 = *(MEMORY[0x277D768C8] + 24);
  v10 = v5;
  [v10 setLayoutMargins_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 addSubview_];
  v11 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setClipsToBounds_];
  v12 = v11;
  v13 = sub_21DBFA12C();
  [v12 setAccessibilityIdentifier_];

  [v1 addSubview_];
  v14 = *&v1[OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_clipView];
  *&v1[OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_clipView] = v12;
  v15 = v12;

  UIView.constraintsEqualTo(_:edges:)(v3, 15);
  v16 = UIView.constraintsEqualTo(_:edges:)(v15, 11);
  sub_21D562934(v16);
  v17 = UIView.constraintsEqualTo(_:edges:)(v10, 10);
  sub_21D562934(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC09CF0;
  v19 = [v1 topAnchor];
  v20 = [v10 bottomAnchor];

  v21 = [v19 constraintEqualToAnchor_];
  *(inited + 32) = v21;
  sub_21D562934(inited);
  v22 = objc_opt_self();
  sub_21D3677A0();
  v23 = sub_21DBFA5DC();

  [v22 activateConstraints_];
}

id sub_21D497E1C(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_tabBar] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_clipView] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_clipViewBottomConstraint] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_bottomBarToContainerTopConstraint] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_upperBar] = 0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    sub_21D497AE0();
  }

  return v5;
}

void sub_21D497EF0()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_tabBar;
  v2 = *&v0[OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_tabBar];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  [v2 bounds];
  Width = CGRectGetWidth(v9);
  v4 = *&v0[v1];
  if (!v4)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v5 = 48.0;
  if (Width <= 327.0)
  {
    v5 = 39.0;
  }

  if (Width <= 272.0)
  {
    v5 = 27.0;
  }

  v6 = (Width - v5) * 0.25 * 0.5;
  v7 = v4;
  sub_21D4ABCE4(v6);
}

void sub_21D498014(void *a1)
{
  if (!a1 || (v2 = [a1 topAnchor]) == 0)
  {
    v2 = [v1 bottomAnchor];
  }

  v3 = *&v1[OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_clipView];
  if (v3)
  {
    v4 = [v3 bottomAnchor];
    v5 = [v4 constraintEqualToAnchor_];

    v6 = OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_clipViewBottomConstraint;
    v7 = *&v1[OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_clipViewBottomConstraint];
    if (v7)
    {
      [v7 setActive_];
      v8 = *&v1[v6];
    }

    else
    {
      v8 = 0;
    }

    *&v1[v6] = v5;
    v9 = v5;

    v10 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_21DC09CF0;
    *(v11 + 32) = v9;
    sub_21D3677A0();
    v12 = v9;
    v13 = sub_21DBFA5DC();

    [v10 activateConstraints_];
  }

  else
  {
    __break(1u);
  }
}

void sub_21D4981A8(char a1, char a2, char a3)
{
  v4 = v3;
  v51 = MEMORY[0x277D84F90];
  v52 = MEMORY[0x277D84F90];
  if (a1)
  {
    swift_beginAccess();
    v8 = *(v3 + 32);
    if (a2)
    {
      if (v8)
      {
        v9 = *(v3 + 32);
      }

      else
      {
        v11 = [*(v3 + 24) topAnchor];
        Strong = swift_unknownObjectUnownedLoadStrong();
        v13 = [Strong topAnchor];

        v9 = [v11 constraintEqualToAnchor_];
        v8 = 0;
      }

      v14 = v8;
      if (([v9 isActive] & 1) == 0)
      {
        swift_beginAccess();
        v15 = v9;
        MEMORY[0x223D42D80]();
        if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        swift_endAccess();
      }

      *(v4 + 32) = v9;
    }

    else
    {
      if (v8)
      {
        if ([*(v3 + 32) isActive])
        {
          swift_beginAccess();
          v10 = v8;
          MEMORY[0x223D42D80]();
          if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21DBFA63C();
          }

          sub_21DBFA6CC();
          swift_endAccess();
        }
      }

      *(v3 + 32) = 0;
    }

    swift_endAccess();
  }

  if ((a1 & 2) != 0)
  {
    swift_beginAccess();
    v16 = *(v4 + 40);
    if (a2)
    {
      if (v16)
      {
        v17 = *(v4 + 40);
      }

      else
      {
        v19 = swift_unknownObjectUnownedLoadStrong();
        v20 = *&v19[OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_tabBar];
        v21 = v20;

        if (!v20)
        {
          __break(1u);
          goto LABEL_83;
        }

        v22 = [v21 leadingAnchor];

        v23 = [*(v4 + 24) leadingAnchor];
        v17 = [v22 constraintEqualToAnchor_];

        v16 = 0;
      }

      v24 = v16;
      if (([v17 isActive] & 1) == 0)
      {
        swift_beginAccess();
        v25 = v17;
        MEMORY[0x223D42D80]();
        if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        swift_endAccess();
      }

      *(v4 + 40) = v17;
    }

    else
    {
      if (v16)
      {
        if ([*(v4 + 40) isActive])
        {
          swift_beginAccess();
          v18 = v16;
          MEMORY[0x223D42D80]();
          if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21DBFA63C();
          }

          sub_21DBFA6CC();
          swift_endAccess();
        }
      }

      *(v4 + 40) = 0;
    }

    swift_endAccess();
  }

  if ((a1 & 4) == 0)
  {
    goto LABEL_57;
  }

  swift_beginAccess();
  v26 = *(v4 + 48);
  if ((a2 & 1) == 0)
  {
    if (v26)
    {
      if ([*(v4 + 48) isActive])
      {
        swift_beginAccess();
        v28 = v26;
        MEMORY[0x223D42D80]();
        if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        swift_endAccess();
      }
    }

    *(v4 + 48) = 0;
    goto LABEL_56;
  }

  if (!v26)
  {
    v29 = swift_unknownObjectUnownedLoadStrong();
    v30 = *&v29[OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_tabBar];
    v31 = v30;

    if (v30)
    {
      v32 = [v31 topAnchor];

      v33 = [*(v4 + 24) bottomAnchor];
      v27 = [v32 constraintEqualToAnchor:v33 constant:7.0];

      v26 = 0;
      goto LABEL_51;
    }

LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v27 = *(v4 + 48);
LABEL_51:
  v34 = v26;
  if (([v27 isActive] & 1) == 0)
  {
    swift_beginAccess();
    v35 = v27;
    MEMORY[0x223D42D80]();
    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
    swift_endAccess();
  }

  *(v4 + 48) = v27;
LABEL_56:
  swift_endAccess();
LABEL_57:
  if ((a1 & 8) != 0)
  {
    swift_beginAccess();
    v36 = *(v4 + 56);
    if ((a2 & 1) == 0)
    {
      if (v36)
      {
        if ([*(v4 + 56) isActive])
        {
          swift_beginAccess();
          v38 = v36;
          MEMORY[0x223D42D80]();
          if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21DBFA63C();
          }

          sub_21DBFA6CC();
          swift_endAccess();
        }
      }

      *(v4 + 56) = 0;
      goto LABEL_75;
    }

    if (v36)
    {
      v37 = *(v4 + 56);
LABEL_70:
      v44 = v36;
      if (([v37 isActive] & 1) == 0)
      {
        swift_beginAccess();
        v45 = v37;
        MEMORY[0x223D42D80]();
        if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        swift_endAccess();
      }

      *(v4 + 56) = v37;
LABEL_75:
      swift_endAccess();
      goto LABEL_76;
    }

    v39 = swift_unknownObjectUnownedLoadStrong();
    v40 = *&v39[OBJC_IVAR____TtC15RemindersUICore12TTRIQuickBar_tabBar];
    v41 = v40;

    if (v40)
    {
      v42 = [v41 trailingAnchor];

      v43 = [*(v4 + 24) trailingAnchor];
      v37 = [v42 constraintEqualToAnchor_];

      v36 = 0;
      goto LABEL_70;
    }

LABEL_84:
    __break(1u);
    return;
  }

LABEL_76:
  if (a3)
  {
    v46 = swift_unknownObjectUnownedLoadStrong();
    swift_beginAccess();
    if (*(v4 + 32))
    {
      swift_beginAccess();
      v47 = *(v4 + 48) == 0;
    }

    else
    {
      v47 = 1;
    }

    swift_beginAccess();
    sub_21D498C28(v47, &v51);
    swift_endAccess();
  }

  swift_beginAccess();
  v48 = objc_opt_self();
  sub_21D3677A0();
  v49 = sub_21DBFA5DC();
  [v48 deactivateConstraints_];

  v50 = sub_21DBFA5DC();
  [v48 activateConstraints_];
}