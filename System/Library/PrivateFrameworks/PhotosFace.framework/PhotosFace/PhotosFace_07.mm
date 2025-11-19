uint64_t sub_22FE0D128()
{
  v1 = *(v0 + 32);
  AsyncThrowingChannel.finish()();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22FE0D188()
{
  v1 = v0[6];
  v2 = v0[4];
  AsyncThrowingChannel.fail<>(_:)(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_22FE0D1F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22FD73F54;

  return sub_22FE0CEF0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22FE0D2C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FD842A0;

  return AsyncThrowingChannel.send(_:)(a1);
}

uint64_t sub_22FE0D3A0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22FD73F54;

  return sub_22FE0C080(a1, a2, v7, v8, v6);
}

uint64_t sub_22FE0D460(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22FD8C738;

  return sub_22FE0C668(a1, a2, v7, v8, v6);
}

uint64_t sub_22FE0D520(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE3188, &qword_22FE49380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FE0D590(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE3188, &qword_22FE49380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FE0D5F8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22FD8C738;

  return sub_22FE38A30(a1, v5);
}

uint64_t sub_22FE0D6B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FD8C738;

  return sub_22FE0D2C0(a1);
}

uint64_t AsyncIteratorProtocol.sequence.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  return (*(v4 + 32))(a2, v7, a1);
}

uint64_t sub_22FE0D894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  IterateOnceSequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t AsyncSequence.generic.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = a1;
  v10 = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v8);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v3, a1);
  return sub_22FD72C14(&v8, a3);
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

uint64_t WrapperIterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FE0DA14);
}

uint64_t sub_22FE0DA14()
{
  v1 = v0[3];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(MEMORY[0x277D856D0] + 4);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_22FE0DAD0;
  v6 = v0[2];

  return MEMORY[0x282200308](v6, v2, v3);
}

uint64_t sub_22FE0DAD0()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_22FE0DC14(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FD73F54;

  return WrapperIterator.next()(a1);
}

uint64_t WrapperSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v4 = __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  (*(v8 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(&v11);
  sub_22FE43464();
  return sub_22FD72C14(&v11, a1);
}

uint64_t sub_22FE0DE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WrapperSequence.makeAsyncIterator()(a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_22FE0DE64()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_22FE0DECC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22FE0DF08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22FE0DF50(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t AsyncSequence<>.throwing.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  return (*(v4 + 32))(a2, v7, a1);
}

uint64_t MakeThrowingIterator.next()(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(MEMORY[0x277D856D0] + 4);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FD73F54;

  return MEMORY[0x282200308](a1, v4, v5);
}

uint64_t sub_22FE0E148(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FD8C738;

  return MakeThrowingIterator.next()(a1, a2);
}

uint64_t MakeThrowingSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v18 - v15;
  (*(v5 + 16))(v8, v2, v4, v14);
  sub_22FE43464();
  return (*(v12 + 32))(a2, v16, AssociatedTypeWitness);
}

uint64_t sub_22FE0E39C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MakeThrowingSequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t static String.read(from:key:)(void *a1)
{
  v2 = sub_22FE43054();
  v3 = [a1 stringForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_22FE43064();

  return v4;
}

Swift::Void __swiftcall String.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  isa = to.super.isa;
  v3 = sub_22FE43054();
  v4 = sub_22FE43054();
  [(objc_class *)isa setObject:v3 forKey:v4];
}

void sub_22FE0E54C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_22FE43054();
  v5 = [a1 stringForKey_];

  if (v5)
  {
    v6 = sub_22FE43064();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
}

void sub_22FE0E5D4(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = sub_22FE43054();
  v6 = sub_22FE43054();
  [a1 setObject:v5 forKey:v6];
}

Swift::Void __swiftcall Int.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  container = to._container_;
  isa = to.super.isa;
  v4 = sub_22FE43054();
  [(objc_class *)isa setInteger:container forKey:v4];
}

uint64_t sub_22FE0E6E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22FE0FE3C(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_22FE0E71C(void *a1)
{
  v3 = *v1;
  v4 = sub_22FE43054();
  [a1 setInteger:v3 forKey:v4];
}

uint64_t static Duration.read(from:key:)(void *a1)
{
  v2 = sub_22FE43054();
  v3 = [a1 valueForKey_];

  if (v3)
  {
    sub_22FE437F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return sub_22FE43EB4();
    }
  }

  else
  {
    sub_22FE0FDD4(v7);
  }

  return 0;
}

Swift::Void __swiftcall Duration.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  isa = to.super.isa;
  v3 = sub_22FE43E54();
  sub_22FE43E54();
  v5 = v4 / 1.0e18 + v3;
  v6 = sub_22FE43054();
  [(objc_class *)isa setDouble:v6 forKey:v5];
}

uint64_t sub_22FE0E91C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = static Duration.read(from:key:)(a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

void sub_22FE0E94C(void *a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = sub_22FE43E54();
  sub_22FE43E54();
  v7 = v6 / 1.0e18 + v5;
  v8 = sub_22FE43054();
  [a1 setDouble:v8 forKey:v7];
}

Swift::Void __swiftcall UInt64.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  isa = to.super.isa;
  v3 = sub_22FE43E24();
  v4 = sub_22FE43054();
  [(objc_class *)isa setObject:v3 forKey:v4];
}

uint64_t sub_22FE0EAAC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22FE0FE3C(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_22FE0EAE4(void *a1)
{
  v3 = *v1;
  v4 = sub_22FE43E24();
  v5 = sub_22FE43054();
  [a1 setObject:v4 forKey:v5];
}

Swift::Void __swiftcall Bool.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  container = to._container_;
  isa = to.super.isa;
  v4 = sub_22FE43054();
  [(objc_class *)isa setBool:container & 1 forKey:v4];
}

uint64_t sub_22FE0EBD4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _sSb10PhotosFaceE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(a1);
  *a2 = result;
  return result;
}

void sub_22FE0EBFC(void *a1)
{
  v3 = *v1;
  v4 = sub_22FE43054();
  [a1 setBool:v3 forKey:v4];
}

Swift::Void __swiftcall Double.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  v3 = v2;
  isa = to.super.isa;
  v5 = sub_22FE43054();
  [(objc_class *)isa setDouble:v5 forKey:v3];
}

uint64_t sub_22FE0ECF0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_22FE0FF20(a1, a2, a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

void sub_22FE0ED20(void *a1)
{
  v3 = *v1;
  v4 = sub_22FE43054();
  [a1 setDouble:v4 forKey:v3];
}

Swift::Void __swiftcall Float.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  v3 = v2;
  isa = to.super.isa;
  v6 = sub_22FE43054();
  LODWORD(v5) = v3;
  [(objc_class *)isa setFloat:v6 forKey:v5];
}

unint64_t sub_22FE0EE2C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_22FE10370(a1, a2, a3);
  *a4 = result;
  *(a4 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_22FE0EE5C(void *a1)
{
  v3 = *v1;
  v5 = sub_22FE43054();
  LODWORD(v4) = v3;
  [a1 setFloat:v5 forKey:v4];
}

uint64_t static Optional<A>.read(from:key:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  (*(a1 + 8))();
  v3 = sub_22FE43744();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t Optional<A>.write(to:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v12 = (MEMORY[0x28223BE20])();
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 16);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v12);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, v22, v21);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    return (*(v10 + 8))(v14, a4);
  }

  (*(v17 + 32))(v20, v14, v16);
  (*(a5 + 16))(a1, a2, a3, v16, a5);
  return (*(v17 + 8))(v20, v16);
}

uint64_t static Array<A>.read(from:key:)(void *a1)
{
  v2 = sub_22FE43054();
  v3 = [a1 valueForKey_];

  if (v3)
  {
    sub_22FE437F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    swift_getAssociatedTypeWitness();
    sub_22FE43354();
    v4 = swift_dynamicCast();
    if (v4)
    {
      *&v10[0] = v7;
      MEMORY[0x28223BE20](v4);
      swift_getWitnessTable();
      v5 = sub_22FE431B4();

      return v5;
    }
  }

  else
  {
    sub_22FE0FDD4(v10);
  }

  return 0;
}

uint64_t sub_22FE0F310(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 64);
  v4 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  (*(v6 + 16))(&v8 - v5, a1, v4);
  return sub_22FE43264();
}

void Array<A>.write(to:key:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14[7] = a4;
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;
  v8 = sub_22FE43354();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  sub_22FDA5834(sub_22FE107F0, v14, v8, AssociatedTypeWitness, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v11);
  v12 = sub_22FE43274();

  v13 = sub_22FE43054();
  [a1 setObject:v12 forKey:v13];
}

uint64_t sub_22FE0F544@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v5 = *(a3 - 16);
  v6 = *(a3 - 8);
  v7 = *(a2 + 16);
  result = static Array<A>.read(from:key:)(a1);
  *a4 = result;
  return result;
}

uint64_t static DefaultsStorable<>.read(from:key:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v50 = a1;
  v51 = a7;
  v12 = sub_22FE43744();
  v46 = *(v12 - 8);
  v47 = v12;
  v13 = *(v46 + 64);
  MEMORY[0x28223BE20](v12);
  v49 = &v45 - v14;
  v48 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_22FE43744();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v45 - v19;
  v21 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v45 - v27;
  v29 = *(a6 + 8);
  v30 = v50;
  v45 = a2;
  v50 = a3;
  v31 = a6;
  v33 = v32;
  v29(v30, a2, a3, AssociatedTypeWitness, v31, v26);
  if ((*(v33 + 48))(v20, 1, AssociatedTypeWitness) == 1)
  {
    (*(v17 + 8))(v20, v16);
    return (*(*(a4 - 8) + 56))(v51, 1, 1, a4);
  }

  else
  {
    v35 = v51;
    (*(v33 + 32))(v28, v20, AssociatedTypeWitness);
    (*(v33 + 16))(v24, v28, AssociatedTypeWitness);
    v36 = v49;
    sub_22FE43264();
    v37 = *(a4 - 8);
    if ((*(v37 + 48))(v36, 1, a4) == 1)
    {
      v48 = v33;
      (*(v46 + 8))(v36, v47);
      if (qword_28148B100 != -1)
      {
        swift_once();
      }

      v38 = sub_22FE42D34();
      __swift_project_value_buffer(v38, qword_28148B108);
      v39 = v50;

      v40 = sub_22FE42D14();
      v41 = sub_22FE436A4();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = v28;
        v44 = swift_slowAlloc();
        v52 = v44;
        *v42 = 141558274;
        *(v42 + 4) = 1752392040;
        *(v42 + 12) = 2080;
        *(v42 + 14) = sub_22FD98218(v45, v39, &v52);
        _os_log_impl(&dword_22FD6D000, v40, v41, "Couldn't parse user default %{mask.hash}s.", v42, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x23190C380](v44, -1, -1);
        MEMORY[0x23190C380](v42, -1, -1);

        (*(v48 + 8))(v43, AssociatedTypeWitness);
      }

      else
      {

        (*(v48 + 8))(v28, AssociatedTypeWitness);
      }

      return (*(v37 + 56))(v35, 1, 1, a4);
    }

    else
    {
      (*(v33 + 8))(v28, AssociatedTypeWitness);
      (*(v37 + 32))(v35, v36, a4);
      return (*(v37 + 56))(v35, 0, 1, a4);
    }
  }
}

uint64_t DefaultsStorable<>.write(to:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v17 - v14;
  sub_22FE43254();
  (*(a7 + 16))(a1, a2, a3, AssociatedTypeWitness, a7);
  return (*(v12 + 8))(v15, AssociatedTypeWitness);
}

BOOL sub_22FE0FC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v10[0] = a1;
      v10[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        v5 = v10;
LABEL_11:
        v8 = a4(v5, a3);
        return v8 && *v8 == 0;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v6 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v6 >= 0x21 || ((0x100003E01uLL >> v6) & 1) == 0)
      {
        goto LABEL_11;
      }

      return 0;
    }
  }

  sub_22FE438E4();
  if (!v4)
  {
    return v11;
  }

  return v7;
}

uint64_t _sSb10PhotosFaceE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(void *a1)
{
  v2 = sub_22FE43054();
  v3 = [a1 valueForKey_];

  if (v3)
  {
    sub_22FE437F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_22FE0FDD4(v8);
    return 2;
  }
}

uint64_t sub_22FE0FDD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5108, &qword_22FE4EBE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FE0FE3C(void *a1)
{
  v2 = sub_22FE43054();
  v3 = [a1 valueForKey_];

  if (v3)
  {
    sub_22FE437F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22FE0FDD4(v8);
    return 0;
  }
}

uint64_t sub_22FE0FF20(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_22FE43054();
  v7 = [a1 valueForKey_];

  if (!v7)
  {
LABEL_16:
    *&result = 0.0;
    return result;
  }

  sub_22FE437F4();
  swift_unknownObjectRelease();
  sub_22FD98E50(v35, v34);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v35);
    return v32[0];
  }

  sub_22FD98E50(v35, v34);
  if (!swift_dynamicCast())
  {
    sub_22FD98E50(v35, v34);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v35);
      *&result = *v32;
      return result;
    }

    if (qword_28148B100 != -1)
    {
      swift_once();
    }

    v10 = sub_22FE42D34();
    __swift_project_value_buffer(v10, qword_28148B108);
    sub_22FD98E50(v35, v34);
    sub_22FD98E50(v35, v32);

    v11 = sub_22FE42D14();
    v12 = sub_22FE436A4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v31 = v14;
      *v13 = 136315650;
      *(v13 + 4) = sub_22FD98218(a2, a3, &v31);
      *(v13 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1(v34, v34[3]);
      swift_getDynamicType();
      v15 = sub_22FE43EE4();
      v17 = v16;
      __swift_destroy_boxed_opaque_existential_0(v34);
      v18 = sub_22FD98218(v15, v17, &v31);

      *(v13 + 14) = v18;
      *(v13 + 22) = 2080;
      v19 = v33;
      v20 = __swift_project_boxed_opaque_existential_1(v32, v33);
      v21 = *(*(v19 - 8) + 64);
      v22 = MEMORY[0x28223BE20](v20);
      (*(v24 + 16))(&v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
      v25 = sub_22FE430B4();
      v27 = v26;
      __swift_destroy_boxed_opaque_existential_0(v32);
      v28 = sub_22FD98218(v25, v27, &v31);

      *(v13 + 24) = v28;
      _os_log_impl(&dword_22FD6D000, v11, v12, "Couldn't parse Double at %s with type %s and value %s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23190C380](v14, -1, -1);
      MEMORY[0x23190C380](v13, -1, -1);

      v29 = v35;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v34);
      __swift_destroy_boxed_opaque_existential_0(v35);
      v29 = v32;
    }

    __swift_destroy_boxed_opaque_existential_0(v29);
    goto LABEL_16;
  }

  v34[0] = 0;
  v9 = sub_22FE0FC04(v32[0], v32[1], v34, MEMORY[0x277D84FA8]);

  __swift_destroy_boxed_opaque_existential_0(v35);
  if (v9)
  {
    return v34[0];
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

unint64_t sub_22FE10370(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_22FE43054();
  v7 = [a1 valueForKey_];

  if (!v7)
  {
    goto LABEL_16;
  }

  sub_22FE437F4();
  swift_unknownObjectRelease();
  sub_22FD98E50(v38, v37);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v38);
    v8 = 0;
    v9 = *v35;
    return LODWORD(v9) | ((v8 & 1) << 32);
  }

  sub_22FD98E50(v38, v37);
  if (!swift_dynamicCast())
  {
    sub_22FD98E50(v38, v37);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v38);
      v8 = 0;
      v11 = *v35;
      v9 = v11;
      return LODWORD(v9) | ((v8 & 1) << 32);
    }

    if (qword_28148B100 != -1)
    {
      swift_once();
    }

    v12 = sub_22FE42D34();
    __swift_project_value_buffer(v12, qword_28148B108);
    sub_22FD98E50(v38, v37);
    sub_22FD98E50(v38, v35);

    v13 = sub_22FE42D14();
    v14 = sub_22FE436A4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v34 = v16;
      *v15 = 136315650;
      *(v15 + 4) = sub_22FD98218(a2, a3, &v34);
      *(v15 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1(v37, v37[3]);
      swift_getDynamicType();
      v17 = sub_22FE43EE4();
      v19 = v18;
      __swift_destroy_boxed_opaque_existential_0(v37);
      v20 = sub_22FD98218(v17, v19, &v34);

      *(v15 + 14) = v20;
      *(v15 + 22) = 2080;
      v21 = v36;
      v22 = __swift_project_boxed_opaque_existential_1(v35, v36);
      v23 = *(*(v21 - 8) + 64);
      v24 = MEMORY[0x28223BE20](v22);
      (*(v26 + 16))(&v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
      v27 = sub_22FE430B4();
      v29 = v28;
      __swift_destroy_boxed_opaque_existential_0(v35);
      v30 = sub_22FD98218(v27, v29, &v34);

      *(v15 + 24) = v30;
      _os_log_impl(&dword_22FD6D000, v13, v14, "Couldn't parse Float at %s with type %s and value %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23190C380](v16, -1, -1);
      MEMORY[0x23190C380](v15, -1, -1);

      v31 = v38;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v37);
      __swift_destroy_boxed_opaque_existential_0(v38);
      v31 = v35;
    }

    __swift_destroy_boxed_opaque_existential_0(v31);
LABEL_16:
    v9 = 0.0;
    v8 = 1;
    return LODWORD(v9) | ((v8 & 1) << 32);
  }

  LODWORD(v37[0]) = 0;
  v10 = sub_22FE0FC04(v35[0], v35[1], v37, MEMORY[0x277D84FB0]);

  __swift_destroy_boxed_opaque_existential_0(v38);
  v9 = *v37;
  if (!v10)
  {
    v9 = 0.0;
  }

  v8 = !v10;
  return LODWORD(v9) | ((v8 & 1) << 32);
}

uint64_t sub_22FE107D0(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_22FE0F310(a1);
}

uint64_t sub_22FE107F0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return sub_22FE43254();
}

_BYTE *sub_22FE108A4@<X0>(_BYTE *result@<X0>, uint64_t (*a2)(void)@<X1>, BOOL *a3@<X8>)
{
  v4 = *result;
  v5 = v4 > 0x20;
  v6 = (1 << v4) & 0x100003E01;
  if (v5 || v6 == 0)
  {
    v9 = *(v3 + 16);
    result = a2();
    if (result)
    {
      v10 = *result == 0;
    }

    else
    {
      v10 = 0;
    }

    *a3 = v10;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void sub_22FE10940()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_22FE43054();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_28148BC00 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t Collection<>.parallelForEach(parallelism:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_22FE10C10);
}

uint64_t sub_22FE10C10()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_allocObject();
  v0[8] = v3;
  *(v3 + 16) = *(v0 + 5);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_22FE10D10;
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[5];
  v8 = v0[2];
  v9 = MEMORY[0x277D84F78] + 8;

  return Collection<>.parallelMap<A>(parallelism:transform:)(v8, &unk_22FE4ED30, v3, v7, v9, v5);
}

uint64_t sub_22FE10D10()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FE10E6C);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_22FE10E6C()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_22FE10ED0(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22FD73F54;

  return v8(a2);
}

uint64_t sub_22FE10FC4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_22FD8C738;

  return sub_22FE10ED0(a1, a2, v9);
}

uint64_t Collection<>.parallelMap<A>(parallelism:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[8] = a6;
  v7[9] = v6;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  return MEMORY[0x2822009F8](sub_22FE110B8);
}

uint64_t sub_22FE110B8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  sub_22FE435E4();
  v5 = sub_22FE43774();
  v7 = v6;
  *(v0 + 80) = v5;
  *(v0 + 88) = v6;
  v8 = sub_22FE43764();
  if (!v8)
  {
    return sub_22FE43A74();
  }

  v9 = v8;
  v11 = *(v0 + 64);
  v10 = *(v0 + 72);
  v13 = *(v0 + 48);
  v12 = *(v0 + 56);
  v21 = *(v0 + 24);
  v20 = *(v0 + 32);
  v14 = sub_22FE435E4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = swift_task_alloc();
  *(v0 + 96) = v15;
  *(v15 + 16) = v13;
  *(v15 + 24) = v12;
  *(v15 + 32) = v11;
  *(v15 + 40) = v10;
  *(v15 + 48) = v20;
  *(v15 + 64) = v21;
  *(v15 + 72) = v9;
  *(v15 + 80) = v14;
  *(v15 + 88) = v5;
  *(v15 + 96) = v7;
  v16 = sub_22FE43354();
  v17 = *(MEMORY[0x277D859B8] + 4);
  v18 = swift_task_alloc();
  *(v0 + 104) = v18;
  *v18 = v0;
  v18[1] = sub_22FE112C4;

  return MEMORY[0x282200740](v0 + 16, TupleTypeMetadata2, v16, 0, 0, &unk_22FE4ED48, v15, TupleTypeMetadata2);
}

uint64_t sub_22FE112C4()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_22FE11450;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_22FE113E0;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_22FE113E0()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];
  v4 = v0[2];
  sub_22FE43754();
  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_22FE11450()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];

  sub_22FE43754();
  v5 = v0[1];
  v6 = v0[14];

  return v5();
}

