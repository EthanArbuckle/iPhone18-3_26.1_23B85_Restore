uint64_t sub_274B27A54(uint64_t a1)
{
  v3 = qword_28098B180;
  swift_beginAccess();
  sub_274B29F14(a1, v1 + v3);
  return swift_endAccess();
}

id sub_274B27AB4(void *a1, double a2, double a3, double a4, double a5)
{
  v5[qword_28098B178] = 1;
  v11 = &v5[qword_28098B180];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  *&v5[qword_28098B188] = 0;
  swift_weakInit();
  v19.receiver = v5;
  v19.super_class = type metadata accessor for UIKitTextView();
  v12 = objc_msgSendSuper2(&v19, sel_initWithFrame_textContainer_, a1, a2, a3, a4, a5);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 defaultCenter];
  v16 = *MEMORY[0x277D741D8];
  v17 = [v14 textStorage];
  [v15 addObserver:v14 selector:sel_processedEditing name:v16 object:v17];

  return v14;
}

void sub_274B27CC0()
{
  *(v0 + qword_28098B178) = 1;
  v1 = v0 + qword_28098B180;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + qword_28098B188) = 0;
  swift_weakInit();
  sub_274BF5AC4();
  __break(1u);
}

uint64_t sub_274B27D9C(void *a1)
{
  v1 = a1;
  v2 = sub_274B27DD0();

  return v2 & 1;
}

id sub_274B27DD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIKitTextView();
  return objc_msgSendSuper2(&v2, sel_isScrollEnabled);
}

void sub_274B27E40(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_274B27E94(a3);
}

id sub_274B27E94(char a1)
{
  v3 = type metadata accessor for UIKitTextView();
  v7.receiver = v1;
  v7.super_class = v3;
  v4 = objc_msgSendSuper2(&v7, sel_isScrollEnabled);
  v6.receiver = v1;
  v6.super_class = v3;
  objc_msgSendSuper2(&v6, sel_setScrollEnabled_, a1 & 1);
  return sub_274B27F40(v4);
}

id sub_274B27F40(char a1)
{
  v2 = a1 & 1;
  result = [v1 isScrollEnabled];
  if (result != v2)
  {

    return [v1 invalidateIntrinsicContentSize];
  }

  return result;
}

id sub_274B27FA0()
{
  result = [v0 isScrollEnabled];
  if (result && *(v0 + qword_28098B178) == 1)
  {

    return [v0 invalidateIntrinsicContentSize];
  }

  return result;
}

void sub_274B28000(void *a1)
{
  v1 = a1;
  sub_274B27FA0();
}

id sub_274B28048()
{
  v1 = [v0 textStorage];

  return v1;
}

id sub_274B28080()
{
  v1 = [v0 layoutManager];

  return v1;
}

uint64_t sub_274B280F0()
{
  swift_weakAssign();
}

uint64_t sub_274B28138(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for UIKitTextView();
  objc_msgSendSuper2(&v4, sel_willMoveToWindow_, a1);
  result = sub_274B280B8();
  if (a1)
  {
    if (!result)
    {
      return result;
    }

    sub_274BA2180();
  }

  else
  {
    if (!result)
    {
      return result;
    }

    sub_274BA21C8();
  }
}

void sub_274B28238(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_274B28138(a3);
}

id sub_274B282A4()
{
  if (*&v0[qword_28098B188])
  {

    sub_274BA2180();
  }

  sub_274B28A98();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIKitTextView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_274B283A8(uint64_t a1)
{
  sub_274AFA708(a1 + qword_28098B180, &qword_28098AF58);

  return swift_weakDestroy();
}

uint64_t sub_274B2845C(uint64_t a1, uint64_t (*a2)(id), SEL *a3)
{
  v6 = v3;
  OUTLINED_FUNCTION_18_1();
  if (!sub_274B280E0() || (v8 = a2([v3 selectedRange]), result = , (v8 & 1) == 0))
  {
    sub_274AD8D30(a1, v19, &qword_28098B300);
    v10 = v20;
    if (v20)
    {
      __swift_project_boxed_opaque_existential_1(v19, v20);
      OUTLINED_FUNCTION_0_5();
      v12 = v11;
      MEMORY[0x28223BE20](v13);
      OUTLINED_FUNCTION_4();
      v16 = v15 - v14;
      (*(v12 + 16))(v15 - v14);
      v17 = sub_274BF5C04();
      (*(v12 + 8))(v16, v10);
      __swift_destroy_boxed_opaque_existential_0(v19);
    }

    else
    {
      v17 = 0;
    }

    v18.receiver = v6;
    v18.super_class = type metadata accessor for UIKitTextView();
    objc_msgSendSuper2(&v18, *a3, v17);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_274B28664(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id), SEL *a5)
{
  if (a3)
  {
    v8 = a1;
    swift_unknownObjectRetain();
    sub_274BF57C4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v9 = a1;
  }

  sub_274B2845C(v11, a4, a5);

  return sub_274AFA708(v11, &qword_28098B300);
}

id sub_274B286FC()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for UIKitTextView();
  v1 = objc_msgSendSuper2(&v11, sel_becomeFirstResponder);
  if (v1)
  {
    sub_274B28B0C();
    v2 = [objc_opt_self() defaultCenter];
    [v2 addObserver:v0 selector:sel_scrollToVisible name:*MEMORY[0x277D76BA8] object:0];
  }

  if (*(v0 + qword_28098B178) == 1)
  {
    sub_274B279EC(v9);
    if (v10)
    {
      sub_274B1875C(v9, v6);
      sub_274AFA708(v9, &qword_28098AF58);
      v3 = v7;
      v4 = v8;
      __swift_project_boxed_opaque_existential_1(v6, v7);
      (*(v4 + 8))(v3, v4);
      __swift_destroy_boxed_opaque_existential_0(v6);
    }

    else
    {
      sub_274AFA708(v9, &qword_28098AF58);
    }
  }

  return v1;
}

uint64_t sub_274B28878(void *a1)
{
  v1 = a1;
  v2 = sub_274B286FC();

  return v2 & 1;
}

id sub_274B288AC()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for UIKitTextView();
  v1 = objc_msgSendSuper2(&v10, sel_resignFirstResponder);
  sub_274B28A98();
  if (sub_274B280E0())
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DE20);
    sub_274AFA930(qword_28098B360, &qword_28098DE20);
    sub_274BF2D14();
  }

  sub_274B279EC(v8);
  if (v9)
  {
    sub_274B1875C(v8, v5);
    sub_274AFA708(v8, &qword_28098AF58);
    v2 = v6;
    v3 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    (*(v3 + 16))(v2, v3);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
    sub_274AFA708(v8, &qword_28098AF58);
  }

  return v1;
}

uint64_t sub_274B28A64(void *a1)
{
  v1 = a1;
  v2 = sub_274B288AC();

  return v2 & 1;
}

void sub_274B28A98()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:*MEMORY[0x277D76BA8] object:0];
}

void sub_274B28B0C()
{
  v1 = [v0 superview];
  if (v1)
  {
    v5 = v1;
    v2 = sub_274B28C10();
    if (v2)
    {
      v3 = v2;
      [v0 frame];
      [v5 convertRect:v3 toCoordinateSpace:?];
      [v3 scrollRectToVisible:1 animated:?];

      v4 = v3;
    }

    else
    {
      v4 = v5;
    }
  }
}

void sub_274B28BC8(void *a1)
{
  v1 = a1;
  sub_274B28B0C();
}

void *sub_274B28C10()
{
  v1 = [v0 superview];
  if (!v1)
  {
    return 0;
  }

  while (1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      if ([v2 isScrollEnabled])
      {
        break;
      }
    }

    v4 = [v1 superview];

    v1 = v4;
    if (!v4)
    {
      return 0;
    }
  }

  return v3;
}

double sub_274B28D48@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

double sub_274B28D5C@<D0>(uint64_t a1@<X8>)
{
  sub_274B28D48(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_274B28DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_274B29418();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

double EnvironmentValues.overrideTextFieldEdgeInsets.getter@<D0>(uint64_t a1@<X8>)
{
  sub_274B28E58();
  sub_274BF37A4();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

unint64_t sub_274B28E58()
{
  result = qword_28098AF60[0];
  if (!qword_28098AF60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28098AF60);
  }

  return result;
}

double sub_274B28EAC@<D0>(uint64_t a1@<X8>)
{
  EnvironmentValues.overrideTextFieldEdgeInsets.getter(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void (*EnvironmentValues.overrideTextFieldEdgeInsets.modify(void *a1))(char **a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  *(v3 + 10) = v1;
  *(v3 + 11) = sub_274B28E58();
  sub_274BF37A4();
  v4 = v3[72];
  v5 = *(v3 + 56);
  *v3 = *(v3 + 40);
  *(v3 + 1) = v5;
  v3[32] = v4;
  return sub_274B28FF0;
}

void sub_274B28FF0(char **a1)
{
  v1 = *a1;
  v2 = (*a1)[32];
  v3 = *(*a1 + 1);
  *(v1 + 40) = *v1;
  *(v1 + 56) = v3;
  v1[72] = v2;
  sub_274BF37B4();

  free(v1);
}

uint64_t sub_274B29094()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_274B290DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_274B2911C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_274B292D8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_14WorkflowUICore19TextEditingObserver_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_274B2934C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 177))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_274B2938C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 177) = 1;
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

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_274B29418()
{
  result = qword_28098B298;
  if (!qword_28098B298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B2A0);
    sub_274B2949C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B298);
  }

  return result;
}

unint64_t sub_274B2949C()
{
  result = qword_28098B2A8;
  if (!qword_28098B2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B2A8);
  }

  return result;
}

uint64_t sub_274B294F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_274B294FC()
{
  result = qword_28098B2B0;
  if (!qword_28098B2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B2B0);
  }

  return result;
}

unint64_t sub_274B29550()
{
  result = qword_28098DE10;
  if (!qword_28098DE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098DE10);
  }

  return result;
}

void sub_274B295B0(uint64_t a1, void *a2)
{
  if (a2 != 2)
  {
    sub_274B295C0(a1, a2);
  }
}

void sub_274B295C0(uint64_t a1, void *a2)
{
  if (a2 != 1)
  {
  }
}

unint64_t sub_274B295D0()
{
  result = qword_28098B2D0;
  if (!qword_28098B2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B2D0);
  }

  return result;
}

unint64_t sub_274B29624()
{
  result = qword_28098B2D8;
  if (!qword_28098B2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B2D8);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_274B296C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = sub_274BDA830(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B330);
    sub_274BF5A74();

    sub_274B29EBC((*(v9 + 56) + 32 * v7), a3);
    sub_274BF5A84();
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_274B297A8(unsigned __int16 a1)
{
  v3 = v1;
  v4 = *v1;
  sub_274BDA978(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_27();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B348);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_30();
  sub_274AD8430(0, &unk_28098B350);
  OUTLINED_FUNCTION_9_8();
  sub_274B29ECC(v6, v7);
  OUTLINED_FUNCTION_20();
  sub_274BF5A84();
  *v3 = v2;
  return v4;
}

uint64_t sub_274B29880(unsigned __int16 a1)
{
  v3 = v1;
  v4 = *v1;
  sub_274BDA978(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_27();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B338);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_30();
  sub_274BF4D24();
  OUTLINED_FUNCTION_9_8();
  sub_274B29ECC(v6, v7);
  OUTLINED_FUNCTION_20();
  sub_274BF5A84();
  *v3 = v2;
  return v4;
}

uint64_t sub_274B29948(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_274BF5834();
  }

  else
  {
    return sub_274BF5804();
  }
}

void sub_274B299A8(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v3;
  v7 = a2;
  v8 = a1;
  v9 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (v9 < 0)
      {
        v10 = *v5;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x277C65120](a1, a2, v10);
      sub_274AD8430(0, &qword_28098B318);

      swift_dynamicCast();
      sub_274B93648();

      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v5;
  if (a3)
  {
    sub_274AD8430(0, &qword_28098B318);
    if (sub_274BF5854() == *(v12 + 36))
    {
      sub_274BF5864();
      swift_dynamicCast();
      v4 = v17;
      v13 = sub_274BF5614();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        v8 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_25;
        }

        v15 = *(*(v12 + 48) + 8 * v8);
        v16 = sub_274BF5624();

        if (v16)
        {
          goto LABEL_18;
        }

        v13 = v8 + 1;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v8 < 0 || 1 << *(v12 + 32) <= v8)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (((*(v12 + 8 * (v8 >> 6) + 56) >> v8) & 1) == 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:

    __break(1u);
    goto LABEL_26;
  }

  if (*(v12 + 36) != v7)
  {
    __break(1u);
LABEL_18:
  }

  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_274B929AC();
  }

  sub_274B937BC(v8);
  *v5 = v12;
}

void sub_274B29C0C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for Key(0);
  sub_274B29ECC(&qword_280989580, type metadata accessor for Key);
  v7 = sub_274BF4DE4();

  [a4 setAttributes:v7 range:{a2, a3}];
}

double sub_274B29CF0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v8);
  v11 = (*(a3 + 24))(a2, a3);
  if (!v11)
  {
    goto LABEL_5;
  }

  v12 = v11;
  v13 = (*(a3 + 32))(a2, a3);
  if (!v13)
  {

LABEL_5:
    v25 = 0u;
    v26 = 0u;
    v19 = 1;
    goto LABEL_6;
  }

  v14 = v13;
  sub_274B2390C(v12, v13);
  v25 = v16;
  v26 = v15;
  v23 = v18;
  v24 = v17;

  v19 = 0;
  *&v20 = v25;
  *(&v20 + 1) = v23;
  v25 = v20;
  *&v20 = v26;
  *(&v20 + 1) = v24;
  v26 = v20;
LABEL_6:
  (*(v7 + 8))(v10, a2);
  v22 = v25;
  result = *&v26;
  *a4 = v26;
  *(a4 + 16) = v22;
  *(a4 + 32) = v19;
  return result;
}

uint64_t sub_274B29EB0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

_OWORD *sub_274B29EBC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_274B29ECC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_274B29F14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AF58);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_BYTE *sub_274B29F84(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_13_3()
{

  return sub_274BF3CE4();
}

uint64_t OUTLINED_FUNCTION_37()
{
}

uint64_t type metadata accessor for LLMAttributionView()
{
  result = qword_28098B450;
  if (!qword_28098B450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_274B2A188()
{
  sub_274BF1A24();
  if (v0 <= 0x3F)
  {
    sub_274BF1A54();
    if (v1 <= 0x3F)
    {
      type metadata accessor for WFAskLLMFeedbackPresenter();
      if (v2 <= 0x3F)
      {
        sub_274B0B928();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_274B2A258(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_274B2A298(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274B2A310@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  sub_274BF3454();
  OUTLINED_FUNCTION_1();
  v43 = v2;
  v44 = v3;
  MEMORY[0x28223BE20](v2);
  v42 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_274BF3344();
  OUTLINED_FUNCTION_1();
  v37 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B4A0);
  OUTLINED_FUNCTION_1();
  v35 = v10;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B4A8);
  OUTLINED_FUNCTION_1();
  v41 = v14;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - v16;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B4B0);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v18);
  v34 = &v34 - v19;
  v38 = v1;
  v47 = v1;
  v46 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B4B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AE80);
  sub_274B2C574();
  sub_274AFA930(&qword_28098AE88, &qword_28098AE80);
  sub_274BF4064();
  sub_274BF3334();
  v20 = sub_274AFA930(&qword_28098B4D8, &qword_28098B4A0);
  v21 = sub_274B2C6A8(&qword_28098B4E0, MEMORY[0x277CDD9E0]);
  v22 = v36;
  sub_274BF44F4();
  (*(v37 + 8))(v8, v22);
  (*(v35 + 8))(v13, v9);
  v23 = v42;
  sub_274BF3444();
  v50 = v9;
  v51 = v22;
  v52 = v20;
  v53 = v21;
  swift_getOpaqueTypeConformance2();
  sub_274B2C6A8(&qword_28098AE20, MEMORY[0x277CDDB18]);
  v24 = v34;
  v25 = v39;
  v26 = v43;
  sub_274BF41D4();
  (*(v44 + 8))(v23, v26);
  (*(v41 + 8))(v17, v25);
  KeyPath = swift_getKeyPath();
  v28 = v24 + *(v40 + 36);
  *v28 = KeyPath;
  *(v28 + 8) = 2;
  v29 = (v38 + *(type metadata accessor for LLMAttributionView() + 28));
  v31 = *v29;
  v30 = v29[1];
  v48 = v31;
  v49 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A300);
  sub_274BF47A4();
  v32 = v52;
  sub_274B2C770();
  sub_274BF4144();

  return sub_274AE8718(v24);
}

uint64_t sub_274B2A88C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v51 = a2;
  v3 = type metadata accessor for LLMAttributionView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AE98);
  v50 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v49 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v48 = &v43 - v9;
  MEMORY[0x28223BE20](v10);
  v47 = &v43 - v11;
  MEMORY[0x28223BE20](v12);
  v52 = &v43 - v13;
  sub_274BF4FE4();
  if (qword_2809893B8 != -1)
  {
    swift_once();
  }

  v14 = qword_28098C7C0;
  v46 = qword_28098C7C0;
  v15 = sub_274BF4F04();
  v16 = sub_274BF4F04();

  v17 = [v14 localizedStringForKey:v15 value:v16 table:0];

  v18 = sub_274BF4F44();
  v20 = v19;

  sub_274B2C974(a1, &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v22 = swift_allocObject();
  v23 = sub_274B2C500(&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v45 = v5;
  v53 = v18;
  v54 = v20;
  MEMORY[0x28223BE20](v23);
  v43 = a1;
  *(&v43 - 4) = &v53;
  *(&v43 - 3) = 0xD000000000000016;
  *(&v43 - 2) = 0x8000000274C09FD0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AEA8);
  sub_274AFA930(&qword_28098AEB0, &qword_28098AEA8);
  sub_274BF47C4();

  sub_274BF4FE4();
  v24 = sub_274BF4F04();
  v25 = sub_274BF4F04();

  v26 = [v46 localizedStringForKey:v24 value:v25 table:0];

  v27 = sub_274BF4F44();
  v29 = v28;

  v30 = v44;
  sub_274B2C974(v43, v44);
  v31 = swift_allocObject();
  v32 = sub_274B2C500(v30, v31 + v21);
  v53 = v27;
  v54 = v29;
  MEMORY[0x28223BE20](v32);
  *(&v43 - 4) = &v53;
  *(&v43 - 3) = 0x7269632E6F666E69;
  *(&v43 - 2) = 0xEB00000000656C63;
  v33 = v47;
  sub_274BF47C4();

  v34 = v50;
  v35 = *(v50 + 16);
  v36 = v48;
  v37 = v52;
  v35(v48, v52, v6);
  v38 = v49;
  v35(v49, v33, v6);
  v39 = v51;
  v35(v51, v36, v6);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AEB8);
  v35(&v39[*(v40 + 48)], v38, v6);
  v41 = *(v34 + 8);
  v41(v33, v6);
  v41(v37, v6);
  v41(v38, v6);
  return (v41)(v36, v6);
}

void sub_274B2AE94()
{
  v0 = sub_274BF1F54();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() sharedContext];
  type metadata accessor for LLMAttributionView();
  sub_274BF1A04();
  v5 = sub_274BF1ED4();
  (*(v1 + 8))(v3, v0);
  [v4 openURL_];
}

uint64_t sub_274B2AFBC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_274B2B02C(a1, v9);
  v3 = v9[0];
  v4 = v9[1];
  v5 = v10;
  v6 = v11;
  v7 = sub_274BF3FD4();
  result = swift_getKeyPath();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = result;
  *(a2 + 40) = v7;
  return result;
}

uint64_t sub_274B2B02C@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v103 = a2;
  v3 = sub_274BF32F4();
  v104 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LLMAttributionView();
  v102 = a1;
  sub_274BF19E4();
  sub_274BF4704();
  v6 = sub_274BF4114();
  v8 = v7;
  v10 = v9;
  sub_274BF3F14();
  v11 = sub_274BF4074();
  v13 = v12;
  v15 = v14;
  sub_274AFA1D0(v6, v8, v10 & 1);

  sub_274BF32E4();
  v16 = v3;
  v17 = sub_274BF40A4();
  v19 = v18;
  v21 = v20;
  sub_274AFA1D0(v11, v13, v15 & 1);

  v22 = *(v104 + 8);
  v104 += 8;
  v101 = v22;
  v22(v5, v16);
  sub_274BF38A4();
  v23 = sub_274BF40E4();
  v25 = v24;
  LOBYTE(v11) = v26;
  v98 = sub_274BF40B4();
  v97 = v27;
  v95 = v28;
  v96 = v29;
  sub_274AFA1D0(v23, v25, v11 & 1);

  sub_274AFA1D0(v17, v19, v21 & 1);

  v105 = sub_274B2B7D8(v102);
  v106 = v30;
  v102 = sub_274ADDF6C();
  v31 = sub_274BF4104();
  v33 = v32;
  LOBYTE(v11) = v34;
  sub_274BF3F34();
  v35 = sub_274BF4074();
  v37 = v36;
  LOBYTE(v25) = v38;
  sub_274AFA1D0(v31, v33, v11 & 1);

  sub_274BF32E4();
  v39 = sub_274BF40A4();
  v41 = v40;
  LOBYTE(v33) = v42;
  sub_274AFA1D0(v35, v37, v25 & 1);

  v101(v5, v16);
  LOBYTE(v37) = v95;
  v43 = v98;
  v44 = v97;
  v100 = sub_274BF40B4();
  v46 = v45;
  LOBYTE(v17) = v47;
  v99 = v48;
  sub_274AFA1D0(v39, v41, v33 & 1);

  sub_274AFA1D0(v43, v44, v37 & 1);

  sub_274BF38A4();
  v49 = sub_274BF40E4();
  v51 = v50;
  LOBYTE(v39) = v52;
  sub_274BF3F14();
  v53 = sub_274BF4074();
  v55 = v54;
  LOBYTE(v37) = v56;
  sub_274AFA1D0(v49, v51, v39 & 1);

  LODWORD(v105) = sub_274BF3B94();
  v57 = sub_274BF40A4();
  v59 = v58;
  LOBYTE(v39) = v60;
  sub_274AFA1D0(v53, v55, v37 & 1);

  v61 = v100;
  v62 = sub_274BF40B4();
  v64 = v63;
  LODWORD(v101) = v65;
  v104 = v66;
  sub_274AFA1D0(v57, v59, v39 & 1);

  sub_274AFA1D0(v61, v46, v17 & 1);

  sub_274BF4FE4();
  if (qword_2809893B8 != -1)
  {
    swift_once();
  }

  v67 = qword_28098C7C0;
  v68 = sub_274BF4F04();
  v69 = sub_274BF4F04();

  v70 = [v67 localizedStringForKey:v68 value:v69 table:0];

  v71 = sub_274BF4F44();
  v73 = v72;

  v105 = v71;
  v106 = v73;
  v74 = sub_274BF4104();
  v76 = v75;
  LOBYTE(v73) = v77;
  sub_274BF3F14();
  v78 = sub_274BF4074();
  v80 = v79;
  v82 = v81;
  sub_274AFA1D0(v74, v76, v73 & 1);

  LODWORD(v105) = sub_274BF3B94();
  v83 = sub_274BF40A4();
  v85 = v84;
  LOBYTE(v73) = v86;
  sub_274AFA1D0(v78, v80, v82 & 1);

  v87 = v101;
  v100 = sub_274BF40B4();
  v89 = v88;
  LOBYTE(v78) = v90;
  v102 = v91;
  sub_274AFA1D0(v83, v85, v73 & 1);

  sub_274AFA1D0(v62, v64, v87 & 1);

  v93 = v103;
  *v103 = v100;
  v93[1] = v89;
  *(v93 + 16) = v78 & 1;
  v93[3] = v102;
  return result;
}

