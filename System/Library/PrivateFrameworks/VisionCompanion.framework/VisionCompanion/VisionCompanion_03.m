uint64_t sub_2330CFB0C()
{
  v12 = v0;
  if (qword_2814EB0D0 != -1)
  {
    swift_once();
  }

  if (qword_2814EB0D8)
  {
    v1 = qword_2814EB0D8;
    v2 = sub_2330F25C0();
    v3 = [v1 BOOLForKey_];
  }

  else
  {
    if (qword_2814EAD68 != -1)
    {
      swift_once();
    }

    v4 = sub_2330F23C0();
    __swift_project_value_buffer(v4, qword_2814EBD50);
    v5 = sub_2330F23A0();
    v6 = sub_2330F2980();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v11 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_233098F44(0xD000000000000015, 0x80000002330F6040, &v11);
      _os_log_impl(&dword_233084000, v5, v6, "%s error fetching the daemon user defaults.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x23839A490](v8, -1, -1);
      MEMORY[0x23839A490](v7, -1, -1);
    }

    v3 = 0;
  }

  v9 = *(v0 + 8);

  return v9(v3);
}

uint64_t sub_2330CFD30()
{
  v20 = v0;
  v1 = sub_2330F25C0();
  v2 = sub_2330F25C0();
  v3 = [objc_opt_self() bagForProfile:v1 profileVersion:v2];
  v0[2] = v3;

  v4 = sub_2330F25C0();
  v5 = [v3 BOOLForKey_];
  v0[3] = v5;

  if (qword_2814EADB8 != -1)
  {
    swift_once();
  }

  v6 = sub_2330F23C0();
  __swift_project_value_buffer(v6, qword_2814EBDF8);
  v7 = v5;
  v8 = sub_2330F23A0();
  v9 = sub_2330F2980();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_233098F44(0xD000000000000015, 0x80000002330F6040, &v19);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v7;
    v13 = v7;
    _os_log_impl(&dword_233084000, v8, v9, "%s isSupportedStorefront: %@", v10, 0x16u);
    sub_2330952BC(v11, &unk_27DDDE520, &qword_2330F4340);
    MEMORY[0x23839A490](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x23839A490](v12, -1, -1);
    MEMORY[0x23839A490](v10, -1, -1);
  }

  v14 = swift_task_alloc();
  v0[4] = v14;
  *(v14 + 16) = v7;
  v15 = *(MEMORY[0x277D85A40] + 4);
  v16 = swift_task_alloc();
  v0[5] = v16;
  *v16 = v0;
  v16[1] = sub_2330D0050;
  v17 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 7, 0, 0, 0xD000000000000017, 0x80000002330F8500, sub_2330D02AC, v14, v17);
}

uint64_t sub_2330D0050()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_2330D01D8;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_2330D016C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2330D016C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 56);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2330D01D8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  v3 = *(v0 + 8);
  v4 = *(v0 + 48);

  return v3(0);
}

unint64_t sub_2330D0250()
{
  result = qword_2814EB090;
  if (!qword_2814EB090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814EB090);
  }

  return result;
}

void sub_2330D02B4(void *a1, uint64_t a2, void *a3)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE2F0, &qword_2330F60D0) - 8) + 80);

  sub_2330CDB60(a1, a2, a3);
}

uint64_t sub_2330D0374()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2330A8008;

  return sub_2330C9258(v0);
}

uint64_t sub_2330D0404()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2330A89E0;

  return sub_2330C98B8(v2);
}

uint64_t sub_2330D04B0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_233088E00;

  return sub_2330C99A0(a1, v5);
}

uint64_t sub_2330D0568()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2330877C8;

  return sub_2330C9B9C(v0);
}

uint64_t sub_2330D05F8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2330877C8;

  return sub_2330CA010(v0);
}

uint64_t sub_2330D06AC(char a1, char a2)
{
  if (*&aB_0[8 * a1] == *&aB_0[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_2330F2DC0();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

VisionCompanion::JoeColorType_optional __swiftcall JoeColorType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2330F2D10();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2330D0794()
{
  v1 = *v0;
  sub_2330F2E80();
  v2 = *&aB_0[8 * v1];
  sub_2330F26A0();

  return sub_2330F2EB0();
}

uint64_t sub_2330D07F0()
{
  v1 = *&aB_0[8 * *v0];
  sub_2330F26A0();
}

uint64_t sub_2330D0830()
{
  v1 = *v0;
  sub_2330F2E80();
  v2 = *&aB_0[8 * v1];
  sub_2330F26A0();

  return sub_2330F2EB0();
}

unint64_t sub_2330D08CC()
{
  result = qword_27DDDE300;
  if (!qword_27DDDE300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE300);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JoeColorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JoeColorType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RawColor(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RawColor(uint64_t result, int a2, int a3)
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

uint64_t sub_2330D0AE0()
{
  responseFlags[30] = *MEMORY[0x277D85DE8];
  v0 = sub_2330F25C0();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  if (!v1)
  {
    if (qword_2814EAD68 != -1)
    {
      swift_once();
    }

    v38 = sub_2330F23C0();
    __swift_project_value_buffer(v38, qword_2814EBD50);
    v39 = sub_2330F23A0();
    v40 = sub_2330F2980();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v63[0] = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_233098F44(0x6974557472656C41, 0xEE0073656974696CLL, v63);
      _os_log_impl(&dword_233084000, v39, v40, "%s Error loading the VisionCompanion bundle.", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x23839A490](v42, -1, -1);
      MEMORY[0x23839A490](v41, -1, -1);
    }

    goto LABEL_41;
  }

  v2 = sub_2330F1CD0();
  v61 = v3;
  v4 = sub_2330F1CD0();
  v6 = v5;
  v7 = sub_2330F1CD0();
  v9 = v8;
  v60 = v1;
  v10 = sub_2330F1CD0();
  v12 = v11;
  v59 = sub_2330B36F8(&unk_284869650);
  sub_2330D1434(&unk_284869670);
  v13 = sub_2330F25C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE310, &qword_2330F62E0);
  result = swift_initStackObject();
  *(result + 16) = xmmword_2330F62C0;
  v15 = *MEMORY[0x277CBF188];
  if (!*MEMORY[0x277CBF188])
  {
    __break(1u);
    goto LABEL_44;
  }

  v16 = result;
  v17 = MEMORY[0x277D837D0];
  *(result + 64) = MEMORY[0x277D837D0];
  *(result + 32) = v15;
  *(result + 40) = v2;
  *(result + 48) = v61;
  v18 = *MEMORY[0x277CBF198];
  if (!*MEMORY[0x277CBF198])
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  *(result + 104) = v17;
  *(result + 72) = v18;
  *(result + 80) = v4;
  *(result + 88) = v6;
  v19 = *MEMORY[0x277CBF1E8];
  if (!*MEMORY[0x277CBF1E8])
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  *(result + 144) = v17;
  *(result + 112) = v19;
  *(result + 120) = v7;
  *(result + 128) = v9;
  v20 = *MEMORY[0x277CBF1C0];
  if (*MEMORY[0x277CBF1C0])
  {
    *(result + 152) = v20;
    *(result + 160) = v10;
    *(result + 168) = v12;
    *(result + 184) = v17;
    *(result + 192) = v13;
    *(result + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE318, &qword_2330F62E8);
    *(v16 + 200) = v59;
    v21 = v15;
    v22 = v18;
    v23 = v19;
    v24 = v20;
    v25 = v13;
    sub_2330B380C(v16);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE100, &qword_2330F52F0);
    swift_arrayDestroy();
    if (qword_2814EAD68 != -1)
    {
      swift_once();
    }

    v26 = sub_2330F23C0();
    __swift_project_value_buffer(v26, qword_2814EBD50);
    v27 = sub_2330F23A0();
    v28 = sub_2330F2980();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v63[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_233098F44(0x6974557472656C41, 0xEE0073656974696CLL, v63);
      _os_log_impl(&dword_233084000, v27, v28, "%s presenting china SKU permission alert", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x23839A490](v30, -1, -1);
      MEMORY[0x23839A490](v29, -1, -1);
    }

    error = 0;
    type metadata accessor for CFString(0);
    sub_2330D149C();
    v31 = sub_2330F2520();

    v32 = CFUserNotificationCreate(0, 0.0, 0x23uLL, &error, v31);

    if (!v32)
    {
      v43 = sub_2330F23A0();
      v44 = sub_2330F2960();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        responseFlags[0] = v46;
        *v45 = 136315394;
        *(v45 + 4) = sub_233098F44(0x6974557472656C41, 0xEE0073656974696CLL, responseFlags);
        *(v45 + 12) = 1024;
        swift_beginAccess();
        *(v45 + 14) = error;
        _os_log_impl(&dword_233084000, v43, v44, "%s Failed to create user notification. Error: %d", v45, 0x12u);
        __swift_destroy_boxed_opaque_existential_1Tm(v46);
        MEMORY[0x23839A490](v46, -1, -1);
        MEMORY[0x23839A490](v45, -1, -1);
      }

      goto LABEL_40;
    }

    responseFlags[0] = 0;
    v33 = v32;
    CFUserNotificationReceiveResponse(v33, 0.0, responseFlags);
    if (responseFlags[0] > 1)
    {
      if (responseFlags[0] == 2)
      {
        v34 = sub_2330F23A0();
        v35 = sub_2330F2960();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          v37 = "User selected other/third button";
          goto LABEL_36;
        }

LABEL_38:

        CFUserNotificationCancel(v33);
LABEL_39:

LABEL_40:
LABEL_41:
        result = 0;
LABEL_42:
        v58 = *MEMORY[0x277D85DE8];
        return result;
      }

      if (responseFlags[0] == 3)
      {

        v47 = sub_2330F23A0();
        v48 = sub_2330F2940();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          _os_log_impl(&dword_233084000, v47, v48, "User dismissed alert without selection", v49, 2u);
          MEMORY[0x23839A490](v49, -1, -1);
        }

        goto LABEL_39;
      }
    }

    else
    {
      if (!responseFlags[0])
      {
        v55 = sub_2330F23A0();
        v56 = sub_2330F2940();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&dword_233084000, v55, v56, "User selected OK button", v57, 2u);
          MEMORY[0x23839A490](v57, -1, -1);
        }

        CFUserNotificationCancel(v33);
        result = 1;
        goto LABEL_42;
      }

      if (responseFlags[0] == 1)
      {
        v34 = sub_2330F23A0();
        v35 = sub_2330F2940();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          v37 = "User selected Cancel button";
LABEL_36:
          v51 = v35;
          v52 = v34;
          v53 = v36;
          v54 = 2;
          goto LABEL_37;
        }

        goto LABEL_38;
      }
    }

    v34 = sub_2330F23A0();
    v50 = sub_2330F2960();
    if (os_log_type_enabled(v34, v50))
    {
      v36 = swift_slowAlloc();
      *v36 = 134217984;
      swift_beginAccess();
      *(v36 + 4) = responseFlags[0];
      v37 = "Unexpected response flag [%lu]";
      v51 = v50;
      v52 = v34;
      v53 = v36;
      v54 = 12;
LABEL_37:
      _os_log_impl(&dword_233084000, v52, v51, v37, v53, v54);
      MEMORY[0x23839A490](v36, -1, -1);
      goto LABEL_38;
    }

    goto LABEL_38;
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_2330D1434(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE308, &qword_2330F62D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2330D149C()
{
  result = qword_27DDDDCF0;
  if (!qword_27DDDDCF0)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDDCF0);
  }

  return result;
}

VisionCompanion::Daemon __swiftcall Daemon.init()()
{
  v1 = v0;
  result.servers._rawValue = sub_2330D3434();
  v1->servers._rawValue = result.servers._rawValue;
  return result;
}

uint64_t sub_2330D1540()
{
  if (qword_2814EAD88 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_2330F23C0();
  __swift_project_value_buffer(v2, qword_2814EBD98);
  sub_2330C0140(0xD000000000000050, 0x80000002330F86A0, 0x6574617669746361, 0xEA00000000002928);
  v3 = *(v1 + 16);
  v0[8] = v3;
  if (v3)
  {
    v4 = v0[7];
    v0[9] = 0;
    sub_233094AE0(v4 + 32, (v0 + 2));
    v5 = v0[5];
    v6 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
    v7 = *(v6 + 8);
    v12 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[10] = v9;
    *v9 = v0;
    v9[1] = sub_2330D1738;

    return v12(v5, v6);
  }

  else
  {
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_2330D1738()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v4 = *v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));

  return MEMORY[0x2822009F8](sub_2330D183C, 0, 0);
}

uint64_t sub_2330D183C()
{
  v1 = v0[9] + 1;
  if (v1 == v0[8])
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[9] = v1;
    sub_233094AE0(v0[7] + 40 * v1 + 32, (v0 + 2));
    v4 = v0[5];
    v5 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
    v6 = *(v5 + 8);
    v9 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_2330D1738;

    return v9(v4, v5);
  }
}

Swift::Void __swiftcall Daemon.bootstrapSandbox()()
{
  v0 = sub_2330F2800();
  *(v0 + 16) = 1024;
  bzero((v0 + 32), 0x400uLL);

  sub_2330F2220();
  sub_2330F2670();

  v1 = _set_user_dir_suffix();

  if (!v1)
  {
    v7 = MEMORY[0x2383991E0](v2);
    if (strerror(v7))
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_16;
  }

  v3 = *(v0 + 16);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v0 = sub_233098D44(0, *(v0 + 16), 0, v0);
  }

  if (!confstr(65537, (v0 + 32), v3))
  {
LABEL_16:
    v8 = MEMORY[0x2383991E0]();
    if (strerror(v8))
    {
      v22 = sub_2330F26E0();
      v24 = v23;
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_2330F2C00();
      MEMORY[0x2383994D0](0xD000000000000034, 0x80000002330F8780);
      v25 = sub_2330F2220();
      MEMORY[0x2383994D0](v25);

      v26 = MEMORY[0x2383994D0](10272, 0xE200000000000000);
      LODWORD(v45) = MEMORY[0x2383991E0](v26);
      v27 = sub_2330F2D80();
      MEMORY[0x2383994D0](v27);

      MEMORY[0x2383994D0](2112041, 0xE300000000000000);
      MEMORY[0x2383994D0](v22, v24);
      v28 = qword_2814EAD88;

      if (v28 != -1)
      {
        swift_once();
      }

      v29 = sub_2330F23C0();
      __swift_project_value_buffer(v29, qword_2814EBD98);

      v18 = sub_2330F23A0();
      v30 = sub_2330F2960();

      if (os_log_type_enabled(v18, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v45 = v32;
        *v31 = 136446210;
        *(v31 + 4) = sub_233098F44(0, 0xE000000000000000, &v45);
        _os_log_impl(&dword_233084000, v18, v30, "Sandbox bootstrap error: %{public}s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        MEMORY[0x23839A490](v32, -1, -1);
        MEMORY[0x23839A490](v31, -1, -1);
      }

      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (!mkdir((v0 + 32), 0x2BCu) && MEMORY[0x2383991E0]() != 17)
  {
LABEL_18:
    v9 = MEMORY[0x2383991E0]();
    if (strerror(v9))
    {
      v33 = sub_2330F26E0();
      v35 = v34;
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_2330F2C00();
      MEMORY[0x2383994D0](0xD000000000000029, 0x80000002330F8750);
      v36 = sub_2330F2220();
      MEMORY[0x2383994D0](v36);

      v37 = MEMORY[0x2383994D0](10272, 0xE200000000000000);
      LODWORD(v45) = MEMORY[0x2383991E0](v37);
      v38 = sub_2330F2D80();
      MEMORY[0x2383994D0](v38);

      MEMORY[0x2383994D0](2112041, 0xE300000000000000);
      MEMORY[0x2383994D0](v33, v35);
      v39 = qword_2814EAD88;

      if (v39 != -1)
      {
        swift_once();
      }

      v40 = sub_2330F23C0();
      __swift_project_value_buffer(v40, qword_2814EBD98);

      v18 = sub_2330F23A0();
      v41 = sub_2330F2960();

      if (os_log_type_enabled(v18, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v45 = v43;
        *v42 = 136446210;
        *(v42 + 4) = sub_233098F44(0, 0xE000000000000000, &v45);
        _os_log_impl(&dword_233084000, v18, v41, "Sandbox bootstrap error: %{public}s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v43);
        MEMORY[0x23839A490](v43, -1, -1);
        MEMORY[0x23839A490](v42, -1, -1);
      }

      goto LABEL_34;
    }

    __break(1u);
LABEL_20:
    v10 = sub_2330F26E0();
    v12 = v11;
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_2330F2C00();
    MEMORY[0x2383994D0](0xD00000000000002DLL, 0x80000002330F8700);
    v13 = sub_2330F2220();
    MEMORY[0x2383994D0](v13);

    v14 = MEMORY[0x2383994D0](10272, 0xE200000000000000);
    LODWORD(v45) = MEMORY[0x2383991E0](v14);
    v15 = sub_2330F2D80();
    MEMORY[0x2383994D0](v15);

    MEMORY[0x2383994D0](2112041, 0xE300000000000000);
    MEMORY[0x2383994D0](v10, v12);
    v16 = qword_2814EAD88;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_2330F23C0();
    __swift_project_value_buffer(v17, qword_2814EBD98);

    v18 = sub_2330F23A0();
    v19 = sub_2330F2960();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v45 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_233098F44(0, 0xE000000000000000, &v45);
      _os_log_impl(&dword_233084000, v18, v19, "Sandbox bootstrap error: %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x23839A490](v21, -1, -1);
      MEMORY[0x23839A490](v20, -1, -1);
    }

LABEL_34:

    sub_2330F2CA0();
    __break(1u);
    return;
  }

  if (qword_2814EAD88 != -1)
  {
    swift_once();
  }

  v4 = sub_2330F23C0();
  __swift_project_value_buffer(v4, qword_2814EBD98);
  oslog = sub_2330F23A0();
  v5 = sub_2330F2980();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_233084000, oslog, v5, "Sandbox bootstrapped successfully", v6, 2u);
    MEMORY[0x23839A490](v6, -1, -1);
  }
}

id sub_2330D21A0()
{
  v0 = sub_2330F24F0();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Dependencies();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2330B3BC0(MEMORY[0x277D84F90]);
  v59 = &type metadata for AppConfigServer;
  v60 = &off_28486C868;
  v57 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDE70, &qword_2330F43A0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE328, &qword_2330F6338);
  v65 = sub_2330D389C(&qword_2814EB258, &qword_27DDDE328, &qword_2330F6338);
  v63[0] = swift_allocObject();
  sub_233094AE0(&v57, v63[0] + 16);
  swift_beginAccess();
  swift_retain_n();
  sub_2330D70E4(v63, v6);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(&v57);
  v59 = &type metadata for AppInstallationServer;
  v60 = &off_28486B4E0;
  v57 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDE00, &qword_2330F42A0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE330, &qword_2330F6340);
  v65 = sub_2330D389C(&qword_2814EB210, &qword_27DDDE330, &qword_2330F6340);
  v63[0] = swift_allocObject();
  sub_233094AE0(&v57, v63[0] + 16);
  swift_beginAccess();
  swift_retain_n();
  sub_2330D70E4(v63, v7);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(&v57);
  v59 = &type metadata for DeviceServer;
  v60 = &off_28486A6B0;
  v57 = v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDDB0, &qword_2330F4240);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE338, &qword_2330F6348);
  v65 = sub_2330D389C(&qword_2814EB268, &qword_27DDDE338, &qword_2330F6348);
  v63[0] = swift_allocObject();
  sub_233094AE0(&v57, v63[0] + 16);
  swift_beginAccess();
  swift_retain_n();
  sub_2330D70E4(v63, v8);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(&v57);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE340, &qword_2330F6350);
  v60 = sub_2330D389C(&qword_2814EB280, &qword_27DDDE340, &qword_2330F6350);
  v57 = v5;
  swift_beginAccess();
  swift_retain_n();
  sub_2330D70E4(&v57, &type metadata for ExampleServer);
  swift_endAccess();
  sub_233099620(0, &qword_2814EAC60, 0x277D85C78);

  sub_2330F24C0();
  v9 = sub_2330B045C(v4, 0xD000000000000063, 0x80000002330F87C0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE348, &qword_2330F6358);
  v60 = sub_2330D389C(&qword_2814EB278, &qword_27DDDE348, &qword_2330F6358);
  v57 = v5;
  v58 = v9;
  swift_beginAccess();

  v55 = v9;
  sub_2330D70E4(&v57, &type metadata for LaunchEventServer);
  swift_endAccess();
  v10 = type metadata accessor for PushNotificationServer();
  v11 = objc_allocWithZone(v10);

  v13 = sub_2330EC734(v12);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE350, &qword_2330F6360);
  v60 = sub_2330D389C(&qword_2814EB260, &qword_27DDDE350, &qword_2330F6360);
  v57 = v13;
  swift_beginAccess();
  v54 = v13;
  sub_2330D70E4(&v57, v10);
  v59 = &type metadata for SoftwareUpdateServer;
  v60 = &off_28486B108;
  v57 = v5;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDD90, &qword_2330F4210);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE358, &qword_2330F6368);
  v65 = sub_2330D389C(&qword_2814EB218, &qword_27DDDE358, &qword_2330F6368);
  v63[0] = swift_allocObject();
  sub_233094AE0(&v57, v63[0] + 16);
  swift_retain_n();
  sub_2330D70E4(v63, v14);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(&v57);
  v15 = type metadata accessor for XPCServer();
  v16 = [objc_allocWithZone(v15) init];
  v59 = v15;
  v17 = sub_2330D371C(&qword_2814EADD8, type metadata accessor for XPCServer);
  v60 = v17;
  v18 = sub_2330D371C(qword_2814EADE0, type metadata accessor for XPCServer);
  v61 = v18;
  v57 = v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDE40, &qword_2330F4370);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE360, &qword_2330F6370);
  v65 = sub_2330D389C(qword_2814EB2A0, &qword_27DDDE360, &qword_2330F6370);
  v63[0] = swift_allocObject();
  sub_2330D3764(&v57, v63[0] + 16);
  swift_beginAccess();
  v20 = v16;
  sub_2330D70E4(v63, v19);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(&v57);
  v60 = &off_28486BCC0;
  v61 = v17;
  v62 = v18;
  v59 = v15;
  v57 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDE60, &qword_2330F4390);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE368, &qword_2330F6378);
  v65 = sub_2330D389C(&qword_2814EB288, &qword_27DDDE368, &qword_2330F6378);
  v63[0] = swift_allocObject();
  sub_2330D37C8(&v57, v63[0] + 16);
  swift_beginAccess();
  v22 = v20;
  sub_2330D70E4(v63, v21);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(&v57);
  v59 = &type metadata for ApplicationCoordinator;
  v60 = &off_28486C818;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDDF0, &qword_2330F4290);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE370, &qword_2330F6380);
  v65 = sub_2330D389C(&qword_2814EB250, &qword_27DDDE370, &qword_2330F6380);
  v63[0] = swift_allocObject();
  sub_233094AE0(&v57, v63[0] + 16);
  swift_beginAccess();
  sub_2330D70E4(v63, v23);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(&v57);
  v24 = type metadata accessor for AppInstallationObserver();
  v25 = swift_allocObject();
  swift_defaultActor_initialize();
  v25[14] = MEMORY[0x277D84F98];
  v56.receiver = v25;
  v56.super_class = v24;
  v26 = objc_msgSendSuper2(&v56, sel_init);
  v27 = objc_opt_self();
  v28 = v26;
  result = [v27 defaultWorkspace];
  if (result)
  {
    v30 = result;
    [result addObserver_];

    v59 = v24;
    v60 = &off_28486BAB8;
    v57 = v28;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDDC0, &qword_2330F4260);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE378, &qword_2330F6388);
    v65 = sub_2330D389C(&qword_2814EB240, &qword_27DDDE378, &qword_2330F6388);
    v63[0] = swift_allocObject();
    sub_233094AE0(&v57, v63[0] + 16);
    swift_beginAccess();
    sub_2330D70E4(v63, v31);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(&v57);
    v32 = sub_233099620(0, &unk_2814EAC48, 0x277CEC4B8);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDDC8, &qword_2330F4268);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE380, &qword_2330F6390);
    v60 = sub_2330D389C(&qword_2814EB290, &qword_27DDDE380, &qword_2330F6390);
    v57 = v32;
    v58 = &off_28486C700;
    swift_beginAccess();
    sub_2330D70E4(&v57, v33);
    v59 = &type metadata for AuthKitCoordinator;
    v60 = &off_28486A258;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDDE0, &qword_2330F4280);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE388, &qword_2330F6398);
    v65 = sub_2330D389C(&qword_2814EB270, &qword_27DDDE388, &qword_2330F6398);
    v63[0] = swift_allocObject();
    sub_233094AE0(&v57, v63[0] + 16);
    sub_2330D70E4(v63, v34);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(&v57);
    type metadata accessor for CloudKitAccountCoordinator();
    swift_allocObject();
    v35 = CloudKitAccountCoordinator.init()();
    v36 = sub_2330D371C(&qword_2814EAFA0, type metadata accessor for CloudKitAccountCoordinator);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDDD0, &qword_2330F4270);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE390, &qword_2330F63A0);
    v60 = sub_2330D389C(&qword_2814EB220, &qword_27DDDE390, &qword_2330F63A0);
    v57 = v35;
    v58 = v36;
    swift_beginAccess();

    sub_2330D70E4(&v57, v37);
    swift_endAccess();

    v59 = &type metadata for DeviceCloudKitCoordinator;
    v60 = &off_284869F80;
    type metadata accessor for AsyncLock();
    v38 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v38 + 112) = 0;
    v57 = v38;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDDA0, &qword_2330F4230);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE398, &qword_2330F63A8);
    v65 = sub_2330D389C(&qword_2814EB228, &qword_27DDDE398, &qword_2330F63A8);
    v63[0] = swift_allocObject();
    sub_233094AE0(&v57, v63[0] + 16);
    swift_beginAccess();
    sub_2330D70E4(v63, v39);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(&v57);
    v59 = &type metadata for UserCloudKitCoordinator;
    v60 = &off_28486C478;
    v40 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v40 + 112) = 0;
    v57 = v40;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDE30, &qword_2330F4360);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE3A0, &qword_2330F63B0);
    v65 = sub_2330D389C(&qword_2814EB238, &qword_27DDDE3A0, &qword_2330F63B0);
    v63[0] = swift_allocObject();
    sub_233094AE0(&v57, v63[0] + 16);
    swift_beginAccess();
    sub_2330D70E4(v63, v41);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(&v57);
    v59 = &type metadata for MobileGestaltCoordinator;
    v60 = &off_28486C640;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDD68, &qword_2330F41F0);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE3A8, &qword_2330F63B8);
    v65 = sub_2330D389C(&qword_2814EB230, &qword_27DDDE3A8, &qword_2330F63B8);
    v63[0] = swift_allocObject();
    sub_233094AE0(&v57, v63[0] + 16);
    swift_beginAccess();
    sub_2330D70E4(v63, v42);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(&v57);
    v43 = [objc_opt_self() sharedSubscriber];
    v59 = sub_233099620(0, &qword_2814EAC40, 0x277CB8FC0);
    v60 = &off_28486AB60;
    v57 = v43;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDE20, &qword_2330F4350);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE3B0, &qword_2330F63C0);
    v65 = sub_2330D389C(&qword_2814EB248, &qword_27DDDE3B0, &qword_2330F63C0);
    v63[0] = swift_allocObject();
    sub_233094AE0(&v57, v63[0] + 16);
    swift_beginAccess();
    sub_2330D70E4(v63, v44);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(&v57);
    v45 = [objc_opt_self() sharedScheduler];
    v59 = sub_233099620(0, &qword_2814EAC18, 0x277CF0810);
    v60 = sub_2330D3834();
    v57 = v45;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDE10, &qword_2330F4318);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE3B8, &qword_2330F63C8);
    v65 = sub_2330D389C(&qword_2814EB208, &qword_27DDDE3B8, &qword_2330F63C8);
    v63[0] = swift_allocObject();
    sub_233094AE0(&v57, v63[0] + 16);
    swift_beginAccess();
    sub_2330D70E4(v63, v46);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(&v57);
    sub_2330F2230();
    v47 = objc_allocWithZone(MEMORY[0x277CE2028]);
    v48 = sub_2330F25C0();

    v49 = [v47 initWithBundleIdentifier_];

    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE3C0, &qword_2330F63D0);
    v60 = sub_2330D389C(&qword_2814EB200, &qword_27DDDE3C0, &qword_2330F63D0);
    v57 = v49;
    swift_beginAccess();
    v50 = v49;
    sub_2330D70E4(&v57, &type metadata for TetsuoNotificationCoordinator);
    swift_endAccess();

    LOBYTE(v48) = sub_2330F2390();
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE3C8, &qword_2330F63D8);
    v60 = sub_2330D389C(&qword_2814EB298, &qword_27DDDE3C8, &qword_2330F63D8);
    LOBYTE(v57) = v48 & 1;
    swift_beginAccess();
    sub_2330D70E4(&v57, MEMORY[0x277D784B8]);
    swift_endAccess();
    v51 = [objc_opt_self() standardUserDefaults];
    v52 = sub_233099620(0, &qword_2814EAC88, 0x277CBEBD0);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE3D0, &qword_2330F63E0);
    v60 = sub_2330D389C(&qword_2814EB1F8, &qword_27DDDE3D0, &qword_2330F63E0);
    v57 = v51;
    swift_beginAccess();
    v53 = v51;
    sub_2330D70E4(&v57, v52);
    swift_endAccess();

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2330D3434()
{
  sub_2330D21A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE320, &qword_2330F6330);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2330F62F0;
  sub_2330939BC(v34);
  v1 = v35;
  v2 = v36;
  v3 = __swift_project_boxed_opaque_existential_1(v34, v35);
  *(v0 + 56) = v1;
  *(v0 + 64) = *(v2 + 8);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v0 + 32));
  (*(*(v1 - 8) + 16))(boxed_opaque_existential_0Tm, v3, v1);
  sub_2330924B0(v31);
  v5 = v32;
  v6 = v33;
  v7 = __swift_project_boxed_opaque_existential_1(v31, v32);
  *(v0 + 96) = v5;
  *(v0 + 104) = *(v6 + 8);
  v8 = __swift_allocate_boxed_opaque_existential_0Tm((v0 + 72));
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  sub_2330921FC(v28);
  v9 = v29;
  v10 = v30;
  v11 = __swift_project_boxed_opaque_existential_1(v28, v29);
  *(v0 + 136) = v9;
  *(v0 + 144) = *(v10 + 8);
  v12 = __swift_allocate_boxed_opaque_existential_0Tm((v0 + 112));
  (*(*(v9 - 8) + 16))(v12, v11, v9);
  *(v0 + 176) = &type metadata for ExampleServer;
  *(v0 + 184) = &off_28486B8C8;
  *(v0 + 152) = sub_233093744();
  sub_233092764(v25);
  v13 = v26;
  v14 = v27;
  v15 = __swift_project_boxed_opaque_existential_1(v25, v26);
  *(v0 + 216) = v13;
  *(v0 + 224) = *(v14 + 8);
  v16 = __swift_allocate_boxed_opaque_existential_0Tm((v0 + 192));
  (*(*(v13 - 8) + 16))(v16, v15, v13);
  *(v0 + 256) = &type metadata for LaunchEventServer;
  *(v0 + 264) = &off_284869B08;
  *(v0 + 232) = sub_2330934C8();
  *(v0 + 240) = v17;
  *(v0 + 296) = type metadata accessor for PushNotificationServer();
  *(v0 + 304) = &off_28486C888;
  *(v0 + 272) = sub_233092CCC();
  sub_233093210(v23);
  v22 = v24;
  v18 = v24;
  v19 = __swift_project_boxed_opaque_existential_1(v23, v24);
  *(v0 + 336) = v22;
  v20 = __swift_allocate_boxed_opaque_existential_0Tm((v0 + 312));
  (*(*(v18 - 8) + 16))(v20, v19, v18);

  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  return v0;
}

