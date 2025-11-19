uint64_t sub_27479BA7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 modificationDate];
  sub_2749F90D4();

  v4 = sub_2749F90F4();

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

uint64_t sub_27479BAE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 lastRunDate];
  if (v3)
  {
    v4 = v3;
    sub_2749F90D4();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_2749F90F4();

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

void *sub_27479BB78(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2749FD844();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v11 = MEMORY[0x277D84F90];
  result = sub_27476D660(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v11;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x277C5F6D0](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v9 = *(v11 + 16);
      v8 = *(v11 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_27476D660((v8 > 1), v9 + 1, 1);
      }

      ++v5;
      *(v11 + 16) = v9 + 1;
      v10 = v11 + 16 * v9;
      *(v10 + 32) = v7;
      *(v10 + 40) = &off_2883915F8;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_27479BCA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_27476DA58(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      v14 = v2;
      v6 = *(v2 + 16);
      v7 = *(v2 + 24);
      v8 = v5;
      if (v6 >= v7 >> 1)
      {
        sub_27476DA58((v7 > 1), v6 + 1, 1);
        v2 = v14;
      }

      type metadata accessor for WFWorkflowTypeName(0);
      v12 = v9;
      v13 = sub_274721580(&qword_280968750, type metadata accessor for WFWorkflowTypeName);
      *&v11 = v8;
      *(v2 + 16) = v6 + 1;
      sub_2747A45FC(&v11, v2 + 40 * v6 + 32);
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_27479BDD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_27476D590(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_27476D590((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_2747A42D8(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_27479BEE4()
{
  OUTLINED_FUNCTION_41_0();
  if (v2 >> 62)
  {
    v3 = sub_2749FD844();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    return v4;
  }

  v11 = MEMORY[0x277D84F90];
  result = sub_27476D590(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v4 = v11;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x277C5F6D0](v6, v1);
      }

      else
      {
        v7 = *(v1 + 8 * v6 + 32);
      }

      sub_27471CF08(0, v0);
      swift_dynamicCast();
      v11 = v4;
      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_27476D590((v8 > 1), v9 + 1, 1);
        v4 = v11;
      }

      ++v6;
      *(v4 + 16) = v9 + 1;
      sub_2747A42D8(&v10, (v4 + 32 * v9 + 32));
    }

    while (v3 != v6);
    return v4;
  }

  __break(1u);
  return result;
}

void sub_27479C03C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_27479C0A4()
{
  type metadata accessor for RootNavigationDestination();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_91_1();
  v5 = 65537;
  v6 = 1;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_78_1();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_24();
    RootView.navigate(to:with:completion:)();
    swift_unknownObjectRelease();
    v2 = OUTLINED_FUNCTION_29_1();
    sub_2747A371C(v2, v3, v8);
    OUTLINED_FUNCTION_1_10();
    sub_274722658(v0, v4);
  }

  else
  {
    sub_2747A48E8(&v5);
  }

  OUTLINED_FUNCTION_50_0();
}

uint64_t sub_27479C1C4(void *a1)
{
  v2 = type metadata accessor for RootNavigationDestination();
  MEMORY[0x28223BE20](v2);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [a1 subAction];
  if (v5)
  {
    v6 = v5;
    v7 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  LODWORD(v16) = 65537;
  BYTE4(v16) = 1;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  if (v9)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      *v4 = 0;
      *(v4 + 1) = 0;
      *(v4 + 2) = v7;
      *(v4 + 3) = v9;
      v10 = 33;
LABEL_9:
      v4[32] = v10;
      swift_storeEnumTagMultiPayload();
      v11 = v16;
      v12 = v17;
      v13 = v18;
      v15[1] = v16;
      v15[2] = v17;
      v15[3] = v18;
      v15[4] = v19;
      RootView.navigate(to:with:completion:)();
      swift_unknownObjectRelease();
      sub_2747A371C(v11, v12, v13);
      return sub_274722658(v4, type metadata accessor for RootNavigationDestination);
    }

    sub_2747A48E8(&v16);
  }

  else
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      *v4 = 0u;
      *(v4 + 1) = 0u;
      v10 = 0x80;
      goto LABEL_9;
    }

    return sub_2747A48E8(&v16);
  }
}

id sub_27479C3A4(void *a1)
{
  v2 = type metadata accessor for RootNavigationDestination();
  MEMORY[0x28223BE20](v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 subAction];
  if (result)
  {
    v6 = result;
    v7 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v9 = v8;

    LODWORD(v14) = 65537;
    BYTE4(v14) = 1;
    v16 = 0;
    v17 = 0;
    v15 = 0;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      *v4 = v7;
      *(v4 + 1) = v9;
      *(v4 + 2) = 0;
      *(v4 + 3) = 0;
      v4[32] = 96;
      swift_storeEnumTagMultiPayload();
      v10 = v14;
      v11 = v15;
      v12 = v16;
      v13[1] = v14;
      v13[2] = v15;
      v13[3] = v16;
      v13[4] = v17;
      RootView.navigate(to:with:completion:)();
      swift_unknownObjectRelease();
      sub_2747A371C(v10, v11, v12);
      return sub_274722658(v4, type metadata accessor for RootNavigationDestination);
    }

    else
    {

      return sub_2747A48E8(&v14);
    }
  }

  return result;
}

void sub_27479C544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a7)
  {
    v14 = sub_2749FCD64();
  }

  else
  {
    v14 = 0;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    (*(*(a10 + 8) + 16))(a1, v14, a3, 1, 0, a4, a5, a9, *(a10 + 8));
    swift_unknownObjectRelease();
  }
}

uint64_t sub_27479C618(uint64_t a1, void *a2, uint64_t a3, void *a4, void *aBlock, uint64_t a6)
{
  v10 = *(a1 + 32);
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  if (a6)
  {
    v13 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    a6 = v14;
  }

  else
  {
    v13 = 0;
  }

  v15 = a2;
  v16 = a4;
  v10(v15, a3, a4, sub_2747A48E0, v12, v13, a6);
}

void sub_27479C724(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = sub_2749F8FD4();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1, a2 & 1);
}

uint64_t sub_27479C7A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a7;
  v50 = a6;
  v53 = a5;
  v49 = a1;
  v10 = sub_2749FA4E4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v47 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v46 = &v45 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v45 - v16;
  v52 = *MEMORY[0x277D7A490];
  sub_2749FA3D4();
  v18 = sub_2749FA4D4();
  v19 = sub_2749FD2A4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_274719000, v18, v19, "Handling the open-shortcut request", v20, 2u);
    MEMORY[0x277C61040](v20, -1, -1);
  }

  v54 = *(v11 + 8);
  v54(v17, v10);
  v56 = v10;
  v55 = v11 + 8;
  if (a2)
  {
    v21 = [a2 integerValue];
    v22 = v21;
    if (a4)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0;
    }

    v51 = v23;
    if (a4)
    {
      v24 = a3;
    }

    else
    {
      v24 = 0;
    }

    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
  }

  else
  {
    if (qword_280966BB8 != -1)
    {
      swift_once();
    }

    memcpy(__dst, &qword_2809686A8, sizeof(__dst));
    v30 = __dst[7];
    v31 = __dst[8];
    v29 = __dst[6];
    v28 = BYTE2(__dst[5]);
    v27 = BYTE1(__dst[5]);
    v26 = __dst[5];
    v24 = __dst[3];
    v51 = __dst[2];
    a4 = __dst[4];
    v22 = __dst[0];
    v25 = __dst[1];
    sub_2747A3270(__dst, v59);
  }

  __dst[0] = v22;
  LOBYTE(__dst[1]) = v25;
  __dst[2] = v51;
  __dst[3] = v24;
  __dst[4] = a4;
  LOBYTE(__dst[5]) = v26;
  BYTE1(__dst[5]) = v27;
  BYTE2(__dst[5]) = v28;
  __dst[6] = v29;
  __dst[7] = v30;
  __dst[8] = v31;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v33 = Strong;
    v34 = v47;
    sub_2749FA3D4();
    v35 = sub_2749FA4D4();
    v36 = sub_2749FD2A4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_274719000, v35, v36, "Handling the open-shortcut request; opening the workflow", v37, 2u);
      MEMORY[0x277C61040](v37, -1, -1);
    }

    v54(v34, v56);
    v58 = v33;
    memcpy(__src, __dst, sizeof(__src));
    v38 = *(*(v48 + 8) + 8);
    v39 = *(v38 + 8);
    sub_2747A3270(__dst, v59);
    v39(v49, __src, v50, v38);
    swift_unknownObjectRelease();
    sub_2747A32A8(__dst);
    memcpy(v59, __src, sizeof(v59));
    sub_2747A32A8(v59);
    return swift_unknownObjectRelease();
  }

  else
  {
    v41 = v46;
    sub_2749FA3D4();
    v42 = sub_2749FA4D4();
    v43 = sub_2749FD2C4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_274719000, v42, v43, "Failed to handle the open-shortcut request because self was deallocated", v44, 2u);
      MEMORY[0x277C61040](v44, -1, -1);

      sub_2747A32A8(__dst);
    }

    else
    {
      sub_2747A32A8(__dst);
    }

    return (v54)(v41, v56);
  }
}

uint64_t sub_27479CCC8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  if (a4)
  {
    v7 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a2;
  v11 = a3;
  v6(v10, a3, v7, v9);
}

uint64_t sub_27479CD7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_27479CDF8(a1, a3, a4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_27479CDF8(void *a1, uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v60 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967618);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v57 - v5;
  v7 = sub_2749F9064();
  v59 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v57 - v11;
  *&v66 = 1701667182;
  *(&v66 + 1) = 0xE400000000000000;
  sub_2749FD8D4();
  v13 = [a1 parameters];
  v14 = sub_2749FCCA4();

  sub_27494FA4C(v14, &v66);

  sub_27477EED0(aBlock);
  if (v67)
  {
    v15 = swift_dynamicCast();
    v16 = v64;
    if (!v15)
    {
      v16 = 0;
    }

    v58 = v16;
    if (v15)
    {
      v17 = v65;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    sub_27472ECBC(&v66, &qword_28096D550);
    v58 = 0;
    v17 = 0;
  }

  v64 = 7107189;
  v65 = 0xE300000000000000;
  sub_2749FD8D4();
  v18 = [a1 parameters];
  v19 = sub_2749FCCA4();

  sub_27494FA4C(v19, &v66);

  sub_27477EED0(aBlock);
  if (!v67)
  {

    v20 = &qword_28096D550;
    v21 = &v66;
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_35:

    goto LABEL_36;
  }

  sub_2749F9054();

  if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
  {
    v22 = v59;
    (*(v59 + 32))(v12, v6, v7);
    v23 = sub_2749F9044();
    if (!v24)
    {
      (*(v22 + 8))(v12, v7);
      goto LABEL_35;
    }

    v25 = v23;
    v26 = v24;
    v27 = v23 == 0x632E64756F6C6369 && v24 == 0xEA00000000006D6FLL;
    if (v27 || (sub_2749FDCC4() & 1) != 0 || (v25 == 0x6F6C63692E777777 ? (v28 = v26 == 0xEE006D6F632E6475) : (v28 = 0), v28))
    {
    }

    else
    {
      v29 = sub_2749FDCC4();

      if ((v29 & 1) == 0)
      {
        (*(v59 + 8))(v12, v7);
        goto LABEL_35;
      }
    }

    v64 = 0x746E656C6973;
    v65 = 0xE600000000000000;
    sub_2749FD8D4();
    v30 = [a1 parameters];
    v31 = sub_2749FCCA4();

    sub_27494FA4C(v31, &v66);

    sub_27477EED0(aBlock);
    if (v67)
    {
      if (swift_dynamicCast())
      {
        v32 = v64 == 1702195828 && v65 == 0xE400000000000000;
        v33 = v59;
        if (v32)
        {

          v34 = 1;
        }

        else
        {
          v34 = sub_2749FDCC4();
        }

        goto LABEL_45;
      }
    }

    else
    {
      sub_27472ECBC(&v66, &qword_28096D550);
    }

    v33 = v59;
    v34 = 0;
LABEL_45:
    (*(v33 + 16))(v10, v12, v7);
    v45 = [a1 bundleIdentifier];
    if (v45)
    {
      v46 = v45;
      v47 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v49 = v48;
    }

    else
    {
      v47 = 0;
      v49 = 0;
    }

    v50 = objc_allocWithZone(MEMORY[0x277D7C880]);
    v51 = sub_2747A32D8(v10, v58, v17, v47, v49);
    v52 = swift_allocObject();
    v53 = v61;
    *(v52 + 16) = v60;
    *(v52 + 24) = v53;
    v54 = v62;
    *(v52 + 32) = a1;
    *(v52 + 40) = v54;
    *(v52 + 48) = v34 & 1;
    aBlock[4] = sub_2747A48D0;
    aBlock[5] = v52;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_27479F0F0;
    aBlock[3] = &block_descriptor_209;
    v55 = _Block_copy(aBlock);
    v56 = a1;
    swift_unknownObjectRetain();

    [v51 extractShortcutWithCompletion_];
    _Block_release(v55);

    return (*(v33 + 8))(v12, v7);
  }

  v20 = &qword_280967618;
  v21 = v6;
LABEL_13:
  sub_27472ECBC(v21, v20);
LABEL_36:
  v35 = [objc_allocWithZone(MEMORY[0x277CFC218]) init];
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v36 = qword_28159E448;
  v37 = sub_2749FCD64();
  v38 = sub_2749FCD64();

  v39 = [v36 localizedStringForKey:v37 value:v38 table:0];

  if (!v39)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v39 = sub_2749FCD64();
  }

  [v35 setTitle_];

  sub_2749FCE14();
  v40 = sub_2749FCD64();
  v41 = sub_2749FCD64();

  v42 = [v36 localizedStringForKey:v40 value:v41 table:0];

  if (!v42)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v42 = sub_2749FCD64();
  }

  [v35 setMessage_];

  v43 = [objc_opt_self() okButtonWithHandler_];
  [v35 addButton_];

  [(*(v61 + 112))(v60) presentAlert_];
  return swift_unknownObjectRelease();
}

void sub_27479D6F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_2749FD8D4();
    v7 = [a1 parameters];
    v8 = sub_2749FCCA4();

    sub_27494FA4C(v8, v15);

    sub_27477EED0(__dst);
    if (*&v15[24])
    {
      v9 = swift_dynamicCast();
      v10 = v9 == 0;
      if (v9)
      {
        v11 = v19;
      }

      else
      {
        v11 = 0;
      }

      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = v20;
      }
    }

    else
    {
      sub_27472ECBC(v15, &qword_28096D550);
      v11 = 0;
      v12 = 0;
    }

    v13 = sub_27479D92C(v11, v12, a3, a4);
    swift_unknownObjectRelease();

    if (v13)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v17 = Strong;
        v16 = 1;
        *v15 = 0;
        v15[8] = 1;
        memset(&v15[16], 0, 24);
        *&v15[40] = 1;
        v15[42] = 0;
        memset(&v15[48], 0, 24);
        (*(*(*(a4 + 8) + 8) + 8))(v13, v15, a3);

        swift_unknownObjectRelease();
        memcpy(__dst, v15, sizeof(__dst));
        sub_2747A32A8(__dst);
        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

id sub_27479D92C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = [objc_allocWithZone(MEMORY[0x277D7CAA0]) init];
  if (a2)
  {
    a2 = sub_2749FCD64();
  }

  [v7 setSource_];

  v8 = [objc_allocWithZone(MEMORY[0x277D7CA68]) initWithRecord_];
  v9 = (*(a4 + 56))(a3, a4);
  v15[0] = 0;
  v10 = [v9 createWorkflowWithOptions:v8 error:v15];

  v11 = v15[0];
  if (v10)
  {
  }

  else
  {
    v12 = v11;
    v13 = sub_2749F8FE4();

    swift_willThrow();
    return 0;
  }

  return v10;
}

uint64_t sub_27479DA94()
{
  v0 = type metadata accessor for RootNavigationDestination();
  MEMORY[0x28223BE20](v0);
  v2 = v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_storeEnumTagMultiPayload();
    v4[1] = 0x101010101;
    memset(&v4[2], 0, 24);
    RootView.navigate(to:with:completion:)();
    swift_unknownObjectRelease();
    sub_2747A371C(0x101010101, 0, 0);
    return sub_274722658(v2, type metadata accessor for RootNavigationDestination);
  }

  return result;
}

uint64_t sub_27479DBC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = sub_2749FD0E4();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v12);
    sub_2749FD0A4();
    v13 = a1;
    swift_unknownObjectRetain();
    v14 = sub_2749FD094();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = a3;
    v15[5] = a4;
    v15[6] = v13;
    v15[7] = v11;
    sub_27479930C();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_27479DD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[17] = a6;
  v7[18] = a7;
  v7[15] = a4;
  v7[16] = a5;
  v7[19] = type metadata accessor for RootNavigationDestination();
  v7[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968200);
  v7[21] = swift_task_alloc();
  v8 = sub_2749F9514();
  v7[22] = v8;
  v7[23] = *(v8 - 8);
  v7[24] = swift_task_alloc();
  sub_2749FD0A4();
  v7[25] = sub_2749FD094();
  v10 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_27479DE7C, v10, v9);
}

uint64_t sub_27479DE7C()
{
  v1 = *(v0 + 120);

  v2 = [objc_allocWithZone(MEMORY[0x277D7C178]) init];
  *(v0 + 88) = 0x4449656C646E7562;
  *(v0 + 96) = 0xE800000000000000;
  sub_2749FD8D4();
  v3 = [v1 parameters];
  v4 = sub_2749FCCA4();

  sub_27494FA4C(v4, (v0 + 56));

  sub_27477EED0(v0 + 16);
  if (!*(v0 + 80))
  {
    v12 = &qword_28096D550;
    v11 = v0 + 56;
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v7 = sub_2749FCD64();
  [v2 setBundleIdentifier_];

  v8 = OUTLINED_FUNCTION_99();
  v10 = v9(v8);
  sub_2749F9864();

  if (__swift_getEnumTagSinglePayload(v6, 1, v5) == 1)
  {
    v11 = *(v0 + 168);
    v12 = &qword_280968200;
LABEL_6:
    sub_27472ECBC(v11, v12);
    goto LABEL_8;
  }

  v14 = *(v0 + 184);
  v13 = *(v0 + 192);
  v15 = *(v0 + 176);
  v16 = *(v0 + 160);
  v17 = *(v0 + 136);
  v18 = *(v0 + 144);
  (*(v14 + 32))(v13, *(v0 + 168), v15);
  (*(v14 + 16))(v16, v13, v15);
  swift_storeEnumTagMultiPayload();
  (*(*(v18 + 16) + 16))(v16, v17);
  OUTLINED_FUNCTION_1_10();
  sub_274722658(v16, v19);
  v20 = OUTLINED_FUNCTION_78_1();
  v21(v20);
LABEL_8:
  [v2 track];

  OUTLINED_FUNCTION_48_0();

  return v22();
}

uint64_t sub_27479E178(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2749FA4E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = sub_2749F9494();
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = (v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = a3;
    v29 = a4;
    v27[2] = v8;
    v31 = 0x4449656C646E7562;
    v32 = 0xE800000000000000;
    sub_2749FD8D4();
    v13 = [a1 parameters];
    v14 = sub_2749FCCA4();

    sub_27494FA4C(v14, &v34);

    sub_27477EED0(v33);
    if (v35)
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        return swift_unknownObjectRelease();
      }

      v27[1] = v31;
      v31 = 0x727574616E676973;
      v32 = 0xE900000000000065;
      sub_2749FD8D4();
      v15 = [a1 parameters];
      v16 = sub_2749FCCA4();

      sub_27494FA4C(v16, &v34);

      sub_27477EED0(v33);
      if (v35)
      {
        if ((swift_dynamicCast() & 1) != 0 && (v33[0] = v31, v33[1] = v32, sub_27475D0D0(), sub_2749FD734(), v18 = v17, , v18))
        {
          v19 = v28;
          v20 = (*(v29 + 136))(v28);
          v21 = sub_2749F9844();

          if (v21)
          {
            *v11 = v21;
            v22 = v30;
            v23 = v21;
            (*(v30 + 104))(v11, *MEMORY[0x277D7BE68], v9);
            v24 = *(v29 + 8);
            v25 = *(v24 + 64);
            v26 = v23;
            v25(v11, v19, v24);

            swift_unknownObjectRelease();
            return (*(v22 + 8))(v11, v9);
          }
        }

        else
        {
        }

        return swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRelease();
    return sub_27472ECBC(&v34, &qword_28096D550);
  }

  return result;
}

uint64_t sub_27479E71C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2749FA4E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = sub_2749F9494();
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = (v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = a3;
    v29 = a4;
    v27[2] = v8;
    v31 = 0x4449656C646E7562;
    v32 = 0xE800000000000000;
    sub_2749FD8D4();
    v13 = [a1 parameters];
    v14 = sub_2749FCCA4();

    sub_27494FA4C(v14, &v34);

    sub_27477EED0(v33);
    if (v35)
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        return swift_unknownObjectRelease();
      }

      v27[1] = v31;
      v31 = 0x727574616E676973;
      v32 = 0xE900000000000065;
      sub_2749FD8D4();
      v15 = [a1 parameters];
      v16 = sub_2749FCCA4();

      sub_27494FA4C(v16, &v34);

      sub_27477EED0(v33);
      if (v35)
      {
        if ((swift_dynamicCast() & 1) != 0 && (v33[0] = v31, v33[1] = v32, sub_27475D0D0(), sub_2749FD734(), v18 = v17, , v18))
        {
          v19 = v28;
          v20 = (*(v29 + 136))(v28);
          v21 = sub_2749F9844();

          if (v21)
          {
            *v11 = v21;
            v22 = v30;
            v23 = v21;
            (*(v30 + 104))(v11, *MEMORY[0x277D7BE68], v9);
            v24 = *(v29 + 8);
            v25 = *(v24 + 72);
            v26 = v23;
            v25(v11, v19, v24);

            swift_unknownObjectRelease();
            return (*(v22 + 8))(v11, v9);
          }
        }

        else
        {
        }

        return swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRelease();
    return sub_27472ECBC(&v34, &qword_28096D550);
  }

  return result;
}

