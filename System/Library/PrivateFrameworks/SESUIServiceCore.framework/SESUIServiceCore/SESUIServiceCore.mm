uint64_t SEStorageManagementViewModel.ViennaUsageGroup.localizedTitle.getter()
{
  v1 = (v0 + *(type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup()
{
  result = qword_27FF31580;
  if (!qword_27FF31580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SEStorageManagementViewModel.ViennaUsageGroup.credentials.getter()
{
  v1 = *(v0 + *(type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup() + 24));
}

uint64_t SEStorageManagementViewModel.ViennaUsageGroup.credentials.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup() + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SEStorageManagementViewModel.ViennaUsageGroup.baseUsage.setter(double a1)
{
  result = type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t SEStorageManagementViewModel.ViennaUsageGroup.usage.setter(double a1)
{
  result = type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t _s16SESUIServiceCore28SEStorageManagementViewModelV16ViennaUsageGroupV10identifier10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_262996B54();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SEStorageManagementViewModel.ViennaUsageGroup.lastUsedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = sub_262996B24();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup();
  v15 = *(v1 + *(result + 24));
  v31 = *(v15 + 16);
  if (v31)
  {
    v16 = 0;
    v17 = (v15 + 32);
    v18 = (v10 + 48);
    v29 = v10;
    v30 = (v10 + 32);
    v19 = MEMORY[0x277D84F90];
    v27 = v6;
    v28 = v13;
    while (v16 < *(v15 + 16))
    {
      v20 = *v17;
      sub_262996C84();
      sub_262963C48(v6, v8);

      if ((*v18)(v8, 1, v9) == 1)
      {
        result = sub_262963CB8(v8);
      }

      else
      {
        v21 = v15;
        v22 = *v30;
        (*v30)(v13, v8, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_262965C08(0, v19[2] + 1, 1, v19, &qword_27FF31608, &qword_2629979F0, MEMORY[0x277CC9578]);
        }

        v24 = v19[2];
        v23 = v19[3];
        if (v24 >= v23 >> 1)
        {
          v19 = sub_262965C08(v23 > 1, v24 + 1, 1, v19, &qword_27FF31608, &qword_2629979F0, MEMORY[0x277CC9578]);
        }

        v19[2] = v24 + 1;
        v25 = v19 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v24;
        v13 = v28;
        result = (v22)(v25, v28, v9);
        v15 = v21;
        v6 = v27;
      }

      ++v16;
      v17 += 3;
      if (v31 == v16)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
LABEL_13:
    sub_262963D20(v19, v26);
  }

  return result;
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

uint64_t sub_262963C48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_262963CB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_262963D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_262996B24();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](*(v4 - 8));
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 16);
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26 = v9;
    v24 = a2;
    v25 = v13;
    v13(&v23 - v10, v14, v4);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v8, v14 + *(result + 72) * v19, v4);
        sub_262967A40(&qword_27FF31600, MEMORY[0x277CC9578]);
        v21 = sub_262996D14();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v8, v4);
        }

        else
        {
          v22(v8, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v9 + 56);

    return v17(a2, 1, 1, v4);
  }

  return result;
}

uint64_t SEStorageManagementViewModel.ViennaUsageGroup.CredentialEntry.id.getter()
{
  v1 = sub_262996B54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_262996C64();
  v7 = sub_262996B34();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t SEStorageManagementViewModel.ViennaUsageGroup.CredentialEntry.init(credential:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t static SEStorageManagementViewModel.ViennaUsageGroup.CredentialEntry.== infix(_:_:)(double *a1, double *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  sub_2629658C8();
  return sub_262996DD4() & (v4 ^ v7 ^ 1) & (v3 == v6);
}

uint64_t sub_2629641F4()
{
  v1 = 0x6567617375;
  if (*v0 != 1)
  {
    v1 = 0x64657463656C6573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x69746E6564657263;
  }
}

uint64_t sub_262964250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2629675D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_262964290(uint64_t a1)
{
  v2 = sub_262965958();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2629642CC(uint64_t a1)
{
  v2 = sub_262965958();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.ViennaUsageGroup.CredentialEntry.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314E0, &qword_262997518);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v14 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v14 = *(v1 + 16);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262965958();
  v12 = v9;
  sub_262997074();
  v18 = v12;
  v17 = 0;
  sub_262996C94();
  sub_262967A40(&qword_27FF314F0, MEMORY[0x277D492D0]);
  sub_262996FB4();

  if (!v2)
  {
    v16 = 1;
    sub_262996FA4();
    v15 = 2;
    sub_262996F94();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t SEStorageManagementViewModel.ViennaUsageGroup.CredentialEntry.hash(into:)()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v3 = *v0;
  sub_262996DE4();
  v4 = 0.0;
  if (v1 != 0.0)
  {
    v4 = v1;
  }

  MEMORY[0x26672E320](*&v4);
  return sub_262997024();
}

uint64_t SEStorageManagementViewModel.ViennaUsageGroup.CredentialEntry.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_262997004();
  sub_262996DE4();
  v4 = 0.0;
  if (v2 != 0.0)
  {
    v4 = v2;
  }

  MEMORY[0x26672E320](*&v4);
  sub_262997024();
  return sub_262997044();
}

void SEStorageManagementViewModel.ViennaUsageGroup.CredentialEntry.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314F8, &qword_262997520);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262965958();
  sub_262997064();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_262996C94();
    v16[7] = 0;
    sub_262967A40(&qword_27FF31500, MEMORY[0x277D492D0]);
    sub_262996F44();
    v11 = v17;
    v16[6] = 1;
    sub_262996F34();
    v13 = v12;
    v16[5] = 2;
    v14 = sub_262996F24();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v14 & 1;
    v15 = v11;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_262964898@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_262996B54();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  sub_262996C64();
  v9 = sub_262996B34();
  v11 = v10;
  result = (*(v4 + 8))(v7, v3);
  *a1 = v9;
  a1[1] = v11;
  return result;
}

uint64_t sub_26296497C(double *a1, double *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  sub_2629658C8();
  return sub_262996DD4() & (v4 ^ v7 ^ 1) & (v3 == v6);
}

uint64_t sub_2629649F4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  sub_262997004();
  SEStorageManagementViewModel.ViennaUsageGroup.CredentialEntry.hash(into:)();
  return sub_262997044();
}

uint64_t sub_262964A54()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  sub_262997004();
  SEStorageManagementViewModel.ViennaUsageGroup.CredentialEntry.hash(into:)();
  return sub_262997044();
}

uint64_t SEStorageManagementViewModel.ViennaUsageGroup.init(identifier:localizedTitle:credentials:ownerApp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup();
  *(a6 + v12[8]) = 0;
  *(a6 + v12[9]) = 0;
  v13 = sub_262996B54();
  (*(*(v13 - 8) + 32))(a6, a1, v13);
  v14 = (a6 + v12[5]);
  *v14 = a2;
  v14[1] = a3;
  *(a6 + v12[6]) = a4;
  v15 = a6 + v12[7];

  return sub_2629659F8(a5, v15);
}

uint64_t sub_262964B9C()
{
  v1 = *v0;
  sub_262997004();
  MEMORY[0x26672E300](v1);
  return sub_262997044();
}

uint64_t sub_262964C14()
{
  v1 = *v0;
  sub_262997004();
  MEMORY[0x26672E300](v1);
  return sub_262997044();
}

