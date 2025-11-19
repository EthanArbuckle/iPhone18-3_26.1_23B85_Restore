void sub_1B3FAFA20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC18PhotosUIFoundationP33_5CEE39672A5892330B9CB7D6693D04B020UserDefaultsObserver_locallySavingKeys;
  swift_beginAccess();
  v7 = *(v2 + v6);
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  v8 = sub_1B3FCC450(a1, a2, v7);

  if (v8)
  {
    if (qword_1EB879FB0 != -1)
    {
      swift_once();
    }

    v9 = sub_1B405D0F4();
    __swift_project_value_buffer(v9, qword_1EB883CF8);
    _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
    v10 = sub_1B405D0D4();
    v11 = sub_1B405D9D4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1B3F95078(a1, a2, v22);
      _os_log_impl(&dword_1B3F73000, v10, v11, "Local save for SettingsGroup %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1B8C71C00](v13, -1, -1);
      MEMORY[0x1B8C71C00](v12, -1, -1);
    }

    swift_beginAccess();
    sub_1B3FB0B2C(a1, a2);
    swift_endAccess();
  }

  else
  {
    v14 = OBJC_IVAR____TtC18PhotosUIFoundationP33_5CEE39672A5892330B9CB7D6693D04B020UserDefaultsObserver_callbackByKey;
    swift_beginAccess();
    v15 = sub_1B3FA4098(a1, a2, *(v3 + v14));
    if (v15)
    {
      v16 = v15;
      swift_endAccess();
      v22[0] = a1;
      v22[1] = a2;
      v16(v22);
      sub_1B3F7BAA8(v16);
    }

    else
    {
      swift_endAccess();
      if (qword_1EB879FB0 != -1)
      {
        swift_once();
      }

      v17 = sub_1B405D0F4();
      __swift_project_value_buffer(v17, qword_1EB883CF8);
      _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
      v18 = sub_1B405D0D4();
      v19 = sub_1B405D9B4();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v22[0] = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_1B3F95078(a1, a2, v22);
        _os_log_impl(&dword_1B3F73000, v18, v19, "Missing callback for key change %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x1B8C71C00](v21, -1, -1);
        MEMORY[0x1B8C71C00](v20, -1, -1);
      }
    }
  }
}

uint64_t sub_1B3FAFD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_1B405D1B4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B405D1D4();
  v16 = *(v15 - 8);
  result = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    if (qword_1EB87A060 != -1)
    {
      result = swift_once();
    }

    if (qword_1EB87A068 == a5 && a2 != 0)
    {
      sub_1B3F8A5BC(0, &qword_1EB87A9D8);
      _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
      v27 = sub_1B405DA14();
      v22 = swift_allocObject();
      v22[2] = v6;
      v22[3] = a1;
      v22[4] = a2;
      aBlock[4] = sub_1B3FB0950;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B3F934F0;
      aBlock[3] = &block_descriptor_3;
      v23 = _Block_copy(aBlock);
      v24 = v6;

      sub_1B405D1C4();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1B3FB097C(qword_1EB87AA10, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BB48);
      sub_1B3F9358C();
      sub_1B405DB24();
      v25 = v27;
      MEMORY[0x1B8C6FA80](0, v20, v14, v23);
      _Block_release(v23);

      (*(v11 + 8))(v14, v10);
      return (*(v16 + 8))(v20, v15);
    }
  }

  return result;
}

uint64_t sub_1B3FB01D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      v4 = a1 == a3 && a2 == a4;
      if (v4 || (sub_1B405DEC4() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1B3FB021C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return sub_1B405E144();
  }

  sub_1B405E144();

  return sub_1B405D494();
}

uint64_t sub_1B3FB028C(uint64_t a1, uint64_t a2)
{
  sub_1B405E124();
  sub_1B405E144();
  if (a2)
  {
    sub_1B405D494();
  }

  return sub_1B405E154();
}

id sub_1B3FB0300()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC18PhotosUIFoundationP33_5CEE39672A5892330B9CB7D6693D04B020UserDefaultsObserver_callbackByKey;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C188);
  *&v0[v2] = sub_1B405D2A4();
  v3 = OBJC_IVAR____TtC18PhotosUIFoundationP33_5CEE39672A5892330B9CB7D6693D04B020UserDefaultsObserver_observedDefaults;
  sub_1B3F8A5BC(0, qword_1EB87B668);
  sub_1B3FB08FC();
  *&v0[v3] = sub_1B405D2A4();
  *&v0[OBJC_IVAR____TtC18PhotosUIFoundationP33_5CEE39672A5892330B9CB7D6693D04B020UserDefaultsObserver_locallySavingKeys] = MEMORY[0x1E69E7CD0];
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B3FB0400()
{
  v1 = *(v0 + 8);
  sub_1B405E124();
  sub_1B405E144();
  if (v1)
  {
    sub_1B405D494();
  }

  return sub_1B405E154();
}

id sub_1B3FB04A4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SettingsInMemoryLoader.__allocating_init(values:)(uint64_t a1)
{
  OUTLINED_FUNCTION_2_1();
  v2 = swift_allocObject();
  SettingsInMemoryLoader.init(values:)(a1);
  return v2;
}

uint64_t SettingsInMemoryLoader.init(values:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C168);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = a1;
  *(v1 + 16) = v3;
  return v1;
}

uint64_t sub_1B3FB05F0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t SettingsInMemoryLoader.__deallocating_deinit()
{

  v0 = OUTLINED_FUNCTION_2_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B3FB0714(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1B3FB0768(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18PhotosUIFoundation14SettingsLoaderC9LoadStyle33_5CEE39672A5892330B9CB7D6693D04B0LLO(uint64_t a1)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B3FB07F8(uint64_t a1, unsigned int a2)
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

uint64_t sub_1B3FB0838(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B3FB087C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1B3FB08A8()
{
  result = qword_1EB87A070;
  if (!qword_1EB87A070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87A070);
  }

  return result;
}

unint64_t sub_1B3FB08FC()
{
  result = qword_1EB87A078;
  if (!qword_1EB87A078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87A078);
  }

  return result;
}

uint64_t sub_1B3FB097C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1B3FB09C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1B405D414();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

void sub_1B3FB0A28(uint8_t *a1, uint32_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, void (*a7)(void))
{
  v11 = sub_1B405D0B4();
  v12 = sub_1B405DA54();
  v13 = sub_1B405D084();
  v16 = a1;
  _os_signpost_emit_with_name_impl(&dword_1B3F73000, v11, v12, v13, a5, a6, a1, a2);
  a7();
  if (!v18)
  {
    v14 = sub_1B405DA44();
    v15 = sub_1B405D084();
    _os_signpost_emit_with_name_impl(&dword_1B3F73000, v11, v14, v15, a5, a6, v16, a2);
  }
}

uint64_t sub_1B3FB0B2C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1B405E124();
  sub_1B405D494();
  v6 = sub_1B405E154();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_1B405DEC4() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B3FCE0F0();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_1B3FB0C54(v8);
  *v2 = v15;
  return v13;
}

unint64_t sub_1B3FB0C54(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1B405DB34();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1B405E124();
        _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
        sub_1B405D494();
        v10 = sub_1B405E154();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1B3FB0E34(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[10];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B3FB0F24;

  return sub_1B3FAE9A0(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1B3FB0F24()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void __swiftcall PhotosItemListChangeDetails.init(from:to:itemChangeDetails:)(PhotosUIFoundation::PhotosItemListChangeDetails *__return_ptr retstr, Swift::Int from, Swift::Int to, PXArrayChangeDetails *itemChangeDetails)
{
  retstr->fromItemListVersion = from;
  retstr->toItemListVersion = to;
  retstr->itemChangeDetails.super.isa = itemChangeDetails;
}

uint64_t PhotosItemListChangeDetails.description.getter()
{
  v1 = *(v0 + 16);
  sub_1B405DBC4();
  MEMORY[0x1B8C6F500](0xD00000000000001DLL, 0x80000001B40765E0);
  v2 = sub_1B405DE64();
  MEMORY[0x1B8C6F500](v2);

  MEMORY[0x1B8C6F500](15917, 0xE200000000000000);
  v3 = sub_1B405DE64();
  MEMORY[0x1B8C6F500](v3);

  MEMORY[0x1B8C6F500](0x6168436D65746920, 0xED00003A7365676ELL);
  v4 = [v1 description];
  v5 = sub_1B405D444();
  v7 = v6;

  MEMORY[0x1B8C6F500](v5, v7);

  MEMORY[0x1B8C6F500](62, 0xE100000000000000);
  return 0;
}

uint64_t PhotosItemListChangeDetails.assertValidIncrementalChanges<A>(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 48);
  v7(a3, a4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1B405D704();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_23();

  sub_1B405DDD4();
  swift_getWitnessTable();
  sub_1B405D564();

  v7(a3, a4);
  OUTLINED_FUNCTION_0_23();

  sub_1B405D564();
}

uint64_t sub_1B3FB1504(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_1B3FB161C(uint64_t result, uint64_t a2, int a3, int a4, id a5, int a6, uint64_t a7, uint64_t a8, SEL *a9)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = [a5 *a9];
    if ((result & 0x8000000000000000) == 0)
    {
      sub_1B405CE94();
      return (*(a8 + 72))(a2, a7, a8);
    }
  }

  __break(1u);
  return result;
}

uint64_t static PhotosItemListChangeDetails.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v4 = a2[2];
  v5 = a1[2];
  v6 = v5;
  v7 = v4;
  if (v5 == v4)
  {
    v3 = 1;
  }

  else
  {
    v3 = [v6 isEqual:v7];
  }

  return v3;
}

id static PhotosItemListChangeDetails.+ infix(_:_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a2[1];
  if (a1[1] == *a2)
  {
    v6 = [a1[2] changeDetailsByAddingChangeDetails_];
  }

  else
  {
    v6 = [objc_opt_self() changeDetailsWithNoIncrementalChanges];
  }

  result = v6;
  *a3 = v4;
  a3[1] = v5;
  a3[2] = result;
  return result;
}

uint64_t static PhotosItemListChangeDetails.calculateChangeDetails<A, B, C>(from:to:allItemsChanged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v14 = sub_1B3FB1878(a1, a2, a3, a4, a5, a6, a7, a8);
  v15 = (*(*(a7 + 8) + 8))(a5);
  result = (*(*(a8 + 8) + 8))(a6);
  *a9 = v15;
  a9[1] = result;
  a9[2] = v14;
  return result;
}

id sub_1B3FB1878(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  if (AssociatedTypeWitness == swift_getAssociatedTypeWitness())
  {
    v15 = (*(a7 + 48))(a5, a7);
    (*(a8 + 48))(a6, a8);
    v16 = sub_1B405DD24();

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v18 = sub_1B3FB1A8C(v15, v16, a3 & 1, AssociatedTypeWitness, AssociatedConformanceWitness);

    return v18;
  }

  else
  {
    v13 = [objc_opt_self() changeDetailsWithNoIncrementalChanges];

    return v13;
  }
}

id sub_1B3FB1A8C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  }

  else
  {
    sub_1B405D644();
  }

  v7 = sub_1B405DD24();

  sub_1B3F8A504();
  v8 = sub_1B405DD24();
  v9 = sub_1B405DD24();
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  return sub_1B3FB1D18(v8, v9, v7, sub_1B3FB1F94, v10);
}

uint64_t sub_1B3FB1B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v16[-v11];
  sub_1B3F87FBC(v10, v16);
  swift_dynamicCast();
  sub_1B3F87FBC(a2, v16);
  swift_dynamicCast();
  if (sub_1B405D3B4())
  {
    v13 = -1;
  }

  else
  {
    v13 = sub_1B405D3A4() & 1;
  }

  v14 = *(v5 + 8);
  v14(v8, a3);
  v14(v12, a3);
  return v13;
}

id sub_1B3FB1D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1B405D5D4();

  v8 = sub_1B405D5D4();

  v9 = sub_1B405D5D4();

  if (a4)
  {
    v13[4] = a4;
    v13[5] = a5;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_1B3FB1E68;
    v13[3] = &block_descriptor_4;
    v10 = _Block_copy(v13);
  }

  else
  {
    v10 = 0;
  }

  v11 = [swift_getObjCClassFromMetadata() changeDetailsFromArray:v7 toArray:v8 changedObjects:v9 objectComparator:v10];
  _Block_release(v10);

  return v11;
}

uint64_t sub_1B3FB1E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v9[3] = swift_getObjectType();
  v9[0] = a2;
  v8[3] = swift_getObjectType();
  v8[0] = a3;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = v5(v9, v8);

  __swift_destroy_boxed_opaque_existential_1(v8);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v6;
}

uint64_t sub_1B3FB1F14(uint64_t a1, int a2)
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

uint64_t sub_1B3FB1F54(uint64_t result, int a2, int a3)
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

void lerp<A>(_:_:mix:)()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0;
  v24[0] = v3;
  v24[1] = v2;
  v24[2] = v4;
  v24[3] = v5;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_0_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_3_12();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v24 - v19;
  OUTLINED_FUNCTION_11_1();
  swift_getAssociatedConformanceWitness();
  sub_1B405E064();
  OUTLINED_FUNCTION_8_3();
  sub_1B405DEA4();
  sub_1B405DD94();
  v21 = *(v9 + 8);
  v21(v14, v1);
  sub_1B405D854();
  v22 = OUTLINED_FUNCTION_12_2();
  (v21)(v22);
  sub_1B405D854();
  OUTLINED_FUNCTION_10_1();
  sub_1B405DD84();
  v23 = OUTLINED_FUNCTION_12_2();
  (v21)(v23);
  v21(v20, v1);
  OUTLINED_FUNCTION_13();
}

uint64_t FloatingPoint.isEqual(to:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v17 - v12;
  sub_1B405DD94();
  sub_1B405E074();
  v14 = *(v5 + 8);
  v14(v10, a3);
  v15 = sub_1B405D3D4();
  v14(v13, a3);
  return v15 & 1;
}

void BinaryFloatingPoint.px_easeOut.getter()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0;
  v15[1] = v2;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_3_12();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - v11;
  swift_getAssociatedConformanceWitness();
  sub_1B405E064();
  OUTLINED_FUNCTION_8_3();
  sub_1B405DEA4();
  sub_1B405DD94();
  v13 = *(v6 + 8);
  v14 = OUTLINED_FUNCTION_11_1();
  v13(v14);
  sub_1B405D854();
  (v13)(v12, v1);
  OUTLINED_FUNCTION_13();
}

void BinaryFloatingPoint.px_easeInEaseOut.getter()
{
  OUTLINED_FUNCTION_14_0();
  v51 = v0;
  v2 = v1;
  v54 = v3;
  v53 = *(*(*(v4 + 16) + 16) + 8);
  v5 = *(v53 + 16);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_2_0();
  v50 = v8;
  OUTLINED_FUNCTION_6_5();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_17_1();
  v55 = v11;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_0_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_2_0();
  v47[3] = v18;
  OUTLINED_FUNCTION_6_5();
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_20_1();
  v49 = v21;
  OUTLINED_FUNCTION_6_5();
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_20_1();
  v48 = v24;
  OUTLINED_FUNCTION_6_5();
  MEMORY[0x1EEE9AC00](v25, v26);
  OUTLINED_FUNCTION_20_1();
  v52 = v27;
  OUTLINED_FUNCTION_6_5();
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = v47 - v32;
  (*(v15 + 16))(v47 - v32, v0, v2);
  swift_getAssociatedConformanceWitness();
  sub_1B405E054();
  OUTLINED_FUNCTION_8_3();
  sub_1B405DE94();
  OUTLINED_FUNCTION_10_1();
  v34 = sub_1B405D3B4();
  v35 = *(v15 + 8);
  v36 = OUTLINED_FUNCTION_12_2();
  v35(v36);
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_16_1();
  if (v34)
  {
    sub_1B405E064();
    v38 = v52;
    OUTLINED_FUNCTION_8_3();
    sub_1B405DEA4();
    OUTLINED_FUNCTION_13_2();
    sub_1B405D854();
    (v35)(v38, v2);
    OUTLINED_FUNCTION_13_2();
    sub_1B405D854();
  }

  else
  {
    v47[1] = v37;
    sub_1B405E064();
    v51 = v33;
    v39 = v48;
    OUTLINED_FUNCTION_8_3();
    v47[2] = v5;
    sub_1B405DEA4();
    OUTLINED_FUNCTION_16_1();
    sub_1B405E064();
    OUTLINED_FUNCTION_8_3();
    sub_1B405DEA4();
    v40 = v49;
    v41 = v53;
    sub_1B405D854();
    v42 = OUTLINED_FUNCTION_11_1();
    v35(v42);
    v50 = *(v41 + 8);
    sub_1B405DD94();
    (v35)(v40, v2);
    v43 = v39;
    v33 = v51;
    (v35)(v43, v2);
    OUTLINED_FUNCTION_13_2();
    sub_1B405D854();
    v44 = OUTLINED_FUNCTION_11_1();
    v35(v44);
    OUTLINED_FUNCTION_16_1();
    sub_1B405E064();
    OUTLINED_FUNCTION_8_3();
    sub_1B405DEA4();
    sub_1B405DD94();
    v45 = OUTLINED_FUNCTION_11_1();
    v35(v45);
  }

  v46 = OUTLINED_FUNCTION_12_2();
  v35(v46);
  (v35)(v33, v2);
  OUTLINED_FUNCTION_13();
}

void BinaryFloatingPoint.px_saturate.getter()
{
  OUTLINED_FUNCTION_14_0();
  v52 = v1;
  v53 = v0;
  v3 = v2;
  v5 = v4;
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_0_12();
  v50 = v7;
  v51 = v6;
  MEMORY[0x1EEE9AC00](v6, v8);
  OUTLINED_FUNCTION_2_0();
  v48 = v9;
  OUTLINED_FUNCTION_6_5();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_17_1();
  v47 = v12;
  OUTLINED_FUNCTION_0_0();
  v49 = v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_2_0();
  v54 = v16;
  OUTLINED_FUNCTION_6_5();
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v43 - v19;
  v21 = *(v3 + 16);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_3_12();
  MEMORY[0x1EEE9AC00](v24, v25);
  v26 = *(*(v21 + 24) + 8);
  v27 = sub_1B405D3E4();
  OUTLINED_FUNCTION_0_12();
  v45 = v28;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v29, v30);
  OUTLINED_FUNCTION_7_1();
  v44 = v31;
  swift_getAssociatedConformanceWitness();
  sub_1B405E064();
  sub_1B405DEA4();
  sub_1B405E064();
  v32 = v54;
  sub_1B405DEA4();
  v46 = v26;
  if (sub_1B405D3D4())
  {
    v33 = v49;
    v34 = *(v49 + 32);
    v35 = v47;
    v34(v47, v20, v5);
    v36 = v51;
    v34(v35 + *(v51 + 48), v32, v5);
    v37 = v50;
    v38 = *(v50 + 16);
    v54 = v27;
    v39 = v48;
    v38(v48, v35, v36);
    v43 = *(v36 + 48);
    v40 = v44;
    v34(v44, v39, v5);
    v41 = *(v33 + 8);
    v41(&v39[v43], v5);
    (*(v37 + 32))(v39, v35, v36);
    v42 = v54;
    v34(v40 + *(v54 + 36), &v39[*(v36 + 48)], v5);
    v41(v39, v5);
    Comparable.clamped(to:)(v40, v5);
    (*(v45 + 8))(v40, v42);
    OUTLINED_FUNCTION_13();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B3FB2E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1B405CF24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B3FB3A88();
  v11 = sub_1B405D3C4();
  v12 = *(v7 + 16);
  if (v11)
  {
    v13 = a1;
  }

  else
  {
    v13 = v3;
  }

  v12(v10, v13, v6);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C1A8) + 36);
  if ((sub_1B405D3B4() & 1) == 0)
  {
    return (*(v7 + 32))(a2, v10, v6);
  }

  (*(v7 + 8))(v10, v6);
  return (v12)(a2, a1 + v14, v6);
}

uint64_t Comparable.clamped(to:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_1_13();
  v9 = v8 - v7;
  sub_1B405E084();
  sub_1B405D3E4();
  sub_1B405E094();
  return (*(v4 + 8))(v9, a2);
}

