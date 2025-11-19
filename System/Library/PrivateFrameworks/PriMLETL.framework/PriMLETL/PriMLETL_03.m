unint64_t sub_25F5A9C64()
{
  result = qword_27FD9E1E0;
  if (!qword_27FD9E1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E1E0);
  }

  return result;
}

unint64_t sub_25F5A9CB8()
{
  result = qword_27FD9E1E8;
  if (!qword_27FD9E1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E1E8);
  }

  return result;
}

unint64_t sub_25F5A9D0C()
{
  result = qword_27FD9E1F0;
  if (!qword_27FD9E1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E1F0);
  }

  return result;
}

uint64_t sub_25F5A9D60(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F5A9D84(uint64_t result)
{
  v1 = *(result + 168);
  v2 = *(result + 200) & 1;
  *(result + 128) &= 0xFF01uLL;
  *(result + 168) = v1;
  *(result + 200) = v2;
  return result;
}

unint64_t sub_25F5A9DAC()
{
  result = qword_27FD9E1F8;
  if (!qword_27FD9E1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E1F8);
  }

  return result;
}

uint64_t sub_25F5A9E30(uint64_t result)
{
  v1 = *(result + 168);
  v2 = *(result + 200);
  *(result + 128) &= 0xFF01uLL;
  *(result + 168) = v1;
  *(result + 200) = v2 & 1 | 0x80;
  return result;
}

unint64_t sub_25F5A9E5C()
{
  result = qword_27FD9E200;
  if (!qword_27FD9E200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E200);
  }

  return result;
}

uint64_t sub_25F5A9EB0(uint64_t result)
{
  v1 = *(result + 168);
  v2 = *(result + 200);
  *(result + 128) &= 0xFF01uLL;
  *(result + 168) = v1;
  *(result + 200) = v2 & 1 | 0x60;
  return result;
}

unint64_t sub_25F5A9EDC()
{
  result = qword_27FD9E208;
  if (!qword_27FD9E208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E208);
  }

  return result;
}

uint64_t sub_25F5A9F30(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25F5A9F54(uint64_t result)
{
  v1 = *(result + 168);
  v2 = *(result + 200);
  *(result + 128) &= 0xFF01uLL;
  *(result + 168) = v1;
  *(result + 200) = v2 & 1 | 0x40;
  return result;
}

uint64_t sub_25F5A9F80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737961446B656577 && a2 == 0xE800000000000000;
  if (v4 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F487472617473 && a2 == 0xE900000000000072 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72756F48646E65 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_25F5E4B84();

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

uint64_t sub_25F5AA0A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737961447473616CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617373654D6E696DLL && a2 == 0xEB00000000736567 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617373654D78616DLL && a2 == 0xEB00000000736567 || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74676E654C78616DLL && a2 == 0xE900000000000068 || (sub_25F5E4B84() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x654D7265746C6966 && a2 == 0xEE00736567617373 || (sub_25F5E4B84() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x654D656C676E6973 && a2 == 0xEE00736567617373 || (sub_25F5E4B84() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5470756E61656C63 && a2 == 0xEB00000000747865 || (sub_25F5E4B84() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x676E696C706D6173 && a2 == 0xEC000000657A6953 || (sub_25F5E4B84() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x72437265746C6966 && a2 == 0xEE00616972657469 || (sub_25F5E4B84() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025F5EC550 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6D69547972657571 && a2 == 0xEC00000074756F65 || (sub_25F5E4B84() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000018 && 0x800000025F5EC570 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000025F5EC590 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000020 && 0x800000025F5EC5B0 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_25F5E4B84();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_25F5AA528(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x800000025F5EC1A0 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000025F5EC1C0 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025F5EC5E0 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000 || (sub_25F5E4B84() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7365727574616566 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_25F5E4B84();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_25F5AA6EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E7473616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65764578616DLL && a2 == 0xE900000000000073 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x706D6F72506E696DLL && a2 == 0xEA00000000007374 || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E696C706D6173 && a2 == 0xEC000000657A6953 || (sub_25F5E4B84() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x72437265746C6966 && a2 == 0xEE00616972657469 || (sub_25F5E4B84() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000020 && 0x800000025F5EC5B0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_25F5E4B84();

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

uint64_t sub_25F5AA908(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7961444E6D6F7266 && a2 == 0xEC0000006F674173;
  if (v4 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61444E6C69746E75 && a2 == 0xED00006F67417379 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74676E654C6E696DLL && a2 == 0xE900000000000068 || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74676E654C78616DLL && a2 == 0xE900000000000068 || (sub_25F5E4B84() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6576454E7473616CLL && a2 == 0xEB0000000073746ELL || (sub_25F5E4B84() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746E65764578616DLL && a2 == 0xE900000000000073 || (sub_25F5E4B84() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C706D615378616DLL && a2 == 0xEF657A6953676E69 || (sub_25F5E4B84() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C706D61536E696DLL && a2 == 0xEF657A6953676E69 || (sub_25F5E4B84() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x654D656C676E6973 && a2 == 0xEE00736567617373 || (sub_25F5E4B84() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x800000025F5EC600 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000018 && 0x800000025F5EC620 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x685472655078616DLL && a2 == 0xEC00000064616572 || (sub_25F5E4B84() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025F5EC640 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x796C6E4F746E6573 && a2 == 0xE800000000000000 || (sub_25F5E4B84() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000014 && 0x800000025F5EC660 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025F5EC680 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x5470756E61656C63 && a2 == 0xEB00000000747865 || (sub_25F5E4B84() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000018 && 0x800000025F5EC570 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000025F5EC590 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000020 && 0x800000025F5EC5B0 == a2)
  {

    return 19;
  }

  else
  {
    v6 = sub_25F5E4B84();

    if (v6)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }
}

uint64_t sub_25F5AAF68(uint64_t a1)
{
  v2 = sub_25F5E3E24();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v37 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E320, &unk_25F5EA470);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25F5E77E0;
  v13 = v3[13];
  v13(v11, *MEMORY[0x277D20758], v2);
  v14 = sub_25F5E3DC4();
  v15 = v3[1];
  v15(v11, v2);
  *(v12 + 32) = v14;
  v13(v8, *MEMORY[0x277D20750], v2);
  v16 = sub_25F5E3DC4();
  v15(v8, v2);
  *(v12 + 40) = v16;
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = 0;
    while (2)
    {
      v19 = *(a1 + 32 + 8 * v18++);
      v20 = *(v12 + 16);
      v21 = 32;
      do
      {
        if (!v20)
        {
          if (qword_27FD9D8B0 != -1)
          {
            swift_once();
          }

          v24 = sub_25F5E3FB4();
          __swift_project_value_buffer(v24, qword_27FD9EA20);

          v25 = sub_25F5E3F94();
          v26 = sub_25F5E47B4();

          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            v38 = v28;
            *v27 = 136315394;
            v29 = MEMORY[0x277D83B88];
            v30 = MEMORY[0x25F8E2CF0](a1, MEMORY[0x277D83B88]);
            v32 = sub_25F570AF8(v30, v31, &v38);

            *(v27 + 4) = v32;
            *(v27 + 12) = 2080;
            v33 = MEMORY[0x25F8E2CF0](v12, v29);
            v35 = v34;

            v36 = sub_25F570AF8(v33, v35, &v38);

            *(v27 + 14) = v36;
            _os_log_impl(&dword_25F56A000, v25, v26, "Invalid ExtractParameters.filterCriteria.results for generated image user interaction: %s. Allowed results are: %s.", v27, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x25F8E3B70](v28, -1, -1);
            MEMORY[0x25F8E3B70](v27, -1, -1);
          }

          else
          {
          }

          return 0;
        }

        v22 = *(v12 + v21);
        v21 += 8;
        --v20;
      }

      while (v22 != v19);
      if (v18 != v17)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

unint64_t sub_25F5AB2F8()
{
  result = qword_27FD9E210;
  if (!qword_27FD9E210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E210);
  }

  return result;
}

uint64_t sub_25F5AB34C(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F5AB370(uint64_t result)
{
  v1 = *(result + 168);
  v2 = *(result + 200);
  *(result + 128) &= 0xFF01uLL;
  *(result + 168) = v1;
  *(result + 200) = v2 & 1 | 0x20;
  return result;
}

uint64_t sub_25F5AB3D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E218, &unk_25F5E8AF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F5AB43C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25F5AB47C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25F5AB4F0()
{
  result = qword_27FD9E220;
  if (!qword_27FD9E220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E220);
  }

  return result;
}

unint64_t sub_25F5AB58C()
{
  result = qword_27FD9E230;
  if (!qword_27FD9E230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E230);
  }

  return result;
}

unint64_t sub_25F5AB5E4()
{
  result = qword_27FD9E238;
  if (!qword_27FD9E238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E238);
  }

  return result;
}

unint64_t sub_25F5AB63C()
{
  result = qword_27FD9E240;
  if (!qword_27FD9E240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E240);
  }

  return result;
}

unint64_t sub_25F5AB694()
{
  result = qword_27FD9E248;
  if (!qword_27FD9E248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E248);
  }

  return result;
}

unint64_t sub_25F5AB6E8(uint64_t a1)
{
  result = sub_25F5A9D0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F5AB710(uint64_t a1)
{
  result = sub_25F5A9EDC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F5AB738(uint64_t a1)
{
  result = sub_25F5AB2F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F5AB760(uint64_t a1)
{
  result = sub_25F5A9DAC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F5AB78C()
{
  result = qword_27FD9E250;
  if (!qword_27FD9E250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E250);
  }

  return result;
}

uint64_t sub_25F5AB824(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25F5AB890(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25F5AB8EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenerativeModelsAvailabilityType(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for GenerativeModelsAvailabilityType(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_8PriMLETL19EmailFilterCriteriaVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy161_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_25F5ABA18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 161))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 112);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25F5ABA74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 161) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 161) = 0;
    }

    if (a2)
    {
      *(result + 112) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8PriMLETL36GeneratedImageFeaturesFilterCriteriaVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_25F5ABB6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 129))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 72);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_25F5ABBD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy201_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_25F5ABC9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 201))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 144);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25F5ABCF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 200) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 201) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 201) = 0;
    }

    if (a2)
    {
      *(result + 144) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_25F5ABDA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_25F5ABDEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F5ABE64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 201))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 128) >> 9) & 0xFFFFFF80 | (*(a1 + 128) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_25F5ABEB8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 200) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 201) = 1;
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
      result = 0.0;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 128) = (-a2 << 9) & 0x1FFFFFF0000 | (2 * (-a2 & 0x7FLL));
      *(a1 + 136) = 0u;
      *(a1 + 152) = 0u;
      *(a1 + 168) = 0u;
      *(a1 + 184) = 0u;
      *(a1 + 200) = 0;
      return result;
    }

    *(a1 + 201) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F5ABF60(uint64_t result, char a2)
{
  v2 = *(result + 168);
  v3 = *(result + 200) & 1 | (32 * a2);
  *(result + 128) &= 0xFF01uLL;
  *(result + 168) = v2;
  *(result + 200) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ExtractSmsParameters.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExtractSmsParameters.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExtractEmailParameters.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExtractEmailParameters.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PersonalizationPolicy(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PersonalizationPolicy(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25F5AC3FC()
{
  result = qword_27FD9E268;
  if (!qword_27FD9E268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E268);
  }

  return result;
}

unint64_t sub_25F5AC454()
{
  result = qword_27FD9E270;
  if (!qword_27FD9E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E270);
  }

  return result;
}

unint64_t sub_25F5AC4AC()
{
  result = qword_27FD9E278;
  if (!qword_27FD9E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E278);
  }

  return result;
}

unint64_t sub_25F5AC504()
{
  result = qword_27FD9E280;
  if (!qword_27FD9E280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E280);
  }

  return result;
}

unint64_t sub_25F5AC55C()
{
  result = qword_27FD9E288;
  if (!qword_27FD9E288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E288);
  }

  return result;
}

unint64_t sub_25F5AC5B4()
{
  result = qword_27FD9E290;
  if (!qword_27FD9E290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E290);
  }

  return result;
}

unint64_t sub_25F5AC60C()
{
  result = qword_27FD9E298;
  if (!qword_27FD9E298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E298);
  }

  return result;
}

unint64_t sub_25F5AC664()
{
  result = qword_27FD9E2A0;
  if (!qword_27FD9E2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E2A0);
  }

  return result;
}

unint64_t sub_25F5AC6BC()
{
  result = qword_27FD9E2A8;
  if (!qword_27FD9E2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E2A8);
  }

  return result;
}

unint64_t sub_25F5AC714()
{
  result = qword_27FD9E2B0;
  if (!qword_27FD9E2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E2B0);
  }

  return result;
}

unint64_t sub_25F5AC76C()
{
  result = qword_27FD9E2B8;
  if (!qword_27FD9E2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E2B8);
  }

  return result;
}

unint64_t sub_25F5AC7C4()
{
  result = qword_27FD9E2C0;
  if (!qword_27FD9E2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E2C0);
  }

  return result;
}

unint64_t sub_25F5AC81C()
{
  result = qword_27FD9E2C8;
  if (!qword_27FD9E2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E2C8);
  }

  return result;
}

unint64_t sub_25F5AC874()
{
  result = qword_27FD9E2D0;
  if (!qword_27FD9E2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E2D0);
  }

  return result;
}

unint64_t sub_25F5AC8CC()
{
  result = qword_27FD9E2D8;
  if (!qword_27FD9E2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E2D8);
  }

  return result;
}

unint64_t sub_25F5AC924()
{
  result = qword_27FD9E2E0;
  if (!qword_27FD9E2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E2E0);
  }

  return result;
}

unint64_t sub_25F5AC97C()
{
  result = qword_27FD9E2E8;
  if (!qword_27FD9E2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E2E8);
  }

  return result;
}

unint64_t sub_25F5AC9D4()
{
  result = qword_27FD9E2F0;
  if (!qword_27FD9E2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E2F0);
  }

  return result;
}

unint64_t sub_25F5ACA2C()
{
  result = qword_27FD9E2F8;
  if (!qword_27FD9E2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E2F8);
  }

  return result;
}

unint64_t sub_25F5ACA84()
{
  result = qword_27FD9E300;
  if (!qword_27FD9E300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E300);
  }

  return result;
}

unint64_t sub_25F5ACADC()
{
  result = qword_27FD9E308;
  if (!qword_27FD9E308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E308);
  }

  return result;
}

unint64_t sub_25F5ACB30()
{
  result = qword_27FD9E310;
  if (!qword_27FD9E310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E310);
  }

  return result;
}

unint64_t sub_25F5ACB84()
{
  result = qword_27FD9E318;
  if (!qword_27FD9E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E318);
  }

  return result;
}

