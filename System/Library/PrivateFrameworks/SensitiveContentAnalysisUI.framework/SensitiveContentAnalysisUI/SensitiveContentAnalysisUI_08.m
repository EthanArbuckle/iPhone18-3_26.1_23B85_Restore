unint64_t sub_1BC70CE18()
{
  result = qword_1EBCDE2B0;
  if (!qword_1EBCDE2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE2B8, &qword_1BC769C18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE2C0, &qword_1BC769C20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE240, &qword_1BC769BE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE2C8, &qword_1BC769C28);
    type metadata accessor for ReportOverviewScreen(255);
    sub_1BC70A26C(&qword_1EBCDE2D0, type metadata accessor for ReportOverviewScreen);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
    sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE2B0);
  }

  return result;
}

unint64_t sub_1BC70D018()
{
  result = qword_1EBCDE2D8;
  if (!qword_1EBCDE2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE2E0, &qword_1BC769C30);
    sub_1BC70D220();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE2C0, &qword_1BC769C20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE240, &qword_1BC769BE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE2C8, &qword_1BC769C28);
    type metadata accessor for ReportOverviewScreen(255);
    sub_1BC70A26C(&qword_1EBCDE2D0, type metadata accessor for ReportOverviewScreen);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
    sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE2D8);
  }

  return result;
}

unint64_t sub_1BC70D220()
{
  result = qword_1EBCDE2E8;
  if (!qword_1EBCDE2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE2F0, &qword_1BC769C38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE2C8, &qword_1BC769C28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE240, &qword_1BC769BE0);
    type metadata accessor for ReportOverviewScreen(255);
    sub_1BC70A26C(&qword_1EBCDE2D0, type metadata accessor for ReportOverviewScreen);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
    sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE2E8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26SensitiveContentAnalysisUI6ReportC5ErrorO(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1BC70D5A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1BC70D600(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1BC70D660(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 3)) | 0xC000000000000000;
  }

  return result;
}

void sub_1BC70D6C4()
{
  sub_1BC70EB9C(319, &unk_1EBCDE300, MEMORY[0x1E69E7B30], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1BC70D97C(319, &qword_1EBCDD0F8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1BC70D97C(319, &unk_1EBCDE310, MEMORY[0x1E6969680], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BC70D820()
{
  type metadata accessor for ReportToAuthoritiesViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1BC70D9E0(319, &unk_1EBCDE330, &qword_1EBCDE138, &qword_1BC769B00);
    if (v1 <= 0x3F)
    {
      sub_1BC70D97C(319, &qword_1EBCDD940, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1BC70D97C(319, &qword_1EBCDE340, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1BC70D9E0(319, &qword_1EBCDE348, &qword_1EBCDE110, &qword_1BC769AF0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BC70D97C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BC70D9E0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1BC75B670();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1BC70DA5C()
{
  result = type metadata accessor for ReportToAuthoritiesViewModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ReportScreen(319);
    if (v2 <= 0x3F)
    {
      result = sub_1BC75A830();
      if (v3 <= 0x3F)
      {
        result = sub_1BC6335A0();
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

uint64_t sub_1BC70DB28()
{
  result = sub_1BC759A90();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BC70DC00()
{
  result = type metadata accessor for ReportToAuthoritiesViewModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ReportScreen(319);
    if (v2 <= 0x3F)
    {
      result = sub_1BC6335A0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1BC70DD04()
{
  result = qword_1EBCDE3E0;
  if (!qword_1EBCDE3E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE3E8, &qword_1BC76A0C8);
    sub_1BC70C13C();
    sub_1BC70CA90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE3E0);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_86Tm()
{
  v1 = sub_1BC75A830();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BC70E1EC()
{
  v1 = *(sub_1BC75A830() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_1BC75A820();
}

void sub_1BC70E294()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_allocWithZone(SCUIMoreHelpWebViewController) init];
    [v1 presentViewController:v2 animated:1 completion:0];
  }
}

void sub_1BC70E31C()
{
  v1 = *(*(sub_1BC759800() - 8) + 80);
  v2 = *(v0 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = objc_allocWithZone(SCUIMoreHelpWebViewController);
    v6 = sub_1BC759770();
    v7 = [v5 initWithURL_];

    if (v7)
    {
      [v4 presentViewController:v7 animated:1 completion:0];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1BC70E40C()
{
  v1 = *(type metadata accessor for ReportScreen(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v5;
  v9 = v5[1];

  return sub_1BC703A70(v0 + v2, v8, v9, v6, v7);
}

uint64_t sub_1BC70E4B4()
{
  v2 = *(type metadata accessor for Report.Evidence(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 32);
  v7 = (v0 + v4);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v0 + v5);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1BC65281C;

  return sub_1BC703F68(v11, v12, v13, v6, v0 + v3, v8, v9, v10);
}

uint64_t sub_1BC70E5DC()
{
  v1 = *(type metadata accessor for ReportNavigationStack(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BC702D48(v2);
}

unint64_t sub_1BC70E63C(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return (result & 0x3FFFFFFFFFFFFFFFLL);
  }

  return result;
}

uint64_t objectdestroy_144Tm()
{
  v1 = type metadata accessor for ReportNavigationStack(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 16);

  v9 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD880, &qword_1BC767910);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1BC75A830();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  v12 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE108, &qword_1BC769AE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1BC75A850();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
    v14 = *(v5 + v12);
  }

  v15 = (v5 + v1[8]);
  if ((~*v15 & 0xF000000000000007) != 0)
  {
  }

  v16 = v15[1];

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC70E824@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for ReportNavigationStack(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1BC701E28(a1, v6, a2);
}

uint64_t sub_1BC70E8A4(uint64_t a1)
{
  v3 = *(type metadata accessor for ReportNavigationStack(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BC70218C(a1, v4);
}

uint64_t objectdestroy_112Tm(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t sub_1BC70E984(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = *(v3 + 32);
  if (v8)
  {
    v9 = sub_1BC7005A0(v8);
  }

  else
  {
    v9 = 0;
  }

  v7(v9, a1, a2);
}

uint64_t sub_1BC70EA00(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BC70EA20(uint64_t result, int a2, int a3)
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

void sub_1BC70EB9C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata accessor for RemoteViewModel()
{
  result = qword_1EBCEEC30;
  if (!qword_1EBCEEC30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BC70ED08@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  v11 = v4;
  sub_1BC70FF1C(&qword_1EBCDE610, type metadata accessor for RemoteViewModel);
  sub_1BC759A50();

  v9 = *a1;
  swift_beginAccess();
  return sub_1BC660024(v11 + v9, a4, a2, a3);
}

uint64_t sub_1BC70EE0C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t *a4@<X6>, uint64_t a5@<X8>)
{
  v9 = *a1;
  swift_getKeyPath();
  sub_1BC70FF1C(&qword_1EBCDE610, type metadata accessor for RemoteViewModel);
  sub_1BC759A50();

  v10 = *a2;
  swift_beginAccess();
  return sub_1BC660024(v9 + v10, a5, a3, a4);
}

uint64_t sub_1BC70EF20(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v16[-v12];
  sub_1BC660024(a1, &v16[-v12], a5, a6);
  v14 = *a2;
  swift_getKeyPath();
  v17 = v14;
  v18 = v13;
  v19 = v14;
  sub_1BC70FF1C(&qword_1EBCDE610, type metadata accessor for RemoteViewModel);
  sub_1BC759A40();

  return sub_1BC66008C(v13, a5, a6);
}

uint64_t RemoteViewModel.remoteViewConfig.setter(uint64_t a1)
{
  swift_getKeyPath();
  sub_1BC70FF1C(&qword_1EBCDE610, type metadata accessor for RemoteViewModel);
  sub_1BC759A40();

  return sub_1BC66008C(a1, &qword_1EBCDE618, &qword_1BC76A6A8);
}

uint64_t sub_1BC70F144(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a3;
  swift_beginAccess();
  sub_1BC7104E0(a2, a1 + v9, a4, a5);
  return swift_endAccess();
}

void (*RemoteViewModel.remoteViewConfig.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC26SensitiveContentAnalysisUI15RemoteViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1BC70FF1C(&qword_1EBCDE610, type metadata accessor for RemoteViewModel);
  sub_1BC759A50();

  *v4 = v1;
  swift_getKeyPath();
  sub_1BC759A70();

  swift_beginAccess();
  return sub_1BC70F348;
}

void sub_1BC70F348(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  v2 = v1[4];
  v3 = v1[5];
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1BC759A60();

  free(v1);
}

Swift::Bool __swiftcall RemoteViewModel.onConnection(_:)(NSXPCConnection a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDD8C0, &qword_1BC7679B8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11[-v5];
  v14 = v1;
  sub_1BC6DC408();
  v7 = v1;
  sub_1BC75A080();

  v8 = a1.super.isa;
  sub_1BC75A0B0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD8B8, &qword_1BC7679B0);
  (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  swift_getKeyPath();
  v12 = v7;
  v13 = v6;
  v14 = v7;
  sub_1BC70FF1C(&qword_1EBCDE610, type metadata accessor for RemoteViewModel);
  sub_1BC759A40();

  sub_1BC66008C(v6, &unk_1EBCDD8C0, &qword_1BC7679B8);
  return 1;
}

id RemoteViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RemoteViewModel.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC26SensitiveContentAnalysisUI15RemoteViewModel__connection;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD8B8, &qword_1BC7679B0);
  v4 = *(*(v3 - 8) + 56);
  v4(&v0[v2], 1, 1, v3);
  v4(&v0[v2], 1, 1, v3);
  v5 = OBJC_IVAR____TtC26SensitiveContentAnalysisUI15RemoteViewModel__remoteViewConfig;
  v6 = type metadata accessor for RemoteView.Config();
  v7 = *(*(v6 - 8) + 56);
  v7(&v0[v5], 1, 1, v6);
  v7(&v0[v5], 1, 1, v6);
  sub_1BC759A80();
  v9.receiver = v0;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

id RemoteViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BC70F980(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35 = a1;
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE618, &qword_1BC76A6A8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = v32 - v6;
  v37 = type metadata accessor for RemoteView.Config();
  v33 = *(v37 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v38 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD8B8, &qword_1BC7679B0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDD8C0, &qword_1BC7679B8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v32 - v16;
  swift_getKeyPath();
  v18 = OBJC_IVAR____TtC26SensitiveContentAnalysisUI15RemoteViewModel___observationRegistrar;
  v40 = v2;
  v19 = sub_1BC70FF1C(&qword_1EBCDE610, type metadata accessor for RemoteViewModel);
  sub_1BC759A50();

  v20 = OBJC_IVAR____TtC26SensitiveContentAnalysisUI15RemoteViewModel__connection;
  swift_beginAccess();
  sub_1BC660024(v3 + v20, v17, &unk_1EBCDD8C0, &qword_1BC7679B8);
  if ((*(v10 + 48))(v17, 1, v9))
  {
    sub_1BC66008C(v17, &unk_1EBCDD8C0, &qword_1BC7679B8);
    sub_1BC70FEC8();
    v21 = swift_allocError();
    swift_willThrow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDD8E0, &unk_1BC76A9F0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1BC761600;
    *(v30 + 56) = MEMORY[0x1E69E6158];
    *(v30 + 32) = 0xD00000000000002BLL;
    *(v30 + 40) = 0x80000001BC773D60;
    sub_1BC75C6F0();
  }

  else
  {
    v32[1] = v19;
    v32[2] = v18;
    v22 = v33;
    v23 = v34;
    (*(v10 + 16))(v13, v17, v9);
    sub_1BC66008C(v17, &unk_1EBCDD8C0, &qword_1BC7679B8);
    sub_1BC75A0E0();
    (*(v10 + 8))(v13, v9);
    v24 = v39;
    v25 = sub_1BC759530();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    sub_1BC759520();
    sub_1BC70FF1C(&qword_1EBCDE628, type metadata accessor for RemoteView.Config);
    v28 = v37;
    v29 = v38;
    sub_1BC759510();

    sub_1BC69886C(v24, v23);
    (*(v22 + 56))(v23, 0, 1, v28);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v32[-2] = v3;
    v32[-1] = v23;
    v39 = v3;
    sub_1BC759A40();

    swift_unknownObjectRelease();
    sub_1BC70FF64(v29);
    sub_1BC66008C(v23, &qword_1EBCDE618, &qword_1BC76A6A8);
  }
}

unint64_t sub_1BC70FEC8()
{
  result = qword_1EBCDE620;
  if (!qword_1EBCDE620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE620);
  }

  return result;
}

uint64_t sub_1BC70FF1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC70FF64(uint64_t a1)
{
  v2 = type metadata accessor for RemoteView.Config();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC70FFD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v17[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD8B8, &qword_1BC7679B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDD8C0, &qword_1BC7679B8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v17 - v11;
  swift_getKeyPath();
  v18 = v2;
  sub_1BC70FF1C(&qword_1EBCDE610, type metadata accessor for RemoteViewModel);
  sub_1BC759A50();

  v13 = OBJC_IVAR____TtC26SensitiveContentAnalysisUI15RemoteViewModel__connection;
  swift_beginAccess();
  sub_1BC660024(v3 + v13, v12, &unk_1EBCDD8C0, &qword_1BC7679B8);
  if ((*(v5 + 48))(v12, 1, v4))
  {
    return sub_1BC66008C(v12, &unk_1EBCDD8C0, &qword_1BC7679B8);
  }

  (*(v5 + 16))(v8, v12, v4);
  sub_1BC66008C(v12, &unk_1EBCDD8C0, &qword_1BC7679B8);
  sub_1BC75A0E0();
  (*(v5 + 8))(v8, v4);
  v15 = v17[2];
  v16 = sub_1BC759860();
  [v15 handleInterventionActionWith_];

  return swift_unknownObjectRelease();
}

void sub_1BC710270()
{
  sub_1BC710374();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1BC7103D8();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_1BC759A90();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1BC710374()
{
  if (!qword_1EBCDD9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD8B8, &qword_1BC7679B0);
    v0 = sub_1BC75C110();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBCDD9C0);
    }
  }
}

void sub_1BC7103D8()
{
  if (!qword_1EBCDE630)
  {
    type metadata accessor for RemoteView.Config();
    v0 = sub_1BC75C110();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBCDE630);
    }
  }
}

void sub_1BC710448(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, unint64_t))
{
  v6 = a3;
  v10 = a1;
  v7 = sub_1BC759870();
  v9 = v8;

  a4(v7, v9);
  sub_1BC6AE140(v7, v9);
}

uint64_t sub_1BC7104E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

double sub_1BC710578@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v17 = *v1;
  v18 = v3;
  v19 = *(v1 + 4);
  v4 = swift_allocObject();
  v5 = v1[1];
  *(v4 + 16) = *v1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v1 + 4);
  v6 = swift_allocObject();
  v7 = v1[1];
  *(v6 + 16) = *v1;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(v1 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5B8, &qword_1BC761DA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC75F0C0;
  sub_1BC710804(&v17, v16);
  sub_1BC710804(&v17, v16);
  v9 = sub_1BC75B010();
  *(inited + 32) = v9;
  v10 = sub_1BC75B020();
  *(inited + 33) = v10;
  v11 = sub_1BC75B040();
  sub_1BC75B040();
  if (sub_1BC75B040() != v9)
  {
    v11 = sub_1BC75B040();
  }

  sub_1BC75B040();
  if (sub_1BC75B040() != v10)
  {
    v11 = sub_1BC75B040();
  }

  v12 = v18;
  v16[0] = 1;
  v13 = sub_1BC75B810();
  *a1 = sub_1BC710730;
  *(a1 + 8) = v4;
  *(a1 + 16) = v12;
  *(a1 + 24) = sub_1BC7107DC;
  *(a1 + 32) = v6;
  *(a1 + 40) = 256;
  *(a1 + 48) = v11;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 1;
  *(a1 + 96) = v13;
  *(a1 + 104) = v15;
  return result;
}

id sub_1BC710730()
{
  v1 = [objc_opt_self() boldButton];
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_1BC75BB30();
  [v1 setTitle:v4 forState:0];

  return v1;
}

uint64_t objectdestroyTm_6()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BC7107DC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

void *sub_1BC71083C@<X0>(void *result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = result[1];
  *a5 = *result;
  *(a5 + 8) = v5;
  *(a5 + 16) = a2;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  return result;
}

id sub_1BC710854()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_1BC710ADC();
}

id sub_1BC710894(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return sub_1BC710BA0(a1);
}

uint64_t sub_1BC7108D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return PlatformViewRepresentable.makeUIView(context:)(a1, a2, WitnessTable);
}

uint64_t sub_1BC710934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return PlatformViewRepresentable.updateUIView(_:context:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_1BC7109A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, WitnessTable);
}

uint64_t sub_1BC710A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, WitnessTable);
}

void sub_1BC710A9C()
{
  swift_getWitnessTable();
  sub_1BC75ADC0();
  __break(1u);
}

id sub_1BC710ADC()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v2();
  sub_1BC7110CC();
  v6 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7 = v4;

  v10 = v5;
  v8 = sub_1BC75C070();
  [v7 addAction:v8 forControlEvents:{64, 0, 0, 0, v6, v10}];

  return v7;
}

id sub_1BC710BA0(void *a1)
{
  if (!*(v1 + 16))
  {
    [a1 showsBusyIndicator];
    v3 = sel_setEnabled_;
    v4 = a1;
    v5 = 1;
LABEL_5:

    return [v4 v3];
  }

  if (*(v1 + 16) == 1)
  {
    [a1 hidesBusyIndicator];
    v3 = sel_setEnabled_;
    v4 = a1;
    v5 = 0;
    goto LABEL_5;
  }

  [a1 setEnabled_];
  v3 = sel_hidesBusyIndicator;
  v4 = a1;

  return [v4 v3];
}

unint64_t sub_1BC710C60()
{
  result = qword_1EBCDE638;
  if (!qword_1EBCDE638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE638);
  }

  return result;
}

uint64_t sub_1BC710CD0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
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

uint64_t sub_1BC710D3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BC710D84(uint64_t result, int a2, int a3)
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

uint64_t sub_1BC710DEC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BC710E28(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BC710E70(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1BC710ED0()
{
  result = qword_1EBCDE640;
  if (!qword_1EBCDE640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE648, &qword_1BC76A9C0);
    sub_1BC710F88();
    sub_1BC633C54(&qword_1EBCDE680, &qword_1EBCDE688, &unk_1BC76A9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE640);
  }

  return result;
}

unint64_t sub_1BC710F88()
{
  result = qword_1EBCDE650;
  if (!qword_1EBCDE650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE658, &qword_1BC76A9C8);
    sub_1BC711014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE650);
  }

  return result;
}

unint64_t sub_1BC711014()
{
  result = qword_1EBCDE660;
  if (!qword_1EBCDE660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE668, &qword_1BC76A9D0);
    sub_1BC633C54(&qword_1EBCDE670, &qword_1EBCDE678, &qword_1BC76A9D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE660);
  }

  return result;
}

unint64_t sub_1BC7110CC()
{
  result = qword_1EBCDE500;
  if (!qword_1EBCDE500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBCDE500);
  }

  return result;
}

uint64_t sub_1BC711118(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, a1);
  v9 = *(a1 + 16);
  v10 = (*(*(v9 - 8) + 48))(v8, 1, v9);
  (*(v5 + 8))(v8, a1);
  if (v10 == 1)
  {
    return 0;
  }

  else
  {
    return (*(a2 + 32))(v9, a2);
  }
}

uint64_t sub_1BC71125C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, a1);
  v9 = *(a1 + 16);
  v10 = (*(*(v9 - 8) + 48))(v8, 1, v9);
  (*(v5 + 8))(v8, a1);
  if (v10 != 1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v11 = (*(a2 + 24))(v9, a2);
  v12 = sub_1BC71983C(v11);

  return v12;
}

uint64_t sub_1BC7113BC(char *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = sub_1BC7595D0();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1BC7595C0();
  sub_1BC7198B0();
  v7 = sub_1BC7595A0();
  v9 = v8;

  v10 = sub_1BC759860();
  [v2 handleInterventionActionWith_];

  return sub_1BC6AE140(v7, v9);
}

double sub_1BC7115F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE8A0, &qword_1BC76C798);
  v0 = swift_allocObject();
  *&result = 3;
  *(v0 + 16) = xmmword_1BC7615F0;
  *(v0 + 32) = sel_didConfirmForInterventionViewController_;
  *(v0 + 40) = sel_didBypassInterventionWithUpdatedAnalyses_container_;
  *(v0 + 48) = sel_didShowContent_;
  qword_1EBCF46A8 = v0;
  return result;
}

uint64_t sub_1BC711660@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

Swift::Void __swiftcall OnShowContentCallback.callAsFunction()()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = *(v0 + 8);
    v1();
  }
}

double sub_1BC711870(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE8A0, &qword_1BC76C798);
  v7 = swift_allocObject();
  *&result = 2;
  *(v7 + 16) = xmmword_1BC75F0C0;
  v9 = *a3;
  *(v7 + 32) = *a2;
  *(v7 + 40) = v9;
  *a4 = v7;
  return result;
}

uint64_t (*sub_1BC7119C8(uint64_t (*result)(void)))(void)
{
  if (result)
  {
    return result();
  }

  return result;
}

