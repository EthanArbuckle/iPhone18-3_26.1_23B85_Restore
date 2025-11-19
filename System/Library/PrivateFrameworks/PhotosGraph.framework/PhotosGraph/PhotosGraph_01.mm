uint64_t sub_22F1143E0(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for PublicEvent();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  v32 = a1;
  if (v15 > v14 && (a3 & 1) != 0)
  {
LABEL_13:
    v16 = v9;
    goto LABEL_14;
  }

  if (a3)
  {
    v31 = v11;
    sub_22F111404(v14 + 1);
    goto LABEL_8;
  }

  if (v15 <= v14)
  {
    v31 = v11;
    sub_22F118748(v14 + 1);
LABEL_8:
    v17 = *v4;
    v18 = *(*v4 + 40);
    sub_22F742170();
    v19 = *a1;
    MEMORY[0x231901D70](*a1);
    v20 = sub_22F7421D0();
    v21 = -1 << *(v17 + 32);
    a2 = v20 & ~v21;
    if ((*(v17 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v22 = ~v21;
      v16 = v9;
      v23 = *(v9 + 72);
      while (1)
      {
        sub_22F12067C(*(v17 + 48) + v23 * a2, v13, type metadata accessor for PublicEvent);
        v24 = *v13;
        sub_22F1206E4(v13, type metadata accessor for PublicEvent);
        if (v24 == v19)
        {
          goto LABEL_17;
        }

        a2 = (a2 + 1) & v22;
        if (((*(v17 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    goto LABEL_13;
  }

  v16 = v9;
  sub_22F116720(type metadata accessor for PublicEvent, &unk_27DAB0580, &qword_22F770818, type metadata accessor for PublicEvent);
LABEL_14:
  v25 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_22F120744(v32, *(v25 + 48) + *(v16 + 72) * a2, type metadata accessor for PublicEvent);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_17:
  result = sub_22F7420B0();
  __break(1u);
  return result;
}

uint64_t sub_22F114668(uint64_t result, unint64_t a2, char a3)
{
  v28 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_22F111708(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_22F116964();
      goto LABEL_16;
    }

    sub_22F118A1C(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_22F742170();
  v9 = [*(v28 + 16) localIdentifier];
  sub_22F740E20();

  sub_22F740D60();

  result = sub_22F7421D0();
  v10 = -1 << *(v7 + 32);
  a2 = result & ~v10;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for ImportantEntitiesGraphInferenceMoment();
    do
    {
      v12 = *(*(*(v7 + 48) + 8 * a2) + 16);

      v13 = [v12 localIdentifier];
      v14 = sub_22F740E20();
      v16 = v15;

      v17 = [*(v28 + 16) localIdentifier];
      v18 = sub_22F740E20();
      v20 = v19;

      if (v14 == v18 && v16 == v20)
      {
        goto LABEL_19;
      }

      v22 = sub_22F742040();

      if (v22)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v23 = *v27;
  *(*v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v23 + 48) + 8 * a2) = v28;
  v24 = *(v23 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v23 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_22F7420B0();
  __break(1u);
  return result;
}

uint64_t sub_22F1148BC(void *a1, unint64_t a2, char a3)
{
  v7 = sub_22F73F690();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v57 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v54 - v13;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB05B0, &unk_22F771430);
  v15 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v17 = &v54 - v16;
  v65 = type metadata accessor for SongSource();
  v56 = *(v65 - 8);
  v18 = *(v56 + 64);
  MEMORY[0x28223BE20](v65);
  v20 = (&v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(*v3 + 16);
  v22 = *(*v3 + 24);
  v55 = v3;
  v66 = a1;
  if (v22 <= v21 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22F111998(v21 + 1);
    }

    else
    {
      if (v22 > v21)
      {
        sub_22F116720(type metadata accessor for SongSource, &unk_27DAB05C0, &qword_22F770820, type metadata accessor for SongSource);
        goto LABEL_34;
      }

      sub_22F118C88(v21 + 1);
    }

    v23 = *v3;
    v24 = *(*v3 + 40);
    sub_22F742170();
    SongSource.hash(into:)();
    v25 = sub_22F7421D0();
    v26 = v23 + 56;
    v63 = v23 + 56;
    v64 = v23;
    v27 = -1 << *(v23 + 32);
    a2 = v25 & ~v27;
    v28 = v58;
    if ((*(v26 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v62 = ~v27;
      v29 = a1[1];
      v67 = *a1;
      v30 = v8;
      v31 = (v8 + 48);
      v54 = (v30 + 32);
      v32 = *(v56 + 72);
      v60 = (v30 + 8);
      v61 = v32;
      do
      {
        sub_22F12067C(*(v64 + 48) + v61 * a2, v20, type metadata accessor for SongSource);
        v33 = *v20 == v67 && v20[1] == v29;
        if (!v33 && (sub_22F742040() & 1) == 0)
        {
          goto LABEL_12;
        }

        v34 = *(v65 + 28);
        v35 = *(v28 + 48);
        sub_22F12057C(v20 + v34, v17);
        sub_22F12057C(v66 + v34, &v17[v35]);
        v36 = *v31;
        if ((*v31)(v17, 1, v7) == 1)
        {
          if (v36(&v17[v35], 1, v7) != 1)
          {
            goto LABEL_11;
          }

          sub_22F120ADC(v17, &qword_27DAB0920, &qword_22F770B20);
        }

        else
        {
          sub_22F12057C(v17, v14);
          if (v36(&v17[v35], 1, v7) == 1)
          {
            (*v60)(v14, v7);
LABEL_11:
            sub_22F120ADC(v17, &unk_27DAB05B0, &unk_22F771430);
LABEL_12:
            sub_22F1206E4(v20, type metadata accessor for SongSource);
            goto LABEL_13;
          }

          v37 = v14;
          v38 = v57;
          (*v54)(v57, &v17[v35], v7);
          sub_22F1205EC(&qword_2810AC700, MEMORY[0x277CC9578]);
          v59 = sub_22F740DE0();
          v39 = *v60;
          v40 = v38;
          v14 = v37;
          v28 = v58;
          (*v60)(v40, v7);
          v39(v14, v7);
          sub_22F120ADC(v17, &qword_27DAB0920, &qword_22F770B20);
          if ((v59 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v41 = *(v65 + 32);
        v42 = (v20 + v41);
        v43 = *(v20 + v41 + 8);
        v44 = (v66 + v41);
        v45 = v44[1];
        if (v43)
        {
          if (!v45)
          {
            goto LABEL_12;
          }

          if (*v42 == *v44 && v43 == v45)
          {
            goto LABEL_37;
          }

          v47 = v44[1];
          v48 = sub_22F742040();
          sub_22F1206E4(v20, type metadata accessor for SongSource);
          if (v48)
          {
            goto LABEL_38;
          }
        }

        else
        {
          sub_22F1206E4(v20, type metadata accessor for SongSource);
          if (!v45)
          {
            goto LABEL_38;
          }
        }

LABEL_13:
        a2 = (a2 + 1) & v62;
      }

      while (((*(v63 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_34:
  v49 = *v55;
  *(*v55 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_22F120744(v66, *(v49 + 48) + *(v56 + 72) * a2, type metadata accessor for SongSource);
  v51 = *(v49 + 16);
  v52 = __OFADD__(v51, 1);
  v53 = v51 + 1;
  if (v52)
  {
    __break(1u);
LABEL_37:
    sub_22F1206E4(v20, type metadata accessor for SongSource);
LABEL_38:
    result = sub_22F7420B0();
    __break(1u);
  }

  else
  {
    *(v49 + 16) = v53;
  }

  return result;
}

uint64_t sub_22F114F24(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22F111F38(v7 + 1, &qword_27DAB0648, &qword_22F770860, sub_22F2B493C);
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_22F116AF0(&qword_27DAB0648, &qword_22F770860);
        goto LABEL_91;
      }

      sub_22F1191F8(v7 + 1, &qword_27DAB0648, &qword_22F770860, sub_22F2B493C);
    }

    v9 = *v3;
    v10 = *(*v3 + 40);
    sub_22F742170();
    sub_22F2B493C(v6);
    sub_22F740D60();

    result = sub_22F7421D0();
    v11 = -1 << *(v9 + 32);
    a2 = result & ~v11;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      while (2)
      {
        v13 = 0xE500000000000000;
        v14 = 0x7465737341;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v14 = 0x6C6F437465737341;
            v13 = 0xEF6E6F697463656CLL;
            break;
          case 2:
            v13 = 0xE600000000000000;
            v14 = 0x6E6F73726550;
            break;
          case 3:
            v13 = 0xE300000000000000;
            v14 = 7628112;
            break;
          case 4:
            v14 = 0x6D75626C41;
            break;
          case 5:
            v14 = 0x656E656353;
            break;
          case 6:
            v13 = 0xE700000000000000;
            v14 = 0x687361486F6547;
            break;
          case 7:
            v14 = 0x73756C4365746144;
            v13 = 0xEB00000000726574;
            break;
          case 8:
            v13 = 0xE400000000000000;
            v14 = 1885958740;
            break;
          case 9:
            v13 = 0xE900000000000073;
            v14 = 0x657469726F766146;
            break;
          case 0xA:
            v14 = 0x746163696C707544;
            v13 = 0xEA00000000007365;
            break;
          case 0xB:
            v13 = 0xE400000000000000;
            v14 = 1701670728;
            break;
          case 0xC:
            v13 = 0xE300000000000000;
            v14 = 7954756;
            break;
          case 0xD:
            v13 = 0xE700000000000000;
            v14 = 0x7961646B656557;
            break;
          case 0xE:
            v14 = 0x68746E6F4DLL;
            break;
          case 0xF:
            v13 = 0xE700000000000000;
            v14 = 0x72657472617551;
            break;
          case 0x10:
            v13 = 0xE400000000000000;
            v14 = 1918985561;
            break;
          case 0x11:
            v13 = 0xE400000000000000;
            v14 = 2037672259;
            break;
          case 0x12:
            v14 = 0x6574617453;
            break;
          case 0x13:
            v13 = 0xE700000000000000;
            v14 = 0x7972746E756F43;
            break;
          case 0x14:
            v14 = 0x764563696C627550;
            v13 = 0xEB00000000746E65;
            break;
          case 0x15:
            v14 = 0xD000000000000013;
            v13 = 0x800000022F78E7B0;
            break;
          case 0x16:
            v14 = 0xD000000000000016;
            v13 = 0x800000022F78E7D0;
            break;
          case 0x17:
            v14 = 0x656D726F66726550;
            v13 = 0xE900000000000072;
            break;
          case 0x18:
            v13 = 0xE800000000000000;
            v14 = 0x7373656E69737542;
            break;
          case 0x19:
            v14 = 0xD000000000000010;
            v13 = 0x800000022F78E800;
            break;
          default:
            break;
        }

        v15 = 0xE500000000000000;
        v16 = 0x7465737341;
        switch(v6)
        {
          case 1:
            v15 = 0xEF6E6F697463656CLL;
            if (v14 == 0x6C6F437465737341)
            {
              goto LABEL_85;
            }

            goto LABEL_86;
          case 2:
            v15 = 0xE600000000000000;
            if (v14 != 0x6E6F73726550)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 3:
            v15 = 0xE300000000000000;
            if (v14 != 7628112)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 4:
            if (v14 != 0x6D75626C41)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 5:
            v19 = 1852138323;
            goto LABEL_75;
          case 6:
            v15 = 0xE700000000000000;
            if (v14 != 0x687361486F6547)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 7:
            v17 = 0x73756C4365746144;
            v18 = 7497076;
            goto LABEL_65;
          case 8:
            v15 = 0xE400000000000000;
            if (v14 != 1885958740)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 9:
            v15 = 0xE900000000000073;
            if (v14 != 0x657469726F766146)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 10:
            v15 = 0xEA00000000007365;
            if (v14 != 0x746163696C707544)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 11:
            v15 = 0xE400000000000000;
            if (v14 != 1701670728)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 12:
            v15 = 0xE300000000000000;
            if (v14 != 7954756)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 13:
            v15 = 0xE700000000000000;
            if (v14 != 0x7961646B656557)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 14:
            if (v14 != 0x68746E6F4DLL)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 15:
            v15 = 0xE700000000000000;
            if (v14 != 0x72657472617551)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 16:
            v15 = 0xE400000000000000;
            if (v14 != 1918985561)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 17:
            v15 = 0xE400000000000000;
            if (v14 != 2037672259)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 18:
            v19 = 1952543827;
LABEL_75:
            if (v14 != (v19 & 0xFFFF0000FFFFFFFFLL | 0x6500000000))
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 19:
            v15 = 0xE700000000000000;
            v16 = 0x7972746E756F43;
            goto LABEL_84;
          case 20:
            v17 = 0x764563696C627550;
            v18 = 7630437;
LABEL_65:
            v15 = v18 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v14 != v17)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 21:
            v15 = 0x800000022F78E7B0;
            if (v14 != 0xD000000000000013)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 22:
            v15 = 0x800000022F78E7D0;
            if (v14 != 0xD000000000000016)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 23:
            v15 = 0xE900000000000072;
            if (v14 != 0x656D726F66726550)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 24:
            v15 = 0xE800000000000000;
            if (v14 != 0x7373656E69737542)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 25:
            v15 = 0x800000022F78E800;
            if (v14 != 0xD000000000000010)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          default:
LABEL_84:
            if (v14 != v16)
            {
              goto LABEL_86;
            }

LABEL_85:
            if (v13 == v15)
            {
              goto LABEL_94;
            }

LABEL_86:
            v20 = sub_22F742040();

            if (v20)
            {
              goto LABEL_95;
            }

            a2 = (a2 + 1) & v12;
            if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_91:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + a2) = v6;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
LABEL_94:

LABEL_95:
    result = sub_22F7420B0();
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v24;
  }

  return result;
}

uint64_t sub_22F1156B4(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22F111F38(v6 + 1, &unk_27DAB0650, &qword_22F770868, sub_22F2897A0);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_22F116AF0(&unk_27DAB0650, &qword_22F770868);
        goto LABEL_104;
      }

      sub_22F1191F8(v6 + 1, &unk_27DAB0650, &qword_22F770868, sub_22F2897A0);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    sub_22F742170();
    sub_22F2897A0(v5);
    sub_22F740D60();

    result = sub_22F7421D0();
    v10 = -1 << *(v8 + 32);
    a2 = result & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      while (2)
      {
        v12 = 0xED0000657461645FLL;
        v13 = 0x6E6F5F6E656B6174;
        switch(*(*(v8 + 48) + a2))
        {
          case 1:
            v13 = 0x6E6F5F6E656B6174;
            v12 = 0xED0000706972745FLL;
            break;
          case 2:
            v13 = 0x5F6F65675F736168;
            v12 = 0xEC00000068736168;
            break;
          case 3:
            v13 = 0xD000000000000011;
            v12 = 0x800000022F78E520;
            break;
          case 4:
            v13 = 0xD000000000000010;
            v12 = 0x800000022F78E540;
            break;
          case 5:
            v13 = 0x736E6961746E6F63;
            v12 = 0xEF6E6F737265705FLL;
            break;
          case 6:
            v13 = 0x736E6961746E6F63;
            v12 = 0xEC0000007465705FLL;
            break;
          case 7:
            v13 = 0x736E6961746E6F63;
            goto LABEL_34;
          case 8:
            v13 = 0x666F5F646C696863;
LABEL_34:
            v14 = 0x656E6563735FLL;
            goto LABEL_42;
          case 9:
            v13 = 0x6F7661665F736177;
            v12 = 0xED00006465746972;
            break;
          case 0xA:
            v13 = 0xD00000000000001ALL;
            v12 = 0x800000022F78E5A0;
            break;
          case 0xB:
            v13 = 0x74615F6E656B6174;
            v12 = 0xED0000656D6F685FLL;
            break;
          case 0xC:
            v13 = 0xD000000000000015;
            v12 = 0x800000022F78E5D0;
            break;
          case 0xD:
            v13 = 0x61635F666F5F7369;
            v14 = 0x79726F676574;
            goto LABEL_42;
          case 0xE:
            v13 = 0xD000000000000011;
            v12 = 0x800000022F78E600;
            break;
          case 0xF:
            v13 = 0x656D726F66726570;
            v12 = 0xEC00000079625F64;
            break;
          case 0x10:
            v12 = 0xE700000000000000;
            v13 = 0x74615F646C6568;
            break;
          case 0x11:
            v13 = 0xD000000000000010;
            v12 = 0x800000022F78E630;
            break;
          case 0x12:
            v12 = 0xE300000000000000;
            v13 = 7954788;
            break;
          case 0x13:
            v12 = 0xE700000000000000;
            v13 = 0x7961646B656577;
            break;
          case 0x14:
            v12 = 0xE500000000000000;
            v13 = 0x68746E6F6DLL;
            break;
          case 0x15:
            v12 = 0xE700000000000000;
            v13 = 0x72657472617571;
            break;
          case 0x16:
            v12 = 0xE400000000000000;
            v13 = 1918985593;
            break;
          case 0x17:
            v12 = 0xE800000000000000;
            v13 = 0x65746174735F6E69;
            break;
          case 0x18:
            v13 = 0x746E756F635F6E69;
            v12 = 0xEA00000000007972;
            break;
          case 0x19:
            v13 = 0x6E695F6E656B6174;
            v12 = 0xED0000797469635FLL;
            break;
          case 0x1A:
            v13 = 0x6E695F6E656B6174;
            v14 = 0x65746174735FLL;
LABEL_42:
            v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            break;
          case 0x1B:
            v13 = 0xD000000000000010;
            v12 = 0x800000022F78E690;
            break;
          case 0x1C:
            v13 = 0xD000000000000012;
            v12 = 0x800000022F78E6B0;
            break;
          case 0x1D:
            v13 = 0xD000000000000011;
            v12 = 0x800000022F78E6D0;
            break;
          case 0x1E:
            v13 = 0xD000000000000017;
            v12 = 0x800000022F78E6F0;
            break;
          default:
            break;
        }

        v15 = 0x6E6F5F6E656B6174;
        v16 = 0xED0000657461645FLL;
        switch(v5)
        {
          case 1:
            v17 = 0x6E6F5F6E656B6174;
            v18 = 0x706972745FLL;
            goto LABEL_58;
          case 2:
            v19 = 0x5F6F65675F736168;
            v20 = 1752392040;
            goto LABEL_77;
          case 3:
            v16 = 0x800000022F78E520;
            if (v13 != 0xD000000000000011)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 4:
            v16 = 0x800000022F78E540;
            if (v13 != 0xD000000000000010)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 5:
            v16 = 0xEF6E6F737265705FLL;
            if (v13 != 0x736E6961746E6F63)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 6:
            v19 = 0x736E6961746E6F63;
            v20 = 1952804959;
            goto LABEL_77;
          case 7:
            v21 = 0x736E6961746E6F63;
            goto LABEL_84;
          case 8:
            v21 = 0x666F5F646C696863;
LABEL_84:
            v22 = 0x656E6563735FLL;
            goto LABEL_102;
          case 9:
            v17 = 0x6F7661665F736177;
            v18 = 0x6465746972;
            goto LABEL_58;
          case 10:
            v16 = 0x800000022F78E5A0;
            if (v13 != 0xD00000000000001ALL)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 11:
            v17 = 0x74615F6E656B6174;
            v18 = 0x656D6F685FLL;
            goto LABEL_58;
          case 12:
            v16 = 0x800000022F78E5D0;
            if (v13 != 0xD000000000000015)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 13:
            v21 = 0x61635F666F5F7369;
            v22 = 0x79726F676574;
            goto LABEL_102;
          case 14:
            v16 = 0x800000022F78E600;
            if (v13 != 0xD000000000000011)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 15:
            v19 = 0x656D726F66726570;
            v20 = 2036490084;
LABEL_77:
            v16 = v20 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v13 != v19)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 16:
            v16 = 0xE700000000000000;
            if (v13 != 0x74615F646C6568)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 17:
            v16 = 0x800000022F78E630;
            if (v13 != 0xD000000000000010)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 18:
            v16 = 0xE300000000000000;
            if (v13 != 7954788)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 19:
            v16 = 0xE700000000000000;
            if (v13 != 0x7961646B656577)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 20:
            v16 = 0xE500000000000000;
            if (v13 != 0x68746E6F6DLL)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 21:
            v16 = 0xE700000000000000;
            if (v13 != 0x72657472617571)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 22:
            v16 = 0xE400000000000000;
            if (v13 != 1918985593)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 23:
            v16 = 0xE800000000000000;
            if (v13 != 0x65746174735F6E69)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 24:
            v16 = 0xEA00000000007972;
            if (v13 != 0x746E756F635F6E69)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 25:
            v17 = 0x6E695F6E656B6174;
            v18 = 0x797469635FLL;
LABEL_58:
            v16 = v18 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            if (v13 != v17)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 26:
            v21 = 0x6E695F6E656B6174;
            v22 = 0x65746174735FLL;
LABEL_102:
            v16 = v22 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            if (v13 != v21)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 27:
            v16 = 0x800000022F78E690;
            if (v13 != 0xD000000000000010)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 28:
            v16 = 0x800000022F78E6B0;
            if (v13 != 0xD000000000000012)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 29:
            v15 = 0xD000000000000011;
            v16 = 0x800000022F78E6D0;
            goto LABEL_96;
          case 30:
            v16 = 0x800000022F78E6F0;
            if (v13 != 0xD000000000000017)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          default:
LABEL_96:
            if (v13 != v15)
            {
              goto LABEL_98;
            }

LABEL_97:
            if (v12 == v16)
            {
              goto LABEL_107;
            }

LABEL_98:
            v23 = sub_22F742040();

            if (v23)
            {
              goto LABEL_108;
            }

            a2 = (a2 + 1) & v11;
            if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_104:
  v24 = *v28;
  *(*v28 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v24 + 48) + a2) = v5;
  v25 = *(v24 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
LABEL_107:

LABEL_108:
    result = sub_22F7420B0();
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v27;
  }

  return result;
}

uint64_t sub_22F116050(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_22F7409A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22F1121BC(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_22F116C20(MEMORY[0x277D1F370], &qword_27DAB06C8, &qword_22F7708A0);
      goto LABEL_12;
    }

    sub_22F119438(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_22F1205EC(&qword_2810A94A0, MEMORY[0x277D1F370]);
  v16 = sub_22F740D40();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_22F1205EC(&unk_2810A9490, MEMORY[0x277D1F370]);
      v24 = sub_22F740DE0();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6, v9);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22F7420B0();
  __break(1u);
  return result;
}

uint64_t sub_22F116318(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22F11252C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_22F116E6C();
      goto LABEL_12;
    }

    sub_22F119754(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_22F742170();
  sub_22F2594CC(v20, v5);
  result = sub_22F7421D0();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB06B0, &qword_22F770BD0);
      v12 = *(*(v8 + 48) + 8 * a2);

      v14 = sub_22F17B5C0(v13, v5);

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v19;
  *(*v19 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = v5;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22F7420B0();
  __break(1u);
  return result;
}

uint64_t sub_22F1164A4(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22F112A54(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_22F117110();
      a2 = v7;
      goto LABEL_12;
    }

    sub_22F119C50(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_22F742160();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22F7420B0();
  __break(1u);
  return result;
}

void *sub_22F1165C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0770, &qword_22F78ABC0);
  v2 = *v0;
  v3 = sub_22F741AA0();
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

void *sub_22F116720(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = v4;
  v9 = a1(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = &v30 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v14 = *v4;
  v15 = sub_22F741AA0();
  v16 = v15;
  if (*(v14 + 16))
  {
    v31 = v8;
    result = (v15 + 56);
    v18 = ((1 << *(v16 + 32)) + 63) >> 6;
    if (v16 != v14 || result >= v14 + 56 + 8 * v18)
    {
      result = memmove(result, (v14 + 56), 8 * v18);
    }

    v20 = 0;
    *(v16 + 16) = *(v14 + 16);
    v21 = 1 << *(v14 + 32);
    v22 = *(v14 + 56);
    v23 = -1;
    if (v21 < 64)
    {
      v23 = ~(-1 << v21);
    }

    v24 = v23 & v22;
    v25 = (v21 + 63) >> 6;
    if ((v23 & v22) != 0)
    {
      do
      {
        v26 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
LABEL_17:
        v29 = *(v10 + 72) * (v26 | (v20 << 6));
        sub_22F12067C(*(v14 + 48) + v29, v13, a4);
        result = sub_22F120744(v13, *(v16 + 48) + v29, a4);
      }

      while (v24);
    }

    v27 = v20;
    while (1)
    {
      v20 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v20 >= v25)
      {

        v8 = v31;
        goto LABEL_21;
      }

      v28 = *(v14 + 56 + 8 * v20);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v24 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v8 = v16;
  }

  return result;
}

void *sub_22F116964()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0778, &qword_22F7708F0);
  v2 = *v0;
  v3 = sub_22F741AA0();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void *sub_22F116AF0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22F741AA0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_22F116C20(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v3;
  v13 = sub_22F741AA0();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

void *sub_22F116E6C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB06B8, &qword_22F770898);
  v2 = *v0;
  v3 = sub_22F741AA0();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

id sub_22F116FD0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22F741AA0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_22F117110()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB05D0, &qword_22F770828);
  v2 = *v0;
  v3 = sub_22F741AA0();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

uint64_t sub_22F117250(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0770, &qword_22F78ABC0);
  result = sub_22F741AB0();
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
      sub_22F742170();

      sub_22F740D60();
      result = sub_22F7421D0();
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

uint64_t sub_22F117488(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MomentGroundedLocation(0);
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0790, &qword_22F770900);
  result = sub_22F741AB0();
  v11 = result;
  if (*(v8 + 16))
  {
    v34 = v2;
    v35 = v8;
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
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v38 = *(v36 + 72);
      sub_22F12067C(v23 + v38 * (v20 | (v12 << 6)), v7, type metadata accessor for MomentGroundedLocation);
      v24 = *(v11 + 40);
      sub_22F742170();
      v25 = v37;
      v26 = *(v37 + 28);
      sub_22F73FF10();
      sub_22F1205EC(&qword_27DAB0780, MEMORY[0x277D3BFE8]);
      sub_22F740D50();
      MEMORY[0x231901D30](*&v7[*(v25 + 32)]);
      MEMORY[0x231901D30](*&v7[*(v25 + 36)]);
      result = sub_22F7421D0();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v8 = v35;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v8 = v35;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_22F120744(v7, *(v11 + 48) + v19 * v38, type metadata accessor for MomentGroundedLocation);
      ++*(v11 + 16);
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

        v2 = v34;
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
    *v2 = v11;
  }

  return result;
}

uint64_t sub_22F1177DC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NamedGroundedLocation(0);
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0788, &qword_22F7708F8);
  result = sub_22F741AB0();
  v11 = result;
  if (*(v8 + 16))
  {
    v38 = v2;
    v39 = v7;
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
    v18 = result + 56;
    v40 = v8;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v43 = *(v41 + 72);
      sub_22F12067C(v23 + v43 * (v20 | (v12 << 6)), v7, type metadata accessor for NamedGroundedLocation);
      v24 = *(v11 + 40);
      sub_22F742170();
      v25 = *v7;
      v26 = v7[1];
      sub_22F740D60();
      v27 = v7 + *(v42 + 20);
      v28 = type metadata accessor for MomentGroundedLocation(0);
      v29 = v28[7];
      sub_22F73FF10();
      sub_22F1205EC(&qword_27DAB0780, MEMORY[0x277D3BFE8]);
      sub_22F740D50();
      MEMORY[0x231901D30](*&v27[v28[8]]);
      MEMORY[0x231901D30](*&v27[v28[9]]);
      result = sub_22F7421D0();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v39;
        v8 = v40;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v39;
      v8 = v40;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_22F120744(v7, *(v11 + 48) + v19 * v43, type metadata accessor for NamedGroundedLocation);
      ++*(v11 + 16);
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

        v2 = v38;
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
    *v2 = v11;
  }

  return result;
}

uint64_t sub_22F117B54(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Song();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0598, &unk_22F7787F0);
  result = sub_22F741AB0();
  v11 = result;
  if (*(v8 + 16))
  {
    v34 = v2;
    v12 = 0;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v35 + 72);
      sub_22F12067C(*(v8 + 48) + v22 * (v19 | (v12 << 6)), v7, type metadata accessor for Song);
      v23 = *(v11 + 40);
      sub_22F742170();
      v24 = *v7;
      v25 = v7[1];
      sub_22F740D60();
      result = sub_22F7421D0();
      v26 = -1 << *(v11 + 32);
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

        goto LABEL_30;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_22F120744(v7, *(v11 + 48) + v18 * v22, type metadata accessor for Song);
      ++*(v11 + 16);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v2 = v34;
        goto LABEL_28;
      }

      v21 = *(v8 + 56 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
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
    *v2 = v11;
  }

  return result;
}

uint64_t sub_22F117E2C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_22F73F690();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0768, &qword_22F7708E8);
  v10 = sub_22F741AB0();
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
      sub_22F1205EC(&qword_2810AC710, MEMORY[0x277CC9578]);
      result = sub_22F740D40();
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

uint64_t sub_22F118148(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0700, &qword_22F7708B0);
  result = sub_22F741AB0();
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
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_18:
      v20 = *(*(v3 + 48) + (v17 | (v7 << 6)));
      v21 = *(v6 + 40);
      sub_22F742170();
      sub_22F740D60();

      result = sub_22F7421D0();
      v13 = -1 << *(v6 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v13) >> 6;
        while (++v15 != v23 || (v22 & 1) == 0)
        {
          v24 = v15 == v23;
          if (v15 == v23)
          {
            v15 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v15);
          if (v25 != -1)
          {
            v16 = __clz(__rbit64(~v25)) + (v15 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v6 + 48) + v16) = v20;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_29;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22F11842C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_22F73F990();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0668, &unk_22F77A310);
  v10 = sub_22F741AB0();
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
      sub_22F1205EC(&qword_2810AC6D0, MEMORY[0x277CC99D0]);
      result = sub_22F740D40();
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

uint64_t sub_22F118748(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PublicEvent();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0580, &qword_22F770818);
  result = sub_22F741AB0();
  v11 = result;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v33 + 72);
      sub_22F12067C(*(v8 + 48) + v22 * (v19 | (v12 << 6)), v7, type metadata accessor for PublicEvent);
      v23 = *(v11 + 40);
      sub_22F742170();
      MEMORY[0x231901D70](*v7);
      result = sub_22F7421D0();
      v24 = -1 << *(v11 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_22F120744(v7, *(v11 + 48) + v18 * v22, type metadata accessor for PublicEvent);
      ++*(v11 + 16);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v21 = *(v8 + 56 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
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
    *v2 = v11;
  }

  return result;
}

uint64_t sub_22F118A1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0778, &qword_22F7708F0);
  result = sub_22F741AB0();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_22F742170();
      v20 = *(v18 + 16);

      v21 = [v20 localIdentifier];
      sub_22F740E20();

      sub_22F740D60();

      result = sub_22F7421D0();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v13 + 8 * v24);
          if (v28 != -1)
          {
            v14 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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

uint64_t sub_22F118C88(uint64_t a1)
{
  v2 = v1;
  v57 = sub_22F73F690();
  v4 = *(v57 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v57);
  v52 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v56 = &v48 - v9;
  v59 = type metadata accessor for SongSource();
  v55 = *(v59 - 1);
  v10 = *(v55 + 64);
  MEMORY[0x28223BE20](v59);
  v12 = (&v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v14 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB05C0, &qword_22F770820);
  result = sub_22F741AB0();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v13 + 56;
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 56);
    v22 = (v19 + 63) >> 6;
    v53 = (v4 + 48);
    v54 = v13;
    v51 = (v4 + 32);
    v49 = v2;
    v50 = (v4 + 8);
    v23 = result + 56;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = *(v13 + 48);
      v58 = *(v55 + 72);
      sub_22F12067C(v28 + v58 * (v25 | (v17 << 6)), v12, type metadata accessor for SongSource);
      v29 = *(v16 + 40);
      sub_22F742170();
      v30 = *v12;
      v31 = v12[1];
      sub_22F740D60();
      v32 = (v12 + v59[11]);
      if (v32[1])
      {
        v33 = *v32;
        sub_22F742190();
        sub_22F740D60();
      }

      else
      {
        sub_22F742190();
      }

      v34 = v56;
      sub_22F12057C(v12 + v59[7], v56);
      v35 = v57;
      if ((*v53)(v34, 1, v57) == 1)
      {
        sub_22F742190();
      }

      else
      {
        v36 = v52;
        (*v51)(v52, v34, v35);
        sub_22F742190();
        sub_22F1205EC(&qword_2810AC710, MEMORY[0x277CC9578]);
        sub_22F740D50();
        (*v50)(v36, v35);
      }

      v37 = (v12 + v59[8]);
      if (v37[1])
      {
        v38 = *v37;
        sub_22F742190();
        sub_22F740D60();
      }

      else
      {
        sub_22F742190();
      }

      v39 = (v12 + v59[12]);
      if (v39[1])
      {
        v40 = *v39;
        sub_22F742190();
        sub_22F740D60();
      }

      else
      {
        sub_22F742190();
      }

      v13 = v54;
      result = sub_22F7421D0();
      v41 = -1 << *(v16 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v23 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v23 + 8 * v43);
          if (v47 != -1)
          {
            v24 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_42;
      }

      v24 = __clz(__rbit64((-1 << v42) & ~*(v23 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      result = sub_22F120744(v12, *(v16 + 48) + v24 * v58, type metadata accessor for SongSource);
      ++*(v16 + 16);
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v2 = v49;
        goto LABEL_40;
      }

      v27 = *(v18 + 8 * v17);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
  }

  else
  {

LABEL_40:
    *v2 = v16;
  }

  return result;
}

uint64_t sub_22F1191F8(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v5 = v4;
  v6 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v7 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_22F741AB0();
  v9 = result;
  if (*(v6 + 16))
  {
    v29 = v5;
    v10 = 0;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v6 + 48) + (v17 | (v10 << 6)));
      v21 = *(v9 + 40);
      sub_22F742170();
      a4(v20);
      sub_22F740D60();

      result = sub_22F7421D0();
      v22 = -1 << *(v9 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v9 + 48) + v16) = v20;
      ++*(v9 + 16);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v5 = v29;
        goto LABEL_28;
      }

      v19 = *(v6 + 56 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v5 = v9;
  }

  return result;
}

uint64_t sub_22F119438(uint64_t a1)
{
  v2 = v1;
  v37 = sub_22F7409A0();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB06C8, &qword_22F7708A0);
  v10 = sub_22F741AB0();
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
      sub_22F1205EC(&qword_2810A94A0, MEMORY[0x277D1F370]);
      result = sub_22F740D40();
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

uint64_t sub_22F119754(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB06B8, &qword_22F770898);
  result = sub_22F741AB0();
  v6 = result;
  if (!*(v3 + 16))
  {

LABEL_40:
    *v2 = v6;
    return result;
  }

  v33 = v2;
  v34 = v3;
  v7 = 0;
  v8 = v3 + 56;
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
    v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
    v19 = *(v6 + 40);
    sub_22F742170();
    if (v18 >> 62)
    {
      v25 = sub_22F741A00();
      MEMORY[0x231901D30](v25);
      result = sub_22F741A00();
      v20 = result;
      if (!result)
      {
LABEL_28:

        goto LABEL_29;
      }
    }

    else
    {
      result = MEMORY[0x231901D30](*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10));
      v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v20)
      {
        goto LABEL_28;
      }
    }

    if (v20 < 1)
    {
      goto LABEL_43;
    }

    if ((v18 & 0xC000000000000001) != 0)
    {

      for (i = 0; i != v20; ++i)
      {
        MEMORY[0x2319016F0](i, v18);
        sub_22F741820();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v22 = (v18 + 32);

      do
      {
        v23 = *v22++;
        v24 = v23;
        sub_22F741820();

        --v20;
      }

      while (v20);
    }

LABEL_29:
    result = sub_22F7421D0();
    v26 = -1 << *(v6 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
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
        v32 = *(v13 + 8 * v28);
        if (v32 != -1)
        {
          v14 = __clz(__rbit64(~v32)) + (v28 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_42;
    }

    v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    *(*(v6 + 48) + 8 * v14) = v18;
    ++*(v6 + 16);
    v3 = v34;
  }

  v16 = v7;
  while (1)
  {
    v7 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v7 >= v12)
    {

      v2 = v33;
      goto LABEL_40;
    }

    v17 = *(v8 + 8 * v7);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v11 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_22F119A44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_22F741AB0();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_22F741800();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v4 = v8;
  }

  return result;
}

uint64_t sub_22F119C50(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB05D0, &qword_22F770828);
  result = sub_22F741AB0();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_22F742160();
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

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
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
        goto LABEL_26;
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
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_22F119E40(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1250, &qword_22F781A10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - v8;
  v10 = type metadata accessor for Song();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22F741C40();

  v17 = 0;
  if (!a2 || !a3)
  {
LABEL_12:
    *a1 = v15;
    return v17;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = a1;
    sub_22F741E10();
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      v17 = 0;
LABEL_9:
      sub_22F120ADC(v9, &qword_27DAB1250, &qword_22F781A10);
    }

    else
    {
      v17 = 0;
      v19 = a3;
      v18 = a3 - 1;
      while (1)
      {
        sub_22F120744(v9, v14, type metadata accessor for Song);
        sub_22F120744(v14, a2, type metadata accessor for Song);
        if (v18 == v17)
        {
          break;
        }

        a2 += *(v11 + 72);
        sub_22F741E10();
        ++v17;
        if ((*(v11 + 48))(v9, 1, v10) == 1)
        {
          goto LABEL_9;
        }
      }

      v17 = v19;
    }

    a1 = v20;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

id sub_22F11A068(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_22F7419C0();
  type metadata accessor for PGStoryPromptSuggestionQuestion();
  sub_22F1205EC(&qword_27DAB07B8, type metadata accessor for PGStoryPromptSuggestionQuestion);
  result = sub_22F741470();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_22F741A40())
      {
        goto LABEL_30;
      }

      type metadata accessor for PGStoryPromptSuggestionQuestion();
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_22F11A294(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v23 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = v13;
    }

    v12 = v22 - 1;
    v10 = result;
LABEL_23:
    v7 = v23;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_22F11A438(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22F11A590(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v19 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v11 = v21 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_22F7419C0();
  type metadata accessor for ImportantEntitiesGraphInferenceMoment();
  sub_22F1205EC(&unk_2810AC6B0, type metadata accessor for ImportantEntitiesGraphInferenceMoment);
  result = sub_22F741470();
  v4 = v26;
  v8 = v27;
  v9 = v28;
  v10 = v29;
  v11 = v30;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v23 = v9;
  v24 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_22F741A40())
      {
        goto LABEL_30;
      }

      type metadata accessor for ImportantEntitiesGraphInferenceMoment();
      swift_dynamicCast();
      result = v25;
      if (!v25)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));

    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v22 = v10 + 1;
  }

  else
  {
    v22 = v13;
  }

  v10 = v22 - 1;
LABEL_30:
  v9 = v23;
  v7 = v24;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

uint64_t sub_22F11A7BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Song();
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v33 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v32 = &v29 - v13;
  v14 = a4 + 56;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v18 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v14;
    a1[2] = ~v15;
    a1[3] = v18;
    a1[4] = v17;
    return a3;
  }

  if (!a3)
  {
    v18 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    result = 0;
    v18 = 0;
    v29 = v15;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v33;
      a1 = *(v34 + 72);
      sub_22F12067C(*(a4 + 48) + a1 * (v23 | (v18 << 6)), v33, type metadata accessor for Song);
      v25 = v24;
      v26 = v32;
      sub_22F120744(v25, v32, type metadata accessor for Song);
      sub_22F120744(v26, a2, type metadata accessor for Song);
      if (v20 == v31)
      {
        a1 = v30;
        a3 = v31;
        goto LABEL_23;
      }

      a2 += a1;
      result = v20;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v28 = v18 + 1;
    }

    else
    {
      v28 = v19;
    }

    v18 = v28 - 1;
    a3 = result;
    a1 = v30;