void sub_27479ECC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_2749FD8D4();
    v7 = [a1 parameters];
    v8 = sub_2749FCCA4();

    sub_27494FA4C(v8, &v13);

    sub_27477EED0(v12);
    if (v14)
    {
      if ((swift_dynamicCast() & 1) != 0 && (v9 = (*(a4 + 56))(a3, a4), v10 = sub_2749FCD64(), , v11 = [v9 collectionWithIdentifier_], v9, v10, v11))
      {
        (*(*(a4 + 8) + 80))(v11, a3);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_unknownObjectRelease();
      sub_27472ECBC(&v13, &qword_28096D550);
    }
  }
}

void sub_27479EEA8(void *a1, void *a2, id a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    *(swift_allocObject() + 16) = a3;
    v12 = a1;
    v13 = a3;
    RootView.importShortcutFile(with:openAfterImport:completion:)(v12, (a5 & 1) == 0, v14, v15, a6, a7);
  }

  else
  {
    v17 = [a3 failureHandler];
    if (v17)
    {
      v18 = v17;
      if (a2)
      {
        v19 = a2;
      }

      else
      {
        v20 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v22 = v21;
        v23 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v19 = sub_2747D5418(v20, v22, 256, 0);
      }

      v24 = a2;
      v25 = sub_2749F8FD4();
      (v18)[2](v18, v25);

      _Block_release(v18);
    }
  }
}

uint64_t RootView.importShortcutFile(with:openAfterImport:completion:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_49_0();
  v11 = swift_allocObject();
  *(v11 + 16) = a5;
  *(v11 + 24) = a6;
  *(v11 + 32) = a2;
  *(v11 + 40) = v6;
  v12 = *(a6 + 200);
  swift_unknownObjectRetain();
  v12(a1, sub_2747A37E0, v11, a5, a6);
  OUTLINED_FUNCTION_50_0();
}

void sub_27479F0F0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_27479F17C(void *a1, char a2, char a3)
{
  if ((a3 & 1) != 0 && (a2 & 1) == 0)
  {
    v4 = a1;
    WorkflowOpener.openWorkflow(_:)();
    swift_unknownObjectRelease();
    sub_2747A470C(a1);
  }
}

void RootView.createWorkflow(for:)()
{
  OUTLINED_FUNCTION_48();
  v2 = v0;
  v25 = v3;
  v5 = v4;
  v7 = v6;
  v8 = sub_2749F9494();
  OUTLINED_FUNCTION_43();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v14 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  OUTLINED_FUNCTION_34(v15);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_67();
  v17 = sub_2749FD0E4();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v17);
  (*(v10 + 16))(v14, v7, v8);
  sub_2749FD0A4();
  OUTLINED_FUNCTION_78();
  swift_unknownObjectRetain();
  v18 = sub_2749FD094();
  v19 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  *(v21 + 2) = v18;
  *(v21 + 3) = v22;
  v23 = v25;
  *(v21 + 4) = v5;
  *(v21 + 5) = v23;
  (*(v10 + 32))(&v21[v19], v14, v8);
  *&v21[v20] = v2;
  sub_27479930C();

  OUTLINED_FUNCTION_46();
}

uint64_t sub_27479F3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[35] = a6;
  v7[36] = a7;
  v7[33] = a4;
  v7[34] = a5;
  v8 = sub_2749FA4E4();
  v7[37] = v8;
  v7[38] = *(v8 - 8);
  v7[39] = swift_task_alloc();
  v9 = sub_2749F9494();
  v7[40] = v9;
  v7[41] = *(v9 - 8);
  v7[42] = swift_task_alloc();
  sub_2749FD0A4();
  v7[43] = sub_2749FD094();
  v10 = sub_2749FD044();
  v7[44] = v10;
  v7[45] = v11;

  return MEMORY[0x2822009F8](sub_27479F544, v10, v11);
}

uint64_t sub_27479F544()
{
  (*(v0[41] + 16))(v0[42], v0[33], v0[40]);
  v1 = OUTLINED_FUNCTION_32_1();
  if (v2(v1) == *MEMORY[0x277D7BE68])
  {
    v3 = v0[42];
    (*(v0[41] + 96))(v3, v0[40]);
    v4 = *v3;
    v0[46] = v4;
    v5 = OUTLINED_FUNCTION_34_2();
    v0[47] = v6(v5);
    v7 = MEMORY[0x277D7BF58];
    v8 = *MEMORY[0x277D7BF58];
    v9 = swift_task_alloc();
    v0[48] = v9;
    *v9 = v0;
    v9[1] = sub_27479F730;

    return ((v8 + v7))(v4);
  }

  else
  {
    (*(v0[41] + 8))(v0[42], v0[40]);

    OUTLINED_FUNCTION_113_1();

    OUTLINED_FUNCTION_48_0();

    return v11();
  }
}

uint64_t sub_27479F730()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  OUTLINED_FUNCTION_59_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 392) = v4;
  *(v2 + 400) = v0;

  if (v0)
  {
    v5 = *(v2 + 352);
    v6 = *(v2 + 360);
    v7 = sub_27479FFC4;
  }

  else
  {

    v5 = *(v2 + 352);
    v6 = *(v2 + 360);
    v7 = sub_27479F878;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_27479F878()
{
  v42 = v0;
  v41[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 392);
  v2 = *(v0 + 288);

  v3 = [v1 record];
  v4 = [objc_allocWithZone(MEMORY[0x277D7CA68]) initWithRecord_];
  *(v0 + 408) = v4;

  v5 = *(v2 + 56);
  v6 = OUTLINED_FUNCTION_45();
  v7 = v5(v6);
  *(v0 + 248) = 0;
  v8 = [v7 createWorkflowWithOptions:v4 nameCollisionBehavior:0 error:v0 + 248];
  *(v0 + 416) = v8;

  v9 = *(v0 + 248);
  v10 = *(v0 + 392);
  if (v8)
  {
    v11 = v9;

    v12 = OUTLINED_FUNCTION_34_2();
    *(v0 + 424) = v5(v12);
    v13 = [v10 actions];
    if (!v13)
    {
      sub_27471CF08(0, &qword_28096D540);
      sub_2749FCF84();
      v13 = sub_2749FCF74();
    }

    *(v0 + 432) = v13;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_27479FD3C;
    v14 = swift_continuation_init();
    *(v0 + 208) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968758);
    *(v0 + 152) = MEMORY[0x277D85DD0];
    *(v0 + 160) = 1107296256;
    *(v0 + 168) = sub_2747A0228;
    *(v0 + 176) = &block_descriptor_106;
    *(v0 + 184) = v14;
    OUTLINED_FUNCTION_93_1();
    [v15 v16];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v17 = v9;

    v18 = sub_2749F8FE4();

    swift_willThrow();
    v19 = *(v0 + 392);
    sub_2749FA3D4();
    v20 = v18;
    v21 = sub_2749FA4D4();
    v22 = sub_2749FD2C4();

    v23 = os_log_type_enabled(v21, v22);
    v25 = *(v0 + 304);
    v24 = *(v0 + 312);
    v26 = *(v0 + 296);
    if (v23)
    {
      v39 = *(v0 + 312);
      v40 = v19;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v41[0] = v28;
      *v27 = 136446210;
      swift_getErrorValue();
      v29 = sub_2749FDD84();
      v31 = sub_2747AF460(v29, v30, v41);

      *(v27 + 4) = v31;
      v19 = v40;
      _os_log_impl(&dword_274719000, v21, v22, "Unable to create Shortcut from Auto Shortcut: %{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_31();

      (*(v25 + 8))(v39, v26);
    }

    else
    {

      (*(v25 + 8))(v24, v26);
    }

    v32 = OUTLINED_FUNCTION_99_1();
    v34 = v33(v32);
    sub_27471CF08(0, &qword_28096D720);
    v35 = OUTLINED_FUNCTION_78();
    v36 = sub_2748FCEE0(v18);
    [v34 presentAlert_];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_113_1();

    OUTLINED_FUNCTION_48_0();

    return v37();
  }
}

uint64_t sub_27479FD3C()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_59_1();
  *v1 = v0;
  v3 = *(v2 + 360);
  v4 = *(v2 + 352);

  return MEMORY[0x2822009F8](sub_27479FE68, v4, v3);
}

uint64_t sub_27479FE68()
{
  v13 = v0;
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v4 = *(v0 + 408);
  v3 = *(v0 + 416);
  v5 = *(v0 + 392);
  v6 = *(v0 + 280);
  v7 = *(v0 + 288);
  v8 = *(v0 + 272);

  v11[0] = 1;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 96) = 0;
  *(v0 + 120) = 1;
  *(v0 + 122) = 0;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  *(v0 + 128) = 0;
  *(v0 + 256) = v8;
  memcpy(v11, (v0 + 80), sizeof(v11));
  (*(*(*(v7 + 8) + 8) + 8))(v3, v11, v6);

  swift_unknownObjectRelease();
  sub_2747A32A8(v0 + 80);
  OUTLINED_FUNCTION_113_1();

  OUTLINED_FUNCTION_48_0();

  return v9();
}

uint64_t sub_27479FFC4()
{
  v25 = v0;
  v24[1] = *MEMORY[0x277D85DE8];
  v1 = v0[46];
  v2 = v0[47];

  v3 = v0[50];
  sub_2749FA3D4();
  v4 = v3;
  v5 = sub_2749FA4D4();
  v6 = sub_2749FD2C4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[38];
    v23 = v0[39];
    v8 = v0[37];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24[0] = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = sub_2749FDD84();
    v13 = sub_2747AF460(v11, v12, v24);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_274719000, v5, v6, "Unable to create Shortcut from Auto Shortcut: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_31();

    (*(v7 + 8))(v23, v8);
  }

  else
  {

    v14 = OUTLINED_FUNCTION_121();
    v15(v14);
  }

  v16 = OUTLINED_FUNCTION_99_1();
  v18 = v17(v16);
  sub_27471CF08(0, &qword_28096D720);
  v19 = OUTLINED_FUNCTION_78();
  v20 = sub_2748FCEE0(v3);
  [v18 presentAlert_];

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_113_1();

  OUTLINED_FUNCTION_48_0();

  return v21();
}

uint64_t sub_2747A0228(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return j__swift_continuation_resume();
}

uint64_t RootView.navigateToFolder(_:)()
{
  OUTLINED_FUNCTION_41_0();
  type metadata accessor for RootNavigationDestination();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  v4 = v3 - v2;
  *(v3 - v2) = v0;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_95_2();
  v5 = v0;
  OUTLINED_FUNCTION_24();
  RootView.navigate(to:with:completion:)();
  OUTLINED_FUNCTION_24();
  sub_2747A371C(v6, v7, v8);
  OUTLINED_FUNCTION_1_10();
  return sub_274722658(v4, v9);
}

uint64_t RootView.navigateToAutoShortcutApp(_:)()
{
  OUTLINED_FUNCTION_41_0();
  type metadata accessor for RootNavigationDestination();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  v4 = v3 - v2;
  sub_2749F9514();
  OUTLINED_FUNCTION_9();
  (*(v5 + 16))(v4, v0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_24();
  RootView.navigate(to:with:completion:)();
  OUTLINED_FUNCTION_24();
  sub_2747A371C(v6, v7, v8);
  OUTLINED_FUNCTION_1_10();
  return sub_274722658(v4, v9);
}

Swift::Void __swiftcall RootView.deleteCollections(_:keepShortcuts:)(Swift::OpaquePointer _, Swift::Bool keepShortcuts)
{
  OUTLINED_FUNCTION_48();
  v90 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = 0;
  v88 = v9 & 0xC000000000000001;
  v89 = sub_27472D918(v9);
  v78 = v10;
  v86 = v10 + 32;
  v87 = v10 & 0xFFFFFFFFFFFFFF8;
  v81 = v4;
  v82 = v6;
  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  if (v8)
  {
    while (1)
    {
      if (v12 == v89)
      {
        v53 = OUTLINED_FUNCTION_80_1();
        v55 = v54(v53);
        v56 = MEMORY[0x28223BE20](v55);
        v73[4] = v6;
        v73[5] = v4;
        v74 = v90;
        v75 = v57;
        v58 = v78;
        v76 = v78;
        MEMORY[0x28223BE20](v56);
        v73[0] = sub_2747A3AB8;
        v73[1] = v59;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968718);
        sub_2749FD234();
        if (v11)
        {
        }

        goto LABEL_80;
      }

      if (v88)
      {
        v14 = MEMORY[0x277C5F6D0](v12, v78);
      }

      else
      {
        if (v12 >= *(v87 + 16))
        {
          goto LABEL_83;
        }

        v14 = *(v86 + 8 * v12);
      }

      v15 = v14;
      v16 = __OFADD__(v12++, 1);
      if (v16)
      {
        __break(1u);
        goto LABEL_82;
      }

      OUTLINED_FUNCTION_71_1();

      v17 = v93;
      v18 = v93 >> 62;
      if (v93 >> 62)
      {
        v19 = sub_2749FD844();
      }

      else
      {
        v19 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v20 = v13 >> 62;
      if (v13 >> 62)
      {
        v21 = OUTLINED_FUNCTION_114_1();
      }

      else
      {
        v21 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v85 = v19;
      v16 = __OFADD__(v21, v19);
      v22 = v21 + v19;
      if (v16)
      {
        goto LABEL_85;
      }

      v91 = v11;
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v20)
      {
        goto LABEL_17;
      }

LABEL_18:
      OUTLINED_FUNCTION_108_1();
LABEL_19:
      OUTLINED_FUNCTION_73_0();
      if (v18)
      {
        v24 = OUTLINED_FUNCTION_109_1();
        if (v24)
        {
          v25 = v24;
          v26 = sub_2749FD844();
          if (v20 < v26)
          {
            goto LABEL_93;
          }

          if (v25 < 1)
          {
            goto LABEL_95;
          }

          v79 = v26;
          v80 = v12;
          v27 = v11 + 32;
          sub_2747A3A08();
          for (i = 0; i != v25; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968708);
            v29 = sub_2747A3660(v92, i, v17);
            v31 = *v30;
            v29(v92, 0);
            *&v27[8 * i] = v31;
          }

          v4 = v81;
          v6 = v82;
          v23 = v79;
          v12 = v80;
          goto LABEL_29;
        }
      }

      else
      {
        v23 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v23)
        {
          if (v20 < v23)
          {
            goto LABEL_91;
          }

          sub_27471CF08(0, &qword_28159E4A8);
          OUTLINED_FUNCTION_110_1();
LABEL_29:

          if (v23 < v85)
          {
            goto LABEL_87;
          }

          if (v23 > 0)
          {
            v32 = *(v83 + 16);
            v16 = __OFADD__(v32, v23);
            v33 = v32 + v23;
            if (v16)
            {
              goto LABEL_89;
            }

            *(v83 + 16) = v33;
          }

          goto LABEL_34;
        }
      }

      if (v85 > 0)
      {
        goto LABEL_87;
      }

LABEL_34:
      v11 = v91;
      v13 = v84;
    }

    if (!v20)
    {
      if (v22 <= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

LABEL_17:
    OUTLINED_FUNCTION_114_1();
    goto LABEL_18;
  }

  while (v12 != v89)
  {
    if (v88)
    {
      v34 = MEMORY[0x277C5F6D0](v12, v78);
    }

    else
    {
      if (v12 >= *(v87 + 16))
      {
        goto LABEL_84;
      }

      v34 = *(v86 + 8 * v12);
    }

    v35 = v34;
    v16 = __OFADD__(v12++, 1);
    if (v16)
    {
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
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
      return;
    }

    OUTLINED_FUNCTION_71_1();

    v36 = v93;
    v37 = v93 >> 62;
    if (v93 >> 62)
    {
      v38 = sub_2749FD844();
    }

    else
    {
      v38 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v39 = v13 >> 62;
    if (v13 >> 62)
    {
      v40 = OUTLINED_FUNCTION_114_1();
    }

    else
    {
      v40 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v85 = v38;
    v16 = __OFADD__(v40, v38);
    v41 = v40 + v38;
    if (v16)
    {
      goto LABEL_86;
    }

    v91 = v11;
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v39)
      {
        if (v41 <= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      }

LABEL_53:
      OUTLINED_FUNCTION_114_1();
      goto LABEL_54;
    }

    if (v39)
    {
      goto LABEL_53;
    }

LABEL_54:
    OUTLINED_FUNCTION_108_1();
LABEL_55:
    OUTLINED_FUNCTION_73_0();
    if (v37)
    {
      v43 = OUTLINED_FUNCTION_109_1();
      if (v43)
      {
        v44 = v43;
        v45 = sub_2749FD844();
        if (v39 < v45)
        {
          goto LABEL_94;
        }

        if (v44 < 1)
        {
          goto LABEL_96;
        }

        v79 = v45;
        v80 = v12;
        v46 = v11 + 32;
        sub_2747A3A08();
        for (j = 0; j != v44; ++j)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968708);
          v48 = sub_2747A3660(v92, j, v36);
          v50 = *v49;
          v48(v92, 0);
          *&v46[8 * j] = v50;
        }

        v4 = v81;
        v42 = v79;
        v12 = v80;
        goto LABEL_65;
      }
    }

    else
    {
      v42 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v42)
      {
        if (v39 < v42)
        {
          goto LABEL_92;
        }

        sub_27471CF08(0, &qword_28159E4A8);
        OUTLINED_FUNCTION_110_1();
LABEL_65:

        if (v42 < v85)
        {
          goto LABEL_88;
        }

        if (v42 > 0)
        {
          v51 = *(v83 + 16);
          v16 = __OFADD__(v51, v42);
          v52 = v51 + v42;
          if (v16)
          {
            goto LABEL_90;
          }

          *(v83 + 16) = v52;
        }

        goto LABEL_70;
      }
    }

    if (v85 > 0)
    {
      goto LABEL_88;
    }

LABEL_70:
    v11 = v91;
    v13 = v84;
  }

  v60 = *(v4 + 56);
  v61 = v90;
  v62 = OUTLINED_FUNCTION_80_1();
  v63 = v60(v62);
  v91 = &v78;
  v64 = MEMORY[0x28223BE20](v63);
  v74 = v65;
  v75 = v4;
  v76 = v13;
  v77 = v61;
  MEMORY[0x28223BE20](v64);
  v73[2] = sub_2747A3A6C;
  v73[3] = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968718);
  sub_2749FD234();
  if (v11)
  {
  }

  v6 = v82;
  v67 = OUTLINED_FUNCTION_80_1();
  v68 = v60(v67);
  v69 = MEMORY[0x28223BE20](v68);
  v73[-4] = v6;
  v73[-3] = v4;
  v58 = v78;
  MEMORY[0x28223BE20](v69);
  v71 = sub_2747A3A6C;
  v72 = v70;
  sub_2749FD234();

