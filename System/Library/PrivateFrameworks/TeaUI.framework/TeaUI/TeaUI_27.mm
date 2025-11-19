void SeparatorView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC5TeaUI13SeparatorView_layoutStyle) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI13SeparatorView_visibilityStyle) = 1;
  *(v0 + OBJC_IVAR____TtC5TeaUI13SeparatorView_isHighlighted) = 0;
  *(OBJC_IVAR____TtC5TeaUI13SeparatorView_isSelected + v0) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI13SeparatorView_hidesOnSelection) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI13SeparatorView__backgroundColor) = 0;
  v1 = v0 + OBJC_IVAR____TtC5TeaUI13SeparatorView_thickness;
  *v1 = 0;
  *(v1 + 8) = 1;
  sub_1D81923A4();
  __break(1u);
}

__C::CGRect __swiftcall SeparatorView.makeFrame(in:insets:anchor:)(__C::CGRect in, UIEdgeInsets insets, TeaUI::SeparatorView::Anchor anchor)
{
  left = insets.left;
  top = insets.top;
  height = in.size.height;
  width = in.size.width;
  x = in.origin.x;
  v9 = *anchor;
  v10 = &v3[OBJC_IVAR____TtC5TeaUI13SeparatorView_thickness];
  OUTLINED_FUNCTION_8_4();
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = [v3 traitCollection];
  v14 = v13;
  if (v12)
  {
    sub_1D806F6A8(v13);
    v16 = v15;

    v11 = 1.0 / v16;
  }

  else
  {
  }

  v17 = 0.0;
  if (v9)
  {
    v17 = height - v11;
  }

  v18 = UIEdgeInsetsInsetRect(x, v17, width, v11, top, left);
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

void sub_1D806F6A8(void *a1)
{
  [a1 displayScale];
  if (v2 == 0.0)
  {
    v3 = objc_opt_self();
    v4 = [v3 mainScreen];
    [v4 scale];
    v6 = v5;

    if (v6 != 0.0)
    {
      v7 = [v3 mainScreen];
      [v7 scale];
    }
  }

  else
  {

    [a1 displayScale];
  }
}

id SeparatorView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall SeparatorView.prepareForReuse()()
{
  v1 = v0 + OBJC_IVAR____TtC5TeaUI13SeparatorView_thickness;
  OUTLINED_FUNCTION_56();
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = OBJC_IVAR____TtC5TeaUI13SeparatorView_layoutStyle;
  OUTLINED_FUNCTION_56();
  *(v0 + v2) = 0;
  v3 = 1;
  SeparatorView.visibilityStyle.setter(&v3);
  SeparatorView.clearSelections()();
}

unint64_t sub_1D806F878()
{
  result = qword_1ECA10068;
  if (!qword_1ECA10068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10068);
  }

  return result;
}

unint64_t sub_1D806F8D0()
{
  result = qword_1ECA10070;
  if (!qword_1ECA10070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10070);
  }

  return result;
}

unint64_t sub_1D806F928()
{
  result = qword_1ECA10078;
  if (!qword_1ECA10078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10078);
  }

  return result;
}

_BYTE *sub_1D806F9E0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t Commands.Dock.Animation.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D806FBF4()
{
  result = qword_1ECA10080;
  if (!qword_1ECA10080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10080);
  }

  return result;
}

_BYTE *_s4DockVwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *_s4DockV9AnimationOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for BlueprintManualImpressionView()
{
  result = qword_1ECA10088;
  if (!qword_1ECA10088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D806FE1C()
{
  sub_1D806FE7C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1D806FE7C()
{
  if (!qword_1ECA10098)
  {
    sub_1D818E994();
    sub_1D806FEEC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECA10098);
    }
  }
}

void sub_1D806FEEC()
{
  if (!qword_1ECA100A0)
  {
    sub_1D7F9F0F0();
    v0 = sub_1D818F8E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA100A0);
    }
  }
}

id sub_1D806FF6C(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  sub_1D7E33688(0, &qword_1EDBB36F0, type metadata accessor for Debounce);
  swift_allocObject();
  sub_1D7FA917C(a1, a2, a3);
  sub_1D8070624();
  swift_allocObject();

  sub_1D818F8A4();

  sub_1D818F224();

  v8 = v4;

  return v8;
}

uint64_t DebounceQueue.__allocating_init(timeInterval:clearOnDequeue:dequeueBlock:)()
{
  OUTLINED_FUNCTION_0_156();
  v0 = swift_allocObject();
  DebounceQueue.init(timeInterval:clearOnDequeue:dequeueBlock:)();
  return v0;
}

uint64_t DebounceQueue.enqueue<A>(_:)(uint64_t a1)
{
  v2 = sub_1D818EF94();
  sub_1D8070140(a1, v2, v3);
}

void sub_1D8070140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(*v3 + 80);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20[-v10];
  swift_beginAccess();
  v12 = *(v3 + 2);
  sub_1D8190DB4();
  v13 = sub_1D7F28578(a2, a3, v12);

  if (!v13)
  {
    swift_beginAccess();
    sub_1D8190DB4();
    sub_1D7E91548(v21, a2, a3);
    swift_endAccess();

    (*(v9 + 16))(v11, a1, v8);
    swift_beginAccess();
    sub_1D8191484();
    sub_1D8191434();
    swift_endAccess();
    v14 = *(v4 + 4);
    v15 = sub_1D7F293FC();

    v16 = v4[5];
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = v8;
    *(v18 + 24) = v17;
    v19 = sub_1D806FF6C(sub_1D807061C, v18, v16);

    sub_1D7E80824();
  }
}

uint64_t DebounceQueue.enqueue(_:keyPath:)(uint64_t a1)
{
  swift_getAtKeyPath();
  sub_1D8070140(a1, v3, v4);
}

uint64_t sub_1D80703D4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    sub_1D8191484();
    swift_getWitnessTable();
    if ((sub_1D8191874() & 1) == 0)
    {
      v2 = *(v1 + 56);

      v3 = sub_1D8190DB4();
      v2(v3);

      sub_1D80704C8(v1);
    }
  }

  return result;
}

uint64_t sub_1D80704C8(uint64_t a1)
{
  swift_beginAccess();
  OUTLINED_FUNCTION_0_2();
  sub_1D8191484();
  sub_1D8191474();
  result = swift_endAccess();
  if (*(a1 + 48) == 1)
  {
    swift_beginAccess();
    *(a1 + 16) = MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t DebounceQueue.deinit()
{

  return v0;
}

uint64_t DebounceQueue.__deallocating_deinit()
{
  DebounceQueue.deinit();

  return swift_deallocClassInstance();
}

void sub_1D8070624()
{
  if (!qword_1EDBBC448)
  {
    sub_1D7E2C2D8();
    v0 = sub_1D818F8C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBBC448);
    }
  }
}

id sub_1D807067C(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC5TeaUI23SwipeActionSnapshotView_view] = a1;
  if (a1)
  {
    [a1 frame];
  }

  else
  {
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
  }

  v11.receiver = v1;
  v11.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v11, sel_initWithFrame_, v4, v5, v6, v7);
  v9 = v8;
  if (a1)
  {
    [v8 addSubview_];
  }

  return v9;
}

id sub_1D8070790()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC5TeaUI23SwipeActionSnapshotView_view];
  if (v2)
  {
    [v0 bounds];
    return [v2 setFrame_];
  }

  return result;
}

uint64_t sub_1D80708BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_1D7F0560C();
  v4 = sub_1D7F05AA4(&v6, v3 + 32, v1, a1);
  sub_1D8190DB4();
  sub_1D7E4507C();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x1E69E7CC0];
  }

  v6 = v3;
  sub_1D80731C4(&v6, sub_1D8120A84, &type metadata for CardViewPresentationState, sub_1D80739B0, sub_1D8073434);
  return v6;
}

uint64_t sub_1D80709E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_1D7F054EC();
  v4 = sub_1D7F061EC(&v6, v3 + 32, v1, a1);
  sub_1D8190DB4();
  sub_1D7E4507C();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x1E69E7CC0];
  }

  v6 = v3;
  sub_1D80731C4(&v6, sub_1D8120A5C, MEMORY[0x1E69E6158], sub_1D80734A8, sub_1D807336C);
  return v6;
}

id sub_1D8070B0C()
{
  v1 = OBJC_IVAR____TtC5TeaUI13UIKitCardItem____lazy_storage___presentingWrapper;
  v2 = *(v0 + OBJC_IVAR____TtC5TeaUI13UIKitCardItem____lazy_storage___presentingWrapper);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5TeaUI13UIKitCardItem____lazy_storage___presentingWrapper);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for CardWrappedViewController());
    v6 = sub_1D7FF34AC(0);
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1D8070B84(char a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDBB1F78 != -1)
  {
    OUTLINED_FUNCTION_0_157();
  }

  v7 = sub_1D818FE34();
  __swift_project_value_buffer(v7, qword_1EDBC6048);
  v8 = v3;
  v9 = sub_1D818FE14();
  v10 = sub_1D81919E4();

  if (os_log_type_enabled(v9, v10))
  {
    v30 = a1;
    v11 = OUTLINED_FUNCTION_18_1();
    v12 = OUTLINED_FUNCTION_10_43();
    v13 = OUTLINED_FUNCTION_61();
    aBlock[0] = v13;
    *v11 = 138412546;
    v14 = *&v8[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_viewController];
    *(v11 + 4) = v14;
    *v12 = v14;
    *(v11 + 12) = 2080;
    v15 = 0xEA00000000006E65;
    v16 = 0x657263736C6C7566;
    v17 = v13;
    switch(v8[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_presentationState])
    {
      case 1:
        v15 = 0xE800000000000000;
        v16 = 0x6465646E61707865;
        break;
      case 2:
        v18 = 0x70616C6C6F63;
        goto LABEL_9;
      case 3:
        v15 = 0xE700000000000000;
        v19 = 1953653104;
        goto LABEL_13;
      case 4:
        v18 = 0x73696D736964;
LABEL_9:
        v16 = v18 & 0xFFFFFFFFFFFFLL | 0x6573000000000000;
        v15 = 0xE900000000000064;
        break;
      case 5:
        v15 = 0xE700000000000000;
        v19 = 1953066601;
LABEL_13:
        v16 = v19 | 0x6C616900000000;
        break;
      case 6:
        v15 = 0xE700000000000000;
        v16 = 0x64657261656C63;
        break;
      case 7:
        v15 = 0xE600000000000000;
        v16 = 0x6E6564646968;
        break;
      default:
        break;
    }

    v20 = v14;
    v21 = sub_1D7E1C3D8(v16, v15, aBlock);

    *(v11 + 14) = v21;
    OUTLINED_FUNCTION_15_29(&dword_1D7DFF000, v22, v23, "Card with view controller %@ is being dismissed, currently in state: %s");
    sub_1D7E39F80(v12);
    OUTLINED_FUNCTION_38();
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_3_89();

    a1 = v30;
  }

  else
  {
  }

  v24 = v8[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_presentationState];
  v8[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_futurePresentationState] = 4;
  v25 = *&v8[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_presentedWrapper];
  v26 = swift_allocObject();
  *(v26 + 16) = v8;
  *(v26 + 24) = v24;
  *(v26 + 32) = a2;
  *(v26 + 40) = a3;
  aBlock[4] = sub_1D8074454;
  aBlock[5] = v26;
  OUTLINED_FUNCTION_1_70();
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_17();
  aBlock[2] = v27;
  aBlock[3] = &block_descriptor_51;
  v28 = _Block_copy(aBlock);
  v29 = v8;
  sub_1D7E38808(a2);

  [v25 dismissViewControllerAnimated:a1 & 1 completion:v28];
  _Block_release(v28);
  OUTLINED_FUNCTION_14_30();
}

unsigned __int8 *sub_1D8070E80(void *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (qword_1EDBB1F78 != -1)
  {
    swift_once();
  }

  v6 = sub_1D818FE34();
  __swift_project_value_buffer(v6, qword_1EDBC6048);
  v7 = a1;
  v8 = sub_1D818FE14();
  v9 = sub_1D81919E4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = *&v7[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_viewController];
    *(v10 + 4) = v12;
    *v11 = v12;
    v13 = v12;
    _os_log_impl(&dword_1D7DFF000, v8, v9, "Card with view controller %@ was hidden programmatically", v10, 0xCu);
    sub_1D7E39F80(v11);
    MEMORY[0x1DA715D00](v11, -1, -1);
    MEMORY[0x1DA715D00](v10, -1, -1);
  }

  if (a2 != 4 && a2 != 7)
  {
    v7[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_previousPresentationState] = a2;
  }

  v7[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_updatedDetent] = 0;
  v16 = 7;
  result = sub_1D7E3A560(&v16);
  if (a3)
  {
    return a3(1);
  }

  return result;
}

void sub_1D8071028(unsigned __int8 *a1, char a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v9 = *a1;
  v10 = *&v4[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_presentedWrapper];
  v11 = sub_1D8070B0C();

  if (v10 == v11 || (v12 = OBJC_IVAR____TtC5TeaUI13UIKitCardItem____lazy_storage___presentingWrapper, v13 = *&v5[OBJC_IVAR____TtC5TeaUI13UIKitCardItem____lazy_storage___presentingWrapper], v14 = v13, LOBYTE(v13) = sub_1D7E3A084(v13, v10), v14, (v13 & 1) != 0))
  {
    if (qword_1EDBB1F78 != -1)
    {
      OUTLINED_FUNCTION_0_157();
    }

    v15 = sub_1D818FE34();
    __swift_project_value_buffer(v15, qword_1EDBC6048);
    v16 = v5;
    v17 = sub_1D818FE14();
    v18 = sub_1D81919C4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_55_1();
      v20 = OUTLINED_FUNCTION_10_43();
      *v19 = 138412290;
      v21 = *&v16[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_viewController];
      *(v19 + 4) = v21;
      *v20 = v21;
      v22 = v21;
      _os_log_impl(&dword_1D7DFF000, v17, v18, "Attempted to present a card that is already presented for view controller: %@", v19, 0xCu);
      sub_1D7E39F80(v20);
      OUTLINED_FUNCTION_3_89();
      OUTLINED_FUNCTION_38();
    }

    if (a3)
    {
      v23 = 1;
LABEL_9:
      a3(v23);
      return;
    }

    return;
  }

  v108 = v12;
  if (v9 == 8)
  {
    v24 = *&v5[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_behavior];
    if (sub_1D7E3A3F4(2, v24))
    {
      v9 = 0;
    }

    else if (sub_1D7E3A3F4(0, v24))
    {
      v9 = 3;
    }

    else
    {
      if ((sub_1D7E3A3F4(1, v24) & 1) == 0)
      {
        if (qword_1EDBB1F78 != -1)
        {
          OUTLINED_FUNCTION_0_157();
        }

        v70 = sub_1D818FE34();
        __swift_project_value_buffer(v70, qword_1EDBC6048);
        v71 = sub_1D818FE14();
        v72 = sub_1D81919C4();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          *v73 = 0;
          _os_log_impl(&dword_1D7DFF000, v71, v72, "Attempted to restore a card without first presenting, or without initial restore position", v73, 2u);
          OUTLINED_FUNCTION_38();
        }

        if (a3)
        {
          v23 = 0;
          goto LABEL_9;
        }

        return;
      }

      v9 = 2;
    }
  }

  v107 = a2;
  v110 = a4;
  v25 = OBJC_IVAR____TtC5TeaUI13UIKitCardItem_detents;
  swift_beginAccess();
  v26 = sub_1D7EDF424(v9, *&v5[v25]);
  if (v26)
  {
    v27 = v26;
    v105 = a3;
    v5[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_futurePresentationState] = v9;
    if ((v5[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_behavior + 8] & 1) == 0)
    {
      [v10 setModalInPresentation_];
    }

    LOBYTE(aBlock[0]) = v9;
    sub_1D80725CC(aBlock);
    v28 = [*&v5[v12] presentedViewController];
    v106 = v27;
    if (v28)
    {
      v29 = v28;
      sub_1D7E0A1A8(0, &qword_1EDBB2F40);
      if (sub_1D8191CC4())
      {
        LOBYTE(aBlock[0]) = v9;
        sub_1D8072004(v27, aBlock, v107 & 1, v105, a4);
        if (qword_1EDBB1F78 != -1)
        {
          OUTLINED_FUNCTION_0_157();
        }

        v30 = sub_1D818FE34();
        __swift_project_value_buffer(v30, qword_1EDBC6048);
        v31 = v5;
        v32 = sub_1D818FE14();
        v33 = sub_1D81919E4();

        if (os_log_type_enabled(v32, v33))
        {
          OUTLINED_FUNCTION_13_31();
          v34 = OUTLINED_FUNCTION_18_1();
          v35 = OUTLINED_FUNCTION_10_43();
          v36 = OUTLINED_FUNCTION_61();
          aBlock[0] = v36;
          *v34 = 138412546;
          v37 = *&v31[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_viewController];
          *(v34 + 4) = v37;
          *v35 = v37;
          *(v34 + 12) = 2080;
          v38 = 0xEA00000000006E65;
          v39 = v36;
          switch(v9)
          {
            case 1:
              OUTLINED_FUNCTION_6_65();
              break;
            case 2:
              v99 = 0x70616C6C6F63;
              goto LABEL_95;
            case 3:
              v38 = 0xE700000000000000;
              v100 = 1953653104;
              goto LABEL_99;
            case 4:
              v99 = 0x73696D736964;
LABEL_95:
              a4 = v99 & 0xFFFFFFFFFFFFLL | 0x6573000000000000;
              v38 = 0xE900000000000064;
              break;
            case 5:
              v38 = 0xE700000000000000;
              v100 = 1953066601;
LABEL_99:
              a4 = v100 | 0x6C616900000000;
              break;
            case 6:
              OUTLINED_FUNCTION_7_49();
              break;
            case 7:
              OUTLINED_FUNCTION_12_34();
              break;
            default:
              break;
          }

          v101 = v37;
          v102 = sub_1D7E1C3D8(a4, v38, aBlock);

          *(v34 + 14) = v102;
          _os_log_impl(&dword_1D7DFF000, v32, v33, "Done presenting card %@ to state %s", v34, 0x16u);
          sub_1D7E39F80(v35);
          OUTLINED_FUNCTION_3_89();
          __swift_destroy_boxed_opaque_existential_1Tm(v39);
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_38();
        }

        else
        {
        }

        return;
      }
    }

    [v10 setTransitioningDelegate_];
    [v10 setModalPresentationStyle_];
    v47 = [v10 presentationController];
    if (v47)
    {
      v48 = v47;
      [v47 setDelegate_];
    }

    v49 = [v10 sheetPresentationController];
    if (v49)
    {
      v50 = v49;
      v51 = sub_1D8190DB4();
      v52 = sub_1D80708BC(v51);

      aBlock[0] = MEMORY[0x1E69E7CC0];
      v53 = *(v52 + 16);
      if (v53)
      {
        v103 = v50;
        v54 = MEMORY[0x1E69E7CC0];
        v55 = 32;
        do
        {
          v56 = *&v5[v25];
          if (*(v56 + 16))
          {
            v57 = sub_1D7F061F8(*(v52 + v55));
            if (v58)
            {
              v59 = *(*(v56 + 56) + 8 * v57);
              MEMORY[0x1DA713500]();
              if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1D81913B4();
              }

              sub_1D8191404();
              v54 = aBlock[0];
            }
          }

          ++v55;
          --v53;
        }

        while (v53);
      }

      else
      {

        v54 = MEMORY[0x1E69E7CC0];
      }

      sub_1D7E0A1A8(0, &unk_1EDBAE490);
      v60 = sub_1D8191304();
      [v50 setDetents_];

      v61 = sub_1D7E3A548(v54);

      if (v61)
      {
        v62 = [v61 identifier];
      }

      else
      {
        v62 = 0;
      }

      [v50 setLargestUndimmedDetentIdentifier_];

      v63 = [v106 identifier];
      [v50 setSelectedDetentIdentifier_];

      [v50 setPrefersGrabberVisible_];
      [v50 setPrefersScrollingExpandsWhenScrolledToEdge_];
      v64 = [objc_opt_self() currentDevice];
      v65 = [v64 userInterfaceIdiom];

      v66 = -15.0;
      if (!v65)
      {
        v67 = *&v5[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_layoutOptions + 16];
        v68 = v5[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_layoutOptions + 24];
        if (v68 >> 6)
        {
          if (v68 >> 6 == 1)
          {
            v69 = v67 + 0.0;
          }

          else
          {
            OUTLINED_FUNCTION_11();
            v69 = CGRectGetHeight(v113) * v67;
          }
        }

        else
        {
          OUTLINED_FUNCTION_11();
          Height = CGRectGetHeight(v112);
          v75 = -15.0;
          if ((v68 & 1) == 0)
          {
            v75 = 0.0;
          }

          v69 = Height - v67 - v75;
        }

        v66 = -v69;
      }

      [v50 _setAdditionalMinimumTopInset_];

      v12 = v108;
    }

    OUTLINED_FUNCTION_11();
    [v10 v76];
    if (qword_1EDBB1F78 != -1)
    {
      OUTLINED_FUNCTION_0_157();
    }

    v77 = sub_1D818FE34();
    __swift_project_value_buffer(v77, qword_1EDBC6048);
    v78 = v5;
    v79 = sub_1D818FE14();
    v80 = sub_1D81919E4();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = OUTLINED_FUNCTION_18_1();
      v82 = OUTLINED_FUNCTION_10_43();
      v109 = OUTLINED_FUNCTION_61();
      aBlock[0] = v109;
      *v81 = 138412546;
      v83 = *&v78[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_viewController];
      *(v81 + 4) = v83;
      v104 = v82;
      *v82 = v83;
      *(v81 + 12) = 2080;
      v84 = 0xEA00000000006E65;
      v85 = 0x657263736C6C7566;
      switch(v9)
      {
        case 1:
          v84 = 0xE800000000000000;
          v85 = 0x6465646E61707865;
          break;
        case 2:
          v86 = 0x70616C6C6F63;
          goto LABEL_74;
        case 3:
          v84 = 0xE700000000000000;
          v87 = 1953653104;
          goto LABEL_78;
        case 4:
          v86 = 0x73696D736964;
LABEL_74:
          v85 = v86 & 0xFFFFFFFFFFFFLL | 0x6573000000000000;
          v84 = 0xE900000000000064;
          break;
        case 5:
          v84 = 0xE700000000000000;
          v87 = 1953066601;
LABEL_78:
          v85 = v87 | 0x6C616900000000;
          break;
        case 6:
          v84 = 0xE700000000000000;
          v85 = 0x64657261656C63;
          break;
        case 7:
          v84 = 0xE600000000000000;
          v85 = 0x6E6564646968;
          break;
        default:
          break;
      }

      v88 = v83;
      v89 = sub_1D7E1C3D8(v85, v84, aBlock);

      *(v81 + 14) = v89;
      _os_log_impl(&dword_1D7DFF000, v79, v80, "Presenting card %@ to state %s", v81, 0x16u);
      sub_1D7E39F80(v104);
      OUTLINED_FUNCTION_38();
      __swift_destroy_boxed_opaque_existential_1Tm(v109);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    v90 = *&v5[v12];
    v91 = swift_allocObject();
    *(v91 + 16) = v78;
    *(v91 + 24) = v9;
    *(v91 + 32) = v105;
    *(v91 + 40) = v110;
    aBlock[4] = sub_1D80731B4;
    aBlock[5] = v91;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_17();
    aBlock[2] = v92;
    aBlock[3] = &block_descriptor_45_1;
    v93 = _Block_copy(aBlock);
    v94 = v78;
    v95 = v90;
    sub_1D7E38808(v105);

    [v95 presentViewController:v10 animated:v107 & 1 completion:v93];
    _Block_release(v93);
  }

  else
  {
    if (qword_1EDBB1F78 != -1)
    {
      OUTLINED_FUNCTION_0_157();
    }

    v40 = sub_1D818FE34();
    __swift_project_value_buffer(v40, qword_1EDBC6048);
    v41 = sub_1D818FE14();
    v42 = sub_1D81919C4();
    if (os_log_type_enabled(v41, v42))
    {
      OUTLINED_FUNCTION_13_31();
      v43 = OUTLINED_FUNCTION_55_1();
      v44 = OUTLINED_FUNCTION_61();
      aBlock[0] = v44;
      *v43 = 136315138;
      v45 = 0xEA00000000006E65;
      v46 = v44;
      switch(v9)
      {
        case 1:
          OUTLINED_FUNCTION_6_65();
          break;
        case 2:
          v96 = 0x70616C6C6F63;
          goto LABEL_84;
        case 3:
          v45 = 0xE700000000000000;
          v97 = 1953653104;
          goto LABEL_88;
        case 4:
          v96 = 0x73696D736964;
LABEL_84:
          a4 = v96 & 0xFFFFFFFFFFFFLL | 0x6573000000000000;
          v45 = 0xE900000000000064;
          break;
        case 5:
          v45 = 0xE700000000000000;
          v97 = 1953066601;
LABEL_88:
          a4 = v97 | 0x6C616900000000;
          break;
        case 6:
          OUTLINED_FUNCTION_7_49();
          break;
        case 7:
          OUTLINED_FUNCTION_12_34();
          break;
        default:
          break;
      }

      v98 = sub_1D7E1C3D8(a4, v45, aBlock);

      *(v43 + 4) = v98;
      _os_log_impl(&dword_1D7DFF000, v41, v42, "Attempted to present to an undefined state for this card: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      OUTLINED_FUNCTION_3_89();
      OUTLINED_FUNCTION_38();
    }

    if (a3)
    {
      v23 = 0;
      goto LABEL_9;
    }
  }
}