uint64_t sub_274B2B7D8(uint64_t a1)
{
  v2 = sub_274BF1A24();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  v8 = *MEMORY[0x277CFC140];
  (*(v3 + 8))(v6, v2);
  if (v7 != v8)
  {
    return sub_274BF19F4();
  }

  type metadata accessor for LLMAttributionView();
  result = sub_274BF1A44();
  if (!v10)
  {
    result = sub_274BF1A34();
    if (!v11)
    {
      return sub_274BF19F4();
    }
  }

  return result;
}

uint64_t sub_274B2B940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v36 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B460);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v33 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B468);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = sub_274BF1A24();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  v18 = *(v2 + 16);
  v37[0] = *v2;
  v37[1] = v18;
  v37[2] = *(v2 + 32);
  v38 = *(v2 + 48);
  if ((BYTE8(v37[0]) & 1) != 0 || (v19 = *&v37[0], objc_opt_self(), (v20 = swift_dynamicCastObjCClass()) == 0))
  {
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B470);
    OUTLINED_FUNCTION_0_2();
    (*(v29 + 16))(v5, v35, v28);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_2();
    sub_274AFA930(v30, v31);
    OUTLINED_FUNCTION_2_15();
    sub_274AFA930(v32, &qword_28098B470);
    OUTLINED_FUNCTION_5_7();
    return sub_274BF3A64();
  }

  else
  {
    v21 = v20;
    v34 = v19;
    v22 = [v21 response];
    v23 = [v22 responseDataModel];

    sub_274BF1A74();
    (*(v11 + 32))(v17, v14, v9);
    *v8 = sub_274BF38F4();
    *(v8 + 1) = 0;
    v8[16] = 0;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B488);
    sub_274B2BD04(v37, v17, &v8[*(v24 + 44)]);
    sub_274B01968(v8, v5, &qword_28098B468);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B470);
    OUTLINED_FUNCTION_3_2();
    sub_274AFA930(v25, &qword_28098B468);
    OUTLINED_FUNCTION_2_15();
    sub_274AFA930(v26, &qword_28098B470);
    OUTLINED_FUNCTION_5_7();
    sub_274BF3A64();
    sub_274AFA708(v8, &qword_28098B468);
    return (*(v11 + 8))(v17, v9);
  }
}

uint64_t sub_274B2BD04@<X0>(void **a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v69 = a2;
  v84 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A248);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v65 - v5;
  v7 = sub_274BF1A24();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v71 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v65 - v11;
  v72 = type metadata accessor for LLMAttributionView();
  MEMORY[0x28223BE20](v72);
  v73 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB28);
  MEMORY[0x28223BE20](v74);
  v77 = &v65 - v14;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB30);
  MEMORY[0x28223BE20](v83);
  v76 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v75 = &v65 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B490);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v79 = &v65 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B470);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v82 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v80 = &v65 - v28;
  v81 = v24;
  v78 = *(v24 + 16);
  v78(v27);
  v70 = a1;
  v29 = *a1;
  objc_opt_self();
  v30 = swift_dynamicCastObjCClass();
  v31 = 1;
  if (v30)
  {
    v32 = v30;
    v68 = v20;
    v67 = v8;
    v33 = *(v8 + 16);
    v33(v12, v69, v7);
    v34 = v33;
    v65 = v33;
    v69 = v29;
    v35 = [v32 response];
    v36 = [v35 responseDataModel];

    v66 = sub_274BF1A64();
    v37 = [objc_allocWithZone(sub_274BF1A54()) init];
    v38 = v73;
    v34(v73, v12, v7);
    v39 = v72;
    *(v38 + *(v72 + 20)) = v37;
    v40 = sub_274BF25F4();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v40);
    v41 = objc_allocWithZone(sub_274BF4D84());
    v42 = sub_274BF4D74();
    v43 = (v38 + *(v39 + 28));
    v85 = v42;
    v44 = v42;
    sub_274BF4774();
    v45 = __src[1];
    *v43 = __src[0];
    v43[1] = v45;
    v46 = v71;
    v65(v71, v12, v7);
    v20 = v68;
    v47 = objc_allocWithZone(type metadata accessor for WFAskLLMFeedbackPresenter());
    v48 = WFAskLLMFeedbackPresenter.init(model:conversation:controller:wasBlockedBySafety:viewControllerForPresentation:)(v46, v66, v44, 0, 0);
    (*(v67 + 8))(v12, v7);
    *(v38 + *(v39 + 24)) = v48;
    sub_274BF4AA4();
    sub_274BF34A4();
    v49 = v77;
    sub_274B2C500(v38, v77);
    memcpy((v49 + *(v74 + 36)), __src, 0x70uLL);
    LOBYTE(v48) = sub_274BF3E44();

    v50 = v76;
    sub_274B16ED0(v49, v76, &qword_28098AB28);
    v51 = v83;
    v52 = v50 + *(v83 + 36);
    *v52 = v48;
    v53 = *(v70 + 3);
    *(v52 + 24) = *(v70 + 5);
    *(v52 + 8) = v53;
    *(v52 + 40) = 0;
    v54 = v50;
    v55 = v75;
    sub_274B16ED0(v54, v75, &qword_28098AB30);
    v56 = v79;
    sub_274B16ED0(v55, v79, &qword_28098AB30);
    v31 = 0;
    v57 = v51;
  }

  else
  {
    v57 = v83;
    v56 = v79;
  }

  __swift_storeEnumTagSinglePayload(v56, v31, 1, v57);
  v58 = v82;
  v59 = v80;
  v60 = v78;
  (v78)(v82, v80, v23);
  sub_274B01968(v56, v20, &qword_28098B490);
  v61 = v84;
  (v60)(v84, v58, v23);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B498);
  sub_274B01968(v20, v61 + *(v62 + 48), &qword_28098B490);
  sub_274AFA708(v56, &qword_28098B490);
  v63 = *(v81 + 8);
  v63(v59, v23);
  sub_274AFA708(v20, &qword_28098B490);
  return (v63)(v58, v23);
}

uint64_t sub_274B2C500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LLMAttributionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_274B2C574()
{
  result = qword_28098B4C0;
  if (!qword_28098B4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B4B8);
    sub_274B2C62C();
    sub_274AFA930(&qword_2815A2F98, &qword_280989D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B4C0);
  }

  return result;
}

unint64_t sub_274B2C62C()
{
  result = qword_28098B4C8;
  if (!qword_28098B4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B4C8);
  }

  return result;
}

uint64_t sub_274B2C6A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_274B2C6F0()
{
  sub_274ADDF6C();

  return sub_274BF4754();
}

unint64_t sub_274B2C770()
{
  result = qword_28098B4E8;
  if (!qword_28098B4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B4B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B4A8);
    sub_274BF3454();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B4A0);
    sub_274BF3344();
    sub_274AFA930(&qword_28098B4D8, &qword_28098B4A0);
    sub_274B2C6A8(&qword_28098B4E0, MEMORY[0x277CDD9E0]);
    swift_getOpaqueTypeConformance2();
    sub_274B2C6A8(&qword_28098AE20, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_274AFA930(&qword_28098B4F0, &qword_28098B4F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B4E8);
  }

  return result;
}

uint64_t sub_274B2C974(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LLMAttributionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_4()
{
  v1 = (type metadata accessor for LLMAttributionView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_274BF1A24();
  OUTLINED_FUNCTION_0_2();
  (*(v3 + 8))(v2);

  return swift_deallocObject();
}

uint64_t sub_274B2CB2C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LLMAttributionView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_274B2CBA0()
{
  result = qword_28098B500;
  if (!qword_28098B500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B508);
    sub_274AFA930(&qword_28098B478, &qword_28098B468);
    sub_274AFA930(&qword_28098B480, &qword_28098B470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B500);
  }

  return result;
}

void sub_274B2CC88()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_10_3();
  sub_274BF3A54();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v0);
  v1 = OUTLINED_FUNCTION_78();
  v2(v1);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_72();
}

void *sub_274B2CD3C(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return a3;
  }

  v6 = a3;
  result = a1(&v7, &v6);
  if (!v4)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t TopHitIconMask.hashValue.getter()
{
  v1 = *v0;
  sub_274BF5CD4();
  MEMORY[0x277C65580](v1);
  return sub_274BF5D44();
}

void sub_274B2CE88()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_68();
  sub_274BF3774();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B510);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_2();
  sub_274B32834(v1, v2, &qword_28098B510);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_274BF38E4();
    OUTLINED_FUNCTION_2();
    (*(v5 + 32))(v0, v2);
  }

  else
  {
    sub_274BF54A4();
    v6 = sub_274BF3DF4();
    OUTLINED_FUNCTION_49();

    sub_274BF3764();
    OUTLINED_FUNCTION_73_0();

    v7 = OUTLINED_FUNCTION_56();
    v8(v7);
  }

  OUTLINED_FUNCTION_55();
}

void sub_274B2D01C()
{
  OUTLINED_FUNCTION_58();
  v5 = v4;
  OUTLINED_FUNCTION_68();
  v6 = sub_274BF3774();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7C0);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_2();
  sub_274B32834(v1 + *(v5 + 36), v3, &qword_28098A7C0);
  OUTLINED_FUNCTION_81();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_274BF2F04();
    OUTLINED_FUNCTION_2();
    (*(v11 + 32))(v0, v3);
  }

  else
  {
    sub_274BF54A4();
    v12 = sub_274BF3DF4();
    sub_274BF2BC4();

    sub_274BF3764();
    OUTLINED_FUNCTION_56();
    swift_getAtKeyPath();

    (*(v8 + 8))(v2, v6);
  }

  OUTLINED_FUNCTION_55();
}

uint64_t TopHitView.topHitViewColorScheme.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  sub_274BF2934();
  OUTLINED_FUNCTION_0_2();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_274B2D2F4@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v24 = a1;
  v3 = sub_274BF22F4();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_274BF29E4();
  v6 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_274BF29C4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_274BF22D4();
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B580) + 48);
  *v12 = a2;
  v14 = *MEMORY[0x277D7D5B8];
  v15 = sub_274BF28D4();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  (*(v10 + 104))(v12, *MEMORY[0x277D7D698], v9);
  (*(v6 + 104))(v8, *MEMORY[0x277D7D6D0], v23);
  v16 = v24;
  sub_274BF2A04();
  sub_274BF2304();
  sub_274BF22E4();
  v18 = v17;
  v20 = v19;
  (*(v25 + 8))(v5, v26);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B748);
  v22 = (v16 + *(result + 36));
  *v22 = v18;
  v22[1] = v20;
  return result;
}

uint64_t sub_274B2D5E4()
{
  sub_274AE3C84();
  type metadata accessor for TopHitView();
  return sub_274B2D1CC();
}

uint64_t TopHitView<>.init(icon:iconMask:badges:name:colorScheme:tapHandler:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v16 = *a2;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B510);
  OUTLINED_FUNCTION_67();
  swift_storeEnumTagMultiPayload();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B530);
  v18 = v17[9];
  *(a9 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7C0);
  swift_storeEnumTagMultiPayload();
  v19 = (a9 + v17[10]);
  sub_274AE3C84();
  sub_274BF4774();
  v20 = v29[1];
  *v19 = v29[0];
  v19[1] = v20;
  *(a9 + v17[11]) = a1;
  if (v16 == 2)
  {
    v21 = a1;
    static TopHitIconMask.default(for:)(v29);

    LOBYTE(v16) = v29[0];
  }

  else
  {
    LOBYTE(v29[0]) = v16 & 1;
  }

  *(a9 + v17[12]) = v16 & 1;
  *(a9 + v17[13]) = a3;
  v22 = (a9 + v17[14]);
  *v22 = a4;
  v22[1] = a5;
  v23 = v17[15];
  sub_274BF2934();
  OUTLINED_FUNCTION_2();
  result = (*(v24 + 32))(a9 + v23, a6);
  v26 = (a9 + v17[16]);
  *v26 = j__CGSizeMake;
  v26[1] = 0;
  v27 = (a9 + v17[17]);
  *v27 = a7;
  v27[1] = a8;
  *(a9 + v17[18]) = 0;
  return result;
}

uint64_t TopHitCollectionView.style.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  sub_274BF2994();
  OUTLINED_FUNCTION_0_2();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

__n128 TopHitCollectionView.layout.getter@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (v2 + *(a1 + 64));
  v4 = v3[1].n128_u64[0];
  v5 = v3[1].n128_u8[8];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u64[0] = v4;
  a2[1].n128_u8[8] = v5;
  return result;
}

uint64_t sub_274B2D930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v35 = a6;
  v36 = a4;
  v44 = a2;
  v46 = a1;
  v47 = a7;
  v45 = sub_274BF3484();
  MEMORY[0x28223BE20](v45);
  v48 = (&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_274BF57D4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v69 = v12;
  v70 = AssociatedTypeWitness;
  v71 = a4;
  v72 = WitnessTable;
  v73 = AssociatedConformanceWitness;
  sub_274BF4964();
  v68 = a6;
  v38 = swift_getWitnessTable();
  sub_274BF4B14();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B550);
  sub_274AD766C(&qword_2815A30F8, &qword_28098B550);
  sub_274BF31C4();
  sub_274BF3A74();
  v37 = sub_274BF46B4();
  v39 = sub_274BF33D4();
  v40 = sub_274BF33D4();
  v41 = sub_274BF33D4();
  v43 = sub_274BF33D4();
  v42 = sub_274BF33D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B538);
  sub_274BF33D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B540);
  v16 = sub_274BF33D4();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v35 - v21;
  v69 = a3;
  v70 = v36;
  v71 = a5;
  v72 = v35;
  type metadata accessor for TopHitCollectionView();
  sub_274AE3164(v48);
  v23 = swift_getWitnessTable();
  v66 = sub_274AD766C(&qword_2815A30F0, &qword_28098B550);
  v67 = v38;
  v24 = swift_getWitnessTable();
  v64 = v23;
  v65 = v24;
  v63 = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  v26 = MEMORY[0x277CDF918];
  v61 = v25;
  v62 = MEMORY[0x277CDF918];
  v59 = swift_getWitnessTable();
  v60 = v26;
  v57 = swift_getWitnessTable();
  v58 = v26;
  v55 = swift_getWitnessTable();
  v56 = v26;
  v53 = swift_getWitnessTable();
  v54 = MEMORY[0x277CDF900];
  v27 = swift_getWitnessTable();
  v28 = sub_274AD766C(&qword_2815A2FF8, &qword_28098B538);
  v51 = v27;
  v52 = v28;
  v29 = swift_getWitnessTable();
  sub_274AD9EF0(&qword_2815A3020, MEMORY[0x277CDFC08]);
  v30 = v48;
  sub_274BF44C4();
  sub_274AE2EFC(v30, MEMORY[0x277CDFC08]);
  v31 = sub_274AD766C(&qword_2815A3100, &qword_28098B540);
  v49 = v29;
  v50 = v31;
  v32 = swift_getWitnessTable();
  sub_274ADB48C(v20, v16, v32);
  v33 = *(v17 + 8);
  v33(v20, v16);
  sub_274ADB48C(v22, v16, v32);
  return (v33)(v22, v16);
}

uint64_t sub_274B2DFE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D1>)
{
  v77 = a3;
  v79 = a2;
  v92 = a1;
  v88 = a8;
  v86 = sub_274BF3484();
  MEMORY[0x28223BE20](v86);
  v87 = (&v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_274BF3B54();
  MEMORY[0x28223BE20](v15 - 8);
  v67 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_274BF51A4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v99 = v17;
  v100 = AssociatedTypeWitness;
  v101 = a5;
  v102 = WitnessTable;
  v103 = AssociatedConformanceWitness;
  sub_274BF4964();
  v98[27] = a7;
  v64 = swift_getWitnessTable();
  v65 = sub_274BF2EA4();
  v69 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v91 = &v61 - v21;
  v70 = sub_274BF33D4();
  v74 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v66 = &v61 - v22;
  v72 = sub_274BF33D4();
  v75 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v68 = &v61 - v23;
  v73 = sub_274BF33D4();
  v81 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v61 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B538);
  v80 = sub_274BF33D4();
  v84 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v76 = &v61 - v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B540);
  v83 = sub_274BF33D4();
  v85 = *(v83 - 8);
  v26 = MEMORY[0x28223BE20](v83);
  v78 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v82 = &v61 - v28;
  v61 = sub_274BF37F4();
  v89 = a7;
  v90 = a4;
  v98[10] = a4;
  v98[11] = a5;
  v29 = a5;
  v30 = a6;
  v98[12] = a6;
  v98[13] = a7;
  v31 = a7;
  v32 = v92;
  v98[14] = v92;
  sub_274ADC748();
  sub_274BF2E94();
  v98[2] = a4;
  v98[3] = v29;
  v33 = v29;
  v62 = v29;
  v63 = v30;
  v98[4] = v30;
  v98[5] = v31;
  v98[6] = v32;
  *&v98[7] = a9;
  sub_274B2CD3C(sub_274B323B8, v98, v79, v77 & 1);
  sub_274BF4AA4();
  v59 = v65;
  v60 = swift_getWitnessTable();
  v34 = v66;
  v35 = v91;
  sub_274BF43F4();
  (*(v69 + 8))(v35, v59);
  sub_274BF3E34();
  v99 = v90;
  v100 = v33;
  v101 = v30;
  v102 = v89;
  v91 = type metadata accessor for TopHitCollectionView();
  sub_274BF2954();
  v98[24] = v60;
  v98[25] = MEMORY[0x277CDFC60];
  v36 = v70;
  v37 = swift_getWitnessTable();
  v38 = v68;
  sub_274BF4464();
  (*(v74 + 8))(v34, v36);
  sub_274BF3EA4();
  v39 = v92;
  sub_274BF2944();
  v40 = MEMORY[0x277CDF918];
  v98[22] = v37;
  v98[23] = MEMORY[0x277CDF918];
  v41 = v72;
  v42 = swift_getWitnessTable();
  v43 = v71;
  sub_274BF4464();
  (*(v75 + 8))(v38, v41);
  v93 = v90;
  v94 = v62;
  v95 = v63;
  v96 = v89;
  v97 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B558);
  v98[20] = v42;
  v98[21] = v40;
  v44 = v73;
  v45 = swift_getWitnessTable();
  v46 = sub_274AD9EF0(&qword_2815A3020, MEMORY[0x277CDFC08]);
  v99 = v86;
  v100 = v46;
  swift_getOpaqueTypeConformance2();
  sub_274BF4A94();
  v47 = v76;
  sub_274BF4194();
  (*(v81 + 8))(v43, v44);
  v48 = v87;
  sub_274AE3164(v87);
  v49 = sub_274AD766C(&qword_2815A2FF8, &qword_28098B538);
  v98[18] = v45;
  v98[19] = v49;
  v50 = v80;
  v51 = swift_getWitnessTable();
  v52 = v78;
  sub_274BF44C4();
  sub_274AE2EFC(v48, MEMORY[0x277CDFC08]);
  (*(v84 + 8))(v47, v50);
  v53 = sub_274AD766C(&qword_2815A3100, &qword_28098B540);
  v98[16] = v51;
  v98[17] = v53;
  v54 = v83;
  v55 = swift_getWitnessTable();
  v56 = v82;
  sub_274ADB48C(v52, v54, v55);
  v57 = *(v85 + 8);
  v57(v52, v54);
  sub_274ADB48C(v56, v54, v55);
  return (v57)(v56, v54);
}

uint64_t sub_274B2EA18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a1;
  v39 = a5;
  v40 = a6;
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a5;
  v31 = a4;
  v8 = type metadata accessor for TopHitCollectionView();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v33 = &v29 - v10;
  v11 = sub_274BF51A4();
  v36 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = AssociatedTypeWitness;
  WitnessTable = swift_getWitnessTable();
  v34 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v42 = v11;
  v43 = AssociatedTypeWitness;
  v44 = a3;
  v45 = WitnessTable;
  v46 = AssociatedConformanceWitness;
  v15 = sub_274BF4964();
  v37 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v32 = &v29 - v19;
  v30 = v8;
  v42 = *(v38 + *(v8 + 60));
  v20 = v33;
  (*(v9 + 16))(v33);
  v21 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a2;
  *(v22 + 3) = a3;
  v23 = v30;
  v24 = v39;
  *(v22 + 4) = v31;
  *(v22 + 5) = v24;
  (*(v9 + 32))(&v22[v21], v20, v23);

  sub_274BF4954();
  v41 = v24;
  v25 = swift_getWitnessTable();
  v26 = v32;
  sub_274ADB48C(v18, v15, v25);
  v27 = *(v37 + 8);
  v27(v18, v15);
  sub_274ADB48C(v26, v15, v25);
  return (v27)(v26, v15);
}

double sub_274B2ED74@<D0>(double *a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  v5 = *a1;
  type metadata accessor for TopHitCollectionView();
  sub_274BF2954();
  result = v5 - (v6 + a3 + v6 + a3);
  *a2 = result;
  return result;
}

void sub_274B2EDF0()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_10_3();
  sub_274BF3484();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_4();
  v3 = (v2 - v1);
  type metadata accessor for TopHitCollectionView();
  sub_274AE3164(v3);
  OUTLINED_FUNCTION_26_0();
  sub_274AD9EF0(v4, v5);
  sub_274BF4764();
  sub_274AE2EFC(v3, MEMORY[0x277CDFC08]);
  OUTLINED_FUNCTION_72();
}

uint64_t sub_274B2EEE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B6C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274BFA880;
  v1 = sub_274BF3E24();
  *(inited + 32) = v1;
  v2 = sub_274BF3E04();
  *(inited + 33) = v2;
  v3 = sub_274BF3E14();
  sub_274BF3E14();
  if (sub_274BF3E14() != v1)
  {
    v3 = sub_274BF3E14();
  }

  sub_274BF3E14();
  if (sub_274BF3E14() != v2)
  {
    return sub_274BF3E14();
  }

  return v3;
}

uint64_t (*sub_274B2EFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = a5;
  v11 = *(a1 + 16);
  *(v10 + 48) = *a1;
  *(v10 + 64) = v11;
  *(v10 + 80) = *(a1 + 32);
  return sub_274B32334;
}

uint64_t sub_274B2F040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_274BF57D4();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  v5 = sub_274BF4964();
  v6 = sub_274B32344();
  WitnessTable = swift_getWitnessTable();
  return sub_274B2F194(a1, a2, &type metadata for TopHitRowLayout, v5, v6, WitnessTable, a3);
}

uint64_t sub_274B2F194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v18[0] = a6;
  v18[1] = a7;
  v13 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_274BF3024();
  MEMORY[0x28223BE20](v16);
  (*(v13 + 16))(v15, v7, a3);
  sub_274BF3034();
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  v18[7] = v18[0];
  v18[8] = a1;
  v18[9] = a2;
  swift_getWitnessTable();
  return sub_274BF31D4();
}

double sub_274B2F33C@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for TopHitCollectionView();
  sub_274BF2954();
  result = v3 - (v4 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_274B2F3B0()
{
  sub_274AF62D0();
  v0 = MEMORY[0x277D84F90];
  sub_274BF4E14();
  return v0;
}

void sub_274B2F408(double a1)
{
  if ((*(v1 + 32) & 1) == 0)
  {
    v2 = *(v1 + 24);
    if (v2 > a1)
    {
      v3 = floor((v2 - a1) / (*v1 + a1));
      if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v3 > -9.22337204e18)
      {
        if (v3 < 9.22337204e18)
        {
          if (!__OFADD__(v3, 1))
          {
            return;
          }

LABEL_12:
          __break(1u);
          return;
        }

LABEL_11:
        __break(1u);
        goto LABEL_12;
      }

      __break(1u);
      goto LABEL_11;
    }
  }
}

