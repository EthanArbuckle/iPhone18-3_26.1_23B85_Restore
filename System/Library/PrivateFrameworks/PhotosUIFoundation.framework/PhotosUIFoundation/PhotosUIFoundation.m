uint64_t sub_1B3F769B0()
{
  result = sub_1B405DAC4();
  if (v1 <= 0x3F)
  {
    result = sub_1B405D064();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void PhotosInfoUpdater.init(infoKind:requestHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v5;
  v8 = *(*v5 + 80);
  __swift_storeEnumTagSinglePayload(v5 + *(*v5 + 96), 1, 1, v8);
  v9 = *(*v5 + 104);
  *(v5 + v9) = 0;
  v10 = *(*v5 + 112);
  *(v5 + v10) = 0;
  sub_1B405D054();
  v11 = *(v7 + 88);
  type metadata accessor for PhotosInfoUpdater.UpdaterDelegate();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v8;
  v13[3] = v11;
  v13[4] = v12;

  v14 = sub_1B3F76DB4(a3, a4, sub_1B3F7831C, v13);
  v15 = *(v5 + v10);
  *(v5 + v10) = v14;
  v16 = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C8A0);
  type metadata accessor for PhotosInfoUpdater.InfoResult();
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  v17 = sub_1B3F77014(v16);
  v18 = *(v5 + v9);
  *(v5 + v9) = v17;
  v19 = v17;

  if (v19)
  {

    [v19 setObserver_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B3F76CB4()
{
  swift_weakDestroy();
  v0 = OUTLINED_FUNCTION_2_1();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B3F76CE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

id sub_1B3F76E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = qword_1EB87C8B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB87C990);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = 1;
  *&v4[v9] = v10;
  v11 = &v4[qword_1EB87C8A8];
  *v11 = a1;
  *(v11 + 1) = a2;
  v12 = &v4[qword_1EB87C8B0];
  *v12 = a3;
  *(v12 + 1) = a4;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for PhotosInfoUpdater.UpdaterDelegate();
  return objc_msgSendSuper2(&v14, sel_init);
}

void sub_1B3F76F1C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1B3F76F80()
{
  result = sub_1B405DAC4();
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

id sub_1B3F77074(uint64_t a1)
{
  v3 = sub_1B405D414();

  v4 = [v1 initWithInfoProvider:a1 infoKind:v3];
  swift_unknownObjectRelease();

  return v4;
}

void sub_1B3F77344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1B3F773AC(void *a1, int a2, int a3, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  v6 = sub_1B405D444();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = a1;
  v11 = sub_1B3F774EC(v6, v8, sub_1B3F77C80, v9);

  return v11;
}

uint64_t sub_1B3F77470()
{
  _Block_release(*(v0 + 16));
  v1 = OUTLINED_FUNCTION_2_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B3F774A0()
{
  v0 = sub_1B3F7768C();
  os_unfair_lock_lock((v0 + 24));
  v1 = *(v0 + 16) + 1;
  *(v0 + 16) = v1;
  os_unfair_lock_unlock((v0 + 24));

  return v1;
}

uint64_t sub_1B3F774EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *v4;
  v9 = *MEMORY[0x1E69E7D40];
  v10 = sub_1B3F774A0();
  v11 = *((v9 & v8) + 0x50);
  v12 = *((v9 & v8) + 0x58);
  type metadata accessor for PhotosInfoUpdater.Request();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v11;
  v14[3] = v12;
  v14[4] = v13;
  v14[5] = v10;
  v14[6] = a3;
  v14[7] = a4;
  v15 = sub_1B3F77708(v10, sub_1B3F7779C, v14);
  v16 = *(v5 + qword_1EB87C8A8);

  v16(v15);

  return 0;
}

uint64_t sub_1B3F7761C()
{
  MEMORY[0x1B8C71CD0](v0 + 16);
  v1 = OUTLINED_FUNCTION_2_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B3F7764C()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

void *sub_1B3F77708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

uint64_t sub_1B3F77750(uint64_t a1)
{
  v2 = sub_1B3F777D0();
  v2(a1);
}

uint64_t sub_1B3F777D0()
{
  v1 = *(v0 + 24);

  return v1;
}

void sub_1B3F77800(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v15 = a4;
  v6 = sub_1B405DAC4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v16[-1] - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (sub_1B3F77984() == a3)
    {
      v13 = type metadata accessor for PhotosInfoUpdater.InfoResult();
      (*(v7 + 16))(v10, a1, v6);
      v14 = sub_1B3F779C8(v10);
      v16[3] = v13;
      v16[0] = v14;

      v15(v16);

      sub_1B3F791B4(v16);
    }

    else
    {
    }
  }
}

uint64_t sub_1B3F77984()
{
  v0 = sub_1B3F7768C();
  os_unfair_lock_lock((v0 + 24));
  v1 = *(v0 + 16);
  os_unfair_lock_unlock((v0 + 24));

  return v1;
}

uint64_t sub_1B3F77A04(uint64_t a1)
{
  v3 = *(*v1 + 96);
  __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, *(*v1 + 80));
  swift_beginAccess();
  v4 = sub_1B405DAC4();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  swift_endAccess();
  return v1;
}

uint64_t sub_1B3F77AD4(uint64_t a1, uint64_t a2)
{
  sub_1B3F77C10(a1, v10);
  v3 = v11;
  if (v11)
  {
    v4 = __swift_project_boxed_opaque_existential_1(v10, v11);
    v5 = *(v3 - 8);
    MEMORY[0x1EEE9AC00](v4, v4);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v7);
    v8 = sub_1B405DEB4();
    (*(v5 + 8))(v7, v3);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v8 = 0;
  }

  (*(a2 + 16))(a2, v8);
  return swift_unknownObjectRelease();
}

uint64_t sub_1B3F77C10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C120);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void px_dispatch_on_main_queue(void *a1)
{
  v1 = a1;
  if (v1)
  {
    block = v1;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      block[2]();
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    v1 = block;
  }
}

void sub_1B3F77ED4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1B3F77F3C(v4);
}

uint64_t sub_1B3F77F3C(void *a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v4 = sub_1B405DAC4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v17 - v7;
  v9 = [a1 info];
  if (!v9 || (type metadata accessor for PhotosInfoUpdater.InfoResult(), swift_dynamicCastClass()))
  {
    v10 = *(v1 + qword_1EB87C8B0);
    if ([a1 info])
    {
      type metadata accessor for PhotosInfoUpdater.InfoResult();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = v11;
        v13 = *(*v11 + 96);
        swift_beginAccess();
        (*(v5 + 16))(v8, v12 + v13, v4);
        swift_unknownObjectRelease();
LABEL_8:
        v10(v8);
        swift_unknownObjectRelease();
        return (*(v5 + 8))(v8, v4);
      }

      swift_unknownObjectRelease();
    }

    __swift_storeEnumTagSinglePayload(v8, 1, 1, v3);
    goto LABEL_8;
  }

  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1B405DBC4();

  v18 = 0xD000000000000024;
  v19 = 0x80000001B4077EF0;
  v15 = sub_1B405E1F4();
  MEMORY[0x1B8C6F500](v15);

  MEMORY[0x1B8C6F500](0x6F6720747562202CLL, 0xEA00000000002074);
  v17 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB87C980);
  v16 = sub_1B405D464();
  MEMORY[0x1B8C6F500](v16);

  result = sub_1B405DD74();
  __break(1u);
  return result;
}

uint64_t sub_1B3F78328(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B3F78388(a1);
  }

  return result;
}

uint64_t sub_1B3F78388(uint64_t a1)
{
  v36 = *v1;
  v3 = *(v36 + 80);
  OUTLINED_FUNCTION_0_0();
  v40 = v4;
  MEMORY[0x1EEE9AC00](v5, v6);
  v39 = &v36 - v7;
  v8 = sub_1B405DAC4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_0_0();
  v37 = v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v36 - v13;
  OUTLINED_FUNCTION_0_0();
  v16 = v15;
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v41 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = &v36 - v23;
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = &v36 - v26;
  v43 = v1;
  sub_1B3F793E0(&v36 - v26);
  v38 = TupleTypeMetadata2;
  v28 = *(TupleTypeMetadata2 + 48);
  v29 = *(v16 + 16);
  v42 = a1;
  v29(v14, a1, v8);
  v29(&v14[v28], v27, v8);
  OUTLINED_FUNCTION_7_10(v14);
  if (v32)
  {
    v30 = *(v16 + 8);
    v30(v27, v8);
    OUTLINED_FUNCTION_7_10(&v14[v28]);
    if (v32)
    {
      return (v30)(v14, v8);
    }

    goto LABEL_9;
  }

  v29(v24, v14, v8);
  OUTLINED_FUNCTION_7_10(&v14[v28]);
  if (v32)
  {
    (*(v16 + 8))(v27, v8);
    (*(v40 + 8))(v24, v3);
LABEL_9:
    (*(v37 + 8))(v14, v38);
LABEL_10:
    v33 = v41;
    v29(v41, v42, v8);
    return sub_1B3FDBD40(v33);
  }

  v34 = v40;
  (*(v40 + 32))(v39, &v14[v28], v3);
  LODWORD(v38) = sub_1B405D404();
  v40 = *(v34 + 8);
  (v40)(v39, v3);
  v35 = *(v16 + 8);
  v35(v27, v8);
  (v40)(v24, v3);
  result = (v35)(v14, v8);
  if ((v38 & 1) == 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_9()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_0_10()
{

  sub_1B3F97D64();
}

uint64_t OUTLINED_FUNCTION_0_16()
{

  return sub_1B405DEC4();
}

uint64_t OUTLINED_FUNCTION_0_17()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_21()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_22()
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_23()
{

  JUMPOUT(0x1B8C6F570);
}

double OUTLINED_FUNCTION_0_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return sub_1B3F8148C(a1, a2, v11, &a11);
}

uint64_t OUTLINED_FUNCTION_0_29()
{

  return PhotosItemListManager.forceMetadata(for:)(v0, v1);
}

__n128 OUTLINED_FUNCTION_0_31(__n128 *a1)
{
  result = v1[1];
  a1[1] = result;
  a1[2].n128_u64[0] = v1[2].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_38()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_39()
{

  return sub_1B405DD74();
}

uint64_t OUTLINED_FUNCTION_0_42()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_0_47(uint64_t a1)
{

  return MEMORY[0x1EEE6ACE8](a1, v1);
}

uint64_t OUTLINED_FUNCTION_0_50()
{

  return swift_getAssociatedTypeWitness();
}

void OUTLINED_FUNCTION_1_0()
{

  JUMPOUT(0x1B8C71C00);
}

void OUTLINED_FUNCTION_7_3()
{

  JUMPOUT(0x1B8C71C00);
}

uint64_t OUTLINED_FUNCTION_7_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_3()
{

  return sub_1B405DD74();
}

id OUTLINED_FUNCTION_1_7(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;

  return v2;
}

uint64_t OUTLINED_FUNCTION_2()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_1_8()
{

  sub_1B3F97D64();
}

void OUTLINED_FUNCTION_1_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_1_23(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_1_35()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_1_37(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEE6AE20](a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_1_38()
{

  return swift_getWitnessTable();
}

uint64_t sub_1B3F790F0@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_6_12();
  v4 = *(v3 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_6_12();
  sub_1B405DAC4();
  OUTLINED_FUNCTION_8();
  return (*(v5 + 16))(a1, v1 + v4);
}

uint64_t sub_1B3F791B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PhotosInfoUpdater.Request.__deallocating_deinit()
{
  PhotosInfoUpdater.Request.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1B3F793E0@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_7_7();
  swift_getKeyPath();
  sub_1B3F79498();

  return sub_1B3F790F0(a1);
}

__n128 sub_1B3F7948C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1B3F79498()
{
  OUTLINED_FUNCTION_0_45();
  swift_getWitnessTable();
  return sub_1B405D044();
}

uint64_t OUTLINED_FUNCTION_6_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_6_11()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_8_8(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_1B3F87FBC(a1, va);
}

uint64_t PXUserInterfaceSizeClassFromUITraitCollection(void *a1)
{
  v1 = a1;
  if ([v1 horizontalSizeClass] && objc_msgSend(v1, "verticalSizeClass"))
  {
    if ([v1 horizontalSizeClass] == 2 && objc_msgSend(v1, "verticalSizeClass") == 2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void PXSizeGetAspectRatio(double a1, double a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1 == 0.0 || a2 == 0.0 || (a1 == *MEMORY[0x1E69BDDB0] ? (v4 = a2 == *(MEMORY[0x1E69BDDB0] + 8)) : (v4 = 0), v4))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v5 = 134218496;
      v6 = a1;
      v7 = 2048;
      v8 = a2;
      v9 = 2048;
      v10 = 0x3FF0000000000000;
      _os_log_fault_impl(&dword_1B3F73000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", &v5, 0x20u);
    }
  }
}

uint64_t PXPreferredContentSizeCategoryFromUITraitCollection(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = [a1 preferredContentSizeCategory];
  if ([v1 isEqualToString:*MEMORY[0x1E69DDC68]])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E69DDC88]])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E69DDC78]])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E69DDC70]])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E69DDC60]])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E69DDC58]])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E69DDC50]])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E69DDC40]])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E69DDC38]])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E69DDC30]])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E69DDC28]])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E69DDC20]])
  {
    v2 = 12;
  }

  else
  {
    if (([v1 isEqualToString:*MEMORY[0x1E69DDC90]] & 1) == 0)
    {
      v3 = PXAssertGetLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        v5 = 138412290;
        v6 = v1;
        _os_log_fault_impl(&dword_1B3F73000, v3, OS_LOG_TYPE_FAULT, "Unsupported content size category %@", &v5, 0xCu);
      }
    }

    v2 = 0;
  }

  return v2;
}

uint64_t PhotosMutableEnvironment.adoptEnvironmentValues(from:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 8))(&v8, ObjectType, a2);
  OUTLINED_FUNCTION_1_16();
  v5 = v4();
  PhotosEnvironmentValues.takeValues(from:)(&v8);

  return v5(v7, 0);
}

void PXExtendedTraitCollection.environmentValues.getter(void *a1@<X8>)
{
  v2 = sub_1B3F7A1BC();
  v3 = *&v2[OBJC_IVAR____TtCE18PhotosUIFoundationCSo25PXExtendedTraitCollectionP33_11A622553B918AB6354F60F0027C20BE18EnvironmentStorage_values];
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();

  *a1 = v3;
}

