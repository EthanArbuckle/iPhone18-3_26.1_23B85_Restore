void sub_1D7E71F10(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  BlueprintViewController.viewDidAppear(_:)(a3);
}

void sub_1D7E71F64(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D81925C4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D7E71FB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D7E72000(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D7E72050(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D7E720A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D7E720F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

id UIViewController.topParentViewController.getter()
{
  for (i = v0; ; i = v3)
  {
    v2 = [i parentViewController];
    if (!v2)
    {
      break;
    }

    v3 = v2;
  }

  return i;
}

uint64_t adjustLayoutDirection<A>(inBounds:block:)(void (*a1)(uint64_t *))
{
  OUTLINED_FUNCTION_155();
  v4 = sub_1D818E7D4();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  sub_1D818E7C4();
  type metadata accessor for RTLAdjuster();
  v6 = swift_allocObject();
  v6[5] = v4;
  v6[6] = sub_1D7E4E9A0();
  __swift_allocate_boxed_opaque_existential_0(v6 + 2);
  OUTLINED_FUNCTION_4_92();
  v7();
  v6[7] = v2;
  v6[8] = v1;
  v8 = OUTLINED_FUNCTION_6_88();
  v9(v8);
  a1(v6);
}

Swift::Void __swiftcall BlueprintViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3 = OUTLINED_FUNCTION_75_8();
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v13.receiver = v1;
  v13.super_class = v3;
  objc_msgSendSuper2(&v13, sel_viewDidAppear_, v2 & 1);
  OUTLINED_FUNCTION_1_71();
  v6 = *(v5 + 304);
  OUTLINED_FUNCTION_56();
  *(v1 + v6) = 2;
  sub_1D7E72464();
  OUTLINED_FUNCTION_1_71();
  __swift_project_boxed_opaque_existential_1((v1 + *(v7 + 232)), *(v1 + *(v7 + 232) + 24));
  OUTLINED_FUNCTION_68_4();
  v8 = OUTLINED_FUNCTION_15_5();
  [v9(v8) setIsActive_];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1_71();
  v11 = *(v10 + 152);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (*(v1 + v11) != 1 || (sub_1D80EB2E0() & 1) != 0)
  {
    BlueprintViewController.becomeFirstResponder()();
  }

  OUTLINED_FUNCTION_1_71();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_73_6();
  (*(v12 + 24))(*(v4 + 88));
}

void sub_1D7E72464()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  v3 = *v0;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v31 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v10 = v9 - v8;
  v29 = *v2;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v11 = *((v4 & v3) + 0x70);
  v12 = *(v11 + 56);
  v13 = *((v4 & v3) + 0x58);
  swift_unknownObjectRetain();
  v25 = v12;
  v14 = (v12)(v13, v11);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_65();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = *(AssociatedConformanceWitness + 40);
  OUTLINED_FUNCTION_12_13();
  v17 = swift_checkMetadataState();
  v30 = AssociatedConformanceWitness;
  v18 = v16(v17, AssociatedConformanceWitness);

  v19 = *(v18 + 16);
  if (v19)
  {
    v28 = *(AssociatedConformanceWitness + 80);
    v27 = *(v31 + 16);
    OUTLINED_FUNCTION_92_3();
    v21 = v18 + v20;
    v26 = *(v22 + 56);
    v23 = (v22 - 8);
    do
    {
      v27(v10, v21, v5);
      swift_unknownObjectRetain();
      v25(v13, v11);
      OUTLINED_FUNCTION_16_1();
      swift_unknownObjectRelease();
      v24 = v28(v10, v17, v30);

      v32 = v29;
      BlueprintImpressionManager.startImpression(at:view:triggerSource:)(v10, v24, &v32);

      (*v23)(v10, v5);
      v21 += v26;
      --v19;
    }

    while (v19);
  }

  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7E72768()
{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_7_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7E72808(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 290))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 128);
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

uint64_t sub_1D7E728A4()
{
  v1 = [v0 indexPathsForVisibleItems];
  sub_1D818E994();
  v2 = sub_1D8191314();

  return v2;
}

uint64_t sub_1D7E728FC(uint64_t a1)
{
  sub_1D7E72A9C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Bool __swiftcall BlueprintViewController.becomeFirstResponder()()
{
  swift_getObjectType();
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();

  KeyCommandManager.invalidate(clearState:)(0);

  v10.receiver = v1;
  v10.super_class = v0;
  v2 = objc_msgSendSuper2(&v10, sel_becomeFirstResponder);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  sub_1D7E265E4();
  if (v8)
  {
    sub_1D7E05450(&v7, v9);
    v3 = v9[4];
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v4 = OUTLINED_FUNCTION_6_1();
    v5(v4, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    sub_1D7E73ECC(&v7, &qword_1EDBB8098, qword_1EDBB80A0, &protocol descriptor for KeyCommandTraverserType);
  }

  return v2;
}

void sub_1D7E72A9C()
{
  if (!qword_1EDBB75F8)
  {
    sub_1D7E09D14(255, &qword_1EDBB7608);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBB75F8);
    }
  }
}

Swift::Void __swiftcall KeyCommandManager.invalidate(clearState:)(Swift::Bool clearState)
{
  OUTLINED_FUNCTION_0_177();
  v3 = *(v1 + 64);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }

    goto LABEL_3;
  }

  v4 = sub_1D81920A4();
  if (v4)
  {
LABEL_3:
    if (v4 < 1)
    {
      __break(1u);
      return;
    }

    sub_1D8190DB4();
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA714420](v5, v3);
        if (clearState)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);

        if (clearState)
        {
          goto LABEL_10;
        }
      }

      v7 = *(v6 + 40);
      ObjectType = swift_getObjectType();
      if ((*(v7 + 40))(ObjectType, v7))
      {
LABEL_10:
        v9 = *(v6 + 40);
        v10 = swift_getObjectType();
        (*(v9 + 48))(v10, v9);
      }

      ++v5;
      KeyCommandRegistry.invalidate()();

      if (v4 == v5)
      {

        return;
      }
    }
  }
}

Swift::Void __swiftcall KeyCommandRegistry.invalidate()()
{
  OUTLINED_FUNCTION_12_9();
  v1 = v0;
  OUTLINED_FUNCTION_7_13();
  v2 = *(v0 + 16);
  OUTLINED_FUNCTION_24();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  sub_1D8190DB4();
  v8 = 0;
  while (v5)
  {
LABEL_7:
    OUTLINED_FUNCTION_16_11();
    v11 = *(*(v2 + 48) + ((v8 << 9) | (8 * v10)));
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      [Strong removeKeyCommand_];
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      swift_beginAccess();
      sub_1D7E72D74();
      sub_1D8190DE4();
      swift_endAccess();
      swift_getObjectType();
      OUTLINED_FUNCTION_18_5();
      v14(v1);
      OUTLINED_FUNCTION_11_8();
      return;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1D7E72D74()
{
  if (!qword_1EDBB3480)
  {
    sub_1D7E3DCA8();
    sub_1D7E31228();
    sub_1D7E72E88(&qword_1EDBB3258, sub_1D7E3DCA8);
    v0 = sub_1D8190DF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB3480);
    }
  }
}

uint64_t sub_1D7E72E20(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for MastheadViewLayoutOptions.FloatingTabBarOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[18])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_1D7E72E88(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_14();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s5TeaUI32KeyCommandFocusSelectionProviderC17selectedIndexPath10Foundation0iJ0VSgvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_1D7E3D564();
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v42 - v8;
  v10 = *(v3 + 96);
  v11 = *(v10 + 56);
  v12 = *(v3 + 80);
  v13 = v11(v12, v10);
  v14 = [v13 window];

  if (v14)
  {
    if ([v14 isKeyWindow])
    {
      v44 = a1;
      v15 = [v14 windowScene];
      if (!v15 || (v16 = v15, v17 = [v15 focusSystem], v16, (v43 = v17) == 0))
      {

        v29 = sub_1D818E994();
        v30 = v44;
        goto LABEL_13;
      }

      v18 = v11(v12, v10);
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (v19 && (v20 = v19, (v21 = [v43 focusedItem]) != 0))
      {
        v42[0] = v20;
        v22 = v21;
        objc_opt_self();
        v42[1] = v22;
        v23 = swift_dynamicCastObjCClass();
        if (v23)
        {
          v24 = v18;
          v25 = [v42[0] indexPathForCell_];
          a1 = v44;
          if (v25)
          {
            v26 = v25;
            sub_1D818E924();

            swift_unknownObjectRelease();
            v27 = sub_1D818E994();
            v28 = 0;
          }

          else
          {

            swift_unknownObjectRelease();
            v27 = sub_1D818E994();
            v28 = 1;
          }

          __swift_storeEnumTagSinglePayload(v9, v28, 1, v27);
          v41 = v9;
          return sub_1D8013D78(v41, a1);
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }

      a1 = v44;
      v32 = v11(v12, v10);
      objc_opt_self();
      v33 = swift_dynamicCastObjCClass();
      if (v33)
      {
        v34 = v33;
        v35 = v43;
        if ([v43 focusedItem])
        {
          objc_opt_self();
          v36 = swift_dynamicCastObjCClass();
          if (v36)
          {
            v37 = [v34 indexPathForCell_];
            if (v37)
            {
              v38 = v37;
              sub_1D818E924();
              swift_unknownObjectRelease();

              v39 = sub_1D818E994();
              v40 = 0;
            }

            else
            {
              swift_unknownObjectRelease();

              v39 = sub_1D818E994();
              v40 = 1;
            }

            __swift_storeEnumTagSinglePayload(v7, v40, 1, v39);
            v41 = v7;
            return sub_1D8013D78(v41, a1);
          }

          swift_unknownObjectRelease();
        }

        else
        {
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

  v29 = sub_1D818E994();
  v30 = a1;
LABEL_13:

  return __swift_storeEnumTagSinglePayload(v30, 1, 1, v29);
}

uint64_t sub_1D7E73334(uint64_t a1)
{
  sub_1D7E73450(0, &qword_1EDBBC690, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id Action.reset()()
{

  v0 = sub_1D818F214();
  sub_1D7E734B0(v0);

  sub_1D818F234();

  return v2;
}

void sub_1D7E73450(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = OUTLINED_FUNCTION_17_7();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D7E734B0(uint64_t result)
{
  if (result)
  {

    sub_1D818F8B4();
    v1 = v4;
    v2 = v5;
    __swift_project_boxed_opaque_existential_1(v3, v4);
    (*(v2 + 16))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    sub_1D818F894();
    sub_1D7E734B0();
  }

  return result;
}

id Action.then(block:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for Then();
  v8 = Then.__allocating_init(block:)(a1, a2);
  OUTLINED_FUNCTION_0_85(v8, &qword_1EDBBC448);
  OUTLINED_FUNCTION_8_5();

  sub_1D818F8A4();

  sub_1D818F224();

  v6 = v3;

  return v6;
}

BOOL sub_1D7E73660(void *a1)
{
  v1 = a1;
  v2 = BlueprintViewController.canBecomeFirstResponder.getter();

  return v2;
}

BOOL BlueprintViewController.canBecomeFirstResponder.getter()
{
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_82();
  v1 = *(*(v0 + 112) + 88);
  OUTLINED_FUNCTION_82();
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_85();
  v3 = v1(v2);
  swift_unknownObjectRelease();
  return (v3 & 1) == 0;
}

uint64_t OUTLINED_FUNCTION_82_0(uint64_t a1)
{

  return sub_1D7EF80F0(a1, v1);
}

uint64_t OUTLINED_FUNCTION_82_3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 128) = a1;
  *(v2 - 120) = a2;

  return swift_getTupleTypeMetadata();
}

id OUTLINED_FUNCTION_82_4()
{

  return [v0 (v1 + 901)];
}

uint64_t Then.__allocating_init(block:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

void sub_1D7E73860(UIImage_optional a1)
{
  isa = a1.value.super.isa;
  UIImageView.setImageIfNeeded(_:)(a1);
  sub_1D7E73B8C();
  if (isa)
  {
    [v1 setBackgroundColor_];
  }

  else
  {
    v2 = *&v1[OBJC_IVAR____TtC5TeaUI9ImageView__backgroundColor];

    [v1 setBackgroundColor_];
  }
}

Swift::Void __swiftcall UIImageView.setImageIfNeeded(_:)(UIImage_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v4 = [v1 image];
  if (v4)
  {
    v5 = v4;
    if (isa)
    {
      sub_1D7E0A1A8(0, &qword_1EDBB2F60);
      v6 = isa;
      v7 = sub_1D8191CC4();

      if (v7)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!isa)
  {
    return;
  }

  [v2 setImage_];
}

id sub_1D7E73ACC()
{
  if ([v0 delegate])
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for WindowScene();
  return objc_msgSendSuper2(&v2, sel_nextResponder);
}

uint64_t sub_1D7E73B54@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

uint64_t sub_1D7E73B8C()
{

  sub_1D818F544();
}

void sub_1D7E73C1C(void *a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ImageView();
  objc_msgSendSuper2(&v3, sel_setBackgroundColor_, a1);
  sub_1D7E73E08();
}

uint64_t sub_1D7E73C68(void (*a1)(uint64_t))
{
  v3 = *(v1 + 16);
  OUTLINED_FUNCTION_12_0();
  v9[2] = *(v4 + 80);
  OUTLINED_FUNCTION_12_0();
  v9[3] = *(v5 + 88);
  OUTLINED_FUNCTION_56_0();
  v6 = type metadata accessor for DebouncedSet.State();
  OUTLINED_FUNCTION_56_0();
  v7 = sub_1D8191654();
  sub_1D7E4ECC8(a1, v9, v3, v6, v7);
  return v9[5];
}

id sub_1D7E73D88()
{
  v0 = [objc_opt_self() sharedApplication];

  return v0;
}

uint64_t sub_1D7E73DC8@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  return result;
}

uint64_t sub_1D7E73E08()
{
  v1 = [v0 backgroundColor];
  *&v0[OBJC_IVAR____TtC5TeaUI9ImageView__backgroundColor] = v1;

  return MEMORY[0x1EEE66BB8]();
}

id sub_1D7E73E84()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ImageView();
  v1 = objc_msgSendSuper2(&v3, sel_backgroundColor);

  return v1;
}

uint64_t sub_1D7E73ECC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D7E32900(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_8();
  (*(v5 + 8))(a1);
  return a1;
}

Swift::Void __swiftcall BlueprintViewProvider.viewDidAppear()()
{
  OUTLINED_FUNCTION_12_53();
  (*(*(*(v2 + 136) + 8) + 24))(*(v0 + 96));
  OUTLINED_FUNCTION_16_46();
  sub_1D7E41148();
  v3 = v1;
  if (OUTLINED_FUNCTION_9_9())
  {
    sub_1D7E05450(v8, v9);
    OUTLINED_FUNCTION_27_0(v9);
    v4 = OUTLINED_FUNCTION_3_1();
    v5(v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    OUTLINED_FUNCTION_2_9();
    OUTLINED_FUNCTION_0_225();
    sub_1D7E4091C(v8, v6, v7);
  }
}

uint64_t sub_1D7E74104(uint64_t a1, unint64_t *a2)
{
  sub_1D7E09D14(0, a2);
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(a1);
  return a1;
}

Swift::Void __swiftcall BlueprintCollectionViewDelegate.viewDidAppear()()
{
  OUTLINED_FUNCTION_10_34();
  *(v0 + *(v1 + 304)) = 2;
  OUTLINED_FUNCTION_7_38();
  OUTLINED_FUNCTION_1_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong childViewControllers];
    sub_1D7E0A1A8(0, &qword_1EDBB31B0);
    OUTLINED_FUNCTION_117_1();
    v5 = sub_1D8191314();

    v6 = sub_1D7E36AB8(v5);
    if (!v6)
    {
LABEL_11:

      return;
    }

    v7 = v6;
    if (v6 >= 1)
    {
      v8 = 0;
      OUTLINED_FUNCTION_7_38();
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = OUTLINED_FUNCTION_54_1();
          v10 = MEMORY[0x1DA714420](v9);
        }

        else
        {
          v10 = *(v5 + 8 * v8 + 32);
        }

        v11 = v10;
        ViewControllerTransitionManager.state(viewController:)(v10);
        if (!v13)
        {
          ViewControllerTransitionManager.endTransition(viewController:)(v11);
        }

        ++v8;
      }

      while (v7 != v8);
      goto LABEL_11;
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_7_38();
    OUTLINED_FUNCTION_138_1();
    OUTLINED_FUNCTION_55_7();
    v12();
  }
}

double sub_1D7E74344()
{
  v1 = *(v0 + qword_1EDBB8890);
  if (v1)
  {
    return *(v1 + 88);
  }

  else
  {
    return 0.0;
  }
}

void sub_1D7E74368()
{
  v1 = v0;
  v14 = MastheadViewController.scrollView.getter();
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v19 = [v2 collectionViewLayout];
    sub_1D7E0A1A8(0, &qword_1EDBB3098);
    sub_1D7E0631C(0, &qword_1EDBB6740);
    if ((swift_dynamicCast() & 1) == 0)
    {

      v17 = 0;
      v15 = 0u;
      v16 = 0u;
      sub_1D805F144(&v15, &qword_1EDBAFE58, &qword_1EDBB6740, &protocol descriptor for MastheadDyamicAwareObserver, sub_1D7E0631C);
      return;
    }

    sub_1D7E05450(&v15, v20);
    sub_1D7E41C50(&v0[qword_1EDBB88C8], &v15);
    v3 = *(&v16 + 1);
    if (*(&v16 + 1))
    {
      v4 = v17;
      __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
      v5 = [v0 view];
      if (!v5)
      {
        __break(1u);
        return;
      }

      v6 = v5;
      v7 = [v5 traitCollection];

      v8 = (*(v4 + 48))(v7, v3, v4);
      __swift_destroy_boxed_opaque_existential_1Tm(&v15);
    }

    else
    {
      sub_1D805F144(&v15, &qword_1EDBB64D0, &unk_1EDBB64D8, &protocol descriptor for MiniMastheadViewProviderType, sub_1D7E0631C);
      v8 = 0.0;
    }

    v9 = qword_1EDBB8838;
    swift_beginAccess();
    v10 = 0.0;
    if (v1[v9] == 1)
    {
      sub_1D7E74344();
      v10 = v11;
    }

    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    MastheadViewController.layoutOptions.getter(&v15);
    sub_1D7E72850(&v15);
    (*(v13 + 16))(v12, v13, v8 + v10 + v18);

    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  else
  {
  }
}

id MastheadViewController.scrollView.getter()
{
  OUTLINED_FUNCTION_26_15();
  v1(&v6, *(v0 + 80));
  v2 = v6;
  if (v7 == 1)
  {
    OUTLINED_FUNCTION_7();
    swift_beginAccess();

    sub_1D818F154();

    if (v5)
    {
      OUTLINED_FUNCTION_35_13();
      return v5;
    }

    else
    {
      v3 = sub_1D805BC98();
      OUTLINED_FUNCTION_35_13();
      return v3;
    }
  }

  return v2;
}

uint64_t sub_1D7E74750(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_3_7();
  v6 = v2 + *(v5 + 120);
  result = swift_beginAccess();
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

void sub_1D7E747F8(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v20 = MastheadViewController.scrollView.getter();
  [v20 adjustedContentInset];
  v6 = v5;
  [v20 contentOffset];
  v8 = v7;
  if ((v4 & 1) == 0)
  {
    [v20 contentInset];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [v2 view];
    if (!v15)
    {
      __break(1u);
      return;
    }

    v16 = v15;
    [v15 safeAreaInsets];
    v18 = v17;

    [v20 setContentInset_];
  }

  if (v8 != -v6)
  {
    if ((a2 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_8:
    sub_1D805EAAC();
    goto LABEL_9;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  [v20 adjustedContentInset];
  [v20 setContentOffset:0 animated:{0.0, -v19}];
LABEL_9:
}

double CGRect.center.getter(double a1, double a2, double a3, double a4)
{
  MidX = CGRectGetMidX(*&a1);
  v6.origin.x = OUTLINED_FUNCTION_80();
  CGRectGetMidY(v6);
  return MidX;
}

void sub_1D7E74A04()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for PillButton();
  objc_msgSendSuper2(&v14, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 bounds];
  v9 = CGRectGetHeight(v15) * 0.5;
  v10 = [objc_opt_self() bezierPathWithRoundedRect:v2 cornerRadius:{v4, v6, v8, v9}];
  v11 = [v0 layer];
  objc_opt_self();
  v12 = OUTLINED_FUNCTION_6_34();
  v13 = [v10 CGPath];
  [v12 setPath_];
}

Swift::Void __swiftcall ImageView.layoutSubviews()()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ImageView();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  v1 = objc_opt_self();
  OUTLINED_FUNCTION_0_8();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  OUTLINED_FUNCTION_0_32();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1D7E74DC4;
  *(v3 + 24) = v2;
  v7[4] = sub_1D7E74D6C;
  v7[5] = v3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1D7E74D74;
  v7[3] = &block_descriptor_38;
  v4 = _Block_copy(v7);
  v5 = v0;

  [v1 performWithoutAnimation_];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_1D7E74CAC()
{
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t CommandExecutionSource.__deallocating_deinit()
{
  CommandExecutionSource.deinit();
  OUTLINED_FUNCTION_5_76();

  return swift_deallocClassInstance();
}

id sub_1D7E74DFC(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC5TeaUI9ImageView_imageView];
  [a1 bounds];

  return [v1 setFrame_];
}

uint64_t CommandExecutionSource.deinit()
{

  MEMORY[0x1DA715E30](v0 + 32);
  sub_1D7E166A0(v0 + 80);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);

  return v0;
}

Swift::Void __swiftcall BlueprintPrefetcher.prefetch(with:)(TeaUI::ScrollDirection with)
{
  v2 = v1;
  v3 = *v1;
  v4 = **&with.horizontal;
  v5 = *(*&with.horizontal + 1);
  v6 = v3;
  swift_beginAccess();
  v7 = v2[2];
  if (!v7)
  {
    return;
  }

  v8 = v7;
  [v8 bounds];
  if (CGRectGetWidth(v66) <= 0.0 || (OUTLINED_FUNCTION_4_70(), CGRectGetHeight(v67) <= 0.0))
  {
LABEL_19:

    return;
  }

  OUTLINED_FUNCTION_4_70();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if (v5 < 2 || ([v8 contentSize], v18 = v17, OUTLINED_FUNCTION_4_70(), v19 = CGRectGetHeight(v68) < v18, x = v10, y = v12, width = v14, height = v16, v19))
  {
    v69.origin.x = OUTLINED_FUNCTION_1_119();
    CGRectGetHeight(v69);
    v70.origin.x = OUTLINED_FUNCTION_1_119();
    v71 = CGRectOffset(v70, v24, v25);
    x = v71.origin.x;
    y = v71.origin.y;
    width = v71.size.width;
    height = v71.size.height;
  }

  v59 = v10;
  if (v4)
  {
    if (v4 == 1)
    {
      v26 = OUTLINED_FUNCTION_0_166();
    }

    else
    {
      v60 = height;
      [v8 contentSize];
      v28 = v27;
      OUTLINED_FUNCTION_4_70();
      if (CGRectGetWidth(v72) >= v28)
      {
        v10 = v12;
        v12 = v14;
        v29 = v16;
        v30 = v60;
        goto LABEL_15;
      }

      v26 = OUTLINED_FUNCTION_0_166();
      height = v60;
    }
  }

  else
  {
    v26 = -OUTLINED_FUNCTION_0_166();
  }

  v29 = v16;
  v73.origin.x = x;
  v73.origin.y = y;
  v73.size.width = width;
  v73.size.height = height;
  v74 = CGRectOffset(v73, v26, 0.0);
  x = v74.origin.x;
  y = v74.origin.y;
  width = v74.size.width;
  v30 = v74.size.height;
LABEL_15:
  v31 = (v2 + *(*v2 + 152));
  v75 = *v31;
  v57 = x;
  v58 = y;
  v32 = x;
  v33 = y;
  v56 = width;
  v34 = width;
  v60 = v30;
  v76 = CGRectIntersection(v75, *(&v30 - 3));
  v35 = v76.origin.y;
  v36 = v76.size.width;
  v37 = v76.size.height;
  v55 = v76.origin.x;
  v38 = CGRectGetWidth(v76);
  v77.origin.x = v59;
  v77.origin.y = v10;
  v77.size.width = v12;
  v77.size.height = v29;
  if (v38 >= CGRectGetWidth(v77) / 3.0)
  {
    v78.origin.x = v55;
    v78.origin.y = v35;
    v78.size.width = v36;
    v78.size.height = v37;
    v39 = CGRectGetHeight(v78);
    v79.origin.x = v59;
    v79.origin.y = v10;
    v79.size.width = v12;
    v79.size.height = v29;
    if (v39 >= CGRectGetHeight(v79) / 3.0)
    {
      goto LABEL_19;
    }
  }

  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v41 = *(AssociatedConformanceWitness + 56);
  v42 = swift_checkMetadataState();
  v43 = v57;
  v44 = v58;
  v45 = v56;
  v46 = v41(v42, AssociatedConformanceWitness, v57, v58, v56, v60);
  v47 = BlueprintLayoutProviderType.layoutBlueprint.getter(*(v6 + 80), *(v6 + 96));
  if (v46)
  {
    MEMORY[0x1EEE9AC00](v47);
    v54[2] = v8;
    v54[3] = v65;
    v54[4] = v2;
    sub_1D7EB01C4(sub_1D7EB0290, v54, v46);
  }

  else
  {
  }

  v31->origin.x = v43;
  v31->origin.y = v44;
  v48 = v60;
  v31->size.width = v45;
  v31->size.height = v48;
  v49 = OUTLINED_FUNCTION_3_96();
  v50 = OUTLINED_FUNCTION_3_96();
  v51 = swift_getAssociatedConformanceWitness();
  v52 = swift_getAssociatedConformanceWitness();
  v61 = v49;
  v62 = v50;
  v63 = v51;
  v64 = v52;
  v53 = type metadata accessor for BlueprintLayout();
  (*(*(v53 - 8) + 8))(v65, v53);
}

Swift::OpaquePointer_optional __swiftcall UICollectionView.indexPathsForItems(in:)(__C::CGRect in)
{
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  v30 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  v10 = [v1 collectionViewLayout];
  v11 = [v10 layoutAttributesForElementsInRect_];

  if (v11)
  {
    sub_1D7E0A1A8(0, &qword_1EDBB3020);
    v13 = sub_1D8191314();

    v31 = MEMORY[0x1E69E7CC0];
    v14 = sub_1D7E36AB8(v13);
    v15 = v14;
    v16 = 0;
    v17 = &selRef_setMenu_;
    v29 = v9;
    while (v15 != v16)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1DA714420](v16, v13);
      }

      else
      {
        if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v14 = *(v13 + 8 * v16 + 32);
      }

      v18 = v14;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if ([v14 v17[114]] || (objc_msgSend(v18, sel_frame), v20 <= 0.0) || v19 <= 0.0)
      {
      }

      else
      {
        sub_1D8192274();
        sub_1D81922B4();
        sub_1D81922C4();
        v14 = sub_1D8192284();
        v17 = &selRef_setMenu_;
        v9 = v29;
      }

      ++v16;
    }

    v21 = v31;
    v22 = sub_1D7E36AB8(v31);
    if (!v22)
    {

      v11 = MEMORY[0x1E69E7CC0];
      goto LABEL_24;
    }

    v23 = v22;
    v32 = MEMORY[0x1E69E7CC0];
    sub_1D7EB0144();
    if ((v23 & 0x8000000000000000) == 0)
    {
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x1DA714420](0, v21);
        }

        else
        {
          v24 = *(v21 + 32);
        }

        v25 = v24;
        v26 = [v24 indexPath];
        sub_1D818E924();

        if (*(v32 + 16) >= *(v32 + 24) >> 1)
        {
          sub_1D7EB0144();
        }

        v27 = OUTLINED_FUNCTION_2_67();
        v28(v27, v9, v30);
      }
    }

LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_24:
    v14 = v11;
  }

  result.value._rawValue = v14;
  result.is_nil = v12;
  return result;
}

uint64_t BlueprintLayoutProviderType.layoutBlueprint.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 48))();
  sub_1D818F154();
}

uint64_t sub_1D7E75710()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_3_98();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v5 = v4;
  *(v6 + 592) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_62();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_10_6();

    return v10();
  }
}

uint64_t BlueprintLayout.description.getter()
{
  sub_1D81921A4();

  OUTLINED_FUNCTION_1_152();
  sub_1D8191414();
  v0 = sub_1D81925B4();
  MEMORY[0x1DA713260](v0);

  MEMORY[0x1DA713260](0x6F7077656976202CLL, 0xEB000000003D7472);
  v1 = sub_1D81915A4();
  MEMORY[0x1DA713260](v1);

  MEMORY[0x1DA713260](125, 0xE100000000000000);
  return 0x6E6F69746365737BLL;
}

void *BlueprintBookmarkManager.prepareTransition(fromSize:toSize:)@<X0>(void *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v8 = *(*(*v5 + 88) + 56);
  v9 = OUTLINED_FUNCTION_2_105();
  v10 = v8(v9);
  v49[0] = 2;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(AssociatedConformanceWitness + 72);
  v13 = swift_checkMetadataState();
  v41 = v12(v49, v13, AssociatedConformanceWitness);

  v14 = OUTLINED_FUNCTION_2_105();
  v15 = v8(v14);
  v49[0] = 0;
  v16 = v12(v49, v13, AssociatedConformanceWitness);

  v17 = OUTLINED_FUNCTION_2_105();
  v18 = v8(v17);
  [v18 contentOffset];
  v20 = v19;
  v22 = v21;

  v23 = OUTLINED_FUNCTION_2_105();
  v24 = v8(v23);
  [v24 contentInset];
  v26 = v25;

  v27 = OUTLINED_FUNCTION_2_105();
  v28 = v8(v27);
  [v28 contentInset];
  v30 = v29;

  v31 = OUTLINED_FUNCTION_2_105();
  v32 = v8(v31);
  [v32 adjustedContentInset];
  v34 = v33;

  v35 = OUTLINED_FUNCTION_2_105();
  v36 = v8(v35);
  [v36 adjustedContentInset];
  v38 = v37;

  *__src = a2;
  *&__src[1] = a3;
  *&__src[2] = a4;
  *&__src[3] = a5;
  __src[4] = v41;
  __src[5] = v16;
  __src[6] = v20;
  __src[7] = v22;
  __src[8] = v26;
  __src[9] = 0;
  __src[10] = v30;
  __src[11] = 0;
  __src[12] = v34;
  __src[13] = 0;
  __src[14] = v38;
  __src[15] = 0;
  memcpy(__dst, __src, sizeof(__dst));
  nullsub_1(__dst);
  memcpy(v49, (v44 + 32), 0x80uLL);
  memcpy((v44 + 32), __dst, 0x80uLL);
  sub_1D7E76ED0(__src, v46);
  OUTLINED_FUNCTION_0_159();
  sub_1D7E76F2C(v49, v39);
  return memcpy(a1, __src, 0x80uLL);
}

