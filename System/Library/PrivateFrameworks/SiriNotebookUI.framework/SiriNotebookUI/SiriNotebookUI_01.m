unint64_t sub_26847C250()
{
  result = qword_28027D940;
  if (!qword_28027D940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D948, &qword_2684B7BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D940);
  }

  return result;
}

unint64_t sub_26847C330()
{
  result = qword_28027D970;
  if (!qword_28027D970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D968, &qword_2684B7C08);
    sub_26847C3E8();
    sub_26846ACF0(&qword_28027D998, &qword_28027D9A0, &qword_2684B7C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D970);
  }

  return result;
}

unint64_t sub_26847C3E8()
{
  result = qword_28027D978;
  if (!qword_28027D978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D980, &qword_2684B7C10);
    sub_26846ACF0(&qword_28027D988, &qword_28027D990, &qword_2684B8CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D978);
  }

  return result;
}

uint64_t sub_26847C4E0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  v28 = *(v7 + 40);
  v9 = sub_2684B4F84();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  (*(v5 + 16))(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v17 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *&v19 = *(a1 + 16);
  *(&v19 + 1) = v8;
  *&v20 = *(a1 + 32);
  *(&v20 + 1) = v28;
  v24 = v20;
  v25 = v19;
  *(v18 + 16) = v19;
  *(v18 + 32) = v20;
  (*(v5 + 32))(v18 + v17, v26, a1);
  v30 = v25;
  v31 = v24;
  v32 = v27;
  sub_2684B4F74();
  swift_getWitnessTable();
  v21 = v10[2];
  v21(v16, v14, v9);
  v22 = v10[1];
  v22(v14, v9);
  v21(v29, v16, v9);
  return (v22)(v16, v9);
}

uint64_t sub_26847C798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2684B5464();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = a2;
  v17[1] = a3;
  v17[2] = a4;
  v17[3] = a5;
  v15 = a1 + *(type metadata accessor for DIButton() + 56);
  sub_2684B5294();
  sub_268474360();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_26847C8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v22[0] = v13;
  v22[1] = v14;
  v22[2] = v15;
  v22[3] = v16;
  v17 = a1 + *(type metadata accessor for DIButton() + 52);
  v18 = *(v17 + 8);
  (*v17)();
  v19 = v6[2];
  v19(v12, v10, a2);
  v20 = v6[1];
  v20(v10, a2);
  v19(a3, v12, a2);
  return (v20)(v12, a2);
}

uint64_t sub_26847CA18()
{
  swift_getWitnessTable();

  return sub_2684B4BC4();
}

unint64_t sub_26847CA78(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_26847D10C();
    if (v4 <= 0x3F)
    {
      result = sub_2684B52B4();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_26847CB18(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_2684B52B4();
  v9 = *(v8 - 8);
  v10 = *(v6 + 64);
  v11 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v14 = ((v11 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 < 2)
    {
LABEL_31:
      if (v7 == v13)
      {
        v22 = *(v6 + 48);

        return v22(a1, v7, v5);
      }

      else
      {
        v23 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v12 & 0x80000000) != 0)
        {
          v25 = *(v9 + 48);

          return v25((v23 + v11 + 16) & ~v11);
        }

        else
        {
          v24 = *v23;
          if (v24 >= 0xFFFFFFFF)
          {
            LODWORD(v24) = -1;
          }

          return (v24 + 1);
        }
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_31;
  }

LABEL_18:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = v14;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v13 + (v21 | v19) + 1;
}

void sub_26847CDBC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v25 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_2684B52B4() - 8);
  v11 = *(v8 + 64);
  v12 = *(v10 + 80);
  if (v9 <= *(v10 + 84))
  {
    v13 = *(v10 + 84);
  }

  else
  {
    v13 = v9;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((v12 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v12) + *(v10 + 64);
  if (a3 <= v14)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v14 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v14 < a2)
  {
    v17 = ~v14 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_52:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v9 == v14)
  {
    v22 = *(v25 + 56);

    v22(a1, a2, v9, v7);
  }

  else
  {
    v23 = (&a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8);
    if ((v13 & 0x80000000) != 0)
    {
      v24 = *(v10 + 56);

      v24((v23 + v12 + 16) & ~v12, a2);
    }

    else if ((a2 & 0x80000000) != 0)
    {
      *v23 = a2 & 0x7FFFFFFF;
      v23[1] = 0;
    }

    else
    {
      *v23 = (a2 - 1);
    }
  }
}

unint64_t sub_26847D10C()
{
  result = qword_28027DA38;
  if (!qword_28027DA38)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_28027DA38);
  }

  return result;
}

uint64_t sub_26847D15C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26847D1A0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(type metadata accessor for DIButton() - 8);
  v6 = v0 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_26847C798(v6, v1, v2, v3, v4);
}

uint64_t sub_26847D244@<X0>(char *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  return sub_26847C8B0(v1[6], v1[3], a1);
}

uint64_t sub_26847D254@<X0>(uint64_t a1@<X8>)
{
  sub_2684B3D34();
  sub_2684B4894();
  if (qword_28027CF30 != -1)
  {
    swift_once();
  }

  v2 = qword_280282928;
  result = sub_2684B4B94();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t type metadata accessor for PunchoutToNotebookItemModifier()
{
  result = qword_28027DA40;
  if (!qword_28027DA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26847D39C()
{
  sub_26847D480(319, &qword_28027DA50, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2684B52B4();
    if (v1 <= 0x3F)
    {
      sub_26847D480(319, &qword_28027D630, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26847D480(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_26847D4EC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v51 = a1;
  v58 = a2;
  v4 = sub_2684B43E4();
  v5 = *(v4 - 8);
  v54 = v4;
  v55 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DA58, &qword_2684B7D40);
  v56 = *(v8 - 8);
  v57 = v8;
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v8);
  v49 = v44 - v10;
  v11 = type metadata accessor for PunchoutToNotebookItemModifier();
  v12 = v11 - 8;
  v45 = *(v11 - 8);
  v44[1] = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DA60, &qword_2684B7D48);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v44 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DA68, &unk_2684B7D50);
  v52 = *(v19 - 8);
  v53 = v19;
  v20 = *(v52 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = v44 - v21;
  v23 = (v2 + *(v12 + 36));
  v48 = *v23;
  v47 = *(v23 + 1);
  v62 = v48;
  v63 = v47;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D690, &qword_2684B72F0);
  sub_2684B4F54();
  v24 = v59;
  v25 = v60;
  v26 = v61;
  v27 = swift_allocObject();
  *(v27 + 16) = v24;
  *(v27 + 24) = v25;
  *(v27 + 32) = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_26847E07C;
  *(v28 + 24) = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DA70, &qword_2684B7D60);
  (*(*(v29 - 8) + 16))(v18, v51, v29);
  v30 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DA78, &qword_2684B7D68) + 36)];
  *v30 = sub_26847E088;
  v30[1] = v28;
  v18[*(v15 + 36)] = 0;
  sub_26847E0B4(v3, v14);
  v31 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v32 = swift_allocObject();
  sub_26847E118(v14, v32 + v31);
  v33 = sub_26847E17C();
  v51 = v22;
  v34 = v33;
  sub_2684B4C24();

  sub_26847E318(v18);
  v35 = v50;
  sub_2684B43D4();
  sub_26847E0B4(v3, v14);
  v36 = v49;
  v37 = swift_allocObject();
  sub_26847E118(v14, v37 + v31);
  v38 = swift_allocObject();
  *(v38 + 16) = sub_26847E488;
  *(v38 + 24) = v37;
  v39 = v54;
  sub_2684B5044();

  (*(v55 + 8))(v35, v39);
  LOBYTE(v59) = v48;
  v60 = v47;
  sub_2684B4F34();
  if (v62)
  {
    sub_2684B4414();
  }

  else
  {
    sub_2684B4404();
  }

  v59 = v15;
  v60 = v34;
  swift_getOpaqueTypeConformance2();
  sub_26846ACF0(&qword_28027DAB8, &qword_28027DA58, &qword_2684B7D40);
  v40 = v53;
  v41 = v57;
  v42 = v51;
  sub_2684B4DB4();
  (*(v56 + 8))(v36, v41);
  return (*(v52 + 8))(v42, v40);
}

void sub_26847DAD4()
{
  v1 = v0;
  v2 = sub_2684B5464();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PunchoutToNotebookItemModifier();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v44 - v13;
  v15 = v1[1];
  if (v15)
  {
    v46 = v12;
    v47 = v3;
    v48 = v2;
    v16 = *v1;
    if (v1[3])
    {
      v17 = v1[2];
      v18 = sub_2684B5544();
    }

    else
    {
      v18 = 0;
    }

    v26 = [objc_allocWithZone(MEMORY[0x277CD4058]) initWithTitle:0 content:0 itemType:0 status:0 location:0 locationSearchType:0 dateTime:0 dateSearchType:0 temporalEventTriggerTypes:0 taskPriority:0 notebookItemIdentifier:v18];

    v27 = v26;
    v28 = [v27 _metadata];
    if (v28)
    {
      v29 = v28;
      [v28 setBackgroundLaunch_];
    }

    v30 = [v27 _metadata];

    if (v30)
    {
      v31 = sub_2684B5544();
      [v30 setLaunchId_];
    }

    sub_26847E54C();
    sub_2684B4284();

    sub_2684B4274();
    v45 = sub_2684B5754();

    if (qword_28027CF20 != -1)
    {
      swift_once();
    }

    v32 = sub_2684B4354();
    __swift_project_value_buffer(v32, qword_280282910);
    sub_26847E0B4(v1, v14);

    v33 = sub_2684B4334();
    v34 = sub_2684B56F4();

    if (os_log_type_enabled(v33, v34))
    {
      v44 = v16;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v49 = v36;
      *v35 = 136315394;
      if (*(v14 + 3))
      {
        v37 = *(v14 + 2);
        v38 = *(v14 + 3);
      }

      else
      {
        v37 = 7104878;
        v38 = 0xE300000000000000;
      }

      sub_26847E4F0(v14);
      v39 = sub_268479394(v37, v38, &v49);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_268479394(v44, v15, &v49);
      _os_log_impl(&dword_26845C000, v33, v34, "Attempting punch out to { itemId: %s, app: %s }", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D61A450](v36, -1, -1);
      MEMORY[0x26D61A450](v35, -1, -1);
    }

    else
    {

      sub_26847E4F0(v14);
    }

    v40 = v47;
    v41 = v1 + *(v46 + 24);
    sub_2684B5294();
    v42 = v45;
    sub_2684B5444();

    (*(v40 + 8))(v6, v48);
  }

  else
  {
    if (qword_28027CF20 != -1)
    {
      swift_once();
    }

    v19 = sub_2684B4354();
    __swift_project_value_buffer(v19, qword_280282910);
    sub_26847E0B4(v1, v11);
    v20 = sub_2684B4334();
    v21 = sub_2684B56F4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v49 = v23;
      *v22 = 136315138;
      if (*(v11 + 3))
      {
        v24 = *(v11 + 2);
        v25 = *(v11 + 3);
      }

      else
      {
        v24 = 7104878;
        v25 = 0xE300000000000000;
      }

      sub_26847E4F0(v11);
      v43 = sub_268479394(v24, v25, &v49);

      *(v22 + 4) = v43;
      _os_log_impl(&dword_26845C000, v20, v21, "Failed punching out to item due to missing app identifier. { itemId: %s }", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x26D61A450](v23, -1, -1);
      MEMORY[0x26D61A450](v22, -1, -1);
    }

    else
    {

      sub_26847E4F0(v11);
    }
  }
}

uint64_t sub_26847E07C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_26849B618();
}

uint64_t sub_26847E088(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_26847E0B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PunchoutToNotebookItemModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26847E118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PunchoutToNotebookItemModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26847E17C()
{
  result = qword_28027DA80;
  if (!qword_28027DA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DA60, &qword_2684B7D48);
    sub_26847E234();
    sub_26846ACF0(&qword_28027DAA8, &qword_28027DAB0, &unk_2684B9A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DA80);
  }

  return result;
}

unint64_t sub_26847E234()
{
  result = qword_28027DA88;
  if (!qword_28027DA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DA78, &qword_2684B7D68);
    sub_26846ACF0(&qword_28027DA90, &qword_28027DA70, &qword_2684B7D60);
    sub_26846ACF0(&qword_28027DA98, &qword_28027DAA0, &qword_2684B7D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DA88);
  }

  return result;
}