uint64_t (*sub_1B3F7A174(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  PXExtendedTraitCollection.environmentValues.getter(a1);
  return sub_1B3F7A608;
}

id sub_1B3F7A1BC()
{
  if ([v0 swift_environmentStorage])
  {
    sub_1B405DAF4();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  sub_1B3F77C10(v8, &v4);
  if (v5)
  {
    sub_1B3F791B4(v8);
    sub_1B3F7AC48(&v4, &v6);
    sub_1B3F7AC48(&v6, &v4);
    _s18EnvironmentStorageCMa();
    swift_dynamicCast();
    return v3;
  }

  else
  {
    sub_1B3F791B4(&v4);
    v1 = [objc_allocWithZone(_s18EnvironmentStorageCMa()) init];
    [v0 setSwift:v1 environmentStorage:?];
    sub_1B3F791B4(v8);
  }

  return v1;
}

id sub_1B3F7A300()
{
  *&v0[OBJC_IVAR____TtCE18PhotosUIFoundationCSo25PXExtendedTraitCollectionP33_11A622553B918AB6354F60F0027C20BE18EnvironmentStorage_values] = MEMORY[0x1E69E7CC8];
  v2.receiver = v0;
  v2.super_class = _s18EnvironmentStorageCMa();
  return objc_msgSendSuper2(&v2, sel_init);
}

Swift::Void __swiftcall PhotosEnvironmentValues.takeValues(from:)(PhotosUIFoundation::PhotosEnvironmentValues from)
{
  v2 = v1;
  v3 = *from.values._rawValue;
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v32 = v3;
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  v9 = 0;
  v33 = v8;
  v34 = v4;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_9:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = v11 | (v10 << 6);
      v13 = (*(v32 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      sub_1B3F87FBC(*(v32 + 56) + 32 * v12, v35);
      *&v36 = v15;
      *(&v36 + 1) = v14;
      sub_1B3F7AC48(v35, &v37);
      _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
LABEL_10:
      v39 = v36;
      v40[0] = v37;
      v40[1] = v38;
      v16 = *(&v36 + 1);
      if (!*(&v36 + 1))
      {
        break;
      }

      v17 = v39;
      sub_1B3F7AC48(v40, &v36);
      swift_isUniquelyReferenced_nonNull_native();
      *&v35[0] = *v2;
      v18 = *&v35[0];
      v19 = v2;
      *v2 = 0x8000000000000000;
      v20 = sub_1B3FA4614(v17, v16);
      if (__OFADD__(*(v18 + 16), (v21 & 1) == 0))
      {
        goto LABEL_24;
      }

      v22 = v20;
      v23 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BFF0);
      if (sub_1B405DD54())
      {
        v24 = sub_1B3FA4614(v17, v16);
        if ((v23 & 1) != (v25 & 1))
        {
          goto LABEL_26;
        }

        v22 = v24;
      }

      if (v23)
      {

        v26 = *&v35[0];
        v27 = (*(*&v35[0] + 56) + 32 * v22);
        __swift_destroy_boxed_opaque_existential_1(v27);
        sub_1B3F7AC48(&v36, v27);
      }

      else
      {
        v26 = *&v35[0];
        *(*&v35[0] + 8 * (v22 >> 6) + 64) |= 1 << v22;
        v28 = (v26[6] + 16 * v22);
        *v28 = v17;
        v28[1] = v16;
        sub_1B3F7AC48(&v36, (v26[7] + 32 * v22));
        v29 = v26[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_25;
        }

        v26[2] = v31;
      }

      v2 = v19;

      *v19 = v26;
      v8 = v33;
      v4 = v34;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
        v7 = 0;
        v37 = 0u;
        v38 = 0u;
        v36 = 0u;
        goto LABEL_10;
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        v9 = v10;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1B405E0B4();
    __break(1u);
  }
}

uint64_t sub_1B3F7A608(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_0_8();
    v2 = swift_allocObject();
    OUTLINED_FUNCTION_1_7(v2);
    _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
    OUTLINED_FUNCTION_0_8();
    v3 = swift_allocObject();
    OUTLINED_FUNCTION_1_7(v3);
    OUTLINED_FUNCTION_2_5();
  }
}

void OUTLINED_FUNCTION_2_5()
{

  PXObservable.performChanges(_:)(v0, v1);
}

__n128 OUTLINED_FUNCTION_2_9(uint64_t a1)
{
  v2 = *(v1 - 288);
  result = *(v1 - 272);
  *(a1 + 16) = result;
  *(a1 + 32) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_10()
{
}

uint64_t OUTLINED_FUNCTION_2_14()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_18()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_2_21(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_24(uint64_t a1, uint64_t a2)
{

  return sub_1B3FCB8B4(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_2_25(uint64_t a1)
{

  return sub_1B3F92F94(a1, v1);
}

uint64_t OUTLINED_FUNCTION_2_26()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_29()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_2_30()
{

  return swift_getWitnessTable();
}

void PXObservable.performChanges(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_1B3F7AC20;
  v7[5] = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1B3F7AB2C;
  v7[3] = &block_descriptor_6;
  v6 = _Block_copy(v7);

  [v2 performChanges_];
  _Block_release(v6);
}

uint64_t sub_1B3F7AA24()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B3F7AB2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5[3] = swift_getObjectType();
  v5[0] = a2;

  swift_unknownObjectRetain();
  v3(v5);

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

id sub_1B3F7ABA4(void *a1, uint64_t a2)
{
  v4 = sub_1B3F7A1BC();
  *&v4[OBJC_IVAR____TtCE18PhotosUIFoundationCSo25PXExtendedTraitCollectionP33_11A622553B918AB6354F60F0027C20BE18EnvironmentStorage_values] = a2;
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();

  return [a1 signalChange_];
}

_OWORD *sub_1B3F7AC48(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t storeEnumTagSinglePayload for PhotosVerticalTextSpecs(uint64_t result, int a2, int a3)
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

uint64_t objectdestroyTm()
{

  OUTLINED_FUNCTION_0_8();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t objectdestroyTm_0()
{
  OUTLINED_FUNCTION_0_25();
  v3 = *(v2 + 80);
  v4 = OUTLINED_FUNCTION_3_13();
  v5(v4);

  return MEMORY[0x1EEE6BDD0](v0, v1 + 8, v3 | 7);
}

uint64_t objectdestroyTm_1()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B3F7AE38()
{
  result = sub_1B405D064();
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

unint64_t sub_1B3F7B09C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1B3F7B12C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B3F7B12C()
{
  result = qword_1EB87B668[0];
  if (!qword_1EB87B668[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EB87B668);
  }

  return result;
}

uint64_t UserDefault.init(key:defaultValue:userDefaults:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for UserDefault();
  v13 = (a6 + *(v12 + 32));
  *v13 = a1;
  v13[1] = a2;
  result = (*(*(a5 - 8) + 32))(a6, a3, a5);
  *(a6 + *(v12 + 28)) = a4;
  return result;
}

uint64_t sub_1B3F7B22C()
{
  result = sub_1B405D064();
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

uint64_t UserDefault.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = sub_1B405DAC4();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v15 - v8;
  v10 = *(v2 + *(a1 + 28));
  v11 = sub_1B405D414();
  v12 = [v10 objectForKey_];

  if (v12)
  {
    sub_1B405DAF4();
    swift_unknownObjectRelease();
    sub_1B3F7AC48(v15, v16);
    sub_1B3F7AC48(v16, v15);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v5);
      return (*(*(v5 - 8) + 32))(a2, v9, v5);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v5);
      return (*(*(v5 - 8) + 16))(a2, v2, v5);
    }
  }

  else
  {
    v14 = *(*(v5 - 8) + 16);

    return v14(a2, v2, v5);
  }
}

uint64_t PXCanShowInternalUI()
{
  if (!PFOSVariantHasInternalUI())
  {
    return 0;
  }

  v0 = +[PXUserDefaults standardUserDefaults];
  v1 = [v0 internalUIDisabled] ^ 1;

  return v1;
}

void px_perform_on_main_runloop(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void px_perform_on_main_runloop(PXRunloopOrder, __strong dispatch_block_t _Nonnull)"}];
    [v13 handleFailureInFunction:v14 file:@"NSRunLoop+PhotosUIFoundation.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];
  }

  v4 = 1999999;
  if (a1 == 1)
  {
    goto LABEL_8;
  }

  if (a1 != 3)
  {
    if (a1 == 2)
    {
      v4 = 2000001;
    }

    else
    {
      v4 = 0;
    }

LABEL_8:
    v5 = [MEMORY[0x1E695DFD0] mainRunLoop];
    v6 = objc_opt_class();
    v7 = _Block_copy(v3);
    v16[0] = *MEMORY[0x1E695DA28];
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    [v5 performSelector:sel_perform_ target:v6 argument:v7 order:v4 modes:v8];

    goto LABEL_13;
  }

  context.version = 0;
  context.info = _Block_copy(v3);
  memset(&context.retain, 0, 24);
  v9 = CFRunLoopObserverCreate(0, 0x20uLL, 0, 2000002, __runLoopObserverTrampoline, &context);
  if (v9)
  {
    v10 = v9;
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddObserver(Current, v10, *MEMORY[0x1E695E8D0]);
    info = v10;
  }

  else
  {
    info = context.info;
  }

  CFRelease(info);
LABEL_13:
}

id PXObservable.observeChanges(using:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(type metadata accessor for PXObservableObservation());
  v6 = v2;

  return sub_1B3F7B9C4(v6, a1, a2);
}

id sub_1B3F7B9C4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  v7 = &v3[OBJC_IVAR____TtC18PhotosUIFoundationP33_FE80CC77509C779DD805C2A85B1B119023PXObservableObservation_changeHandler];
  *v7 = 0;
  v7[1] = 0;
  swift_unknownObjectWeakAssign();
  v8 = *v7;
  *v7 = a2;
  v7[1] = a3;

  sub_1B3F7BAA8(v8);
  v11.receiver = v3;
  v11.super_class = type metadata accessor for PXObservableObservation();
  v9 = objc_msgSendSuper2(&v11, sel_init);
  [a1 registerChangeObserver:v9 context:0];

  return v9;
}

uint64_t sub_1B3F7BAA8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id PhotosComposedObservable<>.observeChanges(using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 32))(&v11, a3, a4);
  v8 = v11;
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a1;
  v9[5] = a2;
  objc_allocWithZone(type metadata accessor for PXObservableObservation());

  return sub_1B3F7B9C4(v8, sub_1B3F7FC30, v9);
}

uint64_t sub_1B3F7BB84()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void *PhotosBasicItemList.init(items:loadingStatus:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *a2;
  Unique = PXDataSourceIdentifierMakeUnique();
  v3[2] = a1;
  v3[3] = Unique;
  *(v3 + 40) = v6;
  v14[5] = a1;
  v14[2] = *(v5 + 80);
  v14[3] = *(v5 + 88);
  v8 = sub_1B405D704();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1B3F7BDC8(sub_1B3F7CDA0, v14, v8, AssociatedTypeWitness, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);

  v3[4] = v12;
  return v3;
}

uint64_t sub_1B3F7BDC8(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a8;
  v48 = a1;
  v49 = a2;
  OUTLINED_FUNCTION_0_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_3_1();
  v50 = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_0();
  v52 = v15;
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v37 - v19;
  MEMORY[0x1EEE9AC00](v18, v21);
  OUTLINED_FUNCTION_3_1();
  v46 = v22;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_0();
  v40 = v24;
  v41 = v23;
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v37 - v26;
  v28 = sub_1B405D8C4();
  if (!v28)
  {
    return sub_1B405D644();
  }

  v51 = v28;
  v55 = sub_1B405DCE4();
  v42 = sub_1B405DCF4();
  sub_1B405DC94();
  result = sub_1B405D8B4();
  if ((v51 & 0x8000000000000000) == 0)
  {
    v37 = v11;
    v38 = a5;
    v30 = 0;
    v43 = (v52 + 16);
    v44 = v52 + 8;
    v45 = v8;
    while (!__OFADD__(v30, 1))
    {
      v52 = v30 + 1;
      v31 = sub_1B405D974();
      (*v43)(v20);
      v31(v54, 0);
      v32 = v53;
      v48(v20, v50);
      if (v32)
      {
        v35 = OUTLINED_FUNCTION_2_4();
        v36(v35);
        (*(v40 + 8))(v27, v41);

        return (*(v37 + 32))(v39, v50, v38);
      }

      v53 = 0;
      v33 = OUTLINED_FUNCTION_2_4();
      v34(v33);
      sub_1B405DCD4();
      result = sub_1B405D8E4();
      ++v30;
      if (v52 == v51)
      {
        (*(v40 + 8))(v27, v41);
        return v55;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_3_5(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 304);

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v4);
}

uint64_t OUTLINED_FUNCTION_3_7()
{

  return sub_1B405D464();
}

uint64_t OUTLINED_FUNCTION_3_9()
{

  return sub_1B405DD54();
}

uint64_t OUTLINED_FUNCTION_3_15()
{

  return type metadata accessor for SettingsConfig();
}

uint64_t OUTLINED_FUNCTION_3_18(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 2;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_3_19()
{

  JUMPOUT(0x1B8C6F500);
}

uint64_t OUTLINED_FUNCTION_3_22()
{

  return swift_dynamicCast();
}

void *PhotosBasicItemListManager.init(itemList:)(uint64_t a1)
{
  type metadata accessor for PhotosBasicItemList();
  v3 = sub_1B3F7C574();
  v9 = 2;
  v1[2] = PhotosBasicItemList.__allocating_init(items:loadingStatus:)(v3, &v9);
  type metadata accessor for PhotosItemListChangeDetailsRepository();
  OUTLINED_FUNCTION_0_8();
  swift_allocObject();
  v4 = PhotosItemListChangeDetailsRepository.init(countLimit:)(100);
  v1[4] = 0;
  v1[5] = 0;
  v1[3] = v4;
  v1[6] = [objc_allocWithZone(PXObservable) init];
  sub_1B405D054();
  OUTLINED_FUNCTION_0_8();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = type metadata accessor for PhotosBasicItemListManager();

  WitnessTable = swift_getWitnessTable();
  PhotosMutableComposedObservable<>.performChanges(using:)(sub_1B3F7C990, v5, v6, WitnessTable);

  return v1;
}

uint64_t sub_1B3F7C538()
{

  OUTLINED_FUNCTION_0_8();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t PhotosBasicItemList.__allocating_init(items:loadingStatus:)(uint64_t a1, char *a2)
{
  v4 = swift_allocObject();
  PhotosBasicItemList.init(items:loadingStatus:)(a1, a2);
  return v4;
}

uint64_t PhotosItemListChangeDetailsRepository.init(countLimit:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C668);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = a1;
  *(v1 + 24) = v3;
  return v1;
}

uint64_t sub_1B3F7C688(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_22();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B3F7C6D4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void PhotosMutableComposedObservable<>.performChanges(using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13, v14);
  (*(*(v15 + 8) + 32))(&v23, v16);
  v17 = v23;
  (*(v10 + 16))(&aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a3);
  v18 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a3;
  *(v19 + 3) = a4;
  *(v19 + 4) = a1;
  *(v19 + 5) = a2;
  (*(v10 + 32))(&v19[v18], &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  aBlock[4] = sub_1B3F7C924;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B3F7AB2C;
  aBlock[3] = &block_descriptor_11;
  v20 = _Block_copy(aBlock);

  [v17 performChanges_];
  _Block_release(v20);
}

id sub_1B3F7C8F0@<X0>(void *a1@<X8>)
{
  result = PhotosBasicItemListManager.observable.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B3F7C964@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B3F7CFD0();
  *a1 = result;
  return result;
}

uint64_t sub_1B3F7C9A0()
{
  swift_getKeyPath();
  sub_1B3F7CC28();

  return _s18PhotosUIFoundation0A20BasicItemListManagerC7MutatorC10observableqd__vg_0();
}

uint64_t sub_1B3F7CA14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B3F7C9A0();
  *a1 = result;
  return result;
}

__n128 sub_1B3F7CA48(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

id sub_1B3F7CB64(uint64_t a1)
{
  v3 = sub_1B3F7C9A0();

  if (v3 != a1)
  {
    v5 = *(v1 + 48);

    return [v5 signalChange_];
  }

  return result;
}

uint64_t sub_1B3F7CBD0(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;

  sub_1B3F7CB64(v2);
}

uint64_t sub_1B3F7CCFC(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B3F7CE54(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v11);
  v13 = &v15 - v12;
  (*(a6 + 24))(a5, a6);
  a2(v13);
  return (*(v10 + 8))(v13, AssociatedTypeWitness);
}

uint64_t sub_1B3F7CFD0()
{
  type metadata accessor for PhotosBasicItemListManager();
  type metadata accessor for PhotosBasicItemListManager.Mutator();
  v1 = sub_1B3F7DEA8(v0);

  return v1;
}

uint64_t sub_1B3F7D090(uint64_t a1)
{
  v2 = _s18PhotosUIFoundation0A20BasicItemListManagerC7MutatorC10observableqd__vg_0();

  v3 = type metadata accessor for PhotosBasicItemList();
  if (v2 == a1)
  {

    return sub_1B3F7CBD0(a1);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v3, v4);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v6);
    sub_1B3F7CA54();
  }
}

uint64_t PhotosBasicItemList.__deallocating_deinit()
{
  PhotosBasicItemList.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 41, 7);
}

uint64_t PhotosBasicItemList.deinit()
{

  return v0;
}

uint64_t PhotosBasicItemListManager.Mutator.__deallocating_deinit()
{
  PhotosBasicItemListManager.Mutator.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void PhotosConcatenatedItemListManager.init(mainItemListManager:prependItemListManager:appendItemListManager:waitForPrependAndMainToLoad:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = *v4;
  v10 = *(*v4 + 120);
  v118 = *(*v4 + 96);
  v119 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1B405DAC4();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  OUTLINED_FUNCTION_7_0(&v99 - v13);
  v15 = *(v9 + 80);
  v115 = *(v14 + 104);
  v103 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v103, v16);
  OUTLINED_FUNCTION_7_0(&v99 - v17);
  v19 = *(v18 + 112);
  v116 = *(v9 + 88);
  v117 = v19;
  v20 = swift_getAssociatedTypeWitness();
  v21 = sub_1B405DAC4();
  v109 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v99 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v112 = &v99 - v27;
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v99 - v29;
  v4[7] = MEMORY[0x1E69E7CC0];
  type metadata accessor for PhotosItemListChangeDetailsRepository();
  swift_allocObject();
  v4[8] = PhotosItemListChangeDetailsRepository.init(countLimit:)(100);
  v4[9] = [objc_allocWithZone(PXObservable) init];
  sub_1B405D054();
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  *(v4 + 48) = a4;
  v108 = a2;
  v100 = a4;
  v111 = v20;
  v107 = v30;
  v106 = v21;
  if (a4)
  {
    __swift_storeEnumTagSinglePayload(v30, 1, 1, v20);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
LABEL_6:
    swift_unknownObjectRetain();
    goto LABEL_7;
  }

  if (!a2)
  {
    v30 = v107;
    OUTLINED_FUNCTION_3_5(v107, 1);
    swift_unknownObjectRetain();
    goto LABEL_6;
  }

  v31 = v117;
  v32 = *(v117 + 40);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  v30 = v107;
  v32(v116, v31);
  v21 = v106;
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_3_5(v30, 0);
LABEL_7:
  v33 = *(v115 + 40);
  v110 = a1;
  v33(v15);
  (*(v109 + 16))(v112, v30, v21);
  v34 = v119;
  v35 = v114;
  v105 = a3;
  v102 = v4;
  if (a3)
  {
    v36 = *(v119 + 40);
    swift_unknownObjectRetain();
    v36(v118, v34);
    swift_unknownObjectRelease();
    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  v38 = v35;
  v39 = AssociatedTypeWitness;
  __swift_storeEnumTagSinglePayload(v38, v37, 1, AssociatedTypeWitness);
  v40 = v115;
  v41 = v103;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43 = v116;
  v44 = v117;
  v101 = v15;
  v45 = v111;
  v46 = swift_getAssociatedConformanceWitness();
  v47 = swift_getAssociatedConformanceWitness();
  v120 = v41;
  v121 = v45;
  v122 = v39;
  v123 = AssociatedConformanceWitness;
  v48 = v44;
  v124 = v46;
  v125 = v47;
  type metadata accessor for PhotosConcatenatedItemList();
  v102[2] = PhotosConcatenatedItemList.__allocating_init(mainItemList:prependItemList:appendItemList:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B406F250;
  v120 = v110;
  OUTLINED_FUNCTION_6_1();
  v50 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_5_3();
  v51 = swift_allocObject();
  v52 = v101;
  *&v53 = v101;
  *(&v53 + 1) = v43;
  *&v54 = v118;
  *(&v54 + 1) = v40;
  v113 = v54;
  *(v51 + 16) = v53;
  *(v51 + 32) = v54;
  v114 = v53;
  v55 = v119;
  *(v51 + 48) = v48;
  *(v51 + 56) = v55;
  *(v51 + 64) = v50;
  v56 = *(v40 + 16);
  v57 = *(v56 + 24);

  v58 = v57(sub_1B3F88960, v51, v52, v56);
  v60 = v59;

  *(inited + 32) = v58;
  *(inited + 40) = v60;
  v61 = v108;
  if (v108)
  {
    v120 = v108;
    OUTLINED_FUNCTION_6_1();
    v62 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_5_3();
    v63 = swift_allocObject();
    OUTLINED_FUNCTION_2_9(v63);
    v64 = v119;
    v65[6] = v48;
    v65[7] = v64;
    v65[8] = v62;
    v66 = *(v48 + 16);
    v67 = *(v66 + 24);
    swift_unknownObjectRetain();
    v68 = v67(sub_1B3F8895C, v60, v116, v66);
    v70 = v69;
    swift_unknownObjectRelease();
  }

  else
  {
    v68 = 0;
    v70 = 0;
  }

  v71 = v105;
  *(inited + 48) = v68;
  *(inited + 56) = v70;
  if (v71)
  {
    v120 = v71;
    OUTLINED_FUNCTION_6_1();
    v72 = swift_allocObject();
    swift_weakInit();
    swift_unknownObjectRetain();

    OUTLINED_FUNCTION_5_3();
    v73 = swift_allocObject();
    v74 = OUTLINED_FUNCTION_2_9(v73);
    v75 = v118;
    v76 = v119;
    v77[6] = v117;
    v77[7] = v76;
    v77[8] = v72;
    v78 = (*(*(v76 + 16) + 24))(sub_1B3F88960, v60, v75, v74);
    v80 = v79;
    swift_unknownObjectRelease();
  }

  else
  {

    v78 = 0;
    v80 = 0;
  }

  v81 = 0;
  *(inited + 64) = v78;
  *(inited + 72) = v80;
  v82 = MEMORY[0x1E69E7CC0];
LABEL_17:
  v83 = v81 - 1;
  v84 = (inited + 32 + 16 * v81);
  while (v83 != 2)
  {
    if (++v83 > 2)
    {
      __break(1u);
      return;
    }

    v85 = v84 + 2;
    v86 = *v84;
    v84 += 2;
    if (v86)
    {
      v87 = *(v85 - 1);
      swift_unknownObjectRetain();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B3F7ED5C();
        v82 = v90;
      }

      v88 = *(v82 + 16);
      if (v88 >= *(v82 + 24) >> 1)
      {
        sub_1B3F7ED5C();
        v82 = v91;
      }

      v81 = v83 + 1;
      *(v82 + 16) = v88 + 1;
      v89 = v82 + 16 * v88;
      *(v89 + 32) = v86;
      *(v89 + 40) = v87;
      v61 = v108;
      goto LABEL_17;
    }
  }

  swift_setDeallocating();
  sub_1B3F7EEBC(&qword_1EB87BEF8);
  sub_1B3F7EF0C();
  if (v100)
  {
    v92 = v106;
    if (v61)
    {
      v93 = v117;
      v94 = *(v117 + 40);
      swift_unknownObjectRetain();
      v95 = v99;
      v94(v116, v93);
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_3_5(v95, 0);
      v96 = *(v109 + 8);
      v96(v95, v92);
      sub_1B3F889E4();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v96(v107, v92);
    }

    else
    {
      v97 = *(v109 + 8);
      v97(v107, v106);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v98 = v99;
      OUTLINED_FUNCTION_3_5(v99, 1);
      v97(v98, v92);
    }
  }

  else
  {
    (*(v109 + 8))(v107, v106);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1B3F7DD0C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_6_1();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B3F7DD40()
{

  OUTLINED_FUNCTION_5_3();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B3F7DD7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B3F7C9A0();
  *a1 = result;
  return result;
}

uint64_t PhotosConcatenatedItemListManager.__allocating_init(mainItemListManager:prependItemListManager:appendItemListManager:waitForPrependAndMainToLoad:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = swift_allocObject();
  PhotosConcatenatedItemListManager.init(mainItemListManager:prependItemListManager:appendItemListManager:waitForPrependAndMainToLoad:)(a1, a2, a3, a4);
  return v8;
}

uint64_t PXCATransactionShouldLoadContentImmediately()
{
  v0 = [MEMORY[0x1E6979518] valueForKey:@"com.apple.PhotosUIFoundation.loadContentEagerly"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v1 = [v0 BOOLValue];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t sub_1B3F7DEA8(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1B3F7E00C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1B405DAC4();
    if (v2 <= 0x3F)
    {
      result = sub_1B405DAC4();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t PhotosConcatenatedItemList.__allocating_init(mainItemList:prependItemList:appendItemList:)()
{
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_30();
  PhotosConcatenatedItemList.init(mainItemList:prependItemList:appendItemList:)();
  return v0;
}

void PhotosConcatenatedItemList.init(mainItemList:prependItemList:appendItemList:)()
{
  OUTLINED_FUNCTION_14_0();
  v39 = v1;
  v3 = v2;
  v5 = v4;
  v6 = *v0;
  v33 = *v0;
  v37 = *(*v0 + 96);
  v41 = sub_1B405DAC4();
  OUTLINED_FUNCTION_0_12();
  v8 = v7;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_7_1();
  v35 = v11;
  OUTLINED_FUNCTION_11_0();
  v13 = *(v12 + 88);
  OUTLINED_FUNCTION_23();
  v14 = sub_1B405DAC4();
  OUTLINED_FUNCTION_0_12();
  v16 = v15;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_17();
  v19 = *(v6 + 152);
  *(v0 + v19) = PXDataSourceIdentifierMakeUnique();
  OUTLINED_FUNCTION_10_0();
  v36 = *(*(v6 + 80) - 8);
  v40 = v5;
  v21 = v5;
  v22 = *(v6 + 80);
  (*(v36 + 16))(v0 + *(v20 + 128), v21, v22);
  OUTLINED_FUNCTION_10_0();
  v24 = *(v16 + 16);
  v24(v0 + *(v23 + 136), v3, v14);
  OUTLINED_FUNCTION_10_0();
  v34 = *(v8 + 16);
  v34(v0 + *(v25 + 144), v39, v41);
  v38 = v14;
  v24(v0, v3, v14);
  OUTLINED_FUNCTION_24(v0, 1, v13);
  if (v26)
  {
    (*(v16 + 8))(v0, v14);
    v28 = v33;
    v29 = *(v33 + 104);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    sub_1B405D644();
  }

  else
  {
    (*(*(v33 + 112) + 48))(v13);
    OUTLINED_FUNCTION_15();
    (*(v27 + 8))(v0, v13);
    v28 = v33;
    v29 = *(v33 + 104);
  }

  (*(v29 + 48))(v22, v29);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1B405D634();

  v34(v35, v39, v41);
  OUTLINED_FUNCTION_24(v35, 1, v37);
  if (v26)
  {
    (*(v8 + 8))(v35, v41);
    sub_1B405D644();
  }

  else
  {
    (*(*(v28 + 120) + 48))(v37);
    OUTLINED_FUNCTION_15();
    (*(v30 + 8))(v35, v37);
  }

  v31 = sub_1B405D634();

  (*(v8 + 8))(v39, v41);
  (*(v16 + 8))(v3, v38);
  (*(v36 + 8))(v40, v22);
  OUTLINED_FUNCTION_10_0();
  *(v0 + *(v32 + 160)) = v31;
  OUTLINED_FUNCTION_13();
}

uint64_t OUTLINED_FUNCTION_23_0()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_11_4()
{

  return sub_1B405DEC4();
}

unint64_t OUTLINED_FUNCTION_24_0(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *v5 = a1;

  return sub_1B3F95078(v7, v6, va);
}

uint64_t OUTLINED_FUNCTION_13_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_13_1(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2080;

  return sub_1B405DBE4();
}

unint64_t OUTLINED_FUNCTION_5_2(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v4 = a1;

  return sub_1B3F95078(v3, v2, va);
}

uint64_t OUTLINED_FUNCTION_5_7()
{
}

uint64_t OUTLINED_FUNCTION_5_8()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_5_9()
{

  return _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
}

void OUTLINED_FUNCTION_4_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, os_log_t log)
{

  _os_log_impl(a1, log, v9, a4, v10, 0xCu);
}

uint64_t OUTLINED_FUNCTION_4_8()
{

  return sub_1B3FC67B4(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_4_9()
{

  return sub_1B405DBC4();
}

uint64_t OUTLINED_FUNCTION_4_14()
{

  return type metadata accessor for PhotosBasicItemListManager();
}

id sub_1B3F7ED04()
{
  OUTLINED_FUNCTION_4_14();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_3_23();
  return PhotosComposedObservable<>.observeChanges(using:)(v0, v1, v2, v3);
}

void sub_1B3F7ED5C()
{
  OUTLINED_FUNCTION_11();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_0(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_6();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BE68);
      v6 = OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_8_0(v6);
      OUTLINED_FUNCTION_6(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_5_1();
        sub_1B3F7EE9C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BE70);
    OUTLINED_FUNCTION_10();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_9();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_3();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_12_0(uint64_t a1)
{
  *(v4 - 120) = v3;
  *(v4 - 112) = v2;
  *(v4 - 104) = v1;
  *(v4 - 96) = a1;
  return type metadata accessor for PhotosConcatenatedItem();
}

char *sub_1B3F7EE9C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_35(a3, result);
  }

  return result;
}

uint64_t sub_1B3F7EEBC(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v1, 32, 7);
}

uint64_t sub_1B3F7EF0C()
{
  swift_getKeyPath();
  sub_1B3F7F0A4();
}

__n128 sub_1B3F7EFCC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_1B3F7EFE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B3F9B70C();
  *a1 = result;
  return result;
}

uint64_t sub_1B3F7F018(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t PhotosConcatenatedItemListManager.itemList.getter()
{
  OUTLINED_FUNCTION_4_2();
  swift_getKeyPath();
  sub_1B3F7F2AC();
}

uint64_t sub_1B3F7F0A4()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_1_11();
  swift_getWitnessTable();
  return sub_1B405D034();
}

uint64_t sub_1B3F7F170(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = a2;
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
}

id sub_1B3F7F1AC()
{
  OUTLINED_FUNCTION_2_32();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_1_36();
  return PhotosComposedObservable<>.observeChanges(using:)(v0, v1, v2, v3);
}

uint64_t sub_1B3F7F200(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_1B3F7F23C@<X0>(void *a1@<X8>)
{
  result = PhotosConcatenatedItemListManager.observable.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B3F7F270@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosConcatenatedItemListManager.itemList.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B3F7F2AC()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_1_11();
  swift_getWitnessTable();
  return sub_1B405D044();
}

void PhotosConcatenatedItemList.loadingStatus.getter()
{
  OUTLINED_FUNCTION_14_0();
  v2 = v0;
  v49 = v3;
  v4 = *v0;
  OUTLINED_FUNCTION_29();
  v46 = v5;
  v6 = *(v4 + 96);
  OUTLINED_FUNCTION_23();
  sub_1B405DAC4();
  OUTLINED_FUNCTION_0_12();
  v47 = v8;
  v48 = v7;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v43 - v11;
  OUTLINED_FUNCTION_0_0();
  v45 = v13;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_7_1();
  v44 = v16;
  OUTLINED_FUNCTION_29();
  v18 = *(v17 + 88);
  v19 = sub_1B405DAC4();
  OUTLINED_FUNCTION_0_12();
  v21 = v20;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v43 - v24;
  OUTLINED_FUNCTION_0_0();
  v27 = v26;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  v31(&v52, *(v30 + 80));
  (*(v21 + 16))(v25, &v2[*(*v2 + 136)], v19);
  OUTLINED_FUNCTION_24(v25, 1, v18);
  if (v32)
  {
    (*(v21 + 8))(v25, v19);
    v33 = v46;
  }

  else
  {
    (*(v27 + 32))(v1, v25, v18);
    v34 = v52;
    v35 = v46;
    (*(*(v46 + 112) + 112))(&v50, v18);
    (*(v27 + 8))(v1, v18);
    v36 = v50;
    if (v50 >= v34)
    {
      v36 = v34;
    }

    v52 = v36;
    v33 = v35;
  }

  v38 = v47;
  v37 = v48;
  (*(v47 + 16))(v12, &v2[*(*v2 + 144)], v48);
  OUTLINED_FUNCTION_24(v12, 1, v6);
  if (v32)
  {
    (*(v38 + 8))(v12, v37);
    v39 = v52;
  }

  else
  {
    (*(v45 + 32))(v44, v12, v6);
    v40 = v52;
    (*(*(v33 + 120) + 112))(&v51, v6);
    v41 = OUTLINED_FUNCTION_26();
    v42(v41);
    v39 = v51;
    if (v51 >= v40)
    {
      v39 = v40;
    }
  }

  *v49 = v39;
  OUTLINED_FUNCTION_13();
}

uint64_t sub_1B3F7F7E4@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosItemListLoadingStatus.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t PhotosConcatenatedItemList.numberOfItems.getter()
{
  OUTLINED_FUNCTION_27();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();

  return sub_1B405D684();
}

uint64_t sub_1B3F7FBAC(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC18PhotosUIFoundationP33_FE80CC77509C779DD805C2A85B1B119023PXObservableObservation_changeHandler);
  if (v3)
  {
    v5 = result;

    v3(v5, a2);

    return sub_1B3F7BAA8(v3);
  }

  return result;
}

uint64_t sub_1B3F7FC3C(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v7);
  v9 = v11 - v8;
  v11[1] = a2;
  swift_getAssociatedConformanceWitness();
  sub_1B405E1E4();
  a3(v9);
  return (*(v6 + 8))(v9, AssociatedTypeWitness);
}

uint64_t sub_1B3F7FD84()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock(v1 + 6);
  sub_1B3F7FEFC(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_1B3F7FDE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  sub_1B3F7FF18(a2);
  v6 = *(*a1 + 16);
  v7 = *(a3 + 16);
  result = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
  }

  else if (result >= 1)
  {
    return sub_1B3FC95A8(result);
  }

  return result;
}

uint64_t sub_1B3F7FE78()
{
  v1 = *(v0 + 16);

  sub_1B3F7FD84();

  v2 = *(*v1 + 168);

  return v2(v3);
}

void sub_1B3F7FF18(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (__OFADD__(*(*v1 + 16), v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1B3F7FFDC();
  v4 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v4 + 24) >> 1) - *(v4 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v4;
    return;
  }

  v5 = *(v4 + 16);
  v6 = __OFADD__(v5, v3);
  v7 = v5 + v3;
  if (!v6)
  {
    *(v4 + 16) = v7;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1B3F7FFDC()
{
  OUTLINED_FUNCTION_1_28();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v0;
  if (!isUniquelyReferenced_nonNull_native || v2 > *(v0 + 24) >> 1)
  {
    sub_1B3F80038();
    *v1 = v4;
  }
}

void sub_1B3F80038()
{
  OUTLINED_FUNCTION_11();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_4_0(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_6();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BE60);
      v7 = swift_allocObject();
      OUTLINED_FUNCTION_8_0(v7);
      *(v3 + 16) = v2;
      *(v3 + 24) = 2 * (v8 / 24);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_5_1();
        sub_1B3F8BAE4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_10();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_9();
  if (!v5)
  {
    OUTLINED_FUNCTION_3_3();
    goto LABEL_6;
  }

  __break(1u);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

BOOL PXEdgeInsetsEqualToEdgeInsetsForEdges(char a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  if ((a1 & 1) == 0)
  {
    a2 = 0.0;
    a6 = 0.0;
  }

  if ((a1 & 2) == 0)
  {
    a3 = 0.0;
    a7 = 0.0;
  }

  if ((a1 & 8) == 0)
  {
    a5 = 0.0;
    a9 = 0.0;
  }

  if (a3 != a7 || a2 != a6 || a5 != a9)
  {
    return 0;
  }

  if ((a1 & 4) != 0)
  {
    v12 = a8;
  }

  else
  {
    v12 = 0.0;
  }

  if ((a1 & 4) != 0)
  {
    v13 = a4;
  }

  else
  {
    v13 = 0.0;
  }

  return v13 == v12;
}

id PXUIApplicationGetFirstKeyWindow(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  [a1 connectedScenes];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v1 = v25 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v23;
    v17 = v1;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v23 != v4)
      {
        objc_enumerationMutation(v1);
      }

      v6 = *(*(&v22 + 1) + 8 * v5);
      if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v7 = v6;

        if (!v7 || [v7 activationState] == -1)
        {
          goto LABEL_21;
        }

        v8 = [v7 windows];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v6 = v8;
        v9 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v19;
LABEL_12:
          v12 = 0;
          while (1)
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(v6);
            }

            v13 = *(*(&v18 + 1) + 8 * v12);
            if ([v13 isKeyWindow])
            {
              break;
            }

            if (v10 == ++v12)
            {
              v10 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
              if (v10)
              {
                goto LABEL_12;
              }

              goto LABEL_18;
            }
          }

          v14 = v13;

          if (!v14)
          {
            v1 = v17;
            goto LABEL_21;
          }

          v1 = v17;
          goto LABEL_28;
        }

LABEL_18:

        v1 = v17;
      }

      else
      {
        v7 = 0;
      }

LABEL_21:
      if (++v5 == v3)
      {
        v15 = [v1 countByEnumeratingWithState:&v22 objects:v27 count:16];
        v3 = v15;
        if (v15)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v14 = 0;
LABEL_28:

  return v14;
}

void px_dispatch_on_main_queue_when_idle_after_delay(void *a1, double a2)
{
  v3 = a1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __px_dispatch_on_main_queue_when_idle_after_delay_block_invoke;
  v5[3] = &unk_1E7BB88F8;
  v7 = a2;
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t _IndexOfReferenceValueForMetricWithOptions(void *a1, uint64_t a2, double a3)
{
  v5 = MEMORY[0x1E696B098];
  v6 = a1;
  v7 = [v5 valueWithCGPoint:{a3, 0.0}];
  v8 = [v6 indexOfObject:v7 inSortedRange:0 options:objc_msgSend(v6 usingComparator:{"count"), a2, &__block_literal_global_129}];

  return v8;
}

void PhotosEnvironmentValues.subscript.getter(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1B405DAC4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v16 - v11;
  *&v16[0] = *v3;
  v13 = *&v16[0];
  v14 = sub_1B3F81458();
  sub_1B3F8148C(v14, v15, v13, v16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C120);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v12, 0, 1, AssociatedTypeWitness);
    (*(*(AssociatedTypeWitness - 8) + 32))(a3, v12, AssociatedTypeWitness);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, AssociatedTypeWitness);
    (*(a2 + 16))(a1, a2);
    if (__swift_getEnumTagSinglePayload(v12, 1, AssociatedTypeWitness) != 1)
    {
      (*(v9 + 8))(v12, v8);
    }
  }

  OUTLINED_FUNCTION_13();
}

double sub_1B3F8148C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1B3FA4614(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1B3F87FBC(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

void sub_1B3F82814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B3F82B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PXChangeDetailsCoalescerGetLog()
{
  if (PXChangeDetailsCoalescerGetLog_predicate != -1)
  {
    dispatch_once(&PXChangeDetailsCoalescerGetLog_predicate, &__block_literal_global_11522);
  }

  v1 = PXChangeDetailsCoalescerGetLog_log;

  return v1;
}

uint64_t __PXChangeDetailsCoalescerGetLog_block_invoke()
{
  PXChangeDetailsCoalescerGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "PXSectionedChangeDetailsCoalescer");

  return MEMORY[0x1EEE66BB8]();
}

id PXPhotosUIFoundationBundle()
{
  if (PXPhotosUIFoundationBundle_onceToken != -1)
  {
    dispatch_once(&PXPhotosUIFoundationBundle_onceToken, &__block_literal_global_4629);
  }

  v1 = PXPhotosUIFoundationBundle_frameworkBundle;

  return v1;
}

uint64_t __PXPhotosUIFoundationBundle_block_invoke()
{
  PXPhotosUIFoundationBundle_frameworkBundle = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

  return MEMORY[0x1EEE66BB8]();
}

id _PXFontWithTextStyleSymbolicTraits(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = UIFontTextStyleFromPXFontTextStyle(a1);
  v6 = UIContentSizeCategoryFromPXPreferredContentSizeCategory(a3);
  v7 = UserPreferredContentSizeCategory();
  v8 = v7;
  if (v6 == *MEMORY[0x1E69DDC90] || UIContentSizeCategoryCompareToCategory(v7, v6) != NSOrderedDescending)
  {
    v11 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v5 addingSymbolicTraits:a2 options:0];
  }

  else
  {
    v9 = MEMORY[0x1E69DB880];
    v10 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v6];
    v11 = [v9 preferredFontDescriptorWithTextStyle:v5 compatibleWithTraitCollection:v10];

    if (a2)
    {
      v12 = [v11 fontDescriptorWithSymbolicTraits:{objc_msgSend(v11, "symbolicTraits") | a2}];

      v11 = v12;
    }
  }

  v13 = [MEMORY[0x1E69DB878] fontWithDescriptor:v11 size:0.0];

  return v13;
}

__CFString *UIFontTextStyleFromPXFontTextStyle(uint64_t a1)
{
  if (a1)
  {

    return _PXFontTextStyleString(a1);
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIFontTextStyle  _Nonnull UIFontTextStyleFromPXFontTextStyle(PXFontTextStyle)"];
    [v3 handleFailureInFunction:v4 file:@"PXFont.m" lineNumber:172 description:@"Invalid text style"];

    return @"Undefined";
  }
}

__CFString *_PXFontTextStyleString(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      v1 = @"Undefined";
      break;
    case 1:
      v2 = MEMORY[0x1E69DDD58];
      goto LABEL_16;
    case 2:
      v2 = MEMORY[0x1E69DDDB8];
      goto LABEL_16;
    case 3:
      v2 = MEMORY[0x1E69DDDC0];
      goto LABEL_16;
    case 4:
      v2 = MEMORY[0x1E69DDDC8];
      goto LABEL_16;
    case 5:
      v2 = MEMORY[0x1E69DDD40];
      goto LABEL_16;
    case 6:
      v2 = MEMORY[0x1E69DDD78];
      goto LABEL_16;
    case 7:
      v2 = MEMORY[0x1E69DDD80];
      goto LABEL_16;
    case 8:
      v2 = MEMORY[0x1E69DDCF8];
      goto LABEL_16;
    case 9:
      v2 = MEMORY[0x1E69DDD00];
      goto LABEL_16;
    case 10:
      v2 = MEMORY[0x1E69DDD28];
      goto LABEL_16;
    case 11:
      v2 = MEMORY[0x1E69DDD08];
      goto LABEL_16;
    case 12:
      v2 = MEMORY[0x1E69DDD10];
LABEL_16:
      v1 = *v2;
      break;
    default:
      v1 = 0;
      break;
  }

  return v1;
}

id UserPreferredContentSizeCategory()
{
  if (*MEMORY[0x1E69DDA98])
  {
    v0 = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  }

  else
  {
    v1 = [MEMORY[0x1E69DCEB0] px_mainScreen];
    v2 = [v1 traitCollection];
    v0 = [v2 preferredContentSizeCategory];
  }

  return v0;
}

id UIContentSizeCategoryFromPXPreferredContentSizeCategory(unint64_t a1)
{
  if (a1 > 0xC)
  {
    v2 = 0;
  }

  else
  {
    v2 = **(&unk_1E7BB6DD0 + a1);
  }

  return v2;
}

double PXScaledValueForTextStyleWithMaxContentSizeCategoryAndSymbolicTraits(uint64_t a1, unint64_t a2, uint64_t a3, double a4)
{
  if (PXScaledValueForTextStyleWithMaxContentSizeCategoryAndSymbolicTraits_onceToken != -1)
  {
    dispatch_once(&PXScaledValueForTextStyleWithMaxContentSizeCategoryAndSymbolicTraits_onceToken, &__block_literal_global_10623);
  }

  v8 = UserPreferredContentSizeCategory();
  v9 = UIContentSizeCategoryFromPXPreferredContentSizeCategory(a2);
  if (v9 != *MEMORY[0x1E69DDC90] && UIContentSizeCategoryCompareToCategory(v8, v9) == NSOrderedDescending)
  {
    v10 = v9;

    v8 = v10;
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PXFontScaledValue-%@-%.3f-%ld-%d", v8, *&a4, a1, a3];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __PXScaledValueForTextStyleWithMaxContentSizeCategoryAndSymbolicTraits_block_invoke_2;
  v16[3] = &__block_descriptor_60_e15___NSNumber_8__0l;
  v17 = a3;
  v16[4] = a1;
  v16[5] = a2;
  *&v16[6] = a4;
  v12 = [PXScaledValueForTextStyleWithMaxContentSizeCategoryAndSymbolicTraits_cache px_objectForKey:v11 usingPromise:v16];
  [v12 doubleValue];
  v14 = v13;

  return v14;
}

uint64_t __PXScaledValueForTextStyleWithMaxContentSizeCategoryAndSymbolicTraits_block_invoke()
{
  PXScaledValueForTextStyleWithMaxContentSizeCategoryAndSymbolicTraits_cache = objc_alloc_init(MEMORY[0x1E695DEE0]);

  return MEMORY[0x1EEE66BB8]();
}

id __PXScaledValueForTextStyleWithMaxContentSizeCategoryAndSymbolicTraits_block_invoke_2(uint64_t a1)
{
  v2 = _PXFontWithTextStyleSymbolicTraits(*(a1 + 32), *(a1 + 56), *(a1 + 40));
  v3 = MEMORY[0x1E696AD98];
  [v2 _scaledValueForValue:*(a1 + 48)];
  v4 = [v3 numberWithDouble:?];

  return v4;
}

uint64_t PXDisplayLinkDefaultPreferredFramesPerSecond()
{
  v0 = [MEMORY[0x1E69DCEB0] px_mainScreen];
  v1 = [v0 maximumFramesPerSecond];

  return v1;
}

float PXFrameRateRangeTypeGetCAFrameRateRange(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (a1 != 1)
    {
      return *MEMORY[0x1E69792B8];
    }

    v3 = 1111490560;
LABEL_10:
    v1 = *&v3;
    v2 = 120.0;
    goto LABEL_11;
  }

  if (a1 == 2)
  {
    v3 = 1114636288;
    goto LABEL_10;
  }

  if (a1 == 3)
  {
    v1 = 80.0;
    v2 = 120.0;
    v5 = 120.0;
    goto LABEL_13;
  }

  if (a1 != 4)
  {
    return *MEMORY[0x1E69792B8];
  }

  v1 = 15.0;
  v2 = 15.0;
LABEL_11:
  v5 = 0.0;
LABEL_13:
  LODWORD(result) = CAFrameRateRangeMake(v1, v2, v5);
  return result;
}

id PXGetRootViewController(void *a1)
{
  v1 = a1;
  v2 = [v1 parentViewController];
  v3 = v1;
  if (v2)
  {
    v4 = v1;
    do
    {
      v3 = v2;

      v2 = [v3 parentViewController];
      v4 = v3;
    }

    while (v2);
  }

  return v3;
}

CGImageRef PXCreateCGImageWithDrawBlock(char a1, uint64_t a2, void *a3, double a4, double a5)
{
  v9 = a3;
  v10 = PXCreateContextWithAutomaticFormat(a1, a2, a4, a5);
  v9[2](v9, v10, 0.0, 0.0, a4, a5);

  Image = CGBitmapContextCreateImage(v10);
  CGContextRelease(v10);
  return Image;
}

CGContext *PXCreateContextWithAutomaticFormat(char a1, uint64_t a2, double a3, double a4)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v6 = round(a3);
  v7 = round(a4);
  v8 = 1.0 - v6;
  if (1.0 - v7 > 0.00000011920929 || v8 > 0.00000011920929)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGContextRef  _Nonnull PXCreateContextWithAutomaticFormat(CGSize, BOOL, PXGColorFormatRange)"}];
    [v16 handleFailureInFunction:v17 file:@"CGImage+PhotosUIFoundation.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"!PXPixelSizeAreaIsZero(roundedSize)"}];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __PXCreateContextWithAutomaticFormat_block_invoke;
  aBlock[3] = &__block_descriptor_33_e93_B36__0_CGBitmapContextContentInfo_IiIBBf_8__CGBitmapContextInfo_IQQQQiII__CGColorSpace_BIf_28l;
  v19 = a1;
  v10 = _Block_copy(aBlock);
  if (a2 == 1)
  {
    v11 = 5;
  }

  else
  {
    v11 = 1;
  }

  v20 = *MEMORY[0x1E695F080];
  v12 = [MEMORY[0x1E696AD98] numberWithInt:v11];
  v21[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];

  v14 = CGBitmapContextCreateWithCallbacks();
  v22.size.width = v6;
  v22.size.height = v7;
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  CGContextClearRect(v14, v22);

  return v14;
}

uint64_t __PXCreateContextWithAutomaticFormat_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32) != 1)
  {
    return 1;
  }

  if (*(a2 + 13) != 1)
  {
    return 1;
  }

  v3 = *(a3 + 44) - 2;
  if (v3 > 2)
  {
    return 1;
  }

  result = 0;
  *(a3 + 44) = dword_1B4074F80[v3];
  *(a3 + 64) = 0;
  return result;
}

