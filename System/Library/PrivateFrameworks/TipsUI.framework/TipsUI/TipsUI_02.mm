uint64_t sub_220B70F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v51 = sub_220BCCA10();
  v3 = *(v51 - 8);
  v4 = MEMORY[0x28223BE20](v51);
  v50 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF774E0);
  v8 = MEMORY[0x28223BE20](v49);
  v52 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v48 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF774E8);
  v12 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v48 = (&v48 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77398);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v48 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF774F0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v48 - v21;
  v23 = a1 + *(type metadata accessor for DeviceExpertClientView() + 28);
  v24 = *v23;
  v25 = *(v23 + 8);
  LOBYTE(v56) = v24;
  *(&v56 + 1) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77368);
  sub_220BCD2F0();
  if (v55)
  {
    goto LABEL_2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773C8);
  sub_220BCD2F0();
  v27 = type metadata accessor for DeviceExpertViewModel();
  v26 = 1;
  v28 = (*(*(v27 - 8) + 48))(v16, 1, v27);
  sub_220B463F4(v16, &qword_27CF77398);
  if (v28 == 1)
  {
    goto LABEL_9;
  }

  v29 = [objc_opt_self() tps_userRegion];
  v30 = sub_220BCDBA0();
  v32 = v31;

  if (v30 == 28259 && v32 == 0xE200000000000000)
  {

LABEL_8:
    v34 = sub_220BCCA50();
    v35 = v48;
    *v48 = v34;
    *(v35 + 8) = 0x4000000000000000;
    *(v35 + 16) = 0;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77500);
    sub_220B71F7C(v35 + *(v36 + 44));
    v37 = sub_220BCCE60();
    KeyPath = swift_getKeyPath();
    v39 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77508) + 36));
    *v39 = KeyPath;
    v39[1] = v37;
    sub_220BCD470();
    sub_220BCC6C0();
    v40 = (v35 + *(v54 + 36));
    v41 = v57;
    *v40 = v56;
    v40[1] = v41;
    v40[2] = v58;
    sub_220B46540(v35, v22, &qword_27CF774E8);
    v26 = 0;
    goto LABEL_9;
  }

  v33 = sub_220BCE130();

  if (v33)
  {
    goto LABEL_8;
  }

LABEL_2:
  v26 = 1;
LABEL_9:
  (*(v12 + 56))(v22, v26, 1, v54);
  sub_220B715DC(a1, v11);
  sub_220BCCA00();
  v42 = v51;
  (*(v3 + 16))(v50, v7, v51);
  sub_220B72FF8(&qword_27CF77420, MEMORY[0x277CE0068]);
  v43 = sub_220BCC6D0();
  (*(v3 + 8))(v7, v42);
  *&v11[*(v49 + 36)] = v43;
  sub_220B462DC(v22, v20, &qword_27CF774F0);
  v44 = v52;
  sub_220B462DC(v11, v52, &qword_27CF774E0);
  v45 = v53;
  sub_220B462DC(v20, v53, &qword_27CF774F0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF774F8);
  sub_220B462DC(v44, v45 + *(v46 + 48), &qword_27CF774E0);
  sub_220B463F4(v11, &qword_27CF774E0);
  sub_220B463F4(v22, &qword_27CF774F0);
  sub_220B463F4(v44, &qword_27CF774E0);
  return sub_220B463F4(v20, &qword_27CF774F0);
}

uint64_t sub_220B715DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77540);
  MEMORY[0x28223BE20](v58);
  v50 = v48 - v3;
  v4 = type metadata accessor for SummarizedAnswerViewModel();
  MEMORY[0x28223BE20](v4 - 8);
  v56 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77548);
  MEMORY[0x28223BE20](v61);
  v62 = v48 - v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77550);
  MEMORY[0x28223BE20](v54);
  v55 = v48 - v7;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77558);
  MEMORY[0x28223BE20](v60);
  v57 = v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77070);
  MEMORY[0x28223BE20](v9 - 8);
  v52 = (v48 - v10);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77560);
  MEMORY[0x28223BE20](v53);
  v49 = v48 - v11;
  v12 = type metadata accessor for ListAnswerViewModel();
  MEMORY[0x28223BE20](v12 - 8);
  v51 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77398);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v48 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77568);
  MEMORY[0x28223BE20](v17);
  v59 = v48 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77570);
  MEMORY[0x28223BE20](v19);
  v21 = v48 - v20;
  v22 = (a1 + *(type metadata accessor for DeviceExpertClientView() + 28));
  v23 = *v22;
  v24 = *(v22 + 1);
  LOBYTE(v65) = *v22;
  v66 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77368);
  sub_220BCD2F0();
  if (v68 == 1)
  {
    v68 = v23;
    v69 = v24;
    sub_220BCD310();
    v25 = v65;
    v26 = v66;
    v27 = v67;
    KeyPath = swift_getKeyPath();
    v68 = 0;
    v64 = 0;
    sub_220BCD2E0();
    v29 = v65;
    v30 = v66;
    v31 = v68;
    *v21 = KeyPath;
    *(v21 + 8) = 0u;
    *(v21 + 24) = 0u;
    v21[40] = v31;
    v21[48] = v29;
    *(v21 + 7) = v30;
    *(v21 + 8) = v25;
    *(v21 + 9) = v26;
    v21[80] = v27;
    *(v21 + 88) = xmmword_220BD2C80;
    swift_storeEnumTagMultiPayload();
    sub_220B73040();
    sub_220B73094();
    return sub_220BCCC30();
  }

  v48[1] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773C8);
  sub_220BCD2F0();
  v33 = type metadata accessor for DeviceExpertViewModel();
  if ((*(*(v33 - 8) + 48))(v16, 1, v33) == 1)
  {
    goto LABEL_7;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v42 = v51;
    sub_220B73120(v16, v51, type metadata accessor for ListAnswerViewModel);
    v43 = v49;
    sub_220B73188(v42, v49, type metadata accessor for ListAnswerViewModel);
    LOBYTE(v65) = v23;
    v66 = v24;
    sub_220BCD2F0();
    v44 = v68;
    v45 = swift_getKeyPath();
    v46 = v52;
    *v52 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF770A8);
    swift_storeEnumTagMultiPayload();
    sub_220B9CEE4((v44 & 1) == 0, v46, (v43 + *(v53 + 36)));
    sub_220B462DC(v43, v55, &qword_27CF77560);
    swift_storeEnumTagMultiPayload();
    sub_220B72E20();
    sub_220B72F0C();
    v47 = v57;
    sub_220BCCC30();
    sub_220B462DC(v47, v62, &qword_27CF77558);
    swift_storeEnumTagMultiPayload();
    sub_220B72D94();
    v41 = v59;
    sub_220BCCC30();
    sub_220B463F4(v47, &qword_27CF77558);
    sub_220B463F4(v43, &qword_27CF77560);
    sub_220B731F0(v51, type metadata accessor for ListAnswerViewModel);
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_7:
    swift_storeEnumTagMultiPayload();
    sub_220B72D94();
    v41 = v59;
    sub_220BCCC30();
  }

  else
  {
    v35 = v56;
    sub_220B73120(v16, v56, type metadata accessor for SummarizedAnswerViewModel);
    v36 = v50;
    sub_220B73188(v35, v50, type metadata accessor for SummarizedAnswerViewModel);
    LOBYTE(v65) = v23;
    v66 = v24;
    sub_220BCD2F0();
    v37 = v68;
    v38 = swift_getKeyPath();
    v39 = v52;
    *v52 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF770A8);
    swift_storeEnumTagMultiPayload();
    sub_220B9CEE4((v37 & 1) == 0, v39, (v36 + *(v58 + 36)));
    sub_220B462DC(v36, v55, &qword_27CF77540);
    swift_storeEnumTagMultiPayload();
    sub_220B72E20();
    sub_220B72F0C();
    v40 = v57;
    sub_220BCCC30();
    sub_220B462DC(v40, v62, &qword_27CF77558);
    swift_storeEnumTagMultiPayload();
    sub_220B72D94();
    v41 = v59;
    sub_220BCCC30();
    sub_220B463F4(v40, &qword_27CF77558);
    sub_220B463F4(v36, &qword_27CF77540);
    sub_220B731F0(v56, type metadata accessor for SummarizedAnswerViewModel);
  }

LABEL_8:
  sub_220B462DC(v41, v21, &qword_27CF77568);
  swift_storeEnumTagMultiPayload();
  sub_220B73040();
  sub_220B73094();
  sub_220BCCC30();
  return sub_220B463F4(v41, &qword_27CF77568);
}

uint64_t sub_220B71F7C@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77510);
  v1 = *(v30 - 8);
  v2 = MEMORY[0x28223BE20](v30);
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF774D8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  *&v42[0] = sub_220BCD280();
  sub_220BCCDF0();
  sub_220BCCFE0();

  if (qword_27CF76920 != -1)
  {
    swift_once();
  }

  v12 = &v11[*(v6 + 36)];
  *v12 = xmmword_27CF77798;
  *(v12 + 8) = *(&xmmword_27CF77798 + 8);
  *(v12 + 24) = unk_27CF777B0;

  sub_220BCCAA0();
  sub_220B6AECC();
  if (!sub_220BCDEC0())
  {
    v13 = [objc_opt_self() mainBundle];
  }

  v14 = sub_220BCCF70();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_220BCD470();
  sub_220BCC6C0();
  v18 &= 1u;
  v44 = v18;
  v21 = sub_220BCCCE0();
  *&v33 = v14;
  *(&v33 + 1) = v16;
  LOBYTE(v34) = v18;
  *(&v34 + 1) = v20;
  v35 = v39;
  v36 = v40;
  v37 = v41;
  v38 = v21;
  sub_220BCCDF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77518);
  sub_220B72C58();
  sub_220BCCFE0();
  v42[2] = v35;
  v42[3] = v36;
  v42[4] = v37;
  v43 = v38;
  v42[0] = v33;
  v42[1] = v34;
  sub_220B463F4(v42, &qword_27CF77518);
  v22 = v11;
  sub_220B462DC(v11, v9, &qword_27CF774D8);
  v23 = *(v1 + 16);
  v24 = v31;
  v25 = v30;
  v23(v31, v5, v30);
  v26 = v32;
  sub_220B462DC(v9, v32, &qword_27CF774D8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77538);
  v23((v26 + *(v27 + 48)), v24, v25);
  v28 = *(v1 + 8);
  v28(v5, v25);
  sub_220B463F4(v22, &qword_27CF774D8);
  v28(v24, v25);
  return sub_220B463F4(v9, &qword_27CF774D8);
}

uint64_t sub_220B7246C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for DeviceExpertClientView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_220B6F7AC(a1, a2, v6);
}

unint64_t sub_220B724EC()
{
  result = qword_27CF773D0;
  if (!qword_27CF773D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF773B8);
    sub_220B43830(&qword_27CF773D8, &qword_27CF773B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF773D0);
  }

  return result;
}

unint64_t sub_220B725A4()
{
  result = qword_27CF773E0;
  if (!qword_27CF773E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF773A8);
    sub_220B72FF8(&qword_27CF773E8, MEMORY[0x277D38DF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF773E0);
  }

  return result;
}

void sub_220B7269C()
{
  sub_220B7286C(319, &qword_27CF772E0, &type metadata for DEViewEnvironment, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_220B72808(319, &qword_27CF77440, &qword_27CF773A8, &unk_220BD2CD0, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_220B72808(319, &qword_27CF77448, &qword_27CF77398, &unk_220BD2C90, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_220B7286C(319, &qword_27CF77450, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for TipsApp();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_220B72808(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_220B7286C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_220B728BC()
{
  result = qword_27CF77458;
  if (!qword_27CF77458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77428);
    sub_220B72974();
    sub_220B43830(&qword_27CF774A0, &qword_27CF774A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77458);
  }

  return result;
}

unint64_t sub_220B72974()
{
  result = qword_27CF77460;
  if (!qword_27CF77460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF773F8);
    sub_220B72A30();
    sub_220B72FF8(&qword_27CF77498, type metadata accessor for AttributionActionModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77460);
  }

  return result;
}

unint64_t sub_220B72A30()
{
  result = qword_27CF77468;
  if (!qword_27CF77468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF773F0);
    sub_220B72AE8();
    sub_220B43830(&qword_27CF77490, &qword_27CF77418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77468);
  }

  return result;
}

unint64_t sub_220B72AE8()
{
  result = qword_27CF77470;
  if (!qword_27CF77470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77410);
    sub_220B72BA0();
    sub_220B43830(&qword_27CF76C70, &qword_27CF76C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77470);
  }

  return result;
}

unint64_t sub_220B72BA0()
{
  result = qword_27CF77478;
  if (!qword_27CF77478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77408);
    sub_220B43830(&qword_27CF77480, &qword_27CF77488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77478);
  }

  return result;
}

unint64_t sub_220B72C58()
{
  result = qword_27CF77520;
  if (!qword_27CF77520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77518);
    sub_220B72D10();
    sub_220B43830(&qword_27CF76B30, &qword_27CF76B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77520);
  }

  return result;
}

unint64_t sub_220B72D10()
{
  result = qword_27CF77528;
  if (!qword_27CF77528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77528);
  }

  return result;
}

unint64_t sub_220B72D94()
{
  result = qword_27CF77578;
  if (!qword_27CF77578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77558);
    sub_220B72E20();
    sub_220B72F0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77578);
  }

  return result;
}

unint64_t sub_220B72E20()
{
  result = qword_27CF77580;
  if (!qword_27CF77580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77560);
    sub_220B72FF8(&qword_27CF77588, type metadata accessor for ListAnswerView);
    sub_220B72FF8(&qword_27CF77590, type metadata accessor for LineByLineRevealModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77580);
  }

  return result;
}

unint64_t sub_220B72F0C()
{
  result = qword_27CF77598;
  if (!qword_27CF77598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77540);
    sub_220B72FF8(&qword_27CF775A0, type metadata accessor for SummarizedAnswerView);
    sub_220B72FF8(&qword_27CF77590, type metadata accessor for LineByLineRevealModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77598);
  }

  return result;
}

uint64_t sub_220B72FF8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_220B73040()
{
  result = qword_27CF775A8;
  if (!qword_27CF775A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF775A8);
  }

  return result;
}

unint64_t sub_220B73094()
{
  result = qword_27CF775B0;
  if (!qword_27CF775B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77568);
    sub_220B72D94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF775B0);
  }

  return result;
}

uint64_t sub_220B73120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_220B73188(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_220B731F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_220B73250(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF773A8) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for DeviceExpertClientView() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_220B4EA34;

  return sub_220B6FA64(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t type metadata accessor for AttributedTextView()
{
  result = qword_2812C1B60;
  if (!qword_2812C1B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220B73420()
{
  sub_220B734DC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      sub_220B73528();
      if (v2 <= 0x3F)
      {
        sub_220B73580();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_220B734DC()
{
  result = qword_2812C08F8;
  if (!qword_2812C08F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812C08F8);
  }

  return result;
}

void sub_220B73528()
{
  if (!qword_2812C0B80)
  {
    type metadata accessor for ConstellationContentAttributes(255);
    v0 = sub_220BCDF10();
    if (!v1)
    {
      atomic_store(v0, &qword_2812C0B80);
    }
  }
}

void sub_220B73580()
{
  if (!qword_2812C0858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF775C0);
    v0 = sub_220BCDF10();
    if (!v1)
    {
      atomic_store(v0, &qword_2812C0858);
    }
  }
}

id sub_220B7362C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76F40);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - v5;
  v7 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  LODWORD(v8) = 1132068864;
  [v7 setContentCompressionResistancePriority:0 forAxis:v8];
  LODWORD(v9) = 1144750080;
  [v7 setContentHuggingPriority:1 forAxis:v9];
  v10 = [objc_opt_self() clearColor];
  [v7 setBackgroundColor_];

  [v7 setClipsToBounds_];
  v11 = *(type metadata accessor for AttributedTextView() + 28);
  sub_220B462DC(v0 + v11, v6, &qword_27CF76F40);
  v12 = type metadata accessor for ConstellationContentAttributes(0);
  v13 = *(*(v12 - 8) + 48);
  if (v13(v6, 1, v12) == 1)
  {
    sub_220B463F4(v6, &qword_27CF76F40);
    v14 = 0;
  }

  else
  {
    v14 = *(v6 + 11);
    sub_220B5752C(v6);
  }

  sub_220B462DC(v0 + v11, v4, &qword_27CF76F40);
  if (v13(v4, 1, v12) == 1)
  {
    sub_220B463F4(v4, &qword_27CF76F40);
    v15 = 0;
  }

  else
  {
    v15 = *(v4 + 12);
    sub_220B5752C(v4);
  }

  [v7 setNumberOfLines_];
  [v7 setLineBreakMode_];
  return v7;
}

uint64_t sub_220B738D4(void *a1)
{
  v61 = a1;
  v59 = sub_220BCC3E0();
  MEMORY[0x28223BE20](v59);
  v58 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF775C8);
  MEMORY[0x28223BE20](v3);
  v62 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76F40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v48 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF775D0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v57 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v56 = &v48 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v48 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v60 = &v48 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - v18;
  v20 = sub_220BCC070();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v63 = &v48 - v25;
  v26 = type metadata accessor for AttributedTextView();
  sub_220B462DC(v1 + *(v26 + 28), v7, &qword_27CF76F40);
  v27 = type metadata accessor for ConstellationContentAttributes(0);
  if ((*(*(v27 - 8) + 48))(v7, 1, v27) == 1)
  {
    sub_220B463F4(v7, &qword_27CF76F40);
    (*(v21 + 56))(v19, 1, 1, v20);
    return sub_220B463F4(v19, &qword_27CF775D0);
  }

  sub_220B462DC(&v7[*(v27 + 60)], v19, &qword_27CF775D0);
  sub_220B5752C(v7);
  v28 = *(v21 + 48);
  if (v28(v19, 1, v20) == 1)
  {
    return sub_220B463F4(v19, &qword_27CF775D0);
  }

  v30 = *(v21 + 32);
  v31 = v63;
  v50 = v21 + 32;
  v48 = v24;
  v49 = v30;
  v30(v63, v19, v20);
  v32 = [v61 traitCollection];
  v33 = v60;
  MEMORY[0x223D92BF0]();

  v34 = *(v21 + 16);
  v54 = v21 + 16;
  v52 = v34;
  v34(v15, v31, v20);
  v35 = *(v21 + 56);
  v53 = v21 + 56;
  v51 = v35;
  v35(v15, 0, 1, v20);
  v36 = *(v3 + 48);
  v37 = v62;
  sub_220B462DC(v33, v62, &qword_27CF775D0);
  v55 = v36;
  sub_220B462DC(v15, v37 + v36, &qword_27CF775D0);
  if (v28(v37, 1, v20) == 1)
  {
    sub_220B463F4(v15, &qword_27CF775D0);
    v38 = v62;
    sub_220B463F4(v33, &qword_27CF775D0);
    if (v28((v38 + v55), 1, v20) == 1)
    {
      sub_220B463F4(v38, &qword_27CF775D0);
      return (*(v21 + 8))(v63, v20);
    }

    goto LABEL_10;
  }

  v39 = v56;
  sub_220B462DC(v37, v56, &qword_27CF775D0);
  v40 = v55;
  if (v28((v37 + v55), 1, v20) == 1)
  {
    sub_220B463F4(v15, &qword_27CF775D0);
    v38 = v62;
    sub_220B463F4(v60, &qword_27CF775D0);
    (*(v21 + 8))(v39, v20);
LABEL_10:
    sub_220B463F4(v38, &qword_27CF775C8);
LABEL_11:
    v41 = v57;
    v42 = v63;
    v52(v57, v63, v20);
    v51(v41, 0, 1, v20);
    sub_220BCDE90();
    sub_220BCC3D0();
    sub_220BCDEA0();
    return (*(v21 + 8))(v42, v20);
  }

  v43 = v37 + v40;
  v44 = v48;
  v49(v48, v43, v20);
  sub_220B742C4(&qword_27CF775D8, MEMORY[0x277CC9740]);
  v45 = v37;
  v46 = sub_220BCDB40();
  v47 = *(v21 + 8);
  v47(v44, v20);
  sub_220B463F4(v15, &qword_27CF775D0);
  sub_220B463F4(v60, &qword_27CF775D0);
  v47(v39, v20);
  sub_220B463F4(v45, &qword_27CF775D0);
  if ((v46 & 1) == 0)
  {
    goto LABEL_11;
  }

  return (v47)(v63, v20);
}

uint64_t sub_220B74074(void *a1)
{
  [a1 setAttributedText_];

  return sub_220B738D4(a1);
}

double sub_220B740B8(uint64_t a1, char a2, int a3, int a4, id a5)
{
  if (a2)
  {
    [a5 frame];
    Width = CGRectGetWidth(v8);
  }

  else
  {
    Width = *&a1;
  }

  [a5 setPreferredMaxLayoutWidth_];
  [a5 sizeThatFits_];
  if (Width < result)
  {
    return Width;
  }

  return result;
}

uint64_t sub_220B74144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220B742C4(&qword_2812C1B70, type metadata accessor for AttributedTextView);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_220B741D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220B742C4(&qword_2812C1B70, type metadata accessor for AttributedTextView);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_220B7426C()
{
  sub_220B742C4(&qword_2812C1B70, type metadata accessor for AttributedTextView);
  sub_220BCCBF0();
  __break(1u);
}

uint64_t sub_220B742C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220B7430C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_220BCD630();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF775E0);
  v2[10] = swift_task_alloc();
  v4 = sub_220BCC1D0();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = sub_220BCC110();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220B744BC, 0, 0);
}

