uint64_t sub_21C95EB0C@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_21CB83094();
  v2 = *(v1 - 8);
  v29 = v1;
  v30 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2630, &unk_21CBB4318);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - v16;
  sub_21CB81014();
  sub_21CB81014();
  v18 = sub_21CB80FF4();
  v20 = v19;
  v21 = *(v7 + 8);
  v21(v10, v6);
  v21(v13, v6);
  v32 = v18;
  v33 = v20;
  sub_21C71F3FC();
  sub_21CB84CB4();
  v22 = &v17[*(v14 + 36)];
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2648, &qword_21CBB4328) + 28);
  v24 = *MEMORY[0x277CE1048];
  v25 = sub_21CB84C54();
  (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
  *v22 = swift_getKeyPath();
  sub_21CB83084();
  sub_21C95EECC();
  sub_21C95EFB0(&qword_27CDEC0A8, MEMORY[0x277CDDE78]);
  v26 = v29;
  sub_21CB840E4();
  (*(v30 + 8))(v5, v26);
  return sub_21C95F0C0(v17);
}

uint64_t sub_21C95EEA4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

unint64_t sub_21C95EECC()
{
  result = qword_27CDF2638;
  if (!qword_27CDF2638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2630, &unk_21CBB4318);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21C6EADEC(&qword_27CDF2640, &qword_27CDF2648, &qword_21CBB4328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2638);
  }

  return result;
}

uint64_t sub_21C95EFB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C95EFF8(uint64_t a1)
{
  v2 = sub_21CB84C54();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_21CB82BB4();
}

uint64_t sub_21C95F0C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2630, &unk_21CBB4318);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

PMDeviceListController __swiftcall PMDeviceListController.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for PMDeviceListController()
{
  result = qword_27CDF2660;
  if (!qword_27CDF2660)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDF2660);
  }

  return result;
}

uint64_t sub_21C95F2F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2698, &qword_21CBB4688);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - v2;
  type metadata accessor for PMPasswordOptionsViewModel();
  sub_21C744154(&qword_27CDF26B0, type metadata accessor for PMPasswordOptionsViewModel);
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  sub_21CB84EA4();
  v4 = [objc_opt_self() sharedFeatureManager];
  v5 = [v4 isUserAllowedToTogglePasswordAutoFillEnabledState];

  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = v5 ^ 1;
  v8 = &v3[*(v0 + 36)];
  *v8 = KeyPath;
  v8[1] = sub_21C735744;
  v8[2] = v7;
  sub_21C9603D0();
  sub_21CB845C4();
  return sub_21C6EA794(v3, &qword_27CDF2698, &qword_21CBB4688);
}

uint64_t sub_21C95F534@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  return result;
}

void sub_21C95F5B4(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_21CAD044C();
}

uint64_t sub_21C95F5DC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_21C95F708()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0[1];
  v15 = *v0;
  v16 = v6;
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v2 + 8))(v5, v1);
  v17 = v7;
  v18 = v9;
  sub_21C71F3FC();
  v17 = sub_21CB84054();
  v18 = v10;
  v19 = v11 & 1;
  v20 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2680, &qword_21CBB4680);
  sub_21C960314();
  return sub_21CB85064();
}

uint64_t sub_21C95F894@<X0>(_OWORD *a1@<X8>)
{
  v17 = *v1;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DB4();

  if (v12 == 1)
  {
    v12 = v1[1];
    *&v13 = *(v1 + 4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2678, &qword_21CBBFF20);
    sub_21CB84F54();
    result = sub_21CA40164(v9, v10, v11, *(&v17 + 1), &v12);
    v4 = v12;
    v5 = v13;
    v6 = v14;
    v7 = v15;
    v8 = v16;
  }

  else
  {
    result = sub_21C6EA794(&v17, &qword_27CDF2670, &unk_21CBB4670);
    v4 = 0uLL;
    v5 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
  }

  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  return result;
}

__n128 sub_21C95F9BC@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 32);
  v10 = *(v1 + 16);
  v11.n128_u64[0] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2678, &qword_21CBBFF20);
  sub_21CB84F54();

  sub_21CA40164(v7, v8, v9, v3, &v10);
  v5 = v13;
  *(a1 + 32) = v12;
  *(a1 + 48) = v5;
  *(a1 + 64) = v14;
  result = v11;
  *a1 = v10;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21C95FA68()
{
  v0 = type metadata accessor for PMOTPAuthHandlerManager();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_21CA92720();
}

uint64_t sub_21C95FAA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF26B8, &qword_21CBB46D0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19[-1] - v11;
  type metadata accessor for PMOTPAuthHandlerManager();
  sub_21C744154(&qword_27CDF26C0, type metadata accessor for PMOTPAuthHandlerManager);
  v13 = a3 & 1;
  sub_21CB82134();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v14 = *(v19[0] + 16);

  if (v14)
  {
    MEMORY[0x28223BE20](v15);
    *(&v18 - 4) = a1;
    *(&v18 - 3) = a2;
    *(&v18 - 16) = v13;
    sub_21C95FDFC(v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF26C8, &unk_21CBB4720);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC150, &unk_21CBA4F60);
    sub_21C9604C0();
    sub_21C7FC578();
    sub_21CB85064();
    (*(v9 + 32))(a4, v12, v8);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v9 + 56))(a4, v16, 1, v8);
}

uint64_t sub_21C95FD2C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PMOTPAuthHandlerManager();
  sub_21C744154(&qword_27CDF26C0, type metadata accessor for PMOTPAuthHandlerManager);
  v2 = sub_21CB82B84();
  v4 = v3;
  v5 = sub_21CB82134();
  result = sub_21CB81CE4();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = result;
  a1[3] = v5;
  return result;
}

double sub_21C95FDFC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  type metadata accessor for PMOTPAuthHandlerManager();
  sub_21C744154(&qword_27CDF26C0, type metadata accessor for PMOTPAuthHandlerManager);
  sub_21CB82134();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v10 = v38;
  if (v38)
  {
    v11 = [v38 localizedName];
    v12 = sub_21CB855C4();
    v14 = v13;

    sub_21CB81014();
    sub_21CB81004();
    (*(v3 + 8))(v9, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_21CBA0690;
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = sub_21C7C0050();
    *(v15 + 32) = v12;
    *(v15 + 40) = v14;
    v16 = sub_21CB85594();
    v18 = v17;

    *&v38 = v16;
    *(&v38 + 1) = v18;
    sub_21C71F3FC();
    v33 = sub_21CB84054();
    v34 = v19;
    v35 = v20 & 1;
    v36 = v21;
    v37 = 0;
  }

  else
  {
    sub_21CB81014();
    sub_21CB81014();
    v22 = sub_21CB80FF4();
    v24 = v23;
    v25 = *(v3 + 8);
    v25(v6, v2);
    v25(v9, v2);
    *&v38 = v22;
    *(&v38 + 1) = v24;
    sub_21C71F3FC();
    v33 = sub_21CB84054();
    v34 = v27;
    v35 = v26 & 1;
    v36 = v28;
    v37 = 1;
  }

  sub_21CB83494();
  result = *&v38;
  v30 = v39;
  v31 = v40;
  *a1 = v38;
  *(a1 + 16) = v30;
  *(a1 + 32) = v31;
  return result;
}

uint64_t sub_21C9601FC(uint64_t a1, int a2)
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

uint64_t sub_21C960244(uint64_t result, int a2, int a3)
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

uint64_t sub_21C96030C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_21C95F2F8();
}

unint64_t sub_21C960314()
{
  result = qword_27CDF2688;
  if (!qword_27CDF2688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2680, &qword_21CBB4680);
    sub_21C9603D0();
    sub_21C744154(&qword_27CDEB908, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2688);
  }

  return result;
}

unint64_t sub_21C9603D0()
{
  result = qword_27CDF2690;
  if (!qword_27CDF2690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2698, &qword_21CBB4688);
    sub_21C6EADEC(&qword_27CDF26A0, &qword_27CDF26A8, &unk_21CBB4690);
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2690);
  }

  return result;
}

uint64_t sub_21C9604B4@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_21C95FD2C(a1);
}

unint64_t sub_21C9604C0()
{
  result = qword_27CDF26D0;
  if (!qword_27CDF26D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF26C8, &unk_21CBB4720);
    sub_21C960578();
    sub_21C6EADEC(&qword_27CDF26E0, &qword_27CDF26E8, &qword_21CBB4730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF26D0);
  }

  return result;
}

unint64_t sub_21C960578()
{
  result = qword_27CDF26D8;
  if (!qword_27CDF26D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF26D8);
  }

  return result;
}

unint64_t sub_21C9605CC()
{
  result = qword_27CDF2700;
  if (!qword_27CDF2700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2700);
  }

  return result;
}

unint64_t sub_21C960620()
{
  result = qword_27CDF2708;
  if (!qword_27CDF2708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2710, &qword_21CBB4790);
    sub_21C960314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2708);
  }

  return result;
}

uint64_t sub_21C9606B8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21C960734()
{
  result = qword_27CDF2728;
  if (!qword_27CDF2728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF26B8, &qword_21CBB46D0);
    sub_21C9604C0();
    sub_21C7FC578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2728);
  }

  return result;
}

uint64_t sub_21C960800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a3;
  v37 = a2;
  v36 = a1;
  v43 = a4;
  v7 = sub_21CB829D4();
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2730, &qword_21CBB4838);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2738, &qword_21CBB4840);
  v39 = *(v16 - 8);
  v17 = *(v39 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2740, &qword_21CBB4848);
  v21 = *(v20 - 8);
  v41 = v20;
  v42 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v35 = &v34 - v23;
  v47 = a1;
  v48 = a2;
  v49 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2748, &qword_21CBB4850);
  sub_21C6EADEC(&qword_27CDF2750, &qword_27CDF2748, &qword_21CBB4850);
  sub_21CB83EF4();
  sub_21CB85294();
  v24 = sub_21C6EADEC(&qword_27CDF2758, &qword_27CDF2730, &qword_21CBB4838);
  v25 = sub_21C9630D4(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
  sub_21CB849C4();
  (*(v40 + 8))(v10, v7);
  (*(v12 + 8))(v15, v11);
  v50 = v11;
  v51 = v7;
  v52 = v24;
  v53 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v35;
  sub_21CB84674();
  (*(v39 + 8))(v19, v16);
  v44 = v36;
  v45 = v37;
  v46 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2760, &qword_21CBB4858);
  v50 = v16;
  v51 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2768, &qword_21CBB4860);
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDA80, &unk_21CBA81E0);
  v30 = sub_21C6EADEC(&qword_27CDF2770, &qword_27CDEDA80, &unk_21CBA81E0);
  v50 = v29;
  v51 = v30;
  v31 = swift_getOpaqueTypeConformance2();
  v50 = v28;
  v51 = v31;
  swift_getOpaqueTypeConformance2();
  v32 = v41;
  sub_21CB84894();
  return (*(v42 + 8))(v27, v32);
}

uint64_t sub_21C960D54@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2778, &qword_21CBB4868);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v11);
  v13 = &v29[-v12 - 8];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2780, &qword_21CBB4870);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v29[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v19);
  v21 = &v29[-v20 - 8];
  sub_21C9618DC(v30);
  memcpy(v29, v30, sizeof(v29));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2788, &qword_21CBB4878);
  sub_21C962C00();
  sub_21CB85034();
  v22 = &v21[*(v15 + 44)];
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB220, &qword_21CBA14F8) + 28);
  v24 = sub_21CB84004();
  (*(*(v24 - 8) + 56))(v22 + v23, 1, 1, v24);
  *v22 = swift_getKeyPath();
  sub_21C96105C(a1, a2, a3, v13);
  sub_21C6EDBAC(v21, v18, &qword_27CDF2780, &qword_21CBB4870);
  sub_21C6EDBAC(v13, v10, &qword_27CDF2778, &qword_21CBB4868);
  v25 = v28;
  sub_21C6EDBAC(v18, v28, &qword_27CDF2780, &qword_21CBB4870);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF27B8, &qword_21CBB48C0);
  sub_21C6EDBAC(v10, v25 + *(v26 + 48), &qword_27CDF2778, &qword_21CBB4868);
  sub_21C6EA794(v13, &qword_27CDF2778, &qword_21CBB4868);
  sub_21C6EA794(v21, &qword_27CDF2780, &qword_21CBB4870);
  sub_21C6EA794(v10, &qword_27CDF2778, &qword_21CBB4868);
  return sub_21C6EA794(v18, &qword_27CDF2780, &qword_21CBB4870);
}

uint64_t sub_21C96105C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v59 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF27C0, &qword_21CBB48C8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v57 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v58 = v52 - v11;
  v12 = sub_21CB81024();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF27C8, &qword_21CBB48D0);
  v17 = *(v60 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v60);
  v20 = v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = v52 - v22;
  v61 = a1;
  v62 = a2;
  v55 = a2;
  v56 = a3;
  v63 = a3;
  sub_21CB81014();
  v24 = sub_21CB81004();
  v26 = v25;
  v53 = *(v13 + 8);
  v54 = v12;
  v53(v16, v12);
  v64 = v24;
  v65 = v26;
  v52[1] = sub_21C71F3FC();
  v64 = sub_21CB84054();
  v65 = v27;
  v66 = v28 & 1;
  v67 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF27D0, &qword_21CBB48D8);
  sub_21C6EADEC(&qword_27CDF27D8, &qword_27CDF27D0, &qword_21CBB48D8);
  sub_21CB85034();
  v30 = [a1 devicesWithSharingAvailable];
  type metadata accessor for PMDevice(0);
  v31 = sub_21CB85824();

  if (v31 >> 62)
  {
    v32 = sub_21CB85FA4();
  }

  else
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v32)
  {
    v52[0] = v52;
    MEMORY[0x28223BE20](v33);
    v35 = v55;
    v34 = v56;
    v52[-4] = a1;
    v52[-3] = v35;
    v52[-2] = v34;
    sub_21CB81014();
    v36 = sub_21CB81004();
    v37 = v20;
    v39 = v38;
    v53(v16, v54);
    v64 = v36;
    v65 = v39;
    v20 = v37;
    v64 = sub_21CB84054();
    v65 = v40;
    v66 = v41 & 1;
    v67 = v42;
    sub_21CB85034();
    v43 = v58;
    (*(v17 + 32))(v58, v20, v60);
    v44 = 0;
  }

  else
  {
    v44 = 1;
    v43 = v58;
  }

  v45 = v60;
  (*(v17 + 56))(v43, v44, 1, v60);
  v46 = *(v17 + 16);
  v46(v20, v23, v45);
  v47 = v57;
  sub_21C6EDBAC(v43, v57, &qword_27CDF27C0, &qword_21CBB48C8);
  v48 = v59;
  v46(v59, v20, v45);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF27E0, &qword_21CBB48E0);
  sub_21C6EDBAC(v47, &v48[*(v49 + 48)], &qword_27CDF27C0, &qword_21CBB48C8);
  sub_21C6EA794(v43, &qword_27CDF27C0, &qword_21CBB48C8);
  v50 = *(v17 + 8);
  v50(v23, v45);
  sub_21C6EA794(v47, &qword_27CDF27C0, &qword_21CBB48C8);
  return (v50)(v20, v45);
}

uint64_t sub_21C961610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22[1] = a4;
  v7 = sub_21CB83604();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA80, &unk_21CBA81E0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2768, &qword_21CBB4860);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v22 - v17;
  sub_21CB835D4();
  v22[4] = a1;
  v22[5] = a2;
  v22[6] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
  sub_21CB82194();
  v19 = sub_21C6EADEC(&qword_27CDF2770, &qword_27CDEDA80, &unk_21CBA81E0);
  MEMORY[0x21CF131E0](v13, v9, v19);
  (*(v10 + 8))(v13, v9);
  v22[8] = v9;
  v22[9] = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CF131E0](v18, v14, OpaqueTypeConformance2);
  return (*(v15 + 8))(v18, v14);
}

double sub_21C9618DC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB832E4();
  v26 = 0;
  sub_21C961AE4(&v15);
  v33 = v21;
  v34 = v22;
  v35 = v23;
  v36 = v24;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v32 = v20;
  v27 = v15;
  v28 = v16;
  v37[6] = v21;
  v37[7] = v22;
  v37[8] = v23;
  v37[9] = v24;
  v37[2] = v17;
  v37[3] = v18;
  v37[4] = v19;
  v37[5] = v20;
  v37[0] = v15;
  v37[1] = v16;
  sub_21C6EDBAC(&v27, v14, &qword_27CDF2860, &qword_21CBB4968);
  sub_21C6EA794(v37, &qword_27CDF2860, &qword_21CBB4968);
  *&v25[103] = v33;
  *&v25[119] = v34;
  *&v25[135] = v35;
  *&v25[151] = v36;
  *&v25[39] = v29;
  *&v25[55] = v30;
  *&v25[71] = v31;
  *&v25[87] = v32;
  *&v25[7] = v27;
  *&v25[23] = v28;
  v3 = v26;
  KeyPath = swift_getKeyPath();
  sub_21CB85214();
  sub_21CB82AC4();
  v5 = *&v25[96];
  *(a1 + 129) = *&v25[112];
  v6 = *&v25[144];
  *(a1 + 145) = *&v25[128];
  *(a1 + 161) = v6;
  v7 = *&v25[32];
  *(a1 + 65) = *&v25[48];
  v8 = *&v25[80];
  *(a1 + 81) = *&v25[64];
  *(a1 + 97) = v8;
  *(a1 + 113) = v5;
  v9 = *&v25[16];
  *(a1 + 17) = *v25;
  *(a1 + 33) = v9;
  *(a1 + 49) = v7;
  v10 = v17;
  *(a1 + 248) = v18;
  v11 = v20;
  *(a1 + 264) = v19;
  *(a1 + 280) = v11;
  *(a1 + 296) = v21;
  result = *&v15;
  v13 = v16;
  *(a1 + 200) = v15;
  *(a1 + 216) = v13;
  *a1 = v2;
  *(a1 + 8) = 0x402E000000000000;
  *(a1 + 16) = v3;
  *(a1 + 176) = *&v25[159];
  *(a1 + 184) = KeyPath;
  *(a1 + 192) = 1;
  *(a1 + 232) = v10;
  return result;
}

uint64_t sub_21C961AE4@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v1 = sub_21CB81024();
  v66 = v1;
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v63 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC580, &qword_21CBBA870);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v63 - v12;
  sub_21CB84BB4();
  sub_21CB83344();
  v14 = sub_21CB83354();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  v76 = sub_21CB84C24();

  sub_21C6EA794(v13, &qword_27CDEC580, &qword_21CBBA870);
  v75 = sub_21CB84A34();
  v15 = sub_21CB83DC4();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v74 = sub_21CB83E14();
  sub_21C6EA794(v9, &qword_27CDEBB58, &qword_21CBAF8A0);
  KeyPath = swift_getKeyPath();
  v63 = v5;
  sub_21CB81014();
  v16 = sub_21CB81004();
  v18 = v17;
  v19 = *(v2 + 8);
  v65 = v2 + 8;
  v67 = v19;
  v19(v5, v1);
  v103 = v16;
  v104 = v18;
  v64 = sub_21C71F3FC();
  v20 = sub_21CB84054();
  v22 = v21;
  LOBYTE(v13) = v23;
  sub_21CB83DB4();
  v24 = sub_21CB84024();
  v26 = v25;
  LOBYTE(v5) = v27;

  sub_21C74A72C(v20, v22, v13 & 1);

  sub_21CB83E04();
  v28 = sub_21CB83FA4();
  v71 = v29;
  v72 = v28;
  v30 = v29;
  v32 = v31;
  v78 = v33;
  sub_21C74A72C(v24, v26, v5 & 1);

  v34 = sub_21CB84B14();
  v69 = v34;
  v35 = swift_getKeyPath();
  v68 = v35;
  v36 = v32 & 1;
  LOBYTE(v103) = v36;
  v70 = v36;
  v37 = v63;
  sub_21CB81014();
  v38 = sub_21CB81004();
  v40 = v39;
  v67(v37, v66);
  v103 = v38;
  v104 = v40;
  v41 = sub_21CB84054();
  v65 = v42;
  v66 = v41;
  LOBYTE(v38) = v43;
  v67 = v44;
  v64 = sub_21CB83D94();
  v45 = swift_getKeyPath();
  LOBYTE(v38) = v38 & 1;
  LOBYTE(v103) = v38;
  v46 = sub_21CB84B14();
  v47 = swift_getKeyPath();
  *&v94 = v28;
  *(&v94 + 1) = v30;
  LOBYTE(v95) = v36;
  *(&v95 + 1) = *v93;
  DWORD1(v95) = *&v93[3];
  v48 = v77;
  *(&v95 + 1) = v78;
  *(&v96 + 2) = v91;
  WORD3(v96) = v92;
  *(&v96 + 1) = v35;
  v97 = v34;
  DWORD1(v99) = *(v90 + 3);
  v49 = v90[0];
  *(&v99 + 1) = v90[0];
  WORD3(v100) = v89;
  v50 = v88;
  *(&v100 + 2) = v88;
  *(v77 + 80) = v34;
  LOWORD(v96) = 256;
  v52 = v65;
  v51 = v66;
  *&v98 = v66;
  *(&v98 + 1) = v65;
  LOBYTE(v99) = v38;
  v53 = v67;
  *(&v99 + 1) = v67;
  LOWORD(v100) = 256;
  v54 = v64;
  *(&v100 + 1) = v45;
  *&v101 = v64;
  v55 = v75;
  *v48 = v76;
  *(v48 + 8) = v55;
  v56 = v74;
  *(v48 + 16) = KeyPath;
  *(v48 + 24) = v56;
  v57 = v94;
  v58 = v96;
  *(v48 + 48) = v95;
  *(v48 + 64) = v58;
  *(v48 + 32) = v57;
  *(v48 + 88) = v98;
  v59 = v99;
  v60 = v100;
  *(&v101 + 1) = v47;
  v102 = v46;
  v61 = v101;
  *(v48 + 152) = v46;
  *(v48 + 136) = v61;
  *(v48 + 120) = v60;
  *(v48 + 104) = v59;
  v103 = v51;
  v104 = v52;
  v105 = v38;
  *&v106[3] = *(v90 + 3);
  *v106 = v49;
  v107 = v53;
  v108 = 256;
  v110 = v89;
  v109 = v50;
  v111 = v45;
  v112 = v54;
  v113 = v47;
  v114 = v46;

  sub_21C6EDBAC(&v94, v79, &qword_27CDF2868, &qword_21CBB49D0);
  sub_21C6EDBAC(&v98, v79, &qword_27CDF2870, &qword_21CBB49D8);
  sub_21C6EA794(&v103, &qword_27CDF2870, &qword_21CBB49D8);
  v79[0] = v72;
  v79[1] = v71;
  v80 = v70;
  *v81 = *v93;
  *&v81[3] = *&v93[3];
  v82 = v78;
  v83 = 256;
  v84 = v91;
  v85 = v92;
  v86 = v68;
  v87 = v69;
  sub_21C6EA794(v79, &qword_27CDF2868, &qword_21CBB49D0);
}

