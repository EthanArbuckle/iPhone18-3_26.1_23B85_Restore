uint64_t sub_1D8018AFC(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  sub_1D7E1AD50(0, &qword_1EDBBC690, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_1D818E994();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 208);
  swift_beginAccess();
  sub_1D7E54838(v1 + v12, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1D7E73334(v7);
  }

  (*(v9 + 32))(v11, v7, v8);
  v14 = (*(*(v4 + 104) + 56))(*(v4 + 88), *(v4 + 104));
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = *(AssociatedConformanceWitness + 80);
  v17 = swift_checkMetadataState();
  v18 = v16(v11, v17, AssociatedConformanceWitness);

  if (v18)
  {
    v20 = &unk_1F539F400;
    v19 = swift_dynamicCastObjCProtocolConditional();
    if (v19)
    {
      [v19 startTraversingWithDirection_];
    }
  }

  return (*(v9 + 8))(v11, v8);
}

Swift::Void __swiftcall KeyCommandTraverseProvider.continueTraversing()()
{
  OUTLINED_FUNCTION_0_119(v0, &qword_1EDBBC690);
  v3 = OUTLINED_FUNCTION_50(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9 - v4;
  OUTLINED_FUNCTION_12();
  v7 = *(v6 + 208);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  sub_1D7E54838(v1 + v7, v5);
  v8 = sub_1D818E994();
  LODWORD(v7) = __swift_getEnumTagSinglePayload(v5, 1, v8);
  sub_1D7E73334(v5);
  if (v7 != 1)
  {
    sub_1D8018AFC(0);
  }
}

uint64_t sub_1D8018E98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v77 = a1;
  v75 = *v1;
  v3 = v75;
  sub_1D7E1AD50(0, &qword_1EDBBC690, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v78 = &v63 - v5;
  v6 = sub_1D818E994();
  v74 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v76 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + v3[21]);
  v10 = v3[13];
  v11 = *(v10 + 56);
  v12 = v3[11];
  v13 = v11(v12, v10, v7);
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = (v11)(v12, v10);
  [v22 adjustedContentInset];
  v24 = v23;
  v26 = v25;

  v73 = v9;
  v72 = v11;
  v70 = v10 + 56;
  v27 = (v11)(v12, v10);
  v28 = UIEdgeInsetsInsetRect(v15, v17, v19, v21, v24, v26);
  v30 = v29;
  v32 = v31;
  v34 = v33;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v36 = *(AssociatedConformanceWitness + 56);
  v37 = swift_checkMetadataState();
  v71 = AssociatedConformanceWitness;
  v38 = v36(v37, AssociatedConformanceWitness, v28, v30, v32, v34);

  if (v38)
  {
    v68 = v12;
    v39 = v75[12];
    v40 = *(v39 + 8);
    v41 = v75[10];
    v69 = *(*v2 + 160);
    v67 = v39;
    v75 = v40;
    (v40)(v84, v41);
    v42 = v85;
    v43 = v86;
    __swift_project_boxed_opaque_existential_1(v84, v85);
    v44 = v78;
    (*(v43 + 64))(v38, v42, v43);

    if (__swift_getEnumTagSinglePayload(v44, 1, v6) == 1)
    {
      sub_1D7E73334(v78);
      __swift_destroy_boxed_opaque_existential_1Tm(v84);
      return __swift_storeEnumTagSinglePayload(v77, 1, 1, v6);
    }

    v47 = *(v74 + 32);
    v48 = v76;
    v49 = v78;
    v78 = v6;
    v65 = v74 + 32;
    v64 = v47;
    v47(v76, v49, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v84);
    v66 = v41;
    v50 = v67;
    (v75)(v81, v41, v67);
    v51 = v82;
    v52 = v83;
    __swift_project_boxed_opaque_existential_1(v81, v82);
    v53 = v72(v68, v10);
    (*(v52 + 56))(&v79, v48, v53, v71, v51, v52);

    if (v80)
    {
      sub_1D7E05450(&v79, v84);
      __swift_destroy_boxed_opaque_existential_1Tm(v81);
      v54 = v85;
      v55 = v86;
      __swift_project_boxed_opaque_existential_1(v84, v85);
      v56 = (*(v55 + 8))(v54, v55);
      v57 = v77;
      if (v56)
      {
        v58 = v78;
        v64(v77, v76, v78);
        __swift_storeEnumTagSinglePayload(v57, 0, 1, v58);
        return __swift_destroy_boxed_opaque_existential_1Tm(v84);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v84);
    }

    else
    {
      sub_1D7E9DD24(&v79, &qword_1ECA0DA98, qword_1EDBB7610);
      __swift_destroy_boxed_opaque_existential_1Tm(v81);
    }

    (v75)(v84, v66, v50);
    v59 = v85;
    v60 = v86;
    __swift_project_boxed_opaque_existential_1(v84, v85);
    v61 = v72(v68, v10);
    v62 = v76;
    (*(v60 + 40))(v76, 0, v61, v71, v59, v60);

    (*(v74 + 8))(v62, v78);
    return __swift_destroy_boxed_opaque_existential_1Tm(v84);
  }

  v46 = v77;

  return __swift_storeEnumTagSinglePayload(v46, 1, 1, v6);
}

char *KeyCommandTraverseProvider.deinit()
{
  v1 = *v0;
  sub_1D7E166A0((v0 + 16));
  sub_1D7E166A0((v0 + 32));
  OUTLINED_FUNCTION_12();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v2 + 160)]);
  OUTLINED_FUNCTION_12();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_12();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_12();
  sub_1D7E9DD24(&v0[*(v3 + 184)], &qword_1EDBBB508, &qword_1EDBBB510);
  OUTLINED_FUNCTION_12();
  sub_1D7E73334(&v0[*(v4 + 208)]);
  return v0;
}

uint64_t KeyCommandTraverseProvider.__deallocating_deinit()
{
  KeyCommandTraverseProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t (*sub_1D8019740(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = KeyCommandTraverseProvider.invalidator.modify(v2);
  return sub_1D7F41FE0;
}

uint64_t (*sub_1D80197AC(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = KeyCommandTraverseProvider.selectedIndexPath.modify(v2);
  return sub_1D7F413B4;
}

void sub_1D8019AA4()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1D7E1AD50(319, &qword_1EDBBC690, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

_BYTE *sub_1D8019C18(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D8019CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{

  if (a6)
  {
  }

  return result;
}

uint64_t sub_1D8019D44(uint64_t a1, uint64_t a2)
{
  sub_1D7E1AD50(0, &qword_1EDBBC690, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

TeaUI::ErrorModel __swiftcall ErrorModel.init(title:description:)(Swift::String title, Swift::String description)
{
  *v2 = title;
  v2[1] = description;
  result.description.value = description;
  result.title.value = title;
  return result;
}

uint64_t ErrorModel.title.getter()
{
  v1 = *v0;
  sub_1D8190DB4();
  return v1;
}

uint64_t ErrorModel.description.getter()
{
  v1 = *(v0 + 16);
  sub_1D8190DB4();
  return v1;
}

TeaUI::ErrorModel __swiftcall ErrorModel.init(description:)(Swift::String description)
{
  v1->_countAndFlagsBits = 0;
  v1->_object = 0;
  v1[1] = description;
  result.title.value = description;
  return result;
}

TeaUI::ErrorModel __swiftcall ErrorModel.init(title:)(Swift::String title)
{
  *v1 = title;
  v1[1]._countAndFlagsBits = 0;
  v1[1]._object = 0;
  result.title.value = title;
  return result;
}

uint64_t static ErrorModel.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_1D8192634() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      v10 = v4 == v7 && v5 == v8;
      if (v10 || (sub_1D8192634() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D8019F40(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1D8019F94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of AlertPresenter.onAccept(block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 8))();
}

{
  return (*(a4 + 16))();
}

uint64_t dispatch thunk of AlertPresenter.onReject(block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 24))();
}

{
  return (*(a4 + 32))();
}

uint64_t dispatch thunk of AlertPresenter.onNeutral(block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 40))();
}

{
  return (*(a4 + 48))();
}

uint64_t SharedImageCache.__allocating_init()()
{
  v0 = swift_allocObject();
  SharedImageCache.init()();
  return v0;
}

uint64_t SharedImageCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ErrorPosition.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D801A3FC()
{
  result = qword_1ECA0F740;
  if (!qword_1ECA0F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0F740);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ErrorPosition(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D801A52C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D801A588(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t CardViewScrollViewCoordinator.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CardViewScrollViewCoordinator.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1D7F18A1C;
}

uint64_t CardViewScrollViewCoordinator.isEnabled.getter()
{
  v1 = OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_isEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CardViewScrollViewCoordinator.isEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_isEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id CardViewScrollViewCoordinator.init(scrollView:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_isEnabled] = 1;
  v1[OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_isTransitioning] = 0;
  *&v1[OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_trackingPollTimer] = 0;
  v4 = OUTLINED_FUNCTION_1_91(OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_scrollLock);
  *&v1[OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_scrollView] = a1;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init, v4);
}

id CardViewScrollViewCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CardViewScrollViewCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall CardViewScrollViewCoordinator.scrollViewDidScroll(_:)(UIScrollView *a1)
{
  while (1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_scrollLock);
    v4 = *(v1 + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_scrollLock + 8);
    v5 = *(v1 + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_scrollLock + 16);
    if (*(v1 + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_scrollLock + 48))
    {
      if (*(v1 + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_scrollLock + 48) != 1)
      {
        break;
      }
    }

    if (![(UIScrollView *)a1 isDragging])
    {
      return;
    }

    [(UIScrollView *)a1 adjustedContentInset];
    if (v6 == v5)
    {

      [(UIScrollView *)a1 setContentOffset:v3, v4];
      return;
    }

    sub_1D7EB1A54(1);
  }

  if (!(*&v5 | *&v4 | *&v3 | *(v1 + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_scrollLock + 40) | *(v1 + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_scrollLock + 32) | *(v1 + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_scrollLock + 24)))
  {
    if ([(UIScrollView *)a1 isTracking])
    {
      [(UIScrollView *)a1 contentOffset];
      v8 = v7;
      [(UIScrollView *)a1 adjustedContentInset];
      if (v8 <= -v9)
      {
        sub_1D7EB1A54(1);

        sub_1D801ABC4();
      }
    }
  }
}

void sub_1D801ABC4()
{
  v1 = OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_trackingPollTimer;
  if (!*(v0 + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_trackingPollTimer))
  {
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7[4] = sub_1D801B3D8;
    v7[5] = v3;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1D7F845F8;
    v7[3] = &block_descriptor_41;
    v4 = _Block_copy(v7);

    v5 = [v2 scheduledTimerWithTimeInterval:1 repeats:v4 block:0.1];
    _Block_release(v4);
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
  }
}

uint64_t sub_1D801AD4C()
{
  v1 = OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_isEnabled;
  result = swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    if (*(v0 + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_scrollLock + 48))
    {
      v3 = *(v0 + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_scrollLock + 48) == 1;
    }

    else
    {
      v3 = 0;
    }

    if (v3)
    {
      LOBYTE(v4[0]) = 1;
      result = sub_1D801B24C(v4);
      if (result)
      {
        memset(v4, 0, sizeof(v4));
        v5 = 2;
        return sub_1D7EB1744(v4);
      }
    }
  }

  return result;
}

Swift::Void __swiftcall CardViewScrollViewCoordinator.cardViewAnimationDidTransitionTo(interactiveState:)(TeaUI::CardViewInteractiveState interactiveState)
{
  v2 = *interactiveState;
  v3 = v2 >= 2;
  v4 = v2 - 2;
  if (v3)
  {
    if (v4 >= 2)
    {
      *(v1 + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_isTransitioning) = 0;
    }

    else
    {
      *(v1 + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_isTransitioning) = 1;
      OUTLINED_FUNCTION_0_121();
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_isTransitioning) = 1;
    sub_1D801AE94();
  }
}

void sub_1D801AE94()
{
  v1 = OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_isEnabled;
  swift_beginAccess();
  if (*(v0 + v1) == 1 && *(v0 + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_scrollLock + 48) < 2u)
  {
    LOBYTE(v3[0]) = 1;
    if (sub_1D801B24C(v3))
    {
      memset(v3, 0, sizeof(v3));
      v4 = 2;
      sub_1D7EB1744(v3);
      v2 = *(v0 + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_scrollView);
      [v2 contentOffset];
      [v2 setContentOffset:0 animated:?];
    }
  }
}

Swift::Void __swiftcall CardViewScrollViewCoordinator.cardViewAnimationWillTransitionTo(presentationState:)(TeaUI::CardViewPresentationState presentationState)
{
  if (*presentationState > 1u)
  {
    OUTLINED_FUNCTION_0_121();
  }

  else
  {
    sub_1D801AF74();
  }
}

uint64_t sub_1D801AF74()
{
  v1 = OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_isEnabled;
  result = swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    if (*(v0 + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_scrollLock + 48))
    {
      v3 = *(v0 + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_scrollLock + 48) == 1;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      v4 = sub_1D801B1AC(0);
      v6 = v5;
      [*(v0 + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_scrollView) adjustedContentInset];
      *v11 = v4;
      v11[1] = v6;
      v11[2] = v7;
      v11[3] = v8;
      v11[4] = v9;
      v11[5] = v10;
      v12 = 1;
      return sub_1D7EB1744(v11);
    }
  }

  return result;
}

Swift::Void __swiftcall CardViewScrollViewCoordinator.cardViewAnimationDidTransitionTo(presentationState:)(TeaUI::CardViewPresentationState presentationState)
{
  if (((1 << *presentationState) & 0x53) != 0)
  {
    sub_1D801AE94();
  }

  else
  {
    OUTLINED_FUNCTION_0_121();
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CardViewScrollViewCoordinator.ScrollLock(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 49))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CardViewScrollViewCoordinator.ScrollLock(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D801B15C(uint64_t a1)
{
  if (*(a1 + 48) <= 1u)
  {
    return *(a1 + 48);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1D801B174(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

double sub_1D801B1AC(char a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_scrollView;
  [*(v1 + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_scrollView) contentOffset];
  v5 = v4;
  [*(v1 + v3) adjustedContentInset];
  v7 = -v6;
  [*(v1 + v3) contentOffset];
  v9 = v8;
  if (v5 < v7 || (a1 & 1) != 0)
  {
    [*(v1 + v3) adjustedContentInset];
  }

  return v9;
}

uint64_t sub_1D801B24C(char *a1)
{
  v2 = *a1;
  v3 = v1 + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v8 = v2;
    v6 = (*(v4 + 24))(v1, &v8, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

void sub_1D801B2F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_scrollView;
    if (![*(Strong + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_scrollView) isTracking] || v1[OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_isTransitioning] == 1)
    {
      v3 = OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_trackingPollTimer;
      v4 = *&v1[OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_trackingPollTimer];
      if (v4)
      {
        [v4 invalidate];
        v5 = *&v1[v3];
      }

      else
      {
        v5 = 0;
      }

      *&v1[v3] = 0;
    }

    if (([*&v1[v2] isTracking] & 1) == 0 && (v1[OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_isTransitioning] & 1) == 0)
    {
      sub_1D801AE94();
    }
  }
}

__n128 MotionData.attitude.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
  result = *(v1 + 48);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1D801B420(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1D801B51C([a1 attitude], v22);
  v21[0] = v22[0];
  v21[1] = v22[1];
  v21[2] = v22[2];
  [a1 rotationRate];
  *&v19 = v6;
  *(&v19 + 1) = v7;
  v20 = v8;
  [a1 gravity];
  v18[0] = v9;
  v18[1] = v10;
  v18[2] = v11;
  [a1 userAcceleration];
  v17[0] = v12;
  v17[1] = v13;
  v17[2] = v14;
  swift_allocObject();
  v15 = sub_1D801B664(v21, &v19, v18, v17, a2, a3);

  return v15;
}

void sub_1D801B51C(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 roll];
  v74 = v4;
  [a1 pitch];
  v67 = v5;
  v6 = [a1 yaw];
  v8 = v7;
  v16 = OUTLINED_FUNCTION_3_76(v6, v9, v10, v11, v12, v13, v14, v15, v61, v67, v74, v81);
  v17 = v82;
  v25 = OUTLINED_FUNCTION_3_76(v16, v18, v19, v20, v21, v22, v23, v24, v62, v68, v75, SLOBYTE(v82));
  v33 = OUTLINED_FUNCTION_3_76(v25, v26, v27, v28, v29, v30, v31, v32, v63, v69, v76, v83);
  v41 = OUTLINED_FUNCTION_3_76(v33, v34, v35, v36, v37, v38, v39, v40, v64, v70, v77, v84);
  v49 = OUTLINED_FUNCTION_3_76(v41, v42, v43, v44, v45, v46, v47, v48, v65, v71, v78, v85);
  OUTLINED_FUNCTION_3_76(v49, v50, v51, v52, v53, v54, v55, v56, v66, v72, v79, v86);
  v57 = sqrt(v17 * v17 + v87 * v87);

  if (v57 >= 0.000001)
  {
    v58 = atan2(v90, v91);
    v59 = atan2(-v88, v57);
    v60 = atan2(v87, v17);
  }

  else
  {
    v58 = -atan2(-v87, v89);
    v59 = -atan2(-v88, v57);
    v60 = 0.0;
  }

  *a2 = v80;
  *(a2 + 8) = v73;
  *(a2 + 16) = v8;
  *(a2 + 24) = v59;
  *(a2 + 32) = v58;
  *(a2 + 40) = v60;
}

uint64_t sub_1D801B664(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *(a2 + 2);
  v10 = *(a3 + 16);
  v11 = *(a4 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v8;
  *(v6 + 40) = v7;
  v12 = *(a1 + 32);
  v13 = *a2;
  *(v6 + 48) = v12;
  *(v6 + 64) = v13;
  *(v6 + 80) = v9;
  *(v6 + 88) = *a3;
  *(v6 + 104) = v10;
  *(v6 + 112) = *a4;
  *(v6 + 128) = v11;
  *(v6 + 136) = a5;
  *(v6 + 144) = a6;
  switch(a6)
  {
    case 2:
      v14 = -57.2957795;
      goto LABEL_5;
    case 3:
      *(v6 + 152) = 57.2957795 * *&v12;
      v15 = -57.2957795;
      goto LABEL_7;
    case 4:
      *(v6 + 152) = -57.2957795 * *&v12;
      v15 = 57.2957795;
LABEL_7:
      v16 = v7 * v15;
      break;
    default:
      v14 = 57.2957795;
LABEL_5:
      *(v6 + 152) = v7 * v14;
      v16 = v14 * *&v12;
      break;
  }

  *(v6 + 160) = v16;
  sub_1D801BE8C();
  swift_allocObject();
  *(v6 + 168) = sub_1D818F6B4();
  swift_allocObject();
  *(v6 + 176) = sub_1D818F6B4();
  return v6;
}

uint64_t sub_1D801B800()
{
  result = sub_1D801B820();
  qword_1EDBB1D20 = result;
  return result;
}

uint64_t sub_1D801B820()
{
  if (qword_1ECA0C2C0 != -1)
  {
    swift_once();
  }

  v5[0] = xmmword_1ECA0F780;
  v5[1] = *algn_1ECA0F790;
  v5[2] = xmmword_1ECA0F7A0;
  if (qword_1ECA0C2C8 != -1)
  {
    swift_once();
  }

  v3 = xmmword_1ECA0F7B0;
  v4 = qword_1ECA0F7C0;
  if (qword_1ECA0C2D0 != -1)
  {
    swift_once();
  }

  v2[0] = qword_1ECA0F7C8;
  v2[1] = unk_1ECA0F7D0;
  v2[2] = qword_1ECA0F7D8;
  v1[0] = qword_1ECA0F7C8;
  v1[1] = unk_1ECA0F7D0;
  v1[2] = qword_1ECA0F7D8;
  type metadata accessor for MotionData();
  swift_allocObject();
  return sub_1D801B664(v5, &v3, v2, v1, 0, 1);
}

uint64_t static MotionData.fixed.getter()
{
  if (qword_1EDBB1D18 != -1)
  {
    swift_once();
  }
}

BOOL static MotionData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v14[0] = *(a1 + 16);
  v14[1] = v4;
  v14[2] = *(a1 + 48);
  v5 = *(a2 + 32);
  v13[0] = *(a2 + 16);
  v13[1] = v5;
  v13[2] = *(a2 + 48);
  if (static Attitude.== infix(_:_:)(v14, v13) && (*(a1 + 64) == *(a2 + 64) ? (v6 = *(a1 + 72) == *(a2 + 72)) : (v6 = 0), v6 ? (v7 = *(a1 + 80) == *(a2 + 80)) : (v7 = 0), v7 && (*(a1 + 88) == *(a2 + 88) ? (v8 = *(a1 + 96) == *(a2 + 96)) : (v8 = 0), v8 ? (v9 = *(a1 + 104) == *(a2 + 104)) : (v9 = 0), v9 && (*(a1 + 112) == *(a2 + 112) ? (v10 = *(a1 + 120) == *(a2 + 120)) : (v10 = 0), v10 ? (v11 = *(a1 + 128) == *(a2 + 128)) : (v11 = 0), v11 && *(a1 + 136) == *(a2 + 136)))))
  {
    return *(a1 + 144) == *(a2 + 144);
  }

  else
  {
    return 0;
  }
}

BOOL static Attitude.== infix(_:_:)(float64x2_t *a1, float64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) != 0 && a1[2].f64[0] == a2[2].f64[0])
  {
    return a1[2].f64[1] == a2[2].f64[1];
  }

  return result;
}

uint64_t MotionData.deinit()
{

  return v0;
}

uint64_t MotionData.__deallocating_deinit()
{
  MotionData.deinit();

  return swift_deallocClassInstance();
}

double sub_1D801BC64()
{
  xmmword_1ECA0F780 = xmmword_1D81AF0E0;
  *algn_1ECA0F790 = xmmword_1D81AF0F0;
  result = 0.698131701;
  xmmword_1ECA0F7A0 = xmmword_1D81AF100;
  return result;
}

double static Attitude.fixed.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1ECA0C2C0 != -1)
  {
    swift_once();
  }

  v2 = *algn_1ECA0F790;
  *a1 = xmmword_1ECA0F780;
  a1[1] = v2;
  result = *&xmmword_1ECA0F7A0;
  a1[2] = xmmword_1ECA0F7A0;
  return result;
}

void sub_1D801BD48()
{
  qword_1ECA0F7C8 = 0;
  unk_1ECA0F7D0 = 0;
  qword_1ECA0F7D8 = 0;
}

double sub_1D801BD7C@<D0>(void *a1@<X0>, double *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  result = *a2;
  *a4 = *a3;
  *(a4 + 16) = result;
  return result;
}

uint64_t sub_1D801BE10(uint64_t a1, int a2)
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

uint64_t sub_1D801BE30(uint64_t result, int a2, int a3)
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

void sub_1D801BE8C()
{
  if (!qword_1EDBBC460)
  {
    sub_1D801BEE8();
    v0 = sub_1D818F6D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBBC460);
    }
  }
}

