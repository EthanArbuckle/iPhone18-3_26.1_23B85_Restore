unint64_t sub_268DA6FBC()
{
  v2 = qword_2802DC808;
  if (!qword_2802DC808)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC808);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for SupportedFlowDomain(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF8)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 7) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 248;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 8;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SupportedFlowDomain(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF8)
  {
    v5 = ((a3 + 7) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xF8)
  {
    v4 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 7;
    }
  }

  return result;
}

unint64_t sub_268DA7458()
{
  v2 = qword_2802DC810;
  if (!qword_2802DC810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC818, qword_268F9F6A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC810);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DA74F8()
{
  v2 = qword_2802DC820;
  if (!qword_2802DC820)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC820);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DA758C()
{
  v2 = qword_2802DC828;
  if (!qword_2802DC828)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC828);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DA7608()
{
  v2 = qword_280FE2860;
  if (!qword_280FE2860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC7E0, &qword_268F9F558);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE2860);
    return WitnessTable;
  }

  return v2;
}

id sub_268DA7690(uint64_t a1, void *a2, void *a3)
{
  v45 = a1;
  v32 = a2;
  v31 = a3;
  v41 = "Forming SettingsNLIntent wrapper from NLv3 intent: %@";
  v26 = "No verb found. Returning GetSettingIntent by default.";
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v52 = 0;
  v27 = 0;
  v28 = (*(*(type metadata accessor for SettingsNLIntent() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v29 = v18 - v28;
  v30 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v50 = v18 - v30;
  v57 = v18 - v30;
  v46 = sub_268F9A704();
  v34 = *(v46 - 8);
  v35 = v46 - 8;
  v33 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45);
  v49 = v18 - v33;
  v56 = v5;
  v55 = v6;
  v54 = v7;
  v42 = sub_268F9B284();
  v44 = *sub_268DC7EA8();
  MEMORY[0x277D82BE0](v44);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v40 = sub_268F9B734();
  v38 = v8;
  v48 = *(v34 + 16);
  v47 = v34 + 16;
  v48(v49, v45, v46);
  sub_268DA7B0C();
  v36 = sub_268F9AE74();
  v37 = v9;
  v38[3] = MEMORY[0x277D837D0];
  v10 = sub_268CDD224();
  v11 = v36;
  v12 = v37;
  v13 = v38;
  v14 = v10;
  v15 = v40;
  v38[4] = v14;
  *v13 = v11;
  v13[1] = v12;
  sub_268CD0F7C();
  v43 = v15;
  sub_268F9AC14();

  v16 = MEMORY[0x277D82BD8](v44);
  (v48)(v49, v45, v46, v16);
  sub_268E42410(v49, v50);
  v51 = sub_268DA7B8C();
  if (v51 == 6)
  {
    v18[1] = sub_268F9B284();
    v20 = *sub_268DC7EA8();
    MEMORY[0x277D82BE0](v20);
    v21 = 0;
    v19 = sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v20);
    sub_268D2E630();
    sub_268DA7C90(v50, v29);
    memset(v53, 0, sizeof(v53));
    v22 = sub_268EAF564(v29, v53);
    sub_268D87800(v50);
    return v22;
  }

  else
  {
    v25 = v51;
    v52 = v51;
    v23 = sub_268DA7CF4(v50, v51, v32, v31);
    sub_268D87800(v50);
    return v23;
  }
}

unint64_t sub_268DA7B0C()
{
  v2 = qword_2802DC840;
  if (!qword_2802DC840)
  {
    sub_268F9A704();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC840);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DA7B8C()
{
  v3 = sub_268E4277C();
  if (v3 == 6)
  {
    v2 = sub_268E42860();
    if (v2 == 6)
    {
      v1 = sub_268E428C8();
      if (v1 == 6)
      {
        return sub_268E42B00();
      }

      else
      {
        return v1;
      }
    }

    else
    {
      return v2;
    }
  }

  else
  {
    return v3;
  }
}

uint64_t sub_268DA7C90(uint64_t a1, uint64_t a2)
{
  v2 = sub_268F9A704();
  (*(*(v2 - 8) + 16))(a2, a1);
  return a2;
}

id sub_268DA7CF4(uint64_t a1, int a2, void *a3, void *a4)
{
  v50 = a1;
  v64 = a2;
  v47 = a3;
  v48 = a4;
  v60 = "Finding corresponding SiriKit intent %@ based on verb: %@";
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C8, &qword_268F9F530);
  v37 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v38 = v25 - v37;
  v39 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25 - v37);
  v40 = v25 - v39;
  v41 = 0;
  v42 = sub_268F9ACE4();
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  v45 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41);
  v46 = v25 - v45;
  v80 = v25 - v45;
  v51 = type metadata accessor for SettingsNLIntent();
  v49 = (*(*(v51 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v50);
  v52 = v25 - v49;
  v79 = v6;
  v78 = v7;
  v77 = v8;
  v76 = v9;
  v61 = sub_268F9B284();
  v63 = *sub_268DC7EA8();
  MEMORY[0x277D82BE0](v63);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v58 = sub_268F9B734();
  v57 = v10;
  sub_268DA7C90(v50, v52);
  sub_268DA967C();
  v54 = sub_268F9AE74();
  v53 = v11;
  v55 = MEMORY[0x277D837D0];
  v57[3] = MEMORY[0x277D837D0];
  v12 = sub_268CDD224();
  v13 = v53;
  v14 = v57;
  v15 = v64;
  v16 = v12;
  v17 = v54;
  v56 = v16;
  v57[4] = v16;
  *v14 = v17;
  v14[1] = v13;
  v75 = v15;
  v18 = sub_268F9AE64();
  v19 = v56;
  v20 = v57;
  v21 = v18;
  v22 = v58;
  v57[8] = v55;
  v20[9] = v19;
  v20[5] = v21;
  v20[6] = v23;
  sub_268CD0F7C();
  v62 = v22;
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v63);
  if (!v64)
  {
    sub_268DA96FC();
    sub_268DA7C90(v50, v52);
    memset(v74, 0, sizeof(v74));
    return sub_268EC5698(v52, v74);
  }

  if (v64 == 1)
  {
    sub_268D2E630();
    sub_268DA7C90(v50, v52);
    v35 = v65;
    sub_268D35D60(v47, v65);
    return sub_268EAF564(v52, v35);
  }

  else if (v64 == 3)
  {
    sub_268E42694(&v73);
    v72 = v73;
    v34 = v73 == 65;
    if (v73 == 65)
    {
      sub_268D35D60(v48, v67);
      if (v67[3])
      {
        v31 = __dst;
        sub_268CDF978(v67, __dst);
        v33 = v69;
        v32 = v70;
        __swift_project_boxed_opaque_existential_1(v31, v69);
        (*(v32 + 24))(v33);
        if ((*(v43 + 48))(v40, 1, v42) != 1)
        {
          (*(v43 + 32))(v46, v40, v42);
          (*(v43 + 16))(v38, v46, v42);
          (*(v43 + 56))(v38, 0, 1, v42);
          v29 = __dst;
          v28 = v66;
          sub_268CDE730(__dst, v66);
          v30 = sub_268DA83CC(v50, v47, v38, v28);
          sub_268D28414(v28);
          sub_268D59D2C(v38);
          (*(v43 + 8))(v46, v42);
          __swift_destroy_boxed_opaque_existential_0(v29);
          return v30;
        }

        sub_268D59D2C(v40);
        __swift_destroy_boxed_opaque_existential_0(__dst);
      }

      else
      {
        sub_268D28414(v67);
      }
    }

    sub_268CD7620();
    sub_268DA7C90(v50, v52);
    v26 = v71;
    sub_268D35D60(v47, v71);
    v27 = sub_268E88DA0(v52, v26);
    if (!v27)
    {
      return 0;
    }

    v25[1] = v27;
    v25[0] = v27;
    return v25[0];
  }

  else
  {
    return sub_268DA8EF0(v50, v47, v48);
  }
}

id sub_268DA83CC(uint64_t a1, void *a2, const void *a3, void *a4)
{
  v54 = a1;
  v53 = a2;
  v52 = a3;
  v66 = a4;
  v62 = "Verb is 'set'. Finding corresponding SiriKit intent based on type of setting name populated by NL";
  v47 = "Creating a default intent with unknown setting to be handled gracefully later.";
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  countAndFlagsBits = 0;
  v80 = 0;
  v78 = 0;
  v72 = 0;
  v73 = 0;
  v71 = 0;
  v69 = 0;
  v70 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C8, &qword_268F9F530);
  v48 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v49 = v18 - v48;
  v50 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18 - v48);
  v51 = v18 - v50;
  v60 = 0;
  v55 = sub_268F9ACE4();
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v54);
  v59 = v18 - v58;
  v90 = v18 - v58;
  v89 = v6;
  v88 = v7;
  v87 = v8;
  v86 = v9;
  v63 = sub_268F9B284();
  v65 = *sub_268DC7EA8();
  MEMORY[0x277D82BE0](v65);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v64 = sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v65);
  sub_268D35D60(v66, v82);
  if (!v82[3])
  {
    sub_268D28414(v82);
LABEL_17:
    v18[1] = sub_268F9B294();
    v20 = *sub_268DC7F08();
    MEMORY[0x277D82BE0](v20);
    v22 = 0;
    v19 = sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v20);
    sub_268CD7620();
    v21 = v81;
    memset(v81, 0, sizeof(v81));
    v23 = sub_268F284EC(v22, v22, v81, v22, v22);
    sub_268D28414(v21);
    return sub_268DA95CC(v23, v22, v22);
  }

  sub_268CDF978(v82, &__dst);
  sub_268D9FE58(v52, v49);
  v45 = *(v56 + 48);
  v46 = v56 + 48;
  if (v45(v49, 1, v55) == 1)
  {
    v44 = v84;
    v43 = v85;
    __swift_project_boxed_opaque_existential_1(&__dst, v84);
    (*(v43 + 24))(v44);
    if (v45(v49, 1, v55) != 1)
    {
      sub_268D59D2C(v49);
    }
  }

  else
  {
    (*(v56 + 32))(v51, v49, v55);
    (*(v56 + 56))(v51, 0, 1, v55);
  }

  if (v45(v51, 1, v55) == 1)
  {
    sub_268D59D2C(v51);
    __swift_destroy_boxed_opaque_existential_0(&__dst);
    goto LABEL_17;
  }

  (*(v56 + 32))(v59, v51, v55);
  v42._countAndFlagsBits = sub_268F9ACC4();
  v42._object = v10;
  countAndFlagsBits = v42._countAndFlagsBits;
  v80 = v10;

  v39 = 0;
  sub_268DA9760();
  v40 = sub_268DA9564(v39, v39, v39, v39, v39, v39);
  v41 = sub_268F284EC(v42._countAndFlagsBits, v42._object, v53, v40, v39);
  MEMORY[0x277D82BD8](v40);

  v78 = v41;

  BinarySettingIdentifier.init(rawValue:)(v42);
  v76 = v77;
  v38 = v77 != 65;
  if (v77 == 65)
  {

    NumericSettingIdentifier.init(rawValue:)(v42);
    v74 = v75;
    v29 = v75 != 13;
    if (v75 == 13)
    {
      MEMORY[0x277D82BD8](v41);

      (*(v56 + 8))(v59, v55);
      __swift_destroy_boxed_opaque_existential_0(&__dst);
      goto LABEL_17;
    }

    v24 = sub_268D588E0();
    v27 = sub_268E3DE20();
    v26 = v14;
    v72 = v27;
    v73 = v14;
    v25 = sub_268E3E06C(v54);
    v71 = v25;
    has_malloc_size = _swift_stdlib_has_malloc_size();
    v16 = sub_268F28680(v54, has_malloc_size & 1);
    v28 = sub_268DA961C(v41, v25, v26, v27, v16);

    (*(v56 + 8))(v59, v55);
    __swift_destroy_boxed_opaque_existential_0(&__dst);
    return v28;
  }

  else
  {
    v34 = sub_268CD7620();
    v37 = sub_268E892CC(v54);
    v35 = v11;
    v69 = v37;
    v36 = 1;
    v70 = v11 & 1;
    MEMORY[0x277D82BE0](v41);
    v67 = v37;
    if (v35 & 1 & v36)
    {
      v33 = 0;
    }

    else
    {
      v33 = v67;
    }

    v30 = v33;
    v12 = _swift_stdlib_has_malloc_size();
    v13 = sub_268F28680(v54, v12 & 1);
    v31 = sub_268DA95CC(v41, v30, v13);
    MEMORY[0x277D82BD8](v41);

    (*(v56 + 8))(v59, v55);
    __swift_destroy_boxed_opaque_existential_0(&__dst);
    return v31;
  }
}

id sub_268DA8EF0(uint64_t a1, void *a2, void *a3)
{
  v31 = a1;
  v35 = a2;
  v34 = a3;
  v39 = "Verb is 'set'. Finding corresponding SiriKit intent based on type of setting name populated by NL";
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C8, &qword_268F9F530);
  v32 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v33 = &v10 - v32;
  v38 = 0;
  v5 = type metadata accessor for SettingsNLIntent();
  v36 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v37 = &v10 - v36;
  v60 = a1;
  v59 = v6;
  v58 = v7;
  v40 = sub_268F9B284();
  v42 = *sub_268DC7EA8();
  MEMORY[0x277D82BE0](v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v41 = sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v42);
  sub_268E42694(&v57);
  v56[2] = v57;
  v30 = v57 != 65;
  if (v57 != 65)
  {
    sub_268CD7620();
    sub_268DA7C90(v31, v37);
    v28 = &v43;
    sub_268D35D60(v35, &v43);
    v29 = sub_268E88DA0(v37, v28);
    if (!v29)
    {
      return 0;
    }

    v27 = v29;
    return v29;
  }

  sub_268E4262C();
  v56[0] = v56[1];
  v24 = &v55;
  v55 = 10;
  v23 = &v54;
  sub_268D288B4(v56, &v53);
  sub_268D288B4(v24, v23);
  if (v53 != 13)
  {
    sub_268D288B4(&v53, &v46);
    if (v54 != 13)
    {
      v21 = &v45;
      v45 = v46;
      v20 = &v44;
      v44 = v54;
      sub_268D91118();
      v22 = sub_268F9AE04();
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (v54 != 13)
  {
LABEL_14:
    v22 = 0;
    goto LABEL_12;
  }

  v22 = 1;
LABEL_12:
  if (v22)
  {
    sub_268CD7620();
    sub_268DA7C90(v31, v37);
    v19 = sub_268E890A8(v37);
    if (!v19)
    {
      return 0;
    }

    v18 = v19;
    return v19;
  }

  else
  {
    sub_268E4262C();
    v51 = v52;
    if (v52 != 13)
    {
      sub_268D588E0();
      sub_268DA7C90(v31, v37);
      v14 = &v49;
      sub_268D35D60(v35, &v49);
      v15 = sub_268E3DA44(v37, v14);
      if (v15)
      {
        v13 = v15;
        v12 = v15;
      }

      else
      {
        v12 = 0;
      }

      v48 = v12;
      if (v12)
      {
        return v48;
      }

      sub_268D2E630();
      sub_268DA7C90(v31, v37);
      v11 = &v47;
      sub_268D35D60(v35, &v47);
      v50 = sub_268EAF564(v37, v11);
      if (v48)
      {
        sub_268D35038(&v48);
      }

      return v50;
    }

    else
    {
      v8 = sub_268F9ACE4();
      (*(*(v8 - 8) + 56))(v33, 1);
      v10 = sub_268DA83CC(v31, v35, v33, v34);
      sub_268D59D2C(v33);
      return v10;
    }
  }
}

unint64_t sub_268DA967C()
{
  v2 = qword_2802DC848;
  if (!qword_2802DC848)
  {
    type metadata accessor for SettingsNLIntent();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC848);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DA96FC()
{
  v2 = qword_2802DC850;
  if (!qword_2802DC850)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC850);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268DA9760()
{
  v2 = qword_2802DC858;
  if (!qword_2802DC858)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC858);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_268DA97D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v13 = sub_268F9AE14();

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a4)
  {
    v11 = sub_268F9AE14();

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (a6)
  {
    v10 = sub_268F9AE14();

    v6 = [v17 initWithBundleIdentifier:v14 bundleVersion:v12 appName:v10];
  }

  else
  {
    v6 = [v17 initWithBundleIdentifier:v14 bundleVersion:v12 appName:0];
  }

  v9 = v6;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v14);
  return v9;
}

id sub_268DA9980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [v3 initWithSettingMetadata:a1 binaryValue:a2 temporalEventTrigger:?];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](a1);
  return v7;
}

id sub_268DA99EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [v5 initWithSettingMetadata:a1 numericValue:a2 boundedValue:a3 action:a4 temporalEventTrigger:?];
  MEMORY[0x277D82BD8](a5);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v10;
}

id sub_268DA9A7C(uint64_t a1, uint64_t a2)
{
  sub_268CD795C();
  MEMORY[0x277D82BE0](a2);
  return sub_268CD42AC(a1, a2);
}

uint64_t sub_268DA9AE0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 208) = v15;
  *(v8 + 200) = v14;
  *(v8 + 37) = v13;
  *(v8 + 192) = v12;
  *(v8 + 184) = a8;
  *(v8 + 176) = a7;
  *(v8 + 36) = a6 & 1;
  *(v8 + 35) = a5;
  *(v8 + 168) = a4;
  *(v8 + 160) = a3;
  *(v8 + 152) = a2;
  *(v8 + 34) = a1 & 1;
  *(v8 + 88) = v8;
  *(v8 + 232) = 0;
  *(v8 + 96) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 240) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 104) = 0;
  *(v8 + 33) = 0;
  *(v8 + 120) = 0;
  *(v8 + 232) = a1 & 1;
  *(v8 + 96) = a2;
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  *(v8 + 240) = a6 & 1;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 72) = v12;
  *(v8 + 80) = v13 & 1;
  *(v8 + 56) = v14;
  *(v8 + 64) = v15;
  v10 = *(v8 + 88);

  return MEMORY[0x2822009F8](sub_268DA9C20, 0);
}

uint64_t sub_268DA9C20()
{
  v1 = *(v0 + 37);
  v2 = *(v0 + 192);
  v3 = *(v0 + 152);
  *(v0 + 88) = v0;
  v42 = v2;
  v43 = v1 & 1;
  MEMORY[0x277D82BE0](v3);
  if (v43)
  {
    v40 = [*(v41 + 152) binaryValue];
  }

  else
  {
    v40 = v42;
  }

  MEMORY[0x277D82BD8](*(v41 + 152));
  *(v41 + 104) = v40;
  if (v40 == 1)
  {
    *(v41 + 33) = 1;
    v39 = 1;
  }

  else if (v40 == 2)
  {
    *(v41 + 33) = 0;
    v39 = 0;
  }

  else
  {
    if (v40 != 3)
    {
      v33 = *(v41 + 152);
      sub_268F9B294();
      v5 = sub_268DC7AE8();
      v37 = *v5;
      MEMORY[0x277D82BE0](*v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v36 = v6;
      MEMORY[0x277D82BE0](v33);
      *(v41 + 112) = v33;
      sub_268CD7620();
      sub_268D28940();
      v34 = sub_268F9AE74();
      v35 = v7;
      v36[3] = MEMORY[0x277D837D0];
      v36[4] = sub_268CDD224();
      *v36 = v34;
      v36[1] = v35;
      sub_268CD0F7C();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v37);
      v8 = sub_268DAB2DC();
      v38 = sub_268DA9A7C(v8, 0);
      goto LABEL_19;
    }

    v4 = *(v41 + 34) ^ 1;
    *(v41 + 33) = v4 & 1;
    v39 = v4;
  }

  *(v41 + 38) = v39 & 1;
  v29 = *(v41 + 36);
  v28 = *(v41 + 35);
  v27 = *(v41 + 168);
  v30 = *(v41 + 160);
  v32 = *(v41 + 34);
  v9 = sub_268DC7AE8();
  v31 = *v9;
  MEMORY[0x277D82BE0](*v9);
  sub_268DB9934(v30, v27, v28, v31, v29 & 1);
  MEMORY[0x277D82BD8](v31);
  if ((v39 & 1) == (v32 & 1))
  {
    v24 = v39;
    goto LABEL_18;
  }

  v10 = *(v41 + 184);
  v26 = *(v41 + 176);
  sub_268DABAF0(v26);
  if (!v26)
  {
    v24 = v39;
LABEL_18:
    v21 = *(v41 + 35);
    v20 = *(v41 + 168);
    v22 = *(v41 + 160);
    v19 = sub_268DAB988(*(v41 + 34) & 1);
    v16 = sub_268DAB988(v24 & 1);
    v23 = sub_268DAB9C8(0, v19, v16);
    sub_268DABA74(v22, v20, v21);
    v38 = v23;
LABEL_19:
    v15 = v38;
    v14 = *(*(v41 + 88) + 8);
    v17 = *(v41 + 88);

    return v14(v15);
  }

  v11 = *(v41 + 184);
  v25 = (*(v41 + 176) + **(v41 + 176));
  v12 = *(*(v41 + 176) + 4);
  v13 = swift_task_alloc();
  v14 = v25;
  *(v41 + 216) = v13;
  *v13 = *(v41 + 88);
  v13[1] = sub_268DAA3B0;
  v15 = v39 & 1;

  return v14(v15);
}

uint64_t sub_268DAA3B0()
{
  v7 = *v1;
  v2 = *(*v1 + 216);
  *(v7 + 88) = *v1;
  v8 = (v7 + 88);
  *(v7 + 224) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = sub_268DAA6A8;
  }

  else
  {
    v3 = *v8;
    v4 = sub_268DAA518;
  }

  return MEMORY[0x2822009F8](v4, 0);
}

uint64_t sub_268DAA518()
{
  v1 = *(v0 + 184);
  *(v0 + 88) = v0;

  v6 = *(v0 + 38);
  v9 = *(v0 + 35);
  v8 = *(v0 + 168);
  v10 = *(v0 + 160);
  v7 = sub_268DAB988(*(v0 + 34) & 1);
  v2 = sub_268DAB988(v6 & 1);
  v11 = sub_268DAB9C8(0, v7, v2);
  sub_268DABA74(v10, v8, v9);
  v3 = *(*(v0 + 88) + 8);
  v4 = *(v0 + 88);

  return v3(v11);
}

uint64_t sub_268DAA6A8()
{
  v21 = v0[28];
  v29 = v0[26];
  v30 = v0[25];
  v1 = v0[23];
  v24 = v0[19];
  v0[11] = v0;

  v2 = v21;
  v0[15] = v21;
  sub_268F9B294();
  v3 = sub_268DC7AE8();
  v28 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v27 = v4;
  v5 = v21;
  v0[16] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v22 = sub_268F9AE64();
  v23 = v6;
  v25 = MEMORY[0x277D837D0];
  v27[3] = MEMORY[0x277D837D0];
  v26 = sub_268CDD224();
  v27[4] = v26;
  *v27 = v22;
  v27[1] = v23;
  MEMORY[0x277D82BE0](v24);
  v0[17] = v24;
  sub_268CD7620();
  sub_268D28940();
  v7 = sub_268F9AE74();
  v27[8] = v25;
  v27[9] = v26;
  v27[5] = v7;
  v27[6] = v8;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v28);
  sub_268DABAF0(v30);
  if (v30)
  {
    v9 = *(v20 + 208);
    v18 = (*(v20 + 200))(*(v20 + 224));

    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  *(v20 + 144) = v19;
  if (*(v20 + 144))
  {
    v31 = *(v20 + 144);
  }

  else
  {
    v10 = sub_268DAB2DC();
    v31 = sub_268DA9A7C(v10, 0);
    if (*(v20 + 144))
    {
      sub_268D35038((v20 + 144));
    }
  }

  v14 = *(v20 + 224);
  v17 = *(v20 + 35);
  v16 = *(v20 + 168);
  v15 = *(v20 + 160);

  sub_268DABA74(v15, v16, v17);
  v11 = *(*(v20 + 88) + 8);
  v12 = *(v20 + 88);

  return v11(v31);
}

