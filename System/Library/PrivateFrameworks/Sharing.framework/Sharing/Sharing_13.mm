uint64_t _s7Sharing13SFAirDropSendO7FailureO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A99762C0();
  *&v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38[-2] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SFAirDropSend.Failure();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v38[-2] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v38[-2] - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v38[-2] - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3FA8, &qword_1A999F478);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v38[-2] - v21;
  v23 = &v38[-2] + *(v20 + 56) - v21;
  sub_1A98878C8(a1, &v38[-2] - v21);
  sub_1A98878C8(a2, v23);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1A98878C8(v22, v15);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_31;
      }

      v33 = *v15 ^ *v23;
      sub_1A988792C(v22);
      v32 = v33 ^ 1;
      return v32 & 1;
    case 2u:
      sub_1A98878C8(v22, v12);
      v24 = *(v12 + 1);
      v25 = *(v12 + 4);
      v26 = *(v12 + 6);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v27 = *(v12 + 5);
        v28 = *v23;
        v29 = *(v23 + 1);
        v30 = *(v23 + 6);
        v42[0] = *v12;
        v42[1] = v24;
        v43 = *(v12 + 1);
        v44 = v25;
        v45 = v27;
        v46 = v26;
        v38[0] = v28;
        v38[1] = v29;
        v31 = *(v23 + 1);
        v37 = *(v23 + 2);
        v39 = v31;
        v40 = v37;
        v41 = v30;
        v32 = _s7Sharing12CodableErrorV2eeoiySbAC_ACtFZ_0(v42, v38);

        goto LABEL_34;
      }

      goto LABEL_31;
    case 3u:
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    case 4u:
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    case 5u:
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    case 6u:
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    case 7u:
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    case 8u:
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_29;
      }

      goto LABEL_31;
    case 9u:
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_31;
      }

LABEL_29:
      sub_1A988792C(v22);
      v32 = 1;
      break;
    default:
      sub_1A98878C8(v22, v17);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v37 + 8))(v17, v4);
LABEL_31:
        sub_1A988C658(v22);
        v32 = 0;
      }

      else
      {
        v35 = v37;
        (*(v37 + 32))(v7, v23, v4);
        v32 = _s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0();
        v36 = *(v35 + 8);
        v36(v7, v4);
        v36(v17, v4);
LABEL_34:
        sub_1A988792C(v22);
      }

      break;
  }

  return v32 & 1;
}

unint64_t sub_1A988AD94()
{
  result = qword_1EB3B3D98;
  if (!qword_1EB3B3D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3D98);
  }

  return result;
}

unint64_t sub_1A988ADE8()
{
  result = qword_1EB3B3DA0;
  if (!qword_1EB3B3DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3DA0);
  }

  return result;
}

unint64_t sub_1A988AE3C()
{
  result = qword_1EB3B3DA8;
  if (!qword_1EB3B3DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3DA8);
  }

  return result;
}

unint64_t sub_1A988AE90()
{
  result = qword_1EB3B3DB0;
  if (!qword_1EB3B3DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3DB0);
  }

  return result;
}

unint64_t sub_1A988AEE4()
{
  result = qword_1EB3B3DB8;
  if (!qword_1EB3B3DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3DB8);
  }

  return result;
}

unint64_t sub_1A988AF38()
{
  result = qword_1EB3B3DC0;
  if (!qword_1EB3B3DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3DC0);
  }

  return result;
}

unint64_t sub_1A988AF8C()
{
  result = qword_1EB3B3DC8;
  if (!qword_1EB3B3DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3DC8);
  }

  return result;
}

unint64_t sub_1A988AFE0()
{
  result = qword_1EB3B3DD0;
  if (!qword_1EB3B3DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3DD0);
  }

  return result;
}

unint64_t sub_1A988B034()
{
  result = qword_1EB3B3DD8;
  if (!qword_1EB3B3DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3DD8);
  }

  return result;
}

unint64_t sub_1A988B088()
{
  result = qword_1EB3B3DE0;
  if (!qword_1EB3B3DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3DE0);
  }

  return result;
}

unint64_t sub_1A988B0DC()
{
  result = qword_1EB3B3DE8;
  if (!qword_1EB3B3DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3DE8);
  }

  return result;
}

unint64_t sub_1A988B130()
{
  result = qword_1EB3B3DF0;
  if (!qword_1EB3B3DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3DF0);
  }

  return result;
}

unint64_t sub_1A988B184()
{
  result = qword_1EB3B3DF8;
  if (!qword_1EB3B3DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3DF8);
  }

  return result;
}

unint64_t sub_1A988B1D8()
{
  result = qword_1EB3B3E00;
  if (!qword_1EB3B3E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3E00);
  }

  return result;
}

unint64_t sub_1A988B22C()
{
  result = qword_1EB3B3E08;
  if (!qword_1EB3B3E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3E08);
  }

  return result;
}

unint64_t sub_1A988B280()
{
  result = qword_1EB3B3E10;
  if (!qword_1EB3B3E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3E10);
  }

  return result;
}

unint64_t sub_1A988B2D4()
{
  result = qword_1EB3B3E90;
  if (!qword_1EB3B3E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3E90);
  }

  return result;
}

uint64_t sub_1A988B328()
{
  result = sub_1A99762C0();
  if (v1 <= 0x3F)
  {
    result = sub_1A988B3A4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A988B3A4()
{
  result = qword_1EB3AB6A0;
  if (!qword_1EB3AB6A0)
  {
    result = MEMORY[0x1E69E6370];
    atomic_store(MEMORY[0x1E69E6370], &qword_1EB3AB6A0);
  }

  return result;
}

uint64_t _s7FailureO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s7FailureO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1A988B608()
{
  result = qword_1EB3B3E98;
  if (!qword_1EB3B3E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3E98);
  }

  return result;
}

unint64_t sub_1A988B660()
{
  result = qword_1EB3B3EA0;
  if (!qword_1EB3B3EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3EA0);
  }

  return result;
}

unint64_t sub_1A988B6B8()
{
  result = qword_1EB3B3EA8;
  if (!qword_1EB3B3EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3EA8);
  }

  return result;
}

unint64_t sub_1A988B710()
{
  result = qword_1EB3B3EB0;
  if (!qword_1EB3B3EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3EB0);
  }

  return result;
}

unint64_t sub_1A988B768()
{
  result = qword_1EB3B3EB8;
  if (!qword_1EB3B3EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3EB8);
  }

  return result;
}

unint64_t sub_1A988B7C0()
{
  result = qword_1EB3B3EC0;
  if (!qword_1EB3B3EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3EC0);
  }

  return result;
}

unint64_t sub_1A988B818()
{
  result = qword_1EB3B3EC8;
  if (!qword_1EB3B3EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3EC8);
  }

  return result;
}

unint64_t sub_1A988B870()
{
  result = qword_1EB3B3ED0;
  if (!qword_1EB3B3ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3ED0);
  }

  return result;
}

unint64_t sub_1A988B8C8()
{
  result = qword_1EB3B3ED8;
  if (!qword_1EB3B3ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3ED8);
  }

  return result;
}

unint64_t sub_1A988B920()
{
  result = qword_1EB3B3EE0;
  if (!qword_1EB3B3EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3EE0);
  }

  return result;
}

unint64_t sub_1A988B978()
{
  result = qword_1EB3B3EE8;
  if (!qword_1EB3B3EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3EE8);
  }

  return result;
}

unint64_t sub_1A988B9D0()
{
  result = qword_1EB3B3EF0;
  if (!qword_1EB3B3EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3EF0);
  }

  return result;
}

unint64_t sub_1A988BA28()
{
  result = qword_1EB3B3EF8;
  if (!qword_1EB3B3EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3EF8);
  }

  return result;
}

unint64_t sub_1A988BA80()
{
  result = qword_1EB3B3F00;
  if (!qword_1EB3B3F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F00);
  }

  return result;
}

unint64_t sub_1A988BAD8()
{
  result = qword_1EB3B3F08;
  if (!qword_1EB3B3F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F08);
  }

  return result;
}

unint64_t sub_1A988BB30()
{
  result = qword_1EB3B3F10;
  if (!qword_1EB3B3F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F10);
  }

  return result;
}

unint64_t sub_1A988BB88()
{
  result = qword_1EB3B3F18;
  if (!qword_1EB3B3F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F18);
  }

  return result;
}

unint64_t sub_1A988BBE0()
{
  result = qword_1EB3B3F20;
  if (!qword_1EB3B3F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F20);
  }

  return result;
}

unint64_t sub_1A988BC38()
{
  result = qword_1EB3B3F28;
  if (!qword_1EB3B3F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F28);
  }

  return result;
}

unint64_t sub_1A988BC90()
{
  result = qword_1EB3B3F30;
  if (!qword_1EB3B3F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F30);
  }

  return result;
}

unint64_t sub_1A988BCE8()
{
  result = qword_1EB3B3F38;
  if (!qword_1EB3B3F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F38);
  }

  return result;
}

unint64_t sub_1A988BD40()
{
  result = qword_1EB3B3F40;
  if (!qword_1EB3B3F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F40);
  }

  return result;
}

unint64_t sub_1A988BD98()
{
  result = qword_1EB3B3F48;
  if (!qword_1EB3B3F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F48);
  }

  return result;
}

unint64_t sub_1A988BDF0()
{
  result = qword_1EB3B3F50;
  if (!qword_1EB3B3F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F50);
  }

  return result;
}

unint64_t sub_1A988BE48()
{
  result = qword_1EB3B3F58;
  if (!qword_1EB3B3F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F58);
  }

  return result;
}

unint64_t sub_1A988BEA0()
{
  result = qword_1EB3B3F60;
  if (!qword_1EB3B3F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F60);
  }

  return result;
}

unint64_t sub_1A988BEF8()
{
  result = qword_1EB3B3F68;
  if (!qword_1EB3B3F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F68);
  }

  return result;
}

unint64_t sub_1A988BF50()
{
  result = qword_1EB3B3F70;
  if (!qword_1EB3B3F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F70);
  }

  return result;
}

unint64_t sub_1A988BFA8()
{
  result = qword_1EB3B3F78;
  if (!qword_1EB3B3F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F78);
  }

  return result;
}

unint64_t sub_1A988C000()
{
  result = qword_1EB3B3F80;
  if (!qword_1EB3B3F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F80);
  }

  return result;
}

unint64_t sub_1A988C058()
{
  result = qword_1EB3B3F88;
  if (!qword_1EB3B3F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F88);
  }

  return result;
}

unint64_t sub_1A988C0B0()
{
  result = qword_1EB3B3F90;
  if (!qword_1EB3B3F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F90);
  }

  return result;
}

unint64_t sub_1A988C108()
{
  result = qword_1EB3B3F98;
  if (!qword_1EB3B3F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F98);
  }

  return result;
}

unint64_t sub_1A988C160()
{
  result = qword_1EB3B3FA0;
  if (!qword_1EB3B3FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3FA0);
  }

  return result;
}

uint64_t sub_1A988C1B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000010 && 0x80000001A99E5E70 == a2;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A99E5E50 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x45676E697373696DLL && a2 == 0xEF746E696F70646ELL || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4665766C6F736572 && a2 == 0xEE006572756C6961 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6575716552646162 && a2 == 0xEA00000000007473 || (sub_1A99777E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F70736552646162 && a2 == 0xEB0000000065736ELL || (sub_1A99777E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A99E5E30 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x72456D6165727473 && a2 == 0xEB00000000726F72 || (sub_1A99777E0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A99E5E10 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A99E5DF0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7245726576726573 && a2 == 0xEB00000000726F72 || (sub_1A99777E0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A99E5DD0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7463657078656E75 && a2 == 0xEA00000000006465)
  {

    return 13;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A988C658(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3FA8, &qword_1A999F478);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A988C6EC()
{
  if (*v0)
  {
    result = 0x654B63696C627570;
  }

  else
  {
    result = 7041641;
  }

  *v0;
  return result;
}

uint64_t sub_1A988C724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7041641 && a2 == 0xE300000000000000;
  if (v5 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xE900000000000079)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A988C808(uint64_t a1)
{
  v2 = sub_1A988CC20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A988C844(uint64_t a1)
{
  v2 = sub_1A988CC20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A988C880(uint64_t a1)
{
  v2 = sub_1A988CCC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A988C8BC(uint64_t a1)
{
  v2 = sub_1A988CCC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A988C8F8(uint64_t a1)
{
  v2 = sub_1A988CC74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A988C934(uint64_t a1)
{
  v2 = sub_1A988CC74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t KeyDataFormatStyle.Style.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3FB0, &qword_1A999F480);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3FB8, &qword_1A999F488);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3FC0, &qword_1A999F490);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A988CC20();
  sub_1A9977AA0();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1A988CC74();
    v18 = v22;
    sub_1A9977640();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1A988CCC8();
    sub_1A9977640();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_1A988CC20()
{
  result = qword_1EB3B3FC8;
  if (!qword_1EB3B3FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3FC8);
  }

  return result;
}

unint64_t sub_1A988CC74()
{
  result = qword_1EB3B3FD0;
  if (!qword_1EB3B3FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3FD0);
  }

  return result;
}

unint64_t sub_1A988CCC8()
{
  result = qword_1EB3B3FD8;
  if (!qword_1EB3B3FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3FD8);
  }

  return result;
}

uint64_t KeyDataFormatStyle.Style.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3FE0, &qword_1A999F498);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3FE8, &qword_1A999F4A0);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3FF0, &unk_1A999F4A8);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A988CC20();
  v16 = v36;
  sub_1A9977A70();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1A9977620();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1A97B2970();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1A9977300();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630) + 48);
      *v26 = &type metadata for KeyDataFormatStyle.Style;
      sub_1A9977540();
      sub_1A99772F0();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1A988CC74();
        sub_1A9977530();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1A988CCC8();
        sub_1A9977530();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v17);
}

uint64_t KeyDataFormatStyle.format(_:)(uint64_t a1, unint64_t a2)
{
  if ((*v2 & 1) == 0)
  {
    v22 = 60;
    v23 = 0xE100000000000000;
    sub_1A97B40FC(a1, a2);
    sub_1A9874500(3, a1, a2, &v20);
    v11 = v20;
    v12 = v21;
    v13 = sub_1A9976040();
    MEMORY[0x1AC5895B0](v13);

    sub_1A97B43C4(v11, v12);
    v14 = 62;
    v15 = 0xE100000000000000;
LABEL_14:
    MEMORY[0x1AC5895B0](v14, v15);
    return v22;
  }

  v22 = 60;
  v23 = 0xE100000000000000;
  sub_1A97B40FC(a1, a2);
  sub_1A9874500(3, a1, a2, &v20);
  v5 = v20;
  v6 = v21;
  v7 = sub_1A9976040();
  MEMORY[0x1AC5895B0](v7);

  sub_1A97B43C4(v5, v6);
  result = MEMORY[0x1AC5895B0](8254, 0xE200000000000000);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
      v10 = 0;
      goto LABEL_13;
    }

    v17 = *(a1 + 16);
    v16 = *(a1 + 24);
    v18 = __OFSUB__(v16, v17);
    v10 = v16 - v17;
    if (!v18)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v10 = BYTE6(a2);
LABEL_13:
    v20 = v10;
    v19 = sub_1A9977730();
    MEMORY[0x1AC5895B0](v19);

    v14 = 16928;
    v15 = 0xE200000000000000;
    goto LABEL_14;
  }

  LODWORD(v10) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v10 = v10;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A988D3F0(uint64_t a1)
{
  v2 = sub_1A988D5B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A988D42C(uint64_t a1)
{
  v2 = sub_1A988D5B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t KeyDataFormatStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3FF8, &qword_1A999F4B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A988D5B4();
  sub_1A9977AA0();
  v12 = v8;
  sub_1A988D608();
  sub_1A99776E0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1A988D5B4()
{
  result = qword_1EB3B4000;
  if (!qword_1EB3B4000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4000);
  }

  return result;
}

unint64_t sub_1A988D608()
{
  result = qword_1EB3B4008;
  if (!qword_1EB3B4008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4008);
  }

  return result;
}

uint64_t KeyDataFormatStyle.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4010, &qword_1A999F4C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A988D5B4();
  sub_1A9977A70();
  if (!v2)
  {
    sub_1A988D828();
    sub_1A99775F0();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1A988D7C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = KeyDataFormatStyle.format(_:)(*a1, *(a1 + 8));
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_1A988D828()
{
  result = qword_1EB3B4018;
  if (!qword_1EB3B4018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4018);
  }

  return result;
}

unint64_t sub_1A988D880()
{
  result = qword_1EB3B4020;
  if (!qword_1EB3B4020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4020);
  }

  return result;
}

unint64_t sub_1A988D8D8()
{
  result = qword_1EB3B4028;
  if (!qword_1EB3B4028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4028);
  }

  return result;
}

unint64_t sub_1A988D930()
{
  result = qword_1EB3B4030;
  if (!qword_1EB3B4030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4030);
  }

  return result;
}

unint64_t sub_1A988D988()
{
  result = qword_1EB3B4038;
  if (!qword_1EB3B4038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4038);
  }

  return result;
}

unint64_t sub_1A988D9E0()
{
  result = qword_1EB3B4040;
  if (!qword_1EB3B4040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4040);
  }

  return result;
}

unint64_t sub_1A988DA98()
{
  result = qword_1EB3B4048;
  if (!qword_1EB3B4048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4048);
  }

  return result;
}

unint64_t sub_1A988DAF0()
{
  result = qword_1EB3B4050;
  if (!qword_1EB3B4050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4050);
  }

  return result;
}

unint64_t sub_1A988DB48()
{
  result = qword_1EB3B4058;
  if (!qword_1EB3B4058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4058);
  }

  return result;
}

unint64_t sub_1A988DBA0()
{
  result = qword_1EB3B4060;
  if (!qword_1EB3B4060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4060);
  }

  return result;
}

unint64_t sub_1A988DBF8()
{
  result = qword_1EB3B4068;
  if (!qword_1EB3B4068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4068);
  }

  return result;
}

unint64_t sub_1A988DC50()
{
  result = qword_1EB3B4070;
  if (!qword_1EB3B4070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4070);
  }

  return result;
}

unint64_t sub_1A988DCA8()
{
  result = qword_1EB3B4078;
  if (!qword_1EB3B4078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4078);
  }

  return result;
}

unint64_t sub_1A988DD00()
{
  result = qword_1EB3B4080;
  if (!qword_1EB3B4080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4080);
  }

  return result;
}

unint64_t sub_1A988DD58()
{
  result = qword_1EB3B4088;
  if (!qword_1EB3B4088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4088);
  }

  return result;
}

unint64_t sub_1A988DDB0()
{
  result = qword_1EB3B4090;
  if (!qword_1EB3B4090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4090);
  }

  return result;
}