uint64_t sub_22FE114D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v21;
  v8[16] = v22;
  v8[13] = v19;
  v8[14] = v20;
  v8[11] = a8;
  v8[12] = v18;
  v8[9] = a6;
  v8[10] = a7;
  v8[7] = a4;
  v8[8] = a5;
  v8[5] = a2;
  v8[6] = a3;
  v8[4] = a1;
  v8[17] = swift_getTupleTypeMetadata2();
  v9 = sub_22FE43744();
  v8[18] = v9;
  v10 = *(v9 - 8);
  v8[19] = v10;
  v11 = *(v10 + 64) + 15;
  v8[20] = swift_task_alloc();
  v12 = *(v21 - 8);
  v8[21] = v12;
  v8[22] = v12;
  v13 = *(v12 + 64) + 15;
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = *(v22 + 8);
  v14 = sub_22FE43AC4();
  v8[26] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v8[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FE11680);
}

uint64_t sub_22FE11680()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[14];
  v5 = v0[9];
  v6 = v0[6];
  sub_22FE43AB4();
  v7 = swift_allocBox();
  v0[28] = v7;
  MEMORY[0x23190ADC0](v4, v3);
  v8 = sub_22FE43A94();
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v0[9])
    {
      v12 = 0;
      do
      {
        v13 = v0[9];
        ++v12;
        sub_22FE11E70(v7, v0[5], v0[7], v0[8], v0[14], v0[15], v0[16]);
      }

      while (v12 != v13);
    }

    v14 = v0[17];
    v0[29] = 0;
    v15 = *(MEMORY[0x277D85818] + 4);
    v16 = swift_task_alloc();
    v0[30] = v16;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
    v11 = sub_22FE43454();
    *v16 = v0;
    v16[1] = sub_22FE11804;
    v8 = v0[20];
    v17 = v0[5];
    v9 = 0;
    v10 = 0;
  }

  return MEMORY[0x2822004D0](v8, v9, v10, v11);
}

uint64_t sub_22FE11804()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_22FE11CD0;
  }

  else
  {
    v3 = sub_22FE11918;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_22FE11918()
{
  v1 = v0[20];
  v2 = v0[17];
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) != 1)
  {
    v17 = v0[23];
    v16 = v0[24];
    v18 = v0[22];
    v37 = v0[21];
    v38 = v0[29];
    v19 = v0[15];
    v20 = v0[10];
    v21 = *v1;
    (*(v18 + 32))(v16, &v1[*(v2 + 48)], v19);
    v22 = v20 + *(v18 + 72) * v21;
    (*(v18 + 16))(v17, v16, v19);
    v3 = (*(v37 + 32))(v22, v17, v19);
    if (!__OFADD__(v38, 1))
    {
      if ((sub_22FE43424() & 1) == 0)
      {
        sub_22FE11E70(v0[28], v0[5], v0[7], v0[8], v0[14], v0[15], v0[16]);
      }

      (*(v0[22] + 8))(v0[24], v0[15]);
      v0[29] = v38 + 1;
      v23 = v0[17];
      v24 = *(MEMORY[0x277D85818] + 4);
      v25 = swift_task_alloc();
      v0[30] = v25;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
      v6 = sub_22FE43454();
      *v25 = v0;
      v25[1] = sub_22FE11804;
      v3 = v0[20];
      v26 = v0[5];
      v4 = 0;
      v5 = 0;

      return MEMORY[0x2822004D0](v3, v4, v5, v6);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return MEMORY[0x2822004D0](v3, v4, v5, v6);
  }

  (*(v0[19] + 8))(v1, v0[18]);
  v3 = sub_22FE43424();
  if ((v3 & 1) == 0)
  {
    v27 = v0[13];
    if (v0[11] == v27)
    {
      v28 = v0[27];
      v29 = v0[28];
      v31 = v0[23];
      v30 = v0[24];
      v32 = v0[20];
      v33 = v0[15];
      v34 = v0[4];
      v0[2] = v0[12];
      v0[3] = v27;
      sub_22FE43794();
      swift_getWitnessTable();
      v35 = sub_22FE43364();

      *v34 = v35;

      v15 = v0[1];
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  v8 = v0[28];
  v7 = v0[29];
  v9 = v0[15];
  v10 = v0[10];
  sub_22FE43734();
  sub_22FE433B4();
  sub_22FE13F6C();
  swift_allocError();
  sub_22FE42F44();
  swift_willThrow();

  v11 = v0[27];
  v13 = v0[23];
  v12 = v0[24];
  v14 = v0[20];

  v15 = v0[1];
LABEL_12:

  return v15();
}

uint64_t sub_22FE11CD0()
{
  v1 = v0[28];

  v2 = v0[31];
  v3 = v0[27];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[20];

  v7 = v0[1];

  return v7();
}

uint64_t sub_22FE11D64(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 56);
  v9 = *(v2 + 64);
  v10 = *(v2 + 72);
  v11 = *(v2 + 80);
  v14 = *(v2 + 88);
  v15 = *(v2 + 16);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_22FD8C738;

  return sub_22FE114D4(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_22FE11E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v47 = a4;
  v48 = a6;
  v45 = a3;
  v49 = a2;
  v50 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE3188, &qword_22FE49380);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v52 = &v42 - v11;
  v46 = a7;
  v12 = *(a7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v42 = sub_22FE43744();
  v15 = *(v42 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v42);
  v18 = (&v42 - v17);
  v19 = swift_getTupleTypeMetadata2();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (&v42 - v21);
  v43 = *(AssociatedTypeWitness - 8);
  v23 = *(v43 + 64);
  MEMORY[0x28223BE20](v24);
  v25 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v51 = &v42 - v27;
  v44 = a5;
  sub_22FE43AB4();
  swift_projectBox();
  swift_beginAccess();
  sub_22FE43AA4();
  swift_endAccess();
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v18, 1, TupleTypeMetadata2) == 1)
  {
    return (*(v15 + 8))(v18, v42);
  }

  v29 = *(TupleTypeMetadata2 + 48);
  v30 = *(v19 + 48);
  *v22 = *v18;
  v31 = v43;
  v32 = *(v43 + 32);
  v32(v22 + v30, v18 + v29, AssociatedTypeWitness);
  v50 = *v22;
  v33 = v51;
  v32(v51, v22 + *(v19 + 48), AssociatedTypeWitness);
  v34 = sub_22FE43404();
  (*(*(v34 - 8) + 56))(v52, 1, 1, v34);
  (*(v31 + 16))(v25, v33, AssociatedTypeWitness);
  v35 = (*(v31 + 80) + 72) & ~*(v31 + 80);
  v36 = swift_allocObject();
  *(v36 + 2) = 0;
  *(v36 + 3) = 0;
  v37 = v47;
  v38 = v48;
  *(v36 + 4) = v44;
  *(v36 + 5) = v38;
  v39 = v45;
  *(v36 + 6) = v46;
  *(v36 + 7) = v39;
  *(v36 + 8) = v37;
  v32(&v36[v35], v25, AssociatedTypeWitness);
  *&v36[(v23 + v35 + 7) & 0xFFFFFFFFFFFFFFF8] = v50;

  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  v40 = sub_22FE43454();
  v41 = v52;
  sub_22FE12674(v52, &unk_22FE4ED98, v36, v40);
  sub_22FE0D590(v41);
  return (*(v31 + 8))(v51, AssociatedTypeWitness);
}

uint64_t sub_22FE12334(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a7;
  v7[4] = v18;
  v7[2] = a1;
  v10 = *(v18 - 8);
  v7[5] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v7[6] = v12;
  v16 = (a4 + *a4);
  v13 = a4[1];
  v14 = swift_task_alloc();
  v7[7] = v14;
  *v14 = v7;
  v14[1] = sub_22FE124A0;

  return v16(v12, a6);
}

uint64_t sub_22FE124A0()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_22FDC6E98;
  }

  else
  {
    v3 = sub_22FE125B4;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_22FE125B4()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  *v5 = v4;
  (*(v2 + 32))(&v5[v6], v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_22FE12674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE3188, &qword_22FE49380);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v23 - v11;
  sub_22FE0D520(a1, v23 - v11);
  v13 = sub_22FE43404();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_22FE0D590(v12);
    if (*(a3 + 16))
    {
LABEL_3:
      v15 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v16 = sub_22FE43374();
      v18 = v17;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_22FE433F4();
    (*(v14 + 8))(v12, v13);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
  v18 = 0;
LABEL_6:
  v19 = *v5;
  v20 = *(a4 + 16);
  v21 = (v18 | v16);
  if (v18 | v16)
  {
    v24[0] = 0;
    v24[1] = 0;
    v21 = v24;
    v24[2] = v16;
    v24[3] = v18;
  }

  v23[1] = 1;
  v23[2] = v21;
  v23[3] = v19;
  swift_task_create();
}

uint64_t Collection<>.parallelCompactMap<A>(parallelism:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v12 = swift_task_alloc();
  v6[6] = v12;
  v13 = sub_22FE43744();
  v6[7] = v13;
  *v12 = v6;
  v12[1] = sub_22FE12938;

  return Collection<>.parallelMap<A>(parallelism:transform:)(a1, a2, a3, a4, v13, a6);
}

uint64_t sub_22FE12938(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 72) = a1;

    return MEMORY[0x2822009F8](sub_22FE12A88);
  }
}

uint64_t sub_22FE12A88()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  *(v0 + 16) = *(v0 + 72);
  v4 = swift_task_alloc();
  v5 = *(v0 + 32);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  sub_22FE43354();
  swift_getWitnessTable();
  v6 = sub_22FE431B4();

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_22FE12B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = sub_22FE43744();
  return (*(*(v6 - 8) + 16))(a2, a1, v6);
}

uint64_t Collection<>.parallelFilter(parallelism:predicate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_22FE12C38);
}

uint64_t sub_22FE12C38()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = swift_allocObject();
  v0[8] = v5;
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v4;
  v5[5] = v3;

  v6 = swift_task_alloc();
  v0[9] = v6;
  v7 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v6 = v0;
  v6[1] = sub_22FE12D58;
  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[5];
  v12 = v0[2];

  return Collection<>.parallelCompactMap<A>(parallelism:transform:)(v12, &unk_22FE4ED68, v5, v11, AssociatedTypeWitness, v9);
}

uint64_t sub_22FE12D58(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22FE10E6C);
  }

  else
  {
    v7 = *(v4 + 64);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_22FE12EB0(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a2;
  v11 = (a3 + *a3);
  v8 = a3[1];
  v9 = swift_task_alloc();
  v6[6] = v9;
  *v9 = v6;
  v9[1] = sub_22FE12FAC;

  return v11(a2);
}

uint64_t sub_22FE12FAC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 56) = a1 & 1;

    return MEMORY[0x2822009F8](sub_22FE130FC);
  }
}

uint64_t sub_22FE130FC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(*(v0 + 40) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  if (v1 == 1)
  {
    (*(*(AssociatedTypeWitness - 8) + 16))(*(v0 + 16), *(v0 + 24), AssociatedTypeWitness);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  (*(v5 + 56))(*(v0 + 16), v6, 1, AssociatedTypeWitness);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_22FE131FC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_22FD8C738;

  return sub_22FE12EB0(a1, a2, v9, v8, v6, v7);
}

uint64_t Sequence.asyncCompactMap<A>(predicate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v9 = sub_22FE43744();
  v6[9] = v9;
  v10 = *(v9 - 8);
  v6[10] = v10;
  v11 = *(v10 + 64) + 15;
  v6[11] = swift_task_alloc();
  v12 = *(a4 - 8);
  v6[12] = v12;
  v13 = *(v12 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[15] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v6[16] = v15;
  v16 = *(v15 + 64) + 15;
  v6[17] = swift_task_alloc();
  v17 = *(*(sub_22FE43744() - 8) + 64) + 15;
  v6[18] = swift_task_alloc();
  v18 = *(a3 - 8);
  v6[19] = v18;
  v19 = *(v18 + 64) + 15;
  v6[20] = swift_task_alloc();
  v20 = swift_getAssociatedTypeWitness();
  v6[21] = v20;
  v21 = *(v20 - 8);
  v6[22] = v21;
  v22 = *(v21 + 64) + 15;
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FE13574);
}

uint64_t sub_22FE13574()
{
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[7];
  v4 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
  v0[2] = sub_22FE42F34();
  (*(v3 + 16))(v2, v4, v7);
  sub_22FE43184();
  v8 = v0[23];
  v9 = v0[21];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[16];
  v13 = v0[7];
  v14 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_22FE437A4();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v15 = v0[20];
    v17 = v0[17];
    v16 = v0[18];
    v19 = v0[13];
    v18 = v0[14];
    v20 = v0[11];
    (*(v0[22] + 8))(v0[23], v0[21]);
    v21 = v0[2];

    v22 = v0[1];

    return v22(v21);
  }

  else
  {
    (*(v0[16] + 32))(v0[17], v0[18], v0[15]);
    if (sub_22FE43424())
    {
      v24 = v0[2];

      sub_22FE433B4();
      sub_22FE13F6C();
      swift_allocError();
      sub_22FE42F44();
      swift_willThrow();
      v26 = v0[22];
      v25 = v0[23];
      v28 = v0[20];
      v27 = v0[21];
      v29 = v0[18];
      v31 = v0[13];
      v30 = v0[14];
      v38 = v0[11];
      (*(v0[16] + 8))(v0[17], v0[15]);
      (*(v26 + 8))(v25, v27);

      v32 = v0[1];

      return v32();
    }

    else
    {
      v39 = (v0[3] + *v0[3]);
      v33 = *(v0[3] + 4);
      v34 = swift_task_alloc();
      v0[24] = v34;
      *v34 = v0;
      v34[1] = sub_22FE13908;
      v35 = v0[17];
      v36 = v0[11];
      v37 = v0[4];

      return v39(v36, v35);
    }
  }
}

uint64_t sub_22FE13908()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);

    v5 = sub_22FE13E6C;
  }

  else
  {
    v5 = sub_22FE13A24;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_22FE13A24()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[6];
  v4 = (*(v2 + 48))(v1, 1, v3);
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  if (v4 == 1)
  {
    v8 = v0[9];
    v9 = v0[10];
    (*(v6 + 8))(v0[17], v0[15]);
    (*(v9 + 8))(v1, v8);
  }

  else
  {
    v11 = v0[13];
    v10 = v0[14];
    (*(v2 + 32))(v10, v1, v3);
    (*(v2 + 16))(v11, v10, v3);
    sub_22FE43354();
    sub_22FE43324();
    (*(v2 + 8))(v10, v3);
    (*(v6 + 8))(v5, v7);
  }

  v12 = v0[23];
  v13 = v0[21];
  v14 = v0[18];
  v15 = v0[15];
  v16 = v0[16];
  v17 = v0[7];
  v18 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_22FE437A4();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v19 = v0[20];
    v21 = v0[17];
    v20 = v0[18];
    v23 = v0[13];
    v22 = v0[14];
    v24 = v0[11];
    (*(v0[22] + 8))(v0[23], v0[21]);
    v25 = v0[2];

    v26 = v0[1];

    return v26(v25);
  }

  else
  {
    (*(v0[16] + 32))(v0[17], v0[18], v0[15]);
    if (sub_22FE43424())
    {
      v28 = v0[2];

      sub_22FE433B4();
      sub_22FE13F6C();
      swift_allocError();
      sub_22FE42F44();
      swift_willThrow();
      v30 = v0[22];
      v29 = v0[23];
      v32 = v0[20];
      v31 = v0[21];
      v33 = v0[18];
      v35 = v0[13];
      v34 = v0[14];
      v42 = v0[11];
      (*(v0[16] + 8))(v0[17], v0[15]);
      (*(v30 + 8))(v29, v31);

      v36 = v0[1];

      return v36();
    }

    else
    {
      v43 = (v0[3] + *v0[3]);
      v37 = *(v0[3] + 4);
      v38 = swift_task_alloc();
      v0[24] = v38;
      *v38 = v0;
      v38[1] = sub_22FE13908;
      v39 = v0[17];
      v40 = v0[11];
      v41 = v0[4];

      return v43(v40, v39);
    }
  }
}

uint64_t sub_22FE13E6C()
{
  v11 = v0[25];
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[11];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9();
}

unint64_t sub_22FE13F6C()
{
  result = qword_27DAE5110;
  if (!qword_27DAE5110)
  {
    sub_22FE433B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE5110);
  }

  return result;
}

uint64_t Sequence.asyncMap<A>(predicate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v8 = *(*(a4 - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[10] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v6[11] = v10;
  v11 = *(v10 + 64) + 15;
  v6[12] = swift_task_alloc();
  v12 = *(*(sub_22FE43744() - 8) + 64) + 15;
  v6[13] = swift_task_alloc();
  v13 = *(a3 - 8);
  v6[14] = v13;
  v14 = *(v13 + 64) + 15;
  v6[15] = swift_task_alloc();
  v15 = swift_getAssociatedTypeWitness();
  v6[16] = v15;
  v16 = *(v15 - 8);
  v6[17] = v16;
  v17 = *(v16 + 64) + 15;
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FE141D8);
}

uint64_t sub_22FE141D8()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[7];
  v4 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
  v0[2] = sub_22FE42F34();
  (*(v3 + 16))(v2, v4, v7);
  sub_22FE43184();
  v8 = v0[18];
  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[10];
  v12 = v0[11];
  v13 = v0[7];
  v14 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_22FE437A4();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v15 = v0[15];
    v17 = v0[12];
    v16 = v0[13];
    v18 = v0[9];
    (*(v0[17] + 8))(v0[18], v0[16]);
    v19 = v0[2];

    v20 = v0[1];

    return v20(v19);
  }

  else
  {
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    if (sub_22FE43424())
    {
      v22 = v0[2];

      sub_22FE433B4();
      sub_22FE13F6C();
      swift_allocError();
      sub_22FE42F44();
      swift_willThrow();
      v24 = v0[17];
      v23 = v0[18];
      v26 = v0[15];
      v25 = v0[16];
      v27 = v0[13];
      v28 = v0[9];
      (*(v0[11] + 8))(v0[12], v0[10]);
      (*(v24 + 8))(v23, v25);

      v29 = v0[1];

      return v29();
    }

    else
    {
      v35 = (v0[3] + *v0[3]);
      v30 = *(v0[3] + 4);
      v31 = swift_task_alloc();
      v0[19] = v31;
      *v31 = v0;
      v31[1] = sub_22FE14540;
      v32 = v0[12];
      v33 = v0[9];
      v34 = v0[4];

      return v35(v33, v32);
    }
  }
}

uint64_t sub_22FE14540()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);

    v5 = sub_22FE149B4;
  }

  else
  {
    v5 = sub_22FE1465C;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_22FE1465C()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[6];
  sub_22FE43354();
  sub_22FE43324();
  (*(v2 + 8))(v1, v3);
  v6 = v0[18];
  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[10];
  v10 = v0[11];
  v11 = v0[7];
  v12 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_22FE437A4();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v13 = v0[15];
    v15 = v0[12];
    v14 = v0[13];
    v16 = v0[9];
    (*(v0[17] + 8))(v0[18], v0[16]);
    v17 = v0[2];

    v18 = v0[1];

    return v18(v17);
  }

  else
  {
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    if (sub_22FE43424())
    {
      v20 = v0[2];

      sub_22FE433B4();
      sub_22FE13F6C();
      swift_allocError();
      sub_22FE42F44();
      swift_willThrow();
      v22 = v0[17];
      v21 = v0[18];
      v24 = v0[15];
      v23 = v0[16];
      v25 = v0[13];
      v26 = v0[9];
      (*(v0[11] + 8))(v0[12], v0[10]);
      (*(v22 + 8))(v21, v23);

      v27 = v0[1];

      return v27();
    }

    else
    {
      v33 = (v0[3] + *v0[3]);
      v28 = *(v0[3] + 4);
      v29 = swift_task_alloc();
      v0[19] = v29;
      *v29 = v0;
      v29[1] = sub_22FE14540;
      v30 = v0[12];
      v31 = v0[9];
      v32 = v0[4];

      return v33(v31, v30);
    }
  }
}