uint64_t PXUserInterfaceStyleFromUITraitCollection(void *a1)
{
  result = [a1 userInterfaceStyle];
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

uint64_t PXUserInterfaceLayoutDirectionFromUITraitCollection(void *a1)
{
  v1 = [a1 layoutDirection];
  if (v1)
  {
    return 2 * (v1 == 1);
  }

  else
  {
    return 1;
  }
}

id PXMap(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && (v5 = [v3 performSelector:sel_count]) != 0)
    {
      v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:v5];
    }

    else
    {
      v6 = [MEMORY[0x1E695DF70] array];
    }

    v7 = v6;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v3;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = v4[2](v4, *(*(&v15 + 1) + 8 * i));
          if (v13)
          {
            [v7 addObject:{v13, v15}];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id PXFilter(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if (v4[2](v4, v11))
          {
            [v5 addObject:{v11, v13}];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1B3F851FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id px_dispatch_queue_create_serial(const char *a1, dispatch_qos_class_t a2)
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = px_dispatch_queue_create_with_priority(a1, v4, a2, 0);

  return v5;
}

dispatch_queue_t px_dispatch_queue_create_with_priority(const char *a1, dispatch_queue_attr_t attr, dispatch_qos_class_t qos_class, int relative_priority)
{
  v5 = dispatch_queue_attr_make_with_qos_class(attr, qos_class, relative_priority);
  v6 = dispatch_queue_create(a1, v5);

  return v6;
}

id PFAssetsDataSourceCountsGetLog()
{
  if (PFAssetsDataSourceCountsGetLog_predicate != -1)
  {
    dispatch_once(&PFAssetsDataSourceCountsGetLog_predicate, &__block_literal_global_1119);
  }

  v1 = PFAssetsDataSourceCountsGetLog_log;

  return v1;
}

uint64_t __PFAssetsDataSourceCountsGetLog_block_invoke()
{
  PFAssetsDataSourceCountsGetLog_log = os_log_create(*MEMORY[0x1E69BDDA0], "AssetsDataSourceCounts");

  return MEMORY[0x1EEE66BB8]();
}

BOOL PXScrollViewIsScrollableAlongAxis(void *a1, uint64_t a2)
{
  v3 = a1;
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  rect = v10;
  [v3 contentSize];
  v25 = v11;
  v13 = v12;
  [v3 adjustedContentInset];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  if (a2 == 1)
  {
    v28.origin.x = v5;
    v28.origin.y = v7;
    v28.size.width = v9;
    v28.size.height = rect;
    Height = CGRectGetHeight(v28);
    v23 = v19 + v13 + v15;
    return Height < v23;
  }

  if (a2 == 2)
  {
    v27.origin.x = v5;
    v27.origin.y = v7;
    v27.size.width = v9;
    v27.size.height = rect;
    Height = CGRectGetWidth(v27);
    v23 = v21 + v25 + v17;
    return Height < v23;
  }

  return 0;
}

double PXTimebaseConversionFactor()
{
  if (PXTimebaseConversionFactor_onceToken[0] != -1)
  {
    dispatch_once(PXTimebaseConversionFactor_onceToken, &__block_literal_global_9873);
  }

  return *&PXTimebaseConversionFactor_timebaseConversion;
}

double __PXTimebaseConversionFactor_block_invoke()
{
  info = 0;
  mach_timebase_info(&info);
  result = ((info.numer * 0.000000001) / info.denom);
  *&PXTimebaseConversionFactor_timebaseConversion = result;
  return result;
}

_PXWrappingDisplayAssetFetchResult *PXDisplayAssetFetchResultSubfetchResultWithRange(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = [v5 count];
  if (a2 || v6 != a3)
  {
    v7 = [[_PXWrappingDisplayAssetFetchResult alloc] initWithFetchResult:v5 range:a2, a3];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v8;
}

double px_dispatch_queue_wait(void *a1, double a2)
{
  v2 = 0.0;
  if (a2 > 0.0)
  {
    v4 = a1;
    v5 = mach_absolute_time();
    v6 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, &__block_literal_global_17487);
    dispatch_async(v4, v6);

    v7 = dispatch_time(0, (a2 * 1000000000.0));
    dispatch_block_wait(v6, v7);
    v8 = (mach_absolute_time() - v5);
    if (PXTimebaseConversionFactor_onceToken[0] != -1)
    {
      dispatch_once(PXTimebaseConversionFactor_onceToken, &__block_literal_global_9873);
    }

    v2 = *&PXTimebaseConversionFactor_timebaseConversion * v8;
  }

  return v2;
}

id PXLocalizedVideoDuration(void *a1, double a2)
{
  v3 = a1;
  if (!v3)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB70]);
  }

  v4 = round(a2);
  if (v4 >= 0.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = -v4;
  }

  v6 = [v3 allowedUnits];
  v7 = [v3 zeroFormattingBehavior];
  v8 = [v3 unitsStyle];
  if (fabs(v4) < 3600.0)
  {
    v9 = 192;
  }

  else
  {
    v9 = 224;
  }

  [v3 setAllowedUnits:v9];
  [v3 setZeroFormattingBehavior:0];
  [v3 setUnitsStyle:0];
  v10 = [v3 stringFromTimeInterval:v5];
  if (v4 < 0.0)
  {
    v11 = [@"-" stringByAppendingString:v10];

    v10 = v11;
  }

  [v3 setAllowedUnits:v6];
  [v3 setZeroFormattingBehavior:v7];
  [v3 setUnitsStyle:v8];

  return v10;
}