id PXDateClampedToGregorianCalendar()
{
  v0 = sub_1B405CF24();
  OUTLINED_FUNCTION_0_12();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_1_13();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C198);
  OUTLINED_FUNCTION_18_1(v8);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v16 - v11;
  sub_1B405CF04();
  PXDateClampedToGregorianCalendar(date:)();
  v13 = *(v2 + 8);
  v13(v7, v0);
  v14 = 0;
  if (__swift_getEnumTagSinglePayload(v12, 1, v0) != 1)
  {
    v14 = sub_1B405CEF4();
    v13(v12, v0);
  }

  return v14;
}

void PXDateClampedToGregorianCalendar(date:)()
{
  OUTLINED_FUNCTION_14_0();
  v95 = v0;
  v96 = v1;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C1A0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_2_0();
  v93 = v4;
  OUTLINED_FUNCTION_6_5();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_17_1();
  v91 = v7;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C1A8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_7_1();
  v92 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C1B0);
  OUTLINED_FUNCTION_18_1(v11);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_7_1();
  v101 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C1B8);
  OUTLINED_FUNCTION_18_1(v15);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_7_1();
  v99 = v18;
  sub_1B405CEE4();
  OUTLINED_FUNCTION_0_12();
  v88 = v20;
  v89 = v19;
  MEMORY[0x1EEE9AC00](v19, v21);
  OUTLINED_FUNCTION_1_13();
  v107 = v23 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C198);
  v25 = OUTLINED_FUNCTION_18_1(v24);
  MEMORY[0x1EEE9AC00](v25, v26);
  OUTLINED_FUNCTION_2_0();
  v100 = v27;
  OUTLINED_FUNCTION_6_5();
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_17_1();
  v97 = v30;
  v31 = sub_1B405CF94();
  OUTLINED_FUNCTION_0_12();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  OUTLINED_FUNCTION_1_13();
  v38 = v37 - v36;
  v39 = sub_1B405CF54();
  OUTLINED_FUNCTION_0_12();
  v41 = v40;
  MEMORY[0x1EEE9AC00](v42, v43);
  OUTLINED_FUNCTION_1_13();
  v46 = v45 - v44;
  v106 = sub_1B405CFB4();
  OUTLINED_FUNCTION_0_12();
  v87 = v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  OUTLINED_FUNCTION_1_13();
  v52 = v51 - v50;
  v53 = sub_1B405CF24();
  OUTLINED_FUNCTION_0_12();
  v102 = v54;
  MEMORY[0x1EEE9AC00](v55, v56);
  OUTLINED_FUNCTION_2_0();
  v98 = v57;
  OUTLINED_FUNCTION_6_5();
  MEMORY[0x1EEE9AC00](v58, v59);
  OUTLINED_FUNCTION_20_1();
  v105 = v60;
  OUTLINED_FUNCTION_6_5();
  MEMORY[0x1EEE9AC00](v61, v62);
  v64 = &v87 - v63;
  sub_1B405CF14();
  (*(v41 + 104))(v46, *MEMORY[0x1E6969868], v39);
  sub_1B405CF64();
  (*(v41 + 8))(v46, v39);
  v65 = *MEMORY[0x1E6969A68];
  v66 = *(v33 + 104);
  v66(v38, v65, v31);
  v103 = v52;
  v104 = v64;
  v67 = sub_1B405CFA4();
  v68 = *(v33 + 8);
  v68(v38, v31);
  v66(v38, v65, v31);
  if (__OFSUB__(0, v67))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (__OFADD__(-v67, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v69 = v97;
  sub_1B405CF84();
  v68(v38, v31);
  if (OUTLINED_FUNCTION_9_2() == 1)
  {
    v70 = v102;
    v71 = v105;
    OUTLINED_FUNCTION_13_2();
    v72();
    if (OUTLINED_FUNCTION_9_2() != 1)
    {
      sub_1B3FB3BC0(v69, &qword_1EB87C198);
    }
  }

  else
  {
    v70 = v102;
    v71 = v105;
    (*(v102 + 32))(v105, v69, v53);
  }

  __swift_storeEnumTagSinglePayload(v99, 1, 1, v106);
  v73 = sub_1B405D014();
  __swift_storeEnumTagSinglePayload(v101, 1, 1, v73);
  sub_1B405CED4();
  sub_1B405CEC4();
  v74 = v100;
  sub_1B405CF74();
  if (OUTLINED_FUNCTION_9_2() == 1)
  {
    v75 = v98;
    OUTLINED_FUNCTION_13_2();
    v76();
    if (OUTLINED_FUNCTION_9_2() != 1)
    {
      sub_1B3FB3BC0(v74, &qword_1EB87C198);
    }
  }

  else
  {
    v75 = v98;
    (*(v70 + 32))(v98, v74, v53);
  }

  sub_1B3FB3A88();
  if (sub_1B405D3D4())
  {
    v77 = v91;
    (*(v70 + 16))(v91, v71, v53);
    v78 = v94;
    v79 = *(v70 + 32);
    v79(v77 + *(v94 + 48), v75, v53);
    v80 = v93;
    sub_1B3FB3AE0(v77, v93);
    v81 = *(v78 + 48);
    v82 = v92;
    v83 = OUTLINED_FUNCTION_10_1();
    (v79)(v83);
    v84 = *(v70 + 8);
    v84(v80 + v81, v53);
    sub_1B3FB3B50(v77, v80);
    v79(v82 + *(v90 + 36), v80 + *(v78 + 48), v53);
    v85 = OUTLINED_FUNCTION_12_2();
    (v84)(v85);
    v86 = v96;
    sub_1B3FB2E34(v82, v96);
    sub_1B3FB3BC0(v82, &qword_1EB87C1A8);
    (*(v88 + 8))(v107, v89);
    v84(v105, v53);
    (*(v87 + 8))(v103, v106);
    v84(v104, v53);
    __swift_storeEnumTagSinglePayload(v86, 0, 1, v53);
    OUTLINED_FUNCTION_13();
    return;
  }

LABEL_15:
  __break(1u);
}

unint64_t sub_1B3FB3A88()
{
  result = qword_1EB87C1C0;
  if (!qword_1EB87C1C0)
  {
    sub_1B405CF24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87C1C0);
  }

  return result;
}

uint64_t sub_1B3FB3AE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C1A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B3FB3B50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C1A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B3FB3BC0(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(a1);
  return a1;
}

void __swiftcall PXRegionOfInterest.inset(by:)(PXRegionOfInterest *__return_ptr retstr, UIEdgeInsets by)
{
  left = by.left;
  top = by.top;
  v9 = [v2 coordinateSpace];
  if (v9)
  {
    v10 = v9;
    [v2 rectInCoordinateSpace_];
    OUTLINED_FUNCTION_1_20();
    UIEdgeInsetsInsetRect(v11, v12, v13, v14, top, left);
    v15 = objc_allocWithZone(PXRegionOfInterest);
    v16 = OUTLINED_FUNCTION_0_24();
    v19 = [v17 v18];
    [v19 setImageRequester_];
    swift_unknownObjectRelease();
    v20 = OUTLINED_FUNCTION_0_24();
    PXRectNormalize(v20, v21, v22, v23, v3, v4, v5);
    OUTLINED_FUNCTION_1_20();
    [v2 imageContentsRect];
    [v19 setImageContentsRect_];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1B405DD74();
    __break(1u);
  }
}

uint64_t PXActionPerformerAbility.isActionSupported.getter(unint64_t a1)
{
  v2 = sub_1B405D0F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >= 3)
  {
    if (qword_1EB87B7A8 != -1)
    {
      swift_once();
    }

    v8 = qword_1EB883D28;
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_1B405DBC4();
    MEMORY[0x1B8C6F500](0xD000000000000010, 0x80000001B4076680);
    v17[1] = a1;
    type metadata accessor for PXActionPerformerAbility(0);
    sub_1B405DD34();
    v10 = v18;
    v9 = v19;
    v11 = v8;
    sub_1B405D104();
    _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
    v12 = sub_1B405D0D4();
    v13 = sub_1B405D9B4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1B3F95078(v10, v9, &v18);
      _os_log_impl(&dword_1B3F73000, v12, v13, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1B8C71C00](v15, -1, -1);
      MEMORY[0x1B8C71C00](v14, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = 6u >> (a1 & 7);
  }

  return v7 & 1;
}

uint64_t sub_1B3FB40E0()
{
  sub_1B3FB414C();
  result = sub_1B405DAA4();
  qword_1EB883D28 = result;
  return result;
}

unint64_t sub_1B3FB414C()
{
  result = qword_1EB87C1C8;
  if (!qword_1EB87C1C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB87C1C8);
  }

  return result;
}

uint64_t static PXDisplayLink.link(preferredFramesPerSecond:with:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PXDisplayLink.Target();
  v8 = swift_allocObject();

  sub_1B3FB4228(a1, a2 & 1, a3, a4);
  return v8;
}

void *sub_1B3FB4228(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v4[2] = 0;
  v4[3] = a3;
  v4[4] = a4;
  if (a2)
  {
    v11 = type metadata accessor for PXDisplayLink.Target();
    v10[0] = v4;
    objc_allocWithZone(PXDisplayLink);

    v6 = sub_1B3FB44A4(v10, sel_tickWithDisplayLink_);
  }

  else
  {
    v11 = type metadata accessor for PXDisplayLink.Target();
    v10[0] = v5;
    objc_allocWithZone(PXDisplayLink);

    v6 = sub_1B3FB4420(v10, sel_tickWithDisplayLink_, a1);
  }

  v8 = v5[2];
  v5[2] = v6;

  return v5;
}

id sub_1B3FB42F8()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result invalidate];
  }

  __break(1u);
  return result;
}

uint64_t PXDisplayLink.Target.__deallocating_deinit()
{
  PXDisplayLink.Target.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

id sub_1B3FB4420(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = [v3 initWithWeakTarget:sub_1B405DEB4() selector:a2 preferredFramesPerSecond:a3];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

id sub_1B3FB44A4(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = [v2 initWithWeakTarget:sub_1B405DEB4() selector:a2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v5;
}

uint64_t Array<A>.duplicatedElements.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  v9 = *(v8 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v41 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v34 - v15;
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v34 - v19;
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v34 - v22;
  v45 = sub_1B405D254();
  v39 = a3;
  v24 = sub_1B405D254();
  v44 = v24;
  OUTLINED_FUNCTION_2_16();
  v25 = sub_1B405D5F4();
  v43 = v25;
  OUTLINED_FUNCTION_2_16();
  if (v25 == sub_1B405D684())
  {
LABEL_11:

    v43 = v24;
    sub_1B405D834();
    swift_getWitnessTable();
    return sub_1B405D724();
  }

  v34 = v9;
  v35 = a1;
  v36 = (v7 + 16);
  v37 = (v7 + 32);
  v26 = (v7 + 8);
  v40 = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v38 = v7;
  while (1)
  {
    OUTLINED_FUNCTION_2_16();
    v27 = sub_1B405D664();
    sub_1B405D614();
    if ((v27 & 1) == 0)
    {
      break;
    }

    v28 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v25;
    v29 = *(v7 + 16);
    v29(v23, v28, a2);
LABEL_5:
    sub_1B405D6E4();
    (*v37)(v20, v23, a2);
    v29(v41, v20, a2);
    sub_1B405D834();
    v30 = sub_1B405D7E4();
    v31 = *v26;
    (*v26)(v16, a2);
    if ((v30 & 1) == 0)
    {
      v29(v41, v20, a2);
      a1 = v35;
      sub_1B405D7E4();
      v31(v16, a2);
    }

    v31(v20, a2);
    OUTLINED_FUNCTION_2_16();
    v32 = sub_1B405D684();
    v25 = v43;
    v7 = v38;
    if (v43 == v32)
    {
      v24 = v44;
      goto LABEL_11;
    }
  }

  result = sub_1B405DC04();
  if (v34 == 8)
  {
    v42 = result;
    v29 = *v36;
    (*v36)(v23, &v42, a2);
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t Array.randomized()(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = v19 - v13;
  v23 = v12;
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  v22 = sub_1B405D244();
  sub_1B405D704();
  v15 = (v5 + 8);
  while (1)
  {
    v20 = a1;
    swift_getWitnessTable();
    sub_1B405D894();
    v19[0] = v19[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BB08);
    sub_1B3FB5930();
    sub_1B405D8F4();
    if (v21)
    {
      break;
    }

    sub_1B405D734();
    sub_1B405D6B4();
    v16 = *v15;
    (*v15)(v10, a2);
    (*(v5 + 16))(v10, v14, a2);
    sub_1B405D694();
    v17 = OUTLINED_FUNCTION_2_16();
    v16(v17);
    a1 = v23;
  }

  return v22;
}

uint64_t Array.remove(at:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  OUTLINED_FUNCTION_1_21();
  v3 = sub_1B405D244();
  v9 = v3;
  v4 = sub_1B3FB4BCC(a1);
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = 32;
    do
    {
      v7 = *&v4[v6];
      if ((v7 & 0x8000000000000000) == 0 && v7 < sub_1B405D684())
      {
        sub_1B405D6B4();
        sub_1B405D6A4();
      }

      v6 += 8;
      --v5;
    }

    while (v5);

    return v9;
  }

  else
  {
  }

  return v3;
}

char *sub_1B3FB4BCC(uint64_t a1)
{
  v3 = sub_1B405D004();
  MEMORY[0x1EEE9AC00](v3, v4);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  sub_1B3FB59BC();
  v10 = sub_1B405D4F4();
  sub_1B3FB5034(&v10);
  v7 = v10;
  if (v1)
  {
  }

  return v7;
}

uint64_t Array.indexes(where:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a1;
  v34 = a2;
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_1_21();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v36 = sub_1B405DAC4();
  OUTLINED_FUNCTION_0_0();
  v15 = v14;
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v32 - v22;
  v32 = a5;
  sub_1B405CFF4();
  v38[1] = a3;
  v24 = a4;
  v25 = sub_1B405D704();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B8C6F570](v38, v25, WitnessTable);
  v37 = v38[0];
  sub_1B405DDD4();
  sub_1B405DDA4();
  v35 = sub_1B405DDC4();
  v27 = (v15 + 32);
  v28 = v10;
  v29 = (v10 + 32);
  for (i = (v28 + 8); ; (*i)(v5, v24))
  {
    sub_1B405DDB4();
    (*v27)(v23, v20, v36);
    if (__swift_getEnumTagSinglePayload(v23, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    (*v29)(v5, &v23[*(TupleTypeMetadata2 + 48)], v24);
    if (v33(v5))
    {
      sub_1B405CFE4();
    }
  }
}

uint64_t Array.pseudoRandomElement(seedUUID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (sub_1B405D684() < 1)
  {
    v11 = 1;
  }

  else
  {
    v8 = MEMORY[0x1B8C6F530](a1, a2);
    if (v8 < 0)
    {
      v9 = __OFSUB__(0, v8);
      result = -v8;
      if (v9)
      {
        __break(1u);
        return result;
      }
    }

    sub_1B405D734();
    v11 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a4, v11, 1, a3);
}

uint64_t sub_1B3FB5034(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B3FD15F4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1B3FB50A0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1B3FB50A0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B405DE54();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1B405D654();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1B3FB51F0(v7, v8, a1, v4);
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
    return sub_1B3FB5194(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B3FB5194(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (*v9 >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
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

void sub_1B3FB51F0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
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
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v10 < v9) ^ (v12 >= *(*a3 + 8 * v11++));
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v10 < v9)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
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

                v18 = *(v17 + 8 * v16);
                *(v17 + 8 * v16) = *(v17 + 8 * v15);
                *(v17 + 8 * v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
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
            v21 = *a3 + 8 * v8 - 8;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + 8 * v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *v25;
                if (*v25 >= v23)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v23;
                v25[1] = v26;
                --v25;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              v21 += 8;
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
        sub_1B3F97E1C();
        v7 = v70;
      }

      v28 = v7[2];
      v29 = v28 + 1;
      if (v28 >= v7[3] >> 1)
      {
        sub_1B3F97E1C();
        v7 = v71;
      }

      v7[2] = v29;
      v30 = v7 + 4;
      v31 = &v7[2 * v28 + 4];
      *v31 = v6;
      v31[1] = v8;
      v75 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v28)
      {
        while (1)
        {
          v32 = v29 - 1;
          v33 = &v30[2 * v29 - 2];
          v34 = &v7[2 * v29];
          if (v29 >= 4)
          {
            break;
          }

          if (v29 == 3)
          {
            v35 = v7[4];
            v36 = v7[5];
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_56:
            if (v38)
            {
              goto LABEL_96;
            }

            v50 = *v34;
            v49 = v34[1];
            v51 = __OFSUB__(v49, v50);
            v52 = v49 - v50;
            v53 = v51;
            if (v51)
            {
              goto LABEL_99;
            }

            v54 = v33[1];
            v55 = v54 - *v33;
            if (__OFSUB__(v54, *v33))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v52, v55))
            {
              goto LABEL_104;
            }

            if (v52 + v55 >= v37)
            {
              if (v37 < v55)
              {
                v32 = v29 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v29 < 2)
          {
            goto LABEL_98;
          }

          v57 = *v34;
          v56 = v34[1];
          v45 = __OFSUB__(v56, v57);
          v52 = v56 - v57;
          v53 = v45;
LABEL_71:
          if (v53)
          {
            goto LABEL_101;
          }

          v59 = *v33;
          v58 = v33[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_103;
          }

          if (v60 < v52)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v32 - 1 >= v29)
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

          v64 = &v30[2 * v32 - 2];
          v65 = *v64;
          v66 = &v30[2 * v32];
          v67 = v66[1];
          sub_1B3FB57BC((*a3 + 8 * *v64), (*a3 + 8 * *v66), (*a3 + 8 * v67), v75);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v67 < v65)
          {
            goto LABEL_91;
          }

          v68 = v7;
          v69 = v7[2];
          if (v32 > v69)
          {
            goto LABEL_92;
          }

          *v64 = v65;
          v64[1] = v67;
          if (v32 >= v69)
          {
            goto LABEL_93;
          }

          v29 = v69 - 1;
          memmove(&v30[2 * v32], v66 + 2, 16 * (v69 - 1 - v32));
          v68[2] = v69 - 1;
          v19 = v69 > 2;
          v7 = v68;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v39 = &v30[2 * v29];
        v40 = *(v39 - 8);
        v41 = *(v39 - 7);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_94;
        }

        v44 = *(v39 - 6);
        v43 = *(v39 - 5);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_95;
        }

        v46 = v34[1];
        v47 = v46 - *v34;
        if (__OFSUB__(v46, *v34))
        {
          goto LABEL_97;
        }

        v45 = __OFADD__(v37, v47);
        v48 = v37 + v47;
        if (v45)
        {
          goto LABEL_100;
        }

        if (v48 >= v42)
        {
          v62 = *v33;
          v61 = v33[1];
          v45 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v45)
          {
            goto LABEL_105;
          }

          if (v37 < v63)
          {
            v32 = v29 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
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

  sub_1B3FB5690(&v77, *a1, a3);
LABEL_89:
}

uint64_t sub_1B3FB5690(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1B3FD14E0(v5);
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
    sub_1B3FB57BC((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
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

uint64_t sub_1B3FB57BC(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_1B3FC98C8(a1, (a2 - a1) / 8, a4);
    v10 = &v4[8 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v4 >= *v6)
      {
        break;
      }

      v13 = v7 == v6;
      v6 += 8;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
    }

    v12 = *v4;
    v13 = v7 == v4;
    v4 += 8;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_1B3FC98C8(a2, (a3 - a2) / 8, a4);
  v10 = &v4[8 * v9];
LABEL_15:
  v14 = v6 - 8;
  for (v5 -= 8; v10 > v4 && v6 > v7; v5 -= 8)
  {
    v16 = *(v10 - 1);
    if (*v14 < v16)
    {
      v13 = v5 + 8 == v6;
      v6 -= 8;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 8)
    {
      *v5 = v16;
    }

    v10 -= 8;
  }

LABEL_28:
  v17 = (v10 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v17])
  {
    memmove(v6, v4, 8 * v17);
  }

  return 1;
}

unint64_t sub_1B3FB5930()
{
  result = qword_1EB87BB20;
  if (!qword_1EB87BB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB87BB08);
    sub_1B3F9117C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87BB20);
  }

  return result;
}

unint64_t sub_1B3FB59BC()
{
  result = qword_1EB87C1D0;
  if (!qword_1EB87C1D0)
  {
    sub_1B405D004();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87C1D0);
  }

  return result;
}

uint64_t PXAssetsDataSourceManagerCountModel.__allocating_init(_:)(void *a1)
{
  v2 = swift_allocObject();
  PXAssetsDataSourceManagerCountModel.init(_:)(a1);
  return v2;
}

uint64_t PXAssetsDataSourceManagerCountModel.init(_:)(void *a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  sub_1B405D054();
  *(v1 + 16) = sub_1B3FB5B78(a1);
  *(v1 + 24) = v4 & 1;
  *(v1 + 32) = a1;
  if (a1)
  {
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = objc_allocWithZone(type metadata accessor for PXObservableObservation());
    v7 = a1;

    v8 = sub_1B3F7B9C4(v7, sub_1B3FB5D1C, v5);

    v9 = &off_1F2B84D60;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  *(v2 + 40) = v8;
  *(v2 + 48) = v9;
  swift_unknownObjectRelease();
  return v2;
}

id sub_1B3FB5B78(id a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 dataSource];
  v2 = [v1 totalNumberOfItems];

  return v2;
}

uint64_t sub_1B3FB5BE8(uint64_t result, char a2)
{
  if ((*(v2 + 24) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 16) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 16) = result;
    *(v2 + 24) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v4);
  sub_1B3FB5E74();
}

uint64_t sub_1B3FB5CBC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B3FB5D24(a2);
  }

  return result;
}