uint64_t sub_22FE149B4()
{
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v7 = v0[9];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t Set.asyncFilter(predicate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = *(a4 - 8);
  v5[13] = v6;
  v7 = *(v6 + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v8 = *(*(sub_22FE43744() - 8) + 64) + 15;
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FE14B9C);
}

uint64_t sub_22FE14B9C()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v0[7] = sub_22FE42F54();
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = v0[11];
    v4 = v0[12];
    if (v0[10] < 0)
    {
      v6 = v0[10];
    }

    swift_unknownObjectRetain();
    sub_22FE43864();
    result = sub_22FE43544();
    v3 = v0[2];
    v8 = v0[3];
    v10 = v0[4];
    v9 = v0[5];
    v11 = v0[6];
  }

  else
  {
    v12 = -1 << *(v0[10] + 32);
    v13 = v0[10];
    v15 = *(v13 + 56);
    v8 = v13 + 56;
    v14 = v15;
    v10 = ~v12;
    v16 = -v12;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v11 = v17 & v14;

    v9 = 0;
  }

  v0[18] = v3;
  v0[19] = v8;
  v18 = v0[13];
  v0[21] = v9;
  v0[22] = v11;
  v0[20] = v10;
  if (v3 < 0)
  {
    if (sub_22FE43874())
    {
      v20 = v0[17];
      v21 = v0[11];
      sub_22FE43C94();
      swift_unknownObjectRelease();
LABEL_20:
      v0[23] = v9;
      v0[24] = v11;
      v24 = v0[16];
      v25 = v0[17];
      v26 = v0[13];
      v27 = v0[11];
      v28 = v0[8];
      (*(v26 + 56))(v25, 0, 1, v27);
      (*(v26 + 32))(v24, v25, v27);
      v41 = (v28 + *v28);
      v29 = v28[1];
      v30 = swift_task_alloc();
      v0[25] = v30;
      *v30 = v0;
      v30[1] = sub_22FE14F0C;
      v31 = v0[16];
      v32 = v0[9];

      return v41(v31);
    }

    v33 = v0[19];
    v34 = v0[20];
    v35 = v0[18];
    v18 = v0[13];
LABEL_24:
    v36 = v0[16];
    v38 = v0[14];
    v37 = v0[15];
    (*(v18 + 56))(v0[17], 1, 1, v0[11]);
    sub_22FDAF1A8();
    v39 = v0[7];

    v40 = v0[1];

    return v40(v39);
  }

  else
  {
    if (v11)
    {
      v19 = v9;
LABEL_19:
      v23 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      (*(v18 + 16))(v0[17], *(v3 + 48) + *(v18 + 72) * (v23 | (v19 << 6)), v0[11]);
      goto LABEL_20;
    }

    v22 = v9;
    while (1)
    {
      v19 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v19 >= ((v10 + 64) >> 6))
      {
        goto LABEL_24;
      }

      v11 = *(v8 + 8 * v19);
      ++v22;
      if (v11)
      {
        v9 = v19;
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22FE14F0C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v7 = *(v4 + 56);

    v8 = sub_22FE153C8;
  }

  else
  {
    *(v4 + 216) = a1 & 1;
    v8 = sub_22FE15040;
  }

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_22FE15040()
{
  v1 = *(v0 + 128);
  if (*(v0 + 216))
  {
    v2 = *(v0 + 120);
    v3 = *(v0 + 104);
    v4 = *(v0 + 88);
    (*(v3 + 16))(*(v0 + 112), *(v0 + 128), v4);
    sub_22FE43554();
    sub_22FE43514();
    v5 = *(v3 + 8);
    v5(v2, v4);
    result = (v5)(v1, v4);
  }

  else
  {
    result = (*(*(v0 + 104) + 8))(*(v0 + 128), *(v0 + 88));
  }

  v7 = *(v0 + 184);
  v8 = *(v0 + 192);
  *(v0 + 168) = v7;
  *(v0 + 176) = v8;
  v9 = *(v0 + 144);
  if (v9 < 0)
  {
    if (sub_22FE43874())
    {
      v11 = *(v0 + 136);
      v12 = *(v0 + 88);
      sub_22FE43C94();
      swift_unknownObjectRelease();
LABEL_15:
      *(v0 + 184) = v7;
      *(v0 + 192) = v8;
      v15 = *(v0 + 128);
      v16 = *(v0 + 136);
      v17 = *(v0 + 104);
      v18 = *(v0 + 88);
      v19 = *(v0 + 64);
      (*(v17 + 56))(v16, 0, 1, v18);
      (*(v17 + 32))(v15, v16, v18);
      v32 = (v19 + *v19);
      v20 = v19[1];
      v21 = swift_task_alloc();
      *(v0 + 200) = v21;
      *v21 = v0;
      v21[1] = sub_22FE14F0C;
      v22 = *(v0 + 128);
      v23 = *(v0 + 72);

      return v32(v22);
    }

    v24 = *(v0 + 160);
    v25 = *(v0 + 144);
LABEL_19:
    v26 = *(v0 + 152);
    v27 = *(v0 + 128);
    v29 = *(v0 + 112);
    v28 = *(v0 + 120);
    (*(*(v0 + 104) + 56))(*(v0 + 136), 1, 1, *(v0 + 88));
    sub_22FDAF1A8();
    v30 = *(v0 + 56);

    v31 = *(v0 + 8);

    return v31(v30);
  }

  else
  {
    if (v8)
    {
      v10 = v7;
LABEL_14:
      v14 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      (*(*(v0 + 104) + 16))(*(v0 + 136), *(v9 + 48) + *(*(v0 + 104) + 72) * (v14 | (v10 << 6)), *(v0 + 88));
      goto LABEL_15;
    }

    v13 = v7;
    while (1)
    {
      v10 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v10 >= ((*(v0 + 160) + 64) >> 6))
      {
        goto LABEL_19;
      }

      v8 = *(*(v0 + 152) + 8 * v10);
      ++v13;
      if (v8)
      {
        v7 = v10;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22FE153C8()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v8 = v0[15];
  v7 = v0[16];
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[11];
  sub_22FDAF1A8();
  (*(v10 + 8))(v7, v11);

  v12 = v0[1];
  v13 = v0[26];

  return v12();
}

uint64_t Dictionary.fetch(key:asyncDefault:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = sub_22FE43744();
  v8[10] = v9;
  v10 = *(v9 - 8);
  v8[11] = v10;
  v11 = *(v10 + 64) + 15;
  v8[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FE15558);
}

uint64_t sub_22FE15558()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[3];
  sub_22FE42FB4();
  v7 = *(v3 - 8);
  v8 = (*(v7 + 48))(v1, 1, v3);
  v9 = v0[12];
  if (v8 == 1)
  {
    v10 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    v18 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    v0[13] = v12;
    *v12 = v0;
    v12[1] = sub_22FE15734;
    v13 = v0[5];
    v14 = v0[2];

    return v18(v14);
  }

  else
  {
    (*(v7 + 32))(v0[2], v0[12], v0[8]);
    v16 = v0[12];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_22FE15734()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v6 = *v0;

  v3 = *(v1 + 96);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_22FE15844(uint64_t a1)
{
  v3 = v1[4];
  v14 = v1[5];
  v4 = *(v1[6] + 8);
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[7];
  v10 = v1[8];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_22FD73F54;

  return sub_22FE12334(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_22FE15A40(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  return sub_22FE15AE4(a1, a2, *(v2 + 48), *(v2 + 56), *(v2 + 16), *(v2 + 24)) & 1;
}

uint64_t sub_22FE15AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, void *, uint64_t, uint64_t))
{
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a5;
  v9[5] = a6;
  v9[6] = a1;
  v9[7] = a2;
  return a8(a7, v9, a3, a5);
}

uint64_t sub_22FE15AE4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), char a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v22 - v17;
  v19(v16);
  if (!v6)
  {
    a3(a2);
    a4 = sub_22FE43004();
    v21 = *(v11 + 8);
    v21(v14, a6);
    v21(v18, a6);
  }

  return a4 & 1;
}

double Duration.timeInterval.getter()
{
  v0 = sub_22FE43E54();
  sub_22FE43E54();
  return v1 / 1.0e18 + v0;
}

uint64_t sub_22FE15D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(char *, uint64_t, uint64_t))
{
  v22[2] = a1;
  v23 = a6;
  v22[1] = a5;
  v8 = *(*(a3 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v22 - v17;
  swift_getAssociatedConformanceWitness();
  sub_22FE43CF4();
  sub_22FE43CA4();
  sub_22FE43564();
  v19 = *(v11 + 8);
  v19(v15, a2);
  v20 = v23(v18, a2, a3);
  v19(v18, a2);
  return v20;
}

uint64_t _s10PhotosFace13TimeUtilitiesO12currentEpochSivgZ_0()
{
  v0 = sub_22FE42854();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_22FDB1188(0x7961446465786946, 0xE800000000000000, 0, 1);
  if (v6)
  {
    sub_22FE42844();
    sub_22FE427F4();
    (*(v1 + 8))(v4, v0);
    sub_22FE43EB4();
    sub_22FDB13CC(0xD000000000000012, 0x800000022FE48A00, 0xC0DDD92E56000000);
    result = sub_22FE43E74();
    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v7 > -9.22337204e18)
    {
      if (v7 < 9.22337204e18)
      {
        return v7;
      }

LABEL_9:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_22FE163F4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_22FE42D34();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_22FE42D24();
}

uint64_t sub_22FE16490@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_22FE42D34();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_22FE16560(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC700](a1, a2, WitnessTable, v5);
}

id sub_22FE165F0@<X0>(void *a1@<X8>)
{
  result = sub_22FE16538(*v1);
  *a1 = result;
  return result;
}

void (*sub_22FE1661C(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *(a3 + 16);
  v10 = sub_22FE166F4(v7, *a2, *v3);
  v8[4] = v11;
  v8[5] = v10;
  return sub_22FE166AC;
}

void sub_22FE166AC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1);

  free(v1);
}

uint64_t sub_22FE16760(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

uint64_t sub_22FE16858(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC6F8](a1, a2, WitnessTable, v5);
}

uint64_t sub_22FE168E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x277D83BC8]);
}

uint64_t sub_22FE16964(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_22FE169C0()
{
  swift_getWitnessTable();
  v1 = sub_22FE16F70();

  return v1;
}

uint64_t sub_22FE16A50(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22FE16AA4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_22FE16B70()
{
  result = qword_27DAE5270;
  if (!qword_27DAE5270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE5270);
  }

  return result;
}

uint64_t sub_22FE16CE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE5268, &qword_22FE4EEC8);
    sub_22FE16B70();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22FE16DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_22FE43014();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_22FE16EA4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_22FE43014();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = *(sub_22FE43674() + 36);
  result = sub_22FE43014();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

PhotosFace::Platform_optional __swiftcall Platform.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = PhotosFace_Platform_watch;
  }

  else
  {
    v1.value = PhotosFace_Platform_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_22FE16FF4()
{
  result = qword_27DAE5288;
  if (!qword_27DAE5288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE5288);
  }

  return result;
}

void *sub_22FE17048@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_22FE17078()
{
  result = qword_27DAE5290;
  if (!qword_27DAE5290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE5298, &qword_22FE4F100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE5290);
  }

  return result;
}

uint64_t CheckedContinuation.resume<>(success:error:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a2;
  v4 = *(a3 + 24);
  v38 = *(v4 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](a1);
  v36 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = &v34 - v8;
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v35 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - v16;
  v18 = sub_22FE43744();
  v39 = v4;
  v19 = sub_22FE43744();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v21 = *(*(TupleTypeMetadata2 - 8) + 64);
  v22.n128_f64[0] = MEMORY[0x28223BE20](TupleTypeMetadata2 - 8);
  v24 = &v34 - v23;
  v26 = *(v25 + 56);
  v27 = *(v18 - 8);
  (*(v27 + 16))(&v34 - v23, a1, v18, v22);
  v28 = *(v19 - 8);
  (*(v28 + 16))(&v24[v26], v40, v19);
  if ((*(v11 + 48))(v24, 1, v10) == 1)
  {
    v30 = v38;
    v29 = v39;
    if ((*(v38 + 48))(&v24[v26], 1, v39) == 1)
    {
      result = sub_22FE43A74();
      __break(1u);
    }

    else
    {
      v31 = &v24[v26];
      v32 = v37;
      (*(v30 + 32))(v37, v31, v29);
      (*(v30 + 16))(v36, v32, v29);
      sub_22FE43384();
      (*(v30 + 8))(v32, v29);
      return (*(v27 + 8))(v24, v18);
    }
  }

  else
  {
    (*(v11 + 32))(v17, v24, v10);
    (*(v11 + 16))(v35, v17, v10);
    sub_22FE43394();
    (*(v11 + 8))(v17, v10);
    return (*(v28 + 8))(&v24[v26], v19);
  }

  return result;
}

uint64_t SeedableRandom.init(seed:bits:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v3 = a2 - 1;
    if (!__OFSUB__(a2, 1))
    {
      v4 = result;
      result = sub_22FE1765C(a2);
      *a3 = v4;
      a3[1] = v3;
      a3[2] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::UInt64 __swiftcall SeedableRandom.repeatingNext(upTo:)(Swift::UInt64 upTo)
{
  if (upTo)
  {
    v2 = *v1;
    do
    {
      v2 = ((vaddlv_u8(vcnt_s8((v2 & *(v1 + 16)))) & 1) << (*(v1 + 8) & 0x3F)) | (v2 >> 1);
    }

    while (v2 - 1 >= upTo);
    *v1 = v2;
    return v2 - 1;
  }

  else
  {
    __break(1u);
  }

  return upTo;
}

unint64_t SeedableRandom.init(bits:)@<X0>(uint64_t a1@<X8>)
{
  result = sub_22FE177D0(0xFFFFFFFFFFFFFFFFLL);
  if (result == -1)
  {
    __break(1u);
  }

  else
  {
    *a1 = result + 1;
    *(a1 + 8) = xmmword_22FE4F150;
  }

  return result;
}

uint64_t sub_22FE1765C(uint64_t a1)
{
  if ((a1 - 1) < 0x40)
  {
    return qword_22FE4F1C8[a1 - 1];
  }

  result = sub_22FE43A74();
  __break(1u);
  return result;
}

Swift::UInt64 __swiftcall SeedableRandom.next()()
{
  result = ((vaddlv_u8(vcnt_s8((v0[2] & *v0))) & 1) << v0[1]) | (*v0 >> 1);
  *v0 = result;
  return result;
}

unint64_t SeedableRandom.repeatingNext<A>(in:)()
{
  v1 = v0[2];
  v2 = v0[1] & 0x3F;
  do
  {
    v3 = ((vaddlv_u8(vcnt_s8((*v0 & v1))) & 1) << v2) | (*v0 >> 1);
    *v0 = v3;
  }

  while ((sub_22FE43244() & 1) == 0);
  return v3;
}

unint64_t sub_22FE1779C()
{
  result = ((vaddlv_u8(vcnt_s8((v0[2] & *v0))) & 1) << v0[1]) | (*v0 >> 1);
  *v0 = result;
  return result;
}

unint64_t sub_22FE177D0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x23190C390](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x23190C390](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SeedableRandom(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SeedableRandom(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t static SystemDirectory.folderURL(for:)()
{
  v0 = sub_22FE426C4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22FE42774();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28148B788 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v5, qword_28148B790);
  sub_22FE42704();
  v12[0] = sub_22FE42874();
  v12[1] = v10;
  (*(v1 + 104))(v4, *MEMORY[0x277CC91D8], v0);
  sub_22FD750CC();
  sub_22FE42764();
  (*(v1 + 8))(v4, v0);

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_22FE17B08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_22FE426C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22FE42774();
  __swift_allocate_value_buffer(v9, qword_28148B790);
  __swift_project_value_buffer(v9, qword_28148B790);
  v10 = swift_slowAlloc();
  started = sysdir_start_search_path_enumeration_private();
  MEMORY[0x23190C4B0](started, v10);
  sub_22FE43104();
  MEMORY[0x23190C380](v10, -1, -1);
  (*(v5 + 104))(v8, *MEMORY[0x277CC91C0], v4);
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  return sub_22FE42754();
}

uint64_t static SystemDirectory.library.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28148B788 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42774();
  v3 = __swift_project_value_buffer(v2, qword_28148B790);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static SystemDirectory.photosFace.getter()
{
  if (qword_28148B788 != -1)
  {
    swift_once();
  }

  v0 = sub_22FE42774();
  __swift_project_value_buffer(v0, qword_28148B790);
  return sub_22FE42704();
}

uint64_t sub_22FE17E44(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FE426C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22FE42774();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28148B788 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v9, qword_28148B790);
  sub_22FE42704();
  v15[0] = a1;
  v15[1] = a2;
  (*(v5 + 104))(v8, *MEMORY[0x277CC91D8], v4);
  sub_22FD750CC();
  sub_22FE42764();
  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

void static SystemDirectory.tempFolder()()
{
  v12[1] = *MEMORY[0x277D85DE8];
  v0 = sub_22FE42774();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() defaultManager];
  if (qword_28148B788 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_28148B790);
  sub_22FE42704();
  v6 = sub_22FE426F4();
  (*(v1 + 8))(v4, v0);
  v12[0] = 0;
  v7 = [v5 URLForDirectory:99 inDomain:1 appropriateForURL:v6 create:1 error:v12];

  v8 = v12[0];
  if (v7)
  {
    sub_22FE42734();
    v9 = v8;
  }

  else
  {
    v10 = v12[0];
    sub_22FE426B4();

    swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t UUID.init(hash:)(void (*a1)(_BYTE *))
{
  v2 = sub_22FE42EF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_22FE42F24();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v13[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22FE42F14();
  a1(v11);
  sub_22FE42F04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE44F8, &qword_22FE4B960);
  sub_22FE42EE4();
  sub_22FE42894();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

_OWORD *sub_22FE18490@<X0>(_OWORD *result@<X0>, _OWORD *a2@<X8>)
{
  if (result)
  {
    *a2 = *result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_22FE184A4()
{
  v5 = *MEMORY[0x277D85DE8];
  sub_22FE430C4();
  v0 = xpc_copy_entitlement_for_token();

  if (v0)
  {
    v1 = MEMORY[0x23190C510](v0);
    v2 = v1 == sub_22FE42D44() && xpc_BOOL_get_value(v0);
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0;
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_22FE18560(uint64_t a1)
{
  v2 = v1;
  v47 = type metadata accessor for FetchByDayResponseProto(0);
  v4 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v55 = MEMORY[0x277D84F90];
    sub_22FD92538(0, v7, 0);
    v50 = v55;
    v9 = a1 + 64;
    v10 = -1 << *(a1 + 32);
    v11 = sub_22FE43834();
    v51 = *(a1 + 36);
    v12 = sub_22FDF197C();
    v13 = 0;
    v45 = v12;
    v46 = v6;
    v14 = *(v12 + 40);
    result = v12 + 40;
    v43 = v14;
    v44 = result;
    v40 = a1 + 72;
    v41 = v7;
    v42 = a1 + 64;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v17 = v11 >> 6;
      if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_29;
      }

      if (v51 != *(a1 + 36))
      {
        goto LABEL_30;
      }

      v49 = v13;
      v18 = *(*(a1 + 48) + 8 * v11);
      v19 = *(*(a1 + 56) + 8 * v11);
      v20 = qword_28148B410;

      if (v20 != -1)
      {
        swift_once();
      }

      type metadata accessor for CommunicationActor();
      sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor);
      sub_22FE43374();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v53 = v18;
      v54 = v19;
      v52 = 2;

      v21 = v46;
      v43(&v52, &type metadata for FetchByDayResponse, v45);
      if (v2)
      {

        return swift_bridgeObjectRelease_n();
      }

      sub_22FE292D4(&qword_27DAE4318, type metadata accessor for FetchByDayResponseProto);
      v22 = sub_22FE42BD4();
      v23 = v21;
      v24 = v22;
      v26 = v25;
      v48 = 0;
      v27 = a1;
      sub_22FE28D64(v23, type metadata accessor for FetchByDayResponseProto);

      v28 = v50;
      v55 = v50;
      v30 = *(v50 + 16);
      v29 = *(v50 + 24);
      if (v30 >= v29 >> 1)
      {
        result = sub_22FD92538((v29 > 1), v30 + 1, 1);
        v28 = v55;
      }

      *(v28 + 16) = v30 + 1;
      v31 = v28 + 16 * v30;
      *(v31 + 32) = v24;
      *(v31 + 40) = v26;
      v15 = 1 << *(v27 + 32);
      if (v11 >= v15)
      {
        goto LABEL_31;
      }

      v9 = v42;
      v32 = *(v42 + 8 * v17);
      if ((v32 & (1 << v11)) == 0)
      {
        goto LABEL_32;
      }

      a1 = v27;
      v50 = v28;
      if (v51 != *(v27 + 36))
      {
        goto LABEL_33;
      }

      v33 = v32 & (-2 << (v11 & 0x3F));
      if (v33)
      {
        v15 = __clz(__rbit64(v33)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v2 = v48;
        v16 = v41;
      }

      else
      {
        v34 = v17 << 6;
        v35 = v17 + 1;
        v16 = v41;
        v36 = (v40 + 8 * v17);
        v2 = v48;
        while (v35 < (v15 + 63) >> 6)
        {
          v38 = *v36++;
          v37 = v38;
          v34 += 64;
          ++v35;
          if (v38)
          {
            result = sub_22FD72BF8(v11, v51, 0);
            v15 = __clz(__rbit64(v37)) + v34;
            goto LABEL_4;
          }
        }

        result = sub_22FD72BF8(v11, v51, 0);
      }

LABEL_4:
      v13 = v49 + 1;
      v11 = v15;
      if (v49 + 1 == v16)
      {
        return v50;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  return result;
}

uint64_t PhotosXPCClient.__allocating_init(messageCenter:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t PhotosXPCClient.generatePhoto(request:)(uint64_t a1, uint64_t *a2)
{
  v3[4] = a1;
  v3[5] = v2;
  PhotoRequestProto = type metadata accessor for GeneratePhotoRequestProto(0);
  v3[6] = PhotoRequestProto;
  v6 = *(*(PhotoRequestProto - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *a2;
  v3[7] = v7;
  v3[8] = v8;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor);
  sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FE18B4C);
}

uint64_t sub_22FE18B4C()
{
  v16 = v0;
  v1 = *(v0[5] + 16);
  v0[2] = v0[8];
  v2 = v0[7];
  v15[0] = 2;
  v3 = sub_22FDF1928();
  (*(v3 + 40))(v15, &type metadata for GeneratePhotoRequest, v3);
  v5 = v0[6];
  v4 = v0[7];
  sub_22FE292D4(&qword_27DAE4340, type metadata accessor for GeneratePhotoRequestProto);
  v6 = sub_22FE42BD4();
  v8 = v0[4];
  v9 = v6;
  v11 = v10;
  sub_22FE28D64(v0[7], type metadata accessor for GeneratePhotoRequestProto);
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = 1;
  *(v12 + 32) = v9;
  *(v12 + 40) = v11;

  sub_22FDB4380(v9, v11);
  v13 = sub_22FE275DC(&unk_22FE4B8D8, v12);

  sub_22FD917D4(v9, v11);
  v0[3] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4550, &qword_22FE4B908);
  sub_22FDBC930(&qword_27DAE4558, &qword_27DAE4550, &qword_22FE4B908);
  sub_22FE43C54();

  v14 = v0[1];

  return v14();
}

uint64_t PhotosXPCClient.sendMessage(request:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_22FE430A4() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor);
  v3[6] = sub_22FE43374();
  v3[7] = v5;

  return MEMORY[0x2822009F8](sub_22FE18EDC);
}

uint64_t sub_22FE18EDC()
{
  v1 = v0[3];
  v2 = v0[2];
  v3 = *(v0[4] + 16);

  v4 = sub_22FDBF4C0(v2, v1);
  v6 = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = 0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;

  sub_22FDB4380(v4, v6);
  v0[8] = sub_22FE275DC(&unk_22FE4F410, v7);

  sub_22FD917D4(v4, v6);
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_22FE19024;

  return sub_22FE1C78C();
}

uint64_t sub_22FE19024(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 80) = a1;

  if (v1)
  {
    v7 = v3[5];

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    v10 = v3[6];
    v11 = v3[7];

    return MEMORY[0x2822009F8](sub_22FE19190);
  }
}

uint64_t sub_22FE19190()
{
  v1 = v0[10];
  if (v1[2] == 1)
  {
    v2 = v0[5];
    v4 = v1[4];
    v3 = v1[5];
    sub_22FDB4380(v4, v3);

    sub_22FE43094();
    result = sub_22FE43084();
    if (v6)
    {
      v7 = result;
      v8 = v6;
      v9 = v0[5];
      sub_22FD917D4(v4, v3);

      v10 = v0[1];

      return v10(v7, v8);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v11 = v0[10];

    sub_22FDD4264();
    swift_allocError();
    *v12 = 2;
    swift_willThrow();
    v13 = v0[5];

    v14 = v0[1];

    return v14();
  }

  return result;
}

uint64_t PhotosXPCClient.trackFace<A>(type:request:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = v5;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 64) = a2;
  *(v6 + 24) = a1;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor);
  sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FE193E4);
}

uint64_t sub_22FE193E4()
{
  v17 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(*(v0 + 56) + 16);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v16[0] = 2;
  v6 = (*(*(v2 + 8) + 16))(v16, v4);
  v7 = 0x16080D03u >> (8 * v1);
  v8 = *(v0 + 24);
  v9 = v6;
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v3;
  *(v12 + 24) = v7;
  *(v12 + 32) = v9;
  *(v12 + 40) = v11;

  sub_22FDB4380(v9, v11);
  v13 = sub_22FE275DC(&unk_22FE4F428, v12);

  sub_22FD917D4(v9, v11);
  *(v0 + 16) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4550, &qword_22FE4B908);
  type metadata accessor for StoredPhoto(0);
  sub_22FDBC930(&qword_27DAE4558, &qword_27DAE4550, &qword_22FE4B908);
  sub_22FE43C54();
  v14 = *(v0 + 8);

  return v14();
}

uint64_t PhotosXPCClient.untrackFace(type:request:)(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 32) = a1;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor);
  sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FE196B0);
}

uint64_t sub_22FE196B0()
{
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 24) + 16);
  v3 = 0x17090E04u >> (8 * *(v0 + 32));
  v4 = UUID.serialized(version:)();
  v6 = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = v3;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;

  sub_22FDB4380(v4, v6);
  sub_22FE275DC(&unk_22FE4F440, v7);

  sub_22FD917D4(v4, v6);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t PhotosXPCClient.fetchFaceList<A>(type:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor);
  *(v4 + 40) = sub_22FE43374();
  *(v4 + 48) = v5;

  return MEMORY[0x2822009F8](sub_22FE198BC);
}