uint64_t sub_21C962174(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = [a1 *a4];
  type metadata accessor for PMDevice(0);
  sub_21CB85824();

  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v9 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF27E8, &qword_21CBB48E8);
  sub_21C962FE8();
  sub_21CB83F34();
}

uint64_t sub_21C96227C@<X0>(void **a1@<X0>, char a2@<W4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  *a3 = sub_21CB83074();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2820, &qword_21CBB4900);
  return sub_21C9624BC(v5, a2, (a3 + *(v6 + 44)));
}

uint64_t sub_21C9622E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22[1] = a4;
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v22 - v13;
  sub_21CB81014();
  sub_21CB81014();
  v15 = sub_21CB80FF4();
  v17 = v16;
  v18 = *(v8 + 8);
  v18(v11, v7);
  v18(v14, v7);
  v22[2] = v15;
  v22[3] = v17;
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  sub_21C71F3FC();
  v20 = a1;

  return sub_21CB84DE4();
}

uint64_t sub_21C9624BC@<X0>(void *a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2828, &qword_21CBB4908);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v13 = &v26 - v12;
  v14 = [a1 deviceImageSymbolName];
  sub_21CB855C4();

  v15 = sub_21CB84BB4();
  v16 = sub_21CB837E4();
  v27 = sub_21CB83DB4();
  KeyPath = swift_getKeyPath();
  sub_21CB85214();
  sub_21CB82374();
  *v13 = sub_21CB832F4();
  *(v13 + 1) = 0;
  v13[16] = 1;
  LODWORD(v14) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2830, &qword_21CBB4940) + 44);
  v28 = a1;
  v29 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2838, &qword_21CBB4948);
  sub_21C6EADEC(&qword_27CDF2840, &qword_27CDF2838, &qword_21CBB4948);
  sub_21CB81FC4();
  v18 = v9;
  sub_21C6EDBAC(v13, v9, &qword_27CDF2828, &qword_21CBB4908);
  *&v33 = v15;
  DWORD2(v33) = v16;
  *&v34 = KeyPath;
  v19 = KeyPath;
  v20 = v27;
  *(&v34 + 1) = v27;
  v21 = v31;
  v35 = v30;
  v36 = v31;
  v22 = v32;
  v37 = v32;
  a3[2] = v30;
  a3[3] = v21;
  a3[4] = v22;
  v23 = v34;
  *a3 = v33;
  a3[1] = v23;
  v24 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2848, &qword_21CBB4950) + 48);
  sub_21C6EDBAC(v18, v24, &qword_27CDF2828, &qword_21CBB4908);
  sub_21C6EDBAC(&v33, &v38, &qword_27CDF2850, &qword_21CBB4958);
  sub_21C6EA794(v13, &qword_27CDF2828, &qword_21CBB4908);
  sub_21C6EA794(v18, &qword_27CDF2828, &qword_21CBB4908);
  v38 = v15;
  v39 = v16;
  v40 = v19;
  v41 = v20;
  v42 = v30;
  v43 = v31;
  v44 = v32;
  return sub_21C6EA794(&v38, &qword_27CDF2850, &qword_21CBB4958);
}

uint64_t sub_21C9627DC@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = [a1 deviceName];
  v7 = sub_21CB855C4();
  v9 = v8;

  v32 = v7;
  *&v33 = v9;
  sub_21C71F3FC();
  v10 = sub_21CB84054();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_21CB83034();
  sub_21C962974(a2, a1, &v32);
  v18 = v32;
  v20 = v33;
  v19 = v34;
  v21 = v35;
  v22 = *(&v35 + 1);
  v26[72] = v14 & 1;
  *&v27 = v17;
  *(&v27 + 1) = 0x4010000000000000;
  LOBYTE(v28) = 0;
  *(&v28 + 1) = v32;
  v29 = v33;
  *&v30 = v34;
  BYTE8(v30) = v35;
  v31 = *(&v35 + 1);
  v32 = v17;
  *a3 = v10;
  *(a3 + 8) = v12;
  *(a3 + 16) = v14 & 1;
  *(a3 + 24) = v16;
  *(a3 + 96) = v22;
  v23 = v28;
  *(a3 + 32) = v27;
  *(a3 + 48) = v23;
  v24 = v30;
  *(a3 + 64) = v29;
  *(a3 + 80) = v24;
  *&v33 = 0x4010000000000000;
  BYTE8(v33) = 0;
  v34 = v18;
  v35 = v20;
  v36 = v19;
  v37 = v21;
  v38 = v22;
  sub_21C79B058(v10, v12, v14 & 1);

  sub_21C6EDBAC(&v27, v26, &qword_27CDF2858, &qword_21CBB4960);
  sub_21C6EA794(&v32, &qword_27CDF2858, &qword_21CBB4960);
  sub_21C74A72C(v10, v12, v14 & 1);
}

uint64_t sub_21C962974@<X0>(char a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21CB83124();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = 0;
  v9 = 0;
  if (a1)
  {
    v8 = sub_21CB84BB4();
    v9 = sub_21CB84AF4();
  }

  sub_21CB83114();
  sub_21CB83104();
  v10 = [a2 operatingSystemName];
  sub_21CB855C4();

  sub_21CB830F4();

  sub_21CB83104();
  v11 = [a2 operatingSystemVersion];
  sub_21CB855C4();

  sub_21CB830F4();

  sub_21CB83104();
  sub_21CB83144();
  v12 = sub_21CB84034();
  v14 = v13;
  LOBYTE(v10) = v15;
  v17 = v16;
  sub_21C963128(v8);
  LOBYTE(v10) = v10 & 1;
  sub_21C79B058(v12, v14, v10);

  sub_21C963168(v8);
  *a3 = v8;
  *(a3 + 8) = v9;
  *(a3 + 16) = v12;
  *(a3 + 24) = v14;
  *(a3 + 32) = v10;
  *(a3 + 40) = v17;
  sub_21C74A72C(v12, v14, v10);

  return sub_21C963168(v8);
}

uint64_t sub_21C962BD8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

unint64_t sub_21C962C00()
{
  result = qword_27CDF2790;
  if (!qword_27CDF2790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2788, &qword_21CBB4878);
    sub_21C962C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2790);
  }

  return result;
}

unint64_t sub_21C962C8C()
{
  result = qword_27CDF2798;
  if (!qword_27CDF2798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF27A0, &qword_21CBB4880);
    sub_21C6EADEC(&qword_27CDF27A8, &qword_27CDF27B0, &qword_21CBB4888);
    sub_21C6EADEC(&qword_27CDED860, &qword_27CDED868, &unk_21CBA7B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2798);
  }

  return result;
}

uint64_t sub_21C962E20@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_21C96227C(a1, 0, a2);
}

uint64_t sub_21C962E44(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2808, &qword_21CBB48F8);
  type metadata accessor for PMDevice(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2800, &qword_21CBB48F0);
  sub_21C6EADEC(&qword_27CDF2810, &qword_27CDF2808, &qword_21CBB48F8);
  sub_21C6EADEC(&qword_27CDF27F8, &qword_27CDF2800, &qword_21CBB48F0);
  sub_21C9630D4(&qword_27CDF2818, type metadata accessor for PMDevice);
  return sub_21CB84FF4();
}

unint64_t sub_21C962FE8()
{
  result = qword_27CDF27F0;
  if (!qword_27CDF27F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF27E8, &qword_21CBB48E8);
    sub_21C6EADEC(&qword_27CDF27F8, &qword_27CDF2800, &qword_21CBB48F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF27F0);
  }

  return result;
}

uint64_t sub_21C963098(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  return v2(&v5);
}

uint64_t sub_21C9630D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C963128(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21C963168(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21C9631A8@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_21C96227C(a1, 1, a2);
}

id sub_21C963200(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_21CB85584();

  return v6;
}

id sub_21C963420@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

id sub_21C963444(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + *a3);
  type metadata accessor for PMDevice(a1);

  v4 = sub_21CB85814();

  return v4;
}

uint64_t sub_21C9635DC(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_21C963818(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_21C9638C0;

  return sub_21C9658B0();
}

uint64_t sub_21C9638C0(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  if (v3)
  {
    if (v7)
    {
      v9 = *(v5 + 16);
      v10 = sub_21CB80B04();

      (v9)[2](v9, 0, v10);
      _Block_release(v9);
    }

    else
    {
    }
  }

  else if (v7)
  {
    v11 = *(v5 + 16);
    (v11)[2](v11, a1, 0);

    _Block_release(v11);
  }

  else
  {
  }

  v12 = *(v8 + 8);

  return v12();
}

id sub_21C963A60()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = sub_21CB85584();

  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() symbolForTypeIdentifier:v0 error:v6];

  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_21CB80B14();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

id sub_21C963B3C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t sub_21C963BB0()
{
  result = qword_27CDF2878;
  if (!qword_27CDF2878)
  {
    type metadata accessor for PMDevice(0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2878);
  }

  return result;
}

uint64_t sub_21C963C78()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21C6F35D0;

  return sub_21C963818(v2);
}

uint64_t sub_21C963D24(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_21C6F35D0;

  return v7();
}

uint64_t sub_21C963E0C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_21C702EFC;

  return v8();
}

uint64_t sub_21C963EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_21C9641E0(a3, v25 - v11);
  v13 = sub_21CB858E4();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_21C6EA794(v12, &qword_27CDF1D50, &qword_21CBA0C00);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_21CB858D4();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_21CB85874();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_21CB85644() + 32;
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

    sub_21C6EA794(a3, &qword_27CDF1D50, &qword_21CBA0C00);

    return v23;
  }

LABEL_8:
  sub_21C6EA794(a3, &qword_27CDF1D50, &qword_21CBA0C00);
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

uint64_t sub_21C9641E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C964250(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21C6F35D0;

  return sub_21C6EE100(a1, v5);
}

uint64_t sub_21C964308(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21C702EFC;

  return sub_21C6EE100(a1, v5);
}