void sub_1D8071D14(void *a1, char a2, void (*a3)(uint64_t))
{
  if (qword_1EDBB1F78 != -1)
  {
    swift_once();
  }

  v6 = sub_1D818FE34();
  __swift_project_value_buffer(v6, qword_1EDBC6048);
  v7 = a1;
  v8 = sub_1D818FE14();
  v9 = sub_1D81919E4();
  v10 = &OBJC_IVAR____TtC5TeaUI18BlockBarButtonItem_shouldRecolor;
  if (os_log_type_enabled(v8, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v11 = 138412802;
    v14 = *&v7[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_viewController];
    *(v11 + 4) = v14;
    *v12 = v14;
    *(v11 + 12) = 2080;
    v15 = 0xEA00000000006E65;
    v16 = 0x657263736C6C7566;
    v17 = v13;
    switch(a2)
    {
      case 1:
        v15 = 0xE800000000000000;
        v16 = 0x6465646E61707865;
        break;
      case 2:
        v18 = 0x70616C6C6F63;
        goto LABEL_9;
      case 3:
        v15 = 0xE700000000000000;
        v19 = 1953653104;
        goto LABEL_13;
      case 4:
        v18 = 0x73696D736964;
LABEL_9:
        v16 = v18 & 0xFFFFFFFFFFFFLL | 0x6573000000000000;
        v15 = 0xE900000000000064;
        break;
      case 5:
        v15 = 0xE700000000000000;
        v19 = 1953066601;
LABEL_13:
        v16 = v19 | 0x6C616900000000;
        break;
      case 6:
        v15 = 0xE700000000000000;
        v16 = 0x64657261656C63;
        break;
      case 7:
        v15 = 0xE600000000000000;
        v16 = 0x6E6564646968;
        break;
      default:
        break;
    }

    v20 = v14;
    v21 = sub_1D7E1C3D8(v16, v15, &v22);

    *(v11 + 14) = v21;
    *(v11 + 22) = 1024;
    v10 = &OBJC_IVAR____TtC5TeaUI18BlockBarButtonItem_shouldRecolor;
    LODWORD(v21) = v7[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_updatedDetent];

    *(v11 + 24) = v21;
    _os_log_impl(&dword_1D7DFF000, v8, v9, "Presented card with view controller: %@ to state %s, updatedDetent: %{BOOL}d", v11, 0x1Cu);
    sub_1D7E39F80(v12);
    MEMORY[0x1DA715D00](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1DA715D00](v17, -1, -1);
    MEMORY[0x1DA715D00](v11, -1, -1);
  }

  else
  {
  }

  if ((v7[v10[35]] & 1) == 0)
  {
    v23 = a2;
    sub_1D7E3A560(&v23);
  }

  if (a3)
  {
    a3(1);
  }
}

void sub_1D8072004(void *a1, char *a2, char a3, uint64_t isEscapingClosureAtFileLocation, uint64_t a5)
{
  v10 = *a2;
  v11 = [*&v5[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_presentedWrapper] sheetPresentationController];
  if (!v11)
  {
    goto LABEL_5;
  }

  v21 = v11;
  if (a3)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v21;
    *(v12 + 24) = a1;
    *(v12 + 32) = v5;
    *(v12 + 40) = v10;
    *(v12 + 48) = isEscapingClosureAtFileLocation;
    *(v12 + 56) = a5;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1D80731A0;
    *(v13 + 24) = v12;
    v26 = sub_1D7E74D6C;
    v27 = v13;
    OUTLINED_FUNCTION_1_70();
    v23 = 1107296256;
    v24 = sub_1D7E74D74;
    v25 = &block_descriptor_54;
    v14 = _Block_copy(aBlock);
    v15 = v21;
    v16 = a1;
    v17 = v5;
    sub_1D7E38808(isEscapingClosureAtFileLocation);

    [v15 animateChanges_];

    _Block_release(v14);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
LABEL_7:
      OUTLINED_FUNCTION_14_30();
      return;
    }

    __break(1u);
LABEL_5:
    if (isEscapingClosureAtFileLocation)
    {
      (isEscapingClosureAtFileLocation)(0);
    }

    goto LABEL_7;
  }

  v18 = [a1 identifier];
  [v21 setSelectedDetentIdentifier_];

  aBlock[0] = v10;
  sub_1D7E3A560(aBlock);
  v5[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_updatedDetent] = 1;
  if (isEscapingClosureAtFileLocation)
  {
    (isEscapingClosureAtFileLocation)(1);
  }

  OUTLINED_FUNCTION_14_30();
}

unsigned __int8 *sub_1D8072250(void *a1, id a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t))
{
  v9 = [a2 identifier];
  [a1 setSelectedDetentIdentifier_];

  v11 = a4;
  result = sub_1D7E3A560(&v11);
  *(a3 + OBJC_IVAR____TtC5TeaUI13UIKitCardItem_updatedDetent) = 1;
  if (a5)
  {
    return a5(1);
  }

  return result;
}

void sub_1D8072304(char a1, void (*a2)(uint64_t), uint64_t a3)
{
  if (qword_1EDBB1F78 != -1)
  {
    OUTLINED_FUNCTION_0_157();
  }

  v7 = sub_1D818FE34();
  __swift_project_value_buffer(v7, qword_1EDBC6048);
  v8 = v3;
  v9 = sub_1D818FE14();
  v10 = sub_1D81919E4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_18_1();
    v12 = OUTLINED_FUNCTION_10_43();
    v13 = OUTLINED_FUNCTION_61();
    v24 = v13;
    *v11 = 138412546;
    v23 = a1;
    v14 = a2;
    v15 = a3;
    v16 = *&v8[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_viewController];
    *(v11 + 4) = v16;
    *v12 = v16;
    *(v11 + 12) = 2080;
    sub_1D8073150();
    v17 = v16;
    v18 = sub_1D8190F84();
    v20 = sub_1D7E1C3D8(v18, v19, &v24);

    *(v11 + 14) = v20;
    a3 = v15;
    a2 = v14;
    a1 = v23;
    OUTLINED_FUNCTION_15_29(&dword_1D7DFF000, v21, v22, "Restoring card with view controller %@ to state %s");
    sub_1D7E39F80(v12);
    OUTLINED_FUNCTION_38();
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_3_89();
  }

  v25 = v8[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_previousPresentationState];
  sub_1D8071028(&v25, a1 & 1, a2, a3);
}

id sub_1D80724C4()
{
  v1 = sub_1D8070B0C();
  [v1 willMoveToParentViewController_];

  v2 = OBJC_IVAR____TtC5TeaUI13UIKitCardItem____lazy_storage___presentingWrapper;
  result = [*(v0 + OBJC_IVAR____TtC5TeaUI13UIKitCardItem____lazy_storage___presentingWrapper) view];
  if (result)
  {
    v4 = result;
    [result removeFromSuperview];

    v5 = *(v0 + v2);

    return [v5 removeFromParentViewController];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D807255C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a1 + 10);
  v5 = *(a1 + 16);
  v6 = v1 + OBJC_IVAR____TtC5TeaUI13UIKitCardItem_behavior;
  *v6 = *a1;
  *(v6 + 8) = v2;
  *(v6 + 9) = v3;
  *(v6 + 10) = v4;
  *(v6 + 16) = v5;
  sub_1D8190DB4();
}

unsigned __int8 *sub_1D80725CC(unsigned __int8 *result)
{
  v2 = *result;
  if (v2 != *(v1 + OBJC_IVAR____TtC5TeaUI13UIKitCardItem_presentationState))
  {
    v3 = v1 + OBJC_IVAR____TtC5TeaUI13UIKitCardItem_animationDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = OUTLINED_FUNCTION_11_36();
      v7 = v2;
      (*(v3 + 24))(v1, &off_1F52FBB00, &v7, v4, v3);
      swift_unknownObjectRelease();
    }

    result = OUTLINED_FUNCTION_16_29();
    if (result)
    {
      v5 = OUTLINED_FUNCTION_11_36();
      v6 = v2;
      (*(v3 + 24))(v1, &off_1F52FBB00, &v6, v5, v3);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_1D80726F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIKitCardItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D80727E4(void *a1)
{
  v14 = 9;
  sub_1D80729AC(&v14, v1, a1, &v13);
  v3 = v13;
  if (v13 == 8)
  {
    if (qword_1EDBB1F78 != -1)
    {
      OUTLINED_FUNCTION_0_157();
    }

    v4 = sub_1D818FE34();
    __swift_project_value_buffer(v4, qword_1EDBC6048);
    v5 = a1;
    oslog = sub_1D818FE14();
    v6 = sub_1D81919E4();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = OUTLINED_FUNCTION_55_1();
      v8 = OUTLINED_FUNCTION_61();
      v13 = v8;
      *v7 = 136315138;
      [v5 selectedDetentIdentifier];
      sub_1D80730F8();
      v9 = sub_1D8190F84();
      v11 = sub_1D7E1C3D8(v9, v10, &v13);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1D7DFF000, oslog, v6, "Unable to match selected detent identifier to a presentation state, identifier: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC5TeaUI13UIKitCardItem_futurePresentationState) = v13;
    LOBYTE(v13) = v3;
    sub_1D80725CC(&v13);
    LOBYTE(v13) = v3;
    sub_1D7E3A560(&v13);
  }
}

void sub_1D80729AC(_BYTE *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v4 = *a1;
  if (v4 != 9)
  {
    goto LABEL_21;
  }

  v28 = a4;
  v7 = OBJC_IVAR____TtC5TeaUI13UIKitCardItem_detents;
  swift_beginAccess();
  v8 = *(a2 + v7);
  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v14 = 0;
  v30 = v8;
  if (!v12)
  {
LABEL_5:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        LOBYTE(v4) = 8;
        goto LABEL_20;
      }

      v12 = *(v9 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_9;
      }
    }

    __break(1u);
    return;
  }

  while (1)
  {
LABEL_9:
    v16 = __clz(__rbit64(v12)) | (v14 << 6);
    v17 = *(*(v8 + 48) + v16);
    v31 = *(*(v8 + 56) + 8 * v16);
    v18 = [v31 identifier];
    v19 = [a3 selectedDetentIdentifier];
    if (!v19)
    {

      goto LABEL_17;
    }

    v20 = v19;
    v29 = v17;
    v21 = sub_1D8190F14();
    v23 = v22;
    if (v21 == sub_1D8190F14() && v23 == v24)
    {
      break;
    }

    v26 = sub_1D8192634();

    v8 = v30;
    if (v26)
    {
      goto LABEL_23;
    }

LABEL_17:
    v12 &= v12 - 1;

    if (!v12)
    {
      goto LABEL_5;
    }
  }

LABEL_23:

  LOBYTE(v4) = v29;
LABEL_20:
  swift_beginAccess();
  *a1 = v4;
  a4 = v28;
LABEL_21:
  *a4 = v4;
}

void sub_1D8072C50(void *a1)
{
  v2 = v1;
  v4 = [objc_opt_self() sharedApplication];
  v5 = [v4 applicationState];

  if (!v5)
  {
    [a1 _currentPresentedViewFrame];
    x = v17.origin.x;
    y = v17.origin.y;
    width = v17.size.width;
    height = v17.size.height;
    MinY = CGRectGetMinY(v17);
    if ((~*&MinY & 0x7FF0000000000000) != 0 || (*&MinY & 0xFFFFFFFFFFFFFLL) == 0)
    {
      if (OUTLINED_FUNCTION_16_29())
      {
        v11 = OUTLINED_FUNCTION_11_36();
        v15 = (*(v4 + 1))(v11, v4);

        if (v15)
        {
          if (sub_1D7EB1310(v15) && ((v12 = v2 + OBJC_IVAR____TtC5TeaUI13UIKitCardItem_previousPresentedViewFrame, (*(v2 + OBJC_IVAR____TtC5TeaUI13UIKitCardItem_previousPresentedViewFrame + 32) & 1) != 0) || (v18.origin.x = x, v18.origin.y = y, v18.size.width = width, v18.size.height = height, !CGRectEqualToRect(*v12, v18))))
          {
            if (OUTLINED_FUNCTION_16_29())
            {
              OUTLINED_FUNCTION_11_36();
              v13 = OUTLINED_FUNCTION_8_38();
              (*(v4 + 6))(v2, &off_1F52FBB00, 0, v4, v13);
              swift_unknownObjectRelease();
            }

            if (OUTLINED_FUNCTION_16_29())
            {
              OUTLINED_FUNCTION_11_36();
              v14 = OUTLINED_FUNCTION_8_38();
              (*(v4 + 6))(v2, &off_1F52FBB00, 0, v4, v14);

              swift_unknownObjectRelease();
            }

            else
            {
            }

            *v12 = x;
            *(v12 + 8) = y;
            *(v12 + 16) = width;
            *(v12 + 24) = height;
            *(v12 + 32) = 0;
          }

          else
          {
          }
        }
      }
    }
  }
}

void sub_1D8072EDC()
{
  if (qword_1EDBB1F78 != -1)
  {
    OUTLINED_FUNCTION_0_157();
  }

  v1 = sub_1D818FE34();
  __swift_project_value_buffer(v1, qword_1EDBC6048);
  v2 = v0;
  v3 = sub_1D818FE14();
  v4 = sub_1D81919E4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_55_1();
    v6 = OUTLINED_FUNCTION_10_43();
    *v5 = 138412290;
    v7 = *&v2[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_viewController];
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&dword_1D7DFF000, v3, v4, "Card with view controller: %@ was dismissed (and removed from stack) by user interaction", v5, 0xCu);
    sub_1D7E39F80(v6);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  v2[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_futurePresentationState] = 4;
  v15 = 4;
  sub_1D80725CC(&v15);
  v14 = 4;
  sub_1D7E3A560(&v14);
  v2[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_updatedDetent] = 0;
  v9 = &v2[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_cardContainerController];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = *(v9 + 1);
    v13 = Strong;
    ObjectType = swift_getObjectType();
    j__OUTLINED_FUNCTION_0_255(*&v2[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_viewController], 1, 0, 0, ObjectType, v11);
  }
}

void sub_1D80730F8()
{
  if (!qword_1ECA10250[0])
  {
    _s3__C10IdentifierVMa_0();
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, qword_1ECA10250);
    }
  }
}

void sub_1D8073150()
{
  if (!qword_1EDBB01E8)
  {
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB01E8);
    }
  }
}

uint64_t sub_1D80731C4(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_1D8073260(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

uint64_t sub_1D8073260(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_1D81925A4();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v11 = sub_1D81913D4();
        *(v11 + 16) = v10;
      }

      v12[0] = v11 + 32;
      v12[1] = v10;
      a3(v12, v13, a1, v9);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

uint64_t sub_1D807336C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_1D8192634();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1D8073434(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + a3);
      v8 = qword_1D81B3DC8[v7];
      v9 = v6;
      v10 = v5;
      do
      {
        v11 = *(v10 - 1);
        if (v8 >= qword_1D81B3DC8[v11])
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v10 = v11;
        *--v10 = v7;
      }

      while (!__CFADD__(v9++, 1));
      ++a3;
      ++v5;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1D80734A8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_1D8192634();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_1D8192634()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
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
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_1D8192634() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D7EE4840();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_1D7EE4840();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_1D80740C4((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_1D8073E6C(&v91, *a1, a3);
LABEL_102:
}

void sub_1D80739B0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v77 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v72 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = qword_1D81B3DC8[*(*a3 + v8)];
        v10 = *(*a3 + v8);
        v11 = qword_1D81B3DC8[*(*a3 + v6)];
        v12 = v6 + 2;
        if (v5 <= v6 + 2)
        {
          v8 = v6 + 2;
        }

        else
        {
          v8 = v5;
        }

        while (v12 < v5)
        {
          v13 = *(*a3 + v12);
          v14 = (v9 < v11) ^ (qword_1D81B3DC8[v13] >= qword_1D81B3DC8[v10]);
          ++v12;
          v10 = v13;
          if ((v14 & 1) == 0)
          {
            v8 = v12 - 1;
            break;
          }
        }

        if (v9 < v11)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            v15 = v8 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + v16);
                *(v17 + v16) = *(v17 + v15);
                *(v17 + v15) = v18;
              }
            }

            while (++v16 < v15--);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = (*a3 + v8);
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + v8);
              v24 = qword_1D81B3DC8[v23];
              v25 = v22;
              v26 = v21;
              do
              {
                v27 = *(v26 - 1);
                if (v24 >= qword_1D81B3DC8[v27])
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v26 = v27;
                *--v26 = v23;
              }

              while (!__CFADD__(v25++, 1));
              ++v8;
              ++v21;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v74 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D7EE4840();
        v7 = v70;
      }

      v29 = v7[2];
      v30 = v29 + 1;
      if (v29 >= v7[3] >> 1)
      {
        sub_1D7EE4840();
        v7 = v71;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v74;
      v75 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_55:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_77;
            }

            goto LABEL_70;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_70:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_84;
          }

LABEL_77:
          if (v33 - 1 >= v30)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = v67[1];
          sub_1D8074268((*a3 + *v65), (*a3 + *v67), (*a3 + v68), v75);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7[2];
          if (v33 > v69)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v69)
          {
            goto LABEL_93;
          }

          v30 = v69 - 1;
          memmove(&v31[2 * v33], v67 + 2, 16 * (v69 - 1 - v33));
          v7[2] = v69 - 1;
          if (v69 <= 2)
          {
            goto LABEL_84;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_77;
        }

        goto LABEL_55;
      }

LABEL_84:
      v5 = a3[1];
      v6 = v74;
      a4 = v72;
      if (v74 >= v5)
      {
        v77 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1D8073F98(&v77, *a1, a3);
LABEL_89:
}