uint64_t sub_26847E318(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DA60, &qword_2684B7D48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_6Tm()
{
  v1 = (type metadata accessor for PunchoutToNotebookItemModifier() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = *(v3 + 8);

  v5 = *(v3 + 24);

  v6 = v1[8];
  v7 = sub_2684B52B4();
  (*(*(v7 - 8) + 8))(v3 + v6, v7);
  v8 = *(v3 + v1[9] + 8);

  return swift_deallocObject();
}

void sub_26847E48C()
{
  v1 = *(type metadata accessor for PunchoutToNotebookItemModifier() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_26847DAD4();
}

uint64_t sub_26847E4F0(uint64_t a1)
{
  v2 = type metadata accessor for PunchoutToNotebookItemModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26847E54C()
{
  result = qword_28027DAC0[0];
  if (!qword_28027DAC0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_28027DAC0);
  }

  return result;
}

void sub_26847E5A4(uint64_t a1)
{
  sub_268467F10();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      sub_26847D10C();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26847E644(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + ((v6 + 9) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 9) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *sub_26847E79C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((v9 + ((v8 + 9) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((v9 + ((v8 + 9) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = (&result[v8 + 9] & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = (&result[v9] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v20 = a2 & 0x7FFFFFFF;
          v20[1] = 0;
        }

        else
        {
          *v20 = a2 - 1;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((v9 + ((v8 + 9) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + ((v8 + 9) & ~v8)) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((v9 + ((v8 + 9) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

uint64_t sub_26847E994()
{
  v1 = sub_2684B47F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *v0;
  if ((v0[1] & 1) == 0)
  {
    v7 = *v0;

    sub_2684B5704();
    v8 = sub_2684B4A24();
    sub_2684B4324();

    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_26846B1E0(v7, 0);
    (*(v2 + 8))(v5, v1);
    return v9[1];
  }

  return result;
}

uint64_t sub_26847EAD4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v1 + *(v6 + 32);
  v11 = *v9;
  v10 = *(v9 + 8);
  v12 = sub_26847E994();
  v11(v12);
  return (*(v4 + 40))(v1 + *(a1 + 28), v8, v3);
}

uint64_t sub_26847EBF8@<X0>(char *a1@<X8>)
{
  v101 = a1;
  v2 = sub_2684B3894();
  v99 = *(v2 - 1);
  v100 = v2;
  v3 = *(v99 + 64);
  MEMORY[0x28223BE20](v2);
  v98 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DB48, &unk_2684B8B40);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v96 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v97 = &v93 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v93 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v93 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v93 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v93 - v20;
  v22 = sub_2684B3E74();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v93 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v94 = &v93 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = (&v93 - v29);
  v31 = *(v23 + 16);
  v95 = v1;
  v31(&v93 - v29, v1, v22);
  v32 = (*(v23 + 88))(v30, v22);
  if (v32 == *MEMORY[0x277D5E148])
  {
    (*(v23 + 96))(v30, v22);
    if (v30[1])
    {
      v33 = *v30;
      v34 = v30[1];

      sub_2684B3854();

      v36 = v99;
      v35 = v100;
    }

    else
    {
      v36 = v99;
      v35 = v100;
      (*(v99 + 56))(v21, 1, 1, v100);
    }

    sub_26847F744(v21, v19);
    if ((*(v36 + 48))(v19, 1, v35) == 1)
    {
      v46 = v21;
LABEL_29:
      sub_26847F7B4(v46);

      v84 = sub_2684B4304();
      return (*(*(v84 - 8) + 56))(v101, 1, 1, v84);
    }

    v47 = v98;
    (*(v36 + 32))(v98, v19, v35);
    v48 = objc_opt_self();
    v49 = sub_2684B3874();
    v50 = [v48 objectIDWithUUID_];

    (*(v36 + 8))(v47, v35);
    sub_26847F7B4(v21);

    v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DB58, &unk_2684B7DE0) + 48);
    v52 = v101;
    *v101 = v50;
    sub_2684B42C4();
LABEL_20:
    v56 = MEMORY[0x277D45248];
    goto LABEL_21;
  }

  if (v32 == *MEMORY[0x277D5E138])
  {
    (*(v23 + 96))(v30, v22);
    if (v30[1])
    {
      v37 = *v30;
      v38 = v30[1];

      sub_2684B3854();

      v40 = v99;
      v39 = v100;
    }

    else
    {
      v40 = v99;
      v39 = v100;
      (*(v99 + 56))(v16, 1, 1, v100);
    }

    sub_26847F744(v16, v13);
    if ((*(v40 + 48))(v13, 1, v39) == 1)
    {
      v46 = v16;
      goto LABEL_29;
    }

    v57 = v98;
    (*(v40 + 32))(v98, v13, v39);
    v58 = objc_opt_self();
    v59 = sub_2684B3874();
    v60 = [v58 objectIDWithUUID_];

    (*(v40 + 8))(v57, v39);
    sub_26847F7B4(v16);

    v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DB58, &unk_2684B7DE0) + 48);
    v52 = v101;
    *v101 = v60;
    v62 = *MEMORY[0x277D45180];
    v63 = sub_2684B42D4();
    (*(*(v63 - 8) + 104))(&v52[v61], v62, v63);
    v64 = *MEMORY[0x277D45168];
    v65 = sub_2684B42E4();
    (*(*(v65 - 8) + 104))(&v52[v61], v64, v65);
    goto LABEL_20;
  }

  if (v32 == *MEMORY[0x277D5E130])
  {
    (*(v23 + 96))(v30, v22);
    if (v30[1])
    {
      v41 = *v30;
      v42 = v30[1];

      v43 = v97;
      sub_2684B3854();

      v45 = v99;
      v44 = v100;
    }

    else
    {
      v45 = v99;
      v44 = v100;
      v43 = v97;
      (*(v99 + 56))(v97, 1, 1, v100);
    }

    v83 = v96;
    sub_26847F744(v43, v96);
    if ((*(v45 + 48))(v83, 1, v44) == 1)
    {
      v46 = v43;
      goto LABEL_29;
    }

    v85 = v98;
    (*(v45 + 32))(v98, v83, v44);
    v86 = objc_opt_self();
    v87 = sub_2684B3874();
    v88 = [v86 objectIDWithUUID_];

    (*(v45 + 8))(v85, v44);
    sub_26847F7B4(v43);

    v89 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DB50, &qword_2684B7DD8) + 48);
    v52 = v101;
    *v101 = v88;
    v90 = *MEMORY[0x277D45140];
    v91 = sub_2684B42A4();
    (*(*(v91 - 8) + 104))(&v52[v89], v90, v91);
    v56 = MEMORY[0x277D451F8];
LABEL_21:
    v66 = *v56;
    v67 = sub_2684B4304();
    v68 = *(v67 - 8);
    (*(v68 + 104))(v52, v66, v67);
    return (*(v68 + 56))(v52, 0, 1, v67);
  }

  if (v32 == *MEMORY[0x277D5E140])
  {
    (*(v23 + 96))(v30, v22);
    v53 = v30[1];
    v52 = v101;
    *v101 = *v30;
    *(v52 + 1) = v53;
    v54 = *MEMORY[0x277D450F0];
    v55 = sub_2684B4294();
    (*(*(v55 - 8) + 104))(v52, v54, v55);
    v56 = MEMORY[0x277D45210];
    goto LABEL_21;
  }

  if (qword_28027CF20 != -1)
  {
    swift_once();
  }

  v70 = sub_2684B4354();
  __swift_project_value_buffer(v70, qword_280282910);
  v71 = v94;
  v31(v94, v95, v22);
  v72 = sub_2684B4334();
  v73 = sub_2684B5704();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v102 = v100;
    *v74 = 136315138;
    v31(v93, v71, v22);
    v75 = sub_2684B5564();
    v76 = v71;
    v77 = v75;
    v79 = v78;
    v80 = *(v23 + 8);
    v80(v76, v22);
    v81 = sub_268479394(v77, v79, &v102);

    *(v74 + 4) = v81;
    _os_log_impl(&dword_26845C000, v72, v73, "Unable to get url for ReminderPunchoutLocation: %s", v74, 0xCu);
    v82 = v100;
    __swift_destroy_boxed_opaque_existential_1(v100);
    MEMORY[0x26D61A450](v82, -1, -1);
    MEMORY[0x26D61A450](v74, -1, -1);
  }

  else
  {

    v80 = *(v23 + 8);
    v80(v71, v22);
  }

  v92 = sub_2684B4304();
  (*(*(v92 - 8) + 56))(v101, 1, 1, v92);
  return (v80)(v30, v22);
}

uint64_t sub_26847F744(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DB48, &unk_2684B8B40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26847F7B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DB48, &unk_2684B8B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ReminderDetail3pView()
{
  result = qword_28027DB68;
  if (!qword_28027DB68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26847F890()
{
  sub_2684B41E4();
  if (v0 <= 0x3F)
  {
    sub_26847F914();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26847F914()
{
  if (!qword_28027DB78)
  {
    sub_2684B3924();
    v0 = sub_2684B43F4();
    if (!v1)
    {
      atomic_store(v0, &qword_28027DB78);
    }
  }
}

uint64_t sub_26847F988@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DB80, &qword_2684B7E68);
  v1 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v3 = &v34 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DB88, &qword_2684B7E70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - v6;
  v8 = sub_2684B4164();
  v10 = v9;
  v63 = MEMORY[0x277CE0BD8];
  v64 = MEMORY[0x277D638E8];
  v11 = swift_allocObject();
  v62 = v11;
  *(v11 + 16) = v8;
  *(v11 + 24) = v10;
  *(v11 + 32) = 0;
  *(v11 + 40) = MEMORY[0x277D84F90];
  sub_26847FD78(v7);
  sub_26846ACF0(&qword_28027DB90, &qword_28027DB88, &qword_2684B7E70);
  v12 = sub_2684B4BC4();
  sub_268467A4C(v7, &qword_28027DB88, &qword_2684B7E70);
  v13 = MEMORY[0x277CE11C8];
  v14 = MEMORY[0x277D63A60];
  v60 = MEMORY[0x277CE11C8];
  v61 = MEMORY[0x277D63A60];
  v59 = v12;
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_2684B41E4();
  sub_2684B4FF4();
  v15 = type metadata accessor for CompletionButton();
  v16 = v15[5];
  v17 = *MEMORY[0x277CE1048];
  v18 = sub_2684B4EE4();
  (*(*(v18 - 8) + 104))(&v3[v16], v17, v18);
  v3[v15[6]] = 0;
  v19 = &v3[v15[7]];
  v36 = 0;
  sub_2684B4F24();
  v20 = v38;
  *v19 = v37;
  *(v19 + 1) = v20;
  v21 = &v3[v15[8]];
  *v21 = swift_getKeyPath();
  v21[40] = 0;
  v22 = &v3[v15[9]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  KeyPath = swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = 1;
  v25 = &v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DB98, &qword_2684B7EF8) + 36)];
  *v25 = KeyPath;
  v25[1] = sub_268473F14;
  v25[2] = v24;
  LOBYTE(KeyPath) = sub_2684B4A84();
  sub_2684B4364();
  v26 = &v3[*(v34 + 36)];
  *v26 = KeyPath;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  sub_268480424();
  v31 = sub_2684B4BC4();
  sub_268467A4C(v3, &qword_28027DB80, &qword_2684B7E68);
  v39 = v13;
  v40 = v14;
  v37 = v31;
  v32 = v35;
  sub_2684B5264();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DBB8, &qword_2684B7F08);
  *(v32 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_26847FD78@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v63 = type metadata accessor for LocationTriggerTextView();
  v2 = *(v63 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v63);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DBC0, &qword_2684B7F10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v57 = &v53 - v8;
  v60 = sub_2684B4084();
  v58 = *(v60 - 8);
  v9 = *(v58 + 64);
  MEMORY[0x28223BE20](v60);
  v53 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DBC8, &qword_2684B7F18);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v61 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v53 - v15;
  v17 = type metadata accessor for TemporalTriggerView();
  v18 = *(v17 - 8);
  v54 = v17;
  v55 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DBD0, &qword_2684B7F20);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v53 - v24;
  v26 = sub_2684B40B4();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DBD8, &qword_2684B7F28);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v56 = &v53 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v53 - v35;
  v59 = v1;
  sub_2684B40D4();
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_268467A4C(v25, &qword_28027DBD0, &qword_2684B7F20);
    v37 = 1;
    v38 = v54;
  }

  else
  {
    v39 = *(v27 + 32);
    v39(v30, v25, v26);
    v39(v21, v30, v26);
    v40 = v54;
    v21[*(v54 + 20)] = 0;
    sub_268480598(v21, v36, type metadata accessor for TemporalTriggerView);
    v37 = 0;
    v38 = v40;
  }

  (*(v55 + 56))(v36, v37, 1, v38);
  v41 = v57;
  sub_2684B40C4();
  v42 = v58;
  v43 = v60;
  if ((*(v58 + 48))(v41, 1, v60) == 1)
  {
    sub_268467A4C(v41, &qword_28027DBC0, &qword_2684B7F10);
    v44 = 1;
  }

  else
  {
    v45 = v53;
    (*(v42 + 32))(v53, v41, v43);
    (*(v42 + 16))(v5, v45, v43);
    v64 = sub_2684B4E54();
    v46 = sub_2684B44B4();
    (*(v42 + 8))(v45, v43);
    v47 = v63;
    v5[*(v63 + 20)] = 0;
    *&v5[*(v47 + 24)] = v46;
    sub_268480598(v5, v16, type metadata accessor for LocationTriggerTextView);
    v44 = 0;
  }

  (*(v2 + 56))(v16, v44, 1, v63);
  v48 = v56;
  sub_26846A6DC(v36, v56, &qword_28027DBD8, &qword_2684B7F28);
  v49 = v61;
  sub_26846A6DC(v16, v61, &qword_28027DBC8, &qword_2684B7F18);
  v50 = v62;
  sub_26846A6DC(v48, v62, &qword_28027DBD8, &qword_2684B7F28);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DBE0, &qword_2684B7F30);
  sub_26846A6DC(v49, v50 + *(v51 + 48), &qword_28027DBC8, &qword_2684B7F18);
  sub_268467A4C(v16, &qword_28027DBC8, &qword_2684B7F18);
  sub_268467A4C(v36, &qword_28027DBD8, &qword_2684B7F28);
  sub_268467A4C(v49, &qword_28027DBC8, &qword_2684B7F18);
  return sub_268467A4C(v48, &qword_28027DBD8, &qword_2684B7F28);
}

unint64_t sub_268480424()
{
  result = qword_28027DBA0;
  if (!qword_28027DBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DB80, &qword_2684B7E68);
    sub_2684804B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DBA0);
  }

  return result;
}

unint64_t sub_2684804B0()
{
  result = qword_28027DBA8;
  if (!qword_28027DBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DB98, &qword_2684B7EF8);
    sub_2684806E8(&qword_28027DBB0, type metadata accessor for CompletionButton);
    sub_26846ACF0(&qword_28027D6D8, &qword_28027D6E0, &qword_2684B7F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DBA8);
  }

  return result;
}

uint64_t sub_268480598(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_268480600()
{
  result = qword_28027DBE8;
  if (!qword_28027DBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DBB8, &qword_2684B7F08);
    sub_2684806E8(&qword_28027DBF0, MEMORY[0x277D63D08]);
    sub_26846ACF0(&qword_28027DBF8, &qword_28027DC00, &qword_2684B7F38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DBE8);
  }

  return result;
}

uint64_t sub_2684806E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for NoteDetail3pView()
{
  result = qword_28027DC08;
  if (!qword_28027DC08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2684807A4()
{
  sub_2684B3EF4();
  if (v0 <= 0x3F)
  {
    sub_268480848();
    if (v1 <= 0x3F)
    {
      sub_2684808A0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_268480848()
{
  if (!qword_28027DC18)
  {
    sub_2684B3EA4();
    v0 = sub_2684B57A4();
    if (!v1)
    {
      atomic_store(v0, &qword_28027DC18);
    }
  }
}

void sub_2684808A0()
{
  if (!qword_28027DC20)
  {
    v0 = sub_2684B57A4();
    if (!v1)
    {
      atomic_store(v0, &qword_28027DC20);
    }
  }
}

uint64_t sub_26848090C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v72 = a1;
  v69 = sub_2684B5304();
  v68 = *(v69 - 8);
  v3 = *(v68 + 64);
  MEMORY[0x28223BE20](v69);
  v67 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D460, &unk_2684B6C80);
  v5 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v63 = &v63 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D468, &qword_2684B7FC0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v71 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v70 = &v63 - v11;
  v12 = sub_2684B54A4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DC28, &qword_2684B7FC8);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v66 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v63 - v21;
  v23 = type metadata accessor for NoteDetail3pView();
  if (*(v1 + v23[6]) == 1 && (v24 = sub_2684B3EE4(), v25))
  {
    v85 = MEMORY[0x277D837D0];
    v86 = MEMORY[0x277D63F80];
    v82 = v24;
    v83 = v25;
    sub_2684B5494();
    (*(v13 + 32))(v22, v16, v12);
    (*(v13 + 56))(v22, 0, 1, v12);
  }

  else
  {
    (*(v13 + 56))(v22, 1, 1, v12);
  }

  v26 = sub_2684B3ED4();
  v28 = sub_26846D588(v26, v27);

  v64 = v22;
  if (v28)
  {
    v82 = sub_2684B3ED4();
    v83 = v29;
    sub_26846D6EC();
    v30 = sub_2684B4BA4();
    v32 = v31;
    v34 = v33;
    v36 = v35 & 1;
  }

  else
  {
    v30 = 0;
    v32 = 0;
    v36 = 0;
    v34 = 0;
  }

  v82 = v30;
  v83 = v32;
  v84 = v36;
  v85 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DC30, &qword_2684B7FD0);
  sub_268480FD4();
  v37 = sub_2684B4BC4();
  sub_268481050(v30, v32, v36, v34);
  v90 = MEMORY[0x277CE11C8];
  v91 = MEMORY[0x277D63A60];
  v89 = v37;
  v82 = sub_2684B3EC4();
  v83 = v38;
  sub_26846D6EC();
  v39 = sub_2684B4BA4();
  v41 = v40;
  LOBYTE(v37) = v42;
  v44 = v43;
  v45 = (v2 + v23[7]);
  v46 = *v45;
  v47 = *(v45 + 8);
  KeyPath = swift_getKeyPath();
  v82 = v39;
  v83 = v41;
  v49 = v37 & 1;
  LOBYTE(v84) = v37 & 1;
  v85 = v44;
  v86 = KeyPath;
  v87 = v46;
  v88 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DC40, &qword_2684B8008);
  sub_2684810F8();
  v50 = sub_2684B4BC4();
  sub_26846D468(v39, v41, v49);

  v86 = MEMORY[0x277D63A60];
  v85 = MEMORY[0x277CE11C8];
  v81 = 0;
  v82 = v50;
  v79 = 0u;
  v80 = 0u;
  v78 = 0;
  v77 = 0u;
  v76 = 0u;
  v75 = 0;
  v74 = 0u;
  v73 = 0u;
  v51 = v67;
  sub_2684B52F4();
  v52 = v63;
  (*(v68 + 32))(v63, v51, v69);
  *(v52 + *(v65 + 36)) = 1;
  v53 = v23[5];
  v54 = sub_2684B3EB4();
  v55 = v70;
  sub_26846EA08(v2 + v53, v54, v56, v70);

  sub_268467A4C(v52, &qword_28027D460, &unk_2684B6C80);
  v57 = v64;
  v58 = v66;
  sub_26846A6DC(v64, v66, &qword_28027DC28, &qword_2684B7FC8);
  v59 = v71;
  sub_26846A6DC(v55, v71, &qword_28027D468, &qword_2684B7FC0);
  v60 = v72;
  sub_26846A6DC(v58, v72, &qword_28027DC28, &qword_2684B7FC8);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DC50, &qword_2684B8018);
  sub_26846A6DC(v59, v60 + *(v61 + 48), &qword_28027D468, &qword_2684B7FC0);
  sub_268467A4C(v55, &qword_28027D468, &qword_2684B7FC0);
  sub_268467A4C(v57, &qword_28027DC28, &qword_2684B7FC8);
  sub_268467A4C(v59, &qword_28027D468, &qword_2684B7FC0);
  return sub_268467A4C(v58, &qword_28027DC28, &qword_2684B7FC8);
}

unint64_t sub_268480FD4()
{
  result = qword_28027DC38;
  if (!qword_28027DC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DC30, &qword_2684B7FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DC38);
  }

  return result;
}

uint64_t sub_268481050(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_26846D468(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_268481094@<X0>(uint64_t a1@<X8>)
{
  result = sub_2684B47A4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2684810C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_2684B47B4();
}

unint64_t sub_2684810F8()
{
  result = qword_28027DC48;
  if (!qword_28027DC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DC40, &qword_2684B8008);
    sub_26846ACF0(&qword_28027D308, &qword_28027D2F8, &qword_2684B8010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DC48);
  }

  return result;
}

uint64_t sub_2684811B0(uint64_t a1, int a2)
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

uint64_t sub_2684811F8(uint64_t result, int a2, int a3)
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

uint64_t sub_268481260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = KeyPath;
  *(a3 + 24) = 0;
  swift_bridgeObjectRetain_n();
  sub_26846A6D0(KeyPath, 0);

  return sub_26846B1E0(KeyPath, 0);
}

uint64_t sub_2684812E4@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = sub_2684B5484();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DC68, &qword_2684B80B8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v13 = *v1;
  v12 = v1[1];
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DC70, &qword_2684B80C0);
  sub_26846ACF0(&qword_28027DC78, &qword_28027DC70, &qword_2684B80C0);
  sub_2684B5184();
  (*(v3 + 104))(v6, *MEMORY[0x277D63EC0], v2);
  sub_26846ACF0(&qword_28027DC80, &qword_28027DC68, &qword_2684B80B8);
  v15 = v22;
  sub_2684B4C44();
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
  KeyPath = swift_getKeyPath();
  v17 = swift_getKeyPath();
  v18 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DC88, &qword_2684B8150);
  v20 = v15 + *(result + 36);
  *v20 = 0;
  *(v20 + 8) = KeyPath;
  *(v20 + 16) = 0;
  *(v20 + 24) = v17;
  *(v20 + 32) = 0;
  *(v20 + 40) = v18;
  *(v20 + 48) = 0;
  return result;
}

unint64_t sub_2684815D0()
{
  result = qword_28027DC90;
  if (!qword_28027DC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DC88, &qword_2684B8150);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DC68, &qword_2684B80B8);
    sub_26846ACF0(&qword_28027DC80, &qword_28027DC68, &qword_2684B80B8);
    swift_getOpaqueTypeConformance2();
    sub_26846B18C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DC90);
  }

  return result;
}

uint64_t sub_2684816F8()
{
  sub_2684B4EC4();
  sub_2684B4E84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DC98, &qword_2684B81B8);
  sub_2684817A0();
  sub_2684B4D44();
}

unint64_t sub_2684817A0()
{
  result = qword_28027DCA0;
  if (!qword_28027DCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DC98, &qword_2684B81B8);
    sub_26848182C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DCA0);
  }

  return result;
}

unint64_t sub_26848182C()
{
  result = qword_28027DCA8;
  if (!qword_28027DCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DCB0, &unk_2684B81C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DCA8);
  }

  return result;
}

uint64_t type metadata accessor for ReminderEnvironmentSetupModifier()
{
  result = qword_28027DCB8;
  if (!qword_28027DCB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268481904()
{
  result = sub_2684B3924();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_26848198C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v13[3] = &type metadata for ReminderKitReminderEditor;
  v13[4] = &off_287914B38;
  LOBYTE(v13[0]) = 1;
  v13[1] = [objc_allocWithZone(MEMORY[0x277D44850]) init];
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DCC8, &qword_2684B8270) + 36));
  sub_268481BFC(v13, (v6 + 1));
  *v6 = KeyPath;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DCD0, &qword_2684B8278);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  __swift_destroy_boxed_opaque_existential_1(v13);
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DCD8, &qword_2684B8280) + 36);
  v9 = sub_2684B3924();
  (*(*(v9 - 8) + 16))(v8, v2, v9);
  v10 = *(type metadata accessor for NotebookEnvironmentSetupModifier() + 20);
  v11 = [objc_opt_self() standardUserDefaults];
  v12 = sub_2684B5544();
  LOBYTE(KeyPath) = [v11 BOOLForKey_];

  *(v8 + v10) = KeyPath;
}

uint64_t sub_268481B98(uint64_t a1)
{
  sub_268481BFC(a1, v3);
  sub_268481BFC(v3, &v2);
  sub_268481C60();
  sub_2684B4814();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_268481BFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_268481C60()
{
  result = qword_28027DCE0;
  if (!qword_28027DCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DCE0);
  }

  return result;
}

unint64_t sub_268481CB4()
{
  result = qword_28027DCE8;
  if (!qword_28027DCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DCD8, &qword_2684B8280);
    sub_268481D40();
    sub_268481E24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DCE8);
  }

  return result;
}

unint64_t sub_268481D40()
{
  result = qword_28027DCF0;
  if (!qword_28027DCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DCC8, &qword_2684B8270);
    sub_26846ACF0(&qword_28027DCF8, &qword_28027DCD0, &qword_2684B8278);
    sub_26846ACF0(&qword_28027DD00, &qword_28027DD08, &qword_2684B8288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DCF0);
  }

  return result;
}

unint64_t sub_268481E24()
{
  result = qword_28027CFC0;
  if (!qword_28027CFC0)
  {
    type metadata accessor for NotebookEnvironmentSetupModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027CFC0);
  }

  return result;
}

void sub_268481EC4()
{
  sub_2684883F0(319, &qword_28027DD78, MEMORY[0x277D5E1A8], MEMORY[0x277CE10B8]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

double sub_268481F8C@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D7D0, &qword_2684B7560);
  sub_2684B4F54();
  v3 = type metadata accessor for ReminderView(0);
  v4 = *(v1 + *(v3 + 20));
  v5 = *(v1 + *(v3 + 24));
  v6 = type metadata accessor for ReminderViewInternal(0);
  *(a1 + v6[5]) = v4;
  *(a1 + v6[6]) = v5;
  v7 = a1 + v6[7];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  *(v7 + 16) = swift_getKeyPath();
  *(v7 + 24) = 0;
  *(v7 + 32) = swift_getKeyPath();
  *(v7 + 40) = 0;
  *(v7 + 48) = swift_getKeyPath();
  *(v7 + 56) = 0;
  *(v7 + 104) = sub_268488064;
  *(v7 + 112) = 0;
  if (qword_28027CF08 != -1)
  {
    swift_once();
  }

  v8 = xmmword_28027DD10;
  v9 = qword_28027DD20;
  v10 = unk_28027DD28;
  v11 = qword_28027DD30;
  *(v7 + 64) = xmmword_28027DD10;
  *(v7 + 80) = v9;
  *(v7 + 88) = v10;
  *(v7 + 96) = v11;
  *(v7 + 120) = v8;
  *(v7 + 136) = v9;
  *(v7 + 144) = v10;
  *(v7 + 152) = v11;
  v12 = a1 + v6[8];
  swift_retain_n();
  v13 = sub_2684B4AC4();
  v14 = sub_2684B4AA4();
  KeyPath = swift_getKeyPath();
  v16 = swift_getKeyPath();
  v17 = swift_getKeyPath();
  *v12 = v13;
  *(v12 + 8) = sub_2684880C8;
  *(v12 + 16) = v14;
  *(v12 + 24) = v13;
  *(v12 + 32) = KeyPath;
  *(v12 + 40) = 0;
  *(v12 + 48) = v16;
  *(v12 + 56) = 0;
  *(v12 + 64) = v17;
  *(v12 + 72) = 0;
  v18 = a1 + v6[9];
  *v18 = swift_getKeyPath();
  *(v18 + 40) = 0;
  v19 = a1 + v6[10];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  v20 = (a1 + v6[11]);

  sub_2684B4F24();
  result = v22;
  *v20 = v22;
  *(v20 + 1) = v23;
  return result;
}

uint64_t sub_268482200@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v81 = a1;
  v3 = sub_2684B41E4();
  v77 = *(v3 - 8);
  v78 = v3;
  v4 = *(v77 + 64);
  MEMORY[0x28223BE20](v3);
  v75 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2684B3E74();
  v79 = *(v6 - 8);
  v80 = v6;
  v7 = *(v79 + 64);
  MEMORY[0x28223BE20](v6);
  v74 = (&v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D2E0, &unk_2684B85F0);
  v9 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v11 = &v65 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D330, &qword_2684BAEE0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v65 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DDC0, &qword_2684B8600);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v65 - v18;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DDC8, &qword_2684B8608);
  v66 = *(v68 - 8);
  v20 = *(v66 + 64);
  MEMORY[0x28223BE20](v68);
  v22 = &v65 - v21;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DDD0, &qword_2684B8610);
  v69 = *(v70 - 8);
  v23 = *(v69 + 64);
  MEMORY[0x28223BE20](v70);
  v25 = &v65 - v24;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DDD8, &qword_2684B8618);
  v26 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v28 = &v65 - v27;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DDE0, &qword_2684B8620);
  v29 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v67 = &v65 - v30;
  v31 = sub_2684B4824();
  v72 = v2 + *(type metadata accessor for ReminderViewInternal(0) + 28);
  v32 = *(v72 + 120);
  *v19 = v31;
  *(v19 + 1) = v32;
  v19[16] = 0;
  v33 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DDE8, &qword_2684B8628) + 44)];
  v76 = v2;
  sub_268482B50(v2, v33);
  v34 = *MEMORY[0x277CE09A0];
  v35 = sub_2684B4AE4();
  v36 = *(v35 - 8);
  (*(v36 + 104))(v15, v34, v35);
  (*(v36 + 56))(v15, 0, 1, v35);
  v37 = sub_26846ACF0(&qword_28027DDF0, &qword_28027DDC0, &qword_2684B8600);
  sub_2684B4CA4();
  sub_268467A4C(v15, &qword_28027D330, &qword_2684BAEE0);
  sub_268467A4C(v19, &qword_28027DDC0, &qword_2684B8600);
  v38 = *MEMORY[0x277CDF998];
  v39 = sub_2684B4594();
  (*(*(v39 - 8) + 104))(v11, v38, v39);
  sub_2684884C0(&qword_28027D328, MEMORY[0x277CDFA28]);
  result = sub_2684B5534();
  if (result)
  {
    *&v82 = v16;
    *(&v82 + 1) = v37;
    swift_getOpaqueTypeConformance2();
    sub_26846ACF0(&qword_28027D318, &qword_28027D2E0, &unk_2684B85F0);
    v41 = v68;
    sub_2684B4D34();
    sub_268467A4C(v11, &qword_28027D2E0, &unk_2684B85F0);
    (*(v66 + 8))(v22, v41);
    sub_2684B50B4();
    sub_2684B45F4();
    (*(v69 + 32))(v28, v25, v70);
    v42 = &v28[*(v65 + 36)];
    v43 = v87;
    *(v42 + 4) = v86;
    *(v42 + 5) = v43;
    *(v42 + 6) = v88;
    v44 = v83;
    *v42 = v82;
    *(v42 + 1) = v44;
    v45 = v85;
    *(v42 + 2) = v84;
    *(v42 + 3) = v45;
    v71 = sub_2684B50A4();
    v70 = v46;
    v47 = v67;
    v48 = &v67[*(v73 + 36)];
    v49 = sub_2684B4E64();
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
    v51 = v75;
    MEMORY[0x26D619380](v50);
    v52 = sub_2684B3FC4();
    v54 = v53;
    (*(v77 + 8))(v51, v78);
    v55 = v74;
    *v74 = v52;
    v55[1] = v54;
    v57 = v79;
    v56 = v80;
    (*(v79 + 104))(v55, *MEMORY[0x277D5E148], v80);
    v58 = &v48[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DDF8, &qword_2684B8630) + 36)];
    (*(v57 + 16))(v58, v55, v56);
    v59 = type metadata accessor for RemindersAppPunchoutModifier();
    v60 = &v58[*(v59 + 20)];
    sub_2684B52A4();
    (*(v57 + 8))(v55, v56);
    v61 = &v58[*(v59 + 24)];
    *v61 = swift_getKeyPath();
    v61[8] = 0;
    *v48 = v49;
    v48[8] = 0;
    v62 = &v48[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DE00, &qword_2684B8638) + 36)];
    v63 = v70;
    *v62 = v71;
    v62[1] = v63;
    sub_26846A8C8(v28, v47, &qword_28027DDD8, &qword_2684B8618);
    v64 = *(v72 + 136);
    sub_268488508();
    sub_2684B4C34();
    return sub_268467A4C(v47, &qword_28027DDE0, &qword_2684B8620);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_268482B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DE20, &qword_2684B8640);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v29[-v9];
  v11 = type metadata accessor for CompletionButton();
  v12 = (v11 - 8);
  v13 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v29[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v18 = &v29[-v17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  sub_2684B4FE4();
  v19 = v12[7];
  v20 = *MEMORY[0x277CE1048];
  v21 = sub_2684B4EE4();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  v18[v12[8]] = 0;
  v22 = &v18[v12[9]];
  v29[15] = 0;
  sub_2684B4F24();
  v23 = v30;
  *v22 = v29[16];
  *(v22 + 1) = v23;
  v24 = &v18[v12[10]];
  *v24 = swift_getKeyPath();
  v24[40] = 0;
  v25 = &v18[v12[11]];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  *v10 = sub_2684B48D4();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DE28, &qword_2684B8670);
  sub_268482E4C(a1, &v10[*(v26 + 44)]);
  sub_268488758(v18, v16, type metadata accessor for CompletionButton);
  sub_26846A6DC(v10, v8, &qword_28027DE20, &qword_2684B8640);
  sub_268488758(v16, a2, type metadata accessor for CompletionButton);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DE30, &qword_2684B8678);
  sub_26846A6DC(v8, a2 + *(v27 + 48), &qword_28027DE20, &qword_2684B8640);
  sub_268467A4C(v10, &qword_28027DE20, &qword_2684B8640);
  sub_268489450(v18, type metadata accessor for CompletionButton);
  sub_268467A4C(v8, &qword_28027DE20, &qword_2684B8640);
  return sub_268489450(v16, type metadata accessor for CompletionButton);
}