id PXAttributedStringForBadgeText(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  if (PXAttributedStringForBadgeText_onceToken == -1)
  {
    if (!a3)
    {
LABEL_6:
      [PXAttributedStringForBadgeText_paragraphStyle setAlignment:a2];
      goto LABEL_7;
    }
  }

  else
  {
    dispatch_once(&PXAttributedStringForBadgeText_onceToken, &__block_literal_global_9303);
    if (!a3)
    {
      goto LABEL_6;
    }
  }

  if (a3 == 1 && a2 <= 4)
  {
    a2 = qword_1B40750B0[a2];
    goto LABEL_6;
  }

LABEL_7:
  if (a4 == 1)
  {
    v8 = &PXAttributedStringForBadgeText_miniAttributes;
    goto LABEL_11;
  }

  if (!a4)
  {
    v8 = &PXAttributedStringForBadgeText_defaultAttributes;
LABEL_11:
    v9 = *v8;
    goto LABEL_13;
  }

  v9 = 0;
LABEL_13:
  v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v7 attributes:v9];

  return v10;
}

void __PXAttributedStringForBadgeText_block_invoke()
{
  v18[3] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v1 = [v0 mutableCopy];
  v2 = PXAttributedStringForBadgeText_paragraphStyle;
  PXAttributedStringForBadgeText_paragraphStyle = v1;

  v3 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:12.0];
  v4 = PXAttributedStringForBadgeText_fontAttributeName;
  PXAttributedStringForBadgeText_fontAttributeName = v3;

  objc_storeStrong(&PXAttributedStringForBadgeText_miniFontAttributeName, PXAttributedStringForBadgeText_fontAttributeName);
  v5 = *MEMORY[0x1E69DB648];
  v18[0] = PXAttributedStringForBadgeText_fontAttributeName;
  v6 = *MEMORY[0x1E69DB650];
  v16[0] = v5;
  v16[1] = v6;
  v7 = [MEMORY[0x1E69DC888] whiteColor];
  v17 = *MEMORY[0x1E69DB688];
  v8 = v17;
  v18[1] = v7;
  v18[2] = PXAttributedStringForBadgeText_paragraphStyle;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v16 count:3];
  v10 = PXAttributedStringForBadgeText_defaultAttributes;
  PXAttributedStringForBadgeText_defaultAttributes = v9;

  v15[0] = PXAttributedStringForBadgeText_miniFontAttributeName;
  v14[0] = v5;
  v14[1] = v6;
  v11 = [MEMORY[0x1E69DC888] whiteColor];
  v14[2] = v8;
  v15[1] = v11;
  v15[2] = PXAttributedStringForBadgeText_paragraphStyle;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v13 = PXAttributedStringForBadgeText_miniAttributes;
  PXAttributedStringForBadgeText_miniAttributes = v12;
}

uint64_t sub_1B3F877BC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t static AnyPhotosObservableHosted.subscript.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = a1;
  v4 = *(*a3 + *MEMORY[0x1E69E6F98] + 8);
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v25 - v9;
  v13 = *(*(v11 + v12 + 8) + 32);
  v15 = *v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v25 - v20;
  (*(v13 + 16))(v15, v13);
  v29 = a2;
  swift_unknownObjectRetain();

  v22 = swift_readAtKeyPath();

  v22(v28, 0);
  swift_unknownObjectRelease();

  v23 = v27;
  (*(v6 + 16))(v10, v27, v4);
  swift_setAtReferenceWritableKeyPath();
  swift_unknownObjectRelease();

  (*(v6 + 8))(v23, v4);
  return (*(v17 + 8))(v21, AssociatedTypeWitness);
}

uint64_t PhotosItemList.item(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 80))();
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_4_11();
    OUTLINED_FUNCTION_8_7();
    v4();
  }

  OUTLINED_FUNCTION_2_29();
  v5 = OUTLINED_FUNCTION_1_34();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t PhotosItemList.index(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B405DAC4();
  OUTLINED_FUNCTION_0_0();
  v48 = v8;
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v48 - v10;
  v51 = a3;
  v50 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedTypeWitness();
  sub_1B405DAC4();
  OUTLINED_FUNCTION_0_0();
  v52 = v15;
  v53 = v14;
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v48 - v21;
  OUTLINED_FUNCTION_0_0();
  v54 = v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v48 - v26;
  sub_1B3F87FBC(a1, v55);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_10_3();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, AssociatedTypeWitness);
    (*(AssociatedConformanceWitness + 64))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(*(AssociatedTypeWitness - 8) + 8))(v11, AssociatedTypeWitness);
    OUTLINED_FUNCTION_10_3();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v13);
    v34 = v54;
    (*(v54 + 32))(v22, v19, v13);
    OUTLINED_FUNCTION_10_3();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v13);
  }

  else
  {
    OUTLINED_FUNCTION_9_6();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, AssociatedTypeWitness);
    (*(v48 + 8))(v11, v49);
    OUTLINED_FUNCTION_9_6();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v13);
    sub_1B3F87FBC(a1, v55);
    v44 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v22, v44 ^ 1u, 1, v13);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v13);
    v34 = v54;
    if (EnumTagSinglePayload != 1)
    {
      (*(v52 + 8))(v19, v53);
    }
  }

  if (__swift_getEnumTagSinglePayload(v22, 1, v13) == 1)
  {
    (*(v52 + 8))(v22, v53);
    return 0;
  }

  else
  {
    (*(v34 + 32))(v27, v22, v13);
    v46 = (*(v51 + 72))(v27, v50);
    (*(v34 + 8))(v27, v13);
  }

  return v46;
}

{
  (*(a3 + 48))(a2, a3);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1B405D704();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_1B405D964();

  return v4;
}

uint64_t sub_1B3F87FBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_9_2()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_9_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_4()
{

  return sub_1B405DD74();
}

uint64_t sub_1B3F8826C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t PhotosWeakList.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PhotosWeakObjectReference();
  OUTLINED_FUNCTION_0_11();
  result = sub_1B405D644();
  *a1 = result;
  return result;
}

uint64_t sub_1B3F882F8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t PhotosWeakList.objects.getter()
{
  type metadata accessor for PhotosWeakObjectReference();
  OUTLINED_FUNCTION_0_11();
  sub_1B405D704();
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  swift_getWitnessTable();
  v0 = sub_1B405D504();

  return v0;
}

uint64_t getEnumTagSinglePayload for PhotosVerticalTextSpecs(uint64_t a1, int a2)
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

uint64_t PhotosWeakList.append(_:)()
{
  swift_unknownObjectRetain();
  PhotosWeakObjectReference.init(_:)(&v1);
  type metadata accessor for PhotosWeakObjectReference();
  sub_1B405D704();
  sub_1B405D694();
  result = sub_1B405D684();
  if (!(result % 100))
  {
    return sub_1B3F98150();
  }

  return result;
}

uint64_t PhotosWeakObjectReference.init(_:)@<X0>(uint64_t a1@<X8>)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v2 = sub_1B405D3F4();
  result = swift_unknownObjectRelease();
  *(a1 + 8) = v2;
  return result;
}

unint64_t sub_1B3F8850C()
{
  result = qword_1EB87ACD8;
  if (!qword_1EB87ACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87ACD8);
  }

  return result;
}

unint64_t sub_1B3F88560(uint64_t a1)
{
  result = sub_1B3F88588();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B3F88588()
{
  result = qword_1EB87ACE0;
  if (!qword_1EB87ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87ACE0);
  }

  return result;
}