unint64_t sub_1D801BEE8()
{
  result = qword_1EDBB3498;
  if (!qword_1EDBB3498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB3498);
  }

  return result;
}

uint64_t EmptyStateModel.title.getter()
{
  v1 = *v0;
  sub_1D8190DB4();
  return v1;
}

uint64_t EmptyStateModel.description.getter()
{
  v1 = *(v0 + 16);
  sub_1D8190DB4();
  return v1;
}

void *EmptyStateModel.image.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void __swiftcall EmptyStateModel.init(description:)(TeaUI::EmptyStateModel *__return_ptr retstr, Swift::String description)
{
  retstr->title.value._countAndFlagsBits = 0;
  retstr->title.value._object = 0;
  retstr->description.value = description;
  retstr->image.value.super.isa = 0;
}

void __swiftcall EmptyStateModel.init(title:)(TeaUI::EmptyStateModel *__return_ptr retstr, Swift::String title)
{
  retstr->title.value = title;
  retstr->description.value._object = 0;
  retstr->image.value.super.isa = 0;
  retstr->description.value._countAndFlagsBits = 0;
}

uint64_t static EmptyStateModel.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    v11 = *a1 == *a2 && v3 == v7;
    if (!v11 && (sub_1D8192634() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    v12 = v4 == v8 && v5 == v9;
    if (!v12 && (sub_1D8192634() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (v10)
    {
      sub_1D7E471D0();
      v13 = v10;
      v14 = v6;
      v15 = sub_1D8191CC4();

      if (v15)
      {
        return 1;
      }
    }
  }

  else if (!v10)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D801C100(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1D801C154(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t ActivityEligibilityOption.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

_BYTE *storeEnumTagSinglePayload for ActivityEligibilityOption(_BYTE *result, unsigned int a2, unsigned int a3)
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

BOOL sub_1D801C320()
{
  v1 = OBJC_IVAR____TtC5TeaUI19MotionContainerView_motionTransforms;
  OUTLINED_FUNCTION_10();
  return *(*(v0 + v1) + 16) != 0;
}

id sub_1D801C364(void *a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_4_53();
  v4 = a1;
  sub_1D7EE43D4();
  OUTLINED_FUNCTION_7_39();
  OUTLINED_FUNCTION_2_83();
  return [v2 addSubview_];
}

void sub_1D801C3E0(void *a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_4_53();
  v4 = a1;
  sub_1D7EE43D4();
  OUTLINED_FUNCTION_7_39();
  OUTLINED_FUNCTION_2_83();
  v5 = [v2 layer];
  [v5 addSublayer_];
}

void sub_1D801C478(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = OBJC_IVAR____TtC5TeaUI19MotionContainerView_motionTransforms;
  OUTLINED_FUNCTION_4_53();
  v10 = a1;
  sub_1D7EE43D4();
  v11 = *(*&v5[v9] + 16);
  sub_1D7EE4600();
  v12 = *&v5[v9];
  *(v12 + 16) = v11 + 1;
  v13 = v12 + 16 * v11;
  *(v13 + 32) = v10;
  *(v13 + 40) = a4;
  swift_endAccess();
  v14 = [v5 layer];
  [v14 insertSublayer:v10 atIndex:a2];
}

uint64_t sub_1D801C548(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI19MotionContainerView_motionTransforms;
  result = OUTLINED_FUNCTION_10();
  v5 = *(v1 + v3);
  v6 = *(v5 + 16);
  if (v6)
  {
    sub_1D8190DB4();
    v7 = (v5 + 40);
    do
    {
      v8 = *v7;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 104);
      swift_unknownObjectRetain();
      v10(a1, ObjectType, v8);
      swift_unknownObjectRelease();
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_1D801C60C()
{
  v1 = OBJC_IVAR____TtC5TeaUI19MotionContainerView_isMotionEnabled;
  OUTLINED_FUNCTION_10();
  return *(v0 + v1);
}

uint64_t sub_1D801C644(char a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI19MotionContainerView_isMotionEnabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_1D801C970();
}

uint64_t (*sub_1D801C698(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D801C6FC;
}

uint64_t sub_1D801C6FC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1D801C970();
  }

  return result;
}

uint64_t sub_1D801C730()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for MotionContainerView();
  objc_msgSendSuper2(&v21, sel_layoutSubviews);
  v1 = [v0 subviews];
  sub_1D7E0A1A8(0, &qword_1EDBB2FC0);
  v2 = sub_1D8191314();

  result = sub_1D7E36AB8(v2);
  if (result)
  {
    v4 = result;
    if (result < 1)
    {
      __break(1u);
      goto LABEL_23;
    }

    for (i = 0; i != v4; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA714420](i, v2);
      }

      else
      {
        v6 = *(v2 + 8 * i + 32);
      }

      v7 = v6;
      [v6 frame];
      OUTLINED_FUNCTION_1_93();
      if (!OUTLINED_FUNCTION_0_124(v8, v9, v10, v11))
      {
        [v0 bounds];
        [v7 setFrame_];
      }
    }
  }

  result = sub_1D801CC80([v0 layer]);
  if (!result)
  {
    return result;
  }

  v12 = result;
  result = sub_1D7E36AB8(result);
  if (result)
  {
    v13 = result;
    if (result >= 1)
    {
      for (j = 0; j != v13; ++j)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1DA714420](j, v12);
        }

        else
        {
          v15 = *(v12 + 8 * j + 32);
        }

        v16 = v15;
        [v15 frame];
        OUTLINED_FUNCTION_1_93();
        if (!OUTLINED_FUNCTION_0_124(v17, v18, v19, v20))
        {
          [v0 bounds];
          [v16 setFrame_];
        }
      }
    }

LABEL_23:
    __break(1u);
    return result;
  }
}

uint64_t sub_1D801C970()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5TeaUI19MotionContainerView_motionTransforms;
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = OBJC_IVAR____TtC5TeaUI19MotionContainerView_isMotionEnabled;
    sub_1D8190DB4();
    swift_beginAccess();
    v7 = (v4 + 40);
    do
    {
      v8 = *v7;
      ObjectType = swift_getObjectType();
      v10 = *(v1 + v6);
      v11 = *(v8 + 64);
      swift_unknownObjectRetain();
      v11(v10, ObjectType, v8);
      swift_unknownObjectRelease();
      v7 += 2;
      --v5;
    }

    while (v5);
  }

  return result;
}

id MotionContainerView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

id MotionContainerView.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  *(v0 + OBJC_IVAR____TtC5TeaUI19MotionContainerView_motionTransforms) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC5TeaUI19MotionContainerView_isMotionEnabled) = 1;
  v5 = type metadata accessor for MotionContainerView();
  v1 = OUTLINED_FUNCTION_80();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id MotionContainerView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id MotionContainerView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC5TeaUI19MotionContainerView_motionTransforms] = MEMORY[0x1E69E7CC0];
  v1[OBJC_IVAR____TtC5TeaUI19MotionContainerView_isMotionEnabled] = 1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MotionContainerView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id MotionContainerView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MotionContainerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D801CC80(void *a1)
{
  v2 = [a1 sublayers];

  if (!v2)
  {
    return 0;
  }

  sub_1D7E0A1A8(0, &qword_1EDBB2FB0);
  v3 = sub_1D8191314();

  return v3;
}

void *RightArrow.arrowColor.getter()
{
  v1 = OBJC_IVAR____TtC5TeaUI10RightArrow_arrowColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void RightArrow.arrowColor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI10RightArrow_arrowColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id RightArrow.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

id RightArrow.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC5TeaUI10RightArrow_arrowColor) = 0;
  v7 = ObjectType;
  v2 = OUTLINED_FUNCTION_80();
  v5 = objc_msgSendSuper2(v3, v4, v2, v0, v7);
  [v5 setOpaque_];
  return v5;
}

id RightArrow.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void RightArrow.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC5TeaUI10RightArrow_arrowColor) = 0;
  sub_1D81923A4();
  __break(1u);
}

Swift::Void __swiftcall RightArrow.draw(_:)(__C::CGRect a1)
{
  OUTLINED_FUNCTION_155();
  v2 = sub_1D818ED04();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = UIGraphicsGetCurrentContext();
  if (v6)
  {
    v7 = v6;
    v19.origin.x = OUTLINED_FUNCTION_80();
    CGContextClearRect(v8, v19);
    v9 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
    v20.origin.x = OUTLINED_FUNCTION_80();
    MinX = CGRectGetMinX(v20);
    v21.origin.x = OUTLINED_FUNCTION_80();
    [v9 moveToPoint_];
    v22.origin.x = OUTLINED_FUNCTION_80();
    MaxX = CGRectGetMaxX(v22);
    v23.origin.x = OUTLINED_FUNCTION_80();
    [v9 addLineToPoint_];
    v24.origin.x = OUTLINED_FUNCTION_80();
    v12 = CGRectGetMinX(v24);
    v25.origin.x = OUTLINED_FUNCTION_80();
    [v9 addLineToPoint_];
    v13 = [v9 CGPath];
    CGContextAddPath(v7, v13);

    v14 = OBJC_IVAR____TtC5TeaUI10RightArrow_arrowColor;
    swift_beginAccess();
    v15 = *(v1 + v14);
    if (v15)
    {
      v16 = v15;
      v17 = [v16 CGColor];
      CGContextSetFillColorWithColor(v7, v17);
    }

    CGContextClosePath(v7);
    (*(v3 + 104))(v5, *MEMORY[0x1E695EEB8], v2);
    sub_1D8191974();

    (*(v3 + 8))(v5, v2);
  }
}

id RightArrow.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id BarView.style.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5TeaUI7BarView_style;
  OUTLINED_FUNCTION_10();
  v4 = *(v1 + v3);
  *a1 = v4;
  return sub_1D7E428CC(v4);
}

id sub_1D801D538@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5TeaUI7BarView_style;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;
  return sub_1D7E428CC(v5);
}

void sub_1D801D594(id *a1)
{
  v1 = *a1;
  sub_1D7E428CC(v1);
  BarView.style.setter(&v1);
}

void (*BarView.style.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D801D634;
}

void sub_1D801D634(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1D7E42A4C();
  }
}

uint64_t BarView.separator.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5TeaUI7BarView_separator;
  result = OUTLINED_FUNCTION_10();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1D801D6B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5TeaUI7BarView_separator;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void (*BarView.separator.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC5TeaUI7BarView_separator;
  swift_beginAccess();
  *(v3 + 32) = *(v1 + v4);
  return sub_1D801D7C0;
}

void sub_1D801D7C0(uint64_t a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(*a1 + 32);
    v3 = &v4;
  }

  else
  {
    v5 = *(*a1 + 32);
    v3 = &v5;
  }

  BarView.separator.setter(v3);

  free(v2);
}

id BarView.__allocating_init(effect:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithEffect_];

  return v3;
}

void sub_1D801D868()
{
  *(v0 + OBJC_IVAR____TtC5TeaUI7BarView_style) = 2;
  *(v0 + OBJC_IVAR____TtC5TeaUI7BarView_separator) = 0;
  v1 = OBJC_IVAR____TtC5TeaUI7BarView_tintView;
  *(v0 + v1) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DD250]), sel_initWithFrame_);
  v2 = OBJC_IVAR____TtC5TeaUI7BarView_separatorView;
  *(v0 + v2) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DD250]), sel_initWithFrame_);
  sub_1D81923A4();
  __break(1u);
}

id BarView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D801D9D8()
{
  v1 = *(v0 + 264);
  CACurrentMediaTime();
  OUTLINED_FUNCTION_119_2();
  v22 = v2;
  sub_1D81921A4();
  *(v0 + 16) = 0;
  *(v0 + 24) = v22;
  OUTLINED_FUNCTION_42_7();
  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_142_0();

  OUTLINED_FUNCTION_111_2();
  *(v0 + 56) = v1;
  sub_1D7E0631C(0, &qword_1EDBB2BC0);
  v3 = OUTLINED_FUNCTION_141_1();
  OUTLINED_FUNCTION_56_5(v3, *(v0 + 16));

  v4 = sub_1D818FD94();
  sub_1D818FDD4();
  sub_1D8191B24();
  if (sub_1D8191E34())
  {
    v5 = *(v0 + 216);
    if ((*(v0 + 274) & 1) == 0)
    {
      if (v5)
      {
LABEL_8:

        sub_1D818FE04();

        v7 = OUTLINED_FUNCTION_55_0();
        if (v8(v7) != *MEMORY[0x1E69E93E8])
        {
          (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
        }

        v9 = OUTLINED_FUNCTION_8_26();
        OUTLINED_FUNCTION_138_2(v9);
        OUTLINED_FUNCTION_47_7();
        _os_signpost_emit_with_name_impl(v10, v11, v12, v13, v14, v15, v16, 2u);
        OUTLINED_FUNCTION_77_0();
        goto LABEL_11;
      }

      __break(1u);
    }

    if (HIDWORD(v5))
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_87_1();
      if (v6)
      {
LABEL_16:
        __break(1u);
        return;
      }

      if (v5 >> 16 <= 0x10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_11:
  v17 = *(v0 + 232);
  v18 = v4;
  v19 = *(v0 + 176);
  v20 = *(v0 + 160);

  v17(v19, v20);
  swift_willThrow();

  OUTLINED_FUNCTION_10_6();

  v21();
}

uint64_t sub_1D801DC88(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 112) = a5;
  *(v6 + 120) = v5;
  *(v6 + 297) = a3;
  *(v6 + 296) = a2;
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
  sub_1D8191534();
  *(v6 + 208) = sub_1D8191524();
  v10 = sub_1D81914D4();
  *(v6 + 216) = v10;
  *(v6 + 224) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D801DE14, v10, v9);
}

void sub_1D801DE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_137_2();
  OUTLINED_FUNCTION_64_6();
  *(v10 + 232) = OBJC_IVAR____TtC5TeaUI25BlueprintPipelineRecorder_signposter;
  v12 = sub_1D7E55B54(*(v10 + 296));
  v14 = v13;
  *(v10 + 240) = v12;
  *(v10 + 298) = v13;
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
  *(v10 + 248) = OUTLINED_FUNCTION_135_2();
  *(v10 + 256) = *(v11 + 8);
  *(v10 + 264) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v23 = OUTLINED_FUNCTION_87_0();
  v24(v23);
  CACurrentMediaTime();
  OUTLINED_FUNCTION_62();
  *(v10 + 272) = sub_1D7E55D2C(v25, v26, v27, v28);
  OUTLINED_FUNCTION_39_9();
  v40 = v29;
  swift_task_alloc();
  OUTLINED_FUNCTION_35_2();
  *(v10 + 280) = v30;
  *v30 = v31;
  OUTLINED_FUNCTION_104_2(v30);
  OUTLINED_FUNCTION_134_2();

  v33(v32, v33, v34, v35, v36, v37, v38, v39, v40, a10);
}

