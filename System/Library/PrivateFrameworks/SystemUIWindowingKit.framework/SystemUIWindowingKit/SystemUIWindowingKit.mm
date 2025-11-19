void *sub_21ED26878@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_21ED268A8()
{
  MEMORY[0x223D6A320](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21ED268E0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21ED26920(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21ED26940(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

id sub_21ED26998@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 elements];
  *a2 = result;
  return result;
}

id sub_21ED269E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contextMenuContainerView];
  *a2 = result;
  return result;
}

id sub_21ED26A30@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 supportsHoverInteractions];
  *a2 = result;
  return result;
}

uint64_t sub_21ED26A78()
{
  MEMORY[0x223D6A320](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21ED26AC4()
{
  MEMORY[0x223D6A320](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21ED26AFC()
{
  v1 = *(v0 + 16);

  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_21ED26B50()
{
  MEMORY[0x223D6A320](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21ED26B8C()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_21ED26BC4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_21ED26C14()
{
  v1 = OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView____lazy_storage___tapGestureRecognizer;
  v2 = *(v0 + OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView____lazy_storage___tapGestureRecognizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView____lazy_storage___tapGestureRecognizer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75B80]) init];
    [v4 addTarget:v0 action:sel_handleTapGesture_];
    [v4 setDelegate_];

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_21ED26CCC()
{
  v1 = OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView____lazy_storage___hoverGestureRecognizer;
  v2 = *(v0 + OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView____lazy_storage___hoverGestureRecognizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView____lazy_storage___hoverGestureRecognizer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D755A0]) init];
    [v4 addTarget:v0 action:sel_handleHover_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_21ED26D5C(signed __int8 a1, char a2)
{
  v5 = a1;
  v6 = sub_21ED26C14();
  v7 = v5 > 1;
  [v6 setEnabled_];

  v8 = dbl_21ED36A80[a1];
  v9 = dbl_21ED36AA0[a1];
  v10 = OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_enabled;
  v11 = sub_21ED295F0(v2[OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_variant], a1, v2[OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_enabled]);
  v12 = v2[OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_interactionState];
  LODWORD(v10) = v7 & ~v2[v10];
  v13 = sub_21ED27488();
  [v13 frame];
  [v13 setFrame_];

  v14 = OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView____lazy_storage___backgroundView;
  v15 = [*&v2[OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView____lazy_storage___backgroundView] layer];
  [v15 setCornerRadius_];

  v16 = *&v2[v14];
  v34 = v10;
  v35 = v11;
  if (v10 == 1)
  {
    v17 = [v11 colorWithAlphaComponent_];
  }

  else
  {
    v17 = v11;
  }

  v18 = v17;
  [v16 setBackgroundColor_];

  v19 = sub_21ED27270();
  if (v19)
  {
    v20 = v19;
    CGAffineTransformMakeScale(&v36, v9 / 6.0, v9 / 6.0);
    [v20 setTransform_];
  }

  v21 = OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView____lazy_storage___icon;
  v22 = *&v2[OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView____lazy_storage___icon];
  if (v22)
  {
    v23 = *&v2[v14];
    v24 = v22;
    [v23 bounds];
    UIRectGetCenter();
    [v24 setCenter_];
    sub_21ED299C0(v22);
  }

  v25 = *&v2[v21];
  if (a2)
  {
    if (v25)
    {
      v26 = v25;
      v27 = sub_21ED358EC();

      if (qword_27CEE5CB8 != -1)
      {
        swift_once();
      }

      [v26 setState:v27 animated:1 transitionSpeed:0 completion:*&dword_27CEE5CC0];

      goto LABEL_15;
    }
  }

  else if (v25)
  {
    v28 = v25;
    v29 = sub_21ED358EC();

    [v28 setState_];

LABEL_15:
    sub_21ED299C0(v25);
    goto LABEL_17;
  }

LABEL_17:
  v30 = *&v2[v21];
  if (v30)
  {
    v31 = 0.6;
    if (v34)
    {
      v31 = 0.3;
    }

    if ((v12 & 0xFE) != 2)
    {
      v31 = 0.0;
    }

    [v30 setAlpha_];
  }

  [v2 setBounds_];
  v32 = [v2 layer];
  [v32 setCornerRadius_];

  v33 = *&v2[v14];
  [v33 frame];
  [v33 setFrame_];

  sub_21ED289B0(a1);
}

void sub_21ED2717C(unsigned __int8 a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_variant;
  if (*(v2 + OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_variant) != a1)
  {
    v5 = sub_21ED27270();
    if (v5)
    {
      v6 = v5;
      [v5 removeFromSuperview];
    }

    v7 = *(v2 + v4);
    v8 = sub_21ED272FC();
    v9 = *(v2 + OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView____lazy_storage___icon);
    *(v2 + OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView____lazy_storage___icon) = v8;
    v10 = v8;
    sub_21ED299C0(v9);
    if (v8)
    {
      v11 = sub_21ED27488();
      [v11 addSubview_];
    }

    v12 = *(v2 + OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_interactionState);

    sub_21ED26D5C(v12, 0);
  }
}

id sub_21ED27270()
{
  v1 = OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView____lazy_storage___icon;
  v2 = *(v0 + OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView____lazy_storage___icon);
  v3 = v2;
  if (v2 == 1)
  {
    swift_getObjectType();
    v4 = *(v0 + OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_variant);
    v5 = v0;
    v3 = sub_21ED272FC();
    v6 = *(v0 + v1);
    *(v5 + v1) = v3;
    v7 = v3;
    sub_21ED299C0(v6);
  }

  sub_21ED29A6C(v2);
  return v3;
}

id sub_21ED272FC()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = objc_allocWithZone(MEMORY[0x277CF0D48]);
  v3 = sub_21ED358EC();

  v4 = [v2 initWithPackageName:v3 inBundle:v1];

  if (v4)
  {
    [v4 setUserInteractionEnabled_];
    v5 = v4;
    [v5 bounds];
    [v5 setBounds_];
  }

  return v4;
}

id sub_21ED27488()
{
  v1 = OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView____lazy_storage___backgroundView;
  v2 = *(v0 + OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView____lazy_storage___backgroundView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView____lazy_storage___backgroundView);
  }

  else
  {
    v4 = sub_21ED274EC(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_21ED274EC(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v2 setUserInteractionEnabled_];
  v3 = sub_21ED27270();
  if (v3)
  {
    v4 = v3;
    [v2 addSubview_];
  }

  v5 = *(a1 + OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_variant);
  v6 = sub_21ED358EC();

  [v2 _setMatchedViewIdentifier_];

  v7 = [v2 layer];
  [v7 setAllowsEdgeAntialiasing_];

  return v2;
}

id sub_21ED2769C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21ED27784()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_21ED29CFC();
    v0 = sub_21ED2EE5C();
    v1 = sub_21ED35A3C();
    swift_unknownObjectRelease();
  }

  else
  {
    v1 = 0;
  }

  sub_21ED29CFC();
  v2 = sub_21ED26C14();
  v3 = sub_21ED35A3C();

  return v3 & v1 & 1;
}

char *sub_21ED278B8(char *result)
{
  if (*(v1 + OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_enabled) == 1)
  {
    result = [result state];
    if (result == 3)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v2 = result;
        v3 = *(v1 + OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_variant);
        v4 = &result[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_delegate];
        if (swift_unknownObjectWeakLoadStrong())
        {
          v5 = *(v4 + 1);
          ObjectType = swift_getObjectType();
          (*(v5 + 16))(v2, v3, 0, ObjectType, v5);
          swift_unknownObjectRelease();
        }

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

id sub_21ED27A0C(id result)
{
  if (*(v1 + OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_enabled) == 1)
  {
    result = [result state];
    if (result == 3)
    {
      if (*(v1 + OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_interactionState) == 2 && (*(v1 + OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_variant) & 0xFE) == 2)
      {
        v2 = OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_hoverTimeoutCompletionTask;
        if (*(v1 + OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_hoverTimeoutCompletionTask))
        {
          v3 = *(v1 + OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_hoverTimeoutCompletionTask);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEE5D80, &qword_21ED36990);
          sub_21ED359CC();

          v4 = *(v1 + v2);
        }

        *(v1 + v2) = 0;
      }
    }

    else if (result == 1 && *(v1 + OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_interactionState) == 2 && (*(v1 + OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_variant) & 0xFE) == 2)
    {

      return sub_21ED27B5C();
    }
  }

  return result;
}

uint64_t sub_21ED27B5C()
{
  v1 = v0;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEE5D88, &qword_21ED36998) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v13 - v3;
  v5 = sub_21ED359BC();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_21ED3599C();

  v7 = sub_21ED3598C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;

  v10 = sub_21ED28404(0, 0, v4, &unk_21ED369A8, v8);
  v11 = *(v1 + OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_hoverTimeoutCompletionTask);
  *(v1 + OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_hoverTimeoutCompletionTask) = v10;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for WindowControlsView.InteractionState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WindowControlsView.InteractionState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21ED27EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_21ED35AFC();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  sub_21ED3599C();
  v4[9] = sub_21ED3598C();
  v9 = sub_21ED3597C();
  v4[10] = v9;
  v4[11] = v8;

  return MEMORY[0x2822009F8](sub_21ED27FD0, v9, v8);
}

uint64_t sub_21ED27FD0()
{
  if (qword_27CEE5C10 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v3 = qword_27CEE5C18;
  v2 = unk_27CEE5C20;
  sub_21ED35B8C();
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_21ED280D4;
  v5 = *(v0 + 64);

  return sub_21ED29138(v3, v2, 0, 0, 1);
}

uint64_t sub_21ED280D4()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 104) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 88);
  v9 = *(v2 + 80);
  if (v0)
  {
    v10 = sub_21ED28398;
  }

  else
  {
    v10 = sub_21ED2826C;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_21ED2826C()
{
  v1 = v0[9];
  v2 = v0[5];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (*(Strong + OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_hoverTimeoutCompletionTask))
    {
      v5 = *(Strong + OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_hoverTimeoutCompletionTask);

      if ((swift_task_isCancelled() & 1) == 0 && *(v4 + OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_interactionState) == 2)
      {
        v6 = swift_unknownObjectWeakLoadStrong();
        if (v6)
        {
          v7 = v6;
          [v6 setShowsMenuAsPrimaryAction_];
          [v7 performPrimaryAction];
          swift_unknownObjectRelease();

          goto LABEL_9;
        }
      }
    }
  }

LABEL_9:
  v8 = v0[8];

  v9 = v0[1];

  return v9();
}

uint64_t sub_21ED28398()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_21ED28404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEE5D88, &qword_21ED36998) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = v23 - v9;
  sub_21ED29C24(a3, v23 - v9);
  v11 = sub_21ED359BC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_21ED29C94(v10);
  }

  else
  {
    sub_21ED359AC();
    (*(v12 + 8))(v10, v11);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21ED3597C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21ED3590C() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_21ED29C94(a3);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21ED29C94(a3);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_21ED28670()
{
  result = sub_21ED35BCC();
  qword_27CEE5C18 = result;
  unk_27CEE5C20 = v1;
  return result;
}

uint64_t sub_21ED28698(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      if (qword_27CEE5CE0 == -1)
      {
        return sub_21ED3583C();
      }
    }

    else if (qword_27CEE5CE0 == -1)
    {
      return sub_21ED3583C();
    }

    swift_once();
    return sub_21ED3583C();
  }

  if (a1)
  {
    if (qword_27CEE5CE0 != -1)
    {
      swift_once();
    }
  }

  else if (qword_27CEE5CE0 != -1)
  {
    swift_once();
  }

  return sub_21ED3583C();
}

uint64_t sub_21ED2888C()
{
  v1 = *v0;
  sub_21ED35B9C();
  MEMORY[0x223D69E50](v1);
  return sub_21ED35BBC();
}

uint64_t sub_21ED28900()
{
  v1 = *v0;
  sub_21ED35B9C();
  MEMORY[0x223D69E50](v1);
  return sub_21ED35BBC();
}

unint64_t sub_21ED2895C()
{
  result = qword_27CEE5D48;
  if (!qword_27CEE5D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEE5D48);
  }

  return result;
}

void sub_21ED289B0(unsigned __int8 a1)
{
  [v1 setIsAccessibilityElement_];
  v2 = OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_variant;
  sub_21ED28698(v1[OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_variant]);
  v3 = sub_21ED358EC();

  [v1 setAccessibilityLabel_];

  v4 = v1[v2];
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = 0xE400000000000000;
      v6 = 1836019546;
    }

    else
    {
      v5 = 0xE600000000000000;
      v6 = 0x6D6F6F7A6E55;
    }
  }

  else if (v1[v2])
  {
    v5 = 0xE800000000000000;
    v6 = 0x657A696D696E694DLL;
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x65736F6C43;
  }

  MEMORY[0x223D69BC0](v6, v5);

  MEMORY[0x223D69BC0](0x6E6F747475622DLL, 0xE700000000000000);
  v7 = sub_21ED358EC();

  [v1 setAccessibilityIdentifier_];
}

id sub_21ED28B14()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.659 green:0.655 blue:0.647 alpha:1.0];
  qword_27CEE5C30 = result;
  return result;
}

id sub_21ED28B64()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.698 green:0.694 blue:0.694 alpha:1.0];
  qword_27CEE5C40 = result;
  return result;
}

id sub_21ED28BB0()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.62 green:0.62 blue:0.62 alpha:1.0];
  qword_27CEE5C50 = result;
  return result;
}

id sub_21ED28BF8()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.878 green:0.451 blue:0.4 alpha:1.0];
  qword_27CEE5C60 = result;
  return result;
}

id sub_21ED28C48()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.933 green:0.761 blue:0.38 alpha:1.0];
  qword_27CEE5C70 = result;
  return result;
}