uint64_t sub_274B2F4BC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(uint64_t *, void (**)(void), uint64_t), uint64_t *a6)
{
  v79 = sub_274BF3184();
  v10 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = (&v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v78 = (&v72 - v13);
  MEMORY[0x28223BE20](v14);
  v76 = (&v72 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B678);
  MEMORY[0x28223BE20](v16);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v72 - v20;
  if ((a2 & 1) != 0 || (a1 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
  {
    v22 = *(a6 + 2);
    if (v22 == 0.0)
    {
      v23 = sub_274BF3214();
      (*(*(v23 - 8) + 16))(v18, a5, v23);
      v24 = *(v16 + 36);
      sub_274AD9EF0(&qword_2815A30E0, MEMORY[0x277CDF7F8]);
      v75 = a5;
      sub_274BF5344();
      v76 = (v10 + 16);
      v25 = (v10 + 8);
      v78 = a6;
      v26 = v77;
      v27 = v79;
      while (1)
      {
        sub_274BF5374();
        if (*&v18[v24] == v80[0])
        {
          break;
        }

        v28 = sub_274BF5414();
        (*v76)(v26);
        v28(v80, 0);
        sub_274BF5384();
        sub_274BF3464();
        LOBYTE(v80[0]) = v29 & 1;
        v81 = v30 & 1;
        sub_274BF3154();
        v32 = v31;
        v34 = v33;
        (*v25)(v26, v27);
        v35 = *a6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_274BBAF30(0, *(v35 + 16) + 1, 1, v35);
          v35 = v40;
        }

        v37 = *(v35 + 16);
        v36 = *(v35 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_274BBAF30(v36 > 1, v37 + 1, 1, v35);
          v35 = v41;
        }

        *(v35 + 16) = v37 + 1;
        v38 = v35 + 16 * v37;
        *(v38 + 32) = v32;
        *(v38 + 40) = v34;
        a6 = v78;
        *v78 = v35;
        if (v22 <= v34)
        {
          v22 = v34;
        }

        v39 = *(a6 + 1);
        if (v39 <= v32)
        {
          v39 = v32;
        }

        *(a6 + 1) = v39;
        *(a6 + 2) = v22;
      }

      sub_274AFA708(v18, &qword_28098B678);
    }

    if (*(v73 + 32))
    {
      sub_274BF3214();
      sub_274AD9EF0(&qword_2815A30E0, MEMORY[0x277CDF7F8]);
      sub_274BF5344();
      sub_274BF5374();
      result = sub_274BF5364();
      if (__OFSUB__(result, 1))
      {
        goto LABEL_47;
      }
    }

    else
    {
      sub_274B2F408(*(a6 + 1));
      sub_274BF3214();
      sub_274AD9EF0(&qword_2815A30E0, MEMORY[0x277CDF7F8]);
      sub_274BF5344();
      sub_274BF5374();
      result = sub_274BF5364();
      if (__OFSUB__(result, 1))
      {
        goto LABEL_48;
      }
    }

    sub_274BF5344();
    sub_274BF5374();
    return sub_274BF5364();
  }

  result = sub_274B069D8(a6[3], *&a1);
  if (v43)
  {
    v44 = sub_274B2FDF0(*&a1, 68.0, *v73);
    swift_isUniquelyReferenced_nonNull_native();
    v80[0] = a6[3];
    result = sub_274B3174C(v44, *&a1);
    a6[3] = v80[0];
  }

  else
  {
    v44 = result;
  }

  v45 = v44 - 1;
  if (__OFSUB__(v44, 1))
  {
    goto LABEL_49;
  }

  v46 = *(a6 + 1);
  if (v45 <= 1)
  {
    v45 = 1;
  }

  v47 = (*&a1 - v46 * v44) / v45;
  v48 = sub_274BF3214();
  (*(*(v48 - 8) + 16))(v21, a5, v48);
  v49 = *(v16 + 36);
  sub_274AD9EF0(&qword_2815A30E0, MEMORY[0x277CDF7F8]);
  sub_274BF5344();
  v77 = (v10 + 16);
  v74 = (v10 + 8);
  v75 = (v10 + 32);
  v50 = 0.0;
  v51 = 1;
  v52 = 0.0;
  for (i = 0.0; ; i = i + v47 + v46)
  {
    sub_274BF5374();
    if (*&v21[v49] == v80[0])
    {
      return sub_274AFA708(v21, &qword_28098B678);
    }

    v54 = sub_274BF5414();
    v55 = v76;
    v56 = v79;
    (*v77)(v76);
    v54(v80, 0);
    sub_274BF5384();
    result = (*v75)(v78, v55, v56);
    if (i + v46 <= *&a1)
    {
      goto LABEL_33;
    }

    if (__OFADD__(v51++, 1))
    {
      break;
    }

    v58 = v50 + v52;
    if (*(v73 + 16) < v51)
    {
      (*v74)(v78, v79, i + v46);
      return sub_274AFA708(v21, &qword_28098B678);
    }

    v50 = v58 + *(v73 + 8);
    i = 0.0;
    v52 = 0.0;
LABEL_33:
    sub_274BF3464();
    LOBYTE(v80[0]) = v59 & 1;
    v81 = v60 & 1;
    sub_274BF3154();
    v62 = v61;
    v64 = v63;
    v65 = *a6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_274BBAF30(0, *(v65 + 16) + 1, 1, v65);
      v65 = v70;
    }

    v67 = *(v65 + 16);
    v66 = *(v65 + 24);
    if (v67 >= v66 >> 1)
    {
      sub_274BBAF30(v66 > 1, v67 + 1, 1, v65);
      v65 = v71;
    }

    (*v74)(v78, v79);
    *(v65 + 16) = v67 + 1;
    v68 = v65 + 16 * v67;
    *(v68 + 32) = v62;
    *(v68 + 40) = v64;
    *a6 = v65;
    if (v46 <= v62)
    {
      v46 = v62;
    }

    v69 = *(a6 + 2);
    if (v69 <= v64)
    {
      v69 = v64;
    }

    *(a6 + 1) = v46;
    *(a6 + 2) = v69;
    if (v52 <= v64)
    {
      v52 = v64;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_274B2FDF0(double a1, double a2, double a3)
{
  v3 = (a1 + a3) / (a2 + a3);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v3 < 9.22337204e18)
  {
    return v3;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_274B2FE44(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v93 = a3;
  v94 = a4;
  v92 = a2;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B658);
  MEMORY[0x28223BE20](v96);
  v14 = &v75 - v13;
  v95 = sub_274BF3184();
  v15 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v83 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v81 = &v75 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B660);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = (&v75 - v23);
  v82 = sub_274BF3214();
  v25 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v91 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B668);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v75 - v28;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B670);
  MEMORY[0x28223BE20](v87);
  v31 = &v75 - v30;
  if (sub_274BDF648())
  {
    return;
  }

  v80 = v21;
  v33 = *(a10 + 8);
  v32 = *(a10 + 16);
  v99.origin.x = a1;
  v99.origin.y = v92;
  v99.size.width = v93;
  v99.size.height = v94;
  Width = CGRectGetWidth(v99);
  v35 = sub_274B069D8(*(a10 + 24), Width);
  if (v36)
  {
    sub_274B2F408(v33);
    v38 = v37;
    v100.origin.x = a1;
    v39 = v92;
    v40 = v93;
    v100.origin.y = v92;
    v100.size.width = v93;
    v41 = v94;
    v100.size.height = v94;
    v42 = CGRectGetWidth(v100);
    v43 = sub_274B2FDF0(v42, v33, v38);
    v101.origin.x = a1;
    v101.origin.y = v39;
    v101.size.width = v40;
    v101.size.height = v41;
    v44 = CGRectGetWidth(v101);
    swift_isUniquelyReferenced_nonNull_native();
    v98[0] = *(a10 + 24);
    sub_274B3174C(v43, v44);
    *(a10 + 24) = v98[0];
  }

  else
  {
    v43 = v35;
  }

  v102.origin.x = a1;
  v102.origin.y = v92;
  v102.size.width = v93;
  v102.size.height = v94;
  v45 = CGRectGetWidth(v102);
  v46 = v43 - 1;
  if (__OFSUB__(v43, 1))
  {
    goto LABEL_32;
  }

  v89 = v32;
  v79 = v14;
  v84 = a10;
  v47 = v45 - v33 * v43;
  if (v46 <= 1)
  {
    v46 = 1;
  }

  v48 = v47 / v46;
  v103.origin.x = a1;
  v103.origin.y = v92;
  v103.size.width = v93;
  v103.size.height = v94;
  MinY = CGRectGetMinY(v103);
  v50 = v82;
  (*(v25 + 16))(v29, a9, v82);
  (*(v25 + 32))(v91, v29, v50);
  v51 = MEMORY[0x277CDF7F8];
  sub_274AD9EF0(&qword_2815A30E8, MEMORY[0x277CDF7F8]);
  sub_274BF50E4();
  v76 = *(v87 + 36);
  *&v31[v76] = 0;
  v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B678) + 36);
  sub_274AD9EF0(&qword_2815A30E0, v51);
  v53 = 0;
  v78 = (v15 + 16);
  v54 = (v15 + 32);
  v87 = *&v33;
  v86 = (v15 + 8);
  v55 = v52;
  v85 = v33 + v48;
  v56 = 0.0;
  v91 = 1;
  v57 = MinY;
  v58 = 0.0;
  v59 = v83;
  v60 = v80;
  v88 = v33;
  v75 = v24;
  v77 = v54;
  while (1)
  {
    sub_274BF5374();
    v61 = v89;
    if (*&v31[v55] == v98[0])
    {
      v62 = 1;
      goto LABEL_13;
    }

    v63 = sub_274BF5414();
    v64 = v81;
    v65 = v95;
    v66 = v96;
    (*v78)(v81);
    v63(v98, 0);
    v54 = v77;
    sub_274BF5384();
    v67 = *(v66 + 48);
    v68 = v79;
    *v79 = v53;
    (*v54)(v68 + v67, v64, v65);
    v69 = __OFADD__(v53++, 1);
    if (v69)
    {
      break;
    }

    *&v31[v76] = v53;
    v60 = v80;
    sub_274B31858(v68, v80, &qword_28098B658);
    v62 = 0;
    v59 = v83;
    v24 = v75;
LABEL_13:
    v70 = v96;
    __swift_storeEnumTagSinglePayload(v60, v62, 1, v96);
    sub_274B31858(v60, v24, &qword_28098B660);
    if (__swift_getEnumTagSinglePayload(v24, 1, v70) == 1)
    {
      sub_274AFA708(v31, &qword_28098B670);
      return;
    }

    v71 = *v24;
    (*v54)(v59, v24 + *(v96 + 48), v95);
    v104.origin.x = a1;
    v104.origin.y = v92;
    v104.size.width = v93;
    v104.size.height = v94;
    if (CGRectGetWidth(v104) < v33 + v58)
    {
      v69 = __OFADD__(v91++, 1);
      if (v69)
      {
        goto LABEL_31;
      }

      MinY = MinY + v56 + *(v90 + 8);
      v58 = 0.0;
      v57 = MinY;
      v56 = 0.0;
    }

    v72 = v61;
    if ((v71 & 0x8000000000000000) == 0)
    {
      v72 = v61;
      if (v71 < *(*v84 + 16))
      {
        v72 = *(*v84 + 16 * v71 + 40);
      }
    }

    if (v56 <= v72)
    {
      v56 = v72;
    }

    v73 = *(v90 + 16);
    if (v73 >= v91)
    {
      v74 = v57;
    }

    else
    {
      v74 = v61 + MinY;
    }

    if (v73 < v91)
    {
      MinY = v61 + MinY;
    }

    v105.origin.x = a1;
    v105.origin.y = v92;
    v105.size.width = v93;
    v105.size.height = v94;
    CGRectGetMinX(v105);
    sub_274BF4B74();
    LOBYTE(v98[0]) = 0;
    v97 = 0;
    v57 = v74;
    sub_274BF3164();
    (*v86)(v59, v95);
    v58 = v85 + v58;
    v33 = v88;
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_274B306D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274B2F3B0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

void (*sub_274B308B0(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_274BF2DD4();
  return sub_274B30924;
}

void sub_274B30924(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void sub_274B309E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_58();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  OUTLINED_FUNCTION_68();
  sub_274BF3774();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameV2(v26);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v28);
  v30 = &a9 - v29;
  v31 = OUTLINED_FUNCTION_78();
  sub_274B32834(v31, v32, v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24(0);
    OUTLINED_FUNCTION_2();
    (*(v33 + 32))(v20, v30);
  }

  else
  {
    sub_274BF54A4();
    v34 = sub_274BF3DF4();
    OUTLINED_FUNCTION_49();

    sub_274BF3764();
    OUTLINED_FUNCTION_73_0();

    v35 = OUTLINED_FUNCTION_56();
    v36(v35);
  }

  OUTLINED_FUNCTION_55();
}

void sub_274B30B80()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_68();
  sub_274BF3774();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_71();
  sub_274B32834(v1, v7, &qword_28098B688);
  if (v9 == 1)
  {
    v3 = v7[1];
    *v0 = v7[0];
    *(v0 + 16) = v3;
    *(v0 + 32) = v8;
  }

  else
  {
    sub_274BF54A4();
    v4 = sub_274BF3DF4();
    OUTLINED_FUNCTION_49();

    sub_274BF3764();
    OUTLINED_FUNCTION_73_0();

    v5 = OUTLINED_FUNCTION_56();
    v6(v5);
  }

  OUTLINED_FUNCTION_72();
}

unint64_t sub_274B30CE0()
{
  result = qword_28098B560;
  if (!qword_28098B560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B560);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TopHitViewMetrics(_BYTE *result, int a2, int a3)
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

uint64_t sub_274B30E30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_274B30E60(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 25))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (*(a1 + 24) & 0x7E | (*(a1 + 24) >> 7)) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_274B30EA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_274B30F20(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_274B30F40(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
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

  *(result + 33) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TopHitButtonStyle(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TopHitButtonStyle(uint64_t result, unsigned int a2, unsigned int a3)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

unint64_t sub_274B31104()
{
  result = qword_28098B578;
  if (!qword_28098B578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B578);
  }

  return result;
}

unint64_t sub_274B31158()
{
  result = qword_2815A3060;
  if (!qword_2815A3060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B5E8);
    sub_274AE5394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A3060);
  }

  return result;
}

unint64_t sub_274B311E4()
{
  result = qword_2815A3038;
  if (!qword_2815A3038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B638);
    sub_274AE4EBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A3038);
  }

  return result;
}

unint64_t sub_274B31270()
{
  result = qword_2815A3078;
  if (!qword_2815A3078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B628);
    sub_274AE4F74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A3078);
  }

  return result;
}

uint64_t sub_274B312FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v17 - v13;
  v12();
  sub_274ADB48C(v11, a4, a6);
  v15 = *(v8 + 8);
  v15(v11, a4);
  sub_274ADB48C(v14, a4, a6);
  return (v15)(v14, a4);
}

_OWORD *sub_274B31430()
{
  OUTLINED_FUNCTION_74();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_274BDA830(v5, v3);
  OUTLINED_FUNCTION_1_12();
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = sub_274BF5C44();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_79();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B330);
  if (OUTLINED_FUNCTION_38_0())
  {
    v10 = OUTLINED_FUNCTION_24();
    sub_274BDA830(v10, v11);
    OUTLINED_FUNCTION_11_3();
    if (!v13)
    {
      goto LABEL_14;
    }

    v2 = v12;
  }

  v14 = *v0;
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v14[7] + 32 * v2);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_72();

    return sub_274B29EBC(v15, v16);
  }

  else
  {
    sub_274B3205C(v2, v6, v4, v8, v14);
    OUTLINED_FUNCTION_72();
  }
}

void sub_274B3153C(uint64_t a1, void *a2)
{
  sub_274BDA8A8();
  OUTLINED_FUNCTION_1_12();
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = v4;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B770);
  if ((OUTLINED_FUNCTION_83() & 1) == 0)
  {
    goto LABEL_5;
  }

  v9 = sub_274BDA8A8();
  if ((v8 & 1) != (v10 & 1))
  {
LABEL_13:
    sub_274AD8430(0, &unk_2815A2F10);
    sub_274BF5C44();
    __break(1u);
    return;
  }

  v7 = v9;
LABEL_5:
  v11 = *v2;
  if (v8)
  {
    v12 = v11[7];
    v13 = *(v12 + 8 * v7);
    *(v12 + 8 * v7) = a1;
  }

  else
  {
    sub_274B320C8(v7, a2, a1, v11);

    v14 = a2;
  }
}

unint64_t sub_274B3165C(uint64_t a1, double a2)
{
  sub_274BDA8E8(a1);
  OUTLINED_FUNCTION_1_12();
  if (v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B768);
  result = OUTLINED_FUNCTION_83();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_274BDA8E8(a1);
  if ((v9 & 1) != (v11 & 1))
  {
LABEL_11:
    result = sub_274BF5C44();
    __break(1u);
    return result;
  }

  v8 = result;
LABEL_5:
  v12 = *v2;
  if (v9)
  {
    *(v12[7] + 8 * v8) = a2;
  }

  else
  {

    return sub_274B3210C(v8, a1, v12, a2);
  }

  return result;
}

unint64_t sub_274B3174C(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_274BDA92C(a2);
  if (__OFADD__(v6[2], (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B680);
  result = sub_274BF5A74();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_274BDA92C(a2);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_11:
    result = sub_274BF5C44();
    __break(1u);
    return result;
  }

  v9 = result;
LABEL_5:
  v13 = *v3;
  if (v10)
  {
    *(v13[7] + 8 * v9) = a1;
  }

  else
  {

    return sub_274B32150(v9, a1, v13, a2);
  }

  return result;
}

uint64_t sub_274B31858(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_8(a1, a2, a3);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return v3;
}

unint64_t sub_274B318A0()
{
  OUTLINED_FUNCTION_74();
  v2 = v1;
  v4 = v3;
  sub_274BDA8E8(v1);
  OUTLINED_FUNCTION_1_12();
  if (v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B6B0);
  if ((OUTLINED_FUNCTION_50() & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = sub_274BDA8E8(v2);
  if ((v9 & 1) != (v11 & 1))
  {
LABEL_13:
    result = sub_274BF5C44();
    __break(1u);
    return result;
  }

  v8 = v10;
LABEL_5:
  if (v9)
  {
    *(*(*v0 + 56) + 8 * v8) = v4;
    OUTLINED_FUNCTION_72();
  }

  else
  {
    OUTLINED_FUNCTION_72();

    return sub_274B32194(v14, v15, v16, v17);
  }
}

uint64_t sub_274B3199C(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6)
{
  sub_274BDA830(a5, a6);
  OUTLINED_FUNCTION_1_12();
  if (v14)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v12;
  v16 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B6B8);
  if ((sub_274BF5A74() & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = sub_274BDA830(a5, a6);
  if ((v16 & 1) != (v18 & 1))
  {
LABEL_13:
    result = sub_274BF5C44();
    __break(1u);
    return result;
  }

  v15 = v17;
LABEL_5:
  if (v16)
  {
    v19 = *(*v6 + 56) + 32 * v15;
    *v19 = a1;
    *(v19 + 8) = a2;
    *(v19 + 16) = a3;
    *(v19 + 24) = a4 & 1;
    *(v19 + 25) = HIBYTE(a4) & 1;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_66();
    sub_274B321CC(v21, v22, a6, a1, a2, a3, v23, v24);
  }
}

void sub_274B31B1C()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_61(v3, v4);
  OUTLINED_FUNCTION_1_12();
  if (v7)
  {
    __break(1u);
LABEL_12:
    type metadata accessor for WFGlyphCharacter(0);
    sub_274BF5C44();
    __break(1u);
    return;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B348);
  if (OUTLINED_FUNCTION_50())
  {
    sub_274BDA978(v1);
    OUTLINED_FUNCTION_11_3();
    if (!v11)
    {
      goto LABEL_12;
    }

    v8 = v10;
  }

  v12 = *v2;
  if (v9)
  {
    *(*(v12 + 56) + 8 * v8) = v0;
    OUTLINED_FUNCTION_72();
  }

  else
  {
    sub_274B3222C(v8, v1, v0, v12);
    OUTLINED_FUNCTION_72();
  }
}

void sub_274B31BEC()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_61(v3, v4);
  OUTLINED_FUNCTION_1_12();
  if (v7)
  {
    __break(1u);
LABEL_12:
    type metadata accessor for WFGlyphCharacter(0);
    sub_274BF5C44();
    __break(1u);
    return;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B338);
  if (OUTLINED_FUNCTION_50())
  {
    sub_274BDA978(v1);
    OUTLINED_FUNCTION_11_3();
    if (!v11)
    {
      goto LABEL_12;
    }

    v8 = v10;
  }

  v12 = *v2;
  if (v9)
  {
    *(*(v12 + 56) + 8 * v8) = v0;
    OUTLINED_FUNCTION_72();
  }

  else
  {
    sub_274B3222C(v8, v1, v0, v12);
    OUTLINED_FUNCTION_72();
  }
}

uint64_t sub_274B31CBC()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_12_4(v4, v5, v6);
  OUTLINED_FUNCTION_1_12();
  if (v7)
  {
    __break(1u);
LABEL_14:
    result = sub_274BF5C44();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_79();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B6A8);
  if (OUTLINED_FUNCTION_38_0())
  {
    v8 = OUTLINED_FUNCTION_57();
    sub_274BDA830(v8, v9);
    OUTLINED_FUNCTION_11_3();
    if (!v11)
    {
      goto LABEL_14;
    }

    v3 = v10;
  }

  if (v2)
  {
    *(*(*v1 + 56) + 8 * v3) = v0;
    OUTLINED_FUNCTION_72();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_41();
    sub_274B32264(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_72();
  }
}

void sub_274B31D94()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_12_4(v4, v5, v6);
  OUTLINED_FUNCTION_1_12();
  if (v7)
  {
    __break(1u);
LABEL_12:
    sub_274BF5C44();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_79();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B6A0);
  if (OUTLINED_FUNCTION_38_0())
  {
    v8 = OUTLINED_FUNCTION_57();
    sub_274BDA830(v8, v9);
    OUTLINED_FUNCTION_11_3();
    if (!v11)
    {
      goto LABEL_12;
    }

    v3 = v10;
  }

  if (v2)
  {
    *(*(*v1 + 56) + 8 * v3) = v0;
    OUTLINED_FUNCTION_72();
  }

  else
  {
    v12 = OUTLINED_FUNCTION_41();
    sub_274B32264(v12, v13, v14, v15, v16);
    OUTLINED_FUNCTION_72();
  }
}

uint64_t sub_274B31E58()
{
  OUTLINED_FUNCTION_58();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_274BDA830(v3, v1);
  OUTLINED_FUNCTION_1_12();
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B690);
  if ((sub_274BF5A74() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_274BDA830(v4, v2);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_274BF5C44();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  if (v13)
  {
    v16 = (*(*v0 + 56) + 16 * v12);
    *v16 = v8;
    v16[1] = v6;
    OUTLINED_FUNCTION_55();
  }

  else
  {
    v19 = OUTLINED_FUNCTION_78();
    sub_274B322AC(v19, v20, v2, v8, v6, v21);
    OUTLINED_FUNCTION_55();
  }
}

uint64_t sub_274B31F84()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_12_4(v4, v5, v6);
  OUTLINED_FUNCTION_1_12();
  if (v7)
  {
    __break(1u);
LABEL_14:
    result = sub_274BF5C44();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_79();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B698);
  if (OUTLINED_FUNCTION_38_0())
  {
    v8 = OUTLINED_FUNCTION_57();
    sub_274BDA830(v8, v9);
    OUTLINED_FUNCTION_11_3();
    if (!v11)
    {
      goto LABEL_14;
    }

    v3 = v10;
  }

  if (v2)
  {
    *(*(*v1 + 56) + 8 * v3) = v0;
    OUTLINED_FUNCTION_72();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_41();
    sub_274B32264(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_72();
  }
}

_OWORD *sub_274B3205C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_274B29EBC(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_274B320C8(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_274B3210C(unint64_t result, uint64_t a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a2;
  *(a3[7] + 8 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

unint64_t sub_274B32150(unint64_t result, uint64_t a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a4;
  *(a3[7] + 8 * result) = a2;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

unint64_t sub_274B32194(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_84(a1, a2, a3, a4);
  *(v7 + 8 * result) = v6;
  *(*(v5 + 56) + 8 * result) = v8;
  v9 = *(v5 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v11;
  }

  return result;
}

unint64_t sub_274B321CC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = a8[7] + 32 * result;
  *v9 = a4;
  *(v9 + 8) = a5;
  *(v9 + 16) = a6;
  *(v9 + 24) = a7 & 1;
  *(v9 + 25) = HIBYTE(a7) & 1;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

unint64_t sub_274B3222C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_84(a1, a2, a3, a4);
  *(v7 + 2 * result) = v6;
  *(*(v5 + 56) + 8 * result) = v8;
  v9 = *(v5 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v11;
  }

  return result;
}

unint64_t sub_274B32264(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_274B322AC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_274B32344()
{
  result = qword_28098B6C0;
  if (!qword_28098B6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B6C0);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{
  type metadata accessor for TopHitCollectionView();
  OUTLINED_FUNCTION_1_1();
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = v1 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7C0);
  OUTLINED_FUNCTION_67();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_274BF2F04();
    OUTLINED_FUNCTION_0_2();
    (*(v5 + 8))(v1 + v3);
  }

  else
  {
  }

  sub_274AEF5C0(*(v4 + v0[13]), *(v4 + v0[13] + 8));
  v6 = v0[14];
  sub_274BF2994();
  OUTLINED_FUNCTION_0_2();
  (*(v7 + 8))(v4 + v6);

  return swift_deallocObject();
}

uint64_t sub_274B32574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(uint64_t))
{
  a5(0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_2();
  v9 = OUTLINED_FUNCTION_24();
  v10(v9);
  return a6(v6);
}

uint64_t sub_274B32628()
{
  OUTLINED_FUNCTION_53_0();
  type metadata accessor for TopHitView();
  OUTLINED_FUNCTION_53_0();

  return sub_274B2D5E4();
}

unint64_t sub_274B326A4()
{
  result = qword_2815A3048;
  if (!qword_2815A3048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B6D8);
    sub_274AE4B7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A3048);
  }

  return result;
}

unint64_t sub_274B327A8()
{
  result = qword_2815A2FD0;
  if (!qword_2815A2FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B780);
    sub_274AE09B4();
    sub_274AE3010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A2FD0);
  }

  return result;
}

uint64_t sub_274B32834(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_8(a1, a2, a3);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return v3;
}

uint64_t OUTLINED_FUNCTION_13_4@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_40()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_62()
{

  return sub_274BF3A64();
}

uint64_t OUTLINED_FUNCTION_73_0()
{

  return swift_getAtKeyPath();
}

uint64_t OUTLINED_FUNCTION_83()
{

  return sub_274BF5A74();
}

void *sub_274B32B00@<X0>(void **a1@<X0>, char a2@<W3>, void *a3@<X8>)
{
  v5 = *a1;
  WFImageSizeFromFile();
  v7 = v6;
  v9 = v8;
  if (a2)
  {
    v10 = sub_274B32F18(v5);
    sub_274BF4A94();
    sub_274BF34A4();
    __dst[0] = 0;
    memcpy(&v18[6], __src, 0x70uLL);
    *v17 = v10;
    *&v17[8] = v7 / v9;
    v17[16] = 0;
    v17[17] = 0;
    memcpy(&v17[18], v18, 0x76uLL);
    *&v17[136] = 0;
    sub_274B34A64(v17);
  }

  else
  {
    v11 = sub_274BF38F4();
    v16[0] = 1;
    sub_274B32D64(v5, v19, v7, v9);
    memcpy(__dst, v19, 0xA1uLL);
    memcpy(__src, v19, 0xA1uLL);
    sub_274B066B4(__dst, v17, &qword_28098B838);
    sub_274B0671C(__src, &qword_28098B838);
    memcpy(&v13[7], __dst, 0xA1uLL);
    *v17 = v11;
    *&v17[8] = 0;
    v17[16] = v16[0];
    memcpy(&v17[17], v13, 0xA8uLL);
    sub_274B34C94(v17);
  }

  memcpy(v16, v17, sizeof(v16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B7E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B7E8);
  sub_274AFA930(&qword_28098B7F0, &qword_28098B7E0);
  sub_274B34A70();
  sub_274BF3A64();
  return memcpy(a3, v19, 0xBAuLL);
}

uint64_t sub_274B32D64@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v7 = sub_274B32F18(a1);
  sub_274BF4A94();
  sub_274BF34A4();
  v18 = 0;
  v11[144] = 0;
  v13[0] = v7;
  v8 = a3 / a4;
  memcpy(&v13[1], __src, 0x70uLL);
  *&v13[15] = v8;
  LOWORD(v13[16]) = 256;
  memcpy(&v11[7], v13, 0x82uLL);
  v10[136] = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  memcpy((a2 + 9), v11, 0x89uLL);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  v14 = v7;
  memcpy(v15, __src, sizeof(v15));
  v16 = v8;
  v17 = 256;
  sub_274B066B4(v13, v10, &qword_28098B840);
  return sub_274B0671C(&v14, &qword_28098B840);
}

id sub_274B32F18(void *a1)
{
  v2 = sub_274B34C9C(a1);
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  if (v3 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v3;
  }

  v6 = sub_274BF1F74();
  v7 = WFUIImageWithAnimatedGIFData();

  if (v7)
  {
    sub_274AF58B0(v4, v5);
  }

  else
  {
    sub_274AD8430(0, &unk_28098EFB0);
    v7 = sub_274B32FDC();
  }

  return v7;
}

id sub_274B32FDC()
{
  OUTLINED_FUNCTION_16_2();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_4_8();
  v1 = sub_274BF1F74();
  v2 = [v0 initWithData_];

  v3 = OUTLINED_FUNCTION_4_8();
  sub_274AF58B0(v3, v4);
  return v2;
}

id sub_274B33048()
{
  type metadata accessor for CustomImageView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setContentMode_];
  return v0;
}

uint64_t sub_274B330B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274B35224();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_274B33118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274B35224();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_274B3317C()
{
  sub_274B35224();
  sub_274BF3A24();
  __break(1u);
}

id sub_274B331D4(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CustomImageView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithImage_, a1);

  return v3;
}

