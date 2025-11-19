_BYTE *sub_267D60FF0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_267D610C8(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB)
  {
    v2 = (a2 + 16776965) >> 24 == 255 ? 2 : 1;
    v3 = (a2 + 16776965) >> 24 ? v2 : 0;
    if (v3)
    {
      if (v3 == 2)
      {
        v4 = *(a1 + 3);
        if (*(a1 + 3))
        {
          return (*a1 | (*(a1 + 2) << 16) | (v4 << 24)) - 16776965;
        }
      }

      else
      {
        v4 = *(a1 + 3);
        if (*(a1 + 3))
        {
          return (*a1 | (*(a1 + 2) << 16) | (v4 << 24)) - 16776965;
        }
      }
    }
  }

  v6 = *a1;
  if (*a1 >= 2u && (v7 = (v6 & 0xFE) + 2147483646, (v7 & 0x7FFFFFFEu) > 3))
  {
    return (v7 & 0x7FFFFFFE | v6 & 1u) - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267D6116C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 16776965) >> 24 == 255)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if ((a3 + 16776965) >> 24)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    *result = a2 - 251;
    *(result + 2) = (a2 - 251) >> 16;
    if (v4)
    {
      v5 = ((a2 - 251) >> 24) + 1;
      if (v4 == 2)
      {
        *(result + 3) = v5;
      }

      else
      {
        *(result + 3) = v5;
      }
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_13;
    }

    if (v4 == 2)
    {
      *(result + 3) = 0;
LABEL_13:
      if (!a2)
      {
        return result;
      }

LABEL_19:
      *result = a2 + 5;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t sub_267D611FC(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_267D61238()
{
  result = qword_28022B588;
  if (!qword_28022B588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B588);
  }

  return result;
}

uint64_t sub_267D6128C(uint64_t a1, uint64_t a2)
{
  sub_267EF9B68();

  v3 = sub_267EF9E58();
  MEMORY[0x26D608E60](v3);

  MEMORY[0x26D608E60](0xD000000000000011, 0x8000000267F19390);
  v4 = INScoredPersonRecommendation.description.getter(a2);
  MEMORY[0x26D608E60](v4);

  return 0x707954686374616DLL;
}

uint64_t sub_267D61374(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v6 = sub_267EF8A08();
  __swift_project_value_buffer(v6, qword_280240FB0);
  v7 = sub_267EF89F8();
  v8 = sub_267EF95D8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_267B93000, v7, v8, "#CloseAssistantAction closing linen", v9, 2u);
    MEMORY[0x26D60A7B0](v9, -1, -1);
  }

  v10 = v3[8];
  __swift_project_boxed_opaque_existential_0(v3 + 4, v3[7]);
  v11 = [objc_allocWithZone(MEMORY[0x277D47A20]) init];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  sub_267D61B10();

  sub_267EF4268();
}

uint64_t sub_267D6150C(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B5A8, &qword_267F066C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v36[-v8];
  v10 = sub_267EF43D8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v36[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v36[-v16];
  sub_267D61B54(a1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = a3;
    v42 = a2;
    (*(v11 + 32))(v17, v9, v10);
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v18 = sub_267EF8A08();
    __swift_project_value_buffer(v18, qword_280240FB0);
    v40 = *(v11 + 16);
    v40(v15, v17, v10);
    v19 = sub_267EF89F8();
    v20 = sub_267EF95E8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v38 = v21;
      v39 = swift_slowAlloc();
      v43 = v39;
      *v21 = 136315138;
      sub_267D61C2C(&qword_28022B5B0, 255, MEMORY[0x277D5BE90]);
      v22 = sub_267EF9E58();
      v37 = v20;
      v24 = v23;
      v25 = *(v11 + 8);
      v25(v15, v10);
      v26 = sub_267BA33E8(v22, v24, &v43);

      v27 = v38;
      *(v38 + 1) = v26;
      _os_log_impl(&dword_267B93000, v19, v37, "#CloseAssistantAction CloseAssistant failed: %s", v27, 0xCu);
      v28 = v39;
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x26D60A7B0](v28, -1, -1);
      MEMORY[0x26D60A7B0](v27, -1, -1);
    }

    else
    {

      v25 = *(v11 + 8);
      v25(v15, v10);
    }

    sub_267D61C2C(&unk_28022AE10, 255, MEMORY[0x277D5BE90]);
    v34 = swift_allocError();
    v40(v35, v17, v10);
    v42(v34);

    return (v25)(v17, v10);
  }

  else
  {
    sub_267D61BC4(v9);
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v29 = sub_267EF8A08();
    __swift_project_value_buffer(v29, qword_280240FB0);
    v30 = sub_267EF89F8();
    v31 = sub_267EF95D8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_267B93000, v30, v31, "#CloseAssistantAction CloseAssistant successful", v32, 2u);
      MEMORY[0x26D60A7B0](v32, -1, -1);
    }

    return (a2)(0);
  }
}

uint64_t sub_267D619C4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_267D61A2C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return StaticAction.debugDescription.getter();
}

unint64_t sub_267D61B10()
{
  result = qword_28022A4C8;
  if (!qword_28022A4C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28022A4C8);
  }

  return result;
}

uint64_t sub_267D61B54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B5A8, &qword_267F066C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267D61BC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B5A8, &qword_267F066C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267D61C2C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_267D61C74()
{
  dword_280240C68 = 3;
  qword_280240C70 = 0xD000000000000017;
  unk_280240C78 = 0x8000000267F19630;
  qword_280240C80 = 0xD000000000000031;
  unk_280240C88 = 0x8000000267F0F890;
  qword_280240C90 = 0xD000000000000021;
  unk_280240C98 = 0x8000000267F19650;
  qword_280240CA0 = 0xD000000000000027;
  unk_280240CA8 = 0x8000000267F19680;
  qword_280240CB0 = 0xD000000000000056;
  unk_280240CB8 = 0x8000000267F196B0;
}

void sub_267D61D04()
{
  dword_280240CC0 = 9;
  qword_280240CC8 = 0xD000000000000010;
  unk_280240CD0 = 0x8000000267F194B0;
  qword_280240CD8 = 0xD000000000000031;
  unk_280240CE0 = 0x8000000267F0F890;
  qword_280240CE8 = 0xD00000000000001ALL;
  unk_280240CF0 = 0x8000000267F194D0;
  qword_280240CF8 = 0xD000000000000020;
  unk_280240D00 = 0x8000000267F194F0;
  qword_280240D08 = 0xD000000000000056;
  unk_280240D10 = 0x8000000267F19520;
}

uint64_t sub_267D61DA0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (v4 || (sub_267EF9EA8() & 1) != 0)
  {
    v5 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
    if (v5 || (sub_267EF9EA8() & 1) != 0)
    {
      v6 = *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48);
      if (v6 || (sub_267EF9EA8() & 1) != 0)
      {
        v7 = *(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64);
        if (v7 || (sub_267EF9EA8() & 1) != 0)
        {
          v8 = *(a1 + 80);
          v9 = *(a2 + 80);
          if (v8)
          {
            if (v9)
            {
              v10 = *(a1 + 72) == *(a2 + 72) && v8 == v9;
              if (v10 || (sub_267EF9EA8() & 1) != 0)
              {
                return 1;
              }
            }
          }

          else if (!v9)
          {
            return 1;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_267D61EA4()
{
  v1 = *v0;
  sub_267EF9FF8();
  v2 = v0[1];
  v3 = v0[2];
  sub_267EF9128();
  v4 = v0[3];
  v5 = v0[4];
  sub_267EF9128();
  v6 = v0[5];
  v7 = v0[6];
  sub_267EF9128();
  v8 = v0[7];
  v9 = v0[8];
  sub_267EF9128();
  if (!v0[10])
  {
    return sub_267EF9FE8();
  }

  v10 = v0[9];
  sub_267EF9FE8();

  return sub_267EF9128();
}

uint64_t sub_267D61F50()
{
  sub_267EF9FC8();
  sub_267D61EA4();
  return sub_267EFA018();
}

uint64_t sub_267D61F90()
{
  if (qword_280228768 != -1)
  {
    swift_once();
  }

  dword_280240D18 = 3;
  qword_280240D20 = 0xD00000000000001FLL;
  unk_280240D28 = 0x8000000267F19580;
  qword_280240D30 = 0xD000000000000031;
  unk_280240D38 = 0x8000000267F0F890;
  qword_280240D40 = 0xD000000000000029;
  unk_280240D48 = 0x8000000267F195A0;
  qword_280240D50 = qword_280240CA0;
  unk_280240D58 = unk_280240CA8;
  qword_280240D60 = 0xD00000000000005FLL;
  unk_280240D68 = 0x8000000267F195D0;
}

uint64_t sub_267D62070()
{
  sub_267EF9FC8();
  sub_267D61EA4();
  return sub_267EFA018();
}

id sub_267D620D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_267EF8FF8();
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_267D621A8;
  v11[3] = &block_descriptor_14;
  v8 = _Block_copy(v11);

  v9 = [v4 addUpdateHandlerForNamespaceName:v7 usingBlock:v8];

  _Block_release(v8);

  return v9;
}

uint64_t sub_267D621A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

double sub_267D6223C()
{
  v0 = [objc_opt_self() clientWithIdentifier_];
  sub_267BA9F38(0, &qword_280229280, 0x277CBEBD0);
  sub_267BF0A00(v4);
  type metadata accessor for SmartAppSelectionFeatureImpl();
  v1 = sub_267D62340();
  v2 = swift_allocObject();
  *(v2 + 120) = sub_267BA9F38(0, &qword_28022B5B8, 0x277D73660);
  *(v2 + 128) = &off_2878D3D40;
  *(v2 + 96) = v0;
  *(v2 + 136) = sub_267D623B0;
  *(v2 + 144) = 0;
  sub_267B9A5E8(v4, v2 + 16);
  result = 0.0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0;
  *(v2 + 152) = v1 & 1;
  qword_280240D70 = v2;
  return result;
}

id sub_267D62340()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = *MEMORY[0x277D25E58];
    v3 = sub_267EF9028();
    v5 = sub_267D635B0(v3, v4, v1);

    return (v5 == 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_267D623B4(uint64_t a1)
{
  v2 = v1;
  v40[0] = *(a1 + 72);
  v4 = *(&v40[0] + 1);
  if (*(&v40[0] + 1))
  {
    v5 = *&v40[0];
    sub_267BB16A4(v1 + 56, &v35, &qword_280229840, &qword_267EFE9E0);
    if (v36)
    {
      sub_267B9A5E8(&v35, &v31);
    }

    else
    {
      v6 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v7 = sub_267BEB478(0xD000000000000013, 0x8000000267F19710);
      v8 = v7;
      if (v7)
      {
        v7 = sub_267BA9F38(0, &qword_280229280, 0x277CBEBD0);
        v9 = &off_2878D36E8;
      }

      else
      {
        v9 = 0;
        *(&v31 + 1) = 0;
        v32 = 0;
      }

      *&v31 = v8;
      v33 = v7;
      v34 = v9;
      if (v36)
      {
        sub_267B9FF34(&v35, &qword_280229840, &qword_267EFE9E0);
      }
    }

    if (v33)
    {
      sub_267B9A5E8(&v31, v37);
      v10 = v38;
      v11 = v39;
      __swift_project_boxed_opaque_existential_0(v37, v38);
      (*(v11 + 40))(&v31, 0xD000000000000010, 0x8000000267F19730, v10, v11);
      if (v33)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B5C0, &unk_267F06790);
        if (swift_dynamicCast())
        {
          sub_267C8ED40(v5, v4, v35);
          v13 = v12;

          if (v13)
          {
            v14 = sub_267EF9398();
            if (v14 != 2)
            {
              v15 = v14;
              if (qword_280228818 != -1)
              {
                OUTLINED_FUNCTION_0();
              }

              v16 = sub_267EF8A08();
              v17 = __swift_project_value_buffer(v16, qword_280240FB0);
              OUTLINED_FUNCTION_5_40(v17);
              sub_267BB16A4(v40, &v31, &qword_28022A300, &qword_267EFEEE0);
              v18 = sub_267EF89F8();
              v19 = sub_267EF95D8();
              sub_267D63644(a1);
              sub_267B9FF34(v40, &qword_28022A300, &qword_267EFEEE0);
              if (os_log_type_enabled(v18, v19))
              {
                v20 = OUTLINED_FUNCTION_52();
                *&v31 = swift_slowAlloc();
                *v20 = 136315650;
                *(v20 + 4) = sub_267BA33E8(*(a1 + 8), *(a1 + 16), &v31);
                *(v20 + 12) = 2080;
                if (v15)
                {
                  v21 = 0x64656C62616E65;
                }

                else
                {
                  v21 = 0x6465626C61736964;
                }

                if (v15)
                {
                  v22 = 0xE700000000000000;
                }

                else
                {
                  v22 = 0xE800000000000000;
                }

                v23 = sub_267BA33E8(v21, v22, &v31);

                *(v20 + 14) = v23;
                *(v20 + 22) = 2080;
                *(v20 + 24) = OUTLINED_FUNCTION_2_41(v24);
                _os_log_impl(&dword_267B93000, v18, v19, "#SmartAppSelectionFeature: %s is forced %s due to the config override for %s", v20, 0x20u);
                swift_arrayDestroy();
                OUTLINED_FUNCTION_32_0();
                OUTLINED_FUNCTION_32_0();
              }

              __swift_destroy_boxed_opaque_existential_0(v37);
              return v15;
            }
          }
        }
      }

      else
      {
        sub_267B9FF34(&v31, &qword_28022AEF0, &qword_267EFCDE0);
      }

      __swift_destroy_boxed_opaque_existential_0(v37);
    }

    else
    {
      sub_267B9FF34(&v31, &qword_280229840, &qword_267EFE9E0);
    }
  }

  if (*(v2 + 152) == 1)
  {
    return sub_267D62C80(a1);
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v25 = sub_267EF8A08();
    __swift_project_value_buffer(v25, qword_280240FB0);
    v26 = sub_267EF89F8();
    v27 = sub_267EF95F8();
    if (os_log_type_enabled(v26, v27))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v28, v29, "#SmartAppSelectionFeature: SeAS experiments are disabled due to D&U exclusion");
      OUTLINED_FUNCTION_32_0();
    }

    return 0;
  }
}

BOOL sub_267D62834(uint64_t a1, uint64_t a2)
{
  v5 = sub_267EF2E98();
  v6 = OUTLINED_FUNCTION_58(v5);
  v52 = v7;
  v53 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v49 = v10;
  v11 = sub_267EF2778();
  v12 = OUTLINED_FUNCTION_58(v11);
  v50 = v13;
  v51 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v48 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v48 - v19;
  v21 = sub_267EF2CC8();
  v22 = OUTLINED_FUNCTION_58(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v22);
  v29 = &v48 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v48 - v30;
  v32 = v2[5];
  v33 = v2[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v32);
  (*(v33 + 40))(v54, a1, a2, v32, v33);
  if (!v54[3])
  {
    sub_267B9FF34(v54, &qword_28022AEF0, &qword_267EFCDE0);
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
    goto LABEL_7;
  }

  v34 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v20, v34 ^ 1u, 1, v21);
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
LABEL_7:
    sub_267B9FF34(v20, &qword_28022BD90, &unk_267EFCDD0);
    return 0;
  }

  (*(v24 + 32))(v31, v20, v21);
  v35 = v49;
  sub_267EF2E78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802294F8, &qword_267F038D0);
  v36 = sub_267EF2E88();
  OUTLINED_FUNCTION_58(v36);
  v38 = v37;
  v40 = *(v39 + 72);
  v41 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_267EFC020;
  (*(v38 + 104))(v42 + v41, *MEMORY[0x277CC9968], v36);
  sub_267E6EAA0();
  sub_267EF2CB8();
  v43 = v48;
  sub_267EF2E48();

  v44 = *(v24 + 8);
  v44(v29, v21);
  (*(v52 + 8))(v35, v53);
  v45 = sub_267EF2758();
  LOBYTE(v36) = v46;
  (*(v50 + 8))(v43, v51);
  v44(v31, v21);
  return (v36 & 1) == 0 && v45 <= 27;
}

BOOL sub_267D62C80(void *a1)
{
  v2 = v1;
  if (sub_267D62834(a1[7], a1[8]))
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v4 = sub_267EF8A08();
    v5 = __swift_project_value_buffer(v4, qword_280240FB0);
    OUTLINED_FUNCTION_5_40(v5);
    v6 = sub_267EF89F8();
    v7 = sub_267EF95D8();
    sub_267D63644(a1);
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_19;
    }

    v8 = OUTLINED_FUNCTION_48();
    v9 = OUTLINED_FUNCTION_52();
    v50[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_267BA33E8(a1[1], a1[2], v50);
    OUTLINED_FUNCTION_59_2(&dword_267B93000, v10, v11, "#SmartAppSelectionFeature - this device has already run the experiment %s within 28 days");
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_32_0();
    goto LABEL_18;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v12 = sub_267EF8A08();
  v13 = __swift_project_value_buffer(v12, qword_280240FB0);
  OUTLINED_FUNCTION_5_40(v13);
  v14 = sub_267EF89F8();
  v15 = sub_267EF95D8();
  sub_267D63644(a1);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_48();
    v17 = OUTLINED_FUNCTION_52();
    v50[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_267BA33E8(a1[1], a1[2], v50);
    OUTLINED_FUNCTION_59_2(&dword_267B93000, v18, v19, "#SmartAppSelectionFeature - this device has not run this experiment %s within 28 days. Checking Trial configs");
    __swift_destroy_boxed_opaque_existential_0(v17);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v20 = v2[15];
  v21 = v2[16];
  __swift_project_boxed_opaque_existential_0(v2 + 12, v20);
  v22 = a1[3];
  v23 = a1[4];
  v24 = (*(v21 + 8))(a1[5], a1[6], v22, v23, v20, v21);
  if (!v24)
  {
    OUTLINED_FUNCTION_5_40(0);
    v6 = sub_267EF89F8();
    v35 = sub_267EF95E8();
    sub_267D63644(a1);
    if (!os_log_type_enabled(v6, v35))
    {
LABEL_19:

      return 0;
    }

    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v50[0] = v37;
    *v36 = 136315394;
    *(v36 + 4) = OUTLINED_FUNCTION_2_41(v37);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_267BA33E8(v22, v23, v50);
    _os_log_impl(&dword_267B93000, v6, v35, "#SmartAppSelectionFeature - missing trial level for expected factor: %s in namespace: %s", v36, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32_0();
LABEL_18:
    OUTLINED_FUNCTION_32_0();
    goto LABEL_19;
  }

  v25 = v24;
  if ([v24 levelOneOfCase] == 15)
  {
    sub_267D6360C(a1, v50);
    v26 = v25;
    v27 = sub_267EF89F8();
    v28 = sub_267EF95D8();
    sub_267D63644(a1);

    v29 = &selRef_personTypes;
    if (os_log_type_enabled(v27, v28))
    {
      v30 = swift_slowAlloc();
      v31 = OUTLINED_FUNCTION_52();
      v50[0] = v31;
      *v30 = 136315394;
      *(v30 + 4) = OUTLINED_FUNCTION_2_41(v31);
      *(v30 + 12) = 2048;
      [v26 doubleValue];
      *(v30 + 14) = v32;
      _os_log_impl(&dword_267B93000, v27, v28, "#SmartAppSelectionFeature - Trial factor %s is set to: %f", v30, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v31);
      OUTLINED_FUNCTION_32_0();
      v29 = &selRef_personTypes;
      OUTLINED_FUNCTION_32_0();
    }

    v33 = [v26 v29[37]];
    if (v34 != 0.0)
    {
      if (v34 >= 0.0 && v34 <= 0.1)
      {
        [v26 v29[37]];
        v38 = sub_267D6325C(a1, v45);

        return v38;
      }

      if (v34 == 1.0)
      {
        v33 = AFIsCustomerInstall();
        if ((v33 & 1) == 0)
        {

          return 1;
        }
      }

      OUTLINED_FUNCTION_5_40(v33);
      v46 = sub_267EF89F8();
      v47 = sub_267EF95E8();
      sub_267D63644(a1);
      if (os_log_type_enabled(v46, v47))
      {
        v48 = OUTLINED_FUNCTION_48();
        v49 = OUTLINED_FUNCTION_52();
        v50[0] = v49;
        *v48 = 136315138;
        *(v48 + 4) = OUTLINED_FUNCTION_2_41(v49);
        _os_log_impl(&dword_267B93000, v46, v47, "#SmartAppSelectionFeature - Trial factor %s is set as invalid value, only a value less than 10%% is supported", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v49);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }
    }
  }

  else
  {
    sub_267D6360C(a1, v50);
    v40 = v25;
    v41 = sub_267EF89F8();
    v42 = sub_267EF95E8();
    sub_267D63644(a1);
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = OUTLINED_FUNCTION_52();
      v50[0] = v44;
      *v43 = 136315394;
      *(v43 + 4) = OUTLINED_FUNCTION_2_41(v44);
      *(v43 + 12) = 1024;
      *(v43 + 14) = [v40 levelOneOfCase];

      _os_log_impl(&dword_267B93000, v41, v42, "#SmartAppSelectionFeature - Trial factor %s is set as unsupported type: %d", v43, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v44);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    else
    {
    }
  }

  return 0;
}

BOOL sub_267D6325C(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = *(v2 + 136);
  v7 = *(v2 + 144);
  v8 = v6(0.0, 1.0);
  if (v8 >= a2)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v15 = sub_267EF8A08();
    __swift_project_value_buffer(v15, qword_280240FB0);
    v16 = sub_267EF89F8();
    v17 = sub_267EF95D8();
    if (os_log_type_enabled(v16, v17))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v18, v19, "#SmartAppSelectionFeature - the random sampling for the experiment just ran with the result: disabled");
      OUTLINED_FUNCTION_32_0();
    }
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v9 = sub_267EF8A08();
    __swift_project_value_buffer(v9, qword_280240FB0);
    v10 = sub_267EF89F8();
    v11 = sub_267EF95F8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = OUTLINED_FUNCTION_48();
      *v12 = 134217984;
      *(v12 + 4) = a2 * 100.0;
      _os_log_impl(&dword_267B93000, v10, v11, "#SmartAppSelectionFeature - the random sampling for the experiment just ran at a sample rate of %f%%, with the result being: enabled.", v12, 0xCu);
      OUTLINED_FUNCTION_32_0();
    }

    v13 = v3[5];
    v14 = v3[6];
    __swift_project_boxed_opaque_existential_0(v3 + 2, v13);
    v21[3] = sub_267EF2CC8();
    __swift_allocate_boxed_opaque_existential_0(v21);
    sub_267EF2CB8();
    (*(v14 + 64))(v21, *(a1 + 56), *(a1 + 64), v13, v14);
    sub_267B9FF34(v21, &qword_28022AEF0, &qword_267EFCDE0);
  }

  return v8 < a2;
}

