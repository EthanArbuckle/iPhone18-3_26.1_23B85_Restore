BOOL _s12PhotosUICore26ParallaxAssetColorAnalysisV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if (sub_1A4A25704(*a1, *a2) & 1) != 0 && (sub_1A4A25704(v2, v5) & 1) != 0 && (sub_1A4A25704(v3, v6))
  {
    v11 = v4;
    v10 = v7;
    return static ParallaxAssetPosterClassification.== infix(_:_:)(&v11, &v10);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1A4A29D44()
{
  result = qword_1EB1479D0;
  if (!qword_1EB1479D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1479D0);
  }

  return result;
}

void sub_1A4A29D98()
{
  if (!qword_1EB1479D8)
  {
    sub_1A4A29E00();
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1479D8);
    }
  }
}

void sub_1A4A29E00()
{
  if (!qword_1EB1479E0)
  {
    sub_1A4A29E80();
    sub_1A4A2A44C(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1479E0);
    }
  }
}

void sub_1A4A29E80()
{
  if (!qword_1EB1479E8)
  {
    sub_1A4A29F00();
    sub_1A4A2A44C(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1479E8);
    }
  }
}

void sub_1A4A29F00()
{
  if (!qword_1EB1479F0)
  {
    sub_1A3C71380(255, &qword_1EB1479F8, sub_1A4A29F94, MEMORY[0x1E6981F40]);
    sub_1A4A2A3C4();
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1479F0);
    }
  }
}

void sub_1A4A29F94()
{
  if (!qword_1EB147A00)
  {
    sub_1A3C71380(255, &qword_1EB147A08, sub_1A4A2A048, MEMORY[0x1E6981F40]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB147A00);
    }
  }
}

void sub_1A4A2A048()
{
  if (!qword_1EB147A10)
  {
    sub_1A4A2A0B0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB147A10);
    }
  }
}

void sub_1A4A2A0B0()
{
  if (!qword_1EB147A18)
  {
    sub_1A3C2DEB8(255, &qword_1EB147A20, &type metadata for ParallaxPosterColor, MEMORY[0x1E69E62F8]);
    sub_1A4A2A170();
    sub_1A4A2A2F4();
    sub_1A4A2A370();
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147A18);
    }
  }
}

void sub_1A4A2A170()
{
  if (!qword_1EB147A28)
  {
    sub_1A3C71380(255, &qword_1EB147A30, sub_1A4A2A204, MEMORY[0x1E6981F40]);
    sub_1A4A2A26C();
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147A28);
    }
  }
}

void sub_1A4A2A204()
{
  if (!qword_1EB147A38)
  {
    sub_1A47EB7C8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB147A38);
    }
  }
}

unint64_t sub_1A4A2A26C()
{
  result = qword_1EB147A40;
  if (!qword_1EB147A40)
  {
    sub_1A3C71380(255, &qword_1EB147A30, sub_1A4A2A204, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147A40);
  }

  return result;
}

unint64_t sub_1A4A2A2F4()
{
  result = qword_1EB147A48;
  if (!qword_1EB147A48)
  {
    sub_1A3C2DEB8(255, &qword_1EB147A20, &type metadata for ParallaxPosterColor, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147A48);
  }

  return result;
}

unint64_t sub_1A4A2A370()
{
  result = qword_1EB147A50;
  if (!qword_1EB147A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147A50);
  }

  return result;
}

unint64_t sub_1A4A2A3C4()
{
  result = qword_1EB147A58;
  if (!qword_1EB147A58)
  {
    sub_1A3C71380(255, &qword_1EB1479F8, sub_1A4A29F94, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147A58);
  }

  return result;
}

void sub_1A4A2A44C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A3C2DEB8(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A4A2A4B8()
{
  if (!qword_1EB147A60)
  {
    sub_1A3C71380(255, &qword_1EB1479F8, sub_1A4A29F94, MEMORY[0x1E6981F40]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147A60);
    }
  }
}

unint64_t sub_1A4A2A554()
{
  result = qword_1EB147A68;
  if (!qword_1EB147A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147A68);
  }

  return result;
}

unint64_t sub_1A4A2A5AC()
{
  result = qword_1EB147A70;
  if (!qword_1EB147A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147A70);
  }

  return result;
}

void sub_1A4A2A65C()
{
  if (!qword_1EB147A80)
  {
    sub_1A4A29E00();
    sub_1A4A2A6C0();
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147A80);
    }
  }
}

unint64_t sub_1A4A2A6C0()
{
  result = qword_1EB147A88;
  if (!qword_1EB147A88)
  {
    sub_1A4A29E00();
    sub_1A4A2A740();
    sub_1A3F94B48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147A88);
  }

  return result;
}

unint64_t sub_1A4A2A740()
{
  result = qword_1EB147A90;
  if (!qword_1EB147A90)
  {
    sub_1A4A29E80();
    sub_1A4A2A7F0(&qword_1EB147A98, sub_1A4A29F00);
    sub_1A3F96350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147A90);
  }

  return result;
}

uint64_t sub_1A4A2A7F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4A2A838(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C71380(0, a3, a4, MEMORY[0x1E6981F40]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A4A2A8B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1A3C71380(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1A4A2A914(uint64_t a1, uint64_t a2)
{
  sub_1A47EB7C8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4A2A978(uint64_t a1)
{
  sub_1A47EB7C8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A4A2A9D4()
{
  if (!qword_1EB147AA8)
  {
    sub_1A3C2DEB8(255, &qword_1EB147A20, &type metadata for ParallaxPosterColor, MEMORY[0x1E69E62F8]);
    sub_1A4A2AA64();
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147AA8);
    }
  }
}

unint64_t sub_1A4A2AA64()
{
  result = qword_1EB147AB0;
  if (!qword_1EB147AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147AB0);
  }

  return result;
}

uint64_t sub_1A4A2ABE8(uint64_t a1)
{
  v3 = OBJC_IVAR___PXStoryDefaultAssetCollectionAnnotator_sourceObject;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1A4A2AC40@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x58))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4A2AC9C(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x60);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_1A4A2AD60(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    sub_1A4A2AEA0();
    swift_allocError();
    *v4 = xmmword_1A537E080;
  }

  else
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      v9 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x58);
      v10 = swift_unknownObjectRetain();
      v11 = v9(v10);
      PHMemoryChangeRequest.setUserCreated(from:)(v11);
      swift_unknownObjectRelease();
      [v8 setPendingState_];
      return swift_unknownObjectRelease();
    }

    sub_1A4A2AEA0();
    swift_allocError();
    *v13 = a2;
    v13[1] = a3 | 0x4000000000000000;
    swift_unknownObjectRetain();
  }

  return swift_willThrow();
}

unint64_t sub_1A4A2AEA0()
{
  result = qword_1EB1E8070[0];
  if (!qword_1EB1E8070[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1E8070);
  }

  return result;
}

uint64_t sub_1A4A2AEF4(_BYTE *a1, uint64_t a2)
{
  *(v2 + 144) = a2;
  *(v2 + 176) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1A4A2AF1C, 0, 0);
}

uint64_t sub_1A4A2AF1C()
{
  if (qword_1EB1E8050 != -1)
  {
    swift_once();
  }

  v1 = sub_1A5246F24();
  __swift_project_value_buffer(v1, qword_1EB1E8058);
  swift_unknownObjectRetain();
  v2 = sub_1A5246F04();
  v3 = sub_1A524D264();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 176);
    v5 = swift_slowAlloc();
    swift_slowAlloc();
    *v5 = 136446722;
    *(v0 + 80) = v4;
    sub_1A4A2BA2C();
    sub_1A524EA44();
    sub_1A3C2EF94();
  }

  if (*(v0 + 176) == 1)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    v7 = v0[18];
    if (v6)
    {
      v8 = v6;
      swift_unknownObjectRetain();
      v9 = [v8 photoLibrary];
      v0[19] = v9;
      if (v9)
      {
        v10 = v9;
        v11 = swift_allocObject();
        *(v11 + 16) = v8;
        v0[14] = sub_1A4A2B8E8;
        v0[15] = v11;
        v12 = MEMORY[0x1E69E9820];
        v0[10] = MEMORY[0x1E69E9820];
        v0[11] = 1107296256;
        v0[12] = sub_1A3C2E0D0;
        v0[13] = &block_descriptor_332;
        v13 = _Block_copy(v0 + 10);
        v0[20] = v13;
        swift_unknownObjectRetain();

        v0[2] = v0;
        v0[3] = sub_1A4A175CC;
        v14 = swift_continuation_init();
        sub_1A43AC0B0();
        v0[17] = v15;
        v0[10] = v12;
        v0[11] = 1107296256;
        v0[12] = sub_1A4077B64;
        v0[13] = &block_descriptor_3_15;
        v0[14] = v14;
        [v10 performChanges:v13 completionHandler:v0 + 10];
        v9 = v0 + 2;
      }

      else
      {
        __break(1u);
      }

      return MEMORY[0x1EEE6DEC8](v9);
    }

    sub_1A4A2AEA0();
    swift_allocError();
    *v17 = v7;
    v17[1] = 0;
    swift_willThrow();
    swift_unknownObjectRetain();
  }

  else
  {
    sub_1A4A2AEA0();
    swift_allocError();
    *v16 = xmmword_1A537E090;
    swift_willThrow();
  }

  v18 = v0[1];

  return v18();
}

id StoryDefaultAssetCollectionAnnotator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StoryDefaultAssetCollectionAnnotator.init()()
{
  *&v0[OBJC_IVAR___PXStoryDefaultAssetCollectionAnnotator_sourceObject] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryDefaultAssetCollectionAnnotator();
  return objc_msgSendSuper2(&v2, sel_init);
}

id StoryDefaultAssetCollectionAnnotator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryDefaultAssetCollectionAnnotator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A4A2B74C(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x78);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A3D60150;

  return v9(a1, a2);
}

void sub_1A4A2B884()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1E8058);
  __swift_project_value_buffer(v0, qword_1EB1E8058);
  sub_1A5246EF4();
}

void sub_1A4A2B8E8()
{
  v1 = [objc_opt_self() changeRequestForMemory_];
  if (v1)
  {
    oslog = v1;
    [v1 setPendingState:0];
  }

  else
  {
    if (qword_1EB1E8050 != -1)
    {
      swift_once();
    }

    v2 = sub_1A5246F24();
    __swift_project_value_buffer(v2, qword_1EB1E8058);
    oslog = sub_1A5246F04();
    v3 = sub_1A524D254();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1A3C1C000, oslog, v3, "Couldn't create change request", v4, 2u);
      MEMORY[0x1A590EEC0](v4, -1, -1);
    }
  }
}

unint64_t sub_1A4A2BA2C()
{
  result = qword_1EB147AC8;
  if (!qword_1EB147AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147AC8);
  }

  return result;
}

uint64_t dispatch thunk of StoryDefaultAssetCollectionAnnotator.addAnnotation(_:to:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x78);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A3D60150;

  return v9(a1, a2);
}

uint64_t sub_1A4A2BCE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 16))
  {
    return (*a1 + 126);
  }

  v3 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A4A2BD40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1A4A2C024()
{
  v1 = v0;
  sub_1A4A2C1B4();
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  v3 = [v2 enableBatchedSearchResults];

  swift_getKeyPath();
  sub_1A4A2D9E0(&qword_1EB147AD0, type metadata accessor for PhotosBatchedSearchStateModel);
  sub_1A52415D4();

  return (*(*(v1 + 16) + 16) >> 4 > 0x270uLL) & v3;
}

void sub_1A4A2C110()
{
  swift_getKeyPath();
  sub_1A4A2D9E0(&qword_1EB147AD0, type metadata accessor for PhotosBatchedSearchStateModel);
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

unint64_t sub_1A4A2C1B4()
{
  result = qword_1EB120A48;
  if (!qword_1EB120A48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB120A48);
  }

  return result;
}