uint64_t sub_220B744BC()
{
  v1 = sub_220BCC130();
  v2 = v1;
  v3 = *(v1 + 16);
  if (!v3)
  {
LABEL_16:

    v25 = v0[1];

    return v25();
  }

  v4 = 0;
  v5 = v0[15];
  v6 = v0[12];
  v33 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v32 = *MEMORY[0x277D38DC8];
  v7 = (v5 + 8);
  v28 = (v6 + 8);
  v29 = (v6 + 32);
  v30 = *(v1 + 16);
  v31 = v1;
  while (1)
  {
    if (v4 >= *(v2 + 16))
    {
      __break(1u);
      return MEMORY[0x2821D9638]();
    }

    v9 = v0[10];
    (*(v5 + 16))(v0[16], v33 + *(v5 + 72) * v4, v0[14]);
    sub_220BCC100();
    v10 = sub_220BCC0F0();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      break;
    }

    v8 = v0[10];
    (*v7)(v0[16], v0[14]);
    sub_220B74CBC(v8);
LABEL_4:
    if (v3 == ++v4)
    {
      goto LABEL_16;
    }
  }

  v12 = (*(v11 + 88))(v0[10], v10);
  v13 = v0[10];
  if (v12 != v32)
  {
    (*v7)(v0[16], v0[14]);
    (*(v11 + 8))(v13, v10);
    goto LABEL_4;
  }

  v14 = v0[13];
  v15 = v0[11];
  (*(v11 + 96))(v0[10], v10);
  (*v29)(v14, v13, v15);
  v16 = sub_220BCC1C0();
  if (qword_27CF76908 != -1)
  {
    v23 = v16;
    v24 = v17;
    swift_once();
    v16 = v23;
    v17 = v24;
  }

  v18 = v0[16];
  v20 = v0[13];
  v19 = v0[14];
  v21 = v0[11];
  if (v16 == qword_27CF7B298 && v17 == unk_27CF7B2A0)
  {

    (*v28)(v20, v21);
    (*v7)(v18, v19);
    v3 = v30;
    v2 = v31;
    goto LABEL_4;
  }

  v22 = sub_220BCE130();

  (*v28)(v20, v21);
  (*v7)(v18, v19);
  v3 = v30;
  v2 = v31;
  if (v22)
  {
    goto LABEL_4;
  }

  v27 = swift_task_alloc();
  v0[17] = v27;
  *v27 = v0;
  v27[1] = sub_220B748CC;

  return MEMORY[0x2821D9638]();
}

uint64_t sub_220B748CC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = sub_220B74A90;
  }

  else
  {
    *(v4 + 152) = a1;
    v5 = sub_220B749F4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_220B749F4()
{
  *(v0[6] + 16) = v0[19];

  v1 = v0[1];

  return v1();
}

uint64_t sub_220B74A90()
{
  v1 = v0[18];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  sub_220BCD620();
  sub_220BCDFB0();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x223D929B0](0xD000000000000027, 0x8000000220BD7CE0);
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76DA8);
  sub_220BCE070();
  sub_220BCD9E0();

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

void sub_220B74BF4()
{
  v0 = [objc_opt_self() deviceGuideIdentifier];
  v1 = sub_220BCDBA0();
  v3 = v2;

  qword_27CF7B298 = v1;
  unk_27CF7B2A0 = v3;
}

uint64_t sub_220B74C58()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_220B74CBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF775E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ContentMessageView.init(with:maxWidth:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

__n128 ContentMessageView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF775E8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-v5];
  v7 = v1[1];
  v17 = *v1;
  v18 = v7;
  v15 = v17;
  v16 = v7;
  v13 = v17;
  v14 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF775F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF775F8);
  sub_220B43830(&qword_27CF77600, &qword_27CF775F0);
  sub_220B757D0();
  sub_220BCCCB0();
  sub_220BCD460();
  sub_220BCC880();
  (*(v4 + 32))(a1, v6, v3);
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77620) + 36);
  v9 = v24;
  *(v8 + 64) = v23;
  *(v8 + 80) = v9;
  *(v8 + 96) = v25;
  v10 = v20;
  *v8 = v19;
  *(v8 + 16) = v10;
  result = v22;
  *(v8 + 32) = v21;
  *(v8 + 48) = result;
  return result;
}

uint64_t sub_220B75008()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77638);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77640);
  sub_220B75BCC();
  swift_getOpaqueTypeConformance2();
  return sub_220BCD2D0();
}

uint64_t sub_220B750FC(void *a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77640);
  MEMORY[0x28223BE20](v4);
  v6 = (&v15 - v5);

  v7 = sub_220BCD260();
  v8 = (v6 + *(v4 + 36));
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C68) + 28);
  v10 = *MEMORY[0x277CE1048];
  v11 = sub_220BCD2A0();
  (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
  *v8 = swift_getKeyPath();
  *v6 = v7;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  sub_220B75BCC();
  v13 = a1;
  sub_220BCD060();

  return sub_220B463F4(v6, &qword_27CF77640);
}

uint64_t sub_220B752D4(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR___ContentMessageViewModel_debugActionHandler);
  result = swift_beginAccess();
  v3 = *v1;
  if (*v1)
  {

    v3(v4);
    return sub_220B3A128(v3);
  }

  return result;
}

uint64_t sub_220B7534C@<X0>(uint64_t a1@<X8>)
{
  sub_220B43454();

  result = sub_220BCCF80();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_220B753E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77618);
  v4 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = sub_220BCBF80();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v16 = OBJC_IVAR___ContentMessageViewModel_settingsURL;
  swift_beginAccess();
  sub_220B57DC0(a1 + v16, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_220B463F4(v8, &qword_27CF76C90);
    v17 = 1;
LABEL_6:
    v26 = v32;
    return (*(v4 + 56))(a2, v17, 1, v26);
  }

  v30 = a2;
  v18 = *(v10 + 32);
  v18(v15, v8, v9);
  v19 = (a1 + OBJC_IVAR___ContentMessageViewModel_settingsText);
  v20 = *(a1 + OBJC_IVAR___ContentMessageViewModel_settingsText + 8);
  if (!v20)
  {
    (*(v10 + 8))(v15, v9);
    v17 = 1;
    a2 = v30;
    goto LABEL_6;
  }

  v29 = *v19;
  (*(v10 + 16))(v13, v15, v9);
  v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v22 = swift_allocObject();
  v23 = (v18)(v22 + v21, v13, v9);
  MEMORY[0x28223BE20](v23);
  *(&v28 - 2) = v29;
  *(&v28 - 1) = v20;

  v24 = v31;
  sub_220BCD330();

  (*(v10 + 8))(v15, v9);
  a2 = v30;
  v25 = v32;
  (*(v4 + 32))(v30, v24, v32);
  v26 = v25;
  v17 = 0;
  return (*(v4 + 56))(a2, v17, 1, v26);
}

unint64_t sub_220B757D0()
{
  result = qword_27CF77608;
  if (!qword_27CF77608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF775F8);
    sub_220B43830(&qword_27CF77610, &qword_27CF77618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77608);
  }

  return result;
}

void sub_220B7589C()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    v2 = [objc_allocWithZone(MEMORY[0x277CC1F00]) init];
    [v2 setSensitive_];
    v3 = sub_220BCBF20();
    [v1 openURL:v3 configuration:v2 completionHandler:0];
  }
}

uint64_t sub_220B75974@<X0>(uint64_t a1@<X8>)
{
  sub_220B43454();

  result = sub_220BCCF80();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_220B759E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_220B75A2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_220B75A78()
{
  result = qword_27CF77628;
  if (!qword_27CF77628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77620);
    sub_220B43830(&qword_27CF77630, &qword_27CF775E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77628);
  }

  return result;
}

void sub_220B75B30()
{
  sub_220BCBF80();

  sub_220B7589C();
}

unint64_t sub_220B75BCC()
{
  result = qword_27CF77648;
  if (!qword_27CF77648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77640);
    sub_220B43830(&qword_27CF76C60, &qword_27CF76C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77648);
  }

  return result;
}

unint64_t sub_220B75CB0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_220B75CE4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_220B75CE4(unint64_t result)
{
  if (result > 7)
  {
    return 0;
  }

  return result;
}

unint64_t sub_220B75CF8()
{
  result = qword_27CF77650;
  if (!qword_27CF77650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77650);
  }

  return result;
}

uint64_t ConstellationContentView.init(rawContent:language:assetsBaseURL:assetFileInfoManager:attributes:size:maxWidth:textIsSelectable:delegate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t *a9@<X8>, double a10@<D0>, double a11@<D1>, unsigned __int8 a12, uint64_t a13, uint64_t a14)
{
  v45 = a8;
  v41 = a6;
  v46 = a1;
  v43 = a14;
  v44 = a7;
  v42 = a12;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76F40);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v40 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v40 - v25;
  type metadata accessor for ConstellationContentParser(0);
  swift_allocObject();
  sub_220B85EDC();
  sub_220B76470(&qword_2812C0F48, type metadata accessor for ConstellationContentParser);
  v27 = sub_220BCC7A0();
  v29 = v28;
  *a9 = v27;
  a9[1] = v28;
  v30 = (v28 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_language);
  *v30 = a2;
  v30[1] = a3;

  v31 = a4;
  sub_220B462DC(a4, v26, &qword_27CF76C90);
  v32 = OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_assetsBaseURL;
  swift_beginAccess();
  sub_220B761B8(v26, v29 + v32, &qword_27CF76C90);
  swift_endAccess();
  v33 = *(v29 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_assetFileInfoManager);
  *(v29 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_assetFileInfoManager) = a5;
  v34 = a5;

  v35 = v41;
  sub_220B462DC(v41, v23, &qword_27CF76F40);
  v36 = OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_attributes;
  swift_beginAccess();
  sub_220B761B8(v23, v29 + v36, &qword_27CF76F40);
  swift_endAccess();
  v37 = (v29 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_viewSize);
  *v37 = a10;
  v37[1] = a11;
  v38 = v29 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_maxWidth;
  *v38 = v44;
  *(v38 + 8) = v45 & 1;
  *(v29 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_textIsSelectable) = v42;
  *(v29 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_delegate + 8) = v43;
  swift_unknownObjectWeakAssign();
  *(v29 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_rawContent) = v46;

  sub_220B8073C();

  swift_unknownObjectRelease();
  sub_220B463F4(v35, &qword_27CF76F40);
  return sub_220B463F4(v31, &qword_27CF76C90);
}

uint64_t ConstellationContentView.body.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_220BCC4C0();
}

uint64_t sub_220B76130()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_220BCC4C0();
}

uint64_t sub_220B761B8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_220B76220()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();
}

uint64_t sub_220B7629C(uint64_t a1)
{
  v2 = type metadata accessor for AttributedTextView();
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_220B764B8(a1, &v9 - v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220B764B8(v7, v5);

  sub_220BCC4D0();
  return sub_220B7651C(v7);
}

uint64_t sub_220B763DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_220B76424(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220B76470(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220B764B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedTextView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220B7651C(uint64_t a1)
{
  v2 = type metadata accessor for AttributedTextView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ListItemDocumentBodyView()
{
  result = qword_27CF77680;
  if (!qword_27CF77680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220B765EC()
{
  sub_220B767E8(319, &qword_27CF76B70, MEMORY[0x277CE0358], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_220B767E8(319, &qword_27CF771D8, MEMORY[0x277CDD6C8], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_220B7286C(319, &qword_27CF77690, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_220B43CD4();
        if (v3 <= 0x3F)
        {
          sub_220B43D68();
          if (v4 <= 0x3F)
          {
            sub_220BCCF10();
            if (v5 <= 0x3F)
            {
              sub_220B7286C(319, &qword_27CF771E8, MEMORY[0x277D83B88], MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
              {
                sub_220B767E8(319, &qword_27CF771F0, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
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

void sub_220B767E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_220B76868@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_220B79BEC(&qword_27CF76CD0, type metadata accessor for ExternalKeyboardMonitor);
  sub_220BCC300();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_220B76938@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_220BCC9D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF771B8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ListItemDocumentBodyView();
  sub_220B462DC(v1 + *(v10 + 20), v9, &qword_27CF771B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_220BCC5A0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_220BCDDC0();
    v13 = sub_220BCCD50();
    sub_220BCC3C0();

    sub_220BCC9C0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_220B76B40()
{
  v0 = sub_220BCCE40();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220BCCDB0();
  (*(v1 + 104))(v3, *MEMORY[0x277CE0A10], v0);
  sub_220BCCE50();

  (*(v1 + 8))(v3, v0);
  v4 = sub_220BCCDC0();

  qword_27CF77658 = v4;
  return result;
}

uint64_t sub_220B76C64()
{
  if (qword_27CF76910 != -1)
  {
    swift_once();
  }

  v0 = sub_220BCCF50();
  v2 = v1;
  v4 = v3;
  v6 = v5;

  qword_27CF77660 = v0;
  *algn_27CF77668 = v2;
  byte_27CF77670 = v4 & 1;
  qword_27CF77678 = v6;
  return result;
}

void sub_220B76D20(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF776C8);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for ListItemDocumentBodyView();
  v9 = v8[5];
  *(a4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF771B8);
  swift_storeEnumTagMultiPayload();
  v10 = a4 + v8[6];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  sub_220BCCF00();
  v11 = a4 + v8[10];
  *v11 = xmmword_220BD3370;
  v11[16] = 0;
  *(v11 + 3) = MEMORY[0x277D84F90];
  v12 = v8[12];
  sub_220BCD2E0();
  *(a4 + v12) = v58;
  v13 = v8[13];
  sub_220BCD2E0();
  *(a4 + v13) = v58;
  v14 = a4 + v8[14];
  type metadata accessor for CGSize(0);
  sub_220BCD2E0();
  *v14 = v58;
  *(v14 + 2) = v59;
  v15 = (a4 + v8[7]);
  type metadata accessor for SearchResultsViewModel();
  sub_220B79BEC(&qword_2812C0F98, type metadata accessor for SearchResultsViewModel);
  v16 = a1;
  *v15 = sub_220BCC7A0();
  v15[1] = v17;
  *(a4 + v8[8]) = a2;
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v19 = v18;
    v57 = a3;
    v51 = a2;
    v20 = [v19 fullContent];
    v55 = v11;
    if (v20)
    {
      v21 = v20;
      v22 = [v20 title];

      if (v22)
      {
        sub_220BCDBA0();
      }
    }

    v53 = v16;
    sub_220B43454();
    v23 = sub_220BCCF80();
    v25 = v24;
    v27 = v26;
    if (qword_27CF76910 != -1)
    {
      swift_once();
    }

    v28 = sub_220BCCF50();
    v30 = v29;
    v32 = v31;
    v34 = v33;

    sub_220B5E8DC(v23, v25, v27 & 1);

    *v55 = v28;
    *(v55 + 1) = v30;
    v55[16] = v32 & 1;
    *(v55 + 3) = v34;
LABEL_15:
    a3 = v57;
    goto LABEL_16;
  }

  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (v35)
  {
    v36 = v35;
    v52 = a2;
    v37 = [v36 title];
    v56 = v11;
    v57 = a3;
    if (v37)
    {
      v38 = v37;
      sub_220BCDBA0();
    }

    v54 = v16;
    sub_220B43454();
    v39 = sub_220BCCF80();
    v41 = v40;
    v43 = v42;
    if (qword_27CF76910 != -1)
    {
      swift_once();
    }

    v44 = sub_220BCCF50();
    v46 = v45;
    v48 = v47;
    v50 = v49;

    sub_220B5E8DC(v39, v41, v43 & 1);

    *v56 = v44;
    *(v56 + 1) = v46;
    v56[16] = v48 & 1;
    *(v56 + 3) = v50;
    goto LABEL_15;
  }

LABEL_16:
  *(a4 + v8[11]) = a3;
}

__n128 sub_220B771C4@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77698);
  MEMORY[0x28223BE20](v3);
  v5 = v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF776A0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - v8;
  *v5 = sub_220BCCB20();
  *(v5 + 1) = 0x4008000000000000;
  v5[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF776A8);
  sub_220B7741C(v1, &v5[*(v10 + 44)]);
  sub_220B43830(&qword_27CF776B0, &qword_27CF77698);
  sub_220BCD050();
  sub_220B463F4(v5, &qword_27CF77698);
  sub_220BCD470();
  sub_220BCC880();
  (*(v7 + 32))(a1, v9, v6);
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF776B8) + 36);
  v12 = v15[5];
  *(v11 + 64) = v15[4];
  *(v11 + 80) = v12;
  *(v11 + 96) = v15[6];
  v13 = v15[1];
  *v11 = v15[0];
  *(v11 + 16) = v13;
  result = v15[3];
  *(v11 + 32) = v15[2];
  *(v11 + 48) = result;
  return result;
}

uint64_t sub_220B7741C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = sub_220BCCE40();
  v77 = *(v3 - 8);
  v78 = v3;
  MEMORY[0x28223BE20](v3);
  v76 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220BCC5A0();
  v6 = *(v5 - 8);
  v87 = v5;
  v88 = v6;
  MEMORY[0x28223BE20](v5);
  v92 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ListItemDocumentBodyView();
  v9 = (v8 - 8);
  v85 = *(v8 - 8);
  v91 = *(v85 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF776C0) - 8;
  v12 = MEMORY[0x28223BE20](v86);
  v89 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v98 = &v75 - v14;
  v15 = a1 + v9[12];
  v16 = *v15;
  v17 = *(v15 + 8);
  v18 = *(v15 + 16);
  v19 = *(v15 + 24);
  v127 = *(a1 + v9[14]);
  v97 = v19;

  v95 = v17;
  v96 = v16;
  sub_220B5E890(v16, v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77290);
  sub_220BCD2F0();
  *(&v93 + 1) = v102;
  *&v93 = swift_getKeyPath();
  v94 = v18;
  LOBYTE(v127) = v18;
  LOBYTE(v102) = 0;
  sub_220B77DC8(&v127);
  v83 = *(&v127 + 1);
  v84 = v127;
  v82 = v128;
  v20 = [*(a1 + v9[10]) identifier];
  v21 = sub_220BCDBA0();
  v23 = v22;

  v24 = *(a1 + v9[15]);
  v81 = a1;
  v102 = v24;
  sub_220BCD2F0();
  v25 = sub_220BCE120();
  v27 = v26;
  *&v102 = v21;
  *(&v102 + 1) = v23;

  MEMORY[0x223D929B0](v25, v27);

  v28 = v102;
  v79 = v11;
  v80 = type metadata accessor for ListItemDocumentBodyView;
  sub_220B79AC8(a1, v11, type metadata accessor for ListItemDocumentBodyView);
  v29 = (*(v85 + 80) + 16) & ~*(v85 + 80);
  v30 = swift_allocObject();
  sub_220B79528(v11, v30 + v29);
  v31 = sub_220BCD460();
  v33 = v32;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_220B7958C;
  *(v34 + 24) = v30;
  *&v111 = v84;
  *(&v111 + 1) = v83;
  v112[0] = v82;
  *&v112[8] = v28;
  *&v112[24] = sub_220B96260;
  *&v113 = 0;
  *(&v113 + 1) = v31;
  v114 = v33;
  v126 = v33;
  v124 = *&v112[16];
  v125 = v113;
  v122 = v111;
  v123 = *v112;
  v115[0] = v84;
  v115[1] = v83;
  v116 = v82;
  v117 = v28;
  v118 = sub_220B96260;
  v119 = 0;
  v120 = v31;
  v121 = v33;
  sub_220B462DC(&v111, &v127, &qword_27CF776D0);
  sub_220B463F4(v115, &qword_27CF776D0);
  v36 = v80;
  v35 = v81;
  v37 = v79;
  sub_220B79AC8(v81, v79, v80);
  v38 = swift_allocObject();
  sub_220B79528(v37, v38 + v29);
  v104 = v124;
  v105 = v125;
  v102 = v122;
  v103 = v123;
  *&v106 = v126;
  *(&v106 + 1) = sub_220B65A14;
  *&v107 = v34;
  *(&v107 + 1) = sub_220B79604;
  v108 = v38;
  v109 = 0;
  sub_220B76938(v92);
  sub_220B79AC8(v35, v37, v36);
  v39 = swift_allocObject();
  sub_220B79528(v37, v39 + v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF776D8);
  sub_220B798A0();
  sub_220B79BEC(&qword_27CF77260, MEMORY[0x277CDD6C8]);
  v40 = v98;
  v41 = v92;
  v42 = v87;
  sub_220BCD130();

  (*(v88 + 8))(v41, v42);
  v131 = v106;
  v132 = v107;
  v133 = v108;
  v134 = v109;
  v127 = v102;
  v128 = v103;
  v129 = v104;
  v130 = v105;
  sub_220B463F4(&v127, &qword_27CF776D8);
  *(v40 + *(v86 + 44)) = 0;
  v43 = sub_220B78DF8();
  if (!v44)
  {
    goto LABEL_7;
  }

  v45 = HIBYTE(v44) & 0xF;
  if ((v44 & 0x2000000000000000) == 0)
  {
    v45 = v43 & 0xFFFFFFFFFFFFLL;
  }

  if (!v45)
  {

LABEL_7:
    v60 = 0;
    v62 = 0;
    v66 = 0;
    v65 = 0;
    goto LABEL_8;
  }

  *&v102 = v43;
  *(&v102 + 1) = v44;
  sub_220B43454();
  v46 = sub_220BCCF80();
  v48 = v47;
  v50 = v49;
  v51 = [objc_opt_self() tertiaryLabelColor];
  sub_220BCD150();
  v52 = sub_220BCCF20();
  v54 = v53;
  v56 = v55;

  sub_220B5E8DC(v46, v48, v50 & 1);

  sub_220BCCE60();
  v58 = v76;
  v57 = v77;
  v59 = v78;
  (*(v77 + 104))(v76, *MEMORY[0x277CE0A10], v78);
  sub_220BCCE50();

  (*(v57 + 8))(v58, v59);
  v60 = sub_220BCCF50();
  v62 = v61;
  LOBYTE(v58) = v63;
  v65 = v64;

  sub_220B5E8DC(v52, v54, v56 & 1);

  v66 = v58 & 1;
  sub_220B5E890(v60, v62, v58 & 1);

LABEL_8:
  v67 = v89;
  sub_220B36C80(v98, v89);
  *&v99 = v96;
  *(&v99 + 1) = v95;
  LOBYTE(v100) = v94;
  *(&v100 + 1) = *v110;
  DWORD1(v100) = *&v110[3];
  *(&v100 + 1) = v97;
  *v101 = v93;
  *&v101[16] = 0;
  v101[18] = 1;
  v68 = v99;
  v69 = v100;
  v70 = v93;
  v71 = v90;
  *(v90 + 47) = *&v101[15];
  v71[1] = v69;
  v71[2] = v70;
  *v71 = v68;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77710);
  sub_220B36C80(v67, v71 + *(v72 + 48));
  v73 = (v71 + *(v72 + 64));
  sub_220B462DC(&v99, &v102, &qword_27CF77718);
  sub_220B65C50(v60, v62, v66, v65);
  sub_220B65C94(v60, v62, v66, v65);
  *v73 = v60;
  v73[1] = v62;
  v73[2] = v66;
  v73[3] = v65;
  sub_220B463F4(v98, &qword_27CF776C0);
  sub_220B65C94(v60, v62, v66, v65);
  sub_220B463F4(v67, &qword_27CF776C0);
  *&v102 = v96;
  *(&v102 + 1) = v95;
  LOBYTE(v103) = v94;
  *(&v103 + 1) = *v110;
  DWORD1(v103) = *&v110[3];
  *(&v103 + 1) = v97;
  v104 = v93;
  LOWORD(v105) = 0;
  BYTE2(v105) = 1;
  return sub_220B463F4(&v102, &qword_27CF77718);
}

uint64_t sub_220B77DC8@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v96 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76F40);
  MEMORY[0x28223BE20](v3 - 8);
  v95 = &v88 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v91 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v88 - v9;
  MEMORY[0x28223BE20](v8);
  v93 = &v88 - v11;
  v12 = type metadata accessor for ConstellationContentAttributes(0);
  v94 = *(v12 - 1);
  MEMORY[0x28223BE20](v12);
  v14 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_220B78EFC();
  v92 = v10;
  if (v15)
  {
    sub_220BCD1C0();
    v16 = sub_220BCD1E0();
  }

  else
  {
    v16 = sub_220BCD200();
  }

  v17 = [objc_opt_self() preferredFontForTextStyle_];
  v18 = type metadata accessor for ListItemDocumentBodyView();
  v100 = *(v1 + *(v18 + 52));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77290);
  sub_220BCD2F0();
  v19 = v97;
  v20 = v12[15];
  v21 = sub_220BCC070();
  v22 = &v14[v20];
  v23 = v2;
  (*(*(v21 - 8) + 56))(v22, 1, 1, v21);
  *v14 = v17;
  *(v14 + 1) = v16;
  *(v14 + 1) = 0u;
  *(v14 + 2) = 0u;
  *(v14 + 3) = 0u;
  *(v14 + 8) = 4;
  *(v14 + 9) = 0x4024000000000000;
  v14[80] = 1;
  *(v14 + 11) = v19;
  *(v14 + 12) = 4;
  v24 = &v14[v12[16]];
  *v24 = 1;
  v24[8] = 0;
  v14[v12[17]] = v15 & 1;
  *(v14 + 81) = 256;
  v25 = v18;
  v26 = *(v2 + *(v18 + 32));
  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    v28 = v27;
    v29 = v26;
    v91 = _s6TipsUI22SearchResultsViewModelC11bodyContent3forSaySDySSypGGSo6TPSTipC_tF_0(v28);
    v30 = v29;
    v31 = [v28 language];
    v32 = sub_220BCDBA0();
    v89 = v33;
    v90 = v32;

    v34 = [v28 fullContentAssets];
    v35 = [v34 baseURL];

    if (v35)
    {
      v36 = v92;
      sub_220BCBF30();

      v37 = 0;
    }

    else
    {
      v37 = 1;
      v36 = v92;
    }

    v63 = sub_220BCBF80();
    (*(*(v63 - 8) + 56))(v36, v37, 1, v63);
    v64 = v93;
    sub_220B58ECC(v36, v93);
    v65 = [v28 assetFileInfoManager];

    v66 = v95;
    sub_220B79AC8(v14, v95, type metadata accessor for ConstellationContentAttributes);
    (*(v94 + 56))(v66, 0, 1, v12);
    v67 = (v23 + *(v25 + 56));
    v69 = v67[1];
    v70 = v67[2];
    *&v100 = *v67;
    v68 = v100;
    *(&v100 + 1) = v69;
    v101 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77278);
    sub_220BCD2F0();
    v71 = v97;
    v72 = v98;
    *&v100 = v68;
    *(&v100 + 1) = v69;
    v101 = v70;
    sub_220BCD2F0();
    v94 = v97;
    type metadata accessor for ConstellationContentParser(0);
    swift_allocObject();
    sub_220B85EDC();
    sub_220B79BEC(&qword_2812C0F48, type metadata accessor for ConstellationContentParser);
    v73 = sub_220BCC7A0();
    v75 = v74;
    v76 = (v74 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_language);
    v77 = v89;
    *v76 = v90;
    v76[1] = v77;

    v78 = OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_assetsBaseURL;
    swift_beginAccess();
    sub_220B79B30(v64, v75 + v78, &qword_27CF76C90);
    swift_endAccess();
    v79 = *(v75 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_assetFileInfoManager);
    *(v75 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_assetFileInfoManager) = v65;
    v80 = v65;

    v81 = OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_attributes;
    swift_beginAccess();
    sub_220B79B30(v66, v75 + v81, &qword_27CF76F40);
    swift_endAccess();
    v82 = (v75 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_viewSize);
    *v82 = v71;
    v82[1] = v72;
    v83 = v75 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_maxWidth;
    *v83 = v94;
    *(v83 + 8) = 0;
    *(v75 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_textIsSelectable) = 1;
    *(v75 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_delegate + 8) = 0;
    swift_unknownObjectWeakAssign();
    *(v75 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_rawContent) = v91;

    sub_220B8073C();

    sub_220B463F4(v66, &qword_27CF76F40);
    sub_220B463F4(v64, &qword_27CF76C90);
    v97 = v73;
    v98 = v75;
    v99 = 0;
    sub_220B79B98();
    sub_220BCCC30();
  }

  else
  {
    objc_opt_self();
    v38 = swift_dynamicCastObjCClass();
    if (!v38)
    {
      result = sub_220B5752C(v14);
      v85 = 0uLL;
      v86 = -1;
      goto LABEL_12;
    }

    v39 = v38;
    v93 = v26;
    v92 = sub_220B5BF30(v39);
    v40 = [v39 language];
    v41 = sub_220BCDBA0();
    v43 = v42;

    v44 = sub_220BCBF80();
    v45 = v91;
    (*(*(v44 - 8) + 56))(v91, 1, 1, v44);
    v46 = v95;
    sub_220B79AC8(v14, v95, type metadata accessor for ConstellationContentAttributes);
    (*(v94 + 56))(v46, 0, 1, v12);
    v47 = (v23 + *(v25 + 56));
    v49 = v47[1];
    v50 = v47[2];
    *&v100 = *v47;
    v48 = v100;
    *(&v100 + 1) = v49;
    v101 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77278);
    sub_220BCD2F0();
    v51 = v97;
    v52 = v98;
    *&v100 = v48;
    *(&v100 + 1) = v49;
    v101 = v50;
    sub_220BCD2F0();
    v53 = v97;
    type metadata accessor for ConstellationContentParser(0);
    swift_allocObject();
    sub_220B85EDC();
    sub_220B79BEC(&qword_2812C0F48, type metadata accessor for ConstellationContentParser);
    v54 = sub_220BCC7A0();
    v56 = v55;
    v57 = (v55 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_language);
    *v57 = v41;
    v57[1] = v43;

    v58 = OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_assetsBaseURL;
    swift_beginAccess();
    sub_220B79B30(v45, v56 + v58, &qword_27CF76C90);
    swift_endAccess();
    v59 = *(v56 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_assetFileInfoManager);
    *(v56 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_assetFileInfoManager) = 0;

    v60 = OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_attributes;
    swift_beginAccess();
    sub_220B79B30(v46, v56 + v60, &qword_27CF76F40);
    swift_endAccess();
    v61 = (v56 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_viewSize);
    *v61 = v51;
    v61[1] = v52;
    v62 = v56 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_maxWidth;
    *v62 = v53;
    *(v62 + 8) = 0;
    *(v56 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_textIsSelectable) = 1;
    *(v56 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_delegate + 8) = 0;
    swift_unknownObjectWeakAssign();
    *(v56 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_rawContent) = v92;

    sub_220B8073C();
    sub_220B463F4(v46, &qword_27CF76F40);
    sub_220B463F4(v45, &qword_27CF76C90);
    v97 = v54;
    v98 = v56;
    v99 = 1;
    sub_220B79B98();
    sub_220BCCC30();
  }

  result = sub_220B5752C(v14);
  v85 = v100;
  v86 = v101;
LABEL_12:
  v87 = v96;
  *v96 = v85;
  *(v87 + 16) = v86;
  return result;
}

uint64_t sub_220B78844(double a1, double a2)
{
  type metadata accessor for ListItemDocumentBodyView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77278);
  sub_220BCD300();
  sub_220BCD2F0();
  return sub_220B788FC(a1, a2);
}

uint64_t sub_220B788FC(double a1, double a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77280);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77288);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = sub_220BCCEF0();
  v12 = *(v11 - 8);
  result = MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 != 0.0 || a2 != 0.0)
  {
    v38 = v12;
    v41 = result;
    v42 = type metadata accessor for ListItemDocumentBodyView();
    if (qword_27CF76918 != -1)
    {
      swift_once();
    }

    v37 = qword_27CF77660;
    v36 = byte_27CF77670;
    v35 = qword_27CF77678;
    v16 = sub_220BCCEC0();
    v17 = *(v16 - 8);
    v39 = *(v17 + 56);
    v40 = v17 + 56;
    v39(v10, 1, 1, v16);
    v18 = sub_220BCCF60();
    v19 = *(v18 - 8);
    v33 = *(v19 + 56);
    v34 = v19 + 56;
    v33(v7, 1, 1, v18);
    sub_220BCCEE0();
    sub_220BCCED0();
    v21 = v20;
    v22 = *(v38 + 8);
    v23 = v41;
    v22(v15, v41);
    v24 = (v2 + v42[10]);
    v25 = *v24;
    v37 = v24[1];
    v38 = v25;
    v36 = *(v24 + 16);
    v35 = v24[3];
    v39(v10, 1, 1, v16);
    v33(v7, 1, 1, v18);
    sub_220BCCEE0();
    sub_220BCCED0();
    v27 = v26;
    result = (v22)(v15, v23);
    v28 = round(v27 / v21);
    if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v28 > -9.22337204e18)
    {
      if (v28 < 9.22337204e18)
      {
        v29 = v28;
        v30 = v42;
        v31 = *(v2 + v42[11]);
        if (v31 <= v28)
        {
          v44 = *(v2 + v42[13]);
          v43 = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77290);
          sub_220BCD300();
          goto LABEL_12;
        }

        if (!__OFSUB__(v31, v28))
        {
          v44 = *(v2 + v42[13]);
          v43 = v31 - v28;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77290);
          sub_220BCD300();
          v31 = v29;
LABEL_12:
          v44 = *(v2 + v30[12]);
          v43 = v31;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77290);
          return sub_220BCD300();
        }