unint64_t sub_21C9643C0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_21CB857B4();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_21CA4F920(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_21CA4F920((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_21CB85794();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_21CB856A4();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_21CB856A4();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_21CB857B4();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_21CA4F920(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_21CB857B4();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_21CA4F920(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_21CA4F920((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_21CB856A4();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

void *sub_21C964780(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF28E8, &unk_21CBB6D70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_21C9647F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_21CB857A4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_21C964D80();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_21CB86114();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_21C964D80()
{
  v0 = sub_21CB857B4();
  v4 = sub_21C964E00(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_21C964E00(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_21CB85674();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_21CB85E74();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_21C964780(v9, 0);
  v12 = sub_21C964F58(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_21CB85674();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_21CB86114();
LABEL_4:

  return sub_21CB85674();
}

unint64_t sub_21C964F58(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_21C965178(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_21CB85754();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_21CB86114();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_21C965178(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_21CB85734();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_21C965178(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_21CB85764();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x21CF15240](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *sub_21C9651F4(void *a1)
{
  result = [a1 operatingSystemVersion];
  if (result)
  {
    v2 = result;
    v3 = sub_21CB855C4();
    v5 = v4;

    v41 = 46;
    v42 = 0xE100000000000000;
    MEMORY[0x28223BE20](v6);
    v39[2] = &v41;
    v7 = sub_21C9643C0(0x7FFFFFFFFFFFFFFFLL, 1, sub_21C8ADF40, v39, v3, v5, v40);
    if (!v7[2])
    {
      goto LABEL_68;
    }

    v8 = v7[4];
    v9 = v7[5];
    v10 = v7[6];
    v11 = v7[7];
    swift_bridgeObjectRetain_n();

    v12 = MEMORY[0x21CF15150](v8, v9, v10, v11);
    v14 = v13;
    result = swift_bridgeObjectRelease_n();
    v15 = HIBYTE(v14) & 0xF;
    v16 = v12 & 0xFFFFFFFFFFFFLL;
    if (!((v14 & 0x2000000000000000) != 0 ? HIBYTE(v14) & 0xF : v12 & 0xFFFFFFFFFFFFLL))
    {
LABEL_68:

      return 0;
    }

    if ((v14 & 0x1000000000000000) != 0)
    {
      v40[0] = 0;

      v19 = sub_21C9647F4(v12, v14, 10);
      v37 = v38;
      swift_bridgeObjectRelease_n();
LABEL_65:
      if (v37)
      {
        return 0;
      }

      else
      {
        return v19;
      }
    }

    if ((v14 & 0x2000000000000000) != 0)
    {
      v41 = v12;
      v42 = v14 & 0xFFFFFFFFFFFFFFLL;
      if (v12 == 43)
      {
        if (v15)
        {
          if (--v15)
          {
            v19 = 0;
            v29 = &v41 + 1;
            while (1)
            {
              v30 = *v29 - 48;
              if (v30 > 9)
              {
                break;
              }

              v31 = 10 * v19;
              if ((v19 * 10) >> 64 != (10 * v19) >> 63)
              {
                break;
              }

              v19 = v31 + v30;
              if (__OFADD__(v31, v30))
              {
                break;
              }

              ++v29;
              if (!--v15)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_75:
        __break(1u);
        return result;
      }

      if (v12 != 45)
      {
        if (v15)
        {
          v19 = 0;
          v34 = &v41;
          while (1)
          {
            v35 = *v34 - 48;
            if (v35 > 9)
            {
              break;
            }

            v36 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              break;
            }

            v19 = v36 + v35;
            if (__OFADD__(v36, v35))
            {
              break;
            }

            v34 = (v34 + 1);
            if (!--v15)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      if (v15)
      {
        if (--v15)
        {
          v19 = 0;
          v23 = &v41 + 1;
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              break;
            }

            v25 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              break;
            }

            v19 = v25 - v24;
            if (__OFSUB__(v25, v24))
            {
              break;
            }

            ++v23;
            if (!--v15)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((v12 & 0x1000000000000000) != 0)
      {
        result = ((v14 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_21CB86114();
      }

      v18 = *result;
      if (v18 == 43)
      {
        if (v16 >= 1)
        {
          v15 = v16 - 1;
          if (v16 != 1)
          {
            v19 = 0;
            if (result)
            {
              v26 = result + 1;
              while (1)
              {
                v27 = *v26 - 48;
                if (v27 > 9)
                {
                  goto LABEL_63;
                }

                v28 = 10 * v19;
                if ((v19 * 10) >> 64 != (10 * v19) >> 63)
                {
                  goto LABEL_63;
                }

                v19 = v28 + v27;
                if (__OFADD__(v28, v27))
                {
                  goto LABEL_63;
                }

                ++v26;
                if (!--v15)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_55;
          }

          goto LABEL_63;
        }

        goto LABEL_74;
      }

      if (v18 != 45)
      {
        if (v16)
        {
          v19 = 0;
          if (result)
          {
            while (1)
            {
              v32 = *result - 48;
              if (v32 > 9)
              {
                goto LABEL_63;
              }

              v33 = 10 * v19;
              if ((v19 * 10) >> 64 != (10 * v19) >> 63)
              {
                goto LABEL_63;
              }

              v19 = v33 + v32;
              if (__OFADD__(v33, v32))
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v16)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_63:
        v19 = 0;
        LOBYTE(v15) = 1;
        goto LABEL_64;
      }

      if (v16 >= 1)
      {
        v15 = v16 - 1;
        if (v16 != 1)
        {
          v19 = 0;
          if (result)
          {
            v20 = result + 1;
            while (1)
            {
              v21 = *v20 - 48;
              if (v21 > 9)
              {
                goto LABEL_63;
              }

              v22 = 10 * v19;
              if ((v19 * 10) >> 64 != (10 * v19) >> 63)
              {
                goto LABEL_63;
              }

              v19 = v22 - v21;
              if (__OFSUB__(v22, v21))
              {
                goto LABEL_63;
              }

              ++v20;
              if (!--v15)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_55:
          LOBYTE(v15) = 0;
LABEL_64:
          v40[0] = v15;
          v37 = v15;

          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  return result;
}

void sub_21C9655F4(void *a1)
{
  v2 = [a1 model];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() _typeWithDeviceModelCode_];

    if (v4)
    {
      v5 = [v4 identifier];

      sub_21CB855C4();
      sub_21C6E8F4C(0, &qword_27CDF28E0, 0x277D1B1D8);
      v17 = sub_21C963A60();
      v18 = [v17 name];

      sub_21CB855C4();
      return;
    }
  }

  if (qword_27CDEA470 != -1)
  {
    swift_once();
  }

  v6 = sub_21CB81C84();
  __swift_project_value_buffer(v6, qword_27CE186E0);
  v7 = a1;
  v8 = sub_21CB81C64();
  v9 = sub_21CB85AF4();
  if (!os_log_type_enabled(v8, v9))
  {

    goto LABEL_10;
  }

  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v19 = v11;
  *v10 = 136315138;
  v12 = [v7 name];

  if (v12)
  {
    v13 = sub_21CB855C4();
    v15 = v14;

    v16 = sub_21C98E004(v13, v15, &v19);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_21C6E5000, v8, v9, "Failed to get info required to fetch symbol for a device %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x21CF16D90](v11, -1, -1);
    MEMORY[0x21CF16D90](v10, -1, -1);
LABEL_10:

    return;
  }

  __break(1u);
}

uint64_t sub_21C9658B0()
{
  v1 = sub_21CB80F14();
  v0[19] = v1;
  v2 = *(v1 - 8);
  v0[20] = v2;
  v3 = *(v2 + 64) + 15;
  v0[21] = swift_task_alloc();
  v4 = sub_21CB80F24();
  v0[22] = v4;
  v5 = *(v4 - 8);
  v0[23] = v5;
  v6 = *(v5 + 64) + 15;
  v0[24] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0) - 8) + 64) + 15;
  v0[25] = swift_task_alloc();
  v8 = sub_21CB80DD4();
  v0[26] = v8;
  v9 = *(v8 - 8);
  v0[27] = v9;
  v10 = *(v9 + 64) + 15;
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21C965A74, 0, 0);
}

uint64_t sub_21C965A74()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 primaryAuthKitAccount];
  v0[31] = v2;

  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = [v2 aa_altDSID];
  if (!v3)
  {

LABEL_8:
    sub_21C966A18();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
    goto LABEL_9;
  }

  v4 = v3;
  v5 = [objc_allocWithZone(MEMORY[0x277CF0220]) init];
  v0[32] = v5;
  [v5 setAltDSID_];

  v6 = sub_21CB85814();
  [v5 setOperatingSystems_];

  v7 = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
  v0[33] = v7;
  if (v7)
  {
    v8 = v7;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_21C965D74;
    v9 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF28D0, &qword_21CBB4A88);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21C9635DC;
    v0[13] = &block_descriptor_17;
    v0[14] = v9;
    [v8 deviceListWithContext:v5 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  v19 = v0[31];
  v18 = v0[32];
  sub_21C966A18();
  swift_allocError();
  *v20 = 1;
  swift_willThrow();

LABEL_9:
  v12 = v0[29];
  v11 = v0[30];
  v13 = v0[28];
  v15 = v0[24];
  v14 = v0[25];
  v16 = v0[21];

  v17 = v0[1];

  return v17();
}

uint64_t sub_21C965D74()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  if (v2)
  {
    v3 = sub_21C96694C;
  }

  else
  {
    v3 = sub_21C965E84;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21C965E84()
{
  v1 = *(v0 + 144);

  if (!v1)
  {

LABEL_8:
    v19 = *(v0 + 248);
    v18 = *(v0 + 256);
    sub_21C966A18();
    swift_allocError();
    *v20 = 1;
    swift_willThrow();

    v22 = *(v0 + 232);
    v21 = *(v0 + 240);
    v23 = *(v0 + 224);
    v25 = *(v0 + 192);
    v24 = *(v0 + 200);
    v26 = *(v0 + 168);

    v27 = *(v0 + 8);

    return v27();
  }

  v2 = [v1 deviceList];
  if (!v2)
  {
    v17 = *(v0 + 264);

    goto LABEL_8;
  }

  v3 = v2;
  v90 = v1;
  v4 = *(v0 + 232);
  v5 = *(v0 + 216);
  v92 = *(v0 + 208);
  v6 = *(v0 + 192);
  v7 = *(v0 + 200);
  v8 = *(v0 + 184);
  v98 = *(v0 + 176);
  v9 = *(v0 + 160);
  v10 = *(v0 + 168);
  v11 = *(v0 + 152);
  sub_21C6E8F4C(0, &qword_27CDF28D8, 0x277CF02C8);
  v95 = sub_21CB85824();

  v100 = MEMORY[0x277D84F90];
  v101 = MEMORY[0x277D84F90];
  sub_21CB80F04();
  (*(v9 + 104))(v10, *MEMORY[0x277CC9968], v11);
  sub_21CB80DA4();
  sub_21CB80EF4();
  v97 = *(v5 + 8);
  v97(v4, v92);
  (*(v9 + 8))(v10, v11);
  (*(v8 + 8))(v6, v98);
  v12 = *(v5 + 48);
  if (v12(v7, 1, v92) == 1)
  {
    v13 = *(v0 + 200);
    v14 = *(v0 + 208);
    v15 = *(v0 + 240);
    sub_21CB80D14();
    result = v12(v13, 1, v14);
    if (result != 1)
    {
      result = sub_21C6EA794(*(v0 + 200), &unk_27CDED250, &qword_21CBA64C0);
    }
  }

  else
  {
    result = (*(*(v0 + 216) + 32))(*(v0 + 240), *(v0 + 200), *(v0 + 208));
  }

  v28 = v95;
  if (v95 >> 62)
  {
    result = sub_21CB85FA4();
    v29 = result;
    if (result)
    {
      goto LABEL_14;
    }

LABEL_61:
    v77 = *(v0 + 264);
    v79 = *(v0 + 240);
    v78 = *(v0 + 248);
    v87 = *(v0 + 256);
    v89 = *(v0 + 232);
    v91 = *(v0 + 224);
    v80 = *(v0 + 208);
    v94 = *(v0 + 200);
    v96 = *(v0 + 192);
    v99 = *(v0 + 168);

    v81 = objc_allocWithZone(PMDeviceSharingAvailability);
    type metadata accessor for PMDevice(v81);
    v82 = sub_21CB85814();

    v83 = sub_21CB85814();

    v84 = [v81 initWithDevicesWithSharingAvailable:v82 devicesWithSharingUnavailable:v83];

    v97(v79, v80);

    v85 = *(v0 + 8);

    return v85(v84);
  }

  v29 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v29)
  {
    goto LABEL_61;
  }

LABEL_14:
  if (v29 >= 1)
  {
    v30 = 0;
    v93 = v29;
    while (1)
    {
      if ((v95 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x21CF15BD0](v30, v28);
      }

      else
      {
        v31 = *(v28 + 8 * v30 + 32);
      }

      v32 = v31;
      v33 = [v31 lastUpdatedDate];
      if (!v33)
      {
        if (qword_27CDEA470 != -1)
        {
          swift_once();
        }

        v48 = sub_21CB81C84();
        __swift_project_value_buffer(v48, qword_27CE186E0);
        v49 = v32;
        v50 = sub_21CB81C64();
        v51 = sub_21CB85AF4();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          *v52 = 138412290;
          *(v52 + 4) = v49;
          *v53 = v49;
          v54 = v49;
          _os_log_impl(&dword_21C6E5000, v50, v51, "Skipping remote device with invalid last updated date: %@", v52, 0xCu);
          sub_21C6EA794(v53, &unk_27CDF76B0, &qword_21CBA2BE0);
          v55 = v53;
          v29 = v93;
          MEMORY[0x21CF16D90](v55, -1, -1);
          MEMORY[0x21CF16D90](v52, -1, -1);
        }

        else
        {
        }

        goto LABEL_17;
      }

      v34 = *(v0 + 240);
      v35 = *(v0 + 224);
      v36 = v33;
      sub_21CB80D94();

      if ((sub_21CB80D44() & 1) == 0)
      {
        break;
      }

      v97(*(v0 + 224), *(v0 + 208));

LABEL_17:
      if (v29 == ++v30)
      {
        goto LABEL_61;
      }
    }

    v37 = [v32 name];
    if (!v37)
    {
      goto LABEL_36;
    }

    v38 = v37;
    v39 = [v32 operatingSystemName];
    if (!v39)
    {
      goto LABEL_35;
    }

    v40 = v39;
    v41 = sub_21CB855C4();
    v43 = v42;
    v44 = [v32 operatingSystemVersion];
    if (!v44)
    {
      v45 = v40;
      goto LABEL_34;
    }

    v45 = v44;
    v46 = sub_21C9651F4(v32);
    if (v47)
    {

      v38 = v40;
LABEL_34:

      v38 = v45;
LABEL_35:

LABEL_36:
      if (qword_27CDEA470 != -1)
      {
        swift_once();
      }

      v56 = sub_21CB81C84();
      __swift_project_value_buffer(v56, qword_27CE186E0);
      v57 = v32;
      v58 = sub_21CB81C64();
      v59 = sub_21CB85AF4();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v60 = 138412290;
        *(v60 + 4) = v57;
        *v61 = v57;
        v62 = v57;
        _os_log_impl(&dword_21C6E5000, v58, v59, "Skipping remote device with invalid attributes: %@", v60, 0xCu);
        sub_21C6EA794(v61, &unk_27CDF76B0, &qword_21CBA2BE0);
        v63 = v61;
        v29 = v93;
        MEMORY[0x21CF16D90](v63, -1, -1);
        MEMORY[0x21CF16D90](v60, -1, -1);
      }

      else
      {
        v62 = v58;
        v58 = v57;
      }

      v28 = v95;
      v64 = *(v0 + 224);
      v65 = *(v0 + 208);

      v97(v64, v65);
      goto LABEL_17;
    }

    v86 = v46;
    sub_21C9655F4(v32);
    v88 = v43;
    v66 = v41;
    v67 = objc_allocWithZone(PMDevice);
    v68 = sub_21CB85584();

    v69 = [v67 initWithDeviceName:v38 operatingSystemName:v40 operatingSystemVersion:v45 deviceImageSymbolName:v68];

    if (v66 == 5459817 && v88 == 0xE300000000000000)
    {

      v28 = v95;
    }

    else
    {
      v70 = v69;
      v29 = v93;
      v28 = v95;
      if ((sub_21CB86344() & 1) == 0)
      {
        if (v66 == 0x534F63616DLL && v88 == 0xE500000000000000)
        {
        }

        else
        {
          v74 = sub_21CB86344();

          if ((v74 & 1) == 0)
          {
            v97(*(v0 + 224), *(v0 + 208));

            goto LABEL_17;
          }
        }

        v71 = v70;
        if (v86 <= 13)
        {
          goto LABEL_48;
        }

        goto LABEL_56;
      }

      v69 = v70;
    }

    v71 = v69;
    if (v86 <= 16)
    {
LABEL_48:
      MEMORY[0x21CF15300]();
      if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v75 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_21CB85834();
      }

LABEL_50:
      v72 = *(v0 + 224);
      v73 = *(v0 + 208);
      sub_21CB85854();

      v97(v72, v73);
      v29 = v93;
      goto LABEL_17;
    }

LABEL_56:
    MEMORY[0x21CF15300]();
    if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v76 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_21CB85834();
    }

    goto LABEL_50;
  }

  __break(1u);
  return result;
}

uint64_t sub_21C96694C()
{
  v1 = v0[33];
  v2 = v0[34];
  v4 = v0[31];
  v3 = v0[32];
  swift_willThrow();

  v5 = v0[34];
  v7 = v0[29];
  v6 = v0[30];
  v8 = v0[28];
  v10 = v0[24];
  v9 = v0[25];
  v11 = v0[21];

  v12 = v0[1];

  return v12();
}

unint64_t sub_21C966A18()
{
  result = qword_27CDF28C8;
  if (!qword_27CDF28C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF28C8);
  }

  return result;
}

unint64_t sub_21C966A80()
{
  result = qword_27CDF28F0[0];
  if (!qword_27CDF28F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDF28F0);
  }

  return result;
}

uint64_t sub_21C966ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v30 - v10;
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v14);
  v16 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a3 + 48);
  v35 = a1;
  v36 = v4;
  v18 = v17(a1, a2, a3, v15);
  v31 = v19;
  v32 = v18;
  v33 = 0x800000021CB91C30;
  (*(v12 + 16))(v16, v4, a2);
  v20 = a1;
  v21 = AssociatedTypeWitness;
  (*(v8 + 16))(v11, v20, AssociatedTypeWitness);
  v22 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v23 = (v13 + v22 + *(v8 + 80)) & ~*(v8 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  *(v24 + 24) = a3;
  (*(v12 + 32))(v24 + v22, v16, a2);
  (*(v8 + 32))(v24 + v23, v11, v21);
  v41[0] = v32;
  v41[1] = v31;
  v38 = v41;
  v39 = 0xD000000000000014;
  v40 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  v25 = v37;
  sub_21CB84DA4();

  LOBYTE(v16) = (*(a3 + 32))(v35, a2, a3);
  KeyPath = swift_getKeyPath();
  v27 = swift_allocObject();
  *(v27 + 16) = (v16 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBA0, &qword_21CBABC80);
  v29 = (v25 + *(result + 36));
  *v29 = KeyPath;
  v29[1] = sub_21C735744;
  v29[2] = v27;
  return result;
}

uint64_t sub_21C966E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v2 = *(a1 - 8);
  v41 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v38 = v4;
  v39 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_21CB85864();
  v37 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEEBA0, &qword_21CBABC80);
  v36 = v9;
  WitnessTable = swift_getWitnessTable();
  v35 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v49 = v8;
  v50 = AssociatedTypeWitness;
  v51 = v9;
  v52 = WitnessTable;
  v53 = AssociatedConformanceWitness;
  v11 = sub_21CB85004();
  v40 = *(v11 - 8);
  v12 = *(v40 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v33 = &v31 - v16;
  swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedTypeWitness();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  sub_21CB860B4();
  v45 = v5;
  v46 = v6;
  v19 = v32;
  v47 = v32;
  v20 = *(swift_getAssociatedConformanceWitness() + 8);
  v49 = sub_21CB857E4();
  v43 = v5;
  v44 = v6;
  swift_getKeyPath();
  v21 = v39;
  v22 = v19;
  v23 = v38;
  (*(v2 + 16))(v39, v22, v38);
  v24 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v5;
  *(v25 + 24) = v6;
  (*(v2 + 32))(v25 + v24, v21, v23);
  v30 = sub_21C735EA0();
  sub_21CB84FD4();
  v48 = v30;
  v26 = swift_getWitnessTable();
  v27 = v33;
  sub_21C72BE10(v14, v11, v26);
  v28 = *(v40 + 8);
  v28(v14, v11);
  sub_21C72BE10(v27, v11, v26);
  return (v28)(v27, v11);
}

uint64_t sub_21C9672D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)) + *(*(v1 - 8) + 64);
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  return (*(v2 + 40))(v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80)), v1, v2);
}

uint64_t sub_21C967428(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return (*(v3 + 32))(a1, v2) & 1;
}

uint64_t sub_21C96746C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for PMFocusedCopyMenu() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  return sub_21C966ADC(a1, v5, v6, a2);
}

uint64_t sub_21C967524@<X0>(uint64_t a1@<X8>)
{
  sub_21CB82EB4();
  sub_21C96758C();
  sub_21CB82F94();
  result = type metadata accessor for PMDismissAction();
  v3 = (a1 + *(result + 20));
  *v3 = v4;
  v3[1] = v5;
  return result;
}

unint64_t sub_21C96758C()
{
  result = qword_27CDF2990;
  if (!qword_27CDF2990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2990);
  }

  return result;
}

uint64_t sub_21C9675F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_21CB86344() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_21C967680(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v11 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = v3[5];
        v14[4] = v3[4];
        v14[5] = v5;
        v14[6] = v3[6];
        v6 = v3[1];
        v14[0] = *v3;
        v14[1] = v6;
        v7 = v3[3];
        v14[2] = v3[2];
        v14[3] = v7;
        v8 = v4[5];
        v15[4] = v4[4];
        v15[5] = v8;
        v15[6] = v4[6];
        v9 = v4[1];
        v15[0] = *v4;
        v15[1] = v9;
        v10 = v4[3];
        v15[2] = v4[2];
        v15[3] = v10;
        sub_21C7A33F0(v14, v13);
        sub_21C7A33F0(v15, v13);
        v11 = sub_21C9DCA4C(v14, v15);
        sub_21C7A344C(v15);
        sub_21C7A344C(v14);
        if ((v11 & 1) == 0)
        {
          break;
        }

        v3 += 7;
        v4 += 7;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_21C967788(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_21C6E8F4C(0, &qword_27CDF76E0, 0x277D49B20);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x21CF15BD0](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x21CF15BD0](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_21CB85DD4();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_21CB85DD4();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_21CB85FA4();
  }

  result = sub_21CB85FA4();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_21C967A2C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21C967A88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    v4 = (a2 + 56);
    do
    {
      v5 = *(v3 - 8);
      v6 = *v3;
      v7 = *(v4 - 8);
      v8 = *v4;
      if (*(v3 - 3) == *(v4 - 3) && *(v3 - 2) == *(v4 - 2))
      {
        if (v5 != v7)
        {
          return 0;
        }
      }

      else
      {
        v10 = *(v3 - 2);
        v11 = *(v4 - 2);
        v12 = sub_21CB86344();
        result = 0;
        if (v12 & 1) == 0 || ((v5 ^ v7))
        {
          return result;
        }
      }

      sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);

      v14 = v6;

      v15 = v8;
      v16 = sub_21CB85DD4();

      if ((v16 & 1) == 0)
      {
        return 0;
      }

      v3 += 4;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_21C967C20(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      if (*v3)
      {
        if (!v5)
        {
          return 0;
        }

        v6 = *(v3 - 1) == *(v4 - 1) && *v3 == v5;
        if (!v6 && (sub_21CB86344() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v5)
      {
        return 0;
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_21C967CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_21C968CBC(&qword_27CDEAC48, MEMORY[0x277D49978]);
    v22 = sub_21CB85574();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_21C967ED8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_21C968CBC(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);
  sub_21CB810D4();

  v3 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
  swift_beginAccess();
  return sub_21C73A818(v5 + v3, a1, type metadata accessor for PMWiFiNetwork);
}

uint64_t sub_21C967FB4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = (&v15 - v3);
  swift_getKeyPath();
  v16 = v0;
  sub_21C968CBC(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);
  sub_21CB810D4();

  v5 = (v0 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network);
  swift_beginAccess();
  v7 = *v5;
  v6 = v5[1];
  v8 = *(v0 + 16);
  v9 = qword_27CDEA4C0;

  if (v9 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C746438(v8, v15);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v10 = type metadata accessor for PMWiFiNetwork();
  if ((*(*(v10 - 8) + 48))(v4, 1, v10) == 1)
  {
    sub_21C6EA794(v4, &qword_27CDEE678, &unk_21CBBA210);
    if (v6)
    {
      goto LABEL_12;
    }

LABEL_13:

    v13 = 1;
    return v13 & 1;
  }

  v12 = *v4;
  v11 = v4[1];

  sub_21C968BDC(v4, type metadata accessor for PMWiFiNetwork);
  if (!v6)
  {
    if (!v11)
    {
      goto LABEL_13;
    }

LABEL_12:

    v13 = 0;
    return v13 & 1;
  }

  if (!v11)
  {
    goto LABEL_12;
  }

  if (v7 == v12 && v11 == v6)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_21CB86344();
  }

  swift_bridgeObjectRelease_n();
  return v13 & 1;
}

uint64_t sub_21C9682A4(void *a1)
{
  v3 = type metadata accessor for PMWiFiNetwork();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
  swift_beginAccess();
  sub_21C73A818(v1 + v7, v6, type metadata accessor for PMWiFiNetwork);
  v8 = _s17PasswordManagerUI13PMWiFiNetworkV2eeoiySbAC_ACtFZ_0(v6, a1);
  sub_21C968BDC(v6, type metadata accessor for PMWiFiNetwork);
  if (v8)
  {
    swift_beginAccess();
    sub_21C968C58(a1, v1 + v7);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[1] = v1;
    sub_21C968CBC(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);
    sub_21CB810C4();
  }

  return sub_21C968BDC(a1, type metadata accessor for PMWiFiNetwork);
}

uint64_t sub_21C968494(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network;
  swift_beginAccess();
  sub_21C968C58(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_21C968500()
{
  swift_getKeyPath();
  sub_21C968CBC(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);
  sub_21CB810D4();

  v1 = v0 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration;
  v2 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration);
  v3 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration + 8);
  v4 = *(v1 + 16);
  sub_21C968B34(v2);
  return v2;
}

uint64_t sub_21C9685CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration);
  v8 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration);
  v9 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration + 8);
  v10 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration + 16);
  if (!v8)
  {
    if (!a1)
    {
      goto LABEL_4;
    }

LABEL_8:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C968CBC(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);
    sub_21CB810C4();
    sub_21C968AF4(a1);
  }

  if (!a1 || (sub_21C9675F0(*(v3 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration), a1) & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;

  return sub_21C968AF4(v8);
}

uint64_t sub_21C968758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a1 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration);
  v5 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration);
  v6 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration + 8);
  v7 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration + 16);
  *v4 = a2;
  v4[1] = a3;
  v4[2] = a4;
  sub_21C968B34(a2);
  return sub_21C968AF4(v5);
}

uint64_t sub_21C9687C0()
{
  swift_getKeyPath();
  sub_21C968CBC(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);
  sub_21CB810D4();

  return *(v0 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__showQRCode);
}

uint64_t sub_21C968868(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__showQRCode) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__showQRCode) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C968CBC(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C968990()
{
  v1 = *(v0 + 2);

  sub_21C968BDC(&v0[OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network], type metadata accessor for PMWiFiNetwork);
  v2 = *&v0[OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration + 8];
  v3 = *&v0[OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration + 16];
  sub_21C968AF4(*&v0[OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration]);
  v4 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel___observationRegistrar;
  v5 = sub_21CB81114();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21C968A90()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = (v0[2] + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  *v4 = v1;
  v4[1] = v2;
  v4[2] = v3;
  sub_21C968B34(v1);
  return sub_21C968AF4(v5);
}

uint64_t sub_21C968AF4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21C968B34(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21C968B74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C968BDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C968C58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMWiFiNetwork();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C968CBC(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_21C968D6C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21CB85FA4())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x21CF15BD0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_21C968EE8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t (*a6)(void)@<X6>, uint64_t a7@<X8>)
{
  v29 = a6;
  v13 = a3(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v25 - v17;
  v19 = *(a2 + 16);
  if (v19)
  {
    v27 = v15;
    v28 = a7;
    v20 = a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v26 = v16;
    v21 = *(v16 + 72);
    while (1)
    {
      sub_21C96C7F4(v20, v18, a4);
      v22 = a1(v18);
      if (v7)
      {
        return sub_21C719480(v18, a5);
      }

      if (v22)
      {
        break;
      }

      sub_21C719480(v18, a5);
      v20 += v21;
      if (!--v19)
      {
        v23 = 1;
        a7 = v28;
        goto LABEL_10;
      }
    }

    a7 = v28;
    sub_21C96C85C(v18, v28, v29);
    v23 = 0;
LABEL_10:
    v16 = v26;
    v15 = v27;
  }

  else
  {
    v23 = 1;
  }

  return (*(v16 + 56))(a7, v23, 1, v15);
}

uint64_t sub_21C969088@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = (a2 + 32);
    while (1)
    {
      v8 = v7[5];
      v31 = v7[4];
      v32 = v8;
      v33 = v7[6];
      v9 = v7[1];
      v28[0] = *v7;
      v28[1] = v9;
      v10 = v7[3];
      v29 = v7[2];
      v30 = v10;
      v21 = v28[0];
      v22 = v9;
      v23 = v29;
      v24 = v10;
      v25 = v31;
      v26 = v8;
      v27 = v33;
      sub_21C7A33F0(v28, &v14);
      result = v6(&v21);
      if (v3)
      {
        v18 = v25;
        v19 = v26;
        v20 = v27;
        v14 = v21;
        v15 = v22;
        v16 = v23;
        v17 = v24;
        return sub_21C7A344C(&v14);
      }

      if (result)
      {
        break;
      }

      v18 = v25;
      v19 = v26;
      v20 = v27;
      v14 = v21;
      v15 = v22;
      v16 = v23;
      v17 = v24;
      result = sub_21C7A344C(&v14);
      v7 += 7;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v11 = v26;
    a3[4] = v25;
    a3[5] = v11;
    a3[6] = v27;
    v12 = v22;
    *a3 = v21;
    a3[1] = v12;
    v13 = v24;
    a3[2] = v23;
    a3[3] = v13;
  }

  else
  {
LABEL_6:
    a3[5] = 0u;
    a3[6] = 0u;
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t sub_21C9691D4@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB058, &unk_21CBB50B0);
  v8 = *(*(v7 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v7);
  v13 = &v20 - v12;
  v14 = *(a2 + 16);
  if (v14)
  {
    v20 = v10;
    v21 = v9;
    v22 = a3;
    v15 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v16 = *(v10 + 72);
    while (1)
    {
      sub_21C6EDBAC(v15, v13, &qword_27CDEB058, &unk_21CBB50B0);
      v17 = a1(v13);
      if (v3)
      {
        return sub_21C6EA794(v13, &qword_27CDEB058, &unk_21CBB50B0);
      }

      if (v17)
      {
        break;
      }

      sub_21C6EA794(v13, &qword_27CDEB058, &unk_21CBB50B0);
      v15 += v16;
      if (!--v14)
      {
        v18 = 1;
        a3 = v22;
        goto LABEL_10;
      }
    }

    a3 = v22;
    sub_21C96C784(v13, v22);
    v18 = 0;
LABEL_10:
    v10 = v20;
    v9 = v21;
  }

  else
  {
    v18 = 1;
  }

  return (*(v10 + 56))(a3, v18, 1, v9, v11);
}

uint64_t sub_21C969460@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  return result;
}

uint64_t sub_21C9694E0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DC4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();
}

uint64_t sub_21C9695B0()
{
  swift_getKeyPath();
  sub_21C96C6E4(&qword_27CDF2520, type metadata accessor for PMAppAccountDetailsWindowModel);
  sub_21CB810D4();

  v1 = *(v0 + 48);
}

uint64_t PMAppAccountDetailsWindowModel.__allocating_init(accountID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  PMAppAccountDetailsWindowModel.init(accountID:)(a1, a2, a3, a4);
  return v11;
}

void *PMAppAccountDetailsWindowModel.init(accountID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v76 = type metadata accessor for PMAppAccountDetailsModel.State(0);
  v10 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v68 = (&v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = type metadata accessor for PMAccount.Storage(0);
  v12 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v73 = (&v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v77 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v79 = &v65 - v18;
  v80 = type metadata accessor for PMAccount(0);
  v78 = *(v80 - 8);
  v19 = *(v78 + 64);
  MEMORY[0x28223BE20](v80);
  v67 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v81 = &v65 - v22;
  MEMORY[0x28223BE20](v23);
  v82 = &v65 - v24;
  v25 = MEMORY[0x277D84FA0];
  v5[6] = 0;
  v5[7] = v25;
  v5[8] = swift_getKeyPath();
  v26 = OBJC_IVAR____TtC17PasswordManagerUI30PMAppAccountDetailsWindowModel___observationRegistrar;
  sub_21CB81104();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;

  sub_21C96A200();
  swift_getKeyPath();
  v84 = v5;
  v74 = sub_21C96C6E4(&qword_27CDF2520, type metadata accessor for PMAppAccountDetailsWindowModel);
  v75 = v26;
  sub_21CB810D4();

  v27 = v5[3];
  v28 = v5[4];
  v29 = v5[5];
  v84 = v5[2];
  v85 = v27;
  v86 = v28;
  v87 = v29;

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF29D0, &qword_21CBB4E88);
  MEMORY[0x21CF14A20](v83, v30);
  v32 = v83[0];
  v31 = v83[1];

  if (v31)
  {
    v69 = a4;
    v70 = a2;
    v71 = a1;
    v33 = v5[8];
    v34 = qword_27CDEA4C0;

    if (v34 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C7072A8(v33, v84);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v36 = v84;
    v66 = v32;
    v84 = v32;
    v85 = v31;
    MEMORY[0x28223BE20](v35);
    *(&v65 - 2) = &v84;
    v37 = v77;
    sub_21C968EE8(sub_21C96C50C, v36, type metadata accessor for PMAccount, type metadata accessor for PMAccount, type metadata accessor for PMAccount, type metadata accessor for PMAccount, v77);

    v38 = v78;
    v39 = *(v78 + 48);
    v40 = v80;
    if (v39(v37, 1, v80) == 1)
    {
      v41 = v5[8];

      sub_21CB86544();
      sub_21C7072A8(v41, v84);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_21CB81DB4();

      v43 = v84;
      v84 = v66;
      v85 = v31;
      MEMORY[0x28223BE20](v42);
      *(&v65 - 2) = &v84;
      v44 = v79;
      sub_21C968EE8(sub_21C96C8C4, v43, type metadata accessor for PMAccount, type metadata accessor for PMAccount, type metadata accessor for PMAccount, type metadata accessor for PMAccount, v79);

      if (v39(v37, 1, v40) != 1)
      {
        sub_21C6EA794(v37, &unk_27CDEBE60, &unk_21CB9FF40);
      }
    }

    else
    {

      v44 = v79;
      sub_21C96C85C(v37, v79, type metadata accessor for PMAccount);
      (*(v38 + 56))(v44, 0, 1, v40);
    }

    if (v39(v44, 1, v40) == 1)
    {

      sub_21C6EA794(v44, &unk_27CDEBE60, &unk_21CB9FF40);
      return v5;
    }

    v45 = v82;
    sub_21C96C85C(v44, v82, type metadata accessor for PMAccount);
    v46 = v45;
    v47 = v81;
    sub_21C96C7F4(v46, v81, type metadata accessor for PMAccount);
    v48 = type metadata accessor for PMAppAccountDetailsModel(0);
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    v51 = swift_allocObject();
    sub_21CB81104();
    v52 = v47 + *(v40 + 24);
    v53 = v73;
    sub_21C96C7F4(v52, v73, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C719480(v53, type metadata accessor for PMAccount.Storage);
    }

    else
    {
      v54 = *v53;
      v55 = [v54 credentialTypes];

      if (v55 == 4)
      {
        sub_21C96C85C(v81, v51 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppAccountDetailsModel__state, type metadata accessor for PMAccount);
        swift_storeEnumTagMultiPayload();
LABEL_16:
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        *(&v65 - 2) = v5;
        *(&v65 - 1) = v51;
        v84 = v5;
        sub_21CB810C4();

        sub_21C719480(v82, type metadata accessor for PMAccount);
        return v5;
      }
    }

    v56 = v81;
    v57 = v67;
    sub_21C96C7F4(v81, v67, type metadata accessor for PMAccount);
    v58 = type metadata accessor for PMCombinedAccountDetailsModel(0);
    v59 = *(v58 + 48);
    v60 = *(v58 + 52);
    swift_allocObject();
    v61 = sub_21CA4B79C(v57);
    sub_21C719480(v56, type metadata accessor for PMAccount);
    v62 = v68;
    *v68 = v61;
    swift_storeEnumTagMultiPayload();
    sub_21C96C85C(v62, v51 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppAccountDetailsModel__state, type metadata accessor for PMAppAccountDetailsModel.State);
    goto LABEL_16;
  }

  return v5;
}

uint64_t sub_21C96A0B8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);

  v5 = sub_21C7A230C(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 56);
    *(v1 + 56) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C96C6E4(&qword_27CDF2520, type metadata accessor for PMAppAccountDetailsWindowModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21C96A200()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF29E8, &unk_21CBB4FF0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v52 = &v41 - v4;
  v53 = sub_21CB85E34();
  v51 = *(v53 - 8);
  v5 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v50 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEABF8, &unk_21CBAB590);
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v7);
  v42 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF29F0, &qword_21CBB5000);
  v45 = *(v13 - 8);
  v46 = v13;
  v14 = *(v45 + 64);
  MEMORY[0x28223BE20](v13);
  v44 = &v41 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF29F8, &unk_21CBB5008);
  v48 = *(v16 - 8);
  v49 = v16;
  v17 = *(v48 + 64);
  MEMORY[0x28223BE20](v16);
  v47 = &v41 - v18;
  v19 = *(v0 + 64);
  v20 = qword_27CDEA4C0;

  if (v20 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v21 = sub_21C7072A8(v19, v54);

  v22 = *(v21 + 40);

  v54 = v22;
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = sub_21C96C658;
  *(v24 + 24) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF90, &qword_21CBA77E0);
  sub_21C6EADEC(&qword_27CDEAF98, &qword_27CDEAF90, &qword_21CBA77E0);
  sub_21CB81E04();

  swift_getKeyPath();
  v25 = OBJC_IVAR____TtC17PasswordManagerUI30PMAppAccountDetailsWindowModel___observationRegistrar;
  v54 = v1;
  sub_21C96C6E4(&qword_27CDF2520, type metadata accessor for PMAppAccountDetailsWindowModel);
  sub_21CB810D4();

  v54 = v1;
  swift_getKeyPath();
  v41 = v25;
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v54 = v1;
  swift_getKeyPath();
  sub_21CB810E4();

  v26 = *(v1 + 64);

  sub_21CB86544();
  sub_21C7072A8(v26, v54);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC00, &qword_21CB9FF10);
  sub_21CB81D84();
  swift_endAccess();

  v27 = *(v1 + 64);

  sub_21CB86544();
  sub_21C7072A8(v27, v54);

  swift_beginAccess();
  v28 = v42;
  sub_21CB81D84();
  swift_endAccess();

  sub_21C6EADEC(&qword_27CDEAC08, &qword_27CDEABF8, &unk_21CBAB590);
  v29 = v44;
  sub_21CB81DE4();
  v30 = *(v43 + 8);
  v30(v28, v7);
  v30(v12, v7);
  v31 = v50;
  sub_21CB85E24();
  v32 = [objc_opt_self() mainRunLoop];
  v54 = v32;
  v33 = sub_21CB85E14();
  v34 = v52;
  (*(*(v33 - 8) + 56))(v52, 1, 1, v33);
  sub_21C96C660();
  sub_21C6EADEC(&qword_27CDF2A08, &qword_27CDF29F0, &qword_21CBB5000);
  sub_21C96C6E4(&qword_27CDF2A10, sub_21C96C660);
  v36 = v46;
  v35 = v47;
  sub_21CB81DF4();
  sub_21C6EA794(v34, &qword_27CDF29E8, &unk_21CBB4FF0);

  (*(v51 + 8))(v31, v53);
  (*(v45 + 8))(v29, v36);
  v37 = swift_allocObject();
  swift_weakInit();
  v38 = swift_allocObject();
  *(v38 + 16) = sub_21C96C6AC;
  *(v38 + 24) = v37;
  sub_21C6EADEC(&qword_27CDF2A18, &qword_27CDF29F8, &unk_21CBB5008);
  v39 = v49;
  sub_21CB81E04();

  (*(v48 + 8))(v35, v39);
  swift_getKeyPath();
  v54 = v1;
  sub_21CB810D4();

  v54 = v1;
  swift_getKeyPath();
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v54 = v1;
  swift_getKeyPath();
  sub_21CB810E4();
}

