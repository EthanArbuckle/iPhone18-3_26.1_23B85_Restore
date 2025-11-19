uint64_t sub_26B4D31DC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3[4];
  v4 = a3[5];
  return static VCCommand.TargetedValue.< infix(_:_:)(a1, a2, a3[2], a3[3]);
}

uint64_t sub_26B4D3200(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3[4];
  v4 = a3[5];
  return static VCCommand.TargetedValue.== infix(_:_:)(a1, a2, a3[2], a3[3]);
}

uint64_t sub_26B4D3284@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    v7 = MEMORY[0x277D84F90];
    goto LABEL_99;
  }

  v4 = 0;
  v5 = a1;
  v6 = a2 + 40;
  v7 = MEMORY[0x277D84F90];
  v36 = a2 + 40;
  while (2)
  {
    v38 = v7;
    v8 = (v6 + 16 * v4);
    v9 = v4;
    while (1)
    {
      if (v9 >= v3)
      {
        __break(1u);
LABEL_104:
        __break(1u);

        __break(1u);
        JUMPOUT(0x26B4D38ECLL);
      }

      v4 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_104;
      }

      v11 = *(v8 - 1);
      v12 = *v8;
      if (v12 <= 7)
      {
        if (v12 - 3 >= 5)
        {
          if (v12 - 1 >= 2)
          {
            goto LABEL_91;
          }

          v14 = 1;
        }

        else
        {
          v14 = 0;
        }

        v16 = v14 ? 0x534F63616DLL : 5459817;
        v15 = v14 ? 0xE500000000000000 : 0xE300000000000000;
      }

      else
      {
        if (((1 << v12) & 0x3C00) != 0)
        {
          v13 = 2;
        }

        else
        {
          v13 = ((1 << v12) & 0x300) != 0 ? 3 : 4;
        }

        if (v13 == 2)
        {
          v15 = 0xE400000000000000;
          v16 = 1397716596;
        }

        else if (v13 == 3)
        {
          v15 = 0xE800000000000000;
          v16 = 0x534F6E6F69736976;
        }

        else
        {
          v15 = 0xE700000000000000;
          v16 = 0x534F6863746177;
        }
      }

      v17 = byte_26B548312[v5];
      v18 = 0x534F6E6F69736976;
      if (v17 != 3)
      {
        v18 = 0x534F6863746177;
      }

      v19 = 0xE800000000000000;
      if (v17 != 3)
      {
        v19 = 0xE700000000000000;
      }

      if (v17 == 2)
      {
        v18 = 1397716596;
        v19 = 0xE400000000000000;
      }

      v20 = byte_26B548312[v5] ? 0x534F63616DLL : 5459817;
      v21 = byte_26B548312[v5] ? 0xE500000000000000 : 0xE300000000000000;
      v22 = byte_26B548312[v5] <= 1u ? v20 : v18;
      v23 = byte_26B548312[v5] <= 1u ? v21 : v19;
      if (v16 == v22 && v15 == v23)
      {
        break;
      }

      v24 = sub_26B542FB4();

      if (v24)
      {
        goto LABEL_51;
      }

LABEL_5:
      ++v9;
      v8 += 16;
      if (v4 == v3)
      {
        v7 = v38;
        goto LABEL_99;
      }
    }

LABEL_51:
    v25 = 0xE300000000000000;
    v26 = 6513005;
    switch(v12)
    {
      case 2u:
        goto LABEL_61;
      case 4u:
        v25 = 0xE600000000000000;
        v26 = 0x656E6F685069;
        goto LABEL_61;
      case 5u:
        v25 = 0xE400000000000000;
        v26 = 1684099177;
        goto LABEL_61;
      case 6u:
        v25 = 0xE700000000000000;
        v26 = 0x79616C50726163;
        goto LABEL_61;
      case 7u:
        v26 = 0x6C6174614363616DLL;
        v25 = 0xEB00000000747379;
        goto LABEL_61;
      case 9u:
        v25 = 0xE600000000000000;
        v26 = 0x6E6F69736976;
        goto LABEL_61;
      case 0xBu:
        v25 = 0xE700000000000000;
        v26 = 0x5654656C707061;
        goto LABEL_61;
      case 0xCu:
        v25 = 0xE700000000000000;
        v26 = 0x646F50656D6F68;
        goto LABEL_61;
      case 0xDu:
        v26 = 1685016681;
        v25 = 0xE400000000000000;
        goto LABEL_61;
      case 0xFu:
        v25 = 0xE500000000000000;
        v26 = 0x6863746177;
LABEL_61:
        if (a1 > 4u)
        {
          if (a1 <= 6u)
          {
            if (a1 == 5)
            {
              v27 = 0xE600000000000000;
              if (v26 != 0x6E6F69736976)
              {
                goto LABEL_4;
              }
            }

            else
            {
              v27 = 0xE700000000000000;
              if (v26 != 0x5654656C707061)
              {
                goto LABEL_4;
              }
            }
          }

          else if (a1 == 7)
          {
            v27 = 0xE700000000000000;
            if (v26 != 0x646F50656D6F68)
            {
              goto LABEL_4;
            }
          }

          else if (a1 == 8)
          {
            v27 = 0xE400000000000000;
            if (v26 != 1685016681)
            {
              goto LABEL_4;
            }
          }

          else
          {
            v27 = 0xE500000000000000;
            if (v26 != 0x6863746177)
            {
              goto LABEL_4;
            }
          }
        }

        else if (a1 <= 1u)
        {
          if (a1)
          {
            v27 = 0xE600000000000000;
            if (v26 != 0x656E6F685069)
            {
              goto LABEL_4;
            }
          }

          else
          {
            v27 = 0xE300000000000000;
            if (v26 != 6513005)
            {
              goto LABEL_4;
            }
          }
        }

        else if (a1 == 2)
        {
          v27 = 0xE400000000000000;
          if (v26 != 1684099177)
          {
            goto LABEL_4;
          }
        }

        else if (a1 == 3)
        {
          v27 = 0xE700000000000000;
          if (v26 != 0x79616C50726163)
          {
            goto LABEL_4;
          }
        }

        else
        {
          v27 = 0xEB00000000747379;
          if (v26 != 0x6C6174614363616DLL)
          {
            goto LABEL_4;
          }
        }

        if (v25 != v27)
        {
LABEL_4:
          v10 = sub_26B542FB4();

          if (v10)
          {
            goto LABEL_91;
          }

          goto LABEL_5;
        }

LABEL_91:
        v7 = v38;
        v40 = v38;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26B4D8630(0, *(v38 + 2) + 1, 1);
          v7 = v40;
        }

        v6 = v36;
        v29 = *(v7 + 2);
        v28 = *(v7 + 3);
        if (v29 >= v28 >> 1)
        {
          sub_26B4D8630((v28 > 1), v29 + 1, 1);
          v7 = v40;
        }

        *(v7 + 2) = v29 + 1;
        v30 = &v7[16 * v29];
        *(v30 + 4) = v11;
        v30[40] = v12;
        if (v4 != v3)
        {
          continue;
        }

LABEL_99:
        v40 = v7;

        sub_26B4D7B84(&v40);

        v31 = *(v40 + 2);
        if (v31)
        {
          v32 = &v40[16 * v31 + 16];
          v33 = *v32;
          v34 = v32[8];
        }

        else
        {
          v33 = 0;
          v34 = -1;
        }

        *a3 = v33;
        *(a3 + 8) = v34;
        return result;
      default:
        goto LABEL_91;
    }
  }
}

uint64_t Sequence<>.forIdiom(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_26B542CA4();
  v39 = *(v11 - 8);
  v12 = *(v39 + 64);
  v16 = MEMORY[0x28223BE20](v11, v13, v14, v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v16, v19, v20, v21);
  v24 = &v39 - v23;
  v25 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v22, v26, v27, v28);
  LOBYTE(a1) = *a1;
  (*(v30 + 16))(&v39 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v5, a2);
  v41 = a2;
  v42 = a3;
  v43 = a4;
  v44 = a1;
  v45 = sub_26B542BB4();
  sub_26B542C44();
  swift_getWitnessTable();
  v31 = *(a4 + 8);
  v32 = sub_26B542BC4();

  v45 = v32;
  swift_getWitnessTable();
  sub_26B5429C4();
  v33 = v39;

  (*(v33 + 32))(v18, v24, v11);
  v34 = *(AssociatedTypeWitness - 8);
  if ((*(v34 + 48))(v18, 1, AssociatedTypeWitness) == 1)
  {
    (*(v33 + 8))(v18, v11);
    v35 = 1;
    v36 = v40;
  }

  else
  {
    v37 = v40;
    (*(v34 + 32))(v40, v18, AssociatedTypeWitness);
    v35 = 0;
    v36 = v37;
  }

  return (*(v34 + 56))(v36, v35, 1, AssociatedTypeWitness);
}

uint64_t Action.all.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Action.mac.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

SpeechRecognitionCommandServices::Action __swiftcall Action.init(_:mac:)(Swift::String_optional _, Swift::String_optional mac)
{
  *v2 = _;
  v2[1] = mac;
  result.mac = mac;
  result.all = _;
  return result;
}

uint64_t sub_26B4D3D1C()
{
  v1 = *v0;
  sub_26B543034();
  MEMORY[0x26D678100](v1);
  return sub_26B543054();
}

uint64_t sub_26B4D3D60()
{
  if (*v0)
  {
    return 6513005;
  }

  else
  {
    return 7105633;
  }
}

uint64_t sub_26B4D3D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7105633 && a2 == 0xE300000000000000;
  if (v5 || (sub_26B542FB4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6513005 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26B542FB4();

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

uint64_t sub_26B4D3E6C(uint64_t a1)
{
  v2 = sub_26B4D9E7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B4D3EA8(uint64_t a1)
{
  v2 = sub_26B4D9E7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Action.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFE48, &qword_26B5455F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6, v7, v8);
  v10 = v17 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v17[1] = v1[3];
  v17[2] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B4D9E7C();
  sub_26B543074();
  v19 = 0;
  v15 = v17[3];
  sub_26B542F24();
  if (!v15)
  {
    v18 = 1;
    sub_26B542F24();
  }

  return (*(v4 + 8))(v10, v3);
}

uint64_t Action.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFE50, &qword_26B5455F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8, v9, v10);
  v12 = &v21 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B4D9E7C();
  sub_26B543064();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  v14 = sub_26B542EA4();
  v16 = v15;
  v22 = v14;
  v23 = 1;
  v17 = sub_26B542EA4();
  v19 = v18;
  (*(v6 + 8))(v12, v5);
  *a2 = v22;
  a2[1] = v16;
  a2[2] = v17;
  a2[3] = v19;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t VCCommand.commandID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t VCCommand.localizationComment.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t VCCommand.action.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  *a1 = *(v1 + 152);
  *(a1 + 8) = *(v1 + 160);
  *(a1 + 24) = v2;
}

__n128 VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, char a10, char a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15, char *a16, char *a17, __int128 a18, uint64_t a19, uint64_t a20)
{
  v20 = *a8;
  v21 = *a16;
  v22 = *a17;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = v20;
  *(a9 + 57) = a10;
  *(a9 + 58) = a11;
  *(a9 + 64) = a12;
  *(a9 + 80) = a13;
  *(a9 + 96) = a14;
  *(a9 + 112) = a15;
  *(a9 + 120) = v21;
  *(a9 + 121) = v22;
  *(a9 + 128) = a18;
  *(a9 + 144) = a19;
  result = *a20;
  v24 = *(a20 + 16);
  *(a9 + 152) = *a20;
  *(a9 + 168) = v24;
  return result;
}

unint64_t sub_26B4D4498(char a1)
{
  result = 0x49646E616D6D6F63;
  switch(a1)
  {
    case 1:
      result = 0x53646E616D6D6F63;
      break;
    case 2:
      result = 0x7463617274736261;
      break;
    case 3:
      result = 0x6973737563736964;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x61706D4972657375;
      break;
    case 6:
      result = 0x64656C62616E65;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x6574726F70707573;
      break;
    case 9:
      result = 0x4964656E6E616C70;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x6375646F72746E69;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 15:
    case 16:
      result = 0xD00000000000001FLL;
      break;
    case 17:
      result = 0xD000000000000022;
      break;
    case 18:
      result = 0xD00000000000002ALL;
      break;
    case 19:
      result = 0xD000000000000013;
      break;
    case 20:
      result = 0x6E6F69746361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B4D4780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B4DADA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B4D47B4(uint64_t a1)
{
  v2 = sub_26B4DA228();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B4D47F0(uint64_t a1)
{
  v2 = sub_26B4DA228();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VCCommand.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFE58, &qword_26B545600);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6, v7, v8);
  v10 = &v29 - v9;
  v12 = *v1;
  v11 = v1[1];
  v13 = v1[2];
  v51 = v1[3];
  v52 = v13;
  v14 = v1[4];
  v49 = v1[5];
  v50 = v14;
  v48 = v1[6];
  v58 = *(v1 + 56);
  LODWORD(v14) = *(v1 + 57);
  v46 = *(v1 + 58);
  v47 = v14;
  v15 = v1[8];
  v44 = v1[9];
  v45 = v15;
  v16 = v1[10];
  v42 = v1[11];
  v43 = v16;
  v17 = v1[12];
  v40 = v1[13];
  v41 = v17;
  v39 = v1[14];
  LODWORD(v17) = *(v1 + 120);
  v37 = *(v1 + 121);
  v38 = v17;
  v18 = v1[17];
  v30 = v1[16];
  v31 = v18;
  v19 = v1[19];
  v32 = v1[18];
  v33 = v19;
  v20 = v1[21];
  v34 = v1[20];
  v21 = v1[22];
  v35 = v20;
  v36 = v21;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B4DA228();
  sub_26B543074();
  LOBYTE(v54) = 0;
  v23 = v53;
  sub_26B542F44();
  if (v23)
  {
    return (*(v4 + 8))(v10, v3);
  }

  v26 = v50;
  v25 = v51;
  v53 = v4;
  v54 = v52;
  v59 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFE60, &qword_26B545608);
  sub_26B4DA27C();
  sub_26B542F64();
  v54 = v25;
  v59 = 2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFE80, &unk_26B545618);
  v28 = sub_26B4DA32C();
  sub_26B542F64();
  v54 = v26;
  v59 = 3;
  sub_26B542F64();
  v51 = v28;
  v52 = v27;
  LOBYTE(v54) = 4;
  sub_26B542F24();
  LOBYTE(v54) = v58;
  v59 = 5;
  sub_26B4DA3DC();
  sub_26B542F34();
  LOBYTE(v54) = 6;
  sub_26B542F54();
  LOBYTE(v54) = 7;
  sub_26B542F54();
  v54 = v45;
  v59 = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFEA0, &qword_26B545628);
  sub_26B4DA430();
  sub_26B542F64();
  v54 = v44;
  v59 = 9;
  sub_26B542F64();
  v54 = v43;
  v59 = 10;
  sub_26B542F64();
  v54 = v42;
  v59 = 11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFEB8, &qword_26B545630);
  sub_26B4DA508();
  sub_26B542F64();
  v54 = v41;
  v59 = 12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFED8, &qword_26B545640);
  sub_26B4DA5B8();
  sub_26B542F64();
  v54 = v40;
  v59 = 13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFEF0, &unk_26B545648);
  sub_26B4DA690();
  sub_26B542F64();
  v54 = v39;
  v59 = 14;
  sub_26B542F64();
  LOBYTE(v54) = v38;
  v59 = 15;
  sub_26B4DA768();
  sub_26B542F34();
  LOBYTE(v54) = v37;
  v59 = 16;
  sub_26B542F34();
  v54 = v30;
  v59 = 17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCE8, &unk_26B5454F0);
  sub_26B4DC3D8(&qword_2803FFF10);
  sub_26B542F34();
  v54 = v31;
  v59 = 18;
  sub_26B542F34();
  v54 = v32;
  v59 = 19;
  sub_26B542F34();
  v54 = v33;
  v55 = v34;
  v56 = v35;
  v57 = v36;
  v59 = 20;
  sub_26B4DA7BC();

  sub_26B542F64();

  return (*(v53 + 8))(v10, 0);
}

uint64_t VCCommand.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFF20, &qword_26B545658);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8, v9, v10);
  v12 = &v36 - v11;
  v13 = a1[3];
  v14 = a1[4];
  v103 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_26B4DA228();
  sub_26B543064();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v103);
  }

  v58 = v6;
  LOBYTE(v71[0]) = 0;
  *&v57 = sub_26B542EC4();
  *(&v57 + 1) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFE60, &qword_26B545608);
  LOBYTE(v59) = 1;
  sub_26B4DA810();
  sub_26B542EE4();
  v54 = v71[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFE80, &unk_26B545618);
  LOBYTE(v59) = 2;
  v16 = sub_26B4DA8C0();
  v53 = 0;
  sub_26B542EE4();
  v52 = v71[0];
  LOBYTE(v59) = 3;
  sub_26B542EE4();
  v56 = v16;
  v51 = v71[0];
  LOBYTE(v71[0]) = 4;
  v55 = sub_26B542EA4();
  v50 = v17;
  LOBYTE(v59) = 5;
  sub_26B4DA970();
  sub_26B542EB4();
  LODWORD(v16) = LOBYTE(v71[0]);
  LOBYTE(v71[0]) = 6;
  v41 = sub_26B542ED4();
  v42 = v16;
  LOBYTE(v71[0]) = 7;
  LODWORD(v40) = sub_26B542ED4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFEA0, &qword_26B545628);
  LOBYTE(v59) = 8;
  v47 = sub_26B4DA9C4();
  sub_26B542EE4();
  v49 = v71[0];
  LOBYTE(v59) = 9;
  sub_26B542EE4();
  v48 = v71[0];
  LOBYTE(v59) = 10;
  sub_26B542EE4();
  v47 = v71[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFEB8, &qword_26B545630);
  LOBYTE(v59) = 11;
  sub_26B4DAA9C();
  sub_26B542EE4();
  v46 = v71[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFED8, &qword_26B545640);
  LOBYTE(v59) = 12;
  sub_26B4DAB4C();
  sub_26B542EE4();
  v45 = v71[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFEF0, &unk_26B545648);
  LOBYTE(v59) = 13;
  sub_26B4DAC24();
  sub_26B542EE4();
  v44 = v71[0];
  LOBYTE(v59) = 14;
  sub_26B542EE4();
  v43 = v71[0];
  LOBYTE(v59) = 15;
  sub_26B4DACFC();
  sub_26B542EB4();
  v39 = LOBYTE(v71[0]);
  LOBYTE(v59) = 16;
  sub_26B542EB4();
  v38 = LOBYTE(v71[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCE8, &unk_26B5454F0);
  LOBYTE(v59) = 17;
  sub_26B4DC3D8(&qword_2803FFF98);
  sub_26B542EB4();
  v53 = 0;
  v37 = v71[0];
  LOBYTE(v59) = 18;
  sub_26B542EB4();
  v36 = v71[0];
  LOBYTE(v59) = 19;
  sub_26B542EB4();
  v18 = v71[0];
  v95 = 20;
  sub_26B4DAD50();
  sub_26B542EE4();
  v41 &= 1u;
  v19 = v41;
  v20 = v40 & 1;
  (*(v58 + 8))(v12, v5);
  v53 = *(&v97 + 1);
  v56 = v97;
  v21 = *(&v57 + 1);
  v58 = v96;
  v59 = v57;
  v23 = v54;
  v22 = v55;
  *&v60 = v54;
  *(&v60 + 1) = v52;
  *&v61 = v51;
  *(&v61 + 1) = v55;
  *&v62 = v50;
  BYTE8(v62) = v42;
  BYTE9(v62) = v19;
  v24 = v20;
  BYTE10(v62) = v20;
  *(&v62 + 11) = v101;
  HIBYTE(v62) = v102;
  v25 = v49;
  *&v63 = v49;
  *(&v63 + 1) = v48;
  *&v64 = v47;
  *(&v64 + 1) = v46;
  *&v65 = v45;
  *(&v65 + 1) = v44;
  *&v66 = v43;
  BYTE8(v66) = v39;
  BYTE9(v66) = v38;
  *(&v66 + 10) = v99;
  HIWORD(v66) = v100;
  *&v67 = v37;
  *(&v67 + 1) = v36;
  *&v68 = v18;
  *(&v68 + 1) = v96;
  v69 = v97;
  v70 = v98;
  v40 = v98;
  v27 = v67;
  v26 = v68;
  v28 = v97;
  *(a2 + 176) = v98;
  *(a2 + 144) = v26;
  *(a2 + 160) = v28;
  v29 = v59;
  v30 = v60;
  v31 = v62;
  *(a2 + 32) = v61;
  *(a2 + 48) = v31;
  *a2 = v29;
  *(a2 + 16) = v30;
  v32 = v63;
  v33 = v64;
  v34 = v65;
  *(a2 + 112) = v66;
  *(a2 + 128) = v27;
  *(a2 + 80) = v33;
  *(a2 + 96) = v34;
  *(a2 + 64) = v32;
  sub_26B4A5160(&v59, v71);
  __swift_destroy_boxed_opaque_existential_1(v103);
  v71[0] = v57;
  v71[1] = v21;
  v71[2] = v23;
  v71[3] = v52;
  v71[4] = v51;
  v71[5] = v22;
  v71[6] = v50;
  v72 = v42;
  v73 = v41;
  v74 = v24;
  v75 = v101;
  v76 = v102;
  v77 = v25;
  v78 = v48;
  v79 = v47;
  v80 = v46;
  v81 = v45;
  v82 = v44;
  v83 = v43;
  v84 = v39;
  v85 = v38;
  v87 = v100;
  v86 = v99;
  v88 = v37;
  v89 = v36;
  v90 = v18;
  v91 = v58;
  v92 = v56;
  v93 = v53;
  v94 = v40;
  return sub_26B4A51BC(v71);
}

uint64_t VCCommandCollection.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t VCCommandCollection.displayName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t VCCommandCollection.isCustom.getter()
{
  if (*v0 == 0x6D6F74737543 && v0[1] == 0xE600000000000000)
  {
    return 1;
  }

  else
  {
    return sub_26B542FB4();
  }
}

void __swiftcall VCCommandCollection.init(identifier:displayName:showInSettings:showCodingGuideInSettings:commands:)(SpeechRecognitionCommandServices::VCCommandCollection *__return_ptr retstr, Swift::String identifier, Swift::String displayName, Swift::Bool showInSettings, Swift::Bool showCodingGuideInSettings, Swift::OpaquePointer commands)
{
  retstr->identifier = identifier;
  retstr->displayName = displayName;
  retstr->commands = commands;
  retstr->showInSettings = showInSettings;
  retstr->showCodingGuideInSettings = showCodingGuideInSettings;
}

uint64_t sub_26B4D5FB0()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x73646E616D6D6F63;
  v4 = 0x65536E49776F6873;
  if (v1 != 3)
  {
    v4 = 0xD000000000000019;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4E79616C70736964;
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

uint64_t sub_26B4D6068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B4DBC10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B4D609C(uint64_t a1)
{
  v2 = sub_26B4DB978();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B4D60D8(uint64_t a1)
{
  v2 = sub_26B4DB978();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VCCommandCollection.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFFA8, &qword_26B545660);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6, v7, v8);
  v10 = v18 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v20 = v1[3];
  v21 = v13;
  v19 = v1[4];
  LODWORD(v13) = *(v1 + 40);
  v18[0] = *(v1 + 41);
  v18[1] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B4DB978();
  sub_26B543074();
  v28 = 0;
  v15 = v22;
  sub_26B542F44();
  if (!v15)
  {
    v17 = v19;
    v27 = 1;
    sub_26B542F44();
    v23 = v17;
    v26 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFFB0, &qword_26B545668);
    sub_26B4DB9CC();
    sub_26B542F64();
    v25 = 3;
    sub_26B542F54();
    v24 = 4;
    sub_26B542F54();
  }

  return (*(v4 + 8))(v10, v3);
}

