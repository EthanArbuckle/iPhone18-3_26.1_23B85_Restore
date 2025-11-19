uint64_t sub_26AEB39C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScanFailedView.FailureReason(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
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

_BYTE *storeEnumTagSinglePayload for ScanFailedView.FailureReason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
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

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_26AEB3F54(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDD20);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_26AEB4008(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDD20);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFD0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_26AEB413C(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDD20);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFD0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_26AEB42EC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    return sub_26AEB4364(a1, a2, a3);
  }

  sub_26AE95D28(a1, a2, a3 & 1);
  return sub_26B078640();
}

uint64_t sub_26AEB4420(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    return sub_26AEB4498(a1, a2, a3);
  }

  sub_26AE95AFC(a1, a2, a3 & 1);
}

void *sub_26AEB4550(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

uint64_t LatestUpdateDeepLinkCommand.execute(with:)(uint64_t a1, uint64_t a2)
{
  v2[11] = a2;
  v2[10] = a1;
  v2[4] = v2;
  v2[5] = 0;
  v2[6] = 0;
  v3 = sub_26B078580();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[5] = a2;
  v4 = swift_task_alloc();
  *(v6 + 136) = v4;
  *v4 = *(v6 + 32);
  v4[1] = sub_26AEB4708;

  return sub_26AED72E4(a2, &type metadata for LatestUpdateDeepLinkCommand, &protocol witness table for LatestUpdateDeepLinkCommand);
}

uint64_t sub_26AEB4708(uint64_t a1, char a2)
{
  v4 = *v2;
  *(v4 + 32) = *v2;
  *(v4 + 144) = a1;
  *(v4 + 152) = a2;

  return MEMORY[0x2822009F8](sub_26AEB4828, 0, 0);
}

uint64_t sub_26AEB4828()
{
  v97 = v0;
  v1 = *(v0 + 152);
  *(v0 + 32) = v0;
  if (v1)
  {
    sub_26B078550();
    log = sub_26B078570();
    v43 = sub_26B07A2C0();
    v35 = swift_allocObject();
    *(v35 + 16) = 32;
    v36 = swift_allocObject();
    *(v36 + 16) = 8;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_26AEB67A4;
    *(v32 + 24) = 0;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_26AEB6BEC;
    *(v33 + 24) = v32;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_26AEB6C38;
    *(v37 + 24) = v33;
    v38 = swift_allocObject();
    *(v38 + 16) = 32;
    v39 = swift_allocObject();
    *(v39 + 16) = 8;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_26AEB67A8;
    *(v34 + 24) = 0;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_26AEB6D38;
    *(v40 + 24) = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
    sub_26B07A760();
    v41 = v3;

    *v41 = sub_26AEB6B70;
    v41[1] = v35;

    v41[2] = sub_26AEB6BA4;
    v41[3] = v36;

    v41[4] = sub_26AEB6C84;
    v41[5] = v37;

    v41[6] = sub_26AEB6CBC;
    v41[7] = v38;

    v41[8] = sub_26AEB6CF0;
    v41[9] = v39;

    v41[10] = sub_26AEB6D84;
    v41[11] = v40;
    sub_26AEA3B2C();

    if (os_log_type_enabled(log, v43))
    {
      v29 = sub_26B07A420();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
      v30 = sub_26AEA3B70(0);
      v31 = sub_26AEA3B70(2);
      v85 = v29;
      v86 = v30;
      v87 = v31;
      sub_26AEA3BC4(2, &v85);
      sub_26AEA3BC4(2, &v85);
      v88 = sub_26AEB6B70;
      v89 = v35;
      sub_26AEA3BD8(&v88, &v85, &v86, &v87);
      v88 = sub_26AEB6BA4;
      v89 = v36;
      sub_26AEA3BD8(&v88, &v85, &v86, &v87);
      v88 = sub_26AEB6C84;
      v89 = v37;
      sub_26AEA3BD8(&v88, &v85, &v86, &v87);
      v88 = sub_26AEB6CBC;
      v89 = v38;
      sub_26AEA3BD8(&v88, &v85, &v86, &v87);
      v88 = sub_26AEB6CF0;
      v89 = v39;
      sub_26AEA3BD8(&v88, &v85, &v86, &v87);
      v88 = sub_26AEB6D84;
      v89 = v40;
      sub_26AEA3BD8(&v88, &v85, &v86, &v87);
      _os_log_impl(&dword_26AE88000, log, v43, "%s.%s: timed out waiting for state change", v29, 0x16u);
      sub_26AEA3C24(v30);
      sub_26AEA3C24(v31);
      sub_26B07A400();
    }

    else
    {
    }

    v27 = v79[15];
    v28 = v79[12];
    v26 = v79[13];
    MEMORY[0x277D82BD8](log);
    (*(v26 + 8))(v27, v28);
    goto LABEL_24;
  }

  v78 = v79[18];
  v79[6] = v78;
  type metadata accessor for SUUIStatefulUIState();
  v79[7] = v78;
  v79[8] = 4;
  sub_26AEB6FE0();
  if ((sub_26B079D40() & 1) == 0)
  {
    v50 = v79[18];
    sub_26B078550();
    v51 = swift_allocObject();
    *(v51 + 16) = v50;

    v55 = swift_allocObject();
    *(v55 + 16) = sub_26AEB7090;
    *(v55 + 24) = v51;

    oslog = sub_26B078570();
    v68 = sub_26B07A2C0();
    v57 = swift_allocObject();
    *(v57 + 16) = 32;
    v58 = swift_allocObject();
    *(v58 + 16) = 8;
    v52 = swift_allocObject();
    *(v52 + 16) = sub_26AEB7060;
    *(v52 + 24) = 0;
    v53 = swift_allocObject();
    *(v53 + 16) = sub_26AEB725C;
    *(v53 + 24) = v52;
    v59 = swift_allocObject();
    *(v59 + 16) = sub_26AEB72A8;
    *(v59 + 24) = v53;
    v60 = swift_allocObject();
    *(v60 + 16) = 32;
    v61 = swift_allocObject();
    *(v61 + 16) = 8;
    v54 = swift_allocObject();
    *(v54 + 16) = sub_26AEB675C;
    *(v54 + 24) = 0;
    v62 = swift_allocObject();
    *(v62 + 16) = sub_26AEB73A8;
    *(v62 + 24) = v54;
    v63 = swift_allocObject();
    *(v63 + 16) = 32;
    v64 = swift_allocObject();
    *(v64 + 16) = 8;
    v56 = swift_allocObject();
    *(v56 + 16) = sub_26AEB70D8;
    *(v56 + 24) = v55;
    v65 = swift_allocObject();
    *(v65 + 16) = sub_26AEB74A8;
    *(v65 + 24) = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
    sub_26B07A760();
    v66 = v2;

    *v66 = sub_26AEB71E0;
    v66[1] = v57;

    v66[2] = sub_26AEB7214;
    v66[3] = v58;

    v66[4] = sub_26AEB72F4;
    v66[5] = v59;

    v66[6] = sub_26AEB732C;
    v66[7] = v60;

    v66[8] = sub_26AEB7360;
    v66[9] = v61;

    v66[10] = sub_26AEB73F4;
    v66[11] = v62;

    v66[12] = sub_26AEB742C;
    v66[13] = v63;

    v66[14] = sub_26AEB7460;
    v66[15] = v64;

    v66[16] = sub_26AEB74F4;
    v66[17] = v65;
    sub_26AEA3B2C();

    if (os_log_type_enabled(oslog, v68))
    {
      buf = sub_26B07A420();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
      v48 = sub_26AEA3B70(0);
      v49 = sub_26AEA3B70(3);
      v90 = buf;
      v91 = v48;
      v92 = v49;
      sub_26AEA3BC4(2, &v90);
      sub_26AEA3BC4(3, &v90);
      v93 = sub_26AEB71E0;
      v94 = v57;
      sub_26AEA3BD8(&v93, &v90, &v91, &v92);
      v93 = sub_26AEB7214;
      v94 = v58;
      sub_26AEA3BD8(&v93, &v90, &v91, &v92);
      v93 = sub_26AEB72F4;
      v94 = v59;
      sub_26AEA3BD8(&v93, &v90, &v91, &v92);
      v93 = sub_26AEB732C;
      v94 = v60;
      sub_26AEA3BD8(&v93, &v90, &v91, &v92);
      v93 = sub_26AEB7360;
      v94 = v61;
      sub_26AEA3BD8(&v93, &v90, &v91, &v92);
      v93 = sub_26AEB73F4;
      v94 = v62;
      sub_26AEA3BD8(&v93, &v90, &v91, &v92);
      v93 = sub_26AEB742C;
      v94 = v63;
      sub_26AEA3BD8(&v93, &v90, &v91, &v92);
      v93 = sub_26AEB7460;
      v94 = v64;
      sub_26AEA3BD8(&v93, &v90, &v91, &v92);
      v93 = sub_26AEB74F4;
      v94 = v65;
      sub_26AEA3BD8(&v93, &v90, &v91, &v92);
      _os_log_impl(&dword_26AE88000, oslog, v68, "%s.%s: State changed to %s, but not enough to navigate to also Available view.", buf, 0x20u);
      sub_26AEA3C24(v48);
      sub_26AEA3C24(v49);
      sub_26B07A400();
    }

    else
    {
    }

    v45 = v79[16];
    v46 = v79[12];
    v44 = v79[13];
    MEMORY[0x277D82BD8](oslog);
    (*(v44 + 8))(v45, v46);
    goto LABEL_24;
  }

  updated = DeepLinkParameters.showLatestUpdatePane.getter();

  if ((updated & 1) == 0)
  {

LABEL_24:
    sub_26B078550();
    v24 = sub_26B078570();
    v25 = sub_26B07A2B0();
    v17 = swift_allocObject();
    *(v17 + 16) = 32;
    v18 = swift_allocObject();
    *(v18 + 16) = 8;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_26AEB6D90;
    *(v14 + 24) = 0;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_26AEB6E3C;
    *(v15 + 24) = v14;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_26AEB6E88;
    *(v19 + 24) = v15;
    v20 = swift_allocObject();
    *(v20 + 16) = 32;
    v21 = swift_allocObject();
    *(v21 + 16) = 8;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_26AEB67E8;
    *(v16 + 24) = 0;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_26AEB6F88;
    *(v22 + 24) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
    sub_26B07A760();
    v23 = v4;

    *v23 = sub_26AEB6DC0;
    v23[1] = v17;

    v23[2] = sub_26AEB6DF4;
    v23[3] = v18;

    v23[4] = sub_26AEB6ED4;
    v23[5] = v19;

    v23[6] = sub_26AEB6F0C;
    v23[7] = v20;

    v23[8] = sub_26AEB6F40;
    v23[9] = v21;

    v23[10] = sub_26AEB6FD4;
    v23[11] = v22;
    sub_26AEA3B2C();

    if (os_log_type_enabled(v24, v25))
    {
      v11 = sub_26B07A420();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
      v12 = sub_26AEA3B70(0);
      v13 = sub_26AEA3B70(2);
      v80 = v11;
      v81 = v12;
      v82 = v13;
      sub_26AEA3BC4(2, &v80);
      sub_26AEA3BC4(2, &v80);
      v83 = sub_26AEB6DC0;
      v84 = v17;
      sub_26AEA3BD8(&v83, &v80, &v81, &v82);
      v83 = sub_26AEB6DF4;
      v84 = v18;
      sub_26AEA3BD8(&v83, &v80, &v81, &v82);
      v83 = sub_26AEB6ED4;
      v84 = v19;
      sub_26AEA3BD8(&v83, &v80, &v81, &v82);
      v83 = sub_26AEB6F0C;
      v84 = v20;
      sub_26AEA3BD8(&v83, &v80, &v81, &v82);
      v83 = sub_26AEB6F40;
      v84 = v21;
      sub_26AEA3BD8(&v83, &v80, &v81, &v82);
      v83 = sub_26AEB6FD4;
      v84 = v22;
      sub_26AEA3BD8(&v83, &v80, &v81, &v82);
      _os_log_impl(&dword_26AE88000, v24, v25, "%s.%s: no extra steps needs to be navigate to.", v11, 0x16u);
      sub_26AEA3C24(v12);
      sub_26AEA3C24(v13);
      sub_26B07A400();
    }

    else
    {
    }

    v8 = v79[14];
    v9 = v79[12];
    v10 = v79[10];
    v7 = v79[13];
    MEMORY[0x277D82BD8](v24);
    (*(v7 + 8))(v8, v9);
    *v10 = 0x7FFFFFEFCLL;
    v10[1] = 0;
    goto LABEL_28;
  }

  v73 = ReactiveUIManager.statefulManager.getter();

  v75 = [v73 latestUpdateStatefulDescriptor];
  MEMORY[0x277D82BD8](v73);
  MEMORY[0x277D82BE0](v75);

  v74 = ReactiveUIManager.statefulManager.getter();

  v76 = [v74 alternateStatefulDescriptor];
  MEMORY[0x277D82BD8](v74);
  MEMORY[0x277D82BE0](v76);
  v79[2] = v75;
  v79[3] = v76;
  if (v79[2])
  {
    sub_26AEB757C(v79 + 2, v79 + 9);
    if (v79[3])
    {
      v95 = v79[9];
      v96 = v79[3];
      sub_26AEB75BC();
      v71 = sub_26B07A3B0();
      MEMORY[0x277D82BD8](v96);
      MEMORY[0x277D82BD8](v95);
      sub_26AEB7548(v79 + 2);
      v72 = v71;
      goto LABEL_10;
    }

    MEMORY[0x277D82BD8](v79[9]);
    goto LABEL_12;
  }

  if (v79[3])
  {
LABEL_12:
    sub_26AEB7500(v79 + 2);
    v72 = 0;
    goto LABEL_10;
  }

  sub_26AEB7548(v79 + 2);
  v72 = 1;
LABEL_10:
  MEMORY[0x277D82BD8](v76);
  MEMORY[0x277D82BD8](v75);

  if ((v72 & 1) == 0)
  {
    goto LABEL_24;
  }

  v70 = v79[11];
  v69 = v79[10];

  *v69 = 2;
  v69[1] = v70;
LABEL_28:

  v5 = *(v79[4] + 8);

  return v5();
}

uint64_t sub_26AEB6818(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AEB68D4;

  return LatestUpdateDeepLinkCommand.execute(with:)(a1, a2);
}

uint64_t sub_26AEB68D4()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v5 = v2 + 16;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

uint64_t sub_26AEB6A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v7[1] = a4;
  v8 = *(a3 - 8);
  v9 = a3 - 8;
  v7[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](a1);
  v10 = v7 - v7[0];
  v4();
  v12 = sub_26B07A6C0();
  v13 = v5;
  (*(v8 + 8))(v10, v11);
  return v12;
}

unint64_t sub_26AEB6FE0()
{
  v2 = qword_2803DC320;
  if (!qword_2803DC320)
  {
    type metadata accessor for SUUIStatefulUIState();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC320);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEB70D8()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for SUUIStatefulUIState();
  v1 = sub_26AEB7134();

  return sub_26AEB6A60(v5, v3, v4, v1);
}

unint64_t sub_26AEB7134()
{
  v2 = qword_2803DCF00;
  if (!qword_2803DCF00)
  {
    type metadata accessor for SUUIStatefulUIState();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCF00);
    return WitnessTable;
  }

  return v2;
}

void *sub_26AEB7500(void *a1)
{
  MEMORY[0x277D82BD8](*a1);
  MEMORY[0x277D82BD8](a1[1]);
  return a1;
}

void *sub_26AEB757C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0]();
  result = a2;
  *a2 = v3;
  return result;
}