uint64_t sub_1BC7119F8()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = *(v0 + 8);
    return v1();
  }

  return result;
}

uint64_t sub_1BC711A94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_1BC711BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BC711BEC, 0, 0);
}

uint64_t sub_1BC711BEC()
{
  v1 = v0[3];
  if (!v1)
  {
    return sub_1BC75C3D0();
  }

  v2 = v0[4];

  v7 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1BC711D50;
  v5 = v0[2];

  return v7(v5);
}

uint64_t sub_1BC711D50(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_1BC711EE0;
  }

  else
  {
    *(v4 + 56) = a1;
    v7 = sub_1BC711E78;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1BC711E78()
{
  v1 = v0[4];
  sub_1BC635484(v0[3]);
  v2 = v0[1];
  v3 = v0[7];

  return v2(v3);
}

uint64_t sub_1BC711EE0()
{
  v1 = v0[4];
  sub_1BC635484(v0[3]);
  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

double sub_1BC711F84(uint64_t a1, void *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE8A0, &qword_1BC76C798);
  v5 = swift_allocObject();
  *&result = 1;
  *(v5 + 16) = xmmword_1BC761600;
  *(v5 + 32) = *a2;
  *a3 = v5;
  return result;
}

uint64_t sub_1BC712010(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a4;
}

uint64_t sub_1BC7120B0(uint64_t a1, uint64_t (*a2)(void))
{
  if (a2)
  {
    return a2();
  }

  return result;
}

uint64_t sub_1BC712118(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5, char a6, uint64_t a7)
{
  a4(*v7, v7[1]);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a6;
  *v7 = a7;
  v7[1] = v11;

  return swift_unknownObjectRetain();
}

void (*EnvironmentValues.sensitiveContentCallbacks.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x420uLL);
  }

  *a1 = v3;
  *(v3 + 1040) = v1;
  *(v3 + 1048) = sub_1BC635DE4();
  sub_1BC75ABC0();
  return sub_1BC712220;
}

void sub_1BC712220(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[9];
    v5 = v2[10];
    v4 = v2[11];
    v2[36] = v5;
    v2[37] = v4;
    v6 = v2[5];
    v8 = v2[6];
    v7 = v2[7];
    v2[32] = v8;
    v2[33] = v7;
    v9 = v2[7];
    v11 = v2[8];
    v10 = v2[9];
    v2[34] = v11;
    v2[35] = v10;
    v12 = v2[1];
    v14 = v2[2];
    v13 = v2[3];
    v2[28] = v14;
    v2[29] = v13;
    v15 = v2[3];
    v17 = v2[4];
    v16 = v2[5];
    v2[30] = v17;
    v2[31] = v16;
    v18 = v2[1];
    v19 = *v2;
    v2[26] = *v2;
    v2[27] = v18;
    v2[48] = v3;
    v2[49] = v5;
    v20 = v2[12];
    v2[50] = v2[11];
    v2[51] = v20;
    v2[44] = v6;
    v2[45] = v8;
    v2[46] = v9;
    v2[47] = v11;
    v2[40] = v12;
    v2[41] = v14;
    v2[42] = v15;
    v2[43] = v17;
    v21 = *(v2 + 131);
    v22 = *(v2 + 130);
    v2[38] = v20;
    v2[39] = v19;
    sub_1BC6362BC((v2 + 26), (v2 + 52));
    sub_1BC75ABD0();
    v23 = v2[11];
    v2[23] = v2[10];
    v2[24] = v23;
    v2[25] = v2[12];
    v24 = v2[7];
    v2[19] = v2[6];
    v2[20] = v24;
    v25 = v2[9];
    v2[21] = v2[8];
    v2[22] = v25;
    v26 = v2[3];
    v2[15] = v2[2];
    v2[16] = v26;
    v27 = v2[5];
    v2[17] = v2[4];
    v2[18] = v27;
    v28 = v2[1];
    v2[13] = *v2;
    v2[14] = v28;
    sub_1BC69811C((v2 + 13));
  }

  else
  {
    v29 = *(v2 + 131);
    v30 = *(v2 + 130);
    v31 = v2[11];
    v2[23] = v2[10];
    v2[24] = v31;
    v2[25] = v2[12];
    v32 = v2[7];
    v2[19] = v2[6];
    v2[20] = v32;
    v33 = v2[9];
    v2[21] = v2[8];
    v2[22] = v33;
    v34 = v2[3];
    v2[15] = v2[2];
    v2[16] = v34;
    v35 = v2[5];
    v2[17] = v2[4];
    v2[18] = v35;
    v36 = v2[1];
    v2[13] = *v2;
    v2[14] = v36;
    sub_1BC75ABD0();
  }

  free(v2);
}

uint64_t Callbacks.onShowContent.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_1BC63302C(v2);
}

uint64_t sub_1BC71239C@<X0>(void *a1@<X8>)
{
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v43 = v1[9];
  v45 = v1[11];
  v46 = v1[10];
  v48 = v1[13];
  v49 = v1[12];
  v51 = v1[15];
  v52 = v1[14];
  v54 = v1[17];
  v55 = v1[16];
  v57 = v1[19];
  v58 = v1[18];
  v60 = v1[21];
  v61 = v1[20];
  v63 = v1[23];
  v67 = v1[24];
  v64 = v1[22];
  v66 = v1[25];
  v81[0] = *v1;
  v3 = v81[0];
  v81[1] = v4;
  v80[0] = v5;
  v80[1] = v6;
  v82 = v81;
  v83 = v80;
  v79[0] = v7;
  v79[1] = v8;
  v78[0] = v9;
  v78[1] = v10;
  v84 = v79;
  v85 = v78;
  v77[0] = v11;
  v77[1] = v43;
  v76[0] = v46;
  v76[1] = v45;
  v86 = v77;
  v87 = v76;
  v75[0] = v49;
  v75[1] = v48;
  v74[0] = v52;
  v74[1] = v51;
  v88 = v75;
  v89 = v74;
  v73[0] = v55;
  v73[1] = v54;
  v72[0] = v58;
  v72[1] = v57;
  v90 = v73;
  v91 = v72;
  v71[0] = v61;
  v71[1] = v60;
  v70[0] = v64;
  v70[1] = v63;
  v92 = v71;
  v93 = v70;
  v69[0] = v67;
  v69[1] = v66;
  v94 = v69;
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE898, &qword_1BC76C790);
  a1[4] = &off_1F3B2DD90;
  v40 = swift_allocObject();
  *a1 = v40;
  sub_1BC63302C(v3);
  sub_1BC63302C(v5);
  sub_1BC63302C(v7);
  sub_1BC63302C(v9);
  sub_1BC63302C(v11);
  sub_1BC63302C(v46);
  sub_1BC63302C(v49);
  sub_1BC63302C(v52);
  sub_1BC63302C(v55);
  sub_1BC63302C(v58);
  sub_1BC63302C(v61);
  sub_1BC63302C(v64);
  sub_1BC63302C(v67);
  sub_1BC71AE1C();
  v68 = sub_1BC75C110();
  (*(*(v68 - 8) + 16))(&v95, v81);
  sub_1BC71AEC4();
  v12 = v83;
  v65 = sub_1BC75C110();
  (*(*(v65 - 8) + 16))(&v96, v12);
  sub_1BC71AD74();
  v13 = v84;
  v62 = sub_1BC75C110();
  (*(*(v62 - 8) + 16))(&v97, v13);
  sub_1BC71AF6C();
  v14 = v85;
  v59 = sub_1BC75C110();
  (*(*(v59 - 8) + 16))(&v98, v14);
  sub_1BC71B014();
  v15 = v86;
  v56 = sub_1BC75C110();
  (*(*(v56 - 8) + 16))(&v99, v15);
  sub_1BC71B0BC();
  v16 = v87;
  v53 = sub_1BC75C110();
  (*(*(v53 - 8) + 16))(&v100, v16);
  sub_1BC71B164();
  v17 = v88;
  v50 = sub_1BC75C110();
  (*(*(v50 - 8) + 16))(&v101, v17);
  sub_1BC71B20C();
  v18 = v89;
  v47 = sub_1BC75C110();
  (*(*(v47 - 8) + 16))(&v102, v18);
  sub_1BC71C97C();
  v19 = v90;
  v44 = sub_1BC75C110();
  (*(*(v44 - 8) + 16))(&v103, v19);
  sub_1BC71B2B4();
  v20 = v91;
  v42 = sub_1BC75C110();
  (*(*(v42 - 8) + 16))(&v104, v20);
  sub_1BC71B35C();
  v21 = v92;
  v41 = sub_1BC75C110();
  (*(*(v41 - 8) + 16))(&v105, v21);
  sub_1BC71B430();
  v22 = v93;
  v23 = sub_1BC75C110();
  (*(*(v23 - 8) + 16))(&v106, v22, v23);
  sub_1BC71C9D0();
  v24 = v94;
  v25 = sub_1BC75C110();
  (*(*(v25 - 8) + 16))(&v107, v24, v25);
  v26 = v106;
  v40[11] = v105;
  v40[12] = v26;
  v40[13] = v107;
  v27 = v102;
  v40[7] = v101;
  v40[8] = v27;
  v28 = v104;
  v40[9] = v103;
  v40[10] = v28;
  v29 = v98;
  v40[3] = v97;
  v40[4] = v29;
  v30 = v100;
  v40[5] = v99;
  v40[6] = v30;
  v31 = v96;
  v32 = 12;
  v40[1] = v95;
  v40[2] = v31;
  do
  {
    if (v32)
    {
      v36 = v32 + 1;
      if (v32 + 1 > 7)
      {
        if (v32 == 11)
        {
          v37 = v23;
        }

        else
        {
          v37 = v25;
        }

        if (v32 == 10)
        {
          v37 = v41;
        }

        v38 = v44;
        if (v32 != 8)
        {
          v38 = v42;
        }

        if (v32 == 7)
        {
          v38 = v47;
        }

        v39 = v36 <= 10;
      }

      else
      {
        v37 = v53;
        if (v32 != 5)
        {
          v37 = v50;
        }

        if (v32 == 4)
        {
          v37 = v56;
        }

        v38 = v62;
        if (v32 != 2)
        {
          v38 = v59;
        }

        if (v32 == 1)
        {
          v38 = v65;
        }

        v39 = v36 <= 4;
      }

      if (v39)
      {
        v33 = v38;
      }

      else
      {
        v33 = v37;
      }
    }

    else
    {
      v33 = v68;
    }

    v34 = (&v82)[v32];
    sub_1BC75C110();
    result = (*(*(v33 - 8) + 8))(v34, v33);
    --v32;
  }

  while (v32 != -1);
  return result;
}

uint64_t sub_1BC712B9C()
{
  sub_1BC71239C(v4);
  v0 = v5;
  v1 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v2 = (*(v1 + 8))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

uint64_t sub_1BC712C10(void *a1)
{
  v2 = a1[2];
  if (v2 == 1)
  {
    v3 = *(a1[3] & 0xFFFFFFFFFFFFFFFELL);
    TupleTypeMetadata = sub_1BC75C110();
    v5 = TupleTypeMetadata;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v2)
    {
      v7 = (a1[3] & 0xFFFFFFFFFFFFFFFELL);
      v8 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      v9 = v2;
      do
      {
        v10 = *v7++;
        *v8++ = sub_1BC75C110();
        --v9;
      }

      while (v9);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v5 = TupleTypeMetadata;
  }

  v11 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v31 = v13;
  v14 = *(v13 + 16);
  v34 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14();
  v32 = v5;
  v15 = 0;
  if (v2)
  {
    v16 = (a1[3] & 0xFFFFFFFFFFFFFFFELL);
    v17 = (a1[4] & 0xFFFFFFFFFFFFFFFELL);
    v18 = (v5 + 32);
    v19 = v2;
    v33 = v2;
    do
    {
      if (v2 == 1)
      {
        v20 = 0;
      }

      else
      {
        v20 = *v18;
      }

      v21 = *v16++;
      v22 = *v17++;
      v23 = sub_1BC75C110();
      v35 = &v30;
      v24 = *(v23 - 8);
      v25 = *(v24 + 64);
      MEMORY[0x1EEE9AC00](v23);
      v27 = &v30 - v26;
      (*(v24 + 16))(&v30 - v26, &v34[v20], v23);
      v28 = sub_1BC711118(v23, v22);
      (*(v24 + 8))(v27, v23);
      v15 |= v28;
      v18 += 4;
      --v19;
      v2 = v33;
    }

    while (v19);
  }

  (*(v31 + 8))(v34, v32);
  return v15;
}

uint64_t sub_1BC712ED8(void *a1)
{
  v2 = a1[2];
  if (v2 == 1)
  {
    v3 = *(a1[3] & 0xFFFFFFFFFFFFFFFELL);
    TupleTypeMetadata = sub_1BC75C110();
    v5 = TupleTypeMetadata;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v2)
    {
      v7 = (a1[3] & 0xFFFFFFFFFFFFFFFELL);
      v8 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      v9 = v2;
      do
      {
        v10 = *v7++;
        *v8++ = sub_1BC75C110();
        --v9;
      }

      while (v9);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v5 = TupleTypeMetadata;
  }

  v11 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v34 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1E69E7CD0];
  v31 = v14;
  v32 = v13;
  (*(v14 + 16))();
  if (v2)
  {
    v15 = (a1[3] & 0xFFFFFFFFFFFFFFFELL);
    v16 = (a1[4] & 0xFFFFFFFFFFFFFFFELL);
    v17 = (v32 + 32);
    v18 = v2;
    v33 = v2;
    do
    {
      if (v2 == 1)
      {
        v19 = 0;
      }

      else
      {
        v19 = *v17;
      }

      v20 = *v15++;
      v21 = *v16++;
      v22 = sub_1BC75C110();
      v23 = *(v22 - 8);
      v24 = *(v23 + 64);
      MEMORY[0x1EEE9AC00](v22);
      v26 = &v30 - v25;
      (*(v23 + 16))(&v30 - v25, &v34[v19], v22);
      v27 = sub_1BC71125C(v22, v21);
      (*(v23 + 8))(v26, v22);
      sub_1BC7131A0(v27);
      v17 += 4;
      --v18;
      v2 = v33;
    }

    while (v18);
  }

  v28 = v35;
  (*(v31 + 8))(v34, v32);
  return v28;
}