LABEL_23:
    v15 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_22F11AA10(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_22F7402E0();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
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
    v38 = a4 + 64;
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

uint64_t sub_22F11ACB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0730, &unk_22F771740);
  v39 = *(v42 - 8);
  v8 = *(v39 + 64);
  v9 = MEMORY[0x28223BE20](v42);
  v41 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = (&v36 - v12);
  v43 = a4;
  v15 = *(a4 + 64);
  v14 = a4 + 64;
  v13 = v15;
  v16 = -1 << *(v14 - 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  if (!a2)
  {
LABEL_18:
    v25 = 0;
    a3 = 0;
LABEL_25:
    *a1 = v43;
    a1[1] = v14;
    a1[2] = ~v16;
    a1[3] = v25;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v25 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v37 = -1 << *(v14 - 32);
    v38 = a1;
    result = 0;
    v19 = 0;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v19;
      v26 = v24 | (v19 << 6);
      v27 = v43;
      v28 = *(v43 + 48);
      v29 = sub_22F740050();
      v30 = *(v29 - 8);
      v31 = v28 + *(v30 + 72) * v26;
      v32 = v41;
      (*(v30 + 16))(v41, v31, v29);
      *&v32[*(v42 + 48)] = *(*(v27 + 56) + 8 * v26);
      v33 = v32;
      a1 = v40;
      sub_22F1207AC(v33, v40, &qword_27DAB0730, &unk_22F771740);
      sub_22F1207AC(a1, a2, &qword_27DAB0730, &unk_22F771740);
      if (v21 == a3)
      {
        goto LABEL_23;
      }

      a2 += *(v39 + 72);
      result = v21;
      v34 = __OFADD__(v21++, 1);
      v19 = v25;
      if (v34)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v14 + 8 * v23);
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v35 = v19 + 1;
    }

    else
    {
      v35 = v20;
    }

    v25 = v35 - 1;
    a3 = result;
