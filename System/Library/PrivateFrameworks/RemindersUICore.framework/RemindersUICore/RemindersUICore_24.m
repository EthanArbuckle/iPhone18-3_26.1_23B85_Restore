uint64_t sub_21D300DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();

  return sub_21D300CC4(a1, a2, a3, a4, a5, v17, a7, a8, a9, a10);
}

void sub_21D300E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
  }
}

id sub_21D300ED0(id result)
{
  if (result)
  {
    v1 = result;
    sub_21DBF8E0C();

    return v1;
  }

  return result;
}

void *sub_21D300F14(void *result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_21D300F54()
{
  result = qword_280D177E0;
  if (!qword_280D177E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D177E0);
  }

  return result;
}

uint64_t sub_21D300FA0(void *a1, void *a2, uint64_t a3)
{
  v5 = [a1 string];
  v6 = sub_21DBFA16C();
  v8 = v7;

  v9 = MEMORY[0x223D42B30](v6, v8);

  v16 = MEMORY[0x277D84F90];
  v10 = swift_allocObject();
  *(v10 + 16) = &v16;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_21D301E50;
  *(v11 + 24) = v10;
  aBlock[4] = sub_21D301E58;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D472CC4;
  aBlock[3] = &block_descriptor_104;
  v12 = _Block_copy(aBlock);

  [a2 enumerateAttributesInRange:a3 options:v9 usingBlock:{0, v12}];
  _Block_release(v12);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  else
  {
    v14 = v16;

    return v14;
  }

  return result;
}

unint64_t sub_21D30116C()
{
  result = qword_27CE5A638;
  if (!qword_27CE5A638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5A638);
  }

  return result;
}

uint64_t type metadata accessor for TTRReminderCellNotesEditingPresenter()
{
  result = qword_280D100C8;
  if (!qword_280D100C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D301408()
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(319);
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

uint64_t destroy for EditingState(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
  }

  return result;
}

__n128 initializeWithCopy for EditingState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  if (v2)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v2;
    v3 = *(a2 + 32);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = v3;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    result = *(a2 + 8);
    v5 = *(a2 + 24);
    *(a1 + 8) = result;
    *(a1 + 24) = v5;
  }

  return result;
}

uint64_t assignWithCopy for EditingState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v4)
    {
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = *(a2 + 16);
      sub_21DBF8E0C();

      *(a1 + 24) = *(a2 + 24);
      sub_21DBF8E0C();

      *(a1 + 32) = *(a2 + 32);
      sub_21DBF8E0C();
    }

    else
    {
      sub_21D0CF7E0(a1 + 8, &qword_27CE5A640);
      v5 = *(a2 + 24);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = v5;
    }
  }

  else if (v4)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v6 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v6;
  }

  return a1;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for EditingState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  if (!*(a1 + 16))
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    sub_21D0CF7E0(a1 + 8, &qword_27CE5A640);
LABEL_5:
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    return a1;
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t getEnumTagSinglePayload for EditingState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for EditingState(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

BOOL sub_21D30186C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v8 = sub_21DBF4B4C();
  result = 0;
  if (v8 != a2 && a3 >= 1)
  {
    if (v7)
    {
      if (v7 != 1)
      {
        v40[0] = 0;
        v40[1] = 0;
        v30 = [objc_opt_self() attributeNameForStyle_];
        v31 = [a4 attribute:v30 atIndex:a2 longestEffectiveRange:v40 inRange:{a2, a3}];

        if (v31)
        {
          sub_21DBFBC1C();
          swift_unknownObjectRelease();
        }

        else
        {
          v45 = 0u;
          v46 = 0u;
        }

        aBlock = v45;
        v42 = v46;
        sub_21D0D3954(&aBlock, &v45, &qword_27CE5C690);
        if (*(&v46 + 1))
        {
          if (swift_dynamicCast() && (v39 & 1) != 0)
          {
            sub_21DBFB9CC();
            v33 = v32;
            v35 = v34;
            sub_21D0CF7E0(&aBlock, &qword_27CE5C690);
            return (v35 & 1) == 0 && v33 != a3;
          }

          p_aBlock = &aBlock;
        }

        else
        {
          sub_21D0CF7E0(&aBlock, &qword_27CE5C690);
          p_aBlock = &v45;
        }

        sub_21D0CF7E0(p_aBlock, &qword_27CE5C690);
        return 1;
      }

      v10 = [objc_opt_self() attributeNameForStyle_];
      MEMORY[0x28223BE20](v10);
      v38 = 2;
      *&v45 = MEMORY[0x277D84F90];
      v11 = swift_allocObject();
      v11[2] = sub_21D301F84;
      v11[3] = v37;
      v11[4] = &v45;
      v12 = swift_allocObject();
      *(v12 + 16) = sub_21D301F58;
      *(v12 + 24) = v11;
      v43 = sub_21D24BE7C;
      v44 = v12;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v42 = sub_21D1A6068;
      *(&v42 + 1) = &block_descriptor_83;
      v13 = _Block_copy(&aBlock);

      [a4 enumerateAttribute:v10 inRange:a2 options:a3 usingBlock:{0, v13}];

      _Block_release(v13);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
      }

      v15 = v45;

      v16 = *(v15 + 16);
      if (v16)
      {
        v17 = 0;
        v18 = (v15 + 40);
        while (1)
        {
          v19 = *v18;
          v18 += 2;
          v20 = __OFADD__(v17, v19);
          v17 += v19;
          if (v20)
          {
            break;
          }

          if (!--v16)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    else
    {
      v21 = [objc_opt_self() attributeNameForStyle_];
      MEMORY[0x28223BE20](v21);
      v38 = 1;
      *&v45 = MEMORY[0x277D84F90];
      v22 = swift_allocObject();
      v22[2] = sub_21D301F84;
      v22[3] = v37;
      v22[4] = &v45;
      v23 = swift_allocObject();
      *(v23 + 16) = sub_21D301F58;
      *(v23 + 24) = v22;
      v43 = sub_21D24BE7C;
      v44 = v23;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v42 = sub_21D1A6068;
      *(&v42 + 1) = &block_descriptor_95;
      v24 = _Block_copy(&aBlock);

      [a4 enumerateAttribute:v21 inRange:a2 options:a3 usingBlock:{0, v24}];

      _Block_release(v24);
      v25 = swift_isEscapingClosureAtFileLocation();

      if (v25)
      {
        goto LABEL_35;
      }

      v26 = v45;

      v27 = *(v26 + 16);
      if (v27)
      {
        v17 = 0;
        v28 = (v26 + 40);
        while (1)
        {
          v29 = *v28;
          v28 += 2;
          v20 = __OFADD__(v17, v29);
          v17 += v29;
          if (v20)
          {
            goto LABEL_33;
          }

          if (!--v27)
          {
            goto LABEL_20;
          }
        }
      }
    }

    v17 = 0;
LABEL_20:

    return v17 != a3;
  }

  return result;
}

unint64_t sub_21D301E60()
{
  result = qword_280D178B8;
  if (!qword_280D178B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5A650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D178B8);
  }

  return result;
}

uint64_t sub_21D301EC4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  return (*(v2 + 48))(v1, v3, v2);
}

uint64_t sub_21D301F20(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return sub_21D24A814(a1, a2);
  }

  return a1;
}

void sub_21D301F8C(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for TTRIOutlineDisclosureButton();
  v10.receiver = v3;
  v10.super_class = v4;
  v5 = objc_msgSendSuper2(&v10, sel_isSelected);
  v9.receiver = v3;
  v9.super_class = v4;
  objc_msgSendSuper2(&v9, sel_setSelected_, v2);
  v8.receiver = v3;
  v8.super_class = v4;
  if (v5 != objc_msgSendSuper2(&v8, sel_isSelected))
  {
    v7.receiver = v3;
    v7.super_class = v4;
    v6 = objc_msgSendSuper2(&v7, sel_isSelected);
    sub_21D30281C(v6);
  }
}

id _s15RemindersUICore27TTRIOutlineDisclosureButtonC10isExpandedSbvg_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_isSelected);
}

void _s15RemindersUICore27TTRIOutlineDisclosureButtonC10isExpandedSbvs_0(char a1)
{
  ObjectType = swift_getObjectType();
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v9, sel_isSelected);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, sel_setSelected_, a1 & 1);
  v7.receiver = v1;
  v7.super_class = ObjectType;
  if (v4 != objc_msgSendSuper2(&v7, sel_isSelected))
  {
    v6.receiver = v1;
    v6.super_class = ObjectType;
    v5 = objc_msgSendSuper2(&v6, sel_isSelected);
    sub_21D30281C(v5);
  }
}

uint64_t (*TTRIOutlineDisclosureButton.isExpanded.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 144) = v1;
  ObjectType = swift_getObjectType();
  *(v4 + 152) = ObjectType;
  *v4 = v1;
  *(v4 + 8) = ObjectType;
  *(v4 + 160) = objc_msgSendSuper2(v4, sel_isSelected);
  return sub_21D30219C;
}

id (*TTRIOutlineDisclosureButton.togglesExpansionAsPrimaryAction.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 changesSelectionAsPrimaryAction];
  return sub_21D30222C;
}

id TTRIOutlineDisclosureButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TTRIOutlineDisclosureButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v14.receiver = v4;
  v14.super_class = swift_getObjectType();
  v9 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 defaultCenter];
  [v12 addObserver:v11 selector:sel_buttonShapesSettingDidChange name:*MEMORY[0x277D76450] object:0];

  if (qword_280D17218 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_280D17220 == 1)
  {
    [v11 _setMonochromaticTreatment_];
    [v11 _setEnableMonochromaticTreatment_];
  }

  return v11;
}

id sub_21D302434(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
    v6 = [v4 defaultCenter];
    [v6 addObserver:v5 selector:sel_buttonShapesSettingDidChange name:*MEMORY[0x277D76450] object:0];

    if (qword_280D17218 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_280D17220 == 1)
    {
      [v5 _setMonochromaticTreatment_];
      [v5 _setEnableMonochromaticTreatment_];
    }
  }

  return v3;
}

Swift::Void __swiftcall TTRIOutlineDisclosureButton.layoutSubviews()()
{
  ObjectType = swift_getObjectType();
  v2 = [v0 imageView];
  v3 = v2;
  if (v2)
  {
    [v2 transform];
    v11 = v16;
    v13 = v15;
    v5 = *(&v17 + 1);
    v4 = v17;
  }

  else
  {
    v11 = 0u;
    v13 = 0u;
    v4 = 0;
    v5 = 0;
  }

  v6 = [v0 imageView];
  if (v6)
  {
    v7 = *(MEMORY[0x277CBF2C0] + 16);
    v15 = *MEMORY[0x277CBF2C0];
    v16 = v7;
    v17 = *(MEMORY[0x277CBF2C0] + 32);
    v8 = v6;
    [v6 setTransform_];
  }

  v18.receiver = v0;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, sel_layoutSubviews);
  if (v3)
  {
    v9 = [v0 imageView];
    if (v9)
    {
      v15 = v14;
      v16 = v12;
      *&v17 = v4;
      *(&v17 + 1) = v5;
      v10 = v9;
      [v9 setTransform_];
    }
  }
}

void sub_21D30281C(char a1)
{
  v3 = [v1 imageView];
  if (v3)
  {
    v4 = v3;
    if (a1)
    {
      v5 = 1.0;
    }

    else
    {
      v5 = -1.0;
    }

    v6 = [v1 traitCollection];
    v7 = [v6 layoutDirection];

    v8 = -v5;
    if (v7 != 1)
    {
      v8 = v5;
    }

    v9 = v8 * 90.0 * 0.0174532925;
    v10 = objc_opt_self();
    v11 = swift_allocObject();
    *(v11 + 16) = v4;
    *(v11 + 24) = v9;
    v14[4] = sub_21D303330;
    v14[5] = v11;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_21D0D74FC;
    v14[3] = &block_descriptor_11;
    v12 = _Block_copy(v14);
    v13 = v4;

    [v10 animateWithDuration:v12 animations:0.3];

    _Block_release(v12);
  }
}

uint64_t (*TTRIOutlineDisclosureButton.isSelected.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 144) = v1;
  ObjectType = swift_getObjectType();
  *(v4 + 152) = ObjectType;
  *v4 = v1;
  *(v4 + 8) = ObjectType;
  *(v4 + 160) = objc_msgSendSuper2(v4, sel_isSelected);
  return sub_21D303344;
}

void sub_21D302A40(objc_super **a1, char a2)
{
  v2 = *a1;
  receiver_low = LOBYTE((*a1)[10].receiver);
  receiver = (*a1)[9].receiver;
  super_class = (*a1)[9].super_class;
  v6 = *a1;
  if (a2)
  {
    v6[1].receiver = receiver;
    v2[1].super_class = super_class;
    v7 = objc_msgSendSuper2(v6 + 1, sel_isSelected);
    v2[2].receiver = receiver;
    v2[2].super_class = super_class;
    objc_msgSendSuper2(v2 + 2, sel_setSelected_, receiver_low);
    v2[3].receiver = receiver;
    v2[3].super_class = super_class;
    if (v7 == objc_msgSendSuper2(v2 + 3, sel_isSelected))
    {
      goto LABEL_7;
    }

    v8 = v2 + 4;
    v9 = 72;
  }

  else
  {
    v6[5].receiver = receiver;
    v2[5].super_class = super_class;
    v10 = objc_msgSendSuper2(v6 + 5, sel_isSelected);
    v2[6].receiver = receiver;
    v2[6].super_class = super_class;
    objc_msgSendSuper2(v2 + 6, sel_setSelected_, receiver_low);
    v2[7].receiver = receiver;
    v2[7].super_class = super_class;
    if (v10 == objc_msgSendSuper2(v2 + 7, sel_isSelected))
    {
      goto LABEL_7;
    }

    v8 = v2 + 8;
    v9 = 136;
  }

  v11 = v2[9].super_class;
  v8->receiver = v2[9].receiver;
  *(&v2->receiver + v9) = v11;
  v12 = [(objc_super *)v8 isSelected];
  sub_21D30281C(v12);
LABEL_7:

  free(v2);
}

id sub_21D302B5C(void *a1, CGFloat a2)
{
  [a1 transform];
  CGAffineTransformRotate(&v5, &v6, a2);
  v6 = v5;
  return [a1 setTransform_];
}

uint64_t sub_21D302BE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2F0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - v4;
  sub_21DBFB97C();
  v6 = sub_21DBFB95C();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    sub_21D303258(v5, v2);
    sub_21DBFB98C();
    return sub_21D3032C8(v5);
  }

  else
  {
    UIAccessibilityButtonShapesEnabled();
    v8 = sub_21DBFA12C();

    v9 = [objc_opt_self() systemImageNamed_];

    sub_21DBFB8FC();
    return sub_21DBFB98C();
  }
}

id TTRIOutlineDisclosureButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static UIButton.Configuration.outlineDisclosure()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A658);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v21 - v1;
  v22 = sub_21DBF88CC();
  v3 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = sub_21DBFB83C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBFB90C();
  UIAccessibilityButtonShapesEnabled();
  v13 = sub_21DBFA12C();

  v14 = [objc_opt_self() systemImageNamed_];

  sub_21DBFB8FC();
  sub_21DBFB84C();
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v15 = sub_21D900614(2);
  v16 = [objc_opt_self() configurationWithFont:v15 scale:1];

  sub_21DBFB78C();
  (*(v10 + 104))(v12, *MEMORY[0x277D74FF8], v9);
  sub_21DBFB85C();
  sub_21DBFB82C();
  sub_21DBF889C();
  v17 = [objc_opt_self() clearColor];
  sub_21DBF883C();
  sub_21DBF8BAC();
  v18 = sub_21DBF8B9C();
  (*(*(v18 - 8) + 56))(v2, 0, 1, v18);
  sub_21DBF888C();
  v19 = v22;
  (*(v3 + 16))(v5, v8, v22);
  sub_21DBFB7BC();
  return (*(v3 + 8))(v8, v19);
}

id sub_21D3031F4()
{
  v0 = [objc_opt_self() clearColor];

  return v0;
}

uint64_t sub_21D303258(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D3032C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D303348()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5A660);
  v1 = __swift_project_value_buffer(v0, qword_27CE5A660);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D303410(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v9 - v5;
  v7 = *(v2 + 120);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  (*(*(v2 + 96) + 24))(v3);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21D303564(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_21D3035B4(a1, a2);
  return v4;
}

char *sub_21D3035B4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 136);
  *&v2[v6] = sub_21DBF9E3C();
  swift_weakInit();
  v7 = qword_280D16A40++;
  *(v2 + 2) = v7;
  (*(*(*(v5 + 80) - 8) + 32))(&v2[*(*v2 + 120)], a1);
  (*(*(*(v5 + 88) - 8) + 32))(&v2[*(*v2 + 128)], a2);
  return v2;
}

uint64_t sub_21D303718(uint64_t a1)
{
  v2 = v1;
  if (swift_weakLoadStrong())
  {

    if (qword_27CE565F0 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE5A660);
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAECC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21D0C9000, v5, v6, "newChild.parentNode should be nil.", v7, 2u);
      MEMORY[0x223D46520](v7, -1, -1);
    }
  }

  swift_beginAccess();
  sub_21DBFA74C();

  sub_21DBFA70C();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  swift_initStackObject();
  v8 = sub_21DBFA60C();
  *v9 = a1;
  sub_21D23C8B4();
  v10 = v8;

  sub_21D304014(v10, v2, sub_21D30417C, 0);
}

uint64_t sub_21D30392C(uint64_t a1)
{
  v2 = v1;
  v20 = *v2;
  v18 = sub_21DBF5A5C();
  v4 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA80);
  MEMORY[0x28223BE20](v7);
  v9 = v16 - v8;
  v16[1] = a1;
  sub_21DBF5A6C();
  v10 = *v2;
  v21 = v2;
  v19 = *(v10 + 136);
  sub_21DBF5B9C();
  sub_21D3044DC(&qword_280D1B820, MEMORY[0x277CC9A28]);
  v17 = (v4 + 8);
  while (1)
  {
    sub_21DBFACAC();
    sub_21D3044DC(&qword_280D1B840, MEMORY[0x277CC9A08]);
    v11 = v18;
    v12 = sub_21DBFA10C();
    (*v17)(v6, v11);
    if (v12)
    {
      break;
    }

    v13 = sub_21DBFAD3C();
    v13(v22, 0);
    sub_21DBFACBC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    swift_initStackObject();
    v14 = sub_21DBFA60C();
    swift_beginAccess();
    sub_21DBFA78C();
    swift_endAccess();
    sub_21D23C8B4();
    sub_21D303ED0(v14, sub_21D304198, 0);
  }

  sub_21D304524(v9);
  swift_beginAccess();
  sub_21DBFA74C();
  Array.remove(at:)();
  return swift_endAccess();
}

uint64_t sub_21D303C9C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 120);
  swift_beginAccess();
  (*(*(*(v5 + 80) - 8) + 24))(v2 + v6, a1);
  swift_endAccess();
  v7 = *(*v2 + 128);
  swift_beginAccess();
  (*(*(*(v5 + 88) - 8) + 24))(v2 + v7, a2);
  return swift_endAccess();
}

uint64_t sub_21D303DC4(uint64_t a1)
{
  v3 = *(*v1 + 136);
  swift_beginAccess();
  v4 = sub_21DBF8E0C();
  sub_21D303ED0(v4, sub_21D304198, 0);

  *(v1 + v3) = a1;
  sub_21DBF8E0C();

  v5 = sub_21DBF8E0C();
  sub_21D304014(v5, v1, sub_21D30417C, 0);
}

uint64_t sub_21D303ED0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = sub_21DBFA6DC();
  if (result)
  {
    v7 = 4;
    do
    {
      v8 = v7 - 4;
      v9 = sub_21DBFA6AC();
      sub_21DBFA61C();
      if (v9)
      {
        v10 = *(a1 + 8 * v7);

        v11 = v7 - 3;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        result = sub_21DBFBF7C();
        v10 = result;
        v11 = v7 - 3;
        if (__OFADD__(v8, 1))
        {
LABEL_9:
          __break(1u);
          return result;
        }
      }

      a2(v10);
      swift_beginAccess();
      v12 = sub_21DBF8E0C();
      sub_21D303ED0(v12, a2, a3);

      result = sub_21DBFA6DC();
      ++v7;
    }

    while (v11 != result);
  }

  return result;
}

uint64_t sub_21D304014(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  result = sub_21DBFA6DC();
  if (result)
  {
    v9 = 4;
    do
    {
      v10 = v9 - 4;
      v11 = sub_21DBFA6AC();
      sub_21DBFA61C();
      if (v11)
      {
        v12 = *(a1 + 8 * v9);

        v13 = v9 - 3;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        result = sub_21DBFBF7C();
        v12 = result;
        v13 = v9 - 3;
        if (__OFADD__(v10, 1))
        {
LABEL_9:
          __break(1u);
          return result;
        }
      }

      a3(v12, a2);
      swift_beginAccess();
      v14 = sub_21DBF8E0C();
      sub_21D304014(v14, v12, a3, a4);

      result = sub_21DBFA6DC();
      ++v9;
    }

    while (v13 != result);
  }

  return result;
}

void sub_21D3041B8(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v22 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v10 = sub_21DBFBD7C();
    if (!v10)
    {
      return;
    }
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      return;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
  }

  else
  {

    v11 = 0;
    v21 = v9;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x223D44740](v11, a1);
      }

      else
      {
        v13 = *(a1 + 8 * v11 + 32);
      }

      v14 = *(*v13 + 120);
      swift_beginAccess();
      sub_21D1D338C(v13 + v14, v6);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v9);
      sub_21D106978(v6, type metadata accessor for TTRRemindersListViewModel.Item);
      swift_beginAccess();
      v16 = sub_21D181E00(v9, v15);
      if (v17)
      {
        v18 = v16;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = *(a2 + 24);
        v23 = v20;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_21D221A94();
          v20 = v23;
        }

        sub_21D106978(*(v20 + 48) + *(v22 + 72) * v18, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D4B71B8(v18, v20);
        *(a2 + 24) = v20;

        v9 = v21;
      }

      ++v11;
      swift_endAccess();
      sub_21D106978(v9, type metadata accessor for TTRRemindersListViewModel.ItemID);
      swift_beginAccess();

      v12 = sub_21DBF8E0C();
      sub_21D3041B8(v12, a2);
    }

    while (v10 != v11);
  }
}

uint64_t sub_21D3044DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21D304524(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21D30458C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for TTRIQuickLookPreviewController();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC15RemindersUICore30TTRIQuickLookPreviewController_transitionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = type metadata accessor for TTRIQuickLookPreviewController.DataSource();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtCC15RemindersUICore30TTRIQuickLookPreviewControllerP33_5E2A18B72E000F5EB686E3810129004A10DataSource_previewItems] = a1;
  v16.receiver = v10;
  v16.super_class = v9;
  sub_21DBF8E0C();
  *&v8[OBJC_IVAR____TtC15RemindersUICore30TTRIQuickLookPreviewController_ttrDataSource] = objc_msgSendSuper2(&v16, sel_init);
  v15.receiver = v8;
  v15.super_class = v7;
  v11 = objc_msgSendSuper2(&v15, sel_initWithNibName_bundle_, 0, 0);
  [v11 setDataSource_];
  [v11 setCurrentPreviewItemIndex_];
  v12 = &v11[OBJC_IVAR____TtC15RemindersUICore30TTRIQuickLookPreviewController_transitionDelegate];
  swift_beginAccess();
  *(v12 + 1) = a4;
  swift_unknownObjectWeakAssign();
  [v11 setDelegate_];
  swift_unknownObjectRelease();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    [Strong presentViewController:v11 animated:1 completion:0];
  }
}

