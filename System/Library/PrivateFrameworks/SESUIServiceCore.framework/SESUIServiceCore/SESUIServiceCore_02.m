unint64_t sub_2629928E4()
{
  result = qword_27FF32220;
  if (!qword_27FF32220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32220);
  }

  return result;
}

unint64_t sub_26299293C()
{
  result = qword_27FF32228;
  if (!qword_27FF32228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32228);
  }

  return result;
}

unint64_t sub_262992994()
{
  result = qword_27FF32230;
  if (!qword_27FF32230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32230);
  }

  return result;
}

unint64_t sub_2629929EC()
{
  result = qword_27FF32238;
  if (!qword_27FF32238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32238);
  }

  return result;
}

unint64_t sub_262992A44()
{
  result = qword_27FF32240;
  if (!qword_27FF32240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32240);
  }

  return result;
}

unint64_t sub_262992A9C()
{
  result = qword_27FF32248;
  if (!qword_27FF32248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32248);
  }

  return result;
}

unint64_t sub_262992AF4()
{
  result = qword_27FF32250;
  if (!qword_27FF32250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32250);
  }

  return result;
}

unint64_t sub_262992B4C()
{
  result = qword_27FF32258;
  if (!qword_27FF32258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32258);
  }

  return result;
}

unint64_t sub_262992BA4()
{
  result = qword_27FF32260;
  if (!qword_27FF32260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32260);
  }

  return result;
}

unint64_t sub_262992BFC()
{
  result = qword_27FF32268;
  if (!qword_27FF32268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32268);
  }

  return result;
}

unint64_t sub_262992C54()
{
  result = qword_27FF32270;
  if (!qword_27FF32270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32270);
  }

  return result;
}

unint64_t sub_262992CAC()
{
  result = qword_27FF32278;
  if (!qword_27FF32278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32278);
  }

  return result;
}

unint64_t sub_262992D04()
{
  result = qword_27FF32280;
  if (!qword_27FF32280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32280);
  }

  return result;
}

unint64_t sub_262992D5C()
{
  result = qword_27FF32288;
  if (!qword_27FF32288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32288);
  }

  return result;
}

unint64_t sub_262992DB4()
{
  result = qword_27FF32290;
  if (!qword_27FF32290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32290);
  }

  return result;
}

unint64_t sub_262992E0C()
{
  result = qword_27FF32298;
  if (!qword_27FF32298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32298);
  }

  return result;
}

unint64_t sub_262992E64()
{
  result = qword_27FF322A0;
  if (!qword_27FF322A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF322A0);
  }

  return result;
}