uint64_t *sub_267D6346C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_267B9FF34((v0 + 7), &qword_280229840, &qword_267EFE9E0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v1 = v0[18];

  return v0;
}

uint64_t sub_267D634B4()
{
  sub_267D6346C();

  return swift_deallocClassInstance();
}

uint64_t sub_267D6350C(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = 0;
  result = MEMORY[0x26D60A7C0](&v7, 8);
  if (v5 * vcvtd_n_f64_u64(v7 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a2 == a3)
  {
    return sub_267D6350C(v6, a2, a3);
  }

  return result;
}

id sub_267D635B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267EF8FF8();

  v5 = [a3 effectiveBoolValueForSetting_];

  return v5;
}

uint64_t sub_267D6367C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_267D636BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_267D63724()
{
  result = qword_28022B5C8;
  if (!qword_28022B5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B5C8);
  }

  return result;
}

uint64_t sub_267D63778()
{
  OUTLINED_FUNCTION_12();
  v0[24] = v1;
  v0[25] = v2;
  v3 = sub_267EF2BA8();
  v0[26] = v3;
  v4 = *(v3 - 8);
  OUTLINED_FUNCTION_34_2();
  v0[27] = v5;
  v7 = *(v6 + 64) + 15;
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0) - 8) + 64) + 15;
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();
  v0[32] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267D63884()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = sub_267EF8A08();
  v0[33] = __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v3))
  {
    v4 = v0[25];
    OUTLINED_FUNCTION_21_0();
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    OUTLINED_FUNCTION_32_0();
  }

  v11 = objc_opt_self();
  v12 = sub_267BE28D0(v11, &selRef_bagSubProfile);
  if (!v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = sub_267BE28D0(v11, &selRef_bagSubProfileVersion);
  if (!v14)
  {
LABEL_11:
    __break(1u);
    return MEMORY[0x282200938](v12);
  }

  v15 = v0[25];
  sub_267BA9F38(0, &qword_28022B5D0, 0x277CEE3F8);
  v16 = sub_267D64518();
  v0[34] = v16;
  v17 = *MEMORY[0x277CEE1E8];
  sub_267EF9028();
  v18 = sub_267D65BE4(v16);
  v0[35] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_267EFC020;
  v0[21] = v15;
  *(v19 + 32) = sub_267EF9E58();
  *(v19 + 40) = v20;
  v21 = sub_267D65A88(MEMORY[0x277D84F90], v19, v18);
  v0[36] = v21;
  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = sub_267D63B6C;
  v22 = swift_continuation_init();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B5D8, &qword_267F06898);
  OUTLINED_FUNCTION_1_49(v23);
  v0[11] = 1107296256;
  v0[12] = sub_267D645AC;
  v0[13] = &block_descriptor_15;
  v0[14] = v22;
  [v21 resultWithCompletion_];
  v12 = (v0 + 2);

  return MEMORY[0x282200938](v12);
}

uint64_t sub_267D63B6C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 296) = v4;
  if (v4)
  {
    v5 = sub_267D64334;
  }

  else
  {
    v5 = sub_267D63C6C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

id sub_267D63C6C()
{
  v69 = v0;
  v1 = *(v0 + 176);
  *(v0 + 304) = v1;
  v67 = v1;
  v2 = [v1 allItems];
  sub_267BA9F38(0, &qword_28022B5E0, 0x277CEE518);
  v3 = sub_267EF92F8();

  result = sub_267BAF0DC(v3);
  v5 = result;
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

LABEL_14:
      v19 = *(v0 + 248);
      v20 = *(v0 + 208);
      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
      v7 = 0;
      goto LABEL_15;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D609870](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      result = *(v3 + 8 * i + 32);
    }

    v7 = result;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }

    v8 = [result productPageURL];
    v9 = *(v0 + 256);
    v10 = *(v0 + 208);
    if (v8)
    {
      break;
    }

    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
    result = sub_267B9FF34(v9, &qword_280229E20, &unk_267EFDCC0);
  }

  v14 = v8;

  sub_267EF2B48();

  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  sub_267B9FF34(v9, &qword_280229E20, &unk_267EFDCC0);
  if (!v7)
  {
    goto LABEL_14;
  }

  v15 = [v7 productPageURL];
  if (v15)
  {
    v16 = v15;
    v17 = *(v0 + 240);
    sub_267EF2B48();

    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v36 = *(v0 + 240);
  v37 = *(v0 + 248);
  v38 = *(v0 + 208);
  __swift_storeEnumTagSinglePayload(v36, v18, 1, v38);
  sub_267C26704(v36, v37);
  if (__swift_getEnumTagSinglePayload(v37, 1, v38) != 1)
  {
    v39 = *(v0 + 264);
    v41 = *(v0 + 224);
    v40 = *(v0 + 232);
    v42 = *(v0 + 208);
    v43 = *(v0 + 216);
    v44 = *(v43 + 32);
    v44(v40, *(v0 + 248), v42);
    (*(v43 + 16))(v41, v40, v42);
    v45 = sub_267EF89F8();
    v46 = sub_267EF95D8();
    v47 = os_log_type_enabled(v45, v46);
    v48 = *(v0 + 280);
    v49 = *(v0 + 288);
    v51 = *(v0 + 216);
    v50 = *(v0 + 224);
    v66 = *(v0 + 208);
    if (v47)
    {
      OUTLINED_FUNCTION_21_0();
      v65 = v52;
      swift_slowAlloc();
      log = v45;
      v53 = OUTLINED_FUNCTION_44();
      v68 = v53;
      *v49 = 136315138;
      v54 = v44;
      v55 = sub_267EF2AC8();
      v63 = v46;
      v57 = v56;
      (*(v51 + 8))(v50, v66);
      v58 = v55;
      v44 = v54;
      v59 = sub_267BA33E8(v58, v57, &v68);

      *(v49 + 4) = v59;
      _os_log_impl(&dword_267B93000, log, v63, "#NowPlayingUtilities found product URL for item '%s'", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_45_2();
    }

    else
    {

      (*(v51 + 8))(v50, v66);
    }

    v60 = *(v0 + 208);
    v61 = *(v0 + 192);
    v44(v61, *(v0 + 232), v60);
    __swift_storeEnumTagSinglePayload(v61, 0, 1, v60);
    OUTLINED_FUNCTION_15_24();

    OUTLINED_FUNCTION_17();

    return v62();
  }

LABEL_15:
  *(v0 + 312) = v7;
  v25 = *(v0 + 264);
  sub_267B9FF34(*(v0 + 248), &qword_280229E20, &unk_267EFDCC0);
  v26 = sub_267EF89F8();
  v27 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v27))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v28, v29, v30, v31, v32, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v33 = swift_task_alloc();
  *(v0 + 320) = v33;
  *v33 = v0;
  v33[1] = sub_267D641B0;
  v34 = *(v0 + 192);
  v35 = *(v0 + 200);

  return sub_267D645D8(v34, v35);
}

uint64_t sub_267D641B0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 320);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267D64294()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v4 = *(v0 + 280);
  v3 = *(v0 + 288);

  OUTLINED_FUNCTION_15_24();

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267D64334()
{
  v31 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 264);
  swift_willThrow();
  v3 = v1;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 288);
    v6 = *(v0 + 296);
    v8 = *(v0 + 272);
    v29 = *(v0 + 280);
    v9 = *(v0 + 200);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 134218242;
    *(v10 + 4) = v9;
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v13 = *(v0 + 144);
    v12 = *(v0 + 152);
    v14 = *(v0 + 160);
    v15 = sub_267EF9F68();
    v17 = sub_267BA33E8(v15, v16, &v30);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_267B93000, v4, v5, "#NowPlayingUtilities AppleMediaServices failed to lookup itemIdentifier '%lld', reason: %s", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_45_2();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
    v19 = *(v0 + 288);
    v18 = *(v0 + 296);
    v20 = *(v0 + 280);
  }

  v21 = *(v0 + 208);
  v22 = *(v0 + 192);
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  OUTLINED_FUNCTION_15_24();

  OUTLINED_FUNCTION_17();

  return v27();
}

id sub_267D64518()
{
  v0 = sub_267EF8FF8();

  v1 = sub_267EF8FF8();

  v2 = [swift_getObjCClassFromMetadata() bagForProfile:v0 profileVersion:v1];

  return v2;
}

uint64_t sub_267D645D8(uint64_t a1, uint64_t a2)
{
  v2[49] = a1;
  v2[50] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0) - 8) + 64) + 15;
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267D64680, 0, 0);
}

uint64_t sub_267D64680()
{
  v1 = objc_opt_self();
  v2 = sub_267BE28D0(v1, &selRef_bagSubProfile);
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = sub_267BE28D0(v1, &selRef_bagSubProfileVersion);
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x282200938](v2);
  }

  v5 = v0[52];
  v6 = v0[50];
  sub_267BA9F38(0, &qword_28022B5D0, 0x277CEE3F8);
  v7 = sub_267D64518();
  v0[53] = v7;
  v8 = sub_267D65B24(203, 0xD00000000000001BLL, 0x8000000267F197B0, 49, 0xE100000000000000, v7);
  v0[54] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_267EFC020;
  v0[45] = v6;
  *(v9 + 32) = sub_267EF9E58();
  *(v9 + 40) = v10;
  sub_267D659B0(v9, v8);
  v0[55] = sub_267EF2BA8();
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v15 = [v8 perform];
  v0[56] = v15;
  v0[2] = v0;
  v0[7] = v0 + 46;
  v0[3] = sub_267D648F0;
  v16 = swift_continuation_init();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B5E8, &qword_267F068A8);
  OUTLINED_FUNCTION_1_49(v17);
  v0[11] = 1107296256;
  v0[12] = sub_267D645AC;
  v0[13] = &block_descriptor_6;
  v0[14] = v16;
  [v15 resultWithCompletion_];
  v2 = (v0 + 2);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_267D648F0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 456) = v4;
  if (v4)
  {
    v5 = sub_267D64FC8;
  }

  else
  {
    v5 = sub_267D649F0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_267D649F0()
{
  v57 = v0;
  v2 = qword_280228818;
  v3 = *(v0 + 368);
  if (v2 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v4 = sub_267EF8A08();
  __swift_project_value_buffer(v4, qword_280240FB0);
  v5 = v3;
  v6 = sub_267EF89F8();
  v7 = sub_267EF95D8();
  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_21_0();
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = [v5 responseStatusCode];

    _os_log_impl(&dword_267B93000, v6, v7, "#NowPlayingUtilities amsPromise returned with result code %ld", v8, 0xCu);
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v6 = v5;
  }

  v9 = sub_267D65A1C(v5);
  if (!v9)
  {
    goto LABEL_18;
  }

  if (!*(v9 + 16))
  {

LABEL_18:
    v28 = sub_267EF89F8();
    v29 = sub_267EF95D8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_267B93000, v28, v29, "#NowPlayingUtilities amsMediaResult does not have a responseDataItem, returning nil", v30, 2u);
      OUTLINED_FUNCTION_32_0();
      v31 = *(v0 + 448);
      v32 = (v0 + 432);
      v33 = *(v0 + 424);
      v34 = v5;
    }

    else
    {
      v32 = (v0 + 448);
      v33 = v28;
      v34 = *(v0 + 424);
      v28 = *(v0 + 432);
      v31 = v5;
    }

    v35 = *v32;
    v36 = *(v0 + 440);
    v37 = *(v0 + 416);
    v38 = *(v0 + 392);

    sub_267B9FF34(v37, &qword_280229E20, &unk_267EFDCC0);
    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v36);
    goto LABEL_27;
  }

  v10 = *(v9 + 32);
  swift_bridgeObjectRetain_n();

  v11 = sub_267EF89F8();
  v12 = sub_267EF95D8();

  if (os_log_type_enabled(v11, v12))
  {
    OUTLINED_FUNCTION_21_0();
    swift_slowAlloc();
    v13 = OUTLINED_FUNCTION_44();
    v56 = v13;
    *v1 = 136315138;
    v14 = sub_267EF8F18();
    v16 = sub_267BA33E8(v14, v15, &v56);

    *(v1 + 4) = v16;
    _os_log_impl(&dword_267B93000, v11, v12, "#NowPlayingUtilities firstDataItem %s", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_45_2();
  }

  *(v0 + 312) = 0x7475626972747461;
  *(v0 + 320) = 0xEA00000000007365;
  sub_267EF9AE8();
  sub_267C8EE7C(v10, (v0 + 224));

  sub_267C965CC(v0 + 144);
  if (!*(v0 + 248))
  {
    v45 = *(v0 + 448);
    v47 = *(v0 + 424);
    v46 = *(v0 + 432);

    v48 = v0 + 224;
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B5F0, &unk_267F0C690);
  if (swift_dynamicCast())
  {
    v17 = *(v0 + 384);
    *(v0 + 328) = 7107189;
    *(v0 + 336) = 0xE300000000000000;
    sub_267EF9AE8();
    sub_267C8EE7C(v17, (v0 + 256));

    sub_267C965CC(v0 + 184);
    if (*(v0 + 280))
    {
      if (swift_dynamicCast())
      {
        v19 = *(v0 + 344);
        v18 = *(v0 + 352);

        v20 = sub_267EF89F8();
        v21 = sub_267EF95D8();

        if (os_log_type_enabled(v20, v21))
        {
          OUTLINED_FUNCTION_21_0();
          swift_slowAlloc();
          v22 = OUTLINED_FUNCTION_44();
          v56 = v22;
          *v1 = 136315138;
          *(v1 + 4) = sub_267BA33E8(v19, v18, &v56);
          _os_log_impl(&dword_267B93000, v20, v21, "#NowPlayingUtilities url is %s", v1, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v22);
          OUTLINED_FUNCTION_32_0();
          OUTLINED_FUNCTION_45_2();
        }

        v23 = *(v0 + 448);
        v25 = *(v0 + 424);
        v24 = *(v0 + 432);
        v27 = *(v0 + 408);
        v26 = *(v0 + 416);
        sub_267EF2B88();

        sub_267B9FF34(v26, &qword_280229E20, &unk_267EFDCC0);
        sub_267C26704(v27, v26);
        goto LABEL_26;
      }

      goto LABEL_22;
    }

    v49 = *(v0 + 448);
    v51 = *(v0 + 424);
    v50 = *(v0 + 432);

    v48 = v0 + 256;
LABEL_25:
    sub_267B9FF34(v48, &qword_28022AEF0, &qword_267EFCDE0);
    goto LABEL_26;
  }

LABEL_22:
  v42 = *(v0 + 448);
  v44 = *(v0 + 424);
  v43 = *(v0 + 432);

LABEL_26:
  sub_267C26704(*(v0 + 416), *(v0 + 392));
LABEL_27:
  v53 = *(v0 + 408);
  v52 = *(v0 + 416);

  OUTLINED_FUNCTION_17();

  return v54();
}

uint64_t sub_267D64FC8()
{
  v35 = v0;
  v2 = *(v0 + 456);
  swift_willThrow();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v3 = *(v0 + 456);
  v4 = sub_267EF8A08();
  __swift_project_value_buffer(v4, qword_280240FB0);
  v5 = v3;
  v6 = sub_267EF89F8();
  v7 = sub_267EF95E8();

  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 448);
  v9 = *(v0 + 456);
  v11 = *(v0 + 432);
  v12 = *(v0 + 416);
  if (v8)
  {
    v32 = *(v0 + 424);
    v33 = *(v0 + 416);
    v13 = *(v0 + 400);
    swift_slowAlloc();
    v14 = OUTLINED_FUNCTION_44();
    v34 = v14;
    *v1 = 134218242;
    *(v1 + 4) = v13;
    *(v1 + 12) = 2080;
    swift_getErrorValue();
    v16 = *(v0 + 288);
    v15 = *(v0 + 296);
    v17 = *(v0 + 304);
    v18 = sub_267EF9F68();
    v20 = sub_267BA33E8(v18, v19, &v34);

    *(v1 + 14) = v20;
    _os_log_impl(&dword_267B93000, v6, v7, "#NowPlayingUtilities AppleMediaResult failed to lookup itemIdentifier '%lld', reason: %s", v1, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v14);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_45_2();

    v21 = v33;
  }

  else
  {

    v21 = v12;
  }

  sub_267B9FF34(v21, &qword_280229E20, &unk_267EFDCC0);
  v22 = *(v0 + 440);
  v23 = *(v0 + 392);
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  v29 = *(v0 + 408);
  v28 = *(v0 + 416);

  OUTLINED_FUNCTION_17();

  return v30();
}