uint64_t sub_268DAAB84(int a1, void *a2, uint64_t a3, uint64_t a4, int a5, int a6, void (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10, void *a11, char a12, uint64_t a13, uint64_t a14)
{
  v70 = a8;
  v71 = a7;
  v72 = a4;
  v73 = a3;
  v74 = a2;
  v75 = a14;
  v76 = a13;
  v77 = a10;
  v78 = a9;
  v79 = a6;
  v80 = a5;
  v81 = a1;
  v82 = 0;
  v86 = 0;
  v85 = 0;
  v83 = 0;
  v102 = a1;
  v101 = a2;
  v98 = a3;
  v99 = a4;
  v100 = a5;
  v97 = a6;
  v95 = a7;
  v96 = a8;
  v93 = a9;
  v94 = a10;
  v91 = a11;
  v92 = a12 & 1;
  v89 = a13;
  v90 = a14;
  v87 = a11;
  v88 = a12 & 1;
  v14 = a2;
  if (a12)
  {
    v68 = [v74 binaryValue];
    v69 = v68;
  }

  else
  {
    v69 = v87;
  }

  v67 = v69;

  v86 = v69;
  if (v69 == 1)
  {
    v85 = 1;
    goto LABEL_11;
  }

  if (v67 == 2)
  {
    v85 = 0;
    goto LABEL_11;
  }

  if (v67 == 3)
  {
    v85 = (v81 & 1) == 0;
LABEL_11:
    v27 = v83;
    v51 = *sub_268DC7AE8();
    v50 = v51;
    v28 = v51;
    sub_268DABAF0(v78);
    v29 = v74;

    sub_268DABAF0(v76);
    v52 = &v49;
    v30 = MEMORY[0x28223BE20](v73);
    v53 = &v49;
    v40[2] = &v85;
    v41 = v81 & 1;
    v42 = v78;
    v43 = v31;
    v44 = v32;
    v45 = v33;
    v46 = v34;
    v47 = v76;
    v48 = v75;
    sub_268DB944C(v30, v36, v37, v38, v35 & 1, sub_268DABB24, v40, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v54 = v27;
    sub_268CD9A28(v78);

    sub_268CD9A28(v76);

    return v54;
  }

  v15 = v83;
  v61 = sub_268F9B294();
  v63 = *sub_268DC7AE8();
  v16 = v63;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v60 = sub_268F9B734();
  v57 = v17;
  v18 = v74;
  v84 = v74;
  v64 = 0;
  v55 = sub_268CD7620();
  sub_268D28940();
  v56 = sub_268F9AE74();
  v58 = v19;
  v57[3] = MEMORY[0x277D837D0];
  v20 = sub_268CDD224();
  v21 = v56;
  v22 = v57;
  v23 = v58;
  v24 = v20;
  v25 = v60;
  v57[4] = v24;
  *v22 = v21;
  v22[1] = v23;
  sub_268CD0F7C();
  v62 = v25;
  sub_268F9AC14();

  v26 = sub_268DAB2DC();
  v65 = sub_268DA9A7C(v26, v64);
  v71();

  return v15;
}

id sub_268DAB158()
{
  sub_268CD795C();
  v2 = sub_268CD42AC(8, 0);

  v1 = sub_268F9AE14();

  [v2 setErrorDetail_];
  MEMORY[0x277D82BD8](v1);
  return v2;
}

SiriSettingsIntents::BinarySettingIdentifier_optional sub_268DAB218(uint64_t a1)
{
  v8 = a1;
  v6 = a1;
  v1 = sub_268CD7620();
  v5._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v1, &protocol witness table for INSetBinarySettingIntent);
  v5._object = v2;
  if (v2)
  {
    rawValue = v5;
  }

  else
  {
    rawValue._countAndFlagsBits = sub_268F9AEF4();
    rawValue._object = v3;
  }

  return BinarySettingIdentifier.init(rawValue:)(rawValue);
}

void *sub_268DAB2E8(_BYTE *a1, char a2, void (*a3)(void), uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7, uint64_t (*a8)(), uint64_t a9)
{
  v53 = 0;
  v63 = a1;
  v62 = a2 & 1;
  v60 = a3;
  v61 = a4;
  v59 = a5;
  v57 = a6;
  v58 = a7;
  v55 = a8;
  v56 = a9;
  if ((*a1 & 1) == (a2 & 1))
  {
    v35 = v48;
    goto LABEL_9;
  }

  sub_268F9B274();
  v9 = sub_268DC7AE8();
  v41 = *v9;
  MEMORY[0x277D82BE0](*v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v39 = v10;
  v54 = *a1;
  v37 = sub_268F9AE74();
  v38 = v11;
  v39[3] = MEMORY[0x277D837D0];
  v40 = sub_268CDD224();
  v39[4] = v40;
  *v39 = v37;
  v39[1] = v38;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v41);
  sub_268DABAF0(a3);
  if (!a3)
  {
    v36 = v48;
LABEL_7:
    sub_268F9B274();
    v12 = sub_268DC7AE8();
    v34 = *v12;
    MEMORY[0x277D82BE0](*v12);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v34);
    v35 = v36;
LABEL_9:
    sub_268F9B274();
    v13 = sub_268DC7AE8();
    v31 = *v13;
    MEMORY[0x277D82BE0](*v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v31);

    v32 = sub_268DAB988(a2 & 1);
    v14 = sub_268DAB988(*a1 & 1);
    v33 = sub_268DAB9C8(0, v32, v14);
    a6();
    MEMORY[0x277D82BD8](v33);

    return v35;
  }

  a3(*a1 & 1);
  if (!v48)
  {

    v36 = 0;
    goto LABEL_7;
  }

  v16 = v48;
  v53 = v48;
  sub_268F9B294();
  v17 = sub_268DC7AE8();
  v30 = *v17;
  MEMORY[0x277D82BE0](*v17);
  sub_268F9B734();
  v29 = v18;
  v19 = v48;
  v52 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v20 = sub_268F9AE64();
  v28 = MEMORY[0x277D837D0];
  v29[3] = MEMORY[0x277D837D0];
  v29[4] = v40;
  *v29 = v20;
  v29[1] = v21;
  MEMORY[0x277D82BE0](a5);
  v51 = a5;
  sub_268CD7620();
  sub_268D28940();
  v22 = sub_268F9AE74();
  v29[8] = v28;
  v29[9] = v40;
  v29[5] = v22;
  v29[6] = v23;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v30);

  sub_268DABAF0(a8);
  if (a8)
  {
    v26 = a8();

    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  v49 = v27;
  if (v27)
  {
    v50 = v49;
  }

  else
  {
    v24 = sub_268DAB2DC();
    v50 = sub_268DA9A7C(v24, 0);
  }

  v25 = v50;
  a6();
  MEMORY[0x277D82BD8](v25);

  return 0;
}

uint64_t sub_268DAB988(char a1)
{
  if (a1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

id sub_268DAB9C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_268CD795C();
  MEMORY[0x277D82BE0](a1);
  v7 = sub_268CD42AC(3, a1);
  [v7 setOldValue_];
  [v7 setUpdatedValue_];
  return v7;
}

uint64_t sub_268DABA74(uint64_t a1, uint64_t a2, int a3)
{
  v3 = sub_268DC7AE8();
  v8 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(a1, a2, a3, v8);
  return MEMORY[0x277D82BD8](v8);
}

uint64_t sub_268DABAF0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_268DABB80(uint64_t a1)
{
  v61 = a1;
  v25 = "Fatal error";
  v26 = "Unexpectedly found nil while unwrapping an Optional value";
  v27 = "SiriSettingsIntents/SetBinaryIntentHandlerUtil.swift";
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC860, &unk_268FA32E0);
  v28 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v29 = v15 - v28;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC868, qword_268F9F890);
  v30 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v31 = v15 - v30;
  v50 = 0;
  v32 = sub_268F99294();
  v33 = *(v32 - 8);
  v34 = v32 - 8;
  v35 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v50);
  v36 = v15 - v35;
  v37 = sub_268F992A4();
  v38 = *(v37 - 8);
  v39 = v37 - 8;
  v40 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v50);
  v41 = v15 - v40;
  v42 = sub_268F99284();
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  v45 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v50);
  v46 = v15 - v45;
  v65 = sub_268F992F4();
  v62 = *(v65 - 8);
  v63 = v65 - 8;
  v47 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v50);
  v64 = v15 - v47;
  v69 = sub_268F99314();
  v66 = *(v69 - 8);
  v67 = v69 - 8;
  v48 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v69);
  v68 = v15 - v48;
  v49 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v58 = v15 - v49;
  v51 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC390, &qword_268FA32F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v50);
  v52 = v15 - v51;
  v53 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v54 = v15 - v53;
  v55 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v74 = v15 - v55;
  v56 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v57 = v15 - v56;
  v76 = sub_268F99214();
  v72 = *(v76 - 8);
  v73 = v76 - 8;
  v59 = (*(v72 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v61);
  v60 = v15 - v59;
  v82 = v15 - v59;
  v81 = v11;
  sub_268F992E4();
  sub_268F992E4();
  (*(v62 + 104))(v64, *MEMORY[0x277CC9968], v65);
  sub_268CDD6D4();
  v75 = 1;
  sub_268F992D4();
  (*(v62 + 8))(v64, v65);
  v70 = *(v66 + 8);
  v71 = v66 + 8;
  v70(v68, v69);
  v77 = *(v72 + 48);
  v78 = v72 + 48;
  if (v77(v74, v75, v76) == 1)
  {
    sub_268F9B584();
    __break(1u);
  }

  sub_268DAC6A8(v46);
  sub_268DAC714(v41);
  sub_268DAC780(v36);
  sub_268F992C4();
  (*(v33 + 8))(v36, v32);
  (*(v38 + 8))(v41, v37);
  (*(v43 + 8))(v46, v42);
  v23 = *(v72 + 8);
  v24 = v72 + 8;
  v23(v74, v76);
  v70(v58, v69);
  if (v77(v57, 1, v76) == 1)
  {
    sub_268D54CB4(v57);
    return 0;
  }

  else
  {
    (*(v72 + 32))(v60, v57, v76);
    v19 = 0;
    sub_268DAC7EC();
    sub_268F991F4();
    v16 = *(v72 + 56);
    v15[1] = v72 + 56;
    v18 = 0;
    v17 = 1;
    v16(v54);
    (*(v72 + 16))(v52, v60, v76);
    (v16)(v52, v18, v17, v76);
    sub_268F992E4();
    (*(v66 + 56))(v31, v18, v17, v69);
    sub_268F99334();
    v12 = sub_268F99344();
    (*(*(v12 - 8) + 56))(v29, v18, v17);
    v20 = sub_268DAC850(v54, v52, v31, v29);
    v80 = v20;
    sub_268DAC8A8();
    MEMORY[0x277D82BE0](v20);
    v21 = sub_268DAC90C(v20);
    v79 = v21;
    v13 = MEMORY[0x277D82BD8](v20);
    (v23)(v60, v76, v13);
    return v21;
  }
}

uint64_t sub_268DAC6A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277CC9878];
  v1 = sub_268F99284();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_268DAC714@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277CC9900];
  v1 = sub_268F992A4();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_268DAC780@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277CC98E8];
  v1 = sub_268F99294();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

unint64_t sub_268DAC7EC()
{
  v2 = qword_2802DC870;
  if (!qword_2802DC870)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC870);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268DAC8A8()
{
  v2 = qword_2802DC878;
  if (!qword_2802DC878)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC878);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_268DAC960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = sub_268F99214();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  if (v25(a1, 1) == 1)
  {
    v17 = 0;
  }

  else
  {
    v16 = sub_268F991D4();
    (*(v24 + 8))(a1, v23);
    v17 = v16;
  }

  if ((v25)(a2, 1, v23) == 1)
  {
    v15 = 0;
  }

  else
  {
    v14 = sub_268F991D4();
    (*(v24 + 8))(a2, v23);
    v15 = v14;
  }

  v12 = sub_268F99314();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(a3, 1) == 1)
  {
    v11 = 0;
  }

  else
  {
    v10 = sub_268F992B4();
    (*(v13 + 8))(a3, v12);
    v11 = v10;
  }

  v8 = sub_268F99344();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a4, 1) == 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = sub_268F99324();
    (*(v9 + 8))(a4, v8);
    v7 = v6;
  }

  v5 = [v21 initWithStartDate:v17 endDate:v15 onCalendar:v11 inTimeZone:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v17);
  return v5;
}

id sub_268DACCB0(uint64_t a1)
{
  v4 = [v1 initWithDateComponentsRange_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

uint64_t sub_268DACD00()
{
  type metadata accessor for GetAutoAnswerHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE81C0 = result;
  return result;
}

uint64_t *sub_268DACD68()
{
  if (qword_280FE4EB0 != -1)
  {
    swift_once();
  }

  return &qword_280FE81C0;
}

uint64_t sub_268DACDC8()
{
  v1 = *sub_268DACD68();

  return v1;
}

uint64_t sub_268DACDF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v23 = a2;
  v24 = a3;
  v22 = v3;
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v8 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v8);
  v5 = sub_268DB9E94();
  v9 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v15 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v16 = *(v3 + 24);

  MEMORY[0x277D82BE0](a1);

  v18 = a2;
  v19 = a3;
  v20 = a1;
  v21 = v3;
  sub_268DB944C(v9, v13, v14, v15, v16 & 1, sub_268DAD154, v17, MEMORY[0x277D84F78] + 8, v3);

  MEMORY[0x277D82BD8](a1);

  return MEMORY[0x277D82BD8](v15);
}

uint64_t sub_268DAD014(void (*a1)(id), uint64_t a2, void *a3, uint64_t a4)
{

  v11 = [a3 settingMetadata];
  v12 = *(a4 + 16);

  v13 = sub_268D3F1D4();

  if (v13)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  v4 = sub_268D4AA1C();
  v6 = sub_268E41A08(v11, 0, v4, v7, 0, 0);
  MEMORY[0x277D82BD8](v11);
  a1(v6);
  MEMORY[0x277D82BD8](v6);
}

uint64_t sub_268DAD1AC()
{
  type metadata accessor for SetNumericSettingAceViewProvider();
  v0 = sub_268D587A8();
  result = sub_268DAD258(v0);
  qword_2802F07E8 = result;
  return result;
}

uint64_t type metadata accessor for SetNumericSettingAceViewProvider()
{
  v1 = qword_2802DC890;
  if (!qword_2802DC890)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268DAD258(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_268DAD368(a1);
}

uint64_t *sub_268DAD2A4()
{
  if (qword_2802DAFC8 != -1)
  {
    swift_once();
  }

  return &qword_2802F07E8;
}

uint64_t sub_268DAD304()
{
  v1 = *sub_268DAD2A4();

  return v1;
}

uint64_t sub_268DAD334()
{
  v2 = *(v0 + qword_2802DC880);

  return v2;
}

uint64_t sub_268DAD368(uint64_t a1)
{

  *qword_2802DC880 = a1;
  v3 = sub_268F99B04();

  return v3;
}

uint64_t sub_268DAD3F0(uint64_t a1, void *a2, id a3, void (*a4)(void), uint64_t a5)
{
  v39 = 0;
  v36 = 0;
  v34 = 0;
  v32 = 0;
  v44 = a1;
  v43 = a2;
  v42 = a3;
  v40 = a4;
  v41 = a5;
  v38 = [a3 code];
  v37 = 3;
  type metadata accessor for INSetNumericSettingIntentResponseCode();
  sub_268DAD9F4();
  if (sub_268F9B754())
  {
    v26 = [a2 settingMetadata];
    if (v26)
    {
      v23 = [v26 settingId];
      v24._countAndFlagsBits = sub_268F9AE24();
      v24._object = v5;
      MEMORY[0x277D82BD8](v26);
      MEMORY[0x277D82BD8](v23);
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    if (v25._object)
    {
      v36 = v25;

      NumericSettingIdentifier.init(rawValue:)(v25);
      v22 = v35;
      if (v35 == 13)
      {
      }

      else
      {
        v34 = v35;
        v6 = [a3 updatedValue];
        v33 = v6;
        if (v6)
        {
          v19 = v33;
          MEMORY[0x277D82BE0](v33);
          sub_268D35038(&v33);
          v20 = [v19 value];
          MEMORY[0x277D82BD8](v19);
          v21 = v20;
        }

        else
        {
          sub_268D35038(&v33);
          v21 = 0;
        }

        if (v21)
        {
          v32 = v21;
          v17 = *(v30 + qword_2802DC880);

          v31 = v22;
          v18 = sub_268E574DC(&v31);

          if (v18)
          {

            sub_268D34954();
            v16 = sub_268F9B734();
            v15 = v7;
            MEMORY[0x277D82BE0](v18);
            *v15 = v18;
            sub_268CD0F7C();
            a4();
            sub_268DADA74(v16, 0);

            MEMORY[0x277D82BD8](v18);
            MEMORY[0x277D82BD8](v21);
          }

          MEMORY[0x277D82BD8](v21);
        }

        else
        {
        }
      }
    }

    v9 = sub_268DC7F68();
    v13 = *v9;
    MEMORY[0x277D82BE0](*v9);
    sub_268F9B274();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v13);

    sub_268D34954();
    v14 = sub_268F9B734();
    a4();
    sub_268DADA74(v14, 0);
  }

  else
  {
    v10 = sub_268DC7F68();
    v11 = *v10;
    MEMORY[0x277D82BE0](*v10);
    sub_268F9B274();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04();

    MEMORY[0x277D82BD8](v11);

    sub_268D34954();
    v12 = sub_268F9B734();
    a4();
    sub_268DADA74(v12, 0);
  }
}

unint64_t sub_268DAD9F4()
{
  v2 = qword_2802DC888;
  if (!qword_2802DC888)
  {
    type metadata accessor for INSetNumericSettingIntentResponseCode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC888);
    return WitnessTable;
  }

  return v2;
}

void sub_268DADA74(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_268DADAB4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_268DADAF0(v3);
}

uint64_t sub_268DADB90()
{
  v2 = sub_268F99B14();
  v0 = *(v2 + qword_2802DC880);

  return v2;
}

uint64_t sub_268DADC14()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t sub_268DADCB4(uint64_t a1)
{
  v3 = 0;

  v3 = a1;

  sub_268D287E8(&v3);
  return a1;
}

uint64_t sub_268DADD14()
{
  v0 = sub_268DC7FC8();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v2);
  return 1;
}

uint64_t sub_268DADDE4(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v27 = a2;
  v15 = a3;
  v9 = "GuardedFlow executing | executing flow with guards";
  v7[1] = &dword_268CBE000;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v31 = 0;
  v16 = 0;
  v26 = sub_268F99904();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v7[0] = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = v7 - v7[0];
  v33 = MEMORY[0x28223BE20](v22);
  v34 = v3;
  v32 = v4;
  v11 = *sub_268DC7FC8();
  MEMORY[0x277D82BE0](v11);
  v8 = sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v10 = sub_268F9B734();
  sub_268F9AC04();

  MEMORY[0x277D82BD8](v11);
  v13 = sub_268F99574();
  v12 = sub_268F9B734();
  sub_268F99554();
  v5 = v12;
  sub_268CD0F7C();
  v14 = v5;
  v28 = sub_268F99434();

  v31 = v28;

  v30[1] = v15;
  v18 = v30;
  v30[0] = v28;
  v17 = sub_268F99524();
  sub_268F99544();
  v19 = sub_268F99644();

  v21 = &v29;
  v29 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC8A0, qword_268F9F9B8);
  sub_268DAE0A0();
  sub_268F998E4();

  v22(v25);
  (*(v23 + 8))(v25, v26);
}

unint64_t sub_268DAE0A0()
{
  v2 = qword_280FE66C8;
  if (!qword_280FE66C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC8A0, qword_268F9F9B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE66C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DAE148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *(MEMORY[0x277D5B890] + 4);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268DAE20C;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_268DAE20C(unsigned int a1)
{
  v5 = *v1;
  v2 = *(*v1 + 24);
  *(v5 + 16) = *v1;

  v3 = *(*(v5 + 16) + 8);

  return v3(a1);
}

uint64_t sub_268DAE358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *(MEMORY[0x277D5B888] + 4);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268CD7B50;

  return MEMORY[0x2821BA640](a1, a2, a3);
}

uint64_t sub_268DAE460()
{
  type metadata accessor for SetWifiHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F0800 = result;
  return result;
}

uint64_t *sub_268DAE4C8()
{
  if (qword_2802DAFD0 != -1)
  {
    swift_once();
  }

  return &qword_2802F0800;
}

uint64_t sub_268DAE528()
{
  v1 = *sub_268DAE4C8();

  return v1;
}

uint64_t sub_268DAE558(void *a1, void (*a2)(void), uint64_t a3)
{
  sub_268F9B284();
  v3 = sub_268DC7AE8();
  v34 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v34);
  [a1 binaryValue];
  type metadata accessor for INBinarySettingValue();
  sub_268CD925C();
  if (sub_268F9B754())
  {
    sub_268F9B284();
    v4 = sub_268DC7AE8();
    v29 = *v4;
    MEMORY[0x277D82BE0](*v4);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v29);

    sub_268E948B8();
    v30 = sub_268DAB158();

    (a2)(v30);
    MEMORY[0x277D82BD8](v30);
  }

  else
  {
    v28 = sub_268CD7620();
    SettingIntent.deviceCategory.getter(v28, &protocol witness table for INSetBinarySettingIntent);
    if (v6)
    {
      v27 = 0;
    }

    else
    {
      type metadata accessor for INDeviceCategory();
      sub_268CD7818();
      v27 = sub_268F9AE04();
    }

    MEMORY[0x277D82BE0](a1);
    if (v27)
    {
      v26 = 1;
    }

    else
    {
      SettingIntent.deviceCategory.getter(v28, &protocol witness table for INSetBinarySettingIntent);
      if (v7)
      {
        v25 = 0;
      }

      else
      {
        type metadata accessor for INDeviceCategory();
        sub_268CD7818();
        v25 = sub_268F9AE04();
      }

      v26 = v25;
    }

    MEMORY[0x277D82BD8](a1);
    if (v26)
    {
      sub_268F9B284();
      v8 = sub_268DC7AE8();
      v23 = *v8;
      MEMORY[0x277D82BE0](*v8);
      sub_268F9B734();
      sub_268F9AC14();

      MEMORY[0x277D82BD8](v23);

      v24 = sub_268DA9A7C(7, 0);
      a2();
      MEMORY[0x277D82BD8](v24);
    }

    else
    {
      v21 = *(v33 + 16);

      v22 = sub_268D39148();

      MEMORY[0x277D82BE0](a1);
      if (v22)
      {
        [a1 binaryValue];
        sub_268D292B8();
        v20 = sub_268F9AE04() ^ 1;
      }

      else
      {
        LOBYTE(v20) = 0;
      }

      MEMORY[0x277D82BD8](a1);

      if (v20)
      {
        v17 = *(v33 + 16);

        v18 = sub_268D3CD44();

        v19 = v18 ^ 1;
      }

      else
      {
        v19 = 0;
      }

      if (v19)
      {
        sub_268F9B284();
        v9 = sub_268DC7AE8();
        v15 = *v9;
        MEMORY[0x277D82BE0](*v9);
        sub_268F9B734();
        sub_268F9AC14();

        MEMORY[0x277D82BD8](v15);

        sub_268E948B8();
        v16 = sub_268DAB158();

        (a2)(v16);
        MEMORY[0x277D82BD8](v16);
      }

      else
      {
        v10 = sub_268DB9EF4();
        v11 = *v10;
        v12 = v10[1];
        v13 = *(v10 + 16);
        v14 = *(v33 + 24);

        sub_268DAAB84(v22 & 1, a1, v11, v12, v13, v14 & 1, a2, a3, sub_268DAEE14, v33, 0, 1, 0, 0);
        return sub_268CD9A28(sub_268DAEE14);
      }
    }
  }
}

