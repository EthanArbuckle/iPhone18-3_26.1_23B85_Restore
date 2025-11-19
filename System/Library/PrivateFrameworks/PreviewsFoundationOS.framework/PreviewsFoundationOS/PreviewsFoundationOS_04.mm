uint64_t sub_25F1F4108(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F1F41E8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_20PreviewsFoundationOS15ManagedResourceC7Request33_71DF8D27CF556E3FD5D35DA4A5A793FALLVyx_GSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25F1F423C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F1F4284(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F1F4314(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_25F1F4358()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t PredicatedWrapper.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a1;
  v38 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = a3;
  v39 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for Predicated();
  v14 = sub_25F305C1C();
  v34 = *(v14 - 8);
  v35 = v14;
  v15 = *(v34 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v34 - v17;
  v19 = *(v13 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v16);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v34 - v24;
  v26 = *(v9 + 16);
  v37 = v8;
  v26(v12, v40, v8);
  Predicated.init(_:)(v12, AssociatedTypeWitness, AssociatedConformanceWitness, v18);
  if ((*(v19 + 48))(v18, 1, v13) == 1)
  {
    (*(v9 + 8))(v40, v37);
    (*(v34 + 8))(v18, v35);
    v27 = 1;
    v28 = v38;
    v29 = v39;
  }

  else
  {
    (*(v19 + 32))(v25, v18, v13);
    (*(v19 + 16))(v23, v25, v13);
    v30 = v38;
    v31 = v23;
    v32 = v39;
    (*(v36 + 24))(v31, v39);
    (*(v9 + 8))(v40, v37);
    (*(v19 + 8))(v25, v13);
    v27 = 0;
    v29 = v32;
    v28 = v30;
  }

  return (*(*(v29 - 8) + 56))(v28, v27, 1);
}

uint64_t PredicatedWrapper.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for Predicated();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  (*(a2 + 32))(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a3, v10, AssociatedTypeWitness);
  return (*(v7 + 8))(v10, v6);
}

uint64_t PredicatedWrapper.proof.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for Predicated();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  (*(a2 + 32))(a1, a2);
  v11 = *(v6 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a3, &v10[v11], AssociatedTypeWitness);
  return (*(v7 + 8))(v10, v6);
}

uint64_t OS_dispatch_queue.runAsync<A>(work:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_25F1F4AB8, 0, 0);
}

uint64_t sub_25F1F4AB8()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 24);
  *(v1 + 16) = *(v0 + 40);
  *(v1 + 32) = v2;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_25F1F4BB0;
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);

  return MEMORY[0x2822008A0](v6, 0, 0, 0x636E7973416E7572, 0xEF293A6B726F7728, sub_25F1F50C0, v1, v5);
}

uint64_t sub_25F1F4BB0()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25F1F4CEC, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_25F1F4CEC()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_25F1F4D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a3;
  v26 = a4;
  v29 = a2;
  v7 = sub_25F30490C();
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_25F30494C();
  v11 = *(v27 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v27);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v15 = sub_25F30542C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v25 - v18;
  (*(v16 + 16))(&v25 - v18, a1, v15);
  v20 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v21 = swift_allocObject();
  v22 = v25;
  *(v21 + 2) = a5;
  *(v21 + 3) = v22;
  *(v21 + 4) = v26;
  (*(v16 + 32))(&v21[v20], v19, v15);
  aBlock[4] = sub_25F1F5540;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F1D8C38;
  aBlock[3] = &block_descriptor_2;
  v23 = _Block_copy(aBlock);

  sub_25F30492C();
  v30 = MEMORY[0x277D84F90];
  sub_25F1D9034();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
  sub_25F1D908C();
  sub_25F305E5C();
  MEMORY[0x25F8D7C70](0, v14, v10, v23);
  _Block_release(v23);
  (*(v28 + 8))(v10, v7);
  (*(v11 + 8))(v14, v27);
}

uint64_t sub_25F1F50CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v14 - v11;
  v10();
  (*(v5 + 16))(v9, v12, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30542C();
  sub_25F30541C();
  return (*(v5 + 8))(v12, a4);
}

uint64_t static OS_dispatch_queue.runAsync<A>(qos:work:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_25F1F5294, 0, 0);
}

uint64_t sub_25F1F5294()
{
  v1 = v0[3];
  sub_25F1F54F4();
  v0[7] = sub_25F305ADC();
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_25F1F5354;
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  v6 = v0[2];

  return OS_dispatch_queue.runAsync<A>(work:)(v6, v5, v3, v4);
}

uint64_t sub_25F1F5354()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25F1F5490, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_25F1F5490()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1();
}

unint64_t sub_25F1F54F4()
{
  result = qword_27FD54668;
  if (!qword_27FD54668)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD54668);
  }

  return result;
}

uint64_t sub_25F1F5540()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v2 = *(sub_25F30542C() - 8);
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80));

  return sub_25F1F50CC(v3, v4, v5, v1);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t CommandLineToolInvocation.launchPath.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CommandLineToolInvocation.workingPath.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t CommandLineToolInvocation.name.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

void *CommandLineToolInvocation.log.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t CommandLineToolInvocation.failedWhenRunningHandler.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t CommandLineToolInvocation.failedToLaunchError.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

__n128 CommandLineToolInvocation.init(launchPath:launchArguments:environment:workingPath:name:log:printToStandardOutput:failedWhenRunningHandler:failedToLaunchError:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, unint64_t a10, unsigned __int8 a11, __n128 a12, unint64_t a13, unint64_t a14)
{
  result = a12;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4].n128_u64[0] = a10;
  a9[4].n128_u8[8] = a11;
  a9[5] = a12;
  a9[6].n128_u64[0] = a13;
  a9[6].n128_u64[1] = a14;
  return result;
}

uint64_t CommandLineToolInvocation.commandLineDescription.getter()
{
  v1 = v0[2];
  v15 = *v0;
  v16 = v0[1];

  MEMORY[0x25F8D7130](32, 0xE100000000000000);
  v2 = v15;
  v3 = *(v1 + 16);
  if (v3)
  {
    v14 = MEMORY[0x277D84F90];
    sub_25F1BD008(0, v3, 0);
    sub_25F1BF118();
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      if (sub_25F305D5C())
      {
        MEMORY[0x25F8D7130](v6, v5);
        MEMORY[0x25F8D7130](34, 0xE100000000000000);

        v6 = 34;
        v5 = 0xE100000000000000;
      }

      v8 = *(v14 + 16);
      v7 = *(v14 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_25F1BD008((v7 > 1), v8 + 1, 1);
      }

      *(v14 + 16) = v8 + 1;
      v9 = v14 + 16 * v8;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 2;
      --v3;
    }

    while (v3);
    v2 = v15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
  sub_25F1F72CC(qword_27FD52F88, &qword_27FD52F80, &qword_25F309110);
  v10 = sub_25F304CAC();
  v12 = v11;

  MEMORY[0x25F8D7130](v10, v12);

  return v2;
}

uint64_t CommandLineToolInvocation.toolName.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_25F304DDC();
  v4 = [v3 lastPathComponent];

  v5 = sub_25F304E0C();
  return v5;
}

uint64_t CommandLineToolInvocation.run()()
{
  v2 = *(*(sub_25F304E6C() - 8) + 64) + 15;
  *(v1 + 296) = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53E08, &qword_25F30B780);
  *(v1 + 304) = v3;
  v4 = *(v3 - 8);
  *(v1 + 312) = v4;
  v5 = *(v4 + 64) + 15;
  *(v1 + 320) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54670, &unk_25F30B788);
  *(v1 + 328) = v6;
  v7 = *(v6 - 8);
  *(v1 + 336) = v7;
  v8 = *(v7 + 64) + 15;
  *(v1 + 344) = swift_task_alloc();
  v9 = sub_25F3044DC();
  *(v1 + 352) = v9;
  v10 = *(v9 - 8);
  *(v1 + 360) = v10;
  v11 = *(v10 + 64) + 15;
  *(v1 + 368) = swift_task_alloc();
  v12 = v0[5];
  *(v1 + 80) = v0[4];
  *(v1 + 96) = v12;
  *(v1 + 112) = v0[6];
  v13 = v0[1];
  *(v1 + 16) = *v0;
  *(v1 + 32) = v13;
  v14 = v0[3];
  *(v1 + 48) = v0[2];
  *(v1 + 64) = v14;

  return MEMORY[0x2822009F8](sub_25F1F5BAC, 0, 0);
}

uint64_t sub_25F1F5BAC()
{
  if (qword_27FD52798 != -1)
  {
    swift_once();
  }

  v1 = off_27FD559A0;
  os_unfair_lock_lock(off_27FD559A0 + 6);
  v2 = *(v1 + 2);
  *(v0 + 376) = v2;
  *(v1 + 2) = v2 + 1;
  os_unfair_lock_unlock(v1 + 6);
  v3 = *(v0 + 80);
  *(v0 + 240) = v3;
  if (v3)
  {
    sub_25F1F71E4(v0 + 16, v0 + 128);
    sub_25F1F721C(v0 + 240, v0 + 272);
    sub_25F305FAC();

    *(v0 + 280) = v2;
    v4 = sub_25F3064DC();
    MEMORY[0x25F8D7130](v4);

    MEMORY[0x25F8D7130](8285, 0xE200000000000000);
    v5 = *(v0 + 16);
    v6 = *(v0 + 24);
    v7 = sub_25F304DDC();
    v8 = [v7 lastPathComponent];

    v9 = sub_25F304E0C();
    v11 = v10;

    MEMORY[0x25F8D7130](v9, v11);

    MEMORY[0x25F8D7130](0x7461636F766E6920, 0xEB000000006E6F69);
    *(v0 + 288) = v2;
    v12 = sub_25F3064DC();
    MEMORY[0x25F8D7130](v12);

    MEMORY[0x25F8D7130](93, 0xE100000000000000);
    v13 = sub_25F3059EC();
    sub_25F2926C0(0x2064695BuLL, 0xE400000000000000, 543451483, 0xE400000000000000, v13, v3, (v0 + 16));
    sub_25F1F728C(v0 + 16);
  }

  v14 = [objc_allocWithZone(MEMORY[0x277CCACB0]) init];
  *(v0 + 384) = v14;
  if (*(v0 + 56))
  {
    v16 = *(v0 + 360);
    v15 = *(v0 + 368);
    v17 = *(v0 + 352);
    v18 = *(v0 + 48);
    sub_25F30444C();
    v19 = sub_25F30446C();
    (*(v16 + 8))(v15, v17);
    [v14 setCurrentDirectoryURL_];
  }

  v21 = *(v0 + 360);
  v20 = *(v0 + 368);
  v22 = *(v0 + 352);
  v23 = *(v0 + 24);
  *(v0 + 392) = *(v0 + 16);
  *(v0 + 400) = v23;
  sub_25F30444C();
  v24 = sub_25F30446C();
  (*(v21 + 8))(v20, v22);
  [v14 setExecutableURL_];

  v25 = *(v0 + 32);
  v26 = sub_25F30524C();
  [v14 setArguments_];

  v27 = *(v0 + 40);
  v28 = sub_25F304A5C();
  [v14 setEnvironment_];

  v29 = [v14 isRunning];
  if (v29)
  {
    __break(1u);
  }

  else
  {
    v37 = *(v0 + 344);
    v39 = *(v0 + 312);
    v38 = *(v0 + 320);
    v40 = *(v0 + 304);
    *(swift_task_alloc() + 16) = v14;
    (*(v39 + 104))(v38, *MEMORY[0x277D85778], v40);
    sub_25F30553C();

    v41 = swift_task_alloc();
    *(v0 + 408) = v41;
    *(v41 + 16) = v14;
    *(v41 + 24) = 1;
    v42 = swift_task_alloc();
    *(v0 + 416) = v42;
    *(v42 + 16) = 1;
    *(v42 + 24) = v14;
    v43 = *(MEMORY[0x277D85A10] + 4);
    v29 = swift_task_alloc();
    *(v0 + 424) = v29;
    *v29 = v0;
    *(v29 + 8) = sub_25F1F607C;
    v30 = &unk_25F30A490;
    v32 = sub_25F1F711C;
    v36 = MEMORY[0x277D84F78] + 8;
    v31 = v41;
    v33 = v42;
    v34 = 0;
    v35 = 0;
  }

  return MEMORY[0x282200830](v29, v30, v31, v32, v33, v34, v35, v36);
}

uint64_t sub_25F1F607C()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v10 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v5 = *(v2 + 408);
    v4 = *(v2 + 416);
    sub_25F1F7128(v2 + 240);

    v6 = sub_25F1F63A4;
  }

  else
  {
    v8 = *(v2 + 408);
    v7 = *(v2 + 416);

    v6 = sub_25F1F61C4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_25F1F61C4()
{
  v1 = swift_task_alloc();
  *(v0 + 440) = v1;
  *v1 = v0;
  v1[1] = sub_25F1F6268;
  v2 = *(v0 + 344);

  return sub_25F1F6B30();
}

void sub_25F1F6268(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 440);
  v6 = *v2;

  if (v1)
  {
  }

  else
  {
    *(v4 + 448) = a1;

    MEMORY[0x2822009F8](sub_25F1F64A4, 0, 0);
  }
}

uint64_t sub_25F1F63A4()
{
  v14 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 384);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 96);
  v13[4] = *(v0 + 80);
  v13[5] = v5;
  v13[6] = *(v0 + 112);
  v6 = *(v0 + 32);
  v13[0] = *(v0 + 16);
  v13[1] = v6;
  v7 = *(v0 + 64);
  v13[2] = *(v0 + 48);
  v13[3] = v7;
  v3(v13, v1);
  swift_willThrow();

  v8 = *(v0 + 368);
  v9 = *(v0 + 320);
  v10 = *(v0 + 296);
  (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_25F1F64A4()
{
  v70 = v0;
  v1 = *(v0 + 296);
  v2 = sub_25F1E1A04(*(v0 + 448));
  v4 = v3;

  sub_25F304E4C();
  v5 = sub_25F304E2C();
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  v9 = MEMORY[0x277D837D0];
  if (*(v0 + 88))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54690, &qword_25F30B7B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_25F3077D0;
    *(v10 + 56) = v9;
    *(v10 + 32) = v7;
    *(v10 + 40) = v8;

    sub_25F3066EC();
  }

  if (*(v0 + 240))
  {
    v67 = v2;
    v11 = *(v0 + 376);
    v12 = *(v0 + 384);
    LODWORD(v62) = sub_25F3059EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54680, &qword_25F3122C0);
    v64 = v8;
    v13 = v7;
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_25F30B760;
    *(v0 + 264) = v11;
    v15 = sub_25F3064DC();
    v17 = v16;
    *(v14 + 56) = v9;
    v18 = sub_25F1F7190();
    *(v14 + 64) = v18;
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    v19 = [v12 processIdentifier];
    v20 = MEMORY[0x277D849A8];
    v21 = MEMORY[0x277D84A20];
    *(v14 + 96) = MEMORY[0x277D849A8];
    *(v14 + 104) = v21;
    *(v14 + 72) = v19;
    v23 = *(v0 + 64);
    v22 = *(v0 + 72);
    *(v14 + 136) = v9;
    *(v14 + 144) = v18;
    *(v14 + 112) = v23;
    *(v14 + 120) = v22;

    v24 = v12;
    v2 = v67;
    v25 = [v24 &selRef_processInfo + 1];
    *(v14 + 176) = v20;
    *(v14 + 184) = v21;
    *(v14 + 152) = v25;
    sub_25F3046FC();
    v7 = v13;
    v8 = v64;

    sub_25F1F7128(v0 + 240);
  }

  result = [*(v0 + 384) isRunning];
  if (result)
  {
    __break(1u);
  }

  else if ([*(v0 + 384) terminationReason] == 1 && !objc_msgSend(*(v0 + 384), sel_terminationStatus))
  {
    v68 = v2;
    v43 = *(v0 + 240);
    if (v43)
    {
      v44 = v7;
      v45 = *(v0 + 392);
      v46 = *(v0 + 400);
      v47 = *(v0 + 376);
      v48 = *(v0 + 336);
      v66 = *(v0 + 344);
      v63 = *(v0 + 384);
      v65 = *(v0 + 328);

      sub_25F305FAC();

      *&v69[0] = 543451483;
      *(&v69[0] + 1) = 0xE400000000000000;
      *(v0 + 256) = v47;
      v49 = sub_25F3064DC();
      MEMORY[0x25F8D7130](v49);

      MEMORY[0x25F8D7130](8285, 0xE200000000000000);
      v7 = v44;
      v50 = sub_25F304DDC();
      v51 = [v50 lastPathComponent];

      v52 = sub_25F304E0C();
      v54 = v53;

      MEMORY[0x25F8D7130](v52, v54);

      MEMORY[0x25F8D7130](0x74757074756F20, 0xE700000000000000);
      v55 = sub_25F3059FC();
      sub_25F293480(v69[0], SDWORD2(v69[0]), 0, 0, v55, v43);

      sub_25F1D4BB0(v68, v4);
      (*(v48 + 8))(v66, v65);
    }

    else
    {
      v56 = *(v0 + 384);
      (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
      sub_25F1D4BB0(v68, v4);
    }

    v57 = *(v0 + 368);
    v58 = *(v0 + 344);
    v59 = *(v0 + 320);
    v60 = *(v0 + 296);

    v61 = *(v0 + 8);

    return v61(v7, v8);
  }

  else
  {
    if ((sub_25F30559C() & 1) == 0)
    {
      v27 = *(v0 + 240);
      if (v27)
      {
        v28 = *(v0 + 376);
        v29 = *(v0 + 384);

        sub_25F305FAC();

        *&v69[0] = 543451483;
        *(&v69[0] + 1) = 0xE400000000000000;
        *(v0 + 248) = v28;
        v30 = sub_25F3064DC();
        MEMORY[0x25F8D7130](v30);

        MEMORY[0x25F8D7130](8285, 0xE200000000000000);
        MEMORY[0x25F8D7130](*(v0 + 64), *(v0 + 72));
        MEMORY[0x25F8D7130](0x2064657469786520, 0xED00002068746977);
        *(v0 + 456) = [v29 terminationStatus];
        v31 = sub_25F3064DC();
        MEMORY[0x25F8D7130](v31);

        v32 = sub_25F3059EC();
        sub_25F293480(v69[0], SDWORD2(v69[0]), 0, 0, v32, v27);
      }
    }

    v33 = *(v0 + 384);
    v34 = *(v0 + 96);
    v35 = *(v0 + 104);
    v36 = *(v0 + 96);
    v69[4] = *(v0 + 80);
    v69[5] = v36;
    v69[6] = *(v0 + 112);
    v37 = *(v0 + 32);
    v69[0] = *(v0 + 16);
    v69[1] = v37;
    v38 = *(v0 + 64);
    v69[2] = *(v0 + 48);
    v69[3] = v38;
    v34(v69, v7, v8);

    swift_willThrow();

    sub_25F1D4BB0(v2, v4);
    v39 = *(v0 + 368);
    v40 = *(v0 + 320);
    v41 = *(v0 + 296);
    (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));

    v42 = *(v0 + 8);

    return v42();
  }

  return result;
}

uint64_t sub_25F1F6B30()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54670, &unk_25F30B788);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54698, &unk_25F30B870);
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F1F6C64, 0, 0);
}

uint64_t sub_25F1F6C64()
{
  v1 = v0[8];
  (*(v0[4] + 16))(v0[5], v0[2], v0[3]);
  sub_25F1F72CC(&qword_27FD546A0, &qword_27FD54670, &unk_25F30B788);
  sub_25F3055EC();
  v0[9] = MEMORY[0x277D84F90];
  v2 = sub_25F1F72CC(&qword_27FD546A8, &qword_27FD54698, &unk_25F30B870);
  v3 = *(MEMORY[0x277D856D0] + 4);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_25F1F6DB8;
  v5 = v0[8];
  v6 = v0[6];

  return MEMORY[0x282200308](v0 + 12, v6, v2);
}

uint64_t sub_25F1F6DB8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);

    v5 = sub_25F1F7094;
  }

  else
  {
    v5 = sub_25F1F6ED4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F1F6ED4()
{
  v1 = *(v0 + 96);
  if (*(v0 + 97))
  {
    v2 = *(v0 + 40);
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));

    v3 = *(v0 + 8);
    v4 = *(v0 + 72);

    return v3(v4);
  }

  else
  {
    v6 = *(v0 + 72);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v0 + 72);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_25F1C57EC(0, *(v8 + 2) + 1, 1, v8);
    }

    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    if (v10 >= v9 >> 1)
    {
      v8 = sub_25F1C57EC((v9 > 1), v10 + 1, 1, v8);
    }

    *(v8 + 2) = v10 + 1;
    v8[v10 + 32] = v1;
    *(v0 + 72) = v8;
    v11 = sub_25F1F72CC(&qword_27FD546A8, &qword_27FD54698, &unk_25F30B870);
    v12 = *(MEMORY[0x277D856D0] + 4);
    v13 = swift_task_alloc();
    *(v0 + 80) = v13;
    *v13 = v0;
    v13[1] = sub_25F1F6DB8;
    v14 = *(v0 + 64);
    v15 = *(v0 + 48);

    return MEMORY[0x282200308](v0 + 96, v15, v11);
  }
}

uint64_t sub_25F1F7094()
{
  v1 = v0[5];
  (*(v0[7] + 8))(v0[8], v0[6]);

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_25F1F7128(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54678, &qword_25F30B798);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25F1F7190()
{
  result = qword_27FD54688;
  if (!qword_27FD54688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54688);
  }

  return result;
}

uint64_t sub_25F1F721C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54678, &qword_25F30B798);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F1F72CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t CommandLineOptions.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CommandLineOption();
  *a1 = sub_25F3052DC();
  type metadata accessor for CommandLineArgumentConsumer();
  result = sub_25F3052DC();
  a1[1] = result;
  return result;
}