uint64_t sub_1D8073E6C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1D8120804(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1D80740C4((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1D8073F98(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1D8120804(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1D8074268((*a3 + *v9), (*a3 + *v11), (*a3 + v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1D80740C4(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1D7E2D3DC(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1D8192634() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_1D7E2D3DC(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_1D8192634() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t sub_1D8074268(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (a2 - a1 < a3 - a2)
  {
    sub_1D80E5E04(a1, a2 - a1, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_43;
      }

      v12 = *v4;
      if (qword_1D81B3DC8[*v6] < qword_1D81B3DC8[v12])
      {
        break;
      }

      v15 = v4 + 1;
      if (v7 < v4 || v7 >= v15)
      {
        goto LABEL_19;
      }

LABEL_20:
      ++v7;
      v4 = v15;
    }

    if (v7 >= v6 && v7 < v6 + 1)
    {
      ++v6;
      v15 = v4;
      goto LABEL_20;
    }

    LOBYTE(v12) = *v6++;
    v15 = v4;
LABEL_19:
    *v7 = v12;
    goto LABEL_20;
  }

  sub_1D80E5E04(a2, a3 - a2, a4);
  v10 = &v4[v9];
LABEL_22:
  v16 = v6 - 1;
  --v5;
  while (v10 > v4 && v6 > v7)
  {
    v18 = *(v10 - 1);
    v19 = *v16;
    if (qword_1D81B3DC8[v18] < qword_1D81B3DC8[v19])
    {
      v21 = v5 + 1 < v6 || v5 >= v6;
      --v6;
      if (v21)
      {
        *v5 = v19;
        v6 = v16;
      }

      goto LABEL_22;
    }

    if ((v5 + 1) < v10 || v5 >= v10)
    {
      *v5 = v18;
    }

    --v5;
    --v10;
  }

LABEL_43:
  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}

uint64_t objectdestroy_41Tm()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t SnapBlueprintBookmarkOptions.adjust(indexPath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  if (*v3)
  {
    v7 = sub_1D818E964();
    if (v6 < 0)
    {
      __break(1u);
    }

    else if ((v7 / v6 * v6) >> 64 == (v7 / v6 * v6) >> 63)
    {
      sub_1D818E974();

LABEL_12:
      JUMPOUT(0x1DA710B60);
    }

    __break(1u);
    goto LABEL_12;
  }

  sub_1D818E994();
  OUTLINED_FUNCTION_3_0();
  v10 = *(v9 + 16);

  return v10(a2, a1, v8);
}

uint64_t SnapBlueprintBookmarkApplicator.__allocating_init(blueprintLayoutProvider:blueprintViewProvider:snapBlueprintBookmarkOptionsFactory:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  SnapBlueprintBookmarkApplicator.init(blueprintLayoutProvider:blueprintViewProvider:snapBlueprintBookmarkOptionsFactory:)(a1, a2, a3);
  return v6;
}

uint64_t SnapBlueprintBookmarkApplicator.init(blueprintLayoutProvider:blueprintViewProvider:snapBlueprintBookmarkOptionsFactory:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  OUTLINED_FUNCTION_3_0();
  (*(v6 + 32))(v3 + v7);
  OUTLINED_FUNCTION_12();
  *(v3 + *(v8 + 120)) = a2;
  OUTLINED_FUNCTION_12();
  sub_1D7E05450(a3, v3 + *(v9 + 128));
  return v3;
}

uint64_t SnapBlueprintBookmarkApplicator.deinit()
{
  OUTLINED_FUNCTION_3_0();
  (*(v1 + 8))(v0 + v2);
  OUTLINED_FUNCTION_12();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_12();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + *(v3 + 128));
  return v0;
}

uint64_t SnapBlueprintBookmarkApplicator.__deallocating_deinit()
{
  SnapBlueprintBookmarkApplicator.deinit();

  return swift_deallocClassInstance();
}

uint64_t SnapBlueprintBookmarkApplicator.supportedBookmark.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D818E994();
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  type metadata accessor for BlueprintBookmark();

  return swift_storeEnumTagMultiPayload();
}

double SnapBlueprintBookmarkApplicator.prepare(bookmark:context:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t SnapBlueprintBookmarkApplicator.apply(bookmark:context:preparedContext:)(uint64_t a1, const void *a2)
{
  v3 = v2;
  v45 = a1;
  v41 = *v3;
  v5 = v41;
  v6 = sub_1D818E994();
  v42 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v36 - v9;
  memcpy(__dst, a2, 0x80uLL);
  v10 = v5[14];
  v11 = v5[10];
  v12 = v5[12];
  BlueprintLayoutProviderType.layoutBlueprint.getter(v11, v12);
  v13 = OUTLINED_FUNCTION_2_104();
  v14 = OUTLINED_FUNCTION_2_104();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedConformanceWitness();
  v50[0] = v13;
  v50[1] = v14;
  v50[2] = AssociatedConformanceWitness;
  v50[3] = v16;
  v17 = type metadata accessor for BlueprintLayout();
  swift_getWitnessTable();
  LOBYTE(a2) = sub_1D8191874();
  OUTLINED_FUNCTION_3_0();
  v19 = *(v18 + 8);
  v20 = v18 + 8;
  result = (v19)(v51, v17);
  if ((a2 & 1) == 0)
  {
    v43 = v6;
    v22 = (v3 + *(*v3 + 128));
    v23 = v22[3];
    v39 = v22[4];
    v40 = __swift_project_boxed_opaque_existential_1(v22, v23);
    v38 = v10;
    BlueprintLayoutProviderType.layoutBlueprint.getter(v11, v12);
    memcpy(v49, v51, 0x235uLL);
    sub_1D7E222B8(v49, v50);
    v36 = v20;
    v37 = v19;
    v19(v51, v17);
    memcpy(v47, v49, 0x235uLL);
    (*(v39 + 8))(&v48, v47, v23);
    memcpy(v50, v47, 0x235uLL);
    sub_1D7E4C1A0(v50);
    v24 = v48;
    v25 = v44;
    sub_1D8074CD8(v45, __dst, v44);
    if (v24)
    {
      result = sub_1D818E964();
      v26 = v43;
      if (v24 < 0)
      {
        __break(1u);
      }

      else
      {
        v27 = result / v24 * v24;
        if ((result / v24 * v24) >> 64 == v27 >> 63)
        {
          v28 = sub_1D818E974();
          MEMORY[0x1DA710B60](v27, v28);
          v29 = v42;
          (*(v42 + 8))(v25, v26);
LABEL_7:
          v30 = (*(v41[13] + 56))(v41[11], v41[13]);
          BlueprintLayoutProviderType.layoutBlueprint.getter(v11, v12);
          v31 = v51[565];
          v37(v51, v17);
          v47[0] = v31;
          swift_getAssociatedTypeWitness();
          v32 = swift_getAssociatedConformanceWitness();
          v33 = *(v32 + 208);
          v34 = swift_checkMetadataState();
          v35 = v46;
          v33(v46, v47, 0, v34, v32);

          return (*(v29 + 8))(v35, v43);
        }
      }

      __break(1u);
      return result;
    }

    v29 = v42;
    (*(v42 + 32))(v46, v25, v43);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D8074CD8@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for BlueprintBookmark();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7E3D564();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  sub_1D7E2B108(a1, v8);
  if (swift_getEnumCaseMultiPayload())
  {
    v18 = type metadata accessor for BlueprintBookmark;
    v19 = v8;
  }

  else
  {
    sub_1D8013D78(v8, v17);
    sub_1D8013D78(v17, v14);
    v20 = sub_1D818E994();
    if (__swift_getEnumTagSinglePayload(v14, 1, v20) != 1)
    {
      return (*(*(v20 - 8) + 32))(a3, v14, v20);
    }

    v18 = sub_1D7E3D564;
    v19 = v14;
  }

  sub_1D8075144(v19, v18);
  memcpy(__dst, a2, sizeof(__dst));
  if (sub_1D7FA0BEC(__dst) == 1)
  {
    v21 = sub_1D818E994();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v21);
  }

  else
  {
    v24 = __dst[4];
    sub_1D8190DB4();
    sub_1D80751A0(&v24);
    sub_1D7E9D980();

    v21 = sub_1D818E994();
    if (__swift_getEnumTagSinglePayload(v11, 1, v21) != 1)
    {
      return (*(*(v21 - 8) + 32))(a3, v11, v21);
    }
  }

  MEMORY[0x1DA710B40](0, 0);
  sub_1D818E994();
  result = __swift_getEnumTagSinglePayload(v11, 1, v21);
  if (result != 1)
  {
    return sub_1D8075144(v11, sub_1D7E3D564);
  }

  return result;
}

uint64_t sub_1D8075058()
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

uint64_t sub_1D8075144(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3_0();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1D80751A0(uint64_t *a1)
{
  v2 = *(sub_1D818E994() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D8120B04();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1D8075248(v6);
  *a1 = v3;
}

void sub_1D8075248(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1D81925A4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D818E994();
        v6 = sub_1D81913D4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1D818E994() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D8075600(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D8075378(0, v2, 1, a1);
  }
}

void sub_1D8075378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1D818E994();
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v44 = &v30 - v11;
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v43 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v41 = *(v13 + 16);
    v42 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v19 = (v16 + v17 * (a3 - 1));
    v37 = -v17;
    v38 = (v13 + 32);
    v20 = a1 - a3;
    v39 = v16;
    v31 = v17;
    v21 = v16 + v17 * a3;
    while (2)
    {
      v35 = v19;
      v36 = a3;
      v33 = v21;
      v34 = v20;
      do
      {
        v22 = v43;
        v23 = v41;
        (v41)(v43, v21, v8, v14);
        v24 = v44;
        v23(v44, v19, v8);
        sub_1D80764C8();
        v25 = sub_1D8190EA4();
        v26 = *v18;
        (*v18)(v24, v8);
        v26(v22, v8);
        if ((v25 & 1) == 0)
        {
          break;
        }

        if (!v39)
        {
          __break(1u);
          return;
        }

        v27 = *v38;
        v28 = v40;
        (*v38)(v40, v21, v8);
        swift_arrayInitWithTakeFrontToBack();
        v27(v19, v28, v8);
        v19 += v37;
        v21 += v37;
      }

      while (!__CFADD__(v20++, 1));
      a3 = v36 + 1;
      v19 = &v35[v31];
      v20 = v34 - 1;
      v21 = v33 + v31;
      if (v36 + 1 != v32)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1D8075600(unint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v125 = a1;
  v7 = sub_1D818E994();
  MEMORY[0x1EEE9AC00](v7);
  v127 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v138 = &v122 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v144 = &v122 - v12;
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v143 = &v122 - v16;
  v134 = v14;
  v135 = a3;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
LABEL_100:
    v145 = *v125;
    if (!v145)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v136;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_102:
      v114 = v19 + 16;
      v115 = *(v19 + 2);
      while (v115 >= 2)
      {
        if (!*v135)
        {
          goto LABEL_138;
        }

        v116 = v4;
        v4 = v19;
        v117 = &v19[16 * v115];
        v118 = *v117;
        v119 = &v114[2 * v115];
        v120 = *(v119 + 1);
        sub_1D8075FB0(&(*v135)[*(v134 + 72) * *v117], &(*v135)[*(v134 + 72) * *v119], &(*v135)[*(v134 + 72) * v120], v145);
        v19 = v116;
        if (v116)
        {
          break;
        }

        if (v120 < v118)
        {
          goto LABEL_126;
        }

        if (v115 - 2 >= *v114)
        {
          goto LABEL_127;
        }

        *v117 = v118;
        *(v117 + 1) = v120;
        v121 = *v114 - v115;
        if (*v114 < v115)
        {
          goto LABEL_128;
        }

        v115 = *v114 - 1;
        sub_1D8120818(v119 + 16, v121, v119);
        *v114 = v115;
        v19 = v4;
        v4 = 0;
      }

LABEL_110:

      return;
    }

LABEL_135:
    v19 = sub_1D8120804(v19);
    goto LABEL_102;
  }

  v123 = a4;
  v18 = 0;
  v141 = (v14 + 8);
  v142 = v14 + 16;
  v140 = (v14 + 32);
  v19 = MEMORY[0x1E69E7CC0];
  v145 = v7;
  while (1)
  {
    v20 = v18++;
    v133 = v19;
    if (v18 < v17)
    {
      v21 = *(v14 + 72);
      v22 = &(*v135)[v21 * v18];
      v126 = *v135;
      v23 = v126;
      v24 = *(v14 + 16);
      v132 = v18;
      v25 = v143;
      v137 = v17;
      v24(v143, v22, v7, v15);
      v26 = &v23[v21 * v20];
      v4 = v7;
      v27 = v144;
      v130 = v24;
      (v24)(v144, v26, v4);
      v129 = sub_1D80764C8();
      LODWORD(v131) = sub_1D8190EA4();
      v28 = *(v134 + 8);
      (v28)(v27, v4);
      v29 = v25;
      v18 = v132;
      v128 = v28;
      (v28)(v29, v4);
      v30 = v137;
      v124 = v20;
      v31 = v20 + 2;
      v139 = v21;
      v32 = &v126[v21 * (v20 + 2)];
      while (1)
      {
        v33 = v31;
        v34 = v18 + 1;
        if (v34 >= v30)
        {
          break;
        }

        v35 = v143;
        v4 = v145;
        v36 = v130;
        (v130)(v143, v32, v145);
        v37 = v34;
        v38 = v144;
        v36(v144, v22, v4);
        v39 = sub_1D8190EA4() & 1;
        v40 = v38;
        v18 = v37;
        v41 = v128;
        (v128)(v40, v4);
        (v41)(v35, v4);
        v32 += v139;
        v22 += v139;
        v31 = v33 + 1;
        v42 = (v131 & 1) == v39;
        v30 = v137;
        v19 = v133;
        if (!v42)
        {
          goto LABEL_9;
        }
      }

      v18 = v30;
LABEL_9:
      if (v131)
      {
        v20 = v124;
        if (v18 < v124)
        {
          goto LABEL_132;
        }

        if (v124 >= v18)
        {
          v14 = v134;
          v7 = v145;
          goto LABEL_31;
        }

        if (v30 >= v33)
        {
          v43 = v33;
        }

        else
        {
          v43 = v30;
        }

        v44 = v139 * (v43 - 1);
        v45 = v139 * v43;
        v46 = v124 * v139;
        v47 = v18;
        v48 = v124;
        v49 = v136;
        do
        {
          if (v48 != --v47)
          {
            v136 = v49;
            v50 = *v135;
            if (!*v135)
            {
              goto LABEL_139;
            }

            v4 = v145;
            v137 = *v140;
            v137(v127, &v50[v46], v145);
            v51 = v46 < v44 || &v50[v46] >= &v50[v45];
            if (v51)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v46 != v44)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v137(&v50[v44], v127, v4);
            v19 = v133;
            v49 = v136;
          }

          ++v48;
          v44 -= v139;
          v45 -= v139;
          v46 += v139;
        }

        while (v48 < v47);
        v136 = v49;
      }

      v14 = v134;
      v7 = v145;
      v20 = v124;
    }

LABEL_31:
    v52 = v135[1];
    if (v18 < v52)
    {
      if (__OFSUB__(v18, v20))
      {
        goto LABEL_131;
      }

      if (v18 - v20 < v123)
      {
        break;
      }
    }

LABEL_47:
    if (v18 < v20)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D7EE4840();
      v19 = v111;
    }

    v68 = *(v19 + 2);
    v69 = v68 + 1;
    if (v68 >= *(v19 + 3) >> 1)
    {
      sub_1D7EE4840();
      v19 = v112;
    }

    *(v19 + 2) = v69;
    v70 = v19 + 32;
    v71 = &v19[16 * v68 + 32];
    *v71 = v20;
    *(v71 + 1) = v18;
    v139 = *v125;
    if (!v139)
    {
      goto LABEL_140;
    }

    if (v68)
    {
      while (1)
      {
        v72 = v69 - 1;
        v73 = &v70[16 * v69 - 16];
        v74 = &v19[16 * v69];
        if (v69 >= 4)
        {
          break;
        }

        if (v69 == 3)
        {
          v75 = *(v19 + 4);
          v76 = *(v19 + 5);
          v85 = __OFSUB__(v76, v75);
          v77 = v76 - v75;
          v78 = v85;
LABEL_67:
          if (v78)
          {
            goto LABEL_117;
          }

          v90 = *v74;
          v89 = *(v74 + 1);
          v91 = __OFSUB__(v89, v90);
          v92 = v89 - v90;
          v93 = v91;
          if (v91)
          {
            goto LABEL_120;
          }

          v94 = *(v73 + 1);
          v95 = v94 - *v73;
          if (__OFSUB__(v94, *v73))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v92, v95))
          {
            goto LABEL_125;
          }

          if (v92 + v95 >= v77)
          {
            if (v77 < v95)
            {
              v72 = v69 - 2;
            }

            goto LABEL_89;
          }

          goto LABEL_82;
        }

        if (v69 < 2)
        {
          goto LABEL_119;
        }

        v97 = *v74;
        v96 = *(v74 + 1);
        v85 = __OFSUB__(v96, v97);
        v92 = v96 - v97;
        v93 = v85;
LABEL_82:
        if (v93)
        {
          goto LABEL_122;
        }

        v99 = *v73;
        v98 = *(v73 + 1);
        v85 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v85)
        {
          goto LABEL_124;
        }

        if (v100 < v92)
        {
          goto LABEL_96;
        }

LABEL_89:
        if (v72 - 1 >= v69)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*v135)
        {
          goto LABEL_137;
        }

        v104 = &v70[16 * v72 - 16];
        v105 = *v104;
        v4 = v70;
        v106 = &v70[16 * v72];
        v107 = *(v106 + 1);
        v108 = v136;
        sub_1D8075FB0(&(*v135)[*(v134 + 72) * *v104], &(*v135)[*(v134 + 72) * *v106], &(*v135)[*(v134 + 72) * v107], v139);
        v136 = v108;
        if (v108)
        {
          goto LABEL_110;
        }

        if (v107 < v105)
        {
          goto LABEL_112;
        }

        v109 = *(v19 + 2);
        if (v72 > v109)
        {
          goto LABEL_113;
        }

        *v104 = v105;
        *(v104 + 1) = v107;
        if (v72 >= v109)
        {
          goto LABEL_114;
        }

        v69 = v109 - 1;
        sub_1D8120818(v106 + 16, v109 - 1 - v72, v106);
        *(v19 + 2) = v109 - 1;
        v110 = v109 > 2;
        v7 = v145;
        v70 = v4;
        if (!v110)
        {
          goto LABEL_96;
        }
      }

      v79 = &v70[16 * v69];
      v80 = *(v79 - 8);
      v81 = *(v79 - 7);
      v85 = __OFSUB__(v81, v80);
      v82 = v81 - v80;
      if (v85)
      {
        goto LABEL_115;
      }

      v84 = *(v79 - 6);
      v83 = *(v79 - 5);
      v85 = __OFSUB__(v83, v84);
      v77 = v83 - v84;
      v78 = v85;
      if (v85)
      {
        goto LABEL_116;
      }

      v86 = *(v74 + 1);
      v87 = v86 - *v74;
      if (__OFSUB__(v86, *v74))
      {
        goto LABEL_118;
      }

      v85 = __OFADD__(v77, v87);
      v88 = v77 + v87;
      if (v85)
      {
        goto LABEL_121;
      }

      if (v88 >= v82)
      {
        v102 = *v73;
        v101 = *(v73 + 1);
        v85 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v85)
        {
          goto LABEL_129;
        }

        if (v77 < v103)
        {
          v72 = v69 - 2;
        }

        goto LABEL_89;
      }

      goto LABEL_67;
    }

LABEL_96:
    v14 = v134;
    v17 = v135[1];
    if (v18 >= v17)
    {
      goto LABEL_100;
    }
  }

  v53 = (v20 + v123);
  if (__OFADD__(v20, v123))
  {
    goto LABEL_133;
  }

  if (v53 >= v52)
  {
    v53 = v135[1];
  }

  if (v53 < v20)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v18 == v53)
  {
    goto LABEL_47;
  }

  v54 = *v135;
  v55 = *(v14 + 72);
  v139 = *(v14 + 16);
  v56 = &v54[v55 * (v18 - 1)];
  v57 = -v55;
  v124 = v20;
  v58 = (v20 - v18);
  v137 = v54;
  v126 = v55;
  v59 = &v54[v18 * v55];
  v128 = v53;
LABEL_40:
  v131 = v56;
  v132 = v18;
  v129 = v59;
  v130 = v58;
  while (1)
  {
    v60 = v143;
    v61 = v139;
    (v139)(v143, v59, v7);
    v62 = v144;
    v61(v144, v56, v145);
    sub_1D80764C8();
    v63 = sub_1D8190EA4();
    v4 = v141;
    v64 = *v141;
    v65 = v62;
    v7 = v145;
    (*v141)(v65, v145);
    v64(v60, v7);
    if ((v63 & 1) == 0)
    {
LABEL_45:
      v18 = v132 + 1;
      v56 = &v126[v131];
      v58 = v130 - 1;
      v59 = &v126[v129];
      if ((v132 + 1) == v128)
      {
        v18 = v128;
        v19 = v133;
        v20 = v124;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v137)
    {
      break;
    }

    v4 = v140;
    v66 = *v140;
    v67 = v138;
    (*v140)(v138, v59, v7);
    swift_arrayInitWithTakeFrontToBack();
    v66(v56, v67, v7);
    v56 += v57;
    v59 += v57;
    v51 = __CFADD__(v58++, 1);
    if (v51)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

void sub_1D8075FB0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v60 = a4;
  v7 = sub_1D818E994();
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v48 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v14 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v14)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v17 = (a2 - a1) / v13;
  v63 = a1;
  v62 = v60;
  v55 = (v10 + 8);
  v56 = (v10 + 16);
  v18 = v15 / v13;
  if (v17 >= v15 / v13)
  {
    v31 = v60;
    sub_1D80E5F0C(a2, v15 / v13, v60);
    v32 = v31 + v18 * v13;
    v33 = -v13;
    v34 = v32;
    v51 = -v13;
    v52 = a1;
LABEL_36:
    v35 = v34;
    v53 = a2;
    v54 = a2 + v33;
    v36 = a3;
    v49 = v34;
    while (1)
    {
      if (v32 <= v60)
      {
        v63 = a2;
        v61 = v35;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v50 = v35;
      v59 = v36 + v33;
      v37 = v32 + v33;
      v38 = v32;
      v39 = v57;
      v40 = *v56;
      (*v56)(v57, v37, v7);
      v41 = v58;
      v40(v58, v54, v7);
      sub_1D80764C8();
      LOBYTE(v40) = sub_1D8190EA4();
      v42 = *v55;
      (*v55)(v41, v7);
      v42(v39, v7);
      if (v40)
      {
        v32 = v38;
        a3 = v59;
        if (v36 < v53 || v59 >= v53)
        {
          a2 = v54;
          swift_arrayInitWithTakeFrontToBack();
          v34 = v50;
          v33 = v51;
          a1 = v52;
        }

        else
        {
          v46 = v50;
          v33 = v51;
          v34 = v50;
          v14 = v36 == v53;
          v47 = v54;
          a2 = v54;
          a1 = v52;
          if (!v14)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v47;
            v34 = v46;
          }
        }

        goto LABEL_36;
      }

      v43 = v59;
      if (v36 < v38 || v59 >= v38)
      {
        swift_arrayInitWithTakeFrontToBack();
        v36 = v43;
        v32 = v37;
        v35 = v37;
        a1 = v52;
        a2 = v53;
        v33 = v51;
      }

      else
      {
        v35 = v37;
        v14 = v38 == v36;
        v36 = v59;
        v32 = v37;
        a1 = v52;
        a2 = v53;
        v33 = v51;
        if (!v14)
        {
          swift_arrayInitWithTakeBackToFront();
          v36 = v43;
          v32 = v37;
          v35 = v37;
        }
      }
    }

    v63 = a2;
    v61 = v49;
  }

  else
  {
    v19 = v60;
    sub_1D80E5F0C(a1, (a2 - a1) / v13, v60);
    v54 = v19 + v17 * v13;
    v61 = v54;
    v59 = a3;
    while (v60 < v54 && a2 < a3)
    {
      v21 = a1;
      v22 = v57;
      v23 = *v56;
      (*v56)(v57, a2, v7);
      v24 = v58;
      v23(v58, v60, v7);
      sub_1D80764C8();
      LOBYTE(v23) = sub_1D8190EA4();
      v25 = a2;
      v26 = *v55;
      (*v55)(v24, v7);
      v26(v22, v7);
      if (v23)
      {
        a2 = v25 + v13;
        v27 = v21;
        if (v21 < v25 || v21 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v59;
        }

        else
        {
          a3 = v59;
          if (v21 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v29 = v60 + v13;
        v27 = v21;
        if (v21 < v60 || v21 >= v29)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v25;
          a3 = v59;
        }

        else
        {
          a3 = v59;
          a2 = v25;
          if (v21 != v60)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v62 = v29;
        v60 = v29;
      }

      a1 = v27 + v13;
      v63 = a1;
    }
  }

LABEL_58:
  sub_1D816466C(&v63, &v62, &v61);
}

unint64_t sub_1D80764C8()
{
  result = qword_1ECA102D8;
  if (!qword_1ECA102D8)
  {
    sub_1D818E994();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA102D8);
  }

  return result;
}

void BlueprintLayoutCollectionInvalidatorAnimator.animate(animations:completion:)(uint64_t (*a1)(), uint64_t a2, uint64_t a3, uint64_t isEscapingClosureAtFileLocation)
{
  v5 = v4;
  sub_1D80769B8(v5, v29);
  switch(v30)
  {
    case 1:
      goto LABEL_6;
    case 2:
      v15 = *&v29[0];
      v27 = a1;
      v28 = a2;
      v23 = MEMORY[0x1E69E9820];
      v24 = 1107296256;
      v25 = sub_1D7E64940;
      v26 = &block_descriptor_6_1;
      v16 = _Block_copy(&v23);

      [v15 addAnimations_];
      _Block_release(v16);
      v17 = swift_allocObject();
      *(v17 + 16) = a3;
      *(v17 + 24) = isEscapingClosureAtFileLocation;
      v27 = sub_1D7E74D44;
      v28 = v17;
      v23 = MEMORY[0x1E69E9820];
      v24 = 1107296256;
      v25 = sub_1D7FEBC20;
      v26 = &block_descriptor_12_0;
      v18 = _Block_copy(&v23);

      [v15 addCompletion_];
      _Block_release(v18);
      [v15 startAnimation];

      break;
    case 3:
      v19 = objc_opt_self();
      v20 = swift_allocObject();
      v20[2] = a1;
      v20[3] = a2;
      v20[4] = a3;
      v20[5] = isEscapingClosureAtFileLocation;
      a3 = swift_allocObject();
      *(a3 + 16) = sub_1D80769F0;
      *(a3 + 24) = v20;
      v27 = sub_1D7E74D6C;
      v28 = a3;
      v23 = MEMORY[0x1E69E9820];
      v24 = 1107296256;
      v25 = sub_1D7E74D74;
      v26 = &block_descriptor_55;
      a1 = _Block_copy(&v23);

      [v19 performWithoutAnimation_];
      _Block_release(a1);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
LABEL_6:
        sub_1D7E05450(v29, &v23);
        v21 = v26;
        v22 = v27;
        __swift_project_boxed_opaque_existential_1(&v23, v26);
        (*(v22 + 1))(a1, a2, a3, isEscapingClosureAtFileLocation, v21, v22);
        __swift_destroy_boxed_opaque_existential_1Tm(&v23);
      }

      break;
    default:
      v10 = v29[0];
      v11 = objc_opt_self();
      v27 = a1;
      v28 = a2;
      v23 = MEMORY[0x1E69E9820];
      v24 = 1107296256;
      v25 = sub_1D7E64940;
      v26 = &block_descriptor_15_2;
      v12 = _Block_copy(&v23);

      v13 = swift_allocObject();
      *(v13 + 16) = a3;
      *(v13 + 24) = isEscapingClosureAtFileLocation;
      v27 = sub_1D7E74D44;
      v28 = v13;
      v23 = MEMORY[0x1E69E9820];
      v24 = 1107296256;
      v25 = sub_1D7EB30D4;
      v26 = &block_descriptor_21_3;
      v14 = _Block_copy(&v23);

      [v11 animateWithDuration:*(&v10 + 1) delay:v12 options:v14 animations:*&v10 completion:0.0];
      _Block_release(v14);
      _Block_release(v12);
      break;
  }
}

uint64_t sub_1D80769F0()
{
  v1 = *(v0 + 32);
  v2 = (*(v0 + 16))();
  return v1(v2);
}

uint64_t get_enum_tag_for_layout_string_5TeaUI44BlueprintLayoutCollectionInvalidatorAnimatorO(uint64_t a1)
{
  if ((*(a1 + 40) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t sub_1D8076A68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8076AA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D8076AF0(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t _NSRange.range(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1D818E304() == a3)
  {
    return 0;
  }

  sub_1D81910C4();
  if (v3)
  {
    return 0;
  }

  sub_1D81910C4();
  if (v4)
  {
    return 0;
  }

  sub_1D8190DB4();
  v5 = sub_1D8191004();
  if (v6)
  {
    return 0;
  }

  v7 = v5;
  sub_1D8190DB4();
  result = sub_1D8191004();
  if (v9)
  {
    return 0;
  }

  if (result >> 14 >= v7 >> 14)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_5TeaUI24BlueprintAnimatorContextO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D8076C80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1D8076CD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_1D8076D2C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t LabelBarButtonItem.barButtonItemIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC5TeaUI18LabelBarButtonItem_barButtonItemIdentifier);
  swift_beginAccess();
  v2 = *v1;
  sub_1D8190DB4();
  return v2;
}

uint64_t LabelBarButtonItem.barButtonItemIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC5TeaUI18LabelBarButtonItem_barButtonItemIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id LabelBarButtonItem.attributedText.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC5TeaUI18LabelBarButtonItem_label) attributedText];

  return v1;
}

void sub_1D8076F40(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  LabelBarButtonItem.attributedText.setter(v1);
}

void LabelBarButtonItem.attributedText.setter(void *a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC5TeaUI18LabelBarButtonItem_label];
  [v3 setAttributedText_];
  [v3 sizeToFit];
  v4 = [v2 customView];
  if (v4)
  {
    v5 = v4;
    v6 = [v3 attributedText];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 string];

      if (!v8)
      {
        sub_1D8190F14();
        v8 = sub_1D8190EE4();
      }
    }

    else
    {
      v8 = 0;
    }

    [v5 setLargeContentTitle_];
  }
}