uint64_t sub_1BC7131A0(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_1BC71902C(&v10, *(*(v1 + 48) + ((v8 << 9) | (8 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1BC713280(unsigned __int8 *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 == 1)
  {
    v5 = *(*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
    TupleTypeMetadata = sub_1BC75C110();
    v7 = TupleTypeMetadata;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v4)
    {
      v9 = (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
      v10 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      v11 = v4;
      do
      {
        v12 = *v9++;
        *v10++ = sub_1BC75C110();
        --v11;
      }

      while (v11);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v7 = TupleTypeMetadata;
  }

  v13 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v33 = *a1;
  v31 = v16;
  v32 = v15;
  v17 = *(v16 + 16);
  v34 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17();
  if (v4)
  {
    v18 = (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v19 = (v32 + 32);
    v20 = v4;
    v21 = v4;
    do
    {
      v28 = *v18;
      v35 = v33;
      if (v4 == 1)
      {
        v22 = 0;
      }

      else
      {
        v22 = *v19;
      }

      v23 = sub_1BC75C110();
      v24 = *(v23 - 8);
      v25 = *(v24 + 64);
      MEMORY[0x1EEE9AC00](v23);
      v27 = &v30 - v26;
      (*(v24 + 16))(&v30 - v26, &v34[v22], v23);
      sub_1BC713540(&v35, v27, v28);
      (*(v24 + 8))(v27, v23);
      v19 += 4;
      ++v18;
      --v20;
      v4 = v21;
    }

    while (v20);
  }

  return (*(v31 + 8))(v34, v32);
}

uint64_t sub_1BC713540(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23 - v8;
  v10 = sub_1BC75C110();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - v13;
  v15 = *a1;
  (*(v11 + 16))(&v23 - v13, a2, v10);
  if ((*(*(a3 - 8) + 48))(v14, 1, a3) == 1)
  {
    (*(v11 + 8))(v14, v10);
LABEL_8:
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    return sub_1BC66008C(&v23, &qword_1EBCDE8C0, &qword_1BC76C7D8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE8C8, &qword_1BC76C7E0);
  if (!swift_dynamicCast())
  {
    goto LABEL_8;
  }

  if (!*(&v24 + 1))
  {
    return sub_1BC66008C(&v23, &qword_1EBCDE8C0, &qword_1BC76C7D8);
  }

  sub_1BC71CBE8(&v23, v26);
  v16 = v27;
  v17 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  (*(v17 + 16))(&v23, v16, v17);
  if (v23 == v15)
  {
    v18 = sub_1BC75BE10();
    (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
    sub_1BC65E764(v26, &v23);
    sub_1BC75BDE0();
    v19 = sub_1BC75BDD0();
    v20 = swift_allocObject();
    v21 = MEMORY[0x1E69E85E0];
    *(v20 + 16) = v19;
    *(v20 + 24) = v21;
    sub_1BC71CBE8(&v23, v20 + 32);
    sub_1BC652910(0, 0, v9, &unk_1BC76C7F0, v20);
  }

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t sub_1BC71384C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1BC75BDE0();
  *(v4 + 24) = sub_1BC75BDD0();
  v6 = sub_1BC75BD80();

  return MEMORY[0x1EEE6DFA0](sub_1BC7138E4, v6, v5);
}

uint64_t sub_1BC7138E4()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  (*(v4 + 32))(v3, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1BC7139A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC71C4B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC7139D8(uint64_t a1)
{
  v2 = sub_1BC719940();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC713A14(uint64_t a1)
{
  v2 = sub_1BC719940();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Callbacks.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDE6A0, &qword_1BC76AA00);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v31 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v53 = v1[3];
  v54 = v10;
  v11 = v1[4];
  v51 = v1[5];
  v52 = v11;
  v12 = v1[6];
  v49 = v1[7];
  v50 = v12;
  v13 = v1[8];
  v47 = v1[9];
  v48 = v13;
  v14 = v1[11];
  v45 = v1[10];
  v46 = v14;
  v15 = v1[13];
  v43 = v1[12];
  v44 = v15;
  v16 = v1[15];
  v41 = v1[14];
  v42 = v16;
  v17 = v1[17];
  v39 = v1[16];
  v40 = v17;
  v18 = v1[19];
  v37 = v1[18];
  v38 = v18;
  v19 = v1[21];
  v35 = v1[20];
  v36 = v19;
  v20 = v1[23];
  v33 = v1[22];
  v34 = v20;
  v21 = v1[25];
  v31 = v1[24];
  v32 = v21;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC63302C(v8);
  sub_1BC719940();
  sub_1BC75C740();
  v56 = v8;
  v57 = v9;
  v23 = v3;
  v58 = 0;
  sub_1BC719994();
  v24 = v55;
  sub_1BC75C520();
  if (v24)
  {
    sub_1BC635468(v56);
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    v26 = v51;
    v25 = v52;
    v28 = v49;
    v27 = v50;
    v29 = v48;
    sub_1BC635468(v56);
    v56 = v54;
    v57 = v53;
    v58 = 1;
    sub_1BC7199E8();
    sub_1BC75C520();
    v56 = v25;
    v57 = v26;
    v58 = 2;
    sub_1BC719A3C();
    sub_1BC75C520();
    v55 = v4;
    v56 = v27;
    v57 = v28;
    v58 = 3;
    sub_1BC719A90();
    sub_1BC75C520();
    v56 = v29;
    v57 = v47;
    v58 = 4;
    sub_1BC719AE4();
    sub_1BC75C520();
    v56 = v45;
    v57 = v46;
    v58 = 5;
    sub_1BC719B38();
    sub_1BC75C520();
    v56 = v43;
    v57 = v44;
    v58 = 6;
    sub_1BC719B8C();
    sub_1BC75C520();
    v56 = v41;
    v57 = v42;
    v58 = 7;
    sub_1BC719BE0();
    sub_1BC75C520();
    v56 = v39;
    v57 = v40;
    v58 = 8;
    sub_1BC719C34();
    sub_1BC75C520();
    v56 = v37;
    v57 = v38;
    v58 = 9;
    sub_1BC719C88();
    sub_1BC75C520();
    v56 = v35;
    v57 = v36;
    v58 = 10;
    sub_1BC719CDC();
    sub_1BC75C520();
    v56 = v33;
    v57 = v34;
    v58 = 11;
    sub_1BC719D30();
    sub_1BC75C520();
    v56 = v31;
    v57 = v32;
    v58 = 12;
    sub_1BC719D84();
    sub_1BC75C520();
    return (*(v4 + 8))(0, v23);
  }
}

uint64_t Callbacks.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDE6B0, &unk_1BC76AA08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v45 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1BC719940();
  sub_1BC75C730();
  if (v2)
  {
    v71 = v2;
    v70 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v55 = 0;
    v57 = 0;
    v58 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v69 = 1uLL;
    v68 = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v15 = 1;
    v16 = 1;
    v17 = 1;
    v18 = 1;
    v67 = 1;
    v19 = 1;
  }

  else
  {
    LOBYTE(v72) = 0;
    sub_1BC719DD8();
    sub_1BC75C490();
    v54 = v86;
    sub_1BC635468(1);
    LOBYTE(v72) = 1;
    sub_1BC719E2C();
    sub_1BC75C490();
    v52 = a2;
    v53 = *(&v86 + 1);
    v21 = v86;
    LOBYTE(v72) = 2;
    sub_1BC719E80();
    sub_1BC75C490();
    v67 = v21;
    v50 = *(&v86 + 1);
    v51 = v86;
    LOBYTE(v72) = 3;
    sub_1BC719ED4();
    sub_1BC75C490();
    v22 = v86;
    LOBYTE(v72) = 4;
    sub_1BC719F28();
    sub_1BC75C490();
    v58 = *(&v22 + 1);
    v49 = v22;
    v57 = *(&v86 + 1);
    v23 = v86;
    LOBYTE(v72) = 5;
    sub_1BC719F7C();
    sub_1BC75C490();
    v24 = *(&v86 + 1);
    v48 = v86;
    LOBYTE(v72) = 6;
    sub_1BC719FD0();
    sub_1BC75C490();
    v55 = v24;
    v66 = *(&v86 + 1);
    v62 = v86;
    LOBYTE(v72) = 7;
    sub_1BC71A024();
    sub_1BC75C490();
    v47 = v23;
    v65 = *(&v86 + 1);
    v61 = v86;
    LOBYTE(v72) = 8;
    sub_1BC71A078();
    sub_1BC75C490();
    v71 = 0;
    v64 = *(&v86 + 1);
    v60 = v86;
    LOBYTE(v72) = 9;
    sub_1BC71A0CC();
    v25 = v71;
    sub_1BC75C490();
    v71 = v25;
    if (v25)
    {
      (*(v6 + 8))(v9, v5);
      v70 = 0;
      v63 = 0;
      v69 = 1uLL;
      v68 = 1;
      v59 = 1;
    }

    else
    {
      v63 = *(&v86 + 1);
      v59 = v86;
      LOBYTE(v72) = 10;
      sub_1BC71A120();
      v26 = v71;
      sub_1BC75C490();
      v71 = v26;
      if (v26)
      {
        (*(v6 + 8))(v9, v5);
        v70 = 0;
        v69 = 1uLL;
        v68 = 1;
      }

      else
      {
        v70 = *(&v86 + 1);
        v68 = v86;
        LOBYTE(v72) = 11;
        sub_1BC71A174();
        v27 = v71;
        sub_1BC75C490();
        v71 = v27;
        if (v27)
        {
          (*(v6 + 8))(v9, v5);
          v69 = 1uLL;
        }

        else
        {
          v69 = v86;
          v109 = 12;
          sub_1BC71A1C8();
          v28 = v71;
          sub_1BC75C490();
          v71 = v28;
          if (!v28)
          {
            (*(v6 + 8))(v9, v5);
            v45 = *(&v85 + 1);
            v46 = v85;
            v29 = v54;
            v72 = v54;
            v30 = v53;
            *&v73 = v67;
            *(&v73 + 1) = v53;
            v31 = v50;
            *&v74 = v51;
            *(&v74 + 1) = v50;
            v32 = v57;
            v33 = v58;
            *&v75 = v49;
            *(&v75 + 1) = v58;
            *&v76 = v47;
            *(&v76 + 1) = v57;
            v34 = v55;
            *&v77 = v48;
            *(&v77 + 1) = v55;
            *&v78 = v62;
            *(&v78 + 1) = v66;
            *&v79 = v61;
            *(&v79 + 1) = v65;
            *&v80 = v60;
            *(&v80 + 1) = v64;
            *&v81 = v59;
            *(&v81 + 1) = v63;
            *&v82 = v68;
            *(&v82 + 1) = v70;
            v83 = v69;
            v84 = v85;
            v35 = v79;
            v36 = v52;
            v52[6] = v78;
            v36[7] = v35;
            v37 = v72;
            v38 = v73;
            v39 = v77;
            v36[4] = v76;
            v36[5] = v39;
            v40 = v75;
            v36[2] = v74;
            v36[3] = v40;
            *v36 = v37;
            v36[1] = v38;
            v41 = v80;
            v42 = v81;
            v43 = v84;
            v44 = v82;
            v36[11] = v83;
            v36[12] = v43;
            v36[9] = v42;
            v36[10] = v44;
            v36[8] = v41;
            sub_1BC6362BC(&v72, &v86);
            __swift_destroy_boxed_opaque_existential_1(v56);
            v86 = v29;
            v87 = v67;
            v88 = v30;
            v89 = v51;
            v90 = v31;
            v91 = v49;
            v92 = v33;
            v93 = v47;
            v94 = v32;
            v95 = v48;
            v96 = v34;
            v97 = v62;
            v98 = v66;
            v99 = v61;
            v100 = v65;
            v101 = v60;
            v102 = v64;
            v103 = v59;
            v104 = v63;
            v105 = v68;
            v106 = v70;
            v107 = v69;
            *&v108 = v46;
            *(&v108 + 1) = v45;
            return sub_1BC69811C(&v86);
          }

          (*(v6 + 8))(v9, v5);
        }
      }
    }

    v14 = *(&v54 + 1);
    v19 = v54;
    v13 = v53;
    v12 = v50;
    v18 = v51;
    v17 = v49;
    v16 = v47;
    v15 = v48;
  }

  __swift_destroy_boxed_opaque_existential_1(v56);
  *&v86 = v19;
  *(&v86 + 1) = v14;
  v87 = v67;
  v88 = v13;
  v89 = v18;
  v90 = v12;
  v91 = v17;
  v92 = v58;
  v93 = v16;
  v94 = v57;
  v95 = v15;
  v96 = v55;
  v97 = v62;
  v98 = v66;
  v99 = v61;
  v100 = v65;
  v101 = v60;
  v102 = v64;
  v103 = v59;
  v104 = v63;
  v105 = v68;
  v106 = v70;
  v107 = v69;
  v108 = xmmword_1BC767530;
  return sub_1BC69811C(&v86);
}

__n128 Callbacks.init(container:config:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for InterventionConfig(0);
  v7 = v6 - 8;
  v47 = *(v6 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = sub_1BC759EE0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v43 = v13;
  v44 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = *(v7 + 28);
  v15 = *(v10 + 16);
  v45 = v41 - v17;
  v46 = v16;
  v15();
  v18 = [a1 interventionDelegate];
  v78[0] = xmmword_1BC767530;
  v78[1] = xmmword_1BC767530;
  v78[2] = xmmword_1BC767530;
  v78[3] = xmmword_1BC767530;
  v78[4] = xmmword_1BC767530;
  v78[5] = xmmword_1BC767530;
  v78[6] = xmmword_1BC767530;
  v78[7] = xmmword_1BC767530;
  v78[8] = xmmword_1BC767530;
  v78[9] = xmmword_1BC767530;
  v78[10] = xmmword_1BC767530;
  v78[11] = xmmword_1BC767530;
  v48 = xmmword_1BC767530;
  v78[12] = xmmword_1BC767530;
  sub_1BC69811C(v78);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1BC66FCA4(a2, v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  *(v22 + 24) = v20;
  v47 = v22;
  sub_1BC66FCA4(v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  sub_1BC635468(1);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v25 + 24) = v24;
  if (v18 && ([v18 respondsToSelector_] & 1) != 0)
  {
    (*(v10 + 8))(v45, v46);
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    *(v28 + 24) = v27;
    v29 = sub_1BC71A4A8;
  }

  else
  {
    v42 = v25;
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41[1] = a1;
    v31 = *(v10 + 32);
    v32 = v44;
    v33 = v46;
    v31(v44, v45, v46);
    v34 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v30;
    v31((v28 + v34), v32, v33);
    if (!v18)
    {
      swift_unknownObjectRelease();
      v37 = 0;
      v29 = sub_1BC71A3F8;
      v38 = 1;
      v25 = v42;
      goto LABEL_10;
    }

    v29 = sub_1BC71A3F8;
    v25 = v42;
  }

  if ([v18 respondsToSelector_])
  {
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v37 = swift_allocObject();
    *(v37 + 16) = v35;
    *(v37 + 24) = v36;
    v38 = sub_1BC71A45C;
  }

  else
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v37 = 0;
    v38 = 1;
  }

LABEL_10:
  v39 = v47;
  v50[0] = sub_1BC71A21C;
  v50[1] = v47;
  v50[2] = sub_1BC71A334;
  v50[3] = v25;
  v51 = v48;
  v52 = v48;
  v53 = v38;
  v54 = v37;
  v55 = v29;
  v56 = v28;
  v57 = v48;
  v58 = v48;
  v59 = v48;
  v60 = v48;
  v61 = v48;
  v62 = v48;
  v63 = v48;
  v64[0] = sub_1BC71A21C;
  v64[1] = v47;
  v64[2] = sub_1BC71A334;
  v64[3] = v25;
  v65 = v48;
  v66 = v48;
  v67 = v38;
  v68 = v37;
  v69 = v29;
  v70 = v28;
  v71 = v48;
  v72 = v48;
  v73 = v48;
  v74 = v48;
  v75 = v48;
  v76 = v48;
  v77 = v48;
  sub_1BC6362BC(v50, &v49);
  sub_1BC69811C(v64);
  *a3 = sub_1BC71A21C;
  *(a3 + 8) = v39;
  *(a3 + 16) = sub_1BC71A334;
  *(a3 + 24) = v25;
  result = v48;
  *(a3 + 32) = v48;
  *(a3 + 48) = result;
  *(a3 + 64) = v38;
  *(a3 + 72) = v37;
  *(a3 + 80) = v29;
  *(a3 + 88) = v28;
  *(a3 + 96) = result;
  *(a3 + 112) = result;
  *(a3 + 128) = result;
  *(a3 + 144) = result;
  *(a3 + 160) = result;
  *(a3 + 176) = result;
  *(a3 + 192) = result;
  return result;
}

uint64_t sub_1BC71518C()
{
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    v1 = result;
    swift_unknownObjectRetain();
    return v1;
  }

  return result;
}

void sub_1BC7151E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BC759EE0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = sub_1BC71518C();
    swift_unknownObjectRelease();
    if (v6)
    {
      (*(v4 + 16))(&aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
      v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v8 = swift_allocObject();
      (*(v4 + 32))(v8 + v7, &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
      aBlock[4] = sub_1BC6D2178;
      aBlock[5] = v8;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BC67768C;
      aBlock[3] = &block_descriptor_3;
      v9 = _Block_copy(aBlock);

      [v6 dismissInterventionFacadeWithCompletionHandler_];
      swift_unknownObjectRelease();
      _Block_release(v9);
    }
  }
}

unint64_t sub_1BC7153C4(char a1)
{
  result = 0x6F43776F68536E6FLL;
  switch(a1)
  {
    case 1:
    case 12:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0x646C656968536E6FLL;
      break;
    case 3:
      result = 0x6C6143646E456E6FLL;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x6F43656469486E6FLL;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0x6574656C65446E6FLL;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0x736275736E556E6FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BC71555C(uint64_t a1)
{
  v2 = sub_1BC71A568();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC715598(uint64_t a1)
{
  v2 = sub_1BC71A568();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7155D4(uint64_t a1)
{
  v2 = sub_1BC71A7B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC715610(uint64_t a1)
{
  v2 = sub_1BC71A7B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC71564C(uint64_t a1)
{
  v2 = sub_1BC71A6B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC715688(uint64_t a1)
{
  v2 = sub_1BC71A6B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7156C4(uint64_t a1)
{
  v2 = sub_1BC71A8B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC715700(uint64_t a1)
{
  v2 = sub_1BC71A8B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC71573C(uint64_t a1)
{
  v2 = sub_1BC71A760();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC715778(uint64_t a1)
{
  v2 = sub_1BC71A760();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7157B4(uint64_t a1)
{
  v2 = sub_1BC71A5BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7157F0(uint64_t a1)
{
  v2 = sub_1BC71A5BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC71582C(uint64_t a1)
{
  v2 = sub_1BC71A958();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC715868(uint64_t a1)
{
  v2 = sub_1BC71A958();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7158A4(uint64_t a1)
{
  v2 = sub_1BC71A664();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7158E0(uint64_t a1)
{
  v2 = sub_1BC71A664();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC71591C(uint64_t a1)
{
  v2 = sub_1BC71A808();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC715958(uint64_t a1)
{
  v2 = sub_1BC71A808();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC715994(uint64_t a1)
{
  v2 = sub_1BC71A70C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7159D0(uint64_t a1)
{
  v2 = sub_1BC71A70C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC715A0C(uint64_t a1)
{
  v2 = sub_1BC71A904();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC715A48(uint64_t a1)
{
  v2 = sub_1BC71A904();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC715A84(uint64_t a1)
{
  v2 = sub_1BC71A9AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC715AC0(uint64_t a1)
{
  v2 = sub_1BC71A9AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC715AFC(uint64_t a1)
{
  v2 = sub_1BC71A610();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC715B38(uint64_t a1)
{
  v2 = sub_1BC71A610();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC715B74(uint64_t a1)
{
  v2 = sub_1BC71A85C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC715BB0(uint64_t a1)
{
  v2 = sub_1BC71A85C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Callbacks.XPCMessage.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE728, &qword_1BC76AA18);
  v94 = *(v4 - 8);
  v95 = v4;
  v5 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v93 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE730, &qword_1BC76AA20);
  v91 = *(v7 - 8);
  v92 = v7;
  v8 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v90 = &v59 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE738, &qword_1BC76AA28);
  v88 = *(v10 - 8);
  v89 = v10;
  v11 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v87 = &v59 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE740, &qword_1BC76AA30);
  v85 = *(v13 - 8);
  v86 = v13;
  v14 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v84 = &v59 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE748, &qword_1BC76AA38);
  v82 = *(v16 - 8);
  v83 = v16;
  v17 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v81 = &v59 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE750, &qword_1BC76AA40);
  v79 = *(v19 - 8);
  v80 = v19;
  v20 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v78 = &v59 - v21;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE758, &qword_1BC76AA48);
  v76 = *(v77 - 8);
  v22 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v75 = &v59 - v23;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE760, &qword_1BC76AA50);
  v73 = *(v74 - 8);
  v24 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v59 - v25;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE768, &qword_1BC76AA58);
  v70 = *(v71 - 8);
  v26 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v59 - v27;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE770, &qword_1BC76AA60);
  v67 = *(v68 - 8);
  v28 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v59 - v29;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE778, &qword_1BC76AA68);
  v64 = *(v65 - 8);
  v30 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v59 - v31;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE780, &qword_1BC76AA70);
  v61 = *(v62 - 8);
  v32 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v34 = &v59 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE788, &qword_1BC76AA78);
  v60 = *(v35 - 8);
  v36 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v59 - v37;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE790, &qword_1BC76AA80);
  v39 = *(v97 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v42 = &v59 - v41;
  v43 = *v2;
  v44 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC71A568();
  v96 = v42;
  sub_1BC75C740();
  v45 = (v39 + 8);
  switch(v43)
  {
    case 1:
      v99 = 1;
      sub_1BC71A958();
      v54 = v96;
      v55 = v97;
      sub_1BC75C4E0();
      (*(v61 + 8))(v34, v62);
      return (*v45)(v54, v55);
    case 2:
      v100 = 2;
      sub_1BC71A904();
      v52 = v63;
      v47 = v96;
      v46 = v97;
      sub_1BC75C4E0();
      (*(v64 + 8))(v52, v65);
      return (*v45)(v47, v46);
    case 3:
      v101 = 3;
      sub_1BC71A8B0();
      v53 = v66;
      v47 = v96;
      v46 = v97;
      sub_1BC75C4E0();
      (*(v67 + 8))(v53, v68);
      return (*v45)(v47, v46);
    case 4:
      v102 = 4;
      sub_1BC71A85C();
      v51 = v69;
      v47 = v96;
      v46 = v97;
      sub_1BC75C4E0();
      (*(v70 + 8))(v51, v71);
      return (*v45)(v47, v46);
    case 5:
      v103 = 5;
      sub_1BC71A808();
      v57 = v72;
      v47 = v96;
      v46 = v97;
      sub_1BC75C4E0();
      (*(v73 + 8))(v57, v74);
      return (*v45)(v47, v46);
    case 6:
      v104 = 6;
      sub_1BC71A7B4();
      v58 = v75;
      v47 = v96;
      v46 = v97;
      sub_1BC75C4E0();
      (*(v76 + 8))(v58, v77);
      return (*v45)(v47, v46);
    case 7:
      v105 = 7;
      sub_1BC71A760();
      v48 = v78;
      v47 = v96;
      v46 = v97;
      sub_1BC75C4E0();
      v50 = v79;
      v49 = v80;
      goto LABEL_15;
    case 8:
      v106 = 8;
      sub_1BC71A70C();
      v48 = v81;
      v47 = v96;
      v46 = v97;
      sub_1BC75C4E0();
      v50 = v82;
      v49 = v83;
      goto LABEL_15;
    case 9:
      v107 = 9;
      sub_1BC71A6B8();
      v48 = v84;
      v47 = v96;
      v46 = v97;
      sub_1BC75C4E0();
      v50 = v85;
      v49 = v86;
      goto LABEL_15;
    case 10:
      v108 = 10;
      sub_1BC71A664();
      v48 = v87;
      v47 = v96;
      v46 = v97;
      sub_1BC75C4E0();
      v50 = v88;
      v49 = v89;
      goto LABEL_15;
    case 11:
      v109 = 11;
      sub_1BC71A610();
      v48 = v90;
      v47 = v96;
      v46 = v97;
      sub_1BC75C4E0();
      v50 = v91;
      v49 = v92;
      goto LABEL_15;
    case 12:
      v110 = 12;
      sub_1BC71A5BC();
      v48 = v93;
      v47 = v96;
      v46 = v97;
      sub_1BC75C4E0();
      v50 = v94;
      v49 = v95;
LABEL_15:
      (*(v50 + 8))(v48, v49);
      break;
    default:
      v98 = 0;
      sub_1BC71A9AC();
      v47 = v96;
      v46 = v97;
      sub_1BC75C4E0();
      (*(v60 + 8))(v38, v35);
      break;
  }

  return (*v45)(v47, v46);
}

uint64_t Callbacks.XPCMessage.hashValue.getter()
{
  v1 = *v0;
  sub_1BC75C700();
  MEMORY[0x1BFB272F0](v1);
  return sub_1BC75C720();
}

uint64_t Callbacks.XPCMessage.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v118 = a2;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE798, &qword_1BC76AA88);
  v105 = *(v117 - 8);
  v3 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v114 = v78 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE7A0, &qword_1BC76AA90);
  v103 = *(v5 - 8);
  v104 = v5;
  v6 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v113 = v78 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE7A8, &qword_1BC76AA98);
  v101 = *(v8 - 8);
  v102 = v8;
  v9 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v112 = v78 - v10;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE7B0, &qword_1BC76AAA0);
  v99 = *(v100 - 8);
  v11 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v111 = v78 - v12;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE7B8, &qword_1BC76AAA8);
  v97 = *(v98 - 8);
  v13 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v110 = v78 - v14;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE7C0, &qword_1BC76AAB0);
  v95 = *(v96 - 8);
  v15 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v109 = v78 - v16;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE7C8, &qword_1BC76AAB8);
  v93 = *(v94 - 8);
  v17 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v107 = v78 - v18;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE7D0, &qword_1BC76AAC0);
  v91 = *(v92 - 8);
  v19 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v116 = v78 - v20;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE7D8, &qword_1BC76AAC8);
  v89 = *(v90 - 8);
  v21 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v115 = v78 - v22;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE7E0, &qword_1BC76AAD0);
  v87 = *(v88 - 8);
  v23 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v108 = v78 - v24;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE7E8, &qword_1BC76AAD8);
  v85 = *(v86 - 8);
  v25 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v106 = v78 - v26;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE7F0, &qword_1BC76AAE0);
  v83 = *(v84 - 8);
  v27 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v29 = v78 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE7F8, &qword_1BC76AAE8);
  v82 = *(v30 - 8);
  v31 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = v78 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDE800, qword_1BC76AAF0);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v38 = v78 - v37;
  v40 = a1[3];
  v39 = a1[4];
  v120 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v40);
  sub_1BC71A568();
  v41 = v119;
  sub_1BC75C730();
  if (v41)
  {
LABEL_34:
    v76 = v120;
    return __swift_destroy_boxed_opaque_existential_1(v76);
  }

  v80 = v33;
  v79 = v30;
  v42 = v115;
  v43 = v116;
  v81 = 0;
  v45 = v117;
  v44 = v118;
  v119 = v35;
  v46 = sub_1BC75C4D0();
  if (*(v46 + 16) != 1 || (v47 = *(v46 + 32), v47 == 13))
  {
    v50 = sub_1BC75C300();
    swift_allocError();
    v52 = v51;
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBEF0, &unk_1BC767CA0) + 48);
    *v52 = &type metadata for Callbacks.XPCMessage;
    sub_1BC75C460();
    sub_1BC75C2F0();
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x1E69E6AF8], v50);
    swift_willThrow();
    (*(v119 + 8))(v38, v34);
LABEL_33:
    swift_unknownObjectRelease();
    goto LABEL_34;
  }

  v78[1] = v46;
  switch(v47)
  {
    case 1:
      v122 = 1;
      sub_1BC71A958();
      v69 = v81;
      sub_1BC75C450();
      if (v69)
      {
        goto LABEL_32;
      }

      (*(v83 + 8))(v29, v84);
      goto LABEL_37;
    case 2:
      v123 = 2;
      sub_1BC71A904();
      v63 = v106;
      v64 = v81;
      sub_1BC75C450();
      if (v64)
      {
        goto LABEL_32;
      }

      (*(v85 + 8))(v63, v86);
      goto LABEL_37;
    case 3:
      v124 = 3;
      sub_1BC71A8B0();
      v65 = v108;
      v66 = v81;
      sub_1BC75C450();
      if (v66)
      {
        goto LABEL_32;
      }

      (*(v87 + 8))(v65, v88);
      goto LABEL_37;
    case 4:
      v125 = 4;
      sub_1BC71A85C();
      v58 = v81;
      sub_1BC75C450();
      if (v58)
      {
        goto LABEL_32;
      }

      (*(v89 + 8))(v42, v90);
      goto LABEL_37;
    case 5:
      v126 = 5;
      sub_1BC71A808();
      v70 = v81;
      sub_1BC75C450();
      if (v70)
      {
        goto LABEL_32;
      }

      (*(v91 + 8))(v43, v92);
      goto LABEL_37;
    case 6:
      v127 = 6;
      sub_1BC71A7B4();
      v71 = v107;
      v72 = v81;
      sub_1BC75C450();
      if (v72)
      {
        goto LABEL_32;
      }

      (*(v93 + 8))(v71, v94);
      goto LABEL_37;
    case 7:
      v128 = 7;
      sub_1BC71A760();
      v67 = v109;
      v68 = v81;
      sub_1BC75C450();
      if (v68)
      {
        goto LABEL_32;
      }

      (*(v95 + 8))(v67, v96);
      goto LABEL_37;
    case 8:
      v129 = 8;
      sub_1BC71A70C();
      v74 = v110;
      v75 = v81;
      sub_1BC75C450();
      if (v75)
      {
        goto LABEL_32;
      }

      (*(v97 + 8))(v74, v98);
      goto LABEL_37;
    case 9:
      v130 = 9;
      sub_1BC71A6B8();
      v61 = v111;
      v62 = v81;
      sub_1BC75C450();
      if (v62)
      {
        goto LABEL_32;
      }

      (*(v99 + 8))(v61, v100);
      goto LABEL_37;
    case 10:
      v131 = 10;
      sub_1BC71A664();
      v54 = v112;
      v73 = v81;
      sub_1BC75C450();
      if (v73)
      {
        goto LABEL_32;
      }

      v57 = v101;
      v56 = v102;
      goto LABEL_30;
    case 11:
      v132 = 11;
      sub_1BC71A610();
      v54 = v113;
      v55 = v81;
      sub_1BC75C450();
      if (v55)
      {
        goto LABEL_32;
      }

      v57 = v103;
      v56 = v104;
LABEL_30:
      (*(v57 + 8))(v54, v56);
      goto LABEL_37;
    case 12:
      v133 = 12;
      sub_1BC71A5BC();
      v59 = v114;
      v60 = v81;
      sub_1BC75C450();
      if (v60)
      {
        goto LABEL_32;
      }

      (*(v105 + 8))(v59, v45);
      goto LABEL_37;
    default:
      v121 = 0;
      sub_1BC71A9AC();
      v48 = v80;
      v49 = v81;
      sub_1BC75C450();
      if (v49)
      {
LABEL_32:
        (*(v119 + 8))(v38, v34);
        goto LABEL_33;
      }

      (*(v82 + 8))(v48, v79);
LABEL_37:
      (*(v119 + 8))(v38, v34);
      swift_unknownObjectRelease();
      v76 = v120;
      *v44 = v47;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_1(v76);
}

uint64_t sub_1BC7176B8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2[9];
  v5 = v2[11];
  v32 = v2[10];
  v33 = v5;
  v6 = v2[11];
  v34 = v2[12];
  v7 = v2[5];
  v8 = v2[7];
  v28 = v2[6];
  v9 = v28;
  v29 = v8;
  v10 = v2[7];
  v11 = v2[9];
  v30 = v2[8];
  v12 = v30;
  v31 = v11;
  v13 = v2[1];
  v14 = v2[3];
  v24 = v2[2];
  v15 = v24;
  v25 = v14;
  v16 = v2[3];
  v17 = v2[5];
  v26 = v2[4];
  v18 = v26;
  v27 = v17;
  v19 = v2[1];
  v23[0] = *v2;
  v20 = v23[0];
  v23[1] = v19;
  a2[10] = v32;
  a2[11] = v6;
  a2[12] = v2[12];
  a2[6] = v9;
  a2[7] = v10;
  a2[8] = v12;
  a2[9] = v4;
  a2[2] = v15;
  a2[3] = v16;
  a2[4] = v18;
  a2[5] = v7;
  *a2 = v20;
  a2[1] = v13;
  sub_1BC6362BC(v23, &v22);
  return sub_1BC717774(a1);
}

uint64_t sub_1BC717774(uint64_t a1)
{
  if (*v1 != 1)
  {
    v3 = v1[1];
    sub_1BC635484(*v1);
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = 0;
    *v1 = sub_1BC71CC94;
    v1[1] = v4;
    swift_unknownObjectRetain();
  }

  v5 = v1[2];
  if (v5 != 1)
  {
    v6 = v1[3];
    sub_1BC635484(v5);
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = 1;
    v1[2] = sub_1BC71CC94;
    v1[3] = v7;
    swift_unknownObjectRetain();
  }

  v8 = v1[6];
  if (v8 != 1)
  {
    v9 = v1[7];
    sub_1BC635484(v8);
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = 3;
    v1[6] = sub_1BC71CC94;
    v1[7] = v10;
    swift_unknownObjectRetain();
  }

  v11 = v1[8];
  if (v11 != 1)
  {
    v12 = v1[9];
    sub_1BC635484(v11);
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = 4;
    v1[8] = sub_1BC71CC94;
    v1[9] = v13;
    swift_unknownObjectRetain();
  }

  v14 = v1[10];
  if (v14 != 1)
  {
    v15 = v1[11];
    sub_1BC635484(v14);
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = 5;
    v1[10] = sub_1BC71CC94;
    v1[11] = v16;
    swift_unknownObjectRetain();
  }

  v17 = v1[12];
  if (v17 != 1)
  {
    v18 = v1[13];
    sub_1BC635484(v17);
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = 6;
    v1[12] = sub_1BC71CC94;
    v1[13] = v19;
    swift_unknownObjectRetain();
  }

  v20 = v1[14];
  if (v20 != 1)
  {
    v21 = v1[15];
    sub_1BC635484(v20);
    v22 = swift_allocObject();
    *(v22 + 16) = a1;
    *(v22 + 24) = 7;
    v1[14] = sub_1BC71CC94;
    v1[15] = v22;
    swift_unknownObjectRetain();
  }

  v23 = v1[18];
  if (v23 != 1)
  {
    v24 = v1[19];
    sub_1BC635484(v23);
    v25 = swift_allocObject();
    *(v25 + 16) = a1;
    *(v25 + 24) = 9;
    v1[18] = sub_1BC71CC94;
    v1[19] = v25;
    swift_unknownObjectRetain();
  }

  v26 = v1[20];
  if (v26 != 1)
  {
    v27 = v1[21];
    sub_1BC635484(v26);
    v28 = swift_allocObject();
    *(v28 + 16) = a1;
    *(v28 + 24) = 10;
    v1[20] = sub_1BC71CC94;
    v1[21] = v28;
    swift_unknownObjectRetain();
  }

  v29 = v1[4];
  if (v29 != 1)
  {
    v30 = v1[5];
    sub_1BC635484(v29);
    v31 = swift_allocObject();
    *(v31 + 16) = a1;
    *(v31 + 24) = 2;
    v1[4] = sub_1BC71CC94;
    v1[5] = v31;
    swift_unknownObjectRetain();
  }

  v32 = v1[22];
  if (v32 != 1)
  {
    v33 = v1[23];
    sub_1BC635484(v32);
    v34 = swift_allocObject();
    *(v34 + 16) = a1;
    *(v34 + 24) = 11;
    v1[22] = sub_1BC71CC94;
    v1[23] = v34;
    swift_unknownObjectRetain();
  }

  result = v1[24];
  if (result != 1)
  {
    v36 = v1[25];
    sub_1BC635484(result);
    v37 = swift_allocObject();
    *(v37 + 16) = a1;
    *(v37 + 24) = 12;
    v1[24] = sub_1BC71CC94;
    v1[25] = v37;

    return swift_unknownObjectRetain();
  }

  return result;
}

id Callbacks.LegacyDelegate.__allocating_init(callbacks:)(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1BC759A80();
  v4 = &v3[OBJC_IVAR____TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate_callbacks];
  v5 = a1[11];
  *(v4 + 10) = a1[10];
  *(v4 + 11) = v5;
  *(v4 + 12) = a1[12];
  v6 = a1[7];
  *(v4 + 6) = a1[6];
  *(v4 + 7) = v6;
  v7 = a1[9];
  *(v4 + 8) = a1[8];
  *(v4 + 9) = v7;
  v8 = a1[3];
  *(v4 + 2) = a1[2];
  *(v4 + 3) = v8;
  v9 = a1[5];
  *(v4 + 4) = a1[4];
  *(v4 + 5) = v9;
  v10 = a1[1];
  *v4 = *a1;
  *(v4 + 1) = v10;
  v12.receiver = v3;
  v12.super_class = v1;
  return objc_msgSendSuper2(&v12, sel_init);
}

id Callbacks.LegacyDelegate.init(callbacks:)(_OWORD *a1)
{
  sub_1BC759A80();
  v3 = &v1[OBJC_IVAR____TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate_callbacks];
  v4 = a1[11];
  *(v3 + 10) = a1[10];
  *(v3 + 11) = v4;
  *(v3 + 12) = a1[12];
  v5 = a1[7];
  *(v3 + 6) = a1[6];
  *(v3 + 7) = v5;
  v6 = a1[9];
  *(v3 + 8) = a1[8];
  *(v3 + 9) = v6;
  v7 = a1[3];
  *(v3 + 2) = a1[2];
  *(v3 + 3) = v7;
  v8 = a1[5];
  *(v3 + 4) = a1[4];
  *(v3 + 5) = v8;
  v9 = a1[1];
  *v3 = *a1;
  *(v3 + 1) = v9;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for Callbacks.LegacyDelegate();
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_1BC717D28()
{
  v1 = *(v0 + OBJC_IVAR____TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate_callbacks + 144);
  v2 = *(v0 + OBJC_IVAR____TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate_callbacks + 176);
  v36 = *(v0 + OBJC_IVAR____TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate_callbacks + 160);
  v37 = v2;
  v3 = *(v0 + OBJC_IVAR____TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate_callbacks + 176);
  v38 = *(v0 + OBJC_IVAR____TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate_callbacks + 192);
  v4 = *(v0 + OBJC_IVAR____TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate_callbacks + 80);
  v5 = *(v0 + OBJC_IVAR____TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate_callbacks + 112);
  v32 = *(v0 + OBJC_IVAR____TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate_callbacks + 96);
  v33 = v5;
  v6 = *(v0 + OBJC_IVAR____TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate_callbacks + 112);
  v7 = *(v0 + OBJC_IVAR____TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate_callbacks + 144);
  v34 = *(v0 + OBJC_IVAR____TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate_callbacks + 128);
  v35 = v7;
  v8 = *(v0 + OBJC_IVAR____TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate_callbacks + 16);
  v9 = *(v0 + OBJC_IVAR____TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate_callbacks + 48);
  v28 = *(v0 + OBJC_IVAR____TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate_callbacks + 32);
  v29 = v9;
  v10 = *(v0 + OBJC_IVAR____TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate_callbacks + 48);
  v11 = *(v0 + OBJC_IVAR____TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate_callbacks + 80);
  v30 = *(v0 + OBJC_IVAR____TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate_callbacks + 64);
  v31 = v11;
  v12 = *(v0 + OBJC_IVAR____TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate_callbacks + 16);
  v27[0] = *(v0 + OBJC_IVAR____TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate_callbacks);
  v27[1] = v12;
  v24 = v36;
  v25 = v3;
  v26 = *(v0 + OBJC_IVAR____TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate_callbacks + 192);
  v20 = v32;
  v21 = v6;
  v22 = v34;
  v23 = v1;
  v16 = v28;
  v17 = v10;
  v18 = v30;
  v19 = v4;
  v14 = v27[0];
  v15 = v8;
  sub_1BC6362BC(v27, v39);
  swift_getAtKeyPath();
  v39[10] = v24;
  v39[11] = v25;
  v39[12] = v26;
  v39[6] = v20;
  v39[7] = v21;
  v39[8] = v22;
  v39[9] = v23;
  v39[2] = v16;
  v39[3] = v17;
  v39[4] = v18;
  v39[5] = v19;
  v39[0] = v14;
  v39[1] = v15;
  return sub_1BC69811C(v39);
}

id sub_1BC717E34(uint64_t a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate_callbacks + 160];
  v5 = *&v1[OBJC_IVAR____TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate_callbacks + 176];
  v6 = *&v1[OBJC_IVAR____TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate_callbacks + 128];
  v31 = *&v1[OBJC_IVAR____TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate_callbacks + 144];
  v32 = v4;
  v7 = *&v1[OBJC_IVAR____TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate_callbacks + 192];
  v33 = v5;
  v34 = v7;
  v8 = *&v1[OBJC_IVAR____TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate_callbacks + 96];
  v9 = *&v1[OBJC_IVAR____TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate_callbacks + 112];
  v10 = *&v1[OBJC_IVAR____TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate_callbacks + 64];
  v27 = *&v1[OBJC_IVAR____TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate_callbacks + 80];
  v28 = v8;
  v29 = v9;
  v30 = v6;
  v11 = *&v1[OBJC_IVAR____TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate_callbacks + 48];
  v24 = *&v1[OBJC_IVAR____TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate_callbacks + 32];
  v25 = v11;
  v26 = v10;
  v12 = *&v1[OBJC_IVAR____TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate_callbacks + 16];
  v22 = *&v1[OBJC_IVAR____TtCV26SensitiveContentAnalysisUI9Callbacks14LegacyDelegate_callbacks];
  v23 = v12;
  sub_1BC71239C(v19);
  v13 = v20;
  v14 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v15 = (*(v14 + 16))(v13, v14);
  result = __swift_destroy_boxed_opaque_existential_1(v19);
  if (a1)
  {
    v17 = sub_1BC717F4C(a1, v15);

    if (v17)
    {
      return 0;
    }

    else
    {
      v18.receiver = v2;
      v18.super_class = type metadata accessor for Callbacks.LegacyDelegate();
      return objc_msgSendSuper2(&v18, sel_respondsToSelector_, a1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BC717F4C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = *(a2 + 40);
  sub_1BC75C700();
  sub_1BC759A30();
  v4 = sub_1BC75C720();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    do
    {
      v8 = *(*(a2 + 48) + 8 * v6);
      v9 = sub_1BC759A20();
      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

id Callbacks.LegacyDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Callbacks.LegacyDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Callbacks.LegacyDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BC7182DC(uint64_t a1, uint64_t a2)
{
  sub_1BC75BDD0();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1BC71C93C();
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
    sub_1BC75C290();
    MEMORY[0x1BFB267E0](0xD00000000000003FLL, 0x80000001BC774000);
    v8 = sub_1BC75C7C0();
    MEMORY[0x1BFB267E0](v8);

    MEMORY[0x1BFB267E0](46, 0xE100000000000000);
    result = sub_1BC75C3D0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BC718464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BC75BDD0();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    sub_1BC71C8F8(v13);
    if (v4)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = LOBYTE(v13[0]);
    v10 = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1BC75C290();
  MEMORY[0x1BFB267E0](0xD00000000000003FLL, 0x80000001BC774000);
  v12 = sub_1BC75C7C0();
  MEMORY[0x1BFB267E0](v12);

  MEMORY[0x1BFB267E0](46, 0xE100000000000000);
  result = sub_1BC75C3D0();
  __break(1u);
  return result;
}

uint64_t Callbacks.LegacyDelegate.didBypassIntervention(withUpdatedAnalyses:container:)(uint64_t a1, uint64_t a2)
{
  sub_1BC75BDE0();
  v5[2] = a2;
  v6 = v2;
  return sub_1BC7182DC(sub_1BC71CC98, v5);
}

uint64_t sub_1BC7186B0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      [v3 dismissViewControllerAnimated:1 completion:0];
    }
  }

  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *a2) + 0x68))(&v6);

  v5 = v6;
  if (v6)
  {
    if (v6 == 1)
    {
      return result;
    }

    v6(result);
  }

  return sub_1BC635468(v5);
}

uint64_t sub_1BC718838(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      [v3 dismissViewControllerAnimated:1 completion:0];
    }
  }

  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *a2) + 0x68))(&v6);

  v5 = v6;
  if (v6 >= 2)
  {
    v6(result);
    return sub_1BC635468(v5);
  }

  return result;
}