LABEL_17:
        __break(1u);
        return result;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_220B78D84()
{
  type metadata accessor for ListItemDocumentBodyView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77278);
  sub_220BCD2F0();
  return sub_220B788FC(v1, v2);
}

uint64_t sub_220B78DF8()
{
  v1 = type metadata accessor for ListItemDocumentBodyView();
  v2 = *(v0 + *(v1 + 32));
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = *(v0 + *(v1 + 28) + 8);
    v6 = v2;
    v7 = [v5 footerForTip_];
    if (v7)
    {
      v8 = v7;
      v9 = sub_220BCDBA0();

      goto LABEL_6;
    }
  }

  else
  {
    v10 = v2;
  }

  v9 = 0;
LABEL_6:
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v11 = sub_220BC7BC8();
    v13 = v12;

    if (v13)
    {

      return v11;
    }
  }

  else
  {
  }

  return v9;
}

uint64_t sub_220B78EFC()
{
  v1 = sub_220BCCC80();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - v6;
  v8 = type metadata accessor for ListItemDocumentBodyView();
  v9 = *(v0 + *(v8 + 28) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  if (v28)
  {
    v10 = 0;
  }

  else
  {
    v27 = v5;
    v11 = v1;
    v12 = v2;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_220BCC4C0();

    v14 = v28;
    v13 = v29;
    v15 = [*(v0 + *(v8 + 32)) identifier];
    v16 = sub_220BCDBA0();
    v18 = v17;

    if (v13)
    {
      if (v14 == v16 && v13 == v18)
      {
        v10 = 1;
      }

      else
      {
        v10 = sub_220BCE130();
      }

      v2 = v12;
    }

    else
    {
      v10 = 0;
      v2 = v12;
    }

    v1 = v11;

    v5 = v27;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  v20 = 0;
  if (v28 == 1 && (v10 & 1) != 0)
  {
    v21 = *(v9 + OBJC_IVAR___TPSSearchResultViewModel_keyboardStatusObserver);
    if (v21 && (swift_getKeyPath(), v28 = v21, sub_220B79BEC(&qword_27CF76CD0, type metadata accessor for ExternalKeyboardMonitor), , sub_220BCC300(), , v22 = *(v21 + 16), , v22 == 1))
    {
      sub_220B792C4(v7);
      sub_220BCCC60();
      sub_220B79BEC(&qword_27CF77728, MEMORY[0x277CE0358]);
      v23 = sub_220BCDB40();
      v24 = *(v2 + 8);
      v24(v5, v1);
      v24(v7, v1);
      v20 = v23 ^ 1;
    }

    else
    {
      v20 = 1;
    }
  }

  return v20 & 1;
}

uint64_t sub_220B792C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_220BCC9D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF776C8);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_220B462DC(v2, &v14 - v9, &qword_27CF776C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_220BCCC80();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_220BCDDC0();
    v13 = sub_220BCCD50();
    sub_220BCC3C0();

    sub_220BCC9C0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_220B794C4@<X0>(uint64_t a1@<X8>)
{
  result = sub_220BCC9A0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_220B79528(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListItemDocumentBodyView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220B7958C(double a1, double a2)
{
  type metadata accessor for ListItemDocumentBodyView();

  return sub_220B78844(a1, a2);
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for ListItemDocumentBodyView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF776C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_220BCCC80();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF771B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_220BCC5A0();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_220B3385C(*(v5 + v1[6]), *(v5 + v1[6] + 8));

  v9 = v1[9];
  v10 = sub_220BCCF10();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  sub_220B5E8DC(*(v5 + v1[10]), *(v5 + v1[10] + 8), *(v5 + v1[10] + 16));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_220B798A0()
{
  result = qword_27CF776E0;
  if (!qword_27CF776E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF776D8);
    sub_220B7992C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF776E0);
  }

  return result;
}

unint64_t sub_220B7992C()
{
  result = qword_27CF776E8;
  if (!qword_27CF776E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF776F0);
    sub_220B799E4();
    sub_220B43830(&qword_2812C09A8, &qword_27CF77258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF776E8);
  }

  return result;
}

unint64_t sub_220B799E4()
{
  result = qword_27CF776F8;
  if (!qword_27CF776F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF776D0);
    sub_220B43830(&qword_27CF77700, &qword_27CF77708);
    sub_220B43830(&qword_2812C09C0, &qword_27CF77250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF776F8);
  }

  return result;
}

uint64_t sub_220B79AC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_220B79B30(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

unint64_t sub_220B79B98()
{
  result = qword_27CF77720;
  if (!qword_27CF77720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77720);
  }

  return result;
}

uint64_t sub_220B79BEC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_220B79C34()
{
  result = qword_27CF77730;
  if (!qword_27CF77730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF776B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77698);
    sub_220B43830(&qword_27CF776B0, &qword_27CF77698);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77730);
  }

  return result;
}