uint64_t sub_2330D371C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2330D3764(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2330D37C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2330D3834()
{
  result = qword_2814EAC20;
  if (!qword_2814EAC20)
  {
    sub_233099620(255, &qword_2814EAC18, 0x277CF0810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814EAC20);
  }

  return result;
}

uint64_t sub_2330D389C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2330D3910()
{
  v1 = *(v0 + 64);
  sub_233092A18((v0 + 16));
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v4 = *(MEMORY[0x277D78418] + 4);

  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_2330D3A04;
  v6 = *(v0 + 64);

  return MEMORY[0x2821DF758](101, &unk_2330F6410, v6, v2, v3);
}

uint64_t sub_2330D3A04()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2330D3B1C, 0, 0);
}

uint64_t sub_2330D3B1C()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_2330F6420;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  v0[10] = v5;
  *(v5 + 16) = &unk_2330F6430;
  *(v5 + 24) = v4;
  v6 = *(MEMORY[0x277D78400] + 4);

  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_2330D3C74;
  v8 = MEMORY[0x277D83B88];
  v9 = MEMORY[0x277D784D0];

  return MEMORY[0x2821DF740](102, &unk_2330F6440, v5, v2, v8, v3, v9);
}

uint64_t sub_2330D3C74()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2330D3D8C, 0, 0);
}

uint64_t sub_2330D3D8C()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = swift_allocObject();
  v0[12] = v4;
  *(v4 + 16) = &unk_2330F6450;
  *(v4 + 24) = v1;
  v5 = *(MEMORY[0x277D78400] + 4);

  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_2330D3EB8;
  v7 = MEMORY[0x277D83B88];
  v8 = MEMORY[0x277D784D0];

  return MEMORY[0x2821DF740](103, &unk_2330F6458, v4, v2, v7, v3, v8);
}

uint64_t sub_2330D3EB8()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2330D3FD0, 0, 0);
}

uint64_t sub_2330D3FD0()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = swift_allocObject();
  v0[14] = v4;
  *(v4 + 16) = &unk_2330F6468;
  *(v4 + 24) = v1;
  v5 = *(MEMORY[0x277D78410] + 4);

  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_2330D40FC;
  v7 = MEMORY[0x277D83B88];
  v8 = MEMORY[0x277D784D0];

  return MEMORY[0x2821DF750](104, &unk_2330F6478, v4, v2, v7, v3, v8);
}

uint64_t sub_2330D40FC()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2330D4214, 0, 0);
}

uint64_t sub_2330D4214()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_2330F6488;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  v0[16] = v5;
  *(v5 + 16) = &unk_2330F6498;
  *(v5 + 24) = v4;
  v6 = *(MEMORY[0x277D783F8] + 4);

  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_2330D4378;
  v8 = MEMORY[0x277D83B88];
  v9 = MEMORY[0x277D83B88];

  return MEMORY[0x2821DF738](105, &unk_2330F64A8, v5, v2, v8, v9, v3);
}

uint64_t sub_2330D4378()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2330D4490, 0, 0);
}

uint64_t sub_2330D4490()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = swift_allocObject();
  v0[18] = v4;
  *(v4 + 16) = &unk_2330F64B8;
  *(v4 + 24) = v1;
  v5 = *(MEMORY[0x277D783F8] + 4);

  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_2330D45C8;
  v7 = MEMORY[0x277D83B88];
  v8 = MEMORY[0x277D83B88];

  return MEMORY[0x2821DF738](106, &unk_2330F64C0, v4, v2, v7, v8, v3);
}

uint64_t sub_2330D45C8()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2330D46E0, 0, 0);
}

uint64_t sub_2330D46E0()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = swift_allocObject();
  v0[20] = v4;
  *(v4 + 16) = &unk_2330F64D0;
  *(v4 + 24) = v1;
  v5 = *(MEMORY[0x277D78408] + 4);

  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_2330D480C;
  v7 = MEMORY[0x277D83B88];
  v8 = MEMORY[0x277D784D0];

  return MEMORY[0x2821DF748](107, &unk_2330F64E0, v4, v2, v7, v3, v8);
}

uint64_t sub_2330D480C()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2330D4924, 0, 0);
}

uint64_t sub_2330D4924()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_2330F64F0;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  v0[22] = v5;
  *(v5 + 16) = &unk_2330F6500;
  *(v5 + 24) = v4;
  v6 = *(MEMORY[0x277D783F0] + 4);

  v7 = swift_task_alloc();
  v0[23] = v7;
  *v7 = v0;
  v7[1] = sub_2330D4A88;
  v8 = MEMORY[0x277D83B88];
  v9 = MEMORY[0x277D83B88];

  return MEMORY[0x2821DF730](108, &unk_2330F6510, v5, v2, v8, v9, v3);
}

uint64_t sub_2330D4A88()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2330D4BA0, 0, 0);
}

uint64_t sub_2330D4BA0()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = swift_allocObject();
  v0[24] = v4;
  *(v4 + 16) = &unk_2330F6520;
  *(v4 + 24) = v1;
  v5 = *(MEMORY[0x277D783F0] + 4);

  v6 = swift_task_alloc();
  v0[25] = v6;
  *v6 = v0;
  v6[1] = sub_2330D4CD8;
  v7 = MEMORY[0x277D83B88];
  v8 = MEMORY[0x277D83B88];

  return MEMORY[0x2821DF730](109, &unk_2330F6528, v4, v2, v7, v8, v3);
}

uint64_t sub_2330D4CD8()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23308D118, 0, 0);
}

uint64_t sub_2330D4E0C()
{
  if (qword_2814EAD90 != -1)
  {
    swift_once();
  }

  v1 = sub_2330F23C0();
  __swift_project_value_buffer(v1, qword_2814EBDB0);
  sub_2330C0140(0xD00000000000005FLL, 0x80000002330F8830, 0x6F566F5464696F76, 0xEC00000029286469);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2330D4F04()
{
  if (qword_2814EAD90 != -1)
  {
    swift_once();
  }

  v1 = sub_2330F23C0();
  __swift_project_value_buffer(v1, qword_2814EBDB0);
  sub_2330C0140(0xD00000000000005FLL, 0x80000002330F8830, 0x61566F5464696F76, 0xED0000292865756CLL);
  v2 = *(v0 + 8);

  return v2(7);
}

uint64_t sub_2330D4FE8(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2330D6FE8;

  return v5();
}

uint64_t sub_2330D50D0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2330D6FE0;

  return v6();
}

uint64_t sub_2330D51D8()
{
  if (qword_2814EAD90 != -1)
  {
    swift_once();
  }

  v1 = sub_2330F23C0();
  __swift_project_value_buffer(v1, qword_2814EBDB0);
  sub_2330C0140(0xD00000000000005FLL, 0x80000002330F8830, 0xD000000000000010, 0x80000002330F8910);
  v2 = *(v0 + 8);

  return v2(21, 0);
}

uint64_t sub_2330D52C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_233088E00;

  return sub_2330D6C0C(a1);
}

uint64_t sub_2330D5354(uint64_t *a1, int *a2)
{
  v3 = *a1;
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_233088E00;

  return v7(v3);
}

uint64_t sub_2330D5468()
{
  if (qword_2814EAD90 != -1)
  {
    swift_once();
  }

  v1 = sub_2330F23C0();
  __swift_project_value_buffer(v1, qword_2814EBDB0);
  sub_2330C0140(0xD00000000000005FLL, 0x80000002330F8830, 0xD000000000000014, 0x80000002330F88F0);
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);

  return v2(v3);
}

uint64_t sub_2330D554C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2330D5640;

  return v7(a1);
}

uint64_t sub_2330D5640(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v9 = *v2;

  v7 = *(v9 + 8);
  if (!v1)
  {
    v5 = a1;
    v6 = 0;
  }

  return v7(v5, v6);
}

uint64_t sub_2330D5744(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_2330D583C;

  return v8(v4);
}

uint64_t sub_2330D583C(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (!v2)
  {
    v9 = *(v6 + 16);
    *v9 = a1;
    *(v9 + 8) = a2 & 1;
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_2330D5980()
{
  if (qword_2814EAD90 != -1)
  {
    swift_once();
  }

  v1 = sub_2330F23C0();
  __swift_project_value_buffer(v1, qword_2814EBDB0);
  sub_2330C0140(0xD00000000000005FLL, 0x80000002330F8830, 0xD000000000000017, 0x80000002330F88D0);
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);

  return v2(v3, 0);
}

uint64_t sub_2330D5A68(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2330877C8;

  return sub_2330D6DBC(a1, a2 & 1);
}

uint64_t sub_2330D5B04(uint64_t *a1, int *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v8 = (a2 + *a2);
  v5 = a2[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_233088E00;

  return v8(v3, v4);
}

uint64_t sub_2330D5C04(uint64_t a1, char a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return MEMORY[0x2822009F8](sub_2330D5C28, 0, 0);
}

uint64_t sub_2330D5C28()
{
  if (qword_2814EAD90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = sub_2330F23C0();
  __swift_project_value_buffer(v3, qword_2814EBDB0);
  sub_2330C0140(0xD00000000000005FLL, 0x80000002330F8830, 0xD00000000000001ALL, 0x80000002330F88B0);
  if (v1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v2;
  }

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_2330D5D20(uint64_t a1, char a2, int *a3)
{
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2330D6FE8;

  return (v9)(a1, a2 & 1);
}

uint64_t sub_2330D5E20(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v5 = *(a2 + 8);
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_2330D6FE0;

  return v9(v4, v5);
}

uint64_t sub_2330D5F24(uint64_t a1, char a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return MEMORY[0x2822009F8](sub_2330D5F48, 0, 0);
}

uint64_t sub_2330D5F48()
{
  if (qword_2814EAD90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_2330F23C0();
  __swift_project_value_buffer(v2, qword_2814EBDB0);
  sub_2330C0140(0xD00000000000005FLL, 0x80000002330F8830, 0xD00000000000001DLL, 0x80000002330F8890);
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);

  return v3(v4, v1 & 1);
}

uint64_t sub_2330D6034()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2330877C8;

  return sub_2330D38F0(v2);
}

uint64_t sub_2330D60C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233088E00;

  return sub_2330D4DF0();
}

uint64_t sub_2330D6158()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2330A89E0;

  return sub_2330D4EE8();
}

uint64_t sub_2330D61E8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2330D6FE4;

  return sub_2330D4FE8(v2);
}

uint64_t sub_2330D6294(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_233088E00;

  return sub_2330D50D0(a1, v5);
}

uint64_t sub_2330D634C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2330D6FE4;

  return sub_2330D51BC();
}

uint64_t sub_2330D63DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_233088E00;

  return sub_2330D52C0(a1);
}

uint64_t sub_2330D6474(uint64_t *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_233088E00;

  return sub_2330D5354(a1, v5);
}

uint64_t sub_2330D6528(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2330A89E0;

  return sub_2330D5448(a1);
}

uint64_t sub_2330D65C0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2330D6FE4;

  return sub_2330D554C(a1, v5);
}

uint64_t sub_2330D6674(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_233088E00;

  return sub_2330D5744(a1, a2, v7);
}

uint64_t sub_2330D673C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2330D6FE4;

  return sub_2330D5960(a1);
}

uint64_t sub_2330D67D4(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2330877C8;

  return sub_2330D5A68(a1, a2 & 1);
}

uint64_t sub_2330D687C(uint64_t *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_233088E00;

  return sub_2330D5B04(a1, v5);
}

uint64_t sub_2330D6930(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2330A8008;

  return sub_2330D5C04(a1, a2 & 1);
}

uint64_t sub_2330D69D8(uint64_t a1, char a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2330D6FE4;

  return sub_2330D5D20(a1, a2 & 1, v7);
}

uint64_t sub_2330D6A9C(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_233088E00;

  return sub_2330D5E20(a1, a2, v7);
}

uint64_t sub_2330D6B64(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2330A7C24;

  return sub_2330D5F24(a1, a2 & 1);
}

uint64_t sub_2330D6C2C()
{
  v10 = v0;
  if (qword_2814EAD90 != -1)
  {
    swift_once();
  }

  v1 = sub_2330F23C0();
  __swift_project_value_buffer(v1, qword_2814EBDB0);
  v2 = sub_2330F23A0();
  v3 = sub_2330F2980();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_233098F44(0x53656C706D617845, 0xED00007265767265, &v9);
    *(v5 + 12) = 2048;
    *(v5 + 14) = v4;
    _os_log_impl(&dword_233084000, v2, v3, "%s received %ld", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x23839A490](v6, -1, -1);
    MEMORY[0x23839A490](v5, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2330D6DBC(uint64_t a1, char a2)
{
  *(v2 + 25) = a2;
  *(v2 + 32) = a1;
  return MEMORY[0x2822009F8](sub_2330D6DE0, 0, 0);
}

uint64_t sub_2330D6DE0()
{
  v14 = v0;
  if (qword_2814EAD90 != -1)
  {
    swift_once();
  }

  v1 = sub_2330F23C0();
  __swift_project_value_buffer(v1, qword_2814EBDB0);
  v2 = sub_2330F23A0();
  v3 = sub_2330F2980();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 25);
    v5 = *(v0 + 32);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_233098F44(0x53656C706D617845, 0xED00007265767265, &v13);
    *(v6 + 12) = 2080;
    *(v0 + 16) = v5;
    *(v0 + 24) = v4 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE3D8, &qword_2330F6538);
    v8 = sub_2330F2650();
    v10 = sub_233098F44(v8, v9, &v13);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_233084000, v2, v3, "%s received %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v7, -1, -1);
    MEMORY[0x23839A490](v6, -1, -1);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2330D6FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_2330AE488(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_2330AD10C(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_2330AEFE8();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_2330ADFC8(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_2330D70E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_233085FF8(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_2330AEA28(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_2330952BC(a1, &qword_27DDDDD70, &qword_2330F41F8);
    v8 = *v2;
    v9 = sub_2330AD044(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_2330AF908();
        v14 = v16;
      }

      sub_233085FF8((*(v14 + 56) + 40 * v11), v17);
      sub_2330AE30C(v11, v14);
      *v3 = v14;
    }

    else
    {
      v18 = 0;
      memset(v17, 0, sizeof(v17));
    }

    return sub_2330952BC(v17, &qword_27DDDDD70, &qword_2330F41F8);
  }

  return result;
}

id sub_2330D71F0()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v1[14] = MEMORY[0x277D84F98];
  v7.receiver = v1;
  v7.super_class = v0;
  v2 = objc_msgSendSuper2(&v7, sel_init);
  v3 = objc_opt_self();
  v4 = v2;
  result = [v3 defaultWorkspace];
  if (result)
  {
    v6 = result;
    [result addObserver_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2330D7354(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = sub_2330F1EB0();
  v3[16] = v4;
  v5 = *(v4 - 8);
  v3[17] = v5;
  v6 = *(v5 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2330D7424, v2, 0);
}

uint64_t sub_2330D7424()
{
  v1 = v0[15];
  swift_beginAccess();
  if (*(*(v1 + 112) + 16))
  {
    v3 = v0[13];
    v2 = v0[14];
    v4 = *(v1 + 112);

    sub_2330AD10C(v3, v2);
    LOBYTE(v2) = v5;

    if (v2)
    {
      sub_2330D0250();
      swift_allocError();
      *v6 = 0;
      swift_willThrow();
      v8 = v0[18];
      v7 = v0[19];

      v9 = v0[1];

      __asm { BRAA            X1, X16 }
    }
  }

  v11 = v0[13];
  v10 = v0[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE450, &qword_2330F6670);
  v12 = swift_allocObject();
  v0[20] = v12;
  swift_defaultActor_initialize();
  *(v12 + 112) = 0;
  *(v12 + 120) = -1;
  swift_beginAccess();

  v13 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_2330AE488(v12, v11, v10, isUniquelyReferenced_nonNull_native);

  *(v1 + 112) = v16;
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2330D75FC, v12, 0);
}

uint64_t sub_2330D75FC()
{
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  sub_2330F2EF0();
  sub_2330F1E80();
  sub_2330F1E90();
  v6 = *(v4 + 8);
  v0[21] = v6;
  v0[22] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  v7 = *(v2 + 120);
  if (v7 != 255)
  {
    if ((v7 & 1) == 0)
    {
      v22 = v0[22];
      v23 = v0[15];
      (v0[21])(v0[19], v0[16]);
      v24 = sub_2330D7908;
      v25 = v23;
LABEL_13:

      return MEMORY[0x2822009F8](v24, v25, 0);
    }

    v8 = *(v0[20] + 112);
    v0[11] = v8;
    sub_2330D9128(v8, 1);
    sub_2330D9128(v8, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE470, &qword_2330F46A0);
    swift_willThrowTypedImpl();
    v0[12] = v8;
    v9 = sub_2330F2DA0();
    v11 = v0[21];
    v10 = v0[22];
    v12 = v0[19];
    v13 = v0[16];
    if (v9)
    {
      v14 = v9;
      sub_2330D9134(v8, v7);
      v11(v12, v13);
      sub_2330D9134(v8, v7);
    }

    else
    {
      v14 = swift_allocError();
      *v30 = v8;
      sub_2330D9134(v8, v7);
      v11(v12, v13);
    }

LABEL_12:
    v0[23] = v14;
    v25 = v0[15];
    v24 = sub_2330D79D4;
    goto LABEL_13;
  }

  v16 = v0[21];
  v15 = v0[22];
  v17 = v0[18];
  v18 = v0[19];
  v19 = v0[16];
  sub_2330F1E80();
  sub_2330D942C();
  LOBYTE(v18) = sub_2330F2590();
  v16(v17, v19);
  if ((v18 & 1) == 0)
  {
    v27 = v0[21];
    v26 = v0[22];
    v28 = v0[19];
    v29 = v0[16];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE460, &qword_2330F6678);
    sub_2330D9484();
    v14 = swift_allocError();
    swift_willThrow();
    v27(v28, v29);
    goto LABEL_12;
  }

  v20 = *(MEMORY[0x277D857F8] + 4);
  v21 = swift_task_alloc();
  v0[24] = v21;
  *v21 = v0;
  v21[1] = sub_2330D7A48;

  return MEMORY[0x282200490]();
}

uint64_t sub_2330D7908()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
  swift_beginAccess();

  sub_2330D6FEC(0, v6, v5);
  swift_endAccess();

  v7 = v0[1];

  return v7();
}

uint64_t sub_2330D79D4()
{
  v1 = v0[20];

  v2 = v0[23];
  v4 = v0[18];
  v3 = v0[19];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2330D7A48()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2330D7B58, v2, 0);
}

uint64_t sub_2330D7B58()
{
  v1 = *(v0 + 160);
  v2 = *(v1 + 120);
  if (v2 != 255)
  {
    if ((v2 & 1) == 0)
    {
      v17 = *(v0 + 176);
      v18 = *(v0 + 120);
      (*(v0 + 168))(*(v0 + 152), *(v0 + 128));
      v19 = sub_2330D7908;
      v20 = v18;
LABEL_13:

      return MEMORY[0x2822009F8](v19, v20, 0);
    }

    v3 = *(v1 + 112);
    *(v0 + 88) = v3;
    sub_2330D9128(v3, 1);
    sub_2330D9128(v3, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE470, &qword_2330F46A0);
    swift_willThrowTypedImpl();
    *(v0 + 96) = v3;
    v4 = sub_2330F2DA0();
    v6 = *(v0 + 168);
    v5 = *(v0 + 176);
    v7 = *(v0 + 152);
    v8 = *(v0 + 128);
    if (v4)
    {
      v9 = v4;
      sub_2330D9134(v3, v2);
      v6(v7, v8);
      sub_2330D9134(v3, v2);
    }

    else
    {
      v9 = swift_allocError();
      *v25 = v3;
      sub_2330D9134(v3, v2);
      v6(v7, v8);
    }

LABEL_12:
    *(v0 + 184) = v9;
    v20 = *(v0 + 120);
    v19 = sub_2330D79D4;
    goto LABEL_13;
  }

  v11 = *(v0 + 168);
  v10 = *(v0 + 176);
  v12 = *(v0 + 144);
  v13 = *(v0 + 152);
  v14 = *(v0 + 128);
  sub_2330F1E80();
  sub_2330D942C();
  LOBYTE(v13) = sub_2330F2590();
  v11(v12, v14);
  if ((v13 & 1) == 0)
  {
    v22 = *(v0 + 168);
    v21 = *(v0 + 176);
    v23 = *(v0 + 152);
    v24 = *(v0 + 128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE460, &qword_2330F6678);
    sub_2330D9484();
    v9 = swift_allocError();
    swift_willThrow();
    v22(v23, v24);
    goto LABEL_12;
  }

  v15 = *(MEMORY[0x277D857F8] + 4);
  v16 = swift_task_alloc();
  *(v0 + 192) = v16;
  *v16 = v0;
  v16[1] = sub_2330D7A48;

  return MEMORY[0x282200490]();
}

uint64_t sub_2330D7E04()
{
  v1 = [objc_opt_self() defaultWorkspace];
  if (v1)
  {
    v2 = v1;
    [v1 removeObserver_];

    v3 = v0[14];

    swift_defaultActor_destroy();
    v1 = v0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200960](v1);
}

uint64_t sub_2330D7EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE860, &qword_2330F3BB0) - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2330D7F54, a4, 0);
}