uint64_t *sub_267D651E8(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, id), uint64_t (*a5)(uint64_t, id))
{
  result = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a3)
  {
    v9 = a3;
    v10 = v8;
    v11 = a4;

    return v11(v10, v9);
  }

  if (a2)
  {
    v9 = a2;
    v10 = v8;
    v11 = a5;

    return v11(v10, v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_267D65298()
{
  OUTLINED_FUNCTION_12();
  v1 = sub_267EF9648();
  v0[8] = v1;
  v2 = *(v1 - 8);
  OUTLINED_FUNCTION_34_2();
  v0[9] = v3;
  v5 = *(v4 + 64) + 15;
  v0[10] = swift_task_alloc();
  v6 = sub_267EF9638();
  v0[11] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v0[12] = swift_task_alloc();
  v8 = *(*(sub_267EF8EA8() - 8) + 64) + 15;
  v0[13] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267D653A0()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v10 = v0[8];
  sub_267BA9F38(0, &qword_280229038, 0x277D85C78);
  sub_267EF8E78();
  v0[6] = MEMORY[0x277D84F90];
  sub_267C10AF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229048, &unk_267EFC400);
  sub_267C10B4C();
  sub_267EF99C8();
  (*(v5 + 104))(v4, *MEMORY[0x277D85260], v10);
  v6 = sub_267EF9668();
  v0[14] = v6;
  v7 = swift_task_alloc();
  v0[15] = v7;
  *(v7 + 16) = v6;
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_267D6556C;

  return sub_267C902D8(sub_267D65C94, v7);
}

uint64_t sub_267D6556C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 128);
  v5 = *(v3 + 120);
  v6 = *v0;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v9 + 136) = v8;

  v10 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_267D6566C()
{
  v1 = *(v0 + 136);
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = *MEMORY[0x277D27CC8];
  if (!*MEMORY[0x277D27CC8])
  {
    __break(1u);
    return;
  }

  v3 = v1;
  if ([v3 __swift_objectForKeyedSubscript_])
  {
    sub_267EF99B8();

    swift_unknownObjectRelease();
  }

  else
  {

    v21 = 0u;
    v22 = 0u;
  }

  *(v0 + 16) = v21;
  *(v0 + 32) = v22;
  if (!*(v0 + 40))
  {
    sub_267B9FF34(v0 + 16, &qword_28022AEF0, &qword_267EFCDE0);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v6 = sub_267EF8A08();
    __swift_project_value_buffer(v6, qword_280240FB0);
    v7 = sub_267EF89F8();
    v8 = sub_267EF95D8();
    v9 = OUTLINED_FUNCTION_10_2(v8);
    v10 = *(v0 + 136);
    v11 = *(v0 + 112);
    if (v9)
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_21();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v5 = 0;
    v4 = 1;
    goto LABEL_15;
  }

  v4 = 0;
  v5 = *(v0 + 56);
LABEL_15:
  v18 = *(v0 + 96);
  v17 = *(v0 + 104);
  v19 = *(v0 + 80);

  v20 = *(v0 + 8);

  v20(v5, v4);
}

void sub_267D65868(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v6[4] = sub_267C36688;
  v6[5] = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_267D65944;
  v6[3] = &block_descriptor_10;
  v5 = _Block_copy(v6);

  MRMediaRemoteGetNowPlayingInfo();
  _Block_release(v5);
}

void sub_267D65944(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_267D659B0(uint64_t a1, void *a2)
{
  v3 = sub_267EF92D8();

  [a2 setItemIdentifiers_];
}

uint64_t sub_267D65A1C(void *a1)
{
  v1 = [a1 responseDataItems];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B5F0, &unk_267F0C690);
  v3 = sub_267EF92F8();

  return v3;
}

id sub_267D65A88(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267EF92D8();

  v5 = sub_267EF92D8();

  v6 = [a3 performLookupWithBundleIdentifiers:v4 itemIdentifiers:v5];

  return v6;
}

id sub_267D65B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = objc_allocWithZone(MEMORY[0x277CEE570]);
  v9 = sub_267EF8FF8();

  v10 = sub_267EF8FF8();

  v11 = [v8 initWithType:a1 clientIdentifier:v9 clientVersion:v10 bag:a6];

  return v11;
}

id sub_267D65BE4(void *a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CEE510]);
  v3 = sub_267EF8FF8();

  v4 = sub_267EF8FF8();

  v5 = [v2 initWithBag:a1 caller:v3 keyProfile:v4];

  return v5;
}

uint64_t sub_267D65CCC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B5F8, &qword_267F068F0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = sub_267EF80E8();

  sub_267EF80F8();

  return v3;
}

uint64_t sub_267D65D8C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_267D65DCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_267D65E38()
{
  OUTLINED_FUNCTION_12();
  v1[44] = v2;
  v1[45] = v0;
  v1[42] = v3;
  v1[43] = v4;
  v1[41] = v5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v1[46] = swift_task_alloc();
  v7 = sub_267EF2E38();
  v1[47] = v7;
  v8 = *(v7 - 8);
  v1[48] = v8;
  v9 = *(v8 + 64) + 15;
  v1[49] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267D65F2C()
{
  v2 = (v0 + 296);
  v3 = *(v0 + 360);
  type metadata accessor for MessagesLinkMetadata(0);
  v60 = *(v3 + 64);
  *(v0 + 400) = sub_267E87780(v60);
  v4 = *(v3 + 24);
  if (v4)
  {
    v6 = *(v0 + 384);
    v5 = *(v0 + 392);
    v1 = *(v0 + 376);
    v7 = *(v0 + 328);
    v8 = v7[5];
    v9 = v7[6];
    __swift_project_boxed_opaque_existential_0(v7 + 2, v8);
    (*(v9 + 8))(v8, v9);
    v10 = *(v0 + 240);
    __swift_project_boxed_opaque_existential_0((v0 + 208), *(v0 + 232));
    sub_267EF3B68();
    v11 = v7[52];

    v12 = sub_267BC20F4(v5, 0, 0, v11, v4);

    (*(v6 + 8))(v5, v1);
    __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  }

  else
  {
    v12 = 0;
  }

  *(v0 + 408) = v12;
  *v2 = 0;
  *(v0 + 304) = 0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v13 = *(v0 + 360);
  v14 = sub_267EF8A08();
  *(v0 + 416) = __swift_project_value_buffer(v14, qword_280240FB0);
  sub_267D68B34(v13, v0 + 16);
  v15 = sub_267EF89F8();
  v16 = sub_267EF95D8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_48();
    v1 = swift_slowAlloc();
    *v17 = 138412290;
    v18 = *(v0 + 80);
    sub_267C6AC38(v0 + 16);
    *(v17 + 4) = v18;
    *v1 = v18;
    _os_log_impl(&dword_267B93000, v15, v16, "#LinkComponent link metadata %@", v17, 0xCu);
    sub_267B9F98C(v1, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    sub_267C6AC38(v0 + 16);
  }

  v19 = *(v0 + 360);
  v20 = sub_267D670F8();
  *(v0 + 544) = v20 & 1;
  *(v0 + 152) = &type metadata for Features;
  *(v0 + 160) = sub_267BAFCAC();
  *(v0 + 128) = 12;
  v21 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  if (v21 & 1) != 0 && (v20)
  {
    v22 = *(v0 + 328);
    v23 = *(v22 + 416);
    if (v23)
    {
      v24 = [*(*(v23 + 168) + 16) smsContext];
      v25 = [v24 richAttachmentIntelligenceFeatureUsage];

      v22 = *(v0 + 328);
    }

    else
    {
      v25 = 0;
    }

    *(v0 + 424) = v25;
    sub_267B9AFEC(v22 + 304, v0 + 168);
    v49 = [v60 title];
    if (v49)
    {
      v50 = v49;
      v51 = sub_267EF9028();
      v53 = v52;
    }

    else
    {
      v51 = 0;
      v53 = 0xE000000000000000;
    }

    *(v0 + 432) = v53;
    if (v25)
    {
      [v25 addIsReadingIntelligenceAttempted_];
    }

    v54 = swift_task_alloc();
    *(v0 + 440) = v54;
    v54[2] = v0 + 168;
    v54[3] = v51;
    v54[4] = v53;
    OUTLINED_FUNCTION_10(&unk_267F00578);
    v55 = swift_task_alloc();
    *(v0 + 448) = v55;
    *v55 = v0;
    v55[1] = sub_267D6648C;
    OUTLINED_FUNCTION_21_18();

    __asm { BR              X2 }
  }

  OUTLINED_FUNCTION_34_13();
  if ((v26 & 1) == 0)
  {
    v27 = *(v0 + 368);
    INMessageEffectType.description.getter(v20[4]);
    sub_267EF90F8();

    v28 = *(v0 + 360);
  }

  v29 = *(v0 + 368);
  v30 = *(v0 + 328);
  v31 = sub_267EF79B8();
  OUTLINED_FUNCTION_31_16(v31);
  *(v0 + 472) = v32;
  if (*(v30 + 88))
  {
    OUTLINED_FUNCTION_10(&unk_267F08D38);
    v33 = swift_task_alloc();
    *(v0 + 480) = v33;
    *v33 = v0;
    OUTLINED_FUNCTION_6_35(v33);
    OUTLINED_FUNCTION_21_18();

    __asm { BR              X3 }
  }

  v36 = v32;
  v37 = v1;
  v39 = *(v0 + 400);
  v38 = *(v0 + 408);
  v58 = *(v0 + 368);
  v59 = *(v0 + 360);
  v40 = *(v0 + 344);
  v42 = *(v0 + 328);
  v41 = *(v0 + 336);
  v43 = __swift_project_boxed_opaque_existential_0(*(v0 + 352), *(*(v0 + 352) + 24));
  v61 = *v40;
  sub_267BB8364();
  v44 = swift_task_alloc();
  *(v0 + 520) = v44;
  *(v44 + 16) = v40;
  *(v44 + 24) = v38;
  *(v44 + 32) = v37;
  *(v44 + 40) = v39;
  *(v44 + 48) = v58;
  *(v44 + 56) = v36;
  *(v44 + 64) = v41;
  *(v44 + 72) = v2;
  *(v44 + 80) = v59;
  *(v44 + 88) = v42;
  v45 = *v43;
  v46 = swift_task_alloc();
  *(v0 + 528) = v46;
  *v46 = v0;
  OUTLINED_FUNCTION_5_41(v46);
  OUTLINED_FUNCTION_13_28();
  OUTLINED_FUNCTION_21_18();

  return sub_267D43640();
}

uint64_t sub_267D6648C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = v3[56];
  v5 = v3[55];
  v6 = v3[54];
  v7 = *v0;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v10 + 456) = v9;

  v11 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267D665A8()
{
  v46 = v0;
  v2 = *(v0 + 456);
  if (!v2)
  {
    goto LABEL_7;
  }

  if (!sub_267BAF0DC(*(v0 + 456)))
  {

LABEL_7:
    v6 = 0;
    v8 = 0;
    goto LABEL_8;
  }

  v3 = *(v0 + 456) & 0xC000000000000001;
  sub_267BBD0EC(0, v3 == 0, v2);
  if (v3)
  {
    v4 = MEMORY[0x26D609870](0, v2);
  }

  else
  {
    v4 = *(v2 + 32);
  }

  v5 = v4;

  v6 = sub_267EF67A8();
  v8 = v7;

LABEL_8:
  v9 = *(v0 + 424);
  *(v0 + 296) = v6;
  *(v0 + 304) = v8;
  if (v9)
  {
    [v9 addIsReadingIntelligenceUsed_];
  }

  v10 = *(v0 + 416);
  v11 = sub_267EF89F8();
  v12 = sub_267EF95D8();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 424);
  if (v13)
  {
    v1 = OUTLINED_FUNCTION_48();
    v15 = swift_slowAlloc();
    v45 = v15;
    *v1 = 136315138;
    *(v0 + 312) = v6;
    *(v0 + 320) = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
    v16 = sub_267EF9098();
    v18 = sub_267BA33E8(v16, v17, &v45);

    *(v1 + 4) = v18;
    _os_log_impl(&dword_267B93000, v11, v12, "#LinkComponent link caption is %s", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 168));
  OUTLINED_FUNCTION_34_13();
  if ((v19 & 1) == 0)
  {
    v20 = *(v0 + 368);
    INMessageEffectType.description.getter(*(v11 + 32));
    sub_267EF90F8();

    v21 = *(v0 + 360);
  }

  v22 = *(v0 + 368);
  v23 = *(v0 + 328);
  v24 = sub_267EF79B8();
  OUTLINED_FUNCTION_31_16(v24);
  *(v0 + 472) = v25;
  if (*(v23 + 88))
  {
    OUTLINED_FUNCTION_10(&unk_267F08D38);
    v43 = v26;
    v27 = swift_task_alloc();
    *(v0 + 480) = v27;
    *v27 = v0;
    v28 = OUTLINED_FUNCTION_6_35(v27);

    return v43(v28);
  }

  else
  {
    v30 = v25;
    v31 = v1;
    v33 = *(v0 + 400);
    v32 = *(v0 + 408);
    v34 = *(v0 + 368);
    v42 = *(v0 + 360);
    v35 = *(v0 + 344);
    v36 = *(v0 + 328);
    v37 = *(v0 + 336);
    v38 = __swift_project_boxed_opaque_existential_0(*(v0 + 352), *(*(v0 + 352) + 24));
    v44 = *v35;
    sub_267BB8364();
    v39 = swift_task_alloc();
    *(v0 + 520) = v39;
    *(v39 + 16) = v35;
    *(v39 + 24) = v32;
    *(v39 + 32) = v31;
    *(v39 + 40) = v33;
    *(v39 + 48) = v34;
    *(v39 + 56) = v30;
    *(v39 + 64) = v37;
    *(v39 + 72) = v0 + 296;
    *(v39 + 80) = v42;
    *(v39 + 88) = v36;
    v40 = *v38;
    v41 = swift_task_alloc();
    *(v0 + 528) = v41;
    *v41 = v0;
    OUTLINED_FUNCTION_5_41(v41);
    OUTLINED_FUNCTION_13_28();

    return sub_267D43640();
  }
}

uint64_t sub_267D668F8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 480);
  *v2 = *v0;
  *(v1 + 488) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267D669E0()
{
  v16 = *(v0 + 488);
  v1 = *(v0 + 472);
  v2 = *(v0 + 400);
  v3 = *(v0 + 408);
  v5 = *(v0 + 360);
  v4 = *(v0 + 368);
  v6 = *(v0 + 344);
  v7 = *(v0 + 328);
  v8 = *(v0 + 464);
  v9 = __swift_project_boxed_opaque_existential_0(*(v0 + 352), *(*(v0 + 352) + 24));
  v17 = *v6;
  sub_267BB8364();
  v10 = swift_task_alloc();
  *(v0 + 496) = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v3;
  *(v10 + 32) = v8;
  *(v10 + 40) = v2;
  *(v10 + 48) = v4;
  *(v10 + 56) = v1;
  *(v10 + 64) = v16;
  *(v10 + 72) = v0 + 296;
  *(v10 + 80) = v5;
  *(v10 + 88) = v7;
  v11 = *v9;
  v12 = swift_task_alloc();
  *(v0 + 504) = v12;
  *v12 = v0;
  v12[1] = sub_267D66B18;
  v13 = *(v0 + 544);
  OUTLINED_FUNCTION_13_28();
  OUTLINED_FUNCTION_21_18();

  return sub_267D45E18();
}

uint64_t sub_267D66B18()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[31] = v1;
  v2[32] = v4;
  v2[33] = v0;
  v6 = *(v5 + 504);
  v7 = *(v5 + 496);
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v10 + 512) = v0;

  if (v0)
  {
    v11 = sub_267D66D60;
  }

  else
  {
    v11 = sub_267D66C38;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_267D66C38()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[61];

  v2 = v0[32];
  v3 = v0[41];
  v4 = *(v3 + 416);
  if (v4)
  {
    v5 = v0[59];
    v6 = v0[50];
    if (*(v3 + 426))
    {
      v7 = v0[50];
    }

    else
    {
      v10 = *(v4 + 168);

      sub_267C38238();
    }
  }

  else
  {
    v8 = v0[59];
    v9 = v0[50];
  }

  v11 = v0[51];
  v12 = v0[49];
  v13 = v0[46];

  sub_267B9F98C(v13, &unk_28022AE30, &qword_267EFC0B0);
  v14 = v0[38];

  v15 = OUTLINED_FUNCTION_55_1();

  return v16(v15);
}

uint64_t sub_267D66D60()
{
  OUTLINED_FUNCTION_62();
  v2 = v0[61];

  v3 = v0[64];
  OUTLINED_FUNCTION_37_12();

  sub_267B9F98C(v1, &unk_28022AE30, &qword_267EFC0B0);
  v4 = v0[38];

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267D66E10()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[34] = v1;
  v2[35] = v4;
  v2[36] = v0;
  v6 = *(v5 + 528);
  v7 = *(v5 + 520);
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v10 + 536) = v0;

  if (v0)
  {
    v11 = sub_267D67050;
  }

  else
  {
    v11 = sub_267D66F30;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_267D66F30()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[35];
  v2 = v0[41];
  v3 = *(v2 + 416);
  if (v3)
  {
    v4 = v0[59];
    v5 = v0[50];
    if (*(v2 + 426))
    {
      v6 = v0[50];
    }

    else
    {
      v9 = *(v3 + 168);

      sub_267C38238();
    }
  }

  else
  {
    v7 = v0[59];
    v8 = v0[50];
  }

  v10 = v0[51];
  v11 = v0[49];
  v12 = v0[46];

  sub_267B9F98C(v12, &unk_28022AE30, &qword_267EFC0B0);
  v13 = v0[38];

  v14 = OUTLINED_FUNCTION_55_1();

  return v15(v14);
}

uint64_t sub_267D67050()
{
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 536);
  OUTLINED_FUNCTION_37_12();

  sub_267B9F98C(v1, &unk_28022AE30, &qword_267EFC0B0);
  v3 = *(v0 + 304);

  OUTLINED_FUNCTION_17();

  return v4();
}

id sub_267D670F8()
{
  v1 = *(v0 + 64);
  if ([v1 linkMediaType])
  {
    return 0;
  }

  result = [v1 title];
  if (result)
  {
    v3 = result;
    sub_267EF9028();

    sub_267C9DA84();
    v5 = v4;

    return (v5 > 4.0);
  }

  return result;
}

uint64_t sub_267D67198(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_267EFC020;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  v13 = *v11;

  sub_267EF67D8();
}

uint64_t sub_267D67288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  *(v9 + 152) = v16;
  *(v9 + 160) = v17;
  *(v9 + 136) = a7;
  *(v9 + 144) = a8;
  *(v9 + 120) = a5;
  *(v9 + 128) = a6;
  *(v9 + 112) = a4;
  *(v9 + 104) = a9;
  *(v9 + 88) = a2;
  *(v9 + 96) = a3;
  *(v9 + 80) = a1;
  v10 = sub_267EF8248();
  *(v9 + 168) = v10;
  v11 = *(v10 - 8);
  *(v9 + 176) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 184) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  *(v9 + 192) = swift_task_alloc();
  *(v9 + 200) = swift_task_alloc();
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 216) = swift_task_alloc();
  *(v9 + 224) = swift_task_alloc();
  *(v9 + 232) = swift_task_alloc();
  *(v9 + 240) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267D673E8, 0, 0);
}