uint64_t sub_1BC718944(uint64_t a1, uint64_t a2)
{
  sub_1BC75BDE0();
  v6[2] = a1;
  v7 = v2;
  return sub_1BC7182DC(a2, v6);
}

uint64_t sub_1BC7189B4(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      [v3 dismissViewControllerAnimated:1 completion:0];
    }
  }

  swift_getKeyPath();
  v4 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x68);
  v4(&v7);

  v6 = v7;
  if (v7)
  {
    if (v7 != 1 || (swift_getKeyPath(), v4(&v7), result = , v6 = v7, v7 >= 2))
    {
      v6(result);
      return sub_1BC635468(v6);
    }
  }

  return result;
}

void sub_1BC718AE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BC75BDE0();
  v8[2] = a3;
  v8[3] = a1;
  swift_unknownObjectRetain();
  v7 = a1;
  sub_1BC7182DC(a4, v8);
  swift_unknownObjectRelease();
}

uint64_t sub_1BC718BD4(uint64_t a1, uint64_t a2)
{
  sub_1BC75BDE0();
  v6 = v2;
  return sub_1BC718464(a2, &v5, "SensitiveContentAnalysisUI/SensitiveContentCallbacks.swift", 58);
}

uint64_t sub_1BC718D60@<X0>(void *a1@<X0>, BOOL *a2@<X8>)
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x68))(&v7);

  v5 = v7;
  if (v7 != 1)
  {
    if (v7)
    {
      v7(result);
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    result = sub_1BC635468(v6);
  }

  *a2 = v5 == 1;
  return result;
}

uint64_t sub_1BC718ED0@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X2>, BOOL *a3@<X8>)
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x68))(v9);

  v7 = v9[0];
  if (v9[0] >= 2uLL)
  {
    v8 = v9[1];
    (v9[0])(result);
    result = a2(v7, v8);
  }

  *a3 = v7 == 1;
  return result;
}

void sub_1BC718FA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BC75BDE0();
  v7[2] = a1;
  v6 = a1;
  sub_1BC718464(a4, v7, "SensitiveContentAnalysisUI/SensitiveContentCallbacks.swift", 58);
}

uint64_t sub_1BC71902C(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1BC75C700();
  sub_1BC759A30();
  v7 = sub_1BC75C720();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      if (sub_1BC759A20())
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(*(v5 + 48) + 8 * v9);
  }

  else
  {
LABEL_5:
    v12 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_1BC719388(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1BC719138(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDE8B0, &qword_1BC76C7A0);
  result = sub_1BC75C240();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1BC75C700();
      sub_1BC759A30();
      result = sub_1BC75C720();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1BC719388(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BC719138(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1BC7194DC();
      goto LABEL_12;
    }

    sub_1BC71961C(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1BC75C700();
  sub_1BC759A30();
  result = sub_1BC75C720();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      result = sub_1BC759A20();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v5;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BC75C630();
  __break(1u);
  return result;
}

void *sub_1BC7194DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDE8B0, &qword_1BC76C7A0);
  v2 = *v0;
  v3 = sub_1BC75C230();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1BC71961C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDE8B0, &qword_1BC76C7A0);
  result = sub_1BC75C240();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1BC75C700();
      sub_1BC759A30();
      result = sub_1BC75C720();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1BC71983C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1BC71CA24();
  result = MEMORY[0x1BFB26A40](v2, MEMORY[0x1E69E81A8], v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1BC71902C(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1BC7198B0()
{
  result = qword_1EBCDE690;
  if (!qword_1EBCDE690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE690);
  }

  return result;
}

uint64_t sub_1BC719904()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  return sub_1BC7113BC(&v3);
}

unint64_t sub_1BC719940()
{
  result = qword_1EBCEF020;
  if (!qword_1EBCEF020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEF020);
  }

  return result;
}

unint64_t sub_1BC719994()
{
  result = qword_1EDDCE618;
  if (!qword_1EDDCE618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE618);
  }

  return result;
}

unint64_t sub_1BC7199E8()
{
  result = qword_1EDDCE1C0;
  if (!qword_1EDDCE1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE1C0);
  }

  return result;
}