uint64_t LabelBarButtonItem.attributedText.modify(void *a1)
{
  a1[1] = v1;
  *a1 = [*(v1 + OBJC_IVAR____TtC5TeaUI18LabelBarButtonItem_label) attributedText];
  return OUTLINED_FUNCTION_3();
}

void sub_1D80770E8(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    LabelBarButtonItem.attributedText.setter(v2);
  }

  else
  {
    LabelBarButtonItem.attributedText.setter(*a1);
  }
}

uint64_t LabelBarButtonItem.text.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC5TeaUI18LabelBarButtonItem_label) text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D8190F14();

  return v3;
}

void sub_1D80771C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1D8190DB4();
  LabelBarButtonItem.text.setter(v1, v2);
}

void LabelBarButtonItem.text.setter(uint64_t a1, uint64_t a2)
{
  v3 = *&v2[OBJC_IVAR____TtC5TeaUI18LabelBarButtonItem_label];
  if (a2)
  {
    v4 = sub_1D8190EE4();
  }

  else
  {
    v4 = 0;
  }

  [v3 setText_];

  [v3 sizeToFit];
  v5 = [v2 customView];
  if (v5)
  {
    v6 = v5;
    LabelBarButtonItem.text.getter();
    if (v7)
    {
      v8 = sub_1D8190EE4();
    }

    else
    {
      v8 = 0;
    }

    [v6 setLargeContentTitle_];
  }
}

uint64_t LabelBarButtonItem.text.modify(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = LabelBarButtonItem.text.getter();
  a1[1] = v3;
  return OUTLINED_FUNCTION_3();
}

void sub_1D8077348(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (a2)
  {
    sub_1D8190DB4();
    LabelBarButtonItem.text.setter(v3, v2);
  }

  else
  {
    LabelBarButtonItem.text.setter(*a1, v2);
  }
}

void LabelBarButtonItem.font.setter(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5TeaUI18LabelBarButtonItem_label);
  [v2 setFont_];
  [v2 sizeToFit];
}

uint64_t LabelBarButtonItem.font.modify(id *a1)
{
  a1[1] = v1;
  *a1 = LabelBarButtonItem.font.getter();
  return OUTLINED_FUNCTION_3();
}

id sub_1D80774C8(SEL *a1)
{
  result = [*(v1 + OBJC_IVAR____TtC5TeaUI18LabelBarButtonItem_label) *a1];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void LabelBarButtonItem.textColor.setter(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC5TeaUI18LabelBarButtonItem_label) setTextColor_];
}

uint64_t LabelBarButtonItem.textColor.modify(id *a1)
{
  a1[1] = v1;
  *a1 = LabelBarButtonItem.textColor.getter();
  return OUTLINED_FUNCTION_3();
}

void sub_1D80775DC(void **a1, char a2, void (*a3)(void))
{
  v4 = *a1;
  if (a2)
  {
    v5 = v4;
    a3();
  }

  else
  {
    (a3)(v4);
  }
}

id LabelBarButtonItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LabelBarButtonItem.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void LabelBarButtonItem.init(coder:)()
{
  v1 = v0;
  v2 = sub_1D818E794();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v1 + OBJC_IVAR____TtC5TeaUI18LabelBarButtonItem_barButtonItemIdentifier);
  sub_1D818E784();
  v7 = sub_1D818E764();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  *v6 = v7;
  v6[1] = v9;
  v10 = OBJC_IVAR____TtC5TeaUI18LabelBarButtonItem_label;
  *(v1 + v10) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
  sub_1D81923A4();
  __break(1u);
}

id LabelBarButtonItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t Move.init(from:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(*(a3 - 8) + 32);
  v9(a3 - 8, a4, a1);
  v7 = a4 + *(type metadata accessor for Move() + 36);

  return v9(v7, a2, a3);
}

uint64_t static Move.== infix(_:_:)()
{
  if ((sub_1D8190ED4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Move();
  return sub_1D8190ED4() & 1;
}

uint64_t Diff.deletedIndices.setter()
{
  OUTLINED_FUNCTION_76_0();
  sub_1D818E8B4();
  OUTLINED_FUNCTION_8();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t Diff.insertedIndices.setter()
{
  OUTLINED_FUNCTION_76_0();
  v2 = *(type metadata accessor for Diff() + 20);
  sub_1D818E8B4();
  OUTLINED_FUNCTION_8();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t Diff.insertedIndices.modify()
{
  OUTLINED_FUNCTION_76_0();
  type metadata accessor for Diff();
  return OUTLINED_FUNCTION_21_24();
}

uint64_t Diff.updatedIndices.setter()
{
  OUTLINED_FUNCTION_76_0();
  v2 = *(type metadata accessor for Diff() + 24);
  sub_1D818E8B4();
  OUTLINED_FUNCTION_8();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t Diff.updatedIndices.modify()
{
  OUTLINED_FUNCTION_76_0();
  type metadata accessor for Diff();
  return OUTLINED_FUNCTION_21_24();
}

uint64_t Diff.updatedSectionDescriptorIndices.setter()
{
  OUTLINED_FUNCTION_76_0();
  v2 = *(type metadata accessor for Diff() + 28);
  sub_1D818E8B4();
  OUTLINED_FUNCTION_8();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t Diff.updatedSectionDescriptorIndices.modify()
{
  OUTLINED_FUNCTION_76_0();
  type metadata accessor for Diff();
  return OUTLINED_FUNCTION_21_24();
}

uint64_t Diff.movedIndices.setter()
{
  OUTLINED_FUNCTION_76_0();
  v2 = *(type metadata accessor for Diff() + 32);

  *(v1 + v2) = v0;
  return result;
}

uint64_t Diff.movedIndices.modify()
{
  OUTLINED_FUNCTION_76_0();
  type metadata accessor for Diff();
  return OUTLINED_FUNCTION_21_24();
}

uint64_t Diff.deletedIndexPaths.setter()
{
  OUTLINED_FUNCTION_76_0();
  v2 = *(type metadata accessor for Diff() + 36);

  *(v1 + v2) = v0;
  return result;
}

uint64_t Diff.deletedIndexPaths.modify()
{
  OUTLINED_FUNCTION_76_0();
  type metadata accessor for Diff();
  return OUTLINED_FUNCTION_21_24();
}

uint64_t Diff.insertedIndexPaths.setter()
{
  OUTLINED_FUNCTION_76_0();
  v2 = *(type metadata accessor for Diff() + 40);

  *(v1 + v2) = v0;
  return result;
}

uint64_t Diff.insertedIndexPaths.modify()
{
  OUTLINED_FUNCTION_76_0();
  type metadata accessor for Diff();
  return OUTLINED_FUNCTION_21_24();
}

uint64_t Diff.updatedIndexPaths.setter()
{
  OUTLINED_FUNCTION_76_0();
  v2 = *(type metadata accessor for Diff() + 44);

  *(v1 + v2) = v0;
  return result;
}

uint64_t Diff.updatedIndexPaths.modify()
{
  OUTLINED_FUNCTION_76_0();
  type metadata accessor for Diff();
  return OUTLINED_FUNCTION_21_24();
}

uint64_t Diff.deferredUpdatedIndexPaths.setter()
{
  OUTLINED_FUNCTION_76_0();
  v2 = *(type metadata accessor for Diff() + 48);

  *(v1 + v2) = v0;
  return result;
}

uint64_t Diff.deferredUpdatedIndexPaths.modify()
{
  OUTLINED_FUNCTION_76_0();
  type metadata accessor for Diff();
  return OUTLINED_FUNCTION_21_24();
}

uint64_t Diff.movedIndexPaths.setter()
{
  OUTLINED_FUNCTION_76_0();
  v2 = *(type metadata accessor for Diff() + 52);

  *(v1 + v2) = v0;
  return result;
}

uint64_t Diff.movedIndexPaths.modify()
{
  OUTLINED_FUNCTION_76_0();
  type metadata accessor for Diff();
  return OUTLINED_FUNCTION_21_24();
}

uint64_t Diff.shortDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  sub_1D7E98A10(0, &qword_1EDBB2C50, sub_1D7FA9B90, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D81B41C0;
  strcpy((inited + 32), "deletedIndices");
  *(inited + 47) = -18;
  v4 = sub_1D818E8B4();
  *(inited + 72) = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
  v6 = *(*(v4 - 8) + 16);
  v6(boxed_opaque_existential_0, v2, v4);
  *(inited + 80) = 0x6465747265736E69;
  *(inited + 88) = 0xEF73656369646E49;
  v7 = type metadata accessor for Diff();
  v8 = v7[5];
  *(inited + 120) = v4;
  v9 = __swift_allocate_boxed_opaque_existential_0((inited + 96));
  v6(v9, v2 + v8, v4);
  strcpy((inited + 128), "updatedIndices");
  *(inited + 143) = -18;
  v10 = v7[6];
  *(inited + 168) = v4;
  v11 = __swift_allocate_boxed_opaque_existential_0((inited + 144));
  v6(v11, v2 + v10, v4);
  OUTLINED_FUNCTION_27();
  *(inited + 176) = 0xD00000000000001FLL;
  *(inited + 184) = v12;
  v13 = v7[7];
  *(inited + 216) = v4;
  v14 = __swift_allocate_boxed_opaque_existential_0((inited + 192));
  v6(v14, v2 + v13, v4);
  strcpy((inited + 224), "movedIndices");
  *(inited + 237) = 0;
  *(inited + 238) = -5120;
  v15 = *(v2 + v7[8]);
  v16 = MEMORY[0x1E69E62F8];
  sub_1D7E98A10(0, &qword_1EDBB3350, sub_1D7E989B8, MEMORY[0x1E69E62F8]);
  *(inited + 240) = v15;
  OUTLINED_FUNCTION_27();
  *(inited + 264) = v17;
  *(inited + 272) = 0xD000000000000011;
  *(inited + 280) = v18;
  v19 = *(v2 + v7[9]);
  sub_1D7E98A10(0, &qword_1EDBB33E0, MEMORY[0x1E6969C28], v16);
  *(inited + 288) = v19;
  OUTLINED_FUNCTION_27();
  *(inited + 312) = v20;
  *(inited + 320) = 0xD000000000000012;
  *(inited + 328) = v21;
  *(inited + 336) = *(v2 + v7[10]);
  OUTLINED_FUNCTION_27();
  *(inited + 360) = v22;
  *(inited + 368) = 0xD000000000000011;
  *(inited + 376) = v23;
  *(inited + 384) = *(v2 + v7[11]);
  OUTLINED_FUNCTION_27();
  *(inited + 408) = v24;
  *(inited + 416) = 0xD000000000000019;
  *(inited + 424) = v25;
  *(inited + 432) = *(v2 + v7[12]);
  *(inited + 456) = v24;
  *(inited + 464) = 0x646E496465766F6DLL;
  *(inited + 472) = 0xEF73687461507865;
  v26 = *(v2 + v7[13]);
  sub_1D7E98A10(0, &qword_1EDBB3358, sub_1D7E98BE0, v16);
  *(inited + 504) = v27;
  *(inited + 480) = v26;
  sub_1D8190DB4();
  sub_1D8190DB4();
  sub_1D8190DB4();
  sub_1D8190DB4();
  sub_1D8190DB4();
  sub_1D8190DB4();
  sub_1D8190D94();
  sub_1D80786C4(0);
  a1[3] = v28;
  a1[4] = sub_1D7E98CF4(&qword_1ECA102F8, sub_1D80786C4);
  __swift_allocate_boxed_opaque_existential_0(a1);
  return sub_1D818F264();
}

uint64_t sub_1D80784A4(uint64_t a1)
{
  v2 = sub_1D7E98CF4(&qword_1EDBB3F28, type metadata accessor for Diff);

  return MEMORY[0x1EEE44678](a1, v2);
}

uint64_t Bool.build(in:oldIndex:newIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    OUTLINED_FUNCTION_30();
    type metadata accessor for Diff();
    return sub_1D818E844();
  }

  return result;
}

uint64_t sub_1D8078554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = a5;
  v19[5] = a6;
  a7[3] = type metadata accessor for Diff();
  a7[4] = &protocol witness table for Diff;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a7);
  v19[6] = a3;
  v19[7] = a4;
  v19[8] = a5;
  v19[9] = a6;
  v15 = type metadata accessor for BlueprintSection();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for BlueprintItem();
  v17 = swift_getWitnessTable();
  return sub_1D7E98EC8(a1, a2, sub_1D8078B50, v19, v15, WitnessTable, v17, boxed_opaque_existential_0);
}

uint64_t sub_1D8078678@<X0>(uint64_t a1@<X8>)
{
  result = static BlueprintItem.== infix(_:_:)();
  *(a1 + 24) = MEMORY[0x1E69E6370];
  *(a1 + 32) = &protocol witness table for Bool;
  *a1 = (result & 1) == 0;
  return result;
}

uint64_t sub_1D80786F8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v6;
  if (a2 <= v6)
  {
    return __swift_getEnumTagSinglePayload(a1, v6, v4);
  }

  v8 = ((*(*(v4 - 8) + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(*(v4 - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_19:
      if (v6)
      {
        return __swift_getEnumTagSinglePayload(a1, v6, v4);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_19;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    switch(v8)
    {
      case 2:
        LODWORD(v8) = *a1;
        break;
      case 3:
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v8) = *a1;
        break;
      default:
        LODWORD(v8) = *a1;
        break;
    }
  }

  return v6 + (v8 | v12) + 1;
}

void sub_1D8078848(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = (v9 + *(v7 + 80)) & ~*(v7 + 80);
  v11 = v10 + v9;
  v12 = 8 * (v10 + v9);
  v13 = a3 >= v8;
  v14 = a3 - v8;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v8 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v8, v6);
        }

        break;
    }
  }

  else
  {
    v16 = ~v8 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t BlueprintIntegator.sectionCollapsibleStateManager.getter()
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
}

uint64_t BlueprintIntegator.sectionCollapsibleStateManager.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 160) = a1;
}

uint64_t BlueprintIntegator.__allocating_init(viewProvider:app:blueprintBookmarkManager:blueprintAnimatorManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_34_13();
  v8 = swift_allocObject();
  BlueprintIntegator.init(viewProvider:app:blueprintBookmarkManager:blueprintAnimatorManager:)(a1, a2, a3, a4);
  return v8;
}

uint64_t BlueprintIntegator.__allocating_init(viewProvider:app:layoutOptionsProvider:blueprintBookmarkManager:blueprintAnimatorManager:)()
{
  OUTLINED_FUNCTION_73_5();
  OUTLINED_FUNCTION_34_13();
  v0 = swift_allocObject();
  BlueprintIntegator.init(viewProvider:app:layoutOptionsProvider:blueprintBookmarkManager:blueprintAnimatorManager:)();
  return v0;
}

uint64_t BlueprintIntegator.init(viewProvider:app:layoutOptionsProvider:blueprintBookmarkManager:blueprintAnimatorManager:)()
{
  OUTLINED_FUNCTION_73_5();
  *(v1 + 160) = 0;
  *(v1 + 16) = v5;
  sub_1D7E05450(v6, v1 + 80);
  v7 = *(v2 + 16);
  *(v1 + 40) = *v2;
  *(v1 + 56) = v7;
  v8 = *(v0 + 16);
  *(v1 + 120) = *v0;
  *(v1 + 72) = *(v2 + 32);
  *(v1 + 136) = v8;
  *(v1 + 152) = *(v0 + 32);
  *(v1 + 168) = 0u;
  *(v1 + 184) = 0u;
  *(v1 + 24) = v4;
  *(v1 + 32) = v3;
  return v1;
}

uint64_t BlueprintIntegator.__allocating_init<A, B, C, D, E>(diffableDataSourceProvider:viewProvider:app:blueprintBookmarkManager:blueprintAnimatorManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_34_13();
  v10 = swift_allocObject();
  BlueprintIntegator.init<A, B, C, D, E>(diffableDataSourceProvider:viewProvider:app:blueprintBookmarkManager:blueprintAnimatorManager:)(a1, a2, a3, a4, a5);
  return v10;
}

void *BlueprintIntegator.init<A, B, C, D, E>(diffableDataSourceProvider:viewProvider:app:blueprintBookmarkManager:blueprintAnimatorManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = *v5;
  v6[20] = 0;
  v6[2] = a2;
  sub_1D7E25380(a3, (v6 + 10));
  sub_1D7E2657C(a5, (v6 + 15), &qword_1EDBB65B8, &unk_1EDBB65C0);
  sub_1D7E2657C(a4, (v6 + 5), &qword_1EDBB65A8, &qword_1EDBB65B0);
  OUTLINED_FUNCTION_1_63();
  v11 = swift_allocObject();
  v12 = *(v10 + 96);
  v11[2] = v12;
  v13 = *(v10 + 120);
  v11[3] = v13;
  v11[4] = a1;
  v6[21] = sub_1D8079010;
  v6[22] = v11;
  OUTLINED_FUNCTION_1_63();
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = v13;
  v14[4] = a1;
  v6[23] = sub_1D8079034;
  v6[24] = v14;
  v15 = *(v13 + 56);
  swift_retain_n();
  swift_unknownObjectRetain();
  v15(v12, v13);
  type metadata accessor for BlueprintLayoutOptionsProvider();
  swift_allocObject();
  OUTLINED_FUNCTION_7();
  v20 = BlueprintLayoutOptionsProvider.init(view:compositionalLayoutOptionsProvider:appTraitEnvironmentProvider:)(v16, v17, v18, v19);
  swift_unknownObjectRelease();

  sub_1D7E2739C(a5, &qword_1EDBB65B8, &unk_1EDBB65C0);
  sub_1D7E2739C(a4, &qword_1EDBB65A8, &qword_1EDBB65B0);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  swift_beginAccess();
  *(v20 + 40) = 0;
  v6[3] = v20;
  v6[4] = &protocol witness table for BlueprintLayoutOptionsProvider;
  return v6;
}

uint64_t BlueprintIntegator.layoutOptions.getter()
{
  v1 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(ObjectType, v1);
}

uint64_t sub_1D80790AC()
{
  v1 = *(v0 + 24);

  sub_1D7E946C0(v1);
  OUTLINED_FUNCTION_10_6();

  return v2();
}

uint64_t sub_1D8079134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t a1), void *a11, uint64_t a12)
{
  v29[1] = a6;
  v30 = a5;
  v29[0] = a1;
  v32 = a12;
  v33 = a2;
  v31 = a9;
  aBlock = a7;
  v36 = a8;
  v37 = a10;
  v38 = a11;
  v16 = type metadata accessor for BlueprintPipelineUpdate();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v29 - v19;
  v34 = objc_opt_self();
  (*(v17 + 16))(v20, a3, v16);
  sub_1D7E7B91C(a4, v41);
  v21 = (*(v17 + 80) + 72) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a7;
  *(v22 + 3) = a8;
  v23 = v32;
  *(v22 + 4) = v31;
  *(v22 + 5) = a10;
  *(v22 + 6) = a11;
  *(v22 + 7) = v23;
  *(v22 + 8) = v33;
  (*(v17 + 32))(&v22[v21], v20, v16);
  v24 = &v22[(v18 + v21 + 7) & 0xFFFFFFFFFFFFFFF8];
  v25 = v41[1];
  *v24 = v41[0];
  *(v24 + 1) = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1D7EB1EF8;
  *(v26 + 24) = v22;
  v39 = sub_1D7EA8F68;
  v40 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v36 = 1107296256;
  v37 = sub_1D7E74D74;
  v38 = &block_descriptor_63_0;
  v27 = _Block_copy(&aBlock);

  [v34 performWithoutAnimation_];
  _Block_release(v27);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
    __break(1u);
  }

  else
  {
    v30(v29[0]);
  }

  return result;
}