uint64_t sub_1D7E75C14()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  v3 = v2;
  OUTLINED_FUNCTION_3_98();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v6 = v5;
  *(v3 + 5376) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_62();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1D7E75D3C()
{
  v1 = v0 + 2528;
  swift_getWitnessTable();
  v2 = sub_1D8191834();
  swift_getWitnessTable();
  if (v2 == sub_1D8191834())
  {
    v56 = (v0 + 16);
    v58 = v0 + 2528;
    __src = (v0 + 3744);
    v59 = *(v0 + 5272);
    v3 = *(v0 + 5256);
    v4 = *(v0 + 5216);
    sub_1D81926F4();
    sub_1D81921B4();
    v5 = (v3 + 32);
    v6 = (v4 + 32);
    v61 = (v4 + 8);
    for (i = (v3 + 8); ; (*i)(v14, v15))
    {
      v7 = *(v0 + 5280);
      v8 = *(v0 + 5272);
      sub_1D81921C4();
      if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
      {
        v20 = *(v0 + 5296);
        v49 = *(v0 + 5240);
        v50 = *(v0 + 5232);
        v47 = *(v0 + 5168);
        v52 = *(v0 + 5160);
        v21 = *(v0 + 5152);
        v22 = *(v0 + 5144);
        v48 = *(v0 + 5128);
        v44 = *(v0 + 5192);
        v45 = *(v0 + 5176);
        (*(*(v0 + 5344) + 8))();
        memcpy(__dst, __src, 0x235uLL);
        v23 = *(v21 + 120);
        v24 = *(v21 + 96);
        (*(v23 + 40))(v58, __dst, v24, v23);
        *(v0 + 5072) = v45;
        *(v0 + 5088) = v44;
        type metadata accessor for BlueprintLayoutTransition();
        v25 = v20;
        v46 = v20;
        v26 = *(v20 - 8);
        (*(v26 + 16))(v0 + 3136, v58, v25);
        memcpy(__dst, v56, sizeof(__dst));
        memcpy(v64, __src, 0x235uLL);
        v27 = *(*v22 + 152);
        swift_beginAccess();
        v28 = *(v22 + v27);
        v29 = swift_task_alloc();
        v29[2] = v47;
        v29[3] = v49;
        v29[4] = v24;
        v29[5] = v52;
        v29[6] = v50;
        v29[7] = v23;
        v29[8] = v48;
        v29[9] = v58;
        v29[10] = v56;
        v29[11] = __src;
        sub_1D7E6755C(v56, v0 + 1272);
        sub_1D7E222B8(__src, v0 + 4312);
        sub_1D8190DB4();
        v30 = sub_1D7E80474(sub_1D7EB8360, v29, v28);

        sub_1D7E7E8B8((v0 + 3136), __dst, v64, v30);
        sub_1D7E598FC(v56);
        (*(v26 + 8))(v58, v46);

        OUTLINED_FUNCTION_17_1();

        __asm { BRAA            X2, X16 }
      }

      v9 = *(v0 + 5280);
      v10 = *(v0 + 5224);
      v11 = *(v0 + 5208);
      v12 = *(v59 + 48);
      (*v5)(*(v0 + 5264), v9, *(v0 + 5248));
      (*v6)(v10, v9 + v12, v11);
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      v13 = sub_1D8191834();
      swift_getWitnessTable();
      if (v13 != sub_1D8191834())
      {
        break;
      }

      v14 = *(v0 + 5264);
      v15 = *(v0 + 5248);
      (*v61)(*(v0 + 5224), *(v0 + 5208));
    }

    v60 = *(v0 + 5352);
    v33 = *(v0 + 5344);
    v16 = *(v0 + 5296);
    v34 = *(v0 + 5264);
    v35 = *(v0 + 5248);
    v36 = *(v0 + 5224);
    __srca = *(v0 + 5208);
    v57 = *(v0 + 5336);
    v37 = BlueprintSection.identifier.getter();
    v51 = v38;
    v53 = v37;
    v39 = sub_1D8191834();
    v40 = sub_1D8191834();
    sub_1D7FE814C();
    swift_allocError();
    *v41 = v53;
    *(v41 + 8) = v51;
    *(v41 + 16) = v39;
    *(v41 + 24) = v40;
    *(v41 + 32) = 2;
    swift_willThrow();
    (*v61)(v36, __srca);
    (*i)(v34, v35);
    (*(v33 + 8))(v60, v57);
    v1 = v0 + 2528;
  }

  else
  {
    v16 = *(v0 + 5296);
    v17 = sub_1D8191834();
    v18 = sub_1D8191834();
    sub_1D7FE814C();
    swift_allocError();
    *v19 = v17;
    *(v19 + 8) = v18;
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    *(v19 + 32) = 1;
    swift_willThrow();
  }

  (*(*(v16 - 8) + 8))(v1, v16);
  OUTLINED_FUNCTION_16_34();

  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_17_1();

  __asm { BRAA            X1, X16 }
}

uint64_t UICollectionView.indexPaths(visibility:)(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_23();
  v62 = v8;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v56 - v11;
  v59 = *a1;
  [v2 bounds];
  v13 = UICollectionView.indexPathsForItems(in:)(v64);
  v14 = MEMORY[0x1E69E7CC0];
  if (!v13)
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v63 = MEMORY[0x1E69E7CC0];
  v15 = *(v13 + 16);
  if (v15)
  {
    v56[0] = v13;
    v56[1] = v6;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v18 = v13 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v60 = *(v16 + 56);
    v61 = v17;
    v57 = MEMORY[0x1E69E7CC0];
    do
    {
      v61(v12, v18, v4);
      v19 = [v2 collectionViewLayout];
      v20 = sub_1D818E8E4();
      v21 = [v19 layoutAttributesForItemAtIndexPath_];

      if (v21)
      {
        [v21 frame];
        v66 = CGRectIntegral(v65);
        x = v66.origin.x;
        y = v66.origin.y;
        [v2 bounds];
        v68 = CGRectIntegral(v67);
        v24 = v68.origin.x;
        v25 = v68.origin.y;
        switch(v59)
        {
          case 1:
            OUTLINED_FUNCTION_1_78();
            OUTLINED_FUNCTION_10_33();
            v26 = CGRectContainsRect(v72, v76);
            goto LABEL_17;
          case 2:
            v27 = OUTLINED_FUNCTION_3_62();
            v28(v27);
            if (v24 <= x && v25 <= y)
            {
              goto LABEL_10;
            }

            goto LABEL_18;
          case 3:
            v70.origin.x = OUTLINED_FUNCTION_1_78();
            MaxX = CGRectGetMaxX(v70);
            v71.origin.x = OUTLINED_FUNCTION_0_45();
            if (CGRectGetMaxX(v71) > MaxX)
            {

              goto LABEL_15;
            }

            v73.origin.x = OUTLINED_FUNCTION_1_78();
            MaxY = CGRectGetMaxY(v73);
            v74.origin.x = OUTLINED_FUNCTION_0_45();
            v36 = CGRectGetMaxY(v74);
            v37 = OUTLINED_FUNCTION_3_62();
            v38(v37);
            if (v36 <= MaxY)
            {
LABEL_10:
              MEMORY[0x1DA713500]();
              v29 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18);
              if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v29 >> 1)
              {
                OUTLINED_FUNCTION_2_10(v29);
                sub_1D81913B4();
              }

              sub_1D8191404();
              v57 = v63;
            }

            else
            {
LABEL_18:
            }

            break;
          default:
            OUTLINED_FUNCTION_1_78();
            OUTLINED_FUNCTION_10_33();
            v26 = CGRectIntersectsRect(v69, v75);
LABEL_17:
            v32 = v26;
            v33 = OUTLINED_FUNCTION_3_62();
            v34(v33);
            if (!v32)
            {
              goto LABEL_18;
            }

            goto LABEL_10;
        }
      }

      else
      {
LABEL_15:
        v30 = OUTLINED_FUNCTION_3_62();
        v31(v30);
      }

      v18 += v60;
      --v15;
    }

    while (v15);

    v14 = MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  v39 = v2;
  v40 = sub_1D8190DB4();
  v63 = sub_1D7E769C8(v40);
  sub_1D7E76B80(&v63, v39);

  v41 = v63;
  v42 = sub_1D7E36AB8(v63);
  if (v42)
  {
    v43 = v42;
    v63 = v14;
    sub_1D7EB0144();
    if (v43 < 0)
    {
      __break(1u);

      __break(1u);
      JUMPOUT(0x1D7E76920);
    }

    v61 = v43;
    v44 = v63;
    v45 = v41 & 0xC000000000000001;
    v46 = v4;
    v47 = v41;
    do
    {
      if (v45)
      {
        v48 = MEMORY[0x1DA714420](0, v41);
      }

      else
      {
        v48 = *(v41 + 32);
      }

      v49 = v48;
      v50 = [v48 indexPath];
      v51 = v62;
      sub_1D818E924();

      v63 = v44;
      v52 = *(v44 + 24);
      if (*(v44 + 16) >= v52 >> 1)
      {
        OUTLINED_FUNCTION_2_10(v52);
        sub_1D7EB0144();
        v44 = v63;
      }

      v53 = OUTLINED_FUNCTION_2_67();
      v54(v53, v51, v46);
      v41 = v47;
    }

    while (v61);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v44;
}