uint64_t sub_262964C58()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x70704172656E776FLL;
  v4 = 0x6761735565736162;
  if (v1 != 4)
  {
    v4 = 0x6567617375;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x657A696C61636F6CLL;
  if (v1 != 1)
  {
    v5 = 0x69746E6564657263;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_262964D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2629676F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_262964D60(uint64_t a1)
{
  v2 = sub_262966A2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262964D9C(uint64_t a1)
{
  v2 = sub_262966A2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.ViennaUsageGroup.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31508, &qword_262997528);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262966A2C();
  sub_262997074();
  v22 = 0;
  sub_262996B54();
  sub_262967A40(&qword_27FF31518, MEMORY[0x277CC95F0]);
  sub_262996FB4();
  if (!v2)
  {
    v11 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v21 = 1;
    sub_262996F84();
    v20 = *(v3 + v11[6]);
    v19[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31520, &qword_262997530);
    sub_262966B1C(&qword_27FF31528, sub_262966AC8);
    sub_262996FB4();
    v15 = v11[7];
    v19[14] = 3;
    type metadata accessor for SEStorageManagementViewModel.ApplicationInfo();
    sub_262967A40(&qword_27FF31538, type metadata accessor for SEStorageManagementViewModel.ApplicationInfo);
    sub_262996FB4();
    v16 = *(v3 + v11[8]);
    v19[13] = 4;
    sub_262996FA4();
    v17 = *(v3 + v11[9]);
    v19[12] = 5;
    sub_262996FA4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SEStorageManagementViewModel.ViennaUsageGroup.hash(into:)(uint64_t a1)
{
  sub_262996B54();
  sub_262967A40(&qword_27FF31540, MEMORY[0x277CC95F0]);
  sub_262996D04();
  v3 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup();
  v4 = (v1 + v3[5]);
  v5 = *v4;
  v6 = v4[1];
  sub_262996D64();
  sub_2629668B0(a1, *(v1 + v3[6]));
  v7 = (v1 + v3[7]);
  v8 = *v7;
  v9 = v7[1];
  sub_262996D64();
  v10 = *(v1 + v3[8]);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  MEMORY[0x26672E320](*&v10);
  v11 = *(v1 + v3[9]);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  return MEMORY[0x26672E320](*&v11);
}

uint64_t SEStorageManagementViewModel.ViennaUsageGroup.hashValue.getter()
{
  sub_262997004();
  SEStorageManagementViewModel.ViennaUsageGroup.hash(into:)(v1);
  return sub_262997044();
}

uint64_t SEStorageManagementViewModel.ViennaUsageGroup.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = type metadata accessor for SEStorageManagementViewModel.ApplicationInfo();
  v3 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20]();
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_262996B54();
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20]();
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31548, &qword_262997538);
  v35 = *(v37 - 8);
  v9 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v30 - v10;
  v12 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20]();
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262966A2C();
  v36 = v11;
  v17 = v38;
  sub_262997064();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38 = v5;
  v18 = v33;
  v45 = 0;
  sub_262967A40(&qword_27FF31550, MEMORY[0x277CC95F0]);
  v19 = v34;
  sub_262996F44();
  (*(v18 + 32))(v15, v19, v6);
  v44 = 1;
  v20 = sub_262996F14();
  v21 = &v15[v12[5]];
  *v21 = v20;
  v21[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31520, &qword_262997530);
  v42 = 2;
  sub_262966B1C(&qword_27FF31558, sub_262966B94);
  v34 = 0;
  sub_262996F44();
  v23 = v35;
  *&v15[v12[6]] = v43;
  v41 = 3;
  sub_262967A40(&qword_27FF31568, type metadata accessor for SEStorageManagementViewModel.ApplicationInfo);
  v24 = v38;
  sub_262996F44();
  sub_2629659F8(v24, &v15[v12[7]]);
  v40 = 4;
  sub_262996F34();
  *&v15[v12[8]] = v25;
  v39 = 5;
  sub_262996F34();
  v28 = v27;
  v29 = v12[9];
  (*(v23 + 8))(v36, v37);
  *&v15[v29] = v28;
  sub_262967978(v15, v31, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2629679E0(v15, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
}

uint64_t sub_262965820()
{
  sub_262997004();
  SEStorageManagementViewModel.ViennaUsageGroup.hash(into:)(v1);
  return sub_262997044();
}

uint64_t sub_262965864()
{
  sub_262997004();
  SEStorageManagementViewModel.ViennaUsageGroup.hash(into:)(v1);
  return sub_262997044();
}

unint64_t sub_2629658C8()
{
  result = qword_27FF314D8;
  if (!qword_27FF314D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF314D8);
  }

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

unint64_t sub_262965958()
{
  result = qword_27FF314E8;
  if (!qword_27FF314E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF314E8);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2629659F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageManagementViewModel.ApplicationInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_262965AD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF315E0, &qword_2629979D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_262965C08(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
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

uint64_t sub_262965DE4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a2 + 16);
  result = MEMORY[0x26672E300](v8);
  if (v8)
  {
    v10 = *(v3 + 20);
    v11 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    do
    {
      sub_262967978(v11, v7, type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp);
      v13 = *v7;
      v14 = v7[1];
      sub_262996D64();
      v15 = *(v7 + v10);
      if (v15 == 0.0)
      {
        v15 = 0.0;
      }

      MEMORY[0x26672E320](*&v15);
      result = sub_2629679E0(v7, type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp);
      v11 += v12;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_262965F2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(0);
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  result = MEMORY[0x26672E300](v9);
  if (v9)
  {
    v11 = v4[6];
    v18 = v4[5];
    v12 = v4[7];
    v13 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v14 = *(v5 + 72);
    do
    {
      sub_262967978(v13, v8, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
      sub_262996C14();
      sub_262967A40(&qword_27FF315C8, MEMORY[0x277D49298]);
      sub_262996D04();
      sub_2629660FC(a1, *&v8[v18]);
      v15 = *&v8[v11];
      if (v15 == 0.0)
      {
        v15 = 0.0;
      }

      MEMORY[0x26672E320](*&v15);
      v16 = *&v8[v12];
      if (v16 == 0.0)
      {
        v16 = 0.0;
      }

      MEMORY[0x26672E320](*&v16);
      result = sub_2629679E0(v8, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
      v13 += v14;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_2629660FC(uint64_t a1, uint64_t a2)
{
  v3 = sub_262996B24();
  v50 = *(v3 - 8);
  v4 = *(v50 + 64);
  MEMORY[0x28223BE20](v3);
  v52 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v49 - v8;
  v10 = sub_262996C14();
  v53 = *(v10 - 8);
  v11 = *(v53 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
  v15 = *(v14 - 1);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = a2;
  v19 = *(a2 + 16);
  result = MEMORY[0x26672E300](v19);
  v66 = v19;
  if (v19)
  {
    v21 = v14[8];
    v61 = v14[9];
    v62 = v21;
    v22 = v14[10];
    v59 = v14[11];
    v60 = v22;
    v58 = v67 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v23 = *(v15 + 72);
    v24 = 0;
    v25 = (v53 + 8);
    v26 = v50;
    v56 = (v50 + 48);
    v57 = v23;
    v50 += 8;
    v51 = (v26 + 32);
    v64 = v9;
    v65 = v3;
    v63 = v18;
    v54 = v13;
    v55 = (v53 + 8);
    do
    {
      v67 = v24;
      sub_262967978(v58 + v57 * v24, v18, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
      v32 = *v18;
      v33 = v18[1];
      sub_262996D64();
      v34 = v18[2];
      MEMORY[0x26672E300](*(v34 + 16));
      v35 = *(v34 + 16);
      if (v35)
      {
        v36 = v34 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
        v37 = *(v53 + 72);
        v38 = *(v53 + 16);
        do
        {
          v38(v13, v36, v10);
          sub_262967A40(&qword_27FF315C8, MEMORY[0x277D49298]);
          sub_262996D04();
          (*v25)(v13, v10);
          v36 += v37;
          --v35;
        }

        while (v35);
      }

      v18 = v63;
      v39 = v63[3];
      MEMORY[0x26672E300](*(v39 + 16));
      v40 = *(v39 + 16);
      if (v40)
      {
        v41 = (v39 + 40);
        do
        {
          v42 = *(v41 - 1);
          v43 = *v41;

          sub_262996D64();

          v41 += 2;
          --v40;
        }

        while (v40);
      }

      v44 = v18[4];
      v45 = v18[5];
      sub_262996D64();
      v46 = v64;
      sub_262967904(v18 + v62, v64);
      v47 = v65;
      v48 = (*v56)(v46, 1, v65);
      v13 = v54;
      v25 = v55;
      if (v48 == 1)
      {
        sub_262997024();
      }

      else
      {
        v27 = v52;
        (*v51)(v52, v46, v47);
        sub_262997024();
        sub_262967A40(&qword_27FF315D0, MEMORY[0x277CC9578]);
        sub_262996D04();
        (*v50)(v27, v47);
      }

      v28 = v67;
      v29 = *(v18 + v61);
      sub_262997024();
      v30 = *(v18 + v60);
      if (v30 == 0.0)
      {
        v30 = 0.0;
      }

      MEMORY[0x26672E320](*&v30);
      v31 = *(v18 + v59);
      v24 = v28 + 1;
      sub_262997024();
      result = sub_2629679E0(v18, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
    }

    while (v24 != v66);
  }

  return result;
}

uint64_t sub_262966630(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup();
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x26672E300](v8);
  v36 = v8;
  if (v8)
  {
    v10 = 0;
    v11 = v3[6];
    v12 = &v7[v3[5]];
    v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v14 = v3[7];
    v34 = v3[8];
    v35 = v11;
    v15 = &v7[v14];
    v16 = v3[9];
    v32 = a2 + v13;
    v33 = v16;
    v31 = *(v4 + 72);
    do
    {
      sub_262967978(v32 + v31 * v10, v7, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
      sub_262996B54();
      sub_262967A40(&qword_27FF31540, MEMORY[0x277CC95F0]);
      sub_262996D04();
      v21 = *v12;
      v22 = *(v12 + 1);
      sub_262996D64();
      v23 = *&v7[v35];
      MEMORY[0x26672E300](*(v23 + 16));
      v24 = *(v23 + 16);
      if (v24)
      {
        v25 = (v23 + 48);
        do
        {
          v26 = *(v25 - 2);
          v27 = *(v25 - 1);
          v28 = *v25;
          v25 += 24;
          v29 = v26;
          sub_262996DE4();
          if (v27 == 0.0)
          {
            v30 = 0.0;
          }

          else
          {
            v30 = v27;
          }

          MEMORY[0x26672E320](*&v30);
          sub_262997024();

          --v24;
        }

        while (v24);
      }

      v17 = *v15;
      v18 = *(v15 + 1);
      sub_262996D64();
      v19 = *&v7[v34];
      if (v19 == 0.0)
      {
        v19 = 0.0;
      }

      MEMORY[0x26672E320](*&v19);
      v20 = *&v7[v33];
      if (v20 == 0.0)
      {
        v20 = 0.0;
      }

      ++v10;
      MEMORY[0x26672E320](*&v20);
      result = sub_2629679E0(v7, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
    }

    while (v10 != v36);
  }

  return result;
}

void sub_2629668B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x26672E300](v3);
  if (v3)
  {
    v4 = (a2 + 48);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v4 += 24;
      v8 = v5;
      sub_262996DE4();
      if (v6 == 0.0)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = v6;
      }

      MEMORY[0x26672E320](*&v9);
      sub_262997024();

      --v3;
    }

    while (v3);
  }
}

BOOL _s16SESUIServiceCore28SEStorageManagementViewModelV16ViennaUsageGroupV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_262996B44() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (v9 || (sub_262996FD4()) && (sub_2629844D0(*(a1 + v4[6]), *(a2 + v4[6])), (v10) && ((v11 = v4[7], v12 = (a1 + v11), v13 = (a2 + v11), *v12 == *v13) ? (v14 = v12[1] == v13[1]) : (v14 = 0), (v14 || (sub_262996FD4()) && *(a1 + v4[8]) == *(a2 + v4[8])))
  {
    return *(a1 + v4[9]) == *(a2 + v4[9]);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_262966A2C()
{
  result = qword_27FF31510;
  if (!qword_27FF31510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31510);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_262966AC8()
{
  result = qword_27FF31530;
  if (!qword_27FF31530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31530);
  }

  return result;
}

uint64_t sub_262966B1C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF31520, &qword_262997530);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_262966B94()
{
  result = qword_27FF31560;
  if (!qword_27FF31560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31560);
  }

  return result;
}

unint64_t sub_262966BF8()
{
  result = qword_27FF31570;
  if (!qword_27FF31570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31570);
  }

  return result;
}

uint64_t sub_262966CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_262996B54();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for SEStorageManagementViewModel.ApplicationInfo();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_262966E2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_262996B54();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for SEStorageManagementViewModel.ApplicationInfo();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_262966F54()
{
  sub_262996B54();
  if (v0 <= 0x3F)
  {
    sub_262967008();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SEStorageManagementViewModel.ApplicationInfo();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_262967008()
{
  if (!qword_27FF31590)
  {
    v0 = sub_262996DC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF31590);
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_26296706C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_2629670B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s16ViennaUsageGroupV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s16ViennaUsageGroupV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s16ViennaUsageGroupV15CredentialEntryV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s16ViennaUsageGroupV15CredentialEntryV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2629673C8()
{
  result = qword_27FF31598;
  if (!qword_27FF31598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31598);
  }

  return result;
}

unint64_t sub_262967420()
{
  result = qword_27FF315A0;
  if (!qword_27FF315A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF315A0);
  }

  return result;
}

unint64_t sub_262967478()
{
  result = qword_27FF315A8;
  if (!qword_27FF315A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF315A8);
  }

  return result;
}

unint64_t sub_2629674D0()
{
  result = qword_27FF315B0;
  if (!qword_27FF315B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF315B0);
  }

  return result;
}

unint64_t sub_262967528()
{
  result = qword_27FF315B8;
  if (!qword_27FF315B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF315B8);
  }

  return result;
}

unint64_t sub_262967580()
{
  result = qword_27FF315C0;
  if (!qword_27FF315C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF315C0);
  }

  return result;
}

uint64_t sub_2629675D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69746E6564657263 && a2 == 0xEA00000000006C61;
  if (v4 || (sub_262996FD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567617375 && a2 == 0xE500000000000000 || (sub_262996FD4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xE800000000000000)
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

uint64_t sub_2629676F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_262996FD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xEE00656C74695464 || (sub_262996FD4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69746E6564657263 && a2 == 0xEB00000000736C61 || (sub_262996FD4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x70704172656E776FLL && a2 == 0xE800000000000000 || (sub_262996FD4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6761735565736162 && a2 == 0xE900000000000065 || (sub_262996FD4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6567617375 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_262996FD4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_262967904(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_262967978(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2629679E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_262967A40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static SEStorageManagementViewModel.ApplicationInfo.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_262996FD4();
  }
}

uint64_t SEStorageManagementViewModel.ApplicationInfo.bundleIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SEStorageManagementViewModel.ApplicationInfo.localizedName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SEStorageManagementViewModel.ApplicationInfo.lastUsedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SEStorageManagementViewModel.ApplicationInfo() + 24);

  return sub_262967904(v3, a1);
}

uint64_t type metadata accessor for SEStorageManagementViewModel.ApplicationInfo()
{
  result = qword_27FF31640;
  if (!qword_27FF31640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SEStorageManagementViewModel.ApplicationInfo.init(bundleId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SEStorageManagementViewModel.ApplicationInfo();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20]();
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v11 = sub_262968950(a1, a2, 1);
  *v9 = a1;
  v9[1] = a2;
  v12 = v11;
  v13 = [v11 localizedName];
  v14 = sub_262996D44();
  v16 = v15;

  v9[2] = v14;
  v9[3] = v16;
  v17 = *(v6 + 24);
  v18 = sub_262996B24();
  (*(*(v18 - 8) + 56))(v9 + v17, 1, 1, v18);
  sub_2629659F8(v9, a3);
  return (*(v20 + 56))(a3, 0, 1, v6);
}

uint64_t SEStorageManagementViewModel.ApplicationInfo.init(appInfo:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SEStorageManagementViewModel.ApplicationInfo();
  v21 = *(v4 - 8);
  v5 = *(v21 + 64);
  MEMORY[0x28223BE20]();
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_262996CC4();
  v10 = v9;
  v11 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v12 = sub_262968950(v8, v10, 1);
  *v7 = sub_262996CC4();
  v7[1] = v13;
  v14 = [v12 localizedName];
  v15 = sub_262996D44();
  v17 = v16;

  v7[2] = v15;
  v7[3] = v17;
  v18 = *(v4 + 24);
  v19 = sub_262996B24();
  (*(*(v19 - 8) + 56))(v7 + v18, 1, 1, v19);
  sub_2629659F8(v7, a2);
  return (*(v21 + 56))(a2, 0, 1, v4);
}

uint64_t SEStorageManagementViewModel.ApplicationInfo.init(bundleId:lastUsedDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SEStorageManagementViewModel.ApplicationInfo();
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  MEMORY[0x28223BE20]();
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v13 = sub_262968950(a1, a2, 1);
  *v11 = a1;
  v11[1] = a2;
  v14 = v13;
  v15 = [v13 localizedName];
  v16 = sub_262996D44();
  v18 = v17;

  v11[2] = v16;
  v11[3] = v18;
  sub_262963C48(a3, v11 + *(v8 + 24));
  sub_2629659F8(v11, a4);
  return (*(v20 + 56))(a4, 0, 1, v8);
}

uint64_t SEStorageManagementViewModel.ApplicationInfo.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_262996D64();
}

unint64_t sub_2629681A0()
{
  v1 = 0x657A696C61636F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x646573557473616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_262968214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_262968F50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26296823C(uint64_t a1)
{
  v2 = sub_262968A2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262968278(uint64_t a1)
{
  v2 = sub_262968A2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.ApplicationInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31610, &qword_2629979F8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262968A2C();
  sub_262997074();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  sub_262996F84();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v17[14] = 1;
    sub_262996F84();
    v16 = *(type metadata accessor for SEStorageManagementViewModel.ApplicationInfo() + 24);
    v17[13] = 2;
    sub_262996B24();
    sub_262968B88(&qword_27FF31620, MEMORY[0x277CC9578]);
    sub_262996F74();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SEStorageManagementViewModel.ApplicationInfo.hashValue.getter()
{
  sub_262997004();
  v1 = *v0;
  v2 = v0[1];
  sub_262996D64();
  return sub_262997044();
}

uint64_t SEStorageManagementViewModel.ApplicationInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31628, &qword_262997A00);
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v20 - v9;
  v11 = type metadata accessor for SEStorageManagementViewModel.ApplicationInfo();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20]();
  v14 = (&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262968A2C();
  sub_262997064();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v11;
  v16 = v22;
  v26 = 0;
  *v14 = sub_262996F14();
  v14[1] = v17;
  v25 = 1;
  v14[2] = sub_262996F14();
  v14[3] = v18;
  sub_262996B24();
  v24 = 2;
  sub_262968B88(&qword_27FF31630, MEMORY[0x277CC9578]);
  sub_262996F04();
  (*(v16 + 8))(v10, v23);
  sub_262963C48(v6, v14 + *(v20 + 24));
  sub_262968A80(v14, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_262968AE4(v14);
}

uint64_t sub_262968888(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_262996FD4();
  }
}

uint64_t sub_2629688B8()
{
  sub_262997004();
  v1 = *v0;
  v2 = v0[1];
  sub_262996D64();
  return sub_262997044();
}

uint64_t sub_2629688FC()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_262996D64();
}

uint64_t sub_262968904()
{
  sub_262997004();
  v1 = *v0;
  v2 = v0[1];
  sub_262996D64();
  return sub_262997044();
}

uint64_t sub_262968944@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

id sub_262968950(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_262996D34();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_262996AF4();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

unint64_t sub_262968A2C()
{
  result = qword_27FF31618;
  if (!qword_27FF31618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31618);
  }

  return result;
}

uint64_t sub_262968A80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageManagementViewModel.ApplicationInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_262968AE4(uint64_t a1)
{
  v2 = type metadata accessor for SEStorageManagementViewModel.ApplicationInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_262968B88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_262968BE4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_262968CB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_262968D64()
{
  sub_262968DE0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_262968DE0()
{
  if (!qword_27FF31650)
  {
    sub_262996B24();
    v0 = sub_262996DF4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF31650);
    }
  }
}

unint64_t sub_262968E4C()
{
  result = qword_27FF31658;
  if (!qword_27FF31658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31658);
  }

  return result;
}

unint64_t sub_262968EA4()
{
  result = qword_27FF31660;
  if (!qword_27FF31660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31660);
  }

  return result;
}

unint64_t sub_262968EFC()
{
  result = qword_27FF31668;
  if (!qword_27FF31668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31668);
  }

  return result;
}

uint64_t sub_262968F50(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000026299C050 == a2 || (sub_262996FD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xED0000656D614E64 || (sub_262996FD4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646573557473616CLL && a2 == 0xEC00000065746144)
  {

    return 2;
  }

  else
  {
    v5 = sub_262996FD4();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t SEStorageManagementViewModel.MuirfieldBarItem.localizedTitle.getter()
{
  type metadata accessor for FindClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_262996D34();
  v3 = sub_262996D34();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_262996D44();
  return v5;
}

uint64_t sub_2629691E4()
{
  sub_262997004();
  MEMORY[0x26672E300](0);
  return sub_262997044();
}

uint64_t sub_262969250()
{
  sub_262997004();
  MEMORY[0x26672E300](0);
  return sub_262997044();
}

uint64_t sub_2629692A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6567617375 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_262996FD4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_262969334(uint64_t a1)
{
  v2 = sub_26296996C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262969370(uint64_t a1)
{
  v2 = sub_26296996C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.MuirfieldBarItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31670, &qword_262997C30);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26296996C();
  sub_262997074();
  sub_262996FA4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t SEStorageManagementViewModel.MuirfieldBarItem.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x26672E320](*&v1);
}

uint64_t SEStorageManagementViewModel.MuirfieldBarItem.hashValue.getter()
{
  v1 = *v0;
  sub_262997004();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x26672E320](*&v2);
  return sub_262997044();
}

uint64_t SEStorageManagementViewModel.MuirfieldBarItem.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31680, &qword_262997C38);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26296996C();
  sub_262997064();
  if (!v2)
  {
    sub_262996F34();
    v12 = v11;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_262969710(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31670, &qword_262997C30);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26296996C();
  sub_262997074();
  sub_262996FA4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_26296987C()
{
  v1 = *v0;
  sub_262997004();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x26672E320](*&v2);
  return sub_262997044();
}

uint64_t sub_2629698D8()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x26672E320](*&v1);
}

uint64_t sub_262969914()
{
  v1 = *v0;
  sub_262997004();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x26672E320](*&v2);
  return sub_262997044();
}

unint64_t sub_26296996C()
{
  result = qword_27FF31678;
  if (!qword_27FF31678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31678);
  }

  return result;
}

unint64_t sub_2629699C0(void *a1)
{
  a1[1] = sub_262969A00();
  a1[2] = sub_262969A54();
  a1[3] = sub_262969AA8();
  result = sub_262969AFC();
  a1[4] = result;
  return result;
}

unint64_t sub_262969A00()
{
  result = qword_27FF31688;
  if (!qword_27FF31688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31688);
  }

  return result;
}

unint64_t sub_262969A54()
{
  result = qword_27FF31690;
  if (!qword_27FF31690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31690);
  }

  return result;
}