uint64_t sub_268482E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = type metadata accessor for ReminderViewInternal(0);
  v4 = v3 - 8;
  v70 = *(v3 - 8);
  v5 = *(v70 + 64);
  MEMORY[0x28223BE20](v3);
  v71 = v6;
  v72 = &v69[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DE38, &qword_2684B8680);
  v75 = *(v7 - 8);
  v76 = v7;
  v8 = *(v75 + 64);
  MEMORY[0x28223BE20](v7);
  v73 = &v69[-v9];
  v74 = sub_2684B41E4();
  v10 = *(v74 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v74);
  v13 = &v69[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DE40, &qword_2684B8688);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v79 = &v69[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v77 = &v69[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DE48, &qword_2684B8690);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v69[-v21];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DE50, &qword_2684B8698);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v78 = &v69[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v69[-v28];
  MEMORY[0x28223BE20](v27);
  v31 = &v69[-v30];
  *v22 = sub_2684B48D4();
  *(v22 + 1) = 0;
  v22[16] = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DE58, &qword_2684B86A0);
  sub_268483678(a1, &v22[*(v32 + 44)]);
  v33 = *(a1 + *(v4 + 36) + 128) - (*(a1 + *(v4 + 36) + 136) + *(a1 + *(v4 + 36) + 136));
  sub_2684B50A4();
  v34 = 1;
  sub_2684B45F4();
  sub_26846A8C8(v22, v29, &qword_28027DE48, &qword_2684B8690);
  v35 = &v29[*(v23 + 36)];
  v36 = v99[7];
  v35[4] = v99[6];
  v35[5] = v36;
  v35[6] = v99[8];
  v37 = v99[3];
  *v35 = v99[2];
  v35[1] = v37;
  v38 = v99[5];
  v35[2] = v99[4];
  v35[3] = v38;
  sub_26846A8C8(v29, v31, &qword_28027DE50, &qword_2684B8698);
  sub_2684854A4(v98);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  MEMORY[0x26D619380](v39);
  v40 = sub_2684B41A4();
  (*(v10 + 8))(v13, v74);
  v41 = *(v40 + 16);

  if (v41)
  {
    v42 = v72;
    sub_268488758(a1, v72, type metadata accessor for ReminderViewInternal);
    v43 = (*(v70 + 80) + 16) & ~*(v70 + 80);
    v44 = swift_allocObject();
    sub_268488B98(v42, v44 + v43, type metadata accessor for ReminderViewInternal);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DE60, &qword_2684B86A8);
    sub_268488830();
    v45 = v73;
    sub_2684B5184();
    v46 = sub_2684B48C4();
    v48 = v76;
    v47 = v77;
    v49 = (v45 + *(v76 + 36));
    *v49 = v46;
    v49[1] = sub_2684894B4;
    v49[2] = 0;
    sub_26846A8C8(v45, v47, &qword_28027DE38, &qword_2684B8680);
    v34 = 0;
  }

  else
  {
    v48 = v76;
    v47 = v77;
  }

  (*(v75 + 56))(v47, v34, 1, v48);
  v50 = v78;
  sub_26846A6DC(v31, v78, &qword_28027DE50, &qword_2684B8698);
  v91 = v98[10];
  v92 = v98[11];
  v93[0] = v99[0];
  *(v93 + 9) = *(v99 + 9);
  v87 = v98[6];
  v88 = v98[7];
  v89 = v98[8];
  v90 = v98[9];
  v83 = v98[2];
  v84 = v98[3];
  v85 = v98[4];
  v86 = v98[5];
  v81 = v98[0];
  v82 = v98[1];
  v51 = v79;
  sub_26846A6DC(v47, v79, &qword_28027DE40, &qword_2684B8688);
  v52 = v80;
  sub_26846A6DC(v50, v80, &qword_28027DE50, &qword_2684B8698);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DE70, &qword_2684B86B0);
  v54 = *(v53 + 48);
  v55 = v92;
  v94[10] = v91;
  v94[11] = v92;
  v56 = v93[0];
  v95[0] = v93[0];
  *(v95 + 9) = *(v93 + 9);
  v57 = v87;
  v58 = v88;
  v94[6] = v87;
  v94[7] = v88;
  v59 = v89;
  v60 = v90;
  v94[8] = v89;
  v94[9] = v90;
  v61 = v85;
  v62 = v86;
  v94[4] = v85;
  v94[5] = v86;
  v63 = v83;
  v64 = v84;
  v94[2] = v83;
  v94[3] = v84;
  v65 = v81;
  v66 = v82;
  v94[0] = v81;
  v94[1] = v82;
  v67 = (v52 + v54);
  v67[10] = v91;
  v67[11] = v55;
  v67[12] = v56;
  *(v67 + 201) = *(v93 + 9);
  v67[6] = v57;
  v67[7] = v58;
  v67[8] = v59;
  v67[9] = v60;
  v67[2] = v63;
  v67[3] = v64;
  v67[4] = v61;
  v67[5] = v62;
  *v67 = v65;
  v67[1] = v66;
  sub_26846A6DC(v51, v52 + *(v53 + 64), &qword_28027DE40, &qword_2684B8688);
  sub_26846A6DC(v94, v96, &qword_28027DE78, &qword_2684B86B8);
  sub_268467A4C(v47, &qword_28027DE40, &qword_2684B8688);
  sub_268467A4C(v31, &qword_28027DE50, &qword_2684B8698);
  sub_268467A4C(v51, &qword_28027DE40, &qword_2684B8688);
  v96[10] = v91;
  v96[11] = v92;
  v97[0] = v93[0];
  *(v97 + 9) = *(v93 + 9);
  v96[6] = v87;
  v96[7] = v88;
  v96[8] = v89;
  v96[9] = v90;
  v96[2] = v83;
  v96[3] = v84;
  v96[4] = v85;
  v96[5] = v86;
  v96[0] = v81;
  v96[1] = v82;
  sub_268467A4C(v96, &qword_28027DE78, &qword_2684B86B8);
  return sub_268467A4C(v50, &qword_28027DE50, &qword_2684B8698);
}

uint64_t sub_268483678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DEC0, &qword_2684B8708);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DEC8, &qword_2684B8710);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  *v19 = sub_2684B4824();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DED0, &qword_2684B8718);
  sub_2684838FC(a1, &v19[*(v20 + 44)]);
  v21 = sub_2684B48C4();
  v22 = &v19[*(v13 + 44)];
  *v22 = v21;
  v22[1] = sub_2684894B4;
  v22[2] = 0;
  sub_268484488(v11);
  v23 = *(a1 + *(type metadata accessor for ReminderViewInternal(0) + 28) + 152);
  KeyPath = swift_getKeyPath();
  v25 = &v11[*(v5 + 44)];
  *v25 = KeyPath;
  v25[1] = v23;
  sub_26846A6DC(v19, v17, &qword_28027DEC8, &qword_2684B8710);
  sub_26846A6DC(v11, v9, &qword_28027DEC0, &qword_2684B8708);
  sub_26846A6DC(v17, a2, &qword_28027DEC8, &qword_2684B8710);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DED8, &qword_2684B8750);
  sub_26846A6DC(v9, a2 + *(v26 + 48), &qword_28027DEC0, &qword_2684B8708);

  sub_268467A4C(v11, &qword_28027DEC0, &qword_2684B8708);
  sub_268467A4C(v19, &qword_28027DEC8, &qword_2684B8710);
  sub_268467A4C(v9, &qword_28027DEC0, &qword_2684B8708);
  return sub_268467A4C(v17, &qword_28027DEC8, &qword_2684B8710);
}

uint64_t sub_2684838FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DF28, &qword_2684B87B8);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v71 = v59 - v8;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DF30, &qword_2684B87C0);
  v9 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v11 = v59 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DF38, &qword_2684B87C8);
  v12 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v69 = v59 - v13;
  v14 = type metadata accessor for ReminderViewInternal(0);
  v59[0] = *(v14 - 8);
  v15 = *(v59[0] + 64);
  MEMORY[0x28223BE20](v14);
  v59[1] = v16;
  v60 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DF40, &qword_2684B87D0);
  v17 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v19 = v59 - v18;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DF48, &qword_2684B87D8);
  v20 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v63 = v59 - v21;
  v22 = sub_2684B47F4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DF50, &qword_2684B87E0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v68 = v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v67 = v59 - v31;
  v62 = v14;
  v32 = a1;
  v33 = a1 + *(v14 + 40);
  v34 = *v33;
  if ((*(v33 + 8) & 1) == 0)
  {

    sub_2684B5704();
    v35 = sub_2684B4A24();
    sub_2684B4324();

    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_26845E0C8(v34, 0);
    (*(v23 + 8))(v26, v22);
  }

  v36 = sub_2684B5784();
  v37 = sub_2684B48D4();
  if (v36)
  {
    *v19 = v37;
    *(v19 + 1) = 0;
    v19[16] = 0;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DF80, &qword_2684B87F8);
    sub_268486A48(a1, &v19[*(v38 + 44)]);
    v39 = v60;
    sub_268488758(v32, v60, type metadata accessor for ReminderViewInternal);
    v40 = (*(v59[0] + 80) + 16) & ~*(v59[0] + 80);
    v41 = swift_allocObject();
    sub_268488B98(v39, v41 + v40, type metadata accessor for ReminderViewInternal);
    sub_26846ACF0(&qword_28027DF68, &qword_28027DF40, &qword_2684B87D0);
    v42 = v63;
    sub_2684B4C64();

    sub_268467A4C(v19, &qword_28027DF40, &qword_2684B87D0);
    v43 = (v32 + *(v62 + 44));
    v44 = *v43;
    v45 = v43[1];
    *&v72 = v44;
    *(&v72 + 1) = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DF88, &qword_2684B8800);
    sub_2684B4F34();
    sub_2684B50B4();
    sub_2684B44A4();
    v46 = (v42 + *(v65 + 36));
    v47 = v73;
    *v46 = v72;
    v46[1] = v47;
    v46[2] = v74;
    sub_26846A6DC(v42, v69, &qword_28027DF48, &qword_2684B87D8);
    swift_storeEnumTagMultiPayload();
    sub_268488C00();
    sub_26846ACF0(&qword_28027DF70, &qword_28027DF30, &qword_2684B87C0);
    v48 = v67;
    sub_2684B49B4();
    v49 = v42;
    v50 = &qword_28027DF48;
    v51 = &qword_2684B87D8;
  }

  else
  {
    *v11 = v37;
    *(v11 + 1) = 0;
    v11[16] = 0;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DF58, &qword_2684B87E8);
    sub_268485D3C(a1, &v11[*(v52 + 44)]);
    sub_26846A6DC(v11, v69, &qword_28027DF30, &qword_2684B87C0);
    swift_storeEnumTagMultiPayload();
    sub_268488C00();
    sub_26846ACF0(&qword_28027DF70, &qword_28027DF30, &qword_2684B87C0);
    v48 = v67;
    sub_2684B49B4();
    v49 = v11;
    v50 = &qword_28027DF30;
    v51 = &qword_2684B87C0;
  }

  sub_268467A4C(v49, v50, v51);
  v53 = v71;
  sub_268484130(v71);
  v54 = v68;
  sub_26846A6DC(v48, v68, &qword_28027DF50, &qword_2684B87E0);
  sub_26846A6DC(v53, v7, &qword_28027DF28, &qword_2684B87B8);
  v55 = v64;
  sub_26846A6DC(v54, v64, &qword_28027DF50, &qword_2684B87E0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DF78, &qword_2684B87F0);
  v57 = v55 + *(v56 + 48);
  *v57 = 0;
  *(v57 + 8) = 0;
  sub_26846A6DC(v7, v55 + *(v56 + 64), &qword_28027DF28, &qword_2684B87B8);
  sub_268467A4C(v53, &qword_28027DF28, &qword_2684B87B8);
  sub_268467A4C(v48, &qword_28027DF50, &qword_2684B87E0);
  sub_268467A4C(v7, &qword_28027DF28, &qword_2684B87B8);
  return sub_268467A4C(v54, &qword_28027DF50, &qword_2684B87E0);
}

uint64_t sub_268484130@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DFE0, &qword_2684B8870);
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = *(v35 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DFE8, &qword_2684B8878);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v33 - v8;
  v10 = sub_2684B41E4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  v19 = v1;
  MEMORY[0x26D619380]();
  v20 = sub_2684B41D4();
  v21 = *(v11 + 8);
  v22 = v17;
  v23 = v34;
  v21(v22, v10);
  if ((v20 & 1) != 0 || (MEMORY[0x26D619380](v18), sub_2684B4194(), v21(v15, v10), v24 = sub_2684B4184(), v25 = 1, v26 = (*(*(v24 - 8) + 48))(v9, 1, v24), sub_268467A4C(v9, &qword_28027DFE8, &qword_2684B8878), v26 != 1))
  {
    *v5 = sub_2684B4834();
    *(v5 + 1) = 0x402C000000000000;
    v5[16] = 0;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DFF0, &qword_2684B8880);
    sub_2684871DC(v19, &v5[*(v27 + 44)]);
    KeyPath = swift_getKeyPath();
    v29 = swift_getKeyPath();
    v30 = swift_getKeyPath();
    v31 = &v5[*(v36 + 36)];
    *v31 = 1;
    *(v31 + 1) = KeyPath;
    v31[16] = 0;
    *(v31 + 3) = v29;
    v31[32] = 0;
    *(v31 + 5) = v30;
    v31[48] = 0;
    sub_26846A8C8(v5, v23, &qword_28027DFE0, &qword_2684B8870);
    v25 = 0;
  }

  return (*(v35 + 56))(v23, v25, 1, v36);
}

uint64_t sub_268484488@<X0>(uint64_t a1@<X8>)
{
  v145 = a1;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DEE0, &qword_2684B8758);
  v2 = *(*(v142 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v142);
  v146 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v144 = &v118 - v5;
  v6 = type metadata accessor for MessagingTriggerPill();
  v139 = *(v6 - 8);
  v140 = v6;
  v7 = *(v139 + 64);
  MEMORY[0x28223BE20](v6);
  v123 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DEE8, &qword_2684B8760);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v136 = &v118 - v11;
  v148 = sub_2684B40F4();
  v138 = *(v148 - 8);
  v12 = *(v138 + 64);
  MEMORY[0x28223BE20](v148);
  v122 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DEF0, &qword_2684B8768);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v143 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v151 = &v118 - v18;
  v135 = sub_2684B4B34();
  v133 = *(v135 - 8);
  v19 = *(v133 + 64);
  MEMORY[0x28223BE20](v135);
  v134 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for LocationTriggerPill();
  v131 = *(v132 - 8);
  v21 = *(v131 + 64);
  MEMORY[0x28223BE20](v132);
  v121 = &v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DBC0, &qword_2684B7F10);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v128 = &v118 - v25;
  v147 = sub_2684B4084();
  v129 = *(v147 - 8);
  v26 = *(v129 + 64);
  MEMORY[0x28223BE20](v147);
  v120 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DEF8, &unk_2684B8770);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v141 = &v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v153 = &v118 - v32;
  v125 = type metadata accessor for TemporalTriggerView();
  v126 = *(v125 - 8);
  v33 = *(v126 + 64);
  MEMORY[0x28223BE20](v125);
  v119 = &v118 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DBD0, &qword_2684B7F20);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v38 = &v118 - v37;
  v39 = sub_2684B41E4();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v39);
  v127 = &v118 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v124 = &v118 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v48 = &v118 - v47;
  MEMORY[0x28223BE20](v46);
  v50 = &v118 - v49;
  v51 = sub_2684B40B4();
  v52 = *(v51 - 8);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  v55 = &v118 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DBD8, &qword_2684B7F28);
  v57 = *(*(v56 - 8) + 64);
  v58 = MEMORY[0x28223BE20](v56 - 8);
  v137 = &v118 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v152 = &v118 - v60;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  v150 = v1;
  MEMORY[0x26D619380]();
  sub_2684B40D4();
  v61 = *(v40 + 8);
  v62 = v50;
  v63 = v39;
  v61(v62, v39);
  v64 = (*(v52 + 48))(v38, 1, v51);
  v130 = v48;
  if (v64 == 1)
  {
    sub_268467A4C(v38, &qword_28027DBD0, &qword_2684B7F20);
    v65 = 1;
    v66 = v152;
    v67 = v125;
  }

  else
  {
    (*(v52 + 32))(v55, v38, v51);
    v68 = v119;
    (*(v52 + 16))(v119, v55, v51);
    MEMORY[0x26D619380](v149);
    v69 = sub_2684B3FD4();
    v61(v48, v39);
    (*(v52 + 8))(v55, v51);
    v70 = v125;
    v68[*(v125 + 20)] = (v69 & 1) == 0;
    v71 = v68;
    v72 = v152;
    sub_268488B98(v71, v152, type metadata accessor for TemporalTriggerView);
    v65 = 0;
    v66 = v72;
    v67 = v70;
  }

  (*(v126 + 56))(v66, v65, 1, v67);
  v73 = v124;
  v74 = v149;
  MEMORY[0x26D619380](v149);
  v75 = v128;
  sub_2684B40C4();
  v61(v73, v39);
  v76 = v129;
  v77 = v147;
  v78 = (*(v129 + 48))(v75, 1, v147);
  v79 = MEMORY[0x277CE0A58];
  v80 = v153;
  v81 = v63;
  v82 = v61;
  if (v78 == 1)
  {
    sub_268467A4C(v75, &qword_28027DBC0, &qword_2684B7F10);
    v83 = 1;
    v84 = v136;
    v85 = v132;
  }

  else
  {
    v86 = v120;
    (*(v76 + 32))(v120, v75, v77);
    v87 = v121;
    (*(v76 + 16))(v121, v86, v77);
    v88 = v132;
    v89 = *(v132 + 20);
    v154 = 0x4010000000000000;
    (*(v133 + 104))(v134, *v79, v135);
    sub_26847454C();
    v85 = v88;
    sub_2684B4444();
    v90 = v86;
    v74 = v149;
    (*(v76 + 8))(v90, v147);
    sub_268488B98(v87, v80, type metadata accessor for LocationTriggerPill);
    v83 = 0;
    v84 = v136;
  }

  (*(v131 + 56))(v80, v83, 1, v85);
  v91 = v127;
  MEMORY[0x26D619380](v74);
  sub_2684B4104();
  v82(v91, v81);
  v92 = v138;
  v93 = v148;
  if ((*(v138 + 48))(v84, 1, v148) == 1)
  {
    sub_268467A4C(v84, &qword_28027DEE8, &qword_2684B8760);
    v94 = 1;
    v95 = v151;
    v96 = v130;
    v97 = v140;
  }

  else
  {
    v98 = *(v92 + 32);
    v149 = v82;
    v99 = v122;
    v98(v122, v84, v93);
    v100 = v123;
    (*(v92 + 16))(v123, v99, v93);
    v97 = v140;
    v101 = *(v140 + 20);
    v154 = 0x4010000000000000;
    (*(v133 + 104))(v134, *MEMORY[0x277CE0A58], v135);
    sub_26847454C();
    sub_2684B4444();
    v102 = v99;
    v82 = v149;
    (*(v92 + 8))(v102, v148);
    v103 = v100;
    v95 = v151;
    sub_268488B98(v103, v151, type metadata accessor for MessagingTriggerPill);
    v94 = 0;
    v96 = v130;
  }

  (*(v139 + 56))(v95, v94, 1, v97);
  MEMORY[0x26D619380](v74);
  v104 = sub_2684B4044();
  v82(v96, v81);
  v105 = sub_2684ABC78(v104);

  v154 = v105;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DF00, &qword_2684B87A0);
  type metadata accessor for LinkAttachmentView(0);
  sub_26846ACF0(&qword_28027DF08, &qword_28027DF00, &qword_2684B87A0);
  sub_2684884C0(&qword_28027DF10, type metadata accessor for LinkAttachmentView);
  v106 = v144;
  sub_2684B5014();
  KeyPath = swift_getKeyPath();
  v108 = swift_getKeyPath();
  v109 = swift_getKeyPath();
  v110 = v106 + *(v142 + 36);
  *v110 = 0;
  *(v110 + 8) = KeyPath;
  *(v110 + 16) = 0;
  *(v110 + 24) = v108;
  *(v110 + 32) = 0;
  *(v110 + 40) = v109;
  *(v110 + 48) = 0;
  v111 = v137;
  sub_26846A6DC(v152, v137, &qword_28027DBD8, &qword_2684B7F28);
  v112 = v141;
  sub_26846A6DC(v153, v141, &qword_28027DEF8, &unk_2684B8770);
  v113 = v143;
  sub_26846A6DC(v95, v143, &qword_28027DEF0, &qword_2684B8768);
  v114 = v146;
  sub_26846A6DC(v106, v146, &qword_28027DEE0, &qword_2684B8758);
  v115 = v145;
  sub_26846A6DC(v111, v145, &qword_28027DBD8, &qword_2684B7F28);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DF18, &qword_2684B87A8);
  sub_26846A6DC(v112, v115 + v116[12], &qword_28027DEF8, &unk_2684B8770);
  sub_26846A6DC(v113, v115 + v116[16], &qword_28027DEF0, &qword_2684B8768);
  sub_26846A6DC(v114, v115 + v116[20], &qword_28027DEE0, &qword_2684B8758);
  sub_268467A4C(v106, &qword_28027DEE0, &qword_2684B8758);
  sub_268467A4C(v151, &qword_28027DEF0, &qword_2684B8768);
  sub_268467A4C(v153, &qword_28027DEF8, &unk_2684B8770);
  sub_268467A4C(v152, &qword_28027DBD8, &qword_2684B7F28);
  sub_268467A4C(v114, &qword_28027DEE0, &qword_2684B8758);
  sub_268467A4C(v113, &qword_28027DEF0, &qword_2684B8768);
  sub_268467A4C(v112, &qword_28027DEF8, &unk_2684B8770);
  return sub_268467A4C(v111, &qword_28027DBD8, &qword_2684B7F28);
}