uint64_t sub_22FE198BC()
{
  v1 = *(*(v0 + 32) + 16);
  v2 = 0x180A0F05u >> (8 * *(v0 + 88));
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = xmmword_22FE4B510;

  *(v0 + 56) = sub_22FE275DC(&unk_22FE4F450, v3);

  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_22FE199E0;

  return sub_22FE1C78C();
}

uint64_t sub_22FE199E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *(*v2 + 56);
  v6 = *v2;
  v3[9] = a1;
  v3[10] = v1;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = v3[5];
    v10 = v3[6];

    return MEMORY[0x2822009F8](sub_22FE19B44);
  }
}

uint64_t sub_22FE19B44()
{
  v14 = v0;
  v1 = v0[9];
  if (v1[2] == 1)
  {
    v2 = v0[10];
    v3 = v0[2];
    v4 = v0[3];
    v5 = v1[4];
    v6 = v1[5];
    sub_22FDB4380(v5, v6);

    v13[0] = 2;
    v7 = Array<A>.init(serialized:version:)(v5, v6, v13, v3, *(v4 + 8));
    if (!v2)
    {
      v8 = v0[1];

      return v8(v7);
    }
  }

  else
  {
    v10 = v0[9];

    sub_22FDD4264();
    swift_allocError();
    *v11 = 2;
    swift_willThrow();
  }

  v12 = v0[1];

  return v12();
}

uint64_t PhotosXPCClient.fetchFace(type:request:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 32) = a3;
  *(v4 + 40) = v3;
  *(v4 + 64) = a2;
  *(v4 + 24) = a1;
  FaceRequestProto = type metadata accessor for FetchFaceRequestProto(0);
  *(v4 + 48) = FaceRequestProto;
  v6 = *(*(FaceRequestProto - 8) + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor);
  sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FE19DA8);
}

uint64_t sub_22FE19DA8()
{
  v20 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = *(*(v0 + 40) + 16);
  v4 = *(v0 + 56);
  v19[0] = 2;
  v5 = sub_22FE292D4(&qword_27DAE4780, type metadata accessor for FetchFaceRequest);
  v6 = *(v5 + 40);
  FaceRequest = type metadata accessor for FetchFaceRequest();
  v6(v19, FaceRequest, v5);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  sub_22FE292D4(&qword_27DAE4310, type metadata accessor for FetchFaceRequestProto);
  v10 = sub_22FE42BD4();
  LODWORD(v6) = 0x190B1006u >> (8 * v1);
  v12 = *(v0 + 24);
  v13 = v10;
  v15 = v14;
  sub_22FE28D64(*(v0 + 56), type metadata accessor for FetchFaceRequestProto);
  v16 = swift_allocObject();
  *(v16 + 16) = v3;
  *(v16 + 24) = v6;
  *(v16 + 32) = v13;
  *(v16 + 40) = v15;

  sub_22FDB4380(v13, v15);
  v17 = sub_22FE275DC(&unk_22FE4F460, v16);

  sub_22FD917D4(v13, v15);
  *(v0 + 16) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4550, &qword_22FE4B908);
  type metadata accessor for StoredPhoto(0);
  sub_22FDBC930(&qword_27DAE4558, &qword_27DAE4550, &qword_22FE4B908);
  sub_22FE43C54();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t PhotosXPCClient.provideAssetList<A>(type:id:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 96) = a1;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor);
  *(v5 + 48) = sub_22FE43374();
  *(v5 + 56) = v6;

  return MEMORY[0x2822009F8](sub_22FE1A154);
}

uint64_t sub_22FE1A154()
{
  v14 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 32);
  v3 = *(*(v0 + 40) + 16);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v13[0] = 2;
  v6 = v1 + 18;
  v7 = (*(*(v2 + 8) + 16))(v13, v4);
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  *(v10 + 24) = v6;
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;

  sub_22FDB4380(v7, v9);
  *(v0 + 64) = sub_22FE275DC(&unk_22FE4F478, v10);

  sub_22FD917D4(v7, v9);
  v11 = swift_task_alloc();
  *(v0 + 72) = v11;
  *v11 = v0;
  v11[1] = sub_22FE1A300;

  return sub_22FE1C78C();
}

uint64_t sub_22FE1A300(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *(*v2 + 64);
  v6 = *v2;
  v3[10] = a1;
  v3[11] = v1;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = v3[6];
    v10 = v3[7];

    return MEMORY[0x2822009F8](sub_22FE1A464);
  }
}

uint64_t sub_22FE1A464()
{
  v1 = v0[10];
  if (v1[2] == 1)
  {
    v2 = v0[11];
    v4 = v1[4];
    v3 = v1[5];
    sub_22FDB4380(v4, v3);

    v5 = sub_22FE1B8B4(v4, v3, 2);
    if (!v2)
    {
      v6 = v0[1];

      return v6(v5);
    }
  }

  else
  {
    v8 = v0[10];

    sub_22FDD4264();
    swift_allocError();
    *v9 = 2;
    swift_willThrow();
  }

  v10 = v0[1];

  return v10();
}

uint64_t PhotosXPCClient.fetchFaceByDay(type:request:)(char a1, uint64_t a2)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = v2;
  *(v3 + 104) = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52A0, &qword_22FE4F488);
  *(v3 + 40) = v4;
  v5 = *(v4 - 8);
  *(v3 + 48) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor);
  *(v3 + 64) = sub_22FE43374();
  *(v3 + 72) = v7;

  return MEMORY[0x2822009F8](sub_22FE1A6DC);
}

uint64_t sub_22FE1A6DC()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 32) + 16);
  v3 = 0x1A0C1107u >> (8 * *(v0 + 104));
  v4 = *(v0 + 56);
  v5 = UUID.serialized(version:)();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = v3;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;

  sub_22FDB4380(v5, v7);
  v9 = sub_22FE275DC(&unk_22FE4F490, v8);

  sub_22FD917D4(v5, v7);
  *(v0 + 16) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4550, &qword_22FE4B908);
  sub_22FDBC930(&qword_27DAE4558, &qword_27DAE4550, &qword_22FE4B908);
  sub_22FE43C54();
  v10 = swift_task_alloc();
  *(v0 + 80) = v10;
  *v10 = v0;
  v10[1] = sub_22FE1A8C0;
  v11 = *(v0 + 56);

  return sub_22FE1CC14();
}

uint64_t sub_22FE1A8C0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  v4[11] = a1;
  v4[12] = v1;

  (*(v3[6] + 8))(v3[7], v3[5]);
  v7 = v3[9];
  v8 = v3[8];
  if (v1)
  {
    v9 = sub_22FE1AC68;
  }

  else
  {
    v9 = sub_22FE1AA50;
  }

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_22FE1AA50()
{
  v1 = v0[11];
  v2 = *(v1 + 16);
  if (v2)
  {
    v21 = MEMORY[0x277D84F90];
    sub_22FD9270C(0, v2, 0);
    v3 = v21;
    v4 = (v1 + 40);
    do
    {
      v6 = v0[8];
      v5 = v0[9];
      v8 = *(v4 - 1);
      v7 = *v4;

      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        v9 = v0[8];
        v10 = v0[9];
        swift_task_reportUnexpectedExecutor();
      }

      v12 = *(v21 + 16);
      v11 = *(v21 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_22FD9270C((v11 > 1), v12 + 1, 1);
      }

      *(v21 + 16) = v12 + 1;
      v13 = v21 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v7;
      v4 += 2;
      --v2;
    }

    while (v2);
    v14 = v0[11];

    if (*(v21 + 16))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v16 = v0[11];

    v3 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4080, &qword_22FE4BEC0);
      v15 = sub_22FE43B04();
      goto LABEL_12;
    }
  }

  v15 = MEMORY[0x277D84F98];
LABEL_12:
  v17 = v0[12];
  v22 = v15;
  sub_22FE265D0(v3, 1, sub_22FE22674);
  if (v17)
  {
  }

  else
  {
    v19 = v0[7];

    v20 = v0[1];

    return v20(v22);
  }
}

uint64_t sub_22FE1AC68()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t PhotosXPCClient.generateMask(identifier:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor);
  v2[4] = sub_22FE43374();
  v2[5] = v3;

  return MEMORY[0x2822009F8](sub_22FE1ADBC);
}

uint64_t sub_22FE1ADBC()
{
  v1 = v0[2];
  v2 = *(v0[3] + 16);
  v3 = UUID.serialized(version:)();
  v5 = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = 2;
  *(v6 + 32) = v3;
  *(v6 + 40) = v5;

  sub_22FDB4380(v3, v5);
  v0[6] = sub_22FE275DC(&unk_22FE4F4B0, v6);

  sub_22FD917D4(v3, v5);
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_22FE1AF00;

  return sub_22FE1C78C();
}

uint64_t sub_22FE1AF00(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 64) = a1;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v3 + 32);
    v10 = *(v3 + 40);

    return MEMORY[0x2822009F8](sub_22FE1B064);
  }
}

uint64_t sub_22FE1B064()
{
  v1 = *(v0 + 64);
  if (v1[2] == 1)
  {
    v3 = v1[4];
    v2 = v1[5];
    sub_22FDB4380(v3, v2);

    v4 = *(v0 + 8);

    return v4(v3, v2);
  }

  else
  {
    v6 = *(v0 + 64);

    sub_22FDD4264();
    swift_allocError();
    *v7 = 2;
    swift_willThrow();
    v8 = *(v0 + 8);

    return v8();
  }
}