unint64_t sub_1BC719A3C()
{
  result = qword_1EDDCE3F8[0];
  if (!qword_1EDDCE3F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDCE3F8);
  }

  return result;
}

unint64_t sub_1BC719A90()
{
  result = qword_1EDDCE4A0[0];
  if (!qword_1EDDCE4A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDCE4A0);
  }

  return result;
}

unint64_t sub_1BC719AE4()
{
  result = qword_1EDDCE208;
  if (!qword_1EDDCE208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE208);
  }

  return result;
}

unint64_t sub_1BC719B38()
{
  result = qword_1EDDCE3A0;
  if (!qword_1EDDCE3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE3A0);
  }

  return result;
}

unint64_t sub_1BC719B8C()
{
  result = qword_1EDDCE378;
  if (!qword_1EDDCE378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE378);
  }

  return result;
}

unint64_t sub_1BC719BE0()
{
  result = qword_1EDDCE640[0];
  if (!qword_1EDDCE640[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDCE640);
  }

  return result;
}

unint64_t sub_1BC719C34()
{
  result = qword_1EDDCE198;
  if (!qword_1EDDCE198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE198);
  }

  return result;
}

unint64_t sub_1BC719C88()
{
  result = qword_1EDDCE5F0;
  if (!qword_1EDDCE5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE5F0);
  }

  return result;
}

unint64_t sub_1BC719CDC()
{
  result = qword_1EDDCE238[0];
  if (!qword_1EDDCE238[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDCE238);
  }

  return result;
}

unint64_t sub_1BC719D30()
{
  result = qword_1EDDCE3D0;
  if (!qword_1EDDCE3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE3D0);
  }

  return result;
}

unint64_t sub_1BC719D84()
{
  result = qword_1EDDCE1E8;
  if (!qword_1EDDCE1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE1E8);
  }

  return result;
}

unint64_t sub_1BC719DD8()
{
  result = qword_1EDDCE608;
  if (!qword_1EDDCE608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE608);
  }

  return result;
}

unint64_t sub_1BC719E2C()
{
  result = qword_1EDDCE1B0;
  if (!qword_1EDDCE1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE1B0);
  }

  return result;
}

unint64_t sub_1BC719E80()
{
  result = qword_1EDDCE3E8;
  if (!qword_1EDDCE3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE3E8);
  }

  return result;
}

unint64_t sub_1BC719ED4()
{
  result = qword_1EDDCE490;
  if (!qword_1EDDCE490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE490);
  }

  return result;
}

unint64_t sub_1BC719F28()
{
  result = qword_1EDDCE1F8;
  if (!qword_1EDDCE1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE1F8);
  }

  return result;
}

unint64_t sub_1BC719F7C()
{
  result = qword_1EDDCE390;
  if (!qword_1EDDCE390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE390);
  }

  return result;
}

unint64_t sub_1BC719FD0()
{
  result = qword_1EDDCE368;
  if (!qword_1EDDCE368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE368);
  }

  return result;
}

unint64_t sub_1BC71A024()
{
  result = qword_1EDDCE630;
  if (!qword_1EDDCE630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE630);
  }

  return result;
}

unint64_t sub_1BC71A078()
{
  result = qword_1EDDCE188;
  if (!qword_1EDDCE188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE188);
  }

  return result;
}

unint64_t sub_1BC71A0CC()
{
  result = qword_1EDDCE5E0;
  if (!qword_1EDDCE5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE5E0);
  }

  return result;
}

unint64_t sub_1BC71A120()
{
  result = qword_1EDDCE228;
  if (!qword_1EDDCE228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE228);
  }

  return result;
}

unint64_t sub_1BC71A174()
{
  result = qword_1EDDCE3C0;
  if (!qword_1EDDCE3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE3C0);
  }

  return result;
}

unint64_t sub_1BC71A1C8()
{
  result = qword_1EDDCE1D8;
  if (!qword_1EDDCE1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE1D8);
  }

  return result;
}

uint64_t sub_1BC71A21C()
{
  v1 = v0;
  v2 = *(*(type metadata accessor for InterventionConfig(0) - 8) + 80);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      if (sub_1BC71518C())
      {
        swift_getObjectType();
        sub_1BC6E8210();
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_1BC6A8FC0(v8, v6);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease_n();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BC71A334()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      if (sub_1BC71518C())
      {
        swift_getObjectType();
        sub_1BC6E8210();
        swift_unknownObjectRelease();
      }

      [v4 didRejectForInterventionViewController_];
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BC71A3F8()
{
  v1 = *(sub_1BC759EE0() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1BC7151E0(v2, v3);
}

uint64_t objectdestroy_18Tm_0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BC71A4B4(SEL *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      if ([v6 respondsToSelector_])
      {
        [v6 *a1];
      }

      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1BC71A568()
{
  result = qword_1EBCEF028;
  if (!qword_1EBCEF028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEF028);
  }

  return result;
}

unint64_t sub_1BC71A5BC()
{
  result = qword_1EBCEF030;
  if (!qword_1EBCEF030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEF030);
  }

  return result;
}

unint64_t sub_1BC71A610()
{
  result = qword_1EBCEF038;
  if (!qword_1EBCEF038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEF038);
  }

  return result;
}

unint64_t sub_1BC71A664()
{
  result = qword_1EBCEF040;
  if (!qword_1EBCEF040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEF040);
  }

  return result;
}

unint64_t sub_1BC71A6B8()
{
  result = qword_1EBCEF048;
  if (!qword_1EBCEF048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEF048);
  }

  return result;
}

unint64_t sub_1BC71A70C()
{
  result = qword_1EBCEF050;
  if (!qword_1EBCEF050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEF050);
  }

  return result;
}

unint64_t sub_1BC71A760()
{
  result = qword_1EBCEF058;
  if (!qword_1EBCEF058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEF058);
  }

  return result;
}

unint64_t sub_1BC71A7B4()
{
  result = qword_1EBCEF060;
  if (!qword_1EBCEF060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEF060);
  }

  return result;
}

unint64_t sub_1BC71A808()
{
  result = qword_1EBCEF068;
  if (!qword_1EBCEF068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEF068);
  }

  return result;
}

unint64_t sub_1BC71A85C()
{
  result = qword_1EBCEF070;
  if (!qword_1EBCEF070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEF070);
  }

  return result;
}

unint64_t sub_1BC71A8B0()
{
  result = qword_1EBCEF078;
  if (!qword_1EBCEF078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEF078);
  }

  return result;
}

unint64_t sub_1BC71A904()
{
  result = qword_1EBCEF080;
  if (!qword_1EBCEF080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEF080);
  }

  return result;
}

unint64_t sub_1BC71A958()
{
  result = qword_1EBCEF088;
  if (!qword_1EBCEF088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEF088);
  }

  return result;
}

unint64_t sub_1BC71A9AC()
{
  result = qword_1EBCEF090;
  if (!qword_1EBCEF090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEF090);
  }

  return result;
}

uint64_t type metadata accessor for Callbacks.LegacyDelegate()
{
  result = qword_1EBCEF9A0;
  if (!qword_1EBCEF9A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BC71AA4C()
{
  result = qword_1EBCDE818;
  if (!qword_1EBCDE818)
  {
    type metadata accessor for Callbacks.LegacyDelegate();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE818);
  }

  return result;
}

unint64_t sub_1BC71AD4C(uint64_t a1)
{
  result = sub_1BC71AD74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BC71AD74()
{
  result = qword_1EDDCE3E0;
  if (!qword_1EDDCE3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE3E0);
  }

  return result;
}

unint64_t sub_1BC71ADF4(uint64_t a1)
{
  result = sub_1BC71AE1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BC71AE1C()
{
  result = qword_1EDDCE5F8;
  if (!qword_1EDDCE5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE5F8);
  }

  return result;
}

unint64_t sub_1BC71AE9C(uint64_t a1)
{
  result = sub_1BC71AEC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BC71AEC4()
{
  result = qword_1EDDCE1A0;
  if (!qword_1EDDCE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE1A0);
  }

  return result;
}

unint64_t sub_1BC71AF44(uint64_t a1)
{
  result = sub_1BC71AF6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BC71AF6C()
{
  result = qword_1EDDCE488;
  if (!qword_1EDDCE488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE488);
  }

  return result;
}

unint64_t sub_1BC71AFEC(uint64_t a1)
{
  result = sub_1BC71B014();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BC71B014()
{
  result = qword_1EDDCE1F0;
  if (!qword_1EDDCE1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE1F0);
  }

  return result;
}

unint64_t sub_1BC71B094(uint64_t a1)
{
  result = sub_1BC71B0BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BC71B0BC()
{
  result = qword_1EDDCE388;
  if (!qword_1EDDCE388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE388);
  }

  return result;
}

unint64_t sub_1BC71B13C(uint64_t a1)
{
  result = sub_1BC71B164();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BC71B164()
{
  result = qword_1EDDCE360;
  if (!qword_1EDDCE360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE360);
  }

  return result;
}

unint64_t sub_1BC71B1E4(uint64_t a1)
{
  result = sub_1BC71B20C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BC71B20C()
{
  result = qword_1EDDCE628;
  if (!qword_1EDDCE628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE628);
  }

  return result;
}

unint64_t sub_1BC71B28C(uint64_t a1)
{
  result = sub_1BC71B2B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BC71B2B4()
{
  result = qword_1EDDCE5D0;
  if (!qword_1EDDCE5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE5D0);
  }

  return result;
}

unint64_t sub_1BC71B334(uint64_t a1)
{
  result = sub_1BC71B35C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BC71B35C()
{
  result = qword_1EDDCE218;
  if (!qword_1EDDCE218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE218);
  }

  return result;
}

unint64_t sub_1BC71B408(uint64_t a1)
{
  result = sub_1BC71B430();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BC71B430()
{
  result = qword_1EDDCE3B0;
  if (!qword_1EDDCE3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE3B0);
  }

  return result;
}

uint64_t sub_1BC71B4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1BC71B51C()
{
  result = qword_1EBCDE828;
  if (!qword_1EBCDE828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE828);
  }

  return result;
}

uint64_t sub_1BC71B580(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 208))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1BC71B5E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 208) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 208) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1BC71B684()
{
  result = sub_1BC759A90();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BC71B864(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1BC71B8F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BC71B9BC()
{
  result = qword_1EBCEFAB0[0];
  if (!qword_1EBCEFAB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEFAB0);
  }

  return result;
}

unint64_t sub_1BC71BA14()
{
  result = qword_1EBCF09C0[0];
  if (!qword_1EBCF09C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCF09C0);
  }

  return result;
}

unint64_t sub_1BC71BA6C()
{
  result = qword_1EBCF0AD0;
  if (!qword_1EBCF0AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF0AD0);
  }

  return result;
}

unint64_t sub_1BC71BAC4()
{
  result = qword_1EBCF0AD8[0];
  if (!qword_1EBCF0AD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCF0AD8);
  }

  return result;
}

unint64_t sub_1BC71BB1C()
{
  result = qword_1EBCF0B60;
  if (!qword_1EBCF0B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF0B60);
  }

  return result;
}

unint64_t sub_1BC71BB74()
{
  result = qword_1EBCF0B68[0];
  if (!qword_1EBCF0B68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCF0B68);
  }

  return result;
}

unint64_t sub_1BC71BBCC()
{
  result = qword_1EBCF0BF0;
  if (!qword_1EBCF0BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF0BF0);
  }

  return result;
}

unint64_t sub_1BC71BC24()
{
  result = qword_1EBCF0BF8[0];
  if (!qword_1EBCF0BF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCF0BF8);
  }

  return result;
}

unint64_t sub_1BC71BC7C()
{
  result = qword_1EBCF0C80;
  if (!qword_1EBCF0C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF0C80);
  }

  return result;
}

unint64_t sub_1BC71BCD4()
{
  result = qword_1EBCF0C88[0];
  if (!qword_1EBCF0C88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCF0C88);
  }

  return result;
}

unint64_t sub_1BC71BD2C()
{
  result = qword_1EBCF0D10;
  if (!qword_1EBCF0D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF0D10);
  }

  return result;
}

unint64_t sub_1BC71BD84()
{
  result = qword_1EBCF0D18[0];
  if (!qword_1EBCF0D18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCF0D18);
  }

  return result;
}

unint64_t sub_1BC71BDDC()
{
  result = qword_1EBCF0DA0;
  if (!qword_1EBCF0DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF0DA0);
  }

  return result;
}

unint64_t sub_1BC71BE34()
{
  result = qword_1EBCF0DA8[0];
  if (!qword_1EBCF0DA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCF0DA8);
  }

  return result;
}

unint64_t sub_1BC71BE8C()
{
  result = qword_1EBCF0E30;
  if (!qword_1EBCF0E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF0E30);
  }

  return result;
}

unint64_t sub_1BC71BEE4()
{
  result = qword_1EBCF0E38[0];
  if (!qword_1EBCF0E38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCF0E38);
  }

  return result;
}

unint64_t sub_1BC71BF3C()
{
  result = qword_1EBCF0EC0;
  if (!qword_1EBCF0EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF0EC0);
  }

  return result;
}

unint64_t sub_1BC71BF94()
{
  result = qword_1EBCF0EC8[0];
  if (!qword_1EBCF0EC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCF0EC8);
  }

  return result;
}

unint64_t sub_1BC71BFEC()
{
  result = qword_1EBCF0F50;
  if (!qword_1EBCF0F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF0F50);
  }

  return result;
}

unint64_t sub_1BC71C044()
{
  result = qword_1EBCF0F58[0];
  if (!qword_1EBCF0F58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCF0F58);
  }

  return result;
}

unint64_t sub_1BC71C09C()
{
  result = qword_1EBCF0FE0;
  if (!qword_1EBCF0FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF0FE0);
  }

  return result;
}

unint64_t sub_1BC71C0F4()
{
  result = qword_1EBCF0FE8[0];
  if (!qword_1EBCF0FE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCF0FE8);
  }

  return result;
}

unint64_t sub_1BC71C14C()
{
  result = qword_1EBCF1070;
  if (!qword_1EBCF1070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF1070);
  }

  return result;
}

unint64_t sub_1BC71C1A4()
{
  result = qword_1EBCF1078;
  if (!qword_1EBCF1078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF1078);
  }

  return result;
}

unint64_t sub_1BC71C1FC()
{
  result = qword_1EBCF1100;
  if (!qword_1EBCF1100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF1100);
  }

  return result;
}

unint64_t sub_1BC71C254()
{
  result = qword_1EBCF1108[0];
  if (!qword_1EBCF1108[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCF1108);
  }

  return result;
}

unint64_t sub_1BC71C2AC()
{
  result = qword_1EBCF1190;
  if (!qword_1EBCF1190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF1190);
  }

  return result;
}

unint64_t sub_1BC71C304()
{
  result = qword_1EBCF1198[0];
  if (!qword_1EBCF1198[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCF1198);
  }

  return result;
}

unint64_t sub_1BC71C35C()
{
  result = qword_1EBCF1220;
  if (!qword_1EBCF1220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF1220);
  }

  return result;
}

unint64_t sub_1BC71C3B4()
{
  result = qword_1EBCF1228[0];
  if (!qword_1EBCF1228[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCF1228);
  }

  return result;
}

unint64_t sub_1BC71C40C()
{
  result = qword_1EBCF12B0;
  if (!qword_1EBCF12B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF12B0);
  }

  return result;
}

unint64_t sub_1BC71C464()
{
  result = qword_1EBCF12B8[0];
  if (!qword_1EBCF12B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCF12B8);
  }

  return result;
}

uint64_t sub_1BC71C4B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43776F68536E6FLL && a2 == 0xED0000746E65746ELL;
  if (v4 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001BC773F20 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646C656968536E6FLL && a2 == 0xEA00000000007055 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6143646E456E6FLL && a2 == 0xE90000000000006CLL || (sub_1BC75C5E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BC773F40 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001BC773F60 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001BC773F80 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F43656469486E6FLL && a2 == 0xED0000746E65746ELL || (sub_1BC75C5E0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001BC773FA0 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6574656C65446E6FLL && a2 == 0xEF746E65746E6F43 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BC773FC0 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x736275736E556E6FLL && a2 == 0xED00006562697263 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001BC773FE0 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_1BC75C5E0();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

void *sub_1BC71C8F8@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_1BC71C93C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1BC71C97C()
{
  result = qword_1EDDCE180;
  if (!qword_1EDDCE180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE180);
  }

  return result;
}

unint64_t sub_1BC71C9D0()
{
  result = qword_1EDDCE1C8;
  if (!qword_1EDDCE1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE1C8);
  }

  return result;
}

unint64_t sub_1BC71CA24()
{
  result = qword_1EBCDE8A8;
  if (!qword_1EBCDE8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE8A8);
  }

  return result;
}