uint64_t sub_1D80793E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v52 = a2;
  v53 = a6;
  v50 = a5;
  v51 = a1;
  v7 = (a3 + 5);
  v8 = *a3;
  v9 = *(*a3 + 104);
  v48 = *(*a3 + 80);
  v49 = v9;
  v55 = v9;
  v54 = v48;
  v10 = type metadata accessor for BlueprintPipelineUpdate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - v13;
  sub_1D7E2657C(v7, &v54, &qword_1EDBB65A8, &qword_1EDBB65B0);
  v15 = *(&v55 + 1);
  if (*(&v55 + 1))
  {
    v16 = v56;
    __swift_project_boxed_opaque_existential_1(&v54, *(&v55 + 1));
    (*(v16 + 24))(v57, a4 + *(v10 + 60), v15, v16);
    __swift_destroy_boxed_opaque_existential_1Tm(&v54);
  }

  else
  {
    sub_1D7E2739C(&v54, &qword_1EDBB65A8, &qword_1EDBB65B0);
    memset(v57, 0, 32);
  }

  v17 = *(v8 + 120);
  v18 = *(v17 + 56);
  v44 = *(v8 + 96);
  v19 = v18();
  v20 = (a4 + *(v10 + 56));
  v22 = *v20;
  v21 = v20[1];
  v46 = v22;
  v47 = v19;
  v45 = v21;
  v23 = swift_allocObject();
  v43 = v10;
  v24 = a4;
  v25 = v23;
  swift_weakInit();
  (*(v11 + 16))(v14, v24, v10);
  sub_1D7E7B91C(v57, &v54);
  v26 = (*(v11 + 80) + 72) & ~*(v11 + 80);
  v27 = (v12 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 39) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v30 = v49;
  *(v29 + 16) = v48;
  *(v29 + 32) = v44;
  *(v29 + 40) = v30;
  *(v29 + 56) = v17;
  *(v29 + 64) = v25;
  (*(v11 + 32))(v29 + v26, v14, v43);
  v31 = (v29 + v27);
  v32 = v55;
  *v31 = v54;
  v31[1] = v32;
  v33 = (v29 + v28);
  v35 = v51;
  v34 = v52;
  *v33 = v51;
  v33[1] = v34;
  v36 = (v29 + ((v28 + 23) & 0xFFFFFFFFFFFFFFF8));
  v37 = v53;
  *v36 = v50;
  v36[1] = v37;

  sub_1D7E19F24(v35);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v40 = v47;
  BlueprintViewType.reload(apply:completion:)(v46, v45, sub_1D807A674, v29, AssociatedTypeWitness, AssociatedConformanceWitness);

  sub_1D7E7BAAC(v57);
}

uint64_t sub_1D8079794(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t (*)(), void *), uint64_t a6, uint64_t (*a7)(void *), uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1D7E2657C(Strong + 40, v21, &qword_1EDBB65A8, &qword_1EDBB65B0);

    v15 = v22;
    if (!v22)
    {
      sub_1D7E2739C(v21, &qword_1EDBB65A8, &qword_1EDBB65B0);
      if (a5)
      {
        goto LABEL_5;
      }

      return a7(a1);
    }

    v16 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v17 = type metadata accessor for BlueprintPipelineUpdate();
    (*(v16 + 32))(a3 + *(v17 + 60), a4, v15, v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  if (a5)
  {
LABEL_5:
    v18 = swift_allocObject();
    v18[2] = a7;
    v18[3] = a8;
    v18[4] = a1;
    sub_1D7E19F24(a5);

    v19 = a1;
    a5(sub_1D807AED4, v18);

    return sub_1D7E0E10C(a5);
  }

  return a7(a1);
}

uint64_t sub_1D807997C()
{
  OUTLINED_FUNCTION_66_0();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (!*(v1 + 160))
  {
    return sub_1D7E25380(v0, v3);
  }

  BlueprintSectionCollapsibleStateManager.sanitize(diff:)(v0, v3);
}

uint64_t sub_1D80799F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48 = a8;
  v49 = a5;
  v45 = a7;
  v46 = a1;
  v50 = a6;
  v47 = a2;
  v9 = (a3 + 5);
  v10 = *a3;
  v11 = *(*a3 + 104);
  v43 = *(*a3 + 80);
  v44 = v11;
  v52 = v11;
  v51 = v43;
  v12 = type metadata accessor for BlueprintPipelineUpdate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - v15;
  sub_1D7E2657C(v9, &v51, &qword_1EDBB65A8, &qword_1EDBB65B0);
  v17 = *(&v52 + 1);
  if (*(&v52 + 1))
  {
    v18 = v53;
    __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
    (*(v18 + 24))(v54, a4 + *(v12 + 60), v17, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(&v51);
  }

  else
  {
    sub_1D7E2739C(&v51, &qword_1EDBB65A8, &qword_1EDBB65B0);
    memset(v54, 0, 32);
  }

  v19 = *(v10 + 120);
  v20 = *(v10 + 96);
  v42 = (*(v19 + 56))(v20, v19);
  v21 = (a4 + *(v12 + 56));
  v23 = *v21;
  v22 = v21[1];
  v41 = v23;
  v40 = v22;
  v24 = swift_allocObject();
  v39 = v24;
  swift_weakInit();
  (*(v13 + 16))(v16, a4, v12);
  sub_1D7E7B91C(v54, &v51);
  v25 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v26 = swift_allocObject();
  v27 = v44;
  *(v26 + 16) = v43;
  *(v26 + 32) = v20;
  *(v26 + 40) = v27;
  *(v26 + 56) = v19;
  *(v26 + 64) = v24;
  (*(v13 + 32))(v26 + v25, v16, v12);
  v28 = (v26 + ((v14 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  v29 = v52;
  *v28 = v51;
  v28[1] = v29;
  v30 = swift_allocObject();
  v32 = v46;
  v31 = v47;
  v30[2] = v46;
  v30[3] = v31;
  v33 = v48;
  v30[4] = v45;
  v30[5] = v33;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35 = *(AssociatedConformanceWitness + 16);

  sub_1D7E19F24(v32);

  v36 = swift_checkMetadataState();
  v37 = v42;
  v35(v49, v41, v40, v50, 1, sub_1D7EB1EF4, v26, sub_1D807AE50, v30, v36, AssociatedConformanceWitness);

  sub_1D7E7BAAC(v54);
}

uint64_t sub_1D8079DFC(void *a1, void (*a2)(uint64_t (*)(), void *), uint64_t a3, uint64_t (*a4)(void *), uint64_t a5)
{
  if (!a2)
  {
    return a4(a1);
  }

  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = a1;
  sub_1D7E19F24(a2);

  v10 = a1;
  a2(sub_1D807AE98, v9);

  return sub_1D7E0E10C(a2);
}

uint64_t sub_1D8079EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1D7E2657C(a1, v20, &qword_1EDBB65A8, &qword_1EDBB65B0);
  v13 = v21;
  if (v21)
  {
    v14 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    *&v23 = a3;
    *(&v23 + 1) = a4;
    *&v24 = a6;
    *(&v24 + 1) = a7;
    v15 = type metadata accessor for BlueprintPipelineUpdate();
    (*(v14 + 24))(&v23, a2 + *(v15 + 60), v13, v14);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  else
  {
    sub_1D7E2739C(v20, &qword_1EDBB65A8, &qword_1EDBB65B0);
    v23 = 0u;
    v24 = 0u;
  }

  sub_1D7E2657C(a1, v20, &qword_1EDBB65A8, &qword_1EDBB65B0);
  v16 = v21;
  if (v21)
  {
    v17 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v18 = type metadata accessor for BlueprintPipelineUpdate();
    (*(v17 + 32))(a2 + *(v18 + 60), &v23, v16, v17);
    sub_1D7E7BAAC(&v23);
    return __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  else
  {
    sub_1D7E7BAAC(&v23);
    return sub_1D7E2739C(v20, &qword_1EDBB65A8, &qword_1EDBB65B0);
  }
}

uint64_t BlueprintIntegator.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1D7E2739C(v0 + 40, &qword_1EDBB65A8, &qword_1EDBB65B0);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 80);
  sub_1D7E2739C(v0 + 120, &qword_1EDBB65B8, &unk_1EDBB65C0);

  sub_1D7E0E10C(*(v0 + 168));
  sub_1D7E0E10C(*(v0 + 184));
  return v0;
}

uint64_t BlueprintIntegator.__deallocating_deinit()
{
  BlueprintIntegator.deinit();
  OUTLINED_FUNCTION_34_13();

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of BlueprintIntegatorType.integrate(update:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D7E94724;

  return v9(a1, a2, a3);
}

uint64_t sub_1D807A350()
{
  v1 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = *(v0 + 40);
  v2 = *(type metadata accessor for BlueprintPipelineUpdate() - 8);
  v3 = v0 + ((*(v2 + 80) + 104) & ~*(v2 + 80));

  return sub_1D8079EE0(v0 + 64, v3, v5, *(&v5 + 1), v1, v6, *(&v6 + 1));
}

uint64_t sub_1D807A408(uint64_t a1)
{
  sub_1D7E815E4(0, qword_1EDBBA708, type metadata accessor for BlueprintBookmark);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D807A480()
{
  OUTLINED_FUNCTION_66_0();
  v3 = OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_15_15(v3);
  OUTLINED_FUNCTION_25_14();
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v6);
  v8 = *(v1 + 64);
  v9 = (v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_1D80799F8(v2, v0, v8, v1 + v4, v1 + v5, v7, v10, v11);
}

uint64_t sub_1D807A5B8()
{
  OUTLINED_FUNCTION_66_0();
  v3 = OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_15_15(v3);
  OUTLINED_FUNCTION_25_14();
  v5 = *(v1 + 64);
  v7 = (v1 + v6);
  v8 = *v7;
  v9 = v7[1];

  return sub_1D80793E8(v2, v0, v5, v1 + v4, v8, v9);
}

uint64_t sub_1D807A674(void *a1)
{
  v3 = type metadata accessor for BlueprintPipelineUpdate();
  OUTLINED_FUNCTION_15_15(v3);
  OUTLINED_FUNCTION_25_14();
  return sub_1D8079794(a1, *(v1 + 64), v1 + v4, v1 + v5, *(v1 + ((v5 + 39) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 39) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void objectdestroy_31Tm()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_12_35(*(v0 + 40), *(v0 + 16));
  v1 = type metadata accessor for BlueprintPipelineUpdate();
  OUTLINED_FUNCTION_20_19();
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v5 = *(v4 + 64);

  v44 = v0;
  v6 = v0 + v3;
  OUTLINED_FUNCTION_7_51();
  type metadata accessor for BlueprintPipelineUpdate.Action();
  v45 = v0 + v3;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      if (*(v6 + 40))
      {
        v7 = v6 + 16;
        goto LABEL_8;
      }

      break;
    case 1u:
    case 3u:
      OUTLINED_FUNCTION_71_2();
      break;
    case 2u:
      OUTLINED_FUNCTION_71_2();
      if (*(v6 + 88))
      {
        v7 = v6 + 64;
        goto LABEL_8;
      }

      break;
    case 4u:
      v7 = v0 + v3;
LABEL_8:
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      break;
    case 5u:
      OUTLINED_FUNCTION_57_5();
      if (*(v6 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v6 + 16);
      }

      OUTLINED_FUNCTION_7_51();
      v12 = *(type metadata accessor for Blueprint() + 56);
      OUTLINED_FUNCTION_10_44();
      type metadata accessor for BlueprintSection();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_13_33();
      OUTLINED_FUNCTION_4_3();
      (*(v13 + 8))(v6 + v12);
      OUTLINED_FUNCTION_56_6();
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_23_16();
      v6 = v0 + v3;
      OUTLINED_FUNCTION_123_0();
      sub_1D818F784();
      OUTLINED_FUNCTION_4_3();
      (*(v14 + 8))(v45 + v12);
      OUTLINED_FUNCTION_76_6();
      OUTLINED_FUNCTION_49_7();
      MEMORY[0x1EEE9AC00](v15);
      OUTLINED_FUNCTION_50_6();
      OUTLINED_FUNCTION_5_52(v16);
      v46 = sub_1D7E0631C(255, &qword_1EDBBA670);
      OUTLINED_FUNCTION_8_40(v46, qword_1EDBB68A8);
      OUTLINED_FUNCTION_15_31(v17, MEMORY[0x1E69E6370]);
      OUTLINED_FUNCTION_28_16();
      __swift_destroy_boxed_opaque_existential_1Tm(v45 + v18);
      goto LABEL_15;
    case 6u:
      OUTLINED_FUNCTION_57_5();
      if (*(v6 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v6 + 16);
      }

      OUTLINED_FUNCTION_7_51();
      v19 = *(type metadata accessor for Blueprint() + 56);
      OUTLINED_FUNCTION_10_44();
      type metadata accessor for BlueprintSection();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_13_33();
      OUTLINED_FUNCTION_4_3();
      (*(v20 + 8))(v6 + v19);
      OUTLINED_FUNCTION_56_6();
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_70_6();
      v6 = v0 + v3;
      OUTLINED_FUNCTION_18_26(v21);
      OUTLINED_FUNCTION_4_3();
      (*(v22 + 8))(v45 + v19);
      OUTLINED_FUNCTION_76_6();
      sub_1D7E0631C(255, &qword_1EDBBA670);
      v23 = OUTLINED_FUNCTION_41_10();
      __swift_destroy_boxed_opaque_existential_1Tm(v45 + *(v23 + 48));
      goto LABEL_19;
    case 7u:
      OUTLINED_FUNCTION_57_5();
      if (*(v6 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v6 + 16);
      }

      OUTLINED_FUNCTION_7_51();
      v8 = *(type metadata accessor for Blueprint() + 56);
      OUTLINED_FUNCTION_10_44();
      type metadata accessor for BlueprintSection();
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_13_33();
      OUTLINED_FUNCTION_4_3();
      (*(v9 + 8))(v6 + v8);
      OUTLINED_FUNCTION_56_6();
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_70_6();
      v6 = v0 + v3;
      OUTLINED_FUNCTION_18_26(v10);
      OUTLINED_FUNCTION_4_3();
      (*(v11 + 8))(v45 + v8);
LABEL_15:

LABEL_19:
      v1 = v0;
      v5 = v42;
      break;
    default:
      break;
  }

  v24 = v5 + v3;
  OUTLINED_FUNCTION_78_4();
  OUTLINED_FUNCTION_78_4();
  v25 = v6 + *(v1 + 60);
  type metadata accessor for BlueprintBookmark();
  switch(OUTLINED_FUNCTION_53_5())
  {
    case 0u:
      v26 = sub_1D818E994();
      if (!OUTLINED_FUNCTION_24_18(v26))
      {
        OUTLINED_FUNCTION_3_0();
        v27 = OUTLINED_FUNCTION_55_0();
        goto LABEL_25;
      }

      break;
    case 1u:
      sub_1D818E994();
      OUTLINED_FUNCTION_4_3();
      v28 = *(v29 + 8);
      v27 = v25;
LABEL_25:
      v28(v27);
      break;
    case 2u:
    case 3u:
    case 4u:

      break;
    default:
      break;
  }

  v30 = v24 + 7;
  v43 = v1;
  v31 = v6 + *(v1 + 64);

  if (*(v31 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v31 + 16);
  }

  v41 = v30 & 0xFFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_123_0();
  v32 = type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_10_44();
  type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_4_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_23();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_72_6(*(v33 + 8));
  v34();
  type metadata accessor for BlueprintItem();
  OUTLINED_FUNCTION_7_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_38_11();
  OUTLINED_FUNCTION_123_0();
  v35 = sub_1D818F784();
  OUTLINED_FUNCTION_8();
  v37 = *(v36 + 8);
  v38 = OUTLINED_FUNCTION_47_10();
  v37(v38);
  OUTLINED_FUNCTION_65_7();
  v39 = v45 + *(v43 + 68);

  if (*(v39 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v39 + 16);
  }

  OUTLINED_FUNCTION_39_12();
  v40();
  (v37)(v39 + *(v32 + 60), v35);
  OUTLINED_FUNCTION_65_7();
  if (*(v44 + v41 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v44 + v41);
  }

  swift_deallocObject();
  OUTLINED_FUNCTION_100();
}

uint64_t objectdestroy_69Tm()
{

  OUTLINED_FUNCTION_1_63();

  return swift_deallocObject();
}

uint64_t ButtonToolbarItemConfiguration.init(closure:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
  return result;
}

uint64_t ButtonToolbarItemConfiguration.init(isEnabled:closure:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a2;
  *(a4 + 8) = a3;
  *(a4 + 16) = result;
  return result;
}

uint64_t ButtonToolbarItem.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t ButtonToolbarItem.init(identifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t ButtonToolbarItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D807AFF8(uint64_t a1)
{
  result = sub_1D807B0A4(&qword_1ECA10300);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D807B060(uint64_t a1)
{
  result = sub_1D807B0A4(&qword_1ECA10308);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D807B0A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ButtonToolbarItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t BlueprintBookmarkManager.__allocating_init(blueprintViewProvider:)(uint64_t a1)
{
  v2 = swift_allocObject();
  BlueprintBookmarkManager.init(blueprintViewProvider:)(a1);
  return v2;
}

uint64_t BlueprintBookmarkManager.deinit()
{

  swift_unknownObjectRelease();
  memcpy(v3, (v0 + 32), sizeof(v3));
  OUTLINED_FUNCTION_0_159();
  sub_1D7E76F2C(v3, v1);
  return v0;
}

uint64_t BlueprintBookmarkManager.__deallocating_deinit()
{
  BlueprintBookmarkManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t BlueprintBookmarkManager.preparedContext()@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  memcpy(__dst, v1 + 4, sizeof(__dst));
  memcpy(v21, v1 + 4, sizeof(v21));
  if (sub_1D7FA0BEC(v21) == 1)
  {
    v6 = v3 + 80;
    v5 = *(v3 + 80);
    v4 = *(v6 + 8);
    v7 = *(v4 + 56);
    v8 = v7(v5, v4);
    [v8 bounds];
    v10 = v9;
    v12 = v11;

    v13 = v7(v5, v4);
    [v13 bounds];
    v15 = v14;
    v17 = v16;

    BlueprintBookmarkManager.prepareTransition(fromSize:toSize:)(a1, v10, v12, v15, v17);
  }

  else
  {
    memcpy(a1, __dst, 0x80uLL);
  }

  return sub_1D7EB2070(__dst, &v19, sub_1D7E7701C);
}

unint64_t sub_1D807B398()
{
  result = qword_1EDBB5C48;
  if (!qword_1EDBB5C48)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBB5C48);
  }

  return result;
}

uint64_t BlueprintLayoutCollectionLayoutAttributes.pinTrait.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_pinTrait;
  result = OUTLINED_FUNCTION_8_4();
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  return result;
}

uint64_t BlueprintLayoutCollectionLayoutAttributes.pinTrait.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_pinTrait;
  result = OUTLINED_FUNCTION_56();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t BlueprintLayoutCollectionLayoutAttributes.rubberbandTrait.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandTrait;
  result = OUTLINED_FUNCTION_1_39();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t BlueprintLayoutCollectionLayoutAttributes.rubberbandTrait.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandTrait;
  OUTLINED_FUNCTION_28();
  result = OUTLINED_FUNCTION_56();
  *(v1 + v3) = v2;
  return result;
}

uint64_t BlueprintLayoutCollectionLayoutAttributes.rubberbandEdge.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandEdge;
  result = OUTLINED_FUNCTION_1_39();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t BlueprintLayoutCollectionLayoutAttributes.rubberbandEdge.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandEdge;
  OUTLINED_FUNCTION_28();
  result = OUTLINED_FUNCTION_56();
  *(v1 + v3) = v2;
  return result;
}

uint64_t BlueprintLayoutCollectionLayoutAttributes.model.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_model;
  OUTLINED_FUNCTION_1_39();
  OUTLINED_FUNCTION_2_106();
  return sub_1D7EA2620(v1 + v3, a1, v4, v5);
}

uint64_t BlueprintLayoutCollectionLayoutAttributes.model.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_model;
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_2_106();
  sub_1D7EA2670(a1, v1 + v3, v4, v5);
  return swift_endAccess();
}

uint64_t BlueprintLayoutCollectionLayoutAttributes.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_source;
  OUTLINED_FUNCTION_1_39();
  OUTLINED_FUNCTION_0_160();
  return sub_1D7EA2620(v1 + v3, a1, v4, v5);
}