double sub_2684854A4@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DBC0, &qword_2684B7F10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v42[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DBD0, &qword_2684B7F20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v42[-v10];
  v12 = sub_2684B41E4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v42[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v1 + *(type metadata accessor for ReminderViewInternal(0) + 24)) != 1)
  {
    goto LABEL_6;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  MEMORY[0x26D619380](v17);
  sub_2684B40D4();
  v18 = sub_2684B40B4();
  if ((*(*(v18 - 8) + 48))(v11, 1, v18) != 1)
  {
    sub_268467A4C(v11, &qword_28027DBD0, &qword_2684B7F20);
    sub_2684B40C4();
    (*(v13 + 8))(v16, v12);
    v19 = sub_2684B4084();
    v20 = (*(*(v19 - 8) + 48))(v7, 1, v19);
    sub_268467A4C(v7, &qword_28027DBC0, &qword_2684B7F10);
    if (v20 == 1)
    {
      goto LABEL_5;
    }

LABEL_6:
    sub_268488AB4(&v59);
    goto LABEL_7;
  }

  (*(v13 + 8))(v16, v12);
  sub_268467A4C(v11, &qword_28027DBD0, &qword_2684B7F20);
LABEL_5:
  v21 = sub_2684B4834();
  v43 = 0;
  sub_268487A48(v2, &v59);
  v47 = v61;
  v48 = v62;
  v49 = v63;
  v50 = v64;
  v45 = v59;
  v46 = v60;
  v51[2] = v61;
  v51[3] = v62;
  v51[4] = v63;
  v51[5] = v64;
  v51[0] = v59;
  v51[1] = v60;
  sub_26846A6DC(&v45, &v52, &qword_28027DEB8, &qword_2684B8700);
  sub_268467A4C(v51, &qword_28027DEB8, &qword_2684B8700);
  *&v42[39] = v47;
  *&v42[55] = v48;
  *&v42[71] = v49;
  *&v42[87] = v50;
  *&v42[7] = v45;
  *&v42[23] = v46;
  v22 = v43;
  v23 = sub_2684B4A64();
  sub_2684B4364();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v44 = 0;
  KeyPath = swift_getKeyPath();
  v33 = swift_getKeyPath();
  v34 = swift_getKeyPath();
  LOBYTE(v59) = 0;
  *&v52 = v21;
  *(&v52 + 1) = 0x4020000000000000;
  LOBYTE(v53[0]) = v22;
  *(v53 + 1) = *v42;
  *(&v53[1] + 1) = *&v42[16];
  *(&v53[2] + 1) = *&v42[32];
  *&v53[6] = *&v42[95];
  *(&v53[5] + 1) = *&v42[80];
  *(&v53[4] + 1) = *&v42[64];
  *(&v53[3] + 1) = *&v42[48];
  BYTE8(v53[6]) = v23;
  *&v54 = v25;
  *(&v54 + 1) = v27;
  *&v55 = v29;
  *(&v55 + 1) = v31;
  LOBYTE(v56) = 0;
  BYTE8(v56) = 1;
  *&v57 = KeyPath;
  BYTE8(v57) = 0;
  *&v58[0] = v33;
  BYTE8(v58[0]) = 0;
  *&v58[1] = v34;
  BYTE8(v58[1]) = 0;
  nullsub_1(&v52);
  v69 = v56;
  v70 = v57;
  v71[0] = v58[0];
  *(v71 + 9) = *(v58 + 9);
  v65 = v53[5];
  v66 = v53[6];
  v67 = v54;
  v68 = v55;
  v61 = v53[1];
  v62 = v53[2];
  v63 = v53[3];
  v64 = v53[4];
  v59 = v52;
  v60 = v53[0];
LABEL_7:
  v35 = v70;
  a1[10] = v69;
  a1[11] = v35;
  a1[12] = v71[0];
  *(a1 + 201) = *(v71 + 9);
  v36 = v66;
  a1[6] = v65;
  a1[7] = v36;
  v37 = v68;
  a1[8] = v67;
  a1[9] = v37;
  v38 = v62;
  a1[2] = v61;
  a1[3] = v38;
  v39 = v64;
  a1[4] = v63;
  a1[5] = v39;
  result = *&v59;
  v41 = v60;
  *a1 = v59;
  a1[1] = v41;
  return result;
}

uint64_t sub_268485960()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - v2;
  sub_2684B4FE4();
  swift_getKeyPath();
  sub_2684B4FD4();

  sub_268467A4C(v3, &qword_28027D610, &unk_2684B7150);
  v5 = v7;
  v6 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DE80, &unk_2684B86F0);
  sub_2684B3894();
  type metadata accessor for ReminderViewInternal(0);
  sub_2684888E4();
  sub_2684884C0(&qword_28027DDB0, type metadata accessor for ReminderViewInternal);
  sub_2684889D0();
  return sub_2684B5024();
}

double sub_268485B04@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26846A6DC(a1, a2, &qword_28027D610, &unk_2684B7150);
  v3 = type metadata accessor for ReminderViewInternal(0);
  *(a2 + v3[5]) = 0;
  *(a2 + v3[6]) = 0;
  v4 = a2 + v3[7];
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  *(v4 + 16) = swift_getKeyPath();
  *(v4 + 24) = 0;
  *(v4 + 32) = swift_getKeyPath();
  *(v4 + 40) = 0;
  *(v4 + 48) = swift_getKeyPath();
  *(v4 + 56) = 0;
  *(v4 + 104) = sub_268488064;
  *(v4 + 112) = 0;
  if (qword_28027CF08 != -1)
  {
    swift_once();
  }

  v5 = xmmword_28027DD10;
  v6 = qword_28027DD20;
  v7 = unk_28027DD28;
  v8 = qword_28027DD30;
  *(v4 + 64) = xmmword_28027DD10;
  *(v4 + 80) = v6;
  *(v4 + 88) = v7;
  *(v4 + 96) = v8;
  *(v4 + 120) = v5;
  *(v4 + 136) = v6;
  *(v4 + 144) = v7;
  *(v4 + 152) = v8;
  v9 = a2 + v3[8];
  swift_retain_n();
  v10 = sub_2684B4AC4();
  v11 = sub_2684B4AA4();
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = swift_getKeyPath();
  *v9 = v10;
  *(v9 + 8) = sub_2684894B0;
  *(v9 + 16) = v11;
  *(v9 + 24) = v10;
  *(v9 + 32) = KeyPath;
  *(v9 + 40) = 0;
  *(v9 + 48) = v13;
  *(v9 + 56) = 0;
  *(v9 + 64) = v14;
  *(v9 + 72) = 0;
  v15 = a2 + v3[9];
  *v15 = swift_getKeyPath();
  *(v15 + 40) = 0;
  v16 = a2 + v3[10];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = (a2 + v3[11]);

  sub_2684B4F24();
  result = v19;
  *v17 = v19;
  *(v17 + 1) = v20;
  return result;
}

uint64_t sub_268485D3C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v82 = a2;
  v3 = sub_2684B41E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v83 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v71 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E028, &qword_2684B88E0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v71 - v13;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E030, &qword_2684B88E8);
  v15 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v17 = &v71 - v16;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E038, &qword_2684B88F0);
  v18 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v20 = &v71 - v19;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E040, &qword_2684B88F8);
  v80 = *(v81 - 8);
  v21 = *(v80 + 64);
  v22 = MEMORY[0x28223BE20](v81);
  v84 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v85 = &v71 - v24;
  sub_26848653C(a1);
  v76 = type metadata accessor for ReminderViewInternal(0);
  v25 = *(a1 + *(v76 + 32) + 24);
  KeyPath = swift_getKeyPath();
  v27 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E048, &qword_2684B8900) + 36)];
  *v27 = KeyPath;
  v27[1] = v25;
  v28 = swift_getKeyPath();
  v29 = &v14[*(v11 + 44)];
  *v29 = v28;
  *(v29 + 1) = 4;
  v29[16] = 0;

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  v31 = a1;
  MEMORY[0x26D619380]();
  LOBYTE(v11) = sub_2684B3FD4();
  v32 = *(v4 + 8);
  v79 = v3;
  v32(v9, v3);
  if (v11)
  {
    v33 = sub_2684B49F4();
  }

  else
  {
    v33 = sub_2684B49D4();
  }

  v34 = v33;
  sub_26846A8C8(v14, v17, &qword_28027E028, &qword_2684B88E0);
  *&v17[*(v77 + 36)] = v34;
  v35 = sub_2684B48C4();
  sub_26846A8C8(v17, v20, &qword_28027E030, &qword_2684B88E8);
  v36 = &v20[*(v78 + 36)];
  *v36 = v35;
  v36[1] = sub_2684894B4;
  v36[2] = 0;
  MEMORY[0x26D619380](v30);
  v37 = sub_2684B41A4();
  v38 = v79;
  v32(v9, v79);
  v39 = *(v37 + 16);

  sub_268489068(&qword_28027E050, &qword_28027E038, &qword_2684B88F0, sub_2684890EC);
  sub_2684B4D74();
  sub_268467A4C(v20, &qword_28027E038, &qword_2684B88F0);
  v40 = v83;
  MEMORY[0x26D619380](v30);
  sub_2684B41C4();
  v42 = v41;
  v32(v40, v38);
  if (v42)
  {
    v43 = *(v31 + *(v76 + 28) + 152);
    v44 = sub_2684B4B74();
    v46 = v45;
    v48 = v47;

    LODWORD(v94[0]) = sub_2684B49F4();
    v79 = sub_2684B4B44();
    v83 = v49;
    v51 = v50;
    v78 = v52;
    sub_26846D468(v44, v46, v48 & 1);

    v75 = swift_getKeyPath();
    v77 = swift_getKeyPath();
    v76 = swift_getKeyPath();
    LOBYTE(v94[0]) = v51 & 1;
    LOBYTE(v88) = 0;
    v87 = 0;
    v86 = 0;
    v53 = v51 & 1;
    v54 = 1;
  }

  else
  {
    v79 = 0;
    v83 = 0;
    v78 = 0;
    v75 = 0;
    v77 = 0;
    v76 = 0;
    v54 = 0;
    v53 = 0;
  }

  v72 = v54;
  v73 = 0;
  v74 = v53;
  v55 = v80;
  v56 = *(v80 + 16);
  v57 = v84;
  v58 = v81;
  v56(v84, v85, v81);
  v59 = v82;
  v56(v82, v57, v58);
  v60 = &v59[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E0A0, &qword_2684B8928) + 48)];
  v61 = v79;
  *&v88 = v79;
  v62 = v83;
  *(&v88 + 1) = v83;
  *&v89 = v53;
  v63 = v78;
  *(&v89 + 1) = v78;
  *&v90 = v54;
  v64 = v75;
  *(&v90 + 1) = v75;
  *&v91 = 0;
  v65 = v77;
  *(&v91 + 1) = v77;
  *&v92 = 0;
  v66 = v76;
  *(&v92 + 1) = v76;
  v93 = 0;
  v60[80] = 0;
  v67 = v89;
  *v60 = v88;
  *(v60 + 1) = v67;
  v68 = v91;
  *(v60 + 2) = v90;
  *(v60 + 3) = v68;
  *(v60 + 4) = v92;
  sub_26846A6DC(&v88, v94, &qword_28027DFD8, &qword_2684B8868);
  v69 = *(v55 + 8);
  v69(v85, v58);
  v94[0] = v61;
  v94[1] = v62;
  v94[2] = v74;
  v94[3] = v63;
  v94[4] = v72;
  v94[5] = v64;
  v94[6] = v73;
  v94[7] = v65;
  v94[8] = 0;
  v94[9] = v66;
  v95 = 0;
  sub_268467A4C(v94, &qword_28027DFD8, &qword_2684B8868);
  return (v69)(v84, v58);
}

uint64_t sub_26848653C(uint64_t a1)
{
  v2 = sub_2684B41E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E0A8, &qword_2684B8930);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E098, &unk_2684B8918);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v22 - v13);
  if (*(a1 + *(type metadata accessor for ReminderViewInternal(0) + 20)) == 1)
  {
    *v14 = sub_2684B5084();
    v14[1] = v15;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E0B0, &qword_2684B8938);
    sub_268486838(v14 + *(v16 + 44));
    sub_26846A6DC(v14, v10, &qword_28027E098, &unk_2684B8918);
    swift_storeEnumTagMultiPayload();
    sub_26846ACF0(&qword_28027E090, &qword_28027E098, &unk_2684B8918);
    sub_2684B49B4();
    return sub_268467A4C(v14, &qword_28027E098, &unk_2684B8918);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
    MEMORY[0x26D619380](v18);
    v19 = sub_2684B4164();
    v21 = v20;
    (*(v3 + 8))(v6, v2);
    *v10 = v19;
    *(v10 + 1) = v21;
    v10[16] = 0;
    *(v10 + 3) = MEMORY[0x277D84F90];
    swift_storeEnumTagMultiPayload();
    sub_26846ACF0(&qword_28027E090, &qword_28027E098, &unk_2684B8918);
    return sub_2684B49B4();
  }
}

uint64_t sub_268486838@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for EditableReminderTitleView();
  v3 = (v2 - 8);
  v4 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  sub_2684B4FE4();
  v10 = &v9[v3[7]];
  v18[1] = 0;
  v18[2] = 0xE000000000000000;
  sub_2684B4F24();
  v11 = v20;
  *v10 = v19;
  *(v10 + 2) = v11;
  v12 = &v9[v3[8]];
  *v12 = swift_getKeyPath();
  v12[40] = 0;
  v13 = &v9[v3[9]];
  *v13 = sub_2684B43A4() & 1;
  *(v13 + 1) = v14;
  v13[16] = v15 & 1;
  sub_268488758(v9, v7, type metadata accessor for EditableReminderTitleView);
  *a1 = xmmword_2684B8290;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E0B8, &unk_2684B8940);
  sub_268488758(v7, a1 + *(v16 + 48), type metadata accessor for EditableReminderTitleView);
  sub_268475600(0x6C6F686563616C70, 0xEB00000000726564, 0);

  sub_268489450(v9, type metadata accessor for EditableReminderTitleView);
  sub_268489450(v7, type metadata accessor for EditableReminderTitleView);
  sub_26846D468(0x6C6F686563616C70, 0xEB00000000726564, 0);
}

uint64_t sub_268486A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = sub_2684B41E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v84 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v71 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DF90, &qword_2684B8808);
  v82 = *(v10 - 8);
  v83 = v10;
  v11 = *(v82 + 64);
  MEMORY[0x28223BE20](v10);
  v81 = &v71 - v12;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DF98, &qword_2684B8810);
  v13 = *(*(v80 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v80);
  v87 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v79 = &v71 - v17;
  MEMORY[0x28223BE20](v16);
  v88 = &v71 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  MEMORY[0x26D619380]();
  sub_2684B4164();
  v21 = *(v4 + 8);
  v20 = v4 + 8;
  v21(v9, v3);
  v71 = type metadata accessor for ReminderViewInternal(0);
  v22 = *(a1 + *(v71 + 32) + 24);
  v23 = sub_2684B4B74();
  v73 = v24;
  v74 = v23;
  v26 = v25;
  v72 = v27;

  KeyPath = swift_getKeyPath();
  v78 = v19;
  v76 = a1;
  MEMORY[0x26D619380](v19);
  v29 = sub_2684B3FD4();
  v86 = v3;
  v77 = v21;
  v21(v9, v3);
  if (v29)
  {
    v30 = sub_2684B49F4();
  }

  else
  {
    v30 = sub_2684B49D4();
  }

  v31 = v30;
  v104 = v26 & 1;
  v103 = 0;
  v32 = sub_2684B48C4();
  *&v97 = v74;
  *(&v97 + 1) = v73;
  LOBYTE(v98) = v104;
  *(&v98 + 1) = v72;
  *&v99 = KeyPath;
  *(&v99 + 1) = 4;
  LOBYTE(v100) = v103;
  DWORD1(v100) = v31;
  *(&v100 + 1) = v32;
  *&v101 = sub_2684894B4;
  *(&v101 + 1) = 0;
  v33 = v78;
  v34 = v76;
  MEMORY[0x26D619380](v78);
  v35 = sub_2684B41A4();
  v75 = v20;
  v36 = v77;
  v77(v9, v86);
  v37 = *(v35 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DFA0, &qword_2684B8848);
  sub_268489068(&qword_28027DFA8, &qword_28027DFA0, &qword_2684B8848, sub_268488F5C);
  v38 = v81;
  sub_2684B4D74();
  v105[2] = v99;
  v105[3] = v100;
  v105[4] = v101;
  v105[0] = v97;
  v105[1] = v98;
  sub_268467A4C(v105, &qword_28027DFA0, &qword_2684B8848);
  v39 = v79;
  (*(v82 + 32))(v79, v38, v83);
  *(v39 + *(v80 + 36)) = 256;
  sub_26846A8C8(v39, v88, &qword_28027DF98, &qword_2684B8810);
  v40 = v84;
  MEMORY[0x26D619380](v33);
  sub_2684B41C4();
  v42 = v41;
  v36(v40, v86);
  if (v42)
  {
    v43 = *(v34 + *(v71 + 28) + 152);
    v44 = sub_2684B4B74();
    v46 = v45;
    v48 = v47;

    LODWORD(v97) = sub_2684B49F4();
    v82 = sub_2684B4B44();
    v86 = v49;
    v51 = v50;
    v84 = v52;
    sub_26846D468(v44, v46, v48 & 1);

    v83 = swift_getKeyPath();
    v53 = swift_getKeyPath();
    v54 = swift_getKeyPath();
    LOBYTE(v97) = v51 & 1;
    LOBYTE(v91) = 0;
    v90 = 0;
    v89 = 0;
    v55 = (v51 & 1);
    v56 = 1;
  }

  else
  {
    v82 = 0;
    v83 = 0;
    v86 = 0;
    v84 = 0;
    v53 = 0;
    v54 = 0;
    v56 = 0;
    v55 = 0;
  }

  v81 = v55;
  v57 = v87;
  sub_26846A6DC(v88, v87, &qword_28027DF98, &qword_2684B8810);
  v58 = v57;
  v59 = v85;
  sub_26846A6DC(v58, v85, &qword_28027DF98, &qword_2684B8810);
  v60 = v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DFD0, &qword_2684B8860) + 48);
  v61 = v82;
  v62 = v86;
  *&v91 = v82;
  *(&v91 + 1) = v86;
  v63 = v84;
  *&v92 = v55;
  *(&v92 + 1) = v84;
  v64 = v56;
  *&v93 = v56;
  v65 = v83;
  *(&v93 + 1) = v83;
  *&v94 = 0;
  *(&v94 + 1) = v53;
  *&v95 = 0;
  *(&v95 + 1) = v54;
  v96 = 0;
  *(v60 + 80) = 0;
  v66 = v92;
  *v60 = v91;
  *(v60 + 16) = v66;
  v67 = v94;
  *(v60 + 32) = v93;
  *(v60 + 48) = v67;
  *(v60 + 64) = v95;
  v68 = v62;
  v69 = v63;
  sub_26846A6DC(&v91, &v97, &qword_28027DFD8, &qword_2684B8868);
  sub_268467A4C(v88, &qword_28027DF98, &qword_2684B8810);
  *&v97 = v61;
  *(&v97 + 1) = v68;
  *&v98 = v81;
  *(&v98 + 1) = v69;
  *&v99 = v64;
  *(&v99 + 1) = v65;
  *&v100 = 0;
  *(&v100 + 1) = v53;
  *&v101 = 0;
  *(&v101 + 1) = v54;
  v102 = 0;
  sub_268467A4C(&v97, &qword_28027DFD8, &qword_2684B8868);
  return sub_268467A4C(v87, &qword_28027DF98, &qword_2684B8810);
}

uint64_t sub_268487164(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for ReminderViewInternal(0) + 44));
  v3 = *v1;
  v4 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DF88, &qword_2684B8800);
  return sub_2684B4F44();
}