size_t sub_22FE1B164(uint64_t a1, unint64_t a2, int a3)
{
  v62 = a3;
  v60 = sub_22FE428C4();
  v66 = *(v60 - 8);
  v6 = v66[8];
  MEMORY[0x28223BE20](v60);
  v61 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for AlbumIDProto();
  v8 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v65 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v63 = &v47 - v11;
  v12 = type metadata accessor for AlbumID();
  v58 = *(v12 - 8);
  v59 = v12;
  v13 = *(v58 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v47 - v17;
  v19 = sub_22FE42A74();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v24 = type metadata accessor for GenericListProto(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v70 = a1;
  *(&v70 + 1) = a2;
  v69 = 0;
  v67 = 0u;
  v68 = 0u;
  sub_22FDB4380(a1, a2);
  sub_22FE42A64();
  sub_22FE292D4(&qword_27DAE4840, type metadata accessor for GenericListProto);
  sub_22FE42BE4();
  if (v3)
  {
    sub_22FD917D4(a1, a2);
    return v22;
  }

  v57 = v22;
  v54 = v18;
  v55 = v15;
  v28 = *v27;
  v29 = *(*v27 + 16);
  if (!v29)
  {
    sub_22FD917D4(a1, a2);
    sub_22FE28D64(v27, type metadata accessor for GenericListProto);
    return MEMORY[0x277D84F90];
  }

  v48 = v27;
  v49 = a1;
  v50 = a2;
  v71 = MEMORY[0x277D84F90];
  result = sub_22FD926C8(0, v29, 0);
  v31 = 0;
  v22 = v71;
  v56 = v28 + 32;
  v51 = (v66 + 4);
  v32 = v65;
  v53 = v28;
  v52 = v29;
  while (v31 < *(v28 + 16))
  {
    v70 = *(v56 + 16 * v31);
    v69 = 0;
    v67 = 0u;
    v68 = 0u;
    v33 = *(&v70 + 1);
    v34 = v70;
    sub_22FDB4380(v70, *(&v70 + 1));
    sub_22FDB4380(v34, v33);
    sub_22FDB4380(v34, v33);
    sub_22FE42A64();
    sub_22FE292D4(&qword_27DAE44C8, type metadata accessor for AlbumIDProto);
    v35 = v63;
    sub_22FE42BE4();
    v66 = v22;
    sub_22FE28F94(v35, v32, type metadata accessor for AlbumIDProto);
    v36 = v32[2];
    v37 = v32[3];
    LOBYTE(v67) = v62;
    sub_22FDB4380(v36, v37);
    v38 = v61;
    UUID.init(serialized:version:)(v36, v37);
    sub_22FD917D4(v34, v33);
    sub_22FE28D64(v35, type metadata accessor for AlbumIDProto);
    v39 = v32;
    v40 = *v32;
    v41 = *(v39 + 8);

    sub_22FE28D64(v39, type metadata accessor for AlbumIDProto);
    v42 = v55;
    (*v51)(v55, v38, v60);
    v43 = (v42 + *(v59 + 20));
    *v43 = v40;
    v43[1] = v41;
    v44 = v54;
    sub_22FE28DC4(v42, v54, type metadata accessor for AlbumID);
    sub_22FD917D4(v34, v33);
    v22 = v66;
    v71 = v66;
    v46 = v66[2];
    v45 = v66[3];
    if (v46 >= v45 >> 1)
    {
      sub_22FD926C8(v45 > 1, v46 + 1, 1);
      v22 = v71;
    }

    ++v31;
    *(v22 + 2) = v46 + 1;
    result = sub_22FE28DC4(v44, &v22[((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v46], type metadata accessor for AlbumID);
    v32 = v65;
    v28 = v53;
    if (v52 == v31)
    {
      sub_22FD917D4(v49, v50);
      sub_22FE28D64(v48, type metadata accessor for GenericListProto);
      return v22;
    }
  }

  __break(1u);
  return result;
}

size_t sub_22FE1B8B4(uint64_t a1, unint64_t a2, int a3)
{
  v40 = a3;
  v6 = sub_22FE428C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22FE42A74();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = type metadata accessor for GenericListProto(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1;
  v39 = a2;
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  sub_22FDB4380(a1, a2);
  sub_22FE42A64();
  sub_22FE292D4(&qword_27DAE4840, type metadata accessor for GenericListProto);
  v17 = v13;
  sub_22FE42BE4();
  if (v3)
  {
    sub_22FD917D4(a1, a2);
    return v17;
  }

  v19 = *v16;
  v20 = *(*v16 + 16);
  if (!v20)
  {
    sub_22FD917D4(a1, a2);
    sub_22FE28D64(v16, type metadata accessor for GenericListProto);
    return MEMORY[0x277D84F90];
  }

  v29 = v16;
  v30 = a1;
  v31 = a2;
  v34 = v20;
  *&v35 = MEMORY[0x277D84F90];
  result = sub_22FD922C4(0, v20, 0);
  v21 = 0;
  v17 = v35;
  v32 = v7 + 32;
  v33 = v19;
  v22 = (v19 + 40);
  while (v21 < *(v33 + 16))
  {
    v23 = v6;
    v24 = *(v22 - 1);
    v25 = *v22;
    LOBYTE(v38) = v40;
    sub_22FDB4380(v24, v25);
    sub_22FDB4380(v24, v25);
    UUID.init(serialized:version:)(v24, v25);
    sub_22FD917D4(v24, v25);
    *&v35 = v17;
    v27 = *(v17 + 16);
    v26 = *(v17 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_22FD922C4(v26 > 1, v27 + 1, 1);
      v17 = v35;
    }

    ++v21;
    *(v17 + 16) = v27 + 1;
    v28 = v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v27;
    v6 = v23;
    result = (*(v7 + 32))(v28, v10, v23);
    v22 += 2;
    if (v34 == v21)
    {
      sub_22FD917D4(v30, v31);
      sub_22FE28D64(v29, type metadata accessor for GenericListProto);
      return v17;
    }
  }

  __break(1u);
  return result;
}

size_t sub_22FE1BC8C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for ShuffleID();
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22FE42A74();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = type metadata accessor for GenericListProto(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1;
  v45 = a2;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_22FDB4380(a1, a2);
  sub_22FE42A64();
  sub_22FE292D4(&qword_27DAE4840, type metadata accessor for GenericListProto);
  sub_22FE42BE4();
  if (v3)
  {
    v17 = v3;
    sub_22FD917D4(a1, a2);
    return v17;
  }

  v39 = v10;
  v19 = *v16;
  v20 = *(*v16 + 16);
  if (!v20)
  {
    sub_22FD917D4(a1, a2);
    sub_22FE28D64(v16, type metadata accessor for GenericListProto);
    return MEMORY[0x277D84F90];
  }

  v46 = 0;
  v35 = v16;
  v36 = a1;
  v37 = a2;
  *&v41 = MEMORY[0x277D84F90];
  v38 = v20;
  result = sub_22FD9246C(0, v20, 0);
  v21 = 0;
  v17 = v41;
  v22 = (v19 + 40);
  v23 = v39;
  while (v21 < *(v19 + 16))
  {
    v24 = a3;
    v26 = *(v22 - 1);
    v25 = *v22;
    sub_22FDB4380(v26, *v22);
    sub_22FDB4380(v26, v25);
    v27 = v23;
    v28 = v7;
    v29 = v24;
    v30 = v24;
    v31 = v28;
    v32 = v46;
    sub_22FDED93C(v26, v25, v30, v27);
    if (v32)
    {
      sub_22FD917D4(v36, v37);
      sub_22FE28D64(v35, type metadata accessor for GenericListProto);
      sub_22FD917D4(v26, v25);

      return v17;
    }

    v46 = 0;
    sub_22FD917D4(v26, v25);
    *&v41 = v17;
    v34 = *(v17 + 16);
    v33 = *(v17 + 24);
    if (v34 >= v33 >> 1)
    {
      sub_22FD9246C(v33 > 1, v34 + 1, 1);
      v17 = v41;
    }

    ++v21;
    *(v17 + 16) = v34 + 1;
    v23 = v39;
    result = sub_22FE28DC4(v39, v17 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v34, type metadata accessor for ShuffleID);
    v22 += 2;
    a3 = v29;
    v7 = v31;
    if (v38 == v21)
    {
      sub_22FD917D4(v36, v37);
      sub_22FE28D64(v35, type metadata accessor for GenericListProto);
      return v17;
    }
  }

  __break(1u);
  return result;
}

size_t sub_22FE1C084(uint64_t a1, unint64_t a2, int a3)
{
  v58 = a3;
  v56 = sub_22FE428C4();
  v62 = *(v56 - 8);
  v6 = v62[8];
  MEMORY[0x28223BE20](v56);
  v57 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DailyIDProto();
  v8 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v61 = (&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v59 = &v45 - v11;
  v12 = type metadata accessor for DailyID();
  v55 = *(v12 - 8);
  v13 = *(v55 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v45 - v17;
  v19 = sub_22FE42A74();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v24 = type metadata accessor for GenericListProto(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v66 = a1;
  *(&v66 + 1) = a2;
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  sub_22FDB4380(a1, a2);
  sub_22FE42A64();
  sub_22FE292D4(&qword_27DAE4840, type metadata accessor for GenericListProto);
  v28 = v24;
  sub_22FE42BE4();
  if (v3)
  {
    sub_22FD917D4(a1, a2);
    return v28;
  }

  v54 = v22;
  v51 = v18;
  v52 = v15;
  v29 = *v27;
  v30 = *(*v27 + 16);
  if (!v30)
  {
    sub_22FD917D4(a1, a2);
    sub_22FE28D64(v27, type metadata accessor for GenericListProto);
    return MEMORY[0x277D84F90];
  }

  v45 = v27;
  v46 = a1;
  v47 = a2;
  v67 = MEMORY[0x277D84F90];
  result = sub_22FD9272C(0, v30, 0);
  v32 = 0;
  v28 = v67;
  v53 = v29 + 32;
  v48 = (v62 + 4);
  v33 = v61;
  v50 = v29;
  v49 = v30;
  while (v32 < *(v29 + 16))
  {
    v62 = v28;
    v66 = *(v53 + 16 * v32);
    v65 = 0;
    v63 = 0u;
    v64 = 0u;
    v34 = *(&v66 + 1);
    v35 = v66;
    sub_22FDB4380(v66, *(&v66 + 1));
    sub_22FDB4380(v35, v34);
    sub_22FDB4380(v35, v34);
    sub_22FE42A64();
    sub_22FE292D4(&qword_27DAE44D0, type metadata accessor for DailyIDProto);
    v36 = v59;
    sub_22FE42BE4();
    sub_22FE28F94(v36, v33, type metadata accessor for DailyIDProto);
    v37 = *v33;
    v38 = v33[1];
    LOBYTE(v63) = v58;
    sub_22FDB4380(v37, v38);
    v39 = v33;
    v40 = v57;
    UUID.init(serialized:version:)(v37, v38);
    sub_22FD917D4(v35, v34);
    sub_22FE28D64(v39, type metadata accessor for DailyIDProto);
    sub_22FE28D64(v36, type metadata accessor for DailyIDProto);
    v41 = v52;
    (*v48)(v52, v40, v56);
    v42 = v51;
    sub_22FE28DC4(v41, v51, type metadata accessor for DailyID);
    sub_22FD917D4(v35, v34);
    v28 = v62;
    v67 = v62;
    v44 = v62[2];
    v43 = v62[3];
    if (v44 >= v43 >> 1)
    {
      sub_22FD9272C(v43 > 1, v44 + 1, 1);
      v28 = v67;
    }

    ++v32;
    v28[2] = v44 + 1;
    result = sub_22FE28DC4(v42, v28 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v44, type metadata accessor for DailyID);
    v33 = v61;
    v29 = v50;
    if (v49 == v32)
    {
      sub_22FD917D4(v46, v47);
      sub_22FE28D64(v45, type metadata accessor for GenericListProto);
      return v28;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FE1C7AC()
{
  v1 = *(v0[4] + 16);
  v0[5] = *(v1 + 16);
  v2 = *(v1 + 24);
  v3 = MEMORY[0x277D84F90];
  v0[6] = v2;
  v0[7] = v3;

  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_22FE1C890;
  v5 = v0[5];
  v6 = v0[6];

  return (sub_22FE2A68C)(v0 + 2, v5, v6);
}

uint64_t sub_22FE1C890()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);

    v5 = sub_22FE1CB9C;
  }

  else
  {
    v5 = sub_22FE1C9AC;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_22FE1C9AC()
{
  v1 = v0[3];
  if (v1 >> 60 == 15)
  {
    if ((atomic_exchange((*(**(v0[4] + 24) + 136))(), 1u) & 1) == 0)
    {
      v2 = v0[4];
      v3 = *(v2 + 40);
      (*(v2 + 32))();
    }

    v1 = v0[3];
    if (v1 >> 60 == 15)
    {
      v4 = v0[5];
      v5 = v0[6];
      v6 = v0[4];

      v7 = v0[1];
      v8 = v0[7];

      return v7(v8);
    }

    v10 = v0[2];
  }

  else
  {
    v10 = v0[2];
  }

  v11 = v0[7];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = v0[7];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_22FD91EA8(0, *(v13 + 2) + 1, 1, v13);
  }

  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_22FD91EA8((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v15 + 1;
  v16 = &v13[16 * v15];
  *(v16 + 4) = v10;
  *(v16 + 5) = v1;
  v0[7] = v13;
  v17 = swift_task_alloc();
  v0[8] = v17;
  *v17 = v0;
  v17[1] = sub_22FE1C890;
  v18 = v0[5];
  v19 = v0[6];

  return (sub_22FE2A68C)(v0 + 2, v18, v19);
}

uint64_t sub_22FE1CB9C()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];

  v4 = v0[1];
  v5 = v0[9];

  return v4();
}

uint64_t sub_22FE1CC14()
{
  v1[4] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52A0, &qword_22FE4F488);
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5310, &qword_22FE4F7A0);
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FE1CD48);
}

uint64_t sub_22FE1CD48()
{
  v1 = v0[10];
  (*(v0[6] + 16))(v0[7], v0[4], v0[5]);
  sub_22FDBC930(&qword_27DAE5318, &qword_27DAE52A0, &qword_22FE4F488);
  sub_22FE43464();
  v0[11] = MEMORY[0x277D84F90];
  v2 = sub_22FDBC930(&qword_27DAE5320, &qword_27DAE5310, &qword_22FE4F7A0);
  v3 = *(MEMORY[0x277D856D0] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_22FE1CE9C;
  v5 = v0[10];
  v6 = v0[8];

  return MEMORY[0x282200308](v0 + 2, v6, v2);
}

uint64_t sub_22FE1CE9C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[11];
    (*(v2[9] + 8))(v2[10], v2[8]);

    v5 = sub_22FE1D194;
  }

  else
  {
    v5 = sub_22FE1CFD0;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_22FE1CFD0()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[11];
    v3 = v0[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v0[11];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_22FD91FB4(0, *(v5 + 2) + 1, 1, v5);
    }

    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_22FD91FB4((v6 > 1), v7 + 1, 1, v5);
    }

    *(v5 + 2) = v7 + 1;
    v8 = &v5[16 * v7];
    *(v8 + 4) = v3;
    *(v8 + 5) = v1;
    v0[11] = v5;
    v9 = sub_22FDBC930(&qword_27DAE5320, &qword_27DAE5310, &qword_22FE4F7A0);
    v10 = *(MEMORY[0x277D856D0] + 4);
    v11 = swift_task_alloc();
    v0[12] = v11;
    *v11 = v0;
    v11[1] = sub_22FE1CE9C;
    v12 = v0[10];
    v13 = v0[8];

    return MEMORY[0x282200308](v0 + 2, v13, v9);
  }

  else
  {
    v14 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);
    v15 = v0[3];

    v16 = v0[1];
    v17 = v0[11];

    return v16(v17);
  }
}

uint64_t sub_22FE1D194()
{
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_22FE1D204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_22FE1D228);
}

uint64_t sub_22FE1D228()
{
  v6 = (v0[3] + *v0[3]);
  v1 = *(v0[3] + 4);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_22FE1D328;
  v4 = v0[4];
  v3 = v0[5];

  return v6(&unk_22FE4F7D0, v3);
}

uint64_t sub_22FE1D328()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_22FE1D4A4;
  }

  else
  {
    v3 = sub_22FE1D43C;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_22FE1D43C()
{
  sub_22FE3FFE4(0, *(*(v0 + 40) + 16));
  v1 = *(v0 + 8);

  return v1();
}

id sub_22FE1D4A4()
{
  v1 = *(v0 + 56);
  v2 = *(*(v0 + 40) + 16);
  os_unfair_lock_lock(v2 + 16);
  v3 = sub_22FE2B768(v1);
  v5 = v4;
  os_unfair_lock_unlock(v2 + 16);
  if (!v3)
  {
    v9 = *(v0 + 56);
LABEL_19:

    v20 = *(v0 + 8);

    return v20();
  }

  v6 = *(v3 + 2);
  if (v6)
  {
    v7 = v3 + 32;

    do
    {
      if (*v7++)
      {
        swift_continuation_throwingResume();
      }

      --v6;
    }

    while (v6);
  }

  else
  {
  }

  v10 = *(v5 + 16);
  result = *(v0 + 56);
  if (!v10)
  {
LABEL_18:
    v9 = *(v0 + 56);
    sub_22FD8C47C(v3);

    goto LABEL_19;
  }

  v12 = 0;
  while (v12 < *(v5 + 16))
  {
    if (*(v5 + 32 + 8 * v12))
    {
      v15 = *(v0 + 56);
      *(v0 + 16) = v15;
      v16 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
      v17 = sub_22FE43C64();
      v18 = *(v0 + 56);
      if (v17)
      {
        v13 = v17;
      }

      else
      {
        v13 = swift_allocError();
        *v19 = v18;
      }

      swift_allocError();
      *v14 = v13;
      result = swift_continuation_throwingResumeWithError();
    }

    if (v10 == ++v12)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FE1D694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_22FE1D6B8);
}

uint64_t sub_22FE1D6B8()
{
  v6 = (v0[3] + *v0[3]);
  v1 = *(v0[3] + 4);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_22FE1D7B8;
  v4 = v0[4];
  v3 = v0[5];

  return v6(&unk_22FE4F7F0, v3);
}

uint64_t sub_22FE1D7B8()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_22FE1D934;
  }

  else
  {
    v3 = sub_22FE1D8CC;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_22FE1D8CC()
{
  sub_22FE402C0(0, *(*(v0 + 40) + 16));
  v1 = *(v0 + 8);

  return v1();
}

id sub_22FE1D934()
{
  v1 = *(v0 + 56);
  v2 = *(*(v0 + 40) + 16);
  os_unfair_lock_lock(v2 + 16);
  v3 = sub_22FE2BA64(v1);
  v5 = v4;
  os_unfair_lock_unlock(v2 + 16);
  if (!v3)
  {
    v9 = *(v0 + 56);
LABEL_19:

    v20 = *(v0 + 8);

    return v20();
  }

  v6 = *(v3 + 2);
  if (v6)
  {
    v7 = v3 + 32;

    do
    {
      if (*v7++)
      {
        swift_continuation_throwingResume();
      }

      --v6;
    }

    while (v6);
  }

  else
  {
  }

  v10 = *(v5 + 16);
  result = *(v0 + 56);
  if (!v10)
  {
LABEL_18:
    v9 = *(v0 + 56);
    sub_22FD8C47C(v3);

    goto LABEL_19;
  }

  v12 = 0;
  while (v12 < *(v5 + 16))
  {
    if (*(v5 + 32 + 8 * v12))
    {
      v15 = *(v0 + 56);
      *(v0 + 16) = v15;
      v16 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
      v17 = sub_22FE43C64();
      v18 = *(v0 + 56);
      if (v17)
      {
        v13 = v17;
      }

      else
      {
        v13 = swift_allocError();
        *v19 = v18;
      }

      swift_allocError();
      *v14 = v13;
      result = swift_continuation_throwingResumeWithError();
    }

    if (v10 == ++v12)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FE1DB24(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22FE1DB44);
}

uint64_t sub_22FE1DB44()
{
  v1 = v0[3];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_22FE1DC00;
  v5 = v0[2];

  return (sub_22FE29E64)(v5, v3, v2);
}

uint64_t sub_22FE1DC00()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

PhotosFace::XPCRequestType_optional __swiftcall XPCRequestType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 9;
  switch(rawValue)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v2 = 1;
      goto LABEL_23;
    case 2:
      v2 = 2;
      goto LABEL_23;
    case 10:
      v2 = 3;
      goto LABEL_23;
    case 11:
      v2 = 4;
      goto LABEL_23;
    case 12:
      v2 = 5;
      goto LABEL_23;
    case 13:
      v2 = 6;
      goto LABEL_23;
    case 14:
      v2 = 7;
      goto LABEL_23;
    case 21:
      v2 = 8;
LABEL_23:
      v3 = v2;
      goto LABEL_24;
    case 22:
LABEL_24:
      *v1 = v3;
      break;
    case 23:
      *v1 = 10;
      break;
    case 24:
      *v1 = 11;
      break;
    case 25:
      *v1 = 12;
      break;
    case 31:
      *v1 = 13;
      break;
    case 32:
      *v1 = 14;
      break;
    case 33:
      *v1 = 15;
      break;
    case 34:
      *v1 = 16;
      break;
    case 35:
      *v1 = 17;
      break;
    case 36:
      *v1 = 18;
      break;
    case 37:
      *v1 = 19;
      break;
    case 38:
      *v1 = 20;
      break;
    case 39:
      *v1 = 21;
      break;
    case 51:
      *v1 = 22;
      break;
    case 52:
      *v1 = 23;
      break;
    case 53:
      *v1 = 24;
      break;
    case 54:
      *v1 = 25;
      break;
    case 55:
      *v1 = 26;
      break;
    default:
      *v1 = 27;
      break;
  }

  return rawValue;
}

uint64_t sub_22FE1DE84()
{
  v1 = *v0;
  sub_22FE43DB4();
  MEMORY[0x23190B9C0](qword_22FE4F808[v1]);
  return sub_22FE43E04();
}

uint64_t sub_22FE1DF0C()
{
  v1 = *v0;
  sub_22FE43DB4();
  MEMORY[0x23190B9C0](qword_22FE4F808[v1]);
  return sub_22FE43E04();
}

uint64_t PhotosXPCServer.activate()()
{
  *(v1 + 16) = v0;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor);
  sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FE1E068);
}

uint64_t sub_22FE1E068()
{
  v1 = *(*(v0 + 16) + 16);
  sub_22FE1E0CC();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22FE1E0CC()
{
  v1 = sub_22FE42DD4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v0[2];
  v5 = v0[3];
  v6 = qword_28148B420;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_28148B428;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52B8, &unk_22FE4F940);
  v8 = *(v2 + 72);
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_22FE49F60;
  v10 = v7;
  sub_22FE42DC4();
  sub_22FE292D4(qword_28148AE90, MEMORY[0x277D855D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52C0, &qword_22FE4F740);
  sub_22FDBC930(&qword_28148AE70, &qword_27DAE52C0, &qword_22FE4F740);
  sub_22FE43824();
  swift_allocObject();
  swift_weakInit();
  v11 = sub_22FE42E44();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_22FE42E24();
  v15 = v0[4];
  v0[4] = v14;

  if (v0[4])
  {
    v17 = v0[4];

    sub_22FE42E34();
  }

  return result;
}

uint64_t PhotosXPCClient.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PhotosXPCClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t PhotosXPCServer.registerGeneratePhoto<A>(callback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  v14 = 1;
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;
  v11 = sub_22FE43C44();

  WitnessTable = swift_getWitnessTable();
  XPCMessageCenter.Server.registerData<A>(request:callback:)(&v14, &unk_22FE4F4C8, v10, v11, WitnessTable);
}

uint64_t sub_22FE1E4CC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;
  *(v8 + 32) = a1;
  v10 = *(a7 - 8);
  *(v8 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 144) = *a4;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor);
  *(v8 + 112) = sub_22FE43374();
  *(v8 + 120) = v12;

  return MEMORY[0x2822009F8](sub_22FE1E630);
}

uint64_t sub_22FE1E630()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 144);
  sub_22FDB4380(v1, v2);
  sub_22FDEEF30(v1, v2, v3, (v0 + 16));
  v4 = *(v0 + 56);
  *(v0 + 24) = *(v0 + 16);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 128) = v6;
  *v6 = v0;
  v6[1] = sub_22FE1E7B4;
  v7 = *(v0 + 104);
  v8 = *(v0 + 64);

  return v10(v7, v0 + 24);
}

uint64_t sub_22FE1E7B4()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v9 = *v1;
  *(*v1 + 136) = v0;

  v4 = v2[3];

  v5 = v2[14];
  v6 = v2[15];
  if (v0)
  {
    v7 = sub_22FE1E9FC;
  }

  else
  {
    v7 = sub_22FE1E8D8;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_22FE1E8D8()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = *(v0 + 32);
  (*(v3 + 16))(*(v0 + 96), v2, v4);
  *(swift_allocObject() + 16) = v1;
  sub_22FE43474();

  (*(v3 + 8))(v2, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_22FE1E9FC()
{
  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];

  v4 = v0[1];

  return v4();
}

uint64_t sub_22FE1EA68(uint64_t a1, uint64_t *a2, char a3)
{
  *(v3 + 56) = a3;
  *(v3 + 24) = a1;
  PhotoResponseProto = type metadata accessor for GeneratePhotoResponseProto(0);
  *(v3 + 32) = PhotoResponseProto;
  v6 = *(*(PhotoResponseProto - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *a2;
  *(v3 + 40) = v7;
  *(v3 + 48) = v8;

  return MEMORY[0x2822009F8](sub_22FE1EB08);
}

uint64_t sub_22FE1EB08()
{
  v12 = v0;
  *(v0 + 16) = *(v0 + 48);
  v1 = *(v0 + 40);
  v11[0] = *(v0 + 56);
  v2 = sub_22FDF18D4();
  (*(v2 + 40))(v11, &type metadata for GeneratePhotoResponse, v2);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  sub_22FE292D4(&qword_27DAE4348, type metadata accessor for GeneratePhotoResponseProto);
  v5 = sub_22FE42BD4();
  v8 = v7;
  v9 = *(v0 + 24);
  sub_22FE28D64(*(v0 + 40), type metadata accessor for GeneratePhotoResponseProto);
  *v9 = v5;
  v9[1] = v8;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t PhotosXPCServer.registerGenerateMask(callback:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = &unk_22FE4F4D8;
  *(v7 + 24) = v6;
  swift_beginAccess();

  v8 = *(v5 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v5 + 40);
  *(v5 + 40) = 0x8000000000000000;
  sub_22FDDFC34(&unk_22FE4F4E8, v7, 2, isUniquelyReferenced_nonNull_native);
  *(v5 + 40) = v11;
  swift_endAccess();
}

uint64_t sub_22FE1ED78(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  *(v6 + 56) = *a4;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor);
  sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FE1EE78);
}

uint64_t sub_22FE1EE78()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v2;
  *(v7 + 32) = v5;
  *(v7 + 40) = v4;
  *(v7 + 48) = v1;

  sub_22FDB4380(v5, v4);
  v8 = sub_22FE275DC(&unk_22FE4F728, v7);

  *v6 = v8;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_22FE1EF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 145) = a7;
  *(v7 + 64) = a5;
  *(v7 + 72) = a6;
  *(v7 + 48) = a3;
  *(v7 + 56) = a4;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  v8 = sub_22FE428C4();
  *(v7 + 80) = v8;
  v9 = *(v8 - 8);
  *(v7 + 88) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FE1F02C);
}

uint64_t sub_22FE1F02C()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_22FDB4380(v3, v2);
  UUID.init(serialized:version:)(v3, v2);
  v4 = *(v0 + 48);
  *(v0 + 144) = *(v0 + 145);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_22FE1F1B0;
  v7 = *(v0 + 96);
  v8 = *(v0 + 56);

  return v10(v7, v0 + 144);
}