uint64_t BlueprintLayoutCollectionLayoutAttributes.source.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_source;
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_0_160();
  sub_1D7EA2670(a1, v1 + v3, v4, v5);
  return swift_endAccess();
}

uint64_t BlueprintLayoutCollectionLayoutAttributes.isPlugin.getter()
{
  v1 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isPlugin;
  OUTLINED_FUNCTION_10();
  return *(v0 + v1);
}

uint64_t BlueprintLayoutCollectionLayoutAttributes.isPlugin.setter(char a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isPlugin;
  OUTLINED_FUNCTION_28();
  result = OUTLINED_FUNCTION_56();
  *(v1 + v3) = a1;
  return result;
}

uint64_t BlueprintLayoutCollectionLayoutAttributes.layoutData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_layoutData;
  OUTLINED_FUNCTION_1_39();
  return sub_1D7E7B91C(v1 + v3, a1);
}

uint64_t BlueprintLayoutCollectionLayoutAttributes.isEditing.getter()
{
  v1 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isEditing;
  OUTLINED_FUNCTION_10();
  return *(v0 + v1);
}

uint64_t BlueprintLayoutCollectionLayoutAttributes.isSelected.getter()
{
  v1 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isSelected;
  OUTLINED_FUNCTION_10();
  return *(v0 + v1);
}

uint64_t BlueprintLayoutCollectionLayoutAttributes.RubberbandEdge.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

id BlueprintLayoutCollectionLayoutAttributes.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BlueprintLayoutCollectionLayoutAttributes.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D807BBA0()
{
  result = qword_1ECA10330;
  if (!qword_1ECA10330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10330);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BlueprintLayoutCollectionLayoutAttributes.RubberbandEdge(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D807BD14()
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

void (*sub_1D807BD60(void *a1))(uint64_t, char)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  OUTLINED_FUNCTION_15_2();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1D7F45C30;
}

uint64_t sub_1D807BE10()
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
}

uint64_t sub_1D807BE54(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_transitionManager;
  OUTLINED_FUNCTION_5_0();
  *(v1 + v3) = a1;
}

void *sub_1D807BF38@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_cardViewLayoutOptions;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return memcpy(a1, (v1 + v3), 0x49uLL);
}

uint64_t sub_1D807BF90(const void *a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_cardViewLayoutOptions;
  OUTLINED_FUNCTION_5_0();
  memcpy((v1 + v3), a1, 0x49uLL);
  return sub_1D7E38F7C();
}

uint64_t (*sub_1D807BFE0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_15_2();
  return sub_1D807C03C;
}

uint64_t sub_1D807C03C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1D7E38F7C();
  }

  return result;
}

id sub_1D807C080()
{
  OUTLINED_FUNCTION_0_161();
  sub_1D7E35D40(0, v2, v3, MEMORY[0x1E69D6AD8]);
  v5 = v4;
  OUTLINED_FUNCTION_9();
  v7 = v6;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26();
  v9 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_cardItemStack;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  (*(v7 + 16))(v1, v0 + v9, v5);
  sub_1D818F974();
  v10 = OUTLINED_FUNCTION_14_0();
  v11(v10);
  if (!v14)
  {
    return 0;
  }

  v12 = *&v14[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_viewController];

  return v12;
}

void sub_1D807C1BC(char *a1@<X8>)
{
  OUTLINED_FUNCTION_0_161();
  sub_1D7E35D40(0, v4, v5, MEMORY[0x1E69D6AD8]);
  v7 = v6;
  OUTLINED_FUNCTION_9();
  v9 = v8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15_10();
  v11 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_cardItemStack;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  (*(v9 + 16))(v2, v1 + v11, v7);
  sub_1D818F974();
  v12 = OUTLINED_FUNCTION_85();
  v13(v12);
  if (v15)
  {
    v14 = v15[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_presentationState];
  }

  else
  {
    v14 = 6;
  }

  *a1 = v14;
}

void sub_1D807C300()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  OUTLINED_FUNCTION_0_161();
  sub_1D7E35D40(0, v2, v3, MEMORY[0x1E69D6AD8]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15_10();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v5 = OUTLINED_FUNCTION_45_11();
  v6(v5);
  OUTLINED_FUNCTION_3_93(&qword_1EDBB1FF0);
  OUTLINED_FUNCTION_18_28();
  v7 = sub_1D8191774();
  if (!v7)
  {
    v17 = OUTLINED_FUNCTION_85();
    v18(v17);
LABEL_8:
    OUTLINED_FUNCTION_100();
    return;
  }

  v8 = v7;
  v20 = MEMORY[0x1E69E7CC0];
  sub_1D7E9842C();
  v9 = v20;
  OUTLINED_FUNCTION_18_28();
  sub_1D8191724();
  if ((v8 & 0x8000000000000000) == 0)
  {
    do
    {
      v10 = sub_1D81918F4();
      v12 = *v11;
      v10(&v19, 0);
      v13 = v12[*v1];

      v20 = v9;
      v14 = *(v9 + 16);
      if (v14 >= *(v9 + 24) >> 1)
      {
        sub_1D7E9842C();
        v9 = v20;
      }

      *(v9 + 16) = v14 + 1;
      *(v9 + v14 + 32) = v13;
      sub_1D81917C4();
      --v8;
    }

    while (v8);
    v15 = OUTLINED_FUNCTION_85();
    v16(v15);
    goto LABEL_8;
  }

  __break(1u);
}

id UIKitCardContainerController.__allocating_init(rootViewController:detents:)()
{
  OUTLINED_FUNCTION_66_0();
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_14_0();
  return UIKitCardContainerController.init(rootViewController:detents:)(v2, v3);
}

id UIKitCardContainerController.init(rootViewController:detents:)(void *a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_10_5(OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_delegate);
  v6 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_transitionManager;
  type metadata accessor for ViewControllerTransitionManager();
  v7 = OUTLINED_FUNCTION_38_12();
  v8 = MEMORY[0x1E69E7CC8];
  *(v3 + v6) = v7;
  *(v7 + 16) = v8;
  v9 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_cardViewLayoutOptions;
  if (qword_1EDBB0B40 != -1)
  {
    OUTLINED_FUNCTION_35_1();
    swift_once();
  }

  memmove((v3 + v9), &qword_1EDBB0B48, 0x49uLL);
  v10 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_snaps;
  sub_1D7F14D74();
  *(v3 + v10) = sub_1D8190D94();
  v11 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_detents;
  sub_1D7E0A1A8(0, &unk_1EDBAE490);
  *(v3 + v11) = sub_1D8190D94();
  type metadata accessor for UIKitCardItem();
  sub_1D818F9D4();
  v12 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_eventManager;
  sub_1D7E35FB4();
  swift_allocObject();
  *(v3 + v12) = sub_1D818EF74();
  *(v3 + OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_rootViewController) = a1;
  *(v3 + v11) = a2;
  v13 = a1;

  v18 = type metadata accessor for UIKitCardContainerController();
  OUTLINED_FUNCTION_7();
  v16 = objc_msgSendSuper2(v14, v15, v3, v18);

  return v16;
}

char *UIKitCardContainerController.__allocating_init(rootViewController:snaps:)()
{
  OUTLINED_FUNCTION_66_0();
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_14_0();
  return UIKitCardContainerController.init(rootViewController:snaps:)(v2, v3);
}

char *UIKitCardContainerController.init(rootViewController:snaps:)(void *a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_10_5(OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_delegate);
  v6 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_transitionManager;
  type metadata accessor for ViewControllerTransitionManager();
  v7 = OUTLINED_FUNCTION_38_12();
  v8 = MEMORY[0x1E69E7CC8];
  *(v2 + v6) = v7;
  *(v7 + 16) = v8;
  v9 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_cardViewLayoutOptions;
  if (qword_1EDBB0B40 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    memmove((v3 + v9), &qword_1EDBB0B48, 0x49uLL);
    v10 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_snaps;
    sub_1D7F14D74();
    *(v3 + v10) = sub_1D8190D94();
    v11 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_detents;
    sub_1D7E0A1A8(0, &unk_1EDBAE490);
    *(v3 + v11) = sub_1D8190D94();
    type metadata accessor for UIKitCardItem();
    sub_1D818F9D4();
    v12 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_eventManager;
    sub_1D7E35FB4();
    swift_allocObject();
    *(v3 + v12) = sub_1D818EF74();
    *(v3 + OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_rootViewController) = a1;
    type metadata accessor for UIKitCardContainerController();
    v34 = a1;
    OUTLINED_FUNCTION_7();
    v15 = objc_msgSendSuper2(v13, v14);
    *&v15[OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_snaps] = a2;
    v33 = v15;
    sub_1D8190DB4();

    sub_1D808111C(0, &qword_1EDBAE330, MEMORY[0x1E69E6EC8]);
    v16 = sub_1D8192424();
    v17 = v16;
    v18 = 0;
    v9 = a2 + 64;
    v19 = 1 << *(a2 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(a2 + 64);
    a1 = ((v19 + 63) >> 6);
    v35 = v16 + 64;
    if (!v21)
    {
      break;
    }

    while (1)
    {
      v22 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_11:
      v3 = v22 | (v18 << 6);
      v25 = *(*(a2 + 48) + v3);
      v26 = *(a2 + 56) + 16 * v3;
      v27 = *v26;
      if (*(v26 + 8))
      {
        *(OUTLINED_FUNCTION_38_12() + 16) = v27;
        v28 = sub_1D8191BF4();
      }

      else
      {
        v28 = v27;
      }

      *(v35 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
      *(v17[6] + v3) = v25;
      *(v17[7] + 8 * v3) = v28;
      v29 = v17[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      v17[2] = v31;
      if (!v21)
      {
        goto LABEL_6;
      }
    }

LABEL_19:
    __break(1u);
LABEL_20:
    OUTLINED_FUNCTION_35_1();
    swift_once();
  }

LABEL_6:
  v23 = v18;
  while (1)
  {
    v18 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v18 >= a1)
    {
      break;
    }

    v24 = *(v9 + 8 * v18);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v21 = (v24 - 1) & v24;
      goto LABEL_11;
    }
  }

  *&v33[OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_detents] = v17;

  return v33;
}

id UIKitCardContainerController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void UIKitCardContainerController.init(coder:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_10_5(OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_delegate);
  v2 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_transitionManager;
  type metadata accessor for ViewControllerTransitionManager();
  v3 = OUTLINED_FUNCTION_38_12();
  v4 = MEMORY[0x1E69E7CC8];
  *(v1 + v2) = v3;
  *(v3 + 16) = v4;
  v5 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_cardViewLayoutOptions;
  if (qword_1EDBB0B40 != -1)
  {
    OUTLINED_FUNCTION_35_1();
    swift_once();
  }

  memmove((v1 + v5), &qword_1EDBB0B48, 0x49uLL);
  v6 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_snaps;
  sub_1D7F14D74();
  *(v1 + v6) = sub_1D8190D94();
  v7 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_detents;
  sub_1D7E0A1A8(0, &unk_1EDBAE490);
  *(v1 + v7) = sub_1D8190D94();
  type metadata accessor for UIKitCardItem();
  sub_1D818F9D4();
  v8 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_eventManager;
  sub_1D7E35FB4();
  swift_allocObject();
  *(v1 + v8) = sub_1D818EF74();
  sub_1D81923A4();
  __break(1u);
}

uint64_t sub_1D807CD00()
{
  v2 = v0;
  OUTLINED_FUNCTION_0_161();
  sub_1D7E35D40(0, v3, v4, MEMORY[0x1E69D6AD8]);
  v6 = v5;
  OUTLINED_FUNCTION_9();
  v8 = v7;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15_10();
  v10 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_cardItemStack;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v11 = *(v8 + 16);
  while (1)
  {
    v11(v1, v2 + v10, v6);
    sub_1D818F974();
    v12 = OUTLINED_FUNCTION_85();
    result = v13(v12);
    if (!v17)
    {
      break;
    }

    v15 = OBJC_IVAR____TtC5TeaUI13UIKitCardItem_viewController;
    OUTLINED_FUNCTION_3_2(*&v17[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_viewController], sel_setAdditionalSafeAreaInsets_);
    v16 = *&v17[v15];
    OUTLINED_FUNCTION_7();
    sub_1D807CE8C();
  }

  return result;
}

void sub_1D807CE8C()
{
  OUTLINED_FUNCTION_120();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_0_161();
  sub_1D7E35D40(0, v10, v11, MEMORY[0x1E69D6AD8]);
  v13 = v12;
  OUTLINED_FUNCTION_9();
  v15 = v14;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_26();
  sub_1D7EB0EF8();
  if (v17)
  {
    if (v5)
    {
      v5(0);
    }
  }

  else
  {
    v37 = v7;
    v38 = v5;
    v18 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_cardItemStack;
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    (*(v15 + 16))(v1, v0 + v18, v13);
    sub_1D818F9F4();
    (*(v15 + 8))(v1, v13);
    v19 = v39[0];
    v20 = *(v39[0] + OBJC_IVAR____TtC5TeaUI13UIKitCardItem_presentedWrapper);
    sub_1D7FF3858();

    LOBYTE(v39[0]) = 4;
    sub_1D80725CC(v39);
    OUTLINED_FUNCTION_15_2();
    sub_1D818F994();
    v21 = v39[3];
    swift_endAccess();

    if (qword_1EDBB1F78 != -1)
    {
      OUTLINED_FUNCTION_0_157();
    }

    v22 = sub_1D818FE34();
    OUTLINED_FUNCTION_26_17(v22, qword_1EDBC6048);
    v23 = v9;
    v24 = v19;
    v25 = sub_1D818FE14();
    v26 = sub_1D81919E4();

    if (os_log_type_enabled(v25, v26))
    {
      v36 = v3;
      v27 = swift_slowAlloc();
      v28 = OUTLINED_FUNCTION_10_43();
      v29 = OUTLINED_FUNCTION_61();
      v39[0] = v29;
      *v27 = 138412546;
      *(v27 + 4) = v23;
      *v28 = v23;
      *(v27 + 12) = 2080;
      v30 = v29;
      v31 = v23;
      v32 = OUTLINED_FUNCTION_85();
      v35 = sub_1D7E1C3D8(v32, v33, v34);

      *(v27 + 14) = v35;
      _os_log_impl(&dword_1D7DFF000, v25, v26, "Removing card with view controller: %@ with state: %s", v27, 0x16u);
      sub_1D7E39F80(v28);
      OUTLINED_FUNCTION_38();
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();

      v3 = v36;
    }

    else
    {
    }

    sub_1D8070B84(v37 & 1, v38, v3);
    sub_1D80724C4();
    sub_1D807D27C();
  }

  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D807D27C()
{
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v8 = 1;
  sub_1D8080164(v0, v1, &v8);
  if ((v3 & 1) == 0)
  {
    v4 = v2;
    v5 = *&v0[OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_rootViewController];
    [v5 additionalSafeAreaInsets];
    if (vabdd_f64(v6, v4) >= 1.0)
    {
      [v5 setAdditionalSafeAreaInsets_];
    }
  }

  sub_1D808122C(v8);
}

void sub_1D807D34C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a1;
  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  sub_1D7E3A0E4();
  v4 = a1;
  if (swift_dynamicCast())
  {
    sub_1D7E17C84(v7, v10);
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v6 + 8))(v5, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_1D80811A0(v7);
    static CardViewBehavior.default.getter(a2);
  }
}