uint64_t sub_1D801E008()
{
  OUTLINED_FUNCTION_9_14();
  v2 = *v1;
  OUTLINED_FUNCTION_21_17();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 288) = v0;

  v5 = *(v2 + 224);
  v6 = *(v2 + 216);
  if (v0)
  {
    v7 = sub_1D801E3E8;
  }

  else
  {
    v7 = sub_1D801E138;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

void sub_1D801E138()
{
  v1 = *(v0 + 120);
  CACurrentMediaTime();
  OUTLINED_FUNCTION_119_2();
  v21 = v2;
  sub_1D81921A4();
  *(v0 + 32) = 0;
  *(v0 + 40) = v21;
  OUTLINED_FUNCTION_42_7();
  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_142_0();

  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_118_2();
  v3 = OUTLINED_FUNCTION_141_1();
  OUTLINED_FUNCTION_56_5(v3, *(v0 + 32));

  sub_1D818FD94();
  OUTLINED_FUNCTION_115_2();
  sub_1D8191B24();
  if (sub_1D8191E34())
  {
    v4 = *(v0 + 240);
    if (*(v0 + 298))
    {
      if (!HIDWORD(v4))
      {
        OUTLINED_FUNCTION_87_1();
        if (v5)
        {
LABEL_19:
          __break(1u);
          return;
        }

        if (v4 >> 16 <= 0x10)
        {

LABEL_10:

          sub_1D818FE04();

          v6 = OUTLINED_FUNCTION_55_0();
          if (v7(v6) != *MEMORY[0x1E69E93E8])
          {
            (*(*(v0 + 136) + 8))(*(v0 + 152), *(v0 + 128));
          }

          v8 = OUTLINED_FUNCTION_8_26();
          OUTLINED_FUNCTION_138_2(v8);
          OUTLINED_FUNCTION_47_7();
          _os_signpost_emit_with_name_impl(v9, v10, v11, v12, v13, v14, v15, 2u);
          OUTLINED_FUNCTION_77_0();

          goto LABEL_13;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {

      if (v4)
      {
        goto LABEL_10;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v16 = *(v0 + 256);
  v17 = *(v0 + 184);
  v18 = *(v0 + 160);
  v19 = *(v0 + 96);

  v16(v17, v18);
  *v19 = *(v0 + 48);

  OUTLINED_FUNCTION_5_37();

  v20();
}

void sub_1D801E3E8()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 120);
  CACurrentMediaTime();
  OUTLINED_FUNCTION_119_2();
  v18 = v3;
  sub_1D81921A4();
  *(v0 + 16) = 0;
  *(v0 + 24) = v18;
  OUTLINED_FUNCTION_42_7();
  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_142_0();

  OUTLINED_FUNCTION_111_2();
  *(v0 + 56) = v1;
  sub_1D7E0631C(0, &qword_1EDBB2BC0);
  v4 = OUTLINED_FUNCTION_141_1();
  OUTLINED_FUNCTION_56_5(v4, *(v0 + 16));

  sub_1D818FD94();
  OUTLINED_FUNCTION_115_2();
  sub_1D8191B24();
  if (sub_1D8191E34())
  {
    v5 = *(v0 + 240);
    if (*(v0 + 298))
    {
      if (!HIDWORD(v5))
      {
        OUTLINED_FUNCTION_87_1();
        if (v6)
        {
LABEL_19:
          __break(1u);
          return;
        }

        if (v5 >> 16 <= 0x10)
        {

LABEL_10:

          sub_1D818FE04();

          v7 = OUTLINED_FUNCTION_55_0();
          if (v8(v7) != *MEMORY[0x1E69E93E8])
          {
            (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
          }

          v9 = OUTLINED_FUNCTION_8_26();
          OUTLINED_FUNCTION_138_2(v9);
          OUTLINED_FUNCTION_47_7();
          _os_signpost_emit_with_name_impl(v10, v11, v12, v13, v14, v15, v16, 2u);
          OUTLINED_FUNCTION_77_0();
          goto LABEL_13;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {

      if (v5)
      {
        goto LABEL_10;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:

  (*(v0 + 256))(*(v0 + 176), *(v0 + 160));
  swift_willThrow();

  OUTLINED_FUNCTION_10_6();

  v17();
}

void (*BlueprintPipeline.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1D7F032D0;
}

uint64_t BlueprintPipeline.__allocating_init(blueprintProvider:integrator:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  BlueprintPipeline.init(blueprintProvider:integrator:name:)(a1, a2, a3, a4);
  return v8;
}

Swift::Void __swiftcall BlueprintPipeline.cancel()()
{
  if (qword_1EDBB9408 != -1)
  {
LABEL_18:
    swift_once();
  }

  sub_1D7E1A4D0();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D81A1B70;
  v2 = *v0;
  v3 = (v0 + *(*v0 + 144));
  v5 = *v3;
  v4 = v3[1];
  *(v1 + 56) = MEMORY[0x1E69E6158];
  v27 = sub_1D7E13BF4();
  *(v1 + 64) = v27;
  *(v1 + 32) = v5;
  *(v1 + 40) = v4;
  v28 = *(v0 + *(v2 + 136));
  v6 = *(v28 + 16);
  sub_1D8190DB4();
  v7 = [v6 operations];
  sub_1D7E52894();
  OUTLINED_FUNCTION_25();
  v8 = sub_1D8191314();

  v9 = sub_1D7E36AB8(v8);
  v10 = 0;
  v29 = MEMORY[0x1E69E7CC0];
  while (v9 != v10)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v18 = OUTLINED_FUNCTION_102_1();
      v11 = MEMORY[0x1DA714420](v18);
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    v0 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v13 = sub_1D7E64574(v11);
    v15 = v14;

    ++v10;
    if (v15)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D7E2D320();
        v29 = v19;
      }

      v16 = *(v29 + 16);
      if (v16 >= *(v29 + 24) >> 1)
      {
        sub_1D7E2D320();
        v29 = v20;
      }

      *(v29 + 16) = v16 + 1;
      v17 = v29 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v15;
      v10 = v0;
    }
  }

  v21 = MEMORY[0x1E69E6158];
  v22 = MEMORY[0x1DA713540](v29, MEMORY[0x1E69E6158]);
  v24 = v23;

  *(v1 + 96) = v21;
  *(v1 + 104) = v27;
  *(v1 + 72) = v22;
  *(v1 + 80) = v24;
  v25 = [*(v28 + 24) operationCount];
  v26 = MEMORY[0x1E69E65A8];
  *(v1 + 136) = MEMORY[0x1E69E6530];
  *(v1 + 144) = v26;
  *(v1 + 112) = v25;
  sub_1D81919E4();
  sub_1D818FD44();

  sub_1D810D398();
}

uint64_t BlueprintPipeline.modify<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_55();
}

uint64_t sub_1D801EB28()
{
  OUTLINED_FUNCTION_9_14();
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_35_2();
  *(v0 + 64) = v4;
  *v4 = v5;
  v4[1] = sub_1D801EC28;
  OUTLINED_FUNCTION_62();

  return MEMORY[0x1EEE6DE38](v6, v7, v8, v9, v10, v11, v3, v12);
}

uint64_t sub_1D801EC28()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  v3 = v2;
  OUTLINED_FUNCTION_21_17();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v6 = v5;
  *(v3 + 72) = v0;

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

uint64_t sub_1D801ED44()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_10_6();

  return v0();
}

uint64_t sub_1D801EDA0(uint64_t a1)
{
  sub_1D8022C9C();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v6);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  BlueprintPipeline.modify<A>(with:completion:)();
}

uint64_t BlueprintPipeline.relayout()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_55();
}

uint64_t sub_1D801EF10()
{
  OUTLINED_FUNCTION_6();
  swift_task_alloc();
  OUTLINED_FUNCTION_35_2();
  *(v0 + 32) = v1;
  *v1 = v2;
  v1[1] = sub_1D801EFD8;
  OUTLINED_FUNCTION_62();

  return MEMORY[0x1EEE6DE38](v3, v4, v5, v6, 0xEA00000000002928, v7, v8, v9);
}

uint64_t sub_1D801EFD8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_93();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v5 = v4;
  *(v6 + 40) = v0;

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

uint64_t sub_1D801F110(uint64_t a1)
{
  sub_1D8022C9C();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v6);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  BlueprintPipeline.relayout(completion:)();
}

uint64_t sub_1D801F24C(void **a1)
{
  v1 = *a1;
  if (v1 > 1)
  {
    v3 = v1;
    sub_1D8022C9C();
    return sub_1D81914E4();
  }

  else
  {
    sub_1D8022C9C();
    return sub_1D81914F4();
  }
}

uint64_t BlueprintPipeline.relayout(completion:)()
{
  OUTLINED_FUNCTION_66_0();
  type metadata accessor for BlueprintBookmark();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  BlueprintPipeline.relayout(bookmark:completion:)();
  return sub_1D7E2BBA0(v2);
}

void BlueprintPipeline.relayout(bookmark:completion:)()
{
  OUTLINED_FUNCTION_120();
  v29 = v1;
  v30 = v2;
  v28 = v3;
  v4 = *v0;
  v5 = type metadata accessor for BlueprintBookmark();
  v6 = OUTLINED_FUNCTION_15_15(v5);
  v27 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1D7E513EC(v32);
  memcpy(v31, v32, 0x235uLL);
  OUTLINED_FUNCTION_12();
  v11 = *(*(v0 + *(v10 + 136)) + 24);
  sub_1D7F50B68();
  v13 = v12;
  OUTLINED_FUNCTION_12();
  type metadata accessor for BlueprintPipelineRecorder();
  OUTLINED_FUNCTION_8_5();
  sub_1D8190DB4();
  v14 = OUTLINED_FUNCTION_102_1();
  v17 = sub_1D7E5159C(v14, v15, v16, 0xE800000000000000);
  type metadata accessor for BlueprintPipelineRunOptions();
  swift_allocObject();
  v26 = sub_1D7E517F4(v31, v11, v13, v17);
  v18 = v4[10];
  v19 = v4[11];
  v20 = v4[12];
  v21 = v4[13];
  v31[0] = v18;
  v31[1] = v19;
  v31[2] = v20;
  v31[3] = v21;
  type metadata accessor for BlueprintPipelineRunner();
  v22 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7E2B108(v28, v22);
  v23 = (*(v27 + 80) + 48) & ~*(v27 + 80);
  v24 = swift_allocObject();
  v24[2] = v18;
  v24[3] = v19;
  v24[4] = v20;
  v24[5] = v21;
  sub_1D7E85994(v22, v24 + v23);
  v25 = sub_1D7E51F48(&unk_1D81AF498, v24);
  sub_1D7E51F88(v25, v26, v29, v30);

  OUTLINED_FUNCTION_100();
}

uint64_t BlueprintPipeline.deinit()
{
  sub_1D7E166A0(v0 + 16);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_48_0();
  (*(v1 + 8))(v0 + v2);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_48_0();
  (*(v3 + 8))(v0 + v4);
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_12();

  return v0;
}

uint64_t BlueprintPipeline.__deallocating_deinit()
{
  BlueprintPipeline.deinit();

  return swift_deallocClassInstance();
}

uint64_t BlueprintPipeline.relayoutPromise()(uint64_t a1)
{
  OUTLINED_FUNCTION_59_4(a1, &qword_1EDBBC3F8, &type metadata for BlueprintPipelinePromiseResult);
  OUTLINED_FUNCTION_8_5();
  return sub_1D818FBA4();
}

uint64_t sub_1D801F798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;

  BlueprintPipeline.relayout(completion:)();
}

uint64_t sub_1D801F838(uint64_t *a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  if (!v4)
  {
    v8 = 0;
    v5 = &v8;
    return a2(v5);
  }

  if (v4 == 1)
  {
    v7 = 1;
    v5 = &v7;
    return a2(v5);
  }

  return a4();
}

uint64_t sub_1D801F920(uint64_t a1, uint64_t a2)
{
  sub_1D8191524();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1D8022D14();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1D81921A4();
    MEMORY[0x1DA713260](0xD00000000000003FLL, 0x80000001D81CF230);
    v8 = sub_1D8192914();
    MEMORY[0x1DA713260](v8);

    MEMORY[0x1DA713260](46, 0xE100000000000000);
    result = sub_1D81923A4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D801FAAC(uint64_t a1, uint64_t a2)
{
  sub_1D8191524();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1D8022D14();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1D81921A4();
    MEMORY[0x1DA713260](0xD00000000000003FLL, 0x80000001D81CF230);
    v8 = sub_1D8192914();
    MEMORY[0x1DA713260](v8);

    MEMORY[0x1DA713260](46, 0xE100000000000000);
    result = sub_1D81923A4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D801FC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a3;
  v28 = a4;
  sub_1D8022D3C(0, &qword_1EDBB32B8, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_1D81919E4();
  v12._countAndFlagsBits = 0xD000000000000030;
  v12._object = 0x80000001D81CF270;
  BlueprintPipelineRecorder.log(_:type:)(v12, v11);
  [*(*(v5 + *(*v5 + 136)) + 16) setSuspended_];
  type metadata accessor for BlueprintPipelineSyncCoordinator();
  v13 = sub_1D8020974();
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_1D81921A4();
  v14 = (v5 + *(*v5 + 144));
  v15 = *v14;
  v16 = v14[1];
  sub_1D8190DB4();

  v29 = v15;
  v30 = v16;
  MEMORY[0x1DA713260](0xD000000000000023, 0x80000001D81CF2B0);
  v18 = v29;
  v17 = v30;
  sub_1D8191544();
  v19 = sub_1D8191564();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a2;
  v20[5] = a1;
  v20[6] = v5;
  v20[7] = v13;

  sub_1D802140C(v18, v17, v10, &unk_1D81AF5F8, v20);

  sub_1D7F81538(v10);
  v21 = sub_1D81919E4();
  v22._object = 0x80000001D81CF2E0;
  v22._countAndFlagsBits = 0xD000000000000021;
  BlueprintPipelineRecorder.log(_:type:)(v22, v21);
  sub_1D80216A0();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v19);
  v23 = swift_allocObject();
  v23[2] = a2;
  v23[3] = v5;
  v25 = v27;
  v24 = v28;
  v23[4] = v13;
  v23[5] = v25;
  v23[6] = v24;

  sub_1D7E19F24(v25);
  sub_1D8191574();

  return sub_1D7F81538(v10);
}

uint64_t sub_1D801FF6C(uint64_t a1, void *a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v3[9] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1D801FFB8, 0, 0);
}

void sub_1D801FFB8()
{
  v10 = v0[6];
  v11 = v0[8];
  OUTLINED_FUNCTION_55_6();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_55_6();
  v2 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_111();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_111();
  v3 = swift_getAssociatedConformanceWitness();
  v0[2] = AssociatedTypeWitness;
  v0[3] = v2;
  v0[4] = AssociatedConformanceWitness;
  v0[5] = v3;
  OUTLINED_FUNCTION_33_9();
  type metadata accessor for Blueprint();
  type metadata accessor for BlueprintBookmark();
  v4 = *(swift_getTupleTypeMetadata2() + 48);
  OUTLINED_FUNCTION_39_5();
  v5 = OUTLINED_FUNCTION_110();
  BlueprintProviderType.blueprint.getter(v5, v6);
  sub_1D7E2B108(v11, v10 + v4);
  v0[2] = AssociatedTypeWitness;
  v0[3] = v2;
  v0[4] = AssociatedConformanceWitness;
  v0[5] = v3;
  type metadata accessor for BlueprintModifierResult();
  OUTLINED_FUNCTION_25();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_126_1();

  __asm { BRAA            X1, X16 }
}

void BlueprintPipeline.invalidateLayout(animated:completion:)()
{
  OUTLINED_FUNCTION_120();
  v21 = v1;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_12();
  v7 = v6;
  sub_1D7E513EC(__src);
  memcpy(__dst, __src, 0x235uLL);
  OUTLINED_FUNCTION_12();
  v9 = *(*(v0 + *(v8 + 136)) + 24);
  sub_1D7F50B68();
  v11 = v10;
  OUTLINED_FUNCTION_12();
  v13 = (v0 + *(v12 + 144));
  v14 = *v13;
  v15 = v13[1];
  type metadata accessor for BlueprintPipelineRecorder();
  OUTLINED_FUNCTION_8_5();
  sub_1D8190DB4();
  v16 = sub_1D7E5159C(v14, v15, 0xD000000000000010, 0x80000001D81CF150);
  type metadata accessor for BlueprintPipelineRunOptions();
  swift_allocObject();
  v17 = sub_1D7E517F4(__dst, v9, v11, v16);
  v18 = *(v7 + 96);
  __dst[0] = *(v7 + 80);
  __dst[1] = v18;
  type metadata accessor for BlueprintPipelineRunner();
  v19 = swift_allocObject();
  *(v19 + 16) = v5;
  v20 = sub_1D7E51F48(&unk_1D81AF4A8, v19);
  sub_1D7E51F88(v20, v17, v3, v21);

  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D8020300(uint64_t a1, void *a2, char a3)
{
  *(v3 + 72) = a3;
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;
  *(v3 + 64) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1D802034C, 0, 0);
}

void sub_1D802034C()
{
  v11 = *(v0 + 72);
  v10 = *(v0 + 48);
  OUTLINED_FUNCTION_33_9();
  OUTLINED_FUNCTION_64();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_33_9();
  OUTLINED_FUNCTION_64();
  v2 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_55_6();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_87_0();
  v3 = swift_getAssociatedConformanceWitness();
  *(v0 + 16) = AssociatedTypeWitness;
  *(v0 + 24) = v2;
  *(v0 + 32) = AssociatedConformanceWitness;
  *(v0 + 40) = v3;
  type metadata accessor for Blueprint();
  v4 = *(swift_getTupleTypeMetadata2() + 48);
  v5 = OUTLINED_FUNCTION_54_1();
  BlueprintProviderType.blueprint.getter(v5, v6);
  *(v10 + v4) = v11;
  *(v0 + 16) = AssociatedTypeWitness;
  *(v0 + 24) = v2;
  *(v0 + 32) = AssociatedConformanceWitness;
  *(v0 + 40) = v3;
  type metadata accessor for BlueprintModifierResult();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_126_1();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1D80204E0()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_10_6();

  return v0();
}

uint64_t sub_1D8020550()
{
  OUTLINED_FUNCTION_9_14();

  v0 = OUTLINED_FUNCTION_112();
  v1(v0);

  OUTLINED_FUNCTION_10_6();

  return v2();
}

uint64_t sub_1D80205E4()
{
  OUTLINED_FUNCTION_23_0();

  v0 = OUTLINED_FUNCTION_87_0();
  v1(v0);
  v2 = OUTLINED_FUNCTION_112();
  v3(v2);

  OUTLINED_FUNCTION_10_6();

  return v4();
}

uint64_t sub_1D8020698()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_10_6();

  return v0();
}

uint64_t sub_1D80206F4()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_10_6();

  return v0();
}

uint64_t sub_1D8020758()
{
  OUTLINED_FUNCTION_9_14();
  (*(v0[37] + 8))(v0[40], v0[33]);

  OUTLINED_FUNCTION_10_6();

  return v1();
}

uint64_t sub_1D80207F8()
{
  OUTLINED_FUNCTION_9_14();

  v0 = OUTLINED_FUNCTION_112();
  v1(v0);

  OUTLINED_FUNCTION_10_6();

  return v2();
}

id sub_1D8020898(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_5;
  }

  if (static BlueprintPipelineError.isCancelled(error:)(a1) & 1) == 0 || (sub_1D7E3A3F4(2, *(a3 + 592)))
  {

LABEL_5:
    swift_willThrow();
    return a1;
  }

  sub_1D7E51F88(a4, a3, a5, a6);
}

uint64_t sub_1D80209A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedConformanceWitness();
  v7[2] = AssociatedTypeWitness;
  v7[3] = v9;
  v7[4] = AssociatedConformanceWitness;
  v7[5] = v11;
  v12 = type metadata accessor for BlueprintPipelineProcessingResult();
  v7[14] = v12;
  v13 = sub_1D818FA74();
  v7[15] = v13;
  v7[16] = *(v13 - 8);
  v7[17] = swift_task_alloc();
  v7[18] = *(v12 - 8);
  v7[19] = swift_task_alloc();
  v7[6] = AssociatedTypeWitness;
  v7[7] = v9;
  v7[8] = AssociatedConformanceWitness;
  v7[9] = v11;
  v14 = type metadata accessor for BlueprintModifierResult();
  v7[20] = v14;
  v7[21] = *(v14 - 8);
  v7[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8020C10, 0, 0);
}

uint64_t sub_1D8020C10()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 184) = *(*(v0 + 80) + 584);
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *(v1 + 16) = *(v0 + 88);
  swift_task_alloc();
  OUTLINED_FUNCTION_35_2();
  *(v0 + 200) = v2;
  *v2 = v3;
  v2[1] = sub_1D8020CE0;
  OUTLINED_FUNCTION_101_2();

  return sub_1D7E554B8(v4, 1, 2, v5, v1, v6);
}

void sub_1D8020CE0()
{
  OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_9_12();
  v3 = v2;
  OUTLINED_FUNCTION_21_17();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    OUTLINED_FUNCTION_62();

    MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1D8020E00()
{
  OUTLINED_FUNCTION_9_14();
  v1 = v0[22];
  v2 = v0[12];
  v3 = v0[10];
  v4 = swift_task_alloc();
  v0[26] = v4;
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_35_2();
  v0[27] = v5;
  *v5 = v6;
  v5[1] = sub_1D8020EDC;
  OUTLINED_FUNCTION_101_2();

  return sub_1D7E554B8(v7, 3, 4, v8, v4, v9);
}

uint64_t sub_1D8020EDC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  v3 = v2;
  OUTLINED_FUNCTION_21_17();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v6 = v5;
  *(v3 + 224) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_62();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D8020FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_16_20();
  OUTLINED_FUNCTION_100_2();
  v13 = v12[21];
  v32 = v12[22];
  v15 = v12[19];
  v14 = v12[20];
  v16 = v12[17];
  v17 = v12[18];
  v18 = v12[14];
  v19 = OUTLINED_FUNCTION_110();
  v20(v19);
  OUTLINED_FUNCTION_55_0();
  swift_storeEnumTagMultiPayload();
  sub_1D80212AC(v16);
  v21 = OUTLINED_FUNCTION_55_0();
  v22(v21);
  (*(v17 + 8))(v15, v18);
  (*(v13 + 8))(v32, v14);

  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_17_1();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, v32, a10, a11, a12);
}

uint64_t sub_1D80210E0()
{
  OUTLINED_FUNCTION_64_6();
  v1 = v0[28];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  v5 = v0[17];

  (*(v3 + 8))(v2, v4);
  *v5 = v1;
  OUTLINED_FUNCTION_111();
  swift_storeEnumTagMultiPayload();
  v6 = v1;
  sub_1D80212AC(v5);

  v7 = OUTLINED_FUNCTION_111();
  v8(v7);

  OUTLINED_FUNCTION_10_6();

  return v9();
}

uint64_t sub_1D80211DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D8021200, 0, 0);
}

uint64_t sub_1D8021200()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_38_8();
  swift_task_alloc();
  OUTLINED_FUNCTION_35_2();
  *(v0 + 40) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_103_2(v1);

  return v4(v3);
}

uint64_t sub_1D80212AC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[3];
  v6[2] = *(*v1 + 80);
  v6[3] = *(v2 + 88);
  v6[4] = a1;
  v6[5] = swift_getAssociatedTypeWitness();
  v6[6] = swift_getAssociatedTypeWitness();
  v6[7] = swift_getAssociatedConformanceWitness();
  v6[8] = swift_getAssociatedConformanceWitness();
  type metadata accessor for BlueprintPipelineProcessingResult();
  sub_1D818FA74();
  v4 = sub_1D8191E84();
  sub_1D803C6B4(sub_1D80231FC, v6, v3, v4, MEMORY[0x1E69E7CA8] + 8);
  return sub_1D8191B74();
}

uint64_t sub_1D802140C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D8022D3C(0, &qword_1EDBB32B8, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  sub_1D7F814D4(a3, v24 - v10);
  v12 = sub_1D8191564();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D7F81538(v11);
  }

  else
  {
    sub_1D8191554();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1D81914D4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1D8190FB4() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1D80216A0()
{
  v0 = sub_1D8190C64();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8190C44();
  sub_1D8191B64();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1D802176C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a3;
  v6[9] = a4;
  v6[7] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  v6[2] = AssociatedTypeWitness;
  v6[3] = v8;
  v6[4] = AssociatedConformanceWitness;
  v6[5] = v10;
  v11 = type metadata accessor for BlueprintPipelineProcessingResult();
  v6[12] = v11;
  v6[13] = *(v11 - 8);
  v6[14] = swift_task_alloc();
  sub_1D8191534();
  v6[15] = sub_1D8191524();
  v13 = sub_1D81914D4();
  v6[16] = v13;
  v6[17] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1D8021938, v13, v12);
}

uint64_t sub_1D8021938()
{
  OUTLINED_FUNCTION_64_6();
  sub_1D8021DD0(v0[14]);
  v1 = v0[14];
  v3 = v0[7];
  v2 = v0[8];
  v4 = swift_task_alloc();
  v0[18] = v4;
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_35_2();
  v0[19] = v5;
  *v5 = v6;
  v5[1] = sub_1D8021AC0;

  return sub_1D801DC88((v0 + 6), 9, 10, &unk_1D81AF618, v4);
}

uint64_t sub_1D8021AC0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_12();
  v3 = v2;
  OUTLINED_FUNCTION_21_17();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v6 = v5;
  v3[20] = v0;

  if (v0)
  {
    v7 = v3[16];
    v8 = v3[17];
    v9 = sub_1D8021C74;
  }

  else
  {

    v7 = v3[16];
    v8 = v3[17];
    v9 = sub_1D8021BC4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D8021BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_137_2();
  OUTLINED_FUNCTION_64_6();

  v11 = v10[6];
  OUTLINED_FUNCTION_55_6();
  sub_1D7E95D04(v12, v13);
  sub_1D7E95CA0(v11);
  v14 = OUTLINED_FUNCTION_31();
  v15(v14);
  sub_1D8021D48(v10[7], v10[8]);

  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_134_2();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, v11, a10);
}

uint64_t sub_1D8021C74()
{
  OUTLINED_FUNCTION_23_0();

  v1 = OUTLINED_FUNCTION_31();
  v2(v1);
  v8 = v0[20];
  v3 = v8;
  OUTLINED_FUNCTION_46_10();
  sub_1D7E95D04(v4, v5);

  sub_1D7E95CA0(v8);
  sub_1D8021D48(v0[7], v0[8]);

  OUTLINED_FUNCTION_10_6();

  return v6();
}

id sub_1D8021D48(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D81919E4();
  v4._object = 0x80000001D81CF430;
  v4._countAndFlagsBits = 0xD00000000000002FLL;
  BlueprintPipelineRecorder.log(_:type:)(v4, v3);
  v5 = *(*(a2 + *(*a2 + 136)) + 16);

  return [v5 setSuspended_];
}

uint64_t sub_1D8021DD0@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v28 = swift_getAssociatedConformanceWitness();
  v19 = type metadata accessor for BlueprintPipelineProcessingResult();
  v4 = sub_1D818FA74();
  v5 = sub_1D8191E84();
  v21 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  v15 = v1[3];
  v23 = v3;
  v24 = v2;
  sub_1D803C6B4(sub_1D8023024, v22, v15, v5, v5);
  if (__swift_getEnumTagSinglePayload(v7, 1, v4) == 1)
  {
    (*(v21 + 8))(v7, v5);
    sub_1D7FE814C();
    swift_allocError();
    *v16 = 1;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = 4;
    return swift_willThrow();
  }

  else
  {
    (*(v8 + 32))(v14, v7, v4);
    (*(v8 + 16))(v11, v14, v4);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      swift_willThrow();
      return (*(v8 + 8))(v14, v4);
    }

    else
    {
      (*(v8 + 8))(v14, v4);
      return (*(*(v19 - 8) + 32))(v20, v11);
    }
  }
}

uint64_t sub_1D802216C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v7[2] = sub_1D8191534();
  v7[3] = sub_1D8191524();
  v9 = swift_task_alloc();
  v7[4] = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = swift_getAssociatedTypeWitness();
  *v9 = v7;
  v9[1] = sub_1D80222D0;

  return sub_1D7E80CE4(a1, a3, a4, AssociatedTypeWitness, v11);
}

uint64_t sub_1D80222D0()
{
  OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_93();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v5 = v4;
  *(v6 + 40) = v0;

  v8 = sub_1D81914D4();
  if (v0)
  {
    v9 = sub_1D802246C;
  }

  else
  {
    v9 = sub_1D8022414;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1D8022414()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_5_37();

  return v0();
}

uint64_t sub_1D802246C()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_10_6();

  return v0();
}

uint64_t sub_1D80224C8()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_10_6();

  return v0();
}

uint64_t sub_1D8022530(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for BlueprintPipelineProcessingResult();
  v4 = sub_1D818FA74();
  v5 = sub_1D8191E84();
  (*(*(v5 - 8) + 8))(a1, v5);
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t sub_1D80226B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for BlueprintPipelineProcessingResult();
  sub_1D818FA74();
  v4 = sub_1D8191E84();
  return (*(*(v4 - 8) + 16))(a2, a1, v4);
}