uint64_t sub_1D7E76930@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = BlueprintLayout.endIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D7E7695C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = BlueprintLayout.startIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D7E769F4(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (a1 >> 62)
  {
    v8 = sub_1D81920A4();
    if (v8)
    {
      v9 = v8;
      v4 = a2(v8, 0);
      a3(v4 + 32, v9, a1);
      v11 = v10;

      if (v11 == v9)
      {
        return v4;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

Swift::Int sub_1D7E76A98(Swift::Int *a1)
{
  result = BlueprintLayout.index(after:)(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_1D7E76AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  v6 = BlueprintLayout.startIndex.getter(a1);
  result = (*(v5 + 8))(v2, a1);
  *(a2 + 608) = v6;
  return result;
}

void sub_1D7E76B80(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1D7E76C38(v3);
    *a1 = v3;
  }

  v6 = *(v3 + 16);
  v8[0] = v3 + 32;
  v8[1] = v6;
  v7 = v4;
  sub_1D7E76CC4(v8, v7);
  sub_1D8192284();
}

void (*sub_1D7E76C50(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1D7E76DF4(v6, *a2, a3);
  return sub_1D7E46A38;
}

void sub_1D7E76CC4(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2;
  v6 = sub_1D81925A4();
  if (v6 < v4)
  {
    v7 = v6;
    v8 = sub_1D7FE7460(v4 / 2, &qword_1EDBB3020);
    v10[0] = v9;
    v10[1] = (v4 / 2);
    v5 = v5;
    sub_1D7FE761C(v10, v11, a1, v7, v5);
    if (v2)
    {
      if (v4 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v4 < -1)
    {
LABEL_13:
      __break(1u);
      return;
    }

    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v4)
  {
    sub_1D7FE74E8(0, v4, 1, a1, v5);
  }

  else
  {
  }
}

void (*sub_1D7E76DF4(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v5 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v5;
  v6 = *(a3 + 32);
  *v5 = *(a3 + 16);
  v5[1] = v6;
  v7 = type metadata accessor for BlueprintLayoutSection();
  *(v5 + 4) = v7;
  v8 = *(v7 - 8);
  *(v5 + 5) = v8;
  *(v5 + 6) = __swift_coroFrameAllocStub(*(v8 + 64));
  v9 = OUTLINED_FUNCTION_14_0();
  BlueprintLayout.subscript.getter(v9, v10);
  return sub_1D7E46A80;
}

uint64_t sub_1D7E76F2C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t BlueprintLayout.subscript.getter(uint64_t a1, uint64_t a2)
{
  v4 = BlueprintLayout.startIndex.getter(a2);
  result = BlueprintLayout.endIndex.getter(a2);
  if (result < v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 > a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (result > a1)
  {
    OUTLINED_FUNCTION_1_152();
    return sub_1D81914C4();
  }

LABEL_7:
  __break(1u);
  return result;
}

{
  v2 = OUTLINED_FUNCTION_6_86(a1, a2);
  OUTLINED_FUNCTION_2();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  sub_1D818E974();
  sub_1D81914C4();
  v8 = sub_1D818E964();
  BlueprintLayoutSection.subscript.getter(v8, v2);
  return (*(v4 + 8))(v7, v2);
}

void sub_1D7E7701C()
{
  if (!qword_1EDBB7DC0)
  {
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB7DC0);
    }
  }
}

uint64_t sub_1D7E770AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

void BlueprintLayoutCollectionFactory.makeLayoutCollection(for:with:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v514 = v6;
  v516 = v7;
  v433 = v8;
  v9 = *v1;
  v10 = *(*v1 + 80);
  v512 = *(v10 - 8);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_94();
  v434 = v12;
  v13 = v9[11];
  v14 = v9[13];
  v15 = *(v14 + 8);
  type metadata accessor for BlueprintLayoutItem();
  OUTLINED_FUNCTION_9();
  v510 = v16;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_94();
  v502 = v18;
  v503 = v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v486 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v505 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_23();
  v485 = v22;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v23);
  v492 = &v433 - v24;
  v494 = v1;
  v507 = v9[12];
  OUTLINED_FUNCTION_27_22();
  v25 = type metadata accessor for BlueprintLayoutSection();
  WitnessTable = swift_getWitnessTable();
  v439 = sub_1D81923F4();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_94();
  v438 = v28;
  v440 = WitnessTable;
  v490 = sub_1D81923E4();
  OUTLINED_FUNCTION_9();
  *&v504 = v29;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_94();
  v493 = v31;
  sub_1D7E79920(0, qword_1EDBB5AF8, type metadata accessor for CollectionViewSupplementaryKind.Source);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_94();
  v462 = v33;
  sub_1D7E79920(0, &qword_1EDBBC690, MEMORY[0x1E6969C28]);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_94();
  v461 = v35;
  v509 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  *&v501 = v36;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_23();
  v460 = v38;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v39);
  v513 = &v433 - v40;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v41);
  v497 = &v433 - v42;
  v43 = *(v25 - 8);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_94();
  v454 = v45;
  v452 = v25;
  v446 = swift_getTupleTypeMetadata2();
  v445 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v500 = *&v46;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_23();
  v444 = v48;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v49);
  v443 = (&v433 - v50);
  memcpy(v531, v514, 0x235uLL);
  v51 = swift_allocObject();
  v437 = type metadata accessor for BlueprintLayoutCollectionSectionCursor();
  swift_allocObject();
  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_18_34();
  v68 = sub_1D7E79998(v60, v61, v62, v63, v64, v65, v66, v67, v52, v53, v54, v55, v56, v57, v58, v59, 0, 0);
  v514 = v51;
  v51[2] = v68;
  v471 = v51 + 2;
  v472 = v68;
  v69 = swift_allocObject();
  v70 = OUTLINED_FUNCTION_32_16();
  memcpy(v70, v531, 0x235uLL);
  v528[0] = *(v516 + 565);
  sub_1D7E222B8(v531, v529);
  v511 = v69;
  v71 = OUTLINED_FUNCTION_32_16();
  BlueprintLayoutCollection.init(layoutOptions:layoutDirection:)(v71, v528, v72);
  v508 = v10;
  OUTLINED_FUNCTION_27_22();
  v73 = type metadata accessor for BlueprintLayout();
  v74 = swift_getWitnessTable();
  MEMORY[0x1DA7133A0](v529, v73, v74);
  sub_1D81923F4();
  sub_1D81923C4();
  v447 = sub_1D81923E4();
  v441 = (v43 + 32);
  v442 = (*&v500 + 32);
  v449 = (v512 + 16);
  v496 = 0x80000001D81C5910;
  v484 = (v505 + 32);
  v515 = v13;
  v480 = v13 - 8;
  v481 = (v510 + 32);
  v482 = v15;
  v478 = v15 + 24;
  v479 = v14 + 16;
  v477 = v14 + 32;
  v476 = v14 + 40;
  v475 = v14 + 48;
  v506 = v14;
  v474 = v14 + 24;
  v488 = (v501 + 8);
  v489 = (v501 + 16);
  v473 = (v510 + 8);
  v450 = &v531[88];
  v453 = &v531[56];
  v465 = &v531[8];
  v435 = (v43 + 8);
  v436 = (v504 + 8);
  v469 = 0x80000001D81C5940;
LABEL_2:
  sub_1D81923D4();
  v75 = v443;
  (*v442)();
  v76 = v446;
  if (__swift_getEnumTagSinglePayload(v75, 1, v446) == 1)
  {
    OUTLINED_FUNCTION_3_0();
    v427 = OUTLINED_FUNCTION_32_16();
    v428(v427);
    v273 = *(v494 + 16);
    if (v273)
    {
      v429 = v511;
      swift_beginAccess();
      memcpy(v528, (v429 + 16), sizeof(v528));
      memcpy(v527, (v429 + 16), sizeof(v527));
      sub_1D7E6755C(v528, v530);
      sub_1D80638AC(v527, v530);
      memcpy(v529, v527, 0x4E8uLL);
      sub_1D7E598FC(v529);

      memcpy(v433, v530, 0x4E8uLL);
    }

    else
    {
LABEL_101:
      OUTLINED_FUNCTION_31_16();
      swift_beginAccess();
      v430 = OUTLINED_FUNCTION_32_16();
      memcpy(v430, (v273 + 16), 0x4E8uLL);
      memcpy(v433, (v273 + 16), 0x4E8uLL);
      v431 = OUTLINED_FUNCTION_32_16();
      sub_1D7E6755C(v431, v529);
    }
  }

  else
  {
    v512 = *v75;
    v77 = v75 + *(v76 + 48);
    v78 = v454;
    v79 = v452;
    (*v441)(v454, v77, v452);
    v80 = swift_allocObject();
    *(v80 + 32) = 0u;
    v510 = v80;
    *(v80 + 16) = 0u;
    v81 = v80 + 16;
    v82 = v78 + *(v79 + 52);
    v83 = *(v82 + 8);
    *v528 = *v82;
    v528[8] = v83;
    LOBYTE(v524) = *(v516 + 565);
    memcpy(v529, v531, 0x235uLL);
    sub_1D7E79C5C(*v528, v83);
    BlueprintLayoutSectionFramePosition.solver(for:layoutOptions:)(v529, v527);
    sub_1D7E7A4D8(*v528, v528[8]);
    v84 = v508;
    *(&v529[1] + 1) = v508;
    *&v529[2] = v507;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v529);
    v448 = *v449;
    v448(boxed_opaque_existential_0, v78, v84);
    v86 = sub_1D7E7A504(v529);
    __swift_destroy_boxed_opaque_existential_1Tm(v529);
    v505 = v86[2];
    v87 = v472;
    swift_retain_n();
    v470 = 1;
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_56();
    v88 = 0;
    v89 = 0;
    v495 = v86;
    v491 = (v86 + 4);
    v498 = v87;
    OUTLINED_FUNCTION_40_12();
    v463 = MEMORY[0x1E69E7CC0];
LABEL_4:
    *&v468 = v92;
    *(&v468 + 1) = v93;
    *&v467 = v90;
    *(&v467 + 1) = v91;
    v94 = v89;
    v95 = v492;
    while (1)
    {
      v96 = 0uLL;
      v89 = v505;
      v97 = 0uLL;
      v98 = 0uLL;
      if (v94 != v505)
      {
        if (v94 >= v495[2])
        {
          __break(1u);
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

        v89 = v94 + 1;
        v99 = OUTLINED_FUNCTION_46_13(v94);
        sub_1D7E25380(v99, &v528[8]);
        v96 = *v528;
        v97 = *&v528[16];
        v98 = *&v528[32];
      }

      OUTLINED_FUNCTION_45_13(v98, v97, v96);
      if (!v101)
      {
        break;
      }

      v504 = v100;
      sub_1D7E05450((v529 + 8), v528);
      v81 = *&v528[24];
      v102 = OUTLINED_FUNCTION_33_15();
      __swift_project_boxed_opaque_existential_1(v102, v81);
      v103 = OUTLINED_FUNCTION_8_9();
      v104(v103);
      v105 = "UICollectionElementKindSectionFooter";
      if (!v524)
      {
        v105 = "UICollectionElementKindSectionHeader";
      }

      if (((v105 - 32) | 0x8000000000000000) == v496)
      {

LABEL_15:
        OUTLINED_FUNCTION_5_66();
        v106 = OUTLINED_FUNCTION_8_9();
        v107(v106);
        OUTLINED_FUNCTION_24_23();
        LOBYTE(v519) = 0;
        v108 = *&v528[24];
        v109 = OUTLINED_FUNCTION_28_18();
        __swift_project_boxed_opaque_existential_1(v109, v108);
        OUTLINED_FUNCTION_39_15();
        v110(v108);
        (v86[1])(&v519, v498, v472, v498, v81, v86);
        OUTLINED_FUNCTION_9_0();
        v111 = *&v528[24];
        v112 = OUTLINED_FUNCTION_28_18();
        __swift_project_boxed_opaque_existential_1(v112, v111);
        v113 = OUTLINED_FUNCTION_6_1();
        v114(v113);
        OUTLINED_FUNCTION_8_0();
        sub_1D7E7C82C(v115, v116);
        OUTLINED_FUNCTION_9_0();
        __swift_destroy_boxed_opaque_existential_1Tm(&v524);
        v117 = *&v528[24];
        v118 = OUTLINED_FUNCTION_33_15();
        __swift_project_boxed_opaque_existential_1(v118, v117);
        v526 = v117;
        OUTLINED_FUNCTION_51_9(v86[1]);
        OUTLINED_FUNCTION_3_0();
        (*(v119 + 16))();
        v120 = OUTLINED_FUNCTION_36_13();
        sub_1D7EB39AC(v120, v121);
        __swift_destroy_boxed_opaque_existential_1Tm(&v524);
        *&v501 = v519;
        v122 = v520;
        v123 = *&v528[24];
        v124 = OUTLINED_FUNCTION_33_15();
        __swift_project_boxed_opaque_existential_1(v124, v123);
        v526 = v123;
        OUTLINED_FUNCTION_51_9(v86[1]);
        OUTLINED_FUNCTION_3_0();
        (*(v125 + 16))();
        v126 = OUTLINED_FUNCTION_36_13();
        sub_1D7EB3AD0(v126, v127);
        __swift_destroy_boxed_opaque_existential_1Tm(&v524);
        v128 = v519;
        v129 = OUTLINED_FUNCTION_2_119();
        v133 = OUTLINED_FUNCTION_13_36(v129, v130, v131, v132);
        v135 = v134;
        v137 = v136;
        v139 = v138;
        v140 = v510;
        *(v510 + 16) = v133;
        v140[3] = v134;
        *(v140 + 4) = v136;
        *(v140 + 5) = v138;
        v141 = OUTLINED_FUNCTION_8_0();
        if ((v470 & 1) == 0)
        {
          v141 = OUTLINED_FUNCTION_13_36(*&v467, *(&v467 + 1), *&v468, *(&v468 + 1));
        }

        v500 = v133;
        v499 = v135;
        v483 = v137;
        v466 = v139;
        *&v467 = v144;
        *&v468 = v142;
        *(&v468 + 1) = v141;
        *(&v467 + 1) = v143;
        if (v122 == 2 || v122 == 3 && !v501)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1D7EE5724();
            v463 = v197;
          }

          v145 = *(v463 + 16);
          if (v145 >= *(v463 + 24) >> 1)
          {
            sub_1D7EE5724();
            v463 = v198;
          }

          v146 = v463;
          *(v463 + 16) = v145 + 1;
          v147 = (v146 + 32 * v145);
          v147[4] = v2;
          v147[5] = v3;
          v147[6] = v4;
          v147[7] = v5;
        }

        OUTLINED_FUNCTION_5_66();
        OUTLINED_FUNCTION_8_0();
        v148 = OUTLINED_FUNCTION_8_9();
        v149(v148);
        OUTLINED_FUNCTION_44_10();
        v150 = *&v528[24];
        v151 = OUTLINED_FUNCTION_33_15();
        __swift_project_boxed_opaque_existential_1(v151, v150);
        v152 = OUTLINED_FUNCTION_8_9();
        v153(v152);
        OUTLINED_FUNCTION_42_13();
        type metadata accessor for BlueprintLayoutCollectionLayoutAttributes();
        v154 = v504;
        v155 = v497;
        v156 = v512;
        MEMORY[0x1DA710B60](v504, v512);
        v157 = OUTLINED_FUNCTION_19_29();
        v86 = sub_1D7EB3C70(v157, v158, v155, &selRef_layoutAttributesForSupplementaryViewOfKind_withIndexPath_);
        v159 = [v86 indexPath];
        sub_1D818E924();

        v160 = OUTLINED_FUNCTION_15_35();
        __swift_storeEnumTagSinglePayload(v160, v161, v162, v509);
        v163 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_compositionalIndexPath;
        OUTLINED_FUNCTION_12_41();
        v164 = OUTLINED_FUNCTION_10_50();
        sub_1D7EB3D28(v164, v165, &qword_1EDBBC690, v166);
        swift_endAccess();
        *v462 = v504;
        type metadata accessor for CollectionViewSupplementaryKind.Source();
        OUTLINED_FUNCTION_47_13();
        v167 = OUTLINED_FUNCTION_15_35();
        __swift_storeEnumTagSinglePayload(v167, v168, v169, v163);
        OUTLINED_FUNCTION_12_41();
        v170 = OUTLINED_FUNCTION_11_42();
        sub_1D7EB3D28(v170, v171, qword_1EDBB5AF8, v172);
        swift_endAccess();
        v173 = *&v528[24];
        v174 = OUTLINED_FUNCTION_28_18();
        __swift_project_boxed_opaque_existential_1(v174, v173);
        v175 = OUTLINED_FUNCTION_7_60();
        v176(v175);
        v177 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_layoutData;
        OUTLINED_FUNCTION_15_2();
        sub_1D7E5C8DC(&v524, v86 + v177);
        swift_endAccess();
        OUTLINED_FUNCTION_49_9(v86, sel_setFrame_);
        [v86 setHidden_];
        v178 = v86 + OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_pinTrait;
        OUTLINED_FUNCTION_56();
        *v178 = v501;
        v178[8] = v122;
        v179 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandTrait;
        OUTLINED_FUNCTION_56();
        *(v86 + v179) = v128;
        LOBYTE(v519) = v128;
        v180 = OUTLINED_FUNCTION_37_13();
        OUTLINED_FUNCTION_48_10(v180, v154, v181, v156, v182);
        LOBYTE(v179) = v524;
        v183 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandEdge;
        OUTLINED_FUNCTION_56();
        *(v86 + v183) = v179;
        v184 = *&v528[32];
        __swift_project_boxed_opaque_existential_1(v528, *&v528[24]);
        v185 = OUTLINED_FUNCTION_7_60();
        v186(v185, v184);
        if (v525 == 1)
        {
          if (v122 >= 3 && v501)
          {
            v187 = v154 + 2000;
            if (__OFADD__(v154, 2000))
            {
              goto LABEL_109;
            }
          }

          else
          {
            v187 = v154 + 4000;
            if (__OFADD__(v154, 4000))
            {
              goto LABEL_108;
            }
          }
        }

        else
        {
          v187 = v524;
        }

        [v86 setZIndex_];

        v188 = *&v528[32];
        OUTLINED_FUNCTION_52_5(v528);
        v189 = OUTLINED_FUNCTION_6_1();
        v190(v189, v188);
        OUTLINED_FUNCTION_42_13();
        OUTLINED_FUNCTION_31_16();
        OUTLINED_FUNCTION_12_41();
        OUTLINED_FUNCTION_34_16();
        swift_endAccess();

        v191 = *&v527[32];
        OUTLINED_FUNCTION_52_5(v527);
        v192 = OUTLINED_FUNCTION_8_49();
        v193(v192, v191);
        v81 = v526;
        __swift_project_boxed_opaque_existential_1(&v524, v526);
        LOBYTE(v521) = 0;
        v519 = v501;
        v520 = v122;
        OUTLINED_FUNCTION_43_12();
        v194 = OUTLINED_FUNCTION_8_0();
        v196 = v195(v194);

        *v471 = v196;

        __swift_destroy_boxed_opaque_existential_1Tm(&v524);
        __swift_destroy_boxed_opaque_existential_1Tm(v528);
        v470 = 0;
        v88 = 1;
        v498 = v196;
        v90 = *(&v468 + 1);
        v91 = v468;
        v92 = *(&v467 + 1);
        v93 = v467;
        goto LABEL_4;
      }

      OUTLINED_FUNCTION_19_29();
      v81 = sub_1D8192634();

      if (v81)
      {
        goto LABEL_15;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v528);
      v94 = v89;
    }

    if (v88)
    {
      OUTLINED_FUNCTION_5_66();
      v199 = OUTLINED_FUNCTION_8_9();
      v200(v199);
      v81 = *(&v529[1] + 1);
      v86 = *&v529[2];
      __swift_project_boxed_opaque_existential_1(v529, *(&v529[1] + 1));
      v528[0] = 0;
      OUTLINED_FUNCTION_40_12();
      if ((v470 & 1) == 0)
      {
        v202.n128_u64[0] = *(&v467 + 1);
        v201.n128_u64[0] = v467;
        v204.n128_u64[0] = *(&v468 + 1);
        v203.n128_u64[0] = v468;
      }

      v205 = (v86[3])(v528, v498, v472, v81, v86, v201, v202, v203, v204);

      *v471 = v205;

      __swift_destroy_boxed_opaque_existential_1Tm(v529);
    }

    else
    {
      v205 = v498;
    }

    OUTLINED_FUNCTION_5_66();
    v206 = v452;
    swift_getWitnessTable();
    v207 = sub_1D8191834();
    (v86[2])(v207, v81, v86);
    v208 = swift_allocObject();
    v209 = v495[2];
    *&v504 = v208;
    *(v208 + 16) = v209;
    v210 = (v208 + 16);

    MEMORY[0x1DA7133A0](v206, v440);
    sub_1D81923C4();
    v483 = v210;
    OUTLINED_FUNCTION_56();
    v211 = v205;
    v451 = v209;
    v498 = v205;
    while (1)
    {
      v212 = v205;
      v213 = v485;
      sub_1D81923D4();
      (*v484)(v95, v213, v486);
      v214 = TupleTypeMetadata2;
      if (__swift_getEnumTagSinglePayload(v95, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      *&v501 = v209;
      v215 = *v95;
      v216 = v502;
      (*v481)(v502, &v95[*(v214 + 48)], v503);
      v217 = v515;
      *(&v529[1] + 1) = v515;
      v218 = v506;
      *&v529[2] = v506;
      v219 = __swift_allocate_boxed_opaque_existential_0(v529);
      (*(*(v217 - 8) + 16))(v219, v216, v217);
      *&v220 = COERCE_DOUBLE(sub_1D7E7A504(v529));
      v500 = *&v220;
      __swift_destroy_boxed_opaque_existential_1Tm(v529);
      v499 = *&v211;
      v221 = v513;
      v222 = v215;
      v223 = v512;
      MEMORY[0x1DA710B60](v222);
      LOBYTE(v529[0]) = 0;
      v432 = v221;
      v224 = v514;
      v225 = v212;
      v226 = v510;
      sub_1D7E7AD7C(v529, v220, v527, v514, v212, v516, v510, v504, v223, v432, v511);
      v227 = *&v527[24];
      v228 = *&v527[32];
      __swift_project_boxed_opaque_existential_1(v527, *&v527[24]);
      v229 = v218;
      v230 = *(v218 + 16);
      v231 = v502;
      v232 = v515;
      v230(v515, v229);
      (*(v228 + 24))(v224[2], v225, v227, v228);
      OUTLINED_FUNCTION_9_0();
      v233 = v231;
      (*(v482 + 24))(v232);
      OUTLINED_FUNCTION_8_0();
      sub_1D7E7C82C(v234, v235);
      OUTLINED_FUNCTION_9_0();
      __swift_project_boxed_opaque_existential_1(v527, *&v527[24]);
      v236 = OUTLINED_FUNCTION_8_0();
      v238 = v237(v236);

      v514[2] = v238;

      v239 = OUTLINED_FUNCTION_2_119();
      *(v226 + 16) = OUTLINED_FUNCTION_13_36(v239, v240, v241, v242);
      *(v226 + 24) = v243;
      *(v226 + 32) = v244;
      *(v226 + 40) = v245;
      v246 = *&v527[24];
      v247 = *&v527[32];
      __swift_project_boxed_opaque_existential_1(v527, *&v527[24]);
      v248 = OUTLINED_FUNCTION_8_0();
      v249(v246, v247, v248);
      OUTLINED_FUNCTION_9_0();
      type metadata accessor for BlueprintLayoutCollectionLayoutAttributes();
      v250 = v497;
      (*v489)(v497, v513, v509);
      v251 = sub_1D7E7CE2C(v250);
      v252 = OUTLINED_FUNCTION_8_0();
      [v253 v254];
      [v251 setHidden_];
      [v251 setZIndex_];
      v255 = OUTLINED_FUNCTION_41_12();
      LOBYTE(v220) = v256(v255);
      v257 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isPlugin;
      OUTLINED_FUNCTION_56();
      *(v251 + v257) = v220 & 1;
      v258 = v501;
      v259 = OUTLINED_FUNCTION_41_12();
      v261 = v260(v259);
      OUTLINED_FUNCTION_50_9(v261, v262, OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_resizingIdentifier);
      v263 = OUTLINED_FUNCTION_41_12();
      v265 = v264(v263);
      OUTLINED_FUNCTION_50_9(v265, v266, OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_resizingGroupIdentifier);
      v267 = OUTLINED_FUNCTION_41_12();
      v268(v267);
      v269 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_layoutData;
      OUTLINED_FUNCTION_15_2();
      sub_1D7E5C8DC(v529, v251 + v269);
      swift_endAccess();
      v270 = v511;
      OUTLINED_FUNCTION_15_2();
      BlueprintLayoutCollection.add(layoutAttributes:)(v251);
      swift_endAccess();
      LOBYTE(v529[0]) = 1;
      v205 = v498;
      v271 = v513;
      v272 = *&v500;
      sub_1D7E7AD7C(v529, *&v500, v527, v514, v498, v516, v510, v504, v512, v513, v270);

      (*v488)(v271, v509);
      (*v473)(v233, v503);
      v273 = *(v272 + 16);

      v274 = __OFADD__(v258, v273);
      v209 = v258 + v273;
      if (v274)
      {
        __break(1u);
        goto LABEL_101;
      }

      *v483 = v209;
      v211 = v238;
      v95 = v492;
    }

    (*v436)(v493, v490);
    v275 = *(v510 + 16);
    v276 = *(v510 + 24);
    v532.origin.x = OUTLINED_FUNCTION_2_119();
    MinX = CGRectGetMinX(v532);
    v533.origin.x = OUTLINED_FUNCTION_2_119();
    MaxY = CGRectGetMaxY(v533);

    swift_allocObject();
    OUTLINED_FUNCTION_40_12();
    OUTLINED_FUNCTION_18_34();
    v500 = COERCE_DOUBLE(sub_1D7E79998(MinX, MaxY, v287, v288, v289, v290, v291, v292, v279, v280, v281, v282, v283, v284, v285, v286, 0, 0));
    *v471 = v500;

    *&v293 = COERCE_DOUBLE();
    v464 = 0;
    v294 = 0;
    v499 = *&v293;
    v295 = v469;
    while (2)
    {
      for (i = v294; ; i = v294)
      {
        v297 = 0uLL;
        v294 = v505;
        v298 = 0uLL;
        v299 = 0uLL;
        if (i != v505)
        {
          if (i >= v495[2])
          {
            goto LABEL_103;
          }

          v294 = i + 1;
          v300 = OUTLINED_FUNCTION_46_13(i);
          sub_1D7E25380(v300, &v528[8]);
          v297 = *v528;
          v298 = *&v528[16];
          v299 = *&v528[32];
        }

        OUTLINED_FUNCTION_45_13(v299, v298, v297);
        if (!v302)
        {

          OUTLINED_FUNCTION_5_66();
          OUTLINED_FUNCTION_18_34();
          v388 = v472;
          v389 = OUTLINED_FUNCTION_2_119();
          v391 = v390(v389);
          v392 = v510;
          *(v510 + 16) = v391;
          v392[3] = v393;
          v392[4] = v394;
          v392[5] = v395;
          OUTLINED_FUNCTION_5_66();
          v396 = OUTLINED_FUNCTION_17_31();
          *&v501 = v397(v396);
          *v471 = v501;

          v4 = *(v388 + 16);
          v5 = *(v388 + 24);
          v534.origin.x = OUTLINED_FUNCTION_17_31();
          v398 = CGRectGetWidth(v534) - *(v388 + 16);
          if (v398 < 0.0)
          {
            v2 = 0.0;
          }

          else
          {
            v2 = v398;
          }

          v535.origin.x = OUTLINED_FUNCTION_17_31();
          Height = CGRectGetHeight(v535);
          v400 = *(v388 + 24);
          v401 = Height - v400;
          if (Height - v400 < 0.0)
          {
            v3 = 0.0;
          }

          else
          {
            v3 = Height - v400;
          }

          v536.origin.x = OUTLINED_FUNCTION_38_13();
          if (!CGRectIsEmpty(v536))
          {
            v448(v434, v454, v508);
            sub_1D7E0631C(0, &qword_1EDBB49D8);
            if (swift_dynamicCast())
            {
              sub_1D7E05450(v529, &v524);
              OUTLINED_FUNCTION_24_23();
              v402 = OUTLINED_FUNCTION_8_9();
              v404 = v403(v402);
              if (v404)
              {
                v521 = v404;
                v522 = 0;
                v523 = 0;
                v405 = fabs(v401);
                if (v401 < 0.0)
                {
                  v405 = 0.0;
                }

                LODWORD(v505) = *&v405 == 0;
                while (1)
                {
                  sub_1D7EB7C3C(v528);
                  v529[2] = *&v528[32];
                  v529[0] = *v528;
                  v529[1] = *&v528[16];
                  if (!*&v528[32])
                  {
                    break;
                  }

                  v406 = *&v529[0];
                  sub_1D7E05450((v529 + 8), v528);
                  __swift_project_boxed_opaque_existential_1(v528, *&v528[24]);
                  swift_getDynamicType();
                  v407 = static BlueprintLayoutSectionDecorationItemType.viewIdentifier.getter();
                  v409 = v408;
                  type metadata accessor for BlueprintLayoutCollectionLayoutAttributes();
                  sub_1D8190DB4();
                  v410 = v497;
                  MEMORY[0x1DA710B60](v406, v512);
                  v411 = sub_1D7EB3C70(v407, v409, v410, &selRef_layoutAttributesForDecorationViewOfKind_withIndexPath_);
                  OUTLINED_FUNCTION_23_19();
                  v412 = OUTLINED_FUNCTION_30_1();
                  v413(v412);
                  v414 = v519;
                  v415 = v520;
                  v416 = &v411[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_pinTrait];
                  OUTLINED_FUNCTION_56();
                  *v416 = v414;
                  v416[8] = v415;
                  OUTLINED_FUNCTION_23_19();
                  v417 = OUTLINED_FUNCTION_30_1();
                  v418(v417);
                  if (v520 == 1)
                  {
                    OUTLINED_FUNCTION_23_19();
                    v419 = OUTLINED_FUNCTION_30_1();
                    v420(v419);
                    if (v518 >= 3u && v517)
                    {
                      v421 = -100 - v406;
                      if (__OFSUB__(-100, v406))
                      {
                        goto LABEL_106;
                      }
                    }

                    else
                    {
                      v421 = 3000 - v406;
                      if (__OFSUB__(3000, v406))
                      {
                        goto LABEL_105;
                      }
                    }
                  }

                  else
                  {
                    v421 = v519;
                  }

                  [v411 setZIndex_];
                  v537.origin.x = OUTLINED_FUNCTION_38_13();
                  Width = CGRectGetWidth(v537);
                  v423 = v465;
                  if (v531[1])
                  {
                    v423 = v453;
                    if (v531[1] != 1)
                    {
                      v423 = v450;
                    }
                  }

                  if (Width > *v423)
                  {
                    v424 = Width;
                  }

                  else
                  {
                    v424 = *v423;
                  }

                  v425 = v411;
                  [v425 setFrame_];
                  [v425 setHidden_];

                  sub_1D7E25380(v528, &v519);
                  v426 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_model;
                  OUTLINED_FUNCTION_15_2();
                  sub_1D80BD844(&v519, &v425[v426]);
                  swift_endAccess();
                  OUTLINED_FUNCTION_31_16();
                  OUTLINED_FUNCTION_15_2();
                  BlueprintLayoutCollection.add(decorationLayoutAttributes:for:)(v425, v407, v409);
                  swift_endAccess();

                  __swift_destroy_boxed_opaque_existential_1Tm(v528);
                }
              }

              __swift_destroy_boxed_opaque_existential_1Tm(&v524);
            }

            else
            {
              memset(v529, 0, 40);
              sub_1D7E7AD0C(v529, &qword_1EDBB49D0, &qword_1EDBB49D8);
            }
          }

          LOBYTE(v524) = v470 & 1;
          *v529 = v4;
          *(v529 + 1) = v5;
          *&v529[1] = v2;
          *(&v529[1] + 1) = v3;
          v529[2] = v467;
          v529[3] = v468;
          LOBYTE(v529[4]) = v470 & 1;
          *(&v529[4] + 1) = v463;
          *&v529[5] = v4;
          *(&v529[5] + 1) = v5;
          *&v529[6] = v2;
          *(&v529[6] + 1) = v3;
          v529[7] = v467;
          v529[8] = v468;
          LOBYTE(v529[9]) = v470 & 1;
          *(&v529[9] + 1) = v463;
          memcpy(v528, v529, 0xA0uLL);
          OUTLINED_FUNCTION_31_16();
          OUTLINED_FUNCTION_12_41();
          sub_1D8190DB4();
          BlueprintLayoutCollection.add(section:for:)(v528, v512);
          swift_endAccess();

          (*v435)(v454, v452);
          sub_1D7E7FCD4(v529);
          if (v2 == 0.0 && v3 == 0.0)
          {
            *v471 = v472;
          }

          else
          {
            v472 = v501;
          }

          __swift_destroy_boxed_opaque_existential_1Tm(v527);

          goto LABEL_2;
        }

        v501 = v301;
        sub_1D7E05450((v529 + 8), v528);
        v303 = *&v528[24];
        v304 = OUTLINED_FUNCTION_33_15();
        __swift_project_boxed_opaque_existential_1(v304, v303);
        v305 = OUTLINED_FUNCTION_8_9();
        v306(v305);
        v307 = "UICollectionElementKindSectionFooter";
        if (!v524)
        {
          v307 = "UICollectionElementKindSectionHeader";
        }

        if (((v307 - 32) | 0x8000000000000000) == v295)
        {
          break;
        }

        OUTLINED_FUNCTION_19_29();
        v303 = sub_1D8192634();

        if (v303)
        {
          goto LABEL_55;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v528);
      }

LABEL_55:
      OUTLINED_FUNCTION_5_66();
      v308 = OUTLINED_FUNCTION_8_9();
      v309(v308);
      OUTLINED_FUNCTION_24_23();
      LOBYTE(v519) = 1;
      v310 = *&v528[24];
      v311 = OUTLINED_FUNCTION_28_18();
      __swift_project_boxed_opaque_existential_1(v311, v310);
      OUTLINED_FUNCTION_39_15();
      v312(v310);
      (*(v209 + 8))(&v519, COERCE_DOUBLE(*&v500), v472, COERCE_DOUBLE(*&v499), v303, v209);
      OUTLINED_FUNCTION_9_0();
      v313 = *&v528[24];
      v314 = OUTLINED_FUNCTION_28_18();
      __swift_project_boxed_opaque_existential_1(v314, v313);
      v315 = OUTLINED_FUNCTION_6_1();
      v316(v315);
      OUTLINED_FUNCTION_8_0();
      sub_1D7E7C82C(v317, v318);
      OUTLINED_FUNCTION_9_0();
      __swift_destroy_boxed_opaque_existential_1Tm(&v524);
      v319 = OUTLINED_FUNCTION_2_119();
      v323 = OUTLINED_FUNCTION_13_36(v319, v320, v321, v322);
      v324 = v510;
      v457 = v325;
      v458 = v323;
      *(v510 + 16) = v323;
      v324[3] = v325;
      v455 = v327;
      v456 = v326;
      *(v324 + 4) = v326;
      *(v324 + 5) = v327;
      OUTLINED_FUNCTION_5_66();
      OUTLINED_FUNCTION_8_0();
      v328 = OUTLINED_FUNCTION_8_9();
      v329(v328);
      OUTLINED_FUNCTION_44_10();
      v459 = v501;
      v330 = v460;
      MEMORY[0x1DA710B60]();
      v331 = *&v528[24];
      v332 = *&v528[32];
      __swift_project_boxed_opaque_existential_1(v528, *&v528[24]);
      v526 = v331;
      OUTLINED_FUNCTION_51_9(*(v332 + 8));
      OUTLINED_FUNCTION_3_0();
      (*(v333 + 16))();
      v334 = OUTLINED_FUNCTION_36_13();
      sub_1D7EB39AC(v334, v335);
      __swift_destroy_boxed_opaque_existential_1Tm(&v524);
      v466 = v519;
      LODWORD(v483) = v520;
      v336 = *&v528[24];
      v337 = *&v528[32];
      __swift_project_boxed_opaque_existential_1(v528, *&v528[24]);
      v526 = v336;
      OUTLINED_FUNCTION_51_9(*(v337 + 8));
      OUTLINED_FUNCTION_3_0();
      (*(v338 + 16))();
      v339 = OUTLINED_FUNCTION_36_13();
      sub_1D7EB3AD0(v339, v340);
      __swift_destroy_boxed_opaque_existential_1Tm(&v524);
      LOBYTE(v336) = v519;
      v341 = *&v528[24];
      v342 = *&v528[32];
      __swift_project_boxed_opaque_existential_1(v528, *&v528[24]);
      (*(v342 + 16))(&v524, v341, v342);
      OUTLINED_FUNCTION_42_13();
      type metadata accessor for BlueprintLayoutCollectionLayoutAttributes();
      v343 = v497;
      v344 = v509;
      (*v489)(v497, v330, v509);
      v345 = OUTLINED_FUNCTION_19_29();
      v347 = sub_1D7EB3C70(v345, v346, v343, &selRef_layoutAttributesForSupplementaryViewOfKind_withIndexPath_);
      v348 = sub_1D818E974();
      v349 = v464;
      MEMORY[0x1DA710B60](v464, v348);
      v350 = OUTLINED_FUNCTION_15_35();
      v351 = v344;
      v352 = v459;
      __swift_storeEnumTagSinglePayload(v350, v353, v354, v351);
      v355 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_compositionalIndexPath;
      OUTLINED_FUNCTION_12_41();
      v356 = OUTLINED_FUNCTION_10_50();
      sub_1D7EB3D28(v356, v357, &qword_1EDBBC690, v358);
      swift_endAccess();
      *v462 = v501;
      type metadata accessor for CollectionViewSupplementaryKind.Source();
      OUTLINED_FUNCTION_47_13();
      v359 = OUTLINED_FUNCTION_15_35();
      __swift_storeEnumTagSinglePayload(v359, v360, v361, v355);
      OUTLINED_FUNCTION_12_41();
      v362 = OUTLINED_FUNCTION_11_42();
      sub_1D7EB3D28(v362, v363, qword_1EDBB5AF8, v364);
      swift_endAccess();
      v365 = *&v528[24];
      v366 = OUTLINED_FUNCTION_28_18();
      __swift_project_boxed_opaque_existential_1(v366, v365);
      v367 = OUTLINED_FUNCTION_7_60();
      v368(v367);
      v369 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_layoutData;
      OUTLINED_FUNCTION_15_2();
      sub_1D7E5C8DC(&v524, v347 + v369);
      swift_endAccess();
      v370 = v347;
      OUTLINED_FUNCTION_49_9(v370, sel_setFrame_);
      [v370 setHidden_];
      v371 = &v370[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_pinTrait];
      OUTLINED_FUNCTION_56();
      *v371 = v466;
      v371[8] = v483;
      LOBYTE(v519) = v336;
      v372 = OUTLINED_FUNCTION_37_13();
      OUTLINED_FUNCTION_48_10(v372, v352, v451, v512, v373);
      LOBYTE(v371) = v524;
      v374 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandEdge;
      OUTLINED_FUNCTION_56();
      v370[v374] = v371;
      v375 = *&v528[32];
      __swift_project_boxed_opaque_existential_1(v528, *&v528[24]);
      v376 = OUTLINED_FUNCTION_7_60();
      v377(v376, v375);
      if (v525 == 1)
      {
        v378 = 1000 - v352;
        if (__OFSUB__(1000, v352))
        {
          goto LABEL_107;
        }
      }

      else
      {
        v378 = v524;
      }

      [v370 setZIndex_];

      v464 = v349 + 1;
      v295 = v469;
      v276 = v457;
      v275 = v458;
      if (!__OFADD__(v349, 1))
      {
        v379 = *&v528[32];
        *&v501 = v370;
        OUTLINED_FUNCTION_52_5(v528);
        v380 = OUTLINED_FUNCTION_6_1();
        v381(v380, v379);
        OUTLINED_FUNCTION_42_13();
        OUTLINED_FUNCTION_31_16();
        OUTLINED_FUNCTION_12_41();
        OUTLINED_FUNCTION_34_16();
        swift_endAccess();

        v382 = *&v527[32];
        OUTLINED_FUNCTION_52_5(v527);
        v383 = OUTLINED_FUNCTION_8_49();
        v384(v383, v382);
        __swift_project_boxed_opaque_existential_1(&v524, v526);
        LOBYTE(v521) = 1;
        v519 = v466;
        v520 = v483;
        OUTLINED_FUNCTION_43_12();
        v209 = *&v500;
        v385 = OUTLINED_FUNCTION_8_0();
        *&v387 = COERCE_DOUBLE(v386(v385));

        (*v488)(v460, v509);
        *v471 = v387;

        __swift_destroy_boxed_opaque_existential_1Tm(&v524);
        __swift_destroy_boxed_opaque_existential_1Tm(v528);
        v499 = *&v387;
        v500 = *&v387;
        continue;
      }

      break;
    }

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
  }
}

uint64_t sub_1D7E797C4()
{

  OUTLINED_FUNCTION_19();

  return swift_deallocObject();
}

uint64_t sub_1D7E797F4()
{

  sub_1D7E57C40(*(v0 + 296), *(v0 + 304), *(v0 + 312));
  sub_1D7E57C40(*(v0 + 320), *(v0 + 328), *(v0 + 336));
  sub_1D7E57C40(*(v0 + 344), *(v0 + 352), *(v0 + 360));

  sub_1D7E57C40(*(v0 + 864), *(v0 + 872), *(v0 + 880));
  sub_1D7E57C40(*(v0 + 888), *(v0 + 896), *(v0 + 904));
  sub_1D7E57C40(*(v0 + 912), *(v0 + 920), *(v0 + 928));

  return swift_deallocObject();
}

void sub_1D7E79920(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D8191E84();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7E79998(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  result = v18;
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *(v18 + 48) = a5;
  *(v18 + 56) = a6;
  *(v18 + 64) = a7;
  *(v18 + 72) = a8;
  *(v18 + 80) = a17;
  *(v18 + 88) = a18;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D7F7F414(0, 0, v6, v5, a5);
}

char *OUTLINED_FUNCTION_32_6()
{

  return sub_1D7FC8374(v1, v4, v0, v2, v3);
}

uint64_t OUTLINED_FUNCTION_32_11(uint64_t a1)
{

  return sub_1D7E74104(a1, v1);
}

void OUTLINED_FUNCTION_32_13()
{
  *(v4 - 144) = v2;
  *(v4 - 136) = v0;
  *(v4 - 128) = v1;
  *(v4 - 120) = v3;
}

void OUTLINED_FUNCTION_32_20()
{

  BlueprintSection<>.rank(inclusiveFor:)();
}

unint64_t OUTLINED_FUNCTION_32_21()
{
  v2 = *(v0 - 104);
  v3 = *(v0 - 96);

  return sub_1D7E1C3D8(v2, v3, (v0 - 120));
}

void *BlueprintLayoutCollection.init(layoutOptions:layoutDirection:)@<X0>(void *__src@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(__dst, __src, 0x235uLL);
  LOBYTE(a2) = *a2;
  *a3 = 0;
  *(a3 + 8) = 0;
  v6 = MEMORY[0x1E69E7CC8];
  *(a3 + 24) = MEMORY[0x1E69E7CC0];
  *(a3 + 32) = v6;
  *(a3 + 1216) = v6;
  *(a3 + 1224) = v6;
  *(a3 + 1232) = v6;
  *(a3 + 1240) = v6;
  *(a3 + 1248) = v6;
  *(a3 + 16) = a2;
  memcpy((a3 + 40), __src, 0x235uLL);
  *(a3 + 605) = a2;
  memcpy(v9, __src, 0x235uLL);
  v8 = a2;
  sub_1D7E222B8(__dst, __srca);
  BlueprintLayoutCollectionPinAdjuster.init(layoutOptions:layoutDirection:)(v9, &v8, __srca);
  return memcpy((a3 + 608), __srca, 0x260uLL);
}

uint64_t sub_1D7E79C5C(uint64_t result, char a2)
{
  if ((a2 & 0xC0) == 0x80)
  {
    return sub_1D7E79C74(result, a2 & 0x3F);
  }

  return result;
}

uint64_t sub_1D7E79C74(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return sub_1D8190DB4();
  }

  return result;
}

uint64_t BlueprintLayoutSectionFramePosition.solver(for:layoutOptions:)@<X0>(const void *a1@<X1>, uint64_t *a2@<X8>)
{
  memcpy(v44, a1, 0x235uLL);
  v4 = *v2;
  v5 = *(v2 + 8);
  switch(v5 >> 6)
  {
    case 1u:
      OUTLINED_FUNCTION_12_46();
      OUTLINED_FUNCTION_6_82();
      v6 = type metadata accessor for RawBlueprintLayoutCollectionSectionSolver();
      OUTLINED_FUNCTION_14_43();
      OUTLINED_FUNCTION_9_44();
      OUTLINED_FUNCTION_5_72();
      MEMORY[0x1EEE9AC00](v28);
      v30 = OUTLINED_FUNCTION_2_132(v29, v41);
      v31(v30);
      v32 = OUTLINED_FUNCTION_4_86();
      v17 = sub_1D804206C(v32, v33, v34, v35, v36, v37);
      sub_1D7E222B8(v44, v42);
      result = __swift_destroy_boxed_opaque_existential_1Tm(v43);
      v19 = &off_1F52FD818;
      goto LABEL_9;
    case 2u:
      if ((v5 & 0x3F) == 0)
      {
        OUTLINED_FUNCTION_1_146();
        v39 = type metadata accessor for StackedBlueprintLayoutCollectionSectionSupplementarySolver();
        OUTLINED_FUNCTION_8_53();
        OUTLINED_FUNCTION_3_118();
        OUTLINED_FUNCTION_113();
        v21 = type metadata accessor for StackedBlueprintLayoutCollectionSectionSolver();
        v22 = swift_allocObject();
        *(v22 + 40) = v39;
        *(v22 + 48) = &off_1F5302D18;
        OUTLINED_FUNCTION_0_204(v22);
        *(v22 + 629) = 0;
        *(v22 + 632) = v4;
        v23 = &off_1F52EB008;
        goto LABEL_12;
      }

      if ((v5 & 0x3F) == 1)
      {
        OUTLINED_FUNCTION_1_146();
        v20 = type metadata accessor for StackedBlueprintLayoutCollectionSectionSupplementarySolver();
        OUTLINED_FUNCTION_8_53();
        OUTLINED_FUNCTION_3_118();
        OUTLINED_FUNCTION_113();
        v21 = type metadata accessor for FlowBlueprintLayoutCollectionSectionSolver();
        v22 = swift_allocObject();
        *(v22 + 40) = v20;
        *(v22 + 48) = &off_1F5302D18;
        OUTLINED_FUNCTION_0_204(v22);
        *(v22 + 632) = v4;
        v23 = &off_1F52FAD08;
LABEL_12:
        a2[3] = v21;
        a2[4] = v23;
        *a2 = v22;
        OUTLINED_FUNCTION_13_43();
        OUTLINED_FUNCTION_13_43();
        return sub_1D7E79C5C(v4, v5);
      }

      OUTLINED_FUNCTION_1_146();
      v40 = type metadata accessor for StackedBlueprintLayoutCollectionSectionSupplementarySolver();
      OUTLINED_FUNCTION_8_53();
      OUTLINED_FUNCTION_3_118();
      OUTLINED_FUNCTION_113();
      v25 = type metadata accessor for StackedBlueprintLayoutCollectionSectionSolver();
      v26 = swift_allocObject();
      *(v26 + 40) = v40;
      *(v26 + 48) = &off_1F5302D18;
      OUTLINED_FUNCTION_0_204(v26);
      *(v26 + 629) = 1;
      *(v26 + 632) = MEMORY[0x1E69E7CC0];
      v27 = &off_1F52EB008;
LABEL_14:
      a2[3] = v25;
      a2[4] = v27;
      *a2 = v26;
      OUTLINED_FUNCTION_13_43();
      return OUTLINED_FUNCTION_13_43();
    case 3u:
      OUTLINED_FUNCTION_1_146();
      if (v4 | v5 ^ 0xC0)
      {
        v38 = type metadata accessor for StackedBlueprintLayoutCollectionSectionSupplementarySolver();
        OUTLINED_FUNCTION_8_53();
        OUTLINED_FUNCTION_3_118();
        OUTLINED_FUNCTION_113();
        v25 = type metadata accessor for RawBlueprintLayoutCollectionSectionSolver();
        v26 = OUTLINED_FUNCTION_14_43();
        *(v26 + 40) = v38;
        *(v26 + 48) = &off_1F5302D18;
        OUTLINED_FUNCTION_0_204(v26);
        v27 = &off_1F52FD818;
      }

      else
      {
        v24 = type metadata accessor for StackedBlueprintLayoutCollectionSectionSupplementarySolver();
        OUTLINED_FUNCTION_8_53();
        OUTLINED_FUNCTION_3_118();
        OUTLINED_FUNCTION_113();
        v25 = type metadata accessor for ManualBlueprintLayoutCollectionSectionSolver();
        v26 = OUTLINED_FUNCTION_14_43();
        *(v26 + 40) = v24;
        *(v26 + 48) = &off_1F5302D18;
        OUTLINED_FUNCTION_0_204(v26);
        v27 = &off_1F52F8E68;
      }

      goto LABEL_14;
    default:
      OUTLINED_FUNCTION_12_46();
      OUTLINED_FUNCTION_6_82();
      v6 = type metadata accessor for ManualBlueprintLayoutCollectionSectionSolver();
      OUTLINED_FUNCTION_14_43();
      OUTLINED_FUNCTION_9_44();
      OUTLINED_FUNCTION_5_72();
      MEMORY[0x1EEE9AC00](v7);
      v9 = OUTLINED_FUNCTION_2_132(v8, v41);
      v10(v9);
      v11 = OUTLINED_FUNCTION_4_86();
      v17 = sub_1D804206C(v11, v12, v13, v14, v15, v16);
      sub_1D7E222B8(v44, v42);
      result = __swift_destroy_boxed_opaque_existential_1Tm(v43);
      v19 = &off_1F52F8E68;
LABEL_9:
      a2[3] = v6;
      a2[4] = v19;
      *a2 = v17;
      return result;
  }
}

Swift::Void __swiftcall SwipeActionCollectionView.layoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_1D7E1D3F8(0, qword_1EDBB1158, type metadata accessor for SwipeActionState, MEMORY[0x1E69E6720]);
  v3 = OUTLINED_FUNCTION_50(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &ObjectType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &ObjectType - v7;
  v9 = type metadata accessor for SwipeActionState(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &ObjectType - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &ObjectType - v14;
  v16 = *&v1[OBJC_IVAR____TtC5TeaUI25SwipeActionCollectionView_swipeActionManager];
  v17 = OBJC_IVAR____TtC5TeaUI18SwipeActionManager_swipeState;
  swift_beginAccess();
  sub_1D7E535B8(v16 + v17, v8, qword_1EDBB1158, type metadata accessor for SwipeActionState);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    OUTLINED_FUNCTION_16_32();
    sub_1D7E53770(v8, v18, v19);
    v20 = 1;
    v21 = 0.0;
    v22 = 0.0;
  }

  else
  {
    OUTLINED_FUNCTION_17_26();
    sub_1D8085EA4(v8, v15, v23);
    v24 = sub_1D818E8E4();
    v25 = [v1 cellForItemAtIndexPath_];

    if (v25)
    {
      v26 = [v25 contentView];

      v27 = [v26 layer];
      [v27 position];
      v21 = v28;
      v22 = v29;

      OUTLINED_FUNCTION_4_68();
      sub_1D8085F04(v15, v30);
      v20 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_4_68();
      sub_1D8085F04(v15, v31);
      v20 = 1;
      v21 = 0.0;
      v22 = 0.0;
    }
  }

  v41.receiver = v1;
  v41.super_class = ObjectType;
  objc_msgSendSuper2(&v41, sel_layoutSubviews, ObjectType);
  if ((v20 & 1) == 0)
  {
    sub_1D7E535B8(v16 + v17, v5, qword_1EDBB1158, type metadata accessor for SwipeActionState);
    if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
    {
      OUTLINED_FUNCTION_16_32();
      sub_1D7E53770(v5, v32, v33);
    }

    else
    {
      OUTLINED_FUNCTION_17_26();
      sub_1D8085EA4(v5, v12, v34);
      v35 = sub_1D818E8E4();
      v36 = [v1 cellForItemAtIndexPath_];

      if (v36)
      {
        v37 = [v36 contentView];
        v38 = [v37 layer];

        [v38 setPosition_];
      }

      OUTLINED_FUNCTION_4_68();
      sub_1D8085F04(v12, v39);
    }
  }
}

uint64_t sub_1D7E7A488(_BYTE *a1, const void *a2)
{
  *(v2 + 16) = *a1;
  memcpy((v2 + 24), a2, 0x235uLL);
  return v2;
}

uint64_t sub_1D7E7A4D8(uint64_t result, char a2)
{
  if ((a2 & 0xC0) == 0x80)
  {
    return sub_1D7E7A4F0(result, a2 & 0x3F);
  }

  return result;
}

uint64_t sub_1D7E7A4F0(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1D7E7A504(uint64_t a1)
{
  sub_1D7E25380(a1, v8);
  sub_1D7E0631C(0, &qword_1EDBB50A0);
  sub_1D7E0631C(0, qword_1EDBB3F40);
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v6, v9);
    v1 = v10;
    v2 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v3 = (*(v2 + 16))(v1, v2);
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_1D7E7AD0C(v6, &qword_1EDBB3F38, qword_1EDBB3F40);
    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t sub_1D7E7A618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v6 = *(sub_1D8192344() + 36);
  v7 = BlueprintLayoutSection.startIndex.getter(a1);
  result = (*(v5 + 8))(v2, a1);
  *(a2 + v6) = v7;
  return result;
}

uint64_t sub_1D7E7A71C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = BlueprintLayoutSection.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*sub_1D7E7A744(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = type metadata accessor for BlueprintLayoutItem();
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  a1[2] = __swift_coroFrameAllocStub(*(v7 + 64));
  BlueprintLayoutSection.subscript.getter(a2, a3);
  return sub_1D7E96864;
}

void (*sub_1D7E7A80C(uint64_t **a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1D7E7A744(v6, *a2, a3);
  return sub_1D7E46A38;
}

uint64_t static MastheadViewLayoutOptions.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v80 = *(a1 + 56);
  v81 = *(a1 + 40);
  v78 = *(a1 + 88);
  v79 = *(a1 + 72);
  v83 = *(a1 + 96);
  v76 = *(a1 + 120);
  v77 = *(a1 + 104);
  v2 = *(a1 + 128);
  v71 = *(a1 + 136);
  v69 = *(a1 + 152);
  v70 = *(a1 + 144);
  v64 = *(a1 + 168);
  v65 = *(a1 + 160);
  v62 = *(a1 + 184);
  v63 = *(a1 + 176);
  v56 = *(a1 + 200);
  v57 = *(a1 + 192);
  v54 = *(a1 + 216);
  v55 = *(a1 + 208);
  v48 = *(a1 + 232);
  v49 = *(a1 + 224);
  v46 = *(a1 + 248);
  v47 = *(a1 + 240);
  v3 = *(a1 + 256);
  v41 = *(a1 + 264);
  v4 = *(a1 + 272);
  v40 = *(a1 + 280);
  v5 = *(a1 + 288);
  v73 = *(a2 + 8);
  v74 = *a2;
  v6 = *(a2 + 24);
  v72 = *(a2 + 16);
  v75 = *(a2 + 40);
  v7 = *(a2 + 128);
  v8 = *(a2 + 256);
  v9 = *(a2 + 264);
  v10 = *(a2 + 272);
  v11 = *(a2 + 288);
  v12 = *(a2 + 289);
  v13 = *(a2 + 56);
  v14 = *(a2 + 72);
  v16 = *(a2 + 88);
  v15 = *(a2 + 96);
  v17 = *(a2 + 104);
  v18 = *(a2 + 120);
  v67 = *(a2 + 144);
  v68 = *(a2 + 136);
  v66 = *(a2 + 152);
  v60 = *(a2 + 168);
  v61 = *(a2 + 160);
  v58 = *(a2 + 184);
  v59 = *(a2 + 176);
  v52 = *(a2 + 200);
  v53 = *(a2 + 192);
  v50 = *(a2 + 216);
  v51 = *(a2 + 208);
  v44 = *(a2 + 232);
  v45 = *(a2 + 224);
  v42 = *(a2 + 248);
  v43 = *(a2 + 240);
  v39 = *(a2 + 280);
  Width = CGRectGetWidth(*a1);
  v84.origin.y = v73;
  v84.origin.x = v74;
  v84.size.width = v72;
  v84.size.height = v6;
  v26 = Width == CGRectGetWidth(v84) && v81 == v75 && v80 == v13 && v79 == v14 && v78 == v16 && v77 == v17 && v76 == v18 && v83 == v15;
  if (v26 && (v82 = v5, v27 = [v2 horizontalSizeClass], v27 == objc_msgSend(v7, sel_horizontalSizeClass)) && (v28 = objc_msgSend(v2, sel_userInterfaceStyle), v28 == objc_msgSend(v7, sel_userInterfaceStyle)) && ((v29 = objc_msgSend(v2, sel_userInterfaceLevel), v29 == objc_msgSend(v7, sel_userInterfaceLevel)) ? (v30 = v71 == v68) : (v30 = 0), v30 ? (v31 = v70 == v67) : (v31 = 0), v31 ? (v32 = v69 == v66) : (v32 = 0), v32 && (v85.origin.y = v64, v85.origin.x = v65, v85.size.height = v62, v85.size.width = v63, v88.origin.y = v60, v88.origin.x = v61, v88.size.height = v58, v88.size.width = v59, CGRectEqualToRect(v85, v88)) && (v86.origin.y = v56, v86.origin.x = v57, v86.size.height = v54, v86.size.width = v55, v89.origin.y = v52, v89.origin.x = v53, v89.size.height = v50, v89.size.width = v51, CGRectEqualToRect(v86, v89)) && (v87.origin.y = v48, v87.origin.x = v49, v87.size.height = v46, v87.size.width = v47, v90.origin.y = v44, v90.origin.x = v45, v90.size.height = v42, v90.size.width = v43, CGRectEqualToRect(v87, v90))))
  {
    sub_1D7E7AC84();
    v33 = v3;
    v34 = v8;
    v35 = sub_1D8191CC4();

    LOBYTE(v36) = 0;
    if ((v35 & 1) != 0 && ((v41 ^ v9) & 1) == 0)
    {
      LOBYTE(v36) = v4 == 2;
      if (v10 != 2)
      {
        LOBYTE(v36) = 0;
      }

      if (v4 != 2 && v10 != 2)
      {
        v36 = (v4 ^ v10 | v82 ^ v11 | v12 ^ ((v82 & 0x100) >> 8) | (v40 != v39)) ^ 1;
      }
    }
  }

  else
  {
    LOBYTE(v36) = 0;
  }

  return v36 & 1;
}

uint64_t BlueprintLayoutSection.subscript.getter(uint64_t a1, uint64_t a2)
{
  v4 = BlueprintLayoutSection.startIndex.getter(a2);
  result = BlueprintLayoutSection.endIndex.getter(a2);
  if (result < v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v4 > a1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result <= a1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  type metadata accessor for BlueprintLayoutItem();

  return sub_1D81914C4();
}

unint64_t sub_1D7E7AC84()
{
  result = qword_1EDBB2F40;
  if (!qword_1EDBB2F40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBB2F40);
  }

  return result;
}

Swift::Int sub_1D7E7ACC8(Swift::Int *a1)
{
  result = BlueprintLayoutSection.index(after:)(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_1D7E7AD0C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_1D7E328A8(0, a2, a3);
  OUTLINED_FUNCTION_3_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D7E7AD7C(unsigned __int8 *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v112 = a5;
  v113 = a6;
  v109 = a10;
  v108 = a9;
  v107 = a11;
  sub_1D7E79920(0, qword_1EDBB5AF8, type metadata accessor for CollectionViewSupplementaryKind.Source);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v106 = (&v99 - v18);
  v105 = sub_1D818E994();
  v19 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v104 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v115 = *(a2 + 16);
  swift_beginAccess();
  swift_beginAccess();
  v111 = a4;
  swift_beginAccess();
  swift_beginAccess();
  v110 = a7;
  swift_beginAccess();
  v114 = a8;
  result = swift_beginAccess();
  v23 = 0;
  v24 = "eneConnect";
  v102 = "entKindSectionHeader";
  v103 = "eneConnect";
  if (v21)
  {
    v24 = "entKindSectionHeader";
  }

  v25 = v24 | 0x8000000000000000;
  v99 = a2 + 32;
  v100 = (v19 + 16);
  for (i = v24 | 0x8000000000000000; ; v25 = i)
  {
    while (1)
    {
      v26 = 0uLL;
      v27 = v115;
      v28 = 0uLL;
      v29 = 0uLL;
      if (v23 != v115)
      {
        if (v23 >= v115)
        {
          goto LABEL_28;
        }

        v27 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_29;
        }

        *&v121 = v23;
        result = sub_1D7E25380(v99 + 40 * v23, &v121 + 8);
        v26 = v121;
        v28 = v122;
        v29 = v123;
      }

      v124[0] = v26;
      v124[1] = v28;
      v124[2] = v29;
      if (!v29)
      {
        return result;
      }

      v117 = v26;
      sub_1D7E05450((v124 + 8), &v121);
      v30 = *(&v122 + 1);
      v31 = v123;
      __swift_project_boxed_opaque_existential_1(&v121, *(&v122 + 1));
      (*(v31 + 16))(&v119, v30, v31);
      v32 = "UICollectionElementKindSectionHeader";
      if (v119)
      {
        v32 = "UICollectionElementKindSectionFooter";
      }

      if (((v32 - 32) | 0x8000000000000000) == v25)
      {

        break;
      }

      v33 = sub_1D8192634();

      if (v33)
      {
        break;
      }

      result = __swift_destroy_boxed_opaque_existential_1Tm(&v121);
      v23 = v27;
    }

    v116 = v27;
    v34 = a3[3];
    v35 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v34);
    v37 = *(&v122 + 1);
    v36 = v123;
    __swift_project_boxed_opaque_existential_1(&v121, *(&v122 + 1));
    v38 = (*(*(v36 + 8) + 16))(v37);
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v45 = v111;
    v46 = *(v35 + 24);

    v46(v47, v112, v34, v35, v38, v40, v42, v44);

    v49 = *(&v122 + 1);
    v48 = v123;
    __swift_project_boxed_opaque_existential_1(&v121, *(&v122 + 1));
    v50 = (*(*(*(v48 + 8) + 8) + 24))(v49);
    sub_1D7E7C82C(v113, v50 & 1);
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v59 = a3[3];
    v60 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v59);
    v61 = *(v60 + 40);

    v63 = v61(v62, v59, v60, v52, v54, v56, v58);

    *(v45 + 16) = v63;

    v64 = v110;
    v125.origin.x = v52;
    v125.origin.y = v54;
    v125.size.width = v56;
    v125.size.height = v58;
    *(v64 + 16) = CGRectUnion(*(v110 + 16), v125);
    v65 = a3[3];
    v66 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v65);
    v67 = (*(v66 + 32))(v65, v66, v52, v54, v56, v58);
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v74 = *(&v122 + 1);
    v75 = v123;
    __swift_project_boxed_opaque_existential_1(&v121, *(&v122 + 1));
    (*(v75 + 16))(&v119, v74, v75);
    type metadata accessor for BlueprintLayoutCollectionLayoutAttributes();
    v76 = *(v114 + 16);
    v77 = v117;
    result = v117 + v76;
    if (__OFADD__(v117, v76))
    {
      break;
    }

    v79 = v102;
    v78 = v103;
    if (v119)
    {
      v80 = v102;
    }

    else
    {
      v80 = v103;
    }

    v81 = v104;
    MEMORY[0x1DA710B60](result, v108);
    v82 = sub_1D7EB3C70(0xD000000000000024, v80 | 0x8000000000000000, v81, &selRef_layoutAttributesForSupplementaryViewOfKind_withIndexPath_);
    sub_1D7E58AEC();
    v84 = *(v83 + 48);
    v85 = v105;
    v86 = v106;
    *v106 = v77;
    (*v100)(v86 + v84, v109, v85);
    v87 = type metadata accessor for CollectionViewSupplementaryKind.Source();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v86, 0, 1, v87);
    v88 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_source;
    swift_beginAccess();
    sub_1D7EB3D28(v86, v82 + v88, qword_1EDBB5AF8, type metadata accessor for CollectionViewSupplementaryKind.Source);
    swift_endAccess();
    v89 = v82;
    [v89 setFrame_];
    [v89 setHidden_];
    v91 = *(&v122 + 1);
    v90 = v123;
    __swift_project_boxed_opaque_existential_1(&v121, *(&v122 + 1));
    (*(*(v90 + 8) + 24))(&v119, v91);
    v92 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_layoutData;
    swift_beginAccess();
    sub_1D7E5C8DC(&v119, v89 + v92);
    swift_endAccess();
    v93 = *(&v122 + 1);
    v94 = v123;
    __swift_project_boxed_opaque_existential_1(&v121, *(&v122 + 1));
    (*(v94 + 24))(&v119, v93, v94);
    if (v120)
    {
      v95 = 1000;
    }

    else
    {
      v95 = v119;
    }

    [v89 setZIndex_];

    v96 = *(&v122 + 1);
    v97 = v123;
    __swift_project_boxed_opaque_existential_1(&v121, *(&v122 + 1));
    (*(v97 + 16))(v118, v96, v97);
    if (LOBYTE(v118[0]))
    {
      v98 = v79;
    }

    else
    {
      v98 = v78;
    }

    swift_beginAccess();
    BlueprintLayoutCollection.add(supplementaryLayoutAttributes:for:)(v89, 0xD000000000000024, v98 | 0x8000000000000000);
    swift_endAccess();

    result = __swift_destroy_boxed_opaque_existential_1Tm(&v121);
    v23 = v116;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1D7E7B5C4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1D8191F34();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_1D7E7BAAC(v10);
  return v8 & 1;
}