void sub_1D807D434(void *a1, NSObject *a2, uint64_t a3, int a4, int a5, void (*a6)(uint64_t), uint64_t a7)
{
  v97 = a6;
  v98 = a3;
  sub_1D7E35D40(0, &unk_1EDBB1FE0, type metadata accessor for UIKitCardItem, MEMORY[0x1E69D6AD8]);
  v13 = v12;
  *&v100 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v93 - v14;
  sub_1D808123C(0, &qword_1EDBAE2A0, MEMORY[0x1E69E74D0]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v99 = &v93 - v17;
  if (qword_1EDBB1F78 != -1)
  {
    swift_once();
  }

  v18 = sub_1D818FE34();
  v19 = __swift_project_value_buffer(v18, qword_1EDBC6048);
  v20 = a1;
  v21 = sub_1D818FE14();
  v22 = sub_1D81919E4();

  v23 = os_log_type_enabled(v21, v22);
  v101 = v19;
  v102 = a2;
  v95 = a4;
  v96 = a5;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v94 = v13;
    v25 = v24;
    v93 = swift_slowAlloc();
    v104[0] = v93;
    *v25 = 136315138;
    v26 = v20;
    v27 = v15;
    v28 = a7;
    v29 = v20;
    v30 = [v26 description];
    v31 = sub_1D8190F14();
    v33 = v32;

    v20 = v29;
    a7 = v28;
    v15 = v27;
    v34 = sub_1D7E1C3D8(v31, v33, v104);

    *(v25 + 4) = v34;
    _os_log_impl(&dword_1D7DFF000, v21, v22, "Will present card %s", v25, 0xCu);
    v35 = v93;
    __swift_destroy_boxed_opaque_existential_1Tm(v93);
    MEMORY[0x1DA715D00](v35, -1, -1);
    v36 = v25;
    v13 = v94;
    MEMORY[0x1DA715D00](v36, -1, -1);
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_1D7EB0EF8();
  v39 = v38;

  if ((v39 & 1) == 0)
  {
    v93 = v20;
    v94 = a7;
    v43 = swift_unknownObjectUnownedLoadStrong();
    v44 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_cardItemStack;
    swift_beginAccess();
    (*(v100 + 16))(v15, &v43[v44], v13);

    v45 = v99;
    sub_1D8058F5C(1);
    v46 = sub_1D7F76A3C();
    sub_1D8081334(v45, &qword_1EDBAE2A0, MEMORY[0x1E69E74D0]);
    v47 = sub_1D7E36AB8(v46);
    if (v47)
    {
      v49 = v47;
      if (v47 < 1)
      {
        __break(1u);
        goto LABEL_31;
      }

      v50 = 0;
      *&v48 = 138412290;
      v100 = v48;
      do
      {
        if ((v46 & 0xC000000000000001) != 0)
        {
          v51 = MEMORY[0x1DA714420](v50, v46);
        }

        else
        {
          v51 = *(v46 + 8 * v50 + 32);
        }

        v52 = v51;
        if (*(v51 + OBJC_IVAR____TtC5TeaUI13UIKitCardItem_behavior + 9) == 4)
        {
          v53 = v51;
          v54 = sub_1D818FE14();
          v55 = sub_1D81919E4();

          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            *v56 = v100;
            v58 = *&v53[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_viewController];
            *(v56 + 4) = v58;
            *v57 = v58;
            v59 = v58;
            _os_log_impl(&dword_1D7DFF000, v54, v55, "Dismissing existing card due to stackTrait.dismiss: %@", v56, 0xCu);
            sub_1D7E39F80(v57);
            MEMORY[0x1DA715D00](v57, -1, -1);
            MEMORY[0x1DA715D00](v56, -1, -1);
          }

          v60 = swift_unknownObjectUnownedLoadStrong();
          v52 = *&v53[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_viewController];
          sub_1D807CE8C();
        }

        ++v50;
      }

      while (v49 != v50);
    }

    v61 = swift_unknownObjectUnownedLoadStrong();
    v62 = v98;
    v63 = sub_1D8070B0C();
    [v61 addChildViewController_];

    v64 = swift_unknownObjectUnownedLoadStrong();
    v65 = [v64 view];

    if (v65)
    {
      v66 = OBJC_IVAR____TtC5TeaUI13UIKitCardItem____lazy_storage___presentingWrapper;
      v67 = [*(v62 + OBJC_IVAR____TtC5TeaUI13UIKitCardItem____lazy_storage___presentingWrapper) view];
      v68 = v94;
      v69 = v97;
      if (v67)
      {
        v70 = v67;
        [v65 addSubview_];

        v71 = *(v62 + v66);
        v72 = swift_unknownObjectUnownedLoadStrong();
        v73 = v71;
        [v73 didMoveToParentViewController_];

        v74 = [*(v62 + v66) view];
        if (v74)
        {
          v75 = v74;
          v76 = swift_unknownObjectUnownedLoadStrong();
          v77 = [v76 view];

          if (v77)
          {

            [v77 bounds];
            v79 = v78;
            v81 = v80;
            v83 = v82;
            v85 = v84;

            [v75 setFrame_];
            v86 = v93;
            swift_getObjectType();
            if (dynamic_cast_existential_1_conditional(v86))
            {
              v88 = v87;
              v89 = v86;
            }

            else
            {
              v88 = 0;
            }

            v91 = v95;
            v90 = v96;
            *(v62 + OBJC_IVAR____TtC5TeaUI13UIKitCardItem_animationDelegate + 8) = v88;
            swift_unknownObjectWeakAssign();
            swift_unknownObjectRelease();
            v92 = swift_unknownObjectUnownedLoadStrong();
            *(v62 + OBJC_IVAR____TtC5TeaUI13UIKitCardItem_parentAnimationDelegate + 8) = &protocol witness table for UIKitCardContainerController;
            swift_unknownObjectWeakAssign();

            v103 = v91;
            sub_1D8071028(&v103, v90 & 1, v69, v68);
            return;
          }

LABEL_34:
          __break(1u);
          return;
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

  v102 = sub_1D818FE14();
  v40 = sub_1D81919E4();
  if (os_log_type_enabled(v102, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_1D7DFF000, v102, v40, "Card was popped before it could present", v41, 2u);
    MEMORY[0x1DA715D00](v41, -1, -1);
  }

  v42 = v102;
}

void sub_1D807DC30()
{
  OUTLINED_FUNCTION_120();
  v19 = v0;
  v20 = v1;
  v3 = v2;
  v21 = v4;
  v6 = v5;
  v7 = sub_1D818F5F4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v11 = v10 - v9;
  v18 = *v6;
  sub_1D7E343BC();
  v12 = MEMORY[0x1E69D6810];
  sub_1D7E35D40(0, &qword_1EDBB2CC0, MEMORY[0x1E69D6810], MEMORY[0x1E69E6F90]);
  *(OUTLINED_FUNCTION_35_15() + 16) = xmmword_1D81A1B70;
  sub_1D818F5E4();
  sub_1D818F5D4();
  sub_1D818F5C4();
  sub_1D7E343E4();
  v13 = OUTLINED_FUNCTION_5_53();
  sub_1D7E35D40(v13, v14, v12, v15);
  sub_1D7E26188();
  sub_1D8192004();
  v16 = OUTLINED_FUNCTION_38_12();
  swift_unknownObjectUnownedInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v19;
  *(v17 + 24) = v16;
  *(v17 + 32) = v3;
  *(v17 + 40) = v20;
  *(v17 + 48) = v18;
  *(v17 + 49) = v21;

  sub_1D7E38808(v3);
  sub_1D818EF34();

  (*(v8 + 8))(v11, v7);

  OUTLINED_FUNCTION_100();
}

void sub_1D807DE94(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, int a6)
{
  v55 = a6;
  v56 = a5;
  v58 = a4;
  v59 = a3;
  sub_1D7E35D40(0, &unk_1EDBB1FE0, type metadata accessor for UIKitCardItem, MEMORY[0x1E69D6AD8]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v54 - v11;
  if (a1 < 0 || (v13 = swift_unknownObjectUnownedLoadStrong(), v57 = a2, v14 = v13, v15 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_cardItemStack, swift_beginAccess(), v16 = *(v10 + 16), v16(v12, &v14[v15], v9), v14, sub_1D80812D0(&qword_1EDBB1FF0), sub_1D8191724(), sub_1D81917B4(), v17 = sub_1D81917A4(), v18 = *(v10 + 8), v18(v12, v9), v17 <= a1))
  {
    if (qword_1EDBB1F78 != -1)
    {
      swift_once();
    }

    v33 = sub_1D818FE34();
    __swift_project_value_buffer(v33, qword_1EDBC6048);

    v34 = sub_1D818FE14();
    v35 = sub_1D81919C4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 134218240;
      *(v36 + 4) = a1;
      *(v36 + 12) = 2048;
      Strong = swift_unknownObjectUnownedLoadStrong();
      v38 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_cardItemStack;
      swift_beginAccess();
      (*(v10 + 16))(v12, &Strong[v38], v9);

      sub_1D80812D0(&qword_1EDBB1FF0);
      sub_1D8191724();
      sub_1D81917B4();
      v39 = sub_1D81917A4();
      (*(v10 + 8))(v12, v9);
      *(v36 + 14) = v39;

      _os_log_impl(&dword_1D7DFF000, v34, v35, "Bad card index: %ld, card stack count: %ld", v36, 0x16u);
      MEMORY[0x1DA715D00](v36, -1, -1);
    }

    else
    {
    }

    if (v59)
    {
      v59(0);
    }
  }

  else
  {
    v19 = swift_unknownObjectUnownedLoadStrong();
    v20 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_cardItemStack;
    swift_beginAccess();
    v16(v12, &v19[v20], v9);

    sub_1D818F9F4();
    v18(v12, v9);
    v21 = v61;
    if (qword_1EDBB1F78 != -1)
    {
      swift_once();
    }

    v22 = sub_1D818FE34();
    __swift_project_value_buffer(v22, qword_1EDBC6048);
    v23 = v21;
    v24 = sub_1D818FE14();
    v25 = sub_1D81919E4();

    v26 = os_log_type_enabled(v24, v25);
    v27 = v56;
    if (v26)
    {
      v28 = 0xEA00000000006E65;
      v29 = 0x657263736C6C7566;
      v30 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v61 = v54;
      *v30 = 134218754;
      *(v30 + 4) = a1;
      *(v30 + 12) = 2080;
      v31 = 0x657263736C6C7566;
      v32 = 0xEA00000000006E65;
      switch(v27)
      {
        case 1:
          v32 = 0xE800000000000000;
          v31 = 0x6465646E61707865;
          break;
        case 2:
          v40 = 0x70616C6C6F63;
          goto LABEL_17;
        case 3:
          v32 = 0xE700000000000000;
          v41 = 1953653104;
          goto LABEL_21;
        case 4:
          v40 = 0x73696D736964;
LABEL_17:
          v31 = v40 & 0xFFFFFFFFFFFFLL | 0x6573000000000000;
          v32 = 0xE900000000000064;
          break;
        case 5:
          v32 = 0xE700000000000000;
          v41 = 1953066601;
LABEL_21:
          v31 = v41 | 0x6C616900000000;
          break;
        case 6:
          v32 = 0xE700000000000000;
          v31 = 0x64657261656C63;
          break;
        case 7:
          v32 = 0xE600000000000000;
          v31 = 0x6E6564646968;
          break;
        default:
          break;
      }

      v42 = sub_1D7E1C3D8(v31, v32, &v61);

      *(v30 + 14) = v42;
      *(v30 + 22) = 2080;
      switch(v23[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_presentationState])
      {
        case 1:
          v28 = 0xE800000000000000;
          v29 = 0x6465646E61707865;
          break;
        case 2:
          v43 = 0x70616C6C6F63;
          goto LABEL_27;
        case 3:
          v28 = 0xE700000000000000;
          v44 = 1953653104;
          goto LABEL_31;
        case 4:
          v43 = 0x73696D736964;
LABEL_27:
          v29 = v43 & 0xFFFFFFFFFFFFLL | 0x6573000000000000;
          v28 = 0xE900000000000064;
          break;
        case 5:
          v28 = 0xE700000000000000;
          v44 = 1953066601;
LABEL_31:
          v29 = v44 | 0x6C616900000000;
          break;
        case 6:
          v28 = 0xE700000000000000;
          v29 = 0x64657261656C63;
          break;
        case 7:
          v28 = 0xE600000000000000;
          v29 = 0x6E6564646968;
          break;
        default:
          break;
      }

      v45 = sub_1D7E1C3D8(v29, v28, &v61);

      *(v30 + 24) = v45;
      *(v30 + 32) = 2080;
      v60 = v23[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_behavior + 8];
      v46 = sub_1D8190F84();
      v48 = sub_1D7E1C3D8(v46, v47, &v61);

      *(v30 + 34) = v48;
      _os_log_impl(&dword_1D7DFF000, v24, v25, "Setting card at index %ld to state %s, from state %s, with dismiss trait %s", v30, 0x2Au);
      v49 = v54;
      swift_arrayDestroy();
      MEMORY[0x1DA715D00](v49, -1, -1);
      MEMORY[0x1DA715D00](v30, -1, -1);
    }

    switch(v27)
    {
      case 4:
        v50 = &v23[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_behavior];
        if (v23[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_behavior + 8] == 1)
        {
          goto LABEL_41;
        }

        if (sub_1D7E3A3F4(0, *v50))
        {
          v53 = 3;
LABEL_46:
          LOBYTE(v61) = v53;
          goto LABEL_36;
        }

        if (sub_1D7E3A3F4(1, *v50))
        {
          v53 = 2;
          goto LABEL_46;
        }

        if (v59)
        {
          v59(0);
        }

LABEL_37:

        break;
      case 6:
LABEL_41:
        v51 = swift_unknownObjectUnownedLoadStrong();
        v52 = *&v23[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_viewController];
        sub_1D807CE8C();

        return;
      case 7:
        sub_1D8070B84(v55 & 1, v59, v58);
        goto LABEL_37;
      default:
        LOBYTE(v61) = v27;
LABEL_36:
        sub_1D8071028(&v61, v55 & 1, v59, v58);
        goto LABEL_37;
    }
  }
}

void sub_1D807E70C()
{
  OUTLINED_FUNCTION_120();
  v18 = v0;
  v2 = v1;
  v17 = v3;
  v16 = v4;
  v5 = sub_1D818F5F4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  sub_1D7E343BC();
  v10 = MEMORY[0x1E69D6810];
  sub_1D7E35D40(0, &qword_1EDBB2CC0, MEMORY[0x1E69D6810], MEMORY[0x1E69E6F90]);
  *(OUTLINED_FUNCTION_35_15() + 16) = xmmword_1D81A1B70;
  sub_1D818F5E4();
  sub_1D818F5D4();
  sub_1D818F5C4();
  sub_1D7E343E4();
  v11 = OUTLINED_FUNCTION_5_53();
  sub_1D7E35D40(v11, v12, v10, v13);
  sub_1D7E26188();
  sub_1D8192004();
  v14 = OUTLINED_FUNCTION_38_12();
  swift_unknownObjectUnownedInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v16;
  *(v15 + 24) = v14;
  *(v15 + 32) = v2;
  *(v15 + 40) = v18;
  *(v15 + 48) = v17;

  sub_1D7E38808(v2);
  sub_1D818EF34();

  (*(v6 + 8))(v9, v5);

  OUTLINED_FUNCTION_100();
}

void sub_1D807E964(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, int a5)
{
  v27 = a5;
  v28 = a4;
  v29 = a3;
  sub_1D7E35D40(0, &unk_1EDBB1FE0, type metadata accessor for UIKitCardItem, MEMORY[0x1E69D6AD8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - v9;
  if (a1 < 0 || (v11 = swift_unknownObjectUnownedLoadStrong(), v12 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_cardItemStack, swift_beginAccess(), v13 = *(v8 + 16), v13(v10, &v11[v12], v7), v11, sub_1D80812D0(&qword_1EDBB1FF0), sub_1D8191724(), sub_1D81917B4(), v14 = sub_1D81917A4(), v15 = *(v8 + 8), v15(v10, v7), v14 <= a1))
  {
    if (qword_1EDBB1F78 != -1)
    {
      swift_once();
    }

    v19 = sub_1D818FE34();
    __swift_project_value_buffer(v19, qword_1EDBC6048);

    v20 = sub_1D818FE14();
    v21 = sub_1D81919C4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134218240;
      *(v22 + 4) = a1;
      *(v22 + 12) = 2048;
      Strong = swift_unknownObjectUnownedLoadStrong();
      v24 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_cardItemStack;
      swift_beginAccess();
      (*(v8 + 16))(v10, &Strong[v24], v7);

      sub_1D80812D0(&qword_1EDBB1FF0);
      sub_1D8191724();
      sub_1D81917B4();
      v25 = sub_1D81917A4();
      (*(v8 + 8))(v10, v7);
      *(v22 + 14) = v25;

      _os_log_impl(&dword_1D7DFF000, v20, v21, "Bad card index: %ld, card stack count: %ld", v22, 0x16u);
      MEMORY[0x1DA715D00](v22, -1, -1);
    }

    else
    {
    }

    if (v29)
    {
      v29(0);
    }
  }

  else
  {
    v16 = swift_unknownObjectUnownedLoadStrong();
    v17 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_cardItemStack;
    swift_beginAccess();
    v13(v10, &v16[v17], v7);

    sub_1D818F9F4();
    v15(v10, v7);
    v18 = v30;
    sub_1D8072304(v27 & 1, v29, v28);
  }
}

void sub_1D807ED80()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_66_0();
  v3 = *v2;
  if (qword_1EDBB1F78 != -1)
  {
    OUTLINED_FUNCTION_0_157();
  }

  v4 = sub_1D818FE34();
  OUTLINED_FUNCTION_26_17(v4, qword_1EDBC6048);
  v5 = sub_1D818FE14();
  v6 = sub_1D81919E4();
  if (OUTLINED_FUNCTION_28_17(v6))
  {
    OUTLINED_FUNCTION_55_1();
    OUTLINED_FUNCTION_24_19();
    OUTLINED_FUNCTION_46_12();
    v7 = OUTLINED_FUNCTION_4_67(4.8149e-34);
    switch(v3)
    {
      case 1:
        v7 = OUTLINED_FUNCTION_6_67();
        break;
      case 2:
        OUTLINED_FUNCTION_39_13();
        v7 = OUTLINED_FUNCTION_16_0() & 0xFFFFFFFFFFFFLL | 0x6573000000000000;
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_48_2();
        break;
      case 4:
        v7 = 1701736302;
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_53_6(v7, v8);
    OUTLINED_FUNCTION_52_3();
    *(v0 + 4) = v1;
    OUTLINED_FUNCTION_81_0(&dword_1D7DFF000, v9, v10, "CardContainer willTransitionTo interactiveState: %s");
    OUTLINED_FUNCTION_21_26();
    OUTLINED_FUNCTION_3_89();
  }

  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_32_14();
    v11 = OUTLINED_FUNCTION_19_25();
    v12(v11);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_36();
}

void sub_1D807EEE8()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_66_0();
  v3 = *v2;
  if (qword_1EDBB1F78 != -1)
  {
    OUTLINED_FUNCTION_0_157();
  }

  v4 = sub_1D818FE34();
  OUTLINED_FUNCTION_26_17(v4, qword_1EDBC6048);
  v5 = sub_1D818FE14();
  v6 = sub_1D81919E4();
  if (OUTLINED_FUNCTION_28_17(v6))
  {
    OUTLINED_FUNCTION_55_1();
    OUTLINED_FUNCTION_24_19();
    OUTLINED_FUNCTION_46_12();
    v7 = OUTLINED_FUNCTION_4_67(4.8149e-34);
    switch(v3)
    {
      case 1:
        v7 = OUTLINED_FUNCTION_6_67();
        break;
      case 2:
        OUTLINED_FUNCTION_39_13();
        v7 = OUTLINED_FUNCTION_16_0() & 0xFFFFFFFFFFFFLL | 0x6573000000000000;
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_48_2();
        break;
      case 4:
        v7 = 1701736302;
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_53_6(v7, v8);
    OUTLINED_FUNCTION_52_3();
    *(v0 + 4) = v1;
    OUTLINED_FUNCTION_81_0(&dword_1D7DFF000, v9, v10, "CardContainer didTransitionTo interactiveState: %s");
    OUTLINED_FUNCTION_21_26();
    OUTLINED_FUNCTION_3_89();
  }

  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_32_14();
    v11 = OUTLINED_FUNCTION_19_25();
    v12(v11);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_36();
}

uint64_t sub_1D807F050(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *a3;
  if (qword_1EDBB1F78 != -1)
  {
    OUTLINED_FUNCTION_0_157();
  }

  v4 = sub_1D818FE34();
  OUTLINED_FUNCTION_26_17(v4, qword_1EDBC6048);
  v5 = sub_1D818FE14();
  v6 = sub_1D81919E4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_55_1();
    v8 = OUTLINED_FUNCTION_61();
    v17[0] = v8;
    *v7 = 136315138;
    v9 = 0xEA00000000006E65;
    v10 = 0x657263736C6C7566;
    switch(v3)
    {
      case 1:
        v9 = 0xE800000000000000;
        v10 = 0x6465646E61707865;
        break;
      case 2:
        v11 = OUTLINED_FUNCTION_16_0();
        goto LABEL_9;
      case 3:
        v9 = 0xE700000000000000;
        v12 = 1953653104;
        goto LABEL_13;
      case 4:
        v11 = OUTLINED_FUNCTION_45_2();
LABEL_9:
        v10 = v11 & 0xFFFFFFFFFFFFLL | 0x6573000000000000;
        v9 = 0xE900000000000064;
        break;
      case 5:
        v9 = 0xE700000000000000;
        v12 = 1953066601;
LABEL_13:
        v10 = v12 | 0x6C616900000000;
        break;
      case 6:
        v9 = 0xE700000000000000;
        v10 = OUTLINED_FUNCTION_17_25();
        break;
      case 7:
        v9 = 0xE600000000000000;
        v10 = OUTLINED_FUNCTION_30_18();
        break;
      default:
        break;
    }

    v13 = sub_1D7E1C3D8(v10, v9, v17);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_1D7DFF000, v5, v6, "CardContainer willTransitionTo presentationState: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }

  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    v15 = OUTLINED_FUNCTION_85();
    v16(v15);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D807F29C(uint64_t a1, uint64_t a2, double a3)
{
  v7 = v3 + OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_delegate;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 48))(a1, a2, ObjectType, v9, a3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D807F34C()
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v0 = OUTLINED_FUNCTION_85();
    v2 = v1(v0);
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t sub_1D807F410(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = *a4;
  v9 = v4 + OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_delegate;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    v14 = v8;
    v12 = (*(v10 + 64))(a1, a2, a3, &v14, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

id UIKitCardContainerController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D8190EE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void (*sub_1D807F6B8(void *a1))(uint64_t, char)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1D803C694;
}

uint64_t (*sub_1D807F74C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D807C03C;
}

void sub_1D807F944(void *a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = sub_1D7EB0D58();
  if (v4)
  {
    v5 = v4;
    v28 = a1;
    v6 = OUTLINED_FUNCTION_47_11();
    v7(v6, a2);
    v18 = v23;
    v19 = v24;
    v20 = v25;
    v21 = v26;
    v22 = v27;
    sub_1D807255C(&v18);
  }

  else
  {
    if (qword_1EDBB1F78 != -1)
    {
      OUTLINED_FUNCTION_0_157();
    }

    v8 = sub_1D818FE34();
    OUTLINED_FUNCTION_26_17(v8, qword_1EDBC6048);
    v9 = a1;
    oslog = sub_1D818FE14();
    v10 = sub_1D81919C4();

    if (os_log_type_enabled(oslog, v10))
    {
      v11 = OUTLINED_FUNCTION_55_1();
      v12 = OUTLINED_FUNCTION_61();
      v23 = v12;
      *v11 = 136315138;
      v18 = v9;
      v13 = v9;
      OUTLINED_FUNCTION_14_32();
      v14 = sub_1D8190F94();
      v16 = sub_1D7E1C3D8(v14, v15, &v23);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_1D7DFF000, oslog, v10, "Unable to update CardViewBehavior for view controller %s, no matching card item found", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      OUTLINED_FUNCTION_10_45();
      OUTLINED_FUNCTION_38();
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall UIKitCardContainerController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for UIKitCardContainerController();
  objc_msgSendSuper2(&v9, sel_viewDidAppear_, a1);
  if (qword_1EDBB1F78 != -1)
  {
    OUTLINED_FUNCTION_0_157();
  }

  v4 = sub_1D818FE34();
  OUTLINED_FUNCTION_26_17(v4, qword_1EDBC6048);
  v5 = sub_1D818FE14();
  v6 = sub_1D81919E4();
  if (os_log_type_enabled(v5, v6))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_3_57(&dword_1D7DFF000, v7, v8, "viewDidAppear");
    OUTLINED_FUNCTION_10_45();
  }

  sub_1D818EF14();
}

id sub_1D807FCB8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1D807FCF0(uint64_t a1, uint64_t a2)
{
  sub_1D808123C(0, &qword_1EDBAE3D8, MEMORY[0x1E69E6CF0]);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - v6;
  sub_1D7E35D40(0, &unk_1EDBB1FE0, type metadata accessor for UIKitCardItem, MEMORY[0x1E69D6AD8]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  v15 = *(a1 + 16);
  v14 = (a1 + 16);
  v13 = v15;
  if (v15)
  {
    sub_1D8190DB4();
  }

  else
  {
    v26 = v14;
    v16 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_cardItemStack;
    swift_beginAccess();
    (*(v10 + 16))(v12, a2 + v16, v9);
    v28 = MEMORY[0x1E69E7CC0];
    sub_1D80812D0(qword_1EDBB2000);
    sub_1D8191134();
    v17 = *(v5 + 36);
    sub_1D80812D0(&qword_1EDBB1FF0);
LABEL_4:
    while (1)
    {
      sub_1D81917B4();
      if (*&v7[v17] == v27[0])
      {
        break;
      }

      v18 = sub_1D81918F4();
      v20 = *v19;
      v18(v27, 0);
      sub_1D81917C4();
      v21 = 0;
      while (v21 != 3)
      {
        v22 = &unk_1F52E41D0 + v21++;
        if (v22[32] == *(v20 + OBJC_IVAR____TtC5TeaUI13UIKitCardItem_presentationState))
        {

          goto LABEL_4;
        }
      }

      sub_1D8192274();
      sub_1D81922B4();
      sub_1D81922C4();
      sub_1D8192284();
    }

    sub_1D8081334(v7, &qword_1EDBAE3D8, MEMORY[0x1E69E6CF0]);
    v13 = v28;
    v23 = v26;
    swift_beginAccess();
    *v23 = v13;
  }

  return v13;
}

void sub_1D808003C(id *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != 1)
  {
    v9 = *a1;
    return;
  }

  v4 = sub_1D807FCF0(a2, a3);
  v5 = sub_1D7E36AB8(v4);
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      v8 = 0;
LABEL_14:
      swift_beginAccess();
      v10 = *a1;
      *a1 = v8;
      v11 = v8;
      sub_1D808122C(v10);
      return;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1DA714420](i, v4);
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (*(v7 + OBJC_IVAR____TtC5TeaUI13UIKitCardItem_presentationState) == 2)
    {

      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_1D8080164(char *a1, uint64_t a2, id *a3)
{
  sub_1D7E35D40(0, &unk_1EDBB1FE0, type metadata accessor for UIKitCardItem, MEMORY[0x1E69D6AD8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - v9;
  v11 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_cardItemStack;
  swift_beginAccess();
  (*(v8 + 16))(v10, &a1[v11], v7);
  LOBYTE(v11) = sub_1D818F9A4();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    v12 = sub_1D807FCF0(a2, a1);
    v13 = sub_1D7E36AB8(v12);

    if (v13)
    {
      sub_1D808003C(a3, a2, a1);
      if (v14)
      {

        v15 = *&a1[OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_snaps];
        if (*(v15 + 16))
        {
          v16 = sub_1D7F061F8(2);
          if ((v17 & 1) != 0 && *(*(v15 + 56) + 16 * v16 + 8) == 1)
          {
            v18 = [a1 view];
            if (v18)
            {
              v19 = v18;
              [v18 safeAreaInsets];
            }

            else
            {
              __break(1u);
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1D80803AC()
{
  OUTLINED_FUNCTION_66_0();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for UIKitCardContainerController();
  v3 = objc_msgSendSuper2(&v5, *v2);
  return v0(v3);
}

double sub_1D8080444(void *a1)
{
  v2 = *(v1 + 16);
  [a1 maximumDetentValue];
  return v2 * v3;
}

uint64_t sub_1D8080488(void *a1, void *a2, uint64_t a3, unsigned int a4, uint64_t a5, void *a6, const void *a7, _BYTE *a8, double a9)
{
  v17 = a4 >> 8;
  *&a8[OBJC_IVAR____TtC5TeaUI13UIKitCardItem____lazy_storage___presentingWrapper] = 0;
  v18 = &a8[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_previousPresentedViewFrame];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v18[32] = 1;
  a8[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_presentationState] = 7;
  a8[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_previousPresentationState] = 8;
  v19 = OBJC_IVAR____TtC5TeaUI13UIKitCardItem_transitionDelegate;
  *&a8[v19] = [objc_allocWithZone(type metadata accessor for UIKitCardTransitioningDelegate()) init];
  v20 = &a8[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_cardContainerController];
  *&a8[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_cardContainerController + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a8[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_animationDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a8[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_parentAnimationDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  a8[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_updatedDetent] = 0;
  a8[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_futurePresentationState] = 7;
  *&a8[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_presentedWrapper] = a1;
  *&a8[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_viewController] = a2;
  v21 = &a8[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_behavior];
  *v21 = a3;
  *(v21 + 8) = a4 & 1;
  *(v21 + 9) = v17;
  *(v21 + 10) = BYTE2(a4) & 1;
  v21[2] = a9;
  *(v20 + 1) = &protocol witness table for UIKitCardContainerController;
  v49 = a6;
  swift_unknownObjectWeakAssign();
  memcpy(&a8[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_layoutOptions], a7, 0x49uLL);
  sub_1D7E0A1A8(0, &unk_1EDBAE490);
  sub_1D7F14D74();
  v48 = a1;
  v47 = a2;
  sub_1D8190DB4();
  *&a8[OBJC_IVAR____TtC5TeaUI13UIKitCardItem_detents] = sub_1D8190D94();
  v55.receiver = a8;
  v55.super_class = type metadata accessor for UIKitCardItem();
  v22 = objc_msgSendSuper2(&v55, sel_init);
  v23 = sub_1D803448C();

  v53 = v23;
  v51 = *(v23 + 16);
  if (!v51)
  {
LABEL_21:

    return v22;
  }

  v24 = 0;
  v25 = OBJC_IVAR____TtC5TeaUI13UIKitCardItem_detents;
  v50 = v53 + 32;
  while (v24 < *(v53 + 16))
  {
    v26 = *(v50 + v24);
    if (*(a5 + 16) && (v27 = sub_1D7F061F8(*(v50 + v24)), (v28 & 1) != 0))
    {
      v29 = *(*(a5 + 56) + 8 * v27);
      v30 = v29;
    }

    else
    {
      v29 = 0;
    }

    swift_beginAccess();
    if (v29)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v31 = *&v22[v25];
      *&v22[v25] = 0x8000000000000000;
      v32 = sub_1D7F061F8(v26);
      if (__OFADD__(v31[2], (v33 & 1) == 0))
      {
        goto LABEL_23;
      }

      v34 = v32;
      v35 = v33;
      sub_1D808111C(0, &qword_1EDBAE398, MEMORY[0x1E69E6DC8]);
      if (sub_1D8192374())
      {
        v36 = sub_1D7F061F8(v26);
        if ((v35 & 1) != (v37 & 1))
        {
          goto LABEL_25;
        }

        v34 = v36;
      }

      if (v35)
      {
        v38 = v31[7];
        v39 = *(v38 + 8 * v34);
        *(v38 + 8 * v34) = v29;
      }

      else
      {
        v31[(v34 >> 6) + 8] |= 1 << v34;
        *(v31[6] + v34) = v26;
        *(v31[7] + 8 * v34) = v29;
        v43 = v31[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_24;
        }

        v31[2] = v45;
      }

      goto LABEL_19;
    }

    v40 = sub_1D7F061F8(v26);
    if (v41)
    {
      v42 = v40;
      swift_isUniquelyReferenced_nonNull_native();
      v54 = *&v22[v25];
      *&v22[v25] = 0x8000000000000000;
      sub_1D808111C(0, &qword_1EDBAE398, MEMORY[0x1E69E6DC8]);
      sub_1D8192374();
      v31 = v54;

      sub_1D8192384();
LABEL_19:
      *&v22[v25] = v31;
    }

    ++v24;
    swift_endAccess();
    if (v51 == v24)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1D8192714();
  __break(1u);
  return result;
}

uint64_t objectdestroy_13Tm()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t dispatch thunk of UIKitCardContainerController.cardViewAnimationCoordinator(_:willTransitionTo:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x198))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1A8))();
}

uint64_t dispatch thunk of UIKitCardContainerController.cardViewAnimationCoordinator(_:didTransitionTo:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1A0))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1B0))();
}

void sub_1D808111C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7E0A1A8(255, &unk_1EDBAE490);
    v7 = sub_1D7F14D74();
    v8 = a3(a1, &type metadata for CardViewPresentationState, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D80811A0(uint64_t a1)
{
  sub_1D7E35D40(0, &qword_1EDBB0210, sub_1D7E3A0E4, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D808122C(id a1)
{
  if (a1 != 1)
  {
  }
}

void sub_1D808123C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    OUTLINED_FUNCTION_0_161();
    sub_1D7E35D40(255, v6, v7, MEMORY[0x1E69D6AD8]);
    v9 = v8;
    v10 = OUTLINED_FUNCTION_3_93(&qword_1EDBB1FF0);
    v11 = a3(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1D80812D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_0_161();
    sub_1D7E35D40(255, v3, v4, MEMORY[0x1E69D6AD8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8081334(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_1D808123C(0, a2, a3);
  OUTLINED_FUNCTION_4_3();
  (*(v4 + 8))(a1);
  return a1;
}

double static SplitViewInsets.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1ECA0C330 != -1)
  {
    OUTLINED_FUNCTION_0_162();
  }

  result = *&xmmword_1ECA10380;
  *a1 = xmmword_1ECA10380;
  return result;
}

__n128 SplitViewModel.xInsets.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

uint64_t SplitViewModel.leftSide.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 32), 0x49uLL);
  memcpy(a1, (v1 + 32), 0x49uLL);
  return sub_1D8081474(__dst, &v4);
}

uint64_t SplitViewModel.rightSide.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 112), 0x49uLL);
  memcpy(a1, (v1 + 112), 0x49uLL);
  return sub_1D8081474(__dst, &v4);
}

void *SplitViewModel.init(xAnchor:degrees:leftSide:rightSide:)@<X0>(void *__src@<X1>, const void *a2@<X0>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  if (qword_1ECA0C330 != -1)
  {
    OUTLINED_FUNCTION_0_162();
  }

  v10 = 1.0;
  if (a4 <= 1.0)
  {
    v10 = a4;
  }

  if (a4 >= 0.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = 360.0;
  if (a5 <= 360.0)
  {
    v12 = a5;
  }

  if (a5 >= 0.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0.0;
  }

  memcpy(&v15[7], __src, 0x49uLL);
  *a3 = v11;
  *(a3 + 8) = xmmword_1ECA10380;
  *(a3 + 24) = v13;
  memcpy((a3 + 32), a2, 0x49uLL);
  return memcpy((a3 + 105), v15, 0x50uLL);
}

void *SplitViewModel.init(xInsets:xAnchor:degrees:leftSide:rightSide:)@<X0>(_OWORD *a1@<X0>, const void *a2@<X1>, const void *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *(a4 + 8) = *a1;
  v8 = 1.0;
  if (a5 <= 1.0)
  {
    v8 = a5;
  }

  v9 = a5 < 0.0;
  v10 = 0.0;
  if (v9)
  {
    v8 = 0.0;
  }

  *a4 = v8;
  v11 = 360.0;
  if (a6 <= 360.0)
  {
    v11 = a6;
  }

  if (a6 >= 0.0)
  {
    v10 = v11;
  }

  *(a4 + 24) = v10;
  memcpy((a4 + 32), a2, 0x49uLL);

  return memcpy((a4 + 112), a3, 0x49uLL);
}

uint64_t sub_1D808167C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1D80816C4(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 72) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 73) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a1 + 48) = 2 * -a2;
      *(a1 + 72) = 0;
      return result;
    }

    *(a1 + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8081740(uint64_t result, char a2)
{
  v2 = *(result + 72) & 1 | (a2 << 7);
  *(result + 48) &= 1uLL;
  *(result + 72) = v2;
  return result;
}

uint64_t sub_1D8081780(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 185))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1D80817C8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 184) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 185) = 1;
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
      result = 0.0;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
      *(a1 + 80) = 2 * -a2;
      *(a1 + 104) = 0;
      return result;
    }

    *(a1 + 185) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OverlayAlertManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);

  return v0;
}

uint64_t OverlayAlertManager.__deallocating_deinit()
{
  OverlayAlertManager.deinit();

  return swift_deallocClassInstance();
}

void OverlayAlertManager.present(_:window:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = *(a1 + 16);
  *v26 = *a1;
  *&v26[16] = v4;
  v27 = *(a1 + 32);
  v5 = v2[18];
  if (v5)
  {
    v2[18] = 0;
    MEMORY[0x1EEE9AC00](a1);
    sub_1D7E1F150();
    swift_allocObject();
    sub_1D818FBA4();
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    v7 = *&v26[16];
    *(v6 + 24) = *v26;
    *(v6 + 40) = v7;
    *(v6 + 56) = v27;

    sub_1D8082848(v26, v25);
    v8 = sub_1D818FA14();
    sub_1D818FAC4();
  }

  else
  {
    v11 = [objc_allocWithZone(type metadata accessor for OverlayAlertView()) init];
    [v11 setAutoresizingMask_];
    [a2 bounds];
    v13 = v12;
    v15 = v14;
    __swift_project_boxed_opaque_existential_1(v3 + 7, v3[10]);
    v16 = *(a1 + 16);
    v22 = *a1;
    v23 = v16;
    v24 = *(a1 + 32);
    sub_1D7F248FC(&v22, v25, v13, v15);
    __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
    v22 = *v26;
    v23 = *&v26[16];
    v24 = v27;
    sub_1D8156670(&v22, v11, v25);
    sub_1D8081BF4(v11, a2);
    v17 = v27;
    if (v27)
    {
      v18 = *&v26[24];
      v22 = *&v26[8];
      sub_1D8190DB4();
      MEMORY[0x1DA713260](8236, 0xE200000000000000);
      sub_1D8190DB4();
      MEMORY[0x1DA713260](v18, v17);

      v19 = *(&v22 + 1);
      v20 = v22;
    }

    else
    {
      v20 = *&v26[8];
      v19 = *&v26[16];
      sub_1D8190DB4();
    }

    v21 = objc_opt_self();
    sub_1D8082758(v20, v19, 3, v21);
    sub_1D80827B8(v25);

    v8 = v3[18];
    v3[18] = v11;
  }
}

void OverlayAlertManager.present(_:)(__int128 *a1)
{
  v2 = *(v1 + 136);
  if (v2)
  {
    v3 = *(a1 + 2);
    v5 = *a1;
    v6 = v3;
    v7 = *(a1 + 24);
    v4 = v2;
    OverlayAlertManager.present(_:window:)(&v5, v4);
  }
}

void sub_1D8081BF4(void *a1, id a2)
{
  [a2 addSubview_];
  CGAffineTransformMakeScale(&v11, 0.9, 0.9);
  [a1 setTransform_];
  [a1 setAlpha_];
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *&v11.tx = sub_1D8082900;
  *&v11.ty = v5;
  *&v11.a = MEMORY[0x1E69E9820];
  *&v11.b = 1107296256;
  *&v11.c = sub_1D7E64940;
  *&v11.d = &block_descriptor_20_2;
  v6 = _Block_copy(&v11);
  v7 = a1;

  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = v7;
  *&v11.tx = sub_1D8082908;
  *&v11.ty = v8;
  *&v11.a = MEMORY[0x1E69E9820];
  *&v11.b = 1107296256;
  *&v11.c = sub_1D7EB30D4;
  *&v11.d = &block_descriptor_26_1;
  v9 = _Block_copy(&v11);
  v10 = v7;

  [v4 animateWithDuration:0x20000 delay:v6 options:v9 animations:0.2 completion:0.0];
  _Block_release(v9);
  _Block_release(v6);
}

Swift::Void __swiftcall OverlayAlertManager.register(on:)(UIWindow *on)
{
  v2 = *(v1 + 136);
  *(v1 + 136) = on;

  v3 = on;
}

id sub_1D8081EA8(void *a1)
{
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  [a1 setTransform_];
  return [a1 setAlpha_];
}

uint64_t sub_1D8081F04(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = a3;
  v3 = sub_1D8190BD4();
  v28 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D8190C34();
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D8190C64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  sub_1D7E11E0C();
  v16 = sub_1D8191AB4();
  sub_1D8190C54();
  sub_1D8190C94();
  v25 = *(v10 + 8);
  v25(v12, v9);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v19 = v24;
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  aBlock[4] = sub_1D8082910;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7E64940;
  aBlock[3] = &block_descriptor_35;
  v20 = _Block_copy(aBlock);
  v21 = v19;

  sub_1D8190BF4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D7E28784(&qword_1EDBB34B0, MEMORY[0x1E69E7F60]);
  sub_1D7E2885C();
  sub_1D7E28784(&qword_1EDBB3340, sub_1D7E2885C);
  sub_1D8192004();
  MEMORY[0x1DA713CA0](v15, v8, v5, v20);
  _Block_release(v20);

  (*(v28 + 8))(v5, v3);
  (*(v26 + 8))(v8, v27);
  return (v25)(v15, v9);
}

void sub_1D80822EC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    MEMORY[0x1EEE9AC00](v4);
    sub_1D7E1F150();
    swift_allocObject();
    sub_1D818FBA4();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;

    v6 = a2;
    v7 = sub_1D818FA14();
    sub_1D818FAC4();
  }
}

void sub_1D808241C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_getObjectType();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 144);
    v6 = v5;

    if (v5)
    {
      v7 = a3;
      v8 = sub_1D8191CC4();

      if (v8)
      {
        swift_beginAccess();
        v9 = swift_weakLoadStrong();
        if (v9)
        {
          v10 = *(v9 + 144);
          *(v9 + 144) = 0;
        }
      }
    }
  }
}