uint64_t sub_220B79D34(uint64_t a1)
{
  v2 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  sub_220B4CDC4(0, v2, 0);
  v3 = v9;
  if (v2)
  {
    for (i = a1 + 32; ; i += 8)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77048);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76DD8);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_220B4CDC4((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_220B79E9C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    sub_220B4CDC4(0, v2, 0);
    v3 = v11;
    v6 = a1 + 32;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76DD8);
      swift_dynamicCast();
      v8 = *(v11 + 16);
      v7 = *(v11 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_220B4CDC4((v7 > 1), v8 + 1, 1);
      }

      *(v11 + 16) = v8 + 1;
      *(v11 + 8 * v8 + 32) = v10;
      v6 += 8;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_220B79FC4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC6TipsUI12TipViewModel_tip) identifier];
  v2 = sub_220BCDBA0();
  v4 = v3;

  v5 = *(v0 + OBJC_IVAR____TtC6TipsUI12TipViewModel_contentModel);
  swift_getKeyPath();
  sub_220B7E07C(&qword_2812C2180, type metadata accessor for TipsContentModel);
  sub_220BCC300();

  v6 = OBJC_IVAR____TtC6TipsUI16TipsContentModel__currentTip;
  swift_beginAccess();
  v7 = *(v5 + v6);
  if (v7)
  {
    v8 = [v7 identifier];
    v9 = sub_220BCDBA0();
    v11 = v10;

    if (v2 == v9 && v4 == v11)
    {
      v13 = 1;
    }

    else
    {
      v13 = sub_220BCE130();
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void sub_220B7A13C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;
}

id sub_220B7A194()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void sub_220B7A1D8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_220B7A278@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC6TipsUI12TipViewModel_colorScheme;
  swift_beginAccess();
  v5 = sub_220BCC5C0();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_220B7A304(uint64_t a1, uint64_t *a2)
{
  v4 = sub_220BCC5C0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC6TipsUI12TipViewModel_colorScheme;
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

uint64_t sub_220B7A41C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6TipsUI12TipViewModel_colorScheme;
  swift_beginAccess();
  v4 = sub_220BCC5C0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_220B7A4A4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6TipsUI12TipViewModel_colorScheme;
  swift_beginAccess();
  v4 = sub_220BCC5C0();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_220B7A5A4()
{
  v1 = OBJC_IVAR____TtC6TipsUI12TipViewModel_currentlyVisible;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_220B7A5E8(char a1)
{
  v3 = OBJC_IVAR____TtC6TipsUI12TipViewModel_currentlyVisible;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_220B7A698()
{
  v1 = OBJC_IVAR____TtC6TipsUI12TipViewModel_isPosterLoaded;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_220B7A6DC(char a1)
{
  v3 = OBJC_IVAR____TtC6TipsUI12TipViewModel_isPosterLoaded;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_220B7A78C()
{
  v1 = OBJC_IVAR____TtC6TipsUI12TipViewModel_shouldLogAnimationFinished;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_220B7A7D0(char a1)
{
  v3 = OBJC_IVAR____TtC6TipsUI12TipViewModel_shouldLogAnimationFinished;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t TipViewModel.__allocating_init(collection:tip:assetsInfo:contentModel:onNextHandler:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  TipViewModel.init(collection:tip:assetsInfo:contentModel:onNextHandler:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t TipViewModel.init(collection:tip:assetsInfo:contentModel:onNextHandler:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = *MEMORY[0x277D71878];
  *(v6 + 16) = *MEMORY[0x277D71878];
  v13 = OBJC_IVAR____TtC6TipsUI12TipViewModel_colorScheme;
  v14 = *MEMORY[0x277CDF3D0];
  v15 = sub_220BCC5C0();
  (*(*(v15 - 8) + 104))(v6 + v13, v14, v15);
  *(v6 + OBJC_IVAR____TtC6TipsUI12TipViewModel_currentlyVisible) = 0;
  *(v6 + OBJC_IVAR____TtC6TipsUI12TipViewModel_isPosterLoaded) = 0;
  *(v6 + OBJC_IVAR____TtC6TipsUI12TipViewModel_shouldLogAnimationFinished) = 1;
  *(v6 + OBJC_IVAR____TtC6TipsUI12TipViewModel_tipIdentifiableIndexMap) = MEMORY[0x277D84F98];
  v16 = OBJC_IVAR____TtC6TipsUI12TipViewModel_assetsInfo;
  *(v6 + OBJC_IVAR____TtC6TipsUI12TipViewModel_assetsInfo) = 0;
  *(v6 + OBJC_IVAR____TtC6TipsUI12TipViewModel____lazy_storage___assetViewModel) = 0;
  v17 = v12;
  sub_220BCC330();
  *(v6 + 24) = a1;
  *(v6 + OBJC_IVAR____TtC6TipsUI12TipViewModel_tip) = a2;
  v18 = *(v6 + v16);
  *(v6 + v16) = a3;
  v19 = a1;
  v45 = a2;
  v44 = a3;

  v20 = (v6 + OBJC_IVAR____TtC6TipsUI12TipViewModel_onNextHandler);
  *v20 = a5;
  v20[1] = a6;
  v48 = v6;
  *(v6 + OBJC_IVAR____TtC6TipsUI12TipViewModel_contentModel) = a4;
  v47 = a5;
  sub_220B3A13C(a5);
  v43 = a4;
  v46 = v19;
  v21 = [v19 tipIdentifiers];
  v22 = sub_220BCDC70();

  v23 = sub_220B4F680(MEMORY[0x277D84F90]);
  v50 = *(v22 + 16);
  if (!v50)
  {
LABEL_17:

    sub_220B3A128(v47);

    *(v48 + OBJC_IVAR____TtC6TipsUI12TipViewModel_tipIdentifiableIndexMap) = v23;

    return v48;
  }

  v24 = 0;
  v25 = (v22 + 40);
  while (v24 < *(v22 + 16))
  {
    v26 = *(v25 - 1);
    v27 = *v25;
    v28 = v23[2];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = sub_220B7C4A8(v26, v27);
    v32 = v23[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_19;
    }

    v35 = v30;
    if (v23[3] >= v34)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v30)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_220B7D1A8();
        if (v35)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_220B7C954(v34, isUniquelyReferenced_nonNull_native);
      v36 = sub_220B7C4A8(v26, v27);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_21;
      }

      v31 = v36;
      if (v35)
      {
LABEL_3:
        *(v23[7] + 8 * v31) = v28;

        goto LABEL_4;
      }
    }

    v23[(v31 >> 6) + 8] |= 1 << v31;
    v38 = (v23[6] + 16 * v31);
    *v38 = v26;
    v38[1] = v27;
    *(v23[7] + 8 * v31) = v28;
    v39 = v23[2];
    v40 = __OFADD__(v39, 1);
    v41 = v39 + 1;
    if (v40)
    {
      goto LABEL_20;
    }

    v23[2] = v41;
LABEL_4:
    ++v24;
    v25 += 2;
    if (v50 == v24)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_220BCE170();
  __break(1u);
  return result;
}

uint64_t sub_220B7AC8C()
{
  v1 = OBJC_IVAR____TtC6TipsUI12TipViewModel____lazy_storage___assetViewModel;
  if (*(v0 + OBJC_IVAR____TtC6TipsUI12TipViewModel____lazy_storage___assetViewModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC6TipsUI12TipViewModel____lazy_storage___assetViewModel);
  }

  else
  {
    v2 = sub_220B7ACF4(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_220B7ACF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF77DE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = *(a1 + OBJC_IVAR____TtC6TipsUI12TipViewModel_tip);
  v6 = *(a1 + OBJC_IVAR____TtC6TipsUI12TipViewModel_assetsInfo);
  if (v6)
  {
    v7 = v5;
    v8 = v6;
  }

  else
  {
    v9 = v5;
    v10 = [v9 fullContentAssets];
    v11 = sub_220BCC5C0();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    v12 = sub_220BA1674(v9, v10);
    sub_220B7D604(v4);
    v8 = sub_220BA377C(v12, 0);

    v6 = 0;
  }

  v13 = *(a1 + OBJC_IVAR____TtC6TipsUI12TipViewModel_contentModel);
  type metadata accessor for DocumentAssetViewModel();
  swift_allocObject();
  v14 = v6;
  return DocumentAssetViewModel.init(document:assetsInfo:contentModel:)(v5, v8, v13);
}

uint64_t (*sub_220B7AE9C(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = sub_220B7AC8C();
  return sub_220B7AEE4;
}

id sub_220B7AEFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF77DE0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC6TipsUI12TipViewModel_tip);
  v5 = [v4 fullContentAssets];
  v6 = sub_220BCC5C0();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = sub_220BA1674(v4, v5);
  sub_220B7D604(v3);
  v8 = sub_220BA377C(v7, 0);

  sub_220BCD780();
  if (!v9)
  {
    sub_220BCD7A0();
    v11 = v10;
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  sub_220B55458(0, &qword_2812C08C8);
  result = [swift_getObjCClassFromMetadata() sharedInstance];
  if (result)
  {
    v13 = result;
    v14 = sub_220BCDB70();

    v15 = [v13 dataCacheForIdentifier_];

    if (!v15)
    {
      return 0;
    }

    v11 = 1;
    v8 = v15;
LABEL_6:

    return v11;
  }

  __break(1u);
  return result;
}

void sub_220B7B0E4(uint64_t a1, int a2)
{
  v3 = v2;
  v27 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF77DE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - v6;
  v8 = sub_220BCC5C0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC6TipsUI12TipViewModel_colorScheme;
  swift_beginAccess();
  v13 = *(v9 + 16);
  v13(v11, v3 + v12, v8);
  sub_220B7E07C(&qword_27CF77760, MEMORY[0x277CDF3E0]);
  v14 = a1;
  LOBYTE(a1) = sub_220BCDB40();
  (*(v9 + 8))(v11, v8);
  if (a1 & 1) == 0 || (v27)
  {
    v15 = v13;
    v24 = v14;
    v25 = v13;
    v16 = *(v3 + OBJC_IVAR____TtC6TipsUI12TipViewModel_contentModel);
    v15(v11, v14, v8);
    v17 = OBJC_IVAR____TtC6TipsUI16TipsContentModel_colorScheme;
    swift_beginAccess();
    v26 = v7;
    v18 = *(v9 + 40);
    v18(v16 + v17, v11, v8);
    swift_endAccess();
    v25(v11, v24, v8);
    swift_beginAccess();
    v18(v3 + v12, v11, v8);
    swift_endAccess();
    sub_220B7AC8C();
    v19 = *(v3 + OBJC_IVAR____TtC6TipsUI12TipViewModel_tip);
    v20 = [v19 fullContentAssets];
    v21 = v26;
    (*(v9 + 56))(v26, 1, 1, v8);
    v22 = sub_220BA1674(v19, v20);
    sub_220B7D604(v21);
    v23 = sub_220BA377C(v22, 0);

    sub_220B543E0(v23, v27 & 1);
  }
}

uint64_t sub_220B7B48C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC6TipsUI12TipViewModel_tip) identifier];
  v2 = sub_220BCDBA0();
  v4 = v3;

  v5 = *(v0 + OBJC_IVAR____TtC6TipsUI12TipViewModel_contentModel);
  v6 = OBJC_IVAR____TtC6TipsUI16TipsContentModel_sharedVariantTip;
  swift_beginAccess();
  v7 = *(v5 + v6);
  if (v7)
  {
    v8 = [v7 identifier];
    v9 = sub_220BCDBA0();
    v11 = v10;

    if (v2 == v9 && v4 == v11)
    {
      v13 = 1;
    }

    else
    {
      v13 = sub_220BCE130();
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_220B7B5A8()
{
  v1 = [*(v0 + 24) identifier];
  v2 = sub_220BCDBA0();

  return v2;
}

uint64_t sub_220B7B618(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC6TipsUI12TipViewModel_tip) *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_220BCDBA0();

  return v4;
}

id sub_220B7B688()
{
  result = [*(v0 + OBJC_IVAR____TtC6TipsUI12TipViewModel_tip) fullContent];
  if (result)
  {
    v2 = result;
    v3 = [result labelStyle];

    return v3;
  }

  return result;
}

id sub_220B7B6E4()
{
  v1 = sub_220BCC080();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_220BCDB60();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = *(v0 + OBJC_IVAR____TtC6TipsUI12TipViewModel_tip);
  v4 = [v3 eyebrowText];
  if (v4)
  {

    goto LABEL_7;
  }

  if (![v3 isSiriSuggestion])
  {
LABEL_7:
    result = [v3 eyebrowText];
    if (result)
    {
      v7 = result;
      v8 = sub_220BCDBA0();

      return v8;
    }

    return result;
  }

  sub_220BCDB50();
  sub_220B55458(0, &qword_27CF77300);
  if (!sub_220BCDEC0())
  {
    v5 = [objc_opt_self() mainBundle];
  }

  sub_220BCC050();
  return sub_220BCDBC0();
}

id sub_220B7B8C8()
{
  v1 = [*(v0 + OBJC_IVAR____TtC6TipsUI12TipViewModel_tip) assetFileInfoManager];

  return v1;
}

uint64_t sub_220B7B914(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC6TipsUI12TipViewModel_tip) *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_220BCDBA0();

  return v4;
}

uint64_t sub_220B7B984()
{
  v1 = [*(v0 + OBJC_IVAR____TtC6TipsUI12TipViewModel_tip) bodyContent];
  if (!v1 || (v2 = v1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77048), v3 = sub_220BCDC70(), v2, v4 = sub_220B79D34(v3), , !v4))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76DD0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_220BD1BA0;
    *(v4 + 32) = sub_220B4F2C4(MEMORY[0x277D84F90]);
  }

  return v4;
}

uint64_t sub_220B7BA54()
{
  v1 = *(v0 + OBJC_IVAR____TtC6TipsUI12TipViewModel_tip);
  v2 = [v1 bodyContent];
  if (v2)
  {

    return sub_220B7B984();
  }

  else
  {
    v4 = [v1 bodyText];
    if (v4)
    {
      v5 = v4;
      sub_220BCDBA0();
    }

    v6 = objc_opt_self();
    v7 = sub_220BCDB70();

    v8 = [v6 textContentWithText_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77040);
    v9 = sub_220BCDC70();

    v10 = sub_220B79E9C(v9, &qword_27CF77040);

    return v10;
  }
}

uint64_t sub_220B7BBA0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC6TipsUI12TipViewModel_tip) fullContent];
  if (!v1 || (v2 = v1, v3 = [v1 footnoteContent], v2, !v3) || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77048), v4 = sub_220BCDC70(), v3, v5 = sub_220B79D34(v4), , !v5))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76DD0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_220BD1BA0;
    *(v5 + 32) = sub_220B4F2C4(MEMORY[0x277D84F90]);
  }

  return v5;
}

uint64_t sub_220B7BC9C(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC6TipsUI12TipViewModel_tip) *a1];
  v3 = sub_220BCDBA0();

  return v3;
}

uint64_t sub_220B7BCFC@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC6TipsUI12TipViewModel_tip) fullContentAssets];
  v4 = [v3 baseURL];

  if (v4)
  {
    sub_220BCBF30();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_220BCBF80();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_220B7BDD0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC6TipsUI12TipViewModel_tip) actions];
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  sub_220B55458(0, &qword_27CF77768);
  v3 = sub_220BCDC70();

  return v3;
}

uint64_t sub_220B7BE50()
{
  v1 = [*(v0 + OBJC_IVAR____TtC6TipsUI12TipViewModel_tip) identifier];
  v2 = sub_220BCDBA0();
  v4 = v3;

  v5 = *(v0 + OBJC_IVAR____TtC6TipsUI12TipViewModel_tipIdentifiableIndexMap);
  if (*(v5 + 16) && (, v6 = sub_220B7C4A8(v2, v4), v8 = v7, , (v8 & 1) != 0))
  {
    v9 = *(*(v5 + 56) + 8 * v6);

    return v9;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_220B7BF10()
{
  v0 = sub_220B7BE50();
  v1 = __OFADD__(v0, 1);
  result = v0 + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

BOOL sub_220B7BF60(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC6TipsUI12TipViewModel_tip) *a1];
  v3 = v2;
  if (v2)
  {
  }

  return v3 != 0;
}

uint64_t sub_220B7BFB0()
{
  result = sub_220B7BE50();
  if (!__OFADD__(result, 1))
  {
    return result + 1 < *(*(v0 + OBJC_IVAR____TtC6TipsUI12TipViewModel_tipIdentifiableIndexMap) + 16);
  }

  __break(1u);
  return result;
}

void sub_220B7BFEC()
{
  v1 = *(v0 + OBJC_IVAR____TtC6TipsUI12TipViewModel_onNextHandler);
  if (v1)
  {
    v2 = sub_220B7BE50();
    v3 = __OFADD__(v2, 1);
    v4 = v2 + 1;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      v1(v4);
    }
  }
}

uint64_t TipViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC6TipsUI12TipViewModel_colorScheme;
  v2 = sub_220BCC5C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_220B3A128(*(v0 + OBJC_IVAR____TtC6TipsUI12TipViewModel_onNextHandler));

  v3 = OBJC_IVAR____TtC6TipsUI12TipViewModel___observationRegistrar;
  v4 = sub_220BCC340();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t TipViewModel.__deallocating_deinit()
{
  TipViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_220B7C1B0(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + OBJC_IVAR____TtC6TipsUI12TipViewModel_tip) identifier];
  v4 = sub_220BCDBA0();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

Swift::String_optional __swiftcall TipViewModel.constellationContentPersonalizedStringForID(_:)(Swift::Int a1)
{
  v1 = 0;
  v2 = 0;
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

void TipViewModel.constellationContentLinkActivated(url:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC6TipsUI12TipViewModel_tip);
  v2 = [v1 identifier];
  if (!v2)
  {
    sub_220BCDBA0();
    v2 = sub_220BCDB70();
  }

  v3 = [*(v0 + 24) identifier];
  if (!v3)
  {
    sub_220BCDBA0();
    v3 = sub_220BCDB70();
  }

  v4 = objc_opt_self();
  v5 = [v1 correlationID];
  v6 = [v1 clientConditionID];
  v7 = sub_220BCBF20();
  v8 = [v4 eventWithContentID:v2 collectionID:v3 correlationID:v5 clientConditionID:v6 url:v7];

  [v8 log];
}

id sub_220B7C3A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_220B7E07C(&qword_2812C2180, type metadata accessor for TipsContentModel);
  sub_220BCC300();

  v4 = OBJC_IVAR____TtC6TipsUI16TipsContentModel__currentTip;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_220B7C478(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_220B9F470(v1);
}

unint64_t sub_220B7C4A8(uint64_t a1, uint64_t a2)
{
  sub_220BCE210();
  sub_220BCDBF0();
  v4 = sub_220BCE240();

  return sub_220B7C664(a1, a2, v4);
}

unint64_t sub_220B7C520(uint64_t a1)
{
  sub_220BCE210();
  type metadata accessor for CFString(0);
  sub_220B7E07C(&qword_27CF77790, type metadata accessor for CFString);
  sub_220BCC3A0();
  v2 = sub_220BCE240();

  return sub_220B7C71C(a1, v2);
}

unint64_t sub_220B7C5D4(uint64_t a1)
{
  sub_220BCDBA0();
  sub_220BCE210();
  sub_220BCDBF0();
  v2 = sub_220BCE240();

  return sub_220B7C828(a1, v2);
}

unint64_t sub_220B7C664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_220BCE130())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_220B7C71C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_220B7E07C(&qword_27CF77790, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_220BCC390();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_220B7C828(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_220BCDBA0();
      v8 = v7;
      if (v6 == sub_220BCDBA0() && v8 == v9)
      {
        break;
      }

      v11 = sub_220BCE130();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_220B7C954(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E38);
  v34 = a2;
  result = sub_220BCE0D0();
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_220BCE210();
      sub_220BCDBF0();
      result = sub_220BCE240();
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
      *(*(v7 + 56) + 8 * v15) = v24;
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

uint64_t sub_220B7CC08(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v36 = a2;
  result = sub_220BCE0D0();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v3;
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(v6 + 56);
      v22 = *(*(v6 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v36)
      {
        sub_220B4F8A4(v23, v37);
      }

      else
      {
        sub_220B506E4(v23, v37);
        v24 = v22;
      }

      sub_220BCDBA0();
      sub_220BCE210();
      sub_220BCDBF0();
      v25 = sub_220BCE240();

      v26 = -1 << *(v8 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_220B4F8A4(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v6 = v35;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v34;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_34:
  *v4 = v8;
  return result;
}

uint64_t sub_220B7CEE4(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v36 = a2;
  result = sub_220BCE0D0();
  v8 = result;
  if (*(v6 + 16))
  {
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v36 & 1) == 0)
      {

        v26 = v25;
      }

      sub_220BCE210();
      sub_220BCDBF0();
      result = sub_220BCE240();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v35;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

void *sub_220B7D1A8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76E38);
  v2 = *v0;
  v3 = sub_220BCE0C0();
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

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

id sub_220B7D324(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_220BCE0C0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        sub_220B506E4(*(v3 + 56) + 32 * v18, v20);
        *(*(v5 + 48) + 8 * v18) = v19;
        sub_220B4F8A4(v20, (*(v5 + 56) + 32 * v18));
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

id sub_220B7D4A8(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_220BCE0C0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;

        result = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_220B7D604(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF77DE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t keypath_get_7Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_8Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t type metadata accessor for TipViewModel()
{
  result = qword_27CF77770;
  if (!qword_27CF77770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220B7D770()
{
  result = sub_220BCC5C0();
  if (v1 <= 0x3F)
  {
    result = sub_220BCC340();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_220B7E07C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_220B7E0CC()
{
  v0 = sub_220BCD170();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77888);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_220BD37B0;
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v3, v5, v0);
  sub_220BCD210();
  *(v4 + 32) = sub_220BCD400();
  *(v4 + 40) = v7;
  v6(v3, v5, v0);
  sub_220BCD210();
  *(v4 + 48) = sub_220BCD400();
  *(v4 + 56) = v8;
  v6(v3, v5, v0);
  sub_220BCD210();
  *(v4 + 64) = sub_220BCD400();
  *(v4 + 72) = v9;
  sub_220BCD410();
  sub_220BCD500();
  sub_220BCD4F0();
  sub_220BCC790();
  result = *&v12;
  xmmword_27CF77798 = v12;
  unk_27CF777A8 = v13;
  qword_27CF777B8 = v14;
  return result;
}

uint64_t static AppGradient.tipHeroGradient.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CF76920 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = xmmword_27CF77798;
  *(a1 + 8) = *(&xmmword_27CF77798 + 8);
  *(a1 + 24) = unk_27CF777B0;
}

double sub_220B7E36C()
{
  v0 = sub_220BCD170();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF772B8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_220BD2770;
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v3, v5, v0);
  *(v4 + 32) = sub_220BCD210();
  v6(v3, v5, v0);
  *(v4 + 40) = sub_220BCD210();
  MEMORY[0x223D921C0](v4);
  sub_220BCD4E0();
  sub_220BCD510();
  sub_220BCC790();
  result = *&v9;
  xmmword_27CF777C0 = v9;
  *algn_27CF777D0 = v10;
  qword_27CF777E0 = v11;
  return result;
}

uint64_t static AppGradient.tipCountGradient.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CF76928 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = xmmword_27CF777C0;
  *(a1 + 8) = *(&xmmword_27CF777C0 + 8);
  *(a1 + 24) = *&algn_27CF777D0[8];
}

double sub_220B7E5A8()
{
  v0 = sub_220BCD170();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77888);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_220BD37B0;
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v3, v5, v0);
  sub_220BCD210();
  *(v4 + 32) = sub_220BCD400();
  *(v4 + 40) = v7;
  v6(v3, v5, v0);
  sub_220BCD210();
  *(v4 + 48) = sub_220BCD400();
  *(v4 + 56) = v8;
  v6(v3, v5, v0);
  sub_220BCD210();
  *(v4 + 64) = sub_220BCD400();
  *(v4 + 72) = v9;
  sub_220BCD410();
  sub_220BCD500();
  sub_220BCD4F0();
  sub_220BCC790();
  result = *&v12;
  xmmword_27CF777E8 = v12;
  unk_27CF777F8 = v13;
  qword_27CF77808 = v14;
  return result;
}

uint64_t static AppGradient.tipHeroIncreaseContrastGradient.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CF76930 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = xmmword_27CF777E8;
  *(a1 + 8) = *(&xmmword_27CF777E8 + 8);
  *(a1 + 24) = unk_27CF77800;
}

double sub_220B7E850()
{
  v0 = sub_220BCD170();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77888);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_220BD2770;
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v3, v5, v0);
  sub_220BCD210();
  *(v4 + 32) = sub_220BCD400();
  *(v4 + 40) = v7;
  v6(v3, v5, v0);
  sub_220BCD210();
  *(v4 + 48) = sub_220BCD400();
  *(v4 + 56) = v8;
  sub_220BCD410();
  sub_220BCD500();
  sub_220BCD4F0();
  sub_220BCC790();
  result = *&v11;
  xmmword_27CF77810 = v11;
  unk_27CF77820 = v12;
  qword_27CF77830 = v13;
  return result;
}

uint64_t static AppGradient.translucentBlendingGradient.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CF76938 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = xmmword_27CF77810;
  *(a1 + 8) = *(&xmmword_27CF77810 + 8);
  *(a1 + 24) = unk_27CF77828;
}

double sub_220B7EAA0()
{
  v0 = sub_220BCD170();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF772B8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_220BD2770;
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v3, v5, v0);
  *(v4 + 32) = sub_220BCD210();
  v6(v3, v5, v0);
  *(v4 + 40) = sub_220BCD210();
  MEMORY[0x223D921C0](v4);
  sub_220BCD500();
  sub_220BCD4F0();
  sub_220BCC790();
  result = *&v9;
  xmmword_27CF77838 = v9;
  unk_27CF77848 = v10;
  qword_27CF77858 = v11;
  return result;
}

uint64_t static AppGradient.eyebrowGradientLayer1.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CF76940 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = xmmword_27CF77838;
  *(a1 + 8) = *(&xmmword_27CF77838 + 8);
  *(a1 + 24) = unk_27CF77850;
}

double sub_220B7ECE4()
{
  v0 = sub_220BCD170();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF772B8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_220BD2770;
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v3, v5, v0);
  *(v4 + 32) = sub_220BCD220();
  v6(v3, v5, v0);
  *(v4 + 40) = sub_220BCD220();
  MEMORY[0x223D921C0](v4);
  sub_220BCD4E0();
  sub_220BCD540();
  sub_220BCC790();
  result = *&v9;
  xmmword_27CF77860 = v9;
  *algn_27CF77870 = v10;
  qword_27CF77880 = v11;
  return result;
}

uint64_t static AppGradient.eyebrowGradientLayer2.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CF76948 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = xmmword_27CF77860;
  *(a1 + 8) = *(&xmmword_27CF77860 + 8);
  *(a1 + 24) = *&algn_27CF77870[8];
}