uint64_t sub_1A988DE10(objc_class *a1, uint64_t a2, uint64_t a3)
{
  v75 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v63 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v59 - v9;
  v10 = sub_1A9977460();
  v66 = *(v10 - 8);
  v67 = v10;
  v11 = *(v66 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v60 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v62 = &v59 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v68 = &v59 - v17;
  v18 = sub_1A99762C0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v59 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v59 - v22;
  v70 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v24 = objc_allocWithZone(v70);

  sub_1A99762B0();
  v25 = *(v19 + 16);
  v25(&v24[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v23, v18);
  v26 = &v24[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v26 = v75;
  *(v26 + 1) = a2;
  v64 = a2;

  *&v24[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v24[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a3;
  v69 = a3;
  if (a3)
  {
    v27 = sub_1A9976C00();
    (*(*(v27 - 8) + 56))(v68, 1, 1, v27);
    v28 = v59;
    v25(v59, v23, v18);
    v29 = (*(v19 + 80) + 40) & ~*(v19 + 80);
    v30 = (v20 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    *(v31 + 2) = 0;
    *(v31 + 3) = 0;
    v32 = v69;
    *(v31 + 4) = v69;
    (*(v19 + 32))(&v31[v29], v28, v18);
    v33 = &v31[v30];
    v34 = v75;
    v35 = v64;
    *v33 = v75;
    *(v33 + 1) = v35;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v68, &unk_1A9999B40, v31);

    (*(v19 + 8))(v23, v18);
    v36 = v34;
  }

  else
  {
    (*(v19 + 8))(v23, v18);
    v35 = v64;

    v32 = v69;
    v36 = v75;
  }

  v74.receiver = v24;
  v74.super_class = v70;
  v37 = [(objc_class *)&v74 init];

  v75 = type metadata accessor for _SFXPCBlockContainer();
  objc_allocWithZone(v75);

  v68 = sub_1A97BE9E8(v36, v35, v32);

  v38 = sub_1A9975E80();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  sub_1A9975E70();
  v41 = v65;
  sub_1A9977450();
  v42 = v66;
  v43 = v67;
  v44 = *(v66 + 48);
  result = v44(v41, 1, v67);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v46 = *(v42 + 32);
  v47 = v62;
  v46(v62, v41, v43);
  v73 = v70;
  v72[0] = v37;
  v70 = v37;
  v48 = sub_1A9975E60();
  sub_1A97DCC4C(v72, v47);
  v48(v71, 0);
  v49 = v63;
  sub_1A9977450();
  result = v44(v49, 1, v43);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v50 = v60;
  v46(v60, v49, v43);
  v73 = v75;
  v72[0] = v68;
  v51 = v68;
  v52 = sub_1A9975E60();
  sub_1A97DCC4C(v72, v50);
  v52(v71, 0);
  sub_1A984B090();
  v53 = v61;
  v54 = sub_1A9975E50();

  if (v53)
  {
  }

  else
  {

    v55 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    v56 = v70;
    swift_beginAccess();
    if (!*(*(v56 + v55) + 16))
    {
    }

    v57 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
    swift_beginAccess();
    if (!*(*&v51[v57] + 16))
    {
      v58 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
      swift_beginAccess();
      if (!*(*&v51[v58] + 16))
      {
      }
    }
  }

  return v54;
}

uint64_t sub_1A988E588(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v64 = a3;
  v78 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v66 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v60 - v10;
  v11 = sub_1A9977460();
  v70 = *(v11 - 8);
  v71 = v11;
  v12 = v70[8];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v62 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v60 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v72 = (&v60 - v18);
  v19 = sub_1A99762C0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v61 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v60 - v23;
  v67 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v25 = objc_allocWithZone(v67);

  sub_1A99762B0();
  v26 = *(v20 + 16);
  v26(&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v24, v19);
  v27 = &v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v27 = v78;
  *(v27 + 1) = a2;
  v68 = a2;

  *&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a4;
  v73 = a4;
  if (a4)
  {
    v28 = sub_1A9976C00();
    (*(*(v28 - 8) + 56))(v72, 1, 1, v28);
    v29 = v61;
    v26(v61, v24, v19);
    v30 = (*(v20 + 80) + 40) & ~*(v20 + 80);
    v31 = (v21 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    *(v32 + 2) = 0;
    *(v32 + 3) = 0;
    v33 = v73;
    *(v32 + 4) = v73;
    (*(v20 + 32))(&v32[v30], v29, v19);
    v34 = &v32[v31];
    v35 = v68;
    *v34 = v78;
    *(v34 + 1) = v35;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v72, &unk_1A999FDE0, v32);

    (*(v20 + 8))(v24, v19);
  }

  else
  {
    (*(v20 + 8))(v24, v19);
    v35 = v68;

    v33 = v73;
  }

  v36 = v67;
  v77.receiver = v25;
  v77.super_class = v67;
  v37 = objc_msgSendSuper2(&v77, sel_init);

  v72 = type metadata accessor for _SFXPCBlockContainer();
  objc_allocWithZone(v72);

  v68 = sub_1A97BE9E8(v78, v35, v33);

  v38 = sub_1A9975E80();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v78 = sub_1A9975E70();
  v41 = v69;
  sub_1A9977450();
  v42 = v70;
  v43 = v71;
  v44 = v70[6];
  result = v44(v41, 1, v71);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v46 = v42[4];
  v47 = v65;
  v46(v65, v41, v43);
  v76 = v36;
  v75[0] = v37;
  v70 = v37;
  v48 = sub_1A9975E60();
  sub_1A97DCC4C(v75, v47);
  v48(v74, 0);
  v49 = v66;
  sub_1A9977450();
  result = v44(v49, 1, v43);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v50 = v62;
  v46(v62, v49, v43);
  v76 = v72;
  v75[0] = v68;
  v51 = v68;
  v52 = sub_1A9975E60();
  sub_1A97DCC4C(v75, v50);
  v52(v74, 0);
  type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters(0);
  sub_1A98A8780(&qword_1EB3B2E50, type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters);
  v53 = v64;
  v54 = v63;
  v55 = sub_1A9975E50();
  sub_1A98A87C8(v53, type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters);

  if (v54)
  {
  }

  else
  {

    v56 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    v57 = v70;
    swift_beginAccess();
    if (!*(*&v57[v56] + 16))
    {
    }

    v58 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
    swift_beginAccess();
    if (!*(*&v51[v58] + 16))
    {
      v59 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
      swift_beginAccess();
      if (!*(*&v51[v59] + 16))
      {
      }
    }
  }

  return v55;
}

uint64_t sub_1A988ED64(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v64 = a3;
  v78 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v66 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v60 - v10;
  v11 = sub_1A9977460();
  v70 = *(v11 - 8);
  v71 = v11;
  v12 = v70[8];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v62 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v60 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v72 = (&v60 - v18);
  v19 = sub_1A99762C0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v61 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v60 - v23;
  v67 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v25 = objc_allocWithZone(v67);

  sub_1A99762B0();
  v26 = *(v20 + 16);
  v26(&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v24, v19);
  v27 = &v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v27 = v78;
  *(v27 + 1) = a2;
  v68 = a2;

  *&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a4;
  v73 = a4;
  if (a4)
  {
    v28 = sub_1A9976C00();
    (*(*(v28 - 8) + 56))(v72, 1, 1, v28);
    v29 = v61;
    v26(v61, v24, v19);
    v30 = (*(v20 + 80) + 40) & ~*(v20 + 80);
    v31 = (v21 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    *(v32 + 2) = 0;
    *(v32 + 3) = 0;
    v33 = v73;
    *(v32 + 4) = v73;
    (*(v20 + 32))(&v32[v30], v29, v19);
    v34 = &v32[v31];
    v35 = v68;
    *v34 = v78;
    *(v34 + 1) = v35;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v72, &unk_1A999FDD8, v32);

    (*(v20 + 8))(v24, v19);
  }

  else
  {
    (*(v20 + 8))(v24, v19);
    v35 = v68;

    v33 = v73;
  }

  v36 = v67;
  v77.receiver = v25;
  v77.super_class = v67;
  v37 = objc_msgSendSuper2(&v77, sel_init);

  v72 = type metadata accessor for _SFXPCBlockContainer();
  objc_allocWithZone(v72);

  v68 = sub_1A97BE9E8(v78, v35, v33);

  v38 = sub_1A9975E80();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v78 = sub_1A9975E70();
  v41 = v69;
  sub_1A9977450();
  v42 = v70;
  v43 = v71;
  v44 = v70[6];
  result = v44(v41, 1, v71);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v46 = v42[4];
  v47 = v65;
  v46(v65, v41, v43);
  v76 = v36;
  v75[0] = v37;
  v70 = v37;
  v48 = sub_1A9975E60();
  sub_1A97DCC4C(v75, v47);
  v48(v74, 0);
  v49 = v66;
  sub_1A9977450();
  result = v44(v49, 1, v43);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v50 = v62;
  v46(v62, v49, v43);
  v76 = v72;
  v75[0] = v68;
  v51 = v68;
  v52 = sub_1A9975E60();
  sub_1A97DCC4C(v75, v50);
  v52(v74, 0);
  type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters(0);
  sub_1A98A8780(&qword_1EB3B2E60, type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters);
  v53 = v64;
  v54 = v63;
  v55 = sub_1A9975E50();
  sub_1A98A87C8(v53, type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters);

  if (v54)
  {
  }

  else
  {

    v56 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    v57 = v70;
    swift_beginAccess();
    if (!*(*&v57[v56] + 16))
    {
    }

    v58 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
    swift_beginAccess();
    if (!*(*&v51[v58] + 16))
    {
      v59 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
      swift_beginAccess();
      if (!*(*&v51[v59] + 16))
      {
      }
    }
  }

  return v55;
}

uint64_t sub_1A988F540(objc_class *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v81 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v67 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v63 - v13;
  v14 = sub_1A9977460();
  v70 = *(v14 - 8);
  v71 = v14;
  v15 = *(v70 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v64 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v66 = &v63 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v72 = &v63 - v21;
  v22 = sub_1A99762C0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v63 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v63 - v26;
  v79 = a3;
  v80 = a4;
  v74 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v28 = objc_allocWithZone(v74);

  sub_1A99762B0();
  v29 = *(v23 + 16);
  v29(&v28[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v27, v22);
  v30 = &v28[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v30 = v81;
  *(v30 + 1) = a2;
  v68 = a2;

  *&v28[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v28[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a5;
  v73 = a5;
  if (a5)
  {
    v31 = sub_1A9976C00();
    (*(*(v31 - 8) + 56))(v72, 1, 1, v31);
    v32 = v63;
    v29(v63, v27, v22);
    v33 = (*(v23 + 80) + 40) & ~*(v23 + 80);
    v34 = (v24 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    *(v35 + 2) = 0;
    *(v35 + 3) = 0;
    v36 = v73;
    *(v35 + 4) = v73;
    (*(v23 + 32))(&v35[v33], v32, v22);
    v37 = &v35[v34];
    v38 = v81;
    v39 = v68;
    *v37 = v81;
    *(v37 + 1) = v39;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v72, &unk_1A999FDD0, v35);

    (*(v23 + 8))(v27, v22);
    v40 = v38;
  }

  else
  {
    (*(v23 + 8))(v27, v22);
    v39 = v68;

    v36 = v73;
    v40 = v81;
  }

  v78.receiver = v28;
  v78.super_class = v74;
  v41 = [(objc_class *)&v78 init];

  v81 = type metadata accessor for _SFXPCBlockContainer();
  objc_allocWithZone(v81);

  v72 = sub_1A97BE9E8(v40, v39, v36);

  v42 = sub_1A9975E80();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  sub_1A9975E70();
  v45 = v69;
  sub_1A9977450();
  v46 = v70;
  v47 = v71;
  v48 = *(v70 + 48);
  result = v48(v45, 1, v71);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v50 = *(v46 + 32);
  v51 = v66;
  v50(v66, v45, v47);
  v77 = v74;
  v76[0] = v41;
  v74 = v41;
  v52 = sub_1A9975E60();
  sub_1A97DCC4C(v76, v51);
  v52(v75, 0);
  v53 = v67;
  sub_1A9977450();
  result = v48(v53, 1, v47);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v54 = v64;
  v50(v64, v53, v47);
  v77 = v81;
  v76[0] = v72;
  v55 = v72;
  v56 = sub_1A9975E60();
  sub_1A97DCC4C(v76, v54);
  v56(v75, 0);
  sub_1A97B4370();
  v57 = v65;
  v58 = sub_1A9975E50();
  sub_1A97B43C4(v79, v80);

  if (v57)
  {
  }

  else
  {

    v59 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    v60 = v74;
    swift_beginAccess();
    if (!*(*(v60 + v59) + 16))
    {
    }

    v61 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
    swift_beginAccess();
    if (!*(*&v55[v61] + 16))
    {
      v62 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
      swift_beginAccess();
      if (!*(*&v55[v62] + 16))
      {
      }
    }
  }

  return v58;
}

uint64_t sub_1A988FCE4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v64 = a3;
  v78 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v66 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v60 - v10;
  v11 = sub_1A9977460();
  v70 = *(v11 - 8);
  v71 = v11;
  v12 = v70[8];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v62 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v60 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v72 = (&v60 - v18);
  v19 = sub_1A99762C0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v61 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v60 - v23;
  v67 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v25 = objc_allocWithZone(v67);

  sub_1A99762B0();
  v26 = *(v20 + 16);
  v26(&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v24, v19);
  v27 = &v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v27 = v78;
  *(v27 + 1) = a2;
  v68 = a2;

  *&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a4;
  v73 = a4;
  if (a4)
  {
    v28 = sub_1A9976C00();
    (*(*(v28 - 8) + 56))(v72, 1, 1, v28);
    v29 = v61;
    v26(v61, v24, v19);
    v30 = (*(v20 + 80) + 40) & ~*(v20 + 80);
    v31 = (v21 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    *(v32 + 2) = 0;
    *(v32 + 3) = 0;
    v33 = v73;
    *(v32 + 4) = v73;
    (*(v20 + 32))(&v32[v30], v29, v19);
    v34 = &v32[v31];
    v35 = v68;
    *v34 = v78;
    *(v34 + 1) = v35;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v72, &unk_1A999FD78, v32);

    (*(v20 + 8))(v24, v19);
  }

  else
  {
    (*(v20 + 8))(v24, v19);
    v35 = v68;

    v33 = v73;
  }

  v36 = v67;
  v77.receiver = v25;
  v77.super_class = v67;
  v37 = objc_msgSendSuper2(&v77, sel_init);

  v72 = type metadata accessor for _SFXPCBlockContainer();
  objc_allocWithZone(v72);

  v68 = sub_1A97BE9E8(v78, v35, v33);

  v38 = sub_1A9975E80();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v78 = sub_1A9975E70();
  v41 = v69;
  sub_1A9977450();
  v42 = v70;
  v43 = v71;
  v44 = v70[6];
  result = v44(v41, 1, v71);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v46 = v42[4];
  v47 = v65;
  v46(v65, v41, v43);
  v76 = v36;
  v75[0] = v37;
  v70 = v37;
  v48 = sub_1A9975E60();
  sub_1A97DCC4C(v75, v47);
  v48(v74, 0);
  v49 = v66;
  sub_1A9977450();
  result = v44(v49, 1, v43);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v50 = v62;
  v46(v62, v49, v43);
  v76 = v72;
  v75[0] = v68;
  v51 = v68;
  v52 = sub_1A9975E60();
  sub_1A97DCC4C(v75, v50);
  v52(v74, 0);
  type metadata accessor for SFAirDropSend.Request();
  sub_1A98A8780(&qword_1EB3B41C8, type metadata accessor for SFAirDropSend.Request);
  v53 = v64;
  v54 = v63;
  v55 = sub_1A9975E50();
  sub_1A98A87C8(v53, type metadata accessor for SFAirDropSend.Request);

  if (v54)
  {
  }

  else
  {

    v56 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    v57 = v70;
    swift_beginAccess();
    if (!*(*&v57[v56] + 16))
    {
    }

    v58 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
    swift_beginAccess();
    if (!*(*&v51[v58] + 16))
    {
      v59 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
      swift_beginAccess();
      if (!*(*&v51[v59] + 16))
      {
      }
    }
  }

  return v55;
}

uint64_t sub_1A98904C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v64 = a3;
  v78 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v66 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v60 - v10;
  v11 = sub_1A9977460();
  v70 = *(v11 - 8);
  v71 = v11;
  v12 = v70[8];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v62 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v60 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v72 = (&v60 - v18);
  v19 = sub_1A99762C0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v61 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v60 - v23;
  v67 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v25 = objc_allocWithZone(v67);

  sub_1A99762B0();
  v26 = *(v20 + 16);
  v26(&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v24, v19);
  v27 = &v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v27 = v78;
  *(v27 + 1) = a2;
  v68 = a2;

  *&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a4;
  v73 = a4;
  if (a4)
  {
    v28 = sub_1A9976C00();
    (*(*(v28 - 8) + 56))(v72, 1, 1, v28);
    v29 = v61;
    v26(v61, v24, v19);
    v30 = (*(v20 + 80) + 40) & ~*(v20 + 80);
    v31 = (v21 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    *(v32 + 2) = 0;
    *(v32 + 3) = 0;
    v33 = v73;
    *(v32 + 4) = v73;
    (*(v20 + 32))(&v32[v30], v29, v19);
    v34 = &v32[v31];
    v35 = v68;
    *v34 = v78;
    *(v34 + 1) = v35;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v72, &unk_1A999FD68, v32);

    (*(v20 + 8))(v24, v19);
  }

  else
  {
    (*(v20 + 8))(v24, v19);
    v35 = v68;

    v33 = v73;
  }

  v36 = v67;
  v77.receiver = v25;
  v77.super_class = v67;
  v37 = objc_msgSendSuper2(&v77, sel_init);

  v72 = type metadata accessor for _SFXPCBlockContainer();
  objc_allocWithZone(v72);

  v68 = sub_1A97BE9E8(v78, v35, v33);

  v38 = sub_1A9975E80();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v78 = sub_1A9975E70();
  v41 = v69;
  sub_1A9977450();
  v42 = v70;
  v43 = v71;
  v44 = v70[6];
  result = v44(v41, 1, v71);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v46 = v42[4];
  v47 = v65;
  v46(v65, v41, v43);
  v76 = v36;
  v75[0] = v37;
  v70 = v37;
  v48 = sub_1A9975E60();
  sub_1A97DCC4C(v75, v47);
  v48(v74, 0);
  v49 = v66;
  sub_1A9977450();
  result = v44(v49, 1, v43);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v50 = v62;
  v46(v62, v49, v43);
  v76 = v72;
  v75[0] = v68;
  v51 = v68;
  v52 = sub_1A9975E60();
  sub_1A97DCC4C(v75, v50);
  v52(v74, 0);
  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_1A98A8780(&qword_1EB3B34F0, type metadata accessor for SFAirDrop.TransferIdentifier);
  v53 = v64;
  v54 = v63;
  v55 = sub_1A9975E50();
  sub_1A98A87C8(v53, type metadata accessor for SFAirDrop.TransferIdentifier);

  if (v54)
  {
  }

  else
  {

    v56 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    v57 = v70;
    swift_beginAccess();
    if (!*(*&v57[v56] + 16))
    {
    }

    v58 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
    swift_beginAccess();
    if (!*(*&v51[v58] + 16))
    {
      v59 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
      swift_beginAccess();
      if (!*(*&v51[v59] + 16))
      {
      }
    }
  }

  return v55;
}

uint64_t sub_1A9890C9C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v64 = a3;
  v78 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v66 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v60 - v10;
  v11 = sub_1A9977460();
  v70 = *(v11 - 8);
  v71 = v11;
  v12 = v70[8];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v62 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v60 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v72 = (&v60 - v18);
  v19 = sub_1A99762C0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v61 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v60 - v23;
  v67 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v25 = objc_allocWithZone(v67);

  sub_1A99762B0();
  v26 = *(v20 + 16);
  v26(&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v24, v19);
  v27 = &v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v27 = v78;
  *(v27 + 1) = a2;
  v68 = a2;

  *&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a4;
  v73 = a4;
  if (a4)
  {
    v28 = sub_1A9976C00();
    (*(*(v28 - 8) + 56))(v72, 1, 1, v28);
    v29 = v61;
    v26(v61, v24, v19);
    v30 = (*(v20 + 80) + 40) & ~*(v20 + 80);
    v31 = (v21 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    *(v32 + 2) = 0;
    *(v32 + 3) = 0;
    v33 = v73;
    *(v32 + 4) = v73;
    (*(v20 + 32))(&v32[v30], v29, v19);
    v34 = &v32[v31];
    v35 = v68;
    *v34 = v78;
    *(v34 + 1) = v35;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v72, &unk_1A999FD60, v32);

    (*(v20 + 8))(v24, v19);
  }

  else
  {
    (*(v20 + 8))(v24, v19);
    v35 = v68;

    v33 = v73;
  }

  v36 = v67;
  v77.receiver = v25;
  v77.super_class = v67;
  v37 = objc_msgSendSuper2(&v77, sel_init);

  v72 = type metadata accessor for _SFXPCBlockContainer();
  objc_allocWithZone(v72);

  v68 = sub_1A97BE9E8(v78, v35, v33);

  v38 = sub_1A9975E80();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v78 = sub_1A9975E70();
  v41 = v69;
  sub_1A9977450();
  v42 = v70;
  v43 = v71;
  v44 = v70[6];
  result = v44(v41, 1, v71);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v46 = v42[4];
  v47 = v65;
  v46(v65, v41, v43);
  v76 = v36;
  v75[0] = v37;
  v70 = v37;
  v48 = sub_1A9975E60();
  sub_1A97DCC4C(v75, v47);
  v48(v74, 0);
  v49 = v66;
  sub_1A9977450();
  result = v44(v49, 1, v43);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v50 = v62;
  v46(v62, v49, v43);
  v76 = v72;
  v75[0] = v68;
  v51 = v68;
  v52 = sub_1A9975E60();
  sub_1A97DCC4C(v75, v50);
  v52(v74, 0);
  type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters(0);
  sub_1A98A8780(&qword_1EB3B41B8, type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters);
  v53 = v64;
  v54 = v63;
  v55 = sub_1A9975E50();
  sub_1A98A87C8(v53, type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters);

  if (v54)
  {
  }

  else
  {

    v56 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    v57 = v70;
    swift_beginAccess();
    if (!*(*&v57[v56] + 16))
    {
    }

    v58 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
    swift_beginAccess();
    if (!*(*&v51[v58] + 16))
    {
      v59 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
      swift_beginAccess();
      if (!*(*&v51[v59] + 16))
      {
      }
    }
  }

  return v55;
}

uint64_t sub_1A9891478(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v64 = a3;
  v78 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v66 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v60 - v10;
  v11 = sub_1A9977460();
  v70 = *(v11 - 8);
  v71 = v11;
  v12 = v70[8];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v62 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v60 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v72 = (&v60 - v18);
  v19 = sub_1A99762C0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v61 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v60 - v23;
  v67 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v25 = objc_allocWithZone(v67);

  sub_1A99762B0();
  v26 = *(v20 + 16);
  v26(&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v24, v19);
  v27 = &v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v27 = v78;
  *(v27 + 1) = a2;
  v68 = a2;

  *&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a4;
  v73 = a4;
  if (a4)
  {
    v28 = sub_1A9976C00();
    (*(*(v28 - 8) + 56))(v72, 1, 1, v28);
    v29 = v61;
    v26(v61, v24, v19);
    v30 = (*(v20 + 80) + 40) & ~*(v20 + 80);
    v31 = (v21 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    *(v32 + 2) = 0;
    *(v32 + 3) = 0;
    v33 = v73;
    *(v32 + 4) = v73;
    (*(v20 + 32))(&v32[v30], v29, v19);
    v34 = &v32[v31];
    v35 = v68;
    *v34 = v78;
    *(v34 + 1) = v35;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v72, &unk_1A999FD50, v32);

    (*(v20 + 8))(v24, v19);
  }

  else
  {
    (*(v20 + 8))(v24, v19);
    v35 = v68;

    v33 = v73;
  }

  v36 = v67;
  v77.receiver = v25;
  v77.super_class = v67;
  v37 = objc_msgSendSuper2(&v77, sel_init);

  v72 = type metadata accessor for _SFXPCBlockContainer();
  objc_allocWithZone(v72);

  v68 = sub_1A97BE9E8(v78, v35, v33);

  v38 = sub_1A9975E80();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v78 = sub_1A9975E70();
  v41 = v69;
  sub_1A9977450();
  v42 = v70;
  v43 = v71;
  v44 = v70[6];
  result = v44(v41, 1, v71);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v46 = v42[4];
  v47 = v65;
  v46(v65, v41, v43);
  v76 = v36;
  v75[0] = v37;
  v70 = v37;
  v48 = sub_1A9975E60();
  sub_1A97DCC4C(v75, v47);
  v48(v74, 0);
  v49 = v66;
  sub_1A9977450();
  result = v44(v49, 1, v43);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v50 = v62;
  v46(v62, v49, v43);
  v76 = v72;
  v75[0] = v68;
  v51 = v68;
  v52 = sub_1A9975E60();
  sub_1A97DCC4C(v75, v50);
  v52(v74, 0);
  type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request(0);
  sub_1A98A8780(&qword_1EB3ABB68, type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request);
  v53 = v64;
  v54 = v63;
  v55 = sub_1A9975E50();
  sub_1A98A87C8(v53, type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request);

  if (v54)
  {
  }

  else
  {

    v56 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    v57 = v70;
    swift_beginAccess();
    if (!*(*&v57[v56] + 16))
    {
    }

    v58 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
    swift_beginAccess();
    if (!*(*&v51[v58] + 16))
    {
      v59 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
      swift_beginAccess();
      if (!*(*&v51[v59] + 16))
      {
      }
    }
  }

  return v55;
}

uint64_t sub_1A9891C54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v81 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v67 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v61 - v13;
  v14 = sub_1A9977460();
  v70 = *(v14 - 8);
  v71 = v14;
  v15 = *(v70 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v63 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v66 = &v61 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v72 = (&v61 - v21);
  v22 = sub_1A99762C0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v62 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v61 - v26;
  v79 = a3;
  v80 = a4;
  v65 = a4;
  v74 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v28 = objc_allocWithZone(v74);

  sub_1A99762B0();
  v29 = *(v23 + 16);
  v29(&v28[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v27, v22);
  v30 = &v28[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v30 = v81;
  *(v30 + 1) = a2;
  v68 = a2;

  *&v28[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v28[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a5;
  v73 = a5;
  if (a5)
  {
    v31 = sub_1A9976C00();
    (*(*(v31 - 8) + 56))(v72, 1, 1, v31);
    v32 = v62;
    v29(v62, v27, v22);
    v33 = (*(v23 + 80) + 40) & ~*(v23 + 80);
    v34 = (v24 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    *(v35 + 2) = 0;
    *(v35 + 3) = 0;
    v36 = v73;
    *(v35 + 4) = v73;
    (*(v23 + 32))(&v35[v33], v32, v22);
    v37 = &v35[v34];
    v38 = v68;
    *v37 = v81;
    *(v37 + 1) = v38;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v72, &unk_1A999FD48, v35);

    (*(v23 + 8))(v27, v22);
  }

  else
  {
    (*(v23 + 8))(v27, v22);
    v38 = v68;

    v36 = v73;
  }

  v78.receiver = v28;
  v78.super_class = v74;
  v39 = objc_msgSendSuper2(&v78, sel_init);

  v72 = type metadata accessor for _SFXPCBlockContainer();
  objc_allocWithZone(v72);

  v81 = sub_1A97BE9E8(v81, v38, v36);

  v40 = sub_1A9975E80();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  sub_1A9975E70();
  v43 = v69;
  sub_1A9977450();
  v44 = v70;
  v45 = v71;
  v46 = *(v70 + 48);
  result = v46(v43, 1, v71);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v48 = *(v44 + 32);
  v49 = v66;
  v48(v66, v43, v45);
  v77 = v74;
  v76[0] = v39;
  v74 = v39;
  v50 = sub_1A9975E60();
  sub_1A97DCC4C(v76, v49);
  v50(v75, 0);
  v51 = v67;
  sub_1A9977450();
  result = v46(v51, 1, v45);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v52 = v63;
  v48(v63, v51, v45);
  v77 = v72;
  v76[0] = v81;
  v53 = v81;
  v54 = sub_1A9975E60();
  sub_1A97DCC4C(v76, v52);
  v54(v75, 0);
  v55 = v64;
  v56 = sub_1A9975E50();

  if (v55)
  {
  }

  else
  {

    v57 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    v58 = v74;
    swift_beginAccess();
    if (!*(*(v58 + v57) + 16))
    {
    }

    v59 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
    swift_beginAccess();
    if (!*(*&v53[v59] + 16))
    {
      v60 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
      swift_beginAccess();
      if (!*(*&v53[v60] + 16))
      {
      }
    }
  }

  return v56;
}

uint64_t sub_1A9892408(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v64 = a3;
  v78 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v66 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v60 - v10;
  v11 = sub_1A9977460();
  v70 = *(v11 - 8);
  v71 = v11;
  v12 = v70[8];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v62 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v60 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v72 = (&v60 - v18);
  v19 = sub_1A99762C0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v61 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v60 - v23;
  v67 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v25 = objc_allocWithZone(v67);

  sub_1A99762B0();
  v26 = *(v20 + 16);
  v26(&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v24, v19);
  v27 = &v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v27 = v78;
  *(v27 + 1) = a2;
  v68 = a2;

  *&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a4;
  v73 = a4;
  if (a4)
  {
    v28 = sub_1A9976C00();
    (*(*(v28 - 8) + 56))(v72, 1, 1, v28);
    v29 = v61;
    v26(v61, v24, v19);
    v30 = (*(v20 + 80) + 40) & ~*(v20 + 80);
    v31 = (v21 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    *(v32 + 2) = 0;
    *(v32 + 3) = 0;
    v33 = v73;
    *(v32 + 4) = v73;
    (*(v20 + 32))(&v32[v30], v29, v19);
    v34 = &v32[v31];
    v35 = v68;
    *v34 = v78;
    *(v34 + 1) = v35;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v72, &unk_1A999FD40, v32);

    (*(v20 + 8))(v24, v19);
  }

  else
  {
    (*(v20 + 8))(v24, v19);
    v35 = v68;

    v33 = v73;
  }

  v36 = v67;
  v77.receiver = v25;
  v77.super_class = v67;
  v37 = objc_msgSendSuper2(&v77, sel_init);

  v72 = type metadata accessor for _SFXPCBlockContainer();
  objc_allocWithZone(v72);

  v68 = sub_1A97BE9E8(v78, v35, v33);

  v38 = sub_1A9975E80();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v78 = sub_1A9975E70();
  v41 = v69;
  sub_1A9977450();
  v42 = v70;
  v43 = v71;
  v44 = v70[6];
  result = v44(v41, 1, v71);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v46 = v42[4];
  v47 = v65;
  v46(v65, v41, v43);
  v76 = v36;
  v75[0] = v37;
  v70 = v37;
  v48 = sub_1A9975E60();
  sub_1A97DCC4C(v75, v47);
  v48(v74, 0);
  v49 = v66;
  sub_1A9977450();
  result = v44(v49, 1, v43);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v50 = v62;
  v46(v62, v49, v43);
  v76 = v72;
  v75[0] = v68;
  v51 = v68;
  v52 = sub_1A9975E60();
  sub_1A97DCC4C(v75, v50);
  v52(v74, 0);
  type metadata accessor for SFAirDrop.NearbySharingAssertionRequest(0);
  sub_1A98A8780(&qword_1EB3B41A8, type metadata accessor for SFAirDrop.NearbySharingAssertionRequest);
  v53 = v64;
  v54 = v63;
  v55 = sub_1A9975E50();
  sub_1A98A87C8(v53, type metadata accessor for SFAirDrop.NearbySharingAssertionRequest);

  if (v54)
  {
  }

  else
  {

    v56 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    v57 = v70;
    swift_beginAccess();
    if (!*(*&v57[v56] + 16))
    {
    }

    v58 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
    swift_beginAccess();
    if (!*(*&v51[v58] + 16))
    {
      v59 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
      swift_beginAccess();
      if (!*(*&v51[v59] + 16))
      {
      }
    }
  }

  return v55;
}

uint64_t sub_1A9892BE4(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4)
{
  v64 = a3;
  v77 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v66 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v68 = v60 - v10;
  v72 = sub_1A9977460();
  v69 = *(v72 - 8);
  v11 = *(v69 + 64);
  v12 = MEMORY[0x1EEE9AC00](v72);
  v61 = v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v65 = v60 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v70 = (v60 - v17);
  v18 = sub_1A99762C0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v60[0] = v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v60 - v22;
  v71 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v24 = objc_allocWithZone(v71);

  sub_1A99762B0();
  v25 = *(v19 + 16);
  v25(&v24[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v23, v18);
  v26 = &v24[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v26 = v77;
  *(v26 + 1) = a2;
  v67 = a2;

  *&v24[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v24[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a4;
  v62 = v18;
  if (a4)
  {
    v27 = sub_1A9976C00();
    (*(*(v27 - 8) + 56))(v70, 1, 1, v27);
    v28 = v60[0];
    v25(v60[0], v23, v18);
    v29 = (*(v19 + 80) + 40) & ~*(v19 + 80);
    v30 = (v20 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    *(v31 + 2) = 0;
    *(v31 + 3) = 0;
    *(v31 + 4) = a4;
    (*(v19 + 32))(&v31[v29], v28, v18);
    v32 = &v31[v30];
    v33 = v67;
    *v32 = v77;
    *(v32 + 1) = v33;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v70, &unk_1A999FD08, v31);

    v70 = *(v19 + 8);
    (v70)(v23, v18);
  }

  else
  {
    v70 = *(v19 + 8);
    (v70)(v23, v18);
    v33 = v67;
  }

  v60[1] = v19;
  v76.receiver = v24;
  v76.super_class = v71;
  v34 = objc_msgSendSuper2(&v76, sel_init);

  v67 = type metadata accessor for _SFXPCBlockContainer();
  objc_allocWithZone(v67);

  v60[0] = sub_1A97BE9E8(v77, v33, a4);
  v77 = a4;

  v35 = sub_1A9975E80();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  sub_1A9975E70();
  v38 = v68;
  sub_1A9977450();
  v39 = v69;
  v40 = *(v69 + 48);
  v41 = v72;
  result = v40(v38, 1, v72);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v43 = *(v39 + 32);
  v44 = v65;
  v43(v65, v38, v41);
  v75 = v71;
  v74[0] = v34;
  v71 = v34;
  v45 = sub_1A9975E60();
  sub_1A97DCC4C(v74, v44);
  v45(v73, 0);
  v46 = v72;
  v47 = v66;
  sub_1A9977450();
  result = v40(v47, 1, v46);
  if (result == 1)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v48 = v61;
  v43(v61, v47, v46);
  v75 = v67;
  v74[0] = v60[0];
  v49 = v60[0];
  v50 = sub_1A9975E60();
  sub_1A97DCC4C(v74, v48);
  v50(v73, 0);
  sub_1A98A8780(&unk_1EB3ACFC0, MEMORY[0x1E69695A8]);
  v51 = v64;
  v52 = v62;
  v53 = v63;
  v54 = sub_1A9975E50();
  if (v53)
  {
    (v70)(v51, v52);
  }

  else
  {
    v55 = v54;
    (v70)(v51, v52);

    v56 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    v57 = v71;
    swift_beginAccess();
    if (!*(*(v57 + v56) + 16))
    {
    }

    v58 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
    swift_beginAccess();
    if (!*(*&v49[v58] + 16))
    {
      v59 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
      swift_beginAccess();
      if (!*(*&v49[v59] + 16))
      {
      }
    }

    return v55;
  }
}

uint64_t sub_1A9893418(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v64 = a3;
  v78 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v66 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v60 - v10;
  v11 = sub_1A9977460();
  v70 = *(v11 - 8);
  v71 = v11;
  v12 = v70[8];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v62 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v60 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v72 = (&v60 - v18);
  v19 = sub_1A99762C0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v61 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v60 - v23;
  v67 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v25 = objc_allocWithZone(v67);

  sub_1A99762B0();
  v26 = *(v20 + 16);
  v26(&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v24, v19);
  v27 = &v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v27 = v78;
  *(v27 + 1) = a2;
  v68 = a2;

  *&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a4;
  v73 = a4;
  if (a4)
  {
    v28 = sub_1A9976C00();
    (*(*(v28 - 8) + 56))(v72, 1, 1, v28);
    v29 = v61;
    v26(v61, v24, v19);
    v30 = (*(v20 + 80) + 40) & ~*(v20 + 80);
    v31 = (v21 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    *(v32 + 2) = 0;
    *(v32 + 3) = 0;
    v33 = v73;
    *(v32 + 4) = v73;
    (*(v20 + 32))(&v32[v30], v29, v19);
    v34 = &v32[v31];
    v35 = v68;
    *v34 = v78;
    *(v34 + 1) = v35;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v72, &unk_1A999FD38, v32);

    (*(v20 + 8))(v24, v19);
  }

  else
  {
    (*(v20 + 8))(v24, v19);
    v35 = v68;

    v33 = v73;
  }

  v36 = v67;
  v77.receiver = v25;
  v77.super_class = v67;
  v37 = objc_msgSendSuper2(&v77, sel_init);

  v72 = type metadata accessor for _SFXPCBlockContainer();
  objc_allocWithZone(v72);

  v68 = sub_1A97BE9E8(v78, v35, v33);

  v38 = sub_1A9975E80();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v78 = sub_1A9975E70();
  v41 = v69;
  sub_1A9977450();
  v42 = v70;
  v43 = v71;
  v44 = v70[6];
  result = v44(v41, 1, v71);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v46 = v42[4];
  v47 = v65;
  v46(v65, v41, v43);
  v76 = v36;
  v75[0] = v37;
  v70 = v37;
  v48 = sub_1A9975E60();
  sub_1A97DCC4C(v75, v47);
  v48(v74, 0);
  v49 = v66;
  sub_1A9977450();
  result = v44(v49, 1, v43);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v50 = v62;
  v46(v62, v49, v43);
  v76 = v72;
  v75[0] = v68;
  v51 = v68;
  v52 = sub_1A9975E60();
  sub_1A97DCC4C(v75, v50);
  v52(v74, 0);
  type metadata accessor for SFAirDrop.NearbySharingInteraction(0);
  sub_1A98A8780(&qword_1EB3B4198, type metadata accessor for SFAirDrop.NearbySharingInteraction);
  v53 = v64;
  v54 = v63;
  v55 = sub_1A9975E50();
  sub_1A98A87C8(v53, type metadata accessor for SFAirDrop.NearbySharingInteraction);

  if (v54)
  {
  }

  else
  {

    v56 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    v57 = v70;
    swift_beginAccess();
    if (!*(*&v57[v56] + 16))
    {
    }

    v58 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
    swift_beginAccess();
    if (!*(*&v51[v58] + 16))
    {
      v59 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
      swift_beginAccess();
      if (!*(*&v51[v59] + 16))
      {
      }
    }
  }

  return v55;
}

uint64_t sub_1A9893BF4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v64 = a3;
  v78 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v66 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v60 - v10;
  v11 = sub_1A9977460();
  v70 = *(v11 - 8);
  v71 = v11;
  v12 = v70[8];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v62 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v60 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v72 = (&v60 - v18);
  v19 = sub_1A99762C0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v61 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v60 - v23;
  v67 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v25 = objc_allocWithZone(v67);

  sub_1A99762B0();
  v26 = *(v20 + 16);
  v26(&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v24, v19);
  v27 = &v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v27 = v78;
  *(v27 + 1) = a2;
  v68 = a2;

  *&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a4;
  v73 = a4;
  if (a4)
  {
    v28 = sub_1A9976C00();
    (*(*(v28 - 8) + 56))(v72, 1, 1, v28);
    v29 = v61;
    v26(v61, v24, v19);
    v30 = (*(v20 + 80) + 40) & ~*(v20 + 80);
    v31 = (v21 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    *(v32 + 2) = 0;
    *(v32 + 3) = 0;
    v33 = v73;
    *(v32 + 4) = v73;
    (*(v20 + 32))(&v32[v30], v29, v19);
    v34 = &v32[v31];
    v35 = v68;
    *v34 = v78;
    *(v34 + 1) = v35;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v72, &unk_1A999FD28, v32);

    (*(v20 + 8))(v24, v19);
  }

  else
  {
    (*(v20 + 8))(v24, v19);
    v35 = v68;

    v33 = v73;
  }

  v36 = v67;
  v77.receiver = v25;
  v77.super_class = v67;
  v37 = objc_msgSendSuper2(&v77, sel_init);

  v72 = type metadata accessor for _SFXPCBlockContainer();
  objc_allocWithZone(v72);

  v68 = sub_1A97BE9E8(v78, v35, v33);

  v38 = sub_1A9975E80();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v78 = sub_1A9975E70();
  v41 = v69;
  sub_1A9977450();
  v42 = v70;
  v43 = v71;
  v44 = v70[6];
  result = v44(v41, 1, v71);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v46 = v42[4];
  v47 = v65;
  v46(v65, v41, v43);
  v76 = v36;
  v75[0] = v37;
  v70 = v37;
  v48 = sub_1A9975E60();
  sub_1A97DCC4C(v75, v47);
  v48(v74, 0);
  v49 = v66;
  sub_1A9977450();
  result = v44(v49, 1, v43);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v50 = v62;
  v46(v62, v49, v43);
  v76 = v72;
  v75[0] = v68;
  v51 = v68;
  v52 = sub_1A9975E60();
  sub_1A97DCC4C(v75, v50);
  v52(v74, 0);
  type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction(0);
  sub_1A98A8780(&qword_1EB3B4180, type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction);
  v53 = v64;
  v54 = v63;
  v55 = sub_1A9975E50();
  sub_1A98A87C8(v53, type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction);

  if (v54)
  {
  }

  else
  {

    v56 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    v57 = v70;
    swift_beginAccess();
    if (!*(*&v57[v56] + 16))
    {
    }

    v58 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
    swift_beginAccess();
    if (!*(*&v51[v58] + 16))
    {
      v59 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
      swift_beginAccess();
      if (!*(*&v51[v59] + 16))
      {
      }
    }
  }

  return v55;
}

uint64_t sub_1A98943D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v64 = a3;
  v78 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v66 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v60 - v10;
  v11 = sub_1A9977460();
  v70 = *(v11 - 8);
  v71 = v11;
  v12 = v70[8];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v62 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v60 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v72 = (&v60 - v18);
  v19 = sub_1A99762C0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v61 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v60 - v23;
  v67 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v25 = objc_allocWithZone(v67);

  sub_1A99762B0();
  v26 = *(v20 + 16);
  v26(&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v24, v19);
  v27 = &v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v27 = v78;
  *(v27 + 1) = a2;
  v68 = a2;

  *&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a4;
  v73 = a4;
  if (a4)
  {
    v28 = sub_1A9976C00();
    (*(*(v28 - 8) + 56))(v72, 1, 1, v28);
    v29 = v61;
    v26(v61, v24, v19);
    v30 = (*(v20 + 80) + 40) & ~*(v20 + 80);
    v31 = (v21 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    *(v32 + 2) = 0;
    *(v32 + 3) = 0;
    v33 = v73;
    *(v32 + 4) = v73;
    (*(v20 + 32))(&v32[v30], v29, v19);
    v34 = &v32[v31];
    v35 = v68;
    *v34 = v78;
    *(v34 + 1) = v35;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v72, &unk_1A999FD30, v32);

    (*(v20 + 8))(v24, v19);
  }

  else
  {
    (*(v20 + 8))(v24, v19);
    v35 = v68;

    v33 = v73;
  }

  v36 = v67;
  v77.receiver = v25;
  v77.super_class = v67;
  v37 = objc_msgSendSuper2(&v77, sel_init);

  v72 = type metadata accessor for _SFXPCBlockContainer();
  objc_allocWithZone(v72);

  v68 = sub_1A97BE9E8(v78, v35, v33);

  v38 = sub_1A9975E80();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v78 = sub_1A9975E70();
  v41 = v69;
  sub_1A9977450();
  v42 = v70;
  v43 = v71;
  v44 = v70[6];
  result = v44(v41, 1, v71);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v46 = v42[4];
  v47 = v65;
  v46(v65, v41, v43);
  v76 = v36;
  v75[0] = v37;
  v70 = v37;
  v48 = sub_1A9975E60();
  sub_1A97DCC4C(v75, v47);
  v48(v74, 0);
  v49 = v66;
  sub_1A9977450();
  result = v44(v49, 1, v43);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v50 = v62;
  v46(v62, v49, v43);
  v76 = v72;
  v75[0] = v68;
  v51 = v68;
  v52 = sub_1A9975E60();
  sub_1A97DCC4C(v75, v50);
  v52(v74, 0);
  type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate.Parameters(0);
  sub_1A98A8780(&qword_1EB3B4188, type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate.Parameters);
  v53 = v64;
  v54 = v63;
  v55 = sub_1A9975E50();
  sub_1A98A87C8(v53, type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate.Parameters);

  if (v54)
  {
  }

  else
  {

    v56 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    v57 = v70;
    swift_beginAccess();
    if (!*(*&v57[v56] + 16))
    {
    }

    v58 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
    swift_beginAccess();
    if (!*(*&v51[v58] + 16))
    {
      v59 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
      swift_beginAccess();
      if (!*(*&v51[v59] + 16))
      {
      }
    }
  }

  return v55;
}

uint64_t sub_1A9894BAC(objc_class *a1, uint64_t a2, char a3, uint64_t a4)
{
  v74 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v66 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v61 - v11;
  v12 = sub_1A9977460();
  v69 = *(v12 - 8);
  v70 = v12;
  v13 = *(v69 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v63 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v61 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v71 = &v61 - v19;
  v20 = sub_1A99762C0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v62 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v61 - v24;
  v79 = a3;
  v73 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v26 = objc_allocWithZone(v73);

  sub_1A99762B0();
  v27 = *(v21 + 16);
  v27(&v26[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v25, v20);
  v28 = &v26[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v28 = v74;
  *(v28 + 1) = a2;
  v67 = a2;

  *&v26[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v26[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a4;
  v72 = a4;
  if (a4)
  {
    v29 = sub_1A9976C00();
    (*(*(v29 - 8) + 56))(v71, 1, 1, v29);
    v30 = v62;
    v27(v62, v25, v20);
    v31 = (*(v21 + 80) + 40) & ~*(v21 + 80);
    v32 = (v22 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    *(v33 + 2) = 0;
    *(v33 + 3) = 0;
    v34 = v72;
    *(v33 + 4) = v72;
    (*(v21 + 32))(&v33[v31], v30, v20);
    v35 = &v33[v32];
    v36 = v74;
    v37 = v67;
    *v35 = v74;
    *(v35 + 1) = v37;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v71, &unk_1A999FD20, v33);

    (*(v21 + 8))(v25, v20);
    v38 = v36;
  }

  else
  {
    (*(v21 + 8))(v25, v20);
    v37 = v67;

    v34 = v72;
    v38 = v74;
  }

  v78.receiver = v26;
  v78.super_class = v73;
  v39 = [(objc_class *)&v78 init];

  v74 = type metadata accessor for _SFXPCBlockContainer();
  objc_allocWithZone(v74);

  v71 = sub_1A97BE9E8(v38, v37, v34);

  v40 = sub_1A9975E80();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  sub_1A9975E70();
  v43 = v68;
  sub_1A9977450();
  v44 = v69;
  v45 = v70;
  v46 = *(v69 + 48);
  result = v46(v43, 1, v70);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v48 = *(v44 + 32);
  v49 = v65;
  v48(v65, v43, v45);
  v77 = v73;
  v76[0] = v39;
  v73 = v39;
  v50 = sub_1A9975E60();
  sub_1A97DCC4C(v76, v49);
  v50(v75, 0);
  v51 = v66;
  sub_1A9977450();
  result = v46(v51, 1, v45);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v52 = v63;
  v48(v63, v51, v45);
  v77 = v74;
  v76[0] = v71;
  v53 = v71;
  v54 = sub_1A9975E60();
  sub_1A97DCC4C(v76, v52);
  v54(v75, 0);
  sub_1A98A7E54();
  v55 = v64;
  v56 = sub_1A9975E50();

  if (v55)
  {
  }

  else
  {

    v57 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    v58 = v73;
    swift_beginAccess();
    if (!*(*(v58 + v57) + 16))
    {
    }

    v59 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
    swift_beginAccess();
    if (!*(*&v53[v59] + 16))
    {
      v60 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
      swift_beginAccess();
      if (!*(*&v53[v60] + 16))
      {
      }
    }
  }

  return v56;
}

uint64_t sub_1A9895338(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v64 = a3;
  v78 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v66 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v60 - v10;
  v11 = sub_1A9977460();
  v70 = *(v11 - 8);
  v71 = v11;
  v12 = v70[8];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v62 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v60 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v72 = (&v60 - v18);
  v19 = sub_1A99762C0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v61 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v60 - v23;
  v67 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v25 = objc_allocWithZone(v67);

  sub_1A99762B0();
  v26 = *(v20 + 16);
  v26(&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v24, v19);
  v27 = &v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v27 = v78;
  *(v27 + 1) = a2;
  v68 = a2;

  *&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a4;
  v73 = a4;
  if (a4)
  {
    v28 = sub_1A9976C00();
    (*(*(v28 - 8) + 56))(v72, 1, 1, v28);
    v29 = v61;
    v26(v61, v24, v19);
    v30 = (*(v20 + 80) + 40) & ~*(v20 + 80);
    v31 = (v21 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    *(v32 + 2) = 0;
    *(v32 + 3) = 0;
    v33 = v73;
    *(v32 + 4) = v73;
    (*(v20 + 32))(&v32[v30], v29, v19);
    v34 = &v32[v31];
    v35 = v68;
    *v34 = v78;
    *(v34 + 1) = v35;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v72, &unk_1A999FD18, v32);

    (*(v20 + 8))(v24, v19);
  }

  else
  {
    (*(v20 + 8))(v24, v19);
    v35 = v68;

    v33 = v73;
  }

  v36 = v67;
  v77.receiver = v25;
  v77.super_class = v67;
  v37 = objc_msgSendSuper2(&v77, sel_init);

  v72 = type metadata accessor for _SFXPCBlockContainer();
  objc_allocWithZone(v72);

  v68 = sub_1A97BE9E8(v78, v35, v33);

  v38 = sub_1A9975E80();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v78 = sub_1A9975E70();
  v41 = v69;
  sub_1A9977450();
  v42 = v70;
  v43 = v71;
  v44 = v70[6];
  result = v44(v41, 1, v71);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v46 = v42[4];
  v47 = v65;
  v46(v65, v41, v43);
  v76 = v36;
  v75[0] = v37;
  v70 = v37;
  v48 = sub_1A9975E60();
  sub_1A97DCC4C(v75, v47);
  v48(v74, 0);
  v49 = v66;
  sub_1A9977450();
  result = v44(v49, 1, v43);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v50 = v62;
  v46(v62, v49, v43);
  v76 = v72;
  v75[0] = v68;
  v51 = v68;
  v52 = sub_1A9975E60();
  sub_1A97DCC4C(v75, v50);
  v52(v74, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A8, &unk_1A9999470);
  sub_1A97AF974(&qword_1EB3B1950, &qword_1EB3B17A8, &unk_1A9999470);
  v53 = v64;
  v54 = v63;
  v55 = sub_1A9975E50();
  sub_1A97B06FC(v53, &qword_1EB3B17A8, &unk_1A9999470);

  if (v54)
  {
  }

  else
  {

    v56 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    v57 = v70;
    swift_beginAccess();
    if (!*(*&v57[v56] + 16))
    {
    }

    v58 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
    swift_beginAccess();
    if (!*(*&v51[v58] + 16))
    {
      v59 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
      swift_beginAccess();
      if (!*(*&v51[v59] + 16))
      {
      }
    }
  }

  return v55;
}

uint64_t sub_1A9895B10(objc_class *a1, uint64_t a2, char a3, uint64_t a4)
{
  v74 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v66 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v61 - v11;
  v12 = sub_1A9977460();
  v69 = *(v12 - 8);
  v70 = v12;
  v13 = *(v69 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v63 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v61 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v71 = &v61 - v19;
  v20 = sub_1A99762C0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v62 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v61 - v24;
  v79 = a3;
  v73 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v26 = objc_allocWithZone(v73);

  sub_1A99762B0();
  v27 = *(v21 + 16);
  v27(&v26[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v25, v20);
  v28 = &v26[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v28 = v74;
  *(v28 + 1) = a2;
  v67 = a2;

  *&v26[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v26[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a4;
  v72 = a4;
  if (a4)
  {
    v29 = sub_1A9976C00();
    (*(*(v29 - 8) + 56))(v71, 1, 1, v29);
    v30 = v62;
    v27(v62, v25, v20);
    v31 = (*(v21 + 80) + 40) & ~*(v21 + 80);
    v32 = (v22 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    *(v33 + 2) = 0;
    *(v33 + 3) = 0;
    v34 = v72;
    *(v33 + 4) = v72;
    (*(v21 + 32))(&v33[v31], v30, v20);
    v35 = &v33[v32];
    v36 = v74;
    v37 = v67;
    *v35 = v74;
    *(v35 + 1) = v37;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v71, &unk_1A999FCF8, v33);

    (*(v21 + 8))(v25, v20);
    v38 = v36;
  }

  else
  {
    (*(v21 + 8))(v25, v20);
    v37 = v67;

    v34 = v72;
    v38 = v74;
  }

  v78.receiver = v26;
  v78.super_class = v73;
  v39 = [(objc_class *)&v78 init];

  v74 = type metadata accessor for _SFXPCBlockContainer();
  objc_allocWithZone(v74);

  v71 = sub_1A97BE9E8(v38, v37, v34);

  v40 = sub_1A9975E80();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  sub_1A9975E70();
  v43 = v68;
  sub_1A9977450();
  v44 = v69;
  v45 = v70;
  v46 = *(v69 + 48);
  result = v46(v43, 1, v70);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v48 = *(v44 + 32);
  v49 = v65;
  v48(v65, v43, v45);
  v77 = v73;
  v76[0] = v39;
  v73 = v39;
  v50 = sub_1A9975E60();
  sub_1A97DCC4C(v76, v49);
  v50(v75, 0);
  v51 = v66;
  sub_1A9977450();
  result = v46(v51, 1, v45);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v52 = v63;
  v48(v63, v51, v45);
  v77 = v74;
  v76[0] = v71;
  v53 = v71;
  v54 = sub_1A9975E60();
  sub_1A97DCC4C(v76, v52);
  v54(v75, 0);
  sub_1A98A7C80();
  v55 = v64;
  v56 = sub_1A9975E50();

  if (v55)
  {
  }

  else
  {

    v57 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    v58 = v73;
    swift_beginAccess();
    if (!*(*(v58 + v57) + 16))
    {
    }

    v59 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
    swift_beginAccess();
    if (!*(*&v53[v59] + 16))
    {
      v60 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
      swift_beginAccess();
      if (!*(*&v53[v60] + 16))
      {
      }
    }
  }

  return v56;
}

uint64_t sub_1A989629C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a2)
  {

    v11 = v8;
    v8 = sub_1A9976070();
    v13 = v12;
  }

  else
  {

    v13 = 0xF000000000000000;
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v14 = a5;
  v10(v8, v13, a3, a4, a5);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1A97D8688(v8, v13);
}

char *sub_1A9896380(uint64_t a1, unint64_t a2, void (*a3)(void *__return_ptr, void), uint64_t *a4)
{
  v5 = v4;
  v82 = a4;
  v83 = a3;
  v100 = *MEMORY[0x1E69E9840];
  v8 = sub_1A9976230();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v86 = &v80 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v87 = &v80 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v80 - v18;
  v90[1] = "syncXPC";
  v90[2] = 7;
  v91 = 2;
  v92 = 2;
  v93.opaque[0] = 0;
  v93.opaque[1] = 0;
  LODWORD(v99[0]) = 2;
  SF_os_activity.init(_:dso:options:)(&dword_1A9662000, "syncXPC", 2, v99, aBlock);
  if (aBlock[0])
  {
    os_activity_scope_enter(aBlock[0], &v93);
    swift_unknownObjectRelease();
  }

  v81 = v13;
  sub_1A9976220();
  if (qword_1EB3AD0E0 != -1)
  {
    swift_once();
  }

  v20 = sub_1A99764A0();
  __swift_project_value_buffer(v20, qword_1EB3AD0F0);

  v21 = sub_1A9976480();
  v22 = sub_1A9976F90();

  v23 = os_log_type_enabled(v21, v22);
  v89 = v8;
  v88 = v19;
  v85 = a1;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v24 = 136446210;
    *(v24 + 4) = sub_1A97AF148(a1, a2, aBlock);
    _os_log_impl(&dword_1A9662000, v21, v22, "syncXPC [%{public}s] START -- Client", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    MEMORY[0x1AC58D2C0](v25, -1, -1);
    MEMORY[0x1AC58D2C0](v24, -1, -1);
  }

  v26 = swift_allocObject();
  v26[2].isa = 0;
  p_isa = &v26[2].isa;
  if ([v5 respondsToSelector_])
  {
    aBlock[4] = sub_1A98A88F4;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989D634;
    aBlock[3] = &block_descriptor_338;
    v28 = _Block_copy(aBlock);
    swift_retain_n();
    v29 = [v5 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v28);
    sub_1A99771B0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v99, 0, sizeof(v99));
  }

  swift_beginAccess();
  v30 = *p_isa;
  if (*p_isa)
  {
    v96 = *p_isa;
    v31 = v30;
    v32 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    v33 = sub_1A99777A0();
    if (v33)
    {
      v34 = v33;
    }

    else
    {
      v34 = swift_allocError();
      *v39 = v30;
    }

    v38 = v89;
    swift_willThrow();

    sub_1A97B06FC(v99, &qword_1EB3B0BA0, &unk_1A99923D0);
LABEL_18:

    goto LABEL_19;
  }

  v35 = v84;
  v36 = sub_1A97B67BC(v99, 0, 0, 0xD000000000000051, 0x80000001A99E51F0, 194);
  v34 = v35;
  if (v35)
  {
LABEL_15:
    sub_1A97B06FC(v99, &qword_1EB3B0BA0, &unk_1A99923D0);

    v38 = v89;
LABEL_19:
    v40 = v87;
    v41 = v88;
    (*(v9 + 16))(v87, v88, v38);

    v42 = v34;
    disableAirDropTLS();
    disableAirDropTLS();
    v43 = sub_1A9976480();
    v44 = sub_1A9976F70();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = v40;
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v83 = v47;
      v84 = swift_slowAlloc();
      *&v99[0] = v84;
      *v46 = 136446978;
      *(v46 + 4) = sub_1A97AF148(v85, a2, v99);
      *(v46 + 12) = 2114;
      v48 = sub_1A9975F10();
      *(v46 + 14) = v48;
      *v47 = v48;
      *(v46 + 22) = 1040;
      *(v46 + 24) = 3;
      *(v46 + 28) = 2048;
      v49 = v44;
      v44 = v86;
      sub_1A9976220();
      sub_1A99760D0();
      v51 = v50;
      v52 = *(v9 + 8);
      v52(v44, v89);
      v52(v45, v89);
      *(v46 + 30) = v51;
      _os_log_impl(&dword_1A9662000, v43, v49, "syncXPC [%{public}s] FAIL -- Client {error: %{public}@, duration: %.*f}", v46, 0x26u);
      v53 = v83;
      sub_1A97B06FC(v83, &unk_1EB3B2A50, &unk_1A9999420);
      MEMORY[0x1AC58D2C0](v53, -1, -1);
      v54 = v84;
      __swift_destroy_boxed_opaque_existential_0Tm(v84);
      v38 = v89;
      MEMORY[0x1AC58D2C0](v54, -1, -1);
      v41 = v88;
      MEMORY[0x1AC58D2C0](v46, -1, -1);
    }

    else
    {

      v52 = *(v9 + 8);
      v52(v40, v38);
    }

    swift_willThrow();
    v52(v41, v38);
    os_activity_scope_leave(&v93);
    goto LABEL_23;
  }

  v90[0] = v36;
  v37 = v36;
  v83(&v96, v90);
  v84 = v37;
  v57 = *p_isa;
  if (*p_isa)
  {
    v95 = *p_isa;
    v58 = v57;
    v59 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    v60 = sub_1A99777A0();
    if (v60)
    {
      v34 = v60;
    }

    else
    {
      v34 = swift_allocError();
      *v78 = v57;
    }

    v38 = v89;
    swift_willThrow();

    swift_unknownObjectRelease();
    sub_1A97B06FC(v99, &qword_1EB3B0BA0, &unk_1A99923D0);
    sub_1A98A86C8(v96, v97, v98);
    goto LABEL_18;
  }

  v61 = v98;
  if (v98 == 255)
  {
    sub_1A97BCDE0();
    v34 = swift_allocError();
    *v79 = xmmword_1A999FA70;
    *(v79 + 16) = 0xD000000000000051;
    *(v79 + 24) = 0x80000001A99E51F0;
    *(v79 + 32) = 197;
    *(v79 + 80) = 0x2000000000000000;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  v63 = v96;
  v62 = v97;
  v64 = v89;
  (*(v9 + 16))(v81, v88, v89);

  v83 = v63;
  LODWORD(v87) = v61;
  sub_1A98A86A0(v63, v62, v61);
  disableAirDropTLS();
  disableAirDropTLS();
  v65 = sub_1A9976480();
  v66 = sub_1A9976F90();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v95 = v82;
    *v67 = 136446722;
    *(v67 + 4) = sub_1A97AF148(v85, a2, &v95);
    *(v67 + 12) = 1040;
    *(v67 + 14) = 3;
    *(v67 + 18) = 2048;
    v68 = v86;
    sub_1A9976220();
    v69 = v81;
    LODWORD(v85) = v66;
    sub_1A99760D0();
    v71 = v70;
    v72 = *(v9 + 8);
    v73 = v68;
    v74 = v89;
    v72(v73, v89);
    v72(v69, v74);
    *(v67 + 20) = v71;
    _os_log_impl(&dword_1A9662000, v65, v85, "syncXPC [%{public}s] END -- Client {duration: %.*f}", v67, 0x1Cu);
    v75 = v82;
    __swift_destroy_boxed_opaque_existential_0Tm(v82);
    MEMORY[0x1AC58D2C0](v75, -1, -1);
    MEMORY[0x1AC58D2C0](v67, -1, -1);
    swift_unknownObjectRelease();

    sub_1A97B06FC(v99, &qword_1EB3B0BA0, &unk_1A99923D0);
    v76 = v88;
    v77 = v74;
  }

  else
  {

    v72 = *(v9 + 8);
    v72(v81, v64);
    swift_unknownObjectRelease();
    sub_1A97B06FC(v99, &qword_1EB3B0BA0, &unk_1A99923D0);
    v76 = v88;
    v77 = v64;
  }

  v72(v76, v77);
  v44 = v83;
  sub_1A98A86C8(v83, v62, v87);

  os_activity_scope_leave(&v93);
LABEL_23:
  v55 = *MEMORY[0x1E69E9840];
  return v44;
}

char *sub_1A9896F48(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v79[1] = a4;
  v80 = a3;
  v96 = *MEMORY[0x1E69E9840];
  v8 = sub_1A9976230();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v83 = v79 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v84 = v79 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = v79 - v18;
  v87[1] = "syncXPC";
  v87[2] = 7;
  v88 = 2;
  v89 = 2;
  v90.opaque[0] = 0;
  v90.opaque[1] = 0;
  LODWORD(v95[0]) = 2;
  SF_os_activity.init(_:dso:options:)(&dword_1A9662000, "syncXPC", 2, v95, aBlock);
  if (aBlock[0])
  {
    os_activity_scope_enter(aBlock[0], &v90);
    swift_unknownObjectRelease();
  }

  v79[0] = v13;
  sub_1A9976220();
  if (qword_1EB3AD0E0 != -1)
  {
    swift_once();
  }

  v20 = sub_1A99764A0();
  __swift_project_value_buffer(v20, qword_1EB3AD0F0);

  v21 = sub_1A9976480();
  v22 = sub_1A9976F90();

  v23 = os_log_type_enabled(v21, v22);
  v86 = v8;
  v85 = v19;
  v82 = a1;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v24 = 136446210;
    *(v24 + 4) = sub_1A97AF148(a1, a2, aBlock);
    _os_log_impl(&dword_1A9662000, v21, v22, "syncXPC [%{public}s] START -- Client", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    MEMORY[0x1AC58D2C0](v25, -1, -1);
    MEMORY[0x1AC58D2C0](v24, -1, -1);
  }

  v26 = swift_allocObject();
  v26[2].isa = 0;
  p_isa = &v26[2].isa;
  if ([v5 respondsToSelector_])
  {
    aBlock[4] = sub_1A985537C;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989D634;
    aBlock[3] = &block_descriptor_232;
    v28 = _Block_copy(aBlock);
    swift_retain_n();
    v29 = [v5 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v28);
    sub_1A99771B0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v95, 0, sizeof(v95));
  }

  swift_beginAccess();
  v30 = *p_isa;
  if (*p_isa)
  {
    v93 = *p_isa;
    v31 = v30;
    v32 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    v33 = sub_1A99777A0();
    if (v33)
    {
      v34 = v33;
    }

    else
    {
      v34 = swift_allocError();
      *v39 = v30;
    }

    v38 = v86;
    swift_willThrow();

    sub_1A97B06FC(v95, &qword_1EB3B0BA0, &unk_1A99923D0);
LABEL_18:

    goto LABEL_19;
  }

  v35 = v81;
  v36 = sub_1A97B67BC(v95, 0, 0, 0xD000000000000051, 0x80000001A99E51F0, 194);
  v34 = v35;
  if (v35)
  {
LABEL_15:
    sub_1A97B06FC(v95, &qword_1EB3B0BA0, &unk_1A99923D0);

    v38 = v86;
LABEL_19:
    v40 = v84;
    v41 = v85;
    (*(v9 + 16))(v84, v85, v38);

    v42 = v34;
    disableAirDropTLS();
    disableAirDropTLS();
    v43 = sub_1A9976480();
    v44 = sub_1A9976F70();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = v40;
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v80 = v47;
      v81 = swift_slowAlloc();
      *&v95[0] = v81;
      *v46 = 136446978;
      *(v46 + 4) = sub_1A97AF148(v82, a2, v95);
      *(v46 + 12) = 2114;
      v48 = sub_1A9975F10();
      *(v46 + 14) = v48;
      *v47 = v48;
      *(v46 + 22) = 1040;
      *(v46 + 24) = 3;
      *(v46 + 28) = 2048;
      v49 = v44;
      v50 = v83;
      sub_1A9976220();
      sub_1A99760D0();
      v52 = v51;
      v53 = *(v9 + 8);
      v53(v50, v86);
      v53(v45, v86);
      *(v46 + 30) = v52;
      _os_log_impl(&dword_1A9662000, v43, v49, "syncXPC [%{public}s] FAIL -- Client {error: %{public}@, duration: %.*f}", v46, 0x26u);
      v54 = v80;
      sub_1A97B06FC(v80, &unk_1EB3B2A50, &unk_1A9999420);
      MEMORY[0x1AC58D2C0](v54, -1, -1);
      v55 = v81;
      __swift_destroy_boxed_opaque_existential_0Tm(v81);
      v38 = v86;
      MEMORY[0x1AC58D2C0](v55, -1, -1);
      v41 = v85;
      MEMORY[0x1AC58D2C0](v46, -1, -1);
    }

    else
    {

      v53 = *(v9 + 8);
      v53(v40, v38);
    }

    swift_willThrow();
    v53(v41, v38);
    os_activity_scope_leave(&v90);
    goto LABEL_23;
  }

  v87[0] = v36;
  v37 = v36;
  (v80)(&v93, v87);
  v81 = v37;
  v58 = *p_isa;
  if (*p_isa)
  {
    v92 = *p_isa;
    v59 = v58;
    v60 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    v61 = sub_1A99777A0();
    if (v61)
    {
      v34 = v61;
    }

    else
    {
      v34 = swift_allocError();
      *v77 = v58;
    }

    v38 = v86;
    swift_willThrow();

    swift_unknownObjectRelease();
    sub_1A97B06FC(v95, &qword_1EB3B0BA0, &unk_1A99923D0);
    sub_1A98A7B88(v93, v94);
    goto LABEL_18;
  }

  v62 = v94;
  if (v94 == 255)
  {
    sub_1A97BCDE0();
    v34 = swift_allocError();
    *v78 = xmmword_1A999FA70;
    *(v78 + 16) = 0xD000000000000051;
    *(v78 + 24) = 0x80000001A99E51F0;
    *(v78 + 32) = 197;
    *(v78 + 80) = 0x2000000000000000;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  v41 = v93;
  v63 = v79[0];
  v64 = v86;
  (*(v9 + 16))(v79[0], v85, v86);

  LODWORD(v84) = v62;
  sub_1A98A7B64(v41, v62);
  disableAirDropTLS();
  disableAirDropTLS();
  v65 = sub_1A9976480();
  v66 = sub_1A9976F90();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v92 = v80;
    *v67 = 136446722;
    *(v67 + 4) = sub_1A97AF148(v82, a2, &v92);
    *(v67 + 12) = 1040;
    *(v67 + 14) = 3;
    *(v67 + 18) = 2048;
    v68 = v83;
    sub_1A9976220();
    LODWORD(v82) = v66;
    sub_1A99760D0();
    v70 = v69;
    v71 = *(v9 + 8);
    v72 = v68;
    v73 = v86;
    v71(v72, v86);
    v71(v63, v73);
    *(v67 + 20) = v70;
    _os_log_impl(&dword_1A9662000, v65, v82, "syncXPC [%{public}s] END -- Client {duration: %.*f}", v67, 0x1Cu);
    v74 = v80;
    __swift_destroy_boxed_opaque_existential_0Tm(v80);
    MEMORY[0x1AC58D2C0](v74, -1, -1);
    MEMORY[0x1AC58D2C0](v67, -1, -1);
    swift_unknownObjectRelease();

    sub_1A97B06FC(v95, &qword_1EB3B0BA0, &unk_1A99923D0);
    v75 = v85;
    v76 = v73;
  }

  else
  {

    v71 = *(v9 + 8);
    v71(v63, v64);
    swift_unknownObjectRelease();
    sub_1A97B06FC(v95, &qword_1EB3B0BA0, &unk_1A99923D0);
    v75 = v85;
    v76 = v64;
  }

  v71(v75, v76);
  sub_1A98A7B88(v41, v84);

  os_activity_scope_leave(&v90);
LABEL_23:
  v56 = *MEMORY[0x1E69E9840];
  return v41;
}

uint64_t sub_1A9897AC4(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v3 = sub_1A99773D0();
  v2[23] = v3;
  v4 = *(v3 - 8);
  v2[24] = v4;
  v5 = *(v4 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v6 = sub_1A99773E0();
  v2[27] = v6;
  v7 = *(v6 - 8);
  v2[28] = v7;
  v8 = *(v7 + 64) + 15;
  v2[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A9897BEC, v1, 0);
}

uint64_t sub_1A9897BEC()
{
  v1 = v0[22];
  v0[30] = *(v1 + 112);
  v2 = qword_1EB3EAF70;
  v0[31] = *(v1 + 120);
  v0[32] = v2;
  v3 = (v1 + v2);
  v4 = qword_1EB3EAF58;
  v5 = qword_1EB3EAF60;
  v0[33] = qword_1EB3EAF58;
  v0[34] = v5;
  v6 = *v3;
  v0[35] = *v3;
  v0[36] = v3[1];
  if (v6)
  {

    v15 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    v0[37] = v8;
    *v8 = v0;
    v8[1] = sub_1A9897DDC;
    v9 = v0 + 2;
  }

  else
  {
    v10 = (v1 + v4);
    v11 = v10[1];
    v15 = (*v10 + **v10);
    v12 = (*v10)[1];
    v13 = swift_task_alloc();
    v0[39] = v13;
    *v13 = v0;
    v13[1] = sub_1A989844C;
    v9 = v0 + 11;
  }

  return v15(v9);
}

uint64_t sub_1A9897DDC()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = v0;

  v5 = *(v2 + 176);
  if (v0)
  {
    v6 = sub_1A98980AC;
  }

  else
  {
    v6 = sub_1A9897F08;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A9897F08()
{
  v24 = v0;
  if (*(v0 + 24))
  {
    v1 = *(v0 + 280);
    v2 = *(v0 + 288);
  }

  else
  {
    v3 = *(v0 + 272);
    v4 = *(v0 + 248);
    v5 = *(v0 + 176);

    v6 = sub_1A9976480();
    v7 = sub_1A9976F70();

    v8 = os_log_type_enabled(v6, v7);
    v10 = *(v0 + 280);
    v9 = *(v0 + 288);
    if (v8)
    {
      v12 = *(v0 + 240);
      v11 = *(v0 + 248);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1A97AF148(v12, v11, &v23);
      _os_log_impl(&dword_1A9662000, v6, v7, "XPCResilientAsyncSequence[%s] END. Inner sequence finished", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x1AC58D2C0](v14, -1, -1);
      MEMORY[0x1AC58D2C0](v13, -1, -1);
    }

    v1 = v10;
  }

  sub_1A967C46C(v1);
  v15 = *(v0 + 232);
  v16 = *(v0 + 200);
  v17 = *(v0 + 208);
  v18 = *(v0 + 168);
  v19 = *(v0 + 32);
  v20 = *(v0 + 48);
  *v18 = *(v0 + 16);
  v18[1] = v19;
  v18[2] = v20;

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1A98980AC()
{
  v39 = v0;
  v1 = *(v0 + 176);
  v2 = sub_1A9899810(*(v0 + 304));
  v3 = *(v0 + 304);
  v4 = *(v0 + 272);
  v5 = *(v0 + 248);
  v6 = *(v0 + 176);

  v7 = v3;
  v8 = sub_1A9976480();
  v9 = sub_1A9976F70();
  if (v2)
  {

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 304);
      v12 = *(v0 + 240);
      v11 = *(v0 + 248);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v38[0] = v15;
      *v13 = 136315394;
      *(v13 + 4) = sub_1A97AF148(v12, v11, v38);
      *(v13 + 12) = 2112;
      v16 = v10;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v17;
      *v14 = v17;
      _os_log_impl(&dword_1A9662000, v8, v9, "XPCResilientAsyncSequence[%s] RETRY. Recreating sequence {error: %@}", v13, 0x16u);
      sub_1A97B06FC(v14, &unk_1EB3B2A50, &unk_1A9999420);
      MEMORY[0x1AC58D2C0](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x1AC58D2C0](v15, -1, -1);
      MEMORY[0x1AC58D2C0](v13, -1, -1);
    }

    v18 = *(v0 + 232);
    sub_1A99778B0();
    *(v0 + 120) = xmmword_1A9996BB0;
    *(v0 + 64) = 0;
    *(v0 + 72) = 0;
    *(v0 + 80) = 1;

    return MEMORY[0x1EEE6DFA0](sub_1A9898578, 0, 0);
  }

  else
  {

    if (os_log_type_enabled(v8, v9))
    {
      v19 = *(v0 + 304);
      v21 = *(v0 + 240);
      v20 = *(v0 + 248);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v38[0] = v24;
      *v22 = 136315394;
      v25 = sub_1A97AF148(v21, v20, v38);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2112;
      v26 = v19;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v27;
      *v23 = v27;
      _os_log_impl(&dword_1A9662000, v8, v9, "XPCResilientAsyncSequence[%s] FAILED. Non retryable error {error: %@}", v22, 0x16u);
      sub_1A97B06FC(v23, &unk_1EB3B2A50, &unk_1A9999420);
      MEMORY[0x1AC58D2C0](v23, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x1AC58D2C0](v24, -1, -1);
      MEMORY[0x1AC58D2C0](v22, -1, -1);
    }

    else
    {
      v28 = *(v0 + 248);
    }

    v29 = *(v0 + 304);
    v30 = *(v0 + 280);
    v31 = *(v0 + 288);
    swift_willThrow();
    sub_1A967C46C(v30);
    v32 = *(v0 + 304);
    v33 = *(v0 + 232);
    v35 = *(v0 + 200);
    v34 = *(v0 + 208);

    v36 = *(v0 + 8);

    return v36();
  }
}

uint64_t sub_1A989844C()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = v0;

  v5 = *(v2 + 176);
  if (v0)
  {
    v6 = sub_1A9899614;
  }

  else
  {
    v6 = sub_1A9899320;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A9898578()
{
  v1 = v0[29];
  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  v7 = sub_1A98A8780(&qword_1EB3AB608, MEMORY[0x1E69E8820]);
  sub_1A9977890();
  sub_1A98A8780(&unk_1EB3AB610, MEMORY[0x1E69E87E8]);
  sub_1A99773F0();
  v8 = *(v5 + 8);
  v0[41] = v8;
  v0[42] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = *(MEMORY[0x1E69E8938] + 4);
  v10 = swift_task_alloc();
  v0[43] = v10;
  *v10 = v0;
  v10[1] = sub_1A98986FC;
  v11 = v0[29];
  v13 = v0[26];
  v12 = v0[27];

  return MEMORY[0x1EEE6DE58](v13, v0 + 8, v12, v7);
}

uint64_t sub_1A98986FC()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v16 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = *(v2 + 336);
    (*(v2 + 328))(*(v2 + 208), *(v2 + 184));
    v5 = sub_1A9898A84;
    v6 = 0;
  }

  else
  {
    v8 = *(v2 + 328);
    v7 = *(v2 + 336);
    v10 = *(v2 + 224);
    v9 = *(v2 + 232);
    v11 = *(v2 + 208);
    v12 = *(v2 + 216);
    v14 = v2 + 176;
    v13 = *(v2 + 176);
    v8(v11, *(v14 + 8));
    (*(v10 + 8))(v9, v12);
    v5 = sub_1A989885C;
    v6 = v13;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1A989885C()
{
  v1 = (v0[22] + v0[33]);
  v2 = v1[1];
  v6 = (*v1 + **v1);
  v3 = (*v1)[1];
  v4 = swift_task_alloc();
  v0[45] = v4;
  *v4 = v0;
  v4[1] = sub_1A9898958;

  return v6(v0 + 17);
}

uint64_t sub_1A9898958()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *v1;
  *(*v1 + 368) = v0;

  v5 = *(v2 + 176);
  if (v0)
  {
    v6 = sub_1A98990D0;
  }

  else
  {
    v6 = sub_1A9898D50;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A9898A84()
{
  v1 = v0[22];
  (*(v0[28] + 8))(v0[29], v0[27]);

  return MEMORY[0x1EEE6DFA0](sub_1A9898B00, v1, 0);
}

uint64_t sub_1A9898B00()
{
  v32 = v0;
  v1 = v0[44];
  v2 = v0[38];
  v3 = v0[34];
  v4 = v0[31];
  v5 = v0[22];

  v6 = v2;
  v7 = v1;
  v8 = sub_1A9976480();
  v9 = sub_1A9976F70();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[38];
    v12 = v0[30];
    v11 = v0[31];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31 = v15;
    *v13 = 136315650;
    v16 = sub_1A97AF148(v12, v11, &v31);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2112;
    v17 = v1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v18;
    *v14 = v18;
    *(v13 + 22) = 2112;
    v19 = v10;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v20;
    v14[1] = v20;
    _os_log_impl(&dword_1A9662000, v8, v9, "XPCResilientAsyncSequence[%s] FAILED. Unable to recreate sequence. Throwing iterationError {error: %@, iterationError: %@}", v13, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A50, &unk_1A9999420);
    swift_arrayDestroy();
    MEMORY[0x1AC58D2C0](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x1AC58D2C0](v15, -1, -1);
    MEMORY[0x1AC58D2C0](v13, -1, -1);
  }

  else
  {
    v21 = v0[31];
  }

  v22 = v0[38];
  v24 = v0[35];
  v23 = v0[36];
  swift_willThrow();

  sub_1A967C46C(v24);
  v25 = v0[38];
  v26 = v0[29];
  v28 = v0[25];
  v27 = v0[26];

  v29 = v0[1];

  return v29();
}

uint64_t sub_1A9898D50()
{
  v38 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 272);
  v3 = *(v0 + 248);
  v4 = *(v0 + 176);
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);

  v7 = v1;
  v8 = sub_1A9976480();
  v9 = sub_1A9976F90();

  if (os_log_type_enabled(v8, v9))
  {
    v35 = v6;
    v10 = *(v0 + 304);
    v12 = *(v0 + 240);
    v11 = *(v0 + 248);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v37 = v15;
    *v13 = 136315394;
    *(v13 + 4) = sub_1A97AF148(v12, v11, &v37);
    *(v13 + 12) = 2112;
    v16 = v10;
    v6 = v35;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v17;
    *v14 = v17;
    _os_log_impl(&dword_1A9662000, v8, v9, "XPCResilientAsyncSequence[%s] CONTINUE. Recreated sequence after error {error: %@}", v13, 0x16u);
    sub_1A97B06FC(v14, &unk_1EB3B2A50, &unk_1A9999420);
    MEMORY[0x1AC58D2C0](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x1AC58D2C0](v15, -1, -1);
    MEMORY[0x1AC58D2C0](v13, -1, -1);
  }

  v18 = *(v0 + 304);
  v20 = *(v0 + 280);
  v19 = *(v0 + 288);
  v21 = (*(v0 + 176) + *(v0 + 256));
  v6();

  sub_1A967C46C(v20);
  v22 = *v21;
  v23 = v21[1];
  *v21 = *(v0 + 152);
  sub_1A967C46C(v22);
  v24 = *(v0 + 176);
  v25 = (v24 + *(v0 + 256));
  v26 = *v25;
  *(v0 + 280) = *v25;
  *(v0 + 288) = v25[1];
  if (v26)
  {

    v36 = (v26 + *v26);
    v27 = v26[1];
    v28 = swift_task_alloc();
    *(v0 + 296) = v28;
    *v28 = v0;
    v28[1] = sub_1A9897DDC;
    v29 = v0 + 16;
  }

  else
  {
    v30 = (v24 + *(v0 + 264));
    v31 = v30[1];
    v36 = (*v30 + **v30);
    v32 = (*v30)[1];
    v33 = swift_task_alloc();
    *(v0 + 312) = v33;
    *v33 = v0;
    v33[1] = sub_1A989844C;
    v29 = v0 + 88;
  }

  return v36(v29);
}

uint64_t sub_1A98990D0()
{
  v32 = v0;
  v1 = v0[46];
  v2 = v0[38];
  v3 = v0[34];
  v4 = v0[31];
  v5 = v0[22];

  v6 = v2;
  v7 = v1;
  v8 = sub_1A9976480();
  v9 = sub_1A9976F70();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[38];
    v12 = v0[30];
    v11 = v0[31];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31 = v15;
    *v13 = 136315650;
    v16 = sub_1A97AF148(v12, v11, &v31);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2112;
    v17 = v1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v18;
    *v14 = v18;
    *(v13 + 22) = 2112;
    v19 = v10;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v20;
    v14[1] = v20;
    _os_log_impl(&dword_1A9662000, v8, v9, "XPCResilientAsyncSequence[%s] FAILED. Unable to recreate sequence. Throwing iterationError {error: %@, iterationError: %@}", v13, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A50, &unk_1A9999420);
    swift_arrayDestroy();
    MEMORY[0x1AC58D2C0](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x1AC58D2C0](v15, -1, -1);
    MEMORY[0x1AC58D2C0](v13, -1, -1);
  }

  else
  {
    v21 = v0[31];
  }

  v22 = v0[38];
  v24 = v0[35];
  v23 = v0[36];
  swift_willThrow();

  sub_1A967C46C(v24);
  v25 = v0[38];
  v26 = v0[29];
  v28 = v0[25];
  v27 = v0[26];

  v29 = v0[1];

  return v29();
}

uint64_t sub_1A9899320()
{
  v28 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 272);
  v3 = *(v0 + 248);
  v4 = *(v0 + 176);
  v5 = *(v0 + 96);

  v6 = sub_1A9976480();
  v7 = sub_1A9976F90();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 240);
    v8 = *(v0 + 248);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1A97AF148(v9, v8, &v27);
    _os_log_impl(&dword_1A9662000, v6, v7, "XPCResilientAsyncSequence[%s] START. Created initial sequence.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x1AC58D2C0](v11, -1, -1);
    MEMORY[0x1AC58D2C0](v10, -1, -1);
  }

  v12 = (*(v0 + 176) + *(v0 + 256));
  v1();

  v13 = *v12;
  v14 = v12[1];
  *v12 = *(v0 + 104);
  sub_1A967C46C(v13);
  v15 = *(v0 + 176);
  v16 = (v15 + *(v0 + 256));
  v17 = *v16;
  *(v0 + 280) = *v16;
  *(v0 + 288) = v16[1];
  if (v17)
  {

    v26 = (v17 + *v17);
    v18 = v17[1];
    v19 = swift_task_alloc();
    *(v0 + 296) = v19;
    *v19 = v0;
    v19[1] = sub_1A9897DDC;
    v20 = v0 + 16;
  }

  else
  {
    v21 = (v15 + *(v0 + 264));
    v22 = v21[1];
    v26 = (*v21 + **v21);
    v23 = (*v21)[1];
    v24 = swift_task_alloc();
    *(v0 + 312) = v24;
    *v24 = v0;
    v24[1] = sub_1A989844C;
    v20 = v0 + 88;
  }

  return v26(v20);
}

uint64_t sub_1A9899614()
{
  v26 = v0;
  v1 = v0[40];
  v2 = v0[34];
  v3 = v0[31];
  v4 = v0[22];

  v5 = v1;
  v6 = sub_1A9976480();
  v7 = sub_1A9976F70();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[40];
    v10 = v0[30];
    v9 = v0[31];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v11 = 136315394;
    v14 = sub_1A97AF148(v10, v9, &v25);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2112;
    v15 = v8;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v16;
    *v12 = v16;
    _os_log_impl(&dword_1A9662000, v6, v7, "XPCResilientAsyncSequence[%s] FAILED. Failed to create initial sequence.  {error: %@}", v11, 0x16u);
    sub_1A97B06FC(v12, &unk_1EB3B2A50, &unk_1A9999420);
    MEMORY[0x1AC58D2C0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x1AC58D2C0](v13, -1, -1);
    MEMORY[0x1AC58D2C0](v11, -1, -1);
  }

  else
  {
    v17 = v0[31];
  }

  v18 = v0[40];
  swift_willThrow();
  v19 = v0[40];
  v20 = v0[29];
  v22 = v0[25];
  v21 = v0[26];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1A9899810(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2470, &qword_1A9996D58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v37[-v6];
  v8 = sub_1A9975DF0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v37[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = a1;
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v14 = swift_dynamicCast();
  v15 = *(v9 + 56);
  if (v14)
  {
    v15(v7, 0, 1, v8);
    (*(v9 + 32))(v12, v7, v8);
    LODWORD(v16) = sub_1A9975DE0();
    v17 = a1;

    v18 = sub_1A9976480();
    v19 = sub_1A9976F90();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v38 = v16;
      v16 = v20;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v22;
      *v16 = 136315650;
      *(v16 + 4) = sub_1A97AF148(*(v2 + 112), *(v2 + 120), &v39);
      *(v16 + 12) = 1024;
      v23 = v38;
      *(v16 + 14) = v38 & 1;
      *(v16 + 18) = 2112;
      v24 = a1;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 20) = v25;
      *v21 = v25;
      _os_log_impl(&dword_1A9662000, v18, v19, "XPCResilientAsyncSequence[%s] Evaluated Cocoa Error {isXPCConnectionError: %{BOOL}d, error: %@}", v16, 0x1Cu);
      sub_1A97B06FC(v21, &unk_1EB3B2A50, &unk_1A9999420);
      MEMORY[0x1AC58D2C0](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x1AC58D2C0](v22, -1, -1);
      MEMORY[0x1AC58D2C0](v16, -1, -1);

      (*(v9 + 8))(v12, v8);
      LOBYTE(v16) = v23;
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }
  }

  else
  {
    v15(v7, 1, 1, v8);
    sub_1A97B06FC(v7, &qword_1EB3B2470, &qword_1A9996D58);
    v26 = *(v1 + qword_1EB3EAF68);
    if (v26)
    {
      v27 = *(v1 + qword_1EB3EAF68 + 8);

      LOBYTE(v16) = v26(a1);
      v28 = a1;

      v29 = sub_1A9976480();
      v30 = sub_1A9976F90();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = v16;
        v16 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v39 = v33;
        *v16 = 136315650;
        *(v16 + 4) = sub_1A97AF148(*(v2 + 112), *(v2 + 120), &v39);
        *(v16 + 12) = 1024;
        *(v16 + 14) = v31 & 1;
        *(v16 + 18) = 2112;
        v34 = a1;
        v35 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 20) = v35;
        *v32 = v35;
        _os_log_impl(&dword_1A9662000, v29, v30, "XPCResilientAsyncSequence[%s] Evaluated shouldRetryBlock {shouldRetry: %{BOOL}d, error: %@}", v16, 0x1Cu);
        sub_1A97B06FC(v32, &unk_1EB3B2A50, &unk_1A9999420);
        MEMORY[0x1AC58D2C0](v32, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v33);
        MEMORY[0x1AC58D2C0](v33, -1, -1);
        MEMORY[0x1AC58D2C0](v16, -1, -1);
        sub_1A967C46C(v26);

        LOBYTE(v16) = v31;
      }

      else
      {
        sub_1A967C46C(v26);
      }
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  return v16 & 1;
}

char *sub_1A9899D4C()
{
  v2 = v1;
  v3 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.SharingName()) init];
  v4 = v3;
  if (*&v3[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v5 = *&v3[OBJC_IVAR___SFXPCInvocation_name];
    v6 = *&v3[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v6 = 0x80000001A99E5270;
    v5 = 0xD000000000000019;
  }

  v7 = swift_beginAccess();
  v8 = *(v0 + 16);
  MEMORY[0x1EEE9AC00](v7);
  v18[2] = v5;
  v18[3] = v6;
  v18[5] = v0;
  v18[6] = v4;

  v9 = v8;
  v10 = v2;
  v11 = sub_1A9896380(v5, v6, sub_1A98A8654, v18);
  v13 = v12;
  v15 = v14;

  if (v10)
  {
  }

  else
  {

    if (v15)
    {
      v18[13] = v11;
      v16 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
      swift_willThrowTypedImpl();

      sub_1A98A8690(v11, v13, 1);
    }

    else
    {
    }
  }

  return v11;
}

char *sub_1A9899F08()
{
  v2 = v1;
  v3 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.FetchUserDefaults()) init];
  v4 = v3;
  if (*&v3[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v5 = *&v3[OBJC_IVAR___SFXPCInvocation_name];
    v6 = *&v3[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v6 = 0x80000001A99E5270;
    v5 = 0xD000000000000019;
  }

  v7 = swift_beginAccess();
  v8 = *(v0 + 16);
  MEMORY[0x1EEE9AC00](v7);
  v15[2] = v5;
  v15[3] = v6;
  v15[5] = v0;
  v15[6] = v4;

  v9 = v8;
  v10 = sub_1A9896F48(v5, v6, sub_1A98A7B1C, v15);
  v12 = v11;

  if (v2)
  {
  }

  else
  {

    if (v12)
    {
      v15[8] = v10;
      v13 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
      swift_willThrowTypedImpl();

      sub_1A98A7B58(v10, 1);
    }

    else
    {
    }
  }

  return v10;
}

void *sub_1A989A0B0(void *a1, objc_class *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  swift_beginAccess();
  v12 = *(a4 + 24);

  v13 = sub_1A988DE10(a2, a3, v12);
  if (!v6)
  {
    v17 = v15;
    v18 = v16;
    v27 = v13;
    v19 = v14;
    aBlock[10] = 0;
    v20 = swift_allocObject();
    *(v20 + 24) = 0;
    *(v20 + 16) = 0;
    *(v20 + 32) = -1;
    v26 = sub_1A9976060();
    aBlock[4] = sub_1A98A86E0;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_344;
    v21 = a5;
    v22 = _Block_copy(aBlock);
    v23 = v17;
    v24 = v18;

    [a1 invoke:v21 parametersData:v26 parametersAsyncSequenceContainer:v23 parametersBlocksContainer:v24 sync:1 completion:v22];
    sub_1A97B43C4(v27, v19);

    _Block_release(v22);
    swift_beginAccess();
    a5 = *(v20 + 16);
    sub_1A98A86A0(a5, *(v20 + 24), *(v20 + 32));
  }

  return a5;
}

void *sub_1A989A2D4(void *a1, objc_class *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  swift_beginAccess();
  v12 = *(a4 + 24);

  v13 = sub_1A988DE10(a2, a3, v12);
  if (!v6)
  {
    v17 = v15;
    v18 = v16;
    v27 = v13;
    v19 = v14;
    aBlock[10] = 0;
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = -1;
    v26 = sub_1A9976060();
    aBlock[4] = sub_1A98A7BA0;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_238;
    v21 = a5;
    v22 = _Block_copy(aBlock);
    v23 = v17;
    v24 = v18;

    [a1 invoke:v21 parametersData:v26 parametersAsyncSequenceContainer:v23 parametersBlocksContainer:v24 sync:1 completion:v22];
    sub_1A97B43C4(v27, v19);

    _Block_release(v22);
    swift_beginAccess();
    a5 = *(v20 + 16);
    sub_1A98A7B64(a5, *(v20 + 24));
  }

  return a5;
}

void sub_1A989A4E8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_1A97C1554(a1, a2);
  v12 = a5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v13 = sub_1A989B0A4(a5, a1, a2, a3, a4);
  v15 = v14;
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_1A97D8688(a1, a2);
  swift_beginAccess();
  v16 = *(a6 + 16);
  v17 = *(a6 + 24);
  *(a6 + 16) = v13;
  *(a6 + 24) = v15;
  v18 = *(a6 + 32);
  *(a6 + 32) = 0;
  sub_1A98A86C8(v16, v17, v18);
}

void sub_1A989A5DC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_1A97C1554(a1, a2);
  v12 = a5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v13 = sub_1A989D194(a5, a1, a2, a3, a4, &qword_1EB3B4140, &qword_1A99A00F0, sub_1A98A7BA8);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_1A97D8688(a1, a2);
  swift_beginAccess();
  v14 = *(a6 + 16);
  *(a6 + 16) = v13;
  v15 = *(a6 + 24);
  *(a6 + 24) = 0;
  sub_1A98A7B88(v14, v15);
}

uint64_t sub_1A989A714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a5;
  v44 = a4;
  v45 = a6;
  v46 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v37 - v14;
  v16 = sub_1A9977460();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v37 - v22;
  result = Optional<A>.throwIfNotNil()(a1);
  if (!v6)
  {
    v42 = v13;
    v43 = v17;
    v41 = v21;
    v25 = v50;
    if (a3 >> 60 == 15)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v26 = xmmword_1A99997D0;
      *(v26 + 16) = 0xD000000000000051;
      *(v26 + 24) = 0x80000001A99E51F0;
      v27 = 164;
LABEL_11:
      *(v26 + 32) = v27;
      *(v26 + 80) = 0x2000000000000000;
      return swift_willThrow();
    }

    if (!v44)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v26 = 0xD000000000000018;
      *(v26 + 8) = 0x80000001A99E52F0;
      *(v26 + 16) = 0xD000000000000051;
      *(v26 + 24) = 0x80000001A99E51F0;
      v27 = 165;
      goto LABEL_11;
    }

    if (!v50)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v26 = 0xD000000000000011;
      *(v26 + 8) = 0x80000001A99E5310;
      *(v26 + 16) = 0xD000000000000051;
      *(v26 + 24) = 0x80000001A99E51F0;
      v27 = 166;
      goto LABEL_11;
    }

    v37[1] = a3;
    v37[2] = 0;
    v28 = sub_1A9975E40();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    v40 = sub_1A9975E30();
    sub_1A9977450();
    v31 = v43;
    v38 = *(v43 + 48);
    v39 = v43 + 48;
    result = v38(v15, 1, v16);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v43 = *(v31 + 32);
      (v43)(v23, v15, v16);
      v32 = v44;
      ObjectType = swift_getObjectType();
      v48[0] = v32;
      swift_unknownObjectRetain();
      v33 = sub_1A9975E20();
      sub_1A97DCC4C(v48, v23);
      v33(v47, 0);
      v34 = v42;
      sub_1A9977450();
      result = v38(v34, 1, v16);
      v35 = v41;
      if (result != 1)
      {
        (v43)(v41, v34, v16);
        ObjectType = swift_getObjectType();
        v48[0] = v25;
        swift_unknownObjectRetain();
        v36 = sub_1A9975E20();
        sub_1A97DCC4C(v48, v35);
        v36(v47, 0);
        sub_1A984AF04();
        sub_1A9975E10();
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A989ABCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, unint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v56 = a8;
  v57 = a9;
  v65 = a7;
  v58 = a6;
  v59 = a4;
  v60 = a5;
  v61 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v47 - v17;
  v19 = sub_1A9977460();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v47 - v25;
  result = Optional<A>.throwIfNotNil()(a1);
  if (!v9)
  {
    v54 = v16;
    v55 = v20;
    v53 = v24;
    v28 = v60;
    v29 = v65;
    if (a3 >> 60 == 15)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v30 = xmmword_1A99997D0;
      *(v30 + 16) = 0xD000000000000051;
      *(v30 + 24) = 0x80000001A99E51F0;
      v31 = 164;
LABEL_11:
      *(v30 + 32) = v31;
      *(v30 + 80) = 0x2000000000000000;
      return swift_willThrow();
    }

    if (!v59)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v30 = 0xD000000000000018;
      *(v30 + 8) = 0x80000001A99E52F0;
      *(v30 + 16) = 0xD000000000000051;
      *(v30 + 24) = 0x80000001A99E51F0;
      v31 = 165;
      goto LABEL_11;
    }

    if (!v60)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v30 = 0xD000000000000011;
      *(v30 + 8) = 0x80000001A99E5310;
      *(v30 + 16) = 0xD000000000000051;
      *(v30 + 24) = 0x80000001A99E51F0;
      v31 = 166;
      goto LABEL_11;
    }

    v49 = a3;
    v50 = 0;
    v32 = sub_1A9975E40();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    v52 = sub_1A9975E30();
    sub_1A9977450();
    v35 = v55;
    v36 = *(v55 + 48);
    v51 = v55 + 48;
    v37 = v36;
    result = v36(v18, 1, v19);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v38 = *(v35 + 32);
      v55 = v35 + 32;
      v48 = v38;
      v38(v26, v18, v19);
      v39 = v59;
      ObjectType = swift_getObjectType();
      v63[0] = v39;
      swift_unknownObjectRetain();
      v40 = sub_1A9975E20();
      sub_1A97DCC4C(v63, v26);
      v40(v62, 0);
      v41 = v54;
      sub_1A9977450();
      result = v37(v41, 1, v19);
      v42 = v56;
      v43 = v58;
      if (result != 1)
      {
        v44 = v29;
        v45 = v53;
        v48(v53, v41, v19);
        ObjectType = swift_getObjectType();
        v63[0] = v28;
        swift_unknownObjectRetain();
        v46 = sub_1A9975E20();
        sub_1A97DCC4C(v63, v45);
        v46(v62, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(v43, v44);
        sub_1A97AF974(v42, v43, v44);
        sub_1A9975E10();
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A989B0A4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a5;
  v47 = a4;
  v48 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v39 - v13;
  v15 = sub_1A9977460();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v39 - v21;
  result = Optional<A>.throwIfNotNil()(a1);
  if (!v5)
  {
    v45 = v20;
    v46 = v16;
    v44 = v12;
    v24 = v53;
    if (a3 >> 60 == 15)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v25 = xmmword_1A99997D0;
      *(v25 + 16) = 0xD000000000000051;
      *(v25 + 24) = 0x80000001A99E51F0;
      v26 = 164;
LABEL_12:
      *(v25 + 32) = v26;
      *(v25 + 80) = 0x2000000000000000;
      return swift_willThrow();
    }

    if (!v47)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v25 = 0xD000000000000018;
      *(v25 + 8) = 0x80000001A99E52F0;
      *(v25 + 16) = 0xD000000000000051;
      *(v25 + 24) = 0x80000001A99E51F0;
      v26 = 165;
      goto LABEL_12;
    }

    if (!v53)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v25 = 0xD000000000000011;
      *(v25 + 8) = 0x80000001A99E5310;
      *(v25 + 16) = 0xD000000000000051;
      *(v25 + 24) = 0x80000001A99E51F0;
      v26 = 166;
      goto LABEL_12;
    }

    v39[1] = a3;
    v40 = 0;
    v27 = sub_1A9975E40();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    v43 = sub_1A9975E30();
    sub_1A9977450();
    v30 = v46;
    v41 = *(v46 + 48);
    v42 = v46 + 48;
    result = v41(v14, 1, v15);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v31 = v14;
      v32 = *(v30 + 32);
      v32(v22, v31, v15);
      v33 = v47;
      ObjectType = swift_getObjectType();
      v50[0] = v33;
      swift_unknownObjectRetain();
      v34 = sub_1A9975E20();
      sub_1A97DCC4C(v50, v22);
      v34(v49, 0);
      v35 = v44;
      sub_1A9977450();
      result = v41(v35, 1, v15);
      v36 = v45;
      if (result != 1)
      {
        v32(v45, v35, v15);
        ObjectType = swift_getObjectType();
        v50[0] = v24;
        swift_unknownObjectRetain();
        v37 = sub_1A9975E20();
        sub_1A97DCC4C(v50, v36);
        v37(v49, 0);
        v38 = v40;
        sub_1A9975E10();

        if (!v38)
        {
          return v52;
        }

        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A989B514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a5;
  v45 = a4;
  v46 = a6;
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v39 - v14;
  v16 = sub_1A9977460();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v39 - v22;
  result = Optional<A>.throwIfNotNil()(a1);
  if (!v6)
  {
    v43 = v13;
    v44 = v17;
    v42 = v21;
    v25 = v51;
    if (a3 >> 60 == 15)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v26 = xmmword_1A99997D0;
      *(v26 + 16) = 0xD000000000000051;
      *(v26 + 24) = 0x80000001A99E51F0;
      v27 = 164;
LABEL_11:
      *(v26 + 32) = v27;
      *(v26 + 80) = 0x2000000000000000;
      return swift_willThrow();
    }

    if (!v45)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v26 = 0xD000000000000018;
      *(v26 + 8) = 0x80000001A99E52F0;
      *(v26 + 16) = 0xD000000000000051;
      *(v26 + 24) = 0x80000001A99E51F0;
      v27 = 165;
      goto LABEL_11;
    }

    if (!v51)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v26 = 0xD000000000000011;
      *(v26 + 8) = 0x80000001A99E5310;
      *(v26 + 16) = 0xD000000000000051;
      *(v26 + 24) = 0x80000001A99E51F0;
      v27 = 166;
      goto LABEL_11;
    }

    v39[0] = a3;
    v39[1] = 0;
    v28 = sub_1A9975E40();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    v31 = sub_1A9975E30();
    sub_1A9977450();
    v32 = v44;
    v33 = v16;
    v40 = *(v44 + 48);
    v41 = v44 + 48;
    result = v40(v15, 1, v16);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v44 = *(v32 + 32);
      (v44)(v23, v15, v16);
      v34 = v45;
      ObjectType = swift_getObjectType();
      v49[0] = v34;
      swift_unknownObjectRetain();
      v45 = v31;
      v35 = sub_1A9975E20();
      sub_1A97DCC4C(v49, v23);
      v35(v48, 0);
      v36 = v43;
      sub_1A9977450();
      result = v40(v36, 1, v16);
      v37 = v42;
      if (result != 1)
      {
        (v44)(v42, v36, v33);
        ObjectType = swift_getObjectType();
        v49[0] = v25;
        swift_unknownObjectRetain();
        v38 = sub_1A9975E20();
        sub_1A97DCC4C(v49, v37);
        v38(v48, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FB0, &qword_1A9999580);
        sub_1A97AF974(&qword_1EB3B41C0, &qword_1EB3B2FB0, &qword_1A9999580);
        sub_1A9975E10();
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A989BA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a5;
  v44 = a4;
  v45 = a6;
  v46 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v37 - v14;
  v16 = sub_1A9977460();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v37 - v22;
  result = Optional<A>.throwIfNotNil()(a1);
  if (!v6)
  {
    v42 = v13;
    v43 = v17;
    v41 = v21;
    v25 = v50;
    if (a3 >> 60 == 15)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v26 = xmmword_1A99997D0;
      *(v26 + 16) = 0xD000000000000051;
      *(v26 + 24) = 0x80000001A99E51F0;
      v27 = 164;
LABEL_11:
      *(v26 + 32) = v27;
      *(v26 + 80) = 0x2000000000000000;
      return swift_willThrow();
    }

    if (!v44)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v26 = 0xD000000000000018;
      *(v26 + 8) = 0x80000001A99E52F0;
      *(v26 + 16) = 0xD000000000000051;
      *(v26 + 24) = 0x80000001A99E51F0;
      v27 = 165;
      goto LABEL_11;
    }

    if (!v50)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v26 = 0xD000000000000011;
      *(v26 + 8) = 0x80000001A99E5310;
      *(v26 + 16) = 0xD000000000000051;
      *(v26 + 24) = 0x80000001A99E51F0;
      v27 = 166;
      goto LABEL_11;
    }

    v37[1] = a3;
    v37[2] = 0;
    v28 = sub_1A9975E40();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    v40 = sub_1A9975E30();
    sub_1A9977450();
    v31 = v43;
    v38 = *(v43 + 48);
    v39 = v43 + 48;
    result = v38(v15, 1, v16);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v43 = *(v31 + 32);
      (v43)(v23, v15, v16);
      v32 = v44;
      ObjectType = swift_getObjectType();
      v48[0] = v32;
      swift_unknownObjectRetain();
      v33 = sub_1A9975E20();
      sub_1A97DCC4C(v48, v23);
      v33(v47, 0);
      v34 = v42;
      sub_1A9977450();
      result = v38(v34, 1, v16);
      v35 = v41;
      if (result != 1)
      {
        (v43)(v41, v34, v16);
        ObjectType = swift_getObjectType();
        v48[0] = v25;
        swift_unknownObjectRetain();
        v36 = sub_1A9975E20();
        sub_1A97DCC4C(v48, v35);
        v36(v47, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B29B0, &qword_1A9990640);
        sub_1A98A7EA8();
        sub_1A9975E10();
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A989BED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a5;
  v45 = a4;
  v46 = a6;
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v39 - v14;
  v16 = sub_1A9977460();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v39 - v22;
  result = Optional<A>.throwIfNotNil()(a1);
  if (!v6)
  {
    v43 = v13;
    v44 = v17;
    v42 = v21;
    v25 = v51;
    if (a3 >> 60 == 15)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v26 = xmmword_1A99997D0;
      *(v26 + 16) = 0xD000000000000051;
      *(v26 + 24) = 0x80000001A99E51F0;
      v27 = 164;
LABEL_11:
      *(v26 + 32) = v27;
      *(v26 + 80) = 0x2000000000000000;
      return swift_willThrow();
    }

    if (!v45)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v26 = 0xD000000000000018;
      *(v26 + 8) = 0x80000001A99E52F0;
      *(v26 + 16) = 0xD000000000000051;
      *(v26 + 24) = 0x80000001A99E51F0;
      v27 = 165;
      goto LABEL_11;
    }

    if (!v51)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v26 = 0xD000000000000011;
      *(v26 + 8) = 0x80000001A99E5310;
      *(v26 + 16) = 0xD000000000000051;
      *(v26 + 24) = 0x80000001A99E51F0;
      v27 = 166;
      goto LABEL_11;
    }

    v39[0] = a3;
    v39[1] = 0;
    v28 = sub_1A9975E40();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    v31 = sub_1A9975E30();
    sub_1A9977450();
    v32 = v44;
    v33 = v16;
    v40 = *(v44 + 48);
    v41 = v44 + 48;
    result = v40(v15, 1, v16);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v44 = *(v32 + 32);
      (v44)(v23, v15, v16);
      v34 = v45;
      ObjectType = swift_getObjectType();
      v49[0] = v34;
      swift_unknownObjectRetain();
      v45 = v31;
      v35 = sub_1A9975E20();
      sub_1A97DCC4C(v49, v23);
      v35(v48, 0);
      v36 = v43;
      sub_1A9977450();
      result = v40(v36, 1, v16);
      v37 = v42;
      if (result != 1)
      {
        (v44)(v42, v36, v33);
        ObjectType = swift_getObjectType();
        v49[0] = v25;
        swift_unknownObjectRetain();
        v38 = sub_1A9975E20();
        sub_1A97DCC4C(v49, v37);
        v38(v48, 0);
        type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo(0);
        sub_1A98A8780(&qword_1EB3B4190, type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo);
        sub_1A9975E10();
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A989C390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a5;
  v44 = a4;
  v45 = a6;
  v46 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v37 - v14;
  v16 = sub_1A9977460();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v37 - v22;
  result = Optional<A>.throwIfNotNil()(a1);
  if (!v6)
  {
    v42 = v13;
    v43 = v17;
    v41 = v21;
    v25 = v50;
    if (a3 >> 60 == 15)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v26 = xmmword_1A99997D0;
      *(v26 + 16) = 0xD000000000000051;
      *(v26 + 24) = 0x80000001A99E51F0;
      v27 = 164;
LABEL_11:
      *(v26 + 32) = v27;
      *(v26 + 80) = 0x2000000000000000;
      return swift_willThrow();
    }

    if (!v44)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v26 = 0xD000000000000018;
      *(v26 + 8) = 0x80000001A99E52F0;
      *(v26 + 16) = 0xD000000000000051;
      *(v26 + 24) = 0x80000001A99E51F0;
      v27 = 165;
      goto LABEL_11;
    }

    if (!v50)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v26 = 0xD000000000000011;
      *(v26 + 8) = 0x80000001A99E5310;
      *(v26 + 16) = 0xD000000000000051;
      *(v26 + 24) = 0x80000001A99E51F0;
      v27 = 166;
      goto LABEL_11;
    }

    v37[1] = a3;
    v37[2] = 0;
    v28 = sub_1A9975E40();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    v40 = sub_1A9975E30();
    sub_1A9977450();
    v31 = v43;
    v38 = *(v43 + 48);
    v39 = v43 + 48;
    result = v38(v15, 1, v16);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v43 = *(v31 + 32);
      (v43)(v23, v15, v16);
      v32 = v44;
      ObjectType = swift_getObjectType();
      v48[0] = v32;
      swift_unknownObjectRetain();
      v33 = sub_1A9975E20();
      sub_1A97DCC4C(v48, v23);
      v33(v47, 0);
      v34 = v42;
      sub_1A9977450();
      result = v38(v34, 1, v16);
      v35 = v41;
      if (result != 1)
      {
        (v43)(v41, v34, v16);
        ObjectType = swift_getObjectType();
        v48[0] = v25;
        swift_unknownObjectRetain();
        v36 = sub_1A9975E20();
        sub_1A97DCC4C(v48, v35);
        v36(v47, 0);
        sub_1A98A7E00();
        sub_1A9975E10();
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A989C818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a5;
  v44 = a4;
  v45 = a6;
  v46 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v37 - v14;
  v16 = sub_1A9977460();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v37 - v22;
  result = Optional<A>.throwIfNotNil()(a1);
  if (!v6)
  {
    v42 = v13;
    v43 = v17;
    v41 = v21;
    v25 = v50;
    if (a3 >> 60 == 15)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v26 = xmmword_1A99997D0;
      *(v26 + 16) = 0xD000000000000051;
      *(v26 + 24) = 0x80000001A99E51F0;
      v27 = 164;
LABEL_11:
      *(v26 + 32) = v27;
      *(v26 + 80) = 0x2000000000000000;
      return swift_willThrow();
    }

    if (!v44)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v26 = 0xD000000000000018;
      *(v26 + 8) = 0x80000001A99E52F0;
      *(v26 + 16) = 0xD000000000000051;
      *(v26 + 24) = 0x80000001A99E51F0;
      v27 = 165;
      goto LABEL_11;
    }

    if (!v50)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v26 = 0xD000000000000011;
      *(v26 + 8) = 0x80000001A99E5310;
      *(v26 + 16) = 0xD000000000000051;
      *(v26 + 24) = 0x80000001A99E51F0;
      v27 = 166;
      goto LABEL_11;
    }

    v37[1] = a3;
    v37[2] = 0;
    v28 = sub_1A9975E40();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    v40 = sub_1A9975E30();
    sub_1A9977450();
    v31 = v43;
    v38 = *(v43 + 48);
    v39 = v43 + 48;
    result = v38(v15, 1, v16);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v43 = *(v31 + 32);
      (v43)(v23, v15, v16);
      v32 = v44;
      ObjectType = swift_getObjectType();
      v48[0] = v32;
      swift_unknownObjectRetain();
      v33 = sub_1A9975E20();
      sub_1A97DCC4C(v48, v23);
      v33(v47, 0);
      v34 = v42;
      sub_1A9977450();
      result = v38(v34, 1, v16);
      v35 = v41;
      if (result != 1)
      {
        (v43)(v41, v34, v16);
        ObjectType = swift_getObjectType();
        v48[0] = v25;
        swift_unknownObjectRetain();
        v36 = sub_1A9975E20();
        sub_1A97DCC4C(v48, v35);
        v36(v47, 0);
        sub_1A98A7DAC();
        sub_1A9975E10();
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A989CCA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a5;
  v44 = a4;
  v45 = a6;
  v46 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v37 - v14;
  v16 = sub_1A9977460();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v37 - v22;
  result = Optional<A>.throwIfNotNil()(a1);
  if (!v6)
  {
    v42 = v13;
    v43 = v17;
    v41 = v21;
    v25 = v50;
    if (a3 >> 60 == 15)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v26 = xmmword_1A99997D0;
      *(v26 + 16) = 0xD000000000000051;
      *(v26 + 24) = 0x80000001A99E51F0;
      v27 = 164;
LABEL_11:
      *(v26 + 32) = v27;
      *(v26 + 80) = 0x2000000000000000;
      return swift_willThrow();
    }

    if (!v44)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v26 = 0xD000000000000018;
      *(v26 + 8) = 0x80000001A99E52F0;
      *(v26 + 16) = 0xD000000000000051;
      *(v26 + 24) = 0x80000001A99E51F0;
      v27 = 165;
      goto LABEL_11;
    }

    if (!v50)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v26 = 0xD000000000000011;
      *(v26 + 8) = 0x80000001A99E5310;
      *(v26 + 16) = 0xD000000000000051;
      *(v26 + 24) = 0x80000001A99E51F0;
      v27 = 166;
      goto LABEL_11;
    }

    v37[1] = a3;
    v37[2] = 0;
    v28 = sub_1A9975E40();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    v40 = sub_1A9975E30();
    sub_1A9977450();
    v31 = v43;
    v38 = *(v43 + 48);
    v39 = v43 + 48;
    result = v38(v15, 1, v16);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v43 = *(v31 + 32);
      (v43)(v23, v15, v16);
      v32 = v44;
      ObjectType = swift_getObjectType();
      v48[0] = v32;
      swift_unknownObjectRetain();
      v33 = sub_1A9975E20();
      sub_1A97DCC4C(v48, v23);
      v33(v47, 0);
      v34 = v42;
      sub_1A9977450();
      result = v38(v34, 1, v16);
      v35 = v41;
      if (result != 1)
      {
        (v43)(v41, v34, v16);
        ObjectType = swift_getObjectType();
        v48[0] = v25;
        swift_unknownObjectRetain();
        v36 = sub_1A9975E20();
        sub_1A97DCC4C(v48, v35);
        v36(v47, 0);
        sub_1A98A7D58();
        sub_1A9975E10();
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A989D194(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, void (*a8)(void))
{
  v49 = a8;
  v50 = a7;
  v53 = a2;
  v54 = a6;
  v51 = a4;
  v52 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v42 - v16;
  v18 = sub_1A9977460();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v42 - v24;
  result = Optional<A>.throwIfNotNil()(a1);
  if (!v8)
  {
    v47 = v15;
    v48 = v19;
    v46 = v23;
    v27 = v54;
    if (a3 >> 60 == 15)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v28 = xmmword_1A99997D0;
      *(v28 + 16) = 0xD000000000000051;
      *(v28 + 24) = 0x80000001A99E51F0;
      v29 = 164;
LABEL_12:
      *(v28 + 32) = v29;
      *(v28 + 80) = 0x2000000000000000;
      return swift_willThrow();
    }

    if (!v51)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v28 = 0xD000000000000018;
      *(v28 + 8) = 0x80000001A99E52F0;
      *(v28 + 16) = 0xD000000000000051;
      *(v28 + 24) = 0x80000001A99E51F0;
      v29 = 165;
      goto LABEL_12;
    }

    if (!v52)
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v28 = 0xD000000000000011;
      *(v28 + 8) = 0x80000001A99E5310;
      *(v28 + 16) = 0xD000000000000051;
      *(v28 + 24) = 0x80000001A99E51F0;
      v29 = 166;
      goto LABEL_12;
    }

    v30 = v52;
    v42 = a3;
    v43 = 0;
    v31 = sub_1A9975E40();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    v34 = sub_1A9975E30();
    sub_1A9977450();
    v35 = v48;
    v44 = *(v48 + 48);
    v45 = v48 + 48;
    result = v44(v17, 1, v18);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v48 = *(v35 + 32);
      (v48)(v25, v17, v18);
      v36 = v51;
      ObjectType = swift_getObjectType();
      v56[0] = v36;
      swift_unknownObjectRetain();
      v51 = v34;
      v37 = sub_1A9975E20();
      sub_1A97DCC4C(v56, v25);
      v37(v55, 0);
      v38 = v47;
      sub_1A9977450();
      result = v44(v38, 1, v18);
      if (result != 1)
      {
        v39 = v46;
        (v48)(v46, v38, v18);
        ObjectType = swift_getObjectType();
        v56[0] = v30;
        swift_unknownObjectRetain();
        v40 = sub_1A9975E20();
        sub_1A97DCC4C(v56, v39);
        v40(v55, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(v27, v50);
        v49();
        v41 = v43;
        sub_1A9975E10();

        if (!v41)
        {
          return v58;
        }

        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A989D63C()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3ABC10);
  v1 = __swift_project_value_buffer(v0, qword_1EB3ABC10);
  if (qword_1EB3AC840 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EB3AC848);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AskToAirDropSenderController.nearbyDeviceCount.getter()
{
  v1 = OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_nearbyDeviceCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A989D814()
{
  v1 = sub_1A9976630();
  v14 = *(v1 - 8);
  v2 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A9976680();
  v5 = *(v13 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_queue);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1A98A7A34;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981D3F8;
  aBlock[3] = &block_descriptor_176;
  v10 = _Block_copy(aBlock);

  sub_1A9976640();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1A98A8780(&qword_1EB3AC930, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B28A8, &unk_1A9998190);
  sub_1A97AF974(&qword_1EB3AC920, &qword_1EB3B28A8, &unk_1A9998190);
  sub_1A99771F0();
  MEMORY[0x1AC589C70](0, v8, v4, v10);
  _Block_release(v10);
  (*(v14 + 8))(v4, v1);
  (*(v5 + 8))(v8, v13);
}

void sub_1A989DB04()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_nearbyDeviceCountChangedHandler;
    swift_beginAccess();
    v3 = *v2;
    if (*v2)
    {
      v4 = *(v2 + 8);
      sub_1A967C510(v3);

      v3();
      sub_1A967C46C(v3);
    }

    else
    {
    }
  }
}

id AskToAirDropSenderController.hasSeenPrivacyPrompt.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1A99767E0();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1A99767E0();
  v4 = [v2 BOOLForKey_];

  return v4;
}

void AskToAirDropSenderController.hasSeenPrivacyPrompt.setter(char a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1A99767E0();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_1A99767E0();
    [v4 setBool:a1 & 1 forKey:v5];
  }
}

void sub_1A989DF08(unsigned __int8 *a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1A99767E0();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_1A99767E0();
    v6 = [v4 BOOLForKey_];
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
}

void sub_1A989DFD0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1A99767E0();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_1A99767E0();
    [v4 setBool:v1 forKey:v5];
  }
}

