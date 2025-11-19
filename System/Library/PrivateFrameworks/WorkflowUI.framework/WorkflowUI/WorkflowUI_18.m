void sub_2748D6978()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_collectionView);

    v3 = sub_2749F9224();
    [v2 deselectItemAtIndexPath:v3 animated:1];
  }
}

void sub_2748D6B10()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_smartShortcutPickerDataSource];
  v3 = sub_2749F9274();
  sub_2747CF414(v3, &v65);
  if (v66 < 0)
  {
    goto LABEL_25;
  }

  v4 = OUTLINED_FUNCTION_2_33();
  sub_27477D408(v4, v5, v6);
  sub_2747CF614(&v65, &v67);
  v74 = v67;
  v75 = v68;
  v72 = v70;
  v73 = v71;
  if (v69)
  {
    v65 = *&v0[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_layout];

    sub_2749175A4(v2);

    if (v0[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_style + 88])
    {
      v7 = OUTLINED_FUNCTION_4_31();
      v9 = (*(v8 + 152))(&v65, v7);
      if (v9)
      {
        v10 = *&v0[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_dataSource];
        v11 = v9;
        OUTLINED_FUNCTION_20_2(&v65);
        OUTLINED_FUNCTION_20_2(v64);
        v12 = *&v0[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_selectionCoordinator];
        v13 = objc_allocWithZone(type metadata accessor for SmartShortcutPickerDetailViewController());

        sub_2747D2AC8(&v65, v63);
        v14 = sub_274832BA4(v10, v64, v12, v11);
        v15 = sub_2749FCD64();
        [v14 setTitle_];

        v16 = [v14 view];
        if (v16)
        {
          v17 = v16;
          v18 = [v1 view];
          if (v18)
          {
            v19 = v18;
            v20 = OUTLINED_FUNCTION_2_33();
            sub_2747CB3B0(v20, v21, v22);
            v23 = [v19 backgroundColor];

            [v17 setBackgroundColor_];
            v24 = [v14 navigationItem];
            [v24 setLargeTitleDisplayMode_];

            v25 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
            [v1 presentViewController:v25 animated:1 completion:0];

            sub_27472ECBC(&v67, &qword_280969280);
            v26 = OUTLINED_FUNCTION_2_33();
            sub_2747CB3B0(v26, v27, v28);

LABEL_16:
LABEL_19:

            OUTLINED_FUNCTION_46();
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_23;
      }
    }

    else
    {
      v36 = OUTLINED_FUNCTION_4_31();
      v38 = (*(v37 + 152))(&v65, v36);
      if (v38)
      {
        v39 = *&v0[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_dataSource];
        v40 = v38;
        OUTLINED_FUNCTION_20_2(&v65);
        OUTLINED_FUNCTION_20_2(v64);
        v41 = *&v1[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_selectionCoordinator];
        objc_allocWithZone(type metadata accessor for SmartShortcutPickerDetailViewController());

        sub_2747D2AC8(&v65, v63);
        v42 = sub_274832BA4(v39, v64, v41, v40);
        v43 = sub_2749FCD64();
        [v42 setTitle_];

        v44 = [v42 view];
        if (!v44)
        {
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v45 = v44;
        v46 = [v1 view];
        if (!v46)
        {
LABEL_24:
          __break(1u);
LABEL_25:
          sub_2749FDAE4();
          __break(1u);
          return;
        }

        v47 = v46;
        v48 = OUTLINED_FUNCTION_2_33();
        sub_2747CB3B0(v48, v49, v50);
        v51 = [v47 backgroundColor];

        [v45 setBackgroundColor_];
        v52 = [v42 navigationItem];

        [v52 setLargeTitleDisplayMode_];
        v53 = [v1 navigationController];
        if (v53)
        {
          v25 = v53;
          [v53 pushViewController:v42 animated:1];

          sub_27472ECBC(&v67, &qword_280969280);
          v54 = OUTLINED_FUNCTION_2_33();
          sub_2747CB3B0(v54, v55, v56);
          goto LABEL_16;
        }

LABEL_18:
        sub_27472ECBC(&v67, &qword_280969280);
        v60 = OUTLINED_FUNCTION_2_33();
        sub_2747CB3B0(v60, v61, v62);
        goto LABEL_19;
      }
    }

    v57 = OUTLINED_FUNCTION_2_33();
    sub_2747CB3B0(v57, v58, v59);
    goto LABEL_18;
  }

  v29 = OUTLINED_FUNCTION_2_33();
  sub_2747CB3B0(v29, v30, v31);
  v32 = OUTLINED_FUNCTION_2_33();
  sub_2747CB3B0(v32, v33, v34);
  OUTLINED_FUNCTION_46();
}

void sub_2748D7118(void *a1)
{
  v1 = sub_2748D77B0(a1);
  if (!v1)
  {
    v5 = 0u;
    v6 = 0u;
    goto LABEL_6;
  }

  v2 = v1;
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  sub_2749FD8D4();
  sub_27494FA4C(v2, &v5);

  sub_27477EED0(&v4);
  if (!*(&v6 + 1))
  {
LABEL_6:
    sub_27472ECBC(&v5, &qword_28096D550);
    return;
  }

  type metadata accessor for CGRect(0);
  if (swift_dynamicCast())
  {
    Height = CGRectGetHeight(v4);
    sub_2748D72CC(Height);
  }
}

void sub_2748D72CC(double a1)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  OUTLINED_FUNCTION_3_40();
  v8[1] = 1107296256;
  OUTLINED_FUNCTION_2_2();
  v8[2] = v5;
  v8[3] = &block_descriptor_28;
  v6 = _Block_copy(v8);
  v7 = v1;

  [v3 animateWithDuration:v6 animations:0.4];
  _Block_release(v6);
}

id sub_2748D73A0(uint64_t a1, double a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_collectionView);
  [v3 contentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = 0.0;
  if (a2 > 0.0)
  {
    [v3 safeAreaInsets];
    v10 = a2 - v11;
  }

  [v3 setContentInset_];

  return [v3 setScrollIndicatorInsets_];
}

void sub_2748D7470()
{
  v1 = objc_opt_self();
  OUTLINED_FUNCTION_86();
  *(swift_allocObject() + 16) = v0;
  OUTLINED_FUNCTION_3_40();
  v5[1] = 1107296256;
  OUTLINED_FUNCTION_2_2();
  v5[2] = v2;
  v5[3] = &block_descriptor_34_0;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 animateWithDuration:v3 animations:0.4];
  _Block_release(v3);
}

id sub_2748D7530(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_collectionView);
  [v2 contentInset];
  v5 = v4;
  v7 = v6;
  if (*(a1 + OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_style + 88) == 1)
  {
    v8 = 92.0;
  }

  else
  {
    v8 = v3;
  }

  [v2 setContentInset_];

  return [v2 setScrollIndicatorInsets_];
}

void sub_2748D76B8()
{
  v0 = sub_2749F9284();
  OUTLINED_FUNCTION_34(v0);

  sub_2748D6978();
}

uint64_t sub_2748D7720(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2748D77B0(void *a1)
{
  v1 = [a1 userInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2749FCCA4();

  return v3;
}

unint64_t sub_2748D7824()
{
  result = qword_28096E208;
  if (!qword_28096E208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E1F8);
    sub_27472AB6C(&qword_28096E210, &qword_28096E218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E208);
  }

  return result;
}

uint64_t sub_2748D78DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E220);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *OUTLINED_FUNCTION_18_17()
{

  return memcpy((v1 - 256), v0, 0x59uLL);
}

uint64_t EnvironmentValues.smartShortcutPickerViewStyle.getter()
{
  sub_2748D79C4();

  return sub_2749FB4D4();
}

unint64_t sub_2748D79C4()
{
  result = qword_28096E2B0;
  if (!qword_28096E2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E2B0);
  }

  return result;
}

uint64_t EnvironmentValues.smartShortcutPickerViewStyle.setter(void *__src)
{
  memcpy(v2, __src, sizeof(v2));
  sub_2748D79C4();
  return sub_2749FB4E4();
}

double SmartShortcutPickerViewStyle.init(with:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  if (v3 == OUTLINED_FUNCTION_1_5() && v2 == v6)
  {

    goto LABEL_18;
  }

  v8 = OUTLINED_FUNCTION_0_6();

  if (v8)
  {
LABEL_18:
    v15 = MEMORY[0x277D7D810];
    goto LABEL_21;
  }

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  if (v8 == OUTLINED_FUNCTION_1_5() && v2 == v9)
  {
  }

  else
  {
    v11 = OUTLINED_FUNCTION_0_6();

    if ((v11 & 1) == 0)
    {
      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      if (v11 == OUTLINED_FUNCTION_1_5() && v2 == v12)
      {

        goto LABEL_24;
      }

      v14 = OUTLINED_FUNCTION_0_6();

      if (v14)
      {

LABEL_24:
        v16 = 0;
        v17 = 2;
        goto LABEL_22;
      }
    }
  }

  v15 = MEMORY[0x277D7D818];
LABEL_21:
  v16 = *v15;

  v17 = 1;
LABEL_22:
  *a2 = v16;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = v17;
  return result;
}

__n128 sub_2748D7BE4()
{
  qword_2809891F8 = 0;
  unk_280989200 = 0;
  qword_280989208 = 0;
  unk_280989210 = xmmword_274A17800;
  unk_280989220 = xmmword_274A17810;
  unk_280989230 = xmmword_274A17820;
  __asm { FMOV            V0.2D, #22.0 }

  unk_280989240 = result;
  byte_280989250 = 0;
  return result;
}

id sub_2748D7C28()
{
  v0 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v2 = v1;
  if (v0 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v2 == v3)
  {
    v6 = MEMORY[0x277D7D820];
  }

  else
  {
    v5 = OUTLINED_FUNCTION_1_39();

    if (v5)
    {
      v6 = MEMORY[0x277D7D820];
      goto LABEL_15;
    }

    v7 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v9 = v8;
    if (v7 != _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() || v9 != v10)
    {
      OUTLINED_FUNCTION_1_39();
    }

    v6 = MEMORY[0x277D7D828];
  }

LABEL_15:
  v12 = *v6;

  return v12;
}

uint64_t sub_2748D7D14()
{
  if (qword_280966C40 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &qword_2809891F8, 0x59uLL);
  memcpy(&unk_28096E250, &qword_2809891F8, 0x59uLL);
  return sub_2747D2AC8(__dst, &v1);
}

uint64_t sub_2748D7DA0@<X0>(void *a1@<X8>)
{
  if (qword_280966C48 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &unk_28096E250, 0x59uLL);
  memcpy(a1, &unk_28096E250, 0x59uLL);
  return sub_2747D2AC8(__dst, &v3);
}

void (*EnvironmentValues.smartShortcutPickerViewStyle.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x1F0uLL);
  *a1 = v3;
  v3[60] = v1;
  v3[61] = sub_2748D79C4();
  sub_2749FB4D4();
  return sub_2748D7EA8;
}

void sub_2748D7EA8(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_20_2((v2 + 192));
    OUTLINED_FUNCTION_20_2((v2 + 288));
    sub_2747D2AC8(v2 + 192, v2 + 384);
    sub_2749FB4E4();
    OUTLINED_FUNCTION_20_2((v2 + 96));
    sub_2747D2B24(v2 + 96);
  }

  else
  {
    OUTLINED_FUNCTION_20_2((v2 + 96));
    sub_2749FB4E4();
  }

  free(v2);
}

uint64_t sub_2748D7F60(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 89))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 88);
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

uint64_t sub_2748D7FA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 88) = -a2;
    }
  }

  return result;
}

uint64_t sub_2748D7FFC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    LOBYTE(a2) = 2;
  }

  *(result + 88) = a2;
  return result;
}

void sub_2748D8094()
{
  sub_2747B708C();
  if (v0 <= 0x3F)
  {
    sub_2748D8180(319, &qword_28096E2C8, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_2748D8180(319, &qword_28096E2D0, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2748D8180(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_27471CF08(255, &qword_280968670);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2748D820C@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = sub_2749F9514();
  OUTLINED_FUNCTION_43();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v12 = 0;
  v13 = *(a2 + 16);
  v14 = (v7 + 8);
  while (1)
  {
    if (v13 == v12)
    {
      v16 = 1;
      v17 = a3;
      return __swift_storeEnumTagSinglePayload(v17, v16, 1, v5);
    }

    (*(v7 + 16))(v11, a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v12, v5);
    v15 = a1(v11);
    if (v3)
    {
      return (*v14)(v11, v5);
    }

    if (v15)
    {
      break;
    }

    (*v14)(v11, v5);
    ++v12;
  }

  v17 = a3;
  (*(v7 + 32))(a3, v11, v5);
  v16 = 0;
  return __swift_storeEnumTagSinglePayload(v17, v16, 1, v5);
}

uint64_t sub_2748D843C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, void (*a4)(void)@<X4>, void (*a5)(void)@<X5>, uint64_t a6@<X8>)
{
  v23 = a5;
  v22 = a6;
  v21 = a3(0);
  OUTLINED_FUNCTION_43();
  v11 = v10;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  v15 = 0;
  v16 = *(a2 + 16);
  while (1)
  {
    if (v16 == v15)
    {
      v18 = 1;
      v19 = v22;
      return __swift_storeEnumTagSinglePayload(v19, v18, 1, v21);
    }

    sub_2748DB458(a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v15, v14, a4);
    v17 = a1(v14);
    if (v6)
    {
      return sub_2748DB914(v14, v23);
    }

    if (v17)
    {
      break;
    }

    sub_2748DB914(v14, v23);
    ++v15;
  }

  v19 = v22;
  sub_2748DB4B4(v14, v22, a4);
  v18 = 0;
  return __swift_storeEnumTagSinglePayload(v19, v18, 1, v21);
}

id sub_2748D85B0(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 48);
  if (!v5)
  {
    return 0;
  }

  while (1)
  {
    v7 = *(v6 - 1);
    v8 = *v6;
    v12[0] = *(v6 - 2);
    v12[1] = v7;
    v12[2] = v8;
    v9 = v12[0];

    v10 = a1(v12);
    if (v3)
    {
      break;
    }

    if (v10)
    {
      return v9;
    }

    v6 += 3;
    if (!--v5)
    {
      return 0;
    }
  }

  return v9;
}

void sub_2748D8684(unint64_t a1, uint64_t a2)
{
  v4 = a1;
  v5 = sub_27472D918(a1);
  v6 = v5;
  v7 = *(a2 + 16);
  if (v7 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = *(a2 + 16);
  }

  v34 = MEMORY[0x277D84F90];
  sub_27476DABC(0, v8 & ~(v8 >> 63), 0);
  if (v6 < 0)
  {
LABEL_43:
    __break(1u);
LABEL_44:

    __break(1u);
    return;
  }

  v33 = v4 >> 62;
  v30 = v4;
  v31 = v7;
  if (v8)
  {
    v9 = 0;
    v32 = v4 & 0xC000000000000001;
    v28 = v4 & 0xFFFFFFFFFFFFFF8;
    v27 = a2;
    v10 = (a2 + 40);
    while (1)
    {
      v11 = v33 ? sub_2749FD844() : *(v28 + 16);
      if (v9 == v11)
      {
        break;
      }

      if (v32)
      {
        v12 = MEMORY[0x277C5F6D0](v9, v4);
      }

      else
      {
        if (v9 >= *(v28 + 16))
        {
          goto LABEL_42;
        }

        v12 = *(v4 + 8 * v9 + 32);
      }

      v2 = v12;
      if (v7 == v9)
      {
        goto LABEL_44;
      }

      v13 = *(v10 - 1);
      v14 = *v10;
      v16 = *(v34 + 16);
      v15 = *(v34 + 24);

      if (v16 >= v15 >> 1)
      {
        sub_27476DABC((v15 > 1), v16 + 1, 1);
      }

      ++v9;
      *(v34 + 16) = v16 + 1;
      v17 = (v34 + 24 * v16);
      v17[4] = v2;
      v17[5] = v13;
      v17[6] = v14;
      v10 += 2;
      v4 = v30;
      v7 = v31;
      if (v8 == v9)
      {
        v2 = v28;
        a2 = v27;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v2 = (v4 & 0xFFFFFFFFFFFFFF8);
  v32 = v4 & 0xC000000000000001;
LABEL_21:
  v29 = v4 + 32;
  for (i = (a2 + 16 * v8 + 40); ; i += 2)
  {
    v19 = v33 ? sub_2749FD844() : v2[2];
    if (v8 == v19)
    {
      break;
    }

    if (v32)
    {
      v20 = MEMORY[0x277C5F6D0](v8, v30);
    }

    else
    {
      if (v8 >= v2[2])
      {
        goto LABEL_40;
      }

      v20 = *(v29 + 8 * v8);
    }

    v21 = v20;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_39;
    }

    if (v7 == v8)
    {

      return;
    }

    if (v8 >= v7)
    {
      goto LABEL_41;
    }

    v22 = *(i - 1);
    v23 = *i;
    v25 = *(v34 + 16);
    v24 = *(v34 + 24);

    if (v25 >= v24 >> 1)
    {
      sub_27476DABC((v24 > 1), v25 + 1, 1);
    }

    *(v34 + 16) = v25 + 1;
    v26 = (v34 + 24 * v25);
    v26[4] = v21;
    v26[5] = v22;
    v26[6] = v23;
    ++v8;
    v7 = v31;
  }
}

uint64_t sub_2748D8944@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v86 = sub_2749FBA94();
  OUTLINED_FUNCTION_43();
  v85 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v84 = v6 - v5;
  v80 = sub_2749FAF64();
  OUTLINED_FUNCTION_43();
  v81 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v79 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E2D8);
  OUTLINED_FUNCTION_34(v11);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  v14 = &v74 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E2E0) - 8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  v18 = &v74 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E2E8) - 8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  v22 = &v74 - v21;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E2F0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  v25 = &v74 - v24;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E2F8);
  OUTLINED_FUNCTION_43();
  v78 = v26;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v27);
  v75 = &v74 - v28;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E300);
  OUTLINED_FUNCTION_43();
  v82 = v29;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v30);
  v32 = &v74 - v31;
  v33 = sub_2749FB644();
  v34 = type metadata accessor for ColorPickerView(0);
  v35 = *(v2 + *(v34 + 28));
  *v14 = v33;
  *(v14 + 1) = v35;
  v14[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E308);
  sub_2748D90DC(v2);
  sub_2749FC914();
  sub_2749FB004();
  sub_2747D31F8(v14, v18, &qword_28096E2D8);
  memcpy(&v18[*(v15 + 44)], __src, 0x70uLL);
  v36 = sub_2748D962C();
  v37 = *(v2 + *(v34 + 32));
  v38 = v2;
  sub_2748D9978(v37, v36);

  sub_2749FC914();
  sub_2749FABB4();
  sub_2747D31F8(v18, v22, &qword_28096E2E0);
  v39 = *(v19 + 44);
  v40 = v32;
  v41 = &v22[v39];
  v42 = v98;
  *v41 = v97;
  *(v41 + 1) = v42;
  *(v41 + 2) = v99;
  LOBYTE(v36) = sub_2749FBCC4();
  sub_2749FA9E4();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_2747D31F8(v22, v25, &qword_28096E2E8);
  v51 = v76;
  v52 = &v25[*(v76 + 36)];
  *v52 = v36;
  *(v52 + 1) = v44;
  *(v52 + 2) = v46;
  *(v52 + 3) = v48;
  *(v52 + 4) = v50;
  v52[40] = 0;
  v53 = v79;
  sub_2749FAF54();
  v54 = sub_2748D9CA8();
  v55 = sub_27473DBB8(&qword_28159E6A0, MEMORY[0x277CDDB18]);
  v56 = v75;
  v57 = v80;
  sub_2749FBFC4();
  OUTLINED_FUNCTION_40_5();
  v58(v53, v57);
  v59 = v25;
  v60 = v77;
  sub_2748D9E78(v59);
  v61 = v84;
  sub_2749FBA84();
  v92 = v51;
  v93 = v57;
  v94 = v54;
  v95 = v55;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2749FC1A4();
  OUTLINED_FUNCTION_40_5();
  v63(v61, v86);
  OUTLINED_FUNCTION_40_5();
  v64(v56, v60);
  v65 = sub_2748D962C();
  v89 = v38;
  v66 = sub_2748D85B0(sub_2748D9EE0, v88, v65);
  v68 = v67;
  v70 = v69;

  if (v66)
  {
  }

  else
  {
    v68 = 0;
    v70 = 0xE000000000000000;
  }

  v92 = v68;
  v93 = v70;
  v90 = v60;
  v91 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_27475D0D0();
  v71 = v83;
  sub_2749FC104();

  OUTLINED_FUNCTION_40_5();
  return v72(v40, v71);
}

uint64_t sub_2748D90DC(uint64_t a1)
{
  v2 = type metadata accessor for ColorPickerView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = sub_2748D962C();
  sub_2748D9978(*(a1 + *(v3 + 40)), v6);
  v8 = v7;

  v12[1] = v8;
  swift_getKeyPath();
  sub_2748DB458(a1, v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ColorPickerView);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_2748DB4B4(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for ColorPickerView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E338);
  sub_27472AB6C(&qword_28096E340, &qword_28096E330);
  sub_2748DB1B4();
  sub_27472AB6C(&qword_28096E358, &qword_28096E338);
  return sub_2749FC754();
}

uint64_t sub_2748D930C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ColorPickerView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v10 = *a1;
  v11 = *(a2 + *(v9 + 36));
  *a3 = sub_2749FB524();
  *(a3 + 8) = v11;
  *(a3 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E360);
  v15[1] = v10;
  swift_getKeyPath();
  sub_2748DB458(a2, v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ColorPickerView);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  sub_2748DB4B4(v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for ColorPickerView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809678E8);
  _s10WorkflowUI17ColorPickerButtonVMa_0(0);
  sub_27472AB6C(&qword_28096E368, &qword_2809678E8);
  sub_2748DB238();
  sub_27473DBB8(&qword_28096E370, _s10WorkflowUI17ColorPickerButtonVMa_0);
  return sub_2749FC754();
}