id sub_21ED28C98()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.478 green:0.765 blue:0.38 alpha:1.0];
  qword_27CEE5C80 = result;
  return result;
}

id sub_21ED28CE8()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:0.045 blue:0.096 alpha:1.0];
  qword_27CEE5C90 = result;
  return result;
}

id sub_21ED28D34()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:0.79 blue:0.0 alpha:1.0];
  qword_27CEE5CA0 = result;
  return result;
}

id sub_21ED28D7C()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:0.794 blue:0.281 alpha:1.0];
  qword_27CEE5CB0 = result;
  return result;
}

float sub_21ED28DC8()
{
  UIAnimationDragCoefficient();
  result = 0.7 / v0;
  dword_27CEE5CC0 = LODWORD(result);
  return result;
}

BOOL sub_21ED28E5C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_21ED28E8C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_21ED28EB8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_21ED28F90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_21ED29988(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_21ED29060(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21ED29138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_21ED35AEC();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_21ED29238, 0, 0);
}

uint64_t sub_21ED29238()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_21ED35AFC();
  v7 = sub_21ED29060(&qword_27CEE5D90, MEMORY[0x277D85928]);
  sub_21ED35B6C();
  sub_21ED29060(&qword_27CEE5D98, MEMORY[0x277D858F8]);
  sub_21ED35B0C();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_21ED293C8;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_21ED293C8()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21ED29584, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_21ED29584()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

id sub_21ED295F0(unsigned __int8 a1, unsigned __int8 a2, char a3)
{
  if (a1 > 1u)
  {
    if (a2 - 2 >= 2)
    {
      if (a2 == 1)
      {
        if (qword_27CEE5C78 != -1)
        {
          swift_once();
        }

        v3 = &qword_27CEE5C80;
        goto LABEL_42;
      }

      if (a2)
      {
        goto LABEL_45;
      }
    }

    else if (a3)
    {
      if (qword_27CEE5CA8 != -1)
      {
        swift_once();
      }

      v3 = &qword_27CEE5CB0;
      goto LABEL_42;
    }

    if (qword_27CEE5C48 != -1)
    {
      swift_once();
    }

    v3 = &qword_27CEE5C50;
    goto LABEL_42;
  }

  if (a1)
  {
    if (a2 - 2 >= 2)
    {
      if (a2 == 1)
      {
        if (qword_27CEE5C68 != -1)
        {
          swift_once();
        }

        v3 = &qword_27CEE5C70;
        goto LABEL_42;
      }

      if (a2)
      {
        goto LABEL_45;
      }
    }

    else if (a3)
    {
      if (qword_27CEE5C98 != -1)
      {
        swift_once();
      }

      v3 = &qword_27CEE5CA0;
      goto LABEL_42;
    }

    if (qword_27CEE5C38 != -1)
    {
      swift_once();
    }

    v3 = &qword_27CEE5C40;
    goto LABEL_42;
  }

  if (a2 - 2 >= 2)
  {
    if (a2 == 1)
    {
      if (qword_27CEE5C58 != -1)
      {
        swift_once();
      }

      v3 = &qword_27CEE5C60;
      goto LABEL_42;
    }

    if (!a2)
    {
      goto LABEL_35;
    }

LABEL_45:
    sub_21ED359DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEE5D70, &qword_21ED36988);
    swift_allocObject();
    result = sub_21ED29A18();
    __break(1u);
    return result;
  }

  if ((a3 & 1) == 0)
  {
LABEL_35:
    if (qword_27CEE5C28 != -1)
    {
      swift_once();
    }

    v3 = &qword_27CEE5C30;
    goto LABEL_42;
  }

  if (qword_27CEE5C88 != -1)
  {
    swift_once();
  }

  v3 = &qword_27CEE5C90;
LABEL_42:
  v4 = *v3;

  return v4;
}

void sub_21ED298D0()
{
  *(v0 + OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView____lazy_storage___backgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView____lazy_storage___icon) = 1;
  *(v0 + OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView____lazy_storage___tapGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView____lazy_storage___hoverGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_hoverTimeoutCompletionTask) = 0;
  sub_21ED35B1C();
  __break(1u);
}

uint64_t sub_21ED29988(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_21ED299C0(id a1)
{
  if (a1 != 1)
  {
  }
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

unint64_t sub_21ED29A18()
{
  result = qword_27CEE5D78;
  if (!qword_27CEE5D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEE5D78);
  }

  return result;
}

id sub_21ED29A6C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_21ED29A7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21ED29B30;

  return sub_21ED27EDC(a1, v4, v5, v6);
}

uint64_t sub_21ED29B30()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_21ED29C24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEE5D88, &qword_21ED36998);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21ED29C94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEE5D88, &qword_21ED36998);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21ED29CFC()
{
  result = qword_27CEE5DA0;
  if (!qword_27CEE5DA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CEE5DA0);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_21ED29D84(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21ED29DA4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

void sub_21ED29E2C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

double SWKWindowControlsViewController.cornerOffset.getter()
{
  v1 = v0 + OBJC_IVAR___SWKWindowControlsViewController_cornerOffset;
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

void SWKWindowControlsViewController.cornerOffset.setter(double a1, double a2)
{
  v5 = &v2[OBJC_IVAR___SWKWindowControlsViewController_cornerOffset];
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  v6 = [v2 windowControlsView];
  *&v6[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_cornerOffset] = *v5;
}

uint64_t SWKWindowControlsViewController.elements.getter()
{
  v1 = OBJC_IVAR___SWKWindowControlsViewController_elements;
  swift_beginAccess();
  return *(v0 + v1);
}

void SWKWindowControlsViewController.elements.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SWKWindowControlsViewController_elements;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  if (v4 != a1)
  {
    v5 = [v1 windowControlsView];
    *&v5[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_elements] = *&v1[v3];
    sub_21ED2E2FC();
  }
}

void SWKWindowControlsViewController.contextMenuContainerView.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

uint64_t SWKWindowControlsViewController.supportsHoverInteractions.getter()
{
  v1 = OBJC_IVAR___SWKWindowControlsViewController_supportsHoverInteractions;
  swift_beginAccess();
  return *(v0 + v1);
}

void SWKWindowControlsViewController.supportsHoverInteractions.setter(char a1)
{
  v3 = OBJC_IVAR___SWKWindowControlsViewController_supportsHoverInteractions;
  swift_beginAccess();
  v1[v3] = a1;
  v4 = [v1 windowControlsView];
  v4[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_supportsHoverInteractions] = v1[v3];
}

id sub_21ED2A580()
{
  v1 = OBJC_IVAR___SWKWindowControlsViewController____lazy_storage___windowControlsView;
  v2 = *&v0[OBJC_IVAR___SWKWindowControlsViewController____lazy_storage___windowControlsView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___SWKWindowControlsViewController____lazy_storage___windowControlsView];
  }

  else
  {
    v4 = [v0 elements];
    v5 = [v0 supportsHoverInteractions];
    objc_allocWithZone(type metadata accessor for WindowControlsView());
    v6 = v0;
    v7 = v4;
    v8 = v0;
    v9 = sub_21ED2EF14(v7, 1, v0, &off_28307B0E8, v5);
    v10 = *&v0[v1];
    *&v8[v1] = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id SWKWindowControlsViewController.init(elements:delegate:)(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithElements:a1 delegate:a2];
  swift_unknownObjectRelease();
  return v2;
}

id SWKWindowControlsViewController.init(elements:delegate:)(uint64_t a1)
{
  v1 = sub_21ED2B8B8(a1);
  swift_unknownObjectRelease();
  return v1;
}

id SWKWindowControlsViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void SWKWindowControlsViewController.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR___SWKWindowControlsViewController_cornerOffset);
  *v1 = 0;
  v1[1] = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___SWKWindowControlsViewController_supportsHoverInteractions) = 1;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___SWKWindowControlsViewController____lazy_storage___windowControlsView) = 0;
  sub_21ED35B1C();
  __break(1u);
}

void sub_21ED2A924()
{
  v13 = [v0 windowControlsView];
  v1 = [type metadata accessor for WindowControlsPrototypeSettingsDomain() rootSettings];
  v2 = *&v1[OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_tapMorphSpring];

  v3 = [v13 contextMenuInteraction];
  [v3 dismissMenu];

  v4 = v13[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_interactionState];
  if (v4 == 1)
  {
  }

  else
  {
    v13[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_interactionState] = 1;
    sub_21ED2E3B8(v4);
    sub_21ED2E480(1u, v16);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21ED2BF64(v16, v15);
    v6 = swift_allocObject();
    v7 = v15[2];
    *(v6 + 72) = v15[3];
    v8 = v15[5];
    *(v6 + 88) = v15[4];
    *(v6 + 104) = v8;
    *(v6 + 120) = v15[6];
    v9 = v15[1];
    *(v6 + 24) = v15[0];
    *(v6 + 40) = v9;
    *(v6 + 16) = v5;
    *(v6 + 56) = v7;
    v10 = objc_opt_self();
    aBlock[4] = sub_21ED2C090;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21ED33F98;
    aBlock[3] = &block_descriptor_35;
    v11 = _Block_copy(aBlock);
    v12 = v2;

    [v10 _animateUsingSpringBehavior_tracking_animations_completion_];

    _Block_release(v11);

    sub_21ED2BA44(v16);
    sub_21ED2F32C(1u);
  }
}

void sub_21ED2ABF8()
{
  v13 = [v0 windowControlsView];
  v1 = [type metadata accessor for WindowControlsPrototypeSettingsDomain() rootSettings];
  v2 = *&v1[OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_tapMorphSpring];

  v3 = [v13 contextMenuInteraction];
  [v3 dismissMenu];

  v4 = v13[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_interactionState];
  if (v13[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_interactionState])
  {
    v13[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_interactionState] = 0;
    sub_21ED2E3B8(v4);
    sub_21ED2E480(0, v16);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21ED2BF64(v16, v15);
    v6 = swift_allocObject();
    v7 = v15[2];
    *(v6 + 72) = v15[3];
    v8 = v15[5];
    *(v6 + 88) = v15[4];
    *(v6 + 104) = v8;
    *(v6 + 120) = v15[6];
    v9 = v15[1];
    *(v6 + 24) = v15[0];
    *(v6 + 40) = v9;
    *(v6 + 16) = v5;
    *(v6 + 56) = v7;
    v10 = objc_opt_self();
    aBlock[4] = sub_21ED2C090;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21ED33F98;
    aBlock[3] = &block_descriptor_27;
    v11 = _Block_copy(aBlock);
    v12 = v2;

    [v10 _animateUsingSpringBehavior_tracking_animations_completion_];

    _Block_release(v11);

    sub_21ED2BA44(v16);
    sub_21ED2F32C(0);
  }

  else
  {
  }
}

void sub_21ED2AF64(uint64_t a1, int a2)
{
  v5 = [v2 windowControlsView];
  v6 = &v5[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_glassConfiguration];
  v7 = *&v5[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_glassConfiguration];
  v8 = v5[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_glassConfiguration + 8];
  *v6 = a1;
  v6[8] = a2;
  if (v7 != a1 || ((v8 ^ a2) & 1) != 0)
  {
    v9 = v5;
    sub_21ED2E480(v5[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_interactionState], v11);
    swift_unknownObjectWeakInit();
    sub_21ED33128(v10, v11);
    MEMORY[0x223D6A320](v10);

    sub_21ED2BA44(v11);
  }

  else
  {
  }
}

id SWKWindowControlsViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_21ED358EC();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

Swift::Void __swiftcall SWKWindowControlsViewController.loadView()()
{
  v1 = [v0 windowControlsView];
  [v0 setView_];
}

id sub_21ED2B2E8(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  result = [v4 delegate];
  if (result)
  {
    v7 = result;
    if ([result respondsToSelector_])
    {
      [v7 *a4];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_21ED2B378()
{
  v1 = [v0 contextMenuContainerView];

  return v1;
}

id sub_21ED2B3B0(id result)
{
  if (result >= 2u)
  {
    if (result == 2)
    {
      return result;
    }

    result = [v1 delegate];
    if (!result)
    {
      return result;
    }

    v2 = result;
    v3 = &selRef_windowControlsViewControllerWillExpand_;
  }

  else
  {
    result = [v1 delegate];
    if (!result)
    {
      return result;
    }

    v2 = result;
    v3 = &selRef_windowControlsViewControllerWillCollapse_;
  }

  if ([v2 respondsToSelector_])
  {
    [v2 *v3];
  }

  return swift_unknownObjectRelease();
}

id sub_21ED2B484(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  if (a2 > 2u)
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        result = [v2 delegate];
        if (!result)
        {
          return result;
        }

        v7 = result;
        if ([result respondsToSelector_])
        {
          [v7 windowControlsViewController:v3 didRequestSlideOverAction:a1];
        }
      }

      else
      {
        result = [v2 delegate];
        if (!result)
        {
          return result;
        }

        [result windowControlsViewControllerDidRequestAddAnotherWindow_];
      }

      goto LABEL_23;
    }

    result = [v2 delegate];
    if (!result)
    {
      return result;
    }

    v6 = sel_windowControlsViewController_didRequestMoveToDisplay_;
LABEL_19:
    [result v6];
LABEL_23:

    return swift_unknownObjectRelease();
  }

  if (a2)
  {
    if (a2 == 1)
    {
      result = [v2 delegate];
      if (!result)
      {
        return result;
      }

      v6 = sel_windowControlsViewController_didRequestTileToPosition_;
    }

    else
    {
      result = [v2 delegate];
      if (!result)
      {
        return result;
      }

      v6 = sel_windowControlsViewController_didRequestArrangeWithConfiguration_;
    }

    goto LABEL_19;
  }

  v8 = [v2 windowControlsView];
  v9 = [v8 contextMenuInteraction];

  [v9 dismissMenu];
  v10 = [v3 windowControlsView];
  v11 = [type metadata accessor for WindowControlsPrototypeSettingsDomain() rootSettings];
  v12 = *&v11[OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_tapMorphSpring];

  v13 = [v10 contextMenuInteraction];
  [v13 dismissMenu];

  v14 = v10[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_interactionState];
  if (v14 != 1)
  {
    v10[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_interactionState] = 1;
    sub_21ED2E3B8(v14);
    sub_21ED2E480(1u, v24);
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21ED2BF64(v24, v23);
    v16 = swift_allocObject();
    v17 = v23[2];
    *(v16 + 72) = v23[3];
    v18 = v23[5];
    *(v16 + 88) = v23[4];
    *(v16 + 104) = v18;
    *(v16 + 120) = v23[6];
    v19 = v23[1];
    *(v16 + 24) = v23[0];
    *(v16 + 40) = v19;
    *(v16 + 16) = v15;
    *(v16 + 56) = v17;
    v20 = objc_opt_self();
    v22[4] = sub_21ED2C090;
    v22[5] = v16;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 1107296256;
    v22[2] = sub_21ED33F98;
    v22[3] = &block_descriptor_43;
    v21 = _Block_copy(v22);
    v12 = v12;

    [v20 _animateUsingSpringBehavior_tracking_animations_completion_];

    _Block_release(v21);

    sub_21ED2BA44(v24);
    sub_21ED2F32C(1u);
  }

  result = [v3 delegate];
  if (result)
  {
    [result windowControlsViewController:v3 didRequestAction:a1];
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_21ED2B8B8(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR___SWKWindowControlsViewController_cornerOffset];
  *v3 = 0;
  v3[1] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR___SWKWindowControlsViewController_supportsHoverInteractions] = 1;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___SWKWindowControlsViewController____lazy_storage___windowControlsView] = 0;
  *&v1[OBJC_IVAR___SWKWindowControlsViewController_elements] = a1;
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = SWKWindowControlsViewController;
  return objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
}