void (*AskToAirDropSenderController.hasSeenPrivacyPrompt.modify(unsigned __int8 *a1))(unsigned __int8 *a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1A99767E0();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_1A99767E0();
    v6 = [v4 BOOLForKey_];
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_1A989E19C;
}

void sub_1A989E19C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1A99767E0();
  v5 = [v2 initWithSuiteName_];

  if (v5)
  {
    v4 = sub_1A99767E0();
    [v5 setBool:v1 forKey:v4];
  }
}

uint64_t sub_1A989E39C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_nearbyDeviceCountChangedHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1A982B46C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1A967C510(v4);
}

uint64_t sub_1A989E43C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A98A888C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_nearbyDeviceCountChangedHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1A967C510(v3);
  return sub_1A967C46C(v8);
}

void sub_1A989E660(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_1A989E7AC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_didStopHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1A98A88F0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1A967C510(v4);
}

uint64_t sub_1A989E84C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A98A7A3C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_didStopHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1A967C510(v3);
  return sub_1A967C46C(v8);
}

id AskToAirDropSenderController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void AskToAirDropSenderController.init()()
{
  *(v0 + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_nearbyDeviceCount) = 0;
  v1 = (v0 + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_nearbyDeviceCountChangedHandler);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_didStopHandler);
  *v2 = 0;
  v2[1] = 0;
  sub_1A9977470();
  __break(1u);
}