LABEL_80:
  sub_2747A0C38(v90, v58, v6, v4);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_2747A0C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for RootNavigationDestination();
  MEMORY[0x28223BE20](v7);
  v9 = (&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967850);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v48 - v11);
  (*(a4 + 88))(a3, a4);
  if (__swift_getEnumTagSinglePayload(v12, 1, v7) == 1)
  {
    return sub_27472ECBC(v12, &qword_280967850);
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    return sub_274722658(v12, type metadata accessor for RootNavigationDestination);
  }

  v58 = *v12;

  sub_27475FA70(v14, v15, v16, v17, v18, v19, v20, v21, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
  v51 = a1;
  v52 = a3;
  v49 = v9;
  v50 = a4;
  v48 = v7;
  v54 = v22;
  if ((v22 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2749FD804();
    sub_27471CF08(0, &qword_28159E490);
    sub_274772DBC();
    result = sub_2749FD174();
    v24 = v61;
    v23 = v62;
    v25 = v63;
    v26 = v64;
    v27 = v65;
  }

  else
  {
    v28 = -1 << *(v22 + 32);
    v23 = v22 + 56;
    v25 = ~v28;
    v29 = -v28;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v27 = v30 & *(v22 + 56);

    v26 = 0;
    v24 = result;
  }

  v53 = v25;
  v31 = (v25 + 64) >> 6;
  v57 = v23;
  while (1)
  {
    v32 = v27;
    v33 = v26;
    if ((v24 & 0x8000000000000000) == 0)
    {
      break;
    }

    v37 = sub_2749FD874();
    if (!v37 || (v59 = v37, sub_27471CF08(0, &qword_28159E490), swift_dynamicCast(), (v36 = v60) == 0))
    {
LABEL_26:
      sub_274730F8C();
    }

LABEL_20:
    v55 = v33;
    v56 = v32;
    v38 = [v36 identifier];
    v39 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v41 = v40;

    v42 = [v58 identifier];
    v43 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v45 = v44;

    if (v39 == v43 && v41 == v45)
    {

LABEL_28:
      sub_274730F8C();

      v12 = v49;
      swift_storeEnumTagMultiPayload();
      (*(*(v50 + 16) + 16))(v12, v52);

      return sub_274722658(v12, type metadata accessor for RootNavigationDestination);
    }

    v47 = sub_2749FDCC4();

    v23 = v57;
    if (v47)
    {
      goto LABEL_28;
    }
  }

  v34 = v26;
  v35 = v27;
  if (v27)
  {
LABEL_16:
    v27 = (v35 - 1) & v35;
    v36 = *(*(v24 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v35)))));
    if (!v36)
    {
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v26 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v26 >= v31)
    {
      goto LABEL_26;
    }

    v35 = *(v23 + 8 * v26);
    ++v34;
    if (v35)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_2747A107C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v20 = *(a5 + 56);
  v6 = v20(a4, a5);
  sub_27471CF08(0, &qword_28159E4A8);
  v7 = sub_2749FCF74();
  v23[0] = 0;
  v8 = [v6 prependReferences:v7 toCollection:0 error:v23];

  v9 = v23[0];
  if (v8)
  {
    v10 = sub_27472D918(a3);
    v11 = v9;
    for (i = 0; v10 != i; ++i)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x277C5F6D0](i, a3);
      }

      else
      {
        if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v13 = *(a3 + 8 * i + 32);
      }

      v14 = v13;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_15:
        __break(1u);
      }

      v15 = v20(a4, a5);
      v23[0] = 0;
      v16 = [v15 deleteReference:v14 error:v23];

      if (!v16)
      {
        v19 = v23[0];
        sub_2749F8FE4();

        swift_willThrow();
        return;
      }

      v17 = v23[0];
    }
  }

  else
  {
    v18 = v23[0];
    sub_2749F8FE4();

    swift_willThrow();
  }
}

uint64_t sub_2747A128C@<X0>(uint64_t (*a1)(void)@<X0>, _BYTE *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = 0;
  }

  return result;
}

void sub_2747A12C0(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  v6 = (*(a3 + 56))(a2, a3);
  v7 = [v6 sortedVisibleWorkflowsInCollection_];

  v8 = [v7 descriptors];
  sub_27471CF08(0, &qword_28159E4A8);
  v9 = sub_2749FCF84();

  *a4 = v9;
}

void sub_2747A1388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = a5();
  for (i = 0; v7 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x277C5F6D0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v9 = *(a1 + 8 * i + 32);
    }

    v10 = v9;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
    }

    v11 = (*(a4 + 56))(a3, a4);
    v16[0] = 0;
    v12 = [v11 deleteReference:v10 error:v16];

    if (!v12)
    {
      v14 = v16[0];
      sub_2749F8FE4();

      swift_willThrow();
      return;
    }

    v13 = v16[0];
  }
}

void __swiftcall RootView.deleteAlertStrings(collections:shortcutsCount:exactCount:)(Swift::tuple_title_String_message_String_deleteTitle_String_keepTitle_String *__return_ptr retstr, Swift::OpaquePointer collections, Swift::Int shortcutsCount, Swift::Bool exactCount)
{
  LODWORD(v99) = exactCount;
  rawValue = collections._rawValue;
  v8 = sub_27472D918(collections._rawValue);
  v9 = 0;
  p_countAndFlagsBits = (rawValue & 0xC000000000000001);
  v11 = MEMORY[0x277D84F90];
  while (v8 != v9)
  {
    if (p_countAndFlagsBits)
    {
      v16 = OUTLINED_FUNCTION_100_1();
      v12 = MEMORY[0x277C5F6D0](v16);
    }

    else
    {
      if (v9 >= *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v12 = *(rawValue + 8 * v9 + 32);
    }

    v6 = v12;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      OUTLINED_FUNCTION_1_1();
LABEL_16:
      v24 = v8;
      v25 = qword_28159E448;
      v26 = sub_2749FCD64();

      OUTLINED_FUNCTION_66();
      v27 = sub_2749FCD64();

      v22 = OUTLINED_FUNCTION_65_3(v25, sel_localizedStringForKey_value_table_, v26);

      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      OUTLINED_FUNCTION_40_2();

      goto LABEL_23;
    }

    v13 = [v12 name];
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    OUTLINED_FUNCTION_75_1();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_2();
      sub_274763850();
      v11 = v17;
    }

    v14 = *(v11 + 16);
    v6 = (v14 + 1);
    if (v14 >= *(v11 + 24) >> 1)
    {
      OUTLINED_FUNCTION_63_0();
      sub_274763850();
      v11 = v18;
    }

    *(v11 + 16) = v6;
    v15 = v11 + 16 * v14;
    *(v15 + 32) = v4;
    *(v15 + 40) = v5;
    ++v9;
  }

  v19 = objc_opt_self();
  v6 = MEMORY[0x277D837D0];
  v9 = sub_2749FCF74();

  rawValue = [v19 localizedStringByJoiningStrings_];

  v20 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v8 = v21;

  if ((v99 & 1) == 0)
  {
    p_countAndFlagsBits = &retstr->title._countAndFlagsBits;
    if (shortcutsCount == 1)
    {
      sub_2749FCE14();
      OUTLINED_FUNCTION_40_2();
      if (qword_28159E3A8 == -1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      sub_2749FCE14();
      OUTLINED_FUNCTION_40_2();
      if (qword_28159E3A8 == -1)
      {
LABEL_21:
        v28 = qword_28159E448;
        OUTLINED_FUNCTION_66();
        v29 = sub_2749FCD64();
        OUTLINED_FUNCTION_66();
        v30 = sub_2749FCD64();

        v31 = OUTLINED_FUNCTION_13_7();

        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628);
        rawValue = OUTLINED_FUNCTION_83_1();
        *(rawValue + 16) = xmmword_274A0EF10;
        *(rawValue + 56) = v6;
        v32 = sub_27475C4F4();
        v33 = OUTLINED_FUNCTION_85_0(v32);
        v97 = v34;
        v100 = v33;

        sub_2749FCE14();
        OUTLINED_FUNCTION_120_0();
        v35 = sub_2749FCD64();
        OUTLINED_FUNCTION_66_2();
        sub_2749FCD64();
        OUTLINED_FUNCTION_90_0();
        v36 = OUTLINED_FUNCTION_16_5();

        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        OUTLINED_FUNCTION_75_1();

        sub_2749FCE14();
        OUTLINED_FUNCTION_120_0();
        v37 = sub_2749FCD64();
        OUTLINED_FUNCTION_66_2();
        sub_2749FCD64();
        OUTLINED_FUNCTION_90_0();
        v38 = OUTLINED_FUNCTION_16_5();

        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        OUTLINED_FUNCTION_102_2();

        sub_2749FCE14();
        OUTLINED_FUNCTION_76_1();
        v39 = sub_2749FCD64();
        OUTLINED_FUNCTION_29_1();
        v40 = sub_2749FCD64();

        v41 = OUTLINED_FUNCTION_13_7();

        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        OUTLINED_FUNCTION_101_1();

LABEL_41:
        v53 = v97;
        v54 = v100;
        goto LABEL_42;
      }
    }

    OUTLINED_FUNCTION_1_1();
    goto LABEL_21;
  }

  sub_2749FCE14();
  OUTLINED_FUNCTION_40_2();
  OUTLINED_FUNCTION_21_4();
  v22 = " (Pluralization)";
  p_countAndFlagsBits = &retstr->title._countAndFlagsBits;
  v96 = v20;
  if (v23)
  {
    OUTLINED_FUNCTION_39_2();

    OUTLINED_FUNCTION_26_2();
    OUTLINED_FUNCTION_14_3();
    MEMORY[0x277C5EBC0](0xD000000000000010, 0x8000000274A2C0D0);
    if (qword_28159E3A8 != -1)
    {
      goto LABEL_45;
    }

    goto LABEL_16;
  }

  v24 = v8;
LABEL_23:
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628);
  v43 = OUTLINED_FUNCTION_83_1();
  v44 = MEMORY[0x277D83B88];
  *(v43 + 16) = xmmword_274A0EF10;
  v45 = MEMORY[0x277D83C10];
  *(v43 + 56) = v44;
  *(v43 + 64) = v45;
  *(v43 + 32) = shortcutsCount;
  OUTLINED_FUNCTION_66();
  sub_2749FCD74();
  OUTLINED_FUNCTION_106_1();

  v86 = v22;
  v90 = v9;
  if (shortcutsCount != 1)
  {
    sub_2749FCE14();
    OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_21_4();
    v55 = v24;
    if (v56)
    {
      OUTLINED_FUNCTION_39_2();

      OUTLINED_FUNCTION_26_2();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_56_0();
      v57 = v96;
      if (qword_28159E3A8 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v58 = qword_28159E448;
      v59 = sub_2749FCD64();

      OUTLINED_FUNCTION_66();
      v60 = sub_2749FCD64();

      v61 = OUTLINED_FUNCTION_65_3(v58, sel_localizedStringForKey_value_table_, v59);

      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      OUTLINED_FUNCTION_40_2();

      v6 = MEMORY[0x277D837D0];
    }

    else
    {
      v57 = v96;
    }

    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_274A0F620;
    *(v62 + 56) = MEMORY[0x277D83B88];
    *(OUTLINED_FUNCTION_64_0(v62, MEMORY[0x277D83C10], v74, v77, v80, v83, v86, v9, 1, 2, v96, v99, retstr, shortcutsCount) + 96) = v6;
    *(v62 + 104) = sub_27475C4F4();
    *(v62 + 72) = v57;
    *(v62 + 80) = v55;
    OUTLINED_FUNCTION_66();
    v37 = sub_2749FCD74();
    v64 = v63;

    sub_2749FCE14();
    OUTLINED_FUNCTION_120_0();
    OUTLINED_FUNCTION_21_4();
    if (v65)
    {
      OUTLINED_FUNCTION_39_2();

      OUTLINED_FUNCTION_26_2();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_56_0();
      if (qword_28159E3A8 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v66 = qword_28159E448;
      v67 = sub_2749FCD64();

      OUTLINED_FUNCTION_66_2();
      v68 = sub_2749FCD64();

      v69 = OUTLINED_FUNCTION_65_3(v66, sel_localizedStringForKey_value_table_, v67);

      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      OUTLINED_FUNCTION_120_0();
    }

    v28 = OUTLINED_FUNCTION_83_1();
    *(v28 + 16) = v94;
    *(v28 + 56) = MEMORY[0x277D83B88];
    OUTLINED_FUNCTION_64_0(v28, MEMORY[0x277D83C10], v75, v78, v81, v84, v87, v91, v94, *(&v94 + 1), v98, v37, v103, v106);
    OUTLINED_FUNCTION_66_2();
    sub_2749FCD74();
    OUTLINED_FUNCTION_102_2();

    sub_2749FCE14();
    OUTLINED_FUNCTION_21_4();
    if (v70)
    {
      OUTLINED_FUNCTION_39_2();

      v82 = OUTLINED_FUNCTION_26_2();
      v85 = v82;
      v79 = v82;
      v76 = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_24();
      sub_2749FD724();
      OUTLINED_FUNCTION_56_0();
      if (qword_28159E3A8 != -1)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v71 = qword_28159E448;
      v37 = sub_2749FCD64();

      v28 = sub_2749FCD64();

      v72 = OUTLINED_FUNCTION_65_3(v71, sel_localizedStringForKey_value_table_, v37);

      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    }

    v73 = OUTLINED_FUNCTION_83_1();
    *(v73 + 16) = v95;
    *(v73 + 56) = MEMORY[0x277D83B88];
    OUTLINED_FUNCTION_64_0(v73, MEMORY[0x277D83C10], v76, v79, v82, v85, v88, v92, v95, *(&v95 + 1), v64, v101, v104, v107);
    sub_2749FCD74();
    OUTLINED_FUNCTION_101_1();

    v5 = v89;
    v20 = v93;
    goto LABEL_41;
  }

  sub_2749FCE14();
  OUTLINED_FUNCTION_40_2();
  if (qword_28159E3A8 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v28 = qword_28159E448;
  OUTLINED_FUNCTION_66();
  v46 = sub_2749FCD64();
  OUTLINED_FUNCTION_66();
  v47 = sub_2749FCD64();

  v48 = OUTLINED_FUNCTION_13_7();

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  rawValue = OUTLINED_FUNCTION_83_1();
  *(rawValue + 16) = xmmword_274A0EF10;
  *(rawValue + 56) = v6;
  *(rawValue + 64) = sub_27475C4F4();
  *(rawValue + 32) = v96;
  *(rawValue + 40) = v24;
  sub_2749FCD74();
  OUTLINED_FUNCTION_75_1();

  sub_2749FCE14();
  OUTLINED_FUNCTION_120_0();
  v37 = sub_2749FCD64();
  OUTLINED_FUNCTION_66_2();
  sub_2749FCD64();
  OUTLINED_FUNCTION_90_0();
  v49 = OUTLINED_FUNCTION_16_5();

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_102_2();

  sub_2749FCE14();
  OUTLINED_FUNCTION_76_1();
  v50 = sub_2749FCD64();
  OUTLINED_FUNCTION_29_1();
  v51 = sub_2749FCD64();

  v52 = OUTLINED_FUNCTION_13_7();

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_101_1();

  v53 = v42;
  v54 = v24;
  v5 = v86;
  v20 = v90;
LABEL_42:
  *p_countAndFlagsBits = v54;
  p_countAndFlagsBits[1] = v53;
  p_countAndFlagsBits[2] = v20;
  p_countAndFlagsBits[3] = v5;
  p_countAndFlagsBits[4] = v6;
  p_countAndFlagsBits[5] = rawValue;
  p_countAndFlagsBits[6] = v28;
  p_countAndFlagsBits[7] = v37;
}

void RootView.deleteCollections(_:alertCustomizationBlock:completion:)(id *a1, void (*a2)(id), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_27472D918(a1);
  v10 = sub_27472D918(a1);
  v11 = a1 & 0xC000000000000001;
  v44 = a1;
  v12 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v9 < 2)
  {
    v21 = 0;
    v22 = MEMORY[0x277D84F90];
    while (v10 != v21)
    {
      if (v11)
      {
        v23 = MEMORY[0x277C5F6D0](v21, v44);
      }

      else
      {
        if (v21 >= *(v12 + 16))
        {
          goto LABEL_39;
        }

        v23 = v44[v21 + 4];
      }

      v24 = v23;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        return;
      }

      v47 = v23;
      sub_2747A2860(&v47, a6, a7, &v45);

      if ((v46 & 1) == 0)
      {
        v25 = v45;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_2();
          sub_274763C50();
          v22 = v27;
        }

        v26 = *(v22 + 16);
        if (v26 >= *(v22 + 24) >> 1)
        {
          OUTLINED_FUNCTION_63_0();
          sub_274763C50();
          v22 = v28;
        }

        *(v22 + 16) = v26 + 1;
        *(v22 + 8 * v26 + 32) = v25;
      }

      ++v21;
    }

    v31 = *(v22 + 16);
    if (v31)
    {
      v32 = 0;
      v33 = 32;
      while (1)
      {
        v34 = *(v22 + v33);
        v20 = __OFADD__(v32, v34);
        v32 += v34;
        if (v20)
        {
          goto LABEL_40;
        }

        v33 += 8;
        if (!--v31)
        {

          if (!v32)
          {
            goto LABEL_35;
          }

          v36 = a6;
          v37 = a7;
          v29 = v32;
          v30 = 1;
          goto LABEL_33;
        }
      }
    }

LABEL_35:

    RootView.deleteCollections(_:keepShortcuts:)(v44, 0);
  }

  else
  {
    v13 = 0;
    v14 = 0;
    do
    {
      if (v10 == v13)
      {
        break;
      }

      if (v11)
      {
        v15 = MEMORY[0x277C5F6D0](v13, v44);
      }

      else
      {
        if (v13 >= *(v12 + 16))
        {
          goto LABEL_42;
        }

        v15 = v44[v13 + 4];
      }

      v16 = v15;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_41;
      }

      v17 = (*(a7 + 56))(a6, a7);
      v18 = [v17 sortedVisibleWorkflowsInCollection_];

      v19 = [v18 count];
      v20 = __OFADD__(v14, v19);
      v14 += v19;
      if (v20)
      {
        goto LABEL_43;
      }

      ++v13;
    }

    while (v14 < 2);
    v36 = a6;
    v37 = a7;
    v29 = v14;
    v30 = 0;
LABEL_33:
    v35._rawValue = v44;
    sub_2747A2420(v29, v30, a2, a3, v43, v35, a4, a5, v36, v37);
  }
}

uint64_t sub_2747A2420(Swift::Int a1, char a2, void (*a3)(id), uint64_t a4, uint64_t a5, Swift::OpaquePointer a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = [objc_allocWithZone(MEMORY[0x277CFC218]) init];
  v16 = v15;
  if (a3)
  {
    a3(v15);
  }

  RootView.deleteAlertStrings(collections:shortcutsCount:exactCount:)(&aBlock, a6, a1, a2 & 1);
  object = aBlock.deleteTitle._object;
  countAndFlagsBits = aBlock.keepTitle._countAndFlagsBits;
  v29 = aBlock.deleteTitle._countAndFlagsBits;
  v30 = aBlock.keepTitle._object;
  v18 = [v16 title];
  [v16 setTitle_];

  v19 = sub_2749FCD64();

  [v16 setMessage_];

  sub_27471CF08(0, &qword_28096D710);

  v20 = swift_allocObject();
  v20[2] = a9;
  v20[3] = a10;
  v20[4] = a5;
  v20[5] = a6._rawValue;
  swift_unknownObjectRetain();

  v21 = sub_274760C44(v29, object, 2, 0, sub_2747A4614, v20);
  [v16 addButton_];

  v22 = swift_allocObject();
  v22[2] = a9;
  v22[3] = a10;
  v22[4] = a5;
  v22[5] = a6._rawValue;
  v22[6] = a7;
  v22[7] = a8;
  swift_unknownObjectRetain();

  sub_27473A658(a7);
  v23 = sub_274760C44(countAndFlagsBits, v30, 0, 1, sub_2747A4620, v22);
  [v16 addButton_];

  v24 = objc_opt_self();
  v25 = swift_allocObject();
  v25[2] = a7;
  v25[3] = a8;
  aBlock.deleteTitle._countAndFlagsBits = sub_2747A4630;
  aBlock.deleteTitle._object = v25;
  aBlock.title._countAndFlagsBits = MEMORY[0x277D85DD0];
  aBlock.title._object = 1107296256;
  aBlock.message._countAndFlagsBits = sub_274760264;
  aBlock.message._object = &block_descriptor_93;
  v26 = _Block_copy(&aBlock);
  sub_27473A658(a7);

  v27 = [v24 cancelButtonWithHandler_];
  _Block_release(v26);
  [v16 addButton_];

  [(*(a10 + 112))(a9 a10)];
  return swift_unknownObjectRelease();
}