uint64_t sub_1BC71CA78(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 == 1)
  {
    v3 = *(*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL);
    result = sub_1BC75C110();
    if (v5 > 0x3F)
    {
      return result;
    }

    result = swift_checkMetadataState();
    if (v6 > 0x3F)
    {
      return result;
    }

LABEL_9:
    v13[7] = 0;
    v14 = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  MEMORY[0x1EEE9AC00](a1);
  if (v2)
  {
    v8 = (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v9 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v10 = v2;
    do
    {
      v11 = *v8++;
      *v9++ = sub_1BC75C110();
      --v10;
    }

    while (v10);
  }

  result = swift_getTupleTypeMetadata();
  if (v12 <= 0x3F)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1BC71CBE8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1BC71CC00()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BC65281C;

  return sub_1BC71384C(v2, v3, v4, v0 + 32);
}

uint64_t sub_1BC71CDE0()
{
  v0 = sub_1BC75A4E0();
  __swift_allocate_value_buffer(v0, qword_1EBCF1398);
  __swift_project_value_buffer(v0, qword_1EBCF1398);
  return sub_1BC75A4D0();
}

uint64_t HPKEEnvelope.encapsulatedKey.getter()
{
  v1 = *v0;
  sub_1BC6AE090(*v0, *(v0 + 8));
  return v1;
}

uint64_t HPKEEnvelope.publicKey.getter()
{
  v1 = *(v0 + 16);
  sub_1BC6AE090(v1, *(v0 + 24));
  return v1;
}

uint64_t HPKEEnvelope.cipherText.getter()
{
  v1 = *(v0 + 32);
  sub_1BC6AE090(v1, *(v0 + 40));
  return v1;
}

uint64_t HPKEEnvelope.encryptionVersion.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

unint64_t sub_1BC71CF30()
{
  v1 = 0x6554726568706963;
  v2 = 0x654B63696C627570;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x6C75737061636E65;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1BC71CFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7212B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC71CFEC(uint64_t a1)
{
  v2 = sub_1BC721434();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC71D028(uint64_t a1)
{
  v2 = sub_1BC721434();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HPKEEnvelope.init(encapsulatedKey:publicKey:cipherText:encryptionVersion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  v14 = sub_1BC75B9C0();
  v16 = v15;
  v17 = sub_1BC75B9E0();
  result = (*(*(v17 - 8) + 8))(a3, v17);
  a8[2] = v14;
  a8[3] = v16;
  a8[4] = a4;
  a8[5] = a5;
  a8[6] = a6;
  a8[7] = a7;
  return result;
}

uint64_t HPKEEnvelope.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE8D0, &qword_1BC76C800);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v18 - v6;
  v8 = *v1;
  v21 = v1[1];
  v22 = v8;
  v9 = v1[2];
  v19 = v1[3];
  v20 = v9;
  v10 = v1[4];
  v11 = v1[5];
  v12 = v1[6];
  v18[1] = v1[7];
  v18[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC6AE090(v10, v11);
  sub_1BC721434();
  sub_1BC75C740();
  v24 = v10;
  v25 = v11;
  v26 = 0;
  sub_1BC6BE000();
  v14 = v23;
  sub_1BC75C560();
  if (v14)
  {
    sub_1BC6AE140(v24, v25);
  }

  else
  {
    v15 = v19;
    v16 = v20;
    sub_1BC6AE140(v24, v25);
    v24 = v22;
    v25 = v21;
    v26 = 1;
    sub_1BC6AE090(v22, v21);
    sub_1BC75C560();
    sub_1BC6AE140(v24, v25);
    v24 = v16;
    v25 = v15;
    v26 = 2;
    sub_1BC6AE090(v16, v15);
    sub_1BC75C560();
    sub_1BC6AE140(v24, v25);
    LOBYTE(v24) = 3;
    sub_1BC75C530();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t HPKEEnvelope.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE8E0, &qword_1BC76C808);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC721434();
  sub_1BC75C730();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = a2;
  LOBYTE(v29) = 0;
  sub_1BC6BFB98();
  sub_1BC75C4C0();
  v12 = v33;
  v28 = v34;
  LOBYTE(v29) = 1;
  sub_1BC75C4C0();
  v26 = v34;
  v27 = v33;
  LOBYTE(v29) = 2;
  sub_1BC75C4C0();
  v24 = v34;
  v25 = v33;
  v41 = 3;
  v13 = sub_1BC75C4A0();
  v14 = v9;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  v17 = v26;
  *&v29 = v27;
  *(&v29 + 1) = v26;
  v18 = v24;
  *&v30 = v25;
  *(&v30 + 1) = v24;
  v19 = v12;
  *&v31 = v12;
  v20 = v28;
  *(&v31 + 1) = v28;
  *&v32 = v13;
  *(&v32 + 1) = v16;
  v21 = v30;
  *v11 = v29;
  v11[1] = v21;
  v22 = v32;
  v11[2] = v31;
  v11[3] = v22;
  sub_1BC721488(&v29, &v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v33 = v27;
  v34 = v17;
  v35 = v25;
  v36 = v18;
  v37 = v19;
  v38 = v20;
  v39 = v13;
  v40 = v16;
  return sub_1BC6D7930(&v33);
}

uint64_t EncryptedCSV.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BC759800();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t EncryptedCSV.sha256.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EncryptedCSV() + 20);
  v4 = sub_1BC75B910();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EncryptedCSV.init(from:with:under:prefix:progress:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = sub_1BC75B910();
  v26 = *(v12 - 8);
  v27 = v12;
  v13 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_1BC75C290();

  v28 = a3;
  v29 = a4;
  MEMORY[0x1BFB267E0](0x74707972636E655FLL, 0xEE007673632E6465);
  sub_1BC7597A0();

  v16 = sub_1BC6D2ED8();
  v17 = v30;
  v18 = HPKE.Sender.writeChunkedEncryptedCSV(from:to:progress:chunkSizeInBytes:)(v15, a1, a6, a5, v16);
  if (v17)
  {

    v19 = sub_1BC759800();
    v20 = *(*(v19 - 8) + 8);
    v20(a2, v19);
    v20(a1, v19);
    return (v20)(a6, v19);
  }

  else
  {
    v22 = v18;

    v23 = sub_1BC759800();
    v24 = *(*(v23 - 8) + 8);
    v24(a2, v23);
    v24(a1, v23);
    v25 = type metadata accessor for EncryptedCSV();
    result = (*(v26 + 32))(a6 + *(v25 + 20), v15, v27);
    *(a6 + *(v25 + 24)) = v22;
  }

  return result;
}

uint64_t Report.Evidence.prepareForCK(with:at:progress:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v117 = a1;
  v106 = a3;
  v124 = *MEMORY[0x1E69E9840];
  v99 = sub_1BC75BA10();
  v98 = *(v99 - 8);
  v4 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v97 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1BC75B910();
  v102 = *(v103 - 8);
  v6 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1BC759800();
  v104 = *(v105 - 8);
  v8 = *(v104 + 64);
  v9 = MEMORY[0x1EEE9AC00](v105);
  v100 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v107 = &v94 - v11;
  v12 = type metadata accessor for Report.Message();
  v13 = *(v12 - 8);
  v109 = v12;
  v110 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BC75B930();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = sub_1BC75B9E0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1BC75B9A0();
  v111 = *(v24 - 8);
  v112 = v24;
  v25 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for Report.Evidence(0);
  v28 = *(*(v114 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v114);
  v116 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v108 = &v94 - v31;
  v32 = [objc_opt_self() defaultManager];
  v113 = a2;
  v33 = sub_1BC759770();
  v121[0] = 0;
  v34 = [v32 createDirectoryAtURL:v33 withIntermediateDirectories:1 attributes:0 error:v121];

  v35 = v121[0];
  if (v34)
  {
    (*(v20 + 16))(v23, v117, v19);
    v36 = v35;
    static HPKE.Ciphersuite.reportToApple.getter();
    v37 = v118;
    result = sub_1BC75B970();
    if (!v37)
    {
      v39 = v27;
      v96 = 0;
      v40 = v116;
      sub_1BC721A58(v115, v116, type metadata accessor for Report.Evidence);
      v41 = MEMORY[0x1E69E7CC0];
      v121[0] = MEMORY[0x1E69E7CC0];
      v115 = v39;
      v42 = sub_1BC75B980();
      v44 = v43;
      v45 = v114;
      v46 = v40 + *(v114 + 52);
      sub_1BC6AE12C(*v46, *(v46 + 8));
      *v46 = v42;
      *(v46 + 8) = v44;
      v95 = *(v45 + 48);
      v47 = *(v40 + v95);
      v48 = *(v47 + 16);
      v114 = v47;
      if (v48)
      {
        v118 = *(v109 + 32);
        v49 = v47 + ((*(v110 + 80) + 32) & ~*(v110 + 80));
        v50 = *(v110 + 72);
        do
        {
          sub_1BC721A58(v49, v16, type metadata accessor for Report.Message);
          v51 = *&v16[v118];

          sub_1BC721AC0(v16, type metadata accessor for Report.Message);
          v52 = *(v51 + 16);
          v53 = v41[2];
          v54 = v53 + v52;
          if (__OFADD__(v53, v52))
          {
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native && v54 <= v41[3] >> 1)
          {
            if (!*(v51 + 16))
            {
              goto LABEL_5;
            }
          }

          else
          {
            if (v53 <= v54)
            {
              v56 = v53 + v52;
            }

            else
            {
              v56 = v53;
            }

            v41 = sub_1BC6BAE4C(isUniquelyReferenced_nonNull_native, v56, 1, v41);
            if (!*(v51 + 16))
            {
LABEL_5:

              if (v52)
              {
                goto LABEL_26;
              }

              goto LABEL_6;
            }
          }

          v57 = (v41[3] >> 1) - v41[2];
          v58 = *(type metadata accessor for Report.Media(0) - 8);
          if (v57 < v52)
          {
            goto LABEL_27;
          }

          v59 = (*(v58 + 80) + 32) & ~*(v58 + 80);
          v60 = *(v58 + 72);
          swift_arrayInitWithCopy();

          if (v52)
          {
            v61 = v41[2];
            v62 = __OFADD__(v61, v52);
            v63 = v61 + v52;
            if (v62)
            {
              goto LABEL_28;
            }

            v41[2] = v63;
          }

LABEL_6:
          v49 += v50;
          --v48;
        }

        while (v48);
      }

      v66 = v41[2];

      type metadata accessor for ProgressTracker();
      v67 = ProgressTracker.__allocating_init(fileCount:sizeLimitInBytes:filesPerMessageLimit:)(v66, 0, 0x100000000, 0, 10, 0);
      v68 = MEMORY[0x1EEE9AC00](v67);
      v70 = v114;
      v69 = v115;
      *(&v94 - 4) = v68;
      *(&v94 - 3) = v69;
      v71 = v113;
      *(&v94 - 2) = v113;
      *(&v94 - 1) = v121;
      v72 = v96;
      v73 = sub_1BC720940(sub_1BC72150C, (&v94 - 6), v70);
      if (v72)
      {

        sub_1BC721AC0(v116, type metadata accessor for Report.Evidence);
        result = (*(v111 + 8))(v69, v112);
      }

      else
      {
        v74 = v73;

        v75 = v116;
        *(v116 + v95) = v74;
        v76 = v108;
        sub_1BC721A58(v75, v108, type metadata accessor for Report.Evidence);
        v77 = v121[0];
        sub_1BC721AC0(v75, type metadata accessor for Report.Evidence);
        (*(v111 + 8))(v69, v112);
        v78 = v107;
        v79 = Report.Evidence.createReportMetadataAssetsForCloudKit(with:enrichedEvidence:reportDirectoryURL:)(v107, v117, v76, v71);
        v118 = v77;
        v80 = v79;
        v82 = v81;
        sub_1BC721530(&qword_1EBCDD758, MEMORY[0x1E6966620]);
        v83 = v97;
        v84 = v99;
        sub_1BC75B900();
        sub_1BC6AE090(v80, v82);
        sub_1BC6D71EC(v80, v82);
        sub_1BC6AE140(v80, v82);
        v85 = v101;
        sub_1BC75B8F0();
        (*(v98 + 8))(v83, v84);
        v86 = v103;
        v122 = v103;
        v123 = sub_1BC721530(&qword_1EBCDE8E8, MEMORY[0x1E69663E0]);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v121);
        v88 = v102;
        (*(v102 + 16))(boxed_opaque_existential_1, v85, v86);
        __swift_project_boxed_opaque_existential_1(v121, v122);
        sub_1BC759660();
        (*(v88 + 8))(v85, v86);
        v89 = v119;
        v90 = v120;
        __swift_destroy_boxed_opaque_existential_1(v121);
        v91 = v104;
        v92 = v100;
        v93 = v105;
        (*(v104 + 16))(v100, v78, v105);
        sub_1BC6B57C4(v89, v90, v92, v118, v106);
        sub_1BC6AE140(v80, v82);
        (*(v91 + 8))(v78, v93);
        result = sub_1BC721AC0(v108, type metadata accessor for Report.Evidence);
      }
    }
  }

  else
  {
    v64 = v121[0];
    sub_1BC759720();

    result = swift_willThrow();
  }

  v65 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Report.Evidence.createFileAssetsForCloudKit(with:chunkSizeInBytes:reportDirectoryURL:progress:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = a4;
  v71 = a1;
  v70 = type metadata accessor for Report.Message();
  v68 = *(v70 - 8);
  v5 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for Report.Evidence(0);
  v8 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BC75B930();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BC75B9E0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BC75B9A0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = a2;
  v25 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v24, v15);
  static HPKE.Ciphersuite.reportToApple.getter();
  v26 = v74;
  sub_1BC75B970();
  if (v26)
  {
    return v14;
  }

  v28 = v70;
  v27 = v71;
  v65 = v21;
  v66 = v20;
  v64 = 0;
  sub_1BC721A58(v73, v10, type metadata accessor for Report.Evidence);
  v29 = MEMORY[0x1E69E7CC0];
  v75 = MEMORY[0x1E69E7CC0];
  v63 = v25;
  v30 = sub_1BC75B980();
  v32 = v31;
  v33 = v72;
  v34 = &v10[*(v72 + 52)];
  sub_1BC6AE12C(*v34, *(v34 + 1));
  *v34 = v30;
  *(v34 + 1) = v32;
  v62 = *(v33 + 48);
  v35 = *&v10[v62];
  v36 = *(v35 + 16);
  v67 = v10;
  v72 = v35;
  if (!v36)
  {
    v46 = v27;
LABEL_19:
    v54 = v29[2];

    type metadata accessor for ProgressTracker();
    v14 = ProgressTracker.__allocating_init(fileCount:sizeLimitInBytes:filesPerMessageLimit:)(v54, 0, 0x100000000, 0, 10, 0);
    v55 = MEMORY[0x1EEE9AC00](v14);
    v57 = v63;
    v56 = v64;
    *(&v61 - 4) = v55;
    *(&v61 - 3) = v57;
    *(&v61 - 2) = v69;
    *(&v61 - 1) = &v75;
    v58 = sub_1BC720940(sub_1BC721B88, (&v61 - 6), v72);
    if (v56)
    {

      sub_1BC721AC0(v67, type metadata accessor for Report.Evidence);
    }

    else
    {
      v59 = v58;

      v60 = v67;
      *&v67[v62] = v59;
      sub_1BC721A58(v60, v46, type metadata accessor for Report.Evidence);
      v14 = v75;
      sub_1BC721AC0(v60, type metadata accessor for Report.Evidence);
    }

    (*(v65 + 8))(v57, v66);
    return v14;
  }

  v37 = *(v28 + 32);
  v38 = v35 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
  v73 = *(v68 + 72);
  v74 = v37;
  while (1)
  {
    sub_1BC721A58(v38, v7, type metadata accessor for Report.Message);
    v40 = *&v7[v74];

    result = sub_1BC721AC0(v7, type metadata accessor for Report.Message);
    v41 = *(v40 + 16);
    v42 = v29[2];
    v43 = v42 + v41;
    if (__OFADD__(v42, v41))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v43 > v29[3] >> 1)
    {
      if (v42 <= v43)
      {
        v45 = v42 + v41;
      }

      else
      {
        v45 = v42;
      }

      v29 = sub_1BC6BAE4C(isUniquelyReferenced_nonNull_native, v45, 1, v29);
    }

    v46 = v27;
    if (*(v40 + 16))
    {
      v47 = (v29[3] >> 1) - v29[2];
      result = type metadata accessor for Report.Media(0);
      v48 = *(result - 8);
      if (v47 < v41)
      {
        goto LABEL_26;
      }

      v49 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v50 = *(v48 + 72);
      swift_arrayInitWithCopy();

      v46 = v27;
      if (v41)
      {
        v51 = v29[2];
        v52 = __OFADD__(v51, v41);
        v53 = v51 + v41;
        if (v52)
        {
          goto LABEL_27;
        }

        v29[2] = v53;
      }
    }

    else
    {

      if (v41)
      {
        goto LABEL_25;
      }
    }

    v38 += v73;
    if (!--v36)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t Report.Evidence.createReportMetadataAssetsForCloudKit(with:enrichedEvidence:reportDirectoryURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v97 = a4;
  v106 = a3;
  v96 = a1;
  v99 = sub_1BC759800();
  v98 = *(v99 - 8);
  v5 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v92 = v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1BC759940();
  v94 = *(v95 - 8);
  v7 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v93 = v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Report.Authority(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v105 = v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BC759550();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v108 = v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1BC759570();
  v103 = *(v104 - 8);
  v15 = *(v103 + 64);
  v16 = MEMORY[0x1EEE9AC00](v104);
  v102 = v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v101 = v88 - v18;
  v19 = sub_1BC75B930();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = sub_1BC75B9E0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = v88 - v27;
  v29 = sub_1BC75B9A0();
  v107 = *(v29 - 8);
  v30 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = v88 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v22;
  v35 = *(v22 + 16);
  v34 = v22 + 16;
  v33 = v35;
  v35(v28, a2, v21);
  static HPKE.Ciphersuite.reportToApple.getter();
  v36 = v117;
  result = sub_1BC75B970();
  if (!v36)
  {
    v88[0] = v33;
    v88[1] = v34;
    v38 = v26;
    v90 = v21;
    v89 = a2;
    v117 = v32;
    v91 = v29;
    v39 = sub_1BC7595D0();
    v40 = v103;
    v41 = v101;
    v42 = v104;
    (*(v103 + 104))(v101, *MEMORY[0x1E6967FC8], v104);
    v43 = sub_1BC7595B0();
    (*(v40 + 16))(v102, v41, v42);
    sub_1BC759580();
    (*(v40 + 8))(v41, v42);
    sub_1BC759540();
    sub_1BC759560();
    v44 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
    v45 = v105;
    (*(*(v44 - 8) + 56))(v105, 1, 1, v44);
    type metadata accessor for Report.Evidence(0);
    sub_1BC721530(&qword_1EBCDE8F0, type metadata accessor for Report.Evidence);
    v46 = sub_1BC759590();
    v48 = v47;
    sub_1BC721AC0(v45, type metadata accessor for Report.Authority);
    v115 = v46;
    v116 = v48;
    v114 = xmmword_1BC767100;
    sub_1BC6D774C();
    v49 = v117;
    v50 = sub_1BC75B990();
    v106 = 0;
    v52 = v51;
    v102 = v48;
    v103 = v46;
    v105 = v43;
    v53 = v50;
    sub_1BC6AE140(v114, *(&v114 + 1));
    v54 = sub_1BC75B980();
    v101 = v55;
    v56 = v38;
    v57 = v38;
    v58 = v90;
    (v88[0])(v57, v89, v90);
    sub_1BC6AE090(v53, v52);
    v59 = sub_1BC75B9C0();
    v104 = v52;
    v61 = v60;
    (*(v100 + 8))(v56, v58);
    *&v110 = v54;
    *(&v110 + 1) = v101;
    *&v111 = v59;
    *(&v111 + 1) = v61;
    v62 = v104;
    *&v112 = v53;
    *(&v112 + 1) = v104;
    *&v113 = 0xD00000000000002ELL;
    *(&v113 + 1) = 0x80000001BC774070;
    v63 = *(v39 + 48);
    v64 = *(v39 + 52);
    swift_allocObject();
    sub_1BC7595C0();
    sub_1BC759540();
    sub_1BC759560();
    v109[0] = v110;
    v109[1] = v111;
    v109[2] = v112;
    v109[3] = v113;
    sub_1BC721578();
    v65 = v106;
    v66 = sub_1BC7595A0();
    if (v65)
    {

      sub_1BC6AE140(v103, v102);

      sub_1BC6AE140(v53, v62);
      (*(v107 + 8))(v49, v91);
      return sub_1BC6D7930(&v110);
    }

    else
    {
      v68 = v66;
      v69 = v67;
      v108 = v53;

      v70 = v93;
      sub_1BC759930();
      v71 = sub_1BC759920();
      v73 = v72;
      (*(v94 + 8))(v70, v95);
      *&v109[0] = v71;
      *(&v109[0] + 1) = v73;

      MEMORY[0x1BFB267E0](0x617461646174656DLL, 0xE800000000000000);

      MEMORY[0x1BFB267E0](0x6E6F736A2ELL, 0xE500000000000000);

      v74 = v96;
      sub_1BC7597A0();

      sub_1BC759880();
      v106 = 0;
      v75 = v99;
      v76 = v98;
      if (qword_1EBCF1390 != -1)
      {
        swift_once();
      }

      v77 = sub_1BC75A4E0();
      __swift_project_value_buffer(v77, qword_1EBCF1398);
      v78 = v92;
      (*(v76 + 16))(v92, v74, v75);
      v79 = sub_1BC75A4C0();
      v80 = sub_1BC75BF50();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        *&v109[0] = v82;
        *v81 = 136315138;
        v83 = sub_1BC7597D0();
        v84 = v78;
        v86 = v85;
        (*(v76 + 8))(v84, v99);
        v87 = sub_1BC674BD8(v83, v86, v109);

        *(v81 + 4) = v87;
        _os_log_impl(&dword_1BC630000, v79, v80, "Saved encrypted metadata to URL: %s", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v82);
        MEMORY[0x1BFB27EF0](v82, -1, -1);
        MEMORY[0x1BFB27EF0](v81, -1, -1);
      }

      else
      {

        (*(v76 + 8))(v78, v75);
      }

      (*(v107 + 8))(v117, v91);
      sub_1BC6AE140(v108, v104);
      sub_1BC6AE140(v68, v69);
      sub_1BC6D7930(&v110);

      return v103;
    }
  }

  return result;
}

size_t sub_1BC71F7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v98 = a6;
  v105 = a4;
  v102 = a5;
  v99 = a3;
  v108 = type metadata accessor for Report.Media(0);
  v100 = *(v108 - 8);
  v10 = *(v100 + 64);
  v11 = MEMORY[0x1EEE9AC00](v108);
  v13 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v101 = &v91 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE920, &qword_1BC76CB50);
  v103 = *(v15 - 8);
  v104 = v15;
  v16 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v91 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE928, &qword_1BC76CB58);
  v107 = *(v19 - 8);
  v20 = *(v107 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v91 - v25;
  (*(*a2 + 256))(v24);
  v27 = a7;
  sub_1BC721A58(a1, a7, type metadata accessor for Report.Message);
  v28 = type metadata accessor for Report.Message();
  v29 = *(a1 + *(v28 + 32));
  v30 = v106;
  v110 = v99;
  v111 = v105;
  v112 = a2;
  v31 = sub_1BC72060C(sub_1BC721A38, v109, v29);
  if (v30)
  {
    result = sub_1BC721AC0(v27, type metadata accessor for Report.Message);
    *v98 = v30;
    return result;
  }

  v97 = v26;
  v105 = 0;
  v93 = v28;
  v99 = v23;
  v106 = v19;
  v33 = v31[2];
  v34 = MEMORY[0x1E69E7CC0];
  v92 = v27;
  if (v33)
  {
    v115[0] = MEMORY[0x1E69E7CC0];
    v98 = v31;
    sub_1BC720EC4(0, v33, 0);
    result = v98;
    v35 = 0;
    v36 = v103;
    v95 = v98 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
    v37 = v115[0];
    v38 = v104;
    v96 = v13;
    v94 = v33;
    while (v35 < *(result + 16))
    {
      sub_1BC660024(&v95[*(v36 + 72) * v35], v18, &qword_1EBCDE920, &qword_1BC76CB50);
      v39 = *(v38 + 48);
      v40 = *(v106 + 48);
      v41 = v37;
      v42 = *(v106 + 64);
      v43 = v18;
      v44 = v18;
      v45 = v97;
      sub_1BC721A58(v43, v97, type metadata accessor for Report.Media);
      sub_1BC721A58(v44 + v39, v45 + v40, type metadata accessor for EncryptedCSV);
      v46 = objc_allocWithZone(MEMORY[0x1E695B878]);
      v47 = sub_1BC759770();
      v48 = [v46 initWithFileURL_];

      v49 = v45;
      v18 = v44;
      *(v49 + v42) = v48;
      v37 = v41;
      sub_1BC66008C(v44, &qword_1EBCDE920, &qword_1BC76CB50);
      v115[0] = v41;
      v51 = *(v41 + 16);
      v50 = *(v41 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_1BC720EC4(v50 > 1, v51 + 1, 1);
        v49 = v97;
        v37 = v115[0];
      }

      ++v35;
      *(v37 + 16) = v51 + 1;
      sub_1BC65FFBC(v49, v37 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v51, &qword_1EBCDE928, &qword_1BC76CB58);
      v36 = v103;
      v38 = v104;
      result = v98;
      v13 = v96;
      if (v94 == v35)
      {

        v52 = v93;
        v34 = MEMORY[0x1E69E7CC0];
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

  v37 = MEMORY[0x1E69E7CC0];
  v52 = v93;
LABEL_11:
  v53 = *(v37 + 16);
  v54 = v106;
  v55 = v99;
  if (v53)
  {
    v118 = v34;
    result = sub_1BC6BB3E4(0, v53, 0);
    v56 = 0;
    v57 = v107;
    v98 = (v37 + ((*(v57 + 80) + 32) & ~*(v57 + 80)));
    v34 = v118;
    v103 = v53;
    v104 = v37;
    while (v56 < *(v37 + 16))
    {
      sub_1BC660024(v98 + *(v57 + 72) * v56, v55, &qword_1EBCDE928, &qword_1BC76CB58);
      v58 = v55 + *(v54 + 48);
      v59 = *(v55 + *(v54 + 64));
      sub_1BC721A58(v55, v13, type metadata accessor for Report.Media);
      v60 = type metadata accessor for EncryptedCSV();
      v61 = *(v60 + 20);
      v62 = sub_1BC75B910();
      v116 = v62;
      v117 = sub_1BC721530(&qword_1EBCDE8E8, MEMORY[0x1E69663E0]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v115);
      (*(*(v62 - 8) + 16))(boxed_opaque_existential_1, v58 + v61, v62);
      __swift_project_boxed_opaque_existential_1(v115, v116);
      v64 = v105;
      sub_1BC759660();
      v105 = v64;
      v65 = v113;
      v66 = v114;
      __swift_destroy_boxed_opaque_existential_1(v115);
      v67 = &v13[*(v108 + 36)];
      sub_1BC6AE12C(*v67, *(v67 + 1));
      *v67 = v65;
      *(v67 + 1) = v66;
      v68 = *(v108 + 44);
      sub_1BC66008C(&v13[v68], &qword_1EBCDC6D0, &qword_1BC761EF0);
      v69 = sub_1BC759800();
      v70 = *(v69 - 8);
      (*(v70 + 16))(&v13[v68], v58, v69);
      v71 = &v13[v68];
      v72 = v108;
      (*(v70 + 56))(v71, 0, 1, v69);
      v73 = &v13[*(v72 + 48)];
      *v73 = *(v58 + *(v60 + 24));
      v73[8] = 0;
      v74 = v59;
      v75 = v102;
      MEMORY[0x1BFB268C0]();
      if (*((*v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v87 = *((*v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1BC75BD20();
      }

      sub_1BC75BD50();
      v76 = [v74 UUID];
      if (v76)
      {
        v77 = v76;
        v78 = sub_1BC75BB60();
        v80 = v79;
      }

      else
      {
        v78 = 0;
        v80 = 0;
      }

      v54 = v106;
      v81 = v103;
      v82 = &v13[*(v72 + 40)];
      v83 = v82[1];

      *v82 = v78;
      v82[1] = v80;
      v84 = v101;
      sub_1BC721B20(v13, v101, type metadata accessor for Report.Media);
      v55 = v99;
      sub_1BC66008C(v99, &qword_1EBCDE928, &qword_1BC76CB58);
      v118 = v34;
      v86 = *(v34 + 16);
      v85 = *(v34 + 24);
      if (v86 >= v85 >> 1)
      {
        sub_1BC6BB3E4(v85 > 1, v86 + 1, 1);
        v84 = v101;
        v34 = v118;
      }

      ++v56;
      *(v34 + 16) = v86 + 1;
      result = sub_1BC721B20(v84, v34 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v86, type metadata accessor for Report.Media);
      v57 = v107;
      v37 = v104;
      if (v81 == v56)
      {

        v52 = v93;
        goto LABEL_24;
      }
    }

LABEL_26:
    __break(1u);
    return result;
  }

LABEL_24:
  v88 = *(v52 + 32);
  v89 = v92;
  v90 = *(v92 + v88);

  *(v89 + v88) = v34;
  return result;
}

void sub_1BC720178(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a2;
  v40 = a3;
  v41 = a4;
  v7 = sub_1BC75B910();
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for EncryptedCSV();
  v11 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BC759800();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = (&v37 - v20);
  v44 = a5;
  sub_1BC721A58(a1, a5, type metadata accessor for Report.Media);
  v22 = v15[2];
  v22(v21, a1, v14);
  v22(v19, v40, v14);
  v23 = (a1 + *(type metadata accessor for Report.Media(0) + 32));
  v24 = *v23;
  v25 = v23[1];
  v45 = 0;
  v46 = 0xE000000000000000;

  sub_1BC75C290();

  v45 = v24;
  v46 = v25;
  MEMORY[0x1BFB267E0](0x74707972636E655FLL, 0xEE007673632E6465);
  sub_1BC7597A0();

  v26 = sub_1BC6D2ED8();
  v40 = v10;
  v27 = v43;
  v28 = HPKE.Sender.writeChunkedEncryptedCSV(from:to:progress:chunkSizeInBytes:)(v10, v21, v13, v41, v26);
  if (v27)
  {
    v29 = v15[1];
    v29(v19, v14);
    v29(v21, v14);
    v29(v13, v14);
    sub_1BC721AC0(v44, type metadata accessor for Report.Media);
    v47 = v27;
    v30 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE120, &unk_1BC763ED0);
    if (swift_dynamicCast())
    {

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE920, &qword_1BC76CB50);
      (*(*(v31 - 8) + 56))(v44, 1, 1, v31);
    }
  }

  else
  {
    v32 = v28;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE920, &qword_1BC76CB50);
    v43 = *(v33 + 48);
    v34 = v15[1];
    v34(v19, v14);
    v34(v21, v14);
    v35 = v37;
    (*(v38 + 32))(&v13[*(v37 + 20)], v40, v39);
    *&v13[*(v35 + 24)] = v32;
    v36 = v44;
    sub_1BC721B20(v13, v43 + v44, type metadata accessor for EncryptedCSV);
    (*(*(v33 - 8) + 56))(v36, 0, 1, v33);
  }
}

void *sub_1BC72060C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE938, &qword_1BC76CB68);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE920, &qword_1BC76CB50);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v30 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v28 = &v25 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v17 = *(type metadata accessor for Report.Media(0) - 8);
  v25 = v11;
  v18 = (v11 + 48);
  v19 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v20 = MEMORY[0x1E69E7CC0];
  v29 = *(v17 + 72);
  v26 = v10;
  v27 = a1;
  while (1)
  {
    a1(v19);
    if (v3)
    {
      break;
    }

    if ((*v18)(v9, 1, v10) == 1)
    {
      sub_1BC66008C(v9, &qword_1EBCDE938, &qword_1BC76CB68);
    }

    else
    {
      v21 = v28;
      sub_1BC65FFBC(v9, v28, &qword_1EBCDE920, &qword_1BC76CB50);
      sub_1BC65FFBC(v21, v30, &qword_1EBCDE920, &qword_1BC76CB50);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1BC720BFC(0, v20[2] + 1, 1, v20);
      }

      v23 = v20[2];
      v22 = v20[3];
      if (v23 >= v22 >> 1)
      {
        v20 = sub_1BC720BFC(v22 > 1, v23 + 1, 1, v20);
      }

      v20[2] = v23 + 1;
      sub_1BC65FFBC(v30, v20 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v23, &qword_1EBCDE920, &qword_1BC76CB50);
      v10 = v26;
      a1 = v27;
    }

    v19 += v29;
    if (!--v16)
    {
      return v20;
    }
  }

  return v20;
}

uint64_t sub_1BC720940(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for Report.Message();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1BC720E80(0, v11, 0);
    v12 = v22;
    v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v13 = a3 + v18;
    v14 = *(v7 + 72);
    while (1)
    {
      v19(v13, &v21);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v22 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1BC720E80(v15 > 1, v16 + 1, 1);
        v12 = v22;
      }

      *(v12 + 16) = v16 + 1;
      sub_1BC721B20(v10, v12 + v18 + v16 * v14, type metadata accessor for Report.Message);
      v13 += v14;
      if (!--v11)
      {
        return v12;
      }
    }
  }

  return v12;
}