uint64_t sub_22FE1F1B0(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 104);
  v7 = *v3;
  v7[14] = a1;
  v7[15] = a2;
  v7[16] = v2;

  if (v2)
  {
    (*(v7[11] + 8))(v7[12], v7[10]);

    return MEMORY[0x2822009F8](sub_22FE1F530);
  }

  else
  {
    v8 = v7[4];
    (*(v7[11] + 8))(v7[12], v7[10]);
    v7[2] = a1;
    v7[3] = a2;
    v13 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    v7[17] = v10;
    *v10 = v7;
    v10[1] = sub_22FE1F3D0;
    v11 = v7[5];

    return v13(v7 + 2);
  }
}

uint64_t sub_22FE1F3D0()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 136);
  v5 = *v1;

  v6 = *(v2 + 120);
  v7 = *(v2 + 112);
  if (v0)
  {
    sub_22FD917D4(v7, v6);
    v8 = *(v3 + 96);
  }

  else
  {
    v10 = *(v3 + 96);
    sub_22FD917D4(v7, v6);
  }

  v9 = *(v5 + 8);

  return v9();
}

uint64_t sub_22FE1F530()
{
  v1 = v0[16];
  v2 = v0[12];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22FE1F594(uint64_t a1, _OWORD *a2)
{
  *(v2 + 32) = a1;
  v4 = *(*(sub_22FE42A74() - 8) + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  PhotoResponseProto = type metadata accessor for GeneratePhotoResponseProto(0);
  *(v2 + 48) = PhotoResponseProto;
  v6 = *(*(PhotoResponseProto - 8) + 64) + 15;
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = *a2;

  return MEMORY[0x2822009F8](sub_22FE1F66C);
}

uint64_t sub_22FE1F66C()
{
  v14 = v0;
  v1 = v0[9];
  v0[2] = v1;
  v2 = v0[10];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v0[3] = v2;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_22FDB4380(v1, v2);
  sub_22FE42A64();
  sub_22FE292D4(&qword_27DAE4348, type metadata accessor for GeneratePhotoResponseProto);
  sub_22FE42BE4();
  v6 = v0[7];
  v7 = v0[4];
  sub_22FE28F94(v0[8], v6, type metadata accessor for GeneratePhotoResponseProto);
  LOBYTE(v12[0]) = 2;
  GeneratePhotoResponse.init(protobuf:version:)(v6, v12, v7);
  v9 = v0[7];
  v10 = v0[5];
  sub_22FE28D64(v0[8], type metadata accessor for GeneratePhotoResponseProto);

  v11 = v0[1];

  return v11();
}

uint64_t PhotosXPCServer.registerTrackFace<A, B>(type:callback:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(v7 + 16);
  v19 = 0x16080D03u >> (8 * a1);
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v15[6] = a2;
  v15[7] = a3;
  v16 = sub_22FE43C44();

  WitnessTable = swift_getWitnessTable();
  XPCMessageCenter.Server.registerData<A>(request:callback:)(&v19, &unk_22FE4F4F8, v15, v16, WitnessTable);
}

uint64_t sub_22FE1F944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = v16;
  v8[10] = v17;
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v10 = *(a7 - 8);
  v8[11] = v10;
  v11 = *(v10 + 64) + 15;
  v8[12] = swift_task_alloc();
  v12 = *(*(a8 - 8) + 64) + 15;
  v8[13] = swift_task_alloc();
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor);
  v8[14] = sub_22FE43374();
  v8[15] = v13;

  return MEMORY[0x2822009F8](sub_22FE1FAC4);
}

uint64_t sub_22FE1FAC4()
{
  v16 = v0;
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[7];
  v5 = v0[3];
  v4 = v0[4];
  v15[0] = 2;
  v6 = *(v2 + 8);
  v7 = *(v6 + 8);
  sub_22FDB4380(v5, v4);
  v7(v5, v4, v15, v3, v6);
  v14 = (v0[5] + *v0[5]);
  v8 = *(v0[5] + 4);
  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_22FE1FC80;
  v11 = v0[12];
  v10 = v0[13];
  v12 = v0[6];

  return v14(v10, v11);
}

uint64_t sub_22FE1FC80()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 136) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 120);
  v9 = *(v2 + 112);
  if (v0)
  {
    v10 = sub_22FE1E9FC;
  }

  else
  {
    v10 = sub_22FE1FE18;
  }

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_22FE1FE18()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[2];
  sub_22FE43474();

  v6 = v0[1];

  return v6();
}

uint64_t sub_22FE1FEB8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for StoredPhotoProto(0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FE29330);
}

uint64_t PhotosXPCServer.registerUntrackFace(type:callback:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  v7 = 0x17090E04u >> (8 * a1);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = &unk_22FE4F508;
  *(v9 + 24) = v8;
  swift_beginAccess();

  v10 = *(v6 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v6 + 40);
  *(v6 + 40) = 0x8000000000000000;
  sub_22FDDFC34(&unk_22FE4F518, v9, v7, isUniquelyReferenced_nonNull_native);
  *(v6 + 40) = v13;
  swift_endAccess();
}

uint64_t sub_22FE20064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  v7 = sub_22FE428C4();
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v9 = *(v8 + 64) + 15;
  v6[9] = swift_task_alloc();
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor);
  v6[10] = sub_22FE43374();
  v6[11] = v10;

  return MEMORY[0x2822009F8](sub_22FE201B8);
}

uint64_t sub_22FE201B8()
{
  v1 = v0[9];
  v3 = v0[3];
  v2 = v0[4];
  sub_22FDB4380(v3, v2);
  UUID.init(serialized:version:)(v3, v2);
  v9 = (v0[5] + *v0[5]);
  v4 = *(v0[5] + 4);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_22FE2032C;
  v6 = v0[9];
  v7 = v0[6];

  return v9(v6);
}

uint64_t sub_22FE2032C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 104) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 88);
  v9 = *(v2 + 80);
  if (v0)
  {
    v10 = sub_22FE29334;
  }

  else
  {
    v10 = sub_22FE204C4;
  }

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_22FE204C4()
{
  v1 = *(v0 + 72);
  **(v0 + 16) = MEMORY[0x277D84F90];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t PhotosXPCServer.registerFetchFaceList<A>(type:callback:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(v5 + 16);
  v11 = 0x180A0F05u >> (8 * a1);
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a2;
  v12[5] = a3;
  v13 = swift_allocObject();
  *(v13 + 16) = &unk_22FE4F528;
  *(v13 + 24) = v12;
  swift_beginAccess();

  v14 = *(v10 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v10 + 40);
  *(v10 + 40) = 0x8000000000000000;
  sub_22FDDFC34(&unk_22FE4F530, v13, v11, isUniquelyReferenced_nonNull_native);
  *(v10 + 40) = v17;
  swift_endAccess();
}

uint64_t sub_22FE20664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a1;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor);
  v8[7] = sub_22FE43374();
  v8[8] = v9;

  return MEMORY[0x2822009F8](sub_22FE2075C);
}

uint64_t sub_22FE2075C()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40A0, &qword_22FE4A0D0);
  v2 = swift_allocObject();
  v0[9] = v2;
  *(v2 + 16) = xmmword_22FE49F60;
  v7 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_22FE20878;
  v5 = v0[4];

  return v7();
}

uint64_t sub_22FE20878(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = v4[7];
    v8 = v4[8];
    v9 = sub_22FE20A6C;
  }

  else
  {
    v4[12] = a1;
    v10 = v4[7];
    v11 = v4[8];
    v9 = sub_22FE209A0;
  }

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_22FE209A0()
{
  v13 = v0;
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[5];
  v4 = v0[6];
  v12[0] = 2;
  v5 = Array<A>.serialized(version:)(v12, v2, v3, *(v4 + 8));
  v7 = v6;

  if (v1)
  {
    *(v0[9] + 16) = 0;
  }

  else
  {
    v9 = v0[9];
    v10 = v0[2];
    *(v9 + 32) = v5;
    *(v9 + 40) = v7;
    *v10 = v9;
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_22FE20A6C()
{
  v1 = v0[11];
  *(v0[9] + 16) = 0;

  v2 = v0[1];

  return v2();
}

uint64_t PhotosXPCServer.registerFetchFace<A>(type:callback:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(v5 + 16);
  v15 = 0x190B1006u >> (8 * a1);
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a2;
  v11[5] = a3;
  v12 = sub_22FE43C44();

  WitnessTable = swift_getWitnessTable();
  XPCMessageCenter.Server.registerData<A>(request:callback:)(&v15, &unk_22FE4F540, v11, v12, WitnessTable);
}

uint64_t sub_22FE20BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v10 = *(*(type metadata accessor for FetchFaceRequest() - 8) + 64) + 15;
  v8[9] = swift_task_alloc();
  v11 = *(*(a7 - 8) + 64) + 15;
  v8[10] = swift_task_alloc();
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor);
  v8[11] = sub_22FE43374();
  v8[12] = v12;

  return MEMORY[0x2822009F8](sub_22FE20D14);
}

uint64_t sub_22FE20D14()
{
  v1 = v0[9];
  v3 = v0[3];
  v2 = v0[4];
  sub_22FDB4380(v3, v2);
  sub_22FDEF16C(v3, v2, 2, v1);
  v10 = (v0[5] + *v0[5]);
  v4 = *(v0[5] + 4);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_22FE20E88;
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[6];

  return v10(v6, v7);
}

uint64_t sub_22FE20E88()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 112) = v0;

  sub_22FE28D64(v4, type metadata accessor for FetchFaceRequest);
  v6 = *(v2 + 96);
  v7 = *(v2 + 88);
  if (v0)
  {
    v8 = sub_22FE21090;
  }

  else
  {
    v8 = sub_22FE20FF4;
  }

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_22FE20FF4()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[2];
  sub_22FE43474();

  v6 = v0[1];

  return v6();
}

uint64_t sub_22FE21090()
{
  v1 = v0[14];
  v3 = v0[9];
  v2 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_22FE210FC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for StoredPhotoProto(0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FE21190);
}

uint64_t sub_22FE21190()
{
  v15 = v0;
  v1 = v0[5];
  v2 = v0[3];
  v14[0] = 2;
  v3 = sub_22FE292D4(&qword_27DAE4650, type metadata accessor for StoredPhoto);
  v4 = *(v3 + 40);
  v5 = type metadata accessor for StoredPhoto(0);
  v4(v14, v5, v3);
  v6 = v0[4];
  v7 = v0[5];
  sub_22FE292D4(&qword_27DAE4338, type metadata accessor for StoredPhotoProto);
  v9 = sub_22FE42BD4();
  v11 = v10;
  v12 = v0[2];
  sub_22FE28D64(v0[5], type metadata accessor for StoredPhotoProto);
  *v12 = v9;
  v12[1] = v11;

  v13 = v0[1];

  return v13();
}

uint64_t PhotosXPCServer.registerFetchFaceByDay(type:callback:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  v7 = 0x1A0C1107u >> (8 * a1);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = &unk_22FE4F550;
  *(v9 + 24) = v8;
  swift_beginAccess();

  v10 = *(v6 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v6 + 40);
  *(v6 + 40) = 0x8000000000000000;
  sub_22FDDFC34(&unk_22FE4F558, v9, v7, isUniquelyReferenced_nonNull_native);
  *(v6 + 40) = v13;
  swift_endAccess();
}

uint64_t sub_22FE21450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  v7 = sub_22FE428C4();
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v9 = *(v8 + 64) + 15;
  v6[9] = swift_task_alloc();
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor);
  v6[10] = sub_22FE43374();
  v6[11] = v10;

  return MEMORY[0x2822009F8](sub_22FE215A4);
}

uint64_t sub_22FE215A4()
{
  v1 = v0[9];
  v3 = v0[3];
  v2 = v0[4];
  sub_22FDB4380(v3, v2);
  UUID.init(serialized:version:)(v3, v2);
  v9 = (v0[5] + *v0[5]);
  v4 = *(v0[5] + 4);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_22FE21718;
  v6 = v0[9];
  v7 = v0[6];

  return v9(v6);
}

uint64_t sub_22FE21718(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *(*v2 + 72);
  v7 = *(*v2 + 64);
  v8 = *(*v2 + 56);
  v9 = *v2;
  *(*v2 + 104) = v1;

  (*(v7 + 8))(v6, v8);
  if (v1)
  {
    v10 = v4[10];
    v11 = v4[11];
    v12 = sub_22FE2194C;
  }

  else
  {
    v4[14] = a1;
    v13 = v4[10];
    v14 = v4[11];
    v12 = sub_22FE218A4;
  }

  return MEMORY[0x2822009F8](v12);
}

uint64_t sub_22FE218A4()
{
  v1 = *(v0 + 104);
  v2 = sub_22FE18560(*(v0 + 112));

  v3 = *(v0 + 72);
  if (!v1)
  {
    **(v0 + 16) = v2;
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22FE2194C()
{
  v1 = v0[13];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t PhotosXPCServer.registerProvideAssetList<A>(type:callback:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 16);
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a2;
  v12[5] = a3;
  v13 = swift_allocObject();
  *(v13 + 16) = &unk_22FE4F568;
  *(v13 + 24) = v12;
  swift_beginAccess();

  v14 = *(v11 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v11 + 40);
  *(v11 + 40) = 0x8000000000000000;
  sub_22FDDFC34(&unk_22FE4F570, v13, a1 + 18, isUniquelyReferenced_nonNull_native);
  *(v11 + 40) = v17;
  swift_endAccess();
}

uint64_t sub_22FE21ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v9 = *(a7 - 8);
  v8[9] = v9;
  v10 = *(v9 + 64) + 15;
  v8[10] = swift_task_alloc();
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor);
  v8[11] = sub_22FE43374();
  v8[12] = v11;

  return MEMORY[0x2822009F8](sub_22FE21C18);
}

uint64_t sub_22FE21C18()
{
  v17 = v0;
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v5 = v0[3];
  v4 = v0[4];
  v16[0] = 2;
  v6 = *(v2 + 8);
  v7 = *(v6 + 8);
  sub_22FDB4380(v5, v4);
  v7(v5, v4, v16, v3, v6);
  v8 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40A0, &qword_22FE4A0D0);
  v9 = swift_allocObject();
  v0[13] = v9;
  *(v9 + 16) = xmmword_22FE49F60;
  v15 = (v8 + *v8);
  v10 = v8[1];
  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_22FE21DF8;
  v12 = v0[10];
  v13 = v0[6];

  return v15(v12);
}

uint64_t sub_22FE21DF8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(v4 + 120) = a1;
  *(v4 + 128) = v1;

  v7 = *(v3 + 96);
  v8 = *(v3 + 88);
  if (v1)
  {
    v9 = sub_22FE2204C;
  }

  else
  {
    v9 = sub_22FE21F3C;
  }

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_22FE21F3C()
{
  v1 = v0[16];
  v2 = sub_22FE283A8(v0[15]);
  if (v1)
  {
    v4 = v0[15];
    (*(v0[9] + 8))(v0[10], v0[7]);

    *(v0[13] + 16) = 0;

    v5 = v0[10];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v9 = v0[15];
    v10 = v0[13];
    v12 = v0[9];
    v11 = v0[10];
    v13 = v0[7];
    v14 = v0[2];

    *(v10 + 32) = v7;
    *(v10 + 40) = v8;
    (*(v12 + 8))(v11, v13);
    *v14 = v10;
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_22FE2204C()
{
  (*(v0[9] + 8))(v0[10], v0[7]);
  v1 = v0[16];
  *(v0[13] + 16) = 0;

  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22FE220D4(uint64_t a1, _OWORD *a2)
{
  *(v2 + 32) = a1;
  v4 = *(*(sub_22FE42A74() - 8) + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  v5 = type metadata accessor for StoredPhotoProto(0);
  *(v2 + 48) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = *a2;

  return MEMORY[0x2822009F8](sub_22FE221AC);
}

uint64_t sub_22FE221AC()
{
  v14 = v0;
  v1 = v0[9];
  v0[2] = v1;
  v2 = v0[10];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v0[3] = v2;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_22FDB4380(v1, v2);
  sub_22FE42A64();
  sub_22FE292D4(&qword_27DAE4338, type metadata accessor for StoredPhotoProto);
  sub_22FE42BE4();
  v6 = v0[7];
  v7 = v0[4];
  sub_22FE28F94(v0[8], v6, type metadata accessor for StoredPhotoProto);
  LOBYTE(v12[0]) = 2;
  StoredPhoto.init(protobuf:version:)(v6, v12, v7);
  v9 = v0[7];
  v10 = v0[5];
  sub_22FE28D64(v0[8], type metadata accessor for StoredPhotoProto);

  v11 = v0[1];

  return v11();
}

uint64_t sub_22FE22380(uint64_t a1, _OWORD *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  return MEMORY[0x2822009F8](sub_22FE223A8);
}

uint64_t sub_22FE223A8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_22FDB4380(v1, v2);
  sub_22FDF1AE0(v1, v2, 2, v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_22FE22444(uint64_t a1, _OWORD *a2)
{
  *(v2 + 32) = a1;
  v4 = *(*(sub_22FE42A74() - 8) + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  v5 = type metadata accessor for FetchByDayResponseProto(0);
  *(v2 + 48) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = *a2;

  return MEMORY[0x2822009F8](sub_22FE22510);
}

uint64_t sub_22FE22510()
{
  v14 = v0;
  v1 = v0[8];
  v0[2] = v1;
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  v0[3] = v2;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_22FDB4380(v1, v2);
  sub_22FE42A64();
  sub_22FE292D4(&qword_27DAE4318, type metadata accessor for FetchByDayResponseProto);
  sub_22FE42BE4();
  v6 = v0[7];
  v7 = v0[4];
  LOBYTE(v12[0]) = 2;
  FetchByDayResponse.init(protobuf:version:)(v6, v12, v7);
  v9 = v0[7];
  v10 = v0[5];

  v11 = v0[1];

  return v11();
}

uint64_t sub_22FE22674@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  v7 = *a1;

  result = sub_22FDADA54(v5);
  *a3 = v7;
  return result;
}

uint64_t PhotosXPCServer.registerSendMessage(callback:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = &unk_22FE4F580;
  *(v7 + 24) = v6;
  swift_beginAccess();

  v8 = *(v5 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v5 + 40);
  *(v5 + 40) = 0x8000000000000000;
  sub_22FDDFC34(&unk_22FE4F588, v7, 0, isUniquelyReferenced_nonNull_native);
  *(v5 + 40) = v11;
  swift_endAccess();
}

uint64_t sub_22FE227D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  v7 = *(*(sub_22FE430A4() - 8) + 64) + 15;
  v6[7] = swift_task_alloc();
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor);
  v6[8] = sub_22FE43374();
  v6[9] = v8;

  return MEMORY[0x2822009F8](sub_22FE228F4);
}

uint64_t sub_22FE228F4()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  sub_22FE43094();
  result = sub_22FE43084();
  v0[10] = v5;
  if (v5)
  {
    v6 = result;
    v7 = v5;
    v11 = (v0[5] + *v0[5]);
    v8 = *(v0[5] + 4);
    v9 = swift_task_alloc();
    v0[11] = v9;
    *v9 = v0;
    v9[1] = sub_22FE22A24;
    v10 = v0[6];

    return v11(v6, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22FE22A24(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 88);
  v8 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {
    v9 = v6[8];
    v10 = v6[9];
    v11 = sub_22FE22C18;
  }

  else
  {
    v12 = v6[10];

    v6[13] = a2;
    v6[14] = a1;
    v13 = v6[8];
    v14 = v6[9];
    v11 = sub_22FE22B60;
  }

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_22FE22B60()
{
  v1 = v0[7];
  v2 = v0[2];
  v3 = sub_22FDBF4C0(v0[14], v0[13]);
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40A0, &qword_22FE4A0D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22FE49F60;
  *(v6 + 32) = v3;
  *(v6 + 40) = v5;
  *v2 = v6;

  v7 = v0[1];

  return v7();
}

uint64_t sub_22FE22C18()
{
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_22FE22C88()
{
  v2 = v1;
  v3 = sub_22FE42D84();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  if (v0[4])
  {
    v5 = v0[4];
LABEL_3:

    return v5;
  }

  sub_22FE42DB4();
  v6 = v0[2];
  v7 = v0[3];
  v8 = qword_28148B420;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_28148B428;
  swift_allocObject();
  v10 = v0;
  swift_weakInit();
  v11 = v9;

  sub_22FE42D74();
  v5 = sub_22FE42D64();

  if (!v2)
  {
    v13 = v10[4];
    v10[4] = v5;

    goto LABEL_3;
  }

  return v5;
}

uint64_t sub_22FE22E1C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = sub_22FE42E54();
    sub_22FE292D4(&qword_27DAE5358, MEMORY[0x277D855E8]);
    v5 = swift_allocError();
    (*(*(v4 - 8) + 16))(v6, a2, v4);
    sub_22FE22F2C(v5);
  }

  return result;
}

uint64_t sub_22FE22F2C(void *a1)
{
  v2 = v1;
  if (qword_28148B100 != -1)
  {
    swift_once();
  }

  v4 = sub_22FE42D34();
  __swift_project_value_buffer(v4, qword_28148B108);
  v5 = a1;
  v6 = sub_22FE42D14();
  v7 = sub_22FE436A4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = a1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22FD6D000, v6, v7, "Session Cancelled: %@", v8, 0xCu);
    sub_22FD93E6C(v9, &qword_27DAE4208, &qword_22FE4ACE0);
    MEMORY[0x23190C380](v9, -1, -1);
    MEMORY[0x23190C380](v8, -1, -1);
  }

  v12 = *(v2 + 32);
  *(v2 + 32) = 0;
}

uint64_t sub_22FE23094(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 168) = a5;
  *(v6 + 176) = a6;
  *(v6 + 41) = a4;
  *(v6 + 152) = a2;
  *(v6 + 160) = a3;
  *(v6 + 144) = a1;
  return MEMORY[0x2822009F8](sub_22FE230C0);
}

uint64_t sub_22FE230C0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  *(v0 + 16) = qword_22FE4F808[*(v0 + 41)];
  *(v0 + 24) = v1;
  *(v0 + 32) = v2;
  *(v0 + 40) = 0;
  sub_22FDB4380(v1, v2);
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  *(v0 + 184) = off_28148B418;
  type metadata accessor for CommunicationActor();
  *(v0 + 192) = sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor);
  *(v0 + 200) = sub_22FE43374();
  *(v0 + 208) = v3;

  return MEMORY[0x2822009F8](sub_22FE231D8);
}