uint64_t sub_2330D7F54()
{
  v1 = v0[15];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[14];
    v4 = v1 + 32;
    swift_beginAccess();
    v5 = 0x2789C2000uLL;
    v33 = v3;
    do
    {
      sub_2330995C4(v4, (v0 + 2));
      sub_2330D8F58();
      if (swift_dynamicCast())
      {
        v6 = v0[13];
        v7 = [v6 *(v5 + 3368)];
        if (v7)
        {
          v8 = v7;
          v9 = sub_2330F25F0();
          v11 = v10;

          v12 = *(v3 + 112);
          if (*(v12 + 16))
          {
            v13 = *(v3 + 112);

            v14 = sub_2330AD10C(v9, v11);
            v16 = v15;

            if (v16)
            {
              v17 = v0[17];
              v34 = v0[16];
              v18 = *(*(v12 + 56) + 8 * v14);

              v19 = sub_2330F2890();
              v20 = *(v19 - 8);
              (*(v20 + 56))(v17, 1, 1, v19);
              v21 = swift_allocObject();
              *(v21 + 16) = 0;
              *(v21 + 24) = 0;
              *(v21 + 32) = v18;
              *(v21 + 40) = 0;
              *(v21 + 48) = 0;
              sub_233088708(v17, v34);
              LODWORD(v17) = (*(v20 + 48))(v34, 1, v19);

              v22 = v0[16];
              if (v17 == 1)
              {
                sub_2330952BC(v0[16], &unk_27DDDE860, &qword_2330F3BB0);
              }

              else
              {
                sub_2330F2880();
                (*(v20 + 8))(v22, v19);
              }

              v23 = *(v21 + 16);
              v24 = *(v21 + 24);
              swift_unknownObjectRetain();

              v3 = v33;
              if (v23)
              {
                swift_getObjectType();
                v25 = sub_2330F2840();
                v27 = v26;
                swift_unknownObjectRelease();
              }

              else
              {
                v25 = 0;
                v27 = 0;
              }

              sub_2330952BC(v0[17], &unk_27DDDE860, &qword_2330F3BB0);
              v28 = swift_allocObject();
              *(v28 + 16) = &unk_2330F6660;
              *(v28 + 24) = v21;
              if (v27 | v25)
              {
                v0[6] = 0;
                v0[7] = 0;
                v0[8] = v25;
                v0[9] = v27;
              }

              v5 = 0x2789C2000;
              swift_task_create();
            }

            else
            {

              v5 = 0x2789C2000;
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }

      v4 += 32;
      --v2;
    }

    while (v2);
  }

  v30 = v0[16];
  v29 = v0[17];

  v31 = v0[1];

  return v31();
}

uint64_t sub_2330D832C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE860, &qword_2330F3BB0) - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2330D83D4, 0, 0);
}

uint64_t sub_2330D83D4()
{
  v1 = *(v0 + 112);
  sub_2330D0250();
  *(v0 + 144) = swift_allocError();
  *v2 = 1;

  return MEMORY[0x2822009F8](sub_2330D8460, v1, 0);
}

uint64_t sub_2330D8460()
{
  v1 = *(v0 + 120);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 112);
    v4 = v1 + 32;
    swift_beginAccess();
    v34 = v3;
    do
    {
      sub_2330995C4(v4, v0 + 16);
      sub_2330D8F58();
      if (swift_dynamicCast())
      {
        v5 = *(v0 + 104);
        v6 = [v5 bundleIdentifier];
        if (v6)
        {
          v7 = v6;
          v8 = sub_2330F25F0();
          v10 = v9;

          v11 = *(v3 + 112);
          if (*(v11 + 16) && (v12 = *(v3 + 112), , v13 = sub_2330AD10C(v8, v10), v15 = v14, , (v15 & 1) != 0))
          {
            v16 = *(v0 + 136);
            v35 = *(v0 + 144);
            v17 = *(v0 + 128);
            v18 = *(*(v11 + 56) + 8 * v13);

            v19 = sub_2330F2890();
            v20 = *(v19 - 8);
            (*(v20 + 56))(v16, 1, 1, v19);
            v21 = swift_allocObject();
            *(v21 + 16) = 0;
            *(v21 + 24) = 0;
            *(v21 + 32) = v18;
            *(v21 + 40) = v35;
            *(v21 + 48) = 1;
            sub_233088708(v16, v17);
            LODWORD(v16) = (*(v20 + 48))(v17, 1, v19);
            v22 = v35;

            v23 = *(v0 + 128);
            if (v16 == 1)
            {
              sub_2330952BC(*(v0 + 128), &unk_27DDDE860, &qword_2330F3BB0);
            }

            else
            {
              sub_2330F2880();
              (*(v20 + 8))(v23, v19);
            }

            v24 = *(v21 + 16);
            v25 = *(v21 + 24);
            swift_unknownObjectRetain();

            v3 = v34;
            if (v24)
            {
              swift_getObjectType();
              v26 = sub_2330F2840();
              v28 = v27;
              swift_unknownObjectRelease();
            }

            else
            {
              v26 = 0;
              v28 = 0;
            }

            sub_2330952BC(*(v0 + 136), &unk_27DDDE860, &qword_2330F3BB0);
            v29 = swift_allocObject();
            *(v29 + 16) = &unk_2330F6640;
            *(v29 + 24) = v21;
            if (v28 | v26)
            {
              *(v0 + 48) = 0;
              *(v0 + 56) = 0;
              *(v0 + 64) = v26;
              *(v0 + 72) = v28;
            }

            swift_task_create();
          }

          else
          {
          }
        }

        else
        {
        }
      }

      v4 += 32;
      --v2;
    }

    while (v2);
  }

  v31 = *(v0 + 128);
  v30 = *(v0 + 136);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_2330D8850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE860, &qword_2330F3BB0) - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2330D88F8, 0, 0);
}

uint64_t sub_2330D88F8()
{
  v1 = *(v0 + 112);
  sub_2330D0250();
  *(v0 + 144) = swift_allocError();
  *v2 = 2;

  return MEMORY[0x2822009F8](sub_2330D8984, v1, 0);
}

uint64_t sub_2330D8984()
{
  v1 = *(v0 + 120);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 112);
    v4 = v1 + 32;
    swift_beginAccess();
    v34 = v3;
    do
    {
      sub_2330995C4(v4, v0 + 16);
      sub_2330D8F58();
      if (swift_dynamicCast())
      {
        v5 = *(v0 + 104);
        v6 = [v5 bundleIdentifier];
        if (v6)
        {
          v7 = v6;
          v8 = sub_2330F25F0();
          v10 = v9;

          v11 = *(v3 + 112);
          if (*(v11 + 16) && (v12 = *(v3 + 112), , v13 = sub_2330AD10C(v8, v10), v15 = v14, , (v15 & 1) != 0))
          {
            v16 = *(v0 + 136);
            v35 = *(v0 + 144);
            v17 = *(v0 + 128);
            v18 = *(*(v11 + 56) + 8 * v13);

            v19 = sub_2330F2890();
            v20 = *(v19 - 8);
            (*(v20 + 56))(v16, 1, 1, v19);
            v21 = swift_allocObject();
            *(v21 + 16) = 0;
            *(v21 + 24) = 0;
            *(v21 + 32) = v18;
            *(v21 + 40) = v35;
            *(v21 + 48) = 1;
            sub_233088708(v16, v17);
            LODWORD(v16) = (*(v20 + 48))(v17, 1, v19);
            v22 = v35;

            v23 = *(v0 + 128);
            if (v16 == 1)
            {
              sub_2330952BC(*(v0 + 128), &unk_27DDDE860, &qword_2330F3BB0);
            }

            else
            {
              sub_2330F2880();
              (*(v20 + 8))(v23, v19);
            }

            v24 = *(v21 + 16);
            v25 = *(v21 + 24);
            swift_unknownObjectRetain();

            v3 = v34;
            if (v24)
            {
              swift_getObjectType();
              v26 = sub_2330F2840();
              v28 = v27;
              swift_unknownObjectRelease();
            }

            else
            {
              v26 = 0;
              v28 = 0;
            }

            sub_2330952BC(*(v0 + 136), &unk_27DDDE860, &qword_2330F3BB0);
            v29 = swift_allocObject();
            *(v29 + 16) = &unk_2330F6618;
            *(v29 + 24) = v21;
            if (v28 | v26)
            {
              *(v0 + 48) = 0;
              *(v0 + 56) = 0;
              *(v0 + 64) = v26;
              *(v0 + 72) = v28;
            }

            swift_task_create();
          }

          else
          {
          }
        }

        else
        {
        }
      }

      v4 += 32;
      --v2;
    }

    while (v2);
  }

  v31 = *(v0 + 128);
  v30 = *(v0 + 136);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_2330D8D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE860, &qword_2330F3BB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v16 - v10;
  v12 = sub_2330F27D0();
  v13 = sub_2330F2890();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;
  v14[5] = v12;

  sub_2330878BC(0, 0, v11, a5, v14);
}

uint64_t sub_2330D8E98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_233088E00;

  return sub_2330D8850(a1, v4, v5, v7, v6);
}

unint64_t sub_2330D8F58()
{
  result = qword_2814EAC58;
  if (!qword_2814EAC58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814EAC58);
  }

  return result;
}

uint64_t sub_2330D8FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a5;
  *(v5 + 16) = a4;
  *(v5 + 24) = v6;
  *(v5 + 32) = *(a5 + 8);
  return MEMORY[0x2822009F8](sub_2330D8FD0, a4, 0);
}

uint64_t sub_2330D8FD0()
{
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v3 + 112);
  *(v3 + 112) = v2;
  v5 = *(v3 + 120);
  *(v3 + 120) = v1;
  sub_2330D9128(v2, v1);
  sub_2330D9134(v4, v5);
  v6 = *(v0 + 8);

  return v6();
}

void sub_2330D9050(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_2330D905C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_233088E00;

  return sub_2330D8FA4(a1, v4, v5, v6, v1 + 5);
}

id sub_2330D9128(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_2330D9134(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_2330D9050(a1, a2 & 1);
  }
}

uint64_t sub_2330D914C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_233088E00;

  return sub_2330D832C(a1, v4, v5, v7, v6);
}

uint64_t sub_2330D920C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2330877C8;

  return sub_2330D8FA4(a1, v4, v5, v6, v1 + 5);
}

uint64_t objectdestroyTm_2()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2330D9320(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_233088E00;

  return sub_2330D7EA8(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_2330D9050(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

unint64_t sub_2330D942C()
{
  result = qword_27DDDE458;
  if (!qword_27DDDE458)
  {
    sub_2330F1EB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE458);
  }

  return result;
}

unint64_t sub_2330D9484()
{
  result = qword_27DDDE468;
  if (!qword_27DDDE468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDDE460, &qword_2330F6678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE468);
  }

  return result;
}

unint64_t sub_2330D94FC()
{
  result = qword_27DDDE480;
  if (!qword_27DDDE480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE480);
  }

  return result;
}

char *sub_2330D9550()
{
  v1 = v0;
  sub_2330F1FF0();
  v2 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v3 = sub_2330F25C0();

  v4 = [v2 initWithMachServiceName_];

  *&v1[OBJC_IVAR____TtC15VisionCompanion9XPCServer_listener] = v4;
  v5 = sub_2330F1FE0();
  v6 = &v1[OBJC_IVAR____TtC15VisionCompanion9XPCServer_requiredEntitlement];
  *v6 = v5;
  v6[1] = v7;
  sub_2330F21F0();
  *&v1[OBJC_IVAR____TtC15VisionCompanion9XPCServer_transportDispatchService] = sub_2330F21E0();
  v10.receiver = v1;
  v10.super_class = type metadata accessor for XPCServer();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  [*&v8[OBJC_IVAR____TtC15VisionCompanion9XPCServer_listener] setDelegate_];
  return v8;
}

id sub_2330D9668()
{
  v1 = v0;
  if (qword_2814EAD90 != -1)
  {
    swift_once();
  }

  v2 = sub_2330F23C0();
  __swift_project_value_buffer(v2, qword_2814EBDB0);
  sub_2330C0140(0xD000000000000057, 0x80000002330F8AB0, 0x6164696C61766E69, 0xEC00000029286574);
  v3 = OBJC_IVAR____TtC15VisionCompanion9XPCServer_listener;
  [*&v1[OBJC_IVAR____TtC15VisionCompanion9XPCServer_listener] setDelegate_];
  [*&v1[v3] invalidate];
  v5.receiver = v1;
  v5.super_class = type metadata accessor for XPCServer();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

id sub_2330D98C8(void *a1)
{
  v2 = v1;
  if (qword_2814EAD90 != -1)
  {
    swift_once();
  }

  v4 = sub_2330F23C0();
  __swift_project_value_buffer(v4, qword_2814EBDB0);
  v5 = a1;
  v6 = sub_2330F23A0();
  v7 = sub_2330F2980();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v8 = 136315394;
    v11 = sub_2330C025C(0xD000000000000057, 0x80000002330F8AB0, 0xD000000000000014, 0x80000002330F8B30);
    v13 = sub_233098F44(v11, v12, &v25);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v14 = v5;
    _os_log_impl(&dword_233084000, v6, v7, "%s Accepting new connection: %@", v8, 0x16u);
    sub_2330952BC(v9, &unk_27DDDE520, &qword_2330F4340);
    MEMORY[0x23839A490](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x23839A490](v10, -1, -1);
    MEMORY[0x23839A490](v8, -1, -1);
  }

  v15 = objc_opt_self();
  v16 = [v15 interfaceWithProtocol_];
  [v5 setRemoteObjectInterface_];

  v17 = [v15 interfaceWithProtocol_];
  [v5 setExportedInterface_];

  [v5 setExportedObject_];
  v18 = swift_allocObject();
  *(v18 + 16) = v5;
  v29 = sub_2330DBB14;
  v30 = v18;
  v25 = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_2330CE2D8;
  v28 = &block_descriptor_9;
  v19 = _Block_copy(&v25);
  v20 = v5;

  [v20 setInterruptionHandler_];
  _Block_release(v19);
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v29 = sub_2330DBB50;
  v30 = v21;
  v25 = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_2330CE2D8;
  v28 = &block_descriptor_55;
  v22 = _Block_copy(&v25);
  v23 = v20;

  [v23 setInvalidationHandler_];
  _Block_release(v22);
  return [v23 activate];
}

void sub_2330D9CA0(void *a1, const char *a2)
{
  if (qword_2814EAD90 != -1)
  {
    swift_once();
  }

  v4 = sub_2330F23C0();
  __swift_project_value_buffer(v4, qword_2814EBDB0);
  v5 = a1;
  oslog = sub_2330F23A0();
  v6 = sub_2330F2960();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    v9 = [v5 serviceName];
    if (v9)
    {
      v10 = v9;
      v11 = sub_2330F25F0();
      v13 = v12;
    }

    else
    {
      v13 = 0xEB00000000646569;
      v11 = 0x6669636570736E75;
    }

    v14 = sub_233098F44(v11, v13, &v16);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_233084000, oslog, v6, a2, v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x23839A490](v8, -1, -1);
    MEMORY[0x23839A490](v7, -1, -1);
  }
}

uint64_t sub_2330D9EF8()
{
  if (qword_2814EAD90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_2330F23C0();
  __swift_project_value_buffer(v2, qword_2814EBDB0);
  sub_2330C0140(0xD000000000000057, 0x80000002330F8AB0, 0x6574617669746361, 0xEA00000000002928);
  [*(v1 + OBJC_IVAR____TtC15VisionCompanion9XPCServer_listener) activate];
  v3 = *(v0 + 8);

  return v3();
}

id sub_2330D9FE8()
{
  v1 = *v0;
  if (qword_2814EAD90 != -1)
  {
    swift_once();
  }

  v2 = sub_2330F23C0();
  __swift_project_value_buffer(v2, qword_2814EBDB0);
  sub_2330C0140(0xD000000000000057, 0x80000002330F8AB0, 0x6164696C61766E69, 0xEC00000029286574);
  v3 = OBJC_IVAR____TtC15VisionCompanion9XPCServer_listener;
  [*(v1 + OBJC_IVAR____TtC15VisionCompanion9XPCServer_listener) setDelegate_];
  v4 = *(v1 + v3);

  return [v4 invalidate];
}

uint64_t sub_2330DA0C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233088E00;

  return sub_2330D9EB8();
}

uint64_t sub_2330DA14C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233088E00;

  return sub_2330D9EB8();
}

uint64_t sub_2330DA1F4()
{
  v1 = sub_2330F2000();
  sub_2330DAFC8();
  swift_allocError();
  (*(*(v1 - 8) + 104))(v2, *MEMORY[0x277D78348], v1);
  swift_willThrow();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2330DA2C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2330877C8;

  return sub_2330D9EB8();
}

uint64_t sub_2330DA354()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233088E00;

  return sub_2330D9EB8();
}

uint64_t sub_2330DA568(int a1, void *aBlock, void *a3)
{
  *(v3 + 16) = a3;
  *(v3 + 48) = a1;
  *(v3 + 24) = _Block_copy(aBlock);
  v5 = a3;

  return MEMORY[0x2822009F8](sub_2330DA5E8, 0, 0);
}

uint64_t sub_2330DA5E8()
{
  if (qword_2814EAD90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_2330F23C0();
  __swift_project_value_buffer(v2, qword_2814EBDB0);
  sub_2330C0140(0xD000000000000057, 0x80000002330F8AB0, 0x726F70736E617274, 0xED0000293A5F2874);
  v3 = *(v1 + OBJC_IVAR____TtC15VisionCompanion9XPCServer_transportDispatchService);
  v4 = *(MEMORY[0x277D78448] + 4);
  v8 = (*MEMORY[0x277D78448] + MEMORY[0x277D78448]);
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_2330DA730;
  v6 = *(v0 + 48);

  return v8(v6, 0, 0xF000000000000000);
}

uint64_t sub_2330DA730(uint64_t a1, unint64_t a2)
{
  v6 = *(*v3 + 32);
  v7 = *v3;
  *(v7 + 40) = v2;

  if (!v2)
  {

    if (a2 >> 60 == 15)
    {
      v8 = 0;
    }

    else
    {
      v8 = sub_2330F1DF0();
      sub_2330B5294(a1, a2);
    }

    v9 = *(v7 + 24);
    (v9)[2](v9, v8, 0);

    _Block_release(v9);
    v10 = *(v7 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_2330DA8E4, 0, 0);
}

uint64_t sub_2330DA8E4()
{
  v1 = *(v0 + 40);

  v2 = sub_2330F1D50();
  v3 = *(v0 + 24);
  (v3)[2](v3, 0, v2);

  _Block_release(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2330DAB14(int a1, void *a2, void *aBlock, void *a4)
{
  *(v4 + 16) = a4;
  *(v4 + 64) = a1;
  *(v4 + 24) = _Block_copy(aBlock);
  if (a2)
  {
    v7 = a2;
    v8 = a4;
    v9 = sub_2330F1E00();
    v11 = v10;
  }

  else
  {
    v12 = a4;
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  *(v4 + 32) = v9;
  *(v4 + 40) = v11;

  return MEMORY[0x2822009F8](sub_2330DABD0, 0, 0);
}

uint64_t sub_2330DABD0()
{
  if (qword_2814EAD90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_2330F23C0();
  __swift_project_value_buffer(v2, qword_2814EBDB0);
  sub_2330C0140(0xD000000000000057, 0x80000002330F8AB0, 0xD000000000000012, 0x80000002330F8B10);
  v3 = *(v1 + OBJC_IVAR____TtC15VisionCompanion9XPCServer_transportDispatchService);
  v4 = *(MEMORY[0x277D78448] + 4);
  v10 = (*MEMORY[0x277D78448] + MEMORY[0x277D78448]);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_2330DAD14;
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 64);

  return v10(v8, v6, v7);
}

uint64_t sub_2330DAD14(uint64_t a1, unint64_t a2)
{
  v6 = *(*v3 + 48);
  v7 = *v3;
  *(v7 + 56) = v2;

  if (!v2)
  {
    v9 = *(v7 + 32);
    v8 = *(v7 + 40);

    sub_2330B5294(v9, v8);
    if (a2 >> 60 == 15)
    {
      v10 = 0;
    }

    else
    {
      v10 = sub_2330F1DF0();
      sub_2330B5294(a1, a2);
    }

    v11 = *(v7 + 24);
    (v11)[2](v11, v10, 0);

    _Block_release(v11);
    v12 = *(v7 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_2330DAED8, 0, 0);
}

uint64_t sub_2330DAED8()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);

  sub_2330B5294(v3, v2);
  v4 = sub_2330F1D50();

  v5 = *(v0 + 24);
  (v5)[2](v5, 0, v4);

  _Block_release(v5);
  v6 = *(v0 + 8);

  return v6();
}

unint64_t sub_2330DAFC8()
{
  result = qword_27DDDE510;
  if (!qword_27DDDE510)
  {
    sub_2330F2000();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE510);
  }

  return result;
}

uint64_t sub_2330DB020()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2330877C8;

  return sub_2330DAB14(v2, v3, v4, v5);
}

uint64_t sub_2330DB0E4(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_233088E00;

  return v7();
}

uint64_t sub_2330DB1CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_233088E00;

  return sub_2330DB0E4(v2, v3, v5);
}

uint64_t sub_2330DB28C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_2330877C8;

  return v8();
}

uint64_t sub_2330DB374(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_233088E00;

  return sub_2330DB28C(a1, v4, v5, v7);
}

uint64_t sub_2330DB440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE860, &qword_2330F3BB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v26 - v12;
  sub_233088708(a3, v26 - v12);
  v14 = sub_2330F2890();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_2330952BC(v13, &unk_27DDDE860, &qword_2330F3BB0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2330F2880();
  (*(v15 + 8))(v13, v14);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v16 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v17 = sub_2330F2840();
  v19 = v18;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v20 = sub_2330F2670() + 32;
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;

    if (v19 | v17)
    {
      v27[0] = 0;
      v27[1] = 0;
      v22 = v27;
      v27[2] = v17;
      v27[3] = v19;
    }

    else
    {
      v22 = 0;
    }

    v26[1] = 7;
    v26[2] = v22;
    v26[3] = v20;
    v24 = swift_task_create();

    sub_2330952BC(a3, &unk_27DDDE860, &qword_2330F3BB0);

    return v24;
  }

LABEL_8:
  sub_2330952BC(a3, &unk_27DDDE860, &qword_2330F3BB0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2330DB72C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_233088E00;

  return sub_233094328(a1, v5);
}

uint64_t sub_2330DB7E4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2330877C8;

  return sub_233094328(a1, v5);
}

uint64_t sub_2330DB89C()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_233088E00;

  return sub_2330DA568(v2, v4, v3);
}

uint64_t objectdestroy_12Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2330DB990(void *a1)
{
  v2 = v1;
  v4 = *&v2[OBJC_IVAR____TtC15VisionCompanion9XPCServer_requiredEntitlement];
  v5 = *&v2[OBJC_IVAR____TtC15VisionCompanion9XPCServer_requiredEntitlement + 8];
  v6 = sub_2330DBE00();
  if (v6)
  {
    sub_2330D98C8(a1);
  }

  else
  {
    if (qword_2814EAD90 != -1)
    {
      swift_once();
    }

    v7 = sub_2330F23C0();
    __swift_project_value_buffer(v7, qword_2814EBDB0);
    v8 = v2;
    v9 = sub_2330F23A0();
    v10 = sub_2330F2960();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_233098F44(v4, v5, &v14);
      _os_log_impl(&dword_233084000, v9, v10, "Rejecting connection missing entitlement: %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x23839A490](v12, -1, -1);
      MEMORY[0x23839A490](v11, -1, -1);
    }
  }

  return v6 & 1;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_2330DBB84(uint64_t a1, void *a2)
{
  sub_2330DBCA8();
  v3 = a2;
  v4 = sub_2330F2A90();
  v5 = [v4 encryptedValues];
  swift_getObjectType();
  sub_2330F2A30();
  swift_unknownObjectRelease();
  v6 = [v4 encryptedValues];
  swift_getObjectType();
  sub_2330F2A30();
  swift_unknownObjectRelease();
  return v4;
}

unint64_t sub_2330DBCA8()
{
  result = qword_27DDDDFA0;
  if (!qword_27DDDDFA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DDDDFA0);
  }

  return result;
}

unint64_t sub_2330DBCF4(void *a1)
{
  v2 = [a1 encryptedValues];
  v3 = sub_2330F25C0();
  v4 = [v2 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE270, &qword_2330F4C70);
    if (swift_dynamicCast())
    {
      v4 = v7;
    }

    else
    {
      v4 = 0;
    }
  }

  v5 = [a1 recordID];
  return v4;
}

uint64_t sub_2330DBE00()
{
  v1 = sub_2330F25C0();
  v2 = [v0 valueForEntitlement_];

  if (v2)
  {
    sub_2330F2B50();
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
    result = swift_dynamicCast();
    if (result)
    {
      return v4;
    }
  }

  else
  {
    sub_2330DBEC8(v7);
    return 0;
  }

  return result;
}

uint64_t sub_2330DBEC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDD78, &qword_2330F4200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2330DBF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (qword_27DDDDBF8 != -1)
  {
    swift_once();
  }

  v9 = qword_27DDDE530;
  v10 = *algn_27DDDE538;
  v11 = qword_27DDDDC00;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_27DDDE540;
  v13 = *algn_27DDDE548;
  sub_2330B4224(qword_27DDDE540, *algn_27DDDE548);
  if (qword_27DDDDC08 != -1)
  {
    swift_once();
  }

  v14 = qword_27DDDE550;
  v15 = *algn_27DDDE558;
  sub_2330B4224(qword_27DDDE550, *algn_27DDDE558);
  if (qword_27DDDDC10 != -1)
  {
    swift_once();
  }

  v16 = qword_27DDDE560;
  v17 = *algn_27DDDE568;
  *a5 = a1;
  a5[1] = a2;
  a5[2] = 0x4920656C706D6153;
  a5[3] = 0xEB000000002E636ELL;
  a5[4] = 0xD000000000000016;
  a5[5] = 0x80000002330F8BC0;
  a5[6] = 0x534F656C706D6173;
  a5[7] = 0xE800000000000000;
  a5[8] = 808335673;
  a5[9] = 0xE400000000000000;
  a5[10] = 0x6139395A3939;
  a5[11] = 0xE600000000000000;
  a5[12] = a3;
  a5[13] = a4;
  a5[14] = v9;
  a5[15] = v10;
  a5[16] = v12;
  a5[17] = v13;
  a5[18] = v14;
  a5[19] = v15;
  a5[20] = v16;
  a5[21] = v17;
  sub_2330B4224(v16, v17);
}

void sub_2330DC14C()
{
  v0 = [objc_opt_self() stringFromByteCount:0x370000000 countStyle:0];
  v1 = sub_2330F25F0();
  v3 = v2;

  qword_27DDDE530 = v1;
  *algn_27DDDE538 = v3;
}

uint64_t sub_2330DC1BC()
{
  result = sub_2330DC360();
  qword_27DDDE540 = result;
  *algn_27DDDE548 = v1;
  return result;
}

uint64_t sub_2330DC230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t *a5)
{
  v7 = sub_2330F2640();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2330E9D4C();
  if (v14)
  {
    sub_2330F2630();
    v15 = sub_2330F2600();
    v17 = v16;

    result = (*(v8 + 8))(v12, v7);
  }

  else
  {
    v15 = 0;
    v17 = 0xF000000000000000;
  }

  *a4 = v15;
  *a5 = v17;
  return result;
}

uint64_t sub_2330DC360()
{
  v0 = [objc_opt_self() configurationWithTextStyle_];
  v1 = sub_2330F25C0();
  v2 = [objc_opt_self() systemImageNamed:v1 withConfiguration:v0];

  if (v2)
  {
    v3 = [objc_opt_self() whiteColor];
    v4 = [v2 imageWithTintColor:v3 renderingMode:2];
  }

  else
  {
    v4 = 0;
  }

  updated = _s15VisionCompanion23SoftwareUpdateUtilitiesV15dataFromUIImagey10Foundation4DataVSgSo0H0CSgFZ_0(v4);

  return updated;
}

uint64_t sub_2330DC48C(uint64_t a1, unint64_t a2)
{
  sub_2330C04B8();
  v4 = (sub_2330F2B10() + 16);
  if (*v4)
  {
    v5 = &v4[2 * *v4];
    a1 = *v5;
    a2 = v5[1];
  }

  else
  {
  }

  sub_2330C050C(46, 0xE100000000000000, a1, a2);
  v6 = sub_2330F2780();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = MEMORY[0x238399480](v6, v8, v10, v12);

  return v13;
}