uint64_t CommandLineOptions.init(consumer:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = *a1;
  v4 = *(a1 + 2);
  v5 = *(a1 + 24);
  type metadata accessor for CommandLineOption();
  v10 = a1[2];
  *a2 = sub_25F3052DC();
  type metadata accessor for CommandLineArgumentConsumer();
  sub_25F3064EC();
  swift_allocObject();
  v6 = sub_25F30527C();
  *v7 = v11;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v10;
  v12 = v6;
  v8 = sub_25F30539C();
  result = nullsub_2(v8);
  a2[1] = v12;
  return result;
}

uint64_t CommandLineOptions.init(option:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for CommandLineOption();
  sub_25F3064EC();
  swift_allocObject();
  v4 = sub_25F30527C();
  *v5 = *a1;
  v7 = *(a1 + 32);
  v6 = *(a1 + 48);
  v8 = *(a1 + 16);
  *(v5 + 64) = *(a1 + 64);
  *(v5 + 32) = v7;
  *(v5 + 48) = v6;
  *(v5 + 16) = v8;
  v11 = v4;
  v9 = sub_25F30539C();
  nullsub_2(v9);
  *a2 = v11;
  type metadata accessor for CommandLineArgumentConsumer();
  result = sub_25F3052DC();
  a2[1] = result;
  return result;
}

uint64_t CommandLineOptions.init(options:)@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = a1();
  type metadata accessor for CommandLineArgumentConsumer();
  result = sub_25F3052DC();
  a2[1] = result;
  return result;
}

uint64_t CommandLineOptions.init(consumers:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for CommandLineOption();
  *a2 = sub_25F3052DC();
  result = a1();
  a2[1] = result;
  return result;
}

uint64_t CommandLineOptions.init(option:consumer:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v19 = *a2;
  v6 = *(a2 + 2);
  v7 = *(a2 + 24);
  type metadata accessor for CommandLineOption();
  sub_25F3064EC();
  swift_allocObject();
  v8 = sub_25F30527C();
  *v9 = *a1;
  v11 = *(a1 + 32);
  v10 = *(a1 + 48);
  v12 = *(a1 + 16);
  *(v9 + 64) = *(a1 + 64);
  *(v9 + 32) = v11;
  *(v9 + 48) = v10;
  *(v9 + 16) = v12;
  v20 = v8;
  v13 = sub_25F30539C();
  v18 = a2[2];
  nullsub_2(v13);
  *a3 = v20;
  type metadata accessor for CommandLineArgumentConsumer();
  sub_25F3064EC();
  swift_allocObject();
  v14 = sub_25F30527C();
  *v15 = v19;
  *(v15 + 16) = v6;
  *(v15 + 24) = v7;
  *(v15 + 32) = v18;
  v21 = v14;
  v16 = sub_25F30539C();
  result = nullsub_2(v16);
  a3[1] = v21;
  return result;
}

uint64_t CommandLineOptions.init(options:consumer:)@<X0>(uint64_t (*a1)(void)@<X0>, __int128 *a2@<X2>, void *a3@<X8>)
{
  v11 = *a2;
  v5 = *(a2 + 2);
  v6 = *(a2 + 24);
  *a3 = a1();
  type metadata accessor for CommandLineArgumentConsumer();
  sub_25F3064EC();
  swift_allocObject();
  v7 = sub_25F30527C();
  *v8 = v11;
  *(v8 + 16) = v5;
  *(v8 + 24) = v6;
  *(v8 + 32) = a2[2];
  v12 = v7;
  v9 = sub_25F30539C();
  result = nullsub_2(v9);
  a3[1] = v12;
  return result;
}

uint64_t CommandLineOptions.init(options:consumers:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X2>, void *a3@<X8>)
{
  *a3 = a1();
  result = a2();
  a3[1] = result;
  return result;
}

uint64_t CommandLineOptions.shortUsage.getter(uint64_t a1)
{
  v2 = v1[1];
  v21 = *v1;
  v3 = *(a1 + 16);
  type metadata accessor for CommandLineOption();
  sub_25F30539C();
  swift_getWitnessTable();
  v4 = sub_25F30588C();
  v5 = 0x534E4F4954504FLL;
  if (v4)
  {
    v5 = 0;
  }

  v6 = 0xE700000000000000;
  if (v4)
  {
    v6 = 0xE000000000000000;
  }

  v22 = v5;
  v23 = v6;
  v7 = type metadata accessor for CommandLineArgumentConsumer();

  if (sub_25F30531C())
  {
    v8 = 0;
    v9 = (v2 + 72);
    v20 = v7;
    while (1)
    {
      v11 = sub_25F3052FC();
      result = sub_25F30528C();
      if ((v11 & 1) == 0)
      {
        break;
      }

      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_14;
      }

      v15 = *(v9 - 5);
      v14 = *(v9 - 4);
      v16 = *(v9 - 3);
      v17 = *(v9 - 16);
      v18 = *(v9 - 1);
      v19 = *v9;

      if ((v23 & 0xF00000000000000) != 0)
      {
        MEMORY[0x25F8D7130](32, 0xE100000000000000);
      }

      v10 = CommandLineArgumentConsumer.shortUsage.getter(v20);
      MEMORY[0x25F8D7130](v10);

      ++v8;
      v9 += 6;
      if (v13 == sub_25F30531C())
      {
        goto LABEL_12;
      }
    }

    result = sub_25F30601C();
    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    return v22;
  }

  return result;
}

uint64_t CommandLineOptions.parse<A>(_:into:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v7 = v6;
  v119 = a1;
  v103 = a5;
  v109 = sub_25F30427C();
  v107 = *(v109 - 8);
  v11 = *(v107 + 64);
  MEMORY[0x28223BE20](v109);
  v108 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = a4;
  v112 = *(*(a4 + 8) + 8);
  v120 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v105 = *(AssociatedTypeWitness - 8);
  v14 = *(v105 + 64);
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v114 = &v100 - v16;
  v17 = *(a2 + 16);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v20 = *v5;
  v102 = v5[1];
  v106 = v21;
  v22 = *(v21 + 16);
  v111 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v20;
  v22();
  v121 = v17;
  v24 = type metadata accessor for CommandLineOption();
  v25 = MEMORY[0x277D837D0];
  swift_getTupleTypeMetadata2();
  v26 = sub_25F3052DC();
  v27 = sub_25F1CCBBC(v26, v25, v24, MEMORY[0x277D837E0]);

  v141 = v27;

  v28 = sub_25F30531C();
  v110 = AssociatedTypeWitness;
  v117 = v24;
  if (v28)
  {
    v29 = sub_25F3052FC();
    sub_25F30528C();
    AssociatedTypeWitness = v24;
    if (v29)
    {
      v124 = v6;
      v30 = 0;
      v115 = (v24 - 8);
      v116 = v23 + 32;
      v113 = v23;
      while (1)
      {
        v31 = (v116 + 72 * v30);
        v136 = *v31;
        v32 = v31[1];
        v33 = v31[2];
        v34 = v31[3];
        v140 = *(v31 + 8);
        v138 = v33;
        v139 = v34;
        v137 = v32;
        v35 = __OFADD__(v30, 1);
        v36 = v30 + 1;
        if (v35)
        {
          break;
        }

        v146 = v36;
        v132 = v31[1];
        v133 = v31[2];
        v134 = v31[3];
        v135 = *(v31 + 8);
        v131 = *v31;
        v37 = *(AssociatedTypeWitness - 8);
        v38 = *(v37 + 16);
        v38(v129, &v136, AssociatedTypeWitness);
        v39 = CommandLineOption.names.getter();
        v40 = *(v39 + 16);
        if (v40)
        {
          AssociatedConformanceWitness = v39;
          v123 = v37;
          v133 = v138;
          v134 = v139;
          v135 = v140;
          v131 = v136;
          v132 = v137;
          v41 = (v39 + 40);
          do
          {
            v42 = *(v41 - 1);
            v43 = *v41;
            v129[3] = v134;
            v130 = v135;
            v129[1] = v132;
            v129[2] = v133;
            v129[0] = v131;
            v127 = v42;
            v128 = v43;
            v38(&v125, &v136, AssociatedTypeWitness);
            sub_25F304B4C();

            sub_25F304B9C();
            v41 += 2;
            --v40;
          }

          while (v40);

          (*(v123 + 8))(&v136, AssociatedTypeWitness);
        }

        else
        {

          (*(v37 + 8))(&v136, AssociatedTypeWitness);
        }

        v44 = sub_25F30531C();
        v30 = v146;
        if (v146 == v44)
        {

          v7 = v124;
          AssociatedTypeWitness = v110;
          goto LABEL_15;
        }

        v45 = sub_25F3052FC();
        sub_25F30528C();
        if ((v45 & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_52:
      sub_25F30601C();
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
    }

LABEL_51:

    (*(v106 + 8))(v111, v121);
    v96 = v114;
LABEL_47:
    (*(v105 + 8))(v96, AssociatedTypeWitness);
LABEL_48:
  }

  else
  {

LABEL_15:
    v146 = swift_allocBox();
    v47 = v46;
    sub_25F3057AC();
    sub_25F3057FC();
    v116 = v47;
    swift_beginAccess();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v48 = 0;
    v101 = 0;
    v115 = (v107 + 8);
    while (1)
    {
      v49 = v7;
      while (1)
      {
        if ((sub_25F304CCC() & 1) == 0)
        {
LABEL_43:
          (*(v106 + 32))(v103, v111, v121);
          (*(v105 + 8))(v114, AssociatedTypeWitness);
          goto LABEL_48;
        }

        v104 = v48;
        while (1)
        {
          v124 = v49;
          v50 = v119;
          v51 = v120;
          v52 = sub_25F3058FC();
          v54 = *v53;
          AssociatedTypeWitness = v53[1];

          v52(&v136, 0);
          sub_25F1F86BC(v146, v50, v121, v51, v118);
          v55 = sub_25F30505C();
          v123 = AssociatedTypeWitness;
          if ((v55 & 1) == 0)
          {
            break;
          }

          v125 = 0;
          v126 = 0;
          *&v136 = v54;
          *(&v136 + 1) = AssociatedTypeWitness;
          *&v131 = 61;
          *(&v131 + 1) = 0xE100000000000000;
          sub_25F1BF118();
          v56 = sub_25F305D5C();
          v113 = v54;
          if (v56)
          {
            *&v136 = 61;
            *(&v136 + 1) = 0xE100000000000000;
            MEMORY[0x28223BE20](v56);
            *(&v100 - 2) = &v136;

            v57 = v124;
            v59 = sub_25F1BA664(0x7FFFFFFFFFFFFFFFLL, 1, sub_25F1F8CB8, (&v100 - 4), v54, AssociatedTypeWitness, v58);
            if (!v59[2])
            {
              goto LABEL_53;
            }

            v60 = v59;
            AssociatedTypeWitness = v57;
            v62 = v59[4];
            v61 = v59[5];
            v63 = v59[6];
            v64 = v59[7];

            v65 = MEMORY[0x25F8D7070](v62, v61, v63, v64);
            v67 = v66;

            if (v60[2] < 2uLL)
            {
              goto LABEL_54;
            }

            v68 = v60[8];
            v107 = v60[9];
            v124 = AssociatedTypeWitness;
            v69 = v60[10];
            v70 = v60[11];

            v71 = MEMORY[0x25F8D7070](v68, v107, v69, v70);
            v73 = v72;
            v74 = v124;

            v125 = v71;
            v126 = v73;
            v107 = v73;
          }

          else
          {
            v74 = v124;

            v107 = 0;
            v65 = v54;
            v67 = v75;
          }

          *&v131 = v65;
          *(&v131 + 1) = v67;
          v76 = v108;
          sub_25F30422C();
          v77 = sub_25F305D1C();
          v79 = v78;
          (*v115)(v76, v109);

          v127 = v77;
          v128 = v79;
          sub_25F304B8C();

          v136 = v131;
          v137 = v132;
          v138 = v133;
          v139 = v134;
          v140 = v135;
          if (!*(&v131 + 1))
          {
            sub_25F1F8C2C();
            swift_allocError();
            v94 = v123;
            *v95 = v113;
            v95[1] = v94;
            swift_willThrow();
            (*(v106 + 8))(v111, v121);

LABEL_45:
            v96 = v114;
            AssociatedTypeWitness = v110;
            goto LABEL_47;
          }

          v80 = *(&v139 + 1);
          v142[0] = v136;
          v142[1] = v132;
          v142[2] = v133;
          v143 = v134;
          v144 = *(&v139 + 1);
          v145 = v140;

          LOBYTE(v131) = 0;
          MEMORY[0x28223BE20](v81);
          v82 = v120;
          *(&v100 - 10) = v121;
          *(&v100 - 9) = v82;
          *(&v100 - 8) = v118;
          *(&v100 - 7) = &v125;
          v83 = v146;
          *(&v100 - 6) = &v131;
          *(&v100 - 5) = v83;
          v84 = v114;
          *(&v100 - 4) = v114;
          *(&v100 - 3) = v142;
          *(&v100 - 2) = v119;
          v80(v111, sub_25F1F8C80);
          v49 = v74;
          AssociatedTypeWitness = v110;
          if (v74)
          {
            v97 = sub_25F305C1C();
            (*(*(v97 - 8) + 8))(&v136, v97);
            (*(v106 + 8))(v111, v121);

            v96 = v84;
            goto LABEL_47;
          }

          v85 = sub_25F305C1C();
          (*(*(v85 - 8) + 8))(&v136, v85);

          if ((sub_25F304CCC() & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        v86 = v54;
        type metadata accessor for CommandLineArgumentConsumer();
        if (v101 >= sub_25F30531C())
        {
          sub_25F1F8C2C();
          swift_allocError();
          v98 = v123;
          *v99 = v54;
          v99[1] = v98;
          swift_willThrow();
          (*(v106 + 8))(v111, v121);
          goto LABEL_45;
        }

        sub_25F3053DC();
        v87 = v137;
        v88 = BYTE8(v137);
        v89 = v124;
        (v138)(v111, v86, v123);
        AssociatedTypeWitness = v110;
        if ((v88 & 1) == 0)
        {
          break;
        }

        v49 = v89;
        if (v89)
        {
          goto LABEL_51;
        }

        v48 = v104 + 1;
        if (__OFADD__(v104, 1))
        {
          __break(1u);
          goto LABEL_56;
        }
      }

      v7 = v89;
      if (v89)
      {
        goto LABEL_51;
      }

      v91 = v104 + 1;
      if (__OFADD__(v104, 1))
      {
        break;
      }

      v92 = v91 < v87;
      if (v91 < v87)
      {
        v48 = v104 + 1;
      }

      else
      {
        v48 = 0;
      }

      v93 = v101;
      if (!v92)
      {
        v93 = v101 + 1;
      }

      v101 = v93;
    }

LABEL_56:
    __break(1u);
  }

  return result;
}

uint64_t sub_25F1F86BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(a5 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v16[-v12];
  v14 = swift_projectBox();
  swift_beginAccess();
  (*(v7 + 16))(v11, v14, AssociatedTypeWitness);
  sub_25F3057CC();
  (*(v7 + 8))(v11, AssociatedTypeWitness);
  swift_beginAccess();
  return (*(v7 + 40))(v14, v13, AssociatedTypeWitness);
}

uint64_t sub_25F1F8858(uint64_t *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v38 = a7;
  v34 = a5;
  v40 = a4;
  v36 = a9;
  v37 = a6;
  v12 = *(*(a9 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = v15[8];
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v18 = &v32 - v17;
  v35 = a3;
  v19 = swift_projectBox();
  if (a1[1] && (*a2 & 1) == 0)
  {
    v27 = *a1;
    *a2 = 1;
  }

  else
  {
    swift_beginAccess();
    v20 = v15[2];
    v20(v18, v19, AssociatedTypeWitness);
    v33 = a8;
    swift_getAssociatedConformanceWitness();
    v21 = sub_25F304CCC();
    v22 = v15[1];
    v22(v18, AssociatedTypeWitness);
    if (v21)
    {
      swift_beginAccess();
      v20(v18, v19, AssociatedTypeWitness);
      v23 = v37;
      v24 = v33;
      v25 = sub_25F3058FC();
      v27 = *v26;
      v28 = v26[1];

      v25(v39, 0);
      v22(v18, AssociatedTypeWitness);
      sub_25F1F86BC(v35, v23, v38, v24, v36);
    }

    else
    {
      v29 = *v34;
      v27 = v34[1];
      sub_25F1F8D6C();
      swift_allocError();
      *v30 = v29;
      v30[1] = v27;
      swift_willThrow();
    }
  }

  return v27;
}

unint64_t sub_25F1F8B08()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F305FAC();

  MEMORY[0x25F8D7130](v1, v2);
  MEMORY[0x25F8D7130](34, 0xE100000000000000);
  return 0xD00000000000001DLL;
}

uint64_t sub_25F1F8B94()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F305FAC();

  MEMORY[0x25F8D7130](v1, v2);
  MEMORY[0x25F8D7130](0xD000000000000012, 0x800000025F318070);
  return 0x22206E6F6974704FLL;
}

unint64_t sub_25F1F8C2C()
{
  result = qword_27FD546B0[0];
  if (!qword_27FD546B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD546B0);
  }

  return result;
}

uint64_t sub_25F1F8CD8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_25F1F8D6C()
{
  result = qword_27FD54838;
  if (!qword_27FD54838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54838);
  }

  return result;
}

uint64_t IteratorProtocol.map<A>(withBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocBox();
  (*(*(a3 - 8) + 16))(v12, v5, a3);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = v11;
  v13[6] = a1;
  v13[7] = a2;

  return MEMORY[0x2821FCFD8](sub_25F1F9138, v13, a4);
}

uint64_t sub_25F1F8ED0@<X0>(void (*a1)(char *)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v20 = a2;
  v21 = a1;
  v22 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_25F305C1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v20 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v20 - v14;
  swift_projectBox();
  swift_beginAccess();
  sub_25F305CDC();
  swift_endAccess();
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v7 + 8))(v11, v6);
    v16 = 1;
    v17 = v22;
  }

  else
  {
    (*(v12 + 32))(v15, v11, AssociatedTypeWitness);
    v18 = v22;
    v21(v15);
    (*(v12 + 8))(v15, AssociatedTypeWitness);
    v16 = 0;
    v17 = v18;
  }

  return (*(*(a3 - 8) + 56))(v17, v16, 1, a3);
}

uint64_t sub_25F1F9138@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  return sub_25F1F8ED0(*(v1 + 48), *(v1 + 56), *(v1 + 24), a1);
}

uint64_t AnyIterator.map<A>(withBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a3;
  v10[5] = a1;
  v10[6] = a2;

  return MEMORY[0x2821FCFD8](sub_25F1F9404, v10, a5);
}

uint64_t sub_25F1F91E8@<X0>(void (*a1)(char *)@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v20 = a1;
  v7 = sub_25F305C1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v19 - v11;
  v13 = *(a2 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F305ECC();
  if ((*(v13 + 48))(v12, 1, a2) == 1)
  {
    (*(v8 + 8))(v12, v7);
    v17 = 1;
  }

  else
  {
    (*(v13 + 32))(v16, v12, a2);
    v20(v16);
    (*(v13 + 8))(v16, a2);
    v17 = 0;
  }

  return (*(*(a3 - 8) + 56))(a4, v17, 1, a3);
}

uint64_t sub_25F1F9404@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 48);
  return sub_25F1F91E8(*(v1 + 40), *(v1 + 16), *(v1 + 24), a1);
}

uint64_t sub_25F1F9438(uint64_t a1)
{
  v6 = a1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  sub_25F2025A0(v1, boxed_opaque_existential_1);
  __swift_project_boxed_opaque_existential_1(v5, v6);
  swift_getDynamicType();
  v3 = sub_25F30685C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t HumanReadableError.errorTypeDescription.getter(uint64_t a1)
{
  v7 = a1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v1, a1);
  __swift_project_boxed_opaque_existential_1(v6, v7);
  swift_getDynamicType();
  v4 = sub_25F30685C();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

uint64_t sub_25F1F955C(uint64_t a1)
{
  v11[4] = a1;
  v11[3] = &type metadata for JITError;
  v11[0] = a1;
  __swift_project_boxed_opaque_existential_1(v11, &type metadata for JITError);
  swift_getDynamicType();

  v2 = sub_25F30685C();
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_1(v11);
  v11[0] = v2;
  v11[1] = v4;
  if (*(a1 + 16))
  {
    MEMORY[0x25F8D7130](0xD000000000000019, 0x800000025F318120);
  }

  v5 = JITError.additionalDiagnostics.getter();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    MEMORY[0x25F8D7130](2570, 0xE200000000000000);
    MEMORY[0x25F8D7130](v7, v8);
  }

  sub_25F1BF118();
  v9 = sub_25F305D2C();

  return v9;
}

uint64_t sub_25F1F96B4(uint64_t a1)
{
  v8[3] = &type metadata for InvalidAuditTokenDeserialization;
  v8[0] = a1;
  __swift_project_boxed_opaque_existential_1(v8, &type metadata for InvalidAuditTokenDeserialization);
  swift_getDynamicType();

  v2 = sub_25F30685C();
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_1(v8);
  v8[0] = v2;
  v8[1] = v4;
  sub_25F305FAC();

  v5 = MEMORY[0x25F8D7420](a1, MEMORY[0x277D84CC0]);
  MEMORY[0x25F8D7130](v5);

  MEMORY[0x25F8D7130](0xD000000000000027, 0x800000025F3181D0);

  MEMORY[0x25F8D7130](8250, 0xE200000000000000);

  sub_25F1BF118();
  v6 = sub_25F305D2C();

  return v6;
}

uint64_t sub_25F1F9864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[3] = a5;
  v10 = swift_allocObject();
  v16[0] = v10;
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  __swift_project_boxed_opaque_existential_1(v16, a5);
  swift_getDynamicType();

  v11 = sub_25F30685C();
  v13 = v12;
  __swift_destroy_boxed_opaque_existential_1(v16);
  v16[0] = v11;
  v16[1] = v13;
  if (a2)
  {
    MEMORY[0x25F8D7130](2570, 0xE200000000000000);
    MEMORY[0x25F8D7130](a1, a2);
  }

  if (a4)
  {
    MEMORY[0x25F8D7130](2570, 0xE200000000000000);
    MEMORY[0x25F8D7130](a3, a4);
  }

  sub_25F1BF118();
  v14 = sub_25F305D2C();

  return v14;
}