unint64_t sub_26AEB75BC()
{
  v2 = qword_2803DC560;
  if (!qword_2803DC560)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DC560);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for LatestUpdateDeepLinkCommand(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *storeEnumTagSinglePayload for LatestUpdateDeepLinkCommand(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

SoftwareUpdateUIKit::BetaUpdatesRestrictions_optional __swiftcall BetaUpdatesRestrictions.init(rawValue:)(Swift::Int rawValue)
{
  switch(rawValue)
  {
    case 0:
      v3 = 0;
LABEL_8:
      *v1 = v3;
      return rawValue;
    case 1:
      v3 = 1;
      goto LABEL_8;
    case 2:
      v3 = 2;
      goto LABEL_8;
  }

  *v1 = 3;
  return rawValue;
}

uint64_t BetaUpdatesRestrictions.rawValue.getter()
{
  if (!*v0)
  {
    return 0;
  }

  if (*v0 == 1)
  {
    return 1;
  }

  return 2;
}

unint64_t sub_26AEB7A84()
{
  v2 = qword_2803DCB20;
  if (!qword_2803DCB20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCB20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEB7BEC@<X0>(uint64_t *a1@<X8>)
{
  result = BetaUpdatesRestrictions.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_26AEB7C30()
{
  v2 = qword_2803DCAB0;
  if (!qword_2803DCAB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCAB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for BetaUpdatesRestrictions(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
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

_BYTE *storeEnumTagSinglePayload for BetaUpdatesRestrictions(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
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

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t View.suuiIdentifiable(_:)()
{
  AccessibilityIdentifiers.rawValue.getter();
  sub_26B079580();
}

SoftwareUpdateUIKit::AccessibilityIdentifiers_optional __swiftcall AccessibilityIdentifiers.init(rawValue:)(Swift::String rawValue)
{
  v4 = v1;
  sub_26B07A760();
  *v2 = "SUSSoftwareUpdateTitleCellIcon";
  *(v2 + 8) = 30;
  *(v2 + 16) = 2;
  *(v2 + 24) = "SUSSoftwareUpdateTitleCellUpdateName";
  *(v2 + 32) = 36;
  *(v2 + 40) = 2;
  *(v2 + 48) = "SUSSoftwareUpdateTitleCellUpdateStatus";
  *(v2 + 56) = 38;
  *(v2 + 64) = 2;
  *(v2 + 72) = "SUSSoftwareUpdateTitleCellProgressBar";
  *(v2 + 80) = 37;
  *(v2 + 88) = 2;
  *(v2 + 96) = "SUSSoftwareUpdateTitleCellReleaseNotesSummary";
  *(v2 + 104) = 45;
  *(v2 + 112) = 2;
  *(v2 + 120) = "SUSSoftwareUpdateTitleCellLearnMore";
  *(v2 + 128) = 35;
  *(v2 + 136) = 2;
  *(v2 + 144) = "SUSSoftwareUpdateTitleCellSplomboNotes";
  *(v2 + 152) = 38;
  *(v2 + 160) = 2;
  *(v2 + 168) = "SUProactiveSuggestionCellTitle";
  *(v2 + 176) = 30;
  *(v2 + 184) = 2;
  *(v2 + 192) = "SUProactiveSuggestionCellContent";
  *(v2 + 200) = 32;
  *(v2 + 208) = 2;
  *(v2 + 216) = "SUProactiveSuggestionCellIcon";
  *(v2 + 224) = 29;
  *(v2 + 232) = 2;
  *(v2 + 240) = "SUSpecifierUpdateOptionsCellPrimaryButton";
  *(v2 + 248) = 41;
  *(v2 + 256) = 2;
  *(v2 + 264) = "SUSpecifierUpdateOptionsCellSecondaryButton";
  *(v2 + 272) = 43;
  *(v2 + 280) = 2;
  *(v2 + 288) = "SUSSoftwareUpdateLicenseViewControllerLicenseText";
  *(v2 + 296) = 49;
  *(v2 + 304) = 2;
  *(v2 + 312) = "SUSSoftwareUpdateTermsManagerAgreeButton";
  *(v2 + 320) = 40;
  *(v2 + 328) = 2;
  *(v2 + 336) = "SUSSoftwareUpdateTermsManagerDisagreeButton";
  *(v2 + 344) = 43;
  *(v2 + 352) = 2;
  *(v2 + 360) = "SUAutomaticUpdateButton";
  *(v2 + 368) = 23;
  *(v2 + 376) = 2;
  *(v2 + 384) = "SUGetBetaUpdatesButton";
  *(v2 + 392) = 22;
  *(v2 + 400) = 2;
  *(v2 + 408) = "SUScanStatusCell";
  *(v2 + 416) = 16;
  *(v2 + 424) = 2;
  *(v2 + 432) = "SUAlternateUpdateButton";
  *(v2 + 440) = 23;
  *(v2 + 448) = 2;
  *(v2 + 456) = "SUNonPromotedUpdateButton";
  *(v2 + 464) = 25;
  *(v2 + 472) = 2;
  *(v2 + 480) = "AUTOMATIC_UPDATES_AUTO_INSTALL_HEADER";
  *(v2 + 488) = 37;
  *(v2 + 496) = 2;
  *(v2 + 504) = "AUTOMATIC_INSTALL_SWITCH_SPECIFIER";
  *(v2 + 512) = 34;
  *(v2 + 520) = 2;
  *(v2 + 528) = "AUTOMATIC_UPDATES_AUTO_DOWNLOAD_HEADER";
  *(v2 + 536) = 38;
  *(v2 + 544) = 2;
  *(v2 + 552) = "AUTOMATIC_DOWNLOAD_SWITCH_SPECIFIER";
  *(v2 + 560) = 35;
  *(v2 + 568) = 2;
  *(v2 + 576) = "AUTOMATIC_INSTALL_SYSTEM_DATA_FILES_SWITCH_SPECIFIER";
  *(v2 + 584) = 52;
  *(v2 + 592) = 2;
  *(v2 + 600) = "BETA_PROGRAMS_LIST_GROUP";
  *(v2 + 608) = 24;
  *(v2 + 616) = 2;
  *(v2 + 624) = "BETA_PROGRAMS_OFF_SELECTION";
  *(v2 + 632) = 27;
  *(v2 + 640) = 2;
  *(v2 + 648) = "BETA_PROGRAMS_APPLE_ID_GROUP";
  *(v2 + 656) = 28;
  *(v2 + 664) = 2;
  *(v2 + 672) = "BETA_PROGRAMS_APPLE_ID";
  *(v2 + 680) = 22;
  *(v2 + 688) = 2;
  *(v2 + 696) = "BETA_PROGRAMS_NOTICE";
  *(v2 + 704) = 20;
  *(v2 + 712) = 2;
  *(v2 + 720) = "BETA_PROGRAMS_UNAVAILABLE_PROGRAM";
  *(v2 + 728) = 33;
  *(v2 + 736) = 2;
  sub_26AEA3B2C();
  v5 = sub_26B07A6B0();

  if (v5)
  {
    switch(v5)
    {
      case 1:
        v6 = 1;
        break;
      case 2:
        v6 = 2;
        break;
      case 3:
        v6 = 3;
        break;
      case 4:
        v6 = 4;
        break;
      case 5:
        v6 = 5;
        break;
      case 6:
        v6 = 6;
        break;
      case 7:
        v6 = 7;
        break;
      case 8:
        v6 = 8;
        break;
      case 9:
        v6 = 9;
        break;
      case 10:
        v6 = 10;
        break;
      case 11:
        v6 = 11;
        break;
      case 12:
        v6 = 12;
        break;
      case 13:
        v6 = 13;
        break;
      case 14:
        v6 = 14;
        break;
      case 15:
        v6 = 15;
        break;
      case 16:
        v6 = 16;
        break;
      case 17:
        v6 = 17;
        break;
      case 18:
        v6 = 18;
        break;
      case 19:
        v6 = 19;
        break;
      case 20:
        v6 = 20;
        break;
      case 21:
        v6 = 21;
        break;
      case 22:
        v6 = 22;
        break;
      case 23:
        v6 = 23;
        break;
      case 24:
        v6 = 24;
        break;
      case 25:
        v6 = 25;
        break;
      case 26:
        v6 = 26;
        break;
      case 27:
        v6 = 27;
        break;
      case 28:
        v6 = 28;
        break;
      case 29:
        v6 = 29;
        break;
      case 30:
        v6 = 30;
        break;
      default:

        *v4 = 31;
        return result;
    }
  }

  else
  {
    v6 = 0;
  }

  *v4 = v6;
}

unint64_t sub_26AEB8F0C()
{
  v2 = qword_2803DBFF8;
  if (!qword_2803DBFF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DBFF8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEB907C@<X0>(uint64_t *a1@<X8>)
{
  result = AccessibilityIdentifiers.rawValue.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_26AEB90C4()
{
  v2 = qword_2803DC000;
  if (!qword_2803DC000)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC000);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for AccessibilityIdentifiers(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xE1)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 30) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 225;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 31;
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

_BYTE *storeEnumTagSinglePayload for AccessibilityIdentifiers(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xE1)
  {
    v5 = ((a3 + 30) >> 8) + 1;
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

  if (a2 > 0xE1)
  {
    v4 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
      *result = a2 + 30;
    }
  }

  return result;
}

uint64_t sub_26AEB94CC()
{
  sub_26B079100();
  sub_26B078BF0();
  sub_26AE95850();
  return swift_getWitnessTable();
}

uint64_t DeepLinkRequest.id.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC19SoftwareUpdateUIKit15DeepLinkRequest_id;
  v2 = sub_26B0782E0();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t DeepLinkRequest.parameters.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC19SoftwareUpdateUIKit15DeepLinkRequest_parameters);

  return v2;
}

uint64_t DeepLinkRequest.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC19SoftwareUpdateUIKit15DeepLinkRequest_timestamp;
  v2 = sub_26B0782A0();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t DeepLinkRequest.init(_:)(uint64_t a1)
{
  v9 = a1;
  v12 = 0;
  v11 = 0;
  v8 = sub_26B0782A0();
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = &v3 - v4;
  v12 = MEMORY[0x28223BE20](v9);
  v11 = v1;
  sub_26B0782D0();
  sub_26B078350();

  *(v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit15DeepLinkRequest_parameters) = v9;
  sub_26B078290();
  (*(v5 + 32))(v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKit15DeepLinkRequest_timestamp, v7, v8);

  return v10;
}

uint64_t static DeepLinkRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v29 = a2;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v16 = 0;
  v17 = sub_26B0782A0();
  v18 = *(v17 - 8);
  v19 = v17 - 8;
  v21 = v18[8];
  v20 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](0);
  v22 = &v7[-v20];
  v23 = v20;
  MEMORY[0x28223BE20](v3);
  v24 = &v7[-v23];
  v33 = v4;
  v32 = v5;
  v31 = v2;
  type metadata accessor for DeepLinkParameters();
  v25 = &unk_2803E5000;
  v27 = *(v28 + OBJC_IVAR____TtC19SoftwareUpdateUIKit15DeepLinkRequest_parameters);

  v26 = *(v29 + v25[223]);

  v30 = static DeepLinkParameters.== infix(_:_:)();

  if (v30)
  {
    v9 = &unk_2803E5000;
    v11 = v18[2];
    v10 = v18 + 2;
    v11(v24, v28 + OBJC_IVAR____TtC19SoftwareUpdateUIKit15DeepLinkRequest_timestamp, v17);
    v11(v22, v29 + v9[224], v17);
    v14 = sub_26B078240();
    v13 = v18[1];
    v12 = v18 + 1;
    v13(v22, v17);
    v13(v24, v17);
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v8 = v15;

  return v8 & 1;
}

uint64_t DeepLinkRequest.description.getter()
{
  v39 = 0;
  v21 = 0;
  v30 = sub_26B0782A0();
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v13 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v29 = &v12 - v13;
  v19 = sub_26B0782E0();
  v16 = *(v19 - 8);
  v17 = v19 - 8;
  v14 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v18 = &v12 - v14;
  v39 = v0;
  v1 = sub_26B07A740();
  v33 = &v37;
  v37 = v1;
  v38 = v2;
  v31 = 1;
  v3 = sub_26B079D00();
  v15 = v4;
  MEMORY[0x26D66D910](v3);

  (*(v16 + 16))(v18, v26 + OBJC_IVAR____TtC19SoftwareUpdateUIKit15DeepLinkRequest_id, v19);
  sub_26AEB9DEC();
  sub_26B07A710();
  (*(v16 + 8))(v18, v19);
  v5 = sub_26B079D00();
  v20 = v6;
  MEMORY[0x26D66D910](v5);

  v22 = *(v26 + OBJC_IVAR____TtC19SoftwareUpdateUIKit15DeepLinkRequest_parameters);

  v24 = &v36;
  v36 = v22;
  v23 = type metadata accessor for DeepLinkParameters();
  sub_26AEB9E6C();
  sub_26B07A710();

  v7 = sub_26B079D00();
  v25 = v8;
  MEMORY[0x26D66D910](v7);

  (*(v27 + 16))(v29, v26 + OBJC_IVAR____TtC19SoftwareUpdateUIKit15DeepLinkRequest_timestamp, v30);
  sub_26AEB9EEC();
  sub_26B07A710();
  (*(v27 + 8))(v29, v30);
  v9 = sub_26B079D00();
  v32 = v10;
  MEMORY[0x26D66D910](v9);

  v35 = v37;
  v34 = v38;
  sub_26B078640();
  sub_26AEB9F6C();
  return sub_26B079EB0();
}

unint64_t sub_26AEB9DEC()
{
  v2 = qword_2803DC010;
  if (!qword_2803DC010)
  {
    sub_26B0782E0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC010);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEB9E6C()
{
  v2 = qword_2803DC018;
  if (!qword_2803DC018)
  {
    type metadata accessor for DeepLinkParameters();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC018);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEB9EEC()
{
  v2 = qword_2803DEFE0;
  if (!qword_2803DEFE0)
  {
    sub_26B0782A0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DEFE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEB9F98@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC19SoftwareUpdateUIKit15DeepLinkRequest___observationRegistrar;
  v2 = sub_26B078360();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_26AEBA00C(void *a1)
{
  v6 = a1;
  v15 = 0;
  v13 = 0;
  v4 = *a1;
  v11 = sub_26B078360();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v1 = MEMORY[0x28223BE20](v6);
  v10 = &v4 - v2;
  v15 = v1;
  v14 = *(v4 + *MEMORY[0x277D84DE8] + 8);
  v13 = v5;
  (*(v8 + 16))(&v4 - v2, v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit15DeepLinkRequest___observationRegistrar);
  v7 = &v12;
  v12 = v5;
  sub_26AEBA17C();
  sub_26B078320();
  return (*(v8 + 8))(v10, v11);
}

unint64_t sub_26AEBA17C()
{
  v2 = qword_2803DC020;
  if (!qword_2803DC020)
  {
    type metadata accessor for DeepLinkRequest();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC020);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for DeepLinkRequest()
{
  v1 = qword_2803DC050;
  if (!qword_2803DC050)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_26AEBA270@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17 = a5;
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v32 = a4;
  v13 = *a1;
  v11 = sub_26B078360();
  v14 = *(v11 - 8);
  v12 = v11 - 8;
  v5 = MEMORY[0x28223BE20](v18);
  v15 = v10 - v6;
  v31 = v5;
  v30 = *(v13 + *MEMORY[0x277D84DE8] + 8);
  v28 = v7;
  v29 = v20;
  v27 = v16;
  (*(v14 + 16))(v10 - v6, v16 + OBJC_IVAR____TtC19SoftwareUpdateUIKit15DeepLinkRequest___observationRegistrar);
  v23 = &v26;
  v26 = v16;
  sub_26AEBA17C();
  v8 = v22;
  sub_26B078310();
  v24 = v8;
  v25 = v8;
  if (v8)
  {
    v10[1] = v25;
  }

  return (*(v14 + 8))(v15, v11);
}

uint64_t sub_26AEBA514()
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v1 = sub_26B07A820();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v1 & 1;
}

uint64_t DeepLinkRequest.deinit()
{
  v5 = OBJC_IVAR____TtC19SoftwareUpdateUIKit15DeepLinkRequest_id;
  v1 = sub_26B0782E0();
  (*(*(v1 - 8) + 8))(v0 + v5);

  v6 = OBJC_IVAR____TtC19SoftwareUpdateUIKit15DeepLinkRequest_timestamp;
  v2 = sub_26B0782A0();
  (*(*(v2 - 8) + 8))(v0 + v6);
  v7 = OBJC_IVAR____TtC19SoftwareUpdateUIKit15DeepLinkRequest___observationRegistrar;
  v3 = sub_26B078360();
  (*(*(v3 - 8) + 8))(v0 + v7);
  return v8;
}

uint64_t sub_26AEBA7F4()
{
  swift_beginAccess();
  v2 = *(v0 + 16);

  swift_endAccess();
  return v2;
}

uint64_t sub_26AEBA850(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 16) = a1;

  swift_endAccess();
}

uint64_t sub_26AEBA968@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_26AEBAA6C();
}

uint64_t sub_26AEBA9C4(uint64_t *a1)
{
  sub_26AEBBEE4(a1, &v3);
  v2 = v3;

  sub_26AEBAAF4(v2);
}

uint64_t sub_26AEBAA2C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  *a2 = a1;
}

uint64_t sub_26AEBAA6C()
{
  KeyPath = swift_getKeyPath();
  sub_26AEBB1A4(KeyPath);

  return sub_26AEBA7F4();
}

uint64_t sub_26AEBAAF4(uint64_t a1)
{
  v13 = a1;
  v18[1] = 0;
  v11 = 0;
  v18[2] = a1;
  v18[0] = sub_26AEBA7F4();
  v17 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD640);
  sub_26AEBB5B8();
  v15 = v18;
  v16 = sub_26AEBB55C();
  sub_26AEBB6D0();
  if (v16)
  {
    v1 = v12;
    v2 = v11;
    KeyPath = swift_getKeyPath();
    v7[1] = KeyPath;

    v9 = v7;
    v3 = MEMORY[0x28223BE20](KeyPath);
    v6[2] = v1;
    v6[3] = v4;
    sub_26AEBB314(v3, sub_26AEBB6FC, v6, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v10 = v2;

    v7[0] = v10;
  }

  else
  {

    sub_26AEBA850(v13);
    v7[0] = v11;
  }
}

void (*sub_26AEBAD0C(void *a1))(uint64_t *a1, char a2)
{
  v8 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v8;
  v8[5] = v1;
  v7 = sub_26B078360();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v8[6] = v6;
  KeyPath = swift_getKeyPath();
  sub_26AEBB1A4(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC19SoftwareUpdateUIKit26EnvironmentDeepLinkRequest___observationRegistrar, v7);
  v8[4] = v4;
  swift_getKeyPath();
  sub_26AEBB77C();
  sub_26B078340();

  (*(v5 + 8))(v6, v7);
  v8[7] = sub_26AEBA8C4();
  return sub_26AEBAEB8;
}

void sub_26AEBAEB8(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_26AEBAF74(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_26AEBAF74(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_26AEBAF74(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = sub_26B078360();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC19SoftwareUpdateUIKit26EnvironmentDeepLinkRequest___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_26AEBB77C();
  sub_26B078330();

  return (*(v7 + 8))(v9, v10);
}

uint64_t EnvironmentDeepLinkRequest.init()()
{
  *(v0 + 16) = 0;
  sub_26B078350();
  return v2;
}

uint64_t sub_26AEBB130@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC19SoftwareUpdateUIKit26EnvironmentDeepLinkRequest___observationRegistrar;
  v2 = sub_26B078360();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_26AEBB1A4(void *a1)
{
  v6 = a1;
  v15 = 0;
  v13 = 0;
  v4 = *a1;
  v11 = sub_26B078360();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v1 = MEMORY[0x28223BE20](v6);
  v10 = &v4 - v2;
  v15 = v1;
  v14 = *(v4 + *MEMORY[0x277D84DE8] + 8);
  v13 = v5;
  (*(v8 + 16))(&v4 - v2, v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKit26EnvironmentDeepLinkRequest___observationRegistrar);
  v7 = &v12;
  v12 = v5;
  sub_26AEBB77C();
  sub_26B078320();
  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_26AEBB314@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17 = a5;
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v32 = a4;
  v13 = *a1;
  v11 = sub_26B078360();
  v14 = *(v11 - 8);
  v12 = v11 - 8;
  v5 = MEMORY[0x28223BE20](v18);
  v15 = v10 - v6;
  v31 = v5;
  v30 = *(v13 + *MEMORY[0x277D84DE8] + 8);
  v28 = v7;
  v29 = v20;
  v27 = v16;
  (*(v14 + 16))(v10 - v6, v16 + OBJC_IVAR____TtC19SoftwareUpdateUIKit26EnvironmentDeepLinkRequest___observationRegistrar);
  v23 = &v26;
  v26 = v16;
  sub_26AEBB77C();
  v8 = v22;
  sub_26B078310();
  v24 = v8;
  v25 = v8;
  if (v8)
  {
    v10[1] = v25;
  }

  return (*(v14 + 8))(v15, v11);
}

unint64_t sub_26AEBB5B8()
{
  v2 = qword_2803DC028;
  if (!qword_2803DC028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD640);
    sub_26AEBB650();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC028);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEBB650()
{
  v2 = qword_2803DC030;
  if (!qword_2803DC030)
  {
    type metadata accessor for DeepLinkRequest();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC030);
    return WitnessTable;
  }

  return v2;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  else
  {
    return malloc(a1);
  }
}

unint64_t sub_26AEBB77C()
{
  v2 = qword_2803DC040;
  if (!qword_2803DC040)
  {
    type metadata accessor for EnvironmentDeepLinkRequest();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC040);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for EnvironmentDeepLinkRequest()
{
  v1 = qword_2803DC060;
  if (!qword_2803DC060)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_26AEBB870()
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v1 = sub_26B07A820();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v1 & 1;
}

uint64_t EnvironmentDeepLinkRequest.deinit()
{
  sub_26AEBB6D0();
  v3 = OBJC_IVAR____TtC19SoftwareUpdateUIKit26EnvironmentDeepLinkRequest___observationRegistrar;
  v1 = sub_26B078360();
  (*(*(v1 - 8) + 8))(v0 + v3);
  return v4;
}

unint64_t sub_26AEBBA58()
{
  v2 = qword_2803DC048;
  if (!qword_2803DC048)
  {
    sub_26B0782E0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC048);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEBBAF4()
{
  updated = sub_26B0782E0();
  if (v0 <= 0x3F)
  {
    updated = sub_26B0782A0();
    if (v1 <= 0x3F)
    {
      updated = sub_26B078360();
      if (v2 <= 0x3F)
      {
        updated = swift_updateClassMetadata2();
        if (!updated)
        {
          return 0;
        }
      }
    }
  }

  return updated;
}

uint64_t sub_26AEBBCFC()
{
  updated = sub_26B078360();
  if (v0 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

void *sub_26AEBBEE4(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

uint64_t UpdateRemoteContentView.init(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memset(__b, 0, 0x39uLL);
  __b[3] = 0;
  LOBYTE(__b[4]) = 2;
  memset(&__b[5], 0, 17);
  sub_26AE961DC(a1, a2);
  __b[0] = a1;
  __b[1] = a2;
  LOBYTE(__b[2]) = 1;
  sub_26AEBBFD0(__b, a3);
  sub_26AE96418(a1, a2);
  return sub_26AE96494(__b);
}

uint64_t sub_26AEBBFD0(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  sub_26AE96194(*a1, v6, v7 & 1);
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  if (*(a1 + 48))
  {
    v3 = *(a1 + 40);

    *(a2 + 40) = v3;
    v4 = *(a1 + 48);

    *(a2 + 48) = v4;
  }

  else
  {
    *(a2 + 40) = *(a1 + 40);
  }

  *(a2 + 56) = *(a1 + 56);
  return a2;
}

uint64_t sub_26AEBC0C4(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a1;
  v46 = a2;
  v54 = a3;
  v55 = a4;
  v56 = a5;
  v47 = a6;
  v48 = "Fatal error";
  v49 = "Unexpectedly found nil while unwrapping an Optional value";
  v50 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v51 = &unk_26B089300;
  v52 = 0;
  v65 = a6;
  v53 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v56);
  v57 = &v14 - v53;

  v63 = v55;
  v64 = v56;
  sub_26AED6580(v54, v57);
  v58 = sub_26B07A160();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  if ((*(v59 + 48))(v57, 1) == 1)
  {
    sub_26AEA08A4(v57);
    v44 = 0;
  }

  else
  {
    v43 = sub_26B07A150();
    (*(v59 + 8))(v57, v58);
    v44 = v43;
  }

  v40 = v44 | 0x1C00;
  v42 = *(v56 + 16);
  v41 = *(v56 + 24);
  swift_unknownObjectRetain();

  if (v42)
  {
    v38 = v42;
    v39 = v41;
    v32 = v41;
    v33 = v42;
    swift_getObjectType();
    v34 = sub_26B07A0C0();
    v35 = v6;
    swift_unknownObjectRelease();
    v36 = v34;
    v37 = v35;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v30 = v37;
  v31 = v36;
  sub_26B078640();
  if (v46)
  {
    v28 = v45;
    v29 = v46;
    v7 = v52;
    v25 = v46;
    v26 = sub_26B079EA0();

    sub_26AED24BC(v26 + 32, &v63, v47, &v61);
    if (v7)
    {
      __break(1u);
    }

    v24 = v61;

    v27 = v24;
  }

  else
  {
    v27 = 0;
  }

  v23 = v27;
  if (v27)
  {
    v17 = v23;
    v16 = v23;
    sub_26AEA08A4(v54);

    v18 = v16;
  }

  else
  {

    sub_26AEA08A4(v54);
    v19 = v63;
    v20 = v64;

    v8 = swift_allocObject();
    v9 = v19;
    v10 = v20;
    v11 = v31;
    v12 = v30;
    v21 = v8;
    v8[2] = v47;
    v8[3] = v9;
    v8[4] = v10;
    v22 = 0;
    if (v11 != 0 || v12 != 0)
    {
      v62[0] = 0;
      v62[1] = 0;
      v62[2] = v31;
      v62[3] = v30;
      v22 = v62;
    }

    v18 = swift_task_create();
  }

  v15 = v18;

  return v15;
}

uint64_t sub_26AEBC708(uint64_t a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v27 = [objc_opt_self() mainScreen];
      [v27 bounds];
      v28 = v2;
      v29 = v3;
      v30 = v4;
      v31 = v5;
      MEMORY[0x277D82BD8](v27);
      v32 = sub_26AEBCA9C(v28, v29, v30, v31) * *&a1;
    }

    else if (*&a1 == 0.0)
    {
      v32 = 0.0;
    }

    else
    {
      v25 = [objc_opt_self() sharedApplication];
      v26 = [v25 preferredContentSizeCategory];
      MEMORY[0x277D82BD8](v25);
      v6 = sub_26B07A320();
      if (v6)
      {
        v23 = *MEMORY[0x277D767F8];
        MEMORY[0x277D82BE0](*MEMORY[0x277D767F8]);
        v24 = sub_26B07A330();
        MEMORY[0x277D82BD8](v23);
        if (v24)
        {
          v22 = 2.0;
        }

        else
        {
          v22 = 3.0;
        }

        v21 = v22;
      }

      else
      {
        v19 = *MEMORY[0x277D76828];
        MEMORY[0x277D82BE0](*MEMORY[0x277D76828]);
        v20 = sub_26B07A330();
        MEMORY[0x277D82BD8](v19);
        if (v20)
        {
          v18 = 3.0;
        }

        else
        {
          v18 = 4.0;
        }

        v21 = v18;
      }

      v12 = [objc_opt_self() mainScreen];
      [v12 bounds];
      v13 = v7;
      v14 = v8;
      v15 = v9;
      v16 = v10;
      MEMORY[0x277D82BD8](v12);
      v17 = sub_26AEBCA9C(v13, v14, v15, v16) / v21;
      MEMORY[0x277D82BD8](v26);
      v32 = v17;
    }
  }

  else
  {
    v32 = *&a1;
  }

  return *&v32;
}

BOOL sub_26AEBCBE4(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else if (a1 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else if (a2 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_26AEBCE38()
{
  v2 = qword_2803DC080;
  if (!qword_2803DC080)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC080);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEBCF28()
{
  swift_beginAccess();
  v2 = *(v0 + 16);

  swift_endAccess();
  return v2;
}

uint64_t sub_26AEBCF78(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 16) = a1;

  swift_endAccess();
}

uint64_t sub_26AEBD074@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  *a2 = a1;
}

uint64_t sub_26AEBD0B4()
{
  KeyPath = swift_getKeyPath();
  sub_26AEBFA6C(KeyPath);

  swift_beginAccess();
  v3 = *(v1 + 16);

  swift_endAccess();
  return v3;
}

uint64_t sub_26AEBD13C@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_26AEBD0B4();
}

uint64_t sub_26AEBD1B0(uint64_t *a1)
{
  sub_26AED72AC(a1, &v3);
  v2 = v3;

  sub_26AEBD230(v2);
}

uint64_t sub_26AEBD230(uint64_t a1)
{
  v18 = a1;
  v25 = 0;
  v15 = 0;
  v26 = a1;
  v16 = &v24;
  swift_beginAccess();
  v17 = *(v1 + 16);

  swift_endAccess();
  v23 = v17;
  v22 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC088);
  v19 = &v23;
  v20 = sub_26AEBFDF4();
  sub_26AEBFE24();
  if (v20)
  {
    v2 = v14;
    v3 = v15;
    KeyPath = swift_getKeyPath();
    v10 = KeyPath;

    v12 = &v8;
    v4 = MEMORY[0x28223BE20](KeyPath);
    v7[2] = v2;
    v7[3] = v5;
    sub_26AEBFBDC(v4, sub_26AEBFE50, v7, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v13 = v3;

    v9 = v13;
  }

  else
  {

    v8 = &v21;
    swift_beginAccess();
    *(v14 + 16) = v18;

    swift_endAccess();

    v9 = v15;
  }
}

uint64_t sub_26AEBD44C(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(a1 + 16) = a2;

  swift_endAccess();
}

void (*sub_26AEBD4E0(void *a1))(uint64_t *a1, char a2)
{
  v8 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v8;
  v8[5] = v1;
  v7 = sub_26B078360();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v8[6] = v6;
  KeyPath = swift_getKeyPath();
  sub_26AEBFA6C(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC19SoftwareUpdateUIKitP33_84DC73453914B20627C808A733F753AE22WebPageViewCompatModel___observationRegistrar, v7);
  v8[4] = v4;
  swift_getKeyPath();
  sub_26AEBFE7C();
  sub_26B078340();

  (*(v5 + 8))(v6, v7);
  v8[7] = sub_26AEBCFD8();
  return sub_26AEBD68C;
}

void sub_26AEBD68C(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_26AEBD748(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_26AEBD748(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_26AEBD748(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = sub_26B078360();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC19SoftwareUpdateUIKitP33_84DC73453914B20627C808A733F753AE22WebPageViewCompatModel___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_26AEBFE7C();
  sub_26B078330();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_26AEBD884@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKitP33_84DC73453914B20627C808A733F753AE22WebPageViewCompatModel__urlToOpen);
  swift_beginAccess();
  sub_26AEBFF70(v3, a1);
  return swift_endAccess();
}

uint64_t sub_26AEBD8E0(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v5 = &v4 - v4;
  sub_26AEBFF70(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKitP33_84DC73453914B20627C808A733F753AE22WebPageViewCompatModel__urlToOpen);
  v7 = &v9;
  swift_beginAccess();
  sub_26AEC0098(v5, v6);
  swift_endAccess();
  return sub_26AEC02C0(v8);
}

uint64_t sub_26AEBDA54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = a2;
  v7 = a1;
  v8 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = &v3 - v4;
  v8 = MEMORY[0x28223BE20](v7);
  sub_26AEBFF70(v8, &v3 - v4);
  sub_26AEC0368(v6, v5);
  return sub_26AEC02C0(v7);
}

uint64_t sub_26AEBDB04@<X0>(void *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_26AEBFA6C(KeyPath);

  v4 = (v2 + OBJC_IVAR____TtC19SoftwareUpdateUIKitP33_84DC73453914B20627C808A733F753AE22WebPageViewCompatModel__urlToOpen);
  swift_beginAccess();
  sub_26AEBFF70(v4, a1);
  return swift_endAccess();
}

uint64_t sub_26AEBDB94@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = a2;
  v4 = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = &v3 - v5;
  v6 = *MEMORY[0x28223BE20](v4);

  v10 = v6;
  v9 = v6;
  sub_26AEBDB04(v7);
  sub_26AEC0368(v7, v8);
}

uint64_t sub_26AEBDC60(uint64_t a1, uint64_t *a2)
{
  v5 = a1;
  v7 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v5);
  v8 = &v4 - v6;
  sub_26AEBFF70(v2, &v4 - v6);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  sub_26AEBDD28(v8);
}

uint64_t sub_26AEBDD28(const void *a1)
{
  v26 = a1;
  v19 = 0;
  v33 = 0;
  v32 = 0;
  v18 = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9E0);
  v20 = *(*(v27 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v26);
  v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = &v9 - v22;
  v3 = MEMORY[0x28223BE20](v2);
  v28 = &v9 - v22;
  v23 = &v9 - v22;
  v33 = v3;
  v32 = v1;
  v24 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKitP33_84DC73453914B20627C808A733F753AE22WebPageViewCompatModel__urlToOpen);
  v25 = &v31;
  swift_beginAccess();
  sub_26AEBFF70(v24, v28);
  swift_endAccess();
  sub_26AEC051C();
  v29 = sub_26AEC04C0();
  sub_26AEC02C0(v28);
  if ((v29 & 1) == 0)
  {
    sub_26AEBFF70(v26, v23);
    sub_26AEBFF70(v23, v21);
    v10 = (v17 + OBJC_IVAR____TtC19SoftwareUpdateUIKitP33_84DC73453914B20627C808A733F753AE22WebPageViewCompatModel__urlToOpen);
    v11 = &v30;
    swift_beginAccess();
    sub_26AEC0098(v21, v10);
    swift_endAccess();
    sub_26AEC02C0(v23);
    v12 = v18;
    return sub_26AEC02C0(v26);
  }

  v4 = v17;
  v5 = v18;
  KeyPath = swift_getKeyPath();
  v13 = KeyPath;

  v15 = &v9;
  v6 = MEMORY[0x28223BE20](KeyPath);
  *(&v9 - 2) = v4;
  *(&v9 - 1) = v7;
  sub_26AEBFBDC(v6, sub_26AEC0634, (&v9 - 4), MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
  v16 = v5;
  if (!v5)
  {

    v12 = v16;
    return sub_26AEC02C0(v26);
  }

  __break(1u);
  return result;
}

uint64_t sub_26AEBDFC0(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v7 = a2;
  v18 = 0;
  v17 = 0;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9E0) - 8) + 64);
  v8 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v7);
  v12 = &v6 - v8;
  v10 = v8;
  v3 = MEMORY[0x28223BE20](v2);
  v15 = &v6 - v10;
  v18 = v4;
  v17 = v3;
  sub_26AEBFF70(v3, &v6 - v10);
  sub_26AEBFF70(v15, v12);
  v13 = (v11 + OBJC_IVAR____TtC19SoftwareUpdateUIKitP33_84DC73453914B20627C808A733F753AE22WebPageViewCompatModel__urlToOpen);
  v14 = &v16;
  swift_beginAccess();
  sub_26AEC0098(v12, v13);
  swift_endAccess();
  return sub_26AEC02C0(v15);
}

void (*sub_26AEBE100(void *a1))(uint64_t *a1, char a2)
{
  v8 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v8;
  v8[5] = v1;
  v7 = sub_26B078360();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v8[6] = v6;
  KeyPath = swift_getKeyPath();
  sub_26AEBFA6C(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC19SoftwareUpdateUIKitP33_84DC73453914B20627C808A733F753AE22WebPageViewCompatModel___observationRegistrar, v7);
  v8[4] = v4;
  swift_getKeyPath();
  sub_26AEBFE7C();
  sub_26B078340();

  (*(v5 + 8))(v6, v7);
  v8[7] = sub_26AEBD9B0();
  return sub_26AEBE2AC;
}

void sub_26AEBE2AC(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_26AEBE368(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_26AEBE368(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_26AEBE368(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = sub_26B078360();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC19SoftwareUpdateUIKitP33_84DC73453914B20627C808A733F753AE22WebPageViewCompatModel___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_26AEBFE7C();
  sub_26B078330();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_26AEBE4E0()
{
  v2 = *(v0 + OBJC_IVAR____TtC19SoftwareUpdateUIKitP33_84DC73453914B20627C808A733F753AE22WebPageViewCompatModel_decider);

  return v2;
}

uint64_t sub_26AEBE514()
{
  v2 = (v0 + OBJC_IVAR____TtC19SoftwareUpdateUIKitP33_84DC73453914B20627C808A733F753AE22WebPageViewCompatModel__timeoutTask);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_26AEBE574(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKitP33_84DC73453914B20627C808A733F753AE22WebPageViewCompatModel__timeoutTask);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_26AEBE688@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  *a2 = a1;
}

uint64_t sub_26AEBE6C8()
{
  KeyPath = swift_getKeyPath();
  sub_26AEBFA6C(KeyPath);

  v3 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKitP33_84DC73453914B20627C808A733F753AE22WebPageViewCompatModel__timeoutTask);
  swift_beginAccess();
  v4 = *v3;

  swift_endAccess();
  return v4;
}

uint64_t sub_26AEBE75C@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_26AEBE6C8();
}

uint64_t sub_26AEBE7B8(uint64_t *a1)
{
  sub_26AED7274(a1, &v3);
  v2 = v3;

  sub_26AEBE820(v2);
}

uint64_t sub_26AEBE820(uint64_t a1)
{
  v21 = a1;
  v29 = 0;
  v17 = 0;
  v30 = a1;
  v18 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKitP33_84DC73453914B20627C808A733F753AE22WebPageViewCompatModel__timeoutTask);
  v19 = &v28;
  swift_beginAccess();
  v20 = *v18;

  swift_endAccess();
  v27 = v20;
  v26 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC0C8);
  sub_26AEC0690();
  v23 = &v27;
  v24 = sub_26AEC04C0();
  sub_26AEC07B0();
  if (v24)
  {
    v2 = v16;
    v3 = v17;
    KeyPath = swift_getKeyPath();
    v12 = KeyPath;

    v14 = &v8;
    v4 = MEMORY[0x28223BE20](KeyPath);
    v7[2] = v2;
    v7[3] = v5;
    sub_26AEBFBDC(v4, sub_26AEC07DC, v7, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v15 = v3;

    v11 = v15;
  }

  else
  {

    v9 = (v16 + OBJC_IVAR____TtC19SoftwareUpdateUIKitP33_84DC73453914B20627C808A733F753AE22WebPageViewCompatModel__timeoutTask);
    v10 = &v25;
    swift_beginAccess();
    *v9 = v21;

    swift_endAccess();

    v11 = v17;
  }
}

uint64_t sub_26AEBEA64(uint64_t a1, uint64_t a2)
{

  v4 = (a1 + OBJC_IVAR____TtC19SoftwareUpdateUIKitP33_84DC73453914B20627C808A733F753AE22WebPageViewCompatModel__timeoutTask);
  swift_beginAccess();
  *v4 = a2;

  swift_endAccess();
}

void (*sub_26AEBEB04(void *a1))(uint64_t *a1, char a2)
{
  v8 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v8;
  v8[5] = v1;
  v7 = sub_26B078360();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v8[6] = v6;
  KeyPath = swift_getKeyPath();
  sub_26AEBFA6C(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC19SoftwareUpdateUIKitP33_84DC73453914B20627C808A733F753AE22WebPageViewCompatModel___observationRegistrar, v7);
  v8[4] = v4;
  swift_getKeyPath();
  sub_26AEBFE7C();
  sub_26B078340();

  (*(v5 + 8))(v6, v7);
  v8[7] = sub_26AEBE5E4();
  return sub_26AEBECB0;
}

void sub_26AEBECB0(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_26AEBED6C(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_26AEBED6C(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_26AEBED6C(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = sub_26B078360();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC19SoftwareUpdateUIKitP33_84DC73453914B20627C808A733F753AE22WebPageViewCompatModel___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_26AEBFE7C();
  sub_26B078330();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_26AEBEEA8()
{
  v2 = (v0 + OBJC_IVAR____TtC19SoftwareUpdateUIKitP33_84DC73453914B20627C808A733F753AE22WebPageViewCompatModel__resolutionMethod);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_26AEBEF04(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKitP33_84DC73453914B20627C808A733F753AE22WebPageViewCompatModel__resolutionMethod);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_26AEBF01C()
{
  KeyPath = swift_getKeyPath();
  sub_26AEBFA6C(KeyPath);

  v3 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKitP33_84DC73453914B20627C808A733F753AE22WebPageViewCompatModel__resolutionMethod);
  swift_beginAccess();
  v4 = *v3;
  swift_endAccess();
  return v4;
}

uint64_t sub_26AEBF0AC@<X0>(_BYTE *a1@<X8>)
{

  *a1 = sub_26AEBF01C();
}

uint64_t sub_26AEBF108(unsigned __int8 *a1)
{
  v2 = *a1;

  sub_26AEBF160(v2);
}

uint64_t sub_26AEBF160(int a1)
{
  v21 = a1;
  v16 = a1;
  v25 = 0;
  v17 = 0;
  v26 = a1;
  v18 = (v1 + OBJC_IVAR____TtC19SoftwareUpdateUIKitP33_84DC73453914B20627C808A733F753AE22WebPageViewCompatModel__resolutionMethod);
  v19 = &v24;
  swift_beginAccess();
  v20 = *v18;
  swift_endAccess();
  v23[31] = v20;
  v23[30] = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC0F0);
  sub_26AEC0838();
  if (sub_26AEC04C0())
  {
    v2 = v15;
    v3 = v17;
    KeyPath = swift_getKeyPath();
    v11 = KeyPath;

    v13 = v9;
    v4 = MEMORY[0x28223BE20](KeyPath);
    v7[2] = v2;
    v8 = v5;
    sub_26AEBFBDC(v4, sub_26AEC094C, v7, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v14 = v3;

    return v14;
  }

  else
  {
    v9[0] = v15 + OBJC_IVAR____TtC19SoftwareUpdateUIKitP33_84DC73453914B20627C808A733F753AE22WebPageViewCompatModel__resolutionMethod;
    v9[1] = v23;
    swift_beginAccess();
    *v9[0] = v16;
    swift_endAccess();
    return v17;
  }
}

uint64_t sub_26AEBF354(uint64_t a1, char a2)
{
  v3 = (a1 + OBJC_IVAR____TtC19SoftwareUpdateUIKitP33_84DC73453914B20627C808A733F753AE22WebPageViewCompatModel__resolutionMethod);
  swift_beginAccess();
  *v3 = a2;
  return swift_endAccess();
}

void (*sub_26AEBF3C8(void *a1))(uint64_t *a1, char a2)
{
  v8 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v8;
  v8[5] = v1;
  v7 = sub_26B078360();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v8[6] = v6;
  KeyPath = swift_getKeyPath();
  sub_26AEBFA6C(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC19SoftwareUpdateUIKitP33_84DC73453914B20627C808A733F753AE22WebPageViewCompatModel___observationRegistrar, v7);
  v8[4] = v4;
  swift_getKeyPath();
  sub_26AEBFE7C();
  sub_26B078340();

  (*(v5 + 8))(v6, v7);
  v8[7] = sub_26AEBEF60();
  return sub_26AEBF574;
}

void sub_26AEBF574(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_26AEBF630(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_26AEBF630(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_26AEBF630(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = sub_26B078360();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC19SoftwareUpdateUIKitP33_84DC73453914B20627C808A733F753AE22WebPageViewCompatModel___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_26AEBFE7C();
  sub_26B078330();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_26AEBF7A8()
{
  v24 = 0;
  v10 = 0;
  v7 = (*(*(sub_26B078800() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v12 = &v7 - v7;
  v24 = v0;
  *(v0 + 16) = 0;
  v8 = OBJC_IVAR____TtC19SoftwareUpdateUIKitP33_84DC73453914B20627C808A733F753AE22WebPageViewCompatModel__urlToOpen;
  v1 = sub_26B0781B0();
  (*(*(v1 - 8) + 56))(v0 + v8, 1);
  v16 = &qword_2803DC000;
  v9 = OBJC_IVAR____TtC19SoftwareUpdateUIKitP33_84DC73453914B20627C808A733F753AE22WebPageViewCompatModel_decider;
  v14 = type metadata accessor for WebPageViewCompatNavigationDeciding();
  v2 = sub_26AEBE4A4();
  v3 = v21;
  v4 = v10;
  *(v21 + v9) = v2;
  *(v3 + OBJC_IVAR____TtC19SoftwareUpdateUIKitP33_84DC73453914B20627C808A733F753AE22WebPageViewCompatModel__timeoutTask) = v4;
  *(v3 + OBJC_IVAR____TtC19SoftwareUpdateUIKitP33_84DC73453914B20627C808A733F753AE22WebPageViewCompatModel__resolutionMethod) = 4;
  sub_26B078350();
  sub_26B078890();
  v11 = *(v21 + v16[23]);

  v13 = &v23;
  v23 = v11;
  v15 = sub_26AEC09A0();
  sub_26AEBF9DC();
  v5 = sub_26B078810();
  sub_26AEBD230(v5);
  v20 = *(v21 + v16[23]);

  v19 = v21;

  v17 = v20 + 16;
  v18 = &v22;
  swift_beginAccess();
  swift_weakAssign();

  swift_endAccess();

  return v21;
}

uint64_t sub_26AEBFA00@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC19SoftwareUpdateUIKitP33_84DC73453914B20627C808A733F753AE22WebPageViewCompatModel___observationRegistrar;
  v2 = sub_26B078360();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_26AEBFA6C(void *a1)
{
  v6 = a1;
  v15 = 0;
  v13 = 0;
  v4 = *a1;
  v11 = sub_26B078360();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v1 = MEMORY[0x28223BE20](v6);
  v10 = &v4 - v2;
  v15 = v1;
  v14 = *(v4 + *MEMORY[0x277D84DE8] + 8);
  v13 = v5;
  (*(v8 + 16))(&v4 - v2, v5 + OBJC_IVAR____TtC19SoftwareUpdateUIKitP33_84DC73453914B20627C808A733F753AE22WebPageViewCompatModel___observationRegistrar);
  v7 = &v12;
  v12 = v5;
  sub_26AEBFE7C();
  sub_26B078320();
  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_26AEBFBDC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17 = a5;
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v32 = a4;
  v13 = *a1;
  v11 = sub_26B078360();
  v14 = *(v11 - 8);
  v12 = v11 - 8;
  v5 = MEMORY[0x28223BE20](v18);
  v15 = v10 - v6;
  v31 = v5;
  v30 = *(v13 + *MEMORY[0x277D84DE8] + 8);
  v28 = v7;
  v29 = v20;
  v27 = v16;
  (*(v14 + 16))(v10 - v6, v16 + OBJC_IVAR____TtC19SoftwareUpdateUIKitP33_84DC73453914B20627C808A733F753AE22WebPageViewCompatModel___observationRegistrar);
  v23 = &v26;
  v26 = v16;
  sub_26AEBFE7C();
  v8 = v22;
  sub_26B078310();
  v24 = v8;
  v25 = v8;
  if (v8)
  {
    v10[1] = v25;
  }

  return (*(v14 + 8))(v15, v11);
}

unint64_t sub_26AEBFE7C()
{
  v2 = qword_2803DC098;
  if (!qword_2803DC098)
  {
    type metadata accessor for WebPageViewCompatModel();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC098);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for WebPageViewCompatModel()
{
  v1 = qword_2803DC250;
  if (!qword_2803DC250)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void *sub_26AEBFF70(const void *a1, void *a2)
{
  v6 = sub_26B0781B0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9E0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_26AEC0098(const void *a1, void *a2)
{
  v7 = sub_26B0781B0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9E0);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9E0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_26AEC02C0(uint64_t a1)
{
  v3 = sub_26B0781B0();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_26AEC0368(const void *a1, void *a2)
{
  v6 = sub_26B0781B0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9E0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_26AEC051C()
{
  v2 = qword_2803DC0A8;
  if (!qword_2803DC0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC9E0);
    sub_26AEC05B4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC0A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEC05B4()
{
  v2 = qword_2803DC0B0;
  if (!qword_2803DC0B0)
  {
    sub_26B0781B0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC0B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEC0690()
{
  v2 = qword_2803DC0D0;
  if (!qword_2803DC0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC0C8);
    sub_26AEC0728();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC0D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEC0728()
{
  v2 = qword_2803DC0D8;
  if (!qword_2803DC0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC0E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC0D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEC0838()
{
  v2 = qword_2803DC0F8;
  if (!qword_2803DC0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC0F0);
    sub_26AEC08D0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC0F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEC08D0()
{
  v2 = qword_2803DC100;
  if (!qword_2803DC100)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC100);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEC09A0()
{
  v2 = qword_2803DC108;
  if (!qword_2803DC108)
  {
    type metadata accessor for WebPageViewCompatNavigationDeciding();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC108);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEC0A20()
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v1 = sub_26B07A820();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v1 & 1;
}

uint64_t sub_26AEC0B0C()
{
  sub_26AEBFE24();
  sub_26AEC02C0(v0 + OBJC_IVAR____TtC19SoftwareUpdateUIKitP33_84DC73453914B20627C808A733F753AE22WebPageViewCompatModel__urlToOpen);

  sub_26AEC07B0();
  v3 = OBJC_IVAR____TtC19SoftwareUpdateUIKitP33_84DC73453914B20627C808A733F753AE22WebPageViewCompatModel___observationRegistrar;
  v1 = sub_26B078360();
  (*(*(v1 - 8) + 8))(v0 + v3);
  return v4;
}

uint64_t sub_26AEC0C28()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_26AEC0C80()
{

  swift_beginAccess();
  swift_weakAssign();

  swift_endAccess();
}

void (*sub_26AEC0CE8(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v3[3] = swift_weakLoadStrong();
  return sub_26AEC0D80;
}

void sub_26AEC0D80(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {

    swift_weakAssign();

    sub_26AEC1650();
  }

  else
  {
    swift_weakAssign();
  }

  swift_endAccess();
  free(v2);
}

uint64_t sub_26AEC0E2C(uint64_t a1, uint64_t a2)
{
  v3[13] = v2;
  v3[12] = a1;
  v3[5] = v3;
  v3[6] = 0;
  v3[7] = 0;
  v3[8] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9E0);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v4 = sub_26B077F30();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v5 = sub_26B0781B0();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[6] = a1;
  v3[7] = a2;
  v3[8] = v2;
  sub_26B07A130();
  v3[23] = sub_26B07A120();
  v10 = sub_26B07A0C0();

  return MEMORY[0x2822009F8](sub_26AEC106C, v10, v6);
}

uint64_t sub_26AEC106C()
{
  v0[5] = v0;
  v0[9] = sub_26B078830();
  v0[10] = 0;
  type metadata accessor for WKNavigationType();
  sub_26AEC15D0();
  if (sub_26B07A790())
  {
    v26 = v27[19];
    v25 = v27[15];
    v24 = v27[20];
    sub_26B078840();
    sub_26B077F20();
    if ((*(v24 + 48))(v25, 1, v26) == 1)
    {
      v23 = v27[18];
      v22 = v27[16];
      v21 = v27[17];
      sub_26AEC02C0(v27[15]);
      (*(v21 + 8))(v23, v22);
    }

    else
    {
      v13 = v27[22];
      v1 = v27[21];
      v16 = v27[19];
      v12 = v27[18];
      v11 = v27[16];
      v15 = v27[20];
      v10 = v27[17];
      (*(v15 + 32))();
      (*(v10 + 8))(v12, v11);
      v19 = [objc_opt_self() sharedApplication];
      v14 = *(v15 + 16);
      v14(v1, v13, v16);
      v18 = sub_26B078180();
      v17 = *(v15 + 8);
      v17(v1, v16);
      v20 = [v19 canOpenURL_];
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
      if (v20)
      {
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        swift_endAccess();
        v27[11] = Strong;
        if (v27[11])
        {
          v5 = v27[22];
          v7 = v27[19];
          v8 = v27[14];
          v6 = v27[20];

          sub_26AEC1650();
          v14(v8, v5, v7);
          (*(v6 + 56))(v8, 0, 1, v7);
          sub_26AEBDD28(v8);
        }

        else
        {
          sub_26AEC1650();
        }

        v17(v27[22], v27[19]);
        v4 = 0;
        goto LABEL_11;
      }

      v17(v27[22], v27[19]);
    }
  }

  v4 = 1;
LABEL_11:

  v2 = *(v27[5] + 8);

  return v2(v4);
}

unint64_t sub_26AEC15D0()
{
  v2 = qword_2803DC110;
  if (!qword_2803DC110)
  {
    type metadata accessor for WKNavigationType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC110);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEC1728(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AEC17E8;

  return sub_26AEC0E2C(a1, a2);
}

uint64_t sub_26AEC17E8(uint64_t a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

uint64_t sub_26AEC1918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_26AEC19DC;

  return MEMORY[0x282135AF8](a1, a2, a3);
}

uint64_t sub_26AEC19DC(uint64_t a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

uint64_t sub_26AEC1B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_26AEC1BD0;

  return MEMORY[0x282135B00](a1, a2, a3);
}

uint64_t sub_26AEC1BD0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  *(v5 + 16) = *v2;

  v3 = *(*(v5 + 16) + 8);

  return v3(a1, a2);
}

uint64_t sub_26AEC1D08()
{
  sub_26AEC1D60();
  result = sub_26B07A940();
  qword_2803DC070 = result;
  qword_2803DC078 = v1;
  return result;
}

unint64_t sub_26AEC1D60()
{
  v2 = qword_2803DC118;
  if (!qword_2803DC118)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC118);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_26AEC1DD8()
{
  if (qword_2803DB368 != -1)
  {
    swift_once();
  }

  return &qword_2803DC070;
}

uint64_t sub_26AEC1E78()
{
  v2 = *v0;
  sub_26B078640();
  return v2;
}

uint64_t sub_26AEC1EB0()
{
  v2 = *(v0 + 16);
  sub_26AEC1EF4(v2, *(v0 + 24));
  return v2;
}

uint64_t sub_26AEC1EF4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_26AEC1F48()
{
  type metadata accessor for CGSize();
  sub_26B0798A0();
  return v1;
}

double sub_26AEC1FA8()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC120);
  sub_26B0798B0();

  return v1;
}

uint64_t sub_26AEC2040()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC120);
  sub_26B0798C0();
  sub_26AEC20F8();
}

double sub_26AEC2124()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC120);
  sub_26B0798D0();

  return v1;
}

double sub_26AEC21D4()
{
  v2 = *(v0 + 56);

  return v2;
}

uint64_t sub_26AEC2218(uint64_t a1, double a2, double a3)
{

  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  *(v3 + 72) = a1;
}

uint64_t sub_26AEC226C()
{

  type metadata accessor for WebPageViewCompatModel();
  sub_26B0798A0();

  return v1;
}

uint64_t sub_26AEC22E4()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC128);
  sub_26B0798B0();

  return v1;
}

uint64_t sub_26AEC2370()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC128);
  sub_26B0798C0();
  sub_26AEC2434();
}

uint64_t sub_26AEC246C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC128);
  sub_26B0798D0();

  return v1;
}

uint64_t sub_26AEC2510()
{
  v2 = *(v0 + 80);

  return v2;
}

uint64_t sub_26AEC2550(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t sub_26AEC25B8@<X0>(uint64_t a1@<X8>)
{
  v5[2] = a1;
  v8 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC130);
  v5[0] = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v1 = (v5 - v5[0]);
  v7 = v5 - v5[0];
  v8 = v2;
  v3 = type metadata accessor for WebPageViewCompat();
  sub_26AEC26F8((v5[1] + *(v3 + 36)), v1);
  sub_26B078A10();
  return sub_26AEC27CC(v7);
}

uint64_t type metadata accessor for WebPageViewCompat()
{
  v1 = qword_2803DC268;
  if (!qword_2803DC268)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void *sub_26AEC26F8(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B078B00();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_26AEC27CC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078B00();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_26AEC28A0(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC130) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_26AEC26F8(v2, (&v5 - v6));
  v3 = type metadata accessor for WebPageViewCompat();
  sub_26AEC2950(v7, (v1 + *(v3 + 36)));
  return sub_26AEC27CC(v8);
}

void *sub_26AEC2950(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_26AEC2A3C(a2);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_26B078B00();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

uint64_t sub_26AEC2A3C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078B00();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_26AEC2AD8@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v30 = 0;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v66 = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC138);
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v28 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = &v10 - v28;
  MEMORY[0x28223BE20](&v10 - v28);
  v27 = &v10 - v28;
  MEMORY[0x28223BE20](v2);
  v29 = &v10 - v28;
  v75 = &v10 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC140);
  v32 = (*(*(v31 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30);
  v33 = &v10 - v32;
  v34 = sub_26B078F70();
  v35 = *(v34 - 8);
  v36 = v35;
  MEMORY[0x28223BE20](v34 - 8);
  v37 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC148);
  v39 = *(v38 - 8);
  v40 = v39;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38 - 8);
  v42 = &v10 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC150);
  v44 = *(v43 - 8);
  v45 = v44;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v43 - 8);
  v47 = &v10 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC158);
  v49 = *(v48 - 8);
  v50 = v49;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v48 - 8);
  v52 = &v10 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC160);
  v55 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v57 = (v55 + 15) & 0xFFFFFFFFFFFFFFF0;
  v54 = &v10 - v57;
  MEMORY[0x28223BE20](&v10 - v57);
  v56 = &v10 - v57;
  MEMORY[0x28223BE20](v4);
  v58 = &v10 - v57;
  v74 = &v10 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC168);
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59 - 8);
  v62 = (v60 + 15) & 0xFFFFFFFFFFFFFFF0;
  v61 = &v10 - v62;
  MEMORY[0x28223BE20](&v10 - v62);
  v63 = &v10 - v62;
  v73 = &v10 - v62;
  v72 = v1;
  v64 = *(v1 + 40);
  v65 = *(v1 + 48);
  if (!v65 || v65 == 1 || v64)
  {
    sub_26AEC36F0(v27);
    v11 = sub_26AEC4BF8();
    sub_26AE9463C(v27, v24, v29);
    sub_26AEC4C80(v27);
    v71 = v27;
    sub_26AEC4D60(v29, v25);
    sub_26AE94B4C(v25, v24, v27);
    sub_26AEC4C80(v25);
    sub_26AEC4D60(v27, v25);
    v7 = sub_26AEC4E88();
    sub_26AE94CA8(v25, v53, v24, v7, v11, v33);
    sub_26AEC4C80(v25);
    v8 = sub_26AEC50E0();
    sub_26AE94BB0(v33, v31, v24, v8, v11, v61);
    sub_26AEC5188(v33);
    sub_26AEC52E0(v61, v63);
    sub_26AEC4C80(v27);
    sub_26AEC4C80(v29);
  }

  else
  {
    v5 = v22;
    v15 = &v10;
    MEMORY[0x28223BE20](&v10);
    v13 = &v10 - 4;
    *(&v10 - 2) = v5;
    v14 = sub_26AEC4BF8();
    v12 = v14;
    sub_26AEBC690();
    sub_26AEBC6B4();
    v16 = sub_26AEC5C50();
    v17 = sub_26AEC4FD0();
    sub_26B0794C0();
    (*(v40 + 8))(v42, v38);
    sub_26B078F60();
    v69 = v38;
    v70 = v17;
    v19 = 1;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_26AEAAAAC();
    sub_26B079560();
    (*(v36 + 8))(v37, v34);
    (*(v45 + 8))(v47, v43);
    v67 = v43;
    v68 = OpaqueTypeConformance2;
    v20 = swift_getOpaqueTypeConformance2();
    sub_26AEC5F44();
    sub_26AEC5F5C();
    (*(v50 + 8))(v52, v48);
    v21 = sub_26AEC4E88();
    sub_26AE9463C(v56, v53, v58);
    sub_26AEC5FDC(v56);
    v66 = v56;
    sub_26AEC6044(v58, v54);
    sub_26AE94B4C(v54, v53, v56);
    sub_26AEC5FDC(v54);
    sub_26AEC6044(v56, v54);
    sub_26AE94BB0(v54, v53, v24, v21, v12, v33);
    sub_26AEC5FDC(v54);
    v6 = sub_26AEC50E0();
    sub_26AE94BB0(v33, v31, v24, v6, v12, v61);
    sub_26AEC5188(v33);
    sub_26AEC52E0(v61, v63);
    sub_26AEC5FDC(v56);
    sub_26AEC5FDC(v58);
  }

  sub_26AEC55FC(v63, v61);
  sub_26AEC5958();
  sub_26AE94B4C(v61, v59, v23);
  sub_26AEC5A00(v61);
  return sub_26AEC5A00(v63);
}

uint64_t sub_26AEC35B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v15 = 0;
  v14 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC138);
  v7 = *(*(v10 - 8) + 64);
  v6 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v12 = &v6 - v6;
  v8 = v6;
  MEMORY[0x28223BE20](v3);
  v13 = &v6 - v8;
  v15 = &v6 - v8;
  v14 = a1;
  sub_26AEC36F0(v4);
  v11 = sub_26AEC4BF8();
  sub_26AE9463C(v12, v10, v13);
  sub_26AEC4C80(v12);
  sub_26AEC4D60(v13, v12);
  sub_26AE94B4C(v12, v10, v9);
  sub_26AEC4C80(v12);
  return sub_26AEC4C80(v13);
}

uint64_t sub_26AEC36F0@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v54 = sub_26AEC6960;
  v55 = MEMORY[0x277CE0E30];
  v56 = sub_26AEC7824;
  v57 = sub_26AEC7D98;
  v58 = sub_26AEC8148;
  v59 = MEMORY[0x277CE44B8];
  v60 = MEMORY[0x277CE44C0];
  v61 = MEMORY[0x277CDEB58];
  v62 = MEMORY[0x277CE44A8];
  v63 = MEMORY[0x277CE4498];
  v64 = MEMORY[0x277CE44B0];
  v65 = MEMORY[0x277CE44A0];
  v66 = sub_26AEC9AF8;
  v67 = "Fatal error";
  v68 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v69 = "SoftwareUpdateUIKit/UpdateRemoteContentView.swift";
  v206 = 0;
  v205 = 0;
  v105 = 0;
  v70 = sub_26B07A300();
  v71 = *(v70 - 8);
  v72 = v70 - 8;
  v73 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v74 = &v9 - v73;
  v75 = sub_26B079080();
  v76 = *(v75 - 8);
  v77 = v75 - 8;
  v78 = (*(v76 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v105);
  v79 = &v9 - v78;
  v80 = sub_26B0783B0();
  v81 = *(v80 - 8);
  v82 = v80 - 8;
  v83 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v105);
  v84 = &v9 - v83;
  v85 = sub_26B078390();
  v86 = *(v85 - 8);
  v87 = v85 - 8;
  v88 = (*(v86 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v105);
  v89 = &v9 - v88;
  v90 = sub_26B078F70();
  v91 = *(v90 - 8);
  v92 = v90 - 8;
  v93 = (*(v91 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v105);
  v94 = &v9 - v93;
  v95 = sub_26B0783D0();
  v96 = *(v95 - 8);
  v97 = v95 - 8;
  v98 = (*(v96 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v105);
  v99 = &v9 - v98;
  v2 = type metadata accessor for WebPageViewCompat();
  v100 = *(v2 - 8);
  v101 = v100;
  v102 = *(v100 + 64);
  v103 = (v102 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v104 = &v9 - v103;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9E0);
  v107 = (*(*(v106 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v105);
  v108 = &v9 - v107;
  v109 = sub_26B0783E0();
  v110 = *(v109 - 8);
  v111 = v109 - 8;
  v112 = (*(v110 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v109);
  v113 = &v9 - v112;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC1C0);
  v115 = *(v114 - 8);
  v116 = v114 - 8;
  v117 = (*(v115 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v114);
  v118 = &v9 - v117;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC1C8);
  v120 = (*(*(v119 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v119);
  v121 = &v9 - v120;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC1D0);
  v123 = *(v122 - 8);
  v124 = v122 - 8;
  v125 = (*(v123 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v122);
  v126 = &v9 - v125;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC1D8);
  v128 = (*(*(v127 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v127);
  v129 = &v9 - v128;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC1E0);
  v131 = *(v130 - 8);
  v132 = v130 - 8;
  v133 = (*(v131 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v130);
  v134 = &v9 - v133;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC1E8);
  v136 = *(v135 - 8);
  v137 = v135 - 8;
  v138 = (*(v136 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v135);
  v139 = &v9 - v138;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC1F0);
  v141 = *(v140 - 8);
  v142 = v140 - 8;
  v143 = (*(v141 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v140);
  v144 = &v9 - v143;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC1F8);
  v146 = *(v145 - 8);
  v147 = v145 - 8;
  v148 = (*(v146 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v145);
  v149 = &v9 - v148;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC200);
  v151 = *(v150 - 8);
  v152 = v150 - 8;
  v153 = (*(v151 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v150);
  v154 = &v9 - v153;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC178);
  v156 = *(v155 - 8);
  v157 = v155 - 8;
  v158 = (*(v156 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v155);
  v159 = &v9 - v158;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC138);
  v161 = (*(*(v160 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v160);
  v162 = &v9 - v161;
  v163 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v9 - v161);
  v164 = &v9 - v163;
  v165 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v9 - v163);
  v166 = &v9 - v165;
  v206 = &v9 - v165;
  v205 = v1;
  v168 = *(v1 + 80);
  v169 = *(v1 + 88);

  v203 = v168;
  v204 = v169;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC128);
  sub_26B0798B0();
  v170 = v202;

  v171 = sub_26AEBD0B4();

  if (v171)
  {
    v51 = v171;
  }

  else
  {
    sub_26B07A650();
    __break(1u);
  }

  sub_26B0783F0();
  v9 = v53[10];
  v10 = v53[11];

  v200 = v9;
  v201 = v10;
  sub_26B0798B0();
  v11 = v199;

  sub_26AEBDB04(v108);

  sub_26AEC645C(v53, v104);
  v42 = *(v101 + 80);
  v12 = (v42 + 16) & ~v42;
  v43 = 7;
  v13 = swift_allocObject();
  sub_26AEC6808(v104, v13 + v12);
  v15 = sub_26AEC69FC();
  v16 = sub_26AEC051C();
  sub_26AEC69E0();
  v29 = 1;
  sub_26B0796D0();

  sub_26AEC02C0(v108);
  (*(v110 + 8))(v113, v109);
  sub_26AEC645C(v53, v104);
  v14 = (v42 + 16) & ~v42;
  v17 = swift_allocObject();
  sub_26AEC6808(v104, v17 + v14);
  v195 = v109;
  v196 = v106;
  v197 = v15;
  v198 = v16;
  v47 = 1;
  swift_getOpaqueTypeConformance2();
  sub_26B0796C0();
  sub_26AEB3258(v56);
  (*(v115 + 8))(v118, v114);
  v39 = 0;
  v24 = type metadata accessor for CGSize();
  KeyPath = swift_getKeyPath();
  sub_26AEC645C(v53, v104);
  v18 = (v42 + 16) & ~v42;
  v19 = swift_allocObject();
  sub_26AEC6808(v104, v19 + v18);
  v25 = sub_26AEC81C8();
  v26 = sub_26AEC82E4();
  sub_26B079330();

  sub_26AEC8364(v121);
  v21 = v53[7];
  v22 = v53[8];
  v23 = v53[9];

  v192 = v21;
  v193 = v22;
  v194 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC120);
  sub_26B0798B0();
  v27 = v191;

  v187 = v119;
  v188 = v24;
  v189 = v25;
  v190 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26AEC96D4();
  sub_26B0795F0();
  (*(v123 + 8))(v126, v122);
  sub_26B078380();
  v33 = sub_26AEC96F8();
  sub_26B079340();
  (*(v96 + 8))(v99, v95);
  sub_26AEC9814(v129);
  sub_26B078F60();
  v31 = sub_26B07A760();
  v30 = v5;
  *v5 = sub_26B079130();
  v6 = sub_26B079150();
  v7 = v31;
  v30[1] = v6;
  sub_26AEA3B2C();
  v32 = v7;
  sub_26AEC987C();
  sub_26B07A4C0();
  v34 = v186;
  v184 = v127;
  v185 = v33;
  v35 = swift_getOpaqueTypeConformance2();
  sub_26B079560();
  (*(v91 + 8))(v94, v90);
  (*(v131 + 8))(v134, v130);
  v182 = v130;
  v183 = v35;
  v36 = swift_getOpaqueTypeConformance2();
  sub_26B079310();
  (*(v136 + 8))(v139, v135);
  sub_26B078380();
  v180 = v135;
  v181 = v36;
  v37 = swift_getOpaqueTypeConformance2();
  sub_26B0792F0();
  (*(v86 + 8))(v89, v85);
  (*(v141 + 8))(v144, v140);
  sub_26B078380();
  v178 = v140;
  v179 = v37;
  v38 = swift_getOpaqueTypeConformance2();
  sub_26B079320();
  (*(v81 + 8))(v84, v80);
  (*(v146 + 8))(v149, v145);
  sub_26AEC98F4();
  v176 = v145;
  v177 = v38;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = MEMORY[0x277CE0758];
  sub_26B079300();
  (*(v76 + 8))(v79, v75);
  (*(v151 + 8))(v154, v150);
  v41 = [objc_opt_self() defaultCenter];
  v40 = *MEMORY[0x277D76810];
  MEMORY[0x277D82BE0](v40);
  sub_26B07A310();
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](v41);
  sub_26AEC645C(v53, v104);
  v44 = (v42 + 16) & ~v42;
  v49 = swift_allocObject();
  sub_26AEC6808(v104, v49 + v44);
  v172 = v150;
  v173 = v75;
  v174 = v45;
  v175 = v46;
  v48 = swift_getOpaqueTypeConformance2();
  sub_26AEA7AF0();
  sub_26B079720();

  (*(v71 + 8))(v74, v70);
  (*(v156 + 8))(v159, v155);
  v50 = sub_26AEC4BF8();
  sub_26AE9463C(v164, v160, v166);
  sub_26AEC4C80(v164);
  sub_26AEC4D60(v166, v162);
  sub_26AE94B4C(v162, v160, v52);
  sub_26AEC4C80(v162);
  return sub_26AEC4C80(v166);
}

unint64_t sub_26AEC4BF8()
{
  v2 = qword_2803DC170;
  if (!qword_2803DC170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC138);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC170);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEC4C80(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC178);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC138) + 52);
  v2 = sub_26B07A300();
  (*(*(v2 - 8) + 8))(a1 + v4);

  return a1;
}

uint64_t sub_26AEC4D60(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC178);
  (*(*(v2 - 8) + 16))(a2, a1);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC138);
  v6 = *(v7 + 52);
  v3 = sub_26B07A300();
  (*(*(v3 - 8) + 16))(a2 + v6, a1 + v6);
  v10 = *(v7 + 56);
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);

  result = a2;
  v5 = (a2 + v10);
  *v5 = v11;
  v5[1] = v12;
  return result;
}

unint64_t sub_26AEC4E88()
{
  v2 = qword_2803DC180;
  if (!qword_2803DC180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC160);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC150);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC148);
    sub_26AEC4FD0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_26AEC5058();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC180);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEC4FD0()
{
  v2 = qword_2803DC188;
  if (!qword_2803DC188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC148);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC188);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEC5058()
{
  v2 = qword_2803DC190;
  if (!qword_2803DC190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC198);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC190);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEC50E0()
{
  v2 = qword_2803DC1A0;
  if (!qword_2803DC1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC140);
    sub_26AEC4E88();
    sub_26AEC4BF8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC1A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEC5188(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC1A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC178);
    (*(*(v2 - 8) + 8))(a1);
    v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC138) + 52);
    v3 = sub_26B07A300();
    (*(*(v3 - 8) + 8))(v5);
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC158);
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_26AEC52E0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC1B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC178);
    (*(*(v10 - 8) + 32))(a2, a1);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC138);
    v18 = a2 + *(v19 + 52);
    v17 = a1 + *(v19 + 52);
    v11 = sub_26B07A300();
    (*(*(v11 - 8) + 32))(v18, v17);
    v12 = (a2 + *(v19 + 56));
    v13 = (a1 + *(v19 + 56));
    v14 = *v13;
    v15 = v13[1];
    *v12 = v14;
    v12[1] = v15;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC1A8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC178);
      (*(*(v4 - 8) + 32))(a2, a1);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC138);
      v21 = a2 + *(v22 + 52);
      v20 = a1 + *(v22 + 52);
      v5 = sub_26B07A300();
      (*(*(v5 - 8) + 32))(v21, v20);
      v6 = (a2 + *(v22 + 56));
      v7 = (a1 + *(v22 + 56));
      v8 = *v7;
      v9 = v7[1];
      *v6 = v8;
      v6[1] = v9;
    }

    else
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC158);
      (*(*(v2 - 8) + 32))(a2, a1);
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC160);
      *(a2 + *(v3 + 36)) = *(a1 + *(v3 + 36));
    }

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_26AEC55FC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC1B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC178);
    (*(*(v7 - 8) + 16))(a2, a1);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC138);
    v12 = a2 + *(v13 + 52);
    v11 = a1 + *(v13 + 52);
    v8 = sub_26B07A300();
    (*(*(v8 - 8) + 16))(v12, v11);
    v15 = (a2 + *(v13 + 56));
    v9 = (a1 + *(v13 + 56));
    v14 = *v9;
    v16 = v9[1];

    *v15 = v14;
    v15[1] = v16;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC1A8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC178);
      (*(*(v4 - 8) + 16))(a2, a1);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC138);
      v18 = a2 + *(v19 + 52);
      v17 = a1 + *(v19 + 52);
      v5 = sub_26B07A300();
      (*(*(v5 - 8) + 16))(v18, v17);
      v21 = (a2 + *(v19 + 56));
      v6 = (a1 + *(v19 + 56));
      v20 = *v6;
      v22 = v6[1];

      *v21 = v20;
      v21[1] = v22;
    }

    else
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC158);
      (*(*(v2 - 8) + 16))(a2, a1);
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC160);
      *(a2 + *(v3 + 36)) = *(a1 + *(v3 + 36));
    }

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