double sub_1D7E7B668()
{
  OUTLINED_FUNCTION_155();
  v1 = *(v0 + 16);
  CGRectGetWidth(v3);
  OUTLINED_FUNCTION_3_32();
  return v1;
}

uint64_t MastheadDisplayOptions.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1D7E7B91C(a1, v11);
  if (!v12)
  {
    sub_1D7E7BAAC(v11);
    goto LABEL_13;
  }

  if ((OUTLINED_FUNCTION_2_148() & 1) == 0)
  {
LABEL_13:
    v7 = 0;
    return v7 & 1;
  }

  if (*(v1 + OBJC_IVAR___TSMastheadDisplayOptions_statusBarMode + 8))
  {
    if ((v10[OBJC_IVAR___TSMastheadDisplayOptions_statusBarMode + 8] & 1) == 0)
    {
LABEL_12:

      goto LABEL_13;
    }
  }

  else if ((v10[OBJC_IVAR___TSMastheadDisplayOptions_statusBarMode + 8] & 1) != 0 || *(v1 + OBJC_IVAR___TSMastheadDisplayOptions_statusBarMode) != *&v10[OBJC_IVAR___TSMastheadDisplayOptions_statusBarMode])
  {
    goto LABEL_12;
  }

  v3 = *(v1 + OBJC_IVAR___TSMastheadDisplayOptions_styleOptions);
  v4 = *&v10[OBJC_IVAR___TSMastheadDisplayOptions_styleOptions];
  if (!v3)
  {
    v9 = v4;

    if (!v4)
    {
      v7 = 1;
      return v7 & 1;
    }

    goto LABEL_13;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  type metadata accessor for MastheadStyleOptions();
  v5 = v4;
  v6 = v3;
  v7 = sub_1D8191CC4();

  return v7 & 1;
}

uint64_t BlueprintSection.isImpressionable.getter()
{
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_15();
  (*(v3 + 16))(v2 - v1);
  sub_1D7EA4FB8();
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v8, v10);
    v4 = v11;
    v5 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v6 = (*(v5 + 8))(v4, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_1D7EA5014(v8);
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1D7E7B91C(uint64_t a1, uint64_t a2)
{
  sub_1D7E2CEC0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1D7E7B998(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1D818E994();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  v9 = a3;
  v10 = a1;
  BlueprintCollectionViewDataSource.collectionView(_:cellForItemAt:)();
  v12 = v11;

  (*(v6 + 8))(v8, v5);

  return v12;
}

uint64_t sub_1D7E7BAAC(uint64_t a1)
{
  sub_1D7E09C24(0, &qword_1EDBBC780, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void BlueprintCollectionViewDataSource.collectionView(_:cellForItemAt:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v119 = v2;
  v115 = v3;
  v4 = *v0;
  v5 = *MEMORY[0x1E69E7D40];
  v110 = *MEMORY[0x1E69E7D40] & *v0;
  v6 = sub_1D818E2D4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_15();
  v94 = v8 - v7;
  v9 = *((v5 & v4) + 0x70);
  v10 = *((v5 & v4) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v97 = v12;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_94();
  v98 = v14;
  v116 = v4;
  v117 = v5;
  v114 = *((v5 & v4) + 0x78);
  v113 = *((v5 & v4) + 0x58);
  OUTLINED_FUNCTION_10_8();
  v111 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for BlueprintLayoutItem();
  OUTLINED_FUNCTION_9();
  v106 = v16;
  v107 = v15;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_94();
  v120 = v18;
  v19 = swift_getAssociatedTypeWitness();
  v20 = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedConformanceWitness();
  v126[0] = v19;
  v126[1] = AssociatedTypeWitness;
  v126[2] = v20;
  v127 = v21;
  v22 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_9();
  v24 = v23;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v94 - v26;
  v99 = AssociatedTypeWitness;
  v112 = type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_9();
  v118 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_28_0();
  v102 = v30 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v94 - v33;
  v101 = *((v117 & v116) + 0xA0);
  v108 = v10;
  v109 = v9;
  v35 = v10;
  v36 = v120;
  BlueprintProviderType.blueprint.getter(v35, v9);
  v37 = v119;
  Blueprint.subscript.getter();
  v38 = *(v24 + 8);
  v103 = v27;
  v104 = v24 + 8;
  v105 = v22;
  v100 = v38;
  v38(v27, v22);
  OUTLINED_FUNCTION_43_9();
  BlueprintLayoutProviderType.layoutBlueprint.getter(v113, v114);
  OUTLINED_FUNCTION_13_20();
  v39 = swift_getAssociatedTypeWitness();
  v40 = swift_getAssociatedConformanceWitness();
  *&v123 = v39;
  *(&v123 + 1) = v111;
  v124 = v40;
  v125 = AssociatedConformanceWitness;
  v41 = type metadata accessor for BlueprintLayout();
  BlueprintLayout.subscript.getter(v37, v41);
  (*(*(v41 - 8) + 8))(v126, v41);
  OUTLINED_FUNCTION_43_9();
  *&v123 = v115;
  v42 = *((v117 & v116) + 0x80);
  v43 = *(v42 + 64);
  v44 = *((v117 & v116) + 0x60);
  v117 = v34;
  v95 = v44;
  AssociatedConformanceWitness = v42;
  v43(v126, v34, v36, &v123, v37);
  v45 = v126[0];
  *&v121 = v126[0];
  v46 = sub_1D7E0A1A8(0, &qword_1EDBB3110);
  OUTLINED_FUNCTION_91(v46, &qword_1EDBB7758);
  v47 = v45;
  v116 = v46;
  if (swift_dynamicCast())
  {
    sub_1D7E05450(&v123, v126);
    v48 = v127;
    v49 = v128;
    __swift_project_boxed_opaque_existential_1(v126, v127);
    v129.origin.x = (*(*(v110 + 144) + 16))(v111);
    Height = CGRectGetHeight(v129);
    (*(v49 + 8))(v48, v49, Height);
    __swift_destroy_boxed_opaque_existential_1Tm(v126);
  }

  else
  {
    OUTLINED_FUNCTION_15_24();
    sub_1D7E553A4(&v123, &qword_1EDBB7750, &qword_1EDBB7758);
  }

  swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v47))
  {
    v52 = v51;
    OUTLINED_FUNCTION_43_9();
    v54 = *(v53 + 192);
    v55 = *(v1 + v54);
    v56 = v47;
    if (v55)
    {

      sub_1D818F154();

      v55 = LOBYTE(v126[0]);
    }

    ObjectType = swift_getObjectType();
    (*(v52 + 16))(v55, ObjectType, v52);
    if (*(v1 + v54))
    {
      *(swift_allocObject() + 24) = v52;
      swift_unknownObjectWeakInit();

      sub_1D818F164();

      __swift_project_boxed_opaque_existential_1(v126, v127);
      v58 = (*(v52 + 32))(ObjectType, v52);
      sub_1D818ED84();

      __swift_destroy_boxed_opaque_existential_1Tm(v126);
    }

    else
    {
    }
  }

  v59 = (*(v97 + 16))(v98, v117, v99);
  OUTLINED_FUNCTION_91(v59, qword_1EDBB65E0);
  if (swift_dynamicCast())
  {
    sub_1D7E05450(&v123, v126);
    v60 = v127;
    v61 = v128;
    __swift_project_boxed_opaque_existential_1(v126, v127);
    (*(v61 + 8))(&v121, v60, v61);
    if (v122)
    {
      sub_1D7E05450(&v121, &v123);
      v62 = [v47 contentView];
      v63 = v125;
      v64 = __swift_project_boxed_opaque_existential_1(&v123, v125);
      sub_1D818FD34();
      v111 = &v94;
      OUTLINED_FUNCTION_2();
      MEMORY[0x1EEE9AC00](v65);
      OUTLINED_FUNCTION_15();
      (*(v68 + 16))(v67 - v66, v64, v63);
      sub_1D7E9A940();
      v69 = sub_1D818FD24();
      sub_1D8191C64();

      __swift_destroy_boxed_opaque_existential_1Tm(&v123);
    }

    else
    {
      sub_1D7E553A4(&v121, &unk_1EDBBC730, &unk_1EDBBC740);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v126);
  }

  else
  {
    OUTLINED_FUNCTION_15_24();
    sub_1D7E553A4(&v123, &unk_1EDBB65D0, qword_1EDBB65E0);
  }

  v70 = v103;
  v72 = v108;
  v71 = v109;
  BlueprintProviderType.blueprint.getter(v108, v109);
  v73 = v102;
  v74 = v105;
  Blueprint.subscript.getter();
  v100(v70, v74);
  v75 = v112;
  v119 = BlueprintItem.identifier.getter();
  v77 = v76;
  v78 = *(v118 + 8);
  v79 = v73;
  v80 = v118 + 8;
  v81 = v78(v79, v75);
  *&v121 = v47;
  OUTLINED_FUNCTION_91(v81, qword_1EDBB9798);
  v82 = v47;
  if (swift_dynamicCast())
  {
    sub_1D7E05450(&v123, v126);
    v118 = v80;
    v116 = v82;
    v83 = v71;
    v84 = v72;
    v85 = v127;
    v86 = v128;
    v111 = __swift_project_boxed_opaque_existential_1(v126, v127);
    OUTLINED_FUNCTION_0_8();
    v87 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_0_8();
    v88 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v89 = swift_allocObject();
    v90 = v113;
    v89[2] = v84;
    v89[3] = v90;
    v89[4] = v95;
    v91 = v110;
    v89[5] = *(v110 + 104);
    v89[6] = v83;
    v92 = AssociatedConformanceWitness;
    v89[7] = v114;
    v89[8] = v92;
    v89[9] = *(v91 + 136);
    v89[10] = *(v91 + 144);
    v89[11] = v87;
    v89[12] = v119;
    v89[13] = v77;
    v89[14] = v88;
    v93 = *(v86 + 8);

    v93(sub_1D802BEC8, v89, v85, v86);

    (*(v106 + 8))(v120, v107);
    v78(v117, v112);

    __swift_destroy_boxed_opaque_existential_1Tm(v126);
  }

  else
  {

    (*(v106 + 8))(v120, v107);
    v78(v117, v75);
    OUTLINED_FUNCTION_15_24();
    sub_1D7E553A4(&v123, &qword_1EDBB9790, qword_1EDBB9798);
  }

  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7E7C7A8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7E7C7F0()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

void sub_1D7E7C82C(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = *(a1 + 565);
    v7.origin.x = OUTLINED_FUNCTION_6_74();
    CGRectIntegral(v7);
    v3 = OUTLINED_FUNCTION_6_74();
    if (v2)
    {
      CGRectGetWidth(*&v3);
    }

    else
    {
      CGRectGetHeight(*&v3);
    }
  }

  OUTLINED_FUNCTION_6_74();
}

char *CollectionViewListCell.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  ObjectType = swift_getObjectType();
  v2 = qword_1EDBB8BE8;
  v3 = objc_allocWithZone(type metadata accessor for SelectedBackgroundView());
  *(v0 + v2) = OUTLINED_FUNCTION_4(v3, sel_initWithFrame_);
  v4 = qword_1EDBB8B88;
  sub_1D7E40308();
  v6 = v5;
  *(v0 + v4) = [objc_allocWithZone(v5) init];
  v7 = qword_1EDBB8BD8;
  *(v0 + v7) = [objc_allocWithZone(v6) init];
  v8 = qword_1EDBB8BC8;
  *(v0 + v8) = [objc_allocWithZone(v6) init];
  v9 = qword_1EDBB8B98;
  *(v0 + v9) = [objc_allocWithZone(v6) init];
  *(v0 + qword_1EDBB8BD0) = 0;
  *(v0 + qword_1EDBB8BC0) = 0x8000000000000008;
  v10 = qword_1EDBB8BA0;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  *(v0 + qword_1EDBB8BB0) = 0;
  v11 = (v0 + qword_1EDBB8BB8);
  *v11 = 0;
  v11[1] = 0;
  *(v0 + qword_1EDBB8BE0) = 0;
  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  *(v0 + qword_1EDBB8BA8) = OUTLINED_FUNCTION_4(v12, sel_initWithFrame_);
  *(v0 + qword_1EDBB8B90) = 0;
  v13 = OUTLINED_FUNCTION_80();
  v16 = objc_msgSendSuper2(v14, v15, v13, v0, ObjectType);
  v17 = [v16 contentView];
  v18 = qword_1EDBB8BA8;
  [v17 addSubview_];

  v19 = *&v16[v18];
  v20 = [v16 contentView];
  [v20 bounds];
  OUTLINED_FUNCTION_9_0();

  v21 = OUTLINED_FUNCTION_8_0();
  [v22 v23];

  [*&v16[v18] bounds];
  OUTLINED_FUNCTION_9_0();
  v24 = objc_allocWithZone(MEMORY[0x1E69DD250]);
  v25 = OUTLINED_FUNCTION_8_0();
  v28 = [v26 v27];
  [v16 setBackgroundView_];

  [v16 setSelectedBackgroundView_];
  return v16;
}

uint64_t sub_1D7E7CC20(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v7 = *(v5 + 632);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = (v7 + 32);
    v10 = 0.0;
    do
    {
      v11 = *v9++;
      v10 = v10 + v11;
      --v8;
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  if (*(v5 + 56))
  {
    v12 = *(a1 + 16);
    v13 = v10 + CGRectGetMaxY(*&a2);
  }

  else
  {
    v12 = v10 + CGRectGetMaxX(*&a2);
    v13 = *(a1 + 24);
  }

  type metadata accessor for BlueprintLayoutCollectionSectionCursor();
  swift_allocObject();
  OUTLINED_FUNCTION_1_37();
  return sub_1D7E79998(v12, v13, v22, v23, v24, v25, v26, v27, v14, v15, v16, v17, v18, v19, v20, v21, 0, 0);
}

id sub_1D7E7CD34()
{
  OUTLINED_FUNCTION_16_1();
  swift_getObjectType();
  OUTLINED_FUNCTION_0_108();
  return objc_msgSendSuper2(v0, v1);
}

double sub_1D7E7CD68()
{
  OUTLINED_FUNCTION_155();
  v6 = 440;
  if (*(v0 + 65) == 1)
  {
    v6 = 104;
  }

  v7 = *(v0 + v6);
  CGRectGetWidth(*&v2);
  OUTLINED_FUNCTION_3_32();
  return v7 + v1;
}

id sub_1D7E7CE2C(uint64_t a1)
{
  v2 = sub_1D818E8E4();
  v3 = [swift_getObjCClassFromMetadata() layoutAttributesForCellWithIndexPath_];

  v4 = sub_1D818E994();
  (*(*(v4 - 8) + 8))(a1, v4);
  return v3;
}

id sub_1D7E7CEC4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_shadowOpacity);
}

id sub_1D7E7CF00()
{
  OUTLINED_FUNCTION_16_1();
  swift_getObjectType();
  OUTLINED_FUNCTION_0_108();
  v2 = objc_msgSendSuper2(v0, v1);

  return v2;
}

uint64_t BlueprintLayoutFrameAttributesType.layoutData.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  v5 = *(*(a1 - 8) + 16);

  return v5(boxed_opaque_existential_0, v2, a1);
}

id sub_1D7E7D044()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_shadowOffset);
}