uint64_t VCCommandCollection.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFFC8, &qword_26B545670);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8, v9, v10);
  v12 = &v25 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B4DB978();
  sub_26B543064();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v35 = 0;
  v14 = sub_26B542EC4();
  v29 = v15;
  v34 = 1;
  v16 = sub_26B542EC4();
  v28 = v17;
  v27 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFFB0, &qword_26B545668);
  v33 = 2;
  sub_26B4DBAA4();
  sub_26B542EE4();
  v26 = v30;
  v32 = 3;
  HIDWORD(v25) = sub_26B542ED4();
  v31 = 4;
  v19 = sub_26B542ED4();
  v20 = BYTE4(v25) & 1;
  (*(v6 + 8))(v12, v5);
  v21 = v19 & 1;
  v23 = v28;
  v22 = v29;
  *a2 = v14;
  *(a2 + 8) = v22;
  v24 = v26;
  *(a2 + 16) = v27;
  *(a2 + 24) = v23;
  *(a2 + 32) = v24;
  *(a2 + 40) = v20;
  *(a2 + 41) = v21;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t VCCommand.collection.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  result = _s32SpeechRecognitionCommandServices19VCCommandCollectionV03allC11CollectionsSayACGvgZ_0();
  v58 = *(result + 16);
  if (v58)
  {
    v5 = 0;
    v57 = result + 32;
    v51 = MEMORY[0x277D84F90];
    v56 = result;
    while (v5 < *(result + 16))
    {
      v6 = v57 + 48 * v5;
      v7 = *(v6 + 24);
      v54 = *(v6 + 16);
      v55 = *v6;
      v8 = *(v6 + 32);
      v52 = *(v6 + 41);
      v53 = *(v6 + 40);
      v9 = *(v8 + 16);
      v60 = *(v6 + 8);

      v59 = v7;

      result = swift_bridgeObjectRetain_n();
      if (v9)
      {
        v10 = 0;
        v11 = v8 + 32;
        v12 = MEMORY[0x277D84F90];
        do
        {
          v13 = (v11 + 184 * v10);
          v14 = v10;
          while (1)
          {
            if (v14 >= *(v8 + 16))
            {
              __break(1u);
              goto LABEL_35;
            }

            v15 = *v13;
            v16 = v13[1];
            v17 = v13[3];
            v64 = v13[2];
            v65 = v17;
            v62 = v15;
            v63 = v16;
            v18 = v13[4];
            v19 = v13[5];
            v20 = v13[7];
            v68 = v13[6];
            v69 = v20;
            v66 = v18;
            v67 = v19;
            v21 = v13[8];
            v22 = v13[9];
            v23 = v13[10];
            v73 = *(v13 + 22);
            v71 = v22;
            v72 = v23;
            v70 = v21;
            if (v62 == v2 && *(&v62 + 1) == v3)
            {
              break;
            }

            result = sub_26B542FB4();
            if (result)
            {
              break;
            }

            ++v14;
            v13 = (v13 + 184);
            if (v9 == v14)
            {
              goto LABEL_20;
            }
          }

          sub_26B4A5160(&v62, v61);
          result = swift_isUniquelyReferenced_nonNull_native();
          v74 = v12;
          if ((result & 1) == 0)
          {
            result = sub_26B4A2120(0, *(v12 + 16) + 1, 1);
            v12 = v74;
          }

          v25 = *(v12 + 16);
          v24 = *(v12 + 24);
          if (v25 >= v24 >> 1)
          {
            result = sub_26B4A2120((v24 > 1), v25 + 1, 1);
            v12 = v74;
          }

          v10 = v14 + 1;
          *(v12 + 16) = v25 + 1;
          v26 = v12 + 184 * v25;
          v27 = v62;
          v28 = v63;
          v29 = v65;
          *(v26 + 64) = v64;
          *(v26 + 80) = v29;
          *(v26 + 32) = v27;
          *(v26 + 48) = v28;
          v30 = v66;
          v31 = v67;
          v32 = v69;
          *(v26 + 128) = v68;
          *(v26 + 144) = v32;
          *(v26 + 96) = v30;
          *(v26 + 112) = v31;
          v33 = v70;
          v34 = v71;
          v35 = v72;
          *(v26 + 208) = v73;
          *(v26 + 176) = v34;
          *(v26 + 192) = v35;
          *(v26 + 160) = v33;
          v11 = v8 + 32;
        }

        while (v9 - 1 != v14);
      }

      else
      {
        v12 = MEMORY[0x277D84F90];
      }

LABEL_20:
      ++v5;

      v36 = *(v12 + 16);

      if (v36)
      {
        v37 = v51;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v75 = v51;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26B4A2100(0, *(v51 + 16) + 1, 1);
          v37 = v75;
        }

        v40 = *(v37 + 16);
        v39 = *(v37 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_26B4A2100((v39 > 1), v40 + 1, 1);
          v37 = v75;
        }

        *(v37 + 16) = v40 + 1;
        v51 = v37;
        v41 = v37 + 48 * v40;
        *(v41 + 32) = v55;
        *(v41 + 40) = v60;
        *(v41 + 48) = v54;
        *(v41 + 56) = v59;
        *(v41 + 64) = v8;
        *(v41 + 72) = v53;
        *(v41 + 73) = v52;
      }

      else
      {
      }

      result = v56;
      if (v5 == v58)
      {
        goto LABEL_30;
      }
    }

LABEL_35:
    __break(1u);
  }

  else
  {
    v51 = MEMORY[0x277D84F90];
LABEL_30:

    if (*(v51 + 16))
    {
      v43 = *(v51 + 32);
      v42 = *(v51 + 40);
      v44 = *(v51 + 48);
      v45 = *(v51 + 56);
      v46 = *(v51 + 64);
      v47 = *(v51 + 72);
      v48 = *(v51 + 73);

      v49 = a1;
      *a1 = v43;
      *(a1 + 8) = v42;
      *(a1 + 40) = v47;
      *(a1 + 41) = v48;
    }

    else
    {

      v44 = 0;
      v45 = 0;
      v46 = 0;
      v49 = a1;
      *(a1 + 40) = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    v49[2] = v44;
    v49[3] = v45;
    v49[4] = v46;
  }

  return result;
}

uint64_t static VCCommand.allCommands.getter()
{
  v2 = MEMORY[0x277D84F90];
  v0 = _s32SpeechRecognitionCommandServices19VCCommandCollectionV03allC11CollectionsSayACGvgZ_0();
  sub_26B4D6B40(v0, &v2);

  return v2;
}

uint64_t sub_26B4D6B40(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  for (i = result + 64; ; i += 48)
  {
    v5 = *i;
    v6 = *(*i + 16);
    v7 = *a2;
    v8 = *(*a2 + 16);
    v9 = v8 + v6;
    if (__OFADD__(v8, v6))
    {
      break;
    }

    v10 = *i;

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && (v11 = *(v7 + 24) >> 1, v11 >= v9))
    {
      if (*(v5 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v12 = v8 + v6;
      }

      else
      {
        v12 = v8;
      }

      result = sub_26B4D8504(result, v12, 1, v7);
      v7 = result;
      v11 = *(result + 24) >> 1;
      if (*(v5 + 16))
      {
LABEL_14:
        if (v11 - *(v7 + 16) < v6)
        {
          goto LABEL_21;
        }

        swift_arrayInitWithCopy();

        if (v6)
        {
          v13 = *(v7 + 16);
          v14 = __OFADD__(v13, v6);
          v15 = v13 + v6;
          if (v14)
          {
            goto LABEL_22;
          }

          *(v7 + 16) = v15;
        }

        goto LABEL_4;
      }
    }

    if (v6)
    {
      goto LABEL_20;
    }

LABEL_4:
    *a2 = v7;
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t static VCCommand.allCommands(idiom:)(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = MEMORY[0x277D84F90];
  *&v33 = MEMORY[0x277D84F90];
  v3 = _s32SpeechRecognitionCommandServices19VCCommandCollectionV03allC11CollectionsSayACGvgZ_0();
  sub_26B4D6B40(v3, &v33);

  v5 = v33;
  v6 = *(v33 + 16);
  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = v5 + 32 + 184 * v7;
      v9 = v7;
      while (1)
      {
        if (v9 >= *(v5 + 16))
        {
          __break(1u);
          return result;
        }

        v10 = *v8;
        v11 = *(v8 + 16);
        v12 = *(v8 + 48);
        v35 = *(v8 + 32);
        v36 = v12;
        v33 = v10;
        v34 = v11;
        v13 = *(v8 + 64);
        v14 = *(v8 + 80);
        v15 = *(v8 + 112);
        v39 = *(v8 + 96);
        v40 = v15;
        v37 = v13;
        v38 = v14;
        v16 = *(v8 + 128);
        v17 = *(v8 + 144);
        v18 = *(v8 + 160);
        v44 = *(v8 + 176);
        v42 = v17;
        v43 = v18;
        v41 = v16;
        v7 = v9 + 1;
        v19 = v37;
        sub_26B4A5160(&v33, v32);
        if (sub_26B4BE6E0(v1, v19))
        {
          break;
        }

        result = sub_26B4A51BC(&v33);
        v8 += 184;
        ++v9;
        if (v6 == v7)
        {
          goto LABEL_13;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v45 = v2;
      if ((result & 1) == 0)
      {
        result = sub_26B4A2120(0, *(v2 + 16) + 1, 1);
        v2 = v45;
      }

      v21 = *(v2 + 16);
      v20 = *(v2 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_26B4A2120((v20 > 1), v21 + 1, 1);
        v2 = v45;
      }

      *(v2 + 16) = v21 + 1;
      v22 = v2 + 184 * v21;
      v23 = v33;
      v24 = v34;
      v25 = v36;
      *(v22 + 64) = v35;
      *(v22 + 80) = v25;
      *(v22 + 32) = v23;
      *(v22 + 48) = v24;
      v26 = v37;
      v27 = v38;
      v28 = v40;
      *(v22 + 128) = v39;
      *(v22 + 144) = v28;
      *(v22 + 96) = v26;
      *(v22 + 112) = v27;
      v29 = v41;
      v30 = v42;
      v31 = v43;
      *(v22 + 208) = v44;
      *(v22 + 176) = v30;
      *(v22 + 192) = v31;
      *(v22 + 160) = v29;
    }

    while (v6 - 1 != v9);
  }

LABEL_13:

  return v2;
}

id sub_26B4D701C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  result = sub_26B4D7AA8(0x2A5D7D5E5B7B5C28, 0xEB00000000297D5CLL, 1);
  if (result)
  {
    qword_2804005F8 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t String.voiceControlCommandParameters.getter(uint64_t a1, uint64_t a2)
{
  v14 = MEMORY[0x277D84F90];
  if (qword_2804005F0 != -1)
  {
    swift_once();
  }

  v4 = qword_2804005F8;
  v5 = sub_26B542A74();
  v6 = sub_26B542AF4();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = &v14;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_26B4DBBB4;
  *(v8 + 24) = v7;
  aBlock[4] = sub_26B4DBBD0;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26B4D73C4;
  aBlock[3] = &block_descriptor;
  v9 = _Block_copy(aBlock);

  [v4 enumerateMatchesInString:v5 options:0 range:0 usingBlock:{v6, v9}];

  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v12 = v14;

    return v12;
  }

  return result;
}

void sub_26B4D7288(void *a1, uint64_t a2, uint64_t a3, char **a4)
{
  if (a1)
  {
    v17 = a1;
    [v17 range];
    sub_26B542C94();
    if (v5)
    {
    }

    else
    {
      v6 = sub_26B542BA4();
      v7 = MEMORY[0x26D677B80](v6);
      v9 = v8;

      v10 = *a4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_26B4A2660(0, *(v10 + 2) + 1, 1, v10);
        *a4 = v10;
      }

      v13 = *(v10 + 2);
      v12 = *(v10 + 3);
      v14 = v17;
      if (v13 >= v12 >> 1)
      {
        *a4 = sub_26B4A2660((v12 > 1), v13 + 1, 1, v10);
        v14 = v17;
      }

      v15 = *a4;
      *(v15 + 2) = v13 + 1;
      v16 = &v15[16 * v13];
      *(v16 + 4) = v7;
      *(v16 + 5) = v9;
    }
  }
}

void sub_26B4D73C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = a2;
  v8(a2, a3, a4);
}

uint64_t VCCommand.parametersType.getter@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_26B4DBE4C(&unk_287C04C90);
  swift_arrayDestroy();
  v5 = MEMORY[0x277D84FA0];
  v29 = MEMORY[0x277D84FA0];
  v24 = *(v3 + 16);
  if (v24)
  {
    v22 = a1;
    v6 = 0;
    v23 = v3 + 32;
    while (1)
    {
      v7 = *(*(v23 + 16 * v6) + 16);
      v25 = v6;
      v26 = *(v23 + 16 * v6);
      swift_bridgeObjectRetain_n();
      if (v7)
      {
        break;
      }

LABEL_3:
      v6 = v25 + 1;
      swift_bridgeObjectRelease_n();
      if (v25 + 1 == v24)
      {
        v5 = v29;
        a1 = v22;
        goto LABEL_12;
      }
    }

    v8 = (v26 + 40);
    while (1)
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v28 = MEMORY[0x277D84F90];
      v11 = qword_2804005F0;

      if (v11 != -1)
      {
        swift_once();
      }

      v12 = qword_2804005F8;
      v13 = sub_26B542A74();
      v14 = sub_26B542AF4();
      v15 = swift_allocObject();
      v15[2] = v9;
      v15[3] = v10;
      v15[4] = &v28;
      v16 = swift_allocObject();
      *(v16 + 16) = sub_26B4DE7F8;
      *(v16 + 24) = v15;
      aBlock[4] = sub_26B4DE84C;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_26B4D73C4;
      aBlock[3] = &block_descriptor_36;
      v17 = _Block_copy(aBlock);

      [v12 enumerateMatchesInString:v13 options:0 range:0 usingBlock:{v14, v17}];

      _Block_release(v17);
      LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

      if (v14)
      {
        break;
      }

      v19 = v28;

      sub_26B4DBDDC(v19);

      v8 += 2;
      if (!--v7)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    if (*(v5 + 16))
    {
      v20 = sub_26B4D98AC(v4, v5);

      if (v20)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }
    }

    else
    {

      v21 = 0;
    }

    *a1 = v21;
  }

  return result;
}

uint64_t VCCommand.corpusTier.getter()
{
  v1 = *(v0 + 56);
  if (v1 == 3)
  {
    goto LABEL_14;
  }

  v2 = v1 != 0;
  if (!*(v0 + 56))
  {
    return v2 & 1;
  }

  if (v1 != 1)
  {
LABEL_14:
    v2 = 1;
    return v2 & 1;
  }

  v3 = *(v0 + 16);
  v4 = sub_26B4DBE4C(&unk_287C04C90);
  swift_arrayDestroy();
  v5 = MEMORY[0x277D84FA0];
  v27 = MEMORY[0x277D84FA0];
  v22 = *(v3 + 16);
  if (!v22)
  {
LABEL_17:
    if (*(v5 + 16))
    {
      v20 = sub_26B4D98AC(v4, v5);

      v2 = v20 ^ 1;
    }

    else
    {

      v2 = 0;
    }

    return v2 & 1;
  }

  v6 = 0;
  v21 = v3 + 32;
  while (1)
  {
    v7 = *(*(v21 + 16 * v6) + 16);
    v23 = v6;
    v24 = *(v21 + 16 * v6);
    swift_bridgeObjectRetain_n();
    if (v7)
    {
      break;
    }

LABEL_6:
    v6 = v23 + 1;
    swift_bridgeObjectRelease_n();
    if (v23 + 1 == v22)
    {
      v5 = v27;
      goto LABEL_17;
    }
  }

  v8 = (v24 + 40);
  while (1)
  {
    v9 = *(v8 - 1);
    v10 = *v8;
    v26 = MEMORY[0x277D84F90];
    v11 = qword_2804005F0;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = qword_2804005F8;
    v13 = sub_26B542A74();
    v14 = sub_26B542AF4();
    v15 = swift_allocObject();
    v15[2] = v9;
    v15[3] = v10;
    v15[4] = &v26;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_26B4DE7F8;
    *(v16 + 24) = v15;
    aBlock[4] = sub_26B4DE84C;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26B4D73C4;
    aBlock[3] = &block_descriptor_47;
    v17 = _Block_copy(aBlock);

    [v12 enumerateMatchesInString:v13 options:0 range:0 usingBlock:{v14, v17}];

    _Block_release(v17);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if (v14)
    {
      break;
    }

    v19 = v26;

    sub_26B4DBDDC(v19);

    v8 += 2;
    if (!--v7)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

id sub_26B4D7AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_26B542A74();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_26B542844();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_26B4D7B84(char **a1)
{
  v1 = a1;
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26B4D9B80(v2);
  }

  v3 = *(v2 + 2);
  v19[0] = (v2 + 32);
  v19[1] = v3;
  result = sub_26B542F84();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v17 = v1;
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 - 8;
          result = sub_26B4CB7AC(*(v12 - 1), *v12, *(v12 - 3), *(v12 - 16));
          if ((result & 1) == 0)
          {
            break;
          }

          v14 = *(v12 - 24);
          *(v12 - 16) = *v12;
          v12 -= 16;
          v15 = *(v12 + 1);
          *v13 = v14;
          *(v12 - 1) = v15;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 16;
        --v9;
      }

      v1 = v17;
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFED0, &qword_26B545638);
      v7 = sub_26B542C34();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_26B4D7D08(v18, v20, v19, v5);
    *(v7 + 16) = 0;
  }

  *v1 = v2;
  return result;
}

uint64_t sub_26B4D7D08(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3;
  v7 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_94:
    v5 = *v7;
    if (!*v7)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_26B4A3E78(v10);
      v10 = result;
    }

    v86 = *(v10 + 2);
    if (v86 >= 2)
    {
      while (*v6)
      {
        v87 = *&v10[16 * v86];
        v88 = *&v10[16 * v86 + 24];
        sub_26B4D82F0((*v6 + 16 * v87), (*v6 + 16 * *&v10[16 * v86 + 16]), (*v6 + 16 * v88), v5);
        if (v4)
        {
        }

        if (v88 < v87)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_26B4A3E78(v10);
        }

        if (v86 - 2 >= *(v10 + 2))
        {
          goto LABEL_120;
        }

        v89 = &v10[16 * v86];
        *v89 = v87;
        *(v89 + 1) = v88;
        result = sub_26B4A3DEC(v86 - 1);
        v86 = *(v10 + 2);
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v12 >= v8)
    {
      v8 = v12;
    }

    else
    {
      v13 = v7;
      v14 = *v6 + 16 * v12;
      v15 = 16 * v11;
      v16 = *v6 + 16 * v11;
      result = sub_26B4CB7AC(*v14, *(v14 + 8), *v16, *(v16 + 8));
      v17 = result;
      v5 = v11 + 2;
      v18 = v16 + 24;
      while (v8 != v5)
      {
        v19 = *(v18 + 8);
        v20 = *(v18 - 8);
        v21 = *v18;
        v22 = *(v18 + 16);
        v18 += 16;
        result = sub_26B4CB7AC(v19, v22, v20, v21);
        ++v5;
        if ((v17 & 1) != (result & 1))
        {
          v8 = v5 - 1;
          break;
        }
      }

      v6 = a3;
      if (v17)
      {
        if (v8 < v11)
        {
          goto LABEL_123;
        }

        if (v11 < v8)
        {
          v23 = 16 * v8 - 16;
          v24 = v8;
          v25 = v11;
          do
          {
            if (v25 != --v24)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v28 = (v27 + v15);
              v29 = (v27 + v23);
              v30 = *(v27 + v15);
              v31 = *(v27 + v15 + 8);
              if (v15 != v23 || v28 >= v29 + 1)
              {
                *v28 = *v29;
              }

              v26 = v27 + v23;
              *v26 = v30;
              *(v26 + 8) = v31;
            }

            ++v25;
            v23 -= 16;
            v15 += 16;
          }

          while (v25 < v24);
        }
      }

      v7 = v13;
    }

    v32 = v6[1];
    if (v8 < v32)
    {
      if (__OFSUB__(v8, v11))
      {
        goto LABEL_122;
      }

      if (v8 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_124;
        }

        if (v11 + a4 < v32)
        {
          v32 = v11 + a4;
        }

        if (v32 < v11)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v8 != v32)
        {
          break;
        }
      }
    }

    v5 = v8;
    if (v8 < v11)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26B4A276C(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v34 = *(v10 + 2);
    v33 = *(v10 + 3);
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      result = sub_26B4A276C((v33 > 1), v34 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v35;
    v36 = &v10[16 * v34];
    *(v36 + 4) = v11;
    *(v36 + 5) = v5;
    v37 = *v7;
    if (!*v7)
    {
      goto LABEL_131;
    }

    v94 = v5;
    if (v34)
    {
      v6 = a3;
      while (1)
      {
        v38 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v39 = *(v10 + 4);
          v40 = *(v10 + 5);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_53:
          if (v42)
          {
            goto LABEL_110;
          }

          v55 = &v10[16 * v35];
          v57 = *v55;
          v56 = *(v55 + 1);
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_113;
          }

          v61 = &v10[16 * v38 + 32];
          v63 = *v61;
          v62 = *(v61 + 1);
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_117;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v38 = v35 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v65 = &v10[16 * v35];
        v67 = *v65;
        v66 = *(v65 + 1);
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_67:
        if (v60)
        {
          goto LABEL_112;
        }

        v68 = &v10[16 * v38];
        v70 = *(v68 + 4);
        v69 = *(v68 + 5);
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_115;
        }

        if (v71 < v59)
        {
          goto LABEL_4;
        }

LABEL_74:
        v5 = v38 - 1;
        if (v38 - 1 >= v35)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v76 = *&v10[16 * v5 + 32];
        v77 = *&v10[16 * v38 + 40];
        sub_26B4D82F0((*a3 + 16 * v76), (*a3 + 16 * *&v10[16 * v38 + 32]), (*a3 + 16 * v77), v37);
        if (v4)
        {
        }

        if (v77 < v76)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_26B4A3E78(v10);
        }

        if (v5 >= *(v10 + 2))
        {
          goto LABEL_107;
        }

        v78 = &v10[16 * v5];
        *(v78 + 4) = v76;
        *(v78 + 5) = v77;
        result = sub_26B4A3DEC(v38);
        v35 = *(v10 + 2);
        if (v35 <= 1)
        {
          goto LABEL_4;
        }
      }

      v43 = &v10[16 * v35 + 32];
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_108;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_109;
      }

      v50 = &v10[16 * v35];
      v52 = *v50;
      v51 = *(v50 + 1);
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_111;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_114;
      }

      if (v54 >= v46)
      {
        v72 = &v10[16 * v38 + 32];
        v74 = *v72;
        v73 = *(v72 + 1);
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_118;
        }

        if (v41 < v75)
        {
          v38 = v35 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

    v6 = a3;
LABEL_4:
    v8 = v6[1];
    v9 = v94;
    if (v94 >= v8)
    {
      goto LABEL_94;
    }
  }

  v95 = v32;
  v90 = v11;
  v91 = v7;
  v79 = *v6;
  v80 = *v6 + 16 * v8;
  v81 = v11 - v8;
LABEL_85:
  v82 = v81;
  v6 = v80;
  while (1)
  {
    result = sub_26B4CB7AC(*v6, *(v6 + 8), *(v6 - 2), *(v6 - 8));
    if ((result & 1) == 0)
    {
LABEL_84:
      ++v8;
      v80 += 16;
      --v81;
      if (v8 != v95)
      {
        goto LABEL_85;
      }

      v11 = v90;
      v7 = v91;
      v5 = v95;
      if (v95 < v90)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v79)
    {
      break;
    }

    v83 = *v6;
    v84 = *(v6 + 8);
    *v6 = *(v6 - 1);
    *(v6 - 8) = v84;
    *(v6 - 2) = v83;
    v6 -= 2;
    if (__CFADD__(v82++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_26B4D82F0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v13)
  {
    v14 = 16 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14);
    }

    v15 = &v4[v14];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (sub_26B4CB7AC(*v6, v6[8], *v4, v4[8]))
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 16;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 16;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  v18 = 16 * v13;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v15 = &v4[v18];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v19 = v6 - 16;
    v5 -= 16;
    v20 = v15;
    do
    {
      v21 = v5 + 16;
      v22 = *(v20 - 16);
      v20 -= 16;
      if (sub_26B4CB7AC(v22, *(v20 + 8), *(v6 - 2), *(v6 - 8)))
      {
        if (v21 != v6)
        {
          *v5 = *v19;
        }

        if (v15 <= v4 || (v6 -= 16, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v21 != v15)
      {
        *v5 = *v20;
      }

      v5 -= 16;
      v15 = v20;
    }

    while (v20 > v4);
    v15 = v20;
  }

LABEL_35:
  v23 = (v15 - v4 + (v15 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v6 != v4 || v6 >= &v4[v23])
  {
    memmove(v6, v4, v23);
  }

  return 1;
}

char *sub_26B4D8504(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC40, &unk_26B5453C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 184);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[184 * v8])
    {
      memmove(v12, v13, 184 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26B4D8630(char *a1, int64_t a2, char a3)
{
  result = sub_26B4D8650(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26B4D8650(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC48, &unk_26B5482F0);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

uint64_t sub_26B4D8750(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_26B543034();
  sub_26B542AE4();
  v9 = sub_26B543054();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_26B542FB4() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_26B4D8FF4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_26B4D88A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC50, &unk_26B545500);
  result = sub_26B542D34();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_26B543034();
      sub_26B542AE4();

      result = sub_26B543054();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_26B4D8B34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804000A8, &qword_26B5482E8);
  result = sub_26B542D34();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_26B543034();
      sub_26B542AE4();
      result = sub_26B543054();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_26B4D8D94(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v23 = result;
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_26B4D88A0(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_26B4D9174();
        goto LABEL_28;
      }

      sub_26B4D9410(v6 + 1);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    v10 = *v5;
    sub_26B543034();
    sub_26B542AE4();

    result = sub_26B543054();
    v11 = -1 << *(v8 + 32);
    a2 = result & ~v11;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      do
      {
        if (*(*(v8 + 48) + a2))
        {
          if (*(*(v8 + 48) + a2) == 1)
          {
            v13 = 0xE600000000000000;
            v14 = 0x726173617571;
            if (!v10)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v13 = 0xE500000000000000;
            v14 = 0x727361676ELL;
            if (!v10)
            {
LABEL_24:
              v16 = 0xE200000000000000;
              if (v14 == 12915)
              {
                goto LABEL_25;
              }

              goto LABEL_26;
            }
          }
        }

        else
        {
          v13 = 0xE200000000000000;
          v14 = 12915;
          if (!v10)
          {
            goto LABEL_24;
          }
        }

        if (v10 == 1)
        {
          v15 = 0x726173617571;
        }

        else
        {
          v15 = 0x727361676ELL;
        }

        if (v10 == 1)
        {
          v16 = 0xE600000000000000;
        }

        else
        {
          v16 = 0xE500000000000000;
        }

        if (v14 == v15)
        {
LABEL_25:
          if (v13 == v16)
          {
            goto LABEL_31;
          }
        }

LABEL_26:
        v17 = sub_26B542FB4();

        if (v17)
        {
          goto LABEL_32;
        }

        a2 = (a2 + 1) & v12;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_28:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = *v23;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_31:

LABEL_32:
    result = sub_26B542FD4();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v21;
  }

  return result;
}

uint64_t sub_26B4D8FF4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_26B4D8B34(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_26B4D92B4();
      goto LABEL_16;
    }

    sub_26B4D9674(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_26B543034();
  sub_26B542AE4();
  result = sub_26B543054();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_26B542FB4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_26B542FD4();
  __break(1u);
  return result;
}

void *sub_26B4D9174()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC50, &unk_26B545500);
  v2 = *v0;
  v3 = sub_26B542D24();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_26B4D92B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804000A8, &qword_26B5482E8);
  v2 = *v0;
  v3 = sub_26B542D24();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_26B4D9410(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC50, &unk_26B545500);
  result = sub_26B542D34();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_26B543034();
      sub_26B542AE4();

      result = sub_26B543054();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_26B4D9674(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804000A8, &qword_26B5482E8);
  result = sub_26B542D34();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_26B543034();

      sub_26B542AE4();
      result = sub_26B543054();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_26B4D98AC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v11 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v22 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            return result;
          }

          if (v22 >= v8)
          {

            return 1;
          }

          v7 = *(v4 + 8 * v22);
          ++v11;
        }

        while (!v7);
        v11 = v22;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return 0;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v12 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a1 + 40);
      sub_26B543034();

      sub_26B542AE4();
      v16 = sub_26B543054();
      v17 = -1 << *(a1 + 32);
      v18 = v16 & ~v17;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v19 = ~v17;
      while (1)
      {
        v20 = (*(a1 + 48) + 16 * v18);
        v21 = *v20 == v14 && v20[1] == v13;
        if (v21 || (sub_26B542FB4() & 1) != 0)
        {
          break;
        }

        v18 = (v18 + 1) & v19;
        if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }

  return 0;
}