id sub_274B33258(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CustomImageView();
  v5 = objc_msgSendSuper2(&v7, sel_initWithImage_highlightedImage_, a1, a2);

  return v5;
}

id sub_274B33308(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for CustomImageView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_274B33394(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CustomImageView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_274B33428()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustomImageView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_274B334D0(unint64_t *a1)
{
  sub_274AD8430(0, a1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();

  return v2;
}

uint64_t sub_274B33594(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_274AD8430(0, a3);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_274BF2D74();
}

void sub_274B33628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_18_3();
  a23 = v29;
  a24 = v30;
  OUTLINED_FUNCTION_16_2();
  sub_274B334D0(&qword_28098B858);
  OUTLINED_FUNCTION_19_3();
  if (v33)
  {
    OUTLINED_FUNCTION_27_1(v31, v32, &qword_28098B858);
    v37 = *(v25 + 24);
    if (v37 && (objc_opt_self(), OUTLINED_FUNCTION_17_3()))
    {
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_7_10();
      v38 = swift_allocObject();
      OUTLINED_FUNCTION_9_9(v38);
      OUTLINED_FUNCTION_0_13();
      OUTLINED_FUNCTION_2_16();
      a11 = v39;
      a12 = &block_descriptor_82;
      _Block_copy(&a9);
      v40 = OUTLINED_FUNCTION_29_1();
      v41 = v28;
      OUTLINED_FUNCTION_28_1();
      v42 = OUTLINED_FUNCTION_4_8();
      sub_274ADDED0(v42);

      OUTLINED_FUNCTION_26_1([v26 objectClass], sel_getObjectRepresentation_forClass_);
      _Block_release(v27);
    }

    else
    {
      v43 = *(v25 + 16);
      OUTLINED_FUNCTION_7_10();
      v44 = swift_allocObject();
      OUTLINED_FUNCTION_9_9(v44);
      OUTLINED_FUNCTION_0_13();
      OUTLINED_FUNCTION_1_13();
      a11 = v45;
      a12 = &block_descriptor_76;
      _Block_copy(&a9);
      OUTLINED_FUNCTION_15_3();
      v46 = OUTLINED_FUNCTION_4_8();
      sub_274ADDED0(v46);
      v47 = v43;
      v48 = OUTLINED_FUNCTION_30_1();
      if (v37)
      {
        objc_opt_self();
        v48 = OUTLINED_FUNCTION_17_3();
        v49 = v48;
        if (v48)
        {
          v48 = v37;
        }
      }

      else
      {
        v49 = 0;
      }

      OUTLINED_FUNCTION_14_1(v48, sel_getFileRepresentation_forType_);

      _Block_release(v26);
    }

    OUTLINED_FUNCTION_13_5();
  }

  else
  {
    OUTLINED_FUNCTION_13_5();

    sub_274AE8EFC(v34, v35);
  }
}

void sub_274B3380C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_18_3();
  a23 = v29;
  a24 = v30;
  OUTLINED_FUNCTION_16_2();
  sub_274B334D0(&qword_28098B7D0);
  OUTLINED_FUNCTION_19_3();
  if (v33)
  {
    OUTLINED_FUNCTION_27_1(v31, v32, &qword_28098B7D0);
    v37 = *(v25 + 24);
    if (v37 && (objc_opt_self(), OUTLINED_FUNCTION_17_3()))
    {
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_7_10();
      v38 = swift_allocObject();
      OUTLINED_FUNCTION_9_9(v38);
      OUTLINED_FUNCTION_0_13();
      OUTLINED_FUNCTION_2_16();
      a11 = v39;
      a12 = &block_descriptor_9;
      _Block_copy(&a9);
      v40 = OUTLINED_FUNCTION_29_1();
      v41 = v28;
      OUTLINED_FUNCTION_28_1();
      v42 = OUTLINED_FUNCTION_4_8();
      sub_274ADDED0(v42);

      OUTLINED_FUNCTION_26_1([v26 objectClass], sel_getObjectRepresentation_forClass_);
      _Block_release(v27);
    }

    else
    {
      v43 = *(v25 + 16);
      OUTLINED_FUNCTION_7_10();
      v44 = swift_allocObject();
      OUTLINED_FUNCTION_9_9(v44);
      OUTLINED_FUNCTION_0_13();
      OUTLINED_FUNCTION_1_13();
      a11 = v45;
      a12 = &block_descriptor_4;
      _Block_copy(&a9);
      OUTLINED_FUNCTION_15_3();
      v46 = OUTLINED_FUNCTION_4_8();
      sub_274ADDED0(v46);
      v47 = v43;
      v48 = OUTLINED_FUNCTION_30_1();
      if (v37)
      {
        objc_opt_self();
        v48 = OUTLINED_FUNCTION_17_3();
        v49 = v48;
        if (v48)
        {
          v48 = v37;
        }
      }

      else
      {
        v49 = 0;
      }

      OUTLINED_FUNCTION_14_1(v48, sel_getFileRepresentation_forType_);

      _Block_release(v26);
    }

    OUTLINED_FUNCTION_13_5();
  }

  else
  {
    OUTLINED_FUNCTION_13_5();

    sub_274AE8EFC(v34, v35);
  }
}

void sub_274B339F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_18_3();
  a23 = v29;
  a24 = v30;
  OUTLINED_FUNCTION_16_2();
  sub_274B334D0(&qword_28098B848);
  OUTLINED_FUNCTION_19_3();
  if (v33)
  {
    OUTLINED_FUNCTION_27_1(v31, v32, &qword_28098B848);
    v37 = *(v25 + 24);
    if (v37 && (objc_opt_self(), OUTLINED_FUNCTION_17_3()))
    {
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_7_10();
      v38 = swift_allocObject();
      OUTLINED_FUNCTION_9_9(v38);
      OUTLINED_FUNCTION_0_13();
      OUTLINED_FUNCTION_2_16();
      a11 = v39;
      a12 = &block_descriptor_34_0;
      _Block_copy(&a9);
      v40 = OUTLINED_FUNCTION_29_1();
      v41 = v28;
      OUTLINED_FUNCTION_28_1();
      v42 = OUTLINED_FUNCTION_4_8();
      sub_274ADDED0(v42);

      OUTLINED_FUNCTION_26_1([v26 objectClass], sel_getObjectRepresentation_forClass_);
      _Block_release(v27);
    }

    else
    {
      v43 = *(v25 + 16);
      OUTLINED_FUNCTION_7_10();
      v44 = swift_allocObject();
      OUTLINED_FUNCTION_9_9(v44);
      OUTLINED_FUNCTION_0_13();
      OUTLINED_FUNCTION_1_13();
      a11 = v45;
      a12 = &block_descriptor_28;
      _Block_copy(&a9);
      OUTLINED_FUNCTION_15_3();
      v46 = OUTLINED_FUNCTION_4_8();
      sub_274ADDED0(v46);
      v47 = v43;
      v48 = OUTLINED_FUNCTION_30_1();
      if (v37)
      {
        objc_opt_self();
        v48 = OUTLINED_FUNCTION_17_3();
        v49 = v48;
        if (v48)
        {
          v48 = v37;
        }
      }

      else
      {
        v49 = 0;
      }

      OUTLINED_FUNCTION_14_1(v48, sel_getFileRepresentation_forType_);

      _Block_release(v26);
    }

    OUTLINED_FUNCTION_13_5();
  }

  else
  {
    OUTLINED_FUNCTION_13_5();

    sub_274AE8EFC(v34, v35);
  }
}

void sub_274B33BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_18_3();
  a23 = v29;
  a24 = v30;
  OUTLINED_FUNCTION_16_2();
  sub_274B334D0(&unk_28098EFB0);
  OUTLINED_FUNCTION_19_3();
  if (v33)
  {
    OUTLINED_FUNCTION_27_1(v31, v32, &unk_28098EFB0);
    v37 = *(v25 + 24);
    if (v37 && (objc_opt_self(), OUTLINED_FUNCTION_17_3()))
    {
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_7_10();
      v38 = swift_allocObject();
      OUTLINED_FUNCTION_9_9(v38);
      OUTLINED_FUNCTION_0_13();
      OUTLINED_FUNCTION_2_16();
      a11 = v39;
      a12 = &block_descriptor_106;
      _Block_copy(&a9);
      v40 = OUTLINED_FUNCTION_29_1();
      v41 = v28;
      OUTLINED_FUNCTION_28_1();
      v42 = OUTLINED_FUNCTION_4_8();
      sub_274ADDED0(v42);

      OUTLINED_FUNCTION_26_1([v26 objectClass], sel_getObjectRepresentation_forClass_);
      _Block_release(v27);
    }

    else
    {
      v43 = *(v25 + 16);
      OUTLINED_FUNCTION_7_10();
      v44 = swift_allocObject();
      OUTLINED_FUNCTION_9_9(v44);
      OUTLINED_FUNCTION_0_13();
      OUTLINED_FUNCTION_1_13();
      a11 = v45;
      a12 = &block_descriptor_100;
      _Block_copy(&a9);
      OUTLINED_FUNCTION_15_3();
      v46 = OUTLINED_FUNCTION_4_8();
      sub_274ADDED0(v46);
      v47 = v43;
      v48 = OUTLINED_FUNCTION_30_1();
      if (v37)
      {
        objc_opt_self();
        v48 = OUTLINED_FUNCTION_17_3();
        v49 = v48;
        if (v48)
        {
          v48 = v37;
        }
      }

      else
      {
        v49 = 0;
      }

      OUTLINED_FUNCTION_14_1(v48, sel_getFileRepresentation_forType_);

      _Block_release(v26);
    }

    OUTLINED_FUNCTION_13_5();
  }

  else
  {
    OUTLINED_FUNCTION_13_5();

    sub_274AE8EFC(v34, v35);
  }
}

void sub_274B33DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_18_3();
  a23 = v29;
  a24 = v30;
  OUTLINED_FUNCTION_16_2();
  sub_274B334D0(&qword_28098B850);
  OUTLINED_FUNCTION_19_3();
  if (v33)
  {
    OUTLINED_FUNCTION_27_1(v31, v32, &qword_28098B850);
    v37 = *(v25 + 24);
    if (v37 && (objc_opt_self(), OUTLINED_FUNCTION_17_3()))
    {
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_7_10();
      v38 = swift_allocObject();
      OUTLINED_FUNCTION_9_9(v38);
      OUTLINED_FUNCTION_0_13();
      OUTLINED_FUNCTION_2_16();
      a11 = v39;
      a12 = &block_descriptor_58;
      _Block_copy(&a9);
      v40 = OUTLINED_FUNCTION_29_1();
      v41 = v28;
      OUTLINED_FUNCTION_28_1();
      v42 = OUTLINED_FUNCTION_4_8();
      sub_274ADDED0(v42);

      OUTLINED_FUNCTION_26_1([v26 objectClass], sel_getObjectRepresentation_forClass_);
      _Block_release(v27);
    }

    else
    {
      v43 = *(v25 + 16);
      OUTLINED_FUNCTION_7_10();
      v44 = swift_allocObject();
      OUTLINED_FUNCTION_9_9(v44);
      OUTLINED_FUNCTION_0_13();
      OUTLINED_FUNCTION_1_13();
      a11 = v45;
      a12 = &block_descriptor_52;
      _Block_copy(&a9);
      OUTLINED_FUNCTION_15_3();
      v46 = OUTLINED_FUNCTION_4_8();
      sub_274ADDED0(v46);
      v47 = v43;
      v48 = OUTLINED_FUNCTION_30_1();
      if (v37)
      {
        objc_opt_self();
        v48 = OUTLINED_FUNCTION_17_3();
        v49 = v48;
        if (v48)
        {
          v48 = v37;
        }
      }

      else
      {
        v49 = 0;
      }

      OUTLINED_FUNCTION_14_1(v48, sel_getFileRepresentation_forType_);

      _Block_release(v26);
    }

    OUTLINED_FUNCTION_13_5();
  }

  else
  {
    OUTLINED_FUNCTION_13_5();

    sub_274AE8EFC(v34, v35);
  }
}

uint64_t sub_274B33F9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = sub_274BF4C94();
  OUTLINED_FUNCTION_1();
  v36 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4();
  v20 = v19 - v18;
  v35 = sub_274BF4CD4();
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4();
  v26 = v25 - v24;
  sub_274AD8430(0, &qword_280989F80);
  v34 = sub_274BF5504();
  sub_274B066B4(a1, v38, &qword_28098B300);
  v27 = swift_allocObject();
  v28 = v38[1];
  *(v27 + 16) = v38[0];
  *(v27 + 32) = v28;
  *(v27 + 48) = a5;
  *(v27 + 56) = a4;
  *(v27 + 64) = a6;
  *(v27 + 72) = a7;
  aBlock[4] = a9;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_6();
  aBlock[2] = v29;
  aBlock[3] = a10;
  v30 = _Block_copy(aBlock);

  v31 = a4;
  sub_274ADDED0(a6);

  sub_274BF4CB4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_274B349A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F90);
  OUTLINED_FUNCTION_8_8(&qword_280989F98);
  OUTLINED_FUNCTION_31_1();
  sub_274BF57F4();
  v32 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x277C64DC0](v32);
  _Block_release(v30);

  (*(v36 + 8))(v20, v15);
  return (*(v22 + 8))(v26, v35);
}

void sub_274B34244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_18_3();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_10_4();
  sub_274B066B4(v28, &a11, &qword_28098B300);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B300);
  v29 = OUTLINED_FUNCTION_11_0();
  sub_274AD8430(v29, v30);
  if (OUTLINED_FUNCTION_24_2() && a10)
  {
    v31 = a10;
    OUTLINED_FUNCTION_25_1(a10, 0);

    if (!v24)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v25)
  {
    v32 = v25;
    v33 = v25;
  }

  else
  {
    sub_274B349FC();
    v33 = swift_allocError();
    a11 = 1;
  }

  OUTLINED_FUNCTION_25_1(v33, 1);
  if (v24)
  {
LABEL_9:
    v24();
  }

LABEL_10:
  OUTLINED_FUNCTION_13_5();
}

void sub_274B34334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_18_3();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_10_4();
  sub_274B066B4(v28, &a11, &qword_28098B300);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B300);
  v29 = OUTLINED_FUNCTION_11_0();
  sub_274AD8430(v29, v30);
  if (OUTLINED_FUNCTION_24_2())
  {
    v31 = a10;
    OUTLINED_FUNCTION_25_1(a10, 0);

    if (!v24)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v25)
  {
    v32 = v25;
    v33 = v25;
  }

  else
  {
    sub_274B349FC();
    v33 = swift_allocError();
    a11 = 1;
  }

  OUTLINED_FUNCTION_25_1(v33, 1);
  if (v24)
  {
LABEL_8:
    v24();
  }

LABEL_9:
  OUTLINED_FUNCTION_13_5();
}

uint64_t sub_274B34420(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (!a2)
  {
    memset(v14, 0, sizeof(v14));
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  ObjectType = swift_getObjectType();
  *&v12 = a2;
  sub_274B29EBC(&v12, v14);
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_274BF4F44();
  v5 = v9;
LABEL_6:

  swift_unknownObjectRetain();
  v10 = a4;
  v7(v14, v8, v5, a4);

  return sub_274B0671C(v14, &qword_28098B300);
}

uint64_t sub_274B34508(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = sub_274BF4C94();
  OUTLINED_FUNCTION_1();
  v36 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  sub_274BF4CD4();
  OUTLINED_FUNCTION_1();
  v34 = v21;
  v35 = v20;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4();
  v24 = v23 - v22;
  sub_274AD8430(0, &qword_280989F80);
  v33 = sub_274BF5504();
  v25 = swift_allocObject();
  v25[2] = a1;
  v25[3] = a3;
  v25[4] = a2;
  v25[5] = a4;
  v25[6] = a5;
  aBlock[4] = a7;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_6();
  aBlock[2] = v26;
  aBlock[3] = a8;
  v27 = _Block_copy(aBlock);
  v28 = a1;

  v29 = a2;
  sub_274ADDED0(a4);

  sub_274BF4CB4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_274B349A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F90);
  OUTLINED_FUNCTION_8_8(&qword_280989F98);
  OUTLINED_FUNCTION_31_1();
  sub_274BF57F4();
  v30 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x277C64DC0](v30);
  _Block_release(v27);

  (*(v36 + 8))(v19, v14);
  return (*(v34 + 8))(v24, v35);
}

uint64_t sub_274B347C8()
{
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    v7 = v5;
    v8 = 0;
  }

  else
  {
    if (v1)
    {
      v9 = v1;
      v7 = v1;
    }

    else
    {
      sub_274B349FC();
      v7 = swift_allocError();
    }

    v8 = 1;
  }

  result = OUTLINED_FUNCTION_25_1(v7, v8);
  if (v0)
  {
    return v0(result);
  }

  return result;
}

void sub_274B34890(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_274B349A4()
{
  result = qword_280989F88;
  if (!qword_280989F88)
  {
    sub_274BF4C94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989F88);
  }

  return result;
}

unint64_t sub_274B349FC()
{
  result = qword_28098B7D8;
  if (!qword_28098B7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B7D8);
  }

  return result;
}

unint64_t sub_274B34A70()
{
  result = qword_28098B7F8;
  if (!qword_28098B7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B7E8);
    sub_274B34B28();
    sub_274AFA930(&qword_28098B828, &qword_28098B830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B7F8);
  }

  return result;
}

unint64_t sub_274B34B28()
{
  result = qword_28098B800;
  if (!qword_28098B800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B808);
    sub_274B34BB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B800);
  }

  return result;
}

unint64_t sub_274B34BB4()
{
  result = qword_28098B810;
  if (!qword_28098B810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B818);
    sub_274B34C40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B810);
  }

  return result;
}

unint64_t sub_274B34C40()
{
  result = qword_28098B820;
  if (!qword_28098B820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B820);
  }

  return result;
}