void sub_1D8082504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  v20 = sub_1D80828F8;
  v21 = v10;
  v16 = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_1D7E64940;
  v19 = &block_descriptor_57;
  v11 = _Block_copy(&v16);

  v12 = a5;

  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = sub_1D7F15988;
  v13[4] = v8;
  v20 = sub_1D7F5E970;
  v21 = v13;
  v16 = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_1D7EB30D4;
  v19 = &block_descriptor_14;
  v14 = _Block_copy(&v16);
  v15 = v12;

  [v9 animateWithDuration:131076 delay:v11 options:v14 animations:0.2 completion:0.0];
  _Block_release(v14);
  _Block_release(v11);
}

id sub_1D80826E4(void *a1)
{
  CGAffineTransformMakeScale(&v3, 0.9, 0.9);
  [a1 setTransform_];
  return [a1 setAlpha_];
}

void sub_1D8082758(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1D8190EE4();
  [a4 speak:v6 style:a3];
}

uint64_t objectdestroy_22Tm()
{

  return swift_deallocObject();
}

unint64_t sub_1D80829DC()
{
  result = qword_1ECA10390;
  if (!qword_1ECA10390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10390);
  }

  return result;
}

unint64_t sub_1D8082A34()
{
  result = qword_1ECA10398;
  if (!qword_1ECA10398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10398);
  }

  return result;
}

_BYTE *sub_1D8082A98(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}