uint64_t BlueprintLayoutCollection.add(layoutAttributes:)(char *a1)
{
  v2 = v1;
  v4 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_15_45(v21);
  OUTLINED_FUNCTION_15_45(v20);
  sub_1D7E6755C(v21, v22);
  v10 = sub_1D7E7D31C(a1);
  v12 = v11;
  memcpy(v22, v20, sizeof(v22));
  sub_1D7E598FC(v22);
  v13 = &a1[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_dedupIdentifier];
  *v13 = v10;
  v13[1] = v12;

  v14 = a1;
  MEMORY[0x1DA713500]();
  sub_1D7E2893C(*((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1D8191404();
  v15 = [v14 indexPath];
  sub_1D818E924();

  v16 = v14;
  swift_isUniquelyReferenced_nonNull_native();
  v20[0] = *(v2 + 1216);
  sub_1D7E7D494();
  *(v2 + 1216) = v20[0];
  (*(v6 + 8))(v9, v4);
  sub_1D7E7D6B8(v16);
  v17 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isPlugin;
  result = swift_beginAccess();
  if (v16[v17] == 1)
  {
    return BlueprintLayoutCollectionPinAdjuster.track(layoutAttributes:)(v16);
  }

  return result;
}

uint64_t sub_1D7E7D31C(void *a1)
{
  v2 = sub_1D818E994();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = [a1 representedElementCategory];
  v11 = sub_1D81925B4();
  v12 = v6;
  MEMORY[0x1DA713260](14906, 0xE200000000000000);
  v7 = [a1 indexPath];
  sub_1D818E924();

  sub_1D7E24964(&unk_1EDBBC6A0);
  v8 = sub_1D81925B4();
  MEMORY[0x1DA713260](v8);

  (*(v3 + 8))(v5, v2);
  return v11;
}

void sub_1D7E7D494()
{
  OUTLINED_FUNCTION_120();
  v4 = v3;
  OUTLINED_FUNCTION_76_0();
  v5 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_119();
  sub_1D7E7DB08();
  OUTLINED_FUNCTION_4_10();
  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v9;
  v13 = v10;
  v14 = OUTLINED_FUNCTION_96();
  sub_1D7E7D610(v14, v15);
  if ((OUTLINED_FUNCTION_40() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_1D7E7DB08();
  if ((v13 & 1) != (v17 & 1))
  {
LABEL_11:
    sub_1D8192714();
    __break(1u);
    return;
  }

  v12 = v16;
LABEL_5:
  v18 = *v1;
  if (v13)
  {
    *(*(v18 + 56) + 8 * v12) = v0;
    OUTLINED_FUNCTION_100();
  }

  else
  {
    (*(v7 + 16))(v2, v4, v5);
    sub_1D7E7DD68(v12, v2, v0, v18);
    OUTLINED_FUNCTION_100();
  }
}

void sub_1D7E7D610(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_115(a1, a2))
  {
    v4 = v3;
    OUTLINED_FUNCTION_35();
    sub_1D818E994();
    type metadata accessor for BlueprintLayoutCollectionLayoutAttributes();
    sub_1D7E2B754(&qword_1EDBBC6C0, MEMORY[0x1E6969C28]);
    OUTLINED_FUNCTION_134();
    v5 = v4();
    if (!v6)
    {
      atomic_store(v5, v2);
    }
  }
}

uint64_t sub_1D7E7D6B8(char *a1)
{
  v2 = v1;
  memcpy(__dst, (v1 + 40), 0x236uLL);
  sub_1D7E6EB58(__dst, v48);
  [a1 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *&a1[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_previousFrame];
  v13 = *&a1[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_previousFrame + 8];
  v15 = *&a1[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_previousFrame + 16];
  v14 = *&a1[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_previousFrame + 24];
  v16 = a1[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_previousFrame + 32];
  memcpy(v48, __dst, 0x236uLL);
  sub_1D7E6ED1C();
  v19 = v17;
  v20 = v18;
  if ((v16 & 1) != 0 || (v50.origin.x = v12, v50.origin.y = v13, v50.size.width = v15, v50.size.height = v14, v51.origin.x = v5, v51.origin.y = v7, v51.size.width = v9, v51.size.height = v11, CGRectEqualToRect(v50, v51)))
  {
    sub_1D7E6F268(__dst);
  }

  else
  {
    memcpy(v48, __dst, 0x236uLL);
    sub_1D7E6ED1C();
    v45 = v44;
    v47 = v46;
    sub_1D7E6F268(__dst);
    if (v45 < v19)
    {
      v19 = v45;
    }

    if (v47 > v20)
    {
      v20 = v47;
    }
  }

  v21 = *(v2 + 1248);
  do
  {
    if (v21[2] && (v22 = sub_1D7E7E198(v19), (v23 & 1) != 0))
    {
      v48[0] = *(v21[7] + 8 * v22);
      sub_1D8190DB4();
      v24 = a1;
      MEMORY[0x1DA713500]();
      if (*((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D81913B4();
      }

      sub_1D8191404();
      v25 = v48[0];
      swift_isUniquelyReferenced_nonNull_native();
      v21 = *(v2 + 1248);
      v26 = sub_1D7E7E198(v19);
      if (__OFADD__(v21[2], (v27 & 1) == 0))
      {
        goto LABEL_40;
      }

      v28 = v26;
      v29 = v27;
      sub_1D7E7DB98();
      result = sub_1D8192374();
      if (result)
      {
        result = sub_1D7E7E198(v19);
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_42;
        }

        v28 = result;
      }

      if (v29)
      {
        *(v21[7] + 8 * v28) = v25;
LABEL_23:

        goto LABEL_29;
      }

      v21[(v28 >> 6) + 8] |= 1 << v28;
      *(v21[6] + 8 * v28) = v19;
      *(v21[7] + 8 * v28) = v25;
      v43 = v21[2];
      v41 = __OFADD__(v43, 1);
      v42 = v43 + 1;
      if (v41)
      {
        goto LABEL_41;
      }
    }

    else
    {
      sub_1D7E49240();
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1D81A50A0;
      *(v32 + 32) = a1;
      v33 = a1;
      swift_isUniquelyReferenced_nonNull_native();
      v48[0] = *(v2 + 1248);
      v34 = v48[0];
      v35 = sub_1D7E7E198(v19);
      if (__OFADD__(*(v34 + 16), (v36 & 1) == 0))
      {
        goto LABEL_38;
      }

      v37 = v35;
      v38 = v36;
      sub_1D7E7DB98();
      result = sub_1D8192374();
      if (result)
      {
        result = sub_1D7E7E198(v19);
        if ((v38 & 1) != (v39 & 1))
        {
          goto LABEL_42;
        }

        v37 = result;
      }

      v21 = v48[0];
      if (v38)
      {
        *(*(v48[0] + 56) + 8 * v37) = v32;
        goto LABEL_23;
      }

      *(v48[0] + 8 * (v37 >> 6) + 64) |= 1 << v37;
      *(v21[6] + 8 * v37) = v19;
      *(v21[7] + 8 * v37) = v32;
      v40 = v21[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_39;
      }
    }

    v21[2] = v42;
LABEL_29:
    *(v2 + 1248) = v21;
    if (v20 == v19)
    {
      return result;
    }

    v41 = __OFADD__(v19++, 1);
  }

  while (!v41);
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_1D8192714();
  __break(1u);
  return result;
}

unint64_t sub_1D7E7DB08()
{
  OUTLINED_FUNCTION_20_3();
  sub_1D818E994();
  sub_1D7E72E88(&qword_1EDBBC6C0, MEMORY[0x1E6969C28]);
  sub_1D8190E54();
  v0 = OUTLINED_FUNCTION_14();

  return sub_1D7E7E5EC(v0, v1);
}

void sub_1D7E7DB98()
{
  if (!qword_1EDBB2D98)
  {
    sub_1D7E188DC(255, &unk_1EDBB33A0);
    v0 = sub_1D8192394();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2D98);
    }
  }
}

void sub_1D7E7DC54(double a1, CGFloat a2)
{
  if (v2[629] == 1)
  {
    if (v2[56])
    {
      v18.origin.x = OUTLINED_FUNCTION_0_45();
      MaxY = CGRectGetMaxY(v18);
      v6 = *&v2[qword_1D81A64A0[v2[65]]];
      v7 = ceil(trunc(MaxY) / v6) * v6;
      v19.origin.x = OUTLINED_FUNCTION_0_45();
      v8 = v7 - trunc(CGRectGetMaxY(v19));
      v20.origin.x = OUTLINED_FUNCTION_0_45();
      Width = CGRectGetWidth(v20);
      v21.origin.x = OUTLINED_FUNCTION_0_45();
      Height = CGRectGetHeight(v21) + v8;
    }

    else
    {
      v22.origin.x = OUTLINED_FUNCTION_0_45();
      MaxX = CGRectGetMaxX(v22);
      v15 = *&v2[qword_1D81A6488[v2[65]]];
      v16 = ceil(trunc(MaxX) / v15) * v15;
      v23.origin.x = OUTLINED_FUNCTION_0_45();
      v17 = v16 - trunc(CGRectGetMaxX(v23));
      v24.origin.x = OUTLINED_FUNCTION_0_45();
      Width = CGRectGetWidth(v24) + v17;
      v25.origin.x = OUTLINED_FUNCTION_0_45();
      Height = CGRectGetHeight(v25);
    }

    v11 = a1;
    v12 = a2;
    v13 = Width;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_0_45();
  }

  sub_1D7F3EC6C(v11, v12, v13, Height);
}

void sub_1D7E7DD68(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_2_40(a1, a2, a3, a4);
  v9 = *(v8 + 48);
  sub_1D818E994();
  OUTLINED_FUNCTION_0_13();
  (*(v10 + 32))(v9 + *(v10 + 72) * a1, a2);
  *(*(a4 + 56) + 8 * a1) = a3;
  OUTLINED_FUNCTION_7_22();
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v11;
  }
}

Swift::Void __swiftcall BlueprintLayoutCollection.add(section:for:)(TeaUI::BlueprintLayoutCollectionSection *section, Swift::Int a2)
{
  memcpy(__dst, section, sizeof(__dst));
  v4 = *&__dst[3];
  v5 = __dst[8];
  v6 = __dst[9];
  sub_1D7E7E7A8();
  if (v14 == 1)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v13[0] = *(v2 + 1192);
    OUTLINED_FUNCTION_11_52();
    sub_1D7E7DFC8();
    *(v2 + 1192) = v13[0];
    v7 = (v2 + 1200);
    if (v5)
    {
      sub_1D7E7ED3C(a2, v15);
    }

    else
    {
      swift_isUniquelyReferenced_nonNull_native();
      v13[0] = *v7;
      sub_1D7E7DFC8();
      *v7 = v13[0];
    }

    sub_1D8190DB4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13[0] = *(v2 + 1208);
    sub_1D7E7EF78(v6, a2, isUniquelyReferenced_nonNull_native);
    *(v2 + 1208) = v13[0];
    sub_1D7E7E30C(__dst, v13);
    swift_isUniquelyReferenced_nonNull_native();
    v13[0] = *(v2 + 32);
    sub_1D7E7E368();
    *(v2 + 32) = v13[0];
    v9 = *v2;
    v17.origin.x = OUTLINED_FUNCTION_11_52();
    v17.size.height = v4;
    MaxX = CGRectGetMaxX(v17);
    if (v9 <= MaxX)
    {
      v9 = MaxX;
    }

    v11 = *(v2 + 8);
    v18.origin.x = OUTLINED_FUNCTION_11_52();
    v18.size.height = v4;
    MaxY = CGRectGetMaxY(v18);
    if (v11 > MaxY)
    {
      MaxY = v11;
    }

    *v2 = v9;
    *(v2 + 8) = MaxY;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D7E7DFC8()
{
  OUTLINED_FUNCTION_153();
  v8 = v7;
  OUTLINED_FUNCTION_155();
  sub_1D7E7E198(v9);
  OUTLINED_FUNCTION_4_10();
  if (v10)
  {
    __break(1u);
LABEL_12:
    sub_1D8192714();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_128_0();
  sub_1D7E7E098();
  if (OUTLINED_FUNCTION_70_0())
  {
    sub_1D7E7E198(v8);
    OUTLINED_FUNCTION_74_0();
    if (!v12)
    {
      goto LABEL_12;
    }

    v2 = v11;
  }

  if (v1)
  {
    v13 = (*(*v0 + 56) + 32 * v2);
    *v13 = v6;
    v13[1] = v5;
    v13[2] = v4;
    v13[3] = v3;
    OUTLINED_FUNCTION_170();
  }

  else
  {
    OUTLINED_FUNCTION_158();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_170();

    sub_1D7E7ECA0(v14, v15, v16);
  }
}

void sub_1D7E7E098()
{
  if (!qword_1EDBB2D80)
  {
    type metadata accessor for CGRect();
    v0 = sub_1D8192394();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2D80);
    }
  }
}

void sub_1D7E7E100()
{
  if (!qword_1EDBB2D90)
  {
    sub_1D7E188DC(255, &unk_1EDBB32F8);
    v0 = sub_1D8192394();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2D90);
    }
  }
}

unint64_t sub_1D7E7E1D8(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

uint64_t sub_1D7E7E238(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v7 = OUTLINED_FUNCTION_25_2(a1, a2);
  sub_1D7E7E198(v7);
  OUTLINED_FUNCTION_4_10();
  if (v8)
  {
    __break(1u);
LABEL_13:
    result = sub_1D8192714();
    __break(1u);
    return result;
  }

  v9 = OUTLINED_FUNCTION_79_0();
  a4(v9);
  v10 = OUTLINED_FUNCTION_29_2();
  if (v10)
  {
    v13 = OUTLINED_FUNCTION_97_0();
    sub_1D7E7E198(v13);
    OUTLINED_FUNCTION_31_2();
    if (!v14)
    {
      goto LABEL_13;
    }
  }

  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_43_1();
    OUTLINED_FUNCTION_169();

    __asm { BRAA            X4, X16 }
  }

  OUTLINED_FUNCTION_88_0(v10, v11, v12, *v4);
  OUTLINED_FUNCTION_169();
}

void sub_1D7E7E368()
{
  OUTLINED_FUNCTION_144();
  v2 = OUTLINED_FUNCTION_25_2(v0, v1);
  sub_1D7E7E198(v2);
  OUTLINED_FUNCTION_4_10();
  if (v4)
  {
    __break(1u);
LABEL_13:
    sub_1D8192714();
    __break(1u);
    return;
  }

  v5 = v3;
  sub_1D7E7E44C();
  if (OUTLINED_FUNCTION_29_2())
  {
    v6 = OUTLINED_FUNCTION_97_0();
    sub_1D7E7E198(v6);
    OUTLINED_FUNCTION_26_1();
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  if (v5)
  {
    OUTLINED_FUNCTION_139();

    sub_1D7EF71F8(v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_139();

    sub_1D7E7FC80(v11, v12, v13, v14);
  }
}

void sub_1D7E7E44C()
{
  if (!qword_1EDBB2DA0)
  {
    v0 = sub_1D8192394();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2DA0);
    }
  }
}

uint64_t sub_1D7E7E4AC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  memcpy(__dst, (v0 + 64), 0x235uLL);
  sub_1D7E4C1A0(__dst);

  return v0;
}

uint64_t sub_1D7E7E4FC(double a1, double a2, double a3, double a4)
{
  if (*(v4 + 56))
  {
    MaxY = CGRectGetMaxY(*&a1);
    type metadata accessor for BlueprintLayoutCollectionSectionCursor();
    swift_allocObject();
    OUTLINED_FUNCTION_1_37();
    v21 = MaxY;
  }

  else
  {
    MaxX = CGRectGetMaxX(*&a1);
    type metadata accessor for BlueprintLayoutCollectionSectionCursor();
    swift_allocObject();
    OUTLINED_FUNCTION_1_37();
    v14 = MaxX;
  }

  return sub_1D7E79998(v14, v21, v15, v16, v17, v18, v19, v20, v6, v7, v8, v9, v10, v11, v12, v13, 0, 0);
}

uint64_t sub_1D7E7E594()
{
  sub_1D7E7E4AC();

  return swift_deallocClassInstance();
}

unint64_t sub_1D7E7E5EC(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_1D818E994();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_1D7E72E88(&qword_1EDBBC6B0, MEMORY[0x1E6969C28]);
    v9 = sub_1D8190ED4();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

void sub_1D7E7E7A8()
{
  OUTLINED_FUNCTION_10_9();
  v3 = 0uLL;
  if (v4)
  {
    v5 = v2;
    v6 = sub_1D7E7E198(v1);
    if (v7)
    {
      v8 = 0;
      v9 = (*(v5 + 56) + 32 * v6);
      v3 = *v9;
      v10 = v9[1];
    }

    else
    {
      v8 = 1;
      v10 = 0uLL;
      v3 = 0uLL;
    }
  }

  else
  {
    v8 = 1;
    v10 = 0uLL;
  }

  *v0 = v3;
  *(v0 + 16) = v10;
  *(v0 + 32) = v8;
}

uint64_t sub_1D7E7E8B8(const void *a1, const void *a2, const void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_1D7E7EA50(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_1D7E7E920(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v16 = MEMORY[0x1E69E7CC0];
  sub_1D7E7E898(0, v5, 0);
  v6 = v16;
  for (i = a3 + 32; ; i += 40)
  {
    a1(&v15, i);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v10 = v15;
    v16 = v6;
    v12 = *(v6 + 16);
    v11 = *(v6 + 24);
    if (v12 >= v11 >> 1)
    {
      v14 = v15;
      sub_1D7E7E898(v11 > 1, v12 + 1, 1);
      v10 = v14;
      v6 = v16;
    }

    *(v6 + 16) = v12 + 1;
    *(v6 + 16 * v12 + 32) = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_1D7E7EA50(const void *a1, const void *a2, const void *a3, uint64_t a4)
{
  v5 = v4;
  v21 = a4;
  v9 = *v5;
  v10 = sub_1D818EDE4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1D818E794();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v24, a2, sizeof(v24));
  memcpy(v25, a3, sizeof(v25));
  sub_1D818E784();
  v15 = sub_1D818E764();
  v17 = v16;
  (*(v12 + 8))(v14, v11);
  v5[2] = v15;
  v5[3] = v17;
  swift_weakInit();
  v18 = *(v9 + 96);
  v22 = *(v9 + 80);
  v23 = v18;
  type metadata accessor for BlueprintLayoutTransition.SidecarKey();
  swift_getWitnessTable();
  v5[310] = sub_1D8190D24();
  sub_1D818EDD4();
  sub_1D818EE04();
  swift_allocObject();
  v5[311] = sub_1D818EDF4();
  memcpy(v5 + 4, a1, 0x260uLL);
  memcpy(v5 + 80, v24, 0x4E8uLL);
  memcpy(v5 + 237, v25, 0x235uLL);
  v5[308] = v21;
  return v5;
}

void sub_1D7E7ECA0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = OUTLINED_FUNCTION_3_37(a1, a3 + 8 * (a1 >> 6));
  *(v4[6] + 8 * v3) = v5;
  v6 = (v4[7] + 32 * v3);
  *v6 = v7;
  v6[1] = v8;
  v6[2] = v9;
  v6[3] = v10;
  v11 = v4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_8_15(v4, v13);
  }
}

uint64_t sub_1D7E7ED00()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D7E7ED3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D7E7E198(a1);
  v6 = v5;
  v7 = 0uLL;
  v8 = 0uLL;
  if (v5)
  {
    v9 = result;
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1D7E7E098();
    sub_1D8192374();
    v10 = (*(v13 + 56) + 32 * v9);
    v11 = *v10;
    v12 = v10[1];
    type metadata accessor for CGRect();
    result = sub_1D8192384();
    v7 = v11;
    v8 = v12;
    *v2 = v13;
  }

  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = (v6 & 1) == 0;
  return result;
}

uint64_t sub_1D7E7EE40()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  v3 = v2;
  OUTLINED_FUNCTION_3_98();
  *v4 = v3;
  *v4 = *v1;
  v3[589] = v5;
  v3[590] = v0;

  if (v0)
  {
    memcpy(v3 + 286, v3 + 144, 0x235uLL);
    sub_1D7E4C1A0((v3 + 286));
  }

  else
  {
    memcpy(v3 + 357, v3 + 144, 0x235uLL);
    sub_1D7E4C1A0((v3 + 357));
  }

  OUTLINED_FUNCTION_62();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D7E7EFA4()
{
  v2 = *(*(v0 + 4616) + 584);
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = *(v0 + 4680);
  v5 = *(v0 + 4672);
  v34 = *(v0 + 4640);
  v6 = *(v0 + 4608);
  sub_1D7E9EBD8(0, &qword_1ECA10420, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6720]);
  v33 = *(v6 + 600);
  v7 = (v2 + 32);
  v32 = *(v5 + 16);
  v31 = v4 + 7;
  v8 = v5;
  do
  {
    v38 = *(v0 + 4712);
    v9 = *(v0 + 4688);
    v10 = *(v0 + 4664);
    v11 = *(v0 + 4656);
    v35 = *(v0 + 4648);
    v36 = *(v0 + 4608);
    v12 = *(v0 + 4600);
    memcpy((v0 + 16), v7, 0x235uLL);
    v32(v9, v12, v10);
    v13 = (*(v8 + 80) + 629) & ~*(v8 + 80);
    v1 = (v31 + v13) & 0xFFFFFFFFFFFFFFF8;
    v14 = swift_allocObject();
    *(v14 + 2) = v34[10];
    *(v14 + 3) = v11;
    *(v14 + 4) = v34[12];
    *(v14 + 5) = v34[13];
    *(v14 + 6) = v35;
    *(v14 + 7) = v34[15];
    memcpy(v14 + 64, (v0 + 16), 0x235uLL);
    (*(v8 + 32))(&v14[v13], v9, v10);
    *&v14[v1] = v36;
    *&v14[(v1 + 15) & 0xFFFFFFFFFFFFFFF8] = v38;
    sub_1D7E222B8(v0 + 16, v0 + 3424);
    sub_1D7E222B8(v0 + 16, v0 + 3992);

    v15 = sub_1D818F4C4();
    sub_1D8190DB4();
    v16 = sub_1D8190EE4();

    [v15 setName_];

    [v33 addOperation_];
    sub_1D7E4C1A0(v0 + 16);
    v7 += 568;
    --v3;
  }

  while (v3);
  if ((sub_1D7E3A3F4(3, *(v0 + 4696)) & 1) == 0)
  {
    v25 = *(v0 + 4608);
    *(v0 + 4728) = CACurrentMediaTime();
    *(v0 + 4736) = *(v25 + 584);
    v26 = sub_1D81919E4();
    v27._object = 0x80000001D81D2BB0;
    v27._countAndFlagsBits = 0xD00000000000002BLL;
    BlueprintPipelineRecorder.log(_:type:)(v27, v26);

    v28 = swift_task_alloc();
    *(v0 + 4744) = v28;
    *v28 = v0;
    v28[1] = sub_1D808B5D0;
    v29 = *(v0 + 4608);
    v30 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE44AD8](v28, &unk_1D81B5990, v29, v30);
  }

  else
  {
LABEL_5:
    v39 = *(v0 + 4712);
    v37 = *(v0 + 4648);
    v40 = *(v0 + 4608);
    v17 = *(v0 + 4592);
    OUTLINED_FUNCTION_0_8();
    swift_allocObject();
    OUTLINED_FUNCTION_24_21();
    v18 = swift_allocObject();
    OUTLINED_FUNCTION_7_54(v18)[9] = v39;
    OUTLINED_FUNCTION_0_8();
    swift_allocObject();
    OUTLINED_FUNCTION_24_21();
    v19 = swift_allocObject();
    v20 = OUTLINED_FUNCTION_18_31(v19, v37);
    v21 = OUTLINED_FUNCTION_5_56(v20, v40);
    *v17 = v22;
    v17[1] = v1;
    v17[2] = sub_1D7E89128;
    v17[3] = v21;

    OUTLINED_FUNCTION_5_37();

    return v23();
  }
}

uint64_t sub_1D7E7F440()
{
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_129();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v1 = type metadata accessor for Blueprint();
  v8 = *(*(v1 - 8) + 80);

  sub_1D7E57C40(*(v0 + 304), *(v0 + 312), *(v0 + 320));
  sub_1D7E57C40(*(v0 + 328), *(v0 + 336), *(v0 + 344));
  sub_1D7E57C40(*(v0 + 352), *(v0 + 360), *(v0 + 368));
  v2 = v0 + ((v8 + 629) & ~v8);

  if (*(v2 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 16);
  }

  v3 = *(v1 + 56);
  type metadata accessor for BlueprintSection();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1D818F394();
  OUTLINED_FUNCTION_4_3();
  (*(v4 + 8))(v2 + v3);
  v5 = *(v1 + 60);
  type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_7_5();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1D818F784();
  OUTLINED_FUNCTION_4_3();
  (*(v6 + 8))(v2 + v5);

  return swift_deallocObject();
}

uint64_t sub_1D7E7F744()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7E7F778()
{

  return swift_deallocObject();
}

uint64_t sub_1D7E7F7B8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7E7F800()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_3_98();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v5 = v4;
  *(v6 + 2376) = v0;

  OUTLINED_FUNCTION_62();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

unint64_t sub_1D7E7F908()
{
  result = qword_1EDBB0970;
  if (!qword_1EDBB0970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB0970);
  }

  return result;
}

uint64_t sub_1D7E7F95C()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_5_37();

  return v0();
}

uint64_t sub_1D7E7F9B4()
{
  memcpy(__dst, (v0 + 16), 0x235uLL);
  sub_1D7E4C1A0(__dst);

  return v0;
}

void sub_1D7E7F9FC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_2_40(a1, a2, a3, a4);
  OUTLINED_FUNCTION_11_13(v4, v5, v6, v7);
  if (v10)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_5_19(v8, v9);
  }
}

uint64_t sub_1D7E7FA30()
{
  sub_1D7E7F9B4();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7E7FA64()
{
  OUTLINED_FUNCTION_9_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_12();
  v5 = v4;
  OUTLINED_FUNCTION_21_17();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v8 = v7;
  *(v5 + 352) = v0;

  if (!v0)
  {
    *(v5 + 360) = v3;
  }

  OUTLINED_FUNCTION_62();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D7E7FB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_16_20();
  OUTLINED_FUNCTION_100_2();
  v27 = v12[45];
  v13 = v12[32];
  v15 = v12[30];
  v14 = v12[31];
  v17 = v12[19];
  v16 = v12[20];
  (*(v12[37] + 8))(v12[40], v12[33]);
  (*(v14 + 16))(v13, v16, v15);
  sub_1D7E7FD28(v13, v27, v17);

  OUTLINED_FUNCTION_5_37();
  OUTLINED_FUNCTION_17_1();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, v27, a10, a11, a12);
}

void sub_1D7E7FC80(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_2_40(a1, a2, a3, a4);
  *(*(v6 + 48) + 8 * v5) = v7;
  memcpy((*(v6 + 56) + 160 * v5), v8, 0xA0uLL);
  OUTLINED_FUNCTION_7_22();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v9;
  }
}

uint64_t sub_1D7E7FD28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_0_98();
  v6 = type metadata accessor for BlueprintModifierResult();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  OUTLINED_FUNCTION_0_98();
  result = type metadata accessor for BlueprintPipelineProcessingResult();
  *(a3 + *(result + 52)) = a2;
  return result;
}

uint64_t sub_1D7E7FDDC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  v3 = v2;
  OUTLINED_FUNCTION_21_17();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v6 = v5;
  *(v3 + 216) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_62();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_5_37();

    return v10();
  }
}

uint64_t sub_1D7E7FF00()
{
  memcpy(__dst, (v0 + 24), 0x235uLL);
  sub_1D7E4C1A0(__dst);
  return swift_deallocClassInstance();
}

uint64_t OUTLINED_FUNCTION_128_2()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1D7E7FFB0()
{
  sub_1D81921A4();
  MEMORY[0x1DA713260](0x3D746C757365727BLL, 0xE800000000000000);
  OUTLINED_FUNCTION_0_98();
  type metadata accessor for BlueprintModifierResult();
  swift_getWitnessTable();
  sub_1D8192604();
  MEMORY[0x1DA713260](0x74696D6D6F63202CLL, 0xEA00000000003D73);
  v0 = sub_1D81925B4();
  MEMORY[0x1DA713260](v0);

  MEMORY[0x1DA713260](125, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D7E800F0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  v3 = v2;
  OUTLINED_FUNCTION_21_17();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v6 = v5;
  *(v3 + 208) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_62();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D7E801F0()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[16];
  v3 = v0[11];
  v2 = v0[12];
  v4 = swift_task_alloc();
  v0[27] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_35_2();
  v0[28] = v5;
  *v5 = v6;
  v5[1] = sub_1D7E94F7C;
  OUTLINED_FUNCTION_101_2();

  return sub_1D7E8031C();
}

uint64_t Then.__deallocating_deinit()
{
  Then.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7E8031C(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 112) = a5;
  *(v6 + 120) = v5;
  *(v6 + 273) = a3;
  *(v6 + 272) = a2;
  *(v6 + 96) = a1;
  *(v6 + 104) = a4;
  v7 = sub_1D818FDC4();
  *(v6 + 128) = v7;
  *(v6 + 136) = *(v7 - 8);
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();
  v8 = sub_1D818FD84();
  *(v6 + 160) = v8;
  *(v6 + 168) = *(v8 - 8);
  *(v6 + 176) = swift_task_alloc();
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7E804C4, 0, 0);
}