uint64_t sub_2748D9544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  type metadata accessor for ColorPickerView(0);
  v6 = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B598);
  sub_2749FC6E4();
  *a2 = v6;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  v7 = *(_s10WorkflowUI17ColorPickerButtonVMa_0(0) + 24);
  *(a2 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2748D962C()
{
  v1 = objc_opt_self();
  v2 = [v1 workflowPalette];
  sub_27471CF08(0, &qword_280968670);
  v3 = sub_2749FCF84();

  v4 = [v1 workflowPaletteNames];
  v5 = sub_2749FCF84();

  sub_2748D8684(v3, v5);
  v7 = v6;

  v23 = *(v0 + *(type metadata accessor for ColorPickerView(0) + 24));
  v8 = sub_27472D918(v23);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v10 = v8;
    v25 = MEMORY[0x277D84F90];
    result = sub_27476DABC(0, v8 & ~(v8 >> 63), 0);
    if ((v10 & 0x8000000000000000) == 0)
    {
      v22 = v7;
      v9 = v25;
      result = sub_27472D918(v23);
      v12 = 0;
      v13 = result & ~(result >> 63);
      while (v13 != v12)
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x277C5F6D0](v12, v23);
        }

        else
        {
          if (v12 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          result = *(v23 + 8 * v12 + 32);
        }

        v14 = result;
        strcpy(v24, "Custom Color ");
        HIWORD(v24[1]) = -4864;
        if (v12 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_16;
        }

        v15 = v10;
        ++v12;
        v16 = sub_2749FDC74();
        MEMORY[0x277C5EBC0](v16);

        v18 = v24[0];
        v17 = v24[1];
        v25 = v9;
        v20 = *(v9 + 16);
        v19 = *(v9 + 24);
        if (v20 >= v19 >> 1)
        {
          result = sub_27476DABC((v19 > 1), v20 + 1, 1);
          v9 = v25;
        }

        *(v9 + 16) = v20 + 1;
        v21 = (v9 + 24 * v20);
        v21[4] = v14;
        v21[5] = v18;
        v21[6] = v17;
        v10 = v15;
        if (v15 == v12)
        {
          v7 = v22;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    sub_274782C50(v9);
    return v7;
  }

  return result;
}

uint64_t sub_2748D98B8()
{
  sub_27471CF08(0, &qword_28159E390);
  type metadata accessor for ColorPickerView(0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B598);
  MEMORY[0x277C5E410](&v4, v0);
  v1 = v4;
  v2 = sub_2749FD604();

  return v2 & 1;
}

void sub_2748D9978(uint64_t a1, void *a2)
{
  if (!a1)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v4 = a2[2];
  v5 = sub_2748DB104(0, v4, a1);
  v21 = MEMORY[0x277D84F90];
  sub_27476DADC();
  if (v5 < 0)
  {
LABEL_56:
    __break(1u);
    return;
  }

  if (!v5)
  {
    v9 = 0;
    goto LABEL_27;
  }

  v6 = 0;
  do
  {
    v7 = v4 >= v6;
    if (a1 > 0)
    {
      v7 = v6 >= v4;
    }

    if (v7)
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v8 = v6 + a1;
    if (__OFADD__(v6, a1))
    {
      v9 = ((v6 + a1) >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v9 = v6 + a1;
    }

    if (__OFADD__(v6, a1))
    {
      goto LABEL_52;
    }

    if (v4 < v8)
    {
      v8 = v4;
    }

    v10 = v8 - v6;
    if (v8 < v6)
    {
      goto LABEL_53;
    }

    if (v6 < 0)
    {
      goto LABEL_54;
    }

    if (v4 == v10)
    {

      v11 = a2;
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
      if (v8 != v6)
      {
        if (v10 >= 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809678F0);
          v11 = swift_allocObject();
          v13 = _swift_stdlib_malloc_size(v11);
          v11[2] = v10;
          v11[3] = 2 * ((v13 - 32) / 24);
        }

        swift_arrayInitWithCopy();
      }
    }

    v12 = *(v21 + 16);
    if (v12 >= *(v21 + 24) >> 1)
    {
      sub_27476DADC();
    }

    *(v21 + 16) = v12 + 1;
    *(v21 + 8 * v12 + 32) = v11;
    v6 = v9;
    --v5;
  }

  while (v5);
  while (1)
  {
LABEL_27:
    v14 = v4 >= v9;
    if (a1 > 0)
    {
      v14 = v9 >= v4;
    }

    if (v14)
    {
      break;
    }

    v15 = v9 + a1;
    if (__OFADD__(v9, a1))
    {
      v16 = ((v9 + a1) >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v16 = v9 + a1;
    }

    if (__OFADD__(v9, a1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (v4 < v15)
    {
      v15 = v4;
    }

    v17 = v15 - v9;
    if (v15 < v9)
    {
      goto LABEL_49;
    }

    if (v9 < 0)
    {
      goto LABEL_50;
    }

    if (v4 == v17)
    {

      v18 = a2;
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
      if (v15 != v9)
      {
        if (v17 >= 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809678F0);
          v18 = swift_allocObject();
          v20 = _swift_stdlib_malloc_size(v18);
          v18[2] = v17;
          v18[3] = 2 * ((v20 - 32) / 24);
        }

        swift_arrayInitWithCopy();
      }
    }

    v19 = *(v21 + 16);
    if (v19 >= *(v21 + 24) >> 1)
    {
      sub_27476DADC();
    }

    *(v21 + 16) = v19 + 1;
    *(v21 + 8 * v19 + 32) = v18;
    v9 = v16;
  }
}

unint64_t sub_2748D9CA8()
{
  result = qword_28096E310;
  if (!qword_28096E310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E2F0);
    sub_2748D9D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E310);
  }

  return result;
}

unint64_t sub_2748D9D34()
{
  result = qword_28096E318;
  if (!qword_28096E318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E2E8);
    sub_2748D9DC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E318);
  }

  return result;
}

unint64_t sub_2748D9DC0()
{
  result = qword_28096E320;
  if (!qword_28096E320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E2E0);
    sub_27472AB6C(&qword_28096E328, &qword_28096E2D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E320);
  }

  return result;
}

uint64_t sub_2748D9E78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E2F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2748D9F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_27471CF08(0, &qword_28159E390);
  if ((sub_2749FD604() & 1) == 0)
  {
    return 0;
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  return sub_2749FDCC4();
}

uint64_t sub_2748D9FC4()
{
  sub_2749FD614();

  return sub_2749FCE24();
}

uint64_t sub_2748DA018()
{
  sub_2749FDDF4();
  sub_2749FD614();
  sub_2749FCE24();
  return sub_2749FDE44();
}

uint64_t sub_2748DA094()
{
  sub_2749FDDF4();
  sub_2749FD614();
  sub_2749FCE24();
  return sub_2749FDE44();
}

uint64_t sub_2748DA110()
{
  sub_27471CF08(0, &qword_28159E390);
  v5[1] = *(v0 + 24);
  v6 = *(v0 + 32);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B598);
  MEMORY[0x277C5E410](v5, v1);
  v2 = v5[0];
  v3 = sub_2749FD604();

  return v3 & 1;
}

uint64_t sub_2748DA1AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v37 = sub_2749FB5D4();
  v39 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v38 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s10WorkflowUI17ColorPickerButtonVMa_0(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E3A0);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E3A8);
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E3B0);
  MEMORY[0x28223BE20](v13 - 8);
  v34 = &v33 - v14;
  sub_2748DB458(v2, &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), _s10WorkflowUI17ColorPickerButtonVMa_0);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_2748DB4B4(&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, _s10WorkflowUI17ColorPickerButtonVMa_0);
  v41 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E3B8);
  sub_27472AB6C(&qword_28096E3C0, &qword_28096E3B8);
  sub_2749FC624();
  sub_2749FC914();
  sub_2749FABB4();
  v17 = &v9[*(v7 + 36)];
  v18 = v47;
  *v17 = v46;
  *(v17 + 1) = v18;
  *(v17 + 2) = v48;
  v19 = *(v2 + 16);
  v45[0] = *(v2 + 8);
  v45[1] = v19;
  v20 = sub_2748DB85C();
  v21 = sub_27475D0D0();
  v22 = MEMORY[0x277D837D0];
  sub_2749FC234();
  sub_27472ECBC(v9, &qword_28096E3A0);
  if (sub_2748DA110())
  {
    v23 = v38;
    sub_2749FB594();
    v24 = v37;
  }

  else
  {
    v45[0] = MEMORY[0x277D84F90];
    sub_27473DBB8(&unk_28159E630, MEMORY[0x277CE01F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A468);
    sub_27472AB6C(&qword_28159E538, &qword_28096A468);
    v23 = v38;
    v24 = v37;
    v22 = MEMORY[0x277D837D0];
    sub_2749FD7B4();
  }

  v45[0] = v7;
  v45[1] = v22;
  v45[2] = v20;
  v45[3] = v21;
  swift_getOpaqueTypeConformance2();
  v25 = v34;
  v26 = v36;
  sub_2749FC1D4();
  (*(v39 + 8))(v23, v24);
  (*(v35 + 8))(v12, v26);
  v27 = sub_2749FC914();
  v29 = v28;
  sub_2748DAFBC(v43);
  memcpy(v44, v43, 0x80uLL);
  v44[16] = v27;
  v44[17] = v29;
  v30 = v40;
  sub_2747D31F8(v25, v40, &qword_28096E3B0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E3E0);
  memcpy((v30 + *(v31 + 36)), v44, 0x90uLL);
  memcpy(v45, v43, 0x80uLL);
  v45[16] = v27;
  v45[17] = v29;
  sub_27473ADB8(v44, &v42, &qword_28096A478);
  return sub_27472ECBC(v45, &qword_28096A478);
}

uint64_t sub_2748DA7A0(id *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B598);
  return sub_2749FC6C4();
}

uint64_t sub_2748DA800@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_2749FC914();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E3E8);
  return sub_2748DA850(a1, a2 + *(v5 + 44));
}

uint64_t sub_2748DA850@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v56 = sub_2749FAA94();
  v4 = *(v56 - 8);
  v5 = MEMORY[0x28223BE20](v56);
  v54 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v53 = &v52 - v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A488);
  v8 = MEMORY[0x28223BE20](v58);
  v60 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v52 - v11);
  MEMORY[0x28223BE20](v10);
  v59 = &v52 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E3F0);
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A498);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v52 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E3F8);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v57 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v61 = &v52 - v24;
  v55 = a1;
  v25 = *a1;
  if ([v25 hasPaletteGradient])
  {
    v26 = [v25 paletteGradient];
    v27 = sub_27481E55C();
    sub_2749FC5A4();

    (*(v18 + 16))(v16, v20, v17);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E400);
    v62 = MEMORY[0x277CE1120];
    v63 = v27;
    swift_getOpaqueTypeConformance2();
    sub_27472AB6C(&qword_28096E408, &qword_28096E400);
    sub_2749FB7B4();
    (*(v18 + 8))(v20, v17);
  }

  else
  {
    v28 = [v25 platformColor];
    *v16 = sub_2749FC3E4();
    *(v16 + 4) = 256;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E400);
    v29 = sub_27481E55C();
    v62 = MEMORY[0x277CE1120];
    v63 = v29;
    swift_getOpaqueTypeConformance2();
    sub_27472AB6C(&qword_28096E408, &qword_28096E400);
    sub_2749FB7B4();
  }

  sub_2749FC454();
  _s10WorkflowUI17ColorPickerButtonVMa_0(0);
  v30 = v53;
  sub_27473B1B4();
  v31 = v54;
  v32 = v56;
  (*(v4 + 104))(v54, *MEMORY[0x277CDF3D0], v56);
  sub_2749FAA84();
  v33 = *(v4 + 8);
  v33(v31, v32);
  v33(v30, v32);
  v34 = sub_2749FC484();

  sub_2749FAB34();
  v35 = v62;
  v36 = v64;
  v37 = v65;
  v38 = v66;
  v39 = sub_2749FC914();
  v41 = v40;
  v42 = *(v58 + 36);
  v43 = *MEMORY[0x277CE13F0];
  v44 = sub_2749FC994();
  v45 = v63;
  (*(*(v44 - 8) + 104))(v12 + v42, v43, v44);
  *v12 = v35 * 0.5;
  v12[1] = v35;
  *(v12 + 2) = v45;
  *(v12 + 3) = v36;
  *(v12 + 4) = v37;
  *(v12 + 5) = v38;
  *(v12 + 6) = v34;
  *(v12 + 28) = 256;
  *(v12 + 8) = v39;
  *(v12 + 9) = v41;
  v46 = v59;
  sub_2747D31F8(v12, v59, &qword_28096A488);
  v47 = v61;
  v48 = v57;
  sub_27473ADB8(v61, v57, &qword_28096E3F8);
  v49 = v60;
  sub_27473ADB8(v46, v60, &qword_28096A488);
  sub_27473ADB8(v48, a2, &qword_28096E3F8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E410);
  sub_27473ADB8(v49, a2 + *(v50 + 48), &qword_28096A488);
  sub_27472ECBC(v46, &qword_28096A488);
  sub_27472ECBC(v47, &qword_28096E3F8);
  sub_27472ECBC(v49, &qword_28096A488);
  return sub_27472ECBC(v48, &qword_28096E3F8);
}

void *sub_2748DAFBC@<X0>(void *a1@<X8>)
{
  if (sub_2748DA110())
  {
    v2 = [objc_opt_self() systemGray3Color];
    v3 = sub_2749FC3E4();
    sub_2749FAB34();
    v4 = sub_2749FC914();
    v6 = v5;
    sub_2749FC914();
    sub_2749FABB4();
    __src[0] = v9 * 0.5;
    __src[1] = v9;
    __src[2] = v10;
    __src[3] = v11;
    __src[4] = v12;
    __src[5] = v13;
    *&__src[6] = v3;
    LOWORD(__src[7]) = 256;
    *&__src[8] = v4;
    __src[9] = v6;
    CGSizeMake(__src);
    memcpy(__dst, __src, sizeof(__dst));
  }

  else
  {
    sub_27481E544(__dst);
  }

  return memcpy(a1, __dst, 0x80uLL);
}

uint64_t sub_2748DB104(int64_t a1, int64_t a2, uint64_t a3)
{
  result = 0;
  while (1)
  {
    v5 = a1 <= a2;
    if (a3 > 0)
    {
      v5 = a1 >= a2;
    }

    if (v5)
    {
      break;
    }

    v6 = __OFADD__(a1, a3);
    a1 += a3;
    if (v6)
    {
      a1 = (a1 >> 63) ^ 0x8000000000000000;
    }

    v6 = __OFADD__(result++, 1);
    if (v6)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t sub_2748DB148()
{
  v0 = type metadata accessor for ColorPickerView(0);
  OUTLINED_FUNCTION_34(v0);
  v1 = OUTLINED_FUNCTION_8_0();

  return sub_2748D930C(v1, v2, v3);
}

unint64_t sub_2748DB1B4()
{
  result = qword_28096E348;
  if (!qword_28096E348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809678E8);
    sub_2748DB238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E348);
  }

  return result;
}

unint64_t sub_2748DB238()
{
  result = qword_28096E350;
  if (!qword_28096E350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E350);
  }

  return result;
}

uint64_t objectdestroyTm_13()
{
  v1 = type metadata accessor for ColorPickerView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAA94();
    OUTLINED_FUNCTION_9();
    (*(v5 + 8))(v0 + v3);
  }

  else
  {
  }

  v6 = v0 + v3 + *(v1 + 20);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2748DB3CC()
{
  v0 = type metadata accessor for ColorPickerView(0);
  OUTLINED_FUNCTION_34(v0);
  v1 = OUTLINED_FUNCTION_8_0();

  return sub_2748D9544(v1, v2);
}

uint64_t sub_2748DB458(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_44();
  v5(v4);
  return a2;
}

uint64_t sub_2748DB4B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_44();
  v5(v4);
  return a2;
}

void sub_2748DB538()
{
  sub_2748D8180(319, &qword_28096E2C8, MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_2747B708C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_2748DB5F8()
{
  result = qword_28096E388;
  if (!qword_28096E388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E390);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E2F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E2F0);
    sub_2749FAF64();
    sub_2748D9CA8();
    sub_27473DBB8(&qword_28159E6A0, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_27473DBB8(&qword_28159E5A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E388);
  }

  return result;
}

unint64_t sub_2748DB7A4()
{
  result = qword_28096E398;
  if (!qword_28096E398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E398);
  }

  return result;
}

uint64_t sub_2748DB7F8()
{
  v1 = _s10WorkflowUI17ColorPickerButtonVMa_0(0);
  OUTLINED_FUNCTION_34(v1);
  v3 = (v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return sub_2748DA7A0(v3);
}

unint64_t sub_2748DB85C()
{
  result = qword_28096E3C8;
  if (!qword_28096E3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E3A0);
    sub_27472AB6C(&qword_28096E3D0, &qword_28096E3D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E3C8);
  }

  return result;
}

uint64_t sub_2748DB914(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_2748DB96C()
{
  result = qword_28096E418;
  if (!qword_28096E418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E3E0);
    sub_2748DBA24();
    sub_27472AB6C(&qword_28096A4C8, &qword_28096A478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E418);
  }

  return result;
}

unint64_t sub_2748DBA24()
{
  result = qword_28096E420;
  if (!qword_28096E420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E3B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E3A0);
    sub_2748DB85C();
    sub_27475D0D0();
    swift_getOpaqueTypeConformance2();
    sub_27473DBB8(&qword_28159E5A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E420);
  }

  return result;
}

uint64_t sub_2748DBB38(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096E4C0);
    return sub_2749FD054();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096E4C0);
    return sub_2749FD064();
  }
}

id sub_2748DBC94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SnippetInteractionRunner.Delegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SnippetInteractionRunner.Delegate()
{
  result = qword_28096E4A0;
  if (!qword_28096E4A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2748DBDBC()
{
  sub_2748DBE4C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2748DBE4C()
{
  if (!qword_28096E4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280967C18);
    v0 = sub_2749FD074();
    if (!v1)
    {
      atomic_store(v0, &qword_28096E4B0);
    }
  }
}

uint64_t sub_2748DBEC4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong inspectorPaneSegmentedControl:v0 didSelectPane:*(v0 + OBJC_IVAR___WFInspectorPaneSegmentedControlHostingView_selectedPane)];
    Strong = swift_unknownObjectRelease();
  }

  return sub_2748DC020(Strong);
}

void sub_2748DBF80()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___WFInspectorPaneSegmentedControlHostingView_selectedPane) = 0;
  *(v0 + OBJC_IVAR___WFInspectorPaneSegmentedControlHostingView_segmentedControl) = 0;
  sub_2749FDAE4();
  __break(1u);
}

void sub_2748DC020()
{
  v1 = v0;
  v2 = type metadata accessor for InspectorPaneSegmentedControl();
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OBJC_IVAR___WFInspectorPaneSegmentedControlHostingView_segmentedControl;
  [*&v0[OBJC_IVAR___WFInspectorPaneSegmentedControlHostingView_segmentedControl] removeFromSuperview];
  v21 = v0[OBJC_IVAR___WFInspectorPaneSegmentedControlHostingView_showsDetailsButton];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2749FD0A4();

  v8 = sub_2749FD094();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12 = sub_2749FD094();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = v10;
  v13[4] = v11;

  sub_2749FC6F4();
  v20 = v22;
  v14 = v23;
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  swift_storeEnumTagMultiPayload();
  *(v5 + *(v3 + 28)) = v21;
  v15 = v5 + *(v3 + 32);
  *v15 = v20;
  *(v15 + 2) = v14;
  v16 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E4F0));
  v17 = sub_2749FADF4();
  v18 = [objc_opt_self() clearColor];
  [v17 setBackgroundColor_];

  [v1 bounds];
  [v17 setFrame_];
  [v17 setAutoresizingMask_];
  [v1 addSubview_];
  v19 = *&v1[v6];
  *&v1[v6] = v17;
}

void sub_2748DC2FC(void *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *&Strong[OBJC_IVAR___WFInspectorPaneSegmentedControlHostingView_selectedPane];
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
}

void sub_2748DC364(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    *(Strong + OBJC_IVAR___WFInspectorPaneSegmentedControlHostingView_selectedPane) = v1;
    sub_2748DBEC4();
  }
}

id sub_2748DC410()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InspectorPaneSegmentedControlHostingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for InspectorPaneSegmentedControl()
{
  result = qword_28096E4F8;
  if (!qword_28096E4F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_2748DC518()
{
  if (*(v0 + *(type metadata accessor for InspectorPaneSegmentedControl() + 20)))
  {
    return &unk_28838FF38;
  }

  v3 = MEMORY[0x277D84F90];
  sub_27476DB1C();
  result = v3;
  v2 = v3[2];
  if (v2 >= v3[3] >> 1)
  {
    sub_27476DB1C();
    result = v3;
  }

  result[2] = v2 + 1;
  result[v2 + 4] = 0;
  return result;
}

uint64_t sub_2748DC5C4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for InspectorPaneSegmentedControl();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  *a1 = sub_2749FB524();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E510);
  v14[1] = sub_2748DC518();
  sub_2748DDC38(v1, v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_2748DDF9C(v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for InspectorPaneSegmentedControl);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B9A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E518);
  sub_27472AB6C(&qword_28096E520, &qword_28096B9A8);
  sub_2748DDD1C();
  sub_2748DDF48();
  sub_2749FC764();
  v8 = sub_2749FC914();
  v10 = v9;
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E570) + 36);
  sub_2748DD7F8(v11);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E578);
  v13 = (v11 + *(result + 36));
  *v13 = v8;
  v13[1] = v10;
  return result;
}

uint64_t sub_2748DC7F8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a3;
  v60 = sub_2749FB5D4();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v57 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_2749FB7D4();
  v48 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for InspectorPaneSegmentedControl();
  v8 = *(v53 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v53);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E530);
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - v11;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E588);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v14 = &v47 - v13;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E518);
  v15 = MEMORY[0x28223BE20](v55);
  v52 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v54 = &v47 - v17;
  v18 = *a1;
  sub_2748DDC38(a2, &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v20 = swift_allocObject();
  sub_2748DDF9C(&v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for InspectorPaneSegmentedControl);
  *(v20 + ((v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;
  v61 = v18;
  v62 = a2;
  v56 = a2;
  v21 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E590);
  sub_2748DE090();
  sub_2749FC624();
  v22 = &v12[*(v10 + 36)];
  v23 = *MEMORY[0x277CE0118];
  v24 = sub_2749FB584();
  (*(*(v24 - 8) + 104))(v22, v23, v24);
  v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E558) + 36)] = 0;
  sub_2749FB064();
  v25 = sub_2748DDE64();
  v26 = sub_2748DE4F0(&qword_28096E560, MEMORY[0x277CDDFB0]);
  v49 = v14;
  sub_2749FBFE4();
  (*(v48 + 8))(v7, v21);
  sub_2748DE488(v12);
  if (v18 > 1)
  {
    *&v63 = v18;
    result = sub_2749FDD24();
    __break(1u);
  }

  else
  {
    sub_2749FCE14();
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v27 = qword_28159E448;
    v28 = sub_2749FCD64();
    v29 = sub_2749FCD64();

    v30 = [v27 localizedStringForKey:v28 value:v29 table:0];

    v31 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v33 = v32;

    v66[0] = v31;
    v66[1] = v33;
    *&v63 = v10;
    *(&v63 + 1) = v21;
    v64 = v25;
    v65 = v26;
    swift_getOpaqueTypeConformance2();
    sub_27475D0D0();
    v35 = v51;
    v34 = v52;
    v36 = v49;
    sub_2749FC0F4();

    (*(v50 + 8))(v36, v35);
    *&v63 = 0;
    *(&v63 + 1) = 0xE000000000000000;
    sub_2749FD934();

    *&v63 = 0xD000000000000015;
    *(&v63 + 1) = 0x8000000274A322F0;
    if (v18)
    {
      v37 = 0x74756374726F6873;
    }

    else
    {
      v37 = 0x696C6E6F69746361;
    }

    if (v18)
    {
      v38 = 0xEF736C6961746564;
    }

    else
    {
      v38 = 0xED00007972617262;
    }

    MEMORY[0x277C5EBC0](v37, v38);

    v39 = v54;
    sub_2749FAE94();

    sub_27474FD98(v34);
    v40 = v56 + *(v53 + 24);
    v41 = *v40;
    v42 = *(v40 + 16);
    v63 = v41;
    v64 = v42;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E5F8);
    MEMORY[0x277C5E410](v66, v43);
    if (v66[0] == v18)
    {
      v44 = v57;
      sub_2749FB594();
      v45 = v60;
    }

    else
    {
      *&v63 = MEMORY[0x277D84F90];
      sub_2748DE4F0(&unk_28159E630, MEMORY[0x277CE01F0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A468);
      sub_27472AB6C(&qword_28159E538, &qword_28096A468);
      v44 = v57;
      v45 = v60;
      sub_2749FD7B4();
    }

    sub_2749FAE84();
    (*(v58 + 8))(v44, v45);
    return sub_27474FD98(v39);
  }

  return result;
}