uint64_t sub_262992EB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064;
  if (v4 || (sub_262996FD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6569636966667573 && a2 == 0xEF6563617053746ELL || (sub_262996FD4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026299C810 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_262996FD4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_262992FE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_262993030(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B08, &qword_262998CE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2629930A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageManagementUIServerXPCParameters.Present();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.allDeletable.getter()
{
  v1 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(0);
  v7 = 0;
  v8 = *(v0 + *(result + 20));
  v9 = *(v8 + 16);
  while (1)
  {
    v10 = v7;
    if (v9 == v7)
    {
      return v9 == v10;
    }

    if (v7 >= *(v8 + 16))
    {
      break;
    }

    sub_262995C60(v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v7++, v5, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
    v11 = v5[*(v1 + 36)];
    result = sub_262995CC8(v5, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
    if ((v11 & 1) == 0)
    {
      return v9 == v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.lastUsedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27 - v4;
  v6 = sub_262996B24();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v32 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + *(type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(0) + 20));
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = *(v10 + 32);
    v18 = v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v30 = *(v11 + 72);
    v31 = v17;
    v19 = (v7 + 48);
    v28 = v7;
    v20 = (v7 + 32);
    v21 = MEMORY[0x277D84F90];
    v29 = v6;
    do
    {
      sub_262995C60(v18, v14, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
      sub_262967904(&v14[v31], v5);
      sub_262995CC8(v14, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
      if ((*v19)(v5, 1, v6) == 1)
      {
        sub_2629737D4(v5, &qword_27FF314D0, &qword_262997510);
      }

      else
      {
        v22 = *v20;
        (*v20)(v32, v5, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_2629658A0(0, v21[2] + 1, 1, v21);
        }

        v24 = v21[2];
        v23 = v21[3];
        if (v24 >= v23 >> 1)
        {
          v21 = sub_2629658A0(v23 > 1, v24 + 1, 1, v21);
        }

        v21[2] = v24 + 1;
        v25 = v21 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24;
        v6 = v29;
        v22(v25, v32, v29);
      }

      v18 += v30;
      --v16;
    }

    while (v16);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  sub_262963D20(v21, v27);
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.appletType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_262996C14();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.passes.getter()
{
  v1 = *(v0 + *(type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(0) + 20));
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.passes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(0) + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.baseUsage.setter(double a1)
{
  result = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.usage.setter(double a1)
{
  result = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.init(appletType:passes:usage:baseUsage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(0);
  v11 = v10[6];
  v12 = v10[7];
  v13 = sub_262996C14();
  result = (*(*(v13 - 8) + 32))(a3, a1, v13);
  *(a3 + v10[5]) = a2;
  *(a3 + v12) = a4;
  *(a3 + v11) = a5;
  return result;
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.PassEntry.passUniqueID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.PassEntry.title.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.PassEntry.lastUsedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0) + 32);

  return sub_262967904(v3, a1);
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.PassEntry.usage.setter(double a1)
{
  result = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.PassEntry.selected.setter(char a1)
{
  result = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.PassEntry.init(passUniqueID:instanceAIDs:appletTypes:title:usage:isDeletable:lastUsedDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, double a10@<D0>)
{
  v20 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
  v21 = v20[10];
  *(a9 + v20[11]) = 0;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a4;
  a9[3] = a3;
  a9[4] = a5;
  a9[5] = a6;
  *(a9 + v21) = a10;
  *(a9 + v20[9]) = a7;
  v22 = a9 + v20[8];

  return sub_262963C48(a8, v22);
}

uint64_t sub_262993BC8()
{
  v1 = *v0;
  v2 = 0x71696E5573736170;
  v3 = 0x6567617375;
  if (v1 != 6)
  {
    v3 = 0x64657463656C6573;
  }

  v4 = 0x646573557473616CLL;
  if (v1 != 4)
  {
    v4 = 0x6174656C65447369;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x65636E6174736E69;
  if (v1 != 2)
  {
    v5 = 0x656C746974;
  }

  if (*v0)
  {
    v2 = 0x795474656C707061;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_262993CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_262996684(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_262993D0C(uint64_t a1)
{
  v2 = sub_2629959CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262993D48(uint64_t a1)
{
  v2 = sub_2629959CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.PassEntry.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF322A8, &qword_26299BA78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2629959CC();
  sub_262997074();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v22) = 0;
  sub_262996F84();
  if (!v2)
  {
    v22 = v3[2];
    HIBYTE(v21) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF322B8, &qword_26299BA80);
    sub_262995A68(&qword_27FF322C0, &qword_27FF31C40);
    sub_262996FB4();
    v22 = v3[3];
    HIBYTE(v21) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF322C8, &qword_26299BA88);
    sub_262995B04(&qword_27FF322D0);
    sub_262996FB4();
    v13 = v3[4];
    v14 = v3[5];
    LOBYTE(v22) = 3;
    sub_262996F84();
    v15 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
    v16 = v15[8];
    LOBYTE(v22) = 4;
    sub_262996B24();
    sub_262995A20(&qword_27FF31620, MEMORY[0x277CC9578]);
    sub_262996F74();
    v17 = *(v3 + v15[9]);
    LOBYTE(v22) = 5;
    sub_262996F94();
    v18 = *(v3 + v15[10]);
    LOBYTE(v22) = 6;
    sub_262996FA4();
    v19 = *(v3 + v15[11]);
    LOBYTE(v22) = 7;
    sub_262996F94();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.PassEntry.hash(into:)()
{
  v1 = sub_262996B24();
  v41 = *(v1 - 8);
  v42 = v1;
  v2 = *(v41 + 64);
  MEMORY[0x28223BE20](v1);
  v39 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v40 = &v38 - v6;
  v7 = sub_262996C14();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v0;
  v13 = v0[1];
  sub_262996D64();
  v43 = v0;
  v14 = v0[2];
  MEMORY[0x26672E300](*(v14 + 16));
  v15 = *(v14 + 16);
  if (v15)
  {
    v18 = *(v8 + 16);
    v16 = v8 + 16;
    v17 = v18;
    v19 = v14 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v20 = *(v16 + 56);
    do
    {
      v17(v11, v19, v7);
      sub_262995A20(&qword_27FF315C8, MEMORY[0x277D49298]);
      sub_262996D04();
      (*(v16 - 8))(v11, v7);
      v19 += v20;
      --v15;
    }

    while (v15);
  }

  v21 = v43;
  v22 = v43[3];
  MEMORY[0x26672E300](*(v22 + 16));
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = (v22 + 40);
    do
    {
      v25 = *(v24 - 1);
      v26 = *v24;

      sub_262996D64();

      v24 += 2;
      --v23;
    }

    while (v23);
  }

  v27 = v21[4];
  v28 = v21[5];
  sub_262996D64();
  v29 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
  v30 = v40;
  sub_262967904(v21 + v29[8], v40);
  v32 = v41;
  v31 = v42;
  if ((*(v41 + 48))(v30, 1, v42) == 1)
  {
    sub_262997024();
  }

  else
  {
    v33 = v39;
    (*(v32 + 32))(v39, v30, v31);
    sub_262997024();
    sub_262995A20(&qword_27FF315D0, MEMORY[0x277CC9578]);
    sub_262996D04();
    (*(v32 + 8))(v33, v31);
  }

  v34 = *(v21 + v29[9]);
  sub_262997024();
  v35 = *(v21 + v29[10]);
  if (v35 == 0.0)
  {
    v35 = 0.0;
  }

  MEMORY[0x26672E320](*&v35);
  v36 = *(v21 + v29[11]);
  return sub_262997024();
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.PassEntry.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF322D8, &qword_26299BA90);
  v37 = *(v8 - 8);
  v38 = v8;
  v9 = *(v37 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v34 - v10;
  v12 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[3];
  v16 = a1[4];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_2629959CC();
  v18 = v11;
  sub_262997064();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v19 = v7;
  v35 = v15;
  v20 = v37;
  v21 = v38;
  LOBYTE(v41) = 0;
  v22 = v18;
  v23 = sub_262996F14();
  v24 = v35;
  *v35 = v23;
  v24[1] = v25;
  v34[1] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF322B8, &qword_26299BA80);
  v40 = 1;
  sub_262995A68(&qword_27FF322E0, &qword_27FF31C70);
  sub_262996F44();
  v24[2] = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF322C8, &qword_26299BA88);
  v40 = 2;
  sub_262995B04(&qword_27FF322E8);
  sub_262996F44();
  v24[3] = v41;
  LOBYTE(v41) = 3;
  v24[4] = sub_262996F14();
  v24[5] = v26;
  sub_262996B24();
  LOBYTE(v41) = 4;
  sub_262995A20(&qword_27FF31630, MEMORY[0x277CC9578]);
  sub_262996F04();
  sub_262963C48(v19, v24 + v12[8]);
  LOBYTE(v41) = 5;
  *(v24 + v12[9]) = sub_262996F24() & 1;
  LOBYTE(v41) = 6;
  sub_262996F34();
  v27 = v24;
  v28 = v20;
  *(v27 + v12[10]) = v29;
  LOBYTE(v41) = 7;
  LOBYTE(v27) = sub_262996F24();
  v30 = v12[11];
  (*(v28 + 8))(v22, v21);
  v32 = v35;
  v31 = v36;
  *(v35 + v30) = v27 & 1;
  sub_262995C60(v32, v31, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return sub_262995CC8(v32, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
}

uint64_t sub_262994B30()
{
  v1 = 0x795474656C707061;
  v2 = 0x6761735565736162;
  if (*v0 != 2)
  {
    v2 = 0x6567617375;
  }

  if (*v0)
  {
    v1 = 0x736573736170;
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

uint64_t sub_262994BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_262996924(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_262994BD4(uint64_t a1)
{
  v2 = sub_262995B70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262994C10(uint64_t a1)
{
  v2 = sub_262995B70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF322F0, &unk_26299BA98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262995B70();
  sub_262997074();
  v17 = 0;
  sub_262996C14();
  sub_262995A20(&qword_27FF31C40, MEMORY[0x277D49298]);
  sub_262996FB4();
  if (!v2)
  {
    v11 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(0);
    v16 = *(v3 + v11[5]);
    v15[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF319C8, &qword_262998A70);
    sub_262995BC4(&qword_27FF319D0, &qword_27FF319D8);
    sub_262996FB4();
    v12 = *(v3 + v11[6]);
    v15[14] = 2;
    sub_262996FA4();
    v13 = *(v3 + v11[7]);
    v15[13] = 3;
    sub_262996FA4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.hash(into:)(uint64_t a1)
{
  sub_262996C14();
  sub_262995A20(&qword_27FF315C8, MEMORY[0x277D49298]);
  sub_262996D04();
  v3 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(0);
  sub_2629660FC(a1, *(v1 + v3[5]));
  v4 = *(v1 + v3[6]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x26672E320](*&v4);
  v5 = *(v1 + v3[7]);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  return MEMORY[0x26672E320](*&v5);
}

uint64_t sub_262994FB4(void (*a1)(_BYTE *))
{
  sub_262997004();
  a1(v3);
  return sub_262997044();
}

uint64_t SEStorageManagementViewModel.WalletUsageGroup.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_262996C14();
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF32300, &qword_26299BAA8);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262995B70();
  v31 = v10;
  sub_262997064();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v14;
  v17 = v27;
  v36 = 0;
  sub_262995A20(&qword_27FF31C70, MEMORY[0x277D49298]);
  v18 = v28;
  v19 = v30;
  sub_262996F44();
  (*(v17 + 32))(v16, v18, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF319C8, &qword_262998A70);
  v34 = 1;
  sub_262995BC4(&qword_27FF31A58, &qword_27FF31A60);
  sub_262996F44();
  v28 = v11;
  *(v16 + *(v11 + 20)) = v35;
  v33 = 2;
  sub_262996F34();
  *(v16 + *(v28 + 6)) = v20;
  v32 = 3;
  sub_262996F34();
  v22 = v21;
  v23 = *(v28 + 7);
  (*(v29 + 8))(v31, v19);
  *(v16 + v23) = v22;
  sub_262995C60(v16, v26, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_262995CC8(v16, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
}

uint64_t sub_262995470@<X0>(uint64_t *a1@<X8>)
{
  result = CredentialType.localizedDescription.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2629954E4(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_262997004();
  a3(v5);
  return sub_262997044();
}

uint64_t sub_262995548(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_262997004();
  a4(v6);
  return sub_262997044();
}

BOOL _s16SESUIServiceCore28SEStorageManagementViewModelV16WalletUsageGroupV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x26672DEF0]() & 1) != 0 && (v4 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(0), (sub_26298364C(*(a1 + v4[5]), *(a2 + v4[5]))) && *(a1 + v4[6]) == *(a2 + v4[6]))
  {
    return *(a1 + v4[7]) == *(a2 + v4[7]);
  }

  else
  {
    return 0;
  }
}

uint64_t _s16SESUIServiceCore28SEStorageManagementViewModelV16WalletUsageGroupV9PassEntryV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = sub_262996B24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31E70, &qword_262999F98);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_262996FD4() & 1) == 0 || (sub_262983E84(a1[2], a2[2]) & 1) == 0 || (sub_262984098(a1[3], a2[3]) & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_262996FD4() & 1) == 0)
  {
    goto LABEL_19;
  }

  v25 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
  v17 = v25[8];
  v18 = *(v13 + 48);
  sub_262967904(a1 + v17, v16);
  sub_262967904(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_262967904(v16, v12);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v18], v4);
      sub_262995A20(&qword_27FF31E78, MEMORY[0x277CC9578]);
      v20 = sub_262996D24();
      v21 = *(v5 + 8);
      v21(v8, v4);
      v21(v12, v4);
      sub_2629737D4(v16, &qword_27FF314D0, &qword_262997510);
      if (v20)
      {
        goto LABEL_16;
      }

LABEL_19:
      v22 = 0;
      return v22 & 1;
    }

    (*(v5 + 8))(v12, v4);
LABEL_14:
    sub_2629737D4(v16, &qword_27FF31E70, &qword_262999F98);
    goto LABEL_19;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_14;
  }

  sub_2629737D4(v16, &qword_27FF314D0, &qword_262997510);
LABEL_16:
  if (*(a1 + v25[9]) != *(a2 + v25[9]) || *(a1 + v25[10]) != *(a2 + v25[10]))
  {
    goto LABEL_19;
  }

  v22 = *(a1 + v25[11]) ^ *(a2 + v25[11]) ^ 1;
  return v22 & 1;
}

unint64_t sub_2629959CC()
{
  result = qword_27FF322B0;
  if (!qword_27FF322B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF322B0);
  }

  return result;
}

uint64_t sub_262995A20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_262995A68(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF322B8, &qword_26299BA80);
    sub_262995A20(a2, MEMORY[0x277D49298]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_262995B04(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF322C8, &qword_26299BA88);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_262995B70()
{
  result = qword_27FF322F8;
  if (!qword_27FF322F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF322F8);
  }

  return result;
}

uint64_t sub_262995BC4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF319C8, &qword_262998A70);
    sub_262995A20(a2, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_262995C60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_262995CC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_262995D70(void *a1)
{
  a1[1] = sub_262995A20(&qword_27FF31C00, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
  a1[2] = sub_262995A20(&qword_27FF31BE0, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
  a1[3] = sub_262995A20(&qword_27FF32310, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
  result = sub_262995A20(&qword_27FF32318, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
  a1[4] = result;
  return result;
}

uint64_t sub_262995EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_262996C14();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_262995F70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_262996C14();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_262996028()
{
  sub_262996C14();
  if (v0 <= 0x3F)
  {
    sub_2629963A0(319, &qword_27FF31AC8, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_262996100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2629961D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_262996280()
{
  sub_2629963A0(319, &qword_27FF32348, MEMORY[0x277D49298], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_262996404();
    if (v1 <= 0x3F)
    {
      sub_2629963A0(319, &qword_27FF31650, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2629963A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_262996404()
{
  if (!qword_27FF32350)
  {
    v0 = sub_262996DC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF32350);
    }
  }
}

unint64_t sub_262996478()
{
  result = qword_27FF32358;
  if (!qword_27FF32358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32358);
  }

  return result;
}

unint64_t sub_2629964D0()
{
  result = qword_27FF32360;
  if (!qword_27FF32360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32360);
  }

  return result;
}

unint64_t sub_262996528()
{
  result = qword_27FF32368;
  if (!qword_27FF32368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32368);
  }

  return result;
}

unint64_t sub_262996580()
{
  result = qword_27FF32370;
  if (!qword_27FF32370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32370);
  }

  return result;
}

unint64_t sub_2629965D8()
{
  result = qword_27FF32378;
  if (!qword_27FF32378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32378);
  }

  return result;
}

unint64_t sub_262996630()
{
  result = qword_27FF32380;
  if (!qword_27FF32380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32380);
  }

  return result;
}

uint64_t sub_262996684(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x71696E5573736170 && a2 == 0xEC00000044496575;
  if (v4 || (sub_262996FD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x795474656C707061 && a2 == 0xEB00000000736570 || (sub_262996FD4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65636E6174736E69 && a2 == 0xEC00000073444941 || (sub_262996FD4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_262996FD4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646573557473616CLL && a2 == 0xEC00000065746144 || (sub_262996FD4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174656C65447369 && a2 == 0xEB00000000656C62 || (sub_262996FD4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6567617375 && a2 == 0xE500000000000000 || (sub_262996FD4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xE800000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_262996FD4();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_262996924(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x795474656C707061 && a2 == 0xEA00000000006570;
  if (v4 || (sub_262996FD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736573736170 && a2 == 0xE600000000000000 || (sub_262996FD4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6761735565736162 && a2 == 0xE900000000000065 || (sub_262996FD4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6567617375 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_262996FD4();

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