id AskToAirDropSenderController.__allocating_init(queue:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1A98A6BE8(a1);

  return v4;
}

id AskToAirDropSenderController.init(queue:)(void *a1)
{
  v2 = sub_1A98A6BE8(a1);

  return v2;
}

void sub_1A989EB08()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_nearbyDeviceCount;
    swift_beginAccess();
    v3 = *&v1[v2];
    v4 = __OFADD__(v3, 1);
    v5 = v3 + 1;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      *&v1[v2] = v5;
      sub_1A989D814();
    }
  }
}

void sub_1A989EB8C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_nearbyDeviceCount;
    swift_beginAccess();
    v3 = *&v1[v2];
    v4 = __OFSUB__(v3, 1);
    v5 = v3 - 1;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      *&v1[v2] = v5;
      sub_1A989D814();
    }
  }
}

uint64_t AskToAirDropSenderController.start(as:pin:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v15 - v9;
  v11 = sub_1A9976C00();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v4;
  v12[5] = a3;
  v12[6] = a4;
  v13 = v4;
  sub_1A97B40FC(a3, a4);
  sub_1A989FBEC(0, 0, v10, &unk_1A999FA90, v12);
}

uint64_t sub_1A989ED6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[28] = a5;
  v6[29] = a6;
  v6[27] = a4;
  v7 = sub_1A9976630();
  v6[30] = v7;
  v8 = *(v7 - 8);
  v6[31] = v8;
  v9 = *(v8 + 64) + 15;
  v6[32] = swift_task_alloc();
  v10 = sub_1A9976680();
  v6[33] = v10;
  v11 = *(v10 - 8);
  v6[34] = v11;
  v12 = *(v11 + 64) + 15;
  v6[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A989EE8C, 0, 0);
}