void sub_267D673E8()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  SpokenLinkComponentParameters = type metadata accessor for SearchForMessagesReadSpokenLinkComponentParameters(0);
  *(v0 + 248) = SpokenLinkComponentParameters;
  sub_267B9F98C(v2 + SpokenLinkComponentParameters[8], &unk_28022AE30, &qword_267EFC0B0);
  ComponentPatternCommonParameters = type metadata accessor for ReadComponentPatternCommonParameters();
  v6 = ComponentPatternCommonParameters[5];
  v7 = sub_267EF79B8();
  *(v0 + 256) = v7;
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 16);
  v10 = OUTLINED_FUNCTION_36_14();
  v11(v10);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v7);
  OUTLINED_FUNCTION_19_19();
  v15 = sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
  sub_267EF8348();
  v66 = v7;
  v16 = *(v0 + 240);
  v62 = *(v0 + 232);
  v17 = *(v0 + 80);
  v18 = *(v0 + 88);
  OUTLINED_FUNCTION_2_42();
  sub_267BD3DDC(v16, v17 + SpokenLinkComponentParameters[17]);
  *(v0 + 56) = *(v18 + ComponentPatternCommonParameters[7]);
  OUTLINED_FUNCTION_29_16();
  v19 = *(v0 + 232);
  v63 = *(v0 + 224);
  v21 = *(v0 + 80);
  v20 = *(v0 + 88);
  OUTLINED_FUNCTION_2_42();
  OUTLINED_FUNCTION_42_15(SpokenLinkComponentParameters[18]);
  *(v0 + 64) = *(v20 + ComponentPatternCommonParameters[8]);
  OUTLINED_FUNCTION_29_16();
  v22 = *(v0 + 224);
  v64 = *(v0 + 216);
  v24 = *(v0 + 80);
  v23 = *(v0 + 88);
  OUTLINED_FUNCTION_2_42();
  OUTLINED_FUNCTION_42_15(SpokenLinkComponentParameters[20]);
  *(v0 + 72) = *(v23 + ComponentPatternCommonParameters[9]);
  OUTLINED_FUNCTION_29_16();
  v59 = *(v0 + 216);
  v60 = *(v0 + 80);
  OUTLINED_FUNCTION_2_42();
  sub_267BD3DDC(v59, v60 + SpokenLinkComponentParameters[22]);
  v25 = OUTLINED_FUNCTION_20_17();
  v26 = SpokenLinkComponentParameters[19];
  v27 = *(v23 + v26);
  *(v23 + v26) = v25;

  OUTLINED_FUNCTION_32_12();
  v28 = SpokenLinkComponentParameters[15];
  v29 = *(v23 + v28);

  *(v23 + v28) = v15;
  sub_267BE855C(ComponentPatternCommonParameters, v23 + SpokenLinkComponentParameters[10]);
  v30 = SpokenLinkComponentParameters[7];
  v31 = *(v23 + v30);

  *(v23 + v30) = v6;
  v32 = *(v23 + SpokenLinkComponentParameters[21]);

  v33 = OUTLINED_FUNCTION_30_20();
  if (*(v59 + 8))
  {
    OUTLINED_FUNCTION_40_12();
    sub_267EF90F8();

    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  OUTLINED_FUNCTION_23_17(v33, v40, v34, v35, v36, v37, v38, v39, v61, v64, v65, v66);
  v41 = [*(v23 + 64) itemType];
  if (v41)
  {
    v60 = v41;
    v42 = *(v0 + 200);
    sub_267EF9028();
    v32 = v43;

    sub_267EF90F8();
  }

  OUTLINED_FUNCTION_24_18();
  sub_267BD3DDC(v60, v32 + SpokenLinkComponentParameters[14]);
  v44 = sub_267EF7998();
  *(v0 + 296) = OUTLINED_FUNCTION_38_15(v44, v45);
  v46 = sub_267BDAF74();
  *(v0 + 312) = v46 & 1;
  if (v46)
  {
    OUTLINED_FUNCTION_10(&dword_267F00478);
    v47 = swift_task_alloc();
    *(v0 + 304) = v47;
    *v47 = v0;
    v47[1] = sub_267D679D4;
    OUTLINED_FUNCTION_18_21();

    __asm { BR              X2 }
  }

  OUTLINED_FUNCTION_28_22();
  OUTLINED_FUNCTION_28_4();
  sub_267EF8348();
  if (v60)
  {
    v50 = OUTLINED_FUNCTION_1_50();
    v51(v50);
  }

  else
  {
    OUTLINED_FUNCTION_15_25();
    v52 = OUTLINED_FUNCTION_8_34();
    v53(v52);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_26_20(v54, v55, v56);
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_18_21();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267D679D4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 304);
  *v2 = *v0;
  *(v1 + 313) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267D67ABC()
{
  v1 = *(v0 + 313);
  v2 = *(v0 + 312);
  v3 = *(v0 + 288);
  v4 = *(v0 + 296);
  v6 = *(v0 + 272);
  v5 = *(v0 + 280);
  v19 = *(v0 + 264);
  v8 = *(v0 + 184);
  v7 = *(v0 + 192);
  v9 = *(v0 + 168);
  sub_267EF7C18();
  sub_267EF8238();
  sub_267EF8348();
  if (v19)
  {
    v10 = OUTLINED_FUNCTION_1_50();
    v11(v10);
  }

  else
  {
    OUTLINED_FUNCTION_15_25();
    v13 = OUTLINED_FUNCTION_8_34();
    v14(v13);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_26_20(v15, v16, v17);
  }

  OUTLINED_FUNCTION_17();

  return v12();
}

uint64_t sub_267D67C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  *(v9 + 152) = v16;
  *(v9 + 160) = v17;
  *(v9 + 136) = a7;
  *(v9 + 144) = a8;
  *(v9 + 120) = a5;
  *(v9 + 128) = a6;
  *(v9 + 112) = a4;
  *(v9 + 104) = a9;
  *(v9 + 88) = a2;
  *(v9 + 96) = a3;
  *(v9 + 80) = a1;
  v10 = sub_267EF8248();
  *(v9 + 168) = v10;
  v11 = *(v10 - 8);
  *(v9 + 176) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 184) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  *(v9 + 192) = swift_task_alloc();
  *(v9 + 200) = swift_task_alloc();
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 216) = swift_task_alloc();
  *(v9 + 224) = swift_task_alloc();
  *(v9 + 232) = swift_task_alloc();
  *(v9 + 240) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267D67DD4, 0, 0);
}

void sub_267D67DD4()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  LinkComponentParameters = type metadata accessor for SearchForMessagesReadLinkComponentParameters(0);
  *(v0 + 248) = LinkComponentParameters;
  sub_267B9F98C(v2 + LinkComponentParameters[8], &unk_28022AE30, &qword_267EFC0B0);
  ComponentPatternCommonParameters = type metadata accessor for ReadComponentPatternCommonParameters();
  v6 = ComponentPatternCommonParameters[5];
  v7 = sub_267EF79B8();
  *(v0 + 256) = v7;
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 16);
  v10 = OUTLINED_FUNCTION_36_14();
  v11(v10);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v7);
  OUTLINED_FUNCTION_19_19();
  v15 = sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
  sub_267EF8348();
  v66 = v7;
  v16 = *(v0 + 240);
  v62 = *(v0 + 232);
  v17 = *(v0 + 80);
  v18 = *(v0 + 88);
  OUTLINED_FUNCTION_2_42();
  sub_267BD3DDC(v16, v17 + LinkComponentParameters[18]);
  *(v0 + 56) = *(v18 + ComponentPatternCommonParameters[7]);
  OUTLINED_FUNCTION_29_16();
  v19 = *(v0 + 232);
  v63 = *(v0 + 224);
  v21 = *(v0 + 80);
  v20 = *(v0 + 88);
  OUTLINED_FUNCTION_2_42();
  OUTLINED_FUNCTION_42_15(LinkComponentParameters[19]);
  *(v0 + 64) = *(v20 + ComponentPatternCommonParameters[8]);
  OUTLINED_FUNCTION_29_16();
  v22 = *(v0 + 224);
  v64 = *(v0 + 216);
  v24 = *(v0 + 80);
  v23 = *(v0 + 88);
  OUTLINED_FUNCTION_2_42();
  OUTLINED_FUNCTION_42_15(LinkComponentParameters[21]);
  *(v0 + 72) = *(v23 + ComponentPatternCommonParameters[9]);
  OUTLINED_FUNCTION_29_16();
  v59 = *(v0 + 216);
  v60 = *(v0 + 80);
  OUTLINED_FUNCTION_2_42();
  sub_267BD3DDC(v59, v60 + LinkComponentParameters[22]);
  v25 = OUTLINED_FUNCTION_20_17();
  v26 = LinkComponentParameters[20];
  v27 = *(v23 + v26);
  *(v23 + v26) = v25;

  OUTLINED_FUNCTION_32_12();
  v28 = LinkComponentParameters[16];
  v29 = *(v23 + v28);

  *(v23 + v28) = v15;
  sub_267BE855C(ComponentPatternCommonParameters, v23 + LinkComponentParameters[11]);
  v30 = LinkComponentParameters[7];
  v31 = *(v23 + v30);

  *(v23 + v30) = v6;
  v32 = *(v23 + LinkComponentParameters[10]);

  v33 = OUTLINED_FUNCTION_30_20();
  if (*(v59 + 8))
  {
    OUTLINED_FUNCTION_40_12();
    sub_267EF90F8();

    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  OUTLINED_FUNCTION_23_17(v33, v40, v34, v35, v36, v37, v38, v39, v61, v64, v65, v66);
  v41 = [*(v23 + 64) itemType];
  if (v41)
  {
    v60 = v41;
    v42 = *(v0 + 200);
    sub_267EF9028();
    v32 = v43;

    sub_267EF90F8();
  }

  OUTLINED_FUNCTION_24_18();
  sub_267BD3DDC(v60, v32 + LinkComponentParameters[15]);
  v44 = sub_267EF7998();
  *(v0 + 296) = OUTLINED_FUNCTION_38_15(v44, v45);
  v46 = sub_267BDAF74();
  *(v0 + 312) = v46 & 1;
  if (v46)
  {
    OUTLINED_FUNCTION_10(&dword_267F00478);
    v47 = swift_task_alloc();
    *(v0 + 304) = v47;
    *v47 = v0;
    v47[1] = sub_267D683C0;
    OUTLINED_FUNCTION_18_21();

    __asm { BR              X2 }
  }

  OUTLINED_FUNCTION_28_22();
  OUTLINED_FUNCTION_28_4();
  sub_267EF8348();
  if (v60)
  {
    v50 = OUTLINED_FUNCTION_1_50();
    v51(v50);
  }

  else
  {
    OUTLINED_FUNCTION_15_25();
    v52 = OUTLINED_FUNCTION_8_34();
    v53(v52);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_26_20(v54, v55, v56);
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_18_21();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267D683C0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 304);
  *v2 = *v0;
  *(v1 + 313) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_267D684A8(uint64_t a1)
{
  v2 = v1;
  sub_267BE4994(a1, __dst);
  if (!__dst[3])
  {
    sub_267B9F98C(__dst, &qword_280229910, &unk_267EFEB70);
    memset(__src, 0, sizeof(__src));
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(__src, 0, sizeof(__src));
    goto LABEL_8;
  }

  if (!*&__src[0])
  {
LABEL_8:
    sub_267B9F98C(__src, &qword_280229940, &qword_267EFEBA0);
    return;
  }

  memcpy(__dst, __src, sizeof(__dst));
  v3 = [*(v1 + 64) originalURL];
  if (v3)
  {
    v4 = v3;
    v5 = sub_267EF9028();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = [__dst[8] originalURL];
  if (!v8)
  {
    if (!v7)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v9 = v8;
  v10 = sub_267EF9028();
  v12 = v11;

  if (!v7)
  {
    if (!v12)
    {
      goto LABEL_25;
    }

LABEL_22:

    goto LABEL_23;
  }

  if (!v12)
  {
    goto LABEL_22;
  }

  if (v5 == v10 && v7 == v12)
  {
  }

  else
  {
    v14 = sub_267EF9EA8();

    if ((v14 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

LABEL_25:
  v15 = *(v2 + 24);
  v16 = __dst[3];
  if (v15)
  {
    if (!__dst[3])
    {
      goto LABEL_23;
    }

    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v17 = v16;
    v18 = v15;
    v19 = sub_267EF9818();

    if ((v19 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (__dst[3])
  {
    goto LABEL_23;
  }

  v20 = __dst[5];
  if ((*(v2 + 40) & 1) == 0)
  {
    if (*(v2 + 32) != __dst[4])
    {
      v20 = 1;
    }

    if ((v20 & 1) == 0)
    {
      goto LABEL_36;
    }

LABEL_23:
    sub_267C6AC38(__dst);
    return;
  }

  if (!LOBYTE(__dst[5]))
  {
    goto LABEL_23;
  }

LABEL_36:
  v21 = *(v2 + 16);
  if (__OFADD__(v21, __dst[2]))
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v21 + __dst[2];
    sub_267BE22E4(__dst[0], v2);
    sub_267C6AC38(__dst);
  }
}

uint64_t sub_267D68744()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_267D6877C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267D68808;

  return sub_267C0FB00();
}

uint64_t sub_267D68808()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_14();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_5();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_267D688F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BD5D40;

  return sub_267D65E38();
}

unint64_t sub_267D689C0(uint64_t a1)
{
  result = sub_267D689E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_267D689E8()
{
  result = qword_28022B600;
  if (!qword_28022B600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B600);
  }

  return result;
}

unint64_t sub_267D68A3C(uint64_t a1)
{
  result = sub_267D68A64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_267D68A64()
{
  result = qword_28022B608;
  if (!qword_28022B608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B608);
  }

  return result;
}

unint64_t sub_267D68AB8(uint64_t a1)
{
  result = sub_267D68AE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_267D68AE0()
{
  result = qword_28022B610;
  if (!qword_28022B610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B610);
  }

  return result;
}

uint64_t sub_267D68B6C()
{
  OUTLINED_FUNCTION_22_19();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_11_29(v1);
  OUTLINED_FUNCTION_43_2();

  return sub_267D67C74(v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_267D68C10()
{
  OUTLINED_FUNCTION_22_19();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_11_29(v1);
  OUTLINED_FUNCTION_43_2();

  return sub_267D67288(v2, v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_267D68CC4(uint64_t a1)
{
  v2 = sub_267EF4C08();
  v3 = OUTLINED_FUNCTION_58(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_0();
  v52 = v9 - v8;
  v10 = sub_267EF4BA8();
  v11 = OUTLINED_FUNCTION_58(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_0();
  v18 = v17 - v16;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v19 = sub_267EF8A08();
  __swift_project_value_buffer(v19, qword_280240FB0);
  (*(v13 + 16))(v18, a1, v10);
  v20 = sub_267EF89F8();
  v21 = sub_267EF95C8();
  if (os_log_type_enabled(v20, v21))
  {
    v51 = v5;
    v22 = OUTLINED_FUNCTION_48();
    v50 = OUTLINED_FUNCTION_52();
    v55[0] = v50;
    *v22 = 136315138;
    sub_267D6BCC8(&qword_28022AF50, MEMORY[0x277D5C118]);
    v23 = sub_267EF9E58();
    v25 = v24;
    (*(v13 + 8))(v18, v10);
    v26 = sub_267BA33E8(v23, v25, v55);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_267B93000, v20, v21, "#SearchForMessagesNeedsValueFlowStrategy received input: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    OUTLINED_FUNCTION_32_0();
    v5 = v51;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v13 + 8))(v18, v10);
  }

  sub_267EF4B88();
  v27 = sub_267E57DFC(v52, &v53);
  (*(v5 + 8))(v52, v2, v27);
  if (v54)
  {
    sub_267BE58F4(&v53, v55);
    OUTLINED_FUNCTION_13_1();
    v28 = v2[48];
    v29 = OUTLINED_FUNCTION_43();
    if (v30(v29, v2) == 2)
    {
      v31 = sub_267EF89F8();
      v32 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v32))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v33, v34, "#SearchForMessagesNeedsValueFlowStrategy prompt is cancelled");
        OUTLINED_FUNCTION_32_0();
      }

      sub_267EF3E48();
    }

    else
    {
      OUTLINED_FUNCTION_13_1();
      v40 = v2[36];
      v41 = OUTLINED_FUNCTION_43();
      if ((v42(v41, v2) & 1) != 0 && (OUTLINED_FUNCTION_13_1(), v43 = v2[27], v44 = OUTLINED_FUNCTION_43(), (v45(v44, v2) & 1) == 0))
      {
        v46 = sub_267EF89F8();
        v47 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v47))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_17_0(&dword_267B93000, v48, v49, "#SearchForMessagesNeedsValueFlowStrategy unrelated request, ignoring");
          OUTLINED_FUNCTION_32_0();
        }

        sub_267EF3E68();
      }

      else
      {
        sub_267EF3E58();
      }
    }

    return __swift_destroy_boxed_opaque_existential_0(v55);
  }

  else
  {
    sub_267B9FF34(&v53, &unk_28022BBF0, &unk_267F01C60);
    v35 = sub_267EF89F8();
    v36 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_36(v36))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v37, v38, "#SearchForMessagesNeedsValueFlowStrategy unsupported input");
      OUTLINED_FUNCTION_32_0();
    }

    return sub_267EF3E68();
  }
}

uint64_t sub_267D69170()
{
  OUTLINED_FUNCTION_12();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = sub_267EF4C08();
  v1[7] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[8] = v6;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();
  v9 = sub_267EF44C8();
  v1[10] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v1[11] = v10;
  v12 = *(v11 + 64) + 15;
  v1[12] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267D69278()
{
  v62 = v0;
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A850, &unk_267F01E10);
  sub_267EF4938();
  v5 = sub_267EF44B8();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  v8 = sub_267EF4918();

  v9 = sub_267C7C47C();
  if (v9 == 9)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v10 = sub_267EF8A08();
    __swift_project_value_buffer(v10, qword_280240FB0);
    OUTLINED_FUNCTION_25_0();

    v11 = sub_267EF89F8();
    v12 = sub_267EF95E8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_48();
      v14 = OUTLINED_FUNCTION_52();
      *&v61[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_267BA33E8(v5, v7, v61);
      OUTLINED_FUNCTION_6_20(&dword_267B93000, v15, v12, "#SearchForMessagesNeedsValueFlowStrategy unknown parameter: %s");
      __swift_destroy_boxed_opaque_existential_0(v14);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    sub_267C4BE60();
    swift_allocError();
    *v16 = v5;
    v16[1] = v7;
LABEL_13:
    v38 = v0[12];
    v39 = v0[9];
    swift_willThrow();

    OUTLINED_FUNCTION_17();
    goto LABEL_28;
  }

  v17 = v9;
  v19 = v0[8];
  v18 = v0[9];
  v20 = v0[6];
  v21 = v0[7];
  v22 = v0[4];

  v23 = v20 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_transformer;
  sub_267EF4B88();
  v24 = swift_task_alloc();
  *(v24 + 16) = v23;
  *(v24 + 24) = v18;
  v25 = sub_267E43714(sub_267D6BCA8, v24);
  v27 = v26;

  (*(v19 + 8))(v18, v21);
  if (v27)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v28 = sub_267EF8A08();
    __swift_project_value_buffer(v28, qword_280240FB0);
    v29 = v25;
    v30 = sub_267EF89F8();
    v31 = sub_267EF95E8();
    sub_267C095E0(v25);
    if (os_log_type_enabled(v30, v31))
    {
      OUTLINED_FUNCTION_48();
      v32 = OUTLINED_FUNCTION_5_4();
      *&v61[0] = v32;
      *v27 = 136315138;
      v0[2] = v25;
      v33 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v34 = sub_267EF9098();
      v36 = sub_267BA33E8(v34, v35, v61);

      *(v27 + 4) = v36;
      OUTLINED_FUNCTION_33_10(&dword_267B93000, v37, v31, "#SearchForMessagesNeedsValueFlowStrategy parse conversion failed: %s");
      __swift_destroy_boxed_opaque_existential_0(v32);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_18_2();
    }

    goto LABEL_13;
  }

  sub_267ECE738();
  v41 = sub_267E2D700(v25);
  if (v41)
  {
    v42 = v41;
    if (sub_267BAF0DC(v41))
    {
      sub_267BBD0EC(0, (v42 & 0xC000000000000001) == 0, v42);
      if ((v42 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x26D609870](0, v42);
      }

      else
      {
        v43 = *(v42 + 32);
      }

      v44 = v43;

      v45 = sub_267DE87C0();
      sub_267DE88AC(v45, v46);
    }

    else
    {
    }
  }

  v47 = sub_267BCEA0C(v25);
  if (v47)
  {
    v48 = sub_267BAF0DC(v47);

    if (v48 >= 1)
    {
      sub_267DE88AC(0, 0);
    }
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v49 = sub_267EF8A08();
  __swift_project_value_buffer(v49, qword_280240FB0);
  v50 = v8;
  v51 = sub_267EF89F8();
  v52 = sub_267EF95D8();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = OUTLINED_FUNCTION_48();
    v54 = swift_slowAlloc();
    *v53 = 138412290;
    *(v53 + 4) = v50;
    *v54 = v50;
    v55 = v50;
    _os_log_impl(&dword_267B93000, v51, v52, "#SearchForMessagesNeedsValueFlowStrategy updated intent: %@", v53, 0xCu);
    sub_267B9FF34(v54, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v56 = v0[12];
  v57 = v0[9];
  v58 = v0[3];

  sub_267ECE8A8(v17, v61);
  sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
  sub_267EF4388();
  sub_267C095E0(v25);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A858, &unk_267F06BC0);
  __swift_storeEnumTagSinglePayload(v58, 0, 1, v59);

  OUTLINED_FUNCTION_1();
LABEL_28:

  return v40();
}