unint64_t sub_26AEC5958()
{
  v2 = qword_2803DC1B8;
  if (!qword_2803DC1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC168);
    sub_26AEC50E0();
    sub_26AEC4BF8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC1B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEC5A00(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC1B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC178);
    (*(*(v4 - 8) + 8))(a1);
    v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC138) + 52);
    v5 = sub_26B07A300();
    (*(*(v5 - 8) + 8))(v7);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC1A8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC178);
      (*(*(v2 - 8) + 8))(a1);
      v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC138) + 52);
      v3 = sub_26B07A300();
      (*(*(v3 - 8) + 8))(v8);
    }

    else
    {
      v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC158);
      (*(*(v1 - 8) + 8))(a1);
    }
  }

  return a1;
}

BOOL sub_26AEC5C50()
{
  v38 = 0.0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v47 = v0;
  v24 = *(v0 + 16);
  v26 = *(v0 + 24);
  v25 = *(v0 + 32);
  sub_26AEC1EF4(v24, v26);
  if (v26)
  {
    v31 = v24;
    v32 = v26;
    v33 = v25 & 1;
    v28 = v24;
    v29 = v26;
    v30 = v25 & 1;
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCEB0);
    MEMORY[0x26D66CBA0](&v27, v1);
    if ((v27 & 1) == 0)
    {

      return 1;
    }
  }

  v21 = COERCE_DOUBLE(sub_26AEBC708(*(v23 + 40), *(v23 + 48)));
  if (v2)
  {
    v8 = *(v23 + 56);
    v9 = *(v23 + 64);
    v10 = *(v23 + 72);

    v44 = v8;
    v45 = v9;
    v46 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC120);
    sub_26B0798B0();
    v16 = v43;

    v11 = [objc_opt_self() mainScreen];
    [v11 bounds];
    v39 = v3;
    v40 = v4;
    v41 = v5;
    v42 = v6;
    v12 = v3;
    v13 = v4;
    v14 = v5;
    v15 = v6;
    MEMORY[0x277D82BD8](v11);
    return v16 <= sub_26AEBCA9C(v12, v13, v14, v15);
  }

  else
  {
    v38 = v21;
    v17 = *(v23 + 56);
    v18 = *(v23 + 64);
    v19 = *(v23 + 72);

    v35 = v17;
    v36 = v18;
    v37 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC120);
    sub_26B0798B0();
    v20 = v34;

    return v20 <= v21;
  }
}