uint64_t sub_268DAEDA4(char a1, uint64_t a2)
{
  v4 = *(a2 + 16);

  sub_268D39184(a1 & 1);
}

uint64_t sub_268DAEE60()
{
  type metadata accessor for SetStandByHandler();
  sub_268D58CB4(v1);
  result = sub_268DAEEDC(1, v1);
  qword_2802F0808 = result;
  return result;
}

uint64_t *sub_268DAEF34()
{
  if (qword_2802DAFD8 != -1)
  {
    swift_once();
  }

  return &qword_2802F0808;
}

uint64_t sub_268DAEF94()
{
  v1 = *sub_268DAEF34();

  return v1;
}

uint64_t sub_268DAEFE4(char a1, uint64_t *a2)
{
  v9 = a1 & 1;
  v8 = a2;
  v7 = v2;
  *(v2 + 16) = a1;
  sub_268CDE730(a2, v6);
  sub_268CDF978(v6, (v2 + 24));
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v5;
}

uint64_t sub_268DAF060(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v31 = 0;
  v30 = 0;
  v34 = a1;
  v32 = a2;
  v33 = a3;
  sub_268F9B284();
  v3 = sub_268DC7AE8();
  v19 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v19);
  sub_268CD795C();
  v21 = sub_268CD42AC(8, 0);
  v30 = v21;
  v29 = a1;
  v4 = sub_268CD7620();
  v25 = SettingIntent.deviceCategory.getter(v4, &protocol witness table for INSetBinarySettingIntent);
  v26 = v5 & 1;
  v27 = 1;
  v28 = 0;
  if (v5)
  {
    v16 = 0;
  }

  else
  {
    type metadata accessor for INDeviceCategory();
    sub_268CD7818();
    v16 = sub_268F9AE04();
  }

  if (v16)
  {
    sub_268CDE730(v18 + 24, v22);
    v13 = v23;
    v12 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v14 = (*(v12 + 48))(v13);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  sub_268F9B284();
  v6 = sub_268DC7AE8();
  if (v15)
  {
    v10 = *v6;
    MEMORY[0x277D82BE0](*v6);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v10);
    sub_268E948B8();
    v11 = sub_268F9AE14();

    [v21 setErrorDetail_];
    MEMORY[0x277D82BD8](v11);
  }

  else
  {
    v8 = *v6;
    MEMORY[0x277D82BE0](*v6);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v8);
    sub_268E948B8();
    v9 = sub_268F9AE14();

    [v21 setErrorDetail_];
    MEMORY[0x277D82BD8](v9);
  }

  a2(v21);

  return MEMORY[0x277D82BD8](v21);
}

uint64_t sub_268DAF5B8()
{
  type metadata accessor for GetAXColorFiltersRedGreenHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8028 = result;
  return result;
}

uint64_t *sub_268DAF620()
{
  if (qword_280FE2E90 != -1)
  {
    swift_once();
  }

  return &qword_280FE8028;
}

uint64_t sub_268DAF680()
{
  v1 = *sub_268DAF620();

  return v1;
}

uint64_t sub_268DAF6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v23 = a2;
  v24 = a3;
  v22 = v3;
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v8 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v8);
  v5 = sub_268DB9F54();
  v9 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v15 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v16 = *(v3 + 24);
  MEMORY[0x277D82BE0](a1);

  v18 = a1;
  v19 = v3;
  v20 = a2;
  v21 = a3;
  sub_268DB944C(v9, v13, v14, v15, v16 & 1, sub_268DAFB34, v17, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  return MEMORY[0x277D82BD8](v15);
}

uint64_t sub_268DAF8CC(void *a1, uint64_t a2, void (*a3)(id))
{
  v15 = [a1 settingMetadata];
  v16 = *(a2 + 16);

  v17 = sub_268D3EBB4();

  if (v17)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  v11 = sub_268E41A08(v15, 0, 0, v12, 0, 0);
  MEMORY[0x277D82BD8](v15);
  sub_268F9B284();
  v3 = sub_268DC7AE8();
  v10 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v9 = v4;
  MEMORY[0x277D82BE0](v11);
  sub_268CDD0DC();
  sub_268CDD1A4();
  v7 = sub_268F9AE74();
  v8 = v5;
  v9[3] = MEMORY[0x277D837D0];
  v9[4] = sub_268CDD224();
  *v9 = v7;
  v9[1] = v8;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v10);

  a3(v11);

  return MEMORY[0x277D82BD8](v11);
}

uint64_t sub_268DAFBAC(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v155 = a5;
  v159 = a4;
  v141 = a3;
  v142 = a2;
  v143 = a1;
  v197 = 0;
  v196 = 0;
  v195 = 0;
  v194 = 0;
  v144 = 0;
  v198 = a4;
  v145 = *(a4 - 8);
  v157 = v145;
  v153 = *(v145 + 64);
  v146 = v153;
  v6 = MEMORY[0x28223BE20](a1);
  v158 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = v158;
  v197 = v6;
  v195 = v8;
  v196 = v9;
  v194 = v5;
  v178 = sub_268F9B284();
  v148 = v178;
  v179 = *sub_268DC7AE8();
  v149 = v179;
  v10 = v179;
  v151 = *(v157 + 16);
  v152 = (v157 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v151(v158, v150, v159);
  v154 = *(v157 + 80);
  v156 = (v154 + 32) & ~v154;
  v11 = swift_allocObject();
  v12 = v155;
  v13 = v156;
  v14 = v157;
  v15 = v158;
  v168 = v11;
  *(v11 + 16) = v159;
  *(v11 + 24) = v12;
  v160 = *(v14 + 32);
  v161 = (v14 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v160(v11 + v13, v15);
  v162 = 17;
  v167 = 7;
  v172 = swift_allocObject();
  v163 = v172;
  v164 = 32;
  *(v172 + 16) = 32;
  v16 = swift_allocObject();
  v17 = v164;
  v173 = v16;
  v165 = v16;
  *(v16 + 16) = 8;
  v166 = v17;
  v18 = swift_allocObject();
  v19 = v168;
  v169 = v18;
  *(v18 + 16) = sub_268DB0E6C;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v169;
  v176 = v20;
  v170 = v20;
  *(v20 + 16) = sub_268CD7608;
  *(v20 + 24) = v21;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
  v171 = v177;
  v174 = sub_268F9B734();
  v175 = v22;

  v23 = v172;
  v24 = v175;
  *v175 = sub_268CD7600;
  v24[1] = v23;

  v25 = v173;
  v26 = v175;
  v175[2] = sub_268CD7600;
  v26[3] = v25;

  v27 = v175;
  v28 = v176;
  v175[4] = sub_268CD7614;
  v27[5] = v28;
  sub_268CD0F7C();

  if (os_log_type_enabled(v179, v178))
  {
    v29 = v144;
    v134 = sub_268F9B3A4();
    v131 = v134;
    v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
    v135 = sub_268CD5448(0);
    v133 = v135;
    v137 = 1;
    v136 = sub_268CD5448(1);
    v184 = v134;
    v183 = v135;
    v182 = v136;
    v138 = &v184;
    sub_268CD549C(2, &v184);
    sub_268CD549C(v137, v138);
    v180 = sub_268CD7600;
    v181 = v163;
    sub_268CD54B0(&v180, v138, &v183, &v182);
    v139 = v29;
    v140 = v29;
    if (v29)
    {
      v129 = 0;

      __break(1u);
    }

    else
    {
      v180 = sub_268CD7600;
      v181 = v165;
      sub_268CD54B0(&v180, &v184, &v183, &v182);
      v127 = 0;
      v128 = 0;
      v180 = sub_268CD7614;
      v181 = v170;
      sub_268CD54B0(&v180, &v184, &v183, &v182);
      v125 = 0;
      v126 = 0;
      _os_log_impl(&dword_268CBE000, v149, v148, "%s handling intent", v131, 0xCu);
      sub_268CD54FC(v133);
      sub_268CD54FC(v136);
      sub_268F9B384();

      v130 = v125;
    }
  }

  else
  {
    v30 = v144;

    v130 = v30;
  }

  v118 = v130;

  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DBA40, &unk_268F9C870);
  v31 = sub_268F9B734();
  v120 = v32;
  *v32 = 1;
  *(v32 + 8) = 0;
  *(v32 + 16) = 2;
  *(v32 + 24) = 0;
  *(v32 + 32) = 3;
  *(v32 + 40) = 0;
  *(v32 + 48) = 5;
  *(v32 + 56) = 0;
  sub_268CD0F7C();
  v193 = v31;
  v192 = v143;
  v33 = sub_268D2E630();
  v190[1] = SettingIntent.deviceCategory.getter(v33, &protocol witness table for INGetSettingIntent);
  v191 = v34 & 1;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DBA50, &qword_268F9E2F0);
  v122 = sub_268CD7684();
  sub_268CD7780();
  v123 = &v193;
  v124 = sub_268F9AFC4();
  sub_268CD7930(v123);
  if ((v124 & 1) == 0)
  {
    v107 = sub_268F9B294();
    v90 = v107;
    v108 = *sub_268DC7AE8();
    v91 = v108;
    v47 = v108;
    v151(v147, v150, v159);
    v92 = (v154 + 32) & ~v154;
    v48 = swift_allocObject();
    v49 = v155;
    v50 = v92;
    v51 = v147;
    v52 = v160;
    v99 = v48;
    *(v48 + 16) = v159;
    *(v48 + 24) = v49;
    v52(v48 + v50, v51);
    v93 = 17;
    v98 = 7;
    v102 = swift_allocObject();
    v94 = v102;
    v95 = 32;
    *(v102 + 16) = 32;
    v53 = swift_allocObject();
    v54 = v95;
    v103 = v53;
    v96 = v53;
    *(v53 + 16) = 8;
    v97 = v54;
    v55 = swift_allocObject();
    v56 = v99;
    v100 = v55;
    *(v55 + 16) = sub_268DB0E6C;
    *(v55 + 24) = v56;
    v57 = swift_allocObject();
    v58 = v100;
    v106 = v57;
    v101 = v57;
    *(v57 + 16) = sub_268CD7608;
    *(v57 + 24) = v58;
    v104 = sub_268F9B734();
    v105 = v59;

    v60 = v102;
    v61 = v105;
    *v105 = sub_268CD7600;
    v61[1] = v60;

    v62 = v103;
    v63 = v105;
    v105[2] = sub_268CD7600;
    v63[3] = v62;

    v64 = v105;
    v65 = v106;
    v105[4] = sub_268CD7614;
    v64[5] = v65;
    sub_268CD0F7C();

    if (os_log_type_enabled(v108, v107))
    {
      v66 = v118;
      v83 = sub_268F9B3A4();
      v80 = v83;
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v84 = sub_268CD5448(0);
      v82 = v84;
      v86 = 1;
      v85 = sub_268CD5448(1);
      v190[0] = v83;
      v189 = v84;
      v188 = v85;
      v87 = v190;
      sub_268CD549C(2, v190);
      sub_268CD549C(v86, v87);
      v186 = sub_268CD7600;
      v187 = v94;
      sub_268CD54B0(&v186, v87, &v189, &v188);
      v88 = v66;
      v89 = v66;
      if (v66)
      {
        v78 = 0;

        __break(1u);
      }

      else
      {
        v186 = sub_268CD7600;
        v187 = v96;
        sub_268CD54B0(&v186, v190, &v189, &v188);
        v76 = 0;
        v77 = 0;
        v186 = sub_268CD7614;
        v187 = v101;
        sub_268CD54B0(&v186, v190, &v189, &v188);
        v74 = 0;
        v75 = 0;
        _os_log_impl(&dword_268CBE000, v91, v90, "%s host device unsupported.", v80, 0xCu);
        sub_268CD54FC(v82);
        sub_268CD54FC(v85);
        sub_268F9B384();

        v79 = v74;
      }
    }

    else
    {
      v67 = v118;

      v79 = v67;
    }

    v72 = v79;

    v70 = 0;
    sub_268CDD0DC();
    v71 = sub_268CD42AC(6, v70);
    v142();

    return v72;
  }

  v35 = v118;
  v116 = (*(v155 + 24))(v159);
  v112 = v36;
  v113 = v37;
  v114 = *sub_268DC7AE8();
  v109 = v114;
  v38 = v114;
  v111 = (*(v155 + 16))(v159);
  v39 = v143;

  v110 = &v69;
  MEMORY[0x28223BE20](&v69);
  v40 = v143;
  v41 = v142;
  v115 = &v69 - 8;
  *(&v69 - 6) = v42;
  *(&v69 - 5) = v43;
  *(&v69 - 4) = v44;
  *(&v69 - 3) = v40;
  *(&v69 - 2) = v41;
  *(&v69 - 1) = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC8A8, qword_268F9FBA0);
  sub_268DB944C(v116, v112, v113, v114, v111 & 1, sub_268DB2B7C, v115, v46, &v185);
  v117 = v35;
  if (!v35)
  {

    return v117;
  }

  __break(1u);
  return result;
}

uint64_t sub_268DB0DC0(uint64_t a1, uint64_t a2)
{
  v3[1] = a1;
  v6 = a2;
  v5 = *(a2 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v7 = v3 - v4;
  (*(v5 + 16))();
  return sub_268F9AE64();
}

uint64_t sub_268DB0EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v48 = a7;
  v30 = a1;
  v39 = a2;
  v42 = a3;
  v43 = a4;
  v38 = a5;
  v33 = a6;
  v46 = &unk_268F9FC10;
  v52 = 0;
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v53 = a5;
  v34 = *(a5 - 8);
  v35 = a5 - 8;
  v31 = v34;
  v32 = *(v34 + 64);
  v28 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v37 = &v27 - v28;
  v29 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DBA30, &unk_268F9C860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v30);
  v45 = &v27 - v29;
  v52 = v7;
  v51 = v8;
  v49 = v9;
  v50 = v10;
  v44 = 0;
  v11 = sub_268F9B0E4();
  (*(*(v11 - 8) + 56))(v45, 1);
  (*(v34 + 16))(v37, v30, v38);
  MEMORY[0x277D82BE0](v39);

  v36 = (*(v31 + 80) + 48) & ~*(v31 + 80);
  v40 = (v36 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v13 = v33;
  v14 = v34;
  v15 = v36;
  v16 = v37;
  v17 = v38;
  v47 = v12;
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v17;
  v12[5] = v13;
  (*(v14 + 32))(v12 + v15, v16);
  v18 = v41;
  v19 = v42;
  v20 = v43;
  v21 = v44;
  v22 = v45;
  v23 = v46;
  v24 = v47;
  *(v47 + v40) = v39;
  v25 = (v24 + v18);
  *v25 = v19;
  v25[1] = v20;
  result = sub_268CD3CE0(v21, v21, v22, v23, v24, MEMORY[0x277D84F78] + 8);
  *v48 = result;
  return result;
}

uint64_t sub_268DB11CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = v21;
  *(v8 + 96) = a8;
  *(v8 + 88) = a7;
  *(v8 + 80) = a6;
  *(v8 + 72) = a5;
  *(v8 + 64) = a4;
  *(v8 + 32) = v8;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 145) = 0;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0;
  *(v8 + 56) = 0;
  v13 = *(a8 - 8);
  *(v8 + 112) = v13;
  *(v8 + 120) = *(v13 + 64);
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 16) = a6;
  *(v8 + 24) = a7;
  v18 = (*(v21 + 32) + **(v21 + 32));
  v10 = *(*(v21 + 32) + 4);
  v11 = swift_task_alloc();
  *(v17 + 136) = v11;
  *v11 = *(v17 + 32);
  v11[1] = sub_268DB1404;

  return v18(a8);
}

uint64_t sub_268DB1404(__int16 a1)
{
  v6 = *v1;
  v3 = *(*v1 + 136);
  *(v6 + 32) = *v1;
  *(v6 + 147) = a1;

  v4 = *(v6 + 32);

  return MEMORY[0x2822009F8](sub_268DB1530, 0);
}

uint64_t sub_268DB1530()
{
  v83 = v0;
  v1 = *(v0 + 148);
  v2 = *(v0 + 147);
  *(v0 + 32) = v0;
  *(v0 + 145) = v2;
  *(v0 + 146) = v1 & 1;
  if (v1)
  {
    v26 = *(v72 + 147);
    v24 = *(v72 + 128);
    v21 = *(v72 + 120);
    v22 = *(v72 + 104);
    v25 = *(v72 + 96);
    v20 = *(v72 + 64);
    v19 = *(v72 + 112);
    *(v72 + 144) = v26;
    v40 = sub_268F9B294();
    v7 = sub_268DC7AE8();
    log = *v7;
    MEMORY[0x277D82BE0](*v7);
    (*(v19 + 16))(v24, v20, v25);
    v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v25;
    *(v27 + 24) = v22;
    (*(v19 + 32))(v27 + v23, v24);
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    sub_268D2AAC0();

    v32 = swift_allocObject();
    *(v32 + 16) = 32;
    v33 = swift_allocObject();
    *(v33 + 16) = 8;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_268DB0E6C;
    *(v28 + 24) = v27;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_268CD7608;
    *(v34 + 24) = v28;
    v35 = swift_allocObject();
    *(v35 + 16) = 64;
    v36 = swift_allocObject();
    *(v36 + 16) = 8;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_268CD9898;
    *(v30 + 24) = v29;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_268CD98A0;
    *(v31 + 24) = v30;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_268CD98AC;
    *(v37 + 24) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
    sub_268F9B734();
    v38 = v8;

    *v38 = sub_268CD7600;
    v38[1] = v32;

    v38[2] = sub_268CD7600;
    v38[3] = v33;

    v38[4] = sub_268CD7614;
    v38[5] = v34;

    v38[6] = sub_268CD7600;
    v38[7] = v35;

    v38[8] = sub_268CD7600;
    v38[9] = v36;

    v38[10] = sub_268CD98B8;
    v38[11] = v37;
    sub_268CD0F7C();

    if (os_log_type_enabled(log, v40))
    {
      v16 = sub_268F9B3A4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v17 = sub_268CD5448(1);
      v18 = sub_268CD5448(1);
      v73 = v16;
      v74 = v17;
      v75 = v18;
      sub_268CD549C(2, &v73);
      sub_268CD549C(2, &v73);
      v76 = sub_268CD7600;
      v77 = v32;
      sub_268CD54B0(&v76, &v73, &v74, &v75);
      v76 = sub_268CD7600;
      v77 = v33;
      sub_268CD54B0(&v76, &v73, &v74, &v75);
      v76 = sub_268CD7614;
      v77 = v34;
      sub_268CD54B0(&v76, &v73, &v74, &v75);
      v76 = sub_268CD7600;
      v77 = v35;
      sub_268CD54B0(&v76, &v73, &v74, &v75);
      v76 = sub_268CD7600;
      v77 = v36;
      sub_268CD54B0(&v76, &v73, &v74, &v75);
      v76 = sub_268CD98B8;
      v77 = v37;
      sub_268CD54B0(&v76, &v73, &v74, &v75);
      _os_log_impl(&dword_268CBE000, log, v40, "%s failed to get value %@", v16, 0x16u);
      sub_268CD54FC(v17);
      sub_268CD54FC(v18);
      sub_268F9B384();
    }

    else
    {
    }

    v9 = *(v72 + 88);
    v14 = *(v72 + 80);
    MEMORY[0x277D82BD8](log);

    v15 = sub_268E419BC(6);
    v14();
    MEMORY[0x277D82BD8](v15);
  }

  else
  {
    v56 = *(v72 + 147);
    v54 = *(v72 + 128);
    v51 = *(v72 + 120);
    v52 = *(v72 + 104);
    v55 = *(v72 + 96);
    v50 = *(v72 + 64);
    v49 = *(v72 + 112);
    *(v72 + 152) = v56 & 1;
    v71 = sub_268F9B294();
    v3 = sub_268DC7AE8();
    oslog = *v3;
    MEMORY[0x277D82BE0](*v3);
    (*(v49 + 16))(v54, v50, v55);
    v53 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = v55;
    *(v57 + 24) = v52;
    (*(v49 + 32))(v57 + v53, v54);
    v59 = swift_allocObject();
    *(v59 + 16) = v56 & 1;
    v63 = swift_allocObject();
    *(v63 + 16) = 32;
    v64 = swift_allocObject();
    *(v64 + 16) = 8;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_268DB0E6C;
    *(v58 + 24) = v57;
    v65 = swift_allocObject();
    *(v65 + 16) = sub_268CD7608;
    *(v65 + 24) = v58;
    v66 = swift_allocObject();
    *(v66 + 16) = 0;
    v67 = swift_allocObject();
    *(v67 + 16) = 4;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_268CD9ADC;
    *(v60 + 24) = v59;
    v61 = swift_allocObject();
    *(v61 + 16) = sub_268CD9AE8;
    *(v61 + 24) = v60;
    v62 = swift_allocObject();
    *(v62 + 16) = sub_268CD9AF4;
    *(v62 + 24) = v61;
    v68 = swift_allocObject();
    *(v68 + 16) = sub_268CD9B00;
    *(v68 + 24) = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
    sub_268F9B734();
    v69 = v4;

    *v69 = sub_268CD7600;
    v69[1] = v63;

    v69[2] = sub_268CD7600;
    v69[3] = v64;

    v69[4] = sub_268CD7614;
    v69[5] = v65;

    v69[6] = sub_268CD7600;
    v69[7] = v66;

    v69[8] = sub_268CD7600;
    v69[9] = v67;

    v69[10] = sub_268CD9B0C;
    v69[11] = v68;
    sub_268CD0F7C();

    if (os_log_type_enabled(oslog, v71))
    {
      buf = sub_268F9B3A4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v47 = sub_268CD5448(0);
      v48 = sub_268CD5448(1);
      v78 = buf;
      v79 = v47;
      v80 = v48;
      sub_268CD549C(2, &v78);
      sub_268CD549C(2, &v78);
      v81 = sub_268CD7600;
      v82 = v63;
      sub_268CD54B0(&v81, &v78, &v79, &v80);
      v81 = sub_268CD7600;
      v82 = v64;
      sub_268CD54B0(&v81, &v78, &v79, &v80);
      v81 = sub_268CD7614;
      v82 = v65;
      sub_268CD54B0(&v81, &v78, &v79, &v80);
      v81 = sub_268CD7600;
      v82 = v66;
      sub_268CD54B0(&v81, &v78, &v79, &v80);
      v81 = sub_268CD7600;
      v82 = v67;
      sub_268CD54B0(&v81, &v78, &v79, &v80);
      v81 = sub_268CD9B0C;
      v82 = v68;
      sub_268CD54B0(&v81, &v78, &v79, &v80);
      _os_log_impl(&dword_268CBE000, oslog, v71, "%s set value to %{BOOL}d", buf, 0x12u);
      sub_268CD54FC(v47);
      sub_268CD54FC(v48);
      sub_268F9B384();
    }

    else
    {
    }

    v44 = *(v72 + 72);
    MEMORY[0x277D82BD8](oslog);
    v45 = [v44 settingMetadata];
    if (v56)
    {
      v43 = 1;
    }

    else
    {
      v43 = 2;
    }

    v5 = *(v72 + 88);
    v41 = *(v72 + 80);
    v6 = sub_268D4AA1C();
    v42 = sub_268E41A08(v45, 0, v6, v43, 0, 0);
    MEMORY[0x277D82BD8](v45);
    *(v72 + 56) = v42;

    v41(v42);

    MEMORY[0x277D82BD8](v42);
  }

  v10 = *(v72 + 128);

  v11 = *(*(v72 + 32) + 8);
  v12 = *(v72 + 32);

  return v11();
}