uint64_t JSONEncoder.init(dateEncodingStrategy:)(uint64_t a1)
{
  v2 = sub_1BC759570();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BC7595B0();
  (*(v3 + 16))(v6, a1, v2);

  sub_1BC759580();

  (*(v3 + 8))(a1, v2);
  return v7;
}

size_t sub_1BC720BFC(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE940, &unk_1BC76CB70);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE920, &qword_1BC76CB50) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE920, &qword_1BC76CB50) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

_BYTE *sub_1BC720DEC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1BC721880(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1BC721938(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1BC7219B4(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

size_t sub_1BC720E80(size_t a1, int64_t a2, char a3)
{
  result = sub_1BC720EE4(a1, a2, a3, *v3, &qword_1EBCDE918, &unk_1BC76D810, type metadata accessor for Report.Message);
  *v3 = result;
  return result;
}

size_t sub_1BC720EC4(size_t a1, int64_t a2, char a3)
{
  result = sub_1BC7210C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1BC720EE4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_1BC7210C0(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE930, &qword_1BC76CB60);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE928, &qword_1BC76CB58) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE928, &qword_1BC76CB58) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1BC7212B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6554726568706963 && a2 == 0xEA00000000007478;
  if (v4 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C75737061636E65 && a2 == 0xEF79654B64657461 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xE900000000000079 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001BC7740A0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1BC75C5E0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1BC721434()
{
  result = qword_1EBCDE8D8;
  if (!qword_1EBCDE8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE8D8);
  }

  return result;
}

uint64_t type metadata accessor for EncryptedCSV()
{
  result = qword_1EBCF1730;
  if (!qword_1EBCF1730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BC721530(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BC721578()
{
  result = qword_1EBCDE8F8;
  if (!qword_1EBCDE8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE8F8);
  }

  return result;
}

unint64_t sub_1BC7215D0()
{
  result = qword_1EBCDE900;
  if (!qword_1EBCDE900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE900);
  }

  return result;
}

unint64_t sub_1BC721628()
{
  result = qword_1EBCDE908;
  if (!qword_1EBCDE908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE908);
  }

  return result;
}

unint64_t sub_1BC721680()
{
  result = qword_1EBCDE910;
  if (!qword_1EBCDE910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE910);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BC721704(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BC72174C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BC7217E4()
{
  result = sub_1BC759800();
  if (v1 <= 0x3F)
  {
    result = sub_1BC75B910();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BC721880(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BC721938(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1BC759650();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1BC759610();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1BC759840();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1BC7219B4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1BC759650();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1BC759610();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1BC721A58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC721AC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BC721B20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC721BC0()
{
  v1 = v0;
  v2 = _s9YouScreenVMa(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE948, &qword_1BC76CB80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19[-v7];
  sub_1BC721FD8(v1, &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], _s9YouScreenVMa);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1BC722A58(&v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9, _s9YouScreenVMa);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE950, &qword_1BC76CB88);
  v12 = sub_1BC633C54(&qword_1EBCDE958, &qword_1EBCDE950, &qword_1BC76CB88);
  sub_1BC6F6778(sub_1BC722040, v10, v11, v12, v8);
  v13._object = 0x80000001BC7740C0;
  v13._countAndFlagsBits = 0xD000000000000010;
  SCLocalizedStringKey.init(stringLiteral:)(v13);
  v20[0] = v20[2];
  v20[1] = v20[3];
  v14 = sub_1BC651E78(v20);
  v16 = v15;
  LOBYTE(v4) = v17;
  sub_1BC633C54(&qword_1EBCDE960, &qword_1EBCDE948, &qword_1BC76CB80);
  sub_1BC75B290();
  sub_1BC680E6C(v14, v16, v4 & 1);

  return sub_1BC66008C(v8, &qword_1EBCDE948, &qword_1BC76CB80);
}

uint64_t sub_1BC721E5C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = _s9YouScreenVMa(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1BC721FD8(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), _s9YouScreenVMa);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1BC722A58(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, _s9YouScreenVMa);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEC10, &qword_1BC76D140);
  sub_1BC633C54(&qword_1EBCDEC18, &qword_1EBCDEC10, &qword_1BC76D140);
  return sub_1BC6F7410(sub_1BC728ED4, v8, a2);
}

uint64_t sub_1BC721FD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC72206C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
  v3 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v40 = &v39 - v4;
  v5 = _s3RowVMa();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v45 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v44 = &v39 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v43 = &v39 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - v13;
  v41 = &v39 - v13;
  v39 = a1;
  sub_1BC75B730();
  v15 = (a1 + *(_s9YouScreenVMa(0) + 20));
  v16 = v15[1];
  v18 = v15[2];
  v19 = *(v15 + 24);
  v51 = *v15;
  v17 = v51;
  v52 = v16;
  v53 = v18;
  v54 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE08, &qword_1BC769498);
  sub_1BC75A6C0();
  v21 = v47;
  v20 = v48;
  v22 = v49;
  v23 = v50;
  v24 = sub_1BC67A2E4();
  v25 = v14;
  v26 = v40;
  sub_1BC6F8C2C(3, 12, v40, v21, v20, v22, v23, v24 & 1, v25);
  sub_1BC75B730();
  v51 = v17;
  v52 = v16;
  v53 = v18;
  v54 = v19;
  sub_1BC75A6C0();
  v27 = v47;
  v28 = v48;
  v29 = v49;
  v30 = v50;
  v31 = sub_1BC67A2E4();
  v32 = v43;
  sub_1BC6F8C2C(2, 12, v26, v27, v28, v29, v30, v31 & 1, v43);
  v33 = v41;
  v34 = v44;
  sub_1BC721FD8(v41, v44, _s3RowVMa);
  v35 = v45;
  sub_1BC721FD8(v32, v45, _s3RowVMa);
  v36 = v46;
  sub_1BC721FD8(v34, v46, _s3RowVMa);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEC20, &unk_1BC76D148);
  sub_1BC721FD8(v35, v36 + *(v37 + 48), _s3RowVMa);
  sub_1BC7282E8(v32, _s3RowVMa);
  sub_1BC7282E8(v33, _s3RowVMa);
  sub_1BC7282E8(v35, _s3RowVMa);
  return sub_1BC7282E8(v34, _s3RowVMa);
}

uint64_t sub_1BC7223B0()
{
  v1 = v0;
  v2 = _s13SuspectScreenVMa(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE968, &qword_1BC76CB90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19[-v7];
  sub_1BC721FD8(v1, &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], _s13SuspectScreenVMa);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1BC722A58(&v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9, _s13SuspectScreenVMa);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE970, &qword_1BC76CB98);
  v12 = sub_1BC633C54(&qword_1EBCDE978, &qword_1EBCDE970, &qword_1BC76CB98);
  sub_1BC6F6778(sub_1BC722AC0, v10, v11, v12, v8);
  v13._object = 0x80000001BC7740E0;
  v13._countAndFlagsBits = 0xD000000000000012;
  SCLocalizedStringKey.init(stringLiteral:)(v13);
  v20[0] = v20[2];
  v20[1] = v20[3];
  v14 = sub_1BC651E78(v20);
  v16 = v15;
  LOBYTE(v4) = v17;
  sub_1BC633C54(&qword_1EBCDE980, &qword_1EBCDE968, &qword_1BC76CB90);
  sub_1BC75B290();
  sub_1BC680E6C(v14, v16, v4 & 1);

  return sub_1BC66008C(v8, &qword_1EBCDE968, &qword_1BC76CB90);
}

uint64_t sub_1BC72264C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = _s13SuspectScreenVMa(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1BC721FD8(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), _s13SuspectScreenVMa);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1BC722A58(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, _s13SuspectScreenVMa);
  _s3RowVMa();
  sub_1BC7269FC(&qword_1EBCDEC08, _s3RowVMa);
  return sub_1BC6F7410(sub_1BC728EA8, v8, a2);
}

uint64_t objectdestroyTm_7(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v37 = *(*(v2 - 8) + 64);
  v5 = *(v1 + v4);

  v6 = *(v1 + v4 + 8);

  v7 = v1 + v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490) + 32);
  v8 = sub_1BC759910();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1, v8))
  {
    (*(v9 + 8))(v7, v8);
  }

  v10 = type metadata accessor for Report.Evidence(0);
  v11 = (v7 + v10[6]);
  v12 = *(v11 + 1);

  v13 = *(v11 + 3);

  v14 = *(v11 + 5);

  v15 = *(v11 + 7);

  v16 = *(v11 + 9);

  v17 = *(v11 + 11);

  v18 = *(v11 + 13);

  v19 = *(v11 + 15);

  v20 = *(v11 + 17);

  v21 = *(v11 + 19);

  v22 = *(v11 + 21);

  v23 = *(v11 + 23);

  v24 = _s6VictimVMa(0);
  (*(v9 + 8))(&v11[*(v24 + 44)], v8);
  v25 = *(v7 + v10[7]);

  v26 = *(v7 + v10[9] + 8);

  v27 = *(v7 + v10[12]);

  v28 = (v7 + v10[13]);
  v29 = v28[1];
  if (v29 >> 60 != 15)
  {
    sub_1BC6AE140(*v28, v29);
  }

  v30 = *(v7 + v10[14] + 8);

  v31 = *(v7 + v10[16] + 8);

  v32 = *(v7 + v10[17] + 8);

  v33 = (v1 + v4 + *(v2 + 20));
  v34 = *v33;

  v35 = v33[1];

  return MEMORY[0x1EEE6BDD0](v1, v4 + v37, v3 | 7);
}

uint64_t sub_1BC722A58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC722AEC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_1BC722B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - v6;
  v8 = _s13SuspectScreenVMa(0);
  v9 = *(a1 + *(v8 + 24));
  sub_1BC75B730();
  v10 = (a1 + *(v8 + 20));
  v11 = *v10;
  v12 = *(v10 + 2);
  LOBYTE(v10) = *(v10 + 24);
  v21 = v11;
  v22 = v12;
  v23 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE08, &qword_1BC769498);
  sub_1BC75A6C0();
  v13 = v19[0];
  v14 = v19[1];
  v15 = v19[2];
  v16 = v20;
  v17 = sub_1BC67A2E4();
  return sub_1BC6F8C2C(v9, 1, v7, v13, v14, v15, v16, v17 & 1, a2);
}

uint64_t sub_1BC722CAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE998, &qword_1BC76CBB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10[-v4 - 8];
  v6 = swift_allocObject();
  v7 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a1 + 32);
  *(v6 + 64) = *(a1 + 48);
  sub_1BC722E30(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEBD0, &qword_1BC76D120);
  sub_1BC728DF8();
  sub_1BC6F7410(sub_1BC728C98, v6, v5);
  sub_1BC75A7B0();
  sub_1BC633C54(&qword_1EBCDE9A0, &qword_1EBCDE998, &qword_1BC76CBB0);
  sub_1BC75B2B0();
  return sub_1BC66008C(v5, &qword_1EBCDE998, &qword_1BC76CBB0);
}

double sub_1BC722E68@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = sub_1BC75ACE0();
  v36 = 0;
  v43 = sub_1BC72C630();
  v44 = v3;
  sub_1BC651EB8();
  v4 = sub_1BC75B1B0();
  v6 = v5;
  v8 = v7;
  sub_1BC75B0D0();
  v9 = sub_1BC75B190();
  v11 = v10;
  v13 = v12;

  sub_1BC680E6C(v4, v6, v8 & 1);

  sub_1BC75B500();
  v14 = sub_1BC75B150();
  v16 = v15;
  LOBYTE(v4) = v17;
  v27 = v18;

  sub_1BC680E6C(v9, v11, v13 & 1);

  v29 = sub_1BC75AC00();
  sub_1BC723188(a1, &v43);
  v19 = v43;
  v20 = v44;
  v21 = v45;
  v22 = v47;
  LOBYTE(v43) = v4 & 1;
  v31[0] = v45;
  LOBYTE(a1) = v45;
  sub_1BC680FFC(v14, v16, v4 & 1);

  sub_1BC680FFC(v19, v20, v21);

  sub_1BC680E6C(v19, v20, v21);

  sub_1BC680E6C(v14, v16, v4 & 1);

  *(&v38 + 1) = *v34;
  DWORD1(v38) = *&v34[3];
  *(&v40 + 1) = *v33;
  DWORD1(v40) = *&v33[3];
  HIDWORD(v41) = *&v32[3];
  *(&v41 + 9) = *v32;
  *&v37 = v14;
  *(&v37 + 1) = v16;
  v43 = v14;
  v44 = v16;
  LOBYTE(v38) = v4 & 1;
  *(&v38 + 1) = v27;
  v39 = v29;
  LOBYTE(v40) = 1;
  *(&v40 + 1) = v19;
  *&v41 = v20;
  BYTE8(v41) = a1;
  v42 = v22;
  v45 = v4 & 1;
  *&v46[3] = *&v34[3];
  *v46 = *v34;
  v47 = v27;
  v48 = v29;
  v49 = 0;
  v50 = 1;
  *&v51[3] = *&v33[3];
  *v51 = *v33;
  v52 = v19;
  v53 = v20;
  v54 = a1;
  *v55 = *v32;
  *&v55[3] = *&v32[3];
  v56 = v22;
  sub_1BC660024(&v37, v31, &qword_1EBCDEC00, &qword_1BC76D138);
  sub_1BC66008C(&v43, &qword_1EBCDEC00, &qword_1BC76D138);
  *&v35[39] = v39;
  *&v35[55] = v40;
  *&v35[71] = v41;
  *&v35[87] = v42;
  *&v35[7] = v37;
  *&v35[23] = v38;
  v23 = *&v35[48];
  *(a2 + 49) = *&v35[32];
  *(a2 + 65) = v23;
  *(a2 + 81) = *&v35[64];
  *(a2 + 96) = *&v35[79];
  result = *v35;
  v25 = *&v35[16];
  *(a2 + 17) = *v35;
  v26 = v36;
  *a2 = v30;
  *(a2 + 8) = 0x4014000000000000;
  *(a2 + 16) = v26;
  *(a2 + 33) = v25;
  return result;
}