uint64_t sub_25F5ACBF0(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E360, &qword_25F5E9D28);
  if (swift_dynamicCast())
  {
    sub_25F573A2C(__src, &v42);
    __swift_project_boxed_opaque_existential_1Tm(&v42, v43);
    sub_25F5E34E4();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1Tm(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_25F5AEE2C(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_25F5E49A4();
  }

  sub_25F5ADF28(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_25F5AEB30(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0], v9);
  v10 = sub_25F5ADFF0(sub_25F5AEE94);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_25F5E35A4();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_25F5D2924(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_25F5E4524();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_25F5E4554();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_25F5E49A4();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_25F5D2924(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_25F5E4534();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_25F5E35B4();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_25F5E35B4();
    sub_25F5AEEFC(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_25F5AEEFC(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_25F5717CC(*&__src[0], *(&__src[0] + 1));

  sub_25F571820(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t sub_25F5AD100(uint64_t a1, unint64_t a2)
{
  v5 = sub_25F5E40F4();
  v47 = *(v5 - 8);
  v6 = *(v47 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_25F5E40C4();
  v10 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48, v11);
  v12 = sub_25F5E40E4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v49 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25F5AECD0(&unk_287194578);
  v19 = a2 >> 62;
  v45 = v13;
  v46 = v12;
  if ((a2 >> 62) > 1)
  {
    if (v19 != 2)
    {
      goto LABEL_16;
    }

    v21 = *(a1 + 16);
    v20 = *(a1 + 24);
    v22 = __OFSUB__(v20, v21);
    v23 = v20 - v21;
    if (!v22)
    {
      if (v23 < 7)
      {
        goto LABEL_16;
      }

LABEL_11:
      v50 = v17;
      v51 = v18;
      v24 = sub_25F5E35C4();
      v44 = v2;
      v26 = v25;
      v27 = sub_25F5AE910(v50, v51, v24, v25);
      sub_25F571820(v24, v26);
      v17 = v50;
      v18 = v51;
      if (v27)
      {
        if (qword_27FD9D8B8 == -1)
        {
          goto LABEL_13;
        }

        goto LABEL_28;
      }

LABEL_16:
      sub_25F571820(v17, v18);
      sub_25F5717CC(a1, a2);
      return a1;
    }

    __break(1u);
  }

  else
  {
    if (!v19)
    {
      if (BYTE6(a2) < 7uLL)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }

    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 < 7)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_28:
  swift_once();
LABEL_13:
  v29 = qword_27FD9E328;
  v28 = unk_27FD9E330;
  v43 = sub_25F5AED80(&qword_27FD9E338, MEMORY[0x277CC5540]);
  sub_25F5E40B4();
  sub_25F5717CC(v29, v28);
  v30 = v44;
  sub_25F5AE548(v29, v28);
  v44 = v30;
  sub_25F571820(v29, v28);
  sub_25F5E40A4();
  (*(v47 + 8))(v9, v5);
  sub_25F5AED80(&qword_27FD9E340, MEMORY[0x277CC5290]);
  v31 = v49;
  result = sub_25F5E40D4();
  if (v19)
  {
    if (v19 != 2)
    {
      v35 = v46;
      v34 = a1;
      v33 = a1 >> 32;
      if (a1 >> 32 < 7)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

    v34 = *(a1 + 16);
    v33 = *(a1 + 24);
  }

  else
  {
    v34 = 0;
    v33 = BYTE6(a2);
  }

  v35 = v46;
  if (v33 < 7)
  {
    goto LABEL_29;
  }

LABEL_22:
  if (v33 >= v34)
  {
    v36 = sub_25F5E35C4();
    v37 = v44;
    v39 = sub_25F5AD5D0(v36, v38);
    if (v37)
    {
      (*(v45 + 8))(v31, v35);
      sub_25F571820(v50, v51);
    }

    else
    {
      v41 = v39;
      v42 = v40;
      a1 = sub_25F5E4074();
      (*(v45 + 8))(v31, v35);
      sub_25F571820(v50, v51);
      sub_25F571820(v41, v42);
    }

    return a1;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_25F5AD5D0(uint64_t a1, unint64_t a2)
{
  v30[5] = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 < 28)
      {
        goto LABEL_8;
      }

LABEL_11:
      v30[3] = MEMORY[0x277CC9318];
      v30[4] = MEMORY[0x277CC9300];
      v30[0] = a1;
      v30[1] = a2;
      v9 = __swift_project_boxed_opaque_existential_1Tm(v30, MEMORY[0x277CC9318]);
      v10 = *v9;
      v11 = v9[1];
      v12 = v11 >> 62;
      if ((v11 >> 62) > 1)
      {
        if (v12 != 2)
        {
          memset(v28, 0, 14);
          v14 = v28;
          v13 = v28;
          goto LABEL_33;
        }

        v15 = *(v10 + 16);
        v16 = *(v10 + 24);
        v17 = sub_25F5E3494();
        if (v17)
        {
          v18 = sub_25F5E34C4();
          v10 = v15 - v18;
          if (__OFSUB__(v15, v18))
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v17 += v10;
        }

        v5 = __OFSUB__(v16, v15);
        v19 = v16 - v15;
        if (!v5)
        {
          goto LABEL_25;
        }

        __break(1u);
      }

      else if (!v12)
      {
        v28[0] = *v9;
        LOWORD(v28[1]) = v11;
        BYTE2(v28[1]) = BYTE2(v11);
        BYTE3(v28[1]) = BYTE3(v11);
        BYTE4(v28[1]) = BYTE4(v11);
        BYTE5(v28[1]) = BYTE5(v11);
        v13 = v28 + BYTE6(v11);
        v14 = v28;
LABEL_33:
        sub_25F5AE394(v14, v13, &v29);
        v7 = v29;
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        goto LABEL_34;
      }

      v20 = v10;
      v21 = v10 >> 32;
      v19 = v21 - v20;
      if (v21 >= v20)
      {
        v17 = sub_25F5E3494();
        if (!v17)
        {
LABEL_25:
          v23 = sub_25F5E34B4();
          if (v23 >= v19)
          {
            v24 = v19;
          }

          else
          {
            v24 = v23;
          }

          v25 = (v24 + v17);
          if (v17)
          {
            v13 = v25;
          }

          else
          {
            v13 = 0;
          }

          v14 = v17;
          goto LABEL_33;
        }

        v22 = sub_25F5E34C4();
        if (!__OFSUB__(v20, v22))
        {
          v17 += v20 - v22;
          goto LABEL_25;
        }

LABEL_39:
        __break(1u);
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 < 28)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    goto LABEL_36;
  }

  if (BYTE6(a2) >= 0x1CuLL)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_25F571820(a1, a2);
  v7 = sub_25F5E4084();
  sub_25F5AED80(&qword_27FD9E348, MEMORY[0x277CC51E8]);
  swift_allocError();
  (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277CC51E0], v7);
  swift_willThrow();
LABEL_34:
  v26 = *MEMORY[0x277D85DE8];
  return v7;
}

unint64_t sub_25F5AD8CC()
{
  result = sub_25F5AD8F0();
  qword_27FD9E328 = result;
  unk_27FD9E330 = v1;
  return result;
}

unint64_t sub_25F5AD8F0()
{
  v0 = sub_25F5E4514();
  if (!v1)
  {
    v4 = MEMORY[0x277D84F90];
LABEL_36:

    v16 = sub_25F5AECD0(v4);

    return v16;
  }

  v2 = v0;
  v3 = v1;
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v2 == 2573 && v3 == 0xE200000000000000 || (result = sub_25F5E4B84(), (result & 1) != 0))
    {

      LOBYTE(v5) = 10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_6;
    }

    v10 = (v3 & 0x2000000000000000) != 0 ? HIBYTE(v3) & 0xF : v2 & 0xFFFFFFFFFFFFLL;
    if (!v10)
    {
      break;
    }

    if ((v3 & 0x1000000000000000) != 0)
    {
      v15 = sub_25F5E44A4();
    }

    else
    {
      if ((v3 & 0x2000000000000000) != 0)
      {
        v12 = v2;
      }

      else
      {
        if ((v2 & 0x1000000000000000) != 0)
        {
          v11 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v11 = sub_25F5E49A4();
        }

        v12 = *v11;
      }

      v13 = v12;
      v14 = (__clz(~v12) - 24) << 16;
      if (v13 < 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = 65541;
      }
    }

    if (v15 >> 14 != 4 * v10)
    {
      goto LABEL_31;
    }

    result = sub_25F5D25A4(v2, v3);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_39;
    }

    if ((result & 0xFFFFFF80) != 0)
    {
LABEL_31:

      LOBYTE(v5) = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      result = sub_25F5D25A4(v2, v3);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_40;
      }

      v5 = result;

      if ((v5 & 0xFFFFFF00) != 0)
      {
        goto LABEL_38;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_32:
        v4 = sub_25F570FAC(0, *(v4 + 2) + 1, 1, v4);
      }
    }

LABEL_6:
    v7 = *(v4 + 2);
    v6 = *(v4 + 3);
    if (v7 >= v6 >> 1)
    {
      v4 = sub_25F570FAC((v6 > 1), v7 + 1, 1, v4);
    }

    *(v4 + 2) = v7 + 1;
    v4[v7 + 32] = v5;
    v2 = sub_25F5E4514();
    v3 = v8;
    if (!v8)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_25F5ADB68@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_25F5E3494();
    if (v10)
    {
      v11 = sub_25F5E34C4();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_25F5E34B4();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_25F5E3494();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_25F5E34C4();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_25F5E34B4();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_25F5ADD98(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_25F5AE858(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_25F571820(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_25F5ADB68(v14, a3, a4, &v13);
  v10 = v4;
  sub_25F571820(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_25F5ADF28@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_25F5AEA78(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_25F5E34D4();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_25F5E3484();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_25F5E3594();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_25F5ADFF0(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_25F571820(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_25F571820(v6, v5);
    *v3 = xmmword_25F5E9D10;
    sub_25F571820(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_25F5E3494() && __OFSUB__(v6, sub_25F5E34C4()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_25F5E34D4();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_25F5E3474();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_25F5AE494(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_25F571820(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_25F5E9D10;
    sub_25F571820(0, 0xC000000000000000);
    sub_25F5E3564();
    result = sub_25F5AE494(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_25F5AE394@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_25F5AEA78(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_25F5AEBD0(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_25F5AEC4C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_25F5AE428(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_25F5AE494(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_25F5E3494();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_25F5E34C4();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_25F5E34B4();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_25F5AE548(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_25F5E40F4();
      sub_25F5AED80(&qword_27FD9E338, MEMORY[0x277CC5540]);
      result = sub_25F5E4094();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_25F5AE728(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25F5AE728(uint64_t a1, uint64_t a2)
{
  result = sub_25F5E3494();
  if (!result || (result = sub_25F5E34C4(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_25F5E34B4();
      sub_25F5E40F4();
      sub_25F5AED80(&qword_27FD9E338, MEMORY[0x277CC5540]);
      return sub_25F5E4094();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25F5AE808@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_25F5E4964();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
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

uint64_t sub_25F5AE858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_25F5E3494();
  v11 = result;
  if (result)
  {
    result = sub_25F5E34C4();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_25F5E34B4();
  sub_25F5ADB68(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_25F5AE910(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_25F5717CC(a3, a4);
          return sub_25F5ADD98(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_25F5AEA78(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25F5AEB30(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_25F5E34D4();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_25F5E34A4();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_25F5E3594();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_25F5AEBD0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_25F5E34D4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_25F5E3484();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_25F5E3594();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_25F5AEC4C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_25F5E34D4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_25F5E3484();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_25F5AECD0(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E350, &qword_25F5E9D20);
  v10 = sub_25F5AEDC8();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1Tm(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_25F5AE394(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v5;
}

uint64_t sub_25F5AED80(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25F5AEDC8()
{
  result = qword_27FD9E358;
  if (!qword_27FD9E358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD9E350, &qword_25F5E9D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E358);
  }

  return result;
}

uint64_t sub_25F5AEE2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E368, &unk_25F5E9D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_25F5AEE94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_25F5AE428(sub_25F5AEF10, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_25F5AEEFC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25F571820(a1, a2);
  }

  return a1;
}

uint64_t ExtractedItem.init(itemId:text:date:metadata:userInterfaceLanguage:userSetRegionFormat:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v55 = a8;
  v56 = a6;
  v63 = a5;
  v61 = a3;
  v57 = a2;
  v14 = a10;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE00, &unk_25F5E9D40);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v54 = &v52 - v18;
  v19 = sub_25F5E3774();
  v53 = *(v19 - 8);
  v20 = *(v53 + 64);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE08, &unk_25F5E7230);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8, v26);
  v28 = &v52 - v27;
  v29 = sub_25F5E3794();
  v59 = *(v29 - 8);
  v60 = v29;
  v30 = *(v59 + 64);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v52 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for ExtractedItem(0);
  *(a9 + v34[6]) = 0;
  v58 = sub_25F571FC4(MEMORY[0x277D84F90]);
  sub_25F5E3754();
  v62 = a1;
  v35 = a1;
  v36 = v56;
  sub_25F573B94(v35, a9, &qword_27FD9DE10, &unk_25F5E7240);
  v37 = (a9 + v34[5]);
  v38 = v61;
  *v37 = v57;
  v37[1] = v38;
  v39 = a9 + v34[7];
  v61 = a4;
  sub_25F573B94(a4, v39, &unk_27FD9E500, &unk_25F5EA410);
  if (!a7)
  {
    v57 = a10;
    sub_25F5E3784();
    sub_25F5E3764();
    (*(v53 + 8))(v23, v19);
    v40 = sub_25F5E3704();
    v41 = *(v40 - 8);
    if ((*(v41 + 48))(v28, 1, v40) == 1)
    {
      sub_25F57C148(v28, &qword_27FD9DE08, &unk_25F5E7230);
      v36 = 0;
      a7 = 0;
    }

    else
    {
      v36 = sub_25F5E36F4();
      a7 = v42;
      (*(v41 + 8))(v28, v40);
    }

    v14 = v57;
  }

  v43 = (a9 + v34[8]);
  *v43 = v36;
  v43[1] = a7;
  if (v14)
  {
    sub_25F57C148(v61, &unk_27FD9E500, &unk_25F5EA410);
    sub_25F57C148(v62, &qword_27FD9DE10, &unk_25F5E7240);
    (*(v59 + 8))(v33, v60);

    v45 = v55;
  }

  else
  {
    v46 = v54;
    sub_25F5E3744();
    v47 = sub_25F5E3734();
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(v46, 1, v47) == 1)
    {
      sub_25F57C148(v61, &unk_27FD9E500, &unk_25F5EA410);
      sub_25F57C148(v62, &qword_27FD9DE10, &unk_25F5E7240);
      (*(v59 + 8))(v33, v60);
      sub_25F57C148(v46, &qword_27FD9DE00, &unk_25F5E9D40);

      v45 = 0;
      v14 = 0;
    }

    else
    {
      v45 = sub_25F5E36F4();
      v14 = v49;
      sub_25F57C148(v61, &unk_27FD9E500, &unk_25F5EA410);
      sub_25F57C148(v62, &qword_27FD9DE10, &unk_25F5E7240);
      (*(v59 + 8))(v33, v60);
      (*(v48 + 8))(v46, v47);
    }
  }

  v50 = v34[10];
  v51 = (a9 + v34[9]);
  *v51 = v45;
  v51[1] = v14;
  *(a9 + v50) = v63;
  return result;
}

uint64_t ExtractedMessage.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F5E3694();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ExtractedMessage.receiver.getter()
{
  v1 = (v0 + *(type metadata accessor for ExtractedMessage(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ExtractedMessage.subject.getter()
{
  v1 = (v0 + *(type metadata accessor for ExtractedMessage(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ExtractedMessage.body.getter()
{
  v1 = (v0 + *(type metadata accessor for ExtractedMessage(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ExtractedMessage.autoSubmitted.getter()
{
  v1 = (v0 + *(type metadata accessor for ExtractedMessage(0) + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ExtractedMessage.metadata.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExtractedMessage(0) + 44));
}

uint64_t ExtractedMessage.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ExtractedMessage(0) + 44);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

int *ExtractedMessage.init(date:sender:receiver:subject:body:conversationId:autoSubmitted:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  sub_25F571FC4(MEMORY[0x277D84F90]);
  v21 = sub_25F5E3694();
  (*(*(v21 - 8) + 32))(a9, a1, v21);

  result = type metadata accessor for ExtractedMessage(0);
  v23 = (a9 + result[5]);
  *v23 = a2;
  v23[1] = a3;
  v24 = (a9 + result[6]);
  *v24 = a4;
  v24[1] = a5;
  v25 = (a9 + result[7]);
  *v25 = a6;
  v25[1] = a7;
  v26 = (a9 + result[8]);
  *v26 = a8;
  v26[1] = a10;
  if (a12)
  {
    v27 = 0;
  }

  else
  {
    v27 = a11;
  }

  v28 = result[11];
  *(a9 + result[9]) = v27;
  v29 = (a9 + result[10]);
  *v29 = a13;
  v29[1] = a14;
  *(a9 + v28) = a15;
  return result;
}

uint64_t sub_25F5AF828()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 0x6D6275536F747561;
  if (v1 != 6)
  {
    v3 = 0x617461646174656DLL;
  }

  v4 = 2036625250;
  if (v1 != 4)
  {
    v4 = 0x61737265766E6F63;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x7265766965636572;
  if (v1 != 2)
  {
    v5 = 0x7463656A627573;
  }

  if (*v0)
  {
    v2 = 0x7265646E6573;
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

uint64_t sub_25F5AF928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F5B21D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F5AF95C(uint64_t a1)
{
  v2 = sub_25F5B10E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F5AF998(uint64_t a1)
{
  v2 = sub_25F5B10E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExtractedMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v4 = sub_25F5E3694();
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v45 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E370, &qword_25F5E9D50);
  v44 = *(v47 - 8);
  v8 = *(v44 + 64);
  MEMORY[0x28223BE20](v47, v9);
  v11 = &v40 - v10;
  v12 = type metadata accessor for ExtractedMessage(0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_25F571FC4(MEMORY[0x277D84F90]);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F5B10E0();
  v46 = v11;
  sub_25F5E4C74();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v18 = v44;
    v41 = v16;
    LOBYTE(v50) = 0;
    sub_25F5B13A0(&qword_27FD9E380, MEMORY[0x277CC9578]);
    v19 = v45;
    sub_25F5E4AD4();
    v20 = v41;
    (*(v43 + 32))(v41, v19, v4);
    LOBYTE(v50) = 1;
    v21 = sub_25F5E4A94();
    v40 = v4;
    v22 = &v20[v12[5]];
    *v22 = v21;
    v22[1] = v23;
    LOBYTE(v50) = 2;
    v45 = 0;
    v24 = sub_25F5E4A94();
    v25 = &v20[v12[6]];
    *v25 = v24;
    v25[1] = v26;
    LOBYTE(v50) = 3;
    v27 = sub_25F5E4A94();
    v28 = &v20[v12[7]];
    *v28 = v27;
    v28[1] = v29;
    LOBYTE(v50) = 4;
    v30 = sub_25F5E4A94();
    v31 = &v20[v12[8]];
    *v31 = v30;
    v31[1] = v32;
    LOBYTE(v50) = 5;
    *&v20[v12[9]] = sub_25F5E4AF4();
    LOBYTE(v50) = 6;
    v33 = sub_25F5E4A44();
    v34 = &v20[v12[10]];
    *v34 = v33;
    v34[1] = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E388, &qword_25F5E9D58);
    v49 = 7;
    sub_25F5B1134();
    sub_25F5E4AD4();
    v36 = v12[11];
    (*(v18 + 8))(v46, v47);

    v38 = v41;
    v37 = v42;
    *&v41[v36] = v50;
    sub_25F5B143C(v38, v37, type metadata accessor for ExtractedMessage);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_25F5B14A4(v38, type metadata accessor for ExtractedMessage);
  }
}

uint64_t ExtractedConversation.conversationText.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ExtractedConversation.metadata.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t ExtractedConversation.init(conversationId:count:messages:conversationText:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  sub_25F571FC4(MEMORY[0x277D84F90]);

  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_25F5B0100()
{
  v1 = *v0;
  v2 = 0x61737265766E6F63;
  v3 = 0x736567617373656DLL;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x617461646174656DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746E756F63;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25F5B01A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F5B2470(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F5B01D0(uint64_t a1)
{
  v2 = sub_25F5B1298();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F5B020C(uint64_t a1)
{
  v2 = sub_25F5B1298();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExtractedConversation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E3A8, &qword_25F5E9D68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v20 - v9;
  v24 = sub_25F571FC4(MEMORY[0x277D84F90]);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F5B1298();
  sub_25F5E4C74();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    LOBYTE(v26) = 0;
    v12 = sub_25F5E4AF4();
    LOBYTE(v26) = 1;
    v23 = sub_25F5E4AC4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E3B8, &qword_25F5E9D70);
    v25 = 2;
    sub_25F5B12EC();
    sub_25F5E4AD4();
    v14 = v26;
    LOBYTE(v26) = 3;
    v21 = sub_25F5E4A94();
    v22 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E388, &qword_25F5E9D58);
    v25 = 4;
    sub_25F5B1134();
    sub_25F5E4AD4();
    (*(v6 + 8))(v10, v5);

    v16 = v26;
    v18 = v22;
    v17 = v23;
    *a2 = v12;
    a2[1] = v17;
    v19 = v21;
    a2[2] = v14;
    a2[3] = v19;
    a2[4] = v18;
    a2[5] = v16;

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

uint64_t sub_25F5B05D4(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t ExtractedItem.tags.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExtractedItem(0) + 24));
}

uint64_t ExtractedItem.tags.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ExtractedItem(0) + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ExtractedItem.userInterfaceLanguage.getter()
{
  v1 = (v0 + *(type metadata accessor for ExtractedItem(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ExtractedItem.userSetRegionFormat.getter()
{
  v1 = (v0 + *(type metadata accessor for ExtractedItem(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ExtractedItem.metadata.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExtractedItem(0) + 40));
}

uint64_t ExtractedItem.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ExtractedItem(0) + 40);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

unint64_t sub_25F5B085C()
{
  v1 = *v0;
  v2 = 0x64496D657469;
  v3 = 0x617461646174656DLL;
  if (v1 == 5)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0xD000000000000015;
  if (v1 == 3)
  {
    v4 = 1702125924;
  }

  if (*v0 > 4u)
  {
    v4 = v3;
  }

  v5 = 1954047348;
  if (v1 != 1)
  {
    v5 = 1936154996;
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
    return v4;
  }
}

uint64_t sub_25F5B0920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F5B262C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F5B0948(uint64_t a1)
{
  v2 = sub_25F5B13E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F5B0984(uint64_t a1)
{
  v2 = sub_25F5B13E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExtractedItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE10, &unk_25F5E7240);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E3D0, &unk_25F5E9D78);
  v43 = *(v13 - 8);
  v44 = v13;
  v14 = *(v43 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v41 - v16;
  v18 = type metadata accessor for ExtractedItem(0);
  v19 = *(*(v18 - 1) + 64);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_25F571FC4(MEMORY[0x277D84F90]);
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F5B13E8();
  v45 = v17;
  v24 = v46;
  sub_25F5E4C74();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v46 = v7;
    v25 = v43;
    sub_25F5E36D4();
    LOBYTE(v49) = 0;
    sub_25F5B13A0(&qword_27FD9E3E0, MEMORY[0x277CC95F0]);
    v26 = v44;
    sub_25F5E4A84();
    sub_25F57B86C(v12, v22, &qword_27FD9DE10, &unk_25F5E7240);
    LOBYTE(v49) = 1;
    v27 = sub_25F5E4A94();
    v28 = &v22[v18[5]];
    *v28 = v27;
    v28[1] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB58, &qword_25F5E5F50);
    v48 = 2;
    sub_25F574164();
    sub_25F5E4A84();
    v30 = v25;
    v31 = v18[6];
    v41 = v49;
    *&v22[v31] = v49;
    sub_25F5E3694();
    LOBYTE(v49) = 3;
    sub_25F5B13A0(&qword_27FD9E380, MEMORY[0x277CC9578]);
    v32 = v46;
    sub_25F5E4A84();
    sub_25F57B86C(v32, &v22[v18[7]], &unk_27FD9E500, &unk_25F5EA410);
    LOBYTE(v49) = 4;
    v33 = sub_25F5E4A44();
    v34 = &v22[v18[8]];
    *v34 = v33;
    v34[1] = v35;
    LOBYTE(v49) = 5;
    v36 = sub_25F5E4A44();
    v37 = &v22[v18[9]];
    *v37 = v36;
    v37[1] = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E388, &qword_25F5E9D58);
    v48 = 6;
    sub_25F5B1134();
    sub_25F5E4AD4();
    v39 = v18[10];
    (*(v30 + 8))(v45, v26);

    *&v22[v39] = v49;
    sub_25F5B143C(v22, v42, type metadata accessor for ExtractedItem);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_25F5B14A4(v22, type metadata accessor for ExtractedItem);
  }
}

uint64_t sub_25F5B10A8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_25F5B10E0()
{
  result = qword_27FD9E378;
  if (!qword_27FD9E378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E378);
  }

  return result;
}

unint64_t sub_25F5B1134()
{
  result = qword_27FD9E390;
  if (!qword_27FD9E390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD9E388, &qword_25F5E9D58);
    sub_25F5B11C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E390);
  }

  return result;
}

unint64_t sub_25F5B11C0()
{
  result = qword_27FD9E398;
  if (!qword_27FD9E398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FD9E540, &qword_25F5E9D60);
    sub_25F5B1244();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E398);
  }

  return result;
}

unint64_t sub_25F5B1244()
{
  result = qword_27FD9E3A0;
  if (!qword_27FD9E3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E3A0);
  }

  return result;
}

unint64_t sub_25F5B1298()
{
  result = qword_27FD9E3B0;
  if (!qword_27FD9E3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E3B0);
  }

  return result;
}

unint64_t sub_25F5B12EC()
{
  result = qword_27FD9E3C0;
  if (!qword_27FD9E3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD9E3B8, &qword_25F5E9D70);
    sub_25F5B13A0(&qword_27FD9E3C8, type metadata accessor for ExtractedMessage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E3C0);
  }

  return result;
}

uint64_t sub_25F5B13A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25F5B13E8()
{
  result = qword_27FD9E3D8;
  if (!qword_27FD9E3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E3D8);
  }

  return result;
}

uint64_t sub_25F5B143C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F5B14A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F5B1518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F5E3694();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25F5B15EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25F5E3694();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_25F5B16A8()
{
  sub_25F5E3694();
  if (v0 <= 0x3F)
  {
    sub_25F5B1760();
    if (v1 <= 0x3F)
    {
      sub_25F5B17B0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25F5B1760()
{
  if (!qword_27FD9E620)
  {
    v0 = sub_25F5E47F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD9E620);
    }
  }
}

void sub_25F5B17B0()
{
  if (!qword_27FD9E3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FD9E540, &qword_25F5E9D60);
    v0 = sub_25F5E4324();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD9E3F8);
    }
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_25F5B1838(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F5B1880(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_25F5B18F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE10, &unk_25F5E7240);
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_25F5B1A44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE10, &unk_25F5E7240);
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_25F5B1B84()
{
  sub_25F5B1CF4(319, &qword_27FD9E410, MEMORY[0x277CC95F0]);
  if (v0 <= 0x3F)
  {
    sub_25F5B1C90();
    if (v1 <= 0x3F)
    {
      sub_25F5B1CF4(319, &qword_27FD9E420, MEMORY[0x277CC9578]);
      if (v2 <= 0x3F)
      {
        sub_25F5B1760();
        if (v3 <= 0x3F)
        {
          sub_25F5B17B0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_25F5B1C90()
{
  if (!qword_27FD9E418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD9DB58, &qword_25F5E5F50);
    v0 = sub_25F5E47F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD9E418);
    }
  }
}

void sub_25F5B1CF4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25F5E47F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ExtractedMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ExtractedMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25F5B1EBC()
{
  result = qword_27FD9E428;
  if (!qword_27FD9E428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E428);
  }

  return result;
}

unint64_t sub_25F5B1F14()
{
  result = qword_27FD9E430;
  if (!qword_27FD9E430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E430);
  }

  return result;
}

unint64_t sub_25F5B1F6C()
{
  result = qword_27FD9E438;
  if (!qword_27FD9E438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E438);
  }

  return result;
}

unint64_t sub_25F5B1FC4()
{
  result = qword_27FD9E440;
  if (!qword_27FD9E440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E440);
  }

  return result;
}

unint64_t sub_25F5B201C()
{
  result = qword_27FD9E448;
  if (!qword_27FD9E448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E448);
  }

  return result;
}

unint64_t sub_25F5B2074()
{
  result = qword_27FD9E450;
  if (!qword_27FD9E450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E450);
  }

  return result;
}

unint64_t sub_25F5B20CC()
{
  result = qword_27FD9E458;
  if (!qword_27FD9E458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E458);
  }

  return result;
}

unint64_t sub_25F5B2124()
{
  result = qword_27FD9E460;
  if (!qword_27FD9E460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E460);
  }

  return result;
}

unint64_t sub_25F5B217C()
{
  result = qword_27FD9E468;
  if (!qword_27FD9E468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E468);
  }

  return result;
}

uint64_t sub_25F5B21D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265646E6573 && a2 == 0xE600000000000000 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265766965636572 && a2 == 0xE800000000000000 || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7463656A627573 && a2 == 0xE700000000000000 || (sub_25F5E4B84() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_25F5E4B84() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61737265766E6F63 && a2 == 0xEE0064496E6F6974 || (sub_25F5E4B84() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D6275536F747561 && a2 == 0xED00006465747469 || (sub_25F5E4B84() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_25F5E4B84();

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

uint64_t sub_25F5B2470(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61737265766E6F63 && a2 == 0xEE0064496E6F6974;
  if (v4 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E756F63 && a2 == 0xE500000000000000 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xE800000000000000 || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025F5EC6E0 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_25F5E4B84();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_25F5B262C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496D657469 && a2 == 0xE600000000000000;
  if (v4 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1936154996 && a2 == 0xE400000000000000 || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_25F5E4B84() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025F5EC1A0 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x800000025F5EC1C0 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_25F5E4B84();

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

uint64_t sub_25F5B2890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 112);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_25F5B296C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 112) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for EmailExtractor()
{
  result = qword_27FD9E470;
  if (!qword_27FD9E470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25F5B2A68()
{
  sub_25F5B2AE4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_25F5B2AE4()
{
  if (!qword_27FD9E420)
  {
    sub_25F5E3694();
    v0 = sub_25F5E47F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD9E420);
    }
  }
}

uint64_t sub_25F5B2B3C(char a1, char a2)
{
  if (qword_25F5EA278[a1] == qword_25F5EA278[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_25F5E4B84();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_25F5B2BA4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x7375656870726F4DLL;
    }

    else
    {
      v5 = 0x676E6967676154;
    }

    if (v2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v3 = 0x6E65476567616D49;
    v4 = 0xEF6E6F6974617265;
    if (a1 != 3)
    {
      v3 = 0xD000000000000014;
      v4 = 0x800000025F5EC0C0;
    }

    if (a1 == 2)
    {
      v5 = 0x706D6F4374786554;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = 0xEE006E6F6974656CLL;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x7375656870726F4DLL;
    }

    else
    {
      v11 = 0x676E6967676154;
    }

    if (a2)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x6E65476567616D49;
    v8 = 0x800000025F5EC0C0;
    if (a2 == 3)
    {
      v8 = 0xEF6E6F6974617265;
    }

    else
    {
      v7 = 0xD000000000000014;
    }

    if (a2 == 2)
    {
      v9 = 0x706D6F4374786554;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xEE006E6F6974656CLL;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_25F5E4B84();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_25F5B2D60(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xEE006574616C706DLL;
  v4 = 0x694674706D6F7250;
  if (a1 == 2)
  {
    v4 = 0x655474706D6F7250;
  }

  else
  {
    v3 = 0xEE0068746150656CLL;
  }

  v5 = 0xD000000000000010;
  v6 = 0x800000025F5EBFB0;
  if (!a1)
  {
    v5 = 0x72506D6574737953;
    v6 = 0xEC00000074706D6FLL;
  }

  if (a1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x655474706D6F7250;
    }

    else
    {
      v11 = 0x694674706D6F7250;
    }

    if (a2 == 2)
    {
      v10 = 0xEE006574616C706DLL;
    }

    else
    {
      v10 = 0xEE0068746150656CLL;
    }

    if (v7 != v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000010;
    }

    else
    {
      v9 = 0x72506D6574737953;
    }

    if (a2)
    {
      v10 = 0x800000025F5EBFB0;
    }

    else
    {
      v10 = 0xEC00000074706D6FLL;
    }

    if (v7 != v9)
    {
      goto LABEL_30;
    }
  }

  if (v8 != v10)
  {
LABEL_30:
    v12 = sub_25F5E4B84();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

uint64_t sub_25F5B2EDC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE90000000000006ELL;
  v3 = 0x6F6974616D696E61;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x686374656B73;
    }

    else
    {
      v5 = 0x696A6F6D65;
    }

    if (v4 == 2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x61727473756C6C69;
    }

    else
    {
      v5 = 0x6F6974616D696E61;
    }

    if (v4)
    {
      v6 = 0xEC0000006E6F6974;
    }

    else
    {
      v6 = 0xE90000000000006ELL;
    }
  }

  v7 = 0xE600000000000000;
  v8 = 0x686374656B73;
  if (a2 != 2)
  {
    v8 = 0x696A6F6D65;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v3 = 0x61727473756C6C69;
    v2 = 0xEC0000006E6F6974;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F5E4B84();
  }

  return v11 & 1;
}

uint64_t sub_25F5B3020(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C69616D45;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 7564627;
    }

    else
    {
      v5 = 0x6C69616D45;
    }

    if (v3)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x50696A6F6D6E6547;
    v4 = 0xED000074706D6F72;
  }

  else if (a1 == 3)
  {
    v4 = 0xE800000000000000;
    v5 = 0x7375656870726F4DLL;
  }

  else
  {
    v4 = 0xE500000000000000;
    v5 = 0x656D6F6942;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE500000000000000;
    v7 = 0xE300000000000000;
    v8 = 7564627;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x50696A6F6D6E6547;
    v6 = 0xED000074706D6F72;
    v7 = 0xE800000000000000;
    v8 = 0x7375656870726F4DLL;
    if (a2 != 3)
    {
      v8 = 0x656D6F6942;
      v7 = 0xE500000000000000;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v5 == v10 && v4 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_25F5E4B84();
  }

  return v12 & 1;
}

uint64_t sub_25F5B3198(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE00, &unk_25F5E9D40) - 8) + 64) + 15;
  v2[34] = swift_task_alloc();
  v4 = sub_25F5E3774();
  v2[35] = v4;
  v5 = *(v4 - 8);
  v2[36] = v5;
  v6 = *(v5 + 64) + 15;
  v2[37] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE08, &unk_25F5E7230) - 8) + 64) + 15;
  v2[38] = swift_task_alloc();
  v8 = sub_25F5E3794();
  v2[39] = v8;
  v9 = *(v8 - 8);
  v2[40] = v9;
  v10 = *(v9 + 64) + 15;
  v2[41] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE10, &unk_25F5E7240) - 8) + 64) + 15;
  v2[42] = swift_task_alloc();
  v12 = type metadata accessor for ExtractedItem(0);
  v2[43] = v12;
  v13 = *(v12 - 8);
  v2[44] = v13;
  v14 = *(v13 + 64) + 15;
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v15 = sub_25F5E3694();
  v2[47] = v15;
  v16 = *(v15 - 8);
  v2[48] = v16;
  v17 = *(v16 + 64) + 15;
  v2[49] = swift_task_alloc();
  v18 = type metadata accessor for ExtractedMessage(0);
  v2[50] = v18;
  v19 = *(v18 - 8);
  v2[51] = v19;
  v20 = *(v19 + 64) + 15;
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v21 = sub_25F5E46B4();
  v2[54] = v21;
  v22 = *(v21 - 8);
  v2[55] = v22;
  v23 = *(v22 + 64) + 15;
  v2[56] = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E480, &qword_25F5EA270) - 8) + 64) + 15;
  v2[57] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410) - 8) + 64) + 15;
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v26 = type metadata accessor for MessageExtractor();
  v2[62] = v26;
  v27 = *(*(v26 - 8) + 64) + 15;
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F5B35C0, 0, 0);
}

uint64_t sub_25F5B35C0()
{
  v1 = 0;
  v2 = v0[33];
  v3 = *(v2 + 136);
  v76 = *(v2 + 42) & 1;
  v77 = *(v2 + 129) & 1;
  if (v77 && *(v2 + 144))
  {
    sub_25F5E4024();
    v1 = sub_25F5E4014();
  }

  v0[66] = v1;
  v4 = v0[64];
  v5 = v0[61];
  v6 = v0[62];
  v7 = v0[33];
  v73 = *v7;
  v8 = *(v7 + 3);
  v9 = *(v7 + 4);
  v10 = type metadata accessor for EmailExtractor();
  sub_25F573B94(v7 + *(v10 + 20), v5, &unk_27FD9E500, &unk_25F5EA410);
  v11 = *(v7 + 14);
  v71 = *(v7 + 13);
  v12 = v7[15];
  v69 = *(v7 + 128);
  *(v4 + v6[13]) = 0;
  *(v4 + v6[14]) = MEMORY[0x277D84F90];
  v67 = v6[15];
  *(v4 + v67) = 2;
  v13 = objc_allocWithZone(MEMORY[0x277D06D78]);

  *v4 = [v13 init];
  v14 = objc_allocWithZone(MEMORY[0x277D06D60]);
  v0[22] = sub_25F5C0E14;
  v0[23] = 0;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_25F5C0E18;
  v0[21] = &block_descriptor;
  v15 = _Block_copy(v0 + 18);
  v16 = [v14 initWithBuilder_];
  _Block_release(v15);
  v17 = v0[23];

  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
LABEL_29:
    swift_once();
    goto LABEL_9;
  }

  v18 = v0[64];
  v19 = v0[61];
  v20 = v0[62];
  *(v18 + 1) = v16;
  *(v18 + 2) = 49;
  *(v18 + 3) = v8;
  *(v18 + v20[10]) = v9;
  v18[4] = v73;
  sub_25F573B94(v19, v18 + v20[9], &unk_27FD9E500, &unk_25F5EA410);
  v21 = v18 + v20[12];
  *v21 = v76;
  v21[1] = v77;
  *(v21 + 1) = v1;
  v22 = (v18 + v20[11]);
  *v22 = v71;
  v22[1] = v11;
  v23 = 30.0;
  if (!v69)
  {
    v23 = v12;
  }

  *(v18 + v20[16]) = v23;
  v0[27] = &type metadata for MailFeatureFlags;
  v0[28] = sub_25F5B6DD0();
  v24 = sub_25F5E3834();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  if ((v24 & 1) == 0)
  {
    sub_25F57C148(v0[61], &unk_27FD9E500, &unk_25F5EA410);
    goto LABEL_13;
  }

  if (qword_27FD9D8B0 != -1)
  {
    goto LABEL_29;
  }

LABEL_9:
  v25 = sub_25F5E3FB4();
  __swift_project_value_buffer(v25, qword_27FD9EA20);
  v26 = sub_25F5E3F94();
  v27 = sub_25F5E4794();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_25F56A000, v26, v27, "Mail classC data access is enabled, checking if device unlocked since boot.", v28, 2u);
    MEMORY[0x25F8E3B70](v28, -1, -1);
  }

  v29 = v0[61];

  v30 = MKBDeviceUnlockedSinceBoot();
  sub_25F57C148(v29, &unk_27FD9E500, &unk_25F5EA410);
  *(v4 + v67) = v30 == 1;
LABEL_13:
  v31 = v0[65];
  sub_25F5B6E50(v0[64], v31, type metadata accessor for MessageExtractor);
  v32 = *(v31 + v6[15]);
  if (v32 == 2)
  {
    v33 = [*v0[65] messageRepository];
    v0[67] = v33;
    v0[2] = v0;
    v0[7] = v0 + 83;
    v0[3] = sub_25F5B3E18;
    v34 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E510, &qword_25F5EA4B0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_25F5BBE00;
    v0[13] = &block_descriptor_6;
    v0[14] = v34;
    [v33 isDataAccessible_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else if (v32)
  {
    v35 = v0[65];
    v36 = v0[63];
    v37 = v0[47];
    v38 = v0[48];
    v39 = v0[32];
    v40 = *(v38 + 56);
    v0[68] = v40;
    v0[69] = (v38 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v40(v39, 1, 1, v37);
    sub_25F5B6EB8(v35, v36, type metadata accessor for MessageExtractor);
    *(v0 + 35) = 0u;
    *(v0 + 36) = 0u;
    *(v0 + 37) = 0u;
    v0[76] = 0;
    v0[79] = MEMORY[0x277D84F90];
    *(v0 + 77) = 0u;
    v41 = swift_task_alloc();
    v0[80] = v41;
    *v41 = v0;
    v41[1] = sub_25F5B426C;
    v42 = v0[63];
    v43 = v0[57];

    return MessageExtractor.next()(v43);
  }

  else
  {
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v44 = sub_25F5E3FB4();
    __swift_project_value_buffer(v44, qword_27FD9EA20);
    v45 = sub_25F5E3F94();
    v46 = sub_25F5E4794();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_25F56A000, v45, v46, "Email interface: data not accessible.", v47, 2u);
      MEMORY[0x25F8E3B70](v47, -1, -1);
    }

    v48 = v0[66];
    v49 = v0[65];

    sub_25F5A31D0();
    swift_allocError();
    *v50 = 3;
    swift_willThrow();

    sub_25F5B6F20(v49, type metadata accessor for MessageExtractor);
    v51 = v0[65];
    v53 = v0[63];
    v52 = v0[64];
    v55 = v0[60];
    v54 = v0[61];
    v57 = v0[58];
    v56 = v0[59];
    v59 = v0[56];
    v58 = v0[57];
    v60 = v0[53];
    v63 = v0[52];
    v64 = v0[49];
    v65 = v0[46];
    v66 = v0[45];
    v68 = v0[42];
    v70 = v0[41];
    v72 = v0[38];
    v74 = v0[37];
    v75 = v0[34];

    v61 = v0[1];

    return v61();
  }
}

uint64_t sub_25F5B3E18()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25F5B3EF8, 0, 0);
}

uint64_t sub_25F5B3EF8()
{
  v1 = *(v0 + 664);

  if (v1 == 1)
  {
    v2 = *(v0 + 520);
    v3 = *(v0 + 504);
    v4 = *(v0 + 376);
    v5 = *(v0 + 384);
    v6 = *(v0 + 256);
    v7 = *(v5 + 56);
    *(v0 + 544) = v7;
    *(v0 + 552) = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v7(v6, 1, 1, v4);
    sub_25F5B6EB8(v2, v3, type metadata accessor for MessageExtractor);
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0u;
    *(v0 + 592) = 0u;
    *(v0 + 608) = 0;
    *(v0 + 632) = MEMORY[0x277D84F90];
    *(v0 + 616) = 0u;
    v8 = swift_task_alloc();
    *(v0 + 640) = v8;
    *v8 = v0;
    v8[1] = sub_25F5B426C;
    v9 = *(v0 + 504);
    v10 = *(v0 + 456);

    return MessageExtractor.next()(v10);
  }

  else
  {
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v12 = sub_25F5E3FB4();
    __swift_project_value_buffer(v12, qword_27FD9EA20);
    v13 = sub_25F5E3F94();
    v14 = sub_25F5E4794();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_25F56A000, v13, v14, "Email interface: data not accessible.", v15, 2u);
      MEMORY[0x25F8E3B70](v15, -1, -1);
    }

    v16 = *(v0 + 528);
    v17 = *(v0 + 520);

    sub_25F5A31D0();
    swift_allocError();
    *v18 = 3;
    swift_willThrow();

    sub_25F5B6F20(v17, type metadata accessor for MessageExtractor);
    v19 = *(v0 + 520);
    v21 = *(v0 + 504);
    v20 = *(v0 + 512);
    v23 = *(v0 + 480);
    v22 = *(v0 + 488);
    v25 = *(v0 + 464);
    v24 = *(v0 + 472);
    v27 = *(v0 + 448);
    v26 = *(v0 + 456);
    v28 = *(v0 + 424);
    v30 = *(v0 + 416);
    v31 = *(v0 + 392);
    v32 = *(v0 + 368);
    v33 = *(v0 + 360);
    v34 = *(v0 + 336);
    v35 = *(v0 + 328);
    v36 = *(v0 + 304);
    v37 = *(v0 + 296);
    v38 = *(v0 + 272);

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_25F5B426C()
{
  v2 = *(*v1 + 640);
  v5 = *v1;
  *(*v1 + 648) = v0;

  if (v0)
  {
    v3 = sub_25F5B5820;
  }

  else
  {
    v3 = sub_25F5B4380;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F5B4380()
{
  v1 = v0[57];
  v2 = v0[50];
  v3 = v0;
  v232 = v0;
  if ((*(v0[51] + 48))(v1, 1, v2) != 1)
  {
    v29 = v0[53];
    sub_25F5B6E50(v1, v29, type metadata accessor for ExtractedMessage);
    v30 = (v29 + *(v2 + 32));
    v32 = *v30;
    v31 = v30[1];
    v33 = v32 & 0xFFFFFFFFFFFFLL;
    if ((v31 & 0x2000000000000000) != 0)
    {
      v34 = HIBYTE(v31) & 0xF;
    }

    else
    {
      v34 = v33;
    }

    if (!v34)
    {
      v67 = v0[78];
      v47 = v67 + 1;
      if (!__OFADD__(v67, 1))
      {
        sub_25F5B6F20(v0[53], type metadata accessor for ExtractedMessage);
        v29 = v0[79];
        v46 = v47;
LABEL_109:
        v3[79] = v29;
        v3[78] = v46;
        v3[77] = v47;
        v197 = swift_task_alloc();
        v3[80] = v197;
        *v197 = v3;
        v197[1] = sub_25F5B426C;
        v198 = v3[63];
        v199 = v3[57];

        return MessageExtractor.next()(v199);
      }

      __break(1u);
      goto LABEL_117;
    }

    v35 = v0[33];
    v36 = *(v35 + 40);
    if (v36 == 2 || (v36 & 1) == 0)
    {
      goto LABEL_88;
    }

    v37 = v0[53];
    v38 = (v37 + *(v0[50] + 40));
    if (v38[1])
    {
      v39 = *v38;
      if (sub_25F5E4464() == 0x6E65672D6F747561 && v40 == 0xEE00646574617265)
      {
      }

      else
      {
        v42 = sub_25F5E4B84();

        if ((v42 & 1) == 0)
        {
          v37 = v0[53];
          goto LABEL_36;
        }
      }

      v162 = v0[76];
      v50 = v162 + 1;
      if (!__OFADD__(v162, 1))
      {
        sub_25F5B6F20(v3[53], type metadata accessor for ExtractedMessage);
        v29 = v3[79];
        v46 = v3[78];
        v48 = v50;
        v47 = v3[77];
LABEL_106:
        v3[76] = v48;
        v3[75] = v50;
        goto LABEL_109;
      }

      goto LABEL_119;
    }

LABEL_36:
    result = filterBySender(_:)(v37);
    if (result)
    {
      v44 = v0[74];
      v45 = v44 + 1;
      if (!__OFADD__(v44, 1))
      {
        sub_25F5B6F20(v0[53], type metadata accessor for ExtractedMessage);
        v29 = v0[79];
        v46 = v0[78];
        v47 = v0[77];
        v48 = v0[76];
        v49 = v45;
        v50 = v0[75];
LABEL_105:
        v3[74] = v49;
        v3[73] = v45;
        goto LABEL_106;
      }

      goto LABEL_120;
    }

    v35 = v0[33];
LABEL_88:
    v163 = *(v35 + 64);
    if (v163 < 2)
    {
      goto LABEL_91;
    }

    result = sub_25F5B5FA4(v0[53], v163);
    if (result)
    {
      v35 = v0[33];
      v163 = *(v35 + 64);
LABEL_91:
      if (v163 == 1 || (*(v35 + 80) & 1) != 0 || (*(v35 + 96) & 1) != 0 || (result = sub_25F5B674C(v0[53], *(v35 + 72), *(v35 + 88)), (result & 1) != 0))
      {
        v164 = v0[79];
        sub_25F5B6EB8(v0[53], v0[52], type metadata accessor for ExtractedMessage);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v0[79];
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_96:
          v167 = v29[2];
          v166 = v29[3];
          if (v167 >= v166 >> 1)
          {
            v29 = sub_25F57887C(v166 > 1, v167 + 1, 1, v29);
          }

          v168 = v0[60];
          v170 = v3[51];
          v169 = v3[52];
          v171 = v3[47];
          v172 = v3[48];
          v173 = v3[32];
          v29[2] = v167 + 1;
          sub_25F5B6E50(v169, v29 + ((*(v170 + 80) + 32) & ~*(v170 + 80)) + *(v170 + 72) * v167, type metadata accessor for ExtractedMessage);
          sub_25F573B94(v173, v168, &unk_27FD9E500, &unk_25F5EA410);
          if ((*(v172 + 48))(v168, 1, v171) == 1)
          {
            v174 = v3[69];
            v175 = v3[68];
            v176 = v3[60];
            v177 = v3[53];
            v178 = v232[48];
            v179 = v232[47];
            v180 = v232[32];
            sub_25F57C148(v180, &unk_27FD9E500, &unk_25F5EA410);
            sub_25F57C148(v176, &unk_27FD9E500, &unk_25F5EA410);
            (*(v178 + 16))(v180, v177, v179);
            sub_25F5B6F20(v177, type metadata accessor for ExtractedMessage);
            v175(v180, 0, 1, v179);
            v46 = v232[78];
            v3 = v232;
            v47 = v232[77];
          }

          else
          {
            v181 = v3[53];
            v182 = v3[32];
            v183 = *(v3[48] + 32);
            v183(v3[49], v3[60], v3[47]);
            sub_25F5B6FF0(&qword_27FD9E490, MEMORY[0x277CC9578]);
            v184 = sub_25F5E4384();
            sub_25F57C148(v182, &unk_27FD9E500, &unk_25F5EA410);
            v185 = v3[59];
            if (v184)
            {
              v186 = v3[53];
              v187 = v3[48];
              v188 = v3[47];
              (*(v187 + 8))(v3[49], v188);
              (*(v187 + 16))(v185, v186, v188);
            }

            else
            {
              v183(v3[59], v3[49], v3[47]);
            }

            v192 = v3[69];
            v193 = v3[68];
            v194 = v3[59];
            v195 = v3[47];
            v196 = v3[32];
            sub_25F5B6F20(v3[53], type metadata accessor for ExtractedMessage);
            v193(v194, 0, 1, v195);
            sub_25F5B6F80(v194, v196);
            v46 = v3[78];
            v47 = v3[77];
          }

          goto LABEL_109;
        }

LABEL_117:
        v29 = sub_25F57887C(0, v29[2] + 1, 1, v29);
        goto LABEL_96;
      }

      v200 = v0[70];
      v201 = v200 + 1;
      if (__OFADD__(v200, 1))
      {
LABEL_121:
        __break(1u);
        return result;
      }

      sub_25F5B6F20(v0[53], type metadata accessor for ExtractedMessage);
      v29 = v0[79];
      v46 = v0[78];
      v47 = v0[77];
      v48 = v0[76];
      v50 = v0[75];
      v49 = v3[74];
      v45 = v3[73];
      v191 = v3[72];
      v190 = v3[71];
      v3[70] = v201;
LABEL_104:
      v3[72] = v191;
      v3[71] = v190;
      goto LABEL_105;
    }

    v189 = v0[72];
    v190 = v189 + 1;
    if (!__OFADD__(v189, 1))
    {
      sub_25F5B6F20(v0[53], type metadata accessor for ExtractedMessage);
      v29 = v0[79];
      v46 = v0[78];
      v47 = v0[77];
      v48 = v0[76];
      v50 = v0[75];
      v49 = v3[74];
      v191 = v190;
      v45 = v3[73];
      goto LABEL_104;
    }

    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  sub_25F5B6F20(v0[63], type metadata accessor for MessageExtractor);
  if (qword_27FD9D8B0 != -1)
  {
    goto LABEL_115;
  }

  while (1)
  {
    v4 = sub_25F5E3FB4();
    __swift_project_value_buffer(v4, qword_27FD9EA20);
    v5 = sub_25F5E3F94();
    v6 = sub_25F5E4794();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = v3[77];
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = v7;
      _os_log_impl(&dword_25F56A000, v5, v6, "Filtered %ld empty body messages.", v8, 0xCu);
      MEMORY[0x25F8E3B70](v8, -1, -1);
    }

    v9 = v3[33];

    v10 = *(v9 + 40);
    if (v10 != 2 && (v10 & 1) != 0)
    {
      v11 = sub_25F5E3F94();
      v12 = sub_25F5E4794();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = v3[75];
        v14 = swift_slowAlloc();
        *v14 = 134217984;
        *(v14 + 4) = v13;
        _os_log_impl(&dword_25F56A000, v11, v12, "Filtered %ld auto-generated messages", v14, 0xCu);
        MEMORY[0x25F8E3B70](v14, -1, -1);
      }

      v15 = sub_25F5E3F94();
      v16 = sub_25F5E4794();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = v3[73];
        v18 = swift_slowAlloc();
        *v18 = 134217984;
        *(v18 + 4) = v17;
        _os_log_impl(&dword_25F56A000, v15, v16, "Filtered %ld group or no-reply apple messages", v18, 0xCu);
        MEMORY[0x25F8E3B70](v18, -1, -1);
      }
    }

    if (v3[71] >= 1)
    {
      v19 = sub_25F5E3F94();
      v20 = sub_25F5E4794();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = v3[71];
        v22 = swift_slowAlloc();
        *v22 = 134217984;
        *(v22 + 4) = v21;
        _os_log_impl(&dword_25F56A000, v19, v20, "Filtered %ld messages by week days.", v22, 0xCu);
        MEMORY[0x25F8E3B70](v22, -1, -1);
      }
    }

    if (v3[70] >= 1)
    {
      v23 = sub_25F5E3F94();
      v24 = sub_25F5E4794();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = v3[70];
        v26 = swift_slowAlloc();
        *v26 = 134217984;
        *(v26 + 4) = v25;
        _os_log_impl(&dword_25F56A000, v23, v24, "Filtered %ld messages by hours.", v26, 0xCu);
        MEMORY[0x25F8E3B70](v26, -1, -1);
      }
    }

    v27 = *(v3[33] + 41);
    if (v27 != 2 && (v27 & 1) != 0)
    {
      v28 = convertSingleMessagesToConversations(_:)(v3[79]);
      goto LABEL_58;
    }

    v51 = groupAndSortMessages(_:)(v3[79]);
    v52 = *(v51 + 16);
    v53 = 0;
    if (!v52)
    {
      break;
    }

    v54 = (v51 + 72);
    v28 = MEMORY[0x277D84F90];
    while (1)
    {
      v56 = *(v54 - 5);
      v57 = *(v54 - 3);
      v58 = *(v54 - 2);
      v59 = *(v54 - 1);
      v60 = *v54;
      if ((v10 & 1) == 0 || *(v57 + 16) > 1uLL)
      {
        v233 = *(v54 - 5);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_25F57875C(0, *(v28 + 2) + 1, 1, v28);
        }

        v62 = *(v28 + 2);
        v61 = *(v28 + 3);
        v63 = v28;
        v64 = v233;
        if (v62 >= v61 >> 1)
        {
          v66 = sub_25F57875C((v61 > 1), v62 + 1, 1, v28);
          v64 = v233;
          v63 = v66;
        }

        *(v63 + 2) = v62 + 1;
        v28 = v63;
        v65 = &v63[48 * v62];
        *(v65 + 2) = v64;
        *(v65 + 6) = v57;
        *(v65 + 7) = v58;
        *(v65 + 8) = v59;
        *(v65 + 9) = v60;
        v3 = v232;
        goto LABEL_42;
      }

      if (__OFADD__(v53++, 1))
      {
        break;
      }

LABEL_42:
      v54 += 6;
      if (!--v52)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_115:
    swift_once();
  }

  v28 = MEMORY[0x277D84F90];
LABEL_53:

  if (v10 != 2 && (v10 & 1) != 0)
  {
    v68 = v28;
    v69 = sub_25F5E3F94();
    v70 = sub_25F5E4794();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 134217984;
      *(v71 + 4) = v53;
      _os_log_impl(&dword_25F56A000, v69, v70, "Filtered %ld conversations with a single message.", v71, 0xCu);
      MEMORY[0x25F8E3B70](v71, -1, -1);
    }

    v28 = v68;
  }

LABEL_58:
  v72 = *(v28 + 2);
  if (v72)
  {
    v205 = v3[44];
    v234 = v3[43];
    v73 = v28;
    v74 = v3[40];
    v75 = v3[36];
    v236 = MEMORY[0x277D84F90];
    sub_25F571250(0, v72, 0);
    v76 = v236;
    v204 = (v75 + 8);
    v206 = (v74 + 8);
    v203 = sub_25F5E36D4();
    v202 = *(*(v203 - 8) + 56);
    v77 = v73 + 72;
    do
    {
      v226 = v72;
      v229 = v76;
      v78 = v3[69];
      v79 = v3[68];
      v80 = v3[58];
      v81 = v3[47];
      v82 = v3[45];
      v83 = v3[41];
      v84 = v3[42];
      v85 = v3[37];
      v209 = v3[38];
      v212 = v3[35];
      v86 = *(v77 - 3);
      v217 = *(v77 - 2);
      v88 = *(v77 - 1);
      v87 = *v77;
      v223 = v77;
      v202(v84, 1, 1, v203);
      v79(v80, 1, 1, v81);
      *(v82 + v234[6]) = 0;

      swift_bridgeObjectRetain_n();
      v220 = v87;
      swift_bridgeObjectRetain_n();
      sub_25F5E3754();
      sub_25F573B94(v84, v82, &qword_27FD9DE10, &unk_25F5E7240);
      v89 = (v82 + v234[5]);
      *v89 = v217;
      v89[1] = v88;
      sub_25F573B94(v80, v82 + v234[7], &unk_27FD9E500, &unk_25F5EA410);
      sub_25F5E3784();
      sub_25F5E3764();
      (*v204)(v85, v212);
      v90 = sub_25F5E3704();
      v91 = *(v90 - 8);
      v92 = (*(v91 + 48))(v209, 1, v90);
      v3 = v232;
      v93 = v232[38];
      if (v92 == 1)
      {
        sub_25F57C148(v232[38], &qword_27FD9DE08, &unk_25F5E7230);
        v94 = 0;
        v95 = 0;
      }

      else
      {
        v96 = v232[38];
        v94 = sub_25F5E36F4();
        v95 = v97;
        (*(v91 + 8))(v93, v90);
      }

      v98 = v232[41];
      v99 = v232[34];
      v100 = (v232[45] + v234[8]);
      *v100 = v94;
      v100[1] = v95;
      sub_25F5E3744();
      v101 = sub_25F5E3734();
      v102 = *(v101 - 8);
      v103 = (*(v102 + 48))(v99, 1, v101);
      v104 = v232[58];
      v105 = v232[41];
      v106 = v232[42];
      v107 = v232[39];
      v108 = v232[34];
      if (v103 == 1)
      {

        v109 = v220;

        (*v206)(v105, v107);
        sub_25F57C148(v104, &unk_27FD9E500, &unk_25F5EA410);
        sub_25F57C148(v106, &qword_27FD9DE10, &unk_25F5E7240);
        sub_25F57C148(v108, &qword_27FD9DE00, &unk_25F5E9D40);
        v110 = 0;
        v111 = 0;
      }

      else
      {
        v110 = sub_25F5E36F4();
        v111 = v112;

        (*v206)(v105, v107);
        sub_25F57C148(v104, &unk_27FD9E500, &unk_25F5EA410);
        sub_25F57C148(v106, &qword_27FD9DE10, &unk_25F5E7240);
        v113 = v101;
        v109 = v220;
        v3 = v232;
        (*(v102 + 8))(v108, v113);
      }

      v114 = v3[45];
      v115 = v3[46];
      v116 = v234[10];
      v117 = (v114 + v234[9]);
      *v117 = v110;
      v117[1] = v111;
      *(v114 + v116) = v109;
      sub_25F5B6E50(v114, v115, type metadata accessor for ExtractedItem);
      v76 = v229;
      v119 = *(v229 + 16);
      v118 = *(v229 + 24);
      if (v119 >= v118 >> 1)
      {
        sub_25F571250(v118 > 1, v119 + 1, 1);
        v76 = v229;
      }

      v120 = v3[46];
      *(v76 + 16) = v119 + 1;
      sub_25F5B6E50(v120, v76 + ((*(v205 + 80) + 32) & ~*(v205 + 80)) + *(v205 + 72) * v119, type metadata accessor for ExtractedItem);
      v77 = v223 + 6;
      v72 = v226 - 1;
    }

    while (v226 != 1);
    v121 = v3[79];
  }

  else
  {
    v122 = v3[79];

    v76 = MEMORY[0x277D84F90];
  }

  v123 = v3[33];
  if (*(v123 + 56))
  {
    v230 = v76;
    v124 = v3[66];
    sub_25F5B6F20(v3[65], type metadata accessor for MessageExtractor);

    goto LABEL_77;
  }

  v125 = *(v123 + 48);
  if (*(v76 + 16) >= v125)
  {
    v130 = v3[66];
    v131 = v3[65];
    v132 = sub_25F5C7AF4(v76, *(v123 + 48));

    sub_25F5B6F20(v131, type metadata accessor for MessageExtractor);
    v230 = v132;
LABEL_77:
    v133 = v3;
    v134 = v3[65];
    v136 = v3[63];
    v135 = v3[64];
    v139 = v3 + 60;
    v138 = v3[60];
    v137 = v139[1];
    v140 = v133[58];
    v141 = v133[59];
    v143 = v133[56];
    v142 = v133[57];
    v144 = v133[53];
    v207 = v133[52];
    v210 = v133[49];
    v213 = v133[46];
    v215 = v133[45];
    v218 = v133[42];
    v221 = v133[41];
    v224 = v133[38];
    v227 = v133[37];
    v235 = v133[34];

    v145 = v133[1];

    return v145(v230);
  }

  else
  {

    v126 = sub_25F5E3F94();
    v127 = sub_25F5E47B4();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      *v128 = 134218240;
      v129 = *(v76 + 16);

      *(v128 + 4) = v129;

      *(v128 + 12) = 2048;
      *(v128 + 14) = v125;
      _os_log_impl(&dword_25F56A000, v126, v127, "Extracted items %ld less than required sample size %ld.", v128, 0x16u);
      MEMORY[0x25F8E3B70](v128, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v146 = v3[66];
    v147 = v3[65];
    v148 = v3[32];
    sub_25F5A31D0();
    swift_allocError();
    *v149 = 7;
    swift_willThrow();

    sub_25F57C148(v148, &unk_27FD9E500, &unk_25F5EA410);
    sub_25F5B6F20(v147, type metadata accessor for MessageExtractor);
    v150 = v3[65];
    v152 = v3[63];
    v151 = v3[64];
    v153 = v3;
    v154 = v3[61];
    v155 = v153[59];
    v156 = v153[60];
    v158 = v153[57];
    v157 = v153[58];
    v159 = v153[56];
    v160 = v153[53];
    v208 = v153[52];
    v211 = v153[49];
    v214 = v153[46];
    v216 = v153[45];
    v219 = v153[42];
    v222 = v153[41];
    v225 = v153[38];
    v228 = v153[37];
    v231 = v153[34];

    v161 = v153[1];

    return v161();
  }
}

uint64_t sub_25F5B5820()
{
  v0[29] = v0[81];
  v0[82] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DEE8, &unk_25F5E7910);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_25F5B58B8, 0, 0);
}

uint64_t sub_25F5B58B8()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 648);
  v3 = *(v0 + 448);
  v4 = *(v0 + 432);
  sub_25F5B6F20(*(v0 + 504), type metadata accessor for MessageExtractor);
  *(v0 + 240) = v2;
  v5 = v2;
  if (swift_dynamicCast())
  {

    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 632);
    v7 = sub_25F5E3FB4();
    __swift_project_value_buffer(v7, qword_27FD9EA20);

    v8 = sub_25F5E3F94();
    v9 = sub_25F5E4794();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 632);
    if (v10)
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      v13 = *(v11 + 16);

      *(v12 + 4) = v13;

      _os_log_impl(&dword_25F56A000, v8, v9, "Task cancelled at extraction loop. Extracted %ld messages.", v12, 0xCu);
      MEMORY[0x25F8E3B70](v12, -1, -1);
    }

    else
    {
      v30 = *(v0 + 632);
      swift_bridgeObjectRelease_n();
    }

    v31 = *(v0 + 528);
    v32 = *(v0 + 520);
    v33 = *(v0 + 440);
    v34 = *(v0 + 448);
    v35 = *(v0 + 432);
    v36 = *(v0 + 256);
    sub_25F5A31D0();
    swift_allocError();
    *v37 = 5;
    swift_willThrow();

    sub_25F57C148(v36, &unk_27FD9E500, &unk_25F5EA410);
    sub_25F5B6F20(v32, type metadata accessor for MessageExtractor);
    (*(v33 + 8))(v34, v35);
  }

  else
  {
    v14 = *(v0 + 656);
    v15 = *(v0 + 648);
    v16 = *(v0 + 632);

    *(v0 + 248) = v15;
    v17 = v15;
    if (swift_dynamicCast())
    {

      v18 = *(v0 + 665);
      if (qword_27FD9D8B0 != -1)
      {
        swift_once();
      }

      v19 = sub_25F5E3FB4();
      __swift_project_value_buffer(v19, qword_27FD9EA20);
      v20 = sub_25F5E3F94();
      v21 = sub_25F5E47B4();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        sub_25F5A31D0();
        swift_allocError();
        *v24 = v18;
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v22 + 4) = v25;
        *v23 = v25;
        _os_log_impl(&dword_25F56A000, v20, v21, "ExtractorError at extraction loop: %@.", v22, 0xCu);
        sub_25F57C148(v23, &qword_27FD9DEF0, &qword_25F5E8550);
        MEMORY[0x25F8E3B70](v23, -1, -1);
        MEMORY[0x25F8E3B70](v22, -1, -1);
      }

      v26 = *(v0 + 528);
      v27 = *(v0 + 520);
      v28 = *(v0 + 256);

      sub_25F5A31D0();
      swift_allocError();
      *v29 = v18;
      swift_willThrow();

      sub_25F57C148(v28, &unk_27FD9E500, &unk_25F5EA410);
      sub_25F5B6F20(v27, type metadata accessor for MessageExtractor);
    }

    else
    {

      if (qword_27FD9D8B0 != -1)
      {
        swift_once();
      }

      v38 = *(v0 + 648);
      v39 = sub_25F5E3FB4();
      __swift_project_value_buffer(v39, qword_27FD9EA20);
      v40 = v38;
      v41 = sub_25F5E3F94();
      v42 = sub_25F5E47B4();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = *(v0 + 648);
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        v46 = v43;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v47;
        *v45 = v47;
        _os_log_impl(&dword_25F56A000, v41, v42, "Other Error at extraction loop: %@.", v44, 0xCu);
        sub_25F57C148(v45, &qword_27FD9DEF0, &qword_25F5E8550);
        MEMORY[0x25F8E3B70](v45, -1, -1);
        MEMORY[0x25F8E3B70](v44, -1, -1);
      }

      v48 = *(v0 + 648);
      v49 = *(v0 + 528);
      v50 = *(v0 + 520);
      v51 = *(v0 + 256);

      sub_25F5A31D0();
      swift_allocError();
      *v52 = 5;
      swift_willThrow();

      sub_25F57C148(v51, &unk_27FD9E500, &unk_25F5EA410);
      sub_25F5B6F20(v50, type metadata accessor for MessageExtractor);
    }
  }

  v53 = *(v0 + 520);
  v55 = *(v0 + 504);
  v54 = *(v0 + 512);
  v56 = *(v0 + 480);
  v57 = *(v0 + 488);
  v59 = *(v0 + 464);
  v58 = *(v0 + 472);
  v61 = *(v0 + 448);
  v60 = *(v0 + 456);
  v62 = *(v0 + 424);
  v65 = *(v0 + 416);
  v66 = *(v0 + 392);
  v67 = *(v0 + 368);
  v68 = *(v0 + 360);
  v69 = *(v0 + 336);
  v70 = *(v0 + 328);
  v71 = *(v0 + 304);
  v72 = *(v0 + 296);
  v73 = *(v0 + 272);

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_25F5B5FA4(uint64_t a1, uint64_t a2)
{
  v83 = a2;
  v81 = a1;
  v2 = type metadata accessor for ExtractedMessage(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v79 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25F5E3824();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25F5E3794();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_25F5E3804();
  v18 = *(v84 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v84, v20);
  v82 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v71 - v24;
  sub_25F5E37C4();
  v26 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_25F5E36E4();
  v27 = sub_25F5E3714();
  (*(v13 + 8))(v17, v12);
  v28 = v25;
  [v26 setLocale_];

  sub_25F5E37D4();
  v29 = sub_25F5E3814();
  v30 = *(v7 + 8);
  v75 = v11;
  v76 = v7 + 8;
  v77 = v6;
  v74 = v30;
  v30(v11, v6);
  [v26 setTimeZone_];

  v31 = sub_25F5E43C4();
  [v26 setDateFormat_];

  v32 = v81;
  v33 = sub_25F5E3624();
  v80 = v26;
  v34 = [v26 stringFromDate_];

  v35 = sub_25F5E43F4();
  v37 = v36;

  v38._countAndFlagsBits = v35;
  v38._object = v37;
  WeekDay.init(rawValue:)(v38);
  v39 = v86;
  if (v86 == 7)
  {
    (*(v18 + 8))(v28, v84);

    return 0;
  }

  else
  {
    v78 = v28;
    v41 = *(v83 + 16);
    v42 = (v83 + 32);
    do
    {
      v43 = v41;
      v44 = v41-- != 0;
      v40 = v44;
      if (!v44)
      {
        break;
      }

      if (qword_25F5EA278[*v42] == qword_25F5EA278[v39])
      {
        break;
      }

      ++v42;
    }

    while ((sub_25F5E4B84() & 1) == 0);
    v45 = v79;
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v46 = sub_25F5E3FB4();
    __swift_project_value_buffer(v46, qword_27FD9EA20);
    sub_25F5B6EB8(v32, v45, type metadata accessor for ExtractedMessage);
    (*(v18 + 16))(v82, v78, v84);

    v47 = sub_25F5E3F94();
    v48 = sub_25F5E47A4();

    LODWORD(v81) = v48;
    if (os_log_type_enabled(v47, v48))
    {
      v72 = v43 != 0;
      v49 = v18;
      v50 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v85 = v73;
      *v50 = 136316162;
      sub_25F5E3694();
      sub_25F5B6FF0(&qword_27FD9E498, MEMORY[0x277CC9578]);
      v71 = v47;
      v51 = sub_25F5E4B44();
      v53 = v52;
      sub_25F5B6F20(v45, type metadata accessor for ExtractedMessage);
      v54 = sub_25F570AF8(v51, v53, &v85);

      *(v50 + 4) = v54;
      *(v50 + 12) = 2080;
      v55 = v75;
      v56 = v82;
      sub_25F5E37D4();
      sub_25F5B6FF0(&qword_27FD9E4A0, MEMORY[0x277CC9A70]);
      v57 = v84;
      v58 = v77;
      v79 = sub_25F5E4B44();
      v60 = v59;
      v74(v55, v58);
      v61 = *(v49 + 8);
      v61(v56, v57);
      v62 = sub_25F570AF8(v79, v60, &v85);

      *(v50 + 14) = v62;
      *(v50 + 22) = 2080;
      *(v50 + 24) = sub_25F570AF8(qword_25F5EA278[v39], 0xE300000000000000, &v85);
      *(v50 + 32) = 2080;
      v63 = MEMORY[0x25F8E2CF0](v83, &type metadata for WeekDay);
      v65 = sub_25F570AF8(v63, v64, &v85);

      *(v50 + 34) = v65;
      *(v50 + 42) = 1024;
      *(v50 + 44) = v72;
      v66 = v71;
      _os_log_impl(&dword_25F56A000, v71, v81, "WeekDays filter | message date: %s, timezone: %s, local week day: %s, week days: %s, is in: %{BOOL}d", v50, 0x30u);
      v67 = v73;
      swift_arrayDestroy();
      MEMORY[0x25F8E3B70](v67, -1, -1);
      MEMORY[0x25F8E3B70](v50, -1, -1);

      v61(v78, v57);
    }

    else
    {

      v68 = *(v18 + 8);
      v69 = v84;
      v68(v82, v84);
      sub_25F5B6F20(v45, type metadata accessor for ExtractedMessage);
      v68(v78, v69);
    }
  }

  return v40;
}

uint64_t sub_25F5B674C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = a2;
  v65 = a3;
  v4 = sub_25F5E3824();
  v62 = *(v4 - 8);
  v63 = v4;
  v5 = *(v62 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v61 = &v55[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for ExtractedMessage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v55[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_25F5E37E4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v55[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_25F5E3804();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = &v55[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v55[-v27];
  sub_25F5E37C4();
  (*(v14 + 104))(v18, *MEMORY[0x277CC9980], v13);
  v29 = a1;
  v30 = sub_25F5E37F4();
  (*(v14 + 8))(v18, v13);
  v60 = v30;
  v32 = v30 >= v64 && v30 <= v65;
  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v33 = sub_25F5E3FB4();
  __swift_project_value_buffer(v33, qword_27FD9EA20);
  sub_25F5B6EB8(v29, v12, type metadata accessor for ExtractedMessage);
  (*(v20 + 16))(v25, v28, v19);
  v34 = sub_25F5E3F94();
  v35 = sub_25F5E47A4();
  v36 = v20;
  if (os_log_type_enabled(v34, v35))
  {
    v37 = swift_slowAlloc();
    v58 = v28;
    v38 = v37;
    v57 = swift_slowAlloc();
    v66 = v57;
    *v38 = 136316418;
    sub_25F5E3694();
    v59 = v32;
    sub_25F5B6FF0(&qword_27FD9E498, MEMORY[0x277CC9578]);
    v56 = v35;
    v39 = sub_25F5E4B44();
    v41 = v40;
    sub_25F5B6F20(v12, type metadata accessor for ExtractedMessage);
    v42 = sub_25F570AF8(v39, v41, &v66);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2080;
    v43 = v19;
    v44 = v61;
    sub_25F5E37D4();
    sub_25F5B6FF0(&qword_27FD9E4A0, MEMORY[0x277CC9A70]);
    v45 = v63;
    v46 = sub_25F5E4B44();
    v48 = v47;
    (*(v62 + 8))(v44, v45);
    v49 = *(v36 + 8);
    v49(v25, v43);
    v50 = sub_25F570AF8(v46, v48, &v66);
    v32 = v59;

    *(v38 + 14) = v50;
    *(v38 + 22) = 2048;
    *(v38 + 24) = v60;
    *(v38 + 32) = 2048;
    *(v38 + 34) = v64;
    *(v38 + 42) = 2048;
    *(v38 + 44) = v65;
    *(v38 + 52) = 1024;
    *(v38 + 54) = v32;
    _os_log_impl(&dword_25F56A000, v34, v56, "BetweenHours filter | message date: %s, timezone: %s, local hour: %ld,  start hour: %ld, end hour: %ld, is in: %{BOOL}d", v38, 0x3Au);
    v51 = v57;
    swift_arrayDestroy();
    MEMORY[0x25F8E3B70](v51, -1, -1);
    MEMORY[0x25F8E3B70](v38, -1, -1);

    v49(v58, v43);
  }

  else
  {

    v52 = v19;
    v53 = *(v20 + 8);
    v53(v25, v52);
    sub_25F5B6F20(v12, type metadata accessor for ExtractedMessage);
    v53(v28, v52);
  }

  return v32;
}

uint64_t sub_25F5B6D20(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25F575BD4;

  return sub_25F5B3198(a1);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25F5B6DD0()
{
  result = qword_27FD9E488;
  if (!qword_27FD9E488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E488);
  }

  return result;
}

uint64_t sub_25F5B6E50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F5B6EB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F5B6F20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F5B6F80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F5B6FF0(unint64_t *a1, void (*a2)(uint64_t))
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

PriMLETL::ExtractorError_optional __swiftcall ExtractorError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue - 21;
  if ((rawValue - 20501) >= 0x12)
  {
    v2 = 18;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_25F5B7068()
{
  result = qword_27FD9E4A8;
  if (!qword_27FD9E4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E4A8);
  }

  return result;
}

uint64_t sub_25F5B70BC()
{
  v1 = *v0;
  sub_25F5E4C34();
  MEMORY[0x25F8E3300](v1 + 20501);
  return sub_25F5E4C54();
}

uint64_t sub_25F5B713C()
{
  v1 = *v0;
  sub_25F5E4C34();
  MEMORY[0x25F8E3300](v1 + 20501);
  return sub_25F5E4C54();
}

uint64_t sub_25F5B71A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F5B7348();
  v5 = sub_25F5739D8();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t getEnumTagSinglePayload for ExtractorError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExtractorError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25F5B7348()
{
  result = qword_27FD9E4B0;
  if (!qword_27FD9E4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E4B0);
  }

  return result;
}

uint64_t dispatch thunk of Extractor.extract()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25F57E6F8;

  return v11(a1, a2, a3);
}

uint64_t sub_25F5B74DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 144);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25F5B75AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 144) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for GenmojiPromptExtractor()
{
  result = qword_27FD9E4B8;
  if (!qword_27FD9E4B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25F5B76A8()
{
  sub_25F5B2AE4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void *sub_25F5B772C(uint64_t *a1, uint64_t a2, int a3, void *a4, uint64_t a5, void (*a6)(char *, char *, uint64_t), int a7, unint64_t a8, char a9)
{
  v210 = a4;
  v211 = a8;
  LODWORD(v212) = a7;
  v213 = a6;
  LODWORD(v209) = a3;
  v206 = a2;
  v202 = sub_25F5E3E24();
  v204 = *(v202 - 8);
  v11 = *(v204 + 64);
  v13 = MEMORY[0x28223BE20](v202, v12);
  v197 = &v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v201 = &v158 - v17;
  MEMORY[0x28223BE20](v16, v18);
  v170 = &v158 - v19;
  v173 = sub_25F5E3DD4();
  v196 = *(v173 - 8);
  v20 = *(v196 + 64);
  MEMORY[0x28223BE20](v173, v21);
  v172 = &v158 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_25F5E3E64();
  v200 = *(v185 - 8);
  v23 = *(v200 + 64);
  MEMORY[0x28223BE20](v185, v24);
  v184 = &v158 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_25F5E3694();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v30 = MEMORY[0x28223BE20](v26, v29);
  v194 = &v158 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v32);
  v195 = &v158 - v33;
  v34 = sub_25F5E3E94();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v38 = MEMORY[0x28223BE20](v34, v37);
  v198 = &v158 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v38, v40);
  v179 = &v158 - v42;
  v44 = MEMORY[0x28223BE20](v41, v43);
  v176 = &v158 - v45;
  MEMORY[0x28223BE20](v44, v46);
  v48 = &v158 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
  v50 = *(*(v49 - 8) + 64);
  v52 = MEMORY[0x28223BE20](v49 - 8, v51);
  v54 = &v158 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v52, v55);
  v208 = &v158 - v57;
  MEMORY[0x28223BE20](v56, v58);
  v60 = &v158 - v59;
  v61 = a1[1];
  v178 = *a1;
  v205 = v61;
  v62 = a1[3];
  v174 = a1[2];
  v63 = a1[5];
  v183 = a1[4];
  v182 = v63;
  v199 = a1[6];
  result = (*(v27 + 56))(&v158 - v59, 1, 1, v26);
  if (v212)
  {
    v65 = 0;
  }

  else
  {
    v65 = v213;
  }

  if (v65 < 0)
  {
    goto LABEL_83;
  }

  if (a9)
  {
    v66 = 0;
  }

  else
  {
    v66 = v211;
  }

  if ((v66 & 0x8000000000000000) != 0)
  {
LABEL_84:
    __break(1u);
  }

  else
  {
    v67 = sub_25F5B8950(v206, v60, v209 & 1, v210, a5, v65, v66);
    sub_25F57C148(v60, &unk_27FD9E500, &unk_25F5EA410);
    if (v67)
    {
      v211 = *(v67 + 16);
      v169 = v67;
      if (v211)
      {
        v203 = v26;
        v175 = v62;
        v69 = 0;
        v71 = *(v35 + 16);
        v70 = v35 + 16;
        v213 = v71;
        v187 = (*(v70 + 64) + 32) & ~*(v70 + 64);
        v209 = v67 + v187;
        v207 = (v27 + 48);
        v212 = *(v70 + 56);
        v191 = (v27 + 32);
        v190 = (v27 + 8);
        v72 = (v70 - 8);
        v181 = (v200 + 8);
        v180 = (v199 + 32);
        v168 = (v196 + 8);
        v167 = (v183 + 32);
        v200 = v204 + 8;
        v159 = (v182 + 32);
        v188 = *MEMORY[0x277D20750];
        v196 = v204 + 104;
        v177 = *MEMORY[0x277D20758];
        v210 = MEMORY[0x277D84F90];
        v192 = v54;
        v186 = (v70 + 16);
        *&v68 = 138412546;
        v160 = v68;
        v204 = v70 - 8;
        v73 = v34;
        v189 = v70;
        v193 = v34;
        v71(v48, (v67 + v187), v34);
        while (1)
        {
          sub_25F5E3E34();
          if (!v74)
          {
            goto LABEL_12;
          }

          v75 = v70;

          v76 = v208;
          sub_25F573B94(v206, v208, &unk_27FD9E500, &unk_25F5EA410);
          v77 = *v207;
          v78 = v203;
          if ((*v207)(v76, 1, v203) == 1)
          {
            goto LABEL_19;
          }

          v79 = *v191;
          v80 = v195;
          (*v191)(v195, v208, v78);
          v81 = v192;
          sub_25F5E3E84();
          if (v77(v81, 1, v78) == 1)
          {
            break;
          }

          v79(v194, v81, v78);
          result = sub_25F5E3654();
          v105 = v104;
          if ((*&v104 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
            goto LABEL_84;
          }

          if (v104 <= -9.22337204e18)
          {
            goto LABEL_78;
          }

          if (v104 >= 9.22337204e18)
          {
            goto LABEL_79;
          }

          v73 = v193;
          sub_25F5E3654();
          v107 = v106;
          v108 = v106;
          v109 = v80;
          v110 = *v190;
          (*v190)(v194, v78);
          result = (v110)(v109, v78);
          if ((*&v108 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_80;
          }

          if (v107 <= -9.22337204e18)
          {
            goto LABEL_81;
          }

          if (v107 >= 9.22337204e18)
          {
            goto LABEL_82;
          }

          v72 = v204;
          v82 = v205;
          if (v107 >= v105)
          {
            (*v204)(v48, v73);
            v70 = v75;
            goto LABEL_13;
          }

LABEL_20:
          if (v82 != 1)
          {
            v70 = v75;
            if (v199)
            {
              v97 = v184;
              sub_25F5E3E74();
              v98 = sub_25F5E3DC4();
              (*v181)(v97, v185);
              v99 = *(v199 + 16);
              v100 = v180;
              while (v99)
              {
                v101 = *v100++;
                --v99;
                if (v101 == v98)
                {
                  goto LABEL_32;
                }
              }

              goto LABEL_12;
            }

LABEL_32:
            if (v82)
            {

              v102 = sub_25F5E3E04();
              if (!v103)
              {
                goto LABEL_58;
              }

              if (v178 == v102 && v82 == v103)
              {
              }

              else
              {
                v129 = sub_25F5E4B84();

                if ((v129 & 1) == 0)
                {
                  goto LABEL_12;
                }
              }
            }

            v130 = v175;
            if (v175)
            {

              v131 = sub_25F5E3DF4();
              if (!v132)
              {
LABEL_58:

LABEL_12:
                (*v72)(v48, v73);
                goto LABEL_13;
              }

              if (v174 == v131 && v130 == v132)
              {
              }

              else
              {
                v133 = sub_25F5E4B84();

                if ((v133 & 1) == 0)
                {
                  goto LABEL_12;
                }
              }
            }

            if (v183)
            {
              v134 = v172;
              sub_25F5E3DE4();
              v135 = sub_25F5E3DC4();
              (*v168)(v134, v173);
              v136 = *(v183 + 16);
              v137 = v167;
              while (v136)
              {
                v138 = *v137++;
                --v136;
                if (v138 == v135)
                {
                  goto LABEL_65;
                }
              }

              goto LABEL_12;
            }

LABEL_65:
            if (v182)
            {
              v139 = v170;
              sub_25F5E3E44();
              v140 = sub_25F5E3DC4();
              (*v200)(v139, v202);
              v141 = *(v182 + 16);
              v142 = v159;
              while (v141)
              {
                v143 = *v142++;
                --v141;
                if (v143 == v140)
                {
                  goto LABEL_21;
                }
              }

              goto LABEL_12;
            }
          }

LABEL_21:
          v83 = v73;
          v84 = v201;
          sub_25F5E3E44();
          v85 = *v196;
          v86 = v197;
          v87 = v202;
          (*v196)(v197, v188, v202);
          sub_25F5BA8E8(&qword_27FD9E4D8, MEMORY[0x277D20760]);
          sub_25F5E45D4();
          sub_25F5E45D4();
          v88 = *v200;
          (*v200)(v86, v87);
          v88(v84, v87);
          if (v215 == v214)
          {
            goto LABEL_23;
          }

          v89 = v201;
          sub_25F5E3E44();
          v90 = v197;
          v91 = v202;
          v85(v197, v177, v202);
          sub_25F5E45D4();
          sub_25F5E45D4();
          v88(v90, v91);
          v88(v89, v91);
          if (v215 == v214)
          {
LABEL_23:
            v73 = v83;
            v92 = v83;
            v70 = v189;
            v213(v198, v48, v92);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v72 = v204;
              v93 = v210;
            }

            else
            {
              v93 = sub_25F5788A4(0, v210[2] + 1, 1, v210);
              v72 = v204;
            }

            v95 = v93[2];
            v94 = v93[3];
            if (v95 >= v94 >> 1)
            {
              v210 = sub_25F5788A4(v94 > 1, v95 + 1, 1, v93);
            }

            else
            {
              v210 = v93;
            }

            (*v72)(v48, v73);
            v96 = v210;
            v210[2] = v95 + 1;
            (*v186)(&v96[v187 + v95 * v212], v198, v73);
          }

          else
          {
            if (qword_27FD9D8B0 != -1)
            {
              swift_once();
            }

            v111 = sub_25F5E3FB4();
            __swift_project_value_buffer(v111, qword_27FD9EA20);
            v112 = v176;
            v73 = v83;
            v113 = v83;
            v70 = v189;
            v114 = v213;
            v213(v176, v48, v113);
            v115 = v179;
            v114(v179, v48, v73);
            v116 = sub_25F5E3F94();
            v117 = sub_25F5E47A4();
            if (os_log_type_enabled(v116, v117))
            {
              v163 = v117;
              v166 = v116;
              v118 = swift_slowAlloc();
              v171 = swift_slowAlloc();
              v162 = swift_slowAlloc();
              v215 = v162;
              v165 = v118;
              *v118 = v160;
              v119 = sub_25F5E3E34();
              v121 = v204;
              v164 = v204 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              if (v120)
              {
                v122 = v119;
                v123 = v120;
                sub_25F5BA894();
                swift_allocError();
                *v124 = v122;
                v124[1] = v123;
                v125 = _swift_stdlib_bridgeErrorToNSError();
                v161 = *v121;
                v161(v112, v73);
              }

              else
              {
                v161 = *v204;
                v161(v112, v73);
                v125 = 0;
              }

              v144 = v165;
              *(v165 + 1) = v125;
              *v171 = v125;
              *(v144 + 6) = 2080;
              v145 = v201;
              v146 = v179;
              sub_25F5E3E44();
              sub_25F5BA8E8(&qword_27FD9E4E0, MEMORY[0x277D20760]);
              v147 = v202;
              v148 = sub_25F5E4B44();
              v150 = v149;
              v88(v145, v147);
              v151 = v146;
              v152 = v193;
              v153 = v161;
              v161(v151, v193);
              v154 = sub_25F570AF8(v148, v150, &v215);

              *(v144 + 14) = v154;
              v155 = v166;
              _os_log_impl(&dword_25F56A000, v166, v163, "Skipping prompt: %@ with invalid result: %s", v144, 0x16u);
              v156 = v171;
              sub_25F57C148(v171, &qword_27FD9DEF0, &qword_25F5E8550);
              MEMORY[0x25F8E3B70](v156, -1, -1);
              v157 = v162;
              __swift_destroy_boxed_opaque_existential_1Tm(v162);
              MEMORY[0x25F8E3B70](v157, -1, -1);
              MEMORY[0x25F8E3B70](v144, -1, -1);

              v153(v48, v152);
              v73 = v152;
              v72 = v204;
            }

            else
            {

              v126 = v204;
              v127 = *v204;
              (*v204)(v115, v73);
              v128 = v112;
              v72 = v126;
              v127(v128, v73);
              v127(v48, v73);
            }
          }

LABEL_13:
          if (++v69 == v211)
          {
            goto LABEL_76;
          }

          v213(v48, (v209 + v212 * v69), v73);
        }

        (*v190)(v80, v78);
        v76 = v81;
        v72 = v204;
        v73 = v193;
LABEL_19:
        sub_25F57C148(v76, &unk_27FD9E500, &unk_25F5EA410);
        v82 = v205;
        goto LABEL_20;
      }

      v210 = MEMORY[0x277D84F90];
LABEL_76:

      return v210;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F5B8950(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v42 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v41 - v19;
  sub_25F573B94(a1, &v41 - v19, &unk_27FD9E500, &unk_25F5EA410);
  sub_25F573B94(a2, v17, &unk_27FD9E500, &unk_25F5EA410);
  if (((a7 | a6) & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_8;
  }

  v41 = a4;
  v21 = sub_25F5E3694();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  v24 = 0;
  if (v23(v20, 1, v21) != 1)
  {
    v24 = sub_25F5E3624();
    (*(v22 + 8))(v20, v21);
  }

  if (v23(v17, 1, v21) == 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = sub_25F5E3624();
    (*(v22 + 8))(v17, v21);
  }

  v26 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  a7 = [v26 initWithStartDate:v24 endDate:v25 maxEvents:a6 lastN:a7 reversed:v42 & 1];

  if (qword_27FD9D8B0 != -1)
  {
    goto LABEL_15;
  }

LABEL_8:
  v27 = sub_25F5E3FB4();
  __swift_project_value_buffer(v27, qword_27FD9EA20);
  v28 = a7;
  v29 = sub_25F5E3F94();
  v30 = sub_25F5E47A4();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v28;
    *v32 = v28;
    v33 = v28;
    _os_log_impl(&dword_25F56A000, v29, v30, "Querying GeneratedImageFeatures UserInteractions events with %@.", v31, 0xCu);
    sub_25F57C148(v32, &qword_27FD9DEF0, &qword_25F5E8550);
    MEMORY[0x25F8E3B70](v32, -1, -1);
    MEMORY[0x25F8E3B70](v31, -1, -1);
  }

  sub_25F5E3D84();
  sub_25F5BA8E8(&unk_27FD9E4F0, MEMORY[0x277D20428]);
  v34 = v28;
  sub_25F5E3DA4();

  sub_25F573A2C(&v43, v44);
  v35 = swift_allocObject();
  *(v35 + 16) = MEMORY[0x277D84F90];
  __swift_project_boxed_opaque_existential_1Tm(v44, v44[3]);

  sub_25F5E3FC4();

  v36 = sub_25F5E3F94();
  v37 = sub_25F5E4794();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 134217984;
    swift_beginAccess();
    *(v38 + 4) = *(*(v35 + 16) + 16);

    _os_log_impl(&dword_25F56A000, v36, v37, "Loaded %ld GeneratedImageFeatures UserInteractions events.", v38, 0xCu);
    MEMORY[0x25F8E3B70](v38, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  v39 = *(v35 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  return v39;
}

uint64_t sub_25F5B8F28(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F5E3E94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4);
  swift_beginAccess();
  v10 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_25F5788A4(0, v10[2] + 1, 1, v10);
    *(a2 + 16) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_25F5788A4(v12 > 1, v13 + 1, 1, v10);
  }

  v10[2] = v13 + 1;
  (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v9, v4);
  *(a2 + 16) = v10;
  return swift_endAccess();
}

uint64_t sub_25F5B90C0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_25F5E3694();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE00, &unk_25F5E9D40) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = sub_25F5E3774();
  v2[10] = v7;
  v8 = *(v7 - 8);
  v2[11] = v8;
  v9 = *(v8 + 64) + 15;
  v2[12] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE08, &unk_25F5E7230) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v11 = sub_25F5E3794();
  v2[14] = v11;
  v12 = *(v11 - 8);
  v2[15] = v12;
  v13 = *(v12 + 64) + 15;
  v2[16] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE10, &unk_25F5E7240) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v16 = type metadata accessor for ExtractedItem(0);
  v2[24] = v16;
  v17 = *(v16 - 8);
  v2[25] = v17;
  v18 = *(v17 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v19 = sub_25F5E3E94();
  v2[30] = v19;
  v20 = *(v19 - 8);
  v2[31] = v20;
  v21 = *(v20 + 64) + 15;
  v2[32] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E4C8, &qword_25F5EA460);
  v2[33] = v22;
  v23 = *(v22 - 8);
  v2[34] = v23;
  v24 = *(v23 + 64) + 15;
  v2[35] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E4D0, &qword_25F5EA468) - 8) + 64) + 15;
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v26 = sub_25F5E3E64();
  v2[38] = v26;
  v27 = *(v26 - 8);
  v2[39] = v27;
  v28 = *(v27 + 64) + 15;
  v2[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F5B9550, 0, 0);
}