uint64_t sub_274B34C9C(void *a1)
{
  v1 = [a1 mappedData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_274BF1F84();

  return v3;
}

uint64_t objectdestroy_2Tm()
{

  if (*(v0 + 24))
  {
  }

  OUTLINED_FUNCTION_7_10();

  return swift_deallocObject();
}

uint64_t objectdestroy_11Tm()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_17Tm_0()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_274B3516C(uint64_t *a1, unsigned int a2)
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

uint64_t sub_274B351C0(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_274B35224()
{
  result = qword_28098B870;
  if (!qword_28098B870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B870);
  }

  return result;
}

void *OUTLINED_FUNCTION_9_9(void *result)
{
  result[2] = v2;
  result[3] = v3;
  result[4] = v1;
  return result;
}

uint64_t sub_274B35344@<X0>(uint64_t a1@<X8>)
{
  v2 = dlopen(0, 1);
  if (v2)
  {
    v3 = v2;
    v4 = dlsym(v2, "_mh_execute_header");
    if (v4 && (v5 = v4 + 8, (v6 = v4[4]) != 0))
    {
      while (*v5 != 27)
      {
        v5 = (v5 + v5[1]);
        if (!--v6)
        {
          goto LABEL_6;
        }
      }

      sub_274BF2144();
      v7 = sub_274BF2164();
      v8 = a1;
      v9 = 0;
    }

    else
    {
LABEL_6:
      v7 = sub_274BF2164();
      v8 = a1;
      v9 = 1;
    }

    __swift_storeEnumTagSinglePayload(v8, v9, 1, v7);

    return dlclose(v3);
  }

  else
  {
    v10 = sub_274BF2164();

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v10);
  }
}

uint64_t DebugMenuView.init(database:close:onShare:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a4;
  v42 = a5;
  v39 = a2;
  v40 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEE0);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  if (qword_2815A36B0 != -1)
  {
    swift_once();
  }

  type metadata accessor for LogStreamManager(0);
  sub_274B41268(&qword_28098B890, type metadata accessor for LogStreamManager);

  OUTLINED_FUNCTION_4_9();
  *a6 = sub_274BF3264();
  *(a6 + 8) = v14;
  if (qword_2815A3300 != -1)
  {
    swift_once();
  }

  v15 = qword_2815A3308;
  type metadata accessor for DebugStatusBarManager();
  sub_274B41268(&qword_280989FD8, type metadata accessor for DebugStatusBarManager);
  v16 = v15;
  OUTLINED_FUNCTION_4_9();
  *(a6 + 16) = sub_274BF3264();
  *(a6 + 24) = v17;
  if (qword_2815A32D8 != -1)
  {
    swift_once();
  }

  type metadata accessor for AttributeGraphProfiler();
  sub_274B41268(&qword_280989A28, type metadata accessor for AttributeGraphProfiler);

  *(a6 + 32) = sub_274BF3264();
  *(a6 + 40) = v18;
  *(a6 + 48) = OUTLINED_FUNCTION_2_17();
  sub_274BF4F44();
  v19 = objc_opt_self();
  v20 = [v19 systemShortcutsUserDefaults];
  *(a6 + 56) = OUTLINED_FUNCTION_0_14();
  *(a6 + 64) = OUTLINED_FUNCTION_2_17();
  *(a6 + 72) = OUTLINED_FUNCTION_2_17();
  *(a6 + 80) = OUTLINED_FUNCTION_2_17();
  *(a6 + 88) = OUTLINED_FUNCTION_8_9();
  *(a6 + 96) = OUTLINED_FUNCTION_2_17();
  *(a6 + 104) = OUTLINED_FUNCTION_2_17();
  *(a6 + 112) = OUTLINED_FUNCTION_2_17();
  sub_274BF4F44();
  v21 = OUTLINED_FUNCTION_1_14();
  *(a6 + 120) = OUTLINED_FUNCTION_0_14();
  sub_274BF4F44();
  v22 = OUTLINED_FUNCTION_1_14();
  *(a6 + 128) = OUTLINED_FUNCTION_0_14();
  *(a6 + 136) = OUTLINED_FUNCTION_8_9();
  *(a6 + 144) = OUTLINED_FUNCTION_2_17();
  sub_274BF4F44();
  v23 = [v19 workflowUserDefaults];
  OUTLINED_FUNCTION_4_9();
  *(a6 + 152) = sub_274BF2DF4();
  sub_274BF4F44();
  v24 = [v19 syncShortcutsUserDefaults];
  OUTLINED_FUNCTION_4_9();
  *(a6 + 160) = sub_274BF2DF4();
  sub_274BF4F44();
  v25 = OUTLINED_FUNCTION_1_14();
  *(a6 + 168) = OUTLINED_FUNCTION_0_14();
  sub_274BF4F44();
  v26 = OUTLINED_FUNCTION_1_14();
  *(a6 + 176) = OUTLINED_FUNCTION_0_14();
  sub_274BF4F44();
  v27 = OUTLINED_FUNCTION_1_14();
  *(a6 + 184) = OUTLINED_FUNCTION_0_14();
  v43 = 0;
  OUTLINED_FUNCTION_11_4();
  v28 = v45;
  *(a6 + 192) = v44;
  *(a6 + 200) = v28;
  v43 = 0;
  OUTLINED_FUNCTION_11_4();
  v29 = v45;
  *(a6 + 208) = v44;
  *(a6 + 216) = v29;
  v43 = 0;
  OUTLINED_FUNCTION_11_4();
  v30 = v45;
  *(a6 + 224) = v44;
  *(a6 + 232) = v30;
  v31 = type metadata accessor for DebugMenuView();
  v32 = sub_274BF1F54();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v32);
  sub_274B01968(v13, v10, &qword_28098EEE0);
  sub_274BF4774();
  sub_274AFA708(v13, &qword_28098EEE0);
  result = sub_274B35344(a6 + v31[30]);
  *(a6 + v31[29]) = a1;
  v34 = (a6 + v31[31]);
  v35 = v40;
  *v34 = v39;
  v34[1] = v35;
  v36 = (a6 + v31[32]);
  v37 = v42;
  *v36 = v41;
  v36[1] = v37;
  return result;
}

uint64_t DebugMenuView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B898);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B8A0);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v24 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B8A8);
  sub_274AFA930(&qword_28098B8B0, &qword_28098B8A8);
  sub_274BF4034();
  sub_274BF38A4();
  OUTLINED_FUNCTION_3_3();
  sub_274AFA930(v14, &qword_28098B898);
  sub_274BF42B4();

  (*(v5 + 8))(v8, v3);
  v15 = (v2 + *(type metadata accessor for DebugMenuView() + 124));
  v16 = *v15;
  v17 = v15[1];
  if (*v15)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = v17;
    v19 = sub_274B32730;
  }

  else
  {
    v19 = CGSizeMake;
    v18 = 0;
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v18;
  sub_274ADDED0(v16);
  sub_274B40768(sub_274B41304, v20, v23);

  return (*(v10 + 8))(v13, v22);
}

uint64_t sub_274B35D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B9C0);
  v158 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v146 = v120 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v145 = v120 - v5;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B9C8);
  v165 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v143 = v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v155 = v120 - v8;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B9D0);
  v164 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v141 = v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v149 = v120 - v11;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B9D8);
  v163 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v140 = v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v157 = v120 - v14;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B9E0);
  v162 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v137 = v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v153 = v120 - v17;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B9E8);
  v161 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v131 = v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v152 = v120 - v20;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B9F0);
  v138 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v134 = v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v133 = v120 - v23;
  MEMORY[0x28223BE20](v24);
  v128 = v120 - v25;
  MEMORY[0x28223BE20](v26);
  v121 = v120 - v27;
  MEMORY[0x28223BE20](v28);
  v150 = v120 - v29;
  MEMORY[0x28223BE20](v30);
  v148 = v120 - v31;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B9F8);
  v160 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v127 = v120 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v123 = v120 - v34;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BA00);
  v159 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v125 = v120 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v126 = v120 - v37;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BA08);
  v130 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v124 = v120 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v129 = v120 - v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BA10);
  sub_274AFA930(&qword_28098BA18, &qword_28098BA10);
  sub_274BF49C4();
  sub_274BF38A4();
  v177 = sub_274BF40E4();
  v178 = v41;
  LOBYTE(v179) = v42 & 1;
  v180 = v43;
  v176 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BA20);
  sub_274AFA930(&qword_28098BA28, &qword_28098BA20);
  sub_274BF49A4();
  sub_274BF38A4();
  v177 = sub_274BF40E4();
  v178 = v44;
  LOBYTE(v179) = v45 & 1;
  v180 = v46;
  v175 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BA30);
  sub_274AFA930(&qword_28098BA38, &qword_28098BA30);
  sub_274BF49A4();
  sub_274BF38A4();
  v177 = sub_274BF40E4();
  v178 = v47;
  LOBYTE(v179) = v48 & 1;
  v180 = v49;
  sub_274BF38A4();
  v189 = sub_274BF40E4();
  v190 = v50;
  v191 = v51 & 1;
  v192 = v52;
  v174 = a1;
  v120[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BA40);
  v120[2] = sub_274AFA930(&qword_28098BA48, &qword_28098BA40);
  sub_274BF49B4();
  sub_274BF38A4();
  v177 = sub_274BF40E4();
  v178 = v53;
  LOBYTE(v179) = v54 & 1;
  v180 = v55;
  v173 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BA50);
  sub_274AFA930(&qword_28098BA58, &qword_28098BA50);
  sub_274BF49A4();
  sub_274BF38A4();
  v177 = sub_274BF40E4();
  v178 = v56;
  LOBYTE(v179) = v57 & 1;
  v180 = v58;
  v172 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BA60);
  sub_274AFA930(&qword_28098BA68, &qword_28098BA60);
  sub_274BF49A4();
  sub_274BF38A4();
  v177 = sub_274BF40E4();
  v178 = v59;
  LOBYTE(v179) = v60 & 1;
  v180 = v61;
  v171 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BA70);
  sub_274AFA930(&qword_28098BA78, &qword_28098BA70);
  sub_274BF49A4();
  sub_274BF38A4();
  v177 = sub_274BF40E4();
  v178 = v62;
  LOBYTE(v179) = v63 & 1;
  v180 = v64;
  v170 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BA80);
  sub_274AFA930(&qword_28098BA88, &qword_28098BA80);
  sub_274BF49A4();
  sub_274BF38A4();
  v177 = sub_274BF40E4();
  v178 = v65;
  LOBYTE(v179) = v66 & 1;
  v180 = v67;
  v169 = a1;
  sub_274BF49A4();
  sub_274BF38A4();
  v177 = sub_274BF40E4();
  v178 = v68;
  LOBYTE(v179) = v69 & 1;
  v180 = v70;
  sub_274BF38A4();
  v189 = sub_274BF40E4();
  v190 = v71;
  v191 = v72 & 1;
  v192 = v73;
  v168 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BA90);
  sub_274AFA930(&qword_28098BA98, &qword_28098BA90);
  sub_274BF49B4();
  sub_274BF38A4();
  v177 = sub_274BF40E4();
  v178 = v74;
  LOBYTE(v179) = v75 & 1;
  v180 = v76;
  sub_274BF38A4();
  v189 = sub_274BF40E4();
  v190 = v77;
  v191 = v78 & 1;
  v192 = v79;
  v167 = a1;
  sub_274BF49B4();
  sub_274BF38A4();
  v177 = sub_274BF40E4();
  v178 = v80;
  LOBYTE(v179) = v81 & 1;
  v180 = v82;
  sub_274BF38A4();
  v189 = sub_274BF40E4();
  v190 = v83;
  v191 = v84 & 1;
  v192 = v85;
  v166 = a1;
  v86 = v121;
  sub_274BF49B4();
  v87 = v124;
  (*(v130 + 16))(v124, v129, v132);
  v177 = v87;
  v88 = v125;
  (*(v159 + 16))(v125, v126, v135);
  v178 = v88;
  v89 = v127;
  (*(v160 + 16))(v127, v123, v139);
  v179 = v89;
  v90 = *(v138 + 16);
  v91 = v128;
  v90(v128, v148, v136);
  v180 = v91;
  v92 = v131;
  (*(v161 + 16))(v131, v152, v142);
  v181 = v92;
  v93 = v137;
  (*(v162 + 16))(v137, v153, v156);
  v182 = v93;
  v94 = v140;
  (*(v163 + 16))(v140, v157, v151);
  v183 = v94;
  v95 = v141;
  (*(v164 + 16))(v141, v149, v154);
  v184 = v95;
  v96 = v143;
  v97 = v144;
  (*(v165 + 16))(v143, v155, v144);
  v185 = v96;
  v98 = v158;
  v100 = v145;
  v99 = v146;
  v101 = v147;
  (*(v158 + 16))(v146, v145, v147);
  v186 = v99;
  v102 = v133;
  v103 = v136;
  v90(v133, v150, v136);
  v187 = v102;
  v104 = v134;
  v90(v134, v86, v103);
  v188 = v104;
  sub_274BA10B4();
  v105 = *(v138 + 8);
  v105(v86, v103);
  v105(v150, v103);
  v106 = *(v98 + 8);
  v158 = v98 + 8;
  v150 = v106;
  (v106)(v100, v101);
  v107 = *(v165 + 8);
  v165 += 8;
  v145 = v107;
  (v107)(v155, v97);
  v108 = *(v164 + 8);
  v164 += 8;
  v155 = v108;
  (v108)(v149, v154);
  v109 = *(v163 + 8);
  v163 += 8;
  v149 = v109;
  (v109)(v157, v151);
  v110 = *(v162 + 8);
  v162 += 8;
  v157 = v110;
  (v110)(v153, v156);
  v111 = *(v161 + 8);
  v161 += 8;
  v153 = v111;
  v112 = v142;
  (v111)(v152, v142);
  v105(v148, v103);
  v113 = *(v160 + 8);
  v160 += 8;
  v152 = v113;
  v114 = v139;
  (v113)(v123, v139);
  v115 = *(v159 + 8);
  v159 += 8;
  v148 = v115;
  v116 = v135;
  (v115)(v126, v135);
  v117 = *(v130 + 8);
  v118 = v132;
  v117(v129, v132);
  v105(v134, v103);
  v105(v133, v103);
  (v150)(v146, v147);
  (v145)(v143, v144);
  (v155)(v141, v154);
  (v149)(v140, v151);
  (v157)(v137, v156);
  (v153)(v131, v112);
  v105(v128, v103);
  (v152)(v127, v114);
  (v148)(v125, v116);
  return (v117)(v124, v118);
}

uint64_t sub_274B37354@<X0>(char *a1@<X8>)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989EA8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v33 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  sub_274BF38A4();
  v32 = v18;
  sub_274BF47E4();
  sub_274BF38A4();
  v19 = v15;
  sub_274BF47E4();
  sub_274BF38A4();
  v20 = v12;
  sub_274BF47E4();
  v21 = *(v2 + 16);
  v22 = v9;
  v31 = v9;
  v21(v9, v18, v1);
  v23 = v6;
  v24 = v19;
  v21(v6, v19, v1);
  v25 = v33;
  v26 = v20;
  v21(v33, v20, v1);
  v27 = v34;
  v21(v34, v22, v1);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BD28);
  v21(&v27[*(v28 + 48)], v23, v1);
  v21(&v27[*(v28 + 64)], v25, v1);
  v29 = *(v2 + 8);
  v29(v26, v1);
  v29(v24, v1);
  v29(v32, v1);
  v29(v25, v1);
  v29(v23, v1);
  return (v29)(v31, v1);
}

void sub_274B376F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEE0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = [objc_opt_self() sharedContext];
  sub_274BF1F34();
  v4 = sub_274BF1F54();
  if (__swift_getEnumTagSinglePayload(v2, 1, v4) == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = sub_274BF1ED4();
    (*(*(v4 - 8) + 8))(v2, v4);
    [v3 openURL_];
  }
}

void sub_274B37824()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEE0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = [objc_opt_self() sharedContext];
  sub_274BF1F34();
  v4 = sub_274BF1F54();
  if (__swift_getEnumTagSinglePayload(v2, 1, v4) == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = sub_274BF1ED4();
    (*(*(v4 - 8) + 8))(v2, v4);
    [v3 openURL_];
  }
}

void sub_274B37958()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEE0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = [objc_opt_self() sharedContext];
  sub_274BF1F34();
  v4 = sub_274BF1F54();
  if (__swift_getEnumTagSinglePayload(v2, 1, v4) == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = sub_274BF1ED4();
    (*(*(v4 - 8) + 8))(v2, v4);
    [v3 openURL_];
  }
}

uint64_t sub_274B37A8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_274BF3804();
  LOBYTE(v16[0]) = 1;
  sub_274B37CAC(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  sub_274B01968(__dst, v14, &qword_28098BAD0);
  sub_274AFA708(v12, &qword_28098BAD0);
  memcpy(&v10[7], __dst, 0x50uLL);
  v5 = v16[0];
  v6 = sub_274BF3904();
  __src[0] = 1;
  sub_274B37F34(a1, v13);
  *&v9[7] = v13[0];
  *&v9[23] = v13[1];
  *&v9[39] = v13[2];
  *&v9[55] = v13[3];
  LOBYTE(a1) = __src[0];
  v14[0] = v4;
  v14[1] = 0;
  LOBYTE(v14[2]) = v5;
  memcpy(&v14[2] + 1, v10, 0x57uLL);
  memcpy(v8, v14, 0x68uLL);
  v15[0] = v6;
  v15[1] = 0;
  LOBYTE(v15[2]) = __src[0];
  memcpy(&v15[2] + 1, v9, 0x47uLL);
  memcpy(&v8[104], v15, 0x58uLL);
  memcpy(a2, v8, 0xC0uLL);
  v16[0] = v6;
  v16[1] = 0;
  v17 = a1;
  memcpy(v18, v9, sizeof(v18));
  sub_274B01968(v14, __src, &qword_28098BB18);
  sub_274B01968(v15, __src, &qword_28098BAA8);
  sub_274AFA708(v16, &qword_28098BAA8);
  *__src = v4;
  *&__src[8] = 0;
  __src[16] = v5;
  memcpy(&__src[17], v10, 0x57uLL);
  return sub_274AFA708(__src, &qword_28098BB18);
}

uint64_t sub_274B37CAC@<X0>(uint64_t a1@<X8>)
{
  sub_274BF38A4();
  LOWORD(v23) = 256;
  v2 = sub_274BF40E4();
  v25 = v3;
  v26 = v2;
  HIDWORD(v23) = v4;
  v27 = v5;
  v6 = [objc_opt_self() mainBundle];
  v7 = sub_274B4262C(v6);
  if (!v7)
  {
    v30 = 0u;
    v31 = 0u;
    goto LABEL_6;
  }

  sub_274B0691C(0x656C646E75424643, 0xEF6E6F6973726556, v7, &v30);

  if (!*(&v31 + 1))
  {
LABEL_6:
    sub_274AFA708(&v30, &qword_28098B300);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v8 = 0xE900000000000064;
    v9 = 0x6E756F4620746F4ELL;
    goto LABEL_8;
  }

  v9 = v28;
  v8 = v29;
LABEL_8:
  *&v30 = v9;
  *(&v30 + 1) = v8;
  sub_274ADDF6C();
  v10 = sub_274BF4104();
  v12 = v11;
  v14 = v13;
  sub_274BF4654();
  v15 = sub_274BF4094();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_274AFA1D0(v10, v12, v14 & 1);

  LOBYTE(v30) = v24 & 1;
  *a1 = v26;
  *(a1 + 8) = v25;
  *(a1 + 16) = v24 & 1;
  *(a1 + 24) = v27;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v15;
  *(a1 + 56) = v17;
  *(a1 + 64) = v19 & 1;
  *(a1 + 72) = v21;
  sub_274AF396C(v26, v25, v24 & 1);

  sub_274AF396C(v15, v17, v19 & 1);

  sub_274AFA1D0(v15, v17, v19 & 1);

  sub_274AFA1D0(v26, v25, v30);
}

uint64_t sub_274B37F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B8C8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - v5;
  sub_274BF38A4();
  v7 = sub_274BF40E4();
  v38 = v8;
  v39 = v7;
  HIDWORD(v37) = v9;
  v40 = v10;
  v11 = type metadata accessor for DebugMenuView();
  sub_274B01968(a1 + *(v11 + 120), v6, &qword_28098B8C8);
  v12 = sub_274BF2164();
  if (__swift_getEnumTagSinglePayload(v6, 1, v12) == 1)
  {
    sub_274AFA708(v6, &qword_28098B8C8);
    v13 = 0xE900000000000064;
    v14 = 0x6E756F6620746F4ELL;
  }

  else
  {
    v14 = sub_274BF2124();
    v13 = v15;
    (*(*(v12 - 8) + 8))(v6, v12);
  }

  v42 = v14;
  v43 = v13;
  sub_274ADDF6C();
  v16 = sub_274BF4104();
  v18 = v17;
  v20 = v19;
  sub_274BF4654();
  v21 = sub_274BF4094();
  v23 = v22;
  v25 = v24;

  sub_274AFA1D0(v16, v18, v20 & 1);

  sub_274BF3FB4();
  v26 = sub_274BF40D4();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  sub_274AFA1D0(v21, v23, v25 & 1);

  v33 = BYTE4(v37) & 1;
  v41 = BYTE4(v37) & 1;
  LOBYTE(v42) = BYTE4(v37) & 1;
  v44 = v30 & 1;
  v35 = v38;
  v34 = v39;
  *a2 = v39;
  *(a2 + 8) = v35;
  *(a2 + 16) = v33;
  *(a2 + 24) = v40;
  *(a2 + 32) = v26;
  *(a2 + 40) = v28;
  *(a2 + 48) = v30 & 1;
  *(a2 + 56) = v32;
  sub_274AF396C(v34, v35, v33);

  sub_274AF396C(v26, v28, v30 & 1);

  sub_274AFA1D0(v26, v28, v30 & 1);

  sub_274AFA1D0(v34, v35, v41);
}

uint64_t sub_274B38238@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v68 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BCC8);
  MEMORY[0x28223BE20](v66);
  v63 = v54 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BCD0);
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x28223BE20](v4);
  v57 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v61 = v54 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BCD8);
  MEMORY[0x28223BE20](v8 - 8);
  v67 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v64 = v54 - v11;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BA40);
  v65 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v60 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v70 = v54 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = v54 - v16;
  sub_274BF38A4();
  v18 = type metadata accessor for LogStreamManager(0);
  sub_274B41268(&qword_28098B890, type metadata accessor for LogStreamManager);
  v56 = v18;
  sub_274BF3274();
  swift_getKeyPath();
  sub_274BF3284();

  v62 = v17;
  sub_274BF4884();
  if (sub_274B9E610())
  {
    v55 = sub_274BF38A4();
    v54[1] = v19;
    v20 = a1;
    type metadata accessor for DebugStatusBarManager();
    sub_274B41268(&qword_280989FD8, type metadata accessor for DebugStatusBarManager);
    v21 = sub_274BF3274();
    swift_getKeyPath();
    sub_274BF3284();

    v22 = v70;
    sub_274BF4884();

    v23 = sub_274BF3264();
    v25 = v24;
    v75 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BCE8);
    v26 = sub_274BF4774();
    v27 = v71;
    v28 = v72;
    v71 = v23;
    v72 = v25;
    v73 = v27;
    v74 = v28;
    MEMORY[0x28223BE20](v26);
    v54[-2] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BCF0);
    sub_274AFA930(&qword_28098BCF8, &qword_28098BCF0);
    sub_274B4247C();
    v29 = v61;
    sub_274BF3244();
    v30 = v65;
    v31 = *(v65 + 16);
    v32 = v60;
    v31(v60, v22, v69);
    v33 = v57;
    v34 = v58;
    v55 = *(v58 + 16);
    v56 = v31;
    v35 = v29;
    v36 = v59;
    v55(v57, v35, v59);
    v37 = v63;
    v38 = v32;
    v39 = v69;
    v31(v63, v38, v69);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BD08);
    v55((v37 + *(v40 + 48)), v33, v36);
    v41 = *(v34 + 8);
    v41(v61, v36);
    v42 = *(v30 + 8);
    v43 = v39;
    v42(v70, v39);
    v41(v33, v36);
    v44 = v56;
    v42(v60, v43);
    v45 = v64;
    sub_274B16ED0(v63, v64, &qword_28098BCC8);
    __swift_storeEnumTagSinglePayload(v45, 0, 1, v66);
    v46 = v70;
    v47 = v43;
  }

  else
  {
    v45 = v64;
    __swift_storeEnumTagSinglePayload(v64, 1, 1, v66);
    v30 = v65;
    v44 = *(v65 + 16);
    v47 = v69;
    v46 = v70;
  }

  v48 = v62;
  v44(v46, v62, v47);
  v49 = v67;
  sub_274B01968(v45, v67, &qword_28098BCD8);
  v50 = v68;
  v44(v68, v46, v47);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BCE0);
  sub_274B01968(v49, &v50[*(v51 + 48)], &qword_28098BCD8);
  sub_274AFA708(v45, &qword_28098BCD8);
  v52 = *(v30 + 8);
  v52(v48, v47);
  sub_274AFA708(v49, &qword_28098BCD8);
  return (v52)(v46, v47);
}