uint64_t sub_21C96ABAC()
{
  swift_getKeyPath();
  v6 = v0;
  sub_21C96C6E4(&qword_27CDF2520, type metadata accessor for PMAppAccountDetailsWindowModel);
  sub_21CB810D4();

  v1 = v0[2];
  v2 = v6[3];
  v4 = v6[4];
  v3 = v6[5];

  return v1;
}

uint64_t sub_21C96AC78@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C96C6E4(&qword_27CDF2520, type metadata accessor for PMAppAccountDetailsWindowModel);
  sub_21CB810D4();

  v4 = v3[3];
  v6 = v3[4];
  v5 = v3[5];
  *a2 = v3[2];
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
}

uint64_t sub_21C96AD3C(__int128 *a1, uint64_t *a2)
{
  v6 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *a2;
  swift_getKeyPath();
  sub_21C96C6E4(&qword_27CDF2520, type metadata accessor for PMAppAccountDetailsWindowModel);
  sub_21CB810C4();
}

uint64_t type metadata accessor for PMAppAccountDetailsWindowModel()
{
  result = qword_27CDF29D8;
  if (!qword_27CDF29D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C96AE68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[5];
  a1[2] = a2;
  a1[3] = a3;
  a1[4] = a4;
  a1[5] = a5;
}

uint64_t sub_21C96AEE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = a2;
}

uint64_t sub_21C96AF20()
{
  swift_getKeyPath();
  sub_21C96C6E4(&qword_27CDF2520, type metadata accessor for PMAppAccountDetailsWindowModel);
  sub_21CB810D4();

  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t sub_21C96AFD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C96C6E4(&qword_27CDF2520, type metadata accessor for PMAppAccountDetailsWindowModel);
  sub_21CB810D4();

  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_21C96B098(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 56);
  *(a1 + 56) = a2;
}

uint64_t sub_21C96B100(void *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v23 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    swift_getKeyPath();
    v10 = OBJC_IVAR____TtC17PasswordManagerUI30PMAppAccountDetailsWindowModel___observationRegistrar;
    v26 = v9;
    sub_21C96C6E4(&qword_27CDF2520, type metadata accessor for PMAppAccountDetailsWindowModel);
    sub_21CB810D4();

    v11 = *(v9 + 24);
    v26 = *(v9 + 16);
    v27 = v11;
    v28 = *(v9 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF29D0, &qword_21CBB4E88);
    MEMORY[0x21CF14A20](&v24);
    if (v25)
    {
      if (v24 == *a1 && v25 == a1[1])
      {

LABEL_7:
        v23[1] = v10;
        v13 = *(v9 + 64);
        v14 = qword_27CDEA4C0;

        if (v14 != -1)
        {
          swift_once();
        }

        sub_21CB86544();
        sub_21C7072A8(v13, v26);

        swift_getKeyPath();
        swift_getKeyPath();
        sub_21CB81DB4();

        v16 = v26;
        v18 = *a2;
        v17 = a2[1];
        v26 = *a2;
        v27 = v17;
        MEMORY[0x28223BE20](v15);
        v23[-2] = &v26;
        sub_21C968EE8(sub_21C96C8C4, v16, type metadata accessor for PMAccount, type metadata accessor for PMAccount, type metadata accessor for PMAccount, type metadata accessor for PMAccount, v7);

        v19 = type metadata accessor for PMAccount(0);
        if ((*(*(v19 - 8) + 48))(v7, 1, v19) == 1)
        {

          return sub_21C6EA794(v7, &unk_27CDEBE60, &unk_21CB9FF40);
        }

        sub_21C6EA794(v7, &unk_27CDEBE60, &unk_21CB9FF40);
        swift_getKeyPath();
        v26 = v9;
        sub_21CB810D4();

        v20 = *(v9 + 24);
        v21 = *(v9 + 32);
        v22 = *(v9 + 40);
        v26 = *(v9 + 16);
        v27 = v20;
        *&v28 = v21;
        *(&v28 + 1) = v22;
        v24 = v18;
        v25 = v17;

        sub_21CB84F34();
      }

      v12 = sub_21CB86344();

      if (v12)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t sub_21C96B53C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v97 = a2;
  v102 = a1;
  v2 = type metadata accessor for PMAccount.Storage(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC50, &unk_21CBA00A0);
  v6 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v99 = v87 - v7;
  v8 = type metadata accessor for PMAppAccountDetailsModel.State(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v93 = (v87 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v92 = (v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v103 = v87 - v18;
  MEMORY[0x28223BE20](v19);
  v101 = v87 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = v87 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = v87 - v25;
  v27 = type metadata accessor for PMAccount(0);
  v104 = *(v27 - 8);
  v28 = v104[8];
  MEMORY[0x28223BE20](v27);
  v30 = v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v96 = (v87 - v32);
  MEMORY[0x28223BE20](v33);
  v35 = v87 - v34;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v37 = result;
    v90 = v30;
    v87[1] = v2;
    v88 = v5;
    v87[0] = v11;
    v100 = v35;
    v91 = v8;
    swift_getKeyPath();
    v38 = OBJC_IVAR____TtC17PasswordManagerUI30PMAppAccountDetailsWindowModel___observationRegistrar;
    v107 = v37;
    v94 = sub_21C96C6E4(&qword_27CDF2520, type metadata accessor for PMAppAccountDetailsWindowModel);
    v95 = v38;
    sub_21CB810D4();

    v39 = v37[3];
    v40 = v37[4];
    v41 = v37[5];
    v107 = v37[2];
    v108 = v39;
    v109 = v40;
    v110 = v41;

    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF29D0, &qword_21CBB4E88);
    MEMORY[0x21CF14A20](&v105);
    v43 = v105;
    v42 = v106;

    if (!v42)
    {
    }

    v107 = v43;
    v108 = v42;
    MEMORY[0x28223BE20](v44);
    v87[-2] = &v107;
    sub_21C968EE8(sub_21C96C8C4, v102, type metadata accessor for PMAccount, type metadata accessor for PMAccount, type metadata accessor for PMAccount, type metadata accessor for PMAccount, v23);
    v45 = v104;
    v46 = v104[6];
    v47 = v46(v23, 1, v27);
    if (v47 == 1)
    {
      v107 = v43;
      v108 = v42;
      MEMORY[0x28223BE20](v47);
      v87[-2] = &v107;
      sub_21C968EE8(sub_21C96C8C4, v97, type metadata accessor for PMAccount, type metadata accessor for PMAccount, type metadata accessor for PMAccount, type metadata accessor for PMAccount, v26);
      v102 = 0;

      if (v46(v23, 1, v27) != 1)
      {
        sub_21C6EA794(v23, &unk_27CDEBE60, &unk_21CB9FF40);
      }
    }

    else
    {
      v102 = 0;

      sub_21C96C85C(v23, v26, type metadata accessor for PMAccount);
      (v45[7])(v26, 0, 1, v27);
    }

    v48 = v100;
    v49 = v103;
    if (v46(v26, 1, v27) == 1)
    {
      sub_21C6EA794(v26, &unk_27CDEBE60, &unk_21CB9FF40);
      swift_getKeyPath();
      v107 = v37;
      sub_21CB810D4();

      v50 = v37[3];
      v51 = v37[4];
      v52 = v37[5];
      v107 = v37[2];
      v108 = v50;
      v109 = v51;
      v110 = v52;
      v105 = 0;
      v106 = 0;

      sub_21CB84F34();
    }

    v97 = v46;
    sub_21C96C85C(v26, v48, type metadata accessor for PMAccount);
    swift_getKeyPath();
    v107 = v37;
    sub_21CB810D4();

    v53 = v37[6];
    if (v53)
    {
      swift_getKeyPath();
      v107 = v53;
      sub_21C96C6E4(&qword_27CDED418, type metadata accessor for PMAppAccountDetailsModel);

      sub_21CB810D4();

      v54 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppAccountDetailsModel__state;
      swift_beginAccess();
      v55 = v53 + v54;
      v56 = v93;
      sub_21C96C7F4(v55, v93, type metadata accessor for PMAppAccountDetailsModel.State);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v57 = v101;
        sub_21C96C85C(v56, v101, type metadata accessor for PMAccount);
      }

      else
      {
        v59 = *v56;
        swift_getKeyPath();
        swift_getKeyPath();
        v57 = v101;
        sub_21CB81DB4();

        v49 = v103;
      }

      v58 = 0;
    }

    else
    {
      v58 = 1;
      v57 = v101;
    }

    v60 = v104[7];
    v60(v57, v58, 1, v27);
    sub_21C96C7F4(v48, v49, type metadata accessor for PMAccount);
    v60(v49, 0, 1, v27);
    v61 = v99;
    v62 = *(v98 + 48);
    sub_21C6EDBAC(v57, v99, &unk_27CDEBE60, &unk_21CB9FF40);
    sub_21C6EDBAC(v49, v61 + v62, &unk_27CDEBE60, &unk_21CB9FF40);
    v63 = v97;
    if (v97(v61, 1, v27) == 1)
    {
      sub_21C6EA794(v49, &unk_27CDEBE60, &unk_21CB9FF40);
      sub_21C6EA794(v57, &unk_27CDEBE60, &unk_21CB9FF40);
      v64 = v63(v61 + v62, 1, v27);
      v65 = v100;
      if (v64 == 1)
      {
        sub_21C6EA794(v61, &unk_27CDEBE60, &unk_21CB9FF40);
LABEL_28:
        sub_21C719480(v65, type metadata accessor for PMAccount);
      }
    }

    else
    {
      v66 = v92;
      sub_21C6EDBAC(v61, v92, &unk_27CDEBE60, &unk_21CB9FF40);
      if (v63(v61 + v62, 1, v27) != 1)
      {
        v83 = v61 + v62;
        v84 = v96;
        sub_21C96C85C(v83, v96, type metadata accessor for PMAccount);
        v85 = v66;
        v86 = _s17PasswordManagerUI9PMAccountV2eeoiySbAC_ACtFZ_0(v66, v84);
        sub_21C719480(v84, type metadata accessor for PMAccount);
        sub_21C6EA794(v103, &unk_27CDEBE60, &unk_21CB9FF40);
        sub_21C6EA794(v101, &unk_27CDEBE60, &unk_21CB9FF40);
        sub_21C719480(v85, type metadata accessor for PMAccount);
        sub_21C6EA794(v61, &unk_27CDEBE60, &unk_21CB9FF40);
        v67 = v88;
        v65 = v100;
        if (v86)
        {
          goto LABEL_28;
        }

LABEL_21:
        v68 = v90;
        sub_21C96C7F4(v65, v90, type metadata accessor for PMAccount);
        v69 = type metadata accessor for PMAppAccountDetailsModel(0);
        v70 = *(v69 + 48);
        v71 = *(v69 + 52);
        v72 = swift_allocObject();
        sub_21CB81104();
        sub_21C96C7F4(v68 + *(v27 + 24), v67, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21C719480(v67, type metadata accessor for PMAccount.Storage);
        }

        else
        {
          v73 = *v67;
          v74 = [*v67 credentialTypes];

          if (v74 == 4)
          {
            sub_21C96C85C(v90, v72 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppAccountDetailsModel__state, type metadata accessor for PMAccount);
            swift_storeEnumTagMultiPayload();
LABEL_26:
            KeyPath = swift_getKeyPath();
            MEMORY[0x28223BE20](KeyPath);
            v87[-2] = v37;
            v87[-1] = v72;
            v105 = v37;
            sub_21CB810C4();

            sub_21C719480(v65, type metadata accessor for PMAccount);
          }
        }

        v75 = v90;
        v76 = v96;
        sub_21C96C7F4(v90, v96, type metadata accessor for PMAccount);
        v77 = type metadata accessor for PMCombinedAccountDetailsModel(0);
        v78 = *(v77 + 48);
        v79 = *(v77 + 52);
        swift_allocObject();
        v80 = sub_21CA4B79C(v76);
        sub_21C719480(v75, type metadata accessor for PMAccount);
        v81 = v87[0];
        *v87[0] = v80;
        swift_storeEnumTagMultiPayload();
        sub_21C96C85C(v81, v72 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppAccountDetailsModel__state, type metadata accessor for PMAppAccountDetailsModel.State);
        goto LABEL_26;
      }

      sub_21C6EA794(v103, &unk_27CDEBE60, &unk_21CB9FF40);
      sub_21C6EA794(v101, &unk_27CDEBE60, &unk_21CB9FF40);
      sub_21C719480(v66, type metadata accessor for PMAccount);
      v65 = v100;
    }

    sub_21C6EA794(v61, &qword_27CDEAC50, &unk_21CBA00A0);
    v67 = v88;
    goto LABEL_21;
  }

  return result;
}

char *PMAppAccountDetailsWindowModel.deinit()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = *(v0 + 5);

  v4 = *(v0 + 6);

  v5 = *(v0 + 7);

  v6 = *(v0 + 8);

  v7 = OBJC_IVAR____TtC17PasswordManagerUI30PMAppAccountDetailsWindowModel___observationRegistrar;
  v8 = sub_21CB81114();
  (*(*(v8 - 8) + 8))(&v0[v7], v8);
  return v0;
}

uint64_t PMAppAccountDetailsWindowModel.__deallocating_deinit()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = *(v0 + 5);

  v4 = *(v0 + 6);

  v5 = *(v0 + 7);

  v6 = *(v0 + 8);

  v7 = OBJC_IVAR____TtC17PasswordManagerUI30PMAppAccountDetailsWindowModel___observationRegistrar;
  v8 = sub_21CB81114();
  (*(*(v8 - 8) + 8))(&v0[v7], v8);
  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21C96C4B8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21CB86344() & 1;
  }
}

uint64_t sub_21C96C548()
{
  result = sub_21CB81114();
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

unint64_t sub_21C96C660()
{
  result = qword_27CDF2A00;
  if (!qword_27CDF2A00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDF2A00);
  }

  return result;
}

uint64_t sub_21C96C6B4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_21C96C6E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C96C72C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 48);
  *(v1 + 48) = *(v0 + 24);
}