uint64_t sub_21D304720()
{
  MEMORY[0x223D46650](v0 + 16);
  MEMORY[0x223D46650](v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_21D304784()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5A680);
  v1 = __swift_project_value_buffer(v0, qword_27CE5A680);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D30484C()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 40);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 16))(ObjectType, v2);
  v5 = *(v1 + 40);
  v6 = swift_getObjectType();
  v7 = *(v5 + 40);
  v8 = v4;
  v7(v25, v6, v5);
  v9 = v25[0];
  v24[0] = MEMORY[0x277D84F90];
  if (v25[0] >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v25[0] & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    v22 = v1;
    v23 = v8;
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x223D44740](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v1 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if ([v12 isUnsupported])
      {
      }

      else
      {
        sub_21DBFBFEC();
        v8 = *(v24[0] + 16);
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      ++v11;
      if (v1 == i)
      {
        v14 = v24[0];
        v1 = v22;
        v8 = v23;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v14 = MEMORY[0x277D84F90];
LABEL_18:

  v15 = *(v1 + 40);
  v16 = swift_getObjectType();
  (*(v15 + 56))(v24, v16, v15);
  v17 = v24[0];
  v18 = v24[1];
  v19 = v24[2];
  TTRReminderDetailPendingMoveInteractorCapability.EffectiveList.listForDisplaying.getter(v25);

  v20 = sub_21D306244(v14, v25);
  return v20 & 1;
}

uint64_t sub_21D304A80()
{
  sub_21D157444(v0 + 16);
  sub_21D157444(v0 + 32);
  sub_21D24A814(*(v0 + 48), *(v0 + 56));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 96);
  __swift_destroy_boxed_opaque_existential_0(v0 + 136);

  return swift_deallocClassInstance();
}

id sub_21D304B20(void *a1, uint64_t a2)
{
  v2 = *(a2 + 176);
  *(a2 + 176) = a1;

  return a1;
}

uint64_t sub_21D304B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a3;
  v45 = a4;
  v54 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v42 - v6;
  v8 = sub_21DBF54CC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v56 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v55 = &v42 - v12;
  v13 = type metadata accessor for TTRRemindersListViewModel.ImageAttachment(0);
  v17 = MEMORY[0x28223BE20](v13);
  v18 = (&v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x277D84F90];
  v58 = MEMORY[0x277D84F90];
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = *(v14 + 20);
    v22 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v23 = *(v15 + 72);
    v24 = (v9 + 48);
    v48 = (v9 + 16);
    v49 = (v9 + 32);
    v46 = (v9 + 8);
    v47 = (&v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    v52 = v21;
    v53 = v7;
    v50 = (v9 + 48);
    v51 = v23;
    do
    {
      sub_21D305EF0(v22, v18, type metadata accessor for TTRRemindersListViewModel.ImageAttachment);
      sub_21D3050B8(v18 + v21, v7);
      if ((*v24)(v7, 1, v8) == 1)
      {
        sub_21D305F58(v18, type metadata accessor for TTRRemindersListViewModel.ImageAttachment);
        sub_21D0CF7E0(v7, &qword_27CE5EA20);
      }

      else
      {
        v25 = v55;
        (*v49)(v55, v7, v8);
        v26 = *v18;
        v27 = *v48;
        v28 = v56;
        (*v48)(v56, v25, v8);
        v29 = type metadata accessor for TTRIQuickLookImageAttachmentPreviewItem();
        v30 = objc_allocWithZone(v29);
        *&v30[OBJC_IVAR____TtC15RemindersUICore39TTRIQuickLookImageAttachmentPreviewItem_attachmentID] = v26;
        v27(&v30[OBJC_IVAR____TtC15RemindersUICore39TTRIQuickLookImageAttachmentPreviewItem_fileURL], v28, v8);
        v18 = v47;
        v57.receiver = v30;
        v57.super_class = v29;
        v31 = v26;
        objc_msgSendSuper2(&v57, sel_init);
        v32 = *v46;
        (*v46)(v28, v8);
        v32(v25, v8);
        v33 = sub_21D305F58(v18, type metadata accessor for TTRRemindersListViewModel.ImageAttachment);
        MEMORY[0x223D42D80](v33);
        if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        v19 = v58;
        v21 = v52;
        v7 = v53;
        v24 = v50;
        v23 = v51;
      }

      v22 += v23;
      --v20;
    }

    while (v20);
  }

  if (v19 >> 62)
  {
LABEL_29:
    v34 = sub_21DBFBD7C();
    if (!v34)
    {
    }
  }

  else
  {
    v34 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v34)
    {
    }
  }

  v35 = 0;
  while (v34 != v35)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x223D44740](v35, v19, v17);
    }

    else
    {
      if (v35 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v36 = *(v19 + 8 * v35 + 32);
    }

    v37 = v36;
    sub_21D0D8CF0(0, &qword_280D17680);
    v38 = sub_21DBFB63C();

    if (v38)
    {
      goto LABEL_22;
    }

    if (__OFADD__(v35++, 1))
    {
      goto LABEL_28;
    }
  }

  v35 = 0;
LABEL_22:
  __swift_project_boxed_opaque_existential_1((v43 + 96), *(v43 + 120));
  sub_21DBF8E0C();
  if (v19 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A698);
    v40 = sub_21DBFC33C();
  }

  else
  {
    sub_21DBFC65C();
    v40 = v19;
  }

  sub_21D30458C(v40, v35, v44, v45);
}

uint64_t sub_21D3050B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D305128(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v5 = [*(a1 + *(v4 + 20)) stringRepresentation];
  v6 = sub_21DBFA16C();
  v8 = v7;

  v9 = [*(a2 + *(v4 + 20)) stringRepresentation];
  v10 = sub_21DBFA16C();
  v12 = v11;

  if (v6 == v10 && v8 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_21DBFC64C();
  }

  return v14 & 1;
}

uint64_t sub_21D305208(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v5 = *(v4 + 28);
  v6 = *(a1 + v5);
  if (v6)
  {
    v7 = [v6 string];
    v8 = sub_21DBFA16C();
    v10 = v9;

    v11 = *(a2 + *(v4 + 28));
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
    v11 = *(a2 + v5);
    if (v11)
    {
LABEL_3:
      v12 = [v11 string];
      v13 = sub_21DBFA16C();
      v15 = v14;

      if (v8 != v13)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  v15 = 0xE000000000000000;
  if (v8)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (v10 == v15)
  {

LABEL_10:
    v17 = *(a1 + *(v4 + 32)) ^ *(a2 + *(v4 + 32)) ^ 1;
    return v17 & 1;
  }

LABEL_9:
  v16 = sub_21DBFC64C();

  v17 = 0;
  if (v16)
  {
    goto LABEL_10;
  }

  return v17 & 1;
}

void sub_21D305348(uint64_t a1)
{
  if (*(v1 + 56))
  {
    v2 = *(v1 + 72);
    v3 = *(a1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 20));
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v4 = [v3 stringRepresentation];
    v5 = sub_21DBFA16C();
    v7 = v6;

    if (*(v2 + 16))
    {
      v8 = v1;
      v9 = sub_21D0CEF70(v5, v7);
      v11 = v10;

      if (v11)
      {
        v12 = *(*(v2 + 56) + 8 * v9);

        if (__OFADD__(v12, 1))
        {
          __break(1u);
        }

        else
        {
          v13 = *(*(v8 + 80) + 40);
          ObjectType = swift_getObjectType();
          (*(v13 + 288))(v12 + 1, sub_21D306080, v8, ObjectType, v13);
        }

        return;
      }
    }

    else
    {
    }

    if (qword_27CE565F8 != -1)
    {
      swift_once();
    }

    v15 = sub_21DBF84BC();
    __swift_project_value_buffer(v15, qword_27CE5A680);
    oslog = sub_21DBF84AC();
    v16 = sub_21DBFAECC();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21D0C9000, oslog, v16, "requestNewSubtask: unable to find subtask", v17, 2u);
      MEMORY[0x223D46520](v17, -1, -1);
    }
  }
}

void sub_21D305590(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for TTRISubtaskListViewModel.Subtask() + 20));
  if (qword_27CE565F8 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE5A680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  v4 = [v1 objectID];
  *(inited + 72) = sub_21D0D8CF0(0, &qword_280D17880);
  *(inited + 48) = v4;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0);
  sub_21DAEACDC();

  v5 = [v1 userActivity];
  if (v5)
  {
    v6 = v5;
    sub_21DBFAFBC();
  }
}

void sub_21D305734(uint64_t a1, const char *a2)
{
  if (qword_27CE565F8 != -1)
  {
    swift_once();
  }

  v3 = sub_21DBF84BC();
  __swift_project_value_buffer(v3, qword_27CE5A680);
  oslog = sub_21DBF84AC();
  v4 = sub_21DBFAEAC();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21D0C9000, oslog, v4, a2, v5, 2u);
    MEMORY[0x223D46520](v5, -1, -1);
  }
}

void *sub_21D305824()
{
  v1 = v0;
  v55 = type metadata accessor for TTRISubtaskListViewModel.Subtask();
  v2 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v49 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A6B8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v49 - v12;
  result = sub_21D30484C();
  if (v15)
  {
    v18 = result;
    v19 = v15;
    v20 = v16;
    v53 = v17;
    v54 = v13;
    v49 = v7;
    v50 = v10;
    v21 = v1[7];
    v52 = v16;
    if (v21)
    {
      v51 = v1[8];
      v22 = v1[6];
      v57 = v15;
      v58 = v21;
      sub_21D24A7C4(v22, v21);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A6C0);
      sub_21D30601C();
      sub_21DBFAC5C();

      v20 = v52;

      swift_bridgeObjectRelease_n();
      v23 = sub_21DBF813C();
      (*(*(v23 - 8) + 56))(v13, 0, 1, v23);
    }

    else
    {
      v24 = sub_21DBF813C();
      (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
    }

    v56 = v18;
    v25 = v18 & 1;
    v26 = v1[6];
    v27 = v1[7];
    v1[6] = v25;
    v1[7] = v19;
    v28 = v53;
    v1[8] = v20;
    v1[9] = v28;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21D24A814(v26, v27);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_21D316958(v56 & 1, v19, v20, v28, v54);
      swift_unknownObjectRelease();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(Strong + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_subtasksDidUpdate) = 1;
      __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater), *(Strong + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater + 24));
      v30 = sub_21D1DD1FC();
      swift_beginAccess();
      *(v30 + 40) |= 1uLL;
      *(v30 + 48) = 0;
      v31._object = 0x800000021DC49D80;
      v31._countAndFlagsBits = 0xD000000000000017;
      TTRDeferredAction.scheduleNextRunLoop(reason:)(v31);
      swift_unknownObjectRelease();
    }

    v56 = v1[22];
    result = v54;
    if (v56)
    {
      v1[22] = 0;
      v32 = *(v19 + 16);
      if (v32)
      {
        v33 = 0;
        while (1)
        {
          if (v33 >= *(v19 + 16))
          {
            __break(1u);
            return result;
          }

          sub_21D305EF0(v19 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v33, v4, type metadata accessor for TTRISubtaskListViewModel.Subtask);
          sub_21D0D8CF0(0, &qword_280D17680);
          v34 = [*&v4[*(v55 + 20)] objectID];
          v35 = sub_21DBFB63C();

          if (v35)
          {
            break;
          }

          ++v33;
          result = sub_21D305F58(v4, type metadata accessor for TTRISubtaskListViewModel.Subtask);
          if (v32 == v33)
          {
            goto LABEL_15;
          }
        }

        v37 = v49;
        sub_21D305FB8(v4, v49);
        v38 = v50;
        sub_21D305FB8(v37, v50);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v39 = sub_21D31581C(v38);
          v40 = v54;
          if (v39)
          {
            v41 = v39;
            v42 = *&v39[qword_280D13278];
            v43 = [v42 window];
            [v43 makeKeyWindow];

            [v42 becomeFirstResponder];
            v44 = [v42 selectedTextRange];
            if (v44)
            {
              v45 = v44;

              swift_unknownObjectRelease();
            }

            else
            {
              v46 = [v42 endOfDocument];
              v47 = [v42 endOfDocument];
              v48 = [v42 textRangeFromPosition:v46 toPosition:v47];

              v40 = v54;
              [v42 setSelectedTextRange_];

              swift_unknownObjectRelease();
            }
          }

          else
          {

            swift_unknownObjectRelease();
          }
        }

        else
        {

          v40 = v54;
        }

        sub_21D305F58(v38, type metadata accessor for TTRISubtaskListViewModel.Subtask);
        v36 = v40;
      }

      else
      {
LABEL_15:

        v36 = v54;
      }

      return sub_21D0CF7E0(v36, &qword_27CE5A6B8);
    }

    else
    {
      sub_21D0CF7E0(v54, &qword_27CE5A6B8);
    }
  }

  return result;
}

uint64_t sub_21D305EF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D305F58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D305FB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRISubtaskListViewModel.Subtask();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21D30601C()
{
  result = qword_27CE5A6C8;
  if (!qword_27CE5A6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5A6C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5A6C8);
  }

  return result;
}

id sub_21D306080(void *a1)
{
  v2 = *(v1 + 176);
  *(v1 + 176) = a1;

  return a1;
}

uint64_t destroy for TTRISubtaskListViewModel()
{
}