BOOL sub_26B4D9A88(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_26B542D54();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_26B4D9B94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616D726F4ELL && a2 == 0xE600000000000000;
  if (v4 || (sub_26B542FB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000026B56B8E0 == a2 || (sub_26B542FB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7065656C53 && a2 == 0xE500000000000000 || (sub_26B542FB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F68706F7263694DLL && a2 == 0xED000066664F656ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_26B542FB4();

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

uint64_t _sSa32SpeechRecognitionCommandServicesSSRszlE1loiySbSaySSG_ACtFZ_0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = v2 - 1;
  if (v2 != 1)
  {
    v4 = (result + 56);
    v5 = (a2 + 56);
    do
    {
      result = *(v4 - 1);
      if (result != *(v5 - 1) || *v4 != *v5)
      {
        result = sub_26B542FB4();
        if ((result & 1) == 0)
        {
          return 0;
        }
      }

      v4 += 2;
      v5 += 2;
    }

    while (--v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B4D9D8C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5((&v8 + 1), AssociatedTypeWitness, v3);
  if (BYTE1(v8) == 5)
  {
    return 1;
  }

  if ((sub_26B4C6E60(BYTE1(v8), byte_26B548312[v4]) & 1) == 0)
  {
    return 0;
  }

  (*(v3 + 24))(&v8, AssociatedTypeWitness, v3);
  if (v8 == 10)
  {
    return 1;
  }

  return sub_26B4C6B80(v8, v4) & 1;
}

unint64_t sub_26B4D9E7C()
{
  result = qword_280400658;
  if (!qword_280400658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280400658);
  }

  return result;
}

uint64_t sub_26B4D9ED0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736270 && a2 == 0xE400000000000000;
  if (v3 || (sub_26B542FB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465646E756F42 && a2 == 0xE700000000000000 || (sub_26B542FB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65646E756F626E55 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v6 = sub_26B542FB4();

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

uint64_t sub_26B4D9FF0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_26B471200();
  v4 = MEMORY[0x26D677D20](v2, &type metadata for VCCommand.Engine, v3);
  v5 = v4;
  v21 = v2;
  if (!v2)
  {
    return v5;
  }

  v6 = 0;
  v20 = a1 + 32;
  v7 = v4 + 56;
LABEL_5:
  while (2)
  {
    v8 = *(v20 + v6);
    v9 = *(v5 + 40);
    sub_26B543034();
    ++v6;
    sub_26B542AE4();

    v10 = sub_26B543054();
    v11 = ~(-1 << *(v5 + 32));
    for (i = v10 & v11; ((*(v7 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) != 0; i = (i + 1) & v11)
    {
      if (*(*(v5 + 48) + i))
      {
        if (*(*(v5 + 48) + i) == 1)
        {
          v13 = 0xE600000000000000;
          v14 = 0x726173617571;
          if (v8)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v13 = 0xE500000000000000;
          v14 = 0x727361676ELL;
          if (v8)
          {
LABEL_12:
            if (v8 == 1)
            {
              v15 = 0x726173617571;
            }

            else
            {
              v15 = 0x727361676ELL;
            }

            if (v8 == 1)
            {
              v16 = 0xE600000000000000;
            }

            else
            {
              v16 = 0xE500000000000000;
            }

            if (v14 != v15)
            {
              goto LABEL_23;
            }

            goto LABEL_22;
          }
        }
      }

      else
      {
        v13 = 0xE200000000000000;
        v14 = 12915;
        if (v8)
        {
          goto LABEL_12;
        }
      }

      v16 = 0xE200000000000000;
      if (v14 != 12915)
      {
        goto LABEL_23;
      }

LABEL_22:
      if (v13 == v16)
      {

LABEL_4:
        if (v6 == v21)
        {
          return v5;
        }

        goto LABEL_5;
      }

LABEL_23:
      v17 = sub_26B542FB4();

      if (v17)
      {
        goto LABEL_4;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v8;
    v23 = v5;
    sub_26B4D8D94(&v22, i, isUniquelyReferenced_nonNull_native);
    v5 = v23;
    if (v6 != v21)
    {
      v7 = v23 + 56;
      continue;
    }

    return v5;
  }
}

unint64_t sub_26B4DA228()
{
  result = qword_280400660;
  if (!qword_280400660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280400660);
  }

  return result;
}

unint64_t sub_26B4DA27C()
{
  result = qword_2803FFE68;
  if (!qword_2803FFE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803FFE60, &qword_26B545608);
    sub_26B4DC2FC(&qword_2803FFE70, &qword_2803FFE78, &qword_26B545610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFE68);
  }

  return result;
}

unint64_t sub_26B4DA32C()
{
  result = qword_2803FFE88;
  if (!qword_2803FFE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803FFE80, &unk_26B545618);
    sub_26B4DC2FC(&qword_2803FFE90, &qword_2803FFD90, &unk_26B5454D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFE88);
  }

  return result;
}

unint64_t sub_26B4DA3DC()
{
  result = qword_2803FFE98;
  if (!qword_2803FFE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFE98);
  }

  return result;
}

unint64_t sub_26B4DA430()
{
  result = qword_2803FFEA8;
  if (!qword_2803FFEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803FFEA0, &qword_26B545628);
    sub_26B4DA4B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFEA8);
  }

  return result;
}

unint64_t sub_26B4DA4B4()
{
  result = qword_2803FFEB0;
  if (!qword_2803FFEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFEB0);
  }

  return result;
}

unint64_t sub_26B4DA508()
{
  result = qword_2803FFEC0;
  if (!qword_2803FFEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803FFEB8, &qword_26B545630);
    sub_26B4DC2FC(&qword_2803FFEC8, &qword_2803FFED0, &qword_26B545638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFEC0);
  }

  return result;
}

unint64_t sub_26B4DA5B8()
{
  result = qword_2803FFEE0;
  if (!qword_2803FFEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803FFED8, &qword_26B545640);
    sub_26B4DA63C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFEE0);
  }

  return result;
}

unint64_t sub_26B4DA63C()
{
  result = qword_2803FFEE8;
  if (!qword_2803FFEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFEE8);
  }

  return result;
}

unint64_t sub_26B4DA690()
{
  result = qword_2803FFEF8;
  if (!qword_2803FFEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803FFEF0, &unk_26B545648);
    sub_26B4DA714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFEF8);
  }

  return result;
}

unint64_t sub_26B4DA714()
{
  result = qword_2803FFF00;
  if (!qword_2803FFF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFF00);
  }

  return result;
}

unint64_t sub_26B4DA768()
{
  result = qword_2803FFF08;
  if (!qword_2803FFF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFF08);
  }

  return result;
}

unint64_t sub_26B4DA7BC()
{
  result = qword_2803FFF18;
  if (!qword_2803FFF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFF18);
  }

  return result;
}

unint64_t sub_26B4DA810()
{
  result = qword_2803FFF28;
  if (!qword_2803FFF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803FFE60, &qword_26B545608);
    sub_26B4DC2FC(&qword_2803FFF30, &qword_2803FFE78, &qword_26B545610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFF28);
  }

  return result;
}

unint64_t sub_26B4DA8C0()
{
  result = qword_2803FFF38;
  if (!qword_2803FFF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803FFE80, &unk_26B545618);
    sub_26B4DC2FC(&qword_2803FFF40, &qword_2803FFD90, &unk_26B5454D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFF38);
  }

  return result;
}

unint64_t sub_26B4DA970()
{
  result = qword_2803FFF48;
  if (!qword_2803FFF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFF48);
  }

  return result;
}

unint64_t sub_26B4DA9C4()
{
  result = qword_2803FFF50;
  if (!qword_2803FFF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803FFEA0, &qword_26B545628);
    sub_26B4DAA48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFF50);
  }

  return result;
}

unint64_t sub_26B4DAA48()
{
  result = qword_2803FFF58;
  if (!qword_2803FFF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFF58);
  }

  return result;
}

unint64_t sub_26B4DAA9C()
{
  result = qword_2803FFF60;
  if (!qword_2803FFF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803FFEB8, &qword_26B545630);
    sub_26B4DC2FC(&qword_2803FFF68, &qword_2803FFED0, &qword_26B545638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFF60);
  }

  return result;
}

unint64_t sub_26B4DAB4C()
{
  result = qword_2803FFF70;
  if (!qword_2803FFF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803FFED8, &qword_26B545640);
    sub_26B4DABD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFF70);
  }

  return result;
}

unint64_t sub_26B4DABD0()
{
  result = qword_2803FFF78;
  if (!qword_2803FFF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFF78);
  }

  return result;
}

unint64_t sub_26B4DAC24()
{
  result = qword_2803FFF80;
  if (!qword_2803FFF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803FFEF0, &unk_26B545648);
    sub_26B4DACA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFF80);
  }

  return result;
}

unint64_t sub_26B4DACA8()
{
  result = qword_2803FFF88;
  if (!qword_2803FFF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFF88);
  }

  return result;
}

unint64_t sub_26B4DACFC()
{
  result = qword_2803FFF90;
  if (!qword_2803FFF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFF90);
  }

  return result;
}

unint64_t sub_26B4DAD50()
{
  result = qword_2803FFFA0;
  if (!qword_2803FFFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFFA0);
  }

  return result;
}

uint64_t sub_26B4DADA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49646E616D6D6F63 && a2 == 0xE900000000000044;
  if (v4 || (sub_26B542FB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x53646E616D6D6F63 && a2 == 0xEE0073676E697274 || (sub_26B542FB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7463617274736261 && a2 == 0xE800000000000000 || (sub_26B542FB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6973737563736964 && a2 == 0xEA00000000006E6FLL || (sub_26B542FB4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x800000026B56B900 == a2 || (sub_26B542FB4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61706D4972657375 && a2 == 0xEA00000000007463 || (sub_26B542FB4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000 || (sub_26B542FB4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x800000026B56B920 == a2 || (sub_26B542FB4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6574726F70707573 && a2 == 0xEF736D6F69644964 || (sub_26B542FB4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4964656E6E616C70 && a2 == 0xED0000736D6F6964 || (sub_26B542FB4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026B56B940 == a2 || (sub_26B542FB4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6375646F72746E69 && a2 == 0xEA00000000006465 || (sub_26B542FB4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026B56B960 == a2 || (sub_26B542FB4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x800000026B56B980 == a2 || (sub_26B542FB4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000012 && 0x800000026B56B9A0 == a2 || (sub_26B542FB4() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000026B56B9C0 == a2 || (sub_26B542FB4() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000026B56B9E0 == a2 || (sub_26B542FB4() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000022 && 0x800000026B56BA00 == a2 || (sub_26B542FB4() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD00000000000002ALL && 0x800000026B56BA30 == a2 || (sub_26B542FB4() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000013 && 0x800000026B56BA60 == a2 || (sub_26B542FB4() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    return 20;
  }

  else
  {
    v6 = sub_26B542FB4();

    if (v6)
    {
      return 20;
    }

    else
    {
      return 21;
    }
  }
}

uint64_t _s32SpeechRecognitionCommandServices19VCCommandCollectionV03allC11CollectionsSayACGvgZ_0()
{
  v0 = sub_26B542934();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2, v3, v4);
  v5 = sub_26B542A64();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7, v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD18, &unk_26B548300);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26B545520;
  sub_26B542A54();
  sub_26B5428F4();
  v11 = sub_26B542AB4();
  *(v10 + 32) = 0x6D6F74737543;
  *(v10 + 40) = 0xE600000000000000;
  *(v10 + 48) = v11;
  *(v10 + 56) = v12;
  *(v10 + 64) = MEMORY[0x277D84F90];
  *(v10 + 72) = 1;
  v13 = sub_26B4866E0();
  v14 = v13[1];
  v15 = v13[2];
  v16 = v13[3];
  v17 = v13[4];
  v18 = *(v13 + 40);
  v19 = *(v13 + 41);
  *(v10 + 80) = *v13;
  *(v10 + 88) = v14;
  *(v10 + 96) = v15;
  *(v10 + 104) = v16;
  *(v10 + 112) = v17;
  *(v10 + 120) = v18;
  *(v10 + 121) = v19;

  v20 = sub_26B4A886C();
  object = v20->identifier._object;
  countAndFlagsBits = v20->displayName._countAndFlagsBits;
  v23 = v20->displayName._object;
  rawValue = v20->commands._rawValue;
  showInSettings = v20->showInSettings;
  showCodingGuideInSettings = v20->showCodingGuideInSettings;
  *(v10 + 128) = v20->identifier._countAndFlagsBits;
  *(v10 + 136) = object;
  *(v10 + 144) = countAndFlagsBits;
  *(v10 + 152) = v23;
  *(v10 + 160) = rawValue;
  *(v10 + 168) = showInSettings;
  *(v10 + 169) = showCodingGuideInSettings;

  v27 = sub_26B4BA66C();
  v28 = v27[1];
  v29 = v27[2];
  v30 = v27[3];
  v31 = v27[4];
  v32 = *(v27 + 40);
  v33 = *(v27 + 41);
  *(v10 + 176) = *v27;
  *(v10 + 184) = v28;
  *(v10 + 192) = v29;
  *(v10 + 200) = v30;
  *(v10 + 208) = v31;
  *(v10 + 216) = v32;
  *(v10 + 217) = v33;

  v34 = sub_26B488994();
  v35 = v34->identifier._object;
  v36 = v34->displayName._countAndFlagsBits;
  v37 = v34->displayName._object;
  v38 = v34->commands._rawValue;
  v39 = v34->showInSettings;
  v40 = v34->showCodingGuideInSettings;
  *(v10 + 224) = v34->identifier._countAndFlagsBits;
  *(v10 + 232) = v35;
  *(v10 + 240) = v36;
  *(v10 + 248) = v37;
  *(v10 + 256) = v38;
  *(v10 + 264) = v39;
  *(v10 + 265) = v40;

  v41 = sub_26B487B84();
  v42 = v41->identifier._object;
  v43 = v41->displayName._countAndFlagsBits;
  v44 = v41->displayName._object;
  v45 = v41->commands._rawValue;
  v46 = v41->showInSettings;
  v47 = v41->showCodingGuideInSettings;
  *(v10 + 272) = v41->identifier._countAndFlagsBits;
  *(v10 + 280) = v42;
  *(v10 + 288) = v43;
  *(v10 + 296) = v44;
  *(v10 + 304) = v45;
  *(v10 + 312) = v46;
  *(v10 + 313) = v47;

  v48 = sub_26B475644();
  v49 = v48->identifier._object;
  v50 = v48->displayName._countAndFlagsBits;
  v51 = v48->displayName._object;
  v52 = v48->commands._rawValue;
  v53 = v48->showInSettings;
  v54 = v48->showCodingGuideInSettings;
  *(v10 + 320) = v48->identifier._countAndFlagsBits;
  *(v10 + 328) = v49;
  *(v10 + 336) = v50;
  *(v10 + 344) = v51;
  *(v10 + 352) = v52;
  *(v10 + 360) = v53;
  *(v10 + 361) = v54;

  v55 = sub_26B48E25C();
  v56 = v55->identifier._object;
  v57 = v55->displayName._countAndFlagsBits;
  v58 = v55->displayName._object;
  v59 = v55->commands._rawValue;
  v60 = v55->showInSettings;
  v61 = v55->showCodingGuideInSettings;
  *(v10 + 368) = v55->identifier._countAndFlagsBits;
  *(v10 + 376) = v56;
  *(v10 + 384) = v57;
  *(v10 + 392) = v58;
  *(v10 + 400) = v59;
  *(v10 + 408) = v60;
  *(v10 + 409) = v61;

  v62 = sub_26B470D00();
  v63 = v62->identifier._object;
  v64 = v62->displayName._countAndFlagsBits;
  v65 = v62->displayName._object;
  v66 = v62->commands._rawValue;
  v67 = v62->showInSettings;
  v68 = v62->showCodingGuideInSettings;
  *(v10 + 416) = v62->identifier._countAndFlagsBits;
  *(v10 + 424) = v63;
  *(v10 + 432) = v64;
  *(v10 + 440) = v65;
  *(v10 + 448) = v66;
  *(v10 + 456) = v67;
  *(v10 + 457) = v68;

  v69 = sub_26B4BD61C();
  v70 = v69[1];
  v71 = v69[2];
  v72 = v69[3];
  v73 = v69[4];
  v74 = *(v69 + 40);
  v75 = *(v69 + 41);
  *(v10 + 464) = *v69;
  *(v10 + 472) = v70;
  *(v10 + 480) = v71;
  *(v10 + 488) = v72;
  *(v10 + 496) = v73;
  *(v10 + 504) = v74;
  *(v10 + 505) = v75;

  v76 = sub_26B489B08();
  v77 = v76->identifier._object;
  v78 = v76->displayName._countAndFlagsBits;
  v79 = v76->displayName._object;
  v80 = v76->commands._rawValue;
  v81 = v76->showInSettings;
  v82 = v76->showCodingGuideInSettings;
  *(v10 + 512) = v76->identifier._countAndFlagsBits;
  *(v10 + 520) = v77;
  *(v10 + 528) = v78;
  *(v10 + 536) = v79;
  *(v10 + 544) = v80;
  *(v10 + 552) = v81;
  *(v10 + 553) = v82;

  v83 = sub_26B490014();
  v84 = v83->identifier._object;
  v85 = v83->displayName._countAndFlagsBits;
  v86 = v83->displayName._object;
  v87 = v83->commands._rawValue;
  v88 = v83->showInSettings;
  v89 = v83->showCodingGuideInSettings;
  *(v10 + 560) = v83->identifier._countAndFlagsBits;
  *(v10 + 568) = v84;
  *(v10 + 576) = v85;
  *(v10 + 584) = v86;
  *(v10 + 592) = v87;
  *(v10 + 600) = v88;
  *(v10 + 601) = v89;

  v90 = sub_26B49E2DC();
  v91 = v90->identifier._object;
  v92 = v90->displayName._countAndFlagsBits;
  v93 = v90->displayName._object;
  v94 = v90->commands._rawValue;
  v95 = v90->showInSettings;
  v96 = v90->showCodingGuideInSettings;
  *(v10 + 608) = v90->identifier._countAndFlagsBits;
  *(v10 + 616) = v91;
  *(v10 + 624) = v92;
  *(v10 + 632) = v93;
  *(v10 + 640) = v94;
  *(v10 + 648) = v95;
  *(v10 + 649) = v96;

  v97 = sub_26B4E74E4();
  v98 = v97[1];
  v99 = v97[2];
  v100 = v97[3];
  v101 = v97[4];
  v102 = *(v97 + 40);
  v103 = *(v97 + 41);
  *(v10 + 656) = *v97;
  *(v10 + 664) = v98;
  *(v10 + 672) = v99;
  *(v10 + 680) = v100;
  *(v10 + 688) = v101;
  *(v10 + 696) = v102;
  *(v10 + 697) = v103;

  return v10;
}

unint64_t sub_26B4DB978()
{
  result = qword_280400668[0];
  if (!qword_280400668[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280400668);
  }

  return result;
}

unint64_t sub_26B4DB9CC()
{
  result = qword_2803FFFB8;
  if (!qword_2803FFFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803FFFB0, &qword_26B545668);
    sub_26B4DBA50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFFB8);
  }

  return result;
}

unint64_t sub_26B4DBA50()
{
  result = qword_2803FFFC0;
  if (!qword_2803FFFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFFC0);
  }

  return result;
}

unint64_t sub_26B4DBAA4()
{
  result = qword_2803FFFD0;
  if (!qword_2803FFFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803FFFB0, &qword_26B545668);
    sub_26B4DBB28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFFD0);
  }

  return result;
}

unint64_t sub_26B4DBB28()
{
  result = qword_2803FFFD8;
  if (!qword_2803FFFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFFD8);
  }

  return result;
}

uint64_t sub_26B4DBB7C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26B4DBBD0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26B4DBC10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_26B542FB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_26B542FB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73646E616D6D6F63 && a2 == 0xE800000000000000 || (sub_26B542FB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65536E49776F6873 && a2 == 0xEE0073676E697474 || (sub_26B542FB4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x800000026B56AEC0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_26B542FB4();

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

uint64_t sub_26B4DBDDC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_26B4D8750(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_26B4DBE4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804000A8, &qword_26B5482E8);
    v3 = sub_26B542D44();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_26B543034();

      sub_26B542AE4();
      result = sub_26B543054();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_26B542FB4();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

unint64_t sub_26B4DBFB8()
{
  result = qword_2803FFFE0;
  if (!qword_2803FFFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFFE0);
  }

  return result;
}

unint64_t sub_26B4DC09C()
{
  result = qword_280400008;
  if (!qword_280400008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280400008);
  }

  return result;
}

unint64_t sub_26B4DC138()
{
  result = qword_280400020;
  if (!qword_280400020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280400020);
  }

  return result;
}

unint64_t sub_26B4DC1D4()
{
  result = qword_280400038;
  if (!qword_280400038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280400038);
  }

  return result;
}

uint64_t sub_26B4DC2FC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26B4DC360(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26B4DC3D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803FFCE8, &unk_26B5454F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VCCommand.Idiom(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VCCommand.Idiom(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VCCommand.Evaluation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 37;
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

      return (*a1 | (v4 << 8)) - 37;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 37;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x26;
  v8 = v6 - 38;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VCCommand.Evaluation(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xDB)
  {
    v4 = 0;
  }

  if (a2 > 0xDA)
  {
    v5 = ((a2 - 219) >> 8) + 1;
    *result = a2 + 37;
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
    *result = a2 + 37;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26B4DC778(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26B4DC7F8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 240) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 0x10)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 241;
}

void sub_26B4DC904(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xF1)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 240) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xF0)
  {
    v8 = a2 - 241;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B4DCABC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_26B4DCB18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_26B4DCBB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_26B4DCC00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26B4DCC90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_26B4DCCD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for MatchingFlags()
{
  if (!qword_280400078)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280400078);
    }
  }
}

uint64_t sub_26B4DCD88(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_26B4DCE1C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for VCCommand.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VCCommand.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Action.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Action.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26B4DD1A0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_26B4DD230(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s32SpeechRecognitionCommandServices9VCCommandV10UserImpactOwet_0(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s32SpeechRecognitionCommandServices9VCCommandV10UserImpactOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26B4DD46C(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_26B4DD500(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26B4DD604()
{
  result = qword_280402E70[0];
  if (!qword_280402E70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280402E70);
  }

  return result;
}

unint64_t sub_26B4DD65C()
{
  result = qword_280403380[0];
  if (!qword_280403380[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280403380);
  }

  return result;
}

unint64_t sub_26B4DD890()
{
  result = qword_280405790[0];
  if (!qword_280405790[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280405790);
  }

  return result;
}

unint64_t sub_26B4DD8E8()
{
  result = qword_2804059A0[0];
  if (!qword_2804059A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2804059A0);
  }

  return result;
}

unint64_t sub_26B4DD940()
{
  result = qword_280405BB0[0];
  if (!qword_280405BB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280405BB0);
  }

  return result;
}

unint64_t sub_26B4DD998()
{
  result = qword_280405CC0;
  if (!qword_280405CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280405CC0);
  }

  return result;
}

unint64_t sub_26B4DD9F0()
{
  result = qword_280405CC8[0];
  if (!qword_280405CC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280405CC8);
  }

  return result;
}

unint64_t sub_26B4DDA48()
{
  result = qword_280405D50;
  if (!qword_280405D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280405D50);
  }

  return result;
}

unint64_t sub_26B4DDAA0()
{
  result = qword_280405D58[0];
  if (!qword_280405D58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280405D58);
  }

  return result;
}

unint64_t sub_26B4DDAF8()
{
  result = qword_280405DE0;
  if (!qword_280405DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280405DE0);
  }

  return result;
}

unint64_t sub_26B4DDB50()
{
  result = qword_280405DE8[0];
  if (!qword_280405DE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280405DE8);
  }

  return result;
}

unint64_t sub_26B4DDF60()
{
  result = qword_2804066F0;
  if (!qword_2804066F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804066F0);
  }

  return result;
}

unint64_t sub_26B4DDFB8()
{
  result = qword_2804066F8[0];
  if (!qword_2804066F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2804066F8);
  }

  return result;
}

unint64_t sub_26B4DE010()
{
  result = qword_280406780;
  if (!qword_280406780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280406780);
  }

  return result;
}