uint64_t sub_21C96C784(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB058, &unk_21CBB50B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C96C7F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C96C85C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C96C8F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_21C96C94C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t type metadata accessor for PMEditGroupFlow()
{
  result = qword_27CDF2A28;
  if (!qword_27CDF2A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C96C9E8()
{
  type metadata accessor for PMSharingGroup();
  if (v0 <= 0x3F)
  {
    sub_21C7226D8();
    if (v1 <= 0x3F)
    {
      sub_21C721F48();
      if (v2 <= 0x3F)
      {
        sub_21C721FAC(319, &qword_27CDF2A40, MEMORY[0x277CDD968], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_21C721FAC(319, &qword_27CDEB178, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_21C96CB14(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x21CF15F90](0);
  }

  MEMORY[0x21CF15F90](1);
  v3 = *(a2 + 16);
  result = MEMORY[0x21CF15F90](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v7 = v5[2];
      v8 = *v5;
      v18 = v5[1];
      v19 = v7;
      v17 = v8;
      v9 = v5[3];
      v10 = v5[4];
      v11 = v5[6];
      v22 = v5[5];
      v23 = v11;
      v20 = v9;
      v21 = v10;
      if (*(&v8 + 1))
      {
        sub_21CB864A4();
        sub_21C7A33F0(&v17, v16);
        sub_21CB854C4();
        if (*(&v18 + 1))
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_21CB864A4();
        sub_21C7A33F0(&v17, v16);
        if (*(&v18 + 1))
        {
LABEL_8:
          sub_21CB864A4();
          sub_21CB854C4();
          goto LABEL_11;
        }
      }

      sub_21CB864A4();
LABEL_11:
      sub_21CB854C4();
      sub_21CB854C4();
      sub_21CB854C4();
      v12 = v23;
      v13 = BYTE2(v22);
      v14 = BYTE1(v22);
      sub_21CB864A4();
      MEMORY[0x21CF15F90](v14);
      MEMORY[0x21CF15F90](v13);
      if (v12)
      {
        sub_21CB864A4();
        sub_21CB854C4();
        v15 = *(&v23 + 1);
        if (!*(&v23 + 1))
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_21CB864A4();
        v15 = *(&v23 + 1);
        if (!*(&v23 + 1))
        {
LABEL_15:
          sub_21CB864A4();
          goto LABEL_5;
        }
      }

      sub_21CB864A4();
      v6 = v15;
      sub_21CB85DE4();

LABEL_5:
      result = sub_21C7A344C(&v17);
      v5 += 7;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_21C96CD24()
{
  v1 = *v0;
  sub_21CB86484();
  sub_21C96CB14(v3, v1);
  return sub_21CB864D4();
}

uint64_t sub_21C96CD74()
{
  v1 = *v0;
  sub_21CB86484();
  sub_21C96CB14(v3, v1);
  return sub_21CB864D4();
}

uint64_t sub_21C96CDB8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3)
    {
      return sub_21C967680(v2, v3);
    }

    return 0;
  }

  return !v3;
}

unint64_t sub_21C96CDE4()
{
  result = qword_27CDF2A48;
  if (!qword_27CDF2A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2A48);
  }

  return result;
}

uint64_t sub_21C96CE54(uint64_t a1)
{
  v2 = type metadata accessor for PMEditGroupFlow();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21C96E104(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMEditGroupFlow);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_21C96E03C(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for PMEditGroupFlow);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A60, &qword_21CBB51D0);
  sub_21C8158AC();
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2A68, &qword_21CBB51D8);
  v8 = sub_21C96DCBC();
  v10[0] = v7;
  v10[1] = v8;
  swift_getOpaqueTypeConformance2();
  sub_21CB84564();
}

uint64_t sub_21C96D018(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A68, &qword_21CBB51D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  sub_21C96D0DC(*a1, a2, &v9 - v6);
  sub_21C96DCBC();
  sub_21CB84674();
  return sub_21C96DEAC(v7);
}

uint64_t sub_21C96D0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v53 = type metadata accessor for PMNotifyGroupMembersView();
  v5 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A98, &qword_21CBB51F0);
  v8 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v51 = &v47 - v9;
  v10 = type metadata accessor for PMEditGroupFlow();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PMSharingGroup();
  v48 = *(v14 - 8);
  v15 = *(v48 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - v18;
  v49 = type metadata accessor for PMEditGroupView();
  v20 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_21C96E104(a2, v7, type metadata accessor for PMSharingGroup);
    sub_21C96E104(a2, &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMEditGroupFlow);
    v23 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v24 = swift_allocObject();
    sub_21C96E03C(v13, v24 + v23, type metadata accessor for PMEditGroupFlow);
    v25 = v53;
    *&v7[*(v53 + 20)] = a1;
    v26 = &v7[v25[6]];
    *v26 = sub_21C96DF14;
    v26[1] = v24;
    v27 = &v7[v25[7]];
    v54 = 0;

    sub_21CB84D44();
    v28 = v56;
    *v27 = v55;
    *(v27 + 1) = v28;
    v29 = &v7[v25[8]];
    type metadata accessor for PMGlobalAnimationNamespaceContainer();
    sub_21C96DFF4(&qword_27CDEADC8, type metadata accessor for PMGlobalAnimationNamespaceContainer);
    *v29 = sub_21CB82084();
    v29[8] = v30 & 1;
    sub_21C96E104(v7, v51, type metadata accessor for PMNotifyGroupMembersView);
    swift_storeEnumTagMultiPayload();
    sub_21C96DFF4(&qword_27CDF2A88, type metadata accessor for PMEditGroupView);
    sub_21C96DFF4(&qword_27CDF2A90, type metadata accessor for PMNotifyGroupMembersView);
    sub_21CB83494();
    v31 = type metadata accessor for PMNotifyGroupMembersView;
    v32 = v7;
  }

  else
  {
    sub_21C96E104(a2, v19, type metadata accessor for PMSharingGroup);
    sub_21C96E104(a2, &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMEditGroupFlow);
    v33 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v34 = swift_allocObject();
    sub_21C96E03C(v13, v34 + v33, type metadata accessor for PMEditGroupFlow);
    v35 = v49;
    v36 = &v22[*(v49 + 28)];
    type metadata accessor for PMPasswordManagerState();
    sub_21C96DFF4(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
    *v36 = sub_21CB82B84();
    v36[1] = v37;
    v38 = &v22[v35[8]];
    *v38 = sub_21CB81F94() & 1;
    *(v38 + 1) = v39;
    v38[16] = v40 & 1;
    v41 = v35[9];
    *&v22[v41] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
    swift_storeEnumTagMultiPayload();
    sub_21C96E104(v19, v22, type metadata accessor for PMSharingGroup);
    v42 = &v22[v35[5]];
    *v42 = sub_21C96DF84;
    v42[1] = v34;
    sub_21C96E03C(v19, v16, type metadata accessor for PMSharingGroup);
    v43 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v44 = swift_allocObject();
    sub_21C96E03C(v16, v44 + v43, type metadata accessor for PMSharingGroup);
    v45 = &v22[v35[6]];
    *v45 = sub_21C96E0A4;
    *(v45 + 1) = v44;
    v45[16] = 0;
    sub_21C96E104(v22, v51, type metadata accessor for PMEditGroupView);
    swift_storeEnumTagMultiPayload();
    sub_21C96DFF4(&qword_27CDF2A88, type metadata accessor for PMEditGroupView);
    sub_21C96DFF4(&qword_27CDF2A90, type metadata accessor for PMNotifyGroupMembersView);
    sub_21CB83494();
    v31 = type metadata accessor for PMEditGroupView;
    v32 = v22;
  }

  return sub_21C96E16C(v32, v31);
}

uint64_t sub_21C96D7F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB82644();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_21CB823B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 - 1) >= 2)
  {
    if (a1)
    {
      result = sub_21CA2EEF0();
      if (result)
      {
        v20 = *(type metadata accessor for PMEditGroupFlow() + 28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);
        sub_21CB84D54();
        v21[1] = a1;
        sub_21C8158AC();
        sub_21CB82634();
        return sub_21CB84D64();
      }
    }

    else
    {
      v16 = type metadata accessor for PMEditGroupFlow();
      v17 = a2 + *(v16 + 32);
      sub_21C95B2C8(v10);
      sub_21CB823A4();
      (*(v7 + 8))(v10, v6);
      v18 = a2 + *(v16 + 20);
      v19 = *(v18 + 8);
      return (*v18)(0);
    }
  }

  else
  {
    v11 = type metadata accessor for PMEditGroupFlow();
    v12 = a2 + *(v11 + 32);
    sub_21C95B2C8(v10);
    sub_21CB823A4();
    (*(v7 + 8))(v10, v6);
    v13 = a2 + *(v11 + 20);
    v14 = *(v13 + 8);
    return (*v13)(1);
  }

  return result;
}

uint64_t sub_21C96DA18(uint64_t a1, uint64_t a2)
{
  v3 = sub_21CB823B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMEditGroupFlow();
  v9 = a2 + *(v8 + 32);
  sub_21C95B2C8(v7);
  sub_21CB823A4();
  (*(v4 + 8))(v7, v3);
  v10 = a2 + *(v8 + 20);
  v11 = *(v10 + 8);
  return (*v10)(0);
}

uint64_t sub_21C96DB18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A50, &qword_21CBB51C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = *(a1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);
  sub_21CB84D74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A58, &qword_21CBB51C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2A60, &qword_21CBB51D0);
  sub_21C8158AC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2A68, &qword_21CBB51D8);
  sub_21C96DCBC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_21CB82904();
}

unint64_t sub_21C96DCBC()
{
  result = qword_27CDF2A70;
  if (!qword_27CDF2A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2A68, &qword_21CBB51D8);
    sub_21C96DD40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2A70);
  }

  return result;
}

unint64_t sub_21C96DD40()
{
  result = qword_27CDF2A78;
  if (!qword_27CDF2A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2A80, &unk_21CBB51E0);
    sub_21C96DFF4(&qword_27CDF2A88, type metadata accessor for PMEditGroupView);
    sub_21C96DFF4(&qword_27CDF2A90, type metadata accessor for PMNotifyGroupMembersView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2A78);
  }

  return result;
}

uint64_t sub_21C96DE2C(uint64_t *a1)
{
  v3 = *(type metadata accessor for PMEditGroupFlow() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C96D018(a1, v4);
}

uint64_t sub_21C96DEAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A68, &qword_21CBB51D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C96DF14(char a1)
{
  v3 = *(type metadata accessor for PMEditGroupFlow() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C96DA18(a1 & 1, v4);
}

uint64_t sub_21C96DF84(uint64_t a1)
{
  v3 = *(type metadata accessor for PMEditGroupFlow() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C96D7F8(a1, v4);
}

uint64_t sub_21C96DFF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C96E03C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C96E0A4()
{
  v1 = *(type metadata accessor for PMSharingGroup() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21C96E298(v2);
}

uint64_t sub_21C96E104(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C96E16C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21C96E1DC()
{
  result = qword_27CDF2AA0;
  if (!qword_27CDF2AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2AA8, qword_21CBB5230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2AA0);
  }

  return result;
}

unint64_t sub_21C96E244()
{
  result = qword_27CDF2AB0;
  if (!qword_27CDF2AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2AB0);
  }

  return result;
}

uint64_t sub_21C96E298(uint64_t a1)
{
  v2 = type metadata accessor for PMSharingGroup();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C97A15C(a1, v5, type metadata accessor for PMSharingGroup);
  type metadata accessor for PMGroupMembersProviderMain();
  v6 = swift_allocObject();
  *(v6 + 16) = [objc_opt_self() sharedManager];
  type metadata accessor for PMGroupManagerMain();
  v7 = swift_allocObject();
  return sub_21C979CE4(v5, v6, v7);
}

uint64_t sub_21C96E380@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v197 = a1;
  v214 = sub_21CB81024();
  v221 = *(v214 - 8);
  v3 = *(v221 + 64);
  MEMORY[0x28223BE20](v214);
  v213 = v175 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMEditGroupView();
  v6 = *(v5 - 8);
  v208 = (v5 - 8);
  v216 = v6;
  v198 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v226 = v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = sub_21CB829D4();
  v227 = *(v224 - 8);
  v8 = *(v227 + 64);
  MEMORY[0x28223BE20](v224);
  v212 = v175 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = sub_21CB82FD4();
  v10 = *(v225 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v225);
  v13 = v175 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2AE0, &qword_21CBB5320);
  v177 = *(v14 - 8);
  v15 = *(v177 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v175 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2AE8, &qword_21CBB5328);
  v19 = *(v18 - 8);
  v179 = v18;
  v180 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v175 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2AF0, &qword_21CBB5330);
  v24 = *(v23 - 8);
  v181 = v23;
  v182 = v24;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v176 = v175 - v26;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2AF8, &qword_21CBB5338);
  v223 = *(v220 - 8);
  v27 = *(v223 + 64);
  MEMORY[0x28223BE20](v220);
  v178 = v175 - v28;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B00, &qword_21CBB5340);
  v29 = *(*(v215 - 8) + 64);
  MEMORY[0x28223BE20](v215);
  v217 = v175 - v30;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B08, &qword_21CBB5348);
  v183 = *(v202 - 8);
  v31 = *(v183 + 64);
  MEMORY[0x28223BE20](v202);
  v218 = v175 - v32;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B10, &qword_21CBB5350);
  v185 = *(v200 - 1);
  v33 = *(v185 + 8);
  MEMORY[0x28223BE20](v200);
  v219 = v175 - v34;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B18, &qword_21CBB5358);
  v186 = *(v201 - 1);
  v35 = *(v186 + 64);
  MEMORY[0x28223BE20](v201);
  v203 = v175 - v36;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B20, &qword_21CBB5360);
  v187 = *(v204 - 8);
  v37 = *(v187 + 64);
  MEMORY[0x28223BE20](v204);
  v199 = v175 - v38;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B28, &qword_21CBB5368);
  v188 = *(v206 - 8);
  v39 = v188[8];
  MEMORY[0x28223BE20](v206);
  v205 = (v175 - v40);
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B30, &qword_21CBB5370);
  v189 = *(v209 - 8);
  v41 = *(v189 + 64);
  MEMORY[0x28223BE20](v209);
  v207 = v175 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B38, &qword_21CBB5378);
  v190 = *(v43 - 8);
  v191 = v43;
  v44 = *(v190 + 64);
  MEMORY[0x28223BE20](v43);
  v210 = v175 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B40, &qword_21CBB5380);
  v192 = *(v46 - 8);
  v193 = v46;
  v47 = *(v192 + 64);
  MEMORY[0x28223BE20](v46);
  v211 = v175 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B48, &qword_21CBB5388);
  v195 = *(v49 - 8);
  v196 = v49;
  v50 = *(v195 + 64);
  MEMORY[0x28223BE20](v49);
  v194 = v175 - v51;
  v235 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B50, &qword_21CBB5390);
  v184 = MEMORY[0x277CE14C0];
  sub_21C6EADEC(&qword_27CDF2B58, &qword_27CDF2B50, &qword_21CBB5390);
  sub_21CB83EF4();
  v52 = v225;
  (*(v10 + 104))(v13, *MEMORY[0x277CDDDC0], v225);
  v53 = sub_21C6EADEC(&qword_27CDF2B60, &qword_27CDF2AE0, &qword_21CBB5320);
  sub_21CB84684();
  (*(v10 + 8))(v13, v52);
  (*(v177 + 8))(v17, v14);
  v54 = v2;
  v238 = sub_21C9734F4();
  v239 = v55;
  v246 = v14;
  v247 = v53;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v57 = sub_21C71F3FC();
  v58 = v176;
  v59 = v179;
  v60 = MEMORY[0x277D837D0];
  v61 = v57;
  v225 = v57;
  sub_21CB842F4();

  (*(v180 + 8))(v22, v59);
  v62 = v212;
  sub_21CB85294();
  v238 = v59;
  v239 = v60;
  v240 = OpaqueTypeConformance2;
  v241 = v61;
  v63 = swift_getOpaqueTypeConformance2();
  v64 = sub_21C97ACD0(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
  v65 = v178;
  v66 = v181;
  v67 = v224;
  sub_21CB849C4();
  (*(v227 + 8))(v62, v67);
  (*(v182 + 8))(v58, v66);
  v222 = v54;
  v234 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B68, &qword_21CBB5398);
  v238 = v66;
  v239 = v67;
  v240 = v63;
  v241 = v64;
  swift_getOpaqueTypeConformance2();
  v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B70, &qword_21CBB53A0);
  v69 = sub_21C6EADEC(&qword_27CDF2B78, &qword_27CDF2B70, &qword_21CBB53A0);
  v238 = v68;
  v239 = v69;
  swift_getOpaqueTypeConformance2();
  v70 = v217;
  v71 = v220;
  sub_21CB84894();
  (*(v223 + 8))(v65, v71);
  v72 = v54 + *(v208 + 8);
  v73 = *v72;
  v74 = *(v72 + 8);
  LODWORD(v58) = *(v72 + 16);
  v75 = type metadata accessor for PMEditGroupViewModel();
  v76 = sub_21C97ACD0(&qword_27CDF2AD8, type metadata accessor for PMEditGroupViewModel);
  v77 = v73;
  v78 = v75;
  sub_21CB82134();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  LOBYTE(v73) = v238;
  KeyPath = swift_getKeyPath();
  v80 = swift_allocObject();
  *(v80 + 16) = v73;
  v81 = &v70[*(v215 + 36)];
  *v81 = KeyPath;
  v81[1] = sub_21C735744;
  v81[2] = v80;
  v223 = v74;
  sub_21CB82144();
  swift_getKeyPath();
  sub_21CB82694();

  v82 = v238;
  v83 = v239;
  LODWORD(KeyPath) = v240;
  sub_21CB82134();
  v84 = KeyPath;
  v85 = v217;
  sub_21C97431C(v82, v83, v84, v218);

  sub_21C6EA794(v85, &qword_27CDF2B00, &qword_21CBB5340);
  v227 = v78;
  sub_21CB82144();
  swift_getKeyPath();
  sub_21CB82694();

  v86 = v238;
  v87 = v239;
  LODWORD(v85) = v240;
  v224 = v77;
  LODWORD(v77) = v58;
  sub_21CB82134();
  v88 = v218;
  sub_21C97473C(v86, v87, v85, v219);

  (*(v183 + 8))(v88, v202);
  sub_21CB82144();
  swift_getKeyPath();
  sub_21CB82694();

  v89 = v238;
  v90 = v239;
  LODWORD(v85) = v240;
  sub_21CB82134();
  v91 = v85;
  v92 = v219;
  sub_21C974B2C(v89, v90, v91, v203);

  (*(v185 + 1))(v92, v200);
  LODWORD(v220) = v77;
  sub_21CB82144();
  swift_getKeyPath();
  v212 = v76;
  sub_21CB82694();

  v179 = v247;
  v180 = v246;
  LODWORD(v181) = v248;
  v93 = sub_21CB82134();
  v178 = v93;
  v185 = type metadata accessor for PMEditGroupView;
  v94 = v226;
  sub_21C97A15C(v222, v226, type metadata accessor for PMEditGroupView);
  v95 = *(v216 + 80);
  v217 = (((v95 + 16) & ~v95) + v198);
  v218 = v95;
  v96 = (v95 + 16) & ~v95;
  v219 = v96;
  v97 = swift_allocObject();
  sub_21C97A1C4(v94, v97 + v96);
  v238 = sub_21C7C2E34();
  v239 = v98;
  v99 = MEMORY[0x277D837D0];
  v100 = v225;
  v101 = sub_21CB84054();
  v176 = v102;
  v177 = v101;
  LOBYTE(v96) = v103;
  v175[1] = v104;
  v231 = v93;
  v232 = sub_21C97A228;
  v233 = v97;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1748, &qword_21CBBDF70);
  v105 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBE40, &unk_21CBA8200);
  v106 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED298, &qword_21CBA6570);
  v107 = sub_21C97A23C();
  v238 = v215;
  v239 = v99;
  v240 = MEMORY[0x277CE1428];
  v241 = MEMORY[0x277CE0BD8];
  v242 = v107;
  v243 = v100;
  v244 = MEMORY[0x277CE1410];
  v245 = MEMORY[0x277CE0BC8];
  v108 = swift_getOpaqueTypeConformance2();
  v109 = sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
  v238 = v202;
  v239 = v105;
  v215 = v109;
  v216 = v105;
  v240 = v106;
  v241 = v108;
  v242 = v109;
  v110 = v109;
  v182 = MEMORY[0x277CDEDD0];
  v183 = v106;
  v111 = swift_getOpaqueTypeConformance2();
  v238 = v200;
  v239 = v105;
  v240 = v106;
  v241 = v111;
  v242 = v110;
  v200 = swift_getOpaqueTypeConformance2();
  v202 = sub_21C6EADEC(&qword_27CDF1750, &qword_27CDF1748, &qword_21CBBDF70);
  v112 = v201;
  v114 = v176;
  v113 = v177;
  v115 = v203;
  sub_21CB84744();

  sub_21C74A72C(v113, v114, v96 & 1);

  (*(v186 + 8))(v115, v112);
  sub_21CB82144();
  swift_getKeyPath();
  sub_21CB82694();

  v116 = v238;
  v117 = v239;
  LODWORD(v115) = v240;
  sub_21CB82134();
  v118 = v115;
  v119 = v199;
  sub_21C974F90(v116, v117, v118, v205);

  (*(v187 + 8))(v119, v204);
  sub_21CB82144();
  swift_getKeyPath();
  sub_21CB82694();

  v199 = v246;
  v187 = v247;
  LODWORD(v203) = v248;
  v120 = sub_21CB82134();
  v184 = v120;
  v121 = v226;
  sub_21C97A15C(v222, v226, v185);
  v122 = swift_allocObject();
  v186 = v122;
  sub_21C97A1C4(v121, v122 + v219);
  v238 = sub_21C7C2E34();
  v239 = v123;
  v124 = sub_21CB84054();
  v126 = v125;
  LOBYTE(v116) = v127;
  v228 = v120;
  v229 = sub_21C97A518;
  v230 = v122;
  v238 = v201;
  v239 = v198;
  v240 = MEMORY[0x277CE0BD8];
  v241 = v200;
  v242 = v202;
  v243 = MEMORY[0x277CE0BC8];
  v128 = swift_getOpaqueTypeConformance2();
  v238 = v204;
  v239 = v216;
  v240 = v183;
  v241 = v128;
  v242 = v215;
  v204 = swift_getOpaqueTypeConformance2();
  v129 = v206;
  v130 = v205;
  sub_21CB84744();

  sub_21C74A72C(v124, v126, v116 & 1);

  (v188[1])(v130, v129);
  sub_21CB82144();
  swift_getKeyPath();
  sub_21CB82694();

  v203 = v246;
  v200 = v247;
  LODWORD(v201) = v248;
  sub_21CB82134();
  v131 = v222 + *(v208 + 9);
  v132 = *v131;
  if (*v131)
  {
    v208 = type metadata accessor for PMEditGroupView;
    v133 = v226;
    sub_21C97A15C(v222, v226, type metadata accessor for PMEditGroupView);
    v187 = swift_allocObject();
    sub_21C97A1C4(v133, v187 + v219);
    v188 = v132;
    v134 = v213;
    sub_21CB81014();
    v135 = sub_21CB81004();
    v137 = v136;
    v138 = *(v221 + 8);
    v221 += 8;
    v205 = v138;
    v138(v134, v214);
    v238 = v135;
    v239 = v137;
    v139 = sub_21CB84054();
    v141 = v140;
    LOBYTE(v137) = v142;
    v199 = v175;
    MEMORY[0x28223BE20](v139);
    v238 = v206;
    v239 = v198;
    v240 = MEMORY[0x277CE0BD8];
    v241 = v204;
    v242 = v202;
    v243 = MEMORY[0x277CE0BC8];
    v206 = MEMORY[0x277CDEDF0];
    v204 = swift_getOpaqueTypeConformance2();
    v143 = v209;
    v144 = v207;
    sub_21CB84744();

    v145 = v188;

    sub_21C74A72C(v139, v141, v137 & 1);

    (*(v189 + 8))(v144, v143);
    sub_21CB82144();
    swift_getKeyPath();
    sub_21CB82694();

    v202 = v247;
    v203 = v246;
    LODWORD(v207) = v248;
    v199 = sub_21CB82134();
    v146 = v226;
    sub_21C97A15C(v222, v226, v208);
    v147 = swift_allocObject();
    sub_21C97A1C4(v146, v147 + v219);
    v200 = v145;
    v148 = v213;
    sub_21CB81014();
    v149 = sub_21CB81004();
    v151 = v150;
    v205(v148, v214);
    v238 = v149;
    v239 = v151;
    v152 = sub_21CB84054();
    v154 = v153;
    LOBYTE(v151) = v155;
    v198 = v156;
    v201 = v175;
    MEMORY[0x28223BE20](v152);
    v238 = v209;
    v239 = v216;
    v240 = MEMORY[0x277CE0BD8];
    v241 = v204;
    v242 = v215;
    v243 = MEMORY[0x277CE0BC8];
    v209 = swift_getOpaqueTypeConformance2();
    v157 = v191;
    v158 = v210;
    sub_21CB84744();

    sub_21C74A72C(v152, v154, v151 & 1);

    (*(v190 + 8))(v158, v157);
    sub_21CB82144();
    swift_getKeyPath();
    sub_21CB82694();

    v159 = v213;
    sub_21CB81014();
    v160 = sub_21CB81004();
    v162 = v161;
    v205(v159, v214);
    v236 = v160;
    v237 = v162;
    v238 = v157;
    v239 = v216;
    v240 = MEMORY[0x277CE0BD8];
    v241 = v209;
    v242 = v215;
    v243 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    v163 = v193;
    v164 = v194;
    v165 = v211;
    sub_21CB84754();

    (*(v192 + 8))(v165, v163);

    v166 = v222;
    v167 = v226;
    sub_21C97A15C(v222, v226, v208);
    v168 = swift_allocObject();
    sub_21C97A1C4(v167, v168 + v219);
    v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B88, &qword_21CBB5590);
    v170 = v197;
    v171 = v197 + *(v169 + 36);
    sub_21C97A15C(v166, v171, type metadata accessor for PMSharingGroup);
    v172 = (v171 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B90, &qword_21CBB5598) + 36));
    *v172 = sub_21C97A5B8;
    v172[1] = v168;
    return (*(v195 + 32))(v170, v164, v196);
  }

  else
  {
    v174 = *(v131 + 8);
    type metadata accessor for PMPasswordManagerState();
    sub_21C97ACD0(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C970314@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v93 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2BA0, &qword_21CBB59E8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v92 = v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v100 = v76 - v7;
  v8 = type metadata accessor for PMEditGroupView();
  v9 = v8 - 8;
  v83 = *(v8 - 8);
  v10 = *(v83 + 64);
  MEMORY[0x28223BE20](v8);
  v87 = v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v84 = v76 - v12;
  MEMORY[0x28223BE20](v13);
  v82 = v76 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FE8, &qword_21CBB59F0);
  v16 = *(v15 - 8);
  v97 = (v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v91 = v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v101 = (v76 - v20);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2BA8, &qword_21CBB59F8);
  v99 = *(v90 - 8);
  v21 = v99[8];
  MEMORY[0x28223BE20](v90);
  v98 = v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v102 = v76 - v24;
  v25 = sub_21CB81024();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1 + *(v9 + 32);
  v31 = *(v30 + 8);
  v95 = *v30;
  v96 = v31;
  v94 = *(v30 + 16);
  v32 = type metadata accessor for PMEditGroupViewModel();
  sub_21C97ACD0(&qword_27CDF2AD8, type metadata accessor for PMEditGroupViewModel);
  sub_21CB82134();
  sub_21C97E780();

  sub_21CB81014();
  v33 = sub_21CB81004();
  v80 = v34;
  v81 = v33;
  (*(v26 + 8))(v29, v25);
  v103 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2BB0, &qword_21CBB5A00);
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2BB8, &qword_21CBB5A08);
  v36 = sub_21C97AD20();
  *&v117 = v35;
  *(&v117 + 1) = v36;
  swift_getOpaqueTypeConformance2();
  sub_21CB85054();
  v76[1] = v32;
  sub_21CB82134();
  v89 = sub_21C97ECC0();

  sub_21CB82134();
  v86 = sub_21C97E780();

  v37 = swift_allocObject();
  v85 = v37;
  v38 = v80;
  *(v37 + 16) = v81;
  *(v37 + 24) = v38;
  v39 = v82;
  sub_21C97A15C(a1, v82, type metadata accessor for PMEditGroupView);
  v40 = (*(v83 + 80) + 16) & ~*(v83 + 80);
  v83 = swift_allocObject();
  sub_21C97A1C4(v39, v83 + v40);
  v88 = a1;
  v41 = v84;
  sub_21C97A15C(a1, v84, type metadata accessor for PMEditGroupView);
  v82 = swift_allocObject();
  sub_21C97A1C4(v41, v82 + v40);
  v42 = v87;
  sub_21C97A15C(a1, v87, type metadata accessor for PMEditGroupView);
  v84 = swift_allocObject();
  sub_21C97A1C4(v42, v84 + v40);
  v43 = v101 + v97[21];
  sub_21CB82144();
  swift_getKeyPath();
  sub_21CB82694();

  v87 = v114;
  v81 = v115;
  LODWORD(v80) = v116;
  sub_21CB82144();
  swift_getKeyPath();
  sub_21CB82694();

  v78 = v112;
  v79 = v111;
  v77 = v113;
  sub_21CB82134();
  swift_getKeyPath();
  swift_getKeyPath();
  v44 = type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters(0);
  v45 = &v43[v44[6]];
  sub_21CB81DB4();

  sub_21CB82134();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v121 = v108;
  v122 = v109;
  v123 = v110;
  v117 = v104;
  v118 = v105;
  v119 = v106;
  v120 = v107;
  v46 = sub_21CB82134();
  v47 = v81;
  *v43 = v87;
  *(v43 + 1) = v47;
  v43[16] = v80;
  v48 = v78;
  *(v43 + 3) = v79;
  *(v43 + 4) = v48;
  v43[40] = v77;
  v49 = &v43[v44[7]];
  v50 = v122;
  *(v49 + 4) = v121;
  *(v49 + 5) = v50;
  *(v49 + 6) = v123;
  v51 = v118;
  *v49 = v117;
  *(v49 + 1) = v51;
  v52 = v120;
  *(v49 + 2) = v119;
  *(v49 + 3) = v52;
  v53 = &v43[v44[8]];
  *v53 = &unk_21CBB5A60;
  *(v53 + 1) = v46;
  (*(*(v44 - 1) + 56))(v43, 0, 1, v44);
  v54 = v101;
  *v101 = v89;
  *(v54 + 8) = 1;
  *(v54 + 9) = v86 & 1;
  *(v54 + 5) = 257;
  *(v54 + 12) = 0;
  v55 = v85;
  v54[2] = sub_21C97AF9C;
  v54[3] = v55;
  v56 = v82;
  v57 = v83;
  v54[4] = sub_21C97AFA4;
  v54[5] = v57;
  v54[6] = sub_21C97B014;
  v54[7] = v56;
  *(v54 + 64) = 0;
  v58 = v84;
  v54[9] = sub_21C97B094;
  v54[10] = v58;
  v59 = v97;
  v60 = v54 + v97[22];
  LOBYTE(v114) = 0;
  sub_21CB84D44();
  v61 = *(&v104 + 1);
  *v60 = v104;
  *(v60 + 1) = v61;
  v62 = v54 + v59[23];
  LOBYTE(v114) = 0;
  sub_21CB84D44();
  v63 = *(&v104 + 1);
  *v62 = v104;
  *(v62 + 1) = v63;
  v64 = v54 + v59[24];
  *v64 = swift_getKeyPath();
  v64[8] = 0;
  *(v54 + v59[25]) = 0;
  v65 = (v54 + v59[26]);
  *v65 = 0x65626D654D646461;
  v65[1] = 0xEA00000000007372;
  v66 = v100;
  sub_21C973068(v100);
  v67 = v98;
  v68 = v99[2];
  v69 = v90;
  v68(v98, v102, v90);
  v70 = v91;
  sub_21C6EDBAC(v54, v91, &qword_27CDF1FE8, &qword_21CBB59F0);
  v71 = v92;
  sub_21C6EDBAC(v66, v92, &qword_27CDF2BA0, &qword_21CBB59E8);
  v72 = v93;
  v68(v93, v67, v69);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2C00, &qword_21CBB5A90);
  sub_21C6EDBAC(v70, &v72[*(v73 + 48)], &qword_27CDF1FE8, &qword_21CBB59F0);
  sub_21C6EDBAC(v71, &v72[*(v73 + 64)], &qword_27CDF2BA0, &qword_21CBB59E8);
  sub_21C6EA794(v100, &qword_27CDF2BA0, &qword_21CBB59E8);
  sub_21C6EA794(v101, &qword_27CDF1FE8, &qword_21CBB59F0);
  v74 = v99[1];
  v74(v102, v69);
  sub_21C6EA794(v71, &qword_27CDF2BA0, &qword_21CBB59E8);
  sub_21C6EA794(v70, &qword_27CDF1FE8, &qword_21CBB59F0);
  return (v74)(v98, v69);
}