unint64_t sub_262969AA8()
{
  result = qword_27FF31698;
  if (!qword_27FF31698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31698);
  }

  return result;
}

unint64_t sub_262969AFC()
{
  result = qword_27FF316A0;
  if (!qword_27FF316A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF316A0);
  }

  return result;
}

unint64_t sub_262969B54()
{
  result = qword_27FF316A8;
  if (!qword_27FF316A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF316A8);
  }

  return result;
}

uint64_t _s16MuirfieldBarItemVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s16MuirfieldBarItemVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t _s16MuirfieldBarItemV10CodingKeysOwet(unsigned int *a1, int a2)
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

_WORD *_s16MuirfieldBarItemV10CodingKeysOwst(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_262969CF8()
{
  result = qword_27FF316B0;
  if (!qword_27FF316B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF316B0);
  }

  return result;
}

unint64_t sub_262969D50()
{
  result = qword_27FF316B8;
  if (!qword_27FF316B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF316B8);
  }

  return result;
}

unint64_t sub_262969DA8()
{
  result = qword_27FF316C0;
  if (!qword_27FF316C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF316C0);
  }

  return result;
}

uint64_t SESOpaqueObjectiveCBridgable<>._bridgeToObjectiveC()(uint64_t a1, uint64_t a2)
{
  v3 = sub_262996AE4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_262996AD4();
  v6 = *(a2 + 16);
  v7 = sub_262996AC4();
  v9 = v8;
  v10 = sub_262996B04();
  sub_262969EB4(v7, v9);

  return v10;
}

uint64_t sub_262969EB4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t static SESOpaqueObjectiveCBridgable<>._forceBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_262996DF4();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v20 - v10;
  v12 = sub_262996AB4();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_262996AA4();
  v15 = sub_262996B14();
  v17 = v16;
  v18 = *(a4 + 8);
  sub_262996A94();
  (*(v8 + 8))(a2, v7);
  sub_262969EB4(v15, v17);

  (*(*(a3 - 8) + 56))(v11, 0, 1, a3);
  return (*(v8 + 32))(a2, v11, v7);
}

BOOL static SESOpaqueObjectiveCBridgable<>._conditionallyBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_262996DF4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = (MEMORY[0x28223BE20])();
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v27 = *(v8 + 8);
  v28 = a2;
  v27(a2, v7);
  v15 = sub_262996AB4();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_262996AA4();
  v18 = sub_262996B14();
  v20 = v19;
  v21 = *(a4 + 8);
  sub_262996A94();

  sub_262969EB4(v18, v20);
  v22 = *(a3 - 8);
  (*(v22 + 56))(v14, 0, 1, a3);
  v23 = v28;
  (*(v8 + 32))(v28, v14, v7);
  (*(v8 + 16))(v12, v23, v7);
  v24 = (*(v22 + 48))(v12, 1, a3) != 1;
  v27(v12, v7);
  return v24;
}

uint64_t static SESOpaqueObjectiveCBridgable<>._unconditionallyBridgeFromObjectiveC(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_262996DF4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v16 = *(a2 - 8);
  result = (*(v16 + 56))(&v19 - v14, 1, 1, a2);
  if (a1)
  {
    v18 = *(a3 + 24);
    sub_262996EC4();
    (*(v9 + 16))(v13, v15, v8);
    result = (*(v16 + 48))(v13, 1, a2);
    if (result != 1)
    {
      (*(v9 + 8))(v15, v8);
      return (*(v16 + 32))(a4, v13, a2);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t CredentialType.localizedDescription.getter()
{
  v1 = v0;
  v2 = sub_262996B64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_262996C14();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v1, v7);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == *MEMORY[0x277D49240])
  {
    (*(v8 + 96))(v11, v7);
    (*(v3 + 32))(v6, v11, v2);
    v13 = sub_26296BA1C();
    (*(v3 + 8))(v6, v2);
  }

  else if (v12 == *MEMORY[0x277D49238] || v12 == *MEMORY[0x277D491A8])
  {
    v13 = 0x584946204F444F54;
    (*(v8 + 8))(v11, v7);
  }

  else if (v12 == *MEMORY[0x277D491F0] || v12 == *MEMORY[0x277D491D8] || v12 == *MEMORY[0x277D49268] || v12 == *MEMORY[0x277D49200] || v12 == *MEMORY[0x277D491E0] || v12 == *MEMORY[0x277D49288] || v12 == *MEMORY[0x277D49208] || v12 == *MEMORY[0x277D491E8] || v12 == *MEMORY[0x277D49250] || v12 == *MEMORY[0x277D49210] || v12 == *MEMORY[0x277D49258] || v12 == *MEMORY[0x277D491B8] || v12 == *MEMORY[0x277D491B0] || v12 == *MEMORY[0x277D491C8] || v12 == *MEMORY[0x277D491C0] || v12 == *MEMORY[0x277D49220] || v12 == *MEMORY[0x277D49230] || v12 == *MEMORY[0x277D49260] || v12 == *MEMORY[0x277D49278] || v12 == *MEMORY[0x277D491F8] || v12 == *MEMORY[0x277D49218] || v12 == *MEMORY[0x277D49228] || v12 == *MEMORY[0x277D49248] || v12 == *MEMORY[0x277D491D0] || v12 == *MEMORY[0x277D49270] || v12 == *MEMORY[0x277D49280] || v12 == *MEMORY[0x277D49290])
  {
    type metadata accessor for FindClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    v16 = sub_262996D34();
    v17 = sub_262996D34();
    v18 = [v15 localizedStringForKey:v16 value:0 table:v17];

    v13 = sub_262996D44();
  }

  else
  {
    v20 = v8;
    type metadata accessor for FindClass();
    v21 = swift_getObjCClassFromMetadata();
    v22 = [objc_opt_self() bundleForClass_];
    v23 = sub_262996D34();
    v24 = sub_262996D34();
    v25 = [v22 localizedStringForKey:v23 value:0 table:v24];

    v13 = sub_262996D44();
    (*(v20 + 8))(v11, v7);
  }

  return v13;
}

uint64_t sub_26296BA1C()
{
  v1 = v0;
  v2 = sub_262996B64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D490C0] || v7 == *MEMORY[0x277D490A8] || v7 == *MEMORY[0x277D49128] || v7 == *MEMORY[0x277D490D0] || v7 == *MEMORY[0x277D490B0] || v7 == *MEMORY[0x277D490D8] || v7 == *MEMORY[0x277D490B8] || v7 == *MEMORY[0x277D490E0] || v7 == *MEMORY[0x277D49118] || v7 == *MEMORY[0x277D49088] || v7 == *MEMORY[0x277D49080] || v7 == *MEMORY[0x277D49098] || v7 == *MEMORY[0x277D49090] || v7 == *MEMORY[0x277D490F0] || (v20 = v6, v21 = v2, v7 == *MEMORY[0x277D49100]) || v7 == *MEMORY[0x277D49120] || v7 == *MEMORY[0x277D49138] || v7 == *MEMORY[0x277D490C8] || v7 == *MEMORY[0x277D490E8] || v7 == *MEMORY[0x277D490F8] || v7 == *MEMORY[0x277D49108] || v7 == *MEMORY[0x277D49130] || v7 == *MEMORY[0x277D49140] || v7 == *MEMORY[0x277D490A0] || v7 == *MEMORY[0x277D49110] || v7 == *MEMORY[0x277D49148])
  {
    type metadata accessor for FindClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    v10 = sub_262996D34();
    v11 = sub_262996D34();
    v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

    v13 = sub_262996D44();
  }

  else
  {
    type metadata accessor for FindClass();
    v15 = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass_];
    v17 = sub_262996D34();
    v18 = sub_262996D34();
    v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

    v13 = sub_262996D44();
    (*(v3 + 8))(v20, v21);
  }

  return v13;
}

uint64_t SEStorageManagementViewModel.PrimaryCategory.entries.getter()
{
  v1 = *(v0 + *(type metadata accessor for SEStorageManagementViewModel.PrimaryCategory(0) + 20));
}

uint64_t sub_26296CDA0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SEStorageManagementViewModel.PrimaryCategory.init(identifier:entries:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2629716FC(a1, a3, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
  result = type metadata accessor for SEStorageManagementViewModel.PrimaryCategory(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

double SEStorageManagementViewModel.PrimaryCategory.usage.getter()
{
  v1 = *(v0 + *(type metadata accessor for SEStorageManagementViewModel.PrimaryCategory(0) + 20));
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0.0;
  }

  v3 = v1 + 32;
  v4 = 0.0;
  do
  {
    sub_26296F988(v3, v8);
    v5 = v9;
    v6 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v4 = v4 + (*(v6 + 40))(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v8);
    v3 += 40;
    --v2;
  }

  while (v2);
  return v4;
}

uint64_t SEStorageManagementViewModel.PrimaryCategory.lastUsedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = sub_262996B24();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v28 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + *(type metadata accessor for SEStorageManagementViewModel.PrimaryCategory(0) + 20));
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = v13 + 32;
    v16 = (v10 + 48);
    v26 = v10;
    v27 = (v10 + 32);
    v17 = MEMORY[0x277D84F90];
    do
    {
      sub_26296F988(v15, v29);
      v19 = v30;
      v18 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      (*(v18 + 48))(v19, v18);
      sub_262963C48(v6, v8);
      __swift_destroy_boxed_opaque_existential_1(v29);
      if ((*v16)(v8, 1, v9) == 1)
      {
        sub_2629737D4(v8, &qword_27FF314D0, &qword_262997510);
      }

      else
      {
        v20 = *v27;
        (*v27)(v28, v8, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_2629658A0(0, *(v17 + 2) + 1, 1, v17);
        }

        v22 = *(v17 + 2);
        v21 = *(v17 + 3);
        if (v22 >= v21 >> 1)
        {
          v17 = sub_2629658A0(v21 > 1, v22 + 1, 1, v17);
        }

        *(v17 + 2) = v22 + 1;
        v20(&v17[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22], v28, v9);
      }

      v15 += 40;
      --v14;
    }

    while (v14);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  sub_262963D20(v17, v25);
}