uint64_t sub_1A989EE8C()
{
  if (qword_1EB3ABC08 != -1)
  {
    swift_once();
  }

  v1 = sub_1A99764A0();
  v0[36] = __swift_project_value_buffer(v1, qword_1EB3ABC10);
  v2 = sub_1A9976480();
  v3 = sub_1A9976F90();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1A9662000, v2, v3, "Requesting to start advertising", v4, 2u);
    MEMORY[0x1AC58D2C0](v4, -1, -1);
  }

  v5 = v0[27];

  v6 = *(v5 + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_airDropClient);
  v0[37] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A989EFBC, v6, 0);
}

uint64_t sub_1A989EFBC()
{
  v1 = *(v0[37] + 112);
  v2 = swift_task_alloc();
  v0[38] = v2;
  *v2 = v0;
  v2[1] = sub_1A989F070;
  v3 = v0[28];
  v4 = v0[29];

  return sub_1A98398BC((v0 + 17), v3, v4);
}

uint64_t sub_1A989F070()
{
  v2 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = sub_1A989F2C8;
  }

  else
  {
    v3 = sub_1A989F184;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A989F184()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 136);
  *(v0 + 320) = *(v0 + 144);
  v2();
  *(v0 + 328) = *(v0 + 152);
  v3 = OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_queue;
  *(v0 + 344) = OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_nearbyDeviceCount;
  *(v0 + 352) = v3;
  swift_beginAccess();
  v8 = (*(v0 + 328) + **(v0 + 328));
  v4 = *(*(v0 + 328) + 4);
  v5 = swift_task_alloc();
  *(v0 + 360) = v5;
  *v5 = v0;
  v5[1] = sub_1A989F338;
  v6 = *(v0 + 336);

  return v8(v0 + 168);
}

