void SNSetupLogging()
{
  if (SNSetupLogging_onceToken != -1)
  {
    SNSetupLogging_cold_1();
  }
}

uint64_t __SNSetupLogging_block_invoke()
{
  SNDefaultLog = os_log_create(SNLogSubsystemIdentifier, "Snappy");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_26D1A4794()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_10();

  return MEMORY[0x2821FE8E8]();
}

uint64_t sub_26D1A47D0()
{
  v1 = sub_26D1A914C();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = *(v6 + 64);

  v8 = *(v0 + 48);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_26D1A4890()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26D1A48C8()
{
  v1 = sub_26D1A914C();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);
  v8 = *(v0 + v7 + 8);

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v4 | 7);
}

uint64_t sub_26D1A4998()
{
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_10();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_26D1A7298()
{
  v0 = [objc_opt_self() mainBundle];
  sub_26D1A8EFC(v0);
  sub_26D1A8F6C(0, &qword_2804E0410, 0x277D86200);
  result = sub_26D1A91BC();
  qword_2804E0420 = result;
  return result;
}

void static PPT.preloadScroll(initDelay:currentDepth:maxDepth:scrollView:completion:)()
{
  OUTLINED_FUNCTION_11();
  v61 = v1;
  v62 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_26D1A910C();
  v10 = OUTLINED_FUNCTION_0(v9);
  v59 = v11;
  v60 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4();
  v57 = v14;
  OUTLINED_FUNCTION_8();
  v58 = sub_26D1A912C();
  v15 = OUTLINED_FUNCTION_0(v58);
  v56 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4();
  v53 = v19;
  OUTLINED_FUNCTION_8();
  v20 = sub_26D1A914C();
  v21 = OUTLINED_FUNCTION_0(v20);
  v54 = v22;
  v55 = v21;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v21);
  v27 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_9();
  if (_MergedGlobals != -1)
  {
    OUTLINED_FUNCTION_7(&_MergedGlobals);
  }

  OUTLINED_FUNCTION_6();
  sub_26D1A7CA0(0, v28, v29, MEMORY[0x277D84560]);
  v30 = swift_allocObject();
  v31 = MEMORY[0x277D83B88];
  v32 = MEMORY[0x277D83C10];
  *(v30 + 16) = xmmword_26D1A9D50;
  *(v30 + 56) = v31;
  *(v30 + 64) = v32;
  *(v30 + 32) = v6;
  v33 = [v4 description];
  v34 = sub_26D1A917C();
  v36 = v35;

  *(v30 + 96) = MEMORY[0x277D837D0];
  *(v30 + 104) = sub_26D1A780C();
  *(v30 + 72) = v34;
  *(v30 + 80) = v36;
  sub_26D1A918C();
  sub_26D1A90FC();

  if (v8 >= v6)
  {
    v61(v37);
  }

  else
  {
    sub_26D1A8F6C(0, &qword_2804E03E8, 0x277D85C78);
    v38 = sub_26D1A91AC();
    sub_26D1A913C();
    sub_26D1A915C();
    v39 = v55;
    v54 = *(v54 + 8);
    (v54)(v27, v55);
    OUTLINED_FUNCTION_10();
    v40 = swift_allocObject();
    v41 = v61;
    v42 = v62;
    v40[2] = v4;
    v40[3] = v41;
    v40[4] = v42;
    v40[5] = v8;
    v40[6] = v6;
    OUTLINED_FUNCTION_5(v40);
    v63[1] = 1107296256;
    OUTLINED_FUNCTION_3();
    v63[2] = v43;
    v63[3] = &block_descriptor;
    v44 = _Block_copy(v63);
    v45 = v4;

    v46 = v53;
    sub_26D1A911C();
    v63[0] = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_2();
    sub_26D1A8D9C(v47, v48);
    OUTLINED_FUNCTION_1();
    sub_26D1A7CA0(0, v49, v50, MEMORY[0x277D83940]);
    sub_26D1A7D04();
    v51 = v57;
    v52 = v60;
    sub_26D1A91CC();
    MEMORY[0x26D6B4D90](v0, v46, v51, v44);
    _Block_release(v44);

    (*(v59 + 8))(v51, v52);
    (*(v56 + 8))(v46, v58);
    (v54)(v0, v39);
  }

  OUTLINED_FUNCTION_12();
}