uint64_t sub_25F5B9550()
{
  v238 = v0;
  v1 = v0[3];
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  v150 = v2;
  v8 = *(v1 + 112);
  v222 = *(type metadata accessor for GenmojiPromptExtractor() + 24);
  v227 = *(v1 + 144);
  v232 = *(v1 + 136);
  v217 = *(v1 + 16);
  v213 = *(v1 + 24);
  v208 = *v1;
  oslog = *(v1 + 8);
  if (v3 == 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  if (v3 == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = v4;
  }

  v182 = v10;
  v191 = v9;
  if (v3 == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v3;
  }

  if (v3 == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = v2;
  }

  if (v3 == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = v6;
  }

  if (v3 == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v173 = v12;
  v177 = v14;
  v15 = v0[39];
  v16 = v0[40];
  v17 = v0[38];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E320, &unk_25F5EA470);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_25F5E5EE0;
  (*(v15 + 104))(v16, *MEMORY[0x277D20778], v17);
  sub_25F5BA820(v150, v3);
  v19 = sub_25F5E3DC4();
  (*(v15 + 8))(v16, v17);
  *(v18 + 32) = v19;

  v237[0] = v173;
  v237[1] = v11;
  v20 = v182;
  v237[2] = v182;
  v237[3] = v191;
  v237[4] = v13;
  v237[5] = v177;
  v237[6] = v18;

  v21 = sub_25F5B772C(v237, v1 + v222, 0, v232, v227, v217, v213, v208, oslog);
  sub_25F5A99B4(v173, v11);

  if (!v21)
  {
    v84 = 5;
LABEL_82:
    v136 = v0[40];
    v138 = v0[36];
    v137 = v0[37];
    v139 = v0[35];
    v140 = v0[32];
    v141 = v0[28];
    v142 = v0[29];
    v157 = v0[27];
    v161 = v0[26];
    v164 = v0[23];
    v168 = v0[22];
    v172 = v0[21];
    v176 = v0[20];
    v181 = v0[19];
    v190 = v0[18];
    v200 = v0[17];
    oslogf = v0[16];
    v212 = v0[13];
    v216 = v0[12];
    v221 = v0[9];
    v226 = v0[8];
    v231 = v0[7];
    v236 = v0[6];
    sub_25F5A31D0();
    swift_allocError();
    *v143 = v84;
    swift_willThrow();

    v144 = v0[1];

    return v144();
  }

  i = 0;
  v23 = v0[31];
  v24 = v0[34];
  v228 = (v24 + 56);
  v233 = v0[33];
  v25 = (v24 + 48);
  v223 = (v23 + 32);
  v145 = (v0[11] + 8);
  v178 = v0[25];
  v209 = v0[24];
  v169 = (v0[15] + 8);
  v26 = v21[2];
  v218 = v23;
  v27 = (v23 + 8);
  v174 = MEMORY[0x277D84F90];
  if (v26)
  {
    goto LABEL_22;
  }

LABEL_21:
  v28 = 1;
  for (i = v26; ; ++i)
  {
    v34 = v0[36];
    v35 = v0[37];
    v36 = v0[33];
    (*v228)(v34, v28, 1, v36);
    sub_25F57B86C(v34, v35, &qword_27FD9E4D0, &qword_25F5EA468);
    if ((*v25)(v35, 1, v36) == 1)
    {
      break;
    }

    v20 = v21;
    v37 = v0[37];
    v38 = *v37;
    (*v223)(v0[32], &v37[*(v233 + 48)], v0[30]);
    v39 = sub_25F5E3E34();
    if (!v40)
    {
      v41 = v0[30];
      v42 = *v27;
      v43 = v0[32];
      goto LABEL_27;
    }

    v44 = v39;
    v45 = v40;
    v151 = v0[23];
    v192 = v0[22];
    v146 = v0[28];
    v148 = v0[16];
    sub_25F5E3DB4();

    sub_25F5E3E84();
    v154 = sub_25F5E3E04();
    v183 = v46;
    v158 = sub_25F5E3DF4();
    osloga = v47;
    v165 = sub_25F571FC4(MEMORY[0x277D84F90]);
    *(v146 + v209[6]) = 0;
    sub_25F571FC4(MEMORY[0x277D84F90]);
    sub_25F5E3754();
    sub_25F573B94(v151, v146, &qword_27FD9DE10, &unk_25F5E7240);
    v48 = (v146 + v209[5]);
    *v48 = v44;
    v48[1] = v45;
    sub_25F573B94(v192, v146 + v209[7], &unk_27FD9E500, &unk_25F5EA410);
    v49 = v183;
    if (!v183)
    {
      v50 = v0[16];
      v184 = v0[12];
      v193 = v0[13];
      v155 = v0[10];
      sub_25F5E3784();
      sub_25F5E3764();
      (*v145)(v184, v155);
      v51 = sub_25F5E3704();
      v152 = *(v51 - 8);
      v52 = v193;
      v194 = v51;
      v53 = (*(v152 + 48))(v52, 1);
      v54 = v0[13];
      if (v53 == 1)
      {
        sub_25F57C148(v0[13], &qword_27FD9DE08, &unk_25F5E7230);
        v55 = 0;
        v49 = 0;
        goto LABEL_34;
      }

      v154 = sub_25F5E36F4();
      v185 = v56;
      (*(v152 + 8))(v54, v194);
      v49 = v185;
    }

    v55 = v154;
LABEL_34:
    v57 = (v0[28] + v209[8]);
    *v57 = v55;
    v57[1] = v49;
    if (osloga)
    {
      v58 = v0[22];
      v195 = v0[23];
      (*v169)(v0[16], v0[14]);
      sub_25F57C148(v58, &unk_27FD9E500, &unk_25F5EA410);
      sub_25F57C148(v195, &qword_27FD9DE10, &unk_25F5E7240);
LABEL_39:

      v65 = osloga;
      v64 = v158;
      goto LABEL_40;
    }

    v59 = v0[16];
    oslogc = v0[9];
    sub_25F5E3744();
    v60 = sub_25F5E3734();
    v153 = *(v60 - 8);
    v156 = v60;
    v61 = (*(v153 + 48))(oslogc, 1);
    v186 = v0[22];
    v196 = v0[23];
    v62 = v0[16];
    v63 = v0[9];
    if (v61 != 1)
    {
      v147 = v0[16];
      v149 = v0[14];
      v158 = sub_25F5E36F4();
      osloga = v66;
      (*v169)(v147, v149);
      sub_25F57C148(v186, &unk_27FD9E500, &unk_25F5EA410);
      sub_25F57C148(v196, &qword_27FD9DE10, &unk_25F5E7240);
      (*(v153 + 8))(v63, v156);
      goto LABEL_39;
    }

    (*v169)(v0[16], v0[14]);
    sub_25F57C148(v186, &unk_27FD9E500, &unk_25F5EA410);
    sub_25F57C148(v196, &qword_27FD9DE10, &unk_25F5E7240);
    sub_25F57C148(v63, &qword_27FD9DE00, &unk_25F5E9D40);

    v64 = 0;
    v65 = 0;
LABEL_40:
    v67 = v0[28];
    v68 = v0[29];
    oslogd = v0[27];
    v69 = v209[10];
    v70 = (v67 + v209[9]);
    *v70 = v64;
    v70[1] = v65;
    *(v67 + v69) = v165;
    sub_25F57B6DC(v67, v68);
    sub_25F57B808(v68, oslogd);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v174 = sub_25F57851C(0, v174[2] + 1, 1, v174);
    }

    v72 = v174[2];
    v71 = v174[3];
    v73 = v72 + 1;
    if (v72 >= v71 >> 1)
    {
      v81 = sub_25F57851C(v71 > 1, v72 + 1, 1, v174);
      v73 = v72 + 1;
      v174 = v81;
    }

    v74 = v0[27];
    v174[2] = v73;
    sub_25F57B6DC(v74, v174 + ((*(v178 + 80) + 32) & ~*(v178 + 80)) + *(v178 + 72) * v72);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v75 = sub_25F5E3FB4();
    __swift_project_value_buffer(v75, qword_27FD9EA20);

    oslogb = sub_25F5E3F94();
    v76 = sub_25F5E47A4();

    v166 = v76;
    v77 = os_log_type_enabled(oslogb, v76);
    v78 = v0[32];
    v187 = v0[29];
    v197 = v0[30];
    if (v77)
    {
      v162 = v0[32];
      v79 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v237[0] = v159;
      *v79 = 134218242;
      *(v79 + 4) = v38;
      *(v79 + 12) = 2080;
      v80 = sub_25F570AF8(v44, v45, v237);

      *(v79 + 14) = v80;
      _os_log_impl(&dword_25F56A000, oslogb, v166, "Extracted Genmoji prompt #%ld: %s", v79, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v159);
      MEMORY[0x25F8E3B70](v159, -1, -1);
      MEMORY[0x25F8E3B70](v79, -1, -1);

      sub_25F57B8D4(v187);
      v42 = *v27;
      v43 = v162;
    }

    else
    {

      sub_25F57B8D4(v187);
      v42 = *v27;
      v43 = v78;
    }

    v41 = v197;
LABEL_27:
    v42(v43, v41);
    v21 = v20;
    if (i == v26)
    {
      goto LABEL_21;
    }

LABEL_22:
    if (i >= v21[2])
    {
      __break(1u);
LABEL_86:
      swift_once();
LABEL_55:
      v85 = sub_25F5E3FB4();
      __swift_project_value_buffer(v85, qword_27FD9EA20);

      v86 = sub_25F5E3F94();
      v87 = sub_25F5E47B4();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 134218240;
        v89 = v25[2];

        *(v88 + 4) = v89;

        *(v88 + 12) = 2048;
        *(v88 + 14) = v20;
        _os_log_impl(&dword_25F56A000, v86, v87, "Extracted items %ld less than required sample size %ld.", v88, 0x16u);
        MEMORY[0x25F8E3B70](v88, -1, -1);
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      v84 = 7;
      goto LABEL_82;
    }

    v29 = v0[35];
    v30 = v0[36];
    v31 = v0[30];
    v32 = v21 + ((*(v218 + 80) + 32) & ~*(v218 + 80)) + *(v218 + 72) * i;
    v33 = *(v233 + 48);
    *v29 = i;
    (*(v218 + 16))(&v29[v33], v32, v31);
    sub_25F57B86C(v29, v30, &qword_27FD9E4C8, &qword_25F5EA460);
    v28 = 0;
  }

  v82 = v0[3];

  if (*(v82 + 56))
  {
    v83 = v174;
  }

  else
  {
    v20 = *(v82 + 48);
    v25 = v174;
    if (v174[2] < v20)
    {
      if (qword_27FD9D8B0 != -1)
      {
        goto LABEL_86;
      }

      goto LABEL_55;
    }

    v90 = v0[3];
    v83 = sub_25F5C7AF4(v174, v20);
  }

  v198 = *(v0[5] + 56);
  v198(v0[2], 1, 1, v0[4]);
  v91 = *(v83 + 16);
  v175 = v83;
  if (v91)
  {
    v92 = v0[26];
    v93 = v0[5];
    v229 = v209[7];
    v94 = v83 + ((*(v178 + 80) + 32) & ~*(v178 + 80));
    v219 = (v93 + 48);
    v224 = *(v178 + 72);
    v234 = (v93 + 32);
    v170 = (v93 + 8);

    v95 = &unk_27FD9E500;
    v188 = v92;
    do
    {
      v96 = v0[26];
      v97 = v0[21];
      v98 = v0[4];
      sub_25F57B808(v94, v96);
      sub_25F573B94(v92 + v229, v97, v95, &unk_25F5EA410);
      sub_25F57B8D4(v96);
      v99 = *v219;
      if ((*v219)(v97, 1, v98) == 1)
      {
        sub_25F57C148(v0[21], v95, &unk_25F5EA410);
      }

      else
      {
        v100 = v95;
        v101 = v0[20];
        v102 = v0[4];
        v103 = v0[2];
        v214 = *v234;
        (*v234)(v0[8], v0[21], v102);
        sub_25F573B94(v103, v101, v95, &unk_25F5EA410);
        v104 = v99(v101, 1, v102);
        v105 = v0[20];
        if (v104 == 1)
        {
          v106 = v0[8];
          v107 = v0[4];
          v108 = v0[2];
          sub_25F57C148(v108, v95, &unk_25F5EA410);
          sub_25F57C148(v105, v95, &unk_25F5EA410);
          v214(v108, v106, v107);
          v198(v108, 0, 1, v107);
        }

        else
        {
          v179 = v0[19];
          v110 = v0[7];
          v109 = v0[8];
          v111 = v0[4];
          v210 = v0[2];
          v214(v110, v105, v111);
          sub_25F5BA8E8(&qword_27FD9E490, MEMORY[0x277CC9578]);
          v112 = sub_25F5E4384();
          sub_25F57C148(v210, v100, &unk_25F5EA410);
          if (v112)
          {
            v113 = v109;
          }

          else
          {
            v113 = v110;
          }

          if (v112)
          {
            v114 = v110;
          }

          else
          {
            v114 = v109;
          }

          (*v170)(v113, v111);
          v214(v179, v114, v111);
          v198(v179, 0, 1, v111);
          sub_25F57B86C(v179, v210, v100, &unk_25F5EA410);
        }

        v95 = v100;
        v92 = v188;
      }

      v94 += v224;
      --v91;
    }

    while (v91);
  }

  else
  {
  }

  v115 = v0[18];
  v116 = v0[4];
  v117 = v0[5];
  sub_25F573B94(v0[2], v115, &unk_27FD9E500, &unk_25F5EA410);
  v118 = (*(v117 + 48))(v115, 1, v116);
  v119 = v0[18];
  if (v118 == 1)
  {
    sub_25F57C148(v0[18], &unk_27FD9E500, &unk_25F5EA410);
  }

  else
  {
    v120 = v0[17];
    v122 = v0[5];
    v121 = v0[6];
    v123 = v0[4];
    v124 = v0[2];
    (*(v122 + 32))(v121, v0[18], v123);
    sub_25F5E3654();
    sub_25F5E3644();
    (*(v122 + 8))(v121, v123);
    sub_25F57C148(v124, &unk_27FD9E500, &unk_25F5EA410);
    v198(v120, 0, 1, v123);
    sub_25F57B86C(v120, v124, &unk_27FD9E500, &unk_25F5EA410);
  }

  v125 = v0[40];
  v127 = v0[36];
  v126 = v0[37];
  v128 = v0[35];
  v129 = v0[32];
  v130 = v0[28];
  v131 = v0[29];
  v133 = v0[26];
  v132 = v0[27];
  v160 = v0[23];
  v163 = v0[22];
  v167 = v0[21];
  v171 = v0[20];
  v180 = v0[19];
  v189 = v0[18];
  v199 = v0[17];
  osloge = v0[16];
  v211 = v0[13];
  v215 = v0[12];
  v220 = v0[9];
  v225 = v0[8];
  v230 = v0[7];
  v235 = v0[6];

  v134 = v0[1];

  return v134(v175);
}