uint64_t type metadata accessor for DeviceExpertViewModel()
{
  result = qword_27CF77890;
  if (!qword_27CF77890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220B7EFC4()
{
  result = type metadata accessor for ListAnswerViewModel();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SummarizedAnswerViewModel();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_220B7F038@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SummarizedAnswerViewModel();
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ListAnswerViewModel();
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DeviceExpertViewModel();
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220B7F714(v2, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_220B7F7E0(v12, v6, type metadata accessor for SummarizedAnswerViewModel);
      sub_220B681FC(&v6[*(v4 + 32)], a1);
      v14 = type metadata accessor for SummarizedAnswerViewModel;
      v15 = v6;
    }

    else
    {
      v16 = type metadata accessor for AttributionItem();
      (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
      v14 = type metadata accessor for DeviceExpertViewModel;
      v15 = v12;
    }
  }

  else
  {
    sub_220B7F7E0(v12, v9, type metadata accessor for ListAnswerViewModel);
    sub_220B681FC(&v9[*(v7 + 36)], a1);
    v14 = type metadata accessor for ListAnswerViewModel;
    v15 = v9;
  }

  return sub_220B731F0(v15, v14);
}

uint64_t sub_220B7F278(uint64_t a1, uint64_t a2)
{
  v29 = type metadata accessor for SummarizedAnswerViewModel();
  MEMORY[0x28223BE20](v29);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ListAnswerViewModel();
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DeviceExpertViewModel();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF778A0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v28 - v17;
  v19 = *(v16 + 56);
  sub_220B7F714(a1, &v28 - v17);
  sub_220B7F714(a2, &v18[v19]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_220B7F714(v18, v14);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_220B7F7E0(&v18[v19], v8, type metadata accessor for ListAnswerViewModel);
      if (sub_220BCCF40() & 1) != 0 && (sub_220B9D8C4(*&v14[*(v6 + 28)], *&v8[*(v6 + 28)]))
      {
        v27 = sub_220BCCF40();
        sub_220B731F0(v8, type metadata accessor for ListAnswerViewModel);
        sub_220B731F0(v14, type metadata accessor for ListAnswerViewModel);
        if ((v27 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_11;
      }

      sub_220B731F0(v8, type metadata accessor for ListAnswerViewModel);
      v25 = v14;
      v26 = type metadata accessor for ListAnswerViewModel;
LABEL_21:
      sub_220B731F0(v25, v26);
LABEL_22:
      sub_220B731F0(v18, type metadata accessor for DeviceExpertViewModel);
      return 0;
    }

    v22 = type metadata accessor for ListAnswerViewModel;
    v23 = v14;
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_220B7F714(v18, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_220B7F7E0(&v18[v19], v5, type metadata accessor for SummarizedAnswerViewModel);
      if (sub_220BCCF40() & 1) != 0 && (sub_220BCCF40())
      {
        v21 = sub_220BCCF40();
        sub_220B731F0(v5, type metadata accessor for SummarizedAnswerViewModel);
        sub_220B731F0(v12, type metadata accessor for SummarizedAnswerViewModel);
        if ((v21 & 1) == 0)
        {
          goto LABEL_22;
        }

LABEL_11:
        sub_220B731F0(v18, type metadata accessor for DeviceExpertViewModel);
        return 1;
      }

      sub_220B731F0(v5, type metadata accessor for SummarizedAnswerViewModel);
      v25 = v12;
      v26 = type metadata accessor for SummarizedAnswerViewModel;
      goto LABEL_21;
    }

    v22 = type metadata accessor for SummarizedAnswerViewModel;
    v23 = v12;
LABEL_13:
    sub_220B731F0(v23, v22);
    goto LABEL_14;
  }

  if (swift_getEnumCaseMultiPayload() == 2)
  {
    goto LABEL_11;
  }

LABEL_14:
  sub_220B7F778(v18);
  return 0;
}

uint64_t sub_220B7F714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceExpertViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220B7F778(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF778A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220B7F7E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_220B7F848(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v22 = *(a1 + 32);
  if (a2)
  {
    v12 = sub_220BCDBA0();
    v14 = v13;
    if (a3)
    {
LABEL_3:
      ObjectType = swift_getObjectType();
      *&v23 = a3;
      sub_220B4F8A4(&v23, v25);
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    v14 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  memset(v25, 0, sizeof(v25));
LABEL_6:

  swift_unknownObjectRetain();
  if (!a4)
  {
    v17 = 0xF000000000000000;
    if (a6)
    {
      goto LABEL_8;
    }

LABEL_10:
    v18 = 0;
    goto LABEL_11;
  }

  v15 = a4;
  a4 = sub_220BCBFB0();
  v17 = v16;

  if (!a6)
  {
    goto LABEL_10;
  }

LABEL_8:
  v18 = sub_220BCDBA0();
  a6 = v19;
LABEL_11:
  v20 = a7;
  v22(v12, v14, v25, a4, v17, a5, v18, a6, a7);

  sub_220B6C8D4(a4, v17);

  return sub_220B463F4(v25, &qword_27CF77050);
}

uint64_t ConstellationContentAttributes.init(font:foregroundColor:accentColor:titleGradientStyle:textAlignment:paragraphSpacing:paragraphStyle:numberOfLines:lineBreakMode:symbolScale:useForegroundColorForSymbol:displayLinkStyle:typeSettingLanguage:supportsLinks:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, char a12, char a13, char a14, uint64_t a15, char a16)
{
  v17 = *(a4 + 16);
  *(a9 + 24) = *a4;
  v18 = *a6;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 40) = v17;
  *(a9 + 56) = *(a4 + 32);
  *(a9 + 64) = a5;
  *(a9 + 72) = a10;
  *(a9 + 80) = v18;
  *(a9 + 88) = a7;
  *(a9 + 96) = a8;
  v19 = type metadata accessor for ConstellationContentAttributes(0);
  result = sub_220B46540(a15, a9 + v19[15], &qword_27CF775D0);
  v21 = a9 + v19[16];
  *v21 = a11;
  *(v21 + 8) = a12 & 1;
  *(a9 + v19[17]) = a13;
  *(a9 + 81) = a14;
  *(a9 + 82) = a16;
  return result;
}

uint64_t ConstellationContentParagraphStyle.hashValue.getter()
{
  v1 = *v0;
  sub_220BCE210();
  MEMORY[0x223D92FC0](v1);
  return sub_220BCE240();
}

unint64_t sub_220B7FB40()
{
  result = qword_27CF778A8;
  if (!qword_27CF778A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF778A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConstellationContentParagraphStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConstellationContentParagraphStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_220B7FD0C()
{
  sub_220B7FEDC();
  if (v0 <= 0x3F)
  {
    sub_220B7FFA8(319, &qword_2812C0990);
    if (v1 <= 0x3F)
    {
      sub_220B7FFA8(319, &qword_2812C0A10);
      if (v2 <= 0x3F)
      {
        type metadata accessor for NSTextAlignment(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for NSLineBreakMode(319);
          if (v4 <= 0x3F)
          {
            sub_220B7FF44(319, &qword_2812C2210, MEMORY[0x277CC9740], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_220B7FF44(319, &qword_2812C08E8, type metadata accessor for SymbolScale, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_220B7FFA8(319, &qword_2812C0940);
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

void sub_220B7FEDC()
{
  if (!qword_2812C08A0)
  {
    sub_220B55458(255, &qword_2812C08A8);
    v0 = sub_220BCDF10();
    if (!v1)
    {
      atomic_store(v0, &qword_2812C08A0);
    }
  }
}

void sub_220B7FF44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_220B7FFA8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_220BCDF10();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_220B7FFF4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();
}

id sub_220B8006C()
{
  v1 = type metadata accessor for ConstellationContentAttributes(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76F40);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  v12 = OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_attributes;
  swift_beginAccess();
  sub_220B462DC(v0 + v12, v10, &qword_27CF76F40);
  v13 = *(v2 + 48);
  if (v13(v10, 1, v1))
  {
    sub_220B463F4(v10, &qword_27CF76F40);
    v14 = 4;
  }

  else
  {
    sub_220B86A6C(v10, v4, type metadata accessor for ConstellationContentAttributes);
    sub_220B463F4(v10, &qword_27CF76F40);
    v14 = *(v4 + 8);
    sub_220B86AD4(v4, type metadata accessor for ConstellationContentAttributes);
  }

  [v11 setAlignment_];
  LODWORD(v15) = 1045220557;
  [v11 setHyphenationFactor_];
  sub_220B462DC(v0 + v12, v8, &qword_27CF76F40);
  if (v13(v8, 1, v1))
  {
    sub_220B463F4(v8, &qword_27CF76F40);
  }

  else
  {
    sub_220B86A6C(v8, v4, type metadata accessor for ConstellationContentAttributes);
    sub_220B463F4(v8, &qword_27CF76F40);
    v16 = *(v4 + 12);
    sub_220B86AD4(v4, type metadata accessor for ConstellationContentAttributes);
    [v11 setLineBreakMode_];
  }

  return v11;
}

uint64_t sub_220B80360()
{
  sub_220B809B4();
  v1 = OBJC_IVAR____TtC6TipsUI26ConstellationContentParser__bodyText;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF778D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_220B463F4(v0 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_assetsBaseURL, &qword_27CF76C90);
  sub_220B463F4(v0 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_attributes, &qword_27CF76F40);

  sub_220B869EC(v0 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_delegate);

  return v0;
}

uint64_t sub_220B80488()
{
  sub_220B80360();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_220B80508(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220B80540()
{
  sub_220B7FF44(319, &qword_2812C0A98, type metadata accessor for AttributedTextView, MEMORY[0x277CBCED0]);
  if (v0 <= 0x3F)
  {
    sub_220B7FF44(319, &qword_2812C2218, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_220B7FF44(319, &qword_2812C0B80, type metadata accessor for ConstellationContentAttributes, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_220B8073C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76F40);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v22 - v2;
  v4 = type metadata accessor for AttributedTextView();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;

  v11 = sub_220B80B28(v10);

  v12 = *(v0 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_viewSize);
  v13 = *(v0 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_viewSize + 8);
  v14 = *(v0 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_textIsSelectable);
  v15 = OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_attributes;
  swift_beginAccess();
  sub_220B462DC(v0 + v15, v3, &qword_27CF76F40);
  v16 = v0 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = *(v16 + 8);
    v19 = swift_allocObject();
    *(v19 + 16) = Strong;
    *(v19 + 24) = v18;
    Strong = sub_220B86A14;
  }

  else
  {
    v19 = 0;
  }

  *v9 = v11;
  *(v9 + 1) = v12;
  *(v9 + 2) = v13;
  v9[24] = v14;
  sub_220B46540(v3, &v9[*(v4 + 28)], &qword_27CF76F40);
  v20 = &v9[*(v4 + 32)];
  *v20 = Strong;
  *(v20 + 1) = v19;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220B86A6C(v9, v7, type metadata accessor for AttributedTextView);

  sub_220BCC4D0();
  return sub_220B86AD4(v9, type metadata accessor for AttributedTextView);
}

void sub_220B809B4()
{
  v1 = OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_assetsSessionItemMap;
  swift_beginAccess();
  v2 = *(v0 + v1);
  *(v0 + v1) = MEMORY[0x277D84F98];
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(v2 + 56) + 8 * (v9 | (v8 << 6)));
    v11 = objc_opt_self();

    v12 = v10;
    v13 = [v11 defaultManager];
    [v13 cancelSessionItem_];
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

id sub_220B80B28(uint64_t a1)
{
  v3 = type metadata accessor for ConstellationContentAttributes(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76F40);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v26 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v12 = OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_numberOfParagraphTags;
  *(v1 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_numberOfParagraphTags) = 0;
  v13 = sub_220B80E9C(a1);
  v14 = OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_attributes;
  swift_beginAccess();
  sub_220B462DC(v1 + v14, v11, &qword_27CF76F40);
  v15 = *(v4 + 48);
  v27 = v3;
  if (v15(v11, 1, v3))
  {
    v28 = v13;
    sub_220B463F4(v11, &qword_27CF76F40);
    v16 = 0;
    v17 = 0;
  }

  else
  {
    sub_220B86A6C(v11, v6, type metadata accessor for ConstellationContentAttributes);
    sub_220B463F4(v11, &qword_27CF76F40);
    v18 = *(v6 + 80);
    sub_220B86AD4(v6, type metadata accessor for ConstellationContentAttributes);
    if ((v18 - 2) < 2)
    {
      return v13;
    }

    v28 = v13;
    v16 = v18 != 4;
    v17 = v18 != 4 && v18 == 0;
  }

  v19 = sub_220B8006C();
  if (v17 && v16 && *(v1 + v12))
  {
    v20 = v26;
    sub_220B462DC(v1 + v14, v26, &qword_27CF76F40);
    if (v15(v20, 1, v27))
    {
      sub_220B463F4(v20, &qword_27CF76F40);
      v21 = 10.0;
    }

    else
    {
      sub_220B86A6C(v20, v6, type metadata accessor for ConstellationContentAttributes);
      sub_220B463F4(v20, &qword_27CF76F40);
      v22 = v6[9];
      sub_220B86AD4(v6, type metadata accessor for ConstellationContentAttributes);
      v21 = v22;
    }

    [v19 setParagraphSpacing_];
  }

  v23 = *MEMORY[0x277D74118];
  v24 = v19;
  v13 = v28;
  [v28 addAttribute:v23 value:v24 range:{0, objc_msgSend(v28, sel_length)}];

  return v13;
}

id sub_220B80E9C(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v3 = sub_220BCDB70();
  v4 = [v2 initWithString:v3 attributes:0];

  [v4 beginEditing];
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 32);
    while (1)
    {
      v7 = *v6;
      v8 = objc_opt_self();

      sub_220B8107C(v9);
      v10 = sub_220BCDB00();

      v11 = [v8 contentTypeForContentDictionary_];

      if (v11 > 1)
      {
        break;
      }

      if (v11)
      {
        if (v11 != 1)
        {
          goto LABEL_3;
        }

        v12 = sub_220B81344(v7);
        if (!v12)
        {
          goto LABEL_3;
        }

LABEL_19:
        [v4 appendAttributedString_];

        goto LABEL_3;
      }

      v12 = sub_220B81E60(v7);
      if (v12)
      {
        goto LABEL_19;
      }

LABEL_3:

      ++v6;
      if (!--v5)
      {
        goto LABEL_20;
      }
    }

    switch(v11)
    {
      case 2:
        v12 = sub_220B826A8(v7);
        if (!v12)
        {
          goto LABEL_3;
        }

        break;
      case 3:
        sub_220B830F8(v7);
        v12 = v13;
        if (!v13)
        {
          goto LABEL_3;
        }

        break;
      case 4:
        v12 = sub_220B83C60(v7);
        if (!v12)
        {
          goto LABEL_3;
        }

        break;
      default:
        goto LABEL_3;
    }

    goto LABEL_19;
  }

LABEL_20:
  [v4 endEditing];
  return v4;
}

uint64_t sub_220B8107C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF778B8);
    v2 = sub_220BCE0E0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_220B506E4(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_220B4F8A4(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_220B4F8A4(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_220B4F8A4(v31, v32);
    result = sub_220BCDFA0();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_220B4F8A4(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id sub_220B81344(uint64_t a1)
{
  v3 = sub_220BCC080();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_220BCDB60();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for ConstellationContentAttributes(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76F40);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v77 - v13;
  v15 = sub_220BCDBA0();
  if (!*(a1 + 16))
  {

    return 0;
  }

  v84 = v8;
  v85 = v5;
  v86 = v1;
  v17 = sub_220B7C4A8(v15, v16);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
    return 0;
  }

  sub_220B506E4(*(a1 + 56) + 32 * v17, v88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF778C8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v20 = v87;
  v21 = v86;
  v22 = sub_220B80E9C(v87);
  if ([v22 length] < 1)
  {

    return 0;
  }

  v23 = OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_attributes;
  swift_beginAccess();
  v78 = v23;
  sub_220B462DC(&v21[v23], v14, &qword_27CF76F40);
  v77 = *(v6 + 48);
  v79 = v6 + 48;
  if (v77(v14, 1, v85))
  {
    sub_220B463F4(v14, &qword_27CF76F40);
    v24 = 4;
  }

  else
  {
    v26 = v84;
    sub_220B86A6C(v14, v84, type metadata accessor for ConstellationContentAttributes);
    sub_220B463F4(v14, &qword_27CF76F40);
    v27 = *(v26 + 80);
    sub_220B86AD4(v26, type metadata accessor for ConstellationContentAttributes);
    v24 = v27;
  }

  v28 = OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_numberOfParagraphTags;
  v29 = *&v21[OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_numberOfParagraphTags];
  v82 = v20;
  v80 = OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_numberOfParagraphTags;
  v81 = v24;
  if (v29)
  {
    v30 = 10;
    if (v24 == 1)
    {
      v30 = 32;
    }

    v83 = v30;
    v31 = sub_220B823DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF778B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_220BD1BA0;
    v33 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    v34 = objc_opt_self();
    v35 = v33;
    v36 = [v34 preferredFontForTextStyle_];
    *(inited + 64) = sub_220B55458(0, &qword_2812C08A8);
    *(inited + 40) = v36;
    sub_220B4F77C(inited);
    swift_setDeallocating();
    sub_220B463F4(inited + 32, &qword_27CF76E20);
    v37 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v38 = sub_220BCDB70();

    type metadata accessor for Key(0);
    sub_220B86B34(&qword_2812C08E0, type metadata accessor for Key);
    v39 = sub_220BCDB00();

    v40 = [v37 initWithString:v38 attributes:v39];

    v21 = v86;
    v41 = 0x277CCA000uLL;
    v83 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];

    v28 = v80;
    v42 = *&v21[v80];
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      __break(1u);
      goto LABEL_22;
    }
  }

  else
  {
    v83 = 0;
    v41 = 0x277CCA000;
    v44 = 1;
  }

  *&v21[v28] = v44;
  v33 = &selRef_activateConstraints_;
  v45 = v83;
  if (v81 == 3)
  {
LABEL_22:
    v46 = v41;
LABEL_23:
    v52 = v21;
    sub_220B8425C(0);
    v53 = objc_allocWithZone(*(v46 + 2888));
    v54 = sub_220BCDB70();

    type metadata accessor for Key(0);
    sub_220B86B34(&qword_2812C08E0, type metadata accessor for Key);
    v55 = sub_220BCDB00();

    v56 = [v53 initWithString:v54 attributes:v55];

    [v56 size];
    v58 = round(v57) + 8.0;
    v59 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v60 = sub_220BCDB70();
    v61 = [v59 initWithString_];

    v62 = v33[149];
    v86 = v56;
    [v56 v62];

    v63 = v52;
    v64 = sub_220B8006C();
    [v64 setHeadIndent_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF77E60);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_220BD1220;
    v66 = [v64 alignment];
    sub_220B4F8B4(MEMORY[0x277D84F90]);
    v67 = objc_allocWithZone(MEMORY[0x277D742E0]);
    type metadata accessor for OptionKey(0);
    sub_220B86B34(&qword_27CF76AA8, type metadata accessor for OptionKey);
    v68 = sub_220BCDB00();

    v69 = [v67 initWithTextAlignment:v66 location:v68 options:v58];

    *(v65 + 32) = v69;
    sub_220B55458(0, &qword_27CF778D0);
    v70 = sub_220BCDC60();

    [v64 setTabStops_];

    sub_220B462DC(&v63[v78], v12, &qword_27CF76F40);
    if (v77(v12, 1, v85))
    {
      sub_220B463F4(v12, &qword_27CF76F40);
      v71 = 10.0;
    }

    else
    {
      v72 = v84;
      sub_220B86A6C(v12, v84, type metadata accessor for ConstellationContentAttributes);
      sub_220B463F4(v12, &qword_27CF76F40);
      v71 = *(v72 + 72);
      sub_220B86AD4(v72, type metadata accessor for ConstellationContentAttributes);
    }

    [v64 setParagraphSpacing_];
    v73 = v86;
    [v22 insertAttributedString:v86 atIndex:0];
    v74 = *MEMORY[0x277D74118];
    v75 = v64;
    [v22 addAttribute:v74 value:v75 range:{0, objc_msgSend(v22, sel_length)}];

    v45 = v83;
    goto LABEL_27;
  }

  if (v81 == 2)
  {
    v46 = v41;
    sub_220BCDB50();
    sub_220B55458(0, &qword_27CF77300);
    if (!sub_220BCDEC0())
    {
      v47 = [objc_opt_self() mainBundle];
    }

    sub_220BCC050();
    sub_220BCDBC0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77320);
    v48 = swift_allocObject();
    v49 = *&v21[v80];
    v50 = MEMORY[0x277D83B88];
    *(v48 + 16) = xmmword_220BD1BA0;
    v51 = MEMORY[0x277D83C10];
    *(v48 + 56) = v50;
    *(v48 + 64) = v51;
    *(v48 + 32) = v49;
    sub_220BCDBB0();

    goto LABEL_23;
  }

LABEL_27:
  if (v45)
  {
    v76 = v83;

    [v76 appendAttributedString_];
    return v83;
  }

  else
  {

    return v22;
  }
}

id sub_220B81E60(uint64_t a1)
{
  v2 = type metadata accessor for ConstellationContentAttributes(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76F40);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - v10;
  v12 = objc_opt_self();
  sub_220B8107C(a1);
  v13 = sub_220BCDB00();

  v14 = [v12 textForContentNode_];

  if (!v14)
  {
    return 0;
  }

  v42 = sub_220BCDBA0();
  v44 = v15;
  v16 = sub_220BCDBA0();
  if (!*(a1 + 16))
  {

    goto LABEL_9;
  }

  v18 = sub_220B7C4A8(v16, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
LABEL_9:
    v21 = 0;
    goto LABEL_10;
  }

  sub_220B506E4(*(a1 + 56) + 32 * v18, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF778C8);
  if (swift_dynamicCast())
  {
    v21 = v46;
  }

  else
  {
    v21 = 0;
  }

LABEL_10:
  v43 = v21;
  v23 = v45;
  sub_220B8425C(v21);
  v25 = v24;
  v26 = OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_attributes;
  swift_beginAccess();
  sub_220B462DC(v23 + v26, v11, &qword_27CF76F40);
  v27 = *(v3 + 48);
  if (v27(v11, 1, v2))
  {
    v28 = &qword_27CF76F40;
    v29 = v11;
LABEL_12:
    sub_220B463F4(v29, v28);
    goto LABEL_13;
  }

  sub_220B86A6C(v11, v5, type metadata accessor for ConstellationContentAttributes);
  sub_220B463F4(v11, &qword_27CF76F40);
  v33 = v5[82];
  v23 = v45;
  sub_220B86AD4(v5, type metadata accessor for ConstellationContentAttributes);
  if ((v33 & 1) == 0)
  {
    if (*(v25 + 16))
    {
      v34 = sub_220B7E0C8(*MEMORY[0x277D740E8]);
      if (v35)
      {
        v36 = v34;

        sub_220B506E4(*(v25 + 56) + 32 * v36, v47);

        sub_220B463F4(v47, &qword_27CF77050);
        return 0;
      }
    }

    memset(v47, 0, sizeof(v47));
    v28 = &qword_27CF77050;
    v29 = v47;
    goto LABEL_12;
  }

LABEL_13:
  sub_220B462DC(v23 + v26, v9, &qword_27CF76F40);
  if (v27(v9, 1, v2))
  {
    sub_220B463F4(v9, &qword_27CF76F40);
LABEL_15:

    goto LABEL_16;
  }

  sub_220B86A6C(v9, v5, type metadata accessor for ConstellationContentAttributes);
  sub_220B463F4(v9, &qword_27CF76F40);
  v37 = *(v5 + 3);

  sub_220B86AD4(v5, type metadata accessor for ConstellationContentAttributes);
  if (!v37)
  {
    goto LABEL_15;
  }

  v38 = sub_220B8683C(3, v43);

  if ((v38 & 1) == 0)
  {

    v39 = (v45 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_gradientTitle);
    v40 = v44;
    *v39 = v42;
    v39[1] = v40;

    return 0;
  }

LABEL_16:

  v30 = objc_allocWithZone(MEMORY[0x277CCA898]);
  type metadata accessor for Key(0);
  sub_220B86B34(&qword_2812C08E0, type metadata accessor for Key);
  v31 = sub_220BCDB00();

  v32 = [v30 initWithString:v14 attributes:v31];

  return v32;
}

id sub_220B823DC()
{
  v1 = type metadata accessor for ConstellationContentAttributes(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76F40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = *MEMORY[0x277D76918];
  v9 = OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_attributes;
  swift_beginAccess();
  sub_220B462DC(v0 + v9, v7, &qword_27CF76F40);
  if ((*(v2 + 48))(v7, 1, v1))
  {
    v10 = v8;
    sub_220B463F4(v7, &qword_27CF76F40);
LABEL_3:
    v19 = 0u;
    v20 = 0u;
LABEL_4:
    sub_220B463F4(&v19, &qword_27CF77050);
    return v8;
  }

  sub_220B86A6C(v7, v4, type metadata accessor for ConstellationContentAttributes);
  v12 = v8;
  sub_220B463F4(v7, &qword_27CF76F40);
  v13 = *v4;
  v14 = *v4;
  sub_220B86AD4(v4, type metadata accessor for ConstellationContentAttributes);
  if (!v13)
  {
    goto LABEL_3;
  }

  v15 = [v14 fontDescriptor];

  v16 = [v15 objectForKey_];
  if (v16)
  {
    sub_220BCDF40();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (!*(&v18 + 1))
  {
    goto LABEL_4;
  }

  type metadata accessor for TextStyle(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return v12;
  }

  return v17;
}

id sub_220B826A8(uint64_t a1)
{
  v3 = type metadata accessor for ConstellationContentAttributes(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76F40);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v86 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v86 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v86 - v17;
  v19 = sub_220BCDBA0();
  if (*(a1 + 16))
  {
    v92 = v10;
    v93 = v1;
    v21 = sub_220B7C4A8(v19, v20);
    v23 = v22;

    if (v23)
    {
      sub_220B506E4(*(a1 + 56) + 32 * v21, &v96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76DD8);
      if (swift_dynamicCast())
      {
        v88 = v6;
        v91 = *&v95[0];
        v24 = v93;
        v25 = sub_220B823DC();
        v26 = OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_attributes;
        swift_beginAccess();
        v27 = v26;
        sub_220B462DC(v24 + v26, v18, &qword_27CF76F40);
        v89 = *(v4 + 48);
        v90 = v4 + 48;
        if (v89(v18, 1, v3))
        {
          sub_220B463F4(v18, &qword_27CF76F40);
          v28 = 0;
          v29 = 1;
        }

        else
        {
          v31 = v88;
          sub_220B86A6C(v18, v88, type metadata accessor for ConstellationContentAttributes);
          sub_220B463F4(v18, &qword_27CF76F40);
          v32 = v31 + *(v3 + 64);
          v28 = *v32;
          v29 = *(v32 + 8);
          v24 = v93;
          sub_220B86AD4(v31, type metadata accessor for ConstellationContentAttributes);
        }

        v33 = sub_220B503AC(v91, v25, v28, v29);
        if (v33)
        {
          v34 = v33;
          v86 = v25;
          sub_220B462DC(v24 + v27, v16, &qword_27CF76F40);
          v35 = v27;
          if (v89(v16, 1, v3))
          {
            v36 = v34;
            sub_220B463F4(v16, &qword_27CF76F40);
            v37 = v88;
          }

          else
          {
            v37 = v88;
            sub_220B86A6C(v16, v88, type metadata accessor for ConstellationContentAttributes);
            v38 = v34;
            sub_220B463F4(v16, &qword_27CF76F40);
            v39 = *(v37 + *(v3 + 68));
            sub_220B86AD4(v37, type metadata accessor for ConstellationContentAttributes);
            if (v39 != 2 && (v39 & 1) != 0)
            {
              goto LABEL_23;
            }
          }

          v40 = sub_220BCDBA0();
          if (!*(v91 + 16))
          {
LABEL_22:

            goto LABEL_23;
          }

          v42 = sub_220B7C4A8(v40, v41);
          v44 = v43;

          if (v44)
          {
            sub_220B506E4(*(v91 + 56) + 32 * v42, &v96);
            if (swift_dynamicCast())
            {
              v45 = *(&v95[0] + 1);
              v46 = *&v95[0];
              if (v46 == sub_220BCDBA0() && v45 == v47)
              {
              }

              else
              {
                v80 = sub_220BCE130();
                v87 = v46;
                v81 = v80;

                if ((v81 & 1) == 0)
                {
                  v50 = _sSo7UIColorC6TipsUIE25colorForSystemColorStringyABSSFZ_0();

                  goto LABEL_29;
                }
              }

              goto LABEL_22;
            }
          }

LABEL_23:
          sub_220B462DC(v24 + v35, v13, &qword_27CF76F40);
          if (v89(v13, 1, v3))
          {
            sub_220B463F4(v13, &qword_27CF76F40);
          }

          else
          {
            sub_220B86A6C(v13, v37, type metadata accessor for ConstellationContentAttributes);
            sub_220B463F4(v13, &qword_27CF76F40);
            v49 = *(v37 + 8);

            sub_220B86AD4(v37, type metadata accessor for ConstellationContentAttributes);
            if (v49)
            {
              sub_220B55458(0, &qword_2812C0888);
              v48 = sub_220BCDEB0();
              goto LABEL_28;
            }
          }

          v48 = [objc_opt_self() labelColor];
LABEL_28:
          v50 = v48;
LABEL_29:
          v51 = objc_allocWithZone(MEMORY[0x277D74270]);
          v87 = v50;
          v52 = [v51 init];
          v53 = sub_220B86928(v91);
          v55 = v54;

          if (v53 == 32 && v55 == 0xE100000000000000)
          {
            v56 = 1;
          }

          else
          {
            v56 = sub_220BCE130();
          }

          v57 = v87;
          v58 = [v34 imageWithTintColor:v87 renderingMode:1];

          v59 = v58;
          v60 = sub_220BCDB70();

          [v52 setAccessibilityLabel_];

          [v52 setAccessibilityElementsHidden_];
          [v52 setImage_];

          v61 = sub_220B4F77C(MEMORY[0x277D84F90]);
          v62 = sub_220BCDBA0();
          if (*(a1 + 16))
          {
            v64 = sub_220B7C4A8(v62, v63);
            v66 = v65;

            v67 = v86;
            if (v66)
            {
              sub_220B506E4(*(a1 + 56) + 32 * v64, &v96);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF778C8);
              if (swift_dynamicCast())
              {
                v68 = v93;
                sub_220B8425C(*&v95[0]);
                v70 = v69;

                v71 = v68 + v35;
                v72 = v92;
                sub_220B462DC(v71, v92, &qword_27CF76F40);
                if (v89(v72, 1, v3))
                {
                  sub_220B463F4(v72, &qword_27CF76F40);
                }

                else
                {
                  v82 = v88;
                  sub_220B86A6C(v72, v88, type metadata accessor for ConstellationContentAttributes);
                  sub_220B463F4(v72, &qword_27CF76F40);
                  v83 = *(v82 + 82);
                  sub_220B86AD4(v82, type metadata accessor for ConstellationContentAttributes);
                  if (v83)
                  {
                    goto LABEL_48;
                  }
                }

                if (*(v70 + 16))
                {
                  v84 = sub_220B7E0C8(*MEMORY[0x277D740E8]);
                  if (v85)
                  {
                    sub_220B506E4(*(v70 + 56) + 32 * v84, &v96);

                    sub_220B463F4(&v96, &qword_27CF77050);
                    v70 = v61;
LABEL_49:
                    v67 = v86;
                    goto LABEL_40;
                  }
                }

                v96 = 0u;
                v97 = 0u;
                sub_220B463F4(&v96, &qword_27CF77050);
LABEL_48:

                goto LABEL_49;
              }
            }
          }

          else
          {

            v67 = v86;
          }

          v70 = v61;
LABEL_40:
          v73 = *MEMORY[0x277D740A8];
          v74 = v67;
          v75 = [objc_opt_self() preferredFontForTextStyle_];
          *(&v97 + 1) = sub_220B55458(0, &qword_2812C08A8);
          *&v96 = v75;
          sub_220B4F8A4(&v96, v95);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v94 = v70;
          sub_220B56F78(v95, v73, isUniquelyReferenced_nonNull_native);
          v77 = objc_allocWithZone(MEMORY[0x277CCA898]);
          type metadata accessor for Key(0);
          sub_220B86B34(&qword_2812C08E0, type metadata accessor for Key);
          v78 = sub_220BCDB00();

          v79 = [v77 initWithAttachment:v52 attributes:v78];

          return v79;
        }
      }
    }
  }

  else
  {
  }

  return 0;
}

void sub_220B830F8(uint64_t a1)
{
  v3 = sub_220BCD630();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76F40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v93 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v93 - v11;
  v13 = sub_220BCBF80();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_220BCDBA0();
  if (!*(a1 + 16))
  {
    goto LABEL_11;
  }

  v103 = v14;
  v104 = v13;
  v102 = v1;
  v19 = sub_220B7C4A8(v17, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_220B506E4(*(a1 + 56) + 32 * v19, v107);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76DD8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v101 = v16;
  v22 = v105;
  v23 = sub_220BCDBA0();
  if (!*(v22 + 16))
  {

LABEL_11:

    goto LABEL_12;
  }

  v25 = sub_220B7C4A8(v23, v24);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_220B506E4(*(v22 + 56) + 32 * v25, v107);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v99 = v105;
  v100 = v22;
  v28 = v106;
  v29 = OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_assetsBaseURL;
  v30 = v102;
  swift_beginAccess();
  sub_220B462DC(v30 + v29, v12, &qword_27CF76C90);
  v32 = v103;
  v31 = v104;
  if ((*(v103 + 48))(v12, 1, v104) == 1)
  {

    sub_220B463F4(v12, &qword_27CF76C90);
LABEL_12:
    sub_220BCD600();
    sub_220BCDA50();
    (*(v4 + 8))(v6, v3);
    return;
  }

  v98 = v28;
  v33 = v101;
  (*(v32 + 32))(v101, v12, v31);
  v34 = *(v30 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_language + 8);
  if (!v34)
  {
    (*(v32 + 8))(v33, v31);

    goto LABEL_11;
  }

  v35 = *(v30 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_language);
  v36 = objc_opt_self();

  [v36 displayScale];
  v38 = *(v30 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_assetFileInfoManager);
  if (!v38)
  {
LABEL_23:

LABEL_24:

    sub_220BCD600();
    sub_220BCDA50();
    (*(v4 + 8))(v6, v3);
    (*(v32 + 8))(v101, v31);
    return;
  }

  v39 = v37;
  v95 = OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_assetFileInfoManager;
  v96 = v35;
  v97 = v34;
  v40 = v38;
  v41 = sub_220BCDB70();
  v42 = [objc_allocWithZone(MEMORY[0x277D77768]) init];
  v43 = [v42 userInterfaceStyle];

  if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_52;
  }

  if (v39 <= -9.22337204e18)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v32 = v103;
  v31 = v104;
  if (v39 >= 9.22337204e18)
  {
LABEL_53:
    __break(1u);
    return;
  }

  v44 = [v40 fileInfoWithMainIdentifier:v41 userInterfaceStyle:v43 != 1 scale:v39];

  if (!v44)
  {
    goto LABEL_23;
  }

  v45 = [v44 size];
  if (!v45)
  {

    goto LABEL_24;
  }

  v46 = v45;
  v94 = v44;
  v47 = [v45 width];
  [v47 doubleValue];
  v49 = v48;

  v50 = [v46 height];
  [v50 doubleValue];
  v52 = v51;

  if (__CGSizeEqualToSize(v49, v52))
  {
    (*(v32 + 8))(v101, v31);
  }

  else
  {
    v93 = v46;
    v53 = OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_attributes;
    swift_beginAccess();
    sub_220B462DC(v30 + v53, v9, &qword_27CF76F40);
    v54 = sub_220B57370(v9);
    sub_220B463F4(v9, &qword_27CF76F40);
    [v54 pointSize];
    v56 = v55;

    v57 = v56 / 17.0;
    if (v49 <= 200.0)
    {
      v58 = v49 * v57;
    }

    else
    {
      v58 = v57 * 200.0;
    }

    if (v52 > 40.0)
    {
      v52 = 40.0;
    }

    v59 = [objc_allocWithZone(MEMORY[0x277D716A8]) init];
    v60 = sub_220BCDB70();

    [v59 setImageId_];

    v61 = v101;
    v62 = sub_220BCBF20();
    [v59 setBaseURL_];

    v63 = [objc_allocWithZone(MEMORY[0x277D77768]) init];
    v64 = [v63 userInterfaceStyle];

    v65 = *(v102 + v95);
    v66 = objc_allocWithZone(MEMORY[0x277D716B0]);
    v67 = v65;
    v68 = v59;
    v69 = sub_220BCDB70();

    v70 = [v66 initWithAssets:v68 language:v69 userInterfaceStyle:v64 != 1 assetFileInfoManager:v67];

    v71 = [v70 cacheIdentifierForType_];
    if (v71)
    {
      v72 = v71;
      v73 = sub_220BCDBA0();
      v75 = v74;
      v76 = [objc_opt_self() getImageForIdentifier_];

      if (v76)
      {
        v77 = v57 * v52;

        v78 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
        v79 = sub_220B86928(v100);
        v81 = v80;

        v83 = v103;
        v82 = v104;
        if (v79 == 32 && v81 == 0xE100000000000000)
        {
          v84 = 1;
        }

        else
        {
          v84 = sub_220BCE130();
        }

        v87 = sub_220BCDB70();

        [v78 setAccessibilityLabel_];

        [v78 setAccessibilityElementsHidden_];
        [v76 size];
        if (v88 == 0.0)
        {
          v88 = 19.0;
        }

        if (v58 == 0.0)
        {
          v90 = v88;
        }

        else
        {
          v90 = v58;
        }

        if (v89 == 0.0)
        {
          v91 = 19.0;
        }

        else
        {
          v91 = v89;
        }

        if (v77 == 0.0)
        {
          v92 = v91;
        }

        else
        {
          v92 = v77;
        }

        [v78 setBounds_];
        [v78 setImage_];
        [objc_opt_self() attributedStringWithAttachment_];

        (*(v83 + 8))(v61, v82);
      }

      else
      {

        sub_220B84FAC(v70, v73, v75);

        v85 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v86 = sub_220BCDB70();
        [v85 initWithString_];

        (*(v103 + 8))(v61, v104);
      }
    }

    else
    {
      (*(v32 + 8))(v61, v31);
    }
  }
}

id sub_220B83C60(uint64_t a1)
{
  v2 = v1;
  v4 = sub_220BCD630();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220BCDBA0();
  if (!*(a1 + 16))
  {
    goto LABEL_32;
  }

  v10 = sub_220B7C4A8(v8, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    return 0;
  }

  sub_220B506E4(*(a1 + 56) + 32 * v10, &v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76DD8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v13 = v51;
  v14 = sub_220BCDBA0();
  if (*(a1 + 16))
  {
    v16 = sub_220B7C4A8(v14, v15);
    v18 = v17;

    if (v18)
    {
      sub_220B506E4(*(a1 + 56) + 32 * v16, &v53);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF778C8);
      if (swift_dynamicCast())
      {
        v19 = v51;
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_12;
    }
  }

  else
  {
  }

  v19 = 0;
LABEL_12:
  sub_220B8425C(v19);

  v20 = sub_220BCDBA0();
  if (!*(v13 + 16))
  {
    goto LABEL_24;
  }

  v22 = sub_220B7C4A8(v20, v21);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
    goto LABEL_25;
  }

  sub_220B506E4(*(v13 + 56) + 32 * v22, &v53);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_25;
  }

  v25 = v51;
  v26 = sub_220BCDBA0();
  if (*(v13 + 16))
  {
    v50 = v25;
    v28 = sub_220B7C4A8(v26, v27);
    v30 = v29;

    if (v30)
    {
      sub_220B506E4(*(v13 + 56) + 32 * v28, &v53);
      if (swift_dynamicCast())
      {
        v31 = v50;
        if (v50 == 1)
        {
          sub_220BCD600();
          v53 = 0;
          v54 = 0xE000000000000000;
          sub_220BCDFB0();

          v53 = 0xD000000000000012;
          v54 = 0x8000000220BD7FE0;
          v51 = 1;
          LOBYTE(v52) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF778C0);
          v48 = sub_220BCDBD0();
        }

        else
        {
          if (!v50)
          {
            v32 = v51;
            v33 = v2 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_delegate;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v34 = *(v33 + 8);
              ObjectType = swift_getObjectType();
              (*(v34 + 8))(v32, ObjectType, v34);
              v37 = v36;
              swift_unknownObjectRelease();
              if (v37)
              {
                if (sub_220BCDC00())
                {

LABEL_28:

                  v43 = objc_allocWithZone(MEMORY[0x277CCA898]);
                  v44 = sub_220BCDB70();

                  type metadata accessor for Key(0);
                  sub_220B86B34(&qword_2812C08E0, type metadata accessor for Key);
                  v45 = sub_220BCDB00();

                  v46 = [v43 initWithString:v44 attributes:v45];

                  return v46;
                }
              }
            }

            goto LABEL_25;
          }

          sub_220BCD600();
          v53 = 0;
          v54 = 0xE000000000000000;
          sub_220BCDFB0();

          v53 = 0xD000000000000027;
          v54 = 0x8000000220BD7FB0;
          v51 = v31;
          v48 = sub_220BCE120();
        }

        MEMORY[0x223D929B0](v48);

        sub_220BCDA50();

        (*(v5 + 8))(v7, v4);
      }
    }
  }

  else
  {
LABEL_24:
  }

LABEL_25:
  v38 = sub_220BCDBA0();
  if (*(v13 + 16))
  {
    v40 = sub_220B7C4A8(v38, v39);
    v42 = v41;

    if (v42)
    {
      sub_220B506E4(*(v13 + 56) + 32 * v40, &v53);

      if (swift_dynamicCast())
      {
        goto LABEL_28;
      }

      goto LABEL_32;
    }
  }

  else
  {
  }

LABEL_32:

  return 0;
}

void sub_220B8425C(uint64_t a1)
{
  v98 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76C90);
  MEMORY[0x28223BE20](v2 - 8);
  v85 = &v73 - v3;
  v84 = sub_220BCBF80();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v81 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ConstellationContentAttributes(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76F40);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v96 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v89 = &v73 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v73 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v73 - v17;
  v19 = OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_attributes;
  swift_beginAccess();
  sub_220B462DC(v1 + v19, v18, &qword_27CF76F40);
  v20 = sub_220B57370(v18);
  sub_220B463F4(v18, &qword_27CF76F40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF778B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220BD1BA0;
  v22 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v78 = sub_220B55458(0, &qword_2812C08A8);
  *(inited + 64) = v78;
  *(inited + 40) = v20;
  v79 = v22;
  v87 = v20;
  v23 = sub_220B4F77C(inited);
  swift_setDeallocating();
  sub_220B463F4(inited + 32, &qword_27CF76E20);
  v90 = *MEMORY[0x277D740C0];
  v95 = v1;
  v92 = v19;
  sub_220B462DC(v1 + v19, v16, &qword_27CF76F40);
  v24 = *(v6 + 48);
  v94 = v5;
  v93 = v6 + 48;
  v91 = v24;
  if (v24(v16, 1, v5))
  {
    sub_220B463F4(v16, &qword_27CF76F40);
    v25 = v8;
LABEL_3:
    v26 = [objc_opt_self() labelColor];
    goto LABEL_6;
  }

  sub_220B86A6C(v16, v8, type metadata accessor for ConstellationContentAttributes);
  sub_220B463F4(v16, &qword_27CF76F40);
  v27 = *(v8 + 1);

  sub_220B86AD4(v8, type metadata accessor for ConstellationContentAttributes);
  v25 = v8;
  if (!v27)
  {
    goto LABEL_3;
  }

  sub_220B55458(0, &qword_2812C0888);
  v26 = sub_220BCDEB0();
LABEL_6:
  v28 = v26;
  v29 = v98;
  v88 = sub_220B55458(0, &qword_2812C0888);
  v102 = v88;
  *&v101 = v28;
  sub_220B4F8A4(&v101, v100);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v99 = v23;
  sub_220B56F78(v100, v90, isUniquelyReferenced_nonNull_native);
  if (!v29 || (v31 = *(v29 + 16)) == 0)
  {

    return;
  }

  v97 = v99;
  v80 = v25;
  v32 = objc_opt_self();
  v33 = 0;
  v86 = 0;
  v82 = 0;
  v98 = v29 + 32;
  v77 = (v83 + 48);
  v76 = (v83 + 32);
  v75 = *MEMORY[0x277D740E8];
  v74 = (v83 + 16);
  v73 = (v83 + 8);
  v83 = v29 + 40;
  v34 = MEMORY[0x277D84038];
  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v36 = *(v98 + 8 * v33);

    sub_220B8107C(v37);
    v38 = sub_220BCDB00();

    v39 = [v32 markTypeForMarkDictionary_];

    if (v39 > 1)
    {
      break;
    }

    v40 = v96;
    if (!v39)
    {
      v46 = v34;
LABEL_30:
      sub_220B462DC(v95 + v92, v40, &qword_27CF76F40);
      if (v91(v40, 1, v94))
      {
        sub_220B463F4(v40, &qword_27CF76F40);
        goto LABEL_37;
      }

      v47 = v80;
      sub_220B86A6C(v40, v80, type metadata accessor for ConstellationContentAttributes);
      sub_220B463F4(v40, &qword_27CF76F40);
      v48 = *(v47 + 81);
      sub_220B86AD4(v47, type metadata accessor for ConstellationContentAttributes);
      if (v48)
      {
LABEL_37:
        sub_220B8107C(v36);

        v34 = v46;
        v49 = sub_220BCDB00();

        v50 = [v32 hrefForLinkMark_];

        if (!v50)
        {
          goto LABEL_12;
        }

        sub_220BCDBA0();

        v51 = v85;
        sub_220BCBF40();

        v52 = v84;
        if ((*v77)(v51, 1, v84) == 1)
        {
          sub_220B463F4(v51, &qword_27CF76C90);
          goto LABEL_12;
        }

        v53 = v81;
        (*v76)(v81, v51, v52);
        v102 = v52;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v101);
        (*v74)(boxed_opaque_existential_0, v53, v52);
        sub_220B4F8A4(&v101, v100);
        v55 = v97;
        v56 = swift_isUniquelyReferenced_nonNull_native();
        v99 = v55;
        sub_220B56F78(v100, v75, v56);
        (*v73)(v53, v52);
LABEL_49:
        v97 = v99;
      }

      else
      {

        v34 = v46;
      }

LABEL_12:
      if (v35 != v31)
      {
        goto LABEL_13;
      }

      if (v86)
      {
LABEL_53:
        v64 = v87;
        v65 = v97;
        if (v82)
        {
LABEL_54:
          v66 = [v64 fontDescriptor];
          v67 = [v66 fontDescriptorWithSymbolicTraits_];
        }

        else
        {
          v66 = [v87 fontDescriptor];
          v67 = [v66 fontDescriptorWithSymbolicTraits_];
        }

LABEL_58:
        v68 = v67;

        if (v68)
        {
          [v64 pointSize];
          v70 = [objc_opt_self() fontWithDescriptor:v68 size:v69];

          if (v70)
          {
            v102 = v78;
            *&v101 = v70;
            sub_220B4F8A4(&v101, v100);
            v71 = v70;
            v72 = swift_isUniquelyReferenced_nonNull_native();
            v99 = v65;
            sub_220B56F78(v100, v79, v72);

            return;
          }
        }

LABEL_61:

        return;
      }

      v64 = v87;
      v65 = v97;
      if ((v82 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_56:
      v66 = [v64 fontDescriptor];
      v67 = [v66 fontDescriptorWithSymbolicTraits_];
      goto LABEL_58;
    }

    if (v39 != 1)
    {
      goto LABEL_11;
    }

LABEL_18:

    if (v35 == v31)
    {
      goto LABEL_53;
    }

    v86 = 1;
LABEL_13:
    v33 = v35;
    if (v35 >= v31)
    {
      goto LABEL_63;
    }
  }

  if (v39 == 3)
  {
LABEL_44:

    v57 = v89;
    sub_220B462DC(v95 + v92, v89, &qword_27CF76F40);
    if (v91(v57, 1, v94))
    {
      sub_220B463F4(v57, &qword_27CF76F40);
    }

    else
    {
      v58 = v80;
      sub_220B86A6C(v57, v80, type metadata accessor for ConstellationContentAttributes);
      sub_220B463F4(v57, &qword_27CF76F40);
      v59 = *(v58 + 16);

      sub_220B86AD4(v58, type metadata accessor for ConstellationContentAttributes);
      if (v59)
      {
        goto LABEL_48;
      }
    }

    sub_220BCD160();
LABEL_48:

    v60 = v88;
    v61 = sub_220BCDEB0();
    v102 = v60;
    *&v101 = v61;
    sub_220B4F8A4(&v101, v100);
    v62 = v97;
    v63 = swift_isUniquelyReferenced_nonNull_native();
    v99 = v62;
    sub_220B56F78(v100, v90, v63);

    goto LABEL_49;
  }

  if (v39 != 2)
  {
LABEL_11:

    goto LABEL_12;
  }

  if (v35 == v31)
  {
LABEL_50:
    v64 = v87;
    v65 = v97;
    if (v86)
    {
      goto LABEL_54;
    }

    goto LABEL_56;
  }

  v41 = (v83 + 8 * v33);
  v42 = v35;
  while (v42 < v31)
  {
    v35 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      goto LABEL_62;
    }

    v36 = *v41;

    sub_220B8107C(v43);
    v44 = sub_220BCDB00();

    v45 = [v32 markTypeForMarkDictionary_];

    if (v45 != 2)
    {
      if (!v45)
      {
        v46 = v34;
        v82 = 1;
        v40 = v96;
        goto LABEL_30;
      }

      if (v45 == 3)
      {
        v82 = 1;
        goto LABEL_44;
      }

      if (v45 != 1)
      {
        v82 = 1;
        goto LABEL_11;
      }

      v82 = 1;
      goto LABEL_18;
    }

    ++v42;
    ++v41;
    if (v35 == v31)
    {
      goto LABEL_50;
    }
  }

LABEL_63:
  __break(1u);
}

void sub_220B84FAC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_220BCD550();
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x28223BE20](v8);
  v45 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_220BCD580();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v43 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_syncQueue;
  v11 = *(v4 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_syncQueue);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a2;
  v13[4] = a3;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_220B864BC;
  *(v14 + 24) = v13;
  v54 = sub_220B6B818;
  v55 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v51 = 1107296256;
  v52 = sub_220B61738;
  v53 = &block_descriptor_5;
  v15 = _Block_copy(&aBlock);
  v16 = v11;

  dispatch_sync(v16, v15);

  _Block_release(v15);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {
    v17 = [objc_opt_self() assetPathFromAssetConfiguration:a1 type:0];
    if (!v17)
    {
LABEL_7:

      return;
    }

    v18 = v17;
    sub_220B55458(0, &qword_2812C08C8);
    v19 = [swift_getObjCClassFromMetadata() sharedInstance];
    if (!v19)
    {

      return;
    }

    v20 = v19;
    v21 = sub_220BCDB70();
    v22 = *MEMORY[0x277CCA798];
    v23 = swift_allocObject();
    swift_weakInit();
    v24 = swift_allocObject();
    v24[2] = a1;
    v24[3] = v23;
    v24[4] = a2;
    v24[5] = a3;
    v54 = sub_220B864E0;
    v55 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v51 = 1107296256;
    v52 = sub_220B7F848;
    v53 = &block_descriptor_73;
    v25 = _Block_copy(&aBlock);

    v26 = a1;

    LODWORD(v27) = v22;
    v28 = [v20 formattedDataForPath:v18 identifier:v21 attributionIdentifier:0 priority:v25 completionHandler:v27];
    _Block_release(v25);

    if (!v28)
    {

      return;
    }

    v41 = v20;
    v29 = [v28 sessionTask];
    if (v29)
    {
      v31 = v29;
      LODWORD(v30) = v22;
      [v29 setPriority_];

      v32 = *&v42[v4];
      v33 = swift_allocObject();
      swift_weakInit();
      v34 = swift_allocObject();
      v34[2] = v33;
      v34[3] = a2;
      v34[4] = a3;
      v34[5] = v28;
      v54 = sub_220B86518;
      v55 = v34;
      aBlock = MEMORY[0x277D85DD0];
      v51 = 1107296256;
      v52 = sub_220B61C68;
      v53 = &block_descriptor_80;
      v35 = _Block_copy(&aBlock);

      v36 = v32;

      v42 = v28;
      v37 = v43;
      sub_220BCD570();
      v49 = MEMORY[0x277D84F90];
      sub_220B86B34(&qword_2812C0968, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77168);
      sub_220B628FC(&qword_2812C0950, &qword_27CF77168);
      v38 = v45;
      v39 = v48;
      sub_220BCDF50();
      MEMORY[0x223D92BC0](0, v37, v38, v35);
      _Block_release(v35);

      (*(v47 + 8))(v38, v39);
      (*(v44 + 8))(v37, v46);

      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_220B85628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_assetsSessionItemMap;
    v7 = result;
    swift_beginAccess();
    v8 = *(v7 + v6);

    if (*(v8 + 16))
    {
      sub_220B7C4A8(a2, a3);
    }
  }

  return result;
}

void sub_220B856D4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13 = sub_220BCD550();
  v36 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_220BCD580();
  v34 = *(v16 - 8);
  v35 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_220BCD630();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a9)
  {
    v23 = a9;
    sub_220BCD600();
    aBlock = 0;
    v39 = 0xE000000000000000;
    sub_220BCDFB0();

    aBlock = 0xD000000000000020;
    v39 = 0x8000000220BD7F80;
    swift_getErrorValue();
    v24 = sub_220BCE1B0();
    MEMORY[0x223D929B0](v24);

    sub_220BCDA50();

    (*(v20 + 8))(v22, v19);
    goto LABEL_3;
  }

  v29 = [a10 cacheIdentifierForType_];
  if (v29)
  {
    v30 = v29;
    v31 = [objc_opt_self() getImageForIdentifier_];

    if (v31)
    {

      sub_220B55458(0, &qword_2812C0900);
      v32 = sub_220BCDE10();
      v42 = sub_220B86770;
      v43 = a11;
      aBlock = MEMORY[0x277D85DD0];
      v39 = 1107296256;
      v40 = sub_220B61C68;
      v41 = &block_descriptor_83;
      v33 = _Block_copy(&aBlock);

      sub_220BCD570();
      aBlock = MEMORY[0x277D84F90];
      sub_220B86B34(&qword_2812C0968, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77168);
      sub_220B628FC(&qword_2812C0950, &qword_27CF77168);
      sub_220BCDF50();
      MEMORY[0x223D92BC0](0, v18, v15, v33);
      _Block_release(v33);

      (*(v36 + 8))(v15, v13);
      (*(v34 + 8))(v18, v35);
LABEL_3:
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v26 = *(Strong + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_syncQueue);

        v27 = swift_allocObject();
        v27[2] = a11;
        v27[3] = a12;
        v27[4] = a13;
        v42 = sub_220B867B8;
        v43 = v27;
        aBlock = MEMORY[0x277D85DD0];
        v39 = 1107296256;
        v40 = sub_220B61C68;
        v41 = &block_descriptor_89;
        v28 = _Block_copy(&aBlock);

        sub_220BCD570();
        v37 = MEMORY[0x277D84F90];
        sub_220B86B34(&qword_2812C0968, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77168);
        sub_220B628FC(&qword_2812C0950, &qword_27CF77168);
        sub_220BCDF50();
        MEMORY[0x223D92BC0](0, v18, v15, v28);
        _Block_release(v28);

        (*(v36 + 8))(v15, v13);
        (*(v34 + 8))(v18, v35);
      }
    }
  }
}

uint64_t sub_220B85D00()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_220B8073C();
  }

  return result;
}

void sub_220B85D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    v5 = sub_220B86524(a2, a3);
    swift_endAccess();
  }
}

uint64_t sub_220B85DF8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_assetsSessionItemMap;
    v9 = result;
    swift_beginAccess();

    v10 = a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v9 + v8);
    *(v9 + v8) = 0x8000000000000000;
    sub_220B57148(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v9 + v8) = v12;
    swift_endAccess();
  }

  return result;
}

uint64_t sub_220B85EDC()
{
  v1 = v0;
  v2 = sub_220BCDE00();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  v39 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_220BCDDD0();
  MEMORY[0x28223BE20](v38);
  v37 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220BCD580();
  MEMORY[0x28223BE20](v5 - 8);
  v36 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF778D8);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = type metadata accessor for AttributedTextView();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  v33 = OBJC_IVAR____TtC6TipsUI26ConstellationContentParser__bodyText;
  v16 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
  v17 = *(v10 + 28);
  v18 = type metadata accessor for ConstellationContentAttributes(0);
  v19 = *(*(v18 - 8) + 56);
  v19(&v15[v17], 1, 1, v18);
  *(v15 + 1) = 0;
  *(v15 + 2) = 0;
  *v15 = v16;
  v15[24] = 1;
  v20 = &v15[*(v10 + 32)];
  *v20 = 0;
  *(v20 + 1) = 0;
  sub_220B86A6C(v15, v13, type metadata accessor for AttributedTextView);
  sub_220BCC480();
  sub_220B86AD4(v15, type metadata accessor for AttributedTextView);
  (*(v34 + 32))(v1 + v33, v9, v35);
  v21 = (v1 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_language);
  *v21 = 0;
  v21[1] = 0;
  v22 = OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_assetsBaseURL;
  v23 = sub_220BCBF80();
  (*(*(v23 - 8) + 56))(v1 + v22, 1, 1, v23);
  v19((v1 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_attributes), 1, 1, v18);
  *(v1 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_assetFileInfoManager) = 0;
  v24 = (v1 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_viewSize);
  *v24 = 0;
  v24[1] = 0;
  *(v1 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_textIsSelectable) = 1;
  v25 = v1 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_maxWidth;
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = (v1 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_gradientTitle);
  *v26 = 0;
  v26[1] = 0;
  *(v1 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v27 = OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_rawContent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76DD0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_220BD1BA0;
  v29 = MEMORY[0x277D84F90];
  *(v28 + 32) = sub_220B4F2C4(MEMORY[0x277D84F90]);
  *(v1 + v27) = v28;
  *(v1 + OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_numberOfParagraphTags) = 0;
  v30 = OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_assetsSessionItemMap;
  *(v1 + v30) = sub_220B4F570(v29);
  v31 = OBJC_IVAR____TtC6TipsUI26ConstellationContentParser_syncQueue;
  sub_220B55458(0, &qword_2812C0900);
  sub_220BCD570();
  v42 = v29;
  sub_220B86B34(&qword_2812C0908, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77160);
  sub_220B628FC(&qword_2812C0948, &qword_27CF77160);
  sub_220BCDF50();
  (*(v40 + 104))(v39, *MEMORY[0x277D85260], v41);
  *(v1 + v31) = sub_220BCDE30();
  return v1;
}

uint64_t sub_220B8647C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ConstellationContentParser(0);
  result = sub_220BCC420();
  *a1 = result;
  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_220B86524(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_220B7C4A8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_220B7D494();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_220B865C0(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_220B865C0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_220BCDF60() + 1) & ~v5;
    do
    {
      sub_220BCE210();

      sub_220BCDBF0();
      v9 = sub_220BCE240();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t objectdestroy_62Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_220B8683C(id a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(a2 + 16);
  v4 = a2 + 32;
  do
  {
    v5 = v3-- != 0;
    v6 = v5;
    if (!v5)
    {
      break;
    }

    v4 += 8;
    v7 = objc_opt_self();

    sub_220B8107C(v8);

    v9 = sub_220BCDB00();

    v10 = [v7 markTypeForMarkDictionary_];
  }

  while (v10 != a1);
  return v6;
}

uint64_t sub_220B86928(uint64_t a1)
{
  v2 = sub_220BCDBA0();
  if (!*(a1 + 16))
  {
    goto LABEL_7;
  }

  v4 = sub_220B7C4A8(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    return 32;
  }

  sub_220B506E4(*(a1 + 56) + 32 * v4, v11);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 32;
  }

  result = v9;
  v8 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v8 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
LABEL_7:

    return 32;
  }

  return result;
}

uint64_t sub_220B86A14(uint64_t a1)
{
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  return (*(v3 + 16))(a1, ObjectType, v3);
}

uint64_t sub_220B86A6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_220B86AD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_220B86B34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t View.assetContentMode(_:)()
{
  swift_getKeyPath();
  sub_220BCD000();
}

uint64_t sub_220B86C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_220B86E10();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.assetContentMode.getter()
{
  sub_220B599BC();
  sub_220BCC9E0();
  return v1;
}

uint64_t (*EnvironmentValues.assetContentMode.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_220B599BC();
  sub_220BCC9E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_220B86D64;
}

unint64_t sub_220B86DAC()
{
  result = qword_2812C09A0;
  if (!qword_2812C09A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF778E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C09A0);
  }

  return result;
}