uint64_t sub_2748DD074()
{
  type metadata accessor for InspectorPaneSegmentedControl();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E5F8);
  return sub_2749FC6C4();
}

uint64_t sub_2748DD0E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a2;
  v69 = a3;
  v4 = sub_2749FC724();
  MEMORY[0x28223BE20](v4 - 8);
  v71 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E580);
  MEMORY[0x28223BE20](v6);
  v8 = &v59 - v7;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E5D8);
  MEMORY[0x28223BE20](v61);
  v10 = &v59 - v9;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E5C8);
  MEMORY[0x28223BE20](v62);
  v12 = &v59 - v11;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E5B8);
  MEMORY[0x28223BE20](v63);
  v70 = &v59 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E5A8);
  v15 = MEMORY[0x28223BE20](v14);
  v67 = v6;
  v68 = v8;
  v65 = v15;
  v66 = &v59 - v16;
  if (a1)
  {
    if (a1 != 1)
    {
      *&v76 = a1;
      result = sub_2749FDD24();
      __break(1u);
      return result;
    }

    v60 = sub_2749FC514();
  }

  else
  {
    v60 = sub_2749FC514();
    v17 = sub_2749FDCC4();

    if ((v17 & 1) == 0)
    {
      sub_2749FBCF4();
      sub_2749FBD44();
      v18 = sub_2749FBDA4();

      KeyPath = swift_getKeyPath();
      goto LABEL_8;
    }
  }

  sub_2749FBCE4();
  sub_2749FBD54();
  v18 = sub_2749FBDA4();

  KeyPath = swift_getKeyPath();
  if (a1)
  {
    v20 = a1;

    v21 = -1.0;
    goto LABEL_11;
  }

LABEL_8:
  v20 = a1;
  v22 = sub_2749FDCC4();

  if (v22)
  {
    v21 = -1.0;
  }

  else
  {
    v21 = 0.0;
  }

LABEL_11:
  v23 = &v10[*(v61 + 36)];
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969A30) + 28);
  v25 = *MEMORY[0x277CE1048];
  v26 = sub_2749FC554();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = swift_getKeyPath();
  *v10 = v60;
  *(v10 + 1) = KeyPath;
  *(v10 + 2) = v18;
  *(v10 + 3) = 0;
  *(v10 + 4) = v21;
  sub_2749FC914();
  sub_2749FABB4();
  sub_2747E2C9C(v10, v12, &qword_28096E5D8);
  v27 = &v12[*(v62 + 36)];
  v28 = v77;
  *v27 = v76;
  *(v27 + 1) = v28;
  *(v27 + 2) = v78;
  v29 = (v64 + *(type metadata accessor for InspectorPaneSegmentedControl() + 24));
  v30 = *v29;
  v31 = v29[1];
  v32 = v29[2];
  v73 = *v29;
  v74 = v31;
  v75 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E5F8);
  MEMORY[0x277C5E410](&v72);
  if (v72 == v20)
  {
    v34 = sub_2749FC474();
  }

  else
  {
    v34 = sub_2749FC494();
  }

  v35 = v34;
  v36 = swift_getKeyPath();
  v37 = v70;
  sub_2747E2C9C(v12, v70, &qword_28096E5C8);
  v38 = (v37 + *(v63 + 36));
  *v38 = v36;
  v38[1] = v35;
  v39 = *MEMORY[0x277CE0118];
  v40 = sub_2749FB584();
  v41 = *(*(v40 - 8) + 104);
  v41(v71, v39, v40);
  v73 = v30;
  v74 = v31;
  v75 = v32;
  MEMORY[0x277C5E410](&v72, v33);
  if (v72 == v20)
  {
    v42 = sub_2749FC434();
  }

  else
  {
    v42 = sub_2749FC464();
  }

  v43 = v42;
  v45 = v67;
  v44 = v68;
  v47 = v65;
  v46 = v66;
  v48 = swift_getKeyPath();
  sub_2748DDF9C(v71, v44, MEMORY[0x277CE1260]);
  v49 = (v44 + *(v45 + 36));
  *v49 = v48;
  v49[1] = v43;
  v50 = sub_2749FC914();
  v52 = v51;
  v53 = v46 + *(v47 + 36);
  sub_2747E2C9C(v44, v53, &qword_28096E580);
  v54 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E578) + 36));
  *v54 = v50;
  v54[1] = v52;
  sub_2747E2C9C(v70, v46, &qword_28096E5B8);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E590);
  v56 = v69;
  v57 = v69 + *(v55 + 36);
  v41(v57, v39, v40);
  *(v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E558) + 36)) = 0;
  return sub_2747E2C9C(v46, v56, &qword_28096E5A8);
}

uint64_t sub_2748DD7F8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2749FAA94();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = sub_2749FC724();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *MEMORY[0x277CE0118];
  v13 = sub_2749FB584();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  sub_2749FC494();
  sub_27473B1B4();
  (*(v3 + 104))(v6, *MEMORY[0x277CDF3C0], v2);
  sub_2749FAA84();
  v14 = *(v3 + 8);
  v14(v6, v2);
  v14(v8, v2);
  v15 = sub_2749FC484();

  KeyPath = swift_getKeyPath();
  sub_2748DDF9C(v11, a1, MEMORY[0x277CE1260]);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E580);
  v18 = (a1 + *(result + 36));
  *v18 = KeyPath;
  v18[1] = v15;
  return result;
}

id sub_2748DDA58(void *a1, char a2, _BYTE *a3)
{
  swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR___WFInspectorPaneSegmentedControlHostingView_selectedPane] = 0;
  *&a3[OBJC_IVAR___WFInspectorPaneSegmentedControlHostingView_segmentedControl] = 0;
  swift_unknownObjectWeakAssign();
  a3[OBJC_IVAR___WFInspectorPaneSegmentedControlHostingView_showsDetailsButton] = a2;
  v8.receiver = a3;
  v8.super_class = type metadata accessor for InspectorPaneSegmentedControlHostingView();
  v6 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_2748DC020();

  return v6;
}

void sub_2748DDB40()
{
  sub_2747B708C();
  if (v0 <= 0x3F)
  {
    sub_2748DDBCC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2748DDBCC()
{
  if (!qword_28096E508)
  {
    v0 = sub_2749FC714();
    if (!v1)
    {
      atomic_store(v0, &qword_28096E508);
    }
  }
}

uint64_t sub_2748DDC38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InspectorPaneSegmentedControl();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2748DDC9C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for InspectorPaneSegmentedControl() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2748DC7F8(a1, v6, a2);
}

unint64_t sub_2748DDD1C()
{
  result = qword_28096E528;
  if (!qword_28096E528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E518);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E530);
    sub_2749FB7D4();
    sub_2748DDE64();
    sub_2748DE4F0(&qword_28096E560, MEMORY[0x277CDDFB0]);
    swift_getOpaqueTypeConformance2();
    sub_2748DE4F0(&qword_28159E5A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E528);
  }

  return result;
}

unint64_t sub_2748DDE64()
{
  result = qword_28096E538;
  if (!qword_28096E538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E530);
    sub_27472AB6C(&qword_28096E540, &qword_28096E548);
    sub_27472AB6C(&qword_28096E550, &qword_28096E558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E538);
  }

  return result;
}

unint64_t sub_2748DDF48()
{
  result = qword_28096E568;
  if (!qword_28096E568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E568);
  }

  return result;
}

uint64_t sub_2748DDF9C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2748DDFFC()
{
  type metadata accessor for InspectorPaneSegmentedControl();

  return sub_2748DD074();
}

unint64_t sub_2748DE090()
{
  result = qword_28096E598;
  if (!qword_28096E598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E590);
    sub_2748DE148();
    sub_27472AB6C(&qword_28096E550, &qword_28096E558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E598);
  }

  return result;
}

unint64_t sub_2748DE148()
{
  result = qword_28096E5A0;
  if (!qword_28096E5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E5A8);
    sub_2748DE200();
    sub_27472AB6C(&qword_28096E5F0, &qword_28096E578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E5A0);
  }

  return result;
}

unint64_t sub_2748DE200()
{
  result = qword_28096E5B0;
  if (!qword_28096E5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E5B8);
    sub_2748DE2B8();
    sub_27472AB6C(&unk_28159E5B0, &unk_28096CFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E5B0);
  }

  return result;
}

unint64_t sub_2748DE2B8()
{
  result = qword_28096E5C0;
  if (!qword_28096E5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E5C8);
    sub_2748DE344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E5C0);
  }

  return result;
}

unint64_t sub_2748DE344()
{
  result = qword_28096E5D0;
  if (!qword_28096E5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E5D8);
    sub_2748DE3FC();
    sub_27472AB6C(&qword_280969AA0, &qword_280969A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E5D0);
  }

  return result;
}

unint64_t sub_2748DE3FC()
{
  result = qword_28096E5E0;
  if (!qword_28096E5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E5E8);
    sub_27488701C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E5E0);
  }

  return result;
}

uint64_t sub_2748DE488(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2748DE4F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2748DE538()
{
  result = qword_28096E600;
  if (!qword_28096E600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E570);
    sub_27472AB6C(&qword_28096E608, &unk_28096E610);
    sub_27472AB6C(&qword_28096E5F0, &qword_28096E578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E600);
  }

  return result;
}

uint64_t sub_2748DE744()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2748DE7D0(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___WFWorkflowSettingsViewController_delegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_27482CFDC;
}

id WorkflowSettingsViewController.init(workflow:database:hideNavigationBar:)(void *a1, void *a2, char a3)
{
  v4 = v3;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR___WFWorkflowSettingsViewController_workflow] = a1;
  *&v4[OBJC_IVAR___WFWorkflowSettingsViewController_database] = a2;
  v4[OBJC_IVAR___WFWorkflowSettingsViewController_hideNavigationBar] = a3;
  v8 = a1;
  v9 = a2;
  v14 = sub_2749FC6A4();
  v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E640));
  *&v4[OBJC_IVAR___WFWorkflowSettingsViewController_hostingController] = sub_2749FB6C4();
  v13.receiver = v4;
  v13.super_class = type metadata accessor for WorkflowSettingsViewController();
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);

  return v11;
}

id WorkflowSettingsViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void WorkflowSettingsViewController.init(coder:)()
{
  swift_unknownObjectWeakInit();
  sub_2749FDAE4();
  __break(1u);
}

id sub_2748DEA90()
{
  v1 = type metadata accessor for WorkflowSettingsViewController();
  v47.receiver = v0;
  v47.super_class = v1;
  objc_msgSendSuper2(&v47, sel_viewDidLoad);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = [Strong settingsViewControllerWantsToKnowIfNewShortcutFlow_];
    swift_unknownObjectRelease();
    if (v3)
    {
      v4 = *&v0[OBJC_IVAR___WFWorkflowSettingsViewController_workflow];
      v5 = [v4 actions];
      sub_2748DF254();
      v6 = sub_2749FCF84();

      v7 = sub_27472D918(v6);

      if (v7 >= 1)
      {
        [v4 addWatchWorkflowTypeIfEligible];
      }
    }
  }

  v8 = *&v0[OBJC_IVAR___WFWorkflowSettingsViewController_workflow];
  v42 = v1;
  v43 = &protocol witness table for WorkflowSettingsViewController;
  v41 = v0;
  v9 = v0[OBJC_IVAR___WFWorkflowSettingsViewController_hideNavigationBar];
  v32 = 0;
  v10 = v8;
  v11 = v0;
  sub_2749FC5B4();
  v33[0] = v31[0];
  v34 = v31[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v35 = sub_2748DF028;
  v36 = v12;
  v37 = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  v38 = sub_2748DF030;
  v39 = v13;
  v40 = 0;
  v44 = v9;
  KeyPath = swift_getKeyPath();
  v15 = *&v11[OBJC_IVAR___WFWorkflowSettingsViewController_hostingController];
  v16 = v10;
  v45 = KeyPath;
  v46 = WFUserInterfaceFromViewController();
  sub_2748DF038(v33, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E650);
  sub_2748DF0A8();
  v31[0] = sub_2749FC6A4();
  sub_2749FB6D4();
  [v11 addChildViewController_];
  result = [v15 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v18 = result;
  result = [v11 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v19 = result;
  [result bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  [v18 setFrame_];
  result = [v15 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v28 = result;
  [result setAutoresizingMask_];

  result = [v11 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v29 = result;
  result = [v15 view];
  if (result)
  {
    v30 = result;
    [v29 addSubview_];

    [v15 didMoveToParentViewController_];
    return sub_2748DF1EC(v33);
  }

LABEL_15:
  __break(1u);
  return result;
}

id WorkflowSettingsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2749FCD64();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id WorkflowSettingsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkflowSettingsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2748DF038(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E650);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2748DF0A8()
{
  result = qword_28096E658;
  if (!qword_28096E658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E650);
    sub_2748DF134();
    sub_2748DF188();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E658);
  }

  return result;
}

unint64_t sub_2748DF134()
{
  result = qword_28096E660;
  if (!qword_28096E660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E660);
  }

  return result;
}

unint64_t sub_2748DF188()
{
  result = qword_28096E668;
  if (!qword_28096E668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096E670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E668);
  }

  return result;
}

uint64_t sub_2748DF1EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2748DF254()
{
  result = qword_28096D540;
  if (!qword_28096D540)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28096D540);
  }

  return result;
}

uint64_t sub_2748DF360()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  return v1;
}

uint64_t sub_2748DF3D4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2749FA914();
}

uint64_t sub_2748DF444(void *a1)
{
  *(v1 + 16) = a1;
  if (a1 && (v3 = sub_2747D5A24(a1), v4))
  {
    v5 = v3;
    v6 = v4;
    if (qword_280966C50 != -1)
    {
      OUTLINED_FUNCTION_2_34();
    }

    sub_2748E32DC(v5, v6);

    swift_beginAccess();
  }

  else
  {
    swift_beginAccess();
  }

  sub_2749FA8C4();
  swift_endAccess();
  if (qword_280966C50 != -1)
  {
    OUTLINED_FUNCTION_2_34();
  }

  sub_2748E334C();

  return v1;
}

id sub_2748DF588()
{
  result = *(v0 + 16);
  if (result)
  {
    result = [result name];
    if (result)
    {
      v2 = result;
      v3 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v5 = v4;

      if (qword_280966C50 != -1)
      {
        OUTLINED_FUNCTION_2_34();
      }

      sub_2748E32DC(v3, v5);

      return sub_2748DF3D4();
    }
  }

  return result;
}

uint64_t sub_2748DF654()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI23CollectionWorkflowState__isAddedToLibrary;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270);
  OUTLINED_FUNCTION_9();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void sub_2748DF724()
{
  sub_2748E4240(319, &qword_28159E750, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2748DF7E4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CollectionWorkflowState(0);
  result = sub_2749FA874();
  *a1 = result;
  return result;
}

uint64_t sub_2748DF824@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v143 = a1;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E6F0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_10_1(v4);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E6F8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_10_1(&v112 - v8);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E700);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_10_1(v10);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E708);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14();
  v141 = v12;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E710);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_10_1(v14);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E718);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_10_1(v16);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E720);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_10_1(v18);
  v136 = sub_2749FAE14();
  OUTLINED_FUNCTION_43();
  v135 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_10_1(&v112 - v22);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E728);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_10_1(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E730);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_14();
  v138 = v26;
  v133 = type metadata accessor for CollectionWorkflowView(0);
  OUTLINED_FUNCTION_43();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  v126 = v30;
  v31 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E738);
  OUTLINED_FUNCTION_43();
  v129 = v32;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v33);
  v35 = &v112 - v34;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E740);
  OUTLINED_FUNCTION_43();
  v131 = v36;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_14();
  v144 = v38;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096E748);
  OUTLINED_FUNCTION_43();
  v132 = v39;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_14();
  v145 = v41;
  v127 = type metadata accessor for CollectionWorkflowView;
  v125 = v31;
  sub_2748E4D24(v1, v31, type metadata accessor for CollectionWorkflowView);
  v42 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v43 = swift_allocObject();
  sub_2748E4458(v31, v43 + v42);
  v146 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E758);
  sub_2748E4514();
  sub_2749FC624();
  v44 = sub_27472AC38(&qword_28096E780, &qword_28096E738);
  v45 = sub_2748E4618();
  v46 = v128;
  sub_2749FBFD4();
  (*(v129 + 8))(v35, v46);
  v47 = *(v1 + 136);
  v147 = *(v1 + 128);
  v148 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  sub_2749FC5E4();
  LODWORD(v129) = v151;
  v48 = v125;
  sub_2748E4D24(v2, v125, v127);
  v49 = swift_allocObject();
  sub_2748E4458(v48, v49 + v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E798);
  v149 = v46;
  v150 = &type metadata for GalleryChicletButtonStyle;
  v151 = v44;
  v152 = v45;
  swift_getOpaqueTypeConformance2();
  sub_2748E4810();
  v50 = v144;
  v51 = v130;
  sub_2749FC274();

  (*(v131 + 8))(v50, v51);
  if (*(v2 + 16))
  {
    v52 = v132;
    OUTLINED_FUNCTION_18_18();
    v54 = *(v53 - 256);
    sub_2747B95BC();
    v55 = v135;
    v56 = v134;
    v57 = v136;
    (*(v135 + 104))(v134, *MEMORY[0x277CDF988], v136);
    OUTLINED_FUNCTION_8_26();
    sub_274720F48(v58, v59);
    v60 = sub_2749FCD34();
    v62 = *(v55 + 8);
    v61 = v55 + 8;
    v62(v56, v57);
    v62(v54, v57);
    if (v60)
    {
      v63 = sub_2749FB514();
      v64 = v114;
      *v114 = v63;
      *(v64 + 8) = 0;
      *(v64 + 16) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E810);
      v65 = OUTLINED_FUNCTION_20_15();
      sub_2748E1D28(v65, v66, v67, v68);
      v69 = sub_2749FBCC4();
      sub_2749FA9E4();
      v70 = v64 + *(v124 + 36);
      *v70 = v69;
      *(v70 + 8) = v71;
      *(v70 + 16) = v72;
      *(v70 + 24) = v73;
      *(v70 + 32) = v74;
      *(v70 + 40) = 0;
      sub_27473ADB8(v64, v123, &qword_28096E710);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_21();
    }

    else
    {
      v91 = sub_2749FB644();
      v92 = v113;
      *v113 = v91;
      *(v92 + 8) = 0;
      *(v92 + 16) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E808);
      v93 = OUTLINED_FUNCTION_20_15();
      sub_2748E195C(v93, v94, v95, v96);
      OUTLINED_FUNCTION_19_17(v92);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_21();
      OUTLINED_FUNCTION_31_2();
    }

    sub_27472AC38(v75, v76);
    sub_2748E4B88();
    OUTLINED_FUNCTION_24_14();
    sub_2749FB7B4();
    OUTLINED_FUNCTION_31_2();
    sub_27478C584(v97, v98);
    v90 = v137;
    v99 = v138;
    OUTLINED_FUNCTION_19_17(v61);
    swift_storeEnumTagMultiPayload();
    sub_2748E4AD0();
    OUTLINED_FUNCTION_6_28();
    sub_2748E4C40(v100, v101, v102, v103);
    sub_2749FB7B4();
  }

  else
  {
    v77 = v116;
    v78 = v115;
    v79 = v117;
    OUTLINED_FUNCTION_18_18();
    v81 = *(v80 - 256);
    sub_2747B95BC();
    v82 = v135;
    v83 = v134;
    v84 = v136;
    (*(v135 + 104))(v134, *MEMORY[0x277CDF988], v136);
    OUTLINED_FUNCTION_8_26();
    sub_274720F48(v85, v86);
    v87 = sub_2749FCD34();
    v88 = *(v82 + 8);
    v88(v83, v84);
    v88(v81, v84);
    v52 = v132;
    v89 = (v132 + 16);
    sub_2749FC914();
    OUTLINED_FUNCTION_14_15();
    sub_2749FABB4();
    v90 = v137;
    if (v87)
    {
      (*v89)(v77, v145, v137);
      OUTLINED_FUNCTION_16_14(v77 + *(v79 + 36));
      v78 = v112;
      sub_2747D31F8(v77, v112, &qword_28096E6F8);
    }

    else
    {
      (*v89)(v78, v145, v137);
      OUTLINED_FUNCTION_16_14(v78 + *(v79 + 36));
    }

    sub_27473ADB8(v78, v119, &qword_28096E6F8);
    swift_storeEnumTagMultiPayload();
    sub_2748E4958();
    v104 = v120;
    sub_2749FB7B4();
    sub_27478C584(v78, &qword_28096E6F8);
    OUTLINED_FUNCTION_19_17(v104);
    swift_storeEnumTagMultiPayload();
    sub_2748E4AD0();
    OUTLINED_FUNCTION_6_28();
    OUTLINED_FUNCTION_31_2();
    sub_2748E4C40(v105, v106, v107, v108);
    v99 = v138;
    sub_2749FB7B4();
  }

  OUTLINED_FUNCTION_31_2();
  sub_27478C584(v109, v110);
  sub_2747D31F8(v99, v143, &qword_28096E730);
  return (*(v52 + 8))(v145, v90);
}

uint64_t sub_2748E0618(uint64_t a1)
{
  v2 = type metadata accessor for RootNavigationDestination();
  MEMORY[0x28223BE20](v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2749FB4C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 208);
  v10 = *(a1 + 216);
  if (*(a1 + 224) != 1)
  {

    sub_2749FD2D4();
    v12 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();
    sub_274830180(v9, v10, 0);
    result = (*(v6 + 8))(v8, v5);
    v10 = v17[1];
    if (!v17[0])
    {
      return result;
    }

    goto LABEL_5;
  }

  result = swift_unknownObjectRetain();
  if (v9)
  {
LABEL_5:
    ObjectType = swift_getObjectType();
    v14 = *a1;
    *v4 = v14;
    *(v4 + 8) = xmmword_274A0F630;
    *(v4 + 3) = 0;
    v4[32] = 96;
    swift_storeEnumTagMultiPayload();
    v15 = *(v10 + 16);
    v16 = v14;
    v15(v4, ObjectType, v10);
    swift_unknownObjectRelease();
    return sub_2748E50E0(v4, type metadata accessor for RootNavigationDestination);
  }

  return result;
}

double sub_2748E0858@<D0>(uint64_t a1@<X8>)
{
  sub_2748E08A4(v6);
  v2 = v7;
  v3 = v8;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return result;
}