uint64_t sub_25F5BA788(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25F575BD4;

  return sub_25F5B90C0(a1);
}

uint64_t sub_25F5BA820(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_25F5BA894()
{
  result = qword_27FD9E4E8;
  if (!qword_27FD9E4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E4E8);
  }

  return result;
}

uint64_t sub_25F5BA8E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F5BA930()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25F5BA970(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    return v4;
  }

  v5 = a1;
  v40 = MEMORY[0x277D84F90];
  sub_25F571290(0, v3, 0);
  v4 = v40;
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = sub_25F5E48E4();
  v9 = 0;
  v10 = *(v5 + 36);
  v31 = v5 + 72;
  v32 = v3;
  v33 = v10;
  v34 = v5 + 64;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v5 + 32))
  {
    v12 = v8 >> 6;
    if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(v5 + 36))
    {
      goto LABEL_24;
    }

    v35 = v9;
    v13 = *(v5 + 56);
    v14 = v5;
    v15 = *(*(v5 + 48) + 8 * v8);
    v16 = *(v13 + 8 * v8);
    v39._rawValue = v16;
    swift_bridgeObjectRetain_n();
    sub_25F5C1418(&v39);
    v36 = v2;
    if (v2)
    {
      goto LABEL_28;
    }

    rawValue = v39._rawValue;
    v18 = joinMessages(_:)(v39);
    v19 = joinMetadata(_:)(rawValue);
    v37 = v16[2];
    v38 = v19;
    sub_25F571FC4(MEMORY[0x277D84F90]);

    v40 = v4;
    v21 = *(v4 + 16);
    v20 = *(v4 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_25F571290((v20 > 1), v21 + 1, 1);
      v4 = v40;
    }

    *(v4 + 16) = v21 + 1;
    v22 = v4 + 48 * v21;
    *(v22 + 32) = v15;
    *(v22 + 40) = v37;
    *(v22 + 48) = rawValue;
    *(v22 + 56) = v18;
    *(v22 + 72) = v38;
    v11 = 1 << *(v14 + 32);
    if (v8 >= v11)
    {
      goto LABEL_25;
    }

    v6 = v34;
    v23 = *(v34 + 8 * v12);
    if ((v23 & (1 << v8)) == 0)
    {
      goto LABEL_26;
    }

    v5 = v14;
    v10 = v33;
    if (v33 != *(v14 + 36))
    {
      goto LABEL_27;
    }

    v24 = v23 & (-2 << (v8 & 0x3F));
    if (v24)
    {
      v11 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = v12 << 6;
      v26 = v12 + 1;
      v27 = (v31 + 8 * v12);
      while (v26 < (v11 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          sub_25F5C33BC(v8, v33, 0);
          v11 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      sub_25F5C33BC(v8, v33, 0);
    }

LABEL_4:
    v9 = v35 + 1;
    v8 = v11;
    v2 = 0;
    if (v35 + 1 == v32)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:

  __break(1u);
  return result;
}

uint64_t MessageCleanupParameters.init(cleanup:useMorpheus:morpheusProgram:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = result;
  if ((a2 & 1) == 0)
  {

    goto LABEL_5;
  }

  if (!a3)
  {
LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  sub_25F5E4024();
  v5 = sub_25F5E4014();

LABEL_6:
  *a4 = v7;
  *(a4 + 1) = a2;
  *(a4 + 8) = v5;
  return result;
}

uint64_t MessageExtractor.init(lastDays:maxMessages:maxLength:cleanupParameters:earliestDate:customPredicateFormat:queryTimeout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, double a8@<X7>, void *a9@<X8>, char a10)
{
  v32 = *a4;
  v15 = a4[1];
  v16 = *(a4 + 1);
  v17 = type metadata accessor for MessageExtractor();
  *(a9 + v17[13]) = 0;
  *(a9 + v17[14]) = MEMORY[0x277D84F90];
  v31 = v17[15];
  *(a9 + v31) = 2;
  *a9 = [objc_allocWithZone(MEMORY[0x277D06D78]) init];
  v18 = objc_allocWithZone(MEMORY[0x277D06D60]);
  v38 = sub_25F5C0E14;
  v39 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F5C0E18;
  v37 = &block_descriptor_0;
  v19 = _Block_copy(aBlock);
  v20 = [v18 initWithBuilder_];
  _Block_release(v19);

  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  a9[1] = v20;
  a9[2] = 49;
  a9[3] = a2;
  *(a9 + v17[10]) = a3;
  a9[4] = a1;
  sub_25F5AB47C(a5, a9 + v17[9]);
  v21 = a9 + v17[12];
  *v21 = v32;
  v21[1] = v15;
  *(v21 + 1) = v16;
  v22 = (a9 + v17[11]);
  *v22 = a6;
  v22[1] = a7;
  v23 = a8;
  if (a10)
  {
    v23 = 30.0;
  }

  *(a9 + v17[16]) = v23;
  v37 = &type metadata for MailFeatureFlags;
  v38 = sub_25F5B6DD0();
  v24 = sub_25F5E3834();
  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  v16 = a5;
  if ((v24 & 1) == 0)
  {
    return sub_25F57C148(a5, &unk_27FD9E500, &unk_25F5EA410);
  }

  if (qword_27FD9D8B0 != -1)
  {
    goto LABEL_11;
  }

LABEL_6:
  v25 = sub_25F5E3FB4();
  __swift_project_value_buffer(v25, qword_27FD9EA20);
  v26 = sub_25F5E3F94();
  v27 = sub_25F5E4794();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_25F56A000, v26, v27, "Mail classC data access is enabled, checking if device unlocked since boot.", v28, 2u);
    MEMORY[0x25F8E3B70](v28, -1, -1);
  }

  v29 = MKBDeviceUnlockedSinceBoot();
  result = sub_25F57C148(v16, &unk_27FD9E500, &unk_25F5EA410);
  *(a9 + v31) = v29 == 1;
  return result;
}