void sub_1D7E804C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_137_2();
  OUTLINED_FUNCTION_64_6();
  *(v10 + 208) = OBJC_IVAR____TtC5TeaUI25BlueprintPipelineRecorder_signposter;
  v12 = sub_1D7E55B54(*(v10 + 272));
  v14 = v13;
  *(v10 + 216) = v12;
  *(v10 + 274) = v13;
  sub_1D818FD94();
  sub_1D818FD64();
  v15 = sub_1D818FD94();
  sub_1D8191B34();
  if (sub_1D8191E34())
  {
    if ((v14 & 1) == 0)
    {
      if (v12)
      {
LABEL_8:
        v17 = OUTLINED_FUNCTION_8_26();
        *v17 = 0;
        v18 = sub_1D818FD74();
        OUTLINED_FUNCTION_113_1(&dword_1D7DFF000, v19, v20, v18, v21, "");
        MEMORY[0x1DA715D00](v17, -1, -1);
        goto LABEL_9;
      }

      __break(1u);
    }

    if (v12 >> 32)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_87_1();
      if (v16)
      {
LABEL_14:
        __break(1u);
        return;
      }

      if (v12 >> 16 <= 0x10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_9:

  OUTLINED_FUNCTION_85_4();
  OUTLINED_FUNCTION_46_10();
  v22();
  sub_1D818FDF4();
  OUTLINED_FUNCTION_8_5();
  *(v10 + 224) = OUTLINED_FUNCTION_135_2();
  *(v10 + 232) = *(v11 + 8);
  *(v10 + 240) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v23 = OUTLINED_FUNCTION_87_0();
  v24(v23);
  CACurrentMediaTime();
  OUTLINED_FUNCTION_62();
  *(v10 + 248) = sub_1D7E55D2C(v25, v26, v27, v28);
  OUTLINED_FUNCTION_39_9();
  v40 = v29;
  swift_task_alloc();
  OUTLINED_FUNCTION_35_2();
  *(v10 + 256) = v30;
  *v30 = v31;
  OUTLINED_FUNCTION_104_2(v30);
  OUTLINED_FUNCTION_134_2();

  v33(v32, v33, v34, v35, v36, v37, v38, v39, v40, a10);
}

void *_s5TeaUI16StatusBannerablePAAE26statusBannerViewControllerAA0cF19VisibilityProviding_So06UIViewH0CXcSgvg_0()
{
  type metadata accessor for StatusBannerContainerController();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC5TeaUI31StatusBannerContainerController_statusBannerViewController);
    v3 = v2;
  }

  else
  {
    v4 = [v0 ts_parentVC];
    if (v4)
    {
      v5 = v4;
      v2 = _s5TeaUI16StatusBannerablePAAE26statusBannerViewControllerAA0cF19VisibilityProviding_So06UIViewH0CXcSgvg_0();
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t OUTLINED_FUNCTION_137_0()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_137_1()
{

  return type metadata accessor for BlueprintItem();
}

uint64_t OUTLINED_FUNCTION_135_1()
{

  return sub_1D81922B4();
}

uint64_t OUTLINED_FUNCTION_135_2()
{

  return sub_1D818FDE4();
}

uint64_t sub_1D7E80824()
{

  v0 = sub_1D818F214();
  sub_1D7E734B0(v0);

  v1 = sub_1D818F214();
  sub_1D7E80A18(v1);
}

uint64_t OUTLINED_FUNCTION_103_1()
{

  return type metadata accessor for Blueprint();
}

void OUTLINED_FUNCTION_103_3(char a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  LOBYTE(STACK[0x528]) = a1;

  sub_1D80E9C84(&STACK[0x528], a8);
}

uint64_t OUTLINED_FUNCTION_134_1()
{

  return BlueprintProviderType.blueprint.getter(v0, v1);
}

uint64_t sub_1D7E80970()
{
  OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_61_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_14(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_13_27(v1);
  OUTLINED_FUNCTION_64();

  return sub_1D7E80BA0(v3, v4, v5, v6);
}

Swift::Void __swiftcall Debounce.invalidate()()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    [v1 invalidate];
  }
}

uint64_t sub_1D7E80A18(uint64_t result)
{
  if (result)
  {
    v1 = result;

    sub_1D818F8B4();
    v2 = v8;
    v3 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v1;
    v6 = *(v3 + 8);

    v6(sub_1D7E9DFC4, v5, v2, v3);

    return __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  return result;
}

uint64_t sub_1D7E80B28()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7E80B60()
{

  return swift_deallocObject();
}

uint64_t sub_1D7E80BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  *v8 = v4;
  v8[1] = sub_1D7E5B0D4;

  return sub_1D7E80CE4(a1, a3, a4, AssociatedTypeWitness, v10);
}

uint64_t sub_1D7E80CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[13] = a5;
  v6[14] = v5;
  v6[11] = a2;
  v6[12] = a4;
  v6[10] = a1;
  v6[15] = *v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  v6[2] = a4;
  v6[3] = a5;
  v6[4] = AssociatedConformanceWitness;
  v6[5] = v10;
  v11 = type metadata accessor for BlueprintPipelineUpdate.Action();
  v6[16] = v11;
  v6[17] = *(v11 - 8);
  v6[18] = swift_task_alloc();
  v6[6] = a4;
  v6[7] = a5;
  v6[8] = AssociatedConformanceWitness;
  v6[9] = v10;
  v12 = type metadata accessor for BlueprintPipelineUpdate();
  v6[19] = v12;
  v13 = sub_1D8191E84();
  v6[20] = v13;
  v6[21] = *(v13 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = *(v12 - 8);
  v6[24] = swift_task_alloc();
  sub_1D8191534();
  v6[25] = sub_1D8191524();
  v15 = sub_1D81914D4();
  v6[26] = v15;
  v6[27] = v14;

  return MEMORY[0x1EEE6DFA0](sub_1D7E81964, v15, v14);
}

void Debounce.run(finished:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 5);
  if (v6)
  {
    [v6 invalidate];
  }

  v7 = objc_opt_self();
  v8 = v2[2];
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = *(*&v5 + 80);
  v10[3] = v9;
  v10[4] = a1;
  v10[5] = a2;
  v14[4] = sub_1D7FEFB78;
  v14[5] = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D7F845F8;
  v14[3] = &block_descriptor_37;
  v11 = _Block_copy(v14);

  v12 = [v7 scheduledTimerWithTimeInterval:0 repeats:v11 block:v8];
  _Block_release(v11);
  v13 = *(v2 + 5);
  *(v2 + 5) = v12;
}

uint64_t sub_1D7E81124()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7E8115C()
{

  OUTLINED_FUNCTION_7_2();

  return swift_deallocObject();
}