id keypath_getTm@<X0>(id *a1@<X0>, SEL *a2@<X3>, void *a3@<X8>)
{
  result = [*a1 *a2];
  *a3 = v5;
  a3[1] = v6;
  return result;
}

unint64_t type metadata accessor for SWKWindowControlsViewController()
{
  result = qword_27CEE5E60;
  if (!qword_27CEE5E60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CEE5E60);
  }

  return result;
}

void sub_21ED2BA98(char a1)
{
  v3 = [v1 windowControlsView];
  v4 = v3[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_interactionState];

  if (v4 <= 1)
  {
    if (a1)
    {
      if (v4)
      {
        return;
      }

      v28 = [v1 windowControlsView];
      v5 = [type metadata accessor for WindowControlsPrototypeSettingsDomain() rootSettings];
      v6 = *&v5[OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_tapMorphSpring];

      v7 = [v28 contextMenuInteraction];
      [v7 dismissMenu];

      v8 = v28[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_interactionState];
      if (v8 != 1)
      {
        v28[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_interactionState] = 1;
        sub_21ED2E3B8(v8);
        sub_21ED2E480(1u, v42);
        v9 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_21ED2BF64(v42, &v35);
        v10 = swift_allocObject();
        v11 = v37;
        *(v10 + 72) = v38;
        v12 = v40;
        *(v10 + 88) = v39;
        *(v10 + 104) = v12;
        *(v10 + 120) = v41;
        v13 = v36;
        *(v10 + 24) = v35;
        *(v10 + 40) = v13;
        *(v10 + 16) = v9;
        *(v10 + 56) = v11;
        v14 = objc_opt_self();
        v33 = sub_21ED2C090;
        v34 = v10;
        aBlock = MEMORY[0x277D85DD0];
        v30 = 1107296256;
        v31 = sub_21ED33F98;
        v32 = &block_descriptor_19;
        v15 = _Block_copy(&aBlock);
        v16 = v6;

        [v14 _animateUsingSpringBehavior_tracking_animations_completion_];

        _Block_release(v15);

        sub_21ED2BA44(v42);
        v17 = 1;
LABEL_9:
        sub_21ED2F32C(v17);

        return;
      }
    }

    else
    {
      if (v4 != 1)
      {
        return;
      }

      v28 = [v1 windowControlsView];
      v18 = [type metadata accessor for WindowControlsPrototypeSettingsDomain() rootSettings];
      v6 = *&v18[OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_tapMorphSpring];

      v19 = [v28 contextMenuInteraction];
      [v19 dismissMenu];

      v20 = v28[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_interactionState];
      if (v28[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_interactionState])
      {
        v28[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_interactionState] = 0;
        sub_21ED2E3B8(v20);
        sub_21ED2E480(0, v42);
        v21 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_21ED2BF64(v42, &v35);
        v22 = swift_allocObject();
        v23 = v37;
        *(v22 + 72) = v38;
        v24 = v40;
        *(v22 + 88) = v39;
        *(v22 + 104) = v24;
        *(v22 + 120) = v41;
        v25 = v36;
        *(v22 + 24) = v35;
        *(v22 + 40) = v25;
        *(v22 + 16) = v21;
        *(v22 + 56) = v23;
        v26 = objc_opt_self();
        v33 = sub_21ED2C00C;
        v34 = v22;
        aBlock = MEMORY[0x277D85DD0];
        v30 = 1107296256;
        v31 = sub_21ED33F98;
        v32 = &block_descriptor;
        v27 = _Block_copy(&aBlock);
        v16 = v6;

        [v26 _animateUsingSpringBehavior_tracking_animations_completion_];

        _Block_release(v27);

        sub_21ED2BA44(v42);
        v17 = 0;
        goto LABEL_9;
      }
    }
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_10Tm()
{
  v1 = *(v0 + 16);

  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

id sub_21ED2C39C()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for WindowControlsPrototypeSettings();
  objc_msgSendSuper2(&v14, sel_setDefaultValues);
  v1 = OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_tapMorphSpring;
  v2 = *&v0[OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_tapMorphSpring];
  v3 = sub_21ED358EC();
  [v2 setName_];

  [*&v0[v1] setDefaultValues];
  [*&v0[v1] setDampingRatio_];
  [*&v0[v1] setResponse_];
  [*&v0[v1] setRetargetImpulse_];
  v4 = OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_hoverMorphSpring;
  v5 = *&v0[OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_hoverMorphSpring];
  v6 = sub_21ED358EC();
  [v5 setName_];

  [*&v0[v4] setDefaultValues];
  [*&v0[v4] setDampingRatio_];
  [*&v0[v4] setResponse_];
  [*&v0[v1] setRetargetImpulse_];
  v7 = OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_bounceExpansionSpring;
  v8 = *&v0[OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_bounceExpansionSpring];
  v9 = sub_21ED358EC();
  [v8 setName_];

  [*&v0[v7] setDefaultValues];
  [*&v0[v7] setDampingRatio_];
  [*&v0[v7] setResponse_];
  v10 = OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_bounceCollapseSpring;
  v11 = *&v0[OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_bounceCollapseSpring];
  v12 = sub_21ED358EC();
  [v11 setName_];

  [*&v0[v10] setDefaultValues];
  [*&v0[v10] setDampingRatio_];
  result = [*&v0[v10] setResponse_];
  *&v0[OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_bounceScale] = 0x3FEEB851EB851EB8;
  return result;
}

id sub_21ED2C6D8()
{
  v1 = OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_tapMorphSpring;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277D6C060]) init];
  v2 = OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_hoverMorphSpring;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x277D6C060]) init];
  *&v0[OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_bounceScale] = 0x3FF199999999999ALL;
  v3 = OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_bounceExpansionSpring;
  *&v0[v3] = [objc_allocWithZone(MEMORY[0x277D6C060]) init];
  v4 = OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_bounceCollapseSpring;
  *&v0[v4] = [objc_allocWithZone(MEMORY[0x277D6C060]) init];
  v6.receiver = v0;
  v6.super_class = type metadata accessor for WindowControlsPrototypeSettings();
  return objc_msgSendSuper2(&v6, sel_initWithDefaultValues);
}

id sub_21ED2C7E8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *sub_21ED2C8E0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [type metadata accessor for WindowControlsPrototypeSettingsDomain() rootSettings];
  v5 = *&v4[*a3];
  v6 = v5;

  return v5;
}

void sub_21ED2C97C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEE5E90, &unk_21ED36BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21ED36B20;
  v1 = [objc_opt_self() actionWithSettingsKeyPath_];
  v2 = sub_21ED358EC();
  v3 = [objc_opt_self() rowWithTitle:v2 action:v1];

  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = objc_opt_self();
  *(v0 + 56) = sub_21ED2CF3C(0, &qword_27CEE5E98, 0x277D431A8);
  *(v0 + 32) = v3;
  v5 = sub_21ED3593C();

  v6 = [v4 sectionWithRows_];

  if (!v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21ED36B30;
  v8 = sub_21ED358EC();
  v9 = sub_21ED358EC();
  v10 = objc_opt_self();
  v11 = [v10 rowWithTitle:v8 childSettingsKeyPath:v9];

  if (!v11)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v12 = sub_21ED2CF3C(0, &qword_27CEE5EA0, 0x277D431E0);
  *(v7 + 56) = v12;
  *(v7 + 32) = v11;
  v13 = sub_21ED358EC();
  v14 = sub_21ED358EC();
  v15 = [v10 rowWithTitle:v13 childSettingsKeyPath:v14];

  if (!v15)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v7 + 88) = v12;
  *(v7 + 64) = v15;
  v16 = sub_21ED358EC();
  v17 = sub_21ED358EC();
  v18 = [v10 rowWithTitle:v16 childSettingsKeyPath:v17];

  if (!v18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(v7 + 120) = v12;
  *(v7 + 96) = v18;
  v19 = sub_21ED358EC();
  v20 = sub_21ED358EC();
  v21 = [v10 rowWithTitle:v19 childSettingsKeyPath:v20];

  if (!v21)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v7 + 152) = v12;
  *(v7 + 128) = v21;
  v22 = sub_21ED358EC();
  v23 = sub_21ED358EC();
  v24 = [objc_opt_self() rowWithTitle:v22 valueKeyPath:v23];

  if (!v24)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25 = [v24 between:0.0 and:10.0];

  if (!v25)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_21ED35A5C();
  swift_unknownObjectRelease();
  sub_21ED2CF2C(&v35, (v7 + 160));
  v26 = sub_21ED3593C();

  v27 = sub_21ED358EC();
  v28 = [v4 sectionWithRows:v26 title:v27];

  if (v28)
  {
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_21ED36B40;
    v30 = sub_21ED2CF3C(0, &qword_27CEE5EA8, 0x277D43270);
    *(v29 + 32) = v28;
    *(v29 + 88) = v30;
    *(v29 + 56) = v30;
    *(v29 + 64) = v6;
    v31 = v28;
    v32 = v6;
    v33 = sub_21ED358EC();
    v34 = sub_21ED3593C();

    [v4 moduleWithTitle:v33 contents:v34];

    return;
  }

LABEL_19:
  __break(1u);
}