unint64_t sub_1B3F885E0()
{
  result = qword_1EB87ACF8;
  if (!qword_1EB87ACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87ACF8);
  }

  return result;
}

unint64_t sub_1B3F88638()
{
  result = qword_1EB87ACF0;
  if (!qword_1EB87ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87ACF0);
  }

  return result;
}

unint64_t sub_1B3F88690()
{
  result = qword_1EB87AD00;
  if (!qword_1EB87AD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87AD00);
  }

  return result;
}

unint64_t sub_1B3F886E8()
{
  result = qword_1EB87ACE8;
  if (!qword_1EB87ACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87ACE8);
  }

  return result;
}

uint64_t sub_1B3F8875C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B406FF50;
  *(inited + 32) = v1;
  *(inited + 40) = v2;
  *(inited + 48) = v3;
  v5 = v3;
  sub_1B3F7FD84();
  swift_setDeallocating();
  return sub_1B3F8880C();
}

uint64_t dispatch thunk of PhotosItemListChangeDetailsRepository.append(changeDetails:)()
{
  return (*(*v0 + 104))();
}

{
  return (*(*v0 + 112))();
}

uint64_t sub_1B3F8880C()
{
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1B3F88870()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B3F88920()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B3F8898C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B3F889E4();
  }

  return result;
}

void sub_1B3F889E4()
{
  v1 = v0;
  v2 = *v0;
  v138 = v2;
  v3 = v2[13];
  v157 = v2[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v137 = sub_1B405DAC4();
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137, v5);
  v135 = &v123 - v6;
  v7 = v2[12];
  v150 = v2[15];
  v149 = v7;
  v151 = swift_getAssociatedTypeWitness();
  v142 = sub_1B405DAC4();
  v141 = *(v142 - 8);
  v9 = MEMORY[0x1EEE9AC00](v142, v8);
  v139 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v124 = &v123 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v123 = &v123 - v16;
  MEMORY[0x1EEE9AC00](v15, v17);
  v156 = &v123 - v18;
  v19 = v2[11];
  v154 = v2[14];
  v153 = v19;
  v20 = swift_getAssociatedTypeWitness();
  v140 = sub_1B405DAC4();
  v148 = *(v140 - 8);
  v22 = MEMORY[0x1EEE9AC00](v140, v21);
  v134 = &v123 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v127 = &v123 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v126 = &v123 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v33 = (&v123 - v32);
  v155 = AssociatedTypeWitness;
  v144 = *(AssociatedTypeWitness - 8);
  v35 = MEMORY[0x1EEE9AC00](v31, v34);
  v37 = &v123 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v35, v38);
  v41 = &v123 - v40;
  v147 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v39, v42);
  v44 = &v123 - v43;
  v45 = v1[4];
  v143 = v1;
  v145 = v3;
  v146 = v45;
  if (!v45 || *(v1 + 48) != 1)
  {
    goto LABEL_5;
  }

  v46 = v154;
  v47 = *(v154 + 40);
  swift_unknownObjectRetain();
  v47(v153, v46);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 112))(&v162, v20, AssociatedConformanceWitness);
  (*(v147 + 8))(v44, v20);
  if (!v162)
  {
    swift_unknownObjectRelease();
    return;
  }

  v1 = v143;
  v3 = v145;
  (*(v145 + 40))(v157, v145);
  v49 = v155;
  v50 = swift_getAssociatedConformanceWitness();
  (*(v50 + 112))(&v162, v49, v50);
  v45 = v146;
  swift_unknownObjectRelease();
  (*(v144 + 8))(v41, v49);
  if (v162)
  {
LABEL_5:
    v51 = PhotosConcatenatedItemListManager.itemList.getter();
    v52 = v1[3];
    v53 = *(v3 + 40);
    v132 = v37;
    v130 = v52;
    v53(v157, v3);
    if (v45)
    {
      (*(v154 + 40))(v153);
      v54 = 0;
    }

    else
    {
      v54 = 1;
    }

    v55 = v151;
    v56 = v156;
    v57 = 1;
    __swift_storeEnumTagSinglePayload(v33, v54, 1, v20);
    v58 = v1[5];
    v152 = v51;
    v129 = v58;
    v133 = v33;
    if (v58)
    {
      (*(v150 + 40))(v149, v150);
      v57 = 0;
    }

    __swift_storeEnumTagSinglePayload(v56, v57, 1, v55);
    v59 = v155;
    v60 = swift_getAssociatedConformanceWitness();
    v61 = swift_getAssociatedConformanceWitness();
    v62 = swift_getAssociatedConformanceWitness();
    v162 = v59;
    v163 = v20;
    v164 = v55;
    v165 = v60;
    v131 = v61;
    v166 = v61;
    v167 = v62;
    v125 = v62;
    type metadata accessor for PhotosConcatenatedItemList();
    v63 = PhotosConcatenatedItemList.__allocating_init(mainItemList:prependItemList:appendItemList:)();
    v64 = v152;
    v65 = *(*v152 + 128);
    v133 = v60;
    v66 = *(v60 + 8);
    v67 = *(v66 + 8);
    v128 = v65;
    v68 = v67(v59, v66);
    v69 = *(*v63 + 128);
    v156 = v63;
    v132 = v69;
    v70 = v67(v59, v66);
    v71 = v142;
    v72 = v141;
    v73 = v140;
    if (v68 != v70)
    {
      goto LABEL_31;
    }

    v74 = *(*v64 + 136);
    v75 = v148;
    v76 = v64;
    v77 = *(v148 + 16);
    v78 = v126;
    v77(v126, v76 + v74, v140);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v78, 1, v20);
    if (EnumTagSinglePayload == 1)
    {
      v80 = 0;
      v81 = v75;
      v82 = v73;
    }

    else
    {
      v80 = (*(*(v131 + 8) + 8))(v20);
      v81 = v147;
      v82 = v20;
    }

    v83 = v78;
    v84 = v127;
    (*(v81 + 8))(v83, v82);
    v77(v84, &v156[*(*v156 + 136)], v73);
    if (__swift_getEnumTagSinglePayload(v84, 1, v20) == 1)
    {
      (*(v148 + 8))(v84, v73);
      v85 = EnumTagSinglePayload == 1;
    }

    else
    {
      v86 = (*(*(v131 + 8) + 8))(v20);
      (*(v147 + 8))(v84, v20);
      v85 = EnumTagSinglePayload != 1 && v80 == v86;
    }

    v64 = v152;
    if (!v85)
    {
      goto LABEL_31;
    }

    v87 = *(v72 + 16);
    v88 = v123;
    v87(v123, v152 + *(*v152 + 144), v71);
    v89 = v151;
    v90 = __swift_getEnumTagSinglePayload(v88, 1, v151);
    if (v90 == 1)
    {
      (*(v72 + 8))(v88, v71);
      v91 = 0;
    }

    else
    {
      v91 = (*(*(v125 + 8) + 8))(v89);
      (*(*(v89 - 8) + 8))(v88, v89);
    }

    v92 = v124;
    v87(v124, &v156[*(*v156 + 144)], v71);
    if (__swift_getEnumTagSinglePayload(v92, 1, v89) == 1)
    {
      (*(v72 + 8))(v92, v71);
      v93 = v90 == 1;
    }

    else
    {
      v94 = v92;
      v95 = (*(*(v125 + 8) + 8))(v89);
      (*(*(v89 - 8) + 8))(v94, v89);
      v93 = v90 != 1 && v91 == v95;
    }

    v64 = v152;
    if (v93)
    {
    }

    else
    {
LABEL_31:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BEF0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B4070210;
      *(inited + 32) = sub_1B3F89AE8(v64 + *(*v64 + 136), v146, v153, v154);
      v97 = v135;
      v98 = v155;
      (*(v144 + 16))(v135, v64 + v128, v155);
      __swift_storeEnumTagSinglePayload(v97, 0, 1, v98);
      v99 = sub_1B3F89AE8(v97, v130, v157, v145);
      (*(v136 + 8))(v97, v137);
      *(inited + 40) = v99;
      v100 = sub_1B3F89AE8(v64 + *(*v64 + 144), v129, v149, v150);
      v157 = inited;
      *(inited + 48) = v100;
      v101 = v148;
      v102 = v134;
      (*(v148 + 16))(v134, &v156[*(*v156 + 136)], v73);
      if (__swift_getEnumTagSinglePayload(v102, 1, v20) == 1)
      {
        v103 = 0;
      }

      else
      {
        v103 = (*(v131 + 32))(v20);
        v101 = v147;
        v73 = v20;
      }

      v104 = v139;
      v105 = v133;
      (*(v101 + 8))(v102, v73);
      v159 = v103;
      v106 = v156;
      v160 = v105[4](v155, v105);
      (*(v72 + 16))(v104, &v106[*(*v106 + 144)], v71);
      v107 = v151;
      if (__swift_getEnumTagSinglePayload(v104, 1, v151) == 1)
      {
        (*(v72 + 8))(v104, v71);
        v108 = 0;
      }

      else
      {
        v108 = (*(v125 + 32))(v107);
        (*(*(v107 - 8) + 8))(v104, v107);
      }

      v161 = v108;
      sub_1B3F8A5BC(0, &qword_1EB879F80);
      v109 = [swift_getObjCClassFromMetadata() changeDetailsWithNoChanges];
      v110 = 0;
      v111 = v157 & 0xC000000000000001;
      v112 = v157 & 0xFFFFFFFFFFFFFF8;
      v113 = 4;
      do
      {
        if (v113 == 7)
        {

          v120 = v156;
          v121 = *(v120 + *(*v120 + 152));
          v162 = *(v152 + *(*v152 + 152));
          v163 = v121;
          v164 = v109;
          v122 = v109;
          sub_1B3F8A5FC(v120, &v162);

          return;
        }

        v114 = v113 - 4;
        if (v111)
        {
          v115 = MEMORY[0x1B8C6FC70](v114, v157);
        }

        else
        {
          if (v114 >= *(v112 + 16))
          {
            goto LABEL_49;
          }

          v115 = *(v157 + 8 * v113);
        }

        v116 = v115;
        v117 = [v115 changeDetailsShiftedBy_];
        [v109 addChangeDetails_];

        v118 = *&v158[8 * v113++];
        v119 = __OFADD__(v110, v118);
        v110 += v118;
      }

      while (!v119);
      __break(1u);
LABEL_49:
      __break(1u);
    }
  }
}

id sub_1B3F89AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a1;
  v7 = sub_1B405D004();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v41 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1B405DAC4();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v40 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  v19 = MEMORY[0x1EEE9AC00](v14, v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v40 - v23;
  if (a2)
  {
    (*(v12 + 16))(v16, v42, v11);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, AssociatedTypeWitness);
    v42 = a4 + 40;
    if (EnumTagSinglePayload != 1)
    {
      (*(v17 + 32))(v24, v16, AssociatedTypeWitness);
      v34 = *(a4 + 40);
      swift_unknownObjectRetain();
      v34(a3, a4);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      PhotosItemListManager.changeDetails<A, B>(from:to:)(v24, v21, a3, AssociatedTypeWitness, AssociatedTypeWitness, a4, AssociatedConformanceWitness, AssociatedConformanceWitness, v43);
      swift_unknownObjectRelease();
      v36 = *(v17 + 8);
      v36(v21, AssociatedTypeWitness);
      v36(v24, AssociatedTypeWitness);
      return v43[2];
    }

    v26 = *(v12 + 8);
    swift_unknownObjectRetain();
    v26(v16, v11);
    v27 = *(a4 + 40);
    v27(a3, a4);
    v28 = swift_getAssociatedConformanceWitness();
    v29 = (*(v28 + 40))(AssociatedTypeWitness, v28);
    v30 = *(v17 + 8);
    v30(v21, AssociatedTypeWitness);
    if (v29)
    {
      v31 = [objc_opt_self() changeDetailsWithNoChanges];
LABEL_11:
      v37 = v31;
      swift_unknownObjectRelease();
      return v37;
    }

    v40 = sub_1B3F8A5BC(0, &qword_1EB87A9D0);
    v27(a3, a4);
    v38 = (*(v28 + 32))(AssociatedTypeWitness, v28);
    result = (v30)(v21, AssociatedTypeWitness);
    if ((v38 & 0x8000000000000000) == 0)
    {
      v39 = v41;
      sub_1B405CFC4();
      v31 = sub_1B3F9B7B8(v39);
      goto LABEL_11;
    }

    __break(1u);
  }

  else
  {
    v32 = [objc_opt_self() changeDetailsWithNoChanges];

    return v32;
  }

  return result;
}

uint64_t PhotosItemListManager.changeDetails<A, B>(from:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  (*(a6 + 48))(a3, a6);
  sub_1B3F8A08C(a1, a2, a4, a5, a7, a8, a9);
}

void sub_1B3F8A08C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v14 = (*(*(a5 + 8) + 8))(a3);
  v21 = a6;
  v15 = (*(*(a6 + 8) + 8))(a4);
  sub_1B3F8A1E8(v14, v15, &v22);
  v16 = v22;
  v17 = v23;
  v18 = v24;
  if (([v24 hasIncrementalChanges] & 1) == 0)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    static PhotosItemListChangeDetails.calculateChangeDetails<A, B, C>(from:to:allItemsChanged:)(a1, a2, 1, AssociatedTypeWitness, a3, a4, a5, v21, &v22);
    v16 = v22;
    v17 = v23;
    v20 = v24;
    sub_1B3F8875C(&v22);

    v18 = v20;
  }

  *a7 = v16;
  a7[1] = v17;
  a7[2] = v18;
}

void sub_1B3F8A1E8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1 == a2)
  {
    v6 = [objc_opt_self() changeDetailsWithNoChanges];
    v7 = a1;
  }

  else
  {
    v7 = a2;
    v8 = *(v3 + 24);

    os_unfair_lock_lock((v8 + 24));
    sub_1B3F8A3C4((v8 + 16), v7, a1, &v18);
    os_unfair_lock_unlock((v8 + 24));
    v9 = v18;

    v10 = v9[2];
    if (v10 && v9[4] == a1 && (v11 = &v9[3 * v10 + 4], *(v11 - 16) == v7))
    {
      v12 = v9[6];
      v13 = *(v11 - 8);
      v18 = MEMORY[0x1E69E7CC0];
      v17 = v12;
      v14 = v13;
      sub_1B405DCA4();
      v15 = 6;
      do
      {
        v16 = v9[v15];
        sub_1B405DC74();
        sub_1B405DCB4();
        sub_1B405DCC4();
        sub_1B405DC84();
        v15 += 3;
        --v10;
      }

      while (v10);

      sub_1B3F8A504();
      v6 = sub_1B3F8A548();
    }

    else
    {

      v6 = [objc_opt_self() changeDetailsWithNoIncrementalChanges];
    }
  }

  *a3 = a1;
  a3[1] = v7;
  a3[2] = v6;
}

uint64_t *sub_1B3F8A3C4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = *result;
  v5 = *(*result + 16);
  if (v5)
  {
    v7 = (v4 + 24 * v5 + 24);
    v8 = MEMORY[0x1E69E7CC0];
    while (v5 <= *(v4 + 16))
    {
      v9 = v8[2];
      v10 = a2;
      if (v9)
      {
        v10 = v8[4];
      }

      v11 = *(v7 - 1);
      if (v11 != v10)
      {
        goto LABEL_17;
      }

      v12 = *(v7 - 2);
      v13 = *v7;
      if (!swift_isUniquelyReferenced_nonNull_native() || v9 >= v8[3] >> 1)
      {
        sub_1B3F80038();
        v8 = v14;
      }

      swift_arrayDestroy();
      v15 = v8[2];
      result = memmove(v8 + 7, v8 + 4, 24 * v15);
      v8[2] = v15 + 1;
      v8[4] = v12;
      v8[5] = v11;
      v8[6] = v13;
      if (v12 != a3)
      {
LABEL_17:
        v7 -= 3;
        if (--v5)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    __break(1u);
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_12:
  *a4 = v8;
  return result;
}

unint64_t sub_1B3F8A504()
{
  result = qword_1EB87A9D0;
  if (!qword_1EB87A9D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB87A9D0);
  }

  return result;
}

id sub_1B3F8A548()
{
  sub_1B3F8A504();
  v0 = sub_1B405D5D4();

  v1 = [swift_getObjCClassFromMetadata() changeDetailsByMergingChangeDetails_];

  return v1;
}

uint64_t sub_1B3F8A5BC(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1B3F8A5FC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = PhotosConcatenatedItemListManager.itemList.getter();
  v7 = *(v6 + *(*v6 + 152));

  if (v7 != *(a1 + *(*a1 + 152)))
  {
    v10[0] = v3;
    v10[1] = v4;
    v10[2] = v5;
    sub_1B3F8875C(v10);

    return sub_1B3F8A6C4(v9);
  }

  return result;
}

uint64_t sub_1B3F8A6C4(uint64_t a1)
{
  OUTLINED_FUNCTION_4_2();
  v3 = *(v1 + 16);
  v4 = type metadata accessor for PhotosConcatenatedItemList();
  if (v3 == a1)
  {
    return sub_1B3F8A858(a1);
  }

  MEMORY[0x1EEE9AC00](v4, v5);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v7);
  sub_1B3F7F0A4();
}

uint64_t sub_1B3F8A824@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosConcatenatedItemListManager.itemList.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B3F8A858(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;

  sub_1B3F8A8EC(v2);
}

uint64_t sub_1B3F8A8EC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + *(*a1 + 152));
  v4 = PhotosConcatenatedItemListManager.itemList.getter();
  v5 = *(v4 + *(*v4 + 152));

  if (v3 != v5)
  {
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = *(v2 + 80);
    *(v8 + 32) = *(v2 + 96);
    *(v8 + 40) = *(v2 + 104);
    *(v8 + 56) = *(v2 + 120);
    *(v8 + 64) = v7;

    PXObservable.performChanges(_:)(sub_1B3F8AA58, v8);
  }

  return result;
}

void sub_1B3F8AA6C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 72);

    [v1 signalChange_];
  }
}

uint64_t PhotosConcatenatedItemList.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 128));
  v1 = *(*v0 + 136);
  sub_1B405DAC4();
  OUTLINED_FUNCTION_8();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 144);
  sub_1B405DAC4();
  OUTLINED_FUNCTION_8();
  (*(v4 + 8))(v0 + v3);

  return v0;
}

uint64_t PhotosConcatenatedItemList.__deallocating_deinit()
{
  PhotosConcatenatedItemList.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void __px_dispatch_on_main_queue_when_idle_after_delay_block_invoke(uint64_t a1)
{
  v2 = dispatch_get_global_queue(-32768, 0);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __px_dispatch_on_main_queue_when_idle_after_delay_block_invoke_2;
  v3[3] = &unk_1E7BB88F8;
  v5 = *(a1 + 40);
  v4 = *(a1 + 32);
  dispatch_async(v2, v3);
}

void __px_dispatch_on_main_queue_when_idle_after_delay_block_invoke_2(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __px_dispatch_on_main_queue_when_idle_after_delay_block_invoke_3;
  v1[3] = &unk_1E7BB88F8;
  v3 = *(a1 + 40);
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v1);
}

void *sub_1B3F8AE1C()
{
  OUTLINED_FUNCTION_7_7();
  v2 = *(v0 + *(v1 + 104));
  v3 = v2;
  return v2;
}