id sub_2748E08A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CollectionWorkflowView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = *v1;
  result = [v7 name];
  if (!result)
  {
    goto LABEL_6;
  }

  v9 = result;
  v10 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v12 = v11;

  v13 = [v7 icon];
  if (!v13)
  {

LABEL_6:
    v21 = 0;
    v22 = 0uLL;
    v23 = -1;
    v24 = 0uLL;
    goto LABEL_9;
  }

  v14 = v13;
  v15 = *(v2 + 120);
  LOBYTE(v36) = *(v2 + 112);
  *(&v36 + 1) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  sub_2749FC5C4();
  v16 = *(v2 + 40);
  v36 = *(v2 + 24);
  v37 = v16;
  v17 = *(v2 + 72);
  v38 = *(v2 + 56);
  v39 = v17;
  v18 = sub_2748DF360();
  if (v30)
  {
    v30 = 7;
    type metadata accessor for ShortcutChiclet.Model(0);
    swift_allocObject();
    ShortcutChiclet.Model.init(metrics:isSelected:isHovered:isEditing:isGallery:isGalleryDetail:isAddedToLibrary:isDownloading:buttonType:buttonAction:)(&v36, 0, 0, 0, 1, 0, v18 & 1, 1, &v30, CGSizeMake, 0);
    sub_274720F48(&qword_2815A0440, type metadata accessor for ShortcutChiclet.Model);

    v19 = sub_2749FAD84();
    v30 = v10;
    v31 = v12;
    v32 = v14;
    v33 = v19;
    v34 = v20;
    v35 = 1;
  }

  else
  {
    v30 = 7;
    sub_2748E4D24(v2, &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CollectionWorkflowView);
    v25 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v26 = swift_allocObject();
    sub_2748E4458(&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
    type metadata accessor for ShortcutChiclet.Model(0);
    swift_allocObject();
    ShortcutChiclet.Model.init(metrics:isSelected:isHovered:isEditing:isGallery:isGalleryDetail:isAddedToLibrary:isDownloading:buttonType:buttonAction:)(&v36, 0, 0, 0, 1, 0, v18 & 1, 0, &v30, sub_2748E4F64, v26);
    sub_274720F48(&qword_2815A0440, type metadata accessor for ShortcutChiclet.Model);

    v27 = sub_2749FAD84();
    v30 = v10;
    v31 = v12;
    v32 = v14;
    v33 = v27;
    v34 = v28;
    v35 = 0;
  }

  sub_2748E45C4();

  v29 = v14;

  sub_2749FB7B4();

  v22 = v36;
  v24 = v37;
  v21 = v38;
  v23 = BYTE8(v38);
LABEL_9:
  *a1 = v22;
  *(a1 + 16) = v24;
  *(a1 + 32) = v21;
  *(a1 + 40) = v23;
  return result;
}

uint64_t sub_2748E0CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v38 = type metadata accessor for GalleryImportView();
  MEMORY[0x28223BE20](v38);
  v4 = (&v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E858);
  MEMORY[0x28223BE20](v40);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E860);
  MEMORY[0x28223BE20](v7);
  v9 = (&v36 - v8);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096E7B0);
  MEMORY[0x28223BE20](v41);
  v39 = &v36 - v10;
  v11 = type metadata accessor for CollectionWorkflowView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 160);
  v16 = *(a1 + 168);
  v46 = *(a1 + 144);
  v47 = v15;
  v48 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E868);
  sub_2749FC5C4();
  v17 = v43;
  if (v45)
  {
    if (v45 == 1)
    {
      v22 = v44;
      swift_getErrorValue();
      *&v46 = sub_2749FDD84();
      *(&v46 + 1) = v23;
      sub_27475D0D0();
      v24 = sub_2749FBEE4();
      v26 = v25;
      *v6 = v24;
      *(v6 + 1) = v25;
      v28 = v27 & 1;
      v6[16] = v27 & 1;
      *(v6 + 3) = v29;
      swift_storeEnumTagMultiPayload();
      sub_274754DBC(v24, v26, v28);

      sub_274754DBC(v24, v26, v28);
      sub_2748E489C();

      sub_2749FB7B4();
      sub_2748E4CB8(v17, v22, 1);
      sub_27477656C(v24, v26, v28);

      sub_27477656C(v24, v26, v28);
    }

    else
    {
      sub_2748E4D24(a1, &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CollectionWorkflowView);
      v18 = (*(v12 + 80) + 16) & ~*(v12 + 80);
      v19 = swift_allocObject();
      sub_2748E4458(v14, v19 + v18);
      *v9 = sub_2748E4D80;
      v9[1] = v19;
      v9[2] = 0;
      v9[3] = 0;
      swift_storeEnumTagMultiPayload();
      sub_27475D1E4(sub_2748E4D80);
      sub_27475D1E4(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096E7C0);
      sub_27487BAAC();
      sub_274720F48(&qword_28096D7F0, type metadata accessor for GalleryImportView);
      v20 = v39;
      sub_2749FB7B4();
      sub_27473ADB8(v20, v6, &unk_28096E7B0);
      swift_storeEnumTagMultiPayload();
      sub_2748E489C();
      sub_2749FB7B4();
      sub_27471F8A4(sub_2748E4D80);
      sub_27471F8A4(0);
      return sub_27478C584(v20, &unk_28096E7B0);
    }
  }

  else
  {
    v37 = v44;

    sub_2748E4D24(a1, &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CollectionWorkflowView);
    v30 = (*(v12 + 80) + 24) & ~*(v12 + 80);
    v31 = swift_allocObject();
    v32 = v37;
    *(v31 + 16) = v37;
    sub_2748E4458(v14, v31 + v30);
    v33 = *(v38 + 32);
    *(v4 + v33) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
    swift_storeEnumTagMultiPayload();
    v4[4] = 0;
    v4[5] = 0;
    v4[2] = v31;
    v4[3] = 0;
    *v4 = v32;
    v4[1] = sub_2748E4CCC;
    sub_2748E4D24(v4, v9, type metadata accessor for GalleryImportView);
    swift_storeEnumTagMultiPayload();
    v34 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096E7C0);
    sub_27487BAAC();
    sub_274720F48(&qword_28096D7F0, type metadata accessor for GalleryImportView);
    v35 = v39;
    sub_2749FB7B4();
    sub_27473ADB8(v35, v6, &unk_28096E7B0);
    swift_storeEnumTagMultiPayload();
    sub_2748E489C();
    sub_2749FB7B4();

    sub_27478C584(v35, &unk_28096E7B0);
    return sub_2748E50E0(v4, type metadata accessor for GalleryImportView);
  }
}

uint64_t sub_2748E1390(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionWorkflowView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2749FB4C4();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [*a2 persistentIdentifier];
  if (v11)
  {
    v12 = v11;
    v13 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = [objc_opt_self() defaultDatabase];
  v17 = [a1 record];
  v18 = [objc_allocWithZone(MEMORY[0x277D7CA68]) initWithRecord_];

  v31 = v18;
  v32 = v16;
  v33 = 1;
  v34 = v13;
  v35 = v15;
  v36 = 0;
  v37 = 0;
  v19 = *(a2 + 192);
  if (*(a2 + 200) == 1)
  {
    result = swift_unknownObjectRetain();
  }

  else
  {

    sub_2749FD2D4();
    v21 = sub_2749FBC14();
    v27 = a2;
    v22 = v5;
    v23 = v21;
    sub_2749FA424();

    v5 = v22;
    a2 = v27;
    sub_2749FB4B4();
    swift_getAtKeyPath();
    sub_274877EBC(v19, 0);
    result = (*(v28 + 8))(v10, v29);
    v19 = v30;
  }

  if (v19)
  {
    sub_2748E4D24(a2, v7, type metadata accessor for CollectionWorkflowView);
    v24 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v25 = swift_allocObject();
    sub_2748E4458(v7, v25 + v24);
    sub_2747D4BAC(v19, sub_2748E4EF4, v25);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2748E16EC()
{
  sub_2748DF3D4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  sub_2749FC5C4();
  sub_2749FC5D4();
}

void sub_2748E179C()
{
  v1 = v0;
  v2 = type metadata accessor for CollectionWorkflowView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = [objc_opt_self() sharedManager];
  v6 = *v0;
  sub_2748E4D24(v1, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CollectionWorkflowView);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_2748E4458(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  aBlock[4] = sub_2748E4D98;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_27479F0F0;
  aBlock[3] = &block_descriptor_53;
  v9 = _Block_copy(aBlock);

  v10 = [v5 loadWorkflowInGalleryWorkflow:v6 completionHandler:v9];
  _Block_release(v9);
}

uint64_t sub_2748E195C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v51 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E840);
  v8 = v7 - 8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E6F8);
  v15 = v14 - 8;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v50 - v19;
  sub_2749FC914();
  sub_2749FABB4();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096E748);
  (*(*(v21 - 8) + 16))(v20, a1, v21);
  v22 = &v20[*(v15 + 44)];
  v23 = v57;
  *v22 = v56;
  *(v22 + 1) = v23;
  *(v22 + 2) = v58;
  v52 = a2;
  v53 = a3;
  sub_27475D0D0();

  v24 = sub_2749FBEE4();
  v26 = v25;
  v52 = v24;
  v53 = v25;
  v28 = v27 & 1;
  v54 = v27 & 1;
  v55 = v29;
  sub_2749FC0D4();
  sub_27477656C(v24, v26, v28);

  v30 = sub_2749FC4A4();
  KeyPath = swift_getKeyPath();
  v32 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E830) + 36)];
  *v32 = KeyPath;
  v32[1] = v30;
  LOBYTE(v30) = sub_2749FBCB4();
  sub_2749FA9E4();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E838) + 36)];
  *v41 = v30;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  LOBYTE(v30) = sub_2749FBCC4();
  sub_2749FA9E4();
  v42 = &v13[*(v8 + 44)];
  *v42 = v30;
  *(v42 + 1) = v43;
  *(v42 + 2) = v44;
  *(v42 + 3) = v45;
  *(v42 + 4) = v46;
  v42[40] = 0;
  sub_27473ADB8(v20, v18, &qword_28096E6F8);
  sub_27473ADB8(v13, v11, &qword_28096E840);
  v47 = v51;
  sub_27473ADB8(v18, v51, &qword_28096E6F8);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E850);
  sub_27473ADB8(v11, v47 + *(v48 + 48), &qword_28096E840);
  sub_27478C584(v13, &qword_28096E840);
  sub_27478C584(v20, &qword_28096E6F8);
  sub_27478C584(v11, &qword_28096E840);
  return sub_27478C584(v18, &qword_28096E6F8);
}

uint64_t sub_2748E1D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v66 = a2;
  v65 = a1;
  v71 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E818);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v65 - v7;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096E820);
  v9 = MEMORY[0x28223BE20](v67);
  v70 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v65 - v12;
  MEMORY[0x28223BE20](v11);
  v69 = &v65 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E6F8);
  v16 = v15 - 8;
  v17 = MEMORY[0x28223BE20](v15);
  v68 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v65 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v65 - v22;
  sub_2749FC914();
  sub_2749FABB4();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096E748);
  (*(*(v24 - 8) + 16))(v21, v65, v24);
  v25 = &v21[*(v16 + 44)];
  v26 = v73;
  *v25 = v72;
  *(v25 + 1) = v26;
  *(v25 + 2) = v74;
  sub_2747D31F8(v21, v23, &qword_28096E6F8);
  __src[0] = v66;
  __src[1] = a3;
  sub_27475D0D0();

  v27 = sub_2749FBEE4();
  v29 = v28;
  __src[0] = v27;
  __src[1] = v28;
  v31 = v30 & 1;
  LOBYTE(__src[2]) = v30 & 1;
  __src[3] = v32;
  sub_2749FC0D4();
  sub_27477656C(v27, v29, v31);

  v33 = sub_2749FC4A4();
  KeyPath = swift_getKeyPath();
  v35 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E830) + 36)];
  *v35 = KeyPath;
  v35[1] = v33;
  LOBYTE(v33) = sub_2749FBC74();
  sub_2749FA9E4();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E838) + 36)];
  *v44 = v33;
  *(v44 + 1) = v37;
  *(v44 + 2) = v39;
  *(v44 + 3) = v41;
  *(v44 + 4) = v43;
  v44[40] = 0;
  LOBYTE(v33) = sub_2749FBC94();
  sub_2749FA9E4();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E840) + 36)];
  *v53 = v33;
  *(v53 + 1) = v46;
  *(v53 + 2) = v48;
  *(v53 + 3) = v50;
  *(v53 + 4) = v52;
  v53[40] = 0;
  LOBYTE(v33) = sub_2749FBCB4();
  sub_2749FA9E4();
  v54 = &v8[*(v6 + 44)];
  *v54 = v33;
  *(v54 + 1) = v55;
  *(v54 + 2) = v56;
  *(v54 + 3) = v57;
  *(v54 + 4) = v58;
  v54[40] = 0;
  sub_2749FC8F4();
  sub_2749FB004();
  sub_2747D31F8(v8, v13, &qword_28096E818);
  memcpy(&v13[*(v67 + 36)], __src, 0x70uLL);
  v59 = v69;
  sub_2747D31F8(v13, v69, &unk_28096E820);
  v60 = v68;
  sub_27473ADB8(v23, v68, &qword_28096E6F8);
  v61 = v70;
  sub_27473ADB8(v59, v70, &unk_28096E820);
  v62 = v71;
  sub_27473ADB8(v60, v71, &qword_28096E6F8);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E848);
  sub_27473ADB8(v61, v62 + *(v63 + 48), &unk_28096E820);
  sub_27478C584(v59, &unk_28096E820);
  sub_27478C584(v23, &qword_28096E6F8);
  sub_27478C584(v61, &unk_28096E820);
  return sub_27478C584(v60, &qword_28096E6F8);
}

uint64_t sub_2748E2360(void *a1, void *a2, uint64_t a3)
{
  v25 = a2;
  v5 = sub_2749FCA74();
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2749FCAA4();
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CollectionWorkflowView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27471CF08(0, &qword_28159E4E0);
  v15 = sub_2749FD404();
  sub_2748E4D24(a3, v14, type metadata accessor for CollectionWorkflowView);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_2748E4458(v14, v19 + v16);
  *(v19 + v17) = a1;
  v20 = v25;
  *(v19 + v18) = v25;
  aBlock[4] = sub_2748E4E08;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274760264;
  aBlock[3] = &block_descriptor_59_0;
  v21 = _Block_copy(aBlock);
  v22 = a1;
  v23 = v20;

  sub_2749FCA94();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_274720F48(&qword_28159E580, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60);
  sub_27472AC38(&qword_28159E530, &unk_28096DB60);
  sub_2749FD7B4();
  MEMORY[0x277C5F170](0, v10, v7, v21);
  _Block_release(v21);

  (*(v28 + 8))(v7, v5);
  return (*(v26 + 8))(v10, v27);
}

void sub_2748E2728(uint64_t a1, void *a2, void *a3)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  sub_2749FC5C4();
  sub_2749FC5D4();

  if (a2)
  {
    v5 = a2;
    sub_2748E27FC(a2, a3);
  }
}

void sub_2748E27FC(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for CollectionWorkflowView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = sub_2749FB4C4();
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v51 = v10;
    v52 = v7;
    v13 = objc_allocWithZone(MEMORY[0x277D7CA60]);
    v14 = a1;
    v15 = sub_2748925E8(v14, 0, 0);
    v23 = v15;
    if (v15)
    {
      v24 = *(v3 + 160);
      v25 = *(v3 + 168);
      v53 = *(v3 + 144);
      LOBYTE(v54) = v24;
      v55 = v25;
      v61 = a1;
      v62 = v15;
      v63 = 0;
      v26 = v14;
      v27 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E868);
      sub_2749FC5D4();
      v28 = [v26 importQuestions];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096E870);
      v29 = sub_2749FCF84();

      v30 = *(v29 + 16);

      if (v30)
      {
        v31 = *(v3 + 128);
        v32 = *(v3 + 136);
        LOBYTE(v53) = v31;
        *(&v53 + 1) = v32;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
        sub_2749FC5C4();
        LOBYTE(v61) = v31;
        v62 = v32;
        v59 = (v60 & 1) == 0;
        sub_2749FC5D4();
      }

      else
      {
        v46 = v26;
        v33 = [*v3 persistentIdentifier];
        if (v33)
        {
          v34 = v33;
          v50 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
          v36 = v35;
        }

        else
        {
          v50 = 0;
          v36 = 0;
        }

        v37 = [objc_opt_self() defaultDatabase];
        v38 = v27;
        v39 = [v38 record];
        v40 = [objc_allocWithZone(MEMORY[0x277D7CA68]) initWithRecord_];
        v47 = v38;

        v48 = v40;
        v49 = v37;
        *&v53 = v40;
        *(&v53 + 1) = v37;
        v54 = 1;
        v55 = v50;
        v56 = v36;
        v50 = v36;
        v57 = 0;
        v58 = 0;
        v41 = *(v3 + 192);
        if (*(v3 + 200) == 1)
        {
          swift_unknownObjectRetain();
        }

        else
        {

          sub_2749FD2D4();
          v42 = sub_2749FBC14();
          sub_2749FA424();

          sub_2749FB4B4();
          swift_getAtKeyPath();
          sub_274877EBC(v41, 0);
          (*(v51 + 8))(v12, v9);
          v41 = v61;
        }

        if (v41)
        {
          sub_2748E4D24(v3, &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CollectionWorkflowView);
          v43 = (*(v52 + 80) + 16) & ~*(v52 + 80);
          v44 = swift_allocObject();
          sub_2748E4458(&v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v44 + v43);
          sub_2747D4BAC(v41, sub_2748E4EA0, v44);

          swift_unknownObjectRelease();
        }

        else
        {
          __break(1u);
        }
      }

      return;
    }
  }

  if (a2)
  {
    v16 = *(v3 + 160);
    v17 = *(v3 + 168);
    v53 = *(v3 + 144);
    LOBYTE(v54) = v16;
    v55 = v17;
    v61 = a2;
    v62 = 0;
    v63 = 1;
    v18 = a2;
  }

  else
  {
    sub_27487C2B8();
    v19 = swift_allocError();
    *v20 = 0;
    *(v20 + 8) = 0;
    *(v20 + 16) = 3;
    v21 = *(v3 + 160);
    v22 = *(v3 + 168);
    v53 = *(v3 + 144);
    LOBYTE(v54) = v21;
    v55 = v22;
    v61 = v19;
    v62 = 0;
    v63 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E868);
  sub_2749FC5D4();
}

void sub_2748E2D78()
{
  v1 = *(v0 + 112);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  sub_2749FC5C4();
  sub_2749FC5D4();

  sub_2749FC5C4();
  if (v1 == 1)
  {
    sub_2748E179C();
  }
}

uint64_t sub_2748E2E4C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ShortcutChiclet(0);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v29 = *v1;
  v7 = *(v1 + 2);
  v27[3] = sub_27471CF08(0, &qword_28159E520);
  v27[4] = &protocol witness table for WFWorkflowIcon;
  v27[0] = v7;
  v28 = *(v1 + 24);
  *(v6 + 16) = swift_getKeyPath();
  v6[136] = 0;
  *(v6 + 18) = swift_getKeyPath();
  v6[152] = 0;
  v8 = v4[17];
  *&v6[v8] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  swift_storeEnumTagMultiPayload();
  v9 = v4[18];
  *&v6[v9] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DA60);
  swift_storeEnumTagMultiPayload();
  v10 = &v6[v4[19]];
  HIBYTE(v24) = 0;
  sub_2748AF6C8(&v29, v25);
  v11 = v7;
  sub_27473ADB8(&v28, v25, &unk_28096E888);
  sub_2749FC5B4();
  v12 = v26;
  *v10 = v25[0];
  *(v10 + 1) = v12;
  v13 = &v6[v4[20]];
  HIBYTE(v24) = 0;
  sub_2749FC5B4();
  v14 = v26;
  *v13 = v25[0];
  *(v13 + 1) = v14;
  v15 = &v6[v4[21]];
  v16 = &v6[v4[22]];
  v17 = &v6[v4[23]];
  *v6 = v29;
  sub_2747B960C(v27, (v6 + 16));
  v18 = [objc_opt_self() whiteColor];
  v6[89] = 1;
  *(v6 + 7) = v18;
  *(v6 + 8) = 0;
  *(v6 + 9) = 0;
  *(v6 + 10) = 0;
  type metadata accessor for ShortcutChiclet.Model(0);
  sub_274720F48(&qword_2815A0440, type metadata accessor for ShortcutChiclet.Model);

  *(v6 + 12) = sub_2749FAD84();
  *(v6 + 13) = v19;
  type metadata accessor for ShortcutChiclet.Progress(0);
  swift_allocObject();
  ShortcutChiclet.Progress.init()();
  sub_274720F48(&qword_2815A0130, type metadata accessor for ShortcutChiclet.Progress);
  v20 = sub_2749FAD84();
  v22 = v21;
  sub_27478C584(&v28, &unk_28096E888);
  *(v6 + 14) = v20;
  *(v6 + 15) = v22;
  *v15 = 0;
  *(v15 + 1) = 0;
  *v16 = 0;
  *(v16 + 1) = 0;
  *v17 = 0;
  *(v17 + 1) = 0;
  v6[88] = 0;
  sub_2748E4D24(v6, a1, type metadata accessor for ShortcutChiclet);
  __swift_destroy_boxed_opaque_existential_0(v27);
  return sub_2748E50E0(v6, type metadata accessor for ShortcutChiclet);
}

void *sub_2748E3210()
{
  type metadata accessor for AddedShortcutsCache();
  swift_allocObject();
  result = sub_2748E3250();
  qword_28096E680 = result;
  return result;
}

void *sub_2748E3250()
{
  v1 = [objc_opt_self() defaultDatabase];
  v2 = [v1 sortedVisibleWorkflowsByName];

  v0[2] = v2;
  v0[3] = 0;
  v0[4] = MEMORY[0x277D84F90];
  [v2 registerObserver_];
  return v0;
}

BOOL sub_2748E32DC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  if (!v5)
  {
    sub_2748E3428();
    v5 = *(v2 + 24);
    if (!v5)
    {
      return 0;
    }
  }

  v6 = sub_2747A6F94(a1, a2, v5);

  return v6;
}

uint64_t sub_2748E334C()
{
  v1 = v0;
  swift_weakInit();
  swift_weakAssign();
  swift_beginAccess();
  sub_2748E3E24(sub_2747649D4);
  v2 = *(*(v0 + 32) + 16);
  sub_2748E3F10(v2, sub_2747649D4);
  v3 = *(v0 + 32);
  *(v3 + 16) = v2 + 1;
  sub_2747D31F8(v5, v3 + 8 * v2 + 32, &qword_28096E6B0);
  *(v1 + 32) = v3;
  return swift_endAccess();
}

void sub_2748E3428()
{
  v1 = v0;
  v2 = [*(v0 + 16) descriptors];
  sub_27471CF08(0, &qword_28159E4A8);
  v3 = sub_2749FCF84();

  v4 = sub_27472D918(v3);
  if (v4)
  {
    v5 = v4;
    v16 = MEMORY[0x277D84F90];
    sub_27471F128();
    if (v5 < 0)
    {
      __break(1u);
      return;
    }

    v6 = 0;
    v7 = v16;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x277C5F6D0](v6, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = [v9 name];
      v11 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v13 = v12;

      v14 = *(v16 + 16);
      if (v14 >= *(v16 + 24) >> 1)
      {
        sub_27471F128();
      }

      ++v6;
      *(v16 + 16) = v14 + 1;
      v15 = v16 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v13;
    }

    while (v5 != v6);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  *(v1 + 24) = sub_27475FEBC(v7);
}