uint64_t sub_26AEC5F5C()
{
  sub_26B0790B0();
  sub_26AED71F4();
  return sub_26B079620();
}

uint64_t sub_26AEC5FDC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC158);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_26AEC6044(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC158);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC160);
  result = a2;
  *(a2 + *(v3 + 36)) = *(a1 + *(v3 + 36));
  return result;
}

uint64_t sub_26AEC60E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v24 = a2;
  v23 = a3;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v18 = 0;
  v13 = sub_26B078B00();
  v14 = *(v13 - 8);
  v15 = v13 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13);
  v17 = &v10 - v16;
  v19 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v18);
  v20 = &v10 - v19;
  v21 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v30 = &v10 - v21;
  v29 = sub_26B0781B0();
  v27 = *(v29 - 8);
  v28 = v29 - 8;
  v25 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v24);
  v26 = &v10 - v25;
  v37 = &v10 - v25;
  v36 = v6;
  v35 = v5;
  v34 = v7;
  sub_26AEBFF70(v5, v8);
  if ((*(v27 + 48))(v30, 1, v29) == 1)
  {
    return sub_26AEC02C0(v30);
  }

  (*(v27 + 32))(v26, v30, v29);
  sub_26AEC25B8(v17);
  sub_26B078AF0();
  (*(v14 + 8))(v17, v13);
  v10 = *(v23 + 80);
  v11 = *(v23 + 88);

  v32 = v10;
  v33 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC128);
  sub_26B0798B0();
  v12 = v31;

  (*(v27 + 56))(v20, 1, 1, v29);
  sub_26AEBDD28(v20);

  return (*(v27 + 8))(v26, v29);
}