uint64_t sub_2684871DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = type metadata accessor for AppLinkView();
  v79 = *(v3 - 8);
  v80 = v3;
  v4 = *(v79 + 64);
  MEMORY[0x28223BE20](v3);
  v69 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DFE8, &qword_2684B8878);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v73 = &v64 - v8;
  v9 = sub_2684B4184();
  v75 = *(v9 - 8);
  v76 = v9;
  v10 = *(v75 + 64);
  MEMORY[0x28223BE20](v9);
  v68 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DFF8, &qword_2684B8888);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v78 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v77 = &v64 - v16;
  v67 = sub_2684B4594();
  v66 = *(v67 - 8);
  v17 = *(v66 + 64);
  MEMORY[0x28223BE20](v67);
  v65 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E000, &qword_2684B8890);
  v19 = *(v71 - 1);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v71);
  v22 = &v64 - v21;
  v23 = sub_2684B41E4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v64 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E008, &qword_2684B8898);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v72 = &v64 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v64 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  v74 = a1;
  MEMORY[0x26D619380]();
  LOBYTE(a1) = sub_2684B41D4();
  v38 = *(v24 + 8);
  v70 = v23;
  v38(v30, v23);
  if (a1)
  {
    v39 = v66;
    v40 = v65;
    v41 = v67;
    (*(v66 + 104))(v65, *MEMORY[0x277CDF9E8], v67);
    sub_268489014();
    sub_2684B4D24();
    (*(v39 + 8))(v40, v41);
    v42 = v71;
    (*(v19 + 32))(v36, v22, v71);
    v43 = 0;
    v44 = v42;
  }

  else
  {
    v43 = 1;
    v44 = v71;
  }

  v45 = *(v19 + 56);
  v71 = v36;
  v45(v36, v43, 1, v44);
  MEMORY[0x26D619380](v37);
  v46 = v73;
  sub_2684B4194();
  v38(v28, v70);
  v48 = v75;
  v47 = v76;
  if ((*(v75 + 48))(v46, 1, v76) == 1)
  {
    sub_268467A4C(v46, &qword_28027DFE8, &qword_2684B8878);
    v49 = 1;
    v50 = v80;
    v51 = v77;
  }

  else
  {
    v52 = v68;
    (*(v48 + 32))(v68, v46, v47);
    v53 = v69;
    (*(v48 + 16))(v69, v52, v47);
    v50 = v80;
    v54 = v53 + *(v80 + 20);
    *v54 = swift_getKeyPath();
    *(v54 + 8) = 0;
    v55 = (v53 + *(v50 + 24));
    v84 = 0;
    v82 = 0u;
    v83 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E018, &qword_2684B88D8);
    sub_2684B4F24();
    (*(v48 + 8))(v52, v47);
    v56 = v86;
    v57 = v87;
    *v55 = v85;
    v55[1] = v56;
    v55[2] = v57;
    v51 = v77;
    sub_268488B98(v53, v77, type metadata accessor for AppLinkView);
    v49 = 0;
  }

  (*(v79 + 56))(v51, v49, 1, v50);
  v58 = v71;
  v59 = v72;
  sub_26846A6DC(v71, v72, &qword_28027E008, &qword_2684B8898);
  v60 = v78;
  sub_26846A6DC(v51, v78, &qword_28027DFF8, &qword_2684B8888);
  v61 = v81;
  sub_26846A6DC(v59, v81, &qword_28027E008, &qword_2684B8898);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E010, &qword_2684B88A0);
  sub_26846A6DC(v60, v61 + *(v62 + 48), &qword_28027DFF8, &qword_2684B8888);
  sub_268467A4C(v51, &qword_28027DFF8, &qword_2684B8888);
  sub_268467A4C(v58, &qword_28027E008, &qword_2684B8898);
  sub_268467A4C(v60, &qword_28027DFF8, &qword_2684B8888);
  return sub_268467A4C(v59, &qword_28027E008, &qword_2684B8898);
}

uint64_t sub_2684879BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DF20, &qword_2684B87B0) + 48);
  v5 = sub_2684B4034();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1 + v4, v5);
}

uint64_t sub_268487A48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DBC0, &qword_2684B7F10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = &v36 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DBD0, &qword_2684B7F20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v36 - v9;
  v11 = sub_2684B41E4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  v38 = a1;
  MEMORY[0x26D619380]();
  sub_2684B40D4();
  v20 = *(v12 + 8);
  v20(v18, v11);
  v21 = sub_2684B40B4();
  LODWORD(a1) = (*(*(v21 - 8) + 48))(v10, 1, v21);
  sub_268467A4C(v10, &qword_28027DBD0, &qword_2684B7F20);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  if (a1 == 1)
  {
    v25 = nullsub_1;
    v24 = 0xE800000000000000;
    v23 = 0x7261646E656C6163;
    v22 = 0x6574614420646441;
  }

  v37 = v25;
  MEMORY[0x26D619380](v19);
  v26 = v39;
  sub_2684B40C4();
  v20(v16, v11);
  v27 = sub_2684B4084();
  v28 = (*(*(v27 - 8) + 48))(v26, 1, v27);
  sub_268467A4C(v26, &qword_28027DBC0, &qword_2684B7F10);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  if (v28 == 1)
  {
    v33 = nullsub_1;
    v32 = 0xE800000000000000;
    v31 = 0x6E6F697461636F6CLL;
    v30 = 0xEC0000006E6F6974;
    v29 = 0x61636F4C20646441;
  }

  v34 = v37;
  sub_268488AF8(v22, v24);
  sub_268488AF8(v29, v30);
  sub_268488B48(v22, v24);
  sub_268488B48(v29, v30);
  *a2 = v22;
  a2[1] = v24;
  a2[2] = v23;
  a2[3] = v24;
  a2[4] = v34;
  a2[5] = 0;
  a2[6] = v29;
  a2[7] = v30;
  a2[8] = v31;
  a2[9] = v32;
  a2[10] = v33;
  a2[11] = 0;
  sub_268488B48(v29, v30);
  return sub_268488B48(v22, v24);
}

double sub_268487E68()
{
  v0 = sub_2684B4AB4();
  result = 12.0;
  xmmword_28027DD10 = xmmword_2684B82A0;
  *&qword_28027DD20 = xmmword_2684B82B0;
  qword_28027DD30 = v0;
  return result;
}

double sub_268487EA0()
{
  v0 = sub_2684B4AC4();
  result = 8.0;
  xmmword_28027DD38 = xmmword_2684B82C0;
  unk_28027DD48 = xmmword_2684B82D0;
  qword_28027DD58 = v0;
  return result;
}

uint64_t sub_268487ED8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DDB8, &qword_2684B8B70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2684B82E0;
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 40) = swift_getKeyPath();
  *(v0 + 48) = swift_getKeyPath();
  result = swift_getKeyPath();
  *(v0 + 56) = result;
  qword_28027DD60 = v0;
  return result;
}

uint64_t sub_268487F6C@<X0>(uint64_t a1@<X8>)
{
  if (qword_28027CF08 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_28027DD30;
  v3 = *&qword_28027DD20;
  *a1 = xmmword_28027DD10;
  *(a1 + 16) = v3;
  *(a1 + 32) = v2;
}

uint64_t sub_268487FE8@<X0>(uint64_t a1@<X8>)
{
  if (qword_28027CF10 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_28027DD58;
  v2 = unk_28027DD48;
  *a1 = xmmword_28027DD38;
  *(a1 + 16) = v2;
  *(a1 + 32) = v1;
}

double sub_268488064@<D0>(uint64_t a1@<X8>)
{
  sub_2684880CC();
  sub_2684B53E4();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

unint64_t sub_2684880CC()
{
  result = qword_28027DD80;
  if (!qword_28027DD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DD80);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_268488134(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26848817C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2684881FC()
{
  sub_2684883F0(319, &qword_28027D628, MEMORY[0x277D5E1A8], MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_268488398();
    if (v1 <= 0x3F)
    {
      sub_268488454(319, &qword_28027DDA0, MEMORY[0x277CE0AE0], type metadata accessor for AmbientScaled);
      if (v2 <= 0x3F)
      {
        sub_268472A74();
        if (v3 <= 0x3F)
        {
          sub_2684883F0(319, &qword_28027D0C0, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_268488454(319, &qword_28027DDA8, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_268488398()
{
  if (!qword_28027DD98)
  {
    v0 = type metadata accessor for AmbientScaledIdiomConstant();
    if (!v1)
    {
      atomic_store(v0, &qword_28027DD98);
    }
  }
}

void sub_2684883F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_268488454(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2684884C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_268488508()
{
  result = qword_28027DE08;
  if (!qword_28027DE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DDE0, &qword_2684B8620);
    sub_2684885C0();
    sub_26846ACF0(&qword_28027DE18, &qword_28027DE00, &qword_2684B8638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DE08);
  }

  return result;
}

unint64_t sub_2684885C0()
{
  result = qword_28027DE10;
  if (!qword_28027DE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DDD8, &qword_2684B8618);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DDC8, &qword_2684B8608);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D2E0, &unk_2684B85F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DDC0, &qword_2684B8600);
    sub_26846ACF0(&qword_28027DDF0, &qword_28027DDC0, &qword_2684B8600);
    swift_getOpaqueTypeConformance2();
    sub_26846ACF0(&qword_28027D318, &qword_28027D2E0, &unk_2684B85F0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DE10);
  }

  return result;
}

uint64_t sub_268488758(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2684887C0()
{
  v0 = *(*(type metadata accessor for ReminderViewInternal(0) - 8) + 80);

  return sub_268485960();
}

unint64_t sub_268488830()
{
  result = qword_28027DE68;
  if (!qword_28027DE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DE60, &qword_2684B86A8);
    sub_2684884C0(&qword_28027DDB0, type metadata accessor for ReminderViewInternal);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DE68);
  }

  return result;
}

unint64_t sub_2684888E4()
{
  result = qword_28027DE88;
  if (!qword_28027DE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DE80, &unk_2684B86F0);
    sub_26846ACF0(&qword_28027DE90, &qword_28027DE98, &qword_2684BB1E0);
    sub_26846ACF0(&qword_28027DEA0, &qword_28027DE98, &qword_2684BB1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DE88);
  }

  return result;
}

unint64_t sub_2684889D0()
{
  result = qword_28027DEA8;
  if (!qword_28027DEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D610, &unk_2684B7150);
    sub_2684884C0(&qword_28027DEB0, MEMORY[0x277D5E1A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DEA8);
  }

  return result;
}

uint64_t sub_268488A84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  if (a3 <= 1.0)
  {
    v3 = *a1;
  }

  *a2 = v3;
}

double sub_268488AB4(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  return result;
}

uint64_t sub_268488AF8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_268488B48(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_268488B98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_268488C00()
{
  result = qword_28027DF60;
  if (!qword_28027DF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DF48, &qword_2684B87D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DF40, &qword_2684B87D0);
    sub_26846ACF0(&qword_28027DF68, &qword_28027DF40, &qword_2684B87D0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DF60);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for ReminderViewInternal(0);
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v4 = *v3;

  v5 = *(v3 + 1);

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150) + 32);
  v7 = sub_2684B41E4();
  (*(*(v7 - 8) + 8))(&v3[v6], v7);
  v8 = &v3[v1[7]];
  sub_26845E0C8(*v8, v8[8]);
  sub_26845E0C8(*(v8 + 2), v8[24]);
  sub_26845E0C8(*(v8 + 4), v8[40]);
  sub_26845E0C8(*(v8 + 6), v8[56]);
  v9 = *(v8 + 12);

  v10 = *(v8 + 14);

  v11 = *(v8 + 19);

  v12 = &v3[v1[8]];
  v13 = *v12;

  v14 = *(v12 + 2);

  v15 = *(v12 + 3);

  sub_26845E0C8(*(v12 + 4), v12[40]);
  sub_26845E0C8(*(v12 + 6), v12[56]);
  sub_26845E0C8(*(v12 + 8), v12[72]);
  v16 = &v3[v1[9]];
  if (v16[5])
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v17 = *v16;
  }

  sub_26845E0C8(*&v3[v1[10]], v3[v1[10] + 8]);
  v18 = *&v3[v1[11] + 8];

  return swift_deallocObject();
}

uint64_t sub_268488EE4()
{
  v1 = *(type metadata accessor for ReminderViewInternal(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_268487164(v2);
}

unint64_t sub_268488F5C()
{
  result = qword_28027DFB0;
  if (!qword_28027DFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DFB8, &qword_2684B8850);
    sub_2684810F8();
    sub_26846ACF0(&qword_28027DFC0, &qword_28027DFC8, &qword_2684B8858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027DFB0);
  }

  return result;
}

unint64_t sub_268489014()
{
  result = qword_28027E020;
  if (!qword_28027E020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E020);
  }

  return result;
}

uint64_t sub_268489068(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2684890EC()
{
  result = qword_28027E058;
  if (!qword_28027E058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E030, &qword_2684B88E8);
    sub_2684891A4();
    sub_26846ACF0(&qword_28027DFC0, &qword_28027DFC8, &qword_2684B8858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E058);
  }

  return result;
}

unint64_t sub_2684891A4()
{
  result = qword_28027E060;
  if (!qword_28027E060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E028, &qword_2684B88E0);
    sub_26848925C();
    sub_26846ACF0(&qword_28027D308, &qword_28027D2F8, &qword_2684B8010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E060);
  }

  return result;
}

unint64_t sub_26848925C()
{
  result = qword_28027E068;
  if (!qword_28027E068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E048, &qword_2684B8900);
    sub_268489314();
    sub_26846ACF0(&qword_28027D2F0, &qword_28027D2E8, &unk_2684B68E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E068);
  }

  return result;
}

unint64_t sub_268489314()
{
  result = qword_28027E070;
  if (!qword_28027E070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E078, &qword_2684B8908);
    sub_268489398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E070);
  }

  return result;
}

unint64_t sub_268489398()
{
  result = qword_28027E080;
  if (!qword_28027E080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E088, &qword_2684B8910);
    sub_26846ACF0(&qword_28027E090, &qword_28027E098, &unk_2684B8918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E080);
  }

  return result;
}

uint64_t sub_268489450(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for ReminderComposeSnippet()
{
  result = qword_28027E0C0;
  if (!qword_28027E0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26848952C()
{
  result = sub_2684B3D24();
  if (v1 <= 0x3F)
  {
    result = sub_2684B52B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2684895CC@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = type metadata accessor for ReminderComposeSnippet();
  v49 = *(v2 - 8);
  v3 = *(v49 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v50 = v4;
  v51 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_2684B4A14();
  v43 = *(v45 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v45);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2684B39C4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2684B5144();
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E148, &qword_2684B8A28);
  v47 = *(v14 - 8);
  v48 = v14;
  v15 = *(v47 + 64);
  MEMORY[0x28223BE20](v14);
  v46 = &v41 - v16;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E150, qword_2684B8A30);
  v17 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v19 = &v41 - v18;
  v52 = v1;
  sub_2684B3D04();
  sub_2684B4894();
  if (qword_28027CF30 != -1)
  {
    swift_once();
  }

  v20 = qword_280282928;
  v21 = sub_2684B4B94();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v59 = MEMORY[0x277CE0BD8];
  v60 = MEMORY[0x277D638E8];
  v28 = swift_allocObject();
  v58 = v28;
  *(v28 + 16) = v21;
  *(v28 + 24) = v23;
  *(v28 + 32) = v25 & 1;
  *(v28 + 40) = v27;
  sub_2684B39A4();
  sub_2684B5154();
  sub_2684B4A04();
  v29 = sub_26848DD08(&qword_28027E158, MEMORY[0x277D63B20]);
  v30 = v46;
  sub_2684B4D64();
  (*(v43 + 8))(v7, v45);
  (*(v42 + 8))(v13, v10);
  sub_2684B4894();
  v31 = sub_2684B4B94();
  v33 = v32;
  LOBYTE(v23) = v34;
  v54 = v10;
  v55 = v29;
  swift_getOpaqueTypeConformance2();
  v35 = v48;
  sub_2684B4D54();
  sub_26846D468(v31, v33, v23 & 1);

  (*(v47 + 8))(v30, v35);
  sub_26848DBEC();
  v36 = sub_2684B4BC4();
  sub_268467A4C(v19, &qword_28027E150, qword_2684B8A30);
  v56 = MEMORY[0x277CE11C8];
  v57 = MEMORY[0x277D63A60];
  v54 = v36;
  v37 = v51;
  sub_26848D2CC(v52, v51);
  v38 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v39 = swift_allocObject();
  sub_26848D330(v37, v39 + v38);
  sub_2684B4E54();
  return sub_2684B51E4();
}

uint64_t sub_268489C28@<X0>(char *a1@<X8>)
{
  v64 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E0E0, &qword_2684B89C0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v74 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v71 = &v60 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E0E8, &qword_2684B89C8);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v63 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v62 = &v60 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v73 = &v60 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v72 = &v60 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v70 = &v60 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v68 = &v60 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v67 = &v60 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v60 - v22;
  v69 = sub_2684B5234();
  v66 = *(v69 - 8);
  v24 = v66[8];
  v25 = MEMORY[0x28223BE20](v69);
  v65 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v60 - v27;
  sub_2684B3D04();
  sub_2684B4894();
  if (qword_28027CF30 != -1)
  {
    swift_once();
  }

  v29 = qword_280282928;
  v30 = sub_2684B4B94();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v76 = MEMORY[0x277CE0BD8];
  v77 = MEMORY[0x277D638E8];
  v37 = swift_allocObject();
  v75 = v37;
  *(v37 + 16) = v30;
  *(v37 + 24) = v32;
  *(v37 + 32) = v34 & 1;
  *(v37 + 40) = v36;
  v38 = v28;
  v61 = v28;
  sub_2684B5224();
  v39 = v23;
  v60 = v23;
  sub_26848A27C(v23);
  v40 = v67;
  sub_26848A70C(v67);
  v41 = v71;
  sub_26848AB88(v71);
  v42 = v68;
  sub_26848B0A4(v68);
  v43 = v70;
  sub_26848B5E4(v70);
  v44 = v65;
  v45 = v66[2];
  v45(v65, v38, v69);
  sub_26846A6DC(v39, v72, &qword_28027E0E8, &qword_2684B89C8);
  v46 = v40;
  v47 = v73;
  sub_26846A6DC(v46, v73, &qword_28027E0E8, &qword_2684B89C8);
  v48 = v74;
  sub_26846A6DC(v41, v74, &qword_28027E0E0, &qword_2684B89C0);
  v49 = v42;
  v50 = v62;
  sub_26846A6DC(v49, v62, &qword_28027E0E8, &qword_2684B89C8);
  v51 = v43;
  v52 = v63;
  sub_26846A6DC(v51, v63, &qword_28027E0E8, &qword_2684B89C8);
  v53 = v64;
  v54 = v44;
  v55 = v69;
  v45(v64, v54, v69);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E0F0, &qword_2684B89D0);
  v57 = v72;
  sub_26846A6DC(v72, &v53[v56[12]], &qword_28027E0E8, &qword_2684B89C8);
  sub_26846A6DC(v47, &v53[v56[16]], &qword_28027E0E8, &qword_2684B89C8);
  sub_26846A6DC(v48, &v53[v56[20]], &qword_28027E0E0, &qword_2684B89C0);
  sub_26846A6DC(v50, &v53[v56[24]], &qword_28027E0E8, &qword_2684B89C8);
  sub_26846A6DC(v52, &v53[v56[28]], &qword_28027E0E8, &qword_2684B89C8);
  sub_268467A4C(v70, &qword_28027E0E8, &qword_2684B89C8);
  sub_268467A4C(v68, &qword_28027E0E8, &qword_2684B89C8);
  sub_268467A4C(v71, &qword_28027E0E0, &qword_2684B89C0);
  sub_268467A4C(v67, &qword_28027E0E8, &qword_2684B89C8);
  sub_268467A4C(v60, &qword_28027E0E8, &qword_2684B89C8);
  v58 = v66[1];
  v58(v61, v55);
  sub_268467A4C(v52, &qword_28027E0E8, &qword_2684B89C8);
  sub_268467A4C(v50, &qword_28027E0E8, &qword_2684B89C8);
  sub_268467A4C(v74, &qword_28027E0E0, &qword_2684B89C0);
  sub_268467A4C(v73, &qword_28027E0E8, &qword_2684B89C8);
  sub_268467A4C(v57, &qword_28027E0E8, &qword_2684B89C8);
  return (v58)(v65, v55);
}

uint64_t sub_26848A27C@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = type metadata accessor for ReminderComposeSnippet();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2684B39C4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E0F8, &qword_2684B89D8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - v9;
  v11 = sub_2684B41E4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D4F0, &qword_2684B8A20);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v33 - v18;
  v36 = v1;
  sub_2684B3D14();
  sub_2684B4154();
  (*(v12 + 8))(v15, v11);
  v20 = sub_2684B3C14();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_268467A4C(v19, &qword_28027D4F0, &qword_2684B8A20);