uint64_t sub_2748E35EC()
{
  v1 = sub_2749FCA74();
  v12 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2749FCAA4();
  v4 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27471CF08(0, &qword_28159E4E0);
  v7 = sub_2749FD404();
  aBlock[4] = sub_2748E3F84;
  v15 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274760264;
  aBlock[3] = &block_descriptor_36;
  v8 = _Block_copy(aBlock);

  sub_2749FCA94();
  v13 = MEMORY[0x277D84F90];
  sub_274720F48(&qword_28159E580, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60);
  sub_27472AC38(&qword_28159E530, &unk_28096DB60);
  sub_2749FD7B4();
  MEMORY[0x277C5F170](0, v6, v3, v8);
  _Block_release(v8);

  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

uint64_t sub_2748E38C8(uint64_t a1)
{
  sub_2748E3428();
  swift_beginAccess();
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = v2 + 32;

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (v3 != v6)
  {
    if (v6 >= *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    sub_27473ADB8(v4, v15, &qword_28096E6B0);
    if (swift_weakLoadStrong())
    {

      sub_2747D31F8(v15, &v14, &qword_28096E6B0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_27476DB4C(0, *(v7 + 16) + 1, 1);
        v7 = v16;
      }

      v10 = *(v7 + 16);
      v9 = *(v7 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_27476DB4C((v9 > 1), v10 + 1, 1);
        v7 = v16;
      }

      *(v7 + 16) = v10 + 1;
      result = sub_2747D31F8(&v14, v7 + 8 * v10 + 32, &qword_28096E6B0);
    }

    else
    {
      result = sub_27478C584(v15, &qword_28096E6B0);
    }

    v4 += 8;
    ++v6;
  }

  *(a1 + 32) = v7;

  v11 = *(a1 + 32);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v11 + 32;

    do
    {
      sub_27473ADB8(v13, &v16, &qword_28096E6B0);
      if (swift_weakLoadStrong())
      {
        sub_2748DF588();
      }

      sub_27478C584(&v16, &qword_28096E6B0);
      v13 += 8;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_2748E3B24()
{

  return v0;
}

uint64_t sub_2748E3B54()
{
  v0 = sub_2748E3B24();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_2748E3BA8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E898) - 8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E8A0) - 8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  sub_2749FB974();
  KeyPath = swift_getKeyPath();
  v11 = sub_2749FB984();
  v12 = &v5[*(v2 + 44)];
  *v12 = KeyPath;
  v12[8] = v11 & 1;
  if (sub_2749FB984())
  {
    v13 = 0.96;
  }

  else
  {
    v13 = 1.0;
  }

  sub_2749FC9F4();
  v15 = v14;
  v17 = v16;
  sub_2747D31F8(v5, v9, &qword_28096E898);
  v18 = &v9[*(v6 + 44)];
  *v18 = v13;
  *(v18 + 1) = v13;
  *(v18 + 2) = v15;
  *(v18 + 3) = v17;
  v19 = sub_2749FB984();
  v20.n128_u64[0] = 0x3FD3333333333333;
  if (v19)
  {
    v20.n128_f64[0] = 0.15;
  }

  v21 = MEMORY[0x277C5E6B0](v20, 1.0, 0.0);
  v22 = sub_2749FB984();
  sub_2747D31F8(v9, a1, &qword_28096E8A0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E8A8);
  v24 = a1 + *(result + 36);
  *v24 = v21;
  *(v24 + 8) = v22 & 1;
  return result;
}

uint64_t sub_2748E3E24(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_2748E3F10(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_2748E3F58(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_2749FCFB4();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10WorkflowUI010CollectionA4ViewV12LoadingState33_7D4FDD99A73E37A1040AFDD4A7DEC400LLO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

void sub_2748E4008()
{
  sub_27471CF08(319, &unk_28096CD30);
  if (v0 <= 0x3F)
  {
    sub_2748E4240(319, &qword_28096D810, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2748E4240(319, &unk_28096E6C8, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2748E4240(319, &qword_28096D840, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_2748E4324(319, &qword_28096E6D8, &qword_28096E6E0, &unk_274A1E5B8, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_2748E4290();
            if (v5 <= 0x3F)
            {
              sub_2748E4324(319, &unk_28096D390, &qword_28096BF90, &unk_274A1C040, MEMORY[0x277CDF468]);
              if (v6 <= 0x3F)
              {
                sub_2748E4324(319, &qword_28096CB68, &unk_28096CB70, &unk_274A1FEF0, MEMORY[0x277CDF468]);
                if (v7 <= 0x3F)
                {
                  sub_2748E4388();
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

void sub_2748E4240(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2748E4290()
{
  if (!qword_28096E6E8)
  {
    type metadata accessor for CollectionWorkflowState(255);
    sub_274720F48(&qword_28096CD40, type metadata accessor for CollectionWorkflowState);
    v0 = sub_2749FADB4();
    if (!v1)
    {
      atomic_store(v0, &qword_28096E6E8);
    }
  }
}

void sub_2748E4324(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_2748E4388()
{
  if (!qword_28096CB80)
  {
    sub_2749FAE14();
    v0 = sub_2749FAAB4();
    if (!v1)
    {
      atomic_store(v0, &qword_28096CB80);
    }
  }
}

void sub_2748E43FC(void *a1, void *a2, char a3)
{
  if (a3 == 1)
  {
  }

  else
  {
    if (a3)
    {
      return;
    }

    a1 = a2;
  }
}

uint64_t sub_2748E4458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionWorkflowView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2748E44BC()
{
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_11_1();

  return sub_2748E0618(v0 + v1);
}

unint64_t sub_2748E4514()
{
  result = qword_28096E760;
  if (!qword_28096E760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E758);
    sub_2748E4C40(&qword_28096E768, &unk_28096E770, &unk_274A210B8, sub_2748E45C4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E760);
  }

  return result;
}

unint64_t sub_2748E45C4()
{
  result = qword_28096E778;
  if (!qword_28096E778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E778);
  }

  return result;
}

unint64_t sub_2748E4618()
{
  result = qword_28096E788;
  if (!qword_28096E788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E788);
  }

  return result;
}

uint64_t objectdestroyTm_14()
{
  type metadata accessor for CollectionWorkflowView(0);
  OUTLINED_FUNCTION_23();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = v1 + v4;

  v8 = *(v1 + v4 + 160);
  if (v8 != 255)
  {
    sub_2748E43FC(*(v7 + 144), *(v7 + 152), v8);
  }

  OUTLINED_FUNCTION_11_23();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C200);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAE14();
    OUTLINED_FUNCTION_9();
    (*(v9 + 8))(v7 + v0);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_2748E47B0@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_11_1();

  return sub_2748E0CC0(v1 + v3, a1);
}

unint64_t sub_2748E4810()
{
  result = qword_28096E7A0;
  if (!qword_28096E7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E798);
    sub_2748E489C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E7A0);
  }

  return result;
}

unint64_t sub_2748E489C()
{
  result = qword_28096E7A8;
  if (!qword_28096E7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096E7B0);
    sub_27487BAAC();
    sub_274720F48(&qword_28096D7F0, type metadata accessor for GalleryImportView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E7A8);
  }

  return result;
}

unint64_t sub_2748E4958()
{
  result = qword_28096E7D0;
  if (!qword_28096E7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E6F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E740);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E798);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E738);
    sub_27472AC38(&qword_28096E780, &qword_28096E738);
    sub_2748E4618();
    swift_getOpaqueTypeConformance2();
    sub_2748E4810();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E7D0);
  }

  return result;
}

unint64_t sub_2748E4AD0()
{
  result = qword_28096E7D8;
  if (!qword_28096E7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E728);
    sub_27472AC38(&qword_28096E7E0, &unk_28096E720);
    sub_2748E4B88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E7D8);
  }

  return result;
}

unint64_t sub_2748E4B88()
{
  result = qword_28096E7E8;
  if (!qword_28096E7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E710);
    sub_27472AC38(&qword_28096E7F0, &unk_28096E7F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E7E8);
  }

  return result;
}

uint64_t sub_2748E4C40(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_108(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2748E4CB8(void *a1, void *a2, char a3)
{
  if (a3 != -1)
  {
    sub_2748E43FC(a1, a2, a3);
  }
}

uint64_t sub_2748E4CCC()
{
  OUTLINED_FUNCTION_3_41();
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_2748E1390(v2, v3);
}

uint64_t sub_2748E4D24(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_44();
  v5(v4);
  return a2;
}

uint64_t sub_2748E4D98(void *a1, void *a2)
{
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_11_1();

  return sub_2748E2360(a1, a2, v2 + v5);
}

void sub_2748E4E08()
{
  v1 = *(type metadata accessor for CollectionWorkflowView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_2748E2728(v0 + v2, v4, v5);
}

uint64_t sub_2748E4EA0()
{
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_11_1();
  return sub_2748DF3D4();
}

uint64_t sub_2748E4EF4()
{
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_11_1();

  return sub_2748E16EC();
}

uint64_t sub_2748E4F7C(uint64_t (*a1)(void))
{
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_11_1();
  return a1();
}

unint64_t sub_2748E4FF0()
{
  result = qword_28096E880;
  if (!qword_28096E880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E730);
    sub_2748E4AD0();
    sub_2748E4C40(&qword_28096E800, &qword_28096E700, &unk_274A21058, sub_2748E4958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E880);
  }

  return result;
}

uint64_t sub_2748E50E0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_2748E5138()
{
  result = qword_28096E8B8;
  if (!qword_28096E8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E8A8);
    sub_2748E51F0();
    sub_27472AC38(&qword_28159E640, &unk_28096E8F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E8B8);
  }

  return result;
}

unint64_t sub_2748E51F0()
{
  result = qword_28096E8C0;
  if (!qword_28096E8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E8A0);
    sub_2748E527C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E8C0);
  }

  return result;
}

unint64_t sub_2748E527C()
{
  result = qword_28096E8C8;
  if (!qword_28096E8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E898);
    sub_274720F48(&qword_28096E8D0, MEMORY[0x277CDE278]);
    sub_27472AC38(&qword_280968AC0, &unk_28096E8E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E8C8);
  }

  return result;
}

uint64_t sub_2748E538C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ShortcutChiclet(0);
  v5 = v4 - 8;
  v43 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v47 = v6;
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[5];
  v9 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v8);
  v10 = (*(v9 + 32))(v8, v9);
  v11 = [v10 baseColor];

  v46 = sub_2749FC414();
  v12 = *(v2 + 120);
  swift_getKeyPath();
  swift_getKeyPath();
  v44 = v12;

  sub_2749FA904();

  *&v13 = v56;
  v45 = v13;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  *&v14 = v49;
  v40 = v14;
  *&v14 = v50;
  v42 = v14;
  *&v14 = v51;
  v15 = v52;
  v41 = v14;
  v16 = v2 + *(v5 + 80);
  v17 = *v16;
  v18 = *(v16 + 8);
  v48 = v17;
  v49 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  result = sub_2749FC5E4();
  v20 = (v2 + *(v5 + 88));
  v39 = *v20;
  if (v39)
  {
    v38 = v53;
    v37 = v54;
    v36 = v55;
    v21 = v20[1];

    v35 = sub_2749FC474();
    type metadata accessor for ShortcutChiclet.Progress(0);
    OUTLINED_FUNCTION_0_32();
    sub_2748E6438(v22, v23);
    v24 = sub_2749FAD84();
    v26 = v25;
    sub_27473D654(v2, v7);
    v27 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v28 = swift_allocObject();
    sub_27473D980(v7, v28 + v27);
    sub_27473D654(v2, v7);
    v29 = swift_allocObject();
    result = sub_27473D980(v7, v29 + v27);
    v30 = v46;
    *a1 = v35;
    *(a1 + 8) = v30;
    *(a1 + 16) = v24;
    *(a1 + 24) = v26;
    *&v31 = v45;
    *(&v31 + 1) = v40;
    *&v32 = v42;
    *(&v32 + 1) = v41;
    *(a1 + 32) = v31;
    *(a1 + 48) = v32;
    *(a1 + 64) = v15;
    v33 = v37;
    *(a1 + 72) = v38;
    *(a1 + 80) = v33;
    *(a1 + 88) = v36;
    *(a1 + 96) = v39;
    *(a1 + 104) = v21;
    *(a1 + 112) = sub_2748E65B8;
    *(a1 + 120) = v28;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 160) = sub_2748E67F8;
    *(a1 + 168) = v29;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void ShortcutChiclet.ProgressView.Metrics.init(dimension:insets:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
}

__n128 ShortcutChiclet.ProgressView.init(primaryColor:passthroughColor:progress:metrics:isHovered:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, char a6@<W6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v15 = *(a3 + 32);
  *a8 = a1;
  *(a8 + 8) = a2;
  type metadata accessor for ShortcutChiclet.Progress(0);
  OUTLINED_FUNCTION_0_32();
  sub_2748E6438(v16, v17);
  v20 = *(a3 + 16);
  v21 = *a3;
  *(a8 + 16) = sub_2749FAD84();
  *(a8 + 24) = v18;
  result = v21;
  *(a8 + 32) = v21;
  *(a8 + 48) = v20;
  *(a8 + 64) = v15;
  *(a8 + 72) = a4;
  *(a8 + 80) = a5;
  *(a8 + 88) = a6;
  *(a8 + 96) = a7;
  *(a8 + 104) = a9;
  return result;
}

uint64_t sub_2748E5860()
{
  type metadata accessor for ShortcutChiclet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  return sub_2749FC5D4();
}

uint64_t ShortcutChiclet.ProgressView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2749F9E84();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + 72);
  v21 = *(v1 + 80);
  HIDWORD(v20) = *(v1 + 88);

  CircularProgressView.ProgressState.init(_:)(v5);

  sub_2749FC474();

  sub_2749F9E94();
  sub_2749FC914();
  sub_2749FABB4();
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E900) + 36));
  v8 = v29;
  *v7 = v28;
  v7[1] = v8;
  v7[2] = v30;
  type metadata accessor for ShortcutChiclet.Progress(0);
  OUTLINED_FUNCTION_0_32();
  sub_2748E6438(v9, v10);

  v11 = sub_2749FAD84();
  v13 = v12;
  v14 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E908) + 36);
  *v14 = 0x3FC999999999999ALL;
  *(v14 + 8) = v11;
  *(v14 + 16) = v13;
  *(v14 + 24) = xmmword_274A21370;
  v25 = v6;
  v26 = v21;
  v27 = BYTE4(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096FDE0);
  sub_2749FC6E4();
  v15 = v22;
  v16 = v23;
  v17 = v24;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E910);
  v19 = a1 + *(result + 36);
  *v19 = v15;
  *(v19 + 8) = v16;
  *(v19 + 16) = v17;
  return result;
}

uint64_t CircularProgressView.ProgressState.init(_:)@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  if (v7 >= 2u)
  {
    v2 = MEMORY[0x277D7D360];
  }

  else
  {
    *a1 = v6;
    v2 = MEMORY[0x277D7D358];
  }

  v3 = *v2;
  sub_2749F9E84();
  OUTLINED_FUNCTION_9();
  return (*(v4 + 104))(a1, v3);
}

uint64_t ShortcutChiclet.Progress.Transition.init(progress:)@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0x3FC999999999999ALL;
  *(a1 + 24) = xmmword_274A21370;
  type metadata accessor for ShortcutChiclet.Progress(0);
  OUTLINED_FUNCTION_0_32();
  sub_2748E6438(v2, v3);
  result = sub_2749FAD84();
  *(a1 + 8) = result;
  *(a1 + 16) = v5;
  return result;
}

uint64_t sub_2748E5C94@<X0>(uint64_t *a1@<X8>)
{
  result = ShortcutChiclet.Progress.Transition.progress.getter();
  *a1 = result;
  return result;
}

uint64_t ShortcutChiclet.Progress.Transition.progress.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t ShortcutChiclet.Progress.Transition.$progress.getter()
{
  type metadata accessor for ShortcutChiclet.Progress(0);
  OUTLINED_FUNCTION_0_32();
  sub_2748E6438(v0, v1);

  return sub_2749FAD94();
}

uint64_t ShortcutChiclet.Progress.Transition.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2749FABF4();
  sub_2749FC944();
  sub_2749FAC24();

  sub_274829D58();
  OUTLINED_FUNCTION_3_42();
  sub_2749FC9F4();
  sub_2749FABE4();

  sub_274829D58();
  OUTLINED_FUNCTION_3_42();
  sub_2749FC974();
  sub_2749FAC24();

  sub_2749FC9F4();
  sub_2749FABE4();

  sub_274829D58();
  OUTLINED_FUNCTION_3_42();
  sub_2749FC984();
  sub_2749FAC24();

  sub_2749FABF4();
  sub_2749FC944();

  sub_274829D58();
  OUTLINED_FUNCTION_3_42();
  sub_2749FC934();

  sub_2749FAC24();

  sub_2749FAC04();

  sub_2749FAC04();

  v4 = sub_2749FABD4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E918);
  OUTLINED_FUNCTION_9();
  (*(v5 + 16))(a2, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E920);
  *(a2 + *(result + 36)) = v4;
  return result;
}

uint64_t sub_2748E60D4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_2748E6114(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2748E6170(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2748E6190(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_2748E61D0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2748E6210(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_2748E6264()
{
  result = qword_28096E928;
  if (!qword_28096E928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E910);
    sub_2748E62F0();
    sub_27473F5EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E928);
  }

  return result;
}

unint64_t sub_2748E62F0()
{
  result = qword_28096E930;
  if (!qword_28096E930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E908);
    sub_2748E637C();
    sub_2748E6480();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E930);
  }

  return result;
}

unint64_t sub_2748E637C()
{
  result = qword_28096E938;
  if (!qword_28096E938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E900);
    sub_2748E6438(&qword_28096E940, MEMORY[0x277D7D370]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E938);
  }

  return result;
}

uint64_t sub_2748E6438(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2748E6480()
{
  result = qword_28096E948;
  if (!qword_28096E948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E948);
  }

  return result;
}

unint64_t sub_2748E64D4()
{
  result = qword_28096E950;
  if (!qword_28096E950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E920);
    sub_27472AB6C(&qword_28096E958, &qword_28096E918);
    sub_27472AB6C(&qword_28159E5E0, &qword_280966D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E950);
  }

  return result;
}

uint64_t objectdestroyTm_15()
{
  v1 = type metadata accessor for ShortcutChiclet(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  __swift_destroy_boxed_opaque_existential_0(v0 + v3 + 16);

  sub_2747F2F1C(*(v5 + 128), *(v5 + 136));
  sub_2747F2F1C(*(v5 + 144), *(v5 + 152));
  v6 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAA94();
    OUTLINED_FUNCTION_9();
    (*(v7 + 8))(v5 + v6);
  }

  else
  {
  }

  v8 = v1[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DA60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FB614();
    OUTLINED_FUNCTION_9();
    (*(v9 + 8))(v5 + v8);
  }

  else
  {
  }

  if (*(v5 + v1[19]))
  {
  }

  if (*(v5 + v1[20]))
  {
  }

  if (*(v5 + v1[21]))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t ShortcutMoveService.__allocating_init(database:undoManager:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_2748E68A4(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  v3 = MEMORY[0x277D84F98];
  v39 = MEMORY[0x277D84F98];
  v36 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v36 == v2)
    {

      return v3;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v5 = *(i - 2);
    v37 = v5;
    v38 = *(i - 1);
    v6 = *i;
    if (*i)
    {
      v7 = v5;
      v8 = [v6 identifier];
      v9 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v11 = v10;
    }

    else
    {
      v9 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v11 = v12;
      v13 = v5;
    }

    v15 = sub_274797CC0(v9, v11);
    v16 = v3[2];
    v17 = (v14 & 1) == 0;
    v18 = v16 + v17;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_22;
    }

    v19 = v14;
    if (v3[3] < v18)
    {
      sub_274934C68(v18, 1);
      v3 = v39;
      v20 = sub_274797CC0(v9, v11);
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_24;
      }

      v15 = v20;
    }

    if (v19)
    {

      v22 = v3[7];
      v23 = *(v22 + 8 * v15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v22 + 8 * v15) = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_274763B88();
        v23 = v32;
        *(v22 + 8 * v15) = v32;
      }

      v25 = *(v23 + 16);
      if (v25 >= *(v23 + 24) >> 1)
      {
        sub_274763B88();
        v23 = v33;
        *(v22 + 8 * v15) = v33;
      }

      *(v23 + 16) = v25 + 1;
      v26 = (v23 + 24 * v25);
      v26[4] = v37;
      v26[5] = v38;
      v26[6] = v6;
      v1 = a1;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A80);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_274A0EF10;
      *(v27 + 32) = v37;
      *(v27 + 40) = v38;
      *(v27 + 48) = v6;
      v3[(v15 >> 6) + 8] |= 1 << v15;
      v28 = (v3[6] + 16 * v15);
      *v28 = v9;
      v28[1] = v11;
      *(v3[7] + 8 * v15) = v27;
      v29 = v3[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_23;
      }

      v3[2] = v31;
    }

    ++v2;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_2749FDD54();
  __break(1u);
  return result;
}

void sub_2748E6B48(uint64_t a1, void *a2, unint64_t a3)
{
  sub_2748E6B98(a1, a2, 0, 0);
  if (!v3)
  {
    sub_2748E6E80(a3 | ((HIDWORD(a3) & 1) << 32));
  }
}

id sub_2748E6B98(uint64_t a1, void *a2, void *a3, char a4)
{
  v5 = v4;
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v38 = *MEMORY[0x277D85DE8];
  v10 = *(v4 + 24);
  if (v10)
  {
    v11 = sub_27472D918(a1);
    v12 = a1 & 0xC000000000000001;
    v29 = v10;
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v33 = v5;
    while (v11 != v13)
    {
      sub_2747B2790(v13, v12 == 0, a1);
      if (v12)
      {
        v15 = MEMORY[0x277C5F6D0](v13, a1);
      }

      else
      {
        v15 = *(a1 + 8 * v13 + 32);
      }

      v16 = v15;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
      }

      v35 = v15;
      sub_2748E71AC(&v35, v5, &v36);

      v17 = v36;
      if (v36)
      {
        v34 = v37;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_274763B88();
          v14 = v20;
        }

        v18 = *(v14 + 16);
        if (v18 >= *(v14 + 24) >> 1)
        {
          sub_274763B88();
          v14 = v21;
        }

        *(v14 + 16) = v18 + 1;
        v19 = v14 + 24 * v18;
        *(v19 + 32) = v17;
        *(v19 + 40) = v34;
        v5 = v33;
      }

      ++v13;
    }

    v22 = swift_allocObject();
    *(v22 + 16) = v14;
    *(v22 + 24) = a1;
    v7 = a3;
    v8 = a2;
    *(v22 + 32) = a2;
    *(v22 + 40) = a3;
    v6 = a4;
    *(v22 + 48) = a4 & 1;
    sub_2748E8C80(a1, a2, a3, a4 & 1);
    type metadata accessor for ShortcutMoveService();
    sub_2749FD284();
  }

  v23 = *(v5 + 16);
  sub_27471CF08(0, &qword_28159E4A8);
  v24 = sub_2749FCF74();
  v36 = 0;
  if (v6)
  {
    v25 = [v23 moveReferences:v24 toIndex:v8 ofCollection:v7 error:&v36];
  }

  else
  {
    v25 = [v23 prependReferences:v24 toCollection:v8 error:&v36];
  }

  v26 = v25;

  if (v26)
  {
    return v36;
  }

  v28 = v36;
  sub_2749F8FE4();

  return swift_willThrow();
}