LABEL_23:
    v16 = v37;
    a1 = v38;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22F11AF58(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = v17 | (v12 << 6);
      v19 = *(*(a4 + 48) + 8 * v18);
      v20 = *(a4 + 56) + 24 * v18;
      v21 = *(v20 + 16);
      v22 = *v20;
      *v11 = v19;
      *(v11 + 8) = v22;
      *(v11 + 24) = v21;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 32;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = (63 - v7) >> 6;
    }

    v12 = v24 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22F11B0EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0710, &qword_22F772040);
  v39 = *(v42 - 8);
  v8 = *(v39 + 64);
  v9 = MEMORY[0x28223BE20](v42);
  v41 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = (&v36 - v12);
  v43 = a4;
  v15 = *(a4 + 64);
  v14 = a4 + 64;
  v13 = v15;
  v16 = -1 << *(v14 - 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  if (!a2)
  {
LABEL_18:
    v25 = 0;
    a3 = 0;
LABEL_25:
    *a1 = v43;
    a1[1] = v14;
    a1[2] = ~v16;
    a1[3] = v25;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v25 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v37 = -1 << *(v14 - 32);
    v38 = a1;
    result = 0;
    v19 = 0;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v19;
      v26 = v24 | (v19 << 6);
      v27 = v43;
      v28 = *(v43 + 48);
      v29 = sub_22F740390();
      v30 = *(v29 - 8);
      v31 = v28 + *(v30 + 72) * v26;
      v32 = v41;
      (*(v30 + 16))(v41, v31, v29);
      *&v32[*(v42 + 48)] = *(*(v27 + 56) + 8 * v26);
      v33 = v32;
      a1 = v40;
      sub_22F1207AC(v33, v40, &unk_27DAB0710, &qword_22F772040);
      sub_22F1207AC(a1, a2, &unk_27DAB0710, &qword_22F772040);
      if (v21 == a3)
      {
        goto LABEL_23;
      }

      a2 += *(v39 + 72);
      result = v21;
      v34 = __OFADD__(v21++, 1);
      v19 = v25;
      if (v34)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v14 + 8 * v23);
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v35 = v19 + 1;
    }

    else
    {
      v35 = v20;
    }

    v25 = v35 - 1;
    a3 = result;