unint64_t sub_220B86E10()
{
  result = qword_2812C0A48;
  if (!qword_2812C0A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C0A48);
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

uint64_t sub_220B86E80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_220B86EC8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_220B86F48()
{
  v0 = sub_220BCC080();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_220BCDB60();
  MEMORY[0x28223BE20](v1 - 8);
  sub_220BCDB50();
  sub_220B55458(0, &qword_27CF77300);
  if (!sub_220BCDEC0())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  sub_220BCC050();
  result = sub_220BCDBC0();
  qword_27CF7B2D8 = result;
  unk_27CF7B2E0 = v4;
  return result;
}

uint64_t sub_220B870AC()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77900);
  MEMORY[0x28223BE20](v2);
  v3 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  v4 = *(v0 + 48);
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v3 = v20;
  v1 = v20 >> 62;
  if (v20 >> 62)
  {
LABEL_21:
    v17 = sub_220BCDF70();
    result = sub_220BCDF70();
    if (result < 0)
    {
LABEL_32:
      __break(1u);
      return result;
    }

    if (v17 >= v4)
    {
      v18 = v4;
    }

    else
    {
      v18 = v17;
    }

    if (v17 < 0)
    {
      v18 = v4;
    }

    if (v4)
    {
      v7 = v18;
    }

    else
    {
      v7 = 0;
    }

    result = sub_220BCDF70();
    if (result >= v7)
    {
      goto LABEL_10;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  result = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= v4)
  {
    v6 = *(v0 + 48);
  }

  else
  {
    v6 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (result < v7)
  {
    goto LABEL_31;
  }

LABEL_10:
  if ((v3 & 0xC000000000000001) != 0 && v7)
  {
    sub_220B55458(0, &qword_2812C0930);

    v8 = 0;
    do
    {
      v9 = v8 + 1;
      sub_220BCDFD0();
      v8 = v9;
    }

    while (v7 != v9);
  }

  else
  {
  }

  if (v1)
  {
    v10 = sub_220BCE0B0();
    v11 = v13;
    v1 = v14;
    v12 = v15;
  }

  else
  {
    v10 = v3 & 0xFFFFFFFFFFFFFF8;
    v11 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v12 = (2 * v7) | 1;
  }

  v16 = sub_220B8738C(sub_220B882C4);
  MEMORY[0x28223BE20](v16);
  *(&v19 - 6) = v10;
  *(&v19 - 5) = v11;
  *(&v19 - 4) = v1;
  *(&v19 - 3) = v12;
  *(&v19 - 2) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77908);
  sub_220B897D0();
  sub_220B89888();
  sub_220BCD3F0();
  return swift_unknownObjectRelease();
}