void sub_1A4A2C200(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4A2D9E0(&qword_1EB147AD0, type metadata accessor for PhotosBatchedSearchStateModel);
  sub_1A52415D4();

  *a2 = *(v3 + 16);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t type metadata accessor for PhotosBatchedSearchStateModel()
{
  result = qword_1EB1E81B0;
  if (!qword_1EB1E81B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4A2C324(uint64_t a1)
{
  if (sub_1A3D3D27C(*(v1 + 16), a1))
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4A2D9E0(&qword_1EB147AD0, type metadata accessor for PhotosBatchedSearchStateModel);
    sub_1A52415C4();
  }
}

uint64_t sub_1A4A2C468()
{
  swift_getKeyPath();
  sub_1A4A2D9E0(&qword_1EB147AD0, type metadata accessor for PhotosBatchedSearchStateModel);
  sub_1A52415D4();

  return *(*(v0 + 16) + 16);
}

uint64_t sub_1A4A2C50C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1A4A2D9E0(&qword_1EB147AD0, type metadata accessor for PhotosBatchedSearchStateModel);
  sub_1A52415D4();

  v3 = OBJC_IVAR____TtC12PhotosUICore29PhotosBatchedSearchStateModel__searchResultsId;
  swift_beginAccess();
  return sub_1A4A2D960(v5 + v3, a1, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
}

uint64_t sub_1A4A2C5F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4A2D9E0(&qword_1EB147AD0, type metadata accessor for PhotosBatchedSearchStateModel);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore29PhotosBatchedSearchStateModel__searchResultsId;
  swift_beginAccess();
  return sub_1A4A2D960(v3 + v4, a2, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
}

uint64_t sub_1A4A2C6D4(uint64_t a1)
{
  v2 = MEMORY[0x1E69695A8];
  sub_1A4A2CF30(0, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - v4;
  sub_1A4A2D960(a1, &v7 - v4, &qword_1EB12AFA0, v2);
  return sub_1A4A2C790(v5);
}

uint64_t sub_1A4A2C790(uint64_t a1)
{
  v3 = MEMORY[0x1E69695A8];
  sub_1A4A2CF30(0, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC12PhotosUICore29PhotosBatchedSearchStateModel__searchResultsId;
  swift_beginAccess();
  sub_1A4A2D960(v1 + v7, v6, &qword_1EB12AFA0, v3);
  v8 = sub_1A4A2E360(v6, a1);
  sub_1A3C331F0(v6, &qword_1EB12AFA0, v3);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_1A4A2D9E0(&qword_1EB147AD0, type metadata accessor for PhotosBatchedSearchStateModel);
    sub_1A52415C4();
  }

  else
  {
    swift_beginAccess();
    sub_1A4A2E6B0(a1, v1 + v7);
    swift_endAccess();
  }

  return sub_1A3C331F0(a1, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
}

uint64_t sub_1A4A2C998()
{
  swift_getKeyPath();
  sub_1A4A2D9E0(&qword_1EB147AD0, type metadata accessor for PhotosBatchedSearchStateModel);
  sub_1A52415D4();

  return *(v0 + OBJC_IVAR____TtC12PhotosUICore29PhotosBatchedSearchStateModel__currentOffset);
}

uint64_t sub_1A4A2CA40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4A2D9E0(&qword_1EB147AD0, type metadata accessor for PhotosBatchedSearchStateModel);
  sub_1A52415D4();

  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore29PhotosBatchedSearchStateModel__currentOffset);
  return result;
}

uint64_t sub_1A4A2CB18(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore29PhotosBatchedSearchStateModel__currentOffset) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4A2D9E0(&qword_1EB147AD0, type metadata accessor for PhotosBatchedSearchStateModel);
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A4A2CC24(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1A4A2CC64(a1);
  return v2;
}

uint64_t sub_1A4A2CC64(uint64_t a1)
{
  sub_1A4A2CF30(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for PhotosSearchResults(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v13 = OBJC_IVAR____TtC12PhotosUICore29PhotosBatchedSearchStateModel__searchResultsId;
  v14 = sub_1A52411C4();
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  *(v1 + OBJC_IVAR____TtC12PhotosUICore29PhotosBatchedSearchStateModel__currentOffset) = 0;
  sub_1A5241604();
  sub_1A4A2D960(a1, v8, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1A3C331F0(a1, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
    sub_1A3C331F0(v8, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
  }

  else
  {
    sub_1A3DAF754(v8, v12);
    sub_1A4A2CF84(v12, v5);
    (*(v10 + 56))(v5, 0, 1, v9);
    sub_1A4A2CFE8(v5);
    sub_1A3C331F0(a1, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
    sub_1A3C331F0(v5, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
    sub_1A4A2D900(v12, type metadata accessor for PhotosSearchResults);
  }

  return v1;
}

void sub_1A4A2CF30(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A4A2CF84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosSearchResults(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4A2CFE8(uint64_t a1)
{
  v2 = v1;
  v67 = a1;
  v3 = sub_1A52411C4();
  v68 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v54 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45526E4();
  v66 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4A2CF30(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v64 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v53 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  v15 = MEMORY[0x1E69695A8];
  sub_1A4A2CF30(0, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v62 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v57 = &v53 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v53 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v53 - v24;
  swift_getKeyPath();
  v26 = OBJC_IVAR____TtC12PhotosUICore29PhotosBatchedSearchStateModel___observationRegistrar;
  v70 = v2;
  v55 = sub_1A4A2D9E0(&qword_1EB147AD0, type metadata accessor for PhotosBatchedSearchStateModel);
  v56 = v26;
  sub_1A52415D4();

  v27 = OBJC_IVAR____TtC12PhotosUICore29PhotosBatchedSearchStateModel__searchResultsId;
  swift_beginAccess();
  v65 = v2;
  sub_1A4A2D960(v2 + v27, v25, &qword_1EB12AFA0, v15);
  sub_1A4A2D960(v67, v14, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
  v28 = type metadata accessor for PhotosSearchResults(0);
  v29 = *(v28 - 8);
  v60 = *(v29 + 48);
  v61 = v28;
  v59 = v29 + 48;
  if (v60(v14, 1) == 1)
  {
    sub_1A3C331F0(v14, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
    v30 = 1;
    v31 = v68;
  }

  else
  {
    v31 = v68;
    (*(v68 + 16))(v22, v14, v3);
    sub_1A4A2D900(v14, type metadata accessor for PhotosSearchResults);
    v30 = 0;
  }

  v58 = *(v31 + 56);
  v58(v22, v30, 1, v3);
  v32 = *(v66 + 48);
  v33 = MEMORY[0x1E69695A8];
  sub_1A4A2D960(v25, v7, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
  sub_1A4A2D960(v22, &v7[v32], &qword_1EB12AFA0, v33);
  v34 = *(v31 + 48);
  if (v34(v7, 1, v3) == 1)
  {
    v35 = MEMORY[0x1E69695A8];
    sub_1A3C331F0(v22, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
    sub_1A3C331F0(v25, &qword_1EB12AFA0, v35);
    if (v34(&v7[v32], 1, v3) == 1)
    {
      return sub_1A3C331F0(v7, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
    }
  }

  else
  {
    v37 = v57;
    sub_1A4A2D960(v7, v57, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
    if (v34(&v7[v32], 1, v3) != 1)
    {
      v48 = v68;
      v49 = &v7[v32];
      v50 = v54;
      (*(v68 + 32))(v54, v49, v3);
      sub_1A4A2D9E0(&unk_1EB12AFB0, MEMORY[0x1E69695A8]);
      LODWORD(v66) = sub_1A524C594();
      v51 = *(v48 + 8);
      v51(v50, v3);
      v52 = MEMORY[0x1E69695A8];
      sub_1A3C331F0(v22, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
      sub_1A3C331F0(v25, &qword_1EB12AFA0, v52);
      v51(v37, v3);
      result = sub_1A3C331F0(v7, &qword_1EB12AFA0, v52);
      v39 = v65;
      if (v66)
      {
        return result;
      }

      goto LABEL_10;
    }

    v38 = MEMORY[0x1E69695A8];
    sub_1A3C331F0(v22, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
    sub_1A3C331F0(v25, &qword_1EB12AFA0, v38);
    (*(v68 + 8))(v37, v3);
  }

  sub_1A4A2D900(v7, sub_1A45526E4);
  v39 = v65;
LABEL_10:
  v40 = v67;
  v41 = v63;
  sub_1A4A2D960(v67, v63, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
  v43 = v60;
  v42 = v61;
  if ((v60)(v41, 1, v61) == 1)
  {
    sub_1A3C331F0(v41, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
    v44 = 1;
    v45 = v64;
    v46 = v62;
  }

  else
  {
    v46 = v62;
    (*(v68 + 16))(v62, v41, v3);
    sub_1A4A2D900(v41, type metadata accessor for PhotosSearchResults);
    v44 = 0;
    v45 = v64;
  }

  v58(v46, v44, 1, v3);
  sub_1A4A2C790(v46);
  sub_1A4A2D960(v40, v45, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
  if (v43(v45, 1, v42) != 1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C331F0(v45, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
  result = sub_1A4A2C324(MEMORY[0x1E69E7CC0]);
  if (*(v39 + OBJC_IVAR____TtC12PhotosUICore29PhotosBatchedSearchStateModel__currentOffset))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v53 - 2) = v39;
    *(&v53 - 1) = 0;
    v69 = v39;
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A4A2D900(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4A2D960(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1A4A2CF30(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A4A2D9E0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A4A2DA28(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_1A4A2D9E0(&qword_1EB147AD0, type metadata accessor for PhotosBatchedSearchStateModel);
  sub_1A52415D4();

  if (*(*(v1 + 16) + 16))
  {
    sub_1A4A2C1B4();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [ObjCClassFromMetadata sharedInstance];
    v6 = [v5 enableBatchedSearchResults];

    swift_getKeyPath();
    sub_1A52415D4();

    if (*(*(v2 + 16) + 16) >> 4 < 0x271uLL || !v6 || (swift_getKeyPath(), sub_1A52415D4(), , v7 = OBJC_IVAR____TtC12PhotosUICore29PhotosBatchedSearchStateModel__currentOffset, v8 = *(v2 + OBJC_IVAR____TtC12PhotosUICore29PhotosBatchedSearchStateModel__currentOffset), swift_getKeyPath(), sub_1A52415D4(), , v8 >= *(*(v2 + 16) + 16)))
    {
      swift_getKeyPath();
      sub_1A52415D4();

      goto LABEL_20;
    }

    swift_getKeyPath();
    sub_1A52415D4();

    v9 = *(v2 + v7);
    v10 = [ObjCClassFromMetadata sharedInstance];
    v11 = [v10 batchedSearchResultSubsequentBatchSize];

    v13 = 100;
    if (v11 > 100)
    {
      v13 = v11;
    }

    v14 = __OFADD__(v9, v13);
    v15 = v9 + v13;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      swift_getKeyPath();
      sub_1A52415D4();

      if (*(*(v2 + 16) + 16) <= v15)
      {
        swift_getKeyPath();
        sub_1A52415D4();

        v15 = *(*(v2 + 16) + 16) - 1;
      }

      if (a1)
      {
        a1 = 0;
      }

      else
      {
        swift_getKeyPath();
        sub_1A52415D4();

        a1 = *(v2 + v7);
      }

      if (v15 >= a1)
      {
        swift_getKeyPath();
        sub_1A52415D4();

        if ((a1 & 0x8000000000000000) == 0)
        {
          v12 = *(v2 + 16);
          v16 = *(v12 + 16);
          if (v16 >= a1 && v16 >= v15)
          {
            if (v16 == v15 - a1)
            {
LABEL_20:
              _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
            }

            goto LABEL_25;
          }

LABEL_24:
          __break(1u);
LABEL_25:
          sub_1A3ECD684(v12, v12 + 32, a1, (2 * v15) | 1);
          return;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_23;
  }
}

uint64_t sub_1A4A2DDEC()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1A4A2D9E0(&qword_1EB147AD0, type metadata accessor for PhotosBatchedSearchStateModel);
  sub_1A52415D4();

  if (!*(*(v0 + 16) + 16))
  {
    goto LABEL_14;
  }

  sub_1A4A2C1B4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [ObjCClassFromMetadata sharedInstance];
  v4 = [v3 enableBatchedSearchResults];

  swift_getKeyPath();
  sub_1A52415D4();

  if (*(*(v1 + 16) + 16) >> 4 < 0x271uLL)
  {
    return result;
  }

  if (!v4)
  {
    return result;
  }

  swift_getKeyPath();
  sub_1A52415D4();

  v6 = OBJC_IVAR____TtC12PhotosUICore29PhotosBatchedSearchStateModel__currentOffset;
  v7 = *(v1 + OBJC_IVAR____TtC12PhotosUICore29PhotosBatchedSearchStateModel__currentOffset);
  swift_getKeyPath();
  sub_1A52415D4();

  if (v7 >= *(*(v1 + 16) + 16))
  {
    return result;
  }

  swift_getKeyPath();
  sub_1A52415D4();

  v8 = *(v1 + v6);
  v9 = [ObjCClassFromMetadata sharedInstance];
  v10 = [v9 batchedSearchResultSubsequentBatchSize];

  v11 = 100;
  if (v10 > 100)
  {
    v11 = v10;
  }

  v12 = __OFADD__(v8, v11);
  v13 = v8 + v11;
  if (v12)
  {
    __break(1u);
LABEL_14:
    result = sub_1A524E6E4();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  sub_1A52415D4();

  if (*(*(v1 + 16) + 16) <= v13)
  {
    swift_getKeyPath();
    sub_1A52415D4();

    v13 = *(*(v1 + 16) + 16) - 1;
  }

  if (*(v1 + v6) != v13 + 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A4A2E188()
{

  sub_1A3C331F0(v0 + OBJC_IVAR____TtC12PhotosUICore29PhotosBatchedSearchStateModel__searchResultsId, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
  v1 = OBJC_IVAR____TtC12PhotosUICore29PhotosBatchedSearchStateModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1A4A2E260()
{
  sub_1A4A2CF30(319, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
  if (v0 <= 0x3F)
  {
    sub_1A5241614();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1A4A2E360(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A52411C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69695A8];
  sub_1A4A2CF30(0, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - v10;
  sub_1A45526E4();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 56);
  sub_1A4A2D960(a1, v14, &qword_1EB12AFA0, v8);
  sub_1A4A2D960(a2, &v14[v16], &qword_1EB12AFA0, v8);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) != 1)
  {
    sub_1A4A2D960(v14, v11, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
    if (v17(&v14[v16], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v16], v4);
      sub_1A4A2D9E0(&unk_1EB12AFB0, MEMORY[0x1E69695A8]);
      v19 = sub_1A524C594();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v11, v4);
      sub_1A3C331F0(v14, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
      v18 = v19 ^ 1;
      return v18 & 1;
    }

    (*(v5 + 8))(v11, v4);
    goto LABEL_6;
  }

  if (v17(&v14[v16], 1, v4) != 1)
  {
LABEL_6:
    sub_1A4A2D900(v14, sub_1A45526E4);
    v18 = 1;
    return v18 & 1;
  }

  sub_1A3C331F0(v14, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1A4A2E6B0(uint64_t a1, uint64_t a2)
{
  sub_1A4A2CF30(0, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4A2E730()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore29PhotosBatchedSearchStateModel__searchResultsId;
  swift_beginAccess();
  sub_1A4A2E6B0(v1, v2 + v3);
  return swift_endAccess();
}

id PXRearrangeTransientCollectionListAction.init(collectionList:movedObjects:targetObject:)(void *a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCollectionList:a1 movedObjects:a2 targetObject:a3];

  swift_unknownObjectRelease();
  return v5;
}

{
  v6 = OBJC_IVAR___PXRearrangeTransientCollectionListAction_targetObject;
  *&v3[OBJC_IVAR___PXRearrangeTransientCollectionListAction_targetObject] = 0;
  *&v3[OBJC_IVAR___PXRearrangeTransientCollectionListAction_undoOrderedMediaTypes] = 0;
  *&v3[OBJC_IVAR___PXRearrangeTransientCollectionListAction_redoOrderedMediaTypes] = 0;
  *&v3[OBJC_IVAR___PXRearrangeTransientCollectionListAction_undoOrderedUtilityTypes] = 0;
  *&v3[OBJC_IVAR___PXRearrangeTransientCollectionListAction_redoOrderedUtilityTypes] = 0;
  *&v3[OBJC_IVAR___PXRearrangeTransientCollectionListAction_movedObjects] = a2;
  swift_beginAccess();
  *&v3[v6] = a3;
  v7 = a3;
  swift_unknownObjectRetain();
  result = [a1 photoLibrary];
  if (result)
  {
    v9 = result;
    v11.receiver = v3;
    v11.super_class = PXRearrangeTransientCollectionListAction;
    v10 = objc_msgSendSuper2(&v11, sel_initWithPhotoLibrary_, result);

    swift_unknownObjectRelease();
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void PXRearrangeTransientCollectionListAction.perform(_:)(void (*a1)(uint64_t, void))
{
  v2 = v1;
  v4 = [objc_msgSend(v1 movedObjects)];
  swift_unknownObjectRelease();
  if (v4)
  {
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
  }

  v46[0] = v44;
  v46[1] = v45;
  if (!*(&v45 + 1))
  {
    sub_1A3C35B00(v46);
    goto LABEL_11;
  }

  sub_1A3C52C70(0, &qword_1EB126AC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v8 = 0;
LABEL_12:
    a1(0, 0);
    goto LABEL_13;
  }

  if ([v43 px_isMediaTypeSmartAlbum])
  {
    v41 = [v43 assetCollectionSubtype];
    v5 = [v2 targetObject];
    if (v5)
    {
      v6 = v5;
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      v8 = v7;
      if (v7)
      {
        v9 = [v7 assetCollectionSubtype];
        v10 = 0;
LABEL_22:
        v22 = [v2 photoLibrary];
        v23 = sub_1A41CE3A4(v22);

        v24 = (*(*v23 + 248))();

        *&v2[OBJC_IVAR___PXRearrangeTransientCollectionListAction_undoOrderedMediaTypes] = v24;

        v25 = [v2 photoLibrary];
        v26 = sub_1A41CE3A4(v25);

        (*(*v26 + 280))(v41, v9, v10);

        v27 = [v2 photoLibrary];
        v28 = sub_1A41CE3A4(v27);

        v29 = (*(*v28 + 248))();

        *&v2[OBJC_IVAR___PXRearrangeTransientCollectionListAction_redoOrderedMediaTypes] = v29;

        a1(1, 0);

        goto LABEL_13;
      }

      v9 = 0;
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    v10 = 1;
    goto LABEL_22;
  }

  v8 = v43;
  v11 = sub_1A4A49EB4();

  if (v11 == 17)
  {
    goto LABEL_12;
  }

  v12 = sub_1A4A4976C(v11);
  v42 = v13;
  v14 = [v2 targetObject];
  if (v14)
  {
    v15 = v14;
    v39 = v12;
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = v16;
      v18 = v15;
      v19 = sub_1A4A49EB4();

      v40 = v17;
      if (v19 == 17)
      {
        v20 = 0;
        v21 = 0xE000000000000000;
      }

      else
      {
        v20 = sub_1A4A4976C(v19);
        v21 = v30;
      }
    }

    else
    {

      v20 = 0;
      v40 = 0;
      v21 = 0xE000000000000000;
    }

    v12 = v39;
  }

  else
  {
    v20 = 0;
    v40 = 0;
    v21 = 0xE000000000000000;
  }

  v31 = [v2 photoLibrary];
  v32 = sub_1A3D63EA0(v31);

  v33 = (*(*v32 + 192))();

  *&v2[OBJC_IVAR___PXRearrangeTransientCollectionListAction_undoOrderedUtilityTypes] = v33;

  v34 = [v2 photoLibrary];
  v35 = sub_1A3D63EA0(v34);

  (*(*v35 + 232))(v12, v42, v20, v21);

  v36 = [v2 photoLibrary];
  v37 = sub_1A3D63EA0(v36);

  v38 = (*(*v37 + 192))();

  *&v2[OBJC_IVAR___PXRearrangeTransientCollectionListAction_redoOrderedUtilityTypes] = v38;

  a1(1, 0);

LABEL_13:
}

void sub_1A4A2F160(void *a1, int a2, void *aBlock, void *a4, void *a5)
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a1;
  sub_1A4A2F9C8(v9, v8, a4, a5);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t sub_1A4A2F1F8(uint64_t (*a1)(void, void), uint64_t a2, void *a3, void *a4)
{
  if (*(v4 + *a3))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (*(v4 + *a4))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return a1(0, 0);
}

void sub_1A4A2F494(char *a1, uint64_t a2)
{
  v4 = [objc_msgSend(a1 movedObjects)];
  swift_unknownObjectRelease();
  if (v4)
  {
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  v43[0] = v41;
  v43[1] = v42;
  if (!*(&v42 + 1))
  {
    sub_1A3C35B00(v43);
    goto LABEL_11;
  }

  sub_1A3C52C70(0, &qword_1EB126AC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v5 = v40;
  if ([v40 px_isMediaTypeSmartAlbum])
  {
    v6 = [v40 assetCollectionSubtype];
    v7 = [a1 targetObject];
    if (v7)
    {
      v8 = v7;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      v10 = v9;
      if (v9)
      {
        v11 = [v9 assetCollectionSubtype];
        v12 = 0;
LABEL_21:
        v23 = [a1 photoLibrary];
        v24 = sub_1A41CE3A4(v23);

        v25 = (*(*v24 + 248))();

        *&a1[OBJC_IVAR___PXRearrangeTransientCollectionListAction_undoOrderedMediaTypes] = v25;

        v26 = [a1 photoLibrary];
        v27 = sub_1A41CE3A4(v26);

        (*(*v27 + 280))(v6, v11, v12);

        v28 = [a1 photoLibrary];
        v29 = sub_1A41CE3A4(v28);

        v30 = (*(*v29 + 248))();

        v31 = OBJC_IVAR___PXRearrangeTransientCollectionListAction_redoOrderedMediaTypes;
LABEL_27:
        *&a1[v31] = v30;

        (*(a2 + 16))(a2, 1, 0);

        goto LABEL_28;
      }

      v11 = 0;
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    v12 = 1;
    goto LABEL_21;
  }

  v10 = v40;
  v13 = sub_1A4A49EB4();

  if (v13 != 17)
  {
    v39 = sub_1A4A4976C(v13);
    v15 = v14;
    v16 = [a1 targetObject];
    if (v16)
    {
      v17 = v16;
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        v18 = v17;
        v19 = sub_1A4A49EB4();

        if (v19 != 17)
        {
          v20 = sub_1A4A4976C(v19);
          v22 = v21;
LABEL_26:
          v32 = [a1 photoLibrary];
          v33 = sub_1A3D63EA0(v32);

          v34 = (*(*v33 + 192))();

          *&a1[OBJC_IVAR___PXRearrangeTransientCollectionListAction_undoOrderedUtilityTypes] = v34;

          v35 = [a1 photoLibrary];
          v36 = sub_1A3D63EA0(v35);

          (*(*v36 + 232))(v39, v15, v20, v22);

          v37 = [a1 photoLibrary];
          v38 = sub_1A3D63EA0(v37);

          v30 = (*(*v38 + 192))();

          v31 = OBJC_IVAR___PXRearrangeTransientCollectionListAction_redoOrderedUtilityTypes;
          goto LABEL_27;
        }
      }

      else
      {
      }

      v20 = 0;
    }

    else
    {
      v20 = 0;
      v5 = 0;
    }

    v22 = 0xE000000000000000;
    goto LABEL_26;
  }

LABEL_12:
  (*(a2 + 16))(a2, 0, 0);
LABEL_28:
}

uint64_t sub_1A4A2F9C8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (*(a1 + *a3))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (*(a1 + *a4))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v4 = *(a2 + 16);

  return v4(a2, 0, 0);
}

uint64_t StoryAssetCollectionAnnotation.description.getter()
{
  if (*v0)
  {
    return 0x6465766173;
  }

  else
  {
    return 0x6E6569736E617274;
  }
}

uint64_t StoryAssetCollectionAnnotation.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

unint64_t sub_1A4A2FBE4()
{
  result = qword_1EB147B08;
  if (!qword_1EB147B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147B08);
  }

  return result;
}

uint64_t sub_1A4A2FC38()
{
  if (*v0)
  {
    return 0x6465766173;
  }

  else
  {
    return 0x6E6569736E617274;
  }
}

uint64_t dispatch thunk of StoryAssetCollectionAnnotator.addAnnotation(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A3D60150;

  return v11(a1, a2, a3, a4);
}

uint64_t PXStoryUserActionKind.description.getter(unint64_t a1)
{
  v1 = PXStoryUserActionKindDescription(a1);
  v2 = sub_1A524C674();

  return v2;
}

uint64_t sub_1A4A2FE30()
{
  v1 = PXStoryUserActionKindDescription(*v0);
  v2 = sub_1A524C674();

  return v2;
}

unint64_t sub_1A4A2FE80(void *a1)
{
  v2 = sub_1A5244584();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1;
  v6 = a1;
  sub_1A3DBD9A0();
  v7 = 0;
  if (swift_dynamicCast())
  {
    v8 = (*(v3 + 88))(v5, v2);
    if (v8 == *MEMORY[0x1E69C0F28])
    {
      v7 = 0xD000000000000012;
      (*(v3 + 8))(v5, v2);
    }

    else if (v8 == *MEMORY[0x1E69C0EF8])
    {
      v7 = 0xD00000000000001FLL;
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v7 = 0;
    }
  }

  return v7;
}

uint64_t sub_1A4A30034(void *a1)
{
  v2 = sub_1A52446F4();
  v78 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v80 = &v69[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v81 = &v69[-v5];
  v79 = sub_1A5244554();
  v6 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v8 = &v69[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1A52446E4();
  v73 = *(v9 - 8);
  v74 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v72 = &v69[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1A5244574();
  v76 = *(v11 - 8);
  v77 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v75 = &v69[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1A5244584();
  v84 = *(v13 - 8);
  v85 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v69[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v69[-v16];
  v18 = sub_1A5244B34();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v83 = &v69[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v69[-v22];
  v89 = a1;
  v24 = a1;
  sub_1A3DBD9A0();
  if (swift_dynamicCast())
  {
    v25 = (*(v19 + 88))(v23, v18);
    if (v25 == *MEMORY[0x1E69C1170])
    {
      goto LABEL_3;
    }

    if (v25 == *MEMORY[0x1E69C1150])
    {
      (*(v19 + 8))(v23, v18);
      goto LABEL_16;
    }

    if (v25 == *MEMORY[0x1E69C1178])
    {
LABEL_3:
      (*(v19 + 96))(v23, v18);

      sub_1A4643C24();
      sub_1A3F637D4(v23 + *(v26 + 48));
LABEL_16:
      v30 = v89;
      goto LABEL_17;
    }

    (*(v19 + 8))(v23, v18);
  }

  v86 = a1;
  v27 = a1;
  v28 = swift_dynamicCast();
  v29 = v85;
  if (!v28)
  {
LABEL_13:

    v89 = a1;
    v31 = a1;
    if (swift_dynamicCast())
    {
      v32 = v84;
      v70 = (*(v84 + 88))(v17, v29);
      v71 = v2;
      v33 = *MEMORY[0x1E69C0F08];
      (*(v32 + 8))(v17, v85);
      v34 = v70 == v33;
      v29 = v85;
      v2 = v71;
      if (v34)
      {
        goto LABEL_16;
      }
    }

    v89 = a1;
    v40 = a1;
    v41 = v83;
    if (swift_dynamicCast())
    {
      v42 = (*(v19 + 88))(v41, v18);
      if (v42 == *MEMORY[0x1E69C1158])
      {
        (*(v19 + 96))(v41, v18);

        sub_1A4643C24();
        v44 = *(v43 + 48);
        v45 = sub_1A524C634();
        v46 = PXMemoryCreationLocalizedString(v45);

        v38 = sub_1A524C674();
        sub_1A3F637D4(v41 + v44);
LABEL_25:

        return v38;
      }

      if (v42 == *MEMORY[0x1E69C1168])
      {
        (*(v19 + 96))(v41, v18);
        v47 = sub_1A524C634();
        v48 = PXMemoryCreationLocalizedString(v47);

        v38 = sub_1A524C674();
        v49 = sub_1A5244DD4();
        (*(*(v49 - 8) + 8))(v41, v49);
        goto LABEL_25;
      }

      (*(v19 + 8))(v41, v18);
    }

    v88 = a1;
    v50 = a1;
    v51 = v82;
    if (swift_dynamicCast())
    {
      v52 = (*(v84 + 88))(v51, v29);
      if (v52 == *MEMORY[0x1E69C0F18])
      {
LABEL_29:
        (*(v84 + 8))(v51, v29);

        v35 = sub_1A524C634();
        v36 = PXMemoryCreationLocalizedString(v35);
        goto LABEL_18;
      }

      if (v52 == *MEMORY[0x1E69C0F28])
      {
        (*(v84 + 8))(v51, v29);
LABEL_32:

        return 0;
      }

      if (v52 == *MEMORY[0x1E69C0F20])
      {
        goto LABEL_29;
      }

      if (v52 == *MEMORY[0x1E69C0F10])
      {
        (*(v84 + 96))(v51, v29);
        (*(v6 + 32))(v8, v51, v79);
        v53 = v8;
        sub_1A5244544();
        v54 = v78;
        (*(v78 + 104))(v80, *MEMORY[0x1E69C0FB0], v2);
        sub_1A4A316AC(&qword_1EB147B10, MEMORY[0x1E69C0FB8]);
        sub_1A524C9C4();
        sub_1A524C9C4();
        if (v89 == v86 && v90 == v87)
        {
          v55 = *(v54 + 8);
          v55(v80, v2);
          v55(v81, v2);
        }

        else
        {
          sub_1A524EAB4();
          v65 = *(v54 + 8);
          v65(v80, v2);
          v65(v81, v2);
        }

        v66 = sub_1A524C634();
        v67 = PXMemoryCreationLocalizedString(v66);

        v38 = sub_1A524C674();
        (*(v6 + 8))(v53, v79);
        goto LABEL_42;
      }

      if (v52 == *MEMORY[0x1E69C0F00])
      {
        (*(v84 + 96))(v51, v29);
        v57 = v75;
        v56 = v76;
        v58 = v77;
        (*(v76 + 32))(v75, v51, v77);
        v59 = sub_1A5244564();
        v61 = v72;
        v60 = v73;
        v62 = v74;
        (*(v73 + 104))(v72, *MEMORY[0x1E69C0F90], v74);
        sub_1A4A30D08(v61, v59);

        (*(v60 + 8))(v61, v62);
        v63 = sub_1A524C634();
        v64 = PXMemoryCreationLocalizedString(v63);

        v38 = sub_1A524C674();
        (*(v56 + 8))(v57, v58);
LABEL_42:

        return v38;
      }

      if (v52 == *MEMORY[0x1E69C0EF8])
      {
        goto LABEL_32;
      }

      (*(v84 + 8))(v51, v29);
    }

    v86 = a1;
    v68 = a1;
    if (swift_dynamicCast())
    {
      v38 = v89;
      if (v90 >= 4)
      {

        return v38;
      }

      sub_1A440B338(v89, v90);
    }

    v35 = sub_1A524C634();
    v36 = PXMemoryCreationLocalizedString(v35);
    goto LABEL_18;
  }

  if (v90 != 3 && v90 != 1)
  {
    sub_1A440B338(v89, v90);
    goto LABEL_13;
  }

  v30 = v86;
LABEL_17:

  v35 = sub_1A524C634();
  v36 = PXMemoryCreationLocalizedString(v35);
LABEL_18:
  v37 = v36;

  v38 = sub_1A524C674();
  return v38;
}

uint64_t sub_1A4A30D08(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A52446E4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1A4A316AC(&qword_1EB147B18, MEMORY[0x1E69C0F98]), v7 = sub_1A524C4A4(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1A4A316AC(&qword_1EB147B20, MEMORY[0x1E69C0F98]);
      v15 = sub_1A524C594();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

id sub_1A4A30F20(void *a1)
{
  v2 = sub_1A5244584();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v46[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v46[-v7];
  v9 = sub_1A5244B34();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v46[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46[-v14];
  v48 = a1;
  v16 = a1;
  sub_1A3DBD9A0();
  if (swift_dynamicCast())
  {
    v17 = (*(v10 + 88))(v15, v9);
    if (v17 == *MEMORY[0x1E69C1170])
    {
      goto LABEL_3;
    }

    if (v17 == *MEMORY[0x1E69C1150])
    {
      (*(v10 + 8))(v15, v9);
      goto LABEL_16;
    }

    if (v17 == *MEMORY[0x1E69C1178])
    {
LABEL_3:
      (*(v10 + 96))(v15, v9);

      sub_1A4643C24();
      sub_1A3F637D4(v15 + *(v18 + 48));
      goto LABEL_16;
    }

    (*(v10 + 8))(v15, v9);
  }

  v50 = a1;
  v19 = a1;
  if (swift_dynamicCast())
  {
    if (v49 == 3 || v49 == 1)
    {
      v20 = v50;
LABEL_17:

      v26 = sub_1A524C634();
      v27 = PXMemoryCreationLocalizedString(v26);
LABEL_18:
      v28 = v27;

      v29 = sub_1A524C674();
      return v29;
    }

    sub_1A440B338(v48, v49);
  }

  v48 = a1;
  v21 = a1;
  if (swift_dynamicCast())
  {
    v47 = (*(v3 + 88))(v8, v2);
    v22 = v12;
    v23 = v5;
    v24 = *MEMORY[0x1E69C0F08];
    (*(v3 + 8))(v8, v2);
    v25 = v47 == v24;
    v5 = v23;
    v12 = v22;
    if (v25)
    {
LABEL_16:
      v20 = v48;
      goto LABEL_17;
    }
  }

  v48 = a1;
  v31 = a1;
  if (!swift_dynamicCast())
  {
    goto LABEL_28;
  }

  v32 = (*(v10 + 88))(v12, v9);
  if (v32 != *MEMORY[0x1E69C1158])
  {
    if (v32 == *MEMORY[0x1E69C1168])
    {
      (*(v10 + 96))(v12, v9);
      v37 = sub_1A524C634();
      v38 = PXMemoryCreationLocalizedString(v37);

      v29 = sub_1A524C674();
      v39 = sub_1A5244DD4();
      (*(*(v39 - 8) + 8))(v12, v39);
      goto LABEL_26;
    }

    (*(v10 + 8))(v12, v9);
LABEL_28:

    v48 = a1;
    v40 = a1;
    if (!swift_dynamicCast())
    {
      goto LABEL_38;
    }

    v41 = (*(v3 + 88))(v5, v2);
    if (v41 == *MEMORY[0x1E69C0F18] || v41 == *MEMORY[0x1E69C0F28] || v41 == *MEMORY[0x1E69C0F20] || v41 == *MEMORY[0x1E69C0F10] || v41 == *MEMORY[0x1E69C0F00])
    {
      (*(v3 + 8))(v5, v2);
    }

    else if (v41 != *MEMORY[0x1E69C0EF8])
    {
      (*(v3 + 8))(v5, v2);
LABEL_38:

      v50 = a1;
      v42 = a1;
      if (swift_dynamicCast())
      {
        v43 = v49;
        sub_1A440B338(v48, v49);
        if (v43 >= 4)
        {
          v44 = sub_1A524C634();
          v45 = PXMemoryCreationLocalizedString(v44);

          v29 = sub_1A524C674();
          return v29;
        }
      }

      v26 = sub_1A524C634();
      v27 = PXMemoryCreationLocalizedString(v26);
      goto LABEL_18;
    }

    return 0;
  }

  (*(v10 + 96))(v12, v9);

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v33 = result;
    MobileGestalt_get_wapiCapability();

    v34 = sub_1A524C634();
    v35 = PXMemoryCreationLocalizedString(v34);

    v29 = sub_1A524C674();
    sub_1A4643C24();
    sub_1A3F637D4(v12 + *(v36 + 48));
LABEL_26:

    return v29;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4A316AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4A316F4()
{
  swift_getKeyPath();
  (*(*v0 + 256))();

  swift_beginAccess();
  return v0[16];
}

uint64_t sub_1A4A31774@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A4A3180C(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[16] == v2)
  {
    v1[16] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 264))(v5);
  }

  return result;
}

void (*sub_1A4A31908(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 256))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore34LemonadeUtilitiesEditableListModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4A34728(&qword_1EB1252F0, type metadata accessor for LemonadeUtilitiesEditableListModel);
  sub_1A52415F4();

  v4[7] = sub_1A3E65F84();
  return sub_1A4A31A58;
}

void sub_1A4A31A58(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1A52415E4();

  free(v1);
}

uint64_t type metadata accessor for LemonadeUtilitiesEditableListModel()
{
  result = qword_1EB160FE0;
  if (!qword_1EB160FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A4A31B38()
{
  swift_getKeyPath();
  (*(*v0 + 256))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4A31BBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4A31D5C()
{
  v8 = sub_1A524D464();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524D774();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1A3C52C70(0, &qword_1EB126890);
  sub_1A524BF24();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1A4A34728(&unk_1EB126898, MEMORY[0x1E69E8120]);
  v5 = MEMORY[0x1E69E8120];
  sub_1A3C2A6C4(0, &qword_1EB126E00, MEMORY[0x1E69E8120], MEMORY[0x1E69E62F8]);
  sub_1A4A34770(&qword_1EB126DF8, &qword_1EB126E00, v5);
  sub_1A524E224();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8098], v8);
  result = sub_1A524D784();
  qword_1EB161018 = result;
  return result;
}

uint64_t sub_1A4A31FE0()
{
  v1 = (*(*v0 + 192))();
  v2 = *(v1 + 16);
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1A3C57108(0, v2, 0);
    v3 = 32;
    v4 = v13;
    do
    {
      v5 = sub_1A4A4976C(*(v1 + v3));
      v8 = *(v13 + 16);
      v7 = *(v13 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_1A3C57108((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
      }

      *(v13 + 16) = v8 + 1;
      v9 = v13 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      ++v3;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t sub_1A4A32148(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_1A524BEE4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A524BF64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v14 = result;
  v69 = v8;
  v70 = v9;
  v67 = v12;
  v15 = [a2 px_localDefaults];
  v16 = sub_1A524C634();
  v17 = [v15 arrayForKey_];

  v18 = MEMORY[0x1E69E7CC0];
  v68 = v10;
  if (!v17 || (v19 = sub_1A524CA34(), v17, v20 = sub_1A4A1C418(v19), , !v20))
  {
    v32 = sub_1A5246F04();
    v33 = sub_1A524D224();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1A3C1C000, v32, v33, "Editing: No utilities data found. We will use the default ordered list.", v34, 2u);
      MEMORY[0x1A590EEC0](v34, -1, -1);
    }

    v35 = sub_1A4A49A94();
LABEL_35:
    swift_beginAccess();
    *(a3 + 16) = v35;

    sub_1A3C52C70(0, &qword_1EB12B180);
    v54 = sub_1A524D474();
    v55 = swift_allocObject();
    swift_weakInit();
    v56 = swift_allocObject();
    *(v56 + 16) = v55;
    *(v56 + 24) = a3;
    v75 = sub_1A4A347E0;
    v76 = v56;
    aBlock = MEMORY[0x1E69E9820];
    v72 = 1107296256;
    v73 = sub_1A3C2E0D0;
    v74 = &block_descriptor_34_7;
    v57 = _Block_copy(&aBlock);

    v58 = v67;
    sub_1A524BF14();
    aBlock = v18;
    sub_1A4A34728(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    v59 = MEMORY[0x1E69E7F60];
    sub_1A3C2A6C4(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A4A34770(&qword_1EB12B1B0, &qword_1EB12B1C0, v59);
    v60 = v69;
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v58, v60, v57);
    _Block_release(v57);

    (*(v6 + 8))(v60, v5);
    return (*(v68 + 8))(v58, v70);
  }

  v62 = a3;
  v64 = v6;
  v65 = v5;
  v21 = sub_1A4A49A94();
  v22 = v21[2];
  v63 = v14;
  if (v22)
  {
    aBlock = v18;
    sub_1A4A3376C(0, v22, 0);
    v23 = 32;
    v24 = aBlock;
    do
    {
      v25 = *(v21 + v23);
      v26 = sub_1A4A4976C(v25);
      aBlock = v24;
      v29 = *(v24 + 16);
      v28 = *(v24 + 24);
      if (v29 >= v28 >> 1)
      {
        v66 = v26;
        v31 = v27;
        sub_1A4A3376C((v28 > 1), v29 + 1, 1);
        v27 = v31;
        v26 = v66;
        v24 = aBlock;
      }

      *(v24 + 16) = v29 + 1;
      v30 = v24 + 24 * v29;
      *(v30 + 32) = v26;
      *(v30 + 40) = v27;
      *(v30 + 48) = v25;
      ++v23;
      --v22;
    }

    while (v22);

    if (*(v24 + 16))
    {
      goto LABEL_14;
    }
  }

  else
  {

    v24 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_14:
      sub_1A4A3485C();
      v36 = sub_1A524E794();
      goto LABEL_17;
    }
  }

  v36 = MEMORY[0x1E69E7CC8];
LABEL_17:
  aBlock = v36;
  sub_1A4A338E8(v24);
  v37 = aBlock;
  v66 = sub_1A4A49A94();
  v38 = *(v66 + 2);
  if (v38)
  {
    v39 = v66 + 32;
    v40 = MEMORY[0x1E69E7CC0];
    do
    {
      v43 = *v39++;
      v42 = v43;
      aBlock = sub_1A4A4976C(v43);
      v72 = v44;
      MEMORY[0x1EEE9AC00](aBlock);
      *(&v61 - 2) = &aBlock;
      v45 = sub_1A3D3E5DC(sub_1A3D3E6C0, (&v61 - 4), v20);

      if ((v45 & 1) == 0)
      {
        v46 = sub_1A4A4976C(v42);
        v48 = v47;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_1A3D3D914(0, *(v40 + 2) + 1, 1, v40);
        }

        v50 = *(v40 + 2);
        v49 = *(v40 + 3);
        if (v50 >= v49 >> 1)
        {
          v40 = sub_1A3D3D914((v49 > 1), v50 + 1, 1, v40);
        }

        *(v40 + 2) = v50 + 1;
        v41 = &v40[16 * v50];
        *(v41 + 4) = v46;
        *(v41 + 5) = v48;
      }

      --v38;
    }

    while (v38);
  }

  else
  {
    v40 = MEMORY[0x1E69E7CC0];
  }

  aBlock = v20;
  sub_1A3D3A048(v40);
  v51 = *(aBlock + 16);
  if (!v51)
  {
    v35 = MEMORY[0x1E69E7CC0];
LABEL_34:

    v6 = v64;
    v5 = v65;
    a3 = v62;
    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_35;
  }

  v66 = (v51 - 1);
  v35 = MEMORY[0x1E69E7CC0];
  v52 = aBlock + 40;
  v53 = 0;
  while (v53 < *(aBlock + 16))
  {
    if (*(v37 + 16))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    ++v53;
    v52 += 16;
    if (v51 == v53)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_1A4A329B8(NSObject *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v60 = a1;
  v8 = sub_1A52414C4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v13 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
    v58 = *((*(*v4 + 192))(v10) + 16);

    goto LABEL_16;
  }

  v14 = sub_1A4A31FE0();
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = (v14 + 40);
    while (1)
    {
      v58 = v16;
      v18 = *(v17 - 1) == a3 && *v17 == a4;
      if (v18 || (sub_1A524EAB4() & 1) != 0)
      {
        break;
      }

      v16 = v58 + 1;
      v17 += 2;
      if (v15 == v58 + 1)
      {
        goto LABEL_12;
      }
    }

LABEL_16:
    v22 = sub_1A4A31FE0();
    v23 = *(v22 + 16);
    v24 = v60;
    if (v23)
    {
      v59 = 0;
      v25 = (v22 + 40);
      while (*(v25 - 1) != v24 || *v25 != a2)
      {
        v27 = sub_1A524EAB4();
        v24 = v60;
        if (v27)
        {
          break;
        }

        v25 += 2;
        if (v23 == ++v59)
        {
          goto LABEL_24;
        }
      }

      v51 = a2;
      v54 = v9;

      v53 = v12;
      v29 = sub_1A5241494();
      v30 = *(*v4 + 192);
      v31 = *v4 + 192;
      v52 = v4;
      v49[2] = v31;
      v50 = v30;
      v32 = v30(v29);
      v57 = *(v32 + 16);
      if (v57)
      {
        v49[1] = v8;
        v33 = 0;
        v55 = v32 + 32;
        v34 = MEMORY[0x1E69E7CC0];
        v56 = v32;
        while (v33 < *(v32 + 16))
        {
          v35 = *(v55 + v33);
          v36 = sub_1A4A49A88();
          v63 = v35;
          if (*(v36 + 16) && (sub_1A3D715CC(), v37 = sub_1A524C4A4(), v38 = -1 << *(v36 + 32), v39 = v37 & ~v38, ((*(v36 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) != 0))
          {
            v40 = ~v38;
            sub_1A3D71620();
            while (1)
            {
              v62 = *(*(v36 + 48) + v39);
              if (sub_1A524C594())
              {
                break;
              }

              v39 = (v39 + 1) & v40;
              if (((*(v36 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
              {
                goto LABEL_40;
              }
            }
          }

          else
          {
LABEL_40:

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v61 = v34;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1A4428A40(0, *(v34 + 16) + 1, 1);
              v34 = v61;
            }

            v43 = *(v34 + 16);
            v42 = *(v34 + 24);
            if (v43 >= v42 >> 1)
            {
              sub_1A4428A40((v42 > 1), v43 + 1, 1);
              v34 = v61;
            }

            *(v34 + 16) = v43 + 1;
            *(v34 + v43 + 32) = v35;
          }

          ++v33;
          v32 = v56;
          if (v33 == v57)
          {

            goto LABEL_47;
          }
        }

        __break(1u);
      }

      else
      {

        v34 = MEMORY[0x1E69E7CC0];
LABEL_47:
        type metadata accessor for LemonadeAnalyticsCustomization();
        v44 = *(sub_1A47E502C() + 24);

        if ((v44 & 0x8000000000000000) == 0)
        {
          if (v44)
          {
            v61 = MEMORY[0x1E69E7CC0];
            sub_1A524E554();
            if (v44 > *(v34 + 16))
            {
LABEL_55:
              __break(1u);
              return;
            }

            v45 = 32;
            do
            {
              sub_1A4A4976C(*(v34 + v45));
              sub_1A524C634();

              sub_1A524E514();
              sub_1A524E564();
              sub_1A524E574();
              sub_1A524E524();
              ++v45;
              --v44;
            }

            while (v44);
          }

          swift_getKeyPath();
          v46 = v52;
          (*(*v52 + 256))();

          v61 = v46;
          swift_getKeyPath();
          sub_1A4A34728(&qword_1EB1252F0, type metadata accessor for LemonadeUtilitiesEditableListModel);
          sub_1A52415F4();

          swift_beginAccess();
          sub_1A3F5CC94(0, &qword_1EB120CF8, &type metadata for UtilityAlbumType, MEMORY[0x1E69E62F8]);
          sub_1A4A34438();
          sub_1A524C554();
          swift_endAccess();
          v61 = v46;
          swift_getKeyPath();
          sub_1A52415E4();

          v48 = v50(v47);
          sub_1A4A33208(v48);
        }
      }

      __break(1u);
      goto LABEL_55;
    }

LABEL_24:

    v60 = sub_1A5246F04();
    v19 = sub_1A524D244();
    if (os_log_type_enabled(v60, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Source not found in the list.";
      goto LABEL_26;
    }

    goto LABEL_27;
  }

LABEL_12:

  v60 = sub_1A5246F04();
  v19 = sub_1A524D244();
  if (os_log_type_enabled(v60, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Destination not found in the list.";
LABEL_26:
    _os_log_impl(&dword_1A3C1C000, v60, v19, v21, v20, 2u);
    MEMORY[0x1A590EEC0](v20, -1, -1);
  }

LABEL_27:
  v28 = v60;
}

uint64_t sub_1A4A331A0@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A4A4976C(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1A4A33208(uint64_t a1)
{
  v3 = sub_1A524BEE4();
  MEMORY[0x1EEE9AC00](v3);
  v6 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v6);
  if (qword_1EB161010 != -1)
  {
    swift_once();
  }

  v4 = *(v1 + 24);
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = v4;
  v5[4] = 0x656974696C697455;
  v5[5] = 0xE900000000000073;
  aBlock[4] = sub_1A4A345B0;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_333;
  _Block_copy(aBlock);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4A33680()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore34LemonadeUtilitiesEditableListModel_logger;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12PhotosUICore34LemonadeUtilitiesEditableListModel___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void *sub_1A4A3376C(void *a1, int64_t a2, char a3)
{
  result = sub_1A4A3378C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A4A3378C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A3C2A6C4(0, &qword_1EB147B38, sub_1A4A348BC, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A4A348BC();
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A4A338E8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

void *sub_1A4A33C58()
{
  v1 = v0;
  sub_1A4A3485C();
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = (*(v2 + 48) + 16 * v16);
        v19 = *v17;
        v18 = v17[1];
        LOBYTE(v17) = *(*(v2 + 56) + v16);
        v20 = (*(v4 + 48) + 16 * v16);
        *v20 = v19;
        v20[1] = v18;
        *(*(v4 + 56) + v16) = v17;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A4A33DB4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A4A3485C();
  v34 = a2;
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      result = sub_1A524ECE4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A4A34048(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      sub_1A3D71620();
      do
      {
        ++v3;
        ++v4;
        v5 = sub_1A524C594();
        --v2;
      }

      while ((v5 & 1) != 0 && v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_1A4A340FC()
{
  v1 = sub_1A524BEE4();
  MEMORY[0x1EEE9AC00](v1);
  v3[2] = v3 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = 0;
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  sub_1A5246EF4();
}

unint64_t sub_1A4A34438()
{
  result = qword_1EB147B28;
  if (!qword_1EB147B28)
  {
    sub_1A3F5CC94(255, &qword_1EB120CF8, &type metadata for UtilityAlbumType, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147B28);
  }

  return result;
}

uint64_t sub_1A4A344BC()
{
  result = sub_1A5246F24();
  if (v1 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1A4A345B0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1A3C57108(0, v3, 0);
    v4 = v17;
    v5 = (v2 + 32);
    do
    {
      v6 = *v5++;
      v7 = sub_1A4A4976C(v6);
      v10 = *(v17 + 16);
      v9 = *(v17 + 24);
      if (v10 >= v9 >> 1)
      {
        v12 = v7;
        v13 = v8;
        sub_1A3C57108((v9 > 1), v10 + 1, 1);
        v8 = v13;
        v7 = v12;
      }

      *(v17 + 16) = v10 + 1;
      v11 = v17 + 16 * v10;
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;
      --v3;
    }

    while (v3);
  }

  v16 = [v1 px_localDefaults];
  sub_1A3D3B558(v4);

  v14 = sub_1A524CA14();

  v15 = sub_1A524C634();
  [v16 setArray:v14 forKey:v15];
}

uint64_t sub_1A4A34728(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4A34770(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A3C2A6C4(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A4A347E0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

void sub_1A4A3485C()
{
  if (!qword_1EB147B30)
  {
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147B30);
    }
  }
}

void sub_1A4A348BC()
{
  if (!qword_1EB147B40)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB147B40);
    }
  }
}

uint64_t sub_1A4A3492C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR___PXReorderListCellActionPerformer_sourceObject] = 0;
  *&v5[OBJC_IVAR___PXReorderListCellActionPerformer_destinationObject] = 0;
  v9 = sub_1A524C634();

  type metadata accessor for PXActionParameterKey();
  sub_1A3C38304(&unk_1EB1356B0, type metadata accessor for PXActionParameterKey);
  v10 = sub_1A524C3D4();
  v29.receiver = v5;
  v29.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v29, sel_initWithActionType_collectionList_parameters_, v9, a3, v10);

  if (!*(a4 + 16))
  {
    v19 = v11;
    goto LABEL_11;
  }

  v12 = *off_1E77219C8;
  v13 = v11;
  v14 = sub_1A3C8BF74(v12);
  if ((v15 & 1) == 0 || (sub_1A3C2F0BC(*(a4 + 56) + 32 * v14, v28), sub_1A4A35324(), (swift_dynamicCast() & 1) == 0))
  {
LABEL_11:
    sub_1A52411D4();
    if (!*(a4 + 16))
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (!(v26 >> 62))
  {
    result = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_16:

    v18 = 0;
LABEL_17:
    v24 = OBJC_IVAR___PXReorderListCellActionPerformer_sourceObject;
    swift_beginAccess();
    v25 = *&v13[v24];
    *&v13[v24] = v18;

    if (!*(a4 + 16))
    {
      goto LABEL_18;
    }

LABEL_12:
    v20 = sub_1A3C8BF74(*off_1E77219D0);
    if (v21)
    {
      sub_1A3C2F0BC(*(a4 + 56) + 32 * v20, v28);

      sub_1A3C52C70(0, &qword_1EB126CD0);
      if (swift_dynamicCast())
      {

        v22 = OBJC_IVAR___PXReorderListCellActionPerformer_destinationObject;
        swift_beginAccess();
        v23 = *&v11[v22];
        *&v11[v22] = v27;

LABEL_20:
        return v11;
      }

LABEL_19:
      sub_1A52411D4();

      v23 = v11;
      goto LABEL_20;
    }

LABEL_18:

    goto LABEL_19;
  }

  result = sub_1A524E2B4();
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_6:
  if ((v26 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x1A59097F0](0);
    goto LABEL_9;
  }

  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v26 + 32);
LABEL_9:
    v18 = v17;

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void sub_1A4A34D10()
{
  v1 = OBJC_IVAR___PXReorderListCellActionPerformer_sourceObject;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    sub_1A3C2E3D0(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1A52F9790;
    *(v3 + 32) = v2;
  }

  v4 = v2;
  v5 = [v0 collectionList];
  v6 = [v5 px_isBookmarksFolder];

  v7 = [v0 collectionList];
  sub_1A3C52C70(0, &qword_1EB126CD0);
  v8 = sub_1A524CA14();

  v9 = OBJC_IVAR___PXReorderListCellActionPerformer_destinationObject;
  if (v6)
  {
    v10 = off_1E771F460;
  }

  else
  {
    v10 = off_1E771F470;
  }

  swift_beginAccess();
  v11 = [objc_allocWithZone(*v10) initWithCollectionList:v7 movedObjects:v8 targetObject:*&v0[v9]];

  v12 = v11;
  v13 = [v0 undoManager];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16[4] = sub_1A4A3538C;
  v16[5] = v14;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1A3D6084C;
  v16[3] = &block_descriptor_334;
  v15 = _Block_copy(v16);

  [v12 executeWithUndoManager:v13 completionHandler:v15];

  _Block_release(v15);
}

uint64_t sub_1A4A34F8C(char a1, void *a2, uint64_t a3)
{
  v6 = sub_1A524BEE4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A524BF64();
  v10 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB12B180);
  v13 = sub_1A524D474();
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a1;
  *(v14 + 32) = a2;
  aBlock[4] = sub_1A45B4030;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_8_1;
  v15 = _Block_copy(aBlock);

  v16 = a2;

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A3C38304(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C38394();
  sub_1A3C38304(&qword_1EB12B1B0, sub_1A3C38394);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v12, v9, v15);
  _Block_release(v15);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v19);
}

void sub_1A4A35324()
{
  if (!qword_1EB144618)
  {
    sub_1A3C52C70(255, &qword_1EB126CD0);
    v0 = sub_1A524CB74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB144618);
    }
  }
}

id AlertPresentationDelegatePresentationEnvironment.__allocating_init(alertPresentationDelegate:wrappedPresentationEnvironment:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC12PhotosUICore48AlertPresentationDelegatePresentationEnvironment_alertPresentationDelegate] = a1;
  *&v5[OBJC_IVAR____TtC12PhotosUICore48AlertPresentationDelegatePresentationEnvironment_wrappedPresentationEnvironment] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id AlertPresentationDelegatePresentationEnvironment.init(alertPresentationDelegate:wrappedPresentationEnvironment:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC12PhotosUICore48AlertPresentationDelegatePresentationEnvironment_alertPresentationDelegate] = a1;
  *&v2[OBJC_IVAR____TtC12PhotosUICore48AlertPresentationDelegatePresentationEnvironment_wrappedPresentationEnvironment] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AlertPresentationDelegatePresentationEnvironment();
  return objc_msgSendSuper2(&v4, sel_init);
}

void sub_1A4A35590(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v10 = *(v6 + OBJC_IVAR____TtC12PhotosUICore48AlertPresentationDelegatePresentationEnvironment_wrappedPresentationEnvironment);
  if (a3)
  {
    v12[4] = a3;
    v12[5] = a4;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_1A3C2E0D0;
    v12[3] = a5;
    v11 = _Block_copy(v12);
  }

  else
  {
    v11 = 0;
  }

  [v10 *a6];
  _Block_release(v11);
}

id sub_1A4A35790()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12PhotosUICore48AlertPresentationDelegatePresentationEnvironment_wrappedPresentationEnvironment) presentingViewController];

  return v1;
}

uint64_t sub_1A4A358F8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC12PhotosUICore48AlertPresentationDelegatePresentationEnvironment_alertPresentationDelegate);
  v6 = [v5 didStartPresentingAlert];
  v7 = *(v2 + OBJC_IVAR____TtC12PhotosUICore48AlertPresentationDelegatePresentationEnvironment_wrappedPresentationEnvironment);
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v5;
  v8[5] = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1A4A35AB0;
  *(v9 + 24) = v8;
  v14[4] = sub_1A3D78DD0;
  v14[5] = v9;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1A3D35A90;
  v14[3] = &block_descriptor_9_13;
  v10 = _Block_copy(v14);
  swift_unknownObjectRetain();
  v11 = v6;

  v12 = [v7 presentAlertWithConfigurationHandler_];

  _Block_release(v10);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if ((v11 & 1) == 0)
  {
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4A35AB0(void *a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  (*(v1 + 16))();
  v5 = [a1 completionHandler];
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v5 = sub_1A3F3D540;
  }

  else
  {
    v6 = 0;
  }

  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v4;
  v7[4] = v5;
  v7[5] = v6;
  v11[4] = sub_1A4A3616C;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1A3C2E0D0;
  v11[3] = &block_descriptor_32_7;
  v8 = _Block_copy(v11);
  swift_unknownObjectRetain();
  v9 = v4;
  sub_1A3D607F0(v5);

  [a1 setCompletionHandler_];
  _Block_release(v8);
  return sub_1A3C784D4(v5, v6);
}

void sub_1A4A35CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC12PhotosUICore48AlertPresentationDelegatePresentationEnvironment_wrappedPresentationEnvironment);
  if (a2)
  {
    v7[4] = a2;
    v7[5] = a3;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1A3C2E0D0;
    v7[3] = &block_descriptor_12_13;
    v6 = _Block_copy(v7);
  }

  else
  {
    v6 = 0;
  }

  [v5 dismissAlertWithToken:a1 completionHandler:v6];
  _Block_release(v6);
}

id AlertPresentationDelegatePresentationEnvironment.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AlertPresentationDelegatePresentationEnvironment.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlertPresentationDelegatePresentationEnvironment();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1A4A3616C()
{
  v1 = *(v0 + 32);
  result = [*(v0 + 16) didEndPresentingAlertWithToken_];
  if (v1)
  {
    return v1(result);
  }

  return result;
}

uint64_t PhotosViewCollectionSortOrder.description.getter()
{
  if (*v0)
  {
    return 0x6946747365646C6FLL;
  }

  else
  {
    return 0x694674736577656ELL;
  }
}

PhotosUICore::PhotosViewCollectionSortOrder_optional __swiftcall PhotosViewCollectionSortOrder.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1A4A36224()
{
  if (*v0)
  {
    return 0x6946747365646C6FLL;
  }

  else
  {
    return 0x694674736577656ELL;
  }
}

id sub_1A4A36260()
{
  v0 = [objc_opt_self() standardUserDefaults];

  return v0;
}

uint64_t sub_1A4A364AC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result & 1;
  return result;
}

void sub_1A4A36544()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore50PhotosViewCollectionSortOrderPersistenceController_userDefaults);
  v2 = sub_1A524C634();
  v3 = [v1 dictionaryForKey_];

  if (v3)
  {
    v4 = sub_1A524C3E4();

    sub_1A4A36A68(v4);
  }

  sub_1A4938E90(MEMORY[0x1E69E7CC0]);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4A367FC(char a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  sub_1A4A36544();
}

uint64_t (*sub_1A4A36840(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A4A36894;
}

uint64_t sub_1A4A36894(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1A4A36544();
  }

  return result;
}

void sub_1A4A368C8(_BYTE *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore50PhotosViewCollectionSortOrderPersistenceController_userDefaults);
  v4 = sub_1A524C634();
  v5 = [v3 dictionaryForKey_];

  if (v5)
  {
    v6 = sub_1A524C3E4();

    sub_1A4A36A68(v6);
  }

  *a1 = 2;
}

void sub_1A4A36A68(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A49F6980();
    sub_1A524E794();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4A36CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a3 + 16);
  if (!a2)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = sub_1A3C5DCA4(a4, a5);
    if ((v12 & 1) == 0)
    {
      return 0;
    }

    return *(*(a3 + 56) + 8 * v9);
  }

  if (v6)
  {
    v9 = sub_1A3C5DCA4(a1, a2);
    if (v10)
    {
      return *(*(a3 + 56) + 8 * v9);
    }

    if (*(a3 + 16))
    {
      v9 = sub_1A3C5DCA4(a4, a5);
      if (v11)
      {
        return *(*(a3 + 56) + 8 * v9);
      }
    }
  }

  return 0;
}

void sub_1A4A36E68(uint64_t a1, uint64_t a2)
{
  sub_1A3D9E6B8();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A52F8E10;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4A36F80(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1A524C634();
  v5 = [a3 dictionaryForKey_];

  if (v5)
  {
    v6 = sub_1A524C3E4();

    sub_1A4A36A68(v6);
  }

  return 2;
}

unint64_t sub_1A4A37124()
{
  result = qword_1EB147BD0;
  if (!qword_1EB147BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147BD0);
  }

  return result;
}

uint64_t type metadata accessor for PhotosViewCollectionSortOrderPersistenceController()
{
  result = qword_1EB170E70;
  if (!qword_1EB170E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A4A37794()
{
  v0 = sub_1A49E2418();
  MEMORY[0x1EEE9AC00](v0 - 8);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A524C084();
}

void sub_1A4A37A10()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    sub_1A4A387D8();
  }
}

void sub_1A4A37A24()
{
  v0 = sub_1A49E2418();
  MEMORY[0x1EEE9AC00](v0 - 8);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A524C084();
}

unint64_t sub_1A4A37E94(uint64_t a1, uint64_t a2)
{
  result = (*(v2 + 80))(a2);
  if (result >> 62)
  {
    v8 = result;
    v9 = sub_1A524E2B4();
    result = v8;
    if (v9 > a1)
    {
      goto LABEL_3;
    }

LABEL_9:

    return 0;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1A59097F0](a1);
    goto LABEL_7;
  }

  if (a1 < 0)
  {
    __break(1u);
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v5 = *(result + 8 * a1 + 32);
LABEL_7:
    v6 = v5;

    v7 = [v6 state];

    return v7;
  }

  __break(1u);
  return result;
}

void sub_1A4A37F88(uint64_t a1, uint64_t a2)
{
  v4 = (*(v2 + 80))(a2);
  if (v4 >> 62)
  {
    v8 = v4;
    v9 = sub_1A524E2B4();
    v4 = v8;
    if (v9 > a1)
    {
LABEL_3:
      if ((v4 & 0xC000000000000001) == 0)
      {
        if (a1 < 0)
        {
          __break(1u);
        }

        else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
        {
          v5 = *(v4 + 8 * a1 + 32);
LABEL_7:
          v6 = v5;

          v7 = [v6 handler];

          v7[2](v7);

          _Block_release(v7);
          return;
        }

        __break(1u);
        return;
      }

      v5 = MEMORY[0x1A59097F0](a1);
      goto LABEL_7;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    goto LABEL_3;
  }
}

uint64_t sub_1A4A3829C()
{
  ObjectType = swift_getObjectType();
  v2 = [v0 viewModel];
  v3 = (*(ObjectType + 80))();

  if (v3 >> 62)
  {
    v4 = sub_1A524E2B4();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:

    v7 = sub_1A524C634();
    v8 = [objc_opt_self() systemImageNamed_];

    sub_1A3C52C70(0, &qword_1EB120608);
    v9 = sub_1A524C634();
    v10 = PXLocalizedString(v9);

    sub_1A524C674();
    return sub_1A524DAF4();
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  result = sub_1A524E554();
  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_1A3C52C70(0, &qword_1EB126C10);
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1A59097F0](0, v3);
    }

    else
    {
      v6 = *(v3 + 32);
    }

    sub_1A524D214();
  }

  __break(1u);
  return result;
}

id sub_1A4A38550(void *a1)
{
  v2 = [a1 reverseSortOrder] ^ 1;

  return [a1 setReverseSortOrder_];
}

id PhotosGridCollectionSortActionPerformer.__allocating_init(viewModel:actionType:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1A524C634();

  v5 = [v3 initWithViewModel:a1 actionType:v4];

  return v5;
}

id PhotosGridCollectionSortActionPerformer.init(viewModel:actionType:)(void *a1)
{
  v3 = sub_1A524C634();

  v6.receiver = v1;
  v6.super_class = type metadata accessor for PhotosGridCollectionSortActionPerformer();
  v4 = objc_msgSendSuper2(&v6, sel_initWithViewModel_actionType_, a1, v3);

  return v4;
}

id PhotosGridCollectionSortActionPerformer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosGridCollectionSortActionPerformer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A4A38720()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B770);
  __swift_project_value_buffer(v0, qword_1EB15B770);
  sub_1A5246EF4();
}

void sub_1A4A38784()
{
  if (*(v0 + 16) == 1)
  {
    sub_1A4A387D8();
  }
}

void sub_1A4A387D8()
{
  v0 = sub_1A49E2418();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A524C1D4();
}

unint64_t sub_1A4A38D6C()
{
  result = qword_1EB147BD8;
  if (!qword_1EB147BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147BD8);
  }

  return result;
}

uint64_t sub_1A4A38DC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A49E2418();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A4A38F00()
{
  v1 = sub_1A5240E64();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() makeFeedbackController])
  {
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  aBlock = v27;
  v23 = v28;
  if (*(&v28 + 1))
  {
    sub_1A4A392B8();
    if (swift_dynamicCast())
    {
      v21 = v26;
      v5 = sub_1A4A3B1B4();
      if (v5)
      {
        v6 = v5;
        v7 = v0;
        objc_opt_self();
        v8 = v21;
        v9 = swift_dynamicCastObjCClass();
        if (v9)
        {
          [v6 addChildViewController_];
        }

        v10 = objc_opt_self();
        v11 = [objc_opt_self() systemPhotoLibraryURL];
        sub_1A5240DE4();

        v12 = objc_allocWithZone(MEMORY[0x1E69789A8]);
        v13 = sub_1A5240D44();
        v14 = [v12 initWithPhotoLibraryURL_];

        (*(v2 + 8))(v4, v1);
        if (qword_1EB1E83F8 != -1)
        {
          swift_once();
        }

        [v10 purgeSearchUIDiagnosticDetailsForPhotoLibrary:v14 queue:qword_1EB1E8400];

        v15 = [v7 userInfoDelegate];
        if (v15)
        {
          v16 = v15;
          v17 = swift_allocObject();
          *(v17 + 16) = v21;
          *(v17 + 32) = v7;
          v24 = sub_1A4A3B2D8;
          v25 = v17;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          *&v23 = sub_1A4A3A0E8;
          *(&v23 + 1) = &block_descriptor_337;
          v18 = _Block_copy(&aBlock);
          v19 = v8;
          v20 = v7;

          [v16 requestUserInfo_];

          swift_unknownObjectRelease();
          _Block_release(v18);
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1A3C2CE3C(&aBlock, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1A3C371F0);
  }
}

unint64_t sub_1A4A392B8()
{
  result = qword_1EB125678;
  if (!qword_1EB125678)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB125678);
  }

  return result;
}

void sub_1A4A39318()
{
  v0 = sub_1A52417A4();
  MEMORY[0x1EEE9AC00](v0);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4A3946C@<X0>(UIImage *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v90 = a1;
  v93 = a4;
  v103 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69E6720];
  sub_1A4A3B4E8(0, &qword_1EB124FC8, MEMORY[0x1E699C538], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v88 = &v85 - v8;
  v86 = sub_1A5241844();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v87 = (&v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4A3B4E8(0, &qword_1EB124FC0, MEMORY[0x1E699C540], v6);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v92 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v95 = &v85 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v85 - v15;
  v17 = sub_1A52417C4();
  v18 = *(v17 - 8);
  v96 = v17;
  v97 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v91 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v94 = &v85 - v21;
  *&v89 = sub_1A5240E64();
  v22 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v24 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1A3C5D7A8(MEMORY[0x1E69E7CC0]);
  v25 = sub_1A524C674();
  v27 = MEMORY[0x1E69E7CA0];
  if (a2)
  {
    sub_1A3C371F0(0, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v102 = v28;
    *&v101 = a2;
    sub_1A3C57128(&v101, v100);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A4551904(v25, v26, &v101);

  sub_1A3C2CE3C(&v101, &qword_1EB126130, v27 + 8, MEMORY[0x1E69E6720], sub_1A3C371F0);
  v29 = sub_1A524C674();
  v31 = v29;
  v32 = v30;
  if (a3)
  {
    v33 = [a3 redactedJSONDictionary];
    v34 = sub_1A524C3E4();

    sub_1A3C5D8DC(0, &qword_1EB12D8D8, MEMORY[0x1E69E5E28]);
    v102 = v35;
    *&v101 = v34;
    sub_1A3C57128(&v101, v100);
    v36 = v99;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v98 = v36;
    sub_1A3E98278(v100, v31, v32, isUniquelyReferenced_nonNull_native);

    v99 = v98;
  }

  else
  {
    sub_1A4551904(v29, v30, &v101);

    sub_1A3C2CE3C(&v101, &qword_1EB126130, v27 + 8, MEMORY[0x1E69E6720], sub_1A3C371F0);
  }

  v38 = objc_opt_self();
  v39 = sub_1A524C3D4();
  *&v101 = 0;
  v40 = [v38 dataWithJSONObject:v39 options:8 error:&v101];

  v41 = v101;
  if (v40)
  {

    v42 = sub_1A5240EA4();
    v44 = v43;

    sub_1A5240E94();
    sub_1A3C59280(v42, v44);
    v45 = objc_opt_self();
    v46 = sub_1A524C634();

    v47 = [objc_opt_self() systemPhotoLibraryURL];
    sub_1A5240DE4();

    v48 = objc_allocWithZone(MEMORY[0x1E69789A8]);
    v49 = sub_1A5240D44();
    v50 = [v48 initWithPhotoLibraryURL_];

    (*(v22 + 8))(v24, v89);
    if (qword_1EB1E83F8 != -1)
    {
      swift_once();
    }

    v51 = [v45 saveSearchUIDiagnosticDetails:v46 photoLibrary:v50 queue:qword_1EB1E8400];

    v52 = sub_1A524C674();
    v54 = v53;

    sub_1A4A3B4E8(0, &qword_1EB120328, sub_1A49F6200, MEMORY[0x1E69E6F90]);
    sub_1A49F6200();
    v56 = v55 - 8;
    v57 = (*(*(v55 - 8) + 80) + 32) & ~*(*(v55 - 8) + 80);
    v58 = swift_allocObject();
    v89 = xmmword_1A52F8E10;
    *(v58 + 16) = xmmword_1A52F8E10;
    v59 = v58 + v57;
    v60 = *(v56 + 56);
    sub_1A524C674();
    sub_1A5241864();
    sub_1A3C371F0(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v61 = swift_allocObject();
    *(v61 + 16) = v89;
    *(v61 + 32) = v52;
    *(v61 + 40) = v54;
    *(v59 + v60) = v61;
    *&v89 = sub_1A49F6294(v58);
    swift_setDeallocating();
    sub_1A49F8C44(v59);
    swift_deallocClassInstance();
    v62 = v96;
    v63 = v94;
    (*(v97 + 104))(v94, *MEMORY[0x1E699C278], v96);
    v64 = sub_1A5241804();
    v65 = *(*(v64 - 8) + 56);
    v65(v16, 1, 1, v64);
    if (v90)
    {
      v66 = UIImagePNGRepresentation(v90);
      if (v66)
      {
        v67 = v66;
        v68 = sub_1A5240EA4();
        v70 = v69;

        v71 = v87;
        *v87 = v68;
        v71[1] = v70;
        (*(v85 + 104))(v71, *MEMORY[0x1E699C5F0], v86);
        sub_1A3D602A8(v68, v70);
        sub_1A3C38BD4();
        v90 = v72;
        v73 = sub_1A52417F4();
        (*(*(v73 - 8) + 56))(v88, 1, 1, v73);
        v74 = v16;
        v75 = v95;
        v62 = v96;
        v63 = v94;
        sub_1A52417E4();
        sub_1A3C59280(v68, v70);
        sub_1A3C2CE3C(v74, &qword_1EB124FC0, MEMORY[0x1E699C540], MEMORY[0x1E69E6720], sub_1A4A3B4E8);
        v65(v75, 0, 1, v64);
        v76 = v75;
        v16 = v74;
        sub_1A4A3B40C(v76, v74);
      }
    }

    v77 = v97;
    (*(v97 + 16))(v91, v63, v62);
    sub_1A4A3B378(v16, v95);
    v65(v92, 1, 1, v64);
    v78 = objc_allocWithZone(sub_1A5241854());
    v79 = sub_1A52417D4();
    sub_1A3C2CE3C(v16, &qword_1EB124FC0, MEMORY[0x1E699C540], MEMORY[0x1E69E6720], sub_1A4A3B4E8);
    (*(v77 + 8))(v63, v62);
    v80 = v93;
    *v93 = v79;
    v81 = *MEMORY[0x1E699C218];
    v82 = sub_1A52417A4();
    return (*(*(v82 - 8) + 104))(v80, v81, v82);
  }

  else
  {
    v84 = v41;
    sub_1A5240B84();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A4A3A0E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1A524C3E4();

  v1(v2);
}

void sub_1A4A3A2A4()
{
  v0 = sub_1A52417A4();
  MEMORY[0x1EEE9AC00](v0);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A4A3A4B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  v5 = [v4 contentFilterState];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 isSearchResultsFilterButton];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1A4A3A5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5240E64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() makeFeedbackController])
  {
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  aBlock = v33;
  v29 = v34;
  if (*(&v34 + 1))
  {
    sub_1A4A392B8();
    if (swift_dynamicCast())
    {
      v27 = v32;
      v10 = sub_1A4A3B1B4();
      if (v10)
      {
        v11 = v10;
        v26 = v3;
        v25 = objc_opt_self();
        v12 = [objc_opt_self() systemPhotoLibraryURL];
        sub_1A5240DE4();

        v13 = objc_allocWithZone(MEMORY[0x1E69789A8]);
        v14 = sub_1A5240D44();
        v15 = [v13 initWithPhotoLibraryURL_];

        (*(v7 + 8))(v9, v6);
        if (qword_1EB1E83F8 != -1)
        {
          swift_once();
        }

        [v25 purgeSearchUIDiagnosticDetailsForPhotoLibrary:v15 queue:qword_1EB1E8400];

        objc_opt_self();
        v16 = v27;
        v17 = swift_dynamicCastObjCClass();
        v18 = v26;
        if (v17)
        {
          [v11 addChildViewController_];
        }

        v19 = [v18 userInfoDelegate];
        if (v19)
        {
          v20 = v19;
          v21 = swift_allocObject();
          *(v21 + 16) = v27;
          *(v21 + 32) = v18;
          v30 = a2;
          v31 = v21;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          *&v29 = sub_1A4A3A0E8;
          *(&v29 + 1) = a3;
          v22 = _Block_copy(&aBlock);
          v23 = v16;
          v24 = v18;

          [v20 requestUserInfo_];

          swift_unknownObjectRelease();
          _Block_release(v22);
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1A3C2CE3C(&aBlock, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1A3C371F0);
  }
}

void sub_1A4A3A96C()
{
  v0 = sub_1A52417A4();
  MEMORY[0x1EEE9AC00](v0);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A4A3AB30(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1A524C634();

  v5 = [v3 initWithViewModel:a1 actionType:v4];

  return v5;
}

id sub_1A4A3ABC4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = sub_1A524C634();

  v11.receiver = v4;
  v11.super_class = a4(v8);
  v9 = objc_msgSendSuper2(&v11, sel_initWithViewModel_actionType_, a1, v7);

  return v9;
}

id sub_1A4A3AC68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8.receiver = a1;
  v8.super_class = a5();
  return objc_msgSendSuper2(&v8, sel_initWithViewModel_actionType_, a3, a4);
}

id sub_1A4A3ACDC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1A4A3AD14()
{
  v0 = sub_1A524D464();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1A3C52C70(0, &qword_1EB12B180);
  sub_1A524BF24();
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_1A4A3B4A0(&qword_1EB126AD0, MEMORY[0x1E69E8030]);
  sub_1A4A3B4E8(0, &qword_1EB126E40, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1A3C70F90();
  sub_1A524E224();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v0);
  result = sub_1A524D4B4();
  qword_1EB1E8400 = result;
  return result;
}

uint64_t sub_1A4A3AF80(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  return 0;
}

id sub_1A4A3B1B4()
{
  v0 = [objc_opt_self() px_sharedApplication];
  v1 = [v0 px_firstKeyWindow];

  v2 = [v1 rootViewController];
  v3 = [v2 px_topmostPresentedViewController];
  v4 = v3;
  if (!v3)
  {
    if (!v2)
    {
      return 0;
    }

    v4 = v2;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  v6 = v3;
  if (v5)
  {
    v7 = [v5 visibleViewController];

    if (v7)
    {

      return v7;
    }
  }

  else
  {
  }

  return v4;
}

uint64_t sub_1A4A3B378(uint64_t a1, uint64_t a2)
{
  sub_1A4A3B4E8(0, &qword_1EB124FC0, MEMORY[0x1E699C540], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4A3B40C(uint64_t a1, uint64_t a2)
{
  sub_1A4A3B4E8(0, &qword_1EB124FC0, MEMORY[0x1E699C540], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4A3B4A0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A4A3B4E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id PhotosPlaceholderSearchBarButtonItem.__allocating_init(placement:placeholder:action:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v26 = a2;
  v27 = a3;
  v7 = sub_1A5242074();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v14 = sub_1A5242E94();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4A3B8C4();
  MEMORY[0x1EEE9AC00](v18 - 8);
  LOBYTE(a1) = *a1;

  v29 = a5;
  sub_1A5242E84();
  *v10 = 0;
  v10[8] = 1;
  *(v10 + 2) = 0;
  v10[24] = 1;
  *(v10 + 4) = 0;
  v10[40] = 0;
  if (a1)
  {
    v19 = MEMORY[0x1E69C1CE8];
  }

  else
  {
    v10[41] = 0;
    v19 = MEMORY[0x1E69C1CE0];
  }

  (*(v8 + 104))(v10, *v19, v7);
  (*(v8 + 32))(v13, v10, v7);
  sub_1A3C325C4(&qword_1EB147BE8, MEMORY[0x1E69C22F0]);
  sub_1A524A5A4();
  (*(v8 + 8))(v13, v7);
  (*(v15 + 8))(v17, v14);
  sub_1A4A3C788();
  v21 = objc_allocWithZone(v20);
  v22 = sub_1A52485F4();
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_1A52485D4();
  v23 = [objc_allocWithZone(v28) initWithCustomView_];
  v24 = sub_1A524C634();
  [v23 setIdentifier_];

  return v23;
}

void sub_1A4A3B8C4()
{
  if (!qword_1EB147BE0)
  {
    sub_1A5242E94();
    sub_1A3C325C4(&qword_1EB147BE8, MEMORY[0x1E69C22F0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB147BE0);
    }
  }
}

uint64_t PhotosSearchBarPosition.SystemBarPositionProtocol.style.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 40))(&v9);
  v3 = v9;
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  if (v3)
  {
    v4 = MEMORY[0x1E69C1CE8];
  }

  else
  {
    *(a2 + 41) = 0;
    v4 = MEMORY[0x1E69C1CE0];
  }

  v5 = *v4;
  v6 = sub_1A5242074();
  v7 = *(*(v6 - 8) + 104);

  return v7(a2, v5, v6);
}

id PhotosPlaceholderSearchBarButtonItem.__allocating_init(action:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  swift_getObjectType();
  sub_1A3C52C70(0, &qword_1EB126590);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_1A524DC64();
  v7 = sub_1A524D2E4();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v8 = v7;
  v9 = sub_1A524C634();
  [v8 setIdentifier_];

  return v8;
}

id PhotosPlaceholderSearchBarButtonItem.init(action:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  sub_1A3C52C70(0, &qword_1EB126590);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_1A524DC64();
  v5 = sub_1A524D2E4();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v6 = v5;
  v7 = sub_1A524C634();
  [v6 setIdentifier_];

  return v6;
}

id PhotosPlaceholderSearchBarButtonItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotosPlaceholderSearchBarButtonItem.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PhotosPlaceholderSearchBarTrailingNavigationBarButtonItem.__allocating_init(action:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  swift_getObjectType();
  v13 = 0;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v6 = PhotosSearchBarLocalizedPlaceholder(_:)(v11);
  v8 = v7;
  sub_1A3C30A8C(v11, &qword_1EB129AC0, sub_1A3C295A0);
  v9 = PhotosPlaceholderSearchBarButtonItem.__allocating_init(placement:placeholder:action:)(&v13, v6, v8, a1, a2);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

id PhotosPlaceholderSearchBarTrailingNavigationBarButtonItem.init(action:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v11 = 0;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v4 = PhotosSearchBarLocalizedPlaceholder(_:)(v9);
  v6 = v5;
  sub_1A3C30A8C(v9, &qword_1EB129AC0, sub_1A3C295A0);
  v7 = PhotosPlaceholderSearchBarButtonItem.__allocating_init(placement:placeholder:action:)(&v11, v4, v6, a1, a2);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

id PhotosPlaceholderSearchBarTrailingNavigationBarButtonItem.init(container:action:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v14 = 0;
  if (!a1 || (sub_1A3C52C70(0, &qword_1EB12B160), sub_1A3C295A0(), v6 = a1, (swift_dynamicCast() & 1) == 0))
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
  }

  v7 = PhotosSearchBarLocalizedPlaceholder(_:)(v12);
  v9 = v8;
  sub_1A3C30A8C(v12, &qword_1EB129AC0, sub_1A3C295A0);
  v10 = PhotosPlaceholderSearchBarButtonItem.__allocating_init(placement:placeholder:action:)(&v14, v7, v9, a2, a3);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

id sub_1A4A3C31C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_1A4A3C36C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1A4A3C3C8(void *a1, uint64_t (*a2)(void))
{
  v6.receiver = v2;
  v6.super_class = a2();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1A4A3C44C(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = a4();
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

id sub_1A4A3C4E0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t PhotosSearchBarPosition.SystemBarPlacement.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

id PhotosSearchBarPosition.SystemBar.Storage.searchBarButtonItem.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

id sub_1A4A3C66C()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *sub_1A4A3C6C0()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *PhotosSearchBarPosition.SystemBar.closeAction.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

_BYTE *sub_1A4A3C778@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void sub_1A4A3C788()
{
  if (!qword_1EB147BF0)
  {
    sub_1A4A3B8C4();
    sub_1A5242E94();
    sub_1A3C325C4(&qword_1EB147BE8, MEMORY[0x1E69C22F0]);
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A5248614();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147BF0);
    }
  }
}

uint64_t sub_1A4A3C8C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (v3)
  {
    v4 = MEMORY[0x1E69C1CE8];
  }

  else
  {
    *(a1 + 41) = 0;
    v4 = MEMORY[0x1E69C1CE0];
  }

  v5 = *v4;
  v6 = sub_1A5242074();
  v7 = *(*(v6 - 8) + 104);

  return v7(a1, v5, v6);
}

uint64_t sub_1A4A3C968()
{
  if (*v0)
  {
    return _s12PhotosUICore0A17SearchBarPositionO03TabD0C35searchSuggestionViewAnimationAnchor7SwiftUI9UnitPointVvg_0();
  }

  else
  {
    return sub_1A524BE44();
  }
}

uint64_t PhotosSearchBarPosition.SystemBarPositionProtocol.searchSuggestionViewAnimationAnchor.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 40))(&var1);
  if (var1)
  {

    return _s12PhotosUICore0A17SearchBarPositionO03TabD0C35searchSuggestionViewAnimationAnchor7SwiftUI9UnitPointVvg_0();
  }

  else
  {

    return sub_1A524BE44();
  }
}

uint64_t sub_1A4A3C9E0()
{
  if (*v0)
  {
    return _s12PhotosUICore0A17SearchBarPositionO03TabD0C30initialSuggestionViewAlignment7SwiftUI0J0Vvg_0();
  }

  else
  {
    return sub_1A524BC14();
  }
}

uint64_t PhotosSearchBarPosition.SystemBarPositionProtocol.initialSuggestionViewAlignment.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 40))(&var1);
  if (var1)
  {

    return _s12PhotosUICore0A17SearchBarPositionO03TabD0C30initialSuggestionViewAlignment7SwiftUI0J0Vvg_0();
  }

  else
  {

    return sub_1A524BC14();
  }
}

uint64_t sub_1A4A3CA58()
{
  if (*v0)
  {
    return 0;
  }

  else
  {
    return 0x4072C00000000000;
  }
}

uint64_t PhotosSearchBarPosition.SystemBarPositionProtocol.searchBarMaximumWidth.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 40))(&var1);
  if (var1)
  {
    return 0;
  }

  else
  {
    return 0x4072C00000000000;
  }
}

void PhotosSearchBarPosition.CollapsibleSystemBar.Storage.init()(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void *PhotosSearchBarPosition.CollapsibleSystemBar.Storage.searchBarButtonItem.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *PhotosSearchBarPosition.CollapsibleSystemBar.Storage.closeBarButtonItem.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_1A4A3CC10(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t PhotosSearchBarPosition.CollapsibleSystemBar.__allocating_init(placement:)(_BYTE *a1)
{
  result = swift_allocObject();
  *(result + 16) = *a1;
  *(result + 24) = 0;
  return result;
}

uint64_t PhotosSearchBarPosition.CollapsibleSystemBar.init(placement:)(_BYTE *a1)
{
  *(v1 + 16) = *a1;
  *(v1 + 24) = 0;
  return v1;
}

uint64_t PhotosSearchBarPosition.CollapsibleSystemBar.__allocating_init(placement:closeAction:)(_BYTE *a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = *a1;
  *(result + 24) = a2;
  return result;
}

uint64_t PhotosSearchBarPosition.CollapsibleSystemBar.init(placement:closeAction:)(_BYTE *a1, uint64_t a2)
{
  *(v2 + 16) = *a1;
  *(v2 + 24) = a2;
  return v2;
}

void *sub_1A4A3CCC8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 112))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A4A3CD24(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_1A4A3CD68@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t sub_1A4A3CDAC(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

void *PhotosSearchBarPosition.CollapsibleSystemBar.closeAction.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t PhotosSearchBarPosition.CollapsibleSystemBar.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A4A3CE6C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  result = (*(v2 + 96))(&v5);
  *a2 = result;
  return result;
}

uint64_t sub_1A4A3CEB8@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  result = (*(v2 + 104))(&v5);
  *a2 = result;
  return result;
}

void *sub_1A4A3CF48()
{
  v1 = *(*v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t PhotosSearchBarPosition.TabBar.init(closeAction:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t PhotosSearchBarPosition.TabBar.style.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v2 = *MEMORY[0x1E69C1CE8];
  v3 = sub_1A5242074();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t PhotosSearchBarPosition.TabBar.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A4A3D100@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v2 = *MEMORY[0x1E69C1CE8];
  v3 = sub_1A5242074();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t *PhotosSearchBarCoordinator.init(position:activeSearchViewModel:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1A3C323A4(a1);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t sub_1A4A3D210@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4A3D25C(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 176);
  v4 = *a1;
  return v3(v2);
}

void sub_1A4A3D2B4(void *a1)
{
  v2 = sub_1A3CB1C7C();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    if (Strong)
    {
      sub_1A3C52C70(0, &qword_1EB126B10);
      v5 = Strong;
      v6 = sub_1A524DBF4();

      if (v6)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  else if (!Strong)
  {
    goto LABEL_13;
  }

  [v2 removeFromSuperview];
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 view];

    if (!v9)
    {
      __break(1u);
      return;
    }

    [v9 addSubview_];
  }

  v10 = *&v2[qword_1EB125F18];
  if (v10)
  {
    v11 = swift_unknownObjectWeakLoadStrong();

    v10(v11);
    sub_1A3C33378(v10);
  }

LABEL_13:
}

uint64_t sub_1A4A3D448()
{
  v0 = sub_1A3CB1C7C();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

void (*sub_1A4A3D488(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1A4A3D448();
  return sub_1A4A3D4D0;
}

void sub_1A4A3D4D0(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1A4A3D2B4(v2);
  }

  else
  {
    sub_1A4A3D2B4(*a1);
  }
}

uint64_t sub_1A4A3D538(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

id sub_1A4A3D590(uint64_t (*a1)(uint64_t))
{
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = *(v1 + 32);
  }

  else
  {
    v4 = a1(v1);
    v5 = *(v1 + 32);
    *(v1 + 32) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_1A4A3D5F4(uint64_t a1)
{
  sub_1A3C2953C(0, &qword_1EB121440, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E6981AA0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v39 - v5;
  sub_1A4A451F0(0, &qword_1EB147C08, type metadata accessor for PhotosSearchBarPosition.CollapsibleSystemBar, &protocol witness table for PhotosSearchBarPosition.CollapsibleSystemBar, type metadata accessor for PhotosSearchBarCoordinator.ManagedSearchBarContent);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v39 - v11;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = (&v39 - v14);
  v16 = *(*a1 + 352);
  v17 = (v16)(&v42, v13);
  v16(&v41, v17);
  v18 = sub_1A4A3F570();
  v19 = *(*a1 + 152);
  swift_beginAccess();
  (*(v4 + 16))(v6, a1 + v19, v3);
  sub_1A524BAA4();
  (*(v4 + 8))(v6, v3);
  v20 = swift_allocObject();
  swift_weakInit();
  *v15 = v41;
  v15[1] = v18;
  type metadata accessor for LemonadeActiveSearchViewModel(0);
  sub_1A3C325C4(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A524BAC4();
  v21 = (v15 + *(v8 + 52));
  *v21 = sub_1A4A44FCC;
  v21[1] = v20;
  v22 = v42;
  sub_1A4A451F0(0, &qword_1EB147C10, type metadata accessor for PhotosSearchBarPosition.CollapsibleSystemBar, &protocol witness table for PhotosSearchBarPosition.CollapsibleSystemBar, type metadata accessor for PhotosSearchBarCoordinator.ManagedSearchBar);
  v24 = objc_allocWithZone(v23);
  v25 = MEMORY[0x1E69E7D40];
  *(v24 + *((*MEMORY[0x1E69E7D40] & *v24) + qword_1EB173A00 + 16)) = v22;
  v26 = v39;
  sub_1A4A45054(v15, v39, &qword_1EB147C08, type metadata accessor for PhotosSearchBarPosition.CollapsibleSystemBar, &protocol witness table for PhotosSearchBarPosition.CollapsibleSystemBar);
  v27 = (v24 + *((*v25 & *v24) + qword_1EB173870 + 32));
  *v27 = 0;
  v27[1] = 0;
  v28 = (v24 + *((*v25 & *v24) + qword_1EB173870 + 40));
  *v28 = 0;
  v28[1] = 0;
  *(v24 + *((*v25 & *v24) + qword_1EB173870 + 48)) = 0;
  *(v24 + *((*v25 & *v24) + qword_1EB173870 + 56)) = 2;
  *(v24 + *((*v25 & *v24) + qword_1EB173870 + 64)) = 0;
  sub_1A4A45054(v26, v40, &qword_1EB147C08, type metadata accessor for PhotosSearchBarPosition.CollapsibleSystemBar, &protocol witness table for PhotosSearchBarPosition.CollapsibleSystemBar);
  v29 = sub_1A52485F4();
  sub_1A4A44D20(v26, &qword_1EB147C08, type metadata accessor for PhotosSearchBarPosition.CollapsibleSystemBar, &protocol witness table for PhotosSearchBarPosition.CollapsibleSystemBar);
  sub_1A4A44D20(v15, &qword_1EB147C08, type metadata accessor for PhotosSearchBarPosition.CollapsibleSystemBar, &protocol witness table for PhotosSearchBarPosition.CollapsibleSystemBar);
  v30 = v29;
  sub_1A52485D4();

  v31 = swift_allocObject();
  swift_weakInit();
  v32 = (v30 + *((*v25 & *v30) + qword_1EB173870 + 32));
  v33 = *v32;
  *v32 = sub_1A4A450D8;
  v32[1] = v31;
  v34 = v30;

  sub_1A3C33378(v33);

  v35 = swift_allocObject();
  swift_weakInit();
  v36 = (v34 + *((*v25 & *v34) + qword_1EB173870 + 40));
  v37 = *v36;
  *v36 = sub_1A4A45170;
  v36[1] = v35;

  sub_1A3C33378(v37);

  return v34;
}

void *sub_1A4A3DCA4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 88);
  v4 = type metadata accessor for PhotosSearchBarCoordinator.ManagedSearchBarContent();
  v39 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - v5;
  v35 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v37 = &v34 - v11;
  v38 = v3;
  v36 = type metadata accessor for PhotosSearchBarCoordinator.ManagedSearchBar();
  v12 = *(v1 + 352);
  v13 = v12();
  (v12)(v13);
  v14 = sub_1A4A3F65C();
  sub_1A4A3FE6C();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 2) = v2;
  *(v16 + 3) = v3;
  *(v16 + 4) = v15;
  v17 = v35;
  (*(v35 + 32))(v6, v9, v2);
  *&v6[*(v4 + 36)] = v14;
  sub_1A3C325C4(&qword_1EB125568, type metadata accessor for LemonadeActiveSearchViewModel);
  sub_1A524BAC4();
  v18 = &v6[*(v4 + 44)];
  *v18 = sub_1A4A44BD0;
  v18[1] = v16;
  v19 = objc_allocWithZone(v36);
  v20 = MEMORY[0x1E69E7D40];
  v21 = v37;
  (*(*(*((*MEMORY[0x1E69E7D40] & *v19) + qword_1EB173A00) - 8) + 16))(&v19[*((*MEMORY[0x1E69E7D40] & *v19) + qword_1EB173A00 + 16)], v37);
  v22 = sub_1A4A43C6C(v6);
  (*(v39 + 8))(v6, v4);
  (*(v17 + 8))(v21, v2);
  sub_1A52485D4();
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v25 = v38;
  v24[2] = v2;
  v24[3] = v25;
  v24[4] = v23;
  v26 = (v22 + *((*v20 & *v22) + qword_1EB173870 + 32));
  v27 = *v26;
  *v26 = sub_1A4A44C58;
  v26[1] = v24;
  v28 = v22;

  sub_1A3C33378(v27);

  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  v30[2] = v2;
  v30[3] = v25;
  v30[4] = v29;
  v31 = (v28 + *((*MEMORY[0x1E69E7D40] & *v28) + qword_1EB173870 + 40));
  v32 = *v31;
  *v31 = sub_1A4A44CB0;
  v31[1] = v30;

  sub_1A3C33378(v32);

  return v28;
}

id sub_1A4A3E1F4(uint64_t (*a1)(uint64_t))
{
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = *(v1 + 40);
  }

  else
  {
    v4 = a1(v1);
    v5 = *(v1 + 40);
    *(v1 + 40) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1A4A3E258(uint64_t a1)
{
  v2 = sub_1A5243B64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24[-v7];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24[-v10];
  v29 = type metadata accessor for PhotosSearchBarPosition.CollapsibleSystemBar();
  v30 = &protocol witness table for PhotosSearchBarPosition.CollapsibleSystemBar;
  KeyPath = swift_getKeyPath();
  v27 = a1;
  v28 = KeyPath;
  v25 = a1;
  v26 = KeyPath;
  sub_1A52415B4();

  sub_1A4A451F0(0, &qword_1EB147C18, type metadata accessor for PhotosSearchBarPosition.CollapsibleSystemBar, &protocol witness table for PhotosSearchBarPosition.CollapsibleSystemBar, type metadata accessor for PhotosSearchBarCoordinator.ManagedSuggestionView);
  v14 = objc_allocWithZone(v13);
  v15 = (v14 + qword_1EB125F18);
  *v15 = 0;
  v15[1] = 0;
  swift_unknownObjectWeakInit();
  v16 = *(v3 + 16);
  v16(v8, v11, v2);
  v17 = MEMORY[0x1E69E7D40];
  v18 = (v14 + *((*MEMORY[0x1E69E7D40] & *v14) + qword_1EB173870 + 32));
  *v18 = 0;
  v18[1] = 0;
  v19 = (v14 + *((*v17 & *v14) + qword_1EB173870 + 40));
  *v19 = 0;
  v19[1] = 0;
  *(v14 + *((*v17 & *v14) + qword_1EB173870 + 48)) = 0;
  *(v14 + *((*v17 & *v14) + qword_1EB173870 + 56)) = 2;
  *(v14 + *((*v17 & *v14) + qword_1EB173870 + 64)) = 0;
  v16(v5, v8, v2);
  v20 = sub_1A52485F4();
  v21 = *(v3 + 8);
  v21(v8, v2);
  v21(v11, v2);
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  v22 = v20;
  sub_1A52485D4();

  return v22;
}

id sub_1A4A3E60C(uint64_t a1)
{
  v2 = sub_1A5243B64();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v24[-v8];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24[-v10];
  v29 = type metadata accessor for PhotosSearchBarPosition.TabBar();
  v30 = &protocol witness table for PhotosSearchBarPosition.TabBar;
  KeyPath = swift_getKeyPath();
  v27 = a1;
  v28 = KeyPath;
  v25 = a1;
  v26 = KeyPath;
  sub_1A52415B4();

  sub_1A4A451F0(0, &qword_1EB125F10, type metadata accessor for PhotosSearchBarPosition.TabBar, &protocol witness table for PhotosSearchBarPosition.TabBar, type metadata accessor for PhotosSearchBarCoordinator.ManagedSuggestionView);
  v14 = objc_allocWithZone(v13);
  v15 = (v14 + qword_1EB125F18);
  *v15 = 0;
  v15[1] = 0;
  swift_unknownObjectWeakInit();
  v16 = *(v3 + 16);
  v16(v9, v11, v2);
  v17 = MEMORY[0x1E69E7D40];
  v18 = (v14 + *((*MEMORY[0x1E69E7D40] & *v14) + qword_1EB173870 + 32));
  *v18 = 0;
  v18[1] = 0;
  v19 = (v14 + *((*v17 & *v14) + qword_1EB173870 + 40));
  *v19 = 0;
  v19[1] = 0;
  *(v14 + *((*v17 & *v14) + qword_1EB173870 + 48)) = 0;
  *(v14 + *((*v17 & *v14) + qword_1EB173870 + 56)) = 2;
  *(v14 + *((*v17 & *v14) + qword_1EB173870 + 64)) = 0;
  v16(v6, v9, v2);
  v20 = sub_1A52485F4();
  v21 = *(v3 + 8);
  v21(v9, v2);
  v21(v11, v2);
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  v22 = v20;
  sub_1A52485D4();

  return v22;
}

id sub_1A4A3E9C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_1A5243B64();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  type metadata accessor for PhotosSearchBarCoordinator.ManagedSuggestionView();
  v10[0] = v5;
  v10[1] = v6;
  swift_getKeyPath();
  sub_1A4A3EB08();

  v7 = sub_1A4A3EB7C(v4);
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = v7;
  sub_1A52485D4();

  return v8;
}

uint64_t sub_1A4A3EB7C(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[qword_1EB125F18];
  *v4 = 0;
  *(v4 + 1) = 0;
  swift_unknownObjectWeakInit();
  v5 = sub_1A4A43C6C(a1);
  v6 = sub_1A5243B64();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v5;
}

void sub_1A4A3EC14(uint64_t a1)
{
  v2 = *(v1 + 40);
  *(v1 + 40) = a1;
}

void sub_1A4A3EC20(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v4 = v2;
  v5 = sub_1A4A3E1F4(a1);
  if (*(v2 + 24))
  {

    v6 = sub_1A42F75F0();
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x1E69E7D40];
  *(v5 + *((*MEMORY[0x1E69E7D40] & *v5) + qword_1EB173870 + 48)) = v6;

  [v5 setNeedsUpdateConstraints];

  v10 = *(v4 + 40);
  v8 = sub_1A4A3D590(a2);
  v9 = [v8 window];

  if (v9)
  {
  }

  *(v10 + *((*v7 & *v10) + qword_1EB173870 + 56)) = v9 != 0;
  [v10 setNeedsUpdateConstraints];
}

void sub_1A4A3EDA0()
{
  v1 = v0;
  v2 = sub_1A3CB1C7C();
  if (*(v0 + 24))
  {

    v3 = sub_1A42F75F0();
  }

  else
  {
    v3 = 0;
  }

  v4 = MEMORY[0x1E69E7D40];
  *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + qword_1EB173870 + 48)) = v3;

  [v2 setNeedsUpdateConstraints];

  v7 = *(v1 + 40);
  v5 = sub_1A4A3D578();
  v6 = [v5 window];

  if (v6)
  {
  }

  *(v7 + *((*v4 & *v7) + qword_1EB173870 + 56)) = v6 != 0;
  [v7 setNeedsUpdateConstraints];
}

void sub_1A4A3EF10(char a1)
{
  v2 = v1;
  v4 = sub_1A4A3E1F4(sub_1A4A3E258);
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {

    type metadata accessor for PhotosSearchSuggestionsPositionManager();
    v6 = sub_1A4A3D590(sub_1A4A3D5F4);
    v7 = *(*v2 + 352);
    v8 = *(v2 + 40);
    v7(&v18);

    (v7)(&v18, v9);

    v10 = sub_1A4A3F570();
    v11 = sub_1A42F76F8();
    *(v2 + 24) = sub_1A42F7700(v6, v8, a1 & 1, v10, -4.0, 4.0, v11);

    sub_1A4A3EC20(sub_1A4A3E258, sub_1A4A3D5F4);
  }

  else
  {
    v12 = *(v2 + 40);
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = a1 & 1;
    v15 = &v12[qword_1EB125F18];
    v16 = *&v12[qword_1EB125F18];
    *v15 = sub_1A4A44F40;
    v15[1] = v14;
    v17 = v12;

    sub_1A3C33378(v16);
  }
}

void sub_1A4A3F154(char a1)
{
  v2 = v1;
  v4 = sub_1A4A3E1F4(sub_1A4A3E60C);
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {

    type metadata accessor for PhotosSearchSuggestionsPositionManager();
    v6 = sub_1A4A3D590(sub_1A3C32804);
    v7 = *(*v2 + 352);
    v8 = *(v2 + 40);
    v7(&v18);

    (v7)(&v18, v9);

    v10 = sub_1A4A3F570();
    v11 = sub_1A42F76F8();
    *(v2 + 24) = sub_1A42F7700(v6, v8, a1 & 1, v10, -0.0, 0.0, v11);

    sub_1A4A3EC20(sub_1A4A3E60C, sub_1A3C32804);
  }

  else
  {
    v12 = *(v2 + 40);
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = a1 & 1;
    v15 = &v12[qword_1EB125F18];
    v16 = *&v12[qword_1EB125F18];
    *v15 = sub_1A4A44F28;
    v15[1] = v14;
    v17 = v12;

    sub_1A3C33378(v16);
  }
}

void sub_1A4A3F39C(char a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1A3CB1C7C();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {

    type metadata accessor for PhotosSearchSuggestionsPositionManager();
    v7 = sub_1A4A3D578();
    v8 = v2[5];
    v9 = -sub_1A4A40104(v8);
    v11 = sub_1A4A40104(v10);
    v12 = sub_1A4A3F65C();
    v13 = sub_1A42F76F8();
    v2[3] = sub_1A42F7700(v7, v8, a1 & 1, v12, v9, v11, v13);

    sub_1A4A3EDA0();
  }

  else
  {
    v14 = v2[5];
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = *(v4 + 80);
    *(v16 + 24) = *(v4 + 88);
    *(v16 + 32) = v15;
    *(v16 + 40) = a1 & 1;
    v17 = &v14[qword_1EB125F18];
    v18 = *&v14[qword_1EB125F18];
    *v17 = sub_1A4A44B68;
    v17[1] = v16;
    v19 = v14;

    sub_1A3C33378(v18);
  }
}

uint64_t sub_1A4A3F570()
{
  if (v0[6])
  {
    v1 = v0[6];
  }

  else
  {
    v2 = (*v0 + 352);
    v3 = *v2;
    (*v2)(&v6);

    (v3)(&v6, v4);

    sub_1A5243AF4();
    swift_allocObject();
    v1 = sub_1A5243AE4();
    v0[6] = v1;
  }

  return v1;
}

uint64_t sub_1A4A3F65C()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    sub_1A4A40104(0);
    sub_1A4A40104(v2);
    sub_1A5243AF4();
    swift_allocObject();
    v1 = sub_1A5243AE4();
    *(v0 + 48) = v1;
  }

  return v1;
}

id sub_1A4A3F6F8@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v4 = v1[7];
  v3 = v1[8];
  v5 = v1[9];
  v6 = v4;
  v7 = v3;
  v8 = v5;
  if (v4 == 1)
  {
    v1[7] = 0;
    v1[8] = 0;
    v1[9] = 0;
    sub_1A4A43E5C(1, v3, v5);
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  *a1 = v6;
  a1[1] = v7;
  a1[2] = v8;
  return sub_1A4A453DC(v4, v3, v5);
}

uint64_t sub_1A4A3F79C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v18 = a1;
  v3 = *v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1A524DF24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  v12 = *(v3 + 136);
  swift_beginAccess();
  (*(v6 + 16))(v11, &v2[v12], v5);
  v13 = *(AssociatedTypeWitness - 8);
  if ((*(v13 + 48))(v11, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v13 + 32))(v18, v11, AssociatedTypeWitness);
  }

  (*(v6 + 8))(v11, v5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = v18;
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v13 + 16))(v8, v15, AssociatedTypeWitness);
  (*(v13 + 56))(v8, 0, 1, AssociatedTypeWitness);
  swift_beginAccess();
  (*(v6 + 40))(&v2[v12], v8, v5);
  return swift_endAccess();
}

uint64_t sub_1A4A3FA64(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1A524DF24();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  (*(v9 + 32))(&v12 - v7, a1, AssociatedTypeWitness, v6);
  (*(v9 + 56))(v8, 0, 1, AssociatedTypeWitness);
  v10 = *(*v1 + 136);
  swift_beginAccess();
  (*(v5 + 40))(v1 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_1A4A3FC64(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return sub_1A4A3FDC4(v3);
}

uint64_t sub_1A4A3FD24@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 144);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1A4A3FDC4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 144);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_1A4A3FE6C()
{
  sub_1A3C2953C(0, &qword_1EB121440, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E6981AA0]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - v4;
  v6 = *(*v0 + 152);
  swift_beginAccess();
  (*(v3 + 16))(v5, v0 + v6, v2);
  sub_1A524BAA4();
  (*(v3 + 8))(v5, v2);
  return v8;
}

uint64_t sub_1A4A3FFB8()
{
  sub_1A3C2953C(0, &qword_1EB121440, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E6981AA0]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - v4;
  v6 = *(*v0 + 152);
  swift_beginAccess();
  (*(v3 + 16))(v5, v0 + v6, v2);
  sub_1A524BAB4();
  return (*(v3 + 8))(v5, v2);
}

double sub_1A4A40104(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 352))(v1);
  type metadata accessor for PhotosSearchBarPosition.TabBar();
  v3 = swift_dynamicCast();
  result = 4.0;
  if (v3)
  {

    return 0.0;
  }

  return result;
}

id *PhotosSearchBarCoordinator.deinit()
{
  v1 = *v0;

  v2 = *(*v0 + 17);
  v3 = v1[10];
  swift_getAssociatedTypeWitness();
  v4 = sub_1A524DF24();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  (*(*(v3 - 8) + 8))(v0 + *(*v0 + 18), v3);
  v5 = *(*v0 + 19);
  sub_1A3C2953C(0, &qword_1EB121440, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E6981AA0]);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t PhotosSearchBarCoordinator.__deallocating_deinit()
{
  PhotosSearchBarCoordinator.deinit();

  return swift_deallocClassInstance();
}

uint64_t PhotosSearchBarCoordinator.hashValue.getter()
{
  sub_1A524EC94();
  MEMORY[0x1A590A010](v0);
  return sub_1A524ECE4();
}

uint64_t sub_1A4A404B0()
{
  sub_1A524EC94();
  PhotosSearchBarCoordinator.hash(into:)();
  return sub_1A524ECE4();
}

void sub_1A4A40514(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - v6;
  (*(v8 + 352))(v5);
  (*(a1 + 40))(&v10, v3, a1);
  (*(v4 + 8))(v7, v3);
  sub_1A4A3F39C((v10 & 1) == 0);
}

id PhotosSearchBarCoordinator<>.searchBarButtonItem.getter(uint64_t a1)
{
  v3 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  sub_1A4A3F79C(&v18 - v9);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v5 + 8))(v10, AssociatedTypeWitness);
  if (v12)
  {
    return v12;
  }

  sub_1A4A40514(a1);
  v14 = sub_1A4A3D578();
  v15 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];

  (*(a1 + 56))(v3, a1);
  v16 = sub_1A524C634();

  [v15 setIdentifier_];

  v17 = v15;
  sub_1A4A3F79C(v7);
  (*(AssociatedConformanceWitness + 24))(v15, AssociatedTypeWitness, AssociatedConformanceWitness);
  sub_1A4A3FA64(v7);
  return v17;
}

uint64_t PhotosSearchBarCoordinator<>.closeBarButtonItem.getter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  v35 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v31 - v8;
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - v15;
  v17 = *(v3 + 352);
  v17(v14);
  (*(a1 + 40))(&v36, v4, a1);
  v18 = *(v9 + 8);
  v19 = v18(v16, v4);
  if (v36 != 1)
  {
    return 0;
  }

  (v17)(v19);
  v20 = (*(a1 + 48))(v4, a1);
  v18(v12, v4);
  if (!v20)
  {
    return 0;
  }

  v21 = v33;
  sub_1A4A3F79C(v33);
  v22 = v35;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = (*(AssociatedConformanceWitness + 40))(v22, AssociatedConformanceWitness);
  v34[1](v21, v22);
  if (v24)
  {
    v25 = v24;
  }

  else
  {
    sub_1A3C52C70(0, &qword_1EB126B80);
    v34 = v20;
    v27 = sub_1A524D2E4();
    v28 = v27;
    v29 = v32;
    sub_1A4A3F79C(v32);
    v30 = *(AssociatedConformanceWitness + 48);
    v20 = v28;
    v25 = v27;
    v30(v27, v22, AssociatedConformanceWitness);
    sub_1A4A3FA64(v29);
  }

  return v25;
}

uint64_t PhotosSearchBarCoordinator<>.barButtonItems.getter(uint64_t a1)
{
  v2 = PhotosSearchBarCoordinator<>.closeBarButtonItem.getter(a1);
  if (v2)
  {
    v3 = v2;
    sub_1A3CB8F68();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1A52FF960;
    *(v4 + 32) = PhotosSearchBarCoordinator<>.searchBarButtonItem.getter(a1);
    v5 = [objc_opt_self() fixedSpaceItemOfWidth_];
    result = v4;
    *(v4 + 40) = v5;
    *(v4 + 48) = v3;
  }

  else
  {
    sub_1A3CB8F68();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1A52F9790;
    v8 = PhotosSearchBarCoordinator<>.searchBarButtonItem.getter(a1);
    result = v7;
    *(v7 + 32) = v8;
  }

  return result;
}

void PhotosSearchBarCoordinator<>.updatePlacement(_:)(char *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = (*v1 + 352);
  v5 = *v4;
  (*v4)(v14);
  v6 = v14[0];
  swift_beginAccess();
  *(v6 + 16) = v3;

  sub_1A4A3F6F8(v14);

  v7 = v14[0];
  v8 = v14[2];
  swift_beginAccess();
  v9 = v2[7];
  v10 = v2[8];
  v11 = v2[9];
  v2[7] = v7;
  v2[8] = 0;
  v2[9] = v8;
  sub_1A4A43E5C(v9, v10, v11);
  v12 = (v5)(v14);
  (*(*v14[0] + 112))(&v13, v12);

  sub_1A4A3EF10((v13 & 1) == 0);
}

BOOL PhotosSearchBarCoordinator<>.shouldShowCompactSearchBarButtonItem.getter()
{
  sub_1A3C2953C(0, &qword_1EB121440, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E6981AA0]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v17 - v4;
  v6 = *(*v0 + 152);
  swift_beginAccess();
  v7 = *(v3 + 16);
  v7(v5, v0 + v6, v2);
  sub_1A524BAA4();
  v8 = *(v3 + 8);
  v8(v5, v2);
  active = LemonadeActiveSearchViewModel.isEditing.getter();

  if (active)
  {
    return 0;
  }

  v7(v5, v0 + v6, v2);
  sub_1A524BAA4();
  v8(v5, v2);
  v11 = LemonadeActiveSearchViewModel.searchText.getter();

  v12 = [v11 string];

  v13 = sub_1A524C674();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  return v16 == 0;
}

id PhotosSearchBarCoordinator<>.compactSearchBarButtonItem.getter()
{
  v1 = v0;
  sub_1A4A3F6F8(&v14);
  v2 = v14;
  v3 = v16;

  if (v2)
  {
    return v2;
  }

  sub_1A3C52C70(0, &qword_1EB126B80);
  sub_1A3C52C70(0, &qword_1EB126590);
  v5 = swift_allocObject();
  swift_weakInit();
  sub_1A524DC64();
  v6 = sub_1A524D2E4();
  v7 = sub_1A524C634();
  [v6 setIdentifier_];

  v8 = v6;
  sub_1A4A3F6F8(&v14);

  v9 = v15;
  v10 = v16;
  swift_beginAccess();
  v11 = v1[7];
  v12 = v1[8];
  v13 = v1[9];
  v1[7] = v6;
  v1[8] = v9;
  v1[9] = v10;
  sub_1A4A43E5C(v11, v12, v13);
  return v8;
}

uint64_t sub_1A4A411F4()
{
  sub_1A3C2953C(0, &qword_1EB121440, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E6981AA0]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(*result + 152);
    v7 = result;
    swift_beginAccess();
    (*(v2 + 16))(v4, v7 + v6, v1);
    sub_1A524BAA4();

    (*(v2 + 8))(v4, v1);
    LemonadeActiveSearchViewModel.isEditing.setter(1);
  }

  return result;
}

uint64_t sub_1A4A4137C()
{
  sub_1A3C2953C(0, &qword_1EB121440, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E6981AA0]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - v4;
  v6 = *(*v0 + 152);
  swift_beginAccess();
  v7 = *(v3 + 16);
  v7(v5, v0 + v6, v2);
  sub_1A524BAA4();
  v8 = *(v3 + 8);
  v8(v5, v2);
  LemonadeActiveSearchViewModel.searchText.setter([objc_allocWithZone(MEMORY[0x1E696AAB0]) init]);

  v7(v5, v0 + v6, v2);
  sub_1A524BAA4();
  v8(v5, v2);
  LemonadeActiveSearchViewModel.isEditing.setter(0);

  (*(*v0 + 352))(&v13, v9);
  v10 = *(v13 + 16);

  v10(v11);
}

uint64_t sub_1A4A415B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v27 = a3;
  sub_1A3C2953C(0, &qword_1EB121440, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E6981AA0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  v12 = *(*a1 + 152);
  swift_beginAccess();
  v22 = *(v6 + 16);
  v22(v8, a1 + v12, v5);
  sub_1A524BAB4();
  v13 = *(v6 + 8);
  v13(v8, v5);
  swift_getKeyPath();
  sub_1A524BAD4();

  v13(v11, v5);
  v33 = v30;
  v34 = v31;
  v35 = v32;
  v25 = sub_1A4A3F570();
  v14 = v22;
  v22(v8, a1 + v12, v5);
  sub_1A524BAA4();
  v13(v8, v5);
  v24 = LemonadeActiveSearchViewModel.searchText.getter();

  v14(v8, a1 + v12, v5);
  sub_1A524BAA4();
  v13(v8, v5);
  v23 = sub_1A3EA5B84();

  v21 = v12;
  v14(v8, a1 + v12, v5);
  sub_1A524BAA4();
  v13(v8, v5);
  LOBYTE(v12) = sub_1A3C33834();

  if (v12)
  {
    v14(v8, a1 + v21, v5);
    sub_1A524BAA4();
    v13(v8, v5);
    LemonadeActiveSearchViewModel.isEditing.getter();
  }

  v16 = (*(*a1 + 352))(&v29, v15);
  (*(*v29 + 112))(&v28, v16);
  if (v28)
  {
    _s12PhotosUICore0A17SearchBarPositionO03TabD0C35searchSuggestionViewAnimationAnchor7SwiftUI9UnitPointVvg_0();
  }

  else
  {
    sub_1A524BE44();
  }

  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v26;

  return sub_1A5243B54();
}

uint64_t sub_1A4A41A20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a3;
  v19 = *a1;
  v5 = *(v19 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v18 - v7;
  sub_1A3C2953C(0, &qword_1EB121440, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E6981AA0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  sub_1A4A3FFB8();
  swift_getKeyPath();
  sub_1A524BAD4();

  (*(v11 + 8))(v13, v10);
  v24 = v21;
  v25 = v22;
  v26 = v23;
  sub_1A4A3F65C();
  sub_1A4A3FE6C();
  LemonadeActiveSearchViewModel.searchText.getter();

  sub_1A4A3FE6C();
  sub_1A3EA5B84();

  sub_1A4A3FE6C();
  LOBYTE(v10) = sub_1A3C33834();

  if (v10)
  {
    sub_1A4A3FE6C();
    LemonadeActiveSearchViewModel.isEditing.getter();
  }

  (*(*a1 + 352))(v14);
  (*(*(v19 + 88) + 32))(v5);
  (*(v6 + 8))(v8, v5);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a2;

  return sub_1A5243B54();
}

uint64_t (*sub_1A4A41DA4(uint64_t a1, uint64_t a2))()
{
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a2;

  return sub_1A4A45258;
}

uint64_t sub_1A4A41E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A3C2953C(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_1A524CCB4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1A524CC54();

  v12 = sub_1A524CC44();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  v13[5] = a2;

  sub_1A3D4D930(0, 0, v9, a5, v13);
}

uint64_t sub_1A4A41FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[9] = sub_1A5243B64();
  v5[10] = swift_task_alloc();
  sub_1A524CC54();
  v5[11] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4A420A8, v7, v6);
}

uint64_t sub_1A4A420A8()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[5] = Strong;
    v2 = v0[8];
    v3 = Strong;

    swift_getAtKeyPath();

    v4 = v0[6];
    v5 = swift_task_alloc();
    *(v5 + 16) = v3;
    *(v5 + 24) = v2;
    v6 = swift_task_alloc();
    *(v6 + 16) = v3;
    *(v6 + 24) = v2;
    sub_1A52415B4();

    sub_1A5248604();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1A4A42200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  sub_1A5243B64();
  v5[9] = swift_task_alloc();
  sub_1A524CC54();
  v5[10] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4A422C4, v7, v6);
}

uint64_t sub_1A4A422C4()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[5] = Strong;

    swift_getAtKeyPath();

    v2 = v0[6];
    sub_1A4A3EB08();
    sub_1A5248604();
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A4A423B8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + qword_1EB173870 + 32));
  v4 = *v3;
  *v3 = a1;
  v3[1] = a2;
  return sub_1A3C33378(v4);
}

uint64_t sub_1A4A42414(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + qword_1EB173870 + 40));
  v4 = *v3;
  *v3 = a1;
  v3[1] = a2;
  return sub_1A3C33378(v4);
}

id sub_1A4A42470(uint64_t a1)
{
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + qword_1EB173870 + 48)) = a1;

  return [v1 setNeedsUpdateConstraints];
}

id sub_1A4A425AC()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v8 = *(v3 + qword_1EB173870);
  v9 = *(v3 + qword_1EB173870 + 16);
  v10.receiver = v1;
  v10.super_class = type metadata accessor for PhotosSearchBarCoordinator.ManagedView();
  objc_msgSendSuper2(&v10, sel_didMoveToWindow, v8, v9);
  v4 = (v1 + *((*v2 & *v1) + qword_1EB173870 + 32));
  v5 = *v4;
  if (*v4)
  {
    sub_1A3C66EE8(*v4);
    v6 = [v1 window];
    v5();
    sub_1A3C33378(v5);
  }

  return [v1 setNeedsUpdateConstraints];
}

void sub_1A4A426DC(void *a1)
{
  v1 = a1;
  sub_1A4A425AC();
}

void sub_1A4A42724()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *MEMORY[0x1E69E7D40] & *v0;
  v7 = *(v2 + qword_1EB173870);
  v8 = *(v2 + qword_1EB173870 + 16);
  v9.receiver = v0;
  v9.super_class = type metadata accessor for PhotosSearchBarCoordinator.ManagedView();
  objc_msgSendSuper2(&v9, sel_layoutSubviews, v7, v8);
  v3 = [v0 superview];
  [v3 bringSubviewToFront_];

  v4 = (v0 + *((*v1 & *v0) + qword_1EB173870 + 40));
  v5 = *v4;
  if (*v4)
  {
    v6 = sub_1A3C66EE8(*v4);
    v5(v6);
    sub_1A3C33378(v5);
  }
}

void sub_1A4A42850(void *a1)
{
  v1 = a1;
  sub_1A4A42724();
}

uint64_t sub_1A4A42898()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *MEMORY[0x1E69E7D40] & *v0;
  v8 = *(v2 + qword_1EB173870);
  v9 = *(v2 + qword_1EB173870 + 16);
  v10.receiver = v0;
  v10.super_class = type metadata accessor for PhotosSearchBarCoordinator.ManagedView();
  objc_msgSendSuper2(&v10, sel_updateConstraints, v8, v9);
  v3 = *v1 & *v0;
  v4 = qword_1EB173870;
  if (*(v0 + *(v3 + qword_1EB173870 + 64)))
  {
    objc_opt_self();
    sub_1A3C52C70(0, &qword_1EB126A30);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v5 = *(v0 + *(v3 + qword_1EB173870 + 56));
  if (v5 != 2 && (v5 & 1) != 0)
  {
    v6 = [v0 window];
    if (v6)
    {

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v4 = qword_1EB173870;
    v3 = *v1 & *v0;
  }

  *(v0 + *(v3 + v4 + 64)) = 0;

  if (*(v0 + *((*v1 & *v0) + qword_1EB173870 + 64)))
  {
    objc_opt_self();
    sub_1A3C52C70(0, &qword_1EB126A30);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

void sub_1A4A42B80(void *a1)
{
  v1 = a1;
  sub_1A4A42898();
}

uint64_t sub_1A4A42C1C(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_1A4A43C6C(a1);
  (*(*(*(v2 + qword_1EB173870 + 8) - 8) + 8))(a1);
  return v5;
}

id sub_1A4A42CA0(void *a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = (v1 + *(v4 + qword_1EB173870 + 32));
  *v5 = 0;
  v5[1] = 0;
  v6 = (v1 + *((*v3 & *v1) + qword_1EB173870 + 40));
  *v6 = 0;
  v6[1] = 0;
  *(v1 + *((*v3 & *v1) + qword_1EB173870 + 48)) = 0;
  *(v1 + *((*v3 & *v1) + qword_1EB173870 + 56)) = 2;
  *(v1 + *((*v3 & *v1) + qword_1EB173870 + 64)) = 0;
  v7 = (v4 + qword_1EB173870);
  v10 = *v7;
  v11 = v7[1];
  v12.receiver = v1;
  v12.super_class = type metadata accessor for PhotosSearchBarCoordinator.ManagedView();
  v8 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1, v10, v11);

  if (v8)
  {
  }

  return v8;
}

uint64_t sub_1A4A42E88()
{
  v1 = MEMORY[0x1E69E7D40];
  sub_1A3C33378(*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + qword_1EB173870 + 32)));
  sub_1A3C33378(*(v0 + *((*v1 & *v0) + qword_1EB173870 + 40)));
}

id sub_1A4A42FCC()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v3 = *(v1 + qword_1EB173870);
  v4 = *(v1 + qword_1EB173870 + 16);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for PhotosSearchBarCoordinator.ManagedView();
  return objc_msgSendSuper2(&v5, sel_dealloc, v3, v4);
}

uint64_t sub_1A4A43050(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  sub_1A3C33378(*(a1 + *((*MEMORY[0x1E69E7D40] & *a1) + qword_1EB173870 + 32)));
  sub_1A3C33378(*(a1 + *((*v2 & *a1) + qword_1EB173870 + 40)));
}

id sub_1A4A43198(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[qword_1EB125F18];
  *v4 = 0;
  *(v4 + 1) = 0;
  swift_unknownObjectWeakInit();
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

void sub_1A4A43254()
{
  sub_1A3C33378(*(v0 + qword_1EB125F18));

  JUMPOUT(0x1A590F020);
}

void sub_1A4A43298(uint64_t a1)
{
  sub_1A3C33378(*(a1 + qword_1EB125F18));

  JUMPOUT(0x1A590F020);
}

double sub_1A4A43354(void *a1)
{
  v1 = a1;
  sub_1A4A44AC4();
  v3 = v2;

  return v3;
}

uint64_t sub_1A4A43490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  sub_1A3EE1D04();
  v38 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v54 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5242074();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v52 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C2953C(0, &qword_1EB1214F8, MEMORY[0x1E69C1CD0], MEMORY[0x1E6981948]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v49 = &v36 - v8;
  sub_1A3C2953C(0, &qword_1EB121440, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E6981AA0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v36 - v21;
  v51 = sub_1A5243AB4();
  v53 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4A44958();
  v37 = v24;
  v36 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v48 = &v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A524BAB4();
  swift_getKeyPath();
  sub_1A524BAD4();

  v26 = *(v11 + 8);
  v26(v22, v10);
  v47 = v57;
  v46 = v58;
  v45 = v59;
  sub_1A524BAB4();
  swift_getKeyPath();
  sub_1A524BAD4();

  v26(v19, v10);
  v44 = v55[8];
  v43 = v55[9];
  v42 = v56;
  sub_1A524BAB4();
  swift_getKeyPath();
  sub_1A524BAD4();

  v26(v16, v10);
  v41 = v55[5];
  v40 = v55[6];
  sub_1A524BAB4();
  swift_getKeyPath();
  sub_1A524BAD4();

  v26(v13, v10);
  (*(*(a1 + 24) + 24))(*(a1 + 16));
  sub_1A524BAA4();
  LemonadeActiveSearchViewModel.container.getter(v55);

  PhotosSearchBarLocalizedPlaceholder(_:)(v55);
  sub_1A3C30A8C(v55, &qword_1EB129AC0, sub_1A3C295A0);

  v27 = v50;
  sub_1A5243AA4();
  v28 = v51;
  v29 = v48;
  v30 = sub_1A3C325C4(&qword_1EB124D28, MEMORY[0x1E69C27B8]);
  v31 = v54;
  sub_1A524A744();
  (*(v53 + 8))(v27, v28);
  v32 = *MEMORY[0x1E697E728];
  v33 = sub_1A52486A4();
  (*(*(v33 - 8) + 104))(v31, v32, v33);
  sub_1A3C325C4(&unk_1EB1288C0, MEMORY[0x1E697E730]);
  result = sub_1A524C594();
  if (result)
  {
    v55[0] = v28;
    v55[1] = v30;
    swift_getOpaqueTypeConformance2();
    sub_1A3C325C4(&unk_1EB1263B0, sub_1A3EE1D04);
    v35 = v37;
    sub_1A524AB84();
    sub_1A4A44A0C(v31);
    return (*(v36 + 8))(v29, v35);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A4A43C6C(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = &v11 - v2;
  v5 = (v1 + *(v4 + 32));
  *v5 = 0;
  v5[1] = 0;
  v8 = (v1 + *((*v6 & *v1) + *(v7 + 2160) + 40));
  *v8 = 0;
  v8[1] = 0;
  *(v1 + *((*v6 & *v1) + *(v7 + 2160) + 48)) = 0;
  *(v1 + *((*v6 & *v1) + *(v7 + 2160) + 56)) = 2;
  *(v1 + *((*v6 & *v1) + *(v7 + 2160) + 64)) = 0;
  (*(v9 + 16))(v3);
  return sub_1A52485F4();
}

void sub_1A4A43E5C(void *a1, void *a2, void *a3)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1A4A43EB8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A4A4137C();
  }

  return result;
}

unint64_t sub_1A4A43F10()
{
  result = qword_1EB147BF8;
  if (!qword_1EB147BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147BF8);
  }

  return result;
}

uint64_t sub_1A4A441E8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1A4A44244(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1A4A44398(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  sub_1A3C2953C(0, &qword_1EB121440, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E6981AA0]);
  v9 = *(v8 - 8);
  v10 = *(v6 + 64);
  v11 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v14 = ((*(*(v8 - 8) + 64) + ((v11 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v15 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = a2 - v13 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v21 = v19 - 1;
    if (v15)
    {
      v21 = 0;
      v22 = *a1;
    }

    else
    {
      v22 = 0;
    }

    return v13 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = *(a1 + v14);
    if (v19)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v7 == v13)
  {
    v23 = *(v6 + 48);

    return v23(a1, v7, v5);
  }

  else
  {
    v24 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v12 & 0x80000000) != 0)
    {
      v26 = *(v9 + 48);

      return v26((v24 + v11 + 8) & ~v11);
    }

    else
    {
      v25 = *v24;
      if (*v24 >= 0xFFFFFFFF)
      {
        LODWORD(v25) = -1;
      }

      return (v25 + 1);
    }
  }
}

void sub_1A4A44630(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v27 = v8;
  v9 = *(v8 + 84);
  sub_1A3C2953C(0, &qword_1EB121440, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E6981AA0]);
  v11 = *(v10 - 8);
  v12 = *(v8 + 64);
  v13 = *(v11 + 80);
  if (v9 <= *(v11 + 84))
  {
    v14 = *(v11 + 84);
  }

  else
  {
    v14 = v9;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = ((*(*(v10 - 8) + 64) + ((v13 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v15 >= a3)
  {
    v19 = 0;
    v20 = a2 - v15;
    if (a2 <= v15)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((*(*(v10 - 8) + 64) + ((v13 + ((v12 + 7) & 0xFFFFFFF8) + 8) & ~v13) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v17 = a3 - v15 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = a2 - v15;
    if (a2 <= v15)
    {
LABEL_20:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *(a1 + v16) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v16) = 0;
      }

      else if (v19)
      {
        *(a1 + v16) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      if (v9 == v15)
      {
        v23 = *(v27 + 56);

        v23(a1, a2, v9, v7);
      }

      else
      {
        v24 = ((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v14 & 0x80000000) != 0)
        {
          v26 = *(v11 + 56);

          v26((v24 + v13 + 8) & ~v13, a2);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v25 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v25 = (a2 - 1);
          }

          *v24 = v25;
        }
      }

      return;
    }
  }

  if (((*(*(v10 - 8) + 64) + ((v13 + ((v12 + 7) & 0xFFFFFFF8) + 8) & ~v13) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1;
  }

  if (((*(*(v10 - 8) + 64) + ((v13 + ((v12 + 7) & 0xFFFFFFF8) + 8) & ~v13) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v22 = ~v15 + a2;
    bzero(a1, v16);
    *a1 = v22;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      *(a1 + v16) = v21;
    }

    else
    {
      *(a1 + v16) = v21;
    }
  }

  else if (v19)
  {
    *(a1 + v16) = v21;
  }
}

void sub_1A4A44958()
{
  if (!qword_1EB147C00)
  {
    sub_1A5243AB4();
    sub_1A3C325C4(&qword_1EB124D28, MEMORY[0x1E69C27B8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB147C00);
    }
  }
}

uint64_t sub_1A4A44A0C(uint64_t a1)
{
  sub_1A3EE1D04();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A4A44B68()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A4A3F39C(v1);
  }

  return result;
}

uint64_t sub_1A4A44BD0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 2;
  }

  v1 = (*(*Strong + 192))(Strong);

  return v1;
}

uint64_t sub_1A4A44C58()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A4A3EDA0();
  }

  return result;
}

uint64_t sub_1A4A44CB0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 24);

    if (v1)
    {
      sub_1A42F7A30(result);
    }
  }

  return result;
}

uint64_t sub_1A4A44D20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  sub_1A4A451F0(0, a2, a3, a4, type metadata accessor for PhotosSearchBarCoordinator.ManagedSearchBarContent);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t (*sub_1A4A44DC4())()
{
  v1 = *(v0 + 24);
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  return sub_1A4A44E50;
}

uint64_t sub_1A4A44E90()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A4A42200(v4, v5, v6, v2, v3);
}

uint64_t sub_1A4A44F58(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = *(v2 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2(v4);
  }

  return result;
}

uint64_t sub_1A4A44FD0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 2;
  }

  v1 = (*(*Strong + 192))(Strong);

  return v1;
}

uint64_t sub_1A4A45054(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  sub_1A4A451F0(0, a3, a4, a5, type metadata accessor for PhotosSearchBarCoordinator.ManagedSearchBarContent);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A4A45104(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A4A3EC20(a2, a3);
  }

  return result;
}

uint64_t sub_1A4A45174()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 24);

    if (v1)
    {
      sub_1A42F7A30(result);
    }
  }

  return result;
}

void sub_1A4A451F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1A4A45298()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A4A41FE0(v4, v5, v6, v2, v3);
}

void sub_1A4A45334(char a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getAtKeyPath();
    swift_endAccess();

    [v2 setHidden_];
  }

  else
  {
    swift_endAccess();
  }
}

id sub_1A4A453DC(id result, void *a2, void *a3)
{
  if (result != 1)
  {
    v4 = result;
    v5 = a3;
    v6 = v4;

    return a2;
  }

  return result;
}

id MemoryChangeRequestAnnotator.__allocating_init(sourceObject:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___PXMemoryChangeRequestAnnotator_sourceObject] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id MemoryChangeRequestAnnotator.init(sourceObject:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___PXMemoryChangeRequestAnnotator_sourceObject] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MemoryChangeRequestAnnotator();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_1A4A45500(void *a1)
{
  [a1 setUserCreated_];
  v3 = sub_1A4A455F4();
  if (!v1)
  {
    if (v4 >> 60 == 15)
    {
      v5 = 0;
    }

    else
    {
      v6 = v3;
      v7 = v4;
      v5 = sub_1A5240E84();
      sub_1A3DB556C(v6, v7);
    }

    [a1 setPhotosGraphData_];
  }
}

void *sub_1A4A455F4()
{
  v18 = *MEMORY[0x1E69E9840];
  v17 = MEMORY[0x1E69E6530];
  *&v16 = 1;
  sub_1A3C57128(&v16, v15);
  v0 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1A3E98278(v15, 0x6E6F6973726576, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v14 = v0;
  v2 = sub_1A4A458FC();
  v4 = MEMORY[0x1E69E7CA0];
  if (v3)
  {
    v17 = MEMORY[0x1E69E6158];
    *&v16 = v2;
    *(&v16 + 1) = v3;
    sub_1A3C57128(&v16, v15);
    v5 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A3E98278(v15, 0x65644964756F6C63, 0xEF7265696669746ELL, v5);
    v14 = v0;
  }

  else
  {
    sub_1A4551904(0x65644964756F6C63, 0xEF7265696669746ELL, &v16);
    sub_1A3C591BC(&v16, &qword_1EB126130, v4 + 8, MEMORY[0x1E69E6720], sub_1A4A464B8);
  }

  v6 = objc_opt_self();
  sub_1A3CB6BE0(0, &qword_1EB1261F0, sub_1A3C5D744, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = 0x69724F79726F7473;
  *(inited + 40) = 0xEB000000006E6967;
  sub_1A3C5D8DC(0, &qword_1EB12D8D8, MEMORY[0x1E69E5E28]);
  *(inited + 72) = v8;
  *(inited + 48) = v14;
  sub_1A3C5D7A8(inited);
  swift_setDeallocating();
  sub_1A3C5DDD4(inited + 32);
  v9 = sub_1A524C3D4();

  *&v16 = 0;
  v10 = [v6 px:v9 photosGraphDataFromProperties:&v16 error:?];

  v11 = v16;
  if (v10)
  {
    v12 = sub_1A5240EA4();
  }

  else
  {
    v12 = v11;
    sub_1A5240B84();

    swift_willThrow();
  }

  return v12;
}

char *sub_1A4A458FC()
{
  if (!*&v0[OBJC_IVAR___PXMemoryChangeRequestAnnotator_sourceObject])
  {
    goto LABEL_17;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (!v25)
  {
    swift_unknownObjectRelease();
LABEL_17:
    if (qword_1EB1E85B8 != -1)
    {
LABEL_23:
      swift_once();
    }

    v20 = sub_1A5246F24();
    __swift_project_value_buffer(v20, qword_1EB1E85C0);
    v21 = v0;
    v22 = sub_1A5246F04();
    v23 = sub_1A524D244();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      swift_slowAlloc();
      *v24 = 136315138;
      sub_1A4A464B8(0, &qword_1EB120200, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6720]);
      swift_unknownObjectRetain();
      sub_1A524C714();
      sub_1A3C2EF94();
    }

    return 0;
  }

  result = [v25 photoLibrary];
  if (result)
  {
    v0 = result;
    sub_1A4A464B8(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1A52F8E10;
    v3 = [v25 localIdentifier];
    v4 = sub_1A524C674();
    v6 = v5;

    *(v2 + 32) = v4;
    *(v2 + 40) = v6;
    v7 = sub_1A524D2A4();

    v8 = 0;
    v9 = v7 + 64;
    v10 = 1 << *(v7 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = (v10 + 63) >> 6;
    if ((v11 & *(v7 + 64)) != 0)
    {
LABEL_10:
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v13 >= v12)
      {
        break;
      }

      ++v8;
      if (*(v9 + 8 * v13))
      {
        goto LABEL_10;
      }
    }

    if (qword_1EB1E85B8 != -1)
    {
      swift_once();
    }

    v14 = sub_1A5246F24();
    __swift_project_value_buffer(v14, qword_1EB1E85C0);
    v15 = v25;
    v16 = sub_1A5246F04();
    v17 = sub_1A524D244();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      swift_slowAlloc();
      *v18 = 136315138;
      v19 = [v15 localIdentifier];
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    swift_unknownObjectRelease();
    return 0;
  }

  __break(1u);
  return result;
}

id MemoryChangeRequestAnnotator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MemoryChangeRequestAnnotator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MemoryChangeRequestAnnotator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A4A46190()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1E85C0);
  __swift_project_value_buffer(v0, qword_1EB1E85C0);
  sub_1A5246EF4();
}

void _s12PhotosUICore28MemoryChangeRequestAnnotatorC03setcdE0_27userCreatedFromSourceObjectySo08PHMemorydE0C_yXlSgtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MemoryChangeRequestAnnotator();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___PXMemoryChangeRequestAnnotator_sourceObject] = a2;
  v7.receiver = v5;
  v7.super_class = v4;
  swift_unknownObjectRetain();
  v6 = objc_msgSendSuper2(&v7, sel_init);
  (*((*MEMORY[0x1E69E7D40] & *v6) + 0x60))(a1);
}

void sub_1A4A464B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A4A46508@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  v8 = *(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 40);
  a6[5] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a1;
  type metadata accessor for LemonadePeopleFeedView();
  type metadata accessor for LemonadePeopleSectionProvider(0);
  swift_retain_n();
  v10 = a2;

  v11 = v8;
  sub_1A5247C74();
  *(swift_allocObject() + 16) = v10;
  type metadata accessor for LemonadePeopleProgressStatus();
  v12 = v10;
  sub_1A5247C74();
}

uint64_t sub_1A4A46670@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(*(*(v1 + 24) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 40);
  v5 = v4;
  v6 = v3;
  v7 = MEMORY[0x1E69E7CC0];

  return sub_1A4251F54(v6, 0, 0, 1, 1, v7, v4, a1);
}

uint64_t type metadata accessor for LemonadePeopleFeedView()
{
  result = qword_1EB1E8660;
  if (!qword_1EB1E8660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4A46734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1A5249574();
  *(a2 + 8) = 0x4034000000000000;
  *(a2 + 16) = 0;
  sub_1A4A47A78();
  return sub_1A4A46C94(a1, (a2 + *(v4 + 44)));
}

void sub_1A4A46784()
{
  if (!qword_1EB147C48)
  {
    sub_1A4A467F4();
    sub_1A4A46A04();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB147C48);
    }
  }
}