void *sub_274B38A00@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_274BF3804();
  v8 = 1;
  sub_274B38ADC(__src);
  memcpy(__dst, __src, 0x53uLL);
  memcpy(v10, __src, 0x53uLL);
  sub_274B01968(__dst, v5, &qword_28098BD10);
  sub_274AFA708(v10, &qword_28098BD10);
  memcpy(&v7[7], __dst, 0x53uLL);
  v3 = v8;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  return memcpy((a1 + 17), v7, 0x5AuLL);
}

uint64_t sub_274B38ADC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_274BF3894();
  MEMORY[0x28223BE20](v2 - 8);
  MEMORY[0x28223BE20](v3);
  sub_274BF38A4();
  v36 = sub_274BF40E4();
  v37 = v4;
  v6 = v5;
  v8 = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();

  switch(v43)
  {
    case 1:
      sub_274BF3884();
      sub_274BF3874();
      *&v38 = v42;
      sub_274BF3854();
      sub_274BF3874();
      sub_274BF38B4();
      sub_274BF40E4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BD18);
      sub_274B424D0();
      sub_274BF3A64();
      goto LABEL_7;
    case 2:
      sub_274B03D34(v42, 2);
      sub_274BF3884();
      sub_274BF3874();
      sub_274B9DB00();
      sub_274BF3854();
      sub_274BF3874();
      *&v38 = sub_274B9DF14();
      sub_274BF3854();
      sub_274BF3874();
      sub_274BF38B4();
      v10 = sub_274BF40E4();
      v12 = v11;
      v14 = v13 & 1;
      sub_274AF396C(v10, v11, v13 & 1);

      sub_274BF3A64();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A68);
      sub_274AFA28C();
      sub_274BF3A64();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BD18);
      sub_274B424D0();
      sub_274BF3A64();
      sub_274AFA1D0(v10, v12, v14);

LABEL_7:
      v20 = v38;
      v21 = v39;
      v22 = v40;
      v23 = v41;
      goto LABEL_10;
    case 3:
      v34 = v8;
      sub_274BF38A4();
      v15 = sub_274BF40E4();
      v17 = v16;
      v19 = v18 & 1;
      sub_274AF396C(v15, v16, v18 & 1);

      sub_274BF3A64();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A68);
      sub_274AFA28C();
      sub_274BF3A64();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BD18);
      sub_274B424D0();
      sub_274BF3A64();
      v24 = v15;
      v25 = v17;
      v26 = v19;
      goto LABEL_9;
    default:
      v34 = v8;
      sub_274BF3884();
      sub_274BF3874();
      if (v42)
      {
        swift_getErrorValue();
        v9 = v42;
        sub_274BF5C54();
        sub_274B03D34(v42, 0);
      }

      sub_274BF3864();

      sub_274BF3874();
      sub_274BF38B4();
      v27 = sub_274BF40E4();
      v29 = v28;
      v31 = v30 & 1;
      sub_274AF396C(v27, v28, v30 & 1);

      sub_274BF3A64();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A68);
      sub_274AFA28C();
      sub_274BF3A64();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BD18);
      sub_274B424D0();
      sub_274BF3A64();
      sub_274B03D34(v42, 0);
      v24 = v27;
      v25 = v29;
      v26 = v31;
LABEL_9:
      sub_274AFA1D0(v24, v25, v26);

      v20 = v38;
      v21 = v39;
      v22 = v40;
      v23 = v41;
      v8 = v34;
LABEL_10:
      v33 = v20;
      v35 = v21;
      *a1 = v36;
      *(a1 + 8) = v6;
      *(a1 + 16) = v8 & 1;
      *(a1 + 24) = v37;
      *(a1 + 32) = 0;
      *(a1 + 40) = 1;
      *(a1 + 48) = v20;
      *(a1 + 64) = v21;
      *(a1 + 80) = v22;
      *(a1 + 82) = v23;
      sub_274AF396C(v36, v6, v8 & 1);

      sub_274B42554(v33, *(&v33 + 1), v35, *(&v35 + 1), v22, v23);
      sub_274B425C0(v33, *(&v33 + 1), v35, *(&v35 + 1), v22, v23);
      sub_274AFA1D0(v36, v6, v8 & 1);
  }
}

uint64_t sub_274B39470()
{
  sub_274BF38A4();
  sub_274BF2E24();
  return sub_274BF4884();
}

uint64_t sub_274B39508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v144 = a2;
  v145 = sub_274BF2BB4();
  v136 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v135 = &v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28098A668);
  v131 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v134 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v132 = &v124 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BB90);
  v137 = *(v7 - 8);
  v138 = v7;
  MEMORY[0x28223BE20](v7);
  v156 = &v124 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BB98);
  v142 = *(v9 - 8);
  v143 = v9;
  MEMORY[0x28223BE20](v9);
  v141 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v164 = &v124 - v12;
  v13 = sub_274BF1F54();
  v127 = *(v13 - 8);
  v128 = v13;
  MEMORY[0x28223BE20](v13);
  v125 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v126 = &v124 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BBA0);
  MEMORY[0x28223BE20](v17 - 8);
  v140 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v161 = &v124 - v20;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989EA8);
  v167 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v151 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v129 = &v124 - v23;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BBA8);
  v139 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v159 = &v124 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v155 = &v124 - v26;
  v27 = type metadata accessor for DebugMenuView();
  v28 = v27 - 8;
  v150 = *(v27 - 8);
  v29 = *(v150 + 64);
  MEMORY[0x28223BE20](v27);
  v165 = v29;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BBB0);
  v173 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v163 = &v124 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v168 = (&v124 - v32);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BBB8);
  v172 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v160 = &v124 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v124 - v35;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BBC0);
  v158 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v157 = &v124 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v40 = &v124 - v39;
  *&v216[0] = *(a1 + *(v28 + 124));
  v175 = a1;
  v41 = *&v216[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B9B8);
  v194 = MEMORY[0x277CE0BD8];
  v195 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  sub_274B41FE4();
  v153 = v40;
  sub_274BF3244();
  v194 = v41;
  v174 = a1;
  sub_274B42040();
  v154 = v36;
  sub_274BF3244();
  sub_274B3AE48([v41 sortedVisibleFolders], 0x737265646C6F46, 0xE700000000000000, v206);
  v42 = sub_274BF38A4();
  v148 = v43;
  v149 = v42;
  v147 = v44;
  v166 = (&v124 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_274B419C4(a1, v166);
  v45 = *(v150 + 80);
  v46 = (v45 + 16) & ~v45;
  v47 = swift_allocObject();
  sub_274B41A28(&v124 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v47 + v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BBD8);
  sub_274AFA930(&qword_28098BBE0, &qword_28098BBD8);
  v48 = a1;
  sub_274BF3364();
  sub_274B3B024([v41 sortedRunEventsWithSource_], 0x6E657645206E7552, 0xEA00000000007374, v208);
  sub_274B3B200([v41 allConfiguredTriggers], 0x7372656767697254, 0xE800000000000000, v210);
  sub_274B3B3DC([v41 allSortedTriggerEvents], 0x2072656767697254, 0xEE0073746E657645, v212);
  sub_274B3B5B8([v41 allShortcutSuggestions], 0xD000000000000014, 0x8000000274C0ADA0, v214);
  sub_274B3B794([v41 allShortcutBookmarks], 0xD000000000000012, 0x8000000274C0ADC0, v216);
  v49 = v166;
  sub_274B419C4(a1, v166);
  v149 = v45;
  v50 = swift_allocObject();
  v150 = v46;
  sub_274B41A28(v49, v50 + v46);
  v51 = v129;
  sub_274BF47C4();
  v130 = objc_opt_self();
  [v130 isSyncEnabled];
  sub_274BF38A4();
  v52 = sub_274BF40E4();
  v54 = v53;
  LOBYTE(a1) = v55;
  v56 = *(v48 + 224);
  v148 = v48;
  v57 = *(v48 + 232);
  LOBYTE(v191) = v56;
  *(&v191 + 1) = v57;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A720);
  sub_274BF47A4();
  v147 = sub_274AFA930(&qword_280989EA0, &qword_280989EA8);
  v58 = v152;
  sub_274BF4304();

  sub_274AFA1D0(v52, v54, a1 & 1);

  v59 = *(v167 + 8);
  v167 += 8;
  v129 = v59;
  (v59)(v51, v58);
  v60 = [objc_opt_self() defaultDatabase];
  v61 = [v60 exportableURL];

  if (v61)
  {
    v62 = v126;
    sub_274BF1F04();

    v64 = v127;
    v63 = v128;
    (*(v127 + 16))(v125, v62, v128);
    v65 = v161;
    sub_274BF4B44();
    (*(v64 + 8))(v62, v63);
    v66 = 0;
  }

  else
  {
    v65 = v161;
    v66 = 1;
  }

  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BBE8);
  __swift_storeEnumTagSinglePayload(v65, v66, 1, v67);
  v68 = v148;
  v69 = v166;
  sub_274B419C4(v148, v166);
  v70 = v150;
  v71 = swift_allocObject();
  sub_274B41A28(v69, v71 + v70);
  sub_274BF47C4();
  v72 = *(v68 + 200);
  LOBYTE(v191) = *(v68 + 192);
  *(&v191 + 1) = v72;
  sub_274BF47A4();
  LODWORD(v128) = v196;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BBF0);
  v73 = (*(v131 + 80) + 32) & ~*(v131 + 80);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_274BF8D80;
  v75 = v145;
  if (qword_2809893A0 != -1)
  {
    swift_once();
  }

  v76 = __swift_project_value_buffer(v133, qword_28098B878);
  sub_274B01968(v76, v74 + v73, qword_28098A668);
  v77 = v132;
  sub_274B01968(v74 + v73, v132, qword_28098A668);
  v78 = v134;
  sub_274B16ED0(v77, v134, qword_28098A668);
  if (__swift_getEnumTagSinglePayload(v78, 1, v75) == 1)
  {
    sub_274AFA708(v78, qword_28098A668);
  }

  else
  {
    v79 = *(v136 + 32);
    v79(v135, v78, v75);
    v80 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_274BBB01C();
      v80 = v122;
    }

    v81 = *(v80 + 16);
    if (v81 >= *(v80 + 24) >> 1)
    {
      sub_274BBB01C();
      v80 = v123;
    }

    *(v80 + 16) = v81 + 1;
    v79((v80 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v81), v135, v145);
  }

  swift_setDeallocating();
  sub_274BCB9C4();
  v82 = v148;
  v83 = v166;
  sub_274B419C4(v148, v166);
  v84 = v150;
  v85 = swift_allocObject();
  sub_274B41A28(v83, v85 + v84);
  v86 = v151;
  v87 = v152;
  sub_274BF4244();

  (v129)(v86, v87);
  [v130 isSyncEnabled];
  sub_274BF38A4();
  v88 = sub_274BF40E4();
  v90 = v89;
  v92 = v91;
  v167 = v93;
  v94 = *(v82 + 216);
  LOBYTE(v191) = *(v82 + 208);
  *(&v191 + 1) = v94;
  v95 = sub_274BF47A4();
  v166 = &v124;
  MEMORY[0x28223BE20](v95);
  v194 = v87;
  v195 = v147;
  swift_getOpaqueTypeConformance2();
  v96 = v138;
  v97 = v156;
  sub_274BF4304();

  sub_274AFA1D0(v88, v90, v92 & 1);

  (*(v137 + 8))(v97, v96);
  v98 = v157;
  (*(v158 + 16))(v157, v153, v169);
  v194 = v98;
  v99 = v160;
  (*(v172 + 16))();
  v191 = v206[0];
  v192 = v206[1];
  v193 = v207;
  v195 = v99;
  v196 = &v191;
  v100 = v163;
  (*(v173 + 16))();
  v188 = v208[0];
  v189 = v208[1];
  v190 = v209;
  v197 = v100;
  v198 = &v188;
  v185 = v210[0];
  v186 = v210[1];
  v187 = v211;
  v182 = v212[0];
  v183 = v212[1];
  v184 = v213;
  v199 = &v185;
  v200 = &v182;
  v179 = v214[0];
  v180 = v214[1];
  v181 = v215;
  v176 = v216[0];
  v177 = v216[1];
  v178 = v217;
  v201 = &v179;
  v202 = &v176;
  v101 = v139;
  v102 = v159;
  v103 = v155;
  (*(v139 + 16))(v159, v155, v162);
  v203 = v102;
  v104 = v161;
  v105 = v140;
  sub_274B01968(v161, v140, &qword_28098BBA0);
  v204 = v105;
  v106 = v141;
  v107 = v142;
  v108 = v164;
  v109 = v143;
  (*(v142 + 16))(v141, v164, v143);
  v205 = v106;
  sub_274BA13E0();
  v110 = *(v107 + 8);
  v110(v108, v109);
  sub_274AFA708(v104, &qword_28098BBA0);
  v111 = *(v101 + 8);
  v112 = v162;
  v111(v103, v162);
  v113 = *(v173 + 8);
  v173 += 8;
  v166 = v113;
  (v113)(v168, v171);
  v114 = *(v172 + 8);
  v172 += 8;
  v168 = v114;
  v114(v154, v170);
  v167 = *(v158 + 8);
  (v167)(v153, v169);
  v110(v106, v109);
  sub_274AFA708(v105, &qword_28098BBA0);
  v111(v159, v112);
  v115 = v177;

  v116 = v180;

  v117 = v183;

  v118 = v186;

  v119 = v189;

  (v166)(v163, v171);
  v120 = v192;

  v168(v160, v170);
  return (v167)(v157, v169);
}

uint64_t sub_274B3ABE0(uint64_t a1)
{
  sub_274BF38A4();
  LOWORD(v9) = 256;
  v2 = sub_274BF40E4();
  v4 = v3;
  v6 = v5 & 1;
  v7 = [*(a1 + *(type metadata accessor for DebugMenuView() + 116)) activeObjectObservers];
  sub_274BF5144();

  sub_274BF43D4();
  sub_274AFA1D0(v2, v4, v6);
}

uint64_t sub_274B3AD0C(uint64_t a1)
{
  sub_274BF38A4();
  LOWORD(v10) = 256;
  v2 = sub_274BF40E4();
  v4 = v3;
  v6 = v5 & 1;
  v7 = [*(a1 + *(type metadata accessor for DebugMenuView() + 116)) activeResults];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BCC0);
  v8 = sub_274BF5144();

  sub_274B22B94(v8);

  sub_274BF43D4();
  sub_274AFA1D0(v2, v4, v6);
}

void sub_274B3AE48(id a1@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X8>)
{
  v6 = [a1 database];
  if (v6)
  {
    v7 = v6;
    v8 = a1;
    v9 = sub_274BF4AD4();
    v10 = [v8 descriptors];
    sub_274AD8430(0, &qword_28098BCA0);
    v11 = sub_274BF5144();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BCA8);
    swift_allocObject();

    v12 = sub_274B411B4(v11, v9, &qword_28098BCB8);
    v13 = *(*v12 + 104);
    swift_beginAccess();
    v14 = *(v12 + v13);
    *(v12 + v13) = a1;
    v15 = v8;

    v16 = v15;
    [v16 registerObserver_];

    sub_274AFA930(&qword_28098BCB0, &qword_28098BCA8);
    v17 = sub_274BF3264();
    v19 = v18;

    *a4 = a2;
    a4[1] = a3;
    a4[2] = v7;
    a4[3] = v17;
    a4[4] = v19;
  }

  else
  {
    __break(1u);
  }
}

void sub_274B3B024(id a1@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X8>)
{
  v6 = [a1 database];
  if (v6)
  {
    v7 = v6;
    v8 = a1;
    v9 = sub_274BF4AD4();
    v10 = [v8 descriptors];
    sub_274AD8430(0, &qword_28098BC80);
    v11 = sub_274BF5144();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BC88);
    swift_allocObject();

    v12 = sub_274B411B4(v11, v9, &qword_28098BC98);
    v13 = *(*v12 + 104);
    swift_beginAccess();
    v14 = *(v12 + v13);
    *(v12 + v13) = a1;
    v15 = v8;

    v16 = v15;
    [v16 registerObserver_];

    sub_274AFA930(&qword_28098BC90, &qword_28098BC88);
    v17 = sub_274BF3264();
    v19 = v18;

    *a4 = a2;
    a4[1] = a3;
    a4[2] = v7;
    a4[3] = v17;
    a4[4] = v19;
  }

  else
  {
    __break(1u);
  }
}

void sub_274B3B200(id a1@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X8>)
{
  v6 = [a1 database];
  if (v6)
  {
    v7 = v6;
    v8 = a1;
    v9 = sub_274BF4AD4();
    v10 = [v8 descriptors];
    sub_274AD8430(0, &qword_28098BC60);
    v11 = sub_274BF5144();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BC68);
    swift_allocObject();

    v12 = sub_274B411B4(v11, v9, &qword_28098BC78);
    v13 = *(*v12 + 104);
    swift_beginAccess();
    v14 = *(v12 + v13);
    *(v12 + v13) = a1;
    v15 = v8;

    v16 = v15;
    [v16 registerObserver_];

    sub_274AFA930(&qword_28098BC70, &qword_28098BC68);
    v17 = sub_274BF3264();
    v19 = v18;

    *a4 = a2;
    a4[1] = a3;
    a4[2] = v7;
    a4[3] = v17;
    a4[4] = v19;
  }

  else
  {
    __break(1u);
  }
}

void sub_274B3B3DC(id a1@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X8>)
{
  v6 = [a1 database];
  if (v6)
  {
    v7 = v6;
    v8 = a1;
    v9 = sub_274BF4AD4();
    v10 = [v8 descriptors];
    sub_274AD8430(0, &qword_28098BC40);
    v11 = sub_274BF5144();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BC48);
    swift_allocObject();

    v12 = sub_274B411B4(v11, v9, &qword_28098BC58);
    v13 = *(*v12 + 104);
    swift_beginAccess();
    v14 = *(v12 + v13);
    *(v12 + v13) = a1;
    v15 = v8;

    v16 = v15;
    [v16 registerObserver_];

    sub_274AFA930(&qword_28098BC50, &qword_28098BC48);
    v17 = sub_274BF3264();
    v19 = v18;

    *a4 = a2;
    a4[1] = a3;
    a4[2] = v7;
    a4[3] = v17;
    a4[4] = v19;
  }

  else
  {
    __break(1u);
  }
}

void sub_274B3B5B8(id a1@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X8>)
{
  v6 = [a1 database];
  if (v6)
  {
    v7 = v6;
    v8 = a1;
    v9 = sub_274BF4AD4();
    v10 = [v8 descriptors];
    sub_274AD8430(0, &qword_28098BC20);
    v11 = sub_274BF5144();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BC28);
    swift_allocObject();

    v12 = sub_274B411B4(v11, v9, &qword_28098BC38);
    v13 = *(*v12 + 104);
    swift_beginAccess();
    v14 = *(v12 + v13);
    *(v12 + v13) = a1;
    v15 = v8;

    v16 = v15;
    [v16 registerObserver_];

    sub_274AFA930(&qword_28098BC30, &qword_28098BC28);
    v17 = sub_274BF3264();
    v19 = v18;

    *a4 = a2;
    a4[1] = a3;
    a4[2] = v7;
    a4[3] = v17;
    a4[4] = v19;
  }

  else
  {
    __break(1u);
  }
}

void sub_274B3B794(id a1@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X8>)
{
  v6 = [a1 database];
  if (v6)
  {
    v7 = v6;
    v8 = a1;
    v9 = sub_274BF4AD4();
    v10 = [v8 descriptors];
    sub_274AD8430(0, &qword_28098BC00);
    v11 = sub_274BF5144();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BC08);
    swift_allocObject();

    v12 = sub_274B411B4(v11, v9, &qword_28098BC18);
    v13 = *(*v12 + 104);
    swift_beginAccess();
    v14 = *(v12 + v13);
    *(v12 + v13) = a1;
    v15 = v8;

    v16 = v15;
    [v16 registerObserver_];

    sub_274AFA930(&qword_28098BC10, &qword_28098BC08);
    v17 = sub_274BF3264();
    v19 = v18;

    *a4 = a2;
    a4[1] = a3;
    a4[2] = v7;
    a4[3] = v17;
    a4[4] = v19;
  }

  else
  {
    __break(1u);
  }
}

void sub_274B3B970(id a1@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X8>)
{
  v6 = [a1 database];
  if (v6)
  {
    v7 = v6;
    v8 = a1;
    v9 = sub_274BF4AD4();
    v10 = [v8 descriptors];
    sub_274AD8430(0, &qword_28098BB68);
    v11 = sub_274BF5144();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BB70);
    swift_allocObject();

    v12 = sub_274B411B4(v11, v9, &qword_28098BB80);
    v13 = *(*v12 + 104);
    swift_beginAccess();
    v14 = *(v12 + v13);
    *(v12 + v13) = a1;
    v15 = v8;

    v16 = v15;
    [v16 registerObserver_];

    sub_274AFA930(&qword_28098BB78, &qword_28098BB70);
    v17 = sub_274BF3264();
    v19 = v18;

    *a4 = a2;
    a4[1] = a3;
    a4[2] = v7;
    a4[3] = v17;
    a4[4] = v19;
  }

  else
  {
    __break(1u);
  }
}

void sub_274B3BB4C(id a1@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X8>)
{
  v6 = [a1 database];
  if (v6)
  {
    v7 = v6;
    v8 = a1;
    v9 = sub_274BF4AD4();
    v10 = [v8 descriptors];
    sub_274AD8430(0, &qword_28098BB48);
    v11 = sub_274BF5144();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BB50);
    swift_allocObject();

    v12 = sub_274B411B4(v11, v9, &qword_28098BB60);
    v13 = *(*v12 + 104);
    swift_beginAccess();
    v14 = *(v12 + v13);
    *(v12 + v13) = a1;
    v15 = v8;

    v16 = v15;
    [v16 registerObserver_];

    sub_274AFA930(&qword_28098BB58, &qword_28098BB50);
    v17 = sub_274BF3264();
    v19 = v18;

    *a4 = a2;
    a4[1] = a3;
    a4[2] = v7;
    a4[3] = v17;
    a4[4] = v19;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_274B3BD28@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for DebugMenuView() + 116));
  v4 = [objc_allocWithZone(MEMORY[0x277D7A1F8]) initWithLocation_];
  v5 = [v3 sortedWorkflowsWithQuery_];

  sub_274B3B970(v5, 7105601, 0xE300000000000000, v26);
  sub_274B3B970([v3 sortedVisibleWorkflowsByName], 0xD000000000000012, 0x8000000274C0B080, v28);
  sub_274B3B970([v3 recentlyRunShortcuts], 0x796C746E65636552, 0xEC0000006E755220, v30);
  sub_274B3B970([v3 recentlyModifiedShortcuts], 0xD000000000000011, 0x8000000274C0B0A0, v32);
  sub_274B3B970([v3 invisibleWorkflows], 0x6C62697369766E49, 0xE900000000000065, v12);
  v22 = v26[0];
  v23 = v26[1];
  v21 = v29;
  v19 = v28[0];
  v20 = v28[1];
  v24 = v27;
  v25[0] = &v22;
  v16 = v30[0];
  v17 = v30[1];
  v18 = v31;
  v13 = v32[0];
  v14 = v32[1];
  v15 = v33;
  v25[1] = &v19;
  v25[2] = &v16;
  v25[3] = &v13;
  v25[4] = v12;
  sub_274BA172C(v25, a2);
  v6 = v12[2];

  v7 = v14;

  v8 = v17;

  v9 = v20;

  v10 = v23;
}