uint64_t sub_26AEC645C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v15 = *(a1 + 8);
  sub_26B078640();
  *(a2 + 8) = v15;
  if (*(a1 + 24))
  {
    v11 = *(a1 + 16);

    *(a2 + 16) = v11;
    v12 = *(a1 + 24);

    *(a2 + 24) = v12;
  }

  else
  {
    *(a2 + 16) = *(a1 + 16);
  }

  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 56) = *(a1 + 56);
  v6 = *(a1 + 72);

  *(a2 + 72) = v6;
  v7 = *(a1 + 80);

  *(a2 + 80) = v7;
  v8 = *(a1 + 88);

  *(a2 + 88) = v8;
  v2 = type metadata accessor for WebPageViewCompat();
  v9 = (a2 + *(v2 + 36));
  v10 = (a1 + *(v2 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_26B078B00();
    (*(*(v3 - 8) + 16))(v9, v10);
  }

  else
  {
    v5 = *v10;

    *v9 = v5;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_26AEC665C()
{
  v6 = type metadata accessor for WebPageViewCompat();
  v1 = *(*(v6 - 8) + 80);
  v7 = (v1 + 16) & ~v1;

  if (*(v0 + v7 + 24))
  {
  }

  v4 = v5 + v7 + *(v6 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B078B00();
    (*(*(v2 - 8) + 8))(v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AEC6808(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  v5 = *(type metadata accessor for WebPageViewCompat() + 36);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B078B00();
    (*(*(v2 - 8) + 32))();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a2 + v5), (a1 + v5), *(*(v7 - 8) + 64));
  }

  return a2;
}

uint64_t sub_26AEC6960(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WebPageViewCompat();
  v4 = v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  return sub_26AEC60E8(a1, a2, v4);
}

unint64_t sub_26AEC69FC()
{
  v2 = qword_2803DC208;
  if (!qword_2803DC208)
  {
    sub_26B0783E0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC208);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEC6A7C(uint64_t a1)
{
  v79 = a1;
  v62 = "Fatal error";
  v63 = "Unexpectedly found nil while unwrapping an Optional value";
  v64 = "SoftwareUpdateUIKit/UpdateRemoteContentView.swift";
  v65 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v66 = sub_26AEC7B20;
  v67 = sub_26AED719C;
  v68 = sub_26AED7120;
  v69 = sub_26AED7154;
  v70 = sub_26AED71E8;
  v100 = 0;
  v71 = 0;
  v90 = 0;
  v91 = 0;
  v72 = sub_26B078580();
  v73 = *(v72 - 8);
  v74 = v72 - 8;
  v75 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v72);
  v76 = v16 - v75;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9E0);
  v77 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v78 = v16 - v77;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC2B8);
  v81 = *(v80 - 8);
  v82 = v80 - 8;
  v83 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v79);
  v84 = v16 - v83;
  v100 = v2;
  v85 = *v2;
  v86 = v2[1];
  sub_26B078640();
  if (v86)
  {
    v60 = v85;
    v61 = v86;
    v48 = v86;
    v49 = v85;
    v90 = v85;
    v91 = v86;
    v50 = *(v79 + 80);
    v51 = *(v79 + 88);

    v88 = v50;
    v89 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC128);
    sub_26B0798B0();
    v52 = v87;

    v53 = sub_26AEBD0B4();

    if (v53)
    {
      v47 = v53;
    }

    else
    {
      sub_26B07A650();
      __break(1u);
    }

    v41 = v47;
    v43 = 1;
    sub_26B079D00();
    v42 = v3;
    sub_26B0781A0();

    v44 = sub_26B0781B0();
    v45 = *(v44 - 8);
    v46 = v44 - 8;
    if ((*(v45 + 48))(v78, v43) == 1)
    {
      sub_26B07A650();
      __break(1u);
    }

    sub_26B078870();
    (*(v45 + 8))(v78, v44);

    (*(v81 + 8))(v84, v80);
    sub_26AEC7888();
  }

  else
  {
    v57 = *(v79 + 16);
    v59 = *(v79 + 24);
    v58 = *(v79 + 32);
    sub_26AEC1EF4(v57, v59);
    if (v59)
    {
      v54 = v57;
      v55 = v59;
      v56 = v58;
      v36 = v58;
      v40 = v59;
      v39 = v57;

      v38 = v93;
      v93[0] = v39;
      v93[1] = v40;
      v94 = v36 & 1;
      v37 = &v92;
      v92 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCEB0);
      sub_26B0799D0();
      sub_26AED3530();
    }

    sub_26B078550();
    v34 = sub_26B078570();
    v35 = sub_26B07A2A0();
    v24 = 17;
    v26 = 7;
    v28 = swift_allocObject();
    *(v28 + 16) = 32;
    v29 = swift_allocObject();
    *(v29 + 16) = 8;
    v25 = 32;
    v5 = swift_allocObject();
    v27 = v5;
    *(v5 + 16) = v66;
    *(v5 + 24) = 0;
    v6 = swift_allocObject();
    v7 = v27;
    v31 = v6;
    *(v6 + 16) = v67;
    *(v6 + 24) = v7;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
    v30 = sub_26B07A760();
    v32 = v8;

    v9 = v28;
    v10 = v32;
    *v32 = v68;
    v10[1] = v9;

    v11 = v29;
    v12 = v32;
    v32[2] = v69;
    v12[3] = v11;

    v13 = v31;
    v14 = v32;
    v32[4] = v70;
    v14[5] = v13;
    sub_26AEA3B2C();

    if (os_log_type_enabled(v34, v35))
    {
      v15 = v71;
      v17 = sub_26B07A420();
      v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
      v18 = sub_26AEA3B70(0);
      v19 = sub_26AEA3B70(1);
      v20 = &v99;
      v99 = v17;
      v21 = &v98;
      v98 = v18;
      v22 = &v97;
      v97 = v19;
      sub_26AEA3BC4(2, &v99);
      sub_26AEA3BC4(1, v20);
      v95 = v68;
      v96 = v28;
      sub_26AEA3BD8(&v95, v20, v21, v22);
      v23 = v15;
      if (v15)
      {

        __break(1u);
      }

      else
      {
        v95 = v69;
        v96 = v29;
        sub_26AEA3BD8(&v95, &v99, &v98, &v97);
        v16[1] = 0;
        v95 = v70;
        v96 = v31;
        sub_26AEA3BD8(&v95, &v99, &v98, &v97);
        _os_log_impl(&dword_26AE88000, v34, v35, "UpdateRemoteContentView: Content size resolved via %s", v17, 0xCu);
        sub_26AEA3C24(v18);
        sub_26AEA3C24(v19);
        sub_26B07A400();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v34);
    return (*(v73 + 8))(v76, v72);
  }
}

uint64_t sub_26AEC7678()
{
  v6 = type metadata accessor for WebPageViewCompat();
  v1 = *(*(v6 - 8) + 80);
  v7 = (v1 + 16) & ~v1;

  if (*(v0 + v7 + 24))
  {
  }

  v4 = v5 + v7 + *(v6 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B078B00();
    (*(*(v2 - 8) + 8))(v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AEC7824()
{
  v1 = *(type metadata accessor for WebPageViewCompat() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26AEC6A7C(v2);
}

uint64_t sub_26AEC7888()
{
  v21 = MEMORY[0x277D85700];
  v26 = &unk_26B088A38;
  v32 = 0;
  v24 = 0;
  v1 = type metadata accessor for WebPageViewCompat();
  v12 = *(v1 - 8);
  v18 = v12;
  v19 = *(v12 + 64);
  v13 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v23 = &v11 - v13;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00);
  v14 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v25 = &v11 - v14;
  v32 = v0;
  v15 = *(v0 + 80);
  v16 = *(v0 + 88);

  v30 = v15;
  v31 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC128);
  sub_26B0798B0();
  v28 = v29;

  v3 = sub_26B07A160();
  (*(*(v3 - 8) + 56))(v25, 1);
  sub_26AEC645C(v17, v23);
  sub_26B07A130();
  v20 = sub_26B07A120();
  v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v4 = swift_allocObject();
  v5 = v21;
  v6 = v22;
  v7 = v4;
  v8 = v23;
  v27 = v7;
  *(v7 + 16) = v20;
  *(v7 + 24) = v5;
  sub_26AEC6808(v8, v7 + v6);
  v9 = sub_26AEBC0C4(v24, v24, v25, v26, v27, MEMORY[0x277D84F78] + 8);
  sub_26AEBE820(v9);
}

uint64_t sub_26AEC7B3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11 = a2;
  v9[1] = a1;
  v15 = sub_26B078BE0();
  v12 = *(v15 - 8);
  v13 = v15 - 8;
  v10 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v14 = v9 - v10;
  (*(v12 + 16))(v9 - v10);
  sub_26B078BC0();
  v2 = v11;
  v3 = v12;
  v4 = v14;
  v5 = v15;
  *v11 = v6;
  v2[1] = v7;
  return (*(v3 + 8))(v4, v5);
}

uint64_t sub_26AEC7C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a3;
  v4 = a1;
  v7 = a2;
  v11 = sub_26B078BE0();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v10 = &v4 - v5;
  (*(v8 + 16))(&v4 - v5);

  swift_getAtKeyPath();

  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_26AEC7DA0(uint64_t a1, double *a2)
{
  v3 = *a2;
  v4 = a2[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC120);
  sub_26B0798B0();

  if (v5 <= 1.0 && v4 > 1.0)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC128);
    sub_26B0798B0();

    if (sub_26AEBE6C8())
    {

      sub_26AEC07B0();

      sub_26B07A170();
    }

    else
    {
      sub_26AEC07B0();
    }

    return sub_26AEC8444(0, v3, v4);
  }

  return result;
}

uint64_t sub_26AEC7F9C()
{
  v6 = type metadata accessor for WebPageViewCompat();
  v1 = *(*(v6 - 8) + 80);
  v7 = (v1 + 16) & ~v1;

  if (*(v0 + v7 + 24))
  {
  }

  v4 = v5 + v7 + *(v6 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B078B00();
    (*(*(v2 - 8) + 8))(v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AEC8148(uint64_t a1, double *a2)
{
  type metadata accessor for WebPageViewCompat();

  return sub_26AEC7DA0(a1, a2);
}

unint64_t sub_26AEC81C8()
{
  v2 = qword_2803DC210;
  if (!qword_2803DC210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC1C8);
    sub_26B0783E0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC9E0);
    sub_26AEC69FC();
    sub_26AEC051C();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC210);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AEC82E4()
{
  v2 = qword_2803DC218;
  if (!qword_2803DC218)
  {
    type metadata accessor for CGSize();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC218);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEC8364(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC1C0);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC1C8) + 36);
  if (*(a1 + v4))
  {
  }

  if (*(a1 + v4 + 16))
  {
  }

  return a1;
}

uint64_t sub_26AEC8444(unsigned int a1, double a2, double a3)
{
  v186 = a2;
  v187 = a3;
  v188 = a1;
  v159 = sub_26AED360C;
  v160 = sub_26AED371C;
  v161 = sub_26AED3644;
  v162 = sub_26AED3888;
  v163 = sub_26AED3678;
  v164 = sub_26AED36AC;
  v165 = sub_26AED37D4;
  v166 = sub_26AED380C;
  v167 = sub_26AED3840;
  v168 = sub_26AED38D4;
  v169 = sub_26AED0200;
  v170 = sub_26AED33D8;
  v171 = sub_26AED0470;
  v172 = sub_26AED34D8;
  v173 = sub_26AED335C;
  v174 = sub_26AED3390;
  v175 = sub_26AED3424;
  v176 = sub_26AED345C;
  v177 = sub_26AED3490;
  v178 = sub_26AED3524;
  v220 = 0.0;
  v221 = 0.0;
  v219 = 0;
  v218 = 0;
  v217 = 0.0;
  v179 = 0;
  v205 = 0;
  v180 = 0;
  v181 = *(type metadata accessor for WebPageViewCompat() - 8);
  v182 = v181;
  v183 = *(v181 + 64);
  v184 = (v183 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v185 = v64 - v184;
  v189 = sub_26B078580();
  v190 = *(v189 - 8);
  v191 = v189 - 8;
  v192 = (*(v190 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = (MEMORY[0x28223BE20])(v188);
  v193 = v64 - v192;
  v194 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v4);
  v195 = v64 - v194;
  v220 = v6;
  v221 = v7;
  v219 = v8;
  v218 = v3;
  v217 = v7;
  v196 = sub_26AEBC708(*(v3 + 40), *(v3 + 48));
  if (v9)
  {
    v155 = v187;
    v156 = v179;
  }

  else
  {
    v157 = v196;
    v205 = v196;
    v134 = &v203;
    v203 = v187;
    v133 = &v202;
    v202 = v196;
    sub_26AED3568();
    sub_26B07A810();
    v135 = v204;
    v217 = v204;
    sub_26B078550();
    v140 = 32;
    v141 = 7;
    v10 = swift_allocObject();
    v11 = v187;
    v136 = v10;
    *(v10 + 16) = v186;
    *(v10 + 24) = v11;
    v142 = swift_allocObject();
    *(v142 + 16) = v135;
    v153 = sub_26B078570();
    v154 = sub_26B07A2A0();
    v138 = 17;
    v144 = swift_allocObject();
    *(v144 + 16) = 0;
    v145 = swift_allocObject();
    v139 = 8;
    *(v145 + 16) = 8;
    v12 = swift_allocObject();
    v13 = v136;
    v137 = v12;
    *(v12 + 16) = v159;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v137;
    v146 = v14;
    *(v14 + 16) = v160;
    *(v14 + 24) = v15;
    v147 = swift_allocObject();
    *(v147 + 16) = 0;
    v148 = swift_allocObject();
    *(v148 + 16) = v139;
    v16 = swift_allocObject();
    v17 = v142;
    v143 = v16;
    *(v16 + 16) = v161;
    *(v16 + 24) = v17;
    v18 = swift_allocObject();
    v19 = v143;
    v150 = v18;
    *(v18 + 16) = v162;
    *(v18 + 24) = v19;
    v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
    v149 = sub_26B07A760();
    v151 = v20;

    v21 = v144;
    v22 = v151;
    *v151 = v163;
    v22[1] = v21;

    v23 = v145;
    v24 = v151;
    v151[2] = v164;
    v24[3] = v23;

    v25 = v146;
    v26 = v151;
    v151[4] = v165;
    v26[5] = v25;

    v27 = v147;
    v28 = v151;
    v151[6] = v166;
    v28[7] = v27;

    v29 = v148;
    v30 = v151;
    v151[8] = v167;
    v30[9] = v29;

    v31 = v150;
    v32 = v151;
    v151[10] = v168;
    v32[11] = v31;
    sub_26AEA3B2C();

    if (os_log_type_enabled(v153, v154))
    {
      v33 = v179;
      v126 = sub_26B07A420();
      v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
      v125 = 0;
      v127 = sub_26AEA3B70(0);
      v128 = sub_26AEA3B70(v125);
      v129 = &v201;
      v201 = v126;
      v130 = &v200;
      v200 = v127;
      v131 = &v199;
      v199 = v128;
      sub_26AEA3BC4(0, &v201);
      sub_26AEA3BC4(2, v129);
      v197 = v163;
      v198 = v144;
      sub_26AEA3BD8(&v197, v129, v130, v131);
      v132 = v33;
      if (v33)
      {

        __break(1u);
      }

      else
      {
        v197 = v164;
        v198 = v145;
        sub_26AEA3BD8(&v197, &v201, &v200, &v199);
        v122 = 0;
        v197 = v165;
        v198 = v146;
        sub_26AEA3BD8(&v197, &v201, &v200, &v199);
        v121 = 0;
        v197 = v166;
        v198 = v147;
        sub_26AEA3BD8(&v197, &v201, &v200, &v199);
        v120 = 0;
        v197 = v167;
        v198 = v148;
        sub_26AEA3BD8(&v197, &v201, &v200, &v199);
        v119 = 0;
        v197 = v168;
        v198 = v150;
        sub_26AEA3BD8(&v197, &v201, &v200, &v199);
        v118 = 0;
        _os_log_impl(&dword_26AE88000, v153, v154, "UpdateRemoteContentView: Applied height constraint, original: %f, constrained: %f", v126, 0x16u);
        v117 = 0;
        sub_26AEA3C24(v127);
        sub_26AEA3C24(v128);
        sub_26B07A400();

        v123 = v118;
      }
    }

    else
    {
      v34 = v179;

      v123 = v34;
    }

    v116 = v123;
    v35 = MEMORY[0x277D82BD8](v153);
    (*(v190 + 8))(v195, v189, v35);
    v155 = v135;
    v156 = v116;
  }

  v105 = v156;
  v109 = v155;
  v106 = &v216;
  swift_beginAccess();
  swift_endAccess();
  v107 = *(v158 + 56);
  v108 = *(v158 + 64);
  v112 = *(v158 + 72);

  v111 = v215;
  v215[0] = v107;
  v215[1] = v108;
  v215[2] = v112;
  v110 = v214;
  *v214 = v186;
  *&v214[1] = v109;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC120);
  sub_26B0798C0();
  sub_26AEC20F8();

  v113 = *(v158 + 16);
  v115 = *(v158 + 24);
  v114 = *(v158 + 32);
  sub_26AEC1EF4(v113, v115);
  if (v115)
  {
    v102 = v113;
    v103 = v115;
    v104 = v114;
    v97 = v114;
    v101 = v115;
    v100 = v113;

    v99 = v207;
    v207[0] = v100;
    v207[1] = v101;
    v208 = v97 & 1;
    v98 = &v206;
    v206 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCEB0);
    sub_26B0799D0();
    sub_26AED3530();
  }

  v73 = *(v158 + 80);
  v74 = *(v158 + 88);

  v213[2] = v73;
  v213[3] = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC128);
  sub_26B0798B0();
  v75 = v213[1];

  sub_26AEBF160(v188);

  sub_26B078550();
  v80 = 17;
  v83 = 7;
  v36 = swift_allocObject();
  v37 = v185;
  v38 = v36;
  v39 = v158;
  v77 = v38;
  *(v38 + 16) = v188;
  sub_26AEC645C(v39, v37);
  v76 = (*(v182 + 80) + 16) & ~*(v182 + 80);
  v84 = swift_allocObject();
  sub_26AEC6808(v185, v84 + v76);
  v95 = sub_26B078570();
  v96 = sub_26B07A2A0();
  v86 = swift_allocObject();
  v79 = 32;
  *(v86 + 16) = 32;
  v87 = swift_allocObject();
  v81 = 8;
  *(v87 + 16) = 8;
  v82 = 32;
  v40 = swift_allocObject();
  v41 = v77;
  v78 = v40;
  *(v40 + 16) = v169;
  *(v40 + 24) = v41;
  v42 = swift_allocObject();
  v43 = v78;
  v88 = v42;
  *(v42 + 16) = v170;
  *(v42 + 24) = v43;
  v89 = swift_allocObject();
  *(v89 + 16) = v79;
  v90 = swift_allocObject();
  *(v90 + 16) = v81;
  v44 = swift_allocObject();
  v45 = v84;
  v85 = v44;
  *(v44 + 16) = v171;
  *(v44 + 24) = v45;
  v46 = swift_allocObject();
  v47 = v85;
  v92 = v46;
  *(v46 + 16) = v172;
  *(v46 + 24) = v47;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  v91 = sub_26B07A760();
  v93 = v48;

  v49 = v86;
  v50 = v93;
  *v93 = v173;
  v50[1] = v49;

  v51 = v87;
  v52 = v93;
  v93[2] = v174;
  v52[3] = v51;

  v53 = v88;
  v54 = v93;
  v93[4] = v175;
  v54[5] = v53;

  v55 = v89;
  v56 = v93;
  v93[6] = v176;
  v56[7] = v55;

  v57 = v90;
  v58 = v93;
  v93[8] = v177;
  v58[9] = v57;

  v59 = v92;
  v60 = v93;
  v93[10] = v178;
  v60[11] = v59;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v95, v96))
  {
    v61 = v105;
    v65 = sub_26B07A420();
    v64[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v66 = sub_26AEA3B70(0);
    v67 = sub_26AEA3B70(2);
    v69 = v213;
    v213[0] = v65;
    v70 = &v212;
    v212 = v66;
    v71 = &v211;
    v211 = v67;
    v68 = 2;
    sub_26AEA3BC4(2, v213);
    sub_26AEA3BC4(v68, v69);
    v209 = v173;
    v210 = v86;
    sub_26AEA3BD8(&v209, v69, v70, v71);
    v72 = v61;
    if (v61)
    {

      __break(1u);
    }

    else
    {
      v209 = v174;
      v210 = v87;
      sub_26AEA3BD8(&v209, v213, &v212, &v211);
      v64[4] = 0;
      v209 = v175;
      v210 = v88;
      sub_26AEA3BD8(&v209, v213, &v212, &v211);
      v64[3] = 0;
      v209 = v176;
      v210 = v89;
      sub_26AEA3BD8(&v209, v213, &v212, &v211);
      v64[2] = 0;
      v209 = v177;
      v210 = v90;
      sub_26AEA3BD8(&v209, v213, &v212, &v211);
      v64[1] = 0;
      v209 = v178;
      v210 = v92;
      sub_26AEA3BD8(&v209, v213, &v212, &v211);
      _os_log_impl(&dword_26AE88000, v95, v96, "UpdateRemoteContentView: Content size resolved via %s: %s", v65, 0x16u);
      sub_26AEA3C24(v66);
      sub_26AEA3C24(v67);
      sub_26B07A400();
    }
  }

  else
  {
  }

  v62 = MEMORY[0x277D82BD8](v95);
  return (*(v190 + 8))(v193, v189, v62);
}