uint64_t sub_268DB2B04(void (*a1)(void))
{
  a1();
  v2 = _swift_stdlib_bridgeErrorToNSError();
  MEMORY[0x277D82BE0](v2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_268DB2C40(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v8 = (*(a2 + 32) + **(a2 + 32));
  v3 = *(*(a2 + 32) + 4);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_268CD7DB8;

  return v8(a1, a2);
}

uint64_t sub_268DB2D74(uint64_t a1)
{
  v7 = v2;
  *(v2 + 16) = v2;
  v15 = v1[4];
  v8 = v1[5];
  v11 = (*(*(v15 - 8) + 80) + 48) & ~*(*(v15 - 8) + 80);
  v3 = (v11 + *(*(v15 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v12 = *(v1 + v3);
  v4 = (v1 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v4;
  v14 = v4[1];
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268CD7B50;

  return sub_268DB11CC(a1, v9, v10, v1 + v11, v12, v13, v14, v15);
}

uint64_t sub_268DB2F04()
{
  type metadata accessor for GetNightShiftHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE81A8 = result;
  return result;
}

uint64_t *sub_268DB2F6C()
{
  if (qword_280FE4C78 != -1)
  {
    swift_once();
  }

  return &qword_280FE81A8;
}

uint64_t sub_268DB2FCC()
{
  v1 = *sub_268DB2F6C();

  return v1;
}

uint64_t sub_268DB2FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v23 = a2;
  v24 = a3;
  v22 = v3;
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v8 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v8);
  v5 = sub_268DB9FB4();
  v9 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v15 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v16 = *(v3 + 24);
  MEMORY[0x277D82BE0](a1);

  v18 = a1;
  v19 = v3;
  v20 = a2;
  v21 = a3;
  sub_268DB944C(v9, v13, v14, v15, v16 & 1, sub_268DB3508, v17, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  return MEMORY[0x277D82BD8](v15);
}

uint64_t sub_268DB3218(void *a1, uint64_t a2, void (*a3)(id))
{
  sub_268CDD0DC();
  v15 = sub_268CD42AC(3, 0);
  sub_268CDD140();
  sub_268F9B734();
  v17 = v3;
  v19 = [a1 settingMetadata];
  v20 = *(a2 + 16);

  v21 = sub_268D363F0();

  if (v21)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  *v17 = sub_268E41954(v19, 0, 0, v13, 0, 0);
  sub_268CD0F7C();
  v8 = sub_268F9B004();

  [v15 setSettingResponseDatas_];
  MEMORY[0x277D82BD8](v8);
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v11 = v5;
  MEMORY[0x277D82BE0](v15);
  sub_268CDD1A4();
  v9 = sub_268F9AE74();
  v10 = v6;
  v11[3] = MEMORY[0x277D837D0];
  v11[4] = sub_268CDD224();
  *v11 = v9;
  v11[1] = v10;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v12);

  a3(v15);

  return MEMORY[0x277D82BD8](v15);
}

uint64_t sub_268DB3560()
{
  type metadata accessor for GetAXColorFiltersGrayscaleHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE7FF8 = result;
  return result;
}

uint64_t *sub_268DB35C8()
{
  if (qword_280FE2CB0 != -1)
  {
    swift_once();
  }

  return &qword_280FE7FF8;
}

uint64_t sub_268DB3628()
{
  v1 = *sub_268DB35C8();

  return v1;
}

uint64_t sub_268DB3658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v23 = a2;
  v24 = a3;
  v22 = v3;
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v8 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v8);
  v5 = sub_268DBA014();
  v9 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v15 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v16 = *(v3 + 24);
  MEMORY[0x277D82BE0](a1);

  v18 = a1;
  v19 = v3;
  v20 = a2;
  v21 = a3;
  sub_268DB944C(v9, v13, v14, v15, v16 & 1, sub_268DB3ADC, v17, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  return MEMORY[0x277D82BD8](v15);
}

uint64_t sub_268DB3874(void *a1, uint64_t a2, void (*a3)(id))
{
  v15 = [a1 settingMetadata];
  v16 = *(a2 + 16);

  v17 = sub_268D3EAE4();

  if (v17)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  v11 = sub_268E41A08(v15, 0, 0, v12, 0, 0);
  MEMORY[0x277D82BD8](v15);
  sub_268F9B284();
  v3 = sub_268DC7AE8();
  v10 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v9 = v4;
  MEMORY[0x277D82BE0](v11);
  sub_268CDD0DC();
  sub_268CDD1A4();
  v7 = sub_268F9AE74();
  v8 = v5;
  v9[3] = MEMORY[0x277D837D0];
  v9[4] = sub_268CDD224();
  *v9 = v7;
  v9[1] = v8;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v10);

  a3(v11);

  return MEMORY[0x277D82BD8](v11);
}

uint64_t sub_268DB3B34()
{
  type metadata accessor for GetAXAutoBrightnessHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE80E8 = result;
  return result;
}

uint64_t *sub_268DB3B9C()
{
  if (qword_280FE3BF8 != -1)
  {
    swift_once();
  }

  return &qword_280FE80E8;
}

uint64_t sub_268DB3BFC()
{
  v1 = *sub_268DB3B9C();

  return v1;
}

uint64_t sub_268DB3C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v23 = a2;
  v24 = a3;
  v22 = v3;
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v8 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v8);
  v5 = sub_268DBA074();
  v9 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v15 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v16 = *(v3 + 24);
  MEMORY[0x277D82BE0](a1);

  v18 = a1;
  v19 = v3;
  v20 = a2;
  v21 = a3;
  sub_268DB944C(v9, v13, v14, v15, v16 & 1, sub_268DB40B0, v17, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  return MEMORY[0x277D82BD8](v15);
}

uint64_t sub_268DB3E48(void *a1, uint64_t a2, void (*a3)(id))
{
  v15 = [a1 settingMetadata];
  v16 = *(a2 + 16);

  v17 = sub_268D41E74();

  if (v17)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  v11 = sub_268E41A08(v15, 0, 0, v12, 0, 0);
  MEMORY[0x277D82BD8](v15);
  sub_268F9B284();
  v3 = sub_268DC7AE8();
  v10 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v9 = v4;
  MEMORY[0x277D82BE0](v11);
  sub_268CDD0DC();
  sub_268CDD1A4();
  v7 = sub_268F9AE74();
  v8 = v5;
  v9[3] = MEMORY[0x277D837D0];
  v9[4] = sub_268CDD224();
  *v9 = v7;
  v9[1] = v8;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v10);

  a3(v11);

  return MEMORY[0x277D82BD8](v11);
}

uint64_t sub_268DB4108()
{
  v1 = sub_268DB41C0();
  sub_268DB4220();
  swift_beginAccess();
  v2 = *v1;
  type metadata accessor for INDeviceCategory();
  sub_268F9ADC4();
  swift_endAccess();
  return v3;
}

uint64_t *sub_268DB41C0()
{
  if (qword_2802DAFE0 != -1)
  {
    swift_once();
  }

  return &qword_2802DC8B0;
}

uint64_t sub_268DB4220()
{
  sub_268F9AEF4();
  v1 = sub_268F9AE14();
  v2 = MGGetSInt32Answer();
  MEMORY[0x277D82BD8](v1);

  return v2;
}

uint64_t sub_268DB4290()
{
  sub_268DB4360();
  type metadata accessor for MGProductType();
  sub_268DB44CC();
  if (sub_268F9B754())
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_268F9B754();
  }

  return v1 & 1;
}

uint64_t sub_268DB4378()
{
  sub_268DB4360();
  type metadata accessor for MGProductType();
  sub_268DB44CC();
  return sub_268F9B754() & 1;
}

uint64_t sub_268DB43E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC8C0, qword_268F9FD50);
  sub_268F9B734();
  *v0 = 4;
  *(v0 + 8) = 5;
  *(v0 + 16) = 7;
  *(v0 + 24) = 6;
  *(v0 + 32) = 3;
  *(v0 + 40) = 2;
  *(v0 + 48) = 1;
  *(v0 + 56) = 1;
  *(v0 + 64) = 9;
  *(v0 + 72) = 4;
  *(v0 + 80) = 6;
  *(v0 + 88) = 3;
  sub_268CD0F7C();
  type metadata accessor for INDeviceCategory();
  result = sub_268F9ADA4();
  qword_2802DC8B0 = result;
  return result;
}

unint64_t sub_268DB44CC()
{
  v2 = qword_2802DC8B8;
  if (!qword_2802DC8B8)
  {
    type metadata accessor for MGProductType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC8B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DB454C()
{
  v1 = sub_268DB41C0();
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  return v2;
}

uint64_t sub_268DB45A4(uint64_t a1)
{
  v3 = sub_268DB41C0();

  swift_beginAccess();
  v1 = *v3;
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_268DB462C()
{
  type metadata accessor for GetAXButtonShapesHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8130 = result;
  return result;
}

uint64_t *sub_268DB4694()
{
  if (qword_280FE4238 != -1)
  {
    swift_once();
  }

  return &qword_280FE8130;
}

uint64_t sub_268DB46F4()
{
  v1 = *sub_268DB4694();

  return v1;
}

uint64_t sub_268DB4724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v23 = a2;
  v24 = a3;
  v22 = v3;
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v8 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v8);
  v5 = sub_268DBA0D4();
  v9 = *v5;
  v13 = v5[1];
  v14 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v15 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v16 = *(v3 + 24);
  MEMORY[0x277D82BE0](a1);

  v18 = a1;
  v19 = v3;
  v20 = a2;
  v21 = a3;
  sub_268DB944C(v9, v13, v14, v15, v16 & 1, sub_268DB4BA8, v17, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  return MEMORY[0x277D82BD8](v15);
}

uint64_t sub_268DB4940(void *a1, uint64_t a2, void (*a3)(id))
{
  v15 = [a1 settingMetadata];
  v16 = *(a2 + 16);

  v17 = sub_268D3E5B4();

  if (v17)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  v11 = sub_268E41A08(v15, 0, 0, v12, 0, 0);
  MEMORY[0x277D82BD8](v15);
  sub_268F9B284();
  v3 = sub_268DC7AE8();
  v10 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v9 = v4;
  MEMORY[0x277D82BE0](v11);
  sub_268CDD0DC();
  sub_268CDD1A4();
  v7 = sub_268F9AE74();
  v8 = v5;
  v9[3] = MEMORY[0x277D837D0];
  v9[4] = sub_268CDD224();
  *v9 = v7;
  v9[1] = v8;
  sub_268CD0F7C();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v10);

  a3(v11);

  return MEMORY[0x277D82BD8](v11);
}

uint64_t sub_268DB4C00()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268DB4CDC(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](sub_268DB4D1C, 0);
}

uint64_t sub_268DB4D1C()
{
  v7 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v9 = sub_268F9AEF4();
  v10 = v1;
  v0[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v11 = sub_268F9B4F4();
  v0[7] = v11;
  v12 = (v7 + *v7);
  v2 = v7[1];
  v3 = swift_task_alloc();
  v8[8] = v3;
  *v3 = v8[2];
  v3[1] = sub_268DB4E74;
  v4 = v8[5];
  v5 = v8[4];

  return v12(v5, v9, v10, v11);
}

uint64_t sub_268DB4E74()
{
  v8 = *v1;
  v2 = *(*v1 + 64);
  v8[2] = *v1;
  v9 = v8 + 2;
  v8[9] = v0;

  if (v0)
  {
    v6 = *v9;

    return MEMORY[0x2822009F8](sub_268DB5020, 0);
  }

  else
  {
    v3 = v8[7];
    v7 = v8[6];

    v4 = *(*v9 + 8);

    return v4();
  }
}

uint64_t sub_268DB5020()
{
  v1 = v0[7];
  v7 = v0[6];
  v0[2] = v0;

  v2 = v0;
  v3 = *(v0[2] + 8);
  v4 = v0[2];
  v5 = v2[9];

  return v3();
}

uint64_t sub_268DB50CC()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t sub_268DB5190(uint64_t a1)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v5 = v1;
  *v1 = sub_268F9AEF4();
  v5[1] = v2;
  v7 = sub_268F9A9C4();
  v5[5] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5 + 2);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, a1);
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();
}

uint64_t sub_268DB530C(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[3] = a2;
  v3[4] = v2;
  v4 = v3[2];
  return MEMORY[0x2822009F8](sub_268DB5360, 0);
}

uint64_t sub_268DB5360()
{
  v13 = MEMORY[0x277D55BF0];
  v11 = v0[6];
  v0[2] = v0;
  v15 = sub_268F9AEF4();
  v16 = v1;
  v0[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v10 = v2;
  *v2 = sub_268F9AEF4();
  v10[1] = v3;
  v12 = sub_268F9A9C4();
  v10[5] = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10 + 2);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v11);
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v17 = sub_268F9B4F4();
  v0[9] = v17;
  v18 = (v13 + *v13);
  v5 = v13[1];
  v6 = swift_task_alloc();
  v14[10] = v6;
  *v6 = v14[2];
  v6[1] = sub_268DB5558;
  v7 = v14[7];
  v8 = v14[5];

  return v18(v8, v15, v16, v17);
}

uint64_t sub_268DB5558()
{
  v8 = *v1;
  v2 = *(*v1 + 80);
  v8[2] = *v1;
  v9 = v8 + 2;
  v8[11] = v0;

  if (v0)
  {
    v6 = *v9;

    return MEMORY[0x2822009F8](sub_268DB5710, 0);
  }

  else
  {
    v3 = v8[9];
    v7 = v8[8];

    v4 = *(*v9 + 8);

    return v4();
  }
}

uint64_t sub_268DB5710()
{
  v1 = v0[9];
  v7 = v0[8];
  v0[2] = v0;

  v2 = v0;
  v3 = *(v0[2] + 8);
  v4 = v0[2];
  v5 = v2[11];

  return v3();
}

uint64_t sub_268DB57C0(uint64_t a1)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v5 = v1;
  *v1 = sub_268F9AEF4();
  v5[1] = v2;
  v7 = sub_268F9A9C4();
  v5[5] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5 + 2);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, a1);
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();
}

uint64_t type metadata accessor for SetLabeledSettingIntentCATs()
{
  v1 = qword_2802DC8C8;
  if (!qword_2802DC8C8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_268DB5998()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t sub_268DB5A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_268DB5A64(a1, a2, a3);
}

uint64_t sub_268DB5A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v16 = a2;
  v13 = a3;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v17 = sub_268F9AB24();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v9 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v11 = &v8 - v9;
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v18);
  v12 = &v8 - v10;
  v22 = v4;
  v21 = v5;
  v20 = v6;
  v23 = v3;
  sub_268CDC358(v4, &v8 - v10);
  (*(v14 + 16))(v11, v16, v17);
  MEMORY[0x277D82BE0](v13);
  v19 = sub_268F9A8D4();

  v23 = v19;
  MEMORY[0x277D82BD8](v13);
  (*(v14 + 8))(v16, v17);
  sub_268CDC480(v18);

  return v19;
}

uint64_t sub_268DB5C64()
{
  type metadata accessor for OpenIntentHandler();
  result = sub_268DB5CC0();
  qword_2802DC8E0 = result;
  return result;
}

uint64_t sub_268DB5CC0()
{
  v21 = 0;
  v28[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC8E8, &unk_268F9FE60);
  v19 = sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
  v28[0] = sub_268F9ADA4();
  v27[2] = static BinarySettingIdentifier.allCases.getter();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC090, &qword_268F9D9A0);
  v20 = v22;
  sub_268DB7710();
  v23 = 0;
  v24 = sub_268F9B514();
  v27[0] = v24;
  v16 = v5;
  MEMORY[0x28223BE20](v5);
  v17 = v3;
  v4 = v28;
  sub_268D28B4C();
  sub_268F9AFA4();
  v18 = 0;
  sub_268CD7930(v27);
  v26[1] = static NumericSettingIdentifier.allCases.getter();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC910, "ā");
  v12 = v13;
  sub_268DB790C();
  v0 = sub_268F9B514();
  v14 = 0;
  v15 = v0;
  v26[0] = v0;
  v9 = v5;
  MEMORY[0x28223BE20](v5);
  v10 = v3;
  v4 = v28;
  sub_268DB7A80();
  sub_268F9AFA4();
  v11 = 0;
  sub_268CD7930(v26);
  v25[1] = sub_268EC6228();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC928, &unk_268F9FE70);
  v5[3] = v6;
  sub_268DB7B80();
  v1 = sub_268F9B514();
  v7 = 0;
  v8 = v1;
  v25[0] = v1;
  v5[1] = v5;
  MEMORY[0x28223BE20](v5);
  v5[2] = v3;
  v4 = v28;
  sub_268DB7CE8();
  sub_268F9AFA4();
  sub_268CD7930(v25);
  v5[0] = v28[0];

  sub_268CD7930(v28);
  return v5[0];
}

uint64_t *sub_268DB60A4()
{
  if (qword_2802DAFF0 != -1)
  {
    swift_once();
  }

  return &qword_2802DC8E0;
}

uint64_t sub_268DB6104()
{
  v1 = *sub_268DB60A4();

  return v1;
}

_BYTE *sub_268DB613C()
{
  type metadata accessor for OpenIntentHandler();
  memset(v1, 0, sizeof(v1));
  result = sub_268DB6198(1, v1);
  qword_2802F0820 = result;
  return result;
}

uint64_t *sub_268DB61E0()
{
  if (qword_2802DAFF8 != -1)
  {
    swift_once();
  }

  return &qword_2802F0820;
}

uint64_t sub_268DB6240()
{
  v0 = sub_268DB61E0();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_268DB62A8@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC19SiriSettingsIntents17OpenIntentHandler_deviceState);
  swift_beginAccess();
  sub_268D35D60(v3, a1);
  return swift_endAccess();
}

uint64_t *sub_268DB630C(uint64_t *a1)
{
  v5[5] = 0;
  v5[6] = a1;
  sub_268D35D60(a1, v5);
  v3 = (v1 + OBJC_IVAR____TtC19SiriSettingsIntents17OpenIntentHandler_deviceState);
  swift_beginAccess();
  sub_268DB7D70(v5, v3);
  swift_endAccess();
  return sub_268D28414(a1);
}

_BYTE *sub_268DB643C(char a1, uint64_t *a2)
{
  v11 = 0;
  v10 = a1 & 1;
  v9[5] = a2;
  v2 = OBJC_IVAR____TtC19SiriSettingsIntents17OpenIntentHandler_deviceState;
  *OBJC_IVAR____TtC19SiriSettingsIntents17OpenIntentHandler_deviceState = 0;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = 0;
  v11[OBJC_IVAR____TtC19SiriSettingsIntents17OpenIntentHandler_enableTelemetryForSignpost] = a1;
  v4 = v11;
  sub_268D35D60(a2, v9);
  v5 = &v4[OBJC_IVAR____TtC19SiriSettingsIntents17OpenIntentHandler_deviceState];
  swift_beginAccess();
  sub_268DB7D70(v9, v5);
  swift_endAccess();
  v8.receiver = v11;
  v8.super_class = type metadata accessor for OpenIntentHandler();
  v7 = objc_msgSendSuper2(&v8, sel_init);
  MEMORY[0x277D82BE0](v7);
  v11 = v7;
  sub_268D28414(a2);
  MEMORY[0x277D82BD8](v11);
  return v7;
}