uint64_t sub_25F1F99D0()
{
  v1 = v0;
  v14 = *v0;
  v15 = v14;
  v2 = v0[3];
  if (v2)
  {
    v3 = v1[2];
    v4 = v2;
    goto LABEL_5;
  }

  v4 = v1[5];
  if (v4)
  {
    v3 = v1[4];
    v5 = v1[5];

LABEL_5:
    *&v13 = 8250;
    *(&v13 + 1) = 0xE200000000000000;
    sub_25F1E8C70(&v15, v12);

    MEMORY[0x25F8D7130](v3, v4);

    MEMORY[0x25F8D7130](v13, *(&v13 + 1));

    v6 = v1[7];
    if (!v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = v1[7];
  if (v6)
  {
LABEL_6:
    v7 = v1[6];
    MEMORY[0x25F8D7130](2570, 0xE200000000000000);
    MEMORY[0x25F8D7130](v7, v6);
  }

LABEL_7:
  v8 = v1[9];
  if (v8)
  {
    v9 = v1[8];
    MEMORY[0x25F8D7130](2570, 0xE200000000000000);
    MEMORY[0x25F8D7130](v9, v8);
  }

  v13 = v14;
  v12[0] = 28252;
  v12[1] = 0xE200000000000000;
  sub_25F1BF118();
  v10 = sub_25F305D2C();

  return v10;
}

uint64_t sub_25F1F9B58()
{
  sub_25F30685C();
  v0 = sub_25F30685C();
  MEMORY[0x25F8D7130](v0);

  MEMORY[0x25F8D7130](8250, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30619C();
  MEMORY[0x25F8D7130](2570, 0xE200000000000000);
  MEMORY[0x25F8D7130](0, 0xE000000000000000);

  sub_25F1BF118();
  v1 = sub_25F305D2C();

  return v1;
}

uint64_t sub_25F1F9CA4(void *a1)
{
  sub_25F2000A4(a1);
  v2 = [a1 localizedDescription];
  v3 = sub_25F304E0C();
  v5 = v4;

  MEMORY[0x25F8D7130](v3, v5);

  MEMORY[0x25F8D7130](8250, 0xE200000000000000);

  v6 = [a1 localizedRecoverySuggestion];
  if (v6)
  {
    v7 = v6;
    v8 = sub_25F304E0C();
    v10 = v9;

    MEMORY[0x25F8D7130](2570, 0xE200000000000000);
    MEMORY[0x25F8D7130](v8, v10);
  }

  sub_25F1FFC94(a1);
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    MEMORY[0x25F8D7130](2570, 0xE200000000000000);
    MEMORY[0x25F8D7130](v13, v14);
  }

  sub_25F1BF118();
  v15 = sub_25F305D2C();

  return v15;
}

uint64_t sub_25F1F9E3C()
{
  v1 = type metadata accessor for CrashReport(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for CrashReportError(0);
  v5 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_25F2025A0(v0, v5);
  __swift_project_boxed_opaque_existential_1(&v32, v34);
  swift_getDynamicType();
  v6 = sub_25F30685C();
  v8 = v7;
  __swift_destroy_boxed_opaque_existential_1(&v32);
  v36 = v6;
  v37 = v8;
  sub_25F1AE8B4(&v32);
  v9 = v34;
  v10 = v35;
  __swift_project_boxed_opaque_existential_1(&v32, v34);
  v11 = (*(v10 + 16))(v9, v10);
  v13 = v12;
  __swift_destroy_boxed_opaque_existential_1(&v32);
  if (v13)
  {
    v32 = 8250;
    v33 = 0xE200000000000000;
    MEMORY[0x25F8D7130](v11, v13);

    MEMORY[0x25F8D7130](v32, v33);
  }

  sub_25F1AE8B4(&v32);
  v14 = v34;
  v15 = v35;
  __swift_project_boxed_opaque_existential_1(&v32, v34);
  v16 = (*(v15 + 24))(v14, v15);
  v18 = v17;
  __swift_destroy_boxed_opaque_existential_1(&v32);
  if (v18)
  {
    MEMORY[0x25F8D7130](2570, 0xE200000000000000);
    MEMORY[0x25F8D7130](v16, v18);
  }

  sub_25F1AE8B4(&v32);
  v19 = v34;
  v20 = v35;
  __swift_project_boxed_opaque_existential_1(&v32, v34);
  (*(v20 + 8))(v19, v20);
  __swift_destroy_boxed_opaque_existential_1(&v32);
  v21 = CrashReport.formattedAsLegacyCrashReport()();
  v22 = sub_25F2EFA04(0, 1, 1, MEMORY[0x277D84F90]);
  v24 = *(v22 + 2);
  v23 = *(v22 + 3);
  if (v24 >= v23 >> 1)
  {
    v22 = sub_25F2EFA04((v23 > 1), v24 + 1, 1, v22);
  }

  *(v22 + 2) = v24 + 1;
  v25 = &v22[24 * v24];
  *(v25 + 2) = v21;
  v25[48] = 0;
  v26 = Array<A>.builtDescription.getter(v22);
  v28 = v27;

  sub_25F1AF760(v4);
  MEMORY[0x25F8D7130](2570, 0xE200000000000000);
  MEMORY[0x25F8D7130](v26, v28);

  v32 = v36;
  v33 = v37;
  v31[3] = 28252;
  v31[4] = 0xE200000000000000;
  v31[1] = 10;
  v31[2] = 0xE100000000000000;
  sub_25F1BF118();
  v29 = sub_25F305D2C();

  return v29;
}

uint64_t sub_25F1FA180()
{
  v1 = v0;
  v19 = &type metadata for LowValueError;
  v2 = swift_allocObject();
  v17 = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = *v0;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v0 + 32);
  *(v2 + 64) = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1(&v17, &type metadata for LowValueError);
  swift_getDynamicType();
  sub_25F2024B8(v0, &v15);
  v4 = sub_25F30685C();
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1(&v17);
  v15 = v4;
  v16 = v6;
  v7 = *v1;
  v8 = v1[1];
  v17 = 8250;
  v18 = 0xE200000000000000;
  MEMORY[0x25F8D7130](v7, v8);
  MEMORY[0x25F8D7130](v17, v18);

  v9 = v1[3];
  if (v9)
  {
    v10 = v1[2];
    MEMORY[0x25F8D7130](2570, 0xE200000000000000);
    MEMORY[0x25F8D7130](v10, v9);
  }

  v11 = v1[5];
  if (v11)
  {
    v12 = v1[4];
    MEMORY[0x25F8D7130](2570, 0xE200000000000000);
    MEMORY[0x25F8D7130](v12, v11);
  }

  v17 = v15;
  v18 = v16;
  sub_25F1BF118();
  v13 = sub_25F305D2C();

  return v13;
}

uint64_t sub_25F1FA32C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v20 = &type metadata for TimeoutError;
  v8 = swift_allocObject();
  v17 = v8;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  v9 = a4 & 1;
  *(v8 + 40) = a4 & 1;
  __swift_project_boxed_opaque_existential_1(&v17, &type metadata for TimeoutError);
  swift_getDynamicType();
  sub_25F2024A8(a1, a2, a3, a4 & 1);
  v10 = sub_25F30685C();
  v12 = v11;
  __swift_destroy_boxed_opaque_existential_1(&v17);
  v21 = v10;
  v22 = v12;
  v17 = a1;
  v18 = a2;
  v19 = a3;
  LOBYTE(v20) = v9;
  v13 = TimeoutError.highValueTitle.getter();
  if (v14)
  {
    v17 = 8250;
    v18 = 0xE200000000000000;
    MEMORY[0x25F8D7130](v13);

    MEMORY[0x25F8D7130](v17, v18);

    v10 = v21;
    v12 = v22;
  }

  v17 = v10;
  v18 = v12;
  sub_25F1BF118();
  v15 = sub_25F305D2C();

  return v15;
}

uint64_t sub_25F1FA4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = &type metadata for Unreachable;
  v8 = swift_allocObject();
  v14[0] = v8;
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  __swift_project_boxed_opaque_existential_1(v14, &type metadata for Unreachable);
  swift_getDynamicType();

  v9 = sub_25F30685C();
  v11 = v10;
  __swift_destroy_boxed_opaque_existential_1(v14);
  v14[0] = v9;
  v14[1] = v11;
  MEMORY[0x25F8D7130](0xD000000000000021, 0x800000025F318160);
  MEMORY[0x25F8D7130](2570, 0xE200000000000000);
  MEMORY[0x25F8D7130](a1, a2);
  if (a4)
  {
    MEMORY[0x25F8D7130](2570, 0xE200000000000000);
    MEMORY[0x25F8D7130](a3, a4);
  }

  sub_25F1BF118();
  v12 = sub_25F305D2C();

  return v12;
}

uint64_t sub_25F1FA644(uint64_t a1, uint64_t a2)
{
  v11 = &type metadata for InvalidUUID;
  v9 = a1;
  v10 = a2;
  __swift_project_boxed_opaque_existential_1(&v9, &type metadata for InvalidUUID);
  swift_getDynamicType();

  v4 = sub_25F30685C();
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1(&v9);
  v9 = v4;
  v10 = v6;
  sub_25F305FAC();

  MEMORY[0x25F8D7130](a1, a2);
  MEMORY[0x25F8D7130](0xD000000000000015, 0x800000025F318100);

  MEMORY[0x25F8D7130](8250, 0xE200000000000000);

  sub_25F1BF118();
  v7 = sub_25F305D2C();

  return v7;
}

uint64_t HumanReadableError.fullDiagnosticsOutput.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 88))();
  v4 = (*(a2 + 24))(a1, a2);
  if (v5 || (v4 = (*(a2 + 32))(a1, a2), v6))
  {
    MEMORY[0x25F8D7130](v4);

    MEMORY[0x25F8D7130](8250, 0xE200000000000000);
  }

  v7 = (*(a2 + 40))(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    MEMORY[0x25F8D7130](2570, 0xE200000000000000);
    MEMORY[0x25F8D7130](v9, v10);
  }

  v11 = (*(a2 + 48))(a1, a2);
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    MEMORY[0x25F8D7130](2570, 0xE200000000000000);
    MEMORY[0x25F8D7130](v13, v14);
  }

  sub_25F1BF118();
  v15 = sub_25F305D2C();

  return v15;
}

uint64_t sub_25F1FA9A4@<X0>(void *a1@<X8>)
{
  v31 = type metadata accessor for CrashReportError(0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v29);
  sub_25F2025A0(v1, boxed_opaque_existential_1);
  __swift_project_boxed_opaque_existential_1(&v29, v31);
  swift_getDynamicType();
  v24 = sub_25F30685C();
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_1(&v29);
  sub_25F1AE8B4(&v29);
  v5 = v31;
  v6 = v32;
  __swift_project_boxed_opaque_existential_1(&v29, v31);
  v7 = (*(v6 + 16))(v5, v6);
  v9 = v8;
  __swift_destroy_boxed_opaque_existential_1(&v29);
  sub_25F1AE8B4(&v29);
  v10 = v31;
  v11 = v32;
  __swift_project_boxed_opaque_existential_1(&v29, v31);
  v12 = (*(v11 + 24))(v10, v11);
  v14 = v13;
  __swift_destroy_boxed_opaque_existential_1(&v29);
  v15 = CrashReportError.additionalDiagnostics.getter();
  v17 = v16;
  sub_25F1AE8B4(&v29);
  v19 = v31;
  v18 = v32;
  __swift_project_boxed_opaque_existential_1(&v29, v31);
  (*(v18 + 32))(&v26, v19, v18);
  if (v27)
  {
    __swift_destroy_boxed_opaque_existential_1(&v29);
    v20 = 2;
  }

  else
  {
    v21 = v26;
    __swift_destroy_boxed_opaque_existential_1(&v29);
    v20 = v21 | 2;
  }

  v28 = 0;
  *&v29 = v24;
  *(&v29 + 1) = v4;
  v30 = v7;
  v31 = v9;
  v32 = 0;
  v33 = 0;
  v34 = v12;
  v35 = v14;
  v36 = v15;
  v37 = v17;
  v38 = v20;
  v39 = 0;
  v40 = 258;
  v41 = 1;
  v22 = sub_25F1FEE3C(&v29);
  sub_25F1FFB90(&v29);
  result = sub_25F252514(v22, &v26);
  *a1 = v26;
  return result;
}

uint64_t sub_25F1FABA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *(&v15 + 1) = &type metadata for InvalidUUID;
  *&v14 = a1;
  *(&v14 + 1) = a2;
  __swift_project_boxed_opaque_existential_1(&v14, &type metadata for InvalidUUID);
  swift_getDynamicType();

  v6 = sub_25F30685C();
  v8 = v7;
  __swift_destroy_boxed_opaque_existential_1(&v14);
  *&v14 = 0;
  *(&v14 + 1) = 0xE000000000000000;
  sub_25F305FAC();

  *&v14 = 0xD000000000000015;
  *(&v14 + 1) = 0x800000025F318100;
  MEMORY[0x25F8D7130](a1, a2);
  v9 = v14;
  v13 = 1;
  *&v14 = v6;
  *(&v14 + 1) = v8;
  v15 = v9;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  v20 = 1;
  v21 = 2;
  v22 = 1;
  v10 = sub_25F1FEE3C(&v14);
  sub_25F1FFB90(&v14);
  result = sub_25F252514(v10, &v12);
  *a3 = v12;
  return result;
}

uint64_t sub_25F1FACE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v20 = &type metadata for Unreachable;
  v10 = swift_allocObject();
  *&v18 = v10;
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  __swift_project_boxed_opaque_existential_1(&v18, &type metadata for Unreachable);
  swift_getDynamicType();

  v11 = sub_25F30685C();
  v13 = v12;
  __swift_destroy_boxed_opaque_existential_1(&v18);
  v17 = 1;
  *&v18 = v11;
  *(&v18 + 1) = v13;
  v19 = 0;
  v20 = 0;
  v21 = 0xD00000000000001FLL;
  v22 = 0x800000025F318190;
  v23 = a1;
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = 0;
  v28 = 1;
  v29 = 2;
  v30 = 1;

  v14 = sub_25F1FEE3C(&v18);
  sub_25F1FFB90(&v18);
  result = sub_25F252514(v14, &v16);
  *a5 = v16;
  return result;
}

uint64_t sub_25F1FAE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v9 = a4 & 1;
  v23 = a4 & 1;
  v26 = &type metadata for TimeoutError;
  v10 = swift_allocObject();
  *&v24 = v10;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = v9;
  __swift_project_boxed_opaque_existential_1(&v24, &type metadata for TimeoutError);
  swift_getDynamicType();
  sub_25F2024A8(a1, a2, a3, v9);
  v11 = sub_25F30685C();
  v13 = v12;
  __swift_destroy_boxed_opaque_existential_1(&v24);
  v14 = TimeoutError.highValueTitle.getter();
  v19 = 1;
  *&v24 = v11;
  *(&v24 + 1) = v13;
  v25 = v14;
  v26 = v15;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  v31 = 1;
  v32 = 258;
  v33 = 1;
  v16 = sub_25F1FEE3C(&v24);
  sub_25F1FFB90(&v24);
  result = sub_25F252514(v16, &v18);
  *a5 = v18;
  return result;
}

uint64_t sub_25F1FAF60@<X0>(void *a1@<X8>)
{
  v16 = &type metadata for LowValueError;
  v3 = swift_allocObject();
  v15[0] = v3;
  v4 = *(v1 + 16);
  *(v3 + 16) = *v1;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(v1 + 32);
  *(v3 + 64) = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(v15, &type metadata for LowValueError);
  swift_getDynamicType();
  sub_25F2024B8(v1, &v19);
  v5 = sub_25F30685C();
  v7 = v6;
  __swift_destroy_boxed_opaque_existential_1(v15);
  v8 = (*(v1 + 48) == 2) | *(v1 + 48);
  v10 = *v1;
  v9 = *(v1 + 8);
  v11 = *(v1 + 32);
  *v15 = *(v1 + 16);
  v18 = v11;
  v24 = *v15;
  v25 = v11;
  v17 = 1;
  *&v19 = v5;
  *(&v19 + 1) = v7;
  v20 = 0;
  v21 = 0;
  v22 = v10;
  v23 = v9;
  v26 = 0;
  v27 = 513;
  v28 = v8 & 1;
  v29 = 1;

  sub_25F2024F0(v15, v14);
  sub_25F2024F0(&v18, v14);
  v12 = sub_25F1FEE3C(&v19);
  sub_25F1FFB90(&v19);
  result = sub_25F252514(v12, v14);
  *a1 = v14[0];
  return result;
}

uint64_t sub_25F1FB0AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v26 = &type metadata for AccumulatedError;
  *&v24 = a1;
  __swift_project_boxed_opaque_existential_1(&v24, &type metadata for AccumulatedError);
  swift_getDynamicType();

  v20 = sub_25F30685C();
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_1(&v24);
  v5 = sub_25F2B9B8C(a1);
  v7 = v6;
  v8 = sub_25F2B9A70(a1);
  v10 = v9;
  v11 = sub_25F2B9C88(a1);
  v13 = v12;
  v14 = sub_25F2B9D84(a1);
  v16 = v15;
  v17 = sub_25F2B9E80(a1);
  v23 = 1;
  *&v24 = v20;
  *(&v24 + 1) = v4;
  v25 = v5;
  v26 = v7;
  v27 = v8;
  v28 = v10;
  v29 = v11;
  v30 = v13;
  v31 = v14;
  v32 = v16;
  v33 = 0;
  v34 = 513;
  v35 = v17 & 1;
  v36 = 1;
  v18 = sub_25F1FEE3C(&v24);
  sub_25F1FFB90(&v24);
  result = sub_25F252514(v18, &v22);
  *a2 = v22;
  return result;
}

uint64_t sub_25F1FB1F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_25F2000A4(a1);
  v6 = v5;
  v7 = [a1 localizedDescription];
  v8 = sub_25F304E0C();
  v10 = v9;

  v11 = [a1 localizedRecoverySuggestion];
  if (v11)
  {
    v12 = v11;
    v13 = sub_25F304E0C();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  sub_25F1FFC94(a1);
  v21 = 1;
  *&v22 = v4;
  *(&v22 + 1) = v6;
  v23 = 0;
  v24 = 0;
  v25 = v8;
  v26 = v10;
  v27 = v13;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  v31 = 0;
  v32 = 1;
  v33 = 258;
  v34 = 0;
  v18 = sub_25F1FEE3C(&v22);
  sub_25F1FFB90(&v22);
  result = sub_25F252514(v18, &v20);
  *a2 = v20;
  return result;
}

uint64_t sub_25F1FB310@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_25F30685C();
  v6 = v5;
  v7 = sub_25F30685C();
  MEMORY[0x25F8D7130](v7);

  MEMORY[0x25F8D7130](8250, 0xE200000000000000);
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30619C();
  v11 = 1;
  *&v12[0] = v4;
  *(&v12[0] + 1) = v6;
  memset(&v12[1], 0, 48);
  v13 = 0;
  v14 = 0xE000000000000000;
  v15 = 0;
  v16 = 1;
  v17 = 258;
  v18 = 0;
  v8 = sub_25F1FEE3C(v12);
  sub_25F1FFB90(v12);
  result = sub_25F252514(v8, &v10);
  *a2 = v10;
  return result;
}

uint64_t sub_25F1FB430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W6>, void *a7@<X8>)
{
  *(&v23 + 1) = a5;
  v14 = swift_allocObject();
  *&v22 = v14;
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  __swift_project_boxed_opaque_existential_1(&v22, a5);
  swift_getDynamicType();

  v15 = sub_25F30685C();
  v17 = v16;
  __swift_destroy_boxed_opaque_existential_1(&v22);
  v21 = 1;
  *&v22 = v15;
  *(&v22 + 1) = v17;
  v23 = 0u;
  v24 = 0u;
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = 0;
  v30 = 513;
  v31 = a6;
  v32 = 1;

  v18 = sub_25F1FEE3C(&v22);
  sub_25F1FFB90(&v22);
  result = sub_25F252514(v18, &v20);
  *a7 = v20;
  return result;
}

uint64_t sub_25F1FB560@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v13 = a1;
  *&v14 = a1;
  v16 = &type metadata for InvalidAuditTokenDeserialization;
  __swift_project_boxed_opaque_existential_1(&v14, &type metadata for InvalidAuditTokenDeserialization);
  swift_getDynamicType();

  v3 = sub_25F30685C();
  v5 = v4;
  __swift_destroy_boxed_opaque_existential_1(&v14);
  v6 = sub_25F202928();
  v7 = (*(v6 + 24))(&type metadata for InvalidAuditTokenDeserialization, v6);
  v12 = 1;
  *&v14 = v3;
  *(&v14 + 1) = v5;
  v15 = v7;
  v16 = v8;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  v21 = 1;
  v22 = 2;
  v23 = 1;
  v9 = sub_25F1FEE3C(&v14);
  sub_25F1FFB90(&v14);
  result = sub_25F252514(v9, &v11);
  *a2 = v11;
  return result;
}

uint64_t sub_25F1FB668@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v15 = a1;
  v18 = &type metadata for JITError;
  *&v16 = a1;
  __swift_project_boxed_opaque_existential_1(&v16, &type metadata for JITError);
  swift_getDynamicType();

  v4 = sub_25F30685C();
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1(&v16);
  if (*(a1 + 16))
  {
    v7 = 0xD000000000000017;
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 16))
  {
    v8 = 0x800000025F318140;
  }

  else
  {
    v8 = 0;
  }

  v9 = JITError.additionalDiagnostics.getter();
  v14 = 0;
  *&v16 = v4;
  *(&v16 + 1) = v6;
  v17 = 0;
  v18 = 0;
  v19 = v7;
  v20 = v8;
  v21 = 0;
  v22 = 0;
  v23 = v9;
  v24 = v10;
  v25 = 64;
  v26 = 0;
  v27 = 258;
  v28 = 1;
  v11 = sub_25F1FEE3C(&v16);
  sub_25F1FFB90(&v16);
  result = sub_25F252514(v11, &v13);
  *a2 = v13;
  return result;
}