void sub_2748E6E80(uint64_t a1)
{
  if ((a1 & 0x100000000) == 0)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D7C668]) init];
    sub_2748E8BC0(0xD000000000000011, 0x8000000274A32550, v5);
    switch(a1)
    {
      case -1:
        v2 = @"ShortcutSourceUnknown";
        goto LABEL_18;
      case 0:
        v2 = @"ShortcutSourceOnDevice";
        goto LABEL_18;
      case 1:
        v2 = @"ShortcutSourceGallery";
        goto LABEL_18;
      case 2:
        v2 = @"ShortcutSourceAddToSiri";
        goto LABEL_18;
      case 3:
        v2 = @"ShortcutSourceCloudLink";
        goto LABEL_18;
      case 4:
        v2 = @"ShortcutSourceDefaultShortcut";
        goto LABEL_18;
      case 5:
        v2 = @"ShortcutSourceSiriTopLevelShortcut";
        goto LABEL_18;
      case 6:
        v2 = @"ShortcutSourceAutomatorMigration";
        goto LABEL_18;
      case 7:
        v2 = @"ShortcutSourceFilePublic";
        goto LABEL_18;
      case 8:
        v2 = @"ShortcutSourceFileKnownContacts";
        goto LABEL_18;
      case 9:
        v2 = @"ShortcutSourceFilePersonal";
        goto LABEL_18;
      case 10:
        v2 = @"ShortcutSourceEditorDocumentMenu";
        goto LABEL_18;
      case 11:
        v2 = @"ShortcutSourceAppShortcut";
        goto LABEL_18;
      case 12:
        v2 = @"ShortcutSourceActiveStarterShortcut";
LABEL_18:
        v3 = v2;
        break;
      default:
        v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", a1];
        break;
    }

    v4 = v2;
    [v5 setSource_];

    [v5 track];
  }
}

void sub_2748E7040(uint64_t a1, void *a2, void *a3, unint64_t a4)
{
  sub_2748E6B98(a1, a2, a3, 1);
  if (!v4)
  {
    sub_2748E6E80(a4 | ((HIDWORD(a4) & 1) << 32));
  }
}

uint64_t ShortcutMoveService.__deallocating_deinit()
{
  ShortcutMoveService.deinit();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void sub_2748E71AC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v57 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v8 = [*(a2 + 16) collectionsForWorkflowReference_];
  v9 = sub_27471CF08(0, &qword_28159E490);
  sub_274772DBC();
  v10 = sub_2749FD154();

  v51 = a3;
  v52 = v3;
  v50 = v7;
  v53 = a2;
  if ((v10 & 0xC000000000000001) == 0)
  {
    v25 = *(v10 + 32);
    v12 = ((1 << v25) + 63) >> 6;
    v9 = (8 * v12);
    if ((v25 & 0x3Fu) <= 0xD)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

  v12 = MEMORY[0x277D84FA0];
  v56 = MEMORY[0x277D84FA0];
  sub_2749FD804();
  v4 = MEMORY[0x277D84F68];
  a3 = -1;
  v7 = 1;
  while (1)
  {
    while (1)
    {
      v13 = sub_2749FD874();
      if (!v13)
      {

LABEL_35:
        a3 = v51;
        v7 = v50;
LABEL_36:
        sub_2747A6D74();
        v35 = v34;

        swift_weakInit();
        if (v35)
        {
          sub_27471CF08(0, &unk_28096E960);
          v36 = v35;
          v37 = [v36 identifier];
          _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

          v38 = sub_2748E7918();
          sub_2748E775C(v7, v38);
          v40 = v39;
          v42 = v41;

          swift_weakDestroy();
          if (v42)
          {

LABEL_40:
            *a3 = 0;
            *(a3 + 8) = 0;
            *(a3 + 16) = 0;
            return;
          }
        }

        else
        {
          v43 = [objc_allocWithZone(MEMORY[0x277D7A1F8]) initWithLocation_];
          sub_2748E775C(v7, v43);
          v40 = v44;
          v46 = v45;

          swift_weakDestroy();
          if (v46)
          {
            goto LABEL_40;
          }
        }

        *a3 = v7;
        *(a3 + 8) = v40;
        *(a3 + 16) = v35;
        v47 = v7;
        return;
      }

      v54 = v13;
      swift_dynamicCast();
      v14 = v55;
      if ([v55 isFolder])
      {
        break;
      }
    }

    if (*(v12 + 24) <= *(v12 + 16))
    {
      sub_2747677FC();
    }

    v12 = v56;
    v10 = v55;
    v15 = sub_2749FD5F4();
    v16 = v56 + 56;
    v17 = -1 << *(v56 + 32);
    v18 = v15 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v56 + 56 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v56 + 56 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_17:
    *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v12 + 48) + 8 * v20) = v14;
    ++*(v12 + 16);
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v16 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_17;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_44:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_20:
    v49[0] = v49;
    MEMORY[0x28223BE20](v11);
    v9 = v49 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    v49[1] = v12;
    sub_27476A4B0(0, v12, v9);
    v26 = 0;
    v7 = 0;
    a3 = v10 + 56;
    v27 = 1 << *(v10 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v4 = v28 & *(v10 + 56);
    v29 = (v27 + 63) >> 6;
    while (v4)
    {
      v30 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
LABEL_30:
      v12 = v30 | (v7 << 6);
      if ([*(*(v10 + 48) + 8 * v12) isFolder])
      {
        *&v9[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
        if (__OFADD__(v26++, 1))
        {
          __break(1u);
LABEL_34:
          sub_274975F44();
          goto LABEL_35;
        }
      }
    }

    v31 = v7;
    while (1)
    {
      v7 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v7 >= v29)
      {
        goto LABEL_34;
      }

      v32 = *(a3 + 8 * v7);
      ++v31;
      if (v32)
      {
        v30 = __clz(__rbit64(v32));
        v4 = (v32 - 1) & v32;
        goto LABEL_30;
      }
    }
  }

  v48 = swift_slowAlloc();

  sub_27492CB2C(v48, v12, v10, sub_2748E7728);
  if (!v4)
  {
    swift_bridgeObjectRelease_n();
    MEMORY[0x277C61040](v48, -1, -1);
    goto LABEL_36;
  }

  swift_bridgeObjectRelease_n();
  MEMORY[0x277C61040](v48, -1, -1);
  __break(1u);
}

void sub_2748E775C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = *(Strong + 16);

  v5 = [v4 sortedWorkflowsWithQuery_];

  v6 = [v5 descriptors];
  sub_27471CF08(0, &qword_28159E4A8);
  v7 = sub_2749FCF84();

  v8 = sub_27472D918(v7);
  v9 = 0;
  while (1)
  {
    if (v8 == v9)
    {
LABEL_13:

      return;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x277C5F6D0](v9, v7);
      goto LABEL_7;
    }

    if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v10 = *(v7 + 8 * v9 + 32);
LABEL_7:
    v11 = v10;
    sub_27471CF08(0, &qword_28159E390);
    v12 = sub_2749FD604();

    if (v12)
    {
      goto LABEL_13;
    }

    if (__OFADD__(v9++, 1))
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

id sub_2748E7918()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_2749FCD64();

  v2 = [v0 initWithFolderIdentifier_];

  return v2;
}

uint64_t sub_2748E798C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, char a6)
{
  v11 = sub_2749FA4E4();
  MEMORY[0x28223BE20](v11);
  return sub_2748E7BB4(a2, a3, a4, a5, a6 & 1);
}

uint64_t sub_2748E7BB4(uint64_t a1, uint64_t a2, void *a3, void *a4, char a5)
{
  result = sub_2749FD234();
  if (!v6)
  {
    if (*(v5 + 24))
    {
      v12 = swift_allocObject();
      *(v12 + 16) = a2;
      *(v12 + 24) = a3;
      *(v12 + 32) = a4;
      *(v12 + 40) = a5 & 1;
      sub_2748E8C80(a2, a3, a4, a5 & 1);
      type metadata accessor for ShortcutMoveService();
      sub_2749FD284();
    }
  }

  return result;
}

void sub_2748E7CD0(uint64_t a1, void *a2)
{
  v55[1] = *MEMORY[0x277D85DE8];

  v5 = sub_2748E68A4(v4);
  v6 = v5;
  v47 = v2;
  v7 = v5 + 64;
  v8 = 1 << *(v5 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v5 + 64);
  v11 = (v8 + 63) >> 6;
  v12 = 0;
  v53 = a2;

  v45 = v11;
  v46 = v7;
  if (v10)
  {
    while (1)
    {
      v50 = v10;
LABEL_9:
      if (!v6[2])
      {
        goto LABEL_14;
      }

      v14 = (v6[6] + ((v12 << 10) | (16 * __clz(__rbit64(v50)))));
      v16 = *v14;
      v15 = v14[1];

      v17 = sub_274797CC0(v16, v15);
      if ((v18 & 1) == 0)
      {
        break;
      }

      v19 = *(v6[7] + 8 * v17);

      v55[0] = v19;

      sub_2748E81F0(v55);
      if (v47)
      {

        __break(1u);
        return;
      }

      v20 = v55[0];
LABEL_15:
      v49 = v12;
      v52 = *(v20 + 2);
      if (v52)
      {
        v21 = 0;
        v22 = (v20 + 48);
        v51 = v20;
        while (v21 < *(v20 + 2))
        {
          v23 = *(v22 - 2);
          v24 = *(v22 - 1);
          v25 = *v22;
          v54 = *v22;
          if (*v22)
          {
            v26 = v23;
            v27 = v25;
            v28 = [v27 identifier];
            if (!v28)
            {
              _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
              v28 = sub_2749FCD64();
            }

            _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
            v29 = [a2 collectionWithIdentifier_];

            if (v29 && (v30 = [v29 isDeleted], v29, (v30 & 1) == 0))
            {
              sub_27471CF08(0, &unk_28096E960);
              v35 = sub_2748E7918();
              v36 = v27;
              v32 = v53;
              v37 = [v53 sortedWorkflowsWithQuery_];

              v38 = [v37 count];
              v25 = v36;
              if (v24 >= v38)
              {
                v31 = v38;
              }

              else
              {
                v31 = v24;
              }
            }

            else
            {

              v25 = 0;
              v31 = 0;
              v32 = v53;
            }
          }

          else
          {
            v33 = v23;
            v34 = [a2 countOfAllVisibleWorkflows];
            if (v24 >= v34)
            {
              v31 = v34;
            }

            else
            {
              v31 = v24;
            }

            v32 = a2;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
          v39 = swift_allocObject();
          *(v39 + 16) = xmmword_274A11F70;
          *(v39 + 32) = v23;
          sub_27471CF08(0, &qword_28159E4A8);
          v40 = v23;
          v41 = sub_2749FCF74();

          v55[0] = 0;
          v42 = [v32 moveReferences:v41 toIndex:v31 ofCollection:v25 error:v55];

          if (!v42)
          {
            v44 = v55[0];

            sub_2749F8FE4();

            swift_willThrow();

            return;
          }

          ++v21;
          v43 = v55[0];

          v22 += 3;
          a2 = v53;
          v20 = v51;
          if (v52 == v21)
          {
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
      }

LABEL_33:
      v10 = (v50 - 1) & v50;

      v6 = v48;
      v12 = v49;
      v11 = v45;
      v7 = v46;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

LABEL_14:
    v20 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  while (1)
  {
LABEL_5:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_38;
    }

    if (v13 >= v11)
    {
      break;
    }

    ++v12;
    if (*(v7 + 8 * v13))
    {
      v50 = *(v7 + 8 * v13);
      v12 = v13;
      goto LABEL_9;
    }
  }
}

uint64_t sub_2748E81F0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2747DE574();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2748E825C(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_2748E825C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2749FDC64();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_2749FCFE4();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2748E83D0(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2748E8350(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2748E8350(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 24 * a3 + 8);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *(v9 - 2))
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        v11 = v9[2];
        *v9 = *(v9 - 3);
        v9[2] = *(v9 - 1);
        *(v9 - 2) = v7;
        *(v9 - 1) = v11;
        *(v9 - 3) = v10;
        v9 -= 3;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 24;
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

void sub_2748E83D0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v88 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v83 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 24 * v9 + 8);
        v11 = *a3 + 24 * v7;
        v12 = 24 * v7;
        v13 = *(v11 + 8);
        v14 = (v11 + 56);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 3;
          v19 = (v10 < v13) ^ (v18 >= v16);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 24 * v6;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = v23 + v20;
                v26 = *v24;
                v27 = *(v24 + 1);
                v28 = *(v25 - 24);
                v24[2] = *(v25 - 8);
                *v24 = v28;
                *(v25 - 24) = v26;
                *(v25 - 16) = v27;
              }

              ++v22;
              v20 -= 24;
              v12 += 24;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
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

          if (v9 != v6)
          {
            v29 = *a3;
            v30 = *a3 + 24 * v9;
            v31 = v7 - v9;
            do
            {
              v32 = *(v29 + 24 * v9 + 8);
              v33 = v31;
              v34 = v30;
              do
              {
                if (v32 >= *(v34 - 2))
                {
                  break;
                }

                if (!v29)
                {
                  goto LABEL_111;
                }

                v35 = *v34;
                v36 = v34[2];
                *v34 = *(v34 - 3);
                v34[2] = *(v34 - 1);
                *(v34 - 2) = v32;
                *(v34 - 1) = v36;
                *(v34 - 3) = v35;
                v34 -= 3;
              }

              while (!__CFADD__(v33++, 1));
              ++v9;
              v30 += 24;
              --v31;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v85 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274763780();
        v8 = v81;
      }

      v38 = v8[2];
      v39 = v38 + 1;
      if (v38 >= v8[3] >> 1)
      {
        sub_274763780();
        v8 = v82;
      }

      v8[2] = v39;
      v40 = v8 + 4;
      v41 = &v8[2 * v38 + 4];
      *v41 = v7;
      v41[1] = v85;
      v86 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v38)
      {
        while (1)
        {
          v42 = v39 - 1;
          v43 = &v40[2 * v39 - 2];
          v44 = &v8[2 * v39];
          if (v39 >= 4)
          {
            break;
          }

          if (v39 == 3)
          {
            v45 = v8[4];
            v46 = v8[5];
            v55 = __OFSUB__(v46, v45);
            v47 = v46 - v45;
            v48 = v55;
LABEL_56:
            if (v48)
            {
              goto LABEL_96;
            }

            v60 = *v44;
            v59 = v44[1];
            v61 = __OFSUB__(v59, v60);
            v62 = v59 - v60;
            v63 = v61;
            if (v61)
            {
              goto LABEL_99;
            }

            v64 = v43[1];
            v65 = v64 - *v43;
            if (__OFSUB__(v64, *v43))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v62, v65))
            {
              goto LABEL_104;
            }

            if (v62 + v65 >= v47)
            {
              if (v47 < v65)
              {
                v42 = v39 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v39 < 2)
          {
            goto LABEL_98;
          }

          v67 = *v44;
          v66 = v44[1];
          v55 = __OFSUB__(v66, v67);
          v62 = v66 - v67;
          v63 = v55;
LABEL_71:
          if (v63)
          {
            goto LABEL_101;
          }

          v69 = *v43;
          v68 = v43[1];
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_103;
          }

          if (v70 < v62)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v42 - 1 >= v39)
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

          v74 = &v40[2 * v42 - 2];
          v75 = *v74;
          v76 = &v40[2 * v42];
          v77 = v76[1];
          sub_2748E8A18((*a3 + 24 * *v74), (*a3 + 24 * *v76), *a3 + 24 * v77, v86);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v77 < v75)
          {
            goto LABEL_91;
          }

          v78 = v8;
          v79 = v8[2];
          if (v42 > v79)
          {
            goto LABEL_92;
          }

          *v74 = v75;
          v74[1] = v77;
          if (v42 >= v79)
          {
            goto LABEL_93;
          }

          v39 = v79 - 1;
          memmove(&v40[2 * v42], v76 + 2, 16 * (v79 - 1 - v42));
          v78[2] = v79 - 1;
          v80 = v79 > 2;
          v8 = v78;
          v5 = 0;
          if (!v80)
          {
            goto LABEL_85;
          }
        }

        v49 = &v40[2 * v39];
        v50 = *(v49 - 8);
        v51 = *(v49 - 7);
        v55 = __OFSUB__(v51, v50);
        v52 = v51 - v50;
        if (v55)
        {
          goto LABEL_94;
        }

        v54 = *(v49 - 6);
        v53 = *(v49 - 5);
        v55 = __OFSUB__(v53, v54);
        v47 = v53 - v54;
        v48 = v55;
        if (v55)
        {
          goto LABEL_95;
        }

        v56 = v44[1];
        v57 = v56 - *v44;
        if (__OFSUB__(v56, *v44))
        {
          goto LABEL_97;
        }

        v55 = __OFADD__(v47, v57);
        v58 = v47 + v57;
        if (v55)
        {
          goto LABEL_100;
        }

        if (v58 >= v52)
        {
          v72 = *v43;
          v71 = v43[1];
          v55 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v55)
          {
            goto LABEL_105;
          }

          if (v47 < v73)
          {
            v42 = v39 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v85;
      a4 = v83;
      if (v85 >= v6)
      {
        v88 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_2748E88E0(&v88, *a1, a3);
LABEL_89:
}

uint64_t sub_2748E88E0(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2747DCFFC(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_2748E8A18((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_2748E8A18(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_274764C44(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*(v6 + 1) >= *(v4 + 1))
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 24;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 24;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 24;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    *(v7 + 2) = *(v12 + 2);
    *v7 = v14;
    goto LABEL_13;
  }

  sub_274764C44(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_15:
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(v10 - 2) < *(v6 - 2))
    {
      v17 = v6 - 24;
      v13 = v5 + 24 == v6;
      v6 -= 24;
      if (!v13)
      {
        v18 = *v17;
        *(v5 + 16) = *(v17 + 2);
        *v5 = v18;
        v6 = v17;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 24))
    {
      v16 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v16;
    }

    v10 -= 24;
  }

LABEL_28:
  v19 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v19])
  {
    memmove(v6, v4, 24 * v19);
  }

  return 1;
}

void sub_2748E8BC0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2749FCD64();

  [a3 setKey_];
}

void sub_2748E8C24(uint64_t a1, void *a2, void *a3, char a4)
{

  if (a4)
  {
    v7 = a3;
  }

  else
  {
    v7 = a2;
  }
}

uint64_t sub_2748E8C80(uint64_t a1, void *a2, void *a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    a3 = a2;
  }

  v5 = a3;
}

uint64_t sub_2748E8CFC()
{
  v0 = sub_2749F8FF4();
  v12 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2749FD254();
  sub_2748E9FC0(&unk_28096ECA8);
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_2749FD6F4();
    if (!v18)
    {
      break;
    }

    sub_2747A42D8(&v17, v16);
    sub_274797FD4(v16, v13);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v14 = 0;
      v15 = 0;
    }

    __swift_destroy_boxed_opaque_existential_0(v16);
    v4 = v15;
    if (v15)
    {
      v5 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274763850();
        v3 = v8;
      }

      v6 = *(v3 + 16);
      if (v6 >= *(v3 + 24) >> 1)
      {
        sub_274763850();
        v3 = v9;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v5;
      *(v7 + 40) = v4;
    }
  }

  (*(v12 + 8))(v2, v0);
  return v3;
}

uint64_t sub_2748E8F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  memcpy(__dst, *a1, 0x59uLL);
  memmove(a2, v4, 0x59uLL);
  v5 = *(a1 + 8);
  memcpy(v16, v5, 0x54uLL);
  memmove((a2 + 96), v5, 0x54uLL);
  v6 = *(a1 + 16);
  v7 = *v6;
  LOBYTE(v6) = *(v6 + 8);
  *(a2 + 184) = v7;
  *(a2 + 192) = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096ECD0);
  sub_27473F28C(*(a1 + 24), a2 + v8[20], &unk_28096D880);
  v9 = a2 + v8[24];
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *v11;
  LOBYTE(v11) = *(v11 + 8);
  *v9 = v12;
  *(v9 + 8) = v11;
  sub_27473F28C(v10, a2 + v8[28], &unk_28096ECE0);
  sub_27473F28C(*(a1 + 48), a2 + v8[32], &unk_28096D870);
  sub_27473F28C(__dst, v14, &qword_28096C180);
  return sub_27473F28C(v16, v14, &unk_28096D908);
}

uint64_t sub_2748E9068@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EB38);
  (*(*(v5 - 8) + 16))(a2, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096EC40);
  v7 = v6[12];
  v8 = a1[1];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EB30);
  (*(*(v9 - 8) + 16))(a2 + v7, v8, v9);
  v10 = v6[16];
  v11 = a1[2];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EB28);
  (*(*(v12 - 8) + 16))(a2 + v10, v11, v12);
  v13 = v6[20];
  v14 = a1[3];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EB20);
  (*(*(v15 - 8) + 16))(a2 + v13, v14, v15);
  sub_27473F28C(a1[4], a2 + v6[24], &qword_28096EB18);
  v16 = v6[28];
  v17 = a1[5];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EB08);
  v19 = *(*(v18 - 8) + 16);

  return v19(a2 + v16, v17, v18);
}

id sub_2748E926C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_2749FCF74();

  v2 = [v0 initWithArray_];

  return v2;
}

id sub_2748E92E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2749FCD64();

  v5 = [swift_getObjCClassFromMetadata() imageNamed:v4 inBundle:a3];

  return v5;
}

id ShortcutDetailsView.init(workflow:delegate:hideNavigationBar:)@<X0>(void *a1@<X0>, __int128 *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_2749FC5B4();
  *a4 = v11;
  *(a4 + 8) = v12;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(a4 + 16) = sub_2748DF028;
  *(a4 + 24) = v7;
  *(a4 + 32) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(a4 + 40) = sub_2748DF030;
  *(a4 + 48) = v8;
  *(a4 + 56) = 0;
  sub_2747A45FC(a2, a4 + 64);
  *(a4 + 104) = a3;

  return a1;
}

void sub_2748E9444(void *a1)
{
  type metadata accessor for ShortcutDetailsViewModel();
  swift_allocObject();
  v2 = a1;
  sub_27475D228();
}

void sub_2748E9484(void *a1)
{
  type metadata accessor for SmartPromptsViewModel();
  swift_allocObject();
  v2 = a1;
  sub_2747D76E0();
  if (!v3)
  {
    __break(1u);
  }
}