void sub_1A4A467F4()
{
  if (!qword_1EB147C50)
  {
    sub_1A4A46874();
    sub_1A4A468DC();
    v0 = sub_1A5243DD4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147C50);
    }
  }
}

void sub_1A4A46874()
{
  if (!qword_1EB147C58)
  {
    sub_1A44FD0D4();
    sub_1A402344C();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147C58);
    }
  }
}

unint64_t sub_1A4A468DC()
{
  result = qword_1EB147C60;
  if (!qword_1EB147C60)
  {
    sub_1A4A46874();
    sub_1A4A469BC(&qword_1EB13CBE0, sub_1A44FD0D4);
    sub_1A4A469BC(&qword_1EB1277D0, sub_1A402344C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147C60);
  }

  return result;
}

uint64_t sub_1A4A469BC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A4A46A04()
{
  if (!qword_1EB147C68)
  {
    sub_1A4A46A90(255, &qword_1EB147C70, &qword_1EB147C78, sub_1A4A46B30, &qword_1EB147C88);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147C68);
    }
  }
}

void sub_1A4A46A90(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), unint64_t *a5)
{
  if (!*a2)
  {
    sub_1A4A47C44(255, a3, a4, MEMORY[0x1E6981F40]);
    sub_1A4A46B90(a5, a3, a4);
    v9 = sub_1A524B894();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A4A46B30()
{
  if (!qword_1EB147C80)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB147C80);
    }
  }
}