uint64_t sub_268DB6584(void *a1, void (*a2)(void), uint64_t a3)
{
  v73 = 0;
  v66 = 0;
  v67 = 0;
  v80 = a1;
  v78 = a2;
  v79 = a3;
  v77 = v3;
  sub_268F9B284();
  v4 = sub_268DC7AE8();
  v58 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v58);
  sub_268DB62A8(v74);
  if (v75)
  {
    sub_268CDF978(v74, __dst);
  }

  else
  {
    sub_268F99C44();
    if (v75)
    {
      sub_268D28414(v74);
    }
  }

  v55 = sub_268F80E80(a1, __dst);
  __swift_destroy_boxed_opaque_existential_0(__dst);
  if (v55)
  {
    sub_268F9B284();
    v13 = sub_268DC7AE8();
    v15 = *v13;
    MEMORY[0x277D82BE0](*v13);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v15);
    sub_268DB7E34();
    v73 = sub_268CD42AC(2, 0);
    MEMORY[0x277D82BE0](v73);
    [v73 _setRequiresAuthentication_];
    MEMORY[0x277D82BD8](v73);

    (a2)(v73);

    return MEMORY[0x277D82BD8](v73);
  }

  else
  {
    v54 = [a1 settingMetadata];
    if (v54)
    {
      v49 = [v54 settingId];
      v50 = sub_268F9AE24();
      v51 = v5;
      MEMORY[0x277D82BD8](v54);
      MEMORY[0x277D82BD8](v49);
      v52 = v50;
      v53 = v51;
    }

    else
    {
      v52 = 0;
      v53 = 0;
    }

    if (v53)
    {
      v66 = v52;
      v67 = v53;
      v47 = *sub_268DB60A4();

      v64[0] = v52;
      v64[1] = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
      sub_268F9ADC4();
      sub_268CD9D30(v64);
      v48 = v65;
      if (v65 == 1)
      {

        v39 = sub_268F9B294();
        v9 = sub_268DC7AE8();
        oslog = *v9;
        MEMORY[0x277D82BE0](*v9);
        MEMORY[0x277D82BE0](a1);
        v32 = swift_allocObject();
        *(v32 + 16) = a1;
        v34 = swift_allocObject();
        *(v34 + 16) = 32;
        v35 = swift_allocObject();
        *(v35 + 16) = 8;
        v33 = swift_allocObject();
        *(v33 + 16) = sub_268DB7E98;
        *(v33 + 24) = v32;
        v36 = swift_allocObject();
        *(v36 + 16) = sub_268CD7608;
        *(v36 + 24) = v33;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
        sub_268F9B734();
        v37 = v10;

        *v37 = sub_268CD7600;
        v37[1] = v34;

        v37[2] = sub_268CD7600;
        v37[3] = v35;

        v37[4] = sub_268CD7614;
        v37[5] = v36;
        sub_268CD0F7C();

        if (os_log_type_enabled(oslog, v39))
        {
          buf = sub_268F9B3A4();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
          v30 = sub_268CD5448(0);
          v31 = sub_268CD5448(1);
          v63 = buf;
          v62 = v30;
          v61 = v31;
          sub_268CD549C(2, &v63);
          sub_268CD549C(1, &v63);
          v59 = sub_268CD7600;
          v60 = v34;
          sub_268CD54B0(&v59, &v63, &v62, &v61);
          v59 = sub_268CD7600;
          v60 = v35;
          sub_268CD54B0(&v59, &v63, &v62, &v61);
          v59 = sub_268CD7614;
          v60 = v36;
          sub_268CD54B0(&v59, &v63, &v62, &v61);
          _os_log_impl(&dword_268CBE000, oslog, v39, "Unable to find a punchout url for the setting intent %s", buf, 0xCu);
          sub_268CD54FC(v30);
          sub_268CD54FC(v31);
          sub_268F9B384();
        }

        else
        {
        }

        MEMORY[0x277D82BD8](oslog);

        v28 = sub_268DB7EA0();
        a2();
        MEMORY[0x277D82BD8](v28);
      }

      else
      {

        sub_268DB7E34();
        v46 = sub_268CD42AC(3, 0);

        if (v48)
        {
          v44 = sub_268F9AE14();

          v45 = v44;
        }

        else
        {
          v45 = 0;
        }

        [v46 setPunchoutUrl_];
        MEMORY[0x277D82BD8](v45);
        sub_268F9B284();
        v6 = sub_268DC7AE8();
        v43 = *v6;
        MEMORY[0x277D82BE0](*v6);
        sub_268F9B734();
        v42 = v7;
        MEMORY[0x277D82BE0](v46);
        sub_268DB9134();
        v40 = sub_268F9AE74();
        v41 = v8;
        v42[3] = MEMORY[0x277D837D0];
        v42[4] = sub_268CDD224();
        *v42 = v40;
        v42[1] = v41;
        sub_268CD0F7C();
        sub_268F9AC14();

        MEMORY[0x277D82BD8](v43);

        (a2)(v46);

        MEMORY[0x277D82BD8](v46);
      }
    }

    else
    {
      v27 = sub_268F9B294();
      v11 = sub_268DC7AE8();
      log = *v11;
      MEMORY[0x277D82BE0](*v11);
      MEMORY[0x277D82BE0](a1);
      v20 = swift_allocObject();
      *(v20 + 16) = a1;
      v22 = swift_allocObject();
      *(v22 + 16) = 32;
      v23 = swift_allocObject();
      *(v23 + 16) = 8;
      v21 = swift_allocObject();
      *(v21 + 16) = sub_268DB7E98;
      *(v21 + 24) = v20;
      v24 = swift_allocObject();
      *(v24 + 16) = sub_268CD7608;
      *(v24 + 24) = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
      sub_268F9B734();
      v25 = v12;

      *v25 = sub_268CD7600;
      v25[1] = v22;

      v25[2] = sub_268CD7600;
      v25[3] = v23;

      v25[4] = sub_268CD7614;
      v25[5] = v24;
      sub_268CD0F7C();

      if (os_log_type_enabled(log, v27))
      {
        v17 = sub_268F9B3A4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
        v18 = sub_268CD5448(0);
        v19 = sub_268CD5448(1);
        v72 = v17;
        v71 = v18;
        v70 = v19;
        sub_268CD549C(2, &v72);
        sub_268CD549C(1, &v72);
        v68 = sub_268CD7600;
        v69 = v22;
        sub_268CD54B0(&v68, &v72, &v71, &v70);
        v68 = sub_268CD7600;
        v69 = v23;
        sub_268CD54B0(&v68, &v72, &v71, &v70);
        v68 = sub_268CD7614;
        v69 = v24;
        sub_268CD54B0(&v68, &v72, &v71, &v70);
        _os_log_impl(&dword_268CBE000, log, v27, "Unable to find a setting id in the intent %s", v17, 0xCu);
        sub_268CD54FC(v18);
        sub_268CD54FC(v19);
        sub_268F9B384();
      }

      else
      {
      }

      MEMORY[0x277D82BD8](log);

      sub_268DB7E34();
      v16 = sub_268CD42AC(7, 0);
      a2();
      MEMORY[0x277D82BD8](v16);
    }
  }
}

uint64_t sub_268DB7520(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  sub_268DA96FC();
  sub_268DB927C();
  return sub_268F9AE74();
}

BOOL sub_268DB7688(char *a1)
{
  v6 = 0;
  v6 = *a1;
  v5 = v6;
  v4[0] = sub_268E7B768();
  v4[1] = v1;
  v3 = v1 != 0;
  sub_268CD9D30(v4);
  return v3;
}

unint64_t sub_268DB7710()
{
  v2 = qword_2802DC900;
  if (!qword_2802DC900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC090, &qword_268F9D9A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC900);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DB7798(char *a1)
{
  v2 = *a1;
  sub_268E7C600();
  sub_268E7B768();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC9E8, &qword_268F9FED8);
  return sub_268F9ADD4();
}

BOOL sub_268DB7884(char *a1)
{
  v6 = 0;
  v6 = *a1;
  v5 = v6;
  v4[0] = sub_268EB0030();
  v4[1] = v1;
  v3 = v1 != 0;
  sub_268CD9D30(v4);
  return v3;
}

unint64_t sub_268DB790C()
{
  v2 = qword_2802DC918;
  if (!qword_2802DC918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC910, "ā");
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC918);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DB7994(char *a1)
{
  v2 = *a1;
  sub_268EB01F8();
  sub_268EB0030();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC9E8, &qword_268F9FED8);
  return sub_268F9ADD4();
}

unint64_t sub_268DB7A80()
{
  v2 = qword_2802DC920;
  if (!qword_2802DC920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC910, "ā");
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC920);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_268DB7B08(char *a1)
{
  v5 = 0;
  v5 = *a1;
  v4[0] = sub_268EC6290();
  v4[1] = v1;
  v3 = v1 != 0;
  sub_268CD9D30(v4);
  return v3;
}

unint64_t sub_268DB7B80()
{
  v2 = qword_2802DC930;
  if (!qword_2802DC930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC928, &unk_268F9FE70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC930);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DB7C08(char *a1)
{
  v2 = *a1;
  sub_268EC63D4();
  sub_268EC6290();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC9E8, &qword_268F9FED8);
  return sub_268F9ADD4();
}

unint64_t sub_268DB7CE8()
{
  v2 = qword_2802DC938;
  if (!qword_2802DC938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC928, &unk_268F9FE70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC938);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268DB7D70(const void *a1, uint64_t *a2)
{
  if (a2[3])
  {
    __swift_destroy_boxed_opaque_existential_0(a2);
    memcpy(a2, a1, 0x28uLL);
  }

  else
  {
    memcpy(a2, a1, 0x28uLL);
  }

  return a2;
}

unint64_t sub_268DB7E34()
{
  v2 = qword_2802DC958;
  if (!qword_2802DC958)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC958);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_268DB7EA0()
{
  sub_268DB7E34();
  v2 = sub_268CD42AC(8, 0);
  sub_268E948B8();
  v1 = sub_268F9AE14();

  [v2 setErrorDetail_];
  MEMORY[0x277D82BD8](v1);
  return v2;
}

id OpenIntentHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OpenIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_268DB80C4(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v5 = (a3 + 1);
  }

  else
  {
    v7 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v5 = (v7 | (a3 >> 6)) + 33217;
    }

    else
    {
      v6 = (v7 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v5 = (v6 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v5 = ((a3 >> 18) | ((v6 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v4 = 4 - (__clz(v5) >> 3);
  v9 = (v5 - 0x101010101010101) & ((1 << ((8 * v4) & 0x3F)) - 1);
  sub_268F9B1D4();
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  sub_268F9B5A4();
  __break(1u);
LABEL_12:
  result = sub_268F9B584();
  __break(1u);
  return result;
}

uint64_t sub_268DB83F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        MEMORY[0x28223BE20](v17);
        v15 = sub_268DB9234;
        v16 = &v37;
        sub_268DB80C4(sub_268DB9250, v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      v13[0] = 2;
      sub_268F9B584();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    v13[0] = 2;
    sub_268F9B584();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        v13[0] = 2;
        sub_268F9B584();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            v13[0] = 2;
            sub_268F9B584();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    v13[0] = 2;
                    sub_268F9B584();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  v13[0] = 2;
                  sub_268F9B584();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                v13[0] = 2;
                sub_268F9B584();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              v13[0] = 2;
              sub_268F9B584();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            v13[0] = 2;
            sub_268F9B584();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          v13[0] = 2;
          sub_268F9B584();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        v13[0] = 2;
        sub_268F9B584();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      v13[0] = 2;
      sub_268F9B584();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    v13[0] = 2;
    sub_268F9B5A4();
    __break(1u);
  }

  result = sub_268F9B584();
  __break(1u);
  return result;
}

uint64_t sub_268DB8C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    sub_268F9B584();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        sub_268F9B584();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            sub_268F9B584();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                sub_268F9B584();
                __break(1u);
              }

              sub_268F9B584();
              __break(1u);
            }

            sub_268F9B584();
            __break(1u);
          }

          sub_268F9B584();
          __break(1u);
        }

        sub_268F9B584();
        __break(1u);
      }

      sub_268F9B584();
      __break(1u);
    }

    sub_268F9B584();
    __break(1u);
  }

  result = sub_268F9B584();
  __break(1u);
  return result;
}

unint64_t sub_268DB9134()
{
  v2 = qword_2802DC970;
  if (!qword_2802DC970)
  {
    sub_268DB7E34();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC970);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DB927C()
{
  v2 = qword_2802DC9E0;
  if (!qword_2802DC9E0)
  {
    sub_268DA96FC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC9E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DB92FC()
{
  type metadata accessor for SetIHandler();
  v0 = sub_268CDC590();
  result = sub_268D5DE80(v0);
  qword_2802F0828 = result;
  return result;
}

uint64_t *sub_268DB935C()
{
  if (qword_2802DB000 != -1)
  {
    swift_once();
  }

  return &qword_2802F0828;
}

uint64_t sub_268DB93BC()
{
  v1 = *sub_268DB935C();

  return v1;
}

uint64_t *sub_268DB93EC()
{
  if (qword_2802DB040 != -1)
  {
    swift_once();
  }

  return &qword_2802F08C0;
}

uint64_t sub_268DB944C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v29 = a9;
  v33 = a1;
  v37 = a2;
  v34 = a3;
  v43 = a4;
  v44 = a5;
  v35 = a6;
  v36 = a7;
  v31 = "";
  v32 = "enableTelemetry=YES";
  v55 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v51 = 0;
  v50 = 0;
  v48 = 0;
  v49 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v56 = a8;
  v38 = sub_268F9AC54();
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v43);
  v42 = v19 - v41;
  v55 = v19 - v41;
  v52 = v10;
  v53 = v11;
  v54 = v12;
  v51 = v9;
  v50 = v13 & 1;
  v48 = v14;
  v49 = v15;
  MEMORY[0x277D82BE0](v9);
  sub_268F9AC44();
  if (v44)
  {
    v26 = v32;
    v27 = 19;
  }

  else
  {
    v26 = v31;
    v27 = 0;
  }

  v28 = 2;
  v20 = 2;
  v19[2] = v27;
  v21 = v26;
  v45 = v26;
  v46 = v27;
  v47 = 2;
  v22 = sub_268F9B2F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v23 = sub_268F9B734();
  sub_268F9AC24();

  v17 = v30;
  v35(v16);
  v24 = v17;
  v25 = v17;
  if (v17)
  {
    v19[1] = v25;
  }

  sub_268DBA134();
  return (*(v39 + 8))(v42, v38);
}

uint64_t *sub_268DB97B4()
{
  if (qword_280FE5AD0 != -1)
  {
    swift_once();
  }

  return &qword_280FE82A0;
}

uint64_t *sub_268DB9814()
{
  if (qword_2802DB298 != -1)
  {
    swift_once();
  }

  return &qword_2802F0F98;
}

uint64_t *sub_268DB9874()
{
  if (qword_2802DB208 != -1)
  {
    swift_once();
  }

  return &qword_2802F0DE8;
}

uint64_t *sub_268DB98D4()
{
  if (qword_280FE5B00 != -1)
  {
    swift_once();
  }

  return &qword_280FE8300;
}

uint64_t sub_268DB9934(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v21 = a1;
  v23 = a2;
  v22 = a3;
  v29 = a4;
  v30 = a5;
  v19 = "";
  v20 = "enableTelemetry=YES";
  v39 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v24 = sub_268F9AC54();
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v29);
  v28 = v11 - v27;
  v39 = v11 - v27;
  v36 = v6;
  v37 = v7;
  v38 = v8;
  v35 = v5;
  v34 = v9 & 1;
  MEMORY[0x277D82BE0](v5);
  sub_268F9AC44();
  if (v30)
  {
    v16 = v20;
    v17 = 19;
  }

  else
  {
    v16 = v19;
    v17 = 0;
  }

  v18 = 2;
  v12 = 2;
  v11[1] = v17;
  v13 = v16;
  v31 = v16;
  v32 = v17;
  v33 = 2;
  v14 = sub_268F9B2F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v15 = sub_268F9B734();
  sub_268F9AC24();

  return (*(v25 + 8))(v28, v24);
}

uint64_t sub_268DB9B78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v10 = a4;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v17 = sub_268F9AC54();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v8 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v8 - v8;
  v19 = MEMORY[0x28223BE20](v11);
  v20 = v4;
  v21 = v5;
  v18 = v6;
  v9 = sub_268F9B2E4();
  MEMORY[0x277D82BE0](v10);
  sub_268F9AC44();
  sub_268F9AC34();
  return (*(v14 + 8))(v16, v17);
}

uint64_t *sub_268DB9CB4()
{
  if (qword_2802DB018 != -1)
  {
    swift_once();
  }

  return &qword_2802F0848;
}

uint64_t *sub_268DB9D14()
{
  if (qword_2802DB2C8 != -1)
  {
    swift_once();
  }

  return &qword_2802F1028;
}

uint64_t *sub_268DB9D74()
{
  if (qword_2802DB0E0 != -1)
  {
    swift_once();
  }

  return &qword_2802F0AA0;
}

uint64_t *sub_268DB9DD4()
{
  if (qword_2802DB2F0 != -1)
  {
    swift_once();
  }

  return &qword_2802F10A0;
}

uint64_t *sub_268DB9E34()
{
  if (qword_2802DB250 != -1)
  {
    swift_once();
  }

  return &qword_2802F0EC0;
}

uint64_t *sub_268DB9E94()
{
  if (qword_2802DB038 != -1)
  {
    swift_once();
  }

  return &qword_2802F08A8;
}

uint64_t *sub_268DB9EF4()
{
  if (qword_2802DB2C0 != -1)
  {
    swift_once();
  }

  return &qword_2802F1010;
}

uint64_t *sub_268DB9F54()
{
  if (qword_2802DB070 != -1)
  {
    swift_once();
  }

  return &qword_2802F0950;
}

uint64_t *sub_268DB9FB4()
{
  if (qword_2802DB0F8 != -1)
  {
    swift_once();
  }

  return &qword_2802F0AE8;
}

uint64_t *sub_268DBA014()
{
  if (qword_2802DB068 != -1)
  {
    swift_once();
  }

  return &qword_2802F0938;
}

uint64_t *sub_268DBA074()
{
  if (qword_2802DB048 != -1)
  {
    swift_once();
  }

  return &qword_2802F08D8;
}

uint64_t *sub_268DBA0D4()
{
  if (qword_2802DB058 != -1)
  {
    swift_once();
  }

  return &qword_2802F0908;
}

void sub_268DBA1B0()
{
  sub_268DBA1F8();
  qword_2802F0830 = v0;
  qword_2802F0838 = v1;
  byte_2802F0840 = v2;
}

uint64_t *sub_268DBA234()
{
  if (qword_2802DB008 != -1)
  {
    swift_once();
  }

  return &qword_2802F0830;
}