unint64_t sub_2330DC5E4(uint64_t a1)
{
  result = sub_2330DC60C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2330DC60C()
{
  result = qword_27DDDE570;
  if (!qword_27DDDE570)
  {
    sub_2330DC664();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE570);
  }

  return result;
}

unint64_t sub_2330DC664()
{
  result = qword_27DDDE578[0];
  if (!qword_27DDDE578[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27DDDE578);
  }

  return result;
}

uint64_t sub_2330DC6B4(void *a1)
{
  v1 = a1[10];
  v2 = a1[11];
  v3 = a1[12];
  sub_2330F2EC0();
  result = sub_2330F2AE0();
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2330DC764()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 96);
  sub_2330F2EC0();
  v5 = sub_2330F2AE0();
  (*(*(v5 - 8) + 8))(v0 + v1, v5);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2330DC824()
{
  sub_2330DC764();

  return MEMORY[0x282200960](v0);
}

VisionCompanion::DaemonDefault __swiftcall DaemonDefault.init(key:value:)(Swift::String key, Swift::String value)
{
  *v2 = key;
  v2[1] = value;
  result.value = value;
  result.key = key;
  return result;
}

uint64_t DaemonDefault.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE680, &qword_2330F6AB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2330DCACC();
  sub_2330F2ED0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v22 = 0;
  v12 = sub_2330F2D20();
  v14 = v13;
  v20 = v12;
  v21 = 1;
  v15 = sub_2330F2D20();
  v17 = v16;
  (*(v6 + 8))(v10, v5);
  *a2 = v20;
  a2[1] = v14;
  a2[2] = v15;
  a2[3] = v17;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_2330DCACC()
{
  result = qword_27DDDE688;
  if (!qword_27DDDE688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE688);
  }

  return result;
}

uint64_t sub_2330DCB20()
{
  if (*v0)
  {
    result = 0x65756C6176;
  }

  else
  {
    result = 7955819;
  }

  *v0;
  return result;
}

uint64_t sub_2330DCB50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v5 || (sub_2330F2DC0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2330F2DC0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2330DCC28(uint64_t a1)
{
  v2 = sub_2330DCACC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2330DCC64(uint64_t a1)
{
  v2 = sub_2330DCACC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DaemonDefault.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE690, &qword_2330F6AB8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v15[1] = v1[3];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2330DCACC();
  sub_2330F2EE0();
  v17 = 0;
  v13 = v15[3];
  sub_2330F2D50();
  if (!v13)
  {
    v16 = 1;
    sub_2330F2D50();
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_2330DCE64()
{
  sub_2330DD05C();
  sub_2330DD0B0();
  return sub_2330F2180();
}

uint64_t sub_2330DCEB8()
{
  sub_2330DD05C();
  sub_2330DD0B0();
  return sub_2330F2190();
}

unint64_t sub_2330DCF58()
{
  result = qword_27DDDE698;
  if (!qword_27DDDE698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE698);
  }

  return result;
}

unint64_t sub_2330DCFB0()
{
  result = qword_27DDDE6A0;
  if (!qword_27DDDE6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE6A0);
  }

  return result;
}

unint64_t sub_2330DD008()
{
  result = qword_27DDDE6A8;
  if (!qword_27DDDE6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE6A8);
  }

  return result;
}

unint64_t sub_2330DD05C()
{
  result = qword_27DDDE6B0;
  if (!qword_27DDDE6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE6B0);
  }

  return result;
}

unint64_t sub_2330DD0B0()
{
  result = qword_27DDDE6B8;
  if (!qword_27DDDE6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE6B8);
  }

  return result;
}

uint64_t sub_2330DD104()
{
  *(v1 + 88) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE860, &qword_2330F3BB0) - 8) + 64) + 15;
  *(v1 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2330DD1A0, v0, 0);
}

uint64_t sub_2330DD1A0()
{
  v1 = *(v0 + 88);
  *(v0 + 104) = *(v1 + 112);
  sub_233092A18((v0 + 16));
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_2330F6D68;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v0 + 112) = v5;
  *(v5 + 16) = &unk_2330F6D78;
  *(v5 + 24) = v4;
  v6 = *(MEMORY[0x277D78400] + 4);

  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDF40, &qword_2330F6D90);
  *(v0 + 128) = v8;
  v9 = sub_2330E43D0();
  *(v0 + 136) = v9;
  *v7 = v0;
  v7[1] = sub_2330DD328;

  return MEMORY[0x2821DF740](401, &unk_2330F6D88, v5, v2, v8, v3, v9);
}

uint64_t sub_2330DD328()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 88);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_2330DD454, v3, 0);
}

uint64_t sub_2330DD454()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = swift_allocObject();
  v0[18] = v4;
  *(v4 + 16) = &unk_2330F6DA0;
  *(v4 + 24) = v1;
  v5 = *(MEMORY[0x277D78410] + 4);

  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_2330DD574;
  v7 = v0[16];
  v8 = v0[17];

  return MEMORY[0x2821DF750](402, &unk_2330F6DB0, v4, v2, v7, v3, v8);
}

uint64_t sub_2330DD574()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 88);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_2330DD6A0, v3, 0);
}

uint64_t sub_2330DD6A0()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = *(MEMORY[0x277D78410] + 4);

  v5 = swift_task_alloc();
  v0[20] = v5;
  v6 = sub_2330F2110();
  *v5 = v0;
  v5[1] = sub_2330DD7A4;
  v7 = v0[11];
  v8 = MEMORY[0x277D783C8];

  return MEMORY[0x2821DF750](403, &unk_2330F6DC0, v7, v2, v6, v3, v8);
}

uint64_t sub_2330DD7A4()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2330DD8BC, v2, 0);
}

uint64_t sub_2330DD8BC()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = swift_allocObject();
  v0[21] = v4;
  *(v4 + 16) = &unk_2330F6DD0;
  *(v4 + 24) = v1;
  v5 = *(MEMORY[0x277D783F8] + 4);

  v6 = swift_task_alloc();
  v0[22] = v6;
  v7 = sub_2330F2290();
  v8 = sub_2330F20C0();
  *v6 = v0;
  v6[1] = sub_2330DDA10;

  return MEMORY[0x2821DF738](404, &unk_2330F6DE0, v4, v2, v7, v8, v3);
}

uint64_t sub_2330DDA10()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 88);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_2330DDB3C, v3, 0);
}

uint64_t sub_2330DDB3C()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = *(MEMORY[0x277D78410] + 4);

  v5 = swift_task_alloc();
  v0[23] = v5;
  v6 = sub_2330F21D0();
  *v5 = v0;
  v5[1] = sub_2330DDC40;
  v7 = v0[11];
  v8 = MEMORY[0x277D78430];

  return MEMORY[0x2821DF750](405, &unk_2330F6DF0, v7, v2, v6, v3, v8);
}

uint64_t sub_2330DDC40()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2330DDD58, v2, 0);
}

uint64_t sub_2330DDD58()
{
  v1 = v0[13];
  v2 = v0[11];
  v0[24] = sub_233092CCC();

  return MEMORY[0x2822009F8](sub_2330DDDD4, 0, 0);
}

uint64_t sub_2330DDE00()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 88);
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_2330F6E00;
  *(v3 + 24) = v2;
  swift_beginAccess();

  v4 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_2330AE604(&unk_2330F4BC8, v3, 2u, isUniquelyReferenced_nonNull_native);
  *(v1 + 112) = v7;
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2330DDF18, v2, 0);
}

uint64_t sub_2330DDF18()
{
  v18 = v0[24];
  v1 = v0[11];
  v2 = v0[12];
  v3 = sub_2330F2890();
  v4 = *(*(v3 - 8) + 56);
  v4(v2, 1, 1, v3);
  v17 = sub_2330E494C(&qword_27DDDE708, v5, type metadata accessor for TVContentRequestServer);
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v17;
  v6[4] = v1;
  swift_retain_n();
  sub_2330878BC(0, 0, v2, &unk_2330F6E18, v6);

  v7 = sub_233099620(0, &qword_2814EAC28, 0x277CCAB98);
  v8 = *MEMORY[0x277CF0010];
  v4(v2, 1, 1, v3);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;
  v9[5] = v8;
  v9[6] = 0xD000000000000068;
  v9[7] = 0x80000002330F8C30;
  v9[8] = &unk_2330F6E28;
  v9[9] = v1;

  v10 = v8;
  sub_2330878BC(0, 0, v2, &unk_2330F3BC0, v9);

  v11 = sub_233099620(0, &qword_2814EAC10, 0x277CCA9A0);
  v12 = sub_2330F25C0();
  v4(v2, 1, 1, v3);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;
  v13[5] = v12;
  v13[6] = 0xD000000000000068;
  v13[7] = 0x80000002330F8C30;
  v13[8] = &unk_2330F6E40;
  v13[9] = v1;

  sub_2330878BC(0, 0, v2, &unk_2330F6E48, v13);

  v4(v2, 1, 1, v3);
  v14 = swift_allocObject();
  v14[2] = v1;
  v14[3] = v17;
  v14[4] = v1;
  swift_retain_n();
  sub_2330878BC(0, 0, v2, &unk_2330F6E58, v14);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v15 = v0[1];

  return v15();
}

uint64_t sub_2330DE2A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2330C92EC;

  return sub_2330E266C();
}

uint64_t sub_2330DE330(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_233088E00;

  return sub_2330E2A98(a1);
}

uint64_t sub_2330DE3C8(uint64_t *a1, int *a2)
{
  v3 = *a1;
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_233088E00;

  return v7(v3);
}

uint64_t sub_2330DE4BC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_233088E00;

  return sub_2330E2EB0(a1);
}

uint64_t sub_2330DE554(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2330877C8;

  return sub_2330E3480(a1, a2);
}

uint64_t sub_2330DE600(uint64_t a1, uint64_t a2, int *a3)
{
  v3[2] = a1;
  v6 = sub_2330F20C0();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v3[5] = v9;
  v13 = (a3 + *a3);
  v10 = a3[1];
  v11 = swift_task_alloc();
  v3[6] = v11;
  *v11 = v3;
  v11[1] = sub_2330DE76C;

  return v13(v9, a2);
}

uint64_t sub_2330DE76C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[5];
  }

  else
  {
    v8 = v2[4];
    v7 = v2[5];
    v11 = v2 + 2;
    v9 = v2[2];
    v10 = v11[1];
    (*(v8 + 32))(v9, v7, v10);
    (*(v8 + 56))(v9, 0, 1, v10);
  }

  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_2330DE8D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_233088E00;

  return sub_2330E3BA8(a1);
}

uint64_t sub_2330DE96C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233088E00;

  return sub_2330DECFC();
}

uint64_t sub_2330DEA1C()
{
  v1 = *(v0[7] + 112);
  sub_233093C70((v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_2330DEACC;

  return TVContentRequestCloudKitCoordinator.registerForPushNotifications()();
}

uint64_t sub_2330DEACC()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2330953EC, v2, 0);
}

uint64_t sub_2330DEBDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2330877C8;

  return sub_2330DECFC();
}

uint64_t sub_2330DEC6C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233088E00;

  return sub_2330DECFC();
}

uint64_t sub_2330DECFC()
{
  *(v1 + 64) = v0;
  *(v1 + 72) = *v0;
  return MEMORY[0x2822009F8](sub_2330DED44, v0, 0);
}

uint64_t sub_2330DED44()
{
  v1 = *(v0[8] + 112);
  sub_233093C70((v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_2330DEDF4;

  return TVContentRequestCloudKitCoordinator.fetchRequests()();
}

uint64_t sub_2330DEDF4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(v4 + 88) = a1;
  *(v4 + 96) = v1;

  v7 = *(v3 + 64);
  if (v1)
  {
    v8 = sub_2330DF14C;
  }

  else
  {
    v8 = sub_2330DEF28;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2330DEF28()
{
  v21 = v0;
  if (qword_27DDDDBE8 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = sub_2330F23C0();
  __swift_project_value_buffer(v2, qword_27DDE18F0);

  v3 = sub_2330F23A0();
  v4 = sub_2330F2980();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[11];
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315394;
    v9 = sub_2330F2F30();
    v11 = sub_233098F44(v9, v10, &v20);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = sub_2330F2110();
    v13 = MEMORY[0x2383995E0](v5, v12);
    v15 = sub_233098F44(v13, v14, &v20);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_233084000, v3, v4, "%s fetched TV content requests %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v8, -1, -1);
    MEMORY[0x23839A490](v7, -1, -1);
  }

  v16 = swift_task_alloc();
  v0[13] = v16;
  *v16 = v0;
  v16[1] = sub_2330DF520;
  v17 = v0[11];
  v18 = v0[8];

  return sub_2330DF64C(v17);
}

uint64_t sub_2330DF14C()
{
  v34 = v0;
  v1 = *(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  type metadata accessor for Code(0);
  *(v0 + 56) = 9;
  v2 = v1;
  sub_2330E494C(&qword_2814EACC8, 255, type metadata accessor for Code);
  v3 = sub_2330F1CE0();

  if (v3)
  {
    v4 = *(v0 + 64);

    v5 = *(v4 + 120);
    *(v4 + 120) = MEMORY[0x277D84F90];

    if (qword_27DDDDBE8 != -1)
    {
      swift_once();
    }

    v6 = sub_2330F23C0();
    __swift_project_value_buffer(v6, qword_27DDE18F0);
    v7 = sub_2330F23A0();
    v8 = sub_2330F2980();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 72);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v33 = v11;
      *v10 = 136315138;
      v12 = sub_2330F2F30();
      v14 = sub_233098F44(v12, v13, &v33);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_233084000, v7, v8, "%s failed to fetch TV content requests; user not authenticated", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x23839A490](v11, -1, -1);
      MEMORY[0x23839A490](v10, -1, -1);
    }
  }

  else
  {
    if (qword_27DDDDBE8 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 96);
    v16 = sub_2330F23C0();
    __swift_project_value_buffer(v16, qword_27DDE18F0);
    v17 = v15;
    v18 = sub_2330F23A0();
    v19 = sub_2330F2960();

    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 96);
    if (v20)
    {
      v22 = *(v0 + 72);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33 = v25;
      *v23 = 136315394;
      v26 = sub_2330F2F30();
      v28 = sub_233098F44(v26, v27, &v33);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2112;
      v29 = v21;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v30;
      *v24 = v30;
      _os_log_impl(&dword_233084000, v18, v19, "%s failed to fetch TV content requests: %@", v23, 0x16u);
      sub_2330952BC(v24, &unk_27DDDE520, &qword_2330F4340);
      MEMORY[0x23839A490](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x23839A490](v25, -1, -1);
      MEMORY[0x23839A490](v23, -1, -1);
    }

    else
    {
    }
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_2330DF520()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 64);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_23308D118, v3, 0);
}

uint64_t sub_2330DF64C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2330DF66C, v1, 0);
}

uint64_t sub_2330DF66C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v2 + 120);

  v5 = sub_23309F20C(v4, v1);

  v6 = *(v5 + 16);

  v7 = *(v2 + 120);
  *(v2 + 120) = v1;

  if (v6)
  {
    sub_233099620(0, &qword_2814EAC10, 0x277CCA9A0);
    v8 = [swift_getObjCClassFromMetadata() defaultCenter];
    v9 = sub_2330F2A00();
    [v8 postNotificationName:v9 object:0];
  }

  v10 = swift_task_alloc();
  v0[4] = v10;
  *v10 = v0;
  v10[1] = sub_2330DF7B4;
  v11 = v0[3];

  return sub_2330DF8A8();
}

uint64_t sub_2330DF7B4()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2330DF8A8()
{
  v1[19] = v0;
  v1[20] = *v0;
  v2 = sub_2330F21D0();
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v4 = *(v3 + 64) + 15;
  v1[23] = swift_task_alloc();
  v5 = sub_2330F2090();
  v1[24] = v5;
  v6 = *(v5 - 8);
  v1[25] = v6;
  v7 = *(v6 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v8 = sub_2330F1DD0();
  v1[28] = v8;
  v9 = *(v8 - 8);
  v1[29] = v9;
  v10 = *(v9 + 64) + 15;
  v1[30] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE6D8, &unk_2330F6D40) - 8) + 64) + 15;
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v12 = sub_2330F20C0();
  v1[33] = v12;
  v13 = *(v12 - 8);
  v1[34] = v13;
  v14 = *(v13 + 64) + 15;
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v15 = sub_2330F2110();
  v1[37] = v15;
  v16 = *(v15 - 8);
  v1[38] = v16;
  v17 = *(v16 + 64) + 15;
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2330DFBA4, v0, 0);
}

void sub_2330DFBA4()
{
  v137 = v0;
  *(v0 + 368) = *(*(v0 + 152) + 112);
  sub_233090A7C();
  if ((sub_2330F2380() & 1) == 0)
  {
LABEL_48:
    v93 = *(v0 + 352);
    v92 = *(v0 + 360);
    v95 = *(v0 + 336);
    v94 = *(v0 + 344);
    v97 = *(v0 + 320);
    v96 = *(v0 + 328);
    v98 = *(v0 + 312);
    v100 = *(v0 + 280);
    v99 = *(v0 + 288);
    v101 = *(v0 + 256);
    v118 = *(v0 + 248);
    v120 = *(v0 + 240);
    v125 = *(v0 + 216);
    v129 = *(v0 + 208);
    v135 = *(v0 + 184);

    v102 = *(v0 + 8);

    v102();
    return;
  }

  sub_233091A08(v0 + 16);
  v1 = MobileGestalt_get_current_device();
  if (!v1)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v2 = v1;
  v3 = MobileGestalt_copy_serialNumber_obj();

  if (!v3)
  {
LABEL_61:
    __break(1u);
    return;
  }

  v4 = *(v0 + 152);
  v5 = sub_2330F25F0();
  v7 = v6;

  v8 = *(v4 + 120);
  v9 = *(v8 + 16);

  if (v9)
  {
    v10 = 0;
    v11 = *(v0 + 304);
    v131 = (v11 + 32);
    v12 = MEMORY[0x277D84F90];
    v114 = v8;
    v116 = v7;
    v122 = v5;
    while (1)
    {
      if (v10 >= *(v8 + 16))
      {
        __break(1u);
        goto LABEL_59;
      }

      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = *(v11 + 72);
      (*(v11 + 16))(*(v0 + 360), v8 + v13 + v14 * v10, *(v0 + 296));
      if (sub_2330F2040() == v5 && v15 == v7)
      {
        break;
      }

      v17 = sub_2330F2DC0();

      if (v17)
      {
        goto LABEL_16;
      }

      (*(v11 + 8))(*(v0 + 360), *(v0 + 296));
LABEL_7:
      ++v10;
      v5 = v122;
      if (v9 == v10)
      {
        goto LABEL_22;
      }
    }

LABEL_16:
    v18 = *v131;
    (*v131)(*(v0 + 352), *(v0 + 360), *(v0 + 296));
    v136[0] = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2330AC6C0(0, *(v12 + 16) + 1, 1);
      v12 = v136[0];
    }

    v20 = *(v12 + 16);
    v19 = *(v12 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_2330AC6C0(v19 > 1, v20 + 1, 1);
      v12 = v136[0];
    }

    v21 = *(v0 + 352);
    v22 = *(v0 + 296);
    *(v12 + 16) = v20 + 1;
    v18(v12 + v13 + v20 * v14, v21, v22);
    v8 = v114;
    v7 = v116;
    goto LABEL_7;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_22:

  v127 = *(v12 + 16);
  if (v127)
  {
    v23 = 0;
    v24 = *(v0 + 304);
    v25 = *(v0 + 272);
    v117 = *MEMORY[0x277D783A8];
    v113 = (v25 + 8);
    v115 = (v25 + 104);
    v123 = v24;
    v111 = (v24 + 8);
    v112 = (v24 + 32);
    v26 = MEMORY[0x277D84F90];
    while (v23 < *(v12 + 16))
    {
      v27 = *(v0 + 288);
      v28 = *(v0 + 280);
      v29 = *(v0 + 264);
      v132 = (*(v123 + 80) + 32) & ~*(v123 + 80);
      v30 = *(v123 + 72);
      (*(v123 + 16))(*(v0 + 344), v12 + v132 + v30 * v23, *(v0 + 296));
      sub_2330F20E0();
      (*v115)(v28, v117, v29);
      sub_2330E494C(&qword_27DDDDF58, 255, MEMORY[0x277D783B8]);
      sub_2330F27A0();
      sub_2330F27A0();
      v31 = *v113;
      (*v113)(v28, v29);
      v31(v27, v29);
      v32 = *(v0 + 344);
      if (*(v0 + 136) == *(v0 + 144))
      {
        v33 = *v112;
        (*v112)(*(v0 + 336), *(v0 + 344), *(v0 + 296));
        v136[0] = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2330AC6C0(0, *(v26 + 16) + 1, 1);
          v26 = v136[0];
        }

        v35 = *(v26 + 16);
        v34 = *(v26 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_2330AC6C0(v34 > 1, v35 + 1, 1);
          v26 = v136[0];
        }

        v36 = *(v0 + 336);
        v37 = *(v0 + 296);
        *(v26 + 16) = v35 + 1;
        v33(v26 + v132 + v35 * v30, v36, v37);
      }

      else
      {
        (*v111)(*(v0 + 344), *(v0 + 296));
      }

      if (v127 == ++v23)
      {
        goto LABEL_34;
      }
    }

LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v26 = MEMORY[0x277D84F90];
LABEL_34:
  *(v0 + 376) = v26;

  sub_233091CBC(v0 + 56);
  v38 = *(v26 + 16);
  *(v0 + 384) = v38;
  if (!v38)
  {
LABEL_47:

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    goto LABEL_48;
  }

  v39 = 0;
  v40 = *(v0 + 304);
  *(v0 + 464) = *(v40 + 80);
  *(v0 + 392) = *(v40 + 72);
  *(v0 + 400) = *(v40 + 16);
  v41 = MEMORY[0x277D78358];
  v42 = MEMORY[0x277D783A0];
  *(v0 + 468) = *MEMORY[0x277D78360];
  *(v0 + 472) = *v41;
  *(v0 + 476) = *v42;
  while (1)
  {
    v44 = *(v0 + 400);
    v45 = *(v0 + 328);
    v46 = *(v0 + 296);
    v47 = *(v0 + 248);
    v48 = *(v0 + 224);
    v49 = *(v0 + 232);
    v50 = *(v0 + 376) + ((*(v0 + 464) + 32) & ~*(v0 + 464)) + *(v0 + 392) * v39;
    v51 = (*(v0 + 304) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 408) = v39;
    *(v0 + 416) = v51;
    v44(v45, v50, v46);
    v52 = sub_2330F2210();
    v54 = v53;
    *(v0 + 424) = v53;
    sub_2330F2010();
    sub_2330F1DB0();

    if ((*(v49 + 48))(v47, 1, v48) != 1)
    {
      break;
    }

    sub_2330952BC(*(v0 + 248), &qword_27DDDE6D8, &unk_2330F6D40);
    sub_2330E4188();
    v55 = swift_allocError();
    swift_willThrow();

    if (qword_27DDDDBE8 != -1)
    {
      swift_once();
    }

    v56 = *(v0 + 416);
    v57 = *(v0 + 400);
    v58 = *(v0 + 328);
    v59 = *(v0 + 312);
    v60 = *(v0 + 296);
    v61 = sub_2330F23C0();
    __swift_project_value_buffer(v61, qword_27DDE18F0);
    v57(v59, v58, v60);
    v62 = v55;
    v63 = sub_2330F23A0();
    v64 = sub_2330F2960();

    v65 = os_log_type_enabled(v63, v64);
    v66 = *(v0 + 328);
    v67 = *(v0 + 312);
    v68 = *(v0 + 296);
    v69 = (*(v0 + 304) + 8);
    if (v65)
    {
      v133 = *(v0 + 328);
      v70 = *(v0 + 160);
      v124 = v64;
      v71 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v136[0] = v128;
      *v71 = 136315650;
      v72 = sub_2330F2F30();
      v74 = sub_233098F44(v72, v73, v136);

      *(v71 + 4) = v74;
      *(v71 + 12) = 2080;
      sub_2330E494C(&qword_27DDDE6D0, 255, MEMORY[0x277D783D0]);
      v75 = sub_2330F2D80();
      v77 = v76;
      v78 = *v69;
      (*v69)(v67, v68);
      v79 = sub_233098F44(v75, v77, v136);

      *(v71 + 14) = v79;
      *(v71 + 22) = 2112;
      v80 = v55;
      v81 = _swift_stdlib_bridgeErrorToNSError();
      *(v71 + 24) = v81;
      *v119 = v81;
      _os_log_impl(&dword_233084000, v63, v124, "%s failed to request TV content %s; error: %@", v71, 0x20u);
      sub_2330952BC(v119, &unk_27DDDE520, &qword_2330F4340);
      MEMORY[0x23839A490](v119, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23839A490](v128, -1, -1);
      MEMORY[0x23839A490](v71, -1, -1);

      v78(v133, v68);
    }

    else
    {

      v43 = *v69;
      (*v69)(v67, v68);
      v43(v66, v68);
    }

    v39 = *(v0 + 408) + 1;
    if (v39 == *(v0 + 384))
    {
      v91 = *(v0 + 376);
      goto LABEL_47;
    }
  }

  v82 = *(v0 + 468);
  v83 = *(v0 + 328);
  v85 = *(v0 + 208);
  v84 = *(v0 + 216);
  v86 = *(v0 + 192);
  v87 = *(v0 + 200);
  sub_2330F20D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE6E8, &unk_2330F6D50);
  v88 = *(sub_2330F1C90() - 8);
  v89 = *(v88 + 72);
  v134 = (*(v88 + 80) + 32) & ~*(v88 + 80);
  *(swift_allocObject() + 16) = xmmword_2330F46B0;
  (*(v87 + 16))(v85, v84, v86);
  v90 = (*(v87 + 88))(v85, v86);
  if (v90 == v82 || v90 == *(v0 + 472))
  {
    v103 = *(v0 + 248);
    v104 = *(v0 + 232);
    v126 = *(v0 + 240);
    v130 = *(v0 + 256);
    v105 = *(v0 + 224);
    v121 = *(v0 + 216);
    v107 = *(v0 + 192);
    v106 = *(v0 + 200);
    sub_2330F1C80();

    (*(v106 + 8))(v121, v107);
    sub_2330F1DC0();

    (*(v104 + 8))(v103, v105);
    (*(v104 + 32))(v130, v126, v105);
    (*(v104 + 56))(v130, 0, 1, v105);
    v108 = swift_task_alloc();
    *(v0 + 432) = v108;
    *v108 = v0;
    v108[1] = sub_2330E0874;
    v109 = *(v0 + 256);

    sub_2330EAAEC(v52, v54, v109, 0);
  }

  else
  {
    v110 = *(v0 + 192);

    sub_2330F2DB0();
  }
}