uint64_t sub_1A4A46B90(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A4A47C44(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4A46BF4()
{
  result = qword_1EB147C98;
  if (!qword_1EB147C98)
  {
    sub_1A4A46A90(255, &qword_1EB147C38, &qword_1EB147C40, sub_1A4A46784, &qword_1EB147C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147C98);
  }

  return result;
}

uint64_t sub_1A4A46C94@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for LemonadePeopleFeedView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A4A467F4();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  sub_1A4A47B80(a1, &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleFeedView);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_1A4A47CA8(&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for LemonadePeopleFeedView);
  sub_1A5249584();
  sub_1A4A46874();
  sub_1A4A468DC();
  sub_1A5243DC4();
  v32 = sub_1A5249574();
  LOBYTE(v35[0]) = 1;
  sub_1A3F5CDFC(v35, *(a1 + 8), &v39);
  v15 = v39;
  v31 = v40;
  sub_1A4A47C44(0, &qword_1EB124948, type metadata accessor for LemonadePeopleProgressStatus, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v16 = sub_1A49AAA74();

  if (v16)
  {
    v17 = 1.0;
  }

  else
  {
    v17 = 0.0;
  }

  v54 = 1;
  v51 = 1;
  v18 = *(v8 + 16);
  v19 = v34;
  v18(v34, v12, v7);
  v20 = v33;
  v18(v33, v19, v7);
  sub_1A4A46784();
  v22 = &v20[*(v21 + 48)];
  v23 = v32;
  v35[0] = v32;
  v35[1] = 0;
  LOBYTE(v36) = 1;
  *(&v36 + 1) = *v53;
  DWORD1(v36) = *&v53[3];
  BYTE8(v36) = v15;
  HIDWORD(v36) = *&v52[3];
  *(&v36 + 9) = *v52;
  v24 = v31;
  v37 = v31;
  LOBYTE(v38) = 1;
  DWORD1(v38) = *&v50[3];
  *(&v38 + 1) = *v50;
  *(&v38 + 1) = v17;
  v25 = v32;
  v26 = v36;
  v27 = v38;
  *(v22 + 2) = v31;
  *(v22 + 3) = v27;
  *v22 = v25;
  *(v22 + 1) = v26;
  sub_1A4A47B80(v35, &v39, sub_1A4A46A04);
  v28 = *(v8 + 8);
  v28(v12, v7);
  v39 = v23;
  v40 = 0;
  v41 = 1;
  *v42 = *v53;
  *&v42[3] = *&v53[3];
  v43 = v15;
  *v44 = *v52;
  *&v44[3] = *&v52[3];
  v45 = v24;
  v46 = 0;
  v47 = 1;
  *&v48[3] = *&v50[3];
  *v48 = *v50;
  v49 = v17;
  sub_1A4A47BE8(&v39);
  return (v28)(v34, v7);
}

void sub_1A4A47108(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A4A47C44(0, &qword_1EB128FB0, MEMORY[0x1E69C2E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v23 - v5;
  v7 = type metadata accessor for LemonadePeopleSectionProvider(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44FD0D4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadePeopleFeedView();
  sub_1A4A47C44(0, &qword_1EB147CA0, type metadata accessor for LemonadePeopleSectionProvider, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v13 = *a1;
  v14 = sub_1A52442E4();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  v15 = a1[4];
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v16 = sub_1A4A469BC(&qword_1EB136230, type metadata accessor for LemonadePeopleSectionProvider);

  v17 = sub_1A3C30368();
  v18 = sub_1A3C5A374();
  sub_1A437CBD4(v9, v13, v6, v15, v17 & 1, v23, 0, 0, v12, v18 & 1, v7, v16);
  KeyPath = swift_getKeyPath();
  v20 = a1[5];
  if (v20)
  {
    LOBYTE(v20) = (*((*MEMORY[0x1E69E7D40] & *v20) + 0x2A0))();
  }

  sub_1A4A47CA8(v12, a2, sub_1A44FD0D4);
  sub_1A4A46874();
  v22 = a2 + *(v21 + 36);
  *v22 = KeyPath;
  *(v22 + 8) = v20 & 1;
}

void sub_1A4A4742C(uint64_t a1)
{
  v1 = *(a1 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1A4A47B80(v3, &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleFeedView);
  v4 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v5 = swift_allocObject();
  sub_1A4A47CA8(&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for LemonadePeopleFeedView);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4A475E8()
{
  type metadata accessor for LemonadeNavigationContext(319);
  if (v0 <= 0x3F)
  {
    sub_1A3C4B4AC();
    if (v1 <= 0x3F)
    {
      sub_1A440B640();
      if (v2 <= 0x3F)
      {
        sub_1A4A47C44(319, &qword_1EB125A20, type metadata accessor for PickerConfiguration, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1A4A47C44(319, &qword_1EB147CA0, type metadata accessor for LemonadePeopleSectionProvider, MEMORY[0x1E697DA80]);
          if (v4 <= 0x3F)
          {
            sub_1A4A47C44(319, &qword_1EB124948, type metadata accessor for LemonadePeopleProgressStatus, MEMORY[0x1E697DA80]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1A4A47764()
{
  if (!qword_1EB147CB0)
  {
    sub_1A4A46A90(255, &qword_1EB147C38, &qword_1EB147C40, sub_1A4A46784, &qword_1EB147C90);
    sub_1A4A46BF4();
    v0 = sub_1A5242CE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147CB0);
    }
  }
}

uint64_t objectdestroy_8Tm_4()
{
  v1 = (type metadata accessor for LemonadePeopleFeedView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[11];
  v4 = MEMORY[0x1E6981E90];
  sub_1A4A47C44(0, &qword_1EB147C28, type metadata accessor for LemonadePeopleSectionProvider, MEMORY[0x1E6981E90]);
  (*(*(v5 - 8) + 8))(v3, v5);
  v6 = MEMORY[0x1E6981E98];
  sub_1A4A47C44(0, &qword_1EB147C30, type metadata accessor for LemonadePeopleSectionProvider, MEMORY[0x1E6981E98]);

  v7 = v2 + v1[12];
  sub_1A4A47C44(0, &qword_1EB121428, type metadata accessor for LemonadePeopleProgressStatus, v4);
  (*(*(v8 - 8) + 8))(v7, v8);
  sub_1A4A47C44(0, &qword_1EB127238, type metadata accessor for LemonadePeopleProgressStatus, v6);

  return swift_deallocObject();
}

uint64_t sub_1A4A47A08@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LemonadePeopleFeedView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1A4A46734(v4, a1);
}

void sub_1A4A47A78()
{
  if (!qword_1EB147CB8)
  {
    sub_1A4A47C44(255, &qword_1EB147C40, sub_1A4A46784, MEMORY[0x1E6981F40]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147CB8);
    }
  }
}

void sub_1A4A47B10(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LemonadePeopleFeedView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  sub_1A4A47108(v4, a1);
}

uint64_t sub_1A4A47B80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4A47BE8(uint64_t a1)
{
  sub_1A4A46A04();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A4A47C44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A4A47CA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4A47D20(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69C21F8] || v7 == *MEMORY[0x1E69C2210])
  {
    return 8;
  }

  (*(v3 + 8))(v6, v2);
  return 3;
}

uint64_t sub_1A4A47E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 8) == 1)
  {
    sub_1A524E404();
    MEMORY[0x1A5907B60](0xD000000000000023, 0x80000001A53D98B0);
    sub_1A524E624();
    result = sub_1A524E6E4();
    __break(1u);
  }

  else
  {
    v5 = type metadata accessor for LemonadeSocialGroupsShelfProvider();
    v6 = sub_1A3C36CEC(&qword_1EB125368, type metadata accessor for LemonadeSocialGroupsShelfProvider);

    v7 = sub_1A42E6C64(v5, v6);
    v14 = *(v2 + 8);
    sub_1A414D2C8(a1, v7, v8, &v14, &v15);
    v9 = v16;
    v10 = v17;
    *a2 = v15;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
    v11 = type metadata accessor for LemonadeNavigationDestination();
    swift_storeEnumTagMultiPayload();
    v12 = *(*(v11 - 8) + 56);

    return v12(a2, 0, 1, v11);
  }

  return result;
}

uint64_t sub_1A4A48034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 40);
  if (v7)
  {
    v8 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0x2D0))();
    if (MEMORY[0x1A590D320]())
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = v7 != 0;
    v12 = type metadata accessor for LemonadeSocialGroupsShelfProvider();
    v13 = sub_1A3C36CEC(&qword_1EB125370, type metadata accessor for LemonadeSocialGroupsShelfProvider);
    v14 = sub_1A3C66934(v4, v12, v13);
    v19 = a1;
    type metadata accessor for PeopleUnifiedItemListManager();
    v15 = type metadata accessor for PeopleUnifiedItem();
    v16 = sub_1A3C36CEC(&qword_1EB129918, type metadata accessor for PeopleUnifiedItemListManager);

    sub_1A426FECC(v14, &v19, v11, v8, v15, v16, a3);
    goto LABEL_8;
  }

  v8 = 0;
  if ((MEMORY[0x1A590D320]() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = *(a1 + 16);
  if (v9 < 0)
  {
    v17 = *((v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);

    sub_1A4270930(v17);
  }

  else
  {
    v10 = *(v9 + 16);

    sub_1A4270424(v10);
  }

LABEL_8:
  type metadata accessor for LemonadeNavigationDestination();
  return swift_storeEnumTagMultiPayload();
}

void sub_1A4A48248(uint64_t a1, void *a2)
{
  if ((*(a1 + 16) & 0x8000000000000000) == 0)
  {
    v3 = a2[5];
    if (v3)
    {
      v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x2D0);

      v4(v5);
    }

    else
    {
    }

    v9 = sub_1A3C36888();
    v10 = sub_1A3C6E9EC();
    v11 = sub_1A3C30368();
    sub_1A414DB94(a2, 0, 1, v10, 0, v11 & 1, &type metadata for LemonadePeopleShelfProvider, v9);
  }

  v6 = a2[5];
  if (v6)
  {
    v7 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x2D0);

    v7(v8);
  }

  else
  {
  }

  v12 = type metadata accessor for LemonadeSocialGroupsShelfProvider();
  v13 = sub_1A3C36CEC(&qword_1EB125368, type metadata accessor for LemonadeSocialGroupsShelfProvider);
  sub_1A414D84C(a2, v12, v13);
}

void sub_1A4A485E0(uint64_t a1, char a2, void *a3)
{
  sub_1A3C4C218(0, &qword_1EB129890, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for LemonadeNavigationDestination();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  if (sub_1A3DBEE68(a2 & 1, 0))
  {
    sub_1A4A47E4C(a3, v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_1A43DD648(v8);
    }

    else
    {
      sub_1A40B671C(v8, v16);
      sub_1A465EB84(v16, v13, type metadata accessor for LemonadeNavigationDestination);
      v17 = sub_1A4249320(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v19 = v17[2];
      v18 = v17[3];
      if (v19 >= v18 >> 1)
      {
        v17 = sub_1A4249320(v18 > 1, v19 + 1, 1, v17);
      }

      sub_1A457EF10(v16);
      v17[2] = v19 + 1;
      sub_1A40B671C(v13, v17 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v19);
    }
  }

  sub_1A4A48248(a1, a3);
}

uint64_t sub_1A4A488E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  sub_1A4A49340();
  v35 = v3;
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4A496F0(0, &qword_1EB147CC8, MEMORY[0x1E697F948]);
  v34 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  v9 = sub_1A5243624();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40C6344();
  v14 = v13;
  v33 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A5242954();
  Kind = v38[1].Kind;
  v37 = v38;
  if ((Kind & 0x8000000000000000) == 0)
  {
    (*(v10 + 104))(v12, *MEMORY[0x1E69C2538], v9);
    v18 = sub_1A3C36888();

    v19 = sub_1A3C30368();
    v20 = sub_1A3C5A374();
    sub_1A414D324(Kind, v12, v19 & 1, v20 & 1, v16);
    (*(v10 + 8))(v12, v9);
    v21 = v33;
    (*(v33 + 16))(v8, v16, v14);
    swift_storeEnumTagMultiPayload();
    v38 = &type metadata for LemonadePeopleShelfProvider;
    v39 = v18;
    swift_getOpaqueTypeConformance2();
    v22 = type metadata accessor for LemonadeSocialGroupsShelfProvider();
    v23 = sub_1A3C36CEC(&qword_1EB125368, type metadata accessor for LemonadeSocialGroupsShelfProvider);
    v38 = v22;
    v39 = v23;
    swift_getOpaqueTypeConformance2();
    sub_1A5249744();

    return (*(v21 + 8))(v16, v14);
  }

  v25 = v35;

  if (PhotoKitItem.expectsKeyAssets.getter())
  {
    v26 = PhotoKitItem.keyAssets.getter();
    if (!v26)
    {
      v27 = 1;
      goto LABEL_7;
    }
  }

  v27 = 0;
LABEL_7:
  v28 = type metadata accessor for LemonadeSocialGroupsShelfProvider();
  v29 = sub_1A3C36CEC(&qword_1EB125368, type metadata accessor for LemonadeSocialGroupsShelfProvider);
  sub_1A414D6DC(a1, Kind & 0x7FFFFFFFFFFFFFFFLL, v27);
  v30 = v32;
  (*(v32 + 16))(v8, v5, v25);
  swift_storeEnumTagMultiPayload();
  v31 = sub_1A3C36888();
  v38 = &type metadata for LemonadePeopleShelfProvider;
  v39 = v31;
  swift_getOpaqueTypeConformance2();
  v38 = v28;
  v39 = v29;
  swift_getOpaqueTypeConformance2();
  sub_1A5249744();

  return (*(v30 + 8))(v5, v25);
}

uint64_t sub_1A4A48E14@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A3C4C218(0, &qword_1EB1292E0, MEMORY[0x1E69C1CC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21[-v7];
  v9 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v10) = *a2;
  *a3 = a1;
  *(a3 + 8) = v10;
  v12 = *(type metadata accessor for LemonadeSocialGroupsShelfProvider() + 28);
  v13 = sub_1A3C47918();
  v15 = v14;
  v16 = sub_1A3C47918();
  v18 = v17;
  v19 = sub_1A3C4ED50();
  v21[8] = 1;
  *v11 = sub_1A4A47D20;
  *(v11 + 1) = 0;
  v11[16] = 2;
  *(v11 + 3) = 0;
  v11[32] = 1;
  *(v11 + 5) = v13;
  *(v11 + 6) = v15;
  *(v11 + 7) = v16;
  *(v11 + 8) = v18;
  *(v11 + 72) = xmmword_1A5305D30;
  v11[88] = 0;
  v11[89] = v19;
  swift_storeEnumTagMultiPayload();
  sub_1A3C4ED54(v8);
  return sub_1A3C52D78(v11, 0, v8, a3 + v12);
}

uint64_t sub_1A4A48FCC()
{
  if (*(v0 + 8) >= 2u)
  {
    return sub_1A3C38BD4();
  }

  v1._object = 0x80000001A53CEBD0;
  v1._countAndFlagsBits = 0xD000000000000020;
  return LemonadeLocalizedPeopleAndPetsTitle(for:key:)(*v0, v1)._countAndFlagsBits;
}

uint64_t sub_1A4A49018@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ([a1 px_isPeopleVirtualCollection])
  {

    return sub_1A4A47E4C(a2, a3);
  }

  else
  {
    v6 = type metadata accessor for LemonadeNavigationDestination();
    v7 = *(*(v6 - 8) + 56);

    return v7(a3, 1, 1, v6);
  }
}

uint64_t sub_1A4A490E8@<X0>(void *a1@<X8>)
{

  return sub_1A3D61770(v2, a1);
}

uint64_t sub_1A4A49128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3C36CEC(&qword_1EB12A458, type metadata accessor for PeopleUnifiedItem);

  return sub_1A4201830(a1, a2, a3, v6);
}

unint64_t sub_1A4A491B8(uint64_t a1)
{
  v2 = sub_1A3C36CEC(&qword_1EB125368, type metadata accessor for LemonadeSocialGroupsShelfProvider);

  return sub_1A42E6E80(a1, v2);
}

void sub_1A4A49224(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = [objc_opt_self() sharedScheduler];
  v6[4] = sub_1A44B281C;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1A3C2E0D0;
  v6[3] = &block_descriptor_338;
  v5 = _Block_copy(v6);

  [v4 scheduleMainQueueTask_];
  _Block_release(v5);

  LOBYTE(v6[0]) = v3;
  sub_1A3C36888();
  sub_1A414E050();
}

void sub_1A4A49340()
{
  if (!qword_1EB147CC0)
  {
    type metadata accessor for LemonadeSocialGroupsShelfProvider();
    sub_1A3C36CEC(&qword_1EB125368, type metadata accessor for LemonadeSocialGroupsShelfProvider);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB147CC0);
    }
  }
}

unint64_t sub_1A4A493F8()
{
  result = qword_1EB147CD0;
  if (!qword_1EB147CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147CD0);
  }

  return result;
}

unint64_t sub_1A4A49450()
{
  result = qword_1EB147CD8;
  if (!qword_1EB147CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147CD8);
  }

  return result;
}