void sub_2747A2808(int a1, Swift::OpaquePointer _, void (*a3)(uint64_t))
{
  RootView.deleteCollections(_:keepShortcuts:)(_, 1);
  if (a3)
  {
    a3(1);
  }
}

void sub_2747A2860(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = (*(a3 + 56))(a2, a3);
  v7 = [v6 sortedVisibleWorkflowsInCollection_];

  v8 = [v7 count];
  *a4 = v8;
  *(a4 + 8) = 0;
}

void RootView.renameObject(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = [objc_opt_self() alertWithPreferredStyle_];
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = a1;
    sub_2749FCE14();
    if (qword_28159E3A8 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v11 = qword_28159E448;
    v12 = sub_2749FCD64();
    v13 = sub_2749FCD64();

    v14 = [v11 localizedStringForKey:v12 value:v13 table:0];

    if (!v14)
    {
      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v14 = sub_2749FCD64();
    }

    v15 = [v9 name];
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    OUTLINED_FUNCTION_75_1();

    OUTLINED_FUNCTION_49_0();
    v16 = swift_allocObject();
    v16[2] = a2;
    v16[3] = a3;
    v16[4] = v4;
    v16[5] = v9;
    swift_unknownObjectRetain();

    [v33 setTitle_];

    OUTLINED_FUNCTION_32_2();
    v17 = swift_allocObject();
    *(v17 + 16) = v12;
    *(v17 + 24) = v13;
    aBlock[4] = sub_2747A3B1C;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2747606B8;
    aBlock[3] = &block_descriptor_3;
    v18 = _Block_copy(aBlock);

    [v33 addTextFieldWithConfigurationHandler_];
    _Block_release(v18);
    v19 = [objc_opt_self() cancelButtonWithHandler_];
    [v33 addButton_];

    sub_27471CF08(0, &qword_28096D710);
    sub_2749FCE14();
    v20 = sub_2749FCD64();
    v21 = sub_2749FCD64();

    OUTLINED_FUNCTION_92_1();
    v24 = [v22 v23];

    v25 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v27 = v26;

    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    v29[2] = v28;
    v29[3] = sub_2747A3B10;
    v29[4] = v16;
    v30 = sub_274760C44(v25, v27, 0, 1, sub_2747A3B2C, v29);
    [v33 addButton_];

    v31 = OUTLINED_FUNCTION_119();
    [v32(v31) presentAlert_];
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_2747A2D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v9 = sub_2749FA4E4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v13 = (*(a6 + 56))(a5, a6);
  v14 = sub_2749FCD64();
  v28[0] = 0;
  v15 = [v13 renameReference:a4 to:v14 error:v28];

  if (v15)
  {
    v16 = v28[0];
  }

  else
  {
    v17 = v28[0];
    v18 = sub_2749F8FE4();

    swift_willThrow();
    sub_2749FA3D4();
    v19 = v18;
    v20 = sub_2749FA4D4();
    v21 = sub_2749FD2C4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28[0] = v23;
      *v22 = 136446210;
      swift_getErrorValue();
      v24 = sub_2749FDD84();
      v26 = sub_2747AF460(v24, v25, v28);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_274719000, v20, v21, "Unable to rename workflow: %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x277C61040](v23, -1, -1);
      MEMORY[0x277C61040](v22, -1, -1);
    }

    else
    {
    }

    (*(v10 + 8))(v12, v9);
  }
}

void sub_2747A3008(void *a1)
{
  v2 = sub_2749FCD64();
  [a1 setText_];
}

void sub_2747A3068(uint64_t a1, void (*a2)(uint64_t, unint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_2747A359C(Strong);
    if (v5)
    {
      if (!v5[2])
      {

        goto LABEL_9;
      }

      v7 = v5[4];
      v6 = v5[5];

      v8 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v8 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (v8)
      {
        a2(v7, v6);

LABEL_9:

        return;
      }
    }
  }
}

id sub_2747A3140(id result, id a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
    return result;
  }

  if (!a3)
  {
  }

  return result;
}

id sub_2747A3170(id result, void *a2, char a3, uint64_t a4, unsigned __int8 a5)
{
  switch(a5 >> 5)
  {
    case 0:

      break;
    case 1:

      result = sub_2747A3168();
      break;
    case 2:

      result = result;
      break;
    case 3:

      result = sub_2747A3140(result, a2, a3);
      break;
    default:
      return result;
  }

  return result;
}

id sub_2747A32D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_2749F9024();
  if (!a3)
  {
    v11 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v11 = sub_2749FCD64();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = sub_2749FCD64();

LABEL_6:
  v13 = [v6 initWithURL:v10 suggestedName:v11 sourceApplication:v12];

  v14 = sub_2749F9064();
  (*(*(v14 - 8) + 8))(a1, v14);
  return v13;
}

uint64_t sub_2747A33DC()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_12_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2747A3418()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_12_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2747A3458()
{
  type metadata accessor for WFAddToHomeScreenItem();
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_12_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2747A34C8()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_12_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2747A3504()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C210);
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_12_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2747A355C()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_12_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2747A359C(void *a1)
{
  v1 = [a1 textFieldResults];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2749FCF84();

  return v3;
}

uint64_t sub_2747A35F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_22_3(a1, a2, a3);
  sub_2747B2780(v5);
  v6 = OUTLINED_FUNCTION_20_6();
  sub_2747B2790(v6, v7, v8);
  if (v4)
  {
    v9 = OUTLINED_FUNCTION_115_1();
  }

  else
  {
    v11 = OUTLINED_FUNCTION_93();
    v9 = MEMORY[0x277C5F6D0](v11);
  }

  *v3 = v9;
  return OUTLINED_FUNCTION_96_1();
}

uint64_t sub_2747A3660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_22_3(a1, a2, a3);
  sub_2747B2780(v5);
  v6 = OUTLINED_FUNCTION_20_6();
  sub_2747B2790(v6, v7, v8);
  if (v4)
  {
    v9 = OUTLINED_FUNCTION_115_1();
  }

  else
  {
    v11 = OUTLINED_FUNCTION_93();
    v9 = MEMORY[0x277C5F6D0](v11);
  }

  *v3 = v9;
  return OUTLINED_FUNCTION_96_1();
}

id sub_2747A36C4(id result, void *a2, char a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 0xFDu)
  {
    return sub_2747A3170(result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_2747A36D8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_2747A371C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    sub_2747A3738(a2, a3);
  }
}

uint64_t sub_2747A3738(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2747A377C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootNavigationDestination();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2747A37F4(uint64_t a1)
{
  v4 = v1[4];
  v3 = v1[5];
  v5 = *(sub_2749F9494() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_18(v10);
  *v11 = v12;
  v11[1] = sub_2747A3920;

  return sub_27479F3BC(a1, v7, v8, v1 + v6, v9, v4, v3);
}

uint64_t sub_2747A3920()
{
  OUTLINED_FUNCTION_79();
  v1 = *v0;
  OUTLINED_FUNCTION_59_1();
  *v2 = v1;

  OUTLINED_FUNCTION_48_0();

  return v3();
}

unint64_t sub_2747A3A08()
{
  result = qword_280968710;
  if (!qword_280968710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280968708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968710);
  }

  return result;
}

uint64_t sub_2747A3ADC@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = 0;
  }

  return result;
}

unint64_t sub_2747A3B3C()
{
  result = qword_280968720;
  if (!qword_280968720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968720);
  }

  return result;
}

unint64_t sub_2747A3B94()
{
  result = qword_280968728;
  if (!qword_280968728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968728);
  }

  return result;
}

unint64_t sub_2747A3BEC()
{
  result = qword_280968730;
  if (!qword_280968730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968730);
  }

  return result;
}

unint64_t sub_2747A3C50()
{
  result = qword_280968738;
  if (!qword_280968738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968738);
  }

  return result;
}

unint64_t sub_2747A3CA8()
{
  result = qword_280968740;
  if (!qword_280968740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968740);
  }

  return result;
}

uint64_t sub_2747A3D08(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_2747A3D48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_2747A3DB0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_2747A3DF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2747A3E94(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 72))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t sub_2747A3EE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_2747A3F5C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2747A3F9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2747A4050(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

_BYTE *storeEnumTagSinglePayload for RootNavigationContext.TransitionType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_OWORD *sub_2747A42D8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2747A42E8()
{
  OUTLINED_FUNCTION_79();
  *(v0 + 16) = v1;
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_2747A43D8;

  return v5(v0 + 32);
}

uint64_t sub_2747A43D8()
{
  OUTLINED_FUNCTION_79();
  v1 = *v0;
  OUTLINED_FUNCTION_59_1();
  *v2 = v1;
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_59_1();
  *v6 = v5;

  *v4 = *(v1 + 32);
  OUTLINED_FUNCTION_48_0();

  return v7();
}

uint64_t sub_2747A44DC()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_94();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return v4(v3);
}

uint64_t sub_2747A456C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_94();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return v4(v3);
}

uint64_t sub_2747A45FC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2747A4630()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(0);
  }

  return result;
}

uint64_t sub_2747A4664()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_94();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return v4(v3);
}

uint64_t sub_2747A4804(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[2];
  v6 = v1[3];
  v8 = v1[6];
  v7 = v1[7];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_18(v9);
  *v10 = v11;
  v10[1] = sub_2747A4954;

  return sub_27479DD1C(a1, v5, v6, v8, v7, v3, v4);
}

uint64_t OUTLINED_FUNCTION_39_2()
{
  *(v0 - 96) = 0;
  *(v0 - 88) = 0xE000000000000000;

  return sub_2749FD934();
}

uint64_t OUTLINED_FUNCTION_85_0(uint64_t a1)
{
  v1[8] = a1;
  v1[4] = v3;
  v1[5] = v2;

  return sub_2749FCD74();
}

uint64_t OUTLINED_FUNCTION_86_1()
{

  return type metadata accessor for RootNavigationDestination();
}

uint64_t OUTLINED_FUNCTION_87_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_108_1()
{

  return sub_2749FD984();
}

uint64_t OUTLINED_FUNCTION_109_1()
{

  return sub_2749FD844();
}

uint64_t OUTLINED_FUNCTION_114_1()
{

  return sub_2749FD844();
}

id OUTLINED_FUNCTION_115_1()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t LibraryOperations.deleteWorkflows(_:alertCustomizationBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[23] = a5;
  v6[24] = v5;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  v6[25] = sub_2749FD0A4();
  v6[26] = sub_2749FD094();
  v8 = sub_2749FD044();
  v6[27] = v8;
  v6[28] = v7;

  return MEMORY[0x2822009F8](sub_2747A4B74, v8, v7);
}

uint64_t sub_2747A4B74()
{
  v1 = [objc_opt_self() alertWithPreferredStyle_];
  v0[29] = v1;
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v2 = v0[19];
  v31 = v0[20];
  v3 = qword_28159E448;
  v0[30] = qword_28159E448;
  v4 = sub_2749FCD64();
  v5 = sub_2749FCD64();

  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  sub_2749FCE14();
  v7 = sub_2749FCD64();
  v8 = sub_2749FCD64();

  v9 = [v3 localizedStringForKey:v7 value:v8 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v0[31] = sub_27472D918(v2);

  v10 = sub_2749FCD64();

  [v1 setMessage_];

  if (v31)
  {
    (v0[20])(v1);
  }

  if ([objc_opt_self() isSyncEnabled])
  {
    v11 = WFShortcutsCloudKitContainer();
    v0[32] = v11;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_2747A4F10;
    v12 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968768);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2747A54E0;
    v0[13] = &block_descriptor_4;
    v0[14] = v12;
    [v11 accountStatusWithCompletionHandler_];
    OUTLINED_FUNCTION_9_4();

    return MEMORY[0x282200938](v13);
  }

  else
  {
    OUTLINED_FUNCTION_4_8();
    v15 = OUTLINED_FUNCTION_6_4();
    v16 = OUTLINED_FUNCTION_7_7(v15);
    OUTLINED_FUNCTION_2_12(v16, v17, v18, v19, v20, v21, v22, v23, v24);
    v25 = swift_task_alloc();
    v26 = OUTLINED_FUNCTION_3_16(v25);
    *v26 = v27;
    OUTLINED_FUNCTION_1_11(v26);
    OUTLINED_FUNCTION_0_10();
    OUTLINED_FUNCTION_9_4();

    return MEMORY[0x2822007B8](v28);
  }
}

uint64_t sub_2747A4F10()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  v3 = *(v1 + 224);
  v4 = *(v1 + 216);
  if (v2)
  {
    v5 = sub_2747A5414;
  }

  else
  {
    v5 = sub_2747A5040;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2747A5040()
{
  v1 = *(v0 + 144);

  if (v1 == 1)
  {
    v2 = *(v0 + 240);
    v3 = *(v0 + 232);
    sub_2749FCE14();
    v4 = sub_2749FCD64();
    v5 = sub_2749FCD64();

    v6 = [v2 localizedStringForKey:v4 value:v5 table:0];

    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    sub_2749FCE14();
    v7 = sub_2749FCD64();
    v8 = sub_2749FCD64();

    v9 = [v2 localizedStringForKey:v7 value:v8 table:0];

    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

    v10 = sub_2749FCD64();

    [v3 setMessage_];
  }

  OUTLINED_FUNCTION_4_8();
  v11 = OUTLINED_FUNCTION_6_4();
  v12 = OUTLINED_FUNCTION_7_7(v11);
  OUTLINED_FUNCTION_2_12(v12, v13, v14, v15, v16, v17, v18, v19, v20);
  v21 = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_3_16(v21);
  *v22 = v23;
  OUTLINED_FUNCTION_1_11(v22);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_9_4();

  return MEMORY[0x2822007B8]();
}

uint64_t sub_2747A5244()
{
  v1 = *v0;

  v2 = *(v1 + 224);
  v3 = *(v1 + 216);

  return MEMORY[0x2822009F8](sub_2747A53A4, v3, v2);
}

uint64_t sub_2747A53A4()
{

  v1 = *(v0 + 296);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2747A5414()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  swift_willThrow();

  OUTLINED_FUNCTION_4_8();
  v3 = OUTLINED_FUNCTION_6_4();
  v4 = OUTLINED_FUNCTION_7_7(v3);
  OUTLINED_FUNCTION_2_12(v4, v5, v6, v7, v8, v9, v10, v11, v12);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_3_16(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_1_11(v14);
  v16 = OUTLINED_FUNCTION_0_10();

  return MEMORY[0x2822007B8](v16);
}

uint64_t sub_2747A54E0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    v7 = a3;

    return sub_27488721C(v6, v7);
  }

  else
  {
    v9 = *v5;

    return sub_274754724(v9, a2);
  }
}

uint64_t sub_2747A5564(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v61 = a5;
  v62 = a6;
  v63 = a4;
  v57 = a3;
  v54 = a2;
  v59 = a1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968770);
  v6 = *(v58 - 8);
  v60 = *(v6 + 64);
  MEMORY[0x28223BE20](v58);
  v55 = v48 - v7;
  v56 = swift_allocObject();
  *(v56 + 16) = 0;
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v8 = qword_28159E448;
  v9 = sub_2749FCD64();
  v10 = sub_2749FCD64();

  v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

  v53 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v13 = v12;

  v14 = sub_2749FCE14();
  v15 = v14;
  v17 = v16;
  v18 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v18 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    aBlock = 0;
    v65 = 0xE000000000000000;
    sub_2749FD934();

    aBlock = v15;
    v65 = v17;
    v72 = 10;
    v73 = 0xE100000000000000;
    v70 = 32;
    v71 = 0xE100000000000000;
    sub_27475D0D0();
    aBlock = sub_2749FD724();
    v65 = v19;
    MEMORY[0x277C5EBC0](0xD000000000000010, 0x8000000274A2C0D0);
    v20 = sub_2749FCD64();

    v21 = sub_2749FCD64();

    v22 = [v8 localizedStringForKey:v20 value:v21 table:0];

    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_274A0EF10;
  v24 = v54;
  v25 = sub_27472D918(v54);
  v26 = MEMORY[0x277D83C10];
  *(v23 + 56) = MEMORY[0x277D83B88];
  *(v23 + 64) = v26;
  *(v23 + 32) = v25;
  v27 = sub_2749FCD74();
  v29 = v28;

  v30 = v53;
  if (v25 != 1)
  {
    v30 = v27;
  }

  v50 = v30;
  if (v25 == 1)
  {
    v31 = v13;
  }

  else
  {
    v31 = v29;
  }

  v49 = v31;

  v48[1] = sub_2747A6620();
  v32 = *(v6 + 16);
  v52 = v6 + 16;
  v53 = v32;
  v33 = v55;
  v34 = v58;
  v32(v55, v59, v58);
  v35 = *(v6 + 80);
  v36 = swift_allocObject();
  v37 = v62;
  *(v36 + 2) = v61;
  *(v36 + 3) = v37;
  *(v36 + 4) = v63;
  *(v36 + 5) = v24;
  v38 = v56;
  *(v36 + 6) = v56;
  v39 = *(v6 + 32);
  v51 = v6 + 32;
  v39(&v36[(v35 + 56) & ~v35], v33, v34);
  swift_unknownObjectRetain();

  v40 = sub_274760C44(v50, v49, 2, 1, sub_2747A6664, v36);
  v41 = v57;
  [v57 addButton_];

  v42 = objc_opt_self();
  v43 = v58;
  v53(v33, v59, v58);
  v44 = swift_allocObject();
  *(v44 + 16) = v38;
  v39((v44 + ((v35 + 24) & ~v35)), v33, v43);
  v68 = sub_2747A66F4;
  v69 = v44;
  aBlock = MEMORY[0x277D85DD0];
  v65 = 1107296256;
  v66 = sub_274760264;
  v67 = &block_descriptor_11;
  v45 = _Block_copy(&aBlock);

  v46 = [v42 cancelButtonWithHandler_];
  _Block_release(v45);
  [v41 addButton_];

  [(*(v62 + 24))(v61) presentAlert_];

  return swift_unknownObjectRelease();
}

uint64_t sub_2747A5B84(int a1, Swift::OpaquePointer a2, uint64_t a3)
{
  LibraryOperations.deleteWorkflowsWithoutConfirmation(_:)(a2);
  result = swift_beginAccess();
  if ((*(a3 + 16) & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968770);
    sub_2749FD064();
    result = swift_beginAccess();
    *(a3 + 16) = 1;
  }

  return result;
}

Swift::Void __swiftcall LibraryOperations.deleteWorkflowsWithoutConfirmation(_:)(Swift::OpaquePointer a1)
{
  v2 = (*(v1 + 16))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968718);
  sub_2749FD234();
}

uint64_t sub_2747A5D14(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 16) & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968770);
    sub_2749FD064();
    result = swift_beginAccess();
    *(a1 + 16) = 1;
  }

  return result;
}