uint64_t sub_1B3FB5D24(uint64_t result)
{
  if (result)
  {
    v2 = sub_1B3FB5B78(*(v1 + 32));
    v4 = v3 & 1;

    return sub_1B3FB5BE8(v2, v4);
  }

  return result;
}

uint64_t PXAssetsDataSourceManagerCountModel.assetCount.getter()
{
  swift_getKeyPath();
  sub_1B3FB5FEC();
  sub_1B405D044();

  return *(v0 + 16);
}

uint64_t sub_1B3FB5E0C@<X0>(uint64_t a1@<X8>)
{
  result = PXAssetsDataSourceManagerCountModel.assetCount.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t PXAssetsDataSourceManagerCountModel.deinit()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC18PhotosUIFoundation35PXAssetsDataSourceManagerCountModel___observationRegistrar;
  v2 = sub_1B405D064();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PXAssetsDataSourceManagerCountModel.__deallocating_deinit()
{
  PXAssetsDataSourceManagerCountModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1B3FB5FEC()
{
  result = qword_1EB879FC8;
  if (!qword_1EB879FC8)
  {
    type metadata accessor for PXAssetsDataSourceManagerCountModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB879FC8);
  }

  return result;
}

uint64_t type metadata accessor for PXAssetsDataSourceManagerCountModel()
{
  result = qword_1EB879FB8;
  if (!qword_1EB879FB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B3FB6098()
{
  result = sub_1B405D064();
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

void sub_1B3FB6174()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 24) = v2;
}

id PXAssetsDataSource.lastAssetReference.getter()
{
  [v0 lastItemIndexPath];
  if (v2)
  {
    return [v0 assetReferenceAtItemIndexPath_];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B3FB6258(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1, a1);
  v2 = &v5 - v1;
  (*(v3 + 16))(&v5 - v1);
  type metadata accessor for Forwarded();
  return Forwarded.wrappedValue.setter(v2);
}

uint64_t Forwarded.wrappedValue.setter(uint64_t a1)
{
  (*(v1 + 16))();
  OUTLINED_FUNCTION_0_25();
  v4 = *(v3 + 8);

  return v4(a1);
}

void (*Forwarded.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v5[2] = *(a2 + 16);
  OUTLINED_FUNCTION_0_0();
  *(v6 + 24) = v7;
  v9 = *(v8 + 64);
  v5[4] = __swift_coroFrameAllocStub(v9);
  v5[5] = __swift_coroFrameAllocStub(v9);
  (*v2)();
  return sub_1B3FB6468;
}

void sub_1B3FB6468(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    (*(v6 + 16))(*(*a1 + 32), v4, v5);
    Forwarded.wrappedValue.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    Forwarded.wrappedValue.setter(*(*a1 + 40));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Forwarded.init<A>(_:_:)@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t (**a3)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v29 = a1;
  v31 = a2;
  v32 = a3;
  v3 = *a2;
  v4 = MEMORY[0x1E69E6F98];
  v5 = *(*a2 + *MEMORY[0x1E69E6F98]);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_2_17(&v27);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v27 - v14;
  (*(v7 + 16))(&v27 - v14, v16, v5);
  v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v28 = v17;
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = *(v3 + *v4 + 8);
  *(v19 + 16) = v20;
  *(v19 + 24) = v5;
  v21 = *(v7 + 32);
  v21(v19 + v17, v15, v5);
  v22 = v30;
  v23 = v31;
  *(v19 + v18) = v31;
  v21(v22, v29, v5);
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  *(v24 + 24) = v5;
  v21(v24 + v28, v22, v5);
  *(v24 + v18) = v23;
  v25 = v32;
  *v32 = sub_1B3FB6800;
  v25[1] = v19;
  v25[2] = sub_1B3FB6960;
  v25[3] = v24;
}

uint64_t sub_1B3FB673C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = swift_readAtKeyPath();
  (*(*(*(v3 + *MEMORY[0x1E69E6F98] + 8) - 8) + 16))(a2);
  return v4(&v6, 0);
}

uint64_t sub_1B3FB6868(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1, a1);
  (*(v2 + 16))(&v4 - v1);
  return swift_setAtReferenceWritableKeyPath();
}

uint64_t Forwarded<A>.init<A>(_:_:)@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v31 = a3;
  v32 = a1;
  v34 = a2;
  v35 = a4;
  v5 = *a2;
  v6 = MEMORY[0x1E69E6F98];
  v7 = *(*a2 + *MEMORY[0x1E69E6F98]);
  OUTLINED_FUNCTION_0_0();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_2_17(&v30);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v30 - v16;
  (*(v9 + 16))(&v30 - v16, v18, v7);
  v19 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v30 = v19;
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = *(v5 + *v6 + 8);
  *(v21 + 2) = v22;
  *(v21 + 3) = v7;
  *(v21 + 4) = a3;
  v23 = *(v9 + 32);
  v23(v21 + v19, v17, v7);
  v24 = v33;
  v25 = v34;
  *(v21 + v20) = v34;
  v23(v24, v32, v7);
  v26 = swift_allocObject();
  *(v26 + 2) = v22;
  *(v26 + 3) = v7;
  v27 = v30;
  *(v26 + 4) = v31;
  v23(v26 + v27, v24, v7);
  *(v26 + v20) = v25;
  v28 = v35;
  *v35 = sub_1B3FB6BE8;
  v28[1] = v21;
  v28[2] = sub_1B3FB6E28;
  v28[3] = v26;
}

uint64_t sub_1B3FB6C4C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*a3 + *MEMORY[0x1E69E6F98] + 8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v10 - v6;
  swift_getAtKeyPath();
  v8 = sub_1B405D404();
  result = (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    (*(v5 + 16))(v7, a1, v4);
    return swift_setAtReferenceWritableKeyPath();
  }

  return result;
}

uint64_t objectdestroy_5Tm()
{
  OUTLINED_FUNCTION_0_25();
  v3 = *(v2 + 80);
  v4 = OUTLINED_FUNCTION_3_13();
  v5(v4);

  return MEMORY[0x1EEE6BDD0](v0, v1 + 8, v3 | 7);
}