uint64_t sub_1D802281C()
{
  sub_1D80227F4();

  return swift_deallocClassInstance();
}

uint64_t sub_1D802284C()
{
  v6[0] = swift_getAssociatedTypeWitness();
  v6[1] = swift_getAssociatedTypeWitness();
  v6[2] = swift_getAssociatedConformanceWitness();
  v6[3] = swift_getAssociatedConformanceWitness();
  type metadata accessor for BlueprintPipelineProcessingResult();
  v1 = sub_1D818FA74();
  v2 = sub_1D8191E84();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v6 - v3;
  *(v0 + 16) = dispatch_semaphore_create(0);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v1);
  *(v0 + 24) = sub_1D7E34DBC(v4, v2);
  return v0;
}

uint64_t sub_1D8022A28()
{
  OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_66_0();
  v0 = type metadata accessor for BlueprintBookmark();
  OUTLINED_FUNCTION_50(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2_14(v1);
  *v2 = v3;
  v2[1] = sub_1D7E5B0D4;
  v4 = OUTLINED_FUNCTION_60_6();

  return sub_1D801FF6C(v4, v5, v6);
}

uint64_t sub_1D8022AF8()
{
  OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_66_0();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  *v3 = v4;
  v3[1] = sub_1D7E5B0D8;
  v5 = OUTLINED_FUNCTION_60_6();

  return sub_1D8020300(v5, v6, v1);
}

uint64_t objectdestroy_17Tm()
{

  return swift_deallocObject();
}

void sub_1D8022C9C()
{
  if (!qword_1ECA0F898)
  {
    sub_1D7E0631C(255, &qword_1EDBB2BC0);
    v0 = sub_1D8191504();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0F898);
    }
  }
}

void sub_1D8022D3C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1D8022D90()
{
  OUTLINED_FUNCTION_137_2();
  OUTLINED_FUNCTION_64_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_14(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_13_27(v1);
  OUTLINED_FUNCTION_83_3();
  OUTLINED_FUNCTION_134_2();

  return sub_1D80209A8(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D8022E38()
{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_14(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_13_27(v4);
  OUTLINED_FUNCTION_83_3();

  return sub_1D802176C(v6, v7, v8, v9, v1, v2);
}

uint64_t sub_1D8022EE4()
{
  OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_61_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_14(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_13_27(v1);
  OUTLINED_FUNCTION_64();

  return sub_1D802216C(v3, v4, v5, v6);
}

uint64_t sub_1D8023040()
{
  OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_27_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_14(v0);
  *v1 = v2;
  v1[1] = sub_1D7E5B0D4;
  v3 = OUTLINED_FUNCTION_30_13();

  return v4(v3);
}

uint64_t sub_1D80230DC()
{
  OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_27_8();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2_14(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_13_27(v2);

  return sub_1D80211DC(v4, v5, v0);
}

uint64_t sub_1D802316C()
{
  OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_61_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_14(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_13_27(v1);
  OUTLINED_FUNCTION_64();

  return sub_1D7E5F410(v3, v4, v5, v6);
}

uint64_t objectdestroy_23Tm_1()
{
  sub_1D8022C9C();
  OUTLINED_FUNCTION_4_3();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_94_2();

  return swift_deallocObject();
}

uint64_t sub_1D80232D8(void **a1)
{
  sub_1D8022C9C();
  OUTLINED_FUNCTION_50(v2);
  return sub_1D801F24C(a1);
}

uint64_t sub_1D802334C()
{
  v1 = v0;
  sub_1D7F9F0F0();
  sub_1D8023490();
  while (1)
  {
    v2 = v1;
    if ((swift_dynamicCast() & 1) == 0)
    {
      v8 = 0;
      v6 = 0u;
      v7 = 0u;
LABEL_7:
      sub_1D80234EC(&v6);
      goto LABEL_8;
    }

    if (!*(&v7 + 1))
    {
      goto LABEL_7;
    }

    sub_1D7E05450(&v6, v9);
    v3 = v10;
    v4 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    if ((*(v4 + 8))(v3, v4))
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v9);
LABEL_8:
    v1 = [v2 superview];

    if (!v1)
    {
      return 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return 1;
}

unint64_t sub_1D8023490()
{
  result = qword_1EDBB0878;
  if (!qword_1EDBB0878)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBB0878);
  }

  return result;
}

uint64_t sub_1D80234EC(uint64_t a1)
{
  sub_1D8023548();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D8023548()
{
  if (!qword_1EDBB0870)
  {
    sub_1D8023490();
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB0870);
    }
  }
}

uint64_t static BlueprintModifierResult.reloadWithAnimation<A, B>(blueprint:animation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for Blueprint();
  type metadata accessor for BlueprintBookmark();
  v6 = *(swift_getTupleTypeMetadata3() + 64);
  OUTLINED_FUNCTION_3_0();
  (*(v7 + 16))(a3, a1, v5);
  swift_storeEnumTagMultiPayload();
  sub_1D8022F74(a2, a3 + v6);
  OUTLINED_FUNCTION_2_84();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D8023710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Blueprint();
  type metadata accessor for BlueprintBookmark();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_3_0();
  (*(v5 + 16))(a2, a1, v4);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_2_84();
  return swift_storeEnumTagMultiPayload();
}

uint64_t static BlueprintModifierResult.changesWithAnimation<A, B>(newBlueprint:oldBlueprint:bookmark:animation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_21_18(a1, a2, a3, a4);
  - infix<A, B>(_:_:)();
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  v7 = OUTLINED_FUNCTION_23_12();
  v9 = v8(v7);
  if ((v9 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v9);
    OUTLINED_FUNCTION_6_52();
    *(v10 - 40) = v11;
    OUTLINED_FUNCTION_5_1(v10);
    OUTLINED_FUNCTION_8_32();
    type metadata accessor for Blueprint();
    sub_1D7E0631C(255, &qword_1EDBBA670);
    type metadata accessor for BlueprintBookmark();
    v12 = OUTLINED_FUNCTION_14_22();
    v13 = v12[12];
    v14 = v12[16];
    v15 = v12[20];
    OUTLINED_FUNCTION_3_77();
    type metadata accessor for Blueprint();
    OUTLINED_FUNCTION_8();
    (*(v16 + 16))(v4, v6);
    sub_1D7E0E768(v19, v4 + v13);
    sub_1D7E2B108(v5, v4 + v14);
    sub_1D8022F74(v18, v4 + v15);
  }

  OUTLINED_FUNCTION_8_32();
  OUTLINED_FUNCTION_2_84();
  swift_storeEnumTagMultiPayload();
  return __swift_destroy_boxed_opaque_existential_1Tm(v19);
}

{
  OUTLINED_FUNCTION_21_18(a1, a2, a3, a4);
  - infix<A, B>(_:_:)();
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  v7 = OUTLINED_FUNCTION_23_12();
  v9 = v8(v7);
  if ((v9 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v9);
    OUTLINED_FUNCTION_6_52();
    *(v10 - 40) = v11;
    OUTLINED_FUNCTION_5_1(v10);
    OUTLINED_FUNCTION_8_32();
    type metadata accessor for Blueprint();
    sub_1D7E0631C(255, &qword_1EDBBA670);
    type metadata accessor for BlueprintBookmark();
    v12 = OUTLINED_FUNCTION_14_22();
    v13 = v12[12];
    v14 = v12[16];
    v15 = v12[20];
    OUTLINED_FUNCTION_3_77();
    type metadata accessor for Blueprint();
    OUTLINED_FUNCTION_8();
    (*(v16 + 16))(v4, v6);
    sub_1D7E0E768(v19, v4 + v13);
    sub_1D7E2B108(v5, v4 + v14);
    sub_1D8022F74(v18, v4 + v15);
  }

  OUTLINED_FUNCTION_8_32();
  OUTLINED_FUNCTION_2_84();
  swift_storeEnumTagMultiPayload();
  return __swift_destroy_boxed_opaque_existential_1Tm(v19);
}

void static BlueprintModifierResult.changesNoAnimation<A, B>(newBlueprint:oldBlueprint:bookmark:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_79();
  a29 = v30;
  a30 = v31;
  OUTLINED_FUNCTION_9_25();
  OUTLINED_FUNCTION_18_21();
  - infix<A, B>(_:_:)();
  __swift_project_boxed_opaque_existential_1(&a14, a17);
  v32 = OUTLINED_FUNCTION_7_40();
  if ((v33(v32) & 1) == 0)
  {
    OUTLINED_FUNCTION_1_94();
    type metadata accessor for Blueprint();
    sub_1D7E0631C(255, &qword_1EDBBA670);
    OUTLINED_FUNCTION_28_12();
    OUTLINED_FUNCTION_15_23();
    OUTLINED_FUNCTION_4_54();
    v34 = OUTLINED_FUNCTION_16_24();
    v36 = v35(v34);
    OUTLINED_FUNCTION_29_11(v36, v37, v38, v39, v40);
    OUTLINED_FUNCTION_27_15();
  }

  OUTLINED_FUNCTION_1_94();
  OUTLINED_FUNCTION_2_84();
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1Tm(&a14);
  OUTLINED_FUNCTION_80_0();
}

{
  OUTLINED_FUNCTION_79();
  a29 = v30;
  a30 = v31;
  OUTLINED_FUNCTION_9_25();
  OUTLINED_FUNCTION_18_21();
  - infix<A, B>(_:_:)();
  __swift_project_boxed_opaque_existential_1(&a14, a17);
  v32 = OUTLINED_FUNCTION_7_40();
  if ((v33(v32) & 1) == 0)
  {
    OUTLINED_FUNCTION_1_94();
    type metadata accessor for Blueprint();
    sub_1D7E0631C(255, &qword_1EDBBA670);
    OUTLINED_FUNCTION_28_12();
    OUTLINED_FUNCTION_15_23();
    OUTLINED_FUNCTION_4_54();
    v34 = OUTLINED_FUNCTION_16_24();
    v36 = v35(v34);
    OUTLINED_FUNCTION_29_11(v36, v37, v38, v39, v40);
    OUTLINED_FUNCTION_27_15();
  }

  OUTLINED_FUNCTION_1_94();
  OUTLINED_FUNCTION_2_84();
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1Tm(&a14);
  OUTLINED_FUNCTION_80_0();
}

uint64_t static BlueprintModifierResult.viewAction<A, B>(newBlueprint:oldBlueprint:response:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Blueprint();
  sub_1D7E0631C(255, &qword_1EDBBA670);
  type metadata accessor for BlueprintViewActionResponse();
  v7 = *(swift_getTupleTypeMetadata3() + 64);
  OUTLINED_FUNCTION_3_0();
  (*(v8 + 16))(a3, a1, v6);
  - infix<A, B>(_:_:)();
  *(a3 + v7) = a2;
  OUTLINED_FUNCTION_2_84();
  swift_storeEnumTagMultiPayload();
}

uint64_t static BlueprintModifierResult.viewActionWithAnimation<A, B>(newBlueprint:oldBlueprint:response:animation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  type metadata accessor for Blueprint();
  sub_1D7E0631C(255, &qword_1EDBBA670);
  type metadata accessor for BlueprintViewActionResponse();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v8 = *(TupleTypeMetadata + 64);
  v9 = *(TupleTypeMetadata + 80);
  type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_8();
  (*(v10 + 16))(a4, a1);
  - infix<A, B>(_:_:)();
  *(a4 + v8) = a2;
  sub_1D8022F74(a3, a4 + v9);
  OUTLINED_FUNCTION_2_84();
  swift_storeEnumTagMultiPayload();
}

void static BlueprintModifierResult.moved(newBlueprint:oldBlueprint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_79();
  a29 = v30;
  a30 = v31;
  v33 = v32;
  v35 = v34;
  - infix<A, B>(_:_:)();
  v36 = a17;
  v37 = a18;
  __swift_project_boxed_opaque_existential_1(&a14, a17);
  if (((*(v37 + 96))(v36, v37) & 1) == 0)
  {
    OUTLINED_FUNCTION_22_15();
    v38 = type metadata accessor for Blueprint();
    sub_1D7E0631C(255, &qword_1EDBBA670);
    OUTLINED_FUNCTION_17_20();
    v39 = *(swift_getTupleTypeMetadata2() + 48);
    OUTLINED_FUNCTION_4_54();
    (*(v40 + 16))(v35, v33, v38);
    sub_1D7E0E768(&a14, v35 + v39);
  }

  OUTLINED_FUNCTION_22_15();
  OUTLINED_FUNCTION_2_84();
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1Tm(&a14);
  OUTLINED_FUNCTION_80_0();
}

uint64_t static BlueprintModifierResult.applySnapshot(newBlueprint:oldBlueprint:response:animated:bookmark:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  type metadata accessor for Blueprint();
  sub_1D7E0631C(255, &qword_1EDBBA670);
  sub_1D7E546F8();
  type metadata accessor for BlueprintBookmark();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v8 = TupleTypeMetadata[16];
  v9 = TupleTypeMetadata[20];
  v10 = TupleTypeMetadata[24];
  type metadata accessor for Blueprint();
  OUTLINED_FUNCTION_8();
  (*(v11 + 16))(a5, a1);
  - infix<A, B>(_:_:)();
  *(a5 + v8) = a2;
  *(a5 + v9) = a3;
  sub_1D7E2B108(a4, a5 + v10);
  OUTLINED_FUNCTION_2_84();
  swift_storeEnumTagMultiPayload();
}

uint64_t static BlueprintModifierResult.applyReloadSnapshot(newBlueprint:oldBlueprint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Blueprint();
  sub_1D7E0631C(255, &qword_1EDBBA670);
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_3_0();
  (*(v5 + 16))(a2, a1, v4);
  - infix<A, B>(_:_:)();
  OUTLINED_FUNCTION_2_84();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D802454C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_0_125();
  OUTLINED_FUNCTION_3_78();
  v14 = swift_allocObject();
  v15 = OUTLINED_FUNCTION_1_95();
  sub_1D8024638(v15, v16, v17, v18, v19, v20, v21, a8, v23, v24, v25, v26, a13);
  return v14;
}

uint64_t sub_1D80245C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_0_125();
  OUTLINED_FUNCTION_3_78();
  v14 = swift_allocObject();
  v15 = OUTLINED_FUNCTION_1_95();
  sub_1D8024FD8(v15, v16, v17, v18, v19, v20, v21, a8, v23, v24, v25, v26, a13, a14);
  return v14;
}

uint64_t sub_1D8024638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = sub_1D818E794();
  OUTLINED_FUNCTION_9();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_3_3();
  v30 = *a6;
  v22 = *a7;
  v34 = *a10;
  v33 = *(a10 + 8);
  LOBYTE(a7) = *(a7 + 8);
  sub_1D7E40308();
  *(v13 + 16) = [objc_allocWithZone(v23) init];
  sub_1D8190DB4();
  sub_1D8190DB4();
  sub_1D8025AD4(v22, a7);
  sub_1D818E784();
  v24 = sub_1D818E764();
  v26 = v25;
  (*(v20 + 8))(v13, v18);
  *(v13 + 24) = v24;
  *(v13 + 32) = v26;
  *(v13 + 40) = a2;
  *(v13 + 48) = a3;
  *(v13 + 56) = a4;
  *(v13 + 64) = a5;
  *(v13 + 72) = v22;
  *(v13 + 80) = a7;
  *(v13 + 81) = v30;
  *(v13 + 88) = MEMORY[0x1E69E7CC0];
  *(v13 + 96) = 2;
  (*(a13 + 16))(a12, a13);
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = a12;
  *(v28 + 24) = a13;
  *(v28 + 32) = v27;
  *(v28 + 40) = a2;
  *(v28 + 48) = a3;
  *(v28 + 56) = a4;
  *(v28 + 64) = a5;
  *(v28 + 72) = v22;
  *(v28 + 80) = a7;
  *(v28 + 81) = v30;
  *(v28 + 88) = a1;
  *(v28 + 96) = a8;
  *(v28 + 104) = a9;
  *(v28 + 112) = v34;
  *(v28 + 120) = v33;
  sub_1D8191484();
  OUTLINED_FUNCTION_0_2();

  sub_1D818F164();

  OUTLINED_FUNCTION_6_53();
  sub_1D818ED84();

  (*(*(a12 - 8) + 8))(a11, a12);
  __swift_destroy_boxed_opaque_existential_1Tm(v37);
  return v13;
}

void sub_1D802493C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, int a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, uint64_t a16)
{
  v54 = a3;
  v55 = a5;
  v53 = sub_1D818E794();
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v50 = a4;
    v51 = a7;
    v45 = a14;
    v44 = a13;
    v43 = a12;
    v49 = a6;
    v48 = a9;
    v56 = v23;
    v26 = sub_1D8191484();
    WitnessTable = swift_getWitnessTable();
    v28 = MEMORY[0x1DA7133A0](v58, v26, WitnessTable);
    v46 = &v42;
    v47 = a8;
    v56 = v58[0];
    MEMORY[0x1EEE9AC00](v28);
    *(&v42 - 8) = a15;
    *(&v42 - 7) = a16;
    *(&v42 - 6) = a10;
    *(&v42 - 5) = a11;
    v29 = v44;
    *(&v42 - 4) = v43;
    *(&v42 - 3) = v29;
    *(&v42 - 16) = v45 & 1;
    MEMORY[0x1EEE9AC00](v30);
    *(&v42 - 4) = a15;
    *(&v42 - 3) = a16;
    *(&v42 - 2) = sub_1D8025C40;
    *(&v42 - 1) = v31;
    v32 = sub_1D81923F4();
    v33 = sub_1D7F0BBEC();
    v57 = swift_getWitnessTable();
    v34 = swift_getWitnessTable();
    v36 = sub_1D7E6CDC0(sub_1D8025C74, (&v42 - 6), v32, v33, MEMORY[0x1E69E73E0], v34, MEMORY[0x1E69E7410], v35);

    sub_1D818E784();
    v37 = sub_1D818E764();
    v39 = v38;
    (*(v52 + 8))(v22, v53);
    v58[0] = v37;
    v58[1] = v39;
    v58[2] = v54;
    v58[3] = v50;
    v58[4] = v55;
    v58[5] = v49;
    v40 = v51;
    v58[6] = v51;
    LOBYTE(v33) = v47;
    v59 = v47;
    v60 = v48 & 1;
    v61 = v65;
    v62 = v66;
    v63 = v36;
    v64 = 2;
    swift_beginAccess();
    sub_1D8025AD4(v40, v33);
    sub_1D8190DB4();
    sub_1D8190DB4();
    sub_1D8025BA0(v58, v25 + 24);
    swift_endAccess();
    v41 = *(v25 + 16);
    sub_1D7E80824();
  }
}

void sub_1D8024D5C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X5>, char a6@<W6>, uint64_t *a7@<X8>)
{
  v13 = *(*a3 + 88);
  v14 = sub_1D8191E84();
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v25 - v16;
  (*(*(v13 - 8) + 16))(&v25 - v16, a2, v13, v15);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v13);
  v18 = a4(a2);
  v20 = v19;
  if (a6)
  {
    goto LABEL_5;
  }

  if (!__OFADD__(a1, 1))
  {
    if (a1 + 1 <= 9)
    {
      v28 = a1 + 1;
      v21 = sub_1D81925B4();
LABEL_6:
      v28 = v21;
      v29 = v22;
      v30 = a5;
      v27 = 0;
      HIBYTE(v26) = 0;
      a7[3] = &type metadata for MenuItem;
      a7[4] = &protocol witness table for MenuItem;
      *a7 = swift_allocObject();

      MenuItem.init<A>(command:context:title:symbolName:key:options:alternate:)(v23, v17, v18, v20, 0, 0xE000000000000000, &v28, &v26 + 7, &v27, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
      return;
    }

LABEL_5:
    v21 = 0;
    v22 = 0;
    a5 = 0;
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1D8024F30(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_1D8024FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v19 = sub_1D818E794();
  OUTLINED_FUNCTION_9();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_3_3();
  v35 = *a6;
  v37 = *a7;
  v23 = *a8;
  v34 = *a11;
  v33 = *(a11 + 8);
  LOBYTE(a7) = *(a8 + 8);
  sub_1D7E40308();
  *(v14 + 16) = [objc_allocWithZone(v24) init];
  sub_1D8190DB4();
  sub_1D8190DB4();
  sub_1D8025AD4(v23, a7);
  sub_1D818E784();
  v25 = sub_1D818E764();
  v27 = v26;
  (*(v21 + 8))(v14, v19);
  *(v14 + 24) = v25;
  *(v14 + 32) = v27;
  *(v14 + 40) = a2;
  *(v14 + 48) = a3;
  *(v14 + 56) = a4;
  *(v14 + 64) = a5;
  *(v14 + 72) = v23;
  *(v14 + 80) = a7;
  *(v14 + 81) = v37;
  *(v14 + 88) = MEMORY[0x1E69E7CC0];
  *(v14 + 96) = 2;
  (*(a14 + 16))(a13, a14);
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = a13;
  *(v29 + 24) = a14;
  *(v29 + 32) = v28;
  *(v29 + 40) = a2;
  *(v29 + 48) = a3;
  *(v29 + 56) = a4;
  *(v29 + 64) = a5;
  *(v29 + 72) = v23;
  *(v29 + 80) = a7;
  *(v29 + 81) = v37;
  *(v29 + 88) = a1;
  *(v29 + 96) = a9;
  *(v29 + 104) = a10;
  *(v29 + 112) = v35;
  *(v29 + 120) = v34;
  *(v29 + 128) = v33;
  sub_1D8191484();
  OUTLINED_FUNCTION_0_2();

  sub_1D818F164();

  OUTLINED_FUNCTION_6_53();
  sub_1D818ED84();

  (*(*(a13 - 8) + 8))(a12, a13);
  __swift_destroy_boxed_opaque_existential_1Tm(v39);
  return v14;
}

void sub_1D80252F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, int a8, unsigned __int8 a9, uint64_t *a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, unsigned __int8 a15, uint64_t a16, uint64_t a17)
{
  v59 = a3;
  v60 = a5;
  v22 = *a10;
  v58 = sub_1D818E794();
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v55 = a7;
    v56 = a8;
    v49 = a15;
    v48 = a14;
    v47 = a13;
    v46 = a12;
    v54 = a9;
    v61 = v25;
    v28 = sub_1D8191484();
    v53 = a4;
    v29 = v28;
    WitnessTable = swift_getWitnessTable();
    v52 = a6;
    v31 = MEMORY[0x1DA7133A0](v63, v29, WitnessTable);
    v51 = &v46;
    v50 = v63[0];
    v61 = v63[0];
    MEMORY[0x1EEE9AC00](v31);
    *(&v46 - 8) = a16;
    *(&v46 - 7) = a17;
    *(&v46 - 6) = a10;
    *(&v46 - 5) = a11;
    *(&v46 - 4) = v46;
    *(&v46 - 24) = v47 & 1;
    *(&v46 - 2) = v48;
    *(&v46 - 8) = v49 & 1;
    MEMORY[0x1EEE9AC00](v32);
    v33 = *(v22 + 144);
    v34 = *(v22 + 152);
    *(&v46 - 6) = a16;
    *(&v46 - 5) = v33;
    *(&v46 - 4) = a17;
    *(&v46 - 3) = v34;
    *(&v46 - 2) = sub_1D8025B3C;
    *(&v46 - 1) = v35;
    v36 = sub_1D81923F4();
    v37 = sub_1D7F0BBEC();
    v62 = swift_getWitnessTable();
    v38 = swift_getWitnessTable();
    v40 = sub_1D7E6CDC0(sub_1D8025B78, (&v46 - 8), v36, v37, MEMORY[0x1E69E73E0], v38, MEMORY[0x1E69E7410], v39);

    sub_1D818E784();
    v41 = sub_1D818E764();
    v43 = v42;
    (*(v57 + 8))(v24, v58);
    v63[0] = v41;
    v63[1] = v43;
    v63[2] = v59;
    v63[3] = v53;
    v63[4] = v60;
    v63[5] = v52;
    v44 = v55;
    v63[6] = v55;
    LOBYTE(v41) = v56;
    v64 = v56;
    v65 = v54 & 1;
    v66 = v70;
    v67 = v71;
    v68 = v40;
    v69 = 2;
    swift_beginAccess();
    sub_1D8025AD4(v44, v41);
    sub_1D8190DB4();
    sub_1D8190DB4();
    sub_1D8025BA0(v63, v27 + 24);
    swift_endAccess();
    v45 = *(v27 + 16);
    sub_1D7E80824();
  }
}