uint64_t sub_267D69854()
{
  OUTLINED_FUNCTION_12();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_267EF4228();
  v1[5] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[6] = v5;
  v7 = *(v6 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v8 = sub_267EF44C8();
  v1[12] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[13] = v9;
  v11 = *(v10 + 64) + 15;
  v1[14] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267D6998C()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A850, &unk_267F01E10);
  sub_267EF4938();
  v5 = sub_267EF44B8();
  v7 = v6;
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_3();
  v8 = sub_267C7C47C();
  *(v0 + 200) = v8;
  switch(v8)
  {
    case 0:
      OUTLINED_FUNCTION_36_15();
      v9 = *(v1 + 56);
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 152) = v10;
      *v10 = v11;
      v10[1] = sub_267D6A24C;
      v12 = *(v0 + 72);
      OUTLINED_FUNCTION_91_0();

      return sub_267CE9600();
    case 1:
      OUTLINED_FUNCTION_36_15();
      v36 = *(v1 + 56);
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 168) = v37;
      *v37 = v38;
      v37[1] = sub_267D6A3F8;
      v39 = *(v0 + 64);
      OUTLINED_FUNCTION_91_0();

      return sub_267CE96B0();
    case 3:
      OUTLINED_FUNCTION_36_15();
      v15 = *(v1 + 56);
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 120) = v16;
      *v16 = v17;
      v16[1] = sub_267D69EF0;
      v18 = *(v0 + 88);
      OUTLINED_FUNCTION_91_0();

      return sub_267CE94A0();
    case 4:
      OUTLINED_FUNCTION_36_15();
      v41 = *(v1 + 56);
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 136) = v42;
      *v42 = v43;
      v42[1] = sub_267D6A09C;
      v44 = *(v0 + 80);
      OUTLINED_FUNCTION_91_0();

      return sub_267CE9550();
    case 5:
      OUTLINED_FUNCTION_36_15();
      v46 = *(v1 + 56);
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 184) = v47;
      *v47 = v48;
      v47[1] = sub_267D6A5A4;
      v49 = *(v0 + 56);
      OUTLINED_FUNCTION_91_0();

      return sub_267CE9760();
    case 9:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v20 = sub_267EF8A08();
      __swift_project_value_buffer(v20, qword_280240FB0);
      OUTLINED_FUNCTION_43();

      v21 = sub_267EF89F8();
      v22 = sub_267EF95E8();

      if (os_log_type_enabled(v21, v22))
      {
        OUTLINED_FUNCTION_48();
        v54 = OUTLINED_FUNCTION_5_4();
        *v3 = 136315138;
        v23 = OUTLINED_FUNCTION_3();
        *(v3 + 4) = sub_267BA33E8(v23, v24, v25);
        OUTLINED_FUNCTION_33_10(&dword_267B93000, v26, v22, "#SearchForMessagesNeedsValueFlowStrategy unknown parameter: %s");
        __swift_destroy_boxed_opaque_existential_0(v54);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_18_2();
      }

      sub_267C4BE60();
      swift_allocError();
      *v27 = v5;
      v27[1] = v7;
      break;
    default:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v28 = sub_267EF8A08();
      __swift_project_value_buffer(v28, qword_280240FB0);
      OUTLINED_FUNCTION_43();

      v29 = sub_267EF89F8();
      v30 = sub_267EF95E8();

      if (os_log_type_enabled(v29, v30))
      {
        OUTLINED_FUNCTION_48();
        v55 = OUTLINED_FUNCTION_5_4();
        *v3 = 136315138;
        v31 = OUTLINED_FUNCTION_3();
        v34 = sub_267BA33E8(v31, v32, v33);

        *(v3 + 4) = v34;
        OUTLINED_FUNCTION_33_10(&dword_267B93000, v35, v30, "#SearchForMessagesNeedsValueFlowStrategy unsupported parameter: %s");
        __swift_destroy_boxed_opaque_existential_0(v55);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_18_2();
      }

      else
      {
      }

      sub_267CCECC0();
      swift_allocError();
      *v51 = 2;
      break;
  }

  swift_willThrow();
  OUTLINED_FUNCTION_4_41();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_91_0();

  __asm { BRAA            X1, X16 }

  return result;
}

uint64_t sub_267D69EF0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 128) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267D69FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_37_13();
  v17 = *(v13 + 64);
  v16 = *(v13 + 72);
  OUTLINED_FUNCTION_1_51();
  sub_267D6AA20(v18, v19);
  (*(v15 + 8))(v12, v14);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_267D6A09C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 144) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267D6A194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v15 = v12[14];
  v16 = v12[10];
  v17 = v12[11];
  v19 = v12[8];
  v18 = v12[9];
  OUTLINED_FUNCTION_1_51();
  sub_267D6AA20(v20, v21);
  (*(v14 + 8))(v16, v13);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_267D6A24C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 160) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267D6A344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_37_13();
  v16 = *(v12 + 64);
  v15 = *(v12 + 72);
  OUTLINED_FUNCTION_1_51();
  sub_267D6AA20(v17, v18);
  (*(v14 + 8))(v15, v13);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_267D6A3F8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267D6A4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_37_13();
  v15 = *(v12 + 64);
  v16 = *(v12 + 72);
  OUTLINED_FUNCTION_1_51();
  sub_267D6AA20(v17, v18);
  (*(v14 + 8))(v15, v13);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_267D6A5A4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 192) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267D6A69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_37_13();
  v17 = *(v12 + 64);
  v16 = *(v12 + 72);
  OUTLINED_FUNCTION_1_51();
  sub_267D6AA20(v18, v19);
  (*(v15 + 8))(v13, v14);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_267D6A750()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 128);
  OUTLINED_FUNCTION_4_41();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267D6A7E0()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 144);
  OUTLINED_FUNCTION_4_41();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267D6A870()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 160);
  OUTLINED_FUNCTION_4_41();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267D6A900()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 176);
  OUTLINED_FUNCTION_4_41();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267D6A990()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 192);
  OUTLINED_FUNCTION_4_41();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267D6AA20@<X0>(char a1@<W1>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v21 - v7;
  v9 = v2[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v2[5]);
  v10 = *(v9 + 8);
  v11 = OUTLINED_FUNCTION_31();
  v12(v11);
  v13 = v2[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v2[5]);
  v14 = *(v13 + 8);
  v15 = OUTLINED_FUNCTION_31();
  v16(v15);
  __swift_project_boxed_opaque_existential_0(v23, v23[3]);
  OUTLINED_FUNCTION_31();
  sub_267EF3BC8();
  sub_267D6AC00(a1, v8);
  v17 = sub_267EF4158();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v17);
  v18 = sub_267EF4CC8();
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  v19 = MEMORY[0x277D5C1D8];
  a2[3] = v18;
  a2[4] = v19;
  __swift_allocate_boxed_opaque_existential_0(a2);
  sub_267EF3F68();
  sub_267B9FF34(v21, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v8, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0(v24);
  return __swift_destroy_boxed_opaque_existential_0(v23);
}

uint64_t sub_267D6AC00@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = sub_267EF4158();
  v6 = OUTLINED_FUNCTION_58(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_0();
  v13 = v12 - v11;
  v14 = v2[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v2[5]);
  v15 = *(v14 + 8);
  v16 = OUTLINED_FUNCTION_25_0();
  v17(v16, v14);
  sub_267EF4148();
  __swift_project_boxed_opaque_existential_0(v60, v60[3]);
  OUTLINED_FUNCTION_25_0();
  sub_267EF3B98();
  sub_267EF4128();
  __swift_destroy_boxed_opaque_existential_0(v60);
  if (qword_280228900 != -1)
  {
    swift_once();
  }

  sub_267BB8DFC();
  sub_267EF40D8();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_267EFC020;
  *(v19 + 32) = sub_267BB90E4(2);
  *(v19 + 40) = v20;
  sub_267EF40A8();
  v21 = OUTLINED_FUNCTION_19_20();
  *(v21 + 16) = xmmword_267EFC020;
  *(v21 + 32) = sub_267BB90E4(2);
  *(v21 + 40) = v22;
  sub_267EF4108();
  sub_267EF4098();
  switch(a1)
  {
    case 0:
    case 1:
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_267EFCE30;
      if (qword_280228898 != -1)
      {
        swift_once();
      }

      *(v23 + 32) = sub_267BCEF14();
      *(v23 + 40) = v24;
      if (qword_280228870 != -1)
      {
        swift_once();
      }

      *(v23 + 48) = sub_267BCEF2C();
      *(v23 + 56) = v25;
      if (qword_280228888 != -1)
      {
        swift_once();
      }

      *(v23 + 64) = sub_267BCEF48();
      *(v23 + 72) = v26;
      sub_267EF4118();
      v27 = sub_267EF4748();
      OUTLINED_FUNCTION_97(v27);
      sub_267EF4738();
      if (qword_280228860 != -1)
      {
        swift_once();
      }

      sub_267EF5648();
      if (sub_267C7C4C8(a1) != 0x7265646E6573 || v28 != 0xE600000000000000)
      {
        sub_267EF9EA8();
      }

      sub_267EF4708();
      OUTLINED_FUNCTION_25_0();

      sub_267EF4728();

      sub_267EF4138();
      goto LABEL_28;
    case 3:
      v33 = OUTLINED_FUNCTION_19_20();
      OUTLINED_FUNCTION_20_18(v33);
      if (qword_2802288A0 != -1)
      {
        swift_once();
      }

      v31 = sub_267C8F834();
      goto LABEL_26;
    case 4:
      v34 = OUTLINED_FUNCTION_19_20();
      OUTLINED_FUNCTION_20_18(v34);
      if (qword_280228840 != -1)
      {
        swift_once();
      }

      v31 = sub_267C8F850();
      goto LABEL_26;
    case 5:
      v30 = OUTLINED_FUNCTION_19_20();
      OUTLINED_FUNCTION_20_18(v30);
      if (qword_280228830 != -1)
      {
        swift_once();
      }

      v31 = sub_267BCEF48();
LABEL_26:
      *(v18 + 32) = v31;
      *(v18 + 40) = v32;
      sub_267EF4118();
LABEL_28:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
      v35 = sub_267EF53D8();
      OUTLINED_FUNCTION_30_0(v35);
      v37 = *(v36 + 72);
      v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      *(swift_allocObject() + 16) = xmmword_267EFC020;
      sub_267D6B454(a1);
      sub_267EF4088();
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v40 = sub_267EF8A08();
      __swift_project_value_buffer(v40, qword_280240FB0);
      v41 = sub_267EF89F8();
      v42 = sub_267EF95D8();
      if (os_log_type_enabled(v41, v42))
      {
        OUTLINED_FUNCTION_48();
        v43 = OUTLINED_FUNCTION_5_4();
        v59 = v43;
        *v39 = 136315138;
        swift_beginAccess();
        v44 = sub_267EF4078();
        swift_endAccess();
        v60[0] = v44;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B630, &qword_267F06BB8);
        v45 = sub_267EF9098();
        v47 = sub_267BA33E8(v45, v46, &v59);

        *(v39 + 4) = v47;
        _os_log_impl(&dword_267B93000, v41, v42, "#SearchForMessagesNeedsValueFlowStrategy submitting NLv4 dialog act: %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_18_2();
      }

      swift_beginAccess();
      (*(v8 + 16))(a2, v13, v5);
      result = (*(v8 + 8))(v13, v5);
      break;
    default:
      v60[0] = 0;
      v60[1] = 0xE000000000000000;
      sub_267EF9B68();
      MEMORY[0x26D608E60](0xD00000000000003BLL, 0x8000000267F198B0);
      v49 = sub_267C7C4C8(a1);
      MEMORY[0x26D608E60](v49);

      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v50 = sub_267EF8A08();
      __swift_project_value_buffer(v50, qword_280240FB0);
      OUTLINED_FUNCTION_43();

      v51 = sub_267EF89F8();
      v52 = sub_267EF95E8();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = OUTLINED_FUNCTION_48();
        v54 = OUTLINED_FUNCTION_52();
        v60[0] = v54;
        *v53 = 136315138;
        v55 = OUTLINED_FUNCTION_3();
        *(v53 + 4) = sub_267BA33E8(v55, v56, v57);
        OUTLINED_FUNCTION_6_20(&dword_267B93000, v58, v52, "Fatal error: %s");
        __swift_destroy_boxed_opaque_existential_0(v54);
        OUTLINED_FUNCTION_18_2();
        OUTLINED_FUNCTION_32_0();
      }

      result = OUTLINED_FUNCTION_24_19();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_267D6B454(unsigned __int8 a1)
{
  v2 = a1;
  v3 = sub_267EF6268();
  OUTLINED_FUNCTION_97(v3);
  sub_267EF6258();
  switch(v2)
  {
    case 0:
    case 1:
      v4 = sub_267EF6168();
      OUTLINED_FUNCTION_97(v4);
      sub_267EF6158();
      OUTLINED_FUNCTION_39_12();
      sub_267EF6148();

      sub_267EF6248();
      goto LABEL_4;
    case 3:
      v6 = sub_267EF5568();
      OUTLINED_FUNCTION_97(v6);
      sub_267EF5558();
      sub_267EF6208();
      goto LABEL_7;
    case 4:
      v7 = sub_267EF62E8();
      OUTLINED_FUNCTION_97(v7);
      sub_267EF62D8();
      sub_267EF6238();
      goto LABEL_7;
    case 5:
      v5 = sub_267EF6058();
      OUTLINED_FUNCTION_97(v5);
      sub_267EF6048();
      OUTLINED_FUNCTION_39_12();
      sub_267EF6038();

      sub_267EF6218();
LABEL_4:

LABEL_7:

      v8 = sub_267EF6428();
      OUTLINED_FUNCTION_97(v8);
      sub_267EF6418();
      sub_267EF63E8();
      OUTLINED_FUNCTION_22_0();
      sub_267DFDDC4();

      break;
    default:
      sub_267EF9B68();
      MEMORY[0x26D608E60](0xD00000000000004FLL, 0x8000000267F19930);
      v10 = sub_267C7C4C8(a1);
      MEMORY[0x26D608E60](v10);

      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v11 = sub_267EF8A08();
      __swift_project_value_buffer(v11, qword_280240FB0);
      OUTLINED_FUNCTION_43();

      v12 = sub_267EF89F8();
      v13 = sub_267EF95E8();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = OUTLINED_FUNCTION_48();
        v19 = OUTLINED_FUNCTION_52();
        *v14 = 136315138;
        v15 = OUTLINED_FUNCTION_3();
        *(v14 + 4) = sub_267BA33E8(v15, v16, v17);
        OUTLINED_FUNCTION_6_20(&dword_267B93000, v18, v13, "Fatal error: %s");
        __swift_destroy_boxed_opaque_existential_0(v19);
        OUTLINED_FUNCTION_18_2();
        OUTLINED_FUNCTION_32_0();
      }

      result = OUTLINED_FUNCTION_24_19();
      __break(1u);
      break;
  }

  return result;
}

uint64_t type metadata accessor for SearchForMessagesNeedsValueFlowStrategy()
{
  result = qword_28022B618;
  if (!qword_28022B618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267D6B7A8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BBD07C;

  return sub_267D69170();
}

uint64_t sub_267D6B85C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BAEBEC;

  return sub_267D69854();
}

uint64_t sub_267D6B908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B370] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SearchForMessagesNeedsValueFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821B9BF8](a1, a2, v10, a4);
}

uint64_t sub_267D6B9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B378] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SearchForMessagesNeedsValueFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C00](a1, a2, v10, a4);
}

uint64_t sub_267D6BA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5C0B0] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for SearchForMessagesNeedsValueFlowStrategy();
  *v13 = v6;
  v13[1] = sub_267BBD07C;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_267D6BB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(MEMORY[0x277D5C0B8] + 4);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for SearchForMessagesNeedsValueFlowStrategy();
  *v15 = v7;
  v15[1] = sub_267BBD07C;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v16, a7);
}

uint64_t sub_267D6BCC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for SmsVerbValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE5)
  {
    if (a2 + 27 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 27) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 28;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v5 = v6 - 28;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SmsVerbValue(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE4)
  {
    v6 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 27;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267D6BE78()
{
  result = qword_28022B638;
  if (!qword_28022B638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B638);
  }

  return result;
}

uint64_t sub_267D6BECC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229798, &unk_267EFE4D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = sub_267EF5B58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280228850 != -1)
  {
    swift_once();
  }

  type metadata accessor for SmsContactIntentNode();
  sub_267D6FB2C(&qword_2802297A0);
  sub_267EF5B08();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_267D6E178(v5);
    v11 = 1;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    sub_267EF5998();
    (*(v7 + 8))(v10, v6);
    v11 = 0;
  }

  v12 = sub_267EF59A8();
  return __swift_storeEnumTagSinglePayload(a1, v11, 1, v12);
}

void sub_267D6C0D4(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_12_24();
      break;
    case 2:
      OUTLINED_FUNCTION_15_26();
      break;
    case 8:
      OUTLINED_FUNCTION_9_34();
      break;
    case 10:
      OUTLINED_FUNCTION_8_35();
      break;
    case 12:
      OUTLINED_FUNCTION_10_29(0x72696874u);
      break;
    case 13:
      OUTLINED_FUNCTION_10_29(0x72756F66u);
      break;
    case 14:
    case 15:
    case 19:
      OUTLINED_FUNCTION_26_21();
      break;
    case 16:
      OUTLINED_FUNCTION_2_43();
      break;
    case 17:
      OUTLINED_FUNCTION_10_29(0x68676965u);
      break;
    case 18:
      OUTLINED_FUNCTION_10_29(0x656E696Eu);
      break;
    case 20:
    case 23:
    case 24:
      OUTLINED_FUNCTION_13_29();
      break;
    case 21:
      OUTLINED_FUNCTION_0_38();
      break;
    case 22:
      OUTLINED_FUNCTION_4_42();
      break;
    case 25:
      OUTLINED_FUNCTION_16_22();
      break;
    case 26:
      OUTLINED_FUNCTION_11_30();
      break;
    case 27:
      OUTLINED_FUNCTION_17_19();
      break;
    case 28:
      OUTLINED_FUNCTION_7_32();
      break;
    case 29:
      OUTLINED_FUNCTION_3_44();
      break;
    case 30:
      OUTLINED_FUNCTION_1_52();
      break;
    case 32:
      OUTLINED_FUNCTION_18_22();
      break;
    case 34:
      OUTLINED_FUNCTION_14_28(1936025716);
      break;
    default:
      return;
  }
}

uint64_t sub_267D6C2A8()
{
  OUTLINED_FUNCTION_5_42();
  sub_267EF9EE8();
  OUTLINED_FUNCTION_20_19();
  if (v0 >= 0x26)
  {
    return 38;
  }

  else
  {
    return v0;
  }
}

void sub_267D6C2F0(char a1)
{
  switch(a1)
  {
    case 9:
    case 14:
      OUTLINED_FUNCTION_21_19();
      break;
    case 10:
      OUTLINED_FUNCTION_14_28(1852794992);
      break;
    case 13:
    case 34:
      OUTLINED_FUNCTION_26_21();
      break;
    case 16:
    case 21:
      OUTLINED_FUNCTION_22_20();
      break;
    case 17:
    case 18:
      OUTLINED_FUNCTION_2_4();
      break;
    default:
      return;
  }
}

void sub_267D6C6D4(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_12_24();
      break;
    case 2:
      OUTLINED_FUNCTION_15_26();
      break;
    case 8:
      OUTLINED_FUNCTION_9_34();
      break;
    case 10:
      OUTLINED_FUNCTION_8_35();
      break;
    case 12:
      OUTLINED_FUNCTION_10_29(0x72696874u);
      break;
    case 13:
      OUTLINED_FUNCTION_10_29(0x72756F66u);
      break;
    case 14:
    case 15:
    case 19:
      OUTLINED_FUNCTION_26_21();
      break;
    case 16:
      OUTLINED_FUNCTION_2_43();
      break;
    case 17:
      OUTLINED_FUNCTION_10_29(0x68676965u);
      break;
    case 18:
      OUTLINED_FUNCTION_10_29(0x656E696Eu);
      break;
    case 20:
    case 23:
    case 24:
      OUTLINED_FUNCTION_13_29();
      break;
    case 21:
      OUTLINED_FUNCTION_0_38();
      break;
    case 22:
      OUTLINED_FUNCTION_4_42();
      break;
    case 25:
      OUTLINED_FUNCTION_16_22();
      break;
    case 26:
      OUTLINED_FUNCTION_11_30();
      break;
    case 27:
      OUTLINED_FUNCTION_17_19();
      break;
    case 28:
      OUTLINED_FUNCTION_7_32();
      break;
    case 29:
      OUTLINED_FUNCTION_3_44();
      break;
    case 30:
      OUTLINED_FUNCTION_1_52();
      break;
    case 32:
      OUTLINED_FUNCTION_18_22();
      break;
    default:
      return;
  }
}