uint64_t sub_1B3FB6E28()
{
  OUTLINED_FUNCTION_0_0();
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  return sub_1B3FB6C4C(v4, v0 + v2, *(v0 + ((*(v3 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1B3FB6E94()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B3FB6ED0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1B3FB6F10(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t UIInterfaceOrientation.rotationRadians.getter(unint64_t result)
{
  if (result >= 5)
  {
    result = sub_1B405DD74();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B3FB7024()
{
  *&v14 = &type metadata for PreferredBackgroundStyleKey;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BF48);
  v0 = sub_1B405D464();
  OUTLINED_FUNCTION_0_26(v0, v1, v2, v3, v4, v5, v6, v7, v11, v13, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BF50);
  v8 = swift_dynamicCast();
  v9 = v12;
  if (!v8)
  {
    return 0;
  }

  return v9;
}

uint64_t sub_1B3FB7100()
{
  *&v12 = &type metadata for CollectionTitleModelReferenceKey;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BF68);
  v0 = sub_1B405D464();
  OUTLINED_FUNCTION_0_26(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB87BF70);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B3FB71B0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *&v9 = &type metadata for PreferredChromeStyleKey;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BF58);
  v4 = sub_1B405D464();
  sub_1B3F8148C(v4, v5, a1, &v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BF60);
  result = swift_dynamicCast();
  v7 = v8;
  if (!result)
  {
    v7 = 2;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1B3FB7280(uint64_t a1)
{
  *&v6 = &type metadata for TopChromeAvoidanceAxisKey;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BF40);
  v2 = sub_1B405D464();
  sub_1B3F8148C(v2, v3, a1, &v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C120);
  type metadata accessor for PXAxis(0);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B3FB7330(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *&v15 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v3 = sub_1B405D464();
  OUTLINED_FUNCTION_0_26(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, v15);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C120);
  return swift_dynamicCast() & v14;
}

uint64_t sub_1B3FB73C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *a1;
  result = PhotosEnvironmentValues.preferredChromeStyle.getter(&v4);
  *a2 = v4;
  return result;
}

void (*PhotosEnvironmentValues.preferredChromeStyle.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *(v3 + 4) = v1;
  v4 = *v1;
  *v3 = &type metadata for PreferredChromeStyleKey;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BF58);
  v5 = sub_1B405D464();
  sub_1B3F8148C(v5, v6, v4, v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BF60);
  v7 = swift_dynamicCast();
  v8 = *(v3 + 41);
  if (!v7)
  {
    v8 = 2;
  }

  *(v3 + 40) = v8;
  return sub_1B3FB7540;
}

void sub_1B3FB7540(uint64_t a1)
{
  v1 = *a1;
  sub_1B3F9D3F8(*(*a1 + 40));

  free(v1);
}

uint64_t sub_1B3FB7580@<X0>(uint64_t a1@<X8>)
{
  result = PhotosEnvironmentValues.preferredBackgroundStyle.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t (*PhotosEnvironmentValues.preferredBackgroundStyle.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = sub_1B3FB7024();
  *(a1 + 8) = v3 & 1;
  return sub_1B3FB7650;
}

uint64_t sub_1B3FB7688@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosEnvironmentValues.topChromeAvoidanceAxis.getter();
  *a1 = result;
  return result;
}

uint64_t (*PhotosEnvironmentValues.topChromeAvoidanceAxis.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1B3FB7280(*v1);
  return sub_1B3FB7714;
}

uint64_t sub_1B3FB7738@<X0>(_BYTE *a1@<X8>)
{
  result = PhotosEnvironmentValues.insideCollectionDetailsView.getter();
  *a1 = result & 1;
  return result;
}

uint64_t (*PhotosEnvironmentValues.insideCollectionDetailsView.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1B3FB7330(*v1, &type metadata for InsideCollectionDetailsViewKey, &qword_1EB87BF38) & 1;
  return sub_1B3FB77E4;
}

uint64_t sub_1B3FB7844@<X0>(_BYTE *a1@<X8>)
{
  result = PhotosEnvironmentValues.wantsDynamicHeaderDisabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t (*PhotosEnvironmentValues.wantsDynamicHeaderDisabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1B3FB7330(*v1, &type metadata for WantsDynamicHeaderDisabledKey, &qword_1EB87BF30) & 1;
  return sub_1B3FB78F0;
}

uint64_t PhotosBasicItemListManager.__allocating_init(itemList:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PhotosBasicItemListManager.init(itemList:)(a1);
  return v2;
}

uint64_t sub_1B3FB79C8@<X0>(double *a1@<X0>, uint64_t (*a2)(double)@<X1>, _BYTE *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B3FB7A00(void (*a1)(unsigned __int8 *__return_ptr, double *), double a2)
{
  v4 = a2;
  a1(&v3, &v4);
  return v3;
}

uint64_t sub_1B3FB7A44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B3F7C9A0();
  *a1 = result;
  return result;
}

uint64_t sub_1B3FB7A9C@<X0>(void *a1@<X8>)
{
  result = sub_1B3FB7B9C();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1B3FB8024;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1B3FB7B0C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1B3FB7FE4;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1B3F7F018(v1);
  return sub_1B3FB7BE4(v4, v3);
}

uint64_t sub_1B3FB7B9C()
{
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_1_22();
  sub_1B3F7F018(v0);
  return OUTLINED_FUNCTION_1_22();
}

uint64_t sub_1B3FB7BE4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_1B3F7BAA8(v5);
}

uint64_t sub_1B3FB7C88(double a1)
{
  v2 = sub_1B3FB7B9C();
  if (!v2)
  {
    return 1;
  }

  v3 = v2(a1);
  v4 = OUTLINED_FUNCTION_1_22();
  sub_1B3F7BAA8(v4);
  return v3 & 1;
}

uint64_t (*sub_1B3FB7D18(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B3F7CD5C();
  return sub_1B3FB7D60;
}

uint64_t sub_1B3FB7D60(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1B3F7CDE4();
  }

  sub_1B3F7CDE4();
}

uint64_t sub_1B3FB7DB8@<X0>(uint64_t *a1@<X8>)
{
  result = _s18PhotosUIFoundation0A20BasicItemListManagerC7MutatorC10observableqd__vg_0();
  *a1 = result;
  return result;
}

uint64_t PhotosBasicItemListManager.deinit()
{

  sub_1B3F7BAA8(*(v0 + 32));

  v1 = qword_1EB87B2D8;
  v2 = sub_1B405D064();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PhotosBasicItemListManager.__deallocating_deinit()
{
  PhotosBasicItemListManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B3FB7FE4(double a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t sub_1B3FB8024@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t SettingsGroupDecoder.__allocating_init()()
{
  v0 = swift_allocObject();
  SettingsGroupDecoder.init()();
  return v0;
}

uint64_t SettingsGroupDecoder.decodeSettings<A>(ofType:groupName:overrides:fallbackSettings:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  if (*(a3 + 16))
  {
    type metadata accessor for SettingsGroupEncoder();
    swift_allocObject();
    SettingsGroupEncoder.init()();
    v10 = SettingsGroupEncoder.loadDefaultsByKey<A>(_:defaultSettings:)();

    swift_beginAccess();
    v6[2] = v10;

    swift_beginAccess();
    v6[3] = a3;

    v6[4] = a1;
    v6[5] = a2;
    _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();

    sub_1B3FB950C();
    _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();

    sub_1B405D7D4();
    return sub_1B3FB82E0(v6);
  }

  else
  {
    v12 = *(*(a5 - 8) + 16);

    return v12(a6, a4, a5);
  }
}

uint64_t SettingsGroupDecoder.init()()
{
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = MEMORY[0x1E69E7CC0];
  sub_1B405DD44();
  *(v0 + 56) = sub_1B405D2A4();
  return v0;
}

uint64_t sub_1B3FB82E0(void *a1)
{
  swift_beginAccess();
  a1[2] = 0;

  swift_beginAccess();
  a1[3] = 0;

  a1[4] = 0;
  a1[5] = 0;
}

uint64_t SettingsGroupDecoder.container<A>(keyedBy:)()
{

  sub_1B3FB83FC(v0);
  type metadata accessor for SettingsGroupDecodingContainer();
  swift_getWitnessTable();
  return sub_1B405DE24();
}

uint64_t sub_1B3FB845C()
{
  sub_1B3FB959C();
  v0 = OUTLINED_FUNCTION_2_18();
  return OUTLINED_FUNCTION_1_23(v0, v1);
}

uint64_t SettingsGroupDecoder.deinit()
{

  return v0;
}

uint64_t SettingsGroupDecoder.__deallocating_deinit()
{
  SettingsGroupDecoder.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t sub_1B3FB8574(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_1B405DBC4();

    v8 = 0xD00000000000001CLL;
    MEMORY[0x1B8C6F500](a1, a2);
    v6 = 34;
    v5 = 0xE100000000000000;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    sub_1B405DBC4();

    v8 = 34;
    MEMORY[0x1B8C6F500](a1, a2);
    v5 = 0x80000001B4076880;
    v6 = 0xD000000000000019;
LABEL_5:
    MEMORY[0x1B8C6F500](v6, v5);
    return v8;
  }

  return 0x6168636165726E55;
}

uint64_t sub_1B3FB869C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = dynamic_cast_existential_1_conditional(a7);
  if (v9)
  {
    v11 = v9;
    v12 = v10;
    v20[3] = v9;
    v20[4] = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
    v14 = v20[6];
    sub_1B3FB87E8(v11, a2, a3, v11, boxed_opaque_existential_1, v12);
    if (v14)
    {
      return __swift_deallocate_boxed_opaque_existential_1(v20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C268);
      return swift_dynamicCast();
    }
  }

  else
  {
    v16 = sub_1B405E1B4();
    v18 = v17;
    sub_1B3FB959C();
    OUTLINED_FUNCTION_2_18();
    *v19 = v16;
    *(v19 + 8) = v18;
    *(v19 + 16) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1B3FB87E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X6>, uint64_t a5@<X8>, uint64_t a6)
{
  v7 = v6;
  v37 = a1;
  v38 = a5;
  v10 = *(a4 - 8);
  v43 = a6;
  MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B405E1B4();
  v15 = v14;
  swift_beginAccess();
  v16 = a3[3];
  if (!v16)
  {
    swift_endAccess();
    v40 = 0u;
    v41 = 0u;
    goto LABEL_10;
  }

  sub_1B3F8148C(v13, v15, v16, &v40);
  swift_endAccess();
  if (!*(&v41 + 1))
  {
LABEL_10:
    sub_1B3F791B4(&v40);
    goto LABEL_11;
  }

  v36 = v13;
  sub_1B3F7AC48(&v40, v42);
  (*(v43 + 32))(v42, &v40, a4);
  if (!v6)
  {
    __swift_destroy_boxed_opaque_existential_1(v42);

    return (*(v10 + 32))(v38, v12, a4);
  }

  if (qword_1EB879FB0 != -1)
  {
    swift_once();
  }

  v17 = sub_1B405D0F4();
  __swift_project_value_buffer(v17, qword_1EB883CF8);

  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  v18 = sub_1B405D0D4();
  v19 = sub_1B405D9B4();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v40 = v35;
    *v20 = 136315650;
    if (a3[5])
    {
      v21 = a3[4];
      v22 = a3[5];
    }

    else
    {
      v22 = 0xE200000000000000;
      v21 = 16191;
    }

    _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
    v28 = sub_1B3F95078(v21, v22, &v40);

    *(v20 + 4) = v28;
    *(v20 + 12) = 2080;
    v29 = v36;
    *(v20 + 14) = sub_1B3F95078(v36, v15, &v40);
    *(v20 + 22) = 2080;
    v39 = v37;
    swift_getMetatypeMetadata();
    v30 = sub_1B405D464();
    v32 = sub_1B3F95078(v30, v31, &v40);

    *(v20 + 24) = v32;
    _os_log_impl(&dword_1B3F73000, v18, v19, "Failed to read value for %s.%s of expected type %s", v20, 0x20u);
    v33 = v35;
    swift_arrayDestroy();
    MEMORY[0x1B8C71C00](v33, -1, -1);
    MEMORY[0x1B8C71C00](v20, -1, -1);

    v13 = v29;
    __swift_destroy_boxed_opaque_existential_1(v42);
    v7 = 0;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v42);
    v7 = 0;
    v13 = v36;
  }

LABEL_11:
  swift_beginAccess();
  v23 = a3[2];
  if (!v23)
  {
    swift_endAccess();
    v40 = 0u;
    v41 = 0u;
    goto LABEL_16;
  }

  sub_1B3F8148C(v13, v15, v23, &v40);
  swift_endAccess();
  if (!*(&v41 + 1))
  {
LABEL_16:
    sub_1B3F791B4(&v40);
    sub_1B3FB959C();
    swift_allocError();
    *v26 = v13;
    *(v26 + 8) = v15;
    *(v26 + 16) = 0;
    return swift_willThrow();
  }

  sub_1B3F7AC48(&v40, v42);
  (*(v43 + 32))(v42, &v40, a4);
  if (v7)
  {
    v24 = v40;
    sub_1B3FB975C();
    swift_allocError();
    *v25 = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t sub_1B3FB8CB0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B405E1B4();
  v5 = v4;
  swift_beginAccess();
  v6 = *(a2 + 24);
  if (!v6)
  {
    swift_endAccess();

    v9 = 0u;
    v10 = 0u;
    goto LABEL_5;
  }

  sub_1B3F8148C(v3, v5, v6, &v9);
  swift_endAccess();

  if (!*(&v10 + 1))
  {
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:
  sub_1B3F791B4(&v9);
  return v7;
}

uint64_t sub_1B3FB8DE4(uint64_t a1, uint64_t a2)
{
  sub_1B3FB869C(a1, a1, *v2, *(v2 + 8), *(v2 + 16), *(a2 + 16), MEMORY[0x1E69E6370]);
  if (!v3)
  {
    v4 = v6;
  }

  return v4 & 1;
}

uint64_t sub_1B3FB8E30(uint64_t a1, uint64_t a2)
{
  result = sub_1B3FB869C(a1, a1, *v2, *(v2 + 8), *(v2 + 16), *(a2 + 16), MEMORY[0x1E69E6158]);
  if (!v3)
  {
    return v5;
  }

  return result;
}

double sub_1B3FB8E78(uint64_t a1, uint64_t a2)
{
  sub_1B3FB869C(a1, a1, *v2, *(v2 + 8), *(v2 + 16), *(a2 + 16), MEMORY[0x1E69E63B0]);
  if (!v3)
  {
    return v5;
  }

  return result;
}

float sub_1B3FB8EC0(uint64_t a1, uint64_t a2)
{
  sub_1B3FB869C(a1, a1, *v2, *(v2 + 8), *(v2 + 16), *(a2 + 16), MEMORY[0x1E69E6448]);
  if (!v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1B3FB9000()
{
  OUTLINED_FUNCTION_0_27();
  result = sub_1B3FB869C(v1, v1, v2, v3, v4, v5, v6);
  if (!v0)
  {
    return v8;
  }

  return result;
}

uint64_t sub_1B3FB9058()
{
  OUTLINED_FUNCTION_0_27();
  result = sub_1B3FB869C(v1, v1, v2, v3, v4, v5, v6);
  if (!v0)
  {
    return v8;
  }

  return result;
}

uint64_t sub_1B3FB90B0()
{
  OUTLINED_FUNCTION_0_27();
  result = sub_1B3FB869C(v1, v1, v2, v3, v4, v5, v6);
  if (!v0)
  {
    return v8;
  }

  return result;
}

uint64_t sub_1B3FB9108()
{
  OUTLINED_FUNCTION_0_27();
  result = sub_1B3FB869C(v1, v1, v2, v3, v4, v5, v6);
  if (!v0)
  {
    return v8;
  }

  return result;
}

uint64_t sub_1B3FB91BC()
{
  result = sub_1B405DEF4();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B3FB920C()
{
  result = sub_1B405DF04();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B3FB92B4()
{
  result = sub_1B405DF34();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B3FB9304()
{
  result = sub_1B405DF14();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B3FB9444()
{
  result = sub_1B405DF44();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1B3FB9494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (v4)
  {
    return v6;
  }

  return result;
}

unint64_t sub_1B3FB950C()
{
  result = qword_1EB87C1D8;
  if (!qword_1EB87C1D8)
  {
    type metadata accessor for SettingsGroupDecoder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87C1D8);
  }

  return result;
}

unint64_t sub_1B3FB959C()
{
  result = qword_1EB87C1E0[0];
  if (!qword_1EB87C1E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB87C1E0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18PhotosUIFoundation25SettingsGroupDecoderErrorO(uint64_t a1)
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

uint64_t sub_1B3FB9648()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B3FB9684(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B3FB96C4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1B8C71C00);
  }

  return result;
}

unint64_t sub_1B3FB975C()
{
  result = qword_1EB87C270;
  if (!qword_1EB87C270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87C270);
  }

  return result;
}

uint64_t sub_1B3FB97F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB87C2B0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v25 - v11;
  sub_1B3FBD228(a3, v25 - v11);
  v13 = sub_1B405D7A4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_1B3F92F94(v12, &unk_1EB87C2B0);
  }

  else
  {
    sub_1B405D794();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B405D744();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B405D484() + 32;
      OUTLINED_FUNCTION_0_8();
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1B3F92F94(a3, &unk_1EB87C2B0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B3F92F94(a3, &unk_1EB87C2B0);
  OUTLINED_FUNCTION_0_8();
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1B3FB9AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB87C2B0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v25 - v11;
  sub_1B3FBD228(a3, v25 - v11);
  v13 = sub_1B405D7A4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_1B3F92F94(v12, &unk_1EB87C2B0);
  }

  else
  {
    sub_1B405D794();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B405D744();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B405D484() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C340);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1B3F92F94(a3, &unk_1EB87C2B0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B3F92F94(a3, &unk_1EB87C2B0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C340);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id FilteredImageProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FilteredImageProvider.init()()
{
  v0 = objc_allocWithZone(type metadata accessor for FilteredImageProvider());
  v1 = FilteredImageProvider.init(unfilteredImageProvider:filterPromise:)(0, &unk_1B4071BE0, 0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v1;
}

id FilteredImageProvider.init(unfilteredImageProvider:filterPromise:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC18PhotosUIFoundation21FilteredImageProvider_lockedState;
  type metadata accessor for FilteredImageProvider.State();
  OUTLINED_FUNCTION_0_8();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E7CC8];
  *(v8 + 16) = 1100;
  *(v8 + 24) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C298);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *&v3[v7] = v10;
  *&v3[OBJC_IVAR____TtC18PhotosUIFoundation21FilteredImageProvider_unfilteredImageProvider] = a1;
  *(v10 + 16) = v8;
  v11 = &v3[OBJC_IVAR____TtC18PhotosUIFoundation21FilteredImageProvider_filterPromise];
  *v11 = a2;
  *(v11 + 1) = a3;
  v13.receiver = v3;
  v13.super_class = type metadata accessor for FilteredImageProvider();
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_1B3FB9FF0()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void sub_1B3FBA028(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18PhotosUIFoundation21FilteredImageProvider_lockedState);
  os_unfair_lock_lock((v3 + 24));
  sub_1B3FBA090((v3 + 16), a1);

  os_unfair_lock_unlock((v3 + 24));
}

uint64_t sub_1B3FBA090(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  swift_beginAccess();
  sub_1B3FA45D0(a2);
  if (v4)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v3 + 24);
    *(v3 + 24) = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB87C330);
    sub_1B405DD54();
    type metadata accessor for ImageRequest();
    sub_1B405DD64();
    *(v3 + 24) = v6;
  }

  return swift_endAccess();
}

uint64_t sub_1B3FBA18C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v34 = a5;
  v35 = a1;
  v36 = a2;
  v37 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB87C2B0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v33 - v13;
  v15 = *(v7 + OBJC_IVAR____TtC18PhotosUIFoundation21FilteredImageProvider_lockedState);
  os_unfair_lock_lock((v15 + 24));
  v16 = *(v15 + 16);
  v17 = *(v16 + 16);
  *(v16 + 16) = v17 + 1;
  os_unfair_lock_unlock((v15 + 24));
  v18 = *(v7 + OBJC_IVAR____TtC18PhotosUIFoundation21FilteredImageProvider_unfilteredImageProvider);
  v19 = *(v7 + OBJC_IVAR____TtC18PhotosUIFoundation21FilteredImageProvider_filterPromise + 8);
  v33 = *(v7 + OBJC_IVAR____TtC18PhotosUIFoundation21FilteredImageProvider_filterPromise);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_0_8();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v17;
  type metadata accessor for ImageRequest();
  swift_allocObject();
  v22 = a3;
  v23 = v34;

  swift_unknownObjectRetain();

  v24 = swift_unknownObjectRetain();
  v25 = sub_1B3FBA9B4(v24, v36, a3, v37, v23, v18, v33, v19, a6, a7, sub_1B3FBA418, v21);
  os_unfair_lock_lock((v15 + 24));
  sub_1B3FBA444((v15 + 16), v17, v25);
  os_unfair_lock_unlock((v15 + 24));
  v26 = sub_1B405D7A4();
  OUTLINED_FUNCTION_22_1(v26);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v25;
  v28 = OUTLINED_FUNCTION_15_2();
  sub_1B3FB97F8(v28, v29, v14, v30, v31);

  return v17;
}

void sub_1B3FBA3BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1B3FBA028(a2);
  }
}

uint64_t sub_1B3FBA444(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + 24);
  sub_1B3FA4D74(a3, a2);
  *(v5 + 24) = v7;
  return swift_endAccess();
}

uint64_t sub_1B3FBA4FC()
{
  OUTLINED_FUNCTION_2_8();
  sub_1B3FBAB0C();
  OUTLINED_FUNCTION_3_10();

  return v0();
}

void sub_1B3FBA634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1B405D264();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_1B3FBA6C4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB87C2B0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v17[-v5];
  v7 = *(v1 + OBJC_IVAR____TtC18PhotosUIFoundation21FilteredImageProvider_lockedState);
  os_unfair_lock_lock((v7 + 24));
  v8 = *(v7 + 16);
  swift_beginAccess();
  v9 = sub_1B3FA40F0(a1, *(v8 + 24));
  swift_beginAccess();
  sub_1B3FBCA30(a1);
  swift_endAccess();

  os_unfair_lock_unlock((v7 + 24));
  v10 = sub_1B405D7A4();
  OUTLINED_FUNCTION_22_1(v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v9;
  v12 = OUTLINED_FUNCTION_15_2();
  sub_1B3FB9AC4(v12, v13, v6, v14, v15);
}

uint64_t sub_1B3FBA80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B3FBA82C, 0, 0);
}

uint64_t sub_1B3FBA82C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return MEMORY[0x1EEE6DFA0](sub_1B3FBA85C, v1, 0);
  }

  **(v0 + 16) = 1;
  return OUTLINED_FUNCTION_2_19();
}

uint64_t sub_1B3FBA85C()
{
  OUTLINED_FUNCTION_2_8();
  sub_1B3FBB654();
  v0 = OUTLINED_FUNCTION_16_2();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

id FilteredImageProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FilteredImageProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B3FBA9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11, uint64_t a12)
{
  swift_defaultActor_initialize();
  *(v12 + 184) = 0;
  *(v12 + 208) = 0;
  *(v12 + 232) = 1;
  *(v12 + 240) = vdupq_n_s64(1uLL);
  *(v12 + 256) = 0;
  *(v12 + 112) = a1;
  *(v12 + 120) = a9;
  *(v12 + 128) = a10;
  *(v12 + 136) = a2;
  *(v12 + 144) = a3;
  *(v12 + 152) = a4;
  *(v12 + 160) = a5;
  *(v12 + 216) = a6;
  *(v12 + 224) = 0;
  *(v12 + 168) = a7;
  *(v12 + 176) = a8;
  *(v12 + 192) = a11;
  *(v12 + 200) = a12;
  return v12;
}

uint64_t sub_1B3FBAA74()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2_15(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_28(v3);

  return sub_1B3FBA4DC(v5, v6, v7, v1);
}

void sub_1B3FBAB0C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB87C2B0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = aBlock - v3;
  if ((*(v0 + 209) & 1) == 0 && (*(v0 + 208) & 1) == 0)
  {
    *(v0 + 208) = 1;
    v6 = *(v0 + 168);
    v5 = *(v0 + 176);
    v7 = sub_1B405D7A4();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v7);
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v6;
    v9[5] = v5;
    v9[6] = v8;

    sub_1B3FB97F8(0, 0, v4, &unk_1B4071DD8, v9);

    if (*(v0 + 216))
    {
      v10 = *(v0 + 216);
    }

    else
    {
      v10 = sub_1B3FBB288(v0);
    }

    v11 = *(v0 + 112);
    v12 = *(v0 + 120);
    v13 = *(v0 + 128);
    v14 = *(v0 + 136);
    v15 = *(v0 + 144);
    v16 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1B3FBD174;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B3FBB5A8;
    aBlock[3] = &block_descriptor_5;
    v17 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    v18 = [v10 requestImageForAsset:v11 targetSize:v14 contentMode:v15 options:v17 resultHandler:{v12, v13}];
    swift_unknownObjectRelease();
    _Block_release(v17);
    *(v0 + 224) = v18;
    *(v0 + 232) = 0;
  }
}

uint64_t sub_1B3FBAD58(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 56) = v7;
  *v7 = v6;
  v7[1] = sub_1B3FBAE44;

  return v9();
}

uint64_t sub_1B3FBAE44()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_1_19();
  *v7 = v6;
  *(v5 + 64) = v0;

  if (v0)
  {
    v8 = sub_1B3FBB0B0;
  }

  else
  {
    *(v5 + 72) = v3;
    v8 = sub_1B3FBAF5C;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1B3FBAF5C()
{
  OUTLINED_FUNCTION_2_8();
  *(v0 + 80) = *(v0 + 72);
  OUTLINED_FUNCTION_7_4();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v2 = OUTLINED_FUNCTION_6_6();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {

    OUTLINED_FUNCTION_3_10();

    return v5();
  }
}

uint64_t sub_1B3FBAFF4()
{
  OUTLINED_FUNCTION_2_8();
  sub_1B3FBB720(*(v0 + 80));

  v1 = OUTLINED_FUNCTION_16_2();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1B3FBB058()
{
  OUTLINED_FUNCTION_2_8();

  OUTLINED_FUNCTION_3_10();

  return v1();
}

uint64_t sub_1B3FBB0B0()
{
  OUTLINED_FUNCTION_13_3();
  v25 = v0;
  if (qword_1EB87B7B8 != -1)
  {
    OUTLINED_FUNCTION_9_3();
  }

  v1 = *(v0 + 64);
  v2 = sub_1B405D0F4();
  __swift_project_value_buffer(v2, qword_1EB87C278);
  v3 = v1;
  v4 = sub_1B405D0D4();
  v5 = sub_1B405D9B4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 64);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315138;
    *(v0 + 40) = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C328);
    v11 = sub_1B405D464();
    v13 = sub_1B3F95078(v11, v12, &v24);

    *(v8 + 4) = v13;
    OUTLINED_FUNCTION_21_1(&dword_1B3F73000, v14, v15, "Filter promised failed: %s");
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1_0();
  }

  else
  {
  }

  *(v0 + 80) = 0;
  OUTLINED_FUNCTION_7_4();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (!Strong)
  {

    OUTLINED_FUNCTION_3_10();
    OUTLINED_FUNCTION_20_2();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_20_2();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

id sub_1B3FBB288(uint64_t a1)
{
  v2 = [objc_opt_self() defaultManager];
  v3 = [v2 imageProviderForAsset_];

  *(a1 + 216) = v3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1B3FBB310(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB87C2B0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = sub_1B405D7A4();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();
  v10 = a1;
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();

  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v9;
  v11[5] = a1;
  v11[6] = a2;
  sub_1B3FB9AC4(0, 0, v7, &unk_1B4071DE8, v11);
}

uint64_t sub_1B3FBB45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B3FBB480, 0, 0);
}

uint64_t sub_1B3FBB480()
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_7_4();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B3FBB528, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_3_10();

    return v2();
  }
}

uint64_t sub_1B3FBB528()
{
  OUTLINED_FUNCTION_2_8();
  sub_1B3FBB7C0(*(v0 + 56), *(v0 + 64));

  v1 = OUTLINED_FUNCTION_16_2();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1B3FBB5A8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = sub_1B405D274();
  }

  else
  {
    v5 = 0;
  }

  v6 = a2;
  v4(a2, v5);
}

void sub_1B3FBB654()
{
  *(v0 + 209) = 1;
  if ((*(v0 + 232) & 1) == 0)
  {
    v1 = *(v0 + 216);
    if (v1)
    {
      [v1 cancelImageRequest_];
    }
  }
}

uint64_t sub_1B3FBB680(uint64_t result)
{
  if (*(v1 + 184) != (result & 1))
  {
    if (*(v1 + 184))
    {
      return (*(v1 + 192))();
    }

    else
    {
      result = sub_1B405DD74();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B3FBB710(char a1)
{
  v2 = *(v1 + 184);
  *(v1 + 184) = a1;
  return sub_1B3FBB680(v2);
}

void sub_1B3FBB720(void *a1)
{
  if ((*(v1 + 209) & 1) == 0)
  {
    v3 = a1;

    sub_1B3FBB76C(a1);
  }
}

void sub_1B3FBB76C(void *a1)
{
  v3 = *(v1 + 240);
  *(v1 + 240) = a1;
  sub_1B3FBCF70(a1);
  sub_1B3FBD0C0(v3);
  sub_1B3FBB890();

  sub_1B3FBD0C0(a1);
}

void *sub_1B3FBB7C0(void *result, uint64_t a2)
{
  if ((*(v2 + 209) & 1) == 0)
  {
    v4 = result;
    _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
    v5 = v4;

    return sub_1B3FBB828(v4, a2);
  }

  return result;
}

void *sub_1B3FBB828(void *a1, uint64_t a2)
{
  v4 = *(v2 + 248);
  *(v2 + 248) = a1;
  *(v2 + 256) = a2;
  sub_1B3FBCF80(a1);
  sub_1B3FBD07C(v4);
  sub_1B3FBB890();

  return sub_1B3FBD07C(a1);
}

uint64_t sub_1B3FBB890()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB87C2B0);
  result = MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v5 = &v12 - v4;
  v6 = v0[30];
  if (v6 != 1)
  {
    v7 = v0[31];
    if (v7 != 1)
    {
      v8 = v0[32];
      v9 = sub_1B405D7A4();
      __swift_storeEnumTagSinglePayload(v5, 1, 1, v9);
      v10 = sub_1B3FBCD94();
      v11 = swift_allocObject();
      v11[2] = v0;
      v11[3] = v10;
      v11[4] = v7;
      v11[5] = v8;
      v11[6] = v6;
      v11[7] = v0;
      swift_retain_n();
      sub_1B3FBCF70(v6);
      sub_1B3FBCF80(v7);
      sub_1B3FB97F8(0, 0, v5, &unk_1B4071DB0, v11);
    }
  }

  return result;
}

uint64_t sub_1B3FBB9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[13] = a4;
  v7[14] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB87C2B0);
  v7[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B3FBBA68, a7, 0);
}

uint64_t sub_1B3FBBA68()
{
  OUTLINED_FUNCTION_2_8();
  v1 = qword_1EB87ABA0;
  v2 = *(v0 + 104);
  if (v1 != -1)
  {
    swift_once();
  }

  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  *v3 = v0;
  v3[1] = sub_1B3FBBB3C;
  v4 = *(v0 + 120);
  v5 = *(v0 + 104);

  return sub_1B3FBC04C(v4, v5);
}

uint64_t sub_1B3FBBB3C()
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_11_2();
  v2 = *(v1 + 128);
  v3 = *v0;
  OUTLINED_FUNCTION_1_19();
  *v4 = v3;
  *(v6 + 152) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1B3FBBC44, v2, 0);
}