uint64_t sub_1A989F2C8()
{
  v1 = v0[39];
  v2 = v0[35];
  v3 = v0[32];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A989F338()
{
  v2 = *(*v1 + 360);
  v5 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = sub_1A989FAD8;
  }

  else
  {
    v3 = sub_1A989F44C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A989F44C()
{
  v48 = v0;
  v1 = v0[21];
  if (*(v0 + 176) == 1)
  {
    v2 = v0[36];
    v3 = v0[20];

    v4 = sub_1A9976480();
    v5 = sub_1A9976F90();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1A9662000, v4, v5, "Advertising stopped", v6, 2u);
      MEMORY[0x1AC58D2C0](v6, -1, -1);
    }

    v7 = v0[44];
    v8 = v0[35];
    v9 = v0[32];
    v42 = v0[34];
    v44 = v0[33];
    v38 = v0[40];
    v40 = v0[31];
    v35 = v0[30];
    v10 = v0[27];

    v36 = *(v10 + v7);
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v0[6] = sub_1A98A8880;
    v0[7] = v11;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1A981D3F8;
    v0[5] = &block_descriptor_368;
    v12 = _Block_copy(v0 + 2);

    sub_1A9976640();
    v0[24] = MEMORY[0x1E69E7CC0];
    sub_1A98A8780(&qword_1EB3AC930, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B28A8, &unk_1A9998190);
    sub_1A97AF974(&qword_1EB3AC920, &qword_1EB3B28A8, &unk_1A9998190);
    sub_1A99771F0();
    MEMORY[0x1AC589C70](0, v8, v9, v12);

    _Block_release(v12);
    (*(v40 + 8))(v9, v35);
    (*(v42 + 8))(v8, v44);
    v13 = v0[7];

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = v0[36];
    v17 = sub_1A9976480();
    v18 = sub_1A9976F90();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v47 = v20;
      *v19 = 136315138;
      v0[26] = v1;
      v21 = sub_1A9976880();
      v23 = sub_1A97AF148(v21, v22, &v47);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1A9662000, v17, v18, "Received new state: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x1AC58D2C0](v20, -1, -1);
      MEMORY[0x1AC58D2C0](v19, -1, -1);
    }

    v24 = v0[44];
    v25 = v0[35];
    v43 = v0[34];
    v45 = v0[33];
    v26 = v0[31];
    v37 = v0[32];
    v27 = v0[30];
    v28 = v0[27];
    *(v28 + v0[43]) = v1;
    v39 = *(v28 + v24);
    v41 = v26;
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v0[12] = sub_1A98A8884;
    v0[13] = v29;
    v0[8] = MEMORY[0x1E69E9820];
    v0[9] = 1107296256;
    v0[10] = sub_1A981D3F8;
    v0[11] = &block_descriptor_374;
    v30 = _Block_copy(v0 + 8);

    sub_1A9976640();
    v0[25] = MEMORY[0x1E69E7CC0];
    sub_1A98A8780(&qword_1EB3AC930, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B28A8, &unk_1A9998190);
    sub_1A97AF974(&qword_1EB3AC920, &qword_1EB3B28A8, &unk_1A9998190);
    sub_1A99771F0();
    MEMORY[0x1AC589C70](0, v25, v37, v30);
    _Block_release(v30);
    (*(v41 + 8))(v37, v27);
    (*(v43 + 8))(v25, v45);
    v31 = v0[13];

    v46 = (v0[41] + *v0[41]);
    v32 = *(v0[41] + 4);
    v33 = swift_task_alloc();
    v0[45] = v33;
    *v33 = v0;
    v33[1] = sub_1A989F338;
    v34 = v0[42];

    return v46(v0 + 21);
  }
}