void sub_1D802574C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, char a5@<W5>, uint64_t a6@<X6>, char a7@<W7>, uint64_t *a8@<X8>)
{
  v25 = a6;
  v26 = a1;
  v13 = *(*a3 + 136);
  v14 = sub_1D8191E84();
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v25 - v16;
  (*(*(v13 - 8) + 16))(&v25 - v16, a2, v13, v15);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v13);
  v18 = a4(a2);
  v20 = v19;
  v36 = a5 & 1;
  if (a7)
  {
    goto LABEL_5;
  }

  if (!__OFADD__(v26, 1))
  {
    if (v26 + 1 <= 9)
    {
      v33 = (v26 + 1);
      v21 = sub_1D81925B4();
      v23 = v25;
LABEL_6:
      v33 = v21;
      v34 = v22;
      v35 = v23;
      v32 = 0;
      sub_1D80245BC();
      v27 = v30;
      LOBYTE(v28) = v31;
      a8[3] = &type metadata for MenuItem;
      a8[4] = &protocol witness table for MenuItem;
      *a8 = swift_allocObject();

      MenuItem.init<A, B>(command:context:title:symbolName:state:key:options:alternate:)(v24, v17, v18, v20, 0, 0xE000000000000000, &v36, &v33, &v27, &v32, v25, v26, v27, *(&v27 + 1), v28, v29, v30, *(&v30 + 1), v31, v32, v33, v34);
      return;
    }

LABEL_5:
    v21 = 0;
    v22 = 0;
    v23 = 0;
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1D802597C(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_1D8025A20()
{
  sub_1D7F0B35C(v0 + 24);
  OUTLINED_FUNCTION_3_78();

  return swift_deallocClassInstance();
}

uint64_t sub_1D8025A88@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1D7F0B324(v3 + 24, a1);
}

id sub_1D8025AD4(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

void sub_1D8025C98()
{
  if (qword_1EDBB38A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDBB38B0;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithPointSize:5 weight:3 scale:17.0];
  v4 = [v2 imageByApplyingSymbolConfiguration_];

  if (v4)
  {
    qword_1EDBC6090 = v4;
  }

  else
  {
    __break(1u);
  }
}

char *sub_1D8025D6C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = &OBJC_PROTOCOL___UICollectionViewDataSource;
  *&v4[OBJC_IVAR____TtC5TeaUI13SidebarButton_accessibilityDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  if (qword_1EDBBB528 != -1)
  {
    OUTLINED_FUNCTION_0_126();
  }

  v10 = qword_1EDBC6090;
  [qword_1EDBC6090 size];
  v12 = v11;
  v14 = v13;
  v27.receiver = v4;
  v27.super_class = type metadata accessor for SidebarButton();
  v15 = objc_msgSendSuper2(&v27, sel_initWithFrame_, 0.0, 0.0, v12, v14);
  [v15 setBackgroundImage:v10 forState:0];
  sub_1D7E7B91C(a1, v25);
  v16 = v26;
  if (v26)
  {
    v17 = __swift_project_boxed_opaque_existential_1(v25, v26);
    v18 = *(v16 - 8);
    v19 = MEMORY[0x1EEE9AC00](v17);
    v21 = v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    v22 = sub_1D8192614();
    v23 = v21;
    v9 = &OBJC_PROTOCOL___UICollectionViewDataSource;
    (*(v18 + 8))(v23, v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  else
  {
    v22 = 0;
  }

  [v15 addTarget:v22 action:a2 forControlEvents:64];
  swift_unknownObjectRelease();
  sub_1D7E7BAAC(a1);
  *&v15[v9[30].opt_class_meths + 8] = a4;
  swift_unknownObjectWeakAssign();

  return v15;
}

void sub_1D8025FA4()
{
  *(v0 + OBJC_IVAR____TtC5TeaUI13SidebarButton_accessibilityDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_2_12();
  __break(1u);
}

id sub_1D8026058()
{
  if (qword_1EDBBB528 != -1)
  {
    OUTLINED_FUNCTION_0_126();
  }

  v1 = qword_1EDBC6090;

  return [v1 size];
}

uint64_t sub_1D8026124()
{
  v1 = v0 + OBJC_IVAR____TtC5TeaUI13SidebarButton_accessibilityDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    if ((*(v4 + 8))(v0, ObjectType, v4) != 2)
    {
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v7 = [objc_opt_self() bundleForClass_];
      OUTLINED_FUNCTION_2_86();
      v8 = sub_1D818E514();

      goto LABEL_6;
    }
  }

  type metadata accessor for Localized();
  v6 = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  OUTLINED_FUNCTION_2_86();
  v8 = sub_1D818E514();
LABEL_6:

  return v8;
}

char *SidebarButtonView.init(target:action:accessibilityDelegate:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  sub_1D7E7B91C(a1, v43);
  v9 = objc_allocWithZone(type metadata accessor for SidebarButton());
  v10 = a3;
  v11 = sub_1D8025D6C(v43, a2, v10, a4);
  *&v5[OBJC_IVAR____TtC5TeaUI17SidebarButtonView_button] = v11;
  [v11 frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v42.receiver = v5;
  v42.super_class = type metadata accessor for SidebarButtonView();
  v20 = objc_msgSendSuper2(&v42, sel_initWithFrame_, v13, v15, v17, v19);
  v21 = OBJC_IVAR____TtC5TeaUI17SidebarButtonView_button;
  v22 = *&v20[OBJC_IVAR____TtC5TeaUI17SidebarButtonView_button];
  v23 = v20;
  [v23 addSubview_];
  [v23 setAutoresizesSubviews_];
  [v23 setAutoresizingMask_];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  v39 = objc_opt_self();
  sub_1D7E09CC4(0, &qword_1EDBB2BF0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1D81A7860;
  v25 = [*&v20[v21] widthAnchor];
  if (qword_1EDBBB528 != -1)
  {
    OUTLINED_FUNCTION_0_126();
  }

  v26 = qword_1EDBC6090;
  [qword_1EDBC6090 size];
  v27 = [v25 constraintEqualToConstant_];

  *(v24 + 32) = v27;
  v28 = [*&v20[v21] heightAnchor];
  [v26 size];
  v30 = [v28 constraintEqualToConstant_];

  *(v24 + 40) = v30;
  v31 = [*&v20[v21] centerXAnchor];
  v32 = [v23 centerXAnchor];

  v33 = [v31 constraintEqualToAnchor_];
  *(v24 + 48) = v33;
  v34 = [*&v20[v21] centerYAnchor];
  v35 = [v23 centerYAnchor];

  v36 = [v34 constraintEqualToAnchor_];
  *(v24 + 56) = v36;
  sub_1D8026CF0();
  v37 = sub_1D8191304();

  [v40 activateConstraints_];

  sub_1D7E7BAAC(a1);
  return v23;
}

id SidebarButtonView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id (*sub_1D8026948(void *a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5TeaUI17SidebarButtonView_button);
  a1[1] = v3;
  [v3 alpha];
  *a1 = v4;
  return sub_1D80269A4;
}

id sub_1D8026A84(double a1)
{
  [v1 transform];
  v5 = a1;
  return [v1 setTransform_];
}

void (*sub_1D8026AE4(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[7] = v1;
  [v1 transform];
  v3[6] = v5;
  return sub_1D8026B64;
}

void sub_1D8026B64(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  [v3 transform];
  *v1 = v4;
  v1[1] = v5;
  *(v1 + 4) = v6;
  *(v1 + 5) = v2;
  [v3 setTransform_];

  free(v1);
}

id sub_1D8026C44(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t SidebarButtonAccessibilityDelegate.isSidebarHidden(for:)()
{
  v1 = [v0 splitViewController];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = [v1 displayMode];

  return v3 == 1;
}

unint64_t sub_1D8026CF0()
{
  result = qword_1EDBB3160;
  if (!qword_1EDBB3160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBB3160);
  }

  return result;
}

uint64_t sub_1D8026EC8()
{
  v1 = sub_1D818EC04();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v7 = v6 - v5;
  sub_1D818EBF4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_4_55();
  (*(v9 + 104))(v0, *MEMORY[0x1E69D6E90]);
  (*(v3 + 104))(v7, *MEMORY[0x1E69D6EA0], v1);
  sub_1D8027F8C();
  swift_allocObject();
  result = sub_1D818EC64();
  qword_1ECA0F8B8 = result;
  return result;
}

uint64_t sub_1D8027078()
{
  v1 = sub_1D818EC04();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v7 = v6 - v5;
  sub_1D818EBF4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_4_55();
  (*(v9 + 104))(v0, *MEMORY[0x1E69D6E90]);
  (*(v3 + 104))(v7, *MEMORY[0x1E69D6EA0], v1);
  sub_1D8027F8C();
  swift_allocObject();
  result = sub_1D818EC64();
  qword_1ECA0F8C0 = result;
  return result;
}

uint64_t sub_1D8027224()
{
  v0 = sub_1D818EC04();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D818EBF4();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 104))(&v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90], v5);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6EA0], v0);
  v9[15] = 1;
  sub_1D8027F8C();
  swift_allocObject();
  result = sub_1D818EC64();
  qword_1ECA0F8C8 = result;
  return result;
}

uint64_t sub_1D8027400()
{
  v1 = sub_1D818EC04();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v7 = v6 - v5;
  v8 = sub_1D818EBF4();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_4_55();
  sub_1D8027E34(0, &qword_1EDBBC598, sub_1D7F02C80);
  (*(v10 + 104))(v0, *MEMORY[0x1E69D6E90], v8);
  sub_1D8027E94(0, &qword_1EDBB2CF8, &unk_1EDBBC5C0);
  OUTLINED_FUNCTION_5_44();
  *(swift_allocObject() + 16) = xmmword_1D81A1B70;
  OUTLINED_FUNCTION_2_87();
  OUTLINED_FUNCTION_2_87();
  OUTLINED_FUNCTION_2_87();
  (*(v3 + 104))(v7, *MEMORY[0x1E69D6EA0], v1);
  sub_1D8027F38();
  result = OUTLINED_FUNCTION_3_79();
  qword_1EDBBC650 = result;
  return result;
}

uint64_t sub_1D80276E4()
{
  v1 = sub_1D818EC04();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v7 = v6 - v5;
  v8 = sub_1D818EBF4();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_4_55();
  sub_1D8027E34(0, &qword_1ECA0F8D8, sub_1D7F02CD4);
  (*(v10 + 104))(v0, *MEMORY[0x1E69D6E90], v8);
  sub_1D8027E94(0, &qword_1ECA0F8E0, &qword_1ECA0F8E8);
  OUTLINED_FUNCTION_5_44();
  *(swift_allocObject() + 16) = xmmword_1D81A1B70;
  OUTLINED_FUNCTION_2_87();
  sub_1D818EC14();
  OUTLINED_FUNCTION_2_87();
  (*(v3 + 104))(v7, *MEMORY[0x1E69D6EA0], v1);
  sub_1D8027DE0();
  result = OUTLINED_FUNCTION_3_79();
  qword_1ECA0F8D0 = result;
  return result;
}

TeaUI::DebugContextMenuPosition_optional __swiftcall DebugContextMenuPosition.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D81924B4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DebugContextMenuPosition.rawValue.getter()
{
  v1 = 0x676E696461656CLL;
  if (*v0 != 1)
  {
    v1 = 0x676E696C69617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6564646968;
  }
}

unint64_t sub_1D8027AA4()
{
  result = qword_1EDBB7BB8;
  if (!qword_1EDBB7BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB7BB8);
  }

  return result;
}

uint64_t sub_1D8027B1C@<X0>(uint64_t *a1@<X8>)
{
  result = DebugContextMenuPosition.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D8027B44(uint64_t a1)
{
  v2 = sub_1D7F02F20();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D8027B98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7F02F20();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D8027BF4(uint64_t a1)
{
  v2 = sub_1D7F02F20();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

_BYTE *sub_1D8027C58(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for DebugContextMenuPosition(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D8027DE0()
{
  result = qword_1ECA0F8F0;
  if (!qword_1ECA0F8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0F8F0);
  }

  return result;
}

void sub_1D8027E34(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1D818EC54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D8027E94(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D8027EEC(255, a3);
    v4 = sub_1D81925C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D8027EEC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D818EC24();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1D8027F38()
{
  result = qword_1EDBB7BC8[0];
  if (!qword_1EDBB7BC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBB7BC8);
  }

  return result;
}

void sub_1D8027F8C()
{
  if (!qword_1ECA0F8F8)
  {
    v0 = sub_1D818EC54();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0F8F8);
    }
  }
}

uint64_t CoverViewManager.__allocating_init()()
{
  v0 = swift_allocObject();
  CoverViewManager.init()();
  return v0;
}

uint64_t CoverViewManager.present(cover:animation:completion:)(uint64_t a1, unsigned __int8 *a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v9 = *a2;
  v10 = sub_1D7FC1E74();
  if (v10)
  {
    v11 = v10;
    if (sub_1D8190B24())
    {
      v12 = objc_allocWithZone(type metadata accessor for CoverContainerView());
      v11 = sub_1D7FC27F4(v11);
    }

    v14[0] = v9;
    sub_1D80289BC(v11, v14, a3, a4, v5);
  }

  else
  {
    v14[0] = v9;
    sub_1D80290DC(v14, a3, a4, v4);
  }

  sub_1D7E298B0(a1, v14);
  return CoverViewManager.cover.setter(v14);
}

uint64_t CoverViewManager.isCovering.getter()
{

  sub_1D818F534();

  return v1;
}

uint64_t CoverViewManager.isCovering.setter()
{

  sub_1D818F544();
}

void (*CoverViewManager.isCovering.modify(void *a1))(void *)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = *(v1 + 16);

  v3[5] = sub_1D818F524();
  return sub_1D80281FC;
}

uint64_t CoverViewManager.$isCovering.getter()
{

  v0 = sub_1D818F554();

  return v0;
}

uint64_t CoverViewManager.cover.setter(uint64_t a1)
{
  sub_1D7E298B0(a1, v3);

  sub_1D818F544();

  return sub_1D7E298F0(a1);
}

void (*CoverViewManager.cover.modify(void *a1))(void *)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = *(v1 + 32);

  v3[5] = sub_1D818F524();
  return sub_1D802A064;
}

uint64_t CoverViewManager.$cover.getter()
{

  v0 = sub_1D818F554();

  return v0;
}

void sub_1D8028378()
{
  sub_1D80284F4();
  v0 = [objc_opt_self() defaultCenter];
  v1 = sub_1D8190EE4();
  sub_1D8029DD8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D819FAB0;
  sub_1D8192124();
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1D7E192B0(0);
  *(inited + 96) = v4;
  *(inited + 72) = Strong;
  v5 = sub_1D8190D94();
  sub_1D7FA9228(v1, 0, v5, v0);
}

uint64_t sub_1D80284F4()
{
  v0 = sub_1D80298D8();
  result = CoverViewManager.isCovering.getter();
  if (v0 != (result & 1))
  {

    return CoverViewManager.isCovering.setter();
  }

  return result;
}

void sub_1D8028578(void *a1)
{
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
  v3 = a1;

  sub_1D8028378();
}

uint64_t sub_1D80285C8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    CoverViewManager.layoutIfNeeded()();
  }

  return result;
}

void CoverViewManager.proxy(coverViewManager:)(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  v5 = *(v2 + 40);
  *(v2 + 40) = v4;
  v6 = v4;

  swift_weakAssign();
  if (a1)
  {
    CoverViewManager.$isCovering.getter();
    OUTLINED_FUNCTION_0_8();
    swift_allocObject();
    swift_weakInit();
    sub_1D7E0A1A8(0, &qword_1EDBB2F40);
    sub_1D818F4E4();
  }
}

uint64_t sub_1D8028718()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D80284F4();
  }

  return result;
}

uint64_t sub_1D8028770(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    [a1 setAutoresizingMask_];
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = v3;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1D8029EAC;
    *(v6 + 24) = v5;
    v10[4] = sub_1D7E74D6C;
    v10[5] = v6;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1D7E74D74;
    v10[3] = &block_descriptor_36;
    v7 = _Block_copy(v10);
    v8 = a1;
    v9 = v3;

    [v4 performWithoutAnimation_];

    _Block_release(v7);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if (v7)
    {
      __break(1u);
    }
  }

  return result;
}

Swift::Void __swiftcall CoverViewManager.bringCoverViewToFront()()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = v1;
      v5 = [v3 view];
      if (v5)
      {
        v6 = v5;
        [v5 bringSubviewToFront_];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1D80289BC(void *a1, unsigned __int8 *a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [Strong view];

    if (!v12)
    {
      __break(1u);
      goto LABEL_22;
    }

    v13 = [v12 window];

    if (v13)
    {
      v14 = [v13 windowScene];

      if (v14)
      {
        v15 = [v14 activationState];

        v16 = v15 < 2 ? v9 : 0;
        if (v16 == 1)
        {
          [a1 setAlpha_];
          v17 = swift_unknownObjectWeakLoadStrong();
          if (!v17)
          {
LABEL_12:
            sub_1D8028770(a1);
            v20 = *(a5 + 56);
            v21 = v20;
            v22 = a1;
            sub_1D8028578(a1);
            v23 = objc_opt_self();
            v24 = swift_allocObject();
            v24[2] = v22;
            v24[3] = nullsub_1;
            v24[4] = 0;
            v39 = sub_1D802A03C;
            v40 = v24;
            v35 = MEMORY[0x1E69E9820];
            v36 = 1107296256;
            v37 = sub_1D7E64940;
            v38 = &block_descriptor_43_2;
            v25 = _Block_copy(&v35);
            v26 = v22;

            v27 = swift_allocObject();
            v27[2] = v20;
            v27[3] = a3;
            v27[4] = a4;
            v39 = sub_1D802A06C;
            v40 = v27;
            v35 = MEMORY[0x1E69E9820];
            v36 = 1107296256;
            v37 = sub_1D7EB30D4;
            v38 = &block_descriptor_50_0;
            v28 = _Block_copy(&v35);
            v29 = v21;
            sub_1D7E38808(a3);

            [v23 animateWithDuration:2 delay:v25 options:v28 animations:0.15 completion:0.0];

            _Block_release(v28);
            _Block_release(v25);
            return;
          }

          v18 = v17;
          v19 = [v17 view];

          if (v19)
          {
            [v19 addSubview_];

            goto LABEL_12;
          }

          goto LABEL_23;
        }
      }
    }
  }

  v30 = swift_unknownObjectWeakLoadStrong();
  if (v30)
  {
    v31 = v30;
    v32 = [v30 view];

    if (v32)
    {
      [v32 addSubview_];

      goto LABEL_16;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

LABEL_16:
  sub_1D8028770(a1);
  v33 = *(a5 + 56);
  if (v33)
  {
    [v33 removeFromSuperview];
  }

  v34 = a1;
  sub_1D8028578(a1);
  if (a3)
  {
    a3();
  }
}

void sub_1D8028D40(void *a1, unsigned __int8 *a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v7 = v6;
  v13 = *a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = [Strong view];

    if (!v16)
    {
      __break(1u);
      goto LABEL_22;
    }

    v17 = [v16 window];

    if (v17)
    {
      v18 = [v17 windowScene];

      if (v18)
      {
        v19 = [v18 activationState];

        v20 = v19 < 2 ? v13 : 0;
        if (v20 == 1)
        {
          [a1 setAlpha_];
          v21 = swift_unknownObjectWeakLoadStrong();
          if (!v21)
          {
LABEL_12:
            sub_1D8028770(a1);
            v24 = *(v7 + 56);
            v25 = v24;
            v26 = a1;
            sub_1D8028578(a1);
            v39 = objc_opt_self();
            v27 = swift_allocObject();
            v27[2] = v26;
            v27[3] = a3;
            v27[4] = a4;
            v44 = sub_1D8029DD0;
            v45 = v27;
            aBlock = MEMORY[0x1E69E9820];
            v41 = 1107296256;
            v42 = sub_1D7E64940;
            v43 = &block_descriptor_42;
            v28 = _Block_copy(&aBlock);
            v29 = v26;

            v30 = swift_allocObject();
            v30[2] = v24;
            v30[3] = a5;
            v30[4] = a6;
            v44 = sub_1D8029DD4;
            v45 = v30;
            aBlock = MEMORY[0x1E69E9820];
            v41 = 1107296256;
            v42 = sub_1D7EB30D4;
            v43 = &block_descriptor_15_1;
            v31 = _Block_copy(&aBlock);
            v32 = v25;
            sub_1D7E38808(a5);

            [v39 animateWithDuration:2 delay:v28 options:v31 animations:0.15 completion:0.0];

            _Block_release(v31);
            _Block_release(v28);
            return;
          }

          v22 = v21;
          v23 = [v21 view];

          if (v23)
          {
            [v23 addSubview_];

            goto LABEL_12;
          }

          goto LABEL_23;
        }
      }
    }
  }

  v33 = swift_unknownObjectWeakLoadStrong();
  if (v33)
  {
    v34 = v33;
    v35 = [v33 view];

    if (v35)
    {
      [v35 addSubview_];

      goto LABEL_16;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

LABEL_16:
  v36 = sub_1D8028770(a1);
  a3(v36);
  v37 = *(v7 + 56);
  if (v37)
  {
    [v37 removeFromSuperview];
  }

  v38 = a1;
  sub_1D8028578(a1);
  if (a5)
  {
    a5();
  }
}

void sub_1D80290DC(unsigned __int8 *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  CoverViewManager.cover.getter();
  if (v30 == 7 && !v29)
  {
    v8 = vorrq_s8(vorrq_s8(v25, v27), vorrq_s8(v26, v28));
    if (!(*&vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL)) | v24 | aBlock))
    {
      v9 = sub_1D7E298F0(&aBlock);
      if (!a2)
      {
        return;
      }

      goto LABEL_18;
    }
  }

  sub_1D7E298F0(&aBlock);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [Strong view];

    if (!v12)
    {
      __break(1u);
      return;
    }

    v13 = [v12 window];

    if (v13)
    {
      v14 = [v13 windowScene];

      if (v14)
      {
        v15 = [v14 activationState];

        v16 = v15 < 2 ? v7 : 0;
        if (v16 == 1)
        {
          v17 = objc_opt_self();
          v18 = swift_allocObject();
          v18[2] = a4;
          v18[3] = nullsub_1;
          v18[4] = 0;
          v26.i64[0] = sub_1D802A070;
          v26.i64[1] = v18;
          aBlock = MEMORY[0x1E69E9820];
          v24 = 1107296256;
          v25.i64[0] = sub_1D7E64940;
          v25.i64[1] = &block_descriptor_57;
          v19 = _Block_copy(&aBlock);

          v20 = swift_allocObject();
          v20[2] = a4;
          v20[3] = a2;
          v20[4] = a3;
          v26.i64[0] = sub_1D802A040;
          v26.i64[1] = v20;
          aBlock = MEMORY[0x1E69E9820];
          v24 = 1107296256;
          v25.i64[0] = sub_1D7EB30D4;
          v25.i64[1] = &block_descriptor_64_0;
          v21 = _Block_copy(&aBlock);

          sub_1D7E38808(a2);

          [v17 animateWithDuration:2 delay:v19 options:v21 animations:0.15 completion:0.0];
          _Block_release(v21);
          _Block_release(v19);
          return;
        }
      }
    }
  }

  v22 = *(a4 + 56);
  if (v22)
  {
    [v22 removeFromSuperview];
  }

  sub_1D8028578(0);
  if (a2)
  {
LABEL_18:
    a2(v9);
  }
}