uint64_t sub_1B3FBBC44()
{
  OUTLINED_FUNCTION_13_3();
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v7 = *(v2 + 152);
  v6 = *(v2 + 160);
  v8 = sub_1B405D7A4();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v8);
  sub_1B405D784();
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  v9 = v5;

  v10 = v1;
  v11 = sub_1B405D774();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v7;
  v12[5] = v6;
  v12[6] = v1;
  v12[7] = v5;
  v12[8] = v4;
  v14 = OUTLINED_FUNCTION_15_2();
  sub_1B3FB97F8(v14, v15, v3, v16, v17);

  if (!v4)
  {
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_7;
  }

  *(v0 + 88) = sub_1B405D444();
  *(v0 + 96) = v18;
  sub_1B405DB64();
  sub_1B3FA4140(v0 + 16, v4, (v0 + 56));
  sub_1B3FA4FAC(v0 + 16);
  if (!*(v0 + 80))
  {
LABEL_7:
    sub_1B3F92F94(v0 + 56, &qword_1EB87C120);
LABEL_8:
    sub_1B3FBB710(1);
    goto LABEL_9;
  }

  if (!swift_dynamicCast() || (*(v0 + 160) & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v19 = *(v0 + 104);

  OUTLINED_FUNCTION_3_10();

  return v20();
}

uint64_t sub_1B3FBBE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a6;
  v8[5] = a8;
  v8[2] = a4;
  v8[3] = a5;
  sub_1B405D784();
  v8[6] = sub_1B405D774();
  v10 = sub_1B405D744();

  return MEMORY[0x1EEE6DFA0](sub_1B3FBBED0, v10, v9);
}

uint64_t sub_1B3FBBED0()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[5];
  v2 = v0[4];
  v3 = v0[2];

  v3(v2, v1);
  OUTLINED_FUNCTION_3_10();

  return v4();
}

id *sub_1B3FBBF48()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_1B3FBD0C0(v0[30]);
  sub_1B3FBD07C(v0[31]);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1B3FBBFA8()
{
  v0 = sub_1B3FBBF48();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B3FBBFD0()
{
  type metadata accessor for PXImageFilterer();
  swift_allocObject();
  result = sub_1B3FBC010();
  qword_1EB87ABB0 = result;
  return result;
}

uint64_t sub_1B3FBC010()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
  return v0;
}

uint64_t sub_1B3FBC04C(uint64_t a1, void *a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v6 = a2;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B3FBC0FC;

  return sub_1B3FBC428(a1, a2);
}

uint64_t sub_1B3FBC0FC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_1_19();
  *v6 = v5;
  *v6 = *v2;
  *(v5 + 48) = v1;

  v7 = *(v4 + 32);
  if (v1)
  {
    v8 = sub_1B3FBC290;
  }

  else
  {
    *(v5 + 56) = a1;
    v8 = sub_1B3FBC230;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1B3FBC230()
{
  OUTLINED_FUNCTION_2_8();

  v1 = *(v0 + 56);
  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_1B3FBC290()
{
  OUTLINED_FUNCTION_13_3();
  v19 = v0;
  if (qword_1EB87B7B8 != -1)
  {
    OUTLINED_FUNCTION_9_3();
  }

  v1 = *(v0 + 48);
  v2 = sub_1B405D0F4();
  __swift_project_value_buffer(v2, qword_1EB87C278);
  v3 = v1;
  v4 = sub_1B405D0D4();
  v5 = sub_1B405D9B4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    *(v0 + 16) = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C328);
    v11 = sub_1B405D464();
    v13 = sub_1B3F95078(v11, v12, &v18);

    *(v8 + 4) = v13;
    OUTLINED_FUNCTION_21_1(&dword_1B3F73000, v14, v15, "Failed to apply filter to image: %s");
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_20_2();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1B3FBC428(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B3FBC44C, v2, 0);
}

uint64_t sub_1B3FBC44C()
{
  OUTLINED_FUNCTION_13_3();
  v1 = v0[2];
  v2 = v0[3];
  if (!v1 || !v2)
  {
    v14 = v2;
    goto LABEL_8;
  }

  v3 = objc_allocWithZone(MEMORY[0x1E695F658]);
  v4 = v2;
  v5 = v1;
  v6 = [v3 initWithImage_];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1B405D414();
    [v5 setValue:v7 forKey:v8];

    v9 = [v5 outputImage];
    if (v9)
    {
      v10 = v9;
      v11 = *(v0[4] + 112);
      [v9 extent];
      v12 = [v11 createCGImage:v10 fromRect:?];
      if (v12)
      {
        v13 = v12;
        v2 = PXImageFromCGImage(v12);

LABEL_8:
        v15 = v0[1];

        return v15(v2);
      }

      sub_1B3FBCD40();
      swift_allocError();
      *v19 = 3;
      swift_willThrow();

      v5 = v7;
    }

    else
    {
      sub_1B3FBCD40();
      swift_allocError();
      *v18 = 2;
      swift_willThrow();

      v5 = v4;
      v10 = v7;
    }
  }

  else
  {
    sub_1B3FBCD40();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
    v10 = v4;
  }

  OUTLINED_FUNCTION_3_10();

  return v20();
}

uint64_t sub_1B3FBC6BC()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B3FBC6F4()
{
  v0 = sub_1B405D0F4();
  __swift_allocate_value_buffer(v0, qword_1EB87C278);
  __swift_project_value_buffer(v0, qword_1EB87C278);
  sub_1B405D4B4();
  return sub_1B405D0E4();
}

uint64_t sub_1B3FBC76C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B3FBC864;

  return v6(a1);
}

uint64_t sub_1B3FBC864()
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_11_2();
  v1 = *v0;
  OUTLINED_FUNCTION_1_19();
  *v2 = v1;

  OUTLINED_FUNCTION_3_10();

  return v3();
}

double sub_1B3FBC948@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = sub_1B3FA4614(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BFF0);
    sub_1B405DD54();

    sub_1B3F7AC48((*(v9 + 56) + 32 * v7), a3);
    sub_1B405DD64();
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

uint64_t sub_1B3FBCA30(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1B3FA45D0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB87C330);
  sub_1B405DD54();
  v6 = *(*(v8 + 56) + 8 * v5);
  type metadata accessor for ImageRequest();
  sub_1B405DD64();
  *v2 = v8;
  return v6;
}

uint64_t objectdestroy_5Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B3FBCB3C()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2_15(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_28(v3);

  return sub_1B3FBA80C(v5, v6, v7, v1);
}

uint64_t sub_1B3FBCC8C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1B3FBCCE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1B3FBCD40()
{
  result = qword_1EB87C320;
  if (!qword_1EB87C320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87C320);
  }

  return result;
}

unint64_t sub_1B3FBCD94()
{
  result = qword_1EB87ABC0[0];
  if (!qword_1EB87ABC0[0])
  {
    type metadata accessor for ImageRequest();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB87ABC0);
  }

  return result;
}

uint64_t sub_1B3FBCDEC()
{
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_8_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_28(v1);
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_20_2();

  return sub_1B3FBB9C4(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1B3FBCE90()
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_11_2();
  v1 = *v0;
  OUTLINED_FUNCTION_1_19();
  *v2 = v1;

  OUTLINED_FUNCTION_3_10();

  return v3();
}

id sub_1B3FBCF70(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

id sub_1B3FBCF80(id result)
{
  if (result != 1)
  {
    v2 = result;
    _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();

    return v2;
  }

  return result;
}

uint64_t sub_1B3FBCFC8()
{
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_8_4();
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[8];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_2_15(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_0_28(v5);
  OUTLINED_FUNCTION_19_1();

  return sub_1B3FBBE34(v7, v8, v9, v10, v11, v1, v2, v3);
}

void *sub_1B3FBD07C(void *result)
{
  if (result != 1)
  {
  }

  return result;
}

void sub_1B3FBD0C0(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1B3FBD0D0()
{
  OUTLINED_FUNCTION_8_4();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2_15(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_0_28(v3);
  OUTLINED_FUNCTION_19_1();

  return sub_1B3FBAD58(v5, v6, v7, v8, v9, v1);
}

uint64_t sub_1B3FBD17C()
{
  OUTLINED_FUNCTION_8_4();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2_15(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_0_28(v3);
  OUTLINED_FUNCTION_19_1();

  return sub_1B3FBB45C(v5, v6, v7, v8, v9, v1);
}

uint64_t sub_1B3FBD228(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB87C2B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B3FBD298(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1B3FBD38C;

  return v5(v2 + 32);
}

uint64_t sub_1B3FBD38C()
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_11_2();
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_1_19();
  *v5 = v4;

  *v3 = *(v2 + 32);
  OUTLINED_FUNCTION_3_10();

  return v6();
}

uint64_t sub_1B3FBD48C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_24(v1);

  return v4(v3);
}

uint64_t sub_1B3FBD51C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_24(v1);

  return v4(v3);
}

uint64_t sub_1B3FBD5AC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_24(v1);

  return v4(v3);
}

_BYTE *storeEnumTagSinglePayload for Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B3FBD71C()
{
  result = qword_1EB87C348;
  if (!qword_1EB87C348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87C348);
  }

  return result;
}

void OUTLINED_FUNCTION_21_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_22_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t PhotosItemListManager.forceMetadata(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a2, a1, AssociatedTypeWitness);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, AssociatedTypeWitness);
}

uint64_t sub_1B3FBDA30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = PhotosItemListManagerChangeDescriptor.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1B3FBDA70@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosItemListManagerChangeDescriptor.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B3FBDAF0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, _OWORD *))
{
  v4 = *(a2 + 96);
  v6[0] = *(a2 + 80);
  v6[1] = v4;
  a4(0, v6);
  return OUTLINED_FUNCTION_0_29();
}

uint64_t sub_1B3FBDB84(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1, a1);
  v2 = &v6 - v1;
  (*(v3 + 16))(&v6 - v1);
  v4 = type metadata accessor for UserDefault();
  return UserDefault.wrappedValue.setter(v2, v4);
}

uint64_t UserDefault.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  (*(v6 + 16))(v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C350);
  if (swift_dynamicCast())
  {
    sub_1B3F90E0C(v16, v18);
    v8 = v19;
    v9 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    if ((*(v9 + 8))(v8, v9))
    {
      v10 = *(v2 + *(a2 + 28));
      v11 = sub_1B405D414();
      [v10 removeObjectForKey_];

      (*(v6 + 8))(a1, v5);
      return __swift_destroy_boxed_opaque_existential_1(v18);
    }

    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_1B3FBDE78(v16);
  }

  v13 = *(v2 + *(a2 + 28));
  v14 = sub_1B405DEB4();
  v15 = sub_1B405D414();
  [v13 setObject:v14 forKey:v15];
  swift_unknownObjectRelease();

  return (*(v6 + 8))(a1, v5);
}

uint64_t sub_1B3FBDE78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C358);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*UserDefault.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v6 = *(a2 + 16);
  v5[2] = v6;
  v7 = *(v6 - 8);
  v5[3] = v7;
  v8 = *(v7 + 64);
  v5[4] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v5[5] = v9;
  UserDefault.wrappedValue.getter(a2, v9);
  return sub_1B3FBDFC0;
}

void sub_1B3FBDFC0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = *v2;
    (*(v6 + 16))((*a1)[4], v4, v5);
    UserDefault.wrappedValue.setter(v3, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    UserDefault.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1B3FBE0B0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1B3FBE1F4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t static SettingsGroup.settingsDidChangeExternally()()
{
  if (qword_1EB879FB0 != -1)
  {
    OUTLINED_FUNCTION_0_22();
  }

  v0 = sub_1B405D0F4();
  __swift_project_value_buffer(v0, qword_1EB883CF8);
  v1 = sub_1B405D0D4();
  v2 = sub_1B405D9D4();
  if (os_log_type_enabled(v1, v2))
  {
    buf = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *buf = 136315138;
    v13[0] = v12;
    v3 = OUTLINED_FUNCTION_6_7();
    v4(v3);

    v5 = sub_1B3F95078(v17, v18, v13);

    *(buf + 4) = v5;
    _os_log_impl(&dword_1B3F73000, v1, v2, "Settings %s changed externally", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1_0();
  }

  else
  {
  }

  v6 = OUTLINED_FUNCTION_6_7();
  v7(v6);
  v13[0] = v17;
  v13[1] = v18;
  v14 = v19;
  v15 = v20;
  v16 = v21;
  v8 = type metadata accessor for SettingsConfig();
  sub_1B3FBE954(v8, v9);
}

uint64_t (*static SettingsGroup.current.read(void *a1, uint64_t a2, uint64_t a3))()
{
  (*(a3 + 24))(v10, a2, a3);
  v6 = v10[6];

  v9[2] = a2;
  v9[3] = a3;
  v7 = type metadata accessor for SettingsConfig.SettingsBox();
  sub_1B3F923B8(sub_1B3FC06B4, v9, v6, v7, v7);

  a1[1] = *a1;
  return sub_1B3FBE7A8;
}

uint64_t static SettingsGroup.current.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(a2 + 24))(v10);
  v6 = v10[6];

  v9[2] = a1;
  v9[3] = a2;
  v7 = type metadata accessor for SettingsConfig.SettingsBox();
  sub_1B3F923B8(sub_1B3FC0A84, v9, v6, v7, v7);

  (*(*(a1 - 8) + 16))(a3, v11 + *(*v11 + 96), a1);
}

uint64_t static SettingsGroup.groupName.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(&v4);
  v2 = v4;

  return v2;
}

uint64_t sub_1B3FBE954(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v26 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v20 - v9;
  v11 = *v2;
  v12 = *(v2 + 8);
  v13 = *(v2 + 24);
  v25 = *(v2 + 16);
  v24 = *(v2 + 32);
  v23 = *(v2 + 48);
  v21 = v13;
  if (!v13)
  {
    if (qword_1EB87A0A0 != -1)
    {
      swift_once();
    }
  }

  v27[0] = 0;
  v22 = a1;
  v14 = *(a1 + 24);
  v15 = *(v14 + 48);

  v15(v4, v14);
  sub_1B3FADB18(v11, v12, v27, 0, v7, v4, v14, v10);
  v16 = *(v26 + 8);
  v17 = v16(v7, v4);
  v27[0] = v11;
  v27[1] = v12;
  v27[2] = v25;
  v27[3] = v21;
  v28 = v24;
  v29 = v23;
  MEMORY[0x1EEE9AC00](v17, v18);
  *(&v20 - 4) = v4;
  *(&v20 - 3) = v14;
  *(&v20 - 2) = v10;
  sub_1B3FBF298(sub_1B3FC0A78, (&v20 - 6), v22);

  return v16(v10, v4);
}

uint64_t static SettingsGroup.save()(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 24))(v20);
  OUTLINED_FUNCTION_0_30(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14, v15, v16, v17, v18, v19, v20[0], v20[1], v21);
  v10 = OUTLINED_FUNCTION_3_15();
  sub_1B3FBEC50(v10, v11);
  OUTLINED_FUNCTION_5_7();
}

uint64_t sub_1B3FBEC50(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = &v32 - v10;
  v12 = v2[3];
  v14 = v2[5];
  v13 = v2[6];
  v15 = *(v9 + 24);
  v35 = v3;
  v36 = v15;
  v16 = type metadata accessor for SettingsConfig.SettingsBox();

  sub_1B3F923B8(sub_1B3FC0A84, v34, v13, v16, v16);
  (*(v4 + 16))(v11, v37 + *(*v37 + 96), v3);
  v33 = v12;
  if (!v12)
  {
    if (qword_1EB87A0A0 != -1)
    {
      swift_once();
    }

    v33 = qword_1EB883D18;
  }

  v37 = v14;
  v17 = *(v15 + 48);
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  v17(v3, v15);
  v18 = type metadata accessor for SettingsValidationStore();
  v19 = SettingsValidationStore.validate(_:fallback:)(v11, v7, v18);
  v22 = *(v4 + 8);
  v20 = v4 + 8;
  v21 = v22;
  v22(v7, v3);

  if (qword_1EB879FB0 != -1)
  {
    swift_once();
  }

  v23 = sub_1B405D0F4();
  __swift_project_value_buffer(v23, qword_1EB883CF8);
  if ((v19 & 1) == 0)
  {
    v24 = sub_1B405D0D4();
    v25 = sub_1B405D9B4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v32 = v20;
      v27 = v21;
      v28 = v26;
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1B3F95078(0xD00000000000003BLL, 0x80000001B4076CA0, &v37);
      _os_log_impl(&dword_1B3F73000, v24, v25, "%s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1B8C71C00](v29, -1, -1);
      v30 = v28;
      v21 = v27;
      MEMORY[0x1B8C71C00](v30, -1, -1);
    }
  }

  sub_1B3FAED90(v11, v3, v15);

  return v21(v11, v3);
}

uint64_t static SettingsGroup.restoreDefaults()(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  return static SettingsGroup.performChanges(changes:)(sub_1B3FC06EC, v3, a1);
}

uint64_t static SettingsGroup.performChanges(changes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_1_25(a1, a2, a3);
  v7 = v6(v5);
  OUTLINED_FUNCTION_0_30(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
  v15 = OUTLINED_FUNCTION_3_15();
  sub_1B3FBF298(v4, v3, v15);
  OUTLINED_FUNCTION_5_7();
}

uint64_t static SettingsGroup.addObserver(didChange:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_1_25(a1, a2, a3);
  v7 = v6(v5);
  OUTLINED_FUNCTION_0_30(v7, v8, v9, v10, v11, v12, v13, v14, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 24) = v3;
  v16 = OUTLINED_FUNCTION_3_15();

  v17 = PhotosRegisteredObservable.addObserver(didChange:)(sub_1B3FC06F4, v15, v16, &protocol witness table for SettingsConfig<A>);

  return v17;
}

uint64_t static SettingsGroup.removeObserver(observation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 24))(v21, a2, a3);
  OUTLINED_FUNCTION_0_30(v4, v5, v6, v7, v8, v9, v10, v11, v14, v15, v16, v17, v18, v19, v20, v21[0], v21[1], v22);
  v12 = OUTLINED_FUNCTION_3_15();
  PhotosRegisteredObservable.removeObserver(handle:)(a1, v12);
  OUTLINED_FUNCTION_5_7();
}

uint64_t sub_1B3FBF298(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  if (dynamic_cast_existential_0_class_conditional(*(a3 + 16)))
  {
    return sub_1B3FBF99C(a1, a2, a3);
  }

  else
  {
    return sub_1B3FBFF14(a1, a2, a3);
  }
}

PhotosUIFoundation::SettingsGroupOptions sub_1B3FBF3B0@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = SettingsGroupOptions.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1B3FBF3F0@<X0>(uint64_t *a1@<X8>)
{
  result = SettingsGroupOptions.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t SettingsConfig.groupName.getter()
{
  v1 = *v0;
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  return v1;
}

uint64_t SettingsConfig.init(groupName:options:loader:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v45 = a1;
  v42 = *(a4 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1, a2);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v44 = &v36 - v15;
  v43 = *v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C360);
  v17 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C368);
  v18 = sub_1B405D2A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C370);
  v19 = swift_allocObject();
  *(v19 + 32) = 0;
  *(v19 + 16) = v18;
  *(v19 + 24) = 0;
  v40 = v17;
  *(v17 + 16) = v19;
  if (a3)
  {
    _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
    v20 = a3;
  }

  else
  {
    v21 = qword_1EB87A0A0;
    _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
    if (v21 != -1)
    {
      swift_once();
    }

    v20 = qword_1EB883D18;
  }

  sub_1B3FDE654(&v47);
  (*(a5 + 40))(&v47, a4, a5);
  v46 = v47;
  v22 = *(a5 + 48);
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  v22(a4, a5);
  v39 = v20;
  sub_1B3FADB18(v45, a2, &v46, 1, v13, a4, a5, v44);
  v41 = a2;

  v23 = v42;
  v24 = *(v42 + 8);
  v24(v13, a4);

  if (dynamic_cast_existential_0_class_conditional(a4) && (v43 & 1) == 0)
  {
    v37 = v24;
    v38 = a3;
    if (qword_1EB879FB0 != -1)
    {
      OUTLINED_FUNCTION_0_22();
    }

    v25 = sub_1B405D0F4();
    __swift_project_value_buffer(v25, qword_1EB883CF8);
    v26 = sub_1B405D0D4();
    v27 = sub_1B405D9B4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v46 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1B3F95078(0xD00000000000002BLL, 0x80000001B4076C20, &v46);
      _os_log_impl(&dword_1B3F73000, v26, v27, "%s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      v23 = v42;
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_1_0();
    }

    v24 = v37;
    a3 = v38;
  }

  v30 = v47;
  v31 = type metadata accessor for SettingsConfig.SettingsBox();
  v32 = v44;
  (*(v23 + 16))(v13, v44, a4);
  v46 = sub_1B3FBF8A4(v13);
  v33 = sub_1B3F92440(&v46, v31);

  result = (v24)(v32, a4);
  v35 = v41;
  *a6 = v45;
  a6[1] = v35;
  a6[2] = v43;
  a6[3] = a3;
  a6[4] = v40;
  a6[5] = v30;
  a6[6] = v33;
  return result;
}