uint64_t type metadata accessor for MessageExtractor()
{
  result = qword_27FD9E5F8;
  if (!qword_27FD9E5F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F5BB070()
{
  v1 = v0[18];
  v2 = *(v1 + *(type metadata accessor for MessageExtractor() + 60));
  if (v2 == 2)
  {
    v3 = [*v1 messageRepository];
    v0[19] = v3;
    v0[2] = v0;
    v0[7] = v0 + 20;
    v0[3] = sub_25F5BB1F8;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E510, &qword_25F5EA4B0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_25F5BBE00;
    v0[13] = &block_descriptor_3;
    v0[14] = v4;
    [v3 isDataAccessible_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v5 = v0[1];

    return v5(v2 & 1);
  }
}

uint64_t sub_25F5BB1F8()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25F5BB2D8, 0, 0);
}

uint64_t sub_25F5BB2D8()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t filterBySender(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E518, &qword_25F5EA4B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v13 - v6;
  sub_25F5E3C04();
  v8 = (a1 + *(type metadata accessor for ExtractedMessage(0) + 20));
  v9 = *v8;
  v10 = v8[1];
  v13[1] = sub_25F5E4464();
  v13[2] = v11;
  sub_25F5C0EB0();
  sub_25F5AB824(&qword_27FD9E528, &qword_27FD9E518, &qword_25F5EA4B8);
  LOBYTE(a1) = sub_25F5E4354();

  (*(v3 + 8))(v7, v2);
  return a1 & 1;
}

char *convertSingleMessagesToConversations(_:)(uint64_t a1)
{
  v2 = type metadata accessor for ExtractedMessage(0);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (!v9)
  {
    return MEMORY[0x277D84F90];
  }

  v10 = v5[9];
  v29 = &v8[v5[8]];
  v30 = v10;
  v11 = v5[11];
  v27 = *(v6 + 80);
  v28 = v11;
  v26 = (v27 + 32) & ~v27;
  v12 = a1 + v26;
  v13 = *(v6 + 72);
  v14 = MEMORY[0x277D84F90];
  v24 = xmmword_25F5E5EE0;
  v25 = v13;
  do
  {
    sub_25F5B6EB8(v12, v8, type metadata accessor for ExtractedMessage);
    v31 = *&v8[v30];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E530, &qword_25F5EA4C0);
    v15 = v26;
    v16 = swift_allocObject();
    *(v16 + 16) = v24;
    sub_25F5B6EB8(v8, v16 + v15, type metadata accessor for ExtractedMessage);
    v17 = *v29;
    v18 = *(v29 + 1);
    v19 = *&v8[v28];

    sub_25F5C2F24(v8, type metadata accessor for ExtractedMessage);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_25F57875C(0, *(v14 + 2) + 1, 1, v14);
    }

    v21 = *(v14 + 2);
    v20 = *(v14 + 3);
    if (v21 >= v20 >> 1)
    {
      v14 = sub_25F57875C((v20 > 1), v21 + 1, 1, v14);
    }

    *(v14 + 2) = v21 + 1;
    v22 = &v14[48 * v21];
    *(v22 + 4) = v31;
    *(v22 + 5) = 1;
    *(v22 + 6) = v16;
    *(v22 + 7) = v17;
    *(v22 + 8) = v18;
    *(v22 + 9) = v19;
    v12 += v25;
    --v9;
  }

  while (v9);
  return v14;
}