uint64_t initializeWithCopy for TTRISubtaskListViewModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRISubtaskListViewModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRISubtaskListViewModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t sub_21D306244(unint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A6D0);
  isUniquelyReferenced_nonNull_native = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v86 = &v83[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v83[-v8];
  v93 = type metadata accessor for TTRISubtaskListViewModel.Subtask();
  v97 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v95 = &v83[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v94 = &v83[-v12];
  MEMORY[0x28223BE20](v13);
  v15 = &v83[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A6D8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v83[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v21 = &v83[-v20];
  v85 = a2;
  sub_21D0FACE0(a2, &v103);
  v22 = a1;
  v23 = *(&v104 + 1);
  v96 = v22;
  if (*(&v104 + 1))
  {
    v24 = v105;
    __swift_project_boxed_opaque_existential_1(&v103, *(&v104 + 1));
    (*(v24 + 112))(v98, v23, v24);
    v25 = v99;
    if (v99)
    {
      v26 = v100;
      __swift_project_boxed_opaque_existential_1(v98, v99);
      v84 = (v26[2])(v25, v26);
      __swift_destroy_boxed_opaque_existential_0(v98);
      __swift_destroy_boxed_opaque_existential_0(&v103);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(&v103);
      sub_21D0CF7E0(v98, &qword_27CE5A6E8);
      v84 = 0;
    }

    v27 = v96;
  }

  else
  {
    sub_21D0CF7E0(&v103, &qword_27CE59DC0);
    v27 = v22;
    v84 = 0;
  }

  if (v27 >> 62)
  {
    goto LABEL_56;
  }

  v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:
  v89 = v4;
  v88 = v18;
  v90 = v21;
  v91 = isUniquelyReferenced_nonNull_native;
  if (!v28)
  {

    isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
LABEL_20:
    v45 = 0;
    v46 = v91;
    v91 += 6;
    *&v92 = v46 + 7;
    v9 = MEMORY[0x277D84F98];
    v47 = *(isUniquelyReferenced_nonNull_native + 16);
    v15 = MEMORY[0x277D84F98];
    for (i = v47; ; v47 = i)
    {
      v96 = v9;
      if (v45 == v47)
      {
        v49 = 1;
        v9 = v47;
      }

      else
      {
        if ((v45 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

        if (v45 >= *(isUniquelyReferenced_nonNull_native + 16))
        {
          goto LABEL_53;
        }

        v9 = (v45 + 1);
        v50 = isUniquelyReferenced_nonNull_native + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v45;
        v51 = v4[12];
        v52 = v86;
        *v86 = v45;
        sub_21D306D24(v50, v52 + v51);
        sub_21D0D523C(v52, v18, &qword_27CE5A6D0);
        v49 = 0;
      }

      (*v92)(v18, v49, 1, v4);
      sub_21D0D523C(v18, v21, &qword_27CE5A6D8);
      if ((*v91)(v21, 1, v4) == 1)
      {
        sub_21D0CF7E0(v85, &qword_27CE59DC0);
        return v84 & 1;
      }

      v53 = isUniquelyReferenced_nonNull_native;
      v93 = *v21;
      v54 = v94;
      sub_21D305FB8(v21 + v4[12], v94);
      v4 = *&v54[*(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 20)];
      v55 = [v4 stringRepresentation];
      v56 = sub_21DBFA16C();
      v21 = v57;

      sub_21D306D24(v54, v95);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v98[0] = v15;
      v59 = sub_21D0CEF70(v56, v21);
      v60 = v15[2];
      v61 = (v58 & 1) == 0;
      v27 = v60 + v61;
      if (__OFADD__(v60, v61))
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        v82 = v27;
        v28 = sub_21DBFBD7C();
        v27 = v82;
        goto LABEL_9;
      }

      v18 = v58;
      if (v15[3] >= v27)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21D22202C();
        }
      }

      else
      {
        sub_21D218684(v27, isUniquelyReferenced_nonNull_native);
        v62 = sub_21D0CEF70(v56, v21);
        if ((v18 & 1) != (v63 & 1))
        {
          goto LABEL_58;
        }

        v59 = v62;
      }

      isUniquelyReferenced_nonNull_native = v53;
      v45 = v9;
      if (v18)
      {

        v15 = v98[0];
        sub_21D306D88(v95, *(v98[0] + 56) + *(v97 + 72) * v59);
        v9 = v96;
      }

      else
      {
        v15 = v98[0];
        *(v98[0] + 8 * (v59 >> 6) + 64) |= 1 << v59;
        v64 = (v15[6] + 16 * v59);
        *v64 = v56;
        v64[1] = v21;
        v27 = sub_21D305FB8(v95, v15[7] + *(v97 + 72) * v59);
        v65 = v15[2];
        v66 = __OFADD__(v65, 1);
        v67 = v65 + 1;
        v9 = v96;
        if (v66)
        {
          goto LABEL_54;
        }

        v15[2] = v67;
      }

      v68 = [v4 stringRepresentation];
      v4 = sub_21DBFA16C();
      v70 = v69;

      v18 = swift_isUniquelyReferenced_nonNull_native();
      v98[0] = v9;
      v27 = sub_21D0CEF70(v4, v70);
      v72 = v9[2];
      v73 = (v71 & 1) == 0;
      v66 = __OFADD__(v72, v73);
      v74 = v72 + v73;
      v21 = v90;
      if (v66)
      {
        goto LABEL_51;
      }

      v75 = v71;
      if (v9[3] < v74)
      {
        break;
      }

      if (v18)
      {
        goto LABEL_44;
      }

      v80 = v27;
      sub_21D220548();
      v27 = v80;
      v18 = v93;
      if (v75)
      {
LABEL_21:
        v48 = v27;

        v9 = v98[0];
        *(*(v98[0] + 56) + 8 * v48) = v18;
        goto LABEL_22;
      }

LABEL_45:
      v9 = v98[0];
      *(v98[0] + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v77 = (v9[6] + 16 * v27);
      *v77 = v4;
      v77[1] = v70;
      *(v9[7] + 8 * v27) = v18;
      v78 = v9[2];
      v66 = __OFADD__(v78, 1);
      v79 = v78 + 1;
      if (v66)
      {
        goto LABEL_55;
      }

      v9[2] = v79;
LABEL_22:
      v27 = sub_21D30D8FC(v94, type metadata accessor for TTRISubtaskListViewModel.Subtask);
      v4 = v89;
      v18 = v88;
    }

    sub_21D215CC8(v74, v18);
    v27 = sub_21D0CEF70(v4, v70);
    if ((v75 & 1) != (v76 & 1))
    {
      goto LABEL_58;
    }

LABEL_44:
    v18 = v93;
    if (v75)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

  v29 = v27;
  v102 = MEMORY[0x277D84F90];
  sub_21D18EDC8(0, v28 & ~(v28 >> 63), 0);
  if ((v28 & 0x8000000000000000) == 0)
  {
    v30 = 0;
    isUniquelyReferenced_nonNull_native = v102;
    v31 = v29;
    v32 = v29 & 0xC000000000000001;
    v92 = xmmword_21DC08D00;
    v33 = v28;
    do
    {
      v34 = isUniquelyReferenced_nonNull_native;
      if (v32)
      {
        v35 = MEMORY[0x223D44740](v30, v31);
      }

      else
      {
        v35 = v31[v30 + 4];
      }

      v36 = v35;
      v37 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      (*(*(v37 - 8) + 56))(v9, 1, 1, v37);
      v99 = sub_21D306CD8();
      v98[0] = v36;
      v100 = &protocol witness table for REMReminderChangeItem;
      v101 = 0;
      v105 = 0;
      v103 = 0u;
      v104 = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A6E0);
      v38 = *(type metadata accessor for TTRRemindersListViewModel.Reminder.Override(0) - 8);
      v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      v40 = swift_allocObject();
      *(v40 + 16) = v92;
      v41 = v40 + v39;
      *v41 = 0;
      *(v41 + 8) = 0;
      *(v41 + 16) = 0;
      swift_storeEnumTagMultiPayload();
      v42 = v36;
      TTRRemindersListViewModel.Reminder.init(item:reminderAndList:precomputedProperties:overrides:)(v9, v98, &v103, v40, v15);
      *(v15 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 164)) = 0;
      *(v15 + *(v93 + 20)) = v42;
      isUniquelyReferenced_nonNull_native = v34;
      v102 = v34;
      v44 = *(v34 + 16);
      v43 = *(v34 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_21D18EDC8(v43 > 1, v44 + 1, 1);
        isUniquelyReferenced_nonNull_native = v102;
      }

      ++v30;
      *(isUniquelyReferenced_nonNull_native + 16) = v44 + 1;
      sub_21D305FB8(v15, isUniquelyReferenced_nonNull_native + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v44);
      v31 = v96;
    }

    while (v33 != v30);

    v4 = v89;
    v18 = v88;
    v21 = v90;
    goto LABEL_20;
  }

  __break(1u);
LABEL_58:
  result = sub_21DBFC70C();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for TTRISubtaskListViewModel.Subtask()
{
  result = qword_27CE5A6F8;
  if (!qword_27CE5A6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21D306CD8()
{
  result = qword_280D17770;
  if (!qword_280D17770)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D17770);
  }

  return result;
}

uint64_t sub_21D306D24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRISubtaskListViewModel.Subtask();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D306D88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRISubtaskListViewModel.Subtask();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void **sub_21D306DEC(void **a1, void **a2, uint64_t a3)
{
  v3 = a2;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    v12 = &v11[(v5 + 16) & ~v5];

    return v12;
  }

  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v268 = v3;
  v269 = a1;
  v267 = a3;
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v25 = *v3;
        *a1 = *v3;
        v16 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v18 = *(v17 - 8);
        v26 = *(v18 + 48);
        v27 = v25;
        if (v26(v3 + v16, 1, v17))
        {
          goto LABEL_28;
        }

        v39 = swift_getEnumCaseMultiPayload();
        if (v39 > 4)
        {
          if (v39 <= 7)
          {
            if (v39 == 5 || v39 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v39 != 8 && v39 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v39 > 2)
        {
          goto LABEL_114;
        }

        if (v39 == 1)
        {
          goto LABEL_113;
        }

        if (v39 != 2)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v15 = *v3;
        *a1 = *v3;
        v16 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v18 = *(v17 - 8);
        v19 = *(v18 + 48);
        v20 = v15;
        if (v19(v3 + v16, 1, v17))
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

      goto LABEL_114;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_35;
      }

      v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v14 = swift_getEnumCaseMultiPayload();
      if (v14 <= 4)
      {
        if (v14 > 2)
        {
LABEL_65:
          v52 = sub_21DBF563C();
          (*(*(v52 - 8) + 16))(a1, v3, v52);
          swift_storeEnumTagMultiPayload();
          goto LABEL_92;
        }

        if (v14 != 1)
        {
          if (v14 == 2)
          {
            goto LABEL_65;
          }

          goto LABEL_91;
        }

LABEL_68:
        v53 = *v3;
        *a1 = *v3;
        v54 = v53;
        swift_storeEnumTagMultiPayload();
        goto LABEL_92;
      }

      if (v14 > 7)
      {
        if (v14 == 8 || v14 == 9)
        {
          goto LABEL_68;
        }
      }

      else if (v14 == 5 || v14 == 6)
      {
        goto LABEL_65;
      }

LABEL_91:
      memcpy(a1, v3, *(*(v13 - 8) + 64));
LABEL_92:
      v58 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v59 = v58[5];
      v60 = a1 + v59;
      v61 = v3 + v59;
      v62 = *(v3 + v59 + 8);
      if (v62)
      {
        *v60 = *v61;
        *(v60 + 1) = v62;
        v64 = *(v61 + 2);
        v63 = *(v61 + 3);
        v65 = *(v61 + 4);
        v66 = *(v61 + 5);
        v67 = *(v61 + 6);
        v68 = *(v61 + 7);
        v69 = v61[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v64, v63, v65, v66, v67, v68, v69);
        *(v60 + 2) = v64;
        *(v60 + 3) = v63;
        *(v60 + 4) = v65;
        *(v60 + 5) = v66;
        *(v60 + 6) = v67;
        *(v60 + 7) = v68;
        v60[64] = v69;
        *(v60 + 65) = *(v61 + 65);
        v70 = v61[120];
        if (v70 == 255)
        {
          *(v60 + 72) = *(v61 + 72);
          *(v60 + 88) = *(v61 + 88);
          *(v60 + 104) = *(v61 + 104);
          v60[120] = v61[120];
        }

        else
        {
          v71 = *(v61 + 9);
          v72 = *(v61 + 10);
          v73 = *(v61 + 11);
          v74 = *(v61 + 12);
          v75 = *(v61 + 13);
          v76 = *(v61 + 14);
          v77 = v70 & 1;
          sub_21D0FB960(v71, v72, v73, v74, v75, v76, v70 & 1);
          *(v60 + 9) = v71;
          *(v60 + 10) = v72;
          *(v60 + 11) = v73;
          *(v60 + 12) = v74;
          *(v60 + 13) = v75;
          *(v60 + 14) = v76;
          v60[120] = v77;
        }

        v60[121] = v61[121];
        v3 = v268;
        a1 = v269;
        goto LABEL_98;
      }

LABEL_95:
      v78 = *(v61 + 5);
      *(v60 + 4) = *(v61 + 4);
      *(v60 + 5) = v78;
      *(v60 + 6) = *(v61 + 6);
      *(v60 + 106) = *(v61 + 106);
      v79 = *(v61 + 1);
      *v60 = *v61;
      *(v60 + 1) = v79;
      v80 = *(v61 + 3);
      *(v60 + 2) = *(v61 + 2);
      *(v60 + 3) = v80;
LABEL_98:
      *(a1 + v58[6]) = *(v3 + v58[6]);
      *(a1 + v58[7]) = *(v3 + v58[7]);
      *(a1 + v58[8]) = *(v3 + v58[8]);
      *(a1 + v58[9]) = *(v3 + v58[9]);
      *(a1 + v58[10]) = *(v3 + v58[10]);
      v81 = v58[11];
      v82 = *(v3 + v81);
      *(a1 + v81) = v82;
      v83 = v82;
      goto LABEL_129;
    }

    v23 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v24 = swift_getEnumCaseMultiPayload();
    if (v24 <= 4)
    {
      if (v24 > 2)
      {
LABEL_69:
        v55 = sub_21DBF563C();
        (*(*(v55 - 8) + 16))(a1, v3, v55);
        swift_storeEnumTagMultiPayload();
        goto LABEL_100;
      }

      if (v24 != 1)
      {
        if (v24 == 2)
        {
          goto LABEL_69;
        }

        goto LABEL_99;
      }

LABEL_72:
      v56 = *v3;
      *a1 = *v3;
      v57 = v56;
      swift_storeEnumTagMultiPayload();
      goto LABEL_100;
    }

    if (v24 > 7)
    {
      if (v24 == 8 || v24 == 9)
      {
        goto LABEL_72;
      }
    }

    else if (v24 == 5 || v24 == 6)
    {
      goto LABEL_69;
    }

LABEL_99:
    memcpy(a1, v3, *(*(v23 - 8) + 64));
LABEL_100:
    v58 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v84 = v58[5];
    v60 = a1 + v84;
    v61 = v3 + v84;
    v85 = *(v3 + v84 + 8);
    if (v85)
    {
      *v60 = *v61;
      *(v60 + 1) = v85;
      v86 = *(v61 + 2);
      v87 = *(v61 + 3);
      v88 = *(v61 + 4);
      v89 = *(v61 + 5);
      v91 = *(v61 + 6);
      v90 = *(v61 + 7);
      v92 = v61[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v86, v87, v88, v89, v91, v90, v92);
      *(v60 + 2) = v86;
      *(v60 + 3) = v87;
      *(v60 + 4) = v88;
      *(v60 + 5) = v89;
      *(v60 + 6) = v91;
      *(v60 + 7) = v90;
      v60[64] = v92;
      *(v60 + 65) = *(v61 + 65);
      v93 = v61[120];
      if (v93 == 255)
      {
        *(v60 + 72) = *(v61 + 72);
        *(v60 + 88) = *(v61 + 88);
        *(v60 + 104) = *(v61 + 104);
        v60[120] = v61[120];
      }

      else
      {
        v94 = *(v61 + 9);
        v95 = *(v61 + 10);
        v96 = *(v61 + 11);
        v97 = *(v61 + 12);
        v98 = *(v61 + 13);
        v99 = *(v61 + 14);
        v100 = v93 & 1;
        sub_21D0FB960(v94, v95, v96, v97, v98, v99, v93 & 1);
        *(v60 + 9) = v94;
        *(v60 + 10) = v95;
        *(v60 + 11) = v96;
        *(v60 + 12) = v97;
        *(v60 + 13) = v98;
        *(v60 + 14) = v99;
        v60[120] = v100;
      }

      v60[121] = v61[121];
      v3 = v268;
      a1 = v269;
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
      v21 = v3[2];
      a1[2] = v21;
      v22 = v21;
      goto LABEL_129;
    }

    v32 = *v3;
    *a1 = *v3;
    v16 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v18 = *(v17 - 8);
    v33 = *(v18 + 48);
    v34 = v32;
    if (v33(v3 + v16, 1, v17))
    {
LABEL_28:
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(a1 + v16, v3 + v16, *(*(v28 - 8) + 64));
      goto LABEL_129;
    }

    v49 = swift_getEnumCaseMultiPayload();
    if (v49 > 4)
    {
      if (v49 <= 7)
      {
        if (v49 == 5 || v49 == 6)
        {
          goto LABEL_114;
        }

        goto LABEL_127;
      }

      if (v49 != 8 && v49 != 9)
      {
        goto LABEL_127;
      }

LABEL_113:
      v101 = *(v3 + v16);
      *(a1 + v16) = v101;
      v102 = v101;
      swift_storeEnumTagMultiPayload();
LABEL_128:
      (*(v18 + 56))(a1 + v16, 0, 1, v17);
      goto LABEL_129;
    }

    if (v49 <= 2)
    {
      if (v49 != 1)
      {
        if (v49 == 2)
        {
          goto LABEL_114;
        }

LABEL_127:
        memcpy(a1 + v16, v3 + v16, *(v18 + 64));
        goto LABEL_128;
      }

      goto LABEL_113;
    }

LABEL_114:
    v103 = sub_21DBF563C();
    (*(*(v103 - 8) + 16))(a1 + v16, v3 + v16, v103);
    swift_storeEnumTagMultiPayload();
    goto LABEL_128;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v29 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(v3, 1, v29))
    {
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
      memcpy(a1, v3, *(*(v31 - 8) + 64));
    }

    else
    {
      *a1 = *v3;
      v40 = *(v29 + 20);
      v41 = sub_21DBF6C1C();
      v42 = *(*(v41 - 8) + 16);
      sub_21DBF8E0C();
      v42(a1 + v40, v3 + v40, v41);
      (*(v30 + 56))(a1, 0, 1, v29);
    }

    v43 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
    v44 = (a1 + v43);
    v45 = (v3 + v43);
    v46 = v45[1];
    if (v46)
    {
      *v44 = *v45;
      v44[1] = v46;
      v47 = v45[2];
      v44[2] = v47;
      sub_21DBF8E0C();
      v48 = v47;
    }

    else
    {
      *v44 = *v45;
      v44[2] = v45[2];
    }

    goto LABEL_129;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v35 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v3, 1, v35))
    {
      v37 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(a1, v3, *(*(v37 - 8) + 64));
    }

    else
    {
      v50 = sub_21DBF563C();
      (*(*(v50 - 8) + 16))(a1, v3, v50);
      *(a1 + *(v35 + 20)) = *(v3 + *(v35 + 20));
      (*(v36 + 56))(a1, 0, 1, v35);
    }

    v51 = type metadata accessor for TTRTemplatePublicLinkData(0);
    *(a1 + *(v51 + 20)) = *(v3 + *(v51 + 20));
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
  v104 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v105 = v104[5];
  v262 = *(v3 + v105);
  *(a1 + v105) = v262;
  v106 = v104[6];
  v107 = a1 + v106;
  v108 = v3 + v106;
  *v107 = *v108;
  v107[1] = v108[1];
  v107[2] = v108[2];
  v109 = *(v108 + 2);
  *(v107 + 1) = *(v108 + 1);
  *(v107 + 2) = v109;
  v107[24] = v108[24];
  v107[25] = v108[25];
  v110 = v104[7];
  v111 = *(v3 + v110);
  *(a1 + v110) = v111;
  *(a1 + v104[8]) = *(v3 + v104[8]);
  v112 = v104[9];
  v113 = (a1 + v112);
  v114 = (v3 + v112);
  v115 = v3;
  v116 = v114[1];
  *v113 = *v114;
  v113[1] = v116;
  v117 = v104[10];
  v118 = (a1 + v117);
  v119 = (v115 + v117);
  v120 = v119[1];
  *v118 = *v119;
  v118[1] = v120;
  v121 = v104[11];
  __dst = (a1 + v121);
  v122 = (v115 + v121);
  v123 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  v124 = *(v123 - 8);
  v125 = *(v124 + 48);
  v126 = v262;
  sub_21DBF8E0C();
  v127 = v111;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v125(v122, 1, v123))
  {
    v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0);
    memcpy(__dst, v122, *(*(v128 - 8) + 64));
    v129 = v268;
  }

  else
  {
    v263 = v124;
    v130 = v122[1];
    *__dst = *v122;
    __dst[1] = v130;
    v131 = v122[3];
    __dst[2] = v122[2];
    __dst[3] = v131;
    v132 = *(v123 + 24);
    v133 = v123;
    v134 = sub_21DBF563C();
    v135 = *(*(v134 - 8) + 16);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v135(__dst + v132, v122 + v132, v134);
    v136 = v133[7];
    v137 = sub_21DBF5C4C();
    v138 = *(v137 - 8);
    if ((*(v138 + 48))(v122 + v136, 1, v137))
    {
      v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
      memcpy(__dst + v136, v122 + v136, *(*(v139 - 8) + 64));
    }

    else
    {
      (*(v138 + 16))(__dst + v136, v122 + v136, v137);
      (*(v138 + 56))(__dst + v136, 0, 1, v137);
    }

    v129 = v268;
    *(__dst + v133[8]) = *(v122 + v133[8]);
    *(__dst + v133[9]) = *(v122 + v133[9]);
    *(__dst + v133[10]) = *(v122 + v133[10]);
    (*(v263 + 56))(__dst, 0, 1, v133);
  }

  v140 = v104[12];
  v141 = (v269 + v140);
  v142 = (v129 + v140);
  v143 = v142[1];
  *v141 = *v142;
  v141[1] = v143;
  v144 = v104[13];
  v145 = v269 + v144;
  v146 = v129 + v144;
  v147 = *(v129 + v144 + 24);
  sub_21DBF8E0C();
  if (v147)
  {
    v148 = *v146;
    v149 = *(v146 + 8);
    *v145 = *v146;
    *(v145 + 1) = v149;
    *(v145 + 2) = *(v146 + 16);
    *(v145 + 3) = v147;
    v150 = *(v146 + 40);
    *(v145 + 4) = *(v146 + 32);
    *(v145 + 5) = v150;
    v145[48] = *(v146 + 48);
    v151 = v148;
    v152 = v149;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v153 = *(v146 + 16);
    *v145 = *v146;
    *(v145 + 1) = v153;
    *(v145 + 2) = *(v146 + 32);
    v145[48] = *(v146 + 48);
  }

  *(v269 + v104[14]) = *(v129 + v104[14]);
  v154 = v104[15];
  v155 = *(v129 + v154);
  *(v269 + v154) = v155;
  *(v269 + v104[16]) = *(v129 + v104[16]);
  *(v269 + v104[17]) = *(v129 + v104[17]);
  *(v269 + v104[18]) = *(v129 + v104[18]);
  *(v269 + v104[19]) = *(v129 + v104[19]);
  v156 = v104[20];
  v157 = *(v129 + v156);
  *(v269 + v156) = v157;
  v158 = v104[21];
  v159 = *(v129 + v158);
  *(v269 + v158) = v159;
  v160 = v104[22];
  v161 = *(v129 + v160);
  *(v269 + v160) = v161;
  v162 = v104[23];
  v163 = v269 + v162;
  v164 = v129 + v162;
  *v163 = *v164;
  v163[8] = *(v164 + 8);
  *(v269 + v104[24]) = *(v129 + v104[24]);
  *(v269 + v104[25]) = *(v129 + v104[25]);
  *(v269 + v104[26]) = *(v129 + v104[26]);
  *(v269 + v104[27]) = *(v129 + v104[27]);
  *(v269 + v104[28]) = *(v129 + v104[28]);
  *(v269 + v104[29]) = *(v129 + v104[29]);
  v165 = v104[30];
  v166 = (v269 + v165);
  v167 = (v129 + v165);
  v168 = v167[1];
  *v166 = *v167;
  v166[1] = v168;
  v169 = v104[31];
  v170 = v269 + v169;
  v171 = v129 + v169;
  v172 = v129;
  v173 = *(v171 + 8);
  *v170 = *v171;
  *(v170 + 1) = v173;
  v170[16] = *(v171 + 16);
  v174 = v104[32];
  v175 = (v269 + v174);
  v176 = (v172 + v174);
  v177 = *(v172 + v174 + 8);
  v178 = v155;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v179 = v157;
  v180 = v159;
  v181 = v161;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v177)
  {
    *v175 = *v176;
    v175[1] = v177;
    v182 = v176[2];
    v175[2] = v182;
    sub_21DBF8E0C();
    v183 = v182;
  }

  else
  {
    *v175 = *v176;
    v175[2] = v176[2];
  }

  v184 = v268;
  v12 = v269;
  *(v269 + v104[33]) = *(v268 + v104[33]);
  v185 = v104[34];
  v186 = v269 + v185;
  v187 = v268 + v185;
  v188 = *(v268 + v185);
  if (!v188)
  {
    v196 = *(v187 + 11);
    *(v186 + 10) = *(v187 + 10);
    *(v186 + 11) = v196;
    v197 = *(v187 + 13);
    *(v186 + 12) = *(v187 + 12);
    *(v186 + 13) = v197;
    v198 = *(v187 + 7);
    *(v186 + 6) = *(v187 + 6);
    *(v186 + 7) = v198;
    v199 = *(v187 + 9);
    *(v186 + 8) = *(v187 + 8);
    *(v186 + 9) = v199;
    v200 = *(v187 + 3);
    *(v186 + 2) = *(v187 + 2);
    *(v186 + 3) = v200;
    v201 = *(v187 + 5);
    *(v186 + 4) = *(v187 + 4);
    *(v186 + 5) = v201;
    v202 = *(v187 + 1);
    *v186 = *v187;
    *(v186 + 1) = v202;
LABEL_150:
    *(v186 + 28) = *(v187 + 28);
    goto LABEL_151;
  }

  if (v188 != 1)
  {
    v203 = *(v187 + 2);
    v264 = *(v187 + 1);
    *v186 = v188;
    *(v186 + 1) = v264;
    v205 = *(v187 + 3);
    v204 = *(v187 + 4);
    *(v186 + 2) = v203;
    *(v186 + 3) = v205;
    v207 = *(v187 + 5);
    v206 = *(v187 + 6);
    *(v186 + 4) = v204;
    *(v186 + 5) = v207;
    v209 = *(v187 + 7);
    v208 = *(v187 + 8);
    *(v186 + 6) = v206;
    *(v186 + 7) = v209;
    v210 = *(v187 + 9);
    *(v186 + 8) = v208;
    *(v186 + 9) = v210;
    __dsta = *(v187 + 14);
    v211 = *(v187 + 11);
    *(v186 + 10) = *(v187 + 10);
    *(v186 + 11) = v211;
    v186[96] = v187[96];
    v212 = *(v187 + 13);
    *(v186 + 13) = v212;
    v213 = v188;
    v214 = v264;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v215 = v212;
    if (__dsta)
    {
      v217 = *(v187 + 15);
      v216 = *(v187 + 16);
      *(v186 + 14) = __dsta;
      *(v186 + 15) = v217;
      v219 = *(v187 + 17);
      v218 = *(v187 + 18);
      *(v186 + 16) = v216;
      *(v186 + 17) = v219;
      v221 = *(v187 + 19);
      v220 = *(v187 + 20);
      *(v186 + 18) = v218;
      *(v186 + 19) = v221;
      v223 = *(v187 + 21);
      v222 = *(v187 + 22);
      *(v186 + 20) = v220;
      *(v186 + 21) = v223;
      v225 = *(v187 + 23);
      v224 = *(v187 + 24);
      *(v186 + 22) = v222;
      *(v186 + 23) = v225;
      v226 = *(v187 + 25);
      *(v186 + 24) = v224;
      *(v186 + 25) = v226;
      v186[208] = v187[208];
      v227 = *(v187 + 27);
      *(v186 + 27) = v227;
      v228 = __dsta;
      v229 = v217;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v230 = v227;
    }

    else
    {
      v231 = *(v187 + 12);
      *(v186 + 11) = *(v187 + 11);
      *(v186 + 12) = v231;
      *(v186 + 13) = *(v187 + 13);
      v232 = *(v187 + 8);
      *(v186 + 7) = *(v187 + 7);
      *(v186 + 8) = v232;
      v233 = *(v187 + 10);
      *(v186 + 9) = *(v187 + 9);
      *(v186 + 10) = v233;
    }

    v184 = v268;
    v12 = v269;
    goto LABEL_150;
  }

  v189 = *(v187 + 13);
  *(v186 + 12) = *(v187 + 12);
  *(v186 + 13) = v189;
  *(v186 + 28) = *(v187 + 28);
  v190 = *(v187 + 9);
  *(v186 + 8) = *(v187 + 8);
  *(v186 + 9) = v190;
  v191 = *(v187 + 11);
  *(v186 + 10) = *(v187 + 10);
  *(v186 + 11) = v191;
  v192 = *(v187 + 5);
  *(v186 + 4) = *(v187 + 4);
  *(v186 + 5) = v192;
  v193 = *(v187 + 7);
  *(v186 + 6) = *(v187 + 6);
  *(v186 + 7) = v193;
  v194 = *(v187 + 1);
  *v186 = *v187;
  *(v186 + 1) = v194;
  v195 = *(v187 + 3);
  *(v186 + 2) = *(v187 + 2);
  *(v186 + 3) = v195;
LABEL_151:
  v234 = v104[35];
  v235 = v12 + v234;
  v236 = v184 + v234;
  *v235 = *v236;
  v237 = *(v236 + 16);
  *(v235 + 8) = *(v236 + 8);
  *(v235 + 16) = v237;
  *(v12 + v104[36]) = *(v184 + v104[36]);
  v238 = v104[37];
  v239 = (v12 + v238);
  v240 = (v184 + v238);
  v241 = *(v184 + v238 + 8);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v241 > 1)
  {
    *v239 = *v240;
    v239[1] = v241;
    v243 = v240[3];
    v239[2] = v240[2];
    v239[3] = v243;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v242 = *(v240 + 1);
    *v239 = *v240;
    *(v239 + 1) = v242;
  }

  v244 = v104[38];
  v245 = (v12 + v244);
  v246 = v184 + v244;
  v247 = *(v184 + v244);
  if (v247)
  {
    v248 = *(v246 + 8);
    v249 = *(v246 + 16);
    *v245 = v247;
    v245[1] = v248;
    v245[2] = v249;
    v250 = v247;
    sub_21DBF8E0C();
  }

  else
  {
    *v245 = *v246;
    v245[2] = *(v246 + 16);
  }

  v251 = v104[39];
  v252 = (v12 + v251);
  v253 = (v184 + v251);
  v254 = v253[1];
  *v252 = *v253;
  v252[1] = v254;
  *(v12 + v104[40]) = *(v184 + v104[40]);
  *(v12 + v104[41]) = *(v184 + v104[41]);
  v255 = v104[42];
  v256 = *(v184 + v255);
  *(v12 + v255) = v256;
  *(v12 + v104[43]) = *(v184 + v104[43]);
  *(v12 + v104[45]) = *(v184 + v104[45]);
  v257 = *(v267 + 20);
  v258 = *(v184 + v257);
  *(v12 + v257) = v258;
  sub_21DBF8E0C();
  v259 = v256;
  v260 = v258;
  return v12;
}

void sub_21D308C20(id *a1, uint64_t a2)
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
      if (v10 > 7)
      {
        if (v10 != 8 && v10 != 9)
        {
          goto LABEL_46;
        }

        goto LABEL_65;
      }

      if (v10 != 5 && v10 != 6)
      {
        goto LABEL_46;
      }
    }

    else if (v10 <= 2)
    {
      if (v10 != 1)
      {
        if (v10 != 2)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }

LABEL_65:

      goto LABEL_46;
    }

LABEL_45:
    v21 = sub_21DBF563C();
    (*(*(v21 - 8) + 8))(a1 + v8, v21);
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
  v22 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);

  v23 = a1 + v22[11];
  v24 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  if (!(*(*(v24 - 8) + 48))(v23, 1, v24))
  {

    v25 = *(v24 + 24);
    v26 = sub_21DBF563C();
    (*(*(v26 - 8) + 8))(&v23[v25], v26);
    v27 = *(v24 + 28);
    v28 = sub_21DBF5C4C();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(&v23[v27], 1, v28))
    {
      (*(v29 + 8))(&v23[v27], v28);
    }
  }

  v30 = (a1 + v22[13]);
  if (v30[3])
  {
  }

  v31 = (a1 + v22[32]);
  if (v31[1])
  {
  }

  v32 = (a1 + v22[34]);
  if (*v32 >= 2)
  {

    v33 = v32[14];
    if (v33)
    {
    }
  }

  if (*(a1 + v22[37] + 8) >= 2)
  {
  }

  v34 = (a1 + v22[38]);
  if (*v34)
  {
  }

  v35 = *(a1 + *(a2 + 20));
}