uint64_t sub_2330E0874()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v4 = *v1;
  *(*v1 + 440) = v0;

  v5 = v2[53];
  v6 = v2[32];
  v7 = v2[19];
  sub_2330952BC(v6, &qword_27DDDE6D8, &unk_2330F6D40);

  if (v0)
  {
    v8 = sub_2330E0C4C;
  }

  else
  {
    v8 = sub_2330E09E8;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2330E09E8()
{
  v1 = *(v0 + 476);
  v2 = *(v0 + 368);
  v3 = *(v0 + 328);
  v4 = *(v0 + 288);
  v5 = *(v0 + 264);
  v6 = *(v0 + 272);
  v7 = *(v0 + 184);
  sub_233093C70(v0 + 96);
  sub_2330F2040();
  sub_2330F2050();
  (*(v6 + 104))(v4, v1, v5);
  sub_2330F21B0();
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  v8 = swift_task_alloc();
  *(v0 + 448) = v8;
  *v8 = v0;
  v8[1] = sub_2330E0B20;
  v9 = *(v0 + 184);

  return sub_2330AB128(v9);
}

uint64_t sub_2330E0B20()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v4 = *v1;
  *(*v1 + 456) = v0;

  v5 = *(v2 + 152);
  if (v0)
  {
    v6 = sub_2330E1E7C;
  }

  else
  {
    v6 = sub_2330E141C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2330E0C4C()
{
  v87 = v0;
  v1 = 0x27DDDD000uLL;
  v2 = *(v0 + 440);
  while (1)
  {
    if (*(v1 + 3048) != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 416);
    v4 = *(v0 + 400);
    v5 = *(v0 + 328);
    v6 = *(v0 + 312);
    v7 = *(v0 + 296);
    v8 = sub_2330F23C0();
    __swift_project_value_buffer(v8, qword_27DDE18F0);
    v4(v6, v5, v7);
    v9 = v2;
    v10 = sub_2330F23A0();
    v11 = sub_2330F2960();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 328);
    v14 = *(v0 + 312);
    v15 = *(v0 + 296);
    v16 = (*(v0 + 304) + 8);
    if (v12)
    {
      v83 = *(v0 + 328);
      v17 = *(v0 + 160);
      v18 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v86[0] = v80;
      *v18 = 136315650;
      v19 = sub_2330F2F30();
      v74 = v11;
      v21 = sub_233098F44(v19, v20, v86);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      sub_2330E494C(&qword_27DDDE6D0, 255, MEMORY[0x277D783D0]);
      v22 = sub_2330F2D80();
      v24 = v23;
      v25 = *v16;
      (*v16)(v14, v15);
      v26 = sub_233098F44(v22, v24, v86);

      *(v18 + 14) = v26;
      *(v18 + 22) = 2112;
      v27 = v2;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 24) = v28;
      *v77 = v28;
      _os_log_impl(&dword_233084000, v10, v74, "%s failed to request TV content %s; error: %@", v18, 0x20u);
      sub_2330952BC(v77, &unk_27DDDE520, &qword_2330F4340);
      MEMORY[0x23839A490](v77, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23839A490](v80, -1, -1);
      v29 = v18;
      v1 = 0x27DDDD000;
      MEMORY[0x23839A490](v29, -1, -1);

      v25(v83, v15);
    }

    else
    {

      v30 = *v16;
      (*v16)(v14, v15);
      v30(v13, v15);
    }

    v31 = *(v0 + 408) + 1;
    if (v31 == *(v0 + 384))
    {
      break;
    }

    v32 = *(v0 + 400);
    v33 = *(v0 + 328);
    v34 = *(v0 + 296);
    v35 = *(v0 + 248);
    v36 = *(v0 + 224);
    v37 = *(v0 + 232);
    v38 = *(v0 + 376) + ((*(v0 + 464) + 32) & ~*(v0 + 464)) + *(v0 + 392) * v31;
    v39 = (*(v0 + 304) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 408) = v31;
    *(v0 + 416) = v39;
    v32(v33, v38, v34);
    v40 = sub_2330F2210();
    v42 = v41;
    *(v0 + 424) = v41;
    sub_2330F2010();
    sub_2330F1DB0();

    if ((*(v37 + 48))(v35, 1, v36) != 1)
    {
      v56 = *(v0 + 468);
      v57 = *(v0 + 328);
      v59 = *(v0 + 208);
      v58 = *(v0 + 216);
      v60 = *(v0 + 192);
      v61 = *(v0 + 200);
      sub_2330F20D0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE6E8, &unk_2330F6D50);
      v62 = *(sub_2330F1C90() - 8);
      v63 = *(v62 + 72);
      v85 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      *(swift_allocObject() + 16) = xmmword_2330F46B0;
      (*(v61 + 16))(v59, v58, v60);
      v64 = (*(v61 + 88))(v59, v60);
      if (v64 == v56 || v64 == *(v0 + 472))
      {
        v65 = *(v0 + 248);
        v66 = *(v0 + 232);
        v79 = *(v0 + 240);
        v82 = *(v0 + 256);
        v67 = *(v0 + 224);
        v76 = *(v0 + 216);
        v69 = *(v0 + 192);
        v68 = *(v0 + 200);
        sub_2330F1C80();

        (*(v68 + 8))(v76, v69);
        sub_2330F1DC0();

        (*(v66 + 8))(v65, v67);
        (*(v66 + 32))(v82, v79, v67);
        (*(v66 + 56))(v82, 0, 1, v67);
        v70 = swift_task_alloc();
        *(v0 + 432) = v70;
        *v70 = v0;
        v70[1] = sub_2330E0874;
        v71 = *(v0 + 256);

        return sub_2330EAAEC(v40, v42, v71, 0);
      }

      else
      {
        v72 = *(v0 + 192);

        return sub_2330F2DB0();
      }
    }

    sub_2330952BC(*(v0 + 248), &qword_27DDDE6D8, &unk_2330F6D40);
    sub_2330E4188();
    v2 = swift_allocError();
    swift_willThrow();
  }

  v43 = *(v0 + 376);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v45 = *(v0 + 352);
  v44 = *(v0 + 360);
  v47 = *(v0 + 336);
  v46 = *(v0 + 344);
  v49 = *(v0 + 320);
  v48 = *(v0 + 328);
  v50 = *(v0 + 312);
  v52 = *(v0 + 280);
  v51 = *(v0 + 288);
  v53 = *(v0 + 256);
  v73 = *(v0 + 248);
  v75 = *(v0 + 240);
  v78 = *(v0 + 216);
  v81 = *(v0 + 208);
  v84 = *(v0 + 184);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_2330E141C()
{
  v115 = v0;
  if (qword_27DDDDBE8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 416);
  v2 = *(v0 + 400);
  v3 = *(v0 + 320);
  v4 = *(v0 + 328);
  v5 = *(v0 + 296);
  v111 = sub_2330F23C0();
  __swift_project_value_buffer(v111, qword_27DDE18F0);
  v2(v3, v4, v5);
  v6 = sub_2330F23A0();
  v7 = sub_2330F2980();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 320);
  v10 = *(v0 + 328);
  v11 = *(v0 + 296);
  v12 = *(v0 + 304);
  v13 = *(v0 + 176);
  v14 = *(v0 + 184);
  v107 = *(v0 + 168);
  if (v8)
  {
    v95 = v7;
    v15 = *(v0 + 160);
    v103 = *(v0 + 184);
    v16 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v114[0] = v96;
    *v16 = 136315394;
    v17 = sub_2330F2F30();
    v99 = v10;
    v19 = sub_233098F44(v17, v18, v114);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    sub_2330E494C(&qword_27DDDE6D0, 255, MEMORY[0x277D783D0]);
    v20 = sub_2330F2D80();
    v22 = v21;
    v23 = *(v12 + 8);
    v23(v9, v11);
    v24 = sub_233098F44(v20, v22, v114);

    *(v16 + 14) = v24;
    _os_log_impl(&dword_233084000, v6, v95, "%s successfully requested TV content %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v96, -1, -1);
    MEMORY[0x23839A490](v16, -1, -1);

    (*(v13 + 8))(v103, v107);
    v23(v99, v11);
  }

  else
  {

    v25 = *(v12 + 8);
    v25(v9, v11);
    (*(v13 + 8))(v14, v107);
    v25(v10, v11);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  v26 = *(v0 + 408) + 1;
  if (v26 == *(v0 + 384))
  {
LABEL_7:
    v27 = *(v0 + 376);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    v29 = *(v0 + 352);
    v28 = *(v0 + 360);
    v31 = *(v0 + 336);
    v30 = *(v0 + 344);
    v33 = *(v0 + 320);
    v32 = *(v0 + 328);
    v34 = *(v0 + 312);
    v36 = *(v0 + 280);
    v35 = *(v0 + 288);
    v37 = *(v0 + 256);
    v97 = *(v0 + 248);
    v100 = *(v0 + 240);
    v104 = *(v0 + 216);
    v108 = *(v0 + 208);
    v112 = *(v0 + 184);

    v38 = *(v0 + 8);

    return v38();
  }

  else
  {
    while (1)
    {
      v52 = *(v0 + 400);
      v53 = *(v0 + 328);
      v54 = *(v0 + 296);
      v55 = *(v0 + 248);
      v56 = *(v0 + 224);
      v57 = *(v0 + 232);
      v58 = *(v0 + 376) + ((*(v0 + 464) + 32) & ~*(v0 + 464)) + *(v0 + 392) * v26;
      v59 = (*(v0 + 304) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      *(v0 + 408) = v26;
      *(v0 + 416) = v59;
      v52(v53, v58, v54);
      v60 = sub_2330F2210();
      v62 = v61;
      *(v0 + 424) = v61;
      sub_2330F2010();
      sub_2330F1DB0();

      if ((*(v57 + 48))(v55, 1, v56) != 1)
      {
        break;
      }

      sub_2330952BC(*(v0 + 248), &qword_27DDDE6D8, &unk_2330F6D40);
      sub_2330E4188();
      v63 = swift_allocError();
      swift_willThrow();

      if (qword_27DDDDBE8 != -1)
      {
        swift_once();
      }

      v64 = *(v0 + 416);
      v65 = *(v0 + 400);
      v66 = *(v0 + 328);
      v67 = *(v0 + 312);
      v68 = *(v0 + 296);
      __swift_project_value_buffer(v111, qword_27DDE18F0);
      v65(v67, v66, v68);
      v69 = v63;
      v70 = sub_2330F23A0();
      v71 = sub_2330F2960();

      v72 = os_log_type_enabled(v70, v71);
      v73 = *(v0 + 328);
      v74 = *(v0 + 312);
      v75 = *(v0 + 296);
      v76 = (*(v0 + 304) + 8);
      if (v72)
      {
        v101 = v71;
        v40 = *(v0 + 160);
        v109 = *(v0 + 328);
        v41 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v114[0] = v105;
        *v41 = 136315650;
        v42 = sub_2330F2F30();
        v44 = sub_233098F44(v42, v43, v114);

        *(v41 + 4) = v44;
        *(v41 + 12) = 2080;
        sub_2330E494C(&qword_27DDDE6D0, 255, MEMORY[0x277D783D0]);
        v45 = sub_2330F2D80();
        v47 = v46;
        v48 = *v76;
        (*v76)(v74, v75);
        v49 = sub_233098F44(v45, v47, v114);

        *(v41 + 14) = v49;
        *(v41 + 22) = 2112;
        v50 = v63;
        v51 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 24) = v51;
        *v98 = v51;
        _os_log_impl(&dword_233084000, v70, v101, "%s failed to request TV content %s; error: %@", v41, 0x20u);
        sub_2330952BC(v98, &unk_27DDDE520, &qword_2330F4340);
        MEMORY[0x23839A490](v98, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x23839A490](v105, -1, -1);
        MEMORY[0x23839A490](v41, -1, -1);

        v48(v109, v75);
      }

      else
      {

        v77 = *v76;
        (*v76)(v74, v75);
        v77(v73, v75);
      }

      v26 = *(v0 + 408) + 1;
      if (v26 == *(v0 + 384))
      {
        goto LABEL_7;
      }
    }

    v78 = *(v0 + 468);
    v79 = *(v0 + 328);
    v81 = *(v0 + 208);
    v80 = *(v0 + 216);
    v82 = *(v0 + 192);
    v83 = *(v0 + 200);
    sub_2330F20D0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE6E8, &unk_2330F6D50);
    v84 = *(sub_2330F1C90() - 8);
    v85 = *(v84 + 72);
    v113 = (*(v84 + 80) + 32) & ~*(v84 + 80);
    *(swift_allocObject() + 16) = xmmword_2330F46B0;
    (*(v83 + 16))(v81, v80, v82);
    v86 = (*(v83 + 88))(v81, v82);
    if (v86 == v78 || v86 == *(v0 + 472))
    {
      v87 = *(v0 + 248);
      v88 = *(v0 + 232);
      v106 = *(v0 + 240);
      v110 = *(v0 + 256);
      v89 = *(v0 + 224);
      v102 = *(v0 + 216);
      v91 = *(v0 + 192);
      v90 = *(v0 + 200);
      sub_2330F1C80();

      (*(v90 + 8))(v102, v91);
      sub_2330F1DC0();

      (*(v88 + 8))(v87, v89);
      (*(v88 + 32))(v110, v106, v89);
      (*(v88 + 56))(v110, 0, 1, v89);
      v92 = swift_task_alloc();
      *(v0 + 432) = v92;
      *v92 = v0;
      v92[1] = sub_2330E0874;
      v93 = *(v0 + 256);

      return sub_2330EAAEC(v60, v62, v93, 0);
    }

    else
    {
      v94 = *(v0 + 192);

      return sub_2330F2DB0();
    }
  }
}

uint64_t sub_2330E1E7C()
{
  v87 = v0;
  (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  v1 = 0x27DDDD000uLL;
  v2 = *(v0 + 456);
  while (1)
  {
    if (*(v1 + 3048) != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 416);
    v4 = *(v0 + 400);
    v5 = *(v0 + 328);
    v6 = *(v0 + 312);
    v7 = *(v0 + 296);
    v8 = sub_2330F23C0();
    __swift_project_value_buffer(v8, qword_27DDE18F0);
    v4(v6, v5, v7);
    v9 = v2;
    v10 = sub_2330F23A0();
    v11 = sub_2330F2960();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 328);
    v14 = *(v0 + 312);
    v15 = *(v0 + 296);
    v16 = (*(v0 + 304) + 8);
    if (v12)
    {
      v83 = *(v0 + 328);
      v17 = *(v0 + 160);
      v18 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v86[0] = v80;
      *v18 = 136315650;
      v19 = sub_2330F2F30();
      v74 = v11;
      v21 = sub_233098F44(v19, v20, v86);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      sub_2330E494C(&qword_27DDDE6D0, 255, MEMORY[0x277D783D0]);
      v22 = sub_2330F2D80();
      v24 = v23;
      v25 = *v16;
      (*v16)(v14, v15);
      v26 = sub_233098F44(v22, v24, v86);

      *(v18 + 14) = v26;
      *(v18 + 22) = 2112;
      v27 = v2;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 24) = v28;
      *v77 = v28;
      _os_log_impl(&dword_233084000, v10, v74, "%s failed to request TV content %s; error: %@", v18, 0x20u);
      sub_2330952BC(v77, &unk_27DDDE520, &qword_2330F4340);
      MEMORY[0x23839A490](v77, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23839A490](v80, -1, -1);
      v29 = v18;
      v1 = 0x27DDDD000;
      MEMORY[0x23839A490](v29, -1, -1);

      v25(v83, v15);
    }

    else
    {

      v30 = *v16;
      (*v16)(v14, v15);
      v30(v13, v15);
    }

    v31 = *(v0 + 408) + 1;
    if (v31 == *(v0 + 384))
    {
      break;
    }

    v32 = *(v0 + 400);
    v33 = *(v0 + 328);
    v34 = *(v0 + 296);
    v35 = *(v0 + 248);
    v36 = *(v0 + 224);
    v37 = *(v0 + 232);
    v38 = *(v0 + 376) + ((*(v0 + 464) + 32) & ~*(v0 + 464)) + *(v0 + 392) * v31;
    v39 = (*(v0 + 304) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 408) = v31;
    *(v0 + 416) = v39;
    v32(v33, v38, v34);
    v40 = sub_2330F2210();
    v42 = v41;
    *(v0 + 424) = v41;
    sub_2330F2010();
    sub_2330F1DB0();

    if ((*(v37 + 48))(v35, 1, v36) != 1)
    {
      v56 = *(v0 + 468);
      v57 = *(v0 + 328);
      v59 = *(v0 + 208);
      v58 = *(v0 + 216);
      v60 = *(v0 + 192);
      v61 = *(v0 + 200);
      sub_2330F20D0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE6E8, &unk_2330F6D50);
      v62 = *(sub_2330F1C90() - 8);
      v63 = *(v62 + 72);
      v85 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      *(swift_allocObject() + 16) = xmmword_2330F46B0;
      (*(v61 + 16))(v59, v58, v60);
      v64 = (*(v61 + 88))(v59, v60);
      if (v64 == v56 || v64 == *(v0 + 472))
      {
        v65 = *(v0 + 248);
        v66 = *(v0 + 232);
        v79 = *(v0 + 240);
        v82 = *(v0 + 256);
        v67 = *(v0 + 224);
        v76 = *(v0 + 216);
        v69 = *(v0 + 192);
        v68 = *(v0 + 200);
        sub_2330F1C80();

        (*(v68 + 8))(v76, v69);
        sub_2330F1DC0();

        (*(v66 + 8))(v65, v67);
        (*(v66 + 32))(v82, v79, v67);
        (*(v66 + 56))(v82, 0, 1, v67);
        v70 = swift_task_alloc();
        *(v0 + 432) = v70;
        *v70 = v0;
        v70[1] = sub_2330E0874;
        v71 = *(v0 + 256);

        return sub_2330EAAEC(v40, v42, v71, 0);
      }

      else
      {
        v72 = *(v0 + 192);

        return sub_2330F2DB0();
      }
    }

    sub_2330952BC(*(v0 + 248), &qword_27DDDE6D8, &unk_2330F6D40);
    sub_2330E4188();
    v2 = swift_allocError();
    swift_willThrow();
  }

  v43 = *(v0 + 376);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v45 = *(v0 + 352);
  v44 = *(v0 + 360);
  v47 = *(v0 + 336);
  v46 = *(v0 + 344);
  v49 = *(v0 + 320);
  v48 = *(v0 + 328);
  v50 = *(v0 + 312);
  v52 = *(v0 + 280);
  v51 = *(v0 + 288);
  v53 = *(v0 + 256);
  v73 = *(v0 + 248);
  v75 = *(v0 + 240);
  v78 = *(v0 + 216);
  v81 = *(v0 + 208);
  v84 = *(v0 + 184);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_2330E266C()
{
  *(v1 + 56) = v0;
  *(v1 + 64) = *v0;
  return MEMORY[0x2822009F8](sub_2330E26B4, v0, 0);
}

uint64_t sub_2330E26B4()
{
  v14 = v0;
  if (qword_27DDDDBE8 != -1)
  {
    swift_once();
  }

  v1 = sub_2330F23C0();
  __swift_project_value_buffer(v1, qword_27DDE18F0);
  v2 = sub_2330F23A0();
  v3 = sub_2330F2980();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = sub_2330F2F30();
    v9 = sub_233098F44(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_233084000, v2, v3, "%s fetching TV content requests", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x23839A490](v6, -1, -1);
    MEMORY[0x23839A490](v5, -1, -1);
  }

  v10 = *(v0[7] + 112);
  sub_233093C70((v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = sub_2330E2890;

  return TVContentRequestCloudKitCoordinator.fetchRequests()();
}

uint64_t sub_2330E2890(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  v4[10] = v1;

  v7 = v4[7];
  if (v1)
  {
    v8 = sub_2330E2A34;
  }

  else
  {
    v4[11] = a1;
    v8 = sub_2330E29CC;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2330E29CC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[11];

  return v1(v2);
}

uint64_t sub_2330E2A34()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[10];

  return v1();
}

uint64_t sub_2330E2A98(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  return MEMORY[0x2822009F8](sub_2330E2AE0, v1, 0);
}

uint64_t sub_2330E2AE0()
{
  v21 = v0;
  if (qword_27DDDDBE8 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_2330F23C0();
  __swift_project_value_buffer(v2, qword_27DDE18F0);

  v3 = sub_2330F23A0();
  v4 = sub_2330F2980();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315394;
    v9 = sub_2330F2F30();
    v11 = sub_233098F44(v9, v10, &v20);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = sub_2330F2110();
    v13 = MEMORY[0x2383995E0](v6, v12);
    v15 = sub_233098F44(v13, v14, &v20);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_233084000, v3, v4, "%s updating requests %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v8, -1, -1);
    MEMORY[0x23839A490](v7, -1, -1);
  }

  v16 = *(v0[8] + 112);
  sub_233093C70((v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v17 = swift_task_alloc();
  v0[10] = v17;
  *v17 = v0;
  v17[1] = sub_2330E2D20;
  v18 = v0[7];

  return sub_2330AA834(v18);
}

uint64_t sub_2330E2D20()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_2330E2E4C;
  }

  else
  {
    v6 = sub_23308B1BC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2330E2E4C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[11];

  return v1();
}

uint64_t sub_2330E2EB0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  v3 = sub_2330F2110();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2330E2F98, v1, 0);
}