uint64_t HumanReadableError.plistRepresentation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = (*(a2 + 88))();
  v27 = v6;
  v28 = v5;
  v7 = (*(a2 + 24))(a1, a2);
  v25 = v8;
  v26 = v7;
  v9 = (*(a2 + 32))(a1, a2);
  v23 = v10;
  v24 = v9;
  v11 = (*(a2 + 40))(a1, a2);
  v13 = v12;
  v14 = (*(a2 + 48))(a1, a2);
  v16 = v15;
  (*(a2 + 56))(&v30, a1, a2);
  v17 = v30;
  v18 = v31;
  (*(a2 + 64))(&v44, a1, a2);
  v19 = (*(a2 + 96))(a1, a2);
  v20 = (*(a2 + 128))(a1, a2);
  v32 = v18;
  *&v33 = v28;
  *(&v33 + 1) = v27;
  v34 = v26;
  v35 = v25;
  v36 = v24;
  v37 = v23;
  v38 = v11;
  v39 = v13;
  v40 = v14;
  v41 = v16;
  v42 = v17;
  v43 = v18;
  BYTE1(v44) = v19 & 1;
  BYTE2(v44) = v20 & 1;
  v21 = sub_25F1FEE3C(&v33);
  sub_25F1FFB90(&v33);
  result = sub_25F252514(v21, &v30);
  *a3 = v30;
  return result;
}

Swift::String __swiftcall Error.describe()()
{
  v2 = v0;
  v3 = *(*(v0 - 8) + 64);
  (MEMORY[0x28223BE20])();
  (*(v5 + 16))(&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52D98, &unk_25F3083E0);
  if (!swift_dynamicCast())
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    sub_25F1AF698(&v18, &qword_27FD54840, &unk_25F30BAD8);
    goto LABEL_5;
  }

  v6 = *(&v19 + 1);
  v7 = v20;
  __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
  v8 = (*(v7 + 24))(v6, v7);
  if (!v9)
  {
    v14 = (*(v7 + 32))(v6, v7);
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1(&v18);
    if (v16)
    {
      v12 = v16;
      v13 = v14;
      goto LABEL_9;
    }

LABEL_5:
    *&v18 = 0;
    *(&v18 + 1) = 0xE000000000000000;
    sub_25F30653C();

    v12 = *(&v18 + 1);
    v13 = v18;
    goto LABEL_9;
  }

  v10 = v8;
  v11 = v9;
  __swift_destroy_boxed_opaque_existential_1(&v18);
  v12 = v11;
  v13 = v10;
LABEL_9:
  result._object = v12;
  result._countAndFlagsBits = v13;
  return result;
}

void Error.humanReadable.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v44 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = *(v5 + 16);
  v13(&v44 - v14, v2, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52D98, &unk_25F3083E0);
  if (swift_dynamicCast())
  {
    goto LABEL_7;
  }

  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_25F1AF698(&v50, &qword_27FD54840, &unk_25F30BAD8);
  v13(v12, v2, a1);
  v15 = sub_25F30650C();
  if (v15)
  {
    v16 = v15;
    (*(v5 + 8))(v12, a1);
  }

  else
  {
    v16 = swift_allocError();
    (*(v5 + 32))(v17, v12, a1);
  }

  v18 = sub_25F3043EC();

  sub_25F200258(v18, &v50);
  if (*(&v51 + 1))
  {

LABEL_7:
    sub_25F1A42F8(&v50, &v53);
    sub_25F1A42F8(&v53, a2);
    return;
  }

  v45 = a2;
  sub_25F1AF698(&v50, &qword_27FD54840, &unk_25F30BAD8);
  v19 = [v18 userInfo];
  v20 = sub_25F304A6C();

  v21 = *(v20 + 16);

  if (v21)
  {
    v22 = [v18 userInfo];
    v23 = sub_25F304A6C();

    v24 = *MEMORY[0x277CCA7E8];
    v25 = sub_25F304E0C();
    if (*(v23 + 16))
    {
      v27 = sub_25F219234(v25, v26);
      v29 = v28;

      v30 = v45;
      if (v29)
      {
        sub_25F1B7118(*(v23 + 56) + 32 * v27, &v53);

        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
        if (swift_dynamicCast())
        {
          v31 = v50;
          v30[3] = &type metadata for UnderlyingErrorWrapper;
          v30[4] = sub_25F201634();
          v32 = swift_allocObject();
          *v30 = v32;
          v32[5] = &type metadata for HumanReadableNSError;
          v32[6] = sub_25F2015E0();
          v32[2] = v18;
          swift_getErrorValue();
          v33 = v48;
          v34 = v49;
          v35 = v18;
          Error.humanReadable.getter(v33, v34);

          return;
        }
      }

      else
      {
      }
    }

    else
    {

      v30 = v45;
    }

    v30[3] = &type metadata for HumanReadableNSError;
    v30[4] = sub_25F2015E0();
    *v30 = v18;
  }

  else
  {
    v13(v9, v2, a1);
    v36 = sub_25F30650C();
    if (v36)
    {
      v37 = v36;
      (*(v5 + 8))(v9, a1);
    }

    else
    {
      v37 = swift_allocError();
      (*(v5 + 32))(v38, v9, a1);
    }

    v39 = v45;
    swift_getErrorValue();
    v40 = v46;
    v41 = v47;
    v54 = v47;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v53);
    (*(*(v41 - 8) + 16))(boxed_opaque_existential_1, v40, v41);
    __swift_project_boxed_opaque_existential_1(&v53, v54);
    DynamicType = swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(&v53);
    v39[3] = &type metadata for HumanReadableSwiftError;
    v39[4] = sub_25F201688();

    *v39 = v37;
    v39[1] = DynamicType;
  }
}

void HumanReadableError.withUnderlying(_:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  if (a1)
  {
    a4[3] = &type metadata for UnderlyingErrorWrapper;
    a4[4] = sub_25F201634();
    v10 = swift_allocObject();
    *a4 = v10;
    v10[5] = a2;
    v10[6] = a3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10 + 2);
    (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, v5, a2);
    swift_getErrorValue();
    v12 = a1;
    Error.humanReadable.getter(v15, (v10 + 7));
  }

  else
  {
    a4[3] = a2;
    a4[4] = a3;
    v13 = __swift_allocate_boxed_opaque_existential_1(a4);
    v14 = *(*(a2 - 8) + 16);

    v14(v13, v5, a2);
  }
}

PreviewsFoundationOS::HumanReadableErrorSeverity_optional __swiftcall HumanReadableErrorSeverity.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25F3063BC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t HumanReadableErrorSeverity.rawValue.getter()
{
  if (*v0)
  {
    result = 1868983913;
  }

  else
  {
    result = 0x726F727265;
  }

  *v0;
  return result;
}

uint64_t sub_25F1FC338(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1868983913;
  }

  else
  {
    v4 = 0x726F727265;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1868983913;
  }

  else
  {
    v6 = 0x726F727265;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F30659C();
  }

  return v9 & 1;
}

uint64_t sub_25F1FC3D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00656C74695465;
  v3 = 0x756C615668676968;
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 0x65756C6156776F6CLL;
    v14 = 0xED0000656C746954;
    if (a1 != 2)
    {
      v13 = 0x6E6F697469646461;
      v14 = 0xEE006F666E496C61;
    }

    v15 = 0x800000025F317270;
    v16 = 0xD000000000000014;
    if (a1)
    {
      v16 = 0x756C615668676968;
      v15 = 0xEE00656C74695465;
    }

    if (a1 <= 1u)
    {
      v11 = v16;
    }

    else
    {
      v11 = v13;
    }

    if (v4 <= 1)
    {
      v12 = v15;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v6 = 0x7974697265766573;
    v7 = 0x800000025F3172F0;
    v8 = 0x65766974614E7369;
    if (a1 == 7)
    {
      v8 = 0xD000000000000010;
    }

    else
    {
      v7 = 0xE800000000000000;
    }

    if (a1 != 6)
    {
      v6 = v8;
      v5 = v7;
    }

    v9 = 0x800000025F3172C0;
    v10 = 0xD000000000000015;
    if (a1 != 4)
    {
      v10 = 0x736E6F6974706FLL;
      v9 = 0xE700000000000000;
    }

    if (a1 <= 5u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v6;
    }

    if (v4 <= 5)
    {
      v12 = v9;
    }

    else
    {
      v12 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xED0000656C746954;
        if (v11 != 0x65756C6156776F6CLL)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v2 = 0xEE006F666E496C61;
        if (v11 != 0x6E6F697469646461)
        {
          goto LABEL_50;
        }
      }

      goto LABEL_47;
    }

    if (!a2)
    {
      v2 = 0x800000025F317270;
      if (v11 != 0xD000000000000014)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0x800000025F3172C0;
        if (v11 != 0xD000000000000015)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x736E6F6974706FLL)
        {
          goto LABEL_50;
        }
      }

      goto LABEL_47;
    }

    if (a2 == 6)
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x7974697265766573)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }

    if (a2 == 7)
    {
      v2 = 0x800000025F3172F0;
      if (v11 != 0xD000000000000010)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }

    v2 = 0xE800000000000000;
    v3 = 0x65766974614E7369;
  }

  if (v11 != v3)
  {
LABEL_50:
    v17 = sub_25F30659C();
    goto LABEL_51;
  }

LABEL_47:
  if (v12 != v2)
  {
    goto LABEL_50;
  }

  v17 = 1;
LABEL_51:

  return v17 & 1;
}

uint64_t sub_25F1FC6E4()
{
  v1 = *v0;
  sub_25F30671C();
  sub_25F304F0C();

  return sub_25F30676C();
}

uint64_t sub_25F1FC75C()
{
  *v0;
  sub_25F304F0C();
}

uint64_t sub_25F1FC7C0()
{
  sub_25F304F0C();
}

uint64_t sub_25F1FC944()
{
  v1 = *v0;
  sub_25F30671C();
  sub_25F304F0C();

  return sub_25F30676C();
}

void sub_25F1FC9C4(uint64_t *a1@<X8>)
{
  v2 = 1868983913;
  if (!*v1)
  {
    v2 = 0x726F727265;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void *sub_25F1FCA78@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_25F1FCAA4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_25F1FCB54@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t HumanReadableError.unwrapped.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = *(v7 + 16);
  v10(&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  if (swift_dynamicCast())
  {
    v18[2] = v15;
    v18[3] = v16;
    v18[4] = v17;
    v18[0] = v13;
    v18[1] = v14;
    sub_25F1BF03C(v18, a3);
    return sub_25F2016DC(v18);
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    sub_25F1AF698(&v13, &qword_27FD54860, &qword_25F30BAE8);
    a3[3] = a1;
    a3[4] = a2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (v10)(boxed_opaque_existential_1, v3, a1);
  }
}

double HumanReadableError.underlying.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (swift_dynamicCast())
  {
    v13[0] = v9;
    v13[1] = v10;
    v13[2] = v11;
    v12[0] = v7;
    v12[1] = v8;
    sub_25F1BF03C(v13 + 8, a2);
    sub_25F2016DC(v12);
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    sub_25F1AF698(&v7, &qword_27FD54860, &qword_25F30BAE8);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t HumanReadableError.effectiveTitle.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 24))();
  if (!v5)
  {
    return (*(a2 + 32))(a1, a2);
  }

  return result;
}

void *HumanReadableError.effectiveOptions.getter@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  result = (*(a1 + 56))(&v5);
  if (v6)
  {
    v4 = 0;
  }

  else
  {
    v4 = v5;
  }

  *a2 = v4;
  return result;
}

id HumanReadableError.serializableNSError.getter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54868, &qword_25F30BAF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F3081E0;
  v5 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_25F304E0C();
  *(inited + 40) = v6;
  v7 = (*(a2 + 24))(a1, a2);
  if (v8)
  {
    *(inited + 72) = MEMORY[0x277D837D0];
  }

  else
  {
    v7 = (*(a2 + 32))(a1, a2);
    *(inited + 72) = MEMORY[0x277D837D0];
    if (!v8)
    {
      v8 = 0x800000025F318090;
      v7 = 0xD000000000000018;
    }
  }

  *(inited + 48) = v7;
  *(inited + 56) = v8;
  v9 = objc_opt_self();
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x800000025F3180B0;
  (*(a2 + 120))(&v14, a1, a2);
  v10 = v14;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54870, &unk_25F30BAF8);
  *(inited + 96) = v10;
  sub_25F1B5EF0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C98, &qword_25F308150);
  swift_arrayDestroy();
  v11 = sub_25F304A5C();

  v12 = [v9 uv:v11 errorWithUserInfo:?];

  return v12;
}

uint64_t sub_25F1FD0C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x72657070617277;
  }

  else
  {
    v4 = 1717658988;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x72657070617277;
  }

  else
  {
    v6 = 1717658988;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F30659C();
  }

  return v9 & 1;
}

uint64_t sub_25F1FD164()
{
  v1 = *v0;
  sub_25F30671C();
  sub_25F304F0C();

  return sub_25F30676C();
}

uint64_t sub_25F1FD1E0()
{
  *v0;
  sub_25F304F0C();
}

uint64_t sub_25F1FD248()
{
  v1 = *v0;
  sub_25F30671C();
  sub_25F304F0C();

  return sub_25F30676C();
}

void sub_25F1FD2CC(uint64_t *a1@<X8>)
{
  v2 = 1717658988;
  if (*v1)
  {
    v2 = 0x72657070617277;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F1FD304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54680, &qword_25F3122C0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_25F3081E0;
      v9 = MEMORY[0x277D837D0];
      *(v8 + 56) = MEMORY[0x277D837D0];
      v10 = sub_25F1F7190();
      *(v8 + 32) = a1;
      *(v8 + 40) = a2;
      *(v8 + 96) = v9;
      *(v8 + 104) = v10;
      *(v8 + 64) = v10;
      *(v8 + 72) = a3;
      *(v8 + 80) = a4;

      return sub_25F304E3C();
    }

    else
    {

      return a1;
    }
  }

  else
  {

    return a3;
  }
}

uint64_t sub_25F1FD3F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x69796C7265646E75;
  }

  else
  {
    v4 = 1852399981;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xEA0000000000676ELL;
  }

  if (*a2)
  {
    v6 = 0x69796C7265646E75;
  }

  else
  {
    v6 = 1852399981;
  }

  if (*a2)
  {
    v7 = 0xEA0000000000676ELL;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F30659C();
  }

  return v9 & 1;
}

uint64_t sub_25F1FD49C()
{
  v1 = *v0;
  sub_25F30671C();
  sub_25F304F0C();

  return sub_25F30676C();
}

uint64_t sub_25F1FD51C()
{
  *v0;
  sub_25F304F0C();
}

uint64_t sub_25F1FD588()
{
  v1 = *v0;
  sub_25F30671C();
  sub_25F304F0C();

  return sub_25F30676C();
}

uint64_t sub_25F1FD610@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25F3063BC();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_25F1FD66C(uint64_t *a1@<X8>)
{
  v2 = 1852399981;
  if (*v1)
  {
    v2 = 0x69796C7265646E75;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xEA0000000000676ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F1FD6A8()
{
  if (*v0)
  {
    result = 0x69796C7265646E75;
  }

  else
  {
    result = 1852399981;
  }

  *v0;
  return result;
}

uint64_t sub_25F1FD6E0(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  (*(v3 + 120))(&v18, v2, v3);
  v4 = a1[8];
  v5 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v4);
  (*(v5 + 120))(&v17, v4, v5);
  v6 = v18;
  v7 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54938, &unk_25F3103B0);
  inited = swift_initStackObject();
  v9 = inited;
  *(inited + 16) = xmmword_25F3081F0;
  *(inited + 32) = 0x707954726F727265;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = 0x72657070617277;
  *(inited + 56) = 0xE700000000000000;
  *(inited + 88) = 1852399981;
  *(inited + 96) = 0xE400000000000000;
  if (v6)
  {
    v10 = &protocol witness table for PropertyList;
    v11 = &type metadata for PropertyList;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    *(inited + 112) = 0;
    *(inited + 120) = 0;
  }

  *(inited + 104) = v6;
  *(inited + 128) = v11;
  *(inited + 136) = v10;
  *(inited + 144) = 0x69796C7265646E75;
  *(inited + 152) = 0xEA0000000000676ELL;
  if (v7)
  {
    v12 = &protocol witness table for PropertyList;
    v13 = &type metadata for PropertyList;
  }

  else
  {
    v13 = 0;
    v12 = 0;
    *(inited + 168) = 0;
    *(inited + 176) = 0;
  }

  *(inited + 160) = v7;
  *(inited + 184) = v13;
  *(inited + 192) = v12;

  v14 = sub_25F1B58D4(v9);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C88, &qword_25F308140);
  swift_arrayDestroy();
  v15 = sub_25F267FCC(v14);

  return v15;
}

uint64_t sub_25F1FD900@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v11 = &type metadata for UnderlyingErrorWrapper.Key;
  v12 = &off_287160630;
  LOBYTE(v10) = 0;
  sub_25F1FDD24(&v10, v4, v9);
  if (v2)
  {

    return __swift_destroy_boxed_opaque_existential_1(&v10);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v10);
    v5 = *&v9[0];
    v11 = &type metadata for UnderlyingErrorWrapper.Key;
    v12 = &off_287160630;
    LOBYTE(v10) = 1;
    sub_25F1FDD24(&v10, v4, v9);

    __swift_destroy_boxed_opaque_existential_1(&v10);
    v6 = *&v9[0];
    *&v9[0] = v5;
    unarchiveHumanReadableError(from:)(&v10, v9);

    v8 = v6;
    unarchiveHumanReadableError(from:)(v9, &v8);

    sub_25F1A42F8(&v10, a2);
    return sub_25F1A42F8(v9, a2 + 40);
  }
}

double sub_25F1FDA48(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 8))(v5, v6);
  if (!*(a2 + 16))
  {

    goto LABEL_5;
  }

  v9 = sub_25F219234(v7, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_5:
    sub_25F202604();
    swift_allocError();
    v14 = v13;
    *v13 = a2;
    sub_25F1BF03C(a1, (v13 + 1));
    *(v14 + 112) = 0;
    swift_willThrow();

    return v2;
  }

  sub_25F1B7118(*(a2 + 56) + 32 * v9, v16);
  sub_25F1B707C(v16, v17);
  sub_25F200D40(v17, a1, a2);
  v2 = v12;
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v2;
}

uint64_t sub_25F1FDB80(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 8))(v5, v6);
  if (!*(a2 + 16))
  {

    goto LABEL_7;
  }

  v9 = sub_25F219234(v7, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_7:
    sub_25F202604();
    swift_allocError();
    v15 = v14;
    *v14 = a2;
    sub_25F1BF03C(a1, (v14 + 1));
    *(v15 + 112) = 0;
    swift_willThrow();

    return a2;
  }

  sub_25F1B7118(*(a2 + 56) + 32 * v9, v17);
  sub_25F1B707C(v17, v18);
  sub_25F1BF03C(a1, v17);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  sub_25F1A42F8(v17, v12 + 24);
  sub_25F1B7118(v18, v17);

  v13 = sub_25F254D18(v17, sub_25F202658, v12);
  if (!v2)
  {
    a2 = sub_25F2013BC(v13);
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  return a2;
}

uint64_t sub_25F1FDD24@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 8))(v6, v7);
  if (*(a2 + 16))
  {
    v10 = sub_25F219234(v8, v9);
    v12 = v11;

    if (v12)
    {
      sub_25F1B7118(*(a2 + 56) + 32 * v10, v16);
      sub_25F1B707C(v16, v17);
      sub_25F201028(v17, a1, a2, a3);
      return __swift_destroy_boxed_opaque_existential_1(v17);
    }
  }

  else
  {
  }

  sub_25F202604();
  swift_allocError();
  v15 = v14;
  *v14 = a2;
  sub_25F1BF03C(a1, (v14 + 1));
  *(v15 + 112) = 0;
  swift_willThrow();
}

uint64_t sub_25F1FDE58(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 8))(v4, v5);
  if (!*(a2 + 16))
  {

    goto LABEL_5;
  }

  v8 = sub_25F219234(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_5:
    sub_25F202604();
    swift_allocError();
    v12 = v11;
    *v11 = a2;
    sub_25F1BF03C(a1, (v11 + 1));
    *(v12 + 112) = 0;
    swift_willThrow();

    return a2;
  }

  sub_25F1B7118(*(a2 + 56) + 32 * v8, v14);
  sub_25F1B707C(v14, v15);
  a2 = sub_25F2012C8(v15, a1, a2);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return a2;
}

uint64_t sub_25F1FDF90@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 8))(v6, v7);
  if (*(a2 + 16))
  {
    v10 = sub_25F219234(v8, v9);
    v12 = v11;

    if (v12)
    {
      sub_25F1B7118(*(a2 + 56) + 32 * v10, v16);
      sub_25F1B707C(v16, v17);
      sub_25F2011B4(v17, a1, a2, a3);
      return __swift_destroy_boxed_opaque_existential_1(v17);
    }
  }

  else
  {
  }

  sub_25F202604();
  swift_allocError();
  v15 = v14;
  *v14 = a2;
  sub_25F1BF03C(a1, (v14 + 1));
  *(v15 + 112) = 0;
  swift_willThrow();
}