unint64_t sub_26AEC96F8()
{
  v2 = qword_2803DC220;
  if (!qword_2803DC220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC1D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC1C8);
    type metadata accessor for CGSize();
    sub_26AEC81C8();
    sub_26AEC82E4();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC220);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEC9814(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC1D0);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

unint64_t sub_26AEC987C()
{
  v2 = qword_2803DC228;
  if (!qword_2803DC228)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC228);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AEC994C()
{
  v6 = type metadata accessor for WebPageViewCompat();
  v1 = *(*(v6 - 8) + 80);
  v7 = (v1 + 16) & ~v1;

  if (*(v0 + v7 + 24))
  {
  }

  v4 = v5 + v7 + *(v6 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B078B00();
    (*(*(v2 - 8) + 8))(v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AEC9AF8()
{
  type metadata accessor for WebPageViewCompat();

  return sub_26AEC990C();
}

uint64_t sub_26AEC9B70()
{
  v253 = 0;
  v295 = 0;
  v248 = 0;
  v290 = 0;
  v1 = type metadata accessor for WebPageViewCompat();
  v249 = *(v1 - 8);
  v250 = v249;
  v251 = *(v249 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v252 = v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v253);
  v255 = v74 - v254;
  v256 = sub_26B078580();
  v257 = *(v256 - 8);
  v258 = v257;
  v262 = *(v257 + 64);
  MEMORY[0x28223BE20](v256 - 8);
  v264 = (v262 + 15) & 0xFFFFFFFFFFFFFFF0;
  v259 = v74 - v264;
  MEMORY[0x28223BE20](v74 - v264);
  v260 = v74 - v264;
  MEMORY[0x28223BE20](v74 - v264);
  v261 = v74 - v264;
  MEMORY[0x28223BE20](v74 - v264);
  v263 = v74 - v264;
  MEMORY[0x28223BE20](v74 - v264);
  v265 = v74 - v264;
  v295 = v0;
  v266 = *(v0 + 80);
  v268 = *(v0 + 88);

  v294[2] = v266;
  v294[3] = v268;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC128);
  sub_26B0798B0();
  v267 = v294[1];

  v269 = sub_26AEBF01C();
  if (v269 != 4)
  {
    v246 = v269;
    v225 = v269;
    v290 = v269;

    sub_26B078550();
    v228 = 17;
    v233 = 7;
    v234 = swift_allocObject();
    *(v234 + 16) = v225;
    v245 = sub_26B078570();
    v226 = v245;
    v244 = sub_26B07A2A0();
    v227 = v244;
    v238 = swift_allocObject();
    v229 = v238;
    v230 = 32;
    *(v238 + 16) = 32;
    v3 = swift_allocObject();
    v4 = v230;
    v239 = v3;
    v231 = v3;
    *(v3 + 16) = 8;
    v232 = v4;
    v5 = swift_allocObject();
    v6 = v234;
    v235 = v5;
    *(v5 + 16) = sub_26AED393C;
    *(v5 + 24) = v6;
    v7 = swift_allocObject();
    v8 = v235;
    v242 = v7;
    v236 = v7;
    *(v7 + 16) = sub_26AED39EC;
    *(v7 + 24) = v8;
    v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
    v237 = v243;
    v240 = sub_26B07A760();
    v241 = v9;

    v10 = v238;
    v11 = v241;
    *v241 = sub_26AED3970;
    v11[1] = v10;

    v12 = v239;
    v13 = v241;
    v241[2] = sub_26AED39A4;
    v13[3] = v12;

    v14 = v241;
    v15 = v242;
    v241[4] = sub_26AED3A38;
    v14[5] = v15;
    sub_26AEA3B2C();

    if (os_log_type_enabled(v245, v244))
    {
      v16 = v248;
      v218 = sub_26B07A420();
      v215 = v218;
      v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
      v219 = sub_26AEA3B70(0);
      v217 = v219;
      v221 = 1;
      v220 = sub_26AEA3B70(1);
      v274 = v218;
      v273 = v219;
      v272 = v220;
      v222 = &v274;
      sub_26AEA3BC4(2, &v274);
      sub_26AEA3BC4(v221, v222);
      v270 = sub_26AED3970;
      v271 = v229;
      sub_26AEA3BD8(&v270, v222, &v273, &v272);
      v223 = v16;
      v224 = v16;
      if (v16)
      {
        v213 = 0;

        __break(1u);
      }

      else
      {
        v270 = sub_26AED39A4;
        v271 = v231;
        sub_26AEA3BD8(&v270, &v274, &v273, &v272);
        v211 = 0;
        v212 = 0;
        v270 = sub_26AED3A38;
        v271 = v236;
        sub_26AEA3BD8(&v270, &v274, &v273, &v272);
        v209 = 0;
        v210 = 0;
        _os_log_impl(&dword_26AE88000, v226, v227, "UpdateRemoteContentView: Content size category changed, current method: %s", v215, 0xCu);
        sub_26AEA3C24(v217);
        sub_26AEA3C24(v220);
        sub_26B07A400();

        v214 = v209;
      }
    }

    else
    {
      v17 = v248;

      v214 = v17;
    }

    v206 = v214;

    v207 = *(v258 + 8);
    v208 = (v258 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v207(v265, v256);
    if (!v225)
    {
      goto LABEL_10;
    }

    if (v225 == 1)
    {
      sub_26B078550();
      v154 = 17;
      v159 = 7;
      v160 = swift_allocObject();
      *(v160 + 16) = v225;
      v169 = sub_26B078570();
      v152 = v169;
      v168 = sub_26B07A2A0();
      v153 = v168;
      v163 = swift_allocObject();
      v155 = v163;
      v156 = 32;
      *(v163 + 16) = 32;
      v33 = swift_allocObject();
      v34 = v156;
      v164 = v33;
      v157 = v33;
      *(v33 + 16) = 8;
      v158 = v34;
      v35 = swift_allocObject();
      v36 = v160;
      v161 = v35;
      *(v35 + 16) = sub_26AED3BA4;
      *(v35 + 24) = v36;
      v37 = swift_allocObject();
      v38 = v161;
      v167 = v37;
      v162 = v37;
      *(v37 + 16) = sub_26AED3C54;
      *(v37 + 24) = v38;
      v165 = sub_26B07A760();
      v166 = v39;

      v40 = v163;
      v41 = v166;
      *v166 = sub_26AED3BD8;
      v41[1] = v40;

      v42 = v164;
      v43 = v166;
      v166[2] = sub_26AED3C0C;
      v43[3] = v42;

      v44 = v166;
      v45 = v167;
      v166[4] = sub_26AED3CA0;
      v44[5] = v45;
      sub_26AEA3B2C();

      if (os_log_type_enabled(v169, v168))
      {
        v46 = v206;
        v145 = sub_26B07A420();
        v142 = v145;
        v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
        v146 = sub_26AEA3B70(0);
        v144 = v146;
        v148 = 1;
        v147 = sub_26AEA3B70(1);
        v284 = v145;
        v283 = v146;
        v282 = v147;
        v149 = &v284;
        sub_26AEA3BC4(2, &v284);
        sub_26AEA3BC4(v148, v149);
        v280 = sub_26AED3BD8;
        v281 = v155;
        sub_26AEA3BD8(&v280, v149, &v283, &v282);
        v150 = v46;
        v151 = v46;
        if (v46)
        {
          v140 = 0;

          __break(1u);
        }

        else
        {
          v280 = sub_26AED3C0C;
          v281 = v157;
          sub_26AEA3BD8(&v280, &v284, &v283, &v282);
          v138 = 0;
          v139 = 0;
          v280 = sub_26AED3CA0;
          v281 = v162;
          sub_26AEA3BD8(&v280, &v284, &v283, &v282);
          v136 = 0;
          v137 = 0;
          _os_log_impl(&dword_26AE88000, v152, v153, "UpdateRemoteContentView: Re-calculating %s due to font size change", v142, 0xCu);
          sub_26AEA3C24(v144);
          sub_26AEA3C24(v147);
          sub_26B07A400();

          v141 = v136;
        }
      }

      else
      {
        v47 = v206;

        v141 = v47;
      }

      v135 = v141;

      v207(v261, v256);
      v133 = 0;
      v48 = sub_26B07A160();
      (*(*(v48 - 8) + 56))(v255, 1);
      sub_26AEC645C(v247, v252);
      sub_26B07A130();
      v130 = sub_26B07A120();
      v131 = (*(v250 + 80) + 32) & ~*(v250 + 80);
      v132 = v131 + v251;
      v49 = swift_allocObject();
      v50 = v131;
      v51 = v49;
      v52 = v252;
      v134 = v51;
      *(v51 + 16) = v130;
      *(v51 + 24) = MEMORY[0x277D85700];
      sub_26AEC6808(v52, v51 + v50);
      v53 = v133;
      v54 = v255;
      v55 = v134;
      *(v134 + v132) = v225;
      sub_26AEBC0C4(v53, v53, v54, &unk_26B088A60, v55, MEMORY[0x277D84F78] + 8);

      return v135;
    }

    if (v225 == 2)
    {
      sub_26B078550();
      v114 = 17;
      v119 = 7;
      v120 = swift_allocObject();
      *(v120 + 16) = v225;
      v129 = sub_26B078570();
      v112 = v129;
      v128 = sub_26B07A2A0();
      v113 = v128;
      v123 = swift_allocObject();
      v115 = v123;
      v116 = 32;
      *(v123 + 16) = 32;
      v56 = swift_allocObject();
      v57 = v116;
      v124 = v56;
      v117 = v56;
      *(v56 + 16) = 8;
      v118 = v57;
      v58 = swift_allocObject();
      v59 = v120;
      v121 = v58;
      *(v58 + 16) = sub_26AED3A70;
      *(v58 + 24) = v59;
      v60 = swift_allocObject();
      v61 = v121;
      v127 = v60;
      v122 = v60;
      *(v60 + 16) = sub_26AED3B20;
      *(v60 + 24) = v61;
      v125 = sub_26B07A760();
      v126 = v62;

      v63 = v123;
      v64 = v126;
      *v126 = sub_26AED3AA4;
      v64[1] = v63;

      v65 = v124;
      v66 = v126;
      v126[2] = sub_26AED3AD8;
      v66[3] = v65;

      v67 = v126;
      v68 = v127;
      v126[4] = sub_26AED3B6C;
      v67[5] = v68;
      sub_26AEA3B2C();

      if (os_log_type_enabled(v129, v128))
      {
        v69 = v206;
        v105 = sub_26B07A420();
        v102 = v105;
        v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
        v106 = sub_26AEA3B70(0);
        v104 = v106;
        v108 = 1;
        v107 = sub_26AEA3B70(1);
        v289 = v105;
        v288 = v106;
        v287 = v107;
        v109 = &v289;
        sub_26AEA3BC4(2, &v289);
        sub_26AEA3BC4(v108, v109);
        v285 = sub_26AED3AA4;
        v286 = v115;
        sub_26AEA3BD8(&v285, v109, &v288, &v287);
        v110 = v69;
        v111 = v69;
        if (v69)
        {
          v100 = 0;

          __break(1u);
        }

        else
        {
          v285 = sub_26AED3AD8;
          v286 = v117;
          sub_26AEA3BD8(&v285, &v289, &v288, &v287);
          v98 = 0;
          v99 = 0;
          v285 = sub_26AED3B6C;
          v286 = v122;
          sub_26AEA3BD8(&v285, &v289, &v288, &v287);
          v96 = 0;
          v97 = 0;
          _os_log_impl(&dword_26AE88000, v112, v113, "UpdateRemoteContentView: Re-calculating %s due to font size change", v102, 0xCu);
          sub_26AEA3C24(v104);
          sub_26AEA3C24(v107);
          sub_26B07A400();

          v101 = v96;
        }
      }

      else
      {
        v70 = v206;

        v101 = v70;
      }

      v95 = v101;

      v207(v260, v256);
      sub_26AECFDA0();
      return v95;
    }

    else
    {
LABEL_10:
      sub_26B078550();
      v190 = 17;
      v195 = 7;
      v196 = swift_allocObject();
      *(v196 + 16) = v225;
      v205 = sub_26B078570();
      v188 = v205;
      v204 = sub_26B07A2B0();
      v189 = v204;
      v199 = swift_allocObject();
      v191 = v199;
      v192 = 32;
      *(v199 + 16) = 32;
      v18 = swift_allocObject();
      v19 = v192;
      v200 = v18;
      v193 = v18;
      *(v18 + 16) = 8;
      v194 = v19;
      v20 = swift_allocObject();
      v21 = v196;
      v197 = v20;
      *(v20 + 16) = sub_26AED4108;
      *(v20 + 24) = v21;
      v22 = swift_allocObject();
      v23 = v197;
      v203 = v22;
      v198 = v22;
      *(v22 + 16) = sub_26AED41B8;
      *(v22 + 24) = v23;
      v201 = sub_26B07A760();
      v202 = v24;

      v25 = v199;
      v26 = v202;
      *v202 = sub_26AED413C;
      v26[1] = v25;

      v27 = v200;
      v28 = v202;
      v202[2] = sub_26AED4170;
      v28[3] = v27;

      v29 = v202;
      v30 = v203;
      v202[4] = sub_26AED4204;
      v29[5] = v30;
      sub_26AEA3B2C();

      if (os_log_type_enabled(v205, v204))
      {
        v31 = v206;
        v181 = sub_26B07A420();
        v178 = v181;
        v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
        v182 = sub_26AEA3B70(0);
        v180 = v182;
        v184 = 1;
        v183 = sub_26AEA3B70(1);
        v279 = v181;
        v278 = v182;
        v277 = v183;
        v185 = &v279;
        sub_26AEA3BC4(2, &v279);
        sub_26AEA3BC4(v184, v185);
        v275 = sub_26AED413C;
        v276 = v191;
        sub_26AEA3BD8(&v275, v185, &v278, &v277);
        v186 = v31;
        v187 = v31;
        if (v31)
        {
          v176 = 0;

          __break(1u);
        }

        else
        {
          v275 = sub_26AED4170;
          v276 = v193;
          sub_26AEA3BD8(&v275, &v279, &v278, &v277);
          v174 = 0;
          v175 = 0;
          v275 = sub_26AED4204;
          v276 = v198;
          sub_26AEA3BD8(&v275, &v279, &v278, &v277);
          v172 = 0;
          v173 = 0;
          _os_log_impl(&dword_26AE88000, v188, v189, "UpdateRemoteContentView: No re-calculation needed for %s", v178, 0xCu);
          sub_26AEA3C24(v180);
          sub_26AEA3C24(v183);
          sub_26B07A400();

          v177 = v172;
        }
      }

      else
      {
        v32 = v206;

        v177 = v32;
      }

      v170 = v177;

      v207(v263, v256);
      return v170;
    }
  }

  sub_26B078550();
  v92 = sub_26B078570();
  v89 = v92;
  v91 = sub_26B07A2B0();
  v90 = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  v93 = sub_26B07A760();
  if (os_log_type_enabled(v92, v91))
  {
    v71 = v248;
    v80 = sub_26B07A420();
    v76 = v80;
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v78 = 0;
    v81 = sub_26AEA3B70(0);
    v79 = v81;
    v82 = sub_26AEA3B70(v78);
    v294[0] = v80;
    v293 = v81;
    v292 = v82;
    v83 = 0;
    v84 = v294;
    sub_26AEA3BC4(0, v294);
    sub_26AEA3BC4(v83, v84);
    v291 = v93;
    v85 = v74;
    MEMORY[0x28223BE20](v74);
    v86 = &v74[-6];
    v74[-4] = v72;
    v74[-3] = &v293;
    v74[-2] = &v292;
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10);
    sub_26AE9CC18();
    sub_26B079FF0();
    v88 = v71;
    if (v71)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_26AE88000, v89, v90, "UpdateRemoteContentView: Content size category changed, but no resolution method tracked", v76, 2u);
      v74[1] = 0;
      sub_26AEA3C24(v79);
      sub_26AEA3C24(v82);
      sub_26B07A400();

      v75 = v88;
    }
  }

  else
  {

    v75 = v248;
  }

  v74[0] = v75;

  (*(v258 + 8))(v259, v256);
  return v74[0];
}

uint64_t sub_26AECBD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v4[7] = v4;
  v4[8] = 0;
  v5 = sub_26B07A5F0();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[8] = a4;
  v4[13] = sub_26B07A130();
  v4[14] = sub_26B07A120();
  v9 = sub_26B07A0C0();
  v4[15] = v9;
  v4[16] = v6;

  return MEMORY[0x2822009F8](sub_26AECBEB4, v9, v6);
}

uint64_t sub_26AECBEB4()
{
  *(v0 + 56) = v0;
  v1 = sub_26AEC1DD8();
  v2 = v1[1];
  *(v0 + 40) = *v1;
  *(v0 + 48) = v2;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  v8 = sub_26AED6B70();
  sub_26AECCAB0();
  v3 = swift_task_alloc();
  v7[17] = v3;
  *v3 = v7[7];
  v3[1] = sub_26AECC000;
  v4 = v7[12];
  v5 = v7[10];

  return (sub_26AECCAD4)(v0 + 40, v0 + 16, v4, v5, v8);
}

uint64_t sub_26AECC000()
{
  v6 = *v1;
  v6[7] = *v1;
  v6[18] = v0;

  if (v0)
  {
    v2 = v6[16];
    v3 = v6[15];
    v4 = sub_26AECC4FC;
  }

  else
  {
    (*(v6[11] + 8))(v6[12], v6[10]);
    v2 = v6[16];
    v3 = v6[15];
    v4 = sub_26AECC1A0;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_26AECC1A0()
{
  v0[7] = v0;
  v3 = v0[9];
  v5 = swift_task_alloc();
  v0[19] = v5;
  *(v5 + 16) = v3;
  v6 = MEMORY[0x277D84F78] + 8;
  sub_26AF44F48();
  v1 = swift_task_alloc();
  *(v4 + 160) = v1;
  *v1 = *(v4 + 56);
  v1[1] = sub_26AECC2E4;

  return (sub_26AF44F5C)(v7, v6, sub_26AED6BF0, v5);
}

uint64_t sub_26AECC2E4()
{
  v2 = *v1;
  *(v2 + 56) = *v1;
  v7 = v2 + 16;

  if (v0)
  {
    v3 = *(v7 + 112);
    v4 = *(v7 + 104);
    v5 = sub_26AECC670;
  }

  else
  {

    v3 = *(v7 + 112);
    v4 = *(v7 + 104);
    v5 = sub_26AECC460;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26AECC460()
{
  *(v0 + 56) = v0;

  v1 = *(*(v0 + 56) + 8);

  return v1();
}

uint64_t sub_26AECC4FC()
{
  v6 = v0[18];
  v1 = v0[12];
  v2 = v0[11];
  v3 = v0[10];
  v0[7] = v0;
  (*(v2 + 8))(v1, v3);

  v7 = v0[9];
  v9 = swift_task_alloc();
  v0[19] = v9;
  *(v9 + 16) = v7;
  v10 = MEMORY[0x277D84F78] + 8;
  sub_26AF44F48();
  v4 = swift_task_alloc();
  *(v8 + 160) = v4;
  *v4 = *(v8 + 56);
  v4[1] = sub_26AECC2E4;

  return (sub_26AF44F5C)(v11, v10, sub_26AED6BF0, v9);
}

uint64_t sub_26AECC6BC()
{
  v6 = type metadata accessor for WebPageViewCompat();
  v1 = *(*(v6 - 8) + 80);
  v7 = (v1 + 32) & ~v1;
  swift_unknownObjectRelease();

  if (*(v0 + v7 + 24))
  {
  }

  v4 = v5 + v7 + *(v6 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B078B00();
    (*(*(v2 - 8) + 8))(v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AECC874(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(type metadata accessor for WebPageViewCompat() - 8);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_26AECC988;

  return sub_26AECBD74(a1, v7, v8, v1 + v9);
}

uint64_t sub_26AECC988()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AECCAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_26AECCBC0;

  return sub_26AED2DAC(a1, a2, a4, a5);
}

uint64_t sub_26AECCBC0()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v5 = v2 + 16;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

uint64_t sub_26AECCD4C(uint64_t a1)
{
  v80 = a1;
  v77 = 0;
  v104 = 0;
  v1 = type metadata accessor for WebPageViewCompat();
  v73 = *(v1 - 8);
  v74 = v73;
  v75 = *(v73 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v76 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v77);
  v79 = v16 - v78;
  v81 = sub_26B078580();
  v82 = *(v81 - 8);
  v83 = v82;
  v84 = *(v82 + 64);
  MEMORY[0x28223BE20](v81 - 8);
  v86 = (v84 + 15) & 0xFFFFFFFFFFFFFFF0;
  v85 = v16 - v86;
  MEMORY[0x28223BE20](v16 - v86);
  v87 = v16 - v86;
  v104 = v3;
  v88 = *(v3 + 16);
  v91 = *(v3 + 24);
  v89 = v91;
  v90 = *(v3 + 32);
  sub_26AEC1EF4(v88, v91);
  if (v91)
  {
    v69 = v88;
    v70 = v89;
    v71 = v90;
    v66 = v89;
    v65 = v88;
    v93 = v88;
    v94 = v89;
    v95 = v90 & 1;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCEB0);
    MEMORY[0x26D66CBA0](&v92, v4);
    v67 = v92;

    v68 = v67;
  }

  else
  {
    v68 = 2;
  }

  v103 = v68;
  if (v68 == 2)
  {
    v64 = 0;
  }

  else
  {
    v64 = v103;
  }

  if (v64)
  {
    sub_26B078550();
    v35 = sub_26B078570();
    v32 = v35;
    v34 = sub_26B07A2B0();
    v33 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
    v36 = sub_26B07A760();
    if (os_log_type_enabled(v35, v34))
    {
      v30 = v72;
      v22 = sub_26B07A420();
      v18 = v22;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
      v20 = 0;
      v23 = sub_26AEA3B70(0);
      v21 = v23;
      v24 = sub_26AEA3B70(v20);
      v102 = v22;
      v101 = v23;
      v100 = v24;
      v25 = 0;
      v26 = &v102;
      sub_26AEA3BC4(0, &v102);
      sub_26AEA3BC4(v25, v26);
      v99[1] = v36;
      v27 = v16;
      MEMORY[0x28223BE20](v16);
      v28 = &v16[-6];
      v16[-4] = v14;
      v16[-3] = &v101;
      v16[-2] = &v100;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10);
      sub_26AE9CC18();
      v15 = v30;
      sub_26B079FF0();
      v31 = v15;
      if (v15)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_26AE88000, v32, v33, "UpdateRemoteContentView: Timeout triggered but content already resolved via geometry change. Skipping.", v18, 2u);
        v16[1] = 0;
        sub_26AEA3C24(v21);
        sub_26AEA3C24(v24);
        sub_26B07A400();

        v17 = v31;
      }
    }

    else
    {

      v17 = v72;
    }

    v16[0] = v17;

    (*(v83 + 8))(v85, v81);
    return v16[0];
  }

  else
  {
    sub_26B078550();
    v62 = sub_26B078570();
    v59 = v62;
    v61 = sub_26B07A2A0();
    v60 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
    v63 = sub_26B07A760();
    if (os_log_type_enabled(v62, v61))
    {
      v57 = v72;
      v49 = sub_26B07A420();
      v45 = v49;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
      v47 = 0;
      v50 = sub_26AEA3B70(0);
      v48 = v50;
      v51 = sub_26AEA3B70(v47);
      v99[0] = v49;
      v98 = v50;
      v97 = v51;
      v52 = 0;
      v53 = v99;
      sub_26AEA3BC4(0, v99);
      sub_26AEA3BC4(v52, v53);
      v96 = v63;
      v54 = v16;
      MEMORY[0x28223BE20](v16);
      v55 = &v16[-6];
      v16[-4] = v5;
      v16[-3] = &v98;
      v16[-2] = &v97;
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10);
      sub_26AE9CC18();
      v6 = v57;
      sub_26B079FF0();
      v58 = v6;
      if (v6)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_26AE88000, v59, v60, "UpdateRemoteContentView: webViewOnScrollGeometryChange didn't trigger within timeout, attempting JavaScript fallback", v45, 2u);
        v43 = 0;
        sub_26AEA3C24(v48);
        sub_26AEA3C24(v51);
        sub_26B07A400();

        v44 = v58;
      }
    }

    else
    {

      v44 = v72;
    }

    v41 = v44;

    (*(v83 + 8))(v87, v81);
    v39 = 0;
    v7 = sub_26B07A160();
    (*(*(v7 - 8) + 56))(v79, 1);
    sub_26AEC645C(v80, v76);
    sub_26B07A130();
    v37 = sub_26B07A120();
    v38 = (*(v74 + 80) + 32) & ~*(v74 + 80);
    v8 = swift_allocObject();
    v9 = v38;
    v10 = v8;
    v11 = v76;
    v40 = v10;
    *(v10 + 16) = v37;
    *(v10 + 24) = MEMORY[0x277D85700];
    sub_26AEC6808(v11, v10 + v9);
    sub_26AEBC0C4(v39, v39, v79, &unk_26B089320, v40, MEMORY[0x277D84F78] + 8);

    result = v41;
    v42 = v41;
  }

  return result;
}