uint64_t sub_2330E2F98()
{
  v27 = v0;
  if (qword_27DDDDBE8 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v5 = sub_2330F23C0();
  __swift_project_value_buffer(v5, qword_27DDE18F0);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_2330F23A0();
  v7 = sub_2330F2980();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[10];
  if (v8)
  {
    v12 = v0[9];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = v14;
    *v13 = 136315394;
    v15 = sub_2330F2F30();
    v17 = sub_233098F44(v15, v16, &v26);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    sub_2330E494C(&qword_27DDDE6D0, 255, MEMORY[0x277D783D0]);
    v18 = sub_2330F2D80();
    v20 = v19;
    (*(v10 + 8))(v9, v11);
    v21 = sub_233098F44(v18, v20, &v26);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_233084000, v6, v7, "%s starting TV content request %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v14, -1, -1);
    MEMORY[0x23839A490](v13, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v22 = *(v0[8] + 112);
  sub_233093C70((v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v23 = swift_task_alloc();
  v0[13] = v23;
  *v23 = v0;
  v23[1] = sub_2330E3274;
  v24 = v0[7];

  return TVContentRequestCloudKitCoordinator.startRequest(_:)(v24);
}

uint64_t sub_2330E3274()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_2330E3410;
  }

  else
  {
    v6 = sub_2330E33A0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2330E33A0()
{
  v1 = v0[12];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_2330E3410()
{
  v1 = v0[12];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

uint64_t sub_2330E3480(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v3[10] = *v2;
  v4 = sub_2330F2110();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v7 = sub_2330F2290();
  v3[14] = v7;
  v8 = *(v7 - 8);
  v3[15] = v8;
  v9 = *(v8 + 64) + 15;
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2330E35C8, v2, 0);
}

uint64_t sub_2330E35C8()
{
  v27 = v0;
  if (qword_27DDDDBE8 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[8];
  v5 = sub_2330F23C0();
  __swift_project_value_buffer(v5, qword_27DDE18F0);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_2330F23A0();
  v7 = sub_2330F2980();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[14];
  if (v8)
  {
    v12 = v0[10];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = v14;
    *v13 = 136315394;
    v15 = sub_2330F2F30();
    v17 = sub_233098F44(v15, v16, &v26);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    sub_2330E494C(&qword_27DDDE6C8, 255, MEMORY[0x277D78458]);
    v18 = sub_2330F2D80();
    v20 = v19;
    (*(v10 + 8))(v9, v11);
    v21 = sub_233098F44(v18, v20, &v26);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_233084000, v6, v7, "%s fetching TV content request status for identifier: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v14, -1, -1);
    MEMORY[0x23839A490](v13, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v22 = *(v0[9] + 112);
  sub_233093C70((v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v23 = swift_task_alloc();
  v0[17] = v23;
  *v23 = v0;
  v23[1] = sub_2330E389C;
  v24 = v0[8];

  return sub_2330AB958(v24);
}

uint64_t sub_2330E389C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v7 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v5 = sub_2330E3A8C;
  }

  else
  {
    v5 = sub_2330E39B0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2330E39B0()
{
  v1 = *(v0 + 152);
  sub_2330E69E8(*(v0 + 144), *(v0 + 104));
  v2 = *(v0 + 144);
  if (v1)
  {

    *(v0 + 160) = v1;
    v3 = *(v0 + 72);
    v4 = sub_2330E3B2C;
  }

  else
  {
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);
    v7 = *(v0 + 88);
    v8 = *(v0 + 72);
    v9 = *(v0 + 56);
    sub_2330F20E0();

    (*(v6 + 8))(v5, v7);
    v4 = sub_2330E3AB0;
    v3 = v8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2330E3AB0()
{
  v1 = v0[16];
  v2 = v0[13];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_2330E3B2C()
{
  v1 = v0[16];
  v2 = v0[13];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v3 = v0[1];
  v4 = v0[20];

  return v3();
}

uint64_t sub_2330E3BA8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  v3 = sub_2330F21D0();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2330E3C90, v1, 0);
}

uint64_t sub_2330E3C90()
{
  v27 = v0;
  if (qword_27DDDDBE8 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v5 = sub_2330F23C0();
  __swift_project_value_buffer(v5, qword_27DDE18F0);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_2330F23A0();
  v7 = sub_2330F2980();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[10];
  if (v8)
  {
    v12 = v0[9];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = v14;
    *v13 = 136315394;
    v15 = sub_2330F2F30();
    v17 = sub_233098F44(v15, v16, &v26);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    sub_2330E494C(&qword_27DDDE6C0, 255, MEMORY[0x277D78438]);
    v18 = sub_2330F2D80();
    v20 = v19;
    (*(v10 + 8))(v9, v11);
    v21 = sub_233098F44(v18, v20, &v26);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_233084000, v6, v7, "%s updating TV content request status %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v14, -1, -1);
    MEMORY[0x23839A490](v13, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v22 = *(v0[8] + 112);
  sub_233093C70((v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v23 = swift_task_alloc();
  v0[13] = v23;
  *v23 = v0;
  v23[1] = sub_2330E3F68;
  v24 = v0[7];

  return sub_2330AB128(v24);
}

uint64_t sub_2330E3F68()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_2330E4C5C;
  }

  else
  {
    v6 = sub_2330E4C60;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2330E4094()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2330E40F8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_233088E00;

  return sub_2330DD104();
}

unint64_t sub_2330E4188()
{
  result = qword_27DDDE6E0;
  if (!qword_27DDDE6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE6E0);
  }

  return result;
}

uint64_t sub_2330E41DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2330A8008;

  return sub_2330DE2A0();
}

uint64_t sub_2330E426C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2330A89E0;

  return sub_2330A1E08(v2);
}

uint64_t sub_2330E4318(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_233088E00;

  return sub_2330A2020(a1, v5);
}

unint64_t sub_2330E43D0()
{
  result = qword_27DDDE6F0;
  if (!qword_27DDDE6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDDDF40, &qword_2330F6D90);
    v1 = MEMORY[0x277D783D0];
    sub_2330E494C(&qword_27DDDE6F8, 255, MEMORY[0x277D783D0]);
    sub_2330E494C(&qword_27DDDE700, 255, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE6F0);
  }

  return result;
}

uint64_t sub_2330E44CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_233088E00;

  return sub_2330DE330(a1);
}

uint64_t sub_2330E4564(uint64_t *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_233088E00;

  return sub_2330DE3C8(a1, v5);
}

uint64_t sub_2330E4618(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_233088E00;

  return sub_2330DE4BC(a1);
}

uint64_t sub_2330E46B0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2330877C8;

  return sub_2330DE554(a1, a2);
}

uint64_t sub_2330E475C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_233088E00;

  return sub_2330DE600(a1, a2, v7);
}

uint64_t sub_2330E4824(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_233088E00;

  return sub_2330DE8D4(a1);
}

uint64_t sub_2330E48BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233088E00;

  return sub_2330DE96C();
}

uint64_t sub_2330E494C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2330E4994(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_233088E00;

  return sub_2330DE9FC(a1, v4, v5, v6);
}

uint64_t sub_2330E4A48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2330877C8;

  return sub_2330DEBDC();
}

uint64_t sub_2330E4AD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233088E00;

  return sub_2330DE96C();
}

uint64_t objectdestroy_49Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2330E4BA8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_233088E00;

  return sub_2330DEC6C();
}

uint64_t sub_2330E4C64()
{
  v2 = sub_2330F2230();
  v3 = v0;

  MEMORY[0x2383994D0](0x63696669746F6E2ELL, 0xED00006E6F697461);

  qword_27DDDE710 = v2;
  *algn_27DDDE718 = v3;
  return result;
}

uint64_t sub_2330E4CDC(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2330E4D6C, 0, 0);
}

uint64_t sub_2330E4D6C()
{
  v37 = v0;
  v36[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 32);
  v2 = objc_opt_self();
  v3 = sub_2330F2520();
  *(v0 + 16) = 0;
  v4 = [v2 dataWithJSONObject:v3 options:0 error:v0 + 16];

  v5 = *(v0 + 16);
  if (v4)
  {
    v6 = sub_2330F1E00();
    v8 = v7;

    *(v0 + 48) = v6;
    *(v0 + 56) = v8;
    v9 = sub_2330F1C60();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    sub_2330F1C50();
    sub_2330E5C70();
    sub_2330F1C40();

    v14 = sub_2330E638C(*(v0 + 24));
    v16 = v15;
    v18 = v17;
    v20 = v19;
    *(v0 + 64) = v15;
    *(v0 + 72) = v19;

    v33 = swift_task_alloc();
    *(v0 + 80) = v33;
    *v33 = v0;
    v33[1] = sub_2330E519C;
    v34 = *(v0 + 40);
    v35 = *MEMORY[0x277D85DE8];

    return sub_2330E5780(v14, v16, v18, v20, v34);
  }

  else
  {
    v12 = v5;
    v13 = sub_2330F1D60();

    swift_willThrow();
    if (qword_2814EADA8 != -1)
    {
      swift_once();
    }

    v21 = sub_2330F23C0();
    __swift_project_value_buffer(v21, qword_2814EBDE0);
    v22 = v13;
    v23 = sub_2330F23A0();
    v24 = sub_2330F2960();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v36[0] = v27;
      *v25 = 136315394;
      *(v25 + 4) = sub_233098F44(0xD00000000000001DLL, 0x80000002330F6E50, v36);
      *(v25 + 12) = 2112;
      v28 = v13;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v29;
      *v26 = v29;
      _os_log_impl(&dword_233084000, v23, v24, "%s failed to post notification: %@", v25, 0x16u);
      sub_2330952BC(v26, &unk_27DDDE520, &qword_2330F4340);
      MEMORY[0x23839A490](v26, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x23839A490](v27, -1, -1);
      MEMORY[0x23839A490](v25, -1, -1);
    }

    else
    {
    }

    v30 = *(v0 + 8);
    v31 = *MEMORY[0x277D85DE8];

    return v30();
  }
}

uint64_t sub_2330E519C(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *(*v2 + 80);
  v11 = *v2;
  v3[11] = a1;
  v3[12] = v1;

  if (v1)
  {
    v5 = sub_2330E5534;
  }

  else
  {
    v6 = v3[8];
    v7 = v3[9];

    v5 = sub_2330E52F4;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2330E52F4()
{
  v18 = v0;
  v17[1] = *MEMORY[0x277D85DE8];
  if (qword_2814EADA8 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = sub_2330F23C0();
  __swift_project_value_buffer(v2, qword_2814EBDE0);
  v3 = v1;
  v4 = sub_2330F23A0();
  v5 = sub_2330F2980();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  v9 = v0[6];
  v8 = v0[7];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17[0] = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_233098F44(0xD00000000000001DLL, 0x80000002330F6E50, v17);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v7;
    v13 = v7;
    _os_log_impl(&dword_233084000, v4, v5, "%s successfully posted notification request: %@", v10, 0x16u);
    sub_2330952BC(v11, &unk_27DDDE520, &qword_2330F4340);
    MEMORY[0x23839A490](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x23839A490](v12, -1, -1);
    MEMORY[0x23839A490](v10, -1, -1);

    sub_2330B52A8(v9, v8);
  }

  else
  {
    sub_2330B52A8(v0[6], v0[7]);
  }

  v14 = v0[1];
  v15 = *MEMORY[0x277D85DE8];

  return v14();
}

uint64_t sub_2330E5534()
{
  v19 = v0;
  v18[1] = *MEMORY[0x277D85DE8];
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];

  sub_2330B52A8(v4, v3);
  v5 = v0[12];
  if (qword_2814EADA8 != -1)
  {
    swift_once();
  }

  v6 = sub_2330F23C0();
  __swift_project_value_buffer(v6, qword_2814EBDE0);
  v7 = v5;
  v8 = sub_2330F23A0();
  v9 = sub_2330F2960();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18[0] = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_233098F44(0xD00000000000001DLL, 0x80000002330F6E50, v18);
    *(v10 + 12) = 2112;
    v13 = v5;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_233084000, v8, v9, "%s failed to post notification: %@", v10, 0x16u);
    sub_2330952BC(v11, &unk_27DDDE520, &qword_2330F4340);
    MEMORY[0x23839A490](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x23839A490](v12, -1, -1);
    MEMORY[0x23839A490](v10, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];
  v16 = *MEMORY[0x277D85DE8];

  return v15();
}

uint64_t sub_2330E5780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return MEMORY[0x2822009F8](sub_2330E57A8, 0, 0);
}

uint64_t sub_2330E57A8()
{
  v1 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  v0[23] = v5;
  v6 = sub_2330F25C0();
  [v5 setTitle_];

  v7 = sub_2330F25C0();
  [v5 setBody_];

  if (qword_27DDDDC18 != -1)
  {
    swift_once();
  }

  v8 = v0[22];
  v9 = v5;
  v10 = sub_2330F25C0();
  v11 = [objc_opt_self() requestWithIdentifier:v10 content:v9 trigger:0];
  v0[24] = v11;

  v0[2] = v0;
  v0[3] = sub_2330E59D4;
  v12 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE728, &unk_2330F6EA0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2330E5BC4;
  v0[13] = &block_descriptor_10;
  v0[14] = v12;
  [v8 addNotificationRequest:v11 withCompletionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2330E59D4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_2330E5B4C;
  }

  else
  {
    v3 = sub_2330E5AE4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2330E5AE4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 192);

  return v1(v2);
}

uint64_t sub_2330E5B4C()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[25];

  return v4();
}

uint64_t sub_2330E5BC4(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE470, &qword_2330F46A0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

unint64_t sub_2330E5C70()
{
  result = qword_27DDDE720;
  if (!qword_27DDDE720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE720);
  }

  return result;
}

uint64_t sub_2330E5CC4(uint64_t a1)
{
  v2 = sub_2330F1F40();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2330F1F60();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE730, &unk_2330F6EB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v57 - v17;
  v19 = sub_2330F1F10();
  sub_2330F1F20();
  sub_2330F1F50();
  (*(v9 + 8))(v13, v8);
  sub_2330F1F30();
  (*(v3 + 8))(v7, v2);
  v20 = sub_2330F1F00();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v18, 1, v20) == 1)
  {
    sub_2330952BC(v18, &qword_27DDDE730, &unk_2330F6EB0);
    v58 = 0;
    v59 = 0;
    v22 = MEMORY[0x277D84F90];
  }

  else
  {
    v23 = sub_2330F1EF0();
    v25 = v24;
    (*(v21 + 8))(v18, v20);
    v58 = v23;
    v59 = v25;
    if (v25)
    {

      v22 = MEMORY[0x277D84F90];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_233098C38(0, *(v22 + 2) + 1, 1, v22);
      }

      v27 = *(v22 + 2);
      v26 = *(v22 + 3);
      if (v27 >= v26 >> 1)
      {
        v22 = sub_233098C38((v26 > 1), v27 + 1, 1, v22);
      }

      *(v22 + 2) = v27 + 1;
      v28 = &v22[16 * v27];
      *(v28 + 4) = v23;
      *(v28 + 5) = v25;
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
    }
  }

  v29 = 0x53552D6E65;
  sub_2330952BC(&v58, &qword_27DDDDED8, &qword_2330F4710);
  v60 = v19;
  sub_23309E364(v22);
  v30 = v60;
  v31 = *(v60 + 16);
  if (v31)
  {
    v32 = 0;
    v33 = (v60 + 40);
    while (v32 < *(v30 + 16))
    {
      if (*(a1 + 16))
      {
        v34 = *(v33 - 1);
        v19 = *v33;

        sub_2330AD10C(v34, v19);
        if (v35)
        {
          v29 = v34;
          goto LABEL_19;
        }
      }

      ++v32;
      v33 += 2;
      if (v31 == v32)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

LABEL_17:
  v19 = 0xE500000000000000;
LABEL_19:

  if (qword_2814EADA8 != -1)
  {
LABEL_31:
    swift_once();
  }

  v36 = sub_2330F23C0();
  __swift_project_value_buffer(v36, qword_2814EBDE0);

  v37 = sub_2330F23A0();
  v38 = sub_2330F2980();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v60 = v40;
    *v39 = 136315394;
    *(v39 + 4) = sub_233098F44(0xD00000000000001DLL, 0x80000002330F6E50, &v60);
    *(v39 + 12) = 2080;
    *(v39 + 14) = sub_233098F44(v29, v19, &v60);
    _os_log_impl(&dword_233084000, v37, v38, "%s chosen language: %s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v40, -1, -1);
    MEMORY[0x23839A490](v39, -1, -1);
  }

  if (*(a1 + 16) && (v41 = sub_2330AD10C(v29, v19), (v42 & 1) != 0))
  {
    v43 = v41;

    v44 = (*(a1 + 56) + 32 * v43);
    v46 = *v44;
    v45 = v44[1];
    v47 = v44[2];
    v48 = v44[3];
  }

  else
  {

    v49 = sub_2330F23A0();
    v50 = sub_2330F2970();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v60 = v52;
      *v51 = 136315394;
      *(v51 + 4) = sub_233098F44(0xD00000000000001DLL, 0x80000002330F6E50, &v60);
      *(v51 + 12) = 2080;
      v53 = sub_233098F44(v29, v19, &v60);

      *(v51 + 14) = v53;
      _os_log_impl(&dword_233084000, v49, v50, "%s missing localization for language: %s", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23839A490](v52, -1, -1);
      MEMORY[0x23839A490](v51, -1, -1);
    }

    else
    {
    }

    sub_2330E68B4();
    v54 = swift_allocError();
    *v55 = 0;
    v46 = v54;
    swift_willThrow();
  }

  return v46;
}

NSObject *sub_2330E638C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE730, &unk_2330F6EB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v41 - v6;
  v8 = sub_2330F1F60();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2330F1F40();
  v14 = *(v42 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v42, v16);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2330F1F20();
  sub_2330F1F50();
  (*(v9 + 8))(v13, v8);
  sub_2330F1F30();
  v19 = sub_2330F1F00();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v7, 1, v19) == 1)
  {
    sub_2330952BC(v7, &qword_27DDDE730, &unk_2330F6EB0);
    if (qword_2814EADA8 != -1)
    {
      swift_once();
    }

    v21 = sub_2330F23C0();
    __swift_project_value_buffer(v21, qword_2814EBDE0);
    v22 = sub_2330F23A0();
    v23 = sub_2330F2980();
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_15;
    }

    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v43 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_233098F44(0xD00000000000001DLL, 0x80000002330F6E50, &v43);
    v26 = "%s No identifier for current language found";
    goto LABEL_14;
  }

  v27 = sub_2330F1EF0();
  v29 = v28;
  (*(v20 + 8))(v7, v19);
  if (*(a1 + 16))
  {
    v30 = sub_2330AD10C(v27, v29);
    v32 = v31;

    if (v32)
    {
      v33 = *(a1 + 56) + 32 * v30;
      v22 = *v33;
      v34 = *(v33 + 8);
      v35 = *(v33 + 16);
      v36 = *(v33 + 24);
      v37 = *(v14 + 8);

      v37(v18, v42);
      return v22;
    }
  }

  else
  {
  }

  if (qword_2814EADA8 != -1)
  {
    swift_once();
  }

  v38 = sub_2330F23C0();
  __swift_project_value_buffer(v38, qword_2814EBDE0);
  v22 = sub_2330F23A0();
  v23 = sub_2330F2970();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v43 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_233098F44(0xD00000000000001DLL, 0x80000002330F6E50, &v43);
    v26 = "%s missing localization for primary language";
LABEL_14:
    _os_log_impl(&dword_233084000, v22, v23, v26, v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x23839A490](v25, -1, -1);
    MEMORY[0x23839A490](v24, -1, -1);
  }

LABEL_15:

  v39 = sub_2330E5CC4(a1);
  if (!v1)
  {
    v22 = v39;
  }

  (*(v14 + 8))(v18, v42);
  return v22;
}

unint64_t sub_2330E68B4()
{
  result = qword_27DDDE738;
  if (!qword_27DDDE738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE738);
  }

  return result;
}

unint64_t sub_2330E692C()
{
  result = qword_27DDDE740;
  if (!qword_27DDDE740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE740);
  }

  return result;
}

unint64_t sub_2330E6994()
{
  result = qword_27DDDE748;
  if (!qword_27DDDE748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE748);
  }

  return result;
}

void sub_2330E69E8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE758, &qword_2330F7068);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v90 = v85 - v6;
  v7 = sub_2330F2090();
  v8 = *(v7 - 8);
  v92 = v7;
  v93 = v8;
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v88 = v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v91 = v85 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE760, &qword_2330F7070);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v19 = v85 - v18;
  v20 = sub_2330F20C0();
  v95 = *(v20 - 8);
  v96 = v20;
  v21 = *(v95 + 64);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v87 = v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v94 = v85 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE768, &qword_2330F7078);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8, v29);
  v31 = v85 - v30;
  v32 = sub_2330F2290();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32, v35);
  v97 = v85 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2330F2AA0() == 0xD000000000000010 && 0x80000002330F7DC0 == v37)
  {
  }

  else
  {
    v38 = sub_2330F2DC0();

    if ((v38 & 1) == 0)
    {
LABEL_24:
      sub_2330E7C34();
      swift_allocError();
      swift_willThrow();

      return;
    }
  }

  v39 = [a1 recordID];
  v40 = [v39 recordName];

  sub_2330F25F0();
  sub_2330B1790(v31);

  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    sub_2330952BC(v31, &qword_27DDDE768, &qword_2330F7078);
    goto LABEL_24;
  }

  v41 = v97;
  (*(v33 + 32))(v97, v31, v32);
  v42 = [a1 encryptedValues];
  v43 = sub_2330F25C0();
  v44 = [v42 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v44 || (v100 = v44, v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE270, &qword_2330F4C70), (swift_dynamicCast() & 1) == 0))
  {
    (*(v33 + 8))(v41, v32);
    goto LABEL_24;
  }

  v86 = v45;
  v46 = v99;
  v85[9] = v98;
  v47 = [a1 encryptedValues];
  v48 = sub_2330F25C0();
  v49 = [v47 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v49 || (v85[10] = v46, v100 = v49, (swift_dynamicCast() & 1) == 0))
  {
    (*(v33 + 8))(v97, v32);
LABEL_23:

    goto LABEL_24;
  }

  v50 = v99;
  v85[8] = v98;
  v51 = [a1 encryptedValues];
  v52 = sub_2330F25C0();
  v53 = [v51 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v53 || (v100 = v53, (swift_dynamicCast() & 1) == 0))
  {
    (*(v33 + 8))(v97, v32);
LABEL_22:

    goto LABEL_23;
  }

  v85[7] = v50;
  v54 = v99;
  v85[5] = v98;
  v55 = [a1 encryptedValues];
  v56 = sub_2330F25C0();
  v57 = [v55 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v57 || (v85[6] = v54, v98 = v57, v58 = swift_dynamicCast(), v59 = v97, (v58 & 1) == 0))
  {
    (*(v33 + 8))(v97, v32);

    goto LABEL_22;
  }

  sub_2330F20A0();
  v60 = v95;
  v61 = v96;
  if ((*(v95 + 48))(v19, 1, v96) == 1)
  {
    (*(v33 + 8))(v59, v32);

    sub_2330952BC(v19, &qword_27DDDE760, &qword_2330F7070);
    goto LABEL_24;
  }

  (*(v60 + 32))(v94, v19, v61);
  v62 = [a1 encryptedValues];
  v63 = sub_2330F25C0();
  v64 = v60;
  v65 = [v62 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v65)
  {

    (*(v64 + 8))(v94, v96);
LABEL_42:
    (*(v33 + 8))(v97, v32);
    goto LABEL_24;
  }

  v98 = v65;
  v66 = swift_dynamicCast();
  v67 = v97;
  if ((v66 & 1) == 0)
  {

    (*(v95 + 8))(v94, v96);
    (*(v33 + 8))(v67, v32);
    goto LABEL_24;
  }

  v68 = v90;
  sub_2330F2070();
  v70 = v92;
  v69 = v93;
  if ((*(v93 + 48))(v68, 1, v92) == 1)
  {

    (*(v95 + 8))(v94, v96);
    (*(v33 + 8))(v67, v32);
    sub_2330952BC(v68, &qword_27DDDE758, &qword_2330F7068);
    goto LABEL_24;
  }

  (*(v69 + 32))(v91, v68, v70);
  v71 = [a1 encryptedValues];
  v72 = sub_2330F25C0();
  v73 = [v71 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v73 || (v98 = v73, (swift_dynamicCast() & 1) == 0) || v100 != 1)
  {

    (*(v93 + 8))(v91, v70);
    (*(v95 + 8))(v94, v96);
    goto LABEL_42;
  }

  v74 = [a1 encryptedValues];
  v75 = sub_2330F25C0();
  v76 = [v74 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v76)
  {
    v100 = v76;
    v77 = swift_dynamicCast();
    v78 = v98;
    if (!v77)
    {
      v78 = 0;
    }

    v90 = v78;
    if (v77)
    {
      v79 = v99;
    }

    else
    {
      v79 = 0;
    }

    v86 = v79;
  }

  else
  {
    v90 = 0;
    v86 = 0;
  }

  v85[4] = sub_2330F2250();
  v85[3] = v80;
  v85[2] = sub_2330F2260();
  v85[1] = v81;
  v82 = v93;
  (*(v93 + 16))(v88, v91, v92);
  v84 = v94;
  v83 = v95;
  (*(v95 + 16))(v87, v94, v96);
  sub_2330F2030();

  (*(v82 + 8))(v91, v92);
  (*(v83 + 8))(v84, v96);
  (*(v33 + 8))(v97, v32);
}

void *sub_2330E7684()
{
  v0 = sub_2330F20C0();
  v44 = *(v0 - 8);
  v45 = v0;
  v1 = *(v44 + 64);
  MEMORY[0x28223BE20](v0, v2);
  v43 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2330F2090();
  v4 = *(v42 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v42, v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2330F2290();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2330F2020();
  sub_233099620(0, &qword_2814EAC90, 0x277CBC5F8);
  v15 = *MEMORY[0x277CBBF28];
  sub_2330F25F0();
  sub_2330F2990();
  sub_233099620(0, &qword_27DDDDE80, 0x277CBC5D0);
  sub_2330F2280();
  v16 = sub_2330F2920();
  (*(v10 + 8))(v14, v9);
  sub_233099620(0, &qword_27DDDDFA0, 0x277CBC5A0);
  v41 = v16;
  v17 = sub_2330F2A90();
  v18 = [v17 encryptedValues];
  swift_getObjectType();
  v19 = sub_2330F2010();
  v20 = MEMORY[0x277D837D0];
  v21 = MEMORY[0x277CBBE08];
  v49 = MEMORY[0x277D837D0];
  v50 = MEMORY[0x277CBBE08];
  v46 = v19;
  v47 = v22;
  sub_2330F2A30();
  swift_unknownObjectRelease();
  v23 = [v17 encryptedValues];
  swift_getObjectType();
  v24 = sub_2330F20F0();
  v49 = v20;
  v50 = v21;
  v46 = v24;
  v47 = v25;
  sub_2330F2A30();
  swift_unknownObjectRelease();
  v26 = [v17 encryptedValues];
  swift_getObjectType();
  v27 = sub_2330F2060();
  v49 = v20;
  v50 = v21;
  v46 = v27;
  v47 = v28;
  sub_2330F2A30();
  swift_unknownObjectRelease();
  [v17 encryptedValues];
  v29 = sub_2330F2100();
  if (v30)
  {
    v31 = MEMORY[0x277CBBE08];
    v32 = MEMORY[0x277D837D0];
  }

  else
  {
    v29 = 0;
    v32 = 0;
    v31 = 0;
    v48 = 0;
  }

  v46 = v29;
  v47 = v30;
  v49 = v32;
  v50 = v31;
  swift_getObjectType();
  sub_2330F2A30();
  swift_unknownObjectRelease();
  v33 = [v17 encryptedValues];
  swift_getObjectType();
  sub_2330F20D0();
  v34 = sub_2330F2080();
  (*(v4 + 8))(v8, v42);
  v35 = MEMORY[0x277D83B88];
  v36 = MEMORY[0x277CBBE20];
  v49 = MEMORY[0x277D83B88];
  v50 = MEMORY[0x277CBBE20];
  v46 = v34;
  sub_2330F2A30();
  swift_unknownObjectRelease();
  [v17 encryptedValues];
  swift_getObjectType();
  v37 = v43;
  sub_2330F20E0();
  v38 = sub_2330F20B0();
  (*(v44 + 8))(v37, v45);
  v49 = v35;
  v50 = v36;
  v46 = v38;
  sub_2330F2A30();
  swift_unknownObjectRelease();
  v39 = [v17 encryptedValues];
  swift_getObjectType();
  v49 = v35;
  v50 = v36;
  v46 = 1;
  sub_2330F2A30();
  swift_unknownObjectRelease();

  return v17;
}

unint64_t sub_2330E7C34()
{
  result = qword_27DDDE770;
  if (!qword_27DDDE770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE770);
  }

  return result;
}

unint64_t sub_2330E7C9C()
{
  result = qword_27DDDE780;
  if (!qword_27DDDE780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE780);
  }

  return result;
}

uint64_t UserCloudKitCoordinator.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AsyncLock();
  v2 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v2 + 112) = 0;
  *a1 = v2;
  return result;
}

uint64_t sub_2330E7D44()
{
  *(v1 + 16) = *v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2330E7DDC;

  return sub_2330E800C();
}

uint64_t sub_2330E7DDC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  v7 = *v2;
  *(v3 + 32) = a1;
  *(v3 + 40) = v1;

  if (v1)
  {
    v5 = sub_2330E7FF4;
  }

  else
  {
    v5 = sub_2330E7EF0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2330E7EF0()
{
  v1 = *(v0 + 40);
  v2 = sub_2330DBCF4(*(v0 + 32));
  v4 = v3;

  if (v1)
  {

LABEL_3:
    v5 = *(v0 + 32);
    sub_2330E9430();
    swift_allocError();
    swift_willThrow();

    v6 = *(v0 + 8);

    return v6();
  }

  if (!v4)
  {
    goto LABEL_3;
  }

  v8 = *(v0 + 8);

  return v8(v2, v4);
}

uint64_t sub_2330E8030()
{
  if (qword_2814EB0E0 != -1)
  {
    swift_once();
  }

  v1 = qword_2814EB0E8;
  v0[39] = qword_2814EB0E8;
  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = sub_2330E8180;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE798, &unk_2330F71A0);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_2330B8688;
  v0[21] = &block_descriptor_11;
  v0[22] = v2;
  [v1 fetchUserRecordIDWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2330E8180()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 320) = v2;
  if (v2)
  {
    v3 = sub_2330E8988;
  }

  else
  {
    v3 = sub_2330E8290;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2330E8290()
{
  v1 = v0[39];
  v2 = v0[34];
  v0[41] = v2;
  v3 = [v1 privateCloudDatabase];
  v0[42] = v3;
  v0[10] = v0;
  v0[15] = v0 + 37;
  v0[11] = sub_2330E83DC;
  v4 = swift_continuation_init();
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDFE0, &qword_2330F4DD8);
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_2330B8688;
  v0[29] = &block_descriptor_12_0;
  v0[30] = v4;
  [v3 fetchRecordWithID:v2 completionHandler:v0 + 26];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_2330E83DC()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 344) = v2;
  if (v2)
  {
    v3 = sub_2330E8BEC;
  }

  else
  {
    v3 = sub_2330E84EC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2330E84EC()
{
  v15 = v0;
  v1 = *(v0 + 296);

  if (qword_2814EAD70 != -1)
  {
    swift_once();
  }

  v2 = sub_2330F23C0();
  __swift_project_value_buffer(v2, qword_2814EBD68);
  v3 = v1;
  v4 = sub_2330F23A0();
  v5 = sub_2330F2960();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 328);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_233098F44(0xD000000000000017, 0x80000002330F7150, &v14);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v3;
    *v9 = v3;
    v11 = v3;
    _os_log_impl(&dword_233084000, v4, v5, "%s records found %@", v8, 0x16u);
    sub_23309AE8C(v9);
    MEMORY[0x23839A490](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x23839A490](v10, -1, -1);
    MEMORY[0x23839A490](v8, -1, -1);
  }

  v12 = *(v0 + 8);

  return v12(v3);
}

uint64_t sub_2330E86CC(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 352);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = v4[38];

    v4[36] = v9;
    v10 = swift_task_alloc();
    v4[45] = v10;
    *v10 = v6;
    v10[1] = sub_2330E884C;

    return sub_2330E800C();
  }
}

uint64_t sub_2330E884C()
{
  v2 = *(*v1 + 360);
  v3 = *v1;
  *(v3 + 368) = v0;

  if (!v0)
  {
    v4 = *(v3 + 8);

    __asm { BRAA            X2, X16 }
  }

  return MEMORY[0x2822009F8](sub_2330E8E5C, 0, 0);
}