uint64_t sub_21C970E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v82 = a2;
  v3 = type metadata accessor for PMEditGroupView();
  v74 = *(v3 - 8);
  v73 = *(v74 + 64);
  MEMORY[0x28223BE20](v3);
  v72 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_21CB81024();
  v5 = *(v71 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v71);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v63 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2BF0, &unk_21CBB5A20);
  v13 = (v12 - 8);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v63 - v15;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2BE0, &qword_21CBB5A18);
  v17 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v77 = &v63 - v18;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2BD0, &qword_21CBB5A10);
  v19 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v78 = &v63 - v20;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2BB8, &qword_21CBB5A08);
  v21 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v80 = &v63 - v22;
  v81 = v3;
  v23 = a1 + *(v3 + 24);
  v24 = *(v23 + 8);
  v70 = *v23;
  v67 = v24;
  v25 = *(v23 + 16);
  v69 = type metadata accessor for PMEditGroupViewModel();
  sub_21C97ACD0(&qword_27CDF2AD8, type metadata accessor for PMEditGroupViewModel);
  sub_21CB82144();
  swift_getKeyPath();
  sub_21CB82694();

  v66 = sub_21C91A0A0(*MEMORY[0x277D49C40], v84, v85, v86, v87);
  v65 = v26;
  v64 = v27;
  v63 = v28;

  sub_21CB81014();
  sub_21CB81014();
  v29 = sub_21CB80FF4();
  v31 = v30;
  v32 = *(v5 + 8);
  v33 = v8;
  v34 = v71;
  v32(v33, v71);
  v32(v11, v34);
  v35 = v68;
  v36 = v72;
  sub_21C97A15C(v68, v72, type metadata accessor for PMEditGroupView);
  v37 = (*(v74 + 80) + 16) & ~*(v74 + 80);
  v38 = swift_allocObject();
  sub_21C97A1C4(v36, v38 + v37);
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  v39 = v13[11];
  *&v16[v39] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v40 = &v16[v13[12]];
  v41 = v65;
  *v40 = v66;
  v40[1] = v41;
  v42 = v63;
  v40[2] = v64;
  v40[3] = v42;
  v43 = &v16[v13[13]];
  *v43 = v29;
  v43[1] = v31;
  v16[v13[14]] = 0;
  v16[v13[15]] = 0;
  v44 = &v16[v13[16]];
  *v44 = sub_21C97B804;
  v44[1] = v38;
  sub_21CB82134();
  LOBYTE(v31) = sub_21C97E780();

  if (v31)
  {
    v45 = sub_21CB837B4();
  }

  else
  {
    v45 = sub_21CB837E4();
  }

  v46 = v45;
  v47 = v77;
  sub_21C716934(v16, v77, &qword_27CDF2BF0, &unk_21CBB5A20);
  *(v47 + *(v75 + 36)) = v46;
  sub_21CB82134();
  LOBYTE(v46) = sub_21C97E780();

  KeyPath = swift_getKeyPath();
  v49 = swift_allocObject();
  *(v49 + 16) = (v46 & 1) == 0;
  v50 = v47;
  v51 = v78;
  sub_21C716934(v50, v78, &qword_27CDF2BE0, &qword_21CBB5A18);
  v52 = (v51 + *(v76 + 36));
  *v52 = KeyPath;
  v52[1] = sub_21C87E800;
  v52[2] = v49;
  v53 = swift_getKeyPath();
  v54 = swift_getKeyPath();
  LOBYTE(v83) = 1;
  sub_21CB84D44();
  LOBYTE(v49) = v84;
  v55 = v85;
  v56 = v51;
  v57 = v80;
  sub_21C716934(v56, v80, &qword_27CDF2BD0, &qword_21CBB5A10);
  v58 = v57 + *(v79 + 36);
  *v58 = 0;
  *(v58 + 8) = v53;
  *(v58 + 16) = 0;
  *(v58 + 24) = v54;
  *(v58 + 32) = 0;
  *(v58 + 40) = v49;
  *(v58 + 48) = v55;
  v59 = v35 + *(v81 + 32);
  v60 = *v59;
  v61 = *(v59 + 8);
  LOBYTE(v59) = *(v59 + 16);
  LOBYTE(v84) = v60;
  v85 = v61;
  LOBYTE(v86) = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE508, &qword_21CBBE3B0);
  sub_21CB81F74();
  sub_21C97AD20();
  sub_21CB84834();

  return sub_21C6EA794(v57, &qword_27CDF2BB8, &qword_21CBB5A08);
}

uint64_t sub_21C9715F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v34[-v10];
  sub_21CB81014();
  sub_21CB81014();
  v12 = sub_21CB80FF4();
  v14 = v13;
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v11, v4);
  v35 = v12;
  v36 = v14;
  sub_21C71F3FC();
  v16 = sub_21CB84054();
  v18 = v17;
  v20 = v19;
  v21 = (a1 + *(type metadata accessor for PMEditGroupView() + 24));
  v22 = *v21;
  v23 = v21[1];
  v24 = *(v21 + 16);
  type metadata accessor for PMEditGroupViewModel();
  sub_21C97ACD0(&qword_27CDF2AD8, type metadata accessor for PMEditGroupViewModel);
  sub_21CB82134();
  LOBYTE(v23) = sub_21C97E780();

  if (v23)
  {
    v25 = sub_21CB837E4();
  }

  else
  {
    v25 = sub_21CB837B4();
  }

  LODWORD(v35) = v25;
  v26 = sub_21CB83FC4();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_21C74A72C(v16, v18, v20 & 1);

  *a2 = v26;
  *(a2 + 8) = v28;
  *(a2 + 16) = v30 & 1;
  *(a2 + 24) = v32;
  return result;
}

uint64_t sub_21C97187C@<X0>(uint64_t a1@<X8>)
{
  sub_21C71F3FC();

  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_21C9718E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMEditGroupView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  v12 = sub_21CB858E4();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_21C97A15C(a2, v7, type metadata accessor for PMEditGroupView);
  sub_21CB858B4();

  v13 = sub_21CB858A4();
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v13;
  *(v16 + 24) = v17;
  sub_21C97A1C4(v7, v16 + v14);
  *(v16 + v15) = a1;
  sub_21C822ECC(0, 0, v11, &unk_21CBB5B40, v16);
}

uint64_t sub_21C971AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_21CB858B4();
  v5[5] = sub_21CB858A4();
  v7 = sub_21CB85874();
  v5[6] = v7;
  v5[7] = v6;

  return MEMORY[0x2822009F8](sub_21C971B74, v7, v6);
}

uint64_t sub_21C971B74()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = type metadata accessor for PMEditGroupView();
  *(v0 + 64) = v3;
  v4 = v2 + *(v3 + 24);
  *(v0 + 72) = *v4;
  *(v0 + 80) = *(v4 + 8);
  *(v0 + 152) = *(v4 + 16);
  *(v0 + 88) = type metadata accessor for PMEditGroupViewModel();
  *(v0 + 96) = sub_21C97ACD0(&qword_27CDF2AD8, type metadata accessor for PMEditGroupViewModel);
  *(v0 + 104) = sub_21CB82134();
  *(v0 + 112) = sub_21CB858A4();
  v6 = sub_21CB85874();
  *(v0 + 120) = v6;
  *(v0 + 128) = v5;

  return MEMORY[0x2822009F8](sub_21C971CA4, v6, v5);
}

uint64_t sub_21C971CA4()
{
  v1 = v0[13];
  v2 = v0[3];
  v3 = *(v2 + 16);

  if (v3)
  {
    v4 = (v2 + 40);
    do
    {
      v5 = v0[13];
      v7 = *(v4 - 1);
      v6 = *v4;

      sub_21C9823C0(v7, v6);

      v4 += 2;
      --v3;
    }

    while (v3);
    v8 = v0[13];
  }

  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_21C971D94;
  v10 = v0[13];

  return sub_21C980418();
}

uint64_t sub_21C971D94()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 128);
  v6 = *(v2 + 120);
  if (v0)
  {
    v7 = sub_21C97201C;
  }

  else
  {
    v7 = sub_21C971ED0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21C971ED0()
{
  v2 = v0[13];
  v1 = v0[14];

  v3 = v0[6];
  v4 = v0[7];

  return MEMORY[0x2822009F8](sub_21C971F3C, v3, v4);
}

uint64_t sub_21C971F3C()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 152);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 64);
  v7 = *(v0 + 40);
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);

  sub_21CB82134();
  v10 = sub_21C97EF2C(v8);

  v11 = v9 + *(v6 + 20);
  v12 = *(v11 + 8);
  (*v11)(v10);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_21C97201C()
{
  v1 = v0[14];

  v2 = v0[6];
  v3 = v0[7];

  return MEMORY[0x2822009F8](sub_21C972080, v2, v3);
}

uint64_t sub_21C972080()
{
  v1 = v0[13];
  v2 = v0[5];

  v3 = v0[1];
  v4 = v0[18];

  return v3();
}

uint64_t sub_21C9720F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMEditGroupView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v22 - v12;
  v14 = sub_21CB858E4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_21C97A15C(a3, v9, type metadata accessor for PMEditGroupView);
  sub_21CB858B4();

  v15 = sub_21CB858A4();
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v15;
  *(v18 + 24) = v19;
  sub_21C97A1C4(v9, v18 + v16);
  v20 = (v18 + v17);
  *v20 = a1;
  v20[1] = a2;
  sub_21C822ECC(0, 0, v13, &unk_21CBB5B30, v18);
}

uint64_t sub_21C9722E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_21CB858B4();
  v6[5] = sub_21CB858A4();
  v8 = sub_21CB85874();
  v6[6] = v8;
  v6[7] = v7;

  return MEMORY[0x2822009F8](sub_21C972384, v8, v7);
}

uint64_t sub_21C972384()
{
  v1 = v0[2];
  v2 = (v1 + *(type metadata accessor for PMEditGroupView() + 24));
  v4 = *v2;
  v3 = v2[1];
  v5 = *(v2 + 16);
  type metadata accessor for PMEditGroupViewModel();
  sub_21C97ACD0(&qword_27CDF2AD8, type metadata accessor for PMEditGroupViewModel);
  v0[8] = sub_21CB82134();
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_21C97249C;
  v8 = v0[3];
  v7 = v0[4];

  return sub_21C97F14C(v8, v7);
}

uint64_t sub_21C97249C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_21C97BCC0;
  }

  else
  {
    v7 = v2[8];

    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_21C97BCCC;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_21C9725B8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = type metadata accessor for PMEditGroupView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v24 - v14;
  v16 = sub_21CB858E4();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_21C97A15C(a4, v11, type metadata accessor for PMEditGroupView);
  sub_21CB858B4();

  v17 = sub_21CB858A4();
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  *(v20 + 16) = v17;
  *(v20 + 24) = v21;
  sub_21C97A1C4(v11, v20 + v18);
  v22 = v20 + v19;
  *v22 = a1;
  *(v22 + 8) = a2;
  *(v22 + 16) = a3;
  sub_21C822ECC(0, 0, v15, &unk_21CBB5B20, v20);
}

uint64_t sub_21C9727C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 88) = a7;
  *(v7 + 24) = a5;
  *(v7 + 32) = a6;
  *(v7 + 16) = a4;
  sub_21CB858B4();
  *(v7 + 40) = sub_21CB858A4();
  v9 = sub_21CB85874();
  *(v7 + 48) = v9;
  *(v7 + 56) = v8;

  return MEMORY[0x2822009F8](sub_21C972860, v9, v8);
}