unint64_t sub_26D1A77B0()
{
  result = qword_2804E03D8;
  if (!qword_2804E03D8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2804E03D8);
  }

  return result;
}

unint64_t sub_26D1A780C()
{
  result = qword_2804E03E0;
  if (!qword_2804E03E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E03E0);
  }

  return result;
}

void sub_26D1A7860()
{
  OUTLINED_FUNCTION_11();
  v54 = v1;
  v55 = v2;
  v57 = v3;
  v58 = v4;
  v6 = v5;
  v7 = sub_26D1A910C();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26D1A912C();
  v16 = OUTLINED_FUNCTION_0(v15);
  v56 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_26D1A914C();
  v23 = OUTLINED_FUNCTION_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v23);
  v30 = &v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_9();
  [v6 bounds];
  Height = CGRectGetHeight(v60);
  [v6 contentSize];
  v33 = v32;
  v34 = [v6 contentOffset];
  if (Height + v35 >= v33)
  {
    v57(v34);
  }

  else
  {
    [v6 setContentOffset:0 animated:?];
    sub_26D1A8F6C(0, &qword_2804E03E8, 0x277D85C78);
    v53 = v15;
    v50 = sub_26D1A91AC();
    sub_26D1A913C();
    sub_26D1A915C();
    v36 = *(v25 + 8);
    v51 = v22;
    v52 = v36;
    v36(v30, v22);
    OUTLINED_FUNCTION_10();
    v37 = swift_allocObject();
    v38 = v55;
    v37[2] = v54;
    v37[3] = v38;
    v39 = v57;
    v40 = v58;
    v37[4] = v6;
    v37[5] = v39;
    v37[6] = v40;
    OUTLINED_FUNCTION_5(v37);
    v59[1] = 1107296256;
    OUTLINED_FUNCTION_3();
    v59[2] = v41;
    v59[3] = &block_descriptor_33;
    v42 = _Block_copy(v59);
    v43 = v6;

    sub_26D1A911C();
    v59[0] = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_2();
    sub_26D1A8D9C(v44, v45);
    OUTLINED_FUNCTION_1();
    sub_26D1A7CA0(0, v46, v47, MEMORY[0x277D83940]);
    sub_26D1A7D04();
    sub_26D1A91CC();
    v48 = v50;
    MEMORY[0x26D6B4D90](v0, v21, v14, v42);
    _Block_release(v42);

    (*(v10 + 8))(v14, v7);
    (*(v56 + 8))(v21, v53);
    v52(v0, v51);
  }

  OUTLINED_FUNCTION_12();
}

void sub_26D1A7C34()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  sub_26D1A7860();
}