uint64_t sub_1D7E811AC()
{
  TupleTypeMetadata = sub_1D7E813FC();
  if (v1 <= 0x3F)
  {
    sub_1D7E81424();
    TupleTypeMetadata = v2;
    if (v3 <= 0x3F)
    {
      sub_1D7E81698();
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        sub_1D7E817D8();
        TupleTypeMetadata = v6;
        if (v7 <= 0x3F)
        {
          MEMORY[0x1EEE9AC00](v6);
          type metadata accessor for Blueprint();
          sub_1D7E81588();
          sub_1D7E81634(255, qword_1EDBB68A8, type metadata accessor for BlueprintViewActionResponse, MEMORY[0x1E69E6720]);
          TupleTypeMetadata = swift_getTupleTypeMetadata();
          if (v8 <= 0x3F)
          {
            type metadata accessor for Blueprint();
            TupleTypeMetadata = swift_getTupleTypeMetadata2();
            if (v9 <= 0x3F)
            {
              TupleTypeMetadata = swift_getTupleTypeMetadata2();
              if (v10 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return TupleTypeMetadata;
}

ValueMetadata *sub_1D7E813FC()
{
  result = qword_1EDBBA0D8;
  if (!qword_1EDBBA0D8)
  {
    result = &type metadata for BlueprintAnimation;
    atomic_store(&type metadata for BlueprintAnimation, &qword_1EDBBA0D8);
  }

  return result;
}

void sub_1D7E81424()
{
  if (!qword_1EDBBA680)
  {
    sub_1D7E81588();
    sub_1D7E81634(255, qword_1EDBB68A8, type metadata accessor for BlueprintViewActionResponse, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBBA680);
    }
  }
}

unint64_t sub_1D7E81588()
{
  result = qword_1EDBBA670;
  if (!qword_1EDBBA670)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBBA670);
  }

  return result;
}

void sub_1D7E815E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_14();
    v4 = sub_1D8191E84();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7E81634(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D7E81698()
{
  if (!qword_1EDBBA688)
  {
    sub_1D7E81588();
    sub_1D7E81634(255, qword_1EDBB68A8, type metadata accessor for BlueprintViewActionResponse, MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDBBA688);
    }
  }
}

void sub_1D7E817D8()
{
  if (!qword_1EDBBA678)
  {
    v0 = sub_1D7E81588();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBBA678);
    }
  }
}

unint64_t sub_1D7E81880()
{
  result = type metadata accessor for BlueprintPipelineUpdate.Action();
  if (v1 <= 0x3F)
  {
    result = sub_1D7E31228();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for BlueprintBookmark();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Blueprint();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D7E81964()
{
  OUTLINED_FUNCTION_100_2();
  sub_1D7E81BE0(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 176));
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  if (OUTLINED_FUNCTION_116_0(v1) == 1)
  {
    v3 = *(v0 + 80);

    v4 = OUTLINED_FUNCTION_112();
    v5(v4);
    *v3 = 0;
    OUTLINED_FUNCTION_112_2();

    OUTLINED_FUNCTION_5_37();

    return v6();
  }

  else
  {
    v8 = *(v0 + 120);
    (*(*(v0 + 184) + 32))(*(v0 + 192), v1, v2);
    v9 = *(v8 + 104);
    v10 = *(v8 + 88);
    v11 = OUTLINED_FUNCTION_110();
    v12(v11);
    v15 = (*(v9 + 56) + **(v9 + 56));
    v13 = swift_task_alloc();
    *(v0 + 224) = v13;
    *v13 = v0;
    v13[1] = sub_1D7E94808;
    v14 = *(v0 + 192);

    return v15(v14, v10, v9);
  }
}

uint64_t sub_1D7E81BE0@<X0>(uint64_t (*a1)(uint64_t a1, uint64_t a2)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v593 = a1;
  v573 = a4;
  v7 = *v4;
  v578 = *(*v4 + 96);
  v577 = *(v7 + 80);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedConformanceWitness();
  *&v586 = a2;
  *(&v586 + 1) = a3;
  *&v587 = AssociatedConformanceWitness;
  *(&v587 + 1) = v9;
  v567 = type metadata accessor for BlueprintPipelineUpdate.Action();
  MEMORY[0x1EEE9AC00](v567);
  v569 = &v547 - v10;
  v570 = type metadata accessor for BlueprintBookmark();
  MEMORY[0x1EEE9AC00](v570);
  v553 = &v547 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v558 = &v547 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v549 = &v547 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v559 = &v547 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v548 = &v547 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v566 = &v547 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v565 = (&v547 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v556 = &v547 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v571 = &v547 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v562 = (&v547 - v29);
  *&v586 = a2;
  *(&v586 + 1) = a3;
  *&v587 = AssociatedConformanceWitness;
  *(&v587 + 1) = v9;
  v30 = type metadata accessor for BlueprintModifierResult();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = (&v547 - v32);
  *&v579 = a2;
  *(&v579 + 1) = a3;
  *&v586 = a2;
  *(&v586 + 1) = a3;
  v580 = AssociatedConformanceWitness;
  *&v587 = AssociatedConformanceWitness;
  *(&v587 + 1) = v9;
  v574 = v9;
  v34 = type metadata accessor for Blueprint();
  v35 = *(v34 - 8);
  v581 = v34;
  v582 = v35;
  MEMORY[0x1EEE9AC00](v34);
  v555 = &v547 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v557 = &v547 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v554 = &v547 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v564 = &v547 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v547 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v551 = &v547 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v561 = &v547 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v552 = &v547 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v563 = &v547 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v550 = &v547 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v560 = &v547 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v547 - v59;
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v547 - v62;
  MEMORY[0x1EEE9AC00](v64);
  v568 = &v547 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v575 = &v547 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v547 - v69;
  MEMORY[0x1EEE9AC00](v71);
  v572 = v4;
  v576 = &v547 - v72;
  BlueprintProviderType.blueprint.getter(v577, v578);
  (*(v31 + 16))(v33, v593, v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v229 = v581;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v231 = *(TupleTypeMetadata3 + 48);
      v232 = (v33 + *(TupleTypeMetadata3 + 64));
      v233 = v582;
      v234 = v33;
      v235 = *(v582 + 2);
      v235(v63, v234, v229);
      v578 = v234;
      v577 = v231;
      v236 = v556;
      sub_1D7E2B108(v231 + v234, v556);
      if (*(v572 + *(*v572 + 168)) == 1)
      {
        sub_1D7E0631C(255, &qword_1EDBBA670);
        swift_getTupleTypeMetadata2();
        v570 = v232;
        v237 = v569;
        v235(v569, v63, v229);
        v238 = v576;
        - infix<A, B>(_:_:)();
        swift_storeEnumTagMultiPayload();
        v239 = v593;
        v567 = sub_1D7E859F8(v63, v593);
        v566 = v240;
        v593 = sub_1D7E86B60(v239);
        v572 = v241;
        v242 = v571;
        sub_1D7E85994(v236, v571);
        v243 = v229;
        v244 = *(v233 + 4);
        v245 = v575;
        v244(v575, v238, v243);
        v246 = v568;
        v244(v568, v63, v243);
        v247 = v574;
        v546[1] = v574;
        v248 = v580;
        v546[0] = v580;
        v249 = *(&v579 + 1);
        v250 = v579;
        v545 = v579;
        v251 = v573;
        sub_1D7E87FD8(v237, v567, v566, v593, v572, v242, v245, v246, v573);
        *&v586 = v250;
        *(&v586 + 1) = v249;
        *&v587 = v248;
        *(&v587 + 1) = v247;
        v252 = type metadata accessor for BlueprintPipelineUpdate();
        __swift_storeEnumTagSinglePayload(v251, 0, 1, v252);
        sub_1D8022FD0(v570);
        goto LABEL_22;
      }

      sub_1D7E2BBA0(v236);
      (*(v233 + 1))(v63, v229);
      v352 = *(v233 + 4);
      v353 = v575;
      v354 = v578;
      v352(v575, v578, v229);
      sub_1D7E85994(v577 + v354, v571);
      v355 = *(v232 + 1);
      v586 = *v232;
      v587 = v355;
      v588 = *(v232 + 2);
      v356 = v569;
      sub_1D8022F74(&v586, v569);
      swift_storeEnumTagMultiPayload();
      v357 = v353;
      v358 = v593;
      v582 = sub_1D7E859F8(v357, v593);
      v578 = v359;
      sub_1D8022FD0(&v586);
      v360 = sub_1D7E86B60(v358);
      v362 = v361;
      v363 = v568;
      v352(v568, v576, v229);
      v119 = v574;
      v546[1] = v574;
      v120 = v580;
      v546[0] = v580;
      v121 = *(&v579 + 1);
      v122 = v579;
      v545 = v579;
      v123 = v573;
      v124 = v573;
      v125 = v356;
      v126 = v582;
      v127 = v578;
      v128 = v360;
      v129 = v362;
      v130 = v571;
      v131 = v363;
      goto LABEL_46;
    case 2:
      v175 = v581;
      v176 = *(swift_getTupleTypeMetadata2() + 48);
      v177 = v582;
      v178 = *(v582 + 2);
      v178(v60, v33, v175);
      v179 = v565;
      sub_1D7E2B108(v176 + v33, v565);
      v180 = *(v572 + *(*v572 + 168));
      v578 = v33;
      if (v180 == 1)
      {
        sub_1D7E0631C(255, &qword_1EDBBA670);
        swift_getTupleTypeMetadata2();
        v181 = v569;
        v178(v569, v60, v175);
        v182 = v576;
        v577 = v176;
        v183 = v574;
        - infix<A, B>(_:_:)();
        swift_storeEnumTagMultiPayload();
        v184 = v593;
        v570 = sub_1D7E859F8(v60, v593);
        v567 = v185;
        v593 = sub_1D7E86B60(v184);
        v572 = v186;
        v187 = v571;
        sub_1D7E85994(v565, v571);
        v188 = *(v177 + 4);
        v189 = v575;
        v188(v575, v182, v175);
        v190 = v568;
        v188(v568, v60, v175);
        v546[1] = v183;
        v191 = v580;
        v546[0] = v580;
        v192 = *(&v579 + 1);
        v193 = v579;
        v545 = v579;
        v194 = v573;
        sub_1D7E87FD8(v181, v570, v567, v593, v572, v187, v189, v190, v573);
        *&v586 = v193;
        *(&v586 + 1) = v192;
        *&v587 = v191;
        *(&v587 + 1) = v183;
        v94 = type metadata accessor for BlueprintPipelineUpdate();
        v95 = v194;
        goto LABEL_13;
      }

      sub_1D7E2BBA0(v179);
      (*(v177 + 1))(v60, v175);
      v322 = *(v177 + 4);
      v323 = v575;
      v324 = v578;
      v322(v575, v578, v175);
      sub_1D7E85994(v176 + v324, v571);
      v325 = v569;
      swift_storeEnumTagMultiPayload();
      v326 = v593;
      v582 = sub_1D7E859F8(v323, v593);
      v578 = v327;
      v328 = sub_1D7E86B60(v326);
      v593 = v329;
      v330 = v568;
      v322(v568, v576, v175);
      goto LABEL_43;
    case 3:
      v195 = sub_1D7E0631C(255, &qword_1EDBBA670);
      v196 = v581;
      v565 = v195;
      v197 = swift_getTupleTypeMetadata3();
      v198 = *(v197 + 48);
      v199 = *(v197 + 64);
      v200 = v582;
      v201 = v560;
      v570 = *(v582 + 2);
      v570(v560, v33, v196);
      sub_1D7E0E768(&v198[v33], &v586);
      v577 = v199;
      v202 = v199 + v33;
      v203 = v566;
      sub_1D7E2B108(v202, v566);
      if (*(v572 + *(*v572 + 168)) == 1)
      {
        v564 = v198;
        v578 = v33;
        v204 = *(&v587 + 1);
        v205 = v588;
        __swift_project_boxed_opaque_existential_1(&v586, *(&v587 + 1));
        v206 = (*(v205 + 96))(v204, v205);
        v207 = v576;
        if (v206)
        {
          sub_1D7E2BBA0(v566);
          v208 = *(v582 + 1);
          v208(v560, v196);
          v208(v207, v196);
          v589 = v579;
          v590 = v580;
          v591 = v574;
          v209 = type metadata accessor for BlueprintPipelineUpdate();
          __swift_storeEnumTagSinglePayload(v573, 1, 1, v209);
          __swift_destroy_boxed_opaque_existential_1Tm(&v586);
          v210 = v578;
          sub_1D7E2BBA0(v577 + v578);
          __swift_destroy_boxed_opaque_existential_1Tm(&v564[v210]);
          v211 = v210;
          v212 = v196;
          return (v208)(v211, v212);
        }

        v419 = v196;
        v420 = *(swift_getTupleTypeMetadata2() + 48);
        v421 = v569;
        v422 = v560;
        v570(v569, v560, v196);
        sub_1D7E0E768(&v586, v421 + v420);
        swift_storeEnumTagMultiPayload();
        v423 = v593;
        v570 = sub_1D7E859F8(v422, v593);
        v567 = v424;
        v593 = sub_1D7E86B60(v423);
        v572 = v425;
        v426 = v571;
        sub_1D7E85994(v566, v571);
        v427 = *(v582 + 4);
        v428 = v575;
        v427(v575, v207, v419);
        v429 = v568;
        v427(v568, v422, v419);
        v430 = v574;
        v546[1] = v574;
        v431 = v580;
        v546[0] = v580;
        v432 = *(&v579 + 1);
        v433 = v579;
        v545 = v579;
        v434 = v573;
        sub_1D7E87FD8(v421, v570, v567, v593, v572, v426, v428, v429, v573);
        *&v589 = v433;
        *(&v589 + 1) = v432;
        v590 = v431;
        v591 = v430;
        v435 = type metadata accessor for BlueprintPipelineUpdate();
        __swift_storeEnumTagSinglePayload(v434, 0, 1, v435);
        __swift_destroy_boxed_opaque_existential_1Tm(&v586);
        v253 = v578;
        sub_1D7E2BBA0(v577 + v578);
        v416 = &v589 + 1;
        goto LABEL_66;
      }

      sub_1D7E2BBA0(v203);
      v331 = *(v200 + 1);
      v331(v201, v196);
      __swift_destroy_boxed_opaque_existential_1Tm(&v586);
      v332 = *(v200 + 4);
      v333 = v550;
      v582 = (v200 + 32);
      v578 = v332;
      (v332)(v550, v33, v196);
      sub_1D7E17C84(&v198[v33], &v586);
      v334 = v548;
      sub_1D7E85994(v577 + v33, v548);
      v335 = *(&v587 + 1);
      v336 = v588;
      __swift_project_boxed_opaque_existential_1(&v586, *(&v587 + 1));
      v337 = (*(v336 + 96))(v335, v336);
      v338 = v576;
      if (v337)
      {
        sub_1D7E2BBA0(v334);
        v331(v333, v196);
        v331(v338, v196);
        goto LABEL_55;
      }

      swift_getWitnessTable();
      if (sub_1D8191874())
      {
        v436 = v569;
      }

      else
      {
        v436 = v569;
        sub_1D7E0E768(&v586, v569);
        *(v436 + 40) = 0;
      }

      swift_storeEnumTagMultiPayload();
      v534 = v550;
      v535 = v593;
      v577 = sub_1D7E859F8(v550, v593);
      v570 = v536;
      v593 = sub_1D7E86B60(v535);
      v572 = v537;
      v380 = v571;
      sub_1D7E85994(v334, v571);
      v381 = v575;
      v538 = v578;
      (v578)(v575, v338, v196);
      v382 = v568;
      (v538)(v568, v534, v196);
      v383 = v574;
      v546[1] = v574;
      v384 = v580;
      v546[0] = v580;
      v385 = *(&v579 + 1);
      v386 = v579;
      v545 = v579;
      v387 = v573;
      v388 = v573;
      v389 = v436;
      v390 = v577;
      goto LABEL_80;
    case 4:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      qmemcpy(&v547 - 6, "blueprint diff bookmark", 23);
      BYTE7(v545) = 32;
      strcpy(v546, "n ");
      *(&v545 + 1) = *"animation ";
      v132 = v581;
      *&v586 = v581;
      v566 = sub_1D7E0631C(255, &qword_1EDBBA670);
      *(&v586 + 1) = v566;
      *&v587 = v570;
      *(&v587 + 1) = &type metadata for BlueprintAnimation;
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v134 = TupleTypeMetadata[12];
      v135 = TupleTypeMetadata[16];
      v136 = (v33 + TupleTypeMetadata[20]);
      v137 = v582;
      v138 = *(v582 + 2);
      v139 = v563;
      v577 = (v582 + 16);
      v570 = v138;
      v138(v563, v33, v132);
      sub_1D7E0E768(v33 + v134, &v586);
      v140 = v559;
      sub_1D7E2B108(&v135[v33], v559);
      if (*(v572 + *(*v572 + 168)) == 1)
      {
        v562 = v136;
        v564 = v135;
        v565 = v134;
        v578 = v33;
        v141 = *(&v587 + 1);
        v142 = v588;
        __swift_project_boxed_opaque_existential_1(&v586, *(&v587 + 1));
        v143 = (*(v142 + 96))(v141, v142);
        if (v143)
        {
          sub_1D7E2BBA0(v140);
          v144 = v581;
          v145 = *(v582 + 1);
          v145(v563, v581);
          v145(v576, v144);
          v589 = v579;
          v590 = v580;
          v591 = v574;
          v146 = type metadata accessor for BlueprintPipelineUpdate();
          __swift_storeEnumTagSinglePayload(v573, 1, 1, v146);
          __swift_destroy_boxed_opaque_existential_1Tm(&v586);
          sub_1D8022FD0(v562);
          v147 = v578;
          sub_1D7E2BBA0(&v564[v578]);
          __swift_destroy_boxed_opaque_existential_1Tm(v565 + v147);
          return (v145)(v147, v144);
        }

        MEMORY[0x1EEE9AC00](v143);
        qmemcpy(&v547 - 6, "blueprint diff response", 23);
        BYTE7(v545) = 32;
        strcpy(v546, " ");
        *(&v545 + 1) = *"animated ";
        v394 = v581;
        *&v589 = v581;
        *(&v589 + 1) = v566;
        sub_1D8022D3C(255, qword_1EDBB68A8, type metadata accessor for BlueprintViewActionResponse);
        v590 = v395;
        v591 = MEMORY[0x1E69E6370];
        v396 = swift_getTupleTypeMetadata();
        v397 = v396[12];
        v398 = v396[16];
        v399 = v396[20];
        v400 = v569;
        v401 = v563;
        v570(v569, v563, v394);
        sub_1D7E0E768(&v586, v400 + v397);
        *(v400 + v398) = 0;
        *(v400 + v399) = 1;
        swift_storeEnumTagMultiPayload();
        v402 = v593;
        v577 = sub_1D7E859F8(v401, v593);
        v570 = v403;
        v593 = sub_1D7E86B60(v402);
        v572 = v404;
        v405 = v571;
        sub_1D7E85994(v140, v571);
        v406 = *(v582 + 4);
        v407 = v575;
        v408 = v394;
        v406(v575, v576, v394);
        v409 = v568;
        v406(v568, v401, v408);
        v410 = v574;
        v546[1] = v574;
        v411 = v580;
        v546[0] = v580;
        v412 = *(&v579 + 1);
        v413 = v579;
        v545 = v579;
        v414 = v573;
        sub_1D7E87FD8(v400, v577, v570, v593, v572, v405, v407, v409, v573);
        *&v589 = v413;
        *(&v589 + 1) = v412;
        v590 = v411;
        v591 = v410;
        v415 = type metadata accessor for BlueprintPipelineUpdate();
        __swift_storeEnumTagSinglePayload(v414, 0, 1, v415);
        __swift_destroy_boxed_opaque_existential_1Tm(&v586);
        sub_1D8022FD0(v562);
        v253 = v578;
        sub_1D7E2BBA0(&v564[v578]);
        v416 = &v590;
        goto LABEL_66;
      }

      sub_1D7E2BBA0(v140);
      v316 = *(v137 + 1);
      v316(v139, v132);
      __swift_destroy_boxed_opaque_existential_1Tm(&v586);
      v317 = v552;
      v582 = *(v137 + 4);
      (v582)(v552, v33, v132);
      sub_1D7E17C84((v33 + v134), &v589);
      v318 = v549;
      sub_1D7E85994(&v135[v33], v549);
      v319 = v136[1];
      v586 = *v136;
      v587 = v319;
      v588 = v136[2];
      v320 = v591;
      v321 = v592;
      __swift_project_boxed_opaque_existential_1(&v589, v591);
      if ((*(v321 + 96))(v320, v321))
      {
        sub_1D8022FD0(&v586);
        sub_1D7E2BBA0(v318);
        v316(v317, v132);
        v316(v576, v132);
        goto LABEL_41;
      }

      swift_getWitnessTable();
      v417 = v576;
      if (sub_1D8191874())
      {
        v418 = v569;
        sub_1D8022F74(&v586, v569);
      }

      else
      {
        v418 = v569;
        sub_1D7E0E768(&v589, v569);
        *(v418 + 40) = 0;
        sub_1D8022F74(&v586, v418 + 48);
      }

      swift_storeEnumTagMultiPayload();
      v522 = v552;
      v523 = v593;
      v578 = sub_1D7E859F8(v552, v593);
      v577 = v524;
      sub_1D8022FD0(&v586);
      v593 = sub_1D7E86B60(v523);
      v572 = v525;
      v464 = v571;
      sub_1D7E85994(v318, v571);
      v465 = v575;
      v526 = v417;
      v527 = v582;
      (v582)(v575, v526, v132);
      v467 = v568;
      (v527)(v568, v522, v132);
      goto LABEL_74;
    case 5:
      v254 = sub_1D7E0631C(255, &qword_1EDBBA670);
      v255 = v581;
      v566 = v254;
      v256 = swift_getTupleTypeMetadata3();
      v257 = *(v256 + 48);
      v258 = *(v256 + 64);
      v259 = v582;
      v260 = v561;
      v577 = *(v582 + 2);
      (v577)(v561, v33, v255);
      sub_1D7E0E768(v257 + v33, &v586);
      v261 = v558;
      sub_1D7E2B108(v33 + v258, v558);
      if (*(v572 + *(*v572 + 168)) == 1)
      {
        v565 = v258;
        v570 = v257;
        v578 = v33;
        v262 = *(&v587 + 1);
        v263 = v588;
        __swift_project_boxed_opaque_existential_1(&v586, *(&v587 + 1));
        v264 = (*(v263 + 96))(v262, v263);
        if (v264)
        {
          sub_1D7E2BBA0(v261);
          v208 = *(v582 + 1);
          v208(v561, v255);
          v208(v576, v255);
          v589 = v579;
          v590 = v580;
          v591 = v574;
          v265 = type metadata accessor for BlueprintPipelineUpdate();
          __swift_storeEnumTagSinglePayload(v573, 1, 1, v265);
          __swift_destroy_boxed_opaque_existential_1Tm(&v586);
          v266 = v578;
          sub_1D7E2BBA0(v565 + v578);
          __swift_destroy_boxed_opaque_existential_1Tm(v570 + v266);
          v211 = v266;
          v212 = v255;
          return (v208)(v211, v212);
        }

        MEMORY[0x1EEE9AC00](v264);
        qmemcpy(&v547 - 6, "blueprint diff response", 23);
        BYTE7(v545) = 32;
        strcpy(v546, " ");
        *(&v545 + 1) = *"animated ";
        v468 = v255;
        *&v589 = v255;
        *(&v589 + 1) = v566;
        sub_1D8022D3C(255, qword_1EDBB68A8, type metadata accessor for BlueprintViewActionResponse);
        v590 = v469;
        v591 = MEMORY[0x1E69E6370];
        v470 = swift_getTupleTypeMetadata();
        v471 = v470[12];
        v472 = v470[16];
        v473 = v470[20];
        v474 = v261;
        v475 = v569;
        v476 = v561;
        (v577)(v569, v561, v255);
        sub_1D7E0E768(&v586, v475 + v471);
        *(v475 + v472) = 0;
        *(v475 + v473) = 0;
        swift_storeEnumTagMultiPayload();
        v477 = v593;
        v577 = sub_1D7E859F8(v476, v593);
        v567 = v478;
        v593 = sub_1D7E86B60(v477);
        v572 = v479;
        v480 = v474;
        v481 = v571;
        sub_1D7E85994(v480, v571);
        v482 = *(v582 + 4);
        v483 = v575;
        v482(v575, v576, v255);
        v484 = v568;
        v482(v568, v476, v468);
        v485 = v574;
        v546[1] = v574;
        v486 = v580;
        v546[0] = v580;
        v487 = *(&v579 + 1);
        v488 = v579;
        v545 = v579;
        v489 = v573;
        sub_1D7E87FD8(v475, v577, v567, v593, v572, v481, v483, v484, v573);
        *&v589 = v488;
        *(&v589 + 1) = v487;
        v590 = v486;
        v591 = v485;
        v490 = type metadata accessor for BlueprintPipelineUpdate();
        __swift_storeEnumTagSinglePayload(v489, 0, 1, v490);
        __swift_destroy_boxed_opaque_existential_1Tm(&v586);
        v253 = v578;
        sub_1D7E2BBA0(v565 + v578);
        v416 = &v593;
LABEL_66:
        __swift_destroy_boxed_opaque_existential_1Tm(*(v416 - 32) + v253);
        return (*(v582 + 1))(v253, v581);
      }

      sub_1D7E2BBA0(v261);
      v578 = *(v259 + 1);
      (v578)(v260, v255);
      __swift_destroy_boxed_opaque_existential_1Tm(&v586);
      v364 = *(v259 + 4);
      v365 = v551;
      v582 = (v259 + 32);
      v577 = v364;
      (v364)(v551, v33, v255);
      sub_1D7E17C84((v257 + v33), &v586);
      v366 = v553;
      sub_1D7E85994(v33 + v258, v553);
      v367 = *(&v587 + 1);
      v368 = v588;
      __swift_project_boxed_opaque_existential_1(&v586, *(&v587 + 1));
      v369 = v255;
      if ((*(v368 + 96))(v367, v368))
      {
        sub_1D7E2BBA0(v366);
        v313 = v578;
        (v578)(v365, v255);
        v314 = v576;
        v315 = v255;
        goto LABEL_52;
      }

      swift_getWitnessTable();
      v491 = v576;
      if (sub_1D8191874())
      {
        v492 = v569;
      }

      else
      {
        v492 = v569;
        sub_1D7E0E768(&v586, v569);
        *(v492 + 40) = 0;
      }

      swift_storeEnumTagMultiPayload();
      v539 = v551;
      v540 = v593;
      v578 = sub_1D7E859F8(v551, v593);
      v570 = v541;
      v593 = sub_1D7E86B60(v540);
      v572 = v542;
      v380 = v571;
      sub_1D7E85994(v553, v571);
      v381 = v575;
      v543 = v255;
      v544 = v577;
      (v577)(v575, v491, v543);
      v382 = v568;
      (v544)(v568, v539, v369);
      v383 = v574;
      v546[1] = v574;
      v384 = v580;
      v546[0] = v580;
      v385 = *(&v579 + 1);
      v386 = v579;
      v545 = v579;
      v387 = v573;
      v388 = v573;
      v389 = v492;
      v390 = v578;
LABEL_80:
      v521 = &v593;
      goto LABEL_81;
    case 6:
      v294 = sub_1D7E0631C(255, &qword_1EDBBA670);
      type metadata accessor for BlueprintViewActionResponse();
      v295 = v581;
      v296 = swift_getTupleTypeMetadata3();
      v297 = *(v296 + 48);
      v577 = *(v33 + *(v296 + 64));
      v298 = v582;
      v299 = *(v582 + 2);
      v300 = v564;
      v299(v564, v33, v295);
      sub_1D7E0E768(v33 + v297, &v586);
      if (*(v572 + *(*v572 + 168)) == 1)
      {
        v566 = v297;
        v578 = v33;
        v301 = *(&v587 + 1);
        v302 = v588;
        __swift_project_boxed_opaque_existential_1(&v586, *(&v587 + 1));
        v303 = (*(v302 + 96))(v301, v302);
        if (v303)
        {

          v208 = *(v582 + 1);
          v208(v564, v295);
          v208(v576, v295);
          v589 = v579;
          v590 = v580;
          v591 = v574;
          v304 = type metadata accessor for BlueprintPipelineUpdate();
          __swift_storeEnumTagSinglePayload(v573, 1, 1, v304);
          __swift_destroy_boxed_opaque_existential_1Tm(&v586);
          v305 = v578;
          __swift_destroy_boxed_opaque_existential_1Tm(v578 + v566);
          v211 = v305;
          v212 = v295;
          return (v208)(v211, v212);
        }

        else
        {
          MEMORY[0x1EEE9AC00](v303);
          qmemcpy(&v547 - 6, "blueprint diff response", 23);
          BYTE7(v545) = 32;
          strcpy(v546, " ");
          *(&v545 + 1) = *"animated ";
          *&v589 = v295;
          *(&v589 + 1) = v294;
          sub_1D8022D3C(255, qword_1EDBB68A8, type metadata accessor for BlueprintViewActionResponse);
          v590 = v493;
          v591 = MEMORY[0x1E69E6370];
          v494 = swift_getTupleTypeMetadata();
          v495 = v494[12];
          v496 = v494[16];
          v497 = v494[20];
          v498 = v569;
          v499 = v564;
          v299(v569, v564, v295);
          sub_1D7E0E768(&v586, v498 + v495);
          *(v498 + v496) = v577;
          *(v498 + v497) = 0;
          swift_storeEnumTagMultiPayload();
          v500 = v499;
          v501 = v593;
          v577 = sub_1D7E859F8(v499, v593);
          v567 = v502;
          v593 = sub_1D7E86B60(v501);
          v572 = v503;
          swift_storeEnumTagMultiPayload();
          v504 = v582;
          v505 = *(v582 + 4);
          v506 = v575;
          v505(v575, v576, v295);
          v507 = v568;
          v505(v568, v500, v295);
          v508 = v574;
          v546[1] = v574;
          v509 = v580;
          v546[0] = v580;
          v510 = *(&v579 + 1);
          v511 = v579;
          v545 = v579;
          v512 = v573;
          sub_1D7E87FD8(v498, v577, v567, v593, v572, v571, v506, v507, v573);
          *&v589 = v511;
          *(&v589 + 1) = v510;
          v590 = v509;
          v591 = v508;
          v513 = type metadata accessor for BlueprintPipelineUpdate();
          __swift_storeEnumTagSinglePayload(v512, 0, 1, v513);
          __swift_destroy_boxed_opaque_existential_1Tm(&v586);
          v514 = v578;
          __swift_destroy_boxed_opaque_existential_1Tm(v578 + v566);
          return (*(v504 + 1))(v514, v581);
        }
      }

      v370 = *(v298 + 1);
      v370(v300, v295);
      __swift_destroy_boxed_opaque_existential_1Tm(&v586);
      v582 = *(v298 + 4);
      (v582)(v554, v33, v295);
      sub_1D7E17C84((v33 + v297), &v586);
      v371 = *(&v587 + 1);
      v372 = v588;
      __swift_project_boxed_opaque_existential_1(&v586, *(&v587 + 1));
      if ((*(v372 + 96))(v371, v372))
      {

        v370(v554, v295);
        v370(v576, v295);
        goto LABEL_55;
      }

      v515 = v569;
      sub_1D7E0E768(&v586, v569);
      *(v515 + 40) = v577;
      swift_storeEnumTagMultiPayload();
      v516 = v554;
      v517 = v593;
      v578 = sub_1D7E859F8(v554, v593);
      v577 = v518;
      v593 = sub_1D7E86B60(v517);
      v572 = v519;
      v380 = v571;
      swift_storeEnumTagMultiPayload();
      v381 = v575;
      v520 = v582;
      (v582)(v575, v576, v295);
      v382 = v568;
      (v520)(v568, v516, v295);
      v383 = v574;
      v546[1] = v574;
      v384 = v580;
      v546[0] = v580;
      v385 = *(&v579 + 1);
      v386 = v579;
      v545 = v579;
      v387 = v573;
      v388 = v573;
      v389 = v515;
      v390 = v578;
      v521 = &v595;
LABEL_81:
      v391 = *(v521 - 32);
      v392 = v593;
      v393 = &v594;
      goto LABEL_82;
    case 7:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      qmemcpy(&v547 - 6, "blueprint diff response", 23);
      BYTE7(v545) = 32;
      strcpy(v546, "n ");
      *(&v545 + 1) = *"animation ";
      v213 = v581;
      *&v586 = v581;
      v214 = sub_1D7E0631C(255, &qword_1EDBBA670);
      *(&v586 + 1) = v214;
      *&v587 = type metadata accessor for BlueprintViewActionResponse();
      *(&v587 + 1) = &type metadata for BlueprintAnimation;
      v215 = swift_getTupleTypeMetadata();
      v577 = *(v33 + v215[16]);
      v216 = v215[12];
      v217 = (v33 + v215[20]);
      v218 = v582;
      v219 = *(v582 + 2);
      v220 = v557;
      v219(v557, v33, v213);
      sub_1D7E0E768(v33 + v216, &v586);
      if (*(v572 + *(*v572 + 168)) == 1)
      {
        v221 = v219;
        v565 = v217;
        v566 = v216;
        v578 = v33;
        v222 = *(&v587 + 1);
        v223 = v588;
        __swift_project_boxed_opaque_existential_1(&v586, *(&v587 + 1));
        v224 = (*(v223 + 96))(v222, v223);
        if (v224)
        {

          v225 = v581;
          v226 = *(v582 + 1);
          v226(v220, v581);
          v226(v576, v225);
          v589 = v579;
          v590 = v580;
          v591 = v574;
          v227 = type metadata accessor for BlueprintPipelineUpdate();
          __swift_storeEnumTagSinglePayload(v573, 1, 1, v227);
          __swift_destroy_boxed_opaque_existential_1Tm(&v586);
          sub_1D8022FD0(v565);
          v228 = v578;
          __swift_destroy_boxed_opaque_existential_1Tm(v578 + v566);
          return (v226)(v228, v225);
        }

        else
        {
          MEMORY[0x1EEE9AC00](v224);
          qmemcpy(&v547 - 6, "blueprint diff response", 23);
          BYTE7(v545) = 32;
          strcpy(v546, " ");
          *(&v545 + 1) = *"animated ";
          v437 = v581;
          *&v589 = v581;
          *(&v589 + 1) = v214;
          sub_1D8022D3C(255, qword_1EDBB68A8, type metadata accessor for BlueprintViewActionResponse);
          v590 = v438;
          v591 = MEMORY[0x1E69E6370];
          v439 = swift_getTupleTypeMetadata();
          v440 = v439[12];
          v441 = v439[16];
          v442 = v439[20];
          v443 = v220;
          v444 = v569;
          v221(v569, v443, v437);
          sub_1D7E0E768(&v586, v444 + v440);
          *(v444 + v441) = v577;
          *(v444 + v442) = 1;
          swift_storeEnumTagMultiPayload();
          v445 = v593;
          v577 = sub_1D7E859F8(v443, v593);
          v567 = v446;
          v593 = sub_1D7E86B60(v445);
          v572 = v447;
          swift_storeEnumTagMultiPayload();
          v449 = v581;
          v448 = v582;
          v450 = *(v582 + 4);
          v451 = v575;
          v450(v575, v576, v581);
          v452 = v568;
          v450(v568, v443, v449);
          v453 = v574;
          v546[1] = v574;
          v454 = v580;
          v546[0] = v580;
          v455 = *(&v579 + 1);
          v456 = v579;
          v545 = v579;
          v457 = v573;
          sub_1D7E87FD8(v444, v577, v567, v593, v572, v571, v451, v452, v573);
          *&v589 = v456;
          *(&v589 + 1) = v455;
          v590 = v454;
          v591 = v453;
          v458 = type metadata accessor for BlueprintPipelineUpdate();
          __swift_storeEnumTagSinglePayload(v457, 0, 1, v458);
          __swift_destroy_boxed_opaque_existential_1Tm(&v586);
          sub_1D8022FD0(v565);
          v459 = v578;
          __swift_destroy_boxed_opaque_existential_1Tm(v578 + v566);
          return (*(v448 + 1))(v459, v581);
        }
      }

      else
      {
        v339 = *(v218 + 1);
        v339(v220, v213);
        __swift_destroy_boxed_opaque_existential_1Tm(&v586);
        v582 = *(v218 + 4);
        (v582)(v555, v33, v213);
        sub_1D7E17C84((v33 + v216), &v589);
        v340 = v217[1];
        v586 = *v217;
        v587 = v340;
        v588 = v217[2];
        v341 = v591;
        v342 = v592;
        __swift_project_boxed_opaque_existential_1(&v589, v591);
        v343 = v213;
        if ((*(v342 + 96))(v341, v342))
        {

          sub_1D8022FD0(&v586);
          v339(v555, v213);
          v339(v576, v213);
LABEL_41:
          v583 = v579;
          v584 = v580;
          v585 = v574;
          v344 = type metadata accessor for BlueprintPipelineUpdate();
          v345 = v573;
          v346 = 1;
        }

        else
        {
          v418 = v569;
          sub_1D7E0E768(&v589, v569);
          *(v418 + 40) = v577;
          sub_1D8022F74(&v586, v418 + 48);
          swift_storeEnumTagMultiPayload();
          v460 = v555;
          v461 = v593;
          v578 = sub_1D7E859F8(v555, v593);
          v577 = v462;
          sub_1D8022FD0(&v586);
          v593 = sub_1D7E86B60(v461);
          v572 = v463;
          v464 = v571;
          swift_storeEnumTagMultiPayload();
          v465 = v575;
          v466 = v582;
          (v582)(v575, v576, v343);
          v467 = v568;
          (v466)(v568, v460, v343);
LABEL_74:
          v528 = v574;
          v546[1] = v574;
          v529 = v580;
          v546[0] = v580;
          v530 = *(&v579 + 1);
          v531 = v579;
          v545 = v579;
          v532 = v573;
          sub_1D7E87FD8(v418, v578, v577, v593, v572, v464, v465, v467, v573);
          *&v583 = v531;
          *(&v583 + 1) = v530;
          v584 = v529;
          v585 = v528;
          v344 = type metadata accessor for BlueprintPipelineUpdate();
          v345 = v532;
          v346 = 0;
        }

        __swift_storeEnumTagSinglePayload(v345, v346, 1, v344);
        v533 = &v589;
        return __swift_destroy_boxed_opaque_existential_1Tm(v533);
      }

    case 8:
      sub_1D7E0631C(255, &qword_1EDBBA670);
      v306 = v581;
      v307 = *(swift_getTupleTypeMetadata2() + 48);
      v308 = v33;
      v309 = v582;
      v310 = *(v582 + 4);
      v310(v45, v308, v306);
      sub_1D7E17C84((v308 + v307), &v586);
      v311 = *(&v587 + 1);
      v312 = v588;
      __swift_project_boxed_opaque_existential_1(&v586, *(&v587 + 1));
      if ((*(v312 + 96))(v311, v312))
      {
        v313 = *(v309 + 1);
        (v313)(v45, v306);
        v314 = v576;
        v315 = v306;
LABEL_52:
        (v313)(v314, v315);
LABEL_55:
        v589 = v579;
        v590 = v580;
        v591 = v574;
        v373 = type metadata accessor for BlueprintPipelineUpdate();
        v374 = v573;
        v375 = 1;
      }

      else
      {
        v376 = v569;
        sub_1D7E0E768(&v586, v569);
        swift_storeEnumTagMultiPayload();
        v377 = v593;
        v582 = sub_1D7E859F8(v45, v593);
        v578 = v378;
        v593 = sub_1D7E86B60(v377);
        v577 = v379;
        v380 = v571;
        swift_storeEnumTagMultiPayload();
        v381 = v575;
        v310(v575, v576, v306);
        v382 = v568;
        v310(v568, v45, v306);
        v383 = v574;
        v546[1] = v574;
        v384 = v580;
        v546[0] = v580;
        v385 = *(&v579 + 1);
        v386 = v579;
        v545 = v579;
        v387 = v573;
        v388 = v573;
        v389 = v376;
        v390 = v582;
        v391 = v578;
        v392 = v593;
        v393 = &v595;
LABEL_82:
        sub_1D7E87FD8(v389, v390, v391, v392, *(v393 - 32), v380, v381, v382, v388);
        *&v589 = v386;
        *(&v589 + 1) = v385;
        v590 = v384;
        v591 = v383;
        v373 = type metadata accessor for BlueprintPipelineUpdate();
        v374 = v387;
        v375 = 0;
      }

      __swift_storeEnumTagSinglePayload(v374, v375, 1, v373);
      v533 = &v586;
      return __swift_destroy_boxed_opaque_existential_1Tm(v533);
    case 9:
      v163 = v571;
      sub_1D7E85994(v33, v571);
      v164 = v569;
      swift_storeEnumTagMultiPayload();
      v165 = v581;
      v166 = v582;
      v167 = v575;
      v168 = v576;
      (*(v582 + 2))(v575, v576, v581);
      v169 = v568;
      (*(v166 + 4))(v568, v168, v165);
      v170 = v574;
      v546[1] = v574;
      v171 = v580;
      v546[0] = v580;
      v172 = *(&v579 + 1);
      v173 = v579;
      v545 = v579;
      v174 = v573;
      sub_1D7E87FD8(v164, nullsub_1, 0, nullsub_1, 0, v163, v167, v169, v573);
      *&v586 = v173;
      *(&v586 + 1) = v172;
      *&v587 = v171;
      *(&v587 + 1) = v170;
      v96 = type metadata accessor for BlueprintPipelineUpdate();
      v97 = v174;
      goto LABEL_48;
    case 10:
      swift_willThrow();
      return (*(v582 + 1))(v576, v581);
    case 11:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      qmemcpy(&v547 - 6, "blueprint diff response", 23);
      BYTE7(v545) = 32;
      strcpy(v546, " bookmark ");
      *(&v545 + 1) = *"animated bookmark ";
      v99 = v581;
      *&v586 = v581;
      v577 = sub_1D7E0631C(255, &qword_1EDBBA670);
      *(&v586 + 1) = v577;
      sub_1D8022D3C(255, qword_1EDBB68A8, type metadata accessor for BlueprintViewActionResponse);
      v101 = v100;
      *&v587 = v100;
      *(&v587 + 1) = MEMORY[0x1E69E6370];
      *&v588 = v570;
      v102 = swift_getTupleTypeMetadata();
      v103 = v102[12];
      v570 = *(v33 + v102[16]);
      LODWORD(v566) = *(v33 + v102[20]);
      v104 = v102[24];
      v105 = v582;
      v578 = *(v582 + 4);
      (v578)(v575, v33, v99);
      sub_1D7E17C84((v33 + v103), &v586);
      v106 = sub_1D7E85994(v33 + v104, v571);
      MEMORY[0x1EEE9AC00](v106);
      qmemcpy(&v547 - 6, "blueprint diff response", 23);
      BYTE7(v545) = 32;
      strcpy(v546, " ");
      *(&v545 + 1) = *"animated ";
      *&v589 = v99;
      *(&v589 + 1) = v577;
      v590 = v101;
      v591 = MEMORY[0x1E69E6370];
      v107 = swift_getTupleTypeMetadata();
      v108 = v107[12];
      v109 = v107[16];
      v110 = v107[20];
      v111 = v569;
      v112 = v575;
      (*(v105 + 2))(v569, v575, v99);
      sub_1D7E0E768(&v586, v111 + v108);
      *(v111 + v109) = v570;
      *(v111 + v110) = v566;
      swift_storeEnumTagMultiPayload();
      v113 = v593;
      v582 = sub_1D7E859F8(v112, v593);
      v577 = v114;
      __swift_destroy_boxed_opaque_existential_1Tm(&v586);
      v115 = sub_1D7E86B60(v113);
      v117 = v116;
      v118 = v568;
      (v578)(v568, v576, v99);
      v119 = v574;
      v546[1] = v574;
      v120 = v580;
      v546[0] = v580;
      v121 = *(&v579 + 1);
      v122 = v579;
      v545 = v579;
      v123 = v573;
      v124 = v573;
      v125 = v111;
      v126 = v582;
      v127 = v577;
      v128 = v115;
      v129 = v117;
      v130 = v571;
      v131 = v118;
      goto LABEL_46;
    case 12:
      sub_1D7E0631C(255, &qword_1EDBBA670);
      v149 = v581;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v151 = *(TupleTypeMetadata2 + 48);
      v152 = v582;
      v153 = *(v582 + 4);
      v154 = v575;
      v153(v575, v33, v149);
      sub_1D7E17C84((v33 + v151), &v586);
      v155 = *(TupleTypeMetadata2 + 48);
      v156 = v569;
      (*(v152 + 2))(v569, v154, v149);
      sub_1D7E0E768(&v586, v156 + v155);
      swift_storeEnumTagMultiPayload();
      v157 = v593;
      v582 = sub_1D7E859F8(v154, v593);
      v578 = v158;
      __swift_destroy_boxed_opaque_existential_1Tm(&v586);
      v593 = sub_1D7E86B60(v157);
      v160 = v159;
      v161 = v571;
      swift_storeEnumTagMultiPayload();
      v162 = v568;
      v153(v568, v576, v149);
      v119 = v574;
      v546[1] = v574;
      v120 = v580;
      v546[0] = v580;
      v121 = *(&v579 + 1);
      v122 = v579;
      v545 = v579;
      v123 = v573;
      v124 = v573;
      v125 = v156;
      v126 = v582;
      v127 = v578;
      v128 = v593;
      v129 = v160;
      v130 = v161;
      v131 = v162;
LABEL_46:
      sub_1D7E87FD8(v125, v126, v127, v128, v129, v130, v131, v575, v124);
      *&v589 = v122;
      *(&v589 + 1) = v121;
      v590 = v120;
      v591 = v119;
      goto LABEL_47;
    case 13:
      v267 = v581;
      v268 = swift_getTupleTypeMetadata2();
      v269 = *(v33 + *(v268 + 48));
      v270 = v582;
      v271 = *(v582 + 4);
      v272 = v575;
      v271(v575, v33, v267);
      v273 = *(v268 + 48);
      v274 = v569;
      (*(v270 + 2))(v569, v272, v267);
      *(v274 + v273) = v269;
      swift_storeEnumTagMultiPayload();
      v275 = v593;
      v582 = sub_1D7E859F8(v272, v593);
      v578 = v276;
      v593 = sub_1D7E86B60(v275);
      v278 = v277;
      v279 = v571;
      swift_storeEnumTagMultiPayload();
      v280 = v568;
      v271(v568, v576, v267);
      v281 = v574;
      v546[1] = v574;
      v282 = v580;
      v546[0] = v580;
      v283 = *(&v579 + 1);
      v284 = v579;
      v545 = v579;
      v123 = v573;
      v285 = v573;
      v286 = v274;
      v287 = v582;
      v288 = v578;
      v289 = v593;
      v290 = v278;
      v291 = v279;
      v292 = v280;
      v293 = v575;
      goto LABEL_44;
    case 14:
      (*(v582 + 1))(v576, v581);
      v586 = v579;
      *&v587 = v580;
      *(&v587 + 1) = v574;
      v96 = type metadata accessor for BlueprintPipelineUpdate();
      v97 = v573;
      v98 = 1;
      return __swift_storeEnumTagSinglePayload(v97, v98, 1, v96);
    default:
      v74 = v581;
      v75 = *(swift_getTupleTypeMetadata2() + 48);
      v76 = v582;
      v77 = *(v582 + 2);
      v77(v70, v33, v74);
      v78 = v562;
      sub_1D7E2B108(v75 + v33, v562);
      v79 = *(v572 + *(*v572 + 168));
      v578 = v33;
      if (v79 == 1)
      {
        sub_1D7E0631C(255, &qword_1EDBBA670);
        swift_getTupleTypeMetadata2();
        v80 = v569;
        v77(v569, v70, v74);
        v81 = v576;
        v577 = v75;
        v82 = v574;
        - infix<A, B>(_:_:)();
        swift_storeEnumTagMultiPayload();
        v83 = v593;
        v570 = sub_1D7E859F8(v70, v593);
        v567 = v84;
        v593 = sub_1D7E86B60(v83);
        v572 = v85;
        v86 = v571;
        sub_1D7E85994(v562, v571);
        v87 = *(v76 + 4);
        v88 = v575;
        v87(v575, v81, v74);
        v89 = v568;
        v87(v568, v70, v74);
        v546[1] = v82;
        v90 = v580;
        v546[0] = v580;
        v91 = *(&v579 + 1);
        v92 = v579;
        v545 = v579;
        v93 = v573;
        sub_1D7E87FD8(v80, v570, v567, v593, v572, v86, v88, v89, v573);
        *&v586 = v92;
        *(&v586 + 1) = v91;
        *&v587 = v90;
        *(&v587 + 1) = v82;
        v94 = type metadata accessor for BlueprintPipelineUpdate();
        v95 = v93;
LABEL_13:
        __swift_storeEnumTagSinglePayload(v95, 0, 1, v94);
LABEL_22:
        v253 = v578;
        sub_1D7E2BBA0(v577 + v578);
        return (*(v582 + 1))(v253, v581);
      }

      else
      {
        sub_1D7E2BBA0(v78);
        (*(v76 + 1))(v70, v74);
        v347 = *(v76 + 4);
        v323 = v575;
        v348 = v578;
        v347(v575, v578, v74);
        sub_1D7E85994(v75 + v348, v571);
        v325 = v569;
        swift_storeEnumTagMultiPayload();
        v349 = v593;
        v582 = sub_1D7E859F8(v323, v593);
        v578 = v350;
        v328 = sub_1D7E86B60(v349);
        v593 = v351;
        v330 = v568;
        v347(v568, v576, v74);
LABEL_43:
        v281 = v574;
        v546[1] = v574;
        v282 = v580;
        v546[0] = v580;
        v283 = *(&v579 + 1);
        v284 = v579;
        v545 = v579;
        v123 = v573;
        v285 = v573;
        v286 = v325;
        v287 = v582;
        v288 = v578;
        v289 = v328;
        v290 = v593;
        v291 = v571;
        v292 = v330;
        v293 = v323;
LABEL_44:
        sub_1D7E87FD8(v286, v287, v288, v289, v290, v291, v292, v293, v285);
        *&v586 = v284;
        *(&v586 + 1) = v283;
        *&v587 = v282;
        *(&v587 + 1) = v281;
LABEL_47:
        v96 = type metadata accessor for BlueprintPipelineUpdate();
        v97 = v123;
LABEL_48:
        v98 = 0;
        return __swift_storeEnumTagSinglePayload(v97, v98, 1, v96);
      }
  }
}

uint64_t sub_1D7E85994(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BlueprintBookmark();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t (*sub_1D7E859F8(uint64_t a1, uint64_t a2))()
{
  v22 = a2;
  v3 = *v2;
  v25 = a1;
  v26 = v3;
  v24 = *(v3 + 96);
  v23 = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v30 = swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for BlueprintPipelineProcessingResult();
  v20 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v21 = &v19 - v6;
  v8 = type metadata accessor for Blueprint();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  v13 = swift_allocObject();
  swift_weakInit();
  (*(v9 + 16))(v12, v25, v8);
  (*(v5 + 16))(v7, v22, v4);
  v14 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v15 = (v10 + *(v5 + 80) + v14) & ~*(v5 + 80);
  v16 = swift_allocObject();
  v17 = v26;
  *(v16 + 2) = v23;
  *(v16 + 3) = *(v17 + 88);
  *(v16 + 4) = v24;
  *(v16 + 5) = *(v17 + 104);
  *(v16 + 6) = v13;
  (*(v9 + 32))(&v16[v14], v12, v8);
  (*(v5 + 32))(&v16[v15], v21, v20);
  return sub_1D7E91684;
}

void sub_1D7E85D3C()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_27_14();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_27_14();
  v2 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_14_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_14_0();
  v4 = swift_getAssociatedConformanceWitness();
  v124 = AssociatedTypeWitness;
  v125 = v2;
  v126 = AssociatedConformanceWitness;
  v127 = v4;
  OUTLINED_FUNCTION_123_0();
  v5 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_20_19();
  v7 = *(v6 + 80);
  v9 = *(v8 + 64);
  v124 = AssociatedTypeWitness;
  v125 = v2;
  v122 = v7;
  v10 = (v7 + 56) & ~v7;
  v126 = AssociatedConformanceWitness;
  v127 = v4;
  OUTLINED_FUNCTION_123_0();
  type metadata accessor for BlueprintPipelineProcessingResult();
  OUTLINED_FUNCTION_20_19();
  v118 = *(v11 + 80);
  v120 = (v10 + v9 + v118) & ~v118;
  v121 = v12;
  v119 = *(v13 + 64);

  v123 = v0;
  v14 = v0 + v10;

  if (*(v0 + v10 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v14 + 16);
  }

  v15 = *(v5 + 56);
  v124 = AssociatedTypeWitness;
  v125 = v2;
  v126 = AssociatedConformanceWitness;
  v127 = v4;
  v16 = type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_4_2();
  v117 = AssociatedTypeWitness;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  v18 = swift_getWitnessTable();
  OUTLINED_FUNCTION_46_10();
  sub_1D818F394();
  OUTLINED_FUNCTION_4_3();
  v20 = *(v19 + 8);
  v114[0] = v21;
  v114[1] = v19 + 8;
  v114[2] = v20;
  v20(v14 + v15);
  v116 = *(v5 + 60);
  v22 = type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_7_5();
  v115 = v4;
  v23 = v5;
  v24 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_44();
  v25 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  v124 = v16;
  v125 = v22;
  v126 = v24;
  v127 = WitnessTable;
  v128 = v18;
  v129 = v25;
  v130 = swift_getWitnessTable();
  OUTLINED_FUNCTION_123_0();
  v26 = sub_1D818F784();
  OUTLINED_FUNCTION_3_0();
  v28 = *(v27 + 8);
  v28(v14 + v116, v26);

  v29 = v123 + v120;
  v124 = v117;
  v125 = v2;
  v126 = AssociatedConformanceWitness;
  v127 = v115;
  OUTLINED_FUNCTION_123_0();
  type metadata accessor for BlueprintModifierResult();
  switch(OUTLINED_FUNCTION_143_0())
  {
    case 0u:

      if (*(v29 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v29 + 16);
      }

      v69 = OUTLINED_FUNCTION_8_31();
      v70(v69);
      v71 = OUTLINED_FUNCTION_22_14();
      (v28)(v71);
      OUTLINED_FUNCTION_75_6();
      type metadata accessor for BlueprintBookmark();
      OUTLINED_FUNCTION_56_0();
      swift_getTupleTypeMetadata2();
      switch(OUTLINED_FUNCTION_67_3())
      {
        case 0u:
          goto LABEL_43;
        case 1u:
          goto LABEL_45;
        case 2u:
        case 3u:
        case 4u:
          goto LABEL_37;
        default:
          goto LABEL_65;
      }

      goto LABEL_65;
    case 1u:

      if (*(v29 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v29 + 16);
      }

      v72 = OUTLINED_FUNCTION_8_31();
      v73(v72);
      v74 = OUTLINED_FUNCTION_22_14();
      (v28)(v74);
      OUTLINED_FUNCTION_75_6();
      type metadata accessor for BlueprintBookmark();
      OUTLINED_FUNCTION_56_0();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      switch(OUTLINED_FUNCTION_67_3())
      {
        case 0u:
          v104 = sub_1D818E994();
          v105 = OUTLINED_FUNCTION_0_110();
          if (!__swift_getEnumTagSinglePayload(v105, v106, v104))
          {
            OUTLINED_FUNCTION_3_0();
            (*(v107 + 8))(v28, v104);
          }

          break;
        case 1u:
          sub_1D818E994();
          OUTLINED_FUNCTION_4_3();
          (*(v108 + 8))(v28, v109);
          break;
        case 2u:
        case 3u:
        case 4u:

          break;
        default:
          break;
      }

      v68 = *(TupleTypeMetadata3 + 64);
      goto LABEL_57;
    case 2u:

      if (*(v29 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v29 + 16);
      }

      v53 = OUTLINED_FUNCTION_8_31();
      v54(v53);
      v55 = OUTLINED_FUNCTION_22_14();
      (v28)(v55);
      OUTLINED_FUNCTION_75_6();
      type metadata accessor for BlueprintBookmark();
      OUTLINED_FUNCTION_56_0();
      swift_getTupleTypeMetadata2();
      switch(OUTLINED_FUNCTION_67_3())
      {
        case 0u:
          goto LABEL_43;
        case 1u:
          goto LABEL_45;
        case 2u:
        case 3u:
        case 4u:
          goto LABEL_37;
        default:
          goto LABEL_65;
      }

      goto LABEL_65;
    case 3u:

      if (*(v29 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v29 + 16);
      }

      v56 = OUTLINED_FUNCTION_8_31();
      v57(v56);
      v58 = OUTLINED_FUNCTION_22_14();
      (v28)(v58);
      OUTLINED_FUNCTION_75_6();
      sub_1D7E0631C(255, &qword_1EDBBA670);
      type metadata accessor for BlueprintBookmark();
      OUTLINED_FUNCTION_56_0();
      v28 = swift_getTupleTypeMetadata3();
      v59 = OUTLINED_FUNCTION_52_1(v28);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      switch(OUTLINED_FUNCTION_67_3())
      {
        case 0u:
          goto LABEL_43;
        case 1u:
          goto LABEL_45;
        case 2u:
        case 3u:
        case 4u:
          goto LABEL_37;
        default:
          goto LABEL_65;
      }

      goto LABEL_65;
    case 4u:

      if (*(v29 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v29 + 16);
      }

      v44 = OUTLINED_FUNCTION_8_31();
      v45(v44);
      v46 = OUTLINED_FUNCTION_22_14();
      (v28)(v46);
      v47 = OUTLINED_FUNCTION_75_6();
      MEMORY[0x1EEE9AC00](v47);
      OUTLINED_FUNCTION_107_2();
      OUTLINED_FUNCTION_5_1(v48);
      v124 = v23;
      v125 = sub_1D7E0631C(255, &qword_1EDBBA670);
      v49 = type metadata accessor for BlueprintBookmark();
      v50 = OUTLINED_FUNCTION_82_3(v49, &type metadata for BlueprintAnimation);
      OUTLINED_FUNCTION_32_8(v50);
      v52 = v29 + v51;
      type metadata accessor for BlueprintBookmark();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v100 = sub_1D818E994();
          if (!OUTLINED_FUNCTION_116_0(v52))
          {
            OUTLINED_FUNCTION_3_0();
            (*(v101 + 8))(v52, v100);
          }

          break;
        case 1u:
          sub_1D818E994();
          OUTLINED_FUNCTION_4_3();
          (*(v102 + 8))(v52, v103);
          break;
        case 2u:
        case 3u:
        case 4u:

          break;
        default:
          break;
      }

      v68 = *(v50 + 80);
      goto LABEL_57;
    case 5u:

      if (*(v29 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v29 + 16);
      }

      v79 = OUTLINED_FUNCTION_8_31();
      v80(v79);
      v81 = OUTLINED_FUNCTION_22_14();
      (v28)(v81);
      OUTLINED_FUNCTION_75_6();
      sub_1D7E0631C(255, &qword_1EDBBA670);
      type metadata accessor for BlueprintBookmark();
      OUTLINED_FUNCTION_56_0();
      v28 = swift_getTupleTypeMetadata3();
      v82 = OUTLINED_FUNCTION_52_1(v28);
      __swift_destroy_boxed_opaque_existential_1Tm(v82);
      switch(OUTLINED_FUNCTION_67_3())
      {
        case 0u:
LABEL_43:
          v88 = sub_1D818E994();
          v89 = OUTLINED_FUNCTION_0_110();
          if (!__swift_getEnumTagSinglePayload(v89, v90, v88))
          {
            OUTLINED_FUNCTION_3_0();
            (*(v91 + 8))(v28, v88);
          }

          break;
        case 1u:
LABEL_45:
          sub_1D818E994();
          OUTLINED_FUNCTION_4_3();
          (*(v92 + 8))(v28, v93);
          break;
        case 2u:
        case 3u:
        case 4u:
          goto LABEL_37;
        default:
          goto LABEL_65;
      }

      goto LABEL_65;
    case 6u:

      if (*(v29 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v29 + 16);
      }

      v83 = OUTLINED_FUNCTION_8_31();
      v84(v83);
      v85 = OUTLINED_FUNCTION_22_14();
      (v28)(v85);
      OUTLINED_FUNCTION_75_6();
      sub_1D7E0631C(255, &qword_1EDBBA670);
      type metadata accessor for BlueprintViewActionResponse();
      OUTLINED_FUNCTION_56_0();
      v86 = swift_getTupleTypeMetadata3();
      v87 = OUTLINED_FUNCTION_52_1(v86);
      __swift_destroy_boxed_opaque_existential_1Tm(v87);
      goto LABEL_42;
    case 7u:

      if (*(v29 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v29 + 16);
      }

      v60 = OUTLINED_FUNCTION_8_31();
      v61(v60);
      v62 = OUTLINED_FUNCTION_22_14();
      (v28)(v62);
      v63 = OUTLINED_FUNCTION_75_6();
      MEMORY[0x1EEE9AC00](v63);
      OUTLINED_FUNCTION_107_2();
      OUTLINED_FUNCTION_5_1(v64);
      v124 = v23;
      v125 = sub_1D7E0631C(255, &qword_1EDBBA670);
      v65 = type metadata accessor for BlueprintViewActionResponse();
      v66 = OUTLINED_FUNCTION_82_3(v65, &type metadata for BlueprintAnimation);
      v67 = OUTLINED_FUNCTION_52_1(v66);
      __swift_destroy_boxed_opaque_existential_1Tm(v67);

      v68 = *(v66 + 80);
LABEL_57:
      v110 = v29 + v68;
      if (!*(v110 + 40))
      {
        goto LABEL_65;
      }

      v34 = v110 + 16;
LABEL_59:
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
LABEL_65:

      swift_deallocObject();
      OUTLINED_FUNCTION_100();
      return;
    case 8u:
    case 0xCu:

      if (*(v29 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v29 + 16);
      }

      v30 = OUTLINED_FUNCTION_8_31();
      v31(v30);
      v32 = OUTLINED_FUNCTION_22_14();
      (v28)(v32);
      OUTLINED_FUNCTION_75_6();
      sub_1D7E0631C(255, &qword_1EDBBA670);
      OUTLINED_FUNCTION_56_0();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v34 = OUTLINED_FUNCTION_52_1(TupleTypeMetadata2);
      goto LABEL_59;
    case 9u:
      type metadata accessor for BlueprintBookmark();
      switch(OUTLINED_FUNCTION_143_0())
      {
        case 0u:
          v94 = sub_1D818E994();
          if (OUTLINED_FUNCTION_116_0(v123 + v120))
          {
            goto LABEL_65;
          }

          OUTLINED_FUNCTION_3_0();
          v96 = *(v111 + 8);
          v97 = v123 + v120;
          break;
        case 1u:
          sub_1D818E994();
          OUTLINED_FUNCTION_4_3();
          v96 = *(v113 + 8);
          v97 = v123 + v120;
          goto LABEL_64;
        case 2u:
        case 3u:
        case 4u:
          goto LABEL_37;
        default:
          goto LABEL_65;
      }

LABEL_62:
      v112 = v94;
LABEL_64:
      v96(v97, v112);
      goto LABEL_65;
    case 0xAu:

      goto LABEL_65;
    case 0xBu:

      if (*(v29 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v29 + 16);
      }

      v35 = OUTLINED_FUNCTION_8_31();
      v36(v35);
      v37 = OUTLINED_FUNCTION_22_14();
      (v28)(v37);
      v38 = OUTLINED_FUNCTION_75_6();
      MEMORY[0x1EEE9AC00](v38);
      OUTLINED_FUNCTION_6_51(v114);
      OUTLINED_FUNCTION_29_10(v39);
      v124 = v23;
      v125 = sub_1D7E0631C(255, &qword_1EDBBA670);
      OUTLINED_FUNCTION_24_13(v125, qword_1EDBB68A8);
      v126 = v40;
      v127 = MEMORY[0x1E69E6370];
      v128 = type metadata accessor for BlueprintBookmark();
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v42 = OUTLINED_FUNCTION_52_1(TupleTypeMetadata);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);

      v43 = v29 + *(TupleTypeMetadata + 96);
      type metadata accessor for BlueprintBookmark();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v94 = sub_1D818E994();
          if (!OUTLINED_FUNCTION_116_0(v43))
          {
            OUTLINED_FUNCTION_3_0();
            v96 = *(v95 + 8);
            v97 = v43;
            goto LABEL_62;
          }

          break;
        case 1u:
          sub_1D818E994();
          OUTLINED_FUNCTION_4_3();
          (*(v98 + 8))(v43, v99);
          break;
        case 2u:
        case 3u:
        case 4u:
LABEL_37:

          break;
        default:
          goto LABEL_65;
      }

      goto LABEL_65;
    case 0xDu:

      if (*(v29 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v29 + 16);
      }

      v76 = OUTLINED_FUNCTION_8_31();
      v77(v76);
      v78 = OUTLINED_FUNCTION_22_14();
      (v28)(v78);
LABEL_42:

      goto LABEL_65;
    default:
      goto LABEL_65;
  }
}