void sub_1B3F8AE54()
{
  v0 = sub_1B3F8AE1C();
  if (v0)
  {
    v1 = v0;
    [v0 invalidateInfo];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B3F8AEEC()
{
  v0 = sub_1B3F8AF40();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B3F8AF40()
{
  v1 = *(*v0 + 96);
  v2 = sub_1B405DAC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

void __px_dispatch_on_main_queue_when_idle_after_delay_block_invoke_3(uint64_t a1)
{
  v2 = dispatch_time(0, (*(a1 + 40) * 1000000000.0));
  v3 = *(a1 + 32);
  v4 = MEMORY[0x1E69E96A0];

  dispatch_after(v2, v4, v3);
}

void sub_1B3F8B808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _PXRunLoopObserverTrampoline(__CFRunLoopObserver *a1, int a2, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v6[2]();
  CFRelease(aBlock);
  Current = CFRunLoopGetCurrent();
  CFRunLoopRemoveObserver(Current, a1, *MEMORY[0x1E695E8D0]);
}

char *sub_1B3F8BAE4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_35(a3, result);
  }

  return result;
}

uint64_t sub_1B3F8BB34(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_5_0(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B3F8BB4C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return OUTLINED_FUNCTION_5_0(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B3F8BB64(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

BOOL sub_1B3F8BBA4(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

void sub_1B3F8BBD0(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  OUTLINED_FUNCTION_4(a1);
}

void *sub_1B3F8BC4C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void sub_1B3F8BC70(uint64_t a1@<X8>)
{
  sub_1B3F8BCA4();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

uint64_t sub_1B3F8BD3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B3F8F2FC();
  *a1 = result;
  return result;
}

uint64_t sub_1B3F8BD78()
{
  OUTLINED_FUNCTION_2_2();
  result = sub_1B3F8BDA0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

__n128 sub_1B3F8BDB0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1B3F8BDD4@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosBasicItem.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B3F8BE00()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B3F8BE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_2();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B3F8BEF4()
{
  OUTLINED_FUNCTION_0_2();
  swift_getWitnessTable();

  return sub_1B405D864();
}

uint64_t sub_1B3F8BF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_2();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B3F8BFDC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B3F8C014()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B3F8C054()
{
  type metadata accessor for PhotosEnvironmentActionModifier();
  sub_1B405D174();
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_4();
  return swift_getWitnessTable();
}

uint64_t sub_1B3F8C0C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB87BC80);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1B3F8C154(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB87BC80);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B3F8C1E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B3F8C218()
{
  type metadata accessor for PhotosEnvironmentActionModifier();
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  sub_1B405D184();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB87BD10);
  sub_1B405D174();
  swift_getWitnessTable();
  sub_1B3F94058();
  OUTLINED_FUNCTION_0_4();
  return swift_getWitnessTable();
}

uint64_t sub_1B3F8C2C4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B3F8C2FC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B3F8C33C()
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_5();
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 16, v2 | 7);
}

uint64_t sub_1B3F8C428@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B3F962B8();
  *a1 = result;
  return result;
}

uint64_t sub_1B3F8C47C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B3F96384();
  *a1 = result;
  return result;
}

uint64_t sub_1B3F8C4D8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B3F8C510()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B3F8C5D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B3F8C608()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B3F8C640()
{

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1B3F8C680()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B3F8C6C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B3F8C728()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B3F8C760()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B3F8C850@<X0>(uint64_t a1@<X8>)
{
  result = PhotosConcatenatedItemListManager.fetchLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1B3F8C894()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B3F8C9AC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B3F8CA68()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

__n128 sub_1B3F8CAE4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1B3F8CB08()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_6_1();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B3F8CB3C()
{
  OUTLINED_FUNCTION_6_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B3F8CB70()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B3F8CBAC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B3F8CBE8@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosGenericItemListManager.itemList.getter();
  *a1 = result;
  return result;
}

__n128 sub_1B3F8CC1C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1B3F8CC34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B3FA8CBC();
  *a1 = result;
  return result;
}

__n128 sub_1B3F8CC70(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1B3F8CC84()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B3F8CCBC@<X0>(uint64_t *a1@<X8>)
{
  result = _s18PhotosUIFoundation0A22GenericItemListManagerC04itemE0xvg_0();
  *a1 = result;
  return result;
}

uint64_t sub_1B3F8CCFC()
{
  OUTLINED_FUNCTION_15();
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 40, v2 | 7);
}

uint64_t sub_1B3F8CDC0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B3F8CE14()
{
  OUTLINED_FUNCTION_15();
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B3F8CE90()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 16, v4 | 7);
}

uint64_t sub_1B3F8CF68()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B3F8CFA8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1B3F8D008()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B3F8D040()
{
  MEMORY[0x1B8C71CD0](v0 + 16);
  v1 = OUTLINED_FUNCTION_2_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B3F8D070()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B3F8D0C0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B3F8D0F8@<X0>(uint64_t a1@<X8>)
{
  result = PXAssetsDataSourceManagerCountModel.assetCount.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1B3F8D20C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B3F7CD5C();
  *a1 = result;
  return result;
}

__n128 sub_1B3F8D248(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1B3F8D25C()
{

  OUTLINED_FUNCTION_0_8();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B3F8D2CC()
{
  MEMORY[0x1B8C71CD0](v0 + 16);
  v1 = OUTLINED_FUNCTION_2_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B3F8D2FC()
{

  OUTLINED_FUNCTION_0_8();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B3F8D344()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B3F8D39C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B3F8D3F4()
{
  swift_weakDestroy();
  v0 = OUTLINED_FUNCTION_2_1();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B3F8D424()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B3F8D46C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B3F8D4BC()
{
  _Block_release(*(v0 + 16));
  v1 = OUTLINED_FUNCTION_2_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B3F8D4EC()
{

  OUTLINED_FUNCTION_0_8();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B3F8D5F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

__n128 sub_1B3F8D670(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

__n128 sub_1B3F8D704(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1B3F8D718()
{

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1B3F8D760()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B3F8D800()
{
  OUTLINED_FUNCTION_1_26();
  result = PhotosObservableCollectionTitleModel.title.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B3F8D854()
{
  OUTLINED_FUNCTION_1_26();
  result = PhotosObservableCollectionTitleModel.subtitle.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B3F8D8A8()
{
  OUTLINED_FUNCTION_1_26();
  result = PhotosObservableCollectionTitleModel.symbolName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B3F8D8FC()
{
  OUTLINED_FUNCTION_1_26();
  v0 = PhotosObservableCollectionTitleModel.assetCount.getter();
  return OUTLINED_FUNCTION_2_21(v0, v1);
}

uint64_t sub_1B3F8D978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B405CF44();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1B3F8DA34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B405CF44();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1B3F8DB30()
{
  OUTLINED_FUNCTION_1_26();
  v0 = sub_1B3FC7014();
  return OUTLINED_FUNCTION_2_21(v0, v1);
}

uint64_t sub_1B3F8DB5C()
{
  OUTLINED_FUNCTION_1_26();
  result = _s18PhotosUIFoundation0A30ObservableCollectionTitleModelC10symbolNameSSSgvg_0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B3F8DBC0()
{
  OUTLINED_FUNCTION_1_26();
  result = _s18PhotosUIFoundation0A30ObservableCollectionTitleModelC8subtitleSSSgvg_0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B3F8DC24()
{
  OUTLINED_FUNCTION_1_26();
  result = _s18PhotosUIFoundation0A30ObservableCollectionTitleModelC5titleSSSgvg_0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B3F8DC88()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B3F8DCC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B3FC8B0C();
  *a1 = result & 1;
  return result;
}

__n128 sub_1B3F8DD2C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1B3F8DD38()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B3F8DDCC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B3F8DE04()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B3F8DE80()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1B3F8DEC0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_12();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = (((((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, AssociatedTypeWitness);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v4 | 7);
}

uint64_t sub_1B3F8E0F4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B3F8E12C()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1B3F8E1EC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B3F8E224@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B3FDD2F4();
  *a1 = result;
  return result;
}

__n128 sub_1B3F8E284(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1B3F8E308()
{
  v1 = *(*(v0 + 32) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B3F8E38C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B3F8E3D0()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t getEnumTagSinglePayload for SettingsUtilities(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for SettingsUtilities(_BYTE *result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
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

uint64_t sub_1B3F8E71C(uint64_t a1, int a2)
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

uint64_t sub_1B3F8E73C(uint64_t result, int a2, int a3)
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

uint64_t sub_1B3F8E794(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B3F8E7B4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1B3F8E7DC()
{
  v0 = sub_1B405D0F4();
  __swift_allocate_value_buffer(v0, qword_1EB883CF8);
  __swift_project_value_buffer(v0, qword_1EB883CF8);
  sub_1B405D4B4();
  return sub_1B405D0E4();
}

uint64_t sub_1B3F8E854@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1B3F8E8AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1B3F8E910(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_1B3F8E934(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_1B3F8E954(uint64_t a1, id *a2)
{
  result = sub_1B405D424();
  *a2 = 0;
  return result;
}

uint64_t sub_1B3F8E9CC(uint64_t a1, id *a2)
{
  v3 = sub_1B405D434();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1B3F8EA4C()
{
  v0 = sub_1B405D444();
  v1 = MEMORY[0x1B8C6F530](v0);

  return v1;
}

uint64_t sub_1B3F8EA84()
{
  sub_1B405D444();
  sub_1B405D494();
}

uint64_t sub_1B3F8EAD8()
{
  sub_1B405D444();
  sub_1B405E124();
  sub_1B405D494();
  v0 = sub_1B405E154();

  return v0;
}

uint64_t sub_1B3F8EB4C()
{
  v1 = OUTLINED_FUNCTION_2_2();
  result = nullsub_1(v1);
  *v0 = result;
  return result;
}

uint64_t sub_1B3F8EB74@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_0_7();
  *a1 = result;
  return result;
}

uint64_t sub_1B3F8EB9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B3F8E900(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1B3F8EBCC(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  result = sub_1B3F97F90(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1B3F8EBF4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B3F8E908(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1B3F8EC24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B3F8E910(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1B3F8EC58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B3F8E934(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1B3F8EC9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B3F8E94C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1B3F8ED24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B3F8E8AC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B3F8ED4C(uint64_t a1)
{
  v2 = sub_1B3F8EE98(&qword_1EB87B908, type metadata accessor for PXActionParameterKey);
  v3 = sub_1B3F8EE98(&unk_1EB87B910, type metadata accessor for PXActionParameterKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1B3F8EE98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B3F8F048@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1B405D414();

  *a1 = v2;
  return result;
}

uint64_t sub_1B3F8F090(uint64_t a1)
{
  v2 = sub_1B3F8EE98(&qword_1EB87B948, type metadata accessor for NSKeyValueChangeKey);
  v3 = sub_1B3F8EE98(&unk_1EB87B950, type metadata accessor for NSKeyValueChangeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1B3F8F2FC()
{
  sub_1B405D444();
  v0 = sub_1B405D414();

  return v0;
}

uint64_t static AnyPhotosObservableHosted.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = MEMORY[0x1E69E6F98];
  v8 = *(*(*a3 + *MEMORY[0x1E69E6F98] + 8) + 32);
  v9 = *(*a2 + *MEMORY[0x1E69E6F98]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v21[-v15 - 8];
  (*(v8 + 16))(v9, v8);
  v22 = a1;
  swift_unknownObjectRetain();
  v17 = swift_readAtKeyPath();

  v17(v21, 0);
  swift_unknownObjectRelease();

  v18 = swift_readAtKeyPath();
  (*(*(*(v6 + *v7 + 8) - 8) + 16))(a4);
  v18(v21, 0);

  return (*(v12 + 8))(v16, AssociatedTypeWitness);
}

uint64_t sub_1B3F8F5F4(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1, a1);
  v2 = &v8 - v1;
  v4 = *v3;
  v5 = v3[1];
  (*(v6 + 16))(&v8 - v1);
  swift_unknownObjectRetain();

  return static AnyPhotosObservableHosted.subscript.setter(v2, v4, v5);
}

void (*static AnyPhotosObservableHosted.subscript.modify(void *a1, uint64_t a2, uint64_t *a3, void *a4))(uint64_t **a1, char a2)
{
  v8 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v8;
  v8[1] = a3;
  v8[2] = a4;
  *v8 = a2;
  v8[3] = *(*a3 + *MEMORY[0x1E69E6F98] + 8);
  OUTLINED_FUNCTION_0_0();
  *(v9 + 32) = v10;
  v12 = *(v11 + 64);
  v8[5] = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  v8[6] = v13;
  static AnyPhotosObservableHosted.subscript.getter(a2, a3, a4, v13);
  return sub_1B3F8F7FC;
}

void sub_1B3F8F7FC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  if (a2)
  {
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[1];
    v8 = *v2;
    (*(v6 + 16))((*a1)[5], v4, v5);

    swift_unknownObjectRetain();
    static AnyPhotosObservableHosted.subscript.setter(v3, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v9 = v2[1];
    v10 = *v2;

    swift_unknownObjectRetain();
    static AnyPhotosObservableHosted.subscript.setter(v4, v10, v9);
  }

  free(v4);
  free(v3);

  free(v2);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

void sub_1B3F8F980(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1, a1);
  (*(v1 + 16))();
  AnyPhotosObservableHosted.wrappedValue.setter();
}

uint64_t AnyPhotosObservableHosted.observableKeyPath.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_1B3F8FB68(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1B3F8FBA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static Logger.photosUI(category:)()
{
  sub_1B405D4B4();
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();

  return sub_1B405D0E4();
}

uint64_t PhotosBasicItem.__allocating_init(id:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  PhotosBasicItem.init(id:value:)(a1, a2, a3);
  return v6;
}

char *PhotosBasicItem.init(id:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  *(v3 + 2) = a1;
  *(v3 + 3) = a2;
  (*(*(*(v4 + 80) - 8) + 32))(&v3[*(v4 + 96)], a3);
  return v3;
}

uint64_t PhotosBasicItem.id.getter()
{
  v1 = *(v0 + 16);
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  return v1;
}

uint64_t PhotosBasicItem.diagnosticDescription.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v10 - v6;
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_1B405DBC4();

  v10 = 1029990779;
  v11 = 0xE400000000000000;
  MEMORY[0x1B8C6F500](*(v3 + 2), *(v3 + 3));
  MEMORY[0x1B8C6F500](0x3D65756C6176202CLL, 0xE800000000000000);
  (*(v5 + 16))(v7, &v3[*(*v3 + 96)], v4);
  v8 = sub_1B405D464();
  MEMORY[0x1B8C6F500](v8);

  MEMORY[0x1B8C6F500](32041, 0xE200000000000000);
  return v10;
}

uint64_t PhotosBasicItem.debugDescription.getter()
{
  swift_getMetatypeMetadata();
  v1 = sub_1B405D464();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BA80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B406F250;
  v5 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v6 = sub_1B3F9007C();
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  v7 = MEMORY[0x1E69E65A8];
  *(v4 + 96) = MEMORY[0x1E69E6530];
  *(v4 + 104) = v7;
  *(v4 + 64) = v6;
  *(v4 + 72) = v0;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  *(v4 + 136) = v5;
  *(v4 + 144) = v6;
  *(v4 + 112) = v9;
  *(v4 + 120) = v8;
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  return sub_1B405D454();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1B3F9007C()
{
  result = qword_1EB87BA88;
  if (!qword_1EB87BA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87BA88);
  }

  return result;
}

uint64_t *PhotosBasicItem.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  return v0;
}

uint64_t PhotosBasicItem.__deallocating_deinit()
{
  PhotosBasicItem.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B3F901E4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1B3F90268()
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

uint64_t PhotosAnyIdentifiable.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  a4[3] = v10;
  a4[4] = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  (*(v8 + 16))(boxed_opaque_existential_1, a1, a2);
  v13 = *(v8 + 32);
  v13(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  result = (v13)(v15 + v14, &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  a4[5] = sub_1B3F90AE0;
  a4[6] = v15;
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1B3F90504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a1;
  v44 = a2;
  v46 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v6);
  v40 = &v39 - v7;
  v8 = sub_1B405DAC4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v41 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v9);
  v11 = &v39 - v10;
  v12 = sub_1B405DAC4();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v39 - v16;
  v18 = *(v8 - 8);
  v20 = MEMORY[0x1EEE9AC00](v15, v19);
  v45 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v25 = &v39 - v24;
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = &v39 - v27;
  sub_1B3F90F0C(v43, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BA98);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v17, 0, 1, a3);
    sub_1B405DBE4();
    (*(*(a3 - 8) + 8))(v17, a3);
    __swift_storeEnumTagSinglePayload(v28, 0, 1, AssociatedTypeWitness);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v17, 1, 1, a3);
    (*(v13 + 8))(v17, v12);
    __swift_storeEnumTagSinglePayload(v28, 1, 1, AssociatedTypeWitness);
  }

  sub_1B405DBE4();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, AssociatedTypeWitness);
  v29 = *(TupleTypeMetadata2 + 48);
  v30 = *(v18 + 16);
  v30(v11, v28, v8);
  v30(&v11[v29], v25, v8);
  if (__swift_getEnumTagSinglePayload(v11, 1, AssociatedTypeWitness) != 1)
  {
    v30(v45, v11, v8);
    if (__swift_getEnumTagSinglePayload(&v11[v29], 1, AssociatedTypeWitness) != 1)
    {
      v34 = v42;
      v35 = v40;
      (*(v42 + 32))(v40, &v11[v29], AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      v32 = sub_1B405D404();
      v36 = *(v34 + 8);
      v36(v35, AssociatedTypeWitness);
      v37 = *(v18 + 8);
      v37(v25, v8);
      v37(v28, v8);
      v36(v45, AssociatedTypeWitness);
      v37(v11, v8);
      return v32 & 1;
    }

    v33 = *(v18 + 8);
    v33(v25, v8);
    v33(v28, v8);
    (*(v42 + 8))(v45, AssociatedTypeWitness);
    goto LABEL_9;
  }

  v31 = *(v18 + 8);
  v31(v25, v8);
  v31(v28, v8);
  if (__swift_getEnumTagSinglePayload(&v11[v29], 1, AssociatedTypeWitness) != 1)
  {
LABEL_9:
    (*(v41 + 8))(v11, TupleTypeMetadata2);
    v32 = 0;
    return v32 & 1;
  }

  v31(v11, v8);
  v32 = 1;
  return v32 & 1;
}

uint64_t areMatching(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1B3F90D34(a1, &v22);
  if (v23)
  {
    sub_1B3F90E0C(&v22, v28);
    sub_1B3F90D34(a2, &v22);
    if (v23)
    {
      sub_1B3F90E0C(&v22, v25);
      v5 = v29;
      v6 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      OUTLINED_FUNCTION_1_4();
      MEMORY[0x1EEE9AC00](v7, v8);
      v10 = OUTLINED_FUNCTION_0_1(v9, v21[0]);
      v11(v10);
      PhotosAnyIdentifiable.init<A>(_:)(v2, v5, v6, &v22);
      v12 = v26;
      v13 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      OUTLINED_FUNCTION_1_4();
      MEMORY[0x1EEE9AC00](v14, v15);
      v17 = OUTLINED_FUNCTION_0_1(v16, v21[0]);
      v18(v17);
      PhotosAnyIdentifiable.init<A>(_:)(v2, v12, v13, v21);
      v19 = v24(v21);
      sub_1B3F90E24(v21);
      sub_1B3F90E24(&v22);
      __swift_destroy_boxed_opaque_existential_1(v25);
      __swift_destroy_boxed_opaque_existential_1(v28);
      return v19 & 1;
    }

    sub_1B3F90DA4(&v22);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    sub_1B3F90DA4(&v22);
  }

  if (*(a1 + 24))
  {
    v19 = 0;
  }

  else
  {
    v19 = *(a2 + 24) == 0;
  }

  return v19 & 1;
}

uint64_t sub_1B3F90D34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BA90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B3F90DA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BA90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B3F90E0C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
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

uint64_t sub_1B3F90E70(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1B3F90EB0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1B3F90F0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

BOOL static PXAssetBadgeInfo.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v9 = a1 == a4 && a2 == a5;
  if (a7 != a8)
  {
    v9 = 0;
  }

  return a3 == a6 && v9;
}

uint64_t PhotosBasicItemList.subscript.getter()
{

  swift_getWitnessTable();
  sub_1B405E104();
  return v1;
}

Swift::Int __swiftcall PhotosBasicItemList.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1B3F9117C()
{
  result = qword_1EB87BB10;
  if (!qword_1EB87BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87BB10);
  }

  return result;
}

uint64_t sub_1B3F91304()
{
  swift_getWitnessTable();

  return sub_1B405D874();
}

uint64_t sub_1B3F91440(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB87BB08);
    sub_1B3F9117C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B3F914D4@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosBasicItemList.endIndex.getter();
  *a1 = result;
  return result;
}

void (*sub_1B3F91500(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1B3F915B0(v2);
  return sub_1B3F91568;
}

void sub_1B3F91568(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_1B3F915B0(void *a1))(void *a1)
{
  v2 = *(*v1 + 80);
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  a1[2] = __swift_coroFrameAllocStub(*(v3 + 64));
  PhotosBasicItemList.item(at:)();
  return sub_1B3F9166C;
}

void sub_1B3F9166C(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_1B3F916B8@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosBasicItemList.subscript.getter();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_1B3F916F0()
{
  swift_getWitnessTable();

  return sub_1B405D894();
}

Swift::Int sub_1B3F9176C@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = PhotosBasicItemList.index(after:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_1B3F91798(Swift::Int *a1)
{
  result = PhotosBasicItemList.index(after:)(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_1B3F917EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1B3F91848(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69900](a1, WitnessTable);
}

uint64_t PhotosRegisteredObservable.addObserver(didChange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 16))(a3, a4);
  v6 = sub_1B3F91968(a1, a2);

  return v6;
}

uint64_t sub_1B3F91968(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v7[2] = *(*v2 + 80);
  v7[3] = a1;
  v7[4] = a2;
  v4 = type metadata accessor for PhotosObservationRegistry.RegistrationState();
  v5 = type metadata accessor for PhotosRegistrationHandle();
  sub_1B3F92CDC(sub_1B3F9304C, v7, v3, v4, v5);
  return v7[7];
}

uint64_t PhotosRegisteredObservable.removeObserver(handle:)(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_0_3(a1, a2);
  v4(v3);
  sub_1B3F91A48(v2);
}

void sub_1B3F91A48(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = v1[2];
  v5[2] = *(*v1 + 80);
  v5[3] = v2;
  v4 = type metadata accessor for PhotosObservationRegistry.RegistrationState();
  sub_1B3F92CDC(sub_1B3F93030, v5, v3, v4, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t PhotosRegisteredObservable.notifyObservers(changeData:)(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_0_3(a1, a2);
  v4(v3);
  sub_1B3F91DC0(v2);
}

void sub_1B3F91B1C()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 16);
  v20 = v1 + 16;
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  v21 = v1;
  os_unfair_lock_unlock((v1 + 32));
  v3 = 0;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  v22 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    while (1)
    {
      v8 = v3;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = v9 | (v8 << 6);
      v11 = *(*(v2 + 48) + 8 * v10);
      sub_1B3F92EA0(*(v2 + 56) + 32 * v10, v23);
      *&v24[0] = v11;
      sub_1B3F92F10(v23, v24 + 8, &qword_1EB87BB28);
LABEL_10:
      sub_1B3F92F10(v24, &v26, &qword_1EB87BB30);
      if (!v27[1])
      {
        break;
      }

      v12 = v26;
      sub_1B3F92F10(v27, v24, &qword_1EB87BB28);
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        (*(&v24[0] + 1))(Strong);
      }

      else
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v14 = v22;
        }

        else
        {
          sub_1B3F97CA8();
          v14 = v17;
        }

        v15 = *(v14 + 16);
        v16 = v15 + 1;
        if (v15 >= *(v14 + 24) >> 1)
        {
          sub_1B3F97CA8();
          v16 = v15 + 1;
          v14 = v18;
        }

        *(v14 + 16) = v16;
        v22 = v14;
        *(v14 + 8 * v15 + 32) = v12;
      }

      sub_1B3F92F94(v24, &qword_1EB87BB28);
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    if (*(v22 + 16))
    {
      MEMORY[0x1EEE9AC00](v22, v19);
      os_unfair_lock_lock(v21 + 8);
      sub_1B3F92F78(v20);
      os_unfair_lock_unlock(v21 + 8);
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v8 >= v7)
      {
        v6 = 0;
        v25 = 0;
        memset(v24, 0, sizeof(v24));
        goto LABEL_10;
      }

      v6 = *(v2 + 64 + 8 * v8);
      ++v3;
      if (v6)
      {
        v3 = v8;
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

void sub_1B3F91DC0(uint64_t a1)
{
  v34 = a1;
  v2 = v1[2];
  v36 = *(*v1 + 80);
  v3 = type metadata accessor for PhotosObservationRegistry.RegistrationState();
  v30 = v36;
  v4 = type metadata accessor for PhotosObservationRegistration();
  v5 = sub_1B405D324();
  v32 = v2;
  v31 = v3;
  sub_1B3F92CDC(sub_1B3F92FF4, v35, v2, v3, v5);
  v29[4] = 0;
  v6 = 0;
  v7 = v40;
  v9 = v40 + 64;
  v8 = *(v40 + 64);
  v10 = 1 << *(v40 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v8;
  v13 = (v10 + 63) >> 6;
  v33 = MEMORY[0x1E69E7CC0];
  if ((v11 & v8) != 0)
  {
    while (1)
    {
      v14 = v6;
LABEL_9:
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v16 = v15 | (v14 << 6);
      v17 = *(*(v7 + 48) + 8 * v16);
      v18 = *(v4 - 8);
      (*(v18 + 16))(v37, *(v7 + 56) + 32 * v16, v4);
      *&v38[0] = v17;
      (*(v18 + 32))(v38 + 8, v37, v4);
LABEL_10:
      swift_getTupleTypeMetadata2();
      v19 = sub_1B405DAC4();
      (*(*(v19 - 8) + 32))(&v40, v38, v19);
      if (!v41[1])
      {
        break;
      }

      v20 = v40;
      v21 = *(v4 - 8);
      (*(v21 + 32))(v38, v41, v4);
      if (swift_weakLoadStrong())
      {
        (*(&v38[0] + 1))(v34);
      }

      else
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v22 = v33;
        }

        else
        {
          sub_1B3F97CA8();
          v22 = v25;
        }

        v23 = *(v22 + 16);
        v24 = v23 + 1;
        if (v23 >= *(v22 + 24) >> 1)
        {
          sub_1B3F97CA8();
          v24 = v23 + 1;
          v22 = v26;
        }

        *(v22 + 16) = v24;
        v33 = v22;
        *(v22 + 8 * v23 + 32) = v20;
      }

      (*(v21 + 8))(v38, v4);
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    if (*(v33 + 16))
    {
      MEMORY[0x1EEE9AC00](v27, v28);
      v29[2] = v30;
      v29[3] = v33;
      sub_1B3F92CDC(sub_1B3F93014, v29, v32, v31, MEMORY[0x1E69E7CA8] + 8);
    }

    else
    {
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v14 >= v13)
      {
        v12 = 0;
        v39 = 0;
        memset(v38, 0, sizeof(v38));
        goto LABEL_10;
      }

      v12 = *(v9 + 8 * v14);
      ++v6;
      if (v12)
      {
        v6 = v14;
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t PhotosRegisteredObservable.notifyObservers<>()(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))();
  sub_1B3F91B1C();
}

uint64_t PhotosObservationRegistry.__allocating_init()()
{
  v0 = swift_allocObject();
  PhotosObservationRegistry.init()();
  return v0;
}

uint64_t PhotosObservationRegistry.init()()
{
  v4[0] = sub_1B3F923D0();
  v4[1] = v1;
  v2 = type metadata accessor for PhotosObservationRegistry.RegistrationState();
  *(v0 + 16) = sub_1B3F92440(v4, v2);
  return v0;
}

uint64_t PhotosObservationRegistry.observerCount.getter()
{
  v1 = v0[2];
  v4[2] = *(*v0 + 80);
  v2 = type metadata accessor for PhotosObservationRegistry.RegistrationState();
  sub_1B3F92CDC(sub_1B3F92540, v4, v1, v2, MEMORY[0x1E69E6530]);
  return v4[5];
}

uint64_t sub_1B3F9235C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PhotosObservationRegistration();
  result = sub_1B405D2D4();
  *a1 = result;
  return result;
}

uint64_t sub_1B3F923D0()
{
  type metadata accessor for PhotosObservationRegistration();
  swift_getTupleTypeMetadata2();
  sub_1B405D644();
  return sub_1B405D2A4();
}

uint64_t sub_1B3F92440(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, a2);
  v7 = sub_1B3F92C2C(v6, a2);
  (*(v4 + 8))(a1, a2);
  return v7;
}

uint64_t sub_1B3F9255C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = type metadata accessor for PhotosObservationRegistry.RegistrationState();
  v9 = *(a1 + 8);
  if (__OFADD__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v9 + 1;
    type metadata accessor for PhotosRegistrationHandle();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;

    sub_1B3F926BC(v9, a2, a3, v14);
    v11 = type metadata accessor for PhotosObservationRegistration();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v13, v14, v11);
    sub_1B405D324();
    sub_1B405D344();
    result = (*(v12 + 8))(v14, v11);
    *a4 = v10;
  }

  return result;
}

uint64_t sub_1B3F926BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  swift_weakInit();
}

uint64_t sub_1B3F92704()
{
  type metadata accessor for PhotosObservationRegistration();
  sub_1B405D324();
  return sub_1B405D344();
}

uint64_t sub_1B3F92778(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = (a2 + 32);
    do
    {
      v5 = *v4++;
      v6 = sub_1B3FA45D0(v5);
      if (v7)
      {
        v8 = v6;
        swift_isUniquelyReferenced_nonNull_native();
        v11 = *v3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BB40);
        sub_1B405DD54();
        v9 = v11;
        sub_1B3F92F10(*(v11 + 56) + 32 * v8, v10, &qword_1EB87BB28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BB28);
        sub_1B405DD64();
        *v3 = v9;
      }

      else
      {
        memset(v10, 0, sizeof(v10));
      }

      result = sub_1B3F92F94(v10, &qword_1EB87BB38);
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1B3F928B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = a2 + 32;
    type metadata accessor for PhotosObservationRegistration();
    sub_1B405D324();
    do
    {
      v3 += 8;
      result = sub_1B405D344();
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t PhotosObservationRegistry.__deallocating_deinit()
{
  PhotosObservationRegistry.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1B3F92AA0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B3F92ADC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1B3F92B1C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1B3F92B74()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B3F92BB0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1B3F92BF0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1B3F92C2C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1B405DC44();
  v4 = sub_1B405DC34();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

void sub_1B3F92D68(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v7)
  {
    *a7 = v7;
  }
}

uint64_t sub_1B3F92DF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a1 + ((*(v2 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v2 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2);
}

uint64_t sub_1B3F92EA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BB28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B3F92F10(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B3F92F94(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PhotosDispatchAfter.__allocating_init(timeInterval:queue:fire:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  PhotosDispatchAfter.init(timeInterval:queue:fire:)(a1, a2, a3);
  return v6;
}

uint64_t PhotosDispatchAfter.init(timeInterval:queue:fire:)(void *a1, uint64_t a2, uint64_t a3)
{
  v37 = a1;
  v5 = sub_1B405D1B4();
  OUTLINED_FUNCTION_0_0();
  v38 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B405D1D4();
  OUTLINED_FUNCTION_0_0();
  v35 = v12;
  v36 = v11;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B405D1F4();
  v34 = v16;
  OUTLINED_FUNCTION_0_0();
  v18 = v17;
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v32 - v25;
  sub_1B405D1E4();
  sub_1B405D214();
  v33 = *(v18 + 8);
  v33(v23, v16);
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = a2;
  v28[4] = a3;
  aBlock[4] = sub_1B3F934E4;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B3F934F0;
  aBlock[3] = &block_descriptor;
  v29 = _Block_copy(aBlock);

  sub_1B405D1C4();
  v39 = MEMORY[0x1E69E7CC0];
  sub_1B3F93534();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BB48);
  sub_1B3F9358C();
  sub_1B405DB24();
  v30 = v37;
  MEMORY[0x1B8C6FA50](v26, v15, v10, v29);
  _Block_release(v29);

  (*(v38 + 8))(v10, v5);
  (*(v35 + 8))(v15, v36);
  v33(v26, v34);

  return v32;
}

uint64_t sub_1B3F93478(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_1B3F934F0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

unint64_t sub_1B3F93534()
{
  result = qword_1EB87AA10[0];
  if (!qword_1EB87AA10[0])
  {
    sub_1B405D1B4();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB87AA10);
  }

  return result;
}

unint64_t sub_1B3F9358C()
{
  result = qword_1EB87AA08;
  if (!qword_1EB87AA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB87BB48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87AA08);
  }

  return result;
}

uint64_t PXDisplayAssetWrapper.asset.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

id MenuSection.__allocating_init(actions:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC18PhotosUIFoundation11MenuSection_actions] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id MenuSection.init(actions:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC18PhotosUIFoundation11MenuSection_actions] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id MenuSection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MenuSection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t RangeReplaceableCollection.px_popFirst()@<X0>(uint64_t a1@<X8>)
{
  if (sub_1B405D8D4())
  {
    v2 = 1;
  }

  else
  {
    sub_1B405D984();
    v2 = 0;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return __swift_storeEnumTagSinglePayload(a1, v2, 1, AssociatedTypeWitness);
}

uint64_t View.photosEnvironmentAction<A>(_:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for PhotosEnvironmentActionModifier();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = (&v17 - v14);

  sub_1B3F93AD8(a1, a2, a3, v15);
  MEMORY[0x1B8C6F200](v15, a4, v11, a6);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1B3F93AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  type metadata accessor for PhotosEnvironmentActionModifier();
  type metadata accessor for PhotosEnvironmentAction();
  return sub_1B405D114();
}

uint64_t sub_1B3F93B6C()
{
  v1 = *(v0 + 16);

  v1(v2);
}

uint64_t PhotosEnvironmentAction.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void sub_1B3F93C68()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1B3F93D18();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B3F93D18()
{
  if (!qword_1EB87BD08)
  {
    type metadata accessor for PhotosEnvironmentAction();
    v0 = sub_1B405D134();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB87BD08);
    }
  }
}

uint64_t sub_1B3F93DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for PhotosEnvironmentAction();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *a3 = v6;
}

uint64_t sub_1B3F93E0C@<X0>(uint64_t a1@<X8>)
{
  v15[0] = a1;
  swift_getWitnessTable();
  sub_1B405D184();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB87BD10);
  v1 = sub_1B405D174();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v15 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB87BC80);
  sub_1B405D124();
  WitnessTable = swift_getWitnessTable();
  sub_1B405D194();

  v11 = sub_1B3F94058();
  v15[1] = WitnessTable;
  v15[2] = v11;
  v12 = swift_getWitnessTable();
  sub_1B3FE0C9C(v6, v1, v12);
  v13 = *(v2 + 8);
  v13(v6, v1);
  sub_1B3FE0C9C(v9, v1, v12);
  return (v13)(v9, v1);
}

unint64_t sub_1B3F94058()
{
  result = qword_1EB87BD18;
  if (!qword_1EB87BD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB87BD10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87BD18);
  }

  return result;
}

uint64_t PhotosMappingItemListManager.__allocating_init<A>(itemListManager:itemProvider:)()
{
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_1_6();
  PhotosMappingItemListManager.init<A>(itemListManager:itemProvider:)(v1, v2, v3, v4, v5);
  return v0;
}

void *PhotosMappingItemListManager.init<A>(itemListManager:itemProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *v5;
  type metadata accessor for PhotosItemListChangeDetailsRepository();
  swift_allocObject();
  v13 = PhotosItemListChangeDetailsRepository.init(countLimit:)(100);
  v5[11] = 0;
  v5[3] = 0;
  v5[4] = 0;
  v5[2] = v13;
  sub_1B405D054();
  v14 = swift_allocObject();
  v15 = *(v12 + 80);
  v14[2] = v15;
  v14[3] = a4;
  v16 = *(v12 + 88);
  v14[4] = v16;
  v14[5] = a5;
  v14[6] = a1;
  v6[5] = sub_1B3F94998;
  v6[6] = v14;
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = a4;
  v17[4] = v16;
  v17[5] = a5;
  v17[6] = a1;
  v6[7] = sub_1B3F949D4;
  v6[8] = v17;
  v18 = swift_allocObject();
  v18[2] = v15;
  v18[3] = a4;
  v18[4] = v16;
  v18[5] = a5;
  v18[6] = a1;
  v18[7] = a2;
  v18[8] = a3;
  v6[9] = sub_1B3F94A20;
  v6[10] = v18;
  swift_unknownObjectRetain_n();
  return v6;
}

uint64_t sub_1B3F9428C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a5;
  v35 = a3;
  v36 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v15);
  v33 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v31 - v18;
  (*(a8 + 40))(a6, a8);
  v37 = a7;
  if (!a1)
  {
    goto LABEL_4;
  }

  v32 = *(a1 + 32);
  v31 = a6;
  v20 = *(swift_getAssociatedConformanceWitness() + 8);
  v21 = *(v20 + 8);

  v22 = v21(AssociatedTypeWitness, v20);
  if (v32 != v22)
  {

    a6 = v31;
LABEL_4:
    v23 = v34;
    v32 = type metadata accessor for PhotosMappingItemList();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v31 = (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(AssociatedConformanceWitness + 112))(&v38, AssociatedTypeWitness, AssociatedConformanceWitness);
    v25 = v33;
    (*(v13 + 16))(v33, v19, AssociatedTypeWitness);
    v26 = (*(v13 + 80) + 48) & ~*(v13 + 80);
    v27 = swift_allocObject();
    *(v27 + 2) = v23;
    *(v27 + 3) = a6;
    *(v27 + 4) = v37;
    *(v27 + 5) = a8;
    (*(v13 + 32))(&v27[v26], v25, AssociatedTypeWitness);
    v28 = &v27[(v14 + v26 + 7) & 0xFFFFFFFFFFFFFFF8];
    v29 = v36;
    *v28 = v35;
    *(v28 + 1) = v29;

    a1 = PhotosMappingItemList.__allocating_init(itemIdentifiers:loadingStatus:itemProvider:)(v31, &v38, sub_1B3F94C24, v27);
  }

  (*(v13 + 8))(v19, AssociatedTypeWitness);
  return a1;
}

uint64_t sub_1B3F94590(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v15 = a5;
  v16 = a4;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v9);
  v11 = &v15 - v10;
  v12 = *(AssociatedConformanceWitness + 56);
  v13 = swift_checkMetadataState();
  v12(a1, v13, AssociatedConformanceWitness);
  v16(v11);
  return (*(v8 + 8))(v11, AssociatedTypeWitness);
}

uint64_t sub_1B3F94724()
{
  v1 = *(v0 + 72);
  sub_1B3F947E0();
  v2 = v1();

  sub_1B3F947E8(v3);
  return v2;
}

uint64_t PhotosMappingItemListManager.deinit()
{

  swift_unknownObjectRelease();

  v1 = qword_1EB87A468;
  sub_1B405D064();
  OUTLINED_FUNCTION_0_5();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t PhotosMappingItemListManager.__deallocating_deinit()
{
  PhotosMappingItemListManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B3F948D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B3F94724();
  *a1 = result;
  return result;
}

uint64_t PhotosItemListManager.map<A>(itemProvider:)()
{
  type metadata accessor for PhotosMappingItemListManager();
  swift_unknownObjectRetain();

  OUTLINED_FUNCTION_1_6();
  return PhotosMappingItemListManager.__allocating_init<A>(itemListManager:itemProvider:)();
}

uint64_t sub_1B3F94A68(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B3F94AC8()
{
  result = sub_1B405D064();
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

uint64_t sub_1B3F94C24(uint64_t a1, uint64_t a2)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1B3F94590(a1, a2, v2 + v6, *v7, *(v7 + 8));
}

uint64_t PhotosTrivialNavigationPermission.__allocating_init()()
{
  v0 = swift_allocObject();
  PhotosTrivialNavigationPermission.init()();
  return v0;
}

uint64_t PhotosTrivialNavigationPermission.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BD38);
  v1 = swift_allocObject();
  *(v1 + 20) = 0;
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t sub_1B3F94DC8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

void sub_1B3F94E0C()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 20));
  *(v1 + 16) = 1;

  os_unfair_lock_unlock((v1 + 20));
}

uint64_t PhotosTrivialNavigationPermission.deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);

  os_unfair_lock_lock((v2 + 20));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));

  if ((v3 & 1) == 0)
  {
    if (qword_1EB87B778 != -1)
    {
      swift_once();
    }

    v4 = sub_1B405D0F4();
    __swift_project_value_buffer(v4, qword_1EB87BD20);
    v5 = sub_1B405D0D4();
    v6 = sub_1B405D9B4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1B3F95078(0xD000000000000023, 0x80000001B40757B0, &v10);
      _os_log_impl(&dword_1B3F73000, v5, v6, "%s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1B8C71C00](v8, -1, -1);
      MEMORY[0x1B8C71C00](v7, -1, -1);
    }
  }

  return v1;
}

uint64_t PhotosTrivialNavigationPermission.__deallocating_deinit()
{
  PhotosTrivialNavigationPermission.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1B3F95000()
{
  v0 = sub_1B405D0F4();
  __swift_allocate_value_buffer(v0, qword_1EB87BD20);
  __swift_project_value_buffer(v0, qword_1EB87BD20);
  sub_1B405D4B4();
  return sub_1B405D0E4();
}

unint64_t sub_1B3F95078(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  v6 = sub_1B3F9513C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1B3F87FBC(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1B3F9513C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1B3F9523C(a5, a6);
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
    result = sub_1B405DC54();
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

uint64_t sub_1B3F9523C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1B3F95288(a1, a2);
  sub_1B3F953A0(&unk_1F2B81AA0);
  return v3;
}

uint64_t sub_1B3F95288(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_1B405D4C4())
  {
    result = sub_1B3F95484(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1B405DBB4();
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
          result = sub_1B405DC54();
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

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B3F953A0(uint64_t result)
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

    result = sub_1B3F954F4(result, v7, 1, v3);
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

void *sub_1B3F95484(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BDA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1B3F954F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BDA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t Int.times(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v5 = result;
    v6 = 1;
    while (1)
    {
      result = v5();
      if (v3 || a3 == v6)
      {
        break;
      }

      if (__OFADD__(v6++, 1))
      {
        __break(1u);
        return result;
      }
    }
  }

  return result;
}

uint64_t Int.px_nilIfNotFound.getter(uint64_t a1)
{
  if (sub_1B405CE94() == a1)
  {
    return 0;
  }

  else
  {
    return a1;
  }
}

uint64_t PhotosStrongObjectReference.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  result = sub_1B405D3F4();
  a2[1] = result;
  return result;
}

uint64_t PhotosStrongObjectReference.hashValue.getter(uint64_t a1)
{
  v3 = v1[1];
  v7 = *v1;
  v8 = v3;
  sub_1B405E124();
  WitnessTable = swift_getWitnessTable();
  PhotosObjectReference.hash(into:)(v6, a1, WitnessTable);
  return sub_1B405E154();
}

uint64_t PhotosObjectReference.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a1)
  {
    (*(a3 + 24))(a4, a1, a2);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a4, v6, 1, a2);
}

uint64_t sub_1B3F95844(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return PhotosObjectReference.hash(into:)(a1, a2, WitnessTable);
}

uint64_t sub_1B3F958E8(uint64_t a1, uint64_t a2)
{
  sub_1B405E124();
  WitnessTable = swift_getWitnessTable();
  PhotosObjectReference.hash(into:)(v5, a2, WitnessTable);
  return sub_1B405E154();
}

BOOL static PhotosObjectReference.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 48);
  v7 = v6(a3, a4);
  if (v7 != v6(a3, a4))
  {
    return 0;
  }

  v8 = *(a4 + 40);
  v9 = v8(a3, a4);
  v10 = v8(a3, a4);
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v9 == v11;
    }

    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    swift_unknownObjectRelease();
    return 0;
  }

  return 1;
}

uint64_t sub_1B3F95ABC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PhotosWeakObjectReference();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v8, a1, v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = (*(v5 + 8))(v8, v4);
  *a2 = Strong;
  return result;
}

uint64_t PhotosWeakObjectReference.object.setter()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*PhotosWeakObjectReference.object.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1B3F95C00;
}

uint64_t sub_1B3F95C00()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t PhotosWeakObjectReference.hashValue.getter(uint64_t a1)
{
  sub_1B405E124();
  WitnessTable = swift_getWitnessTable();
  PhotosObjectReference.hash(into:)(v4, a1, WitnessTable);
  return sub_1B405E154();
}

uint64_t sub_1B3F95CC4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return PhotosObjectReference.hash(into:)(a1, a2, WitnessTable);
}

uint64_t sub_1B3F95D24(uint64_t a1, uint64_t a2)
{
  sub_1B405E124();
  WitnessTable = swift_getWitnessTable();
  PhotosObjectReference.hash(into:)(v5, a2, WitnessTable);
  return sub_1B405E154();
}

uint64_t sub_1B3F95D88(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B3F95DE0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B3F95E9C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t dispatch thunk of PhotosObjectReference.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 24))();
}

{
  return (*(a3 + 32))();
}

uint64_t sub_1B3F95FB8(uint64_t *a1)
{
  v2 = *a1;
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  return PXExtendedTraitCollection.environmentValues.setter(&v2);
}

uint64_t PXExtendedTraitCollection.environmentValues.setter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_0_8();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = v1;
  PXObservable.performChanges(_:)(sub_1B3F7AB9C, v3);
}

uint64_t (*PXExtendedTraitCollection.environmentValues.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  PXExtendedTraitCollection.environmentValues.getter(a1);
  return sub_1B3F960B4;
}

uint64_t sub_1B3F960B4(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_0_8();
    v2 = swift_allocObject();
    OUTLINED_FUNCTION_1_7(v2);
    _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
    OUTLINED_FUNCTION_0_8();
    v3 = swift_allocObject();
    OUTLINED_FUNCTION_1_7(v3);
    OUTLINED_FUNCTION_2_5();
  }
}

id sub_1B3F96160()
{
  v2.receiver = v0;
  v2.super_class = _s18EnvironmentStorageCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B3F961E4()
{
  PXExtendedTraitCollection.environmentValues.getter(&v4);
  v0 = sub_1B3FB7024();
  v2 = v1;

  if (v2)
  {
    return 0;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B3F96270()
{
  PXExtendedTraitCollection.environmentValues.getter(&v2);
  v0 = sub_1B3FB70E4(v2);

  return v0 & 1;
}

uint64_t sub_1B3F962B8()
{
  v1 = OBJC_IVAR____TtC18PhotosUIFoundation27MockPresentationEnvironment_autoSelectedAlertActionStyle;
  OUTLINED_FUNCTION_2();
  return *(v0 + v1);
}

uint64_t sub_1B3F962F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PhotosUIFoundation27MockPresentationEnvironment_autoSelectedAlertActionStyle;
  result = OUTLINED_FUNCTION_3_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B3F96384()
{
  v1 = OBJC_IVAR____TtC18PhotosUIFoundation27MockPresentationEnvironment_alertPresentationCount;
  OUTLINED_FUNCTION_2();
  return *(v0 + v1);
}

uint64_t sub_1B3F963C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PhotosUIFoundation27MockPresentationEnvironment_alertPresentationCount;
  result = OUTLINED_FUNCTION_3_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B3F96450@<X0>(void *a1@<X8>)
{
  result = sub_1B3F96550();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1B3F971CC;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1B3F964C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1B3F97194;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1B3F7F018(v1);
  return sub_1B3F965A4(v4, v3);
}

uint64_t sub_1B3F96550()
{
  v1 = (v0 + OBJC_IVAR____TtC18PhotosUIFoundation27MockPresentationEnvironment_postPresentationHandler);
  OUTLINED_FUNCTION_2();
  v2 = *v1;
  sub_1B3F7F018(*v1);
  return v2;
}

uint64_t sub_1B3F965A4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18PhotosUIFoundation27MockPresentationEnvironment_postPresentationHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1B3F7BAA8(v6);
}

uint64_t sub_1B3F96658(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = (v3 + OBJC_IVAR____TtC18PhotosUIFoundation27MockPresentationEnvironment_postPresentationHandler);
  result = OUTLINED_FUNCTION_2();
  v8 = *v6;
  if (*v6)
  {

    v8(a1);
    result = sub_1B3F7BAA8(v8);
  }

  if (a3)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_1B3F967C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a3)
  {
    return a3();
  }

  return result;
}

uint64_t sub_1B3F968DC(uint64_t a1, void (**a2)(void, void))
{
  v4 = OBJC_IVAR____TtC18PhotosUIFoundation27MockPresentationEnvironment_alertPresentationCount;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(a1 + v4) = v8;
    v9 = [objc_allocWithZone(PXAlertConfiguration) init];
    (a2)[2](a2, v9);
    v10 = [objc_allocWithZone(PXAlert) initWithConfiguration_];
    v11 = OBJC_IVAR____TtC18PhotosUIFoundation27MockPresentationEnvironment_autoSelectedAlertActionStyle;
    swift_beginAccess();
    [v10 performFirstActionWithStyle_];
    sub_1B3F96B04();
    v12 = sub_1B405DA84();

    _Block_release(a2);
    return v12;
  }

  return result;
}

uint64_t sub_1B3F96A00(void (*a1)(void))
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC18PhotosUIFoundation27MockPresentationEnvironment_alertPresentationCount;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v1 + v4) = v8;
    v9 = [objc_allocWithZone(PXAlertConfiguration) init];
    a1();
    v10 = [objc_allocWithZone(PXAlert) initWithConfiguration_];
    v11 = OBJC_IVAR____TtC18PhotosUIFoundation27MockPresentationEnvironment_autoSelectedAlertActionStyle;
    OUTLINED_FUNCTION_2();
    [v10 performFirstActionWithStyle_];
    sub_1B3F96B04();
    v12 = sub_1B405DA84();

    return v12;
  }

  return result;
}

unint64_t sub_1B3F96B04()
{
  result = qword_1EB87BDC8;
  if (!qword_1EB87BDC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB87BDC8);
  }

  return result;
}

uint64_t sub_1B3F96BB4(uint64_t a1, uint64_t (*a2)(void))
{
  if (a2)
  {
    return a2();
  }

  return result;
}

id MockPresentationEnvironment.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MockPresentationEnvironment.init()()
{
  *&v0[OBJC_IVAR____TtC18PhotosUIFoundation27MockPresentationEnvironment_autoSelectedAlertActionStyle] = 0;
  *&v0[OBJC_IVAR____TtC18PhotosUIFoundation27MockPresentationEnvironment_alertPresentationCount] = 0;
  v1 = &v0[OBJC_IVAR____TtC18PhotosUIFoundation27MockPresentationEnvironment_postPresentationHandler];
  v2 = type metadata accessor for MockPresentationEnvironment();
  *v1 = 0;
  *(v1 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

id MockPresentationEnvironment.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MockPresentationEnvironment();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B3F97194(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

id PhotosDebugColorOverlayView.init(tintColor:)(void *a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for PhotosDebugColorOverlayView();
  v3 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v4 = [a1 colorWithAlphaComponent_];
  [v3 setBackgroundColor_];

  v5 = [v3 layer];
  v6 = [a1 colorWithAlphaComponent_];
  v7 = [v6 CGColor];

  [v5 setBorderColor_];
  v8 = [v3 layer];

  [v8 setBorderWidth_];
  return v3;
}

id PhotosDebugColorOverlayView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PhotosDebugColorOverlayView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosDebugColorOverlayView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B3F9752C()
{
  v0 = sub_1B405D444();
  v2 = v1;
  if (v0 == sub_1B405D444() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1B405DEC4();
  }

  return v5 & 1;
}

uint64_t sub_1B3F975B0(unsigned __int8 a1, char a2)
{
  v2 = 0x6E6F6974636573;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x6E6F6974636573;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1835365481;
      break;
    case 3:
      v5 = 0x6D657469627573;
      break;
    default:
      v5 = 0xD000000000000014;
      v3 = 0x80000001B4075500;
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1835365481;
      break;
    case 3:
      v2 = 0x6D657469627573;
      break;
    default:
      v2 = 0xD000000000000014;
      v6 = 0x80000001B4075500;
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B405DEC4();
  }

  return v8 & 1;
}

double PXDisplayAsset.pixelSize.getter()
{
  v1 = [v0 pixelWidth];
  [v0 pixelHeight];
  return v1;
}

uint64_t PXDisplayAssetMediaSubtype.description.getter(int a1)
{
  if (a1)
  {
    sub_1B3F97D64();
    v4 = v5;
    v6 = v5[2];
    v1 = v6 + 1;
    if (v6 >= v5[3] >> 1)
    {
      OUTLINED_FUNCTION_1_8();
      v4 = v27;
    }

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_14();
    *(v8 + 32) = v7 | 0x6E61506F00000000;
    *(v8 + 40) = 0xED0000616D61726FLL;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  if ((a1 & 2) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_10();
      v4 = v28;
    }

    OUTLINED_FUNCTION_12();
    if (v9)
    {
      OUTLINED_FUNCTION_1_8();
      v4 = v29;
    }

    v4[2] = v1;
    v10 = &v4[2 * v2];
    v10[4] = 0x5244486F746F6870;
    v10[5] = 0xE800000000000000;
    if ((a1 & 4) == 0)
    {
LABEL_8:
      if ((a1 & 8) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_20;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_8;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_0_10();
    v4 = v30;
  }

  OUTLINED_FUNCTION_12();
  if (v9)
  {
    OUTLINED_FUNCTION_1_8();
    v4 = v31;
  }

  v4[2] = v1;
  OUTLINED_FUNCTION_14();
  *(v12 + 32) = v11 | 0x7263536F00000000;
  *(v12 + 40) = 0xEF746F68736E6565;
  if ((a1 & 8) != 0)
  {
LABEL_20:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_10();
      v4 = v32;
    }

    OUTLINED_FUNCTION_12();
    if (v9)
    {
      OUTLINED_FUNCTION_1_8();
      v4 = v33;
    }

    v4[2] = v1;
    OUTLINED_FUNCTION_14();
    *(v14 + 32) = v13 | 0x76694C6F00000000;
    *(v14 + 40) = 0xE900000000000065;
  }

LABEL_25:
  if ((a1 & 0x10) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_10();
      v4 = v34;
    }

    v15 = v4[2];
    v1 = v15 + 1;
    if (v15 >= v4[3] >> 1)
    {
      OUTLINED_FUNCTION_1_8();
      v4 = v35;
    }

    v4[2] = v1;
    v16 = &v4[2 * v15];
    v16[4] = 0xD000000000000010;
    v16[5] = 0x80000001B4075C40;
    if ((a1 & 0x200) == 0)
    {
LABEL_27:
      if ((a1 & 0x800000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_43;
    }
  }

  else if ((a1 & 0x200) == 0)
  {
    goto LABEL_27;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_0_10();
    v4 = v36;
  }

  v17 = v4[2];
  v1 = v17 + 1;
  if (v17 >= v4[3] >> 1)
  {
    OUTLINED_FUNCTION_1_8();
    v4 = v37;
  }

  v4[2] = v1;
  v18 = &v4[2 * v17];
  v18[4] = 0x5244486F746F6870;
  v18[5] = 0xEF70614D6E696147;
  if ((a1 & 0x800000) == 0)
  {
LABEL_28:
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_48;
  }

LABEL_43:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_0_10();
    v4 = v38;
  }

  OUTLINED_FUNCTION_7();
  if (v9)
  {
    OUTLINED_FUNCTION_1_8();
    v4 = v39;
  }

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_14();
  *(v20 + 32) = v19 | 0x5244586F00000000;
  *(v20 + 40) = 0xE800000000000000;
  if ((a1 & 0x10000) == 0)
  {
LABEL_29:
    if ((a1 & 0x20000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_53;
  }

LABEL_48:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_0_10();
    v4 = v40;
  }

  OUTLINED_FUNCTION_7();
  if (v9)
  {
    OUTLINED_FUNCTION_1_8();
    v4 = v41;
  }

  OUTLINED_FUNCTION_15_0();
  strcpy((v21 + 32), "videoStreamed");
  *(v21 + 46) = -4864;
  if ((a1 & 0x20000) == 0)
  {
LABEL_30:
    if ((a1 & 0x40000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_58;
  }

LABEL_53:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_0_10();
    v4 = v42;
  }

  OUTLINED_FUNCTION_7();
  if (v9)
  {
    OUTLINED_FUNCTION_1_8();
    v4 = v43;
  }

  v4[2] = v1;
  v4[0x48890DEE8DED0E4] = 0xD000000000000012;
  v4[0x48890DEE8DED0E5] = 0x80000001B4075C20;
  if ((a1 & 0x40000) == 0)
  {
LABEL_31:
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_63;
  }

LABEL_58:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_0_10();
    v4 = v44;
  }

  OUTLINED_FUNCTION_7();
  if (v9)
  {
    OUTLINED_FUNCTION_1_8();
    v4 = v45;
  }

  OUTLINED_FUNCTION_15_0();
  strcpy((v22 + 32), "videoTimelapse");
  *(v22 + 47) = -18;
  if ((a1 & 0x100000) != 0)
  {
LABEL_63:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_10();
      v4 = v46;
    }

    v23 = v4[2];
    if (v23 >= v4[3] >> 1)
    {
      sub_1B3F97D64();
      v4 = v47;
    }

    v4[2] = v23 + 1;
    v24 = &v4[2 * v23];
    v24[4] = 0x5244486F65646976;
    v24[5] = 0xE800000000000000;
  }

LABEL_68:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BE40);
  sub_1B3F97C44();
  v25 = sub_1B405D394();

  return v25;
}