uint64_t sub_2330E8988()
{
  v14 = v0;
  v1 = v0[40];
  swift_willThrow();
  v2 = v0[40];
  type metadata accessor for Code(0);
  v0[35] = 26;
  v3 = v2;
  sub_233099668();
  v4 = sub_2330F1CE0();

  if (v4)
  {

    if (qword_2814EAD70 != -1)
    {
      swift_once();
    }

    v5 = sub_2330F23C0();
    __swift_project_value_buffer(v5, qword_2814EBD68);
    v6 = sub_2330F23A0();
    v7 = sub_2330F2960();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_233098F44(0xD000000000000017, 0x80000002330F7150, &v13);
      _os_log_impl(&dword_233084000, v6, v7, "%s zone not found; registering", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x23839A490](v9, -1, -1);
      MEMORY[0x23839A490](v8, -1, -1);
    }

    v10 = swift_task_alloc();
    v0[44] = v10;
    *v10 = v0;
    v10[1] = sub_2330E86CC;

    return sub_2330B7964(0x7372657355, 0xE500000000000000);
  }

  else
  {
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_2330E8BEC()
{
  v15 = v0;
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[41];
  swift_willThrow();

  v4 = v0[43];
  type metadata accessor for Code(0);
  v0[35] = 26;
  v5 = v4;
  sub_233099668();
  LOBYTE(v1) = sub_2330F1CE0();

  if (v1)
  {

    if (qword_2814EAD70 != -1)
    {
      swift_once();
    }

    v6 = sub_2330F23C0();
    __swift_project_value_buffer(v6, qword_2814EBD68);
    v7 = sub_2330F23A0();
    v8 = sub_2330F2960();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_233098F44(0xD000000000000017, 0x80000002330F7150, &v14);
      _os_log_impl(&dword_233084000, v7, v8, "%s zone not found; registering", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x23839A490](v10, -1, -1);
      MEMORY[0x23839A490](v9, -1, -1);
    }

    v11 = swift_task_alloc();
    v0[44] = v11;
    *v11 = v0;
    v11[1] = sub_2330E86CC;

    return sub_2330B7964(0x7372657355, 0xE500000000000000);
  }

  else
  {
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_2330E8E74(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 32) = a3;
  *(v3 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2330E8E98, 0, 0);
}

uint64_t sub_2330E8E98()
{
  v1 = sub_2330DBB84(*(v0 + 88), *(v0 + 32));
  *(v0 + 40) = v1;
  if (qword_2814EB0F8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDFD0, &qword_2330F5BD0);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 16) = xmmword_2330F4D50;
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x277CBBE38] + 4);
  v4 = v1;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_2330E8FD0;
  v6 = MEMORY[0x277D84F90];

  return MEMORY[0x28210DE78](v2, v6, 1, 1);
}

uint64_t sub_2330E8FD0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 56);
  v9 = *v3;
  v4[8] = a1;
  v4[9] = a2;
  v4[10] = v2;

  if (v2)
  {
    v6 = sub_2330E937C;
  }

  else
  {
    v7 = v4[6];

    v6 = sub_2330E90F0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2330E90F0()
{
  v20 = v0;
  if (qword_2814EAD70 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = sub_2330F23C0();
  __swift_project_value_buffer(v3, qword_2814EBD68);

  v4 = sub_2330F23A0();
  v5 = sub_2330F2980();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[8];
  v7 = v0[9];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_233098F44(0xD000000000000017, 0x80000002330F7150, &v19);
    *(v9 + 12) = 2080;
    v0[2] = v8;
    v0[3] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDE88, "JQ");
    v11 = sub_2330F2650();
    v13 = sub_233098F44(v11, v12, &v19);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_233084000, v4, v5, "%s modify results: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v10, -1, -1);
    MEMORY[0x23839A490](v9, -1, -1);
  }

  else
  {
  }

  v14 = v0[5];
  sub_2330E93E4();
  v15 = [swift_getObjCClassFromMetadata() defaultCenter];
  v16 = sub_2330F25C0();
  [v15 postNotificationName:v16 object:0];

  v17 = v0[1];

  return v17();
}

uint64_t sub_2330E937C()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

unint64_t sub_2330E93E4()
{
  result = qword_2814EAC10;
  if (!qword_2814EAC10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814EAC10);
  }

  return result;
}

unint64_t sub_2330E9430()
{
  result = qword_27DDDE790;
  if (!qword_27DDDE790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE790);
  }

  return result;
}

unint64_t sub_2330E94B0()
{
  result = qword_27DDDE7A0;
  if (!qword_27DDDE7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE7A0);
  }

  return result;
}

unint64_t sub_2330E950C(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_2330F2780();
  }

  __break(1u);
  return result;
}

uint64_t static HTMLUtilities.convertHTMLStringToLines(_:)(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE7A8, &qword_2330F7270);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = v43 - v7;
  v46 = a1;
  v47 = a2;
  v44 = 0x3E656C7974732F3CLL;
  v45 = 0xE800000000000000;
  v9 = sub_2330F1F60();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = sub_2330C04B8();
  v41 = v10;
  v42 = v10;
  v11 = MEMORY[0x277D837D0];
  sub_2330F2B40();
  v13 = v12;
  v15 = v14;
  sub_2330E9878(v8);
  if (v15)
  {
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  else
  {
    v18 = sub_2330E950C(v13, a1, a2);
    v16 = MEMORY[0x238399480](v18);
    v17 = v19;
  }

  v46 = v16;
  v47 = v17;
  v44 = 0x3E2B5D3E5E5B3CLL;
  v45 = 0xE700000000000000;
  v43[2] = 0;
  v43[3] = 0xE000000000000000;
  v42 = v10;
  v40[0] = v11;
  v40[1] = v10;
  v20 = sub_2330F2B20();
  v22 = v21;

  v46 = 10;
  v47 = 0xE100000000000000;
  MEMORY[0x28223BE20](v23, v24);
  v41 = &v46;
  v25 = sub_2330E98F8(0x7FFFFFFFFFFFFFFFLL, 1, sub_2330E9CB8, v40, v20, v22, v43);
  v26 = *(v25 + 16);
  if (v26)
  {
    v46 = MEMORY[0x277D84F90];
    sub_2330AC704(0, v26, 0);
    v27 = v46;
    v28 = (v25 + 56);
    do
    {
      v29 = *(v28 - 3);
      v30 = *(v28 - 2);
      v31 = *(v28 - 1);
      v32 = *v28;

      v33 = MEMORY[0x238399480](v29, v30, v31, v32);
      v35 = v34;

      v46 = v27;
      v37 = *(v27 + 16);
      v36 = *(v27 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_2330AC704((v36 > 1), v37 + 1, 1);
        v27 = v46;
      }

      *(v27 + 16) = v37 + 1;
      v38 = v27 + 16 * v37;
      *(v38 + 32) = v33;
      *(v38 + 40) = v35;
      v28 += 4;
      --v26;
    }

    while (v26);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v27;
}

uint64_t sub_2330E9878(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE7A8, &qword_2330F7270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2330E98F8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
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

    v7 = sub_2330F2780();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_233098E38(0, 1, 1, MEMORY[0x277D84F90]);
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
    v14 = sub_233098E38((a7 > 1), v10, 1, v14);
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
        v19 = sub_2330F2760();
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

        v14 = sub_2330F26B0();
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
        v18 = sub_2330F26B0();
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
          v7 = sub_2330F2780();
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

        v14 = sub_233098E38(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_2330F2780();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_233098E38(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_233098E38((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_2330F26B0();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2330E9CB8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2330F2DC0() & 1;
  }
}

uint64_t sub_2330E9D4C()
{
  v0 = sub_2330F2640();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  type metadata accessor for HTMLUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_2330F25C0();
  v6 = sub_2330F25C0();
  v7 = [v4 pathForResource:v5 ofType:v6];

  if (!v7)
  {
    return 0;
  }

  sub_2330F25F0();

  sub_2330F2630();
  v8 = sub_2330F25B0();

  return v8;
}

unint64_t sub_2330E9EC4()
{
  result = qword_27DDDE7B0;
  if (!qword_27DDDE7B0)
  {
    sub_2330DC664();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE7B0);
  }

  return result;
}

id sub_2330E9F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a5;
  v10 = *v5;

  v11 = sub_2330F25C0();
  v15[4] = sub_2330EA258;
  v15[5] = v9;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_2330EA040;
  v15[3] = &block_descriptor_12;
  v12 = _Block_copy(v15);
  v13 = [v10 registerForTaskWithIdentifier:v11 usingQueue:a3 launchHandler:v12];

  _Block_release(v12);

  return v13;
}

void sub_2330EA040(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_2330EA0CC(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if ([v1 submitTaskRequest:a1 error:v5])
  {
    result = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_2330F1D60();

    result = swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_2330EA19C()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2330F25C0();
  v6[0] = 0;
  v2 = [v0 cancelTaskRequestWithIdentifier:v1 error:v6];

  if (v2)
  {
    result = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_2330F1D60();

    result = swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2330EA258(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id MobileGestaltCoordinator.hasHomeButton.getter()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    homeButtonType = MobileGestalt_get_homeButtonType();

    return (homeButtonType != 2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id MobileGestaltCoordinator.isPadDevice.getter()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    iPadCapability = MobileGestalt_get_iPadCapability();

    return iPadCapability;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2330EA348()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    v2 = MobileGestalt_copy_regionCode_obj();

    if (v2)
    {
      v3 = sub_2330F25F0();
      v5 = v4;

      v20[0] = v3;
      v20[1] = v5;
      sub_2330C04B8();
      v6 = sub_2330F2B30();
      v7 = v6 == 0;
      if (qword_2814EAD68 != -1)
      {
        swift_once();
      }

      v8 = sub_2330F23C0();
      __swift_project_value_buffer(v8, qword_2814EBD50);

      v9 = sub_2330F23A0();
      v10 = sub_2330F2950();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = v6 == 0;
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v20[0] = v13;
        *v12 = 136315650;
        *(v12 + 4) = sub_233098F44(0xD000000000000018, 0x80000002330F7320, v20);
        *(v12 + 12) = 2080;
        v14 = sub_233098F44(v3, v5, v20);

        *(v12 + 14) = v14;
        *(v12 + 22) = 1024;
        *(v12 + 24) = v11;
        _os_log_impl(&dword_233084000, v9, v10, "%s Value %s recieved from Gestalt %{BOOL}d", v12, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x23839A490](v13, -1, -1);
        MEMORY[0x23839A490](v12, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      if (qword_2814EAD68 != -1)
      {
        swift_once();
      }

      v15 = sub_2330F23C0();
      __swift_project_value_buffer(v15, qword_2814EBD50);
      v16 = sub_2330F23A0();
      v17 = sub_2330F2950();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v20[0] = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_233098F44(0xD000000000000018, 0x80000002330F7320, v20);
        _os_log_impl(&dword_233084000, v16, v17, "%s device is not green tea.", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x23839A490](v19, -1, -1);
        MEMORY[0x23839A490](v18, -1, -1);
      }

      return 0;
    }

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id CKContainer.init(identifier:bundleIdentifierOverride:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_allocWithZone(MEMORY[0x277CBC220]);
  v7 = sub_2330F25C0();

  v8 = [v6 initWithContainerIdentifier:v7 environment:a5];

  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContainerID_];
  v10 = [v9 options];
  v11 = sub_2330F25C0();
  [v10 setApplicationBundleIdentifierOverrideForContainerAccess_];

  v12 = [v9 options];
  v13 = sub_2330F25C0();

  [v12 setApplicationBundleIdentifierOverrideForPushTopicGeneration_];

  v14 = [v9 options];
  [v14 setUseZoneWidePCS_];

  return v9;
}

void sub_2330EA81C(void *a1@<X8>)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_2330F25C0();

  v4 = [v2 initWithBundleID_];

  *a1 = v4;
}

uint64_t sub_2330EA8B8()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_2330EA9CC;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE728, &unk_2330F6EA0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2330E5BC4;
  v0[13] = &block_descriptor_13;
  v0[14] = v2;
  [v1 startWithErrorHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2330EA9CC()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
  }

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2330EAAEC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 416) = a4;
  *(v4 + 368) = a2;
  *(v4 + 376) = a3;
  *(v4 + 360) = a1;
  return MEMORY[0x2822009F8](sub_2330EAB14, 0, 0);
}

uint64_t sub_2330EAB14()
{
  v1 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  *(v0 + 384) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 416);
    v4 = *(v0 + 376);
    v18 = *(v0 + 368);
    v5 = *(v0 + 360);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE7C0, &qword_2330F73F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2330F73E0;
    v7 = *MEMORY[0x277D0AC40];
    *(v0 + 320) = sub_2330F25F0();
    *(v0 + 328) = v8;
    sub_2330F2BC0();
    *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE6D8, &unk_2330F6D40);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((inited + 72));
    sub_2330EB0CC(v4, boxed_opaque_existential_0Tm);
    v10 = *MEMORY[0x277D0ABF0];
    *(v0 + 336) = sub_2330F25F0();
    *(v0 + 344) = v11;
    sub_2330F2BC0();
    *(inited + 168) = MEMORY[0x277D839B0];
    *(inited + 144) = (v3 & 1) == 0;
    sub_2330B3CE0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE118, &qword_2330F5308);
    swift_arrayDestroy();
    v12 = sub_2330F2520();

    v13 = [objc_opt_self() optionsWithDictionary_];
    *(v0 + 392) = v13;

    v14 = sub_2330F25C0();
    *(v0 + 400) = v14;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 352;
    *(v0 + 24) = sub_2330EAE6C;
    v15 = swift_continuation_init();
    *(v0 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE7C8, &unk_2330F7400);
    *(v0 + 256) = MEMORY[0x277D85DD0];
    *(v0 + 264) = 1107296256;
    *(v0 + 272) = sub_23309A5DC;
    *(v0 + 280) = &block_descriptor_14;
    *(v0 + 288) = v15;
    [v2 openApplication:v14 withOptions:v13 completion:v0 + 256];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    sub_2330EB078();
    swift_allocError();
    swift_willThrow();
    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_2330EAE6C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 408) = v2;
  if (v2)
  {
    v3 = sub_2330EAFF4;
  }

  else
  {
    v3 = sub_2330EAF7C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2330EAF7C()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 384);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2330EAFF4()
{
  v1 = v0[50];
  v2 = v0[51];
  v4 = v0[48];
  v3 = v0[49];
  swift_willThrow();

  v5 = v0[51];
  v6 = v0[1];

  return v6();
}

unint64_t sub_2330EB078()
{
  result = qword_27DDDE7B8;
  if (!qword_27DDDE7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE7B8);
  }

  return result;
}

uint64_t sub_2330EB0CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE6D8, &unk_2330F6D40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2330EB178()
{
  result = qword_27DDDE7D0;
  if (!qword_27DDDE7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE7D0);
  }

  return result;
}

uint64_t sub_2330EB1EC()
{
  v1 = *(v0 + 64);
  sub_233092A18((v0 + 16));
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v4 = *(MEMORY[0x277D78418] + 4);

  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_2330EB2E0;
  v6 = *(v0 + 64);

  return MEMORY[0x2821DF758](801, &unk_2330F7550, v6, v2, v3);
}

uint64_t sub_2330EB2E0()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2330EB3F8, 0, 0);
}

uint64_t sub_2330EB3F8()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = *(MEMORY[0x277D78418] + 4);

  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_2330EB4E4;
  v6 = v0[8];

  return MEMORY[0x2821DF758](802, &unk_2330F7560, v6, v2, v3);
}

uint64_t sub_2330EB4E4()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2330EB5FC, 0, 0);
}

uint64_t sub_2330EB5FC()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = *(MEMORY[0x277D78410] + 4);

  v5 = swift_task_alloc();
  v0[11] = v5;
  v6 = sub_2330EBDA4();
  *v5 = v0;
  v5[1] = sub_2330EB6FC;
  v7 = v0[8];

  return MEMORY[0x2821DF750](803, &unk_2330F7570, v7, v2, &type metadata for DaemonDefault, v3, v6);
}

uint64_t sub_2330EB6FC()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23308D118, 0, 0);
}

uint64_t sub_2330EB814()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233088E00;

  return sub_2330EBDF8();
}

uint64_t sub_2330EB8B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2330877C8;

  return sub_2330EC00C();
}

uint64_t sub_2330EB954(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = swift_task_alloc();
  *(v1 + 48) = v4;
  *v4 = v1;
  v4[1] = sub_2330EBA0C;

  return sub_2330EC220(v1 + 16);
}

uint64_t sub_2330EBA0C()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (!v0)
  {
    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_2330EBB40, 0, 0);
}

uint64_t sub_2330EBB58()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2330877C8;

  return sub_2330EB1CC(v2);
}

uint64_t sub_2330EBBEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233088E00;

  return sub_2330EB814();
}

uint64_t sub_2330EBC7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233088E00;

  return sub_2330EB8B4();
}

uint64_t sub_2330EBD0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2330877C8;

  return sub_2330EB954(a1);
}

unint64_t sub_2330EBDA4()
{
  result = qword_2814EB118[0];
  if (!qword_2814EB118[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814EB118);
  }

  return result;
}

uint64_t sub_2330EBE14()
{
  v11 = v0;
  if (qword_27DDDDBD0 != -1)
  {
    swift_once();
  }

  v1 = sub_2330F23C0();
  __swift_project_value_buffer(v1, qword_27DDE18A8);
  v2 = sub_2330F23A0();
  v3 = sub_2330F2980();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_233098F44(0x69666E6F43707041, 0xEF72657672655367, &v10);
    _os_log_impl(&dword_233084000, v2, v3, "%s Showing the Debug menu.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x23839A490](v5, -1, -1);
    MEMORY[0x23839A490](v4, -1, -1);
  }

  if (qword_2814EB0D0 != -1)
  {
    swift_once();
  }

  v6 = qword_2814EB0D8;
  if (qword_2814EB0D8)
  {
    v7 = sub_2330F25C0();
    [v6 setBool:0 forKey:v7];
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2330EC028()
{
  v11 = v0;
  if (qword_27DDDDBD0 != -1)
  {
    swift_once();
  }

  v1 = sub_2330F23C0();
  __swift_project_value_buffer(v1, qword_27DDE18A8);
  v2 = sub_2330F23A0();
  v3 = sub_2330F2980();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_233098F44(0x69666E6F43707041, 0xEF72657672655367, &v10);
    _os_log_impl(&dword_233084000, v2, v3, "%s Hiding the Debug menu.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x23839A490](v5, -1, -1);
    MEMORY[0x23839A490](v4, -1, -1);
  }

  if (qword_2814EB0D0 != -1)
  {
    swift_once();
  }

  v6 = qword_2814EB0D8;
  if (qword_2814EB0D8)
  {
    v7 = sub_2330F25C0();
    [v6 setBool:1 forKey:v7];
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2330EC220(uint64_t a1)
{
  *(v1 + 16) = *a1;
  *(v1 + 24) = *(a1 + 8);
  *(v1 + 40) = *(a1 + 24);
  return MEMORY[0x2822009F8](sub_2330EC254, 0, 0);
}

uint64_t sub_2330EC254()
{
  v25 = v0;
  if (qword_27DDDDBD0 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[3];
  v3 = sub_2330F23C0();
  __swift_project_value_buffer(v3, qword_27DDE18A8);

  v4 = sub_2330F23A0();
  v5 = sub_2330F2980();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[4];
    v6 = v0[5];
    v9 = v0[2];
    v8 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_233098F44(0x69666E6F43707041, 0xEF72657672655367, &v24);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_233098F44(v7, v6, &v24);
    *(v10 + 22) = 2080;
    *(v10 + 24) = sub_233098F44(v9, v8, &v24);
    _os_log_impl(&dword_233084000, v4, v5, "%s setting value %s for key %s.", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v11, -1, -1);
    MEMORY[0x23839A490](v10, -1, -1);
  }

  if (!v0[4] && v0[5] == 0xE000000000000000 || (sub_2330F2DC0() & 1) != 0)
  {
    if (qword_2814EB0D0 != -1)
    {
      swift_once();
    }

    v12 = qword_2814EB0D8;
    if (qword_2814EB0D8)
    {
      v13 = v0[2];
      v14 = v0[3];
      v15 = sub_2330F25C0();
      [v12 removeObjectForKey_];
LABEL_16:
    }
  }

  else
  {
    if (qword_2814EB0D0 != -1)
    {
      swift_once();
    }

    v16 = qword_2814EB0D8;
    if (qword_2814EB0D8)
    {
      v17 = v0[4];
      v18 = v0[5];
      v20 = v0[2];
      v19 = v0[3];
      v21 = sub_2330F25C0();
      v15 = sub_2330F25C0();
      [v16 setObject:v21 forKey:v15];

      goto LABEL_16;
    }
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_2330EC56C()
{
  v0 = sub_2330F2230();
  MEMORY[0x2383994D0](v0);

  qword_2814EBE38 = 0xD00000000000001BLL;
  unk_2814EBE40 = 0x80000002330F8E10;
  return result;
}

uint64_t sub_2330EC5D4()
{
  v2 = sub_2330F2230();
  v3 = v0;

  MEMORY[0x2383994D0](0x686364756F6C632ELL, 0xED00006C656E6E61);

  qword_2814EBE28 = v2;
  unk_2814EBE30 = v3;
  return result;
}

uint64_t sub_2330EC64C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE880, &qword_2330F44A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2330F73E0;
  if (qword_2814EB0C0 != -1)
  {
    swift_once();
  }

  v1 = unk_2814EBE40;
  *(v0 + 32) = qword_2814EBE38;
  *(v0 + 40) = v1;
  v2 = qword_2814EB098;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = unk_2814EBE30;
  *(v0 + 48) = qword_2814EBE28;
  *(v0 + 56) = v3;
  qword_2814EB0B0 = v0;
}

id sub_2330EC734(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2330F24F0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC15VisionCompanion22PushNotificationServer_apsConnection] = 0;
  v9 = OBJC_IVAR____TtC15VisionCompanion22PushNotificationServer_queue;
  sub_2330EF8E4();
  sub_2330F24E0();
  *&v2[v9] = sub_2330B045C(v8, 0xD000000000000068, 0x80000002330F8E80);
  v10 = OBJC_IVAR____TtC15VisionCompanion22PushNotificationServer_pushNotificationDispatch;
  type metadata accessor for PushNotificationDispatch();
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v11 + 112) = MEMORY[0x277D84F98];
  *&v2[v10] = v11;
  *&v2[OBJC_IVAR____TtC15VisionCompanion22PushNotificationServer_dependencies] = a1;
  v12 = type metadata accessor for PushNotificationServer();
  v14.receiver = v2;
  v14.super_class = v12;
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t sub_2330EC85C()
{
  *(v1 + 64) = v0;
  *(v1 + 72) = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_2330EC8CC, 0, 0);
}

uint64_t sub_2330EC8CC()
{
  v1 = *(v0 + 64);
  v2 = *&v1[OBJC_IVAR____TtC15VisionCompanion22PushNotificationServer_dependencies];
  sub_233092A18((v0 + 16));
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2330EF660;
  *(v6 + 24) = v5;
  v7 = swift_allocObject();
  *(v0 + 80) = v7;
  *(v7 + 16) = &unk_2330F7648;
  *(v7 + 24) = v6;
  v8 = *(MEMORY[0x277D78410] + 4);
  v9 = v1;
  v10 = swift_task_alloc();
  *(v0 + 88) = v10;
  *v10 = v0;
  v10[1] = sub_2330ECA50;
  v11 = MEMORY[0x277D837D0];
  v12 = MEMORY[0x277D784C0];

  return MEMORY[0x2821DF750](601, &unk_2330F7658, v7, v3, v11, v4, v12);
}

uint64_t sub_2330ECA50()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2330ECB68, 0, 0);
}

uint64_t sub_2330ECB68()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2330EF7FC;
  *(v5 + 24) = v4;
  v6 = swift_allocObject();
  v0[12] = v6;
  *(v6 + 16) = &unk_2330F7660;
  *(v6 + 24) = v5;
  v7 = *(MEMORY[0x277D78410] + 4);
  v8 = v1;
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_2330ECCD8;
  v10 = MEMORY[0x277D837D0];
  v11 = MEMORY[0x277D784C0];

  return MEMORY[0x2821DF750](602, &unk_2330F7668, v6, v2, v10, v3, v11);
}

uint64_t sub_2330ECCD8()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2330ECDF0, 0, 0);
}

uint64_t sub_2330ECDF0()
{
  v31 = v0;
  v1 = _s15VisionCompanion20UserDefaultUtilitiesV30isUsingStagingForCloudChannelsSbyFZ_0();
  if (qword_2814EADA8 != -1)
  {
    swift_once();
  }

  v2 = sub_2330F23C0();
  __swift_project_value_buffer(v2, qword_2814EBDE0);
  v3 = sub_2330F23A0();
  v4 = sub_2330F2980();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v30 = v7;
    *v6 = 136315394;
    v8 = sub_2330F2F30();
    v10 = sub_233098F44(v8, v9, &v30);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    if (v1)
    {
      v11 = 0x6D706F6C65766564;
    }

    else
    {
      v11 = 0x69746375646F7270;
    }

    if (v1)
    {
      v12 = 0xEB00000000746E65;
    }

    else
    {
      v12 = 0xEA00000000006E6FLL;
    }

    v13 = sub_233098F44(v11, v12, &v30);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_233084000, v3, v4, "%s Registering with push notification environment %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v7, -1, -1);
    MEMORY[0x23839A490](v6, -1, -1);
  }

  v14 = MEMORY[0x277CEE9E8];
  v15 = v0[8];
  if ((v1 & 1) == 0)
  {
    v14 = MEMORY[0x277CEE9F0];
  }

  v16 = *v14;
  sub_2330F25F0();
  v17 = *(v15 + OBJC_IVAR____TtC15VisionCompanion22PushNotificationServer_queue);
  v18 = objc_allocWithZone(MEMORY[0x277CEEA10]);
  v19 = v17;
  v20 = sub_2330F25C0();

  v21 = sub_2330F25C0();
  v22 = [v18 initWithEnvironmentName:v20 namedDelegatePort:v21 queue:v19];

  v23 = OBJC_IVAR____TtC15VisionCompanion22PushNotificationServer_apsConnection;
  v24 = *(v15 + OBJC_IVAR____TtC15VisionCompanion22PushNotificationServer_apsConnection);
  *(v15 + OBJC_IVAR____TtC15VisionCompanion22PushNotificationServer_apsConnection) = v22;
  v25 = v22;

  if (v25)
  {
    if (qword_2814EB0A0 != -1)
    {
      swift_once();
    }

    v26 = sub_2330F27C0();
    [v25 _setEnabledTopics_];
  }

  v27 = *(v15 + v23);
  if (v27)
  {
    [v27 setDelegate_];
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v28 = v0[1];

  return v28();
}