void sub_2747A5D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v6 = 0;
  v25 = a1 & 0xC000000000000001;
  v26 = sub_27472D918(a1);
  v23 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = a1;
  while (v26 != v6)
  {
    if (v25)
    {
      v7 = MEMORY[0x277C5F6D0](v6, v24);
    }

    else
    {
      if (v6 >= *(v23 + 16))
      {
        goto LABEL_16;
      }

      v7 = *(v24 + 8 * v6 + 32);
    }

    v8 = v7;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
    }

    v9 = [objc_allocWithZone(MEMORY[0x277D7C340]) init];
    v10 = [v8 associatedAppBundleIdentifier];
    [v9 setAddToSiriBundleIdentifier_];

    v11 = *(a4 + 16);
    v12 = v11(a3, a4);
    v28[0] = 0;
    v13 = [v12 recordWithDescriptor:v8 error:v28];

    v14 = v28[0];
    if (!v13)
    {
      goto LABEL_13;
    }

    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    v16 = v14;
    if (v15)
    {
      v17 = [v15 galleryIdentifier];
      [v9 setGalleryIdentifier_];

      v18 = [v15 source];
      [v9 setShortcutSource_];

      v13 = v18;
    }

    [v9 track];
    v19 = v11(a3, a4);
    v28[0] = 0;
    v20 = [v19 deleteReference:v8 error:v28];

    v14 = v28[0];
    if (!v20)
    {
LABEL_13:
      v22 = v14;
      sub_2749F8FE4();

      swift_willThrow();
      return;
    }

    v21 = v28[0];

    ++v6;
  }
}

void LibraryOperations.duplicateWorkflows(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (*(a5 + 16))(a4, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968718);
  sub_2749FD234();
}

void sub_2747A615C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v9 = sub_27472D918(a1);
  for (i = 0; v9 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x277C5F6D0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v11 = *(a1 + 8 * i + 32);
    }

    v12 = v11;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
    }

    v13 = (*(a6 + 16))(a5, a6);
    v20 = 0;
    v14 = [v13 duplicateReference:v12 error:&v20];

    if (!v14)
    {
      v17 = v20;

      sub_2749F8FE4();

      swift_willThrow();
      return;
    }

    v15 = v20;
    v16 = v14;
    MEMORY[0x277C5ECC0]();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2749FCFB4();
    }

    sub_2749FCFF4();

    v8 = v21;
  }

  if (a3)
  {
    a3(v8);
  }
}

void LibraryOperations.createWorkflow(from:withBehavior:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = *(a5 + 8);
  if (v9(a4, a5) && (v11 = v10, v12 = swift_getObjectType(), (*(v11 + 40))(&v30, v12, v11), swift_unknownObjectRelease(), v32))
  {
    OUTLINED_FUNCTION_88();

    sub_2747A6590(v13, v14, v15, v16, v17, v18);
  }

  else
  {
    v29 = [objc_allocWithZone(MEMORY[0x277D7CAA0]) init];
    v30 = v7;
    LOBYTE(v31) = v8;
    v20 = LibraryWorkflowCreationBehavior.creationOptions(record:)(v29);
    if (v20)
    {
      v28 = v20;
      v21 = v9(a4, a5);
      if (v21)
      {
        v23 = v21;
        v24 = v22;
        ObjectType = swift_getObjectType();
        v30 = v23;
        (*(*(v24 + 8) + 16))(v28, ObjectType);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_88();
        return;
      }
    }

    OUTLINED_FUNCTION_88();
  }
}

void sub_2747A6590(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (a6)
  {
  }
}

unint64_t sub_2747A6620()
{
  result = qword_28096D710;
  if (!qword_28096D710)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28096D710);
  }

  return result;
}

uint64_t sub_2747A6664()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968770);
  v1 = *(v0 + 32);
  v2._rawValue = *(v0 + 40);
  v3 = *(v0 + 48);

  return sub_2747A5B84(v1, v2, v3);
}

uint64_t sub_2747A66F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968770);
  v1 = *(v0 + 16);

  return sub_2747A5D14(v1);
}

uint64_t block_destroy_helper_10()
{
}

{
}

uint64_t sub_2747A6794(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968818);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for ShortcutsLibrarySection(0);
  v29 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v30 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v28 = &v27 - v12;
  v13 = 0;
  v14 = *(a3 + 16);
  v31 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v14 == v13)
    {
      return v31;
    }

    v15 = *(sub_2749F97C4() - 8);
    a1(a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v13);
    if (v3)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_2747359D0(v8, &qword_280968818);
      ++v13;
    }

    else
    {
      v27 = type metadata accessor for ShortcutsLibrarySection;
      v16 = v28;
      sub_274735A24(v8, v28);
      sub_274735A24(v16, v30);
      v17 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274735AB4(0, *(v17 + 16) + 1, 1, v17);
        v17 = v23;
      }

      v18 = v17;
      v19 = *(v17 + 16);
      v31 = v18;
      v20 = *(v18 + 24);
      v21 = (v19 + 1);
      if (v19 >= v20 >> 1)
      {
        v27 = (v19 + 1);
        sub_274735AB4(v20 > 1, v19 + 1, 1, v31);
        v21 = v27;
        v31 = v24;
      }

      ++v13;
      v22 = v31;
      *(v31 + 16) = v21;
      sub_274735A24(v30, v22 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v19);
    }
  }

  v25 = v31;

  return v25;
}

uint64_t sub_2747A6AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809681E8);
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_2747A6B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809688C8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_22();
  result = sub_2747B2568();
  if (v9)
  {
    goto LABEL_9;
  }

  if (*(a1 + 36) != v8)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    OUTLINED_FUNCTION_88_2();

    return __swift_storeEnumTagSinglePayload(v10, v11, v12, v5);
  }

  else
  {
    v13 = sub_2747B25A8(v2, result, v8, 0, a1);
    sub_2749F9164();
    OUTLINED_FUNCTION_9();
    (*(v14 + 32))(a2, v2);
    *(a2 + *(v5 + 48)) = v13;
    OUTLINED_FUNCTION_143();
    return __swift_storeEnumTagSinglePayload(v15, v16, v17, v5);
  }
}

void sub_2747A6CC0(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a3 >> 1 == a2)
  {
    type metadata accessor for SmartShortcutPickerEntry();
    OUTLINED_FUNCTION_88_2();
  }

  else
  {
    if ((a3 >> 1) <= a2)
    {
      __break(1u);
      return;
    }

    v11 = type metadata accessor for SmartShortcutPickerEntry();
    OUTLINED_FUNCTION_9();
    sub_2747310DC(a1 + *(v12 + 72) * a2, a4);
    OUTLINED_FUNCTION_143();
    v8 = v11;
  }

  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void sub_2747A6D8C()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  v3 = v2;
  sub_2747B1010(v2);
  v4 = sub_2747B106C(v3);
  v6 = v5;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_32_1();
  v13 = sub_2747B14B8(v9, v10, v11, v4, v6, v12);
  sub_274772EA0(v4, v6, v8 & 1);
  v14 = OUTLINED_FUNCTION_32_1();
  if (!v13)
  {
    v1(v14);
    v14 = OUTLINED_FUNCTION_32_1();
  }

  sub_274772EA0(v14, v15, v16);
  OUTLINED_FUNCTION_46();
}

void sub_2747A6E50()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35_0();
  v2 = type metadata accessor for RootNavigationDestination();
  v3 = OUTLINED_FUNCTION_27(v2);
  v5 = v4;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_64_1();
  if (*(v0 + 16))
  {
    sub_2749FDDF4();
    RootNavigationDestination.hash(into:)();
    sub_2749FDE44();
    OUTLINED_FUNCTION_36_1();
    v8 = ~v7;
    do
    {
      v9 = v6 & v8;
      OUTLINED_FUNCTION_50_3();
      if (!v10)
      {
        break;
      }

      sub_2747310DC(*(v0 + 48) + *(v5 + 72) * v9, v1);
      OUTLINED_FUNCTION_34_2();
      static RootNavigationDestination.== infix(_:_:)();
      v12 = v11;
      sub_274731134();
      v6 = v9 + 1;
    }

    while ((v12 & 1) == 0);
  }

  OUTLINED_FUNCTION_46();
}

BOOL sub_2747A6F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_2749FDDF4();
  sub_2749FCE24();
  sub_2749FDE44();
  OUTLINED_FUNCTION_36_1();
  v8 = ~v7;
  do
  {
    v9 = v6 & v8;
    v10 = (1 << (v6 & v8)) & *(a3 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_2749FDCC4();
    v6 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t sub_2747A707C(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = a1;
    sub_2749FDDF4();
    MEMORY[0x277C5FB60](v4);
    v5 = sub_2749FDE44();
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + v7) != v4);
  }

  return v2;
}

BOOL sub_2747A712C(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_2749FDDF4();
  MEMORY[0x277C5FB60](a1 & 1);
  v4 = sub_2749FDE44();
  v5 = a2 + 56;
  do
  {
    v6 = v4 & ~(-1 << *(a2 + 32));
    result = ((1 << v6) & *(v5 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8))) != 0;
    if (((1 << v6) & *(v5 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    v8 = *(*(a2 + 48) + v6);
    v4 = v6 + 1;
  }

  while (v8 != (a1 & 1));
  return result;
}

uint64_t sub_2747A71E8()
{
  OUTLINED_FUNCTION_44_0();
  result = sub_2747A723C();
  *v0 = result;
  return result;
}

uint64_t (*sub_2747A7264())()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_54(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_125_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_33(v4);
  return sub_2747B2788;
}

uint64_t sub_2747A72F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968780);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968778);
  OUTLINED_FUNCTION_65_0();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_30();
  return v5(v4);
}

uint64_t sub_2747A73D8()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968780);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968778);
  OUTLINED_FUNCTION_87_2();
  sub_2749FA8D4();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

uint64_t (*sub_2747A751C())()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_54(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_125_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_33(v4);
  return sub_2747B2788;
}

uint64_t sub_2747A758C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_22();
  v10 = OUTLINED_FUNCTION_66();
  v11(v10);
  return a7(v7);
}

uint64_t sub_2747A7660()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968790);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968788);
  OUTLINED_FUNCTION_65_0();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_30();
  return v5(v4);
}

uint64_t sub_2747A7748()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968790);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968788);
  OUTLINED_FUNCTION_87_2();
  sub_2749FA8D4();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

void sub_2747A784C()
{
  OUTLINED_FUNCTION_49_2();
  v2 = v1;
  v3 = *v0;
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 56);
  if (v6)
  {
    v7 = *(v3 + 32);
    v8 = *(v3 + 40);
    v9 = OUTLINED_FUNCTION_66_2();
    v10(v9);
    v2(v4);
    (*(v8 + 8))(v5, v7);
  }

  else
  {
    v1(*(*v0 + 56));
  }

  free(v5);
  free(v4);
  OUTLINED_FUNCTION_50_0();

  free(v11);
}

uint64_t sub_2747A7948()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_2749FA914();
}

uint64_t (*sub_2747A79B0())()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_54(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_125_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_33(v4);
  return sub_2747A7A20;
}

uint64_t sub_2747A7A40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687A0);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968798);
  OUTLINED_FUNCTION_65_0();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_30();
  return v5(v4);
}

uint64_t sub_2747A7B28()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687A0);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968798);
  OUTLINED_FUNCTION_87_2();
  sub_2749FA8D4();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

void sub_2747A7C2C()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_59_0();
  sub_2749FA4E4();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_46_0();
  v2 = *&v0[OBJC_IVAR___WFPopoverModel_database];
  if (v2)
  {
    sub_27471CF08(0, &qword_28096BF80);
    v3 = sub_2747A7EA8(v0, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280966CD8);
    OUTLINED_FUNCTION_132();
    v4 = v3;
    sub_2747AEA48();
    sub_2747A7250();

    OUTLINED_FUNCTION_46();
  }

  else
  {
    OUTLINED_FUNCTION_46();
  }
}

id sub_2747A7EA8(void *a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v4 = [swift_getObjCClassFromMetadata() workflowWithReference:a1 database:a2 error:v8];
  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_2749F8FE4();

    swift_willThrow();
  }

  return v4;
}

void sub_2747A7F88()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_59_0();
  sub_2749FA4E4();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  v2 = *&v0[OBJC_IVAR___WFPopoverModel_database];
  if (v2)
  {
    sub_27471CF08(0, &qword_28096BF80);
    v3 = v2;
    v4 = v0;
    v5 = sub_2747A7EA8(v4, v3);
    v6 = [objc_allocWithZone(WFWorkflowFileActivity) initWithPopoverModel_];
    v14 = MEMORY[0x277D84F90];
    if ([objc_opt_self() shortcutFileSharingEnabled])
    {
      v7 = v6;
      MEMORY[0x277C5ECC0]();
      OUTLINED_FUNCTION_142_0();
      if (v9)
      {
        OUTLINED_FUNCTION_8(v8);
        sub_2749FCFB4();
      }

      OUTLINED_FUNCTION_43_0();
      sub_2749FCFF4();
    }

    v10 = objc_allocWithZone(type metadata accessor for AddToHomeScreenActivity());
    v11 = AddToHomeScreenActivity.init(reference:)(v4);
    MEMORY[0x277C5ECC0]();
    OUTLINED_FUNCTION_142_0();
    if (v9)
    {
      OUTLINED_FUNCTION_8(v12);
      sub_2749FCFB4();
    }

    OUTLINED_FUNCTION_43_0();
    sub_2749FCFF4();
    type metadata accessor for SharingPromptModel(0);
    OUTLINED_FUNCTION_132();
    v13 = v5;
    SharingPromptModel.init(workflow:applicationActivities:)(v13, v14);
    sub_2747A7508();
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_2747A82B8()
{
  v1 = OUTLINED_FUNCTION_134();
  type metadata accessor for FileActivityModel(v1);
  v2 = OUTLINED_FUNCTION_132();
  sub_2749F9154();
  *(v2 + 16) = v0;
  v3 = v0;

  return sub_2747A7934();
}

id PopoverModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PopoverModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PopoverModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2747A852C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PopoverModel(0);
  result = sub_2749FA874();
  *a1 = result;
  return result;
}

uint64_t LibraryDataSource.SortType.displayName.getter()
{
  sub_2749FCE14();
  OUTLINED_FUNCTION_84();
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    OUTLINED_FUNCTION_62();
    swift_once();
  }

  v1 = qword_28159E448;
  OUTLINED_FUNCTION_44();
  v2 = sub_2749FCD64();

  OUTLINED_FUNCTION_66();
  sub_2749FCD64();
  OUTLINED_FUNCTION_96();

  v3 = [v1 localizedStringForKey:v2 value:v0 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_84();

  return OUTLINED_FUNCTION_44();
}

uint64_t LibraryDataSource.SortType.hashValue.getter()
{
  v1 = *v0;
  sub_2749FDDF4();
  MEMORY[0x277C5FB60](v1);
  return sub_2749FDE44();
}

uint64_t sub_2747A87D4()
{
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_2747A880C()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_42_1();
  *(v1 + 40) = v0;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_2747A885C()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *(OUTLINED_FUNCTION_54(v2) + 40) = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *(v0 + 40);
  *(v1 + 24) = Strong;
  *(v1 + 32) = v4;
  return OUTLINED_FUNCTION_93_0();
}

void sub_2747A88D4(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t LibraryDataSource.__allocating_init(layoutMode:canChangeLayoutModes:shortcutMoveService:database:)()
{
  v0 = swift_allocObject();
  LibraryDataSource.init(layoutMode:canChangeLayoutModes:shortcutMoveService:database:)();
  return v0;
}

void sub_2747A89C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_122();
  sub_2749FA904();

  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_66_0();
  sub_2749FA914();
  sub_2747AA148();
}

void sub_2747A8A84(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_2747A8AF4(v1);
}