_OWORD *sub_21ED2CF2C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_21ED2CF3C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_21ED2CF84(unint64_t a1, double *a2, char **a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8)
{
  v14 = a1;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21ED35B3C())
  {
    v16 = 0;
    v32 = v14 & 0xFFFFFFFFFFFFFF8;
    v33 = v14 & 0xC000000000000001;
    v17 = &property descriptor for SWKWindowControlsViewController.contextMenuContainerView;
    v30 = v14;
    v31 = i;
    while (1)
    {
      if (v33)
      {
        v18 = MEMORY[0x223D69D20](v16, v14);
      }

      else
      {
        if (v16 >= *(v32 + 16))
        {
          goto LABEL_16;
        }

        v18 = *(v14 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v21 = *a2;
      v22 = v17;
      [v18 v17[16]];
      Width = CGRectGetWidth(v35);
      v36.origin.x = a4;
      v36.origin.y = a5;
      v36.size.width = a6;
      v36.size.height = a7;
      Height = CGRectGetHeight(v36);
      v25 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_21ED2D3A8(0, *(v25 + 2) + 1, 1, v25);
        *a3 = v25;
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      if (v28 >= v27 >> 1)
      {
        v25 = sub_21ED2D3A8((v27 > 1), v28 + 1, 1, v25);
        *a3 = v25;
      }

      *(v25 + 2) = v28 + 1;
      v29 = &v25[16 * v28];
      *(v29 + 4) = v21 + Width * 0.5;
      *(v29 + 5) = Height * 0.5;
      v17 = v22;
      [v19 v22 + 3192];
      *a2 = *a2 + CGRectGetWidth(v37) + a8;

      ++v16;
      v14 = v30;
      if (v20 == v31)
      {
        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

void sub_21ED2D194(unint64_t a1, double *a2, char **a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8)
{
  v13 = a1;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; a8 = v30)
  {
    v15 = 0;
    v33 = v13 & 0xFFFFFFFFFFFFFF8;
    v34 = v13 & 0xC000000000000001;
    v16 = a8 + a8;
    v17 = &property descriptor for SWKWindowControlsViewController.contextMenuContainerView;
    v31 = v13;
    v32 = i;
    while (1)
    {
      if (v34)
      {
        v18 = MEMORY[0x223D69D20](v15, v13);
      }

      else
      {
        if (v15 >= *(v33 + 16))
        {
          goto LABEL_16;
        }

        v18 = *(v13 + 8 * v15 + 32);
      }

      v19 = v18;
      v20 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v21 = *a2;
      v22 = v17;
      [v18 v17[16]];
      Width = CGRectGetWidth(v36);
      v37.origin.x = a4;
      v37.origin.y = a5;
      v37.size.width = a6;
      v37.size.height = a7;
      Height = CGRectGetHeight(v37);
      v25 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_21ED2D3A8(0, *(v25 + 2) + 1, 1, v25);
        *a3 = v25;
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      if (v28 >= v27 >> 1)
      {
        v25 = sub_21ED2D3A8((v27 > 1), v28 + 1, 1, v25);
        *a3 = v25;
      }

      *(v25 + 2) = v28 + 1;
      v29 = &v25[16 * v28];
      *(v29 + 4) = v21 + Width * 0.5;
      *(v29 + 5) = Height * 0.5;
      v17 = v22;
      [v19 v22 + 3192];
      *a2 = *a2 + v16 + CGRectGetWidth(v38);

      ++v15;
      v13 = v31;
      if (v20 == v32)
      {
        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v30 = a8;
    i = sub_21ED35B3C();
  }
}

char *sub_21ED2D3A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEE5EB0, &unk_21ED36BD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_21ED2D4AC(void *a1, unint64_t a2)
{
  [a1 frame];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  v7 = CGRectGetWidth(v20);
  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = (v8 + 1);
  if (!v8)
  {
    return MEMORY[0x277D84F90];
  }

  while (2)
  {
    v10 = 0;
    v11 = MEMORY[0x277D84F90];
    v12 = v7 / v9;
    while ((a2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x223D69D20](v10, a2);
      swift_unknownObjectRelease();
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_15;
      }

LABEL_7:
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      v14 = CGRectGetHeight(v21);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_21ED2D3A8(0, *(v11 + 2) + 1, 1, v11);
      }

      v16 = *(v11 + 2);
      v15 = *(v11 + 3);
      if (v16 >= v15 >> 1)
      {
        v11 = sub_21ED2D3A8((v15 > 1), v16 + 1, 1, v11);
      }

      v7 = v12 * v13;
      *(v11 + 2) = v16 + 1;
      v17 = &v11[16 * v16];
      *(v17 + 4) = v7;
      *(v17 + 5) = v14 * 0.5;
      ++v10;
      if (v13 == v8)
      {
        return v11;
      }
    }

    if (v10 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    v13 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v18 = v7;
    result = sub_21ED35B3C();
    if (!__OFADD__(result, 1))
    {
      v9 = (result + 1);
      v8 = sub_21ED35B3C();
      v7 = v18;
      if (!v8)
      {
        return MEMORY[0x277D84F90];
      }

      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

char *sub_21ED2D688(void *a1, unint64_t a2)
{
  v21 = MEMORY[0x277D84F90];
  [a1 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (a2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21ED35B3C())
  {
    v12 = 0;
    v13 = 0.0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x223D69D20](v12, a2);
      }

      else
      {
        if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v14 = *(a2 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      [v14 frame];
      Width = CGRectGetWidth(v22);

      v13 = v13 + Width;
      ++v12;
      if (v16 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v13 = 0.0;
LABEL_15:
  v23.origin.x = v4;
  v23.origin.y = v6;
  v23.size.width = v8;
  v23.size.height = v10;
  v18 = CGRectGetWidth(v23);
  if (a2 >> 62)
  {
    result = sub_21ED35B3C();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v20 = (v18 - v13) / (result + 1);
    sub_21ED2CF84(a2, &v20, &v21, v4, v6, v8, v10, v20);
    return v21;
  }

  return result;
}

char *sub_21ED2D830(void *a1, unint64_t a2)
{
  v24 = MEMORY[0x277D84F90];
  [a1 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (a2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21ED35B3C())
  {
    v12 = 0;
    v13 = 0.0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x223D69D20](v12, a2);
      }

      else
      {
        if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v14 = *(a2 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      [v14 frame];
      Width = CGRectGetWidth(v25);

      v13 = v13 + Width;
      ++v12;
      if (v16 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v13 = 0.0;
LABEL_15:
  v26.origin.x = v4;
  v26.origin.y = v6;
  v26.size.width = v8;
  v26.size.height = v10;
  v18 = CGRectGetWidth(v26);
  if (a2 >> 62)
  {
    result = sub_21ED35B3C();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  if ((result + 0x3FFFFFFFFFFFFFFFLL) < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v20 = 2 * (result - 1);
  v21 = __OFADD__(v20, 2);
  v22 = v20 + 2;
  if (!v21)
  {
    v23 = (v18 - v13) / v22;
    sub_21ED2D194(a2, &v23, &v24, v4, v6, v8, v10, v23);
    return v24;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for HorizontalDistribution(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HorizontalDistribution(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21ED2DB4C()
{
  result = qword_27CEE5EB8;
  if (!qword_27CEE5EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEE5EB8);
  }

  return result;
}

char *sub_21ED2DBA0(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC20SystemUIWindowingKit38WindowControlsContextMenuAccessoryView_isVisible] = 0;
  *&v1[OBJC_IVAR____TtC20SystemUIWindowingKit38WindowControlsContextMenuAccessoryView_sourceView] = a1;
  v4 = objc_allocWithZone(MEMORY[0x277D76180]);
  v5 = a1;
  v6 = [v4 initWithSourceView_];
  *&v1[OBJC_IVAR____TtC20SystemUIWindowingKit38WindowControlsContextMenuAccessoryView_portalView] = v6;
  [v5 bounds];
  v20.receiver = v1;
  v20.super_class = ObjectType;
  v12 = xmmword_21ED36C60;
  v13 = 2;
  v14 = 0;
  v15 = 0;
  v16 = 1;
  v17 = 0;
  v18 = 0;
  v19 = 2;
  v7 = objc_msgSendSuper2(&v20, sel_initWithFrame_configuration_, &v12);
  v8 = OBJC_IVAR____TtC20SystemUIWindowingKit38WindowControlsContextMenuAccessoryView_portalView;
  v9 = *&v7[OBJC_IVAR____TtC20SystemUIWindowingKit38WindowControlsContextMenuAccessoryView_portalView];
  v10 = v7;
  [v9 setHidesSourceView_];
  [*&v7[v8] setMatchesAlpha_];
  [*&v7[v8] setMatchesTransform_];
  [*&v7[v8] setMatchesPosition_];
  [v10 addSubview_];

  return v10;
}

void sub_21ED2DDB4(char a1, char a2)
{
  if (*(v2 + OBJC_IVAR____TtC20SystemUIWindowingKit38WindowControlsContextMenuAccessoryView_isVisible) != (a1 & 1))
  {
    *(v2 + OBJC_IVAR____TtC20SystemUIWindowingKit38WindowControlsContextMenuAccessoryView_isVisible) = a1 & 1;
    if (a2)
    {
      v3 = a1;
      v4 = [type metadata accessor for WindowControlsPrototypeSettingsDomain() rootSettings];
      v5 = *&v4[OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_tapMorphSpring];

      a1 = v3;
    }

    else
    {
      v5 = 0;
    }

    v6 = a1 & 1;
    if (a1)
    {
      v7 = 3;
    }

    else
    {
      v7 = 1;
    }

    v8 = *(v2 + OBJC_IVAR____TtC20SystemUIWindowingKit38WindowControlsContextMenuAccessoryView_sourceView);
    v20 = v5;
    if (v6)
    {
      v9 = v8;
    }

    else
    {
      v10 = [v8 contextMenuInteraction];
      [v10 dismissMenu];
    }

    v11 = v8[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_interactionState];
    if (v7 == v11)
    {
    }

    else
    {
      v8[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_interactionState] = v7;
      sub_21ED2E3B8(v11);
      sub_21ED2E480(v7, v24);
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_21ED2BF64(v24, v23);
      sub_21ED2BF64(v23, v22);
      v13 = swift_allocObject();
      v14 = v23[2];
      *(v13 + 72) = v23[3];
      v15 = v23[5];
      *(v13 + 88) = v23[4];
      *(v13 + 104) = v15;
      *(v13 + 120) = v23[6];
      v16 = v23[1];
      *(v13 + 24) = v23[0];
      *(v13 + 40) = v16;
      *(v13 + 16) = v12;
      *(v13 + 56) = v14;
      if (v5)
      {
        swift_unknownObjectRetain();
        sub_21ED2BA44(v22);
        v17 = objc_opt_self();
        aBlock[4] = sub_21ED2C00C;
        aBlock[5] = v13;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_21ED33F98;
        aBlock[3] = &block_descriptor_0;
        v18 = _Block_copy(aBlock);
        v5 = v20;

        [v17 _animateUsingSpringBehavior_tracking_animations_completion_];

        _Block_release(v18);
      }

      else
      {

        sub_21ED33860(v19, v22);

        sub_21ED2BA44(v22);
      }

      sub_21ED2BA44(v24);
      sub_21ED2F32C(v7);
    }
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_21ED2E1E0(double *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_14;
  }

  v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4 = v3;
  if (v3 == *(a1 + 2) && v3)
  {
    do
    {
      v5 = 0;
      for (i = a1 + 5; ; i += 2)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          a1 = MEMORY[0x223D69D20](v5, a2);
        }

        else
        {
          if (v5 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          a1 = *(a2 + 8 * v5 + 32);
        }

        v7 = a1;
        if (v3 == v5)
        {
          break;
        }

        ++v5;
        [a1 setCenter_];

        if (v4 == v5)
        {
          return;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v8 = a1;
      v9 = sub_21ED35B3C();
      if (v9 != *(v8 + 2))
      {
        break;
      }

      v3 = v9;
      v4 = sub_21ED35B3C();
      a1 = v8;
    }

    while (v4);
  }
}

void sub_21ED2E2FC()
{
  v1 = OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_interactionState;
  v2 = v0[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_interactionState];
  if (v2 <= 1)
  {
    v3 = [v0 contextMenuInteraction];
    [v3 dismissMenu];

    v4 = v0[v1];
    if (v2 != v4)
    {
      v0[v1] = v2;
      sub_21ED2E3B8(v4);
      sub_21ED2E480(v2, v6);
      swift_unknownObjectWeakInit();
      sub_21ED33128(v5, v6);
      MEMORY[0x223D6A320](v5);
      sub_21ED2BA44(v6);
      sub_21ED2F32C(v2);
    }
  }
}

uint64_t sub_21ED2E3B8(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_interactionState);
  if (v3 <= 1)
  {
    *(v1 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_lastCollapsedInteractionState) = v3;
  }

  v4 = v1 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v1, v3, a1, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_21ED2E480@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v5 = sub_21ED358BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (MEMORY[0x28223BE20])();
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v47 - v12;
  MEMORY[0x28223BE20](v11);
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      if (*(v2 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_supportsHoverInteractions))
      {
        v24 = 14.0;
      }

      else
      {
        v24 = 10.0;
      }

      if (*(v2 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_supportsHoverInteractions))
      {
        v25 = 1.0;
      }

      else
      {
        v25 = 7.0;
      }

      v26 = v2 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_glassConfiguration;
      v27 = *(v2 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_glassConfiguration);
      v28 = *(v26 + 8);
      v29 = sub_21ED358CC();
      v30 = MEMORY[0x277D74E20];
      *(a2 + 56) = v29;
      *(a2 + 64) = v30;
      __swift_allocate_boxed_opaque_existential_1((a2 + 32));
      sub_21ED3588C();
      sub_21ED3589C();
      v31 = *(v6 + 8);
      v31(v10, v5);
      sub_21ED358AC();
      v31(v13, v5);
      sub_21ED358DC();
      if (qword_27CEE5CD8 != -1)
      {
        swift_once();
      }

      v22 = qword_27CEE5EE0;
      v23 = qword_27CEE5EE8;
      *a2 = xmmword_21ED36CB0;
      *(a2 + 16) = v24;
      *(a2 + 24) = v25;
      *(a2 + 72) = 0x4032000000000000;
      v20 = 1;
      v21 = 1;
    }

    else
    {
      if (*(v2 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_supportsHoverInteractions))
      {
        v38 = 28.0;
      }

      else
      {
        v38 = 13.5;
      }

      if (*(v2 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_supportsHoverInteractions))
      {
        v39 = 4.0;
      }

      else
      {
        v39 = 11.0;
      }

      v40 = v2 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_glassConfiguration;
      v41 = *(v2 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_glassConfiguration);
      v42 = *(v40 + 8);
      v43 = sub_21ED358CC();
      v44 = MEMORY[0x277D74E20];
      *(a2 + 56) = v43;
      *(a2 + 64) = v44;
      __swift_allocate_boxed_opaque_existential_1((a2 + 32));
      sub_21ED3588C();
      sub_21ED3589C();
      v45 = *(v6 + 8);
      v45(v10, v5);
      sub_21ED358AC();
      v45(v13, v5);
      sub_21ED358DC();
      if (qword_27CEE5CD8 != -1)
      {
        swift_once();
      }

      v22 = qword_27CEE5EE0;
      v23 = qword_27CEE5EE8;
      *a2 = xmmword_21ED36CA0;
      *(a2 + 16) = v38;
      *(a2 + 24) = v39;
      *(a2 + 72) = 0x4036000000000000;
      v21 = 1;
      v20 = 1;
    }
  }

  else if (a1)
  {
    v32 = v2 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_glassConfiguration;
    v33 = *(v2 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_glassConfiguration);
    v34 = *(v32 + 8);
    v35 = sub_21ED358CC();
    v36 = MEMORY[0x277D74E20];
    *(a2 + 56) = v35;
    *(a2 + 64) = v36;
    __swift_allocate_boxed_opaque_existential_1((a2 + 32));
    sub_21ED3588C();
    sub_21ED3589C();
    v37 = *(v6 + 8);
    v37(v10, v5);
    sub_21ED358AC();
    v37(v13, v5);
    sub_21ED358DC();
    if (qword_27CEE5CD8 != -1)
    {
      swift_once();
    }

    v20 = 0;
    v22 = qword_27CEE5EE0;
    v23 = qword_27CEE5EE8;
    *a2 = xmmword_21ED36CC0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 72) = 0x4026000000000000;
    v21 = 1;
  }

  else
  {
    v14 = v2 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_glassConfiguration;
    v15 = *(v2 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_glassConfiguration);
    v16 = *(v14 + 8);
    v17 = sub_21ED358CC();
    v18 = MEMORY[0x277D74E20];
    *(a2 + 56) = v17;
    *(a2 + 64) = v18;
    __swift_allocate_boxed_opaque_existential_1((a2 + 32));
    sub_21ED3588C();
    sub_21ED3589C();
    v19 = *(v6 + 8);
    v19(v10, v5);
    sub_21ED358AC();
    v19(v13, v5);
    sub_21ED358DC();
    if (qword_27CEE5CD8 != -1)
    {
      swift_once();
    }

    v20 = 0;
    v21 = 0;
    v22 = qword_27CEE5EE0;
    v23 = qword_27CEE5EE8;
    *a2 = xmmword_21ED36CC0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 72) = 0x4026000000000000;
  }

  *(a2 + 80) = v20;
  *(a2 + 88) = v21;
  *(a2 + 96) = v22;
  *(a2 + 104) = v23;

  return v23;
}

id sub_21ED2E9FC()
{
  v1 = OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___containerView;
  v2 = *(v0 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___containerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___containerView);
  }

  else
  {
    v4 = sub_21ED2EA60();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_21ED2EA60()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEE5FE8, &qword_21ED36E58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21ED36CD0;
  *(inited + 32) = sub_21ED2EC0C(&OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___close, 0);
  *(inited + 40) = sub_21ED2EC0C(&OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___minimize, 1);
  *(inited + 48) = sub_21ED2EC90();
  v2 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_12;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x223D69D20](0, inited))
  {
    v4 = i;
    [v0 addSubview_];

    if (v2)
    {
      v5 = MEMORY[0x223D69D20](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_11;
      }

      v5 = *(inited + 40);
    }

    v6 = v5;
    [v0 addSubview_];

    if (v2)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v7 = *(inited + 48);
      goto LABEL_10;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    ;
  }

  v7 = MEMORY[0x223D69D20](2, inited);
LABEL_10:
  v8 = v7;
  [v0 addSubview_];

  swift_setDeallocating();
  v9 = *(inited + 16);
  swift_arrayDestroy();
  return v0;
}

id sub_21ED2EC0C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *&v2[*a1];
  if (v4)
  {
    v5 = *&v2[*a1];
  }

  else
  {
    v7 = objc_allocWithZone(type metadata accessor for WindowControlView());
    v8 = sub_21ED3494C(a2, 0, v2, v7);
    v9 = *&v2[v3];
    *&v2[v3] = v8;
    v5 = v8;

    v4 = 0;
  }

  v10 = v4;
  return v5;
}

id sub_21ED2EC90()
{
  v1 = OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___zoom;
  v2 = *&v0[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___zoom];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___zoom];
  }

  else
  {
    v4 = *&v0[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_elements];
    v5 = objc_allocWithZone(type metadata accessor for WindowControlView());
    v6 = v0;
    if ((v4 & 0x4000) != 0)
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v8 = sub_21ED3494C(v7, 0, v6, v5);
    v9 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_21ED2ED28()
{
  v1 = OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___hitTestingView;
  v2 = *(v0 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___hitTestingView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___hitTestingView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    v5 = [v4 layer];
    [v5 setHitTestsAsOpaque_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_21ED2EDCC()
{
  v1 = OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___hoverGestureRecognizer;
  v2 = *(v0 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___hoverGestureRecognizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___hoverGestureRecognizer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D755A0]) init];
    [v4 addTarget:v0 action:sel_handleHover_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_21ED2EE5C()
{
  v1 = OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___tapGestureRecognizer;
  v2 = *(v0 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___tapGestureRecognizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___tapGestureRecognizer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75B80]) init];
    [v4 addTarget:v0 action:sel_handleTap_];
    [v4 setDelegate_];

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_21ED2EF14(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_delegate + 8] = 0;
  v11 = swift_unknownObjectWeakInit();
  v5[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_preContextMenuLaunchInteractionState] = 4;
  v12 = &v5[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_cornerOffset];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v5[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_glassConfiguration];
  *v13 = 0;
  v13[8] = 1;
  *&v5[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___containerView] = 0;
  *&v5[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___hitTestingView] = 0;
  *&v5[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___close] = 0;
  *&v5[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___minimize] = 0;
  *&v5[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___zoom] = 0;
  *&v5[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___hoverGestureRecognizer] = 0;
  *&v5[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___tapGestureRecognizer] = 0;
  v5[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_supportsHoverInteractions] = a5;
  v5[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_lastCollapsedInteractionState] = a2 != 0;
  *&v5[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_elements] = a1;
  v5[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_interactionState] = a2;
  *(v11 + 8) = a4;
  swift_unknownObjectWeakAssign();
  v26.receiver = v5;
  v26.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v26, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v15 = sub_21ED2ED28();
  [v14 addSubview_];

  v16 = sub_21ED2E9FC();
  [v14 addSubview_];

  v17 = [v14 layer];
  [v17 setHitTestsAsOpaque_];

  v18 = sub_21ED2EDCC();
  [v14 addGestureRecognizer_];

  v19 = sub_21ED2EE5C();
  [v14 addGestureRecognizer_];

  [v14 setContextMenuInteractionEnabled_];
  sub_21ED2E480(*(v14 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_interactionState), v25);
  swift_unknownObjectWeakInit();
  sub_21ED33128(v24, v25);
  MEMORY[0x223D6A320](v24);
  sub_21ED2BA44(v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEE6038, &qword_21ED36E78);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_21ED36B20;
  v21 = sub_21ED3587C();
  v22 = MEMORY[0x277D74B90];
  *(v20 + 32) = v21;
  *(v20 + 40) = v22;
  MEMORY[0x223D69CD0](v20, sel_handleTraitChanges);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v14;
}

void sub_21ED2F32C(unsigned __int8 a1)
{
  v3 = a1;
  [v1 setIsAccessibilityElement_];
  if (v3)
  {
    if (v3 != 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEE5E90, &unk_21ED36BC0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_21ED36CE0;
      v7 = sub_21ED2EC0C(&OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___close, 0);
      v8 = type metadata accessor for WindowControlView();
      *(v6 + 56) = v8;
      *(v6 + 32) = v7;
      v9 = sub_21ED2EC0C(&OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___minimize, 1);
      *(v6 + 88) = v8;
      *(v6 + 64) = v9;
      v10 = sub_21ED2EC90();
      *(v6 + 120) = v8;
      *(v6 + 96) = v10;
    }

    v11 = sub_21ED3593C();

    [v1 setAccessibilityElements_];

    v5 = MEMORY[0x277D76578];
    if ((a1 & 0xFE) == 0)
    {
      v5 = MEMORY[0x277D76548];
    }
  }

  else
  {
    v4 = sub_21ED3593C();

    [v1 setAccessibilityElements_];

    v5 = MEMORY[0x277D76548];
  }

  [v1 setAccessibilityTraits_];
  if ((*(v1 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_supportsHoverInteractions) & 1) != 0 || a1 == 3)
  {
    v12 = *MEMORY[0x277D76488];

    UIAccessibilityPostNotification(v12, v1);
  }
}

uint64_t sub_21ED2F5A0()
{
  sub_21ED2E480(*(v0 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_interactionState), v14);
  v1 = [type metadata accessor for WindowControlsPrototypeSettingsDomain() rootSettings];
  v2 = *&v1[OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_tapMorphSpring];

  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_21ED2BF64(v14, v13);
  v4 = swift_allocObject();
  v5 = v13[2];
  *(v4 + 72) = v13[3];
  v6 = v13[5];
  *(v4 + 88) = v13[4];
  *(v4 + 104) = v6;
  *(v4 + 120) = v13[6];
  v7 = v13[1];
  *(v4 + 24) = v13[0];
  *(v4 + 40) = v7;
  *(v4 + 16) = v3;
  *(v4 + 56) = v5;
  v8 = objc_opt_self();
  v12[4] = sub_21ED2C090;
  v12[5] = v4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_21ED33F98;
  v12[3] = &block_descriptor_96;
  v9 = _Block_copy(v12);
  v10 = v2;

  [v8 _animateUsingSpringBehavior_tracking_animations_completion_];

  _Block_release(v9);

  return sub_21ED2BA44(v14);
}

id sub_21ED2F818()
{
  v1 = v0;
  aBlock[10] = sub_21ED30664();
  aBlock[11] = sub_21ED309CC();
  v2 = 0;
  aBlock[12] = sub_21ED30D2C();
  v3 = MEMORY[0x277D84F90];
  aBlock[0] = MEMORY[0x277D84F90];
LABEL_2:
  if (v2 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = v2;
  }

  while (v2 != 3)
  {
    if (v4 == v2)
    {
      __break(1u);
      goto LABEL_21;
    }

    v5 = aBlock[v2++ + 10];
    if (v5)
    {
      v6 = v5;
      MEMORY[0x223D69BD0]();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v7 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_21ED3595C();
      }

      sub_21ED3596C();
      v3 = aBlock[0];
      goto LABEL_2;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEE5FF8, &qword_21ED36E60);
  swift_arrayDestroy();
  v23 = v3;
  if ((*(v1 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_elements + 1) & 0x10) != 0)
  {
    sub_21ED2CF3C(0, &qword_27CEE6000, 0x277D750C8);
    if (qword_27CEE5CE0 != -1)
    {
      swift_once();
    }

    sub_21ED3583C();
    v8 = sub_21ED358EC();
    v9 = [objc_opt_self() systemImageNamed_];

    swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = sub_21ED35A4C();
    MEMORY[0x223D69BD0](v10, v11, v12, v13, v14);
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v21 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_21ED3595C();
    }

    sub_21ED3596C();
  }

  v15 = sub_21ED30FCC();
  sub_21ED31200(v15);
  v3 = v23;
  if (v23 >> 62)
  {
LABEL_21:
    if (sub_21ED35B3C() >= 1)
    {
      goto LABEL_19;
    }
  }

  else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_19:
    v16 = swift_allocObject();
    *(v16 + 16) = v3;
    v17 = objc_opt_self();
    aBlock[4] = sub_21ED34CD0;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21ED344E0;
    aBlock[3] = &block_descriptor_63;
    v18 = _Block_copy(aBlock);

    v19 = [v17 configurationWithIdentifier:0 previewProvider:0 actionProvider:v18];

    _Block_release(v18);
    return v19;
  }

  return 0;
}

id sub_21ED2FC84(void *a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277D758D8]);
  v3 = a1;
  v4 = [v2 init];
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor_];

  v6 = [objc_allocWithZone(MEMORY[0x277D75B90]) initWithView:v3 parameters:v4];

  return v6;
}

void *sub_21ED2FD54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15.receiver = v3;
  v15.super_class = swift_getObjectType();
  v6 = objc_msgSendSuper2(&v15, sel__contextMenuInteraction_styleForMenuWithConfiguration_, a1, a2);
  v7 = v6;
  if (v6)
  {
    [v6 setShouldMenuOverlapSourcePreview_];
    [v7 setShowsAccessoriesForCompactMenu_];
    [v7 setIgnoresContainerSizeChange_];
    v8 = [objc_opt_self() mainBundle];
    v9 = sub_21ED35734();

    if (v9)
    {
      v10 = &v3[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_delegate];
      if (!swift_unknownObjectWeakLoadStrong() || (v11 = *(v10 + 1), ObjectType = swift_getObjectType(), v13 = (*(v11 + 40))(ObjectType, v11), swift_unknownObjectRelease(), !v13))
      {
        v13 = [v3 superview];
      }

      [v7 setContainerView_];

      [v7 setPreferredAttachmentEdge_];
      [v7 setPrefersStackedHierarchy_];
    }
  }

  return v7;
}

void sub_21ED30020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26.receiver = v4;
  v26.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v26, sel_contextMenuInteraction_willDisplayMenuForConfiguration_animator_, a1, a2, a3);
  v8 = &v4[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    (*(v9 + 24))(v4, ObjectType, v9);
    swift_unknownObjectRelease();
  }

  v11 = OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_interactionState;
  v12 = v4[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_interactionState];
  v4[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_preContextMenuLaunchInteractionState] = v12;
  if (v12 == 3)
  {
    sub_21ED302CC();
  }

  else
  {
    v13 = [type metadata accessor for WindowControlsPrototypeSettingsDomain() rootSettings];
    v14 = *&v13[OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_tapMorphSpring];

    v15 = v4[v11];
    if (v15 != 3)
    {
      v4[v11] = 3;
      sub_21ED2E3B8(v15);
      sub_21ED2E480(3u, v25);
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_21ED2BF64(v25, v24);
      v17 = swift_allocObject();
      v18 = v24[2];
      *(v17 + 72) = v24[3];
      v19 = v24[5];
      *(v17 + 88) = v24[4];
      *(v17 + 104) = v19;
      *(v17 + 120) = v24[6];
      v20 = v24[1];
      *(v17 + 24) = v24[0];
      *(v17 + 40) = v20;
      *(v17 + 16) = v16;
      *(v17 + 56) = v18;
      v21 = objc_opt_self();
      v23[4] = sub_21ED2C090;
      v23[5] = v17;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 1107296256;
      v23[2] = sub_21ED33F98;
      v23[3] = &block_descriptor_39;
      v22 = _Block_copy(v23);
      v14 = v14;

      [v21 _animateUsingSpringBehavior_tracking_animations_completion_];

      _Block_release(v22);

      sub_21ED2BA44(v25);
      sub_21ED2F32C(3u);
    }
  }
}

void sub_21ED302CC()
{
  v1 = v0;
  [v0 transform];
  v2 = objc_opt_self();
  v3 = [type metadata accessor for WindowControlsPrototypeSettingsDomain() rootSettings];
  v4 = *&v3[OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_bounceExpansionSpring];

  v5 = swift_allocObject();
  v6 = v20;
  *(v5 + 24) = v19;
  *(v5 + 16) = v1;
  *(v5 + 40) = v6;
  *(v5 + 56) = v21;
  v17 = sub_21ED34C74;
  v18 = v5;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_21ED33F98;
  v16 = &block_descriptor_45;
  v7 = _Block_copy(&v13);
  v8 = v1;

  v9 = swift_allocObject();
  v10 = v20;
  *(v9 + 24) = v19;
  *(v9 + 16) = v8;
  *(v9 + 40) = v10;
  *(v9 + 56) = v21;
  v17 = sub_21ED34C80;
  v18 = v9;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_21ED341EC;
  v16 = &block_descriptor_51;
  v11 = _Block_copy(&v13);
  v12 = v8;

  [v2 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v11);
  _Block_release(v7);
}

uint64_t sub_21ED30664()
{
  v1 = v0;
  v2 = 0;
  v3 = *&v0[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_elements];
  v4 = MEMORY[0x277D84F90];
  v5 = 4;
  v6 = MEMORY[0x277D84F90];
LABEL_2:
  if (v2 <= 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = v2;
  }

  while (v2 != 4)
  {
    if (v7 == v2)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v8 = qword_28307AD28[v2++ + 4];
    if ((v8 & ~v3) == 0)
    {
      v18 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21ED34610(0, *(v6 + 16) + 1, 1);
        v5 = 4;
        v6 = v18;
      }

      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_21ED34610((v9 > 1), v10 + 1, 1);
        v5 = 4;
        v6 = v18;
      }

      *(v6 + 16) = v10 + 1;
      *(v6 + 8 * v10 + 32) = v8;
      goto LABEL_2;
    }
  }

  v18 = v4;
  v11 = *(v6 + 16);
  v12 = v1;
  v13 = 0;
  while (v11 != v13)
  {
    if (v13 >= *(v6 + 16))
    {
      goto LABEL_29;
    }

    v14 = v13 + 1;
    v5 = v12;
    v15 = sub_21ED31364(*(v6 + 8 * v13 + 32));
    v13 = v14;
    if (v15)
    {
      MEMORY[0x223D69BD0]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v16 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_21ED3595C();
      }

      v5 = &v18;
      sub_21ED3596C();
      v4 = v18;
      v13 = v14;
    }
  }

  v5 = v4 >> 62;
  if (v4 >> 62)
  {
LABEL_30:
    if (sub_21ED35B3C() > 0)
    {
      goto LABEL_22;
    }

LABEL_31:

    return 0;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
  {
    goto LABEL_31;
  }

LABEL_22:
  if (qword_27CEE5CE0 != -1)
  {
    swift_once();
  }

  sub_21ED3583C();
  if (v5)
  {
    sub_21ED2CF3C(0, &qword_27CEE6008, 0x277D75720);

    sub_21ED35B2C();
  }

  else
  {

    sub_21ED35B5C();
    sub_21ED2CF3C(0, &qword_27CEE6008, 0x277D75720);
  }

  sub_21ED2CF3C(0, &qword_27CEE6010, 0x277D75710);
  return sub_21ED359EC();
}

uint64_t sub_21ED309CC()
{
  v1 = v0;
  v2 = 0;
  v3 = *&v0[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_elements];
  v4 = MEMORY[0x277D84F90];
  v5 = 5;
  v6 = MEMORY[0x277D84F90];
LABEL_2:
  if (v2 <= 5)
  {
    v7 = 5;
  }

  else
  {
    v7 = v2;
  }

  while (v2 != 5)
  {
    if (v7 == v2)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v8 = qword_28307AD68[v2++ + 4];
    if ((v8 & ~v3) == 0)
    {
      v18 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21ED34610(0, *(v6 + 16) + 1, 1);
        v5 = 5;
        v6 = v18;
      }

      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_21ED34610((v9 > 1), v10 + 1, 1);
        v5 = 5;
        v6 = v18;
      }

      *(v6 + 16) = v10 + 1;
      *(v6 + 8 * v10 + 32) = v8;
      goto LABEL_2;
    }
  }

  v18 = v4;
  v11 = *(v6 + 16);
  v12 = v1;
  v13 = 0;
  while (v11 != v13)
  {
    if (v13 >= *(v6 + 16))
    {
      goto LABEL_29;
    }

    v14 = v13 + 1;
    v5 = v12;
    v15 = sub_21ED31364(*(v6 + 8 * v13 + 32));
    v13 = v14;
    if (v15)
    {
      MEMORY[0x223D69BD0]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v16 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_21ED3595C();
      }

      v5 = &v18;
      sub_21ED3596C();
      v4 = v18;
      v13 = v14;
    }
  }

  v5 = v4 >> 62;
  if (v4 >> 62)
  {
LABEL_30:
    if (sub_21ED35B3C() > 0)
    {
      goto LABEL_22;
    }

LABEL_31:

    return 0;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
  {
    goto LABEL_31;
  }

LABEL_22:
  if (qword_27CEE5CE0 != -1)
  {
    swift_once();
  }

  sub_21ED3583C();
  if (v5)
  {
    sub_21ED2CF3C(0, &qword_27CEE6008, 0x277D75720);

    sub_21ED35B2C();
  }

  else
  {

    sub_21ED35B5C();
    sub_21ED2CF3C(0, &qword_27CEE6008, 0x277D75720);
  }

  sub_21ED2CF3C(0, &qword_27CEE6010, 0x277D75710);
  return sub_21ED359EC();
}

uint64_t sub_21ED30D2C()
{
  v1 = 0;
  v2 = *&v0[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_elements];
  v3 = MEMORY[0x277D84F90];
  v4 = MEMORY[0x277D84F90];
  while (v1 != 2)
  {
    v5 = qword_28307ADB0[v1++ + 4];
    if ((v5 & ~v2) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21ED34610(0, *(v4 + 16) + 1, 1);
      }

      v7 = *(v4 + 16);
      v6 = *(v4 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_21ED34610((v6 > 1), v7 + 1, 1);
      }

      *(v4 + 16) = v7 + 1;
      *(v4 + 8 * v7 + 32) = v5;
    }
  }

  v15 = v3;
  v8 = *(v4 + 16);
  v9 = v0;
  v10 = 0;
  while (v8 != v10)
  {
    if (v10 >= *(v4 + 16))
    {
      __break(1u);
LABEL_21:
      if (sub_21ED35B3C() > 0)
      {
        sub_21ED2CF3C(0, &qword_27CEE6008, 0x277D75720);

        sub_21ED35B2C();

        goto LABEL_19;
      }

      goto LABEL_23;
    }

    v11 = v10 + 1;
    v12 = sub_21ED31364(*(v4 + 8 * v10 + 32));
    v10 = v11;
    if (v12)
    {
      MEMORY[0x223D69BD0]();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_21ED3595C();
      }

      sub_21ED3596C();
      v3 = v15;
      v10 = v11;
    }
  }

  if (v3 >> 62)
  {
    goto LABEL_21;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    sub_21ED35B5C();
    sub_21ED2CF3C(0, &qword_27CEE6008, 0x277D75720);
LABEL_19:

    sub_21ED2CF3C(0, &qword_27CEE6010, 0x277D75710);
    return sub_21ED359EC();
  }