uint64_t SEStorageManagementViewModel.PrimaryCategory.localizedTitle.getter()
{
  v1 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_262972420(v0, v12, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_2;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_2629716FC(v12, v8, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
    v22 = SEStorageManagementViewModel.WalletUsageCategory.localizedTitle.getter();
    v19 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory;
    v20 = v8;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_2629716FC(v12, v4, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
    v22 = *(v4 + 2);
    v18 = *(v4 + 3);

    v19 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp;
    v20 = v4;
LABEL_7:
    sub_262971764(v20, v19);
    return v22;
  }

LABEL_2:
  type metadata accessor for FindClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  v16 = sub_262996D34();
  v17 = sub_262996D34();
  v21 = [v15 localizedStringForKey:v16 value:0 table:v17];

  v22 = sub_262996D44();
  return v22;
}

uint64_t sub_26296D700()
{
  type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier(0);
  sub_262996E84();
  return 0;
}

uint64_t SEStorageManagementViewModel.PrimaryCategory.id.getter()
{
  type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier(0);
  sub_262996E84();
  return 0;
}

uint64_t sub_26296D7A0@<X0>(void *a1@<X8>)
{
  type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier(0);
  result = sub_262996E84();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_26296D810()
{
  v1 = *v0;
  v2 = 0x6B6F6F6273736150;
  v3 = 1835619141;
  if (v1 != 5)
  {
    v3 = 0x6553616E6E656956;
  }

  v4 = 0x616E6E656956;
  if (v1 != 3)
  {
    v4 = 0x6C6569667269754DLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0xD000000000000016;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26296D8F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2629734AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26296D928(uint64_t a1)
{
  v2 = sub_262972138();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26296D964(uint64_t a1)
{
  v2 = sub_262972138();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26296D9AC@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_26296D9DC(uint64_t a1)
{
  v2 = sub_2629721E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26296DA18(uint64_t a1)
{
  v2 = sub_2629721E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26296DA54(uint64_t a1)
{
  v2 = sub_262972234();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26296DA90(uint64_t a1)
{
  v2 = sub_262972234();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26296DACC(uint64_t a1)
{
  v2 = sub_2629723CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26296DB08(uint64_t a1)
{
  v2 = sub_2629723CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26296DB44(uint64_t a1)
{
  v2 = sub_262972330();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26296DB80(uint64_t a1)
{
  v2 = sub_262972330();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26296DBBC(uint64_t a1)
{
  v2 = sub_2629722DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26296DBF8(uint64_t a1)
{
  v2 = sub_2629722DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26296DC34(uint64_t a1)
{
  v2 = sub_262972288();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26296DC70(uint64_t a1)
{
  v2 = sub_262972288();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26296DCD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000026299C4D0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_262996FD4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_26296DD68(uint64_t a1)
{
  v2 = sub_26297218C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26296DDA4(uint64_t a1)
{
  v2 = sub_26297218C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.PrimaryCategory.Identifier.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF316C8, " L");
  v3 = *(v2 - 8);
  v71 = v2;
  v72 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v78 = &v57 - v5;
  v68 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp();
  v6 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v77 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF316D0, &qword_262997EF0);
  v69 = *(v8 - 8);
  v70 = v8;
  v9 = *(v69 + 64);
  MEMORY[0x28223BE20](v8);
  v67 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF316D8, &qword_262997EF8);
  v65 = *(v11 - 8);
  v66 = v11;
  v12 = *(v65 + 64);
  MEMORY[0x28223BE20](v11);
  v64 = &v57 - v13;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF316E0, &qword_262997F00);
  v62 = *(v63 - 8);
  v14 = *(v62 + 64);
  MEMORY[0x28223BE20](v63);
  v61 = &v57 - v15;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF316E8, &qword_262997F08);
  v58 = *(v59 - 8);
  v16 = *(v58 + 64);
  MEMORY[0x28223BE20](v59);
  v57 = &v57 - v17;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF316F0, &qword_262997F10);
  v60 = *(v76 - 8);
  v18 = *(v60 + 64);
  MEMORY[0x28223BE20](v76);
  v75 = &v57 - v19;
  v74 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0);
  v20 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF316F8, &qword_262997F18);
  v73 = *(v23 - 8);
  v24 = *(v73 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v57 - v25;
  v27 = type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31700, &qword_262997F20);
  v81 = *(v31 - 8);
  v82 = v31;
  v32 = *(v81 + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v57 - v33;
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262972138();
  v80 = v34;
  sub_262997074();
  sub_262972420(v79, v30, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v40 = v73;
    v41 = v22;
    v42 = v75;
    v43 = v76;
    v45 = v77;
    v44 = v78;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v83 = 0;
        sub_2629723CC();
        v54 = v82;
        v55 = v80;
        sub_262996F64();
        (*(v40 + 8))(v26, v23);
        return (*(v81 + 8))(v55, v54);
      }

      sub_2629716FC(v30, v77, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
      v89 = 6;
      sub_26297218C();
      v46 = v82;
      v47 = v80;
      sub_262996F64();
      sub_262972384(&qword_27FF31718, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
      v48 = v71;
      sub_262996FB4();
      (*(v72 + 8))(v44, v48);
      v49 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp;
    }

    else
    {
      v45 = v41;
      sub_2629716FC(v30, v41, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
      v84 = 1;
      sub_262972330();
      v46 = v82;
      v47 = v80;
      sub_262996F64();
      sub_262972384(&qword_27FF31748, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
      sub_262996FB4();
      (*(v60 + 8))(v42, v43);
      v49 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory;
    }

    sub_262971764(v45, v49);
    return (*(v81 + 8))(v47, v46);
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v87 = 4;
      sub_262972234();
      v50 = v64;
      v38 = v82;
      v39 = v80;
      sub_262996F64();
      v52 = v65;
      v51 = v66;
    }

    else
    {
      v88 = 5;
      sub_2629721E0();
      v50 = v67;
      v38 = v82;
      v39 = v80;
      sub_262996F64();
      v52 = v69;
      v51 = v70;
    }

    (*(v52 + 8))(v50, v51);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v85 = 2;
    sub_2629722DC();
    v37 = v57;
    v38 = v82;
    v39 = v80;
    sub_262996F64();
    (*(v58 + 8))(v37, v59);
  }

  else
  {
    v86 = 3;
    sub_262972288();
    v56 = v61;
    v38 = v82;
    v39 = v80;
    sub_262996F64();
    (*(v62 + 8))(v56, v63);
  }

  return (*(v81 + 8))(v39, v38);
}

uint64_t SEStorageManagementViewModel.PrimaryCategory.Identifier.hash(into:)(uint64_t a1)
{
  v33 = a1;
  v2 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_262996C14();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_262972420(v1, v22, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        return MEMORY[0x26672E300](0);
      }

      sub_2629716FC(v22, v5, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
      MEMORY[0x26672E300](6);
      v25 = *v5;
      v26 = v5[1];
      sub_262996D64();
      v27 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp;
      v28 = v5;
    }

    else
    {
      sub_2629716FC(v22, v18, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
      v29 = v33;
      MEMORY[0x26672E300](1);
      sub_262972420(v18, v14, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
      v30 = (*(v7 + 48))(v14, 2, v6);
      if (v30)
      {
        if (v30 == 1)
        {
          v31 = 0;
        }

        else
        {
          v31 = 2;
        }

        MEMORY[0x26672E300](v31);
      }

      else
      {
        (*(v7 + 32))(v10, v14, v6);
        MEMORY[0x26672E300](1);
        sub_262972384(&qword_27FF315C8, MEMORY[0x277D49298]);
        sub_262996D04();
        (*(v7 + 8))(v10, v6);
      }

      sub_262965F2C(v29, *&v18[*(v15 + 20)]);
      v27 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory;
      v28 = v18;
    }

    return sub_262971764(v28, v27);
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      return MEMORY[0x26672E300](4);
    }

    else
    {
      return MEMORY[0x26672E300](5);
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return MEMORY[0x26672E300](2);
  }

  else
  {
    return MEMORY[0x26672E300](3);
  }
}

uint64_t sub_26296EBB0()
{
  sub_262997004();
  SEStorageManagementViewModel.PrimaryCategory.Identifier.hash(into:)(v1);
  return sub_262997044();
}

uint64_t SEStorageManagementViewModel.PrimaryCategory.Identifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31758, &qword_262997F28);
  v4 = *(v3 - 8);
  v95 = v3;
  v96 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v105 = &v77 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31760, &qword_262997F30);
  v93 = *(v7 - 8);
  v94 = v7;
  v8 = *(v93 + 64);
  MEMORY[0x28223BE20](v7);
  v104 = &v77 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31768, &qword_262997F38);
  v91 = *(v10 - 8);
  v92 = v10;
  v11 = *(v91 + 64);
  MEMORY[0x28223BE20](v10);
  v99 = &v77 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31770, &qword_262997F40);
  v14 = *(v13 - 8);
  v89 = v13;
  v90 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v98 = &v77 - v16;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31778, &qword_262997F48);
  v86 = *(v87 - 8);
  v17 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v97 = &v77 - v18;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31780, &qword_262997F50);
  v88 = *(v83 - 8);
  v19 = *(v88 + 64);
  MEMORY[0x28223BE20](v83);
  v103 = &v77 - v20;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31788, &qword_262997F58);
  v84 = *(v85 - 8);
  v21 = *(v84 + 64);
  MEMORY[0x28223BE20](v85);
  v102 = &v77 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31790, &unk_262997F60);
  v101 = *(v23 - 8);
  v24 = *(v101 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v77 - v25;
  v27 = type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier(0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v77 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v77 - v35;
  v37 = a1[3];
  v38 = a1[4];
  v106 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v37);
  sub_262972138();
  v39 = v107;
  sub_262997064();
  if (v39)
  {
    goto LABEL_11;
  }

  v40 = v102;
  v78 = v34;
  v79 = v31;
  v41 = v103;
  v81 = 0;
  v43 = v104;
  v42 = v105;
  v82 = v27;
  v80 = v36;
  v107 = v26;
  v44 = sub_262996F54();
  if (*(v44 + 16) == 1)
  {
    v45 = *(v44 + 32);
    if (v45 != 7)
    {
      if (*(v44 + 32) > 2u)
      {
        if (*(v44 + 32) > 4u)
        {
          v46 = v100;
          if (v45 != 5)
          {
            v114 = 6;
            sub_26297218C();
            v71 = v42;
            v72 = v107;
            v73 = v81;
            sub_262996EE4();
            v74 = v101;
            if (!v73)
            {
              v104 = v23;
              type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp();
              sub_262972384(&qword_27FF317A0, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
              v75 = v79;
              v76 = v95;
              sub_262996F44();
              (*(v96 + 8))(v71, v76);
              (*(v74 + 8))(v107, v104);
              swift_unknownObjectRelease();
              swift_storeEnumTagMultiPayload();
              v51 = v80;
              sub_2629716FC(v75, v80, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
              goto LABEL_33;
            }

            (*(v101 + 8))(v72, v23);
            goto LABEL_10;
          }

          v113 = 5;
          sub_2629721E0();
          v48 = v107;
          v66 = v81;
          sub_262996EE4();
          v50 = v101;
          if (!v66)
          {
            (*(v93 + 8))(v43, v94);
            (*(v50 + 8))(v48, v23);
            swift_unknownObjectRelease();
            v51 = v80;
            swift_storeEnumTagMultiPayload();
            goto LABEL_33;
          }
        }

        else
        {
          v46 = v100;
          if (v45 == 3)
          {
            v111 = 3;
            sub_262972288();
            v47 = v98;
            v48 = v107;
            v49 = v81;
            sub_262996EE4();
            v50 = v101;
            if (!v49)
            {
              (*(v90 + 8))(v47, v89);
              (*(v50 + 8))(v48, v23);
              swift_unknownObjectRelease();
              v51 = v80;
              swift_storeEnumTagMultiPayload();
LABEL_33:
              v65 = v106;
              goto LABEL_34;
            }
          }

          else
          {
            v112 = 4;
            sub_262972234();
            v69 = v99;
            v48 = v107;
            v70 = v81;
            sub_262996EE4();
            v50 = v101;
            if (!v70)
            {
              (*(v91 + 8))(v69, v92);
              (*(v50 + 8))(v48, v23);
              swift_unknownObjectRelease();
              v51 = v80;
              swift_storeEnumTagMultiPayload();
              goto LABEL_33;
            }
          }
        }

        goto LABEL_25;
      }

      if (*(v44 + 32))
      {
        v60 = v107;
        v61 = v81;
        if (v45 == 1)
        {
          v109 = 1;
          sub_262972330();
          v62 = v41;
          sub_262996EE4();
          if (!v61)
          {
            type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0);
            sub_262972384(&qword_27FF317A8, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
            v63 = v78;
            v64 = v83;
            sub_262996F44();
            (*(v88 + 8))(v62, v64);
            (*(v101 + 8))(v60, v23);
            swift_unknownObjectRelease();
            v65 = v106;
            swift_storeEnumTagMultiPayload();
            v51 = v80;
            sub_2629716FC(v63, v80, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
            v46 = v100;
LABEL_34:
            sub_2629716FC(v51, v46, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
            v58 = v65;
            return __swift_destroy_boxed_opaque_existential_1(v58);
          }

          goto LABEL_23;
        }

        v110 = 2;
        sub_2629722DC();
        v68 = v97;
        sub_262996EE4();
        if (v61)
        {
LABEL_23:
          (*(v101 + 8))(v60, v23);
          goto LABEL_10;
        }

        (*(v86 + 8))(v68, v87);
        (*(v101 + 8))(v60, v23);
        swift_unknownObjectRelease();
        v51 = v80;
      }

      else
      {
        v108 = 0;
        sub_2629723CC();
        v48 = v107;
        v67 = v81;
        sub_262996EE4();
        if (v67)
        {
          v50 = v101;
LABEL_25:
          (*(v50 + 8))(v48, v23);
          goto LABEL_10;
        }

        (*(v84 + 8))(v40, v85);
        (*(v101 + 8))(v48, v23);
        swift_unknownObjectRelease();
        v51 = v80;
      }

      swift_storeEnumTagMultiPayload();
      v65 = v106;
      v46 = v100;
      goto LABEL_34;
    }
  }

  v52 = v23;
  v53 = sub_262996E44();
  swift_allocError();
  v55 = v54;
  v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31798, &qword_2629991C0) + 48);
  *v55 = v82;
  v57 = v107;
  sub_262996EF4();
  sub_262996E34();
  (*(*(v53 - 8) + 104))(v55, *MEMORY[0x277D84160], v53);
  swift_willThrow();
  (*(v101 + 8))(v57, v52);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v58 = v106;
  return __swift_destroy_boxed_opaque_existential_1(v58);
}

uint64_t sub_26296F918()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26296F988(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26296F9F0()
{
  sub_262997004();
  SEStorageManagementViewModel.PrimaryCategory.Identifier.hash(into:)(v1);
  return sub_262997044();
}

BOOL SEStorageManagementViewModel.PrimaryCategory.isPassbookSecondaryCategory.getter()
{
  v1 = type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_262972420(v0, v4, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = EnumCaseMultiPayload == 0;
  if (EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier;
  }

  else
  {
    v7 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory;
  }

  sub_262971764(v4, v7);
  return v6;
}

BOOL SEStorageManagementViewModel.PrimaryCategory.isViennaSecondaryCategory.getter()
{
  v1 = type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_262972420(v0, v4, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = EnumCaseMultiPayload == 1;
  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp;
  }

  else
  {
    v7 = type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier;
  }

  sub_262971764(v4, v7);
  return v6;
}

uint64_t sub_26296FBE4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x800000026299BF30;
  if (v2 == 1)
  {
    v4 = 0x800000026299BF30;
  }

  else
  {
    v4 = 0x800000026299BF50;
  }

  if (*a1)
  {
    v5 = 0xD000000000000017;
  }

  else
  {
    v5 = 0x696669746E656469;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  if (*a2 != 1)
  {
    v3 = 0x800000026299BF50;
  }

  if (*a2)
  {
    v7 = 0xD000000000000017;
  }

  else
  {
    v7 = 0x696669746E656469;
  }

  if (*a2)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0xEA00000000007265;
  }

  if (v5 == v7 && v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_262996FD4();
  }

  return v9 & 1;
}

uint64_t sub_26296FCB8()
{
  v1 = *v0;
  sub_262997004();
  sub_262996D64();

  return sub_262997044();
}

uint64_t sub_26296FD68()
{
  *v0;
  *v0;
  sub_262996D64();
}

uint64_t sub_26296FE04()
{
  v1 = *v0;
  sub_262997004();
  sub_262996D64();

  return sub_262997044();
}

uint64_t sub_26296FEB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26297370C();
  *a2 = result;
  return result;
}

void sub_26296FEE0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0x800000026299BF30;
  if (v2 != 1)
  {
    v4 = 0x800000026299BF50;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = 0xD000000000000017;
  }

  else
  {
    v6 = 0x696669746E656469;
  }

  if (!v5)
  {
    v3 = v4;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_26296FF4C()
{
  *v0;
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_26296FFB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26297370C();
  *a1 = result;
  return result;
}

uint64_t sub_26296FFDC(uint64_t a1)
{
  v2 = sub_262972488();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262970018(uint64_t a1)
{
  v2 = sub_262972488();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.PrimaryCategory.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF317B0, &unk_262997F70);
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v10 = type metadata accessor for SEStorageManagementViewModel.PrimaryCategory(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262972488();
  v15 = v30;
  sub_262997064();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v10;
  v30 = a1;
  v16 = v13;
  v17 = v27;
  v18 = v28;
  LOBYTE(v32) = 0;
  sub_262972384(&qword_27FF317C0, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
  v19 = v29;
  sub_262996F44();
  sub_2629716FC(v19, v16, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF317C8, &unk_26299A900);
  v31 = 1;
  sub_262972578(&qword_27FF317D0, &qword_27FF317A8);
  sub_262996F44();
  v21 = v17;
  if (*(v32 + 16))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF317D8, &unk_262997F80);
    v31 = 2;
    sub_2629724DC(&qword_27FF317E0, &qword_27FF317A0);
    sub_262996F44();
    v22 = v26;
    v23 = v9;
    v24 = v6;
    if (*(v32 + 16))
    {
      v25 = MEMORY[0x277D84F90];
    }

    else
    {
      v25 = sub_26297076C(v32, sub_2629717C4, &qword_27FF31980, &protocol conformance descriptor for SEStorageManagementViewModel.ViennaUsageApp, sub_262973858);
    }
  }

  else
  {
    v23 = v9;
    v24 = v6;
    v25 = sub_262970520(v32);
    v22 = v26;
  }

  (*(v21 + 8))(v23, v24);
  *(v16 + *(v22 + 20)) = v25;
  sub_262972420(v16, v18, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return sub_262971764(v16, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory);
}

uint64_t sub_262970520(uint64_t a1)
{
  v2 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v18 = MEMORY[0x277D84F90];
    sub_2629717C4(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_262972420(v9, v6, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
      v18 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_2629717C4((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = sub_262972384(&qword_27FF31970, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
      sub_262972420(v6, boxed_opaque_existential_1, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
      *(v8 + 16) = v12 + 1;
      sub_2629737BC(&v15, v8 + 40 * v12 + 32);
      sub_262971764(v6, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_26297076C(uint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), unint64_t *a3, uint64_t a4, void (*a5)(uint64_t *, unint64_t))
{
  v22 = a5;
  v8 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v24 = MEMORY[0x277D84F90];
    v21 = a2;
    a2(0, v13, 0);
    v14 = v24;
    v15 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v16 = *(v9 + 72);
    do
    {
      sub_262972420(v15, v12, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
      v24 = v14;
      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v18 >= v17 >> 1)
      {
        v21(v17 > 1, v18 + 1, 1);
        v14 = v24;
      }

      v23[3] = v8;
      v23[4] = sub_262972384(a3, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
      sub_262972420(v12, boxed_opaque_existential_1, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
      *(v14 + 16) = v18 + 1;
      v22(v23, v14 + 40 * v18 + 32);
      sub_262971764(v12, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
      v15 += v16;
      --v13;
    }

    while (v13);
  }

  return v14;
}

uint64_t sub_262970980(uint64_t a1)
{
  v2 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v18 = MEMORY[0x277D84F90];
    sub_262971844(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_262972420(v9, v6, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
      v18 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_262971844((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = sub_262972384(&qword_27FF31950, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
      sub_262972420(v6, boxed_opaque_existential_1, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
      *(v8 + 16) = v12 + 1;
      sub_2629737BC(&v15, v8 + 40 * v12 + 32);
      sub_262971764(v6, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_262970B84(uint64_t a1)
{
  v2 = type metadata accessor for SEStorageManagementViewModel.PrimaryCategory(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v18 = MEMORY[0x277D84F90];
    sub_262971844(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_262972420(v9, v6, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory);
      v18 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_262971844((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = sub_262972384(&qword_27FF31938, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
      sub_262972420(v6, boxed_opaque_existential_1, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory);
      *(v8 + 16) = v12 + 1;
      sub_2629737BC(&v15, v8 + 40 * v12 + 32);
      sub_262971764(v6, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t SEStorageManagementViewModel.PrimaryCategory.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF317E8, &unk_26299A910);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v64 = &v60 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF317F0, &qword_262997F90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v60 - v7;
  v9 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0);
  v70 = *(v9 - 8);
  v10 = *(v70 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v69 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v63 = &v60 - v13;
  v73 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp();
  v65 = *(v73 - 8);
  v14 = *(v65 + 64);
  v15 = MEMORY[0x28223BE20](v73);
  v68 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v60 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF317F8, &qword_262997F98);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v60 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262972488();
  v25 = v66;
  sub_262997074();
  LOBYTE(v72[0]) = 0;
  type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier(0);
  sub_262972384(&qword_27FF31800, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
  v26 = v67;
  sub_262996FB4();
  if (v26)
  {
    return (*(v20 + 8))(v23, v19);
  }

  v60 = 0;
  v61 = v23;
  v28 = v63;
  v62 = v20;
  v67 = v19;
  result = type metadata accessor for SEStorageManagementViewModel.PrimaryCategory(0);
  v29 = *(v25 + *(result + 20));
  v30 = *(v29 + 16);
  if (v30)
  {
    v31 = 0;
    v32 = v29 + 32;
    while (1)
    {
      if (v31 >= *(v29 + 16))
      {
        __break(1u);
        goto LABEL_43;
      }

      sub_26296F988(v32, v72);
      sub_2629737BC(v72, v71);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31808, &qword_262997FA0);
      result = swift_dynamicCast();
      if (!result)
      {
        break;
      }

      ++v31;
      result = sub_262971764(v18, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
      v32 += 40;
      if (v30 == v31)
      {
        goto LABEL_8;
      }
    }

    LODWORD(v66) = 0;
    v33 = *(v29 + 16);
    if (!v33)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_8:
    LODWORD(v66) = 1;
    v33 = *(v29 + 16);
    if (!v33)
    {
LABEL_15:
      v37 = *(v29 + 16);
      if (v37)
      {
        v38 = v29 + 32;
        v39 = v69;
        v40 = (v70 + 56);
        v41 = (v70 + 48);
        v42 = MEMORY[0x277D84F90];
        do
        {
          sub_26296F988(v38, v72);
          sub_2629737BC(v72, v71);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31808, &qword_262997FA0);
          v43 = swift_dynamicCast();
          (*v40)(v8, v43 ^ 1u, 1, v9);
          if ((*v41)(v8, 1, v9) == 1)
          {
            sub_2629737D4(v8, &qword_27FF317F0, &qword_262997F90);
          }

          else
          {
            sub_2629716FC(v8, v39, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v42 = sub_262965A84(0, v42[2] + 1, 1, v42);
            }

            v45 = v42[2];
            v44 = v42[3];
            if (v45 >= v44 >> 1)
            {
              v42 = sub_262965A84(v44 > 1, v45 + 1, 1, v42);
            }

            v42[2] = v45 + 1;
            v46 = v42 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v45;
            v39 = v69;
            sub_2629716FC(v69, v46, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
          }

          v38 += 40;
          --v37;
        }

        while (v37);
      }

      else
      {
        v42 = MEMORY[0x277D84F90];
      }

      *&v72[0] = v42;
      v71[0] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF317C8, &unk_26299A900);
      sub_262972578(&qword_27FF31818, &qword_27FF31748);
LABEL_38:
      v58 = v67;
      v59 = v61;
      sub_262996FB4();
      (*(v62 + 8))(v59, v58);
    }
  }

  v34 = 0;
  v35 = v29 + 32;
  v36 = v29 + 32;
  while (v34 < *(v29 + 16))
  {
    sub_26296F988(v36, v72);
    sub_2629737BC(v72, v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31808, &qword_262997FA0);
    if (!swift_dynamicCast())
    {
      if ((v66 & 1) == 0)
      {
        return (*(v62 + 8))(v61, v67);
      }

      v47 = *(v29 + 16);
      if (v47)
      {
        v48 = v64;
        v49 = (v65 + 56);
        v50 = (v65 + 48);
        v51 = MEMORY[0x277D84F90];
        v52 = v73;
        do
        {
          sub_26296F988(v35, v72);
          sub_2629737BC(v72, v71);
          v53 = swift_dynamicCast();
          (*v49)(v48, v53 ^ 1u, 1, v52);
          if ((*v50)(v48, 1, v52) == 1)
          {
            sub_2629737D4(v48, &qword_27FF317E8, &unk_26299A910);
          }

          else
          {
            sub_2629716FC(v48, v68, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v51 = sub_262965A5C(0, v51[2] + 1, 1, v51);
            }

            v55 = v51[2];
            v54 = v51[3];
            v56 = v65;
            if (v55 >= v54 >> 1)
            {
              v57 = sub_262965A5C(v54 > 1, v55 + 1, 1, v51);
              v56 = v65;
              v51 = v57;
            }

            v51[2] = v55 + 1;
            sub_2629716FC(v68, v51 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v55, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
            v48 = v64;
            v52 = v73;
          }

          v35 += 40;
          --v47;
        }

        while (v47);
      }

      else
      {
        v51 = MEMORY[0x277D84F90];
      }

      *&v72[0] = v51;
      v71[0] = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF317D8, &unk_262997F80);
      sub_2629724DC(&qword_27FF31810, &qword_27FF31718);
      goto LABEL_38;
    }

    ++v34;
    result = sub_262971764(v28, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
    v36 += 40;
    if (v33 == v34)
    {
      goto LABEL_15;
    }
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_2629716FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_262971764(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_2629717C4(void *a1, int64_t a2, char a3)
{
  result = sub_262971B68(a1, a2, a3, *v3, &qword_27FF31978, &qword_262998A48, &qword_27FF31808, &qword_262997FA0);
  *v3 = result;
  return result;
}

char *sub_262971804(char *a1, int64_t a2, char a3)
{
  result = sub_262971884(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_262971824(size_t a1, int64_t a2, char a3)
{
  result = sub_262971990(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_262971844(void *a1, int64_t a2, char a3)
{
  result = sub_262971B68(a1, a2, a3, *v3, &qword_27FF31940, &qword_262998A28, &qword_27FF31948, &qword_262998A30);
  *v3 = result;
  return result;
}

char *sub_262971884(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31960, &qword_262998A38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_262971990(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31968, &qword_262998A40);
  v10 = *(type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0) - 8);
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
  v15 = *(type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0) - 8);
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

void *sub_262971B68(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t _s16SESUIServiceCore28SEStorageManagementViewModelV15PrimaryCategoryV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31988, &unk_262998A50);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v32 - v22;
  v24 = *(v21 + 56);
  sub_262972420(a1, &v32 - v22, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
  sub_262972420(a2, &v23[v24], type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_32;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_32;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_32;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_262972420(v23, v18, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_2629716FC(&v23[v24], v11, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
      v30 = _s16SESUIServiceCore28SEStorageManagementViewModelV19WalletUsageCategoryV2eeoiySbAE_AEtFZ_0(v18, v11);
      sub_262971764(v11, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
      sub_262971764(v18, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
      sub_262971764(v23, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
      return v30 & 1;
    }

    v28 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory;
    v29 = v18;
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  sub_262972420(v23, v16, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v28 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp;
    v29 = v16;
LABEL_27:
    sub_262971764(v29, v28);
LABEL_28:
    sub_2629737D4(v23, &qword_27FF31988, &unk_262998A50);
    goto LABEL_29;
  }

  sub_2629716FC(&v23[v24], v7, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
  if (*v16 == *v7 && v16[1] == v7[1])
  {
    sub_262971764(v7, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
    sub_262971764(v16, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
    goto LABEL_32;
  }

  v27 = sub_262996FD4();
  sub_262971764(v7, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
  sub_262971764(v16, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
  if (v27)
  {
LABEL_32:
    sub_262971764(v23, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
    v30 = 1;
    return v30 & 1;
  }

  sub_262971764(v23, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier);
LABEL_29:
  v30 = 0;
  return v30 & 1;
}

unint64_t sub_262972138()
{
  result = qword_27FF31708;
  if (!qword_27FF31708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31708);
  }

  return result;
}

unint64_t sub_26297218C()
{
  result = qword_27FF31710;
  if (!qword_27FF31710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31710);
  }

  return result;
}

unint64_t sub_2629721E0()
{
  result = qword_27FF31720;
  if (!qword_27FF31720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31720);
  }

  return result;
}

unint64_t sub_262972234()
{
  result = qword_27FF31728;
  if (!qword_27FF31728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31728);
  }

  return result;
}

unint64_t sub_262972288()
{
  result = qword_27FF31730;
  if (!qword_27FF31730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31730);
  }

  return result;
}

unint64_t sub_2629722DC()
{
  result = qword_27FF31738;
  if (!qword_27FF31738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31738);
  }

  return result;
}

unint64_t sub_262972330()
{
  result = qword_27FF31740;
  if (!qword_27FF31740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31740);
  }

  return result;
}

uint64_t sub_262972384(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2629723CC()
{
  result = qword_27FF31750;
  if (!qword_27FF31750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31750);
  }

  return result;
}

uint64_t sub_262972420(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_262972488()
{
  result = qword_27FF317B8;
  if (!qword_27FF317B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF317B8);
  }

  return result;
}

uint64_t sub_2629724DC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF317D8, &unk_262997F80);
    sub_262972384(a2, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_262972578(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF317C8, &unk_26299A900);
    sub_262972384(a2, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_262972614(void *a1)
{
  a1[1] = sub_262972384(&qword_27FF31820, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory);
  a1[2] = sub_262972384(&qword_27FF31828, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory);
  a1[3] = sub_262972384(&qword_27FF31830, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory);
  result = sub_262972384(&qword_27FF31838, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory);
  a1[4] = result;
  return result;
}

uint64_t sub_26297278C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier(0);
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

uint64_t sub_26297285C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier(0);
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

void sub_262972914()
{
  type metadata accessor for SEStorageManagementViewModel.PrimaryCategory.Identifier(319);
  if (v0 <= 0x3F)
  {
    sub_262972998();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_262972998()
{
  if (!qword_27FF31860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF31808, &qword_262997FA0);
    v0 = sub_262996DC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF31860);
    }
  }
}

void sub_262972A4C()
{
  sub_262972AF8(319, &qword_27FF31878, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
  if (v0 <= 0x3F)
  {
    sub_262972AF8(319, &qword_27FF31880, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_262972AF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t _s15PrimaryCategoryV10IdentifierO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s15PrimaryCategoryV10IdentifierO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_262972D20()
{
  result = qword_27FF31888;
  if (!qword_27FF31888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31888);
  }

  return result;
}

unint64_t sub_262972D78()
{
  result = qword_27FF31890;
  if (!qword_27FF31890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31890);
  }

  return result;
}

unint64_t sub_262972DD0()
{
  result = qword_27FF31898;
  if (!qword_27FF31898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31898);
  }

  return result;
}

unint64_t sub_262972E28()
{
  result = qword_27FF318A0;
  if (!qword_27FF318A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF318A0);
  }

  return result;
}

unint64_t sub_262972E80()
{
  result = qword_27FF318A8;
  if (!qword_27FF318A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF318A8);
  }

  return result;
}

unint64_t sub_262972ED8()
{
  result = qword_27FF318B0;
  if (!qword_27FF318B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF318B0);
  }

  return result;
}

unint64_t sub_262972F30()
{
  result = qword_27FF318B8;
  if (!qword_27FF318B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF318B8);
  }

  return result;
}

unint64_t sub_262972F88()
{
  result = qword_27FF318C0;
  if (!qword_27FF318C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF318C0);
  }

  return result;
}

unint64_t sub_262972FE0()
{
  result = qword_27FF318C8;
  if (!qword_27FF318C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF318C8);
  }

  return result;
}

unint64_t sub_262973038()
{
  result = qword_27FF318D0;
  if (!qword_27FF318D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF318D0);
  }

  return result;
}

unint64_t sub_262973090()
{
  result = qword_27FF318D8;
  if (!qword_27FF318D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF318D8);
  }

  return result;
}

unint64_t sub_2629730E8()
{
  result = qword_27FF318E0;
  if (!qword_27FF318E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF318E0);
  }

  return result;
}

unint64_t sub_262973140()
{
  result = qword_27FF318E8;
  if (!qword_27FF318E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF318E8);
  }

  return result;
}

unint64_t sub_262973198()
{
  result = qword_27FF318F0;
  if (!qword_27FF318F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF318F0);
  }

  return result;
}

unint64_t sub_2629731F0()
{
  result = qword_27FF318F8;
  if (!qword_27FF318F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF318F8);
  }

  return result;
}

unint64_t sub_262973248()
{
  result = qword_27FF31900;
  if (!qword_27FF31900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31900);
  }

  return result;
}

unint64_t sub_2629732A0()
{
  result = qword_27FF31908;
  if (!qword_27FF31908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31908);
  }

  return result;
}

unint64_t sub_2629732F8()
{
  result = qword_27FF31910;
  if (!qword_27FF31910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31910);
  }

  return result;
}

unint64_t sub_262973350()
{
  result = qword_27FF31918;
  if (!qword_27FF31918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31918);
  }

  return result;
}

unint64_t sub_2629733A8()
{
  result = qword_27FF31920;
  if (!qword_27FF31920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31920);
  }

  return result;
}

unint64_t sub_262973400()
{
  result = qword_27FF31928;
  if (!qword_27FF31928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31928);
  }

  return result;
}

unint64_t sub_262973458()
{
  result = qword_27FF31930;
  if (!qword_27FF31930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31930);
  }

  return result;
}

uint64_t sub_2629734AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B6F6F6273736150 && a2 == 0xE800000000000000;
  if (v4 || (sub_262996FD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026299C490 == a2 || (sub_262996FD4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000026299C4B0 == a2 || (sub_262996FD4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616E6E656956 && a2 == 0xE600000000000000 || (sub_262996FD4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6569667269754DLL && a2 == 0xE900000000000064 || (sub_262996FD4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1835619141 && a2 == 0xE400000000000000 || (sub_262996FD4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6553616E6E656956 && a2 == 0xEF797261646E6F63)
  {

    return 6;
  }

  else
  {
    v6 = sub_262996FD4();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_26297370C()
{
  v0 = sub_262996ED4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
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

uint64_t sub_2629737BC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2629737D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.deviceConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_262996CE4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.deviceConfiguration.setter(uint64_t a1)
{
  v3 = sub_262996CE4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.displayConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SEStorageManagementUIServerXPCParameters.Present() + 20);
  v4 = sub_262996CD4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SEStorageManagementUIServerXPCParameters.Present()
{
  result = qword_27FF31AB0;
  if (!qword_27FF31AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.displayConfiguration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SEStorageManagementUIServerXPCParameters.Present() + 20);
  v4 = sub_262996CD4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.proposedCredentials.getter()
{
  v1 = *(v0 + *(type metadata accessor for SEStorageManagementUIServerXPCParameters.Present() + 24));
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.proposedCredentials.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SEStorageManagementUIServerXPCParameters.Present() + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.passes.getter()
{
  v1 = *(v0 + *(type metadata accessor for SEStorageManagementUIServerXPCParameters.Present() + 28));
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.passes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SEStorageManagementUIServerXPCParameters.Present() + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.muirfieldApplications.getter()
{
  v1 = *(v0 + *(type metadata accessor for SEStorageManagementUIServerXPCParameters.Present() + 32));
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.muirfieldApplications.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SEStorageManagementUIServerXPCParameters.Present() + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.eSimProfiles.getter()
{
  v1 = *(v0 + *(type metadata accessor for SEStorageManagementUIServerXPCParameters.Present() + 36));
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.eSimProfiles.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SEStorageManagementUIServerXPCParameters.Present() + 36);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.secureElementCredentials.getter()
{
  v1 = *(v0 + *(type metadata accessor for SEStorageManagementUIServerXPCParameters.Present() + 40));
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.secureElementCredentials.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SEStorageManagementUIServerXPCParameters.Present() + 40);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.credentialConfigs.getter()
{
  v1 = *(v0 + *(type metadata accessor for SEStorageManagementUIServerXPCParameters.Present() + 44));
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.credentialConfigs.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SEStorageManagementUIServerXPCParameters.Present() + 44);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.init(deviceConfiguration:displayConfiguration:provisioning:passes:muirfieldApplications:eSimProfiles:secureElementCredentials:credentialConfigs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v18 = sub_262996CE4();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v19 = type metadata accessor for SEStorageManagementUIServerXPCParameters.Present();
  v20 = v19[5];
  v21 = sub_262996CD4();
  result = (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  *(a9 + v19[6]) = a3;
  *(a9 + v19[7]) = a4;
  *(a9 + v19[8]) = a5;
  *(a9 + v19[9]) = a6;
  *(a9 + v19[10]) = a7;
  *(a9 + v19[11]) = a8;
  return result;
}

unint64_t sub_26297406C()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000018;
    if (v1 != 6)
    {
      v5 = 0xD000000000000011;
    }

    v6 = 0xD000000000000015;
    if (v1 != 4)
    {
      v6 = 0x666F72506D695365;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x736573736170;
    v3 = 0xD000000000000013;
    if (v1 == 2)
    {
      v2 = 0xD000000000000013;
    }

    if (*v0)
    {
      v3 = 0xD000000000000014;
    }

    *v0;
    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_262974170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26297628C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2629741A4(uint64_t a1)
{
  v2 = sub_262974660();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2629741E0(uint64_t a1)
{
  v2 = sub_262974660();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31990, &qword_262998A60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262974660();
  sub_262997074();
  LOBYTE(v15) = 0;
  sub_262996CE4();
  sub_2629758C0(&qword_27FF319A0, MEMORY[0x277D49368]);
  sub_262996FB4();
  if (!v2)
  {
    v11 = type metadata accessor for SEStorageManagementUIServerXPCParameters.Present();
    v12 = v11[5];
    LOBYTE(v15) = 1;
    sub_262996CD4();
    sub_2629758C0(&qword_27FF319A8, MEMORY[0x277D49318]);
    sub_262996FB4();
    v15 = *(v3 + v11[6]);
    HIBYTE(v14) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF319B0, &qword_262998A68);
    sub_2629746B4();
    sub_262996FB4();
    v15 = *(v3 + v11[7]);
    HIBYTE(v14) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF319C8, &qword_262998A70);
    sub_262974768();
    sub_262996FB4();
    v15 = *(v3 + v11[8]);
    HIBYTE(v14) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF319E0, &qword_262998A78);
    sub_26297481C();
    sub_262996FB4();
    v15 = *(v3 + v11[9]);
    HIBYTE(v14) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF319F0, &unk_262998A80);
    sub_2629748D0(&qword_27FF319F8, sub_262974948);
    sub_262996FB4();
    v15 = *(v3 + v11[10]);
    HIBYTE(v14) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31A08, &qword_26299ADD0);
    sub_26297499C();
    sub_262996FB4();
    v15 = *(v3 + v11[11]);
    HIBYTE(v14) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31A18, &qword_262998A90);
    sub_262974A50();
    sub_262996FB4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_262974660()
{
  result = qword_27FF31998;
  if (!qword_27FF31998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31998);
  }

  return result;
}

unint64_t sub_2629746B4()
{
  result = qword_27FF319B8;
  if (!qword_27FF319B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF319B0, &qword_262998A68);
    sub_2629758C0(&qword_27FF319C0, MEMORY[0x277D49350]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF319B8);
  }

  return result;
}

unint64_t sub_262974768()
{
  result = qword_27FF319D0;
  if (!qword_27FF319D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF319C8, &qword_262998A70);
    sub_2629758C0(&qword_27FF319D8, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF319D0);
  }

  return result;
}

unint64_t sub_26297481C()
{
  result = qword_27FF319E8;
  if (!qword_27FF319E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF319E0, &qword_262998A78);
    sub_2629758C0(&qword_27FF31538, type metadata accessor for SEStorageManagementViewModel.ApplicationInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF319E8);
  }

  return result;
}

uint64_t sub_2629748D0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF319F0, &unk_262998A80);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_262974948()
{
  result = qword_27FF31A00;
  if (!qword_27FF31A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31A00);
  }

  return result;
}

unint64_t sub_26297499C()
{
  result = qword_27FF31A10;
  if (!qword_27FF31A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF31A08, &qword_26299ADD0);
    sub_2629758C0(&qword_27FF314F0, MEMORY[0x277D492D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31A10);
  }

  return result;
}

unint64_t sub_262974A50()
{
  result = qword_27FF31A20;
  if (!qword_27FF31A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF31A18, &qword_262998A90);
    sub_2629758C0(&qword_27FF31A28, MEMORY[0x277D492E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31A20);
  }

  return result;
}

uint64_t SEStorageManagementUIServerXPCParameters.Present.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v33 = sub_262996CD4();
  v35 = *(v33 - 8);
  v3 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_262996CE4();
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v36 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31A30, &qword_262998A98);
  v37 = *(v39 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  v11 = &v30 - v10;
  v12 = type metadata accessor for SEStorageManagementUIServerXPCParameters.Present();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262974660();
  v38 = v11;
  v17 = v40;
  sub_262997064();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v5;
  v40 = v12;
  v31 = v15;
  v19 = v35;
  LOBYTE(v42) = 0;
  sub_2629758C0(&qword_27FF31A38, MEMORY[0x277D49368]);
  v20 = v36;
  sub_262996F44();
  v21 = v31;
  (*(v34 + 32))(v31, v20, v6);
  LOBYTE(v42) = 1;
  sub_2629758C0(&qword_27FF31A40, MEMORY[0x277D49318]);
  v22 = v33;
  sub_262996F44();
  v23 = v37;
  v30 = v6;
  v24 = v18;
  v25 = v40;
  (*(v19 + 32))(&v21[v40[5]], v24, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF319B0, &qword_262998A68);
  v41 = 2;
  sub_26297534C();
  v26 = v38;
  v36 = 0;
  sub_262996F44();
  *&v21[v25[6]] = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF319C8, &qword_262998A70);
  v41 = 3;
  sub_262975400();
  sub_262996F44();
  *&v21[v25[7]] = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF319E0, &qword_262998A78);
  v41 = 4;
  sub_2629754B4();
  sub_262996F44();
  *&v21[v25[8]] = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF319F0, &unk_262998A80);
  v41 = 5;
  sub_2629748D0(&qword_27FF31A70, sub_262975568);
  sub_262996F44();
  *&v21[v25[9]] = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31A08, &qword_26299ADD0);
  v41 = 6;
  sub_2629755BC();
  sub_262996F44();
  *&v21[v25[10]] = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31A18, &qword_262998A90);
  v41 = 7;
  sub_262975670();
  sub_262996F44();
  (*(v23 + 8))(v26, v39);
  v28 = v31;
  v27 = v32;
  *&v31[v40[11]] = v42;
  sub_262975724(v28, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_262975788(v28);
}

unint64_t sub_26297534C()
{
  result = qword_27FF31A48;
  if (!qword_27FF31A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF319B0, &qword_262998A68);
    sub_2629758C0(&qword_27FF31A50, MEMORY[0x277D49350]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31A48);
  }

  return result;
}

unint64_t sub_262975400()
{
  result = qword_27FF31A58;
  if (!qword_27FF31A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF319C8, &qword_262998A70);
    sub_2629758C0(&qword_27FF31A60, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31A58);
  }

  return result;
}

unint64_t sub_2629754B4()
{
  result = qword_27FF31A68;
  if (!qword_27FF31A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF319E0, &qword_262998A78);
    sub_2629758C0(&qword_27FF31568, type metadata accessor for SEStorageManagementViewModel.ApplicationInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31A68);
  }

  return result;
}

unint64_t sub_262975568()
{
  result = qword_27FF31A78;
  if (!qword_27FF31A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31A78);
  }

  return result;
}

unint64_t sub_2629755BC()
{
  result = qword_27FF31A80;
  if (!qword_27FF31A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF31A08, &qword_26299ADD0);
    sub_2629758C0(&qword_27FF31500, MEMORY[0x277D492D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31A80);
  }

  return result;
}

unint64_t sub_262975670()
{
  result = qword_27FF31A88;
  if (!qword_27FF31A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF31A18, &qword_262998A90);
    sub_2629758C0(&qword_27FF31A90, MEMORY[0x277D492E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31A88);
  }

  return result;
}

uint64_t sub_262975724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageManagementUIServerXPCParameters.Present();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_262975788(uint64_t a1)
{
  v2 = type metadata accessor for SEStorageManagementUIServerXPCParameters.Present();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_262975814(void *a1)
{
  a1[1] = sub_2629758C0(&qword_27FF31A98, type metadata accessor for SEStorageManagementUIServerXPCParameters.Present);
  a1[2] = sub_2629758C0(&qword_27FF31AA0, type metadata accessor for SEStorageManagementUIServerXPCParameters.Present);
  result = sub_2629758C0(&qword_27FF31AA8, type metadata accessor for SEStorageManagementUIServerXPCParameters.Present);
  a1[3] = result;
  return result;
}

uint64_t sub_2629758C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_262975908()
{
  v0 = sub_262996AE4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_262996AD4();
  sub_2629758C0(&qword_27FF31AA0, type metadata accessor for SEStorageManagementUIServerXPCParameters.Present);
  v3 = sub_262996AC4();
  v5 = v4;
  v6 = sub_262996B04();
  sub_262969EB4(v3, v5);

  return v6;
}

uint64_t sub_2629759F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B08, &qword_262998CE8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = sub_262996AB4();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_262996AA4();
  v12 = sub_262996B14();
  v14 = v13;
  sub_2629758C0(&qword_27FF31A98, type metadata accessor for SEStorageManagementUIServerXPCParameters.Present);
  sub_262996A94();
  sub_262976524(a2);
  sub_262969EB4(v12, v14);

  (*(*(a3 - 8) + 56))(v8, 0, 1, a3);
  return sub_26297658C(v8, a2);
}

uint64_t sub_262975BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_262996CE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_262996CD4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_262975CE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_262996CE4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_262996CD4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_262975DF0()
{
  sub_262996CE4();
  if (v0 <= 0x3F)
  {
    sub_262996CD4();
    if (v1 <= 0x3F)
    {
      sub_262975FE0(319, &qword_27FF31AC0, MEMORY[0x277D49350]);
      if (v2 <= 0x3F)
      {
        sub_262975FE0(319, &qword_27FF31AC8, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
        if (v3 <= 0x3F)
        {
          sub_262975FE0(319, &qword_27FF31AD0, type metadata accessor for SEStorageManagementViewModel.ApplicationInfo);
          if (v4 <= 0x3F)
          {
            sub_262975F90();
            if (v5 <= 0x3F)
            {
              sub_262975FE0(319, &qword_27FF31AE0, MEMORY[0x277D492D0]);
              if (v6 <= 0x3F)
              {
                sub_262975FE0(319, &qword_27FF31AE8, MEMORY[0x277D492E8]);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_262975F90()
{
  if (!qword_27FF31AD8)
  {
    v0 = sub_262996DC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF31AD8);
    }
  }
}

void sub_262975FE0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_262996DC4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SEStorageManagementUIServerXPCParameters.Present.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SEStorageManagementUIServerXPCParameters.Present.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_262976188()
{
  result = qword_27FF31AF0;
  if (!qword_27FF31AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31AF0);
  }

  return result;
}

unint64_t sub_2629761E0()
{
  result = qword_27FF31AF8;
  if (!qword_27FF31AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31AF8);
  }

  return result;
}

unint64_t sub_262976238()
{
  result = qword_27FF31B00;
  if (!qword_27FF31B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31B00);
  }

  return result;
}

uint64_t sub_26297628C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x800000026299C4F0 == a2 || (sub_262996FD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000026299C510 == a2 || (sub_262996FD4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000026299C530 == a2 || (sub_262996FD4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736573736170 && a2 == 0xE600000000000000 || (sub_262996FD4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x800000026299C550 == a2 || (sub_262996FD4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x666F72506D695365 && a2 == 0xEC00000073656C69 || (sub_262996FD4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x800000026299C570 == a2 || (sub_262996FD4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026299C590 == a2)
  {

    return 7;
  }

  else
  {
    v5 = sub_262996FD4();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_262976524(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B08, &qword_262998CE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26297658C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B08, &qword_262998CE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_26297663C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_26297674C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v32[3] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B10, &qword_262998D60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - v8;
  v10 = sub_262996C14();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v31 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v28 = &v26 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x277D84F90];
  }

  v26 = v14;
  v29 = (v14 + 32);
  v30 = (v14 + 48);
  v17 = (a3 + 40);
  v18 = MEMORY[0x277D84F90];
  v27 = a1;
  while (1)
  {
    v19 = *v17;
    v32[0] = *(v17 - 1);
    v32[1] = v19;

    a1(v32);
    if (v3)
    {
      break;
    }

    if ((*v30)(v9, 1, v10) == 1)
    {
      sub_2629737D4(v9, &qword_27FF31B10, &qword_262998D60);
    }

    else
    {
      v20 = v10;
      v21 = v28;
      v22 = *v29;
      (*v29)(v28, v9, v20);
      v22(v31, v21, v20);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_262965AAC(0, *(v18 + 2) + 1, 1, v18);
      }

      v24 = *(v18 + 2);
      v23 = *(v18 + 3);
      if (v24 >= v23 >> 1)
      {
        v18 = sub_262965AAC(v23 > 1, v24 + 1, 1, v18);
      }

      *(v18 + 2) = v24 + 1;
      v22(&v18[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24], v31, v20);
      v10 = v20;
      a1 = v27;
    }

    v17 += 2;
    if (!--v16)
    {
      return v18;
    }
  }

  return v18;
}

uint64_t sub_262976A40(uint64_t a1, uint64_t (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(sub_262996C14() - 8);
    result = a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
      return result;
    }
  }

  return v11;
}

void sub_262976B1C(id a1, void (*a2)(id *, id *), uint64_t a3, unint64_t a4)
{
  v13 = a1;
  if (a4 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; a1 = v10)
  {
    v7 = 0;
    while (1)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        a1 = MEMORY[0x26672E110](v7, a4);
      }

      else
      {
        if (v7 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        a1 = *(a4 + 8 * v7 + 32);
      }

      v8 = a1;
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = a1;
      a2(&v13, &v12);

      if (!v4)
      {
        ++v7;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v10 = a1;
    i = sub_262996E94();
  }
}

uint64_t SESnapshot.appletTypes(forAIDs:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B10, &qword_262998D60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v35 - v4;
  v6 = sub_262996C14();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v36 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v41 = &v35 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v40 = &v35 - v13;
  MEMORY[0x28223BE20](v12);
  v44 = &v35 - v15;
  v16 = *(a1 + 16);
  v42 = v14;
  v37 = v16;
  if (v16)
  {
    v17 = (v14 + 56);
    v43 = (v14 + 32);
    v18 = MEMORY[0x277D84F90];
    v19 = (a1 + 40);
    v38 = (v14 + 56);
    v39 = v6;
    do
    {
      v21 = *(v19 - 1);
      v20 = *v19;

      sub_262996BA4();

      (*v17)(v5, 0, 1, v6);
      v22 = *v43;
      v23 = v41;
      (*v43)(v41, v5, v6);
      v24 = v18;
      v25 = v40;
      v22(v40, v23, v6);
      v26 = v25;
      v18 = v24;
      v22(v44, v26, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_262965AAC(0, v24[2] + 1, 1, v24);
      }

      v28 = v18[2];
      v27 = v18[3];
      v17 = v38;
      if (v28 >= v27 >> 1)
      {
        v18 = sub_262965AAC(v27 > 1, v28 + 1, 1, v18);
      }

      v18[2] = v28 + 1;
      v29 = v18 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v28;
      v6 = v39;
      v22(v29, v44, v39);
      v19 += 2;
      --v16;
    }

    while (v16);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v30 = v37;
  if (v18[2] != v37)
  {

    v31 = *MEMORY[0x277D49140];
    v32 = sub_262996B64();
    v33 = v36;
    (*(*(v32 - 8) + 104))(v36, v31, v32);
    (*(v42 + 104))(v33, *MEMORY[0x277D49240], v6);
    return sub_262977038(v33, v30);
  }

  return v18;
}

uint64_t sub_262977038(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_262996C14();
      v5 = sub_262996DB4();
      *(v5 + 16) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(v5 + v7, v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = v5 + v10 + v7;
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }

    v12 = sub_262996C14();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

Swift::Int __swiftcall SESnapshot.requiredStorage(for:)(Swift::OpaquePointer a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B18, &qword_262998D68);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v81 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v80 = &v73 - v6;
  v87 = 0;
  v7 = sub_262996C14();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v86 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v77 = &v73 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v16 = &v73 - v15;
  v17 = *(a1._rawValue + 2);
  v84 = v13;
  v79 = v14;
  if (!v17)
  {
    v22 = MEMORY[0x277D84F98];
LABEL_17:
    v42 = 0;
    v43 = 0;
    v78 = v22;
    v46 = v22[8];
    v45 = v22 + 8;
    v44 = v46;
    v47 = 1 << *(v45 - 32);
    v48 = -1;
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    v49 = v48 & v44;
    v50 = (v47 + 63) >> 6;
    v51 = v80;
    v76 = v79 + 16;
    v85 = (v79 + 32);
    v82 = (v79 + 8);
    v52 = v81;
    v74 = v45;
    v75 = v50;
    while (1)
    {
      if (!v49)
      {
        if (v50 <= v43 + 1)
        {
          v55 = v43 + 1;
        }

        else
        {
          v55 = v50;
        }

        v56 = v55 - 1;
        while (1)
        {
          v54 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            break;
          }

          if (v54 >= v50)
          {
            v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B20, &qword_262998D70);
            (*(*(v70 - 8) + 56))(v52, 1, 1, v70);
            v49 = 0;
            v43 = v56;
            goto LABEL_33;
          }

          v49 = v74[v54];
          ++v43;
          if (v49)
          {
            v83 = v42;
            v43 = v54;
            goto LABEL_32;
          }
        }

        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v83 = v42;
      v54 = v43;
LABEL_32:
      v57 = __clz(__rbit64(v49));
      v49 &= v49 - 1;
      v58 = v57 | (v54 << 6);
      v59 = v78;
      v60 = v79;
      v61 = v77;
      (*(v79 + 16))(v77, v78[6] + *(v79 + 72) * v58, v7);
      v62 = *(v59[7] + 8 * v58);
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B20, &qword_262998D70);
      v64 = *(v63 + 48);
      v65 = *(v60 + 32);
      v52 = v81;
      v65(v81, v61, v7);
      *(v52 + v64) = v62;
      (*(*(v63 - 8) + 56))(v52, 0, 1, v63);
      v51 = v80;
      v42 = v83;
      v50 = v75;
LABEL_33:
      sub_26297A4A8(v52, v51);
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B20, &qword_262998D70);
      if ((*(*(v66 - 8) + 48))(v51, 1, v66) == 1)
      {
        break;
      }

      v67 = *(v51 + *(v66 + 48));
      v7 = v84;
      (*v85)(v86, v51, v84);
      v68 = v87;
      v69 = sub_262996BB4();
      v87 = v68;
      if (v68)
      {
        MEMORY[0x26672E610](v87);
        v53 = 0;
        v87 = 0;
      }

      else
      {
        v53 = v69;
      }

      (*v82)(v86, v7);
      v37 = __OFADD__(v42, v53);
      v42 += v53;
      if (v37)
      {
        goto LABEL_40;
      }
    }

    v71 = _s9SEService10SESnapshotC16SESUIServiceCoreE15requiredStorage3forSiAC19ProposedESimProfileV_tF_0();
    v37 = __OFADD__(v42, v71);
    result = v42 + v71;
    if (v37)
    {
      goto LABEL_44;
    }

    return result;
  }

  v18 = v14 + 16;
  v19 = *(v14 + 16);
  v20 = a1._rawValue + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v21 = *(v14 + 72);
  v85 = (v14 + 8);
  v22 = MEMORY[0x277D84F98];
  while (1)
  {
    v19(v16, v20, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v88 = v22;
    v25 = sub_262979C5C(v16);
    v26 = v22[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      break;
    }

    v29 = v24;
    if (v22[3] >= v28)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26297A238();
        v22 = v88;
      }

      v7 = v84;
      if (v29)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v83 = v17;
      v30 = v21;
      v31 = v18;
      v32 = v19;
      sub_262979CE0(v28, isUniquelyReferenced_nonNull_native);
      v33 = v88;
      v34 = sub_262979C5C(v16);
      if ((v29 & 1) != (v35 & 1))
      {
        goto LABEL_45;
      }

      v25 = v34;
      v22 = v33;
      v19 = v32;
      v18 = v31;
      v21 = v30;
      v17 = v83;
      v7 = v84;
      if (v29)
      {
        goto LABEL_13;
      }
    }

    v22[(v25 >> 6) + 8] |= 1 << v25;
    v19((v22[6] + v25 * v21), v16, v7);
    *(v22[7] + 8 * v25) = 0;
    v36 = v22[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_43;
    }

    v22[2] = v38;
LABEL_13:
    v39 = v22[7];
    v40 = *(v39 + 8 * v25);
    v37 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (v37)
    {
      goto LABEL_42;
    }

    *(v39 + 8 * v25) = v41;
    (*v85)(v16, v7);
    v20 += v21;
    if (!--v17)
    {
      goto LABEL_17;
    }
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_262996FF4();
  __break(1u);
  return result;
}

uint64_t SESnapshot.requiredStorage(for:)()
{
  v0 = sub_262996BC4();
  v1 = _s9SEService10SESnapshotC16SESUIServiceCoreE15requiredStorage3forSiAC19ProposedESimProfileV_tF_0();
  v2 = __OFADD__(v0, v1);
  result = v0 + v1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2629779A4()
{
  v1 = *v0;
  v2 = sub_262996BC4();
  v3 = _s9SEService10SESnapshotC16SESUIServiceCoreE15requiredStorage3forSiAC19ProposedESimProfileV_tF_0();
  v4 = __OFADD__(v2, v3);
  result = v2 + v3;
  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_262977A74()
{
  v1 = *v0;
  sub_262996B84();
  return v2;
}

void sub_262977AA0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_262996D34();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_262996D34();
    v4 = [v2 stringArrayForKey_];

    if (v4)
    {
      v5 = sub_262996DA4();

      v6 = *(v5 + 16);
      if (v6)
      {
        v7 = 0;
        v8 = v5 + 40;
        v9 = MEMORY[0x277D84F90];
        do
        {
          v10 = (v8 + 16 * v7);
          v11 = v7;
          while (1)
          {
            if (v11 >= *(v5 + 16))
            {
              __break(1u);
              return;
            }

            v12 = *(v10 - 1);
            v13 = *v10;
            if (v12 != 1701736270 || v13 != 0xE400000000000000)
            {
              v15 = *(v10 - 1);
              v16 = *v10;
              if ((sub_262996FD4() & 1) == 0)
              {
                break;
              }
            }

            ++v11;
            v10 += 2;
            if (v6 == v11)
            {
              goto LABEL_22;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_262971804(0, *(v9 + 16) + 1, 1);
          }

          v18 = *(v9 + 16);
          v17 = *(v9 + 24);
          v19 = v18 + 1;
          if (v18 >= v17 >> 1)
          {
            sub_262971804((v17 > 1), v18 + 1, 1);
            v19 = v18 + 1;
          }

          v7 = v11 + 1;
          *(v9 + 16) = v19;
          v20 = v9 + 16 * v18;
          *(v20 + 32) = v12;
          *(v20 + 40) = v13;
          v8 = v5 + 40;
        }

        while (v6 - 1 != v11);
      }

      else
      {
        v9 = MEMORY[0x277D84F90];
      }

LABEL_22:

      v21 = *(v9 + 16);
    }

    else
    {
    }
  }
}

uint64_t sub_262977CEC(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_26297A80C(a3 + v16 + v17 * v14, v13);
      v18 = a1(v13);
      if (v3)
      {
        sub_26297A870(v13);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_26297BB58(v13, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_262971824(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_262971824(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        result = sub_26297BB58(v25, v15 + v16 + v21 * v17);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_26297A870(v13);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
LABEL_15:

    return v15;
  }

  return result;
}

char *MockSESnapshot.appletTypes(forAIDs:)(uint64_t a1)
{
  v3 = sub_262996C14();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = v1;
  result = sub_26297674C(sub_26297A518, v12, a1);
  v9 = *(a1 + 16);
  if (*(result + 2) != v9)
  {

    v10 = *MEMORY[0x277D49140];
    v11 = sub_262996B64();
    (*(*(v11 - 8) + 104))(v7, v10, v11);
    (*(v4 + 104))(v7, *MEMORY[0x277D49240], v3);
    return sub_262977038(v7, v9);
  }

  return result;
}

uint64_t sub_262978078@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B10, &qword_262998D60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - v9;
  v11 = *a1;
  v12 = a1[1];
  v13 = *a2;
  sub_262996BA4();
  if (v3)
  {
    MEMORY[0x26672E610](v3);
    v14 = sub_262996C14();
    v15 = *(*(v14 - 8) + 56);
    v15(v10, 1, 1, v14);
    sub_2629737D4(v10, &qword_27FF31B10, &qword_262998D60);
    return (v15)(a3, 1, 1, v14);
  }

  else
  {
    v17 = sub_262996C14();
    v18 = *(v17 - 8);
    v19 = *(v18 + 56);
    v19(v10, 0, 1, v17);
    (*(v18 + 32))(a3, v10, v17);
    return (v19)(a3, 0, 1, v17);
  }
}

uint64_t MockSESnapshot.totalUsage(of:)(uint64_t a1)
{
  v3 = sub_262996C14();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v4 + 16))(v7, a1, v3);
  if ((*(v4 + 88))(v7, v3) == *MEMORY[0x277D49240])
  {
    v8 = (*(v4 + 96))(v7, v3);
    v9 = *(v1 + 8);
    MEMORY[0x28223BE20](v8);
    *&v14[-16] = a1;

    v10 = *(sub_262977CEC(sub_26297A534, &v14[-32], v9) + 16);

    v11 = sub_262996B64();
    result = (*(*(v11 - 8) + 8))(v7, v11);
  }

  else
  {
    result = (*(v4 + 8))(v7, v3);
    v10 = 1;
  }

  v13 = 100000 * v10;
  if ((v10 * 100000) >> 64 != (100000 * v10) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  result = v13 + 100000;
  if (__OFADD__(v13, 100000))
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_262978464(uint64_t a1, unint64_t a2)
{
  v33 = a2;
  v3 = sub_262996C14();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v31 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B58, &qword_262998DE8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v34 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B10, &qword_262998D60);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v32 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = *(a1 + 16);
  if (*(v19 + 16))
  {
    v20 = *(v4 + 16);
    v20(&v31 - v17, v19 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);
    v21 = *(v4 + 56);
    v21(v18, 0, 1, v3);
  }

  else
  {
    v21 = *(v4 + 56);
    v21(&v31 - v17, 1, 1, v3);
    v20 = *(v4 + 16);
  }

  v20(v16, v33, v3);
  v21(v16, 0, 1, v3);
  v22 = *(v7 + 48);
  v23 = v34;
  sub_26297BBBC(v18, v34);
  sub_26297BBBC(v16, v23 + v22);
  v24 = *(v4 + 48);
  if (v24(v23, 1, v3) != 1)
  {
    v27 = v32;
    sub_26297BBBC(v23, v32);
    if (v24(v23 + v22, 1, v3) != 1)
    {
      v28 = v31;
      (*(v4 + 32))(v31, v23 + v22, v3);
      sub_26297BB14(&qword_27FF31B48);
      v26 = sub_262996D24();
      v29 = *(v4 + 8);
      v29(v28, v3);
      sub_2629737D4(v16, &qword_27FF31B10, &qword_262998D60);
      sub_2629737D4(v18, &qword_27FF31B10, &qword_262998D60);
      v29(v32, v3);
      sub_2629737D4(v34, &qword_27FF31B10, &qword_262998D60);
      return v26 & 1;
    }

    sub_2629737D4(v16, &qword_27FF31B10, &qword_262998D60);
    v25 = v34;
    sub_2629737D4(v18, &qword_27FF31B10, &qword_262998D60);
    (*(v4 + 8))(v27, v3);
    goto LABEL_9;
  }

  sub_2629737D4(v16, &qword_27FF31B10, &qword_262998D60);
  v25 = v34;
  sub_2629737D4(v18, &qword_27FF31B10, &qword_262998D60);
  if (v24(v25 + v22, 1, v3) != 1)
  {
LABEL_9:
    sub_2629737D4(v25, &qword_27FF31B58, &qword_262998DE8);
    v26 = 0;
    return v26 & 1;
  }

  sub_2629737D4(v25, &qword_27FF31B10, &qword_262998D60);
  v26 = 1;
  return v26 & 1;
}

Swift::Int __swiftcall MockSESnapshot.requiredStorage(for:)(Swift::OpaquePointer a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B18, &qword_262998D68);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v69 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v65 - v6;
  v8 = sub_262996C14();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v67 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v65 - v13;
  v15 = *(a1._rawValue + 2);
  v68 = v12;
  if (v15)
  {
    v16 = *(v12 + 16);
    v17 = a1._rawValue + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v18 = *(v12 + 72);
    v72 = (v12 + 8);
    v73 = v16;
    v19 = MEMORY[0x277D84F98];
    while (1)
    {
      v73(v14, v17, v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74 = v19;
      v21 = sub_262979C5C(v14);
      v23 = *(v19 + 16);
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_42;
      }

      v27 = v22;
      if (*(v19 + 24) < v26)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_8;
      }

      v37 = v18;
      v38 = v21;
      sub_26297A238();
      v21 = v38;
      v18 = v37;
      v19 = v74;
      if ((v27 & 1) == 0)
      {
LABEL_9:
        *(v19 + 8 * (v21 >> 6) + 64) |= 1 << v21;
        v29 = v18;
        v30 = *(v19 + 48) + v21 * v18;
        v31 = v21;
        v73(v30, v14, v8);
        *(*(v19 + 56) + 8 * v31) = 0;
        v32 = *(v19 + 16);
        v25 = __OFADD__(v32, 1);
        v33 = v32 + 1;
        if (v25)
        {
          goto LABEL_44;
        }

        v21 = v31;
        *(v19 + 16) = v33;
        v18 = v29;
      }

LABEL_11:
      v34 = *(v19 + 56);
      v35 = *(v34 + 8 * v21);
      v25 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v25)
      {
        goto LABEL_43;
      }

      *(v34 + 8 * v21) = v36;
      (*v72)(v14, v8);
      v17 += v18;
      if (!--v15)
      {
        goto LABEL_17;
      }
    }

    sub_262979CE0(v26, isUniquelyReferenced_nonNull_native);
    v19 = v74;
    v21 = sub_262979C5C(v14);
    if ((v27 & 1) != (v28 & 1))
    {
      goto LABEL_45;
    }

LABEL_8:
    if ((v27 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v19 = MEMORY[0x277D84F98];
LABEL_17:
  v73 = v8;
  v39 = 0;
  v40 = 0;
  v41 = *(v19 + 64);
  v65[0] = v19 + 64;
  v42 = 1 << *(v19 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & v41;
  v45 = (v42 + 63) >> 6;
  v46 = v69;
  v65[1] = v68 + 32;
  v65[2] = v68 + 16;
  v70 = (v68 + 8);
  v71 = v19;
  v66 = v7;
  if ((v43 & v41) != 0)
  {
    while (1)
    {
      v72 = v39;
      v47 = v40;
LABEL_29:
      v50 = __clz(__rbit64(v44));
      v44 &= v44 - 1;
      v51 = v50 | (v47 << 6);
      v53 = v67;
      v52 = v68;
      v54 = v73;
      (*(v68 + 16))(v67, *(v19 + 48) + *(v68 + 72) * v51, v73);
      v55 = *(*(v19 + 56) + 8 * v51);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B20, &qword_262998D70);
      v57 = *(v56 + 48);
      v58 = *(v52 + 32);
      v46 = v69;
      v58(v69, v53, v54);
      *(v46 + v57) = v55;
      (*(*(v56 - 8) + 56))(v46, 0, 1, v56);
      v49 = v47;
      v7 = v66;
      v39 = v72;
LABEL_30:
      sub_26297A4A8(v46, v7);
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B20, &qword_262998D70);
      if ((*(*(v59 - 8) + 48))(v7, 1, v59) == 1)
      {
        break;
      }

      v60 = *&v7[*(v59 + 48)];
      v61 = 100000 * v60;
      v19 = v71;
      if ((v60 * 100000) >> 64 != (100000 * v60) >> 63)
      {
        goto LABEL_39;
      }

      v25 = __OFADD__(v61, 100000);
      v62 = v61 + 100000;
      if (v25)
      {
        goto LABEL_40;
      }

      v25 = __OFADD__(v39, v62);
      v39 += v62;
      if (v25)
      {
        goto LABEL_41;
      }

      (*v70)(v7, v73);
      v40 = v49;
      if (!v44)
      {
        goto LABEL_21;
      }
    }

    return v39;
  }

  else
  {
LABEL_21:
    if (v45 <= v40 + 1)
    {
      v48 = v40 + 1;
    }

    else
    {
      v48 = v45;
    }

    v49 = v48 - 1;
    while (1)
    {
      v47 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v47 >= v45)
      {
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B20, &qword_262998D70);
        (*(*(v63 - 8) + 56))(v46, 1, 1, v63);
        v44 = 0;
        goto LABEL_30;
      }

      v44 = *(v65[0] + 8 * v47);
      ++v40;
      if (v44)
      {
        v72 = v39;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    result = sub_262996FF4();
    __break(1u);
  }

  return result;
}

uint64_t MockSESnapshot.requiredStorage(for:)()
{
  return 200000;
}

{
  return 200000;
}

void MockSESnapshot.totalUsed.getter()
{
  v1 = sub_262996C14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v30 - v7;
  v9 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + 8);
  v15 = MEMORY[0x277D84FA0];
  v33 = MEMORY[0x277D84FA0];
  v32 = *(v14 + 16);
  if (v32)
  {
    v16 = 0;
    v31 = v14 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v30[0] = v0;
    v30[1] = v2 + 16;
    while (v16 < *(v14 + 16))
    {
      v17 = v11;
      sub_26297A80C(v31 + *(v11 + 72) * v16, v13);
      v18 = *(v13 + 2);
      if (!*(v18 + 16))
      {
        goto LABEL_16;
      }

      ++v16;
      (*(v2 + 16))(v6, v18 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v1);
      sub_26297A554(v8, v6);
      (*(v2 + 8))(v8, v1);
      sub_26297A870(v13);
      v11 = v17;
      if (v32 == v16)
      {
        v15 = v33;
        v0 = v30[0];
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_7:
  v19 = *(v15 + 16);
  if (v19)
  {
    v20 = sub_262979B60(*(v15 + 16), 0);
    v21 = sub_26297B3D0(&v33, (v20 + ((*(v2 + 80) + 32) & ~*(v2 + 80))), v19, v15);
    v22 = sub_26297B674();
    if (v21 == v19)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v20 = MEMORY[0x277D84F90];
LABEL_11:
  MEMORY[0x28223BE20](v22);
  v30[-2] = v0;
  v23 = sub_262976A40(0, sub_26297B67C, &v30[-4], v20);

  v25 = *(v0 + 16);
  MEMORY[0x28223BE20](v24);
  v30[-2] = v0;
  sub_262976B1C(0, sub_26297B698, &v30[-4], v26);
  v28 = v23 + v27;
  if (__OFADD__(v23, v27))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  sub_262977AA0();
  if ((v29 & 1) != 0 && __OFADD__(v28, 200000))
  {
    goto LABEL_18;
  }
}

uint64_t sub_262979260(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_262996C14();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a2, v6);
  if ((*(v7 + 88))(v10, v6) == *MEMORY[0x277D49240])
  {
    v11 = (*(v7 + 96))(v10, v6);
    v12 = *(a3 + 8);
    MEMORY[0x28223BE20](v11);
    v20[-2] = a2;

    v13 = *(sub_262977CEC(sub_26297BC44, &v20[-4], v12) + 16);

    v14 = sub_262996B64();
    result = (*(*(v14 - 8) + 8))(v10, v14);
  }

  else
  {
    result = (*(v7 + 8))(v10, v6);
    v13 = 1;
  }

  v16 = 100000 * v13;
  if ((v13 * 100000) >> 64 != (100000 * v13) >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  v17 = v16 + 100000;
  if (__OFADD__(v16, 100000))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v18 = __OFADD__(*a1, v17);
  v19 = *a1 + v17;
  if (!v18)
  {
    *a1 = v19;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_262979488(void *a1, uint64_t *a2, uint64_t a3)
{
  v28 = a3;
  v29 = a1;
  v4 = sub_262996B54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_262996C14();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = (&v28 - v15);
  v17 = *a2;
  sub_262996C54();
  v18 = sub_262996B34();
  v20 = v19;
  (*(v5 + 8))(v8, v4);
  *v16 = v18;
  v16[1] = v20;
  (*(v10 + 104))(v16, *MEMORY[0x277D49238], v9);
  (*(v10 + 16))(v14, v16, v9);
  if ((*(v10 + 88))(v14, v9) == *MEMORY[0x277D49240])
  {
    v21 = (*(v10 + 96))(v14, v9);
    v22 = *(v28 + 8);
    MEMORY[0x28223BE20](v21);
    *(&v28 - 2) = v16;

    v23 = *(sub_262977CEC(sub_26297BC44, (&v28 - 4), v22) + 16);

    v24 = sub_262996B64();
    result = (*(*(v24 - 8) + 8))(v14, v24);
  }

  else
  {
    result = (*(v10 + 8))(v14, v9);
    v23 = 1;
  }

  v26 = 100000 * v23;
  if ((v23 * 100000) >> 64 != (100000 * v23) >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  v27 = v26 + 100000;
  if (__OFADD__(v26, 100000))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = (*(v10 + 8))(v16, v9);
  if (!__OFADD__(*v29, v27))
  {
    *v29 += v27;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t MockSESnapshot.getLifeCycleState(instanceAID:)()
{
  v0 = *(type metadata accessor for MockSESnapshot() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B28, &qword_262998D78);
  sub_262996C24();
  if (v2)
  {
    return 7;
  }

  else
  {
    return 130;
  }
}

uint64_t MockSESnapshot.availableStorage.getter()
{
  MockSESnapshot.totalUsed.getter();
  v1 = __OFSUB__(1000000, v0);
  result = 1000000 - v0;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t MockSESnapshot.init(snapshot:passes:credentials:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(type metadata accessor for MockSESnapshot() + 28);
  result = sub_262996C34();
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

char *sub_262979930(uint64_t a1)
{
  v3 = sub_262996C14();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = v1;
  result = sub_26297674C(sub_26297BC2C, v12, a1);
  v9 = *(a1 + 16);
  if (*(result + 2) != v9)
  {

    v10 = *MEMORY[0x277D49140];
    v11 = sub_262996B64();
    (*(*(v11 - 8) + 104))(v7, v10, v11);
    (*(v4 + 104))(v7, *MEMORY[0x277D49240], v3);
    return sub_262977038(v7, v9);
  }

  return result;
}

uint64_t sub_262979AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B28, &qword_262998D78);
  sub_262996C24();
  if (v5)
  {
    return 7;
  }

  else
  {
    return 130;
  }
}

size_t sub_262979B60(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF315E8, &qword_2629979D8);
  v4 = *(sub_262996C14() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_262979C5C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_262996C14();
  sub_26297BB14(&qword_27FF315C8);
  v5 = sub_262996CF4();

  return sub_26297A08C(a1, v5);
}

uint64_t sub_262979CE0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_262996C14();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B60, &unk_262998DF0);
  v44 = a2;
  result = sub_262996EB4();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + 8 * v27);
      v31 = *(v14 + 40);
      sub_26297BB14(&qword_27FF315C8);
      result = sub_262996CF4();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

unint64_t sub_26297A08C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_262996C14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_26297BB14(&qword_27FF31B48);
      v16 = sub_262996D24();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

char *sub_26297A238()
{
  v1 = v0;
  v32 = sub_262996C14();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B60, &unk_262998DF0);
  v4 = *v0;
  v5 = sub_262996EA4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_26297A4A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B18, &qword_262998D68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26297A554(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_262996C14();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_26297BB14(&qword_27FF315C8);
  v36 = a2;
  v13 = sub_262996CF4();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_26297BB14(&qword_27FF31B48);
      v23 = sub_262996D24();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_26297AC14(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_26297A80C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26297A870(uint64_t a1)
{
  v2 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26297A8CC(uint64_t a1)
{
  v2 = v1;
  v41 = sub_262996C14();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B50, &qword_262998DE0);
  result = sub_262996E14();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_26297BB14(&qword_27FF315C8);
      result = sub_262996CF4();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_26297AC14(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_262996C14();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26297A8CC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_26297AE90();
      goto LABEL_12;
    }

    sub_26297B0C8(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_26297BB14(&qword_27FF315C8);
  v15 = sub_262996CF4();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_26297BB14(&qword_27FF31B48);
      v23 = sub_262996D24();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_262996FE4();
  __break(1u);
  return result;
}

void *sub_26297AE90()
{
  v1 = v0;
  v2 = sub_262996C14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B50, &qword_262998DE0);
  v7 = *v0;
  v8 = sub_262996E04();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_26297B0C8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_262996C14();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B50, &qword_262998DE0);
  v10 = sub_262996E14();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_26297BB14(&qword_27FF315C8);
      result = sub_262996CF4();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_26297B3D0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_262996C14();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for MockSESnapshot()
{
  result = qword_27FF31B30;
  if (!qword_27FF31B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of SESnapshotDataProviding.requiredStorage(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 32))();
}

{
  return (*(a3 + 40))();
}

{
  return (*(a3 + 48))();
}

uint64_t sub_26297B804(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B28, &qword_262998D78);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_26297B8D4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B28, &qword_262998D78);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26297B984()
{
  sub_262996BD4();
  if (v0 <= 0x3F)
  {
    sub_26297BA70(319, &qword_27FF31AC8, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
    if (v1 <= 0x3F)
    {
      sub_26297BA70(319, &qword_27FF31AE0, MEMORY[0x277D492D0]);
      if (v2 <= 0x3F)
      {
        sub_26297BAC4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}