uint64_t sub_22FE231D8()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[20];
  v4 = swift_task_alloc();
  v0[27] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v0 + 2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[28] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52F8, &qword_22FE4F788);
  v0[29] = v7;
  *v6 = v0;
  v6[1] = sub_22FE232FC;

  return MEMORY[0x2822008A0](v0 + 10, v1, v2, 0x73656D28646E6573, 0xEE00293A65676173, sub_22FE291B8, v4, v7);
}

uint64_t sub_22FE232FC()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v11 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = v2[25];
    v5 = v2[26];
    v6 = sub_22FE23594;
  }

  else
  {
    v7 = v2[27];

    v8 = v2[25];
    v9 = v2[26];
    v6 = sub_22FE23418;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_22FE23418()
{
  sub_22FD917D4(*(v0 + 168), *(v0 + 176));
  *(v0 + 248) = *(v0 + 80);
  *(v0 + 42) = *(v0 + 96);

  return MEMORY[0x2822009F8](sub_22FE23490);
}

uint64_t sub_22FE23490()
{
  v1 = *(v0 + 42);
  if (v1)
  {
    v3 = *(v0 + 248);
    v2 = *(v0 + 256);
    sub_22FDD4264();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
    sub_22FE28D40(v3, v2, v1);
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 248);
    *(v0 + 56) = 0;
    *(v0 + 64) = 0;
    *(v0 + 48) = v7;
    *(v0 + 72) = 1;
    v8 = *(v0 + 200);
    v9 = *(v0 + 208);

    return MEMORY[0x2822009F8](sub_22FE23604);
  }
}

uint64_t sub_22FE23594()
{
  v1 = v0[27];
  sub_22FD917D4(v0[21], v0[22]);

  v2 = v0[30];
  v3 = v0[1];

  return v3();
}

uint64_t sub_22FE23604()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[20];
  v4 = swift_task_alloc();
  v0[33] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v0 + 6;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[34] = v6;
  *v6 = v0;
  v6[1] = sub_22FE23710;
  v7 = v0[29];

  return MEMORY[0x2822008A0](v0 + 13, v1, v2, 0x73656D28646E6573, 0xEE00293A65676173, sub_22FE2933C, v4, v7);
}

uint64_t sub_22FE23710()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v11 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = v2[25];
    v5 = v2[26];
    v6 = sub_22FE23A98;
  }

  else
  {
    v7 = v2[33];

    v8 = v2[25];
    v9 = v2[26];
    v6 = sub_22FE2382C;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_22FE2382C()
{
  *(v0 + 288) = *(v0 + 104);
  *(v0 + 43) = *(v0 + 120);
  return MEMORY[0x2822009F8](sub_22FE23858);
}

uint64_t sub_22FE23858()
{
  if (*(v0 + 43) > 1u)
  {
    if (*(v0 + 43) != 2)
    {
      sub_22FE28D40(*(v0 + 248), *(v0 + 256), 0);
      v7 = *(v0 + 8);
      goto LABEL_11;
    }

    v5 = *(v0 + 288);
    v4 = *(v0 + 296);
    v2 = *(v0 + 248);
    v1 = *(v0 + 256);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52D8, &qword_22FE4F750);
    sub_22FDBC930(&qword_27DAE5338, &qword_27DAE52D8, &qword_22FE4F750);
    swift_allocError();
    *v6 = v5;
    v6[1] = v4;
LABEL_6:
    swift_willThrow();
    sub_22FE28D40(v2, v1, 0);
    v7 = *(v0 + 8);
LABEL_11:

    return v7();
  }

  if (!*(v0 + 43))
  {
    v2 = *(v0 + 248);
    v1 = *(v0 + 256);
    sub_22FDD4264();
    swift_allocError();
    *v3 = 1;
    goto LABEL_6;
  }

  v8 = *(v0 + 288);
  v9 = *(v0 + 296);
  v10 = *(v0 + 144);
  *(v0 + 128) = v8;
  *(v0 + 136) = v9;
  sub_22FDB4380(v8, v9);
  v15 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v0 + 304) = v12;
  *v12 = v0;
  v12[1] = sub_22FE23B68;
  v13 = *(v0 + 152);

  return v15(v0 + 128);
}

uint64_t sub_22FE23A98()
{
  v1 = *(v0 + 264);

  return MEMORY[0x2822009F8](sub_22FE23B00);
}

uint64_t sub_22FE23B00()
{
  sub_22FE28D40(v0[31], v0[32], 0);
  v1 = v0[35];
  v2 = v0[1];

  return v2();
}

uint64_t sub_22FE23B68()
{
  v2 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = sub_22FE23D18;
  }

  else
  {
    v3 = sub_22FE23C7C;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_22FE23C7C()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  sub_22FE28D40(v1, v2, 1);
  sub_22FE28D40(v1, v2, 1);
  v3 = *(v0 + 248);
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 48) = v3;
  *(v0 + 72) = 1;
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);

  return MEMORY[0x2822009F8](sub_22FE23604);
}

uint64_t sub_22FE23D18()
{
  v1 = v0[36];
  v2 = v0[37];
  v4 = v0[31];
  v3 = v0[32];
  sub_22FE28D40(v1, v2, 1);
  sub_22FE28D40(v1, v2, 1);
  sub_22FE28D40(v4, v3, 0);
  v5 = v0[39];
  v6 = v0[1];

  return v6();
}

uint64_t sub_22FE23DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5340, &qword_22FE4F800);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v20 - v14;
  v20[4] = a3;
  v20[5] = a4;
  v20[6] = a5;
  v21 = a6 & 1;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor);
  sub_22FE43374();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_22FE22C88();
  v16 = *(v12 + 16);
  v20[1] = a1;
  v16(v15, a1, v11);
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v17, v15, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52C8, &qword_22FE4F748);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52F8, &qword_22FE4F788);
  sub_22FDBC930(&qword_27DAE5348, &qword_27DAE52C8, &qword_22FE4F748);
  sub_22FDBC930(&qword_27DAE5350, &qword_27DAE52F8, &qword_22FE4F788);
  sub_22FE42D94();
}

uint64_t sub_22FE240C0()
{
  sub_22FE42DE4();
  if (v1 != 1)
  {
    return sub_22FE42E04();
  }

  sub_22FE42DF4();
}

uint64_t sub_22FE24190(uint64_t a1)
{
  v2 = sub_22FE42E84();
  v58 = *(v2 - 8);
  v3 = *(v58 + 64);
  MEMORY[0x28223BE20](v2);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE3188, &qword_22FE49380);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v54 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v54 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52C8, &qword_22FE4F748);
  sub_22FDBC930(&qword_27DAE52D0, &qword_27DAE52C8, &qword_22FE4F748);
  sub_22FE42E74();
  v54 = v3;
  v55 = v9;
  v13 = v58;
  v56 = v12;
  v57 = v8;
  v14 = v63;
  v15 = v64;
  v16 = v65;
  if (v66)
  {
    v17 = sub_22FE43404();
    v18 = v57;
    (*(*(v17 - 8) + 56))(v57, 1, 1, v17);
    v19 = v2;
    (*(v13 + 16))(v4, a1, v2);
    sub_22FE289E8(v14, v15, v16, 1);
    v20 = qword_28148B410;
    v21 = v59;

    v22 = v14;
    if (v20 != -1)
    {
      swift_once();
    }

    v23 = off_28148B418;
    v24 = sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor);
    v25 = v13;
    v26 = (*(v13 + 80) + 44) & ~*(v13 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v23;
    *(v27 + 24) = v24;
    *(v27 + 32) = v21;
    *(v27 + 40) = v22;
    (*(v25 + 32))(v27 + v26, v4, v19);

    sub_22FE0BBD0(0, 0, v18, &unk_22FE4F760, v27);
  }

  else
  {
    v58 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52E8, &qword_22FE4F768);
    v28 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE3EB0, &unk_22FE4FB70);
    v29 = swift_allocObject();
    *(v29 + 24) = 0;
    *(v29 + 16) = 0;
    sub_22FE289E8(v14, v15, v16, 0);
    v30 = MEMORY[0x277D84F90];
    sub_22FE38DB0(MEMORY[0x277D84F90]);
    v32 = v31;
    v34 = v33;
    sub_22FE38C7C(v30);
    v36 = v35;
    v54 = v14;
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52F0, &qword_22FE4F770);
    v39 = swift_allocObject();
    *(v39 + 64) = 0;
    *(v39 + 16) = v32;
    *(v39 + 24) = v34;
    v40 = MEMORY[0x277D84FA0];
    *(v39 + 32) = MEMORY[0x277D84FA0];
    *(v39 + 40) = v36;
    *(v39 + 48) = v38;
    *(v39 + 56) = v40;
    *(v28 + 16) = v39;
    *(v28 + 24) = v29;
    v41 = v16;
    v42 = v59;
    v43 = *(v59 + 48);

    v44 = v56;
    sub_22FE2C7E4(v28, v56);

    v45 = v15;
    v46 = *(v44 + *(v55 + 32));
    v47 = sub_22FE43404();
    v48 = v57;
    (*(*(v47 - 8) + 56))(v57, 1, 1, v47);

    sub_22FDB4380(v45, v41);
    v49 = qword_28148B410;

    if (v49 != -1)
    {
      swift_once();
    }

    v50 = off_28148B418;
    v51 = sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor);
    v52 = swift_allocObject();
    *(v52 + 16) = v50;
    *(v52 + 24) = v51;
    *(v52 + 32) = v54;
    *(v52 + 40) = v46;
    *(v52 + 48) = v42;
    *(v52 + 56) = v45;
    *(v52 + 64) = v41;
    *(v52 + 72) = v28;

    sub_22FE0BBD0(0, 0, v48, &unk_22FE4F780, v52);

    v60 = v46;
    v61 = 0;
    v62 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52F8, &qword_22FE4F788);
    sub_22FDBC930(&qword_27DAE5300, &qword_27DAE52F8, &qword_22FE4F788);
    sub_22FE42E64();

    sub_22FD917D4(v45, v41);
    sub_22FD93E6C(v44, &qword_27DAE2CA8, &unk_22FE4BE90);
  }

  return sub_22FE28B04(v63, v64, v65, v66);
}

uint64_t sub_22FE2487C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 344) = a8;
  *(v8 + 352) = v12;
  *(v8 + 328) = a6;
  *(v8 + 336) = a7;
  *(v8 + 68) = a5;
  *(v8 + 320) = a4;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  *(v8 + 360) = off_28148B418;
  type metadata accessor for CommunicationActor();
  *(v8 + 368) = sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor);
  *(v8 + 376) = sub_22FE43374();
  *(v8 + 384) = v9;

  return MEMORY[0x2822009F8](sub_22FE24988);
}

uint64_t sub_22FE24988()
{
  v64 = v0;
  v1 = v0;
  XPCRequestType.init(rawValue:)(*(v0 + 320));
  v2 = v63[0];
  if (LOBYTE(v63[0]) == 27)
  {
    if (qword_28148B100 != -1)
    {
      goto LABEL_41;
    }

    while (1)
    {
      v3 = sub_22FE42D34();
      __swift_project_value_buffer(v3, qword_28148B108);
      v4 = sub_22FE42D14();
      v5 = sub_22FE436A4();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = *(v1 + 68);
        v7 = *(v1 + 320);
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v63[0] = v9;
        *v8 = 67109378;
        *(v8 + 4) = v6;
        *(v8 + 8) = 2080;
        *(v1 + 304) = v7;
        v10 = sub_22FE430B4();
        v12 = sub_22FD98218(v10, v11, v63);

        *(v8 + 10) = v12;
        _os_log_impl(&dword_22FD6D000, v4, v5, "XPC %u: Invalid message type: %s", v8, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v9);
        MEMORY[0x23190C380](v9, -1, -1);
        MEMORY[0x23190C380](v8, -1, -1);
      }

      v13 = 1;
LABEL_20:
      sub_22FE28C14();
      v42 = swift_allocError();
      *v43 = v13;
      swift_willThrow();
      v44 = *(*(v1 + 352) + 16);
      os_unfair_lock_lock(v44 + 16);
      v45 = sub_22FE2BA64(v42);
      v47 = v46;
      os_unfair_lock_unlock(v44 + 16);
      if (!v45)
      {
        break;
      }

      v48 = *(v45 + 2);
      v62 = v45;
      if (v48)
      {
        v49 = v45 + 32;

        do
        {
          if (*v49++)
          {
            swift_continuation_throwingResume();
          }

          --v48;
        }

        while (v48);
      }

      else
      {
      }

      v51 = *(v47 + 16);
      v52 = v42;
      if (!v51)
      {
LABEL_36:
        sub_22FD8C47C(v62);

        break;
      }

      v53 = 0;
      while (v53 < *(v47 + 16))
      {
        if (*(v47 + 32 + 8 * v53))
        {
          *(v1 + 296) = v42;
          v56 = v42;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
          v57 = v1;
          v58 = sub_22FE43C64();
          if (v58)
          {
            v54 = v58;
          }

          else
          {
            v54 = swift_allocError();
            *v59 = v42;
          }

          swift_allocError();
          *v55 = v54;
          swift_continuation_throwingResumeWithError();
          v1 = v57;
        }

        if (v51 == ++v53)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_41:
      swift_once();
    }

    v60 = *(v1 + 8);

    return v60();
  }

  else
  {
    v14 = *(v0 + 328);
    swift_beginAccess();
    v15 = *(v14 + 40);
    if (!*(v15 + 16) || (v16 = sub_22FD74930(v63[0]), (v17 & 1) == 0))
    {
      swift_endAccess();
      if (qword_28148B100 != -1)
      {
        swift_once();
      }

      v33 = sub_22FE42D34();
      __swift_project_value_buffer(v33, qword_28148B108);
      v34 = sub_22FE42D14();
      v35 = sub_22FE436A4();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = *(v0 + 68);
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v63[0] = v38;
        *v37 = 67109378;
        *(v37 + 4) = v36;
        *(v37 + 8) = 2080;
        *(v1 + 65) = v2;
        v39 = sub_22FE430B4();
        v41 = sub_22FD98218(v39, v40, v63);

        *(v37 + 10) = v41;
        _os_log_impl(&dword_22FD6D000, v34, v35, "XPC %u: Couldn't find a registry for type: %s", v37, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x23190C380](v38, -1, -1);
        MEMORY[0x23190C380](v37, -1, -1);
      }

      v13 = 2;
      goto LABEL_20;
    }

    v18 = *(v15 + 56) + 16 * v16;
    v19 = *v18;
    *(v0 + 392) = *(v18 + 8);
    swift_endAccess();
    v20 = qword_28148B100;

    if (v20 != -1)
    {
      swift_once();
    }

    v21 = sub_22FE42D34();
    *(v0 + 400) = __swift_project_value_buffer(v21, qword_28148B108);
    v22 = sub_22FE42D14();
    v23 = sub_22FE43694();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 68);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v63[0] = v26;
      *v25 = 67109378;
      *(v25 + 4) = v24;
      *(v25 + 8) = 2080;
      *(v1 + 66) = v2;
      v27 = sub_22FE430B4();
      v29 = sub_22FD98218(v27, v28, v63);

      *(v25 + 10) = v29;
      _os_log_impl(&dword_22FD6D000, v22, v23, "XPC %u: Starting to process request %s", v25, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x23190C380](v26, -1, -1);
      MEMORY[0x23190C380](v25, -1, -1);
    }

    *(v1 + 232) = *(v1 + 336);
    v61 = (v19 + *v19);
    v30 = v19[1];
    v31 = swift_task_alloc();
    *(v1 + 408) = v31;
    *v31 = v1;
    v31[1] = sub_22FE25084;

    return v61(v1 + 128, v1 + 232);
  }
}

uint64_t sub_22FE25084()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *v1;
  *(*v1 + 416) = v0;

  v5 = v2[49];

  v6 = v2[48];
  v7 = v2[47];
  if (v0)
  {
    v8 = sub_22FE253A0;
  }

  else
  {
    v8 = sub_22FE251D8;
  }

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_22FE251D8()
{
  v1 = v0[19];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 16, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[24] = swift_getAssociatedTypeWitness();
  v0[25] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 21);
  sub_22FE43464();

  v0[53] = 0;
  v6 = v0[45];
  v7 = v0[46];
  v8 = v0[24];
  v9 = v0[25];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 21), v8);
  v10 = *(MEMORY[0x277D856D8] + 4);
  v11 = swift_task_alloc();
  v0[54] = v11;
  *v11 = v0;
  v11[1] = sub_22FE25580;

  return MEMORY[0x282200310](v0 + 31, v6, v7, v0 + 39, v8, v9);
}

id sub_22FE253A0()
{
  v1 = v0[52];
  v2 = *(v0[44] + 16);
  os_unfair_lock_lock(v2 + 16);
  v3 = sub_22FE2BA64(v1);
  v5 = v4;
  os_unfair_lock_unlock(v2 + 16);
  if (!v3)
  {
LABEL_18:

    v17 = v0[1];

    return v17();
  }

  v6 = *(v3 + 2);
  v18 = v3;
  if (v6)
  {
    v7 = v3 + 32;

    do
    {
      if (*v7++)
      {
        swift_continuation_throwingResume();
      }

      --v6;
    }

    while (v6);
  }

  else
  {
  }

  v9 = *(v5 + 16);
  result = v1;
  if (!v9)
  {
LABEL_17:
    sub_22FD8C47C(v18);

    goto LABEL_18;
  }

  v11 = 0;
  while (v11 < *(v5 + 16))
  {
    if (*(v5 + 32 + 8 * v11))
    {
      v0[37] = v1;
      v14 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
      v15 = sub_22FE43C64();
      if (v15)
      {
        v12 = v15;
      }

      else
      {
        v12 = swift_allocError();
        *v16 = v1;
      }

      swift_allocError();
      *v13 = v12;
      result = swift_continuation_throwingResumeWithError();
    }

    if (v9 == ++v11)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FE25580()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v8 = *v1;

  v4 = *(v2 + 376);
  v5 = *(v2 + 384);
  if (v0)
  {
    v6 = sub_22FE25810;
  }

  else
  {
    v6 = sub_22FE25690;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_22FE25690()
{
  v1 = *(v0 + 256);
  *(v0 + 440) = *(v0 + 248);
  *(v0 + 448) = v1;
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 352);
    __swift_destroy_boxed_opaque_existential_0((v0 + 168));
    sub_22FE402C0(0, *(v2 + 16));
    __swift_destroy_boxed_opaque_existential_0((v0 + 128));
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 400);
    v6 = sub_22FE42D14();
    v7 = sub_22FE43694();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 424);
      v9 = *(v0 + 68);
      v10 = swift_slowAlloc();
      *v10 = 67109376;
      *(v10 + 4) = v9;
      *(v10 + 8) = 2048;
      *(v10 + 10) = v8;
      _os_log_impl(&dword_22FD6D000, v6, v7, "XPC %u: Enqueuing message %ld", v10, 0x12u);
      MEMORY[0x23190C380](v10, -1, -1);
    }

    v11 = *(v0 + 424);

    *(v0 + 456) = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
    }

    else
    {
      v12 = sub_22FE25A00;
    }

    return MEMORY[0x2822009F8](v12);
  }
}