uint64_t sub_1B3FBF8E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a3 - 8);
  (*(v8 + 8))(a1, a3);
  v6 = *(v8 + 16);

  return v6(a1, a2, a3);
}

uint64_t sub_1B3FBF99C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v46 = a2;
  v54 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v45 = &v44 - v11;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v44 - v13;
  v15 = *v3;
  v16 = v3[1];
  v17 = v3[2];
  v51 = v3[3];
  v52 = v17;
  v18 = v3[5];
  v50 = v3[4];
  v56 = v18;
  v57 = v15;
  v19 = v3[6];
  v55 = v20;
  v21 = *(v20 + 24);
  v59 = v4;
  v60 = v21;
  v22 = type metadata accessor for SettingsConfig.SettingsBox();
  v49 = v19;
  sub_1B3F923B8(sub_1B3FC0A84, v58, v19, v22, v22);
  v23 = *(*v61 + 96);
  v24 = *(v5 + 16);
  v47 = v61;
  v24(v14, v61 + v23, v4);
  type metadata accessor for SettingsGroupEncoder();
  swift_allocObject();
  SettingsGroupEncoder.init()();
  v25 = SettingsGroupEncoder.encode<A>(_:)(v14, v4);

  type metadata accessor for SettingsGroupDecoder();
  swift_allocObject();
  SettingsGroupDecoder.init()();
  (*(v21 + 48))(v4, v21);
  v26 = v45;
  SettingsGroupDecoder.decodeSettings<A>(ofType:groupName:overrides:fallbackSettings:)(v57, v16, v25, v8, v4, v45);

  v27 = *(v5 + 8);
  v53 = v5 + 8;
  v48 = v27;
  v27(v8, v4);
  v28 = v26;
  v54(v26);
  v61 = v56;
  v29 = type metadata accessor for SettingsValidationStore();
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  v54 = v14;
  v30 = SettingsValidationStore.validate(_:fallback:)(v26, v14, v29);

  (*(v21 + 24))(&v61, v4, v21);
  LODWORD(v29) = v63;

  v31 = v16;
  v32 = v57;

  if ((v29 & 0x100000) == 0)
  {
    if (qword_1EB879FB0 != -1)
    {
      swift_once();
    }

    v33 = sub_1B405D0F4();
    __swift_project_value_buffer(v33, qword_1EB883CF8);
    v61 = 0;
    v62 = 0xE000000000000000;
    sub_1B405DBC4();

    v61 = 0xD000000000000019;
    v62 = 0x80000001B4076C60;
    MEMORY[0x1B8C6F500](v32, v16);
    MEMORY[0x1B8C6F500](0xD000000000000012, 0x80000001B4076C80);
    v34 = v62;
    if (v30)
    {
    }

    else
    {
      v35 = v61;
      _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
      v36 = sub_1B405D0D4();
      v37 = sub_1B405D9B4();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = v31;
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v61 = v40;
        *v39 = 136315138;
        *(v39 + 4) = sub_1B3F95078(v35, v34, &v61);
        _os_log_impl(&dword_1B3F73000, v36, v37, "%s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v40);
        MEMORY[0x1B8C71C00](v40, -1, -1);
        v41 = v39;
        v31 = v38;
        v32 = v57;
        MEMORY[0x1B8C71C00](v41, -1, -1);
      }
    }
  }

  v61 = v32;
  v62 = v31;
  v63 = v52;
  v64 = v51;
  v65 = v50;
  v66 = v56;
  v67 = v49;
  sub_1B3FC0314(v28, v47, v55);

  v42 = v48;
  v48(v28, v4);
  return v42(v54, v4);
}

uint64_t sub_1B3FBFF14(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v3;
  v9 = v3[1];
  v37 = v10;
  v38 = v8;
  v11 = v3[2];
  v33 = v3[3];
  v34 = v11;
  v12 = v3[5];
  v32 = v3[4];
  v13 = v3[6];
  v14 = *(v10 + 24);
  v40 = v4;
  v41 = v14;
  v15 = type metadata accessor for SettingsConfig.SettingsBox();
  v31 = v13;
  sub_1B3F923B8(sub_1B3FC0A84, v39, v13, v15, v15);
  v16 = v42;
  v17 = *(*v42 + 96);
  v35 = v5;
  (*(v5 + 16))(v7, v42 + v17, v4);
  v36(v7);
  v42 = v12;
  v18 = type metadata accessor for SettingsValidationStore();
  v36 = v12;
  v19 = v9;
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  v20 = SettingsValidationStore.validate(_:fallback:)(v7, v16 + v17, v18);

  (*(v14 + 24))(&v42, v4, v14);
  LODWORD(v9) = v44;

  v21 = v38;

  if ((v9 & 0x100000) == 0)
  {
    if (qword_1EB879FB0 != -1)
    {
      swift_once();
    }

    v22 = sub_1B405D0F4();
    __swift_project_value_buffer(v22, qword_1EB883CF8);
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_1B405DBC4();

    v42 = 0xD000000000000019;
    v43 = 0x80000001B4076C60;
    MEMORY[0x1B8C6F500](v21, v19);
    MEMORY[0x1B8C6F500](0xD000000000000012, 0x80000001B4076C80);
    v23 = v43;
    if (v20)
    {
    }

    else
    {
      v24 = v42;
      _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
      v25 = sub_1B405D0D4();
      v26 = sub_1B405D9B4();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v42 = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_1B3F95078(v24, v23, &v42);
        _os_log_impl(&dword_1B3F73000, v25, v26, "%s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        MEMORY[0x1B8C71C00](v28, -1, -1);
        v29 = v27;
        v21 = v38;
        MEMORY[0x1B8C71C00](v29, -1, -1);
      }
    }
  }

  v42 = v21;
  v43 = v19;
  v44 = v34;
  v45 = v33;
  v46 = v32;
  v47 = v36;
  v48 = v31;
  sub_1B3FC0314(v7, v16, v37);

  return (*(v35 + 8))(v7, v4);
}

uint64_t sub_1B3FC0314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v11 = v3[1];
  v12 = v3[3];
  v20 = v3[2];
  v21 = v10;
  v19 = v12;
  v22 = *(v3 + 2);
  v13 = v3[6];
  v14 = type metadata accessor for SettingsConfig.SettingsBox();
  (*(v7 + 16))(v9, a1, v6);
  v15 = sub_1B3FBF8A4(v9);
  sub_1B3F923B8(sub_1B3FC0A5C, v15, v13, v14, MEMORY[0x1E69E7CA8] + 8);
  type metadata accessor for SettingsGroupEncoder();
  swift_allocObject();
  SettingsGroupEncoder.init()();
  v16 = SettingsGroupEncoder.changedKeys<A>(_:baseline:)();

  if (*(v16 + 16))
  {
    v23[1] = v21;
    v23[2] = v11;
    v23[3] = v20;
    v23[4] = v19;
    v24 = v22;
    v25 = v13;
    v23[0] = v16;
    PhotosRegisteredObservable.notifyObservers(changeData:)(v23, a3);
  }

  else
  {
  }
}

uint64_t sub_1B3FC0530(void *a1, uint64_t a2)
{

  *a1 = a2;
}

uint64_t sub_1B3FC065C()
{
  v0 = sub_1B3FC05EC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1B3FC0724()
{
  result = qword_1EB87C378;
  if (!qword_1EB87C378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87C378);
  }

  return result;
}

unint64_t sub_1B3FC077C()
{
  result = qword_1EB87C380;
  if (!qword_1EB87C380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87C380);
  }

  return result;
}

unint64_t sub_1B3FC07D4()
{
  result = qword_1EB87A088;
  if (!qword_1EB87A088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87A088);
  }

  return result;
}

unint64_t sub_1B3FC082C()
{
  result = qword_1EB87A080;
  if (!qword_1EB87A080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87A080);
  }

  return result;
}

uint64_t sub_1B3FC0900()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B3FC093C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1B3FC097C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1B3FC09C8()
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

uint64_t sub_1B3FC0ABC(unint64_t a1)
{
  v3 = *(v1 + 16) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x1EEE6DA60](a1);
  }

  v4 = v3;
  v5 = swift_task_alloc();
  *(v1 + 24) = v5;
  *v5 = v1;
  v5[1] = sub_1B3FC0BA0;
  a1 = v4;

  return MEMORY[0x1EEE6DA60](a1);
}

uint64_t sub_1B3FC0BA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id PXObservable.addObserver(using:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = objc_allocWithZone(type metadata accessor for PXObservableObservation());

  return sub_1B3F7B9C4(v2, sub_1B3FC0ECC, v5);
}

uint64_t sub_1B3FC0D38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = PXObservable.GenericChange.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1B3FC0D78@<X0>(uint64_t *a1@<X8>)
{
  result = PXObservable.GenericChange.rawValue.getter();
  *a1 = result;
  return result;
}

void sub_1B3FC0E4C()
{
  v1 = (v0 + OBJC_IVAR____TtC18PhotosUIFoundationP33_FE80CC77509C779DD805C2A85B1B119023PXObservableObservation_changeHandler);
  v2 = *(v0 + OBJC_IVAR____TtC18PhotosUIFoundationP33_FE80CC77509C779DD805C2A85B1B119023PXObservableObservation_changeHandler);
  *v1 = 0;
  v1[1] = 0;
  sub_1B3F7BAA8(v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong unregisterChangeObserver:v0 context:0];
  }
}

uint64_t sub_1B3FC0ECC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  return v3(&v5);
}

id sub_1B3FC0F58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXObservableObservation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static AnyPhotosObservableProperty.subscript.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = swift_readAtKeyPath();
  OUTLINED_FUNCTION_15();
  (*(v3 + 16))(a1);
  return v2(&v5, 0);
}

uint64_t sub_1B3FC10A4@<X0>(uint64_t a1@<X8>)
{
  sub_1B405DE84();
  type metadata accessor for AnyPhotosObservableProperty();
  sub_1B405DE84();
  swift_getTupleTypeMetadata3();

  return static AnyPhotosObservableProperty.subscript.getter(a1);
}

uint64_t sub_1B3FC1168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 32);
  v7 = *(a3 + a4 - 24);
  v22 = *(a3 + a4 - 8);
  v8 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v21 - v10;
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v21 - v13;
  (*(v15 + 16))(&v21 - v13, v16, v7);
  sub_1B405DE84();
  type metadata accessor for AnyPhotosObservableProperty();
  sub_1B405DE84();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v18 = *(a3 + *(TupleTypeMetadata3 + 48));
  v19 = *(a3 + *(TupleTypeMetadata3 + 64));
  (*(v8 + 16))(v11, a1, v6);

  return static AnyPhotosObservableProperty.subscript.setter(v11, v14, v18, v19, v22);
}

uint64_t static AnyPhotosObservableProperty.subscript.setter(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v85 = a1;
  v82 = a3;
  v8 = *a3;
  v9 = *MEMORY[0x1E69E6F98];
  v10 = *(*a4 + *MEMORY[0x1E69E6F98] + 8);
  v80 = *(v10 + 32);
  v11 = *(v80 + 1);
  v83 = *(v10 + 16);
  v68 = v11;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_0();
  v71 = v13;
  v72 = v12;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v14, v15);
  v69 = &v65 - v16;
  OUTLINED_FUNCTION_0_0();
  v18 = v17;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v19, v20);
  v73 = &v65 - v21;
  v22 = *(v8 + v9 + 8);
  OUTLINED_FUNCTION_0_0();
  v24 = v23;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v65 - v27;
  v30 = *v29;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_0();
  v77 = v32;
  v78 = v31;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v33, v34);
  v35 = *(a5 + 32);
  v75 = v30;
  v76 = &v65 - v36;
  v70 = a5;
  v35(v30, a5);

  v37 = a2;
  v38 = swift_readAtKeyPath();
  (*(v24 + 16))(v28);
  v38(v86, 0);
  v39 = swift_modifyAtReferenceWritableKeyPath();
  v79 = v24;
  v40 = v85;
  (*(v24 + 24))(v41, v85, v22);
  v39(v86, 0);
  v84 = v37;
  v74 = a4;
  v42 = v73;
  swift_getAtKeyPath();
  v43 = &v42[*(v10 + 44)];
  v44 = *v43;
  v45 = v43[1];
  sub_1B3FC1998(*v43);
  v46 = *(v18 + 8);
  v66 = v10;
  v67 = v18 + 8;
  v46(v42, v10);
  v86[0] = v44;
  v86[1] = v45;
  v81 = v22;
  type metadata accessor for AnyPhotosObservableProperty.ChangeDetectionType();
  v47 = AnyPhotosObservableProperty.ChangeDetectionType.detector.getter();
  v49 = v48;
  sub_1B3FC1ACC(v44);
  v80 = v28;
  LOBYTE(v47) = (v47)(v28, v40);

  if (v47)
  {
    v50 = v75;
    (*(v70 + 40))(v75, v70);
    swift_getAtKeyPath();

    v51 = v66;
    v52 = v71;
    v53 = v72;
    v54 = v69;
    (*(v71 + 16))(v69, &v42[*(v66 + 48)], v72);
    v46(v42, v51);
    swift_getAssociatedConformanceWitness();
    sub_1B405D5A4();
    v55 = v86[0];
    v56 = v78;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v58 = v76;
    v59 = v76;
    (*(AssociatedConformanceWitness + 40))(v55, v56, AssociatedConformanceWitness);

    OUTLINED_FUNCTION_15();
    (*(v60 + 8))(v84, v50);
    v61 = OUTLINED_FUNCTION_2_20();
    v55(v61);
    (*(v52 + 8))(v54, v53);
    (v55)(v80, v59);
    return (*(v77 + 8))(v58, v56);
  }

  else
  {

    OUTLINED_FUNCTION_15();
    (*(v63 + 8))(v84);
    v64 = OUTLINED_FUNCTION_2_20();
    (v42)(v64);
    (v42)(v80, v49);
    return (*(v77 + 8))(v76, v78);
  }
}

unint64_t sub_1B3FC1998(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

unint64_t AnyPhotosObservableProperty.ChangeDetectionType.detector.getter()
{
  v1 = *v0;
  switch(*v0)
  {
    case 0uLL:
      v2 = OUTLINED_FUNCTION_5_8();
      OUTLINED_FUNCTION_0_31(v2);
      v3 = sub_1B3FC25CC;
      goto LABEL_6;
    case 1uLL:
      v6 = OUTLINED_FUNCTION_5_8();
      OUTLINED_FUNCTION_0_31(v6);
      v3 = sub_1B3FC25C0;
      goto LABEL_6;
    case 2uLL:
      v4 = OUTLINED_FUNCTION_5_8();
      OUTLINED_FUNCTION_0_31(v4);
      v3 = sub_1B3FC25B4;
      goto LABEL_6;
    case 3uLL:
      v5 = OUTLINED_FUNCTION_5_8();
      OUTLINED_FUNCTION_0_31(v5);
      v3 = sub_1B3F9A878;
LABEL_6:
      v7 = v3;
      break;
    default:
      v7 = *v0;
      break;
  }

  sub_1B3FC1998(v1);
  return v7;
}

unint64_t sub_1B3FC1ACC(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

void (*static AnyPhotosObservableProperty.subscript.modify(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5))(uint64_t a1, char a2)
{
  v9 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v9;
  v9[1] = a4;
  v9[2] = a5;
  *v9 = a3;
  v10 = *a3;
  v11 = MEMORY[0x1E69E6F98];
  v9[3] = *(*a3 + *MEMORY[0x1E69E6F98] + 8);
  OUTLINED_FUNCTION_0_0();
  *(v12 + 32) = v13;
  v15 = *(v14 + 64);
  v9[5] = __swift_coroFrameAllocStub(v15);
  v16 = __swift_coroFrameAllocStub(v15);
  v9[6] = v16;
  v9[7] = *(v10 + *v11);
  OUTLINED_FUNCTION_0_0();
  v18 = v17;
  v9[8] = v17;
  v20 = *(v19 + 64);
  v9[9] = __swift_coroFrameAllocStub(v20);
  v9[10] = __swift_coroFrameAllocStub(v20);
  (*(v18 + 16))();
  static AnyPhotosObservableProperty.subscript.getter(v16);
  return sub_1B3FC1C9C;
}

void sub_1B3FC1C9C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  if (a2)
  {
    v5 = v2[8];
    v7 = v2[5];
    v6 = v2[6];
    v9 = v2[3];
    v8 = v2[4];
    v10 = v2[1];
    v15 = v2[7];
    v16 = v2[2];
    v11 = *v2;
    (*(v8 + 16))(v7, v6, v9);
    (*(v5 + 32))(v3, v4, v15);

    static AnyPhotosObservableProperty.subscript.setter(v7, v3, v11, v10, v16);
    (*(v8 + 8))(v6, v9);
  }

  else
  {
    v7 = v2[5];
    v6 = v2[6];
    v13 = v2[1];
    v12 = v2[2];
    v14 = *v2;

    static AnyPhotosObservableProperty.subscript.setter(v6, v4, v14, v13, v12);
  }

  free(v4);
  free(v3);
  free(v6);
  free(v7);

  free(v2);
}

unint64_t AnyPhotosObservableProperty.changeDetectionType.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 44));
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return sub_1B3FC1998(v4);
}

uint64_t AnyPhotosObservableProperty.init(wrappedValue:changeDescriptor:changeDetectionType:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  OUTLINED_FUNCTION_15();
  (*(v7 + 32))(a3);
  v8 = type metadata accessor for AnyPhotosObservableProperty();
  v9 = *(v8 + 48);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15();
  result = (*(v10 + 32))(a3 + v9, a1);
  v12 = (a3 + *(v8 + 44));
  *v12 = v5;
  v12[1] = v6;
  return result;
}

uint64_t AnyPhotosObservableProperty.ChangeDetectionType.description.getter()
{
  result = 0x49207463656A624FLL;
  switch(*v0)
  {
    case 0:
      return result;
    case 1:
      result = 0x7974696C61757145;
      break;
    case 2:
      result = 0x6E6F6973726556;
      break;
    case 3:
      result = 0x737961776C41;
      break;
    default:
      result = 0x6C61756E614DLL;
      break;
  }

  return result;
}

BOOL sub_1B3FC209C()
{
  v0 = sub_1B405DEB4();
  v1 = sub_1B405DEB4();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0 != v1;
}

BOOL sub_1B3FC20F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1, a1);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v11 = *(v6 + 16);
  v11(v26 - v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C438);
  swift_dynamicCast();
  v13 = v32;
  v14 = v33;
  v15 = __swift_project_boxed_opaque_existential_1(v31, v32);
  MEMORY[0x1EEE9AC00](v15, v15);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  PhotosAnyEquatable.init<A>(_:)(v17, v13, v14, v30);
  (v11)(v9, a2, a4);
  swift_dynamicCast();
  v19 = v28;
  v20 = v29;
  v21 = __swift_project_boxed_opaque_existential_1(v27, v28);
  MEMORY[0x1EEE9AC00](v21, v21);
  v23 = v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23);
  PhotosAnyEquatable.init<A>(_:)(v23, v19, v20, v26);
  LOBYTE(v19) = (v30[4])(v26);
  sub_1B3F9CA6C(v26);
  sub_1B3F9CA6C(v30);
  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return (v19 & 1) == 0;
}

BOOL sub_1B3FC23E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1, a1);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v11 = *(v6 + 16);
  v11(v20 - v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB87C440);
  swift_dynamicCast();
  v13 = v24;
  v14 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v15 = (*(v14 + 8))(v13, v14);
  (v11)(v9, a2, a4);
  swift_dynamicCast();
  v16 = v21;
  v17 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v18 = v15 != (*(v17 + 8))(v16, v17);
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v18;
}

uint64_t AnyPhotosObservableProperty<>.init(wrappedValue:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = xmmword_1B40724C0;
  return AnyPhotosObservableProperty.init(wrappedValue:_:changeDetectionType:)(a1, &v3, a2);
}