void sub_1D8029410(unsigned __int8 *a1, void (*a2)(void), uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v6 = v5;
  v11 = *a1;
  CoverViewManager.cover.getter();
  if (v35 == 7 && !v34)
  {
    v12 = vorrq_s8(vorrq_s8(v30, v32), vorrq_s8(v31, v33));
    if (!(*&vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL)) | v29 | aBlock))
    {
      v13 = sub_1D7E298F0(&aBlock);
      v14 = (a2)(v13);
      if (!a4)
      {
        return;
      }

      goto LABEL_18;
    }
  }

  sub_1D7E298F0(&aBlock);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = [Strong view];

    if (!v17)
    {
      __break(1u);
      return;
    }

    v18 = [v17 window];

    if (v18)
    {
      v19 = [v18 windowScene];

      if (v19)
      {
        v20 = [v19 activationState];

        v21 = v20 < 2 ? v11 : 0;
        if (v21 == 1)
        {
          v22 = objc_opt_self();
          v23 = swift_allocObject();
          v23[2] = v6;
          v23[3] = a2;
          v23[4] = a3;
          v31.i64[0] = sub_1D8029E94;
          v31.i64[1] = v23;
          aBlock = MEMORY[0x1E69E9820];
          v29 = 1107296256;
          v30.i64[0] = sub_1D7E64940;
          v30.i64[1] = &block_descriptor_21_1;
          v24 = _Block_copy(&aBlock);

          v25 = swift_allocObject();
          v25[2] = v6;
          v25[3] = a4;
          v25[4] = a5;
          v31.i64[0] = sub_1D8029EA0;
          v31.i64[1] = v25;
          aBlock = MEMORY[0x1E69E9820];
          v29 = 1107296256;
          v30.i64[0] = sub_1D7EB30D4;
          v30.i64[1] = &block_descriptor_27_0;
          v26 = _Block_copy(&aBlock);

          sub_1D7E38808(a4);

          [v22 animateWithDuration:2 delay:v24 options:v26 animations:0.15 completion:0.0];
          _Block_release(v26);
          _Block_release(v24);
          return;
        }
      }
    }
  }

  a2();
  v27 = *(v6 + 56);
  if (v27)
  {
    [v27 removeFromSuperview];
  }

  sub_1D8028578(0);
  if (a4)
  {
LABEL_18:
    a4(v14);
  }
}

uint64_t CoverViewManager.present(cover:animation:animateAlongsideBlock:completion:)(uint64_t a1, unsigned __int8 *a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v11 = *a2;
  v12 = sub_1D7FC1E74();
  if (v12)
  {
    v13 = v12;
    if (sub_1D8190B24())
    {
      v14 = objc_allocWithZone(type metadata accessor for CoverContainerView());
      v13 = sub_1D7FC27F4(v13);
    }

    v16[0] = v11;
    sub_1D8028D40(v13, v16, a3, a4, a5, a6);
  }

  else
  {
    v16[0] = v11;
    sub_1D8029410(v16, a3, a4, a5, a6);
  }

  sub_1D7E298B0(a1, v16);
  return CoverViewManager.cover.setter(v16);
}

BOOL sub_1D80298D8()
{
  Strong = swift_weakLoadStrong();
  v2 = *(v0 + 56);
  if (!Strong)
  {
    return v2 != 0;
  }

  if (v2)
  {

    return 1;
  }

  else
  {
    v4 = sub_1D80298D8();

    return v4 & 1;
  }
}

uint64_t sub_1D8029940(uint64_t a1, uint64_t (*a2)(id))
{
  v3 = *(a1 + 56);
  if (v3)
  {
    v3 = [v3 setAlpha_];
  }

  return a2(v3);
}

void sub_1D8029984(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = *(a2 + 56);
  if (v4)
  {
    [v4 removeFromSuperview];
  }

  sub_1D8028578(0);
  if (a3)
  {
    a3();
  }
}

id sub_1D80299E0(void *a1, id a2)
{
  result = [a2 view];
  if (result)
  {
    v4 = result;
    [result bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    return [a1 setFrame_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CoverViewManager.deinit()
{

  MEMORY[0x1DA715E30](v0 + 24);

  swift_weakDestroy();

  return v0;
}

uint64_t CoverViewManager.__deallocating_deinit()
{
  CoverViewManager.deinit();

  return swift_deallocClassInstance();
}

id CoverViewManagerNotification.viewController.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t CoverViewManagerNotification.init(notification:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!sub_1D818E444())
  {
    sub_1D818E454();
    OUTLINED_FUNCTION_4_3();
    (*(v7 + 8))(a1);
    v9 = 0u;
    v10 = 0u;
    goto LABEL_7;
  }

  strcpy(&v9, "viewController");
  HIBYTE(v9) = -18;
  sub_1D8192124();
  sub_1D7EDF46C();

  sub_1D818E454();
  OUTLINED_FUNCTION_4_3();
  (*(v4 + 8))(a1);
  sub_1D7F060D8(v8);
  if (!*(&v10 + 1))
  {
LABEL_7:
    result = sub_1D7E7BAAC(&v9);
    v6 = 0;
    goto LABEL_8;
  }

  sub_1D7E0A1A8(0, &qword_1EDBB31B0);
  result = swift_dynamicCast();
  v6 = v8[0];
  if (!result)
  {
    v6 = 0;
  }

LABEL_8:
  *a2 = v6;
  return result;
}

void sub_1D8029C8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D8029D1C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1D8029D70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_1D8029DD8()
{
  if (!qword_1EDBB2C18)
  {
    sub_1D8029E30();
    v0 = sub_1D81925C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB2C18);
    }
  }
}

void sub_1D8029E30()
{
  if (!qword_1EDBB2ED0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBB2ED0);
    }
  }
}

uint64_t objectdestroy_8Tm_0()
{

  OUTLINED_FUNCTION_0_127();

  return swift_deallocObject();
}

uint64_t objectdestroy_11Tm()
{
  if (*(v0 + 24))
  {
  }

  OUTLINED_FUNCTION_0_127();

  return swift_deallocObject();
}

id sub_1D8029F68()
{
  v1 = *(v0 + 24);
  result = [*(v0 + 16) removeFromSuperview];
  if (v1)
  {
    return v1(result);
  }

  return result;
}

uint64_t objectdestroy_17Tm_0()
{

  OUTLINED_FUNCTION_0_127();

  return swift_deallocObject();
}

uint64_t objectdestroy_23Tm_2()
{

  if (*(v0 + 24))
  {
  }

  OUTLINED_FUNCTION_0_127();

  return swift_deallocObject();
}

uint64_t BlueprintLayoutSection.framePosition.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 52);
  v4 = *v3;
  *a2 = *v3;
  v5 = *(v3 + 8);
  *(a2 + 8) = v5;
  return sub_1D7E79C5C(v4, v5);
}

uint64_t BlueprintLayoutSection.viewState.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 56);
  v4 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v4;
  return sub_1D8190DB4();
}

double BlueprintLayoutSection.append(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for BlueprintLayoutItem();
  OUTLINED_FUNCTION_2();
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(v10 + 16))(v14 - v9, a1, v6, v8);
  sub_1D8191484();
  sub_1D8191434();
  sub_1D8190DB4();
  BlueprintLayoutSectionViewState.init<A>(items:)();
  *v14 = *&v14[3];
  v11 = v14[5];
  v12 = v3 + *(a2 + 56);

  result = *v14;
  *v12 = *v14;
  *(v12 + 16) = v11;
  return result;
}

double BlueprintLayoutSection.maxItemHeight.getter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10[1] = *(a1 + 16);
  v10[2] = v2;
  WitnessTable = swift_getWitnessTable();
  v5 = sub_1D7E6CDC0(sub_1D802A2F8, v10, a1, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v4);
  v6 = COERCE_DOUBLE(sub_1D802A2B4(v5));
  v8 = v7;

  result = v6;
  if (v8)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1D802A2B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

Swift::Int sub_1D802A370@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = BlueprintLayoutSection.index(after:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D802A39C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1D802A3F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69900](a1, WitnessTable);
}

double sub_1D802A4B4()
{
  v15 = *(v0 + 24);
  v16 = *(v0 + 16);
  sub_1D802A448();
  v17.origin.x = OUTLINED_FUNCTION_0_128();
  MinX = CGRectGetMinX(v17);
  if ((v1 & 1) == 0 && *(v0 + 32) < MinX)
  {
    MinX = *(v0 + 32);
  }

  v14 = MinX;
  sub_1D802A448();
  v18.origin.x = OUTLINED_FUNCTION_0_128();
  MaxX = CGRectGetMaxX(v18);
  if ((v1 & 1) == 0 && MaxX <= *(v0 + 40))
  {
    MaxX = *(v0 + 40);
  }

  v13 = MaxX;
  sub_1D802A448();
  v19.origin.x = OUTLINED_FUNCTION_0_128();
  MinY = CGRectGetMinY(v19);
  if ((v1 & 1) == 0 && *(v0 + 48) < MinY)
  {
    MinY = *(v0 + 48);
  }

  v12 = MinY;
  sub_1D802A448();
  v20.origin.x = OUTLINED_FUNCTION_0_128();
  MaxY = CGRectGetMaxY(v20);
  if ((v1 & 1) == 0 && MaxY <= *(v0 + 56))
  {
    MaxY = *(v0 + 56);
  }

  sub_1D802A448();
  v21.origin.x = OUTLINED_FUNCTION_0_128();
  Width = CGRectGetWidth(v21);
  if ((v1 & 1) == 0 && *(v0 + 64) < Width)
  {
    Width = *(v0 + 64);
  }

  sub_1D802A448();
  v22.origin.x = OUTLINED_FUNCTION_0_128();
  v7 = CGRectGetWidth(v22);
  if ((v1 & 1) == 0 && v7 <= *(v0 + 72))
  {
    v7 = *(v0 + 72);
  }

  sub_1D802A448();
  v23.origin.x = OUTLINED_FUNCTION_0_128();
  Height = CGRectGetHeight(v23);
  if ((v1 & 1) == 0 && *(v0 + 80) < Height)
  {
    Height = *(v0 + 80);
  }

  sub_1D802A448();
  v24.origin.x = OUTLINED_FUNCTION_0_128();
  v9 = CGRectGetHeight(v24);
  if ((v1 & 1) == 0 && v9 <= *(v0 + 88))
  {
    v9 = *(v0 + 88);
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v16;
  *(v10 + 24) = v15;
  *(v10 + 32) = v14;
  *(v10 + 40) = v13;
  result = v12;
  *(v10 + 48) = v12;
  *(v10 + 56) = MaxY;
  *(v10 + 64) = Width;
  *(v10 + 72) = v7;
  *(v10 + 80) = Height;
  *(v10 + 88) = v9;
  return result;
}

__n128 sub_1D802A670(double a1, double a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(v2 + 48);
  *(v5 + 32) = *(v2 + 32);
  *(v5 + 48) = v6;
  result = *(v2 + 64);
  v8 = *(v2 + 80);
  *(v5 + 64) = result;
  *(v5 + 80) = v8;
  return result;
}

id HiddenNavigationBarCompressionAnimation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HiddenNavigationBarCompressionAnimation.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HiddenNavigationBarCompressionAnimation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t StateCommand.__deallocating_deinit()
{
  Command.deinit();

  return swift_deallocClassInstance();
}

void sub_1D802A9A0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

void sub_1D802AA48(uint64_t a1, SEL *a2)
{
  v5 = [v2 searchResultsController];
  if (v5)
  {
    v6 = v5;
    v7 = swift_dynamicCastObjCProtocolConditional();
    if (v7)
    {
      [v7 *a2];
    }
  }
}

uint64_t static UIWindow.keyWindowScene.getter()
{
  if (qword_1EDBBC7A8 != -1)
  {
    OUTLINED_FUNCTION_0_130();
  }

  return swift_unknownObjectWeakLoadStrong();
}

void (*static UIWindow.keyWindowScene.modify(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = v1;
  if (qword_1EDBBC7A8 != -1)
  {
    OUTLINED_FUNCTION_0_130();
  }

  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1D802AB9C;
}

void sub_1D802AB9C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    static UIWindow.keyWindowScene.setter(v2);
  }

  else
  {
    static UIWindow.keyWindowScene.setter(*a1);
  }
}

void sub_1D802AC4C(void *a1)
{
  v1 = a1;
  UIWindow.didBecomeKeyWindow()();
}

id static UIWindow.didBecomeKeyWindowScene.getter()
{
  if (qword_1EDBBC790 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDBBC798;

  return v1;
}

uint64_t TabBarSplitViewState.hashValue.getter(char a1)
{
  sub_1D81927E4();
  MEMORY[0x1DA714A00](a1 & 1);
  return sub_1D8192824();
}

uint64_t sub_1D802AD8C()
{
  v1 = *v0;
  sub_1D81927E4();
  TabBarSplitViewState.hash(into:)(v3, v1);
  return sub_1D8192824();
}

unint64_t sub_1D802ADD4()
{
  result = qword_1ECA0F900;
  if (!qword_1ECA0F900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0F900);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TabBarSplitViewState(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t BlueprintCollectionViewDataSource.dragReorderDelegate.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t (*BlueprintCollectionViewDataSource.dragReorderDelegate.modify())()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7_1();
  return j__swift_endAccess;
}

uint64_t BlueprintCollectionViewDataSource.sectionCollapsibleStateManager.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
}

uint64_t BlueprintCollectionViewDataSource.sectionCollapsibleStateManager.setter()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  v3 = *(v2 + 200);
  swift_beginAccess();
  *(v1 + v3) = v0;
}

uint64_t (*BlueprintCollectionViewDataSource.sectionCollapsibleStateManager.modify())()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7_1();
  return j_j__swift_endAccess;
}

id BlueprintCollectionViewDataSource.__allocating_init(blueprintProvider:blueprintLayoutProvider:blueprintViewCellProvider:blueprintViewSupplementaryViewProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_allocWithZone(v4);
  v8 = OUTLINED_FUNCTION_4_8();
  return BlueprintCollectionViewDataSource.init(blueprintProvider:blueprintLayoutProvider:blueprintViewCellProvider:blueprintViewSupplementaryViewProvider:)(v8, v9, a3, a4);
}

void sub_1D802B150()
{
  sub_1D7E3F0B8(0, qword_1EDBB0FD8, type metadata accessor for CollectionViewCell);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = OUTLINED_FUNCTION_14_0();
  sub_1D7E3F564(v2, v3, qword_1EDBB0FD8, type metadata accessor for CollectionViewCell);
  v4 = sub_1D8190EE4();

  [v0 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v4];
}

void sub_1D802B210(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v31 = a4;
  v6 = *a3;
  v32 = sub_1D818E994();
  v7 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v6 + 88);
  v30[1] = a3;
  v11 = *(v6 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedConformanceWitness();
  v38 = AssociatedTypeWitness;
  v39 = v13;
  v33 = v15;
  v34 = AssociatedConformanceWitness;
  v40 = AssociatedConformanceWitness;
  v41 = v15;
  v16 = type metadata accessor for Blueprint();
  v35 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v30 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v30[0] = Strong;
    BlueprintProviderType.blueprint.getter(v11, v10);
    swift_getWitnessTable();
    v38 = AssociatedTypeWitness;
    v39 = v13;
    v40 = v34;
    v41 = v33;
    type metadata accessor for BlueprintSection();
    swift_getWitnessTable();
    sub_1D81918C4();
    (*(v35 + 8))(v18, v16);
    if (v37 != 1)
    {
      v20 = v36;
      swift_checkMetadataState();
      swift_getWitnessTable();
      v21 = sub_1D8191834();
      if (v21 < 0)
      {
        __break(1u);
        return;
      }

      v22 = v21;
      if (v21)
      {
        v35 = a1;
        v38 = MEMORY[0x1E69E7CC0];
        sub_1D7EB0144();
        v23 = 0;
        v24 = v38;
        v25 = v32;
        do
        {
          MEMORY[0x1DA710B40](v23, v20);
          v38 = v24;
          v26 = *(v24 + 16);
          if (v26 >= *(v24 + 24) >> 1)
          {
            sub_1D7EB0144();
            v25 = v32;
            v24 = v38;
          }

          ++v23;
          *(v24 + 16) = v26 + 1;
          (*(v7 + 32))(v24 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v26, v9, v25);
        }

        while (v22 != v23);
        v27 = v31;
      }

      else
      {
        v27 = v31;
      }

      BlueprintSectionCollapsibleStateManager.state(for:)(&v38);
      v28 = v38;
      v29 = sub_1D8191304();

      if (v28)
      {
        [v27 insertItemsAtIndexPaths_];
      }

      else
      {
        [v27 deleteItemsAtIndexPaths_];
      }
    }
  }
}

Swift::Void __swiftcall BlueprintCollectionViewDataSource.registerDiffableDataSource(in:)(UICollectionView *in)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v11 = in;
  (*(*((v4 & v3) + 0x80) + 56))(&v11, *((v4 & v3) + 0x60));
  v11 = in;
  (*(*((v4 & v3) + 0x88) + 80))(&v11, *((v4 & v3) + 0x68));
  OUTLINED_FUNCTION_62();
  sub_1D7E3F168(v5, v6, v7);
  OUTLINED_FUNCTION_62();
  sub_1D7E3F168(v8, v9, v10);
}

uint64_t sub_1D802B7EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v16[1] = a1;
  v16[2] = a2;
  v17 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for BlueprintItem();
  v16[0] = sub_1D8191E84();
  v6 = *(v16[0] - 8);
  MEMORY[0x1EEE9AC00](v16[0]);
  v8 = v16 - v7;
  v9 = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedConformanceWitness();
  v18 = v9;
  v19 = AssociatedTypeWitness;
  v20 = v10;
  v21 = AssociatedConformanceWitness;
  type metadata accessor for Blueprint();
  Blueprint.item(indexPath:)();
  if (__swift_getEnumTagSinglePayload(v8, 1, v5) == 1)
  {
    result = (*(v6 + 8))(v8, v16[0]);
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = BlueprintItem.identifier.getter();
    v13 = v14;
    result = (*(*(v5 - 8) + 8))(v8, v5);
  }

  v15 = v17;
  *v17 = v12;
  v15[1] = v13;
  return result;
}