uint64_t sub_1A989FAD8()
{
  *(v0 + 184) = *(v0 + 368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1A989FB6C, 0, 0);
}

uint64_t sub_1A989FB6C()
{
  v1 = v0[40];

  v2 = v0[20];

  v3 = v0[46];
  v4 = v0[35];
  v5 = v0[32];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A989FBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1A98614D8(a3, v24 - v10);
  v12 = sub_1A9976C00();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1A97B06FC(v11, &qword_1EB3B29C0, &qword_1A9991A00);
  }

  else
  {
    sub_1A9976BF0();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1A9976B80();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1A9976890() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1A97B06FC(a3, &qword_1EB3B29C0, &qword_1A9991A00);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A97B06FC(a3, &qword_1EB3B29C0, &qword_1A9991A00);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t AskToAirDropSenderController.start(pin:)(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - v7;
  v9 = sub_1A9976C00();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;
  v11 = v2;
  sub_1A97B40FC(a1, a2);
  sub_1A989FBEC(0, 0, v8, &unk_1A999FA98, v10);
}

Swift::Void __swiftcall AskToAirDropSenderController.stop()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v8 - v3;
  v5 = sub_1A9976C00();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v7 = v0;
  sub_1A989FBEC(0, 0, v4, &unk_1A999FAA8, v6);
}

uint64_t sub_1A98A0318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_1A9976630();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = sub_1A9976680();
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v10 = *(v9 + 64) + 15;
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98A0434, 0, 0);
}

uint64_t sub_1A98A0434()
{
  if (qword_1EB3ABC08 != -1)
  {
    swift_once();
  }

  v1 = sub_1A99764A0();
  __swift_project_value_buffer(v1, qword_1EB3ABC10);
  v2 = sub_1A9976480();
  v3 = sub_1A9976F90();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1A9662000, v2, v3, "Requesting to stop advertising", v4, 2u);
    MEMORY[0x1AC58D2C0](v4, -1, -1);
  }

  v5 = *(v0 + 72);

  v6 = *(v5 + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_airDropClient);
  *(v0 + 128) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A98A0560, v6, 0);
}

uint64_t sub_1A98A0560()
{
  v1 = *(*(v0 + 128) + 112);
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_1A98A0608;

  return sub_1A9839D6C();
}

uint64_t sub_1A98A0608()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 128);
  if (v0)
  {
    v6 = sub_1A98A09B4;
  }

  else
  {
    v6 = sub_1A98A0734;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A98A0750()
{
  v1 = v0[15];
  v2 = v0[12];
  v11 = v0[14];
  v12 = v0[13];
  v8 = v0[10];
  v9 = *(v0[9] + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_queue);
  v10 = v0[11];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[6] = sub_1A98A8754;
  v0[7] = v3;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1A981D3F8;
  v0[5] = &block_descriptor_361;
  v4 = _Block_copy(v0 + 2);

  sub_1A9976640();
  v0[8] = MEMORY[0x1E69E7CC0];
  sub_1A98A8780(&qword_1EB3AC930, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B28A8, &unk_1A9998190);
  sub_1A97AF974(&qword_1EB3AC920, &qword_1EB3B28A8, &unk_1A9998190);
  sub_1A99771F0();
  MEMORY[0x1AC589C70](0, v1, v2, v4);
  _Block_release(v4);
  (*(v10 + 8))(v2, v8);
  (*(v11 + 8))(v1, v12);
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A98A09B4()
{
  v1 = v0[15];
  v2 = v0[12];

  v3 = v0[1];
  v4 = v0[18];

  return v3();
}

void sub_1A98A0A24()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_didStopHandler;
    swift_beginAccess();
    v3 = *v2;
    if (*v2)
    {
      v4 = *(v2 + 8);
      sub_1A967C510(v3);

      v3(0);
      sub_1A967C46C(v3);
    }

    else
    {
    }
  }
}

uint64_t AskToAirDropSenderController.fetchPrivacyPromptInformation(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - v7;
  v9 = sub_1A9976C00();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;
  v11 = v2;

  sub_1A97B4F40(0, 0, v8, &unk_1A999FAB8, v10);
}

uint64_t sub_1A98A0CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[17] = a4;
  v7 = sub_1A9976630();
  v6[20] = v7;
  v8 = *(v7 - 8);
  v6[21] = v8;
  v9 = *(v8 + 64) + 15;
  v6[22] = swift_task_alloc();
  v10 = sub_1A9976680();
  v6[23] = v10;
  v11 = *(v10 - 8);
  v6[24] = v11;
  v12 = *(v11 + 64) + 15;
  v6[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98A0E1C, 0, 0);
}

uint64_t sub_1A98A0E1C()
{
  if (qword_1EB3ABC08 != -1)
  {
    swift_once();
  }

  v1 = sub_1A99764A0();
  v0[26] = __swift_project_value_buffer(v1, qword_1EB3ABC10);
  v2 = sub_1A9976480();
  v3 = sub_1A9976F90();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1A9662000, v2, v3, "Requesting sharing name", v4, 2u);
    MEMORY[0x1AC58D2C0](v4, -1, -1);
  }

  v5 = v0[17];

  v6 = *(v5 + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_airDropClient);
  v0[27] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A98A0F4C, v6, 0);
}

uint64_t sub_1A98A0F4C()
{
  v1 = *(v0[27] + 112);
  v2 = sub_1A9899D4C();
  v0[28] = 0;
  v0[29] = v2;
  v0[30] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A98A0FE0, 0, 0);
}

uint64_t sub_1A98A0FE0()
{
  v1 = v0[26];
  v2 = sub_1A9976480();
  v3 = sub_1A9976F90();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1A9662000, v2, v3, "Received sharing name", v4, 2u);
    MEMORY[0x1AC58D2C0](v4, -1, -1);
  }

  v6 = v0[29];
  v5 = v0[30];
  v29 = v0[24];
  v30 = v0[23];
  v26 = v0[25];
  v27 = v0[22];
  v7 = v0[20];
  v28 = v0[21];
  v8 = v0[19];
  v25 = v0[18];
  v9 = v0[17];

  SFString.localized.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B41D0, &qword_1A999FD80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A9996D60;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1A98A7F5C();
  *(v10 + 32) = v6;
  *(v10 + 40) = v5;
  v11 = sub_1A99767F0();
  v13 = v12;

  v14 = SFString.localized.getter();
  v16 = v15;
  v17 = *(v9 + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_queue);
  v18 = swift_allocObject();
  v18[2] = v25;
  v18[3] = v8;
  v18[4] = v11;
  v18[5] = v13;
  v18[6] = v14;
  v18[7] = v16;
  v0[12] = sub_1A98A8720;
  v0[13] = v18;
  v0[8] = MEMORY[0x1E69E9820];
  v0[9] = 1107296256;
  v0[10] = sub_1A981D3F8;
  v0[11] = &block_descriptor_356;
  v19 = _Block_copy(v0 + 8);

  sub_1A9976640();
  v0[16] = MEMORY[0x1E69E7CC0];
  sub_1A98A8780(&qword_1EB3AC930, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B28A8, &unk_1A9998190);
  sub_1A97AF974(&qword_1EB3AC920, &qword_1EB3B28A8, &unk_1A9998190);
  sub_1A99771F0();
  MEMORY[0x1AC589C70](0, v26, v27, v19);
  _Block_release(v19);
  (*(v28 + 8))(v27, v7);
  (*(v29 + 8))(v26, v30);
  v20 = v0[13];

  v21 = v0[25];
  v22 = v0[22];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1A98A1358()
{
  v31 = v0;
  v1 = v0[28];
  v2 = v0[26];
  v3 = v1;
  v4 = sub_1A9976480();
  v5 = sub_1A9976F90();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[28];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 136315138;
    v0[15] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    v10 = sub_1A9976880();
    v12 = sub_1A97AF148(v10, v11, &v30);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1A9662000, v4, v5, "Failed to fetch sharing name: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x1AC58D2C0](v8, -1, -1);
    MEMORY[0x1AC58D2C0](v7, -1, -1);
  }

  v13 = v0[25];
  v27 = v0[28];
  v28 = v0[24];
  v14 = v0[22];
  v29 = v0[23];
  v16 = v0[20];
  v15 = v0[21];
  v17 = v0[18];
  v18 = v0[19];
  v26 = *(v0[17] + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_queue);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = v18;
  v0[6] = sub_1A98A86E8;
  v0[7] = v19;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1A981D3F8;
  v0[5] = &block_descriptor_350;
  v20 = _Block_copy(v0 + 2);

  sub_1A9976640();
  v0[14] = MEMORY[0x1E69E7CC0];
  sub_1A98A8780(&qword_1EB3AC930, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B28A8, &unk_1A9998190);
  sub_1A97AF974(&qword_1EB3AC920, &qword_1EB3B28A8, &unk_1A9998190);
  sub_1A99771F0();
  MEMORY[0x1AC589C70](0, v13, v14, v20);
  _Block_release(v20);

  (*(v15 + 8))(v14, v16);
  (*(v28 + 8))(v13, v29);
  v21 = v0[7];

  v22 = v0[25];
  v23 = v0[22];

  v24 = v0[1];

  return v24();
}

void sub_1A98A1800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1A99767E0();
  v7 = sub_1A99767E0();
  (*(a5 + 16))(a5, v6, v7);
}

uint64_t sub_1A98A18A0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_airDropClient);
  *(v0 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A98A18CC, v1, 0);
}

uint64_t sub_1A98A18CC()
{
  v1 = *(*(v0 + 24) + 112);
  v2 = sub_1A9899D4C();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1A98A1AF0(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x1EEE6DFA0](sub_1A98A1B68, 0, 0);
}

uint64_t sub_1A98A1B68()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_airDropClient);
  *(v0 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A98A1B94, v1, 0);
}