uint64_t sub_25F1FE0C4(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 8))(v5, v6);
  if (!*(a2 + 16))
  {

    goto LABEL_6;
  }

  v9 = sub_25F219234(v7, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_6:
    sub_25F202604();
    swift_allocError();
    v15 = v14;
    *v14 = a2;
    sub_25F1BF03C(a1, (v14 + 1));
    *(v15 + 112) = 0;
    swift_willThrow();

    return a2;
  }

  sub_25F1B7118(*(a2 + 56) + 32 * v9, v22);
  sub_25F1B707C(v22, v23);
  v12 = sub_25F2012C8(v23, a1, a2);
  if (!v2)
  {
    a2 = v12;
    v17 = v13;

    v18 = sub_25F3063BC();
    if (v18)
    {
      if (v18 != 1)
      {
        sub_25F202604();
        swift_allocError();
        v20 = v19;
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54978, &unk_25F310BC0);
        *v20 = &type metadata for ErrorType;
        *(v20 + 56) = MEMORY[0x277D837D0];
        *(v20 + 24) = v21;
        *(v20 + 32) = a2;
        *(v20 + 40) = v17;
        *(v20 + 112) = 3;
        swift_willThrow();

        goto LABEL_4;
      }

      a2 = 1;
    }

    else
    {
      a2 = 0;
    }

    swift_bridgeObjectRelease_n();
    __swift_destroy_boxed_opaque_existential_1(v23);
    return a2;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v23);
  return a2;
}

uint64_t unarchiveHumanReadableError(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  *(&v18 + 1) = MEMORY[0x277D837D0];
  *&v19 = &protocol witness table for String;
  *&v17 = 0x707954726F727265;
  *(&v17 + 1) = 0xE900000000000065;
  v5 = sub_25F1FE0C4(&v17, v4);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(&v17);
  }

  v7 = v5;
  __swift_destroy_boxed_opaque_existential_1(&v17);
  if (v7)
  {
    a2[3] = &type metadata for UnderlyingErrorWrapper;
    a2[4] = sub_25F201634();
    v8 = swift_allocObject();
    *a2 = v8;
    v16 = v4;

    result = sub_25F1FD900(&v16, &v17);
    v9 = v20;
    v8[3] = v19;
    v8[4] = v9;
    v8[5] = v21;
    v10 = v18;
    v8[1] = v17;
    v8[2] = v10;
  }

  else
  {
    a2[3] = &type metadata for RemoteHumanReadableError;
    a2[4] = sub_25F20175C();
    v11 = swift_allocObject();
    *a2 = v11;
    *&v17 = v4;

    result = sub_25F1FF270(&v17, v14);
    v12 = v14[3];
    v11[3] = v14[2];
    v11[4] = v12;
    v11[5] = v15[0];
    *(v11 + 92) = *(v15 + 12);
    v13 = v14[1];
    v11[1] = v14[0];
    v11[2] = v13;
  }

  return result;
}

unint64_t sub_25F1FE44C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x756C615668676968;
    v6 = 0x65756C6156776F6CLL;
    if (a1 != 2)
    {
      v6 = 0x6E6F697469646461;
    }

    if (!a1)
    {
      v5 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7974697265766573;
    v2 = 0x65766974614E7369;
    if (a1 == 7)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000015;
    if (a1 != 4)
    {
      v3 = 0x736E6F6974706FLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_25F1FE59C()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  result = (*(v2 + 24))(v1, v2);
  if (!v4)
  {
    v5 = v0[8];
    v6 = v0[9];
    __swift_project_boxed_opaque_existential_1(v0 + 5, v5);
    return (*(v6 + 24))(v5, v6);
  }

  return result;
}

uint64_t sub_25F1FE628()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  result = (*(v2 + 32))(v1, v2);
  if (!v4)
  {
    v5 = v0[8];
    v6 = v0[9];
    __swift_project_boxed_opaque_existential_1(v0 + 5, v5);
    return (*(v6 + 32))(v5, v6);
  }

  return result;
}

uint64_t sub_25F1FE6B4()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = (*(v2 + 40))(v1, v2);
  v5 = v4;
  v6 = v0[8];
  v7 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v6);
  v8 = (*(v7 + 40))(v6, v7);
  v10 = sub_25F1FD304(v3, v5, v8, v9);

  return v10;
}

void *sub_25F1FE794@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  result = (*(v4 + 56))(&v8, v3, v4);
  if (v9)
  {
    v6 = v1[8];
    v7 = v1[9];
    __swift_project_boxed_opaque_existential_1(v1 + 5, v6);
    return (*(v7 + 56))(v6, v7);
  }

  else
  {
    *a1 = v8;
    *(a1 + 8) = 0;
  }

  return result;
}

void *sub_25F1FE850@<X0>(_BYTE *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  result = (*(v4 + 64))(&v8, v3, v4);
  if (v8 == 2)
  {
    v6 = v1[8];
    v7 = v1[9];
    __swift_project_boxed_opaque_existential_1(v1 + 5, v6);
    return (*(v7 + 64))(v6, v7);
  }

  else
  {
    *a1 = v8;
  }

  return result;
}

uint64_t sub_25F1FE908(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(v4 + 72))(a1, v3, v4);
  v5 = v1[8];
  v6 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v5);
  return (*(v6 + 72))(a1, v5, v6);
}

uint64_t sub_25F1FE9A4()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  if ((*(v2 + 80))(v1, v2))
  {
    return 1;
  }

  v4 = v0[8];
  v5 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v4);
  return (*(v5 + 80))(v4, v5) & 1;
}

uint64_t sub_25F1FEA3C()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v7 = (*(v2 + 88))(v1, v2);
  MEMORY[0x25F8D7130](46, 0xE100000000000000);
  v3 = v0[8];
  v4 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v3);
  v5 = (*(v4 + 88))(v3, v4);
  MEMORY[0x25F8D7130](v5);

  return v7;
}

uint64_t sub_25F1FEAF8()
{
  v1 = v0[8];
  v2 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v1);
  return (*(v2 + 96))(v1, v2) & 1;
}

uint64_t sub_25F1FEB50()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 128))(v1, v2) & 1;
}

uint64_t sub_25F1FEBA8@<X0>(void *a1@<X8>)
{
  v3 = sub_25F1FD6E0(v1);
  result = sub_25F252514(v3, &v5);
  *a1 = v5;
  return result;
}

uint64_t sub_25F1FEC00()
{
  v1 = v0[8];
  v2 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v1);
  (*(v2 + 112))(v1, v2);
  v3 = v0[3];
  v4 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v3);
  v8 = (*(v4 + 112))(v3, v4);

  MEMORY[0x25F8D7130](0xD000000000000026, 0x800000025F3180D0);

  v5._countAndFlagsBits = 2105468;
  v5._object = 0xE300000000000000;
  v6 = String.prefixingEachLine(with:startingOnLine:)(v5, 0);

  MEMORY[0x25F8D7130](v6._countAndFlagsBits, v6._object);

  return v8;
}

uint64_t sub_25F1FED44()
{
  v1 = *v0;
  sub_25F30671C();
  sub_25F1FC7C0();
  return sub_25F30676C();
}

uint64_t sub_25F1FED94()
{
  v1 = *v0;
  sub_25F30671C();
  sub_25F1FC7C0();
  return sub_25F30676C();
}

uint64_t sub_25F1FEDD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F2028DC();
  *a2 = result;
  return result;
}

unint64_t sub_25F1FEE08@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25F1FE44C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25F1FEE3C(__int128 *a1)
{
  v41 = *a1;
  v2 = *(a1 + 2);
  v1 = *(a1 + 3);
  v4 = *(a1 + 4);
  v3 = *(a1 + 5);
  v6 = *(a1 + 6);
  v5 = *(a1 + 7);
  v8 = *(a1 + 8);
  v7 = *(a1 + 9);
  v35 = *(a1 + 10);
  v36 = *(a1 + 88);
  v37 = *(a1 + 89);
  v38 = *(a1 + 90);
  v39 = *(a1 + 91);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54938, &unk_25F3103B0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000014;
  *(inited + 16) = xmmword_25F30BAB0;
  *(inited + 40) = 0x800000025F317270;
  v10 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 48) = v41;
  strcpy((inited + 88), "highValueTitle");
  *(inited + 103) = -18;
  if (v1)
  {
    v11 = &protocol witness table for String;
    v12 = MEMORY[0x277D837D0];
    v13 = v1;
  }

  else
  {
    v2 = 0;
    v13 = 0;
    v12 = 0;
    v11 = 0;
    *(inited + 120) = 0;
  }

  *(inited + 104) = v2;
  *(inited + 112) = v13;
  *(inited + 128) = v12;
  *(inited + 136) = v11;
  strcpy((inited + 144), "lowValueTitle");
  *(inited + 158) = -4864;
  if (v3)
  {
    v14 = &protocol witness table for String;
    v15 = MEMORY[0x277D837D0];
    v16 = v3;
  }

  else
  {
    v4 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
    *(inited + 176) = 0;
  }

  *(inited + 160) = v4;
  *(inited + 168) = v16;
  *(inited + 184) = v15;
  *(inited + 192) = v14;
  strcpy((inited + 200), "additionalInfo");
  *(inited + 215) = -18;
  if (v5)
  {
    v17 = &protocol witness table for String;
    v18 = MEMORY[0x277D837D0];
    v19 = v5;
  }

  else
  {
    v6 = 0;
    v19 = 0;
    v18 = 0;
    v17 = 0;
    *(inited + 232) = 0;
  }

  *(inited + 216) = v6;
  *(inited + 224) = v19;
  *(inited + 240) = v18;
  *(inited + 248) = v17;
  *(inited + 256) = 0xD000000000000015;
  *(inited + 264) = 0x800000025F3172C0;
  if (v7)
  {
    v20 = &protocol witness table for String;
    v21 = MEMORY[0x277D837D0];
    v22 = v7;
  }

  else
  {
    v8 = 0;
    v22 = 0;
    v21 = 0;
    v20 = 0;
    *(inited + 288) = 0;
  }

  *(inited + 272) = v8;
  *(inited + 280) = v22;
  *(inited + 296) = v21;
  *(inited + 304) = v20;
  *(inited + 312) = 0x736E6F6974706FLL;
  *(inited + 320) = 0xE700000000000000;
  if (v36)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    *(inited + 336) = 0;
    *(inited + 344) = 0;
  }

  else
  {
    v25 = &protocol witness table for Int;
    v24 = MEMORY[0x277D83B88];
    v23 = v35;
  }

  *(inited + 328) = v23;
  *(inited + 352) = v24;
  *(inited + 360) = v25;
  *(inited + 368) = 0x7974697265766573;
  *(inited + 376) = 0xE800000000000000;
  if (v37 == 2)
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    *(inited + 400) = 0;
  }

  else
  {
    v26 = 1868983913;
    if ((v37 & 1) == 0)
    {
      v26 = 0x726F727265;
    }

    v27 = 0xE500000000000000;
    if (v37)
    {
      v27 = 0xE400000000000000;
    }

    v29 = &protocol witness table for String;
    v28 = MEMORY[0x277D837D0];
  }

  *(inited + 384) = v26;
  *(inited + 392) = v27;
  *(inited + 408) = v28;
  *(inited + 416) = v29;
  *(inited + 424) = 0xD000000000000010;
  *(inited + 432) = 0x800000025F3172F0;
  v30 = MEMORY[0x277D839B0];
  *(inited + 464) = MEMORY[0x277D839B0];
  *(inited + 472) = &protocol witness table for Bool;
  *(inited + 440) = v38;
  *(inited + 480) = 0x65766974614E7369;
  *(inited + 488) = 0xE800000000000000;
  *(inited + 520) = v30;
  *(inited + 528) = &protocol witness table for Bool;
  *(inited + 496) = v39;
  *(inited + 536) = 0x707954726F727265;
  *(inited + 544) = 0xE900000000000065;
  *(inited + 576) = v10;
  *(inited + 584) = &protocol witness table for String;
  *(inited + 552) = 1717658988;
  *(inited + 560) = 0xE400000000000000;
  v31 = inited;
  sub_25F1E8C70(&v41, v40);

  v32 = sub_25F1B58D4(v31);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C88, &qword_25F308140);
  swift_arrayDestroy();
  v33 = sub_25F267FCC(v32);

  return v33;
}

uint64_t sub_25F1FF270@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v31 = &type metadata for RemoteHumanReadableError.Key;
  LOBYTE(v29) = 0;
  v5 = sub_25F1FF638(&v29, v4);
  if (v2)
  {

    return __swift_destroy_boxed_opaque_existential_1(&v29);
  }

  else
  {
    v7 = v5;
    v8 = v6;
    __swift_destroy_boxed_opaque_existential_1(&v29);
    if (v8)
    {
      if ((sub_25F30505C() & 1) == 0)
      {
        v29 = 0x5D65746F6D65525BLL;
        v30 = 0xE900000000000020;
        MEMORY[0x25F8D7130](v7, v8);

        v7 = v29;
        v8 = v30;
      }
    }

    else
    {
      v8 = 0x800000025F3181B0;
      v7 = 0xD000000000000016;
    }

    v31 = &type metadata for RemoteHumanReadableError.Key;
    v32 = &off_287160640;
    LOBYTE(v29) = 1;
    v9 = sub_25F1FF638(&v29, v4);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1(&v29);
    v31 = &type metadata for RemoteHumanReadableError.Key;
    v32 = &off_287160640;
    LOBYTE(v29) = 2;
    v25 = sub_25F1FF638(&v29, v4);
    v26 = v12;
    __swift_destroy_boxed_opaque_existential_1(&v29);
    v31 = &type metadata for RemoteHumanReadableError.Key;
    v32 = &off_287160640;
    LOBYTE(v29) = 3;
    v23 = sub_25F1FF638(&v29, v4);
    v24 = v13;
    __swift_destroy_boxed_opaque_existential_1(&v29);
    v31 = &type metadata for RemoteHumanReadableError.Key;
    v32 = &off_287160640;
    LOBYTE(v29) = 4;
    v21 = sub_25F1FF638(&v29, v4);
    v22 = v14;
    __swift_destroy_boxed_opaque_existential_1(&v29);
    v31 = &type metadata for RemoteHumanReadableError.Key;
    v32 = &off_287160640;
    LOBYTE(v29) = 5;
    sub_25F1FF740(&v29, v4, &v27);
    __swift_destroy_boxed_opaque_existential_1(&v29);
    v20 = v27;
    v19 = v28;
    v31 = &type metadata for RemoteHumanReadableError.Key;
    v32 = &off_287160640;
    LOBYTE(v29) = 6;
    sub_25F1FF844(&v29, v4, &v33);
    __swift_destroy_boxed_opaque_existential_1(&v29);
    v18 = v33;
    v31 = &type metadata for RemoteHumanReadableError.Key;
    v32 = &off_287160640;
    LOBYTE(v29) = 7;
    v17 = sub_25F1FF978(&v29, v4);
    __swift_destroy_boxed_opaque_existential_1(&v29);
    v31 = &type metadata for RemoteHumanReadableError.Key;
    v32 = &off_287160640;
    LOBYTE(v29) = 8;
    v15 = sub_25F1FF978(&v29, v4);

    result = __swift_destroy_boxed_opaque_existential_1(&v29);
    *a2 = v7;
    *(a2 + 8) = v8;
    *(a2 + 16) = v9;
    *(a2 + 24) = v11;
    *(a2 + 32) = v25;
    *(a2 + 40) = v26;
    *(a2 + 48) = v23;
    *(a2 + 56) = v24;
    *(a2 + 64) = v21;
    *(a2 + 72) = v22;
    *(a2 + 80) = v20;
    *(a2 + 88) = v19;
    *(a2 + 89) = v18;
    *(a2 + 90) = (v17 == 2) | v17 & 1;
    *(a2 + 91) = v15 & 1;
  }

  return result;
}

uint64_t sub_25F1FF638(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 8))(v5, v6);
  if (!*(a2 + 16))
  {

    return 0;
  }

  v9 = sub_25F219234(v7, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  sub_25F1B7118(*(a2 + 56) + 32 * v9, v15);
  sub_25F1B707C(v15, v16);
  v12 = sub_25F2012C8(v16, a1, a2);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  v14 = v12;
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v14;
}

uint64_t sub_25F1FF740@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 8))(v7, v8);
  if (!*(a2 + 16))
  {

    goto LABEL_6;
  }

  v11 = sub_25F219234(v9, v10);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_6:
    *a3 = 0;
    *(a3 + 8) = 1;
    return result;
  }

  sub_25F1B7118(*(a2 + 56) + 32 * v11, v15);
  sub_25F1B707C(v15, v16);
  sub_25F200F2C(v16, a1, a2, a3);
  result = __swift_destroy_boxed_opaque_existential_1(v16);
  if (!v3)
  {
    *(a3 + 8) = 0;
  }

  return result;
}

uint64_t sub_25F1FF844@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 8))(v7, v8);
  if (!*(a2 + 16))
  {

    goto LABEL_6;
  }

  v11 = sub_25F219234(v9, v10);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_6:
    *a3 = 2;
    return result;
  }

  sub_25F1B7118(*(a2 + 56) + 32 * v11, v19);
  sub_25F1B707C(v19, v20);
  v15 = sub_25F2012C8(v20, a1, a2);
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  v17 = v16;
  v18 = v15;

  sub_25F24DF30(v18, v17, a3);
  __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_25F1FF978(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 8))(v4, v5);
  if (*(a2 + 16))
  {
    v8 = sub_25F219234(v6, v7);
    v10 = v9;

    if (v10)
    {
      sub_25F1B7118(*(a2 + 56) + 32 * v8, v13);
      sub_25F1B707C(v13, v14);
      v11 = sub_25F200E34(v14, a1, a2);
      __swift_destroy_boxed_opaque_existential_1(v14);
      return v11 & 1;
    }
  }

  else
  {
  }

  return 2;
}

uint64_t sub_25F1FFA70()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_25F1FFAA0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_25F1FFAD0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

void sub_25F1FFB00(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
}

uint64_t sub_25F1FFB30@<X0>(void *a1@<X8>)
{
  v3 = v1[3];
  v8[2] = v1[2];
  v8[3] = v3;
  v9[0] = v1[4];
  *(v9 + 12) = *(v1 + 76);
  v4 = v1[1];
  v8[0] = *v1;
  v8[1] = v4;
  v5 = sub_25F1FEE3C(v8);
  result = sub_25F252514(v5, &v7);
  *a1 = v7;
  return result;
}

uint64_t sub_25F1FFBD8()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = sub_25F30685C();
  MEMORY[0x25F8D7130](v3);

  MEMORY[0x25F8D7130](8250, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30619C();
  return 0;
}

uint64_t sub_25F1FFC84()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_25F1F9B58();
}

void sub_25F1FFC94(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E50, &qword_25F3084A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F3081F0;
  v3 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_25F304E0C();
  v33 = inited + 32;
  *(inited + 40) = v4;
  v5 = *MEMORY[0x277CCA498];
  *(inited + 48) = sub_25F304E0C();
  *(inited + 56) = v6;
  v7 = *MEMORY[0x277CCA7E8];
  *(inited + 64) = sub_25F304E0C();
  *(inited + 72) = v8;
  v9 = [a1 domain];
  v10 = sub_25F304E0C();
  v12 = v11;

  *&v38 = v10;
  *(&v38 + 1) = v12;
  MEMORY[0x25F8D7130](10272, 0xE200000000000000);
  *&v35 = [a1 code];
  v13 = sub_25F3064DC();
  MEMORY[0x25F8D7130](v13);

  MEMORY[0x25F8D7130](14889, 0xE200000000000000);
  *&v39[5] = v38;
  v14 = [a1 userInfo];
  v15 = sub_25F304A6C();

  v16 = 0;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 64);
  v20 = (v17 + 63) >> 6;
  if (!v19)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v21 = v16;
LABEL_14:
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v25 = v24 | (v21 << 6);
      v26 = (*(v15 + 48) + 16 * v25);
      v28 = *v26;
      v27 = v26[1];
      sub_25F1B7118(*(v15 + 56) + 32 * v25, v34);
      *&v35 = v28;
      *(&v35 + 1) = v27;
      sub_25F1B707C(v34, &v36);

      v23 = v21;
LABEL_15:
      v38 = v35;
      *v39 = v36;
      *&v39[2] = v37;
      v29 = *(&v35 + 1);
      if (!*(&v35 + 1))
      {

        swift_setDeallocating();
        swift_arrayDestroy();
        return;
      }

      v30 = v38;
      v31 = sub_25F1B707C(v39, &v35);
      *&v34[0] = v30;
      *(&v34[0] + 1) = v29;
      MEMORY[0x28223BE20](v31);
      v32[2] = v34;
      if (sub_25F232C34(sub_25F1F8CB8, v32, inited))
      {
        break;
      }

      *&v34[0] = 0;
      *(&v34[0] + 1) = 0xE000000000000000;
      MEMORY[0x25F8D7130](4013322, 0xE300000000000000);
      MEMORY[0x25F8D7130](v30, v29);

      MEMORY[0x25F8D7130](8250, 0xE200000000000000);
      sub_25F30619C();
      MEMORY[0x25F8D7130](*&v34[0], *(&v34[0] + 1));

      __swift_destroy_boxed_opaque_existential_1(&v35);
      v16 = v23;
      if (!v19)
      {
        goto LABEL_7;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v35);

    v16 = v23;
  }

  while (v19);
LABEL_7:
  if (v20 <= v16 + 1)
  {
    v22 = v16 + 1;
  }

  else
  {
    v22 = v20;
  }

  v23 = v22 - 1;
  while (1)
  {
    v21 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v21 >= v20)
    {
      v19 = 0;
      v37 = 0u;
      v36 = 0u;
      v35 = 0u;
      goto LABEL_15;
    }

    v19 = *(v15 + 64 + 8 * v21);
    ++v16;
    if (v19)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_25F2000A4(void *a1)
{
  v2 = [a1 domain];
  v3 = sub_25F304E0C();
  v5 = v4;

  MEMORY[0x25F8D7130](v3, v5);

  MEMORY[0x25F8D7130](46, 0xE100000000000000);
  [a1 code];
  v6 = sub_25F3064DC();
  MEMORY[0x25F8D7130](v6);

  return 0x2E726F727245534ELL;
}

uint64_t sub_25F200180()
{
  v1 = [*v0 localizedDescription];
  v2 = sub_25F304E0C();

  return v2;
}

uint64_t sub_25F2001D8()
{
  v1 = [*v0 localizedRecoverySuggestion];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_25F304E0C();

  return v3;
}