LABEL_6:
    v31 = 1;
    v30 = v37;
    return (*(v7 + 56))(v30, v31, 1, v6);
  }

  v22 = sub_2684B3BF4();
  v24 = v23;
  (*(v21 + 8))(v19, v20);
  if (!sub_26846D588(v22, v24))
  {

    goto LABEL_6;
  }

  sub_2684B39A4();
  v38[3] = sub_2684B5144();
  v38[4] = MEMORY[0x277D63B10];
  __swift_allocate_boxed_opaque_existential_1(v38);
  sub_2684B5154();
  v25 = v35;
  sub_26848D2CC(v36, v35);
  v26 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v27 = swift_allocObject();
  sub_26848D330(v25, v27 + v26);
  v28 = (v27 + ((v3 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v28 = v22;
  v28[1] = v24;
  sub_2684B51D4();
  sub_26848DD08(&qword_28027E100, MEMORY[0x277D63C50]);
  sub_2684B5314();
  v29 = v37;
  (*(v7 + 32))(v37, v10, v6);
  v30 = v29;
  v31 = 0;
  return (*(v7 + 56))(v30, v31, 1, v6);
}

uint64_t sub_26848A70C@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = type metadata accessor for ReminderComposeSnippet();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v39 = v4;
  v41 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2684B39C4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E0F8, &qword_2684B89D8);
  v7 = *(v43 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v43);
  v40 = &v38 - v9;
  v10 = sub_2684B3784();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2684B41E4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v1;
  sub_2684B3D14();
  v20 = sub_2684B4164();
  v22 = v21;
  (*(v16 + 8))(v19, v15);
  v45[0] = v20;
  v45[1] = v22;
  sub_2684B3764();
  sub_26846D6EC();
  v23 = sub_2684B57B4();
  v25 = v24;
  (*(v11 + 8))(v14, v10);

  if (sub_26846D588(v23, v25))
  {
    sub_2684B39A4();
    v45[3] = sub_2684B5144();
    v45[4] = MEMORY[0x277D63B10];
    __swift_allocate_boxed_opaque_existential_1(v45);
    sub_2684B5154();
    v26 = v41;
    sub_26848D2CC(v42, v41);
    v27 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v28 = (v39 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    sub_26848D330(v26, v29 + v27);
    v30 = (v29 + v28);
    *v30 = v23;
    v30[1] = v25;
    sub_2684B51D4();
    sub_26848DD08(&qword_28027E100, MEMORY[0x277D63C50]);
    v31 = v40;
    sub_2684B5314();
    v33 = v43;
    v32 = v44;
    (*(v7 + 32))(v44, v31, v43);
    v34 = 0;
    v35 = v32;
    v36 = v33;
  }

  else
  {

    v34 = 1;
    v36 = v43;
    v35 = v44;
  }

  return (*(v7 + 56))(v35, v34, 1, v36);
}

uint64_t sub_26848AB88@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = type metadata accessor for ReminderComposeSnippet();
  v43 = *(v2 - 8);
  v3 = *(v43 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v45 = v4;
  v47 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2684B39C4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E110, &unk_2684B89F0);
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v8);
  v46 = &v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DBD0, &qword_2684B7F20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = sub_2684B41E4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2684B40B4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v24 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v40 - v25;
  v44 = v1;
  sub_2684B3D14();
  sub_2684B40D4();
  (*(v16 + 8))(v19, v15);
  if ((*(v21 + 48))(v14, 1, v20) == 1)
  {
    sub_268467A4C(v14, &qword_28027DBD0, &qword_2684B7F20);
    v27 = 1;
    v29 = v49;
    v28 = v50;
    v30 = v48;
  }

  else
  {
    v41 = *(v21 + 32);
    v41(v26, v14, v20);
    sub_2684B39A4();
    v51[3] = sub_2684B5144();
    v51[4] = MEMORY[0x277D63B10];
    __swift_allocate_boxed_opaque_existential_1(v51);
    sub_2684B5154();
    (*(v21 + 16))(v24, v26, v20);
    v31 = v47;
    sub_26848D2CC(v44, v47);
    v32 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v33 = (v22 + *(v43 + 80) + v32) & ~*(v43 + 80);
    v34 = swift_allocObject();
    v41((v34 + v32), v24, v20);
    sub_26848D330(v31, v34 + v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E118, &qword_2684B8A00);
    sub_26848D7D4();
    v35 = v46;
    sub_2684B5314();
    (*(v21 + 8))(v26, v20);
    v37 = v48;
    v36 = v49;
    v38 = v50;
    (*(v48 + 32))(v50, v35, v49);
    v27 = 0;
    v28 = v38;
    v29 = v36;
    v30 = v37;
  }

  return (*(v30 + 56))(v28, v27, 1, v29);
}

uint64_t sub_26848B0A4@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = type metadata accessor for ReminderComposeSnippet();
  v43 = *(v2 - 8);
  v3 = *(v43 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v45 = v4;
  v46 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2684B39C4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E0F8, &qword_2684B89D8);
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v8);
  v47 = &v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DBC0, &qword_2684B7F10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = sub_2684B41E4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2684B4084();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v24 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v40 - v25;
  v44 = v1;
  sub_2684B3D14();
  sub_2684B40C4();
  (*(v16 + 8))(v19, v15);
  if ((*(v21 + 48))(v14, 1, v20) == 1)
  {
    sub_268467A4C(v14, &qword_28027DBC0, &qword_2684B7F10);
    v27 = 1;
    v29 = v49;
    v28 = v50;
    v30 = v48;
  }

  else
  {
    v41 = *(v21 + 32);
    v41(v26, v14, v20);
    sub_2684B39A4();
    v51[3] = sub_2684B5144();
    v51[4] = MEMORY[0x277D63B10];
    __swift_allocate_boxed_opaque_existential_1(v51);
    sub_2684B5154();
    v31 = v46;
    sub_26848D2CC(v44, v46);
    (*(v21 + 16))(v24, v26, v20);
    v32 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v33 = (v45 + *(v21 + 80) + v32) & ~*(v21 + 80);
    v34 = swift_allocObject();
    sub_26848D330(v31, v34 + v32);
    v41((v34 + v33), v24, v20);
    sub_2684B51D4();
    sub_26848DD08(&qword_28027E100, MEMORY[0x277D63C50]);
    v35 = v47;
    sub_2684B5314();
    (*(v21 + 8))(v26, v20);
    v37 = v48;
    v36 = v49;
    v38 = v50;
    (*(v48 + 32))(v50, v35, v49);
    v27 = 0;
    v28 = v38;
    v29 = v36;
    v30 = v37;
  }

  return (*(v30 + 56))(v28, v27, 1, v29);
}

uint64_t sub_26848B5E4@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = type metadata accessor for ReminderComposeSnippet();
  v43 = *(v2 - 8);
  v3 = *(v43 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v45 = v4;
  v46 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2684B39C4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E0F8, &qword_2684B89D8);
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v8);
  v47 = &v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DEE8, &qword_2684B8760);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = sub_2684B41E4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2684B40F4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v24 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v40 - v25;
  v44 = v1;
  sub_2684B3D14();
  sub_2684B4104();
  (*(v16 + 8))(v19, v15);
  if ((*(v21 + 48))(v14, 1, v20) == 1)
  {
    sub_268467A4C(v14, &qword_28027DEE8, &qword_2684B8760);
    v27 = 1;
    v29 = v49;
    v28 = v50;
    v30 = v48;
  }

  else
  {
    v41 = *(v21 + 32);
    v41(v26, v14, v20);
    sub_2684B39A4();
    v51[3] = sub_2684B5144();
    v51[4] = MEMORY[0x277D63B10];
    __swift_allocate_boxed_opaque_existential_1(v51);
    sub_2684B5154();
    v31 = v46;
    sub_26848D2CC(v44, v46);
    (*(v21 + 16))(v24, v26, v20);
    v32 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v33 = (v45 + *(v21 + 80) + v32) & ~*(v21 + 80);
    v34 = swift_allocObject();
    sub_26848D330(v31, v34 + v32);
    v41((v34 + v33), v24, v20);
    sub_2684B51D4();
    sub_26848DD08(&qword_28027E100, MEMORY[0x277D63C50]);
    v35 = v47;
    sub_2684B5314();
    (*(v21 + 8))(v26, v20);
    v37 = v48;
    v36 = v49;
    v38 = v50;
    (*(v48 + 32))(v50, v35, v49);
    v27 = 0;
    v28 = v38;
    v29 = v36;
    v30 = v37;
  }

  return (*(v30 + 56))(v28, v27, 1, v29);
}

uint64_t sub_26848BB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ReminderComposeSnippet();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v12[2] = a3;
  v13 = 0;
  v8 = sub_2684B4BC4();
  v14 = MEMORY[0x277CE11C8];
  v15 = MEMORY[0x277D63A60];
  v12[1] = v8;
  sub_26848D2CC(a1, v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_26848D330(v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *(v10 + v9 + v7) = 1;
  return sub_2684B51C4();
}

uint64_t sub_26848BC90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ReminderComposeSnippet();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v20 = a2;
  v21 = a3;
  sub_26846D6EC();

  v9 = sub_2684B4BA4();
  v11 = v10;
  v20 = v9;
  v21 = v10;
  v13 = v12 & 1;
  v22 = v12 & 1;
  v23 = v14;
  v15 = sub_2684B4BC4();
  sub_26846D468(v9, v11, v13);

  v23 = MEMORY[0x277CE11C8];
  v24 = MEMORY[0x277D63A60];
  v20 = v15;
  sub_26848D2CC(a1, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_26848D330(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  *(v17 + v16 + v8) = 0;
  return sub_2684B51C4();
}

uint64_t sub_26848BE4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v95 = a2;
  v88 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E130, &qword_2684B8A08);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v79 - v6;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E138, &qword_2684B8A10);
  v8 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v93 = v79 - v9;
  v10 = type metadata accessor for ReminderComposeSnippet();
  v87 = *(v10 - 8);
  v11 = *(v87 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v89 = v12;
  v94 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TemporalTriggerFormatStyle(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2684B40B4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_2684B51D4();
  v90 = *(v92 - 8);
  v22 = *(v90 + 64);
  v23 = MEMORY[0x28223BE20](v92);
  v85 = v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v84 = v79 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v86 = v79 - v28;
  MEMORY[0x28223BE20](v27);
  v96 = v79 - v29;
  v30 = (v18 + 16);
  if (sub_2684B40A4())
  {
    (*v30)(v21, a1, v17);
    sub_2684B38E4();
    v31 = &v16[*(v13 + 20)];
    sub_2684B3944();
    v16[*(v13 + 24)] = 2;
    sub_26848DD08(&qword_28027D350, type metadata accessor for TemporalTriggerFormatStyle);
    sub_26848DD08(&qword_28027D358, MEMORY[0x277D5E170]);
    v32 = sub_2684B4B84();
    v34 = v33;
    v97 = v32;
    v98 = v33;
    v36 = v35 & 1;
    v99 = v35 & 1;
    v100 = v37;
    v38 = sub_2684B4BC4();
    sub_26846D468(v32, v34, v36);

    v100 = MEMORY[0x277CE11C8];
    v101 = MEMORY[0x277D63A60];
    v97 = v38;
    v39 = v94;
    sub_26848D2CC(v95, v94);
    v40 = (*(v87 + 80) + 16) & ~*(v87 + 80);
    v41 = v40 + v89;
    v42 = swift_allocObject();
    sub_26848D330(v39, v42 + v40);
    *(v42 + v41) = 2;
    v43 = v96;
    sub_2684B51C4();
    v44 = v90;
    v45 = v92;
    (*(v90 + 16))(v93, v43, v92);
    swift_storeEnumTagMultiPayload();
    sub_26848DD08(&qword_28027E100, MEMORY[0x277D63C50]);
    sub_26846ACF0(&qword_28027E128, &qword_28027E130, &qword_2684B8A08);
    sub_2684B49B4();
    return (*(v44 + 8))(v43, v45);
  }

  else
  {
    v81 = *v30;
    v80 = a1;
    v81(v21, a1, v17);
    sub_2684B38E4();
    v47 = &v16[*(v13 + 20)];
    sub_2684B3944();
    v16[*(v13 + 24)] = 1;
    v79[2] = sub_26848DD08(&qword_28027D350, type metadata accessor for TemporalTriggerFormatStyle);
    v79[1] = sub_26848DD08(&qword_28027D358, MEMORY[0x277D5E170]);
    v48 = sub_2684B4B84();
    v82 = v7;
    v83 = v4;
    v50 = v49;
    v97 = v48;
    v98 = v49;
    v52 = v51 & 1;
    v99 = v51 & 1;
    v100 = v53;
    v54 = sub_2684B4BC4();
    sub_26846D468(v48, v50, v52);

    v100 = MEMORY[0x277CE11C8];
    v101 = MEMORY[0x277D63A60];
    v97 = v54;
    v55 = v94;
    sub_26848D2CC(v95, v94);
    v56 = *(v87 + 80);
    v57 = ((v56 + 16) & ~v56) + v89;
    v87 = (v56 + 16) & ~v56;
    v58 = swift_allocObject();
    sub_26848D330(v55, v58 + ((v56 + 16) & ~v56));
    *(v58 + v57) = 2;
    sub_2684B51C4();
    v81(v21, v80, v17);
    sub_2684B38E4();
    v59 = &v16[*(v13 + 20)];
    sub_2684B3944();
    v16[*(v13 + 24)] = 0;
    v60 = sub_2684B4B84();
    v62 = v61;
    v97 = v60;
    v98 = v61;
    v64 = v63 & 1;
    v99 = v63 & 1;
    v100 = v65;
    v66 = sub_2684B4BC4();
    sub_26846D468(v60, v62, v64);

    v101 = MEMORY[0x277D63A60];
    v100 = MEMORY[0x277CE11C8];
    v97 = v66;
    v67 = v94;
    sub_26848D2CC(v95, v94);
    v68 = swift_allocObject();
    sub_26848D330(v67, v68 + v87);
    *(v68 + v57) = 2;
    v69 = v86;
    sub_2684B51C4();
    v70 = v90;
    v71 = *(v90 + 16);
    v72 = v84;
    v73 = v96;
    v74 = v92;
    v71(v84, v96, v92);
    v75 = v85;
    v71(v85, v69, v74);
    v76 = v82;
    v71(v82, v72, v74);
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E140, &qword_2684B8A18);
    v71((v76 + *(v77 + 48)), v75, v74);
    v78 = *(v70 + 8);
    v78(v75, v74);
    v78(v72, v74);
    sub_26846A6DC(v76, v93, &qword_28027E130, &qword_2684B8A08);
    swift_storeEnumTagMultiPayload();
    sub_26848DD08(&qword_28027E100, MEMORY[0x277D63C50]);
    sub_26846ACF0(&qword_28027E128, &qword_28027E130, &qword_2684B8A08);
    sub_2684B49B4();
    sub_268467A4C(v76, &qword_28027E130, &qword_2684B8A08);
    v78(v69, v74);
    return (v78)(v73, v74);
  }
}

uint64_t sub_26848C890(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderComposeSnippet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = type metadata accessor for LocationTriggerTextView();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2684B4084();
  (*(*(v11 - 8) + 16))(v10, a2, v11);
  v18 = sub_2684B4E54();
  v12 = sub_2684B44B4();
  v10[*(v7 + 20)] = 0;
  *&v10[*(v7 + 24)] = v12;
  sub_26848DD08(&qword_28027E108, type metadata accessor for LocationTriggerTextView);
  v13 = sub_2684B4BC4();
  sub_26848D638(v10);
  v19 = MEMORY[0x277CE11C8];
  v20 = MEMORY[0x277D63A60];
  v18 = v13;
  sub_26848D2CC(a1, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_26848D330(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  *(v15 + v14 + v6) = 3;
  return sub_2684B51C4();
}

uint64_t sub_26848CAD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderComposeSnippet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D710, &qword_2684B7418);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - v9;
  *v10 = sub_2684B4834();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D720, &unk_2684B7430);
  sub_26848CCF0(a2, &v10[*(v11 + 44)]);
  sub_26846ACF0(&qword_28027D728, &qword_28027D710, &qword_2684B7418);
  v12 = sub_2684B4BC4();
  sub_268467A4C(v10, &qword_28027D710, &qword_2684B7418);
  v16[4] = MEMORY[0x277CE11C8];
  v16[5] = MEMORY[0x277D63A60];
  v16[1] = v12;
  sub_26848D2CC(a1, v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_26848D330(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  *(v14 + v13 + v6) = 4;
  return sub_2684B51C4();
}

uint64_t sub_26848CCF0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v39 = a1;
  v42 = a2;
  v41 = sub_2684B3F94();
  v38 = *(v41 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v41);
  v37 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2684B3D44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D348, &unk_2684BA020);
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v40 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v36 = &v36 - v14;
  (*(v5 + 104))(v8, *MEMORY[0x277D5E0F8], v4);
  sub_2684B3D34();
  sub_2684B4894();
  if (qword_28027CF30 != -1)
  {
    swift_once();
  }

  v15 = qword_280282928;
  v16 = sub_2684B4B94();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  (*(v5 + 8))(v8, v4);
  v43 = v16;
  v44 = v18;
  v20 &= 1u;
  v45 = v20;
  v46 = v22;
  v23 = v36;
  sub_2684B4D44();
  sub_26846D468(v16, v18, v20);

  v43 = 32;
  v44 = 0xE100000000000000;
  v24 = v37;
  sub_2684B40E4();
  v25 = sub_2684B3F84();
  v27 = v26;
  (*(v38 + 8))(v24, v41);
  MEMORY[0x26D619980](v25, v27);

  v28 = v43;
  v29 = v44;
  v30 = v10[2];
  v31 = v40;
  v30(v40, v23, v9);
  v32 = v42;
  v30(v42, v31, v9);
  v33 = &v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D730, &unk_2684B89E0) + 48)];
  *v33 = v28;
  *(v33 + 1) = v29;
  v33[16] = 0;
  *(v33 + 3) = MEMORY[0x277D84F90];
  sub_268475600(v28, v29, 0);
  v34 = v10[1];

  v34(v23, v9);
  sub_26846D468(v28, v29, 0);

  return (v34)(v31, v9);
}