void sub_267D6C8B0(char a1)
{
  switch(a1)
  {
    case 2:
      OUTLINED_FUNCTION_24_20();
      break;
    case 11:
      OUTLINED_FUNCTION_25_19(0x63656A627573);
      break;
    case 12:
      OUTLINED_FUNCTION_19_21(0x67617373656DLL);
      break;
    case 13:
      OUTLINED_FUNCTION_25_19(0x6361746E6F63);
      break;
    case 17:
    case 18:
    case 21:
    case 25:
      OUTLINED_FUNCTION_21_19();
      break;
    case 22:
    case 27:
      OUTLINED_FUNCTION_2_4();
      break;
    default:
      return;
  }
}

uint64_t sub_267D6CC0C(char a1)
{
  result = 28532;
  switch(a1)
  {
    case 1:
      result = 1836020326;
      break;
    case 2:
      result = OUTLINED_FUNCTION_19_21(0x63616C706572);
      break;
    case 3:
      result = 0x65766F6D6572;
      break;
    case 4:
      result = 0x65726F6E6769;
      break;
    case 5:
      result = 7301239;
      break;
    case 6:
      result = 1953391987;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267D6CCA8()
{
  OUTLINED_FUNCTION_5_42();
  sub_267EF9EE8();
  OUTLINED_FUNCTION_20_19();
  if (v0 >= 0x23)
  {
    return 35;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_267D6CD14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_267D6CCA8();
  *a2 = result;
  return result;
}

void sub_267D6CD44()
{
  v1 = OUTLINED_FUNCTION_6_36();
  sub_267D6C8B0(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_267D6CDBC()
{
  OUTLINED_FUNCTION_5_42();
  sub_267EF9D38();
  OUTLINED_FUNCTION_20_19();
  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_267D6CDFC()
{
  OUTLINED_FUNCTION_5_42();
  sub_267EF9D38();
  OUTLINED_FUNCTION_20_19();
  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

void sub_267D6CE3C(char a1)
{
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
      OUTLINED_FUNCTION_22_20();
      break;
    default:
      return;
  }
}

uint64_t sub_267D6CEDC()
{
  OUTLINED_FUNCTION_5_42();
  sub_267EF9EE8();
  OUTLINED_FUNCTION_20_19();
  if (v0 >= 0x25)
  {
    return 37;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_267D6CF24()
{
  OUTLINED_FUNCTION_5_42();
  sub_267EF9D38();
  OUTLINED_FUNCTION_20_19();
  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_267D6CF64()
{
  OUTLINED_FUNCTION_5_42();
  sub_267EF9EE8();
  OUTLINED_FUNCTION_20_19();
  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_267D6CFAC(char a1)
{
  result = 0x6D75626C61;
  switch(a1)
  {
    case 1:
      result = 7368801;
      break;
    case 2:
      result = OUTLINED_FUNCTION_19_21(0x6C6369747261);
      break;
    case 3:
      result = 0x747369747261;
      break;
    case 4:
      result = 1802465122;
      break;
    case 5:
      result = OUTLINED_FUNCTION_19_21(0x646F73697065);
      break;
    case 6:
      result = OUTLINED_FUNCTION_14_28(1769369453);
      break;
    case 7:
      result = 0x6E6F697461636F6CLL;
      break;
    case 8:
      result = 0x697461636F4C796DLL;
      break;
    case 9:
      v3 = 1953458288;
      goto LABEL_11;
    case 10:
      result = 0x7473696C79616C70;
      break;
    case 11:
      result = OUTLINED_FUNCTION_25_19(0x736163646F70);
      break;
    case 12:
      result = 0x68736E6565726373;
      break;
    case 13:
      result = OUTLINED_FUNCTION_27_19();
      break;
    case 14:
      result = 1735290739;
      break;
    case 15:
      v3 = 1701079414;
LABEL_11:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
      break;
    case 16:
      result = 0x65676170626577;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267D6D118()
{
  OUTLINED_FUNCTION_5_42();
  sub_267EF9EE8();
  OUTLINED_FUNCTION_20_19();
  if (v0 >= 0x1C)
  {
    return 28;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_267D6D160(char a1)
{
  result = 1684957542;
  switch(a1)
  {
    case 1:
      return OUTLINED_FUNCTION_27_19();
    case 2:
      return 0x6567616E616DLL;
    case 3:
      return OUTLINED_FUNCTION_24_20();
    case 4:
      return 1684956531;
    case 5:
      return 0x796C706572;
    case 6:
      return 0x64726177726F66;
    case 7:
      return 0x796669646F6DLL;
    case 8:
      v4 = 1701602660;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
    case 9:
      v3 = 1701867617;
      goto LABEL_29;
    case 10:
      return 0x79666972616C63;
    case 11:
      return 0x65766E6F4377656ELL;
    case 12:
      return 0x65636E756F6E6E61;
    case 13:
      return 1886352499;
    case 14:
      return OUTLINED_FUNCTION_14_28(1918986355);
    case 15:
      return 2036427888;
    case 16:
      return 0x627265566F6ELL;
    case 17:
      return 0x736972616D6D7573;
    case 18:
      v4 = 1633972341;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
    case 19:
      return OUTLINED_FUNCTION_25_19(0x736575716572);
    case 20:
      return 0x6978456B63656863;
    case 21:
      return 0x77726F4670696B73;
    case 22:
      return OUTLINED_FUNCTION_19_21(0x726168736E75);
    case 23:
      v3 = 1702063733;
LABEL_29:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x646E00000000;
      break;
    case 24:
      result = 0x746165706572;
      break;
    case 25:
      result = 0x7463616572;
      break;
    case 26:
      result = OUTLINED_FUNCTION_25_19(0x636165726E75);
      break;
    case 27:
      result = 0x6552657461647075;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_267D6D3C0()
{
  OUTLINED_FUNCTION_5_42();
  sub_267EF9D38();
  OUTLINED_FUNCTION_20_19();
  return v0 != 0;
}

uint64_t sub_267D6D420@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_267D6CDBC();
  *a2 = result;
  return result;
}

uint64_t sub_267D6D450()
{
  v1 = OUTLINED_FUNCTION_6_36();
  result = sub_267BB9308(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_267D6D4C8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_267C28320();
}

uint64_t sub_267D6D4EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_267D6CDFC();
  *a2 = result;
  return result;
}

void sub_267D6D51C()
{
  v1 = OUTLINED_FUNCTION_6_36();
  sub_267D6CE3C(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_267D6D5B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_267D6CEDC();
  *a2 = result;
  return result;
}

void sub_267D6D5E8()
{
  v1 = OUTLINED_FUNCTION_6_36();
  sub_267D6C0D4(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_267D6D684@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_267D6C2A8();
  *a2 = result;
  return result;
}

void sub_267D6D6B4()
{
  v1 = OUTLINED_FUNCTION_6_36();
  sub_267D6C6D4(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_267D6D750@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_267D6CF24();
  *a2 = result;
  return result;
}

uint64_t sub_267D6D780()
{
  v1 = OUTLINED_FUNCTION_6_36();
  result = sub_267D6CC0C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_267D6D81C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_267D6CF64();
  *a2 = result;
  return result;
}

uint64_t sub_267D6D84C()
{
  v1 = OUTLINED_FUNCTION_6_36();
  result = sub_267D6CFAC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_267D6D8E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_267D6D118();
  *a2 = result;
  return result;
}

uint64_t sub_267D6D918()
{
  v1 = OUTLINED_FUNCTION_6_36();
  result = sub_267D6D160(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_267D6D9C4()
{
  result = qword_28022B650;
  if (!qword_28022B650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B650);
  }

  return result;
}

unint64_t sub_267D6DA1C()
{
  result = qword_28022B658;
  if (!qword_28022B658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B658);
  }

  return result;
}

unint64_t sub_267D6DA70()
{
  result = qword_28022B660;
  if (!qword_28022B660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B660);
  }

  return result;
}

unint64_t sub_267D6DAC4()
{
  result = qword_28022B668;
  if (!qword_28022B668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B668);
  }

  return result;
}

unint64_t sub_267D6DB18()
{
  result = qword_28022B670;
  if (!qword_28022B670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B670);
  }

  return result;
}

BOOL sub_267D6DB7C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_267D6D3C0();
  *a2 = result;
  return result;
}

void *sub_267D6DC24(unsigned __int8 a1)
{
  if (a1 > 0xBu || ((0xB7Fu >> a1) & 1) == 0)
  {
    return 0;
  }

  v1 = **(&unk_279C2E558 + a1);
  v2 = v1;
  return v1;
}

uint64_t sub_267D6DC7C()
{
  OUTLINED_FUNCTION_5_42();
  sub_267EF9EE8();
  OUTLINED_FUNCTION_20_19();
  if (v0 >= 0x29)
  {
    return 41;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_267D6DCC4()
{
  OUTLINED_FUNCTION_5_42();
  sub_267EF9D38();
  OUTLINED_FUNCTION_20_19();
  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267D6DD0C(char a1)
{
  if (a1)
  {
    return 0x64646120646E61;
  }

  else
  {
    return 6581857;
  }
}

uint64_t sub_267D6DD60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_267D6DC7C();
  *a2 = result;
  return result;
}

void sub_267D6DD90()
{
  v1 = OUTLINED_FUNCTION_6_36();
  sub_267D6C2F0(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_267D6DE2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_267D6DCC4();
  *a2 = result;
  return result;
}

uint64_t sub_267D6DE5C()
{
  v1 = OUTLINED_FUNCTION_6_36();
  result = sub_267D6DD0C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_267D6DED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a4();
  v11 = a5();
  v12 = a6();

  return MEMORY[0x2821C21F8](a1, a2, v10, v11, v12);
}

uint64_t sub_267D6DF64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_267EF5B58();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  *(a3 + *(type metadata accessor for SmsContactIntentNode() + 20)) = a2;
}

uint64_t sub_267D6DFF4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_267EF5B58();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_267D6E06C(uint64_t a1)
{
  v2 = sub_267D6FB2C(&qword_28022B820);

  return MEMORY[0x2821C1928](a1, v2);
}

uint64_t sub_267D6E0D4(uint64_t a1)
{
  v2 = sub_267D6FB2C(&qword_28022B820);

  return MEMORY[0x2821C1920](a1, v2);
}

uint64_t type metadata accessor for SmsContactIntentNode()
{
  result = qword_28022B678;
  if (!qword_28022B678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267D6E178(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229798, &unk_267EFE4D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ContactTypeValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD8)
  {
    if (a2 + 40 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 40) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 41;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x29;
  v5 = v6 - 41;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactTypeValue(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 40 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 40) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD7)
  {
    v6 = ((a2 - 216) >> 8) + 1;
    *result = a2 + 40;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 40;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_267D6E36C()
{
  result = sub_267EF5B58();
  if (v1 <= 0x3F)
  {
    result = sub_267EF54C8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppAttributesValue(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for JointContactValue(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SmsContactReferenceValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDB)
  {
    if (a2 + 37 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 37) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 38;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x26;
  v5 = v6 - 38;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SmsContactReferenceValue(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 37 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 37) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDA)
  {
    v6 = ((a2 - 219) >> 8) + 1;
    *result = a2 + 37;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 37;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SmsContactRoleValue(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SmsSharedEntityValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SmsSharedEntityValue(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SmsNounValue(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SmsAttributesValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDE)
  {
    if (a2 + 34 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 34) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 35;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x23;
  v5 = v6 - 35;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SmsAttributesValue(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDD)
  {
    v6 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 34;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SmsConfirmationValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SmsConfirmationValue(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SmsReferenceValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDC)
  {
    if (a2 + 36 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 36) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 37;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x25;
  v5 = v6 - 37;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SmsReferenceValue(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 36 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 36) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDB)
  {
    v6 = ((a2 - 220) >> 8) + 1;
    *result = a2 + 36;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 36;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267D6EE28(uint64_t a1)
{
  result = sub_267D6EE50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_267D6EE50()
{
  result = qword_28022B688;
  if (!qword_28022B688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B688);
  }

  return result;
}

unint64_t sub_267D6EED8()
{
  result = qword_28022B6A0;
  if (!qword_28022B6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B6A0);
  }

  return result;
}

unint64_t sub_267D6EF30()
{
  result = qword_28022B6A8;
  if (!qword_28022B6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B6A8);
  }

  return result;
}

unint64_t sub_267D6EFB8()
{
  result = qword_28022B6C0;
  if (!qword_28022B6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B6C0);
  }

  return result;
}

unint64_t sub_267D6F010()
{
  result = qword_28022B6C8;
  if (!qword_28022B6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B6C8);
  }

  return result;
}

unint64_t sub_267D6F068()
{
  result = qword_28022B6D0;
  if (!qword_28022B6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B6D0);
  }

  return result;
}

unint64_t sub_267D6F0F0()
{
  result = qword_28022B6E8;
  if (!qword_28022B6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B6E8);
  }

  return result;
}

unint64_t sub_267D6F148()
{
  result = qword_28022B6F0;
  if (!qword_28022B6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B6F0);
  }

  return result;
}

unint64_t sub_267D6F1A0()
{
  result = qword_28022B6F8;
  if (!qword_28022B6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B6F8);
  }

  return result;
}

unint64_t sub_267D6F228()
{
  result = qword_28022B710;
  if (!qword_28022B710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B710);
  }

  return result;
}

unint64_t sub_267D6F280()
{
  result = qword_28022B718;
  if (!qword_28022B718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B718);
  }

  return result;
}

unint64_t sub_267D6F2D8()
{
  result = qword_28022B720;
  if (!qword_28022B720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B720);
  }

  return result;
}

unint64_t sub_267D6F360()
{
  result = qword_28022B738;
  if (!qword_28022B738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B738);
  }

  return result;
}

unint64_t sub_267D6F3B8()
{
  result = qword_28022B740;
  if (!qword_28022B740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B740);
  }

  return result;
}

unint64_t sub_267D6F410()
{
  result = qword_28022B748;
  if (!qword_28022B748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B748);
  }

  return result;
}

unint64_t sub_267D6F498()
{
  result = qword_28022B760;
  if (!qword_28022B760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B760);
  }

  return result;
}

unint64_t sub_267D6F4F0()
{
  result = qword_28022B768;
  if (!qword_28022B768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B768);
  }

  return result;
}

unint64_t sub_267D6F548()
{
  result = qword_28022B770;
  if (!qword_28022B770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B770);
  }

  return result;
}

unint64_t sub_267D6F59C(uint64_t a1)
{
  result = sub_267D6F5C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_267D6F5C4()
{
  result = qword_28022B778;
  if (!qword_28022B778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B778);
  }

  return result;
}

unint64_t sub_267D6F64C()
{
  result = qword_28022B790;
  if (!qword_28022B790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B790);
  }

  return result;
}

unint64_t sub_267D6F6A4()
{
  result = qword_28022B798;
  if (!qword_28022B798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B798);
  }

  return result;
}

unint64_t sub_267D6F6FC()
{
  result = qword_28022B7A0;
  if (!qword_28022B7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B7A0);
  }

  return result;
}

unint64_t sub_267D6F784()
{
  result = qword_28022B7B8;
  if (!qword_28022B7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B7B8);
  }

  return result;
}

unint64_t sub_267D6F7DC()
{
  result = qword_28022B7C0;
  if (!qword_28022B7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B7C0);
  }

  return result;
}

unint64_t sub_267D6F834()
{
  result = qword_28022B7C8;
  if (!qword_28022B7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B7C8);
  }

  return result;
}

unint64_t sub_267D6F8BC()
{
  result = qword_28022B7E0;
  if (!qword_28022B7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B7E0);
  }

  return result;
}

unint64_t sub_267D6F914()
{
  result = qword_28022B7E8;
  if (!qword_28022B7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B7E8);
  }

  return result;
}

unint64_t sub_267D6F96C()
{
  result = qword_28022B7F0;
  if (!qword_28022B7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B7F0);
  }

  return result;
}

unint64_t sub_267D6F9F4()
{
  result = qword_28022B808;
  if (!qword_28022B808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B808);
  }

  return result;
}

unint64_t sub_267D6FA4C()
{
  result = qword_28022B810;
  if (!qword_28022B810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B810);
  }

  return result;
}

unint64_t sub_267D6FAA4()
{
  result = qword_28022B818;
  if (!qword_28022B818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B818);
  }

  return result;
}

uint64_t sub_267D6FB2C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SmsContactIntentNode();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_267D6FB70()
{
  result = qword_28022B828;
  if (!qword_28022B828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B828);
  }

  return result;
}

unint64_t sub_267D6FBC4()
{
  result = qword_28022B830;
  if (!qword_28022B830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B830);
  }

  return result;
}

unint64_t sub_267D6FC18()
{
  result = qword_28022B838;
  if (!qword_28022B838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B838);
  }

  return result;
}

unint64_t sub_267D6FC6C()
{
  result = qword_28022B840;
  if (!qword_28022B840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B840);
  }

  return result;
}

unint64_t sub_267D6FCC0()
{
  result = qword_28022B848;
  if (!qword_28022B848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B848);
  }

  return result;
}

unint64_t sub_267D6FD14()
{
  result = qword_28022B850;
  if (!qword_28022B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B850);
  }

  return result;
}

unint64_t sub_267D6FD68()
{
  result = qword_28022B858;
  if (!qword_28022B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B858);
  }

  return result;
}

unint64_t sub_267D6FDBC()
{
  result = qword_28022B860;
  if (!qword_28022B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B860);
  }

  return result;
}

unint64_t sub_267D6FE10()
{
  result = qword_28022B868;
  if (!qword_28022B868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B868);
  }

  return result;
}

unint64_t sub_267D6FE64()
{
  result = qword_28022B870;
  if (!qword_28022B870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B870);
  }

  return result;
}

unint64_t sub_267D6FEB8()
{
  result = qword_28022B878;
  if (!qword_28022B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B878);
  }

  return result;
}

unint64_t sub_267D6FF0C()
{
  result = qword_28022B880;
  if (!qword_28022B880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B880);
  }

  return result;
}

unint64_t sub_267D6FF60()
{
  result = qword_28022B888;
  if (!qword_28022B888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B888);
  }

  return result;
}

unint64_t sub_267D6FFB4()
{
  result = qword_28022B890;
  if (!qword_28022B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B890);
  }

  return result;
}

unint64_t sub_267D70008()
{
  result = qword_28022B898;
  if (!qword_28022B898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B898);
  }

  return result;
}

unint64_t sub_267D7005C()
{
  result = qword_28022B8A0;
  if (!qword_28022B8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B8A0);
  }

  return result;
}

unint64_t sub_267D700B0()
{
  result = qword_28022B8A8;
  if (!qword_28022B8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B8A8);
  }

  return result;
}

unint64_t sub_267D70104()
{
  result = qword_28022B8B0;
  if (!qword_28022B8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B8B0);
  }

  return result;
}

unint64_t sub_267D70158()
{
  result = qword_28022B8B8;
  if (!qword_28022B8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B8B8);
  }

  return result;
}

unint64_t sub_267D701AC()
{
  result = qword_28022B8C0;
  if (!qword_28022B8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B8C0);
  }

  return result;
}

unint64_t sub_267D70200()
{
  result = qword_28022B8C8;
  if (!qword_28022B8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B8C8);
  }

  return result;
}

unint64_t sub_267D70254()
{
  result = qword_28022B8D0;
  if (!qword_28022B8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B8D0);
  }

  return result;
}

unint64_t sub_267D702A8()
{
  result = qword_28022B8D8;
  if (!qword_28022B8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B8D8);
  }

  return result;
}

unint64_t sub_267D702FC()
{
  result = qword_28022B8E0;
  if (!qword_28022B8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B8E0);
  }

  return result;
}

unint64_t sub_267D70350()
{
  result = qword_28022B8E8;
  if (!qword_28022B8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B8E8);
  }

  return result;
}

unint64_t sub_267D703A4()
{
  result = qword_28022B8F0;
  if (!qword_28022B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B8F0);
  }

  return result;
}

unint64_t sub_267D703F8()
{
  result = qword_28022B8F8;
  if (!qword_28022B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B8F8);
  }

  return result;
}

unint64_t sub_267D7044C()
{
  result = qword_28022B900[0];
  if (!qword_28022B900[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28022B900);
  }

  return result;
}