uint64_t groupAndSortMessages(_:)(uint64_t a1)
{
  v2 = type metadata accessor for ExtractedMessage(0);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v12 = &v39 - v11;
  v13 = *(a1 + 16);
  if (!v13)
  {
    v14 = 0;
    v17 = MEMORY[0x277D84F98];
LABEL_21:
    v37 = sub_25F5BA970(v17);

    sub_25F5C0F04(v14);
    return v37;
  }

  v14 = 0;
  v42 = *(v9 + 36);
  v40 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = a1 + v40;
  v16 = *(v10 + 72);
  v17 = MEMORY[0x277D84F98];
  v41 = v7;
  while (1)
  {
    sub_25F5B6EB8(v15, v12, type metadata accessor for ExtractedMessage);
    v18 = *&v12[v42];
    sub_25F5C2E68(v12, v7, type metadata accessor for ExtractedMessage);
    sub_25F5C0F04(v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v17;
    v21 = sub_25F57A9CC(v18);
    v22 = v17[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      break;
    }

    v25 = v20;
    if (v17[3] >= v24)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v20)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_25F57B0F8();
        v17 = v43;
        if (v25)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      sub_25F579B14(v24, isUniquelyReferenced_nonNull_native);
      v17 = v43;
      v26 = sub_25F57A9CC(v18);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_24;
      }

      v21 = v26;
      if (v25)
      {
        goto LABEL_12;
      }
    }

    v17[(v21 >> 6) + 8] |= 1 << v21;
    *(v17[6] + 8 * v21) = v18;
    *(v17[7] + 8 * v21) = MEMORY[0x277D84F90];
    v28 = v17[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_23;
    }

    v17[2] = v30;
LABEL_12:
    v31 = v17[7];
    v32 = *(v31 + 8 * v21);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    *(v31 + 8 * v21) = v32;
    if ((v33 & 1) == 0)
    {
      v32 = sub_25F57887C(0, v32[2] + 1, 1, v32);
      *(v31 + 8 * v21) = v32;
    }

    v35 = v32[2];
    v34 = v32[3];
    if (v35 >= v34 >> 1)
    {
      v32 = sub_25F57887C(v34 > 1, v35 + 1, 1, v32);
      *(v31 + 8 * v21) = v32;
    }

    v32[2] = v35 + 1;
    v36 = v32 + v40 + v35 * v16;
    v7 = v41;
    sub_25F5C2E68(v41, v36, type metadata accessor for ExtractedMessage);
    v15 += v16;
    v14 = sub_25F5C0E04;
    if (!--v13)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_25F5E4BC4();
  __break(1u);
  return result;
}