uint64_t sub_26848D134(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v4 = sub_2684B51F4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_2684895CC(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26848D2CC(v1, &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v8 = swift_allocObject();
  sub_26848D330(&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E0D0, &qword_2684B89B8);
  sub_26846ACF0(&qword_28027E0D8, &qword_28027E0D0, &qword_2684B89B8);
  return sub_2684B5194();
}

uint64_t sub_26848D2CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderComposeSnippet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26848D330(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderComposeSnippet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26848D394@<X0>(char *a1@<X8>)
{
  v2 = *(*(type metadata accessor for ReminderComposeSnippet() - 8) + 80);

  return sub_268489C28(a1);
}

uint64_t objectdestroy_6Tm_0(uint64_t (*a1)(void))
{
  v3 = (type metadata accessor for ReminderComposeSnippet() - 8);
  v4 = (*(*v3 + 80) + 16) & ~*(*v3 + 80);
  v5 = *(*v3 + 64);
  v6 = a1(0);
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = sub_2684B3D24();
  (*(*(v10 - 8) + 8))(v1 + v4, v10);
  v11 = v3[7];
  v12 = sub_2684B52B4();
  (*(*(v12 - 8) + 8))(v1 + v4 + v11, v12);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_26848D638(uint64_t a1)
{
  v2 = type metadata accessor for LocationTriggerTextView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26848D6D4(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(unint64_t, uint64_t))
{
  v5 = *(a1(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(a2(0) - 8);
  v9 = v3 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return a3(v3 + v6, v9);
}

unint64_t sub_26848D7D4()
{
  result = qword_28027E120;
  if (!qword_28027E120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E118, &qword_2684B8A00);
    sub_26848DD08(&qword_28027E100, MEMORY[0x277D63C50]);
    sub_26846ACF0(&qword_28027E128, &qword_28027E130, &qword_2684B8A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E120);
  }

  return result;
}

uint64_t objectdestroy_34Tm()
{
  v1 = (type metadata accessor for ReminderComposeSnippet() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = sub_2684B3D24();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = v1[7];
  v7 = sub_2684B52B4();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);
  v8 = *(v0 + v3 + 8);

  return swift_deallocObject();
}

uint64_t sub_26848DA1C(uint64_t (*a1)(unint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for ReminderComposeSnippet() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return a1(v1 + v3, v5, v6);
}

uint64_t objectdestroy_9Tm()
{
  v1 = (type metadata accessor for ReminderComposeSnippet() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64) + v2;
  v4 = v0 + v2;
  v5 = sub_2684B3D24();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = v1[7];
  v7 = sub_2684B52B4();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);

  return swift_deallocObject();
}

unint64_t sub_26848DBEC()
{
  result = qword_28027E160;
  if (!qword_28027E160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E150, qword_2684B8A30);
    sub_2684B5144();
    sub_26848DD08(&qword_28027E158, MEMORY[0x277D63B20]);
    swift_getOpaqueTypeConformance2();
    sub_26848DD08(&qword_28027E168, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E160);
  }

  return result;
}

uint64_t sub_26848DD08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_4()
{
  v1 = (type metadata accessor for ReminderComposeSnippet() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = sub_2684B3D24();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v1[7];
  v6 = sub_2684B52B4();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_26848DE6C()
{
  v0 = sub_2684B4354();
  __swift_allocate_value_buffer(v0, qword_280282910);
  __swift_project_value_buffer(v0, qword_280282910);
  return sub_2684B4344();
}

uint64_t sub_26848DEE4()
{
  sub_268481C60();

  return sub_2684B4804();
}

uint64_t sub_26848DF4C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2684B41E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v31 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v26 - v11;
  v29 = *(v7 + 16);
  v30 = v7 + 16;
  v29(a3, a2, v6);
  v32 = a1;
  sub_2684B3FE4();
  v13 = sub_2684B41A4();
  v14 = *(v13 + 16);
  if (v14)
  {
    v26[2] = a3;
    v33 = MEMORY[0x277D84F90];
    sub_268490730(0, v14, 0);
    v15 = v33;
    v16 = *(v7 + 80);
    v26[1] = v13;
    v28 = (v16 + 32) & ~v16;
    v17 = v13 + v28;
    v27 = *(v7 + 72);
    v18 = (v7 + 8);
    v19 = (v7 + 32);
    do
    {
      v20 = v31;
      v21 = v29;
      v29(v31, v17, v6);
      v21(v12, v20, v6);
      sub_2684B3FE4();
      (*v18)(v20, v6);
      v33 = v15;
      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_268490730(v22 > 1, v23 + 1, 1);
        v15 = v33;
      }

      *(v15 + 16) = v23 + 1;
      v24 = v27;
      (*v19)(v15 + v28 + v23 * v27, v12, v6);
      v17 += v24;
      --v14;
    }

    while (v14);
  }

  return sub_2684B41B4();
}

void sub_26848E1C8(uint64_t a1)
{
  v45 = sub_2684B3894();
  v3 = *(v45 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = sub_2684B5814();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  if (v6)
  {
    v53 = MEMORY[0x277D84F90];
    sub_268490750(0, v6 & ~(v6 >> 63), 0);
    v48 = v53;
    if (v46)
    {
      v7 = sub_2684B57D4();
    }

    else
    {
      v9 = -1 << *(a1 + 32);
      v7 = sub_2684B57C4();
      v8 = *(a1 + 36);
    }

    v50 = v7;
    v51 = v8;
    v52 = v46 != 0;
    if ((v6 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v42 = v6;
      v43 = (v3 + 8);
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v40 = a1 + 56;
      v41 = v11;
      v38 = v1;
      v39 = a1 + 64;
      while (v10 < v6)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v50;
        v15 = v52;
        v47 = v51;
        v16 = a1;
        sub_2684917D8(v50, v51, v52, a1);
        v18 = v17;
        v19 = [v17 uuid];
        v20 = v44;
        sub_2684B3884();

        v21 = sub_2684B3864();
        v23 = v22;
        (*v43)(v20, v45);

        v24 = v48;
        v53 = v48;
        v26 = *(v48 + 16);
        v25 = *(v48 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_268490750((v25 > 1), v26 + 1, 1);
          v24 = v53;
        }

        *(v24 + 16) = v26 + 1;
        v27 = v24 + 16 * v26;
        *(v27 + 32) = v21;
        *(v27 + 40) = v23;
        v48 = v24;
        if (v46)
        {
          if (!v15)
          {
            goto LABEL_42;
          }

          a1 = v16;
          if (sub_2684B57E4())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v6 = v42;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E1B8, &unk_2684B8B60);
          v12 = sub_2684B56E4();
          sub_2684B5834();
          v12(v49, 0);
          if (v10 == v6)
          {
LABEL_34:
            sub_268491E8C(v50, v51, v52);
            return;
          }
        }

        else
        {
          if (v15)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v16;
          v28 = 1 << *(v16 + 32);
          if (v14 >= v28)
          {
            goto LABEL_38;
          }

          v29 = v14 >> 6;
          v30 = *(v40 + 8 * (v14 >> 6));
          if (((v30 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v16 + 36) != v47)
          {
            goto LABEL_40;
          }

          v31 = v30 & (-2 << (v14 & 0x3F));
          if (v31)
          {
            v28 = __clz(__rbit64(v31)) | v14 & 0x7FFFFFFFFFFFFFC0;
            v6 = v42;
          }

          else
          {
            v32 = v29 << 6;
            v33 = v29 + 1;
            v34 = (v39 + 8 * v29);
            v6 = v42;
            while (v33 < (v28 + 63) >> 6)
            {
              v36 = *v34++;
              v35 = v36;
              v32 += 64;
              ++v33;
              if (v36)
              {
                sub_268491E8C(v14, v47, 0);
                v28 = __clz(__rbit64(v35)) + v32;
                goto LABEL_33;
              }
            }

            sub_268491E8C(v14, v47, 0);
          }

LABEL_33:
          v37 = *(v16 + 36);
          v50 = v28;
          v51 = v37;
          v52 = 0;
          if (v10 == v6)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }
}

uint64_t sub_26848E5E4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_2684B41E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

void sub_26848E650()
{
  qword_28027E198 = &type metadata for NoopReminderEditor;
  unk_28027E1A0 = &off_287914BD8;
  byte_28027E180 = 0;
}

uint64_t sub_26848E674@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_28027CF28 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_268481BFC(&byte_28027E180, v2);
}

uint64_t sub_26848E6E8(void **a1, uint64_t a2, void *a3)
{
  v132[1] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DB48, &unk_2684B8B40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v112 - v7;
  v9 = sub_2684B3894();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v120 = v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2684B41E4();
  v128 = *(v13 - 8);
  v14 = v128[8];
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v112 - v18;
  v20 = sub_2684919FC(a1);
  if (v20)
  {
    v113 = v20;
    v112[1] = 0;
    v21 = sub_2684B41A4();
    v22 = a3;
    v23 = v21;
    v24 = MEMORY[0x277D84F90];
    v130 = MEMORY[0x277D84F90];
    v25 = *(v21 + 16);
    v114 = v22;
    if (!v25)
    {
      v125 = v24;
      goto LABEL_23;
    }

    v127 = v17;
    v27 = 0;
    v129 = (v128 + 2);
    v121 = (v10 + 48);
    v116 = (v10 + 32);
    v115 = (v10 + 8);
    v126 = (v128 + 1);
    v125 = MEMORY[0x277D84F90];
    v112[0] = v25 - 1;
    *&v26 = 136315138;
    v117 = v26;
    v119 = v8;
    v118 = v9;
    v124 = v23;
    v123 = v19;
    v122 = v25;
    while (1)
    {
      v28 = v27;
      v29 = v127;
      while (1)
      {
        if (v28 >= *(v23 + 16))
        {
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v31 = v128[2];
        v31(v19, v23 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + v128[9] * v28, v13);
        sub_2684B3FC4();
        if (!v32)
        {
          goto LABEL_12;
        }

        sub_2684B3854();

        if ((*v121)(v8, 1, v9) == 1)
        {
          sub_26847F7B4(v8);
LABEL_12:
          if (qword_28027CF20 != -1)
          {
            swift_once();
          }

          v33 = sub_2684B4354();
          __swift_project_value_buffer(v33, qword_280282910);
          v31(v29, v19, v13);
          v34 = sub_2684B4334();
          v35 = v13;
          v36 = sub_2684B56F4();
          v37 = os_log_type_enabled(v34, v36);
          v38 = v126;
          if (v37)
          {
            v39 = swift_slowAlloc();
            v40 = swift_slowAlloc();
            v132[0] = v40;
            *v39 = v117;
            v131[0] = sub_2684B3FC4();
            v131[1] = v41;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D5D0, &qword_2684B7100);
            v42 = sub_2684B5564();
            v44 = v43;
            v30 = *v38;
            v30(v127, v35);
            v45 = sub_268479394(v42, v44, v132);
            v29 = v127;

            *(v39 + 4) = v45;
            _os_log_impl(&dword_26845C000, v34, v36, "Failed to load REMReminder for id: %s", v39, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v40);
            v46 = v40;
            v8 = v119;
            MEMORY[0x26D61A450](v46, -1, -1);
            v47 = v39;
            v9 = v118;
            MEMORY[0x26D61A450](v47, -1, -1);
          }

          else
          {

            v30 = *v38;
            v30(v29, v35);
          }

          v13 = v35;
          a1 = v123;
          v30(v123, v35);
          v19 = a1;
          v23 = v124;
          v25 = v122;
          goto LABEL_7;
        }

        v48 = v120;
        (*v116)(v120, v8, v9);
        v49 = objc_opt_self();
        a1 = sub_2684B3874();
        v50 = [v49 objectIDWithUUID_];

        v51 = v48;
        v29 = v127;
        (*v115)(v51, v9);
        v52 = (*v126)(v19, v13);
        if (v50)
        {
          break;
        }

LABEL_7:
        if (v25 == ++v28)
        {
          goto LABEL_23;
        }
      }

      a1 = &v130;
      MEMORY[0x26D6199F0](v52);
      if (*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v130 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v53 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2684B5644();
      }

      v27 = v28 + 1;
      sub_2684B5654();
      v125 = v130;
      if (v112[0] == v28)
      {
LABEL_23:
        v55 = v114;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DDB8, &qword_2684B8B70);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2684B8A60;
        v57 = v113;
        *(inited + 32) = v113;
        v9 = v125;
        v131[0] = v125;

        v58 = v57;
        sub_268490A54(inited);
        sub_268491E98(0, &qword_28027E1C0, 0x277D44700);
        v59 = sub_2684B5634();

        v131[0] = 0;
        v60 = [v55 fetchRemindersWithObjectIDs:v59 error:v131];

        v61 = v131[0];
        if (v60)
        {
          v62 = sub_268491E98(0, &qword_28027E1C8, 0x277D44750);
          sub_268491EE0();
          v129 = v62;
          v8 = sub_2684B5514();
          v63 = v61;

          v64 = sub_268490414(v58, v8);
          if (v64)
          {
            v131[0] = MEMORY[0x277D84F90];
            v126 = v58;
            v124 = v64;
            a1 = (v9 & 0xFFFFFFFFFFFFFF8);
            if (!(v9 >> 62))
            {
              v65 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
              goto LABEL_27;
            }

LABEL_64:
            v65 = sub_2684B5814();
LABEL_27:
            v66 = 0;
            v67 = v9 & 0xC000000000000001;
            v9 = v8 & 0xC000000000000001;
            v127 = MEMORY[0x277D84F90];
            v128 = a1;
            if (!v65)
            {
LABEL_28:

              result = v124;
              goto LABEL_60;
            }

            while (2)
            {
              if (v67)
              {
                v69 = MEMORY[0x26D619C80](v66, v125);
              }

              else
              {
                if (v66 >= a1[2])
                {
                  goto LABEL_63;
                }

                v69 = *(v125 + v66 + 4);
              }

              v70 = v69;
              v71 = v66 + 1;
              if (__OFADD__(v66, 1))
              {
                goto LABEL_62;
              }

              if (v9)
              {
                v72 = sub_2684B5904();
                if (v72)
                {
                  v132[0] = v72;
                  swift_dynamicCast();
                  v68 = v130;

                  goto LABEL_30;
                }
              }

              else if (*(v8 + 16))
              {
                v73 = sub_268490B44(v69);
                if (v74)
                {
                  v68 = *(*(v8 + 56) + 8 * v73);
                  v75 = v68;
                }

                else
                {

                  v68 = 0;
                }

                a1 = v128;
LABEL_30:
                ++v66;
                if (v68)
                {
                  MEMORY[0x26D6199F0]();
                  if (*((v131[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    v76 = *((v131[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
                    sub_2684B5644();
                  }

                  sub_2684B5654();
                  v127 = v131[0];
                  v66 = v71;
                  a1 = v128;
                  if (v65 == v71)
                  {
                    goto LABEL_28;
                  }
                }

                else if (v65 == v66)
                {
                  goto LABEL_28;
                }

                continue;
              }

              break;
            }

            v68 = 0;
            goto LABEL_30;
          }

          if (qword_28027CF20 != -1)
          {
            swift_once();
          }

          v99 = sub_2684B4354();
          __swift_project_value_buffer(v99, qword_280282910);
          v100 = v58;
          v101 = sub_2684B4334();
          v102 = sub_2684B56F4();

          if (os_log_type_enabled(v101, v102))
          {
            v103 = swift_slowAlloc();
            v104 = swift_slowAlloc();
            v131[0] = v104;
            *v103 = 136315138;
            v105 = v100;
            v106 = [v105 description];
            v107 = sub_2684B5554();
            v109 = v108;

            v110 = sub_268479394(v107, v109, v131);

            *(v103 + 4) = v110;
            _os_log_impl(&dword_26845C000, v101, v102, "Failed to load REMReminder %s-- not in results.", v103, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v104);
            MEMORY[0x26D61A450](v104, -1, -1);
            MEMORY[0x26D61A450](v103, -1, -1);
          }

          else
          {
          }
        }

        else
        {
          v77 = v131[0];

          v78 = sub_2684B37A4();

          swift_willThrow();
          if (qword_28027CF20 != -1)
          {
            swift_once();
          }

          v79 = sub_2684B4354();
          __swift_project_value_buffer(v79, qword_280282910);
          v80 = v58;
          v81 = v78;
          v82 = sub_2684B4334();
          v83 = sub_2684B56F4();

          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v131[0] = v85;
            *v84 = 136315650;
            v86 = v80;
            v87 = [v86 description];
            v88 = sub_2684B5554();
            v90 = v89;

            v91 = sub_268479394(v88, v90, v131);

            *(v84 + 4) = v91;
            *(v84 + 12) = 2080;
            v130 = v78;
            v92 = v78;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D818, &qword_2684B76D8);
            v93 = sub_2684B5564();
            v95 = sub_268479394(v93, v94, v131);

            *(v84 + 14) = v95;
            *(v84 + 22) = 2080;
            swift_getErrorValue();
            v96 = sub_2684B5A14();
            v98 = sub_268479394(v96, v97, v131);

            *(v84 + 24) = v98;
            _os_log_impl(&dword_26845C000, v82, v83, "Failed to load REMReminder %s with error: %s - %s", v84, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x26D61A450](v85, -1, -1);
            MEMORY[0x26D61A450](v84, -1, -1);
          }

          else
          {
          }
        }

        result = 0;
        goto LABEL_60;
      }
    }
  }

  result = 0;
LABEL_60:
  v111 = *MEMORY[0x277D85DE8];
  return result;
}

size_t sub_26848F40C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = sub_2684B41E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v52 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v51 = v41 - v10;
  v11 = sub_2684B4234();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_2684B4214();
  sub_2684B4254();
  v15 = sub_2684B4224();
  sub_26848E1C8(v15);
  v17 = v16;

  v18 = sub_268491DF4(v17);

  v43 = a3;
  sub_2684B3FE4();
  v19 = sub_2684B41A4();
  v20 = *(v19 + 16);
  if (!v20)
  {
LABEL_21:

    sub_2684B41B4();
  }

  v41[0] = v14;
  v41[1] = a1;
  v54 = MEMORY[0x277D84F90];
  result = sub_268490730(0, v20, 0);
  v22 = 0;
  v45 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v44 = v19 + v45;
  v23 = v54;
  v50 = v6 + 16;
  v53 = v18 + 56;
  v42 = (v6 + 8);
  v24 = (v6 + 32);
  v48 = v5;
  v49 = v6;
  v46 = v20;
  v47 = v19;
  while (v22 < *(v19 + 16))
  {
    v25 = *(v6 + 72);
    v26 = *(v6 + 16);
    v26(v52, v44 + v25 * v22, v5);
    v27 = sub_2684B3FC4();
    if (v28)
    {
      v29 = v28;
      if (*(v18 + 16))
      {
        v30 = v27;
        v31 = *(v18 + 40);
        sub_2684B5A64();
        sub_2684B5584();
        v32 = sub_2684B5A94();
        v33 = -1 << *(v18 + 32);
        v34 = v32 & ~v33;
        if ((*(v53 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
        {
          v35 = ~v33;
          while (1)
          {
            v36 = (*(v18 + 48) + 16 * v34);
            v37 = *v36 == v30 && v29 == v36[1];
            if (v37 || (sub_2684B59F4() & 1) != 0)
            {
              break;
            }

            v34 = (v34 + 1) & v35;
            if (((*(v53 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          v40 = v52;
          v5 = v48;
          v26(v51, v52, v48);
          sub_2684B3FE4();
          (*v42)(v40, v5);
          goto LABEL_16;
        }
      }

LABEL_14:
    }

    v5 = v48;
    (*v24)(v51, v52, v48);
LABEL_16:
    v54 = v23;
    v39 = *(v23 + 16);
    v38 = *(v23 + 24);
    v6 = v49;
    if (v39 >= v38 >> 1)
    {
      sub_268490730(v38 > 1, v39 + 1, 1);
      v23 = v54;
    }

    ++v22;
    *(v23 + 16) = v39 + 1;
    result = (*v24)(v23 + v45 + v39 * v25, v51, v5);
    v19 = v47;
    if (v22 == v46)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26848F84C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v49 = a4;
  v50 = a5;
  v55 = *MEMORY[0x277D85DE8];
  v8 = sub_2684B41E4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  sub_2684B4264();
  v51 = a2;
  v54 = 0;
  memset(v53, 0, sizeof(v53));
  v14 = a2;
  v15 = v13;
  sub_2684B4204();
  v16 = *(v9 + 16);
  v47 = v9 + 16;
  v48 = a1;
  v46 = v16;
  v16(v12, a1, v8);
  v17 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v18 = sub_2684B5544();
  v19 = [v17 initWithString_];

  sub_2684B4244();

  sub_2684B4174();
  *&v53[0] = 0;
  if ([v15 saveSynchronouslyWithError_])
  {
    v20 = *&v53[0];

    (*(v9 + 32))(v50, v12, v8);
  }

  else
  {
    v45 = v8;
    v21 = *&v53[0];
    v22 = sub_2684B37A4();

    swift_willThrow();
    if (qword_28027CF20 != -1)
    {
      swift_once();
    }

    v23 = sub_2684B4354();
    __swift_project_value_buffer(v23, qword_280282910);
    v24 = v22;
    v25 = sub_2684B4334();
    v26 = sub_2684B56F4();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v44 = v12;
      v43 = v15;
      v28 = v27;
      v29 = swift_slowAlloc();
      v52 = v22;
      *&v53[0] = v29;
      *v28 = 136315394;
      v30 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D818, &qword_2684B76D8);
      v31 = sub_2684B5564();
      v33 = sub_268479394(v31, v32, v53);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2080;
      swift_getErrorValue();
      v34 = sub_2684B5A14();
      v36 = sub_268479394(v34, v35, v53);

      *(v28 + 14) = v36;
      _os_log_impl(&dword_26845C000, v25, v26, "Failed to edit reminder with error: %s - [%s]", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D61A450](v29, -1, -1);
      MEMORY[0x26D61A450](v28, -1, -1);

      v37 = *(v9 + 8);
      v38 = v44;
    }

    else
    {

      v37 = *(v9 + 8);
      v38 = v12;
    }

    v39 = v45;
    v37(v38, v45);
    v46(v50, v48, v39);
  }

  v41 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26848FCEC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void (*a3)(char *, void *)@<X2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v47 = a5;
  v52 = *MEMORY[0x277D85DE8];
  v9 = sub_2684B41E4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  sub_2684B4264();
  v48 = a2;
  v51 = 0;
  memset(v50, 0, sizeof(v50));
  v15 = a2;
  v16 = v14;
  sub_2684B4204();
  v17 = v49;
  v45 = *(v10 + 16);
  v46 = a1;
  v18 = a1;
  v19 = v9;
  v45(v13, v18, v9);
  a3(v13, v17);
  *&v50[0] = 0;
  if ([v16 saveSynchronouslyWithError_])
  {
    v20 = *&v50[0];

    result = (*(v10 + 32))(v47, v13, v9);
  }

  else
  {
    v43 = v17;
    v44 = v16;
    v22 = *&v50[0];
    v23 = sub_2684B37A4();

    swift_willThrow();
    if (qword_28027CF20 != -1)
    {
      swift_once();
    }

    v24 = sub_2684B4354();
    __swift_project_value_buffer(v24, qword_280282910);
    v25 = v23;
    v26 = sub_2684B4334();
    v27 = sub_2684B56F4();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      HIDWORD(v41) = v27;
      v29 = v28;
      v30 = swift_slowAlloc();
      v49 = v23;
      *&v50[0] = v30;
      *v29 = 136315394;
      v31 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D818, &qword_2684B76D8);
      v32 = sub_2684B5564();
      v34 = sub_268479394(v32, v33, v50);
      v42 = v19;
      v35 = v34;

      *(v29 + 4) = v35;
      *(v29 + 12) = 2080;
      swift_getErrorValue();
      v36 = sub_2684B5A14();
      v38 = sub_268479394(v36, v37, v50);

      *(v29 + 14) = v38;
      v39 = v42;
      _os_log_impl(&dword_26845C000, v26, BYTE4(v41), "Failed to edit reminder with error: %s - [%s]", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D61A450](v30, -1, -1);
      MEMORY[0x26D61A450](v29, -1, -1);

      v19 = v39;
      (*(v10 + 8))(v13, v39);
    }

    else
    {

      (*(v10 + 8))(v13, v9);
    }

    result = (v45)(v47, v46, v19);
  }

  v40 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_268490120(uint64_t a1, uint64_t a2, void *a3)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2684919FC(a1);
  if (!v4)
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  v32[0] = 0;
  v6 = [a3 fetchReminderWithObjectID:v4 error:v32];
  v7 = v32[0];
  if (!v6)
  {
    v8 = v7;
    v9 = sub_2684B37A4();

    swift_willThrow();
    if (qword_28027CF20 != -1)
    {
      swift_once();
    }

    v10 = sub_2684B4354();
    __swift_project_value_buffer(v10, qword_280282910);
    v11 = v9;
    v12 = v5;
    v13 = sub_2684B4334();
    v14 = sub_2684B56F4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v32[0] = v16;
      *v15 = 136315650;
      v17 = v12;
      v18 = [v17 description];
      v19 = sub_2684B5554();
      v21 = v20;

      v22 = sub_268479394(v19, v21, v32);

      *(v15 + 4) = v22;
      *(v15 + 12) = 2080;
      v23 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D818, &qword_2684B76D8);
      v24 = sub_2684B5564();
      v26 = sub_268479394(v24, v25, v32);

      *(v15 + 14) = v26;
      *(v15 + 22) = 2080;
      swift_getErrorValue();
      v27 = sub_2684B5A14();
      v29 = sub_268479394(v27, v28, v32);

      *(v15 + 24) = v29;
      _os_log_impl(&dword_26845C000, v13, v14, "Failed to load REMReminder %s with error: %s - %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D61A450](v16, -1, -1);
      MEMORY[0x26D61A450](v15, -1, -1);
    }

    else
    {
    }

    goto LABEL_9;
  }

LABEL_10:
  v30 = *MEMORY[0x277D85DE8];
  return v6;
}

void *sub_268490414(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_2684B5904();

    if (v4)
    {
      sub_268491E98(0, &qword_28027E1C8, 0x277D44750);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_268490B44(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_2684904D8@<X0>(void **a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 1);
  v6 = sub_26848E6E8(a1, *v2, v5);
  if (v6)
  {
    v7 = v6;
    MEMORY[0x28223BE20](v6);
    sub_26848FCEC(a1, v7, sub_268491DE8, v5, a2);
  }

  else
  {
    v9 = sub_2684B41E4();
    v10 = *(*(v9 - 8) + 16);

    return v10(a2, a1, v9);
  }
}

void sub_26849060C(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = *(v3 + 1);

  v9 = sub_268490120(a2, v7, v8);
  if (v9)
  {
    v12 = v9;

    sub_26848F84C(a2, v12, v8, a1, a3);
  }

  else
  {

    v10 = sub_2684B41E4();
    v11 = *(*(v10 - 8) + 16);

    v11(a3, a2, v10);
  }
}

size_t sub_268490730(size_t a1, int64_t a2, char a3)
{
  result = sub_268490770(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_268490750(char *a1, int64_t a2, char a3)
{
  result = sub_268490948(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_268490770(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E1A8, &qword_2684B8B50);
  v10 = *(sub_2684B41E4() - 8);
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
  v15 = *(sub_2684B41E4() - 8);
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

char *sub_268490948(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D898, &qword_2684B79E8);
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

uint64_t sub_268490A54(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_2684B5814();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_2684B5814();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_268490C5C(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_268491648(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_268490B44(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2684B5764();

  return sub_268490B88(a1, v5);
}

unint64_t sub_268490B88(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_268491E98(0, &qword_28027E1C0, 0x277D44700);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2684B5774();

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

uint64_t sub_268490C5C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_2684B5814();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_2684B58C4();
  *v1 = result;
  return result;
}

uint64_t sub_268490CFC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2684B5A64();
  sub_2684B5584();
  v9 = sub_2684B5A94();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_2684B59F4() & 1) != 0)
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

    sub_2684910AC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_268490E4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E1B0, &qword_2684B8B58);
  result = sub_2684B5854();
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
      sub_2684B5A64();
      sub_2684B5584();
      result = sub_2684B5A94();
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

uint64_t sub_2684910AC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_268490E4C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_26849122C();
      goto LABEL_16;
    }

    sub_268491388(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_2684B5A64();
  sub_2684B5584();
  result = sub_2684B5A94();
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

      result = sub_2684B59F4();
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
  result = sub_2684B5A04();
  __break(1u);
  return result;
}

void *sub_26849122C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E1B0, &qword_2684B8B58);
  v2 = *v0;
  v3 = sub_2684B5844();
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

uint64_t sub_268491388(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E1B0, &qword_2684B8B58);
  result = sub_2684B5854();
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
      sub_2684B5A64();

      sub_2684B5584();
      result = sub_2684B5A94();
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

void (*sub_2684915C0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D619C80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_268491640;
  }

  __break(1u);
  return result;
}

uint64_t sub_268491648(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2684B5814();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2684B5814();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_268491F48();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E1D8, &qword_2684B8B78);
            v9 = sub_2684915C0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_268491E98(0, &qword_28027E1C0, 0x277D44700);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2684917D8(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x26D619BF0](a1, a2, v7);
      sub_268491E98(0, &qword_28027E1C0, 0x277D44700);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_268491E98(0, &qword_28027E1C0, 0x277D44700);
    if (sub_2684B57F4() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_2684B5804();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_2684B5764();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_2684B5774();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

id sub_2684919FC(uint64_t a1)
{
  v2 = sub_2684B41E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DB48, &unk_2684B8B40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v31 - v9;
  v11 = sub_2684B3894();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2684B3FC4();
  if (v16)
  {
    sub_2684B3854();

    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      (*(v12 + 32))(v15, v10, v11);
      v28 = objc_opt_self();
      v29 = sub_2684B3874();
      v30 = [v28 objectIDWithUUID_];

      (*(v12 + 8))(v15, v11);
      return v30;
    }

    sub_26847F7B4(v10);
  }

  if (qword_28027CF20 != -1)
  {
    swift_once();
  }

  v17 = sub_2684B4354();
  __swift_project_value_buffer(v17, qword_280282910);
  (*(v3 + 16))(v6, a1, v2);
  v18 = sub_2684B4334();
  v19 = sub_2684B56F4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v32 = v21;
    *v20 = 136315138;
    v31[1] = sub_2684B3FC4();
    v31[2] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D5D0, &qword_2684B7100);
    v23 = sub_2684B5564();
    v25 = v24;
    (*(v3 + 8))(v6, v2);
    v26 = sub_268479394(v23, v25, &v32);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_26845C000, v18, v19, "Failed to load REMReminder for id: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x26D61A450](v21, -1, -1);
    MEMORY[0x26D61A450](v20, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

size_t sub_268491DE8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return sub_26848F40C(a1, a2, *(v2 + 16));
}

uint64_t sub_268491DF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x26D619AA0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_268490CFC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_268491E8C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_268491E98(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_268491EE0()
{
  result = qword_28027E1D0;
  if (!qword_28027E1D0)
  {
    sub_268491E98(255, &qword_28027E1C0, 0x277D44700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E1D0);
  }

  return result;
}

unint64_t sub_268491F48()
{
  result = qword_28027E1E0;
  if (!qword_28027E1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E1D8, &qword_2684B8B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E1E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NoopReminderEditor(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NoopReminderEditor(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for EditableReminderTitleView()
{
  result = qword_28027E1E8;
  if (!qword_28027E1E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26849218C()
{
  sub_268472A1C();
  if (v0 <= 0x3F)
  {
    sub_268492240();
    if (v1 <= 0x3F)
    {
      sub_268472A74();
      if (v2 <= 0x3F)
      {
        sub_268492290();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_268492240()
{
  if (!qword_28027E1F8)
  {
    v0 = sub_2684B4F64();
    if (!v1)
    {
      atomic_store(v0, &qword_28027E1F8);
    }
  }
}

void sub_268492290()
{
  if (!qword_28027E200)
  {
    v0 = sub_2684B43B4();
    if (!v1)
    {
      atomic_store(v0, &qword_28027E200);
    }
  }
}

unint64_t sub_268492304@<X0>(unint64_t *a1@<X0>, char *a2@<X8>)
{
  result = sub_268493D14(*a1, a1[1]);
  if ((result & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = (result - 8232) < 2 || result == 133;
    v5 = (result - 14) > 0xFFFFFFFB || v4;
    *a2 = v5;
  }

  return result;
}

uint64_t sub_268492368@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v120 = a1;
  v3 = sub_2684B48F4();
  v4 = *(v3 - 8);
  v118 = v3;
  v119 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v117 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2684B41E4();
  v115 = *(v7 - 8);
  v116 = v7;
  v8 = *(v115 + 64);
  MEMORY[0x28223BE20](v7);
  v114 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_2684B4434();
  v104 = *(v105 - 8);
  v10 = *(v104 + 64);
  MEMORY[0x28223BE20](v105);
  v102 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_2684B4534();
  v98 = *(v100 - 8);
  v12 = *(v98 + 64);
  MEMORY[0x28223BE20](v100);
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for EditableReminderTitleView();
  v16 = v15 - 8;
  v17 = *(v15 - 8);
  v124 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E208, &qword_2684B8C48);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v87 - v22;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E210, &qword_2684B8C50);
  v97 = *(v96 - 8);
  v24 = *(v97 + 64);
  MEMORY[0x28223BE20](v96);
  v26 = &v87 - v25;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E218, &qword_2684B8C58);
  v101 = *(v99 - 8);
  v27 = *(v101 + 64);
  MEMORY[0x28223BE20](v99);
  v90 = &v87 - v28;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E220, &qword_2684B8C60);
  v29 = *(*(v123 - 8) + 64);
  MEMORY[0x28223BE20](v123);
  v95 = &v87 - v30;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E228, &qword_2684B8C68);
  v108 = *(v107 - 8);
  v31 = *(v108 + 64);
  MEMORY[0x28223BE20](v107);
  v103 = &v87 - v32;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E230, &qword_2684B8C70);
  v111 = *(v110 - 8);
  v33 = *(v111 + 64);
  MEMORY[0x28223BE20](v110);
  v106 = &v87 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E238, &qword_2684B8C78);
  v36 = *(v35 - 8);
  v112 = v35;
  v113 = v36;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v109 = &v87 - v38;
  v39 = (v1 + *(v16 + 28));
  v94 = *v39;
  v41 = v39[1];
  v40 = v39[2];
  v93 = v41;
  v92 = v40;
  v129 = v94;
  v130 = v41;
  v131 = v40;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E240, &qword_2684B8C80);
  sub_2684B4F54();
  sub_2684B50E4();
  v42 = sub_2684B4E54();
  KeyPath = swift_getKeyPath();
  v44 = &v23[*(v20 + 36)];
  *v44 = KeyPath;
  v44[1] = v42;
  v89 = v19;
  sub_268494110(v2, v19);
  v122 = *(v17 + 80);
  v45 = (v122 + 16) & ~v122;
  v46 = swift_allocObject();
  sub_268494174(v19, v46 + v45);
  sub_2684B4524();
  v47 = sub_2684941F0();
  sub_2684B4E14();

  (*(v98 + 8))(v14, v100);
  sub_2684942D4(v23);
  v48 = v102;
  sub_2684B4424();
  v125 = v20;
  v126 = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = v90;
  v51 = v96;
  sub_2684B4CC4();
  (*(v104 + 8))(v48, v105);
  (*(v97 + 8))(v26, v51);
  v52 = *(v16 + 36);
  v121 = v2;
  v53 = (v2 + v52);
  LODWORD(v105) = *v53;
  v104 = *(v53 + 1);
  LODWORD(v102) = v53[16];
  LOBYTE(v125) = v105;
  v126 = v104;
  LOBYTE(v127) = v102;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E260, &qword_2684B8CC8);
  sub_2684B4394();
  v125 = v51;
  v126 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v54 = v95;
  v55 = v99;
  sub_2684B4DA4();

  (*(v101 + 8))(v50, v55);
  LOBYTE(v42) = sub_2684B43A4();
  v57 = v56;
  LOBYTE(v26) = v58;
  sub_2684B5504();
  sub_2684947B8(&qword_28027E268, MEMORY[0x277D63F60]);
  v59 = sub_2684B4614();
  v60 = v54 + *(v123 + 36);
  *v60 = v42 & 1;
  *(v60 + 8) = v57;
  *(v60 + 16) = v26 & 1;
  *(v60 + 24) = v59;
  *(v60 + 32) = v61;
  v125 = v94;
  v126 = v93;
  v127 = v92;
  sub_2684B4F34();
  v125 = v129;
  v126 = v130;
  v62 = v89;
  sub_268494110(v2, v89);
  v88 = v45;
  v63 = swift_allocObject();
  sub_268494174(v62, v63 + v45);
  v64 = sub_268494514();
  v65 = v103;
  sub_2684B4DF4();

  sub_2684613F8(v54);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  v67 = v114;
  v68 = v121;
  MEMORY[0x26D619380](v66);
  v69 = sub_2684B4164();
  v71 = v70;
  (*(v115 + 8))(v67, v116);
  v129 = v69;
  v130 = v71;
  sub_268494110(v68, v62);
  v72 = v88;
  v73 = swift_allocObject();
  sub_268494174(v62, v73 + v72);
  v125 = v123;
  v126 = MEMORY[0x277D837D0];
  v127 = v64;
  v128 = MEMORY[0x277D837F8];
  v123 = MEMORY[0x277CE0E30];
  v74 = swift_getOpaqueTypeConformance2();
  v75 = v106;
  v76 = v107;
  sub_2684B4E04();

  (*(v108 + 8))(v65, v76);
  LOBYTE(v125) = v105;
  v126 = v104;
  LOBYTE(v127) = v102;
  sub_2684B4374();
  sub_268494110(v121, v62);
  v77 = swift_allocObject();
  sub_268494174(v62, v77 + v72);
  v125 = v76;
  v126 = MEMORY[0x277D837D0];
  v127 = v74;
  v128 = MEMORY[0x277D837F8];
  v78 = swift_getOpaqueTypeConformance2();
  v79 = MEMORY[0x277D839B0];
  v80 = MEMORY[0x277D839C8];
  v81 = v109;
  v82 = v110;
  sub_2684B4DF4();

  (*(v111 + 8))(v75, v82);
  v83 = v117;
  sub_2684B48E4();
  v125 = v82;
  v126 = v79;
  v127 = v78;
  v128 = v80;
  swift_getOpaqueTypeConformance2();
  sub_2684947B8(&qword_28027E280, MEMORY[0x277CDDF20]);
  v84 = v112;
  v85 = v118;
  sub_2684B4D14();
  (*(v119 + 8))(v83, v85);
  return (*(v113 + 8))(v81, v84);
}

uint64_t sub_268493174(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for EditableReminderTitleView() + 28));
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = v1[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E260, &qword_2684B8CC8);
  return sub_2684B4384();
}

unint64_t sub_2684931EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2684932DC(*a1, *(a1 + 8), *a2, *(a2 + 8));
  if (result)
  {
    v5 = type metadata accessor for EditableReminderTitleView();
    v6 = (a3 + *(v5 + 20));
    v8 = *v6;
    v9 = *(v6 + 2);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E240, &qword_2684B8C80);
    sub_2684B4F44();
    v7 = a3 + *(v5 + 28);
    LOBYTE(v8) = *v7;
    *(&v8 + 1) = *(v7 + 8);
    LOBYTE(v9) = *(v7 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E260, &qword_2684B8CC8);
    return sub_2684B4384();
  }

  return result;
}

unint64_t sub_2684932DC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  result = sub_2684B5594();
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_35;
  }

  if (result + 1 != sub_2684B5594())
  {
    return 0;
  }

  swift_getKeyPath();
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = 15;
    while (1)
    {
      v11 = sub_2684B5604();
      result = sub_268493D14(v11, v12);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_36;
      }

      v13 = result;

      if ((v13 - 14) <= 0xFFFFFFFB && (v13 - 8232) >= 2 && v13 != 133)
      {
        v10 = sub_2684B55A4();
        if (4 * v9 != v10 >> 14)
        {
          continue;
        }
      }

      goto LABEL_16;
    }
  }

  v10 = 15;
LABEL_16:
  v14 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v14 = 11;
  }

  v15 = sub_268494808(v10, v14 | (v9 << 16), a1, a2, sub_268494800);

  v16 = v15 + 1;
  if (__OFADD__(v15, 1))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  if ((a4 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v17 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v18 = 15;
    while (1)
    {
      v19 = sub_2684B5604();
      result = sub_268493D14(v19, v20);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_37;
      }

      v21 = result;

      if ((v21 - 14) <= 0xFFFFFFFB && (v21 - 8232) >= 2 && v21 != 133)
      {
        v18 = sub_2684B55A4();
        if (4 * v17 != v18 >> 14)
        {
          continue;
        }
      }

      goto LABEL_31;
    }
  }

  v18 = 15;
LABEL_31:
  v22 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v22 = 11;
  }

  v23 = sub_268494808(v18, v22 | (v17 << 16), a3, a4, sub_26849499C);

  return v16 == v23;
}

uint64_t sub_26849358C(uint64_t a1)
{
  v2 = sub_2684B41E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  MEMORY[0x26D619380](v7);
  v8 = sub_2684B4164();
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  v11 = (a1 + *(type metadata accessor for EditableReminderTitleView() + 20));
  v12 = *v11;
  v13 = *(v11 + 2);
  v16 = v12;
  v17 = v13;
  v15[1] = v8;
  v15[2] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E240, &qword_2684B8C80);
  return sub_2684B4F44();
}

void sub_2684936CC()
{
  v1 = sub_2684B41E4();
  v55 = *(v1 - 8);
  v56 = v1;
  v2 = *(v55 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v52 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v46 - v5;
  v7 = sub_2684B3784();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for EditableReminderTitleView();
  v12 = (v0 + *(v50 + 20));
  v13 = *v12;
  v14 = *(v12 + 2);
  v57 = v13;
  v58 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E240, &qword_2684B8C80);
  sub_2684B4F34();
  v57 = v61;
  sub_2684B3764();
  sub_26846D6EC();
  v54 = sub_2684B57B4();
  v16 = v15;
  v17 = *(v8 + 8);
  v17(v11, v7);

  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150);
  v53 = v0;
  MEMORY[0x26D619380]();
  v18 = sub_2684B4164();
  v20 = v19;
  v21 = *(v55 + 8);
  v51 = v6;
  v47 = v21;
  v48 = v55 + 8;
  v21(v6, v56);
  *&v57 = v18;
  *(&v57 + 1) = v20;
  sub_2684B3764();
  v22 = sub_2684B57B4();
  v24 = v23;
  v25 = v11;
  v26 = v54;
  v17(v25, v7);

  if (!sub_26846D588(v26, v16) || v26 == v22 && v16 == v24 || (sub_2684B59F4() & 1) != 0)
  {
    if (qword_28027CF20 != -1)
    {
      swift_once();
    }

    v27 = sub_2684B4354();
    __swift_project_value_buffer(v27, qword_280282910);

    v28 = sub_2684B4334();
    v29 = sub_2684B5714();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v57 = v31;
      *v30 = 136315394;
      v32 = sub_268479394(v26, v16, &v57);

      *(v30 + 4) = v32;
      *(v30 + 12) = 2080;
      v33 = sub_268479394(v22, v24, &v57);

      *(v30 + 14) = v33;
      _os_log_impl(&dword_26845C000, v28, v29, "Skipping save because newTitle is empty or the same as the old title: {newTitle: '%s', oldTitle: '%s'", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D61A450](v31, -1, -1);
      MEMORY[0x26D61A450](v30, -1, -1);
    }

    else
    {
    }
  }

  else
  {

    if (qword_28027CF20 != -1)
    {
      swift_once();
    }

    v34 = sub_2684B4354();
    __swift_project_value_buffer(v34, qword_280282910);

    v35 = sub_2684B4334();
    v36 = sub_2684B5714();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v57 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_268479394(v26, v16, &v57);
      _os_log_impl(&dword_26845C000, v35, v36, "Saving new reminder title: '%s'", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x26D61A450](v38, -1, -1);
      MEMORY[0x26D61A450](v37, -1, -1);
    }

    v39 = v53 + *(v50 + 24);
    sub_268473B54(&v57);
    v40 = v59;
    v41 = v60;
    __swift_project_boxed_opaque_existential_1(&v57, v59);
    v42 = v52;
    MEMORY[0x26D619380](v49);
    v43 = v51;
    (*(v41 + 24))(v26, v16, v42, v40, v41);

    v44 = v56;
    v45 = v47;
    v47(v42, v56);
    (*(v55 + 16))(v42, v43, v44);
    sub_2684B4FC4();
    v45(v43, v44);
    __swift_destroy_boxed_opaque_existential_1(&v57);
  }
}

unint64_t sub_268493D14(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_268493E64(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_2684B5894();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_2684B58F4() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_268493E64(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_268493EFC(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_268493F70(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_268493EFC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_268494094(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_268493F70(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_2684B58F4();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t sub_268494094(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2684B55F4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26D6199A0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_268494110(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditableReminderTitleView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268494174(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditableReminderTitleView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2684941F0()
{
  result = qword_28027E248;
  if (!qword_28027E248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E208, &qword_2684B8C48);
    sub_26846ACF0(&qword_28027E250, &qword_28027E258, &qword_2684B8CB8);
    sub_26846ACF0(&qword_28027D988, &qword_28027D990, &qword_2684B8CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E248);
  }

  return result;
}

uint64_t sub_2684942D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E208, &qword_2684B8C48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for EditableReminderTitleView();
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v4 = *v3;

  v5 = *(v3 + 1);

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D610, &unk_2684B7150) + 32);
  v7 = sub_2684B41E4();
  (*(*(v7 - 8) + 8))(&v3[v6], v7);
  v8 = &v3[v1[5]];
  v9 = *(v8 + 1);

  v10 = *(v8 + 2);

  v11 = &v3[v1[6]];
  if (v11[5])
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v12 = *v11;
  }

  v13 = *&v3[v1[7] + 8];

  return swift_deallocObject();
}

unint64_t sub_268494494(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for EditableReminderTitleView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2684931EC(a1, a2, v6);
}

unint64_t sub_268494514()
{
  result = qword_28027E270;
  if (!qword_28027E270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E220, &qword_2684B8C60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E218, &qword_2684B8C58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E210, &qword_2684B8C50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E208, &qword_2684B8C48);
    sub_2684941F0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_26849465C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E270);
  }

  return result;
}

unint64_t sub_26849465C()
{
  result = qword_28027E278;
  if (!qword_28027E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E278);
  }

  return result;
}

uint64_t sub_2684946C8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for EditableReminderTitleView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_26849473C(_BYTE *a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for EditableReminderTitleView() - 8);
  if ((*a2 & 1) == 0)
  {
    if (*a1)
    {
      v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
      sub_2684936CC();
    }
  }
}

uint64_t sub_2684947B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_268494808(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void *))
{
  result = sub_2684B55E4();
  if (a2 >> 14 < a1 >> 14)
  {
    v11 = -1;
  }

  else
  {
    v11 = 1;
  }

  if (a2 >> 14 >= a1 >> 14)
  {
    v12 = a2;
  }

  else
  {
    v12 = a1;
  }

  if (a2 >> 14 >= a1 >> 14)
  {
    v13 = a1;
  }

  else
  {
    v13 = a2;
  }

  v17 = v13;
  v14 = v12 >> 14;
  if (v12 >> 14 == v13 >> 14)
  {
    return 0;
  }

  else
  {
    v16 = 0;
    while (1)
    {
      v15 = v16 + v11;
      if (__OFADD__(v16, v11))
      {
        break;
      }

      result = sub_2684948CC(&v17, a3, a4, a5);
      v16 += v11;
      if (v14 == v17 >> 14)
      {
        return v15;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_2684948CC(unint64_t result, uint64_t a2, unint64_t a3, uint64_t (*a4)(void *))
{
  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v5 = 4 * v4;
  if (4 * v4 == *result >> 14)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    do
    {
      result = sub_2684B55A4();
      v8 = result;
      if (v5 == result >> 14)
      {
        break;
      }

      v11[0] = sub_2684B5604();
      v11[1] = v9;
      v10 = a4(v11);
    }

    while ((v10 & 1) == 0);
    *v7 = v8;
  }

  return result;
}

void sub_2684949E8()
{
  sub_2684B3924();
  if (v0 <= 0x3F)
  {
    sub_2684B3974();
    if (v1 <= 0x3F)
    {
      sub_268494A84();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_268494A84()
{
  if (!qword_28027E298)
  {
    v0 = sub_2684B57A4();
    if (!v1)
    {
      atomic_store(v0, &qword_28027E298);
    }
  }
}

uint64_t sub_268494AE4()
{
  if (*v0)
  {
    return 1702125924;
  }

  else
  {
    return 1701669236;
  }
}

uint64_t sub_268494B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701669236 && a2 == 0xE400000000000000;
  if (v5 || (sub_2684B59F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2684B59F4();

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

uint64_t sub_268494BFC(uint64_t a1)
{
  v2 = sub_26849750C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268494C38(uint64_t a1)
{
  v2 = sub_26849750C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268494C74(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E358, &qword_2684B8F20);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E360, &qword_2684B8F28);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E368, &qword_2684B8F30);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26849750C();
  sub_2684B5AB4();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_268497560();
    sub_2684B59A4();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_2684975B4();
    sub_2684B59A4();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

uint64_t sub_268494F3C(uint64_t a1)
{
  v2 = sub_268497560();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268494F78(uint64_t a1)
{
  v2 = sub_268497560();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268494FB4(uint64_t a1)
{
  v2 = sub_2684975B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268494FF0(uint64_t a1)
{
  v2 = sub_2684975B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26849502C()
{
  v1 = *v0;
  sub_2684B5A64();
  MEMORY[0x26D619E40](v1);
  return sub_2684B5A94();
}

uint64_t sub_268495074()
{
  v1 = *v0;
  sub_2684B5A64();
  MEMORY[0x26D619E40](v1);
  return sub_2684B5A94();
}

uint64_t sub_2684950B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2684970D0(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_268495108()
{
  result = qword_28027E2A0;
  if (!qword_28027E2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E2A0);
  }

  return result;
}