uint64_t sub_21C972860()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for PMEditGroupView() + 24));
  v4 = *v2;
  v3 = v2[1];
  v5 = *(v2 + 16);
  type metadata accessor for PMEditGroupViewModel();
  sub_21C97ACD0(&qword_27CDF2AD8, type metadata accessor for PMEditGroupViewModel);
  *(v0 + 64) = sub_21CB82134();
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_21C97297C;
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  v9 = *(v0 + 88);

  return sub_21C97F914(v8, v7, v9);
}

uint64_t sub_21C97297C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_21C972A98;
  }

  else
  {
    v7 = v2[8];

    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_21C835BC4;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_21C972A98()
{
  v1 = v0[8];
  v2 = v0[5];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_21C972B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v3[9] = sub_21CB858B4();
  v3[10] = sub_21CB858A4();
  v3[11] = sub_21CB858A4();
  v5 = sub_21CB85874();
  v3[12] = v5;
  v3[13] = v4;

  return MEMORY[0x2822009F8](sub_21C972C04, v5, v4);
}

uint64_t sub_21C972C04()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = sub_21CB81DA4();
  v6 = v5;
  v7 = sub_21C94BA9C(v5, v3, v2);

  v9 = *(*v6 + 16);
  if (v9 < v7)
  {
    __break(1u);
  }

  else
  {
    sub_21CB65440(v7, v9);
    v4(v0 + 2, 0);

    v10 = swift_task_alloc();
    v0[14] = v10;
    *v10 = v0;
    v10[1] = sub_21C972D5C;
    v11 = v0[8];

    return sub_21C980418();
  }

  return result;
}

uint64_t sub_21C972D5C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 104);
  v6 = *(v2 + 96);
  if (v0)
  {
    v7 = sub_21C972F80;
  }

  else
  {
    v7 = sub_21C972E98;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21C972E98()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  v5 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C972F1C, v5, v4);
}

uint64_t sub_21C972F1C()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21C972F80()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  v5 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C973004, v5, v4);
}

uint64_t sub_21C973004()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t sub_21C973068@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2C08, &qword_21CBB5A98);
  v3 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v29 = &v25 - v4;
  v5 = type metadata accessor for PMEditGroupView();
  v6 = v5 - 8;
  v26 = *(v5 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2C10, &unk_21CBB5AA0);
  v27 = *(v12 - 8);
  v13 = *(v27 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - v14;
  v16 = v1 + *(v6 + 32);
  v17 = *v16;
  v18 = *(v16 + 8);
  v19 = *(v16 + 16);
  type metadata accessor for PMEditGroupViewModel();
  sub_21C97ACD0(&qword_27CDF2AD8, type metadata accessor for PMEditGroupViewModel);
  sub_21CB82134();
  sub_21C97E780();

  sub_21CB81ED4();
  v20 = sub_21CB81F14();
  (*(*(v20 - 8) + 56))(v11, 0, 1, v20);
  sub_21C97A15C(v2, &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMEditGroupView);
  v21 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v22 = swift_allocObject();
  sub_21C97A1C4(&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB208, &unk_21CBB3F40);
  sub_21C7B8EA4();
  sub_21CB84D94();
  v23 = v27;
  (*(v27 + 16))(v29, v15, v12);
  swift_storeEnumTagMultiPayload();
  sub_21C6EADEC(&qword_27CDF2C18, &qword_27CDF2C10, &unk_21CBB5AA0);
  sub_21CB83494();
  return (*(v23 + 8))(v15, v12);
}

uint64_t sub_21C9734F4()
{
  v1 = sub_21CB81024();
  v35 = *(v1 - 8);
  v36 = v1;
  v2 = *(v35 + 64);
  MEMORY[0x28223BE20](v1);
  v34 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CB83834();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v33 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v31 - v20;
  v22 = v0 + *(type metadata accessor for PMEditGroupView() + 36);
  sub_21C728D50(v21);
  (*(v5 + 104))(v18, *MEMORY[0x277CE0558], v4);
  (*(v5 + 56))(v18, 0, 1, v4);
  v23 = *(v9 + 56);
  sub_21C6EDBAC(v21, v12, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v18, &v12[v23], &qword_27CDEC390, &qword_21CBA40E0);
  v24 = *(v5 + 48);
  if (v24(v12, 1, v4) != 1)
  {
    sub_21C6EDBAC(v12, v33, &qword_27CDEC390, &qword_21CBA40E0);
    if (v24(&v12[v23], 1, v4) != 1)
    {
      v25 = v32;
      (*(v5 + 32))(v32, &v12[v23], v4);
      sub_21C97ACD0(&qword_27CDEE538, MEMORY[0x277CE0570]);
      v26 = v33;
      sub_21CB85574();
      v27 = *(v5 + 8);
      v27(v25, v4);
      sub_21C6EA794(v18, &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v21, &qword_27CDEC390, &qword_21CBA40E0);
      v27(v26, v4);
      sub_21C6EA794(v12, &qword_27CDEC390, &qword_21CBA40E0);
      goto LABEL_8;
    }

    sub_21C6EA794(v18, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v21, &qword_27CDEC390, &qword_21CBA40E0);
    (*(v5 + 8))(v33, v4);
    goto LABEL_6;
  }

  sub_21C6EA794(v18, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EA794(v21, &qword_27CDEC390, &qword_21CBA40E0);
  if (v24(&v12[v23], 1, v4) != 1)
  {
LABEL_6:
    sub_21C6EA794(v12, &qword_27CDEE530, &unk_21CBA9D80);
    goto LABEL_8;
  }

  sub_21C6EA794(v12, &qword_27CDEC390, &qword_21CBA40E0);
LABEL_8:
  v28 = v34;
  sub_21CB81014();
  v29 = sub_21CB81004();
  (*(v35 + 8))(v28, v36);
  return v29;
}

uint64_t sub_21C973A38()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B70, &qword_21CBB53A0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - v3;
  sub_21C973B5C(&v7 - v3);
  v5 = sub_21C6EADEC(&qword_27CDF2B78, &qword_27CDF2B70, &qword_21CBB53A0);
  MEMORY[0x21CF131E0](v4, v0, v5);
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_21C973B5C@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B98, &unk_21CBB9270);
  v2 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v54 = &v45 - v3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1F90, &unk_21CBB2DE0);
  v4 = *(v53 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v53);
  v49 = &v45 - v6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1F98, &unk_21CBB9280);
  v46 = *(v50 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v50);
  v45 = &v45 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FA0, &unk_21CBB2DF0);
  v48 = *(v52 - 8);
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v52);
  v47 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FA8, &unk_21CBB9290);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - v16;
  v18 = sub_21CB83604();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC010, &qword_21CBAA950);
  v20 = *(v51 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v51);
  v23 = &v45 - v22;
  sub_21CB835D4();
  v57 = v1;
  type metadata accessor for PMPlatformRoleButton();
  sub_21C97ACD0(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton);
  sub_21CB82194();
  v24 = (v1 + *(type metadata accessor for PMEditGroupView() + 24));
  v25 = *v24;
  v26 = v24[1];
  v27 = *(v24 + 16);
  type metadata accessor for PMEditGroupViewModel();
  sub_21C97ACD0(&qword_27CDF2AD8, type metadata accessor for PMEditGroupViewModel);
  sub_21CB82134();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v58 == 1)
  {
    sub_21CB835E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FD0, &qword_21CBB92A0);
    sub_21C94B6AC();
    v28 = v45;
    sub_21CB82194();
    v29 = sub_21C6EADEC(&qword_27CDF1FC8, &qword_27CDF1F98, &unk_21CBB9280);
    v30 = v47;
    v31 = v50;
    sub_21CB82784();
    (*(v46 + 8))(v28, v31);
    v58 = v31;
    v59 = v29;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v33 = v49;
    v34 = v52;
    MEMORY[0x21CF131E0](v30, v52, OpaqueTypeConformance2);
    v35 = v53;
    (*(v4 + 16))(v14, v33, v53);
    (*(v4 + 56))(v14, 0, 1, v35);
    v58 = v34;
    v59 = OpaqueTypeConformance2;
    v36 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CF13220](v14, v35, v36);
    sub_21C6EA794(v14, &qword_27CDF1FA8, &unk_21CBB9290);
    (*(v4 + 8))(v33, v35);
    (*(v48 + 8))(v30, v34);
  }

  else
  {
    v37 = v53;
    (*(v4 + 56))(v14, 1, 1, v53);
    v38 = sub_21C6EADEC(&qword_27CDF1FC8, &qword_27CDF1F98, &unk_21CBB9280);
    v58 = v50;
    v59 = v38;
    v39 = swift_getOpaqueTypeConformance2();
    v58 = v52;
    v59 = v39;
    v40 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CF13220](v14, v37, v40);
    sub_21C6EA794(v14, &qword_27CDF1FA8, &unk_21CBB9290);
  }

  v41 = v54;
  v42 = *(v55 + 48);
  v43 = v51;
  (*(v20 + 16))(v54, v23, v51);
  sub_21C76BBC4(v17, &v41[v42]);
  sub_21CB83394();
  sub_21C6EA794(v17, &qword_27CDF1FA8, &unk_21CBB9290);
  return (*(v20 + 8))(v23, v43);
}

uint64_t sub_21C97431C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v21 = a3;
  v23 = a2;
  v22 = a1;
  v20[1] = a4;
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v35 = v24[0];
  v36 = v24[1];
  v37 = v25;
  v12 = v28;
  v13 = v29;
  v32 = v30;
  v33 = v31;
  v34 = v27;
  if (v26)
  {
    v27 = v34;
    v30 = v32;
    v31 = v33;

    sub_21C6EA794(v24, &qword_27CDECC50, &unk_21CBB52A0);
  }

  else
  {
    v26 = 0;
    v27 = v34;
    v30 = v32;
    v31 = v33;
    sub_21C6EA794(v24, &qword_27CDECC50, &unk_21CBB52A0);
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FF4();
  v14 = *(v5 + 8);
  v14(v8, v4);
  v14(v11, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21CBA0690;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_21C7C0050();
  *(v15 + 32) = v12;
  *(v15 + 40) = v13;
  v16 = sub_21CB85594();
  v18 = v17;

  *&v24[0] = v16;
  *(&v24[0] + 1) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B00, &qword_21CBB5340);
  sub_21C97A23C();
  sub_21C71F3FC();
  sub_21CB84754();
}

void sub_21C97473C(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v29 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a1;
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v30 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570), sub_21C82A2F0(), (swift_dynamicCast() & 1) != 0))
  {
    v9 = v38;
    [v38 safari_isOrContainsNetworkUnavailableError];
  }

  else
  {
    v9 = 0;
  }

  sub_21CB81014();
  v10 = sub_21CB81004();
  v12 = v11;

  (*(v5 + 8))(v8, v4);
  v30 = v10;
  v31 = v12;
  v13 = sub_21C71F3FC();
  v14 = sub_21CB84054();
  v24[1] = v15;
  v25 = v14;
  v17 = v16;
  v19 = v18;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v20 = v30;
  v38 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B08, &qword_21CBB5348);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B00, &qword_21CBB5340);
  v22 = sub_21C97A23C();
  v30 = v21;
  v31 = MEMORY[0x277D837D0];
  v32 = MEMORY[0x277CE1428];
  v33 = MEMORY[0x277CE0BD8];
  v34 = v22;
  v35 = v13;
  v36 = MEMORY[0x277CE1410];
  v37 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
  v23 = v25;
  sub_21CB84724();
  sub_21C74A72C(v23, v17, v19 & 1);
}

void sub_21C974B2C(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v35 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a1;
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v36 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570), sub_21C82A2F0(), (swift_dynamicCast() & 1) != 0))
  {
    v9 = v44;
    [v44 safari_isOrContainsNetworkUnavailableError];
  }

  else
  {
    v9 = 0;
  }

  sub_21CB81014();
  v10 = sub_21CB81004();
  v12 = v11;

  (*(v5 + 8))(v8, v4);
  v36 = v10;
  v37 = v12;
  v13 = sub_21C71F3FC();
  v14 = sub_21CB84054();
  v30 = v15;
  v31 = v14;
  v17 = v16;
  v29 = v18;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v19 = v36;
  v44 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B10, &qword_21CBB5350);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B08, &qword_21CBB5348);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B00, &qword_21CBB5340);
  v24 = sub_21C97A23C();
  v36 = v23;
  v37 = MEMORY[0x277D837D0];
  v38 = MEMORY[0x277CE1428];
  v39 = MEMORY[0x277CE0BD8];
  v40 = v24;
  v41 = v13;
  v42 = MEMORY[0x277CE1410];
  v43 = MEMORY[0x277CE0BC8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
  v36 = v22;
  v37 = v20;
  v38 = v21;
  v39 = OpaqueTypeConformance2;
  v40 = v26;
  swift_getOpaqueTypeConformance2();
  v28 = v30;
  v27 = v31;
  sub_21CB84724();
  sub_21C74A72C(v27, v28, v17 & 1);
}

void sub_21C974F90(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v46 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a1;
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v47 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570), sub_21C82A2F0(), (swift_dynamicCast() & 1) != 0))
  {
    v9 = v55;
    [v55 safari_isOrContainsNetworkUnavailableError];
  }

  else
  {
    v9 = 0;
  }

  sub_21CB81014();
  v10 = sub_21CB81004();
  v12 = v11;

  (*(v5 + 8))(v8, v4);
  v47 = v10;
  v48 = v12;
  v13 = sub_21C71F3FC();
  v14 = MEMORY[0x277D837D0];
  v15 = sub_21CB84054();
  v41 = v16;
  v42 = v15;
  v39 = v17;
  v40 = v18;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v38 = v47;
  v55 = v47;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B20, &qword_21CBB5360);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B18, &qword_21CBB5358);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1748, &qword_21CBBDF70);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B10, &qword_21CBB5350);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B08, &qword_21CBB5348);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B00, &qword_21CBB5340);
  v25 = sub_21C97A23C();
  v47 = v24;
  v48 = v14;
  v26 = MEMORY[0x277CE0BD8];
  v49 = MEMORY[0x277CE1428];
  v50 = MEMORY[0x277CE0BD8];
  v51 = v25;
  v52 = v13;
  v27 = MEMORY[0x277CE0BC8];
  v53 = MEMORY[0x277CE1410];
  v54 = MEMORY[0x277CE0BC8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
  v47 = v23;
  v48 = v19;
  v49 = v20;
  v50 = OpaqueTypeConformance2;
  v51 = v29;
  v30 = swift_getOpaqueTypeConformance2();
  v47 = v22;
  v48 = v19;
  v49 = v20;
  v50 = v30;
  v51 = v29;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = sub_21C6EADEC(&qword_27CDF1750, &qword_27CDF1748, &qword_21CBBDF70);
  v47 = v36;
  v48 = v21;
  v49 = v26;
  v50 = v31;
  v51 = v32;
  v52 = v27;
  swift_getOpaqueTypeConformance2();
  LOBYTE(v27) = v39;
  v34 = v41;
  v33 = v42;
  sub_21CB84724();
  sub_21C74A72C(v33, v34, v27 & 1);
}

uint64_t sub_21C97551C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMSharingGroup();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  v11 = (a2 + *(type metadata accessor for PMEditGroupView() + 24));
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v11 + 16);
  type metadata accessor for PMEditGroupViewModel();
  sub_21C97ACD0(&qword_27CDF2AD8, type metadata accessor for PMEditGroupViewModel);
  sub_21CB82134();
  sub_21C97A15C(a1, v10, type metadata accessor for PMSharingGroup);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C97A15C(v10, v7, type metadata accessor for PMSharingGroup);

  sub_21CB81DC4();
  sub_21C981DE8();

  return sub_21C979EE8(v10);
}

uint64_t sub_21C9756BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v21 = a1;
  v3 = type metadata accessor for PMEditGroupView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMPlatformRoleButton();
  v12 = a2 + *(v11 + 20);
  sub_21CB81F04();
  sub_21CB81014();
  v13 = sub_21CB81004();
  v15 = v14;
  (*(v7 + 8))(v10, v6);
  sub_21C97A15C(v21, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMEditGroupView);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  result = sub_21C97A1C4(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  *a2 = v13;
  a2[1] = v15;
  v19 = (a2 + *(v11 + 24));
  *v19 = sub_21C97AB80;
  v19[1] = v17;
  return result;
}

uint64_t sub_21C9758BC(uint64_t a1)
{
  v2 = type metadata accessor for PMEditGroupView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - v8;
  v10 = a1 + *(v2 + 24);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  type metadata accessor for PMEditGroupViewModel();
  sub_21C97ACD0(&qword_27CDF2AD8, type metadata accessor for PMEditGroupViewModel);
  sub_21CB82134();
  LOBYTE(v12) = sub_21C9801C8();

  if (v12)
  {
    v14 = sub_21CB858E4();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    sub_21C97A15C(a1, &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMEditGroupView);
    sub_21CB858B4();
    v15 = sub_21CB858A4();
    v16 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    *(v17 + 16) = v15;
    *(v17 + 24) = v18;
    sub_21C97A1C4(v5, v17 + v16);
    sub_21C822ECC(0, 0, v9, &unk_21CBB59D8, v17);
  }

  else
  {
    v20 = a1 + *(v2 + 20);
    v21 = *(v20 + 8);
    return (*v20)(0);
  }
}

uint64_t sub_21C975B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_21CB858B4();
  v4[3] = sub_21CB858A4();
  v6 = sub_21CB85874();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_21C975BD4, v6, v5);
}

uint64_t sub_21C975BD4()
{
  v1 = v0[2];
  v2 = type metadata accessor for PMEditGroupView();
  v0[6] = v2;
  v3 = (v1 + *(v2 + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 16);
  type metadata accessor for PMEditGroupViewModel();
  sub_21C97ACD0(&qword_27CDF2AD8, type metadata accessor for PMEditGroupViewModel);
  v0[7] = sub_21CB82134();
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_21C975CE8;

  return sub_21C980418();
}

uint64_t sub_21C975CE8()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = v2[4];
    v5 = v2[5];
    v6 = sub_21C975E84;
  }

  else
  {
    v7 = v2[7];

    v4 = v2[4];
    v5 = v2[5];
    v6 = sub_21C975E04;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_21C975E04()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];

  v4 = v3 + *(v1 + 20);
  v5 = *(v4 + 8);
  (*v4)(0);
  v6 = v0[1];

  return v6();
}

uint64_t sub_21C975E84()
{
  v1 = v0[7];
  v2 = v0[3];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_21C975EF4@<X0>(uint64_t a1@<X8>)
{
  sub_21CB82234();
  v2 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FD0, &qword_21CBB92A0) + 36));
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF13A0, &qword_21CBB1100) + 28);
  v4 = *MEMORY[0x277CDF438];
  v5 = sub_21CB82064();
  (*(*(v5 - 8) + 104))(v2 + v3, v4, v5);
  result = swift_getKeyPath();
  *v2 = result;
  return result;
}

uint64_t sub_21C975FCC(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for PMEditGroupView() + 24));
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  type metadata accessor for PMEditGroupViewModel();
  sub_21C97ACD0(&qword_27CDF2AD8, type metadata accessor for PMEditGroupViewModel);
  sub_21CB82134();
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_21CB81DC4();
}

__n128 sub_21C9760D0@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  *&v24[0] = v7;
  *(&v24[0] + 1) = v9;
  sub_21C71F3FC();
  v10 = sub_21CB84054();
  v12 = v11;
  LOBYTE(v2) = v13;
  sub_21CB84A64();
  v14 = sub_21CB83FB4();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_21C74A72C(v10, v12, v2 & 1);

  sub_21CB85214();
  sub_21CB82AC4();
  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
  v21 = v24[5];
  *(a1 + 96) = v24[4];
  *(a1 + 112) = v21;
  *(a1 + 128) = v24[6];
  v22 = v24[1];
  *(a1 + 32) = v24[0];
  *(a1 + 48) = v22;
  result = v24[3];
  *(a1 + 64) = v24[2];
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_21C9762D4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v28 = v17[0];
  v29 = v17[1];
  v30 = v18;
  v8 = v21;
  v7 = v22;
  v25 = v23;
  v26 = v24;
  v27 = v20;
  if (v19)
  {
    v20 = v27;
    v23 = v25;
    v24 = v26;

    sub_21C6EA794(v17, &qword_27CDECC50, &unk_21CBB52A0);
  }

  else
  {
    v19 = 0;
    v20 = v27;
    v23 = v25;
    v24 = v26;
    sub_21C6EA794(v17, &qword_27CDECC50, &unk_21CBB52A0);
    v8 = 0;
    v7 = 0xE000000000000000;
  }

  sub_21CB81014();
  sub_21CB81004();
  (*(v3 + 8))(v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21CBA0690;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_21C7C0050();
  *(v9 + 32) = v8;
  *(v9 + 40) = v7;
  v10 = sub_21CB85594();
  v12 = v11;

  *&v17[0] = v10;
  *(&v17[0] + 1) = v12;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v16;
  return result;
}

uint64_t sub_21C9765C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v52 = a2;
  v53 = a3;
  v51 = a1;
  v55 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v46 - v6;
  v8 = sub_21CB81024();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v49 = *(v16 - 8);
  v17 = *(v49 + 64);
  MEMORY[0x28223BE20](v16);
  v54 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v50 = v46 - v20;
  MEMORY[0x28223BE20](v21);
  v48 = v46 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = v46 - v24;
  sub_21CB81014();
  sub_21CB81014();
  v26 = sub_21CB80FF4();
  v28 = v27;
  v29 = *(v9 + 8);
  v46[2] = v9 + 8;
  v47 = v8;
  v29(v12, v8);
  v29(v15, v8);
  v56 = v26;
  v57 = v28;
  sub_21CB81ED4();
  v30 = sub_21CB81F14();
  v31 = *(v30 - 8);
  v46[0] = *(v31 + 56);
  v46[1] = v31 + 56;
  (v46[0])(v7, 0, 1, v30);
  v32 = swift_allocObject();
  v33 = v52;
  v32[2] = v51;
  v32[3] = v33;
  v32[4] = v53;
  sub_21C71F3FC();

  sub_21CB84DC4();
  sub_21CB81014();
  v34 = sub_21CB81004();
  v36 = v35;
  v29(v15, v47);
  v56 = v34;
  v57 = v36;
  sub_21CB81EF4();
  (v46[0])(v7, 0, 1, v30);
  v37 = v48;
  sub_21CB84DC4();
  v39 = v49;
  v38 = v50;
  v40 = *(v49 + 16);
  v40(v50, v25, v16);
  v41 = v54;
  v40(v54, v37, v16);
  v42 = v55;
  v40(v55, v38, v16);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0168, &qword_21CBB1D30);
  v40(&v42[*(v43 + 48)], v41, v16);
  v44 = *(v39 + 8);
  v44(v37, v16);
  v44(v25, v16);
  v44(v41, v16);
  return (v44)(v38, v16);
}