uint64_t sub_267D704A0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_267EF9138() != 1)
  {
    goto LABEL_12;
  }

  v6 = sub_267BB8F30(a1, a2);
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = v6;
  v9 = v7;
  v10 = sub_267EF8FF8();
  IsSingleEmoji = CEMStringIsSingleEmoji();

  if (!IsSingleEmoji)
  {

LABEL_12:
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v19 = sub_267EF8A08();
    __swift_project_value_buffer(v19, qword_280240FB0);
    v20 = sub_267EF89F8();
    v21 = sub_267EF95D8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_267B93000, v20, v21, "#TapbackUtils input string is not eligible to be converted to TapbackType", v22, 2u);
      MEMORY[0x26D60A7B0](v22, -1, -1);
    }

    goto LABEL_17;
  }

  v12 = v8 == 2375131120 && v9 == 0xA400000000000000;
  if (v12 || (OUTLINED_FUNCTION_0_39() & 1) != 0)
  {

    v13 = MEMORY[0x277D5D3D0];
LABEL_10:
    v14 = *v13;
    v15 = sub_267EF8198();
    (*(*(v15 - 8) + 104))(a3, v14, v15);
    v16 = a3;
    v17 = 0;
    v18 = v15;
    goto LABEL_18;
  }

  v24 = v8 == 2391908336 && v9 == 0xA400000000000000;
  if (v24 || (OUTLINED_FUNCTION_0_39() & 1) != 0)
  {

    v13 = MEMORY[0x277D5D3A8];
    goto LABEL_10;
  }

  v25 = v8 == 0x8FB8EFA49DE2 && v9 == 0xA600000000000000;
  if (v25 || (OUTLINED_FUNCTION_0_39() & 1) != 0)
  {

    v13 = MEMORY[0x277D5D3C8];
    goto LABEL_10;
  }

  v26 = v8 == 2258149360 && v9 == 0xA400000000000000;
  if (v26 || ((v27 = OUTLINED_FUNCTION_0_39(), v8 == 2191040496) ? (v28 = v9 == 0xA400000000000000) : (v28 = 0), !v28 ? (v29 = 0) : (v29 = 1), (v27 & 1) != 0 || (v29 & 1) != 0 || ((v30 = OUTLINED_FUNCTION_0_39(), v8 == 2745475056) ? (v31 = v9 == 0xA400000000000000) : (v31 = 0), !v31 ? (v32 = 0) : (v32 = 1), (v30 & 1) != 0 || (v32 & 1) != 0 || (OUTLINED_FUNCTION_0_39() & 1) != 0)))
  {

    v13 = MEMORY[0x277D5D3C0];
    goto LABEL_10;
  }

  v33 = v8 == 0x8FB8EF979DE2 && v9 == 0xA600000000000000;
  if (v33 || ((v34 = OUTLINED_FUNCTION_0_39(), v8 == 0x8FB8EFBC80E2) ? (v35 = v9 == 0xA600000000000000) : (v35 = 0), !v35 ? (v36 = 0) : (v36 = 1), (v34 & 1) != 0 || (v36 & 1) != 0 || (OUTLINED_FUNCTION_0_39() & 1) != 0 || (v8 == 9805282 ? (v37 = v9 == 0xA300000000000000) : (v37 = 0), v37 || (OUTLINED_FUNCTION_0_39() & 1) != 0)))
  {

    v13 = MEMORY[0x277D5D3B0];
    goto LABEL_10;
  }

  v38 = v8 == 9674210 && v9 == 0xA300000000000000;
  if (v38 || ((v39 = OUTLINED_FUNCTION_0_39(), v8 == 9739746) ? (v40 = v9 == 0xA300000000000000) : (v40 = 0), !v40 ? (v41 = 0) : (v41 = 1), (v39 & 1) != 0 || (v41 & 1) != 0))
  {

LABEL_89:
    v13 = MEMORY[0x277D5D3B8];
    goto LABEL_10;
  }

  v42 = OUTLINED_FUNCTION_0_39();

  if (v42)
  {
    goto LABEL_89;
  }

LABEL_17:
  v18 = sub_267EF8198();
  v16 = a3;
  v17 = 1;
LABEL_18:

  return __swift_storeEnumTagSinglePayload(v16, v17, 1, v18);
}

unint64_t INMessageType.description.getter(uint64_t a1)
{
  result = 0x6669636570736E75;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 1954047348;
      break;
    case 2:
      v4 = 1768191329;
LABEL_35:
      result = v4 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
      break;
    case 3:
      result = 0x546C617469676964;
      break;
    case 4:
      result = 0x74697277646E6168;
      break;
    case 5:
      result = 0x72656B63697473;
      break;
    case 6:
      result = 0x4C6B636162706174;
      break;
    case 7:
      result = 0x446B636162706174;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x4C6B636162706174;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x4C6B636162706174;
      break;
    case 12:
      result = 0x6C6143616964656DLL;
      break;
    case 13:
      result = 0x636F4C616964656DLL;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0x616D49616964656DLL;
      break;
    case 16:
      result = 0x646956616964656DLL;
      break;
    case 17:
      result = 0x736150616964656DLL;
      break;
    case 18:
      result = 0x647541616964656DLL;
      break;
    case 19:
      result = 0x53746E656D796170;
      break;
    case 20:
      result = 0x52746E656D796170;
      break;
    case 21:
      result = 0x4E746E656D796170;
      break;
    case 22:
      result = 0x696A6F6D696E61;
      break;
    case 23:
      result = 0x7974697669746361;
      break;
    case 24:
      result = 1701603686;
      break;
    case 25:
      result = 1802398060;
      break;
    case 26:
      v5 = 1667327346;
LABEL_41:
      result = v5 | 0x6E6F697400000000;
      break;
    case 27:
      result = 0xD000000000000012;
      break;
    case 28:
      result = 0xD000000000000014;
      break;
    default:
      switch(a1)
      {
        case 1000:
          result = 0x6F4D797465666173;
          break;
        case 1001:
          v5 = 1633906540;
          goto LABEL_41;
        case 1002:
          result = 0x6F4C646572616873;
          break;
        case 1003:
          result = 0x794D646E6966;
          break;
        case 1004:
          result = 0xD000000000000011;
          break;
        case 1005:
          v4 = 1416328033;
          goto LABEL_35;
        default:
          if (a1 == 1100)
          {
            result = 1819045744;
          }

          else
          {
            strcpy(v7, "unknown type: ");
            v6 = sub_267EF9E58();
            MEMORY[0x26D608E60](v6);

            result = v7[0];
          }

          break;
      }

      break;
  }

  return result;
}

uint64_t sub_267D70D78(uint64_t a1)
{
  v2 = a1 - 3;
  result = 8;
  switch(v2)
  {
    case 0:
      result = 4;
      break;
    case 1:
      result = 7;
      break;
    case 2:
      result = 10;
      break;
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 15:
    case 16:
    case 17:
    case 18:
    case 22:
    case 23:
      goto LABEL_6;
    case 9:
      result = 3;
      break;
    case 10:
      result = 9;
      break;
    case 11:
      result = 1;
      break;
    case 12:
      return result;
    case 13:
      result = 11;
      break;
    case 14:
      result = 12;
      break;
    case 19:
      result = 2;
      break;
    case 20:
      result = 0;
      break;
    case 21:
      result = 5;
      break;
    case 24:
      result = 14;
      break;
    case 25:
      result = 13;
      break;
    default:
      if (a1 == 1004)
      {
        result = 15;
      }

      else if (a1 == 1005)
      {
        result = 17;
      }

      else
      {
LABEL_6:
        if (a1 == 1100)
        {
          result = 16;
        }

        else
        {
          result = 18;
        }
      }

      break;
  }

  return result;
}

uint64_t sub_267D70EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 + 80);
  v14 = *(a6 + 88);
  v15 = type metadata accessor for MessagesContinueInAppDialogFlowStrategy();

  return MEMORY[0x2821B9F18](a1, a2, a3, a4, a5, v15, a7);
}

uint64_t sub_267D70F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(MEMORY[0x277D5B580] + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  v15 = *(a5 + 80);
  v16 = *(a5 + 88);
  v17 = type metadata accessor for MessagesContinueInAppDialogFlowStrategy();
  *v14 = v6;
  v14[1] = sub_267CDC6B8;

  return MEMORY[0x2821B9F20](a1, a2, a3, a4, v17, a6);
}

uint64_t sub_267D71040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B578] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = *(a3 + 80);
  v12 = *(a3 + 88);
  v13 = type metadata accessor for MessagesContinueInAppDialogFlowStrategyAsync();
  *v10 = v4;
  v10[1] = sub_267BCE5E4;

  return MEMORY[0x2821B9F10](a1, a2, v13, a4);
}

uint64_t sub_267D71138()
{
  OUTLINED_FUNCTION_1_53();
  v1 = *(v0 + 8);
  v2 = OUTLINED_FUNCTION_0_40();
  return v3(v2);
}

uint64_t sub_267D71174()
{
  OUTLINED_FUNCTION_1_53();
  v1 = *(v0 + 16);
  v2 = OUTLINED_FUNCTION_0_40();
  return v3(v2);
}

uint64_t sub_267D711B0()
{
  OUTLINED_FUNCTION_1_53();
  v1 = *(v0 + 24);
  v2 = OUTLINED_FUNCTION_0_40();
  return v3(v2);
}

uint64_t sub_267D711EC()
{
  OUTLINED_FUNCTION_1_53();
  v1 = *(v0 + 32);
  v2 = OUTLINED_FUNCTION_0_40();
  return v3(v2);
}

uint64_t sub_267D71228()
{
  OUTLINED_FUNCTION_1_53();
  v1 = *(v0 + 40);
  v2 = OUTLINED_FUNCTION_0_40();
  return v3(v2);
}

uint64_t sub_267D7129C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v137 = a2;
  v3 = sub_267EF4BE8();
  v4 = OUTLINED_FUNCTION_58(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229930, &qword_267EFEB88);
  v12 = OUTLINED_FUNCTION_18(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v130 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBE0, qword_267EFD030);
  v18 = OUTLINED_FUNCTION_18(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = (&v130 - v21);
  v23 = sub_267EF8228();
  v24 = OUTLINED_FUNCTION_58(v23);
  v135 = v25;
  v136 = v24;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v24);
  v30 = &v130 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v130 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v130 - v35;
  MEMORY[0x28223BE20](v34);
  v134 = &v130 - v37;
  sub_267B9CC04(a1, v22);
  v38 = type metadata accessor for DirectInvocationUseCases();
  if (__swift_getEnumTagSinglePayload(v22, 1, v38) != 1)
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_267CCEDF4(v22);
      goto LABEL_8;
    }

    v39 = v134;
    v40 = v135;
    v41 = v136;
    (*(v135 + 32))(v134, v22, v136);
    v42 = type metadata accessor for FollowupOfferResponse();
    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v42);
    v46 = (v40 + 16);
    v47 = *(v40 + 16);
    v47(v36, v39, v41);
    v48 = (*(v40 + 88))(v36, v41);
    if (v48 == *MEMORY[0x277D5D450])
    {
      sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_267BB41B0(ObjCClassFromMetadata);
      if (v50)
      {
LABEL_6:
        OUTLINED_FUNCTION_8_36();
        sub_267B9FF34(v16, &qword_280229930, &qword_267EFEB88);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
        v51 = OUTLINED_FUNCTION_2_44();
        v54 = OUTLINED_FUNCTION_85_2(v51, 6, v52, v53);
        OUTLINED_FUNCTION_0_41(v54);
LABEL_49:
        sub_267EF3838();
        __swift_project_boxed_opaque_existential_0(v139, v139[3]);
        sub_267EF3B18();
        v138 = 1;
        sub_267EF3B08();
        sub_267EF3848();

        (*(v135 + 8))(v134, v136);
        __swift_destroy_boxed_opaque_existential_0(v139);
        return sub_267D720DC(v16, v137);
      }

      __break(1u);
      goto LABEL_72;
    }

    if (v48 == *MEMORY[0x277D5D4B8])
    {
      sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
      v69 = swift_getObjCClassFromMetadata();
      sub_267BB41B0(v69);
      if (v70)
      {
        OUTLINED_FUNCTION_8_36();
        sub_267B9FF34(v16, &qword_280229930, &qword_267EFEB88);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
        v71 = OUTLINED_FUNCTION_2_44();
        v74 = OUTLINED_FUNCTION_85_2(v71, 7, v72, v73);
        OUTLINED_FUNCTION_0_41(v74);
        goto LABEL_49;
      }

LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    if (v48 == *MEMORY[0x277D5D4F0])
    {
      sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
      v75 = swift_getObjCClassFromMetadata();
      sub_267BB41B0(v75);
      if (!v76)
      {
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      OUTLINED_FUNCTION_8_36();
      sub_267B9FF34(v16, &qword_280229930, &qword_267EFEB88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
      v77 = OUTLINED_FUNCTION_2_44();
      OUTLINED_FUNCTION_85_2(v77, 1, v78, v79);
      v80 = OUTLINED_FUNCTION_2_44();
      v82 = 0;
LABEL_20:
      __swift_storeEnumTagSinglePayload(v80, v82, 1, v81);
      __swift_storeEnumTagSinglePayload(v16, 0, 1, v42);
      goto LABEL_49;
    }

    if (v48 == *MEMORY[0x277D5D508])
    {
      sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
      v83 = swift_getObjCClassFromMetadata();
      sub_267BB41B0(v83);
      if (v84)
      {
        OUTLINED_FUNCTION_8_36();
        sub_267B9FF34(v16, &qword_280229930, &qword_267EFEB88);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
        v85 = OUTLINED_FUNCTION_2_44();
        v88 = OUTLINED_FUNCTION_85_2(v85, 3, v86, v87);
        OUTLINED_FUNCTION_0_41(v88);
        goto LABEL_49;
      }

      goto LABEL_74;
    }

    if (v48 == *MEMORY[0x277D5D4D0])
    {
      sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
      v89 = swift_getObjCClassFromMetadata();
      sub_267BB41B0(v89);
      if (v90)
      {
        goto LABEL_6;
      }

      goto LABEL_75;
    }

    if (v48 == *MEMORY[0x277D5D4C0])
    {
      sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
      v91 = swift_getObjCClassFromMetadata();
      result = sub_267BB41B0(v91);
      if (v92)
      {
        OUTLINED_FUNCTION_8_36();
        sub_267B9FF34(v16, &qword_280229930, &qword_267EFEB88);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
        v93 = OUTLINED_FUNCTION_2_44();
        v96 = OUTLINED_FUNCTION_85_2(v93, 4, v94, v95);
        OUTLINED_FUNCTION_0_41(v96);
        goto LABEL_49;
      }

      __break(1u);
      goto LABEL_78;
    }

    if (v48 == *MEMORY[0x277D5D4C8])
    {
      sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
      v97 = swift_getObjCClassFromMetadata();
      result = sub_267BB41B0(v97);
      if (v98)
      {
        OUTLINED_FUNCTION_8_36();
        sub_267B9FF34(v16, &qword_280229930, &qword_267EFEB88);
        type metadata accessor for ReadingOfferBehaviorFlowFrameResult();
        v80 = OUTLINED_FUNCTION_2_44();
        v82 = 1;
        goto LABEL_20;
      }

LABEL_78:
      __break(1u);
      return result;
    }

    if (v48 == *MEMORY[0x277D5D500])
    {
      goto LABEL_34;
    }

    if (v48 == *MEMORY[0x277D5D460])
    {
      sub_267B9FF34(v16, &qword_280229930, &qword_267EFEB88);
      v103 = MEMORY[0x277D5D3C8];
    }

    else if (v48 == *MEMORY[0x277D5D468])
    {
      sub_267B9FF34(v16, &qword_280229930, &qword_267EFEB88);
      v103 = MEMORY[0x277D5D3D0];
    }

    else if (v48 == *MEMORY[0x277D5D478])
    {
      sub_267B9FF34(v16, &qword_280229930, &qword_267EFEB88);
      v103 = MEMORY[0x277D5D3A8];
    }

    else if (v48 == *MEMORY[0x277D5D518])
    {
      sub_267B9FF34(v16, &qword_280229930, &qword_267EFEB88);
      v103 = MEMORY[0x277D5D3C0];
    }

    else if (v48 == *MEMORY[0x277D5D480])
    {
      sub_267B9FF34(v16, &qword_280229930, &qword_267EFEB88);
      v103 = MEMORY[0x277D5D3B0];
    }

    else
    {
      if (v48 != *MEMORY[0x277D5D488])
      {
        if (v48 != *MEMORY[0x277D5D490] && v48 != *MEMORY[0x277D5D498] && v48 != *MEMORY[0x277D5D4A0] && v48 != *MEMORY[0x277D5D470] && v48 != *MEMORY[0x277D5D4A8] && v48 != *MEMORY[0x277D5D4B0])
        {
          v40 = v33;
          if (qword_280228818 == -1)
          {
LABEL_67:
            v115 = sub_267EF8A08();
            __swift_project_value_buffer(v115, qword_280240FB0);
            v47(v40, v134, v136);
            v116 = sub_267EF89F8();
            v133 = sub_267EF95E8();
            if (os_log_type_enabled(v116, v133))
            {
              v117 = OUTLINED_FUNCTION_48();
              v131 = v117;
              v132 = OUTLINED_FUNCTION_52();
              v139[0] = v132;
              *v117 = 136315138;
              v118 = v30;
              v119 = v136;
              v47(v118, v40, v136);
              v120 = sub_267EF9098();
              v122 = v121;
              v123 = OUTLINED_FUNCTION_25_20(v135);
              v46(v123, v119);
              v124 = sub_267BA33E8(v120, v122, v139);

              v125 = v131;
              *(v131 + 1) = v124;
              _os_log_impl(&dword_267B93000, v116, v133, "#FollowupOfferResponse unsupported button press: %s", v125, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v132);
              OUTLINED_FUNCTION_32_0();
              OUTLINED_FUNCTION_32_0();
            }

            else
            {

              v126 = OUTLINED_FUNCTION_25_20(v135);
              (v46)(v126);
            }

            sub_267B9FF34(v16, &qword_280229930, &qword_267EFEB88);
            OUTLINED_FUNCTION_78();
            __swift_storeEnumTagSinglePayload(v127, v128, v129, v42);
            v46(v36, v136);
            goto LABEL_49;
          }

LABEL_76:
          OUTLINED_FUNCTION_0();
          goto LABEL_67;
        }

LABEL_34:
        sub_267B9FF34(v16, &qword_280229930, &qword_267EFEB88);
        sub_267EF8198();
        OUTLINED_FUNCTION_2_44();
        OUTLINED_FUNCTION_78();
LABEL_48:
        __swift_storeEnumTagSinglePayload(v99, v100, v101, v102);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
        v106 = OUTLINED_FUNCTION_2_44();
        v109 = OUTLINED_FUNCTION_85_2(v106, 0, v107, v108);
        OUTLINED_FUNCTION_0_41(v109);
        goto LABEL_49;
      }

      sub_267B9FF34(v16, &qword_280229930, &qword_267EFEB88);
      v103 = MEMORY[0x277D5D3B8];
    }

    v104 = *v103;
    v105 = sub_267EF8198();
    (*(*(v105 - 8) + 104))(v16, v104, v105);
    v99 = v16;
    v100 = 0;
    v101 = 1;
    v102 = v105;
    goto LABEL_48;
  }

  sub_267B9FF34(v22, &unk_28022BBE0, qword_267EFD030);
LABEL_8:
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v55 = sub_267EF8A08();
  __swift_project_value_buffer(v55, qword_280240FB0);
  (*(v6 + 16))(v10, a1, v3);
  v56 = sub_267EF89F8();
  v57 = sub_267EF95E8();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = OUTLINED_FUNCTION_48();
    v59 = OUTLINED_FUNCTION_52();
    v139[0] = v59;
    *v58 = 136315138;
    v60 = Parse.DirectInvocation.description.getter();
    v62 = v61;
    (*(v6 + 8))(v10, v3);
    v63 = sub_267BA33E8(v60, v62, v139);

    *(v58 + 4) = v63;
    _os_log_impl(&dword_267B93000, v56, v57, "#FollowupOfferResponse unsupported direct invocation: %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v59);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v6 + 8))(v10, v3);
  }

  type metadata accessor for FollowupOfferResponse();
  OUTLINED_FUNCTION_78();
  return __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
}

uint64_t sub_267D71F64()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v0 = sub_267EF8A08();
  __swift_project_value_buffer(v0, qword_280240FB0);
  v1 = sub_267EF89F8();
  v2 = sub_267EF95D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_32();
    *v3 = 0;
    _os_log_impl(&dword_267B93000, v1, v2, "#FollowupOfferFlowStrategy makePromptForFullRead not implemented", v3, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  sub_267EF3D38();
  return sub_267EF3D28();
}

uint64_t sub_267D72034()
{
  OUTLINED_FUNCTION_12();
  sub_267D71F64();
  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t type metadata accessor for FollowupOfferResponse()
{
  result = qword_28022BA08;
  if (!qword_28022BA08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267D720DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229930, &qword_267EFEB88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267D72174()
{
  v0 = type metadata accessor for ReadingOfferBehaviorFlowFrameResult();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_267D721CC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_267EF4C08();
  OUTLINED_FUNCTION_23();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_0();
  v76 = v11 - v10;
  v12 = sub_267EF4BA8();
  OUTLINED_FUNCTION_23();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_0();
  v20 = v19 - v18;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v21 = sub_267EF8A08();
  __swift_project_value_buffer(v21, qword_280240FB0);
  (*(v14 + 16))(v20, a1, v12);
  v22 = sub_267EF89F8();
  v23 = sub_267EF95C8();
  if (os_log_type_enabled(v22, v23))
  {
    v75 = v6;
    v24 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v78 = v74;
    *v24 = 136315138;
    sub_267D73A94(&qword_28022AF50, MEMORY[0x277D5C118]);
    v25 = sub_267EF9E58();
    v26 = v2;
    v28 = v27;
    (*(v14 + 8))(v20, v12);
    v29 = sub_267BA33E8(v25, v28, &v78);
    v2 = v26;

    *(v24 + 4) = v29;
    _os_log_impl(&dword_267B93000, v22, v23, "#SendMessageFollowupOfferFlow received input %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v74);
    OUTLINED_FUNCTION_32_0();
    v6 = v75;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v14 + 8))(v20, v12);
  }

  swift_beginAccess();
  sub_267D7398C(v2 + 96, &v78);
  if (v81 != 2 || (OUTLINED_FUNCTION_8_37(v80, v79), v31 | v30))
  {
    sub_267D7395C(&v78);
    v32 = sub_267EF89F8();
    v33 = sub_267EF95E8();
    if (!OUTLINED_FUNCTION_36(v33))
    {
LABEL_11:

      return 0;
    }

    v34 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v34);
    v37 = "#SendMessageFollowupOfferFlow received input in an unexpected state";
LABEL_10:
    OUTLINED_FUNCTION_17_0(&dword_267B93000, v35, v36, v37);
    OUTLINED_FUNCTION_26();
    goto LABEL_11;
  }

  sub_267D7395C(&v78);
  sub_267EF4B88();
  v40 = sub_267E57DFC(v76, &v78);
  (*(v6 + 8))(v76, v4, v40);
  if (!v80.i64[0])
  {
    sub_267B9FF34(&v78, &unk_28022BBF0, &unk_267F01C60);
    v32 = sub_267EF89F8();
    v55 = sub_267EF95C8();
    if (!OUTLINED_FUNCTION_36(v55))
    {
      goto LABEL_11;
    }

    v56 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v56);
    v37 = "#SendMessageFollowupOfferFlow unexpected input, ignoring";
    goto LABEL_10;
  }

  sub_267B9A5E8(&v78, v77);
  OUTLINED_FUNCTION_11_31();
  v41 = v4[36];
  v42 = OUTLINED_FUNCTION_2_45();
  if (v43(v42) & 1) != 0 && (OUTLINED_FUNCTION_11_31(), v44 = v4[28], v45 = OUTLINED_FUNCTION_2_45(), (v46(v45)) || (OUTLINED_FUNCTION_11_31(), v47 = v4[12], v48 = OUTLINED_FUNCTION_2_45(), (v49(v48)))
  {
    v50 = sub_267EF89F8();
    v51 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_36(v51))
    {
      v52 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v52);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v53, v54, "#SendMessageFollowupOfferFlow user request unsend");
      OUTLINED_FUNCTION_26();
    }

    sub_267B9AFEC(v77, &v78);
    v81 = 0;
    OUTLINED_FUNCTION_19_22();
    sub_267D73A5C(&v78, v2 + 96);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_0(v77);
    return 1;
  }

  else
  {
    v80.i64[0] = &type metadata for Features;
    v80.i64[1] = sub_267BAFCAC();
    LOBYTE(v78) = 2;
    v57 = sub_267EF5128();
    __swift_destroy_boxed_opaque_existential_0(&v78);
    if ((v57 & 1) == 0 || (OUTLINED_FUNCTION_11_31(), v58 = v4[36], v59 = OUTLINED_FUNCTION_2_45(), (v60(v59) & 1) == 0) || (OUTLINED_FUNCTION_11_31(), v61 = v4[29], v62 = OUTLINED_FUNCTION_2_45(), (v63(v62) & 1) == 0))
    {
      v69 = sub_267EF89F8();
      v70 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_36(v70))
      {
        v71 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v71);
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v72, v73, "#SendMessageFollowupOfferFlow unrelated request, ignoring");
        OUTLINED_FUNCTION_26();
      }

      __swift_destroy_boxed_opaque_existential_0(v77);
      return 0;
    }

    v64 = sub_267EF89F8();
    v65 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_36(v65))
    {
      v66 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v66);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v67, v68, "#SendMessageFollowupOfferFlow user request edit");
      OUTLINED_FUNCTION_26();
    }

    sub_267B9AFEC(v77, &v78);
    v38 = 1;
    v81 = 1;
    OUTLINED_FUNCTION_19_22();
    sub_267D73A5C(&v78, v2 + 96);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_0(v77);
  }

  return v38;
}