uint64_t sub_1D802BA60(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(v3, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D802BAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v34 = a4;
  v35 = a2;
  v36 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v40 = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for Blueprint();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - v12;
  sub_1D7E1ADB0(0, &qword_1EDBBC690, MEMORY[0x1E6969C28]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v32 - v15;
  v17 = sub_1D818E994();
  v33 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v21 = Strong;
  BlueprintProviderType.blueprint.getter(a5, a9);
  Blueprint.indexPath(for:)();
  (*(v11 + 8))(v13, v10);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {

    sub_1D7E73334(v16);
    return MEMORY[0x1E69E7CC0];
  }

  v22 = v33;
  (*(v33 + 32))(v19, v16, v17);
  swift_beginAccess();
  v23 = swift_unknownObjectWeakLoadStrong();
  if (!v23)
  {
LABEL_9:

    (*(v22 + 8))(v19, v17);
    return MEMORY[0x1E69E7CC0];
  }

  v24 = v23;
  type metadata accessor for SwipeActionCollectionView();
  v25 = swift_dynamicCastClass();
  if (!v25 || (v26 = v25, !sub_1D8082CC8()))
  {

    goto LABEL_9;
  }

  v28 = v27;
  ObjectType = swift_getObjectType();
  v30 = (*(v28 + 56))(v26, v19, ObjectType, v28);

  swift_unknownObjectRelease();
  (*(v22 + 8))(v19, v17);
  return v30;
}

BOOL BlueprintCollectionViewDataSource.collectionView(_:canMoveItemAt:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_7();
  v5 = v4;
  OUTLINED_FUNCTION_3_7();
  v7 = *(v6 + 152);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (!*(v2 + v7))
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_7();
  v9 = dragItems<A>(from:at:)(v2 + *(v8 + 160), a2, *(v5 + 80), *(v5 + 112));
  v10 = sub_1D7E36AB8(v9);

  return v10 != 0;
}

uint64_t sub_1D802BFF4(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1D818E994();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  v9 = a3;
  v10 = a1;
  LOBYTE(a1) = BlueprintCollectionViewDataSource.collectionView(_:canMoveItemAt:)(v10, v8);

  (*(v6 + 8))(v8, v5);
  return a1 & 1;
}

uint64_t BlueprintCollectionViewDataSource.collectionView(_:moveItemAt:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_7();
  v7 = (v3 + *(v6 + 152));
  OUTLINED_FUNCTION_7();
  result = swift_beginAccess();
  if (*v7)
  {
    v9 = v7[1];
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 16);
    swift_unknownObjectRetain();
    v11(a2, a3, ObjectType, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D802C1BC(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1D818E994();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  sub_1D818E924();
  sub_1D818E924();
  v12 = a3;
  v13 = a1;
  BlueprintCollectionViewDataSource.collectionView(_:moveItemAt:to:)(v13, v11, v8);

  v14 = *(v6 + 8);
  v14(v8, v5);
  return (v14)(v11, v5);
}

void BlueprintCollectionViewDataSource.collectionView(_:indexPathForIndexTitle:at:)()
{
  OUTLINED_FUNCTION_120();
  v111 = v1;
  v112 = v2;
  v105 = v3;
  v4 = *MEMORY[0x1E69E7D40];
  v116 = *v0;
  v101 = (v4 & v116);
  v5 = *((v4 & v116) + 0x70);
  v6 = *((v4 & v116) + 0x50);
  v7 = OUTLINED_FUNCTION_47_8();
  v8 = OUTLINED_FUNCTION_47_8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  v120 = v7;
  v121 = v8;
  v122 = AssociatedConformanceWitness;
  v123 = v10;
  type metadata accessor for BlueprintSection();
  OUTLINED_FUNCTION_9();
  v98 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_28_0();
  v91 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v110 = &v87 - v16;
  v97 = v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v108 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v95 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_28_0();
  v107 = v20 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v106 = &v87 - v23;
  v120 = v7;
  v121 = v8;
  v122 = AssociatedConformanceWitness;
  v123 = v10;
  v24 = type metadata accessor for Blueprint();
  WitnessTable = swift_getWitnessTable();
  v93 = sub_1D81923F4();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_94();
  v92 = v27;
  v94 = WitnessTable;
  v113 = sub_1D81923E4();
  OUTLINED_FUNCTION_9();
  v96 = v28;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_94();
  v114 = v30;
  OUTLINED_FUNCTION_6_2();
  swift_getWitnessTable();
  sub_1D8190E64();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_28_0();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v87 - v39;
  v115 = v6;
  v116 = v5;
  BlueprintProviderType.blueprint.getter(v6, v5);
  v41 = (*(v33 + 16))(v37, v40, v24);
  OUTLINED_FUNCTION_91(v41, &qword_1EDBB8570);
  if (!swift_dynamicCast())
  {
    v119 = 0;
    memset(v118, 0, sizeof(v118));
    sub_1D7E553A4(v118, &qword_1EDBB8568, &qword_1EDBB8570);
    MEMORY[0x1DA710AE0](&unk_1F52E4648);
    goto LABEL_7;
  }

  sub_1D7E05450(v118, &v120);
  if (sub_1D8191874() & 1) != 0 || (sub_1D81918B4(), swift_getWitnessTable(), v42 = sub_1D8191244(), v90 = v24, v117 = v42, MEMORY[0x1EEE9AC00](v42), v43 = v101, v45 = v101[11], v44 = v101[12], *(&v87 - 10) = v115, *(&v87 - 9) = v45, v46 = v43[13], v104 = v44, *(&v87 - 8) = v44, *(&v87 - 7) = v46, v103 = v46, v47 = v43[15], v48 = v43[16], *(&v87 - 6) = v116, *(&v87 - 5) = v47, v102 = v47, v49 = v43[17], v50 = v43[18], v101 = v48, *(&v87 - 4) = v48, *(&v87 - 3) = v49, v100 = v49, v99 = v50, *(&v87 - 2) = v50, *(&v87 - 1) = v40, sub_1D802D9F8(0, &qword_1ECA0F910, MEMORY[0x1E69E62F8]), sub_1D802D954(), sub_1D81911C4(), , v24 = v90, (BYTE8(v118[0])))
  {
    v51 = &unk_1F52E4618;
LABEL_5:
    MEMORY[0x1DA710AE0](v51);
    __swift_destroy_boxed_opaque_existential_1Tm(&v120);
LABEL_7:
    (*(v33 + 8))(v40, v24);
    OUTLINED_FUNCTION_100();
    return;
  }

  v89 = v45;
  v52 = *&v118[0];
  v53 = v123;
  v54 = v124;
  __swift_project_boxed_opaque_existential_1(&v120, v123);
  v55 = (*(v54 + 16))(&v117, v53, v54);
  if (v117)
  {
    MEMORY[0x1EEE9AC00](v55);
    v56 = v89;
    *(&v87 - 12) = v115;
    *(&v87 - 11) = v56;
    OUTLINED_FUNCTION_6_55(&v87);
    v57 = sub_1D81917D4();
    if (BYTE8(v118[0]))
    {
      v58 = v52;
    }

    else
    {
      v58 = *&v118[0];
    }

    OUTLINED_FUNCTION_5_45(v57, &unk_1EDBB2C40);
    v51 = swift_allocObject();
    v51[1] = xmmword_1D819FAC0;
    *(v51 + 4) = v58;
    *(v51 + 5) = 0;
    goto LABEL_5;
  }

  v87 = v52;
  v88 = v33;
  v59 = v94;
  v94 = v40;
  MEMORY[0x1DA7133A0](v24, v59);
  sub_1D81923C4();
  v60 = (v95 + 32);
  v61 = (v98 + 32);
  v98 += 8;
  v62 = v97;
  v63 = v110;
  v64 = v89;
  while (1)
  {
    v65 = v107;
    sub_1D81923D4();
    v66 = v106;
    (*v60)(v106, v65, v108);
    v67 = TupleTypeMetadata2;
    if (__swift_getEnumTagSinglePayload(v66, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v68 = *v66;
    v69 = (*v61)(v63, &v66[*(v67 + 48)], v62);
    MEMORY[0x1EEE9AC00](v69);
    *(&v87 - 12) = v115;
    *(&v87 - 11) = v64;
    OUTLINED_FUNCTION_6_55(&v87);
    OUTLINED_FUNCTION_7_5();
    swift_getWitnessTable();
    v63 = v110;
    v70 = sub_1D81917D4();
    if ((BYTE8(v118[0]) & 1) == 0)
    {
      v81 = v63;
      v82 = *&v118[0];
      OUTLINED_FUNCTION_5_45(v70, &unk_1EDBB2C40);
      v83 = swift_allocObject();
      *(v83 + 16) = xmmword_1D819FAC0;
      *(v83 + 32) = v68;
      *(v83 + 40) = v82;
      MEMORY[0x1DA710AE0]();
      OUTLINED_FUNCTION_27_16();
      v84(v81, v62);
      v85 = OUTLINED_FUNCTION_41_8();
      v86(v85);
      __swift_destroy_boxed_opaque_existential_1Tm(&v120);
      v33 = v88;
      v40 = v94;
      v24 = v90;
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_27_16();
    v71(v63, v62);
  }

  v72 = OUTLINED_FUNCTION_41_8();
  v73(v72);
  v74 = v91;
  v75 = v87;
  v24 = v90;
  v40 = v94;
  Blueprint.subscript.getter();
  v76 = BlueprintSection.endIndex.getter(v62);
  OUTLINED_FUNCTION_27_16();
  v78 = v77(v74, v62);
  v79 = __OFSUB__(v76, 1);
  v80 = v76 - 1;
  v33 = v88;
  if (!v79)
  {
    OUTLINED_FUNCTION_5_45(v78, &unk_1EDBB2C40);
    v51 = swift_allocObject();
    v51[1] = xmmword_1D819FAC0;
    *(v51 + 4) = v75;
    *(v51 + 5) = v80;
    goto LABEL_5;
  }

  __break(1u);
}

BOOL sub_1D802CD64()
{
  v6[0] = swift_getAssociatedTypeWitness();
  v6[1] = swift_getAssociatedTypeWitness();
  v6[2] = swift_getAssociatedConformanceWitness();
  v6[3] = swift_getAssociatedConformanceWitness();
  v0 = type metadata accessor for BlueprintSection();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - v2;
  type metadata accessor for Blueprint();
  Blueprint.subscript.getter();
  swift_getWitnessTable();
  v4 = sub_1D8191874();
  (*(v1 + 8))(v3, v0);
  return (v4 & 1) == 0;
}

uint64_t sub_1D802CF3C(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v5 + 16))(v16 - v4, a1, AssociatedTypeWitness, v3);
  sub_1D7E069F0(0, &qword_1ECA0F920);
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v16, v18);
    v6 = v19;
    v7 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(v7 + 8))(v6, v7);
    v8 = sub_1D8190FC4();
    v10 = v9;

    if (v8 == sub_1D8190FC4() && v10 == v11)
    {

      v14 = 1;
    }

    else
    {
      v13 = sub_1D8192634();

      v14 = v13 ^ 1;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  else
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_1D7E553A4(v16, &unk_1ECA0F928, &qword_1ECA0F920);
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1D802D160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[0] = a2;
  v21[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = v21 - v6;
  v8 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  v24[0] = AssociatedTypeWitness;
  v24[1] = v8;
  v24[2] = AssociatedConformanceWitness;
  v25 = v10;
  type metadata accessor for BlueprintSection();
  swift_getWitnessTable();
  if (sub_1D8191874())
  {
    goto LABEL_9;
  }

  (*(v5 + 16))(v7, a1, AssociatedTypeWitness);
  sub_1D7E069F0(0, &qword_1ECA0F920);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    sub_1D7E553A4(v22, &unk_1ECA0F928, &qword_1ECA0F920);
LABEL_9:
    v19 = 0;
    return v19 & 1;
  }

  sub_1D7E05450(v22, v24);
  v11 = v25;
  v12 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  (*(v12 + 8))(v11, v12);
  v13 = sub_1D8190FC4();
  v15 = v14;

  if (v13 == sub_1D8190FC4() && v15 == v16)
  {

    v19 = 1;
  }

  else
  {
    v18 = sub_1D8192634();

    v19 = v18 ^ 1;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  return v19 & 1;
}

id sub_1D802D434(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1D818E994();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8190F14();
  v9 = a3;
  v10 = a1;
  BlueprintCollectionViewDataSource.collectionView(_:indexPathForIndexTitle:at:)();

  v11 = sub_1D818E8E4();
  (*(v6 + 8))(v8, v5);

  return v11;
}

id BlueprintCollectionViewDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D802D5E0(uint64_t a1)
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10_2();
  (*(v2 + 8))(a1 + v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10_2();
  (*(v4 + 8))(a1 + v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10_2();
  (*(v6 + 8))(a1 + v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10_2();
  (*(v8 + 8))(a1 + v9);
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();
}

void (*sub_1D802D794(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = BlueprintCollectionViewDataSource.dragReorderDelegate.modify();
  return sub_1D7F4150C;
}

id HiddenView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

id HiddenView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id HiddenView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

unint64_t sub_1D802D954()
{
  result = qword_1ECA0F918;
  if (!qword_1ECA0F918)
  {
    sub_1D802D9F8(255, &qword_1ECA0F910, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0F918);
  }

  return result;
}

void sub_1D802D9F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6530]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *PillViewAssetHandles.color.getter()
{
  v1 = *(v0 + 120);
  v2 = v1;
  return v1;
}

uint64_t PillViewAssetHandles.init(x1:x2:x3:color:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1D7E05450(a1, a5);
  sub_1D7E05450(a2, a5 + 40);
  result = sub_1D7E05450(a3, a5 + 80);
  *(a5 + 120) = a4;
  return result;
}

BOOL static PillViewAssetHandles.== infix(_:_:)(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = OUTLINED_FUNCTION_1_97();
  v6 = v5(v4);
  v8 = v7;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v9 = OUTLINED_FUNCTION_0_131();
  if (v6 == v10(v9) && v8 == v11)
  {
  }

  else
  {
    v13 = OUTLINED_FUNCTION_2_90();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  __swift_project_boxed_opaque_existential_1(a1 + 5, a1[8]);
  v14 = OUTLINED_FUNCTION_1_97();
  v16 = v15(v14);
  v18 = v17;
  __swift_project_boxed_opaque_existential_1(a2 + 5, a2[8]);
  v19 = OUTLINED_FUNCTION_0_131();
  if (v16 == v20(v19) && v18 == v21)
  {
  }

  else
  {
    v23 = OUTLINED_FUNCTION_2_90();

    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  __swift_project_boxed_opaque_existential_1(a1 + 10, a1[13]);
  v24 = OUTLINED_FUNCTION_1_97();
  v26 = v25(v24);
  v28 = v27;
  __swift_project_boxed_opaque_existential_1(a2 + 10, a2[13]);
  v29 = OUTLINED_FUNCTION_0_131();
  if (v26 == v30(v29) && v28 == v31)
  {
  }

  else
  {
    v33 = OUTLINED_FUNCTION_2_90();

    if ((v33 & 1) == 0)
    {
      return 0;
    }
  }

  v35 = a1[15];
  v36 = a2[15];
  result = (v35 | v36) == 0;
  if (v35)
  {
    if (v36)
    {
      sub_1D7E9F44C();
      v37 = v36;
      v38 = v35;
      v39 = sub_1D8191CC4();

      return v39 & 1;
    }
  }

  return result;
}

uint64_t sub_1D802DDDC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1D802DE1C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_1D802DFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_120();
  v22 = v21;
  v24 = v23;
  v52 = v26;
  v53 = v25;
  v54 = v27;
  v29 = v28;
  v51 = v28;
  v31 = v30;
  v33 = v32;
  v55 = a21;
  v56 = v34;
  v35 = *(*v30 + 88);
  v36 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v38 = v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v49 - v40;
  v50 = v35;
  *(v33 + 24) = type metadata accessor for Command();
  *(v33 + 32) = &protocol witness table for Command<A>;
  *v33 = v31;
  v42 = v52;
  if (v24)
  {
    v43 = v22;
  }

  else
  {
    v42 = v22;
    v43 = 0;
  }

  *(v33 + 40) = v53;
  *(v33 + 48) = v54;
  *(v33 + 56) = v42;
  *(v33 + 64) = v24;
  *(v33 + 72) = v43;
  *(v33 + 80) = v24 != 0;
  (*(v38 + 16))(v41, v29, v36);
  v44 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = v35;
  *(v45 + 24) = v31;
  v46 = *(v38 + 32);
  v46(v45 + v44, v41, v36);
  *(v33 + 88) = sub_1D802EBF0;
  *(v33 + 96) = v45;
  v46(v41, v51, v36);
  v47 = swift_allocObject();
  *(v47 + 16) = v50;
  *(v47 + 24) = v31;
  v46(v47 + v44, v41, v36);
  *(v33 + 104) = sub_1D802EDBC;
  *(v33 + 112) = v47;
  v48 = v55;
  *(v33 + 120) = v56;
  *(v33 + 128) = v48;
  swift_retain_n();
  OUTLINED_FUNCTION_100();
}

void KeyCommandItem.init<A, B>(command:context:input:discoverabilityInput:modifierFlags:title:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v39 = v2;
  v40 = v3;
  v37 = v4;
  v38 = v5;
  v35 = v7;
  v36 = v6;
  v41 = v8;
  v10 = v9;
  v11 = *v9;
  v34 = *(*v9 + 136);
  v12 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v18 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v31 - v20;
  v22 = *(v1 + 2);
  v32 = *(v1 + 3);
  v33 = v22;
  v23 = *(v14 + 16);
  v31 = *v1;
  v24 = v41;
  v23(&v31 - v20, v41, v12);
  v23(v18, v24, v12);
  v25 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = v34;
  *(v26 + 3) = *(v11 + 144);
  *(v26 + 4) = *(v11 + 152);
  *(v26 + 5) = v10;
  (*(v14 + 32))(&v26[v25], v18, v12);
  v27 = &v26[(v16 + v25 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v27 = v31;
  v28 = v32;
  *(v27 + 2) = v33;
  *(v27 + 3) = v28;

  sub_1D802DFE0(v29, v21, v36, v37, v38, v39, v40, sub_1D802E5D0, v26, v30, v31, *(&v31 + 1), v32, v33, v34, v35, v36, v37, v38, v39, v40);
  (*(v14 + 8))(v41, v12);
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D802E424(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a7;
  v24 = a8;
  v22 = a6;
  v12 = *a3;
  v13 = *(*a3 + 144);
  v14 = sub_1D8191E84();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - v16;
  ObjectType = swift_getObjectType();
  (*(a2 + 80))(a3, a4, *(v12 + 136), v13, *(v12 + 152), ObjectType, a2);
  v25 = a5;
  v26 = v22;
  v27 = v23;
  v28 = v24;
  v19 = type metadata accessor for StateCommandValue();
  StateCommandValue.value(for:)(v17, v19, &v29);
  (*(v15 + 8))(v17, v14);
  return v29;
}

uint64_t sub_1D802E5D0()
{
  v3 = OUTLINED_FUNCTION_4_56();
  OUTLINED_FUNCTION_15_15(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v9 = *(v1 + 40);
  v10 = (v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];

  return sub_1D802E424(v2, v0, v9, v1 + v8, v11, v12, v13, v14);
}

uint64_t sub_1D802E7DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a6;
  v27 = a7;
  v24 = a4;
  v25 = a5;
  v9 = *a3;
  v10 = *(*a3 + 144);
  v11 = sub_1D8191E84();
  v29 = *(v11 - 8);
  v30 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = *(v9 + 136);
  v28 = sub_1D8191E84();
  v15 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v17 = &v23 - v16;
  ObjectType = swift_getObjectType();
  (*(a2 + 72))(a3, v14, ObjectType, a2);
  v19 = *(v9 + 152);
  (*(a2 + 80))(a3, v17, v14, v10, v19, ObjectType, a2);
  v35 = v24;
  v36 = v25;
  v37 = v26;
  v38 = v27;
  v31 = v10;
  v32 = v14;
  v33 = MEMORY[0x1E69E6158];
  v34 = v19;
  v20 = type metadata accessor for StateCommandContextValue();
  StateCommandContextValue.value(for:context:)(v13, v17, v20, &v31);
  if (v32)
  {
    v21 = v31;
  }

  else
  {
    v21 = 0;
  }

  (*(v29 + 8))(v13, v30);
  (*(v15 + 8))(v17, v28);
  return v21;
}

uint64_t sub_1D802EA7C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1D802EABC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D802EB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v9 = *a4;
  ObjectType = swift_getObjectType();
  return (*(a2 + 8))(a4, a5, a3, *(v9 + 88), ObjectType, a2);
}

uint64_t sub_1D802EBF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_1D8191E84() - 8);
  v8 = *(v3 + 24);
  v9 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1D802EB2C(a1, a2, a3, v8, v9);
}

uint64_t objectdestroy_8Tm_1()
{
  v1 = *(v0 + 16);
  v2 = sub_1D8191E84();
  OUTLINED_FUNCTION_15_15(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);

  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v1))
  {
    (*(*(v1 - 8) + 8))(v0 + v4, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1D802EDBC()
{
  v3 = *(OUTLINED_FUNCTION_4_56() - 8);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1D802EC80(v2, v0, v4, v5);
}

uint64_t static Commands.back.getter()
{
  if (qword_1EDBB3708 != -1)
  {
    swift_once();
  }
}

double BlueprintLayoutOptions.layoutViewport.getter()
{
  v1 = v0 + 56;
  if (*(v0 + 1) != 1)
  {
    v1 = v0 + 88;
  }

  if (*(v0 + 1))
  {
    v2 = v1;
  }

  else
  {
    v2 = v0 + 8;
  }

  return *v2;
}

void *BlueprintLayoutOptionsCommit.init(layoutOptions:)@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D818E794();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  memcpy(v13, a1, sizeof(v13));
  sub_1D818E784();
  v8 = sub_1D818E764();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  *a2 = v8;
  a2[1] = v10;
  return memcpy(a2 + 2, v13, 0x235uLL);
}

double static BlueprintLayoutOptions.constrainedSafeAreaInsets(bounds:safeAreaInsets:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  sub_1D802FFB8();
  if ((v10 & 1) == 0)
  {
    v12.origin.x = a1;
    v12.origin.y = a2;
    v12.size.width = a3;
    v12.size.height = a4;
    CGRectGetWidth(v12);
  }

  return a5;
}

id BlueprintLayoutOptions.isValid.getter()
{
  v1 = *(v0 + 128);
  result = [v1 horizontalSizeClass];
  if (result)
  {
    return ([v1 verticalSizeClass] != 0);
  }

  return result;
}

uint64_t BlueprintLayoutOptions.ViewportConstraint.hashValue.getter()
{
  sub_1D81927E4();
  MEMORY[0x1DA714A00](0);
  return sub_1D8192824();
}

uint64_t BlueprintLayoutOptions.ViewportOrientation.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

TeaUI::BlueprintLayoutOptions::ViewportDimensionChecks sub_1D802F36C@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = BlueprintLayoutOptions.ViewportDimensionChecks.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D802F3AC@<X0>(uint64_t *a1@<X8>)
{
  result = BlueprintLayoutOptions.ViewportDimensionChecks.rawValue.getter();
  *a1 = result;
  return result;
}

void BlueprintLayoutOptions.init(kind:layoutViewportConfiguration:layoutConstraint:viewport:windowSize:readableViewportFrame:visibleViewportFrame:screenScale:screenNativeSize:traitCollection:appTraitCollection:appState:contentSizeCategory:layoutMargins:unadjustedLayoutMargins:layoutDirection:safeAreaInsets:unadjustedSafeAreaInsets:rendererOptions:compositionalLayoutOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, const void *a52, uint64_t *a53)
{
  OUTLINED_FUNCTION_70();
  v122 = v53;
  v123 = v54;
  v121 = v55;
  v120 = v56;
  v119 = v57;
  v117 = v58;
  v118 = v59;
  v115 = v60;
  v116 = v61;
  v113 = v62;
  v114 = v63;
  v112 = v64;
  v66 = v65;
  v68 = v67;
  v110 = *v70;
  v111 = *v69;
  v72 = *v71;
  memcpy(__dst, a52, sizeof(__dst));
  v73 = *a53;
  v74 = a53[1];
  v75 = *(a53 + 16);
  *v135 = *(a53 + 17);
  *&v135[3] = *(a53 + 5);
  v76 = a53[3];
  v77 = a53[4];
  v78 = *(a53 + 40);
  *v139 = *(a53 + 41);
  *&v139[3] = *(a53 + 11);
  v79 = a53[6];
  v80 = a53[7];
  v81 = *(a53 + 64);
  *&v143[3] = *(a53 + 17);
  *v143 = *(a53 + 65);
  v82 = *(a53 + 11);
  v83 = *(a53 + 9);
  v84 = a53[13];
  v85 = a53[14];
  v86 = *(a53 + 120);
  v87 = *(a53 + 121);
  v132 = v72;
  v106 = v74;
  v108 = v73;
  v133[0] = v73;
  v133[1] = v74;
  v105 = v75;
  v134 = v75;
  v88 = v76;
  v136 = v76;
  v89 = v77;
  v137 = v77;
  v90 = v78;
  v138 = v78;
  v91 = v79;
  v140 = v79;
  v92 = v80;
  v141 = v80;
  v93 = v81;
  v142 = v81;
  v124 = v83;
  v126 = v82;
  v144 = v83;
  v145 = v82;
  v146 = v84;
  v128 = v85;
  v147 = v85;
  v148 = v86;
  v149 = v87;
  if (sub_1D7E4710C(v133) == 1)
  {
    if (qword_1EDBB4DB0 != -1)
    {
      OUTLINED_FUNCTION_0_133();
    }

    memcpy(v130, &qword_1EDBB4DB8, 0x7AuLL);
    v87 = BYTE1(v130[15]);
    v128 = v130[14];
    v86 = v130[15];
    v84 = v130[13];
    v125 = *&v130[9];
    v127 = *&v130[11];
    v107 = v130[7];
    v109 = v130[6];
    v93 = v130[8];
    v94 = v130[3];
    v95 = v130[4];
    v96 = v130[5];
    v98 = v130[0];
    v97 = v130[1];
    v99 = v130[2];
    sub_1D7E22264(v130, v129);
    v100 = v99;
    v101 = v98;
    v90 = v96;
    v89 = v95;
    v88 = v94;
    v92 = v107;
    v91 = v109;
    v103 = v125;
    v102 = v127;
  }

  else
  {
    v103 = v124;
    v102 = v126;
    v97 = v106;
    v101 = v108;
    v100 = v105;
  }

  *(v68 + 8) = v66;
  *(v68 + 16) = v112;
  v104 = v132;
  *v68 = v111;
  *(v68 + 1) = v110;
  *(v68 + 24) = v113;
  *(v68 + 32) = v114;
  *(v68 + 40) = v115;
  *(v68 + 48) = v116;
  *(v68 + 56) = v117;
  *(v68 + 64) = v118;
  *(v68 + 72) = a29;
  *(v68 + 80) = a30;
  *(v68 + 88) = a31;
  *(v68 + 96) = a32;
  *(v68 + 104) = a33;
  *(v68 + 112) = a34;
  *(v68 + 120) = a35;
  *(v68 + 128) = v119;
  *(v68 + 136) = v120;
  *(v68 + 144) = v121;
  *(v68 + 152) = v122;
  *(v68 + 160) = a36;
  *(v68 + 168) = a37;
  *(v68 + 176) = a38;
  *(v68 + 184) = a39;
  *(v68 + 192) = a40;
  *(v68 + 200) = a41;
  *(v68 + 208) = a42;
  *(v68 + 216) = a43;
  *(v68 + 224) = v104;
  *(v68 + 232) = v123;
  *(v68 + 240) = v101;
  *(v68 + 248) = v97;
  *(v68 + 256) = v100;
  *(v68 + 264) = v88;
  *(v68 + 272) = v89;
  *(v68 + 280) = v90;
  *(v68 + 288) = v91;
  *(v68 + 296) = v92;
  *(v68 + 304) = v93;
  *(v68 + 312) = v103;
  *(v68 + 328) = v102;
  *(v68 + 344) = v84;
  *(v68 + 352) = v128;
  *(v68 + 360) = v86 & 1;
  *(v68 + 361) = v87 & 1;
  *(v68 + 368) = a44;
  *(v68 + 376) = a45;
  *(v68 + 384) = a46;
  *(v68 + 392) = a47;
  *(v68 + 400) = a48;
  *(v68 + 408) = a49;
  *(v68 + 416) = a50;
  *(v68 + 424) = a51;
  memcpy((v68 + 432), __dst, 0x85uLL);
  OUTLINED_FUNCTION_72();
}

id BlueprintLayoutOptions.validate(layoutOptions:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 128);
  v4 = *(a1 + 168);
  v5 = *(a1 + 184);
  v19 = *(a1 + 376);
  v18 = *(a1 + 392);
  v6 = *(v1 + 8);
  v7 = *(v1 + 128);
  v8 = *(v1 + 168);
  v9 = *(v1 + 184);
  v10 = *(v1 + 376);
  v11 = *(v1 + 392);
  v12 = [v3 horizontalSizeClass];
  result = [v7 horizontalSizeClass];
  if (v12 == result)
  {
    if (v2 == v6)
    {
      if (v4 == v8)
      {
        if (v5 == v9)
        {
          if (v19 == v10)
          {
            if (v18 == v11)
            {
              return result;
            }

            sub_1D8030034();
            OUTLINED_FUNCTION_121();
            *v14 = v18;
            *(v14 + 8) = v11;
            v15 = 5;
          }

          else
          {
            sub_1D8030034();
            OUTLINED_FUNCTION_121();
            *v14 = v19;
            *(v14 + 8) = v10;
            v15 = 4;
          }
        }

        else
        {
          sub_1D8030034();
          OUTLINED_FUNCTION_121();
          *v14 = v5;
          *(v14 + 8) = v9;
          v15 = 3;
        }
      }

      else
      {
        sub_1D8030034();
        OUTLINED_FUNCTION_121();
        *v14 = v4;
        *(v14 + 8) = v8;
        v15 = 2;
      }
    }

    else
    {
      sub_1D8030034();
      OUTLINED_FUNCTION_121();
      *v14 = v2;
      *(v14 + 8) = v6;
      v15 = 1;
    }
  }

  else
  {
    v16 = [v3 horizontalSizeClass];
    v17 = [v7 horizontalSizeClass];
    sub_1D8030034();
    OUTLINED_FUNCTION_121();
    v15 = 0;
    *v14 = v16;
    *(v14 + 8) = v17;
  }

  *(v14 + 16) = v15;
  return swift_willThrow();
}

uint64_t static BlueprintLayoutOptions.zero.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDBB8D40 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &word_1EDBB8D50, 0x235uLL);
  memcpy(a1, &word_1EDBB8D50, 0x235uLL);
  return sub_1D7E222B8(__dst, &v3);
}

uint64_t BlueprintLayoutOptionsCommit.identifier.getter()
{
  v1 = *v0;
  sub_1D8190DB4();
  return v1;
}

uint64_t BlueprintLayoutOptionsCommit.layoutOptions.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 16), 0x235uLL);
  memcpy(a1, (v1 + 16), 0x235uLL);
  return sub_1D7E222B8(__dst, v4);
}

Swift::Bool __swiftcall BlueprintLayoutOptionsProviderType.isValidCommit(view:)(UIView *view)
{
  (*(v1 + 16))();
  sub_1D818F154();

  memcpy(__dst, __src, 0x245uLL);
  memcpy(v25, __src, 0x245uLL);
  enum_tag_for_layout_string_5TeaUI10JSONSchemaV6ErrorsO_0 = get_enum_tag_for_layout_string_5TeaUI10JSONSchemaV6ErrorsO_0(v25);
  if (enum_tag_for_layout_string_5TeaUI10JSONSchemaV6ErrorsO_0 != 1)
  {
    [(UIView *)view bounds];
    OUTLINED_FUNCTION_9_0();
    [(UIView *)view safeAreaInsets];
    OUTLINED_FUNCTION_11_1();
    v4 = OUTLINED_FUNCTION_8_0();
    v9 = static BlueprintLayoutOptions.constrainedSafeAreaInsets(bounds:safeAreaInsets:)(v4, v5, v6, v7, v8);
    v11 = v10;
    v13 = v12;
    v14 = *&v25[3];
    v15 = *&v25[4];
    [(UIView *)view bounds];
    v17 = v16;
    v19 = v18;
    sub_1D8030088(__dst);
    LOBYTE(enum_tag_for_layout_string_5TeaUI10JSONSchemaV6ErrorsO_0) = v14 == v17 && v15 == v19 && *&v25[49] == v11 && *&v25[51] == v13;
  }

  return enum_tag_for_layout_string_5TeaUI10JSONSchemaV6ErrorsO_0;
}

uint64_t BlueprintLayoutOptionsProvider.margins.getter@<X0>(uint64_t a1@<X8>)
{
  result = OUTLINED_FUNCTION_10();
  v4 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v4;
  return result;
}

uint64_t BlueprintLayoutOptionsProvider.additionalSafeAreaInsets.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_10();
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v7 = *(v1 + 96);
  *(a1 + 32) = v7;
  return sub_1D80300E4(v3, v4, v5, v6, v7);
}

uint64_t BlueprintLayoutOptionsProvider.additionalSafeAreaInsets.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  OUTLINED_FUNCTION_0_25();
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  v8 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v8;
  v9 = *(v1 + 96);
  *(v1 + 96) = v3;
  return sub_1D803010C(v4, v5, v6, v7, v9);
}