unint64_t sub_1A4A495C0()
{
  result = qword_1EB147CE0;
  if (!qword_1EB147CE0)
  {
    sub_1A4A496F0(255, &qword_1EB147CE8, MEMORY[0x1E697F960]);
    sub_1A3C36888();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for LemonadeSocialGroupsShelfProvider();
    sub_1A3C36CEC(&qword_1EB125368, type metadata accessor for LemonadeSocialGroupsShelfProvider);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147CE0);
  }

  return result;
}

void sub_1A4A496F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A40C6344();
    v7 = v6;
    sub_1A4A49340();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A4A4976C(char a1)
{
  strcpy(v8, "utilityAlbum");
  v1 = sub_1A4A498A0(a1);
  v3 = v2;
  sub_1A3DD1E84(1);

  sub_1A4A4A2E0();
  v4 = sub_1A524DF94();
  v6 = v5;

  sub_1A3F6D270(1uLL, v1, v3);

  sub_1A3F6D320();
  sub_1A524C7D4();

  MEMORY[0x1A5907B60](v4, v6);

  return v8[0];
}

uint64_t sub_1A4A498A0(char a1)
{
  result = 0x6F54656C62616E75;
  switch(a1)
  {
    case 1:
      result = 0x657469726F766166;
      break;
    case 2:
      result = 0x65646469486C6C61;
      break;
    case 3:
    case 9:
    case 10:
    case 11:
    case 12:
      result = 0x796C746E65636572;
      break;
    case 4:
      result = 0x746163696C707564;
      break;
    case 5:
      result = 0x7374706965636572;
      break;
    case 6:
      result = 0x74697277646E6168;
      break;
    case 7:
      result = 0x61727473756C6C69;
      break;
    case 8:
      result = 0x7365646F437271;
      break;
    case 13:
      result = 0x44636972656E6567;
      break;
    case 14:
      result = 0x7374726F706D69;
      break;
    case 15:
      result = 7364973;
      break;
    case 16:
      result = 0x657265766F636572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A4A49AA0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1A4A498A0(*a1);
  v5 = v4;
  if (v3 == sub_1A4A498A0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1A524EAB4();
  }

  return v8 & 1;
}

uint64_t sub_1A4A49B28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A4A4AB4C();
  *a1 = result;
  return result;
}