uint64_t sub_267D727D8(uint64_t a1)
{
  *(v2 + 696) = v1;
  *(v2 + 688) = a1;
  return MEMORY[0x2822009F8](sub_267D727FC, 0, 0);
}

uint64_t sub_267D727FC()
{
  v1 = *(v0 + 696);
  swift_beginAccess();
  sub_267D7398C(v1 + 96, v0 + 16);
  v2 = *(v0 + 56);
  if (!*(v0 + 56))
  {
    sub_267B9A5E8((v0 + 16), v0 + 320);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v36 = sub_267EF8A08();
    __swift_project_value_buffer(v36, qword_280240FB0);
    v37 = sub_267EF89F8();
    v38 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_10_2(v38))
    {
      v39 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v39);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v40, v41, "#SendMessageFollowupOfferFlow pushing EditMessageFlow");
      OUTLINED_FUNCTION_26();
    }

    v42 = *(v0 + 696);

    *(v0 + 112) = 2;
    *(v0 + 120) = 0u;
    *(v0 + 136) = 0u;
    *(v0 + 152) = 2;
    swift_beginAccess();
    sub_267D73A5C(v0 + 112, v1 + 96);
    swift_endAccess();
    sub_267B9AFEC(v0 + 320, v0 + 360);
    sub_267B9AFEC(v42 + 16, v0 + 400);
    if (qword_280228710 != -1)
    {
      OUTLINED_FUNCTION_9_35();
    }

    v72 = *(v0 + 688);
    v43 = qword_280240640;
    v44 = type metadata accessor for SiriKitFlowFactoryImpl();
    v45 = swift_allocObject();
    *(v0 + 464) = v44;
    *(v0 + 472) = &off_2878CFE90;
    *(v0 + 440) = v45;
    *(v0 + 504) = &type metadata for CATProvider;
    *(v0 + 512) = &off_2878CE7A0;
    v46 = type metadata accessor for UnsendMessagesFlow(0);
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    v49 = swift_allocObject();
    v50 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 440, v44);
    OUTLINED_FUNCTION_23();
    v52 = v51;
    v54 = *(v53 + 64) + 15;
    v55 = swift_task_alloc();
    (*(v52 + 16))(v55, v50, v44);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 480, *(v0 + 504));
    v56 = *v55;
    *(v49 + 120) = v44;
    *(v49 + 128) = &off_2878CFE90;
    *(v49 + 96) = v56;
    *(v49 + 184) = &type metadata for CATProvider;
    *(v49 + 192) = &off_2878CE7A0;
    sub_267B9A5E8((v0 + 360), v49 + 56);
    type metadata accessor for UnsendMessagesFlow.State(0);
    swift_storeEnumTagMultiPayload();
    *(v49 + 136) = v43;
    *(v49 + 144) = &off_2878CF508;
    *(v49 + 152) = 1;
    sub_267B9A5E8((v0 + 400), v49 + 16);

    __swift_destroy_boxed_opaque_existential_0((v0 + 480));
    __swift_destroy_boxed_opaque_existential_0((v0 + 440));

    *(v0 + 680) = v49;
    sub_267D73A94(&qword_280229468, type metadata accessor for UnsendMessagesFlow);
    sub_267EF3FF8();

    v35 = (v0 + 320);
    goto LABEL_24;
  }

  if (v2 == 1)
  {
    sub_267B9A5E8((v0 + 16), v0 + 160);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v13 = sub_267EF8A08();
    __swift_project_value_buffer(v13, qword_280240FB0);
    v14 = sub_267EF89F8();
    v15 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_10_2(v15))
    {
      v16 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v16);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v17, v18, "#SendMessageFollowupOfferFlow pushing EditMessageFlow");
      OUTLINED_FUNCTION_26();
    }

    v19 = *(v0 + 696);

    *(v0 + 64) = 1;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0u;
    *(v0 + 104) = 2;
    swift_beginAccess();
    sub_267D73A5C(v0 + 64, v1 + 96);
    swift_endAccess();
    sub_267B9AFEC(v0 + 160, v0 + 200);
    sub_267B9AFEC(v19 + 16, v0 + 240);
    if (qword_280228710 != -1)
    {
      OUTLINED_FUNCTION_9_35();
    }

    v20 = *(v0 + 688);
    v21 = qword_280240640;
    v22 = type metadata accessor for SiriKitFlowFactoryImpl();
    v23 = swift_allocObject();
    *(v0 + 304) = v22;
    *(v0 + 312) = &off_2878CFE90;
    *(v0 + 280) = v23;
    v24 = type metadata accessor for EditMessageFlow(0);
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    v27 = swift_allocObject();
    v28 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 280, v22);
    OUTLINED_FUNCTION_23();
    v30 = v29;
    v32 = *(v31 + 64) + 15;
    v33 = swift_task_alloc();
    (*(v30 + 16))(v33, v28, v22);
    v34 = *v33;
    *(v27 + 120) = v22;
    *(v27 + 128) = &off_2878CFE90;
    *(v27 + 96) = v34;
    sub_267B9A5E8((v0 + 200), v27 + 56);
    type metadata accessor for EditMessageFlow.State(0);
    swift_storeEnumTagMultiPayload();
    *(v27 + 136) = v21;
    *(v27 + 144) = &off_2878CF508;
    *(v27 + 152) = 0;
    sub_267B9A5E8((v0 + 240), v27 + 16);

    __swift_destroy_boxed_opaque_existential_0((v0 + 280));

    *(v0 + 672) = v27;
    sub_267D73A94(&qword_280229480, type metadata accessor for EditMessageFlow);
    sub_267EF3FF8();

    v35 = (v0 + 160);
LABEL_24:
    __swift_destroy_boxed_opaque_existential_0(v35);
LABEL_25:
    OUTLINED_FUNCTION_17();

    return v57();
  }

  if (v2 != 2 || (v3 = *(v0 + 16), OUTLINED_FUNCTION_8_37(*(v0 + 40), *(v0 + 24)), v5 | v4))
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v6 = sub_267EF8A08();
    __swift_project_value_buffer(v6, qword_280240FB0);
    v7 = sub_267EF89F8();
    v8 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_10_2(v8))
    {
      v9 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v9);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v10, v11, "#SendMessageFollowupOfferFlow was called in a completed state");
      OUTLINED_FUNCTION_26();
    }

    v12 = *(v0 + 688);

    sub_267EF4018();
    sub_267D7395C(v0 + 16);
    goto LABEL_25;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v59 = sub_267EF8A08();
  *(v0 + 704) = __swift_project_value_buffer(v59, qword_280240FB0);
  v60 = sub_267EF89F8();
  v61 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_10_2(v61))
  {
    v62 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v62);
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v63, v64, "#SendMessageFollowupOfferFlow waiting for input");
    OUTLINED_FUNCTION_26();
  }

  v65 = *(v0 + 696);

  v66 = v65[5];
  v67 = v65[6];
  __swift_project_boxed_opaque_existential_0(v65 + 2, v66);
  (*(v67 + 40))(v66, v67);
  v68 = *(v0 + 544);
  v69 = *(v0 + 552);
  __swift_project_boxed_opaque_existential_0((v0 + 520), v68);
  sub_267D734D8((v0 + 560));
  v70 = *(MEMORY[0x277D5BF40] + 4);
  v71 = swift_task_alloc();
  *(v0 + 712) = v71;
  *v71 = v0;
  v71[1] = sub_267D72FEC;

  return MEMORY[0x2821BB5D0](v0 + 560, v68, v69);
}

uint64_t sub_267D72FEC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = *(v2 + 712);
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 720) = v0;

  __swift_destroy_boxed_opaque_existential_0((v3 + 560));
  if (v0)
  {
    v7 = sub_267D73160;
  }

  else
  {
    v7 = sub_267D730F8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_267D730F8()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 688);
  __swift_destroy_boxed_opaque_existential_0((v0 + 520));
  sub_267EF3FB8();
  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267D73160()
{
  v1 = v0[90];
  v2 = v0[88];
  __swift_destroy_boxed_opaque_existential_0(v0 + 65);
  v3 = v1;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[90];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_267B93000, v4, v5, "#SendMessageFollowupOfferFlow failed to publish output: '%@'", v7, 0xCu);
    sub_267B9FF34(v8, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v11 = v0[90];
  v12 = v0[86];

  sub_267EF4018();
  OUTLINED_FUNCTION_17();

  return v13();
}

uint64_t sub_267D732B4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_267EF93F8();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = &unk_267F07ED0;
  v10[7] = v2;

  sub_267E8FA18();
}

uint64_t sub_267D733C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BBD07C;

  return sub_267D727D8(a1);
}

uint64_t sub_267D73460()
{
  swift_beginAccess();
  sub_267D7398C(v0 + 96, &v5);
  if (v8 == 2)
  {
    OUTLINED_FUNCTION_8_37(v7, v6);
    if (v2 == 2 && v1 == 0)
    {
      return 0;
    }
  }

  sub_267D7395C(&v5);
  return 1;
}

uint64_t sub_267D734D8@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v18 - v4;
  v6 = sub_267EF4158();
  OUTLINED_FUNCTION_23();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_0();
  v14 = v13 - v12;
  sub_267EF4148();
  if (qword_280228900 != -1)
  {
    swift_once();
  }

  sub_267BB8DFC();
  sub_267EF40D8();
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  (*(v8 + 16))(v5, v14, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  v15 = sub_267EF4CC8();
  v16 = MEMORY[0x277D5C1D8];
  a1[3] = v15;
  a1[4] = v16;
  __swift_allocate_boxed_opaque_existential_0(a1);
  sub_267EF4C98();
  return (*(v8 + 8))(v14, v6);
}

uint64_t sub_267D736A0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return sub_267D7395C(v0 + 96);
}

uint64_t sub_267D736D0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  sub_267D7395C(v0 + 96);
  return v0;
}

uint64_t sub_267D73700()
{
  sub_267D736D0();

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_16SiriMessagesFlow024SendMessageFollowupOfferC0C5State33_9DFF7FFE8BE70746C72FAE3C43E445EBLLO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_267D73788(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267D737C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_267D73810(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_267D73894(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_267BAEBEC;

  return sub_267D727D8(a1);
}

uint64_t sub_267D73930@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_267D73460();
  *a1 = result;
  return result;
}

uint64_t sub_267D739C4()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_267BAEBEC;

  return sub_267D733C4(v2);
}

uint64_t sub_267D73A94(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for SendMessageFollowupOfferFlow.SendMessageFollowupOfferFlowResult(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267D73BBC()
{
  result = qword_28022BA18;
  if (!qword_28022BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022BA18);
  }

  return result;
}

uint64_t INOutgoingMessageType.typeValue.getter(uint64_t a1)
{
  v1 = 0x6F69647561;
  v2 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v2 = 1954047348;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

void *sub_267D73C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7)
{
  type metadata accessor for EditMessageConfirmIntentFlow.State(0);
  swift_storeEnumTagMultiPayload();
  v7[7] = a1;
  v7[8] = a2;
  v7[9] = a3;
  v7[10] = a4;
  v7[11] = a5;
  sub_267C1B4DC(a6, v7 + OBJC_IVAR____TtC16SiriMessagesFlow28EditMessageConfirmIntentFlow_sentMessageContext);
  sub_267B9A5E8(a7, (v7 + 2));
  return v7;
}

uint64_t sub_267D73D24(uint64_t a1)
{
  v2 = v1;
  sub_267EF4C08();
  OUTLINED_FUNCTION_23();
  v71 = v5;
  v72 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_0();
  v10 = v9 - v8;
  v76 = type metadata accessor for EditMessageConfirmIntentFlow.State(0);
  v11 = OUTLINED_FUNCTION_22(v76);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v73 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v75 = &v69 - v16;
  v17 = sub_267EF4BA8();
  OUTLINED_FUNCTION_23();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_0();
  v25 = v24 - v23;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v26 = sub_267EF8A08();
  v27 = __swift_project_value_buffer(v26, qword_280240FB0);
  (*(v19 + 16))(v25, a1, v17);
  v74 = v27;
  v28 = sub_267EF89F8();
  v29 = sub_267EF95C8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = OUTLINED_FUNCTION_48();
    v69 = OUTLINED_FUNCTION_52();
    v70 = v2;
    v78 = v69;
    *v30 = 136315138;
    sub_267D75F1C(&qword_28022AF50, MEMORY[0x277D5C118]);
    v31 = sub_267EF9E58();
    v33 = v32;
    (*(v19 + 8))(v25, v17);
    v34 = sub_267BA33E8(v31, v33, &v78);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_267B93000, v28, v29, "#EditMessageConfirmIntentFlow received input: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v69);
    v2 = v70;
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v19 + 8))(v25, v17);
  }

  v35 = OBJC_IVAR____TtC16SiriMessagesFlow28EditMessageConfirmIntentFlow_state;
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_1_54();
  v36 = v75;
  sub_267D75F64(v2 + v35, v75, v37);
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_0_42();
    sub_267D75EC4(v36, v38);

    v39 = sub_267EF89F8();
    v40 = sub_267EF95E8();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = OUTLINED_FUNCTION_48();
      v42 = OUTLINED_FUNCTION_52();
      v77 = v42;
      *v41 = 136315138;
      OUTLINED_FUNCTION_1_54();
      sub_267D75F64(v2 + v35, v73, v43);
      v44 = sub_267EF9098();
      v46 = sub_267BA33E8(v44, v45, &v77);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_267B93000, v39, v40, "#EditMessageConfirmIntentFlow on() was called in state %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      OUTLINED_FUNCTION_42_0();
LABEL_15:
      OUTLINED_FUNCTION_32_0();
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v47 = *v36;
  sub_267EF4B88();
  v49 = v71;
  v48 = v72;
  v50 = (*(v71 + 88))(v10, v72);
  v51 = *MEMORY[0x277D5C168];
  (*(v49 + 8))(v10, v48);
  v39 = sub_267EF89F8();
  sub_267EF95C8();
  OUTLINED_FUNCTION_12_3();
  v53 = os_log_type_enabled(v39, v52);
  if (v50 != v51)
  {
    if (v53)
    {
      v62 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_59(v62);
      OUTLINED_FUNCTION_13_31();
      _os_log_impl(v63, v64, v65, v66, v67, 2u);
      goto LABEL_15;
    }

LABEL_16:

    return 0;
  }

  if (v53)
  {
    v54 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_59(v54);
    OUTLINED_FUNCTION_13_31();
    _os_log_impl(v55, v56, v57, v58, v59, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  v60 = v73;
  *v73 = v47;
  v61 = 1;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_66_3();
  sub_267D75FC4(v60, v2 + v35);
  swift_endAccess();
  return v61;
}