uint64_t (*sub_1D7E86B60(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 80);
  v14[0] = swift_getAssociatedTypeWitness();
  v14[1] = swift_getAssociatedTypeWitness();
  v14[2] = swift_getAssociatedConformanceWitness();
  v14[3] = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for BlueprintPipelineProcessingResult();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v14 - v9;
  (*(v7 + 16))(v14 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = v5;
  *(v12 + 3) = *(v3 + 88);
  *(v12 + 4) = v4;
  *(v12 + 5) = *(v3 + 104);
  (*(v7 + 32))(&v12[v11], v10, v6);
  return sub_1D7E88BC4;
}

void sub_1D7E86D88()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_27_14();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_27_14();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_14_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_14_0();
  swift_getAssociatedConformanceWitness();
  v1 = type metadata accessor for BlueprintPipelineProcessingResult();
  OUTLINED_FUNCTION_20_19();
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = v0 + v3;
  type metadata accessor for BlueprintModifierResult();
  switch(OUTLINED_FUNCTION_143_0())
  {
    case 0u:
      OUTLINED_FUNCTION_44_7();
      if (*(v4 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v4 + 16);
      }

      OUTLINED_FUNCTION_14_21();
      v46 = *(type metadata accessor for Blueprint() + 56);
      OUTLINED_FUNCTION_14_21();
      type metadata accessor for BlueprintSection();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_19_19();
      OUTLINED_FUNCTION_4_3();
      (*(v47 + 8))(v4 + v46);
      OUTLINED_FUNCTION_25_11();
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      WitnessTable = swift_getWitnessTable();
      OUTLINED_FUNCTION_10_36(WitnessTable);
      OUTLINED_FUNCTION_4_3();
      (*(v49 + 8))(v4 + v1);
      OUTLINED_FUNCTION_89_3();
      type metadata accessor for BlueprintBookmark();
      OUTLINED_FUNCTION_48_3();
      v18 = v4 + *(swift_getTupleTypeMetadata2() + 48);
      OUTLINED_FUNCTION_15_5();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          goto LABEL_42;
        case 1u:
          goto LABEL_44;
        case 2u:
        case 3u:
        case 4u:
          goto LABEL_36;
        default:
          goto LABEL_59;
      }

      break;
    case 1u:
      OUTLINED_FUNCTION_44_7();
      if (*(v4 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v4 + 16);
      }

      OUTLINED_FUNCTION_14_21();
      type metadata accessor for Blueprint();
      OUTLINED_FUNCTION_12_28();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_19_19();
      OUTLINED_FUNCTION_4_3();
      (*(v50 + 8))(v4 + v1);
      OUTLINED_FUNCTION_25_11();
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      v51 = swift_getWitnessTable();
      OUTLINED_FUNCTION_10_36(v51);
      OUTLINED_FUNCTION_4_3();
      (*(v52 + 8))(v4 + v1);
      OUTLINED_FUNCTION_89_3();
      type metadata accessor for BlueprintBookmark();
      OUTLINED_FUNCTION_48_3();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v54 = v4 + *(TupleTypeMetadata3 + 48);
      OUTLINED_FUNCTION_111();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v76 = sub_1D818E994();
          if (!OUTLINED_FUNCTION_136_2(v76))
          {
            OUTLINED_FUNCTION_3_0();
            v77 = OUTLINED_FUNCTION_111();
            goto LABEL_55;
          }

          break;
        case 1u:
          sub_1D818E994();
          OUTLINED_FUNCTION_4_3();
          v78 = *(v79 + 8);
          v77 = v54;
LABEL_55:
          v78(v77);
          break;
        case 2u:
        case 3u:
        case 4u:

          break;
        default:
          break;
      }

      v75 = *(TupleTypeMetadata3 + 64);
      goto LABEL_57;
    case 2u:
      OUTLINED_FUNCTION_44_7();
      if (*(v4 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v4 + 16);
      }

      OUTLINED_FUNCTION_14_21();
      type metadata accessor for Blueprint();
      OUTLINED_FUNCTION_12_28();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_19_19();
      OUTLINED_FUNCTION_4_3();
      (*(v29 + 8))(v4 + v1);
      OUTLINED_FUNCTION_25_11();
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      v30 = swift_getWitnessTable();
      OUTLINED_FUNCTION_10_36(v30);
      OUTLINED_FUNCTION_4_3();
      (*(v31 + 8))(v4 + v1);
      OUTLINED_FUNCTION_89_3();
      type metadata accessor for BlueprintBookmark();
      OUTLINED_FUNCTION_48_3();
      v18 = v4 + *(swift_getTupleTypeMetadata2() + 48);
      OUTLINED_FUNCTION_15_5();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          goto LABEL_42;
        case 1u:
          goto LABEL_44;
        case 2u:
        case 3u:
        case 4u:
          goto LABEL_36;
        default:
          goto LABEL_59;
      }

      break;
    case 3u:
      OUTLINED_FUNCTION_44_7();
      if (*(v4 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v4 + 16);
      }

      OUTLINED_FUNCTION_14_21();
      type metadata accessor for Blueprint();
      OUTLINED_FUNCTION_12_28();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_19_19();
      OUTLINED_FUNCTION_4_3();
      (*(v32 + 8))(v4 + v1);
      OUTLINED_FUNCTION_25_11();
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      v33 = swift_getWitnessTable();
      OUTLINED_FUNCTION_10_36(v33);
      OUTLINED_FUNCTION_4_3();
      (*(v34 + 8))(v4 + v1);
      OUTLINED_FUNCTION_89_3();
      sub_1D7E0631C(255, &qword_1EDBBA670);
      type metadata accessor for BlueprintBookmark();
      OUTLINED_FUNCTION_48_3();
      v35 = swift_getTupleTypeMetadata3();
      OUTLINED_FUNCTION_32_8(v35);
      v18 = v4 + v36;
      OUTLINED_FUNCTION_15_5();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          goto LABEL_42;
        case 1u:
          goto LABEL_44;
        case 2u:
        case 3u:
        case 4u:
          goto LABEL_36;
        default:
          goto LABEL_59;
      }

      break;
    case 4u:
      OUTLINED_FUNCTION_44_7();
      if (*(v4 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v4 + 16);
      }

      OUTLINED_FUNCTION_14_21();
      type metadata accessor for Blueprint();
      OUTLINED_FUNCTION_12_28();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_19_19();
      OUTLINED_FUNCTION_4_3();
      (*(v19 + 8))(v4 + v1);
      OUTLINED_FUNCTION_25_11();
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      v20 = swift_getWitnessTable();
      OUTLINED_FUNCTION_10_36(v20);
      OUTLINED_FUNCTION_4_3();
      (*(v21 + 8))(v4 + v1);
      v22 = OUTLINED_FUNCTION_89_3();
      MEMORY[0x1EEE9AC00](v22);
      OUTLINED_FUNCTION_50_6();
      OUTLINED_FUNCTION_5_1(v23);
      v24 = sub_1D7E0631C(255, &qword_1EDBBA670);
      OUTLINED_FUNCTION_117_2(v24);
      v25 = type metadata accessor for BlueprintBookmark();
      OUTLINED_FUNCTION_28_11(v25, &type metadata for BlueprintAnimation);
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      OUTLINED_FUNCTION_32_8(TupleTypeMetadata);
      v28 = v4 + v27;
      type metadata accessor for BlueprintBookmark();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v71 = sub_1D818E994();
          if (!OUTLINED_FUNCTION_136_2(v71))
          {
            OUTLINED_FUNCTION_3_0();
            v72 = OUTLINED_FUNCTION_111();
            goto LABEL_50;
          }

          break;
        case 1u:
          sub_1D818E994();
          OUTLINED_FUNCTION_4_3();
          v73 = *(v74 + 8);
          v72 = v28;
LABEL_50:
          v73(v72);
          break;
        case 2u:
        case 3u:
        case 4u:

          break;
        default:
          break;
      }

      v75 = *(TupleTypeMetadata + 80);
LABEL_57:
      v45 = v4 + v75;
      if (*(v45 + 40))
      {
        goto LABEL_58;
      }

      break;
    case 5u:
      OUTLINED_FUNCTION_44_7();
      if (*(v4 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v4 + 16);
      }

      OUTLINED_FUNCTION_14_21();
      type metadata accessor for Blueprint();
      OUTLINED_FUNCTION_12_28();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_19_19();
      OUTLINED_FUNCTION_4_3();
      (*(v58 + 8))(v4 + v1);
      OUTLINED_FUNCTION_25_11();
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      v59 = swift_getWitnessTable();
      OUTLINED_FUNCTION_10_36(v59);
      OUTLINED_FUNCTION_4_3();
      (*(v60 + 8))(v4 + v1);
      OUTLINED_FUNCTION_89_3();
      sub_1D7E0631C(255, &qword_1EDBBA670);
      type metadata accessor for BlueprintBookmark();
      OUTLINED_FUNCTION_48_3();
      v61 = swift_getTupleTypeMetadata3();
      OUTLINED_FUNCTION_32_8(v61);
      v18 = v4 + v62;
      OUTLINED_FUNCTION_15_5();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          goto LABEL_42;
        case 1u:
          goto LABEL_44;
        case 2u:
        case 3u:
        case 4u:
          goto LABEL_36;
        default:
          goto LABEL_59;
      }

      break;
    case 6u:
      OUTLINED_FUNCTION_44_7();
      if (*(v4 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v4 + 16);
      }

      OUTLINED_FUNCTION_14_21();
      type metadata accessor for Blueprint();
      OUTLINED_FUNCTION_12_28();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_19_19();
      OUTLINED_FUNCTION_4_3();
      (*(v63 + 8))(v4 + v1);
      OUTLINED_FUNCTION_25_11();
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      v64 = swift_getWitnessTable();
      OUTLINED_FUNCTION_10_36(v64);
      OUTLINED_FUNCTION_4_3();
      (*(v65 + 8))(v4 + v1);
      OUTLINED_FUNCTION_89_3();
      sub_1D7E0631C(255, &qword_1EDBBA670);
      type metadata accessor for BlueprintViewActionResponse();
      OUTLINED_FUNCTION_48_3();
      v66 = swift_getTupleTypeMetadata3();
      OUTLINED_FUNCTION_32_8(v66);
      goto LABEL_41;
    case 7u:
      OUTLINED_FUNCTION_44_7();
      if (*(v4 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v4 + 16);
      }

      OUTLINED_FUNCTION_14_21();
      type metadata accessor for Blueprint();
      OUTLINED_FUNCTION_12_28();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_19_19();
      OUTLINED_FUNCTION_4_3();
      (*(v37 + 8))(v4 + v1);
      OUTLINED_FUNCTION_25_11();
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      v38 = swift_getWitnessTable();
      OUTLINED_FUNCTION_10_36(v38);
      OUTLINED_FUNCTION_4_3();
      (*(v39 + 8))(v4 + v1);
      v40 = OUTLINED_FUNCTION_89_3();
      MEMORY[0x1EEE9AC00](v40);
      OUTLINED_FUNCTION_50_6();
      OUTLINED_FUNCTION_5_1(v41);
      v42 = sub_1D7E0631C(255, &qword_1EDBBA670);
      OUTLINED_FUNCTION_117_2(v42);
      v43 = type metadata accessor for BlueprintViewActionResponse();
      OUTLINED_FUNCTION_28_11(v43, &type metadata for BlueprintAnimation);
      v44 = swift_getTupleTypeMetadata();
      OUTLINED_FUNCTION_32_8(v44);

      v45 = v4 + *(v44 + 80);
      if (!*(v45 + 40))
      {
        break;
      }

LABEL_58:
      __swift_destroy_boxed_opaque_existential_1Tm(v45 + 16);
      break;
    case 8u:
    case 0xCu:
      OUTLINED_FUNCTION_44_7();
      if (*(v4 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v4 + 16);
      }

      OUTLINED_FUNCTION_14_21();
      type metadata accessor for Blueprint();
      OUTLINED_FUNCTION_12_28();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_19_19();
      OUTLINED_FUNCTION_4_3();
      (*(v5 + 8))(v4 + v1);
      OUTLINED_FUNCTION_25_11();
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      v6 = swift_getWitnessTable();
      OUTLINED_FUNCTION_10_36(v6);
      OUTLINED_FUNCTION_4_3();
      (*(v7 + 8))(v4 + v1);
      OUTLINED_FUNCTION_89_3();
      sub_1D7E0631C(255, &qword_1EDBBA670);
      OUTLINED_FUNCTION_48_3();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v9 = OUTLINED_FUNCTION_52_1(TupleTypeMetadata2);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      break;
    case 9u:
      type metadata accessor for BlueprintBookmark();
      switch(OUTLINED_FUNCTION_143_0())
      {
        case 0u:
          v80 = sub_1D818E994();
          if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v80))
          {
            OUTLINED_FUNCTION_3_0();
            (*(v81 + 8))(v0 + v3);
          }

          break;
        case 1u:
          sub_1D818E994();
          OUTLINED_FUNCTION_4_3();
          (*(v82 + 8))(v0 + v3);
          break;
        case 2u:
        case 3u:
        case 4u:
          goto LABEL_36;
        default:
          goto LABEL_59;
      }

      break;
    case 0xAu:

      break;
    case 0xBu:
      OUTLINED_FUNCTION_44_7();
      if (*(v4 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v4 + 16);
      }

      OUTLINED_FUNCTION_14_21();
      type metadata accessor for Blueprint();
      OUTLINED_FUNCTION_12_28();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_19_19();
      OUTLINED_FUNCTION_4_3();
      (*(v10 + 8))(v4 + v1);
      OUTLINED_FUNCTION_25_11();
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      v11 = swift_getWitnessTable();
      OUTLINED_FUNCTION_10_36(v11);
      OUTLINED_FUNCTION_4_3();
      (*(v12 + 8))(v4 + v1);
      v13 = OUTLINED_FUNCTION_89_3();
      MEMORY[0x1EEE9AC00](v13);
      OUTLINED_FUNCTION_50_6();
      OUTLINED_FUNCTION_6_51(v14);
      OUTLINED_FUNCTION_29_10(v15);
      v83 = sub_1D7E0631C(255, &qword_1EDBBA670);
      OUTLINED_FUNCTION_24_13(v83, qword_1EDBB68A8);
      v16 = type metadata accessor for BlueprintBookmark();
      OUTLINED_FUNCTION_76_5(v16);
      v17 = swift_getTupleTypeMetadata();
      OUTLINED_FUNCTION_32_8(v17);

      v18 = v4 + *(v17 + 96);
      type metadata accessor for BlueprintBookmark();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
LABEL_42:
          v67 = sub_1D818E994();
          if (!OUTLINED_FUNCTION_73_4(v67))
          {
            OUTLINED_FUNCTION_3_0();
            v68 = OUTLINED_FUNCTION_15_5();
            goto LABEL_45;
          }

          break;
        case 1u:
LABEL_44:
          sub_1D818E994();
          OUTLINED_FUNCTION_4_3();
          v69 = *(v70 + 8);
          v68 = v18;
LABEL_45:
          v69(v68);
          break;
        case 2u:
        case 3u:
        case 4u:
LABEL_36:

          break;
        default:
          goto LABEL_59;
      }

      break;
    case 0xDu:
      OUTLINED_FUNCTION_44_7();
      if (*(v4 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v4 + 16);
      }

      OUTLINED_FUNCTION_14_21();
      type metadata accessor for Blueprint();
      OUTLINED_FUNCTION_12_28();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_19_19();
      OUTLINED_FUNCTION_4_3();
      (*(v55 + 8))(v4 + v1);
      OUTLINED_FUNCTION_25_11();
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      v56 = swift_getWitnessTable();
      OUTLINED_FUNCTION_10_36(v56);
      OUTLINED_FUNCTION_4_3();
      (*(v57 + 8))(v4 + v1);
LABEL_41:

      break;
    default:
      break;
  }

LABEL_59:

  swift_deallocObject();
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7E87FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  OUTLINED_FUNCTION_10_49();
  type metadata accessor for BlueprintPipelineUpdate.Action();
  OUTLINED_FUNCTION_8();
  (*(v15 + 32))(a9, a1);
  OUTLINED_FUNCTION_10_49();
  v16 = type metadata accessor for BlueprintPipelineUpdate();
  v17 = (a9 + v16[14]);
  *v17 = a2;
  v17[1] = a3;
  sub_1D7E85994(a6, a9 + v16[15]);
  v18 = v16[16];
  OUTLINED_FUNCTION_10_49();
  v19 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_8();
  v21 = *(v20 + 32);
  v21(a9 + v18, a7, v19);
  result = (v21)(a9 + v16[17], a8, v19);
  v23 = (a9 + v16[13]);
  *v23 = a4;
  v23[1] = a5;
  return result;
}

void sub_1D7E88140(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_0_98();
  type metadata accessor for BlueprintPipelineUpdate.Action();
  OUTLINED_FUNCTION_95();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[13]) = (a2 - 1);
      return;
    }

    type metadata accessor for BlueprintBookmark();
    OUTLINED_FUNCTION_95();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[15];
    }

    else
    {
      OUTLINED_FUNCTION_0_98();
      v10 = type metadata accessor for Blueprint();
      v14 = a4[16];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1D7E88284(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v9 = (v8 - v7);
  v10 = sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
  *v9 = sub_1D8191AB4();
  v11 = OUTLINED_FUNCTION_16_3();
  v12(v11);
  sub_1D8190CA4();
  v13 = OUTLINED_FUNCTION_13_4();
  result = v14(v13);
  if (v10)
  {
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    v16 = *(v3 + 32);
    sub_1D8190DB4();
    v17 = sub_1D7E886A4(a1, a2, v16);

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D7E883CC(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  MastheadViewController.viewDidAppear(_:)(a3);
}

uint64_t sub_1D7E88434(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_0_98();
  type metadata accessor for BlueprintPipelineUpdate.Action();
  OUTLINED_FUNCTION_95();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    type metadata accessor for BlueprintBookmark();
    OUTLINED_FUNCTION_95();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v14 = a3[15];
    }

    else
    {
      OUTLINED_FUNCTION_0_98();
      v8 = type metadata accessor for Blueprint();
      v14 = a3[16];
    }

    v9 = a1 + v14;
    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  v10 = *(a1 + a3[13]);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

Swift::Void __swiftcall MastheadViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3 = v1;
  v14.receiver = v3;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_viewDidAppear_, a1);
  OUTLINED_FUNCTION_27_18();
  v6 = [v3 v5];
  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = v6;
  [v6 setNeedsLayout];

  v8 = [v3 (v2 + 2808)];
  if (!v8)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v9 = v8;
  [v8 layoutIfNeeded];

  __swift_project_boxed_opaque_existential_1(&v3[qword_1EDBB8880], *&v3[qword_1EDBB8880 + 24]);
  v10 = MastheadViewController.scrollView.getter();
  OUTLINED_FUNCTION_0_120();
  v11();

  if (sub_1D8190B24())
  {
    v12 = *&v3[qword_1EDBB88A8];
    [v12 setNeedsLayout];
    [v12 layoutIfNeeded];
  }

  v13 = MastheadViewController.scrollView.getter();
  sub_1D7E6D654();
}

uint64_t sub_1D7E886F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1D7E11428(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_19(v3);
}

void BlueprintIntegator.validate(update:)(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 96);
  v13 = *(v2 + 56);
  v4 = v13(v3, v2);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_55_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 216);
  v7 = swift_checkMetadataState();
  v8 = v6(v7, AssociatedConformanceWitness);

  if (v8)
  {
    if (BlueprintCollectionViewLayoutTransition.isTransitioning.getter(v9))
    {
      sub_1D7FE814C();
      swift_allocError();
      *v10 = 0xD000000000000025;
      *(v10 + 8) = 0x80000001D81D1C10;
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      *(v10 + 32) = 3;
      swift_willThrow();

      return;
    }
  }

  v11 = *(a1 + *(type metadata accessor for BlueprintPipelineUpdate() + 52));
  v12 = v13(v3, v2);
  v11(v12, AssociatedConformanceWitness);
}

uint64_t NavigationController.backdropGroupName.getter()
{
  v1 = sub_1D7E88AA8([v0 navigationBar]);
  if (!v2)
  {
    if ([v0 topViewController] && (sub_1D7E0A1A8(0, &qword_1EDBB31B0), sub_1D7E0631C(0, &qword_1EDBB7300), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v8 + 1))
      {
        sub_1D7E05450(&v7, v10);
        __swift_project_boxed_opaque_existential_1(v10, v10[3]);
        v4 = OUTLINED_FUNCTION_3_1();
        v3 = v5(v4);
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
        return v3;
      }
    }

    else
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
    }

    sub_1D7F35110(&v7, &unk_1EDBB72F0, &qword_1EDBB7300, &protocol descriptor for BackdropGroupNameProviding);
    return 0;
  }

  return v1;
}

uint64_t sub_1D7E88AA8(void *a1)
{
  v2 = [a1 ts_backdropViewLayerGroupName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1D8190F14();

  return v3;
}

uint64_t OUTLINED_FUNCTION_65_0()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_65_7()
{
}

uint64_t sub_1D7E88BC4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_130_1();
  OUTLINED_FUNCTION_130_1();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for BlueprintPipelineProcessingResult();
  OUTLINED_FUNCTION_50(v4);
  return sub_1D7E88D1C(a1, a2, v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80)));
}

uint64_t OUTLINED_FUNCTION_131_1()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1D7E88D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  result = type metadata accessor for BlueprintPipelineProcessingResult();
  v7 = *(a3 + *(result + 52));
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v8 - 1;
    v11 = v7 + 56;
    while (v9 < *(v7 + 16))
    {
      v12 = *(v11 - 8);
      if (v12)
      {

        sub_1D7E19F24(v12);
        v12(a1, a2);

        result = sub_1D7E0E10C(v12);
        if (v3)
        {
          return result;
        }
      }

      if (v10 == v9)
      {
        return result;
      }

      v11 += 32;
      ++v9;
    }

    __break(1u);
  }

  return result;
}