unint64_t sub_26B4DE068()
{
  result = qword_280406788[0];
  if (!qword_280406788[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280406788);
  }

  return result;
}

unint64_t sub_26B4DE0C0()
{
  result = qword_280406810;
  if (!qword_280406810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280406810);
  }

  return result;
}

unint64_t sub_26B4DE118()
{
  result = qword_280406818[0];
  if (!qword_280406818[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280406818);
  }

  return result;
}

unint64_t sub_26B4DE170()
{
  result = qword_2804068A0;
  if (!qword_2804068A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804068A0);
  }

  return result;
}

unint64_t sub_26B4DE1C8()
{
  result = qword_2804068A8[0];
  if (!qword_2804068A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2804068A8);
  }

  return result;
}

unint64_t sub_26B4DE220()
{
  result = qword_280406930;
  if (!qword_280406930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280406930);
  }

  return result;
}

unint64_t sub_26B4DE278()
{
  result = qword_280406938[0];
  if (!qword_280406938[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280406938);
  }

  return result;
}

unint64_t sub_26B4DE2D0()
{
  result = qword_2804069C0;
  if (!qword_2804069C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804069C0);
  }

  return result;
}

unint64_t sub_26B4DE328()
{
  result = qword_2804069C8[0];
  if (!qword_2804069C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2804069C8);
  }

  return result;
}

unint64_t sub_26B4DE380()
{
  result = qword_280406A50;
  if (!qword_280406A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280406A50);
  }

  return result;
}

unint64_t sub_26B4DE3D8()
{
  result = qword_280406A58[0];
  if (!qword_280406A58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280406A58);
  }

  return result;
}

unint64_t sub_26B4DE430()
{
  result = qword_280406AE0;
  if (!qword_280406AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280406AE0);
  }

  return result;
}

unint64_t sub_26B4DE488()
{
  result = qword_280406AE8[0];
  if (!qword_280406AE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280406AE8);
  }

  return result;
}

unint64_t sub_26B4DE4E0()
{
  result = qword_280406B70;
  if (!qword_280406B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280406B70);
  }

  return result;
}

unint64_t sub_26B4DE538()
{
  result = qword_280406B78;
  if (!qword_280406B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280406B78);
  }

  return result;
}

unint64_t sub_26B4DE58C()
{
  result = qword_280400080;
  if (!qword_280400080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280400080);
  }

  return result;
}

unint64_t sub_26B4DE5E0()
{
  result = qword_280400088;
  if (!qword_280400088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280400088);
  }

  return result;
}

unint64_t sub_26B4DE634()
{
  result = qword_280400090;
  if (!qword_280400090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280400090);
  }

  return result;
}

unint64_t sub_26B4DE688()
{
  result = qword_280400098;
  if (!qword_280400098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280400098);
  }

  return result;
}

unint64_t sub_26B4DE6DC()
{
  result = qword_2804000A0;
  if (!qword_2804000A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804000A0);
  }

  return result;
}