{
  v3 = xmmword_1B40724D0;
  return AnyPhotosObservableProperty.init(wrappedValue:_:changeDetectionType:)(a1, &v3, a2);
}

unint64_t sub_1B3FC266C(uint64_t a1)
{
  result = sub_1B3FC2694();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B3FC2694()
{
  result = qword_1EB87C390;
  if (!qword_1EB87C390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87C390);
  }

  return result;
}

unint64_t sub_1B3FC26EC()
{
  result = qword_1EB87C398;
  if (!qword_1EB87C398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87C398);
  }

  return result;
}

unint64_t sub_1B3FC2744()
{
  result = qword_1EB87C3A0;
  if (!qword_1EB87C3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87C3A0);
  }

  return result;
}

unint64_t sub_1B3FC279C()
{
  result = qword_1EB87C3A8;
  if (!qword_1EB87C3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87C3A8);
  }

  return result;
}

unint64_t sub_1B3FC27F4()
{
  result = qword_1EB87C3B0;
  if (!qword_1EB87C3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87C3B0);
  }

  return result;
}

unint64_t sub_1B3FC284C()
{
  result = qword_1EB87C3B8;
  if (!qword_1EB87C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87C3B8);
  }

  return result;
}

uint64_t sub_1B3FC28CC()
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    AssociatedTypeWitness = type metadata accessor for AnyPhotosObservableProperty.ChangeDetectionType();
    if (v2 <= 0x3F)
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_1B3FC29AC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v7 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = v7;
  }

  if (v11 <= 0x7FFFFFFB)
  {
    v12 = 2147483643;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v6 + 64);
  v14 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v15 = AssociatedTypeWitness;
  if (a2 <= v12)
  {
    goto LABEL_26;
  }

  v16 = ((v14 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v14) + *(*(AssociatedTypeWitness - 8) + 64);
  v17 = 8 * v16;
  if (v16 > 3)
  {
    goto LABEL_10;
  }

  v20 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
  if (HIWORD(v20))
  {
    v18 = *(a1 + v16);
    if (v18)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v20 <= 0xFF)
    {
      if (v20 < 2)
      {
        goto LABEL_26;
      }

LABEL_10:
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_26;
      }

LABEL_18:
      v21 = (v18 - 1) << v17;
      if (v16 > 3)
      {
        v21 = 0;
      }

      if (v16)
      {
        if (v16 > 3)
        {
          LODWORD(v16) = 4;
        }

        switch(v16)
        {
          case 2:
            LODWORD(v16) = *a1;
            break;
          case 3:
            LODWORD(v16) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v16) = *a1;
            break;
          default:
            LODWORD(v16) = *a1;
            break;
        }
      }

      return v12 + (v16 | v21) + 1;
    }

    v18 = *(a1 + v16);
    if (*(a1 + v16))
    {
      goto LABEL_18;
    }
  }

LABEL_26:
  if (v7 == v12)
  {
    v22 = a1;
    v10 = v7;
    v15 = v5;
LABEL_35:

    return __swift_getEnumTagSinglePayload(v22, v10, v15);
  }

  v23 = ((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v11 > 0x7FFFFFFB)
  {
    v22 = (v23 + v14 + 16) & ~v14;
    goto LABEL_35;
  }

  v24 = *v23;
  if (v24 >= 0xFFFFFFFF)
  {
    LODWORD(v24) = -1;
  }

  v25 = v24 + 1;
  v26 = v24 - 3;
  if (v25 >= 5)
  {
    return v26;
  }

  else
  {
    return 0;
  }
}

void sub_1B3FC2C38(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 84);
  if (v9 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = v9;
  }

  if (v13 <= 0x7FFFFFFB)
  {
    v14 = 2147483643;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v8 + 64);
  v16 = *(v11 + 80);
  v17 = ((v16 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v16) + *(*(AssociatedTypeWitness - 8) + 64);
  v18 = 8 * v17;
  if (a3 <= v14)
  {
    v19 = 0;
  }

  else if (v17 <= 3)
  {
    v22 = ((a3 - v14 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v14 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v17] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        return;
      case 2:
        *&a1[v17] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        return;
      case 3:
LABEL_50:
        __break(1u);
        return;
      case 4:
        *&a1[v17] = 0;
        goto LABEL_29;
      default:
LABEL_29:
        if (!a2)
        {
          return;
        }

LABEL_30:
        if (v9 == v14)
        {
          v25 = a1;
          v26 = a2;
          v12 = v9;
          AssociatedTypeWitness = v7;
        }

        else
        {
          v27 = (&a1[v15 + 7] & 0xFFFFFFFFFFFFFFF8);
          if (v13 <= 0x7FFFFFFB)
          {
            if (a2 > 0x7FFFFFFB)
            {
              *v27 = 0;
              v27[1] = 0;
              *v27 = a2 - 2147483644;
            }

            else
            {
              *v27 = (a2 + 3);
            }

            return;
          }

          v25 = (v27 + v16 + 16) & ~v16;
          v26 = a2;
        }

        __swift_storeEnumTagSinglePayload(v25, v26, v12, AssociatedTypeWitness);
        break;
    }
  }

  else
  {
    v20 = ~v14 + a2;
    if (v17 < 4)
    {
      v21 = (v20 >> v18) + 1;
      if (v17)
      {
        v24 = v20 & ~(-1 << v18);
        bzero(a1, v17);
        if (v17 == 3)
        {
          *a1 = v24;
          a1[2] = BYTE2(v24);
        }

        else if (v17 == 2)
        {
          *a1 = v24;
        }

        else
        {
          *a1 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        a1[v17] = v21;
        break;
      case 2:
        *&a1[v17] = v21;
        break;
      case 3:
        goto LABEL_50;
      case 4:
        *&a1[v17] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1B3FC2F60()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_18PhotosUIFoundation03AnyA18ObservablePropertyV19ChangeDetectionTypeOyxq__G(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B3FC2FB4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B3FC3008(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_1B3FC3064(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t PhotosNSCache.__allocating_init()()
{
  v0 = swift_allocObject();
  PhotosNSCache.init()();
  return v0;
}

uint64_t PhotosNSCache.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB87C450);
  OUTLINED_FUNCTION_0_32();
  type metadata accessor for PhotosNSCache.WrappedKey();
  OUTLINED_FUNCTION_0_32();
  type metadata accessor for PhotosNSCache.WrappedValue();
  *(v0 + 16) = _sSo14PXScrollDetentC18PhotosUIFoundationEABycfC_0();
  return v0;
}

uint64_t sub_1B3FC3174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 24);
  v7 = sub_1B405DAC4();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v18 - v11;
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a3, v6);
  (*(v8 + 16))(v12, a1, v7);
  return PhotosNSCache.subscript.setter(v12, v15);
}

uint64_t PhotosNSCache.subscript.setter(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1B3FC3570(a1, a2);
  (*(*(*(v5 + 80) - 8) + 8))(a2);
  v6 = sub_1B405DAC4();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

uint64_t _s18PhotosUIFoundation0A7NSCacheCyq_Sgxcig_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(*v4 + 10);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v17 - v9;
  v12 = *(v11 + 88);
  type metadata accessor for PhotosNSCache.WrappedKey();
  (*(v8 + 16))(v10, a1, v7);
  v13 = sub_1B3FC3AA8(v10);
  v14 = [v4[2] objectForKey_];

  if (v14)
  {
    (*(*(v12 - 8) + 16))(a3, &v14[*(*v14 + 104)], v12);

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v15, 1, v12);
}

void sub_1B3FC3570(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v18 = a2;
  v19 = a1;
  v4 = *v2;
  v5 = sub_1B405DAC4();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v18 - v9;
  v11 = *(v4 + 80);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v8, v13);
  v15 = &v18 - v14;
  type metadata accessor for PhotosNSCache.WrappedKey();
  (*(v12 + 16))(v15, v18, v11);
  v16 = sub_1B3FC3AA8(v15);
  type metadata accessor for PhotosNSCache.WrappedValue();
  (*(v6 + 16))(v10, v19, v5);
  v17 = sub_1B3FC3ADC(v10);
  if (v17)
  {
    [v3[2] setObject:v17 forKey:v16];
  }

  else
  {
    [v3[2] removeObjectForKey_];
  }
}

void (*PhotosNSCache.subscript.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v5;
  *v5 = v2;
  v6 = *v2;
  v7 = sub_1B405DAC4();
  v5[1] = v7;
  v8 = *(v7 - 8);
  v5[2] = v8;
  v9 = *(v8 + 64);
  v5[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v5[4] = v10;
  v11 = *(v6 + 80);
  v5[5] = v11;
  v12 = *(v11 - 8);
  v13 = v12;
  v5[6] = v12;
  v14 = *(v12 + 64);
  v5[7] = __swift_coroFrameAllocStub(v14);
  v5[8] = __swift_coroFrameAllocStub(v14);
  (*(v13 + 16))();
  _s18PhotosUIFoundation0A7NSCacheCyq_Sgxcig_0(a2, v15, v10);
  return sub_1B3FC393C;
}

void sub_1B3FC393C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  if (a2)
  {
    v5 = v2[5];
    v6 = v2[6];
    v8 = v2[3];
    v7 = v2[4];
    v9 = v2[1];
    v10 = v2[2];
    (*(v10 + 16))(v8, v7, v9);
    (*(v6 + 32))(v3, v4, v5);
    PhotosNSCache.subscript.setter(v8, v3);
    (*(v10 + 8))(v7, v9);
  }

  else
  {
    v8 = v2[3];
    v7 = v2[4];
    PhotosNSCache.subscript.setter(v7, v4);
  }

  free(v4);
  free(v3);
  free(v7);
  free(v8);

  free(v2);
}

id _sSo14PXScrollDetentC18PhotosUIFoundationEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_1B3FC3B18(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = *(v4 - 8);
  (*(v5 + 16))(&v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x68)], a1, v4);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  (*(v5 + 8))(a1, v4);
  return v6;
}

uint64_t sub_1B3FC3C14(void *a1)
{
  v1 = a1;
  v2 = sub_1B3FC3C48();

  return v2;
}

uint64_t sub_1B3FC3CB8(uint64_t a1)
{
  swift_getObjectType();
  sub_1B3F77C10(a1, v5);
  if (!v6)
  {
    sub_1B3F791B4(v5);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  v2 = sub_1B405D404();

  return v2 & 1;
}

uint64_t sub_1B3FC3DDC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_1B405DAF4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = sub_1B3FC3CB8(v8);

  sub_1B3F791B4(v8);
  return v6 & 1;
}

uint64_t sub_1B3FC3F0C(char *a1, uint64_t a2)
{
  v4 = *(*v2 + 88);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v12 - v7;
  if (__swift_getEnumTagSinglePayload(v6, 1, v4) == 1)
  {
    v9 = sub_1B405DAC4();
    (*(*(v9 - 8) + 8))(a1, v9);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v10 = *(v5 + 32);
    v10(v8, a1, v4);
    v10((v2 + *(*v2 + 104)), v8, v4);
  }

  return v2;
}