uint64_t sub_26AECD890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v4[4] = v4;
  v4[5] = 0;
  v4[2] = 0;
  v4[3] = 0;
  v4[5] = a4;
  v4[7] = sub_26B07A130();
  v4[8] = sub_26B07A120();
  v5 = swift_task_alloc();
  *(v7 + 72) = v5;
  *v5 = *(v7 + 32);
  v5[1] = sub_26AECD978;

  return sub_26AECE224();
}

uint64_t sub_26AECD978(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v3;
  *(v6 + 32) = *v3;
  *(v6 + 80) = a1;
  *(v6 + 88) = a2;
  *(v6 + 144) = a3;

  v7 = sub_26B07A0C0();
  *(v6 + 96) = v7;
  *(v6 + 104) = v4;

  return MEMORY[0x2822009F8](sub_26AECDAE4, v7, v4);
}

uint64_t sub_26AECDAE4()
{
  v1 = *(v0 + 144);
  *(v0 + 32) = v0;
  if (v1)
  {
    v11 = v20[6];
    v12 = swift_task_alloc();
    v20[14] = v12;
    *(v12 + 16) = v11;
    v13 = MEMORY[0x277D84F78] + 8;
    sub_26AF44F48();
    v8 = swift_task_alloc();
    v3 = sub_26AED706C;
    v4 = v12;
    v9 = v8;
    v6 = v19;
    v20[15] = v9;
    *v9 = v20[4];
    v9[1] = sub_26AECDD64;
    v7 = v13;
  }

  else
  {
    v16 = v20[11];
    v15 = v20[10];
    v14 = v20[6];
    v20[2] = v15;
    v20[3] = v16;
    v17 = swift_task_alloc();
    v20[16] = v17;
    v17[2] = v14;
    v17[3] = v15;
    v17[4] = v16;
    v18 = MEMORY[0x277D84F78] + 8;
    sub_26AF44F48();
    v2 = swift_task_alloc();
    v3 = sub_26AED7094;
    v4 = v17;
    v5 = v2;
    v6 = v19;
    v20[17] = v5;
    *v5 = v20[4];
    v5[1] = sub_26AECDEE0;
    v7 = v18;
  }

  return sub_26AF44F5C(v6, v7, v3, v4);
}

uint64_t sub_26AECDD64()
{
  v2 = *v1;
  *(v2 + 32) = *v1;
  v7 = v2 + 16;

  if (v0)
  {
    v3 = *(v7 + 88);
    v4 = *(v7 + 80);
    v5 = sub_26AECE1D8;
  }

  else
  {

    v3 = *(v7 + 88);
    v4 = *(v7 + 80);
    v5 = sub_26AECE0F4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26AECDEE0()
{
  v2 = *v1;
  *(v2 + 32) = *v1;
  v7 = v2 + 16;

  if (v0)
  {
    v3 = *(v7 + 88);
    v4 = *(v7 + 80);
    v5 = sub_26AECE188;
  }

  else
  {

    v3 = *(v7 + 88);
    v4 = *(v7 + 80);
    v5 = sub_26AECE05C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26AECE05C()
{
  *(v0 + 32) = v0;

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t sub_26AECE0F4()
{
  *(v0 + 32) = v0;

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t sub_26AECE224()
{
  v1[38] = v0;
  v1[28] = v1;
  v1[29] = 0;
  v1[31] = 0;
  v1[32] = 0;
  v1[33] = 0;
  v1[34] = 0;
  v2 = sub_26B078580();
  v1[39] = v2;
  v1[40] = *(v2 - 8);
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC238);
  v1[43] = swift_task_alloc();
  v1[29] = v0;
  sub_26B07A130();
  v1[44] = sub_26B07A120();
  v5 = sub_26B07A0C0();
  v1[45] = v5;
  v1[46] = v3;

  return MEMORY[0x2822009F8](sub_26AECE3BC, v5, v3);
}

uint64_t sub_26AECE3BC()
{
  v1 = v0[38];
  v0[28] = v0;
  v13 = *(v1 + 80);
  v14 = *(v1 + 88);

  v0[22] = v13;
  v0[23] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC128);
  sub_26B0798B0();

  v15 = sub_26AEBD0B4();
  v0[47] = v15;

  if (!v15)
  {
    return sub_26B07A650();
  }

  v8 = v12[43];
  v9 = sub_26B079D00();
  v10 = v2;
  v12[48] = v2;
  v3 = sub_26B078880();
  (*(*(v3 - 8) + 56))(v8, 1);
  sub_26AED00E4();
  v11 = v4;
  v12[49] = v4;
  v5 = swift_task_alloc();
  v12[50] = v5;
  *v5 = v12[28];
  v5[1] = sub_26AECE628;
  v6 = v12[43];

  return MEMORY[0x282135AD0](v12 + 2, v9, v10, v11, v6, 0);
}

uint64_t sub_26AECE628()
{
  v7 = *v1;
  v7[28] = *v1;
  v7[51] = v0;

  if (v0)
  {
    v2 = v7[46];
    v3 = v7[45];
    v4 = sub_26AECF328;
  }

  else
  {
    v6 = v7[43];

    sub_26AED4210(v6);

    v2 = v7[46];
    v3 = v7[45];
    v4 = sub_26AECE7DC;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_26AECE7DC()
{
  v43 = v0;
  *(v0 + 224) = v0;
  sub_26AED45D0(v0 + 16, v0 + 48);
  if (*(v0 + 72))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC240);
    if (swift_dynamicCast())
    {
      v36 = *(v37 + 296);
    }

    else
    {
      v36 = 0;
    }

    v35 = v36;
  }

  else
  {
    sub_26AED4660(v37 + 48);
    v35 = 0;
  }

  if (v35)
  {
    *(v37 + 256) = v35;
    *(v37 + 192) = sub_26B079D00();
    *(v37 + 200) = v1;
    sub_26B079CC0();
    sub_26AE9BCC0();
    if (*(v37 + 136))
    {
      v2 = swift_dynamicCast();
      if (v2)
      {
        v33 = *(v37 + 288);
        v34 = 0;
      }

      else
      {
        v33 = 0.0;
        v34 = 1;
      }

      v31 = v33;
      v32 = v34;
    }

    else
    {
      sub_26AED4660(v37 + 112);
      v31 = 0.0;
      v32 = 1;
    }

    if ((v32 & 1) == 0)
    {
      *(v37 + 264) = v31;
      *(v37 + 208) = sub_26B079D00();
      *(v37 + 216) = v3;
      sub_26B079CC0();
      sub_26AE9BCC0();
      if (*(v37 + 168))
      {
        v4 = swift_dynamicCast();
        if (v4)
        {
          v29 = *(v37 + 280);
          v30 = 0;
        }

        else
        {
          v29 = 0.0;
          v30 = 1;
        }

        v27 = v29;
        v28 = v30;
      }

      else
      {
        sub_26AED4660(v37 + 144);
        v27 = 0.0;
        v28 = 1;
      }

      if ((v28 & 1) == 0)
      {
        *(v37 + 272) = v27;
        if (v31 > 0.0 && v27 > 0.0)
        {

          sub_26AED4660(v37 + 16);
          v24 = v31;
          v25 = v27;
          v26 = 0;
          goto LABEL_38;
        }
      }
    }
  }

  sub_26B078550();
  sub_26AED45D0(v37 + 16, v37 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = *(v37 + 80);
  *(v16 + 32) = *(v37 + 96);
  oslog = sub_26B078570();
  v23 = sub_26B07A2C0();
  v18 = swift_allocObject();
  *(v18 + 16) = 32;
  v19 = swift_allocObject();
  *(v19 + 16) = 8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_26AED46F0;
  *(v17 + 24) = v16;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_26AED47A0;
  *(v20 + 24) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  sub_26B07A760();
  v21 = v5;

  *v21 = sub_26AED4724;
  v21[1] = v18;

  v21[2] = sub_26AED4758;
  v21[3] = v19;

  v21[4] = sub_26AED47EC;
  v21[5] = v20;
  sub_26AEA3B2C();

  if (os_log_type_enabled(oslog, v23))
  {
    v6 = *(v37 + 408);
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v14 = sub_26AEA3B70(0);
    v15 = sub_26AEA3B70(1);
    v38 = buf;
    v39 = v14;
    v40 = v15;
    sub_26AEA3BC4(2, &v38);
    sub_26AEA3BC4(1, &v38);
    v41 = sub_26AED4724;
    v42 = v18;
    sub_26AEA3BD8(&v41, &v38, &v39, &v40);
    if (v6)
    {
    }

    v41 = sub_26AED4758;
    v42 = v19;
    sub_26AEA3BD8(&v41, &v38, &v39, &v40);
    v41 = sub_26AED47EC;
    v42 = v20;
    sub_26AEA3BD8(&v41, &v38, &v39, &v40);
    _os_log_impl(&dword_26AE88000, oslog, v23, "UpdateRemoteContentView: JavaScript returned invalid dimensions: %s", buf, 0xCu);
    sub_26AEA3C24(v14);
    sub_26AEA3C24(v15);
    sub_26B07A400();
  }

  else
  {
  }

  v11 = *(v37 + 336);
  v12 = *(v37 + 312);
  v10 = *(v37 + 320);
  v8 = MEMORY[0x277D82BD8](oslog);
  (*(v10 + 8))(v11, v12, v8);
  sub_26AED4660(v37 + 16);
  v24 = 0.0;
  v25 = 0.0;
  v26 = 1;
LABEL_38:

  v9 = *(*(v37 + 224) + 8);

  return v9(*&v24, *&v25, v26 & 1);
}

uint64_t sub_26AECF328()
{
  v29 = v0;
  v14 = v0[51];
  v13 = v0[43];
  v0[28] = v0;

  sub_26AED4210(v13);

  MEMORY[0x26D66E1D0](v14);
  v0[31] = v14;
  sub_26B078550();
  MEMORY[0x26D66E1D0](v14);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  sub_26AED0174();

  v22 = sub_26B078570();
  v23 = sub_26B07A2C0();
  v18 = swift_allocObject();
  *(v18 + 16) = 64;
  v19 = swift_allocObject();
  *(v19 + 16) = 8;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_26AED42F8;
  *(v16 + 24) = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_26AED43A8;
  *(v17 + 24) = v16;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_26AED43F4;
  *(v20 + 24) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  sub_26B07A760();
  v21 = v1;

  *v21 = sub_26AED432C;
  v21[1] = v18;

  v21[2] = sub_26AED4360;
  v21[3] = v19;

  v21[4] = sub_26AED45C4;
  v21[5] = v20;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v22, v23))
  {
    buf = sub_26B07A420();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v10 = sub_26AEA3B70(1);
    v11 = sub_26AEA3B70(0);
    v24 = buf;
    v25 = v10;
    v26 = v11;
    sub_26AEA3BC4(2, &v24);
    sub_26AEA3BC4(1, &v24);
    v27 = sub_26AED432C;
    v28 = v18;
    sub_26AEA3BD8(&v27, &v24, &v25, &v26);
    v27 = sub_26AED4360;
    v28 = v19;
    sub_26AEA3BD8(&v27, &v24, &v25, &v26);
    v27 = sub_26AED45C4;
    v28 = v20;
    sub_26AEA3BD8(&v27, &v24, &v25, &v26);
    _os_log_impl(&dword_26AE88000, v22, v23, "UpdateRemoteContentView: JavaScript measurement failed with error: %@", buf, 0xCu);
    sub_26AEA3C24(v10);
    sub_26AEA3C24(v11);
    sub_26B07A400();
  }

  else
  {
  }

  v8 = v12[51];
  v6 = v12[41];
  v7 = v12[39];
  v5 = v12[40];
  v2 = MEMORY[0x277D82BD8](v22);
  (*(v5 + 8))(v6, v7, v2);

  v3 = *(v12[28] + 8);

  return v3(0, 0, 1);
}

uint64_t sub_26AECFA24(uint64_t a1)
{
  v23 = a1;
  v30 = 0;
  v38 = 0;
  v24 = sub_26B078580();
  v25 = *(v24 - 8);
  v26 = v25;
  MEMORY[0x28223BE20](v23);
  v27 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v2;
  sub_26B078550();
  v32 = sub_26B078570();
  v28 = v32;
  v31 = sub_26B07A2C0();
  v29 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  v33 = sub_26B07A760();
  if (os_log_type_enabled(v32, v31))
  {
    v20 = v22;
    v12 = sub_26B07A420();
    v8 = v12;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v10 = 0;
    v13 = sub_26AEA3B70(0);
    v11 = v13;
    v14 = sub_26AEA3B70(v10);
    v37 = v12;
    v36 = v13;
    v35 = v14;
    v15 = 0;
    v16 = &v37;
    sub_26AEA3BC4(0, &v37);
    sub_26AEA3BC4(v15, v16);
    v34 = v33;
    v17 = v6;
    MEMORY[0x28223BE20](v6);
    v18 = &v6[-6];
    v6[-4] = v3;
    v6[-3] = &v36;
    v6[-2] = &v35;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10);
    sub_26AE9CC18();
    v4 = v20;
    sub_26B079FF0();
    v21 = v4;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_26AE88000, v28, v29, "UpdateRemoteContentView: JavaScript fallback failed, applying static fallback dimensions", v8, 2u);
      v6[1] = 0;
      sub_26AEA3C24(v11);
      sub_26AEA3C24(v14);
      sub_26B07A400();

      v7 = v21;
    }
  }

  else
  {

    v7 = v22;
  }

  v6[0] = v7;

  (*(v26 + 8))(v27, v24);
  return sub_26AECFDA0();
}

uint64_t sub_26AECFDA0()
{
  v25 = *(v0 + 40);
  if (*(v0 + 48))
  {
    if (*(v0 + 48) == 1)
    {
      v18 = [objc_opt_self() mainScreen];
      [v18 bounds];
      v19 = v1;
      v20 = v2;
      v21 = v3;
      v22 = v4;
      MEMORY[0x277D82BD8](v18);
      v23 = sub_26AEBCA9C(v19, v20, v21, v22) * v25;
    }

    else if (v25 == 0.0)
    {
      v23 = 200.0;
    }

    else
    {
      *&v5 = COERCE_DOUBLE(sub_26AEBC708(*(v24 + 40), *(v24 + 48)));
      if (v6)
      {
        *&v17 = 200.0;
      }

      else
      {
        v17 = v5;
      }

      v23 = *&v17;
    }
  }

  else
  {
    v23 = *(v0 + 40);
  }

  v12 = [objc_opt_self() mainScreen];
  [v12 bounds];
  v13 = v7;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  MEMORY[0x277D82BD8](v12);
  sub_26AED1554(v13, v14, v15, v16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC120);
  sub_26B0798B0();

  sub_26AED3568();
  sub_26B07A800();
  return sub_26AEC8444(2u, v26, v23);
}

uint64_t sub_26AED0104(uint64_t a1)
{
  sub_26AED45D0(a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC298);
  return sub_26B079E60();
}

uint64_t sub_26AED0208()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC120);
  sub_26B0798B0();

  type metadata accessor for CGSize();
  return sub_26B079E60();
}

uint64_t sub_26AED02C4()
{
  v6 = type metadata accessor for WebPageViewCompat();
  v1 = *(*(v6 - 8) + 80);
  v7 = (v1 + 16) & ~v1;

  if (*(v0 + v7 + 24))
  {
  }

  v4 = v5 + v7 + *(v6 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B078B00();
    (*(*(v2 - 8) + 8))(v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AED0470()
{
  type metadata accessor for WebPageViewCompat();

  return sub_26AED0208();
}

uint64_t sub_26AED0504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 145) = a5;
  *(v5 + 48) = a4;
  *(v5 + 32) = v5;
  *(v5 + 40) = 0;
  *(v5 + 144) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 40) = a4;
  *(v5 + 144) = a5;
  *(v5 + 56) = sub_26B07A130();
  *(v5 + 64) = sub_26B07A120();
  v6 = swift_task_alloc();
  *(v8 + 72) = v6;
  *v6 = *(v8 + 32);
  v6[1] = sub_26AED05FC;

  return sub_26AECE224();
}

uint64_t sub_26AED05FC(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v3;
  *(v6 + 32) = *v3;
  *(v6 + 80) = a1;
  *(v6 + 88) = a2;
  *(v6 + 146) = a3;

  v7 = sub_26B07A0C0();
  *(v6 + 96) = v7;
  *(v6 + 104) = v4;

  return MEMORY[0x2822009F8](sub_26AED0768, v7, v4);
}

uint64_t sub_26AED0768()
{
  v1 = *(v0 + 146);
  *(v0 + 32) = v0;
  if (v1)
  {
    v11 = *(v21 + 145);
    v12 = *(v21 + 48);
    v13 = swift_task_alloc();
    *(v21 + 112) = v13;
    *(v13 + 16) = v11;
    *(v13 + 24) = v12;
    v14 = MEMORY[0x277D84F78] + 8;
    sub_26AF44F48();
    v8 = swift_task_alloc();
    v3 = sub_26AED63F0;
    v4 = v13;
    v9 = v8;
    v6 = v20;
    *(v21 + 120) = v9;
    *v9 = *(v21 + 32);
    v9[1] = sub_26AED0A04;
    v7 = v14;
  }

  else
  {
    v17 = *(v21 + 88);
    v16 = *(v21 + 80);
    v15 = *(v21 + 48);
    *(v21 + 16) = v16;
    *(v21 + 24) = v17;
    v18 = swift_task_alloc();
    *(v21 + 128) = v18;
    v18[2] = v15;
    v18[3] = v16;
    v18[4] = v17;
    v19 = MEMORY[0x277D84F78] + 8;
    sub_26AF44F48();
    v2 = swift_task_alloc();
    v3 = sub_26AED641C;
    v4 = v18;
    v5 = v2;
    v6 = v20;
    *(v21 + 136) = v5;
    *v5 = *(v21 + 32);
    v5[1] = sub_26AED0B80;
    v7 = v19;
  }

  return sub_26AF44F5C(v6, v7, v3, v4);
}

uint64_t sub_26AED0A04()
{
  v2 = *v1;
  *(v2 + 32) = *v1;
  v7 = v2 + 16;

  if (v0)
  {
    v3 = *(v7 + 88);
    v4 = *(v7 + 80);
    v5 = sub_26AED0E94;
  }

  else
  {

    v3 = *(v7 + 88);
    v4 = *(v7 + 80);
    v5 = sub_26AED0DA0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26AED0B80()
{
  v2 = *v1;
  *(v2 + 32) = *v1;
  v7 = v2 + 16;

  if (v0)
  {
    v3 = *(v7 + 88);
    v4 = *(v7 + 80);
    v5 = sub_26AED0E40;
  }

  else
  {

    v3 = *(v7 + 88);
    v4 = *(v7 + 80);
    v5 = sub_26AED0CFC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26AED0CFC()
{
  *(v0 + 32) = v0;

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t sub_26AED0DA0()
{
  *(v0 + 32) = v0;

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t sub_26AED0F38(unsigned int a1, uint64_t a2)
{
  v37 = a1;
  v31 = a2;
  v39 = sub_26AED6478;
  v43 = sub_26AED6528;
  v45 = sub_26AED64AC;
  v47 = sub_26AED64E0;
  v50 = sub_26AED6574;
  v62 = 0;
  v61 = 0;
  v32 = sub_26B078580();
  v33 = *(v32 - 8);
  v34 = v32 - 8;
  v35 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37);
  v36 = &v18 - v35;
  v62 = v2;
  v61 = v3;
  sub_26B078550();
  v38 = 17;
  v41 = 7;
  v42 = swift_allocObject();
  *(v42 + 16) = v37;
  v54 = sub_26B078570();
  v55 = sub_26B07A2C0();
  v46 = swift_allocObject();
  *(v46 + 16) = 32;
  v48 = swift_allocObject();
  *(v48 + 16) = 8;
  v40 = 32;
  v4 = swift_allocObject();
  v5 = v42;
  v44 = v4;
  *(v4 + 16) = v39;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v44;
  v51 = v6;
  *(v6 + 16) = v43;
  *(v6 + 24) = v7;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00);
  v49 = sub_26B07A760();
  v52 = v8;

  v9 = v46;
  v10 = v52;
  *v52 = v45;
  v10[1] = v9;

  v11 = v48;
  v12 = v52;
  v52[2] = v47;
  v12[3] = v11;

  v13 = v51;
  v14 = v52;
  v52[4] = v50;
  v14[5] = v13;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v54, v55))
  {
    v23 = sub_26B07A420();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0);
    v24 = sub_26AEA3B70(0);
    v25 = sub_26AEA3B70(1);
    v26 = &v60;
    v60 = v23;
    v27 = &v59;
    v59 = v24;
    v28 = &v58;
    v58 = v25;
    sub_26AEA3BC4(2, &v60);
    sub_26AEA3BC4(1, v26);
    v15 = v30;
    v56 = v45;
    v57 = v46;
    sub_26AEA3BD8(&v56, v26, v27, v28);
    v29 = v15;
    if (v15)
    {

      __break(1u);
    }

    else
    {
      v56 = v47;
      v57 = v48;
      sub_26AEA3BD8(&v56, &v60, &v59, &v58);
      v20 = 0;
      v56 = v50;
      v57 = v51;
      sub_26AEA3BD8(&v56, &v60, &v59, &v58);
      v19 = 0;
      _os_log_impl(&dword_26AE88000, v54, v55, "UpdateRemoteContentView: %s re-calculation failed, falling back to static", v23, 0xCu);
      sub_26AEA3C24(v24);
      sub_26AEA3C24(v25);
      sub_26B07A400();

      v21 = v19;
    }
  }

  else
  {

    v21 = v30;
  }

  v18 = v21;
  v16 = MEMORY[0x277D82BD8](v54);
  (*(v33 + 8))(v36, v32, v16);
  return sub_26AECFDA0();
}

void *sub_26AED15C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, const void *a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  v9 = sub_26AEC1F48();
  *(a9 + 56) = v10;
  *(a9 + 64) = v11;
  *(a9 + 72) = v9;
  type metadata accessor for WebPageViewCompatModel();
  sub_26AEBF76C();
  *(a9 + 80) = sub_26AEC226C();
  *(a9 + 88) = v12;
  v13 = type metadata accessor for WebPageViewCompat();
  return sub_26AED6240(a8, (a9 + *(v13 + 36)));
}