void *sub_2747A8AB4()
{
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void sub_2747A8AF4(uint64_t a1)
{
  OUTLINED_FUNCTION_42_1();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t static LibraryDataSource.searchPredicate(for:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3[0] = a1;
  v3[1] = a2;
  sub_2747A8BDC(v3, &v4);
  return v4;
}

uint64_t sub_2747A8BDC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2749F8E94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[1];
  v16[0] = *a1;
  v16[1] = v8;
  sub_2749F8E74();
  sub_27475D0D0();
  v9 = MEMORY[0x277D837D0];
  v10 = sub_2749FD714();
  v12 = v11;
  (*(v5 + 8))(v7, v4);
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    sub_27471CF08(0, &qword_2809688F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_274A0EF10;
    *(v14 + 56) = v9;
    *(v14 + 64) = sub_27475C4F4();
    *(v14 + 32) = v10;
    *(v14 + 40) = v12;
    result = sub_2749FD244();
  }

  else
  {

    result = 0;
  }

  *a2 = result;
  return result;
}

void sub_2747A8D98()
{
  OUTLINED_FUNCTION_48();
  type metadata accessor for ShortcutsLibraryItem.ItemType(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_46_0();
  type metadata accessor for ShortcutsLibraryItem(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v4 = OUTLINED_FUNCTION_51_1();
  type metadata accessor for ShortcutsLibrarySection(v4);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687B8);
  OUTLINED_FUNCTION_43();
  v11 = v10;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_82();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  v13 = sub_2749F9534();
  (*(v11 + 8))(v0, v9);
  v14 = *(v13 + 16);
  if (v14)
  {
    OUTLINED_FUNCTION_31_0();
    v16 = v13 + v15;
    v58 = *(v17 + 72);
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      OUTLINED_FUNCTION_17_3();
      sub_2747310DC(v16, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687E0);
      v19 = sub_2749F9534();
      OUTLINED_FUNCTION_12_8();
      sub_274731134();
      v20 = *(v19 + 16);
      v21 = *(v18 + 16);
      v22 = v21 + v20;
      if (__OFADD__(v21, v20))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v22 > *(v18 + 24) >> 1)
      {
        if (v21 <= v22)
        {
          v24 = v21 + v20;
        }

        else
        {
          v24 = v21;
        }

        sub_274763A40(isUniquelyReferenced_nonNull_native, v24, 1, v18);
        v18 = v25;
      }

      if (*(v19 + 16))
      {
        OUTLINED_FUNCTION_79_2();
        if (v26 != v27)
        {
          goto LABEL_51;
        }

        OUTLINED_FUNCTION_78_2();
        swift_arrayInitWithCopy();

        if (v20)
        {
          v28 = *(v18 + 16);
          v27 = __OFADD__(v28, v20);
          v29 = v28 + v20;
          if (v27)
          {
            goto LABEL_52;
          }

          *(v18 + 16) = v29;
        }
      }

      else
      {

        if (v20)
        {
          goto LABEL_50;
        }
      }

      v16 += v58;
      if (!--v14)
      {

        goto LABEL_19;
      }
    }
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
LABEL_19:
    v30 = MEMORY[0x277D84F90];
    v59 = MEMORY[0x277D84F90];
    v31 = *(v18 + 16);
    if (v31)
    {
      OUTLINED_FUNCTION_31_0();
      v33 = v18 + v32;
      v35 = *(v34 + 72);
      do
      {
        OUTLINED_FUNCTION_8_6();
        sub_2747310DC(v33, v1);
        OUTLINED_FUNCTION_0_11();
        v36 = OUTLINED_FUNCTION_63();
        sub_2747310DC(v36, v37);
        OUTLINED_FUNCTION_7_8();
        sub_274731134();
        OUTLINED_FUNCTION_119();
        if (swift_getEnumCaseMultiPayload())
        {
          OUTLINED_FUNCTION_1_12();
          sub_274731134();
        }

        else
        {
          MEMORY[0x277C5ECC0]();
          v38 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v38 >> 1)
          {
            OUTLINED_FUNCTION_8(v38);
            sub_2749FCFB4();
          }

          sub_2749FCFF4();
          v30 = v59;
        }

        v33 += v35;
        --v31;
      }

      while (v31);

      v39 = v30;
    }

    else
    {

      v39 = MEMORY[0x277D84F90];
    }

    v40 = sub_27472D918(v39);
    v41 = 0;
    while (1)
    {
LABEL_30:
      if (v41 == v40)
      {

        OUTLINED_FUNCTION_46();
        return;
      }

      if ((v39 & 0xC000000000000001) != 0)
      {
        v57 = OUTLINED_FUNCTION_119();
        v42 = MEMORY[0x277C5F6D0](v57);
      }

      else
      {
        if (v41 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v42 = *(v39 + 32 + 8 * v41);
      }

      v43 = v42;
      v27 = __OFADD__(v41++, 1);
      if (v27)
      {
        break;
      }

      OUTLINED_FUNCTION_67_2();
      v45 = (*(v44 + 296))();
      [v43 hash];
      v46 = sub_2749FDC74();
      v48 = v47;
      if (*(v45 + 16))
      {
        v49 = v46;
        sub_2749FDDF4();
        sub_2749FCE24();
        sub_2749FDE44();
        OUTLINED_FUNCTION_36_1();
        v52 = ~v51;
        while (1)
        {
          v53 = v50 & v52;
          if (((*(v45 + 56 + (((v50 & v52) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v50 & v52)) & 1) == 0)
          {
            break;
          }

          v54 = (*(v45 + 48) + 16 * v53);
          if (*v54 != v49 || v54[1] != v48)
          {
            v56 = sub_2749FDCC4();
            v50 = v53 + 1;
            if ((v56 & 1) == 0)
            {
              continue;
            }
          }

          sub_2749FD9E4();
          sub_2749FDA24();
          sub_2749FDA34();
          sub_2749FD9F4();
          goto LABEL_30;
        }
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

uint64_t static ShortcutsLibraryItem.identifier(for:)(void *a1)
{
  [a1 hash];
  return sub_2749FDC74();
}

{
  v1 = [a1 id];
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_89_1();

  return OUTLINED_FUNCTION_32();
}

void sub_2747A93D8()
{
  OUTLINED_FUNCTION_48();
  type metadata accessor for LibrarySectionOptions(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v71 = v4 - v3;
  OUTLINED_FUNCTION_57_0();
  v70 = sub_2749F9164();
  OUTLINED_FUNCTION_43();
  v75 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v69 = v8 - v7;
  OUTLINED_FUNCTION_57_0();
  v68 = sub_2749F97C4();
  OUTLINED_FUNCTION_43();
  v64 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v67 = v12 - v11;
  v13 = OUTLINED_FUNCTION_57_0();
  type metadata accessor for ShortcutsLibraryItem.ItemType(v13);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v77 = (v16 - v15);
  v17 = OUTLINED_FUNCTION_57_0();
  type metadata accessor for ShortcutsLibraryItem(v17);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_1();
  v72 = v19;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_15();
  v76 = v21;
  v22 = OUTLINED_FUNCTION_57_0();
  v23 = type metadata accessor for ShortcutsLibrarySection(v22);
  OUTLINED_FUNCTION_43();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_111_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687B8);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_82();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v73 = v0;
  sub_2749FA904();

  v29 = sub_2749F9534();
  v30 = OUTLINED_FUNCTION_94_0();
  v31(v30);
  v32 = *(v29 + 16);
  if (v32)
  {
    OUTLINED_FUNCTION_71();
    v23 = v29 + v33;
    v34 = *(v25 + 72);
    v35 = MEMORY[0x277D84F90];
    while (1)
    {
      OUTLINED_FUNCTION_17_3();
      sub_2747310DC(v23, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687E0);
      KeyPath = sub_2749F9534();
      OUTLINED_FUNCTION_12_8();
      sub_274731134();
      v36 = *(KeyPath + 16);
      v37 = *(v35 + 16);
      v38 = v37 + v36;
      if (__OFADD__(v37, v36))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v38 > *(v35 + 24) >> 1)
      {
        if (v37 <= v38)
        {
          v40 = v37 + v36;
        }

        else
        {
          v40 = v37;
        }

        sub_274763A40(isUniquelyReferenced_nonNull_native, v40, 1, v35);
        v35 = v41;
      }

      if (*(KeyPath + 16))
      {
        OUTLINED_FUNCTION_79_2();
        if (v42 != v43)
        {
          goto LABEL_45;
        }

        OUTLINED_FUNCTION_78_2();
        swift_arrayInitWithCopy();

        if (v36)
        {
          v44 = *(v35 + 16);
          v43 = __OFADD__(v44, v36);
          v45 = v44 + v36;
          if (v43)
          {
            goto LABEL_46;
          }

          *(v35 + 16) = v45;
        }
      }

      else
      {

        if (v36)
        {
          goto LABEL_44;
        }
      }

      v23 += v34;
      if (!--v32)
      {

        goto LABEL_19;
      }
    }
  }

  else
  {

    v35 = MEMORY[0x277D84F90];
LABEL_19:
    v46 = 0;
    v74 = *(v35 + 16);
    v66 = (v64 + 32);
    v65 = (v64 + 8);
    v47 = MEMORY[0x277D84F90];
    while (1)
    {
LABEL_20:
      if (v46 == v74)
      {

        OUTLINED_FUNCTION_46();
        return;
      }

      if (v46 >= *(v35 + 16))
      {
        break;
      }

      OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_8_6();
      v49 = sub_2747310DC(v48, v76);
      ++v46;
      v50 = (*(*v73 + 296))(v49);
      OUTLINED_FUNCTION_0_11();
      sub_2747310DC(v76, v77);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v52 = *v77;
          v53 = [*v77 id];
          _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
          OUTLINED_FUNCTION_149();

          break;
        case 2u:
          (*v66)(v67, v77, v68);
          sub_2749F9794();
          sub_2749F9114();
          OUTLINED_FUNCTION_149();
          (*(v75 + 8))(v69, v70);
          (*v65)(v67, v68);
          break;
        case 3u:
          OUTLINED_FUNCTION_13_8();
          sub_274735A24(v77, v71);
          sub_2749F9114();
          OUTLINED_FUNCTION_149();
          OUTLINED_FUNCTION_4_9();
          sub_274731134();
          break;
        default:
          v51 = *v77;
          [*v77 hash];
          sub_2749FDC74();
          OUTLINED_FUNCTION_149();

          break;
      }

      if (*(v50 + 16))
      {
        sub_2749FDDF4();
        sub_2749FCE24();
        sub_2749FDE44();
        OUTLINED_FUNCTION_36_1();
        v56 = ~v55;
        while (1)
        {
          v57 = v54 & v56;
          if (((*(v50 + 56 + (((v54 & v56) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v54 & v56)) & 1) == 0)
          {
            break;
          }

          v58 = (*(v50 + 48) + 16 * v57);
          if (*v58 != KeyPath || v58[1] != v23)
          {
            v60 = sub_2749FDCC4();
            v54 = v57 + 1;
            if ((v60 & 1) == 0)
            {
              continue;
            }
          }

          OUTLINED_FUNCTION_3_17();
          sub_274735A24(v76, v72);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_56_3();
            sub_2747361A4();
          }

          v62 = *(v47 + 16);
          v61 = *(v47 + 24);
          v23 = v62 + 1;
          if (v62 >= v61 >> 1)
          {
            OUTLINED_FUNCTION_8(v61);
            sub_2747361A4();
          }

          *(v47 + 16) = v23;
          OUTLINED_FUNCTION_3_17();
          sub_274735A24(v72, v63);
          goto LABEL_20;
        }
      }

      OUTLINED_FUNCTION_7_8();
      sub_274731134();
    }

    __break(1u);
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

uint64_t sub_2747A9BF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result;
  return result;
}

uint64_t sub_2747A9C48(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 304);

  return v2(v3);
}

uint64_t sub_2747A9CA4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_66_0();
  return sub_2749FA914();
}

uint64_t (*sub_2747A9D10())()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_54(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_125_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_33(v4);
  return sub_2747B2788;
}

uint64_t sub_2747A9D80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687E8);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*(**a2 + 328))(v6);
}

uint64_t sub_2747A9EA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687E8);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687C0);
  OUTLINED_FUNCTION_65_0();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_30();
  return v5(v4);
}

uint64_t sub_2747A9F8C()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687E8);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687C0);
  OUTLINED_FUNCTION_87_2();
  sub_2749FA8D4();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

uint64_t sub_2747AA0A0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result & 1;
  return result;
}

void sub_2747AA148()
{
  v1 = (*v0 + 344);
  v2 = *v1;
  (*v1)();
  swift_bridgeObjectRelease_n();
  v3 = [objc_opt_self() standardUserDefaults];
  v2();
  v4 = sub_2749FCD64();

  v5 = sub_2749FCD64();
  [v3 setValue:v4 forKey:v5];
}

void (*sub_2747AA25C(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = sub_27472D938();
  return sub_2747AA2A4;
}

uint64_t sub_2747AA2CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687F8);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*(**a2 + 376))(v6);
}

uint64_t sub_2747AA3D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687F8);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687F0);
  OUTLINED_FUNCTION_65_0();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_30();
  return v5(v4);
}

uint64_t sub_2747AA4BC()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687F8);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687F0);
  OUTLINED_FUNCTION_87_2();
  sub_2749FA8D4();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

uint64_t sub_2747AA5C0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 392))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2747AA668()
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_66_0();
  return sub_2749FA914();
}

uint64_t (*sub_2747AA6D4())()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_54(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_125_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_33(v4);
  return sub_2747B2788;
}

void sub_2747AA744(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_2747AA7AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*(**a2 + 424))(v6);
}

uint64_t sub_2747AA8D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270);
  OUTLINED_FUNCTION_65_0();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_30();
  return v5(v4);
}

uint64_t sub_2747AA9B8()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270);
  OUTLINED_FUNCTION_87_2();
  sub_2749FA8D4();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

void sub_2747AAB00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10WorkflowUI17LibraryDataSource_sections;
  OUTLINED_FUNCTION_42_1();
  *(v1 + v3) = a1;

  sub_27473097C();
}

void sub_2747AAB9C()
{
  OUTLINED_FUNCTION_49_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687B8);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_22();
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = OUTLINED_FUNCTION_119();
  v2(v1);

  sub_2749FA914();
  v3 = OUTLINED_FUNCTION_125();
  v4(v3);
  OUTLINED_FUNCTION_50_0();
}

uint64_t sub_2747AACC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809688B8);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687B0);
  OUTLINED_FUNCTION_65_0();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_30();
  return v5(v4);
}

uint64_t sub_2747AADD4()
{
  swift_beginAccess();

  sub_27478561C();
  v2 = v1;

  if ((v2 & 1) == 0)
  {
    (*(*v0 + 600))(1, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687D8);
    sub_27472ABB4(&qword_2809688F0, &qword_2809687D8);
    return sub_2749FA8B4();
  }

  return result;
}

uint64_t sub_2747AAEE4()
{
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
}

uint64_t sub_2747AAF24(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10WorkflowUI17LibraryDataSource_sortOrderComparators;
  OUTLINED_FUNCTION_42_1();
  *(v1 + v3) = a1;
  sub_2747AADD4();
}

uint64_t sub_2747AAF7C()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_54(v2) + 32) = v0;
  v3 = OBJC_IVAR____TtC10WorkflowUI17LibraryDataSource_sortOrderComparators;
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  *(v1 + 24) = *(v0 + v3);

  return OUTLINED_FUNCTION_125();
}

void sub_2747AAFF8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {

    sub_2747AAF24(v4);
  }

  else
  {
    sub_2747AAF24(v3);
  }

  free(v2);
}

void sub_2747AB0D0()
{
  OUTLINED_FUNCTION_49_2();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809681E8);
  OUTLINED_FUNCTION_43();
  v6 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_22();
  v8 = OBJC_IVAR____TtC10WorkflowUI17LibraryDataSource_sortOrderComparators;
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  v9 = *(v0 + v8);
  if (*(v9 + 16))
  {
    (*(v6 + 16))(v1, v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v4);
    sub_2749F8EC4();
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968800);

    v10 = OUTLINED_FUNCTION_133_1();

    if (v10)
    {
      v11 = OUTLINED_FUNCTION_66();
      v12(v11);

      v13 = 1;
    }

    else
    {
      swift_getKeyPath();

      v14 = OUTLINED_FUNCTION_133_1();

      if (v14)
      {
        v15 = OUTLINED_FUNCTION_66();
        v16(v15);

        v13 = 2;
      }

      else
      {
        swift_getKeyPath();
        v17 = OUTLINED_FUNCTION_133_1();

        v18 = OUTLINED_FUNCTION_66();
        v19(v18);

        if (v17)
        {
          v13 = 3;
        }

        else
        {
          v13 = 0;
        }
      }
    }
  }

  else
  {
    v13 = 0;
  }

  *v3 = v13;
  OUTLINED_FUNCTION_50_0();
}

void ShortcutsLibraryItem.name.getter()
{
  OUTLINED_FUNCTION_48();
  v4 = v1;
  v5 = type metadata accessor for LibrarySectionOptions(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_92_2();
  sub_2749F9164();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_51_1();
  v8 = sub_2749F97C4();
  OUTLINED_FUNCTION_43();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v12 = OUTLINED_FUNCTION_80();
  type metadata accessor for ShortcutsLibraryItem.ItemType(v12);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_0_11();
  sub_2747310DC(v4, v3);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v14 = *v3;
      v15 = [*v3 triggerPhrase];
      goto LABEL_7;
    case 2u:
      v16 = OUTLINED_FUNCTION_118_2();
      v17(v16);
      sub_2749F9794();
      sub_2749F9114();
      OUTLINED_FUNCTION_95();
      v18 = OUTLINED_FUNCTION_34_2();
      v19(v18);
      (*(v10 + 8))(v2, v8);
      break;
    case 3u:
      OUTLINED_FUNCTION_13_8();
      sub_274735A24(v3, v0);
      if (*(v0 + *(v5 + 36)))
      {
        sub_274758014();
        OUTLINED_FUNCTION_95();
      }

      OUTLINED_FUNCTION_4_9();
      sub_274731134();
      break;
    default:
      v14 = *v3;
      v15 = [*v3 name];
LABEL_7:
      v20 = v15;
      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      OUTLINED_FUNCTION_95();

      break;
  }

  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_46();
}

uint64_t ShortcutsLibraryItem.actionCountText.getter()
{
  OUTLINED_FUNCTION_126_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_92_2();
  OUTLINED_FUNCTION_0_11();
  v2 = OUTLINED_FUNCTION_32_1();
  sub_2747310DC(v2, v3);
  OUTLINED_FUNCTION_125();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_274731134();
    return 45;
  }

  else
  {
    v5 = *v0;
    v6 = sub_2749FCE14();
    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      sub_2749FD934();

      sub_27475D0D0();
      OUTLINED_FUNCTION_24();
      sub_2749FD724();
      v17 = v9;
      MEMORY[0x277C5EBC0](0xD000000000000010, 0x8000000274A2C0D0);
      if (qword_28159E3A8 != -1)
      {
        OUTLINED_FUNCTION_62();
        swift_once();
      }

      v10 = qword_28159E448;
      v11 = sub_2749FCD64();

      OUTLINED_FUNCTION_66();
      sub_2749FCD64();
      OUTLINED_FUNCTION_96();

      v12 = [v10 localizedStringForKey:v11 value:v17 table:{0, 32, 0xE100000000000000, 10, 0xE100000000000000}];

      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_274A0EF10;
    v14 = [v5 actionCount];
    v15 = MEMORY[0x277D83C10];
    *(v13 + 56) = MEMORY[0x277D83B88];
    *(v13 + 64) = v15;
    *(v13 + 32) = v14;
    OUTLINED_FUNCTION_66();
    v4 = sub_2749FCD74();
  }

  return v4;
}

uint64_t ShortcutsLibraryItem.modificationDateText.getter()
{
  sub_2749F90F4();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_2_0();
  type metadata accessor for ShortcutsLibraryItem.ItemType(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  v4 = (v3 - v2);
  OUTLINED_FUNCTION_0_11();
  v5 = OUTLINED_FUNCTION_66();
  sub_2747310DC(v5, v6);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_274731134();
  }

  else
  {
    v7 = *v4;
    if (qword_280966BC0 != -1)
    {
      swift_once();
    }

    v8 = qword_280989168;
    v9 = [v7 modificationDate];
    sub_2749F90D4();

    v10 = sub_2749F90B4();
    v11 = OUTLINED_FUNCTION_32_1();
    v12(v11);
    v13 = [v8 stringFromDate_];

    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  return OUTLINED_FUNCTION_32_1();
}

uint64_t sub_2747AB9FC(unsigned __int8 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968808);
  OUTLINED_FUNCTION_34(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_82();
  v5 = *a1;
  v6 = OBJC_IVAR____TtC10WorkflowUI17LibraryDataSource_sortOrderComparators;
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  sub_2747A6AC8(*(v1 + v6), v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809681E8);
  v7 = OUTLINED_FUNCTION_147();
  if (__swift_getEnumTagSinglePayload(v7, 1, v6) == 1)
  {
    sub_2747359D0(v1, &qword_280968808);
  }

  else
  {
    sub_2749F8ED4();
    v8 = OUTLINED_FUNCTION_32();
    v9(v8);
    sub_2747AB0D0();
    if (v5 == v13)
    {
      sub_2749F9294();
    }
  }

  switch(v5)
  {
    case 1:
    case 2:
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968810);
      OUTLINED_FUNCTION_109_2();
      v11 = OUTLINED_FUNCTION_47_1();
      *(v11 + 16) = xmmword_274A0EF10;
      swift_getKeyPath();
      sub_2749F8EE4();
      v10 = v11;
      break;
    default:
      v10 = MEMORY[0x277D84F90];
      break;
  }

  return sub_2747AAF24(v10);
}

uint64_t sub_2747ABCE0(void *a1)
{
  *a1 = v1;
  sub_2747AB0D0();
  return OUTLINED_FUNCTION_93_0();
}

uint64_t sub_2747ABD30(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  else
  {
    v5 = *(a1 + 8);
    v2 = &v5;
  }

  return sub_2747AB9FC(v2);
}

uint64_t sub_2747ABD78()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI17LibraryDataSource_observeChanges;
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2747ABDB8()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OBJC_IVAR____TtC10WorkflowUI17LibraryDataSource_observeChanges;
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  *(v1 + 32) = *(v0 + v3);
  return OUTLINED_FUNCTION_93_0();
}

void sub_2747ABE28(uint64_t a1)
{
  v1 = *a1;
  sub_274731C74(*(*a1 + 32));

  free(v1);
}