uint64_t sub_26D1A7C44(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_26D1A7CA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26D1A7D04()
{
  result = qword_2804E0400;
  if (!qword_2804E0400)
  {
    sub_26D1A7CA0(255, &qword_2804E03F8, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0400);
  }

  return result;
}

void static PPT.waitForContent(initDelay:contentLength:scrollView:timeout:completion:)()
{
  OUTLINED_FUNCTION_11();
  v59 = v0;
  v56 = v1;
  v57 = v2;
  v4 = v3;
  v6 = v5;
  v7 = sub_26D1A910C();
  v8 = OUTLINED_FUNCTION_0(v7);
  v64 = v9;
  v65 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  v63 = v12;
  OUTLINED_FUNCTION_8();
  v13 = sub_26D1A912C();
  v14 = OUTLINED_FUNCTION_0(v13);
  v61 = v15;
  v62 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4();
  v60 = v18;
  OUTLINED_FUNCTION_8();
  v58 = sub_26D1A914C();
  v19 = OUTLINED_FUNCTION_0(v58);
  v21 = v20;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v19);
  v25 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v51 - v26;
  v54 = *v6;
  v53 = *(v6 + 8);
  if (_MergedGlobals != -1)
  {
    OUTLINED_FUNCTION_7(&_MergedGlobals);
  }

  OUTLINED_FUNCTION_6();
  sub_26D1A7CA0(0, v28, v29, MEMORY[0x277D84560]);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_26D1A9D60;
  v31 = [v4 description];
  v32 = sub_26D1A917C();
  v34 = v33;

  *(v30 + 56) = MEMORY[0x277D837D0];
  *(v30 + 64) = sub_26D1A780C();
  *(v30 + 32) = v32;
  *(v30 + 40) = v34;
  sub_26D1A918C();
  sub_26D1A90FC();

  sub_26D1A8F6C(0, &qword_2804E03E8, 0x277D85C78);
  v52 = sub_26D1A91AC();
  sub_26D1A913C();
  v35 = v27;
  sub_26D1A915C();
  v55 = *(v21 + 8);
  v36 = v58;
  v55(v25, v58);
  (*(v21 + 16))(v25, v56, v36);
  v37 = (*(v21 + 80) + 56) & ~*(v21 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v54;
  *(v38 + 24) = v53;
  v39 = v57;
  *(v38 + 32) = v4;
  *(v38 + 40) = v39;
  *(v38 + 48) = v59;
  (*(v21 + 32))(v38 + v37, v25, v36);
  v66[4] = sub_26D1A873C;
  v66[5] = v38;
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 1107296256;
  OUTLINED_FUNCTION_3();
  v66[2] = v40;
  v66[3] = &block_descriptor_6;
  v41 = _Block_copy(v66);
  v42 = v4;

  v43 = v60;
  sub_26D1A911C();
  v66[0] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_2();
  sub_26D1A8D9C(v44, v45);
  OUTLINED_FUNCTION_1();
  sub_26D1A7CA0(0, v46, v47, MEMORY[0x277D83940]);
  sub_26D1A7D04();
  v48 = v63;
  v49 = v65;
  sub_26D1A91CC();
  v50 = v52;
  MEMORY[0x26D6B4D90](v35, v43, v48, v41);
  _Block_release(v41);

  (*(v64 + 8))(v48, v49);
  (*(v61 + 8))(v43, v62);
  v55(v35, v36);
  OUTLINED_FUNCTION_12();
}

uint64_t sub_26D1A8274(uint64_t a1, int a2, void *a3, uint64_t (*a4)(id), uint64_t (*a5)(id), uint64_t a6)
{
  v65 = a6;
  v66 = a4;
  v67 = a5;
  v59 = sub_26D1A910C();
  v10 = OUTLINED_FUNCTION_0(v59);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4();
  v64 = v15;
  OUTLINED_FUNCTION_8();
  v16 = sub_26D1A912C();
  v17 = OUTLINED_FUNCTION_0(v16);
  v63 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4();
  v62 = v21;
  OUTLINED_FUNCTION_8();
  v22 = sub_26D1A914C();
  v23 = OUTLINED_FUNCTION_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v23);
  v29 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_9();
  v61 = a3;
  v30 = [a3 contentSize];
  v58 = a1;
  v60 = a2;
  if (a2)
  {
    if (v31 > *&a1)
    {
      return v66(v30);
    }
  }

  else if (v32 > *&a1)
  {
    return v66(v30);
  }

  v56 = v16;
  v57 = v12;
  sub_26D1A913C();
  sub_26D1A8D9C(&qword_2804E0408, MEMORY[0x277D851E0]);
  v33 = v65;
  v34 = sub_26D1A916C();
  v35 = *(v25 + 8);
  v30 = v35(v6, v22);
  if (v34)
  {
    sub_26D1A8F6C(0, &qword_2804E03E8, 0x277D85C78);
    v55 = sub_26D1A91AC();
    sub_26D1A913C();
    sub_26D1A915C();
    v35(&v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
    (*(v25 + 16))(&v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v22);
    v36 = (*(v25 + 80) + 40) & ~*(v25 + 80);
    v37 = (v27 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    *(v38 + 16) = v58;
    *(v38 + 24) = v60 & 1;
    v39 = v61;
    *(v38 + 32) = v61;
    (*(v25 + 32))(v38 + v36, v29, v22);
    v40 = (v38 + v37);
    v41 = v35;
    v42 = v67;
    *v40 = v66;
    v40[1] = v42;
    aBlock[4] = sub_26D1A8DE4;
    aBlock[5] = v38;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_3();
    aBlock[2] = v43;
    aBlock[3] = &block_descriptor_27;
    v44 = _Block_copy(aBlock);
    v45 = v39;

    v46 = v62;
    sub_26D1A911C();
    aBlock[0] = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_2();
    sub_26D1A8D9C(v47, v48);
    OUTLINED_FUNCTION_1();
    sub_26D1A7CA0(0, v49, v50, MEMORY[0x277D83940]);
    sub_26D1A7D04();
    v51 = v64;
    v52 = v59;
    sub_26D1A91CC();
    v53 = v55;
    MEMORY[0x26D6B4D90](v6, v46, v51, v44);
    _Block_release(v44);

    (*(v57 + 8))(v51, v52);
    (*(v63 + 8))(v46, v56);
    return v41(v6, v22);
  }

  return v66(v30);
}

uint64_t sub_26D1A873C()
{
  v1 = *(sub_26D1A914C() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  return sub_26D1A8274(v2, v3, v4, v5, v6, v7);
}

void static PPT.rampDisplay(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedApplication];
  v5 = [v4 delegate];

  if (v5)
  {
    if ([v5 respondsToSelector_])
    {
      v6 = [v5 window];
      swift_unknownObjectRelease();
      if (v6)
      {
        [v6 setAlpha_];
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v7 = objc_opt_self();
  v15 = sub_26D1A89B8;
  v16 = 0;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_26D1A7C44;
  v14 = &block_descriptor_9;
  v8 = _Block_copy(&v11);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v15 = sub_26D1A8AC0;
  v16 = v9;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_26D1A8B98;
  v14 = &block_descriptor_15;
  v10 = _Block_copy(&v11);

  [v7 animateWithDuration:v8 animations:v10 completion:0.5];
  _Block_release(v10);
  _Block_release(v8);
}

void sub_26D1A89B8()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 delegate];

  if (v1)
  {
    if ([v1 respondsToSelector_])
    {
      v2 = [v1 window];
      swift_unknownObjectRelease();
      if (v2)
      {
        [v2 setAlpha_];
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_26D1A8AC0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 delegate];

  if (v4)
  {
    if ([v4 respondsToSelector_])
    {
      v6 = [v4 window];
      v5 = swift_unknownObjectRelease();
      if (v6)
      {
        [v6 setAlpha_];
      }
    }

    else
    {
      v5 = swift_unknownObjectRelease();
    }
  }

  return v2(v5);
}

uint64_t sub_26D1A8B98(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

id PPT.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PPT.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PPT.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PPT.ContentLength(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for PPT.ContentLength(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_26D1A8D9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26D1A8DE4()
{
  v1 = *(sub_26D1A914C() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  type metadata accessor for PPT();
  v10 = v3;
  v11 = v4;
  return static PPT.waitForContent(initDelay:contentLength:scrollView:timeout:completion:)(&v10, v5, v0 + v2, v7, v8, 0.0);
}

uint64_t sub_26D1A8EBC()
{
  v1 = v0[2];
  type metadata accessor for PPT();
  result = v1 + 1;
  if (!__OFADD__(v1, 1))
  {
    return static PPT.preloadScroll(initDelay:currentDepth:maxDepth:scrollView:completion:)(result, v0[3], v0[4], v0[5], v0[6], 1.0);
  }

  __break(1u);
  return result;
}

uint64_t sub_26D1A8EFC(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26D1A917C();

  return v3;
}

uint64_t sub_26D1A8F6C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t OUTLINED_FUNCTION_5(uint64_t result)
{
  *(v2 - 112) = v1;
  *(v2 - 104) = result;
  *(v2 - 144) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_7(uint64_t a1)
{

  return MEMORY[0x2821FEB58](a1, sub_26D1A7298);
}