uint64_t sub_1B3FC4134()
{
  v0 = sub_1B3FC40C4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t PhotosNSCache.__deallocating_deinit()
{
  PhotosNSCache.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1B3FC4268()
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

uint64_t sub_1B3FC42FC()
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

uint64_t sub_1B3FC4390(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

Swift::Void __swiftcall UIViewController.configurePhotosSlideTransition()()
{
  v1 = v0;
  v2 = sub_1B3FC4460();
  v3 = sub_1B3FC4578();

  [v1 setTransitioningDelegate_];
  v4 = sub_1B3FC4460();
  v4[OBJC_IVAR____TtCE18PhotosUIFoundationCSo16UIViewControllerP33_245E59FB3AED492785587A094999446D14AssociatedData_isConfigured] = 1;
}

id sub_1B3FC4460()
{
  if (objc_getAssociatedObject(v0, &unk_1EB87C460))
  {
    sub_1B405DAF4();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (!*(&v5 + 1))
  {
    sub_1B3F791B4(v6);
    goto LABEL_8;
  }

  _s14AssociatedDataCMa();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v1 = [objc_allocWithZone(_s14AssociatedDataCMa()) init];
    objc_setAssociatedObject(v0, &unk_1EB87C460, v1, 1);
    return v1;
  }

  return v3;
}

uint64_t UIViewController.isConfiguredForPhotosSlideTransition.getter()
{
  v0 = sub_1B3FC4460();
  v1 = v0[OBJC_IVAR____TtCE18PhotosUIFoundationCSo16UIViewControllerP33_245E59FB3AED492785587A094999446D14AssociatedData_isConfigured];

  return v1;
}

id sub_1B3FC4578()
{
  v1 = OBJC_IVAR____TtCE18PhotosUIFoundationCSo16UIViewControllerP33_245E59FB3AED492785587A094999446D14AssociatedData____lazy_storage___transitioningDelegate;
  v2 = *(v0 + OBJC_IVAR____TtCE18PhotosUIFoundationCSo16UIViewControllerP33_245E59FB3AED492785587A094999446D14AssociatedData____lazy_storage___transitioningDelegate);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCE18PhotosUIFoundationCSo16UIViewControllerP33_245E59FB3AED492785587A094999446D14AssociatedData____lazy_storage___transitioningDelegate);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for PhotosSlideTransitionTransitioningDelegate()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1B3FC45EC()
{
  v0[OBJC_IVAR____TtCE18PhotosUIFoundationCSo16UIViewControllerP33_245E59FB3AED492785587A094999446D14AssociatedData_isConfigured] = 0;
  *&v0[OBJC_IVAR____TtCE18PhotosUIFoundationCSo16UIViewControllerP33_245E59FB3AED492785587A094999446D14AssociatedData____lazy_storage___transitioningDelegate] = 0;
  v2.receiver = v0;
  v2.super_class = _s14AssociatedDataCMa();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PhotosSlideTransition.init(_:useLinearAnimation:animateBackground:roundDetailsViewCorners:)(_BYTE *a1, char a2, char a3, char a4)
{
  v4[OBJC_IVAR____TtC18PhotosUIFoundation21PhotosSlideTransition_direction] = *a1;
  v4[OBJC_IVAR____TtC18PhotosUIFoundation21PhotosSlideTransition_useLinearAnimation] = a2;
  v4[OBJC_IVAR____TtC18PhotosUIFoundation21PhotosSlideTransition_animateBackground] = a3;
  v4[OBJC_IVAR____TtC18PhotosUIFoundation21PhotosSlideTransition_roundDetailsViewCorners] = a4;
  v6.receiver = v4;
  v6.super_class = type metadata accessor for PhotosSlideTransition();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t PhotosSlideTransition.Direction.hashValue.getter()
{
  v1 = *v0;
  sub_1B405E124();
  MEMORY[0x1B8C70190](v1);
  return sub_1B405E154();
}

void sub_1B3FC480C(void *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = [a1 containerView];
  v4 = [v3 traitCollection];
  if ([v4 verticalSizeClass] == 1 || objc_msgSend(v4, sel_userInterfaceIdiom) == 1 || ((objc_msgSend(v3, sel_frame), Width = CGRectGetWidth(v27), Width <= 393.0) ? (v6 = 16.0, v7 = 24.0) : (v6 = 20.0, v7 = 30.0), Width <= v7))
  {

    v16 = xmmword_1B40728D0;
    v18 = xmmword_1B40728E0;
    v17 = 0uLL;
  }

  else
  {
    v8 = (Width - v6) / Width;
    CGAffineTransformMakeScale(&t1, v8, v8);
    tx = t1.tx;
    ty = t1.ty;
    v11 = 1.0 - v8;
    v20 = *&t1.c;
    v22 = *&t1.a;
    [v3 safeAreaInsets];
    v13 = v12;
    [v3 frame];
    v14 = v13 + v11 * CGRectGetHeight(v28) * -0.5;
    v15 = 0.0;
    if (v14 > 0.0)
    {
      v15 = v14;
    }

    CGAffineTransformMakeTranslation(&t1, 0.0, v15);
    *&t2.a = v22;
    *&t2.c = v20;
    t2.tx = tx;
    t2.ty = ty;
    CGAffineTransformConcat(&v24, &t1, &t2);
    v21 = *&v24.c;
    v23 = *&v24.a;
    v19 = *&v24.tx;

    v17 = v19;
    v16 = v21;
    v18 = v23;
  }

  *a2 = v18;
  a2[1] = v16;
  a2[2] = v17;
}

void sub_1B3FC49E8(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = [a1 containerView];
  [v4 bounds];
  Height = CGRectGetHeight(v69);
  sub_1B3FC480C(a1, &v64);
  v52 = *(v1 + OBJC_IVAR____TtC18PhotosUIFoundation21PhotosSlideTransition_animateBackground);
  if (*(v1 + OBJC_IVAR____TtC18PhotosUIFoundation21PhotosSlideTransition_animateBackground))
  {
    v6 = *&v64;
  }

  else
  {
    v6 = 1.0;
  }

  if (*(v1 + OBJC_IVAR____TtC18PhotosUIFoundation21PhotosSlideTransition_animateBackground))
  {
    v7 = *(&v64 + 1);
  }

  else
  {
    v7 = 0.0;
  }

  if (*(v1 + OBJC_IVAR____TtC18PhotosUIFoundation21PhotosSlideTransition_animateBackground))
  {
    v8 = v65;
  }

  else
  {
    v8 = 0.0;
  }

  if (*(v1 + OBJC_IVAR____TtC18PhotosUIFoundation21PhotosSlideTransition_animateBackground))
  {
    v9 = v66;
  }

  else
  {
    v9 = 1.0;
  }

  if (*(v1 + OBJC_IVAR____TtC18PhotosUIFoundation21PhotosSlideTransition_animateBackground))
  {
    v10 = v67;
  }

  else
  {
    v10 = 0.0;
  }

  if (*(v1 + OBJC_IVAR____TtC18PhotosUIFoundation21PhotosSlideTransition_animateBackground))
  {
    v11 = v68;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = [a1 viewForKey_];
  v13 = [a1 viewControllerForKey_];
  v14 = [a1 viewForKey_];
  v15 = [a1 viewControllerForKey_];
  v16 = v15;
  if (v12)
  {
    v17 = v13 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = v17;
  v61 = v13;
  v62 = v12;
  v59 = v15;
  v57 = OBJC_IVAR____TtC18PhotosUIFoundation21PhotosSlideTransition_direction;
  if (*(v1 + OBJC_IVAR____TtC18PhotosUIFoundation21PhotosSlideTransition_direction))
  {
    if ((v18 & 1) == 0)
    {
      v19 = v12;
      v20 = v13;
      [a1 initialFrameForViewController_];
      [v19 setFrame_];
      [v19 frame];
      v71 = CGRectOffset(v70, 0.0, Height);
      y = v71.origin.y;
      x = v71.origin.x;
      v53 = v71.size.height;
      width = v71.size.width;
      if (v14 && v16)
      {
        v21 = v14;
        v22 = v16;
        [a1 finalFrameForViewController_];
        [v21 setFrame_];
        *v63 = v6;
        *&v63[1] = v7;
        *&v63[2] = v8;
        *&v63[3] = v9;
        *&v63[4] = v10;
        *&v63[5] = v11;
        [v21 setTransform_];
        [v4 insertSubview:v21 belowSubview:v19];
      }

      v23 = v14;
      v7 = 0.0;
      v6 = 1.0;
      v8 = 0.0;
      v9 = 1.0;
      v10 = 0.0;
      v58 = 0.0;
      goto LABEL_36;
    }

LABEL_49:
    sub_1B405DD74();
    __break(1u);
    return;
  }

  if ((v18 & 1) == 0)
  {
    v24 = v12;
    v25 = v13;
    [a1 initialFrameForViewController_];
    [v24 setFrame_];
  }

  if (!v14 || !v16)
  {
    goto LABEL_49;
  }

  v58 = v11;
  v23 = v12;
  v19 = v14;
  v26 = v16;
  [a1 finalFrameForViewController_];
  y = v72.origin.y;
  x = v72.origin.x;
  v53 = v72.size.height;
  width = v72.size.width;
  v73 = CGRectOffset(v72, 0.0, Height);
  [v19 setFrame_];
  [v4 addSubview_];

LABEL_36:
  v27 = v10;
  v60 = v14;
  v28 = v9;
  if (v23)
  {
    v29 = v23;
    [v29 _continuousCornerRadius];
    v31 = v30;
    v32 = [v29 clipsToBounds];

    v33 = v8;
    if (v52)
    {
      [v29 _setContinuousCornerRadius_];
      [v29 setClipsToBounds_];
    }
  }

  else
  {
    v33 = v8;
    v31 = 0;
    v32 = 2;
  }

  v34 = v6;
  [v19 _continuousCornerRadius];
  v36 = v35;
  v37 = [v19 clipsToBounds];
  if (*(v2 + OBJC_IVAR____TtC18PhotosUIFoundation21PhotosSlideTransition_roundDetailsViewCorners) == 1)
  {
    [v19 _setContinuousCornerRadius_];
    [v19 setClipsToBounds_];
  }

  v38 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v39 = [objc_opt_self() blackColor];
  [v38 setBackgroundColor_];

  v40 = v4;
  [v4 bounds];
  [v38 setFrame_];
  [v4 insertSubview:v38 belowSubview:v19];
  if (*(v2 + v57))
  {
    v41 = 0.5;
  }

  else
  {
    v41 = 0.0;
  }

  if (*(v2 + v57))
  {
    v42 = 0.0;
  }

  else
  {
    v42 = 0.5;
  }

  [v38 setAlpha_];
  v43 = swift_allocObject();
  *(v43 + 16) = v23;
  *(v43 + 24) = v34;
  *(v43 + 32) = v7;
  *(v43 + 40) = v33;
  *(v43 + 48) = v28;
  *(v43 + 56) = v27;
  *(v43 + 64) = v58;
  *(v43 + 72) = v38;
  *(v43 + 80) = v42;
  *(v43 + 88) = v19;
  *(v43 + 96) = x;
  *(v43 + 104) = y;
  *(v43 + 112) = width;
  *(v43 + 120) = v53;
  v44 = swift_allocObject();
  *(v44 + 16) = v38;
  *(v44 + 24) = v31;
  *(v44 + 32) = v32;
  *(v44 + 40) = v23;
  *(v44 + 48) = v19;
  *(v44 + 56) = v36;
  *(v44 + 64) = v37;
  *(v44 + 72) = a1;
  v45 = v23;
  v46 = v38;
  v47 = v19;
  v48 = v45;
  v49 = v46;
  v50 = v47;
  v51 = swift_unknownObjectRetain();
  sub_1B3FC5300(v51, sub_1B3FC513C, v43, sub_1B3FC527C, v44);
}

id sub_1B3FC508C(void *a1, _OWORD *a2, void *a3, void *a4, double a5, double a6, double a7, double a8, double a9)
{
  v16 = a2[1];
  v18[0] = *a2;
  v18[1] = v16;
  v18[2] = a2[2];
  [a1 setTransform_];
  [a3 setAlpha_];
  return [a4 setFrame_];
}

id sub_1B3FC515C(int a1, id a2, double a3, uint64_t a4, unsigned __int8 a5, void *a6, void *a7, char a8, void *a9)
{
  v16 = a5;
  [a2 removeFromSuperview];
  if (v16 == 2)
  {
    if (!a6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (a6)
  {
    [a6 _setContinuousCornerRadius_];
    [a6 setClipsToBounds_];
LABEL_6:
    v18[0] = 0x3FF0000000000000;
    v18[1] = 0;
    v18[2] = 0;
    v18[3] = 0x3FF0000000000000;
    v18[4] = 0;
    v18[5] = 0;
    [a6 setTransform_];
  }

LABEL_7:
  [a7 _setContinuousCornerRadius_];
  [a7 setClipsToBounds_];
  return [a9 completeTransition_];
}

void sub_1B3FC5300(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (*(v5 + OBJC_IVAR____TtC18PhotosUIFoundation21PhotosSlideTransition_useLinearAnimation) == 1)
  {
    v13 = a2;
    v14 = a3;
    OUTLINED_FUNCTION_0_13();
    v10 = 1107296256;
    v11 = sub_1B3F934F0;
    v12 = &block_descriptor_7;
    v8 = _Block_copy(&v9);

    if (a4)
    {
      v13 = a4;
      v14 = a5;
      OUTLINED_FUNCTION_0_13();
      v10 = 1107296256;
      v11 = sub_1B3FC4390;
      v12 = &block_descriptor_26;
      a4 = _Block_copy(&v9);
    }

    [objc_opt_self() animateWithDuration:196608 delay:v8 options:a4 animations:0.4 completion:0.0];
    _Block_release(a4);
    _Block_release(v8);
  }

  else
  {
    sub_1B3F997E4();
    sub_1B405DA74();
  }
}

id PhotosSlideTransition.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1B3FC5510()
{
  result = qword_1EB87C4F0;
  if (!qword_1EB87C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87C4F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhotosSlideTransition.Direction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhotosSlideTransition.Direction(_BYTE *result, unsigned int a2, unsigned int a3)
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

id sub_1B3FC578C()
{
  v2 = 0;
  v0 = objc_allocWithZone(type metadata accessor for PhotosSlideTransition());
  return PhotosSlideTransition.init(_:useLinearAnimation:animateBackground:roundDetailsViewCorners:)(&v2, 0, 1, 0);
}

id sub_1B3FC5864()
{
  v2 = 1;
  v0 = objc_allocWithZone(type metadata accessor for PhotosSlideTransition());
  return PhotosSlideTransition.init(_:useLinearAnimation:animateBackground:roundDetailsViewCorners:)(&v2, 0, 1, 0);
}

id sub_1B3FC5910()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosSlideTransitionTransitioningDelegate();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1B3FC5988(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t PhotosWeakSet.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PhotosWeakObjectReference();
  OUTLINED_FUNCTION_0_33();
  swift_getWitnessTable();
  result = sub_1B405D254();
  *a1 = result;
  return result;
}

uint64_t PhotosWeakSet.insert(_:)()
{
  sub_1B3FC5AF8();
  swift_unknownObjectRetain();
  PhotosWeakObjectReference.init(_:)(&v2);
  v0 = type metadata accessor for PhotosWeakObjectReference();
  OUTLINED_FUNCTION_0_33();
  swift_getWitnessTable();
  sub_1B405D834();
  sub_1B405D7E4();
  return (*(*(v0 - 8) + 8))(v3, v0);
}

uint64_t sub_1B3FC5AF8()
{
  v1 = *v0;
  v2 = *v0 + 56;
  v3 = 1 << *(*v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*v0 + 56);
  v6 = (v3 + 63) >> 6;
  result = _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  for (i = 0; v5; i = v9)
  {
    v9 = i;
LABEL_8:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(v1 + 48);
    v12 = (v9 << 10) | (16 * v10);
    v13 = type metadata accessor for PhotosWeakObjectReference();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v18, v11 + v12, v13);
    (*(v14 + 32))(v17, v18, v13);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      swift_getWitnessTable();
      sub_1B405D834();
      sub_1B405D7F4();
      v15 = sub_1B405DAC4();
      (*(*(v15 - 8) + 8))(v16, v15);
    }

    result = (*(v14 + 8))(v17, v13);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++i;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t PhotosWeakSet.remove(_:)()
{
  swift_unknownObjectRetain();
  PhotosWeakObjectReference.init(_:)(v3);
  v0 = type metadata accessor for PhotosWeakObjectReference();
  OUTLINED_FUNCTION_0_33();
  swift_getWitnessTable();
  sub_1B405D834();
  sub_1B405D7F4();
  (*(*(v0 - 8) + 8))(v3, v0);
  v1 = sub_1B405DAC4();
  (*(*(v1 - 8) + 8))(v4, v1);
  return sub_1B3FC5AF8();
}

uint64_t PhotosWeakSet.objects.getter()
{
  type metadata accessor for PhotosWeakObjectReference();
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  OUTLINED_FUNCTION_0_33();
  swift_getWitnessTable();
  sub_1B405D834();
  swift_getWitnessTable();
  v0 = sub_1B405D504();

  return v0;
}

uint64_t sub_1B3FC5EC0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t PhotosCollectionTitleDisplayIntent.hashValue.getter()
{
  sub_1B405E124();
  MEMORY[0x1B8C70190](0);
  return sub_1B405E154();
}

uint64_t transform(title:subtitle:displayIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() defaultHelper];
  if (!a2)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:

    return a2;
  }

  v7 = sub_1B405D414();
  v8 = [v6 displayableTextForTitle:v7 intent:1];

  a2 = sub_1B405D444();
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_1B405D414();
  v10 = [v6 displayableTextForTitle:v9 intent:1];

  sub_1B405D444();
  return a2;
}

unint64_t sub_1B3FC60E4()
{
  result = qword_1EB87C5C8;
  if (!qword_1EB87C5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87C5C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosCollectionTitleDisplayIntent(_BYTE *result, int a2, int a3)
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

__n128 PhotosStaticCollectionTitleModel.init(title:subtitle:symbolName:assetCount:additionalInfo:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  sub_1B405CF34();
  v19 = type metadata accessor for PhotosStaticCollectionTitleModel(0);
  v20 = (a9 + v19[5]);
  *v20 = a1;
  v20[1] = a2;
  v21 = (a9 + v19[6]);
  *v21 = a3;
  v21[1] = a4;
  v22 = (a9 + v19[7]);
  *v22 = a5;
  v22[1] = a6;
  v23 = a9 + v19[8];
  *v23 = a7;
  *(v23 + 8) = a8 & 1;
  v24 = a9 + v19[9];
  v25 = *(a10 + 16);
  *v24 = *a10;
  *(v24 + 16) = v25;
  result = *(a10 + 32);
  *(v24 + 32) = result;
  *(v24 + 48) = *(a10 + 48);
  return result;
}

double static PhotosStaticCollectionTitleModel.empty.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PhotosStaticCollectionTitleModel(0);
  v3 = a1 + v2[9];
  *(v3 + 48) = 0;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *v3 = 0u;
  sub_1B405CF34();
  *&result = 32;
  *(a1 + v2[5]) = xmmword_1B4072B10;
  v5 = (a1 + v2[6]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + v2[7]);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1 + v2[8];
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t PhotosStaticCollectionTitleModel.id.getter()
{
  sub_1B405CF44();
  OUTLINED_FUNCTION_8();
  v0 = OUTLINED_FUNCTION_1_22();

  return v1(v0);
}

uint64_t PhotosStaticCollectionTitleModel.title.getter()
{
  type metadata accessor for PhotosStaticCollectionTitleModel(0);
  OUTLINED_FUNCTION_5_9();
  return OUTLINED_FUNCTION_1_22();
}

uint64_t PhotosStaticCollectionTitleModel.subtitle.getter()
{
  type metadata accessor for PhotosStaticCollectionTitleModel(0);
  OUTLINED_FUNCTION_5_9();
  return OUTLINED_FUNCTION_1_22();
}

uint64_t PhotosStaticCollectionTitleModel.symbolName.getter()
{
  type metadata accessor for PhotosStaticCollectionTitleModel(0);
  OUTLINED_FUNCTION_5_9();
  return OUTLINED_FUNCTION_1_22();
}

uint64_t PhotosStaticCollectionTitleModel.additionalInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PhotosStaticCollectionTitleModel(0) + 36);

  return sub_1B3FC64B0(v3, a1);
}

uint64_t sub_1B3FC64B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C5D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PhotosObservableCollectionTitleModel.__allocating_init(title:subtitle:symbolName:assetCount:additionalInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  v17 = swift_allocObject();
  PhotosObservableCollectionTitleModel.init(title:subtitle:symbolName:assetCount:additionalInfo:)(a1, a2, a3, a4, a5, a6, a7, a8 & 1, a9);
  return v17;
}

uint64_t PhotosObservableCollectionTitleModel.init(title:subtitle:symbolName:assetCount:additionalInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  sub_1B405CF34();
  v16 = (v9 + OBJC_IVAR____TtC18PhotosUIFoundation36PhotosObservableCollectionTitleModel___title);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v9 + OBJC_IVAR____TtC18PhotosUIFoundation36PhotosObservableCollectionTitleModel___subtitle[0]);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v9 + OBJC_IVAR____TtC18PhotosUIFoundation36PhotosObservableCollectionTitleModel___symbolName);
  *v18 = 0;
  v18[1] = 0;
  v19 = v9 + OBJC_IVAR____TtC18PhotosUIFoundation36PhotosObservableCollectionTitleModel___assetCount;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v9 + OBJC_IVAR____TtC18PhotosUIFoundation36PhotosObservableCollectionTitleModel___additionalInfo;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0u;
  *(v20 + 48) = 0;
  sub_1B405D054();
  sub_1B3FC67B4(a1, a2, &OBJC_IVAR____TtC18PhotosUIFoundation36PhotosObservableCollectionTitleModel___title);
  sub_1B3FC67B4(a3, a4, OBJC_IVAR____TtC18PhotosUIFoundation36PhotosObservableCollectionTitleModel___subtitle);
  sub_1B3FC67B4(a5, a6, &OBJC_IVAR____TtC18PhotosUIFoundation36PhotosObservableCollectionTitleModel___symbolName);
  sub_1B3FC68AC(a7, a8 & 1);
  sub_1B3FC64B0(a9, v24);
  sub_1B3FC698C(v24);
  sub_1B3FB3BC0(a9, &qword_1EB87C5D0);
  return v9;
}

uint64_t sub_1B3FC67B4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  if (sub_1B3FC7414(*v6, v6[1], a1, a2))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v8);
    sub_1B3FC757C();
  }

  else
  {
    *v6 = a1;
    v6[1] = a2;
  }
}

uint64_t sub_1B3FC68AC(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC18PhotosUIFoundation36PhotosObservableCollectionTitleModel___assetCount;
  if ((*(v2 + OBJC_IVAR____TtC18PhotosUIFoundation36PhotosObservableCollectionTitleModel___assetCount + 8) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *v3 != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v3 = result;
    *(v3 + 8) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v5);
  sub_1B3FC757C();
}

uint64_t sub_1B3FC698C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PhotosUIFoundation36PhotosObservableCollectionTitleModel___additionalInfo;
  swift_beginAccess();
  sub_1B3FC64B0(v1 + v3, v8);
  v4 = sub_1B3FC7468(v8, a1);
  sub_1B3FB3BC0(v8, &qword_1EB87C5D0);
  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v6);
    sub_1B3FC757C();
  }

  else
  {
    swift_beginAccess();
    sub_1B3FC7D88(a1, v1 + v3);
    swift_endAccess();
  }

  return sub_1B3FB3BC0(a1, &qword_1EB87C5D0);
}

uint64_t PhotosObservableCollectionTitleModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18PhotosUIFoundation36PhotosObservableCollectionTitleModel_id;
  sub_1B405CF44();
  OUTLINED_FUNCTION_8();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t PhotosObservableCollectionTitleModel.title.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_6_8(a1);
  *v1 = _s18PhotosUIFoundation0A30ObservableCollectionTitleModelC5titleSSSgvg_0();
  v1[1] = v2;
  return OUTLINED_FUNCTION_7_5();
}

uint64_t sub_1B3FC6BDC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  return a5(v7, v6);
}

uint64_t PhotosObservableCollectionTitleModel.subtitle.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_6_8(a1);
  *v1 = _s18PhotosUIFoundation0A30ObservableCollectionTitleModelC8subtitleSSSgvg_0();
  v1[1] = v2;
  return OUTLINED_FUNCTION_7_5();
}

uint64_t sub_1B3FC6CCC(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  a3(v5, v4);
}

uint64_t sub_1B3FC6D8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  if (!a2)
  {
    if (!v6)
    {
      return result;
    }

    return OUTLINED_FUNCTION_4_8();
  }

  if (!v6)
  {
    return OUTLINED_FUNCTION_4_8();
  }

  if (result != a1 || v6 != a2)
  {
    v8 = sub_1B405DEC4();

    if (v8)
    {
      goto LABEL_14;
    }

    return OUTLINED_FUNCTION_4_8();
  }

LABEL_14:
}

uint64_t sub_1B3FC6E7C()
{
  swift_getKeyPath();
  sub_1B3FC7D30();
  sub_1B405D044();

  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  return OUTLINED_FUNCTION_1_22();
}

uint64_t PhotosObservableCollectionTitleModel.symbolName.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_6_8(a1);
  *v1 = _s18PhotosUIFoundation0A30ObservableCollectionTitleModelC10symbolNameSSSgvg_0();
  v1[1] = v2;
  return OUTLINED_FUNCTION_7_5();
}

uint64_t PhotosObservableCollectionTitleModel.assetCount.setter(uint64_t a1, char a2)
{
  result = sub_1B3FC7014();
  if (a2)
  {
    if (v5)
    {
      return result;
    }
  }

  else if ((v5 & 1) == 0 && result == a1)
  {
    return result;
  }

  return sub_1B3FC68AC(a1, a2 & 1);
}

uint64_t sub_1B3FC7014()
{
  swift_getKeyPath();
  sub_1B3FC7D30();
  sub_1B405D044();

  return *(v0 + OBJC_IVAR____TtC18PhotosUIFoundation36PhotosObservableCollectionTitleModel___assetCount);
}

uint64_t PhotosObservableCollectionTitleModel.assetCount.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_6_8(a1);
  v1 = sub_1B3FC7014();
  OUTLINED_FUNCTION_2_21(v1, v2);
  return OUTLINED_FUNCTION_7_5();
}

uint64_t PhotosObservableCollectionTitleModel.additionalInfo.setter(uint64_t a1)
{
  _s18PhotosUIFoundation0A30ObservableCollectionTitleModelC14additionalInfoAA0a3Anyd10AdditionalH0VSgvg_0(v14);
  sub_1B3FC64B0(a1, v8);
  sub_1B3FC64B0(v14, &v10);
  if (v9)
  {
    sub_1B3FC64B0(v8, v6);
    if (*(&v11 + 1))
    {
      v4[0] = v10;
      v4[1] = v11;
      v4[2] = v12;
      v5 = v13;
      v2 = v7(v4);
      sub_1B3FC7974(v4);
      sub_1B3FB3BC0(v14, &qword_1EB87C5D0);
      sub_1B3FC7974(v6);
      sub_1B3FB3BC0(v8, &qword_1EB87C5D0);
      if (v2)
      {
        return sub_1B3FB3BC0(a1, &qword_1EB87C5D0);
      }

      goto LABEL_9;
    }

    sub_1B3FB3BC0(v14, &qword_1EB87C5D0);
    sub_1B3FC7974(v6);
LABEL_8:
    sub_1B3FB3BC0(v8, qword_1EB87C5D8);
LABEL_9:
    sub_1B3FC64B0(a1, v8);
    sub_1B3FC698C(v8);
    return sub_1B3FB3BC0(a1, &qword_1EB87C5D0);
  }

  sub_1B3FB3BC0(v14, &qword_1EB87C5D0);
  if (*(&v11 + 1))
  {
    goto LABEL_8;
  }

  sub_1B3FB3BC0(v8, &qword_1EB87C5D0);
  return sub_1B3FB3BC0(a1, &qword_1EB87C5D0);
}

uint64_t _s18PhotosUIFoundation0A30ObservableCollectionTitleModelC14additionalInfoAA0a3Anyd10AdditionalH0VSgvg_0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1B3FC7D30();
  sub_1B405D044();

  v3 = OBJC_IVAR____TtC18PhotosUIFoundation36PhotosObservableCollectionTitleModel___additionalInfo;
  swift_beginAccess();
  return sub_1B3FC64B0(v5 + v3, a1);
}

void (*PhotosObservableCollectionTitleModel.additionalInfo.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x78uLL);
  *a1 = v3;
  v3[14] = v1;
  _s18PhotosUIFoundation0A30ObservableCollectionTitleModelC14additionalInfoAA0a3Anyd10AdditionalH0VSgvg_0(v3);
  return sub_1B3FC739C;
}

void sub_1B3FC739C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1B3FC64B0(*a1, v2 + 56);
    PhotosObservableCollectionTitleModel.additionalInfo.setter(v2 + 56);
    sub_1B3FB3BC0(v2, &qword_1EB87C5D0);
  }

  else
  {
    PhotosObservableCollectionTitleModel.additionalInfo.setter(*a1);
  }

  free(v2);
}