uint64_t sub_1A4A49B58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A4A498A0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A4A49B84()
{
  v1 = *v0;
  sub_1A524EC94();
  sub_1A4A498A0(v1);
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A4A49BE8()
{
  sub_1A4A498A0(*v0);
  sub_1A524C794();
}

uint64_t sub_1A4A49C3C()
{
  v1 = *v0;
  sub_1A524EC94();
  sub_1A4A498A0(v1);
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A4A49C9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A4A4976C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_1A4A49CD8(void *a1, char a2)
{
  v4 = [a1 px_virtualCollections];
  v5 = v4;
  switch(a2)
  {
    case 1:
      v8 = a1;
      v7 = 203;
      goto LABEL_15;
    case 2:
      v6 = [a1 px:205 assetCollectionForSmartAlbumWithSubtype:?];
      break;
    case 3:
      v6 = [a1 px:1000000201 assetCollectionForSmartAlbumWithSubtype:?];
      break;
    case 4:
      v7 = 1000000212;
      goto LABEL_9;
    case 5:
      v6 = [a1 px:2 utilityCollectionWithType:?];
      break;
    case 6:
      v6 = [a1 px:4 utilityCollectionWithType:?];
      break;
    case 7:
      v6 = [a1 px:3 utilityCollectionWithType:?];
      break;
    case 8:
      v6 = [a1 px:5 utilityCollectionWithType:?];
      break;
    case 9:
      v7 = 1000000218;
      goto LABEL_9;
    case 10:
      v6 = [v4 recentlyViewedCollection];
      break;
    case 11:
      v6 = [v4 recentlyEditedCollection];
      break;
    case 12:
      v6 = [v4 recentlySharedCollection];
      break;
    case 13:
      v6 = [a1 px:1 utilityCollectionWithType:?];
      break;
    case 14:
      v6 = [v4 importHistoryCollection];
      break;
    case 15:
      v6 = [v4 mapCollection];
      break;
    case 16:
      v7 = 1000000219;
LABEL_9:
      v8 = a1;
LABEL_15:
      v6 = [v8 px:v7 assetCollectionForSmartAlbumWithSubtype:?];
      break;
    default:
      v6 = [a1 px:216 assetCollectionForSmartAlbumWithSubtype:?];
      break;
  }

  v9 = v6;

  return v9;
}

unint64_t sub_1A4A49EB4()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = [v1 type];
    if (v2 >= 7)
    {
      result = sub_1A524E6E4();
      __break(1u);
    }

    else
    {
      return 0x11080607050D11uLL >> (8 * v2);
    }
  }

  else
  {
    if (![v0 isTransient])
    {
      v4 = [v0 assetCollectionSubtype];
      if (v4 <= 1000000200)
      {
        switch(v4)
        {
          case 203:
            return 1;
          case 205:
            return 2;
          case 216:
            return 0;
        }
      }

      else if (v4 > 1000000217)
      {
        if (v4 == 1000000218)
        {
          return 9;
        }

        if (v4 == 1000000219)
        {
          return 16;
        }
      }

      else
      {
        if (v4 == 1000000201)
        {
          return 3;
        }

        if (v4 == 1000000212)
        {
          return 4;
        }
      }

      return 17;
    }

    if ([v0 px_isRecentlyViewedCollection])
    {
      return 10;
    }

    else if ([v0 px_isRecentlyEditedCollection])
    {
      return 11;
    }

    else if ([v0 px_isRecentlySharedCollection])
    {
      return 12;
    }

    else if ([v0 px_isImportHistoryCollection])
    {
      return 14;
    }

    else if ([v0 px_isMapVirtualCollection])
    {
      return 15;
    }

    else
    {
      return 17;
    }
  }

  return result;
}