uint64_t ShortcutDetailsView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096E970);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  type metadata accessor for ShortcutDetailsViewModel();
  sub_2748E9FC0(&qword_280967808);
  sub_2749FAB14();
  swift_getKeyPath();
  sub_2749FADA4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E980);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E988);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E990);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E998);
  sub_2748E9C24();
  sub_27475D0D0();
  OUTLINED_FUNCTION_7_23();
  OUTLINED_FUNCTION_7_23();
  OUTLINED_FUNCTION_7_23();
  return sub_2749FAEB4();
}

uint64_t sub_2748E9700(uint64_t a1)
{
  v2 = sub_2749FAD64();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_27475E184(v4);
}

uint64_t sub_2748E97CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v34 = sub_2749FB4F4();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E998);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E990);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E988);
  v31 = *(v11 - 8);
  v32 = v11;
  MEMORY[0x28223BE20](v11);
  v29 = &v29 - v12;
  v35 = a1;
  sub_2748EA020(v8);
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v13 = qword_28159E448;
  v14 = sub_2749FCD64();
  v15 = sub_2749FCD64();

  v16 = [v13 localizedStringForKey:v14 value:v15 table:0];

  v17 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v19 = v18;

  v37 = v17;
  v38 = v19;
  v20 = sub_2748E9C24();
  v21 = sub_27475D0D0();
  v22 = MEMORY[0x277D837D0];
  sub_2749FC0A4();

  sub_27478C584(v8, &qword_28096E998);
  v23 = v34;
  (*(v3 + 104))(v5, *MEMORY[0x277CDDDC0], v34);
  v37 = v6;
  v38 = v22;
  v39 = v20;
  v40 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v29;
  v26 = v33;
  sub_2749FC224();
  (*(v3 + 8))(v5, v23);
  (*(v30 + 8))(v10, v26);
  v37 = v26;
  v38 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v27 = v32;
  sub_2749FC194();
  return (*(v31 + 8))(v25, v27);
}

unint64_t sub_2748E9C24()
{
  result = qword_28096E9A0;
  if (!qword_28096E9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E998);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E9A8);
    sub_2748E9D1C();
    swift_getOpaqueTypeConformance2();
    sub_2748E9FC0(&qword_28159E5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E9A0);
  }

  return result;
}

unint64_t sub_2748E9D1C()
{
  result = qword_28096E9B0;
  if (!qword_28096E9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E9A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E9B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E9C0);
    sub_2748E9E88();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096DFE8);
    sub_27488EE4C(&unk_28096E9E0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E9B0);
  }

  return result;
}

unint64_t sub_2748E9E88()
{
  result = qword_28096E9C8;
  if (!qword_28096E9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E9B8);
    sub_2748E9F6C();
    swift_getOpaqueTypeConformance2();
    sub_27488EE4C(&unk_28096BFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E9C8);
  }

  return result;
}

unint64_t sub_2748E9F6C()
{
  result = qword_28096E9D0;
  if (!qword_28096E9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E9D0);
  }

  return result;
}

unint64_t sub_2748E9FC0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_15_1(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_2748EA020@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v42 = sub_2749FBA94();
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v40 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E9B8);
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - v5;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ECC0);
  v36 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v33 = &v33 - v7;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E9A8);
  MEMORY[0x28223BE20](v35);
  v9 = &v33 - v8;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ECC8);
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v34 = &v33 - v10;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E998);
  MEMORY[0x28223BE20](v43);
  v12 = &v33 - v11;
  type metadata accessor for ShortcutDetailsViewModel();
  sub_2748E9FC0(&qword_280967808);
  sub_2749FAB04();
  type metadata accessor for SmartPromptsViewModel();
  sub_2748E9FC0(&unk_28096EB00);
  sub_2749FAB04();
  sub_2747B960C(v1 + 64, v46);
  sub_2748EA808(v46, __src);
  sub_2748E9F6C();
  sub_2749FBFF4();
  sub_2748F5214(__src);
  v13 = [objc_opt_self() systemGroupedBackgroundColor];
  v14 = sub_2749FC3E4();
  v15 = sub_2749FBC64();
  v16 = &v6[*(v4 + 36)];
  *v16 = v14;
  v16[8] = v15;
  v45 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E9C0);
  sub_2748E9E88();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096DFE8);
  v18 = sub_27488EE4C(&unk_28096E9E0);
  __src[0] = v17;
  __src[1] = v18;
  swift_getOpaqueTypeConformance2();
  v19 = v33;
  sub_2749FC2C4();
  sub_27478C584(v6, &qword_28096E9B8);
  sub_2749FC914();
  sub_2749FB004();
  (*(v36 + 32))(v9, v19, v37);
  v20 = v35;
  memcpy(&v9[*(v35 + 36)], __src, 0x70uLL);
  v21 = v40;
  sub_2749FBA84();
  v22 = sub_2748E9D1C();
  v23 = v34;
  sub_2749FC1A4();
  (*(v41 + 8))(v21, v42);
  sub_27478C584(v9, &qword_28096E9A8);
  *&v46[0] = v20;
  *(&v46[0] + 1) = v22;
  swift_getOpaqueTypeConformance2();
  v24 = v38;
  sub_2749FC1F4();
  (*(v39 + 8))(v23, v24);
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v25 = qword_28159E448;
  v26 = sub_2749FCD64();
  v27 = sub_2749FCD64();

  v28 = [v25 localizedStringForKey:v26 value:v27 table:0];

  v29 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v31 = v30;

  *&v46[0] = v29;
  *(&v46[0] + 1) = v31;
  sub_27475D0D0();
  sub_2749FAE74();

  return sub_27478C584(v12, &qword_28096E998);
}

void sub_2748EA808(__int128 *a1@<X2>, uint64_t a2@<X8>)
{
  type metadata accessor for ShortcutDetailsViewModel();
  sub_2748E9FC0(&qword_280967808);
  *a2 = sub_2749FAD84();
  *(a2 + 8) = v4;
  type metadata accessor for SmartPromptsViewModel();
  sub_2748E9FC0(&unk_28096EB00);
  *(a2 + 16) = sub_2749FAD84();
  *(a2 + 24) = v5;
  *(a2 + 32) = swift_getKeyPath();
  *(a2 + 40) = 0;
  sub_2747A45FC(a1, a2 + 48);
  sub_2749FC5B4();
  *(a2 + 88) = v19;
  *(a2 + 96) = v20;
  sub_2749FC5B4();
  *(a2 + 104) = v19;
  *(a2 + 112) = v20;
  sub_2749FC5B4();
  *(a2 + 120) = v19;
  *(a2 + 128) = v20;
  sub_2749FCE14();
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v6 = qword_28159E448;
  v7 = sub_2749FCD64();

  v8 = sub_2749FCD64();

  v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

  v10 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v12 = v11;

  *(a2 + 136) = v10;
  *(a2 + 144) = v12;
  sub_2749FCE14();
  sub_2749FCE14();
  v13 = sub_2749FCD64();

  v14 = sub_2749FCD64();

  v15 = [v6 localizedStringForKey:v13 value:v14 table:0];

  v16 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v18 = v17;

  *(a2 + 152) = v16;
  *(a2 + 160) = v18;
}

uint64_t sub_2748EAB18(uint64_t a1)
{
  v2 = sub_2749FB834();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DFE8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_2749FB824();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DFF0);
  sub_27488EE4C(&qword_280968460);
  sub_2749FAB44();
  v7 = sub_27488EE4C(&unk_28096E9E0);
  MEMORY[0x277C5D5D0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2748EAD04(uint64_t a1)
{
  v2 = sub_2749FA9C4();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &__src[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2749FA9B4();
  sub_2748F5254(a1, __src);
  v5 = swift_allocObject();
  memcpy((v5 + 16), __src, 0x69uLL);
  return MEMORY[0x277C5E390](v4, sub_2748F528C, v5);
}

uint64_t sub_2748EADDC(void *a1)
{
  v1 = a1[11];
  v2 = a1[12];
  __swift_project_boxed_opaque_existential_1(a1 + 8, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_2748EAE50(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 105))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 88);
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

uint64_t sub_2748EAE90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2748EAF04(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_2748EAF44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2748EAFD0()
{
  result = qword_28096E9F8;
  if (!qword_28096E9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096E9F8);
  }

  return result;
}

uint64_t sub_2748EB068(uint64_t result)
{
  if (result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *v1 = v2;
  return result;
}

uint64_t sub_2748EB07C@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EA00);
  v38 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v32 - v3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EA08);
  v39 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v32 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EA10);
  v7 = *(v6 - 8);
  v41 = v6;
  v42 = v7;
  MEMORY[0x28223BE20](v6);
  v49 = &v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EA18);
  v10 = *(v9 - 8);
  v43 = v9;
  v44 = v10;
  MEMORY[0x28223BE20](v9);
  v40 = &v32 - v11;
  v50 = v1;
  v46 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EA20);
  sub_27488EE4C(&unk_28096EA28);
  sub_2749FBE34();
  v12 = sub_27471CF08(0, &qword_28096EA30);
  sub_2748F0F90(v1, v55);
  v13 = swift_allocObject();
  memcpy((v13 + 16), v55, 0xA8uLL);
  v14 = type metadata accessor for ImportQuestionEditorView();
  v15 = sub_27488EE4C(&unk_28096EA38);
  v16 = sub_2748F0FD0(&qword_28096EA40);
  v17 = sub_2748E9FC0(&unk_28096EA48);
  sub_2749FC1C4();

  (*(v38 + 8))(v4, v2);
  v18 = v46;
  sub_2748F0F90(v46, v55);
  v19 = swift_allocObject();
  memcpy((v19 + 16), v55, 0xA8uLL);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EA50);
  v55[0] = v2;
  v55[1] = v12;
  v55[2] = v14;
  v55[3] = v15;
  v55[4] = v16;
  v55[5] = v17;
  v38 = MEMORY[0x277CDEB90];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = sub_2748F10A0();
  v36 = sub_2748F10F4();
  v20 = v48;
  v21 = v47;
  sub_2749FC1C4();

  (*(v39 + 1))(v21, v20);
  v22 = v18[1];
  v47 = *v18;
  v39 = v22;
  v37 = type metadata accessor for ShortcutDetailsViewModel();
  sub_2748E9FC0(&qword_280967808);
  sub_2749FAD94();
  swift_getKeyPath();
  sub_2749FADA4();

  sub_2748F0F90(v18, v55);
  v23 = swift_allocObject();
  memcpy((v23 + 16), v55, 0xA8uLL);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EA90);
  v55[0] = v48;
  v55[1] = &type metadata for Page;
  v55[2] = v34;
  v55[3] = OpaqueTypeConformance2;
  v55[4] = v35;
  v55[5] = v36;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = sub_27488EE4C(&unk_28096EA98);
  v27 = v40;
  v26 = v41;
  v28 = v49;
  sub_2749FC274();

  (*(v42 + 8))(v28, v26);
  sub_2749FAD94();
  swift_getKeyPath();
  sub_2749FADA4();

  sub_2748F0F90(v46, v55);
  v29 = swift_allocObject();
  memcpy((v29 + 16), v55, 0xA8uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EAA0);
  v51 = v26;
  v52 = v32;
  v53 = v24;
  v54 = v25;
  swift_getOpaqueTypeConformance2();
  sub_2748F1378();
  v30 = v43;
  sub_2749FC274();

  return (*(v44 + 8))(v27, v30);
}

uint64_t sub_2748EB8D4@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X8>)
{
  v90 = a2;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EB08);
  v92 = *(v93 - 8);
  v3 = MEMORY[0x28223BE20](v93);
  v91 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v89 = &v81 - v5;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EB10);
  v83 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v82 = &v81 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EB18);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v105 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v86 = &v81 - v10;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EB20);
  v88 = *(v104 - 8);
  v11 = MEMORY[0x28223BE20](v104);
  v103 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v85 = &v81 - v13;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EB28);
  v108 = *(v102 - 8);
  v14 = MEMORY[0x28223BE20](v102);
  v101 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v94 = &v81 - v16;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EB30);
  v107 = *(v100 - 8);
  v17 = MEMORY[0x28223BE20](v100);
  v99 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v106 = &v81 - v19;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EB38);
  v97 = *(v98 - 8);
  v20 = MEMORY[0x28223BE20](v98);
  v96 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v81 - v22;
  v112 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EB40);
  sub_2748F1494();
  v95 = v23;
  sub_2749FC794();
  v84 = *(a1 + 8);
  v24 = sub_2748F4CC0([*(v84 + 16) record]);
  v26 = sub_2748F0A24(v24, v25);
  v28 = v27;

  *&v113 = v26;
  *(&v113 + 1) = v28;
  sub_27475D0D0();
  v29 = sub_2749FBEE4();
  v31 = v30;
  LOBYTE(v28) = v32;
  sub_2749FBDF4();
  v33 = sub_2749FBEC4();
  v35 = v34;
  v37 = v36;

  sub_27477656C(v29, v31, v28 & 1);

  sub_2749FC4A4();
  v38 = sub_2749FBE84();
  v40 = v39;
  v42 = v41;
  v44 = v43;

  sub_27477656C(v33, v35, v37 & 1);

  *&v113 = v38;
  *(&v113 + 1) = v40;
  LOBYTE(v114) = v42 & 1;
  *(&v114 + 1) = v44;
  v111 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EB68);
  sub_27488EE4C(&unk_28096EB70);
  sub_2749FC7A4();
  sub_2748ED520(&v113);
  v117 = v113;
  v118 = v114;
  v119 = v115;
  v110 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EB78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EB80);
  sub_2748F5704(&unk_28096EB88);
  sub_2748F4F4C(&unk_28096EBB0);
  v45 = v94;
  sub_2749FC7A4();
  v109 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EBB8);
  sub_27488EE4C(&unk_28096EBC0);
  v46 = v85;
  sub_2749FC794();
  v47 = [*(v84 + 16) isReportable];
  if (v47)
  {
    MEMORY[0x28223BE20](v47);
    *(&v81 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EBD8);
    v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096EBE0);
    v49 = type metadata accessor for ReportShortcutView(255);
    v50 = sub_2748F4E40();
    v51 = sub_2748E9FC0(&unk_28096EC10);
    *&v113 = v48;
    *(&v113 + 1) = v49;
    *&v114 = v50;
    *(&v114 + 1) = v51;
    swift_getOpaqueTypeConformance2();
    v52 = v82;
    sub_2749FC794();
    v53 = v86;
    v54 = v87;
    (*(v83 + 32))(v86, v52, v87);
    v55 = 0;
    v56 = v54;
  }

  else
  {
    v55 = 1;
    v53 = v86;
    v56 = v87;
  }

  v57 = __swift_storeEnumTagSinglePayload(v53, v55, 1, v56);
  MEMORY[0x28223BE20](v57);
  *(&v81 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EBC8);
  v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096CFC0);
  v59 = sub_2749F9DD4();
  v60 = sub_27488EE4C(&unk_28096B360);
  v61 = sub_2748E9FC0(&unk_28096EBD0);
  *&v113 = v58;
  *(&v113 + 1) = v59;
  *&v114 = v60;
  *(&v114 + 1) = v61;
  swift_getOpaqueTypeConformance2();
  v62 = v89;
  sub_2749FC794();
  v63 = v96;
  (*(v97 + 16))(v96, v95, v98);
  *&v113 = v63;
  v64 = v99;
  (*(v107 + 16))(v99, v106, v100);
  *(&v113 + 1) = v64;
  v65 = v101;
  v66 = v102;
  (*(v108 + 16))(v101, v45, v102);
  *&v114 = v65;
  v67 = v88;
  v68 = v103;
  v69 = v46;
  v70 = v104;
  (*(v88 + 16))(v103, v46, v104);
  *(&v114 + 1) = v68;
  v71 = v105;
  sub_27473F28C(v53, v105, &qword_28096EB18);
  v115 = v71;
  v72 = v92;
  v73 = v91;
  v74 = v93;
  (*(v92 + 16))(v91, v62, v93);
  v116 = v73;
  sub_2748E9068(&v113, v90);
  v92 = *(v72 + 8);
  (v92)(v62, v74);
  sub_27478C584(v53, &qword_28096EB18);
  v90 = *(v67 + 8);
  v90(v69, v70);
  v75 = *(v108 + 8);
  v108 += 8;
  v75(v94, v66);
  v76 = *(v107 + 8);
  v107 += 8;
  v77 = v100;
  v76(v106, v100);
  v78 = *(v97 + 8);
  v79 = v98;
  v78(v95, v98);
  (v92)(v73, v74);
  sub_27478C584(v105, &qword_28096EB18);
  v90(v103, v104);
  v75(v101, v102);
  v76(v99, v77);
  return (v78)(v96, v79);
}

uint64_t sub_2748EC6B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EB50);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ECB8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v22 - v10;
  v12 = [*(*(a1 + 8) + 16) reference];
  if (v12)
  {
    v13 = v12;
    sub_2748F0F90(a1, __src);
    v14 = swift_allocObject();
    v26 = v9;
    memcpy((v14 + 16), __src, 0xA8uLL);
    v24 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809689C8);
    v25 = a2;
    sub_27488EE4C(&qword_28096EC60);
    sub_2749FC624();
    v15 = *(a1 + 96);
    v27 = *(a1 + 88);
    v28 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
    sub_2749FC5E4();
    v22[1] = __src[0];
    v23 = LOBYTE(__src[2]);
    *(swift_allocObject() + 16) = v13;
    type metadata accessor for AddToHomeScreenViewControllerRepresentable(0);
    v16 = v7;
    v17 = v4;
    sub_27488EE4C(&unk_28096EB58);
    sub_2748E9FC0(&qword_28096EB60);
    v18 = v13;
    v19 = v24;
    sub_2749FC274();

    (*(v5 + 8))(v16, v17);
    v20 = v25;
    (*(v26 + 32))(v25, v19, v8);
    return __swift_storeEnumTagSinglePayload(v20, 0, 1, v8);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v8);
  }
}

uint64_t sub_2748ECB68()
{
  sub_2749FA304();
  sub_2748E9FC0(&qword_28159E800);

  return sub_2749FC584();
}

uint64_t sub_2748ECC24@<X0>(uint64_t a1@<X8>)
{
  sub_2749FCE14();
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v2 = qword_28159E448;
  v3 = sub_2749FCD64();

  v4 = sub_2749FCD64();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  sub_27475D0D0();
  result = sub_2749FBEE4();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_2748ECD64()
{
  v0 = sub_2749FA2F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2749FA2C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27471CF08(0, &unk_28096B160);
  sub_27471CF08(0, &qword_280967ED8);
  v8 = sub_2749FD5B4();
  v9 = sub_2748E92E4(0x65726353656D6F48, 0xEA00000000006E65, v8);
  [objc_allocWithZone(MEMORY[0x277D79FD0]) initWithImage_];

  (*(v5 + 104))(v7, *MEMORY[0x277D7D6A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D7D6D0], v0);
  return sub_2749FA314();
}

id sub_2748ECF80@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *MEMORY[0x277D7BE70];
  v4 = sub_2749F9494();
  (*(*(v4 - 8) + 104))(a2, v3, v4);

  return a1;
}

uint64_t sub_2748ED00C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EB78);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v16 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v16 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  sub_2748ED1D4(*MEMORY[0x277D7A898], &v16 - v12);
  sub_2748ED1D4(*MEMORY[0x277D7A8A0], v11);
  sub_27473F28C(v13, v8, &qword_28096EB78);
  sub_27473F28C(v11, v5, &qword_28096EB78);
  sub_27473F28C(v8, a1, &qword_28096EB78);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ECB0);
  sub_27473F28C(v5, a1 + *(v14 + 48), &qword_28096EB78);
  sub_27478C584(v11, &qword_28096EB78);
  sub_27478C584(v13, &qword_28096EB78);
  sub_27478C584(v5, &qword_28096EB78);
  return sub_27478C584(v8, &qword_28096EB78);
}

uint64_t sub_2748ED1D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EBA8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EB98);
  MEMORY[0x28223BE20](v8);
  v10 = v22 - v9;
  v11 = WFWorkflowTypeName.showInName.getter();
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    v15 = sub_2748F01B4(a1);
    v25 = a2;
    v22[0] = v16;
    v22[1] = v22;
    MEMORY[0x28223BE20](v15);
    v26 = v8;
    v22[-4] = v13;
    v22[-3] = v14;
    v22[-2] = a1;
    v24 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EC78);
    v23 = v10;
    sub_27488EE4C(&unk_28096EC80);
    sub_2749FC674();

    v27 = 0;
    v28 = 0xE000000000000000;
    sub_2749FD934();

    v27 = 0xD000000000000021;
    v28 = 0x8000000274A32710;
    v17 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    MEMORY[0x277C5EBC0](v17);

    sub_27488EE4C(&unk_28096EBA0);
    v18 = v23;
    v19 = v24;
    sub_2749FC1F4();

    (*(v5 + 8))(v7, v19);
    v20 = v25;
    sub_27475CF54(v18, v25, &qword_28096EB98);
    return __swift_storeEnumTagSinglePayload(v20, 0, 1, v26);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v8);
  }
}

double sub_2748ED520@<D0>(uint64_t a1@<X8>)
{
  sub_27475E440();
  v3 = v2;
  if (sub_27472D918(v2))
  {
    v4 = sub_2748F0618(v3);
    v6 = v5;

    *&v17 = v4;
    *(&v17 + 1) = v6;
    sub_27475D0D0();
    v7 = sub_2749FBEE4();
    v9 = v8;
    LOBYTE(v6) = v10;
    sub_2749FBDF4();
    v11 = sub_2749FBEC4();
    v13 = v12;
    v15 = v14;

    sub_27477656C(v7, v9, v6 & 1);

    sub_2749FC4A4();
    sub_2749FBE84();

    sub_27477656C(v11, v13, v15 & 1);
  }

  sub_2749FB7B4();
  result = *&v17;
  *a1 = v17;
  *(a1 + 16) = v18;
  *(a1 + 32) = v19;
  return result;
}

uint64_t sub_2748ED6F8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096EC50);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v21 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v21 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  v25 = 1;
  v24 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809689C8);
  sub_27488EE4C(&qword_28096EC60);
  sub_2748F10A0();
  sub_2749FAD34();
  v25 = 2;
  v23 = a1;
  sub_2749FAD34();
  v16 = *(v4 + 16);
  v16(v10, v15, v3);
  v16(v7, v13, v3);
  v17 = v22;
  v16(v22, v10, v3);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096EC68);
  v16(&v17[*(v18 + 48)], v7, v3);
  v19 = *(v4 + 8);
  v19(v13, v3);
  v19(v15, v3);
  v19(v7, v3);
  return (v19)(v10, v3);
}

uint64_t sub_2748ED9DC@<X0>(uint64_t a1@<X8>)
{
  sub_27475D0D0();

  result = sub_2749FBEE4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_2748EDA48()
{
  v0 = sub_2749FA2F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2749FA2C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithSystemColor_];
  v9 = [objc_allocWithZone(MEMORY[0x277D79FB8]) initWithColor_];

  v10 = objc_allocWithZone(MEMORY[0x277D7A158]);
  sub_27491A250(0xD000000000000010, 0x8000000274A326F0, v9);
  (*(v5 + 104))(v7, *MEMORY[0x277D7D6A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D7D6D0], v0);
  return sub_2749FA314();
}