uint64_t sub_25F200258@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 userInfo];
  v4 = sub_25F304A6C();

  if (*(v4 + 16) && (v5 = sub_25F219234(0xD000000000000014, 0x800000025F3180B0), (v6 & 1) != 0))
  {
    sub_25F1B7118(*(v4 + 56) + 32 * v5, v10);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54870, &unk_25F30BAF8);
    result = swift_dynamicCast();
    if (result)
    {
      unarchiveHumanReadableError(from:)(&v12, v10);

      v8 = v10[1];
      v9 = v11;
      *a2 = v10[0];
      *(a2 + 16) = v8;
      *(a2 + 32) = v9;
      return result;
    }
  }

  else
  {
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t Error.errorTypeDescription.getter(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = *(v3 + 16);
  v6(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52D98, &unk_25F3083E0);
  if (swift_dynamicCast())
  {
    v7 = *(&v14 + 1);
    v8 = v15;
    __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
    v9 = (*(v8 + 88))(v7, v8);
  }

  else
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    sub_25F1AF698(&v13, &qword_27FD54840, &unk_25F30BAD8);
    *(&v14 + 1) = a1;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13);
    v6(boxed_opaque_existential_1, v1, a1);
    __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
    swift_getDynamicType();
    v9 = sub_25F30685C();
  }

  v11 = v9;
  __swift_destroy_boxed_opaque_existential_1(&v13);
  return v11;
}

PreviewsFoundationOS::UnhandledUnknownCaseError __swiftcall UnhandledUnknownCaseError.init()()
{
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t UnhandledUnknownCaseError.additionalInfo.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t UnhandledUnknownCaseError.additionalInfo.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UnhandledUnknownCaseError.additionalDiagnostics.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t UnhandledUnknownCaseError.additionalDiagnostics.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_25F2007D8(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v10[3] = a1;
  v7 = swift_allocObject();
  v10[0] = v7;
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v6;
  v7[5] = v5;
  __swift_project_boxed_opaque_existential_1(v10, a1);
  swift_getDynamicType();

  v8 = sub_25F30685C();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v8;
}

uint64_t LowValueError.lowValueTitle.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t LowValueError.additionalInfo.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t LowValueError.additionalInfo.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t LowValueError.additionalDiagnostics.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t LowValueError.additionalDiagnostics.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void __swiftcall LowValueError.init(_:isPotentialCrash:)(PreviewsFoundationOS::LowValueError *__return_ptr retstr, Swift::String _, Swift::Bool_optional isPotentialCrash)
{
  retstr->additionalInfo = 0u;
  retstr->additionalDiagnostics = 0u;
  retstr->title = _;
  retstr->potentialCrash = isPotentialCrash;
}

uint64_t sub_25F200A64(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v9 = *(v1 + 48);
  v13[3] = a1;
  v10 = swift_allocObject();
  v13[0] = v10;
  *(v10 + 16) = v4;
  *(v10 + 24) = v3;
  *(v10 + 32) = v6;
  *(v10 + 40) = v5;
  *(v10 + 48) = v8;
  *(v10 + 56) = v7;
  *(v10 + 64) = v9;
  __swift_project_boxed_opaque_existential_1(v13, a1);
  swift_getDynamicType();

  v11 = sub_25F30685C();
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v11;
}

uint64_t sub_25F200B50@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 48);
  return sub_25F1FAF60(a1);
}

uint64_t sub_25F200B94(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v10[3] = a1;
  v7 = swift_allocObject();
  v10[0] = v7;
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v6;
  v7[5] = v5;
  __swift_project_boxed_opaque_existential_1(v10, a1);
  swift_getDynamicType();

  v8 = sub_25F30685C();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v8;
}

uint64_t sub_25F200C60(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v10[3] = a1;
  v7 = swift_allocObject();
  v10[0] = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  __swift_project_boxed_opaque_existential_1(v10, a1);
  swift_getDynamicType();
  sub_25F2024A8(v3, v4, v5, v6);
  v8 = sub_25F30685C();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v8;
}

uint64_t sub_25F200D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25F1B7118(a1, v10);
  v6 = MEMORY[0x277D85048];
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    sub_25F202604();
    swift_allocError();
    v9 = v8;
    *v8 = a3;
    sub_25F1BF03C(a2, (v8 + 1));
    sub_25F1B7118(a1, (v9 + 6));
    v9[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54958, &qword_25F30C4C8);
    v9[10] = v6;
    *(v9 + 112) = 1;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_25F200E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25F1B7118(a1, v12);
  v6 = MEMORY[0x277D839B0];
  if (swift_dynamicCast())
  {
    v7 = v11;
  }

  else
  {
    sub_25F202604();
    swift_allocError();
    v9 = v8;
    *v8 = a3;
    sub_25F1BF03C(a2, (v8 + 1));
    sub_25F1B7118(a1, (v9 + 6));
    v9[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54960, &qword_25F30C4D0);
    v9[10] = v6;
    *(v9 + 112) = 1;
    swift_willThrow();
  }

  return v7 & 1;
}

uint64_t sub_25F200F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_25F1B7118(a1, v13);
  v8 = MEMORY[0x277D83B88];
  result = swift_dynamicCast();
  if (result)
  {
    *a4 = v12;
  }

  else
  {
    sub_25F202604();
    swift_allocError();
    v11 = v10;
    *v10 = a3;
    sub_25F1BF03C(a2, (v10 + 1));
    sub_25F1B7118(a1, (v11 + 6));
    v11[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54968, &qword_25F30C4D8);
    v11[10] = v8;
    *(v11 + 112) = 1;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_25F201028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_25F1BF03C(a2, v21);
  sub_25F1B7118(a1, v20);
  sub_25F1B7118(v20, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54870, &unk_25F30BAF8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v20);
    result = __swift_destroy_boxed_opaque_existential_1(v21);
    *a4 = v19[0];
  }

  else
  {
    v19[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54970, &unk_25F30C4E0);
    v19[0] = &type metadata for PropertyList;
    *&v15[0] = a3;
    sub_25F1BF03C(v21, v15 + 8);
    sub_25F1B7118(v20, v16);
    sub_25F1B7118(v19, v17);
    v18 = 2;
    sub_25F202604();
    swift_allocError();
    v8 = v16[0];
    v10 = v15[0];
    v9 = v15[1];
    *(v11 + 32) = v15[2];
    *(v11 + 48) = v8;
    *v11 = v10;
    *(v11 + 16) = v9;
    v13 = v17[0];
    v12 = v17[1];
    v14 = v16[1];
    *(v11 + 112) = v18;
    *(v11 + 80) = v13;
    *(v11 + 96) = v12;
    *(v11 + 64) = v14;

    __swift_destroy_boxed_opaque_existential_1(v19);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v20);
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  return result;
}

uint64_t sub_25F2011B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  sub_25F1B7118(a1, v13);
  v8 = MEMORY[0x277CC9318];
  result = swift_dynamicCast();
  if (result)
  {
    *a4 = v12;
  }

  else
  {
    sub_25F1D4B9C(0, 0xF000000000000000);
    sub_25F202604();
    swift_allocError();
    v11 = v10;
    *v10 = a3;
    sub_25F1BF03C(a2, (v10 + 1));
    sub_25F1B7118(a1, (v11 + 6));
    v11[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54948, &qword_25F30C4B8);
    v11[10] = v8;
    *(v11 + 112) = 1;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_25F2012C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25F1B7118(a1, v11);
  v6 = MEMORY[0x277D837D0];
  if (swift_dynamicCast())
  {
    return v10;
  }

  sub_25F202604();
  swift_allocError();
  v9 = v8;
  *v8 = a3;
  sub_25F1BF03C(a2, (v8 + 1));
  sub_25F1B7118(a1, (v9 + 6));
  v9[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54950, &qword_25F30C4C0);
  v9[10] = v6;
  *(v9 + 112) = 1;
  swift_willThrow();
}

uint64_t sub_25F2013BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_25F1BD028(0, v1, 0);
    v3 = a1;
    v4 = v10;
    v5 = *(v10 + 16);
    v6 = 32;
    do
    {
      v7 = *(v3 + v6);
      v8 = *(v10 + 24);
      if (v5 >= v8 >> 1)
      {
        sub_25F1BD028((v8 > 1), v5 + 1, 1);
        v3 = a1;
      }

      *(v10 + 16) = v5 + 1;
      *(v10 + 4 * v5 + 32) = v7;
      v6 += 4;
      ++v5;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t sub_25F2014C0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v6[3] = a1;
  v6[0] = v2;
  v6[1] = v3;
  __swift_project_boxed_opaque_existential_1(v6, a1);
  swift_getDynamicType();

  v4 = sub_25F30685C();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

uint64_t sub_25F20154C(uint64_t a1)
{
  v2 = *v1;
  v5[3] = a1;
  v5[0] = v2;
  __swift_project_boxed_opaque_existential_1(v5, a1);
  swift_getDynamicType();

  v3 = sub_25F30685C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

unint64_t sub_25F2015E0()
{
  result = qword_27FD54848;
  if (!qword_27FD54848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54848);
  }

  return result;
}

unint64_t sub_25F201634()
{
  result = qword_27FD54850;
  if (!qword_27FD54850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54850);
  }

  return result;
}

unint64_t sub_25F201688()
{
  result = qword_27FD54858;
  if (!qword_27FD54858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54858);
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x25F8D9510);
  }

  return result;
}

unint64_t sub_25F20175C()
{
  result = qword_27FD54878;
  if (!qword_27FD54878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54878);
  }

  return result;
}

unint64_t sub_25F2017B4()
{
  result = qword_27FD54880;
  if (!qword_27FD54880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54880);
  }

  return result;
}

unint64_t sub_25F201818()
{
  result = qword_27FD54888;
  if (!qword_27FD54888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54888);
  }

  return result;
}

unint64_t sub_25F201870()
{
  result = qword_27FD54890;
  if (!qword_27FD54890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54890);
  }

  return result;
}

unint64_t sub_25F2018D4()
{
  result = qword_27FD54898;
  if (!qword_27FD54898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54898);
  }

  return result;
}

unint64_t sub_25F20192C()
{
  result = qword_27FD548A0;
  if (!qword_27FD548A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD548A0);
  }

  return result;
}

unint64_t sub_25F2019AC()
{
  result = qword_27FD548A8;
  if (!qword_27FD548A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD548A8);
  }

  return result;
}

unint64_t sub_25F201A00()
{
  result = qword_27FD548B0;
  if (!qword_27FD548B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD548B0);
  }

  return result;
}

unint64_t sub_25F201A58()
{
  result = qword_27FD548B8;
  if (!qword_27FD548B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD548B8);
  }

  return result;
}

unint64_t sub_25F201AD8()
{
  result = qword_27FD548C0;
  if (!qword_27FD548C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD548C0);
  }

  return result;
}

unint64_t sub_25F201B2C()
{
  result = qword_27FD548C8;
  if (!qword_27FD548C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD548C8);
  }

  return result;
}

unint64_t sub_25F201B84()
{
  result = qword_27FD548D0;
  if (!qword_27FD548D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD548D0);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_25F201D3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_25F201D84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_25F201E10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_25F201E58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy92_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_25F201EF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 92))
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

uint64_t sub_25F201F38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 92) = 1;
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

    *(result + 92) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25F201FA4()
{
  result = qword_27FD548D8;
  if (!qword_27FD548D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD548D8);
  }

  return result;
}

unint64_t sub_25F202008()
{
  result = qword_27FD548E0;
  if (!qword_27FD548E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD548E0);
  }

  return result;
}

unint64_t sub_25F202060()
{
  result = qword_27FD548E8;
  if (!qword_27FD548E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD548E8);
  }

  return result;
}

unint64_t sub_25F2020B8()
{
  result = qword_27FD548F0;
  if (!qword_27FD548F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD548F0);
  }

  return result;
}

unint64_t sub_25F202138()
{
  result = qword_27FD548F8;
  if (!qword_27FD548F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD548F8);
  }

  return result;
}

unint64_t sub_25F20218C()
{
  result = qword_27FD54900;
  if (!qword_27FD54900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54900);
  }

  return result;
}

unint64_t sub_25F20220C()
{
  result = qword_27FD54908;
  if (!qword_27FD54908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54908);
  }

  return result;
}

unint64_t sub_25F202260()
{
  result = qword_27FD54910;
  if (!qword_27FD54910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54910);
  }

  return result;
}

unint64_t sub_25F2022E0()
{
  result = qword_27FD54918;
  if (!qword_27FD54918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54918);
  }

  return result;
}

unint64_t sub_25F202334()
{
  result = qword_27FD54920;
  if (!qword_27FD54920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54920);
  }

  return result;
}

uint64_t sub_25F2023B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25F2023F0()
{
  result = qword_27FD54928;
  if (!qword_27FD54928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54928);
  }

  return result;
}

unint64_t sub_25F202444()
{
  result = qword_27FD54930;
  if (!qword_27FD54930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54930);
  }

  return result;
}

uint64_t sub_25F202498(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_25F2024A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_25F2024F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52D50, &qword_25F3085B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_43Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_25F2025A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CrashReportError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25F202604()
{
  result = qword_27FD54940;
  if (!qword_27FD54940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54940);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteHumanReadableError.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RemoteHumanReadableError.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25F2027D8()
{
  result = qword_27FD54980;
  if (!qword_27FD54980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54980);
  }

  return result;
}

unint64_t sub_25F202830()
{
  result = qword_27FD54988;
  if (!qword_27FD54988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54988);
  }

  return result;
}

unint64_t sub_25F202888()
{
  result = qword_27FD54990;
  if (!qword_27FD54990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54990);
  }

  return result;
}

uint64_t sub_25F2028DC()
{
  v0 = sub_25F3063BC();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25F202928()
{
  result = qword_27FD54998;
  if (!qword_27FD54998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54998);
  }

  return result;
}

double static ExecutionLane.main.getter@<D0>(_OWORD *a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_25F3077E0;
  return result;
}

uint64_t static ExecutionLane.queue(label:qos:attributes:target:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v29 = a2;
  v30 = a5;
  v27 = a3;
  v28 = a4;
  v31 = a1;
  v32 = a6;
  v6 = sub_25F305A9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25F305A4C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25F30494C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F1F54F4();
  (*(v17 + 16))(v20, v27, v16);
  (*(v12 + 16))(v15, v28, v11);
  (*(v7 + 104))(v10, *MEMORY[0x277D85260], v6);
  v21 = v30;

  v22 = sub_25F305ACC();
  if (qword_27FD52798 != -1)
  {
    swift_once();
  }

  v23 = off_27FD559A0;
  os_unfair_lock_lock(off_27FD559A0 + 6);
  v24 = *(v23 + 2);
  *(v23 + 2) = v24 + 1;
  os_unfair_lock_unlock(v23 + 6);
  if (qword_27FD52770 != -1)
  {
    swift_once();
  }

  v33 = v24;
  v34 = 0;
  result = sub_25F305A7C();
  v26 = v32;
  *v32 = v22;
  v26[1] = v24;
  return result;
}

uint64_t ExecutionLane.execute(_:)(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = ExecutionLane.isCurrentLane.getter();
  if (v7)
  {
    return (a1)(v7, v8);
  }

  else
  {
    return sub_25F202E08(a1, a2);
  }
}

uint64_t ExecutionLane.isCurrentLane.getter()
{
  if (!*v0)
  {
    return 1;
  }

  if (*v0 == 1)
  {
    return [objc_opt_self() isMainThread];
  }

  v2 = v0[1];
  sub_25F1F54F4();
  if (qword_27FD52770 != -1)
  {
    swift_once();
  }

  sub_25F305A6C();
  return (v2 == v3) & ~v4;
}

uint64_t sub_25F202E08(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = sub_25F30490C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F30494C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v2;
  if (!*v2)
  {
    return a1(v13);
  }

  v22[0] = v13;
  if (v16 == 1)
  {
    sub_25F1F54F4();
    v17 = sub_25F305AAC();
    v27 = a1;
    v28 = a2;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = sub_25F1D8C38;
    v26 = &block_descriptor_9;
    v18 = _Block_copy(&aBlock);

    sub_25F30492C();
    aBlock = MEMORY[0x277D84F90];
    sub_25F1D9034();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
    sub_25F1D908C();
    sub_25F305E5C();
    MEMORY[0x25F8D7C70](0, v15, v9, v18);
    _Block_release(v18);

    (*(v6 + 8))(v9, v5);
    return (*(v11 + 8))(v15, v22[0]);
  }

  else
  {
    v20 = *(v2 + 8);
    v27 = a1;
    v28 = a2;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = sub_25F1D8C38;
    v26 = &block_descriptor_3;
    v21 = _Block_copy(&aBlock);

    sub_25F2033CC(v16);
    sub_25F30492C();
    v22[1] = MEMORY[0x277D84F90];
    sub_25F1D9034();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
    sub_25F1D908C();
    sub_25F305E5C();
    MEMORY[0x25F8D7C70](0, v15, v9, v21);
    _Block_release(v21);
    sub_25F2033DC(v16);
    (*(v6 + 8))(v9, v5);
    (*(v11 + 8))(v15, v22[0]);
  }
}

uint64_t sub_25F2031B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD549A8, &qword_25F30C7D8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_25F3048FC();
  qword_27FD549A0 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_20PreviewsFoundationOS13ExecutionLaneV0E033_D866D51B8C459CAD90E6009209CB15C7LLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25F20321C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25F203278(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = a2 - 2147483646;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_25F2032D4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F203328(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_25F203384(void *result, int a2)
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

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_25F2033CC(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_25F2033DC(id a1)
{
  if (a1 >= 2)
  {
  }
}

unint64_t sub_25F203400()
{
  result = qword_27FD549B0[0];
  if (!qword_27FD549B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD549B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnalyticsHints(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_25F203578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(*(a3 + a4 - 8) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v10 - v5;
  (*(v7 + 16))(&v10 - v5);
  v8 = type metadata accessor for UncheckedSendable();
  return UncheckedSendable.wrappedValue.setter(v6, v8);
}

void (*UncheckedSendable.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v8 = *(a2 + 16);
  v6[1] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v6[2] = v9;
  v6[3] = v9;
  v11 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v7[5] = v12;
  (*(v10 + 16))();
  return sub_25F2037AC;
}

void sub_25F2037AC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))(*(*a1 + 32), v4, v7);
    (*(v5 + 40))(v8, v3, v7);
    (*(v6 + 8))(v4, v7);
  }

  else
  {
    v9 = v2[1];
    (*(v2[2] + 40))(*v2, v4);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t CGFloat.init(_:)(uint64_t a1, uint64_t a2)
{
  sub_25F2039A8(a1, a2);

  return 0;
}

uint64_t sub_25F20393C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = sub_25F2039A8(a1, a2);

  *a3 = 0;
  *(a3 + 8) = !v4;
  return result;
}

BOOL sub_25F2039A8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_25F305F6C();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

unint64_t sub_25F203AA4()
{
  result = qword_27FD54A38;
  if (!qword_27FD54A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54A38);
  }

  return result;
}

_BYTE *sub_25F203AF8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t OSAllocatedUnfairLock.init(value:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F203E0C();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

void OSAllocatedUnfairLock.syncRead<A>(callsite:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*a4 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*a4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a4 + v6));
  sub_25F203E10();
  os_unfair_lock_unlock((a4 + v6));
}

void OSAllocatedUnfairLock.syncWrite<A>(callsite:_:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(*a4 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*a4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a4 + v7));
  a2(a4 + v6);
  os_unfair_lock_unlock((a4 + v7));
}

uint64_t sub_25F203D90()
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_25F30604C();
  return sub_25F30603C();
}

uint64_t sub_25F203E10()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_25F203E38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x277D841D0]) - 8) + 16))(a2, v3);
}

id sub_25F203ED0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  result = sub_25F2B3AE4(0xD000000000000010, 0x800000025F3182B0, 16);
  qword_27FD54A40 = result;
  return result;
}

id sub_25F203F88()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  result = sub_25F2B3AE4(0x203A5C726F727265, 0xED000024292A2E28, 16);
  qword_27FD54A48 = result;
  return result;
}

uint64_t sub_25F204090(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v4 = *a4;
    if (!*a4)
    {
      return 0;
    }
  }

  else
  {
    swift_once();
    v4 = *a4;
    if (!*a4)
    {
      return 0;
    }
  }

  v5 = v4;
  v6 = sub_25F304DDC();
  v7 = [v5 firstMatchInString:v6 options:0 range:{0, sub_25F304F2C()}];

  if (v7)
  {
    v8 = [v7 rangeAtIndex_];
    v10 = v9;

    v11 = sub_25F304DDC();
    v12 = [v11 substringWithRange_];

    sub_25F304E0C();
    v13 = sub_25F3050BC();

    return v13;
  }

  return 0;
}

Swift::Void __swiftcall NSRunLoop.spin(count:)(Swift::Int count)
{
  v2 = v1;
  v4 = sub_25F30462C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = count - 1;
  if (count >= 1)
  {
    v10 = *MEMORY[0x277CBE640];
    v11 = (v6 + 8);
    do
    {
      sub_25F3045EC();
      v12 = sub_25F3045BC();
      (*v11)(v8, v4);
      v13 = [v2 runMode:v10 beforeDate:v12];

      v15 = v9-- != 0;
    }

    while (v13 && v15);
  }
}

uint64_t NSRunLoop.spin(timeout:until:)(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54A50, &unk_25F30C9B8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v25 - v7;
  v9 = sub_25F30462C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  if (a2)
  {
    (*(v10 + 56))(v8, 1, 1, v9);
    sub_25F30459C();
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_25F204624(v8);
    }
  }

  else
  {
    sub_25F30461C();
    sub_25F3045AC();
    (*(v10 + 8))(v14, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    (*(v10 + 32))(v16, v8, v9);
  }

  v17 = objc_opt_self();
  v18 = *MEMORY[0x277CBE640];
  v19 = (v10 + 8);
  do
  {
    v20 = [v17 currentRunLoop];
    v21 = sub_25F3045BC();
    v22 = [v20 runMode:v18 beforeDate:v21];

    if (!v22)
    {
      break;
    }

    if (v25())
    {
      break;
    }

    sub_25F30461C();
    v23 = sub_25F3045CC();
    (*v19)(v14, v9);
  }

  while ((v23 & 1) == 0);
  return (*v19)(v16, v9);
}