uint64_t sub_2330ED148(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_2330ED1B0(uint64_t *a1, int *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v8 = (a2 + *a2);
  v5 = a2[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2330877C8;

  return v8(v3, v4);
}

void sub_2330ED2D4(uint64_t a1, unint64_t a2, const char *a3, SEL *a4)
{
  v7 = v4;
  swift_getObjectType();
  if (qword_2814EADA8 != -1)
  {
    swift_once();
  }

  v10 = sub_2330F23C0();
  __swift_project_value_buffer(v10, qword_2814EBDE0);

  v11 = sub_2330F23A0();
  v12 = sub_2330F2980();

  if (os_log_type_enabled(v11, v12))
  {
    v25 = a4;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27 = v14;
    *v13 = 136315394;
    v15 = sub_2330F2F30();
    v17 = sub_233098F44(v15, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_233098F44(a1, a2, &v27);
    _os_log_impl(&dword_233084000, v11, v12, a3, v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v14, -1, -1);
    v18 = v13;
    a4 = v25;
    MEMORY[0x23839A490](v18, -1, -1);
  }

  v19 = objc_allocWithZone(MEMORY[0x277CD9D98]);
  v20 = sub_2330F25C0();
  v26 = [v19 initWithChannelID_];

  v21 = *(v7 + OBJC_IVAR____TtC15VisionCompanion22PushNotificationServer_apsConnection);
  if (v21)
  {
    v22 = qword_2814EB098;
    v23 = v21;
    if (v22 != -1)
    {
      swift_once();
    }

    v24 = sub_2330F25C0();
    [v23 *a4];
  }
}

void sub_2330ED550(void *a1)
{
  swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE860, &qword_2330F3BB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v38 - v6;
  v8 = [a1 topic];
  if (v8)
  {
    v9 = v8;
    v10 = sub_2330F25F0();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  if (qword_2814EB0C0 == -1)
  {
    if (!v12)
    {
      goto LABEL_14;
    }
  }

  else
  {
    swift_once();
    if (!v12)
    {
      goto LABEL_14;
    }
  }

  if (v10 == qword_2814EBE38 && v12 == unk_2814EBE40)
  {

LABEL_10:

    sub_2330ED9DC(a1);
    return;
  }

  v13 = sub_2330F2DC0();

  if (v13)
  {
    goto LABEL_10;
  }

LABEL_14:
  v14 = [a1 topic];
  if (v14)
  {
    v15 = v14;
    v16 = sub_2330F25F0();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  if (qword_2814EB098 == -1)
  {
    if (!v18)
    {
      goto LABEL_25;
    }
  }

  else
  {
    swift_once();
    if (!v18)
    {
      goto LABEL_25;
    }
  }

  if (v16 == qword_2814EBE28 && v18 == unk_2814EBE30)
  {

LABEL_23:
    v20 = sub_2330F2890();
    (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v1;
    v21[5] = a1;
    v22 = v1;
    v23 = a1;
    sub_2330878BC(0, 0, v7, &unk_2330F7638, v21);

    return;
  }

  v19 = sub_2330F2DC0();

  if (v19)
  {
    goto LABEL_23;
  }

LABEL_25:
  if (qword_2814EADA8 != -1)
  {
    swift_once();
  }

  v24 = sub_2330F23C0();
  __swift_project_value_buffer(v24, qword_2814EBDE0);
  v25 = a1;
  v38 = sub_2330F23A0();
  v26 = sub_2330F2980();
  if (os_log_type_enabled(v38, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v39 = v28;
    *v27 = 136315394;
    v29 = sub_2330F2F30();
    v31 = sub_233098F44(v29, v30, &v39);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    v32 = [v25 topic];

    if (v32)
    {
      v33 = sub_2330F25F0();
      v35 = v34;

      v36 = sub_233098F44(v33, v35, &v39);

      *(v27 + 14) = v36;
      _os_log_impl(&dword_233084000, v38, v26, "%s recieved notification on another message topic %s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23839A490](v28, -1, -1);
      MEMORY[0x23839A490](v27, -1, -1);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v37 = v38;
  }
}

void sub_2330ED9DC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE860, &qword_2330F3BB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v45 - v8;
  v10 = [a1 userInfo];
  if (v10)
  {
    v11 = v10;
    sub_2330F2530();

    v12 = sub_2330F2520();

    v45 = [objc_opt_self() notificationFromRemoteNotificationDictionary_];

    if (v45)
    {
      v13 = [v45 recordZoneID];
      if (v13)
      {
        v14 = v13;
        v15 = [v13 zoneName];

        v16 = sub_2330F25F0();
        v18 = v17;

        v19 = sub_2330F2890();
        (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
        v20 = swift_allocObject();
        v20[2] = 0;
        v20[3] = 0;
        v20[4] = v16;
        v20[5] = v18;
        v20[6] = v2;
        v20[7] = a1;
        v20[8] = ObjectType;
        v21 = v2;
        v22 = a1;
        sub_2330878BC(0, 0, v9, &unk_2330F7628, v20);

        return;
      }

      if (qword_2814EADA8 != -1)
      {
        swift_once();
      }

      v33 = sub_2330F23C0();
      __swift_project_value_buffer(v33, qword_2814EBDE0);
      v34 = a1;
      v35 = sub_2330F23A0();
      v36 = sub_2330F2960();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v46 = v39;
        *v37 = 136315394;
        v40 = sub_2330F2F30();
        v42 = sub_233098F44(v40, v41, &v46);

        *(v37 + 4) = v42;
        *(v37 + 12) = 2112;
        *(v37 + 14) = v34;
        *v38 = v34;
        v43 = v34;
        _os_log_impl(&dword_233084000, v35, v36, "%s failed to dispatch push notification %@", v37, 0x16u);
        sub_23309AE8C(v38);
        MEMORY[0x23839A490](v38, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        MEMORY[0x23839A490](v39, -1, -1);
        MEMORY[0x23839A490](v37, -1, -1);

        goto LABEL_13;
      }
    }

    else
    {
      if (qword_2814EADA8 != -1)
      {
        swift_once();
      }

      v23 = sub_2330F23C0();
      __swift_project_value_buffer(v23, qword_2814EBDE0);
      v24 = a1;
      v45 = sub_2330F23A0();
      v25 = sub_2330F2960();

      if (os_log_type_enabled(v45, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v46 = v28;
        *v26 = 136315394;
        v29 = sub_2330F2F30();
        v31 = sub_233098F44(v29, v30, &v46);

        *(v26 + 4) = v31;
        *(v26 + 12) = 2112;
        *(v26 + 14) = v24;
        *v27 = v24;
        v32 = v24;
        _os_log_impl(&dword_233084000, v45, v25, "%s failed to parse push notification %@", v26, 0x16u);
        sub_23309AE8C(v27);
        MEMORY[0x23839A490](v27, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        MEMORY[0x23839A490](v28, -1, -1);
        MEMORY[0x23839A490](v26, -1, -1);
LABEL_13:

        return;
      }
    }

    v44 = v45;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2330EDF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  return MEMORY[0x2822009F8](sub_2330EDF44, 0, 0);
}

uint64_t sub_2330EDF44()
{
  v32 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 40) == 0x656369766544 && v1 == 0xE600000000000000;
  if (v2 || (v3 = *(v0 + 48), (sub_2330F2DC0() & 1) != 0))
  {
    v4 = 0;
  }

  else if (*(v0 + 40) == 0xD000000000000012 && 0x80000002330F7DA0 == v1 || (v5 = *(v0 + 48), (sub_2330F2DC0() & 1) != 0))
  {
    v4 = 1;
  }

  else
  {
    if (*(v0 + 40) != 0xD000000000000010 || 0x80000002330F7DC0 != v1)
    {
      v6 = *(v0 + 48);
      if ((sub_2330F2DC0() & 1) == 0)
      {
        v8 = *(v0 + 40);
        v7 = *(v0 + 48);
        sub_23309982C();
        v9 = swift_allocError();
        *v10 = v8;
        v10[1] = v7;
        swift_willThrow();
        v11 = qword_2814EADA8;

        if (v11 != -1)
        {
          swift_once();
        }

        v12 = *(v0 + 64);
        v13 = sub_2330F23C0();
        __swift_project_value_buffer(v13, qword_2814EBDE0);
        v14 = v12;
        v15 = v9;
        v16 = sub_2330F23A0();
        v17 = sub_2330F2960();

        if (os_log_type_enabled(v16, v17))
        {
          v19 = *(v0 + 64);
          v18 = *(v0 + 72);
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v31 = v22;
          *v20 = 136315650;
          v23 = sub_2330F2F30();
          v25 = sub_233098F44(v23, v24, &v31);

          *(v20 + 4) = v25;
          *(v20 + 12) = 2112;
          *(v20 + 14) = v19;
          *v21 = v19;
          *(v20 + 22) = 2112;
          v26 = v19;
          v27 = v9;
          v28 = _swift_stdlib_bridgeErrorToNSError();
          *(v20 + 24) = v28;
          v21[1] = v28;
          _os_log_impl(&dword_233084000, v16, v17, "%s failed to dispatch push notification %@; error: %@", v20, 0x20u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE520, &qword_2330F4340);
          swift_arrayDestroy();
          MEMORY[0x23839A490](v21, -1, -1);
          __swift_destroy_boxed_opaque_existential_1Tm(v22);
          MEMORY[0x23839A490](v22, -1, -1);
          MEMORY[0x23839A490](v20, -1, -1);
        }

        else
        {
        }

        v29 = *(v0 + 8);

        __asm { BRAA            X1, X16 }
      }
    }

    v4 = 2;
  }

  *(v0 + 112) = v4;
  *(v0 + 80) = *(*(v0 + 56) + OBJC_IVAR____TtC15VisionCompanion22PushNotificationServer_pushNotificationDispatch);

  return MEMORY[0x2822009F8](sub_2330EE2D8);
}

uint64_t sub_2330EE2D8()
{
  v1 = *(v0 + 80);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v3 = sub_2330AD184(*(v0 + 112));
    if (v4)
    {
      v5 = *(v2 + 56) + 16 * v3;
      v6 = *v5;
      *(v0 + 96) = *(v5 + 8);

      v10 = v6 + *v6;
      v7 = v6[1];
      v8 = swift_task_alloc();
      *(v0 + 104) = v8;
      *v8 = v0;
      v8[1] = sub_2330EE6B0;

      __asm { BRAA            X0, X16 }
    }
  }

  sub_2330AF2BC();
  *(v0 + 88) = swift_allocError();
  swift_willThrow();

  return MEMORY[0x2822009F8](sub_2330EE474, 0, 0);
}

uint64_t sub_2330EE474()
{
  v22 = v0;
  v1 = v0[11];
  if (qword_2814EADA8 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v3 = sub_2330F23C0();
  __swift_project_value_buffer(v3, qword_2814EBDE0);
  v4 = v2;
  v5 = v1;
  v6 = sub_2330F23A0();
  v7 = sub_2330F2960();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[8];
    v8 = v0[9];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v10 = 136315650;
    v13 = sub_2330F2F30();
    v15 = sub_233098F44(v13, v14, &v21);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v9;
    *v11 = v9;
    *(v10 + 22) = 2112;
    v16 = v9;
    v17 = v1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v18;
    v11[1] = v18;
    _os_log_impl(&dword_233084000, v6, v7, "%s failed to dispatch push notification %@; error: %@", v10, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE520, &qword_2330F4340);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x23839A490](v12, -1, -1);
    MEMORY[0x23839A490](v10, -1, -1);
  }

  else
  {
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_2330EE6B0()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2330EE7C8, 0, 0);
}

uint64_t sub_2330EE7C8()
{
  v16 = v0;
  if (qword_2814EADA8 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_2330F23C0();
  __swift_project_value_buffer(v2, qword_2814EBDE0);

  v3 = sub_2330F23A0();
  v4 = sub_2330F2980();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315394;
    v10 = sub_2330F2F30();
    v12 = sub_233098F44(v10, v11, &v15);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_233098F44(v7, v6, &v15);
    _os_log_impl(&dword_233084000, v3, v4, "%s successfully dispatched push notification for zoneName: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v9, -1, -1);
    MEMORY[0x23839A490](v8, -1, -1);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_2330EE998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2330EE9B8, 0, 0);
}

id sub_2330EE9B8()
{
  v1 = v0[3];
  v2 = *(v0[2] + OBJC_IVAR____TtC15VisionCompanion22PushNotificationServer_dependencies);
  v3 = sub_233093F24();
  v0[4] = v3;
  result = [v1 userInfo];
  if (result)
  {
    v5 = result;
    v6 = sub_2330F2530();
    v0[5] = v6;

    v7 = swift_task_alloc();
    v0[6] = v7;
    *v7 = v0;
    v7[1] = sub_2330EEAC0;

    return sub_2330E4CDC(v6, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2330EEAC0()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2330EEBD8, 0, 0);
}

uint64_t sub_2330EEBD8()
{
  v1 = *(v0 + 8);

  return v1();
}

id sub_2330EEC68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PushNotificationServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2330EEE40()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2330877C8;

  return sub_2330EC85C();
}

void sub_2330EEED0(uint64_t a1, unint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_2330F1E20();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62 == 2)
  {
    v9 = *(a1 + 16);
  }

  sub_2330B4238(a1, a2);
  sub_2330F1E30();
  sub_2330EF46C();
  sub_2330F2B00();
  if (v33)
  {
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  else
  {
    v10 = 0;
    v11 = 0xE000000000000000;
    v29 = xmmword_2330F46B0;
    v12 = MEMORY[0x277D84BC0];
    do
    {
      v13 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE2A0, &qword_2330F5F80);
      v14 = swift_allocObject();
      *(v14 + 16) = v29;
      *(v14 + 56) = MEMORY[0x277D84B78];
      *(v14 + 64) = v12;
      *(v14 + 32) = v13;
      v15 = sub_2330F2620();
      v17 = v16;
      v30 = v10;
      v31 = v11;

      MEMORY[0x2383994D0](v15, v17);

      v10 = v30;
      v11 = v31;
      sub_2330F2B00();
    }

    while (v33 != 1);
  }

  (*(v28 + 8))(v8, v4);
  if (qword_2814EADA8 != -1)
  {
    swift_once();
  }

  v18 = sub_2330F23C0();
  __swift_project_value_buffer(v18, qword_2814EBDE0);

  v19 = sub_2330F23A0();
  v20 = sub_2330F2980();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30 = v22;
    *v21 = 136315394;
    v23 = sub_2330F2F30();
    v25 = sub_233098F44(v23, v24, &v30);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    v26 = sub_233098F44(v10, v11, &v30);

    *(v21 + 14) = v26;
    _os_log_impl(&dword_233084000, v19, v20, "%s did receive public token: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v22, -1, -1);
    MEMORY[0x23839A490](v21, -1, -1);
  }

  else
  {
  }
}

void sub_2330EF268(void *a1)
{
  swift_getObjectType();
  if (qword_2814EADA8 != -1)
  {
    swift_once();
  }

  v2 = sub_2330F23C0();
  __swift_project_value_buffer(v2, qword_2814EBDE0);
  v3 = a1;
  v4 = sub_2330F23A0();
  v5 = sub_2330F2980();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315394;
    v8 = sub_2330F2F30();
    v10 = sub_233098F44(v8, v9, &v16);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = [v3 topic];

    if (!v11)
    {
      __break(1u);
      return;
    }

    v12 = sub_2330F25F0();
    v14 = v13;

    v15 = sub_233098F44(v12, v14, &v16);

    *(v6 + 14) = v15;
    _os_log_impl(&dword_233084000, v4, v5, "%s received push notification for topic: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v7, -1, -1);
    MEMORY[0x23839A490](v6, -1, -1);
  }

  else
  {
  }

  sub_2330ED550(v3);
}

unint64_t sub_2330EF46C()
{
  result = qword_2814EB330;
  if (!qword_2814EB330)
  {
    sub_2330F1E20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814EB330);
  }

  return result;
}

uint64_t sub_2330EF4C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2330877C8;

  return sub_2330EDF1C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2330EF5A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_233088E00;

  return sub_2330EE998(a1, v4, v5, v7, v6);
}

uint64_t sub_2330EF684(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_233088E00;

  return sub_2330ED148(a1, a2, v7);
}

uint64_t sub_2330EF748(uint64_t *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_233088E00;

  return sub_2330ED1B0(a1, v5);
}

uint64_t sub_2330EF820(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2330877C8;

  return sub_2330ED148(a1, a2, v7);
}

unint64_t sub_2330EF8E4()
{
  result = qword_2814EAC60;
  if (!qword_2814EAC60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814EAC60);
  }

  return result;
}

void sub_2330EF934()
{
  sub_2330F2200();
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2330F25C0();

  v2 = [v0 initWithSuiteName_];

  qword_27DDDE888 = v2;
}

id sub_2330EF9D4()
{
  result = sub_2330EF9F4();
  qword_2814EB0D8 = result;
  return result;
}

id sub_2330EF9F4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    sub_2330F2220();
    goto LABEL_10;
  }

  v2 = sub_2330F25F0();
  v4 = v3;

  v5 = sub_2330F2220();
  if (!v4)
  {
LABEL_10:

    goto LABEL_11;
  }

  if (v2 != v5 || v4 != v6)
  {
    v8 = sub_2330F2DC0();

    if (v8)
    {
      return [objc_opt_self() standardUserDefaults];
    }

LABEL_11:
    sub_2330F2220();
    v9 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v10 = sub_2330F25C0();

    v11 = [v9 initWithSuiteName_];

    return v11;
  }

  return [objc_opt_self() standardUserDefaults];
}

id sub_2330EFB78(void *a1, id *a2)
{
  if (*a1 != -1)
  {
    v5 = a2;
    swift_once();
    a2 = v5;
  }

  v2 = *a2;
  v3 = *a2;
  return v2;
}

uint64_t static UserDefaultUtilities.getLatestNews()()
{
  if (qword_27DDDDC28 != -1)
  {
    swift_once();
  }

  if (qword_27DDDE888)
  {
    v0 = qword_27DDDE888;
    v1 = sub_2330F25C0();
    v2 = [v0 objectForKey_];

    if (v2)
    {
      sub_2330F2B50();

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
        return v4;
      }
    }

    else
    {
      sub_2330DBEC8(v7);
    }
  }

  return 0;
}

BOOL static UserDefaultUtilities.isGetLatestNewsSet()()
{
  if (qword_27DDDDC28 != -1)
  {
    swift_once();
  }

  if (!qword_27DDDE888)
  {
    return 0;
  }

  v0 = qword_27DDDE888;
  v1 = sub_2330F25C0();
  v2 = [v0 objectForKey_];

  v3 = v2 != 0;
  if (v2)
  {
    sub_2330F2B50();

    swift_unknownObjectRelease();
  }

  else
  {

    memset(v5, 0, sizeof(v5));
  }

  sub_2330DBEC8(v5);
  return v3;
}

uint64_t static UserDefaultUtilities.isRestrictedGeo()()
{
  if (qword_27DDDDC28 != -1)
  {
    swift_once();
  }

  if (qword_27DDDE888)
  {
    v0 = qword_27DDDE888;
    v1 = sub_2330F25C0();
    v2 = [v0 objectForKey_];

    if (v2)
    {
      sub_2330F2B50();

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
        return v4;
      }
    }

    else
    {
      sub_2330DBEC8(v7);
    }
  }

  return 0;
}

uint64_t _s15VisionCompanion20UserDefaultUtilitiesV30isUsingStagingForCloudChannelsSbyFZ_0()
{
  if (qword_2814EB0D0 != -1)
  {
    swift_once();
  }

  if (qword_2814EB0D8)
  {
    v0 = qword_2814EB0D8;
    v1 = sub_2330F25C0();
    v2 = [v0 objectForKey_];

    if (v2)
    {
      sub_2330F2B50();

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
        return v4;
      }
    }

    else
    {
      sub_2330DBEC8(v7);
    }
  }

  return 0;
}

uint64_t NetworkStatusCoordinator.__allocating_init()()
{
  v0 = swift_allocObject();
  NetworkStatusCoordinator.init()();
  return v0;
}

uint64_t *NetworkStatusCoordinator.init()()
{
  v1 = *v0;
  v2 = sub_2330F24F0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE890, &unk_2330F76B0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v0[2] = sub_2330F2410();
  sub_2330EF8E4();
  sub_2330F24E0();
  v0[3] = sub_2330B045C(v6, 0xD00000000000006FLL, 0x80000002330F9180);
  v10 = sub_2330F2460();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_2330F2450();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v1;

  sub_2330F0948(sub_2330F0940);
  sub_2330F2430();

  v15 = v0[3];
  sub_2330F2440();

  return v0;
}

uint64_t sub_2330F0500(uint64_t a1)
{
  v2 = sub_2330F2490();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2330F2470();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v35 - v14;
  sub_2330F2480();
  v16 = (*(v9 + 88))(v15, v8);
  if (v16 == *MEMORY[0x277CD8F78])
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v18 = *(result + 16);

    v39 = 0;
LABEL_11:
    sub_2330F2400();
  }

  if (v16 == *MEMORY[0x277CD8F68] || v16 == *MEMORY[0x277CD8F70])
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v20 = *(result + 16);

    v39 = 1;
    goto LABEL_11;
  }

  if (qword_27DDDDBD8 != -1)
  {
    swift_once();
  }

  v21 = sub_2330F23C0();
  __swift_project_value_buffer(v21, qword_27DDE18C0);
  (*(v3 + 16))(v7, a1, v2);
  v22 = sub_2330F23A0();
  v23 = sub_2330F2970();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v37 = v23;
    v25 = v24;
    v38 = swift_slowAlloc();
    v40[0] = v38;
    *v25 = 136315394;
    v26 = sub_2330F2F30();
    v36 = v22;
    v28 = sub_233098F44(v26, v27, v40);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2080;
    sub_2330F2480();
    v29 = sub_2330F2650();
    v31 = v30;
    (*(v3 + 8))(v7, v2);
    v32 = sub_233098F44(v29, v31, v40);

    *(v25 + 14) = v32;
    v33 = v36;
    _os_log_impl(&dword_233084000, v36, v37, "%s found unexpected path status: %s", v25, 0x16u);
    v34 = v38;
    swift_arrayDestroy();
    MEMORY[0x23839A490](v34, -1, -1);
    MEMORY[0x23839A490](v25, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v7, v2);
  }

  return (*(v9 + 8))(v15, v8);
}

uint64_t sub_2330F0940(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2330F0500(a1);
}

uint64_t sub_2330F0948(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2330F0958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE860, &qword_2330F3BB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v18 - v13;
  v15 = sub_2330F2890();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v5;
  v16[5] = a1;
  v16[6] = a2;
  v16[7] = a3;
  v16[8] = a4;

  sub_2330878BC(0, 0, v14, &unk_2330F76C8, v16);
}

uint64_t sub_2330F0A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE8A0, &qword_2330F77D8);
  v8[9] = v9;
  v10 = *(v9 - 8);
  v8[10] = v10;
  v11 = *(v10 + 64) + 15;
  v8[11] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE8A8, &qword_2330F77E0);
  v8[12] = v12;
  v13 = *(v12 - 8);
  v8[13] = v13;
  v14 = *(v13 + 64) + 15;
  v8[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2330F0BD8, 0, 0);
}

uint64_t sub_2330F0BD8()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v0[2] = *(v0[4] + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE890, &unk_2330F76B0);
  v6 = sub_2330F1BB4(&qword_27DDDE8B0, &qword_27DDDE890, &unk_2330F76B0);
  MEMORY[0x238399220](v5, v6);
  sub_2330F23F0();
  (*(v3 + 8))(v2, v4);
  v7 = sub_2330F1BB4(&qword_27DDDE8B8, &qword_27DDDE8A8, &qword_2330F77E0);
  v8 = *(MEMORY[0x277D856D0] + 4);
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_2330F0D64;
  v10 = v0[14];
  v11 = v0[12];

  return MEMORY[0x282200308](v0 + 18, v11, v7);
}

uint64_t sub_2330F0D64()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_2330F11C8;
  }

  else
  {
    v3 = sub_2330F0E78;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2330F0E94()
{
  v23 = v0;
  v1 = *(v0 + 144);
  if (v1 == 2)
  {
    v2 = *(v0 + 88);
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = sub_2330DC48C(*(v0 + 40), *(v0 + 48));
    v7 = v6;
    if (qword_27DDDDBD8 != -1)
    {
      swift_once();
    }

    v8 = sub_2330F23C0();
    __swift_project_value_buffer(v8, qword_27DDE18C0);

    v9 = sub_2330F23A0();
    v10 = sub_2330F2980();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315394;
      v13 = sub_233098F44(v5, v7, &v22);

      *(v11 + 4) = v13;
      *(v11 + 12) = 2080;
      if (v1)
      {
        v14 = 0x656E6E6F63736964;
      }

      else
      {
        v14 = 0x657463656E6E6F63;
      }

      if (v1)
      {
        v15 = 0xEC00000064657463;
      }

      else
      {
        v15 = 0xE900000000000064;
      }

      v16 = sub_233098F44(v14, v15, &v22);

      *(v11 + 14) = v16;
      _os_log_impl(&dword_233084000, v9, v10, "%s received network status %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23839A490](v12, -1, -1);
      MEMORY[0x23839A490](v11, -1, -1);
    }

    else
    {
    }

    v17 = *(v0 + 56);
    *(v0 + 145) = v1 & 1;
    v21 = (v17 + *v17);
    v18 = v17[1];
    v19 = swift_task_alloc();
    *(v0 + 136) = v19;
    *v19 = v0;
    v19[1] = sub_2330F1254;
    v20 = *(v0 + 64);

    return v21(v0 + 145);
  }
}

uint64_t sub_2330F11C8()
{
  *(v0 + 24) = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE470, &qword_2330F46A0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_2330F1254()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *v0;

  v4 = sub_2330F1BB4(&qword_27DDDE8B8, &qword_27DDDE8A8, &qword_2330F77E0);
  v5 = *(MEMORY[0x277D856D0] + 4);
  v6 = swift_task_alloc();
  v1[15] = v6;
  *v6 = v3;
  v6[1] = sub_2330F0D64;
  v7 = v1[14];
  v8 = v1[12];

  return MEMORY[0x282200308](v1 + 18, v8, v4);
}

uint64_t sub_2330F13F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_233088E00;

  return sub_2330F0A9C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2330F14D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE860, &qword_2330F3BB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v18 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  v15 = sub_2330F2890();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v4;
  v16[5] = a1;
  v16[6] = a2;
  v16[7] = &unk_2330F76D8;
  v16[8] = v14;

  sub_2330878BC(0, 0, v13, &unk_2330F76E0, v16);
}

uint64_t sub_2330F163C(_BYTE *a1, int *a2)
{
  if (*a1)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {
    v7 = (a2 + *a2);
    v5 = a2[1];
    v6 = swift_task_alloc();
    *(v2 + 16) = v6;
    *v6 = v2;
    v6[1] = sub_2330877C8;

    return v7();
  }
}

uint64_t sub_2330F175C(_BYTE *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_233088E00;

  return sub_2330F163C(a1, v5);
}

uint64_t objectdestroy_5Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2330F1854(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2330877C8;

  return sub_2330F0A9C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t NetworkStatusCoordinator.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t NetworkStatusCoordinator.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t NetworkStatusCoordinator.NetworkStatus.description.getter()
{
  if (*v0)
  {
    result = 0x656E6E6F63736964;
  }

  else
  {
    result = 0x657463656E6E6F63;
  }

  *v0;
  return result;
}

uint64_t NetworkStatusCoordinator.NetworkStatus.hashValue.getter()
{
  v1 = *v0;
  sub_2330F2E80();
  MEMORY[0x238399C90](v1);
  return sub_2330F2EB0();
}

unint64_t sub_2330F1A70()
{
  result = qword_27DDDE898;
  if (!qword_27DDDE898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE898);
  }

  return result;
}

uint64_t sub_2330F1AC4()
{
  if (*v0)
  {
    result = 0x656E6E6F63736964;
  }

  else
  {
    result = 0x657463656E6E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_2330F1BB4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id static NSPredicate.truePredicate.getter()
{
  v0 = [objc_opt_self() predicateWithValue_];

  return v0;
}