id sub_22FE25810()
{
  v1 = v0[39];
  __swift_destroy_boxed_opaque_existential_0(v0 + 21);
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v2 = *(v0[44] + 16);
  os_unfair_lock_lock(v2 + 16);
  v3 = sub_22FE2BA64(v1);
  v5 = v4;
  os_unfair_lock_unlock(v2 + 16);
  if (!v3)
  {
LABEL_18:

    v17 = v0[1];

    return v17();
  }

  v6 = *(v3 + 2);
  v18 = v3;
  if (v6)
  {
    v7 = v3 + 32;

    do
    {
      if (*v7++)
      {
        swift_continuation_throwingResume();
      }

      --v6;
    }

    while (v6);
  }

  else
  {
  }

  v9 = *(v5 + 16);
  result = v1;
  if (!v9)
  {
LABEL_17:
    sub_22FD8C47C(v18);

    goto LABEL_18;
  }

  v11 = 0;
  while (v11 < *(v5 + 16))
  {
    if (*(v5 + 32 + 8 * v11))
    {
      v0[37] = v1;
      v14 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
      v15 = sub_22FE43C64();
      if (v15)
      {
        v12 = v15;
      }

      else
      {
        v12 = swift_allocError();
        *v16 = v1;
      }

      swift_allocError();
      *v13 = v12;
      result = swift_continuation_throwingResumeWithError();
    }

    if (v9 == ++v11)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FE25A00()
{
  v1 = *(v0 + 352);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *(v0 + 264) = *(v0 + 440);
  os_unfair_lock_lock((v2 + 64));
  v4 = *(v2 + 48);
  if (v4 < 0)
  {
    os_unfair_lock_unlock((v2 + 64));
  }

  else
  {
    if (!*(v4 + 16))
    {
      os_unfair_lock_unlock((v2 + 64));
      goto LABEL_17;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    v8 = *(v2 + 32);
    v7 = *(v2 + 40);
    v9 = *(v2 + 56);
    *(v0 + 280) = v7;
    *(v0 + 288) = v4;
    if (v7)
    {
      v40 = v8;
      v10 = v5;
      v11 = *(v7 + 16);
      v12 = *(v4 + 32);
      sub_22FE43DB4();
      MEMORY[0x23190B9F0](v12);
      v13 = sub_22FE43E04();
      v15 = 1 << *(v7 + 16);
      v16 = __OFSUB__(v15, 1);
      v17 = v15 - 1;
      if (v16)
      {
        __break(1u);
        return MEMORY[0x282200830](v13, v14);
      }

      v18 = v17 & v13;
      v19 = sub_22FE42924();
      *(v0 + 72) = v7 + 16;
      *(v0 + 80) = v7 + 32;
      *(v0 + 88) = v18;
      *(v0 + 96) = v19;
      *(v0 + 104) = v20;
      *(v0 + 112) = v21;
      *(v0 + 120) = 0;
      v5 = v10;
      v8 = v40;
      if (v19)
      {
        goto LABEL_8;
      }

      do
      {
LABEL_6:
        __break(1u);
        do
        {
          sub_22FE42974();
          if (!*(v0 + 96))
          {
            goto LABEL_6;
          }

LABEL_8:
          v22 = *(v0 + 88);
          *(v0 + 16) = *(v0 + 72);
          *(v0 + 32) = v22;
          *(v0 + 48) = *(v0 + 104);
          *(v0 + 64) = *(v0 + 120);
          v23 = sub_22FE42954();
        }

        while ((v24 & 1) != 0 || v23);
      }

      while (!*(v0 + 40));
      v25 = *(v0 + 88);
    }

    else
    {
      v25 = 0;
    }

    sub_22FE3B720(0, v25);
    v27 = v26;
    v28 = *(v0 + 280);
    v29 = *(v0 + 288);
    *(v2 + 16) = v5;
    *(v2 + 24) = v6;
    *(v2 + 32) = v8;
    *(v2 + 40) = v28;
    *(v2 + 48) = v29;
    *(v2 + 56) = v9;
    os_unfair_lock_unlock((v2 + 64));
    if (v27)
    {
      if (v27 == 1)
      {
LABEL_17:
        os_unfair_lock_lock((v3 + 24));
        v30 = *(v3 + 16);
        *(v3 + 16) = v30 + 1;
        os_unfair_lock_unlock((v3 + 24));
        v31 = swift_task_alloc();
        *(v0 + 464) = v31;
        v31[2] = v2;
        v31[3] = v3;
        v31[4] = v0 + 264;
        v31[5] = v30;
        v32 = swift_task_alloc();
        *(v0 + 472) = v32;
        v32[2] = v2;
        v32[3] = v3;
        v32[4] = v30;
        v33 = *(MEMORY[0x277D85A10] + 4);
        v13 = swift_task_alloc();
        *(v0 + 480) = v13;
        *v13 = v0;
        *(v13 + 8) = sub_22FE25D1C;
        v14 = &unk_22FE4F798;

        return MEMORY[0x282200830](v13, v14);
      }

      v34 = *(v0 + 264);
      v35 = *(v0 + 272);
      sub_22FDB4380(v34, v35);
      v36 = *(*(v27 + 64) + 40);
      *v36 = v34;
      v36[1] = v35;
      swift_continuation_throwingResume();
    }
  }

  v37 = *(v0 + 376);
  v38 = *(v0 + 384);

  return MEMORY[0x2822009F8](sub_22FE25E78);
}

void sub_22FE25D1C()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 464);
    v5 = *(v2 + 472);

    MEMORY[0x2822009F8](sub_22FE25E60);
  }
}

uint64_t sub_22FE25E60()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);
  return MEMORY[0x2822009F8](sub_22FE25E78);
}

uint64_t sub_22FE25E78()
{
  sub_22FDC27F0(v0[55], v0[56]);
  v0[53] = v0[57];
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[24];
  v4 = v0[25];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 21), v3);
  v5 = *(MEMORY[0x277D856D8] + 4);
  v6 = swift_task_alloc();
  v0[54] = v6;
  *v6 = v0;
  v6[1] = sub_22FE25580;

  return MEMORY[0x282200310](v0 + 31, v1, v2, v0 + 39, v3, v4);
}

uint64_t sub_22FE25F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  *(v6 + 60) = a5;
  *(v6 + 136) = a4;
  *(v6 + 144) = a6;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE292D4(&qword_28148B408, type metadata accessor for CommunicationActor);
  *(v6 + 152) = sub_22FE43374();
  *(v6 + 160) = v7;

  return MEMORY[0x2822009F8](sub_22FE26054);
}

uint64_t sub_22FE26054()
{
  v1 = *(v0 + 60);
  v2 = *(v0 + 136);
  v3 = *(v2 + 48);

  v4 = sub_22FE2CA74(v1);

  if (qword_28148B100 != -1)
  {
    swift_once();
  }

  v5 = sub_22FE42D34();
  __swift_project_value_buffer(v5, qword_28148B108);
  v6 = sub_22FE42D14();
  v7 = sub_22FE43694();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 60);
    v9 = swift_slowAlloc();
    *v9 = 67109376;
    *(v9 + 4) = v8;
    *(v9 + 8) = 2048;
    *(v9 + 10) = v4;
    _os_log_impl(&dword_22FD6D000, v6, v7, "XPC %u: Reading message %ld", v9, 0x12u);
    MEMORY[0x23190C380](v9, -1, -1);
  }

  *(v0 + 168) = *(v2 + 48);

  v10 = swift_task_alloc();
  *(v0 + 176) = v10;
  *v10 = v0;
  v10[1] = sub_22FE26224;
  v11 = *(v0 + 60);

  return (sub_22FE2CC8C)(v0 + 112, v11);
}

uint64_t sub_22FE26224()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v11 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = v2[19];
    v5 = v2[20];
    v6 = sub_22FE264A0;
  }

  else
  {
    v7 = v2[21];

    v8 = v2[19];
    v9 = v2[20];
    v6 = sub_22FE26340;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_22FE26340()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 144);
  if (v1 >> 60 == 15)
  {
    *(v0 + 64) = 0;
    *(v0 + 72) = 0;
    *(v0 + 80) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52F8, &qword_22FE4F788);
    sub_22FDBC930(&qword_27DAE5300, &qword_27DAE52F8, &qword_22FE4F788);
    sub_22FE42E64();
  }

  else
  {
    *(v0 + 88) = *(v0 + 112);
    *(v0 + 96) = v1;
    *(v0 + 104) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52F8, &qword_22FE4F788);
    sub_22FDBC930(&qword_27DAE5300, &qword_27DAE52F8, &qword_22FE4F788);
    sub_22FE42E64();
    sub_22FE28D40(*(v0 + 88), *(v0 + 96), *(v0 + 104));
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22FE264A0()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 144);

  swift_getErrorValue();
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  sub_22FE43C74();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52F8, &qword_22FE4F788);
  sub_22FDBC930(&qword_27DAE5300, &qword_27DAE52F8, &qword_22FE4F788);
  sub_22FE42E64();

  sub_22FE28D40(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v6 = *(v0 + 8);

  return v6();
}

void sub_22FE265D0(uint64_t a1, char a2, void (*a3)(void *__return_ptr, id *, void *))
{
  v30 = *(a1 + 16);
  if (!v30)
  {
LABEL_17:

    return;
  }

  v5 = 0;
  v6 = (a1 + 40);
  while (1)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      sub_22FE43D14();
      __break(1u);
      goto LABEL_25;
    }

    v8 = *(v6 - 1);
    v7 = *v6;
    v35[2] = v8;
    v35[0] = v7;
    v9 = *v32;
    v10 = sub_22FD74718(v8);
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_22;
    }

    v15 = v10;
    v16 = v11;
    v17 = v9[3];

    if (v17 < v14)
    {
      break;
    }

    if (a2)
    {
      if (v16)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_22FDDEF00();
      if (v16)
      {
        goto LABEL_12;
      }
    }

LABEL_15:
    v24 = *v32;
    *(*v32 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    *(v24[6] + 8 * v15) = v8;
    *(v24[7] + 8 * v15) = v7;
    v25 = v24[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_23;
    }

    v24[2] = v27;
LABEL_3:
    ++v5;
    v6 += 2;
    a2 = 1;
    if (v30 == v5)
    {
      goto LABEL_17;
    }
  }

  sub_22FDDDFB4(v14, a2 & 1);
  v18 = *v32;
  v19 = sub_22FD74718(v8);
  if ((v16 & 1) != (v20 & 1))
  {
    goto LABEL_24;
  }

  v15 = v19;
  if ((v16 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  v21 = *v32;
  v34 = *(*(*v32 + 56) + 8 * v15);

  a3(v33, &v34, v35);
  if (!v31)
  {

    v22 = v21[7];
    v23 = *(v22 + 8 * v15);
    *(v22 + 8 * v15) = v33[0];

    goto LABEL_3;
  }

  v34 = v31;
  v28 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_25:
  v33[0] = 0;
  v33[1] = 0xE000000000000000;
  sub_22FE438F4();
  MEMORY[0x23190ACF0](0xD00000000000001BLL, 0x800000022FE484A0);
  sub_22FE43A44();
  MEMORY[0x23190ACF0](39, 0xE100000000000000);
  sub_22FE43A74();
  __break(1u);
}

uint64_t sub_22FE268E0(_OWORD *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = *a1;
  return MEMORY[0x2822009F8](sub_22FE26908);
}

uint64_t sub_22FE26908()
{
  v1 = v0[2];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_22FE269C4;
  v6 = v0[3];
  v5 = v0[4];

  return (sub_22FE2A308)(v6, v5, v3, v2);
}

uint64_t sub_22FE269C4()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22FE26ABC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v12 = *a4;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FD73F54;

  return sub_22FE23094(a1, a2, a3, v12, a5, a6);
}

uint64_t sub_22FE26B88(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 17) == 1)
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5340, &qword_22FE4F800);
    return sub_22FE43384();
  }

  else
  {
    sub_22FE2924C(v2, *(a1 + 8), *(a1 + 16));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5340, &qword_22FE4F800);
    return sub_22FE43394();
  }
}

uint64_t sub_22FE26C24@<X0>(uint64_t a1@<X1>, BOOL *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v5 = result;
  if (result)
  {
    sub_22FE24190(a1);
  }

  *a2 = v5 == 0;
  return result;
}

uint64_t sub_22FE26CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *a4;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_22FD73F54;

  return sub_22FE2487C(a1, a2, a3, v16, a5, a6, a7, a8);
}

uint64_t sub_22FE26DA0(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a1;
  *(v4 + 40) = *a2;
  return MEMORY[0x2822009F8](sub_22FE26DCC);
}

uint64_t sub_22FE26DCC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  *(v0 + 72) = 2;
  *(v2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4550, &qword_22FE4B908);
  *(v2 + 32) = sub_22FDBC930(&qword_27DAE4558, &qword_27DAE4550, &qword_22FE4B908);
  v10 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_22FE26F30;
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);

  return v10(v8, v5, v6, v0 + 72);
}

uint64_t sub_22FE26F30()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FE27064);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_22FE27064()
{
  __swift_deallocate_boxed_opaque_existential_1(*(v0 + 16));
  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1();
}

uint64_t sub_22FE270C8(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a1;
  *(v4 + 40) = *a2;
  return MEMORY[0x2822009F8](sub_22FE270F4);
}

uint64_t sub_22FE270F4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  *(v0 + 72) = 2;
  *(v2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52A8, &qword_22FE4F710);
  *(v2 + 32) = sub_22FDBC930(&qword_27DAE52B0, &qword_27DAE52A8, &qword_22FE4F710);
  v10 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_22FE27258;
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);

  return v10(v8, v5, v6, v0 + 72);
}

uint64_t sub_22FE27258()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FE29324);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

void *sub_22FE2738C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE3188, &qword_22FE49380);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5328, &qword_22FE4F7A8);
  v8 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE3EB0, &unk_22FE4FB70);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = 0;

  v10 = MEMORY[0x277D84F90];
  sub_22FE38B64(MEMORY[0x277D84F90]);
  v12 = v11;
  v14 = v13;
  sub_22FE38B28(v10);
  v16 = v15;
  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5330, &qword_22FE4F7B0);
  v19 = swift_allocObject();
  *(v19 + 64) = 0;
  *(v19 + 16) = v12;
  *(v19 + 24) = v14;
  v20 = MEMORY[0x277D84FA0];
  *(v19 + 32) = MEMORY[0x277D84FA0];
  *(v19 + 40) = v16;
  *(v19 + 48) = v18;
  *(v19 + 56) = v20;
  *(v8 + 16) = v19;
  *(v8 + 24) = v9;
  v21 = sub_22FE43404();
  (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = a1;
  v22[5] = a2;
  v22[6] = v8;

  v23 = sub_22FE0BBD0(0, 0, v7, &unk_22FE4F7C0, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4538, &unk_22FE4B8B8);
  v24 = swift_allocObject();
  v24[2] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE4E00, &qword_22FE4E720);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v24[3] = v25;
  v24[4] = sub_22FE28EF4;
  v24[5] = v23;
  return v24;
}

void *sub_22FE275DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE3188, &qword_22FE49380);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52E8, &qword_22FE4F768);
  v8 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE3EB0, &unk_22FE4FB70);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = 0;

  v10 = MEMORY[0x277D84F90];
  sub_22FE38DB0(MEMORY[0x277D84F90]);
  v12 = v11;
  v14 = v13;
  sub_22FE38C7C(v10);
  v16 = v15;
  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52F0, &qword_22FE4F770);
  v19 = swift_allocObject();
  *(v19 + 64) = 0;
  *(v19 + 16) = v12;
  *(v19 + 24) = v14;
  v20 = MEMORY[0x277D84FA0];
  *(v19 + 32) = MEMORY[0x277D84FA0];
  *(v19 + 40) = v16;
  *(v19 + 48) = v18;
  *(v19 + 56) = v20;
  *(v8 + 16) = v19;
  *(v8 + 24) = v9;
  v21 = sub_22FE43404();
  (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = a1;
  v22[5] = a2;
  v22[6] = v8;

  v23 = sub_22FE0BBD0(0, 0, v7, &unk_22FE4F7E0, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4550, &qword_22FE4B908);
  v24 = swift_allocObject();
  v24[2] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE4E00, &qword_22FE4E720);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v24[3] = v25;
  v24[4] = sub_22FE2932C;
  v24[5] = v23;
  return v24;
}

uint64_t sub_22FE2782C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v10 = v4[2];
  v11 = v4[3];
  v13 = v4[4];
  v12 = v4[5];
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = sub_22FD8C738;

  return sub_22FE1E4CC(a1, a2, a3, a4, v13, v12, v10, v11);
}

uint64_t sub_22FE2790C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_22FD8C738;

  return sub_22FE1ED78(a1, a2, a3, a4, v11, v10);
}

uint64_t sub_22FE279D8(uint64_t a1, _OWORD *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22FD8C738;

  return sub_22FE26DA0(a1, a2, v7, v6);
}

uint64_t sub_22FE27AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[2];
  v10 = v4[3];
  v12 = v4[4];
  v11 = v4[5];
  v14 = v4[6];
  v13 = v4[7];
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = sub_22FD8C738;

  return sub_22FE1F944(a1, a2, a3, a4, v14, v13, v9, v10);
}

uint64_t sub_22FE27B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_22FD8C738;

  return sub_22FE20064(a1, a2, a3, a4, v11, v10);
}

uint64_t sub_22FE27C60(uint64_t a1, _OWORD *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22FD8C738;

  return sub_22FE270C8(a1, a2, v7, v6);
}

uint64_t sub_22FE27D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v11 = v4[3];
  v13 = v4[4];
  v12 = v4[5];
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = sub_22FD8C738;

  return sub_22FE20664(a1, a2, a3, a4, v13, v12, v10, v11);
}

uint64_t sub_22FE27E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v11 = v4[3];
  v13 = v4[4];
  v12 = v4[5];
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = sub_22FD73F54;

  return sub_22FE20BC4(a1, a2, a3, a4, v13, v12, v10, v11);
}

uint64_t sub_22FE27EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_22FD8C738;

  return sub_22FE21450(a1, a2, a3, a4, v11, v10);
}

uint64_t sub_22FE27FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v11 = v4[3];
  v13 = v4[4];
  v12 = v4[5];
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = sub_22FD8C738;

  return sub_22FE21ACC(a1, a2, a3, a4, v13, v12, v10, v11);
}

uint64_t sub_22FE28094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_22FD8C738;

  return sub_22FE227D0(a1, a2, a3, a4, v11, v10);
}

unint64_t sub_22FE28164()
{
  result = qword_28148BA10;
  if (!qword_28148BA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148BA10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCRequestType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCRequestType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22FE283A8(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v42 = sub_22FE428C4();
  v3 = *(v42 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v42);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for GenericListProto(0);
  v7 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v37 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v36[1] = v1;
    v52 = MEMORY[0x277D84F90];
    sub_22FD92538(0, v10, 0);
    v11 = v52;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v14 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v40 = *(v12 + 56);
    v41 = v13;
    v39 = (v12 - 8);
    do
    {
      v15 = v42;
      v16 = v12;
      v41(v6, v14, v42);
      v43 = sub_22FE428A4();
      v44 = v17;
      v45 = v18;
      v46 = v19;
      v47 = v20;
      v48 = v21;
      v49 = v22;
      v50 = v23;
      v51 = v24;
      sub_22FE428A4();
      v25 = sub_22FE42694();
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      v28 = sub_22FE42644();
      v8 = (*v39)(v6, v15);
      v52 = v11;
      v30 = *(v11 + 16);
      v29 = *(v11 + 24);
      if (v30 >= v29 >> 1)
      {
        v8 = sub_22FD92538((v29 > 1), v30 + 1, 1);
        v11 = v52;
      }

      *(v11 + 16) = v30 + 1;
      v31 = v11 + 16 * v30;
      *(v31 + 32) = 0x1000000000;
      *(v31 + 40) = v28 | 0x4000000000000000;
      v14 += v40;
      --v10;
      v12 = v16;
    }

    while (v10);
  }

  MEMORY[0x28223BE20](v8);
  v36[-2] = v11;
  sub_22FE292D4(&qword_27DAE4840, type metadata accessor for GenericListProto);
  v32 = v37;
  sub_22FE42C14();

  v33 = sub_22FE42BD4();
  sub_22FE28D64(v32, type metadata accessor for GenericListProto);
  v34 = *MEMORY[0x277D85DE8];
  return v33;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x23190C380);
  }

  return result;
}

uint64_t sub_22FE287E0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_22FD8C738;

  return sub_22FE1EF60(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_22FE288B4(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FD8C738;

  return sub_22FE1EA68(a1, a2, v6);
}

double sub_22FE2896C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4[3] = a1;
  sub_22FE29564(sub_22FE289CC, v4);
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_22FE289E8(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return sub_22FDB4380(a2, a3);
  }

  return result;
}

uint64_t sub_22FE289FC(uint64_t a1)
{
  v4 = *(sub_22FE42E84() - 8);
  v5 = (*(v4 + 80) + 44) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22FD73F54;

  return sub_22FE25F60(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_22FE28B04(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return sub_22FD917D4(a2, a3);
  }

  return result;
}

void sub_22FE28B18()
{
  v2 = *(v0 + 24);
  v10 = *(v0 + 16);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_22FD8C738;

  JUMPOUT(0x22FE26CA8);
}

unint64_t sub_22FE28C14()
{
  result = qword_27DAE5308;
  if (!qword_27DAE5308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE5308);
  }

  return result;
}

uint64_t sub_22FE28C68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22FD8C738;

  return sub_22FE3FDEC(a1, v4, v5, v7, v6);
}

uint64_t sub_22FE28D40(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  if (a3 == 1)
  {
    return sub_22FD917D4(result, a2);
  }

  return result;
}

uint64_t sub_22FE28D64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FE28DC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FE28E2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22FD8C738;

  return sub_22FE1D204(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22FE28EFC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22FD8C738;

  return sub_22FE1DB24(a1, v1);
}

uint64_t sub_22FE28F94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_190Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_22FE29044(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22FD8C738;

  return sub_22FE1D694(a1, v4, v5, v6, v7, v8);
}