void **sub_21D30939C(void **a1, void **a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v266 = a2;
  v267 = a1;
  v265 = a3;
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
        *v57 = *v58;
        *(v57 + 1) = v59;
        v61 = *(v58 + 2);
        v60 = *(v58 + 3);
        v62 = *(v58 + 4);
        v63 = *(v58 + 5);
        v64 = *(v58 + 6);
        v65 = *(v58 + 7);
        v66 = v58[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v61, v60, v62, v63, v64, v65, v66);
        *(v57 + 2) = v61;
        *(v57 + 3) = v60;
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

        v57[121] = v58[121];
        a2 = v266;
        a1 = v267;
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

      v57[121] = v58[121];
      a2 = v266;
      a1 = v267;
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
  v101 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v102 = v101[5];
  v260 = *(a2 + v102);
  *(a1 + v102) = v260;
  v103 = v101[6];
  v104 = a1 + v103;
  v105 = a2 + v103;
  *v104 = *v105;
  v104[1] = v105[1];
  v104[2] = v105[2];
  v106 = *(v105 + 2);
  *(v104 + 1) = *(v105 + 1);
  *(v104 + 2) = v106;
  v104[24] = v105[24];
  v104[25] = v105[25];
  v107 = v101[7];
  v108 = *(a2 + v107);
  *(a1 + v107) = v108;
  *(a1 + v101[8]) = *(a2 + v101[8]);
  v109 = v101[9];
  v110 = (a1 + v109);
  v111 = (a2 + v109);
  v112 = a2;
  v113 = v111[1];
  *v110 = *v111;
  v110[1] = v113;
  v114 = v101[10];
  v115 = (a1 + v114);
  v116 = (v112 + v114);
  v117 = v116[1];
  *v115 = *v116;
  v115[1] = v117;
  v118 = v101[11];
  __dst = (a1 + v118);
  v119 = (v112 + v118);
  v120 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  v121 = *(v120 - 8);
  v122 = *(v121 + 48);
  v123 = v260;
  sub_21DBF8E0C();
  v124 = v108;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v122(v119, 1, v120))
  {
    v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0);
    memcpy(__dst, v119, *(*(v125 - 8) + 64));
    v126 = v266;
  }

  else
  {
    v261 = v121;
    v127 = v119[1];
    *__dst = *v119;
    __dst[1] = v127;
    v128 = v119[3];
    __dst[2] = v119[2];
    __dst[3] = v128;
    v129 = *(v120 + 24);
    v130 = v120;
    v131 = sub_21DBF563C();
    v132 = *(*(v131 - 8) + 16);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v132(__dst + v129, v119 + v129, v131);
    v133 = v130[7];
    v134 = sub_21DBF5C4C();
    v135 = *(v134 - 8);
    if ((*(v135 + 48))(v119 + v133, 1, v134))
    {
      v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
      memcpy(__dst + v133, v119 + v133, *(*(v136 - 8) + 64));
    }

    else
    {
      (*(v135 + 16))(__dst + v133, v119 + v133, v134);
      (*(v135 + 56))(__dst + v133, 0, 1, v134);
    }

    v126 = v266;
    *(__dst + v130[8]) = *(v119 + v130[8]);
    *(__dst + v130[9]) = *(v119 + v130[9]);
    *(__dst + v130[10]) = *(v119 + v130[10]);
    (*(v261 + 56))(__dst, 0, 1, v130);
  }

  v137 = v101[12];
  v138 = (v267 + v137);
  v139 = (v126 + v137);
  v140 = v139[1];
  *v138 = *v139;
  v138[1] = v140;
  v141 = v101[13];
  v142 = v267 + v141;
  v143 = v126 + v141;
  v144 = *(v126 + v141 + 24);
  sub_21DBF8E0C();
  if (v144)
  {
    v145 = *v143;
    v146 = *(v143 + 8);
    *v142 = *v143;
    *(v142 + 1) = v146;
    *(v142 + 2) = *(v143 + 16);
    *(v142 + 3) = v144;
    v147 = *(v143 + 40);
    *(v142 + 4) = *(v143 + 32);
    *(v142 + 5) = v147;
    v142[48] = *(v143 + 48);
    v148 = v145;
    v149 = v146;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v150 = *(v143 + 16);
    *v142 = *v143;
    *(v142 + 1) = v150;
    *(v142 + 2) = *(v143 + 32);
    v142[48] = *(v143 + 48);
  }

  *(v267 + v101[14]) = *(v126 + v101[14]);
  v151 = v101[15];
  v152 = *(v126 + v151);
  *(v267 + v151) = v152;
  *(v267 + v101[16]) = *(v126 + v101[16]);
  *(v267 + v101[17]) = *(v126 + v101[17]);
  *(v267 + v101[18]) = *(v126 + v101[18]);
  *(v267 + v101[19]) = *(v126 + v101[19]);
  v153 = v101[20];
  v154 = *(v126 + v153);
  *(v267 + v153) = v154;
  v155 = v101[21];
  v156 = *(v126 + v155);
  *(v267 + v155) = v156;
  v157 = v101[22];
  v158 = *(v126 + v157);
  *(v267 + v157) = v158;
  v159 = v101[23];
  v160 = v267 + v159;
  v161 = v126 + v159;
  *v160 = *v161;
  v160[8] = *(v161 + 8);
  *(v267 + v101[24]) = *(v126 + v101[24]);
  *(v267 + v101[25]) = *(v126 + v101[25]);
  *(v267 + v101[26]) = *(v126 + v101[26]);
  *(v267 + v101[27]) = *(v126 + v101[27]);
  *(v267 + v101[28]) = *(v126 + v101[28]);
  *(v267 + v101[29]) = *(v126 + v101[29]);
  v162 = v101[30];
  v163 = (v267 + v162);
  v164 = (v126 + v162);
  v165 = v164[1];
  *v163 = *v164;
  v163[1] = v165;
  v166 = v101[31];
  v167 = v267 + v166;
  v168 = v126 + v166;
  v169 = v126;
  v170 = *(v168 + 8);
  *v167 = *v168;
  *(v167 + 1) = v170;
  v167[16] = *(v168 + 16);
  v171 = v101[32];
  v172 = (v267 + v171);
  v173 = (v169 + v171);
  v174 = *(v169 + v171 + 8);
  v175 = v152;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v176 = v154;
  v177 = v156;
  v178 = v158;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v174)
  {
    *v172 = *v173;
    v172[1] = v174;
    v179 = v173[2];
    v172[2] = v179;
    sub_21DBF8E0C();
    v180 = v179;
  }

  else
  {
    *v172 = *v173;
    v172[2] = v173[2];
  }

  v182 = v266;
  v181 = v267;
  *(v267 + v101[33]) = *(v266 + v101[33]);
  v183 = v101[34];
  v184 = v267 + v183;
  v185 = v266 + v183;
  v186 = *(v266 + v183);
  if (v186)
  {
    if (v186 == 1)
    {
      v187 = *(v185 + 13);
      *(v184 + 12) = *(v185 + 12);
      *(v184 + 13) = v187;
      *(v184 + 28) = *(v185 + 28);
      v188 = *(v185 + 9);
      *(v184 + 8) = *(v185 + 8);
      *(v184 + 9) = v188;
      v189 = *(v185 + 11);
      *(v184 + 10) = *(v185 + 10);
      *(v184 + 11) = v189;
      v190 = *(v185 + 5);
      *(v184 + 4) = *(v185 + 4);
      *(v184 + 5) = v190;
      v191 = *(v185 + 7);
      *(v184 + 6) = *(v185 + 6);
      *(v184 + 7) = v191;
      v192 = *(v185 + 1);
      *v184 = *v185;
      *(v184 + 1) = v192;
      v193 = *(v185 + 3);
      *(v184 + 2) = *(v185 + 2);
      *(v184 + 3) = v193;
      goto LABEL_149;
    }

    v201 = *(v185 + 2);
    v262 = *(v185 + 1);
    *v184 = v186;
    *(v184 + 1) = v262;
    v203 = *(v185 + 3);
    v202 = *(v185 + 4);
    *(v184 + 2) = v201;
    *(v184 + 3) = v203;
    v205 = *(v185 + 5);
    v204 = *(v185 + 6);
    *(v184 + 4) = v202;
    *(v184 + 5) = v205;
    v207 = *(v185 + 7);
    v206 = *(v185 + 8);
    *(v184 + 6) = v204;
    *(v184 + 7) = v207;
    v208 = *(v185 + 9);
    *(v184 + 8) = v206;
    *(v184 + 9) = v208;
    __dsta = *(v185 + 14);
    v209 = *(v185 + 11);
    *(v184 + 10) = *(v185 + 10);
    *(v184 + 11) = v209;
    v184[96] = v185[96];
    v210 = *(v185 + 13);
    *(v184 + 13) = v210;
    v211 = v186;
    v212 = v262;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v213 = v210;
    if (__dsta)
    {
      v215 = *(v185 + 15);
      v214 = *(v185 + 16);
      *(v184 + 14) = __dsta;
      *(v184 + 15) = v215;
      v217 = *(v185 + 17);
      v216 = *(v185 + 18);
      *(v184 + 16) = v214;
      *(v184 + 17) = v217;
      v219 = *(v185 + 19);
      v218 = *(v185 + 20);
      *(v184 + 18) = v216;
      *(v184 + 19) = v219;
      v221 = *(v185 + 21);
      v220 = *(v185 + 22);
      *(v184 + 20) = v218;
      *(v184 + 21) = v221;
      v223 = *(v185 + 23);
      v222 = *(v185 + 24);
      *(v184 + 22) = v220;
      *(v184 + 23) = v223;
      v224 = *(v185 + 25);
      *(v184 + 24) = v222;
      *(v184 + 25) = v224;
      v184[208] = v185[208];
      v225 = *(v185 + 27);
      *(v184 + 27) = v225;
      v226 = __dsta;
      v227 = v215;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v228 = v225;
    }

    else
    {
      v229 = *(v185 + 12);
      *(v184 + 11) = *(v185 + 11);
      *(v184 + 12) = v229;
      *(v184 + 13) = *(v185 + 13);
      v230 = *(v185 + 8);
      *(v184 + 7) = *(v185 + 7);
      *(v184 + 8) = v230;
      v231 = *(v185 + 10);
      *(v184 + 9) = *(v185 + 9);
      *(v184 + 10) = v231;
    }

    v182 = v266;
    v181 = v267;
  }

  else
  {
    v194 = *(v185 + 11);
    *(v184 + 10) = *(v185 + 10);
    *(v184 + 11) = v194;
    v195 = *(v185 + 13);
    *(v184 + 12) = *(v185 + 12);
    *(v184 + 13) = v195;
    v196 = *(v185 + 7);
    *(v184 + 6) = *(v185 + 6);
    *(v184 + 7) = v196;
    v197 = *(v185 + 9);
    *(v184 + 8) = *(v185 + 8);
    *(v184 + 9) = v197;
    v198 = *(v185 + 3);
    *(v184 + 2) = *(v185 + 2);
    *(v184 + 3) = v198;
    v199 = *(v185 + 5);
    *(v184 + 4) = *(v185 + 4);
    *(v184 + 5) = v199;
    v200 = *(v185 + 1);
    *v184 = *v185;
    *(v184 + 1) = v200;
  }

  *(v184 + 28) = *(v185 + 28);
LABEL_149:
  v232 = v101[35];
  v233 = v181 + v232;
  v234 = v182 + v232;
  *v233 = *v234;
  v235 = *(v234 + 16);
  *(v233 + 8) = *(v234 + 8);
  *(v233 + 16) = v235;
  *(v181 + v101[36]) = *(v182 + v101[36]);
  v236 = v101[37];
  v237 = (v181 + v236);
  v238 = (v182 + v236);
  v239 = *(v182 + v236 + 8);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v239 > 1)
  {
    *v237 = *v238;
    v237[1] = v239;
    v241 = v238[3];
    v237[2] = v238[2];
    v237[3] = v241;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v240 = *(v238 + 1);
    *v237 = *v238;
    *(v237 + 1) = v240;
  }

  v242 = v101[38];
  v243 = (v181 + v242);
  v244 = v182 + v242;
  v245 = *(v182 + v242);
  if (v245)
  {
    v246 = *(v244 + 8);
    v247 = *(v244 + 16);
    *v243 = v245;
    v243[1] = v246;
    v243[2] = v247;
    v248 = v245;
    sub_21DBF8E0C();
  }

  else
  {
    *v243 = *v244;
    v243[2] = *(v244 + 16);
  }

  v249 = v101[39];
  v250 = (v181 + v249);
  v251 = (v182 + v249);
  v252 = v251[1];
  *v250 = *v251;
  v250[1] = v252;
  *(v181 + v101[40]) = *(v182 + v101[40]);
  *(v181 + v101[41]) = *(v182 + v101[41]);
  v253 = v101[42];
  v254 = *(v182 + v253);
  *(v181 + v253) = v254;
  *(v181 + v101[43]) = *(v182 + v101[43]);
  *(v181 + v101[45]) = *(v182 + v101[45]);
  v255 = *(v265 + 20);
  v256 = *(v182 + v255);
  *(v181 + v255) = v256;
  sub_21DBF8E0C();
  v257 = v254;
  v258 = v256;
  return v181;
}

void *sub_21D30B184(void *a1, void *a2, uint64_t a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    sub_21D30D8FC(a1, type metadata accessor for TTRRemindersListViewModel.Item);
    v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v25 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v26 = *(v25 - 8);
            if ((*(v26 + 48))(v3, 1, v25))
            {
              v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(a1, v3, *(*(v27 - 8) + 64));
            }

            else
            {
              *a1 = *v3;
              v36 = *(v25 + 20);
              v37 = sub_21DBF6C1C();
              v38 = *(*(v37 - 8) + 16);
              sub_21DBF8E0C();
              v38(a1 + v36, a2 + v36, v37);
              v3 = a2;
              (*(v26 + 56))(a1, 0, 1, v25);
            }

            v39 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v40 = (a1 + v39);
            v41 = (v3 + v39);
            if (v41[1])
            {
              *v40 = *v41;
              v40[1] = v41[1];
              v42 = v41[2];
              v40[2] = v42;
              sub_21DBF8E0C();
              v43 = v42;
            }

            else
            {
              v44 = *v41;
              v40[2] = v41[2];
              *v40 = v44;
            }

            goto LABEL_128;
          case 7:
            v31 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v32 = *(v31 - 8);
            if ((*(v32 + 48))(v3, 1, v31))
            {
              v33 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, v3, *(*(v33 - 8) + 64));
            }

            else
            {
              v46 = sub_21DBF563C();
              (*(*(v46 - 8) + 16))(a1, v3, v46);
              *(a1 + *(v31 + 20)) = *(v3 + *(v31 + 20));
              (*(v32 + 56))(a1, 0, 1, v31);
            }

            v47 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v47 + 20)) = *(v3 + *(v47 + 20));
            goto LABEL_128;
          case 8:
            *a1 = *v3;
            v7 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v8 = sub_21DBF8D7C();
            (*(*(v8 - 8) + 16))(a1 + v7, v3 + v7, v8);
LABEL_128:
            swift_storeEnumTagMultiPayload();
            goto LABEL_129;
        }

LABEL_34:
        memcpy(a1, v3, *(*(v5 - 8) + 64));
        goto LABEL_129;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *a1 = *v3;
        *(a1 + 8) = *(v3 + 8);
        *(a1 + 9) = *(v3 + 9);
        *(a1 + 10) = *(v3 + 10);
        v17 = v3[2];
        a1[2] = v17;
        v18 = v17;
        goto LABEL_128;
      }

      v28 = *v3;
      *a1 = *v3;
      v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v14 = *(v13 - 8);
      v29 = *(v14 + 48);
      v30 = v28;
      if (v29(v3 + v12, 1, v13))
      {
LABEL_27:
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v12, v3 + v12, *(*(v24 - 8) + 64));
        goto LABEL_128;
      }

      v45 = swift_getEnumCaseMultiPayload();
      if (v45 > 4)
      {
        if (v45 <= 7)
        {
          if (v45 == 5 || v45 == 6)
          {
            goto LABEL_113;
          }

          goto LABEL_126;
        }

        if (v45 != 8 && v45 != 9)
        {
          goto LABEL_126;
        }

LABEL_112:
        v100 = *(v3 + v12);
        *(a1 + v12) = v100;
        v101 = v100;
        swift_storeEnumTagMultiPayload();
LABEL_127:
        (*(v14 + 56))(a1 + v12, 0, 1, v13);
        goto LABEL_128;
      }

      if (v45 <= 2)
      {
        if (v45 != 1)
        {
          if (v45 == 2)
          {
            goto LABEL_113;
          }

LABEL_126:
          memcpy(a1 + v12, v3 + v12, *(v14 + 64));
          goto LABEL_127;
        }

        goto LABEL_112;
      }

LABEL_113:
      v102 = sub_21DBF563C();
      (*(*(v102 - 8) + 16))(a1 + v12, v3 + v12, v102);
      swift_storeEnumTagMultiPayload();
      goto LABEL_127;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v21 = *v3;
        *a1 = *v3;
        v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v14 = *(v13 - 8);
        v22 = *(v14 + 48);
        v23 = v21;
        if (v22(v3 + v12, 1, v13))
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

      else
      {
        v11 = *v3;
        *a1 = *v3;
        v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v14 = *(v13 - 8);
        v15 = *(v14 + 48);
        v16 = v11;
        if (v15(v3 + v12, 1, v13))
        {
          goto LABEL_27;
        }

        v34 = swift_getEnumCaseMultiPayload();
        if (v34 > 4)
        {
          if (v34 <= 7)
          {
            if (v34 == 5 || v34 == 6)
            {
              goto LABEL_113;
            }

            goto LABEL_126;
          }

          if (v34 != 8 && v34 != 9)
          {
            goto LABEL_126;
          }

          goto LABEL_112;
        }

        if (v34 > 2)
        {
          goto LABEL_113;
        }

        if (v34 == 1)
        {
          goto LABEL_112;
        }

        if (v34 != 2)
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

      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = swift_getEnumCaseMultiPayload();
      if (v10 <= 4)
      {
        if (v10 > 2)
        {
LABEL_64:
          v48 = sub_21DBF563C();
          (*(*(v48 - 8) + 16))(a1, v3, v48);
          swift_storeEnumTagMultiPayload();
          goto LABEL_91;
        }

        if (v10 != 1)
        {
          if (v10 == 2)
          {
            goto LABEL_64;
          }

          goto LABEL_90;
        }

LABEL_67:
        v49 = *v3;
        *a1 = *v3;
        v50 = v49;
        swift_storeEnumTagMultiPayload();
        goto LABEL_91;
      }

      if (v10 > 7)
      {
        if (v10 == 8 || v10 == 9)
        {
          goto LABEL_67;
        }
      }

      else if (v10 == 5 || v10 == 6)
      {
        goto LABEL_64;
      }

LABEL_90:
      memcpy(a1, v3, *(*(v9 - 8) + 64));
LABEL_91:
      v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v55 = v54[5];
      v56 = a1 + v55;
      v57 = v3 + v55;
      if (*(v3 + v55 + 8))
      {
        *v56 = *v57;
        *(v56 + 1) = *(v57 + 1);
        v59 = *(v57 + 2);
        v58 = *(v57 + 3);
        v60 = *(v57 + 4);
        v61 = *(v57 + 5);
        v62 = *(v57 + 6);
        v63 = *(v57 + 7);
        v328 = v57[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v59, v58, v60, v61, v62, v63, v328);
        *(v56 + 2) = v59;
        *(v56 + 3) = v58;
        *(v56 + 4) = v60;
        *(v56 + 5) = v61;
        *(v56 + 6) = v62;
        *(v56 + 7) = v63;
        v56[64] = v328;
        v56[65] = v57[65];
        v56[66] = v57[66];
        v56[67] = v57[67];
        v56[68] = v57[68];
        v64 = v57[120];
        if (v64 == 255)
        {
          v77 = *(v57 + 72);
          v78 = *(v57 + 88);
          v79 = *(v57 + 104);
          v56[120] = v57[120];
          *(v56 + 104) = v79;
          *(v56 + 88) = v78;
          *(v56 + 72) = v77;
        }

        else
        {
          v65 = *(v57 + 9);
          v329 = *(v57 + 10);
          v66 = *(v57 + 11);
          v67 = *(v57 + 12);
          v68 = *(v57 + 13);
          v69 = *(v57 + 14);
          v70 = v64 & 1;
          sub_21D0FB960(v65, v329, v66, v67, v68, v69, v64 & 1);
          *(v56 + 9) = v65;
          *(v56 + 10) = v329;
          *(v56 + 11) = v66;
          *(v56 + 12) = v67;
          *(v56 + 13) = v68;
          *(v56 + 14) = v69;
          v56[120] = v70;
        }

        v56[121] = v57[121];
        v3 = a2;
        goto LABEL_97;
      }

LABEL_94:
      v71 = *v57;
      v72 = *(v57 + 1);
      v73 = *(v57 + 3);
      *(v56 + 2) = *(v57 + 2);
      *(v56 + 3) = v73;
      *v56 = v71;
      *(v56 + 1) = v72;
      v74 = *(v57 + 4);
      v75 = *(v57 + 5);
      v76 = *(v57 + 6);
      *(v56 + 106) = *(v57 + 106);
      *(v56 + 5) = v75;
      *(v56 + 6) = v76;
      *(v56 + 4) = v74;
LABEL_97:
      *(a1 + v54[6]) = *(v3 + v54[6]);
      *(a1 + v54[7]) = *(v3 + v54[7]);
      *(a1 + v54[8]) = *(v3 + v54[8]);
      *(a1 + v54[9]) = *(v3 + v54[9]);
      *(a1 + v54[10]) = *(v3 + v54[10]);
      v80 = v54[11];
      v81 = *(v3 + v80);
      *(a1 + v80) = v81;
      v82 = v81;
      goto LABEL_128;
    }

    v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v20 = swift_getEnumCaseMultiPayload();
    if (v20 <= 4)
    {
      if (v20 > 2)
      {
LABEL_68:
        v51 = sub_21DBF563C();
        (*(*(v51 - 8) + 16))(a1, v3, v51);
        swift_storeEnumTagMultiPayload();
        goto LABEL_99;
      }

      if (v20 != 1)
      {
        if (v20 == 2)
        {
          goto LABEL_68;
        }

        goto LABEL_98;
      }

LABEL_71:
      v52 = *v3;
      *a1 = *v3;
      v53 = v52;
      swift_storeEnumTagMultiPayload();
      goto LABEL_99;
    }

    if (v20 > 7)
    {
      if (v20 == 8 || v20 == 9)
      {
        goto LABEL_71;
      }
    }

    else if (v20 == 5 || v20 == 6)
    {
      goto LABEL_68;
    }

LABEL_98:
    memcpy(a1, v3, *(*(v19 - 8) + 64));
LABEL_99:
    v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v83 = v54[5];
    v56 = a1 + v83;
    v57 = v3 + v83;
    if (*(v3 + v83 + 8))
    {
      *v56 = *v57;
      *(v56 + 1) = *(v57 + 1);
      v84 = *(v57 + 2);
      v85 = *(v57 + 3);
      v86 = *(v57 + 4);
      v87 = *(v57 + 5);
      v88 = *(v57 + 6);
      v330 = *(v57 + 7);
      v89 = v57[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v84, v85, v86, v87, v88, v330, v89);
      *(v56 + 2) = v84;
      *(v56 + 3) = v85;
      *(v56 + 4) = v86;
      *(v56 + 5) = v87;
      *(v56 + 6) = v88;
      *(v56 + 7) = v330;
      v56[64] = v89;
      v56[65] = v57[65];
      v56[66] = v57[66];
      v56[67] = v57[67];
      v56[68] = v57[68];
      v90 = v57[120];
      if (v90 == 255)
      {
        v97 = *(v57 + 72);
        v98 = *(v57 + 88);
        v99 = *(v57 + 104);
        v56[120] = v57[120];
        *(v56 + 104) = v99;
        *(v56 + 88) = v98;
        *(v56 + 72) = v97;
      }

      else
      {
        v91 = *(v57 + 9);
        v331 = *(v57 + 10);
        v92 = *(v57 + 11);
        v93 = *(v57 + 12);
        v94 = *(v57 + 13);
        v95 = *(v57 + 14);
        v96 = v90 & 1;
        sub_21D0FB960(v91, v331, v92, v93, v94, v95, v90 & 1);
        *(v56 + 9) = v91;
        *(v56 + 10) = v331;
        *(v56 + 11) = v92;
        *(v56 + 12) = v93;
        *(v56 + 13) = v94;
        *(v56 + 14) = v95;
        v56[120] = v96;
      }

      v56[121] = v57[121];
      v3 = a2;
      goto LABEL_97;
    }

    goto LABEL_94;
  }

LABEL_129:
  v103 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v104 = v103[5];
  v105 = *(v3 + v104);
  v106 = *(a1 + v104);
  *(a1 + v104) = v105;
  v107 = v105;

  v108 = v103[6];
  v109 = a1 + v108;
  v110 = v3 + v108;
  *v109 = *(v3 + v108);
  v109[1] = *(v3 + v108 + 1);
  v109[2] = *(v3 + v108 + 2);
  *(v109 + 1) = *(v3 + v108 + 8);
  *(v109 + 2) = *(v3 + v108 + 16);
  sub_21DBF8E0C();

  v109[24] = v110[24];
  v109[25] = v110[25];
  v111 = v103[7];
  v112 = *(a1 + v111);
  v113 = *(v3 + v111);
  *(a1 + v111) = v113;
  v114 = v113;

  *(a1 + v103[8]) = *(v3 + v103[8]);
  v115 = v103[9];
  v116 = (a1 + v115);
  v117 = (v3 + v115);
  *v116 = *v117;
  v116[1] = v117[1];
  sub_21DBF8E0C();

  v118 = v103[10];
  v119 = (a1 + v118);
  v120 = (v3 + v118);
  *v119 = *v120;
  v119[1] = v120[1];
  sub_21DBF8E0C();

  v121 = v103[11];
  v122 = a1 + v121;
  v123 = v3 + v121;
  v124 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  v125 = *(v124 - 1);
  v126 = *(v125 + 48);
  LODWORD(v112) = v126(v122, 1, v124);
  v127 = v126(v123, 1, v124);
  if (!v112)
  {
    if (v127)
    {
      sub_21D30D8FC(v122, type metadata accessor for TTRRemindersListViewModel.DisplayDate);
      goto LABEL_135;
    }

    *v122 = *v123;
    *(v122 + 1) = *(v123 + 1);
    sub_21DBF8E0C();

    *(v122 + 2) = *(v123 + 2);
    *(v122 + 3) = *(v123 + 3);
    sub_21DBF8E0C();

    v136 = v124[6];
    v137 = sub_21DBF563C();
    (*(*(v137 - 8) + 24))(&v122[v136], &v123[v136], v137);
    v138 = v124[7];
    v139 = sub_21DBF5C4C();
    v334 = *(v139 - 8);
    v140 = *(v334 + 48);
    LODWORD(v136) = v140(&v122[v138], 1, v139);
    v141 = v140(&v123[v138], 1, v139);
    if (v136)
    {
      if (!v141)
      {
        (*(v334 + 16))(&v122[v138], &v123[v138], v139);
        (*(v334 + 56))(&v122[v138], 0, 1, v139);
LABEL_144:
        v135 = a2;
        v122[v124[8]] = v123[v124[8]];
        v122[v124[9]] = v123[v124[9]];
        v122[v124[10]] = v123[v124[10]];
        goto LABEL_145;
      }
    }

    else
    {
      if (!v141)
      {
        (*(v334 + 24))(&v122[v138], &v123[v138], v139);
        goto LABEL_144;
      }

      (*(v334 + 8))(&v122[v138], v139);
    }

    v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
    memcpy(&v122[v138], &v123[v138], *(*(v142 - 8) + 64));
    goto LABEL_144;
  }

  if (v127)
  {
LABEL_135:
    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0);
    memcpy(v122, v123, *(*(v134 - 8) + 64));
    v135 = a2;
    goto LABEL_145;
  }

  *v122 = *v123;
  *(v122 + 1) = *(v123 + 1);
  *(v122 + 2) = *(v123 + 2);
  *(v122 + 3) = *(v123 + 3);
  v128 = v124[6];
  v129 = sub_21DBF563C();
  v333 = *(*(v129 - 8) + 16);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v333(&v122[v128], &v123[v128], v129);
  v130 = v124[7];
  v131 = sub_21DBF5C4C();
  v132 = *(v131 - 8);
  if ((*(v132 + 48))(&v123[v130], 1, v131))
  {
    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
    memcpy(&v122[v130], &v123[v130], *(*(v133 - 8) + 64));
  }

  else
  {
    (*(v132 + 16))(&v122[v130], &v123[v130], v131);
    (*(v132 + 56))(&v122[v130], 0, 1, v131);
  }

  v135 = a2;
  v122[v124[8]] = v123[v124[8]];
  v122[v124[9]] = v123[v124[9]];
  v122[v124[10]] = v123[v124[10]];
  (*(v125 + 56))(v122, 0, 1, v124);