LABEL_23:

  return 0;
}

uint64_t sub_21ED30FCC()
{
  v1 = 0;
  v2 = *&v0[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_elements];
  v3 = MEMORY[0x277D84F90];
  v4 = MEMORY[0x277D84F90];
  while (v1 != 2)
  {
    v5 = qword_28307ADE0[v1++ + 4];
    if ((v5 & ~v2) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21ED34610(0, *(v4 + 16) + 1, 1);
      }

      v7 = *(v4 + 16);
      v6 = *(v4 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_21ED34610((v6 > 1), v7 + 1, 1);
      }

      *(v4 + 16) = v7 + 1;
      *(v4 + 8 * v7 + 32) = v5;
    }
  }

  v16 = v3;
  v8 = *(v4 + 16);
  v9 = v0;
  v10 = 0;
  while (v8 != v10)
  {
    if (v10 >= *(v4 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    v11 = v10 + 1;
    v12 = sub_21ED31364(*(v4 + 8 * v10 + 32));
    v10 = v11;
    if (v12)
    {
      MEMORY[0x223D69BD0]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_21ED3595C();
      }

      sub_21ED3596C();
      v3 = v16;
      v10 = v11;
    }
  }

  if (!(v3 >> 62))
  {

    sub_21ED35B5C();
    sub_21ED2CF3C(0, &qword_27CEE6008, 0x277D75720);
    v14 = v3;
    goto LABEL_18;
  }

LABEL_20:
  sub_21ED2CF3C(0, &qword_27CEE6008, 0x277D75720);

  v14 = sub_21ED35B2C();

LABEL_18:

  return v14;
}

