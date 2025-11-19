uint64_t static PrivateSearchFactory.newCallContext(withClientContext:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_25F717178();
  v5 = swift_allocObject();
  *(v5 + 32) = 0u;
  *(v5 + 16) = 0u;
  swift_beginAccess();
  sub_25F716D58(a1, v5 + 16);
  result = swift_endAccess();
  v7 = MEMORY[0x277D415A0];
  a2[3] = v4;
  a2[4] = v7;
  *a2 = v5;
  return result;
}

uint64_t sub_25F716D58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAC920, &unk_25F7172D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t static PrivateSearchFactory.newPrivateSearchIndex(_:_:)@<X0>(void *a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);
  v16[3] = v4;
  v16[4] = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
  v8 = a1[3];
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, v8);
  v15[3] = v8;
  v15[4] = *(v9 + 16);
  v11 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(v8 - 8) + 16))(v11, v10, v8);
  sub_25F717198();
  swift_allocObject();
  sub_25F717188();
  sub_25F7171D8();
  MEMORY[0x25F8E5FF0]();

  v12 = sub_25F7171B8();
  swift_allocObject();
  result = sub_25F7171A8();
  v14 = MEMORY[0x277D415B0];
  a2[3] = v12;
  a2[4] = v14;
  *a2 = result;
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t static PrivateSearchFactory.newPrivateSearchIndexInMemory(_:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_25F717168();
  swift_allocObject();
  v3 = sub_25F717158();
  v5[3] = v2;
  v5[4] = MEMORY[0x277D41598];
  v5[0] = v3;
  static PrivateSearchFactory.newPrivateSearchIndex(_:_:)(v5, a1);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return MEMORY[0x2821FEB70](*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}