uint64_t sub_25F204624(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54A50, &unk_25F30C9B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Unreachable.init(_:diagnostics:callsite:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, void *a6@<X8>)
{
  v6 = a5[1];
  v8[0] = *a5;
  v8[1] = v6;
  v9[0] = a5[2];
  *(v9 + 9) = *(a5 + 41);
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  return sub_25F213F98(v8);
}

uint64_t Unreachable.message.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Unreachable.additionalDiagnostics.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Unreachable.additionalInfo.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static Result.unreachable(_:callsite:)@<X0>(uint64_t (*a1)(void, uint64_t, _OWORD *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v10 = a3[1];
  v17[0] = *a3;
  v17[1] = v10;
  v18[0] = a3[2];
  *(v18 + 9) = *(a3 + 41);
  v11 = a1(a1, a2, a3, a4, a5, a6, a7, a8);
  v13 = v12;
  sub_25F1C172C();
  v14 = swift_allocError();
  *v15 = v11;
  v15[1] = v13;
  v15[2] = 0;
  v15[3] = 0;
  sub_25F213F98(v17);
  *a9 = v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30678C();

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_25F204884(uint64_t a1)
{
  *(a1 + 8) = sub_25F2048B4();
  result = sub_25F204908();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25F2048B4()
{
  result = qword_27FD54A58;
  if (!qword_27FD54A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD54A58);
  }

  return result;
}

unint64_t sub_25F204908()
{
  result = qword_27FD54A60[0];
  if (!qword_27FD54A60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD54A60);
  }

  return result;
}

uint64_t CountedSet.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = MEMORY[0x277D83B88];
  swift_getTupleTypeMetadata2();
  v7 = sub_25F3052DC();
  v8 = sub_25F1CCBBC(v7, a1, v6, a2);

  *a3 = v8;
  return result;
}

uint64_t CountedSet.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83B88];
  swift_getTupleTypeMetadata2();
  v12 = sub_25F3052DC();
  v13 = sub_25F1CCBBC(v12, a2, v11, a3);

  v22 = v13;
  if (sub_25F30531C())
  {
    v19 = v9;
    v20 = a4;
    v14 = 0;
    while (1)
    {
      v15 = sub_25F3052FC();
      sub_25F30528C();
      if (v15)
      {
        (*(v8 + 16))(v10, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14, a2);
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_25F30601C();
        if (v19 != 8)
        {
          __break(1u);
          return result;
        }

        v21 = result;
        (*(v8 + 16))(v10, &v21, a2);
        swift_unknownObjectRelease();
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_10:
          __break(1u);
LABEL_11:

          v13 = v22;
          a4 = v20;
          goto LABEL_13;
        }
      }

      v17 = type metadata accessor for CountedSet();
      CountedSet.insert(_:)(v10, v17);
      (*(v8 + 8))(v10, a2);
      ++v14;
      if (v16 == sub_25F30531C())
      {
        goto LABEL_11;
      }
    }
  }

LABEL_13:
  *a4 = v13;
  return result;
}

uint64_t CountedSet.insert(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v11 = *(v10 + 24);
  sub_25F304B8C();
  if (v15)
  {
    v12 = 0;
  }

  else
  {
    v12 = v14;
  }

  result = (*(v5 + 16))(v8, a1, v4);
  if (__OFADD__(v12, 1))
  {
    __break(1u);
  }

  else
  {
    v14 = v12 + 1;
    v15 = 0;
    sub_25F304B4C();
    return sub_25F304B9C();
  }

  return result;
}

uint64_t CountedSet.remove(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v11 = *(v10 + 24);
  sub_25F304B8C();
  v12 = v15;
  v13 = v16;
  (*(v5 + 16))(v8, a1, v4);
  if ((v13 & 1) != 0 || v12 < 2)
  {
    v15 = 0;
    v16 = 1;
  }

  else
  {
    v15 = v12 - 1;
    v16 = 0;
  }

  sub_25F304B4C();
  return sub_25F304B9C();
}

uint64_t CountedSet.count(of:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_25F304B8C();
  if (v8)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t CountedSet.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_25F304B8C();
  return (v7 > 0) & ~v8;
}

uint64_t CountedSet.totalCount.getter(uint64_t a1)
{
  v5 = *v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_25F304B4C();

  swift_getWitnessTable();
  sub_25F30519C();

  return v6;
}

uint64_t static CountedSet.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_25F304B6C();
}

uint64_t CountedSet.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  return sub_25F304B5C();
}

uint64_t CountedSet.hashValue.getter(uint64_t a1)
{
  v3 = *v1;
  sub_25F30671C();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  sub_25F304B5C();
  return sub_25F30676C();
}

uint64_t sub_25F2050CC(uint64_t a1, uint64_t a2)
{
  sub_25F30671C();
  CountedSet.hash(into:)(v4, a2);
  return sub_25F30676C();
}

uint64_t sub_25F20511C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return static CountedSet.== infix(_:_:)(a1, a2);
}

uint64_t sub_25F205140@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *a1;
  result = swift_getTupleTypeMetadata2();
  v9 = *(a2 + *(result + 48));
  v10 = __OFADD__(v7, v9);
  v11 = v7 + v9;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *a3 = v11;
  }

  return result;
}

uint64_t sub_25F2051CC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F205208(void *a1, uint64_t a2, void (*a3)(__int128 *), uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = *(v4 + 88);
  sub_25F2033CC(a1);

  os_unfair_lock_lock(v10 + 25);
  sub_25F209764(&v10[4], &v18);
  os_unfair_lock_unlock(v10 + 25);
  *&v17[10] = *(v20 + 10);
  v16[0] = v18;
  v16[1] = v19;
  *v17 = v20[0];
  if (BYTE9(v20[1]) == 255)
  {
  }

  else
  {
    v21[0] = v18;
    v21[1] = v19;
    v22[0] = v20[0];
    *(v22 + 10) = *(v20 + 10);
    v13 = v18;
    v14 = v19;
    v15[0] = v20[0];
    *(v15 + 10) = *(v20 + 10);
    sub_25F1B7174(&v13, v12, qword_27FD54C30, &qword_25F314C70);
    sub_25F27630C(v21, a1, a2, a3, a4);

    sub_25F1AF698(v16, &qword_27FD54C28, &unk_25F30CD20);
  }

  v13 = v18;
  v14 = v19;
  v15[0] = v20[0];
  *(v15 + 10) = *(v20 + 10);
  return sub_25F1AF698(&v13, &qword_27FD54C28, &unk_25F30CD20);
}

uint64_t sub_25F2053B8@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  if (a1 >> 62)
  {
    result = sub_25F30631C();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    result = sub_25F208CE4(0);
    *a2 = 0;
    a2[1] = 0;
    return result;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x25F8D81E0](0, a1);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(a1 + 32);

LABEL_6:
    *a2 = a1;
    a2[1] = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t Sequence.traverse<A>(callsite:andAccumulateErrors:_:)(__int128 *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  v9[0] = a1[2];
  *(v9 + 9) = *(a1 + 41);
  return sub_25F2056B0(v8, a2, a3, a4, a5, a6);
}

uint64_t sub_25F205490(_OWORD *a1, char a2, unint64_t a3)
{

  sub_25F2053B8(a3, v11);
  v7 = v11[0];
  v6 = v11[1];
  if (v11[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54BF0, &qword_25F30CCF0);
    v8 = swift_allocObject();

    return sub_25F205D50(a1, (a2 & 1), v7, v6, v8);
  }

  else
  {
    sub_25F208CE4(0);
    *&v12[0] = MEMORY[0x277D84F90];
    v13 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54BE8, &qword_25F30CCE8);
    swift_allocObject();
    v10 = sub_25F1C0374(a1);

    sub_25F1C0C90(v12);

    return v10;
  }
}

uint64_t sub_25F2055A0(_OWORD *a1, char a2, unint64_t a3)
{

  sub_25F2053B8(a3, v11);
  v7 = v11[0];
  v6 = v11[1];
  if (v11[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54C18, &qword_25F30CD10);
    v8 = swift_allocObject();

    return sub_25F2064B8(a1, (a2 & 1), v7, v6, v8);
  }

  else
  {
    sub_25F208CE4(0);
    *&v12[0] = MEMORY[0x277D84F90];
    v13 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54C10, &qword_25F30CD08);
    swift_allocObject();
    v10 = sub_25F1C063C(a1);

    sub_25F1C0FD0(v12);

    return v10;
  }
}