LABEL_145:
  v143 = v103[12];
  v144 = (a1 + v143);
  v145 = (v135 + v143);
  *v144 = *v145;
  v144[1] = v145[1];
  sub_21DBF8E0C();

  v146 = v103[13];
  v147 = a1 + v146;
  v148 = (v135 + v146);
  v149 = *(a1 + v146 + 24);
  v150 = *(v135 + v146 + 24);
  if (v149)
  {
    if (v150)
    {
      v151 = *v147;
      v152 = *v148;
      *v147 = *v148;
      v153 = v152;

      v154 = *(v147 + 8);
      v155 = *(v148 + 1);
      *(v147 + 8) = v155;
      v156 = v155;

      *(v147 + 16) = *(v148 + 2);
      *(v147 + 24) = *(v148 + 3);
      sub_21DBF8E0C();

      *(v147 + 32) = *(v148 + 4);
      *(v147 + 40) = *(v148 + 5);
      sub_21DBF8E0C();

      *(v147 + 48) = *(v148 + 48);
    }

    else
    {
      sub_21D30D95C(v147);
      v162 = v148[1];
      v161 = v148[2];
      v163 = *v148;
      *(v147 + 48) = *(v148 + 48);
      *(v147 + 16) = v162;
      *(v147 + 32) = v161;
      *v147 = v163;
    }
  }

  else if (v150)
  {
    v157 = *v148;
    *v147 = *v148;
    v158 = *(v148 + 1);
    *(v147 + 8) = v158;
    *(v147 + 16) = *(v148 + 2);
    *(v147 + 24) = *(v148 + 3);
    *(v147 + 32) = *(v148 + 4);
    *(v147 + 40) = *(v148 + 5);
    *(v147 + 48) = *(v148 + 48);
    v159 = v157;
    v160 = v158;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v164 = *v148;
    v165 = v148[1];
    v166 = v148[2];
    *(v147 + 48) = *(v148 + 48);
    *(v147 + 16) = v165;
    *(v147 + 32) = v166;
    *v147 = v164;
  }

  *(a1 + v103[14]) = *(v135 + v103[14]);
  v167 = v103[15];
  v168 = *(a1 + v167);
  v169 = *(v135 + v167);
  *(a1 + v167) = v169;
  v170 = v169;

  *(a1 + v103[16]) = *(v135 + v103[16]);
  sub_21DBF8E0C();

  *(a1 + v103[17]) = *(v135 + v103[17]);
  sub_21DBF8E0C();

  *(a1 + v103[18]) = *(v135 + v103[18]);
  *(a1 + v103[19]) = *(v135 + v103[19]);
  v171 = v103[20];
  v172 = *(v135 + v171);
  v173 = *(a1 + v171);
  *(a1 + v171) = v172;
  v174 = v172;

  v175 = v103[21];
  v176 = *(v135 + v175);
  v177 = *(a1 + v175);
  *(a1 + v175) = v176;
  v178 = v176;

  v179 = v103[22];
  v180 = *(v135 + v179);
  v181 = *(a1 + v179);
  *(a1 + v179) = v180;
  v182 = v180;

  v183 = v103[23];
  v184 = a1 + v183;
  v185 = (v135 + v183);
  v186 = *v185;
  v184[8] = *(v185 + 8);
  *v184 = v186;
  *(a1 + v103[24]) = *(v135 + v103[24]);
  *(a1 + v103[25]) = *(v135 + v103[25]);
  *(a1 + v103[26]) = *(v135 + v103[26]);
  *(a1 + v103[27]) = *(v135 + v103[27]);
  *(a1 + v103[28]) = *(v135 + v103[28]);
  *(a1 + v103[29]) = *(v135 + v103[29]);
  v187 = v103[30];
  v188 = (a1 + v187);
  v189 = (v135 + v187);
  *v188 = *v189;
  v188[1] = v189[1];
  sub_21DBF8E0C();

  v190 = v103[31];
  v191 = a1 + v190;
  v192 = v135 + v190;
  *v191 = *(v135 + v190);
  *(v191 + 1) = *(v135 + v190 + 8);
  sub_21DBF8E0C();

  v191[16] = *(v192 + 16);
  v193 = v103[32];
  v194 = (a1 + v193);
  v195 = (v135 + v193);
  v196 = *(a1 + v193 + 8);
  v197 = *(v135 + v193 + 8);
  if (v196)
  {
    if (v197)
    {
      *v194 = *v195;
      v194[1] = v195[1];
      sub_21DBF8E0C();

      v198 = v194[2];
      v199 = v195[2];
      v194[2] = v199;
      v200 = v199;
    }

    else
    {
      sub_21D30D9B0(v194);
      v203 = v195[2];
      *v194 = *v195;
      v194[2] = v203;
    }
  }

  else if (v197)
  {
    *v194 = *v195;
    v194[1] = v195[1];
    v201 = v195[2];
    v194[2] = v201;
    sub_21DBF8E0C();
    v202 = v201;
  }

  else
  {
    v204 = *v195;
    v194[2] = v195[2];
    *v194 = v204;
  }

  *(a1 + v103[33]) = *(v135 + v103[33]);
  v205 = v103[34];
  v206 = a1 + v205;
  v207 = (v135 + v205);
  v208 = *(a1 + v205);
  v209 = *(v135 + v205);
  if (v208 == 1)
  {
    if (v209)
    {
      if (v209 == 1)
      {
        v210 = *v207;
        v211 = v207[2];
        *(v206 + 16) = v207[1];
        *(v206 + 32) = v211;
        *v206 = v210;
        v212 = v207[3];
        v213 = v207[4];
        v214 = v207[6];
        *(v206 + 80) = v207[5];
        *(v206 + 96) = v214;
        *(v206 + 48) = v212;
        *(v206 + 64) = v213;
        v215 = v207[7];
        v216 = v207[8];
        v217 = v207[10];
        *(v206 + 144) = v207[9];
        *(v206 + 160) = v217;
        *(v206 + 112) = v215;
        *(v206 + 128) = v216;
        v218 = v207[11];
        v219 = v207[12];
        v220 = v207[13];
        *(v206 + 224) = *(v207 + 28);
        *(v206 + 192) = v219;
        *(v206 + 208) = v220;
        *(v206 + 176) = v218;
        goto LABEL_183;
      }

      goto LABEL_171;
    }
  }

  else
  {
    if (v209 == 1)
    {
      sub_21D30DAAC(v206);
      v222 = v207[1];
      v221 = v207[2];
      *v206 = *v207;
      *(v206 + 16) = v222;
      *(v206 + 32) = v221;
      v223 = v207[6];
      v225 = v207[3];
      v224 = v207[4];
      *(v206 + 80) = v207[5];
      *(v206 + 96) = v223;
      *(v206 + 48) = v225;
      *(v206 + 64) = v224;
      v226 = v207[10];
      v228 = v207[7];
      v227 = v207[8];
      *(v206 + 144) = v207[9];
      *(v206 + 160) = v226;
      *(v206 + 112) = v228;
      *(v206 + 128) = v227;
      v230 = v207[12];
      v229 = v207[13];
      v231 = v207[11];
      *(v206 + 224) = *(v207 + 28);
      *(v206 + 192) = v230;
      *(v206 + 208) = v229;
      *(v206 + 176) = v231;
      goto LABEL_183;
    }

    if (v208)
    {
      if (v209)
      {
        *v206 = v209;
        v232 = v209;

        v233 = *(v206 + 8);
        v234 = *(v207 + 1);
        *(v206 + 8) = v234;
        v235 = v234;

        *(v206 + 16) = *(v207 + 2);
        *(v206 + 24) = *(v207 + 3);
        sub_21DBF8E0C();

        *(v206 + 32) = *(v207 + 4);
        *(v206 + 40) = *(v207 + 5);
        sub_21DBF8E0C();

        *(v206 + 48) = *(v207 + 6);
        *(v206 + 56) = *(v207 + 7);
        sub_21DBF8E0C();

        *(v206 + 64) = *(v207 + 8);
        *(v206 + 72) = *(v207 + 9);
        sub_21DBF8E0C();

        *(v206 + 80) = *(v207 + 10);
        *(v206 + 88) = *(v207 + 11);
        sub_21DBF8E0C();

        *(v206 + 96) = *(v207 + 96);
        v236 = *(v206 + 104);
        v237 = *(v207 + 13);
        *(v206 + 104) = v237;
        v238 = v237;

        v239 = (v206 + 112);
        v240 = *(v206 + 112);
        v242 = v207 + 7;
        v241 = *(v207 + 14);
        if (v240)
        {
          if (v241)
          {
            *(v206 + 112) = v241;
            v243 = v241;

            v244 = *(v206 + 120);
            v245 = *(v207 + 15);
            *(v206 + 120) = v245;
            v246 = v245;

            *(v206 + 128) = *(v207 + 16);
            *(v206 + 136) = *(v207 + 17);
            sub_21DBF8E0C();

            *(v206 + 144) = *(v207 + 18);
            *(v206 + 152) = *(v207 + 19);
            sub_21DBF8E0C();

            *(v206 + 160) = *(v207 + 20);
            *(v206 + 168) = *(v207 + 21);
            sub_21DBF8E0C();

            *(v206 + 176) = *(v207 + 22);
            *(v206 + 184) = *(v207 + 23);
            sub_21DBF8E0C();

            *(v206 + 192) = *(v207 + 24);
            *(v206 + 200) = *(v207 + 25);
            sub_21DBF8E0C();

            *(v206 + 208) = *(v207 + 208);
            v247 = *(v206 + 216);
            v248 = *(v207 + 27);
            *(v206 + 216) = v248;
            v249 = v248;
          }

          else
          {
            sub_21D30DA04(v206 + 112);
            v288 = v207[8];
            v287 = v207[9];
            *v239 = *v242;
            *(v206 + 128) = v288;
            *(v206 + 144) = v287;
            v289 = v207[13];
            v291 = v207[10];
            v290 = v207[11];
            *(v206 + 192) = v207[12];
            *(v206 + 208) = v289;
            *(v206 + 160) = v291;
            *(v206 + 176) = v290;
          }
        }

        else if (v241)
        {
          *(v206 + 112) = v241;
          v283 = *(v207 + 15);
          *(v206 + 120) = v283;
          *(v206 + 128) = *(v207 + 16);
          *(v206 + 136) = *(v207 + 17);
          *(v206 + 144) = *(v207 + 18);
          *(v206 + 152) = *(v207 + 19);
          *(v206 + 160) = *(v207 + 20);
          *(v206 + 168) = *(v207 + 21);
          *(v206 + 176) = *(v207 + 22);
          *(v206 + 184) = *(v207 + 23);
          *(v206 + 192) = *(v207 + 24);
          *(v206 + 200) = *(v207 + 25);
          *(v206 + 208) = *(v207 + 208);
          v337 = *(v207 + 27);
          *(v206 + 216) = v337;
          v284 = v241;
          v285 = v283;
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          v135 = a2;
          sub_21DBF8E0C();
          v286 = v337;
        }

        else
        {
          v292 = *v242;
          v293 = v207[9];
          *(v206 + 128) = v207[8];
          *(v206 + 144) = v293;
          *v239 = v292;
          v294 = v207[10];
          v295 = v207[11];
          v296 = v207[13];
          *(v206 + 192) = v207[12];
          *(v206 + 208) = v296;
          *(v206 + 160) = v294;
          *(v206 + 176) = v295;
        }
      }

      else
      {
        sub_21D30DA58(v206);
        v273 = v207[1];
        *v206 = *v207;
        *(v206 + 16) = v273;
        v274 = v207[5];
        v276 = v207[2];
        v275 = v207[3];
        *(v206 + 64) = v207[4];
        *(v206 + 80) = v274;
        *(v206 + 32) = v276;
        *(v206 + 48) = v275;
        v277 = v207[9];
        v279 = v207[6];
        v278 = v207[7];
        *(v206 + 128) = v207[8];
        *(v206 + 144) = v277;
        *(v206 + 96) = v279;
        *(v206 + 112) = v278;
        v280 = v207[13];
        v282 = v207[10];
        v281 = v207[11];
        *(v206 + 192) = v207[12];
        *(v206 + 208) = v280;
        *(v206 + 160) = v282;
        *(v206 + 176) = v281;
      }

      goto LABEL_182;
    }

    if (v209)
    {
LABEL_171:
      *v206 = v209;
      v250 = *(v207 + 1);
      *(v206 + 8) = v250;
      *(v206 + 16) = *(v207 + 2);
      *(v206 + 24) = *(v207 + 3);
      *(v206 + 32) = *(v207 + 4);
      *(v206 + 40) = *(v207 + 5);
      *(v206 + 48) = *(v207 + 6);
      *(v206 + 56) = *(v207 + 7);
      *(v206 + 64) = *(v207 + 8);
      *(v206 + 72) = *(v207 + 9);
      *(v206 + 80) = *(v207 + 10);
      *(v206 + 88) = *(v207 + 11);
      *(v206 + 96) = *(v207 + 96);
      v335 = *(v207 + 13);
      *(v206 + 104) = v335;
      v332 = *(v207 + 14);
      v251 = v209;
      v252 = v250;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v253 = v335;
      if (v332)
      {
        *(v206 + 112) = v332;
        v254 = *(v207 + 15);
        *(v206 + 120) = v254;
        *(v206 + 128) = *(v207 + 16);
        *(v206 + 136) = *(v207 + 17);
        *(v206 + 144) = *(v207 + 18);
        *(v206 + 152) = *(v207 + 19);
        *(v206 + 160) = *(v207 + 20);
        *(v206 + 168) = *(v207 + 21);
        *(v206 + 176) = *(v207 + 22);
        *(v206 + 184) = *(v207 + 23);
        *(v206 + 192) = *(v207 + 24);
        *(v206 + 200) = *(v207 + 25);
        *(v206 + 208) = *(v207 + 208);
        v336 = *(v207 + 27);
        *(v206 + 216) = v336;
        v255 = v332;
        v256 = v254;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v257 = v336;
      }

      else
      {
        v268 = v207[7];
        v269 = v207[9];
        *(v206 + 128) = v207[8];
        *(v206 + 144) = v269;
        *(v206 + 112) = v268;
        v270 = v207[10];
        v271 = v207[11];
        v272 = v207[13];
        *(v206 + 192) = v207[12];
        *(v206 + 208) = v272;
        *(v206 + 160) = v270;
        *(v206 + 176) = v271;
      }

      v135 = a2;
      goto LABEL_182;
    }
  }

  v258 = v207[1];
  *v206 = *v207;
  *(v206 + 16) = v258;
  v259 = v207[2];
  v260 = v207[3];
  v261 = v207[5];
  *(v206 + 64) = v207[4];
  *(v206 + 80) = v261;
  *(v206 + 32) = v259;
  *(v206 + 48) = v260;
  v262 = v207[6];
  v263 = v207[7];
  v264 = v207[9];
  *(v206 + 128) = v207[8];
  *(v206 + 144) = v264;
  *(v206 + 96) = v262;
  *(v206 + 112) = v263;
  v265 = v207[10];
  v266 = v207[11];
  v267 = v207[13];
  *(v206 + 192) = v207[12];
  *(v206 + 208) = v267;
  *(v206 + 160) = v265;
  *(v206 + 176) = v266;
LABEL_182:
  *(v206 + 224) = *(v207 + 28);
LABEL_183:
  v297 = v103[35];
  v298 = a1 + v297;
  v299 = v135 + v297;
  *v298 = *(v135 + v297);
  *(v298 + 1) = *(v135 + v297 + 8);
  sub_21DBF8E0C();

  *(v298 + 2) = *(v299 + 16);
  sub_21DBF8E0C();

  *(a1 + v103[36]) = *(v135 + v103[36]);
  v300 = v103[37];
  v301 = a1 + v300;
  v302 = v135 + v300;
  v303 = *(a1 + v300 + 8);
  v304 = *(v135 + v300 + 8);
  if (v303 == 1)
  {
    if (v304 <= 1)
    {
LABEL_185:
      v305 = *(v302 + 16);
      *v301 = *v302;
      *(v301 + 16) = v305;
      goto LABEL_194;
    }

    goto LABEL_193;
  }

  if (v304 == 1)
  {
    sub_21D30DB00(v301);
    goto LABEL_188;
  }

  if (v303)
  {
    if (v304)
    {
      *v301 = *v302;
      *(v301 + 8) = *(v302 + 8);
      sub_21DBF8E0C();

      *(v301 + 16) = *(v302 + 16);
      *(v301 + 24) = *(v302 + 24);
      sub_21DBF8E0C();

      goto LABEL_194;
    }

    sub_21D0CF7E0(v301, &qword_27CE5A6F0);
LABEL_188:
    v306 = *(v302 + 16);
    *v301 = *v302;
    *(v301 + 16) = v306;
    goto LABEL_194;
  }

  if (!v304)
  {
    goto LABEL_185;
  }

LABEL_193:
  *v301 = *v302;
  *(v301 + 8) = *(v302 + 8);
  *(v301 + 16) = *(v302 + 16);
  *(v301 + 24) = *(v302 + 24);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
LABEL_194:
  v307 = v103[38];
  v308 = (a1 + v307);
  v309 = (v135 + v307);
  v310 = *(a1 + v307);
  v311 = *(v135 + v307);
  if (v310)
  {
    if (v311)
    {
      *v308 = v311;
      v312 = v311;

      v308[1] = *(v309 + 1);
      v308[2] = *(v309 + 2);
      sub_21DBF8E0C();
    }

    else
    {
      sub_21D30DB54(v308);
      v314 = *(v309 + 2);
      *v308 = *v309;
      v308[2] = v314;
    }
  }

  else if (v311)
  {
    *v308 = v311;
    v308[1] = *(v309 + 1);
    v308[2] = *(v309 + 2);
    v313 = v311;
    sub_21DBF8E0C();
  }

  else
  {
    v315 = *v309;
    v308[2] = *(v309 + 2);
    *v308 = v315;
  }

  v316 = v103[39];
  v317 = (a1 + v316);
  v318 = (v135 + v316);
  *v317 = *v318;
  v317[1] = v318[1];
  sub_21DBF8E0C();

  *(a1 + v103[40]) = *(v135 + v103[40]);
  *(a1 + v103[41]) = *(v135 + v103[41]);
  v319 = v103[42];
  v320 = *(a1 + v319);
  v321 = *(v135 + v319);
  *(a1 + v319) = v321;
  v322 = v321;

  *(a1 + v103[43]) = *(v135 + v103[43]);
  *(a1 + v103[45]) = *(v135 + v103[45]);
  v323 = *(a3 + 20);
  v324 = *(v135 + v323);
  v325 = *(a1 + v323);
  *(a1 + v323) = v324;
  v326 = v324;

  return a1;
}

uint64_t sub_21D30D8FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_21D30DBA8(void *a1, void *a2, uint64_t a3)
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
  v42 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  *(a1 + v42[5]) = *(a2 + v42[5]);
  v43 = v42[6];
  v44 = (a1 + v43);
  v45 = (a2 + v43);
  *(v44 + 10) = *(v45 + 10);
  *v44 = *v45;
  *(a1 + v42[7]) = *(a2 + v42[7]);
  *(a1 + v42[8]) = *(a2 + v42[8]);
  *(a1 + v42[9]) = *(a2 + v42[9]);
  *(a1 + v42[10]) = *(a2 + v42[10]);
  v46 = v42[11];
  v47 = (a1 + v46);
  v48 = (a2 + v46);
  v49 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  v50 = *(v49 - 1);
  if ((*(v50 + 48))(v48, 1, v49))
  {
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0);
    memcpy(v47, v48, *(*(v51 - 8) + 64));
  }

  else
  {
    v93 = a3;
    v52 = v48[1];
    *v47 = *v48;
    v47[1] = v52;
    v53 = v49[6];
    v54 = sub_21DBF563C();
    (*(*(v54 - 8) + 32))(v47 + v53, v48 + v53, v54);
    v55 = v49[7];
    v56 = sub_21DBF5C4C();
    v57 = *(v56 - 8);
    if ((*(v57 + 48))(v48 + v55, 1, v56))
    {
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
      memcpy(v47 + v55, v48 + v55, *(*(v58 - 8) + 64));
    }

    else
    {
      (*(v57 + 32))(v47 + v55, v48 + v55, v56);
      (*(v57 + 56))(v47 + v55, 0, 1, v56);
    }

    a3 = v93;
    *(v47 + v49[8]) = *(v48 + v49[8]);
    *(v47 + v49[9]) = *(v48 + v49[9]);
    *(v47 + v49[10]) = *(v48 + v49[10]);
    (*(v50 + 56))(v47, 0, 1, v49);
  }

  *(a1 + v42[12]) = *(a2 + v42[12]);
  v59 = v42[13];
  v60 = a1 + v59;
  v61 = a2 + v59;
  v60[48] = v61[48];
  v62 = *(v61 + 2);
  *(v60 + 1) = *(v61 + 1);
  *(v60 + 2) = v62;
  *v60 = *v61;
  *(a1 + v42[14]) = *(a2 + v42[14]);
  *(a1 + v42[15]) = *(a2 + v42[15]);
  *(a1 + v42[16]) = *(a2 + v42[16]);
  *(a1 + v42[17]) = *(a2 + v42[17]);
  *(a1 + v42[18]) = *(a2 + v42[18]);
  *(a1 + v42[19]) = *(a2 + v42[19]);
  *(a1 + v42[20]) = *(a2 + v42[20]);
  *(a1 + v42[21]) = *(a2 + v42[21]);
  *(a1 + v42[22]) = *(a2 + v42[22]);
  v63 = v42[23];
  v64 = a1 + v63;
  v65 = a2 + v63;
  *v64 = *v65;
  v64[8] = v65[8];
  *(a1 + v42[24]) = *(a2 + v42[24]);
  *(a1 + v42[25]) = *(a2 + v42[25]);
  *(a1 + v42[26]) = *(a2 + v42[26]);
  *(a1 + v42[27]) = *(a2 + v42[27]);
  *(a1 + v42[28]) = *(a2 + v42[28]);
  *(a1 + v42[29]) = *(a2 + v42[29]);
  *(a1 + v42[30]) = *(a2 + v42[30]);
  v66 = v42[31];
  v67 = a1 + v66;
  v68 = a2 + v66;
  *v67 = *v68;
  v67[16] = v68[16];
  v69 = v42[32];
  v70 = a1 + v69;
  v71 = a2 + v69;
  *v70 = *v71;
  *(v70 + 2) = *(v71 + 2);
  *(a1 + v42[33]) = *(a2 + v42[33]);
  v72 = v42[34];
  v73 = a1 + v72;
  v74 = a2 + v72;
  v75 = *(v74 + 13);
  *(v73 + 12) = *(v74 + 12);
  *(v73 + 13) = v75;
  *(v73 + 28) = *(v74 + 28);
  v76 = *(v74 + 9);
  *(v73 + 8) = *(v74 + 8);
  *(v73 + 9) = v76;
  v77 = *(v74 + 11);
  *(v73 + 10) = *(v74 + 10);
  *(v73 + 11) = v77;
  v78 = *(v74 + 5);
  *(v73 + 4) = *(v74 + 4);
  *(v73 + 5) = v78;
  v79 = *(v74 + 7);
  *(v73 + 6) = *(v74 + 6);
  *(v73 + 7) = v79;
  v80 = *(v74 + 1);
  *v73 = *v74;
  *(v73 + 1) = v80;
  v81 = *(v74 + 3);
  *(v73 + 2) = *(v74 + 2);
  *(v73 + 3) = v81;
  v82 = v42[35];
  v83 = a1 + v82;
  v84 = a2 + v82;
  *v83 = *v84;
  *(v83 + 2) = *(v84 + 2);
  *(a1 + v42[36]) = *(a2 + v42[36]);
  v85 = v42[37];
  v86 = (a1 + v85);
  v87 = (a2 + v85);
  v88 = v87[1];
  *v86 = *v87;
  v86[1] = v88;
  v89 = v42[38];
  v90 = a1 + v89;
  v91 = a2 + v89;
  *(v90 + 2) = *(v91 + 2);
  *v90 = *v91;
  *(a1 + v42[39]) = *(a2 + v42[39]);
  *(a1 + v42[40]) = *(a2 + v42[40]);
  *(a1 + v42[41]) = *(a2 + v42[41]);
  *(a1 + v42[42]) = *(a2 + v42[42]);
  *(a1 + v42[43]) = *(a2 + v42[43]);
  *(a1 + v42[45]) = *(a2 + v42[45]);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

_BYTE *sub_21D30F130(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D30D8FC(a1, type metadata accessor for TTRRemindersListViewModel.Item);
    v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v20 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v21 = *(v20 - 8);
          if ((*(v21 + 48))(a2, 1, v20))
          {
            v22 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
            memcpy(a1, a2, *(*(v22 - 8) + 64));
          }

          else
          {
            v25 = sub_21DBF563C();
            (*(*(v25 - 8) + 32))(a1, a2, v25);
            a1[*(v20 + 20)] = a2[*(v20 + 20)];
            (*(v21 + 56))(a1, 0, 1, v20);
          }

          v26 = type metadata accessor for TTRTemplatePublicLinkData(0);
          *&a1[*(v26 + 20)] = *&a2[*(v26 + 20)];
          goto LABEL_88;
        }

        if (EnumCaseMultiPayload != 8)
        {
          goto LABEL_33;
        }

        *a1 = *a2;
        v16 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v17 = sub_21DBF8D7C();
        (*(*(v17 - 8) + 32))(&a1[v16], &a2[v16], v17);