uint64_t sub_1A98A1B94()
{
  v1 = *(*(v0 + 32) + 112);
  sub_1A9899D4C();
  *(v0 + 40) = 0;

  v2 = sub_1A99767E0();

  v3 = *(v0 + 24);
  (v3)[2](v3, v2, 0);

  _Block_release(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A98A1C98()
{
  v1 = *(v0 + 40);

  v2 = sub_1A9975F10();
  v3 = *(v0 + 24);
  (v3)[2](v3, 0, v2);

  _Block_release(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A98A1DD0()
{
  v1 = *v0;
  sub_1A9977980();
  MEMORY[0x1AC58A630](v1);
  return sub_1A99779B0();
}

uint64_t sub_1A98A1E44()
{
  v1 = *v0;
  sub_1A9977980();
  MEMORY[0x1AC58A630](v1);
  return sub_1A99779B0();
}

unint64_t sub_1A98A1E88@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A98A6BD8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t AskToAirDropReceiverController.isNearbyDeviceClose.getter()
{
  v1 = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_isNearbyDeviceClose;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AskToAirDropReceiverController.hasPendingOrActiveConnections.getter()
{
  v1 = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_hasPendingOrActiveConnections;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A98A20CC(_BYTE *a1, uint64_t a2, char a3, uint64_t *a4, void *a5)
{
  v8 = *a4;
  swift_beginAccess();
  a1[v8] = a3;
  v9 = &a1[*a5];
  result = swift_beginAccess();
  v11 = *v9;
  if (*v9)
  {
    v12 = *(v9 + 1);
    v13 = a1;
    v14 = sub_1A967C510(v11);
    v11(v14);

    return sub_1A967C46C(v11);
  }

  return result;
}

uint64_t sub_1A98A2174(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a5;
  swift_beginAccess();
  *(v8 + v9) = v7;
  v10 = v8 + *a6;
  result = swift_beginAccess();
  v12 = *v10;
  if (*v10)
  {
    v13 = *(v10 + 8);

    v12(v14);
    return sub_1A967C46C(v12);
  }

  return result;
}

uint64_t AskToAirDropReceiverController.isLegacyMode.getter()
{
  v1 = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_isLegacyMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AskToAirDropReceiverController.connectionState.getter()
{
  v1 = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectionState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A98A23F0(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectionState;
  swift_beginAccess();
  *(v2 + v4) = a1;
  v5 = v2 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectionStateChangedHandler;
  swift_beginAccess();
  v6 = *v5;
  if (*v5)
  {
    v7 = *(v5 + 8);

    v6(v8);
    sub_1A967C46C(v6);
  }

  v9 = v2 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_stateChangedHandler;
  result = swift_beginAccess();
  v11 = *v9;
  if (*v9)
  {
    v12 = *(v9 + 8);

    v11(v13);
    return sub_1A967C46C(v11);
  }

  return result;
}

uint64_t sub_1A98A25E8@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_stateChangedHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1A982B46C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1A967C510(v4);
}

uint64_t sub_1A98A2688(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A98A888C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_stateChangedHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1A967C510(v3);
  return sub_1A967C46C(v8);
}

uint64_t sub_1A98A28C4@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectionStateChangedHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1A982B46C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1A967C510(v4);
}

uint64_t sub_1A98A2964(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A98A888C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectionStateChangedHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1A967C510(v3);
  return sub_1A967C46C(v8);
}

uint64_t sub_1A98A2BA0@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_pendingOrActiveConnectionsChangedHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1A982B46C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1A967C510(v4);
}

uint64_t sub_1A98A2C40(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A98A888C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_pendingOrActiveConnectionsChangedHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1A967C510(v3);
  return sub_1A967C46C(v8);
}

id sub_1A98A2D7C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = (a1 + *a3);
  swift_beginAccess();
  v6 = *v5;
  if (*v5)
  {
    v7 = v5[1];
    aBlock[4] = v6;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A981D3F8;
    aBlock[3] = a4;
    v8 = _Block_copy(aBlock);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1A98A2F50@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_nearbyDeviceCloseChangedHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1A982A5E8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1A967C510(v4);
}

uint64_t sub_1A98A2FF0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A98A7AA0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_nearbyDeviceCloseChangedHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1A967C510(v3);
  return sub_1A967C46C(v8);
}

uint64_t sub_1A98A3214(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

void sub_1A98A3284(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1A98A33D0(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t sub_1A98A3434@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_errorHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1A98A7A74;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1A967C510(v4);
}

uint64_t sub_1A98A34D4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A98A7A3C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_errorHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1A967C510(v3);
  return sub_1A967C46C(v8);
}

id AskToAirDropReceiverController.hasSeenPrivacyPrompt.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1A99767E0();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1A99767E0();
  v4 = [v2 BOOLForKey_];

  return v4;
}

void AskToAirDropReceiverController.hasSeenPrivacyPrompt.setter(char a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1A99767E0();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_1A99767E0();
    [v4 setBool:a1 & 1 forKey:v5];
  }
}

void sub_1A98A3954(unsigned __int8 *a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1A99767E0();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_1A99767E0();
    v6 = [v4 BOOLForKey_];
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
}

void sub_1A98A3A1C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1A99767E0();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_1A99767E0();
    [v4 setBool:v1 forKey:v5];
  }
}

void (*AskToAirDropReceiverController.hasSeenPrivacyPrompt.modify(unsigned __int8 *a1))(unsigned __int8 *a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1A99767E0();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_1A99767E0();
    v6 = [v4 BOOLForKey_];
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_1A98A3BE8;
}

void sub_1A98A3BE8(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1A99767E0();
  v5 = [v2 initWithSuiteName_];

  if (v5)
  {
    v4 = sub_1A99767E0();
    [v5 setBool:v1 forKey:v4];
  }
}

uint64_t AskToAirDropReceiverController.connectedNearbyDeviceNames.getter()
{
  v1 = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectedNearbyDeviceNames;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

id sub_1A98A3E10(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  v6 = sub_1A99767E0();

  return v6;
}

uint64_t sub_1A98A3E94(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_1A98A3EF4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1A9976820();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

void AskToAirDropReceiverController.init()()
{
  *(v0 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_isNearbyDeviceClose) = 0;
  *(v0 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_hasPendingOrActiveConnections) = 0;
  *(v0 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_isLegacyMode) = 0;
  v1 = (v0 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_nearbyDevicesDisplayName);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectionState) = 0;
  v2 = (v0 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_stateChangedHandler);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectionStateChangedHandler);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_pendingOrActiveConnectionsChangedHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_nearbyDeviceCloseChangedHandler);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_errorHandler);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectedNearbyDeviceNames) = MEMORY[0x1E69E7CC0];
  v7 = (v0 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_sharingName);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v0 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_privacyRemoteDeviceNames);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  sub_1A9977470();
  __break(1u);
}

id AskToAirDropReceiverController.__allocating_init(queue:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1A98A717C(a1);

  return v4;
}

id AskToAirDropReceiverController.init(queue:)(void *a1)
{
  v2 = sub_1A98A717C(a1);

  return v2;
}

uint64_t sub_1A98A40FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a4;
  v4[17] = swift_getObjectType();
  v5 = sub_1A9976630();
  v4[18] = v5;
  v6 = *(v5 - 8);
  v4[19] = v6;
  v7 = *(v6 + 64) + 15;
  v4[20] = swift_task_alloc();
  v8 = sub_1A9976680();
  v4[21] = v8;
  v9 = *(v8 - 8);
  v4[22] = v9;
  v10 = *(v9 + 64) + 15;
  v4[23] = swift_task_alloc();
  v11 = sub_1A99764A0();
  v4[24] = v11;
  v12 = *(v11 - 8);
  v4[25] = v12;
  v13 = *(v12 + 64) + 15;
  v4[26] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B41E0, &qword_1A999FD98);
  v4[27] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v4[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98A42BC, 0, 0);
}

uint64_t sub_1A98A42BC()
{
  if (qword_1EB3ABC08 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[24], qword_1EB3ABC10);
  v1 = sub_1A9976480();
  v2 = sub_1A9976F90();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1A9662000, v1, v2, "Registering for state updates", v3, 2u);
    MEMORY[0x1AC58D2C0](v3, -1, -1);
  }

  v4 = v0[16];

  v5 = *(v4 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_airDropClient);
  v0[29] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A98A43E4, v5, 0);
}

uint64_t sub_1A98A43E4()
{
  if (qword_1EB3AC970 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);
  v6 = __swift_project_value_buffer(v4, qword_1EB3AC978);
  v7 = v3[11];
  *(v0 + 296) = v7;
  v8 = *(v5 + 16);
  *(v0 + 240) = v8;
  *(v0 + 248) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(&v2[v7], v6, v4);
  v9 = swift_allocObject();
  *(v0 + 256) = v9;
  swift_weakInit();
  *v2 = 0xD000000000000016;
  *(v2 + 1) = 0x80000001A99E62B0;
  v10 = &v2[v3[12]];
  *v10 = &unk_1A999FDA0;
  *(v10 + 1) = v9;
  v11 = &v2[v3[13]];
  *v11 = 0;
  *(v11 + 1) = 0;

  return MEMORY[0x1EEE6DFA0](sub_1A98A4548, 0, 0);
}

uint64_t sub_1A98A4548()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 224);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v6 = *(v0 + 192);
  (*(v0 + 240))(v4, v3 + *(v0 + 296), v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B41E8, &qword_1A999FDA8);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  *(v0 + 264) = v10;
  swift_defaultActor_initialize();
  sub_1A97B06FC(v3, &qword_1EB3B41E0, &qword_1A999FD98);
  v11 = (v10 + qword_1EB3EAF70);
  *v11 = 0;
  v11[1] = 0;
  *(v10 + 112) = 0xD000000000000016;
  *(v10 + 120) = 0x80000001A99E62B0;
  (*(v5 + 32))(v10 + qword_1EB3EAF60, v4, v6);
  v12 = (v10 + qword_1EB3EAF58);
  *v12 = &unk_1A999FDA0;
  v12[1] = v2;
  v13 = (v10 + qword_1EB3EAF68);
  *v13 = 0;
  v13[1] = 0;
  *(v0 + 272) = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_queue;
  v14 = swift_task_alloc();
  *(v0 + 280) = v14;
  *v14 = v0;
  v14[1] = sub_1A98A4714;
  v15 = *(v0 + 264);

  return sub_1A9897AC4(v0 + 16);
}

uint64_t sub_1A98A4714()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_1A98A4C10;
  }

  else
  {
    v3 = sub_1A98A4828;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A98A4828()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2)
  {
    v26 = *(v0 + 40);
    v27 = *(v0 + 32);
    v3 = *(v0 + 56);
    v18 = *(v0 + 184);
    v23 = *(v0 + 176);
    v24 = *(v0 + 168);
    v25 = *(v0 + 48);
    v22 = *(v0 + 152);
    v4 = *(v0 + 136);
    v19 = *(v0 + 160);
    v20 = *(v0 + 144);
    v21 = *(*(v0 + 128) + *(v0 + 272));
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v1 & 1;
    *(v6 + 25) = *(v0 + 300);
    *(v6 + 28) = *(v0 + 303);
    *(v6 + 32) = v2;
    *(v6 + 40) = v27;
    *(v6 + 48) = v26;
    *(v6 + 56) = v25;
    *(v6 + 64) = v3;
    *(v6 + 72) = v4;
    *(v0 + 96) = sub_1A98A8140;
    *(v0 + 104) = v6;
    *(v0 + 64) = MEMORY[0x1E69E9820];
    *(v0 + 72) = 1107296256;
    *(v0 + 80) = sub_1A981D3F8;
    *(v0 + 88) = &block_descriptor_328;
    aBlock = _Block_copy((v0 + 64));

    sub_1A98A8150(v1, v2);
    sub_1A9976640();
    *(v0 + 120) = MEMORY[0x1E69E7CC0];
    sub_1A98A8780(&qword_1EB3AC930, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B28A8, &unk_1A9998190);
    sub_1A97AF974(&qword_1EB3AC920, &qword_1EB3B28A8, &unk_1A9998190);
    sub_1A99771F0();
    MEMORY[0x1AC589C70](0, v18, v19, aBlock);
    _Block_release(aBlock);
    sub_1A98A81A0(v1, v2);
    (*(v22 + 8))(v19, v20);
    (*(v23 + 8))(v18, v24);
    v7 = *(v0 + 104);

    v8 = swift_task_alloc();
    *(v0 + 280) = v8;
    *v8 = v0;
    v8[1] = sub_1A98A4714;
    v9 = *(v0 + 264);

    return sub_1A9897AC4(v0 + 16);
  }

  else
  {
    v11 = *(v0 + 264);
    v12 = *(v0 + 224);
    v13 = *(v0 + 208);
    v14 = *(v0 + 184);
    v15 = *(v0 + 160);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1A98A4C10()
{
  *(v0 + 112) = *(v0 + 288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1A98A4CA4, 0, 0);
}

uint64_t sub_1A98A4CA4()
{
  v1 = v0[33];
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[23];
  v5 = v0[20];

  v6 = v0[1];
  v7 = v0[36];

  return v6();
}

uint64_t sub_1A98A4DBC()
{
  if (qword_1EB3ABC08 != -1)
  {
    swift_once();
  }

  v1 = sub_1A99764A0();
  __swift_project_value_buffer(v1, qword_1EB3ABC10);
  v2 = sub_1A9976480();
  v3 = sub_1A9976F90();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1A9662000, v2, v3, "Requesting connect to all nearby devices", v4, 2u);
    MEMORY[0x1AC58D2C0](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_airDropClient);
  *(v0 + 24) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A98A4EE8, v6, 0);
}

uint64_t sub_1A98A4EE8()
{
  v1 = *(*(v0 + 24) + 112);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1A98A4F90;

  return sub_1A983A1D8();
}

uint64_t sub_1A98A4F90()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_1A98A50D4;
  }

  else
  {
    v6 = sub_1A98A50BC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A98A5158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v24 - v9;
  v11 = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectionState;
  swift_beginAccess();
  *&v6[v11] = a1;
  v12 = &v6[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectionStateChangedHandler];
  swift_beginAccess();
  v13 = *v12;
  if (*v12)
  {
    v14 = *(v12 + 1);

    v13(v15);
    sub_1A967C46C(v13);
  }

  v16 = &v6[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_stateChangedHandler];
  swift_beginAccess();
  v17 = *v16;
  if (*v16)
  {
    v18 = *(v16 + 1);

    v17(v19);
    sub_1A967C46C(v17);
  }

  v20 = sub_1A9976C00();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v6;
  v22 = v6;
  sub_1A989FBEC(0, 0, v10, a3, v21);
}

uint64_t sub_1A98A5334()
{
  if (qword_1EB3ABC08 != -1)
  {
    swift_once();
  }

  v1 = sub_1A99764A0();
  __swift_project_value_buffer(v1, qword_1EB3ABC10);
  v2 = sub_1A9976480();
  v3 = sub_1A9976F90();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1A9662000, v2, v3, "Requesting disconnect to all nearby devices", v4, 2u);
    MEMORY[0x1AC58D2C0](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_airDropClient);
  *(v0 + 24) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A98A5460, v6, 0);
}

uint64_t sub_1A98A5460()
{
  v1 = *(*(v0 + 24) + 112);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1A98A5508;

  return sub_1A983A538();
}

uint64_t sub_1A98A5508()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_1A98A88EC;
  }

  else
  {
    v6 = sub_1A98A8890;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A98A56A4(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a2(0, 0xE000000000000000);
  }

  v4 = Strong;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B41D0, &qword_1A999FD80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A9998170;
  v7 = *&v4[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_privacyRemoteDeviceNames];
  v6 = *&v4[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_privacyRemoteDeviceNames + 8];
  v8 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1A98A7F5C();
  *(v5 + 64) = v9;
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;
  v10 = &v4[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_sharingName];
  swift_beginAccess();
  v11 = *v10;
  v12 = *(v10 + 1);
  *(v5 + 96) = v8;
  *(v5 + 104) = v9;
  *(v5 + 72) = v11;
  *(v5 + 80) = v12;

  SFString.localized.getter();
  v13 = sub_1A9976830();
  v15 = v14;

  a2(v13, v15);
}

uint64_t sub_1A98A5864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a5;
  v9 = sub_1A9976630();
  v25 = *(v9 - 8);
  v10 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1A9976680();
  v13 = *(v24 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v5 + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_queue);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a1;
  v18[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981D3F8;
  aBlock[3] = v22;
  v19 = _Block_copy(aBlock);

  sub_1A9976640();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1A98A8780(&qword_1EB3AC930, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B28A8, &unk_1A9998190);
  sub_1A97AF974(&qword_1EB3AC920, &qword_1EB3B28A8, &unk_1A9998190);
  sub_1A99771F0();
  MEMORY[0x1AC589C70](0, v16, v12, v19);
  _Block_release(v19);
  (*(v25 + 8))(v12, v9);
  (*(v13 + 8))(v16, v24);
}

uint64_t sub_1A98A5B74(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a2(0, 0xE000000000000000);
  }

  v4 = (Strong + OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_sharingName);
  v5 = Strong;
  swift_beginAccess();
  v7 = *v4;
  v6 = v4[1];

  a2(v7, v6);
}

uint64_t sub_1A98A5C64(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

void sub_1A98A5CF8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_1EB3ABC08 != -1)
    {
      swift_once();
    }

    v5 = sub_1A99764A0();
    __swift_project_value_buffer(v5, qword_1EB3ABC10);
    sub_1A98A81F0(a2, v84);
    v6 = sub_1A9976480();
    v7 = sub_1A9976F90();
    sub_1A98A824C(a2);
    v80 = a2;
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v83 = v9;
      *v8 = 136315138;
      v10 = *(a2 + 16);
      v84[0] = *a2;
      v84[1] = v10;
      v84[2] = *(a2 + 32);
      sub_1A98A81F0(a2, v81);
      v11 = sub_1A9976880();
      v13 = sub_1A97AF148(v11, v12, &v83);

      *(v8 + 4) = v13;
      a2 = v80;
      _os_log_impl(&dword_1A9662000, v6, v7, "Received state update: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x1AC58D2C0](v9, -1, -1);
      MEMORY[0x1AC58D2C0](v8, -1, -1);
    }

    v14 = *a2;
    v15 = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_isNearbyDeviceClose;
    swift_beginAccess();
    v4[v15] = v14;
    v16 = &v4[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_nearbyDeviceCloseChangedHandler];
    swift_beginAccess();
    v17 = *v16;
    if (*v16)
    {
      v18 = *(v16 + 1);

      v17(v19);
      sub_1A967C46C(v17);
    }

    v20 = *(a2 + 8);
    v21 = v20[2];
    if (v21)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B41D0, &qword_1A999FD80);
      v22 = swift_allocObject();
      v23 = MEMORY[0x1E69E6530];
      v24 = MEMORY[0x1E69E65A8];
      *(v22 + 16) = xmmword_1A9996D60;
      *(v22 + 56) = v23;
      *(v22 + 64) = v24;
      *(v22 + 32) = v21;
      LOBYTE(v83) = 3;
      SFString.localized.getter();
      v21 = sub_1A9976830();
      v26 = v25;
    }

    else
    {
      v26 = 0xE000000000000000;
    }

    v27 = &v4[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_nearbyDevicesDisplayName];
    swift_beginAccess();
    v28 = v27[1];
    *v27 = v21;
    v27[1] = v26;

    v29 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v29 = v21 & 0xFFFFFFFFFFFFLL;
    }

    v30 = v29 != 0;
    v31 = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_hasPendingOrActiveConnections;
    swift_beginAccess();
    v4[v31] = v30;
    v32 = &v4[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_pendingOrActiveConnectionsChangedHandler];
    swift_beginAccess();
    v33 = *v32;
    if (*v32)
    {
      v34 = *(v32 + 1);

      v33(v35);
      sub_1A967C46C(v33);
    }

    v36 = *(a2 + 24);
    v37 = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectionState;
    swift_beginAccess();
    *&v4[v37] = v36;
    v38 = &v4[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectionStateChangedHandler];
    swift_beginAccess();
    v39 = *v38;
    if (*v38)
    {
      v40 = *(v38 + 1);

      v39(v41);
      sub_1A967C46C(v39);
    }

    v42 = &v4[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_stateChangedHandler];
    swift_beginAccess();
    v43 = *v42;
    if (*v42)
    {
      v44 = *(v42 + 1);

      v43(v45);
      sub_1A967C46C(v43);
    }

    v79 = v42;
    v46 = sub_1A98A82A0(v20);
    v47 = &v4[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_privacyRemoteDeviceNames];
    v48 = *&v4[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_privacyRemoteDeviceNames + 8];
    *v47 = v46;
    v47[1] = v49;

    v50 = *(a2 + 16);
    v51 = *(v50 + 16);
    v52 = MEMORY[0x1E69E7CC0];
    if (v51)
    {
      v78 = v4;
      v82 = MEMORY[0x1E69E7CC0];
      sub_1A97BD628(0, v51, 0);
      v52 = v82;
      v53 = (v50 + 40);
      do
      {
        v54 = *(v53 - 1);
        v55 = *v53;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B41D0, &qword_1A999FD80);
        v56 = swift_allocObject();
        *(v56 + 16) = xmmword_1A9996D60;
        *(v56 + 56) = MEMORY[0x1E69E6158];
        *(v56 + 64) = sub_1A98A7F5C();
        *(v56 + 32) = v54;
        *(v56 + 40) = v55;
        v57 = qword_1EB3B0B28;
        swift_bridgeObjectRetain_n();
        if (v57 != -1)
        {
          swift_once();
        }

        v58 = qword_1EB3B38C0;
        if (qword_1EB3B38C0)
        {
          v59 = sub_1A99767E0();
          v60 = sub_1A99767E0();
          v61 = sub_1A99767E0();
          v62 = [v58 localizedStringForKey:v59 value:v60 table:v61];

          sub_1A9976820();
        }

        v63 = sub_1A9976830();
        v65 = v64;

        v82 = v52;
        v67 = *(v52 + 16);
        v66 = *(v52 + 24);
        if (v67 >= v66 >> 1)
        {
          sub_1A97BD628((v66 > 1), v67 + 1, 1);
          v52 = v82;
        }

        *(v52 + 16) = v67 + 1;
        v68 = v52 + 16 * v67;
        *(v68 + 32) = v63;
        *(v68 + 40) = v65;
        v53 += 2;
        --v51;
      }

      while (v51);
      v4 = v78;
    }

    v69 = OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectedNearbyDeviceNames;
    swift_beginAccess();
    v70 = *&v4[v69];
    *&v4[v69] = v52;

    v72 = *(v80 + 32);
    v71 = *(v80 + 40);
    v73 = &v4[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_sharingName];
    swift_beginAccess();
    v74 = v73[1];
    *v73 = v72;
    v73[1] = v71;

    v75 = *v79;
    if (*v79)
    {
      v76 = *(v79 + 1);

      v75(v77);
      sub_1A967C46C(v75);
    }
  }
}