uint64_t sub_268DBA294()
{
  v0 = sub_268DBA234();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBA2BC()
{
  sub_268DBA1F8();
  qword_280FE8300 = v0;
  qword_280FE8308 = v1;
  byte_280FE8310 = v2;
}

uint64_t sub_268DBA304()
{
  v0 = sub_268DB98D4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBA32C()
{
  sub_268DBA1F8();
  qword_2802F0848 = v0;
  qword_2802F0850 = v1;
  byte_2802F0858 = v2;
}

uint64_t sub_268DBA374()
{
  v0 = sub_268DB9CB4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBA39C()
{
  sub_268DBA1F8();
  qword_2802F0860 = v0;
  qword_2802F0868 = v1;
  byte_2802F0870 = v2;
}

uint64_t *sub_268DBA3E4()
{
  if (qword_2802DB020 != -1)
  {
    swift_once();
  }

  return &qword_2802F0860;
}

uint64_t sub_268DBA444()
{
  v0 = sub_268DBA3E4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBA46C()
{
  sub_268DBA1F8();
  qword_2802F0878 = v0;
  qword_2802F0880 = v1;
  byte_2802F0888 = v2;
}

uint64_t *sub_268DBA4B4()
{
  if (qword_2802DB028 != -1)
  {
    swift_once();
  }

  return &qword_2802F0878;
}

uint64_t sub_268DBA514()
{
  v0 = sub_268DBA4B4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBA53C()
{
  sub_268DBA1F8();
  qword_2802F0890 = v0;
  qword_2802F0898 = v1;
  byte_2802F08A0 = v2;
}

uint64_t *sub_268DBA584()
{
  if (qword_2802DB030 != -1)
  {
    swift_once();
  }

  return &qword_2802F0890;
}

uint64_t sub_268DBA5E4()
{
  v0 = sub_268DBA584();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBA60C()
{
  sub_268DBA1F8();
  qword_2802F08A8 = v0;
  qword_2802F08B0 = v1;
  byte_2802F08B8 = v2;
}

uint64_t sub_268DBA654()
{
  v0 = sub_268DB9E94();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBA67C()
{
  sub_268DBA1F8();
  qword_2802F08C0 = v0;
  qword_2802F08C8 = v1;
  byte_2802F08D0 = v2;
}

uint64_t sub_268DBA6C4()
{
  v0 = sub_268DB93EC();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBA6EC()
{
  sub_268DBA1F8();
  qword_2802F08D8 = v0;
  qword_2802F08E0 = v1;
  byte_2802F08E8 = v2;
}

uint64_t sub_268DBA734()
{
  v0 = sub_268DBA074();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBA75C()
{
  sub_268DBA1F8();
  qword_2802F08F0 = v0;
  qword_2802F08F8 = v1;
  byte_2802F0900 = v2;
}

uint64_t *sub_268DBA7A4()
{
  if (qword_2802DB050 != -1)
  {
    swift_once();
  }

  return &qword_2802F08F0;
}

uint64_t sub_268DBA804()
{
  v0 = sub_268DBA7A4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBA82C()
{
  sub_268DBA1F8();
  qword_2802F0908 = v0;
  qword_2802F0910 = v1;
  byte_2802F0918 = v2;
}

uint64_t sub_268DBA874()
{
  v0 = sub_268DBA0D4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBA89C()
{
  sub_268DBA1F8();
  qword_2802F0920 = v0;
  qword_2802F0928 = v1;
  byte_2802F0930 = v2;
}

uint64_t *sub_268DBA8E4()
{
  if (qword_2802DB060 != -1)
  {
    swift_once();
  }

  return &qword_2802F0920;
}

uint64_t sub_268DBA944()
{
  v0 = sub_268DBA8E4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBA96C()
{
  sub_268DBA1F8();
  qword_2802F0938 = v0;
  qword_2802F0940 = v1;
  byte_2802F0948 = v2;
}

uint64_t sub_268DBA9B4()
{
  v0 = sub_268DBA014();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBA9DC()
{
  sub_268DBA1F8();
  qword_2802F0950 = v0;
  qword_2802F0958 = v1;
  byte_2802F0960 = v2;
}

uint64_t sub_268DBAA24()
{
  v0 = sub_268DB9F54();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBAA4C()
{
  sub_268DBA1F8();
  qword_2802F0968 = v0;
  qword_2802F0970 = v1;
  byte_2802F0978 = v2;
}

uint64_t *sub_268DBAA94()
{
  if (qword_2802DB078 != -1)
  {
    swift_once();
  }

  return &qword_2802F0968;
}

uint64_t sub_268DBAAF4()
{
  v0 = sub_268DBAA94();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBAB1C()
{
  sub_268DBA1F8();
  qword_2802F0980 = v0;
  qword_2802F0988 = v1;
  byte_2802F0990 = v2;
}

uint64_t *sub_268DBAB64()
{
  if (qword_2802DB080 != -1)
  {
    swift_once();
  }

  return &qword_2802F0980;
}

uint64_t sub_268DBABC4()
{
  v0 = sub_268DBAB64();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBABEC()
{
  sub_268DBA1F8();
  qword_2802F0998 = v0;
  qword_2802F09A0 = v1;
  byte_2802F09A8 = v2;
}

uint64_t *sub_268DBAC34()
{
  if (qword_2802DB088 != -1)
  {
    swift_once();
  }

  return &qword_2802F0998;
}

uint64_t sub_268DBAC94()
{
  v0 = sub_268DBAC34();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBACBC()
{
  sub_268DBA1F8();
  qword_2802F09B0 = v0;
  qword_2802F09B8 = v1;
  byte_2802F09C0 = v2;
}

uint64_t *sub_268DBAD04()
{
  if (qword_2802DB090 != -1)
  {
    swift_once();
  }

  return &qword_2802F09B0;
}

uint64_t sub_268DBAD64()
{
  v0 = sub_268DBAD04();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBAD8C()
{
  sub_268DBA1F8();
  qword_2802F09C8 = v0;
  qword_2802F09D0 = v1;
  byte_2802F09D8 = v2;
}

uint64_t *sub_268DBADD4()
{
  if (qword_2802DB098 != -1)
  {
    swift_once();
  }

  return &qword_2802F09C8;
}

uint64_t sub_268DBAE34()
{
  v0 = sub_268DBADD4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBAE5C()
{
  sub_268DBA1F8();
  qword_2802F09E0 = v0;
  qword_2802F09E8 = v1;
  byte_2802F09F0 = v2;
}

uint64_t *sub_268DBAEA4()
{
  if (qword_2802DB0A0 != -1)
  {
    swift_once();
  }

  return &qword_2802F09E0;
}

uint64_t sub_268DBAF04()
{
  v0 = sub_268DBAEA4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBAF2C()
{
  sub_268DBA1F8();
  qword_2802F09F8 = v0;
  qword_2802F0A00 = v1;
  byte_2802F0A08 = v2;
}

uint64_t *sub_268DBAF74()
{
  if (qword_2802DB0A8 != -1)
  {
    swift_once();
  }

  return &qword_2802F09F8;
}

uint64_t sub_268DBAFD4()
{
  v0 = sub_268DBAF74();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBAFFC()
{
  sub_268DBA1F8();
  qword_2802F0A10 = v0;
  qword_2802F0A18 = v1;
  byte_2802F0A20 = v2;
}

uint64_t *sub_268DBB044()
{
  if (qword_2802DB0B0 != -1)
  {
    swift_once();
  }

  return &qword_2802F0A10;
}

uint64_t sub_268DBB0A4()
{
  v0 = sub_268DBB044();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBB0CC()
{
  sub_268DBA1F8();
  qword_2802F0A28 = v0;
  qword_2802F0A30 = v1;
  byte_2802F0A38 = v2;
}

uint64_t *sub_268DBB114()
{
  if (qword_2802DB0B8 != -1)
  {
    swift_once();
  }

  return &qword_2802F0A28;
}

uint64_t sub_268DBB174()
{
  v0 = sub_268DBB114();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBB19C()
{
  sub_268DBA1F8();
  qword_2802F0A40 = v0;
  qword_2802F0A48 = v1;
  byte_2802F0A50 = v2;
}

uint64_t *sub_268DBB1E4()
{
  if (qword_2802DB0C0 != -1)
  {
    swift_once();
  }

  return &qword_2802F0A40;
}

uint64_t sub_268DBB244()
{
  v0 = sub_268DBB1E4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBB26C()
{
  sub_268DBA1F8();
  qword_2802F0A58 = v0;
  qword_2802F0A60 = v1;
  byte_2802F0A68 = v2;
}

uint64_t *sub_268DBB2B4()
{
  if (qword_2802DB0C8 != -1)
  {
    swift_once();
  }

  return &qword_2802F0A58;
}

uint64_t sub_268DBB314()
{
  v0 = sub_268DBB2B4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBB33C()
{
  sub_268DBA1F8();
  qword_2802F0A70 = v0;
  qword_2802F0A78 = v1;
  byte_2802F0A80 = v2;
}

uint64_t *sub_268DBB384()
{
  if (qword_2802DB0D0 != -1)
  {
    swift_once();
  }

  return &qword_2802F0A70;
}

uint64_t sub_268DBB3E4()
{
  v0 = sub_268DBB384();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBB40C()
{
  sub_268DBA1F8();
  qword_2802F0A88 = v0;
  qword_2802F0A90 = v1;
  byte_2802F0A98 = v2;
}

uint64_t *sub_268DBB454()
{
  if (qword_2802DB0D8 != -1)
  {
    swift_once();
  }

  return &qword_2802F0A88;
}

uint64_t sub_268DBB4B4()
{
  v0 = sub_268DBB454();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBB4DC()
{
  sub_268DBA1F8();
  qword_2802F0AA0 = v0;
  qword_2802F0AA8 = v1;
  byte_2802F0AB0 = v2;
}

uint64_t sub_268DBB524()
{
  v0 = sub_268DB9D74();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBB54C()
{
  sub_268DBA1F8();
  qword_2802F0AB8 = v0;
  qword_2802F0AC0 = v1;
  byte_2802F0AC8 = v2;
}

uint64_t *sub_268DBB594()
{
  if (qword_2802DB0E8 != -1)
  {
    swift_once();
  }

  return &qword_2802F0AB8;
}

uint64_t sub_268DBB5F4()
{
  v0 = sub_268DBB594();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBB61C()
{
  sub_268DBA1F8();
  qword_2802F0AD0 = v0;
  qword_2802F0AD8 = v1;
  byte_2802F0AE0 = v2;
}

uint64_t *sub_268DBB664()
{
  if (qword_2802DB0F0 != -1)
  {
    swift_once();
  }

  return &qword_2802F0AD0;
}

uint64_t sub_268DBB6C4()
{
  v0 = sub_268DBB664();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBB6EC()
{
  sub_268DBA1F8();
  qword_2802F0AE8 = v0;
  qword_2802F0AF0 = v1;
  byte_2802F0AF8 = v2;
}

uint64_t sub_268DBB734()
{
  v0 = sub_268DB9FB4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBB75C()
{
  sub_268DBA1F8();
  qword_2802F0B00 = v0;
  qword_2802F0B08 = v1;
  byte_2802F0B10 = v2;
}

uint64_t *sub_268DBB7A4()
{
  if (qword_2802DB100 != -1)
  {
    swift_once();
  }

  return &qword_2802F0B00;
}

uint64_t sub_268DBB804()
{
  v0 = sub_268DBB7A4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBB82C()
{
  sub_268DBA1F8();
  qword_2802F0B18 = v0;
  qword_2802F0B20 = v1;
  byte_2802F0B28 = v2;
}

uint64_t *sub_268DBB874()
{
  if (qword_2802DB108 != -1)
  {
    swift_once();
  }

  return &qword_2802F0B18;
}

uint64_t sub_268DBB8D4()
{
  v0 = sub_268DBB874();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBB8FC()
{
  sub_268DBA1F8();
  qword_2802F0B30 = v0;
  qword_2802F0B38 = v1;
  byte_2802F0B40 = v2;
}

uint64_t *sub_268DBB944()
{
  if (qword_2802DB110 != -1)
  {
    swift_once();
  }

  return &qword_2802F0B30;
}

uint64_t sub_268DBB9A4()
{
  v0 = sub_268DBB944();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBB9CC()
{
  sub_268DBA1F8();
  qword_2802F0B48 = v0;
  qword_2802F0B50 = v1;
  byte_2802F0B58 = v2;
}

uint64_t *sub_268DBBA14()
{
  if (qword_2802DB118 != -1)
  {
    swift_once();
  }

  return &qword_2802F0B48;
}

uint64_t sub_268DBBA74()
{
  v0 = sub_268DBBA14();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBBA9C()
{
  sub_268DBA1F8();
  qword_280FE82E8 = v0;
  qword_280FE82F0 = v1;
  byte_280FE82F8 = v2;
}

uint64_t *sub_268DBBAE4()
{
  if (qword_280FE5AF0 != -1)
  {
    swift_once();
  }

  return &qword_280FE82E8;
}

uint64_t sub_268DBBB44()
{
  v0 = sub_268DBBAE4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBBB6C()
{
  sub_268DBA1F8();
  qword_2802F0B60 = v0;
  qword_2802F0B68 = v1;
  byte_2802F0B70 = v2;
}

uint64_t *sub_268DBBBB4()
{
  if (qword_2802DB128 != -1)
  {
    swift_once();
  }

  return &qword_2802F0B60;
}

uint64_t sub_268DBBC14()
{
  v0 = sub_268DBBBB4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBBC3C()
{
  sub_268DBA1F8();
  qword_2802F0B78 = v0;
  qword_2802F0B80 = v1;
  byte_2802F0B88 = v2;
}

uint64_t *sub_268DBBC84()
{
  if (qword_2802DB130 != -1)
  {
    swift_once();
  }

  return &qword_2802F0B78;
}

uint64_t sub_268DBBCE4()
{
  v0 = sub_268DBBC84();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBBD0C()
{
  sub_268DBA1F8();
  qword_2802F0B90 = v0;
  qword_2802F0B98 = v1;
  byte_2802F0BA0 = v2;
}

uint64_t *sub_268DBBD54()
{
  if (qword_2802DB138 != -1)
  {
    swift_once();
  }

  return &qword_2802F0B90;
}

uint64_t sub_268DBBDB4()
{
  v0 = sub_268DBBD54();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBBDDC()
{
  sub_268DBA1F8();
  qword_2802F0BA8 = v0;
  qword_2802F0BB0 = v1;
  byte_2802F0BB8 = v2;
}

uint64_t *sub_268DBBE24()
{
  if (qword_2802DB140 != -1)
  {
    swift_once();
  }

  return &qword_2802F0BA8;
}

uint64_t sub_268DBBE84()
{
  v0 = sub_268DBBE24();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBBEAC()
{
  sub_268DBA1F8();
  qword_2802F0BC0 = v0;
  qword_2802F0BC8 = v1;
  byte_2802F0BD0 = v2;
}

uint64_t *sub_268DBBEF4()
{
  if (qword_2802DB148 != -1)
  {
    swift_once();
  }

  return &qword_2802F0BC0;
}

uint64_t sub_268DBBF54()
{
  v0 = sub_268DBBEF4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBBF7C()
{
  sub_268DBA1F8();
  qword_2802F0BD8 = v0;
  qword_2802F0BE0 = v1;
  byte_2802F0BE8 = v2;
}

uint64_t *sub_268DBBFC4()
{
  if (qword_2802DB150 != -1)
  {
    swift_once();
  }

  return &qword_2802F0BD8;
}

uint64_t sub_268DBC024()
{
  v0 = sub_268DBBFC4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBC04C()
{
  sub_268DBA1F8();
  qword_2802F0BF0 = v0;
  qword_2802F0BF8 = v1;
  byte_2802F0C00 = v2;
}

uint64_t *sub_268DBC094()
{
  if (qword_2802DB158 != -1)
  {
    swift_once();
  }

  return &qword_2802F0BF0;
}

uint64_t sub_268DBC0F4()
{
  v0 = sub_268DBC094();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBC11C()
{
  sub_268DBA1F8();
  qword_280FE82A0 = v0;
  qword_280FE82A8 = v1;
  byte_280FE82B0 = v2;
}

uint64_t sub_268DBC164()
{
  v0 = sub_268DB97B4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBC18C()
{
  sub_268DBA1F8();
  qword_280FE82B8 = v0;
  qword_280FE82C0 = v1;
  byte_280FE82C8 = v2;
}

uint64_t *sub_268DBC1D4()
{
  if (qword_280FE5AD8 != -1)
  {
    swift_once();
  }

  return &qword_280FE82B8;
}

uint64_t sub_268DBC234()
{
  v0 = sub_268DBC1D4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBC25C()
{
  sub_268DBA1F8();
  qword_2802F0C08 = v0;
  qword_2802F0C10 = v1;
  byte_2802F0C18 = v2;
}

uint64_t *sub_268DBC2A4()
{
  if (qword_2802DB160 != -1)
  {
    swift_once();
  }

  return &qword_2802F0C08;
}

uint64_t sub_268DBC304()
{
  v0 = sub_268DBC2A4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBC32C()
{
  sub_268DBA1F8();
  qword_2802F0C20 = v0;
  qword_2802F0C28 = v1;
  byte_2802F0C30 = v2;
}

uint64_t *sub_268DBC374()
{
  if (qword_2802DB168 != -1)
  {
    swift_once();
  }

  return &qword_2802F0C20;
}

uint64_t sub_268DBC3D4()
{
  v0 = sub_268DBC374();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBC3FC()
{
  sub_268DBA1F8();
  qword_2802F0C38 = v0;
  qword_2802F0C40 = v1;
  byte_2802F0C48 = v2;
}

uint64_t *sub_268DBC444()
{
  if (qword_2802DB170 != -1)
  {
    swift_once();
  }

  return &qword_2802F0C38;
}

uint64_t sub_268DBC4A4()
{
  v0 = sub_268DBC444();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBC4CC()
{
  sub_268DBA1F8();
  qword_2802F0C50 = v0;
  qword_2802F0C58 = v1;
  byte_2802F0C60 = v2;
}

uint64_t *sub_268DBC514()
{
  if (qword_2802DB178 != -1)
  {
    swift_once();
  }

  return &qword_2802F0C50;
}

uint64_t sub_268DBC574()
{
  v0 = sub_268DBC514();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBC59C()
{
  sub_268DBA1F8();
  qword_2802F0C68 = v0;
  qword_2802F0C70 = v1;
  byte_2802F0C78 = v2;
}

uint64_t *sub_268DBC5E4()
{
  if (qword_2802DB180 != -1)
  {
    swift_once();
  }

  return &qword_2802F0C68;
}

uint64_t sub_268DBC644()
{
  v0 = sub_268DBC5E4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBC66C()
{
  sub_268DBA1F8();
  qword_2802F0C80 = v0;
  qword_2802F0C88 = v1;
  byte_2802F0C90 = v2;
}

uint64_t *sub_268DBC6B4()
{
  if (qword_2802DB188 != -1)
  {
    swift_once();
  }

  return &qword_2802F0C80;
}

uint64_t sub_268DBC714()
{
  v0 = sub_268DBC6B4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBC73C()
{
  sub_268DBA1F8();
  qword_2802F0C98 = v0;
  qword_2802F0CA0 = v1;
  byte_2802F0CA8 = v2;
}

uint64_t *sub_268DBC784()
{
  if (qword_2802DB190 != -1)
  {
    swift_once();
  }

  return &qword_2802F0C98;
}

uint64_t sub_268DBC7E4()
{
  v0 = sub_268DBC784();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBC80C()
{
  sub_268DBA1F8();
  qword_280FE82D0 = v0;
  qword_280FE82D8 = v1;
  byte_280FE82E0 = v2;
}

uint64_t *sub_268DBC854()
{
  if (qword_280FE5AE8 != -1)
  {
    swift_once();
  }

  return &qword_280FE82D0;
}

uint64_t sub_268DBC8B4()
{
  v0 = sub_268DBC854();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBC8DC()
{
  sub_268DBA1F8();
  qword_2802F0CB0 = v0;
  qword_2802F0CB8 = v1;
  byte_2802F0CC0 = v2;
}

uint64_t *sub_268DBC924()
{
  if (qword_2802DB1A0 != -1)
  {
    swift_once();
  }

  return &qword_2802F0CB0;
}

uint64_t sub_268DBC984()
{
  v0 = sub_268DBC924();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBC9AC()
{
  sub_268DBA1F8();
  qword_2802F0CC8 = v0;
  qword_2802F0CD0 = v1;
  byte_2802F0CD8 = v2;
}

uint64_t *sub_268DBC9F4()
{
  if (qword_2802DB1A8 != -1)
  {
    swift_once();
  }

  return &qword_2802F0CC8;
}

uint64_t sub_268DBCA54()
{
  v0 = sub_268DBC9F4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBCA7C()
{
  sub_268DBA1F8();
  qword_2802F0CE0 = v0;
  qword_2802F0CE8 = v1;
  byte_2802F0CF0 = v2;
}

uint64_t *sub_268DBCAC4()
{
  if (qword_2802DB1B0 != -1)
  {
    swift_once();
  }

  return &qword_2802F0CE0;
}

uint64_t sub_268DBCB24()
{
  v0 = sub_268DBCAC4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBCB4C()
{
  sub_268DBA1F8();
  qword_2802F0CF8 = v0;
  qword_2802F0D00 = v1;
  byte_2802F0D08 = v2;
}

uint64_t *sub_268DBCB94()
{
  if (qword_2802DB1B8 != -1)
  {
    swift_once();
  }

  return &qword_2802F0CF8;
}

uint64_t sub_268DBCBF4()
{
  v0 = sub_268DBCB94();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBCC1C()
{
  sub_268DBA1F8();
  qword_2802F0D10 = v0;
  qword_2802F0D18 = v1;
  byte_2802F0D20 = v2;
}

uint64_t *sub_268DBCC64()
{
  if (qword_2802DB1C0 != -1)
  {
    swift_once();
  }

  return &qword_2802F0D10;
}

uint64_t sub_268DBCCC4()
{
  v0 = sub_268DBCC64();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBCCEC()
{
  sub_268DBA1F8();
  qword_2802F0D28 = v0;
  qword_2802F0D30 = v1;
  byte_2802F0D38 = v2;
}

uint64_t *sub_268DBCD34()
{
  if (qword_2802DB1C8 != -1)
  {
    swift_once();
  }

  return &qword_2802F0D28;
}

uint64_t sub_268DBCD94()
{
  v0 = sub_268DBCD34();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBCDBC()
{
  sub_268DBA1F8();
  qword_2802F0D40 = v0;
  qword_2802F0D48 = v1;
  byte_2802F0D50 = v2;
}

uint64_t *sub_268DBCE04()
{
  if (qword_2802DB1D0 != -1)
  {
    swift_once();
  }

  return &qword_2802F0D40;
}

uint64_t sub_268DBCE64()
{
  v0 = sub_268DBCE04();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBCE8C()
{
  sub_268DBA1F8();
  qword_2802F0D58 = v0;
  qword_2802F0D60 = v1;
  byte_2802F0D68 = v2;
}

uint64_t *sub_268DBCED4()
{
  if (qword_2802DB1D8 != -1)
  {
    swift_once();
  }

  return &qword_2802F0D58;
}

uint64_t sub_268DBCF34()
{
  v0 = sub_268DBCED4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBCF5C()
{
  sub_268DBA1F8();
  qword_2802F0D70 = v0;
  qword_2802F0D78 = v1;
  byte_2802F0D80 = v2;
}

uint64_t *sub_268DBCFA4()
{
  if (qword_2802DB1E0 != -1)
  {
    swift_once();
  }

  return &qword_2802F0D70;
}

uint64_t sub_268DBD004()
{
  v0 = sub_268DBCFA4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBD02C()
{
  sub_268DBA1F8();
  qword_2802F0D88 = v0;
  qword_2802F0D90 = v1;
  byte_2802F0D98 = v2;
}

uint64_t *sub_268DBD074()
{
  if (qword_2802DB1E8 != -1)
  {
    swift_once();
  }

  return &qword_2802F0D88;
}

uint64_t sub_268DBD0D4()
{
  v0 = sub_268DBD074();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBD0FC()
{
  sub_268DBA1F8();
  qword_2802F0DA0 = v0;
  qword_2802F0DA8 = v1;
  byte_2802F0DB0 = v2;
}

uint64_t *sub_268DBD144()
{
  if (qword_2802DB1F0 != -1)
  {
    swift_once();
  }

  return &qword_2802F0DA0;
}

uint64_t sub_268DBD1A4()
{
  v0 = sub_268DBD144();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBD1CC()
{
  sub_268DBA1F8();
  qword_2802F0DB8 = v0;
  qword_2802F0DC0 = v1;
  byte_2802F0DC8 = v2;
}

uint64_t *sub_268DBD214()
{
  if (qword_2802DB1F8 != -1)
  {
    swift_once();
  }

  return &qword_2802F0DB8;
}

uint64_t sub_268DBD274()
{
  v0 = sub_268DBD214();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBD29C()
{
  sub_268DBA1F8();
  qword_2802F0DD0 = v0;
  qword_2802F0DD8 = v1;
  byte_2802F0DE0 = v2;
}

uint64_t *sub_268DBD2E4()
{
  if (qword_2802DB200 != -1)
  {
    swift_once();
  }

  return &qword_2802F0DD0;
}

uint64_t sub_268DBD344()
{
  v0 = sub_268DBD2E4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBD36C()
{
  sub_268DBA1F8();
  qword_2802F0DE8 = v0;
  qword_2802F0DF0 = v1;
  byte_2802F0DF8 = v2;
}

uint64_t sub_268DBD3B4()
{
  v0 = sub_268DB9874();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBD3DC()
{
  sub_268DBA1F8();
  qword_2802F0E00 = v0;
  qword_2802F0E08 = v1;
  byte_2802F0E10 = v2;
}

uint64_t *sub_268DBD424()
{
  if (qword_2802DB210 != -1)
  {
    swift_once();
  }

  return &qword_2802F0E00;
}

uint64_t sub_268DBD484()
{
  v0 = sub_268DBD424();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBD4AC()
{
  sub_268DBA1F8();
  qword_2802F0E18 = v0;
  qword_2802F0E20 = v1;
  byte_2802F0E28 = v2;
}

uint64_t *sub_268DBD4F4()
{
  if (qword_2802DB218 != -1)
  {
    swift_once();
  }

  return &qword_2802F0E18;
}

uint64_t sub_268DBD554()
{
  v0 = sub_268DBD4F4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBD57C()
{
  sub_268DBA1F8();
  qword_2802F0E30 = v0;
  qword_2802F0E38 = v1;
  byte_2802F0E40 = v2;
}

uint64_t *sub_268DBD5C4()
{
  if (qword_2802DB220 != -1)
  {
    swift_once();
  }

  return &qword_2802F0E30;
}

uint64_t sub_268DBD624()
{
  v0 = sub_268DBD5C4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBD64C()
{
  sub_268DBA1F8();
  qword_2802F0E48 = v0;
  qword_2802F0E50 = v1;
  byte_2802F0E58 = v2;
}

uint64_t *sub_268DBD694()
{
  if (qword_2802DB228 != -1)
  {
    swift_once();
  }

  return &qword_2802F0E48;
}

uint64_t sub_268DBD6F4()
{
  v0 = sub_268DBD694();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBD71C()
{
  sub_268DBA1F8();
  qword_2802F0E60 = v0;
  qword_2802F0E68 = v1;
  byte_2802F0E70 = v2;
}

uint64_t *sub_268DBD764()
{
  if (qword_2802DB230 != -1)
  {
    swift_once();
  }

  return &qword_2802F0E60;
}

uint64_t sub_268DBD7C4()
{
  v0 = sub_268DBD764();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBD7EC()
{
  sub_268DBA1F8();
  qword_2802F0E78 = v0;
  qword_2802F0E80 = v1;
  byte_2802F0E88 = v2;
}

uint64_t *sub_268DBD834()
{
  if (qword_2802DB238 != -1)
  {
    swift_once();
  }

  return &qword_2802F0E78;
}

uint64_t sub_268DBD894()
{
  v0 = sub_268DBD834();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBD8BC()
{
  sub_268DBA1F8();
  qword_2802F0E90 = v0;
  qword_2802F0E98 = v1;
  byte_2802F0EA0 = v2;
}

uint64_t *sub_268DBD904()
{
  if (qword_2802DB240 != -1)
  {
    swift_once();
  }

  return &qword_2802F0E90;
}

uint64_t sub_268DBD964()
{
  v0 = sub_268DBD904();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBD98C()
{
  sub_268DBA1F8();
  qword_2802F0EA8 = v0;
  qword_2802F0EB0 = v1;
  byte_2802F0EB8 = v2;
}

uint64_t *sub_268DBD9D4()
{
  if (qword_2802DB248 != -1)
  {
    swift_once();
  }

  return &qword_2802F0EA8;
}

uint64_t sub_268DBDA34()
{
  v0 = sub_268DBD9D4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBDA5C()
{
  sub_268DBA1F8();
  qword_2802F0EC0 = v0;
  qword_2802F0EC8 = v1;
  byte_2802F0ED0 = v2;
}

uint64_t sub_268DBDAA4()
{
  v0 = sub_268DB9E34();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBDACC()
{
  sub_268DBA1F8();
  qword_2802F0ED8 = v0;
  qword_2802F0EE0 = v1;
  byte_2802F0EE8 = v2;
}

uint64_t *sub_268DBDB14()
{
  if (qword_2802DB258 != -1)
  {
    swift_once();
  }

  return &qword_2802F0ED8;
}

uint64_t sub_268DBDB74()
{
  v0 = sub_268DBDB14();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBDB9C()
{
  sub_268DBA1F8();
  qword_2802F0EF0 = v0;
  qword_2802F0EF8 = v1;
  byte_2802F0F00 = v2;
}

uint64_t *sub_268DBDBE4()
{
  if (qword_2802DB260 != -1)
  {
    swift_once();
  }

  return &qword_2802F0EF0;
}

uint64_t sub_268DBDC44()
{
  v0 = sub_268DBDBE4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBDC6C()
{
  sub_268DBA1F8();
  qword_2802F0F08 = v0;
  qword_2802F0F10 = v1;
  byte_2802F0F18 = v2;
}

uint64_t *sub_268DBDCB4()
{
  if (qword_2802DB268 != -1)
  {
    swift_once();
  }

  return &qword_2802F0F08;
}

uint64_t sub_268DBDD14()
{
  v0 = sub_268DBDCB4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBDD3C()
{
  sub_268DBA1F8();
  qword_2802F0F20 = v0;
  qword_2802F0F28 = v1;
  byte_2802F0F30 = v2;
}

uint64_t *sub_268DBDD84()
{
  if (qword_2802DB270 != -1)
  {
    swift_once();
  }

  return &qword_2802F0F20;
}

uint64_t sub_268DBDDE4()
{
  v0 = sub_268DBDD84();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBDE0C()
{
  sub_268DBA1F8();
  qword_2802F0F38 = v0;
  qword_2802F0F40 = v1;
  byte_2802F0F48 = v2;
}

uint64_t *sub_268DBDE54()
{
  if (qword_2802DB278 != -1)
  {
    swift_once();
  }

  return &qword_2802F0F38;
}

uint64_t sub_268DBDEB4()
{
  v0 = sub_268DBDE54();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBDEDC()
{
  sub_268DBA1F8();
  qword_2802F0F50 = v0;
  qword_2802F0F58 = v1;
  byte_2802F0F60 = v2;
}

uint64_t *sub_268DBDF24()
{
  if (qword_2802DB280 != -1)
  {
    swift_once();
  }

  return &qword_2802F0F50;
}

uint64_t sub_268DBDF84()
{
  v0 = sub_268DBDF24();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBDFAC()
{
  sub_268DBA1F8();
  qword_2802F0F68 = v0;
  qword_2802F0F70 = v1;
  byte_2802F0F78 = v2;
}

uint64_t *sub_268DBDFF4()
{
  if (qword_2802DB288 != -1)
  {
    swift_once();
  }

  return &qword_2802F0F68;
}

uint64_t sub_268DBE054()
{
  v0 = sub_268DBDFF4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBE07C()
{
  sub_268DBA1F8();
  qword_2802F0F80 = v0;
  qword_2802F0F88 = v1;
  byte_2802F0F90 = v2;
}

uint64_t *sub_268DBE0C4()
{
  if (qword_2802DB290 != -1)
  {
    swift_once();
  }

  return &qword_2802F0F80;
}

uint64_t sub_268DBE124()
{
  v0 = sub_268DBE0C4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBE14C()
{
  sub_268DBA1F8();
  qword_2802F0F98 = v0;
  qword_2802F0FA0 = v1;
  byte_2802F0FA8 = v2;
}

uint64_t sub_268DBE194()
{
  v0 = sub_268DB9814();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBE1BC()
{
  sub_268DBA1F8();
  qword_2802F0FB0 = v0;
  qword_2802F0FB8 = v1;
  byte_2802F0FC0 = v2;
}

uint64_t *sub_268DBE204()
{
  if (qword_2802DB2A0 != -1)
  {
    swift_once();
  }

  return &qword_2802F0FB0;
}

uint64_t sub_268DBE264()
{
  v0 = sub_268DBE204();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBE28C()
{
  sub_268DBA1F8();
  qword_2802F0FC8 = v0;
  qword_2802F0FD0 = v1;
  byte_2802F0FD8 = v2;
}

uint64_t *sub_268DBE2D4()
{
  if (qword_2802DB2A8 != -1)
  {
    swift_once();
  }

  return &qword_2802F0FC8;
}

uint64_t sub_268DBE334()
{
  v0 = sub_268DBE2D4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBE35C()
{
  sub_268DBA1F8();
  qword_2802F0FE0 = v0;
  qword_2802F0FE8 = v1;
  byte_2802F0FF0 = v2;
}

uint64_t *sub_268DBE3A4()
{
  if (qword_2802DB2B0 != -1)
  {
    swift_once();
  }

  return &qword_2802F0FE0;
}

uint64_t sub_268DBE404()
{
  v0 = sub_268DBE3A4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBE42C()
{
  sub_268DBA1F8();
  qword_2802F0FF8 = v0;
  qword_2802F1000 = v1;
  byte_2802F1008 = v2;
}

uint64_t *sub_268DBE474()
{
  if (qword_2802DB2B8 != -1)
  {
    swift_once();
  }

  return &qword_2802F0FF8;
}

uint64_t sub_268DBE4D4()
{
  v0 = sub_268DBE474();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBE4FC()
{
  sub_268DBA1F8();
  qword_2802F1010 = v0;
  qword_2802F1018 = v1;
  byte_2802F1020 = v2;
}

uint64_t sub_268DBE544()
{
  v0 = sub_268DB9EF4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBE56C()
{
  sub_268DBA1F8();
  qword_2802F1028 = v0;
  qword_2802F1030 = v1;
  byte_2802F1038 = v2;
}

uint64_t sub_268DBE5B4()
{
  v0 = sub_268DB9D14();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBE5DC()
{
  sub_268DBA1F8();
  qword_2802F1040 = v0;
  qword_2802F1048 = v1;
  byte_2802F1050 = v2;
}

uint64_t *sub_268DBE624()
{
  if (qword_2802DB2D0 != -1)
  {
    swift_once();
  }

  return &qword_2802F1040;
}

uint64_t sub_268DBE684()
{
  v0 = sub_268DBE624();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBE6AC()
{
  sub_268DBA1F8();
  qword_2802F1058 = v0;
  qword_2802F1060 = v1;
  byte_2802F1068 = v2;
}

uint64_t *sub_268DBE6F4()
{
  if (qword_2802DB2D8 != -1)
  {
    swift_once();
  }

  return &qword_2802F1058;
}

uint64_t sub_268DBE754()
{
  v0 = sub_268DBE6F4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBE77C()
{
  sub_268DBA1F8();
  qword_2802F1070 = v0;
  qword_2802F1078 = v1;
  byte_2802F1080 = v2;
}

uint64_t *sub_268DBE7C4()
{
  if (qword_2802DB2E0 != -1)
  {
    swift_once();
  }

  return &qword_2802F1070;
}

uint64_t sub_268DBE824()
{
  v0 = sub_268DBE7C4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBE84C()
{
  sub_268DBA1F8();
  qword_2802F1088 = v0;
  qword_2802F1090 = v1;
  byte_2802F1098 = v2;
}

uint64_t *sub_268DBE894()
{
  if (qword_2802DB2E8 != -1)
  {
    swift_once();
  }

  return &qword_2802F1088;
}

uint64_t sub_268DBE8F4()
{
  v0 = sub_268DBE894();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBE91C()
{
  sub_268DBA1F8();
  qword_2802F10A0 = v0;
  qword_2802F10A8 = v1;
  byte_2802F10B0 = v2;
}

uint64_t sub_268DBE964()
{
  v0 = sub_268DB9DD4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBE98C()
{
  sub_268DBA1F8();
  qword_2802F10B8 = v0;
  qword_2802F10C0 = v1;
  byte_2802F10C8 = v2;
}

uint64_t *sub_268DBE9D4()
{
  if (qword_2802DB2F8 != -1)
  {
    swift_once();
  }

  return &qword_2802F10B8;
}

uint64_t sub_268DBEA34()
{
  v0 = sub_268DBE9D4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBEA5C()
{
  sub_268DBA1F8();
  qword_2802F10D0 = v0;
  qword_2802F10D8 = v1;
  byte_2802F10E0 = v2;
}

uint64_t *sub_268DBEAA4()
{
  if (qword_2802DB300 != -1)
  {
    swift_once();
  }

  return &qword_2802F10D0;
}

uint64_t sub_268DBEB04()
{
  v0 = sub_268DBEAA4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBEB2C()
{
  sub_268DBA1F8();
  qword_2802F10E8 = v0;
  qword_2802F10F0 = v1;
  byte_2802F10F8 = v2;
}

uint64_t *sub_268DBEB74()
{
  if (qword_2802DB308 != -1)
  {
    swift_once();
  }

  return &qword_2802F10E8;
}

uint64_t sub_268DBEBD4()
{
  v0 = sub_268DBEB74();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBEBFC()
{
  sub_268DBA1F8();
  qword_2802F1100 = v0;
  qword_2802F1108 = v1;
  byte_2802F1110 = v2;
}

uint64_t *sub_268DBEC44()
{
  if (qword_2802DB310 != -1)
  {
    swift_once();
  }

  return &qword_2802F1100;
}

uint64_t sub_268DBECA4()
{
  v0 = sub_268DBEC44();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBECCC()
{
  sub_268DBA1F8();
  qword_2802F1118 = v0;
  qword_2802F1120 = v1;
  byte_2802F1128 = v2;
}

uint64_t *sub_268DBED14()
{
  if (qword_2802DB318 != -1)
  {
    swift_once();
  }

  return &qword_2802F1118;
}

uint64_t sub_268DBED74()
{
  v0 = sub_268DBED14();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBED9C()
{
  sub_268DBA1F8();
  qword_2802F1130 = v0;
  qword_2802F1138 = v1;
  byte_2802F1140 = v2;
}

uint64_t *sub_268DBEDE4()
{
  if (qword_2802DB320 != -1)
  {
    swift_once();
  }

  return &qword_2802F1130;
}

uint64_t sub_268DBEE44()
{
  v0 = sub_268DBEDE4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBEE6C()
{
  sub_268DBA1F8();
  qword_2802F1148 = v0;
  qword_2802F1150 = v1;
  byte_2802F1158 = v2;
}

uint64_t *sub_268DBEEB4()
{
  if (qword_2802DB328 != -1)
  {
    swift_once();
  }

  return &qword_2802F1148;
}

uint64_t sub_268DBEF14()
{
  v0 = sub_268DBEEB4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBEF3C()
{
  sub_268DBA1F8();
  qword_2802F1160 = v0;
  qword_2802F1168 = v1;
  byte_2802F1170 = v2;
}

uint64_t *sub_268DBEF84()
{
  if (qword_2802DB330 != -1)
  {
    swift_once();
  }

  return &qword_2802F1160;
}

uint64_t sub_268DBEFE4()
{
  v0 = sub_268DBEF84();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBF00C()
{
  sub_268DBA1F8();
  qword_2802F1178 = v0;
  qword_2802F1180 = v1;
  byte_2802F1188 = v2;
}

uint64_t *sub_268DBF054()
{
  if (qword_2802DB338 != -1)
  {
    swift_once();
  }

  return &qword_2802F1178;
}

uint64_t sub_268DBF0B4()
{
  v0 = sub_268DBF054();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBF0DC()
{
  sub_268DBA1F8();
  qword_2802F1190 = v0;
  qword_2802F1198 = v1;
  byte_2802F11A0 = v2;
}

uint64_t *sub_268DBF124()
{
  if (qword_2802DB340 != -1)
  {
    swift_once();
  }

  return &qword_2802F1190;
}

uint64_t sub_268DBF184()
{
  v0 = sub_268DBF124();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBF1AC()
{
  sub_268DBA1F8();
  qword_2802F11A8 = v0;
  qword_2802F11B0 = v1;
  byte_2802F11B8 = v2;
}

uint64_t *sub_268DBF1F4()
{
  if (qword_2802DB348 != -1)
  {
    swift_once();
  }

  return &qword_2802F11A8;
}

uint64_t sub_268DBF254()
{
  v0 = sub_268DBF1F4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBF27C()
{
  sub_268DBA1F8();
  qword_2802F11C0 = v0;
  qword_2802F11C8 = v1;
  byte_2802F11D0 = v2;
}

uint64_t *sub_268DBF2C4()
{
  if (qword_2802DB350 != -1)
  {
    swift_once();
  }

  return &qword_2802F11C0;
}

uint64_t sub_268DBF324()
{
  v0 = sub_268DBF2C4();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBF34C()
{
  sub_268DBA1F8();
  qword_2802F11D8 = v0;
  qword_2802F11E0 = v1;
  byte_2802F11E8 = v2;
}

uint64_t *sub_268DBF394()
{
  if (qword_2802DB358 != -1)
  {
    swift_once();
  }

  return &qword_2802F11D8;
}

uint64_t sub_268DBF3F4()
{
  v0 = sub_268DBF394();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBF41C()
{
  sub_268DBA1F8();
  qword_2802F11F0 = v0;
  qword_2802F11F8 = v1;
  byte_2802F1200 = v2;
}

uint64_t *sub_268DBF464()
{
  if (qword_2802DB360 != -1)
  {
    swift_once();
  }

  return &qword_2802F11F0;
}

uint64_t sub_268DBF4C4()
{
  v0 = sub_268DBF464();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void sub_268DBF4EC()
{
  sub_268DBA1F8();
  qword_2802F1208 = v0;
  qword_2802F1210 = v1;
  byte_2802F1218 = v2;
}

uint64_t *sub_268DBF534()
{
  if (qword_2802DB368 != -1)
  {
    swift_once();
  }

  return &qword_2802F1208;
}

uint64_t sub_268DBF594()
{
  v0 = sub_268DBF534();
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  return result;
}

uint64_t sub_268DBF5E4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 17))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_268DBF6C4(uint64_t result, int a2, int a3)
{
  v3 = (result + 17);
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 16) = 0;
    if (a3)
    {
      *v3 = 1;
    }
  }

  else if (a3)
  {
    *v3 = 0;
  }

  return result;
}

uint64_t sub_268DBF874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v30 = a4;
  v22 = a1;
  v19 = a2;
  v29 = a3;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v42 = 0;
  v41 = 0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC9F0, &qword_268F9FF70);
  v33 = *(v36 - 8);
  v34 = v36 - 8;
  v16 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36);
  v35 = &v16 - v16;
  v51 = &v16 - v16;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC9F8, &qword_268F9FF78);
  v37 = *(v40 - 8);
  v38 = v40 - 8;
  v17 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v24 = &v16 - v17;
  v18 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v39 = &v16 - v18;
  v50 = &v16 - v18;
  v49 = v6;
  v48 = v7;
  v47 = v8;
  v21 = v46;
  sub_268CDE730(v6, v46);
  v20 = v45;
  sub_268CDE730(v19, v45);
  sub_268DBFC94(v21, v20, v39);
  v28 = 0;
  v26 = type metadata accessor for SetLabeledSettingFlowStrategy();
  v23 = v44;
  sub_268CDE730(v22, v44);
  v9 = sub_268D2B2E8(v23);
  v27 = &v43;
  v43 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCA00, &qword_268F9FF80);
  (*(v37 + 16))(v24, v39, v40);
  v25 = sub_268F995F4();
  sub_268DC0618();
  sub_268F998C4();
  sub_268F9AB54();
  sub_268F9AEF4();
  v32 = sub_268F9AB34();
  v42 = v32;
  v31 = sub_268F998B4();
  v41 = v31;

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCA10, &qword_268F9FF88);
  v30[3] = v10;
  v11 = sub_268DC0698();
  v12 = v30;
  v13 = v11;
  v14 = v31;
  v30[4] = v13;
  *v12 = v14;

  (*(v33 + 8))(v35, v36);
  return (*(v37 + 8))(v39, v40);
}

uint64_t sub_268DBFC94@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v102 = a3;
  v106 = a1;
  v105 = a2;
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v120 = 0;
  v114 = 0;
  v94 = 0;
  v27 = (*(*(sub_268F9AB24() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v82 = &v26 - v27;
  v55 = sub_268F99274();
  v34 = *(v55 - 8);
  v35 = v55 - 8;
  v28 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55);
  v54 = &v26 - v28;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC9F8, &qword_268F9FF78);
  v89 = *(v108 - 8);
  v90 = v108 - 8;
  v30 = *(v89 + 64);
  v29 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v94);
  v91 = &v26 - v29;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v107 = &v26 - v31;
  v129 = &v26 - v31;
  v128 = v4;
  v127 = v5;
  v95 = sub_268DC0720();
  v96 = sub_268DC0784();
  sub_268F995E4();
  (*(v89 + 32))(v107, v91, v108);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DCA28, qword_268F9FF90);
  v62 = 1;
  v43 = sub_268F9AEF4();
  v44 = v6;
  v33 = v106[3];
  v32 = v106[4];
  __swift_project_boxed_opaque_existential_1(v106, v33);
  sub_268F99784();
  v36 = sub_268F99254();
  v37 = v7;
  v53 = *(v34 + 8);
  v52 = v34 + 8;
  v53(v54, v55);
  v41 = v126;
  v126[0] = v36;
  v126[1] = v37;
  v58 = "-";
  v60 = 1;
  v8 = sub_268F9AEF4();
  v40 = v125;
  v125[0] = v8;
  v125[1] = v9;
  v59 = "_";
  v10 = sub_268F9AEF4();
  v39 = v124;
  v124[0] = v10;
  v124[1] = v11;
  v61 = sub_268D58980();
  v63 = MEMORY[0x277D837D0];
  sub_268D58944();
  v45 = sub_268F9B3E4();
  v46 = v12;
  sub_268CD9D30(v39);
  sub_268CD9D30(v40);
  sub_268CD9D30(v41);
  v47 = v123;
  sub_268CDE730(v105, v123);
  v48 = v122;
  sub_268CDE730(v106, v122);
  v49 = sub_268D589F8();
  sub_268D58A5C();
  v42 = v121;
  sub_268DC07E8(v95, v96, v121);
  v101 = sub_268E8A088(v43, v44, v45, v46, v47, v48, v49, v82, v42);
  v120 = v101;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5A8, qword_268F9E900);
  v83 = sub_268F9AEF4();
  v76 = v13;
  v51 = v106[3];
  v50 = v106[4];
  __swift_project_boxed_opaque_existential_1(v106, v51);
  sub_268F99784();
  v56 = sub_268F99254();
  v57 = v14;
  v53(v54, v55);
  v67 = v119;
  v119[0] = v56;
  v119[1] = v57;
  v15 = sub_268F9AEF4();
  v66 = v118;
  v118[0] = v15;
  v118[1] = v16;
  v17 = sub_268F9AEF4();
  v65 = v117;
  v117[0] = v17;
  v117[1] = v18;
  sub_268D58944();
  v77 = sub_268F9B3E4();
  v78 = v19;
  sub_268CD9D30(v65);
  sub_268CD9D30(v66);
  sub_268CD9D30(v67);
  v79 = v116;
  sub_268CDE730(v105, v116);
  v80 = v115;
  sub_268CDE730(v106, v115);
  v69 = sub_268D2E630();
  v68 = sub_268CDD0DC();
  v81 = sub_268D589F8();
  sub_268D58A5C();
  v70 = sub_268D58B9C();
  v71 = sub_268D58ABC();
  v72 = sub_268D58AF4();
  v73 = sub_268D58BD4();
  v74 = sub_268D58B64();
  v75 = sub_268D58C0C();
  v20 = sub_268D58C44();
  v100 = sub_268EEB954(v83, v76, v77, v78, v79, v80, v81, v82, v70, v71, v72, v73, v74, v75, v20);
  v114 = v100;
  v104 = *(v89 + 16);
  v103 = v89 + 16;
  v104(v91, v107, v108);
  v87 = type metadata accessor for SetLabeledSettingHandleIntentFlowStrategy();
  v86 = v113;
  sub_268CDE730(v106, v113);
  v84 = v112;
  sub_268CDE730(v105, v112);

  v85 = sub_268D58ED0();
  v21 = sub_268CDC590();
  v22 = sub_268EB0F4C(v86, v84, v101, v85, v100, v21);
  v88 = &v111;
  v111 = v22;
  sub_268DC08B4();
  v92 = sub_268D58F00(v88, v108);
  v93 = v23;

  v110 = *(v89 + 8);
  v109 = v89 + 8;
  v110(v91, v108);
  sub_268F995B4();
  sub_268F9AB54();
  v97 = sub_268F9AB34();
  v98 = sub_268F99594();
  v99 = v24;

  sub_268F995C4();

  v104(v102, v107, v108);
  __swift_destroy_boxed_opaque_existential_0(v105);
  __swift_destroy_boxed_opaque_existential_0(v106);
  return (v110)(v107, v108);
}

unint64_t sub_268DC0618()
{
  v2 = qword_2802DCA08;
  if (!qword_2802DCA08)
  {
    type metadata accessor for SetLabeledSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCA08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DC0698()
{
  v2 = qword_2802DCA18;
  if (!qword_2802DCA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DCA10, &qword_268F9FF88);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCA18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DC0720()
{
  v2 = qword_2802DCA20;
  if (!qword_2802DCA20)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DCA20);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268DC0784()
{
  v2 = qword_2802DDBB0;
  if (!qword_2802DDBB0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DDBB0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_268DC07E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v10 = a3;
  v12 = a1;
  v11 = a2;
  v8 = 0;
  v6 = (*(*(sub_268F9AB24() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v7 = &v5 - v6;
  v9 = type metadata accessor for SettingIntentCATPatternsExecutor();
  sub_268CDFA34();
  result = sub_268F9A904();
  v4 = v10;
  v10[3] = v9;
  v4[4] = &off_287992048;
  *v4 = result;
  return result;
}

unint64_t sub_268DC08B4()
{
  v2 = qword_2802DCA30;
  if (!qword_2802DCA30)
  {
    type metadata accessor for SetLabeledSettingHandleIntentFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DCA30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DC09C4()
{
  v0 = sub_268DD2AA8();
  v2 = *v0;
  result = MEMORY[0x277D82BE0](*v0);
  qword_2802F1220 = v2;
  return result;
}

uint64_t *sub_268DC0A04()
{
  if (qword_2802DB370 != -1)
  {
    swift_once();
  }

  return &qword_2802F1220;
}

uint64_t sub_268DC0A64()
{
  v0 = sub_268DC0A04();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_268DC0A9C()
{
  v2 = *(v0 + 160);

  return v2;
}

uint64_t sub_268DC0AC8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v20 = v7;

  v7[12] = a3;

  v7[13] = a4;
  sub_268CDE730(a1, v19);
  sub_268CDF978(v19, v7 + 2);
  sub_268CDE730(a2, v18);
  sub_268CDF978(v18, v7 + 7);

  v7[14] = a5;
  sub_268CDE730(a6, v17);
  sub_268CDF978(v17, v7 + 15);

  v7[20] = a7;

  __swift_destroy_boxed_opaque_existential_0(a6);

  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v16;
}

uint64_t sub_268DC0C28@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_268F9B284();
  v2 = sub_268DC7D28();
  v6 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v6);

  v3 = sub_268DC0A04();
  MEMORY[0x277D82BE0](*v3);
  MEMORY[0x277D82BE0](a1);
  sub_268CD7620();
  sub_268F99694();
  v4 = sub_268F996A4();
  return (*(*(v4 - 8) + 56))(a2, 0, 1);
}

uint64_t sub_268DC0D90(uint64_t a1, uint64_t a2)
{
  v3[109] = v2;
  v3[108] = a2;
  v3[107] = a1;
  v3[99] = v3;
  v3[100] = 0;
  v3[101] = 0;
  v3[102] = 0;
  v3[103] = 0;
  v3[104] = 0;
  v3[105] = 0;
  v3[106] = 0;
  v3[97] = 0;
  v3[98] = 0;
  v4 = *(*(sub_268F99834() - 8) + 64) + 15;
  v3[110] = swift_task_alloc();
  v5 = sub_268F99BC4();
  v3[111] = v5;
  v8 = *(v5 - 8);
  v3[112] = v8;
  v9 = *(v8 + 64);
  v3[113] = swift_task_alloc();
  v3[114] = swift_task_alloc();
  v3[100] = a2;
  v3[101] = v2;
  v6 = v3[99];

  return MEMORY[0x2822009F8](sub_268DC0F10, 0);
}

uint64_t sub_268DC0F10()
{
  v22 = v0[109];
  v0[99] = v0;
  sub_268F9B284();
  v1 = sub_268DC7D28();
  v21 = *v1;
  MEMORY[0x277D82BE0](*v1);
  v0[115] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v21);
  sub_268CDE730(v22 + 120, (v0 + 77));
  v24 = v0[80];
  v23 = v0[81];
  __swift_project_boxed_opaque_existential_1(v0 + 77, v24);
  v25 = (*(v23 + 56))(v24);
  __swift_destroy_boxed_opaque_existential_0(v0 + 77);
  if (v25)
  {
    v15 = v20[109];
    v16 = v20[108];
    sub_268F9B284();
    v2 = sub_268DC7D28();
    v14 = *v2;
    MEMORY[0x277D82BE0](*v2);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v14);
    v20[116] = *(v15 + 112);

    v20[117] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC768, &qword_268F9FFE0);
    v19 = sub_268F99B34();
    v20[118] = v19;
    v17 = sub_268F99B44();
    v20[119] = v17;
    v18 = sub_268F99B24();
    v20[120] = v18;
    v3 = swift_task_alloc();
    v20[121] = v3;
    *v3 = v20[99];
    v3[1] = sub_268DC13D8;

    return sub_268D0A7BC(v19, v17, v18);
  }

  else
  {
    v9 = v20[109];
    v10 = v20[108];
    sub_268F999C4();
    v5 = sub_268F999B4();
    v20[136] = v5;
    v20[102] = v5;
    sub_268F9B284();
    v6 = sub_268DC7D28();
    v8 = *v6;
    MEMORY[0x277D82BE0](*v6);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v8);
    v20[137] = *(v9 + 112);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC768, &qword_268F9FFE0);
    v13 = sub_268F99B34();
    v20[138] = v13;
    v11 = sub_268F99B44();
    v20[139] = v11;
    v12 = sub_268F99B24();
    v20[140] = v12;
    v7 = swift_task_alloc();
    v20[141] = v7;
    *v7 = v20[99];
    v7[1] = sub_268DC3188;

    return sub_268CE7E9C(v13, v11, v12);
  }
}

uint64_t sub_268DC13D8(uint64_t a1)
{
  v14 = *v2;
  v12 = *v2 + 16;
  v13 = v14 + 99;
  v4 = *(*v2 + 968);
  v14[99] = *v2;
  v14[122] = a1;
  v14[123] = v1;

  if (v1)
  {
    v7 = *v13;
    v6 = sub_268DC3738;
  }

  else
  {
    v9 = *(v12 + 936);
    v10 = *(v12 + 928);
    v11 = *(v12 + 912);

    v5 = *v13;
    v6 = sub_268DC1590;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268DC1590()
{
  v1 = v0[122];
  v44 = v0[114];
  v45 = v0[110];
  v47 = v0[109];
  v43 = v0[108];
  v0[99] = v0;
  v0[105] = v1;
  sub_268F99804();

  v46 = swift_task_alloc();
  *(v46 + 16) = v47;
  *(v46 + 24) = v43;
  sub_268F99B94();

  sub_268F9A764();
  sub_268F9A754();
  sub_268F9A734();

  v48 = sub_268F9AB74();

  if (v48)
  {
    sub_268CDE730(v42[109] + 16, (v42 + 92));
    v39 = v42[96];
    __swift_project_boxed_opaque_existential_1(v42 + 92, v42[95]);
    v41 = sub_268F997D4();
    __swift_destroy_boxed_opaque_existential_0(v42 + 92);
    v40 = v42[109];

    if (v41)
    {
      v2 = v42[109];

      goto LABEL_7;
    }
  }

  else
  {
    v38 = v42[109];
  }

  sub_268CDE730(v42[109] + 16, (v42 + 82));
  v36 = v42[86];
  __swift_project_boxed_opaque_existential_1(v42 + 82, v42[85]);
  v37 = sub_268F997E4();
  __swift_destroy_boxed_opaque_existential_0(v42 + 82);
  v3 = v42[109];

  if ((v37 & 1) == 0)
  {
LABEL_17:
    v15 = v42[117];
    v14 = v42[108];
    v42[124] = *(v42[109] + 112);

    v16 = sub_268F99B34();
    v42[125] = v16;
    v17 = sub_268F99B44();
    v42[126] = v17;
    v18 = sub_268F99B24();
    v42[127] = v18;
    v13 = swift_task_alloc();
    v42[128] = v13;
    *v13 = v42[99];
    v13[1] = sub_268DC1D04;

    return sub_268D08E70((v42 + 21), v16, v17, v18);
  }

LABEL_7:
  v4 = v42[117];
  v5 = v42[108];
  v34 = sub_268F99B44();
  v35 = [v34 settingMetadata];
  MEMORY[0x277D82BD8](v34);
  if (v35)
  {
    v29 = [v35 settingId];
    v30 = sub_268F9AE24();
    v31 = v6;
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v29);
    v32 = v30;
    v33 = v31;
  }

  else
  {
    v32 = 0;
    v33 = 0;
  }

  if (!v33)
  {
    goto LABEL_17;
  }

  v42[97] = v32;
  v42[98] = v33;
  v7 = BinarySettingIdentifier.rawValue.getter();
  v28 = MEMORY[0x26D62DB50](v32, v33, v7);

  if ((v28 & 1) == 0)
  {

    goto LABEL_17;
  }

  v25 = v42[122];
  v19 = v42[115];
  v23 = v42[114];
  v24 = v42[111];
  v21 = v42[107];
  v22 = v42[112];
  sub_268F9B284();
  v8 = sub_268DC7D28();
  v20 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v20);
  sub_268F99854();
  sub_268F99844();

  (*(v22 + 8))(v23, v24);
  MEMORY[0x277D82BD8](v25);
  v9 = v42[114];
  v26 = v42[113];
  v27 = v42[110];

  v10 = *(v42[99] + 8);
  v11 = v42[99];

  return v10();
}

uint64_t sub_268DC1D04()
{
  v12 = *v1;
  v10 = *v1 + 16;
  v11 = (v12 + 792);
  v2 = *(*v1 + 1024);
  *(v12 + 792) = *v1;
  *(v12 + 1032) = v0;

  if (v0)
  {
    v5 = *v11;
    v4 = sub_268DC3844;
  }

  else
  {
    v7 = *(v10 + 992);
    v8 = *(v10 + 984);
    v9 = *(v10 + 976);

    v3 = *v11;
    v4 = sub_268DC1EBC;
  }

  return MEMORY[0x2822009F8](v4, 0);
}

uint64_t sub_268DC1EBC()
{
  v62 = v0;
  v0[99] = v0;
  memcpy(v0 + 49, v0 + 21, 0x70uLL);
  memcpy(v0 + 35, v0 + 49, 0x70uLL);
  if (v0[36])
  {
    v42 = v51[122];
    v51[106] = v51 + 35;
    v50 = sub_268F9B284();
    v1 = sub_268DC7D28();
    v49 = *v1;
    MEMORY[0x277D82BE0](*v1);
    MEMORY[0x277D82BE0](v42);
    v43 = swift_allocObject();
    *(v43 + 16) = v42;
    v45 = swift_allocObject();
    *(v45 + 16) = 32;
    v46 = swift_allocObject();
    *(v46 + 16) = 8;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_268DC3E58;
    *(v44 + 24) = v43;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_268CD7608;
    *(v47 + 24) = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
    sub_268F9B734();
    v48 = v2;

    *v48 = sub_268CD7600;
    v48[1] = v45;

    v48[2] = sub_268CD7600;
    v48[3] = v46;

    v48[4] = sub_268CD7614;
    v48[5] = v47;
    sub_268CD0F7C();

    if (os_log_type_enabled(v49, v50))
    {
      v3 = v51[129];
      buf = sub_268F9B3A4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v40 = sub_268CD5448(0);
      v41 = sub_268CD5448(1);
      v57 = buf;
      v58 = v40;
      v59 = v41;
      sub_268CD549C(2, &v57);
      sub_268CD549C(1, &v57);
      v60 = sub_268CD7600;
      v61 = v45;
      sub_268CD54B0(&v60, &v57, &v58, &v59);
      if (v3)
      {
      }

      v60 = sub_268CD7600;
      v61 = v46;
      sub_268CD54B0(&v60, &v57, &v58, &v59);
      v60 = sub_268CD7614;
      v61 = v47;
      sub_268CD54B0(&v60, &v57, &v58, &v59);
      _os_log_impl(&dword_268CBE000, v49, v50, "HandleIntentStrategy: creating output with resultModel, dialog CAT: %s", buf, 0xCu);
      sub_268CD54FC(v40);
      sub_268CD54FC(v41);
      sub_268F9B384();
    }

    else
    {
    }

    v36 = v51[122];
    MEMORY[0x277D82BD8](v49);
    sub_268F999C4();
    v51[130] = sub_268F999B4();
    sub_268D28EFC((v51 + 35), (v51 + 63));
    memcpy(v51 + 2, v51 + 35, 0x70uLL);
    sub_268D34FC0((v51 + 2));
    v51[90] = &type metadata for SnippetModels;
    v51[91] = sub_268D34E18();
    v5 = swift_allocObject();
    v51[87] = v5;
    memcpy((v5 + 16), v51 + 2, 0x91uLL);
    sub_268D29170();
    v37 = sub_268F9B734();
    v35 = v6;
    MEMORY[0x277D82BE0](v36);
    *v35 = v36;
    sub_268CD0F7C();
    v51[131] = v37;
    v38 = (MEMORY[0x277D5BD38] + *MEMORY[0x277D5BD38]);
    v7 = *(MEMORY[0x277D5BD38] + 4);
    v8 = swift_task_alloc();
    v51[132] = v8;
    *v8 = v51[99];
    v8[1] = sub_268DC2C9C;
    v9 = v51[114];
    v10 = v51[107];

    return v38(v10, v51 + 87, v37, v9);
  }

  else
  {
    v26 = v51[122];
    v34 = sub_268F9B284();
    v11 = sub_268DC7D28();
    oslog = *v11;
    MEMORY[0x277D82BE0](*v11);
    MEMORY[0x277D82BE0](v26);
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    v29 = swift_allocObject();
    *(v29 + 16) = 32;
    v30 = swift_allocObject();
    *(v30 + 16) = 8;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_268DC3E58;
    *(v28 + 24) = v27;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_268CD7608;
    *(v31 + 24) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
    sub_268F9B734();
    v32 = v12;

    *v32 = sub_268CD7600;
    v32[1] = v29;

    v32[2] = sub_268CD7600;
    v32[3] = v30;

    v32[4] = sub_268CD7614;
    v32[5] = v31;
    sub_268CD0F7C();

    if (os_log_type_enabled(oslog, v34))
    {
      v13 = v51[129];
      v23 = sub_268F9B3A4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v24 = sub_268CD5448(0);
      v25 = sub_268CD5448(1);
      v52 = v23;
      v53 = v24;
      v54 = v25;
      sub_268CD549C(2, &v52);
      sub_268CD549C(1, &v52);
      v55 = sub_268CD7600;
      v56 = v29;
      sub_268CD54B0(&v55, &v52, &v53, &v54);
      if (v13)
      {
      }

      v55 = sub_268CD7600;
      v56 = v30;
      sub_268CD54B0(&v55, &v52, &v53, &v54);
      v55 = sub_268CD7614;
      v56 = v31;
      sub_268CD54B0(&v55, &v52, &v53, &v54);
      _os_log_impl(&dword_268CBE000, oslog, v34, "HandleIntentStrategy: creating output without resultModel, dialog CAT: %s", v23, 0xCu);
      sub_268CD54FC(v24);
      sub_268CD54FC(v25);
      sub_268F9B384();
    }

    else
    {
    }

    v20 = v51[122];
    MEMORY[0x277D82BD8](oslog);
    sub_268F999C4();
    v51[133] = sub_268F999B4();
    sub_268D29170();
    v21 = sub_268F9B734();
    v19 = v14;
    MEMORY[0x277D82BE0](v20);
    *v19 = v20;
    sub_268CD0F7C();
    v51[134] = v21;
    v22 = (MEMORY[0x277D5BD50] + *MEMORY[0x277D5BD50]);
    v15 = *(MEMORY[0x277D5BD50] + 4);
    v16 = swift_task_alloc();
    v51[135] = v16;
    *v16 = v51[99];
    v16[1] = sub_268DC2F30;
    v17 = v51[114];
    v18 = v51[107];

    return v22(v18, v21, v17);
  }
}

uint64_t sub_268DC2C9C()
{
  v7 = *v0;
  v5 = (*v0 + 696);
  v1 = *(*v0 + 1056);
  v4 = *(*v0 + 1048);
  v6 = *(*v0 + 1040);
  *(v7 + 792) = *v0;

  __swift_destroy_boxed_opaque_existential_0(v5);

  v2 = *(v7 + 792);

  return MEMORY[0x2822009F8](sub_268DC2E04, 0);
}

uint64_t sub_268DC2E04()
{
  v8 = v0[122];
  v7 = v0[114];
  v5 = v0[112];
  v6 = v0[111];
  v0[99] = v0;
  sub_268D29010(v0 + 35);
  (*(v5 + 8))(v7, v6);
  MEMORY[0x277D82BD8](v8);
  v1 = v0[114];
  v9 = v0[113];
  v10 = v0[110];

  v2 = *(v0[99] + 8);
  v3 = v0[99];

  return v2();
}

uint64_t sub_268DC2F30()
{
  v6 = *v0;
  v1 = *(*v0 + 1080);
  v4 = *(*v0 + 1072);
  v5 = *(*v0 + 1064);
  *(v6 + 792) = *v0;

  v2 = *(v6 + 792);

  return MEMORY[0x2822009F8](sub_268DC3088, 0);
}

uint64_t sub_268DC3088()
{
  v8 = v0[122];
  v1 = v0[114];
  v2 = v0[112];
  v3 = v0[111];
  v0[99] = v0;
  (*(v2 + 8))(v1, v3);
  MEMORY[0x277D82BD8](v8);
  v4 = v0[114];
  v9 = v0[113];
  v10 = v0[110];

  v5 = *(v0[99] + 8);
  v6 = v0[99];

  return v5();
}

uint64_t sub_268DC3188(uint64_t a1)
{
  v14 = *v2;
  v12 = *v2 + 16;
  v13 = v14 + 99;
  v4 = *(*v2 + 1128);
  v14[99] = *v2;
  v14[142] = a1;
  v14[143] = v1;

  if (v1)
  {
    v7 = *v13;
    v6 = sub_268DC39A4;
  }

  else
  {
    v9 = *(v12 + 1096);
    v10 = *(v12 + 1088);
    v11 = *(v12 + 1080);

    v5 = *v13;
    v6 = sub_268DC3340;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_268DC3340()
{
  v14 = MEMORY[0x277D5BD48];
  v1 = v0[142];
  v10 = v0[113];
  v11 = v0[110];
  v13 = v0[109];
  v9 = v0[108];
  v0[99] = v0;
  v0[104] = v1;
  sub_268F99804();

  v12 = swift_task_alloc();
  *(v12 + 16) = v13;
  *(v12 + 24) = v9;
  sub_268F99B94();

  v16 = (v14 + *v14);
  v2 = v14[1];
  v3 = swift_task_alloc();
  v15[144] = v3;
  *v3 = v15[99];
  v3[1] = sub_268DC34B8;
  v4 = v15[142];
  v5 = v15[136];
  v6 = v15[113];
  v7 = v15[107];

  return v16(v7, v4, v6);
}

uint64_t sub_268DC34B8()
{
  v8 = *v1;
  v7 = (v8 + 792);
  v2 = *(*v1 + 1152);
  *(v8 + 792) = *v1;
  *(v8 + 1160) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = sub_268DC3B38;
  }

  else
  {
    v3 = *v7;
    v4 = sub_268DC3624;
  }

  return MEMORY[0x2822009F8](v4, 0);
}

uint64_t sub_268DC3624()
{
  v8 = v0[142];
  v9 = v0[136];
  v1 = v0[113];
  v2 = v0[112];
  v3 = v0[111];
  v0[99] = v0;
  (*(v2 + 8))(v1, v3);
  MEMORY[0x277D82BD8](v8);

  v4 = v0[114];
  v10 = v0[113];
  v11 = v0[110];

  v5 = *(v0[99] + 8);
  v6 = v0[99];

  return v5();
}

uint64_t sub_268DC3738()
{
  v1 = v0[120];
  v7 = v0[119];
  v8 = v0[118];
  v9 = v0[116];
  v0[99] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v7);

  v2 = v0[123];
  v3 = v0[114];
  v10 = v0[113];
  v11 = v0[110];

  v4 = *(v0[99] + 8);
  v5 = v0[99];

  return v4();
}

uint64_t sub_268DC3844()
{
  v1 = v0[127];
  v7 = v0[126];
  v8 = v0[125];
  v9 = v0[124];
  v13 = v0[122];
  v11 = v0[114];
  v10 = v0[112];
  v12 = v0[111];
  v0[99] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v7);

  (*(v10 + 8))(v11, v12);
  MEMORY[0x277D82BD8](v13);
  v2 = v0[129];
  v3 = v0[114];
  v14 = v0[113];
  v15 = v0[110];

  v4 = *(v0[99] + 8);
  v5 = v0[99];

  return v4();
}

uint64_t sub_268DC39A4()
{
  v1 = v0[140];
  v7 = v0[139];
  v8 = v0[138];
  v9 = v0[137];
  v0[99] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v7);

  v10 = v0[143];
  v11 = v0[136];
  v2 = v10;
  v0[103] = v10;
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v3 = v0[114];
  v12 = v0[113];
  v13 = v0[110];

  v4 = *(v0[99] + 8);
  v5 = v0[99];

  return v4();
}

uint64_t sub_268DC3B38()
{
  v9 = v0[142];
  v1 = v0[113];
  v2 = v0[112];
  v3 = v0[111];
  v0[99] = v0;
  (*(v2 + 8))(v1, v3);
  MEMORY[0x277D82BD8](v9);
  v10 = v0[145];
  v11 = v0[136];
  v4 = v10;
  v0[103] = v10;
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  v5 = v0[114];
  v12 = v0[113];
  v13 = v0[110];

  v6 = *(v0[99] + 8);
  v7 = v0[99];

  return v6();
}

uint64_t sub_268DC3CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  v10 = a2;
  v8 = a3;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v6 - v7;
  v17 = MEMORY[0x28223BE20](v11);
  v16 = v4;
  v15 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC768, &qword_268F9FFE0);
  v13 = sub_268F99B44();
  v12 = sub_268F99B24();
  sub_268DC5E7C(v13, v12, v14);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  return sub_268F99BA4();
}

uint64_t sub_268DC3DF0(void *a1)
{
  v2 = [a1 catId];
  v3 = sub_268F9AE24();
  MEMORY[0x277D82BD8](v2);
  return v3;
}

uint64_t sub_268DC3E60(uint64_t a1, uint64_t a2)
{
  v3[28] = v2;
  v3[27] = a2;
  v3[26] = a1;
  v3[17] = v3;
  v3[18] = 0;
  v3[19] = 0;
  v3[20] = 0;
  v3[22] = 0;
  v3[23] = 0;
  v3[25] = 0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v3[30] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v7 = sub_268F999F4();
  v3[32] = v7;
  v14 = *(v7 - 8);
  v3[33] = v14;
  v8 = *(v14 + 64) + 15;
  v3[34] = swift_task_alloc();
  v9 = *(*(sub_268F99834() - 8) + 64) + 15;
  v3[35] = swift_task_alloc();
  v10 = sub_268F99BC4();
  v3[36] = v10;
  v15 = *(v10 - 8);
  v3[37] = v15;
  v11 = *(v15 + 64) + 15;
  v3[38] = swift_task_alloc();
  v3[18] = a2;
  v3[19] = v2;
  v12 = v3[17];

  return MEMORY[0x2822009F8](sub_268DC40A8, 0);
}

uint64_t sub_268DC40A8()
{
  v49 = v0[27];
  v0[17] = v0;
  sub_268F9B284();
  v1 = sub_268DC7D28();
  v48 = *v1;
  MEMORY[0x277D82BE0](*v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14();

  MEMORY[0x277D82BD8](v48);
  sub_268F999C4();
  v50 = sub_268F999B4();
  v0[39] = v50;
  v0[20] = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC768, &qword_268F9FFE0);
  v51 = sub_268F99B24();
  v52 = [v51 errorDetail];
  if (v52)
  {
    v43 = sub_268F9AE24();
    v44 = v2;
    MEMORY[0x277D82BD8](v52);
    v45 = v43;
    v46 = v44;
  }

  else
  {
    v45 = 0;
    v46 = 0;
  }

  MEMORY[0x277D82BD8](v51);
  v42 = sub_268E07564(v45, v46, 0, 0);

  if (v42)
  {
    v37 = v47[28];
    v38 = v47[27];
    sub_268F9B284();
    v3 = sub_268DC7D28();
    v36 = *v3;
    MEMORY[0x277D82BE0](*v3);
    sub_268F9B734();
    sub_268F9AC14();

    MEMORY[0x277D82BD8](v36);
    v47[40] = *(v37 + 112);

    v41 = sub_268F99B34();
    v47[41] = v41;
    v39 = sub_268F99B44();
    v47[42] = v39;
    v40 = sub_268F99B24();
    v47[43] = v40;
    v4 = swift_task_alloc();
    v47[44] = v4;
    *v4 = v47[17];
    v4[1] = sub_268DC4A90;

    return sub_268CFB5FC(v41, v39, v40);
  }

  else
  {
    v34 = v47[34];
    v29 = v47[31];
    v35 = v47[30];
    v28 = v47[27];
    v33 = *(v47[28] + 112);

    v32 = sub_268F99B34();
    v31 = sub_268F99B44();
    v30 = sub_268F99B24();
    sub_268CE5980(v32, v31, v30, v29);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);

    sub_268D2DFAC(v35, (v47 + 21), v34);
    v25 = v47[28];
    v22 = v47[27];
    v24 = sub_268F99B44();
    v23 = sub_268F99B24();
    v27 = sub_268DC53BC(v24, v23);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    v47[23] = v27;
    sub_268CDE730(v25 + 16, (v47 + 2));
    sub_268CDE730(v25 + 16, (v47 + 7));
    v26 = v47[11];
    __swift_project_boxed_opaque_existential_1(v47 + 7, v47[10]);
    sub_268F997C4();
    v47[24] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2C0, &qword_268F9FFF0);
    sub_268D34954();
    sub_268D349B8();
    sub_268F9AF84();
    v16 = v47[34];
    v17 = v47[32];
    v14 = v47[29];
    v10 = v47[28];
    v9 = v47[27];
    v13 = v47[26];
    v15 = v47[33];
    v12 = sub_268F99B44();
    v11 = sub_268F99B24();
    sub_268DC5E7C(v12, v11, v14);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    v47[12] = 0;
    v47[13] = 0;
    v47[14] = 0;
    v47[15] = 0;
    v47[16] = 0;
    sub_268CDD6D4();
    _swift_stdlib_has_malloc_size();
    sub_268D31B10();
    v13[3] = sub_268F99C74();
    v13[4] = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v13);
    sub_268F998D4();

    sub_268D28414(v47 + 12);
    sub_268D34AC0(v14);

    __swift_destroy_boxed_opaque_existential_0(v47 + 7);
    __swift_destroy_boxed_opaque_existential_0(v47 + 2);

    (*(v15 + 8))(v16, v17);

    v6 = v47[38];
    v18 = v47[35];
    v19 = v47[34];
    v20 = v47[31];
    v21 = v47[29];

    v7 = *(v47[17] + 8);
    v8 = v47[17];

    return v7();
  }
}