void sub_2747ABE68()
{
  OUTLINED_FUNCTION_48();
  v42 = v1;
  v43 = v0;
  type metadata accessor for ShortcutsLibraryItem.ItemType(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v45 = (v4 - v3);
  v5 = OUTLINED_FUNCTION_57_0();
  v44 = type metadata accessor for ShortcutsLibraryItem(v5);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v46 = v8 - v7;
  v9 = OUTLINED_FUNCTION_57_0();
  type metadata accessor for ShortcutsLibrarySection(v9);
  OUTLINED_FUNCTION_43();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687B8);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_64_1();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_136_1();

  v18 = sub_2749F9534();
  v19 = OUTLINED_FUNCTION_63();
  v20(v19);
  v21 = *(v18 + 16);
  if (v21)
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_145();
    v22 = MEMORY[0x277D84F90];
    while (1)
    {
      OUTLINED_FUNCTION_17_3();
      sub_2747310DC(v16, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687E0);
      v23 = sub_2749F9534();
      OUTLINED_FUNCTION_12_8();
      sub_274731134();
      v24 = *(v23 + 16);
      v25 = *(v22 + 16);
      if (__OFADD__(v25, v24))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v25 + v24 > *(v22 + 24) >> 1)
      {
        OUTLINED_FUNCTION_153(isUniquelyReferenced_nonNull_native);
        v22 = v27;
      }

      if (*(v23 + 16))
      {
        OUTLINED_FUNCTION_79_2();
        if (v28 != v29)
        {
          goto LABEL_29;
        }

        OUTLINED_FUNCTION_78_2();
        OUTLINED_FUNCTION_127_1(v30);
        swift_arrayInitWithCopy();

        if (v24)
        {
          v31 = *(v22 + 16);
          v29 = __OFADD__(v31, v24);
          v32 = v31 + v24;
          if (v29)
          {
            goto LABEL_30;
          }

          *(v22 + 16) = v32;
        }
      }

      else
      {

        if (v24)
        {
          goto LABEL_27;
        }
      }

      v16 += v11;
      if (!--v21)
      {

        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
LABEL_16:
    v33 = *(v22 + 16);
    v34 = v45;
    if (!v33)
    {
LABEL_23:

      v40 = 1;
      v41 = v42;
LABEL_24:
      __swift_storeEnumTagSinglePayload(v41, v40, 1, v44);
      OUTLINED_FUNCTION_46();
      return;
    }

    v35 = 0;
    OUTLINED_FUNCTION_71();
    while (v35 < *(v22 + 16))
    {
      OUTLINED_FUNCTION_8_6();
      sub_2747310DC(v36, v46);
      OUTLINED_FUNCTION_0_11();
      sub_2747310DC(v46, v34);
      OUTLINED_FUNCTION_122();
      if (swift_getEnumCaseMultiPayload())
      {
        OUTLINED_FUNCTION_1_12();
        sub_274731134();
      }

      else
      {
        v37 = *v34;
        sub_27471CF08(0, &qword_28159E4A8);
        v38 = v43;
        OUTLINED_FUNCTION_29_1();
        v39 = sub_2749FD604();

        if (v39)
        {

          OUTLINED_FUNCTION_3_17();
          v41 = v42;
          sub_274735A24(v46, v42);
          v40 = 0;
          goto LABEL_24;
        }
      }

      ++v35;
      OUTLINED_FUNCTION_7_8();
      sub_274731134();
      v34 = v45;
      if (v33 == v35)
      {
        goto LABEL_23;
      }
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

void sub_2747AC2A4()
{
  OUTLINED_FUNCTION_48();
  v43 = v1;
  v44 = v0;
  type metadata accessor for ShortcutsLibraryItem.ItemType(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v46 = (v4 - v3);
  v5 = OUTLINED_FUNCTION_57_0();
  v45 = type metadata accessor for ShortcutsLibraryItem(v5);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v47 = v8 - v7;
  v9 = OUTLINED_FUNCTION_57_0();
  type metadata accessor for ShortcutsLibrarySection(v9);
  OUTLINED_FUNCTION_43();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687B8);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_64_1();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_136_1();

  v18 = sub_2749F9534();
  v19 = OUTLINED_FUNCTION_63();
  v20(v19);
  v21 = *(v18 + 16);
  if (v21)
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_145();
    v22 = MEMORY[0x277D84F90];
    while (1)
    {
      OUTLINED_FUNCTION_17_3();
      sub_2747310DC(v16, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687E0);
      v23 = sub_2749F9534();
      OUTLINED_FUNCTION_12_8();
      sub_274731134();
      v24 = *(v23 + 16);
      v25 = *(v22 + 16);
      if (__OFADD__(v25, v24))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v25 + v24 > *(v22 + 24) >> 1)
      {
        OUTLINED_FUNCTION_153(isUniquelyReferenced_nonNull_native);
        v22 = v27;
      }

      if (*(v23 + 16))
      {
        OUTLINED_FUNCTION_79_2();
        if (v28 != v29)
        {
          goto LABEL_29;
        }

        OUTLINED_FUNCTION_78_2();
        OUTLINED_FUNCTION_127_1(v30);
        swift_arrayInitWithCopy();

        if (v24)
        {
          v31 = *(v22 + 16);
          v29 = __OFADD__(v31, v24);
          v32 = v31 + v24;
          if (v29)
          {
            goto LABEL_30;
          }

          *(v22 + 16) = v32;
        }
      }

      else
      {

        if (v24)
        {
          goto LABEL_27;
        }
      }

      v16 += v11;
      if (!--v21)
      {

        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
LABEL_16:
    v33 = *(v22 + 16);
    if (!v33)
    {
LABEL_24:

      v42 = 1;
      v41 = v43;
LABEL_25:
      __swift_storeEnumTagSinglePayload(v41, v42, 1, v45);
      OUTLINED_FUNCTION_46();
      return;
    }

    v34 = 0;
    OUTLINED_FUNCTION_71();
    while (v34 < *(v22 + 16))
    {
      OUTLINED_FUNCTION_8_6();
      sub_2747310DC(v35, v47);
      OUTLINED_FUNCTION_0_11();
      v36 = OUTLINED_FUNCTION_122();
      sub_2747310DC(v36, v37);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v38 = *v46;
        sub_27471CF08(0, &qword_28159E460);
        v39 = v44;
        OUTLINED_FUNCTION_29_1();
        v40 = sub_2749FD604();

        if (v40)
        {

          OUTLINED_FUNCTION_3_17();
          v41 = v43;
          sub_274735A24(v47, v43);
          v42 = 0;
          goto LABEL_25;
        }
      }

      else
      {
        OUTLINED_FUNCTION_1_12();
        sub_274731134();
      }

      ++v34;
      OUTLINED_FUNCTION_7_8();
      sub_274731134();
      if (v33 == v34)
      {
        goto LABEL_24;
      }
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t ShortcutsLibraryItem.autoShortcut.getter()
{
  OUTLINED_FUNCTION_126_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_92_2();
  OUTLINED_FUNCTION_0_11();
  v2 = OUTLINED_FUNCTION_32_1();
  sub_2747310DC(v2, v3);
  OUTLINED_FUNCTION_125();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v0;
  }

  sub_274731134();
  return 0;
}

uint64_t sub_2747AC77C@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v31 = a3;
  v29 = a2;
  v33 = a1;
  v34 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968820);
  MEMORY[0x28223BE20](v4 - 8);
  v32 = &v27 - v5;
  v6 = type metadata accessor for LibrarySectionOptions(0);
  MEMORY[0x28223BE20](v6 - 8);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShortcutsLibraryItem(0);
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ShortcutsLibraryItem.ItemType(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2749F97C4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2749F9754();
  v18 = *(sub_2749F97B4() + 16);

  if (v18)
  {
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809681D8) + 48);
    (*(v15 + 16))(v13, v17, v14);
    v13[v19] = v29 & 1;
    swift_storeEnumTagMultiPayload();
    sub_2747310DC(v13, v10);
    *&v10[*(v8 + 20)] = sub_27473670C();
    sub_2747310DC(v31, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967B20);
    v20 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_274A0EF10;
    sub_2747310DC(v10, v21 + v20);
    v22 = type metadata accessor for LibrarySectionOptions.Header(0);
    __swift_storeEnumTagSinglePayload(v32, 1, 1, v22);
    v23 = v34;
    ShortcutsLibrarySection.init(options:items:headerOverride:)();
    sub_274731134();
    sub_274731134();
    v24 = 0;
  }

  else
  {
    v24 = 1;
    v23 = v34;
  }

  (*(v15 + 8))(v17, v14);
  v25 = type metadata accessor for ShortcutsLibrarySection(0);
  return __swift_storeEnumTagSinglePayload(v23, v24, 1, v25);
}

uint64_t sub_2747ACBA8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(a2 + 48);
  if (!v3)
  {
    return 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968828);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274A0EF10;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  v5 = v3;
  v6 = sub_2749F9464();
  if (!v7)
  {
    v6 = sub_2749F9474();
  }

  *(inited + 48) = v6;
  *(inited + 56) = v7;
  sub_2749FCCB4();
  v8 = sub_2749FCC94();

  v9 = [v5 evaluateWithObject_];

  return v9;
}

id sub_2747ACCBC(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968828);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274A0EF10;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  v4 = sub_2749F9464();
  if (!v5)
  {
    v4 = sub_2749F9474();
  }

  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_2749FCCB4();
  v6 = sub_2749FCC94();

  v7 = [a2 evaluateWithObject_];

  return v7;
}

uint64_t sub_2747ACDCC(uint64_t result, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t), void (*a4)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 16);
    result = a3(0, result, v5, a2);
    if (v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = result;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      a4(0);
      OUTLINED_FUNCTION_89_1();

      return OUTLINED_FUNCTION_32();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2747ACE68(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2749FCE44();
    sub_2749FCEB4();
    OUTLINED_FUNCTION_89_1();

    return OUTLINED_FUNCTION_32();
  }

  return result;
}

uint64_t sub_2747ACF20(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    sub_2749FDB24();

    return OUTLINED_FUNCTION_29_1();
  }

  v3 = sub_27472D918(a2);
  OUTLINED_FUNCTION_66_0();
  v7 = sub_2748142C0(v4, v5, v6);
  if (v8)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (v9 < 0)
  {
    goto LABEL_15;
  }

  sub_2747B0668(0, a2);
  v10 = OUTLINED_FUNCTION_32_1();
  sub_2747B0668(v10, v11);
  if ((a2 & 0xC000000000000001) != 0 && v9)
  {
    sub_27471CF08(0, &qword_280968930);

    v12 = 0;
    do
    {
      v13 = v12 + 1;
      sub_2749FD964();
      v12 = v13;
    }

    while (v9 != v13);
  }

  else
  {
  }

  if (a2 >> 62)
  {
    goto LABEL_16;
  }

  return OUTLINED_FUNCTION_29_1();
}

void sub_2747AD05C()
{
  OUTLINED_FUNCTION_48();
  sub_2749FCA74();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_46_0();
  v11 = sub_2749FCAA4();
  OUTLINED_FUNCTION_43();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_64_1();
  sub_27471CF08(0, &qword_28159E4E0);
  v7 = sub_2749FD404();
  v12[4] = sub_2747B15DC;
  v13 = v0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_274760264;
  v12[3] = &block_descriptor_5;
  v8 = _Block_copy(v12);

  sub_2749FCA94();
  sub_274720E74(&qword_28159E580, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60);
  sub_27472ABB4(&qword_28159E530, &unk_28096DB60);
  sub_2749FD7B4();
  MEMORY[0x277C5F170](0, v2, v1, v8);
  _Block_release(v8);

  v9 = OUTLINED_FUNCTION_119();
  v10(v9);
  (*(v5 + 8))(v2, v11);

  OUTLINED_FUNCTION_46();
}

uint64_t sub_2747AD394()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v3 = *(v1 + 40);

    if (Strong)
    {
      ObjectType = swift_getObjectType();
      (*(v3 + 40))(v11, ObjectType, v3);
      result = swift_unknownObjectRelease();
      v5 = v12;
      if (v12)
      {
        v7 = v11[3];
        v6 = v11[4];
        v9 = v11[1];
        v8 = v11[2];
        v10 = v11[0];

        sub_2747A6590(v10, v9, v8, v7, v6, v5);
        v5();
      }
    }
  }

  return result;
}

void sub_2747AD4A8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ShortcutsLibraryItem.ItemType(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_2747310DC(a2, v5);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v8 = *v5;
        swift_beginAccess();
        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_10;
        }

        v12 = *(v7 + 40);
        ObjectType = swift_getObjectType();
        (*(v12 + 24))(v8, ObjectType, v12);
        goto LABEL_9;
      case 2u:

        v11 = sub_2749F97C4();
        (*(*(v11 - 8) + 8))(v5, v11);
        break;
      case 3u:

        sub_274731134();
        break;
      default:
        v8 = *v5;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v9 = *(v7 + 40);
          v10 = swift_getObjectType();
          (*(v9 + 16))(v8, 0, 0, 0, 0, 0, 0, v10, v9);
LABEL_9:

          swift_unknownObjectRelease();
        }

        else
        {
LABEL_10:
        }

        break;
    }
  }
}

uint64_t LibraryDataSource.deinit()
{

  sub_2747545BC(v0 + 32);
  v1 = OBJC_IVAR____TtC10WorkflowUI17LibraryDataSource__selectedWorkflowIds;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687C0);
  OUTLINED_FUNCTION_1_2();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC10WorkflowUI17LibraryDataSource__layoutMode;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687F0);
  OUTLINED_FUNCTION_1_2();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC10WorkflowUI17LibraryDataSource__isEditing;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270);
  OUTLINED_FUNCTION_1_2();
  (*(v6 + 8))(v0 + v5);

  v7 = OBJC_IVAR____TtC10WorkflowUI17LibraryDataSource__sortedSections;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687B0);
  OUTLINED_FUNCTION_1_2();
  (*(v8 + 8))(v0 + v7);

  return v0;
}

uint64_t LibraryDataSource.__deallocating_deinit()
{
  LibraryDataSource.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2747AD8C4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LibraryDataSource(0);
  result = sub_2749FA874();
  *a1 = result;
  return result;
}

void ShortcutsLibrarySection.tableItems.getter()
{
  OUTLINED_FUNCTION_48();
  v23 = type metadata accessor for ShortcutsLibraryItem.ItemType(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  v2 = OUTLINED_FUNCTION_50_1();
  v3 = type metadata accessor for ShortcutsLibraryItem(v2);
  v4 = OUTLINED_FUNCTION_27(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_1();
  v22 = v5;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  type metadata accessor for ShortcutsLibrarySection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687E0);
  v9 = sub_2749F9534();
  v10 = 0;
  v11 = *(v9 + 16);
  v12 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v11 == v10)
    {

      OUTLINED_FUNCTION_46();
      return;
    }

    if (v10 >= *(v9 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_8_6();
    sub_2747310DC(v13, v8);
    OUTLINED_FUNCTION_0_11();
    sub_2747310DC(v8, v0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    OUTLINED_FUNCTION_1_12();
    sub_274731134();
    if (EnumCaseMultiPayload)
    {
      OUTLINED_FUNCTION_7_8();
      sub_274731134();
      ++v10;
    }

    else
    {
      OUTLINED_FUNCTION_3_17();
      sub_274735A24(v8, v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_56_3();
        sub_2747361A4();
        v12 = v24;
      }

      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        OUTLINED_FUNCTION_8(v16);
        v21 = v20;
        sub_2747361A4();
        v18 = v21;
        v12 = v24;
      }

      ++v10;
      *(v12 + 16) = v18;
      OUTLINED_FUNCTION_3_17();
      sub_274735A24(v22, v19);
    }
  }

  __break(1u);
}

uint64_t ShortcutsLibrarySection.workflowInsertionAllowed.getter()
{
  type metadata accessor for LibrarySectionOptions.SectionType(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_92_2();
  type metadata accessor for LibrarySectionOptions(0);
  OUTLINED_FUNCTION_5_10();
  sub_2747310DC(v1 + v3, v0);
  OUTLINED_FUNCTION_125();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2749F9514();
      OUTLINED_FUNCTION_1_2();
      (*(v5 + 8))(v0);
    }

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_24_4();
    sub_274731134();
    return 1;
  }
}

uint64_t ShortcutsLibrarySection.hash(into:)(void *a1)
{
  LibrarySectionOptions.hash(into:)(a1);
  type metadata accessor for ShortcutsLibrarySection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687E0);
  sub_2749F9534();
  OUTLINED_FUNCTION_44();
  sub_27478AAE4();
}

void static ShortcutsLibrarySection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_59_0();
  type metadata accessor for LibrarySectionOptions.Header(v4);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968820);
  OUTLINED_FUNCTION_34(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_64_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968840);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_22();
  v13 = OUTLINED_FUNCTION_32_1();
  if ((static LibrarySectionOptions.== infix(_:_:)(v13, v14) & 1) == 0)
  {
    goto LABEL_12;
  }

  v15 = type metadata accessor for ShortcutsLibrarySection(0);
  type metadata accessor for ShortcutsLibraryItem(0);
  sub_274720E74(&qword_280968848, type metadata accessor for ShortcutsLibraryItem);
  if ((sub_2749F9584() & 1) == 0)
  {
    goto LABEL_12;
  }

  v16 = *(v15 + 24);
  v17 = *(v11 + 48);
  sub_274735454(v0 + v16, v1);
  sub_274735454(v3 + v16, v1 + v17);
  OUTLINED_FUNCTION_157(v1);
  if (!v20)
  {
    v18 = OUTLINED_FUNCTION_29_1();
    sub_274735454(v18, v19);
    OUTLINED_FUNCTION_157(v1 + v17);
    if (!v20)
    {
      OUTLINED_FUNCTION_60_1();
      sub_274735A24(v1 + v17, v8);
      OUTLINED_FUNCTION_34_2();
      static LibrarySectionOptions.Header.== infix(_:_:)();
      v22 = v21;
      sub_274731134();
      sub_274731134();
      sub_2747359D0(v1, &qword_280968820);
      if ((v22 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_14;
    }

    sub_274731134();
LABEL_11:
    sub_2747359D0(v1, &qword_280968840);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_157(v1 + v17);
  if (!v20)
  {
    goto LABEL_11;
  }

  sub_2747359D0(v1, &qword_280968820);
LABEL_14:
  v23 = *(v15 + 28);
  v24 = *(v0 + v23);
  v25 = *(v0 + v23 + 8);
  v26 = (v3 + v23);
  if (v24 != *v26 || v25 != v26[1])
  {
    sub_2749FDCC4();
  }

LABEL_12:
  OUTLINED_FUNCTION_46();
}

uint64_t ShortcutsLibrarySection.hashValue.getter()
{
  type metadata accessor for ShortcutsLibrarySection(0);
  sub_274720E74(&qword_280968850, type metadata accessor for ShortcutsLibrarySection);

  return sub_2749FCCF4();
}

uint64_t sub_2747ADFAC@<X0>(uint64_t *a1@<X8>)
{
  result = ShortcutsLibrarySection.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2747ADFE0()
{
  sub_2749FDDF4();
  LibrarySectionOptions.hash(into:)(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687E0);
  sub_2749F9534();
  sub_27478AAE4();

  return sub_2749FDE44();
}

void static ShortcutsLibraryItem.ItemType.== infix(_:_:)()
{
  OUTLINED_FUNCTION_48();
  v41 = v2;
  v4 = v3;
  v5 = type metadata accessor for LibrarySectionOptions(0);
  v6 = OUTLINED_FUNCTION_34(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v38 = v8 - v7;
  OUTLINED_FUNCTION_57_0();
  sub_2749F97C4();
  OUTLINED_FUNCTION_43();
  v39 = v10;
  v40 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v11 = OUTLINED_FUNCTION_51_1();
  type metadata accessor for ShortcutsLibraryItem.ItemType(v11);
  OUTLINED_FUNCTION_9();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v38 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&v38 - v20);
  MEMORY[0x28223BE20](v19);
  v23 = (&v38 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968858);
  OUTLINED_FUNCTION_34(v24);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_92_2();
  v27 = (v0 + *(v26 + 56));
  sub_2747310DC(v4, v0);
  sub_2747310DC(v41, v27);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_11();
      v35 = OUTLINED_FUNCTION_44();
      sub_2747310DC(v35, v36);
      v30 = *v21;
      OUTLINED_FUNCTION_99_2();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_3;
      }

      goto LABEL_10;
    case 2u:
      OUTLINED_FUNCTION_0_11();
      sub_2747310DC(v0, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809681D8);
      OUTLINED_FUNCTION_99_2();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v32 = v39;
        v31 = v40;
        (*(v39 + 32))(v1, v27, v40);
        sub_2749F9784();
        v33 = *(v32 + 8);
        v33(v1, v31);
        v33(v18, v31);
        goto LABEL_6;
      }

      (*(v39 + 8))(v18, v40);
      goto LABEL_13;
    case 3u:
      OUTLINED_FUNCTION_0_11();
      sub_2747310DC(v0, v15);
      OUTLINED_FUNCTION_99_2();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        OUTLINED_FUNCTION_13_8();
        v34 = v38;
        sub_274735A24(v27, v38);
        static LibrarySectionOptions.== infix(_:_:)(v15, v34);
        sub_274731134();
        sub_274731134();
        goto LABEL_6;
      }

      OUTLINED_FUNCTION_4_9();
      sub_274731134();
      goto LABEL_13;
    default:
      OUTLINED_FUNCTION_0_11();
      v28 = OUTLINED_FUNCTION_125();
      sub_2747310DC(v28, v29);
      v30 = *v23;
      OUTLINED_FUNCTION_99_2();
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_3:

LABEL_13:
        sub_2747359D0(v0, &qword_280968858);
      }

      else
      {
LABEL_10:
        v37 = *v27;
        sub_27471CF08(0, &qword_28159E390);
        OUTLINED_FUNCTION_96();
        sub_2749FD604();

LABEL_6:
        OUTLINED_FUNCTION_1_12();
        sub_274731134();
      }

      OUTLINED_FUNCTION_46();
      return;
  }
}