LABEL_88:
        swift_storeEnumTagMultiPayload();
        goto LABEL_89;
      }

      if (EnumCaseMultiPayload != 4)
      {
        if (EnumCaseMultiPayload == 6)
        {
          v10 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          v11 = *(v10 - 8);
          if ((*(v11 + 48))(a2, 1, v10))
          {
            v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
            memcpy(a1, a2, *(*(v12 - 8) + 64));
          }

          else
          {
            *a1 = *a2;
            v27 = *(v10 + 20);
            v28 = sub_21DBF6C1C();
            (*(*(v28 - 8) + 32))(&a1[v27], &a2[v27], v28);
            (*(v11 + 56))(a1, 0, 1, v10);
          }

          v29 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v30 = &a1[v29];
          v31 = &a2[v29];
          *v30 = *v31;
          *(v30 + 2) = *(v31 + 2);
          goto LABEL_88;
        }

        goto LABEL_33;
      }

      *a1 = *a2;
      v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v15 = *(v14 - 8);
      if (!(*(v15 + 48))(&a2[v13], 1, v14))
      {
        v23 = swift_getEnumCaseMultiPayload();
        if (v23 <= 3)
        {
          if (v23 == 2 || v23 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v23 == 4 || v23 == 5 || v23 == 6)
        {
          goto LABEL_58;
        }

        goto LABEL_86;
      }
    }

    else
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v18 = swift_getEnumCaseMultiPayload();
          if (v18 <= 3)
          {
            if (v18 == 2 || v18 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v18 == 4 || v18 == 5 || v18 == 6)
          {
            goto LABEL_10;
          }

          goto LABEL_65;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v8 = swift_getEnumCaseMultiPayload();
          if (v8 <= 3)
          {
            if (v8 == 2 || v8 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v8 == 4 || v8 == 5 || v8 == 6)
          {
LABEL_10:
            v9 = sub_21DBF563C();
            (*(*(v9 - 8) + 32))(a1, a2, v9);
            swift_storeEnumTagMultiPayload();
LABEL_66:
            v34 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v35 = v34[5];
            v36 = &a1[v35];
            v37 = &a2[v35];
            v38 = v37[3];
            v36[2] = v37[2];
            v36[3] = v38;
            v39 = v37[1];
            *v36 = *v37;
            v36[1] = v39;
            *(v36 + 106) = *(v37 + 106);
            v40 = v37[6];
            v36[5] = v37[5];
            v36[6] = v40;
            v36[4] = v37[4];
            a1[v34[6]] = a2[v34[6]];
            a1[v34[7]] = a2[v34[7]];
            a1[v34[8]] = a2[v34[8]];
            a1[v34[9]] = a2[v34[9]];
            a1[v34[10]] = a2[v34[10]];
            *&a1[v34[11]] = *&a2[v34[11]];
            goto LABEL_88;
          }

LABEL_65:
          memcpy(a1, a2, *(*(v7 - 8) + 64));
          goto LABEL_66;
        }

LABEL_33:
        memcpy(a1, a2, *(*(v5 - 8) + 64));
        goto LABEL_89;
      }

      if (EnumCaseMultiPayload != 2)
      {
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        if ((*(v15 + 48))(&a2[v13], 1, v14))
        {
          goto LABEL_30;
        }

        v32 = swift_getEnumCaseMultiPayload();
        if (v32 <= 3)
        {
          if (v32 == 2 || v32 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v32 == 4 || v32 == 5 || v32 == 6)
        {
LABEL_58:
          v33 = sub_21DBF563C();
          (*(*(v33 - 8) + 32))(&a1[v13], &a2[v13], v33);
          swift_storeEnumTagMultiPayload();
LABEL_87:
          (*(v15 + 56))(&a1[v13], 0, 1, v14);
          goto LABEL_88;
        }

LABEL_86:
        memcpy(&a1[v13], &a2[v13], *(v15 + 64));
        goto LABEL_87;
      }

      *a1 = *a2;
      v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v15 = *(v14 - 8);
      if (!(*(v15 + 48))(&a2[v13], 1, v14))
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
    }

LABEL_30:
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
    memcpy(&a1[v13], &a2[v13], *(*(v19 - 8) + 64));
    goto LABEL_88;
  }

LABEL_89:
  v41 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v42 = v41[5];
  v43 = *&a1[v42];
  *&a1[v42] = *&a2[v42];

  v44 = v41[6];
  v45 = &a1[v44];
  v46 = &a2[v44];
  *v45 = a2[v44];
  v45[1] = a2[v44 + 1];
  v45[2] = a2[v44 + 2];
  v47 = *&a2[v44 + 16];
  *(v45 + 1) = *&a2[v44 + 8];
  *(v45 + 2) = v47;

  v45[24] = v46[24];
  v45[25] = v46[25];
  v48 = v41[7];
  v49 = *&a1[v48];
  *&a1[v48] = *&a2[v48];

  a1[v41[8]] = a2[v41[8]];
  v50 = v41[9];
  v51 = &a1[v50];
  v52 = &a2[v50];
  v54 = *v52;
  v53 = v52[1];
  *v51 = v54;
  v51[1] = v53;

  v55 = v41[10];
  v56 = &a1[v55];
  v57 = &a2[v55];
  v59 = *v57;
  v58 = v57[1];
  *v56 = v59;
  v56[1] = v58;

  v60 = v41[11];
  v61 = &a1[v60];
  v62 = &a2[v60];
  v63 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  v64 = *(v63 - 1);
  v65 = *(v64 + 48);
  v66 = v65(v61, 1, v63);
  v67 = v65(v62, 1, v63);
  if (!v66)
  {
    if (v67)
    {
      sub_21D30D8FC(v61, type metadata accessor for TTRRemindersListViewModel.DisplayDate);
      goto LABEL_95;
    }

    v76 = *(v62 + 1);
    *v61 = *v62;
    *(v61 + 1) = v76;

    v77 = *(v62 + 3);
    *(v61 + 2) = *(v62 + 2);
    *(v61 + 3) = v77;

    v78 = v63[6];
    v79 = sub_21DBF563C();
    (*(*(v79 - 8) + 40))(&v61[v78], &v62[v78], v79);
    v80 = v63[7];
    v81 = sub_21DBF5C4C();
    v188 = *(v81 - 8);
    v82 = *(v188 + 48);
    v189 = v82(&v61[v80], 1, v81);
    v83 = v82(&v62[v80], 1, v81);
    if (v189)
    {
      if (!v83)
      {
        (*(v188 + 32))(&v61[v80], &v62[v80], v81);
        (*(v188 + 56))(&v61[v80], 0, 1, v81);
        goto LABEL_106;
      }

      v84 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0) - 8) + 64);
      v85 = &v61[v80];
      v86 = &v62[v80];
    }

    else
    {
      if (!v83)
      {
        (*(v188 + 40))(&v61[v80], &v62[v80], v81);
        goto LABEL_106;
      }

      (*(v188 + 8))(&v61[v80], v81);
      v84 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0) - 8) + 64);
      v85 = &v61[v80];
      v86 = &v62[v80];
    }

    memcpy(v85, v86, v84);
LABEL_106:
    v61[v63[8]] = v62[v63[8]];
    v61[v63[9]] = v62[v63[9]];
    v61[v63[10]] = v62[v63[10]];
    goto LABEL_107;
  }

  if (v67)
  {
LABEL_95:
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0);
    memcpy(v61, v62, *(*(v75 - 8) + 64));
    goto LABEL_107;
  }

  v68 = *(v62 + 1);
  *v61 = *v62;
  *(v61 + 1) = v68;
  v69 = v63[6];
  v70 = sub_21DBF563C();
  (*(*(v70 - 8) + 32))(&v61[v69], &v62[v69], v70);
  v71 = v63[7];
  v72 = sub_21DBF5C4C();
  v73 = *(v72 - 8);
  if ((*(v73 + 48))(&v62[v71], 1, v72))
  {
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
    memcpy(&v61[v71], &v62[v71], *(*(v74 - 8) + 64));
  }

  else
  {
    (*(v73 + 32))(&v61[v71], &v62[v71], v72);
    (*(v73 + 56))(&v61[v71], 0, 1, v72);
  }

  v61[v63[8]] = v62[v63[8]];
  v61[v63[9]] = v62[v63[9]];
  v61[v63[10]] = v62[v63[10]];
  (*(v64 + 56))(v61, 0, 1, v63);
LABEL_107:
  v87 = v41[12];
  v88 = &a1[v87];
  v89 = &a2[v87];
  v91 = *v89;
  v90 = v89[1];
  *v88 = v91;
  v88[1] = v90;

  v92 = v41[13];
  v93 = &a1[v92];
  v94 = &a2[v92];
  if (*&a1[v92 + 24])
  {
    if (*(v94 + 3))
    {
      v95 = *v93;
      *v93 = *v94;

      v96 = *(v93 + 8);
      *(v93 + 8) = *(v94 + 1);

      v97 = *(v94 + 3);
      *(v93 + 16) = *(v94 + 2);
      *(v93 + 24) = v97;

      v98 = *(v94 + 5);
      *(v93 + 32) = *(v94 + 4);
      *(v93 + 40) = v98;

      goto LABEL_112;
    }

    sub_21D30D95C(v93);
  }

  v99 = *(v94 + 1);
  *v93 = *v94;
  *(v93 + 16) = v99;
  *(v93 + 32) = *(v94 + 2);
LABEL_112:
  *(v93 + 48) = v94[48];
  a1[v41[14]] = a2[v41[14]];
  v100 = v41[15];
  v101 = *&a1[v100];
  *&a1[v100] = *&a2[v100];

  *&a1[v41[16]] = *&a2[v41[16]];

  *&a1[v41[17]] = *&a2[v41[17]];

  a1[v41[18]] = a2[v41[18]];
  *&a1[v41[19]] = *&a2[v41[19]];
  v102 = v41[20];
  v103 = *&a1[v102];
  *&a1[v102] = *&a2[v102];

  v104 = v41[21];
  v105 = *&a1[v104];
  *&a1[v104] = *&a2[v104];

  v106 = v41[22];
  v107 = *&a1[v106];
  *&a1[v106] = *&a2[v106];

  v108 = v41[23];
  v109 = &a1[v108];
  v110 = &a2[v108];
  *v109 = *v110;
  v109[8] = v110[8];
  a1[v41[24]] = a2[v41[24]];
  a1[v41[25]] = a2[v41[25]];
  a1[v41[26]] = a2[v41[26]];
  *&a1[v41[27]] = *&a2[v41[27]];
  *&a1[v41[28]] = *&a2[v41[28]];
  a1[v41[29]] = a2[v41[29]];
  v111 = v41[30];
  v112 = &a1[v111];
  v113 = &a2[v111];
  v115 = *v113;
  v114 = v113[1];
  *v112 = v115;
  v112[1] = v114;

  v116 = v41[31];
  v117 = &a1[v116];
  v118 = &a2[v116];
  v119 = *&a2[v116 + 8];
  *v117 = *&a2[v116];
  *(v117 + 1) = v119;

  v117[16] = v118[16];
  v120 = v41[32];
  v121 = &a1[v120];
  v122 = &a2[v120];
  if (*&a1[v120 + 8])
  {
    v123 = v122[1];
    if (v123)
    {
      *v121 = *v122;
      v121[1] = v123;

      v124 = v121[2];
      v121[2] = v122[2];

      goto LABEL_117;
    }

    sub_21D30D9B0(v121);
  }

  *v121 = *v122;
  v121[2] = v122[2];
LABEL_117:
  a1[v41[33]] = a2[v41[33]];
  v125 = v41[34];
  v126 = &a1[v125];
  v127 = &a2[v125];
  v128 = *&a1[v125];
  if (v128 == 1)
  {
LABEL_120:
    v130 = *(v127 + 13);
    *(v126 + 192) = *(v127 + 12);
    *(v126 + 208) = v130;
    *(v126 + 224) = *(v127 + 28);
    v131 = *(v127 + 9);
    *(v126 + 128) = *(v127 + 8);
    *(v126 + 144) = v131;
    v132 = *(v127 + 11);
    *(v126 + 160) = *(v127 + 10);
    *(v126 + 176) = v132;
    v133 = *(v127 + 5);
    *(v126 + 64) = *(v127 + 4);
    *(v126 + 80) = v133;
    v134 = *(v127 + 7);
    *(v126 + 96) = *(v127 + 6);
    *(v126 + 112) = v134;
    v135 = *(v127 + 1);
    *v126 = *v127;
    *(v126 + 16) = v135;
    v136 = *(v127 + 3);
    *(v126 + 32) = *(v127 + 2);
    *(v126 + 48) = v136;
    goto LABEL_131;
  }

  v129 = *v127;
  if (*v127 == 1)
  {
    sub_21D30DAAC(v126);
    goto LABEL_120;
  }

  if (!v128)
  {
    goto LABEL_127;
  }

  if (!v129)
  {
    sub_21D30DA58(v126);
LABEL_127:
    v153 = *(v127 + 11);
    *(v126 + 160) = *(v127 + 10);
    *(v126 + 176) = v153;
    v154 = *(v127 + 13);
    *(v126 + 192) = *(v127 + 12);
    *(v126 + 208) = v154;
    v155 = *(v127 + 7);
    *(v126 + 96) = *(v127 + 6);
    *(v126 + 112) = v155;
    v156 = *(v127 + 9);
    *(v126 + 128) = *(v127 + 8);
    *(v126 + 144) = v156;
    v157 = *(v127 + 3);
    *(v126 + 32) = *(v127 + 2);
    *(v126 + 48) = v157;
    v158 = *(v127 + 5);
    *(v126 + 64) = *(v127 + 4);
    *(v126 + 80) = v158;
    v159 = *(v127 + 1);
    *v126 = *v127;
    *(v126 + 16) = v159;
    goto LABEL_130;
  }

  *v126 = v129;

  v137 = *(v126 + 8);
  *(v126 + 8) = *(v127 + 1);

  v138 = *(v127 + 3);
  *(v126 + 16) = *(v127 + 2);
  *(v126 + 24) = v138;

  v139 = *(v127 + 5);
  *(v126 + 32) = *(v127 + 4);
  *(v126 + 40) = v139;

  v140 = *(v127 + 7);
  *(v126 + 48) = *(v127 + 6);
  *(v126 + 56) = v140;

  v141 = *(v127 + 9);
  *(v126 + 64) = *(v127 + 8);
  *(v126 + 72) = v141;

  v142 = *(v127 + 11);
  *(v126 + 80) = *(v127 + 10);
  *(v126 + 88) = v142;

  *(v126 + 96) = v127[96];
  v143 = *(v126 + 104);
  *(v126 + 104) = *(v127 + 13);

  v144 = *(v126 + 112);
  v145 = *(v127 + 14);
  if (!v144)
  {
LABEL_129:
    v160 = *(v127 + 12);
    *(v126 + 176) = *(v127 + 11);
    *(v126 + 192) = v160;
    *(v126 + 208) = *(v127 + 13);
    v161 = *(v127 + 8);
    *(v126 + 112) = *(v127 + 7);
    *(v126 + 128) = v161;
    v162 = *(v127 + 10);
    *(v126 + 144) = *(v127 + 9);
    *(v126 + 160) = v162;
    goto LABEL_130;
  }

  if (!v145)
  {
    sub_21D30DA04(v126 + 112);
    goto LABEL_129;
  }

  *(v126 + 112) = v145;

  v146 = *(v126 + 120);
  *(v126 + 120) = *(v127 + 15);

  v147 = *(v127 + 17);
  *(v126 + 128) = *(v127 + 16);
  *(v126 + 136) = v147;

  v148 = *(v127 + 19);
  *(v126 + 144) = *(v127 + 18);
  *(v126 + 152) = v148;

  v149 = *(v127 + 21);
  *(v126 + 160) = *(v127 + 20);
  *(v126 + 168) = v149;

  v150 = *(v127 + 23);
  *(v126 + 176) = *(v127 + 22);
  *(v126 + 184) = v150;

  v151 = *(v127 + 25);
  *(v126 + 192) = *(v127 + 24);
  *(v126 + 200) = v151;

  *(v126 + 208) = v127[208];
  v152 = *(v126 + 216);
  *(v126 + 216) = *(v127 + 27);

LABEL_130:
  *(v126 + 224) = *(v127 + 28);
LABEL_131:
  v163 = v41[35];
  v164 = &a1[v163];
  v165 = &a2[v163];
  *v164 = a2[v163];
  *(v164 + 1) = *&a2[v163 + 8];

  *(v164 + 2) = *(v165 + 2);

  a1[v41[36]] = a2[v41[36]];
  v166 = v41[37];
  v167 = &a1[v166];
  v168 = &a2[v166];
  v169 = *&a1[v166 + 8];
  if (v169 != 1)
  {
    v170 = v168[1];
    if (v170 == 1)
    {
      sub_21D30DB00(v167);
    }

    else if (v169)
    {
      if (v170)
      {
        *v167 = *v168;
        v167[1] = v170;

        v171 = v168[3];
        v167[2] = v168[2];
        v167[3] = v171;

        goto LABEL_139;
      }

      sub_21D0CF7E0(v167, &qword_27CE5A6F0);
    }
  }

  v172 = *(v168 + 1);
  *v167 = *v168;
  *(v167 + 1) = v172;
LABEL_139:
  v173 = v41[38];
  v174 = &a1[v173];
  v175 = &a2[v173];
  v176 = *&a1[v173];
  if (!v176)
  {
LABEL_143:
    *v174 = *v175;
    *(v174 + 16) = *(v175 + 2);
    goto LABEL_144;
  }

  if (!*v175)
  {
    sub_21D30DB54(v174);
    goto LABEL_143;
  }

  *v174 = *v175;

  v177 = *(v175 + 2);
  *(v174 + 8) = *(v175 + 1);
  *(v174 + 16) = v177;

LABEL_144:
  v178 = v41[39];
  v179 = &a1[v178];
  v180 = &a2[v178];
  v182 = *v180;
  v181 = v180[1];
  *v179 = v182;
  v179[1] = v181;

  a1[v41[40]] = a2[v41[40]];
  a1[v41[41]] = a2[v41[41]];
  v183 = v41[42];
  v184 = *&a1[v183];
  *&a1[v183] = *&a2[v183];

  *&a1[v41[43]] = *&a2[v41[43]];
  a1[v41[45]] = a2[v41[45]];
  v185 = *(a3 + 20);
  v186 = *&a1[v185];
  *&a1[v185] = *&a2[v185];

  return a1;
}

uint64_t sub_21D310D20()
{
  result = type metadata accessor for TTRRemindersListViewModel.Reminder(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void sub_21D310DB8(void *a1, uint64_t a2)
{
  v3 = a1;
  v17 = NSAttributedString.validatedReminderTitle()();
  isa = v17.title.super.isa;
  isValid = v17.isValid;

  if (!isValid)
  {

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v11 = *(Strong + 80);
    v12 = *(a2 + *(type metadata accessor for TTRISubtaskListViewModel.Subtask() + 20));
    v13 = *(v11 + 40);
    ObjectType = swift_getObjectType();
    (*(v13 + 296))(v12, ObjectType, v13);
    goto LABEL_8;
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = *(v5 + 80);
    v7 = *(a2 + *(type metadata accessor for TTRISubtaskListViewModel.Subtask() + 20));
    v8 = *(v6 + 40);
    v9 = swift_getObjectType();
    (*(v8 + 304))(isa, v7, v9, v8);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_21D305348(a2);

LABEL_8:

    swift_unknownObjectRelease();
    return;
  }
}

void sub_21D310F48(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return;
  }

  v4 = a1;
  v18 = NSAttributedString.validatedReminderTitle()();
  isa = v18.title.super.isa;
  isValid = v18.isValid;

  if (!isValid)
  {

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v12 = *(Strong + 80);
    v13 = *(a2 + *(type metadata accessor for TTRISubtaskListViewModel.Subtask() + 20));
    v14 = *(v12 + 40);
    ObjectType = swift_getObjectType();
    (*(v14 + 296))(v13, ObjectType, v14);
    goto LABEL_8;
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = *(v6 + 80);
    v8 = *(a2 + *(type metadata accessor for TTRISubtaskListViewModel.Subtask() + 20));
    v9 = *(v7 + 40);
    v10 = swift_getObjectType();
    (*(v9 + 304))(isa, v8, v10, v9);

LABEL_8:

    swift_unknownObjectRelease();
    return;
  }
}

id TTRISubtaskListAssembly.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRISubtaskListAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRISubtaskListAssembly();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TTRISubtaskListAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRISubtaskListAssembly();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21D3111C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[3] = type metadata accessor for TTRISubtaskListRouter();
  v18[4] = &off_282EB1098;
  v18[0] = a2;
  *(a3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 176) = 0;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = a1;
  *(a3 + 88) = &off_282EB1280;
  sub_21D0D32E4(v18, a3 + 96);
  v6 = type metadata accessor for TTRISubtaskListEditingPresenter();
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 160) = v6;
  *(a3 + 168) = &off_282EB1268;
  *(a3 + 136) = v7;
  *(v7 + 24) = &off_282EB1140;
  swift_unknownObjectWeakAssign();

  v8 = sub_21D30484C();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  __swift_destroy_boxed_opaque_existential_0(v18);
  v15 = *(a3 + 48);
  v16 = *(a3 + 56);
  *(a3 + 48) = v8;
  *(a3 + 56) = v10;
  *(a3 + 64) = v12;
  *(a3 + 72) = v14;
  sub_21D24A814(v15, v16);
  return a3;
}

id sub_21D3112FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TTRISubtaskListInteractor();
  v7 = swift_allocObject();
  v7[3] = 0;
  swift_unknownObjectWeakInit();
  v7[4] = a1;
  v7[5] = a2;
  v8 = type metadata accessor for TTRISubtaskListRouter();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v26[3] = v8;
  v26[4] = &off_282EB1098;
  v26[0] = v9;
  type metadata accessor for TTRISubtaskListPresenter();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v26, v8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v12);
  v16 = *v14;
  swift_unknownObjectRetain();

  v17 = sub_21D3111C8(v7, v16, v10);
  __swift_destroy_boxed_opaque_existential_0(v26);
  v18 = type metadata accessor for TTRISubtaskListViewController();
  v19 = objc_allocWithZone(v18);
  v20 = &v19[OBJC_IVAR____TtC15RemindersUICore29TTRISubtaskListViewController_viewModel];
  *v20 = 0u;
  v20[1] = 0u;
  v21 = &v19[OBJC_IVAR____TtC15RemindersUICore29TTRISubtaskListViewController_presenter];
  *v21 = v17;
  v21[1] = &off_282EB1180;
  v19[OBJC_IVAR____TtC15RemindersUICore29TTRISubtaskListViewController_textViewNeedsSizeUpdate] = 0;
  v25.receiver = v19;
  v25.super_class = v18;

  v22 = objc_msgSendSuper2(&v25, sel_initWithStyle_, 0);
  v7[3] = &off_282EB1170;
  swift_unknownObjectWeakAssign();

  *(v17 + 24) = &off_282EB1448;
  swift_unknownObjectWeakAssign();
  *(v17 + 40) = a4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();

  return v22;
}