uint64_t sub_21C976AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v6[4] = sub_21CB858B4();
  v6[5] = sub_21CB858A4();
  v7 = swift_task_alloc();
  v6[6] = v7;
  *v7 = v6;
  v7[1] = sub_21C976B70;

  return sub_21C980DEC();
}

uint64_t sub_21C976B70()
{
  v2 = v0;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v10 = *v1;
  *(*v1 + 56) = v2;

  v7 = sub_21CB85874();
  if (v2)
  {
    v8 = sub_21C976D3C;
  }

  else
  {
    v8 = sub_21C976CCC;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_21C976CCC()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v0[3];

  v2(v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_21C976D3C()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_21C976DA0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_21C976ECC()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v5 = sub_21CB81004();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  v9[0] = v5;
  v9[1] = v7;
  sub_21C71F3FC();
  return sub_21CB84DE4();
}

uint64_t sub_21C976FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v52 = a2;
  v53 = a3;
  v56 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v46 - v7;
  v9 = sub_21CB81024();
  v49 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x28223BE20](v14);
  v55 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v54 = v46 - v19;
  MEMORY[0x28223BE20](v20);
  v51 = v46 - v21;
  MEMORY[0x28223BE20](v22);
  v47 = v46 - v23;
  sub_21CB81014();
  v24 = sub_21CB81004();
  v26 = v25;
  v27 = *(v10 + 8);
  v48 = v10 + 8;
  v50 = v27;
  v27(v13, v9);
  v57 = v24;
  v58 = v26;
  sub_21CB81ED4();
  v28 = sub_21CB81F14();
  v29 = *(v28 - 8);
  v46[0] = *(v29 + 56);
  v46[1] = v29 + 56;
  (v46[0])(v8, 0, 1, v28);
  v30 = swift_allocObject();
  v31 = v52;
  v32 = v53;
  v30[2] = a1;
  v30[3] = v31;
  v30[4] = v32;
  sub_21C71F3FC();

  v33 = v47;
  sub_21CB84DC4();
  sub_21CB81014();
  v34 = sub_21CB81004();
  v36 = v35;
  v50(v13, v49);
  v57 = v34;
  v58 = v36;
  sub_21CB81EF4();
  (v46[0])(v8, 0, 1, v28);
  v37 = v51;
  sub_21CB84DC4();
  v38 = v15[2];
  v39 = v54;
  v40 = v33;
  v38(v54, v33, v14);
  v41 = v55;
  v38(v55, v37, v14);
  v42 = v56;
  v38(v56, v39, v14);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0168, &qword_21CBB1D30);
  v38(&v42[*(v43 + 48)], v41, v14);
  v44 = v15[1];
  v44(v37, v14);
  v44(v40, v14);
  v44(v41, v14);
  return (v44)(v39, v14);
}

uint64_t sub_21C9774A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  v13 = sub_21CB858E4();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_21CB858B4();

  v14 = sub_21CB858A4();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = a3;
  sub_21C822ECC(0, 0, v12, a5, v15);
}

uint64_t sub_21C9775E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v6[4] = sub_21CB858B4();
  v6[5] = sub_21CB858A4();
  v7 = swift_task_alloc();
  v6[6] = v7;
  *v7 = v6;
  v7[1] = sub_21C977694;

  return sub_21C98165C();
}

uint64_t sub_21C977694()
{
  v2 = v0;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v10 = *v1;
  *(*v1 + 56) = v2;

  v7 = sub_21CB85874();
  if (v2)
  {
    v8 = sub_21C97BCC4;
  }

  else
  {
    v8 = sub_21C97BCB0;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_21C9777F0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_21C97791C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a2;
  v31 = a4;
  v32 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v29 - v9;
  v11 = sub_21CB81024();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - v17;
  sub_21CB81014();
  sub_21CB81014();
  v19 = sub_21CB80FF4();
  v21 = v20;
  v22 = *(v12 + 8);
  v22(v15, v11);
  v22(v18, v11);
  v33 = v19;
  v34 = v21;
  sub_21CB81ED4();
  v23 = sub_21CB81F14();
  (*(*(v23 - 8) + 56))(v10, 0, 1, v23);
  v24 = swift_allocObject();
  v25 = v30;
  v26 = v31;
  v24[2] = a1;
  v24[3] = v25;
  v24[4] = a3;
  v24[5] = v26;
  sub_21C71F3FC();

  v27 = v26;
  return sub_21CB84DC4();
}

uint64_t sub_21C977BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[33] = a6;
  v7[34] = a7;
  v7[31] = a4;
  v7[32] = a5;
  v8 = *(*(type metadata accessor for PMSharingGroup() - 8) + 64) + 15;
  v7[35] = swift_task_alloc();
  sub_21CB858B4();
  v7[36] = sub_21CB858A4();
  v10 = sub_21CB85874();
  v7[37] = v10;
  v7[38] = v9;

  return MEMORY[0x2822009F8](sub_21C977C68, v10, v9);
}

uint64_t sub_21C977C68()
{
  v1 = *(v0 + 248);
  result = sub_21C97ECC0();
  v3 = *(result + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = 0;
    v6 = -v3;
    v7 = result + 32;
    v8 = MEMORY[0x277D84F90];
    do
    {
      v9 = *(result + 16);
      v10 = v9 >= v5;
      v11 = v9 - v5;
      if (!v10)
      {
        v11 = 0;
      }

      v12 = (v7 + 112 * v5++);
      while (1)
      {
        if (!v11)
        {
          __break(1u);
          return result;
        }

        v13 = v12[3];
        v14 = v12[4];
        v15 = v12[6];
        *(v0 + 96) = v12[5];
        *(v0 + 112) = v15;
        v16 = v12[1];
        v17 = v12[2];
        *(v0 + 16) = *v12;
        *(v0 + 32) = v16;
        *(v0 + 64) = v13;
        *(v0 + 80) = v14;
        *(v0 + 48) = v17;
        if ((*(v0 + 96) & 1) == 0)
        {
          break;
        }

        --v11;
        ++v5;
        v12 += 7;
        if (v6 + v5 == 1)
        {
          goto LABEL_17;
        }
      }

      v18 = result;
      sub_21C7A33F0(v0 + 16, v0 + 128);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21C7B10A0(0, *(v8 + 16) + 1, 1);
      }

      v20 = *(v8 + 16);
      v19 = *(v8 + 24);
      result = v18;
      if (v20 >= v19 >> 1)
      {
        sub_21C7B10A0((v19 > 1), v20 + 1, 1);
        result = v18;
      }

      *(v8 + 16) = v20 + 1;
      v21 = (v8 + 112 * v20);
      v22 = *(v0 + 16);
      v23 = *(v0 + 48);
      v21[3] = *(v0 + 32);
      v21[4] = v23;
      v21[2] = v22;
      v24 = *(v0 + 64);
      v25 = *(v0 + 80);
      v26 = *(v0 + 112);
      v21[7] = *(v0 + 96);
      v21[8] = v26;
      v21[5] = v24;
      v21[6] = v25;
    }

    while (v6 + v5);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

LABEL_17:

  v27 = *(v8 + 16);
  if (v27)
  {
    v48 = v0;
    sub_21C7B0C0C(0, v27, 0);
    v28 = 0;
    v29 = v4;
    v30 = *(v4 + 16);
    v31 = 16 * v30;
    do
    {
      v32 = v8;
      v34 = *(v8 + v28 + 96);
      v33 = *(v8 + v28 + 104);
      v35 = *(v29 + 24);
      v36 = v30 + 1;

      if (v30 >= v35 >> 1)
      {
        sub_21C7B0C0C((v35 > 1), v36, 1);
      }

      *(v29 + 16) = v36;
      v37 = v29 + v31;
      *(v37 + 32) = v34;
      *(v37 + 40) = v33;
      v31 += 16;
      v28 += 112;
      ++v30;
      --v27;
      v8 = v32;
    }

    while (v27);

    v0 = v48;
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
  }

  *(v0 + 312) = v29;
  v38 = *(v0 + 280);
  v39 = *(v0 + 248);
  v40 = [objc_opt_self() sharedStore];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21CB85B64();
  sub_21C979EE8(v38);
  v41 = sub_21CB85584();

  LOBYTE(v39) = [v40 _moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupID_isForAlreadyExitedGroup_];

  if (v39)
  {
    v42 = swift_task_alloc();
    *(v0 + 320) = v42;
    *v42 = v0;
    v42[1] = sub_21C978094;
    v43 = *(v0 + 248);

    return sub_21C980DEC();
  }

  else
  {
    v44 = *(v0 + 288);
    v45 = *(v0 + 248);

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 336) = 1;

    sub_21CB81DC4();
    v46 = *(v0 + 280);

    v47 = *(v0 + 8);

    return v47();
  }
}

uint64_t sub_21C978094()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;
  *(*v1 + 328) = v0;

  v5 = *(v2 + 304);
  v6 = *(v2 + 296);
  if (v0)
  {
    v7 = sub_21C9782FC;
  }

  else
  {
    v7 = sub_21C9781D0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21C9781D0()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 288);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);

  v4(v5);
  if (*(v1 + 16))
  {
    v6 = *(v0 + 312);
    v7 = *(v0 + 272);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 240) = v6;
    v8 = v7;
    sub_21CB81DC4();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 337) = 1;
    v9 = v8;
    sub_21CB81DC4();
  }

  else
  {
    v10 = *(v0 + 312);
  }

  v11 = *(v0 + 280);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_21C9782FC()
{
  v1 = v0[39];
  v2 = v0[35];
  v3 = v0[36];

  v4 = v0[1];
  v5 = v0[41];

  return v4();
}

uint64_t sub_21C978374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a2;
  v31 = a4;
  v32 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v29 - v9;
  v11 = sub_21CB81024();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - v17;
  sub_21CB81014();
  sub_21CB81014();
  v19 = sub_21CB80FF4();
  v21 = v20;
  v22 = *(v12 + 8);
  v22(v15, v11);
  v22(v18, v11);
  v33 = v19;
  v34 = v21;
  sub_21CB81ED4();
  v23 = sub_21CB81F14();
  (*(*(v23 - 8) + 56))(v10, 0, 1, v23);
  v24 = swift_allocObject();
  v25 = v30;
  v26 = v31;
  v24[2] = a1;
  v24[3] = v25;
  v24[4] = a3;
  v24[5] = v26;
  sub_21C71F3FC();

  v27 = v26;
  return sub_21CB84DC4();
}

uint64_t sub_21C9785F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_21CB858E4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_21CB858B4();

  v16 = a4;
  v17 = sub_21CB858A4();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = a1;
  v18[5] = a2;
  v18[6] = a3;
  v18[7] = v16;
  sub_21C822ECC(0, 0, v14, a6, v18);
}

uint64_t sub_21C97874C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[33] = a6;
  v7[34] = a7;
  v7[31] = a4;
  v7[32] = a5;
  v8 = *(*(type metadata accessor for PMSharingGroup() - 8) + 64) + 15;
  v7[35] = swift_task_alloc();
  sub_21CB858B4();
  v7[36] = sub_21CB858A4();
  v10 = sub_21CB85874();
  v7[37] = v10;
  v7[38] = v9;

  return MEMORY[0x2822009F8](sub_21C978814, v10, v9);
}

uint64_t sub_21C978814()
{
  v1 = *(v0 + 248);
  result = sub_21C97ECC0();
  v3 = *(result + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = 0;
    v6 = -v3;
    v7 = result + 32;
    v8 = MEMORY[0x277D84F90];
    do
    {
      v9 = *(result + 16);
      v10 = v9 >= v5;
      v11 = v9 - v5;
      if (!v10)
      {
        v11 = 0;
      }

      v12 = (v7 + 112 * v5++);
      while (1)
      {
        if (!v11)
        {
          __break(1u);
          return result;
        }

        v13 = v12[3];
        v14 = v12[4];
        v15 = v12[6];
        *(v0 + 96) = v12[5];
        *(v0 + 112) = v15;
        v16 = v12[1];
        v17 = v12[2];
        *(v0 + 16) = *v12;
        *(v0 + 32) = v16;
        *(v0 + 64) = v13;
        *(v0 + 80) = v14;
        *(v0 + 48) = v17;
        if ((*(v0 + 96) & 1) == 0)
        {
          break;
        }

        --v11;
        ++v5;
        v12 += 7;
        if (v6 + v5 == 1)
        {
          goto LABEL_17;
        }
      }

      v18 = result;
      sub_21C7A33F0(v0 + 16, v0 + 128);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21C7B10A0(0, *(v8 + 16) + 1, 1);
      }

      v20 = *(v8 + 16);
      v19 = *(v8 + 24);
      result = v18;
      if (v20 >= v19 >> 1)
      {
        sub_21C7B10A0((v19 > 1), v20 + 1, 1);
        result = v18;
      }

      *(v8 + 16) = v20 + 1;
      v21 = (v8 + 112 * v20);
      v22 = *(v0 + 16);
      v23 = *(v0 + 48);
      v21[3] = *(v0 + 32);
      v21[4] = v23;
      v21[2] = v22;
      v24 = *(v0 + 64);
      v25 = *(v0 + 80);
      v26 = *(v0 + 112);
      v21[7] = *(v0 + 96);
      v21[8] = v26;
      v21[5] = v24;
      v21[6] = v25;
    }

    while (v6 + v5);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

LABEL_17:

  v27 = *(v8 + 16);
  if (v27)
  {
    v48 = v0;
    sub_21C7B0C0C(0, v27, 0);
    v28 = 0;
    v29 = v4;
    v30 = *(v4 + 16);
    v31 = 16 * v30;
    do
    {
      v32 = v8;
      v34 = *(v8 + v28 + 96);
      v33 = *(v8 + v28 + 104);
      v35 = *(v29 + 24);
      v36 = v30 + 1;

      if (v30 >= v35 >> 1)
      {
        sub_21C7B0C0C((v35 > 1), v36, 1);
      }

      *(v29 + 16) = v36;
      v37 = v29 + v31;
      *(v37 + 32) = v34;
      *(v37 + 40) = v33;
      v31 += 16;
      v28 += 112;
      ++v30;
      --v27;
      v8 = v32;
    }

    while (v27);

    v0 = v48;
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
  }

  *(v0 + 312) = v29;
  v38 = *(v0 + 280);
  v39 = *(v0 + 248);
  v40 = [objc_opt_self() sharedStore];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21CB85B64();
  sub_21C979EE8(v38);
  v41 = sub_21CB85584();

  LOBYTE(v39) = [v40 _moveSavedAccountsOriginallyContributedByCurrentUserToPersonalKeychainFromGroupID_isForAlreadyExitedGroup_];

  if (v39)
  {
    v42 = swift_task_alloc();
    *(v0 + 320) = v42;
    *v42 = v0;
    v42[1] = sub_21C978C40;
    v43 = *(v0 + 248);

    return sub_21C98165C();
  }

  else
  {
    v44 = *(v0 + 288);
    v45 = *(v0 + 248);

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 336) = 1;

    sub_21CB81DC4();
    v46 = *(v0 + 280);

    v47 = *(v0 + 8);

    return v47();
  }
}

uint64_t sub_21C978C40()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;
  *(*v1 + 328) = v0;

  v5 = *(v2 + 304);
  v6 = *(v2 + 296);
  if (v0)
  {
    v7 = sub_21C97BCC8;
  }

  else
  {
    v7 = sub_21C978D7C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21C978D7C()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 288);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);

  v4(v5);
  if (*(v1 + 16))
  {
    v6 = *(v0 + 312);
    v7 = *(v0 + 272);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 240) = v6;
    v8 = v7;
    sub_21CB81DC4();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 337) = 1;
    v9 = v8;
    sub_21CB81DC4();
  }

  else
  {
    v10 = *(v0 + 312);
  }

  v11 = *(v0 + 280);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_21C978EA8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_21C978FD4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

__n128 sub_21C979128@<Q0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  result = v6;
  a2[4] = v9;
  a2[5] = v10;
  a2[6] = v11;
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  return result;
}

uint64_t sub_21C9791D8(_OWORD *a1, uint64_t *a2)
{
  v3 = a1[5];
  v12[4] = a1[4];
  v12[5] = v3;
  v12[6] = a1[6];
  v4 = a1[1];
  v12[0] = *a1;
  v12[1] = v4;
  v5 = a1[3];
  v12[2] = a1[2];
  v12[3] = v5;
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a1[5];
  v11[11] = a1[4];
  v11[12] = v7;
  v11[13] = a1[6];
  v8 = a1[1];
  v11[7] = *a1;
  v11[8] = v8;
  v9 = a1[3];
  v11[9] = a1[2];
  v11[10] = v9;

  sub_21C6EDBAC(v12, v11, &qword_27CDECC50, &unk_21CBB52A0);
  return sub_21CB81DC4();
}

uint64_t sub_21C9792AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  return result;
}

uint64_t sub_21C97932C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v2;
  return sub_21CB81DC4();
}

uint64_t sub_21C9793A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a2;
  v62 = a1;
  v64 = type metadata accessor for PMSharingGroup();
  v6 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v63 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v61 = &v56 - v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1E98, &unk_21CBB2A80);
  v67 = *(v66 - 8);
  v10 = *(v67 + 64);
  MEMORY[0x28223BE20](v66);
  v65 = &v56 - v11;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2AB8, &unk_21CBB5ED0);
  v59 = *(v60 - 8);
  v12 = *(v59 + 64);
  MEMORY[0x28223BE20](v60);
  v58 = &v56 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v56 - v17;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1EB0, &unk_21CBB2AA0);
  v19 = *(v56 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v56);
  v22 = &v56 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF20, &qword_21CBA07A0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v56 - v26;
  v76[3] = type metadata accessor for PMGroupMembersProviderMain();
  v76[4] = &off_282E56208;
  v76[0] = v57;
  v75[3] = type metadata accessor for PMGroupManagerMain();
  v75[4] = &off_282E54DD8;
  v75[0] = a3;
  v28 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__groupName;
  *&v68 = 0;
  *(&v68 + 1) = 0xE000000000000000;
  sub_21CB81D74();
  (*(v24 + 32))(a4 + v28, v27, v23);
  v29 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__nonOwnerGroupMembers;
  *&v68 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1EB8, &qword_21CBB5E80);
  sub_21CB81D74();
  (*(v19 + 32))(a4 + v29, v22, v56);
  v30 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__isProcessingChanges;
  LOBYTE(v68) = 0;
  sub_21CB81D74();
  v31 = *(v15 + 32);
  v31(a4 + v30, v18, v14);
  v32 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__removeMemberConfirmationAlertPresented;
  LOBYTE(v68) = 0;
  sub_21CB81D74();
  v31(a4 + v32, v18, v14);
  v33 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__removeMemberMightStillHaveAccessAlertPresented;
  LOBYTE(v68) = 0;
  sub_21CB81D74();
  v31(a4 + v33, v18, v14);
  v34 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__memberToRemove;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v70 = 0u;
  v69 = 0u;
  v68 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC50, &unk_21CBB52A0);
  v35 = v58;
  sub_21CB81D74();
  (*(v59 + 32))(a4 + v34, v35, v60);
  v36 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__failedToUpdateGroupAlertPresented;
  LOBYTE(v68) = 0;
  sub_21CB81D74();
  v31(a4 + v36, v18, v14);
  v37 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__updateGroupFailureError;
  *&v68 = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1EC0, &qword_21CBB2AB0);
  v39 = v65;
  v60 = v38;
  sub_21CB81D74();
  v40 = *(v67 + 32);
  v67 += 32;
  v41 = v39;
  v42 = v66;
  v40(a4 + v37, v41, v66);
  v43 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__leaveGroupAlertPresented;
  LOBYTE(v68) = 0;
  sub_21CB81D74();
  v31(a4 + v43, v18, v14);
  v44 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__failedToLeaveGroupAlertPresented;
  LOBYTE(v68) = 0;
  sub_21CB81D74();
  v31(a4 + v44, v18, v14);
  v45 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__failedToMoveAccountsOnLeaveAlertPresented;
  LOBYTE(v68) = 0;
  sub_21CB81D74();
  v31(a4 + v45, v18, v14);
  v46 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__leaveGroupFailureError;
  *&v68 = 0;
  v47 = v65;
  sub_21CB81D74();
  v40(a4 + v46, v47, v42);
  v48 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__deleteGroupAlertPresented;
  LOBYTE(v68) = 0;
  sub_21CB81D74();
  v31(a4 + v48, v18, v14);
  v49 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__failedToDeleteGroupAlertPresented;
  LOBYTE(v68) = 0;
  sub_21CB81D74();
  v31(a4 + v49, v18, v14);
  v50 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__failedToMoveAccountsOnDeleteAlertPresented;
  LOBYTE(v68) = 0;
  sub_21CB81D74();
  v31(a4 + v50, v18, v14);
  v51 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__deleteGroupFailureError;
  *&v68 = 0;
  sub_21CB81D74();
  v40(a4 + v51, v47, v66);
  v52 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__cannotChangePermissionAlertPresented;
  LOBYTE(v68) = 0;
  sub_21CB81D74();
  v31(a4 + v52, v18, v14);
  v53 = v62;
  v54 = v61;
  sub_21C97A15C(v62, v61, type metadata accessor for PMSharingGroup);
  swift_beginAccess();
  sub_21C97A15C(v54, v63, type metadata accessor for PMSharingGroup);
  sub_21CB81D74();
  sub_21C979EE8(v54);
  swift_endAccess();
  sub_21C6E9A08(v76, a4 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel_membersProvider);
  sub_21C6E9A08(v75, a4 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel_groupManager);
  sub_21C981DE8();
  sub_21C979EE8(v53);
  __swift_destroy_boxed_opaque_existential_0(v75);
  __swift_destroy_boxed_opaque_existential_0(v76);
  return a4;
}