uint64_t BlueprintLayoutOptionsProvider.__allocating_init(view:compositionalLayoutOptionsProvider:appTraitEnvironmentProvider:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_8_33();
  v8 = swift_allocObject();
  BlueprintLayoutOptionsProvider.init(view:compositionalLayoutOptionsProvider:appTraitEnvironmentProvider:)(a1, a2, a3, a4);
  return v8;
}

void sub_1D802FE04()
{
  v1 = [v0 superview];
  v2 = sub_1D80439B4(v1);

  if (v2)
  {
    [v2 safeAreaInsets];
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
    [v0 safeAreaInsets];
    OUTLINED_FUNCTION_9_0();
  }

  OUTLINED_FUNCTION_8_0();
}

uint64_t BlueprintLayoutOptionsProvider.deinit()
{

  sub_1D803010C(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  sub_1D7E27310(v0 + 120);

  return v0;
}

uint64_t BlueprintLayoutOptionsProvider.__deallocating_deinit()
{
  BlueprintLayoutOptionsProvider.deinit();
  OUTLINED_FUNCTION_8_33();

  return swift_deallocClassInstance();
}

double sub_1D802FFB8()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;

  if (v2 > v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  return fmax(v5, 1376.0);
}

unint64_t sub_1D8030034()
{
  result = qword_1ECA0F948;
  if (!qword_1ECA0F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0F948);
  }

  return result;
}

uint64_t sub_1D8030088(uint64_t a1)
{
  sub_1D7E269A0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D80300E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1D80300FC(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_1D80300FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_1D803010C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1D8030124(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_1D8030124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

unint64_t sub_1D8030138()
{
  result = qword_1ECA0F950;
  if (!qword_1ECA0F950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0F950);
  }

  return result;
}

unint64_t sub_1D8030190()
{
  result = qword_1ECA0F958;
  if (!qword_1ECA0F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0F958);
  }

  return result;
}

unint64_t sub_1D80301E8()
{
  result = qword_1ECA0F960;
  if (!qword_1ECA0F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0F960);
  }

  return result;
}

unint64_t sub_1D8030240()
{
  result = qword_1ECA0F968;
  if (!qword_1ECA0F968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0F968);
  }

  return result;
}

unint64_t sub_1D8030298()
{
  result = qword_1ECA0F970;
  if (!qword_1ECA0F970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0F970);
  }

  return result;
}

unint64_t sub_1D80302F0()
{
  result = qword_1ECA0F978;
  if (!qword_1ECA0F978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0F978);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BlueprintLayoutOptionsValidationError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 17))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 5)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for BlueprintLayoutOptionsValidationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

_BYTE *sub_1D80303F0(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for BlueprintLayoutOptions.ViewportConstraint(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for BlueprintLayoutOptions.ViewportOrientation(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CircleRadius(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CircleRadius(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D80307DC()
{
  sub_1D7FB0500();
  swift_allocObject();
  result = sub_1D818F3C4();
  qword_1EDBAE560 = result;
  return result;
}

Swift::Void __swiftcall UIImageView.ts_clearImage()()
{
  [v0 setImage_];
  if (qword_1EDBAE558 != -1)
  {
    OUTLINED_FUNCTION_0_134();
  }

  swift_unknownObjectRetain();
  sub_1D818F3F4();
}

uint64_t UIImageView.ts_image(from:with:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  (*(v10 + 16))(v9, v10);
  v11 = sub_1D8190EE4();

  v12 = qword_1EDBAE558;
  v13 = v11;
  if (v12 != -1)
  {
    OUTLINED_FUNCTION_0_134();
  }

  swift_unknownObjectRetain();
  sub_1D818F3F4();
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = swift_allocObject();
  v16[2] = v5;
  v16[3] = v13;
  v16[4] = a3;
  v16[5] = a4;
  v17 = *(v15 + 8);
  v18 = v13;
  v19 = v5;

  v17(a2, sub_1D8030D40, v16, v14, v15);
}

uint64_t sub_1D8030A08(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v9 = sub_1D8190BD4();
  v25 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D8190C34();
  v12 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
  v15 = sub_1D8191AB4();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a4;
  v17[4] = v23;
  v17[5] = a6;
  v17[6] = a1;
  aBlock[4] = sub_1D8031120;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7E64940;
  aBlock[3] = &block_descriptor_18_0;
  v18 = _Block_copy(aBlock);
  v19 = a1;
  v20 = a4;

  sub_1D8190BF4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D7E28784(&qword_1EDBB34B0, MEMORY[0x1E69E7F60]);
  sub_1D7E2885C();
  sub_1D7E28784(&qword_1EDBB3340, sub_1D7E2885C);
  sub_1D8192004();
  MEMORY[0x1DA713CE0](0, v14, v11, v18);
  _Block_release(v18);

  (*(v25 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v24);
}

void sub_1D8030D4C(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (qword_1EDBAE558 != -1)
    {
      swift_once();
    }

    v10 = sub_1D818F3E4();

    if (v10)
    {
      sub_1D7E0A1A8(0, &qword_1EDBB2F28);
      v11 = a2;
      v12 = sub_1D8191CC4();

      if (v12)
      {
        a3(a5);
      }
    }
  }
}

void UIImageView.ts_crossFadeImage(_:animated:completion:)(void *a1, char a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    v9 = a1;
    v18 = v9;
    if (a2)
    {
      [v5 setAlpha_];
      [v5 setImage_];
      v10 = objc_opt_self();
      v11 = swift_allocObject();
      *(v11 + 16) = v5;
      v23 = sub_1D80310CC;
      v24 = v11;
      aBlock = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      v21 = sub_1D7E64940;
      v22 = &block_descriptor_43;
      v12 = _Block_copy(&aBlock);
      v13 = v5;

      v14 = swift_allocObject();
      v14[2] = v13;
      v14[3] = a3;
      v14[4] = a4;
      v23 = sub_1D80310E0;
      v24 = v14;
      aBlock = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      v21 = sub_1D7EB30D4;
      v22 = &block_descriptor_9_1;
      v15 = _Block_copy(&aBlock);
      v16 = v13;
      sub_1D7E38808(a3);

      [v10 animateWithDuration:65538 delay:v12 options:v15 animations:0.25 completion:0.0];

      _Block_release(v15);
      _Block_release(v12);
    }

    else
    {
      [v5 setImage_];
      v17 = [v5 setAlpha_];
      if (a3)
      {
        (a3)(v17);
      }
    }
  }

  else if (a3)
  {
    a3();
  }
}

id sub_1D80310E0()
{
  v1 = *(v0 + 24);
  result = [*(v0 + 16) setAlpha_];
  if (v1)
  {
    return v1(result);
  }

  return result;
}

void BlueprintLayoutCollectionPinAdjuster.shouldInvalidateLayoutAttributes(for:offset:insets:contentSize:hasViewOnScreen:)()
{
  OUTLINED_FUNCTION_70();
  v62 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  OUTLINED_FUNCTION_5_46();
  memcpy(__dst, v0, sizeof(__dst));
  v79 = *(v0 + 565);
  v69 = *(v0 + 566);
  v68 = *(v0 + 567);
  v14 = *(v0 + 568);
  v67 = *(v0 + 576);
  v70 = *(v0 + 584);
  v78 = *(v0 + 592);
  v77 = MEMORY[0x1E69E7CC0];
  v15 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 64);
  v19 = (v16 + 63) >> 6;
  v57 = fmin(v11, v13) <= 0.0;
  v71 = v14;
  sub_1D8190DB4();
  v20 = 0;
  v63 = v19;
  v64 = v15;
  if (v18)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v19)
    {

      OUTLINED_FUNCTION_72();
      return;
    }

    v18 = *(v15 + 8 * v21);
    ++v20;
    if (v18)
    {
      v20 = v21;
LABEL_8:
      while (2)
      {
        v22 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v23 = (v20 << 9) | (8 * v22);
        v65 = *(*(v71 + 48) + v23);
        v24 = *(*(v71 + 56) + v23);
        v25 = sub_1D7E36AB8(v24);
        v26 = v24 & 0xC000000000000001;
        sub_1D8190DB4();
        for (i = 0; v25 != i; ++i)
        {
          if (v26)
          {
            v28 = MEMORY[0x1DA714420](i, v24);
          }

          else
          {
            if (i >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_58;
            }

            v28 = *(v24 + 8 * i + 32);
          }

          v29 = v28;
          if (__OFADD__(i, 1))
          {
            __break(1u);
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

          v30 = &v28[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_pinTrait];
          OUTLINED_FUNCTION_8_4();
          if (v30[8])
          {
            goto LABEL_18;
          }

          if ((*v30 & 1) == 0)
          {
            goto LABEL_52;
          }

          v31 = sub_1D8192634();

          if (v31)
          {

LABEL_53:
            sub_1D7F0A764(v24);
            goto LABEL_54;
          }

          if (v30[8])
          {
LABEL_18:
          }

          else
          {
            if (*v30)
            {
LABEL_52:

              goto LABEL_53;
            }

            v32 = sub_1D8192634();

            if (v32)
            {
              goto LABEL_53;
            }
          }
        }

        v33 = v70;
        if (*(v70 + 16))
        {
          sub_1D7E7E198(v65);
          if (v34)
          {
            v81.origin.x = OUTLINED_FUNCTION_4_5();
            v81.size.height = v1;
            if (CGRectIntersectsRect(v81, v84))
            {
              if (v25)
              {
                if (v25 < 1)
                {
                  goto LABEL_60;
                }

                v35 = 0;
                v66 = v79;
                v60 = v2;
                v61 = v13;
                v58 = v4;
                v59 = v3;
                do
                {
                  if (v26)
                  {
                    v36 = MEMORY[0x1DA714420](v35, v24);
                  }

                  else
                  {
                    v36 = *(v24 + 8 * v35 + 32);
                  }

                  v37 = v36;
                  memcpy(v72, __dst, 0x235uLL);
                  v72[565] = v79;
                  v72[566] = v69;
                  v72[567] = v68;
                  v73 = v71;
                  v74 = v67;
                  v75 = v33;
                  v76 = v78;
                  BlueprintLayoutCollectionPinAdjuster.adjusted(layoutAttributes:offset:insets:contentSize:)();
                  v39 = v38;
                  v40 = v39;
                  if (v66)
                  {
                    [v39 frame];
                    OUTLINED_FUNCTION_11_1();
                    v82.origin.x = OUTLINED_FUNCTION_4_5();
                    v82.size.height = v1;
                    if (CGRectIntersectsRect(v82, v85))
                    {
                      v41 = v11;
                      v42 = v1;
                      v43 = v9;
                      v44 = v7;
                      [v40 frame];
                      v46 = v45;
                      v48 = v47;
                      v50 = v49;
                      v52 = v51;

                      [v37 frame];
                      OUTLINED_FUNCTION_11_1();
                      v83.origin.x = v46;
                      v83.origin.y = v48;
                      v83.size.width = v50;
                      v83.size.height = v52;
                      if (!CGRectEqualToRect(v83, v86) || (v62(v40) & 1) == 0 || (v69 & 1) != 0 || v57 && (v53 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandEdge, OUTLINED_FUNCTION_8_4(), *(v40 + v53) != 3))
                      {
                        v40 = v40;
                        MEMORY[0x1DA713500]();
                        OUTLINED_FUNCTION_15_25();
                        if (v55)
                        {
                          OUTLINED_FUNCTION_2_10(v54);
                          sub_1D81913B4();
                        }

                        sub_1D8191404();
                      }

                      v7 = v44;
                      v9 = v43;
                      v1 = v42;
                      v11 = v41;
                      v2 = v60;
                      v13 = v61;
                      v4 = v58;
                      v3 = v59;
                    }

                    else
                    {

                      v37 = v40;
                    }
                  }

                  else
                  {
                    MEMORY[0x1DA713500]();
                    OUTLINED_FUNCTION_15_25();
                    if (v55)
                    {
                      OUTLINED_FUNCTION_2_10(v56);
                      sub_1D81913B4();
                    }

                    sub_1D8191404();
                  }

                  ++v35;

                  v33 = v70;
                }

                while (v25 != v35);
              }
            }
          }
        }

LABEL_54:
        v19 = v63;
        v15 = v64;
        if (v18)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}