LABEL_23:
    v16 = v37;
    a1 = v38;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22F11B390(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 4 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      *(v11 + 8) = v19;
      *(v11 + 16) = v20;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 24;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22F11B504(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v42 = a5(0);
  v44 = *(v42 - 8);
  v9 = *(v44 + 64);
  v10 = (MEMORY[0x28223BE20])();
  v43 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v41 = &v35 - v13;
  v14 = a4 + 56;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v33 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v14;
    *(a1 + 16) = ~v15;
    *(a1 + 24) = v33;
    *(a1 + 32) = v17;
    return a3;
  }

  if (!a3)
  {
    v33 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(a4 + 32);
    v36 = a1;
    result = 0;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v37 = v44 + 32;
    v38 = v44 + 16;
    a1 = 1;
    v39 = a4 + 56;
    v40 = a3;
    v20 = v41;
    while (v17)
    {
      v46 = a2;
LABEL_15:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v45 = v18;
      v24 = a4;
      v25 = *(a4 + 48);
      v26 = v43;
      v27 = v44;
      v28 = *(v44 + 72);
      v29 = v42;
      (*(v44 + 16))(v43, v25 + v28 * (v23 | (v18 << 6)), v42);
      v30 = *(v27 + 32);
      v30(v20, v26, v29);
      v31 = v46;
      v30(v46, v20, v29);
      a3 = v40;
      if (a1 == v40)
      {
        v15 = v35;
        a1 = v36;
        a4 = v24;
        v33 = v45;
        v14 = v39;
        goto LABEL_25;
      }

      a2 = &v31[v28];
      result = a1;
      v32 = __OFADD__(a1++, 1);
      a4 = v24;
      v18 = v45;
      v14 = v39;
      if (v32)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v46 = a2;
        v18 = v22;
        goto LABEL_15;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v34 = v18 + 1;
    }

    else
    {
      v34 = v19;
    }

    v33 = v34 - 1;
    a3 = result;
    v15 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t *sub_22F11B7AC(uint64_t *result, uint64_t **a2, uint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  sub_22F7419C0();
  sub_22F120634(0, a5, a6);
  sub_22F11FA28(a7, a5, a6);
  result = sub_22F741470();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!sub_22F741A40())
      {
        goto LABEL_30;
      }

      sub_22F120634(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

void *sub_22F11B9DC(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_22F11BAD8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22F11BC30(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_22F11BD84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
  v36 = *(v39 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v39);
  v38 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v37 = (&v33 - v11);
  v40 = a4;
  v14 = *(a4 + 64);
  v13 = a4 + 64;
  v12 = v14;
  v15 = -1 << *(v13 - 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v12;
  if (!a2)
  {
LABEL_18:
    v24 = 0;
LABEL_25:
    *a1 = v40;
    a1[1] = v13;
    a1[2] = ~v15;
    a1[3] = v24;
    a1[4] = v17;
    return;
  }

  if (!a3)
  {
    v24 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(v13 - 32);
    v35 = a1;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v18;
      v25 = v23 | (v18 << 6);
      v26 = v40;
      v27 = *(v40 + 48);
      v28 = v27 + *(*(type metadata accessor for Song() - 8) + 72) * v25;
      v29 = v38;
      sub_22F12067C(v28, v38, type metadata accessor for Song);
      *(v29 + *(v39 + 48)) = *(*(v26 + 56) + 4 * v25);
      v30 = v29;
      a1 = v37;
      sub_22F1207AC(v30, v37, &qword_27DAB10F0, &qword_22F771540);
      sub_22F1207AC(a1, a2, &qword_27DAB10F0, &qword_22F771540);
      if (v20 == a3)
      {
        goto LABEL_23;
      }

      a2 += *(v36 + 72);
      v31 = __OFADD__(v20++, 1);
      v18 = v24;
      if (v31)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v13 + 8 * v22);
      ++v21;
      if (v17)
      {
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v32 = v18 + 1;
    }

    else
    {
      v32 = v19;
    }

    v24 = v32 - 1;
LABEL_23:
    v15 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_22F11C050(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v11 = a5(0);
  v37 = *(v11 - 8);
  v12 = *(v37 + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v18 = &v33 - v17;
  v38 = a4;
  v21 = *(a4 + 64);
  v20 = a4 + 64;
  v19 = v21;
  v22 = -1 << *(v20 - 32);
  if (-v22 < 64)
  {
    v23 = ~(-1 << -v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & v19;
  if (!a2)
  {
LABEL_18:
    v25 = 0;
    a3 = 0;
LABEL_25:
    *a1 = v38;
    a1[1] = v20;
    a1[2] = ~v22;
    a1[3] = v25;
    a1[4] = v24;
    return a3;
  }

  if (!a3)
  {
    v25 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = a1;
    v36 = a3;
    result = 0;
    v25 = 0;
    v34 = v22;
    v26 = (63 - v22) >> 6;
    v27 = 1;
    while (v24)
    {
LABEL_14:
      v30 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      a1 = *(v37 + 72);
      sub_22F12067C(*(v38 + 56) + a1 * (v30 | (v25 << 6)), v15, a6);
      sub_22F120744(v15, v18, a6);
      sub_22F120744(v18, a2, a6);
      if (v27 == v36)
      {
        a1 = v35;
        a3 = v36;
        goto LABEL_23;
      }

      a2 += a1;
      result = v27;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v28 = v25;
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v29 >= v26)
      {
        break;
      }

      v24 = *(v20 + 8 * v29);
      ++v28;
      if (v24)
      {
        v25 = v29;
        goto LABEL_14;
      }
    }

    v24 = 0;
    if (v26 <= v25 + 1)
    {
      v32 = v25 + 1;
    }

    else
    {
      v32 = v26;
    }

    v25 = v32 - 1;
    a3 = result;
    a1 = v35;
LABEL_23:
    v22 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_22F11C284(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v18 = *(*(a4 + 48) + v17);
      v19 = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = v18;
      v11[1] = v19;
      if (v14 == v10)
      {
        v23 = v18;
        goto LABEL_24;
      }

      v11 += 2;
      v20 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22F11C3E0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_22F11C560(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10E0, &unk_22F771530);
  v38 = *(v41 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v39 = (&v34 - v11);
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v22 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v22;
    a1[4] = v15;
    return;
  }

  if (!a3)
  {
    v22 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(a4 + 32);
    v36 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v18 = 1;
    v37 = a3;
    while (v15)
    {
LABEL_14:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v16;
      v23 = v21 | (v16 << 6);
      v24 = *(a4 + 56);
      v25 = a4;
      v26 = *(*(a4 + 48) + 8 * v23);
      v27 = sub_22F73F690();
      v28 = *(v27 - 8);
      v29 = v24 + *(v28 + 72) * v23;
      v30 = v40;
      (*(v28 + 16))(&v40[*(v41 + 48)], v29, v27);
      *v30 = v26;
      v31 = v30;
      a1 = v39;
      sub_22F1207AC(v31, v39, &unk_27DAB10E0, &unk_22F771530);
      sub_22F1207AC(a1, a2, &unk_27DAB10E0, &unk_22F771530);
      if (v18 == v37)
      {
        a1 = v36;
        a4 = v25;
        goto LABEL_23;
      }

      a2 += *(v38 + 72);
      v32 = __OFADD__(v18++, 1);
      a4 = v25;
      v16 = v22;
      if (v32)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v16 = v20;
        goto LABEL_14;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v33 = v16 + 1;
    }

    else
    {
      v33 = v17;
    }

    v22 = v33 - 1;
    a1 = v36;
LABEL_23:
    v13 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_22F11C814(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = v17 | (v12 << 6);
      v19 = *(*(a4 + 48) + 8 * v18);
      v20 = (*(a4 + 56) + 16 * v18);
      v22 = *v20;
      v21 = v20[1];
      *v11 = v19;
      v11[1] = v22;
      v11[2] = v21;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = (63 - v7) >> 6;
    }

    v12 = v24 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22F11C970(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22F11CACC(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 10) | (16 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_22F11CBCC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22F11CD20(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22F11CE78(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22F11CFCC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_22F11D0CC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_22F73FE50();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return;
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
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
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
      v24 = *(a4 + 56);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41, v11);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
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
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_22F11D398(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v51 = a6;
  v52 = a7;
  v50 = a5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v46 = *(v49 - 8);
  v11 = *(v46 + 64);
  v12 = MEMORY[0x28223BE20](v49);
  v48 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v47 = &v42 - v15;
  v16 = a4 + 64;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    a3 = 0;
LABEL_24:
    *a1 = a4;
    a1[1] = v16;
    a1[2] = ~v17;
    a1[3] = a2;
    a1[4] = v19;
    return a3;
  }

  if (!a3)
  {
    a2 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v43 = -1 << *(a4 + 32);
    v44 = a1;
    result = 0;
    v20 = 0;
    v21 = (63 - v17) >> 6;
    v22 = 1;
    v45 = a3;
    while (v19)
    {
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v53 = v20;
      v26 = v25 | (v20 << 6);
      v27 = a4;
      v28 = *(a4 + 48);
      v29 = *(a4 + 56);
      v30 = (v28 + 16 * v26);
      v31 = *v30;
      v32 = v30[1];
      v33 = v52(0);
      v34 = *(v33 - 8);
      v35 = v29 + *(v34 + 72) * v26;
      v36 = v48;
      (*(v34 + 16))(&v48[*(v49 + 48)], v35, v33);
      *v36 = v31;
      v36[1] = v32;
      v37 = v36;
      v38 = v47;
      v39 = v50;
      a1 = v51;
      sub_22F1207AC(v37, v47, v50, v51);
      sub_22F1207AC(v38, a2, v39, a1);
      a3 = v45;
      if (v22 == v45)
      {

        v17 = v43;
        a1 = v44;
        a4 = v27;
        a2 = v53;
        goto LABEL_24;
      }

      a2 += *(v46 + 72);

      result = v22;
      v40 = __OFADD__(v22++, 1);
      a4 = v27;
      v20 = v53;
      if (v40)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v20;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v24 >= v21)
      {
        break;
      }

      v19 = *(v16 + 8 * v24);
      ++v23;
      if (v19)
      {
        v20 = v24;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v41 = v20 + 1;
    }

    else
    {
      v41 = v21;
    }

    a2 = v41 - 1;
    a3 = result;
    v17 = v43;
    a1 = v44;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22F11D658(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  v9 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v20 = -1 << *(v6 + 32);
    v10 = v6 + 64;
    v11 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v12 = v22 & *(v6 + 64);
    v26 = v11;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v17 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = sub_22F741CA0();
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = result | 0x8000000000000000;
  v26 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v17 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v27 = a3;
  a3 = 0;
  v13 = 0;
  v14 = (v11 + 64) >> 6;
  v15 = 1;
  while (1)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      if (!sub_22F741D20())
      {
        goto LABEL_31;
      }

      sub_22F120634(0, a5, a6);
      swift_dynamicCast();
      result = v28;
      v17 = v13;
      if (!v28)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v16 = v13;
    if (!v12)
    {
      break;
    }

    v17 = v13;
LABEL_13:
    v18 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    result = *(*(v6 + 48) + ((v17 << 9) | (8 * v18)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v27;
    if (v15 == v27)
    {
LABEL_31:
      v17 = v13;
      goto LABEL_32;
    }

    ++a2;
    a3 = v15;
    if (__OFADD__(v15++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v17 >= v14)
    {
      break;
    }

    v12 = *(v10 + 8 * v17);
    ++v16;
    if (v12)
    {
      v13 = v17;
      goto LABEL_13;
    }
  }

  v12 = 0;
  if (v14 <= v13 + 1)
  {
    v23 = v13 + 1;
  }

  else
  {
    v23 = v14;
  }

  v17 = v23 - 1;
LABEL_32:
  *v9 = v6;
  v9[1] = v10;
  v9[2] = v26;
  v9[3] = v17;
  v9[4] = v12;
  return a3;
}

uint64_t sub_22F11D84C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22F740C30();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v41 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v42 = &v40 - v8;
  v9 = sub_22F740B90();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB07C0, &qword_22F77A4F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v40 - v15;
  v46 = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB07C8, &qword_22F770918);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_22F73FC90();
  v21 = [objc_allocWithZone(MEMORY[0x277CD9950]) initWithPhotoLibrary_];
  v22 = dispatch_group_create();
  dispatch_group_enter(v22);
  v23 = sub_22F741320();
  (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
  v24 = *(v10 + 16);
  v40 = a2;
  v24(v12, a2, v9);
  v25 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v26 = (v11 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  *(v27 + 4) = v21;
  *(v27 + 5) = v20;
  (*(v10 + 32))(&v27[v25], v12, v9);
  *&v27[v26] = v22;
  v28 = v21;

  v29 = v22;
  v30 = v41;
  sub_22F37994C(0, 0, v16, &unk_22F770928, v27);

  sub_22F740C10();
  if (qword_2810AA710 != -1)
  {
    swift_once();
  }

  v31 = sub_22F740BB0();
  __swift_project_value_buffer(v31, qword_2810AA720);
  v32 = v42;
  sub_22F740C20();
  v33 = v44;
  v34 = *(v43 + 8);
  v34(v30, v44);
  v35 = sub_22F741610();
  v34(v32, v33);
  if (v35)
  {
    v36 = sub_22F740B70();
    v37 = sub_22F7415E0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_22F0FC000, v36, v37, "Error getting MC status due to timeout.", v38, 2u);
      MEMORY[0x2319033A0](v38, -1, -1);
    }

    return -1;
  }

  else
  {
    sub_22F73FC70();

    return v45;
  }
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

uint64_t sub_22F11DCEC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v84 = a5;
  v83 = sub_22F7400A0();
  v9 = *(v83 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v83);
  v82 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_22F7400D0();
  v12 = *(v90 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v90);
  v77 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v75 = (&v69 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v81 = &v69 - v19;
  result = MEMORY[0x28223BE20](v18);
  v80 = &v69 - v21;
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v24 = a2;
  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_68;
  }

  v25 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v23 != -1)
  {
    v26 = (a2 - a1) / v23;
    v93 = a1;
    v92 = a4;
    if (v26 < v25 / v23)
    {
      v27 = v26 * v23;
      if (a4 < a1 || a1 + v27 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == a1)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v24 = a2;
LABEL_17:
      v79 = a4 + v27;
      v91 = a4 + v27;
      if (v27 >= 1 && v24 < a3)
      {
        v30 = *(v12 + 16);
        v74 = (v9 + 8);
        v75 = v30;
        v77 = (v12 + 16);
        v78 = a3;
        v73 = (v12 + 8);
        v76 = v23;
        while (1)
        {
          v87 = a1;
          v31 = v80;
          v89 = v24;
          v32 = v90;
          v33 = v75;
          (v75)(v80);
          v34 = v81;
          v88 = a4;
          v33(v81, a4, v32);
          v35 = v82;
          sub_22F7400B0();
          v36 = v84;
          v85 = sub_22F21228C(v35, v84);
          LODWORD(v86) = v37;
          v38 = *v74;
          v39 = v83;
          (*v74)(v35, v83);
          sub_22F7400B0();
          v40 = sub_22F21228C(v35, v36);
          LOBYTE(v36) = v41;
          v38(v35, v39);
          if (v36)
          {
            v40 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v42 = *v73;
          (*v73)(v34, v32);
          v42(v31, v32);
          if ((v86 & 1) == 0 && v85 < v40)
          {
            a4 = v88;
            v43 = v76;
            v44 = v89 + v76;
            v45 = v87;
            if (v87 < v89 || v87 >= v44)
            {
              swift_arrayInitWithTakeFrontToBack();
              v24 = v44;
              v46 = v78;
            }

            else
            {
              v46 = v78;
              if (v87 != v89)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v24 = v44;
            }

            goto LABEL_38;
          }

          v45 = v87;
          v43 = v76;
          a4 = v88 + v76;
          if (v87 < v88 || v87 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v24 = v89;
            v46 = v78;
          }

          else
          {
            v24 = v89;
            v46 = v78;
            if (v87 != v88)
            {
              v47 = v89;
              swift_arrayInitWithTakeBackToFront();
              v24 = v47;
              v92 = a4;
              goto LABEL_38;
            }
          }

          v92 = a4;
LABEL_38:
          a1 = v45 + v43;
          v93 = a1;
          if (a4 >= v79 || v24 >= v46)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_66;
    }

    v28 = v25 / v23 * v23;
    if (a4 < a2 || a2 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_43:
        v48 = a4 + v28;
        if (v28 >= 1)
        {
          v49 = -v23;
          v73 = (v9 + 8);
          v74 = (v12 + 16);
          v72 = (v12 + 8);
          v50 = a4 + v28;
          v87 = a1;
          v88 = a4;
          v76 = -v23;
          while (2)
          {
            while (1)
            {
              v70 = v48;
              v51 = v24 + v49;
              v89 = v24 + v49;
              v78 = v24;
              while (1)
              {
                if (v24 <= a1)
                {
                  v93 = v24;
                  v91 = v70;
                  goto LABEL_66;
                }

                v85 = a3;
                v71 = v48;
                v86 = v50;
                v52 = (v50 + v49);
                v53 = v75;
                v54 = *v74;
                v80 = v52;
                v55 = v90;
                (v54)(v75);
                v56 = v77;
                (v54)(v77, v51, v55);
                v57 = v82;
                sub_22F7400B0();
                v58 = v84;
                v79 = sub_22F21228C(v57, v84);
                LODWORD(v81) = v59;
                v60 = *v73;
                v61 = v83;
                (*v73)(v57, v83);
                sub_22F7400B0();
                v62 = sub_22F21228C(v57, v58);
                LOBYTE(v58) = v63;
                v60(v57, v61);
                if (v58)
                {
                  v62 = 0x7FFFFFFFFFFFFFFFLL;
                }

                v64 = *v72;
                (*v72)(v56, v55);
                v64(v53, v55);
                if ((v81 & 1) == 0 && v79 < v62)
                {
                  break;
                }

                v65 = v80;
                v48 = v80;
                v49 = v76;
                a3 = v85 + v76;
                if (v85 < v86 || a3 >= v86)
                {
                  swift_arrayInitWithTakeFrontToBack();
                  v51 = v89;
                  a1 = v87;
                }

                else
                {
                  v51 = v89;
                  a1 = v87;
                  if (v85 != v86)
                  {
                    swift_arrayInitWithTakeBackToFront();
                  }
                }

                v50 = v48;
                v24 = v78;
                if (v65 <= v88)
                {
                  goto LABEL_64;
                }
              }

              v49 = v76;
              a3 = v85 + v76;
              v66 = v88;
              if (v85 < v78 || a3 >= v78)
              {
                break;
              }

              v24 = v89;
              v50 = v86;
              a1 = v87;
              v48 = v71;
              if (v85 != v78)
              {
                v67 = v89;
                swift_arrayInitWithTakeBackToFront();
                v24 = v67;
              }

              if (v50 <= v66)
              {
                goto LABEL_64;
              }
            }

            v68 = v89;
            swift_arrayInitWithTakeFrontToBack();
            v24 = v68;
            v50 = v86;
            a1 = v87;
            v48 = v71;
            if (v86 > v66)
            {
              continue;
            }

            break;
          }
        }

LABEL_64:
        v93 = v24;
        v91 = v48;
LABEL_66:
        sub_22F3B6614(&v93, &v92, &v91);
        return 1;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a2;
    goto LABEL_43;
  }

LABEL_69:
  __break(1u);
  return result;
}

uint64_t sub_22F11E4A4(char **a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v27 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_16:
    v27 = sub_22F3F5F98(v27);
  }

  v22 = v6;
  *v6 = v27;
  v8 = v27 + 16;
  v9 = *(v27 + 2);
  if (v9 < 2)
  {
LABEL_10:

    *v22 = v27;
    return 1;
  }

  else
  {
    v23 = (v27 + 16);
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = &v27[16 * v9];
      v6 = *v11;
      v12 = &v8[16 * v9];
      v13 = *v12;
      v14 = *(v12 + 1);
      v15 = *(*(sub_22F7400D0() - 8) + 72);
      v16 = v10 + v15 * v6;
      v17 = v10 + v15 * v13;
      v18 = v10 + v15 * v14;

      sub_22F11DCEC(v16, v17, v18, a2, a4);

      if (v5)
      {
        *v22 = v27;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v8 = v27 + 16;
      v19 = *v23;
      if (v9 - 2 >= *v23)
      {
        goto LABEL_14;
      }

      *v11 = v6;
      *(v11 + 1) = v14;
      v20 = v19 - v9;
      if (v19 < v9)
      {
        goto LABEL_15;
      }

      v9 = v19 - 1;
      memmove(v12, v12 + 16, 16 * v20);
      *v23 = v9;
      if (v9 <= 1)
      {
        goto LABEL_10;
      }
    }

    *v22 = v27;
    __break(1u);
  }

  return result;
}

uint64_t sub_22F11E664(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v164 = a4;
  v165 = a1;
  v189 = sub_22F7400A0();
  v7 = *(v189 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v189);
  v188 = &v161 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22F7400D0();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v168 = &v161 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v182 = &v161 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v194 = &v161 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v193 = &v161 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v169 = &v161 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v178 = &v161 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v162 = &v161 - v26;
  MEMORY[0x28223BE20](v25);
  v163 = &v161 - v27;
  v196 = MEMORY[0x277D84F90];
  v176 = a3;
  v28 = a3[1];
  if (v28 >= 1)
  {
    v186 = (v7 + 8);
    v187 = v11 + 2;
    v184 = (v11 + 4);
    v185 = (v11 + 1);
    swift_bridgeObjectRetain_n();
    v29 = 0;
    v175 = MEMORY[0x277D84F90];
    v195 = a5;
    v190 = v10;
    v174 = v11;
    while (1)
    {
      if (v29 + 1 >= v28)
      {
        v51 = v29 + 1;
        v65 = v164;
      }

      else
      {
        v30 = *v176;
        v31 = v11[9];
        v32 = *v176 + v31 * (v29 + 1);
        v33 = v31;
        v179 = v28;
        v180 = v31;
        v34 = v30;
        v192 = v30;
        v35 = v11[2];
        v36 = a5;
        v37 = v32;
        (v35)(v163);
        v38 = v34 + v33 * v29;
        v39 = v162;
        v172 = v35;
        (v35)(v162, v38, v10);
        v40 = v188;
        sub_22F7400B0();
        v183 = sub_22F21228C(v40, a5);
        LODWORD(v191) = v41;
        v166 = v29;
        v42 = *v186;
        v43 = v10;
        v44 = v189;
        (*v186)(v40, v189);
        sub_22F7400B0();
        v45 = sub_22F21228C(v40, v36);
        LOBYTE(v36) = v46;
        v171 = v42;
        v42(v40, v44);
        v47 = 0x7FFFFFFFFFFFFFFFLL;
        if ((v36 & 1) == 0)
        {
          v47 = v45;
        }

        LODWORD(v173) = (v183 < v47) & ~v191;
        v48 = v174[1];
        v48(v39, v43);
        v170 = v48;
        v48(v163, v43);
        v49 = v166 + 2;
        v50 = v192 + v180 * (v166 + 2);
        while (1)
        {
          v51 = v179;
          if (v179 == v49)
          {
            break;
          }

          v52 = v190;
          v53 = v172;
          v191 = v49;
          v172();
          v54 = v169;
          v192 = v37;
          v53();
          v55 = v188;
          sub_22F7400B0();
          v56 = v195;
          v181 = sub_22F21228C(v55, v195);
          LODWORD(v183) = v57;
          v58 = v189;
          v59 = v171;
          (v171)(v55, v189);
          v60 = v54;
          sub_22F7400B0();
          v61 = sub_22F21228C(v55, v56);
          LOBYTE(v56) = v62;
          v59(v55, v58);
          if (v56)
          {
            v63 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v63 = v61;
          }

          v64 = v170;
          v170(v60, v52);
          v64(v178, v52);
          v49 = v191 + 1;
          v50 += v180;
          v37 = v192 + v180;
          if (v173 == (v183 & 1 | (v181 >= v63)))
          {
            v51 = v191;
            break;
          }
        }

        a5 = v195;
        v65 = v164;
        v10 = v190;
        v11 = v174;
        v29 = v166;
        if (v173)
        {
          if (v51 < v166)
          {
            goto LABEL_131;
          }

          if (v166 < v51)
          {
            v66 = v180 * (v51 - 1);
            v67 = v51 * v180;
            v179 = v51;
            v68 = v166 * v180;
            do
            {
              if (v29 != --v51)
              {
                v70 = *v176;
                if (!*v176)
                {
                  goto LABEL_136;
                }

                v71 = *v184;
                (*v184)(v168, v70 + v68, v190);
                if (v68 < v66 || v70 + v68 >= v70 + v67)
                {
                  v69 = v190;
                  swift_arrayInitWithTakeFrontToBack();
                }

                else
                {
                  v69 = v190;
                  if (v68 != v66)
                  {
                    swift_arrayInitWithTakeBackToFront();
                  }
                }

                v71((v70 + v66), v168, v69);
                v10 = v69;
              }

              ++v29;
              v66 -= v180;
              v67 -= v180;
              v68 += v180;
            }

            while (v29 < v51);
            a5 = v195;
            v65 = v164;
            v11 = v174;
            v29 = v166;
            v51 = v179;
          }
        }
      }

      v72 = v176[1];
      if (v51 >= v72)
      {
        goto LABEL_38;
      }

      if (__OFSUB__(v51, v29))
      {
        goto LABEL_130;
      }

      if (v51 - v29 >= v65)
      {
        goto LABEL_38;
      }

      if (__OFADD__(v29, v65))
      {
        goto LABEL_132;
      }

      if (v29 + v65 >= v72)
      {
        v73 = v176[1];
      }

      else
      {
        v73 = v29 + v65;
      }

      if (v73 < v29)
      {
LABEL_133:
        __break(1u);
LABEL_134:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_135:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_136:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_137:
        swift_bridgeObjectRelease_n();
        __break(1u);
        goto LABEL_138;
      }

      if (v51 == v73)
      {
LABEL_38:
        v74 = v51;
      }

      else
      {
        v135 = *v176;
        v136 = v11[9];
        v183 = v11[2];
        v137 = v135 + v136 * (v51 - 1);
        v180 = -v136;
        v166 = v29;
        v138 = (v29 - v51);
        v181 = v135;
        v167 = v136;
        v139 = (v135 + v51 * v136);
        v170 = v73;
        do
        {
          v179 = v51;
          v171 = v139;
          v140 = v139;
          v172 = v138;
          v141 = v138;
          v173 = v137;
          v142 = v137;
          while (1)
          {
            v191 = v141;
            v143 = v183;
            (v183)();
            v143(v194, v142, v10);
            v144 = v188;
            sub_22F7400B0();
            v145 = sub_22F21228C(v144, a5);
            LODWORD(v192) = v146;
            v147 = *v186;
            v148 = v189;
            (*v186)(v144, v189);
            sub_22F7400B0();
            v149 = sub_22F21228C(v144, v195);
            v151 = v150;
            v152 = v148;
            v10 = v190;
            v147(v144, v152);
            if (v151)
            {
              v149 = 0x7FFFFFFFFFFFFFFFLL;
            }

            v153 = *v185;
            (*v185)(v194, v10);
            v153(v193, v10);
            if ((v192 & 1) != 0 || v145 >= v149)
            {
              break;
            }

            a5 = v195;
            v154 = v191;
            if (!v181)
            {
              goto LABEL_134;
            }

            v155 = *v184;
            v156 = v182;
            (*v184)(v182, v140, v10);
            swift_arrayInitWithTakeFrontToBack();
            v155(v142, v156, v10);
            v142 += v180;
            v140 += v180;
            v157 = __CFADD__(v154, 1);
            v141 = (v154 + 1);
            if (v157)
            {
              goto LABEL_93;
            }
          }

          a5 = v195;
LABEL_93:
          v51 = v179 + 1;
          v137 = v173 + v167;
          v138 = (v172 - 1);
          v139 = &v171[v167];
          v74 = v170;
        }

        while ((v179 + 1) != v170);
        v29 = v166;
      }

      v75 = v175;
      if (v74 < v29)
      {
        goto LABEL_129;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v170 = v74;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v75 = sub_22F13D970(0, *(v75 + 2) + 1, 1, v75);
      }

      v78 = *(v75 + 2);
      v77 = *(v75 + 3);
      v79 = v78 + 1;
      if (v78 >= v77 >> 1)
      {
        v75 = sub_22F13D970((v77 > 1), v78 + 1, 1, v75);
      }

      *(v75 + 2) = v79;
      v80 = v75 + 32;
      v81 = &v75[16 * v78 + 32];
      v82 = v170;
      *v81 = v29;
      *(v81 + 1) = v82;
      v192 = *v165;
      if (!v192)
      {
        goto LABEL_137;
      }

      v175 = v75;
      if (v78)
      {
        v11 = v174;
        while (1)
        {
          v83 = v79 - 1;
          if (v79 >= 4)
          {
            break;
          }

          if (v79 == 3)
          {
            v84 = *(v75 + 4);
            v85 = *(v75 + 5);
            v94 = __OFSUB__(v85, v84);
            v86 = v85 - v84;
            v87 = v94;
LABEL_60:
            if (v87)
            {
              goto LABEL_119;
            }

            v100 = &v75[16 * v79];
            v102 = *v100;
            v101 = *(v100 + 1);
            v103 = __OFSUB__(v101, v102);
            v104 = v101 - v102;
            v105 = v103;
            if (v103)
            {
              goto LABEL_121;
            }

            v106 = &v80[16 * v83];
            v108 = *v106;
            v107 = *(v106 + 1);
            v94 = __OFSUB__(v107, v108);
            v109 = v107 - v108;
            if (v94)
            {
              goto LABEL_124;
            }

            if (__OFADD__(v104, v109))
            {
              goto LABEL_126;
            }

            if (v104 + v109 >= v86)
            {
              if (v86 < v109)
              {
                v83 = v79 - 2;
              }

              goto LABEL_82;
            }

            goto LABEL_75;
          }

          if (v79 < 2)
          {
            goto LABEL_127;
          }

          v110 = &v75[16 * v79];
          v112 = *v110;
          v111 = *(v110 + 1);
          v94 = __OFSUB__(v111, v112);
          v104 = v111 - v112;
          v105 = v94;
LABEL_75:
          if (v105)
          {
            goto LABEL_123;
          }

          v113 = &v80[16 * v83];
          v115 = *v113;
          v114 = *(v113 + 1);
          v94 = __OFSUB__(v114, v115);
          v116 = v114 - v115;
          if (v94)
          {
            goto LABEL_125;
          }

          if (v116 < v104)
          {
            goto LABEL_4;
          }

LABEL_82:
          if (v83 - 1 >= v79)
          {
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
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
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
            goto LABEL_133;
          }

          v121 = *v176;
          if (!*v176)
          {
            goto LABEL_135;
          }

          v122 = &v80[16 * v83 - 16];
          v123 = *v122;
          v124 = &v80[16 * v83];
          v125 = *(v124 + 1);
          v126 = v11[9];
          v127 = v121 + v126 * *v122;
          v128 = v121 + v126 * *v124;
          v129 = v121 + v126 * v125;
          v130 = v195;

          v131 = v127;
          v132 = v177;
          sub_22F11DCEC(v131, v128, v129, v192, v130);
          if (v132)
          {

            v196 = v175;
            goto LABEL_109;
          }

          if (v125 < v123)
          {
            goto LABEL_114;
          }

          v75 = v175;
          v133 = *(v175 + 2);
          if (v83 > v133)
          {
            goto LABEL_115;
          }

          *v122 = v123;
          *(v122 + 1) = v125;
          if (v83 >= v133)
          {
            goto LABEL_116;
          }

          v177 = 0;
          v79 = v133 - 1;
          memmove(&v80[16 * v83], v124 + 16, 16 * (v133 - 1 - v83));
          *(v75 + 2) = v133 - 1;
          v134 = v133 > 2;
          v10 = v190;
          v11 = v174;
          if (!v134)
          {
            goto LABEL_4;
          }
        }

        v88 = &v80[16 * v79];
        v89 = *(v88 - 8);
        v90 = *(v88 - 7);
        v94 = __OFSUB__(v90, v89);
        v91 = v90 - v89;
        if (v94)
        {
          goto LABEL_117;
        }

        v93 = *(v88 - 6);
        v92 = *(v88 - 5);
        v94 = __OFSUB__(v92, v93);
        v86 = v92 - v93;
        v87 = v94;
        if (v94)
        {
          goto LABEL_118;
        }

        v95 = &v75[16 * v79];
        v97 = *v95;
        v96 = *(v95 + 1);
        v94 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v94)
        {
          goto LABEL_120;
        }

        v94 = __OFADD__(v86, v98);
        v99 = v86 + v98;
        if (v94)
        {
          goto LABEL_122;
        }

        if (v99 >= v91)
        {
          v117 = &v80[16 * v83];
          v119 = *v117;
          v118 = *(v117 + 1);
          v94 = __OFSUB__(v118, v119);
          v120 = v118 - v119;
          if (v94)
          {
            goto LABEL_128;
          }

          if (v86 < v120)
          {
            v83 = v79 - 2;
          }

          goto LABEL_82;
        }

        goto LABEL_60;
      }

      v11 = v174;
LABEL_4:
      v28 = v176[1];
      v29 = v170;
      a5 = v195;
      if (v170 >= v28)
      {
        v196 = v175;
        goto LABEL_106;
      }
    }
  }

  swift_bridgeObjectRetain_n();
LABEL_106:
  v158 = v177;
  v159 = *v165;
  if (*v165)
  {

    sub_22F11E4A4(&v196, v159, v176, a5);
    if (v158)
    {

LABEL_109:
      swift_bridgeObjectRelease_n();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
LABEL_138:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
  }

  return result;
}

uint64_t sub_22F11F3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v63 = a5;
  v62 = sub_22F7400A0();
  v9 = *(v62 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v62);
  v61 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_22F7400D0();
  v12 = *(*(v68 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v68);
  v55 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v60 = &v45 - v16;
  result = MEMORY[0x28223BE20](v15);
  v67 = &v45 - v19;
  v47 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v18 + 16);
    v21 = v18 + 16;
    v23 = *(v21 + 56);
    v57 = (v9 + 8);
    v58 = v22;
    v56 = (v21 - 8);
    v59 = v21;
    v24 = v20 + v23 * (a3 - 1);
    v52 = -v23;
    v53 = (v21 + 16);
    v25 = a1 - a3;
    v54 = v20;
    v46 = v23;
    v26 = v20 + v23 * a3;
    v27 = v61;
LABEL_5:
    v50 = v24;
    v51 = a3;
    v48 = v26;
    v49 = v25;
    v65 = v25;
    while (1)
    {
      v28 = v68;
      v29 = v58;
      v58();
      v30 = v60;
      (v29)(v60, v24, v28);
      sub_22F7400B0();
      v31 = v63;
      v64 = sub_22F21228C(v27, v63);
      v66 = v32;
      v33 = *v57;
      v34 = v62;
      (*v57)(v27, v62);
      sub_22F7400B0();
      v35 = sub_22F21228C(v27, v31);
      LOBYTE(v31) = v36;
      v33(v27, v34);
      if (v31)
      {
        v37 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v35;
      }

      v38 = *v56;
      v39 = v30;
      v40 = v68;
      (*v56)(v39, v68);
      result = (v38)(v67, v40);
      if ((v66 & 1) != 0 || v64 >= v37)
      {
LABEL_4:
        a3 = v51 + 1;
        v24 = v50 + v46;
        v25 = v49 - 1;
        v26 = v48 + v46;
        if (v51 + 1 == v47)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v54)
      {
        break;
      }

      v41 = *v53;
      v42 = v55;
      v43 = v68;
      (*v53)(v55, v26, v68);
      swift_arrayInitWithTakeFrontToBack();
      result = (v41)(v24, v42, v43);
      v24 += v52;
      v26 += v52;
      if (__CFADD__(v65++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22F11F7A4(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_22F742000();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22F7400D0();
        v8 = sub_22F741200();
        *(v8 + 16) = v7;
      }

      v9 = *(sub_22F7400D0() - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;

      sub_22F11E664(v10, v11, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_22F11F3E0(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_22F11F928(void **a1, uint64_t a2)
{
  v4 = *(sub_22F7400D0() - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_22F3F642C(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  sub_22F11F7A4(v8, a2);

  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_22F11FA28(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22F120634(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22F11FA78(uint64_t a1, void *a2, uint64_t a3)
{
  v91 = sub_22F7400A0();
  v6 = *(v91 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v91);
  v89 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_22F7400D0();
  v90 = *(v88 - 8);
  v9 = *(v90 + 64);
  MEMORY[0x28223BE20](v88);
  v87 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22F7404A0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22F7404C0();
  v71 = *(v16 - 8);
  v17 = *(v71 + 64);
  MEMORY[0x28223BE20](v16);
  v74 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_22F740B90();
  v72 = *(v73 - 8);
  v19 = *(v72 + 64);
  MEMORY[0x28223BE20](v73);
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_slowAlloc();
  *v22 = 0;
  v23 = *(a3 + 16);
  v78 = a3;
  v76 = a3 + 16;
  v23(a3, v22, 0.0);
  v77 = v22;
  if (*v22)
  {
    return MEMORY[0x277D84F90];
  }

  v68 = v16;
  v24 = [a2 workingContext];
  v25 = [v24 loggingConnection];

  sub_22F740BA0();
  if (!a1)
  {
LABEL_6:
    (*(v78 + 16))(v78, v77, 1.0);
    (*(v72 + 8))(v21, v73);
    return MEMORY[0x277D84F90];
  }

  v93 = v6;
  v70 = v21;
  v26 = [a2 workingContext];
  v69 = [v26 photoLibrary];

  v95 = MEMORY[0x277D84FA0];
  sub_22F740670();
  v27 = sub_22F740660();
  v28 = v27;
  v29 = *(v27 + 16);
  if (v29)
  {
    v30 = sub_22F10B7CC(*(v27 + 16), 0, &qword_27DAB04D8, &unk_22F7707E8, MEMORY[0x277D3C148]);
    v31 = sub_22F11B504(&v94, (v30 + ((*(v93 + 80) + 32) & ~*(v93 + 80))), v29, v28, MEMORY[0x277D3C148]);
    sub_22F0FF590();
    if (v31 != v29)
    {
      __break(1u);
      goto LABEL_6;
    }
  }

  else
  {
  }

  (*(v12 + 104))(v15, *MEMORY[0x277D3C490], v11);
  v33 = v69;
  sub_22F740490();

  (*(v12 + 8))(v15, v11);
  v34 = sub_22F7404B0();
  v86 = sub_22F11D84C(v33, v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB04D8, &unk_22F7707E8);
  v35 = v93;
  v36 = *(v93 + 72);
  v37 = (*(v93 + 80) + 32) & ~*(v93 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_22F7707D0;
  v39 = *(v35 + 104);
  v40 = v91;
  v39(v38 + v37, *MEMORY[0x277D3C128], v91);
  v39(v38 + v37 + v36, *MEMORY[0x277D3C140], v40);
  v39(v38 + v37 + 2 * v36, *MEMORY[0x277D3C130], v40);
  v94 = v34;

  sub_22F11F928(&v94, v38);
  swift_setDeallocating();
  v41 = *(v38 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();

  v42 = v94;
  v85 = v94[2];
  if (v85)
  {
    v43 = 0;
    v82 = v94 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
    v81 = v90 + 16;
    v80 = v90 + 8;
    v44 = a1;
    v45 = MEMORY[0x277D84FA0];
    v79 = (v93 + 8);
    v84 = a2;
    v75 = a1;
    v83 = v94;
    while (v43 < v42[2])
    {
      v46 = v90;
      v47 = &v82[*(v90 + 72) * v43];
      v48 = *(v90 + 16);
      v49 = v87;
      v93 = v45;
      v50 = v88;
      v48(v87, v47, v88);
      sub_22F740080();
      sub_22F740070();
      v51 = sub_22F7400C0();
      v92 = sub_22F740060();
      v52 = v89;
      sub_22F7400B0();
      (*(v46 + 8))(v49, v50);
      sub_22F740090();
      (*v79)(v52, v91);
      v53 = objc_allocWithZone(PGStoryPromptSuggestionQuestion);
      v54 = sub_22F740DF0();

      v55 = sub_22F740DF0();

      v56 = sub_22F740DF0();
      v45 = v93;

      v57 = [v53 initWithPromptId:v54 promptText:v55 isValidated:v51 & 1 assetCount:v92 source:v56 mcAvailabilityStatus:v86 localFactoryScore:1.0];

      v58 = v84;
      v59 = v57;
      sub_22F109D4C(v45);
      v60 = sub_22F741410();

      LODWORD(v56) = [v58 shouldAddQuestion:v59 toAlreadyGeneratedQuestions:v60];

      if (v56)
      {
        v61 = v59;
        sub_22F10C720(&v94, v61, type metadata accessor for PGStoryPromptSuggestionQuestion, &qword_27DAB07B0, &qword_22F770910, type metadata accessor for PGStoryPromptSuggestionQuestion);

        v45 = v95;
        if ((v95 & 0xC000000000000001) != 0)
        {
          v62 = sub_22F741A00();
        }

        else
        {
          v62 = *(v95 + 16);
        }

        v63 = v75;
        v42 = v83;
        v64 = v77;
        (*(v78 + 16))(v78, v77, v62 / v44);
        if (*v64 == 1)
        {

          goto LABEL_26;
        }

        if ((v45 & 0xC000000000000001) != 0)
        {
          v65 = sub_22F741A00();

          if (v65 >= v63)
          {
            goto LABEL_23;
          }
        }

        else
        {

          if (*(v45 + 16) >= v63)
          {
LABEL_23:

            goto LABEL_26;
          }
        }
      }

      else
      {

        v42 = v83;
      }

      if (v85 == ++v43)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  v45 = MEMORY[0x277D84FA0];
LABEL_26:
  (*(v78 + 16))(v78, v77, 1.0);
  v66 = sub_22F10AA88(v45, sub_22F11A068);

  if (v66 < 0 || (v66 & 0x4000000000000000) != 0)
  {
LABEL_31:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0540, &qword_22F7707F8);
    v67 = sub_22F741D50();

    goto LABEL_29;
  }

  sub_22F742060();

  v67 = v66;
LABEL_29:

  (*(v71 + 8))(v74, v68);
  (*(v72 + 8))(v70, v73);
  return v67;
}

uint64_t sub_22F12057C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F1205EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22F120634(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_22F12067C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F1206E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22F120744(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F1207AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_22F120814(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_22F740B90() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_22F12094C;

  return sub_22F10A508(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_22F12094C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_22F120ADC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22F120B4C()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t static PhotosChallengeAlgorithmEvaluator.evaluate(algorithm:experimentName:context:supportedAnsweredQuestions:params:outputFilePath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v49 = a4;
  v47 = a3;
  v48 = a9;
  v46 = type metadata accessor for PhotosChallengeEvaluationResult();
  v16 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v45 = (&v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(a2 + 24))(a6, a5, a7, a8, a10, a1, a2);
  v44 = (*(a2 + 8))(a1, a2);
  v50 = v19;
  if (a6 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F741A00())
  {
    v21 = 0;
    v22 = 0;
    v51 = a6 & 0xFFFFFFFFFFFFFF8;
    v23 = 0.0;
    v24 = 0.0;
    v25 = 0.0;
    v26 = 0.0;
    while (1)
    {
      if ((a6 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x2319016F0](v21, a6);
      }

      else
      {
        if (v21 >= *(v51 + 16))
        {
          goto LABEL_30;
        }

        v28 = *(a6 + 8 * v21 + 32);
      }

      v29 = v28;
      v30 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (*(v18 + 16) && (v31 = sub_22F122A80(v28), (v32 & 1) != 0))
      {
        v33 = *(*(v18 + 56) + 2 * v31);
        if (v33 > 4)
        {
          goto LABEL_27;
        }

        if (((1 << v33) & 0x13) != 0)
        {

          v27 = __OFADD__(v22++, 1);
          if (v27)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v34 = [v29 state];
          if (v34 == 3)
          {

            if (v33 == 3)
            {
              v25 = v25 + 1.0;
            }

            else
            {
              v24 = v24 + 1.0;
            }
          }

          else
          {
            if (v34 != 2)
            {
              LOWORD(v33) = v34;
LABEL_27:

              sub_22F122AD0();
              swift_allocError();
              *v35 = v33;
              *(v35 + 2) = 0;
              swift_willThrow();
            }

            if (v33 == 2)
            {
              v26 = v26 + 1.0;
            }

            else
            {
              v23 = v23 + 1.0;
            }
          }
        }
      }

      else
      {

        v27 = __OFADD__(v22++, 1);
        if (v27)
        {
          goto LABEL_29;
        }
      }

      ++v21;
      if (v30 == i)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  v22 = 0;
LABEL_34:
  v38 = v45;
  v37 = v46;
  v39 = v45 + *(v46 + 24);
  sub_22F73FAF0();

  v40 = v50;
  *v38 = v44;
  v38[1] = v40;
  v41 = v48;
  v42 = v49;
  v38[2] = v47;
  v38[3] = v42;
  *(v38 + *(v37 + 28)) = v22;
  sub_22F13A714(v38, v41, type metadata accessor for PhotosChallengeEvaluationResult);
}