uint64_t sub_25F2056B0(__int128 *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a6;
  v31 = a4;
  v30 = a3;
  v29 = a2;
  v8 = *(a5 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v12;
  v13 = type metadata accessor for Inhabited();
  v14 = sub_25F305C1C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v28 - v18;
  v20 = *(v13 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  v23 = &v28 - v22;
  v24 = a1[1];
  v39 = *a1;
  v40 = v24;
  v41[0] = a1[2];
  *(v41 + 9) = *(a1 + 41);
  (*(v8 + 16))(v11, v32, a5);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.init(_:)(v11, v13, WitnessTable, v19);
  if ((*(v20 + 48))(v19, 1, v13) == 1)
  {
    (*(v15 + 8))(v19, v14);
    sub_25F30539C();
    type metadata accessor for Future();
    v36 = v39;
    v37 = v40;
    v38[0] = v41[0];
    *(v38 + 9) = *(v41 + 9);
    v34 = sub_25F3052DC();
    v35 = 0;
    v26 = sub_25F1BF710(&v36, &v34);
  }

  else
  {
    (*(v20 + 32))(v23, v19, v13);
    type metadata accessor for TraverseFuture();
    v36 = v39;
    v37 = v40;
    v38[0] = v41[0];
    *(v38 + 9) = *(v41 + 9);
    swift_allocObject();
    v26 = sub_25F208D54(&v36, v29 & 1, v23, v30, v31);
    (*(v20 + 8))(v23, v13);
  }

  return v26;
}

uint64_t Sequence.invert<A>(callsite:andAccumulateErrors:)(__int128 *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  v9[0] = a1[2];
  *(v9 + 9) = *(a1 + 41);
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a5;
  return sub_25F2056B0(v8, a2, sub_25F208D24, v7, a3, a4);
}

uint64_t static Future.inverting<A>(dsoHandle:file:line:column:function:accumulateErrors:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = *(v13 + 80);
  *&v17 = a2;
  *(&v17 + 1) = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v16[2] = a12;
  v16[3] = v14;
  v16[4] = a13;
  return sub_25F2056B0(&v17, a10, sub_25F208D24, v16, a12, v14);
}

uint64_t static Future.inverting(dsoHandle:file:line:column:function:accumulateErrors:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, unsigned __int8 a10)
{
  v17 = *(v10 + 80);
  type metadata accessor for Future();
  *&v24 = a2;
  *(&v24 + 1) = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = a8;
  v30 = a9;
  v21 = sub_25F30539C();
  v22 = v17;
  WitnessTable = swift_getWitnessTable();
  return sub_25F2056B0(&v24, a10, sub_25F208D24, v20, v21, v17);
}

uint64_t sub_25F205C80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *a1;
  *a3 = a1;
  v6 = *(v5 + 80);
  v7 = *(type metadata accessor for TraverseFuture.Activity.Fiber() + 44);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30678C();
  v8 = sub_25F305C1C();
  v9 = *(*(v8 - 8) + 32);

  return v9(&a3[v7], a2, v8);
}

uint64_t sub_25F205D50(_OWORD *a1, os_unfair_lock_s *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{

  v9 = sub_25F206D34(a3);
  v52 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54BF8, &qword_25F30CCF8);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = v9;
  *(a5 + 104) = v10;
  *(a5 + 112) = a2;

  v11 = sub_25F1C0374(a1);
  v12 = v11;
  v47 = v9;
  v13 = v9[2];
  if (!v13)
  {
LABEL_31:

    return v12;
  }

  v14 = 0;
  v45 = v9[2];
  v46 = v47 + 4;
  v53 = v11;
  while (v14 < v47[2])
  {
    v15 = &v46[5 * v14];
    v17 = v15[2];
    v16 = v15[3];
    v18 = *v15;
    v19 = v15[1];
    v20 = *(v15 + 32);

    sub_25F208938(v19, v17, v16, v20);
    sub_25F208960(v19, v17, v16, v20);
    v21 = swift_allocObject();
    *(v21 + 16) = v12;
    *(v21 + 24) = v14;
    a3 = swift_allocObject();
    v51 = &v44;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = sub_25F208988;
    *(a3 + 40) = v21;
    v59 = v18;
    a2 = *(v18 + 88);
    v22 = MEMORY[0x28223BE20](a3);
    *(&v44 - 2) = sub_25F2089C0;
    *(&v44 - 1) = v22;
    swift_retain_n();
    swift_retain_n();
    os_unfair_lock_lock(a2 + 25);
    v23 = v52;
    sub_25F2089D8(&a2[4], &v73);
    if (v23)
    {
      goto LABEL_34;
    }

    os_unfair_lock_unlock(a2 + 25);
    *(v72 + 10) = *(v75 + 10);
    v70 = v73;
    v71 = v74;
    v72[0] = v75[0];
    v24 = BYTE9(v75[1]);
    if (BYTE9(v75[1]) != 255)
    {
      v48 = v14;
      v25 = v70;
      if (BYTE9(v75[1]))
      {
        if (BYTE9(v75[1]) == 1)
        {
          v67 = v73;
          v68 = v74;
          v69[0] = v75[0];
          *(v69 + 10) = *(v75 + 10);
          sub_25F1B7174(&v67, &v65, &qword_27FD54C08, &unk_25F314C50);
          v26 = v25;
          v27 = 0;
          v28 = 0;
          goto LABEL_13;
        }
      }

      else
      {
        v27 = *(&v70 + 1);
        v28 = v71;
        sub_25F1B7174(&v70, &v67, &qword_27FD54C00, &qword_25F30CD00);

LABEL_13:

        sub_25F208938(v25, v27, v28, v24);
        sub_25F207284();

        sub_25F208960(v25, v27, v28, v24);

        sub_25F208960(v25, v27, v28, v24);

        v13 = v45;
      }

      a2 = &qword_27FD54C00;
      sub_25F1AF698(&v70, &qword_27FD54C00, &qword_25F30CD00);
      v14 = v48;
      goto LABEL_16;
    }

    a2 = &qword_27FD54C00;
LABEL_16:
    v67 = v73;
    v68 = v74;
    v69[0] = v75[0];
    *(v69 + 10) = *(v75 + 10);
    sub_25F1AF698(&v67, &qword_27FD54C00, &qword_25F30CD00);
    v29 = swift_allocObject();
    v50 = &v44;
    v29[2] = 0;
    v29[3] = 0;
    v29[4] = sub_25F2089F4;
    v29[5] = v12;
    a3 = *(v59 + 88);
    v30 = MEMORY[0x28223BE20](v29);
    *(&v44 - 2) = sub_25F208A30;
    *(&v44 - 1) = v30;
    v49 = v30;
    swift_retain_n();
    os_unfair_lock_lock((a3 + 100));
    sub_25F20974C(a3 + 16, &v65);
    v52 = 0;
    os_unfair_lock_unlock((a3 + 100));
    *(v64 + 10) = *(&v66[1] + 10);
    v62 = v65;
    v63 = v66[0];
    v64[0] = v66[1];
    if (BYTE9(v66[2]) != 255)
    {
      v58 = v63;
      if (BYTE9(v66[2]))
      {
        v31 = v62;
        if (BYTE9(v66[2]) == 1)
        {
          v32 = v62;
          goto LABEL_22;
        }

        v57 = *(&v62 + 1);
        v33 = *(v12 + 104);

        os_unfair_lock_lock((v33 + 24));
        v34 = *(v33 + 16);
        if (v34)
        {
          v55 = v31;
          v56 = v34;
          v48 = v14;
          *(v33 + 16) = 0;
          os_unfair_lock_unlock((v33 + 24));
          v35 = v56;
          v54 = *(v56 + 16);
          if (v54)
          {
            a3 = 0;
            v36 = (v56 + 64);
            while (a3 < *(v35 + 16))
            {
              ++a3;
              v37 = *(v36 - 2);
              a2 = *(v36 - 1);
              v38 = *(v36 - 4);
              v39 = *(v36 - 3);
              v40 = *v36;
              v36 += 40;
              *&v60 = v55;
              *(&v60 + 1) = v57;
              *&v61[0] = v58;
              *(v61 + 8) = *(v66 + 8);
              *(&v61[1] + 8) = *(&v66[1] + 8);
              BYTE8(v61[2]) = BYTE8(v66[2]);
              v41 = *(*v38 + 192);

              sub_25F208938(v39, v37, a2, v40);
              v41(&v60);

              v42 = v39;
              v12 = v53;
              sub_25F208960(v42, v37, a2, v40);
              v35 = v56;
              if (v54 == a3)
              {
                goto LABEL_28;
              }
            }

            __break(1u);
            break;
          }

LABEL_28:

          v78 = *(v66 + 8);
          v79 = *(&v66[1] + 8);
          v80 = BYTE8(v66[2]);
          *&v76 = v55;
          *(&v76 + 1) = v57;
          v77 = v58;
          v81 = 2;
          sub_25F1C0C90(&v76);

          v13 = v45;
          v14 = v48;
          a2 = &qword_27FD54C00;
        }

        else
        {
          os_unfair_lock_unlock((v33 + 24));
        }
      }

      else
      {

LABEL_22:
      }

      sub_25F1AF698(&v62, &qword_27FD54C00, &qword_25F30CD00);
      goto LABEL_4;
    }

LABEL_4:
    ++v14;
    v60 = v65;
    v61[0] = v66[0];
    v61[1] = v66[1];
    *(&v61[1] + 10) = *(&v66[1] + 10);
    sub_25F1AF698(&v60, &qword_27FD54C00, &qword_25F30CD00);
    if (v14 == v13)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_34:

  os_unfair_lock_unlock(a2 + 25);

  __break(1u);

  os_unfair_lock_unlock((a3 + 100));

  __break(1u);
  return result;
}

uint64_t sub_25F2064B8(_OWORD *a1, os_unfair_lock_s *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{

  v9 = sub_25F206FE0(a3);
  v47 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54C20, &qword_25F30CD18);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = v9;
  *(a5 + 104) = v10;
  *(a5 + 112) = a2;

  v11 = sub_25F1C063C(a1);
  v42 = v9[2];
  v43 = v9;
  if (!v42)
  {
LABEL_31:

    return v11;
  }

  v12 = 0;
  v41 = v43 + 4;
  while (v12 < v43[2])
  {
    v13 = &v41[4 * v12];
    v15 = v13[1];
    v14 = v13[2];
    v16 = *v13;
    v17 = *(v13 + 24);

    sub_25F208B84(v15, v14, v17);
    sub_25F208B9C(v15, v14, v17);
    v18 = swift_allocObject();
    *(v18 + 16) = v11;
    *(v18 + 24) = v12;
    a3 = swift_allocObject();
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = sub_25F208BB4;
    *(a3 + 40) = v18;
    v48 = v16;
    a2 = *(v16 + 88);
    v19 = MEMORY[0x28223BE20](a3);
    *(&v39 - 2) = sub_25F208BE8;
    *(&v39 - 1) = v19;
    swift_retain_n();
    swift_retain_n();
    os_unfair_lock_lock(a2 + 25);
    v20 = v47;
    sub_25F208BF4(&a2[4], &v66);
    if (v20)
    {
      goto LABEL_34;
    }

    os_unfair_lock_unlock(a2 + 25);
    *(v65 + 10) = *(v68 + 10);
    v64[0] = v66;
    v64[1] = v67;
    v65[0] = v68[0];
    v21 = BYTE9(v68[1]);
    v46 = &v39;
    if (BYTE9(v68[1]) != 255)
    {
      v22 = v12;
      v23 = *&v64[0];
      if (BYTE9(v68[1]))
      {
        if (BYTE9(v68[1]) == 1)
        {
          v61 = v66;
          v62 = v67;
          v63[0] = v68[0];
          *(v63 + 10) = *(v68 + 10);
          sub_25F1B7174(&v61, &v58, qword_27FD54C30, &qword_25F314C70);
          v24 = v23;
          v25 = 0;
          goto LABEL_13;
        }
      }

      else
      {
        v25 = *(&v64[0] + 1);
        v61 = v66;
        v62 = v67;
        v63[0] = v68[0];
        *(v63 + 10) = *(v68 + 10);
        sub_25F1B7174(&v61, &v58, qword_27FD54C30, &qword_25F314C70);

LABEL_13:

        sub_25F208B84(v23, v25, v21);
        sub_25F207398();

        sub_25F208B9C(v23, v25, v21);

        sub_25F208B9C(v23, v25, v21);
      }

      sub_25F1AF698(v64, &qword_27FD54C28, &unk_25F30CD20);
      v12 = v22;
      goto LABEL_16;
    }

LABEL_16:
    v61 = v66;
    v62 = v67;
    v63[0] = v68[0];
    *(v63 + 10) = *(v68 + 10);
    sub_25F1AF698(&v61, &qword_27FD54C28, &unk_25F30CD20);
    v26 = swift_allocObject();
    v45 = &v39;
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = sub_25F208C10;
    v26[5] = v11;
    a2 = v48;
    a3 = *(v48 + 88);
    v27 = MEMORY[0x28223BE20](v26);
    *(&v39 - 2) = sub_25F208C4C;
    *(&v39 - 1) = v27;
    v44 = v27;
    swift_retain_n();
    os_unfair_lock_lock((a3 + 100));
    sub_25F209764(a3 + 16, &v58);
    v47 = 0;
    os_unfair_lock_unlock((a3 + 100));
    *(v57 + 10) = *(v60 + 10);
    v56[0] = v58;
    v56[1] = v59;
    v57[0] = v60[0];
    if (BYTE9(v60[1]) != 255)
    {
      v52 = *(&v56[0] + 1);
      if (BYTE9(v60[1]))
      {
        v28 = *&v56[0];
        if (BYTE9(v60[1]) == 1)
        {
          v29 = *&v56[0];
          goto LABEL_22;
        }

        v30 = *(v11 + 104);

        os_unfair_lock_lock((v30 + 24));
        v31 = *(v30 + 16);
        if (v31)
        {
          v50 = v28;
          v51 = v31;
          v40 = v12;
          *(v30 + 16) = 0;
          os_unfair_lock_unlock((v30 + 24));
          v32 = v51;
          v49 = *(v51 + 16);
          if (v49)
          {
            v33 = 0;
            a3 = v51 + 56;
            while (v33 < *(v32 + 16))
            {
              ++v33;
              a2 = *(a3 - 16);
              v34 = *(a3 - 8);
              v35 = *(a3 - 24);
              v36 = *a3;
              a3 += 32;
              *&v53 = v50;
              *(&v53 + 1) = v52;
              v54 = v59;
              v55[0] = v60[0];
              *(v55 + 9) = *(v60 + 9);
              v37 = *(*v35 + 192);

              sub_25F208B84(a2, v34, v36);
              v37(&v53);

              sub_25F208B9C(a2, v34, v36);
              v32 = v51;
              if (v49 == v33)
              {
                goto LABEL_28;
              }
            }

            __break(1u);
            break;
          }

LABEL_28:

          v69[1] = v59;
          *v70 = v60[0];
          *&v70[9] = *(v60 + 9);
          *&v69[0] = v50;
          *(&v69[0] + 1) = v52;
          v71 = 2;
          sub_25F1C0FD0(v69);

          v12 = v40;
          a2 = v48;
        }

        else
        {
          os_unfair_lock_unlock((v30 + 24));
        }
      }

      else
      {

LABEL_22:

        a2 = v11;
      }

      sub_25F1AF698(v56, &qword_27FD54C28, &unk_25F30CD20);
      goto LABEL_4;
    }

LABEL_4:
    ++v12;
    v53 = v58;
    v54 = v59;
    v55[0] = v60[0];
    *(v55 + 10) = *(v60 + 10);
    sub_25F1AF698(&v53, &qword_27FD54C28, &unk_25F30CD20);
    if (v12 == v42)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_34:

  os_unfair_lock_unlock(a2 + 25);

  __break(1u);

  os_unfair_lock_unlock((a3 + 100));

  __break(1u);
  return result;
}

uint64_t sub_25F206BF8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, char *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v6 = sub_25F30678C();
  v7 = sub_25F305C1C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v13 - v9;
  v11 = a2(a1);
  (*(*(v6 - 8) + 56))(v10, 1, 1, v6);
  return sub_25F205C80(v11, v10, a3);
}

void *sub_25F206D34(unint64_t a1)
{
  v20 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_25F30631C())
  {
    v21 = MEMORY[0x277D84F90];
    result = sub_25F1BD128(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    if (!i)
    {
      break;
    }

    v3 = a1;
    v4 = a1 & 0xFFFFFFFFFFFFFF8;
    if (v20)
    {
      v3 = a1;
      v18 = sub_25F30631C();
    }

    else
    {
      v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = 0;
    v5 = v3 & 0xC000000000000001;
    while (v11 < i)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      if (v18 == v11)
      {
        goto LABEL_42;
      }

      if (v5)
      {
        v13 = MEMORY[0x25F8D81E0](v11, v3);
        v3 = a1;
        v14 = v13;
      }

      else
      {
        if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v14 = *(v3 + 8 * v11 + 32);
      }

      v16 = *(v21 + 16);
      v15 = *(v21 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_25F1BD128((v15 > 1), v16 + 1, 1);
        v3 = a1;
      }

      *(v21 + 16) = v16 + 1;
      v17 = v21 + 40 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = -1;
      ++v11;
      if (v12 == i)
      {
        goto LABEL_8;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

  v3 = a1;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  v5 = a1 & 0xC000000000000001;
LABEL_8:
  if (v20)
  {
    while (1)
    {
      v3 = a1;
      if (i == sub_25F30631C())
      {
        break;
      }

LABEL_12:
      if (v5)
      {
        v10 = MEMORY[0x25F8D81E0](i, v3);
        v3 = a1;
        v6 = v10;
        if (__OFADD__(i, 1))
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (i < 0)
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        if (i >= *(v4 + 16))
        {
          goto LABEL_39;
        }

        v6 = *(v3 + 8 * i + 32);

        if (__OFADD__(i, 1))
        {
          goto LABEL_38;
        }
      }

      v8 = *(v21 + 16);
      v7 = *(v21 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_25F1BD128((v7 > 1), v8 + 1, 1);
        v3 = a1;
      }

      *(v21 + 16) = v8 + 1;
      v9 = v21 + 40 * v8;
      *(v9 + 32) = v6;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = -1;
      ++i;
      if (!v20)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    if (i != *(v4 + 16))
    {
      goto LABEL_12;
    }
  }

  return v21;
}

void *sub_25F206FE0(unint64_t a1)
{
  v20 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_25F30631C())
  {
    v21 = MEMORY[0x277D84F90];
    result = sub_25F1BD1A8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    if (!i)
    {
      break;
    }

    v3 = a1;
    v4 = a1 & 0xFFFFFFFFFFFFFF8;
    if (v20)
    {
      v3 = a1;
      v18 = sub_25F30631C();
    }

    else
    {
      v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = 0;
    v5 = v3 & 0xC000000000000001;
    while (v11 < i)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      if (v18 == v11)
      {
        goto LABEL_42;
      }

      if (v5)
      {
        v13 = MEMORY[0x25F8D81E0](v11, v3);
        v3 = a1;
        v14 = v13;
      }

      else
      {
        if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v14 = *(v3 + 8 * v11 + 32);
      }

      v16 = *(v21 + 16);
      v15 = *(v21 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_25F1BD1A8((v15 > 1), v16 + 1, 1);
        v3 = a1;
      }

      *(v21 + 16) = v16 + 1;
      v17 = v21 + 32 * v16;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 32) = v14;
      *(v17 + 56) = -1;
      ++v11;
      if (v12 == i)
      {
        goto LABEL_8;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

  v3 = a1;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  v5 = a1 & 0xC000000000000001;
LABEL_8:
  if (v20)
  {
    while (1)
    {
      v3 = a1;
      if (i == sub_25F30631C())
      {
        break;
      }

LABEL_12:
      if (v5)
      {
        v10 = MEMORY[0x25F8D81E0](i, v3);
        v3 = a1;
        v6 = v10;
        if (__OFADD__(i, 1))
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (i < 0)
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        if (i >= *(v4 + 16))
        {
          goto LABEL_39;
        }

        v6 = *(v3 + 8 * i + 32);

        if (__OFADD__(i, 1))
        {
          goto LABEL_38;
        }
      }

      v8 = *(v21 + 16);
      v7 = *(v21 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_25F1BD1A8((v7 > 1), v8 + 1, 1);
        v3 = a1;
      }

      *(v21 + 16) = v8 + 1;
      v9 = v21 + 32 * v8;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 32) = v6;
      *(v9 + 56) = -1;
      ++i;
      if (!v20)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    if (i != *(v4 + 16))
    {
      goto LABEL_12;
    }
  }

  return v21;
}

void sub_25F207284()
{
  v1 = *(v0 + 104);
  os_unfair_lock_lock((v1 + 24));
  sub_25F208B20((v1 + 16), &v11);
  os_unfair_lock_unlock((v1 + 24));
  if (v11)
  {
    if (*(v0 + 112))
    {
      sub_25F2B89D0(v11);
    }

    else
    {
      v2 = sub_25F2085B0(v11);
    }

    v4 = v2;
    v5 = v3;

    v6 = (v5 & 1) != 0;
    v11 = v4;
    v12 = v7;
    v13 = v8;
    v14 = v9;
    v15 = v10;
    v16 = v6;
    sub_25F208C90(v4, v6);
    sub_25F1C0C90(&v11);
    sub_25F1C5980(v4, v6);
    sub_25F1C5980(v4, v6);
  }
}

void sub_25F207398()
{
  v1 = *(v0 + 104);
  os_unfair_lock_lock((v1 + 24));
  sub_25F208C58((v1 + 16), &v11);
  os_unfair_lock_unlock((v1 + 24));
  if (v11)
  {
    if (*(v0 + 112))
    {
      sub_25F2B8CFC(v11);
    }

    else
    {
      v2 = sub_25F2086D4(v11);
    }

    v4 = v2;
    v5 = v3;

    v6 = (v5 & 1) != 0;
    v11 = v4;
    v12 = v7;
    v13 = v8;
    v14 = v9;
    v15 = v10;
    v16 = v6;
    sub_25F208C90(v4, v6);
    sub_25F1C0FD0(&v11);
    sub_25F1C5980(v4, v6);
    sub_25F1C5980(v4, v6);
  }
}

uint64_t sub_25F2074AC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *&v19 = *(v2 + 104);
  *&v26 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/TraverseFuture.swift";
  *(&v26 + 1) = 126;
  v27[0] = 2;
  *&v27[8] = xmmword_25F30CC10;
  *&v27[24] = "receiveUnderlyingCompletion(at:with:)";
  *&v27[32] = 37;
  v27[40] = 2;
  v18[2] = v3[25];
  v4 = v3[26];
  v18[3] = v4;
  v18[4] = v3[27];
  v18[5] = a1;
  v18[6] = a2;
  type metadata accessor for TraverseFuture.Activity();
  v5 = sub_25F30476C();

  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30678C();
  v7 = sub_25F30539C();
  v8 = sub_25F305C1C();
  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v26, sub_25F208B3C, v18, v5, v8, WitnessTable);

  if (*&v22[0])
  {
    if (*(v2 + 112) == 1)
    {
      *&v26 = *&v22[0];
      v11 = swift_getWitnessTable();
      v12 = Sequence.invertAndAccumulateErrors<A, B>()(v7, v4, v6, v11, MEMORY[0x277D84950]);
      v14 = v13;
    }

    else
    {
      v15 = swift_getWitnessTable();
      Sequence.invert<A, B>()(v7, v4, v6, v15, MEMORY[0x277D84950], &v26);

      v12 = v26;
      v14 = BYTE8(v26);
    }

    v24 = v12;
    v25 = v14 & 1;
    sub_25F30539C();
    v16 = sub_25F30678C();
    sub_25F3020F8(v16, v22);
    v19 = v22[0];
    v20 = v22[1];
    v21[0] = v23[0];
    *(v21 + 10) = *(v23 + 10);
    sub_25F2EA104(&v19);
    sub_25F1C5980(v12, v14 & 1);
    v26 = v19;
    *v27 = v20;
    *&v27[16] = v21[0];
    *&v27[26] = *(v21 + 10);
    v17 = type metadata accessor for FutureTermination();
    return (*(*(v17 - 8) + 8))(&v26, v17);
  }

  return result;
}

void sub_25F2077DC(__int128 *a1)
{
  v2 = *(v1 + 104);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  if (v3)
  {
    *(v2 + 16) = 0;
    os_unfair_lock_unlock((v2 + 24));
    v14 = *(v3 + 16);
    if (v14)
    {
      v4 = 0;
      v5 = (v3 + 64);
      while (v4 < *(v3 + 16))
      {
        ++v4;
        v7 = *(v5 - 2);
        v6 = *(v5 - 1);
        v8 = *(v5 - 4);
        v9 = *(v5 - 3);
        v10 = *v5;
        v5 += 40;
        v11 = a1[1];
        v16 = *a1;
        v17 = v11;
        *v18 = a1[2];
        *&v18[9] = *(a1 + 41);
        v12 = *(*v8 + 192);

        sub_25F208938(v9, v7, v6, v10);
        v12(&v16);

        sub_25F208960(v9, v7, v6, v10);
        if (v14 == v4)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_6:

      v13 = a1[1];
      v16 = *a1;
      v17 = v13;
      *v18 = a1[2];
      *&v18[9] = *(a1 + 41);
      v19 = 2;
      sub_25F1C0C90(&v16);
    }
  }

  else
  {

    os_unfair_lock_unlock((v2 + 24));
  }
}

void sub_25F207970(__int128 *a1)
{
  v3 = *(v1 + 104);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  if (v4)
  {
    *(v3 + 16) = 0;
    os_unfair_lock_unlock((v3 + 24));
    v14 = *(v4 + 16);
    if (v14)
    {
      v5 = 0;
      v6 = (v4 + 56);
      while (v5 < *(v4 + 16))
      {
        ++v5;
        v8 = *(v6 - 2);
        v7 = *(v6 - 1);
        v9 = *(v6 - 3);
        v10 = *v6;
        v6 += 32;
        v11 = a1[1];
        v15 = *a1;
        v16 = v11;
        *v17 = a1[2];
        *&v17[9] = *(a1 + 41);
        v12 = *(*v9 + 192);

        sub_25F208B84(v8, v7, v10);
        v12(&v15);

        sub_25F208B9C(v8, v7, v10);
        if (v14 == v5)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_6:

      v13 = a1[1];
      v15 = *a1;
      v16 = v13;
      *v17 = a1[2];
      *&v17[9] = *(a1 + 41);
      v18 = 2;
      sub_25F1C0FD0(&v15);
    }
  }

  else
  {

    os_unfair_lock_unlock((v3 + 24));
  }
}

uint64_t sub_25F207AF4(__int128 *a1)
{
  v2 = *v1;
  v3 = a1[1];
  v16 = *a1;
  v17 = v3;
  v18[0] = a1[2];
  v4 = v18[0];
  *(v18 + 9) = *(a1 + 41);
  v19 = v16;
  v20 = v3;
  v21[0] = v4;
  *(v21 + 9) = *(v18 + 9);
  v14 = v1[13];
  *&v11 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/TraverseFuture.swift";
  *(&v11 + 1) = 126;
  v12[0] = 2;
  *&v12[8] = xmmword_25F30CC20;
  *&v12[24] = "cancel(callsite:)";
  *&v12[32] = 17;
  v12[40] = 2;
  v10[2] = v2[25];
  v10[3] = v2[26];
  v10[4] = v2[27];
  type metadata accessor for TraverseFuture.Activity();
  v5 = sub_25F30476C();
  type metadata accessor for TraverseFuture.Activity.Fiber();
  sub_25F30539C();
  v6 = sub_25F305C1C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v11, sub_25F208898, v10, v5, v6, WitnessTable);

  if (v15)
  {
    v9[1] = v9;
    *&v11 = v15;
    MEMORY[0x28223BE20](result);
    swift_getWitnessTable();
    sub_25F3051BC();

    v11 = v19;
    *v12 = v20;
    *&v12[16] = v21[0];
    *&v12[25] = *(v21 + 9);
    v13 = 2;
    return sub_25F2EA104(&v11);
  }

  return result;
}

uint64_t sub_25F207D70(void **a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  v6 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v11 = a1;
  v12 = a6 & 1;
  sub_25F208950(a3, a4, a5, a6 & 1);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = sub_25F1E10D8(v6);
  v6 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

LABEL_4:
  if (v6[2] <= a2)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v14 = &v6[5 * a2];
  v15 = v14[5];
  v16 = v14[6];
  v17 = v14[7];
  v14[5] = a3;
  v14[6] = a4;
  v14[7] = a5;
  v18 = *(v14 + 64);
  *(v14 + 64) = v12;
  sub_25F208960(v15, v16, v17, v18);
  v19 = v6[2];
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    v32 = v11;
    v33 = MEMORY[0x277D84F90];
    sub_25F1BD0E8(0, v19, 0);
    v20 = v33;
    v30 = v19;
    v31 = v6;
    v21 = (v6 + 8);
    do
    {
      v22 = *(v21 - 3);
      v23 = *(v21 - 2);
      v24 = *(v21 - 1);
      v25 = *v21;
      sub_25F208938(v22, v23, v24, *v21);
      v27 = *(v33 + 16);
      v26 = *(v33 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_25F1BD0E8((v26 > 1), v27 + 1, 1);
      }

      v21 += 40;
      *(v33 + 16) = v27 + 1;
      v28 = v33 + 32 * v27;
      *(v28 + 32) = v22;
      *(v28 + 40) = v23;
      *(v28 + 48) = v24;
      *(v28 + 56) = v25;
      --v19;
    }

    while (v19);
    v6 = v31;
    v11 = v32;
    v19 = v30;
  }

  v29 = sub_25F2DE000(v20);

  if (*(v29 + 16) == v19)
  {

    result = v29;
    *v11 = 0;
  }

  else
  {

    result = 0;
    *v11 = v6;
  }

  return result;
}

uint64_t sub_25F207F4C(void **a1, unint64_t a2, void *a3, uint64_t a4, char a5)
{
  v5 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v9 = a1;
  v10 = a5 & 1;
  sub_25F1D93AC(a3, a4, a5 & 1);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = sub_25F1E1100(v5);
  v5 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

LABEL_4:
  if (v5[2] <= a2)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v12 = &v5[4 * a2];
  v13 = v12[5];
  v14 = v12[6];
  v12[5] = a3;
  v12[6] = a4;
  v15 = *(v12 + 56);
  *(v12 + 56) = v10;
  sub_25F208B9C(v13, v14, v15);
  v16 = v5[2];
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v28 = v9;
    v29 = MEMORY[0x277D84F90];
    sub_25F1BD188(0, v16, 0);
    v17 = v29;
    v26 = v16;
    v27 = v5;
    v18 = (v5 + 7);
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v21 = *v18;
      sub_25F208B84(v19, v20, *v18);
      v23 = *(v29 + 16);
      v22 = *(v29 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_25F1BD188((v22 > 1), v23 + 1, 1);
      }

      v18 += 32;
      *(v29 + 16) = v23 + 1;
      v24 = v29 + 24 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v20;
      *(v24 + 48) = v21;
      --v16;
    }

    while (v16);
    v5 = v27;
    v9 = v28;
    v16 = v26;
  }

  v25 = sub_25F2DE124(v17);

  if (*(v25 + 16) == v16)
  {

    result = v25;
    *v9 = 0;
  }

  else
  {

    result = 0;
    *v9 = v5;
  }

  return result;
}

uint64_t sub_25F20810C@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v44 = a6;
  v46 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v13 = sub_25F30678C();
  v14 = sub_25F305C1C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  result = MEMORY[0x28223BE20](v14);
  v19 = &v41 - v18;
  v45 = a1;
  v20 = *a1;
  if (*a1)
  {
    v43 = a7;
    v49 = v20;
    v21 = *(v13 - 8);
    v47 = v7;
    v22 = v21;
    v23 = *(v21 + 16);
    v41 = result;
    v23(v19, a3, v13);
    (*(v22 + 56))(v19, 0, 1, v13);
    v42 = a5;
    v24 = v44;
    v25 = type metadata accessor for TraverseFuture.Activity.Fiber();
    v26 = sub_25F30539C();
    sub_25F3052CC();
    v27 = v49;
    sub_25F24933C(a2, v49);
    v28 = v27 + ((*(*(v25 - 8) + 80) + 32) & ~*(*(v25 - 8) + 80)) + *(*(v25 - 8) + 72) * a2 + *(v25 + 44);
    v29 = v41;
    (*(v15 + 40))(v28, v19, v41);
    v30 = nullsub_2(v26);
    v31 = v49;
    v48 = v49;
    MEMORY[0x28223BE20](v30);
    v32 = v42;
    *(&v41 - 4) = v46;
    *(&v41 - 3) = v32;
    *(&v41 - 2) = v24;

    WitnessTable = swift_getWitnessTable();
    v34 = v47;
    v36 = sub_25F1C1AC4(sub_25F208B60, (&v41 - 6), v26, v29, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v35);
    v47 = v34;

    v48 = v36;
    v37 = sub_25F30539C();
    v38 = swift_getWitnessTable();
    default argument 0 of Collection.compacted<A>(type:)(v37, v13);
    v39 = Collection.compacted<A>(type:)(v13, v37, v13, v38);

    v40 = sub_25F30531C();
    if (v40 == sub_25F30531C())
    {

      *v45 = 0;
      *v43 = v39;
    }

    else
    {

      *v45 = v31;
      *v43 = 0;
    }
  }

  else
  {
    *a7 = 0;
  }

  return result;
}

uint64_t sub_25F2084F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for TraverseFuture.Activity.Fiber() + 44);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30678C();
  v5 = sub_25F305C1C();
  return (*(*(v5 - 8) + 16))(a2, a1 + v4, v5);
}

void *sub_25F2085B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = (a1 + 56);
  v3 = MEMORY[0x277D84F90];
  while ((*v2 & 1) == 0)
  {
    v13 = *(v2 - 24);
    v4 = *(v2 - 1);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_25F2F09D0(0, v3[2] + 1, 1, v3);
    }

    v6 = v3[2];
    v5 = v3[3];
    v7 = v13;
    if (v6 >= v5 >> 1)
    {
      v9 = sub_25F2F09D0((v5 > 1), v6 + 1, 1, v3);
      v7 = v13;
      v3 = v9;
    }

    v3[2] = v6 + 1;
    v8 = &v3[3 * v6];
    *(v8 + 2) = v7;
    v8[6] = v4;
    v2 += 32;
    if (!--v1)
    {
      return v3;
    }
  }

  v10 = *(v2 - 3);
  v11 = v10;

  return v10;
}

void *sub_25F2086D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = (a1 + 48);
  v3 = MEMORY[0x277D84F90];
  while ((*v2 & 1) == 0)
  {
    v11 = *(v2 - 1);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_25F2F1030(0, v3[2] + 1, 1, v3);
    }

    v5 = v3[2];
    v4 = v3[3];
    v6 = v11;
    if (v5 >= v4 >> 1)
    {
      v7 = sub_25F2F1030((v4 > 1), v5 + 1, 1, v3);
      v6 = v11;
      v3 = v7;
    }

    v3[2] = v5 + 1;
    *&v3[2 * v5 + 4] = v6;
    v2 += 24;
    if (!--v1)
    {
      return v3;
    }
  }

  v8 = *(v2 - 2);
  v9 = v8;

  return v8;
}