_BYTE *sub_26B4DE730@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_26B4DE854()
{
  v0 = sub_26B542934();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2, v3, v4);
  v5 = sub_26B542A64();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7, v8, v9);
  sub_26B542A54();
  sub_26B5428F4();
  v832 = sub_26B542AB4();
  v831 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC40, &unk_26B5453C0);
  v929 = swift_allocObject();
  *(v929 + 16) = xmmword_26B548320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC98, &qword_26B545230);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_26B545180;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCA0, &qword_26B5453A0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26B545250;
  *(v12 + 32) = 0xD00000000000001DLL;
  *(v12 + 40) = 0x800000026B5547D0;
  *(v12 + 48) = 0xD00000000000001BLL;
  *(v12 + 56) = 0x800000026B554810;
  *(v12 + 64) = 0xD00000000000002BLL;
  *(v12 + 72) = 0x800000026B554850;
  *(v12 + 80) = 0xD000000000000024;
  *(v12 + 88) = 0x800000026B5548B0;
  *(v12 + 96) = 0xD000000000000012;
  *(v12 + 104) = 0x800000026B5547F0;
  *(v12 + 112) = 0xD000000000000010;
  *(v12 + 120) = 0x800000026B554830;
  *(v12 + 128) = 0xD000000000000020;
  *(v12 + 136) = 0x800000026B554880;
  *(v12 + 144) = 0xD000000000000019;
  *(v12 + 152) = 0x800000026B5548E0;
  *(v11 + 32) = v12;
  *(v11 + 40) = 1;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_26B545250;
  *(v13 + 32) = 0xD00000000000001ALL;
  *(v13 + 40) = 0x800000026B5547B0;
  *(v13 + 48) = 0xD00000000000001BLL;
  *(v13 + 56) = 0x800000026B554810;
  *(v13 + 64) = 0xD00000000000002BLL;
  *(v13 + 72) = 0x800000026B554850;
  *(v13 + 80) = 0xD000000000000024;
  *(v13 + 88) = 0x800000026B5548B0;
  *(v13 + 96) = 0x6C73206F74206F47;
  *(v13 + 104) = 0xEF63614D20706565;
  *(v13 + 112) = 0xD000000000000010;
  *(v13 + 120) = 0x800000026B554830;
  *(v13 + 128) = 0xD000000000000020;
  *(v13 + 136) = 0x800000026B554880;
  *(v13 + 144) = 0xD000000000000019;
  *(v13 + 152) = 0x800000026B5548E0;
  *(v11 + 48) = v13;
  *(v11 + 56) = 4;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26B545250;
  *(v14 + 32) = 0xD00000000000001ALL;
  *(v14 + 40) = 0x800000026B5547B0;
  *(v14 + 48) = 0xD00000000000001DLL;
  *(v14 + 56) = 0x800000026B5547D0;
  *(v14 + 64) = 0xD00000000000002BLL;
  *(v14 + 72) = 0x800000026B554850;
  *(v14 + 80) = 0xD000000000000024;
  *(v14 + 88) = 0x800000026B5548B0;
  *(v14 + 96) = 0x6C73206F74206F47;
  *(v14 + 104) = 0xEF63614D20706565;
  *(v14 + 112) = 0xD000000000000012;
  *(v14 + 120) = 0x800000026B5547F0;
  *(v14 + 128) = 0xD000000000000020;
  *(v14 + 136) = 0x800000026B554880;
  *(v14 + 144) = 0xD000000000000019;
  *(v14 + 152) = 0x800000026B5548E0;
  *(v11 + 64) = v14;
  *(v11 + 72) = 5;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_26B545250;
  *(v15 + 32) = 0xD00000000000001ALL;
  *(v15 + 40) = 0x800000026B5547B0;
  *(v15 + 48) = 0xD00000000000001DLL;
  *(v15 + 56) = 0x800000026B5547D0;
  *(v15 + 64) = 0xD00000000000001BLL;
  *(v15 + 72) = 0x800000026B554810;
  *(v15 + 80) = 0xD000000000000024;
  *(v15 + 88) = 0x800000026B5548B0;
  *(v15 + 96) = 0x6C73206F74206F47;
  *(v15 + 104) = 0xEF63614D20706565;
  *(v15 + 112) = 0xD000000000000012;
  *(v15 + 120) = 0x800000026B5547F0;
  *(v15 + 128) = 0xD000000000000010;
  *(v15 + 136) = 0x800000026B554830;
  *(v15 + 144) = 0xD000000000000019;
  *(v15 + 152) = 0x800000026B5548E0;
  v16 = v11;
  *(v11 + 80) = v15;
  *(v11 + 88) = 8;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_26B548330;
  *(v17 + 32) = 0xD00000000000001ALL;
  *(v17 + 40) = 0x800000026B5547B0;
  *(v17 + 48) = 0xD00000000000001DLL;
  *(v17 + 56) = 0x800000026B5547D0;
  *(v17 + 64) = 0xD00000000000001BLL;
  *(v17 + 72) = 0x800000026B554810;
  *(v17 + 80) = 0xD00000000000002BLL;
  *(v17 + 88) = 0x800000026B554850;
  *(v17 + 96) = 0xD000000000000024;
  *(v17 + 104) = 0x800000026B5548B0;
  *(v17 + 112) = 0x6C73206F74206F47;
  *(v17 + 120) = 0xEF63614D20706565;
  *(v17 + 128) = 0xD000000000000012;
  *(v17 + 136) = 0x800000026B5547F0;
  *(v17 + 144) = 0xD000000000000010;
  *(v17 + 152) = 0x800000026B554830;
  *(v17 + 160) = 0xD000000000000020;
  *(v17 + 168) = 0x800000026B554880;
  *(v17 + 176) = 0xD000000000000019;
  *(v17 + 184) = 0x800000026B5548E0;
  *(v11 + 96) = v17;
  *(v11 + 104) = 10;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_26B545250;
  *(v18 + 32) = 0xD00000000000001ALL;
  *(v18 + 40) = 0x800000026B5547B0;
  *(v18 + 48) = 0xD00000000000001DLL;
  *(v18 + 56) = 0x800000026B5547D0;
  *(v18 + 64) = 0xD00000000000001BLL;
  *(v18 + 72) = 0x800000026B554810;
  *(v18 + 80) = 0xD00000000000002BLL;
  *(v18 + 88) = 0x800000026B554850;
  *(v18 + 96) = 0x6C73206F74206F47;
  *(v18 + 104) = 0xEF63614D20706565;
  *(v18 + 112) = 0xD000000000000012;
  *(v18 + 120) = 0x800000026B5547F0;
  *(v18 + 128) = 0xD000000000000010;
  *(v18 + 136) = 0x800000026B554830;
  *(v18 + 144) = 0xD000000000000020;
  *(v18 + 152) = 0x800000026B554880;
  *(v11 + 112) = v18;
  *(v11 + 120) = 14;
  v937[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCA8, &unk_26B5453B0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_26B545140;
  *(v19 + 32) = 84017408;
  *(v19 + 36) = 8;
  v860 = sub_26B470D98(v19);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v20 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v20 = MEMORY[0x277D84FA0];
  }

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_26B545100;
  *(v21 + 32) = 3;
  v22 = sub_26B470D98(v21);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC48, &unk_26B5482F0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_26B5450C0;
  v24 = sub_26B4C6A78();
  *(v23 + 32) = *v24;
  *(v23 + 40) = 1;
  *(v23 + 48) = *v24;
  *(v23 + 56) = 3;
  v928 = v24;
  *(v23 + 64) = *v24;
  *(v23 + 72) = 8;
  *(v23 + 80) = 0x403A000000000000;
  *(v23 + 88) = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCB0, &qword_26B545238);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_26B545100;
  *(v25 + 32) = 5;
  v26 = sub_26B470F10(v25);

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_26B545120;
  *(v27 + 32) = 256;
  v28 = sub_26B470F10(v27);

  v936 = 4;
  v935 = 4;
  v29.value._countAndFlagsBits = 0xD000000000000014;
  v29.value._object = 0x800000026B56BAC0;
  Action.init(_:mac:)(v29, 0);
  v931 = v933;
  v932 = v934;
  v30 = sub_26B4D43F4();
  v31 = sub_26B4CE5C8();
  v32 = sub_26B4D4400();
  *&v782 = sub_26B4D4408();
  *(&v782 + 1) = v26;
  *&v733 = v22;
  *(&v733 + 1) = v23;
  *(&v684 + 1) = v20;
  *&v684 = v860;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B56BAA0, v16, MEMORY[0x277D84F90], v30, 0, 0, v937, v929 + 32, v31 & 1, v32 & 1, v684, v733, v782, v28, &v936, &v935, 0, 0, &v931);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_26B545180;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_26B545250;
  *(v34 + 32) = 0xD00000000000001ELL;
  *(v34 + 40) = 0x800000026B554A60;
  *(v34 + 48) = 0xD00000000000001CLL;
  *(v34 + 56) = 0x800000026B554AA0;
  *(v34 + 64) = 0xD00000000000002CLL;
  *(v34 + 72) = 0x800000026B554AE0;
  *(v34 + 80) = 0xD000000000000025;
  *(v34 + 88) = 0x800000026B554B40;
  *(v34 + 96) = 0xD000000000000013;
  *(v34 + 104) = 0x800000026B554A80;
  *(v34 + 112) = 0xD000000000000011;
  *(v34 + 120) = 0x800000026B554AC0;
  *(v34 + 128) = 0xD000000000000021;
  *(v34 + 136) = 0x800000026B554B10;
  *(v34 + 144) = 0xD00000000000001ALL;
  *(v34 + 152) = 0x800000026B554B70;
  *(v33 + 32) = v34;
  *(v33 + 40) = 1;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_26B545250;
  *(v35 + 32) = 0xD00000000000001BLL;
  *(v35 + 40) = 0x800000026B554A20;
  *(v35 + 48) = 0xD00000000000001CLL;
  *(v35 + 56) = 0x800000026B554AA0;
  *(v35 + 64) = 0xD00000000000002CLL;
  *(v35 + 72) = 0x800000026B554AE0;
  *(v35 + 80) = 0xD000000000000025;
  *(v35 + 88) = 0x800000026B554B40;
  *(v35 + 96) = 0xD000000000000010;
  *(v35 + 104) = 0x800000026B554A40;
  *(v35 + 112) = 0xD000000000000011;
  *(v35 + 120) = 0x800000026B554AC0;
  *(v35 + 128) = 0xD000000000000021;
  *(v35 + 136) = 0x800000026B554B10;
  *(v35 + 144) = 0xD00000000000001ALL;
  *(v35 + 152) = 0x800000026B554B70;
  *(v33 + 48) = v35;
  *(v33 + 56) = 4;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_26B545250;
  *(v36 + 32) = 0xD00000000000001BLL;
  *(v36 + 40) = 0x800000026B554A20;
  *(v36 + 48) = 0xD00000000000001ELL;
  *(v36 + 56) = 0x800000026B554A60;
  *(v36 + 64) = 0xD00000000000002CLL;
  *(v36 + 72) = 0x800000026B554AE0;
  *(v36 + 80) = 0xD000000000000025;
  *(v36 + 88) = 0x800000026B554B40;
  *(v36 + 96) = 0xD000000000000010;
  *(v36 + 104) = 0x800000026B554A40;
  *(v36 + 112) = 0xD000000000000013;
  *(v36 + 120) = 0x800000026B554A80;
  *(v36 + 128) = 0xD000000000000021;
  *(v36 + 136) = 0x800000026B554B10;
  *(v36 + 144) = 0xD00000000000001ALL;
  *(v36 + 152) = 0x800000026B554B70;
  *(v33 + 64) = v36;
  *(v33 + 72) = 5;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_26B545250;
  *(v37 + 32) = 0xD00000000000001BLL;
  *(v37 + 40) = 0x800000026B554A20;
  *(v37 + 48) = 0xD00000000000001ELL;
  *(v37 + 56) = 0x800000026B554A60;
  *(v37 + 64) = 0xD00000000000001CLL;
  *(v37 + 72) = 0x800000026B554AA0;
  *(v37 + 80) = 0xD000000000000025;
  *(v37 + 88) = 0x800000026B554B40;
  *(v37 + 96) = 0xD000000000000010;
  *(v37 + 104) = 0x800000026B554A40;
  *(v37 + 112) = 0xD000000000000013;
  *(v37 + 120) = 0x800000026B554A80;
  *(v37 + 128) = 0xD000000000000011;
  *(v37 + 136) = 0x800000026B554AC0;
  *(v37 + 144) = 0xD00000000000001ALL;
  *(v37 + 152) = 0x800000026B554B70;
  *(v33 + 80) = v37;
  *(v33 + 88) = 8;
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_26B548330;
  *(v38 + 32) = 0xD00000000000001BLL;
  *(v38 + 40) = 0x800000026B554A20;
  *(v38 + 48) = 0xD00000000000001ELL;
  *(v38 + 56) = 0x800000026B554A60;
  *(v38 + 64) = 0xD00000000000001CLL;
  *(v38 + 72) = 0x800000026B554AA0;
  *(v38 + 80) = 0xD00000000000002CLL;
  *(v38 + 88) = 0x800000026B554AE0;
  *(v38 + 96) = 0xD000000000000025;
  *(v38 + 104) = 0x800000026B554B40;
  *(v38 + 112) = 0xD000000000000010;
  *(v38 + 120) = 0x800000026B554A40;
  *(v38 + 128) = 0xD000000000000013;
  *(v38 + 136) = 0x800000026B554A80;
  *(v38 + 144) = 0xD000000000000011;
  *(v38 + 152) = 0x800000026B554AC0;
  *(v38 + 160) = 0xD000000000000021;
  *(v38 + 168) = 0x800000026B554B10;
  *(v38 + 176) = 0xD00000000000001ALL;
  *(v38 + 184) = 0x800000026B554B70;
  *(v33 + 96) = v38;
  *(v33 + 104) = 10;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_26B545250;
  *(v39 + 32) = 0xD00000000000001BLL;
  *(v39 + 40) = 0x800000026B554A20;
  *(v39 + 48) = 0xD00000000000001ELL;
  *(v39 + 56) = 0x800000026B554A60;
  *(v39 + 64) = 0xD00000000000001CLL;
  *(v39 + 72) = 0x800000026B554AA0;
  *(v39 + 80) = 0xD00000000000002CLL;
  *(v39 + 88) = 0x800000026B554AE0;
  *(v39 + 96) = 0xD000000000000010;
  *(v39 + 104) = 0x800000026B554A40;
  *(v39 + 112) = 0xD000000000000013;
  *(v39 + 120) = 0x800000026B554A80;
  *(v39 + 128) = 0xD000000000000011;
  *(v39 + 136) = 0x800000026B554AC0;
  *(v39 + 144) = 0xD000000000000021;
  *(v39 + 152) = 0x800000026B554B10;
  *(v33 + 112) = v39;
  *(v33 + 120) = 14;
  v937[0] = 0;
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_26B545140;
  *(v40 + 32) = 84017408;
  *(v40 + 36) = 8;
  v893 = sub_26B470D98(v40);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v841 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v841 = MEMORY[0x277D84FA0];
  }

  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_26B545100;
  *(v41 + 32) = 3;
  v42 = sub_26B470D98(v41);

  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_26B5450C0;
  *(v43 + 32) = *v928;
  *(v43 + 40) = 1;
  *(v43 + 48) = *v928;
  *(v43 + 56) = 3;
  *(v43 + 64) = *v928;
  *(v43 + 72) = 8;
  *(v43 + 80) = 0x403A000000000000;
  *(v43 + 88) = 10;
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_26B545100;
  *(v44 + 32) = 5;
  v45 = sub_26B470F10(v44);

  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_26B545120;
  *(v46 + 32) = 256;
  v47 = sub_26B470F10(v46);

  v936 = 4;
  v935 = 2;
  v48.value._object = 0x800000026B56BB00;
  v48.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v48, 0);
  v931 = v933;
  v932 = v934;
  v49 = sub_26B4D43F4();
  v50 = sub_26B4CE5C8();
  v51 = sub_26B4D4400();
  *&v783 = sub_26B4D4408();
  *(&v783 + 1) = v45;
  *&v734 = v42;
  *(&v734 + 1) = v43;
  *(&v685 + 1) = v841;
  *&v685 = v893;
  v52 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ALL, 0x800000026B56BAE0, v33, MEMORY[0x277D84F90], v49, 0, 0, v937, v929 + 216, v50 & 1, v51 & 1, v685, v734, v783, v47, &v936, &v935, 0, 0, &v931);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_26B545100;
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_26B545100;
  *(v54 + 32) = 0xD000000000000025;
  *(v54 + 40) = 0x800000026B56BB20;
  *(v53 + 32) = v54;
  *(v53 + 40) = 0;
  v937[0] = 0;
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_26B545140;
  *(v55 + 32) = 84017408;
  *(v55 + 36) = 8;
  v894 = sub_26B470D98(v55);

  if (*(v52 + 16))
  {
    v861 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v861 = MEMORY[0x277D84FA0];
  }

  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_26B545100;
  *(v56 + 32) = 3;
  v842 = sub_26B470D98(v56);

  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_26B5450C0;
  *(v57 + 32) = *v928;
  *(v57 + 40) = 1;
  *(v57 + 48) = *v928;
  *(v57 + 56) = 3;
  *(v57 + 64) = *v928;
  *(v57 + 72) = 8;
  *(v57 + 80) = 0x403A000000000000;
  *(v57 + 88) = 10;
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_26B545100;
  *(v58 + 32) = 5;
  v833 = sub_26B470F10(v58);

  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_26B545120;
  *(v59 + 32) = 3585;
  v60 = sub_26B470F10(v59);

  v936 = 4;
  v935 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCB8, &qword_26B5454E0);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_26B545120;
  *(v61 + 32) = 0xD00000000000001DLL;
  *(v61 + 40) = 0x800000026B557850;
  *(v61 + 48) = 0;
  *(v61 + 56) = 0xD00000000000001ELL;
  *(v61 + 64) = 0x800000026B557870;
  *(v61 + 72) = 1;
  v62.value._object = 0x800000026B558780;
  v62.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v62, 0);
  v931 = v933;
  v932 = v934;
  v63 = sub_26B4D43F4();
  v64 = sub_26B4CE5C8();
  v65 = sub_26B4D4400();
  *&v784 = sub_26B4D4408();
  *(&v784 + 1) = v833;
  *(&v735 + 1) = v57;
  *&v735 = v842;
  *(&v686 + 1) = v861;
  *&v686 = v894;
  v66 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000029, 0x800000026B56BB50, v53, MEMORY[0x277D84F90], v63, 0, 0, v937, v929 + 400, v64 & 1, v65 & 1, v686, v735, v784, v60, &v936, &v935, 0, v61, &v931);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_26B545100;
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_26B545100;
  *(v68 + 32) = 0xD000000000000020;
  *(v68 + 40) = 0x800000026B56BB80;
  *(v67 + 32) = v68;
  *(v67 + 40) = 0;
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_26B545100;
  *(v69 + 32) = 0xD000000000000024;
  *(v69 + 40) = 0x800000026B56BBB0;
  *(v69 + 48) = 0;
  v937[0] = 1;
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_26B545140;
  *(v70 + 32) = 84083201;
  *(v70 + 36) = 8;
  v862 = sub_26B470D98(v70);

  if (*(v66 + 16))
  {
    v843 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v843 = MEMORY[0x277D84FA0];
  }

  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_26B545100;
  *(v71 + 32) = 0;
  v72 = sub_26B470D98(v71);

  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_26B5450D0;
  *(v73 + 32) = *v928;
  *(v73 + 40) = 3;
  *(v73 + 48) = *v928;
  *(v73 + 56) = 8;
  *(v73 + 64) = 0x403A000000000000;
  *(v73 + 72) = 10;
  v936 = 4;
  v935 = 4;
  v74.value._object = 0x800000026B56BC00;
  v74.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v74, 0);
  v931 = v933;
  v932 = v934;
  v75 = sub_26B4D43F4();
  v76 = sub_26B4CE5C8();
  v77 = sub_26B4D4400();
  v78 = sub_26B4D4408();
  v79 = sub_26B4D4414();
  v80 = sub_26B4D4414();
  *&v785 = v78;
  *(&v785 + 1) = v79;
  *&v736 = v72;
  *(&v736 + 1) = v73;
  *(&v687 + 1) = v843;
  *&v687 = v862;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000017, 0x800000026B56BBE0, v67, v69, v75, 0, 0, v937, v929 + 584, v76 & 1, v77 & 1, v687, v736, v785, v80, &v936, &v935, 0, 0, &v931);
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_26B545100;
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_26B545120;
  *(v82 + 32) = 0xD00000000000001FLL;
  *(v82 + 40) = 0x800000026B56BC20;
  *(v82 + 48) = 0x20707520656B6157;
  *(v82 + 56) = 0xEF79616C50726143;
  *(v81 + 32) = v82;
  *(v81 + 40) = 0;
  v937[0] = 0;
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_26B545100;
  *(v83 + 32) = 1;
  v844 = sub_26B470D98(v83);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    v834 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v834 = MEMORY[0x277D84FA0];
  }

  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_26B545140;
  *(v84 + 32) = 84083200;
  *(v84 + 36) = 8;
  v85 = sub_26B470D98(v84);

  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_26B545100;
  *(v86 + 32) = *v928;
  *(v86 + 40) = 3;
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_26B545120;
  *(v87 + 32) = 7938;
  v88 = sub_26B470F10(v87);

  v936 = 4;
  v935 = 4;
  v89.value._countAndFlagsBits = 0x50726143656B6177;
  v89.value._object = 0xEB0000000079616CLL;
  Action.init(_:mac:)(v89, 0);
  v931 = v933;
  v932 = v934;
  v90 = sub_26B4D43F4();
  v91 = sub_26B4CE5C8();
  v92 = sub_26B4D4400();
  *&v786 = sub_26B4D4408();
  *(&v786 + 1) = sub_26B4D4414();
  *&v737 = v85;
  *(&v737 + 1) = v86;
  *(&v688 + 1) = v834;
  *&v688 = v844;
  v93 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B56BC40, v81, MEMORY[0x277D84F90], v90, 0, 0, v937, v929 + 768, v91 & 1, v92 & 1, v688, v737, v786, v88, &v936, &v935, 0, 0, &v931);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_26B545100;
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_26B545120;
  *(v95 + 32) = 0xD00000000000001ELL;
  *(v95 + 40) = 0x800000026B554A60;
  *(v95 + 48) = 0xD000000000000013;
  *(v95 + 56) = 0x800000026B554A80;
  *(v94 + 32) = v95;
  *(v94 + 40) = 0;
  v937[0] = 0;
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_26B545100;
  *(v96 + 32) = 3;
  v858 = sub_26B470D98(v96);

  if (*(v93 + 16))
  {
    v856 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v856 = MEMORY[0x277D84FA0];
  }

  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_26B545140;
  *(v97 + 32) = 84017408;
  *(v97 + 36) = 8;
  v98 = sub_26B470D98(v97);

  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_26B545100;
  *(v99 + 32) = *v928;
  *(v99 + 40) = 3;
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_26B5450D0;
  *(v100 + 32) = 7938;
  *(v100 + 34) = 27;
  v101 = sub_26B470F10(v100);

  v936 = 4;
  v935 = 0;
  v102.value._countAndFlagsBits = 0x7261437065656C73;
  v102.value._object = 0xEC00000079616C50;
  Action.init(_:mac:)(v102, 0);
  v931 = v933;
  v932 = v934;
  v103 = sub_26B4D43F4();
  v104 = sub_26B4CE5C8();
  v105 = sub_26B4D4400();
  *&v787 = sub_26B4D4408();
  *(&v787 + 1) = sub_26B4D4414();
  *&v738 = v98;
  *(&v738 + 1) = v99;
  *(&v689 + 1) = v856;
  *&v689 = v858;
  v106 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000025, 0x800000026B56BC60, v94, MEMORY[0x277D84F90], v103, 0, 0, v937, v929 + 952, v104 & 1, v105 & 1, v689, v738, v787, v101, &v936, &v935, 0, 0, &v931);
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_26B545100;
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_26B545100;
  *(v108 + 32) = 0xD00000000000001DLL;
  *(v108 + 40) = 0x800000026B56BC90;
  *(v107 + 32) = v108;
  *(v107 + 40) = 0;
  v937[0] = 1;
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_26B5450C0;
  *(v109 + 32) = 84017408;
  v859 = sub_26B470D98(v109);

  if (*(v106 + 16))
  {
    v110 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v110 = MEMORY[0x277D84FA0];
  }

  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_26B545120;
  *(v111 + 32) = 2051;
  v112 = sub_26B470D98(v111);

  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_26B5450D0;
  *(v113 + 32) = *v928;
  *(v113 + 40) = 1;
  *(v113 + 48) = *v928;
  *(v113 + 56) = 3;
  *(v113 + 64) = *v928;
  *(v113 + 72) = 8;
  v114 = swift_allocObject();
  *(v114 + 16) = xmmword_26B545100;
  *(v114 + 32) = 14;
  v115 = sub_26B470F10(v114);

  v936 = 4;
  v935 = 4;
  v116.value._object = 0x800000026B56BCD0;
  v116.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v116, 0);
  v931 = v933;
  v932 = v934;
  v117 = sub_26B4D43F4();
  v118 = sub_26B4CE5C8();
  v119 = sub_26B4D4400();
  *&v788 = sub_26B4D4408();
  *(&v788 + 1) = sub_26B4D4414();
  *&v739 = v112;
  *(&v739 + 1) = v113;
  *(&v690 + 1) = v110;
  *&v690 = v859;
  v120 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000014, 0x800000026B56BCB0, v107, MEMORY[0x277D84F90], v117, 0, 0, v937, v929 + 1136, v118 & 1, v119 & 1, v690, v739, v788, v115, &v936, &v935, 0, 0, &v931);
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_26B545100;
  v122 = swift_allocObject();
  *(v122 + 16) = xmmword_26B545120;
  *(v122 + 32) = 0xD000000000000047;
  *(v122 + 40) = 0x800000026B56BCF0;
  *(v122 + 48) = 0xD000000000000042;
  *(v122 + 56) = 0x800000026B56BD40;
  *(v121 + 32) = v122;
  *(v121 + 40) = 0;
  v937[0] = 1;
  v123 = swift_allocObject();
  *(v123 + 16) = xmmword_26B5450C0;
  *(v123 + 32) = 84017408;
  v857 = sub_26B470D98(v123);

  if (*(v120 + 16))
  {
    v845 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v845 = MEMORY[0x277D84FA0];
  }

  v124 = swift_allocObject();
  *(v124 + 16) = xmmword_26B545120;
  *(v124 + 32) = 2051;
  v125 = sub_26B470D98(v124);

  v126 = swift_allocObject();
  *(v126 + 16) = xmmword_26B5450D0;
  *(v126 + 32) = *v928;
  *(v126 + 40) = 1;
  *(v126 + 48) = *v928;
  *(v126 + 56) = 3;
  *(v126 + 64) = *v928;
  *(v126 + 72) = 8;
  v127 = swift_allocObject();
  *(v127 + 16) = xmmword_26B545100;
  *(v127 + 32) = 14;
  v128 = sub_26B470F10(v127);

  v936 = 4;
  v935 = 4;
  v129.value._countAndFlagsBits = 0xD000000000000015;
  v129.value._object = 0x800000026B56BDB0;
  Action.init(_:mac:)(v129, 0);
  v931 = v933;
  v932 = v934;
  v130 = sub_26B4D43F4();
  v131 = sub_26B4CE5C8();
  v132 = sub_26B4D4400();
  *&v789 = sub_26B4D4408();
  *(&v789 + 1) = sub_26B4D4414();
  *&v740 = v125;
  *(&v740 + 1) = v126;
  *(&v691 + 1) = v845;
  *&v691 = v857;
  v133 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B56BD90, v121, MEMORY[0x277D84F90], v130, 0, 0, v937, v929 + 1320, v131 & 1, v132 & 1, v691, v740, v789, v128, &v936, &v935, 0, 0, &v931);
  v134 = swift_allocObject();
  *(v134 + 16) = xmmword_26B545100;
  v135 = swift_allocObject();
  *(v135 + 16) = xmmword_26B545100;
  *(v135 + 32) = 0xD000000000000023;
  *(v135 + 40) = 0x800000026B56BDD0;
  *(v134 + 32) = v135;
  *(v134 + 40) = 0;
  v937[0] = 1;
  v136 = swift_allocObject();
  *(v136 + 16) = xmmword_26B545140;
  *(v136 + 32) = 84017408;
  *(v136 + 36) = 8;
  v846 = sub_26B470D98(v136);

  if (*(v133 + 16))
  {
    v835 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v835 = MEMORY[0x277D84FA0];
  }

  v137 = swift_allocObject();
  *(v137 + 16) = xmmword_26B545100;
  *(v137 + 32) = 3;
  v138 = sub_26B470D98(v137);

  v139 = swift_allocObject();
  *(v139 + 16) = xmmword_26B5450C0;
  *(v139 + 32) = *v928;
  *(v139 + 40) = 1;
  *(v139 + 48) = *v928;
  *(v139 + 56) = 3;
  *(v139 + 64) = *v928;
  *(v139 + 72) = 8;
  *(v139 + 80) = 0x403A000000000000;
  *(v139 + 88) = 10;
  v140 = swift_allocObject();
  *(v140 + 16) = xmmword_26B545100;
  *(v140 + 32) = 14;
  v141 = sub_26B470F10(v140);

  v936 = 4;
  v935 = 4;
  v142.value._countAndFlagsBits = 0xD000000000000016;
  v142.value._object = 0x800000026B56BE20;
  Action.init(_:mac:)(v142, 0);
  v931 = v933;
  v932 = v934;
  v143 = sub_26B4D43F4();
  v144 = sub_26B4CE5C8();
  v145 = sub_26B4D4400();
  *&v790 = sub_26B4D4408();
  *(&v790 + 1) = sub_26B4D4414();
  *&v741 = v138;
  *(&v741 + 1) = v139;
  *(&v692 + 1) = v835;
  *&v692 = v846;
  v146 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ALL, 0x800000026B56BE00, v134, MEMORY[0x277D84F90], v143, 0, 0, v937, v929 + 1504, v144 & 1, v145 & 1, v692, v741, v790, v141, &v936, &v935, 0, 0, &v931);
  v147 = swift_allocObject();
  *(v147 + 16) = xmmword_26B545100;
  v148 = swift_allocObject();
  *(v148 + 16) = xmmword_26B545120;
  *(v148 + 32) = 0xD00000000000004DLL;
  *(v148 + 40) = 0x800000026B56BE40;
  *(v148 + 48) = 0xD000000000000048;
  *(v148 + 56) = 0x800000026B56BE90;
  *(v147 + 32) = v148;
  *(v147 + 40) = 0;
  v937[0] = 1;
  v149 = swift_allocObject();
  *(v149 + 16) = xmmword_26B545140;
  *(v149 + 32) = 84017408;
  *(v149 + 36) = 8;
  v847 = sub_26B470D98(v149);

  if (*(v146 + 16))
  {
    v836 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v836 = MEMORY[0x277D84FA0];
  }

  v150 = swift_allocObject();
  *(v150 + 16) = xmmword_26B545100;
  *(v150 + 32) = 3;
  v151 = sub_26B470D98(v150);

  v152 = swift_allocObject();
  *(v152 + 16) = xmmword_26B5450C0;
  *(v152 + 32) = *v928;
  *(v152 + 40) = 1;
  *(v152 + 48) = *v928;
  *(v152 + 56) = 3;
  *(v152 + 64) = *v928;
  *(v152 + 72) = 8;
  *(v152 + 80) = 0x403A000000000000;
  *(v152 + 88) = 10;
  v153 = swift_allocObject();
  *(v153 + 16) = xmmword_26B545100;
  *(v153 + 32) = 14;
  v154 = sub_26B470F10(v153);

  v936 = 4;
  v935 = 4;
  v155.value._object = 0x800000026B56BF00;
  v155.value._countAndFlagsBits = 0xD00000000000001BLL;
  Action.init(_:mac:)(v155, 0);
  v931 = v933;
  v932 = v934;
  v156 = sub_26B4D43F4();
  v157 = sub_26B4CE5C8();
  v158 = sub_26B4D4400();
  *&v791 = sub_26B4D4408();
  *(&v791 + 1) = sub_26B4D4414();
  *&v742 = v151;
  *(&v742 + 1) = v152;
  *(&v693 + 1) = v836;
  *&v693 = v847;
  v159 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001FLL, 0x800000026B56BEE0, v147, MEMORY[0x277D84F90], v156, 0, 0, v937, v929 + 1688, v157 & 1, v158 & 1, v693, v742, v791, v154, &v936, &v935, 0, 0, &v931);
  v160 = swift_allocObject();
  *(v160 + 16) = xmmword_26B545100;
  v161 = swift_allocObject();
  *(v161 + 16) = xmmword_26B545100;
  *(v161 + 32) = 0xD00000000000003BLL;
  *(v161 + 40) = 0x800000026B56BF20;
  *(v160 + 32) = v161;
  *(v160 + 40) = 0;
  v937[0] = 0;
  v162 = swift_allocObject();
  *(v162 + 16) = xmmword_26B545140;
  *(v162 + 32) = 84017408;
  *(v162 + 36) = 8;
  v848 = sub_26B470D98(v162);

  if (*(v159 + 16))
  {
    v837 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v837 = MEMORY[0x277D84FA0];
  }

  v163 = swift_allocObject();
  *(v163 + 16) = xmmword_26B545100;
  *(v163 + 32) = 3;
  v164 = sub_26B470D98(v163);

  v165 = swift_allocObject();
  *(v165 + 16) = xmmword_26B5450C0;
  *(v165 + 32) = *v928;
  *(v165 + 40) = 1;
  *(v165 + 48) = *v928;
  *(v165 + 56) = 3;
  *(v165 + 64) = *v928;
  *(v165 + 72) = 8;
  *(v165 + 80) = 0x403A000000000000;
  *(v165 + 88) = 10;
  v166 = swift_allocObject();
  *(v166 + 16) = xmmword_26B545100;
  *(v166 + 32) = 14;
  v167 = sub_26B470F10(v166);

  v936 = 4;
  v935 = 4;
  v168.value._object = 0x800000026B56BF80;
  v168.value._countAndFlagsBits = 0xD000000000000012;
  Action.init(_:mac:)(v168, 0);
  v931 = v933;
  v932 = v934;
  v169 = sub_26B4D43F4();
  v170 = sub_26B4CE5C8();
  v171 = sub_26B4D4400();
  *&v792 = sub_26B4D4408();
  *(&v792 + 1) = sub_26B4D4414();
  *&v743 = v164;
  *(&v743 + 1) = v165;
  *(&v694 + 1) = v837;
  *&v694 = v848;
  v172 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000016, 0x800000026B56BF60, v160, MEMORY[0x277D84F90], v169, 0, 0, v937, v929 + 1872, v170 & 1, v171 & 1, v694, v743, v792, v167, &v936, &v935, 0, 0, &v931);
  v173 = swift_allocObject();
  *(v173 + 16) = xmmword_26B545100;
  v174 = swift_allocObject();
  *(v174 + 16) = xmmword_26B545120;
  *(v174 + 32) = 0xD000000000000065;
  *(v174 + 40) = 0x800000026B56BFA0;
  *(v174 + 48) = 0xD000000000000060;
  *(v174 + 56) = 0x800000026B56C010;
  *(v173 + 32) = v174;
  *(v173 + 40) = 0;
  v937[0] = 1;
  v175 = swift_allocObject();
  *(v175 + 16) = xmmword_26B545140;
  *(v175 + 32) = 84017408;
  *(v175 + 36) = 8;
  v849 = sub_26B470D98(v175);

  if (*(v172 + 16))
  {
    v838 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v838 = MEMORY[0x277D84FA0];
  }

  v176 = swift_allocObject();
  *(v176 + 16) = xmmword_26B545100;
  *(v176 + 32) = 3;
  v177 = sub_26B470D98(v176);

  v178 = swift_allocObject();
  *(v178 + 16) = xmmword_26B5450C0;
  *(v178 + 32) = *v928;
  *(v178 + 40) = 1;
  *(v178 + 48) = *v928;
  *(v178 + 56) = 3;
  *(v178 + 64) = *v928;
  *(v178 + 72) = 8;
  *(v178 + 80) = 0x403A000000000000;
  *(v178 + 88) = 10;
  v179 = swift_allocObject();
  *(v179 + 16) = xmmword_26B545100;
  *(v179 + 32) = 14;
  v180 = sub_26B470F10(v179);

  v936 = 4;
  v935 = 4;
  v181.value._object = 0x800000026B56C0A0;
  v181.value._countAndFlagsBits = 0xD000000000000017;
  Action.init(_:mac:)(v181, 0);
  v931 = v933;
  v932 = v934;
  v182 = sub_26B4D43F4();
  v183 = sub_26B4CE5C8();
  v184 = sub_26B4D4400();
  *&v793 = sub_26B4D4408();
  *(&v793 + 1) = sub_26B4D4414();
  *&v744 = v177;
  *(&v744 + 1) = v178;
  *(&v695 + 1) = v838;
  *&v695 = v849;
  v185 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B56C080, v173, MEMORY[0x277D84F90], v182, 0, 0, v937, v929 + 2056, v183 & 1, v184 & 1, v695, v744, v793, v180, &v936, &v935, 0, 0, &v931);
  v186 = swift_allocObject();
  *(v186 + 16) = xmmword_26B545100;
  v187 = swift_allocObject();
  *(v187 + 16) = xmmword_26B545100;
  *(v187 + 32) = 0xD00000000000001DLL;
  *(v187 + 40) = 0x800000026B56C0C0;
  *(v186 + 32) = v187;
  *(v186 + 40) = 0;
  v937[0] = 0;
  v188 = swift_allocObject();
  *(v188 + 16) = xmmword_26B545140;
  *(v188 + 32) = 84017408;
  *(v188 + 36) = 8;
  v850 = sub_26B470D98(v188);

  if (*(v185 + 16))
  {
    v839 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v839 = MEMORY[0x277D84FA0];
  }

  v189 = swift_allocObject();
  *(v189 + 16) = xmmword_26B545100;
  *(v189 + 32) = 3;
  v190 = sub_26B470D98(v189);

  v191 = swift_allocObject();
  *(v191 + 16) = xmmword_26B5450C0;
  *(v191 + 32) = *v928;
  *(v191 + 40) = 1;
  *(v191 + 48) = *v928;
  *(v191 + 56) = 3;
  *(v191 + 64) = *v928;
  *(v191 + 72) = 8;
  *(v191 + 80) = 0x403A000000000000;
  *(v191 + 88) = 10;
  v192 = swift_allocObject();
  *(v192 + 16) = xmmword_26B545100;
  *(v192 + 32) = 14;
  v193 = sub_26B470F10(v192);

  v936 = 4;
  v935 = 4;
  v194.value._object = 0x800000026B56C100;
  v194.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v194, 0);
  v931 = v933;
  v932 = v934;
  v195 = sub_26B4D43F4();
  v196 = sub_26B4CE5C8();
  v197 = sub_26B4D4400();
  *&v794 = sub_26B4D4408();
  *(&v794 + 1) = sub_26B4D4414();
  *&v745 = v190;
  *(&v745 + 1) = v191;
  *(&v696 + 1) = v839;
  *&v696 = v850;
  v198 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000014, 0x800000026B56C0E0, v186, MEMORY[0x277D84F90], v195, 0, 0, v937, v929 + 2240, v196 & 1, v197 & 1, v696, v745, v794, v193, &v936, &v935, 0, 0, &v931);
  v199 = swift_allocObject();
  *(v199 + 16) = xmmword_26B545100;
  v200 = swift_allocObject();
  *(v200 + 16) = xmmword_26B545120;
  *(v200 + 32) = 0xD000000000000042;
  *(v200 + 40) = 0x800000026B56C120;
  *(v200 + 48) = 0xD000000000000047;
  *(v200 + 56) = 0x800000026B56C170;
  *(v199 + 32) = v200;
  *(v199 + 40) = 0;
  v937[0] = 1;
  v201 = swift_allocObject();
  *(v201 + 16) = xmmword_26B545140;
  *(v201 + 32) = 84017408;
  *(v201 + 36) = 8;
  v896 = sub_26B470D98(v201);

  if (*(v198 + 16))
  {
    v851 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v851 = MEMORY[0x277D84FA0];
  }

  v202 = swift_allocObject();
  *(v202 + 16) = xmmword_26B545100;
  *(v202 + 32) = 3;
  v203 = sub_26B470D98(v202);

  v204 = swift_allocObject();
  *(v204 + 16) = xmmword_26B5450C0;
  *(v204 + 32) = *v928;
  *(v204 + 40) = 1;
  *(v204 + 48) = *v928;
  *(v204 + 56) = 3;
  *(v204 + 64) = *v928;
  *(v204 + 72) = 8;
  *(v204 + 80) = 0x403A000000000000;
  *(v204 + 88) = 10;
  v205 = swift_allocObject();
  *(v205 + 16) = xmmword_26B545100;
  *(v205 + 32) = 14;
  v206 = sub_26B470F10(v205);

  v936 = 4;
  v935 = 4;
  v207.value._object = 0x800000026B56C1E0;
  v207.value._countAndFlagsBits = 0xD000000000000015;
  Action.init(_:mac:)(v207, 0);
  v931 = v933;
  v932 = v934;
  v208 = sub_26B4D43F4();
  v209 = sub_26B4CE5C8();
  v210 = sub_26B4D4400();
  *&v795 = sub_26B4D4408();
  *(&v795 + 1) = sub_26B4D4414();
  *&v746 = v203;
  *(&v746 + 1) = v204;
  *(&v697 + 1) = v851;
  *&v697 = v896;
  v211 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B56C1C0, v199, MEMORY[0x277D84F90], v208, 0, 0, v937, v929 + 2424, v209 & 1, v210 & 1, v697, v746, v795, v206, &v936, &v935, 0, 0, &v931);
  v212 = swift_allocObject();
  *(v212 + 16) = xmmword_26B545100;
  v213 = swift_allocObject();
  *(v213 + 16) = xmmword_26B545100;
  *(v213 + 32) = 0xD000000000000020;
  *(v213 + 40) = 0x800000026B56C200;
  *(v212 + 32) = v213;
  *(v212 + 40) = 0;
  v937[0] = 0;
  v214 = swift_allocObject();
  *(v214 + 16) = xmmword_26B545140;
  *(v214 + 32) = 84017408;
  *(v214 + 36) = 8;
  v897 = sub_26B470D98(v214);

  if (*(v211 + 16))
  {
    v852 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v852 = MEMORY[0x277D84FA0];
  }

  v215 = swift_allocObject();
  *(v215 + 16) = xmmword_26B545100;
  *(v215 + 32) = 3;
  v216 = sub_26B470D98(v215);

  v217 = swift_allocObject();
  *(v217 + 16) = xmmword_26B5450C0;
  *(v217 + 32) = *v928;
  *(v217 + 40) = 1;
  *(v217 + 48) = *v928;
  *(v217 + 56) = 3;
  *(v217 + 64) = *v928;
  *(v217 + 72) = 8;
  *(v217 + 80) = 0x403A000000000000;
  *(v217 + 88) = 10;
  v218 = swift_allocObject();
  *(v218 + 16) = xmmword_26B545100;
  *(v218 + 32) = 14;
  v219 = sub_26B470F10(v218);

  v936 = 4;
  v935 = 4;
  v220.value._object = 0x800000026B56C250;
  v220.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v220, 0);
  v931 = v933;
  v932 = v934;
  v221 = sub_26B4D43F4();
  v222 = sub_26B4CE5C8();
  v223 = sub_26B4D4400();
  *&v796 = sub_26B4D4408();
  *(&v796 + 1) = sub_26B4D4414();
  *&v747 = v216;
  *(&v747 + 1) = v217;
  *(&v698 + 1) = v852;
  *&v698 = v897;
  v224 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000017, 0x800000026B56C230, v212, MEMORY[0x277D84F90], v221, 0, 0, v937, v929 + 2608, v222 & 1, v223 & 1, v698, v747, v796, v219, &v936, &v935, 0, 0, &v931);
  v225 = swift_allocObject();
  *(v225 + 16) = xmmword_26B545100;
  v226 = swift_allocObject();
  *(v226 + 16) = xmmword_26B545120;
  *(v226 + 32) = 0xD00000000000004ALL;
  *(v226 + 40) = 0x800000026B56C270;
  *(v226 + 48) = 0xD000000000000045;
  *(v226 + 56) = 0x800000026B56C2C0;
  *(v225 + 32) = v226;
  *(v225 + 40) = 0;
  v937[0] = 1;
  v227 = swift_allocObject();
  *(v227 + 16) = xmmword_26B545140;
  *(v227 + 32) = 84017408;
  *(v227 + 36) = 8;
  v853 = sub_26B470D98(v227);

  if (*(v224 + 16))
  {
    v840 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v840 = MEMORY[0x277D84FA0];
  }

  v228 = swift_allocObject();
  *(v228 + 16) = xmmword_26B545100;
  *(v228 + 32) = 3;
  v229 = sub_26B470D98(v228);

  v230 = swift_allocObject();
  *(v230 + 16) = xmmword_26B5450C0;
  *(v230 + 32) = *v928;
  *(v230 + 40) = 1;
  *(v230 + 48) = *v928;
  *(v230 + 56) = 3;
  *(v230 + 64) = *v928;
  *(v230 + 72) = 8;
  *(v230 + 80) = 0x403A000000000000;
  *(v230 + 88) = 10;
  v231 = swift_allocObject();
  *(v231 + 16) = xmmword_26B545100;
  *(v231 + 32) = 14;
  v232 = sub_26B470F10(v231);

  v936 = 4;
  v935 = 4;
  v233.value._countAndFlagsBits = 0xD000000000000018;
  v233.value._object = 0x800000026B56C330;
  Action.init(_:mac:)(v233, 0);
  v931 = v933;
  v932 = v934;
  v234 = sub_26B4D43F4();
  v235 = sub_26B4CE5C8();
  v236 = sub_26B4D4400();
  *&v797 = sub_26B4D4408();
  *(&v797 + 1) = sub_26B4D4414();
  *&v748 = v229;
  *(&v748 + 1) = v230;
  *(&v699 + 1) = v840;
  *&v699 = v853;
  v237 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001CLL, 0x800000026B56C310, v225, MEMORY[0x277D84F90], v234, 0, 0, v937, v929 + 2792, v235 & 1, v236 & 1, v699, v748, v797, v232, &v936, &v935, 0, 0, &v931);
  v238 = swift_allocObject();
  *(v238 + 16) = xmmword_26B545100;
  v239 = swift_allocObject();
  *(v239 + 16) = xmmword_26B545100;
  *(v239 + 32) = 0xD00000000000001CLL;
  *(v239 + 40) = 0x800000026B56C350;
  *(v238 + 32) = v239;
  *(v238 + 40) = 0;
  v937[0] = 0;
  v240 = swift_allocObject();
  *(v240 + 16) = xmmword_26B545140;
  *(v240 + 32) = 84017408;
  *(v240 + 36) = 8;
  v854 = sub_26B470D98(v240);

  if (*(v237 + 16))
  {
    v241 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v241 = MEMORY[0x277D84FA0];
  }

  v242 = swift_allocObject();
  *(v242 + 16) = xmmword_26B545100;
  *(v242 + 32) = 3;
  v243 = sub_26B470D98(v242);

  v244 = swift_allocObject();
  *(v244 + 16) = xmmword_26B5450C0;
  *(v244 + 32) = *v928;
  *(v244 + 40) = 1;
  *(v244 + 48) = *v928;
  *(v244 + 56) = 3;
  *(v244 + 64) = *v928;
  *(v244 + 72) = 8;
  *(v244 + 80) = 0x403A000000000000;
  *(v244 + 88) = 10;
  v245 = swift_allocObject();
  *(v245 + 16) = xmmword_26B545100;
  *(v245 + 32) = 14;
  v246 = sub_26B470F10(v245);

  v936 = 4;
  v935 = 4;
  v247.value._countAndFlagsBits = 0x5374786554747563;
  v247.value._object = 0xEF3A746E656D6765;
  Action.init(_:mac:)(v247, 0);
  v931 = v933;
  v932 = v934;
  v248 = sub_26B4D43F4();
  v249 = sub_26B4CE5C8();
  v250 = sub_26B4D4400();
  *&v798 = sub_26B4D4408();
  *(&v798 + 1) = sub_26B4D4414();
  *&v749 = v243;
  *(&v749 + 1) = v244;
  *(&v700 + 1) = v241;
  *&v700 = v854;
  v251 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000013, 0x800000026B56C370, v238, MEMORY[0x277D84F90], v248, 0, 0, v937, v929 + 2976, v249 & 1, v250 & 1, v700, v749, v798, v246, &v936, &v935, 0, 0, &v931);
  v252 = swift_allocObject();
  *(v252 + 16) = xmmword_26B545100;
  v253 = swift_allocObject();
  *(v253 + 16) = xmmword_26B545120;
  *(v253 + 32) = 0xD000000000000041;
  *(v253 + 40) = 0x800000026B56C390;
  *(v253 + 48) = 0xD000000000000046;
  *(v253 + 56) = 0x800000026B56C3E0;
  *(v252 + 32) = v253;
  *(v252 + 40) = 0;
  v937[0] = 1;
  v254 = swift_allocObject();
  *(v254 + 16) = xmmword_26B545140;
  *(v254 + 32) = 84017408;
  *(v254 + 36) = 8;
  v863 = sub_26B470D98(v254);

  if (*(v251 + 16))
  {
    v855 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v855 = MEMORY[0x277D84FA0];
  }

  v255 = swift_allocObject();
  *(v255 + 16) = xmmword_26B545100;
  *(v255 + 32) = 3;
  v256 = sub_26B470D98(v255);

  v257 = swift_allocObject();
  *(v257 + 16) = xmmword_26B5450C0;
  *(v257 + 32) = *v928;
  *(v257 + 40) = 1;
  *(v257 + 48) = *v928;
  *(v257 + 56) = 3;
  *(v257 + 64) = *v928;
  *(v257 + 72) = 8;
  *(v257 + 80) = 0x403A000000000000;
  *(v257 + 88) = 10;
  v258 = swift_allocObject();
  *(v258 + 16) = xmmword_26B545100;
  *(v258 + 32) = 14;
  v259 = sub_26B470F10(v258);

  v936 = 4;
  v935 = 4;
  v260.value._object = 0x800000026B56C450;
  v260.value._countAndFlagsBits = 0xD000000000000014;
  Action.init(_:mac:)(v260, 0);
  v931 = v933;
  v932 = v934;
  v261 = sub_26B4D43F4();
  v262 = sub_26B4CE5C8();
  v263 = sub_26B4D4400();
  *&v799 = sub_26B4D4408();
  *(&v799 + 1) = sub_26B4D4414();
  *&v750 = v256;
  *(&v750 + 1) = v257;
  *(&v701 + 1) = v855;
  *&v701 = v863;
  v264 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B56C430, v252, MEMORY[0x277D84F90], v261, 0, 0, v937, v929 + 3160, v262 & 1, v263 & 1, v701, v750, v799, v259, &v936, &v935, 0, 0, &v931);
  v265 = swift_allocObject();
  *(v265 + 16) = xmmword_26B545100;
  v266 = swift_allocObject();
  *(v266 + 16) = xmmword_26B545100;
  *(v266 + 32) = 0xD00000000000001FLL;
  *(v266 + 40) = 0x800000026B56C470;
  *(v265 + 32) = v266;
  *(v265 + 40) = 0;
  v937[0] = 0;
  v267 = swift_allocObject();
  *(v267 + 16) = xmmword_26B545140;
  *(v267 + 32) = 84017408;
  *(v267 + 36) = 8;
  v898 = sub_26B470D98(v267);

  if (*(v264 + 16))
  {
    v864 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v864 = MEMORY[0x277D84FA0];
  }

  v268 = swift_allocObject();
  *(v268 + 16) = xmmword_26B545100;
  *(v268 + 32) = 3;
  v269 = sub_26B470D98(v268);

  v270 = swift_allocObject();
  *(v270 + 16) = xmmword_26B5450C0;
  *(v270 + 32) = *v928;
  *(v270 + 40) = 1;
  *(v270 + 48) = *v928;
  *(v270 + 56) = 3;
  *(v270 + 64) = *v928;
  *(v270 + 72) = 8;
  *(v270 + 80) = 0x403A000000000000;
  *(v270 + 88) = 10;
  v271 = swift_allocObject();
  *(v271 + 16) = xmmword_26B545100;
  *(v271 + 32) = 14;
  v272 = sub_26B470F10(v271);

  v936 = 4;
  v935 = 4;
  v273.value._object = 0x800000026B56C4B0;
  v273.value._countAndFlagsBits = 0xD000000000000012;
  Action.init(_:mac:)(v273, 0);
  v931 = v933;
  v932 = v934;
  v274 = sub_26B4D43F4();
  v275 = sub_26B4CE5C8();
  v276 = sub_26B4D4400();
  *&v800 = sub_26B4D4408();
  *(&v800 + 1) = sub_26B4D4414();
  *&v751 = v269;
  *(&v751 + 1) = v270;
  *(&v702 + 1) = v864;
  *&v702 = v898;
  v277 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000016, 0x800000026B56C490, v265, MEMORY[0x277D84F90], v274, 0, 0, v937, v929 + 3344, v275 & 1, v276 & 1, v702, v751, v800, v272, &v936, &v935, 0, 0, &v931);
  v278 = swift_allocObject();
  *(v278 + 16) = xmmword_26B545100;
  v279 = swift_allocObject();
  *(v279 + 16) = xmmword_26B545100;
  *(v279 + 32) = 0xD000000000000042;
  *(v279 + 40) = 0x800000026B56C4D0;
  *(v278 + 32) = v279;
  *(v278 + 40) = 0;
  v937[0] = 1;
  v280 = swift_allocObject();
  *(v280 + 16) = xmmword_26B545140;
  *(v280 + 32) = 84017408;
  *(v280 + 36) = 8;
  v899 = sub_26B470D98(v280);

  if (*(v277 + 16))
  {
    v865 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v865 = MEMORY[0x277D84FA0];
  }

  v281 = swift_allocObject();
  *(v281 + 16) = xmmword_26B545100;
  *(v281 + 32) = 3;
  v282 = sub_26B470D98(v281);

  v283 = swift_allocObject();
  *(v283 + 16) = xmmword_26B5450C0;
  *(v283 + 32) = *v928;
  *(v283 + 40) = 1;
  *(v283 + 48) = *v928;
  *(v283 + 56) = 3;
  *(v283 + 64) = *v928;
  *(v283 + 72) = 8;
  *(v283 + 80) = 0x403A000000000000;
  *(v283 + 88) = 10;
  v284 = swift_allocObject();
  *(v284 + 16) = xmmword_26B545100;
  *(v284 + 32) = 14;
  v285 = sub_26B470F10(v284);

  v936 = 4;
  v935 = 4;
  v286.value._object = 0x800000026B56C540;
  v286.value._countAndFlagsBits = 0xD000000000000017;
  Action.init(_:mac:)(v286, 0);
  v931 = v933;
  v932 = v934;
  v287 = sub_26B4D43F4();
  v288 = sub_26B4CE5C8();
  v289 = sub_26B4D4400();
  *&v801 = sub_26B4D4408();
  *(&v801 + 1) = sub_26B4D4414();
  *&v752 = v282;
  *(&v752 + 1) = v283;
  *(&v703 + 1) = v865;
  *&v703 = v899;
  v290 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B56C520, v278, MEMORY[0x277D84F90], v287, 0, 0, v937, v929 + 3528, v288 & 1, v289 & 1, v703, v752, v801, v285, &v936, &v935, 0, 0, &v931);
  v291 = swift_allocObject();
  *(v291 + 16) = xmmword_26B545100;
  v292 = swift_allocObject();
  *(v292 + 16) = xmmword_26B545100;
  *(v292 + 32) = 0xD000000000000032;
  *(v292 + 40) = 0x800000026B56C560;
  *(v291 + 32) = v292;
  *(v291 + 40) = 0;
  v937[0] = 1;
  v293 = swift_allocObject();
  *(v293 + 16) = xmmword_26B545140;
  *(v293 + 32) = 84017408;
  *(v293 + 36) = 8;
  v900 = sub_26B470D98(v293);

  if (*(v290 + 16))
  {
    v866 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v866 = MEMORY[0x277D84FA0];
  }

  v294 = swift_allocObject();
  *(v294 + 16) = xmmword_26B545100;
  *(v294 + 32) = 3;
  v295 = sub_26B470D98(v294);

  v296 = swift_allocObject();
  *(v296 + 16) = xmmword_26B5450C0;
  *(v296 + 32) = *v928;
  *(v296 + 40) = 1;
  *(v296 + 48) = *v928;
  *(v296 + 56) = 3;
  *(v296 + 64) = *v928;
  *(v296 + 72) = 8;
  *(v296 + 80) = 0x403A000000000000;
  *(v296 + 88) = 10;
  v297 = swift_allocObject();
  *(v297 + 16) = xmmword_26B545100;
  *(v297 + 32) = 14;
  v298 = sub_26B470F10(v297);

  v936 = 4;
  v935 = 4;
  v299.value._countAndFlagsBits = 0xD00000000000001DLL;
  v299.value._object = 0x800000026B56C5D0;
  Action.init(_:mac:)(v299, 0);
  v931 = v933;
  v932 = v934;
  v300 = sub_26B4D43F4();
  v301 = sub_26B4CE5C8();
  v302 = sub_26B4D4400();
  *&v802 = sub_26B4D4408();
  *(&v802 + 1) = sub_26B4D4414();
  *&v753 = v295;
  *(&v753 + 1) = v296;
  *(&v704 + 1) = v866;
  *&v704 = v900;
  v303 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000021, 0x800000026B56C5A0, v291, MEMORY[0x277D84F90], v300, 0, 0, v937, v929 + 3712, v301 & 1, v302 & 1, v704, v753, v802, v298, &v936, &v935, 0, 0, &v931);
  v304 = swift_allocObject();
  *(v304 + 16) = xmmword_26B545100;
  v305 = swift_allocObject();
  *(v305 + 16) = xmmword_26B545100;
  *(v305 + 32) = 0xD00000000000003BLL;
  *(v305 + 40) = 0x800000026B56C5F0;
  *(v304 + 32) = v305;
  *(v304 + 40) = 0;
  v937[0] = 0;
  v306 = swift_allocObject();
  *(v306 + 16) = xmmword_26B545140;
  *(v306 + 32) = 84017408;
  *(v306 + 36) = 8;
  v901 = sub_26B470D98(v306);

  if (*(v303 + 16))
  {
    v867 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v867 = MEMORY[0x277D84FA0];
  }

  v307 = swift_allocObject();
  *(v307 + 16) = xmmword_26B545100;
  *(v307 + 32) = 3;
  v308 = sub_26B470D98(v307);

  v309 = swift_allocObject();
  *(v309 + 16) = xmmword_26B5450C0;
  *(v309 + 32) = *v928;
  *(v309 + 40) = 1;
  *(v309 + 48) = *v928;
  *(v309 + 56) = 3;
  *(v309 + 64) = *v928;
  *(v309 + 72) = 8;
  *(v309 + 80) = 0x403A000000000000;
  *(v309 + 88) = 10;
  v310 = swift_allocObject();
  *(v310 + 16) = xmmword_26B545100;
  *(v310 + 32) = 14;
  v311 = sub_26B470F10(v310);

  v936 = 4;
  v935 = 4;
  v312.value._countAndFlagsBits = 0xD00000000000001DLL;
  v312.value._object = 0x800000026B56C660;
  Action.init(_:mac:)(v312, 0);
  v931 = v933;
  v932 = v934;
  v313 = sub_26B4D43F4();
  v314 = sub_26B4CE5C8();
  v315 = sub_26B4D4400();
  *&v803 = sub_26B4D4408();
  *(&v803 + 1) = sub_26B4D4414();
  *&v754 = v308;
  *(&v754 + 1) = v309;
  *(&v705 + 1) = v867;
  *&v705 = v901;
  v316 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000021, 0x800000026B56C630, v304, MEMORY[0x277D84F90], v313, 0, 0, v937, v929 + 3896, v314 & 1, v315 & 1, v705, v754, v803, v311, &v936, &v935, 0, 0, &v931);
  v317 = swift_allocObject();
  *(v317 + 16) = xmmword_26B545100;
  v318 = swift_allocObject();
  *(v318 + 16) = xmmword_26B545100;
  *(v318 + 32) = 0xD00000000000003CLL;
  *(v318 + 40) = 0x800000026B56C680;
  *(v317 + 32) = v318;
  *(v317 + 40) = 0;
  v937[0] = 0;
  v319 = swift_allocObject();
  *(v319 + 16) = xmmword_26B545140;
  *(v319 + 32) = 84017408;
  *(v319 + 36) = 8;
  v902 = sub_26B470D98(v319);

  if (*(v316 + 16))
  {
    v868 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v868 = MEMORY[0x277D84FA0];
  }

  v320 = swift_allocObject();
  *(v320 + 16) = xmmword_26B545100;
  *(v320 + 32) = 3;
  v321 = sub_26B470D98(v320);

  v322 = swift_allocObject();
  *(v322 + 16) = xmmword_26B5450C0;
  *(v322 + 32) = *v928;
  *(v322 + 40) = 1;
  *(v322 + 48) = *v928;
  *(v322 + 56) = 3;
  *(v322 + 64) = *v928;
  *(v322 + 72) = 8;
  *(v322 + 80) = 0x403A000000000000;
  *(v322 + 88) = 10;
  v323 = swift_allocObject();
  *(v323 + 16) = xmmword_26B545100;
  *(v323 + 32) = 14;
  v324 = sub_26B470F10(v323);

  v936 = 4;
  v935 = 4;
  v325.value._countAndFlagsBits = 0xD00000000000001ELL;
  v325.value._object = 0x800000026B56C6F0;
  Action.init(_:mac:)(v325, 0);
  v931 = v933;
  v932 = v934;
  v326 = sub_26B4D43F4();
  v327 = sub_26B4CE5C8();
  v328 = sub_26B4D4400();
  *&v804 = sub_26B4D4408();
  *(&v804 + 1) = sub_26B4D4414();
  *&v755 = v321;
  *(&v755 + 1) = v322;
  *(&v706 + 1) = v868;
  *&v706 = v902;
  v329 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000022, 0x800000026B56C6C0, v317, MEMORY[0x277D84F90], v326, 0, 0, v937, v929 + 4080, v327 & 1, v328 & 1, v706, v755, v804, v324, &v936, &v935, 0, 0, &v931);
  v330 = swift_allocObject();
  *(v330 + 16) = xmmword_26B545100;
  v331 = swift_allocObject();
  *(v331 + 16) = xmmword_26B545100;
  *(v331 + 32) = 0xD000000000000022;
  *(v331 + 40) = 0x800000026B56C710;
  *(v330 + 32) = v331;
  *(v330 + 40) = 0;
  v937[0] = 0;
  v332 = swift_allocObject();
  *(v332 + 16) = xmmword_26B5450C0;
  *(v332 + 32) = 84017408;
  v903 = sub_26B470D98(v332);

  if (*(v329 + 16))
  {
    v869 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v869 = MEMORY[0x277D84FA0];
  }

  v333 = swift_allocObject();
  *(v333 + 16) = xmmword_26B545120;
  *(v333 + 32) = 2051;
  v334 = sub_26B470D98(v333);

  v335 = swift_allocObject();
  *(v335 + 16) = xmmword_26B5450D0;
  *(v335 + 32) = *v928;
  *(v335 + 40) = 1;
  *(v335 + 48) = *v928;
  *(v335 + 56) = 3;
  *(v335 + 64) = *v928;
  *(v335 + 72) = 8;
  v336 = swift_allocObject();
  *(v336 + 16) = xmmword_26B545100;
  *(v336 + 32) = 14;
  v337 = sub_26B470F10(v336);

  v936 = 4;
  v935 = 4;
  v338.value._object = 0x800000026B56C760;
  v338.value._countAndFlagsBits = 0xD000000000000015;
  Action.init(_:mac:)(v338, 0);
  v931 = v933;
  v932 = v934;
  v339 = sub_26B4D43F4();
  v340 = sub_26B4CE5C8();
  v341 = sub_26B4D4400();
  *&v805 = sub_26B4D4408();
  *(&v805 + 1) = sub_26B4D4414();
  *&v756 = v334;
  *(&v756 + 1) = v335;
  *(&v707 + 1) = v869;
  *&v707 = v903;
  v342 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B56C740, v330, MEMORY[0x277D84F90], v339, 0, 0, v937, v929 + 4264, v340 & 1, v341 & 1, v707, v756, v805, v337, &v936, &v935, 0, 0, &v931);
  v343 = swift_allocObject();
  *(v343 + 16) = xmmword_26B545100;
  v344 = swift_allocObject();
  *(v344 + 16) = xmmword_26B545120;
  *(v344 + 32) = 0xD00000000000004CLL;
  *(v344 + 40) = 0x800000026B56C780;
  *(v344 + 48) = 0xD000000000000047;
  *(v344 + 56) = 0x800000026B56C7D0;
  *(v343 + 32) = v344;
  *(v343 + 40) = 0;
  v937[0] = 1;
  v345 = swift_allocObject();
  *(v345 + 16) = xmmword_26B5450C0;
  *(v345 + 32) = 84017408;
  v904 = sub_26B470D98(v345);

  if (*(v342 + 16))
  {
    v870 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v870 = MEMORY[0x277D84FA0];
  }

  v346 = swift_allocObject();
  *(v346 + 16) = xmmword_26B545120;
  *(v346 + 32) = 2051;
  v347 = sub_26B470D98(v346);

  v348 = swift_allocObject();
  *(v348 + 16) = xmmword_26B5450D0;
  *(v348 + 32) = *v928;
  *(v348 + 40) = 1;
  *(v348 + 48) = *v928;
  *(v348 + 56) = 3;
  *(v348 + 64) = *v928;
  *(v348 + 72) = 8;
  v349 = swift_allocObject();
  *(v349 + 16) = xmmword_26B545100;
  *(v349 + 32) = 14;
  v350 = sub_26B470F10(v349);

  v936 = 4;
  v935 = 4;
  v351.value._object = 0x800000026B56C840;
  v351.value._countAndFlagsBits = 0xD00000000000001ALL;
  Action.init(_:mac:)(v351, 0);
  v931 = v933;
  v932 = v934;
  v352 = sub_26B4D43F4();
  v353 = sub_26B4CE5C8();
  v354 = sub_26B4D4400();
  *&v806 = sub_26B4D4408();
  *(&v806 + 1) = sub_26B4D4414();
  *&v757 = v347;
  *(&v757 + 1) = v348;
  *(&v708 + 1) = v870;
  *&v708 = v904;
  v355 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ELL, 0x800000026B56C820, v343, MEMORY[0x277D84F90], v352, 0, 0, v937, v929 + 4448, v353 & 1, v354 & 1, v708, v757, v806, v350, &v936, &v935, 0, 0, &v931);
  v356 = swift_allocObject();
  *(v356 + 16) = xmmword_26B545100;
  v357 = swift_allocObject();
  *(v357 + 16) = xmmword_26B545100;
  *(v357 + 32) = 0xD000000000000022;
  *(v357 + 40) = 0x800000026B56C860;
  *(v356 + 32) = v357;
  *(v356 + 40) = 0;
  v937[0] = 0;
  v358 = swift_allocObject();
  *(v358 + 16) = xmmword_26B545140;
  *(v358 + 32) = 84017408;
  *(v358 + 36) = 8;
  v905 = sub_26B470D98(v358);

  if (*(v355 + 16))
  {
    v871 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v871 = MEMORY[0x277D84FA0];
  }

  v359 = swift_allocObject();
  *(v359 + 16) = xmmword_26B545100;
  *(v359 + 32) = 3;
  v360 = sub_26B470D98(v359);

  v361 = swift_allocObject();
  *(v361 + 16) = xmmword_26B5450C0;
  *(v361 + 32) = *v928;
  *(v361 + 40) = 1;
  *(v361 + 48) = *v928;
  *(v361 + 56) = 3;
  *(v361 + 64) = *v928;
  *(v361 + 72) = 8;
  *(v361 + 80) = 0x403A000000000000;
  *(v361 + 88) = 10;
  v362 = swift_allocObject();
  *(v362 + 16) = xmmword_26B545100;
  *(v362 + 32) = 14;
  v363 = sub_26B470F10(v362);

  v936 = 4;
  v935 = 4;
  v364.value._object = 0x800000026B56C8B0;
  v364.value._countAndFlagsBits = 0xD000000000000015;
  Action.init(_:mac:)(v364, 0);
  v931 = v933;
  v932 = v934;
  v365 = sub_26B4D43F4();
  v366 = sub_26B4CE5C8();
  v367 = sub_26B4D4400();
  *&v807 = sub_26B4D4408();
  *(&v807 + 1) = sub_26B4D4414();
  *&v758 = v360;
  *(&v758 + 1) = v361;
  *(&v709 + 1) = v871;
  *&v709 = v905;
  v368 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B56C890, v356, MEMORY[0x277D84F90], v365, 0, 0, v937, v929 + 4632, v366 & 1, v367 & 1, v709, v758, v807, v363, &v936, &v935, 0, 0, &v931);
  v369 = swift_allocObject();
  *(v369 + 16) = xmmword_26B545100;
  v370 = swift_allocObject();
  *(v370 + 16) = xmmword_26B545120;
  *(v370 + 32) = 0xD00000000000004CLL;
  *(v370 + 40) = 0x800000026B56C8D0;
  *(v370 + 48) = 0xD000000000000047;
  *(v370 + 56) = 0x800000026B56C920;
  *(v369 + 32) = v370;
  *(v369 + 40) = 0;
  v937[0] = 1;
  v371 = swift_allocObject();
  *(v371 + 16) = xmmword_26B545140;
  *(v371 + 32) = 84017408;
  *(v371 + 36) = 8;
  v906 = sub_26B470D98(v371);

  if (*(v368 + 16))
  {
    v872 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v872 = MEMORY[0x277D84FA0];
  }

  v372 = swift_allocObject();
  *(v372 + 16) = xmmword_26B545100;
  *(v372 + 32) = 3;
  v373 = sub_26B470D98(v372);

  v374 = swift_allocObject();
  *(v374 + 16) = xmmword_26B5450C0;
  *(v374 + 32) = *v928;
  *(v374 + 40) = 1;
  *(v374 + 48) = *v928;
  *(v374 + 56) = 3;
  *(v374 + 64) = *v928;
  *(v374 + 72) = 8;
  *(v374 + 80) = 0x403A000000000000;
  *(v374 + 88) = 10;
  v375 = swift_allocObject();
  *(v375 + 16) = xmmword_26B545100;
  *(v375 + 32) = 14;
  v376 = sub_26B470F10(v375);

  v936 = 4;
  v935 = 4;
  v377.value._object = 0x800000026B56C990;
  v377.value._countAndFlagsBits = 0xD00000000000001ALL;
  Action.init(_:mac:)(v377, 0);
  v931 = v933;
  v932 = v934;
  v378 = sub_26B4D43F4();
  v379 = sub_26B4CE5C8();
  v380 = sub_26B4D4400();
  *&v808 = sub_26B4D4408();
  *(&v808 + 1) = sub_26B4D4414();
  *&v759 = v373;
  *(&v759 + 1) = v374;
  *(&v710 + 1) = v872;
  *&v710 = v906;
  v381 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ELL, 0x800000026B56C970, v369, MEMORY[0x277D84F90], v378, 0, 0, v937, v929 + 4816, v379 & 1, v380 & 1, v710, v759, v808, v376, &v936, &v935, 0, 0, &v931);
  v382 = swift_allocObject();
  *(v382 + 16) = xmmword_26B545100;
  v383 = swift_allocObject();
  *(v383 + 16) = xmmword_26B545100;
  *(v383 + 32) = 0xD00000000000002DLL;
  *(v383 + 40) = 0x800000026B56C9B0;
  *(v382 + 32) = v383;
  *(v382 + 40) = 0;
  v937[0] = 1;
  v384 = swift_allocObject();
  *(v384 + 16) = xmmword_26B545140;
  *(v384 + 32) = 84017408;
  *(v384 + 36) = 8;
  v907 = sub_26B470D98(v384);

  if (*(v381 + 16))
  {
    v873 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v873 = MEMORY[0x277D84FA0];
  }

  v385 = swift_allocObject();
  *(v385 + 16) = xmmword_26B545100;
  *(v385 + 32) = 3;
  v386 = sub_26B470D98(v385);

  v387 = swift_allocObject();
  *(v387 + 16) = xmmword_26B5450C0;
  *(v387 + 32) = *v928;
  *(v387 + 40) = 1;
  *(v387 + 48) = *v928;
  *(v387 + 56) = 3;
  *(v387 + 64) = *v928;
  *(v387 + 72) = 8;
  *(v387 + 80) = 0x403A000000000000;
  *(v387 + 88) = 10;
  v388 = swift_allocObject();
  *(v388 + 16) = xmmword_26B545100;
  *(v388 + 32) = 14;
  v389 = sub_26B470F10(v388);

  v936 = 4;
  v935 = 4;
  v390.value._object = 0x800000026B56CA00;
  v390.value._countAndFlagsBits = 0xD000000000000017;
  Action.init(_:mac:)(v390, 0);
  v931 = v933;
  v932 = v934;
  v391 = sub_26B4D43F4();
  v392 = sub_26B4CE5C8();
  v393 = sub_26B4D4400();
  *&v809 = sub_26B4D4408();
  *(&v809 + 1) = sub_26B4D4414();
  *&v760 = v386;
  *(&v760 + 1) = v387;
  *(&v711 + 1) = v873;
  *&v711 = v907;
  v394 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B56C9E0, v382, MEMORY[0x277D84F90], v391, 0, 0, v937, v929 + 5000, v392 & 1, v393 & 1, v711, v760, v809, v389, &v936, &v935, 0, 0, &v931);
  v395 = swift_allocObject();
  *(v395 + 16) = xmmword_26B545100;
  v396 = swift_allocObject();
  *(v396 + 16) = xmmword_26B545100;
  *(v396 + 32) = 0xD000000000000033;
  *(v396 + 40) = 0x800000026B56CA20;
  *(v395 + 32) = v396;
  *(v395 + 40) = 0;
  v937[0] = 1;
  v397 = swift_allocObject();
  *(v397 + 16) = xmmword_26B545140;
  *(v397 + 32) = 84017408;
  *(v397 + 36) = 8;
  v908 = sub_26B470D98(v397);

  if (*(v394 + 16))
  {
    v874 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v874 = MEMORY[0x277D84FA0];
  }

  v398 = swift_allocObject();
  *(v398 + 16) = xmmword_26B545100;
  *(v398 + 32) = 3;
  v399 = sub_26B470D98(v398);

  v400 = swift_allocObject();
  *(v400 + 16) = xmmword_26B5450C0;
  *(v400 + 32) = *v928;
  *(v400 + 40) = 1;
  *(v400 + 48) = *v928;
  *(v400 + 56) = 3;
  *(v400 + 64) = *v928;
  *(v400 + 72) = 8;
  *(v400 + 80) = 0x403A000000000000;
  *(v400 + 88) = 10;
  v401 = swift_allocObject();
  *(v401 + 16) = xmmword_26B545100;
  *(v401 + 32) = 14;
  v402 = sub_26B470F10(v401);

  v936 = 4;
  v935 = 4;
  v403.value._object = 0x800000026B56CA80;
  v403.value._countAndFlagsBits = 0xD000000000000019;
  Action.init(_:mac:)(v403, 0);
  v931 = v933;
  v932 = v934;
  v404 = sub_26B4D43F4();
  v405 = sub_26B4CE5C8();
  v406 = sub_26B4D4400();
  *&v810 = sub_26B4D4408();
  *(&v810 + 1) = sub_26B4D4414();
  *&v761 = v399;
  *(&v761 + 1) = v400;
  *(&v712 + 1) = v874;
  *&v712 = v908;
  v407 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001DLL, 0x800000026B56CA60, v395, MEMORY[0x277D84F90], v404, 0, 0, v937, v929 + 5184, v405 & 1, v406 & 1, v712, v761, v810, v402, &v936, &v935, 0, 0, &v931);
  v408 = swift_allocObject();
  *(v408 + 16) = xmmword_26B545100;
  v409 = swift_allocObject();
  *(v409 + 16) = xmmword_26B545100;
  *(v409 + 32) = 0xD000000000000032;
  *(v409 + 40) = 0x800000026B56CAA0;
  *(v408 + 32) = v409;
  *(v408 + 40) = 0;
  v937[0] = 1;
  v410 = swift_allocObject();
  *(v410 + 16) = xmmword_26B545140;
  *(v410 + 32) = 84017408;
  *(v410 + 36) = 8;
  v909 = sub_26B470D98(v410);

  if (*(v407 + 16))
  {
    v875 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v875 = MEMORY[0x277D84FA0];
  }

  v411 = swift_allocObject();
  *(v411 + 16) = xmmword_26B545100;
  *(v411 + 32) = 3;
  v412 = sub_26B470D98(v411);

  v413 = swift_allocObject();
  *(v413 + 16) = xmmword_26B5450C0;
  *(v413 + 32) = *v928;
  *(v413 + 40) = 1;
  *(v413 + 48) = *v928;
  *(v413 + 56) = 3;
  *(v413 + 64) = *v928;
  *(v413 + 72) = 8;
  *(v413 + 80) = 0x403A000000000000;
  *(v413 + 88) = 10;
  v414 = swift_allocObject();
  *(v414 + 16) = xmmword_26B545100;
  *(v414 + 32) = 14;
  v415 = sub_26B470F10(v414);

  v936 = 4;
  v935 = 4;
  v416.value._countAndFlagsBits = 0xD000000000000020;
  v416.value._object = 0x800000026B56CB10;
  Action.init(_:mac:)(v416, 0);
  v931 = v933;
  v932 = v934;
  v417 = sub_26B4D43F4();
  v418 = sub_26B4CE5C8();
  v419 = sub_26B4D4400();
  *&v811 = sub_26B4D4408();
  *(&v811 + 1) = sub_26B4D4414();
  *&v762 = v412;
  *(&v762 + 1) = v413;
  *(&v713 + 1) = v875;
  *&v713 = v909;
  v420 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000024, 0x800000026B56CAE0, v408, MEMORY[0x277D84F90], v417, 0, 0, v937, v929 + 5368, v418 & 1, v419 & 1, v713, v762, v811, v415, &v936, &v935, 0, 0, &v931);
  v421 = swift_allocObject();
  *(v421 + 16) = xmmword_26B545100;
  v422 = swift_allocObject();
  *(v422 + 16) = xmmword_26B545120;
  *(v422 + 32) = 0xD000000000000050;
  *(v422 + 40) = 0x800000026B56CB40;
  *(v422 + 48) = 0xD000000000000055;
  *(v422 + 56) = 0x800000026B56CBA0;
  *(v421 + 32) = v422;
  *(v421 + 40) = 0;
  v937[0] = 1;
  v423 = swift_allocObject();
  *(v423 + 16) = xmmword_26B545140;
  *(v423 + 32) = 84017408;
  *(v423 + 36) = 8;
  v910 = sub_26B470D98(v423);

  if (*(v420 + 16))
  {
    v876 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v876 = MEMORY[0x277D84FA0];
  }

  v424 = swift_allocObject();
  *(v424 + 16) = xmmword_26B545100;
  *(v424 + 32) = 3;
  v425 = sub_26B470D98(v424);

  v426 = swift_allocObject();
  *(v426 + 16) = xmmword_26B5450C0;
  *(v426 + 32) = *v928;
  *(v426 + 40) = 1;
  *(v426 + 48) = *v928;
  *(v426 + 56) = 3;
  *(v426 + 64) = *v928;
  *(v426 + 72) = 8;
  *(v426 + 80) = 0x403A000000000000;
  *(v426 + 88) = 10;
  v427 = swift_allocObject();
  *(v427 + 16) = xmmword_26B545100;
  *(v427 + 32) = 14;
  v428 = sub_26B470F10(v427);

  v936 = 4;
  v935 = 4;
  v429.value._countAndFlagsBits = 0xD000000000000025;
  v429.value._object = 0x800000026B56CC30;
  Action.init(_:mac:)(v429, 0);
  v931 = v933;
  v932 = v934;
  v430 = sub_26B4D43F4();
  v431 = sub_26B4CE5C8();
  v432 = sub_26B4D4400();
  *&v812 = sub_26B4D4408();
  *(&v812 + 1) = sub_26B4D4414();
  *&v763 = v425;
  *(&v763 + 1) = v426;
  *(&v714 + 1) = v876;
  *&v714 = v910;
  v433 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000029, 0x800000026B56CC00, v421, MEMORY[0x277D84F90], v430, 0, 0, v937, v929 + 5552, v431 & 1, v432 & 1, v714, v763, v812, v428, &v936, &v935, 0, 0, &v931);
  v434 = swift_allocObject();
  *(v434 + 16) = xmmword_26B545100;
  v435 = swift_allocObject();
  *(v435 + 16) = xmmword_26B545100;
  *(v435 + 32) = 0xD000000000000039;
  *(v435 + 40) = 0x800000026B56CC60;
  *(v434 + 32) = v435;
  *(v434 + 40) = 0;
  v937[0] = 1;
  v436 = swift_allocObject();
  *(v436 + 16) = xmmword_26B545140;
  *(v436 + 32) = 84017408;
  *(v436 + 36) = 8;
  v911 = sub_26B470D98(v436);

  if (*(v433 + 16))
  {
    v877 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v877 = MEMORY[0x277D84FA0];
  }

  v437 = swift_allocObject();
  *(v437 + 16) = xmmword_26B545100;
  *(v437 + 32) = 3;
  v438 = sub_26B470D98(v437);

  v439 = swift_allocObject();
  *(v439 + 16) = xmmword_26B5450C0;
  *(v439 + 32) = *v928;
  *(v439 + 40) = 1;
  *(v439 + 48) = *v928;
  *(v439 + 56) = 3;
  *(v439 + 64) = *v928;
  *(v439 + 72) = 8;
  *(v439 + 80) = 0x403A000000000000;
  *(v439 + 88) = 10;
  v440 = swift_allocObject();
  *(v440 + 16) = xmmword_26B545100;
  *(v440 + 32) = 14;
  v441 = sub_26B470F10(v440);

  v936 = 4;
  v935 = 4;
  v442.value._countAndFlagsBits = 0xD000000000000026;
  v442.value._object = 0x800000026B56CCD0;
  Action.init(_:mac:)(v442, 0);
  v931 = v933;
  v932 = v934;
  v443 = sub_26B4D43F4();
  v444 = sub_26B4CE5C8();
  v445 = sub_26B4D4400();
  *&v813 = sub_26B4D4408();
  *(&v813 + 1) = sub_26B4D4414();
  *&v764 = v438;
  *(&v764 + 1) = v439;
  *(&v715 + 1) = v877;
  *&v715 = v911;
  v446 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002ALL, 0x800000026B56CCA0, v434, MEMORY[0x277D84F90], v443, 0, 0, v937, v929 + 5736, v444 & 1, v445 & 1, v715, v764, v813, v441, &v936, &v935, 0, 0, &v931);
  v447 = swift_allocObject();
  *(v447 + 16) = xmmword_26B545100;
  v448 = swift_allocObject();
  *(v448 + 16) = xmmword_26B5450C0;
  *(v448 + 32) = 0xD000000000000057;
  *(v448 + 40) = 0x800000026B56CD00;
  *(v448 + 48) = 0xD00000000000005CLL;
  *(v448 + 56) = 0x800000026B56CD60;
  *(v448 + 64) = 0xD000000000000057;
  *(v448 + 72) = 0x800000026B56CDC0;
  *(v448 + 80) = 0xD00000000000005CLL;
  *(v448 + 88) = 0x800000026B56CE20;
  *(v447 + 32) = v448;
  *(v447 + 40) = 0;
  v937[0] = 1;
  v449 = swift_allocObject();
  *(v449 + 16) = xmmword_26B545140;
  *(v449 + 32) = 84017408;
  *(v449 + 36) = 8;
  v912 = sub_26B470D98(v449);

  if (*(v446 + 16))
  {
    v878 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v878 = MEMORY[0x277D84FA0];
  }

  v450 = swift_allocObject();
  *(v450 + 16) = xmmword_26B545100;
  *(v450 + 32) = 3;
  v451 = sub_26B470D98(v450);

  v452 = swift_allocObject();
  *(v452 + 16) = xmmword_26B5450C0;
  *(v452 + 32) = *v928;
  *(v452 + 40) = 1;
  *(v452 + 48) = *v928;
  *(v452 + 56) = 3;
  *(v452 + 64) = *v928;
  *(v452 + 72) = 8;
  *(v452 + 80) = 0x403A000000000000;
  *(v452 + 88) = 10;
  v453 = swift_allocObject();
  *(v453 + 16) = xmmword_26B545100;
  *(v453 + 32) = 14;
  v454 = sub_26B470F10(v453);

  v936 = 4;
  v935 = 4;
  v455.value._countAndFlagsBits = 0xD00000000000002BLL;
  v455.value._object = 0x800000026B56CEB0;
  Action.init(_:mac:)(v455, 0);
  v931 = v933;
  v932 = v934;
  v456 = sub_26B4D43F4();
  v457 = sub_26B4CE5C8();
  v458 = sub_26B4D4400();
  *&v814 = sub_26B4D4408();
  *(&v814 + 1) = sub_26B4D4414();
  *&v765 = v451;
  *(&v765 + 1) = v452;
  *(&v716 + 1) = v878;
  *&v716 = v912;
  v459 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002FLL, 0x800000026B56CE80, v447, MEMORY[0x277D84F90], v456, 0, 0, v937, v929 + 5920, v457 & 1, v458 & 1, v716, v765, v814, v454, &v936, &v935, 0, 0, &v931);
  v460 = swift_allocObject();
  *(v460 + 16) = xmmword_26B545100;
  v461 = swift_allocObject();
  *(v461 + 16) = xmmword_26B545100;
  *(v461 + 32) = 0xD000000000000033;
  *(v461 + 40) = 0x800000026B56CEE0;
  *(v460 + 32) = v461;
  *(v460 + 40) = 0;
  v937[0] = 1;
  v462 = swift_allocObject();
  *(v462 + 16) = xmmword_26B545140;
  *(v462 + 32) = 84017408;
  *(v462 + 36) = 8;
  v913 = sub_26B470D98(v462);

  if (*(v459 + 16))
  {
    v879 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v879 = MEMORY[0x277D84FA0];
  }

  v463 = swift_allocObject();
  *(v463 + 16) = xmmword_26B545100;
  *(v463 + 32) = 3;
  v464 = sub_26B470D98(v463);

  v465 = swift_allocObject();
  *(v465 + 16) = xmmword_26B5450C0;
  *(v465 + 32) = *v928;
  *(v465 + 40) = 1;
  *(v465 + 48) = *v928;
  *(v465 + 56) = 3;
  *(v465 + 64) = *v928;
  *(v465 + 72) = 8;
  *(v465 + 80) = 0x403A000000000000;
  *(v465 + 88) = 10;
  v466 = swift_allocObject();
  *(v466 + 16) = xmmword_26B545100;
  *(v466 + 32) = 14;
  v467 = sub_26B470F10(v466);

  v936 = 4;
  v935 = 4;
  v468.value._countAndFlagsBits = 0xD000000000000021;
  v468.value._object = 0x800000026B56CF50;
  Action.init(_:mac:)(v468, 0);
  v931 = v933;
  v932 = v934;
  v469 = sub_26B4D43F4();
  v470 = sub_26B4CE5C8();
  v471 = sub_26B4D4400();
  *&v815 = sub_26B4D4408();
  *(&v815 + 1) = sub_26B4D4414();
  *&v766 = v464;
  *(&v766 + 1) = v465;
  *(&v717 + 1) = v879;
  *&v717 = v913;
  v472 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000025, 0x800000026B56CF20, v460, MEMORY[0x277D84F90], v469, 0, 0, v937, v929 + 6104, v470 & 1, v471 & 1, v717, v766, v815, v467, &v936, &v935, 0, 0, &v931);
  v473 = swift_allocObject();
  *(v473 + 16) = xmmword_26B545100;
  v474 = swift_allocObject();
  *(v474 + 16) = xmmword_26B545120;
  *(v474 + 32) = 0xD000000000000051;
  *(v474 + 40) = 0x800000026B56CF80;
  *(v474 + 48) = 0xD000000000000056;
  *(v474 + 56) = 0x800000026B56CFE0;
  *(v473 + 32) = v474;
  *(v473 + 40) = 0;
  v937[0] = 1;
  v475 = swift_allocObject();
  *(v475 + 16) = xmmword_26B545140;
  *(v475 + 32) = 84017408;
  *(v475 + 36) = 8;
  v914 = sub_26B470D98(v475);

  if (*(v472 + 16))
  {
    v880 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v880 = MEMORY[0x277D84FA0];
  }

  v476 = swift_allocObject();
  *(v476 + 16) = xmmword_26B545100;
  *(v476 + 32) = 3;
  v477 = sub_26B470D98(v476);

  v478 = swift_allocObject();
  *(v478 + 16) = xmmword_26B5450C0;
  *(v478 + 32) = *v928;
  *(v478 + 40) = 1;
  *(v478 + 48) = *v928;
  *(v478 + 56) = 3;
  *(v478 + 64) = *v928;
  *(v478 + 72) = 8;
  *(v478 + 80) = 0x403A000000000000;
  *(v478 + 88) = 10;
  v479 = swift_allocObject();
  *(v479 + 16) = xmmword_26B545100;
  *(v479 + 32) = 14;
  v480 = sub_26B470F10(v479);

  v936 = 4;
  v935 = 4;
  v481.value._countAndFlagsBits = 0xD000000000000026;
  v481.value._object = 0x800000026B56D070;
  Action.init(_:mac:)(v481, 0);
  v931 = v933;
  v932 = v934;
  v482 = sub_26B4D43F4();
  v483 = sub_26B4CE5C8();
  v484 = sub_26B4D4400();
  *&v816 = sub_26B4D4408();
  *(&v816 + 1) = sub_26B4D4414();
  *&v767 = v477;
  *(&v767 + 1) = v478;
  *(&v718 + 1) = v880;
  *&v718 = v914;
  v485 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002ALL, 0x800000026B56D040, v473, MEMORY[0x277D84F90], v482, 0, 0, v937, v929 + 6288, v483 & 1, v484 & 1, v718, v767, v816, v480, &v936, &v935, 0, 0, &v931);
  v486 = swift_allocObject();
  *(v486 + 16) = xmmword_26B545100;
  v487 = swift_allocObject();
  *(v487 + 16) = xmmword_26B545100;
  *(v487 + 32) = 0xD00000000000002FLL;
  *(v487 + 40) = 0x800000026B56D0A0;
  *(v486 + 32) = v487;
  *(v486 + 40) = 0;
  v937[0] = 1;
  v488 = swift_allocObject();
  *(v488 + 16) = xmmword_26B545140;
  *(v488 + 32) = 84017408;
  *(v488 + 36) = 8;
  v915 = sub_26B470D98(v488);

  if (*(v485 + 16))
  {
    v881 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v881 = MEMORY[0x277D84FA0];
  }

  v489 = swift_allocObject();
  *(v489 + 16) = xmmword_26B545100;
  *(v489 + 32) = 3;
  v490 = sub_26B470D98(v489);

  v491 = swift_allocObject();
  *(v491 + 16) = xmmword_26B5450C0;
  *(v491 + 32) = *v928;
  *(v491 + 40) = 1;
  *(v491 + 48) = *v928;
  *(v491 + 56) = 3;
  *(v491 + 64) = *v928;
  *(v491 + 72) = 8;
  *(v491 + 80) = 0x403A000000000000;
  *(v491 + 88) = 10;
  v492 = swift_allocObject();
  *(v492 + 16) = xmmword_26B545100;
  *(v492 + 32) = 14;
  v493 = sub_26B470F10(v492);

  v936 = 4;
  v935 = 4;
  v494.value._countAndFlagsBits = 0xD000000000000020;
  v494.value._object = 0x800000026B56D100;
  Action.init(_:mac:)(v494, 0);
  v931 = v933;
  v932 = v934;
  v495 = sub_26B4D43F4();
  v496 = sub_26B4CE5C8();
  v497 = sub_26B4D4400();
  *&v817 = sub_26B4D4408();
  *(&v817 + 1) = sub_26B4D4414();
  *&v768 = v490;
  *(&v768 + 1) = v491;
  *(&v719 + 1) = v881;
  *&v719 = v915;
  v498 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000024, 0x800000026B56D0D0, v486, MEMORY[0x277D84F90], v495, 0, 0, v937, v929 + 6472, v496 & 1, v497 & 1, v719, v768, v817, v493, &v936, &v935, 0, 0, &v931);
  v499 = swift_allocObject();
  *(v499 + 16) = xmmword_26B545100;
  v500 = swift_allocObject();
  *(v500 + 16) = xmmword_26B545120;
  *(v500 + 32) = 0xD00000000000004DLL;
  *(v500 + 40) = 0x800000026B56D130;
  *(v500 + 48) = 0xD000000000000052;
  *(v500 + 56) = 0x800000026B56D180;
  *(v499 + 32) = v500;
  *(v499 + 40) = 0;
  v937[0] = 1;
  v501 = swift_allocObject();
  *(v501 + 16) = xmmword_26B545140;
  *(v501 + 32) = 84017408;
  *(v501 + 36) = 8;
  v916 = sub_26B470D98(v501);

  if (*(v498 + 16))
  {
    v882 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v882 = MEMORY[0x277D84FA0];
  }

  v502 = swift_allocObject();
  *(v502 + 16) = xmmword_26B545100;
  *(v502 + 32) = 3;
  v503 = sub_26B470D98(v502);

  v504 = swift_allocObject();
  *(v504 + 16) = xmmword_26B5450C0;
  *(v504 + 32) = *v928;
  *(v504 + 40) = 1;
  *(v504 + 48) = *v928;
  *(v504 + 56) = 3;
  *(v504 + 64) = *v928;
  *(v504 + 72) = 8;
  *(v504 + 80) = 0x403A000000000000;
  *(v504 + 88) = 10;
  v505 = swift_allocObject();
  *(v505 + 16) = xmmword_26B545100;
  *(v505 + 32) = 14;
  v506 = sub_26B470F10(v505);

  v936 = 4;
  v935 = 4;
  v507.value._countAndFlagsBits = 0xD000000000000025;
  v507.value._object = 0x800000026B56D210;
  Action.init(_:mac:)(v507, 0);
  v931 = v933;
  v932 = v934;
  v508 = sub_26B4D43F4();
  v509 = sub_26B4CE5C8();
  v510 = sub_26B4D4400();
  *&v818 = sub_26B4D4408();
  *(&v818 + 1) = sub_26B4D4414();
  *&v769 = v503;
  *(&v769 + 1) = v504;
  *(&v720 + 1) = v882;
  *&v720 = v916;
  v511 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000029, 0x800000026B56D1E0, v499, MEMORY[0x277D84F90], v508, 0, 0, v937, v929 + 6656, v509 & 1, v510 & 1, v720, v769, v818, v506, &v936, &v935, 0, 0, &v931);
  v512 = swift_allocObject();
  *(v512 + 16) = xmmword_26B545100;
  v513 = swift_allocObject();
  *(v513 + 16) = xmmword_26B545100;
  *(v513 + 32) = 0xD000000000000037;
  *(v513 + 40) = 0x800000026B56D240;
  *(v512 + 32) = v513;
  *(v512 + 40) = 0;
  v937[0] = 1;
  v514 = swift_allocObject();
  *(v514 + 16) = xmmword_26B545140;
  *(v514 + 32) = 84017408;
  *(v514 + 36) = 8;
  v917 = sub_26B470D98(v514);

  if (*(v511 + 16))
  {
    v883 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v883 = MEMORY[0x277D84FA0];
  }

  v515 = swift_allocObject();
  *(v515 + 16) = xmmword_26B545100;
  *(v515 + 32) = 3;
  v516 = sub_26B470D98(v515);

  v517 = swift_allocObject();
  *(v517 + 16) = xmmword_26B5450C0;
  v518 = *v928;
  *(v517 + 32) = *v928;
  *(v517 + 40) = 1;
  *(v517 + 48) = v518;
  *(v517 + 56) = 3;
  *(v517 + 64) = v518;
  *(v517 + 72) = 8;
  *(v517 + 80) = 0x403A000000000000;
  *(v517 + 88) = 10;
  v519 = swift_allocObject();
  *(v519 + 16) = xmmword_26B545100;
  *(v519 + 32) = 14;
  v520 = sub_26B470F10(v519);

  v936 = 4;
  v935 = 4;
  v521.value._countAndFlagsBits = 0xD000000000000026;
  v521.value._object = 0x800000026B56D2B0;
  Action.init(_:mac:)(v521, 0);
  v931 = v933;
  v932 = v934;
  v522 = sub_26B4D43F4();
  v523 = sub_26B4CE5C8();
  v524 = sub_26B4D4400();
  *&v819 = sub_26B4D4408();
  *(&v819 + 1) = sub_26B4D4414();
  *&v770 = v516;
  *(&v770 + 1) = v517;
  *(&v721 + 1) = v883;
  *&v721 = v917;
  v525 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002ALL, 0x800000026B56D280, v512, MEMORY[0x277D84F90], v522, 0, 0, v937, v929 + 6840, v523 & 1, v524 & 1, v721, v770, v819, v520, &v936, &v935, 0, 0, &v931);
  v526 = swift_allocObject();
  *(v526 + 16) = xmmword_26B545100;
  v527 = swift_allocObject();
  *(v527 + 16) = xmmword_26B545120;
  *(v527 + 32) = 0xD000000000000055;
  *(v527 + 40) = 0x800000026B56D2E0;
  *(v527 + 48) = 0xD00000000000005ALL;
  *(v527 + 56) = 0x800000026B56D340;
  *(v526 + 32) = v527;
  *(v526 + 40) = 0;
  v937[0] = 1;
  v528 = swift_allocObject();
  *(v528 + 16) = xmmword_26B545140;
  *(v528 + 32) = 84017408;
  *(v528 + 36) = 8;
  v918 = sub_26B470D98(v528);

  if (*(v525 + 16))
  {
    v884 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v884 = MEMORY[0x277D84FA0];
  }

  v529 = swift_allocObject();
  *(v529 + 16) = xmmword_26B545100;
  *(v529 + 32) = 3;
  v530 = sub_26B470D98(v529);

  v531 = swift_allocObject();
  *(v531 + 16) = xmmword_26B5450C0;
  v532 = *v928;
  *(v531 + 32) = *v928;
  *(v531 + 40) = 1;
  *(v531 + 48) = v532;
  *(v531 + 56) = 3;
  *(v531 + 64) = v532;
  *(v531 + 72) = 8;
  *(v531 + 80) = 0x403A000000000000;
  *(v531 + 88) = 10;
  v533 = swift_allocObject();
  *(v533 + 16) = xmmword_26B545100;
  *(v533 + 32) = 14;
  v534 = sub_26B470F10(v533);

  v936 = 4;
  v935 = 4;
  v535.value._countAndFlagsBits = 0xD00000000000002BLL;
  v535.value._object = 0x800000026B56D3D0;
  Action.init(_:mac:)(v535, 0);
  v931 = v933;
  v932 = v934;
  v536 = sub_26B4D43F4();
  v537 = sub_26B4CE5C8();
  v538 = sub_26B4D4400();
  *&v820 = sub_26B4D4408();
  *(&v820 + 1) = sub_26B4D4414();
  *&v771 = v530;
  *(&v771 + 1) = v531;
  *(&v722 + 1) = v884;
  *&v722 = v918;
  v539 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002FLL, 0x800000026B56D3A0, v526, MEMORY[0x277D84F90], v536, 0, 0, v937, v929 + 7024, v537 & 1, v538 & 1, v722, v771, v820, v534, &v936, &v935, 0, 0, &v931);
  v540 = swift_allocObject();
  *(v540 + 16) = xmmword_26B545100;
  v541 = swift_allocObject();
  *(v541 + 16) = xmmword_26B545100;
  *(v541 + 32) = 0xD000000000000031;
  *(v541 + 40) = 0x800000026B56D400;
  *(v540 + 32) = v541;
  *(v540 + 40) = 0;
  v937[0] = 1;
  v542 = swift_allocObject();
  *(v542 + 16) = xmmword_26B545140;
  *(v542 + 32) = 84017408;
  *(v542 + 36) = 8;
  v919 = sub_26B470D98(v542);

  if (*(v539 + 16))
  {
    v885 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v885 = MEMORY[0x277D84FA0];
  }

  v543 = swift_allocObject();
  *(v543 + 16) = xmmword_26B545100;
  *(v543 + 32) = 3;
  v544 = sub_26B470D98(v543);

  v545 = swift_allocObject();
  *(v545 + 16) = xmmword_26B5450C0;
  v546 = *v928;
  *(v545 + 32) = *v928;
  *(v545 + 40) = 1;
  *(v545 + 48) = v546;
  *(v545 + 56) = 3;
  *(v545 + 64) = v546;
  *(v545 + 72) = 8;
  *(v545 + 80) = 0x403A000000000000;
  *(v545 + 88) = 10;
  v547 = swift_allocObject();
  *(v547 + 16) = xmmword_26B545100;
  *(v547 + 32) = 14;
  v548 = sub_26B470F10(v547);

  v936 = 4;
  v935 = 4;
  v549.value._countAndFlagsBits = 0xD000000000000021;
  v549.value._object = 0x800000026B56D470;
  Action.init(_:mac:)(v549, 0);
  v931 = v933;
  v932 = v934;
  v550 = sub_26B4D43F4();
  v551 = sub_26B4CE5C8();
  v552 = sub_26B4D4400();
  *&v821 = sub_26B4D4408();
  *(&v821 + 1) = sub_26B4D4414();
  *&v772 = v544;
  *(&v772 + 1) = v545;
  *(&v723 + 1) = v885;
  *&v723 = v919;
  v553 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000025, 0x800000026B56D440, v540, MEMORY[0x277D84F90], v550, 0, 0, v937, v929 + 7208, v551 & 1, v552 & 1, v723, v772, v821, v548, &v936, &v935, 0, 0, &v931);
  v554 = swift_allocObject();
  *(v554 + 16) = xmmword_26B545100;
  v555 = swift_allocObject();
  *(v555 + 16) = xmmword_26B545120;
  *(v555 + 32) = 0xD00000000000004FLL;
  *(v555 + 40) = 0x800000026B56D4A0;
  *(v555 + 48) = 0xD000000000000054;
  *(v555 + 56) = 0x800000026B56D4F0;
  *(v554 + 32) = v555;
  *(v554 + 40) = 0;
  v937[0] = 1;
  v556 = swift_allocObject();
  *(v556 + 16) = xmmword_26B545140;
  *(v556 + 32) = 84017408;
  *(v556 + 36) = 8;
  v920 = sub_26B470D98(v556);

  if (*(v553 + 16))
  {
    v886 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v886 = MEMORY[0x277D84FA0];
  }

  v557 = swift_allocObject();
  *(v557 + 16) = xmmword_26B545100;
  *(v557 + 32) = 3;
  v558 = sub_26B470D98(v557);

  v559 = swift_allocObject();
  *(v559 + 16) = xmmword_26B5450C0;
  v560 = *v928;
  *(v559 + 32) = *v928;
  *(v559 + 40) = 1;
  *(v559 + 48) = v560;
  *(v559 + 56) = 3;
  *(v559 + 64) = v560;
  *(v559 + 72) = 8;
  *(v559 + 80) = 0x403A000000000000;
  *(v559 + 88) = 10;
  v561 = swift_allocObject();
  *(v561 + 16) = xmmword_26B545100;
  *(v561 + 32) = 14;
  v562 = sub_26B470F10(v561);

  v936 = 4;
  v935 = 4;
  v563.value._countAndFlagsBits = 0xD000000000000026;
  v563.value._object = 0x800000026B56D580;
  Action.init(_:mac:)(v563, 0);
  v931 = v933;
  v932 = v934;
  v564 = sub_26B4D43F4();
  v565 = sub_26B4CE5C8();
  v566 = sub_26B4D4400();
  *&v822 = sub_26B4D4408();
  *(&v822 + 1) = sub_26B4D4414();
  *&v773 = v558;
  *(&v773 + 1) = v559;
  *(&v724 + 1) = v886;
  *&v724 = v920;
  v567 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002ALL, 0x800000026B56D550, v554, MEMORY[0x277D84F90], v564, 0, 0, v937, v929 + 7392, v565 & 1, v566 & 1, v724, v773, v822, v562, &v936, &v935, 0, 0, &v931);
  v568 = swift_allocObject();
  *(v568 + 16) = xmmword_26B545100;
  v569 = swift_allocObject();
  *(v569 + 16) = xmmword_26B545100;
  *(v569 + 32) = 0xD000000000000035;
  *(v569 + 40) = 0x800000026B56D5B0;
  *(v568 + 32) = v569;
  *(v568 + 40) = 0;
  v937[0] = 1;
  v570 = swift_allocObject();
  *(v570 + 16) = xmmword_26B545140;
  *(v570 + 32) = 84017408;
  *(v570 + 36) = 8;
  v921 = sub_26B470D98(v570);

  if (*(v567 + 16))
  {
    v887 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v887 = MEMORY[0x277D84FA0];
  }

  v571 = swift_allocObject();
  *(v571 + 16) = xmmword_26B545100;
  *(v571 + 32) = 3;
  v572 = sub_26B470D98(v571);

  v573 = swift_allocObject();
  *(v573 + 16) = xmmword_26B5450C0;
  v574 = *v928;
  *(v573 + 32) = *v928;
  *(v573 + 40) = 1;
  *(v573 + 48) = v574;
  *(v573 + 56) = 3;
  *(v573 + 64) = v574;
  *(v573 + 72) = 8;
  *(v573 + 80) = 0x403A000000000000;
  *(v573 + 88) = 10;
  v575 = swift_allocObject();
  *(v575 + 16) = xmmword_26B545100;
  *(v575 + 32) = 14;
  v576 = sub_26B470F10(v575);

  v936 = 4;
  v935 = 4;
  v577.value._countAndFlagsBits = 0xD000000000000023;
  v577.value._object = 0x800000026B56D620;
  v578.value._countAndFlagsBits = 0xD000000000000022;
  v578.value._object = 0x800000026B56D650;
  Action.init(_:mac:)(v577, v578);
  v931 = v933;
  v932 = v934;
  v579 = sub_26B4D43F4();
  v580 = sub_26B4CE5C8();
  v581 = sub_26B4D4400();
  *&v823 = sub_26B4D4408();
  *(&v823 + 1) = sub_26B4D4414();
  *&v774 = v572;
  *(&v774 + 1) = v573;
  *(&v725 + 1) = v887;
  *&v725 = v921;
  v582 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000027, 0x800000026B56D5F0, v568, MEMORY[0x277D84F90], v579, 0, 0, v937, v929 + 7576, v580 & 1, v581 & 1, v725, v774, v823, v576, &v936, &v935, 0, 0, &v931);
  v583 = swift_allocObject();
  *(v583 + 16) = xmmword_26B545100;
  v584 = swift_allocObject();
  *(v584 + 16) = xmmword_26B545120;
  *(v584 + 32) = 0xD000000000000053;
  *(v584 + 40) = 0x800000026B56D680;
  *(v584 + 48) = 0xD000000000000058;
  *(v584 + 56) = 0x800000026B56D6E0;
  *(v583 + 32) = v584;
  *(v583 + 40) = 0;
  v937[0] = 1;
  v585 = swift_allocObject();
  *(v585 + 16) = xmmword_26B545140;
  *(v585 + 32) = 84017408;
  *(v585 + 36) = 8;
  v922 = sub_26B470D98(v585);

  if (*(v582 + 16))
  {
    v888 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v888 = MEMORY[0x277D84FA0];
  }

  v586 = swift_allocObject();
  *(v586 + 16) = xmmword_26B545100;
  *(v586 + 32) = 3;
  v587 = sub_26B470D98(v586);

  v588 = swift_allocObject();
  *(v588 + 16) = xmmword_26B5450C0;
  v589 = *v928;
  *(v588 + 32) = *v928;
  *(v588 + 40) = 1;
  *(v588 + 48) = v589;
  *(v588 + 56) = 3;
  *(v588 + 64) = v589;
  *(v588 + 72) = 8;
  *(v588 + 80) = 0x403A000000000000;
  *(v588 + 88) = 10;
  v590 = swift_allocObject();
  *(v590 + 16) = xmmword_26B545100;
  *(v590 + 32) = 14;
  v591 = sub_26B470F10(v590);

  v936 = 4;
  v935 = 4;
  v592.value._countAndFlagsBits = 0xD000000000000028;
  v592.value._object = 0x800000026B56D770;
  Action.init(_:mac:)(v592, 0);
  v931 = v933;
  v932 = v934;
  v593 = sub_26B4D43F4();
  v594 = sub_26B4CE5C8();
  v595 = sub_26B4D4400();
  *&v824 = sub_26B4D4408();
  *(&v824 + 1) = sub_26B4D4414();
  *&v775 = v587;
  *(&v775 + 1) = v588;
  *(&v726 + 1) = v888;
  *&v726 = v922;
  v596 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002CLL, 0x800000026B56D740, v583, MEMORY[0x277D84F90], v593, 0, 0, v937, v929 + 7760, v594 & 1, v595 & 1, v726, v775, v824, v591, &v936, &v935, 0, 0, &v931);
  v597 = swift_allocObject();
  *(v597 + 16) = xmmword_26B545100;
  v598 = swift_allocObject();
  *(v598 + 16) = xmmword_26B545100;
  *(v598 + 32) = 0xD00000000000001FLL;
  *(v598 + 40) = 0x800000026B56D7A0;
  *(v597 + 32) = v598;
  *(v597 + 40) = 0;
  v937[0] = 1;
  v599 = swift_allocObject();
  *(v599 + 16) = xmmword_26B545140;
  *(v599 + 32) = 84017408;
  *(v599 + 36) = 8;
  v923 = sub_26B470D98(v599);

  if (*(v596 + 16))
  {
    v889 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v889 = MEMORY[0x277D84FA0];
  }

  v600 = swift_allocObject();
  *(v600 + 16) = xmmword_26B545100;
  *(v600 + 32) = 3;
  v601 = sub_26B470D98(v600);

  v602 = swift_allocObject();
  *(v602 + 16) = xmmword_26B5450C0;
  v603 = *v928;
  *(v602 + 32) = *v928;
  *(v602 + 40) = 1;
  *(v602 + 48) = v603;
  *(v602 + 56) = 3;
  *(v602 + 64) = v603;
  *(v602 + 72) = 8;
  *(v602 + 80) = 0x403A000000000000;
  *(v602 + 88) = 10;
  v604 = swift_allocObject();
  *(v604 + 16) = xmmword_26B545100;
  *(v604 + 32) = 14;
  v605 = sub_26B470F10(v604);

  v936 = 4;
  v935 = 4;
  v606.value._object = 0x800000026B56D7E0;
  v606.value._countAndFlagsBits = 0xD000000000000012;
  Action.init(_:mac:)(v606, 0);
  v931 = v933;
  v932 = v934;
  v607 = sub_26B4D43F4();
  v608 = sub_26B4CE5C8();
  v609 = sub_26B4D4400();
  *&v825 = sub_26B4D4408();
  *(&v825 + 1) = sub_26B4D4414();
  *&v776 = v601;
  *(&v776 + 1) = v602;
  *(&v727 + 1) = v889;
  *&v727 = v923;
  v610 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000016, 0x800000026B56D7C0, v597, MEMORY[0x277D84F90], v607, 0, 0, v937, v929 + 7944, v608 & 1, v609 & 1, v727, v776, v825, v605, &v936, &v935, 0, 0, &v931);
  v611 = swift_allocObject();
  *(v611 + 16) = xmmword_26B545100;
  v612 = swift_allocObject();
  *(v612 + 16) = xmmword_26B545120;
  *(v612 + 32) = 0xD000000000000044;
  *(v612 + 40) = 0x800000026B56D800;
  *(v612 + 48) = 0xD000000000000049;
  *(v612 + 56) = 0x800000026B56D850;
  *(v611 + 32) = v612;
  *(v611 + 40) = 0;
  v937[0] = 1;
  v613 = swift_allocObject();
  *(v613 + 16) = xmmword_26B545140;
  *(v613 + 32) = 84017408;
  *(v613 + 36) = 8;
  v924 = sub_26B470D98(v613);

  if (*(v610 + 16))
  {
    v890 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v890 = MEMORY[0x277D84FA0];
  }

  v614 = swift_allocObject();
  *(v614 + 16) = xmmword_26B545100;
  *(v614 + 32) = 3;
  v615 = sub_26B470D98(v614);

  v616 = swift_allocObject();
  *(v616 + 16) = xmmword_26B5450C0;
  v617 = *v928;
  *(v616 + 32) = *v928;
  *(v616 + 40) = 1;
  *(v616 + 48) = v617;
  *(v616 + 56) = 3;
  *(v616 + 64) = v617;
  *(v616 + 72) = 8;
  *(v616 + 80) = 0x403A000000000000;
  *(v616 + 88) = 10;
  v618 = swift_allocObject();
  *(v618 + 16) = xmmword_26B545100;
  *(v618 + 32) = 14;
  v619 = sub_26B470F10(v618);

  v936 = 4;
  v935 = 4;
  v620.value._object = 0x800000026B56D8C0;
  v620.value._countAndFlagsBits = 0xD000000000000017;
  Action.init(_:mac:)(v620, 0);
  v931 = v933;
  v932 = v934;
  v621 = sub_26B4D43F4();
  v622 = sub_26B4CE5C8();
  v623 = sub_26B4D4400();
  *&v826 = sub_26B4D4408();
  *(&v826 + 1) = sub_26B4D4414();
  *&v777 = v615;
  *(&v777 + 1) = v616;
  *(&v728 + 1) = v890;
  *&v728 = v924;
  v624 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B56D8A0, v611, MEMORY[0x277D84F90], v621, 0, 0, v937, v929 + 8128, v622 & 1, v623 & 1, v728, v777, v826, v619, &v936, &v935, 0, 0, &v931);
  v625 = swift_allocObject();
  *(v625 + 16) = xmmword_26B545100;
  v626 = swift_allocObject();
  *(v626 + 16) = xmmword_26B545100;
  *(v626 + 32) = 0xD000000000000022;
  *(v626 + 40) = 0x800000026B56D8E0;
  *(v625 + 32) = v626;
  *(v625 + 40) = 0;
  v937[0] = 0;
  v627 = swift_allocObject();
  *(v627 + 16) = xmmword_26B5450C0;
  *(v627 + 32) = 84017408;
  v925 = sub_26B470D98(v627);

  if (*(v624 + 16))
  {
    v891 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v891 = MEMORY[0x277D84FA0];
  }

  v628 = swift_allocObject();
  *(v628 + 16) = xmmword_26B545120;
  *(v628 + 32) = 2051;
  v629 = sub_26B470D98(v628);

  v630 = swift_allocObject();
  *(v630 + 16) = xmmword_26B5450D0;
  v631 = *v928;
  *(v630 + 32) = *v928;
  *(v630 + 40) = 1;
  *(v630 + 48) = v631;
  *(v630 + 56) = 3;
  *(v630 + 64) = v631;
  *(v630 + 72) = 8;
  v632 = swift_allocObject();
  *(v632 + 16) = xmmword_26B545100;
  *(v632 + 32) = 14;
  v633 = sub_26B470F10(v632);

  v936 = 4;
  v935 = 4;
  v634.value._object = 0x800000026B56D930;
  v634.value._countAndFlagsBits = 0xD000000000000015;
  Action.init(_:mac:)(v634, 0);
  v931 = v933;
  v932 = v934;
  v635 = sub_26B4D43F4();
  v636 = sub_26B4CE5C8();
  v637 = sub_26B4D4400();
  *&v827 = sub_26B4D4408();
  *(&v827 + 1) = sub_26B4D4414();
  *&v778 = v629;
  *(&v778 + 1) = v630;
  *(&v729 + 1) = v891;
  *&v729 = v925;
  v638 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B56D910, v625, MEMORY[0x277D84F90], v635, 0, 0, v937, v929 + 8312, v636 & 1, v637 & 1, v729, v778, v827, v633, &v936, &v935, 0, 0, &v931);
  v639 = swift_allocObject();
  *(v639 + 16) = xmmword_26B545100;
  v640 = swift_allocObject();
  *(v640 + 16) = xmmword_26B545120;
  *(v640 + 32) = 0xD00000000000004CLL;
  *(v640 + 40) = 0x800000026B56D950;
  *(v640 + 48) = 0xD000000000000047;
  *(v640 + 56) = 0x800000026B56D9A0;
  *(v639 + 32) = v640;
  *(v639 + 40) = 0;
  v937[0] = 1;
  v641 = swift_allocObject();
  *(v641 + 16) = xmmword_26B5450C0;
  *(v641 + 32) = 84017408;
  v926 = sub_26B470D98(v641);

  if (*(v638 + 16))
  {
    v892 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v892 = MEMORY[0x277D84FA0];
  }

  v642 = swift_allocObject();
  *(v642 + 16) = xmmword_26B545120;
  *(v642 + 32) = 2051;
  v643 = sub_26B470D98(v642);

  v644 = swift_allocObject();
  *(v644 + 16) = xmmword_26B5450D0;
  v645 = *v928;
  *(v644 + 32) = *v928;
  *(v644 + 40) = 1;
  *(v644 + 48) = v645;
  *(v644 + 56) = 3;
  *(v644 + 64) = v645;
  *(v644 + 72) = 8;
  v646 = swift_allocObject();
  *(v646 + 16) = xmmword_26B545100;
  *(v646 + 32) = 14;
  v647 = sub_26B470F10(v646);

  v936 = 4;
  v935 = 4;
  v648.value._object = 0x800000026B56DA10;
  v648.value._countAndFlagsBits = 0xD00000000000001ALL;
  Action.init(_:mac:)(v648, 0);
  v931 = v933;
  v932 = v934;
  v649 = sub_26B4D43F4();
  v650 = sub_26B4CE5C8();
  v651 = sub_26B4D4400();
  *&v828 = sub_26B4D4408();
  *(&v828 + 1) = sub_26B4D4414();
  *&v779 = v643;
  *(&v779 + 1) = v644;
  *(&v730 + 1) = v892;
  *&v730 = v926;
  v652 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ELL, 0x800000026B56D9F0, v639, MEMORY[0x277D84F90], v649, 0, 0, v937, v929 + 8496, v650 & 1, v651 & 1, v730, v779, v828, v647, &v936, &v935, 0, 0, &v931);
  v653 = swift_allocObject();
  *(v653 + 16) = xmmword_26B545100;
  v654 = swift_allocObject();
  *(v654 + 16) = xmmword_26B545100;
  *(v654 + 32) = 0xD000000000000022;
  *(v654 + 40) = 0x800000026B56DA30;
  *(v653 + 32) = v654;
  *(v653 + 40) = 0;
  v937[0] = 0;
  v655 = swift_allocObject();
  *(v655 + 16) = xmmword_26B545140;
  *(v655 + 32) = 84017408;
  *(v655 + 36) = 8;
  v927 = sub_26B470D98(v655);

  if (*(v652 + 16))
  {
    v895 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v895 = MEMORY[0x277D84FA0];
  }

  v656 = swift_allocObject();
  *(v656 + 16) = xmmword_26B545100;
  *(v656 + 32) = 3;
  v657 = sub_26B470D98(v656);

  v658 = swift_allocObject();
  *(v658 + 16) = xmmword_26B5450C0;
  v659 = *v928;
  *(v658 + 32) = *v928;
  *(v658 + 40) = 1;
  *(v658 + 48) = v659;
  *(v658 + 56) = 3;
  *(v658 + 64) = v659;
  *(v658 + 72) = 8;
  *(v658 + 80) = 0x403A000000000000;
  *(v658 + 88) = 10;
  v660 = swift_allocObject();
  *(v660 + 16) = xmmword_26B545100;
  *(v660 + 32) = 14;
  v661 = sub_26B470F10(v660);

  v936 = 4;
  v935 = 4;
  v662.value._object = 0x800000026B56DA80;
  v662.value._countAndFlagsBits = 0xD000000000000015;
  Action.init(_:mac:)(v662, 0);
  v931 = v933;
  v932 = v934;
  v663 = sub_26B4D43F4();
  v664 = sub_26B4CE5C8();
  v665 = sub_26B4D4400();
  *&v829 = sub_26B4D4408();
  *(&v829 + 1) = sub_26B4D4414();
  *&v780 = v657;
  *(&v780 + 1) = v658;
  *(&v731 + 1) = v895;
  *&v731 = v927;
  v666 = MEMORY[0x277D84F90];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B56DA60, v653, MEMORY[0x277D84F90], v663, 0, 0, v937, v929 + 8680, v664 & 1, v665 & 1, v731, v780, v829, v661, &v936, &v935, 0, 0, &v931);
  v667 = swift_allocObject();
  *(v667 + 16) = xmmword_26B545100;
  v668 = swift_allocObject();
  *(v668 + 16) = xmmword_26B545120;
  *(v668 + 32) = 0xD00000000000004CLL;
  *(v668 + 40) = 0x800000026B56DAA0;
  *(v668 + 48) = 0xD000000000000047;
  *(v668 + 56) = 0x800000026B56DAF0;
  *(v667 + 32) = v668;
  *(v667 + 40) = 0;
  v937[0] = 1;
  v669 = swift_allocObject();
  *(v669 + 16) = xmmword_26B545140;
  *(v669 + 32) = 84017408;
  *(v669 + 36) = 8;
  v930 = sub_26B470D98(v669);

  if (*(v666 + 16))
  {
    v670 = sub_26B470D98(MEMORY[0x277D84F90]);
  }

  else
  {
    v670 = MEMORY[0x277D84FA0];
  }

  v671 = swift_allocObject();
  *(v671 + 16) = xmmword_26B545100;
  *(v671 + 32) = 3;
  v672 = sub_26B470D98(v671);

  v673 = swift_allocObject();
  *(v673 + 16) = xmmword_26B5450C0;
  v674 = *v928;
  *(v673 + 32) = *v928;
  *(v673 + 40) = 1;
  *(v673 + 48) = v674;
  *(v673 + 56) = 3;
  *(v673 + 64) = v674;
  *(v673 + 72) = 8;
  *(v673 + 80) = 0x403A000000000000;
  *(v673 + 88) = 10;
  v675 = swift_allocObject();
  *(v675 + 16) = xmmword_26B545100;
  *(v675 + 32) = 14;
  v676 = sub_26B470F10(v675);

  v936 = 4;
  v935 = 4;
  v677.value._object = 0x800000026B56DB60;
  v677.value._countAndFlagsBits = 0xD00000000000001ALL;
  Action.init(_:mac:)(v677, 0);
  v931 = v933;
  v932 = v934;
  v678 = sub_26B4D43F4();
  v679 = sub_26B4CE5C8();
  v680 = sub_26B4D4400();
  *&v830 = sub_26B4D4408();
  *(&v830 + 1) = sub_26B4D4414();
  *&v781 = v672;
  *(&v781 + 1) = v673;
  *(&v732 + 1) = v670;
  *&v732 = v930;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ELL, 0x800000026B56DB40, v667, MEMORY[0x277D84F90], v678, 0, 0, v937, v929 + 8864, v679 & 1, v680 & 1, v732, v781, v830, v676, &v936, &v935, 0, 0, &v931);
  v681 = sub_26B4D4400() & 1;
  v682._countAndFlagsBits = 0x6E6564646948;
  v682._object = 0xE600000000000000;
  v683._countAndFlagsBits = v832;
  v683._object = v831;
  VCCommandCollection.init(identifier:displayName:showInSettings:showCodingGuideInSettings:commands:)(&unk_280406E88, v682, v683, 0, v681, v929);
}