uint64_t sub_21ED31200(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_21ED35B3C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_21ED35B3C();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_21ED34570(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_21ED34734(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_21ED312F0()
{
  sub_21ED2CF3C(0, &qword_27CEE6010, 0x277D75710);

  return sub_21ED359EC();
}

uint64_t sub_21ED31364(uint64_t a1)
{
  result = 0;
  if (a1 > 1023)
  {
    if (a1 < 0x2000)
    {
      switch(a1)
      {
        case 1024:
          sub_21ED2CF3C(0, &qword_27CEE6000, 0x277D750C8);
          if (qword_27CEE5CE0 == -1)
          {
            goto LABEL_46;
          }

          goto LABEL_59;
        case 2048:
          sub_21ED2CF3C(0, &qword_27CEE6000, 0x277D750C8);
          if (qword_27CEE5CE0 == -1)
          {
LABEL_48:
            sub_21ED3583C();
            v6 = sub_21ED358EC();
            [objc_opt_self() systemImageNamed_];

            swift_allocObject();
            swift_unknownObjectWeakInit();
            return sub_21ED35A4C();
          }

          break;
        case 4096:
          sub_21ED2CF3C(0, &qword_27CEE6000, 0x277D750C8);
          if (qword_27CEE5CE0 == -1)
          {
            goto LABEL_48;
          }

          break;
        default:
          return result;
      }
    }

    else
    {
      if (a1 < 0x10000)
      {
        if (a1 != 0x2000)
        {
          if (a1 != 0x8000)
          {
            return result;
          }

          v3 = [objc_opt_self() currentDevice];
          v4 = [v3 orientation];

          UIDeviceOrientationIsLandscape(v4);
          sub_21ED2CF3C(0, &qword_27CEE6000, 0x277D750C8);
          if (qword_27CEE5CE0 != -1)
          {
            swift_once();
          }

          sub_21ED3583C();
          v5 = sub_21ED358EC();

          [objc_opt_self() systemImageNamed_];

          swift_allocObject();
          swift_unknownObjectWeakInit();
          return sub_21ED35A4C();
        }

        sub_21ED2CF3C(0, &qword_27CEE6000, 0x277D750C8);
        if (qword_27CEE5CE0 == -1)
        {
          goto LABEL_46;
        }

        goto LABEL_59;
      }

      if (a1 == 0x10000)
      {
        sub_21ED2CF3C(0, &qword_27CEE6000, 0x277D750C8);
        if (qword_27CEE5CE0 == -1)
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (a1 != 0x20000)
        {
          return result;
        }

        sub_21ED2CF3C(0, &qword_27CEE6000, 0x277D750C8);
        if (qword_27CEE5CE0 == -1)
        {
          goto LABEL_48;
        }
      }
    }

    swift_once();
    goto LABEL_48;
  }

  if (a1 > 63)
  {
    if (a1 > 255)
    {
      if (a1 == 256)
      {
        sub_21ED2CF3C(0, &qword_27CEE6000, 0x277D750C8);
        if (qword_27CEE5CE0 == -1)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (a1 != 512)
        {
          return result;
        }

        sub_21ED2CF3C(0, &qword_27CEE6000, 0x277D750C8);
        if (qword_27CEE5CE0 == -1)
        {
          goto LABEL_46;
        }
      }
    }

    else if (a1 == 64)
    {
      sub_21ED2CF3C(0, &qword_27CEE6000, 0x277D750C8);
      if (qword_27CEE5CE0 == -1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (a1 != 128)
      {
        return result;
      }

      sub_21ED2CF3C(0, &qword_27CEE6000, 0x277D750C8);
      if (qword_27CEE5CE0 == -1)
      {
        goto LABEL_46;
      }
    }

    goto LABEL_59;
  }

  if (a1 == 8)
  {
    sub_21ED2CF3C(0, &qword_27CEE6000, 0x277D750C8);
    if (qword_27CEE5CE0 == -1)
    {
      goto LABEL_46;
    }

    goto LABEL_59;
  }

  if (a1 != 16)
  {
    if (a1 != 32)
    {
      return result;
    }

    sub_21ED2CF3C(0, &qword_27CEE6000, 0x277D750C8);
    if (qword_27CEE5CE0 == -1)
    {
      goto LABEL_46;
    }

    goto LABEL_59;
  }

  sub_21ED2CF3C(0, &qword_27CEE6000, 0x277D750C8);
  if (qword_27CEE5CE0 != -1)
  {
LABEL_59:
    swift_once();
  }

LABEL_46:
  sub_21ED3583C();
  sub_21ED324C4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_21ED35A4C();
}

id sub_21ED324C4()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = sub_21ED3518C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEE5FE8, &qword_21ED36E58);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21ED36CD0;
  v5 = qword_27CEE5CC8;
  v6 = v3;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_27CEE66C0;
  *(v4 + 32) = qword_27CEE66C0;
  *(v4 + 40) = v7;
  v8 = qword_27CEE5CD0;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_27CEE66C8;
  *(v4 + 48) = qword_27CEE66C8;
  sub_21ED2CF3C(0, &qword_27CEE6030, 0x277D75348);
  v11 = v10;
  v12 = sub_21ED3593C();

  v13 = [objc_opt_self() configurationWithPaletteColors_];

  v14 = [v6 configurationByApplyingConfiguration_];
  v15 = v14;
  v16 = sub_21ED358EC();
  v17 = [objc_opt_self() systemImageNamed:v16 withConfiguration:v15];

  return v17;
}

void sub_21ED326E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = Strong + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      (*(v9 + 16))(v7, a3, a4, ObjectType, v9);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_21ED32800(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = objc_allocWithZone(MEMORY[0x277D75348]);
  v11[4] = a2;
  v11[5] = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_21ED34478;
  v11[3] = a3;
  v8 = _Block_copy(v11);
  v9 = [v7 initWithDynamicProvider_];
  _Block_release(v8);

  *a4 = v9;
  return result;
}

id sub_21ED328D0(void *a1, double a2)
{
  v3 = [a1 userInterfaceStyle];
  v4 = objc_allocWithZone(MEMORY[0x277D75348]);
  if (v3 == 2)
  {
    v5 = 100.0;
  }

  else
  {
    v5 = 0.0;
  }

  return [v4 initWithHue:4.0 saturation:0.0 brightness:v5 alpha:a2];
}

void sub_21ED32948(void *a1)
{
  v2 = OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_interactionState;
  if ((v1[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_interactionState] & 0xFE) != 2 && [a1 state] == 3)
  {
    [v1 setShowsMenuAsPrimaryAction_];
    v3 = [type metadata accessor for WindowControlsPrototypeSettingsDomain() rootSettings];
    v13 = *&v3[OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_tapMorphSpring];

    v4 = v1[v2];
    if (v4 == 3)
    {
    }

    else
    {
      v1[v2] = 3;
      sub_21ED2E3B8(v4);
      sub_21ED2E480(3u, v16);
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_21ED2BF64(v16, v15);
      v6 = swift_allocObject();
      v7 = v15[2];
      *(v6 + 72) = v15[3];
      v8 = v15[5];
      *(v6 + 88) = v15[4];
      *(v6 + 104) = v8;
      *(v6 + 120) = v15[6];
      v9 = v15[1];
      *(v6 + 24) = v15[0];
      *(v6 + 40) = v9;
      *(v6 + 16) = v5;
      *(v6 + 56) = v7;
      v10 = objc_opt_self();
      aBlock[4] = sub_21ED2C090;
      aBlock[5] = v6;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21ED33F98;
      aBlock[3] = &block_descriptor_31;
      v11 = _Block_copy(aBlock);
      v12 = v13;

      [v10 _animateUsingSpringBehavior_tracking_animations_completion_];

      _Block_release(v11);

      sub_21ED2BA44(v16);
      sub_21ED2F32C(3u);
    }
  }
}

void sub_21ED32C18(void *a1)
{
  v2 = [a1 state];
  if (v2 == 3)
  {
    v14 = OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_interactionState;
    if (v1[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_interactionState] != 2)
    {
      return;
    }

    v15 = v1[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_lastCollapsedInteractionState];
    v16 = [type metadata accessor for WindowControlsPrototypeSettingsDomain() rootSettings];
    v27 = *&v16[OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_hoverMorphSpring];

    if (v15 <= 1)
    {
      v17 = [v1 contextMenuInteraction];
      [v17 dismissMenu];
    }

    v18 = v1[v14];
    if (v15 != v18)
    {
      v1[v14] = v15;
      sub_21ED2E3B8(v18);
      sub_21ED2E480(v15, v41);
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_21ED2BF64(v41, &v34);
      v20 = swift_allocObject();
      v21 = v36;
      *(v20 + 72) = v37;
      v22 = v39;
      *(v20 + 88) = v38;
      *(v20 + 104) = v22;
      *(v20 + 120) = v40;
      v23 = v35;
      *(v20 + 24) = v34;
      *(v20 + 40) = v23;
      *(v20 + 16) = v19;
      *(v20 + 56) = v21;
      v24 = objc_opt_self();
      v32 = sub_21ED2C00C;
      v33 = v20;
      aBlock = MEMORY[0x277D85DD0];
      v29 = 1107296256;
      v30 = sub_21ED33F98;
      v31 = &block_descriptor_1;
      v25 = _Block_copy(&aBlock);
      v26 = v27;

      [v24 _animateUsingSpringBehavior_tracking_animations_completion_];

      _Block_release(v25);

      sub_21ED2BA44(v41);
      sub_21ED2F32C(v15);

      return;
    }
  }

  else
  {
    if (v2 != 1)
    {
      return;
    }

    v3 = OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_interactionState;
    if (v1[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_interactionState] > 1u)
    {
      return;
    }

    v4 = [type metadata accessor for WindowControlsPrototypeSettingsDomain() rootSettings];
    v27 = *&v4[OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_hoverMorphSpring];

    v5 = v1[v3];
    if (v5 != 2)
    {
      v1[v3] = 2;
      sub_21ED2E3B8(v5);
      sub_21ED2E480(2u, v41);
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_21ED2BF64(v41, &v34);
      v7 = swift_allocObject();
      v8 = v36;
      *(v7 + 72) = v37;
      v9 = v39;
      *(v7 + 88) = v38;
      *(v7 + 104) = v9;
      *(v7 + 120) = v40;
      v10 = v35;
      *(v7 + 24) = v34;
      *(v7 + 40) = v10;
      *(v7 + 16) = v6;
      *(v7 + 56) = v8;
      v11 = objc_opt_self();
      v32 = sub_21ED2C090;
      v33 = v7;
      aBlock = MEMORY[0x277D85DD0];
      v29 = 1107296256;
      v30 = sub_21ED33F98;
      v31 = &block_descriptor_23;
      v12 = _Block_copy(&aBlock);
      v13 = v27;

      [v11 _animateUsingSpringBehavior_tracking_animations_completion_];

      _Block_release(v12);

      sub_21ED2BA44(v41);
      sub_21ED2F32C(2u);

      return;
    }
  }
}

id sub_21ED330E8()
{
  result = [objc_opt_self() clearColor];
  qword_27CEE5EE0 = 0;
  qword_27CEE5EE8 = result;
  return result;
}

void sub_21ED33128(uint64_t a1, uint64_t a2)
{
  v3 = sub_21ED3586C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [v6 effectiveUserInterfaceLayoutDirection];
    v8 = *a2;
    v9 = *(a2 + 8);
    [v6 bounds];
    [v6 setBounds_];
    v10 = sub_21ED2E9FC();
    [v10 frame];
    [v10 setFrame_];

    v11 = sub_21ED2ED28();
    [v11 setBounds_];

    v12 = OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___containerView;
    v13 = *&v6[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___containerView];
    v14 = *&v6[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___hitTestingView];
    [v13 center];
    [v14 setCenter_];

    v72 = v12;
    if (v6[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_supportsHoverInteractions] == 1)
    {
      v15 = sub_21ED34B68(41.0, 22.0, v8, v9, *&v6[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_cornerOffset], *&v6[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_cornerOffset + 8]);
    }

    else
    {
      v15 = *(a2 + 16);
      v16 = *(a2 + 24);
    }

    if (v7 == 1)
    {
      v15 = -v15;
    }

    CGAffineTransformMakeTranslation(&v73, v15, v16);
    [v6 setTransform_];
    v17 = [v6 layer];
    [v17 setCornerRadius_];

    v18 = [v6 layer];
    [v18 setBorderWidth_];

    v19 = [v6 layer];
    v20 = [*(a2 + 104) CGColor];
    [v19 setBorderColor_];

    sub_21ED34AF8(a2 + 32, &v73);
    sub_21ED359FC();
    if (!v6[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_glassConfiguration + 8])
    {
      v21 = *&v6[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_glassConfiguration];
    }

    sub_21ED35A0C();
    sub_21ED3585C();
    sub_21ED35A1C();
    v22 = *(a2 + 88);
    sub_21ED35A0C();
    sub_21ED3584C();
    sub_21ED35A1C();

    v23 = sub_21ED2EC0C(&OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___close, 0);
    v24 = OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_elements;
    v25 = OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_enabled;
    v23[OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_enabled] = v6[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_elements] & 1;
    v26 = sub_21ED26C14();
    [v26 setEnabled_];

    v27 = sub_21ED26CCC();
    [v27 setEnabled_];

    v28 = sub_21ED2EC0C(&OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___minimize, 1);
    v29 = OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_enabled;
    v28[OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_enabled] = (v6[v24] & 2) != 0;
    v30 = sub_21ED26C14();
    [v30 setEnabled_];

    v31 = sub_21ED26CCC();
    [v31 setEnabled_];

    v32 = sub_21ED2EC90();
    v33 = v32;
    if ((*&v6[v24] & 0x4000) != 0)
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    v35 = v32[OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_variant];
    v33[OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_variant] = v34;
    sub_21ED2717C(v35);

    v36 = &v6[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___zoom];
    v37 = *&v6[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___zoom];
    v38 = OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_enabled;
    v37[OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_enabled] = (*&v6[v24] & 0x4004) != 0;
    v39 = v37;
    v40 = sub_21ED26C14();
    [v40 setEnabled_];

    v41 = sub_21ED26CCC();
    [v41 setEnabled_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEE5FE8, &qword_21ED36E58);
    v42 = swift_allocObject();
    v43 = v42;
    *(v42 + 16) = xmmword_21ED36CD0;
    if (v7 == 1)
    {
      v44 = *v36;
      *(v42 + 32) = *v36;
      v45 = *&v6[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___minimize];
      *(v42 + 40) = v45;
      v36 = &v6[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___close];
    }

    else
    {
      v44 = *&v6[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___close];
      *(v42 + 32) = v44;
      v45 = *&v6[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___minimize];
      *(v42 + 40) = v45;
    }

    v46 = *v36;
    *(v42 + 48) = *v36;
    v47 = v44;
    v48 = v45;
    v49 = v46;
    v50 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v50)
    {
      v71 = a2;
      v51 = 0;
      v52 = (v43 + 32);
      v53 = OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_interactionState;
      v54 = v43 & 0xC000000000000001;
      do
      {
        if (v54)
        {
          v55 = MEMORY[0x223D69D20](v51, v43);
        }

        else
        {
          if (v51 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v55 = *(v43 + 8 * v51 + 32);
        }

        v56 = v55;
        ++v51;
        v57 = v6[v53];
        v56[OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_interactionState] = v57;
        sub_21ED26D5C(v57, 1);
      }

      while (v50 != v51);
      v58 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v59 = *(v71 + 80);
      v60 = MEMORY[0x277D84F90];
      if (v58)
      {
        *&v73.a = MEMORY[0x277D84F90];
        sub_21ED35ABC();
        if (v54)
        {
          v61 = 0;
          do
          {
            v62 = v61 + 1;
            MEMORY[0x223D69D20]();
            sub_21ED27488();
            swift_unknownObjectRelease();
            sub_21ED35A9C();
            v63 = *(*&v73.a + 16);
            sub_21ED35ACC();
            sub_21ED35ADC();
            sub_21ED35AAC();
            v61 = v62;
          }

          while (v58 != v62);
        }

        else
        {
          do
          {
            v64 = *v52++;
            v65 = v64;
            sub_21ED27488();

            sub_21ED35A9C();
            v66 = *(*&v73.a + 16);
            sub_21ED35ACC();
            sub_21ED35ADC();
            sub_21ED35AAC();
            --v58;
          }

          while (v58);
        }

        v60 = *&v73.a;
      }
    }

    else
    {
      v59 = *(a2 + 80);
      v60 = MEMORY[0x277D84F90];
    }

    v67 = *&v6[v72];
    v68 = v67;
    if (v59)
    {
      if (v59 == 1)
      {
        v69 = sub_21ED2D688(v67, v60);
      }

      else
      {
        v69 = sub_21ED2D830(v67, v60);
      }
    }

    else
    {
      v69 = sub_21ED2D4AC(v67, v60);
    }

    v70 = v69;

    sub_21ED2E1E0(v70, v43);
  }
}

void sub_21ED33860(uint64_t a1, uint64_t a2)
{
  v3 = sub_21ED3586C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [v6 effectiveUserInterfaceLayoutDirection];
    v8 = *a2;
    v9 = *(a2 + 8);
    [v6 bounds];
    [v6 setBounds_];
    v10 = sub_21ED2E9FC();
    [v10 frame];
    [v10 setFrame_];

    v11 = sub_21ED2ED28();
    [v11 setBounds_];

    v12 = OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___containerView;
    v13 = *&v6[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___containerView];
    v14 = *&v6[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___hitTestingView];
    [v13 center];
    [v14 setCenter_];

    v72 = v12;
    if (v6[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_supportsHoverInteractions] == 1)
    {
      v15 = sub_21ED34B68(41.0, 22.0, v8, v9, *&v6[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_cornerOffset], *&v6[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_cornerOffset + 8]);
    }

    else
    {
      v15 = *(a2 + 16);
      v16 = *(a2 + 24);
    }

    if (v7 == 1)
    {
      v15 = -v15;
    }

    CGAffineTransformMakeTranslation(&v73, v15, v16);
    [v6 setTransform_];
    v17 = [v6 layer];
    [v17 setCornerRadius_];

    v18 = [v6 layer];
    [v18 setBorderWidth_];

    v19 = [v6 layer];
    v20 = [*(a2 + 104) CGColor];
    [v19 setBorderColor_];

    sub_21ED34AF8(a2 + 32, &v73);
    sub_21ED359FC();
    if (!v6[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_glassConfiguration + 8])
    {
      v21 = *&v6[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_glassConfiguration];
    }

    sub_21ED35A0C();
    sub_21ED3585C();
    sub_21ED35A1C();
    v22 = *(a2 + 88);
    sub_21ED35A0C();
    sub_21ED3584C();
    sub_21ED35A1C();

    v23 = sub_21ED2EC0C(&OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___close, 0);
    v24 = OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_elements;
    v25 = OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_enabled;
    v23[OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_enabled] = v6[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_elements] & 1;
    v26 = sub_21ED26C14();
    [v26 setEnabled_];

    v27 = sub_21ED26CCC();
    [v27 setEnabled_];

    v28 = sub_21ED2EC0C(&OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___minimize, 1);
    v29 = OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_enabled;
    v28[OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_enabled] = (v6[v24] & 2) != 0;
    v30 = sub_21ED26C14();
    [v30 setEnabled_];

    v31 = sub_21ED26CCC();
    [v31 setEnabled_];

    v32 = sub_21ED2EC90();
    v33 = v32;
    if ((*&v6[v24] & 0x4000) != 0)
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    v35 = v32[OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_variant];
    v33[OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_variant] = v34;
    sub_21ED2717C(v35);

    v36 = &v6[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___zoom];
    v37 = *&v6[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___zoom];
    v38 = OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_enabled;
    v37[OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_enabled] = (*&v6[v24] & 0x4004) != 0;
    v39 = v37;
    v40 = sub_21ED26C14();
    [v40 setEnabled_];

    v41 = sub_21ED26CCC();
    [v41 setEnabled_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEE5FE8, &qword_21ED36E58);
    v42 = swift_allocObject();
    v43 = v42;
    *(v42 + 16) = xmmword_21ED36CD0;
    if (v7 == 1)
    {
      v44 = *v36;
      *(v42 + 32) = *v36;
      v45 = *&v6[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___minimize];
      *(v42 + 40) = v45;
      v36 = &v6[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___close];
    }

    else
    {
      v44 = *&v6[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___close];
      *(v42 + 32) = v44;
      v45 = *&v6[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___minimize];
      *(v42 + 40) = v45;
    }

    v46 = *v36;
    *(v42 + 48) = *v36;
    v47 = v44;
    v48 = v45;
    v49 = v46;
    v50 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v50)
    {
      v71 = a2;
      v51 = 0;
      v52 = (v43 + 32);
      v53 = OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_interactionState;
      v54 = v43 & 0xC000000000000001;
      do
      {
        if (v54)
        {
          v55 = MEMORY[0x223D69D20](v51, v43);
        }

        else
        {
          if (v51 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v55 = *(v43 + 8 * v51 + 32);
        }

        v56 = v55;
        ++v51;
        v57 = v6[v53];
        v56[OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_interactionState] = v57;
        sub_21ED26D5C(v57, 1);
      }

      while (v50 != v51);
      v58 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v59 = *(v71 + 80);
      v60 = MEMORY[0x277D84F90];
      if (v58)
      {
        *&v73.a = MEMORY[0x277D84F90];
        sub_21ED35ABC();
        if (v54)
        {
          v61 = 0;
          do
          {
            v62 = v61 + 1;
            MEMORY[0x223D69D20]();
            sub_21ED27488();
            swift_unknownObjectRelease();
            sub_21ED35A9C();
            v63 = *(*&v73.a + 16);
            sub_21ED35ACC();
            sub_21ED35ADC();
            sub_21ED35AAC();
            v61 = v62;
          }

          while (v58 != v62);
        }

        else
        {
          do
          {
            v64 = *v52++;
            v65 = v64;
            sub_21ED27488();

            sub_21ED35A9C();
            v66 = *(*&v73.a + 16);
            sub_21ED35ACC();
            sub_21ED35ADC();
            sub_21ED35AAC();
            --v58;
          }

          while (v58);
        }

        v60 = *&v73.a;
      }
    }

    else
    {
      v59 = *(a2 + 80);
      v60 = MEMORY[0x277D84F90];
    }

    v67 = *&v6[v72];
    v68 = v67;
    if (v59)
    {
      if (v59 == 1)
      {
        v69 = sub_21ED2D688(v67, v60);
      }

      else
      {
        v69 = sub_21ED2D830(v67, v60);
      }
    }

    else
    {
      v69 = sub_21ED2D4AC(v67, v60);
    }

    v70 = v69;

    sub_21ED2E1E0(v70, v43);
  }
}