uint64_t sub_26AED16D8()
{
  v2 = *v0;
  sub_26AE96194(*v0, *(v0 + 8), *(v0 + 16) & 1);
  return v2;
}

uint64_t sub_26AED1748(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_26AED1778()
{
  v2 = *(v0 + 40);
  sub_26AEC1EF4(v2, *(v0 + 48));
  return v2;
}

uint64_t sub_26AED17C4(uint64_t a1, uint64_t a2, char a3)
{
  sub_26AEC1EF4(a1, a2);
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  *(v3 + 56) = a3;
  sub_26AED4828(v4, v5);
  return sub_26AED4828(a1, a2);
}

uint64_t UpdateRemoteContentView.init(html:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memset(__b, 0, 0x39uLL);
  __b[3] = 0;
  LOBYTE(__b[4]) = 2;
  memset(&__b[5], 0, 17);
  sub_26B078640();
  __b[0] = a1;
  __b[1] = a2;
  LOBYTE(__b[2]) = 0;
  sub_26AEBBFD0(__b, a3);

  return sub_26AE96494(__b);
}

uint64_t UpdateRemoteContentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v27 = 0;
  v26 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC130);
  v7 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v20 = &v6 - v7;
  v22 = type metadata accessor for WebPageViewCompat();
  v8 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v24 = &v6 - v8;
  v9 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v6 - v8);
  v25 = &v6 - v9;
  v27 = &v6 - v9;
  v11 = *v1;
  v12 = *(v1 + 8);
  v10 = *(v1 + 16);
  v18 = *(v1 + 24);
  v19 = *(v1 + 32);
  v15 = *(v1 + 40);
  v16 = *(v1 + 48);
  v17 = *(v1 + 56);
  v26 = v1;
  sub_26AE96194(v11, v12, v10 & 1);
  v13 = sub_26AED1B30(v11, v12, v10 & 1);
  v14 = v4;
  sub_26AE963D0(v11, v12, v10 & 1);
  sub_26AEC1EF4(v15, v16);
  sub_26AED1594();
  sub_26AED15C8(v13, v14, v15, v16, v17, v18, v19, v20, v24);
  v23 = sub_26AED4870();
  sub_26AE9463C(v24, v22, v25);
  sub_26AED48F0(v24);
  sub_26AEC645C(v25, v24);
  sub_26AE94B4C(v24, v22, v21);
  sub_26AED48F0(v24);
  return sub_26AED48F0(v25);
}

uint64_t sub_26AED1B30(uint64_t a1, unint64_t a2, int a3)
{
  v32 = a1;
  v31 = a2;
  v30 = a3;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v39 = 0;
  v40 = 0;
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v36 = 0;
  v33 = (*(*(sub_26B079E30() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32);
  v34 = &v10 - v33;
  v41 = v3;
  v42 = v4;
  v43 = v5 & 1;
  if (v5)
  {
    v26 = v32;
    v27 = v31;
    v17 = v31;
    v16 = v32;
    sub_26AE961DC(v32, v31);
    v39 = v16;
    v40 = v17;
    sub_26B079E20();
    v18 = sub_26B079E10();
    v19 = v7;
    if (v7)
    {
      v14 = v18;
      v15 = v19;
      v11 = v19;
      v10 = v18;
      v37 = v18;
      v38 = v19;
      sub_26AEE4324();
      v12 = sub_26AEE4380(v10, v11);
      v13 = v8;

      sub_26AE96418(v16, v17);
      v24 = v12;
      v25 = v13;
    }

    else
    {
      sub_26AE96418(v16, v17);
      v24 = 0;
      v25 = 0;
    }
  }

  else
  {
    v28 = v32;
    v29 = v31;
    v21 = v31;
    v20 = v32;
    sub_26B078640();
    v35 = v20;
    v36 = v21;
    sub_26AEE4324();
    v22 = sub_26AEE4380(v20, v21);
    v23 = v6;

    v24 = v22;
    v25 = v23;
  }

  return v24;
}

void *UpdateRemoteContentView.reportLoading(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v14 = 0;
  memset(__b, 0, 0x39uLL);
  v15 = a1;
  v16 = a2;
  v17 = a3;
  memcpy(__dst, v4, 0x39uLL);
  v14 = v4;
  sub_26AEBBFD0(__dst, v12);
  memcpy(__b, __dst, 0x39uLL);
  sub_26AEC1EF4(a1, a2);
  if (a2)
  {

    v5 = __b[5];
    v6 = __b[6];
    __b[5] = a1;
    __b[6] = a2;
    LOBYTE(__b[7]) = a3 & 1;
    sub_26AED4828(v5, v6);
  }

  return memcpy(a4, __b, 0x39uLL);
}

void *UpdateRemoteContentView.fitContent()@<X0>(void *a1@<X8>)
{
  v6 = 0;
  memset(__b, 0, 0x39uLL);
  memcpy(__dst, v1, 0x39uLL);
  v6 = v1;
  sub_26AEBBFD0(__dst, v4);
  memcpy(__b, __dst, 0x39uLL);
  __b[3] = 0;
  LOBYTE(__b[4]) = 2;
  return memcpy(a1, __b, 0x39uLL);
}

void *UpdateRemoteContentView.maxHeight(_:)@<X0>(void *a1@<X8>, double a2@<D0>)
{
  v8 = 0;
  memset(__b, 0, 0x39uLL);
  v9 = a2;
  memcpy(__dst, v2, 0x39uLL);
  v8 = v2;
  sub_26AEBBFD0(__dst, v6);
  memcpy(__b, __dst, 0x39uLL);
  *&__b[3] = a2;
  LOBYTE(__b[4]) = 0;
  return memcpy(a1, __b, 0x39uLL);
}

void *UpdateRemoteContentView.adaptiveHeight()@<X0>(void *a1@<X8>)
{
  v6 = 0;
  memset(__b, 0, 0x39uLL);
  memcpy(__dst, v1, 0x39uLL);
  v6 = v1;
  sub_26AEBBFD0(__dst, v4);
  memcpy(__b, __dst, 0x39uLL);
  __b[3] = 1;
  LOBYTE(__b[4]) = 2;
  return memcpy(a1, __b, 0x39uLL);
}

void *UpdateRemoteContentView.heightFraction(_:)@<X0>(void *a1@<X8>, double a2@<D0>)
{
  v8 = 0;
  memset(__b, 0, 0x39uLL);
  v9 = a2;
  memcpy(__dst, v2, 0x39uLL);
  v8 = v2;
  sub_26AEBBFD0(__dst, v6);
  memcpy(__b, __dst, 0x39uLL);
  *&__b[3] = a2;
  LOBYTE(__b[4]) = 1;
  return memcpy(a1, __b, 0x39uLL);
}

uint64_t sub_26AED21FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4[1] = 0;
  v12 = sub_26B078B00();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v11 = v4 - v5;
  v15 = sub_26B078D30();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v15);
  v16 = v4 - v7;
  (*(v13 + 16))(v4 - v7, v2);
  sub_26B078CE0();
  (*(v8 + 32))(v10, v11, v12);
  return (*(v13 + 8))(v16, v15);
}

uint64_t sub_26AED238C(uint64_t a1)
{
  v4 = a1;
  v1 = sub_26B078B00();
  v6 = *(v1 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v1);
  v7 = &v4 - v5;
  (*(v6 + 16))(v2);
  return sub_26B078CF0();
}

uint64_t sub_26AED2444(uint64_t a1)
{
  sub_26B078640();
  if (a1 > 15)
  {
    sub_26B07A570();
  }

  return 0;
}

uint64_t sub_26AED24BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (!a1)
  {
    sub_26B07A650();
    __break(1u);
  }

  v5 = *a2;
  v6 = a2[1];

  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v5;
  v7[4] = v6;
  result = swift_task_create();
  *a4 = result;
  return result;
}

uint64_t sub_26AED267C(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC2A8);
    v1 = sub_26B07A080();
    sub_26B078640();
    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

void sub_26AED2734(uint64_t a1)
{
  if (sub_26AED2930(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC2A0);
    v12 = sub_26B07A680();
  }

  else
  {
    v11 = MEMORY[0x277D84F98];

    v12 = v11;
  }

  v10 = sub_26AED2948(a1);
  if (v10)
  {
    if (v10 <= 0)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; ; ++i)
      {
        v1 = sub_26AED2950();
        sub_26AED295C(i, v1 & 1, a1, &v14);
        v8 = sub_26AED29F0(v14, v15);
        if (v2)
        {
          break;
        }

        v12[v8 / 0x40 + 8] |= 1 << ((v8 % 0x40) & 0x3F);
        v3 = (v12[6] + 16 * v8);
        v4 = v15;
        *v3 = v14;
        v3[1] = v4;
        sub_26AED6314(&v16, v12[7] + 32 * v8);
        v5 = v12[2];
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_18;
        }

        v12[2] = v7;
        if (i + 1 == v10)
        {

          return;
        }
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
  }
}

void *sub_26AED295C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a2)
  {
    return sub_26AED6330((a3 + 32 + 48 * a1), a4);
  }

  result = sub_26AED2A74(a1, a3);
  __break(1u);
  return result;
}

unint64_t sub_26AED29F0(uint64_t a1, uint64_t a2)
{
  sub_26B07A8E0();
  memcpy(__dst, v7, sizeof(__dst));
  sub_26B079EF0();
  v2 = sub_26B07A910();
  return sub_26AED2C70(a1, a2, v2);
}

uint64_t sub_26AED2A74(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= *(a2 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x20 + 8 * result);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC2A8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_26AED2444(82);
    v2 = sub_26B079D00();
    MEMORY[0x26D66D100](v2);

    v3 = sub_26B079D00();
    MEMORY[0x26D66D100](v3);

    v4 = sub_26B079D00();
    MEMORY[0x26D66D100](v4);

    swift_getObjectType();
    v5 = sub_26B07AA00();
    MEMORY[0x26D66D100](v5);

    sub_26B078640();
    sub_26B079EB0();
    sub_26B07A670();
    __break(1u);
  }

  sub_26AED63B8(v7);
  return v6;
}

unint64_t sub_26AED2C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = (1 << (*(v3 + 32) & 0x3F)) - 1;
  for (i = a3 & v13; (*(v12 + 64 + 8 * (i / 0x40)) & (1 << ((i % 0x40) & 0x3F))) != 0; i = (i + 1) & v13)
  {
    v4 = (*(v12 + 48) + 16 * i);
    v7 = *v4;
    v8 = v4[1];
    sub_26B078640();
    v9 = MEMORY[0x26D66D0C0](v7, v8, a1, a2);

    if (v9)
    {
      return i;
    }
  }

  return i;
}

uint64_t sub_26AED2DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = v4;
  v5[6] = a4;
  v5[5] = a3;
  v5[4] = a2;
  v5[3] = a1;
  v5[2] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[8] = AssociatedTypeWitness;
  v5[9] = *(AssociatedTypeWitness - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26AED2ED8, 0, 0);
}

uint64_t sub_26AED2ED8()
{
  v9 = v0[10];
  v8 = v0[9];
  v10 = v0[8];
  v0[2] = v0;
  sub_26B07A840();
  swift_getAssociatedConformanceWitness();
  sub_26B07A600();
  v1 = *(v8 + 8);
  v0[12] = v1;
  v0[13] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v1(v9, v10);
  v2 = swift_task_alloc();
  v11[14] = v2;
  *v2 = v11[2];
  v2[1] = sub_26AED3040;
  v3 = v11[11];
  v4 = v11[6];
  v5 = v11[5];
  v6 = v11[4];

  return MEMORY[0x2822008C8](v3, v6, v5, v4);
}

uint64_t sub_26AED3040()
{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 120) = v0;

  if (v0)
  {
    (*(v4 + 96))(*(v4 + 88), *(v4 + 64));

    return MEMORY[0x2822009F8](sub_26AED3210, 0, 0);
  }

  else
  {
    (*(v4 + 96))();

    v2 = *(*(v4 + 16) + 8);

    return v2();
  }
}

uint64_t sub_26AED3210()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_26AED32B8(void (*a1)(void))
{
  a1();
  v2 = _swift_stdlib_bridgeErrorToNSError();
  MEMORY[0x277D82BE0](v2);
  swift_unknownObjectRelease();
  return v2;
}

unint64_t sub_26AED3568()
{
  v2 = qword_2803DC230;
  if (!qword_2803DC230)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC230);
    return WitnessTable;
  }

  return v2;
}

void *sub_26AED3728(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  v5 = *a1;
  sub_26B07A450();
  result = a1;
  *a1 = v5 + 8;
  return result;
}

uint64_t sub_26AED3CAC()
{
  v6 = type metadata accessor for WebPageViewCompat();
  v1 = *(*(v6 - 8) + 80);
  v7 = (v1 + 32) & ~v1;
  swift_unknownObjectRelease();

  if (*(v0 + v7 + 24))
  {
  }

  v4 = v5 + v7 + *(v6 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B078B00();
    (*(*(v2 - 8) + 8))(v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AED3E6C(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v5 = *(type metadata accessor for WebPageViewCompat() - 8);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = *(v1 + v9 + *(v5 + 64));
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  *v3 = *(v6 + 16);
  v3[1] = sub_26AED3FB4;

  return sub_26AED0504(a1, v7, v8, v1 + v9, v10);
}

uint64_t sub_26AED3FB4()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AED4210(uint64_t a1)
{
  v3 = sub_26B078880();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_26AED42F8()
{
  result = *(v0 + 16);
  sub_26AED014C();
  return result;
}

void sub_26AED4400(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = a4();
  v7 = *a1;
  MEMORY[0x277D82BE0](v8);
  sub_26B07A450();
  if (v8)
  {
    MEMORY[0x277D82BD8](v8);
  }

  *a1 = v7 + 8;
  v4 = *a2;
  if (*a2)
  {
    MEMORY[0x277D82BE0](v8);
    *v4 = v8;
    MEMORY[0x277D82BD8](v8);
    *a2 = v4 + 1;
  }

  else
  {
    MEMORY[0x277D82BD8](v8);
  }
}

uint64_t sub_26AED45D0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 24);
    *(a2 + 24) = v2;
    (**(v2 - 8))();
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  return a2;
}

uint64_t sub_26AED4660(uint64_t a1)
{
  if (*(a1 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return a1;
}

uint64_t sub_26AED469C()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 16);
  }

  return swift_deallocObject();
}

uint64_t sub_26AED4828(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_26AED4870()
{
  v2 = qword_2803DC248;
  if (!qword_2803DC248)
  {
    type metadata accessor for WebPageViewCompat();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC248);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AED48F0(uint64_t a1)
{

  if (*(a1 + 24))
  {
  }

  v3 = a1 + *(type metadata accessor for WebPageViewCompat() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078B00();
    (*(*(v1 - 8) + 8))(v3);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_26AED4A30(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFD && *(a1 + 9))
    {
      v4 = *a1 + 253;
    }

    else
    {
      v2 = 255 - *(a1 + 8);
      if (v2 >= 0xFD)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26AED4B54(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = result;
  v4 = (result + 9);
  if (a2 > 0xFD)
  {
    result = 0;
    *(v3 + 8) = 0;
    *v3 = a2 - 254;
    if (a3 >= 0xFE)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_26AED4D08(uint64_t a1)
{
  if (*(a1 + 8) < 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return *a1 + 2;
  }
}

uint64_t sub_26AED4D24(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = a2;
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 2;
  }

  return result;
}

uint64_t sub_26AED4D88(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFC)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 3) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 252;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 4;
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

_BYTE *sub_26AED4EF0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFC)
  {
    v5 = ((a3 + 3) >> 8) + 1;
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

  if (a2 > 0xFC)
  {
    v4 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_26AED5130()
{
  updated = sub_26AED5298();
  if (v0 <= 0x3F)
  {
    updated = sub_26B078360();
    if (v1 <= 0x3F)
    {
      updated = swift_updateClassMetadata2();
      if (!updated)
      {
        return 0;
      }
    }
  }

  return updated;
}

uint64_t sub_26AED5298()
{
  v4 = qword_2803DC260;
  if (!qword_2803DC260)
  {
    sub_26B0781B0();
    v3 = sub_26B07A430();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_2803DC260);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_26AED5370(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*(a1 + 80) < 0x100000000uLL)
    {
      v6 = *(a1 + 80);
    }

    return (v6 + 1);
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC130);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(a1 + *(a3 + 36), a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

uint64_t sub_26AED54BC(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 80) = a2 - 1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC130);
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(v4 + *(a4 + 36), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_26AED55B8()
{
  v6 = sub_26AED5738();
  if (v0 <= 0x3F)
  {
    v6 = sub_26AED57CC();
    if (v1 <= 0x3F)
    {
      v6 = sub_26AED5870();
      if (v2 <= 0x3F)
      {
        v6 = sub_26AED590C();
        if (v3 <= 0x3F)
        {
          v6 = sub_26AED59A8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v6;
}

uint64_t sub_26AED5738()
{
  v4 = qword_2803DC278;
  if (!qword_2803DC278)
  {
    v3 = sub_26B07A430();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_2803DC278);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_26AED57CC()
{
  v4 = qword_2803DC280;
  if (!qword_2803DC280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DCEB0);
    v3 = sub_26B07A430();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_2803DC280);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_26AED5870()
{
  v4 = qword_2803DC288;
  if (!qword_2803DC288)
  {
    type metadata accessor for CGSize();
    v3 = sub_26B0798E0();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_2803DC288);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_26AED590C()
{
  v4 = qword_2803DC290;
  if (!qword_2803DC290)
  {
    type metadata accessor for WebPageViewCompatModel();
    v3 = sub_26B0798E0();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_2803DC290);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_26AED59A8()
{
  v4 = qword_2803DD620;
  if (!qword_2803DD620)
  {
    sub_26B078B00();
    v3 = sub_26B078A20();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_2803DD620);
      return v1;
    }
  }

  return v4;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(void *a1)
{
  if ((HIBYTE(a1[1]) >> 6) < 3u)
  {
    return HIBYTE(a1[1]) >> 6;
  }

  else
  {
    return *a1 + 3;
  }
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI7BindingVySbGSg(uint64_t a1)
{
  v2 = -1;
  if (!HIDWORD(*(a1 + 8)))
  {
    v2 = *(a1 + 8);
  }

  return (v2 + 1);
}

uint64_t sub_26AED5BBC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 57))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (!HIDWORD(*(a1 + 48)))
      {
        v4 = *(a1 + 48);
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26AED5CEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 57);
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_26AED5ED4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v2 = *(a1 + 16) ^ 0xFF;
      if (v2 >= 0xFE)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26AED5FCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 17);
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    *(result + 16) = 0;
    if (a3 >= 0xFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void *sub_26AED6240(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B078B00();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  return a2;
}

__n128 sub_26AED6314(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

void *sub_26AED6330(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];
  sub_26B078640();
  a2[1] = v4;
  v2 = a1[5];
  a2[5] = v2;
  (**(v2 - 8))((a2 + 2), (a1 + 2));
  return a2;
}

uint64_t sub_26AED63B8(uint64_t a1)
{

  __swift_destroy_boxed_opaque_existential_0(a1 + 16);
  return a1;
}

void *sub_26AED6580(const void *a1, void *a2)
{
  v6 = sub_26B07A160();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_26AED66F0(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AED67E4;

  return sub_26AF7F720(a1, v6);
}

uint64_t sub_26AED67E4()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AED6954(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AED6A48;

  return sub_26AF7F720(a1, v6);
}

uint64_t sub_26AED6A48()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

unint64_t sub_26AED6B70()
{
  v2 = qword_2803DC2B0;
  if (!qword_2803DC2B0)
  {
    sub_26B07A5F0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC2B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AED6C48()
{
  v6 = type metadata accessor for WebPageViewCompat();
  v1 = *(*(v6 - 8) + 80);
  v7 = (v1 + 32) & ~v1;
  swift_unknownObjectRelease();

  if (*(v0 + v7 + 24))
  {
  }

  v4 = v5 + v7 + *(v6 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B078B00();
    (*(*(v2 - 8) + 8))(v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AED6E00(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(type metadata accessor for WebPageViewCompat() - 8);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_26AED6F14;

  return sub_26AECD890(a1, v7, v8, v1 + v9);
}

uint64_t sub_26AED6F14()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

unint64_t sub_26AED71F4()
{
  v2 = qword_2803DC2C0;
  if (!qword_2803DC2C0)
  {
    sub_26B0790B0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DC2C0);
    return WitnessTable;
  }

  return v2;
}

void *sub_26AED7274(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

void *sub_26AED72AC(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_26AED72E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 96) = v3;
  *(v4 + 88) = a3;
  *(v4 + 80) = a2;
  *(v4 + 72) = a1;
  *(v4 + 48) = v4;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  v7 = *(a2 - 8);
  *(v4 + 104) = v7;
  *(v4 + 112) = *(v7 + 64);
  *(v4 + 120) = swift_task_alloc();
  v5 = sub_26B078580();
  *(v4 + 128) = v5;
  *(v4 + 136) = *(v5 - 8);
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 56) = a1;
  *(v4 + 64) = v3;

  return MEMORY[0x2822009F8](sub_26AED7474, 0, 0);
}

uint64_t sub_26AED7474()
{
  v6 = v0[12];
  v4 = v0[11];
  v3 = v0[10];
  v5 = v0[9];
  v0[6] = v0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC2C8);

  v8 = swift_task_alloc();
  v0[19] = v8;
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v5;
  v8[5] = v6;
  sub_26AEDBAC0(v9, &unk_287B92C18);
  v1 = swift_task_alloc();
  *(v7 + 160) = v1;
  *v1 = *(v7 + 48);
  v1[1] = sub_26AED75F4;

  return MEMORY[0x282200600](v7 + 16, v9);
}

uint64_t sub_26AED75F4()
{
  *(*v0 + 48) = *v0;

  return MEMORY[0x2822009F8](sub_26AED774C, 0, 0);
}