uint64_t sub_2748EDC54()
{
  sub_2749FA304();
  sub_2748E9FC0(&qword_28159E800);
  return sub_2749FC584();
}

uint64_t sub_2748EDD00@<X0>(uint64_t a1@<X8>)
{
  sub_27475D0D0();

  result = sub_2749FBEE4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_2748EDD6C()
{
  v0 = sub_2749FA2F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2749FA2C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithSystemColor_];
  v9 = [objc_allocWithZone(MEMORY[0x277D79FB8]) initWithColor_];

  v10 = objc_allocWithZone(MEMORY[0x277D7A158]);
  sub_27491A250(0xD000000000000015, 0x8000000274A326D0, v9);
  (*(v5 + 104))(v7, *MEMORY[0x277D7D6A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D7D6D0], v0);
  return sub_2749FA314();
}

uint64_t sub_2748EDF78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EBE0);
  MEMORY[0x28223BE20](v2);
  v4 = &v16[-v3];
  sub_2748F0F90(a1, __src);
  v5 = swift_allocObject();
  memcpy((v5 + 16), __src, 0xA8uLL);
  v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809699B0);
  sub_2748F4F4C(&qword_28096EC20);
  sub_2749FC624();
  v6 = *(a1 + 128);
  LOBYTE(__src[0]) = *(a1 + 120);
  __src[1] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  sub_2749FC5C4();
  v7 = v18;
  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = &v4[*(v2 + 36)];
  *v10 = KeyPath;
  v10[1] = sub_2748F4FB4;
  v10[2] = v9;
  v11 = *(a1 + 112);
  LOBYTE(v18) = *(a1 + 104);
  v19 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EC30);
  sub_2749FC5E4();
  v13 = __src[0];
  v12 = __src[1];
  LOBYTE(KeyPath) = __src[2];
  swift_getKeyPath();
  v18 = v13;
  v19 = v12;
  v20 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EC38);
  sub_2749FC6D4();

  sub_2748F0F90(a1, __src);
  v14 = swift_allocObject();
  memcpy((v14 + 16), __src, 0xA8uLL);
  type metadata accessor for ReportShortcutView(0);
  sub_2748F4E40();
  sub_2748E9FC0(&unk_28096EC10);
  sub_2749FC274();

  return sub_27478C584(v4, &qword_28096EBE0);
}

double sub_2748EE308@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  sub_2749FC5C4();
  if (v10 == 1)
  {
    sub_2749FCE14();
    if (qword_28159E3A8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v2 = qword_28159E448;
  v3 = sub_2749FCD64();
  v4 = sub_2749FCD64();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  v6 = COERCE_DOUBLE(_sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0());
  v8 = v7;

  *&v11 = v6;
  *(&v11 + 1) = v8;
  sub_27475D0D0();
  sub_2749FBEE4();
  sub_2749FB7B4();
  result = v6;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

uint64_t sub_2748EE588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*(a1 + 8) + 16);
  sub_2748F0F90(a1, __src);
  v4 = swift_allocObject();
  memcpy((v4 + 16), __src, 0xA8uLL);
  v5 = v3;
  return sub_274861808(v3, 0, 0, 1, sub_2748F4FD0, v4, a2);
}

uint64_t sub_2748EE624()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EC30);
  sub_2749FC5C4();
  sub_2749FC5D4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  return sub_2749FC5D4();
}

uint64_t sub_2748EE6FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096CFC0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-v4];
  sub_2748F0F90(a1, __src);
  v6 = swift_allocObject();
  memcpy((v6 + 16), __src, 0xA8uLL);
  sub_2749FC624();
  v7 = *(a1 + 112);
  v11[8] = *(a1 + 104);
  v12 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EC30);
  sub_2749FC5E4();
  v8 = __src[0];
  v9 = __src[1];
  LOBYTE(a1) = __src[2];
  swift_getKeyPath();
  __src[0] = v8;
  __src[1] = v9;
  LOBYTE(__src[2]) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EC38);
  sub_2749FC6D4();

  sub_2749F9DD4();
  sub_27488EE4C(&unk_28096B360);
  sub_2748E9FC0(&unk_28096EBD0);
  sub_2749FC274();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2748EE9DC()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EC30);
  sub_2749FC5C4();
  sub_2749FC5D4();
}

uint64_t sub_2748EEA84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967618);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_2749F9064();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  sub_2749F9054();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    (*(v4 + 16))(v7, v9, v3);
    sub_2749F9DC4();
    return (*(v4 + 8))(v9, v3);
  }

  return result;
}

uint64_t sub_2748EEC3C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = sub_274850924(*a1, *(a2 + 8));

  return sub_274852334(v4, v5, v6, a3);
}

uint64_t sub_2748EEC7C@<X0>(_BYTE *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EAE0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v47 - v8;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EAE8);
  MEMORY[0x28223BE20](v54);
  v55 = v47 - v10;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EAF0);
  MEMORY[0x28223BE20](v50);
  v51 = v47 - v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EA70);
  MEMORY[0x28223BE20](v53);
  v52 = v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EA78);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EAF8);
  v18 = MEMORY[0x28223BE20](v17);
  v21 = v47 - v20;
  v22 = *a1;
  if (*a1)
  {
    v48 = v18;
    v49 = v6;
    if (v22 == 1)
    {
      v47[0] = v19;
      v47[1] = a3;
      type metadata accessor for ShortcutDetailsViewModel();
      sub_2748E9FC0(&qword_280967808);

      v23 = sub_2749FAD84();
      v25 = v24;
      type metadata accessor for SmartPromptsViewModel();
      sub_2748E9FC0(&unk_28096EB00);
      v26 = sub_2749FAD84();
      v58 = v23;
      v59 = v25;
      v60 = v26;
      v61 = v27;
      v28 = sub_2748F12C0();
      sub_2749FBFF4();

      v29 = a2[18];
      v58 = a2[17];
      v59 = v29;
      v56 = &type metadata for ShortcutDetailsPrivacyView;
      v57 = v28;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v31 = sub_27475D0D0();
      v32 = MEMORY[0x277D837D0];
      sub_2749FC0A4();
      (*(v14 + 8))(v16, v13);
      v33 = v47[0];
      v34 = v48;
      (*(v47[0] + 16))(v51, v21, v48);
      swift_storeEnumTagMultiPayload();
      v58 = v13;
      v59 = v32;
      v60 = OpaqueTypeConformance2;
      v61 = v31;
      swift_getOpaqueTypeConformance2();
      v35 = sub_2748F1314();
      v58 = &type metadata for ShortcutDetailsSetupView;
      v59 = v32;
      v60 = v35;
      v61 = v31;
      swift_getOpaqueTypeConformance2();
      v36 = v52;
      sub_2749FB7B4();
      sub_27473F28C(v36, v55, &qword_28096EA70);
      swift_storeEnumTagMultiPayload();
      sub_2748F1180();
      sub_2749FB7B4();
      sub_27478C584(v36, &qword_28096EA70);
      return (*(v33 + 8))(v21, v34);
    }

    else
    {
      sub_2747B960C((a2 + 6), &v60);
      type metadata accessor for ShortcutDetailsViewModel();
      sub_2748E9FC0(&qword_280967808);

      v58 = sub_2749FAD84();
      v59 = v38;
      v39 = a2[20];
      v56 = a2[19];
      v57 = v39;
      v40 = sub_2748F1314();
      v41 = sub_27475D0D0();
      v42 = MEMORY[0x277D837D0];
      sub_2749FC0A4();
      sub_2748F145C(&v58);
      v43 = v49;
      (*(v7 + 16))(v51, v9, v49);
      swift_storeEnumTagMultiPayload();
      v44 = sub_2748F12C0();
      v58 = &type metadata for ShortcutDetailsPrivacyView;
      v59 = v44;
      v45 = swift_getOpaqueTypeConformance2();
      v58 = v13;
      v59 = v42;
      v60 = v45;
      v61 = v41;
      swift_getOpaqueTypeConformance2();
      v58 = &type metadata for ShortcutDetailsSetupView;
      v59 = v42;
      v60 = v40;
      v61 = v41;
      swift_getOpaqueTypeConformance2();
      v46 = v52;
      sub_2749FB7B4();
      sub_27473F28C(v46, v55, &qword_28096EA70);
      swift_storeEnumTagMultiPayload();
      sub_2748F1180();
      sub_2749FB7B4();
      sub_27478C584(v46, &qword_28096EA70);
      return (*(v7 + 8))(v9, v43);
    }
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_2748F1180();
    return sub_2749FB7B4();
  }
}

uint64_t sub_2748EF48C()
{
  OUTLINED_FUNCTION_44_0();
  v0 = sub_27475E078();
  return OUTLINED_FUNCTION_20(v0);
}

uint64_t sub_2748EF4D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096EAB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280968448);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096E9C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096EAC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280968450);
  sub_274795614();
  swift_getOpaqueTypeConformance2();
  sub_27475D0D0();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096DFE8);
  sub_27488EE4C(&unk_28096E9E0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_2749FAD74();
}

uint64_t sub_2748EF6B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_2749FB4F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968450);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096EAC0);
  v38 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968448);
  v39 = *(v13 - 8);
  v40 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v41 = a1;
  v16 = *(*(a1 + 8) + 16);
  sub_27475E298();
  sub_2749F99E4();
  v17 = [objc_opt_self() systemGroupedBackgroundColor];
  v18 = sub_2749FC3E4();
  v19 = sub_2749FBC64();
  v20 = &v9[*(v7 + 36)];
  *v20 = v18;
  v20[8] = v19;
  (*(v4 + 104))(v6, *MEMORY[0x277CDDDC0], v3);
  v21 = sub_274795614();
  sub_2749FC224();
  (*(v4 + 8))(v6, v3);
  sub_27478C584(v9, &qword_280968450);
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v22 = qword_28159E448;
  v23 = sub_2749FCD64();
  v24 = sub_2749FCD64();

  v25 = [v22 localizedStringForKey:v23 value:v24 table:0];

  v26 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v28 = v27;

  v43 = v26;
  v44 = v28;
  v47 = v7;
  v48 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = sub_27475D0D0();
  v31 = MEMORY[0x277D837D0];
  sub_2749FC0A4();

  v32 = (*(v38 + 8))(v12, v10);
  MEMORY[0x28223BE20](v32);
  *(&v37 - 2) = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E9C0);
  v43 = v10;
  v44 = v31;
  v45 = OpaqueTypeConformance2;
  v46 = v30;
  swift_getOpaqueTypeConformance2();
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096DFE8);
  v34 = sub_27488EE4C(&unk_28096E9E0);
  v43 = v33;
  v44 = v34;
  swift_getOpaqueTypeConformance2();
  v35 = v40;
  sub_2749FC2C4();
  return (*(v39 + 8))(v15, v35);
}

uint64_t sub_2748EFC14(uint64_t a1)
{
  v2 = sub_2749FB834();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DFE8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_2749FB814();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DFF0);
  sub_27488EE4C(&qword_280968460);
  sub_2749FAB44();
  v7 = sub_27488EE4C(&unk_28096E9E0);
  MEMORY[0x277C5D5D0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2748EFE00(uint64_t a1)
{
  v2 = sub_2749FA9C4();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &__src[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_2749FA9A4();
  sub_2748F0F90(a1, __src);
  v5 = swift_allocObject();
  memcpy((v5 + 16), __src, 0xA8uLL);
  return MEMORY[0x277C5E390](v4, sub_2748F1454, v5);
}

uint64_t sub_2748EFF00()
{
  OUTLINED_FUNCTION_44_0();
  v0 = sub_27475E050();
  return OUTLINED_FUNCTION_20(v0);
}

uint64_t sub_2748EFF4C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(*(a1 + 8) + 16);
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v5 = qword_28159E448;
  v6 = sub_2749FCD64();
  v7 = sub_2749FCD64();

  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  v9 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v11 = v10;

  sub_2748F0F90(a1, __src);
  v12 = swift_allocObject();
  memcpy((v12 + 16), __src, 0xA8uLL);
  v13 = *(type metadata accessor for GalleryImportView() + 32);
  *(a2 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  swift_storeEnumTagMultiPayload();
  a2[3] = v9;
  a2[4] = v11;
  *a2 = v4;
  a2[1] = sub_2748F1434;
  a2[2] = v12;
  a2[5] = 0;
  v14 = sub_2749FBC64();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EAA0);
  *(a2 + *(result + 36)) = v14;
  return result;
}

uint64_t sub_2748F0114()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v0 = sub_2749FA8F4();
  *v1 = !*v1;
  v0(&v3, 0);
}

uint64_t sub_2748F01B4(void *a1)
{
  sub_2748F0F90(v1, __src);
  sub_2749FD0A4();
  v3 = a1;
  v4 = sub_2749FD094();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  v5[2] = v4;
  v5[3] = v6;
  memcpy(v5 + 4, __src, 0xA8uLL);
  v5[25] = v3;
  sub_2748F0F90(v1, __src);
  v7 = v3;
  v8 = sub_2749FD094();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = v6;
  memcpy(v9 + 4, __src, 0xA8uLL);
  v9[25] = v7;
  sub_2749FC6F4();
  return __src[0];
}

uint64_t sub_2748F02E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B3D8);
  sub_2748F50A4();
  return sub_2749FC584();
}

uint64_t sub_2748F0380@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v1 = sub_2749FA2F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2749FA2C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2749FA304();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (WFWorkflowTypeName.icon.getter())
  {
    (*(v6 + 104))(v8, *MEMORY[0x277D7D6A0], v5);
    (*(v2 + 104))(v4, *MEMORY[0x277D7D6D0], v1);
    sub_2749FA314();
    v13 = v17;
    (*(v10 + 32))(v17, v12, v9);
    return __swift_storeEnumTagSinglePayload(v13, 0, 1, v9);
  }

  else
  {
    v15 = v17;

    return __swift_storeEnumTagSinglePayload(v15, 1, 1, v9);
  }
}

uint64_t sub_2748F0618(uint64_t a1)
{
  v31 = sub_27472D918(a1);
  if (v31 < 2)
  {
    sub_2749FCE14();
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v8 = qword_28159E448;
    v9 = sub_2749FCD64();
    v10 = sub_2749FCD64();

    v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

    v5 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v7 = v12;

    if (v31)
    {
      goto LABEL_7;
    }

    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_2749FCE14();
    if (qword_28159E3A8 != -1)
    {
      goto LABEL_19;
    }

    while (1)
    {
      v1 = qword_28159E448;
      v2 = sub_2749FCD64();
      v3 = sub_2749FCD64();

      v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

      v5 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v7 = v6;

LABEL_7:
      v32 = MEMORY[0x277D84F90];
      sub_27471F128();
      if ((v31 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_19:
      swift_once();
    }

    v28 = v7;
    v29 = v5;
    v13 = 0;
    v14 = v32;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x277C5F6D0](v13, a1);
      }

      else
      {
        v15 = *(a1 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = [v15 localizedName];
      v18 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v20 = v19;

      MEMORY[0x277C5EBC0](v18, v20);

      v21 = *(v32 + 16);
      if (v21 >= *(v32 + 24) >> 1)
      {
        sub_27471F128();
      }

      ++v13;
      *(v32 + 16) = v21 + 1;
      v22 = v32 + 16 * v21;
      *(v22 + 32) = 547520738;
      *(v22 + 40) = 0xA400000000000000;
    }

    while (v31 != v13);
    v7 = v28;
    v5 = v29;
  }

  sub_27471CF08(0, &qword_28096EC98);
  sub_27479BDD0(v14);

  v23 = sub_2748E926C();
  v24 = sub_2748E8CFC();

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280968DF0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_274A0EF10;
  *(v25 + 32) = v5;
  *(v25 + 40) = v7;
  sub_274782360(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967BB0);
  sub_27488EE4C(&qword_28096ECA0);
  v26 = sub_2749FCD24();

  return v26;
}

uint64_t sub_2748F0A24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2 && (sub_2749F93D4(), sub_2749F93C4(), v4 = sub_2749F93B4(), v6 = v5, , v6))
  {
    sub_2749FCE14();
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v7 = qword_28159E448;
    v8 = sub_2749FCD64();
    v9 = sub_2749FCD64();

    v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_274A0F620;
    v12 = *(*(v3 + 8) + 16);
    v13 = WFWorkflow.editableName.getter();
    v15 = v14;

    v16 = MEMORY[0x277D837D0];
    *(v11 + 56) = MEMORY[0x277D837D0];
    v17 = sub_27475C4F4();
    *(v11 + 32) = v13;
    *(v11 + 40) = v15;
    *(v11 + 96) = v16;
    *(v11 + 104) = v17;
    *(v11 + 64) = v17;
    *(v11 + 72) = v4;
    *(v11 + 80) = v6;
  }

  else
  {
    sub_2749FCE14();
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v18 = qword_28159E448;
    v19 = sub_2749FCD64();
    v20 = sub_2749FCD64();

    v21 = [v18 localizedStringForKey:v19 value:v20 table:0];

    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_274A0EF10;
    v23 = *(*(v3 + 8) + 16);
    v24 = WFWorkflow.editableName.getter();
    v26 = v25;

    *(v22 + 56) = MEMORY[0x277D837D0];
    *(v22 + 64) = sub_27475C4F4();
    *(v22 + 32) = v24;
    *(v22 + 40) = v26;
  }

  v27 = sub_2749FCD74();

  return v27;
}

uint64_t sub_2748F0D24@<X0>(_BYTE *a1@<X8>)
{
  sub_27475DCC4();
  sub_274722D30();
  v3 = v2;

  *a1 = v3 & 1;
  return result;
}

uint64_t sub_2748F0D7C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (*a1 == 1)
  {
    v23 = sub_27475DCC4();
    v6 = a5;
    sub_274722B60();

    sub_27475DAE4(v23);
    v7 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v9 = v8;
    if (v7 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v9 == v10)
    {
    }

    else
    {
      v12 = sub_2749FDCC4();

      if ((v12 & 1) == 0)
      {
        return result;
      }
    }

    v20 = *MEMORY[0x277D7A8A0];
    v24 = sub_27475DCC4();
    sub_274722B60();

    v21 = v24;
    return sub_27475DAE4(v21);
  }

  v26 = sub_27475DCC4();

  sub_27475DAE4(v26);
  v14 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v16 = v15;
  if (v14 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v16 == v17)
  {

    goto LABEL_17;
  }

  v19 = sub_2749FDCC4();

  if (v19)
  {
LABEL_17:
    v22 = *MEMORY[0x277D7A888];
    v27 = sub_27475DCC4();

    v21 = v27;
    return sub_27475DAE4(v21);
  }

  return result;
}

unint64_t sub_2748F0FD0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_15_1(a1);
  if (!result)
  {
    sub_27471CF08(255, v3);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t objectdestroy_22Tm()
{

  sub_274877EBC(*(v0 + 48), *(v0 + 56));
  __swift_destroy_boxed_opaque_existential_0(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

unint64_t sub_2748F10A0()
{
  result = qword_28096EA58;
  if (!qword_28096EA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096EA58);
  }

  return result;
}

unint64_t sub_2748F10F4()
{
  result = qword_28096EA60;
  if (!qword_28096EA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096EA50);
    sub_2748F1180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096EA60);
  }

  return result;
}

unint64_t sub_2748F1180()
{
  result = qword_28096EA68;
  if (!qword_28096EA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096EA70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096EA78);
    sub_2748F12C0();
    swift_getOpaqueTypeConformance2();
    sub_27475D0D0();
    swift_getOpaqueTypeConformance2();
    sub_2748F1314();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096EA68);
  }

  return result;
}

unint64_t sub_2748F12C0()
{
  result = qword_28096EA80;
  if (!qword_28096EA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096EA80);
  }

  return result;
}

unint64_t sub_2748F1314()
{
  result = qword_28096EA88;
  if (!qword_28096EA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096EA88);
  }

  return result;
}

unint64_t sub_2748F1378()
{
  result = qword_28096EAA8;
  if (!qword_28096EAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096EAA0);
    sub_2748E9FC0(&unk_28096D7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096EAA8);
  }

  return result;
}

unint64_t sub_2748F1494()
{
  result = qword_28096EB48;
  if (!qword_28096EB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096EB40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096EB50);
    type metadata accessor for AddToHomeScreenViewControllerRepresentable(255);
    sub_27488EE4C(&unk_28096EB58);
    sub_2748E9FC0(&qword_28096EB60);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096EB48);
  }

  return result;
}

uint64_t sub_2748F15D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2749FC824();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EE08);
  sub_27488EE4C(&unk_28096EE10);
  sub_2749FBE34();
  KeyPath = swift_getKeyPath();
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EE18) + 36));
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EE20) + 28);
  (*(v4 + 104))(v6, *MEMORY[0x277CDF0D0], v3);
  sub_2749FC704();
  (*(v4 + 8))(v6, v3);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EE28);
  result = __swift_storeEnumTagSinglePayload(v8 + v9, 0, 1, v10);
  *v8 = KeyPath;
  return result;
}

uint64_t sub_2748F17C4@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EE38);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v55 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v50 = &v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EE40);
  v52 = *(v7 - 8);
  v53 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v51 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v50 - v10;
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v12 = qword_28159E448;
  v13 = sub_2749FCD64();
  v14 = sub_2749FCD64();

  v15 = [v12 localizedStringForKey:v13 value:v14 table:0];

  v16 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v18 = v17;

  v56 = 0;
  v57 = 0;
  v58 = v16;
  v59 = v18;
  MEMORY[0x28223BE20](v19);
  *(&v50 - 2) = a1;
  sub_2748550D0();
  sub_2748F58B8();
  v20 = v11;
  sub_2749FC784();
  v21 = sub_27475DD98();
  v22 = sub_27472D918(v21);

  if (v22)
  {
    sub_2749FCE14();
    v23 = sub_2749FCD64();
    v24 = sub_2749FCD64();

    v25 = [v12 localizedStringForKey:v23 value:v24 table:0];

    v26 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v28 = v27;

    sub_2749FCE14();
    v29 = sub_2749FCD64();
    v30 = sub_2749FCD64();

    v31 = [v12 localizedStringForKey:v29 value:v30 table:0];

    v32 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v34 = v33;

    v56 = v26;
    v57 = v28;
    v58 = v32;
    v59 = v34;
    MEMORY[0x28223BE20](v35);
    *(&v50 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096CFC0);
    sub_27488EE4C(&unk_28096B360);
    v36 = v50;
    sub_2749FC784();
    v37 = 0;
  }

  else
  {
    v37 = 1;
    v36 = v50;
  }

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EE50);
  __swift_storeEnumTagSinglePayload(v36, v37, 1, v38);
  v40 = v51;
  v39 = v52;
  v41 = *(v52 + 16);
  v42 = v20;
  v43 = v20;
  v44 = v53;
  v41(v51, v43, v53);
  v45 = v55;
  sub_27473F28C(v36, v55, &qword_28096EE38);
  v46 = v54;
  v41(v54, v40, v44);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096EE58);
  sub_27473F28C(v45, &v46[*(v47 + 48)], &qword_28096EE38);
  sub_27478C584(v36, &qword_28096EE38);
  v48 = *(v39 + 8);
  v48(v42, v44);
  sub_27478C584(v45, &qword_28096EE38);
  return (v48)(v40, v44);
}