uint64_t sub_21ED33F98(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_21ED33FDC(void *a1, double *a2)
{
  v4 = a2[4];
  v5 = a2[5];
  v6 = type metadata accessor for WindowControlsPrototypeSettingsDomain();
  v10 = *(a2 + 1);
  v11 = *a2;
  v7 = [v6 rootSettings];
  v8 = *&v7[OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_bounceScale];

  *&v13.a = v11;
  *&v13.c = v10;
  v13.tx = v4;
  v13.ty = v5;
  CGAffineTransformScale(&v12, &v13, v8, v8);
  v13 = v12;
  return [a1 setTransform_];
}

void sub_21ED34098(uint64_t a1, uint64_t a2, void *a3, _OWORD *a4)
{
  v6 = objc_opt_self();
  v7 = [type metadata accessor for WindowControlsPrototypeSettingsDomain() rootSettings];
  v8 = *&v7[OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_bounceCollapseSpring];

  v9 = swift_allocObject();
  v10 = a4[1];
  *(v9 + 24) = *a4;
  *(v9 + 16) = a3;
  *(v9 + 40) = v10;
  *(v9 + 56) = a4[2];
  v13[4] = sub_21ED34C8C;
  v13[5] = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_21ED33F98;
  v13[3] = &block_descriptor_57;
  v11 = _Block_copy(v13);
  v12 = a3;

  [v6 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v11);
}

uint64_t sub_21ED341EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

uint64_t sub_21ED34274()
{
  v1 = [v0 contextMenuInteraction];
  [v1 dismissMenu];

  v2 = v0[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_interactionState];
  if (v2 != 1)
  {
    v0[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_interactionState] = 1;
    sub_21ED2E3B8(v2);
    sub_21ED2E480(1u, v5);
    swift_unknownObjectWeakInit();
    sub_21ED33128(v4, v5);
    MEMORY[0x223D6A320](v4);
    sub_21ED2BA44(v5);
    sub_21ED2F32C(1u);
  }

  return 1;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for WindowControlsView.GlassConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for WindowControlsView.GlassConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_21ED34424()
{
  result = qword_27CEE5FD0;
  if (!qword_27CEE5FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEE5FD0);
  }

  return result;
}

id sub_21ED34478(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

id sub_21ED344E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_21ED2CF3C(0, &qword_27CEE6008, 0x277D75720);
  v3 = sub_21ED3594C();

  v4 = v2(v3);

  return v4;
}

uint64_t sub_21ED34570(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_21ED35B3C();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_21ED35A8C();
  *v1 = result;
  return result;
}

char *sub_21ED34610(char *a1, int64_t a2, char a3)
{
  result = sub_21ED34630(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21ED34630(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEE6028, &qword_21ED36E70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_21ED34734(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21ED35B3C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21ED35B3C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21ED34CFC();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEE6018, &qword_21ED36E68);
            v9 = sub_21ED348C4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_21ED2CF3C(0, &qword_27CEE6008, 0x277D75720);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_21ED348C4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223D69D20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_21ED34944;
  }

  __break(1u);
  return result;
}

id sub_21ED3494C(char a1, signed __int8 a2, void *a3, _BYTE *a4)
{
  ObjectType = swift_getObjectType();
  *&a4[OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_delegate + 8] = 0;
  v9 = swift_unknownObjectWeakInit();
  *&a4[OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView____lazy_storage___backgroundView] = 0;
  *&a4[OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView____lazy_storage___icon] = 1;
  *&a4[OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView____lazy_storage___tapGestureRecognizer] = 0;
  *&a4[OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView____lazy_storage___hoverGestureRecognizer] = 0;
  *&a4[OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_hoverTimeoutCompletionTask] = 0;
  a4[OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_variant] = a1;
  a4[OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_interactionState] = a2;
  *(v9 + 8) = &off_28307B4E8;
  swift_unknownObjectWeakAssign();
  a4[OBJC_IVAR____TtC20SystemUIWindowingKit17WindowControlView_enabled] = 1;
  v15.receiver = a4;
  v15.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v15, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v11 = sub_21ED27488();
  [v10 addSubview_];

  v12 = sub_21ED26C14();
  [v10 addGestureRecognizer_];

  v13 = sub_21ED26CCC();
  [v10 addGestureRecognizer_];

  sub_21ED26D5C(a2, 0);
  return v10;
}

uint64_t sub_21ED34AF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEE5FE0, &qword_21ED36E50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_21ED34B68(double a1, double a2, double a3, double a4, double a5, double a6)
{
  result = 0.0;
  if (a1 != a3 || a2 != a4)
  {
    v9 = (a3 - a1) * 0.5;
    v10 = v9 - a5;
    result = v9 * 3.0 / 5.0;
    if (v10 > 0.0)
    {
      result = v10 + 8.0;
    }

    v11 = (a4 - a2) * 0.5 - a6;
    v12 = v11 + 8.0;
    if (v11 <= 0.0)
    {
      v12 = 0.0;
    }

    v13 = result - v10;
    v14 = v12 - v11;
    v15 = result + v14 - (result - v10);
    if (v14 >= v13)
    {
      return v15;
    }
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_21ED34C8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v4[0] = *(v0 + 24);
  v4[1] = v2;
  v4[2] = *(v0 + 56);
  return [v1 setTransform_];
}

unint64_t sub_21ED34CFC()
{
  result = qword_27CEE6020;
  if (!qword_27CEE6020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEE6018, &qword_21ED36E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEE6020);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_21ED34F8C()
{
  *(v0 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_preContextMenuLaunchInteractionState) = 4;
  v1 = (v0 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_cornerOffset);
  *v1 = 0;
  v1[1] = 0;
  v2 = v0 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_glassConfiguration;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___containerView) = 0;
  *(v0 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___hitTestingView) = 0;
  *(v0 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___close) = 0;
  *(v0 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___minimize) = 0;
  *(v0 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___zoom) = 0;
  *(v0 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___hoverGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView____lazy_storage___tapGestureRecognizer) = 0;
  sub_21ED35B1C();
  __break(1u);
}

double sub_21ED35090(double a1)
{
  v2 = v1[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_preContextMenuLaunchInteractionState];
  if (v1[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_supportsHoverInteractions] == 1)
  {
    a1 = sub_21ED34B68(41.0, 22.0, dbl_21ED36F08[v2], dbl_21ED36F30[v2], *&v1[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_cornerOffset], *&v1[OBJC_IVAR____TtC20SystemUIWindowingKit18WindowControlsView_cornerOffset + 8]);
  }

  else
  {
    v3 = qword_21ED36F58[(0x103020100uLL >> (8 * v2)) & 3];
  }

  [v1 transform];
  [v1 transform];
  return 0.0;
}

id sub_21ED3518C()
{
  v0 = *MEMORY[0x277D76830];
  v1 = sub_21ED358FC();
  v3 = v2;
  if (v1 == sub_21ED358FC() && v3 == v4)
  {

    goto LABEL_15;
  }

  v6 = sub_21ED35B4C();

  if (v6)
  {
LABEL_15:
    v19 = [objc_opt_self() configurationWithPointSize_];
    goto LABEL_16;
  }

  v7 = *MEMORY[0x277D76858];
  v8 = sub_21ED358FC();
  v10 = v9;
  if (v8 == sub_21ED358FC() && v10 == v11)
  {

    goto LABEL_20;
  }

  v13 = sub_21ED35B4C();

  if (v13)
  {
LABEL_20:
    v19 = [objc_opt_self() configurationWithPointSize_];
    goto LABEL_16;
  }

  v14 = *MEMORY[0x277D76840];
  v15 = sub_21ED358FC();
  v17 = v16;
  if (v15 == sub_21ED358FC() && v17 == v18)
  {

LABEL_22:
    v19 = [objc_opt_self() configurationWithPointSize_];
    goto LABEL_16;
  }

  v21 = sub_21ED35B4C();

  if (v21)
  {
    goto LABEL_22;
  }

  v22 = *MEMORY[0x277D76838];
  v23 = sub_21ED358FC();
  v25 = v24;
  if (v23 == sub_21ED358FC() && v25 == v26)
  {

LABEL_27:
    v19 = [objc_opt_self() configurationWithPointSize_];
    goto LABEL_16;
  }

  v27 = sub_21ED35B4C();

  if (v27)
  {
    goto LABEL_27;
  }

  v28 = *MEMORY[0x277D76828];
  v29 = sub_21ED358FC();
  v31 = v30;
  if (v29 == sub_21ED358FC() && v31 == v32)
  {

LABEL_32:
    v19 = [objc_opt_self() configurationWithPointSize_];
    goto LABEL_16;
  }

  v33 = sub_21ED35B4C();

  if (v33)
  {
    goto LABEL_32;
  }

  v34 = *MEMORY[0x277D76820];
  v35 = sub_21ED358FC();
  v37 = v36;
  if (v35 == sub_21ED358FC() && v37 == v38)
  {

LABEL_37:
    v19 = [objc_opt_self() configurationWithPointSize_];
    goto LABEL_16;
  }

  v39 = sub_21ED35B4C();

  if (v39)
  {
    goto LABEL_37;
  }

  v19 = [objc_opt_self() configurationWithScale_];
LABEL_16:

  return v19;
}

uint64_t get_enum_tag_for_layout_string_So6UIViewC5UIKitE8Material_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_21ED35590(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21ED355D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21ED35644(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21ED3568C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21ED35734()
{
  v1 = [v0 bundleIdentifier];
  if (v1)
  {
    v2 = v1;
    v3 = sub_21ED358FC();
    v5 = v4;

    if (v3 == 0xD000000000000015 && 0x800000021ED38BB0 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_21ED35B4C();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

id sub_21ED357E4()
{
  type metadata accessor for WindowControlView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27CEE66D0 = result;
  return result;
}