uint64_t sub_1BC723188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SCLocalizedStringKey.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v8);
  v9 = *(a1 + *(type metadata accessor for Report.Message() + 24));
  SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v9);
  v10._countAndFlagsBits = 10272;
  v10._object = 0xE200000000000000;
  SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v10);
  v11._countAndFlagsBits = sub_1BC6B8CF4();
  SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v11);

  v12._countAndFlagsBits = 2112041;
  v12._object = 0xE300000000000000;
  SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v12);
  v13._countAndFlagsBits = sub_1BC6B8D2C();
  SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v13);

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v14);
  SCLocalizedStringKey.init(stringInterpolation:)(v7, v29);
  v28[0] = v29[0];
  v28[1] = v29[1];
  v15 = sub_1BC651E78(v28);
  v17 = v16;
  LOBYTE(a1) = v18;
  sub_1BC75B090();
  v19 = sub_1BC75B190();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_1BC680E6C(v15, v17, a1 & 1);

  *a2 = v19;
  *(a2 + 8) = v21;
  *(a2 + 16) = v23 & 1;
  *(a2 + 24) = v25;
  return result;
}

uint64_t sub_1BC723338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEBB8, &qword_1BC76D110);
  v3 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v21 = &v21 - v4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE258, &qword_1BC769BF0);
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v8 = &v21 - v7;
  v9 = sub_1BC75AE70();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEBC0, &qword_1BC76D118);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - v14;
  sub_1BC75AE60();
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEB60, &qword_1BC76D0E0);
  sub_1BC633C54(&qword_1EBCDEBC8, &qword_1EBCDEB60, &qword_1BC76D0E0);
  sub_1BC75A770();
  sub_1BC75AE40();
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE468, &qword_1BC76A338);
  sub_1BC633C54(&qword_1EBCDE470, &qword_1EBCDE468, &qword_1BC76A338);
  sub_1BC75A770();
  v16 = *(v23 + 48);
  v17 = v21;
  (*(v12 + 16))(v21, v15, v11);
  v18 = &v17[v16];
  v19 = v22;
  (*(v5 + 16))(v18, v8, v22);
  sub_1BC75AD10();
  (*(v5 + 8))(v8, v19);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1BC7236B8(uint64_t a1)
{
  v2 = sub_1BC75A650();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1BC75A640();
  v6 = swift_allocObject();
  v7 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a1 + 32);
  *(v6 + 64) = *(a1 + 48);
  sub_1BC722E30(a1, v10);
  return MEMORY[0x1BFB26270](v5, sub_1BC728C40, v6);
}

uint64_t sub_1BC723798(uint64_t a1)
{
  v2 = type metadata accessor for ReportScreen.Control(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  swift_storeEnumTagMultiPayload();
  v7(v5);
  return sub_1BC7282E8(v5, type metadata accessor for ReportScreen.Control);
}

uint64_t sub_1BC723848@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *a3;
  v9 = a3[1];
  *a6 = result;
  a6[1] = v6;
  a6[2] = v7;
  a6[3] = v8;
  a6[4] = v9;
  a6[5] = a4;
  a6[6] = a5;
  return result;
}

uint64_t sub_1BC723864()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE988, &qword_1BC76CBA0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13[-v3];
  v5 = *(v0 + 16);
  v16[0] = *v0;
  v16[1] = v5;
  v16[2] = *(v0 + 32);
  v17 = *(v0 + 48);
  v6 = swift_allocObject();
  v7 = *(v0 + 16);
  *(v6 + 16) = *v0;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(v0 + 32);
  *(v6 + 64) = *(v0 + 48);
  sub_1BC722E30(v16, v15);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE990, &qword_1BC76CBA8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE998, &qword_1BC76CBB0);
  v10 = sub_1BC633C54(&qword_1EBCDE9A0, &qword_1EBCDE998, &qword_1BC76CBB0);
  v15[0] = v9;
  v15[1] = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1BC6F6778(sub_1BC728F00, v6, v8, OpaqueTypeConformance2, v4);
  v14 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE9A8, &qword_1BC76CBB8);
  sub_1BC633C54(&qword_1EBCDE9B0, &qword_1EBCDE988, &qword_1BC76CBA0);
  sub_1BC633C54(&qword_1EBCDE9B8, &qword_1EBCDE9A8, &qword_1BC76CBB8);
  sub_1BC75B3F0();
  return sub_1BC66008C(v4, &qword_1EBCDE988, &qword_1BC76CBA0);
}

uint64_t sub_1BC723ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a2;
  v35 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE9C0, &qword_1BC76CBC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v30 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE9C8, &qword_1BC76CBC8);
  v12 = *(v11 - 8);
  v33 = v11;
  v34 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - v14;
  v16 = swift_allocObject();
  v30 = a3;
  v31 = a1;
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE9D0, &qword_1BC76CBD0);
  v18 = sub_1BC633C54(&qword_1EBCDE9D8, &qword_1EBCDE9D0, &qword_1BC76CBD0);
  sub_1BC6F6778(sub_1BC723E6C, v16, v17, v18, v10);
  v19._object = 0x80000001BC774100;
  v19._countAndFlagsBits = 0xD000000000000011;
  SCLocalizedStringKey.init(stringLiteral:)(v19);
  v39[0] = v40;
  v39[1] = v41;
  v20 = sub_1BC651E78(v39);
  v22 = v21;
  v24 = v23;
  v25 = sub_1BC633C54(&qword_1EBCDE9E0, &qword_1EBCDE9C0, &qword_1BC76CBC0);
  sub_1BC75B290();
  sub_1BC680E6C(v20, v22, v24 & 1);

  sub_1BC66008C(v10, &qword_1EBCDE9C0, &qword_1BC76CBC0);
  v36 = v31;
  v37 = v32;
  v38 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE240, &qword_1BC769BE0);
  v40 = v7;
  v41 = v25;
  swift_getOpaqueTypeConformance2();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
  v27 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0);
  v40 = v26;
  v41 = v27;
  swift_getOpaqueTypeConformance2();
  v28 = v33;
  sub_1BC75B3F0();
  return (*(v34 + 8))(v15, v28);
}

uint64_t sub_1BC723E6C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = swift_allocObject();
  *(v4 + 16) = *(v1 + 16);
  *(v4 + 32) = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEB90, &unk_1BC76D100);
  sub_1BC728894();

  return sub_1BC6F7410(sub_1BC728718, v4, a1);
}

uint64_t sub_1BC723F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC75AE70();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE258, &qword_1BC769BF0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15[-v11];
  sub_1BC75AE40();
  v16 = a1;
  v17 = a2;
  v18 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE468, &qword_1BC76A338);
  sub_1BC633C54(&qword_1EBCDE470, &qword_1EBCDE468, &qword_1BC76A338);
  sub_1BC75A770();
  v13 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0);
  MEMORY[0x1BFB25A80](v12, v8, v13);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1BC724140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC75A650();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC75A640();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;

  return MEMORY[0x1BFB26270](v9, sub_1BC728710, v10);
}

uint64_t sub_1BC724220(void (*a1)(char *))
{
  v2 = type metadata accessor for ReportScreen.Control(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  a1(v5);
  return sub_1BC7282E8(v5, type metadata accessor for ReportScreen.Control);
}

uint64_t sub_1BC7242FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BC75AC00();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEB00, &qword_1BC76D098);
  return sub_1BC72435C(a1, a2 + *(v4 + 44));
}

uint64_t sub_1BC72435C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEB08, &qword_1BC76D0A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEB10, &qword_1BC76D0A8);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v40 - v13;
  sub_1BC724718(a1, v6);
  v42[2] = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEA28, &qword_1BC76CC08);
  v16 = sub_1BC7283F4();
  v17 = sub_1BC726A44();
  v18 = sub_1BC6F1440();
  sub_1BC6F1444(v18, v19, sub_1BC7283D4, v42, v3, v15, v16, v17, v14);
  sub_1BC66008C(v6, &qword_1EBCDEB08, &qword_1BC76D0A0);
  v20 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEB50, &qword_1BC76D0C8) + 36)];
  v21 = *(sub_1BC75A9C0() + 20);
  v22 = *MEMORY[0x1E697F468];
  v23 = sub_1BC75AC90();
  (*(*(v23 - 8) + 104))(&v20[v21], v22, v23);
  __asm { FMOV            V0.2D, #6.0 }

  *v20 = _Q0;
  *&v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC468, &qword_1BC76D0D0) + 36)] = 256;
  v29 = sub_1BC75B050();
  v30 = &v14[*(v8 + 44)];
  *v30 = v29;
  *(v30 + 8) = 0u;
  *(v30 + 24) = 0u;
  v30[40] = 1;
  v31 = sub_1BC75ACE0();
  LOBYTE(v47[0]) = 1;
  sub_1BC724F7C(a1, v44);
  *&v43[7] = v44[0];
  *&v43[23] = v44[1];
  *&v43[39] = v44[2];
  *&v43[55] = v44[3];
  LOBYTE(v17) = v47[0];
  sub_1BC643F9C(v14, v12);
  v32 = v41;
  sub_1BC643F9C(v12, v41);
  v33 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEB58, &qword_1BC76D0D8) + 48);
  v45[0] = v31;
  v45[1] = 0;
  v46[0] = v17;
  *&v46[1] = *v43;
  *&v46[17] = *&v43[16];
  *&v46[33] = *&v43[32];
  *&v46[49] = *&v43[48];
  v34 = *&v43[63];
  *&v46[64] = *&v43[63];
  v35 = *v46;
  *v33 = v31;
  *(v33 + 16) = v35;
  v36 = *&v46[16];
  v37 = *&v46[32];
  v38 = *&v46[48];
  *(v33 + 80) = v34;
  *(v33 + 48) = v37;
  *(v33 + 64) = v38;
  *(v33 + 32) = v36;
  sub_1BC660024(v45, v47, &qword_1EBCDEB60, &qword_1BC76D0E0);
  sub_1BC66008C(v14, &qword_1EBCDEB10, &qword_1BC76D0A8);
  v47[0] = v31;
  v47[1] = 0;
  v48 = v17;
  v50 = *&v43[16];
  v51 = *&v43[32];
  *v52 = *&v43[48];
  *&v52[15] = *&v43[63];
  v49 = *v43;
  sub_1BC66008C(v47, &qword_1EBCDEB60, &qword_1BC76D0E0);
  return sub_1BC66008C(v12, &qword_1EBCDEB10, &qword_1BC76D0A8);
}

uint64_t sub_1BC724718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6D0, &qword_1BC761EF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v29 - v5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEB48, &qword_1BC76D0C0);
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v10 = &v29 - v9;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEB68, &qword_1BC76D0E8);
  v11 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEB38, &qword_1BC76D0B8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - v16;
  v18 = a1 + *(type metadata accessor for Report.Media(0) + 20);
  v19 = sub_1BC6B7BC4();
  v20 = sub_1BC759800();
  v21 = *(*(v20 - 8) + 16);
  if (v19)
  {
    v21(v17, a1, v20);
    v22 = type metadata accessor for Video(0);
    v17[*(v22 + 20)] = 0;
    v23 = *(v22 + 24);
    v32 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEA00, &qword_1BC76CBE0);
    sub_1BC75B630();
    *&v17[v23] = v33;
    sub_1BC75B810();
    sub_1BC75A810();
    v24 = &v17[*(v14 + 36)];
    v25 = v34;
    *v24 = v33;
    *(v24 + 1) = v25;
    *(v24 + 2) = v35;
    sub_1BC660024(v17, v13, &qword_1EBCDEB38, &qword_1BC76D0B8);
    swift_storeEnumTagMultiPayload();
    sub_1BC728530();
    sub_1BC633C54(&qword_1EBCDEB40, &qword_1EBCDEB48, &qword_1BC76D0C0);
    sub_1BC75AE00();
    return sub_1BC66008C(v17, &qword_1EBCDEB38, &qword_1BC76D0B8);
  }

  else
  {
    v27 = *(v20 - 8);
    v21(v6, a1, v20);
    (*(v27 + 56))(v6, 0, 1, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEB70, &qword_1BC76D0F0);
    sub_1BC7285EC();
    sub_1BC75A620();
    v28 = v30;
    (*(v7 + 16))(v13, v10, v30);
    swift_storeEnumTagMultiPayload();
    sub_1BC728530();
    sub_1BC633C54(&qword_1EBCDEB40, &qword_1EBCDEB48, &qword_1BC76D0C0);
    sub_1BC75AE00();
    return (*(v7 + 8))(v10, v28);
  }
}

__n128 sub_1BC724BB0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BC75B5D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BC75A910();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v13, a1, v9);
  if ((*(v10 + 88))(v13, v9) == *MEMORY[0x1E697C138])
  {
    (*(v10 + 96))(v13, v9);
    v14 = *v13;
    (*(v5 + 104))(v8, *MEMORY[0x1E6981630], v4);
    v15 = sub_1BC75B610();
    (*(v5 + 8))(v8, v4);
    sub_1BC75B810();
    sub_1BC75A810();
    LOBYTE(v21[0]) = 1;
    *&v24[6] = v22[2];
    *&v24[22] = v22[3];
    *&v24[38] = v23;
    v18[0] = v15;
    v18[1] = 0;
    *v19 = 257;
    *&v19[2] = *v24;
    *&v19[18] = *&v24[16];
    *&v19[34] = *&v24[32];
    *&v19[48] = *(&v23 + 1);
    *v24 = v15;
    *&v24[16] = *v19;
    *&v24[32] = *&v19[16];
    *&v24[48] = *&v19[32];
    *&v24[64] = *(&v23 + 1);
    v20 = 0;
    v24[72] = 0;
    sub_1BC660024(v18, v21, &qword_1EBCDEB88, &qword_1BC76D0F8);
    sub_1BC660024(v18, v21, &qword_1EBCDEB88, &qword_1BC76D0F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEB88, &qword_1BC76D0F8);
    sub_1BC728678();
    sub_1BC75AE00();

    sub_1BC66008C(v18, &qword_1EBCDEB88, &qword_1BC76D0F8);
    sub_1BC66008C(v18, &qword_1EBCDEB88, &qword_1BC76D0F8);
  }

  else
  {
    LOBYTE(v18[0]) = 1;
    v24[72] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEB88, &qword_1BC76D0F8);
    sub_1BC728678();
    sub_1BC75AE00();
    (*(v10 + 8))(v13, v9);
  }

  *&v24[48] = v22[0];
  *&v24[57] = *(v22 + 9);
  *v24 = v21[0];
  *&v24[16] = v21[1];
  v16 = *&v24[48];
  *(a2 + 32) = v21[2];
  *(a2 + 48) = v16;
  *(a2 + 57) = *&v24[57];
  result = *&v24[16];
  *a2 = *v24;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1BC724F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BC759800();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BC759780();
  v9 = sub_1BC759760();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v36 = v9;
  v37 = v11;
  sub_1BC651EB8();
  v12 = sub_1BC75B1B0();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = a1 + *(type metadata accessor for Report.Media(0) + 20);
  sub_1BC6B904C();
  v20 = v35;
  if (v35)
  {
    v21 = v34;
    v36 = v34;
    v37 = v35;
  }

  else
  {
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    SCLocalizedStringKey.init(stringLiteral:)(v22);
    v21 = v36;
    v20 = v37;
  }

  v32[0] = v21;
  v32[1] = v20;
  v23 = sub_1BC651E78(v32);
  v25 = v24;
  v26 = v16 & 1;
  v31[0] = v16 & 1;
  LOBYTE(v32[0]) = v16 & 1;
  v28 = v27 & 1;
  v33 = v27 & 1;
  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v26;
  *(a2 + 24) = v18;
  *(a2 + 32) = v23;
  *(a2 + 40) = v24;
  *(a2 + 48) = v27 & 1;
  *(a2 + 56) = v29;
  sub_1BC680FFC(v12, v14, v26);

  sub_1BC680FFC(v23, v25, v28);

  sub_1BC680E6C(v23, v25, v28);

  sub_1BC680E6C(v12, v14, v31[0]);
}

uint64_t sub_1BC72517C(uint64_t a1)
{
  v3 = v1;
  v4 = type metadata accessor for MediaPreviewScreen(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = v3;
  sub_1BC721FD8(v3, v7, type metadata accessor for Report.Media);
  v8 = (v3 + *(a1 + 20));
  v10 = *v8;
  v9 = v8[1];
  v11 = &v7[*(v4 + 20)];
  *v11 = v10;
  v11[1] = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE9E8, &qword_1BC76CBD8);
  sub_1BC633C54(&qword_1EBCDE9F0, &qword_1EBCDE9E8, &qword_1BC76CBD8);
  sub_1BC7269FC(&qword_1EBCDE9F8, type metadata accessor for MediaPreviewScreen);
  return sub_1BC75A8A0();
}

uint64_t sub_1BC7252FC@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = sub_1BC75ABE0();
  v31 = *(v2 - 8);
  v32 = v2;
  v3 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v28 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEA08, &qword_1BC76CBE8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - v7;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEA10, &qword_1BC76CBF0);
  v9 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v11 = &v28 - v10;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEA18, &qword_1BC76CBF8);
  v12 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v14 = &v28 - v13;
  *v11 = sub_1BC75ACD0();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEA20, &qword_1BC76CC00) + 44);
  sub_1BC725748(v1, v8);
  v36 = v1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEA28, &qword_1BC76CC08);
  v17 = sub_1BC726890();
  v18 = sub_1BC726A44();
  v19 = sub_1BC6F1440();
  sub_1BC6F1444(v19, v20, sub_1BC726870, v35, v5, v16, v17, v18, &v11[v15]);
  sub_1BC66008C(v8, &qword_1EBCDEA08, &qword_1BC76CBE8);
  v37 = sub_1BC759760();
  v38 = v21;
  v23 = v31;
  v22 = v32;
  v24 = v28;
  (*(v31 + 104))(v28, *MEMORY[0x1E697C438], v32);
  sub_1BC633C54(&qword_1EBCDEA68, &qword_1EBCDEA10, &qword_1BC76CBF0);
  sub_1BC651EB8();
  sub_1BC75B300();
  (*(v23 + 8))(v24, v22);

  sub_1BC66008C(v11, &qword_1EBCDEA10, &qword_1BC76CBF0);
  v14[*(v30 + 36)] = sub_1BC75B000();
  v34 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE240, &qword_1BC769BE0);
  sub_1BC726B00();
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDE258, &qword_1BC769BF0);
  v26 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0);
  v37 = v25;
  v38 = v26;
  swift_getOpaqueTypeConformance2();
  sub_1BC75B3F0();
  return sub_1BC66008C(v14, &qword_1EBCDEA18, &qword_1BC76CBF8);
}

uint64_t sub_1BC725748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6D0, &qword_1BC761EF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEA58, &qword_1BC76CC18);
  v28 = *(v7 - 8);
  v29 = v7;
  v8 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEAE8, &qword_1BC76D080);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;
  v15 = type metadata accessor for Video(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1 + *(type metadata accessor for Report.Media(0) + 20);
  v20 = sub_1BC6B7BC4();
  v21 = sub_1BC759800();
  v22 = *(*(v21 - 8) + 16);
  if (v20)
  {
    v22(v18, a1, v21);
    v18[*(v15 + 20)] = 1;
    v23 = *(v15 + 24);
    v31 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEA00, &qword_1BC76CBE0);
    sub_1BC75B630();
    *&v18[v23] = v32;
    sub_1BC721FD8(v18, v14, type metadata accessor for Video);
    swift_storeEnumTagMultiPayload();
    sub_1BC7269FC(&qword_1EBCDEA48, type metadata accessor for Video);
    sub_1BC633C54(&qword_1EBCDEA50, &qword_1EBCDEA58, &qword_1BC76CC18);
    sub_1BC75AE00();
    return sub_1BC7282E8(v18, type metadata accessor for Video);
  }

  else
  {
    v25 = *(v21 - 8);
    v22(v6, a1, v21);
    (*(v25 + 56))(v6, 0, 1, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEAF0, &unk_1BC76D088);
    sub_1BC728348();
    sub_1BC75A620();
    v27 = v28;
    v26 = v29;
    (*(v28 + 16))(v14, v10, v29);
    swift_storeEnumTagMultiPayload();
    sub_1BC7269FC(&qword_1EBCDEA48, type metadata accessor for Video);
    sub_1BC633C54(&qword_1EBCDEA50, &qword_1EBCDEA58, &qword_1BC76CC18);
    sub_1BC75AE00();
    return (*(v27 + 8))(v10, v26);
  }
}