uint64_t sub_274B3C034()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BBF8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  sub_274BF38A4();
  sub_274BF2E34();
  v3 = sub_274BF2E44();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  return sub_274BF47D4();
}

uint64_t sub_274B3C1EC(uint64_t a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v14[-v10];
  v12 = *(a3 + 216);
  v14[16] = *(a3 + 208);
  v15 = v12;
  v14[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A720);
  result = sub_274BF4794();
  if ((a2 & 1) == 0)
  {
    sub_274BC7474(a1, v11);
    type metadata accessor for DebugMenuView();
    sub_274B01968(v11, v8, &qword_28098EEE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B8C0);
    sub_274BF4794();
    return sub_274AFA708(v11, &qword_28098EEE0);
  }

  return result;
}

uint64_t sub_274B3C34C(uint64_t a1)
{
  v2 = type metadata accessor for DebugMenuView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BBF8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  sub_274BF38A4();
  sub_274BF2E34();
  v8 = sub_274BF2E44();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  sub_274B419C4(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_274B41A28(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  return sub_274BF47D4();
}

uint64_t sub_274B3C510()
{
  v15[1] = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEE0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14[-v1];
  v3 = sub_274BF1F54();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for DebugMenuView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B8C0);
  sub_274BF4784();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    return sub_274AFA708(v2, &qword_28098EEE0);
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = [objc_opt_self() defaultDatabase];
  v9 = sub_274BF1ED4();
  v15[0] = 0;
  v10 = [v8 replaceWithFileAtURL:v9 error:v15];

  if (v10)
  {
    v11 = v15[0];
  }

  else
  {
    v12 = v15[0];
    v13 = sub_274BF1E74();

    swift_willThrow();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_274B3C760(uint64_t a1)
{
  sub_274BF2514();
  sub_274BF24E4();
  v2 = (a1 + *(type metadata accessor for DebugMenuView() + 128));
  v3 = *v2;
  v4 = v2[1];
  sub_274ADDED0(*v2);
  sub_274BAEB90(v3, v4, v6);
  sub_274B41F88();
  return sub_274BF3244();
}

uint64_t sub_274B3C838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BAD8);
  v62 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v61 = &v58 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BAE0);
  MEMORY[0x28223BE20](v4 - 8);
  v77 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v71 = &v58 - v7;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BAE8);
  v60 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v59 = &v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BAF0);
  MEMORY[0x28223BE20](v9 - 8);
  v76 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v80 = &v58 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BA40);
  v70 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v74 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v79 = &v58 - v15;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BAF8);
  v69 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v72 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v78 = &v58 - v18;
  v19 = sub_274BF3804();
  v84[0] = 1;
  sub_274B3D734(v115);
  memcpy(v121, v115, sizeof(v121));
  memcpy(v122, v115, sizeof(v122));
  sub_274B01968(v121, v103, &qword_28098BAD0);
  sub_274AFA708(v122, &qword_28098BAD0);
  memcpy(v115 + 7, v121, 0x50uLL);
  __src[0] = v19;
  __src[1] = 0;
  LOBYTE(__src[2]) = v84[0];
  memcpy(&__src[2] + 1, v115, 0x57uLL);
  v20 = *(a1 + *(type metadata accessor for DebugMenuView() + 116));
  v21 = [v20 shortcutsWithOutOfSyncWalrusStatus];
  v22 = [v20 collectionsWithOutOfSyncWalrusStatus];
  v66 = v21;
  v23 = [v21 count];
  v65 = v22;
  if (v23)
  {
    v24 = [v22 count] == 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = sub_274BF3804();
  v84[0] = 1;
  sub_274B3D8D4(v24, v115);
  memcpy(v110, v115, 0x51uLL);
  memcpy(v111, v115, 0x51uLL);
  sub_274B01968(v110, v103, &qword_28098BB00);
  sub_274AFA708(v111, &qword_28098BB00);
  memcpy(v115 + 7, v110, 0x51uLL);
  v112[0] = v25;
  v112[1] = 0;
  LOBYTE(v112[2]) = v84[0];
  memcpy(&v112[2] + 1, v115, 0x58uLL);
  v26 = sub_274BF3804();
  v84[0] = 1;
  v63 = a1;
  sub_274B3DBB0(v115);
  memcpy(v113, v115, 0x52uLL);
  memcpy(v114, v115, 0x52uLL);
  sub_274B01968(v113, v103, &qword_28098BB08);
  sub_274AFA708(v114, &qword_28098BB08);
  memcpy(v103 + 7, v113, 0x52uLL);
  v115[0] = v26;
  v115[1] = 0;
  LOBYTE(v115[2]) = v84[0];
  memcpy(&v115[2] + 1, v103, 0x59uLL);
  if (v24)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0uLL;
    memset(v109, 0, 48);
  }

  else
  {
    sub_274B3B970([v20 shortcutsWithOutOfSyncWalrusStatus], 0x100000000000001ELL, 0x8000000274C0ACA0, v116);
    sub_274B3BB4C([v20 collectionsWithOutOfSyncWalrusStatus], 0x1000000000000020, 0x8000000274C0ACC0, &v117);
    v30 = v116[0];
    v31 = v116[1];
    v32 = v116[2];
    v33 = v116[3];
    v34 = v116[4];
    v35 = v117;
    v58 = v118;
    v27 = v119;
    v28 = v120;

    v36 = v32;

    v29 = v58;
    *&v109[0] = v30;
    *(&v109[0] + 1) = v31;
    *&v109[1] = v36;
    *(&v109[1] + 1) = v33;
    *&v109[2] = v34;
    *(&v109[2] + 1) = v35;
  }

  v37 = v71;
  v109[3] = v29;
  *&v109[4] = v27;
  *(&v109[4] + 1) = v28;
  [v20 coherenceSyncEnabled];
  [objc_opt_self() addEligibleShortcutToWatchFolderEnabled];
  v38 = sub_274BF3804();
  v39 = 1;
  v104[0] = 1;
  sub_274B3E038(v103);
  memcpy(v106, v103, sizeof(v106));
  memcpy(v107, v103, sizeof(v107));
  sub_274B01968(v106, v84, &qword_28098BAD0);
  sub_274AFA708(v107, &qword_28098BAD0);
  memcpy(v103 + 7, v106, 0x50uLL);
  v108[0] = v38;
  v108[1] = 0;
  LOBYTE(v108[2]) = v104[0];
  memcpy(&v108[2] + 1, v103, 0x57uLL);
  v40 = [v20 latestLibrary];
  v103[0] = v40;
  sub_274B41DC4();
  v71 = v40;
  sub_274BF3244();
  sub_274BF38A4();
  sub_274BF2E24();
  sub_274BF4884();
  sub_274BF2E04();
  v41 = v64;
  if (LOBYTE(v103[0]) == 1)
  {
    v103[0] = sub_274BE8CA4;
    v103[1] = 0;
    LOBYTE(v103[2]) = 0;
    sub_274B41E6C();
    v42 = v59;
    sub_274BF3244();
    (*(v60 + 32))(v80, v42, v41);
    v39 = 0;
  }

  __swift_storeEnumTagSinglePayload(v80, v39, 1, v41);
  sub_274BF2E04();
  v43 = 1;
  v44 = v67;
  if (LOBYTE(v103[0]) == 1)
  {
    v103[0] = sub_274BE8CA4;
    v103[1] = 0;
    LOBYTE(v103[2]) = 0;
    sub_274B41E18();
    v45 = v61;
    sub_274BF3244();
    (*(v62 + 32))(v37, v45, v44);
    v43 = 0;
  }

  __swift_storeEnumTagSinglePayload(v37, v43, 1, v44);
  v46 = sub_274BF3804();
  v104[0] = 1;
  sub_274B3E2EC(v103);
  memcpy(v97, v103, sizeof(v97));
  memcpy(v98, v103, sizeof(v98));
  sub_274B01968(v97, v84, &qword_28098BAD0);
  sub_274AFA708(v98, &qword_28098BAD0);
  memcpy(v103 + 7, v97, 0x50uLL);
  v99[0] = v46;
  v99[1] = 0;
  LOBYTE(v99[2]) = v104[0];
  memcpy(&v99[2] + 1, v103, 0x57uLL);
  memcpy(v86, __src, sizeof(v86));
  v87 = v86;
  memcpy(v85, v112, 0x69uLL);
  v88 = v85;
  memcpy(v84, v115, 0x6AuLL);
  v89 = v84;
  memcpy(v83, v109, sizeof(v83));
  v90 = v83;
  memcpy(v82, v108, sizeof(v82));
  v91 = v82;
  v47 = v69;
  v48 = v72;
  (*(v69 + 16))(v72, v78, v73);
  v92 = v48;
  v49 = v70;
  v50 = v74;
  (*(v70 + 16))(v74, v79, v75);
  v93 = v50;
  v51 = v76;
  sub_274B01968(v80, v76, &qword_28098BAF0);
  v94 = v51;
  v52 = v77;
  sub_274B01968(v37, v77, &qword_28098BAE0);
  v95 = v52;
  memcpy(v81, v99, sizeof(v81));
  v96 = v81;
  sub_274BA186C();
  sub_274B01968(__src, v103, &qword_28098BB18);
  sub_274B01968(v112, v103, &qword_28098BB20);
  sub_274B01968(v115, v103, &qword_28098BB28);
  sub_274B01968(v109, v103, &qword_28098BB30);
  sub_274B01968(v108, v103, &qword_28098BB18);
  sub_274B01968(v99, v103, &qword_28098BB18);

  sub_274AFA708(v108, &qword_28098BB18);
  sub_274AFA708(v109, &qword_28098BB30);
  sub_274AFA708(v115, &qword_28098BB28);
  sub_274AFA708(v112, &qword_28098BB20);
  sub_274AFA708(__src, &qword_28098BB18);

  sub_274AFA708(v99, &qword_28098BB18);
  sub_274AFA708(v37, &qword_28098BAE0);
  sub_274AFA708(v80, &qword_28098BAF0);
  v53 = *(v49 + 8);
  v54 = v75;
  v53(v79, v75);
  v55 = *(v47 + 8);
  v56 = v73;
  v55(v78, v73);
  memcpy(v100, v81, sizeof(v100));
  sub_274AFA708(v100, &qword_28098BB18);
  sub_274AFA708(v77, &qword_28098BAE0);
  sub_274AFA708(v76, &qword_28098BAF0);
  v53(v74, v54);
  v55(v72, v56);
  memcpy(v101, v82, sizeof(v101));
  sub_274AFA708(v101, &qword_28098BB18);
  memcpy(v102, v83, sizeof(v102));
  sub_274AFA708(v102, &qword_28098BB30);
  memcpy(v103, v84, 0x6AuLL);
  sub_274AFA708(v103, &qword_28098BB28);
  memcpy(v104, v85, 0x69uLL);
  sub_274AFA708(v104, &qword_28098BB20);
  memcpy(v105, v86, sizeof(v105));
  return sub_274AFA708(v105, &qword_28098BB18);
}

uint64_t sub_274B3D734@<X0>(uint64_t a1@<X8>)
{
  sub_274BF38A4();
  v2 = sub_274BF40E4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_274BF2E04();
  sub_274BF38A4();
  v9 = sub_274BF40E4();
  v11 = v10;
  v12 = v6 & 1;
  v17 = v6 & 1;
  v14 = v13 & 1;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v12;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v13 & 1;
  *(a1 + 72) = v15;
  sub_274AF396C(v2, v4, v12);

  sub_274AF396C(v9, v11, v14);

  sub_274AFA1D0(v9, v11, v14);

  sub_274AFA1D0(v2, v4, v17);
}

uint64_t sub_274B3D8D4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_274BF38A4();
  v4 = sub_274BF40E4();
  v20 = v5;
  v21 = v4;
  v19 = v6;
  v22 = v7;
  sub_274BF38A4();
  if (a1)
  {
    v8 = sub_274BF40E4();
    v10 = v9;
    v12 = v11;
    sub_274BF45F4();
    sub_274BF4094();

    sub_274AFA1D0(v8, v10, v12 & 1);
  }

  else
  {
    v13 = sub_274BF40E4();
    v15 = v14;
    v17 = v16;
    sub_274BF45A4();
    sub_274BF4094();

    sub_274AFA1D0(v13, v15, v17 & 1);
  }

  sub_274BF3A64();
  *a2 = v21;
  *(a2 + 8) = v20;
  *(a2 + 16) = v19 & 1;
  *(a2 + 24) = v22;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v23;
  *(a2 + 64) = v24;
  *(a2 + 80) = v25;
  sub_274AF396C(v21, v20, v19 & 1);

  sub_274AFA1F0(v23, *(&v23 + 1), v24);
  sub_274AFA23C(v23, *(&v23 + 1), v24);
  sub_274AFA1D0(v21, v20, v19 & 1);
}

uint64_t sub_274B3DBB0@<X0>(uint64_t a1@<X8>)
{
  sub_274BF38A4();
  v2 = sub_274BF40E4();
  v23 = v3;
  v24 = v2;
  v22 = v4;
  v25 = v5;
  sub_274BF2E04();
  if (v26 == 1)
  {
    sub_274BF38A4();
    v6 = sub_274BF40E4();
    v8 = v7;
    v10 = v9;
    sub_274BF4614();
    v11 = sub_274BF4094();
    v13 = v12;
    v15 = v14;

    sub_274AFA1D0(v6, v8, v10 & 1);

    sub_274AF396C(v11, v13, v15 & 1);

    sub_274BF3A64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A68);
    sub_274AFA28C();
    sub_274BF3A64();
    sub_274AFA1D0(v11, v13, v15 & 1);
  }

  else
  {
    sub_274BF2E04();
    sub_274BF38A4();
    v16 = sub_274BF40E4();
    v18 = v17;
    v20 = v19;
    sub_274BF4654();
    sub_274BF4094();

    sub_274AFA1D0(v16, v18, v20 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A68);
    sub_274AFA28C();
    sub_274BF3A64();
  }

  *a1 = v24;
  *(a1 + 8) = v23;
  *(a1 + 16) = v22 & 1;
  *(a1 + 24) = v25;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v26;
  *(a1 + 64) = v27;
  *(a1 + 80) = v28;
  *(a1 + 81) = v29;
  sub_274AF396C(v24, v23, v22 & 1);

  sub_274B41EC0(v26, *(&v26 + 1), v27, *(&v27 + 1), v28, v29);
  sub_274B41F24(v26, *(&v26 + 1), v27, *(&v27 + 1), v28, v29);
  sub_274AFA1D0(v24, v23, v22 & 1);
}

uint64_t sub_274B3E038@<X0>(uint64_t a1@<X8>)
{
  sub_274BF38A4();
  v2 = sub_274BF40E4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_274BF38A4();
  v9 = sub_274BF40E4();
  v11 = v10;
  v13 = v12 & 1;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v12 & 1;
  *(a1 + 72) = v14;
  sub_274AF396C(v2, v4, v6 & 1);

  sub_274AF396C(v9, v11, v13);

  sub_274AFA1D0(v9, v11, v13);

  sub_274AFA1D0(v2, v4, v6 & 1);
}

uint64_t sub_274B3E1CC@<X0>(uint64_t a1@<X8>)
{
  sub_274BF38A4();
  result = sub_274BF40E4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_274B3E28C@<X0>(uint64_t a1@<X8>)
{
  sub_274BF38A4();
  result = sub_274BF40E4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_274B3E2EC@<X0>(uint64_t a1@<X8>)
{
  sub_274BF38A4();
  v2 = sub_274BF40E4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_274BF38A4();
  v9 = sub_274BF40E4();
  v11 = v10;
  v13 = v12 & 1;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v12 & 1;
  *(a1 + 72) = v14;
  sub_274AF396C(v2, v4, v6 & 1);

  sub_274AF396C(v9, v11, v13);

  sub_274AFA1D0(v9, v11, v13);

  sub_274AFA1D0(v2, v4, v6 & 1);
}

uint64_t sub_274B3E480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEE0);
  MEMORY[0x28223BE20](v3 - 8);
  v84 = &v70 - v4;
  v85 = sub_274BF1F54();
  v72 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v71 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DebugMenuView();
  v75 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v77 = v7;
  v78 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989EA8);
  v79 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v76 = &v70 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BAC0);
  MEMORY[0x28223BE20](v9 - 8);
  v88 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v82 = &v70 - v12;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BA40);
  v89 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v87 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v101 = &v70 - v15;
  MEMORY[0x28223BE20](v16);
  v100 = &v70 - v17;
  MEMORY[0x28223BE20](v18);
  v99 = &v70 - v19;
  MEMORY[0x28223BE20](v20);
  v98 = &v70 - v21;
  MEMORY[0x28223BE20](v22);
  v97 = &v70 - v23;
  MEMORY[0x28223BE20](v24);
  v94 = &v70 - v25;
  MEMORY[0x28223BE20](v26);
  v96 = &v70 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v70 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v70 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v70 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v70 - v38;
  sub_274BF38A4();
  sub_274BF2E24();
  v91 = v39;
  sub_274BF4884();
  sub_274BF38A4();
  sub_274BF2E24();
  v92 = v36;
  sub_274BF4884();
  sub_274BF38A4();
  sub_274BF2E24();
  v93 = v33;
  sub_274BF4884();
  sub_274BF38A4();
  sub_274BF2E24();
  v95 = v30;
  sub_274BF4884();
  sub_274BF38A4();
  v40 = *(a1 + 32);
  v41 = type metadata accessor for AttributeGraphProfiler();
  sub_274B41268(&qword_280989A28, type metadata accessor for AttributeGraphProfiler);
  v80 = v41;
  v81 = v40;
  sub_274BF3274();
  swift_getKeyPath();
  sub_274BF3284();

  sub_274BF4884();
  if (sub_274AF6FB8())
  {
    sub_274BF38A4();
    v42 = v78;
    sub_274B419C4(a1, v78);
    v43 = (*(v75 + 80) + 16) & ~*(v75 + 80);
    v44 = swift_allocObject();
    sub_274B41A28(v42, v44 + v43);
    v45 = v76;
    sub_274BF47E4();
    v47 = v82;
    v46 = v83;
    (*(v79 + 32))(v82, v45, v83);
    v48 = 0;
    v49 = v47;
    v50 = v46;
  }

  else
  {
    v48 = 1;
    v49 = v82;
    v50 = v83;
  }

  v51 = v49;
  __swift_storeEnumTagSinglePayload(v49, v48, 1, v50);
  sub_274BF38A4();
  sub_274BF3274();
  swift_getKeyPath();
  sub_274BF3284();

  sub_274BF4884();
  v52 = v84;
  sub_274AF7864(v84);
  v53 = v85;
  if (__swift_getEnumTagSinglePayload(v52, 1, v85) == 1)
  {
    sub_274AFA708(v52, &qword_28098EEE0);
    v83 = 0;
    v84 = 0;
    v81 = 0;
    v82 = 0;
    v79 = 0;
    v80 = 0;
    v77 = 0;
    v78 = 0;
    v75 = 0;
    v76 = 0;
    v73 = 0;
    v74 = 0;
  }

  else
  {
    v55 = v71;
    v54 = v72;
    (*(v72 + 32))(v71, v52, v53);
    v84 = sub_274BF3804();
    v104 = 1;
    sub_274B3F284(v103);
    memcpy(v105, v103, 0x50uLL);
    memcpy(__dst, v103, 0x50uLL);
    sub_274B01968(v105, &v102, &qword_28098BAD0);
    sub_274AFA708(__dst, &qword_28098BAD0);
    v82 = v105[1];
    v83 = v105[0];
    v80 = v105[3];
    v81 = v105[2];
    v78 = v105[5];
    v79 = v105[4];
    v76 = v105[7];
    v77 = v105[6];
    v74 = v105[9];
    v75 = v105[8];
    v73 = v104;
    (*(v54 + 8))(v55, v53);
  }

  v56 = v89;
  v57 = *(v89 + 16);
  v58 = v97;
  v59 = v86;
  v57(v97, v91, v86);
  v103[0] = v58;
  v60 = v98;
  v57(v98, v92, v59);
  v103[1] = v60;
  v61 = v99;
  v57(v99, v93, v59);
  v103[2] = v61;
  v62 = v100;
  v57(v100, v95, v59);
  v103[3] = v62;
  v63 = v101;
  v64 = v96;
  v57(v101, v96, v59);
  v103[4] = v63;
  v65 = v88;
  sub_274B01968(v51, v88, &qword_28098BAC0);
  v103[5] = v65;
  v66 = v87;
  v67 = v94;
  v57(v87, v94, v59);
  v105[0] = v84;
  v105[1] = 0;
  v105[2] = v73;
  v105[3] = v83;
  v105[4] = v82;
  v105[5] = v81;
  v105[6] = v80;
  v105[7] = v79;
  v105[8] = v78;
  v105[9] = v77;
  v105[10] = v76;
  v105[11] = v75;
  v105[12] = v74;
  v103[6] = v66;
  v103[7] = v105;
  sub_274BA1AB8(v103, v90);
  v68 = *(v56 + 8);
  v68(v67, v59);
  sub_274AFA708(v51, &qword_28098BAC0);
  v68(v64, v59);
  v68(v95, v59);
  v68(v93, v59);
  v68(v92, v59);
  v68(v91, v59);
  memcpy(__dst, v105, 0x68uLL);
  sub_274AFA708(__dst, &qword_28098BAC8);
  v68(v66, v59);
  sub_274AFA708(v65, &qword_28098BAC0);
  v68(v101, v59);
  v68(v100, v59);
  v68(v99, v59);
  v68(v98, v59);
  return (v68)(v97, v59);
}

uint64_t sub_274B3F0EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_274BF1F54();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274AF83DC(v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    return sub_274AFA708(v4, &qword_28098EEE0);
  }

  (*(v6 + 32))(v8, v4, v5);
  v10 = (a1 + *(type metadata accessor for DebugMenuView() + 128));
  if (*v10)
  {
    (*v10)(v8);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_274B3F284@<X0>(uint64_t a1@<X8>)
{
  sub_274BF38A4();
  v2 = sub_274BF40E4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_274BF1E94();
  sub_274ADDF6C();
  v9 = sub_274BF4104();
  v11 = v10;
  v12 = v6 & 1;
  v17 = v6 & 1;
  v14 = v13 & 1;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v12;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v13 & 1;
  *(a1 + 72) = v15;
  sub_274AF396C(v2, v4, v12);

  sub_274AF396C(v9, v11, v14);

  sub_274AFA1D0(v9, v11, v14);

  sub_274AFA1D0(v2, v4, v17);
}

uint64_t sub_274B3F3E4()
{
  sub_274BF38A4();
  sub_274BF2E24();
  return sub_274BF4884();
}

uint64_t sub_274B3F480@<X0>(char *a1@<X8>)
{
  v44 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BAA0);
  v49 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v43 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v42 = &v37 - v4;
  MEMORY[0x28223BE20](v5);
  v41 = &v37 - v6;
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v8;
  MEMORY[0x28223BE20](v9);
  v39 = &v37 - v10;
  MEMORY[0x28223BE20](v11);
  v47 = &v37 - v12;
  MEMORY[0x28223BE20](v13);
  v46 = &v37 - v14;
  MEMORY[0x28223BE20](v15);
  v45 = &v37 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - v18;
  MEMORY[0x28223BE20](v20);
  v48 = &v37 - v21;
  sub_274BF2E24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BAA8);
  sub_274AFA930(&qword_28098BAB0, &qword_28098BAA8);
  sub_274BF4864();
  sub_274B3FC30();
  v22 = v19;
  v38 = v19;
  sub_274BF4864();
  sub_274BF2E24();
  v23 = v45;
  sub_274BF4864();
  sub_274BF2E24();
  v24 = v46;
  sub_274BF4864();
  sub_274BF2E24();
  v25 = v47;
  sub_274BF4864();
  v26 = *(v49 + 16);
  v27 = v39;
  v26(v39, v48, v1);
  v28 = v40;
  v26(v40, v22, v1);
  v29 = v41;
  v26(v41, v23, v1);
  v30 = v42;
  v26(v42, v24, v1);
  v31 = v43;
  v26(v43, v25, v1);
  v32 = v44;
  v33 = v27;
  v26(v44, v27, v1);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BAB8);
  v26(&v32[v34[12]], v28, v1);
  v26(&v32[v34[16]], v29, v1);
  v26(&v32[v34[20]], v30, v1);
  v26(&v32[v34[24]], v31, v1);
  v35 = *(v49 + 8);
  v35(v47, v1);
  v35(v46, v1);
  v35(v45, v1);
  v35(v38, v1);
  v35(v48, v1);
  v35(v31, v1);
  v35(v30, v1);
  v35(v29, v1);
  v35(v28, v1);
  return (v35)(v33, v1);
}