uint64_t sub_21D31157C()
{
  sub_21D157444(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_21D3115E0(int a1, void *a2)
{
  v3 = v2;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_21D1826C4(v13, v12);
  type metadata accessor for TTRReminderEditor();
  v6 = swift_allocObject();
  *(v6 + 72) = 0;
  *(v6 + 16) = a2;
  sub_21D1826C4(v12, v6 + 24);
  *(v6 + 64) = 0;
  v7 = [a2 fetchedCurrentDueDateDeltaAlert];
  sub_21D311700(v13);
  sub_21D311700(v12);
  *(v6 + 72) = v7;
  TTRReminderEditor.edit(completed:trackEditedUsing:)(a1, 0);
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v8 = *(v3 + 40);
  ObjectType = swift_getObjectType();
  v10 = (*(v8 + 16))(ObjectType, v8);
  sub_21D305824();

  return swift_unknownObjectRelease();
}

uint64_t sub_21D311700(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60D80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TTRSECreateRemindersSuggestedReminder.title.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRSECreateRemindersSuggestedReminder.init(objectID:title:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t static TTRSECreateRemindersSuggestedReminder.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D1B2ABC();
  if ((sub_21DBFB63C() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_21DBFC64C();
}

uint64_t sub_21D311858(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D1B2ABC();
  if ((sub_21DBFB63C() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_21DBFC64C();
}

uint64_t destroy for TTRRemindersListViewModel.AppLink(id *a1)
{
}

void *sub_21D311940(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = *(a2 + 16);
  v5 = v3;
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRRemindersListViewModel.AppLink(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRRemindersListViewModel.AppLink(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a2[2];
  *(a1 + 8) = a2[1];
  *(a1 + 16) = v5;

  return a1;
}

uint64_t sub_21D311A40(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for TTRIReminderDetailRecurrenceEndTableViewController.Argument(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v2[OBJC_IVAR____TtC15RemindersUICore50TTRIReminderDetailRecurrenceEndTableViewController_delegate];
  *&v2[OBJC_IVAR____TtC15RemindersUICore50TTRIReminderDetailRecurrenceEndTableViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC15RemindersUICore50TTRIReminderDetailRecurrenceEndTableViewController_tableDataController] = 0;
  v9 = OBJC_IVAR____TtC15RemindersUICore50TTRIReminderDetailRecurrenceEndTableViewController_recurrenceEndModel;
  v10 = type metadata accessor for TTRRecurrenceEndModel(0);
  result = (*(*(v10 - 8) + 56))(&v2[v9], 1, 1, v10);
  *&v2[OBJC_IVAR____TtC15RemindersUICore50TTRIReminderDetailRecurrenceEndTableViewController____lazy_storage___repeatForeverCell] = 0;
  *&v2[OBJC_IVAR____TtC15RemindersUICore50TTRIReminderDetailRecurrenceEndTableViewController____lazy_storage___endRepeatDateCell] = 0;
  *&v2[OBJC_IVAR____TtC15RemindersUICore50TTRIReminderDetailRecurrenceEndTableViewController____lazy_storage___endDatePickerCell] = 0;
  if (qword_280D19D68 != -1)
  {
    result = swift_once();
  }

  v12 = *(off_280D19D70 + 2);
  if (v12)
  {
    sub_21D0CEB98(off_280D19D70 + 32 * v12, v15);
    swift_dynamicCast();
    swift_beginAccess();
    sub_21D313BC4(v7, &v2[v9]);
    swift_endAccess();
    *(v8 + 1) = *&v7[*(v5 + 20) + 8];
    swift_unknownObjectWeakAssign();
    v14.receiver = v2;
    v14.super_class = ObjectType;
    v13 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);

    sub_21D313C64(v7, type metadata accessor for TTRIReminderDetailRecurrenceEndTableViewController.Argument);
    if (v13)
    {
    }

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21D311C98()
{
  v18.receiver = v0;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, sel_viewDidLoad);
  v1 = [v0 tableView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = [v0 tableView];
  if (!v2)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58718);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21DC08D00;
  memset(v17, 0, 73);
  memset(v16, 0, 73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EB30);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21DC08D10;
  v6 = v3;
  *(v5 + 32) = sub_21D311FC4(&OBJC_IVAR____TtC15RemindersUICore50TTRIReminderDetailRecurrenceEndTableViewController____lazy_storage___repeatForeverCell, sub_21D312AA4);
  *(v5 + 40) = &protocol witness table for TTRITableCell<A>;
  *(v5 + 48) = sub_21D311FC4(&OBJC_IVAR____TtC15RemindersUICore50TTRIReminderDetailRecurrenceEndTableViewController____lazy_storage___endRepeatDateCell, sub_21D312EEC);
  *(v5 + 56) = &protocol witness table for TTRITableCell<A>;
  *(v5 + 64) = sub_21D311FC4(&OBJC_IVAR____TtC15RemindersUICore50TTRIReminderDetailRecurrenceEndTableViewController____lazy_storage___endDatePickerCell, sub_21D3133F8);
  *(v5 + 72) = &protocol witness table for TTRITableCell<A>;
  type metadata accessor for TTRITableSection();
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 200) = 0;
  *(v7 + 208) = 0;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 89) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0u;
  *(v7 + 160) = 0u;
  *(v7 + 169) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 216) = 1;
  swift_beginAccess();
  sub_21D313A24(v17, v7 + 32);
  swift_endAccess();
  swift_beginAccess();
  sub_21D313A24(v16, v7 + 112);
  swift_endAccess();
  *(v7 + 192) = v5;
  *(v4 + 32) = v7;
  *(v4 + 40) = &protocol witness table for TTRITableSection;
  v8 = sub_21D5E8D34(v6, v4, 6, 0);

  v9 = *&v0[OBJC_IVAR____TtC15RemindersUICore50TTRIReminderDetailRecurrenceEndTableViewController_tableDataController];
  *&v0[OBJC_IVAR____TtC15RemindersUICore50TTRIReminderDetailRecurrenceEndTableViewController_tableDataController] = v8;
  v10 = v8;

  v11 = [v0 tableView];
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = v11;
  [v11 setDelegate_];

  v13 = [v0 tableView];
  if (v13)
  {
    v14 = v13;
    [v13 setDataSource_];

    LOBYTE(v17[0].receiver) = 2;
    v15 = v0;
    sub_21DBE0A34(v17, v10, v15);

    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_21D311FC4(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_21D31202C(uint64_t a1)
{
  v2 = type metadata accessor for TTRICalendarPickerCellContentState(0);
  MEMORY[0x28223BE20](v2 - 8);
  v86 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_21DBF563C();
  v85 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v84 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v84 - v6;
  v8 = type metadata accessor for TTRRecurrenceEndModel(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v88 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v84 - v12;
  sub_21D3139B4(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_21D0CF7E0(v7, &unk_27CE62610);
    v14 = *(sub_21D311FC4(&OBJC_IVAR____TtC15RemindersUICore50TTRIReminderDetailRecurrenceEndTableViewController____lazy_storage___repeatForeverCell, sub_21D312AA4) + 32);

    v15 = MEMORY[0x277D85000];
    v16 = v14 + *((*MEMORY[0x277D85000] & *v14) + 0x78);
    swift_beginAccess();
    v17 = *(v16 + 1);
    v90 = *v16;
    v91 = v17;
    v18 = *(v16 + 2);
    v19 = *(v16 + 3);
    v20 = *(v16 + 5);
    v94 = *(v16 + 4);
    v95 = v20;
    v92 = v18;
    v93 = v19;
    v21 = *(v16 + 6);
    v22 = *(v16 + 7);
    v23 = *(v16 + 9);
    v98 = *(v16 + 8);
    v99 = v23;
    v96 = v21;
    v97 = v22;
    v24 = *(v16 + 10);
    v25 = *(v16 + 11);
    v26 = *(v16 + 12);
    v103 = *(v16 + 26);
    v101 = v25;
    v102 = v26;
    v100 = v24;
    v27 = *(v16 + 7);
    v138 = *(v16 + 6);
    v139 = v27;
    v140 = *(v16 + 8);
    v28 = *(v16 + 3);
    v134 = *(v16 + 2);
    v135 = v28;
    v29 = *(v16 + 5);
    v136 = *(v16 + 4);
    v137 = v29;
    v30 = *(v16 + 1);
    v132 = *v16;
    v133 = v30;
    v141 = 1;
    v143 = *(v16 + 161);
    v144 = *(v16 + 177);
    v145[0] = *(v16 + 193);
    *(v145 + 15) = *(v16 + 26);
    v142 = *(v16 + 145);
    sub_21D313A94(&v90, &v118);
    sub_21D5C62E8(&v132);

    v31 = *(sub_21D311FC4(&OBJC_IVAR____TtC15RemindersUICore50TTRIReminderDetailRecurrenceEndTableViewController____lazy_storage___endRepeatDateCell, sub_21D312EEC) + 32);

    v32 = v31 + *((*v15 & *v31) + 0x78);
    swift_beginAccess();
    v33 = *(v32 + 1);
    v104 = *v32;
    v105 = v33;
    v34 = *(v32 + 2);
    v35 = *(v32 + 3);
    v36 = *(v32 + 5);
    v108 = *(v32 + 4);
    v109 = v36;
    v106 = v34;
    v107 = v35;
    v37 = *(v32 + 6);
    v38 = *(v32 + 7);
    v39 = *(v32 + 9);
    v112 = *(v32 + 8);
    v113 = v39;
    v110 = v37;
    v111 = v38;
    v40 = *(v32 + 10);
    v41 = *(v32 + 11);
    v42 = *(v32 + 12);
    v117 = *(v32 + 26);
    v115 = v41;
    v116 = v42;
    v114 = v40;
    v123 = *(v32 + 5);
    v124 = *(v32 + 6);
    v125 = *(v32 + 7);
    v126 = *(v32 + 8);
    v119 = *(v32 + 1);
    v120 = *(v32 + 2);
    v121 = *(v32 + 3);
    v122 = *(v32 + 4);
    v118 = *v32;
    v127 = 0;
    v129 = *(v32 + 161);
    v130 = *(v32 + 177);
    *v131 = *(v32 + 193);
    *&v131[15] = *(v32 + 26);
    v128 = *(v32 + 145);
    sub_21D313A94(&v104, v89);
    sub_21D5C62E8(&v118);

    v43 = 1;
  }

  else
  {
    sub_21D313AF0(v7, v13);
    v44 = *(sub_21D311FC4(&OBJC_IVAR____TtC15RemindersUICore50TTRIReminderDetailRecurrenceEndTableViewController____lazy_storage___repeatForeverCell, sub_21D312AA4) + 32);

    v45 = MEMORY[0x277D85000];
    v46 = v44 + *((*MEMORY[0x277D85000] & *v44) + 0x78);
    swift_beginAccess();
    v47 = *(v46 + 1);
    v90 = *v46;
    v91 = v47;
    v48 = *(v46 + 2);
    v49 = *(v46 + 3);
    v50 = *(v46 + 5);
    v94 = *(v46 + 4);
    v95 = v50;
    v92 = v48;
    v93 = v49;
    v51 = *(v46 + 6);
    v52 = *(v46 + 7);
    v53 = *(v46 + 9);
    v98 = *(v46 + 8);
    v99 = v53;
    v96 = v51;
    v97 = v52;
    v54 = *(v46 + 10);
    v55 = *(v46 + 11);
    v56 = *(v46 + 12);
    v103 = *(v46 + 26);
    v101 = v55;
    v102 = v56;
    v100 = v54;
    v57 = *(v46 + 7);
    v138 = *(v46 + 6);
    v139 = v57;
    v140 = *(v46 + 8);
    v58 = *(v46 + 3);
    v134 = *(v46 + 2);
    v135 = v58;
    v59 = *(v46 + 5);
    v136 = *(v46 + 4);
    v137 = v59;
    v60 = *(v46 + 1);
    v132 = *v46;
    v133 = v60;
    v141 = 0;
    v143 = *(v46 + 161);
    v144 = *(v46 + 177);
    v145[0] = *(v46 + 193);
    *(v145 + 15) = *(v46 + 26);
    v142 = *(v46 + 145);
    sub_21D313A94(&v90, &v118);
    sub_21D5C62E8(&v132);

    v61 = *(sub_21D311FC4(&OBJC_IVAR____TtC15RemindersUICore50TTRIReminderDetailRecurrenceEndTableViewController____lazy_storage___endRepeatDateCell, sub_21D312EEC) + 32);

    v62 = v61 + *((*v45 & *v61) + 0x78);
    swift_beginAccess();
    v63 = *(v62 + 1);
    v104 = *v62;
    v105 = v63;
    v64 = *(v62 + 2);
    v65 = *(v62 + 3);
    v66 = *(v62 + 5);
    v108 = *(v62 + 4);
    v109 = v66;
    v106 = v64;
    v107 = v65;
    v67 = *(v62 + 6);
    v68 = *(v62 + 7);
    v69 = *(v62 + 9);
    v112 = *(v62 + 8);
    v113 = v69;
    v110 = v67;
    v111 = v68;
    v70 = *(v62 + 10);
    v71 = *(v62 + 11);
    v72 = *(v62 + 12);
    v117 = *(v62 + 26);
    v115 = v71;
    v116 = v72;
    v114 = v70;
    v123 = *(v62 + 5);
    v124 = *(v62 + 6);
    v125 = *(v62 + 7);
    v126 = *(v62 + 8);
    v119 = *(v62 + 1);
    v120 = *(v62 + 2);
    v121 = *(v62 + 3);
    v122 = *(v62 + 4);
    v118 = *v62;
    v127 = 1;
    v129 = *(v62 + 161);
    v130 = *(v62 + 177);
    *v131 = *(v62 + 193);
    *&v131[15] = *(v62 + 26);
    v128 = *(v62 + 145);
    sub_21D313A94(&v104, v89);
    sub_21D5C62E8(&v118);

    v73 = v88;
    sub_21D313B54(v13, v88, type metadata accessor for TTRRecurrenceEndModel);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v43 = EnumCaseMultiPayload == 1;
    if (EnumCaseMultiPayload != 1)
    {
      v75 = v85;
      v76 = v45;
      v77 = v84;
      v78 = v87;
      (*(v85 + 32))(v84, v73, v87);
      v79 = *(sub_21D311FC4(&OBJC_IVAR____TtC15RemindersUICore50TTRIReminderDetailRecurrenceEndTableViewController____lazy_storage___endDatePickerCell, sub_21D3133F8) + 32);

      v80 = *((*v76 & *v79) + 0x78);
      swift_beginAccess();
      v81 = v79 + v80;
      v82 = v86;
      sub_21D313B54(v81, v86, type metadata accessor for TTRICalendarPickerCellContentState);
      (*(v75 + 24))(v82, v77, v78);
      sub_21D5C665C(v82);

      (*(v75 + 8))(v77, v78);
    }

    sub_21D313C64(v13, type metadata accessor for TTRRecurrenceEndModel);
  }

  sub_21D311FC4(&OBJC_IVAR____TtC15RemindersUICore50TTRIReminderDetailRecurrenceEndTableViewController____lazy_storage___endDatePickerCell, sub_21D3133F8);
  sub_21D5D3E3C(v43);
}

uint64_t sub_21D312944(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
  *&v5 = MEMORY[0x28223BE20](v4 - 8).n128_u64[0];
  v7 = &v10 - v6;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, sel_viewWillDisappear_, a1 & 1, v5);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = OBJC_IVAR____TtC15RemindersUICore50TTRIReminderDetailRecurrenceEndTableViewController_recurrenceEndModel;
    swift_beginAccess();
    sub_21D3139B4(v1 + v9, v7);
    sub_21D457FD4(v7);
    swift_unknownObjectRelease();
    return sub_21D0CF7E0(v7, &unk_27CE62610);
  }

  return result;
}

uint64_t sub_21D312AA4()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v0 = sub_21DBF516C();
  v2 = v1;
  memset(v31, 0, 24);
  v31[3] = 0x1FFFFFFFELL;
  v32 = 0u;
  v33 = 0u;
  v34 = 0;
  sub_21D0CF7E0(v31, &unk_27CE5EA00);
  memset(v13, 0, 24);
  v13[3] = 0x1FFFFFFFELL;
  v14 = 0u;
  v15 = 0u;
  v16 = 0;
  v17 = v0;
  v18 = v2;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0xE000000000000000;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v26 = 0;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = objc_allocWithZone(type metadata accessor for TTRIDetailCellContent(0));
  v4 = sub_21DA87B30(0, 0x65436C6961746544, 0xEA00000000006C6CLL, 0, v13);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = MEMORY[0x277D85000];
  v7 = (v4 + *((*MEMORY[0x277D85000] & *v4) + 0x108));
  swift_beginAccess();
  v8 = *v7;
  *v7 = sub_21D313C3C;
  v7[1] = v5;
  v9 = v4;

  sub_21D0D0E88(v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A750);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v10 + 48) = 1;
  *(v10 + 49) = 0;
  *(v10 + 56) = 0;
  *(v10 + 64) = 0;
  *(v10 + 72) = 1;
  *(v10 + 32) = v9;
  *(v10 + 40) = 0;
  v11 = v9 + *((*v6 & *v9) + 0x70);
  swift_beginAccess();
  *(v11 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v10;
}

uint64_t sub_21D312D7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10[-v1];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for TTRRecurrenceEndModel(0);
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = OBJC_IVAR____TtC15RemindersUICore50TTRIReminderDetailRecurrenceEndTableViewController_recurrenceEndModel;
    swift_beginAccess();
    sub_21D313BC4(v2, &v4[v6]);
    result = swift_endAccess();
    v7 = *&v4[OBJC_IVAR____TtC15RemindersUICore50TTRIReminderDetailRecurrenceEndTableViewController_tableDataController];
    if (v7)
    {
      v10[0] = 1;
      v8 = v4;
      v9 = v7;
      sub_21DBE0A34(v10, v9, v8);

      return sub_21D0CF7E0(v2, &unk_27CE62610);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21D312EEC()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v0 = sub_21DBF516C();
  v2 = v1;
  memset(v31, 0, 24);
  v31[3] = 0x1FFFFFFFELL;
  v32 = 0u;
  v33 = 0u;
  v34 = 0;
  sub_21D0CF7E0(v31, &unk_27CE5EA00);
  memset(v13, 0, 24);
  v13[3] = 0x1FFFFFFFELL;
  v14 = 0u;
  v15 = 0u;
  v16 = 0;
  v17 = v0;
  v18 = v2;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0xE000000000000000;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v26 = 0;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = objc_allocWithZone(type metadata accessor for TTRIDetailCellContent(0));
  v4 = sub_21DA87B30(0, 0x65436C6961746544, 0xEA00000000006C6CLL, 0, v13);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = MEMORY[0x277D85000];
  v7 = (v4 + *((*MEMORY[0x277D85000] & *v4) + 0x108));
  swift_beginAccess();
  v8 = *v7;
  *v7 = sub_21D313C34;
  v7[1] = v5;
  v9 = v4;

  sub_21D0D0E88(v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A750);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v10 + 48) = 1;
  *(v10 + 49) = 0;
  *(v10 + 56) = 0;
  *(v10 + 64) = 0;
  *(v10 + 72) = 1;
  *(v10 + 32) = v9;
  *(v10 + 40) = 0;
  v11 = v9 + *((*v6 & *v9) + 0x70);
  swift_beginAccess();
  *(v11 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v10;
}

uint64_t sub_21D3131C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14[-v1 - 8];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *(sub_21D311FC4(&OBJC_IVAR____TtC15RemindersUICore50TTRIReminderDetailRecurrenceEndTableViewController____lazy_storage___endDatePickerCell, sub_21D3133F8) + 32);

    v6 = *((*MEMORY[0x277D85000] & *v5) + 0x78);
    swift_beginAccess();
    v7 = sub_21DBF563C();
    (*(*(v7 - 8) + 16))(v2, &v5[v6], v7);

    v8 = type metadata accessor for TTRRecurrenceEndModel(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v8 - 8) + 56))(v2, 0, 1, v8);
    v9 = OBJC_IVAR____TtC15RemindersUICore50TTRIReminderDetailRecurrenceEndTableViewController_recurrenceEndModel;
    swift_beginAccess();
    sub_21D313BC4(v2, &v4[v9]);
    result = swift_endAccess();
    v10 = *&v4[OBJC_IVAR____TtC15RemindersUICore50TTRIReminderDetailRecurrenceEndTableViewController_tableDataController];
    if (v10)
    {
      v14[0] = 1;
      v11 = v4;
      v12 = v10;
      sub_21DBE0A34(v14, v12, v11);

      return sub_21D0CF7E0(v2, &unk_27CE62610);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21D3133F8()
{
  v0 = type metadata accessor for TTRICalendarPickerCellContentState(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v11[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  sub_21DBF5C3C();
  v3 = objc_allocWithZone(type metadata accessor for TTRICalendarPickerCellContent(0));
  v4 = TTRICalendarPickerCellContent.init(state:)(v2);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = (v4 + qword_27CE8ED38);
  swift_beginAccess();
  v7 = *v6;
  *v6 = sub_21D313BBC;
  v6[1] = v5;

  sub_21D0D0E88(v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A748);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + 48) = 1;
  *(v8 + 49) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 72) = 1;
  *(v8 + 32) = v4;
  *(v8 + 40) = 0;
  v9 = v4 + *((*MEMORY[0x277D85000] & *v4) + 0x70);
  swift_beginAccess();
  *(v9 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v8;
}

uint64_t sub_21D3135CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13[-v3];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_21DBF563C();
    (*(*(v7 - 8) + 16))(v4, a1, v7);
    v8 = type metadata accessor for TTRRecurrenceEndModel(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
    v9 = OBJC_IVAR____TtC15RemindersUICore50TTRIReminderDetailRecurrenceEndTableViewController_recurrenceEndModel;
    swift_beginAccess();
    sub_21D313BC4(v4, &v6[v9]);
    result = swift_endAccess();
    v10 = *&v6[OBJC_IVAR____TtC15RemindersUICore50TTRIReminderDetailRecurrenceEndTableViewController_tableDataController];
    if (v10)
    {
      v13[0] = 1;
      v11 = v6;
      v12 = v10;
      sub_21DBE0A34(v13, v12, v11);

      return sub_21D0CF7E0(v4, &unk_27CE62610);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_21D3138B4()
{
  sub_21D31395C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21D31395C()
{
  if (!qword_280D1A0B0)
  {
    type metadata accessor for TTRRecurrenceEndModel(255);
    v0 = sub_21DBFBA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_280D1A0B0);
    }
  }
}

uint64_t sub_21D3139B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D313A24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E690);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D313AF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRecurrenceEndModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D313B54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D313BC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D313C64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *sub_21D313CC4(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
    v7 = type metadata accessor for TTRRecurrenceEndModel(0);
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(a1, a2, *(v8 + 64));
      }

      else
      {
        v11 = sub_21DBF563C();
        (*(*(v11 - 8) + 16))(a1, a2, v11);
        swift_storeEnumTagMultiPayload();
      }

      (*(v8 + 56))(a1, 0, 1, v7);
    }

    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    swift_unknownObjectRetain();
  }

  return a1;
}

uint64_t sub_21D313E98(uint64_t a1)
{
  v2 = type metadata accessor for TTRRecurrenceEndModel(0);
  if (!(*(*(v2 - 8) + 48))(a1, 1, v2) && !swift_getEnumCaseMultiPayload())
  {
    v3 = sub_21DBF563C();
    (*(*(v3 - 8) + 8))(a1, v3);
  }

  return swift_unknownObjectRelease();
}

char *sub_21D313F68(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRecurrenceEndModel(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a1, a2, *(v7 + 64));
    }

    else
    {
      v9 = sub_21DBF563C();
      (*(*(v9 - 8) + 16))(a1, a2, v9);
      swift_storeEnumTagMultiPayload();
    }

    (*(v7 + 56))(a1, 0, 1, v6);
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  swift_unknownObjectRetain();
  return a1;
}

char *sub_21D3140F0(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRecurrenceEndModel(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      if (a1 == a2)
      {
        goto LABEL_14;
      }

      sub_21D313C64(a1, type metadata accessor for TTRRecurrenceEndModel);
      if (!swift_getEnumCaseMultiPayload())
      {
        v18 = sub_21DBF563C();
        (*(*(v18 - 8) + 16))(a1, a2, v18);
        swift_storeEnumTagMultiPayload();
        goto LABEL_14;
      }

      v11 = *(v7 + 64);
      goto LABEL_8;
    }

    sub_21D313C64(a1, type metadata accessor for TTRRecurrenceEndModel);
LABEL_7:
    v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610) - 8) + 64);
LABEL_8:
    memcpy(a1, a2, v11);
    goto LABEL_14;
  }

  if (v10)
  {
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a1, a2, *(v7 + 64));
  }

  else
  {
    v12 = sub_21DBF563C();
    (*(*(v12 - 8) + 16))(a1, a2, v12);
    swift_storeEnumTagMultiPayload();
  }

  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_14:
  v13 = *(a3 + 20);
  v14 = &a1[v13];
  v15 = &a2[v13];
  v16 = *(v15 + 1);
  *v14 = *v15;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v14 + 1) = v16;
  return a1;
}

char *sub_21D314360(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRecurrenceEndModel(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a1, a2, *(v7 + 64));
    }

    else
    {
      v9 = sub_21DBF563C();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      swift_storeEnumTagMultiPayload();
    }

    (*(v7 + 56))(a1, 0, 1, v6);
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

char *sub_21D3144E0(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRecurrenceEndModel(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      if (a1 == a2)
      {
        goto LABEL_14;
      }

      sub_21D313C64(a1, type metadata accessor for TTRRecurrenceEndModel);
      if (!swift_getEnumCaseMultiPayload())
      {
        v18 = sub_21DBF563C();
        (*(*(v18 - 8) + 32))(a1, a2, v18);
        swift_storeEnumTagMultiPayload();
        goto LABEL_14;
      }

      v11 = *(v7 + 64);
      goto LABEL_8;
    }

    sub_21D313C64(a1, type metadata accessor for TTRRecurrenceEndModel);
LABEL_7:
    v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610) - 8) + 64);
LABEL_8:
    memcpy(a1, a2, v11);
    goto LABEL_14;
  }

  if (v10)
  {
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a1, a2, *(v7 + 64));
  }

  else
  {
    v12 = sub_21DBF563C();
    (*(*(v12 - 8) + 32))(a1, a2, v12);
    swift_storeEnumTagMultiPayload();
  }

  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_14:
  v13 = *(a3 + 20);
  v14 = &a1[v13];
  v15 = &a2[v13];
  v16 = *(v15 + 1);
  *v14 = *v15;
  swift_unknownObjectRelease();
  *(v14 + 1) = v16;
  return a1;
}

void sub_21D314770()
{
  sub_21D31395C();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_21D314804()
{
  v1 = v0;
  v2 = v0[OBJC_IVAR____TtC15RemindersUICore29TTRISubtaskListAddSubtaskCell_isForGroceries];
  v3 = [v1 textLabel];
  v4 = v3;
  if (v2 == 1)
  {
    if (!v3)
    {
      return;
    }

    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v5 = 0x800000021DC4A0C0;
  }

  else
  {
    if (!v3)
    {
      return;
    }

    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v5 = 0x800000021DC4A070;
  }

  sub_21DBF516C();
  v6 = sub_21DBFA12C();

  [v4 setText_];
}

id sub_21D3149DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[OBJC_IVAR____TtC15RemindersUICore29TTRISubtaskListAddSubtaskCell_isForGroceries] = 0;
  if (a3)
  {
    v5 = sub_21DBFA12C();
  }

  else
  {
    v5 = 0;
  }

  v15.receiver = v3;
  v15.super_class = type metadata accessor for TTRISubtaskListAddSubtaskCell();
  v6 = objc_msgSendSuper2(&v15, sel_initWithStyle_reuseIdentifier_, a1, v5);

  v7 = v6;
  v8 = [v7 textLabel];
  if (v8)
  {
    v9 = v8;
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v10 = sub_21DBFA12C();

    [v9 setText_];
  }

  v11 = [v7 textLabel];
  if (v11)
  {
    v12 = v11;
    if (qword_280D176B8 != -1)
    {
      swift_once();
    }

    v13 = sub_21D900614(1);
    [v12 setFont_];
  }

  [v7 setSeparatorInset_];

  [v7 setNeedsLayout];
  return v7;
}