uint64_t sub_1A4A4A0D4()
{
  v14 = MEMORY[0x1E69E7CD0];
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x438))();
  if (v2)
  {
    v2 = sub_1A3D6BDD4(&v8, 2);
  }

  v3 = (*((*v1 & *v0) + 0x570))(v2);
  if (v3)
  {
    v3 = sub_1A3D6BDD4(&v9, 3);
  }

  v4 = (*((*v1 & *v0) + 0x588))(v3);
  if (v4)
  {
    v4 = sub_1A3D6BDD4(&v10, 4);
  }

  v5 = (*((*v1 & *v0) + 0x5A0))(v4);
  if (v5)
  {
    v5 = sub_1A3D6BDD4(&v11, 15);
  }

  v6 = (*((*v1 & *v0) + 0x5B8))(v5);
  if (v6)
  {
    v6 = sub_1A3D6BDD4(&v12, 16);
  }

  if ((*((*v1 & *v0) + 0x3D8))(v6))
  {
    sub_1A3D6BDD4(&v13, 1);
  }

  return v14;
}

unint64_t sub_1A4A4A2E0()
{
  result = qword_1EB147CF0;
  if (!qword_1EB147CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147CF0);
  }

  return result;
}

uint64_t sub_1A4A4A334(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A3D71674();
    v3 = sub_1A524E3D4();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    while (1)
    {
      v6 = *(v28 + v4);
      v29 = v4 + 1;
      sub_1A524EC94();
      sub_1A524C794();

      result = sub_1A524ECE4();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        while (1)
        {
          v13 = 0xEE0064616F6C7055;
          v14 = 0x6F54656C62616E75;
          switch(*(*(v3 + 48) + v9))
          {
            case 1:
              v13 = 0xE900000000000073;
              v14 = 0x657469726F766166;
              break;
            case 2:
              v13 = 0xE90000000000006ELL;
              v14 = 0x65646469486C6C61;
              break;
            case 3:
              v14 = 0x796C746E65636572;
              v13 = 0xEF646574656C6544;
              break;
            case 4:
              v14 = 0x746163696C707564;
              v13 = 0xEA00000000007365;
              break;
            case 5:
              v13 = 0xE800000000000000;
              v14 = 0x7374706965636572;
              break;
            case 6:
              v14 = 0x74697277646E6168;
              v13 = 0xEB00000000676E69;
              break;
            case 7:
              v14 = 0x61727473756C6C69;
              v13 = 0xED0000736E6F6974;
              break;
            case 8:
              v13 = 0xE700000000000000;
              v15 = 0x65646F437271;
              goto LABEL_24;
            case 9:
              v14 = 0x796C746E65636572;
              v13 = 0xED00006465766153;
              break;
            case 0xA:
              v14 = 0x796C746E65636572;
              v16 = 2003134806;
              goto LABEL_22;
            case 0xB:
              v14 = 0x796C746E65636572;
              v16 = 1953064005;
              goto LABEL_22;
            case 0xC:
              v14 = 0x796C746E65636572;
              v16 = 1918986323;
LABEL_22:
              v13 = v16 | 0xEE00646500000000;
              break;
            case 0xD:
              v14 = 0x44636972656E6567;
              v13 = 0xEF746E656D75636FLL;
              break;
            case 0xE:
              v13 = 0xE700000000000000;
              v15 = 0x74726F706D69;
LABEL_24:
              v14 = v15 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
              break;
            case 0xF:
              v13 = 0xE300000000000000;
              v14 = 7364973;
              break;
            case 0x10:
              v14 = 0x657265766F636572;
              v13 = 0xE900000000000064;
              break;
            default:
              break;
          }

          v17 = 0x6F54656C62616E75;
          v18 = 0xEE0064616F6C7055;
          switch(v6)
          {
            case 1:
              v18 = 0xE900000000000073;
              if (v14 == 0x657469726F766166)
              {
                goto LABEL_55;
              }

              goto LABEL_56;
            case 2:
              v18 = 0xE90000000000006ELL;
              if (v14 != 0x65646469486C6C61)
              {
                goto LABEL_56;
              }

              goto LABEL_55;
            case 3:
              v18 = 0xEF646574656C6544;
              if (v14 != 0x796C746E65636572)
              {
                goto LABEL_56;
              }

              goto LABEL_55;
            case 4:
              v18 = 0xEA00000000007365;
              if (v14 != 0x746163696C707564)
              {
                goto LABEL_56;
              }

              goto LABEL_55;
            case 5:
              v18 = 0xE800000000000000;
              if (v14 != 0x7374706965636572)
              {
                goto LABEL_56;
              }

              goto LABEL_55;
            case 6:
              v18 = 0xEB00000000676E69;
              if (v14 != 0x74697277646E6168)
              {
                goto LABEL_56;
              }

              goto LABEL_55;
            case 7:
              v21 = 0x61727473756C6C69;
              v22 = 0x736E6F6974;
              goto LABEL_45;
            case 8:
              v18 = 0xE700000000000000;
              v19 = 0x65646F437271;
              goto LABEL_60;
            case 9:
              v21 = 0x796C746E65636572;
              v22 = 0x6465766153;
LABEL_45:
              v18 = v22 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
              if (v14 != v21)
              {
                goto LABEL_56;
              }

              goto LABEL_55;
            case 10:
              v17 = 0x796C746E65636572;
              v18 = 0xEE00646577656956;
              goto LABEL_54;
            case 11:
              v20 = 1953064005;
              goto LABEL_35;
            case 12:
              v20 = 1918986323;
LABEL_35:
              v18 = v20 | 0xEE00646500000000;
              if (v14 != 0x796C746E65636572)
              {
                goto LABEL_56;
              }

              goto LABEL_55;
            case 13:
              v18 = 0xEF746E656D75636FLL;
              if (v14 != 0x44636972656E6567)
              {
                goto LABEL_56;
              }

              goto LABEL_55;
            case 14:
              v18 = 0xE700000000000000;
              v19 = 0x74726F706D69;
LABEL_60:
              if (v14 != (v19 & 0xFFFFFFFFFFFFLL | 0x73000000000000))
              {
                goto LABEL_56;
              }

              goto LABEL_55;
            case 15:
              v18 = 0xE300000000000000;
              if (v14 != 7364973)
              {
                goto LABEL_56;
              }

              goto LABEL_55;
            case 16:
              v18 = 0xE900000000000064;
              if (v14 != 0x657265766F636572)
              {
                goto LABEL_56;
              }

              goto LABEL_55;
            default:
LABEL_54:
              if (v14 != v17)
              {
                goto LABEL_56;
              }

LABEL_55:
              if (v13 == v18)
              {

                goto LABEL_4;
              }

LABEL_56:
              v23 = sub_1A524EAB4();

              if (v23)
              {
                goto LABEL_4;
              }

              v9 = (v9 + 1) & v8;
              v10 = v9 >> 6;
              v11 = *(v5 + 8 * (v9 >> 6));
              v12 = 1 << v9;
              if ((v11 & (1 << v9)) == 0)
              {
                goto LABEL_62;
              }

              break;
          }
        }
      }

LABEL_62:
      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      *(v3 + 16) = v26;
LABEL_4:
      v4 = v29;
      if (v29 == v27)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}