uint64_t sub_274B3FA5C@<X0>(uint64_t a1@<X8>)
{
  sub_274BF38A4();
  v2 = sub_274BF40E4();
  v20 = v3;
  v21 = v2;
  v19 = v4;
  v22 = v5;
  sub_274BF38A4();
  v6 = sub_274BF40E4();
  v8 = v7;
  v10 = v9;
  sub_274BF4654();
  v11 = sub_274BF4094();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_274AFA1D0(v6, v8, v10 & 1);

  *a1 = v21;
  *(a1 + 8) = v20;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v22;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  *(a1 + 48) = v15 & 1;
  *(a1 + 56) = v17;
  sub_274AF396C(v21, v20, v19 & 1);

  sub_274AF396C(v11, v13, v15 & 1);

  sub_274AFA1D0(v11, v13, v15 & 1);

  sub_274AFA1D0(v21, v20, v19 & 1);
}

uint64_t sub_274B3FC30()
{
  v1 = type metadata accessor for DebugMenuView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_274B419C4(v0, v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_274BF51E4();
  v4 = sub_274BF51D4();
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  *(v6 + 16) = v4;
  *(v6 + 24) = v7;
  sub_274B41A28(v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_274B419C4(v0, v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_274BF51D4();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  sub_274B41A28(v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v5);
  sub_274BF48F4();
  return v11[1];
}

uint64_t sub_274B3FDE0@<X0>(uint64_t a1@<X8>)
{
  sub_274BF38A4();
  v2 = sub_274BF40E4();
  v20 = v3;
  v21 = v2;
  v19 = v4;
  v22 = v5;
  sub_274BF38A4();
  v6 = sub_274BF40E4();
  v8 = v7;
  v10 = v9;
  sub_274BF4654();
  v11 = sub_274BF4094();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_274AFA1D0(v6, v8, v10 & 1);

  *a1 = v21;
  *(a1 + 8) = v20;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v22;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  *(a1 + 48) = v15 & 1;
  *(a1 + 56) = v17;
  sub_274AF396C(v21, v20, v19 & 1);

  sub_274AF396C(v11, v13, v15 & 1);

  sub_274AFA1D0(v11, v13, v15 & 1);

  sub_274AFA1D0(v21, v20, v19 & 1);
}

uint64_t sub_274B3FFCC@<X0>(uint64_t a1@<X8>)
{
  sub_274BF38A4();
  v2 = sub_274BF40E4();
  v20 = v3;
  v21 = v2;
  v19 = v4;
  v22 = v5;
  sub_274BF38A4();
  v6 = sub_274BF40E4();
  v8 = v7;
  v10 = v9;
  sub_274BF4654();
  v11 = sub_274BF4094();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_274AFA1D0(v6, v8, v10 & 1);

  *a1 = v21;
  *(a1 + 8) = v20;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v22;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  *(a1 + 48) = v15 & 1;
  *(a1 + 56) = v17;
  sub_274AF396C(v21, v20, v19 & 1);

  sub_274AF396C(v11, v13, v15 & 1);

  sub_274AFA1D0(v11, v13, v15 & 1);

  sub_274AFA1D0(v21, v20, v19 & 1);
}

uint64_t sub_274B401AC@<X0>(uint64_t a1@<X8>)
{
  sub_274BF38A4();
  v2 = sub_274BF40E4();
  v20 = v3;
  v21 = v2;
  v19 = v4;
  v22 = v5;
  sub_274BF38A4();
  v6 = sub_274BF40E4();
  v8 = v7;
  v10 = v9;
  sub_274BF4654();
  v11 = sub_274BF4094();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_274AFA1D0(v6, v8, v10 & 1);

  *a1 = v21;
  *(a1 + 8) = v20;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v22;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  *(a1 + 48) = v15 & 1;
  *(a1 + 56) = v17;
  sub_274AF396C(v21, v20, v19 & 1);

  sub_274AF396C(v11, v13, v15 & 1);

  sub_274AFA1D0(v11, v13, v15 & 1);

  sub_274AFA1D0(v21, v20, v19 & 1);
}

void *sub_274B40394@<X0>(void (*a1)(_OWORD *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_274BF3904();
  a1(v7);
  *&v6[7] = v7[0];
  *&v6[23] = v7[1];
  *&v6[39] = v7[2];
  *&v6[55] = v7[3];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return memcpy((a2 + 17), v6, 0x47uLL);
}

uint64_t sub_274B40418@<X0>(uint64_t a1@<X8>)
{
  sub_274BF38A4();
  v2 = sub_274BF40E4();
  v20 = v3;
  v21 = v2;
  v19 = v4;
  v22 = v5;
  sub_274BF38A4();
  v6 = sub_274BF40E4();
  v8 = v7;
  v10 = v9;
  sub_274BF4654();
  v11 = sub_274BF4094();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_274AFA1D0(v6, v8, v10 & 1);

  *a1 = v21;
  *(a1 + 8) = v20;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v22;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  *(a1 + 48) = v15 & 1;
  *(a1 + 56) = v17;
  sub_274AF396C(v21, v20, v19 & 1);

  sub_274AF396C(v11, v13, v15 & 1);

  sub_274AFA1D0(v11, v13, v15 & 1);

  sub_274AFA1D0(v21, v20, v19 & 1);
}

uint64_t sub_274B405E8()
{
  sub_274BF38A4();
  sub_274BF2E24();
  return sub_274BF4884();
}

uint64_t sub_274B40680()
{
  sub_274BF38A4();
  sub_274BF2E24();
  return sub_274BF4884();
}

uint64_t sub_274B40768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v25 = a1;
  v28 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B928);
  v4 = *(v3 - 8);
  v26 = v3;
  v27 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - v5;
  v7 = sub_274BF3B44();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B920);
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v12 = &v21 - v11;
  sub_274BF3B34();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B8A0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B898);
  v15 = sub_274AFA930(&qword_28098B8B8, &qword_28098B898);
  v29 = v14;
  v30 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = MEMORY[0x277CDE0D0];
  sub_274BF44E4();
  (*(v8 + 8))(v10, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AF10);
  sub_274B22A1C();
  sub_274BF47C4();
  v29 = v13;
  v30 = v7;
  v31 = OpaqueTypeConformance2;
  v32 = v17;
  swift_getOpaqueTypeConformance2();
  sub_274AFA930(qword_28098B930, &qword_28098B928);
  v18 = v22;
  v19 = v26;
  sub_274BF4314();
  (*(v27 + 8))(v6, v19);
  return (*(v24 + 8))(v12, v18);
}

uint64_t sub_274B40B0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274BF2E04();
  *a1 = v3;
  return result;
}

uint64_t sub_274B40BB8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_274BF46D4();
  v3 = sub_274BF4654();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

uint64_t sub_274B40C1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v15 = *(a1 + 16);
  type metadata accessor for DebugDatabaseView();
  swift_getWitnessTable();
  sub_274ADDF6C();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B9B8);
  v21 = OpaqueTypeMetadata2;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = swift_getOpaqueTypeConformance2();
  v3 = sub_274BF3254();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = v16;
  sub_274B40EEC();
  v18 = v15;
  v19 = v10;
  sub_274BF3244();
  WitnessTable = swift_getWitnessTable();
  sub_274ADB48C(v6, v3, WitnessTable);
  v12 = *(v4 + 8);
  v12(v6, v3);
  sub_274ADB48C(v9, v3, WitnessTable);
  return (v12)(v9, v3);
}

void sub_274B40EEC()
{
  v1 = *(v0 + 16);

  v2 = sub_274B95A84(v1);
  type metadata accessor for DebugDatabaseView();
  swift_getWitnessTable();
  sub_274ADDF6C();
  sub_274BF42C4();
}

uint64_t sub_274B40FC0()
{
  sub_274ADDF6C();

  v0 = sub_274BF4104();
  v2 = v1;
  v4 = v3 & 1;
  type metadata accessor for DatabaseRowView();

  DatabaseResult.count.getter();

  sub_274BF43D4();
  sub_274AFA1D0(v0, v2, v4);
}

uint64_t sub_274B410EC()
{
  v0 = sub_274BF2BB4();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28098A668);
  __swift_allocate_value_buffer(v1, qword_28098B878);
  __swift_project_value_buffer(v1, qword_28098B878);
  sub_274BF2B64();
  return sub_274BF2B24();
}

void *sub_274B411B4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(v3 + *(*v3 + 104)) = 0;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  sub_274BF2D24();
  swift_endAccess();
  v3[2] = a2;
  return v3;
}

uint64_t sub_274B41268(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for DebugMenuView()
{
  result = qword_28098B8D0;
  if (!qword_28098B8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_274B41370()
{
  sub_274B41578();
  if (v0 <= 0x3F)
  {
    sub_274B4160C();
    if (v1 <= 0x3F)
    {
      sub_274B416A0();
      if (v2 <= 0x3F)
      {
        sub_274B41734(319, &qword_28098B8F8, MEMORY[0x277CDD630]);
        if (v3 <= 0x3F)
        {
          sub_274B41734(319, &qword_28098B900, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_274B417E0(319, &qword_28098B908, &qword_28098EEE0, &unk_274BFA930, MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_274AD8430(319, &qword_28098B910);
              if (v6 <= 0x3F)
              {
                sub_274B41788();
                if (v7 <= 0x3F)
                {
                  sub_274B417E0(319, &qword_2815A2E70, &qword_28098B570, &unk_274BFE0F0, MEMORY[0x277D83D88]);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void sub_274B41578()
{
  if (!qword_28098B8E0)
  {
    type metadata accessor for LogStreamManager(255);
    sub_274B41268(&qword_28098B890, type metadata accessor for LogStreamManager);
    v0 = sub_274BF3294();
    if (!v1)
    {
      atomic_store(v0, &qword_28098B8E0);
    }
  }
}

void sub_274B4160C()
{
  if (!qword_28098B8E8)
  {
    type metadata accessor for DebugStatusBarManager();
    sub_274B41268(&qword_280989FD8, type metadata accessor for DebugStatusBarManager);
    v0 = sub_274BF3294();
    if (!v1)
    {
      atomic_store(v0, &qword_28098B8E8);
    }
  }
}

void sub_274B416A0()
{
  if (!qword_28098B8F0)
  {
    type metadata accessor for AttributeGraphProfiler();
    sub_274B41268(&qword_280989A28, type metadata accessor for AttributeGraphProfiler);
    v0 = sub_274BF3294();
    if (!v1)
    {
      atomic_store(v0, &qword_28098B8F0);
    }
  }
}

void sub_274B41734(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_274B41788()
{
  if (!qword_28098B918)
  {
    sub_274BF2164();
    v0 = sub_274BF5724();
    if (!v1)
    {
      atomic_store(v0, &qword_28098B918);
    }
  }
}

void sub_274B417E0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_274B41844()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_274B41880(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_274B418C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274B419C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugMenuView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274B41A28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugMenuView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_274B41A8C@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for DebugMenuView();
  OUTLINED_FUNCTION_7_1(v2);

  return sub_274B40B0C(a1);
}

uint64_t objectdestroy_17Tm_1()
{
  type metadata accessor for DebugMenuView();
  OUTLINED_FUNCTION_1_1();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  v5 = v1 + v4;

  v6 = v1 + v4 + v0[28];
  v7 = sub_274BF1F54();
  if (!OUTLINED_FUNCTION_16_3(v7))
  {
    OUTLINED_FUNCTION_6_9();
    (*(v8 + 8))(v6, v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B8C0);

  v9 = v0[30];
  v10 = sub_274BF2164();
  if (!OUTLINED_FUNCTION_14_2(v10))
  {
    OUTLINED_FUNCTION_6_9();
    (*(v11 + 8))(v5 + v9, v6);
  }

  OUTLINED_FUNCTION_13_6();
  if (v12)
  {
  }

  OUTLINED_FUNCTION_13_6();
  if (v13)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_274B41D3C()
{
  v0 = type metadata accessor for DebugMenuView();
  OUTLINED_FUNCTION_7_1(v0);

  return sub_274B40B50();
}

unint64_t sub_274B41DC4()
{
  result = qword_28098BB10;
  if (!qword_28098BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098BB10);
  }

  return result;
}

unint64_t sub_274B41E18()
{
  result = qword_28098BB38;
  if (!qword_28098BB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098BB38);
  }

  return result;
}

unint64_t sub_274B41E6C()
{
  result = qword_28098BB40;
  if (!qword_28098BB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098BB40);
  }

  return result;
}

uint64_t sub_274B41EC0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_274AF396C(a1, a2, a3 & 1);
  }

  else
  {

    return sub_274AFA1F0(a1, a2, a3);
  }
}

uint64_t sub_274B41F24(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_274AFA1D0(a1, a2, a3 & 1);
  }

  else
  {

    return sub_274AFA23C(a1, a2, a3);
  }
}

unint64_t sub_274B41F88()
{
  result = qword_28098BB88;
  if (!qword_28098BB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098BB88);
  }

  return result;
}

unint64_t sub_274B41FE4()
{
  result = qword_28098BBC8;
  if (!qword_28098BBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098BBC8);
  }

  return result;
}

unint64_t sub_274B42040()
{
  result = qword_28098BBD0;
  if (!qword_28098BBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098BBD0);
  }

  return result;
}

uint64_t sub_274B42094@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for DebugMenuView();
  OUTLINED_FUNCTION_7_1(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_274B3BD28(v5, a1);
}

uint64_t sub_274B42130(uint64_t a1, char a2)
{
  v5 = type metadata accessor for DebugMenuView();
  OUTLINED_FUNCTION_7_1(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_274B3C1EC(a1, a2 & 1, v7);
}

uint64_t objectdestroy_31Tm()
{
  type metadata accessor for DebugMenuView();
  OUTLINED_FUNCTION_1_1();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  v5 = v4 + v0[28];
  v6 = sub_274BF1F54();
  if (!OUTLINED_FUNCTION_16_3(v6))
  {
    OUTLINED_FUNCTION_6_9();
    (*(v7 + 8))(v5, v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B8C0);

  v8 = v0[30];
  v9 = sub_274BF2164();
  if (!OUTLINED_FUNCTION_14_2(v9))
  {
    OUTLINED_FUNCTION_6_9();
    (*(v10 + 8))(v4 + v8, v5);
  }

  OUTLINED_FUNCTION_13_6();
  if (v11)
  {
  }

  OUTLINED_FUNCTION_13_6();
  if (v12)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_274B42404(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for DebugMenuView();
  OUTLINED_FUNCTION_7_1(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

unint64_t sub_274B4247C()
{
  result = qword_28098BD00;
  if (!qword_28098BD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098BD00);
  }

  return result;
}

unint64_t sub_274B424D0()
{
  result = qword_28098BD20;
  if (!qword_28098BD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098BD18);
    sub_274AFA28C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098BD20);
  }

  return result;
}

uint64_t sub_274B42554(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_274AF396C(a1, a2, a3 & 1);
  }

  else
  {

    return sub_274B425B8(a1, a2, a3);
  }
}

uint64_t sub_274B425C0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_274AFA1D0(a1, a2, a3 & 1);
  }

  else
  {

    return sub_274B42624(a1, a2, a3);
  }
}

uint64_t sub_274B4262C(void *a1)
{
  v2 = [a1 infoDictionary];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_274BF4DF4();

  return v3;
}

uint64_t OUTLINED_FUNCTION_16_3(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t onMainThreadInlineOrAsync(closure:)(uint64_t (*a1)(void), uint64_t a2)
{
  v4 = sub_274BF4C94();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_274BF4CD4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    return a1();
  }

  sub_274B0F2B4();
  v17 = sub_274BF5504();
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274B02D5C;
  aBlock[3] = &block_descriptor_5;
  v18 = _Block_copy(aBlock);

  sub_274BF4CB4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_274B349A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F90);
  sub_274B03DB4();
  sub_274BF57F4();
  MEMORY[0x277C64DC0](0, v15, v9, v18);
  _Block_release(v18);

  (*(v6 + 8))(v9, v4);
  return (*(v12 + 8))(v15, v10);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t WFParameter.arraySizeRange(for:)(uint64_t a1)
{
  v2 = [v1 arraySizeRangeForCHSWidgetFamily_];
  v4 = v3;
  result = sub_274BF1A84();
  if (v2 == result || v4 < 1)
  {
    return 0;
  }

  if (__OFSUB__(&v2[v4], 1))
  {
    __break(1u);
  }

  else if (&v2[v4 - 1] >= v2)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t WFURLContentItem.preview(configuration:)()
{
  sub_274B42A5C();
  v1 = v0;
  return sub_274BF48B4();
}

unint64_t sub_274B42A5C()
{
  result = qword_28098BD30;
  if (!qword_28098BD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098BD30);
  }

  return result;
}

uint64_t WFURLContentItem.primaryAction.getter@<X0>(uint64_t a1@<X8>)
{
  sub_274BF4FE4();
  if (qword_2809893B8 != -1)
  {
    swift_once();
  }

  v3 = qword_28098C7C0;
  v4 = sub_274BF4F04();
  v5 = sub_274BF4F04();

  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  v7 = sub_274BF4F44();
  v9 = v8;

  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  v11 = v1;
  sub_274BF2154();
  v12 = type metadata accessor for ContentItemPreview.Action();
  v13 = (a1 + v12[5]);
  *v13 = v7;
  v13[1] = v9;
  v14 = (a1 + v12[6]);
  *v14 = 0x697261666173;
  v14[1] = 0xE600000000000000;
  v15 = (a1 + v12[7]);
  *v15 = sub_274B43418;
  v15[1] = v10;

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v12);
}

void sub_274B42C30(void *a1)
{
  v2 = sub_274BF1F54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedContext];
  v7 = [a1 URL];
  sub_274BF1F04();

  v8 = sub_274BF1ED4();
  (*(v3 + 8))(v5, v2);
  [v6 openURL_];
}

uint64_t sub_274B42DB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_274BF3804();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BD38);
  return sub_274B42E10(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_274B42E10@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v37 = a2;
  v3 = sub_274BF3C04();
  v36 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_274BF1D34();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BD40);
  MEMORY[0x28223BE20](v35);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BD48);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v34 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v33 = &v32 - v15;
  sub_274B4319C(a1, v8);
  v16 = sub_274BF40F4();
  v18 = v17;
  v38 = v16;
  v39 = v17;
  v20 = v19 & 1;
  v40 = v19 & 1;
  v41 = v21;
  sub_274BF3BF4();
  sub_274BF4274();
  (*(v36 + 8))(v5, v3);
  sub_274AFA1D0(v16, v18, v20);

  KeyPath = swift_getKeyPath();
  v23 = &v10[*(v35 + 36)];
  *v23 = KeyPath;
  v23[8] = 0;
  sub_274BF3F14();
  sub_274B434A0();
  v24 = v33;
  sub_274BF41A4();
  sub_274AE95AC(v10);
  v25 = *(v12 + 16);
  v26 = v34;
  v27 = v24;
  v25(v34, v24, v11);
  v28 = v37;
  v25(v37, v26, v11);
  v29 = &v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BD58) + 48)];
  *v29 = 0;
  v29[8] = 1;
  v30 = *(v12 + 8);
  v30(v27, v11);
  return (v30)(v26, v11);
}

uint64_t sub_274B4319C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v18 - v7;
  v9 = sub_274BF1DA4();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_274BF1F54();
  v11 = *(v10 - 8);
  *&v12 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 URL];
  sub_274BF1F04();

  sub_274BF1E94();
  (*(v11 + 8))(v14, v10);
  sub_274BF1D94();
  sub_274BF1D44();
  v16 = [a1 URL];
  sub_274BF1F04();

  __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
  sub_274B4359C(v8, v5);
  sub_274B4360C();
  sub_274BF1D54();
  sub_274B43660(v8);
  v18[1] = sub_274BF45B4();
  sub_274B436C8();
  return sub_274BF1D54();
}

uint64_t sub_274B4344C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274BF3684();
  *a1 = result;
  return result;
}

unint64_t sub_274B434A0()
{
  result = qword_28098BD50;
  if (!qword_28098BD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098BD40);
    sub_274BF3C04();
    swift_getOpaqueTypeConformance2();
    sub_274AFA930(&qword_2815A2FA0, &qword_28098B700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098BD50);
  }

  return result;
}

uint64_t sub_274B4359C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_274B4360C()
{
  result = qword_28098BD60;
  if (!qword_28098BD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098BD60);
  }

  return result;
}

uint64_t sub_274B43660(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_274B436C8()
{
  result = qword_28098BD68;
  if (!qword_28098BD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098BD68);
  }

  return result;
}

uint64_t WFMKMapItemContentItem.preview(configuration:)(char *a1)
{
  v3 = _s14WorkflowUICore11PreviewViewVMa_0();
  MEMORY[0x28223BE20](v3);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 1);
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BD80);
  swift_storeEnumTagMultiPayload();
  *(v5 + *(v3 + 20)) = v1;
  v9 = v5 + *(v3 + 24);
  *v9 = v6;
  v9[1] = v7;
  *(v9 + 1) = v8;
  sub_274B44598();

  v10 = v1;
  return sub_274BF48B4();
}

uint64_t _s14WorkflowUICore11PreviewViewVMa_0()
{
  result = qword_28098BD98;
  if (!qword_28098BD98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WFMKMapItemContentItem.primaryAction.getter@<X0>(uint64_t a1@<X8>)
{
  sub_274BF4FE4();
  if (qword_2809893B8 != -1)
  {
    swift_once();
  }

  v3 = qword_28098C7C0;
  v4 = sub_274BF4F04();
  v5 = sub_274BF4F04();

  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  v7 = sub_274BF4F44();
  v9 = v8;

  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  v11 = v1;
  sub_274BF2154();
  v12 = type metadata accessor for ContentItemPreview.Action();
  v13 = (a1 + v12[5]);
  *v13 = v7;
  v13[1] = v9;
  v14 = (a1 + v12[6]);
  *v14 = 7364973;
  v14[1] = 0xE300000000000000;
  v15 = (a1 + v12[7]);
  *v15 = sub_274B445F0;
  v15[1] = v10;

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v12);
}

void sub_274B439E4(void *a1)
{
  v1 = [a1 mapItem];
  if (v1)
  {
    v2 = v1;
    [v1 openInMapsWithLaunchOptions_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_274B43A8C()
{
  v1 = [*(v0 + *(_s14WorkflowUICore11PreviewViewVMa_0() + 20)) mapItem];
  if (!v1)
  {
    __break(1u);
    return MEMORY[0x282136DC8](v2, v3, v4, v5);
  }

  v6 = v1;
  v7 = [v1 placemark];

  v8 = [v7 location];
  if (v8)
  {
    [v8 coordinate];
    v10 = v9;
    v12 = v11;

    v4.n128_u64[0] = 0x3F8EB851EB851EB8;
    v2.n128_u64[0] = v10;
    v3.n128_u64[0] = v12;
    v5.n128_u64[0] = 0x3F8EB851EB851EB8;

    return MEMORY[0x282136DC8](v2, v3, v4, v5);
  }

  return MEMORY[0x282136DD0]();
}