uint64_t sub_220B8738C(void (*a1)(uint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77998);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77920);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  if (*(v1 + 56))
  {
    *v8 = sub_220BCCA50();
    *(v8 + 1) = 0;
    v8[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF779A0);
    a1(v1);
    sub_220B462DC(v8, v5, &qword_27CF77920);
    swift_storeEnumTagMultiPayload();
    sub_220B43830(&qword_27CF77918, &qword_27CF77920);
    sub_220BCCC30();
    return sub_220B463F4(v8, &qword_27CF77920);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_220B43830(&qword_27CF77918, &qword_27CF77920);
    return sub_220BCCC30();
  }
}

uint64_t sub_220B875C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  swift_getKeyPath();
  v10 = swift_allocObject();
  v11 = a5[3];
  *(v10 + 48) = a5[2];
  *(v10 + 64) = v11;
  *(v10 + 80) = a5[4];
  v12 = a5[1];
  *(v10 + 16) = *a5;
  *(v10 + 32) = v12;
  *(v10 + 96) = a1;
  *(v10 + 104) = a2;
  *(v10 + 112) = a3;
  *(v10 + 120) = a4;
  swift_unknownObjectRetain_n();
  sub_220B89BAC(a5, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77978);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77938);
  sub_220B43830(&qword_27CF77980, &qword_27CF77978);
  sub_220B8990C();
  return sub_220BCD3D0();
}

void sub_220B87728(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = sub_220BCDBA0();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_220B87780@<X0>(void **a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, unint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v54 = a5;
  v57 = a4;
  v46 = a3;
  v53 = a6;
  v8 = type metadata accessor for ListItemDocumentView();
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77948);
  MEMORY[0x28223BE20](v56);
  v13 = &v46 - v12;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77940);
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v55 = &v46 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77988);
  v51 = *(v15 - 8);
  v52 = v15;
  MEMORY[0x28223BE20](v15);
  v48 = &v46 - v16;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77938);
  MEMORY[0x28223BE20](v47);
  v18 = &v46 - v17;
  v19 = *a1;
  v59 = *a2;
  *v11 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76CE0);
  swift_storeEnumTagMultiPayload();
  v20 = (v11 + v9[7]);
  sub_220B462DC(&v59, v58, &qword_27CF77990);
  type metadata accessor for SearchResultsViewModel();
  sub_220B89AF4(&qword_2812C0F98, type metadata accessor for SearchResultsViewModel);
  v21 = v19;
  *v20 = sub_220BCC7A0();
  v20[1] = v22;
  *(v11 + v9[8]) = v21;
  *(v11 + v9[9]) = 4;
  v23 = [v21 identifier];
  v24 = sub_220BCDBA0();
  v26 = v25;

  v27 = sub_220B87DB8(v24, v26, sub_220B881F4, &type metadata for GuidedHelpSearchResultsItemsView);

  if (v27)
  {
    v58[0] = v27;
    v27 = sub_220BCD380();
  }

  result = sub_220B89BE4(v11, v13);
  v30 = v55;
  v29 = v56;
  *&v13[*(v56 + 36)] = v27;
  v31 = v54 >> 1;
  if (v54 >> 1 == v57)
  {
    v32 = v21;
  }

  else
  {
    if (v31 <= v57)
    {
      __break(1u);
      goto LABEL_13;
    }

    v33 = *(v46 + 8 * v57);
    sub_220B55458(0, &qword_2812C0930);
    v34 = v21;
    v35 = v33;
    sub_220BCDED0();
  }

  sub_220BCC670();
  v36 = sub_220B89A0C();
  sub_220BCD040();
  result = sub_220B463F4(v13, &qword_27CF77948);
  if (v31 == v57)
  {

LABEL_11:
    sub_220BCC680();
    v58[0] = v29;
    v58[1] = v36;
    swift_getOpaqueTypeConformance2();
    v39 = v48;
    v40 = v50;
    sub_220BCD040();
    (*(v49 + 8))(v30, v40);
    v41 = swift_allocObject();
    v42 = a2[3];
    *(v41 + 48) = a2[2];
    *(v41 + 64) = v42;
    *(v41 + 80) = a2[4];
    v43 = a2[1];
    *(v41 + 16) = *a2;
    *(v41 + 32) = v43;
    *(v41 + 96) = v21;
    (*(v51 + 32))(v18, v39, v52);
    v44 = &v18[*(v47 + 36)];
    *v44 = sub_220B89C48;
    v44[1] = v41;
    sub_220B37334(v18, v53);
    v45 = v21;
    return sub_220B89BAC(a2, v58);
  }

  if (v31 > v57)
  {
    v37 = *(v46 + 8 * v31 - 8);
    sub_220B55458(0, &qword_2812C0930);
    v38 = v37;
    sub_220BCDED0();

    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_220B87DB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v18 = *v4;
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = *(&v18 + 1);
  sub_220BCC4C0();
  sub_220B463F4(&v18, &qword_27CF77990);

  if (v17 == 1)
  {
    v11 = a3(v10);
    v12 = (*(v11 + 80))(a4, v11);
    if (v13)
    {
      if (v12 == a1 && v13 == a2)
      {

LABEL_7:
        v15 = [objc_opt_self() tintColor];
        return sub_220BCD150();
      }

      v14 = sub_220BCE130();

      if (v14)
      {
        goto LABEL_7;
      }
    }
  }

  return 0;
}