void ShortcutsLibraryItem.ItemType.hash(into:)()
{
  OUTLINED_FUNCTION_49_2();
  v2 = OUTLINED_FUNCTION_134();
  v3 = type metadata accessor for LibrarySectionOptions(v2);
  v4 = OUTLINED_FUNCTION_34(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_51_1();
  v5 = sub_2749F97C4();
  OUTLINED_FUNCTION_43();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_46_0();
  type metadata accessor for ShortcutsLibraryItem.ItemType(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = (v11 - v10);
  OUTLINED_FUNCTION_0_11();
  v13 = OUTLINED_FUNCTION_94_0();
  sub_2747310DC(v13, v14);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v15 = *v12;
      v16 = 1;
      goto LABEL_6;
    case 2u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809681D8);
      (*(v7 + 32))(v1, v12, v5);
      MEMORY[0x277C5FB60](2);
      sub_274720E74(&qword_2809681E0, MEMORY[0x277D7BF10]);
      sub_2749FCD04();
      sub_2749FDE14();
      v17 = OUTLINED_FUNCTION_66();
      v18(v17);
      break;
    case 3u:
      OUTLINED_FUNCTION_13_8();
      v19 = OUTLINED_FUNCTION_43_0();
      sub_274735A24(v19, v20);
      MEMORY[0x277C5FB60](3);
      LibrarySectionOptions.hash(into:)(v0);
      OUTLINED_FUNCTION_4_9();
      sub_274731134();
      break;
    default:
      v15 = *v12;
      v16 = 0;
LABEL_6:
      MEMORY[0x277C5FB60](v16);
      sub_2749FD614();

      break;
  }

  OUTLINED_FUNCTION_50_0();
}

id sub_2747AE6DC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v0 setDateStyle_];
  [v0 setTimeStyle_];
  result = [v0 setDoesRelativeDateFormatting_];
  qword_280989168 = v0;
  return result;
}

uint64_t ShortcutsLibraryItem.nameIconViewModel.getter()
{
  type metadata accessor for ShortcutsLibraryItem(0);
}

id ShortcutsLibraryItem.itemProvider.getter()
{
  OUTLINED_FUNCTION_126_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_92_2();
  OUTLINED_FUNCTION_0_11();
  v2 = OUTLINED_FUNCTION_32_1();
  sub_2747310DC(v2, v3);
  OUTLINED_FUNCTION_125();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_274731134();
    return 0;
  }

  else
  {
    v5 = *v0;
    v4 = [objc_allocWithZone(MEMORY[0x277CCAA88]) init];
    v6 = [v5 name];
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

    v7 = OUTLINED_FUNCTION_29_1();
    sub_2747B06C0(v7, v8, v4);
    [v4 registerObject:v5 visibility:3];
  }

  return v4;
}

uint64_t _s10WorkflowUI20ShortcutsLibraryItemV0E4TypeO9hashValueSivg_0()
{
  sub_2749FDDF4();
  ShortcutsLibraryItem.ItemType.hash(into:)();
  return sub_2749FDE44();
}

void sub_2747AE930(void *a1@<X8>)
{
  ShortcutsLibraryItem.id.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2747AE960()
{
  sub_2749FDDF4();
  ShortcutsLibraryItem.ItemType.hash(into:)();
  return sub_2749FDE44();
}

uint64_t sub_2747AE99C()
{
  sub_27471CF08(0, &qword_28096BF80);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2749FA914();
}

uint64_t sub_2747AF0C8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280966CD8);
    sub_27472ABB4(&qword_280968920, &qword_280966CD8);
    sub_2749FA874();

    sub_2749FA894();
  }

  return result;
}

uint64_t sub_2747AF18C()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280966CD8);
    sub_27472ABB4(&qword_280968920, &qword_280966CD8);
    sub_2749FA874();

    sub_2749FA894();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    WFWorkflow.availableIcons.getter();
    sub_2747AE99C();
  }

  return result;
}

uint64_t sub_2747AF298()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280966CD8);
    sub_27472ABB4(&qword_280968920, &qword_280966CD8);
    sub_2749FA874();

    sub_2749FA894();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    WFWorkflow.availableIcons.getter();
    sub_2747AE99C();
  }

  return result;
}

unint64_t sub_2747AF3A4(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_2747AF3C4(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void sub_2747AF3E8(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {

    sub_2747361A4();
  }
}

unint64_t sub_2747AF460(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2747AF524(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_274797FD4(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2747AF524(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2747AF624(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_2749FD9C4();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2747AF624(uint64_t a1, unint64_t a2)
{
  v3 = sub_2747AF670(a1, a2);
  sub_2747AF788(&unk_28838F758);
  return v3;
}

uint64_t sub_2747AF670(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_2749FCE74())
  {
    result = sub_2747AF86C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2749FD924();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_2749FD9C4();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2747AF788(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_2747AF8DC(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2747AF86C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968928);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2747AF8DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968928);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_2747AF9D0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_2747AF9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_151();
  a25 = v28;
  a26 = v29;
  v31 = v30;
  if (sub_27472D918(v30))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809688D0);
    OUTLINED_FUNCTION_3();
    v27 = v32;
    v33 = sub_2749FD914();
  }

  else
  {
    v33 = MEMORY[0x277D84FA0];
  }

  v52 = sub_27472D918(v31);
  if (v52)
  {
    v34 = 0;
    v35 = v33 + 56;
    OUTLINED_FUNCTION_119_1();
    while (1)
    {
      v36 = OUTLINED_FUNCTION_76_2();
      sub_2747AF3C4(v36, v37, v31);
      if (v27)
      {
        v38 = OUTLINED_FUNCTION_63();
        v39 = MEMORY[0x277C5F6D0](v38);
      }

      else
      {
        v39 = *(a9 + 8 * v34);
      }

      v40 = __OFADD__(v34++, 1);
      if (v40)
      {
        break;
      }

      a14 = v39;
      v41 = sub_2749FA854();
      OUTLINED_FUNCTION_61_1();
      sub_274720E74(&qword_2809688D8, v42);
      v27 = &a14;
      sub_2749FCCF4();
      OUTLINED_FUNCTION_41_4();
      v45 = ~v44;
      while (1)
      {
        v46 = v43 & v45;
        v47 = (v43 & v45) >> 6;
        v48 = *(v35 + 8 * v47);
        v49 = v26 << (v43 & v45);
        if ((v49 & v48) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_61_1();
        sub_274720E74(&qword_2809688E0, v50);
        v27 = v41;
        if (sub_2749FCD54())
        {

          goto LABEL_17;
        }

        v43 = v46 + 1;
      }

      *(v35 + 8 * v47) = v49 | v48;
      *(*(v33 + 48) + 8 * v46) = v39;
      OUTLINED_FUNCTION_130_1();
      if (v40)
      {
        goto LABEL_20;
      }

      *(v33 + 16) = v51;
LABEL_17:
      v31 = a10;
      if (v34 == v52)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    OUTLINED_FUNCTION_150();
  }
}

void sub_2747AFBB0()
{
  OUTLINED_FUNCTION_89();
  v1 = v0;
  if (*(v0 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967920), OUTLINED_FUNCTION_3(), v2 = sub_2749FD914(), v3 = v2, (v4 = *(v1 + 16)) != 0))
  {
    v5 = 0;
    v6 = v2 + 56;
    while (v5 < *(v1 + 16))
    {
      v7 = (v1 + 32 + 16 * v5);
      v9 = *v7;
      v8 = v7[1];
      ++v5;
      sub_2749FDDF4();

      sub_2749FCE24();
      sub_2749FDE44();
      OUTLINED_FUNCTION_41_4();
      v12 = ~v11;
      while (1)
      {
        v13 = v10 & v12;
        v14 = (v10 & v12) >> 6;
        v15 = *(v6 + 8 * v14);
        v16 = 1 << (v10 & v12);
        if ((v16 & v15) == 0)
        {
          break;
        }

        v17 = (*(v3 + 48) + 16 * v13);
        v18 = *v17 == v9 && v17[1] == v8;
        if (v18 || (sub_2749FDCC4() & 1) != 0)
        {

          goto LABEL_16;
        }

        v10 = v13 + 1;
      }

      *(v6 + 8 * v14) = v16 | v15;
      v19 = (*(v3 + 48) + 16 * v13);
      *v19 = v9;
      v19[1] = v8;
      OUTLINED_FUNCTION_130_1();
      if (v21)
      {
        goto LABEL_19;
      }

      *(v3 + 16) = v20;
LABEL_16:
      if (v5 == v4)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:

    OUTLINED_FUNCTION_88();
  }
}

void sub_2747AFD18()
{
  OUTLINED_FUNCTION_89();
  v1 = v0;
  if (*(v0 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A70), OUTLINED_FUNCTION_3(), v2 = sub_2749FD914(), v3 = v2, (v4 = *(v1 + 16)) != 0))
  {
    v5 = 0;
    v6 = v2 + 56;
    while (v5 < *(v1 + 16))
    {
      v7 = *(v1 + 32 + v5++);
      sub_2749FDDF4();
      MEMORY[0x277C5FB60](v7);
      v8 = sub_2749FDE44();
      v9 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v10 = v8 & v9;
        v11 = (v8 & v9) >> 6;
        v12 = *(v6 + 8 * v11);
        v13 = 1 << (v8 & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        if (v7 == *(*(v3 + 48) + v10))
        {
          goto LABEL_11;
        }

        v8 = v10 + 1;
      }

      *(v6 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + v10) = v7;
      OUTLINED_FUNCTION_130_1();
      if (v15)
      {
        goto LABEL_14;
      }

      *(v3 + 16) = v14;
LABEL_11:
      if (v5 == v4)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    OUTLINED_FUNCTION_88();
  }
}

uint64_t sub_2747AFE44(uint64_t a1)
{
  v1 = a1;
  if (sub_27472D918(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A18);
    v2 = sub_2749FD914();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v20 = sub_27472D918(v1);
  if (v20)
  {
    v3 = 0;
    v4 = v2 + 56;
    v18 = v1;
    v19 = v1 & 0xC000000000000001;
    v17 = v1 + 32;
    while (1)
    {
      sub_2747AF3C4(v3, v19 == 0, v1);
      result = v19 ? MEMORY[0x277C5F6D0](v3, v1) : *(v17 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      result = sub_2749FD5F4();
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *(v4 + 8 * v10);
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A10);
        v13 = *(*(v2 + 48) + 8 * v9);
        v14 = sub_2749FD604();

        if (v14)
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *(v4 + 8 * v10) = v12 | v11;
      *(*(v2 + 48) + 8 * v9) = v6;
      v15 = *(v2 + 16);
      v7 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v16;
LABEL_17:
      v1 = v18;
      if (v3 == v20)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

void sub_2747B0004(uint64_t a1)
{
  v3 = a1;
  if (sub_27472D918(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809679C8);
    OUTLINED_FUNCTION_3();
    v2 = v4;
    v5 = sub_2749FD914();
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
  }

  v25 = sub_27472D918(v3);
  if (v25)
  {
    v6 = 0;
    v7 = v5 + 56;
    OUTLINED_FUNCTION_119_1();
    while (1)
    {
      v8 = OUTLINED_FUNCTION_76_2();
      sub_2747AF3C4(v8, v9, v3);
      if (v2)
      {
        v10 = OUTLINED_FUNCTION_63();
        v11 = MEMORY[0x277C5F6D0](v10);
      }

      else
      {
        v11 = *(v23 + 8 * v6);
      }

      v12 = v11;
      v13 = __OFADD__(v6++, 1);
      if (v13)
      {
        break;
      }

      v2 = v11;
      sub_2749FD5F4();
      OUTLINED_FUNCTION_41_4();
      v16 = ~v15;
      while (1)
      {
        v17 = v14 & v16;
        v18 = (v14 & v16) >> 6;
        v19 = *(v7 + 8 * v18);
        v20 = v1 << (v14 & v16);
        if ((v20 & v19) == 0)
        {
          break;
        }

        sub_27471CF08(0, &qword_28096EE00);
        v21 = *(*(v5 + 48) + 8 * v17);
        v2 = sub_2749FD604();

        if (v2)
        {

          goto LABEL_17;
        }

        v14 = v17 + 1;
      }

      *(v7 + 8 * v18) = v20 | v19;
      *(*(v5 + 48) + 8 * v17) = v12;
      OUTLINED_FUNCTION_130_1();
      if (v13)
      {
        goto LABEL_20;
      }

      *(v5 + 16) = v22;
LABEL_17:
      v3 = v24;
      if (v6 == v25)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void sub_2747B0198(uint64_t a1)
{
  if (sub_27472D918(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809678F8);
    OUTLINED_FUNCTION_3();
    v1 = v3;
    v4 = sub_2749FD914();
  }

  else
  {
    v4 = MEMORY[0x277D84FA0];
  }

  v21 = sub_27472D918(a1);
  if (v21)
  {
    v5 = 0;
    v6 = v4 + 56;
    while (1)
    {
      v7 = OUTLINED_FUNCTION_76_2();
      sub_2747AF3C4(v7, v8, a1);
      v9 = v1 ? MEMORY[0x277C5F6D0](v5, a1) : *(a1 + 32 + 8 * v5);
      v10 = v9;
      v11 = __OFADD__(v5++, 1);
      if (v11)
      {
        break;
      }

      v1 = v9;
      sub_2749FD5F4();
      OUTLINED_FUNCTION_41_4();
      v14 = ~v13;
      while (1)
      {
        v15 = v12 & v14;
        v16 = (v12 & v14) >> 6;
        v17 = *(v6 + 8 * v16);
        v18 = 1 << (v12 & v14);
        if ((v18 & v17) == 0)
        {
          break;
        }

        type metadata accessor for WFGridViewCell();
        v19 = *(*(v4 + 48) + 8 * v15);
        v1 = sub_2749FD604();

        if (v1)
        {

          goto LABEL_17;
        }

        v12 = v15 + 1;
      }

      *(v6 + 8 * v16) = v18 | v17;
      *(*(v4 + 48) + 8 * v15) = v10;
      OUTLINED_FUNCTION_130_1();
      if (v11)
      {
        goto LABEL_20;
      }

      *(v4 + 16) = v20;
LABEL_17:
      if (v5 == v21)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void sub_2747B0350(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(unint64_t, void), void (*a6)(void))
{
  v6 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    a5((a4 >> 1) - a3, 0);
    if (v6 != a3)
    {
      a6(0);
      OUTLINED_FUNCTION_110();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

uint64_t sub_2747B0430(unint64_t a1)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v3 = sub_2749FD844();
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    sub_2748142C8(v3, 0);
    OUTLINED_FUNCTION_147();

    v2 = sub_2747B0A54(&v5, (v1 + 32), v3, v2);
    sub_274730F8C();
    if (v2 == v3)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v3 = *(v2 + 16);
    if (!v3)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v1;
}

void sub_2747B04DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_151();
  a25 = v27;
  a26 = v28;
  v30 = *(v29 + 16);
  if (v30)
  {
    v31 = OUTLINED_FUNCTION_147();
    v32 = sub_2748142C8(v31, 0);
    v33 = sub_2747B0C2C(&a10, (v32 + 32), v30, v26);

    sub_274730F8C();
    if (v33 != v30)
    {
      __break(1u);
    }
  }

  OUTLINED_FUNCTION_150();
}

void sub_2747B057C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      sub_27471CF08(0, &qword_280968930);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_2747B0668(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_2749FD844();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

void sub_2747B06C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2749FCD64();

  [a3 setSuggestedName_];
}

uint64_t sub_2747B0724()
{
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_89_1();
  sub_2749FDDF4();
  OUTLINED_FUNCTION_66_0();
  sub_2749FCE24();
  v0 = sub_2749FDE44();

  return v0;
}

void sub_2747B0790()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_113_2();
  v5 = v2 + 56;
  OUTLINED_FUNCTION_31_6();
  if (!v7)
  {
    v9 = 0;
LABEL_17:
    OUTLINED_FUNCTION_124_1(v9);
    OUTLINED_FUNCTION_46();
    return;
  }

  v8 = v6;
  if (!v6)
  {
    v9 = 0;
    goto LABEL_17;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_103_0();
    while (v10 < v8)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v12 >= v4)
          {
            goto LABEL_17;
          }

          v3 = *(v5 + 8 * v12);
          ++v9;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v12 = v9;
LABEL_12:
      OUTLINED_FUNCTION_107_0();
      v14 = *(*(v0 + 48) + ((v12 << 9) | (8 * v13)));
      *v1 = v14;
      if (v11 == v8)
      {
        v16 = v14;
        v9 = v12;
        goto LABEL_17;
      }

      ++v1;
      v15 = v14;
      v10 = v11;
      v9 = v12;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_2747B0888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, int64_t a17, unint64_t a18)
{
  OUTLINED_FUNCTION_89();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  if ((v18 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_71_2();
    sub_2749FD804();
    sub_27471CF08(0, &qword_28096EE00);
    sub_2747B2418();
    OUTLINED_FUNCTION_32();
    sub_2749FD174();
    v19 = a14;
    if (!v23)
    {
      goto LABEL_26;
    }
  }

  else
  {
    a17 = 0;
    OUTLINED_FUNCTION_41_4();
    a15 = v19 + 56;
    a16 = ~v37;
    v38 = -v37;
    if (v38 < 64)
    {
      v39 = ~(v36 << v38);
    }

    else
    {
      v39 = v36;
    }

    a18 = v39 & *(v19 + 56);
    if (!v23)
    {
      goto LABEL_26;
    }
  }

  if (!v21)
  {
LABEL_26:
    *v25 = v19;
    v25[1] = a15;
    v25[2] = a16;
    v25[3] = a17;
    v25[4] = a18;
    OUTLINED_FUNCTION_88();
    return;
  }

  if ((v21 & 0x8000000000000000) == 0)
  {
    v40 = a16;
    v41 = v25;
    v30 = 0;
    v31 = (a16 + 64) >> 6;
    while (1)
    {
      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v19 < 0)
      {
        if (!sub_2749FD874() || (sub_27471CF08(0, &qword_28096EE00), swift_dynamicCast(), (v35 = a13) == 0))
        {
LABEL_25:
          a16 = v40;
          v25 = v41;
          goto LABEL_26;
        }
      }

      else
      {
        if (!a18)
        {
          while (1)
          {
            v33 = a17 + 1;
            if (__OFADD__(a17, 1))
            {
              break;
            }

            if (v33 >= v31)
            {
              a18 = 0;
              goto LABEL_25;
            }

            a18 = *(a15 + 8 * v33);
            ++a17;
            if (a18)
            {
              a17 = v33;
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        v34 = __clz(__rbit64(a18));
        a18 &= a18 - 1;
        v35 = *(*(v19 + 48) + ((a17 << 9) | (8 * v34)));
        if (!v35)
        {
          goto LABEL_25;
        }
      }

      *v23++ = v35;
      ++v30;
      if (v32 == v21)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2747B0A54(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v7 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    result = sub_2749FDAB4();
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v4 = result | 0x8000000000000000;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_23:
    v12 = 0;
    a3 = 0;
LABEL_28:
    *v7 = v4;
    v7[1] = v8;
    v7[2] = v9;
    v7[3] = v12;
    v7[4] = v10;
    return a3;
  }

  v17 = -1 << *(a4 + 32);
  v8 = a4 + 64;
  v9 = ~v17;
  v18 = -v17;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v10 = v19 & *(a4 + 64);
  if (!a2)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_28;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = v9;
    v11 = 0;
    v12 = 0;
    v13 = (v9 + 64) >> 6;
    while (1)
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if ((v4 & 0x8000000000000000) != 0)
      {
        if (!sub_2749FDAD4() || (swift_unknownObjectRelease(), sub_27471CF08(0, &qword_28096EE00), swift_dynamicCast(), (result = v21) == 0))
        {
LABEL_25:
          a3 = v11;
LABEL_26:
          v9 = v20;
          goto LABEL_28;
        }
      }

      else
      {
        if (!v10)
        {
          while (1)
          {
            v15 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              break;
            }

            if (v15 >= v13)
            {
              v10 = 0;
              goto LABEL_25;
            }

            v10 = *(v8 + 8 * v15);
            ++v12;
            if (v10)
            {
              v12 = v15;
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        v16 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        result = *(*(v4 + 56) + ((v12 << 9) | (8 * v16)));
        if (!result)
        {
          goto LABEL_25;
        }
      }

      *v6++ = result;
      ++v11;
      if (v14 == a3)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2747B0C2C(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = *(*(a4 + 56) + ((v15 << 9) | (8 * v16)));
      *v11 = v17;
      if (v14 == v10)
      {
        v18 = v17;
        v13 = v15;
        goto LABEL_20;
      }

      ++v11;
      result = v17;
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}