void sub_21D314CCC()
{
  v30.receiver = v0;
  v30.super_class = type metadata accessor for TTRISubtaskListAddSubtaskCell();
  objc_msgSendSuper2(&v30, sel_layoutSubviews);
  v1 = [v0 textLabel];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 contentView];
    [v3 directionalLayoutMargins];
    v5 = v4;

    v6 = v5 + 36.0;
    v7 = v2;
    [v7 frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [v0 effectiveUserInterfaceLayoutDirection];
    v15 = [v0 contentView];
    [v15 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v31.origin.x = v17;
    v31.origin.y = v19;
    v31.size.width = v21;
    v31.size.height = v23;
    Width = CGRectGetWidth(v31);
    if (!v14)
    {
LABEL_5:
      [v7 setFrame_];

      v27 = [v0 tintColor];
      [v7 setTextColor_];

      return;
    }

    if (v14 == 1)
    {
      v25 = Width;
      v32.origin.x = v6;
      v32.origin.y = v9;
      v32.size.width = v11;
      v32.size.height = v13;
      v26 = v25 - CGRectGetMinX(v32);
      v33.origin.x = v6;
      v33.origin.y = v9;
      v33.size.width = v11;
      v33.size.height = v13;
      v6 = v26 - CGRectGetWidth(v33);
      goto LABEL_5;
    }

    if (qword_27CE56F38 != -1)
    {
      swift_once();
    }

    v28 = sub_21DBF84BC();
    __swift_project_value_buffer(v28, qword_27CE64930);
    v29 = MEMORY[0x277D84F90];
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21D17716C(v29);
    sub_21DAEAB00("unknown language direction", 26, 2);
    __break(1u);
  }
}

id sub_21D314F70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRISubtaskListAddSubtaskCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21D314FC8()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5A770);
  v1 = __swift_project_value_buffer(v0, qword_27CE5A770);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_21D3151C8()
{
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, sel_viewDidLoad);
  result = [v0 tableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = result;
  type metadata accessor for TTRIRemindersListReminderCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58E80);
  sub_21DBFA1AC();
  v4 = sub_21DBFA12C();

  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

  result = [v0 tableView];
  if (!result)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  v6 = type metadata accessor for TTRISubtaskListAddSubtaskCell();
  v7 = swift_getObjCClassFromMetadata();
  v23 = v6;
  sub_21DBFA1AC();
  v8 = sub_21DBFA12C();

  [v5 registerClass:v7 forCellReuseIdentifier:v8];

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v9 = sub_21DBFA12C();

  [v0 setTitle_];

  result = [v0 tableView];
  if (!result)
  {
    goto LABEL_11;
  }

  v10 = result;
  v11 = [objc_opt_self() systemGroupedBackgroundColor];
  [v10 setBackgroundColor_];

  result = [v0 tableView];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = result;
  [result setKeyboardDismissMode_];

  v13 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  result = [v0 tableView];
  if (result)
  {
    v14 = result;
    [result setTableFooterView_];

    v15 = *&v0[OBJC_IVAR____TtC15RemindersUICore29TTRISubtaskListViewController_presenter];
    v16 = v15[6];
    v17 = v15[7];
    v18 = v15[8];
    v19 = v15[9];
    v20 = &v0[OBJC_IVAR____TtC15RemindersUICore29TTRISubtaskListViewController_viewModel];
    v21 = *&v0[OBJC_IVAR____TtC15RemindersUICore29TTRISubtaskListViewController_viewModel];
    v22 = *&v0[OBJC_IVAR____TtC15RemindersUICore29TTRISubtaskListViewController_viewModel + 8];
    *v20 = v16;
    v20[1] = v17;
    v20[2] = v18;
    v20[3] = v19;
    sub_21D24A7C4(v16, v17);
    return sub_21D24A814(v21, v22);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_21D31556C()
{
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v9, sel_viewWillLayoutSubviews);
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore29TTRISubtaskListViewController_textViewNeedsSizeUpdate) == 1)
  {
    *(v0 + OBJC_IVAR____TtC15RemindersUICore29TTRISubtaskListViewController_textViewNeedsSizeUpdate) = 0;
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_21D318020;
    *(v4 + 24) = v3;
    v8[4] = sub_21D0E622C;
    v8[5] = v4;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_21D0E6204;
    v8[3] = &block_descriptor_20;
    v5 = _Block_copy(v8);
    v6 = v0;

    [v2 performWithoutAnimation_];
    _Block_release(v5);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_21D315700(void *a1)
{
  v1 = [a1 tableView];
  if (v1)
  {
    v2 = v1;
    v4[4] = nullsub_1;
    v4[5] = 0;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_21D0E6204;
    v4[3] = &block_descriptor_23;
    v3 = _Block_copy(v4);

    [v2 performBatchUpdates:v3 completion:0];
    _Block_release(v3);
  }

  else
  {
    __break(1u);
  }
}

id sub_21D31581C(uint64_t a1)
{
  v3 = sub_21DBF5D5C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*&v1[OBJC_IVAR____TtC15RemindersUICore29TTRISubtaskListViewController_viewModel + 8])
  {
    return 0;
  }

  v7 = *&v1[OBJC_IVAR____TtC15RemindersUICore29TTRISubtaskListViewController_viewModel + 24];
  v8 = *(a1 + *(type metadata accessor for TTRRemindersListViewModel.Reminder(0) + 20));
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v9 = [v8 stringRepresentation];
  v10 = sub_21DBFA16C();
  v12 = v11;

  if (!*(v7 + 16))
  {

    goto LABEL_9;
  }

  v13 = v1;
  v14 = sub_21D0CEF70(v10, v12);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
LABEL_9:

    return 0;
  }

  v17 = *(*(v7 + 56) + 8 * v14);
  result = [v13 tableView];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v19 = result;

  MEMORY[0x223D3E470](v17, 0);
  v20 = sub_21DBF5C6C();
  (*(v4 + 8))(v6, v3);
  v21 = [v19 cellForRowAtIndexPath_];

  if (v21)
  {
    type metadata accessor for TTRIRemindersListReminderCell();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_21D315A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = qword_280D13268;
  swift_beginAccess();
  sub_21D0D3954(a1 + v6, &v29, &unk_27CE5FAD0);
  *&v28[10] = *&v30[10];
  v27 = v29;
  *v28 = *v30;
  if (!v30[25])
  {
    sub_21D0D0FD0(&v27, &v31);
    v7 = *(&v32 + 1);
    if (*(&v32 + 1))
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (v30[25] != 1)
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    goto LABEL_9;
  }

  v31 = v29;
  v32 = *v30;
  v33 = *&v30[16];
  v7 = *&v30[8];
  if (!*&v30[8])
  {
LABEL_9:
    sub_21D0CF7E0(&v31, &unk_27CE5FAE0);
    goto LABEL_15;
  }

LABEL_4:
  v8 = v33;
  v9 = __swift_project_boxed_opaque_existential_1(&v31, v7);
  v10 = *(v7 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  (*(v10 + 16))(v13, v11);
  sub_21D0CF7E0(&v31, &unk_27CE5FAE0);
  v14 = (*(v8 + 24))(v7, v8);
  v16 = v15;
  (*(v10 + 8))(v13, v7);
  if (*(v3 + OBJC_IVAR____TtC15RemindersUICore29TTRISubtaskListViewController_viewModel + 8))
  {
    v17 = *(v3 + OBJC_IVAR____TtC15RemindersUICore29TTRISubtaskListViewController_viewModel + 16);
    v18 = *(v17 + 16);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (v18)
    {
      sub_21DBF8E0C();
      v19 = sub_21D0CEF70(v14, v16);
      v21 = v20;

      if (v21)
      {
        v22 = *(v17 + 56);
        v23 = type metadata accessor for TTRISubtaskListViewModel.Subtask();
        v24 = *(v23 - 8);
        sub_21D317F70(v22 + *(v24 + 72) * v19, a2, type metadata accessor for TTRISubtaskListViewModel.Subtask);

        return (*(v24 + 56))(a2, 0, 1, v23);
      }
    }

    else
    {
    }
  }

LABEL_15:
  v26 = type metadata accessor for TTRISubtaskListViewModel.Subtask();
  return (*(*(v26 - 8) + 56))(a2, 1, 1, v26);
}

char *sub_21D315EE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_21DBF5D5C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRISubtaskListViewModel.Subtask();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v45 - v14;
  v16 = sub_21DBF5CCC();
  v45[1] = v3;
  v17 = v3 + OBJC_IVAR____TtC15RemindersUICore29TTRISubtaskListViewController_viewModel;
  v18 = *(v3 + OBJC_IVAR____TtC15RemindersUICore29TTRISubtaskListViewController_viewModel + 8);
  if (v18)
  {
    if (v16 < *(v18 + 16))
    {
      sub_21DBF8E0C();
      v19 = sub_21DBF5CCC();
      if ((v19 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v19 < *(v18 + 16))
      {
        sub_21D317F70(v18 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v19, v12, type metadata accessor for TTRISubtaskListViewModel.Subtask);

        sub_21D305FB8(v12, v15);
        sub_21D582BCC(a2);
        v21 = v20;
        [v21 setSelectionStyle_];
        v22 = &v21[qword_280D131E0];
        swift_beginAccess();
        *(v22 + 1) = &off_282EB1370;
        swift_unknownObjectWeakAssign();
        v23 = qword_280D132A8;
        swift_beginAccess();
        sub_21D0D3954(&v21[v23], v46, &unk_27CE5F240);
        v24 = v46[0];
        sub_21D0CF7E0(v46, &unk_27CE5F240);
        if (!v24)
        {
          v25 = sub_21D3178F0();
          v27 = v26;
          v29 = v28;
          v46[5] = type metadata accessor for TTRISubtaskListCellTitleViewController();
          v46[1] = v29;
          v46[2] = v25;
          v46[0] = v27;
          swift_unknownObjectRetain();
          v30 = v25;
          TTRIRemindersListReminderCell.titleModule.setter(v46);

          swift_unknownObjectRelease();
        }

        v46[3] = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
        v46[4] = &protocol witness table for TTRRemindersListViewModel.Reminder;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v46);
        sub_21D317F70(v15, boxed_opaque_existential_0, type metadata accessor for TTRRemindersListViewModel.Reminder);
        TTRIRemindersListReminderCell.viewModel.setter(v46);

        sub_21D317A58(v15);
        return v21;
      }

      __break(1u);
      goto LABEL_20;
    }
  }

  else if (v16 < 0)
  {
    if (qword_27CE56600 == -1)
    {
LABEL_13:
      v34 = sub_21DBF84BC();
      __swift_project_value_buffer(v34, qword_27CE5A770);
      v35 = v6;
      (*(v6 + 16))(v8, a2, v5);
      v36 = sub_21DBF84AC();
      v37 = sub_21DBFAECC();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v46[0] = v39;
        *v38 = 136315138;
        sub_21D317FD8(&qword_27CE59FD0, MEMORY[0x277CC9AF8]);
        v40 = sub_21DBFC5BC();
        v42 = v41;
        (*(v35 + 8))(v8, v5);
        v43 = sub_21D0CDFB4(v40, v42, v46);

        *(v38 + 4) = v43;
        _os_log_impl(&dword_21D0C9000, v36, v37, "Unable to get cellViewModel at indexPath - unable to render subtask list cell. {indexPath: %s}", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x223D46520](v39, -1, -1);
        MEMORY[0x223D46520](v38, -1, -1);
      }

      else
      {

        (*(v6 + 8))(v8, v5);
      }

      return [objc_allocWithZone(MEMORY[0x277D75B48]) initWithFrame_];
    }

LABEL_20:
    swift_once();
    goto LABEL_13;
  }

  sub_21D582BE8(a2);
  v21 = v32;
  v33 = *(v17 + 8);
  if (v33)
  {
    LOBYTE(v33) = *v17;
  }

  v32[OBJC_IVAR____TtC15RemindersUICore29TTRISubtaskListAddSubtaskCell_isForGroceries] = v33;
  sub_21D314804();
  return v21;
}

uint64_t sub_21D316564(void *a1)
{
  result = sub_21DBF5CCC();
  v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRISubtaskListViewController_viewModel + 8);
  if (v4)
  {
    if (result < *(v4 + 16))
    {
      return result;
    }
  }

  else if (result < 0)
  {
    return result;
  }

  v5 = sub_21DBF5C6C();
  [a1 deselectRowAtIndexPath:v5 animated:1];

  v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRISubtaskListViewController_presenter);
  v7 = sub_21DBF5CCC();
  v8 = *(*(v6 + 80) + 40);
  ObjectType = swift_getObjectType();
  return (*(v8 + 288))(v7, sub_21D317F68, v6, ObjectType, v8);
}

void sub_21D316958(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v37 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A6B8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v35 - v12;
  v14 = sub_21DBF813C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v36 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v35 - v18;
  v20 = &v6[OBJC_IVAR____TtC15RemindersUICore29TTRISubtaskListViewController_viewModel];
  v21 = *&v6[OBJC_IVAR____TtC15RemindersUICore29TTRISubtaskListViewController_viewModel];
  v22 = *&v6[OBJC_IVAR____TtC15RemindersUICore29TTRISubtaskListViewController_viewModel + 8];
  *v20 = a1 & 1;
  *(v20 + 1) = a2;
  *(v20 + 2) = a3;
  *(v20 + 3) = a4;
  sub_21D24A814(v21, v22);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if ([v6 isViewLoaded])
  {
    sub_21D0D3954(v37, v13, &qword_27CE5A6B8);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_21D0CF7E0(v13, &qword_27CE5A6B8);
      v23 = [v6 tableView];
      if (v23)
      {
        v24 = v23;
        [v23 reloadData];

        return;
      }

      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v25 = *(v15 + 32);
    v25(v19, v13, v14);
    sub_21D317FD8(&qword_27CE5A7A0, MEMORY[0x277D45988]);
    sub_21DBFAC3C();
    sub_21DBFACAC();
    if (aBlock[0] == aBlock[6])
    {
      (*(v15 + 8))(v19, v14);
      return;
    }

    v37 = [v6 tableView];
    if (!v37)
    {
      goto LABEL_11;
    }

    v26 = v36;
    (*(v15 + 16))(v36, v19, v14);
    v27 = *(v15 + 80);
    v35 = v15;
    v28 = (v27 + 16) & ~v27;
    v29 = (v16 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    v25((v30 + v28), v26, v14);
    *(v30 + v29) = v6;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_21D317EDC;
    *(v31 + 24) = v30;
    aBlock[4] = sub_21D0E6070;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_12;
    v32 = _Block_copy(aBlock);
    v33 = v6;

    v34 = v37;
    [v37 performBatchUpdates:v32 completion:0];
    _Block_release(v32);

    (*(v35 + 8))(v19, v14);
  }
}

uint64_t sub_21D316DA4(uint64_t a1, void *a2)
{
  v38 = a2;
  v3 = sub_21DBF811C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v37 = &v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A7A8);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  v13 = sub_21DBF813C();
  (*(*(v13 - 8) + 16))(v12, a1, v13);
  v14 = *(v10 + 44);
  sub_21D317FD8(&qword_27CE5A7A0, MEMORY[0x277D45988]);
  sub_21DBFAC3C();
  sub_21DBFACAC();
  if (*&v12[v14] == v39[0])
  {
    return sub_21D0CF7E0(v12, &qword_27CE5A7A8);
  }

  v35 = (v4 + 32);
  v36 = (v4 + 16);
  v34 = (v4 + 88);
  v33 = *MEMORY[0x277D45978];
  v29 = *MEMORY[0x277D45970];
  v28 = *MEMORY[0x277D45980];
  v32 = (v4 + 96);
  v30 = xmmword_21DC08D00;
  v31 = v14;
  while (1)
  {
    v16 = sub_21DBFAD3C();
    v17 = v37;
    (*v36)(v37);
    v16(v39, 0);
    sub_21DBFACBC();
    (*v35)(v6, v17, v3);
    v18 = (*v34)(v6, v3);
    if (v18 == v33)
    {
      break;
    }

    if (v18 == v29)
    {
      (*v32)(v6, v3);
      v23 = *v6;
      v24 = [v38 tableView];
      if (!v24)
      {
        goto LABEL_16;
      }

      v21 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58968);
      sub_21DBF5D5C();
      *(swift_allocObject() + 16) = v30;
      MEMORY[0x223D3E470](v23, 0);
      v22 = sub_21DBFA5DC();

      [v21 deleteRowsAtIndexPaths:v22 withRowAnimation:100];
    }

    else
    {
      if (v18 != v28)
      {
        goto LABEL_17;
      }

      (*v32)(v6, v3);
      v25 = *v6;
      v26 = [v38 tableView];
      if (!v26)
      {
        goto LABEL_15;
      }

      v21 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58968);
      sub_21DBF5D5C();
      *(swift_allocObject() + 16) = v30;
      MEMORY[0x223D3E470](v25, 0);
      v22 = sub_21DBFA5DC();

      [v21 reconfigureRowsAtIndexPaths_];
    }

LABEL_4:

    sub_21DBFACAC();
    if (*&v12[v31] == v39[0])
    {
      return sub_21D0CF7E0(v12, &qword_27CE5A7A8);
    }
  }

  (*v32)(v6, v3);
  v19 = *v6;
  v20 = [v38 tableView];
  if (v20)
  {
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58968);
    sub_21DBF5D5C();
    *(swift_allocObject() + 16) = v30;
    MEMORY[0x223D3E470](v19, 0);
    v22 = sub_21DBFA5DC();

    [v21 insertRowsAtIndexPaths:v22 withRowAnimation:100];
    goto LABEL_4;
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

uint64_t sub_21D31743C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = qword_280D13268;
  swift_beginAccess();
  sub_21D0D3954(a1 + v8, &v20, &unk_27CE5FAD0);
  *&v19[10] = *&v21[10];
  v18 = v20;
  *v19 = *v21;
  if (!v21[25])
  {
    sub_21D0D0FD0(&v18, &v22);
    v9 = *(&v23 + 1);
    if (*(&v23 + 1))
    {
      goto LABEL_6;
    }

    return sub_21D0CF7E0(&v22, &unk_27CE5FAE0);
  }

  if (v21[25] != 1)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    return sub_21D0CF7E0(&v22, &unk_27CE5FAE0);
  }

  v22 = v20;
  v23 = *v21;
  v24 = *&v21[16];
  v9 = *&v21[8];
  if (!*&v21[8])
  {
    return sub_21D0CF7E0(&v22, &unk_27CE5FAE0);
  }

LABEL_6:
  v10 = v24;
  v11 = __swift_project_boxed_opaque_existential_1(&v22, v9);
  v12 = *(v9 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  (*(v12 + 16))(v15, v13);
  sub_21D0CF7E0(&v22, &unk_27CE5FAE0);
  v16 = (*(v10 + 128))(v9, v10);
  result = (*(v12 + 8))(v15, v9);
  if (v16)
  {
    sub_21D304B60(v16, a2, a3, a4);
  }

  return result;
}

id sub_21D317674()
{
  result = [v0 tableView];
  if (result)
  {
    v2 = result;
    v3 = [result hasActiveDrag];

    if (v3)
    {
      return 0;
    }

    result = [v0 tableView];
    if (result)
    {
      v4 = result;
      v5 = [result hasActiveDrop];

      return (v5 ^ 1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D31771C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE67520);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for TTRISubtaskListViewModel.Subtask();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D315A5C(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_21D0CF7E0(v4, &qword_27CE67520);
  }

  sub_21D305FB8(v4, v8);
  sub_21D305590(v8);
  return sub_21D317A58(v8);
}

uint64_t sub_21D3178C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore29TTRISubtaskListViewController_presenter);
  if (*(v1 + 56))
  {
    return *(v1 + 48) & 1;
  }

  else
  {
    return 0;
  }
}

id sub_21D3178F0()
{
  type metadata accessor for TTRISubtaskListCellTitlePresenter(0);
  v0 = swift_allocObject();
  *(v0 + 3) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 5) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 7) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC15RemindersUICore33TTRISubtaskListCellTitlePresenter_viewModel;
  v2 = type metadata accessor for TTRReminderCellTitleViewModel();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v3 = type metadata accessor for TTRISubtaskListCellTitleViewController();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC15RemindersUICore38TTRISubtaskListCellTitleViewController_titleTextView] = 0;
  v4[OBJC_IVAR____TtC15RemindersUICore38TTRISubtaskListCellTitleViewController_userPressedReturn] = 0;
  v5 = &v4[OBJC_IVAR____TtC15RemindersUICore38TTRISubtaskListCellTitleViewController_presenter];
  *v5 = v0;
  v5[1] = &off_282EED708;
  v8.receiver = v4;
  v8.super_class = v3;

  v6 = objc_msgSendSuper2(&v8, sel_init);
  *(v0 + 3) = &off_282EED5F8;
  swift_unknownObjectWeakAssign();
  *(v0 + 7) = &off_282EB1418;
  swift_unknownObjectWeakAssign();
  return v6;
}

uint64_t sub_21D317A58(uint64_t a1)
{
  v2 = type metadata accessor for TTRISubtaskListViewModel.Subtask();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D317AB4()
{
  v1 = type metadata accessor for TTRISubtaskListViewModel.Subtask();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - v6;
  result = sub_21DBF5CCC();
  v9 = *(v0 + OBJC_IVAR____TtC15RemindersUICore29TTRISubtaskListViewController_viewModel + 8);
  if (v9 && result < *(v9 + 16))
  {
    sub_21DBF8E0C();
    result = sub_21DBF5CCC();
    if (result < 0)
    {
      __break(1u);
    }

    else if (result < *(v9 + 16))
    {
      sub_21D317F70(v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * result, v4, type metadata accessor for TTRISubtaskListViewModel.Subtask);

      sub_21D305FB8(v4, v7);
      v10 = *&v7[*(v1 + 20)];
      v11 = *(*(*(v0 + OBJC_IVAR____TtC15RemindersUICore29TTRISubtaskListViewController_presenter) + 80) + 40);
      ObjectType = swift_getObjectType();
      (*(v11 + 296))(v10, ObjectType, v11);
      return sub_21D317A58(v7);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21D317C68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE67520);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for TTRISubtaskListViewModel.Subtask();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D315A5C(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_21D0CF7E0(v4, &qword_27CE67520);
  }

  sub_21D305FB8(v4, v8);
  v10 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  sub_21D3115E0((v8[*(v10 + 32)] & 1) == 0, *&v8[*(v5 + 20)]);
  return sub_21D317A58(v8);
}

void sub_21D317DF4()
{
  if (qword_27CE56600 != -1)
  {
    swift_once();
  }

  v0 = sub_21DBF84BC();
  __swift_project_value_buffer(v0, qword_27CE5A770);
  oslog = sub_21DBF84AC();
  v1 = sub_21DBFAECC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_21D0C9000, oslog, v1, "TTRISubtaskListViewController should never receive requestConfirmSiriFoundInAppsReminder", v2, 2u);
    MEMORY[0x223D46520](v2, -1, -1);
  }
}

uint64_t sub_21D317EDC()
{
  v1 = *(sub_21DBF813C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21D316DA4(v0 + v2, v3);
}

uint64_t sub_21D317F70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D317FD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21D318030()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F280);
  v1 = __swift_project_value_buffer(v0, qword_280D0F280);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_21D318110@<D0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 list];
  if (v4)
  {

    v5 = [v3 store];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_21DC09CF0;
    *(v6 + 32) = v3;
    v7 = type metadata accessor for TTRRemindersListOneShotAttributeEditorProvider();
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = type metadata accessor for TTRRemindersListAttributeEditor();
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
    *(v8 + 80) = 0;
    v10 = swift_allocObject();
    v10[5] = v7;
    v10[6] = &off_282EDDDB8;
    v10[2] = v8;
    *(a2 + 24) = v9;
    *(a2 + 32) = &protocol witness table for TTRRemindersListAttributeEditor;
    *a2 = v10;
    v11 = v3;
  }

  else
  {
    if (qword_280D0F278 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F280);
    v14 = v3;
    v15 = sub_21DBF84AC();
    v16 = sub_21DBFAE9C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = [v14 objectID];
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&dword_21D0C9000, v15, v16, "TTRURLMetadataInteractor: skip metadata saving; reminder has no list {objectID: %@}", v17, 0xCu);
      sub_21D0CF7E0(v18, &unk_27CE60070);
      MEMORY[0x223D46520](v18, -1, -1);
      MEMORY[0x223D46520](v17, -1, -1);
    }

    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_21D31837C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_OWORD *__return_ptr, uint64_t *))
{
  if (a2)
  {
    v9 = a2;
    v5 = a1;
    v6 = a4;
    v7 = a3;
    a5(v10, &v9);
    a1 = v5;
    a3 = v7;
    a4 = v6;
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
  }

  (*(a4 + 8))(a1, v10, a3);
  return sub_21D0CF7E0(v10, &qword_27CE5A7B8);
}