uint64_t sub_220B87F44(uint64_t a1, id a2)
{
  v2 = *(a1 + 64);
  v3 = [a2 identifier];
  v4 = sub_220BCDBA0();
  v6 = v5;

  v2(v4, v6);
}

uint64_t sub_220B87FC8()
{
  if (qword_27CF76950 != -1)
  {
    swift_once();
  }

  v0 = qword_27CF7B2D8;

  return v0;
}

uint64_t sub_220B88030()
{
  v1 = *(v0 + 24);
  v4[2] = *(v0 + 16);
  v4[3] = v1;
  v5 = *(v0 + 32);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF778F8);
  MEMORY[0x223D92130](v4, v2);
  return v4[0];
}

uint64_t sub_220B88088@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  type metadata accessor for SearchResultsViewModel();
  sub_220B89AF4(&qword_2812C0F98, type metadata accessor for SearchResultsViewModel);
  result = sub_220BCC7A0();
  *a8 = result;
  *(a8 + 8) = v17;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a1;
  *(a8 + 56) = a2;
  *(a8 + 64) = a7;
  *(a8 + 72) = a9;
  return result;
}

unint64_t sub_220B881F4()
{
  result = qword_27CF778E8;
  if (!qword_27CF778E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF778E8);
  }

  return result;
}

unint64_t sub_220B88248(uint64_t a1)
{
  result = sub_220B88270();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_220B88270()
{
  result = qword_27CF778F0;
  if (!qword_27CF778F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF778F0);
  }

  return result;
}

uint64_t sub_220B882C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v51 = a1;
  v57 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77618);
  v53 = *(v2 - 8);
  v54 = v2;
  MEMORY[0x28223BE20](v2);
  v49 = &v49 - v3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF779A8);
  v4 = MEMORY[0x28223BE20](v52);
  v56 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v50 = &v49 - v7;
  MEMORY[0x28223BE20](v6);
  v55 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76CE8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v49 - v10;
  v12 = sub_220BCCE70();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CF76950 != -1)
  {
    swift_once();
  }

  v58[0] = qword_27CF7B2D8;
  v58[1] = unk_27CF7B2E0;
  sub_220B43454();

  v16 = sub_220BCCF80();
  v18 = v17;
  v20 = v19;
  (*(v13 + 104))(v15, *MEMORY[0x277CE0A90], v12);
  v21 = sub_220BCCDD0();
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  sub_220BCCDE0();
  sub_220BCCE10();
  sub_220B463F4(v11, &qword_27CF76CE8);
  (*(v13 + 8))(v15, v12);
  v22 = sub_220BCCF50();
  v24 = v23;
  v26 = v25;

  sub_220B5E8DC(v16, v18, v20 & 1);

  v27 = [objc_opt_self() labelColor];
  v58[0] = sub_220BCD150();
  v28 = sub_220BCCF30();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_220B5E8DC(v22, v24, v26 & 1);

  v35 = swift_allocObject();
  v36 = v51;
  v37 = *(v51 + 48);
  v35[3] = *(v51 + 32);
  v35[4] = v37;
  v35[5] = *(v36 + 64);
  v38 = *(v36 + 16);
  v35[1] = *v36;
  v35[2] = v38;
  sub_220B89BAC(v36, v58);
  v39 = v49;
  sub_220BCD330();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  if (v58[0] >> 62)
  {
    v40 = sub_220BCDF70();
  }

  else
  {
    v40 = *((v58[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (*(v36 + 48) >= v40)
  {
    v41 = 0.0;
  }

  else
  {
    v41 = 1.0;
  }

  v42 = v50;
  (*(v53 + 32))(v50, v39, v54);
  *(v42 + *(v52 + 36)) = v41;
  v43 = v55;
  sub_220B89C94(v42, v55);
  v44 = v56;
  sub_220B462DC(v43, v56, &qword_27CF779A8);
  v45 = v57;
  *v57 = v28;
  v45[1] = v30;
  v46 = v32 & 1;
  *(v45 + 16) = v46;
  v45[3] = v34;
  v45[4] = 0;
  *(v45 + 40) = 1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF779B0);
  sub_220B462DC(v44, v45 + *(v47 + 64), &qword_27CF779A8);
  sub_220B5E890(v28, v30, v46);

  sub_220B463F4(v43, &qword_27CF779A8);
  sub_220B463F4(v44, &qword_27CF779A8);
  sub_220B5E8DC(v28, v30, v46);
}

uint64_t sub_220B88928@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v51 = a1;
  v57 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77618);
  v53 = *(v2 - 8);
  v54 = v2;
  MEMORY[0x28223BE20](v2);
  v49 = &v49 - v3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF779A8);
  v4 = MEMORY[0x28223BE20](v52);
  v56 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v50 = &v49 - v7;
  MEMORY[0x28223BE20](v6);
  v55 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76CE8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v49 - v10;
  v12 = sub_220BCCE70();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CF76988 != -1)
  {
    swift_once();
  }

  v58[0] = qword_27CF7B2E8;
  v58[1] = unk_27CF7B2F0;
  sub_220B43454();

  v16 = sub_220BCCF80();
  v18 = v17;
  v20 = v19;
  (*(v13 + 104))(v15, *MEMORY[0x277CE0A90], v12);
  v21 = sub_220BCCDD0();
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  sub_220BCCDE0();
  sub_220BCCE10();
  sub_220B463F4(v11, &qword_27CF76CE8);
  (*(v13 + 8))(v15, v12);
  v22 = sub_220BCCF50();
  v24 = v23;
  v26 = v25;

  sub_220B5E8DC(v16, v18, v20 & 1);

  v27 = [objc_opt_self() labelColor];
  v58[0] = sub_220BCD150();
  v28 = sub_220BCCF30();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_220B5E8DC(v22, v24, v26 & 1);

  v35 = swift_allocObject();
  v36 = v51;
  v37 = *(v51 + 48);
  v35[3] = *(v51 + 32);
  v35[4] = v37;
  v35[5] = *(v36 + 64);
  v38 = *(v36 + 16);
  v35[1] = *v36;
  v35[2] = v38;
  sub_220B89D98(v36, v58);
  v39 = v49;
  sub_220BCD330();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  if (v58[0] >> 62)
  {
    v40 = sub_220BCDF70();
  }

  else
  {
    v40 = *((v58[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (*(v36 + 48) >= v40)
  {
    v41 = 0.0;
  }

  else
  {
    v41 = 1.0;
  }

  v42 = v50;
  (*(v53 + 32))(v50, v39, v54);
  *(v42 + *(v52 + 36)) = v41;
  v43 = v55;
  sub_220B89C94(v42, v55);
  v44 = v56;
  sub_220B462DC(v43, v56, &qword_27CF779A8);
  v45 = v57;
  *v57 = v28;
  v45[1] = v30;
  v46 = v32 & 1;
  *(v45 + 16) = v46;
  v45[3] = v34;
  v45[4] = 0;
  *(v45 + 40) = 1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF779B0);
  sub_220B462DC(v44, v45 + *(v47 + 64), &qword_27CF779A8);
  sub_220B5E890(v28, v30, v46);

  sub_220B463F4(v43, &qword_27CF779A8);
  sub_220B463F4(v44, &qword_27CF779A8);
  sub_220B5E8DC(v28, v30, v46);
}

uint64_t sub_220B88F8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v51 = a1;
  v57 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77618);
  v53 = *(v2 - 8);
  v54 = v2;
  MEMORY[0x28223BE20](v2);
  v49 = &v49 - v3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF779A8);
  v4 = MEMORY[0x28223BE20](v52);
  v56 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v50 = &v49 - v7;
  MEMORY[0x28223BE20](v6);
  v55 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76CE8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v49 - v10;
  v12 = sub_220BCCE70();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CF76990 != -1)
  {
    swift_once();
  }

  v58[0] = qword_27CF7B2F8;
  v58[1] = unk_27CF7B300;
  sub_220B43454();

  v16 = sub_220BCCF80();
  v18 = v17;
  v20 = v19;
  (*(v13 + 104))(v15, *MEMORY[0x277CE0A90], v12);
  v21 = sub_220BCCDD0();
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  sub_220BCCDE0();
  sub_220BCCE10();
  sub_220B463F4(v11, &qword_27CF76CE8);
  (*(v13 + 8))(v15, v12);
  v22 = sub_220BCCF50();
  v24 = v23;
  v26 = v25;

  sub_220B5E8DC(v16, v18, v20 & 1);

  v27 = [objc_opt_self() labelColor];
  v58[0] = sub_220BCD150();
  v28 = sub_220BCCF30();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_220B5E8DC(v22, v24, v26 & 1);

  v35 = swift_allocObject();
  v36 = v51;
  v37 = *(v51 + 48);
  v35[3] = *(v51 + 32);
  v35[4] = v37;
  v35[5] = *(v36 + 64);
  v38 = *(v36 + 16);
  v35[1] = *v36;
  v35[2] = v38;
  sub_220B89EE0(v36, v58);
  v39 = v49;
  sub_220BCD330();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  if (v58[0] >> 62)
  {
    v40 = sub_220BCDF70();
  }

  else
  {
    v40 = *((v58[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (*(v36 + 48) >= v40)
  {
    v41 = 0.0;
  }

  else
  {
    v41 = 1.0;
  }

  v42 = v50;
  (*(v53 + 32))(v50, v39, v54);
  *(v42 + *(v52 + 36)) = v41;
  v43 = v55;
  sub_220B89C94(v42, v55);
  v44 = v56;
  sub_220B462DC(v43, v56, &qword_27CF779A8);
  v45 = v57;
  *v57 = v28;
  v45[1] = v30;
  v46 = v32 & 1;
  *(v45 + 16) = v46;
  v45[3] = v34;
  v45[4] = 0;
  *(v45 + 40) = 1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF779B0);
  sub_220B462DC(v44, v45 + *(v47 + 64), &qword_27CF779A8);
  sub_220B5E890(v28, v30, v46);

  sub_220B463F4(v43, &qword_27CF779A8);
  sub_220B463F4(v44, &qword_27CF779A8);
  sub_220B5E8DC(v28, v30, v46);
}

uint64_t sub_220B895F0(uint64_t a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  v3 = (v7 + OBJC_IVAR____TtC6TipsUI18SearchResultsModel_searchResultsSeeAllHandler);
  swift_beginAccess();
  v4 = *v3;
  sub_220B3A13C(*v3);

  if (v4)
  {
    v6 = a2;
    v4(&v6);
    return sub_220B3A128(v4);
  }

  return result;
}

uint64_t sub_220B896C8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_220BCC4C0();

  *a1 = v3;
  return result;
}

uint64_t sub_220B89748(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_220BCC4D0();
}

unint64_t sub_220B897D0()
{
  result = qword_27CF77910;
  if (!qword_27CF77910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77900);
    sub_220B43830(&qword_27CF77918, &qword_27CF77920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77910);
  }

  return result;
}

unint64_t sub_220B89888()
{
  result = qword_27CF77928;
  if (!qword_27CF77928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77908);
    sub_220B8990C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77928);
  }

  return result;
}

unint64_t sub_220B8990C()
{
  result = qword_27CF77930;
  if (!qword_27CF77930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77938);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77940);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77948);
    sub_220B89A0C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_220B89B3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77930);
  }

  return result;
}

unint64_t sub_220B89A0C()
{
  result = qword_27CF77950;
  if (!qword_27CF77950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF77948);
    sub_220B89AF4(&qword_27CF77958, type metadata accessor for ListItemDocumentView);
    sub_220B43830(&qword_27CF77960, &qword_27CF77968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77950);
  }

  return result;
}

uint64_t sub_220B89AF4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_220B89B3C()
{
  result = qword_27CF77970;
  if (!qword_27CF77970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF77970);
  }

  return result;
}

uint64_t sub_220B89BE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListItemDocumentView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220B89C54()
{
  v1 = v0[4];
  v4[2] = v0[3];
  v4[3] = v1;
  v4[4] = v0[5];
  v2 = v0[2];
  v4[0] = v0[1];
  v4[1] = v2;
  return sub_220B895F0(v4, 4);
}

uint64_t sub_220B89C94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF779A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_220B89D04()
{
  result = qword_27CF779B8;
  if (!qword_27CF779B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF779B8);
  }

  return result;
}

uint64_t sub_220B89D58()
{
  v1 = v0[4];
  v4[2] = v0[3];
  v4[3] = v1;
  v4[4] = v0[5];
  v2 = v0[2];
  v4[0] = v0[1];
  v4[1] = v2;
  return sub_220B895F0(v4, 2);
}

unint64_t sub_220B89DF4()
{
  result = qword_27CF779C0;
  if (!qword_27CF779C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF779C0);
  }

  return result;
}

uint64_t objectdestroy_28Tm()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_220B89EA0()
{
  v1 = v0[4];
  v4[2] = v0[3];
  v4[3] = v1;
  v4[4] = v0[5];
  v2 = v0[2];
  v4[0] = v0[1];
  v4[1] = v2;
  return sub_220B895F0(v4, 1);
}

unint64_t sub_220B89F3C()
{
  result = qword_27CF779C8;
  if (!qword_27CF779C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF779D0);
    sub_220B897D0();
    sub_220B89888();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF779C8);
  }

  return result;
}

uint64_t sub_220B89FD4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_220BCD170();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF772B8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_220BD3EB0;
  sub_220BCD190();
  v7 = sub_220BCD1E0();

  *(v6 + 32) = v7;
  sub_220BCD1D0();
  v8 = sub_220BCD1E0();

  *(v6 + 40) = v8;
  (*(v3 + 104))(v5, *MEMORY[0x277CE0EE0], v2);
  sub_220BCD210();
  v9 = sub_220BCD1E0();

  *(v6 + 48) = v9;
  sub_220BCD1D0();
  v10 = sub_220BCD1E0();

  *(v6 + 56) = v10;
  sub_220BCD190();
  v11 = sub_220BCD1E0();

  *(v6 + 64) = v11;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v6;
  *(a1 + 32) = 0x4000000000000000;
  return result;
}

id sub_220B8A1BC()
{
  v1 = sub_220BCC9D0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {

    return v5;
  }

  else
  {
    v8[0] = *v0;

    sub_220BCDDC0();
    v7 = sub_220BCCD50();
    sub_220BCC3C0();

    sub_220BCC9C0();
    swift_getAtKeyPath();
    sub_220B90090(v8[0], 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }
}

uint64_t sub_220B8A328@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_220BCC9D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76CE0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TipSpotlightView();
  sub_220B462DC(v1 + *(v10 + 20), v9, &qword_27CF76CE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_220BCC5C0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_220BCDDC0();
    v13 = sub_220BCCD50();
    sub_220BCC3C0();

    sub_220BCC9C0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_220B8A530@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_220BCC9D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF771B8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TipSpotlightView();
  sub_220B462DC(v1 + *(v10 + 24), v9, &qword_27CF771B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_220BCC5A0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_220BCDDC0();
    v13 = sub_220BCCD50();
    sub_220BCC3C0();

    sub_220BCC9C0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t TipSpotlightView.assetConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TipSpotlightView() + 48);
  v4 = sub_220BCD960();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for TipSpotlightView()
{
  result = qword_2812C1E50;
  if (!qword_2812C1E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TipSpotlightView.assetConfiguration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TipSpotlightView() + 48);
  v4 = sub_220BCD960();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TipSpotlightView.bodyContent.getter()
{
  type metadata accessor for TipSpotlightView();
}

uint64_t TipSpotlightView.bodyContent.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TipSpotlightView() + 52);

  *(v1 + v3) = a1;
  return result;
}

uint64_t TipSpotlightView.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  v2 = type metadata accessor for TipSpotlightView();
  v3 = v2[5];
  *(a1 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF76CE0);
  swift_storeEnumTagMultiPayload();
  v4 = v2[6];
  *(a1 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF771B8);
  swift_storeEnumTagMultiPayload();
  v5 = v2[7];
  sub_220BCD2E0();
  *(a1 + v5) = v10;
  v6 = v2[8];
  sub_220BCD2E0();
  *(a1 + v6) = v10;
  v7 = a1 + v2[9];
  type metadata accessor for CGSize(0);
  sub_220BCD2E0();
  *v7 = v10;
  *(v7 + 16) = v11;
  v8 = a1 + v2[10];
  sub_220BCD2E0();
  *v8 = v10;
  *(v8 + 16) = v11;
  sub_220BCCF00();
  *(a1 + v2[13]) = 0;
  return sub_220BCD940();
}

uint64_t TipSpotlightView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_220B8ABD8(a1);
  type metadata accessor for TipSpotlightView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77278);
  sub_220BCD310();
  v2 = sub_220BCD440();
  v4 = v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77A10);
  v6 = (a1 + *(result + 36));
  *v6 = v7;
  v6[1] = v8;
  v6[2] = v9;
  v6[3] = v10;
  v6[4] = v2;
  v6[5] = v4;
  return result;
}

uint64_t sub_220B8ABD8@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77A98);
  MEMORY[0x28223BE20](v34);
  v2 = &v33 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77A78);
  MEMORY[0x28223BE20](v3);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77B40);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77B48);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77A68);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  v15 = sub_220B8B0C0();
  if (v15)
  {
    if (v15 == 1)
    {
      sub_220B8BC44(v2);
      v16 = sub_220BCCD60();
      sub_220BCC590();
      v17 = &v2[*(v34 + 36)];
      *v17 = v16;
      *(v17 + 1) = v18;
      *(v17 + 2) = v19;
      *(v17 + 3) = v20;
      *(v17 + 4) = v21;
      v17[40] = 0;
      v22 = &qword_27CF77A98;
      sub_220B462DC(v2, v8, &qword_27CF77A98);
      swift_storeEnumTagMultiPayload();
      sub_220B8F600();
      sub_220B8F744(&qword_27CF77A90, &qword_27CF77A98, &unk_220BD4118, sub_220B8F7C8);
      sub_220BCCC30();
      v23 = v2;
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_220B8F68C();
      sub_220BCCC30();
      v22 = &qword_27CF77A68;
      sub_220B462DC(v14, v8, &qword_27CF77A68);
      swift_storeEnumTagMultiPayload();
      sub_220B8F600();
      sub_220B8F744(&qword_27CF77A90, &qword_27CF77A98, &unk_220BD4118, sub_220B8F7C8);
      sub_220BCCC30();
      v23 = v14;
    }

    v31 = v22;
  }

  else
  {
    *v5 = sub_220BCCA50();
    *(v5 + 1) = 0x4028000000000000;
    v5[16] = 0;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF77B50);
    sub_220B8B544(&v5[*(v24 + 44)]);
    v25 = sub_220BCCD60();
    sub_220BCC590();
    v26 = &v5[*(v3 + 36)];
    *v26 = v25;
    *(v26 + 1) = v27;
    *(v26 + 2) = v28;
    *(v26 + 3) = v29;
    *(v26 + 4) = v30;
    v26[40] = 0;
    sub_220B462DC(v5, v11, &qword_27CF77A78);
    swift_storeEnumTagMultiPayload();
    sub_220B8F68C();
    sub_220BCCC30();
    sub_220B462DC(v14, v8, &qword_27CF77A68);
    swift_storeEnumTagMultiPayload();
    sub_220B8F600();
    sub_220B8F744(&qword_27CF77A90, &qword_27CF77A98, &unk_220BD4118, sub_220B8F7C8);
    sub_220BCCC30();
    sub_220B463F4(v14, &qword_27CF77A68);
    v23 = v5;
    v31 = &qword_27CF77A78;
  }

  return sub_220B463F4(v23, v31);
}

uint64_t sub_220B8B0C0()
{
  v0 = sub_220B8A1BC();
  v1 = [v0 contentType];

  if (!v1)
  {
    return 2;
  }

  v2 = sub_220BCDBA0();
  v4 = v3;

  sub_220B55458(0, &qword_2812C08B0);
  if (v2 == sub_220BCDE80() && v4 == v5)
  {

LABEL_10:

    return 0;
  }

  v7 = sub_220BCE130();

  if (v7)
  {
    goto LABEL_10;
  }

  sub_220BCD8F0();
  if (v2 == sub_220BCD8A0() && v4 == v9)
  {

    return 1;
  }

  else
  {
    v10 = sub_220BCE130();

    if (v10)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}