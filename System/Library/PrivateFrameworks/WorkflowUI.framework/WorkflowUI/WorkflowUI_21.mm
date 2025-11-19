uint64_t sub_27492A3D4@<X0>(uint64_t a1@<X8>)
{
  v43 = sub_2749FA0F4();
  v2 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v4 = (&v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = type metadata accessor for SmartShortcutPickerEntry();
  v45 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *MEMORY[0x277D7A338];
  v7 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v39 = v8;
  v40 = v7;
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v9 = qword_28159E448;
  v41 = qword_28159E448;
  v10 = sub_2749FCD64();
  v11 = sub_2749FCD64();

  v12 = [v9 localizedStringForKey:v10 value:v11 table:0];

  v13 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v15 = v14;

  v47[0] = v13;
  v47[1] = v15;
  v47[2] = 0x6C666B726F574657;
  v47[3] = 0xEA0000000000776FLL;
  v47[4] = 0;
  v47[5] = 0;
  LOBYTE(v47[6]) = 2;
  sub_2748AF4F0(v47);
  v48[136] = 0;
  memcpy(&v48[7], v47, 0x81uLL);
  v49[0] = 0xD00000000000001FLL;
  v49[1] = 0x8000000274A2D4F0;
  v49[2] = v40;
  v49[3] = v39;
  memset(&v49[4], 0, 17);
  memcpy(&v49[6] + 1, v48, 0x88uLL);
  sub_274754670(v49);
  v16 = objc_opt_self();
  v17 = [v16 whiteColor];
  v18 = [v16 colorWithRGBAValue_];
  v19 = [v18 paletteGradient];

  *v4 = v17;
  v4[1] = v19;
  v20 = *MEMORY[0x277D7D5F0];
  v21 = sub_2749FA0E4();
  (*(*(v21 - 8) + 104))(v4, v20, v21);
  v22 = v43;
  (*(v2 + 104))(v4, *MEMORY[0x277D7D608], v43);
  v23 = [objc_opt_self() clearBackground];
  v24 = objc_allocWithZone(MEMORY[0x277D7A158]);
  v25 = sub_27491A250(0x7265646C6F66, 0xE600000000000000, v23);
  memcpy(v6, v49, 0xB9uLL);
  v26 = v42;
  (*(v2 + 16))(&v6[*(v42 + 20)], v4, v22);
  *&v6[*(v26 + 24)] = v25;
  (*(v2 + 8))(v4, v22);
  *&v6[*(v26 + 28)] = MEMORY[0x277D84F90];
  sub_2749FCE14();
  v27 = sub_2749FCD64();
  v28 = sub_2749FCD64();

  v29 = [v41 localizedStringForKey:v27 value:v28 table:0];

  v30 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v32 = v31;

  sub_27471CF08(0, &qword_28096BB10);
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v33 = sub_274903E28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A48);
  v34 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_274A0EF10;
  sub_27483585C(v6, v35 + v34);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
  *(a1 + 24) = v30;
  *(a1 + 32) = v32;
  *(a1 + 40) = v33;
  v46 = MEMORY[0x277D84FA0];
  v36 = sub_274947AD8(v35, &v46);
  sub_274835920(v6);

  *(a1 + 48) = v36;
  *(a1 + 56) = 1;
  return result;
}

uint64_t sub_27492A964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2749FD0A4();
  v5[4] = sub_2749FD094();
  v7 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_27492A9FC, v7, v6);
}

uint64_t sub_27492A9FC()
{
  OUTLINED_FUNCTION_79();

  SmartShortcutPickerUserLibraryDataSource.sections.setter();
  OUTLINED_FUNCTION_48_0();

  return v0();
}

uint64_t sub_27492AA64(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4, void *a5)
{
  v10 = type metadata accessor for SmartShortcutPickerEntry();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v35 - v16;
  v18 = *a2;
  v19 = a2[1];
  v20 = *(a2 + 16);
  if (v20 == 1)
  {
    swift_beginAccess();
    v27 = sub_274955B8C(v18, v19, *a4);
    swift_endAccess();
    if (v27)
    {
      v28 = v27;
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
    }

    sub_27483585C(a1, v17);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_274763E3C(0, *(v28 + 16) + 1, 1, v28);
      v28 = v33;
    }

    v30 = *(v28 + 16);
    v29 = *(v28 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_274763E3C(v29 > 1, v30 + 1, 1, v28);
      v28 = v34;
    }

    *(v28 + 16) = v30 + 1;
    sub_2748605C4(v17, v28 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v30);
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v35 = *a4;
    sub_2748FAAF8();
    *a4 = v35;
    return swift_endAccess();
  }

  if (v20 == 2)
  {
    swift_beginAccess();
    v24 = sub_274955B8C(v18, v19, *a5);
    swift_endAccess();
    if (!v24)
    {
      v24 = MEMORY[0x277D84F90];
    }

    sub_27483585C(a1, v14);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_274763E3C(0, *(v24 + 16) + 1, 1, v24);
      v24 = v31;
    }

    v26 = *(v24 + 16);
    v25 = *(v24 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_274763E3C(v25 > 1, v26 + 1, 1, v24);
      v24 = v32;
    }

    *(v24 + 16) = v26 + 1;
    sub_2748605C4(v14, v24 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v26);
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v35 = *a5;
    sub_2748FAAF8();
    *a5 = v35;
    return swift_endAccess();
  }

  if (v20 == 3 && (v19 | v18) == 0)
  {
    swift_beginAccess();
    sub_2748E3DF4();
    v22 = *(*a3 + 16);
    sub_2748E3EB0(v22);
    v23 = *a3;
    *(v23 + 16) = v22 + 1;
    sub_27483585C(a1, v23 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v22);
    *a3 = v23;
    return swift_endAccess();
  }

  return result;
}

uint64_t SmartShortcutPickerUserLibraryDataSource.databaseDidChange(_:modified:inserted:removed:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_2749FD0E4();
  OUTLINED_FUNCTION_7_28(v2);
  v3 = swift_allocObject();
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v0;

  v4 = OUTLINED_FUNCTION_6_35();
  sub_274832938(v4, v5, v6, v7, v3);
}

uint64_t sub_27492AEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_2749FA4E4();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27492AF88, 0, 0);
}

uint64_t sub_27492AF88()
{
  sub_2749FA3D4();
  v1 = sub_2749FA4D4();
  v2 = sub_2749FD2E4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_274719000, v1, v2, "Database did change, reloading the data source", v3, 2u);
    MEMORY[0x277C61040](v3, -1, -1);
  }

  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];

  (*(v5 + 8))(v4, v6);
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_27492B0C4;

  return SmartShortcutPickerUserLibraryDataSource.load()();
}

uint64_t sub_27492B0C4()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_21_1();
  v1 = *v0;
  OUTLINED_FUNCTION_8_1();
  *v2 = v1;

  OUTLINED_FUNCTION_48_0();

  return v3();
}

uint64_t sub_27492B2CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2747ED3A8;

  return SmartShortcutPickerUserLibraryDataSource.load()();
}

uint64_t sub_27492B358(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2747DE560();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_27492B6B4(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_27492B3C4()
{
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_1_15(v4);

  return sub_27492A964(v5, v6, v7, v3, v2);
}

uint64_t sub_27492B474()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_1_15(v3);

  return sub_27492AEC8(v4, v5, v6, v2);
}

unint64_t sub_27492B518(uint64_t a1)
{
  result = sub_27492B540();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_27492B540()
{
  result = qword_28096FEE0;
  if (!qword_28096FEE0)
  {
    type metadata accessor for SmartShortcutPickerUserLibraryDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096FEE0);
  }

  return result;
}

uint64_t type metadata accessor for SmartShortcutPickerUserLibraryDataSource()
{
  result = qword_28096FEE8;
  if (!qword_28096FEE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27492B5EC()
{
  sub_274860560();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_27492B6B4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2749FDC64();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_2749FCFE4();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_27492BA50(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_27492B7A8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_27492B7A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v30 = *a4;
    v4 = *a4 + (a3 << 6) + 32;
    v5 = result - a3;
LABEL_3:
    v28 = v4;
    v29 = a3;
    v27 = v5;
    v6 = v5;
    while (2)
    {
      v34 = v6;
      v7 = (v4 - 32);
      *&v32 = *(v4 - 24);
      *(&v32 + 1) = *(v4 - 32);
      v8 = *(v4 - 16);
      v10 = *(v4 - 8);
      v9 = *v4;
      v11 = (v4 - 96);
      *&v31 = *(v4 - 88);
      *(&v31 + 1) = *(v4 - 96);
      v12 = *(v4 - 80);
      v13 = *(v4 - 72);
      v14 = *(v4 - 64);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FEF8);
      v15 = v8;
      switch(v8)
      {
        case 1:
          v16 = v34;
          switch(v12)
          {
            case 1:
              goto LABEL_16;
            case 3:
              goto LABEL_28;
            default:
              goto LABEL_38;
          }

        case 2:
          v16 = v34;
          switch(v12)
          {
            case 1:
              goto LABEL_21;
            case 2:
              goto LABEL_16;
            case 3:
              goto LABEL_28;
            default:
              goto LABEL_38;
          }

        case 3:
          v16 = v34;
          if (v32 == 0)
          {
            switch(v12)
            {
              case 1:
              case 2:
                if (v32 != 0)
                {
                  goto LABEL_41;
                }

                goto LABEL_21;
              case 3:
LABEL_28:
                if (*(&v31 + 1) == 1 && v31 == 0)
                {
                  goto LABEL_38;
                }

                if (v31 != 0)
                {
                  goto LABEL_42;
                }

                if ((v15 - 1) >= 2u && v32 != 0)
                {
                  goto LABEL_41;
                }

                goto LABEL_38;
              default:
                goto LABEL_38;
            }
          }

          if ((v12 - 1) >= 2 && (v12 != 3 || v31 != 0))
          {
            goto LABEL_38;
          }

          goto LABEL_21;
        default:
          v16 = v34;
          if (v12)
          {
            goto LABEL_21;
          }

LABEL_16:
          if (v10 == v13 && v9 == v14)
          {
            goto LABEL_38;
          }

          result = sub_2749FDCC4();
          if ((result & 1) == 0)
          {
            goto LABEL_38;
          }

LABEL_21:
          if (!v30)
          {
            __break(1u);
            while (1)
            {
LABEL_41:
              sub_2749FDCB4();
              __break(1u);
LABEL_42:
              sub_27477D408(*(&v32 + 1), v32, v15);
            }
          }

          v19 = *(v4 - 16);
          *v33 = *v4;
          *&v33[9] = *(v4 + 9);
          v20 = *v7;
          v21 = *(v4 - 80);
          *v7 = *v11;
          *(v4 - 16) = v21;
          v22 = *(v4 - 48);
          *v4 = *(v4 - 64);
          *(v4 + 16) = v22;
          *(v4 - 55) = *&v33[9];
          *(v4 - 80) = v19;
          *(v4 - 64) = *v33;
          v4 -= 64;
          *v11 = v20;
          v23 = __CFADD__(v16, 1);
          v6 = v16 + 1;
          if (!v23)
          {
            continue;
          }

LABEL_38:
          a3 = v29 + 1;
          v4 = v28 + 64;
          v5 = v27 - 1;
          if (v29 + 1 == a2)
          {
            return result;
          }

          goto LABEL_3;
      }
    }
  }

  return result;
}

uint64_t sub_27492BA50(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v130 = MEMORY[0x277D84F90];
  v4 = a3[1];
  if (v4 < 1)
  {
    goto LABEL_162;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v105 = a4;
LABEL_3:
  v111 = v6;
  v112 = v5;
  if (v5 + 1 >= v4)
  {
    v4 = v5 + 1;
    goto LABEL_61;
  }

  v7 = *a3;
  v8 = (*a3 + ((v5 + 1) << 6));
  v9 = v8[1];
  v127 = *v8;
  v128 = v9;
  v129[0] = v8[2];
  *(v129 + 9) = *(v8 + 41);
  v118 = v5 << 6;
  v10 = (v7 + (v5 << 6));
  v11 = v10[1];
  v125[0] = *v10;
  v125[1] = v11;
  v126[0] = v10[2];
  *(v126 + 9) = *(v10 + 41);
  v120 = static SmartShortcutPickerSection.< infix(_:_:)(&v127, v125);
  v12 = (v10 + 5);
  v13 = 2;
  v115 = v4;
  while (2)
  {
    if (v5 + v13 >= v4)
    {
      goto LABEL_47;
    }

    *(&v121 + 1) = *(v12 + 6);
    v122 = v13;
    *&v121 = *(v12 + 7);
    v4 = v12[64];
    v15 = *(v12 + 9);
    v14 = *(v12 + 10);
    v17 = *(v12 - 2);
    v16 = *(v12 - 1);
    v18 = *v12;
    v20 = *(v12 + 1);
    v19 = *(v12 + 2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FEF8);
    switch(v4)
    {
      case 1:
        switch(v18)
        {
          case 1:
            goto LABEL_19;
          case 3:
            goto LABEL_31;
          default:
            goto LABEL_41;
        }

      case 2:
        switch(v18)
        {
          case 1:
            goto LABEL_29;
          case 2:
LABEL_19:
            if (v15 == v20 && v14 == v19)
            {
              goto LABEL_41;
            }

            v22 = sub_2749FDCC4();
            break;
          case 3:
            goto LABEL_31;
          default:
            goto LABEL_41;
        }

        goto LABEL_24;
      case 3:
        if (v121 == 0)
        {
          switch(v18)
          {
            case 1:
            case 2:
              if (v121 == 0)
              {
                goto LABEL_29;
              }

              goto LABEL_191;
            case 3:
LABEL_31:
              if (v17 == 1 && v16 == 0)
              {
                goto LABEL_41;
              }

              if (v17 | v16)
              {
                goto LABEL_192;
              }

              if ((v4 - 1) >= 2u && v121 != 0)
              {
                goto LABEL_191;
              }

              goto LABEL_41;
            default:
              goto LABEL_41;
          }
        }

        if ((v18 - 1) < 2)
        {
          goto LABEL_29;
        }

        if (!v18)
        {
LABEL_41:
          v6 = v111;
          v5 = v112;
          v4 = v115;
LABEL_42:
          v24 = v122;
          if (v120)
          {
            v4 = v5 + v122;
            a4 = v105;
            v27 = v118;
            goto LABEL_48;
          }

LABEL_43:
          v12 += 64;
          v13 = v24 + 1;
          continue;
        }

        v22 = (v17 | v16) == 0;
LABEL_24:
        v6 = v111;
        v5 = v112;
        v4 = v115;
LABEL_25:
        v24 = v122;
        if (((v120 ^ v22) & 1) == 0)
        {
          goto LABEL_43;
        }

        v4 = v5 + v122;
LABEL_47:
        a4 = v105;
        v27 = v118;
        if (v120)
        {
LABEL_48:
          if (v4 >= v5)
          {
            if (v5 < v4)
            {
              v28 = (v4 << 6) - 64;
              v29 = v4;
              v30 = v5;
              do
              {
                if (v30 != --v29)
                {
                  v31 = *a3;
                  if (!*a3)
                  {
                    goto LABEL_188;
                  }

                  v32 = (v31 + v27);
                  v33 = (v31 + v28);
                  v34 = v32[1];
                  v127 = *v32;
                  v128 = v34;
                  v129[0] = v32[2];
                  *(v129 + 9) = *(v32 + 41);
                  v35 = v27 != v28 || v32 >= v33 + 4;
                  if (v35)
                  {
                    v36 = *v33;
                    v37 = v33[1];
                    v38 = v33[3];
                    v32[2] = v33[2];
                    v32[3] = v38;
                    *v32 = v36;
                    v32[1] = v37;
                  }

                  v39 = v128;
                  *v33 = v127;
                  v33[1] = v39;
                  v33[2] = v129[0];
                  *(v33 + 41) = *(v129 + 9);
                }

                ++v30;
                v28 -= 64;
                v27 += 64;
              }

              while (v30 < v29);
            }

            goto LABEL_61;
          }

LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
          goto LABEL_185;
        }

LABEL_61:
        v40 = a3[1];
        if (v4 >= v40)
        {
LABEL_70:
          v42 = v4;
          goto LABEL_71;
        }

        if (__OFSUB__(v4, v5))
        {
          goto LABEL_182;
        }

        if (v4 - v5 >= a4)
        {
          goto LABEL_70;
        }

        if (__OFADD__(v5, a4))
        {
          goto LABEL_184;
        }

        if (v5 + a4 >= v40)
        {
          v41 = a3[1];
        }

        else
        {
          v41 = v5 + a4;
        }

        if (v41 < v5)
        {
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
          while (1)
          {
LABEL_191:
            sub_2749FDCB4();
            __break(1u);
LABEL_192:
            sub_27477D408(*(&v121 + 1), v121, v4);
          }
        }

        if (v4 == v41)
        {
          goto LABEL_70;
        }

        v117 = *a3;
        v84 = *a3 + (v4 << 6) + 32;
        v85 = v5 - v4;
        v108 = v41;
LABEL_124:
        v116 = v4;
        v109 = v85;
        v110 = v84;
        while (2)
        {
          v86 = (v84 - 32);
          *&v121 = *(v84 - 24);
          *(&v121 + 1) = *(v84 - 32);
          v4 = *(v84 - 16);
          v87 = *(v84 - 8);
          v124 = *v84;
          v88 = (v84 - 96);
          *&v119 = *(v84 - 88);
          *(&v119 + 1) = *(v84 - 96);
          v89 = *(v84 - 80);
          v91 = *(v84 - 72);
          v90 = *(v84 - 64);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FEF8);
          switch(v4)
          {
            case 1:
              switch(v89)
              {
                case 1:
                  goto LABEL_137;
                case 3:
                  goto LABEL_149;
                default:
                  goto LABEL_159;
              }

            case 2:
              switch(v89)
              {
                case 1:
                  goto LABEL_142;
                case 2:
                  goto LABEL_137;
                case 3:
                  goto LABEL_149;
                default:
                  goto LABEL_159;
              }

            case 3:
              if (v121 == 0)
              {
                switch(v89)
                {
                  case 1:
                  case 2:
                    if (v121 != 0)
                    {
                      goto LABEL_191;
                    }

                    goto LABEL_142;
                  case 3:
LABEL_149:
                    if (*(&v119 + 1) == 1 && v119 == 0)
                    {
                      goto LABEL_159;
                    }

                    if (v119 != 0)
                    {
                      goto LABEL_192;
                    }

                    if ((v4 - 1) >= 2u && v121 != 0)
                    {
                      goto LABEL_191;
                    }

                    goto LABEL_159;
                  default:
                    goto LABEL_159;
                }
              }

              if ((v89 - 1) >= 2 && (v89 != 3 || v119 != 0))
              {
                goto LABEL_159;
              }

              goto LABEL_142;
            default:
              if (v89)
              {
                goto LABEL_142;
              }

LABEL_137:
              v93 = v87 == v91 && v124 == v90;
              if (v93 || (sub_2749FDCC4() & 1) == 0)
              {
                goto LABEL_159;
              }

LABEL_142:
              if (!v117)
              {
                goto LABEL_186;
              }

              v94 = *v84;
              v128 = *(v84 - 16);
              v95 = v128;
              v129[0] = v94;
              *(v129 + 9) = *(v84 + 9);
              v127 = *v86;
              v96 = v127;
              v97 = *(v84 - 80);
              *v86 = *v88;
              *(v84 - 16) = v97;
              v98 = *(v84 - 48);
              *v84 = *(v84 - 64);
              *(v84 + 16) = v98;
              *(v84 - 55) = *(v129 + 9);
              v99 = v129[0];
              *(v84 - 80) = v95;
              *(v84 - 64) = v99;
              v84 -= 64;
              *v88 = v96;
              v35 = __CFADD__(v85++, 1);
              if (!v35)
              {
                continue;
              }

LABEL_159:
              v4 = v116 + 1;
              v84 = v110 + 64;
              v85 = v109 - 1;
              v42 = v108;
              if (v116 + 1 != v108)
              {
                goto LABEL_124;
              }

              v6 = v111;
              v5 = v112;
              break;
          }

          break;
        }

LABEL_71:
        if (v42 < v5)
        {
          goto LABEL_181;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_274763780();
          v6 = v102;
        }

        v4 = v6[2];
        v43 = v4 + 1;
        v107 = v42;
        if (v4 >= v6[3] >> 1)
        {
          sub_274763780();
          v6 = v103;
        }

        v6[2] = v43;
        v44 = v6 + 4;
        v45 = &v6[2 * v4 + 4];
        *v45 = v5;
        v45[1] = v107;
        v130 = v6;
        v123 = *a1;
        if (!*a1)
        {
          goto LABEL_189;
        }

        if (!v4)
        {
          goto LABEL_121;
        }

        while (2)
        {
          v46 = v43 - 1;
          v47 = &v44[2 * v43 - 2];
          v48 = &v6[2 * v43];
          if (v43 >= 4)
          {
            v53 = &v44[2 * v43];
            v54 = *(v53 - 8);
            v55 = *(v53 - 7);
            v59 = __OFSUB__(v55, v54);
            v56 = v55 - v54;
            if (v59)
            {
              goto LABEL_169;
            }

            v58 = *(v53 - 6);
            v57 = *(v53 - 5);
            v59 = __OFSUB__(v57, v58);
            v51 = v57 - v58;
            v52 = v59;
            if (v59)
            {
              goto LABEL_170;
            }

            v60 = v48[1];
            v61 = v60 - *v48;
            if (__OFSUB__(v60, *v48))
            {
              goto LABEL_172;
            }

            v59 = __OFADD__(v51, v61);
            v62 = v51 + v61;
            if (v59)
            {
              goto LABEL_175;
            }

            if (v62 >= v56)
            {
              v76 = *v47;
              v75 = v47[1];
              v59 = __OFSUB__(v75, v76);
              v77 = v75 - v76;
              if (v59)
              {
                goto LABEL_180;
              }

              if (v51 < v77)
              {
                v46 = v43 - 2;
              }
            }

            else
            {
LABEL_91:
              if (v52)
              {
                goto LABEL_171;
              }

              v64 = *v48;
              v63 = v48[1];
              v65 = __OFSUB__(v63, v64);
              v66 = v63 - v64;
              v67 = v65;
              if (v65)
              {
                goto LABEL_174;
              }

              v68 = v47[1];
              v69 = v68 - *v47;
              if (__OFSUB__(v68, *v47))
              {
                goto LABEL_177;
              }

              if (__OFADD__(v66, v69))
              {
                goto LABEL_179;
              }

              if (v66 + v69 < v51)
              {
                goto LABEL_106;
              }

              if (v51 < v69)
              {
                v46 = v43 - 2;
              }
            }
          }

          else
          {
            if (v43 == 3)
            {
              v49 = v6[4];
              v50 = v6[5];
              v59 = __OFSUB__(v50, v49);
              v51 = v50 - v49;
              v52 = v59;
              goto LABEL_91;
            }

            if (v43 < 2)
            {
              goto LABEL_173;
            }

            v71 = *v48;
            v70 = v48[1];
            v59 = __OFSUB__(v70, v71);
            v66 = v70 - v71;
            v67 = v59;
LABEL_106:
            if (v67)
            {
              goto LABEL_176;
            }

            v73 = *v47;
            v72 = v47[1];
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_178;
            }

            if (v74 < v66)
            {
              break;
            }
          }

          if (v46 - 1 >= v43)
          {
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
LABEL_181:
            __break(1u);
LABEL_182:
            __break(1u);
            goto LABEL_183;
          }

          if (!*a3)
          {
            goto LABEL_187;
          }

          v78 = &v44[2 * v46 - 2];
          v79 = *v78;
          v4 = &v44[2 * v46];
          v80 = *(v4 + 8);
          sub_27492C4A0((*a3 + (*v78 << 6)), (*a3 + (*v4 << 6)), (*a3 + (v80 << 6)), v123);
          if (v114)
          {
          }

          if (v80 < v79)
          {
            goto LABEL_166;
          }

          v81 = v6;
          v82 = v6[2];
          if (v46 > v82)
          {
            goto LABEL_167;
          }

          *v78 = v79;
          v78[1] = v80;
          if (v46 >= v82)
          {
            goto LABEL_168;
          }

          v114 = 0;
          v43 = v82 - 1;
          memmove(&v44[2 * v46], (v4 + 16), 16 * (v82 - 1 - v46));
          v81[2] = v82 - 1;
          v83 = v82 > 2;
          v6 = v81;
          if (v83)
          {
            continue;
          }

          break;
        }

        v130 = v6;
LABEL_121:
        v4 = a3[1];
        v5 = v107;
        a4 = v105;
        if (v107 < v4)
        {
          goto LABEL_3;
        }

LABEL_162:
        if (!*a1)
        {
          goto LABEL_190;
        }

        sub_27492C374(&v130, *a1, a3);

      default:
        if (v18)
        {
LABEL_29:
          v6 = v111;
          v5 = v112;
          v4 = v115;
          v24 = v122;
          if ((v120 & 1) == 0)
          {
            v4 = v112 + v122;
            a4 = v105;
            goto LABEL_61;
          }

          goto LABEL_43;
        }

        v21 = v15 == v20 && v14 == v19;
        v5 = v112;
        v4 = v115;
        if (!v21)
        {
          v22 = sub_2749FDCC4();
          v6 = v111;
          goto LABEL_25;
        }

        v6 = v111;
        goto LABEL_42;
    }
  }
}

uint64_t sub_27492C374(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2747DCFFC(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_27492C4A0((*a3 + (*v9 << 6)), (*a3 + (*v11 << 6)), (*a3 + (v12 << 6)), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_27492C4A0(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a2;
  v5 = a1;
  v6 = (a2 - a1) / 64;
  v63 = a3;
  v7 = (a3 - a2) / 64;
  if (v6 >= v7)
  {
    sub_274764C6C(a2, (a3 - a2) / 64, a4);
    v8 = a4;
    v54 = &a4[64 * v7];
    v67 = v5;
    while (1)
    {
      v28 = 0;
      v62 = v4 - 64;
      while (2)
      {
        v9 = &v54[v28];
        if (&v54[v28] <= v8 || v4 <= v5)
        {
          goto LABEL_79;
        }

        v65 = &v54[v28];
        v31 = *(v9 - 8);
        v30 = v9 - 64;
        v60 = v28;
        *&v56 = *(v30 + 1);
        *(&v56 + 1) = v31;
        v58 = &v63[v28];
        v32 = &v63[v28 - 64];
        v33 = v30[16];
        v34 = *(v30 + 3);
        v35 = *(v30 + 4);
        v57 = *(v4 - 8);
        v55 = *(v4 - 7);
        v36 = *(v4 - 48);
        v37 = *(v4 - 5);
        v38 = *(v4 - 4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FEF8);
        switch(v33)
        {
          case 1:
            switch(v36)
            {
              case 1:
                goto LABEL_57;
              case 3:
                goto LABEL_64;
              default:
                goto LABEL_72;
            }

          case 2:
            switch(v36)
            {
              case 1:
                goto LABEL_76;
              case 2:
                goto LABEL_57;
              case 3:
                goto LABEL_64;
              default:
                goto LABEL_72;
            }

          case 3:
            if (v56 == 0)
            {
              switch(v36)
              {
                case 1:
                case 2:
                  if (v56 == 0)
                  {
                    goto LABEL_76;
                  }

                  goto LABEL_90;
                case 3:
LABEL_64:
                  if (v57 == 1 && !v55)
                  {
                    break;
                  }

                  if (v57 | v55)
                  {
                    v51 = *(&v56 + 1);
                    v52 = v56;
                    v53 = v33;
LABEL_89:
                    sub_27477D408(v51, v52, v53);
LABEL_90:
                    result = sub_2749FDCB4();
                    __break(1u);
                    return result;
                  }

                  if ((v33 - 1) >= 2u && v56 != 0)
                  {
                    goto LABEL_90;
                  }

                  break;
                default:
                  break;
              }

LABEL_72:
              if (v65 != v58)
              {
                v41 = *v30;
                v42 = *(v30 + 1);
                v43 = *(v30 + 3);
                *(v32 + 2) = *(v30 + 2);
                *(v32 + 3) = v43;
                *v32 = v41;
                *(v32 + 1) = v42;
              }

              v28 = v60 - 64;
              v8 = a4;
              v5 = v67;
              continue;
            }

            if (!v36 || v36 == 3 && v57 | v55)
            {
              goto LABEL_72;
            }

LABEL_76:
            v44 = &v63[v60];
            v63 = &v63[v60 - 64];
            v54 += v60;
            v20 = v44 == v4;
            v8 = a4;
            v5 = v67;
            v4 -= 64;
            if (!v20)
            {
              v45 = *v62;
              v46 = *(v62 + 1);
              v47 = *(v62 + 3);
              *(v63 + 2) = *(v62 + 2);
              *(v63 + 3) = v47;
              *v63 = v45;
              *(v63 + 1) = v46;
            }

            break;
          default:
            if (v36)
            {
              goto LABEL_76;
            }

LABEL_57:
            v39 = v34 == v37 && v35 == v38;
            if (!v39 && (sub_2749FDCC4() & 1) != 0)
            {
              goto LABEL_76;
            }

            goto LABEL_72;
        }

        break;
      }
    }
  }

  sub_274764C6C(a1, (a2 - a1) / 64, a4);
  v8 = a4;
  v9 = &a4[64 * v6];
  v64 = v9;
  while (v8 < v9 && v4 < v63)
  {
    v66 = v5;
    v11 = *(v4 + 1);
    v59 = *v4;
    v61 = v4;
    v12 = v4[16];
    v14 = *(v4 + 3);
    v13 = *(v4 + 4);
    v15 = *v8;
    v16 = *(v8 + 1);
    v17 = v8[16];
    v19 = *(v8 + 3);
    v18 = *(v8 + 4);
    v69 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FEF8);
    switch(v12)
    {
      case 1:
        switch(v17)
        {
          case 1:
            goto LABEL_17;
          case 3:
            goto LABEL_27;
          default:
            goto LABEL_37;
        }

      case 2:
        switch(v17)
        {
          case 1:
            goto LABEL_25;
          case 2:
            goto LABEL_17;
          case 3:
            goto LABEL_27;
          default:
            goto LABEL_37;
        }

      case 3:
        if (v59 | v11)
        {
          if ((v17 - 1) < 2 || v17 && !(v15 | v16))
          {
LABEL_25:
            v21 = v61;
            v4 = v61 + 64;
            v22 = v66;
            v8 = v69;
            if (v66 == v61)
            {
              goto LABEL_39;
            }

            goto LABEL_38;
          }
        }

        else
        {
          switch(v17)
          {
            case 1:
            case 2:
              if (!(v11 | v59))
              {
                goto LABEL_25;
              }

              goto LABEL_90;
            case 3:
LABEL_27:
              if (v15 == 1 && v16 == 0)
              {
                break;
              }

              if (v15 | v16)
              {
                v51 = v59;
                v52 = v11;
                v53 = v12;
                goto LABEL_89;
              }

              if ((v12 - 1) >= 2u && (v11 | v59) != 0)
              {
                goto LABEL_90;
              }

              break;
            default:
              break;
          }
        }

LABEL_37:
        v21 = v69;
        v8 = v69 + 64;
        v22 = v66;
        v4 = v61;
        if (v66 == v69)
        {
          goto LABEL_39;
        }

LABEL_38:
        v25 = *v21;
        v26 = *(v21 + 1);
        v27 = *(v21 + 3);
        *(v22 + 2) = *(v21 + 2);
        *(v22 + 3) = v27;
        *v22 = v25;
        *(v22 + 1) = v26;
LABEL_39:
        v5 = v22 + 64;
        v9 = v64;
        break;
      default:
        if (v17)
        {
          goto LABEL_25;
        }

LABEL_17:
        v20 = v14 == v19 && v13 == v18;
        if (v20 || (sub_2749FDCC4() & 1) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_25;
    }
  }

  v4 = v5;
LABEL_79:
  v48 = (v9 - v8) / 64;
  if (v4 != v8 || v4 >= &v8[64 * v48])
  {
    memmove(v4, v8, v48 << 6);
  }

  return 1;
}

void sub_27492C9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v19 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v22 = *(*(a3 + 48) + 8 * v14);
    v15 = v22;
    v16 = a4(&v22);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
LABEL_16:

        sub_274975F44();
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_27492CB2C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_27492C9C0(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t SmartShortcutPickerPromotedActionsDataSource.__allocating_init()()
{
  v0 = swift_allocObject();
  SmartShortcutPickerPromotedActionsDataSource.init()();
  return v0;
}

uint64_t SmartShortcutPickerPromotedActionsDataSource.sections.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  return v1;
}

uint64_t sub_27492CC68@<X0>(uint64_t *a1@<X8>)
{
  result = SmartShortcutPickerPromotedActionsDataSource.sections.getter();
  *a1 = result;
  return result;
}

uint64_t SmartShortcutPickerPromotedActionsDataSource.sections.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2749FA914();
}

void (*SmartShortcutPickerPromotedActionsDataSource.sections.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  v2[6] = sub_2749FA8F4();
  return sub_2747AA744;
}

uint64_t SmartShortcutPickerPromotedActionsDataSource.$sections.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B708);
  sub_2749FA8D4();
  return swift_endAccess();
}

uint64_t sub_27492CE34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FF20);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3, a1);
  return SmartShortcutPickerPromotedActionsDataSource.$sections.setter(v4);
}

uint64_t SmartShortcutPickerPromotedActionsDataSource.$sections.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FF20);
  OUTLINED_FUNCTION_43();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  (*(v4 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B708);
  sub_2749FA8E4();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

void (*SmartShortcutPickerPromotedActionsDataSource.$sections.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FF20);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v6);
  v3[7] = __swift_coroFrameAllocStub(v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B708);
  sub_2749FA8D4();
  swift_endAccess();
  return sub_27492D158;
}

void sub_27492D158(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    SmartShortcutPickerPromotedActionsDataSource.$sections.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    SmartShortcutPickerPromotedActionsDataSource.$sections.setter(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t SmartShortcutPickerPromotedActionsDataSource.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B708);
  OUTLINED_FUNCTION_43();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = v9 - v5;
  v7 = OBJC_IVAR____TtC10WorkflowUI44SmartShortcutPickerPromotedActionsDataSource__sections;
  v9[1] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B710);
  sub_2749FA8C4();
  (*(v3 + 32))(v0 + v7, v6, v1);
  return v0;
}

uint64_t SmartShortcutPickerPromotedActionsDataSource.load()()
{
  OUTLINED_FUNCTION_79();
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27492D3A4, 0, 0);
}

uint64_t sub_27492D3A4()
{
  v1 = sub_27492D6A4();
  v2 = v0[3];
  v3 = v1;
  v4 = v0[2];
  v5 = sub_2749FD0E4();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v5);
  sub_2749FD0A4();

  v6 = sub_2749FD094();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v4;
  v7[5] = v3;
  sub_27479930C();
  v0[4] = v9;
  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_27492D53C;

  return MEMORY[0x282200460]();
}

uint64_t sub_27492D53C()
{
  OUTLINED_FUNCTION_79();
  v1 = *v0;
  OUTLINED_FUNCTION_8_1();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_27492D648, 0, 0);
}

uint64_t sub_27492D648()
{
  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_48_0();

  return v0();
}

uint64_t sub_27492D6A4()
{
  v1 = type metadata accessor for SmartShortcutPickerEntry();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = [v5 sharedRegistry];
  v7 = sub_2749FCD64();
  v8 = [v6 createActionWithIdentifier:v7 serializedParameters:0];

  v112 = *MEMORY[0x277D7A230];
  v9 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v11 = v10;
  v12 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v13 = sub_2749340F8(v9, v11, 1);
  if (v0)
  {
  }

  else
  {
    v14 = v13;
    v109 = v1;
    v110 = v2;
    v106 = 0;
    v108 = v4;
    v15 = objc_allocWithZone(MEMORY[0x277CD3A58]);
    v105 = v14;
    v111 = [v15 initWithApplicationRecord_];
    v16 = [v5 sharedRegistry];
    v97 = [v16 createActionWithIdentifier:*MEMORY[0x277D7CDB8] serializedParameters:0];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A58);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_274A0F620;
    v17 = objc_opt_self();
    v18 = [v17 clearColor];
    v19 = [objc_allocWithZone(MEMORY[0x277D79FB8]) initWithColor_];

    v20 = objc_allocWithZone(MEMORY[0x277D7A158]);
    v21 = sub_27491A250(0xD000000000000017, 0x8000000274A33BA0, v19);
    v107 = v8;
    sub_27492E1D8(v8, 0, v21, 0, 0, v2 + 32);

    v22 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v103 = v23;
    v104 = v22;
    sub_2749FCE14();
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v24 = qword_28159E448;
    v25 = sub_2749FCD64();
    v26 = sub_2749FCD64();

    v27 = [v24 localizedStringForKey:v25 value:v26 table:0];

    v28 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v101 = v29;
    v102 = v28;

    sub_27483AF08();
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v100 = sub_274903E28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A48);
    v30 = (v110[80] + 32) & ~v110[80];
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_274A0EF10;
    v98 = v31 + v30;
    v99 = v31;
    v110 = v97;
    v32 = [v17 clearColor];
    v33 = [objc_allocWithZone(MEMORY[0x277D79FB8]) initWithColor_];

    v34 = objc_allocWithZone(MEMORY[0x277D7A158]);
    v97 = sub_27491A250(0xD000000000000011, 0x8000000274A33BD0, v33);
    v116[0] = 0;
    v116[1] = 0xE000000000000000;
    sub_2749FD934();
    v35 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v37 = v36;

    v116[0] = v35;
    v116[1] = v37;
    MEMORY[0x277C5EBC0](0xD000000000000020, 0x8000000274A33BF0);
    v95 = v116[1];
    v96 = v116[0];
    sub_2749FCE14();
    v38 = sub_2749FCD64();
    v39 = sub_2749FCD64();

    v40 = [v24 localizedStringForKey:v38 value:v39 table:0];

    v41 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v93 = v42;
    v94 = v41;

    sub_2749FCE14();
    v43 = sub_2749FCD64();
    v44 = sub_2749FCD64();

    v45 = [v24 localizedStringForKey:v43 value:v44 table:0];

    v46 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v91 = v47;
    v92 = v46;

    sub_2749FCE14();
    v48 = sub_2749FCD64();
    v49 = sub_2749FCD64();

    v50 = [v24 localizedStringForKey:v48 value:v49 table:0];

    v51 = v110;
    v52 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v90 = v53;

    v54 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v56 = v55;
    v57 = objc_allocWithZone(MEMORY[0x277D7C100]);
    v58 = [v57 initWithValue_];
    v116[26] = &unk_288451868;
    v59 = swift_dynamicCastObjCProtocolConditional();
    if (v59)
    {
      v112 = v2;
      v60 = v58;
      v61 = v56;
      v62 = v54;
      v63 = v52;
      v64 = [v59 associatedAppBundleIdentifier];
      if (v64)
      {
        v65 = v64;
        v66 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v68 = v67;
      }

      else
      {
        v66 = 0;
        v68 = 0;
      }

      v52 = v63;
      v54 = v62;
      v56 = v61;
      v58 = v60;
      v2 = v112;
    }

    else
    {
      v69 = [v51 displayableAppDescriptor];
      if (v69)
      {
        v66 = sub_27492E9B8(v69);
        v68 = v70;
      }

      else
      {
        v66 = 0;
        v68 = 0;
      }
    }

    v114[0] = v94;
    v114[1] = v93;
    v114[2] = v92;
    v114[3] = v91;
    strcpy(&v114[4], "WFSelectedApp");
    HIWORD(v114[5]) = -4864;
    strcpy(&v114[6], "WFSelectedApp");
    HIWORD(v114[7]) = -4864;
    v114[8] = v52;
    v114[9] = v90;
    v114[10] = v54;
    v114[11] = v56;
    v114[12] = v58;
    v114[13] = 0xD00000000000001DLL;
    v114[14] = 0x8000000274A33C40;
    v114[15] = MEMORY[0x277D84F90];
    sub_274860690(v114);
    v71 = v110;
    v72 = [v110 identifier];
    v73 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v75 = v74;

    v115[136] = 0;
    memcpy(&v115[7], v114, 0x81uLL);
    v116[0] = v73;
    v116[1] = v75;
    v116[2] = v66;
    v116[3] = v68;
    v116[4] = v96;
    v116[5] = v95;
    LOBYTE(v116[6]) = 0;
    memcpy(&v116[6] + 1, v115, 0x88uLL);
    sub_274754670(v116);
    v76 = v108;
    memcpy(v108, v116, 0xB9uLL);
    v77 = v109;
    v78 = v97;
    *&v76[*(v109 + 24)] = v97;
    v79 = *(v77 + 20);
    v80 = *MEMORY[0x277D7D610];
    v81 = sub_2749FA0F4();
    (*(*(v81 - 8) + 104))(&v76[v79], v80, v81);
    v82 = v78;
    v83 = [v71 localizedKeywords];
    v84 = sub_2749FCF84();

    *&v76[*(v77 + 28)] = v84;
    sub_2748605C4(v76, v98);
    v85 = v103;
    *(v2 + 96) = v104;
    *(v2 + 104) = v85;
    *(v2 + 112) = 1;
    v86 = v101;
    *(v2 + 120) = v102;
    *(v2 + 128) = v86;
    v87 = v99;
    *(v2 + 136) = v100;
    v113 = MEMORY[0x277D84FA0];
    v88 = sub_274947AD8(v87, &v113);

    *(v2 + 144) = v88;
    *(v2 + 152) = 1;
  }

  return v2;
}

uint64_t sub_27492E018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2749FD0A4();
  v5[4] = sub_2749FD094();
  v7 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_27492E0B0, v7, v6);
}

uint64_t sub_27492E0B0()
{
  OUTLINED_FUNCTION_79();

  SmartShortcutPickerPromotedActionsDataSource.sections.setter();
  OUTLINED_FUNCTION_48_0();

  return v0();
}

uint64_t sub_27492E118(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_274819690;

  return sub_27492E018(a1, v4, v5, v7, v6);
}

uint64_t sub_27492E1D8@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v60 = type metadata accessor for SmartShortcutPickerEntry();
  v12 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_2749552B4(a1);
  if (!v14)
  {
    v63 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  v15 = v14;
  v62 = a3;
  if (a5)
  {

    v61 = a5;
    if (a2)
    {
LABEL_5:

      v56 = a2;
      goto LABEL_10;
    }
  }

  else
  {
    sub_2749F93D4();

    sub_2749F93C4();
    a4 = sub_2749F93B4();
    v17 = v16;

    v61 = v17;
    if (!v17)
    {
      a4 = 0;
      v61 = 0xE000000000000000;
    }

    a3 = v62;
    if (a2)
    {
      goto LABEL_5;
    }
  }

  sub_27483AF08();

  v56 = sub_274903E28();
LABEL_10:
  v59 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A48);
  v54 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_274A0EF10;
  v67[24] = &unk_288451868;
  v18 = swift_dynamicCastObjCProtocolConditional();
  v53 = a3;
  v57 = v15;
  if (!v18)
  {
    v26 = a1;
    v27 = a2;
    v28 = [v26 displayableAppDescriptor];
    if (v28)
    {
      v23 = sub_27492E9B8(v28);
      v25 = v29;
      goto LABEL_16;
    }

LABEL_15:
    v23 = 0;
    v25 = 0;
    goto LABEL_16;
  }

  v19 = a1;
  v20 = a2;
  v21 = [v18 associatedAppBundleIdentifier];
  if (!v21)
  {
    goto LABEL_15;
  }

  v22 = v21;
  v23 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v25 = v24;

LABEL_16:
  v30 = [a1 identifier];
  v31 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v33 = v32;

  v34 = [a1 localizedName];
  v35 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v37 = v36;

  v65[0] = v35;
  v65[1] = v37;
  v65[2] = MEMORY[0x277D84F90];
  sub_2747EBF0C(v65);
  v66[136] = 0;
  memcpy(&v66[7], v65, 0x81uLL);
  v67[0] = v31;
  v67[1] = v33;
  v67[2] = v23;
  v67[3] = v25;
  memset(&v67[4], 0, 17);
  memcpy(&v67[6] + 1, v66, 0x88uLL);
  sub_274754670(v67);
  v38 = v58;
  memcpy(v58, v67, 0xB9uLL);
  v39 = v53;
  v40 = v53;
  if (!v62)
  {
    v40 = [a1 icon];
    if (!v40)
    {
      sub_27483AF08();
      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v40 = sub_274903E28();
    }
  }

  v41 = v60;
  *&v38[*(v60 + 24)] = v40;
  v42 = *(v41 + 20);
  v43 = *MEMORY[0x277D7D610];
  v44 = sub_2749FA0F4();
  (*(*(v44 - 8) + 104))(&v38[v42], v43, v44);
  v45 = v39;
  v46 = [a1 localizedKeywords];
  v47 = sub_2749FCF84();

  *&v38[*(v41 + 28)] = v47;
  v48 = v55;
  sub_2748605C4(v38, v55 + v54);
  v49 = v57;
  *a6 = v63;
  *(a6 + 8) = v49;
  *(a6 + 16) = 1;
  v50 = v61;
  *(a6 + 24) = v59;
  *(a6 + 32) = v50;
  *(a6 + 40) = v56;
  v64 = MEMORY[0x277D84FA0];
  v51 = sub_274947AD8(v48, &v64);

  *(a6 + 48) = v51;
  *(a6 + 56) = 1;
  return result;
}

uint64_t SmartShortcutPickerPromotedActionsDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI44SmartShortcutPickerPromotedActionsDataSource__sections;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B708);
  OUTLINED_FUNCTION_1_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t SmartShortcutPickerPromotedActionsDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI44SmartShortcutPickerPromotedActionsDataSource__sections;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B708);
  OUTLINED_FUNCTION_1_2();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_27492E79C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_274819690;

  return SmartShortcutPickerPromotedActionsDataSource.load()();
}

unint64_t sub_27492E828(uint64_t a1)
{
  result = sub_27492E850();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_27492E850()
{
  result = qword_28096FF28;
  if (!qword_28096FF28)
  {
    type metadata accessor for SmartShortcutPickerPromotedActionsDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096FF28);
  }

  return result;
}

uint64_t type metadata accessor for SmartShortcutPickerPromotedActionsDataSource()
{
  result = qword_28096FF38;
  if (!qword_28096FF38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27492E8FC()
{
  sub_274860560();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_27492E9B8(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  return v3;
}

uint64_t SmartShortcutPickerSelectedEntry.init(entryIdentifier:sectionIdentifier:iconOverride:colorScheme:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a2 + 16);
  memcpy(a5, __src, 0xB9uLL);
  *(a5 + 192) = *a2;
  *(a5 + 208) = v9;
  *(a5 + 216) = a3;
  v10 = a5 + *(type metadata accessor for SmartShortcutPickerSelectedEntry() + 28);

  return sub_2747B96CC(a4, v10);
}

uint64_t type metadata accessor for SmartShortcutPickerSelectedEntry()
{
  result = qword_28096FFB0;
  if (!qword_28096FFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SmartShortcutPickerSelectedEntry.entryIdentifier.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0xB9uLL);
  memcpy(a1, v1, 0xB9uLL);
  return sub_274772ADC(__dst, v4);
}

uint64_t SmartShortcutPickerSelectedEntry.sectionIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 192);
  v3 = *(v1 + 200);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 208);
  *(a1 + 16) = v4;
  return sub_27477D408(v2, v3, v4);
}

void *SmartShortcutPickerSelectedEntry.iconOverride.getter()
{
  v1 = *(v0 + 216);
  v2 = v1;
  return v1;
}

uint64_t SmartShortcutPickerSelectedEntry.colorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SmartShortcutPickerSelectedEntry() + 28);

  return sub_27492EBCC(v3, a1);
}

uint64_t sub_27492EBCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968A30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SmartShortcutPickerSelectedEntry.encodedMetadataWithConfiguration(_:)(void *__src)
{
  memcpy(__dst, __src, 0x81uLL);
  v3 = *(v1 + 192);
  v4 = *(v1 + 200);
  v5 = *(v1 + 208);
  memcpy(__srca, __src, 0x81uLL);
  __srca[17] = 0;
  __srca[18] = 0;
  __srca[19] = v3;
  __srca[20] = v4;
  LOBYTE(__srca[21]) = v5;
  v6 = *(v1 + 216);
  memcpy(v11, __srca, 0xA9uLL);
  memset(&v11[22], 0, 48);
  LOBYTE(v11[28]) = -1;
  v11[29] = v6;
  sub_2749F8F54();
  swift_allocObject();
  sub_274772B38(__dst, v10);
  sub_27477D408(v3, v4, v5);
  sub_27477BFFC(__srca, v10);
  v7 = v6;
  sub_2749F8F44();
  memcpy(v10, v11, sizeof(v10));
  sub_2748914B0();
  v8 = sub_2749F8F34();
  sub_27477C9FC(__srca);

  sub_27477CFB4(v11);
  return v8;
}

void sub_27492EDC0()
{
  sub_27492EE94(319, &qword_28096FFC0, sub_2748A1180);
  if (v0 <= 0x3F)
  {
    sub_27492EE94(319, &qword_28096FFC8, MEMORY[0x277D7D618]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_27492EE94(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2749FD6C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_27492EEFC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 185))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

void sub_27492EF44(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(a1 + 184) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 185) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return;
      }

LABEL_8:
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = 2 * -a2;
      bzero((a1 + 56), 0x81uLL);
      return;
    }

    *(a1 + 185) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_27492EFCC(uint64_t result, char a2)
{
  v2 = *(result + 184) & 3 | (a2 << 6);
  *(result + 48) &= 1uLL;
  *(result + 184) = v2;
  return result;
}

__n128 SmartShortcutPickerSelectedEntryMetadata.init(configuration:configurationIdentifier:sectionIdentifier:)@<Q0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a4[1].n128_u8[0];
  memcpy(a5, __src, 0x81uLL);
  *(a5 + 136) = a2;
  *(a5 + 144) = a3;
  result = *a4;
  *(a5 + 152) = *a4;
  *(a5 + 168) = v9;
  return result;
}

uint64_t SmartShortcutPickerSelectedEntryMetadata.configuration.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x81uLL);
  memcpy(a1, v1, 0x81uLL);
  return sub_274772B38(__dst, v4);
}

uint64_t SmartShortcutPickerSelectedEntryMetadata.configurationIdentifier.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

uint64_t SmartShortcutPickerSelectedEntryMetadata.sectionIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 160);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 168);
  *(a1 + 16) = v4;
  return sub_27477D408(v2, v3, v4);
}

uint64_t sub_27492F0F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
  if (v4 || (sub_2749FDCC4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000017 && 0x8000000274A2A080 == a2;
    if (v6 || (sub_2749FDCC4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x8000000274A33C60 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_2749FDCC4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_27492F21C(char a1)
{
  if (!a1)
  {
    return 0x72756769666E6F63;
  }

  if (a1 == 1)
  {
    return 0xD000000000000017;
  }

  return 0xD000000000000011;
}

uint64_t sub_27492F294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27492F0F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27492F2BC(uint64_t a1)
{
  v2 = sub_27492F580();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27492F2F8(uint64_t a1)
{
  v2 = sub_27492F580();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SmartShortcutPickerSelectedEntryMetadata.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FFD0);
  OUTLINED_FUNCTION_43();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  memcpy(__dst, v1, 0x81uLL);
  v10 = *(v1 + 136);
  v19 = *(v1 + 144);
  v20 = v10;
  v11 = *(v1 + 152);
  v17 = *(v1 + 160);
  v18 = v11;
  v27 = *(v1 + 168);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_274772B38(__dst, v25);
  sub_27492F580();
  sub_2749FDE94();
  memcpy(v25, __dst, 0x81uLL);
  v29 = 0;
  sub_27492F5D4();
  sub_2749FDC44();
  if (v2)
  {
    memcpy(v24, v25, 0x81uLL);
    sub_274772B94(v24);
  }

  else
  {
    v12 = v27;
    v14 = v17;
    v13 = v18;
    memcpy(v24, v25, 0x81uLL);
    sub_274772B94(v24);
    LOBYTE(v21) = 1;
    sub_2749FDC14();
    v21 = v13;
    v22 = v14;
    v23 = v12;
    v28 = 2;
    sub_27477D408(v13, v14, v12);
    sub_274813D00();
    sub_2749FDC44();
    sub_27478C4DC(v21, v22, v23);
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_27492F580()
{
  result = qword_28096FFD8;
  if (!qword_28096FFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096FFD8);
  }

  return result;
}

unint64_t sub_27492F5D4()
{
  result = qword_28096FFE0;
  if (!qword_28096FFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096FFE0);
  }

  return result;
}

uint64_t SmartShortcutPickerSelectedEntryMetadata.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FFE8);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27492F580();
  sub_2749FDE74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __dst[159] = 0;
  sub_27492F8E8();
  sub_2749FDBE4();
  memcpy(__dst, v25, 0x81uLL);
  v16[0] = 1;
  v13 = sub_2749FDBB4();
  v14 = v6;
  __dst[158] = 2;
  sub_274813C58();
  sub_2749FDBE4();
  v7 = OUTLINED_FUNCTION_0_36();
  v8(v7);
  v9 = v22;
  v10 = v23;
  v11 = v24;
  memcpy(v15, __dst, 0x88uLL);
  v15[17] = v13;
  v15[18] = v14;
  v15[19] = v22;
  v15[20] = v23;
  LOBYTE(v15[21]) = v24;
  memcpy(a2, v15, 0xA9uLL);
  sub_27477BFFC(v15, v16);
  __swift_destroy_boxed_opaque_existential_0(a1);
  memcpy(v16, __dst, sizeof(v16));
  v17 = v13;
  v18 = v14;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  return sub_27477C9FC(v16);
}

unint64_t sub_27492F8E8()
{
  result = qword_28096FFF0;
  if (!qword_28096FFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096FFF0);
  }

  return result;
}

uint64_t sub_27492F974(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 169))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 144);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27492F9C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 168) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 169) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 169) = 0;
    }

    if (a2)
    {
      *(result + 144) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SmartShortcutPickerSelectedEntryMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_27492FB38()
{
  result = qword_28096FFF8;
  if (!qword_28096FFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096FFF8);
  }

  return result;
}

unint64_t sub_27492FB90()
{
  result = qword_280970000;
  if (!qword_280970000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970000);
  }

  return result;
}

unint64_t sub_27492FBE8()
{
  result = qword_280970008;
  if (!qword_280970008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970008);
  }

  return result;
}

uint64_t sub_27492FC3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t SmartShortcutPickerAppShortcutDataSource.__allocating_init(provider:options:denyListEnvironment:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  SmartShortcutPickerAppShortcutDataSource.init(provider:options:denyListEnvironment:)(a1, a2, a3);
  return v6;
}

uint64_t SmartShortcutPickerAppShortcutDataSource.Error.hashValue.getter()
{
  sub_2749FDDF4();
  MEMORY[0x277C5FB60](0);
  return sub_2749FDE44();
}

WorkflowUI::SmartShortcutPickerAppShortcutDataSource::Options sub_27492FE18@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = SmartShortcutPickerAppShortcutDataSource.Options.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_27492FE58@<X0>(uint64_t *a1@<X8>)
{
  result = SmartShortcutPickerAppShortcutDataSource.Options.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_27492FE98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274A0F620;
  *(inited + 32) = 0xD000000000000022;
  *(inited + 40) = 0x8000000274A29FE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A50);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_274A0EF10;
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v2 = qword_28159E448;
  v3 = sub_2749FCD64();
  v4 = sub_2749FCD64();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  v6 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v8 = v7;

  v9 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v11 = v10;
  sub_27471CF08(0, &qword_28096FBB8);
  v12 = sub_2749FD634();
  v13 = [objc_allocWithZone(MEMORY[0x277D7C928]) initWithValue_];

  strcpy((v1 + 32), "WFFaceTimeType");
  *(v1 + 47) = -18;
  strcpy((v1 + 48), "WFFaceTimeType");
  *(v1 + 63) = -18;
  *(v1 + 64) = v6;
  *(v1 + 72) = v8;
  *(v1 + 80) = v9;
  *(v1 + 88) = v11;
  *(v1 + 96) = v13;
  *(v1 + 104) = 0xD000000000000013;
  *(v1 + 112) = 0x8000000274A33D40;
  *(inited + 48) = v1;
  *(inited + 56) = 0xD000000000000022;
  *(inited + 64) = 0x8000000274A2A010;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_274A0EF10;
  sub_2749FCE14();
  v15 = qword_28159E448;
  v16 = sub_2749FCD64();
  v17 = sub_2749FCD64();

  v18 = [v15 localizedStringForKey:v16 value:v17 table:0];

  v19 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v21 = v20;

  v22 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v24 = v23;
  v25 = sub_2749FD634();
  v26 = [objc_allocWithZone(MEMORY[0x277D7C928]) initWithValue_];

  strcpy((v14 + 32), "WFFaceTimeType");
  *(v14 + 47) = -18;
  strcpy((v14 + 48), "WFFaceTimeType");
  *(v14 + 63) = -18;
  *(v14 + 64) = v19;
  *(v14 + 72) = v21;
  *(v14 + 80) = v22;
  *(v14 + 88) = v24;
  *(v14 + 96) = v26;
  *(v14 + 104) = 0xD000000000000013;
  *(v14 + 112) = 0x8000000274A33D40;
  *(inited + 72) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970098);
  result = sub_2749FCCB4();
  qword_280970010 = result;
  return result;
}

uint64_t SmartShortcutPickerAppShortcutDataSource.sections.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  return v1;
}

uint64_t sub_2749302F8@<X0>(uint64_t *a1@<X8>)
{
  result = SmartShortcutPickerAppShortcutDataSource.sections.getter();
  *a1 = result;
  return result;
}

uint64_t SmartShortcutPickerAppShortcutDataSource.sections.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2749FA914();
}

void (*SmartShortcutPickerAppShortcutDataSource.sections.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  v2[6] = sub_2749FA8F4();
  return sub_2747AA744;
}

uint64_t SmartShortcutPickerAppShortcutDataSource.$sections.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B708);
  sub_2749FA8D4();
  return swift_endAccess();
}

uint64_t sub_2749304C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FF20);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3, a1);
  return SmartShortcutPickerAppShortcutDataSource.$sections.setter(v4);
}

uint64_t SmartShortcutPickerAppShortcutDataSource.$sections.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FF20);
  OUTLINED_FUNCTION_43();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  (*(v4 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B708);
  sub_2749FA8E4();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

void (*SmartShortcutPickerAppShortcutDataSource.$sections.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FF20);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v6);
  v3[7] = __swift_coroFrameAllocStub(v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B708);
  sub_2749FA8D4();
  swift_endAccess();
  return sub_2749307E8;
}

void sub_2749307E8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    SmartShortcutPickerAppShortcutDataSource.$sections.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    SmartShortcutPickerAppShortcutDataSource.$sections.setter(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

id sub_27493089C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_2749FCD64();
  v2 = [v0 BOOLForKey_];

  return v2;
}

uint64_t SmartShortcutPickerAppShortcutDataSource.init(provider:options:denyListEnvironment:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B708);
  OUTLINED_FUNCTION_43();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = v16 - v11;
  v13 = *a2;
  v14 = OBJC_IVAR____TtC10WorkflowUI40SmartShortcutPickerAppShortcutDataSource__sections;
  v16[1] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B710);
  sub_2749FA8C4();
  (*(v9 + 32))(v3 + v14, v12, v7);
  *(v3 + OBJC_IVAR____TtC10WorkflowUI40SmartShortcutPickerAppShortcutDataSource_provider) = a1;
  *(v3 + OBJC_IVAR____TtC10WorkflowUI40SmartShortcutPickerAppShortcutDataSource_options) = v13;
  *(v3 + OBJC_IVAR____TtC10WorkflowUI40SmartShortcutPickerAppShortcutDataSource_denyListEnvironment) = a3;
  return v3;
}

uint64_t SmartShortcutPickerAppShortcutDataSource.load()()
{
  OUTLINED_FUNCTION_79();
  v1[36] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  v1[37] = swift_task_alloc();
  v2 = sub_2749F91B4();
  v1[38] = v2;
  v1[39] = *(v2 - 8);
  v1[40] = swift_task_alloc();
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_274930B54()
{
  OUTLINED_FUNCTION_79();
  *(v0 + 328) = sub_2749FD0A4();
  *(v0 + 336) = sub_2749FD094();
  OUTLINED_FUNCTION_78();
  v2 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_274930BE4, v2, v1);
}

uint64_t sub_274930BE4()
{
  OUTLINED_FUNCTION_79();

  *(v0 + 201) = sub_27493089C() & 1;
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_274930C54()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  v4 = *(v0[36] + OBJC_IVAR____TtC10WorkflowUI40SmartShortcutPickerAppShortcutDataSource_provider);
  sub_2749F91A4();
  sub_2749F9174();
  (*(v2 + 8))(v1, v3);
  v5 = sub_2749FCD64();
  v0[43] = v5;

  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = sub_274930DE8;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970038);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_274931DD8;
  v0[13] = &block_descriptor_41;
  v0[14] = v6;
  [v4 autoShortcutsForLocaleIdentifier:v5 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_274930DE8()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_21_1();
  *(v0 + 352) = *(v0 + 48);
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_274930EEC()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 272);
  *(v0 + 360) = v2;

  v3 = 0;
  v4 = *(v2 + 32);
  *(v0 + 202) = v4;
  if (1 << v4 < 64)
  {
    v5 = ~(-1 << (1 << v4));
  }

  else
  {
    v5 = -1;
  }

  v6 = MEMORY[0x277D84F98];
  if ((v5 & *(v2 + 64)) == 0)
  {
LABEL_6:
    while (1)
    {
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v7 >= (((1 << *(v0 + 202)) + 63) >> 6))
      {
        v45 = *(v0 + 288);

        v46 = sub_2749FD0E4();
        OUTLINED_FUNCTION_43_5(v46, v47, v48, v46);

        v49 = sub_2749FD094();
        v50 = swift_allocObject();
        v51 = MEMORY[0x277D85700];
        v50[2] = v49;
        v50[3] = v51;
        v50[4] = v45;
        v50[5] = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_15_22();
        *(v0 + 456) = v52;
        v53 = swift_task_alloc();
        *(v0 + 464) = v53;
        *v53 = v0;
        OUTLINED_FUNCTION_14_18(v53);
        OUTLINED_FUNCTION_28_14();

        return MEMORY[0x282200460]();
      }

      ++v3;
      if (*(*(v0 + 360) + 8 * v7 + 64))
      {
        v3 = v7;
        goto LABEL_10;
      }
    }

LABEL_60:
    __break(1u);
    return MEMORY[0x282200460]();
  }

LABEL_10:
  OUTLINED_FUNCTION_26_12(v3);
  v10 = *(v9 + 8 * v8);
  *(v0 + 280) = v6;
  v11 = sub_27472D918(v10);
  v62 = v2;

  for (i = 0; ; ++i)
  {
    *(v0 + 384) = v6;
    if (v11 == i)
    {

      v33 = 0;
      *(v0 + 203) = *(v6 + 32);
      OUTLINED_FUNCTION_39_11();
      *(v0 + 392) = MEMORY[0x277D84F90];
      if (!v6)
      {
        goto LABEL_33;
      }

      do
      {
LABEL_37:
        OUTLINED_FUNCTION_31_14();
        v36 = *v35;
        v37 = v35[1];
        *(v0 + 416) = v37;
        *(v0 + 424) = *(*(v38 + 56) + 8 * v39);
        v40 = objc_allocWithZone(MEMORY[0x277CC1E70]);
        swift_bridgeObjectRetain_n();

        v41 = sub_2749340F8(v36, v37, 0);
        *(v0 + 432) = v41;
        v2 = v41;
        if (v41)
        {
          if (([v41 wf:0 isAvailableInContext:?] & 1) != 0 || (v42 = *(v0 + 201), !VCIsInternalBuild()) || !v42)
          {
            v55 = swift_task_alloc();
            *(v0 + 440) = v55;
            *v55 = v0;
            OUTLINED_FUNCTION_12_26(v55);
            OUTLINED_FUNCTION_28_14();

            return sub_274931E94(v56, v57, v58, v59);
          }
        }

        v6 &= v6 - 1;
      }

      while (v6);
LABEL_33:
      while (1)
      {
        v34 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_58;
        }

        if (v34 >= (((1 << *(v0 + 203)) + 63) >> 6))
        {

          v3 = *(v0 + 376);
          v6 = MEMORY[0x277D84F98];
          if (((*(v0 + 368) - 1) & *(v0 + 368)) == 0)
          {
            goto LABEL_6;
          }

          goto LABEL_10;
        }

        v6 = *(*(v0 + 384) + 8 * v34 + 64);
        ++v33;
        if (v6)
        {
          v33 = v34;
          goto LABEL_37;
        }
      }
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x277C5F6D0](i, v10);
    }

    else
    {
      if (i >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      v13 = *(v10 + 8 * i + 32);
    }

    v14 = v13;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v15 = sub_27484F55C(v13, &selRef_attributionBundleIdentifier);
    if (v16)
    {
      v17 = v15;
      v18 = v16;
    }

    else
    {
      v18 = v62;

      v17 = v61;
    }

    v2 = sub_274797CC0(v17, v18);
    v20 = *(v6 + 16);
    v21 = (v19 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_57;
    }

    v23 = v19;
    if (*(v6 + 24) < v22)
    {
      break;
    }

LABEL_23:
    if (v23)
    {

      v2 = *(v6 + 56) + 8 * v2;
      MEMORY[0x277C5ECC0](v26);
      if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2749FCFB4();
      }

      sub_2749FCFF4();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_274A11F70;
      *(v27 + 32) = v14;
      OUTLINED_FUNCTION_41_11(v6 + 8 * (v2 >> 6));
      v28 = (*(v6 + 48) + 16 * v2);
      *v28 = v17;
      v28[1] = v18;
      *(*(v6 + 56) + 8 * v2) = v29;
      v30 = *(v6 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_59;
      }

      *(v6 + 16) = v32;
    }
  }

  sub_274934C7C(v22, 1, &qword_2809700A8);
  v6 = *(v0 + 280);
  v24 = sub_274797CC0(v17, v18);
  if ((v23 & 1) == (v25 & 1))
  {
    v2 = v24;
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_28_14();

  return sub_2749FDD54();
}

uint64_t sub_274931464()
{
  OUTLINED_FUNCTION_21_1();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8_1();
  *v5 = v4;
  *(v3 + 448) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_27493159C()
{
  v1 = *(v0 + 160);
  *(v0 + 208) = *(v0 + 144);
  *(v0 + 224) = v1;
  *(v0 + 240) = *(v0 + 176);
  *(v0 + 249) = *(v0 + 185);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 392);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_62:
    OUTLINED_FUNCTION_24_2();
    sub_274763F6C();
    v3 = v69;
  }

  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  if (v5 >= v4 >> 1)
  {
    OUTLINED_FUNCTION_14_9(v4);
    sub_274763F6C();
    v3 = v70;
  }

  *(v3 + 16) = v5 + 1;
  v6 = (v3 + (v5 << 6));
  v7 = *(v0 + 208);
  v8 = *(v0 + 224);
  v9 = *(v0 + 240);
  *(v6 + 73) = *(v0 + 249);
  v6[3] = v8;
  v6[4] = v9;
  v6[2] = v7;
  v73 = *(v0 + 448);
  v10 = *(v0 + 408);
  v11 = (*(v0 + 400) - 1) & *(v0 + 400);
  v71 = v3;
LABEL_5:
  *(v0 + 392) = v3;
  if (v11)
  {
    while (1)
    {
LABEL_11:
      OUTLINED_FUNCTION_31_14();
      v15 = *v13;
      v14 = v13[1];
      *(v0 + 416) = v14;
      *(v0 + 424) = *(*(v16 + 56) + 8 * v17);
      v18 = objc_allocWithZone(MEMORY[0x277CC1E70]);
      OUTLINED_FUNCTION_78();
      swift_bridgeObjectRetain_n();

      v19 = sub_2749340F8(v15, v14, 0);
      *(v0 + 432) = v19;
      if (v73)
      {
      }

      else
      {
        v20 = v19;
        if (v19)
        {
          if (([v19 wf:0 isAvailableInContext:?] & 1) != 0 || (v21 = *(v0 + 201), !VCIsInternalBuild()) || !v21)
          {
            v63 = swift_task_alloc();
            *(v0 + 440) = v63;
            *v63 = v0;
            OUTLINED_FUNCTION_12_26();
            OUTLINED_FUNCTION_54_8();

            return sub_274931E94(v64, v65, v66, v67);
          }
        }
      }

      v11 &= v11 - 1;

      v73 = 0;
      if (!v11)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    if (v12 >= (((1 << *(v0 + 203)) + 63) >> 6))
    {
      break;
    }

    v11 = *(*(v0 + 384) + 8 * v12 + 64);
    ++v10;
    if (v11)
    {
      v10 = v12;
      goto LABEL_11;
    }
  }

  v22 = *(v0 + 376);
  if (((*(v0 + 368) - 1) & *(v0 + 368)) != 0)
  {
LABEL_25:
    OUTLINED_FUNCTION_26_12(v22);
    v26 = *(v25 + 8 * v24);
    v27 = MEMORY[0x277D84F98];
    *(v0 + 280) = MEMORY[0x277D84F98];
    v28 = sub_27472D918(v26);

    for (i = 0; ; ++i)
    {
      *(v0 + 384) = v27;
      if (v28 == i)
      {

        v10 = 0;
        *(v0 + 203) = *(v27 + 32);
        OUTLINED_FUNCTION_39_11();
        v3 = v71;
        goto LABEL_5;
      }

      if ((v26 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x277C5F6D0](i, v26);
      }

      else
      {
        if (i >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v30 = *(v26 + 8 * i + 32);
      }

      v31 = v30;
      if (__OFADD__(i, 1))
      {
        goto LABEL_57;
      }

      v32 = sub_27484F55C(v30, &selRef_attributionBundleIdentifier);
      if (v33)
      {
        v34 = v32;
        v11 = v33;
      }

      else
      {
        v11 = 1;

        v34 = v72;
      }

      v36 = sub_274797CC0(v34, v11);
      v37 = *(v27 + 16);
      v38 = (v35 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
        goto LABEL_59;
      }

      v40 = v35;
      if (*(v27 + 24) < v39)
      {
        sub_274934C7C(v39, 1, &qword_2809700A8);
        v27 = *(v0 + 280);
        v41 = sub_274797CC0(v34, v11);
        if ((v40 & 1) != (v42 & 1))
        {
          OUTLINED_FUNCTION_54_8();

          return sub_2749FDD54();
        }

        v36 = v41;
      }

      if (v40)
      {

        v44 = (*(v27 + 56) + 8 * v36);
        MEMORY[0x277C5ECC0](v43);
        if (*((*v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2749FCFB4();
        }

        sub_2749FCFF4();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_274A11F70;
        *(v45 + 32) = v31;
        OUTLINED_FUNCTION_41_11(v27 + 8 * (v36 >> 6));
        v46 = (*(v27 + 48) + 16 * v36);
        *v46 = v34;
        v46[1] = v11;
        *(*(v27 + 56) + 8 * v36) = v47;
        v48 = *(v27 + 16);
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          goto LABEL_60;
        }

        *(v27 + 16) = v50;
      }
    }
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_61;
    }

    if (v23 >= (((1 << *(v0 + 202)) + 63) >> 6))
    {
      break;
    }

    ++v22;
    if (*(*(v0 + 360) + 8 * v23 + 64))
    {
      v22 = v23;
      goto LABEL_25;
    }
  }

  v53 = *(v0 + 288);

  v54 = sub_2749FD0E4();
  OUTLINED_FUNCTION_43_5(v54, v55, v56, v54);

  v57 = sub_2749FD094();
  v58 = swift_allocObject();
  v59 = MEMORY[0x277D85700];
  v58[2] = v57;
  v58[3] = v59;
  v58[4] = v53;
  v58[5] = v3;
  OUTLINED_FUNCTION_15_22();
  *(v0 + 456) = v60;
  v61 = swift_task_alloc();
  *(v0 + 464) = v61;
  *v61 = v0;
  OUTLINED_FUNCTION_14_18(v61);
  OUTLINED_FUNCTION_54_8();

  return MEMORY[0x282200460]();
}

uint64_t sub_274931B68()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_21_1();
  v1 = *v0;
  OUTLINED_FUNCTION_8_1();
  *v2 = v1;

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_274931C6C()
{
  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_48_0();

  return v0();
}

uint64_t sub_274931CD4()
{
  v1 = *(v0 + 344);
  swift_willThrow();

  OUTLINED_FUNCTION_48_0();

  return v2();
}

uint64_t sub_274931D54()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 432);

  OUTLINED_FUNCTION_48_0();

  return v2();
}

uint64_t sub_274931DD8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_27488721C(v4, v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809700B0);
    v7 = sub_2749FCCA4();

    return sub_274887218(v4, v7);
  }
}

uint64_t sub_274931E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_2749FA4E4();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_274931F68, 0, 0);
}

uint64_t sub_274931F68()
{
  v0[2] = MEMORY[0x277D84F90];
  v2 = sub_27472D918(v0[6]);
  v0[12] = v2;
  if (!v2)
  {
LABEL_13:
    if (qword_280966BA8 != -1)
    {
      OUTLINED_FUNCTION_27_0();
    }

    OUTLINED_FUNCTION_45();
    sub_27477DEAC();
    sub_2749F93D4();
    OUTLINED_FUNCTION_78();

    sub_2749F93C4();
    OUTLINED_FUNCTION_45();
    sub_2749F93B4();
    v41 = v40;

    v42 = v0[5];
    if (!v41)
    {
    }

    v46 = v0[3];
    sub_27471CF08(0, &qword_28096BB10);

    v47 = sub_274903E28();
    OUTLINED_FUNCTION_34_8(v47);
    v49 = OUTLINED_FUNCTION_56_7(v48, v52, *(&v52 + 1), v53, v54, v55, 7);

    *(v46 + 48) = v49;
    *(v46 + 56) = v42;

    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_41();

    __asm { BRAA            X1, X16 }
  }

  v3 = v2;
  result = objc_opt_self();
  v0[13] = result;
  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    v6 = 0;
    v7 = *MEMORY[0x277D7A4C0];
    v0[14] = *(v0[7] + OBJC_IVAR____TtC10WorkflowUI40SmartShortcutPickerAppShortcutDataSource_denyListEnvironment);
    v0[15] = v7;
    *&v5 = 136315138;
    v52 = v5;
    while (1)
    {
      v8 = OUTLINED_FUNCTION_36_12(v6);
      v11 = v10 ? *(v9 + 8 * v8 + 32) : MEMORY[0x277C5F6D0](v8);
      v12 = v11;
      v13 = OUTLINED_FUNCTION_35_12(v11);
      if (([v13 v14] & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_44_6();
      v15 = v12;
      v16 = sub_2749FA4D4();
      v17 = sub_2749FD2B4();

      v18 = os_log_type_enabled(v16, v17);
      v19 = v0[11];
      v20 = v0[8];
      v21 = v0[9];
      if (v18)
      {
        v22 = OUTLINED_FUNCTION_30_9();
        v23 = swift_slowAlloc();
        v32 = [v15 actionIdentifier];
        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v54 = v20;
        v55 = v19;

        v33 = OUTLINED_FUNCTION_47_5();
        v36 = sub_2747AF460(v33, v34, v35);

        *(v22 + 4) = v36;
        _os_log_impl(&dword_274719000, v16, v17, "Skipping app shortcut %s because it is denylisted.", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v1);
        OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_31();

        (*(v21 + 8))(v19, v20);
      }

      else
      {

        v37 = OUTLINED_FUNCTION_47_5();
        v39(v37, v38);
      }

      v6 = OUTLINED_FUNCTION_23_15();
      if (v10)
      {
        goto LABEL_13;
      }
    }

    v43 = swift_task_alloc();
    v0[18] = v43;
    *v43 = v0;
    OUTLINED_FUNCTION_1_42(v43);
    OUTLINED_FUNCTION_41();

    return sub_274932CCC(v44);
  }

  return result;
}

uint64_t sub_2749322DC(uint64_t a1)
{
  OUTLINED_FUNCTION_21_1();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_8_1();
  *v7 = v6;
  *(v5 + 152) = v1;

  if (!v1)
  {
    *(v5 + 160) = a1;
  }

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2749323F4()
{
  v39 = v0;
  v2 = v0[17];
  sub_27478248C();

  while (1)
  {
    v3 = OUTLINED_FUNCTION_23_15();
    if (v4)
    {
      if (qword_280966BA8 != -1)
      {
        OUTLINED_FUNCTION_27_0();
      }

      v23 = v0[5];
      v38[0] = 7;
      OUTLINED_FUNCTION_45();
      sub_27477DEAC();
      sub_2749F93D4();
      OUTLINED_FUNCTION_78();

      sub_2749F93C4();
      OUTLINED_FUNCTION_45();
      sub_2749F93B4();
      OUTLINED_FUNCTION_48_5();

      if (v1)
      {
        v25 = v0[4];
        v24 = v0[5];
      }

      else
      {
        v24 = v0[5];

        v25 = v0[4];
        v23 = v25;
        v1 = v24;
      }

      v30 = v0[3];
      sub_27471CF08(0, &qword_28096BB10);

      v31 = sub_274903E28();
      v32 = v0[2];
      *v30 = v25;
      *(v30 + 8) = v24;
      *(v30 + 16) = 1;
      *(v30 + 24) = v23;
      *(v30 + 32) = v1;
      *(v30 + 40) = v31;
      v38[0] = MEMORY[0x277D84FA0];
      v33 = sub_274947AD8(v32, v38);

      *(v30 + 48) = v33;
      *(v30 + 56) = 1;

      OUTLINED_FUNCTION_48_0();
      OUTLINED_FUNCTION_28_14();

      __asm { BRAA            X1, X16 }
    }

    v5 = OUTLINED_FUNCTION_36_12(v3);
    v7 = v4 ? *(v6 + 8 * v5 + 32) : MEMORY[0x277C5F6D0](v5);
    v8 = v7;
    v9 = OUTLINED_FUNCTION_35_12(v7);
    if (([v9 v10] & 1) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_44_6();
    v11 = v8;
    v12 = sub_2749FA4D4();
    v13 = sub_2749FD2B4();

    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[11];
    v1 = v0[8];
    v16 = v0[9];
    if (v14)
    {
      v17 = OUTLINED_FUNCTION_30_9();
      v18 = swift_slowAlloc();
      v38[0] = v18;
      *v17 = 136315138;
      v37 = v15;
      v19 = [v11 actionIdentifier];
      v36 = v1;
      v1 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v21 = v20;

      v22 = sub_2747AF460(v1, v21, v38);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_274719000, v12, v13, "Skipping app shortcut %s because it is denylisted.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_31();

      (*(v16 + 8))(v37, v36);
    }

    else
    {

      (*(v16 + 8))(v15, v1);
    }
  }

  v26 = swift_task_alloc();
  v0[18] = v26;
  *v26 = v0;
  OUTLINED_FUNCTION_1_42();
  OUTLINED_FUNCTION_28_14();

  return sub_274932CCC(v27);
}

uint64_t sub_27493275C()
{
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  sub_2749FA3D4();
  v4 = v3;
  v5 = v2;
  v6 = sub_2749FA4D4();
  v7 = sub_2749FD2C4();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 152);
  if (v8)
  {
    v10 = *(v0 + 136);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    *(v11 + 4) = v10;
    *v12 = v10;
    *(v11 + 12) = 2112;
    v13 = v10;
    v14 = v9;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    v12[1] = v15;
    _os_log_impl(&dword_274719000, v6, v7, "Failed to construct entries for: %@ due to error: %@", v11, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A280);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_31();
  }

  else
  {
  }

  v17 = *(v0 + 72);
  v16 = *(v0 + 80);
  v18 = *(v0 + 64);

  v19 = (*(v17 + 8))(v16, v18);
  v19.n128_u64[0] = 136315138;
  v65 = v19;
  while (1)
  {
    v20 = OUTLINED_FUNCTION_23_15();
    if (v21)
    {
      if (qword_280966BA8 != -1)
      {
        OUTLINED_FUNCTION_27_0();
      }

      OUTLINED_FUNCTION_45();
      sub_27477DEAC();
      sub_2749F93D4();
      OUTLINED_FUNCTION_78();

      sub_2749F93C4();
      OUTLINED_FUNCTION_45();
      sub_2749F93B4();
      v53 = v52;

      v54 = *(v0 + 40);
      if (!v53)
      {
      }

      v59 = *(v0 + 24);
      sub_27471CF08(0, &qword_28096BB10);

      v60 = sub_274903E28();
      OUTLINED_FUNCTION_34_8(v60);
      v62 = OUTLINED_FUNCTION_56_7(v61, v65.n128_i64[0], v65.n128_i64[1], v66, v67, v68, 7);

      *(v59 + 48) = v62;
      *(v59 + 56) = v54;

      OUTLINED_FUNCTION_48_0();
      OUTLINED_FUNCTION_41();

      __asm { BRAA            X1, X16 }
    }

    v22 = OUTLINED_FUNCTION_36_12(v20);
    v24 = v21 ? *(v23 + 8 * v22 + 32) : MEMORY[0x277C5F6D0](v22);
    v25 = v24;
    v26 = OUTLINED_FUNCTION_35_12(v24);
    if (([v26 v27] & 1) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_44_6();
    v28 = v25;
    v29 = sub_2749FA4D4();
    v30 = sub_2749FD2B4();

    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 88);
    v33 = *(v0 + 64);
    v34 = *(v0 + 72);
    if (v31)
    {
      v35 = OUTLINED_FUNCTION_30_9();
      v36 = swift_slowAlloc();
      v45 = [v28 actionIdentifier];
      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v67 = v33;
      v68 = v32;

      v46 = OUTLINED_FUNCTION_47_5();
      v49 = sub_2747AF460(v46, v47, v48);

      *(v35 + 4) = v49;
      _os_log_impl(&dword_274719000, v29, v30, "Skipping app shortcut %s because it is denylisted.", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v1);
      OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_31();

      (*(v34 + 8))(v32, v33);
    }

    else
    {

      v50 = OUTLINED_FUNCTION_47_5();
      v51(v50);
    }
  }

  v55 = swift_task_alloc();
  *(v0 + 144) = v55;
  *v55 = v0;
  OUTLINED_FUNCTION_1_42();
  OUTLINED_FUNCTION_41();

  return sub_274932CCC(v56);
}

uint64_t sub_274932BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2749FD0A4();
  v5[4] = sub_2749FD094();
  v7 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_274932C64, v7, v6);
}

uint64_t sub_274932C64()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 24);

  sub_274948330(v1);
  SmartShortcutPickerAppShortcutDataSource.sections.setter();
  OUTLINED_FUNCTION_48_0();

  return v2();
}

uint64_t sub_274932CCC(uint64_t a1)
{
  v2[56] = a1;
  v2[57] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809707E0);
  v2[58] = swift_task_alloc();
  v2[59] = *(type metadata accessor for SmartShortcutPickerEntry() - 8);
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v3 = sub_2749FA4E4();
  v2[66] = v3;
  v2[67] = *(v3 - 8);
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  sub_2749FD0A4();
  v2[70] = sub_2749FD094();
  v5 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_274932E98, v5, v4);
}

uint64_t sub_274932E98()
{
  v208 = v0;
  v1 = *(v0 + 448);

  sub_2749FA3D4();
  v2 = v1;
  v3 = sub_2749FA4D4();
  LOBYTE(v1) = sub_2749FD2E4();

  if (os_log_type_enabled(v3, v1))
  {
    v4 = *(v0 + 448);
    v5 = OUTLINED_FUNCTION_30_9();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v4;
    *v6 = v4;
    v7 = v4;
    OUTLINED_FUNCTION_55_4(&dword_274719000, v8, v9, "Generating entries for autoShortcut: %@");
    sub_274793F58(v6);
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_31();
  }

  v10 = *(v0 + 552);
  v11 = *(v0 + 536);
  v12 = *(v0 + 528);
  v13 = *(v0 + 456);

  v16 = *(v11 + 8);
  v14 = v11 + 8;
  v15 = v16;
  v16(v10, v12);
  v17 = *(v13 + OBJC_IVAR____TtC10WorkflowUI40SmartShortcutPickerAppShortcutDataSource_options);
  v18 = MEMORY[0x277D84F90];
  v19 = &selRef_setInterGroupSpacing_;
  if ((v17 & 2) != 0)
  {
    v190 = *(v13 + OBJC_IVAR____TtC10WorkflowUI40SmartShortcutPickerAppShortcutDataSource_options);
    v20 = [*(v0 + 448) actionIdentifier];
    v21 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v23 = v22;

    *(v0 + 424) = v21;
    *(v0 + 432) = v23;
    *(swift_task_alloc() + 16) = v0 + 424;
    LOBYTE(v21) = sub_274947DC8();

    if (v21)
    {
      goto LABEL_31;
    }

    v24 = *(v0 + 448);
    sub_2749FA3D4();
    v25 = v24;
    v26 = sub_2749FA4D4();
    LOBYTE(v24) = sub_2749FD2C4();

    if (os_log_type_enabled(v26, v24))
    {
      v27 = *(v0 + 448);
      v28 = OUTLINED_FUNCTION_30_9();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v27;
      *v29 = v27;
      v30 = v27;
      OUTLINED_FUNCTION_55_4(&dword_274719000, v31, v32, "Disambiguation entries for: %@");
      sub_274793F58(v29);
      OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_31();
    }

    v33 = *(v0 + 544);
    v34 = *(v0 + 528);
    v35 = *(v0 + 448);

    v15(v33, v34);
    v36 = [v35 parameterPresentation];
    if (!v36)
    {
      goto LABEL_31;
    }

    v37 = v36;
    v38 = sub_2749353E0(v36, &selRef_optionsCollections, &qword_2809706D0);
    if (v38)
    {
      v39 = v38;
      v40 = sub_2749353E0(*(v0 + 448), &selRef_basePhraseTemplates, &qword_2809700A0);
      if (v40)
      {
        v41 = v40;
        if (sub_27472D918(v40))
        {
          v42 = OUTLINED_FUNCTION_49_6();
          sub_2747B2790(v42, v43, v44);
          if (v33)
          {
            v45 = MEMORY[0x277C5F6D0](0, v41);
          }

          else
          {
            v45 = *(v41 + 32);
          }

          v188 = v45;
          v46 = *(v0 + 448);

          v183 = sub_27484F55C(v46, &selRef_actionParameterIdentifier);
          v186 = v47;
          if (v47)
          {
            v180 = *(v0 + 472);
            v184 = sub_27472D918(v39);
            v48 = 0;
            v181 = v39;
            v182 = v39 & 0xC000000000000001;
            while (1)
            {
              if (v184 == v48)
              {

                goto LABEL_28;
              }

              sub_2747B2790(v48, v182 == 0, v39);
              v49 = v182 ? MEMORY[0x277C5F6D0](v48, v39) : *(v39 + 8 * v48 + 32);
              v50 = v49;
              if (__OFADD__(v48, 1))
              {
                break;
              }

              v196 = *(v0 + 520);
              v198 = *(v0 + 512);
              v200 = v48;
              v51 = *(v0 + 464);
              v52 = *(v0 + 448);
              v192 = v52;
              v203 = v18;
              v53 = [v52 bundleIdentifier];
              v54 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
              v194 = v55;

              v56 = [v188 key];
              v57 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
              v59 = v58;

              v60 = [v52 actionIdentifier];
              v61 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
              v63 = v62;

              v64 = sub_2749F9164();
              __swift_storeEnumTagSinglePayload(v51, 1, 1, v64);
              v65 = objc_allocWithZone(MEMORY[0x277D79F58]);
              sub_2749341D4(v54, v194, v57, v59, v61, v63, v51);
              v66 = [(SEL *)v50 localizedTitle];
              _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
              OUTLINED_FUNCTION_48_5();

              v67 = [(SEL *)v50 optionsProviderReference];
              *(v0 + 288) = v57;
              *(v0 + 296) = v54;
              *(v0 + 304) = v183;
              *(v0 + 312) = v186;
              *(v0 + 320) = v67;
              *(v0 + 328) = 0;
              *(v0 + 336) = 1;
              sub_2748AF4F0(v0 + 288);
              memcpy(__dst, (v0 + 288), sizeof(__dst));
              v68 = [v192 actionIdentifier];
              v14 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

              v207[0] = 0;
              v207[1] = 0xE000000000000000;
              sub_2749FD934();

              strcpy(v207, ".namedQuery.");
              BYTE5(v207[1]) = 0;
              HIWORD(v207[1]) = -5120;
              v69 = [(SEL *)v50 optionsProviderReference];
              v70 = [v69 appShortcutsProviderMangledTypeName];

              v71 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
              v73 = v72;

              MEMORY[0x277C5EBC0](v71, v73);

              MEMORY[0x277C5EBC0](46, 0xE100000000000000);
              v74 = [(SEL *)v50 optionsProviderReference];
              v75 = [v74 appShortcutIndex];

              *(v0 + 440) = v75;
              v76 = sub_2749FDC74();
              MEMORY[0x277C5EBC0](v76);

              v18 = v203;
              sub_274933ECC();

              sub_27484F55C(v50, &selRef_systemImageName);
              v77 = v192;
              sub_27494DE48();
              sub_27483585C(v196, v198);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v82 = OUTLINED_FUNCTION_24_2();
                sub_274763E3C(v82, v83, v84, v203);
                v18 = v85;
              }

              v79 = *(v18 + 16);
              v78 = *(v18 + 24);
              if (v79 >= v78 >> 1)
              {
                v86 = OUTLINED_FUNCTION_14_9(v78);
                sub_274763E3C(v86, v87, v88, v18);
                v18 = v89;
              }

              v80 = *(v0 + 520);
              v81 = *(v0 + 512);

              sub_274835920(v80);
              *(v18 + 16) = v79 + 1;
              sub_2748605C4(v81, v18 + ((*(v180 + 80) + 32) & ~*(v180 + 80)) + *(v180 + 72) * v79);
              v48 = v200 + 1;
              v39 = v181;
            }

            __break(1u);
            goto LABEL_72;
          }

          goto LABEL_30;
        }
      }

LABEL_28:

      goto LABEL_31;
    }

LABEL_30:

LABEL_31:
    LOBYTE(v17) = v190;
    v19 = &selRef_setInterGroupSpacing_;
  }

  v50 = &selRef_setInterGroupSpacing_;
  if ((v17 & 1) == 0)
  {
    goto LABEL_55;
  }

  v90 = [*(v0 + 448) v19[36]];
  if (!v90)
  {
    goto LABEL_55;
  }

  v91 = v90;
  v92 = sub_27484F55C(*(v0 + 448), &selRef_localizedShortTitle);
  if (!v93)
  {
LABEL_54:

    goto LABEL_55;
  }

  v94 = v92;
  v95 = v93;
  v96 = sub_2749353E0(*(v0 + 448), &selRef_basePhraseTemplates, &qword_2809700A0);
  if (!v96)
  {
LABEL_52:

    goto LABEL_55;
  }

  v97 = v96;
  if (!sub_27472D918(v96))
  {

    goto LABEL_52;
  }

  sub_2747B2790(0, (v97 & 0xC000000000000001) == 0, v97);
  if ((v97 & 0xC000000000000001) != 0)
  {
    v98 = MEMORY[0x277C5F6D0](0, v97);
  }

  else
  {
    v98 = *(v97 + 32);
  }

  v99 = v98;
  v100 = *(v0 + 448);

  v101 = sub_27484F55C(v100, &selRef_actionParameterIdentifier);
  if (!v102)
  {

    goto LABEL_54;
  }

  v199 = v102;
  v201 = v101;
  v204 = v99;
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v103 = qword_28159E448;
  v104 = sub_2749FCD64();
  v105 = sub_2749FCD64();

  v106 = [v103 localizedStringForKey:v104 value:v105 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967628);
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_274A0EF10;
  *(v107 + 56) = MEMORY[0x277D837D0];
  *(v107 + 64) = sub_27475C4F4();
  *(v107 + 32) = v94;
  *(v107 + 40) = v95;
  v108 = sub_2749FCD74();
  v191 = v109;
  v193 = v108;

  if (qword_280966C60 != -1)
  {
    swift_once();
  }

  v195 = *(v0 + 504);
  v197 = *(v0 + 496);
  v185 = *(v0 + 464);
  v110 = *(v0 + 448);
  v111 = qword_280970010;
  v112 = [v110 actionIdentifier];
  v113 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v115 = v114;

  v116 = sub_274955B8C(v113, v115, v111);

  v117 = MEMORY[0x277D84F90];
  if (v116)
  {
    v117 = v116;
  }

  v189 = v117;
  v187 = v110;
  v118 = [v187 bundleIdentifier];
  v119 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v121 = v120;

  v122 = [v204 key];
  v123 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v125 = v124;

  v126 = [v187 &selRef_displayableAppDescriptor];
  v127 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v129 = v128;

  v130 = sub_2749F9164();
  OUTLINED_FUNCTION_43_5(v130, v131, v132, v130);
  v133 = objc_allocWithZone(MEMORY[0x277D79F58]);
  sub_2749341D4(v119, v121, v123, v125, v127, v129, v185);
  v134 = [v91 localizedSpecificTitle];
  v135 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v137 = v136;

  v138 = [v91 parameterIdentifier];
  v139 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v141 = v140;

  *(v0 + 152) = v135;
  *(v0 + 160) = v137;
  *(v0 + 168) = v193;
  *(v0 + 176) = v191;
  *(v0 + 184) = v201;
  *(v0 + 192) = v199;
  *(v0 + 200) = v139;
  *(v0 + 208) = v141;
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0;
  *(v0 + 256) = 0x656D617261504657;
  *(v0 + 264) = 0xEB00000000726574;
  *(v0 + 272) = v189;
  sub_274860690(v0 + 152);
  memcpy(__dst, (v0 + 152), sizeof(__dst));
  v142 = [v187 actionIdentifier];
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  sub_274933ECC();
  OUTLINED_FUNCTION_48_5();

  v143 = [v187 systemImageName];
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  OUTLINED_FUNCTION_53_7();
  sub_27494DE48();
  sub_27483585C(v195, v197);
  v144 = v18;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v173 = OUTLINED_FUNCTION_24_2();
    sub_274763E3C(v173, v174, v175, v18);
    v144 = v176;
  }

  v145 = *(v144 + 24);
  if (*(v144 + 16) >= v145 >> 1)
  {
    v177 = OUTLINED_FUNCTION_14_9(v145);
    sub_274763E3C(v177, v178, v179, v144);
  }

  v146 = *(v0 + 504);

  sub_274835920(v146);
  OUTLINED_FUNCTION_27_10();
  v50 = &selRef_setInterGroupSpacing_;
LABEL_55:
  v147 = sub_27484F55C(*(v0 + 448), &selRef_localizedShortTitle);
  if (!v148)
  {
    goto LABEL_68;
  }

  v14 = v147;
  v39 = v148;
  v149 = WFPrimaryPhrasesForAutoShortcut();
  sub_27471CF08(0, &qword_280970088);
  v48 = sub_2749FCF84();

  if (!sub_27472D918(v48))
  {

    goto LABEL_62;
  }

  v150 = OUTLINED_FUNCTION_49_6();
  sub_2747B2790(v150, v151, v152);
  if (!v149)
  {
    v153 = *(v48 + 32);
    goto LABEL_59;
  }

LABEL_72:
  v153 = MEMORY[0x277C5F6D0](0, v48);
LABEL_59:
  v154 = v153;

  if (*(v18 + 16))
  {

LABEL_62:

    goto LABEL_68;
  }

  v155 = v18;
  v202 = *(v0 + 488);
  v205 = *(v0 + 480);
  v156 = *(v0 + 448);
  sub_27471CF08(0, &qword_280970840);
  v157 = v156;
  v158 = v154;
  sub_274952410();
  *(v0 + 16) = v14;
  *(v0 + 24) = v39;
  *(v0 + 32) = MEMORY[0x277D84F90];
  sub_2747EBF0C(v0 + 16);
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  v159 = [v157 actionIdentifier];
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  sub_274933ECC();
  OUTLINED_FUNCTION_48_5();

  v160 = [v157 v50[35]];
  v18 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  OUTLINED_FUNCTION_53_7();
  sub_27494DE48();
  sub_27483585C(v202, v205);
  v161 = v155;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v166 = OUTLINED_FUNCTION_24_2();
    sub_274763E3C(v166, v167, v168, v155);
    v161 = v169;
  }

  v162 = *(v161 + 24);
  if (*(v161 + 16) >= v162 >> 1)
  {
    v170 = OUTLINED_FUNCTION_14_9(v162);
    sub_274763E3C(v170, v171, v172, v161);
  }

  v163 = *(v0 + 488);

  sub_274835920(v163);
  OUTLINED_FUNCTION_27_10();
LABEL_68:

  v164 = *(v0 + 8);

  return v164(v18);
}

uint64_t sub_274933ECC()
{

  v1 = sub_2749FCEA4();
  sub_2749FCE54();
  return v1;
}

uint64_t SmartShortcutPickerAppShortcutDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI40SmartShortcutPickerAppShortcutDataSource__sections;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B708);
  OUTLINED_FUNCTION_1_2();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t SmartShortcutPickerAppShortcutDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI40SmartShortcutPickerAppShortcutDataSource__sections;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B708);
  OUTLINED_FUNCTION_1_2();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_27493406C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2747ED3A8;

  return SmartShortcutPickerAppShortcutDataSource.load()();
}

id sub_2749340F8(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2749FCD64();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_2749F8FE4();

    swift_willThrow();
  }

  return v6;
}

id sub_2749341D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v10 = sub_2749FCD64();

  v11 = sub_2749FCD64();

  v12 = sub_2749FCD64();

  v13 = sub_2749F9164();
  v14 = 0;
  if (__swift_getEnumTagSinglePayload(a7, 1, v13) != 1)
  {
    v14 = sub_2749F9124();
    (*(*(v13 - 8) + 8))(a7, v13);
  }

  v15 = [v8 initWithBundleIdentifier:v10 basePhraseTemplate:v11 actionIdentifier:v12 parameterIdentifier:v14];

  return v15;
}

void sub_2749342FC(uint64_t a1, char a2)
{
  v4 = v2;
  OUTLINED_FUNCTION_19_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DC0);
  OUTLINED_FUNCTION_26();
  v38 = a2;
  v6 = sub_2749FDB44();
  if (!v3[2])
  {
LABEL_29:

LABEL_30:
    *v4 = v6;
    return;
  }

  v37 = v2;
  v7 = 0;
  OUTLINED_FUNCTION_0_37();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  v13 = v6 + 64;
  if ((v9 & v8) == 0)
  {
LABEL_4:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      ++v15;
      if (v3[v7 + 8])
      {
        OUTLINED_FUNCTION_21();
        v10 = v17 & v16;
        goto LABEL_9;
      }
    }

    if ((v38 & 1) == 0)
    {

      v4 = v37;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_9_24();
    v4 = v37;
    if (v33 != v34)
    {
      OUTLINED_FUNCTION_24_16(v32);
    }

    else
    {
      v35 = OUTLINED_FUNCTION_13_24();
      sub_27476A4B0(v35, v36, (v3 + 8));
    }

    v3[2] = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_9:
    v18 = v14 | (v7 << 6);
    v19 = *(v3[6] + 8 * v18);
    v20 = (v3[7] + 16 * v18);
    v21 = *v20;
    v22 = v20[1];
    if ((v38 & 1) == 0)
    {
      v23 = v19;
    }

    sub_2749FD5F4();
    OUTLINED_FUNCTION_2_39();
    OUTLINED_FUNCTION_40_12();
    if (v24)
    {
      break;
    }

    OUTLINED_FUNCTION_31_1();
LABEL_21:
    OUTLINED_FUNCTION_5_36();
    *(v13 + v28) |= v29;
    *(*(v6 + 48) + 8 * v30) = v19;
    v31 = (*(v6 + 56) + 16 * v30);
    *v31 = v21;
    v31[1] = v22;
    OUTLINED_FUNCTION_40_1();
    if (!v10)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_30_1();
  while (1)
  {
    OUTLINED_FUNCTION_133();
    if (v24)
    {
      if (v26)
      {
        break;
      }
    }

    if (v25 == v27)
    {
      v25 = 0;
    }

    if (*(v13 + 8 * v25) != -1)
    {
      OUTLINED_FUNCTION_29_0();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_2749344E4(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_2749F9EB4();
  OUTLINED_FUNCTION_43();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DD0);
  OUTLINED_FUNCTION_26();
  v52 = a2;
  v12 = sub_2749FDB44();
  if (!v11[2])
  {
LABEL_30:

LABEL_31:
    *v3 = v12;
    return;
  }

  v57 = v10;
  v49[0] = v2;
  v13 = 0;
  v14 = v11 + 8;
  OUTLINED_FUNCTION_0_37();
  v17 = v16 & v15;
  v19 = (v18 + 63) >> 6;
  v49[1] = v7 + 16;
  v50 = v11;
  v51 = v7;
  v53 = (v7 + 32);
  v20 = v12 + 8;
  if ((v16 & v15) == 0)
  {
LABEL_4:
    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v13 >= v19)
      {
        break;
      }

      ++v22;
      if (v14[v13])
      {
        OUTLINED_FUNCTION_21();
        v17 = v24 & v23;
        goto LABEL_9;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v49[0];
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_9_24();
    v3 = v49[0];
    if (v45 != v46)
    {
      *v14 = -1 << v44;
    }

    else
    {
      v47 = OUTLINED_FUNCTION_13_24();
      sub_27476A4B0(v47, v48, v14);
    }

    v11[2] = 0;
    goto LABEL_30;
  }

  while (1)
  {
    v21 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_9:
    v25 = v21 | (v13 << 6);
    v56 = *(v51 + 72);
    if (v52)
    {
      v26 = OUTLINED_FUNCTION_50_8();
      v27(v26);
      v28 = (v11[7] + 16 * v25);
      v29 = *v28;
      v54 = v28[1];
      v55 = v29;
    }

    else
    {
      v30 = OUTLINED_FUNCTION_50_8();
      v31(v30);
      v32 = (v11[7] + 16 * v25);
      v33 = *v32;
      v54 = v32[1];
      v55 = v33;
    }

    sub_274935364(&qword_280967AF0, MEMORY[0x277D7D388]);
    sub_2749FCCF4();
    OUTLINED_FUNCTION_2_39();
    OUTLINED_FUNCTION_40_12();
    if (v36)
    {
      break;
    }

    v37 = __clz(__rbit64(v35)) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
    *(v20 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
    (*v53)(v12[6] + v56 * v37, v57, v5);
    v42 = (v12[7] + 16 * v37);
    v43 = v54;
    *v42 = v55;
    v42[1] = v43;
    ++v12[2];
    v11 = v50;
    if (!v17)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_30_1();
  while (1)
  {
    OUTLINED_FUNCTION_133();
    if (v36)
    {
      if (v39)
      {
        break;
      }
    }

    if (v38 == v40)
    {
      v38 = 0;
    }

    v41 = v20[v38];
    if (v41 != -1)
    {
      v37 = __clz(__rbit64(~v41)) + (v38 << 6);
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_274934888(uint64_t a1, char a2)
{
  v4 = v2;
  OUTLINED_FUNCTION_19_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967DE8);
  OUTLINED_FUNCTION_26();
  v6 = sub_2749FDB44();
  if (!v3[2])
  {

LABEL_30:
    *v4 = v6;
    return;
  }

  v35 = v2;
  v7 = 0;
  OUTLINED_FUNCTION_0_37();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  v13 = v6 + 64;
  if ((v9 & v8) == 0)
  {
LABEL_4:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      ++v15;
      if (v3[v7 + 8])
      {
        OUTLINED_FUNCTION_21();
        v10 = v17 & v16;
        goto LABEL_9;
      }
    }

    if (a2)
    {
      OUTLINED_FUNCTION_9_24();
      if (v31 != v32)
      {
        OUTLINED_FUNCTION_24_16(v30);
      }

      else
      {
        v33 = OUTLINED_FUNCTION_13_24();
        sub_27476A4B0(v33, v34, (v3 + 8));
      }

      v3[2] = 0;
    }

    v4 = v35;
    goto LABEL_30;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_9:
    v18 = v14 | (v7 << 6);
    v19 = *(v3[6] + 8 * v18);
    v20 = *(v3[7] + 8 * v18);
    if ((a2 & 1) == 0)
    {
      v21 = v19;
      v22 = v20;
    }

    sub_2749FD5F4();
    OUTLINED_FUNCTION_2_39();
    OUTLINED_FUNCTION_40_12();
    if (v23)
    {
      break;
    }

    OUTLINED_FUNCTION_31_1();
LABEL_21:
    OUTLINED_FUNCTION_5_36();
    *(v13 + v27) |= v28;
    *(*(v6 + 48) + 8 * v29) = v19;
    *(*(v6 + 56) + 8 * v29) = v20;
    OUTLINED_FUNCTION_40_1();
    if (!v10)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_30_1();
  while (1)
  {
    OUTLINED_FUNCTION_133();
    if (v23)
    {
      if (v25)
      {
        break;
      }
    }

    if (v24 == v26)
    {
      v24 = 0;
    }

    if (*(v13 + 8 * v24) != -1)
    {
      OUTLINED_FUNCTION_29_0();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_274934A68(uint64_t a1, char a2)
{
  v4 = v2;
  OUTLINED_FUNCTION_19_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(v6);
  OUTLINED_FUNCTION_26();
  v40 = a2;
  v7 = sub_2749FDB44();
  if (!v3[2])
  {
LABEL_29:

LABEL_30:
    *v4 = v7;
    return;
  }

  v39 = v3;
  v8 = 0;
  v9 = (v3 + 8);
  OUTLINED_FUNCTION_0_37();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v15 = v7 + 64;
  if ((v11 & v10) == 0)
  {
LABEL_4:
    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v8 >= v14)
      {
        break;
      }

      ++v17;
      if (*(v9 + 8 * v8))
      {
        OUTLINED_FUNCTION_21();
        v12 = v19 & v18;
        goto LABEL_9;
      }
    }

    if ((v40 & 1) == 0)
    {

      v4 = v2;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_9_24();
    v4 = v2;
    if (v35 != v36)
    {
      OUTLINED_FUNCTION_24_16(v34);
    }

    else
    {
      v37 = OUTLINED_FUNCTION_13_24();
      sub_27476A4B0(v37, v38, v9);
    }

    v3[2] = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_9:
    v20 = v16 | (v8 << 6);
    v21 = (v3[6] + 16 * v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = *(v3[7] + 8 * v20);
    if ((v40 & 1) == 0)
    {

      v25 = v24;
    }

    sub_2749FDDF4();
    sub_2749FCE24();
    sub_2749FDE44();
    OUTLINED_FUNCTION_2_39();
    OUTLINED_FUNCTION_40_12();
    if (v26)
    {
      break;
    }

    OUTLINED_FUNCTION_31_1();
LABEL_21:
    OUTLINED_FUNCTION_5_36();
    *(v15 + v30) |= v31;
    v33 = (*(v7 + 48) + 16 * v32);
    *v33 = v22;
    v33[1] = v23;
    *(*(v7 + 56) + 8 * v32) = v24;
    OUTLINED_FUNCTION_40_1();
    v3 = v39;
    if (!v12)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_30_1();
  while (1)
  {
    OUTLINED_FUNCTION_133();
    if (v26)
    {
      if (v28)
      {
        break;
      }
    }

    if (v27 == v29)
    {
      v27 = 0;
    }

    if (*(v15 + 8 * v27) != -1)
    {
      OUTLINED_FUNCTION_29_0();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_274934C7C(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v37 = a2;
  v7 = sub_2749FDB44();
  if (!*(v6 + 16))
  {
LABEL_29:

LABEL_30:
    *v4 = v7;
    return;
  }

  v36 = v6;
  v8 = 0;
  v9 = v6 + 64;
  OUTLINED_FUNCTION_0_37();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v15 = v7 + 64;
  if ((v11 & v10) == 0)
  {
LABEL_4:
    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v8 >= v14)
      {
        break;
      }

      ++v17;
      if (*(v9 + 8 * v8))
      {
        OUTLINED_FUNCTION_21();
        v12 = v19 & v18;
        goto LABEL_9;
      }
    }

    if ((v37 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_30;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      v34 = OUTLINED_FUNCTION_13_24();
      sub_27476A4B0(v34, v35, v9);
    }

    else
    {
      OUTLINED_FUNCTION_24_16(v33);
    }

    *(v6 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_9:
    v20 = v16 | (v8 << 6);
    v21 = (*(v6 + 48) + 16 * v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = *(*(v6 + 56) + 8 * v20);
    if ((v37 & 1) == 0)
    {
    }

    sub_2749FDDF4();
    sub_2749FCE24();
    sub_2749FDE44();
    OUTLINED_FUNCTION_2_39();
    OUTLINED_FUNCTION_40_12();
    if (v25)
    {
      break;
    }

    OUTLINED_FUNCTION_31_1();
LABEL_21:
    OUTLINED_FUNCTION_5_36();
    *(v15 + v29) |= v30;
    v32 = (*(v7 + 48) + 16 * v31);
    *v32 = v22;
    v32[1] = v23;
    *(*(v7 + 56) + 8 * v31) = v24;
    OUTLINED_FUNCTION_40_1();
    v6 = v36;
    if (!v12)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_30_1();
  while (1)
  {
    OUTLINED_FUNCTION_133();
    if (v25)
    {
      if (v27)
      {
        break;
      }
    }

    if (v26 == v28)
    {
      v26 = 0;
    }

    if (*(v15 + 8 * v26) != -1)
    {
      OUTLINED_FUNCTION_29_0();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_274934EAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2747ED3A8;

  return sub_274932BCC(a1, v4, v5, v7, v6);
}

unint64_t sub_274934F70()
{
  result = qword_280970040;
  if (!qword_280970040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970040);
  }

  return result;
}

unint64_t sub_274934FC8()
{
  result = qword_280970048;
  if (!qword_280970048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970048);
  }

  return result;
}

unint64_t sub_274935020()
{
  result = qword_280970050;
  if (!qword_280970050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970050);
  }

  return result;
}

unint64_t sub_274935078()
{
  result = qword_280970058;
  if (!qword_280970058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970058);
  }

  return result;
}

unint64_t sub_2749350D0()
{
  result = qword_280970060;
  if (!qword_280970060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970060);
  }

  return result;
}

uint64_t sub_274935124(uint64_t a1)
{
  result = sub_274935364(&qword_280970068, type metadata accessor for SmartShortcutPickerAppShortcutDataSource);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for SmartShortcutPickerAppShortcutDataSource()
{
  result = qword_280970070;
  if (!qword_280970070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2749351D0()
{
  sub_274860560();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

_BYTE *storeEnumTagSinglePayload for SmartShortcutPickerAppShortcutDataSource.Error(_BYTE *result, int a2, int a3)
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

uint64_t sub_274935364(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2749353E0(void *a1, SEL *a2, unint64_t *a3)
{
  v4 = [a1 *a2];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  sub_27471CF08(0, a3);
  v6 = sub_2749FCF84();

  return v6;
}

uint64_t sub_27493550C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  sub_274813418();
  OUTLINED_FUNCTION_61_4();
  sub_2747B0D84();
  v4 = v3;
  sub_274730F8C();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v1;
}

uint64_t sub_274935590(uint64_t a1, void (*a2)(void, void), uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  a2(*(a1 + 16), 0);
  OUTLINED_FUNCTION_61_4();
  v6 = a3();
  sub_274730F8C();
  if (v6 != v4)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_27493562C(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_2749FDA14();
  v3 = a1 + 32;
  if (!v2)
  {
    return v6;
  }

  while (1)
  {
    sub_274797FD4(v3, v5);
    sub_27471CF08(0, &qword_280970448);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_2749FD9E4();
    sub_2749FDA24();
    OUTLINED_FUNCTION_99();
    sub_2749FDA34();
    sub_2749FD9F4();
    v3 += 32;
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_274935734(uint64_t a1)
{
  v2 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  sub_27476DB6C();
  v3 = v9;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_274799038(v4, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970440);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v9 = v3;
      v5 = *(v3 + 16);
      if (v5 >= *(v3 + 24) >> 1)
      {
        sub_27476DB6C();
        v3 = v9;
      }

      *(v3 + 16) = v5 + 1;
      *(v3 + 8 * v5 + 32) = v7;
      v4 += 40;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t static SmartShortcutPickerActionConfiguration.SummaryString.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_2749FDCC4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_44();

      return sub_2749FDCC4();
    }
  }

  return result;
}

uint64_t sub_2749358FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656E69666564 && a2 == 0xE700000000000000;
  if (v4 || (sub_2749FDCC4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E696665646E75 && a2 == 0xE900000000000064)
  {

    return 1;
  }

  else
  {
    v7 = sub_2749FDCC4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2749359D4(char a1)
{
  if (a1)
  {
    return 0x656E696665646E75;
  }

  else
  {
    return 0x64656E69666564;
  }
}

uint64_t sub_274935A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2749358FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_274935A40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2749359CC();
  *a1 = result;
  return result;
}

uint64_t sub_274935A68(uint64_t a1)
{
  v2 = sub_274935C18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_274935AA4(uint64_t a1)
{
  v2 = sub_274935C18();

  return MEMORY[0x2821FE720](a1, v2);
}

void SmartShortcutPickerActionConfiguration.SummaryString.encode(to:)()
{
  OUTLINED_FUNCTION_32_13();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809700C0);
  OUTLINED_FUNCTION_43();
  v7 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_50_9(v3, v3[3]);
  sub_274935C18();
  sub_2749FDE94();
  OUTLINED_FUNCTION_33_11();
  sub_2749FDC34();
  if (!v0)
  {
    OUTLINED_FUNCTION_59_5();
    OUTLINED_FUNCTION_33_11();
    sub_2749FDC34();
  }

  (*(v7 + 8))(v1, v4);
  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_31_15();
}

unint64_t sub_274935C18()
{
  result = qword_2809700C8;
  if (!qword_2809700C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809700C8);
  }

  return result;
}

uint64_t SmartShortcutPickerActionConfiguration.SummaryString.hash(into:)()
{
  sub_2749FCE24();

  return sub_2749FCE24();
}

uint64_t SmartShortcutPickerActionConfiguration.SummaryString.hashValue.getter()
{
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_68();
  sub_2749FCE24();
  sub_2749FCE24();
  return sub_2749FDE44();
}

void SmartShortcutPickerActionConfiguration.SummaryString.init(from:)()
{
  OUTLINED_FUNCTION_32_13();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809700D0);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_41_12();
  OUTLINED_FUNCTION_50_9(v6, v7);
  sub_274935C18();
  sub_2749FDE74();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    v8 = sub_2749FDBD4();
    v10 = v9;
    OUTLINED_FUNCTION_59_5();
    v11 = sub_2749FDBD4();
    v13 = v12;
    v16 = v11;
    v14 = OUTLINED_FUNCTION_99();
    v15(v14);
    *v4 = v8;
    v4[1] = v10;
    v4[2] = v16;
    v4[3] = v13;

    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  OUTLINED_FUNCTION_31_15();
}

uint64_t SmartShortcutPickerActionConfiguration.CollectionIdentifer.ResolverType.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2749FDB74();

  *a1 = v2 != 0;
  return result;
}

uint64_t static SmartShortcutPickerActionConfiguration.CollectionIdentifer.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v4 == 1)
    {
      if (v5 == 1)
      {
        sub_27471CF08(0, &qword_28159E390);
        v6 = OUTLINED_FUNCTION_63();
        sub_2747E2DB4(v6, v7, 1);
        v8 = OUTLINED_FUNCTION_45();
        sub_2747E2DB4(v8, v9, 1);
        v10 = OUTLINED_FUNCTION_63();
        sub_2747E2DB4(v10, v11, 1);
        v12 = OUTLINED_FUNCTION_45();
        sub_2747E2DB4(v12, v13, 1);
        v14 = sub_2749FD604();
        v15 = OUTLINED_FUNCTION_45();
        sub_2747D2EB8(v15, v16, 1);
        v17 = OUTLINED_FUNCTION_63();
        sub_2747D2EB8(v17, v18, 1);
        v19 = OUTLINED_FUNCTION_63();
        sub_2747D2EB8(v19, v20, 1);
        v21 = OUTLINED_FUNCTION_45();
        v23 = 1;
LABEL_16:
        sub_2747D2EB8(v21, v22, v23);
        return v14 & 1;
      }

      v29 = v3;
LABEL_10:
      v30 = OUTLINED_FUNCTION_63();
      sub_2747E2DB4(v30, v31, v5);
      v32 = OUTLINED_FUNCTION_45();
      sub_2747D2EB8(v32, v33, v4);
      v34 = OUTLINED_FUNCTION_63();
      sub_2747D2EB8(v34, v35, v5);
      return 0;
    }

    if (v5 != 2)
    {
      goto LABEL_10;
    }

    v24 = OUTLINED_FUNCTION_45();
    sub_2747D2EB8(v24, v25, 2);
    v26 = OUTLINED_FUNCTION_63();
    v28 = 2;
  }

  else
  {
    if (*(a2 + 16))
    {

      goto LABEL_10;
    }

    v37 = *a1;
    if (v3 != *a2 || v2 != *(a2 + 8))
    {
      v14 = sub_2749FDCC4();
      v39 = OUTLINED_FUNCTION_63();
      sub_2747E2DB4(v39, v40, 0);
      v41 = OUTLINED_FUNCTION_9_25();
      sub_2747E2DB4(v41, v42, v43);
      v44 = OUTLINED_FUNCTION_9_25();
      sub_2747D2EB8(v44, v45, v46);
      v21 = OUTLINED_FUNCTION_63();
      v23 = 0;
      goto LABEL_16;
    }

    sub_2747E2DB4(v37, v2, 0);
    v47 = OUTLINED_FUNCTION_9_25();
    sub_2747E2DB4(v47, v48, v49);
    v50 = OUTLINED_FUNCTION_9_25();
    sub_2747D2EB8(v50, v51, v52);
    v26 = OUTLINED_FUNCTION_9_25();
  }

  sub_2747D2EB8(v26, v27, v28);
  return 1;
}

uint64_t static SmartShortcutPickerCodableWrapper.== infix(_:_:)()
{
  sub_27471CF08(0, &qword_28159E390);
  OUTLINED_FUNCTION_44();
  return sub_2749FD604() & 1;
}

uint64_t sub_274936290(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E456D6574737973 && a2 == 0xEC00000079746974;
  if (v4 || (sub_2749FDCC4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65755164656D616ELL && a2 == 0xEA00000000007972;
    if (v6 || (sub_2749FDCC4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E69766C6F736572 && a2 == 0xE900000000000067)
    {

      return 2;
    }

    else
    {
      v8 = sub_2749FDCC4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_2749363B4(char a1)
{
  if (!a1)
  {
    return 0x6E456D6574737973;
  }

  if (a1 == 1)
  {
    return 0x65755164656D616ELL;
  }

  return 0x6E69766C6F736572;
}

uint64_t sub_27493641C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x636E657265666572 && a2 == 0xE900000000000065)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2749FDCC4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2749364B8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2749FDCC4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_274936538()
{
  OUTLINED_FUNCTION_99_0();
  MEMORY[0x277C5FB60](0);
  return sub_2749FDE44();
}

uint64_t sub_274936598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_274936290(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2749365C0(uint64_t a1)
{
  v2 = sub_274936BE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2749365FC(uint64_t a1)
{
  v2 = sub_274936BE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27493663C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27493641C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_274936668(uint64_t a1)
{
  v2 = sub_274936CE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2749366A4(uint64_t a1)
{
  v2 = sub_274936CE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2749366E0(uint64_t a1)
{
  v2 = sub_274936C38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27493671C(uint64_t a1)
{
  v2 = sub_274936C38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27493675C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2749364B8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_274936788(uint64_t a1)
{
  v2 = sub_274936D34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2749367C4(uint64_t a1)
{
  v2 = sub_274936D34();

  return MEMORY[0x2821FE720](a1, v2);
}

void SmartShortcutPickerActionConfiguration.CollectionIdentifer.encode(to:)()
{
  OUTLINED_FUNCTION_32_13();
  v40 = v1;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809700E0);
  OUTLINED_FUNCTION_43();
  v35 = v7;
  v36 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14();
  v32[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809700E8);
  OUTLINED_FUNCTION_43();
  v33 = v11;
  v34 = v10;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  v14 = v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809700F0);
  OUTLINED_FUNCTION_43();
  v32[1] = v16;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_20_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809700F8);
  OUTLINED_FUNCTION_43();
  v38 = v19;
  v39 = v18;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_13_0();
  v21 = v0[1];
  v37 = *v0;
  v32[0] = v21;
  v22 = *(v0 + 16);
  OUTLINED_FUNCTION_50_9(v5, v5[3]);
  sub_274936BE4();
  sub_2749FDE94();
  if (!v22)
  {
    sub_274936D34();
    OUTLINED_FUNCTION_37_12();
    sub_2749FDC04();
    sub_2749FDC34();
    OUTLINED_FUNCTION_26_13();
    v27 = v3;
    v28 = v15;
LABEL_6:
    v26(v27, v28);
    v29 = OUTLINED_FUNCTION_63();
    v31(v29, v30);
    goto LABEL_7;
  }

  if (v22 != 1)
  {
    OUTLINED_FUNCTION_54_9();
    sub_274936C38();
    OUTLINED_FUNCTION_37_12();
    sub_2749FDC04();
    sub_274936C8C();
    sub_2749FDC44();
    v27 = OUTLINED_FUNCTION_99();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_59_5();
  sub_274936CE0();
  v23 = v39;
  sub_2749FDC04();
  v41 = v37;
  v24 = OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(v24);
  sub_27472AB6C(&qword_280970128, &qword_280970120);
  v25 = v34;
  sub_2749FDC44();
  (*(v33 + 8))(v14, v25);
  (*(v38 + 8))(v2, v23);
LABEL_7:
  OUTLINED_FUNCTION_31_15();
}

unint64_t sub_274936BE4()
{
  result = qword_280970100;
  if (!qword_280970100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970100);
  }

  return result;
}

unint64_t sub_274936C38()
{
  result = qword_280970108;
  if (!qword_280970108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970108);
  }

  return result;
}

unint64_t sub_274936C8C()
{
  result = qword_280970110;
  if (!qword_280970110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970110);
  }

  return result;
}

unint64_t sub_274936CE0()
{
  result = qword_280970118;
  if (!qword_280970118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970118);
  }

  return result;
}

unint64_t sub_274936D34()
{
  result = qword_280970130;
  if (!qword_280970130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970130);
  }

  return result;
}

uint64_t SmartShortcutPickerActionConfiguration.CollectionIdentifer.hash(into:)()
{
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      MEMORY[0x277C5FB60](1);
      return sub_2749FD614();
    }

    MEMORY[0x277C5FB60](2);
    OUTLINED_FUNCTION_4_39();
  }

  else
  {
    MEMORY[0x277C5FB60](0);
    OUTLINED_FUNCTION_45();
  }

  return sub_2749FCE24();
}

uint64_t SmartShortcutPickerActionConfiguration.CollectionIdentifer.hashValue.getter()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_99_0();
  if (!v1)
  {
    MEMORY[0x277C5FB60](0);
    OUTLINED_FUNCTION_68();
LABEL_6:
    sub_2749FCE24();
    return sub_2749FDE44();
  }

  if (v1 != 1)
  {
    MEMORY[0x277C5FB60](2);
    OUTLINED_FUNCTION_4_39();
    goto LABEL_6;
  }

  MEMORY[0x277C5FB60](1);
  sub_2749FD614();
  return sub_2749FDE44();
}

void SmartShortcutPickerActionConfiguration.CollectionIdentifer.init(from:)()
{
  OUTLINED_FUNCTION_32_13();
  v3 = v2;
  v48 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970138);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970140);
  OUTLINED_FUNCTION_43();
  v47 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_20_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970148);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_22();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280970150);
  OUTLINED_FUNCTION_43();
  v12 = v11;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_13_0();
  v50 = v3;
  OUTLINED_FUNCTION_50_9(v3, v3[3]);
  sub_274936BE4();
  sub_2749FDE74();
  if (v0)
  {
    goto LABEL_10;
  }

  v46 = v12;
  v14 = sub_2749FDBF4();
  v15 = sub_27493BB9C(v14, 0);
  v19 = v10;
  if (v17 == v18 >> 1)
  {
LABEL_9:
    sub_2749FD9B4();
    OUTLINED_FUNCTION_47_6();
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A0C8);
    *v28 = &type metadata for SmartShortcutPickerActionConfiguration.CollectionIdentifer;
    sub_2749FDBA4();
    OUTLINED_FUNCTION_65_4();
    OUTLINED_FUNCTION_9_3();
    (*(v29 + 104))(v28);
    swift_willThrow();
    swift_unknownObjectRelease();
    v30 = OUTLINED_FUNCTION_21_19();
    v31(v30, v19);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_0(v50);
LABEL_11:
    OUTLINED_FUNCTION_31_15();
    return;
  }

  if (v17 < (v18 >> 1))
  {
    v20 = v10;
    v21 = *(v16 + v17);
    sub_27493D70C(v17 + 1, v18 >> 1, v15, v16, v17, v18);
    v23 = v22;
    v25 = v24;
    swift_unknownObjectRelease();
    if (v23 == v25 >> 1)
    {
      if (v21)
      {
        v52 = v21;
        if (v21 == 1)
        {
          OUTLINED_FUNCTION_59_5();
          sub_274936CE0();
          OUTLINED_FUNCTION_66_3();
          v26 = v48;
          v32 = OUTLINED_FUNCTION_44();
          __swift_instantiateConcreteTypeFromMangledNameV2(v32);
          sub_27472AB6C(&qword_280970168, &qword_280970120);
          sub_2749FDBE4();
          swift_unknownObjectRelease();
          v35 = OUTLINED_FUNCTION_38_12();
          v36(v35, v47);
          OUTLINED_FUNCTION_26_13();
          v37(v1, v20);
          v49 = 0;
          v38 = v51;
          v39 = v50;
        }

        else
        {
          OUTLINED_FUNCTION_54_9();
          sub_274936C38();
          OUTLINED_FUNCTION_66_3();
          v39 = v50;
          v26 = v48;
          sub_27493BC64();
          OUTLINED_FUNCTION_37_12();
          sub_2749FDBE4();
          swift_unknownObjectRelease();
          v42 = OUTLINED_FUNCTION_62_1();
          v43(v42);
          v44 = OUTLINED_FUNCTION_58_3();
          v45(v44);
          v38 = 0;
          v49 = 0;
        }
      }

      else
      {
        sub_274936D34();
        sub_2749FDB94();
        v52 = 0;
        v33 = sub_2749FDBD4();
        v49 = v34;
        v39 = v50;
        v38 = v33;
        swift_unknownObjectRelease();
        v40 = OUTLINED_FUNCTION_38_12();
        v41(v40, v8);
        (*(v46 + 8))(v1, v20);
        v26 = v48;
      }

      *v26 = v38;
      *(v26 + 8) = v49;
      *(v26 + 16) = v52;
      __swift_destroy_boxed_opaque_existential_0(v39);
      goto LABEL_11;
    }

    v19 = v20;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_2749375D0()
{
  sub_2749FDDF4();
  SmartShortcutPickerActionConfiguration.CollectionIdentifer.hash(into:)();
  return sub_2749FDE44();
}

uint64_t sub_274937654()
{
  memcpy(__dst, v0, 0x81uLL);
  v1 = sub_274772C3C(__dst);
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = CGSizeMake(__dst);
      v3 = v2[4];
      v4 = v2[5];
      v5 = v2[8];
      v6 = v2[9];
      v7 = v2[15];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_274A11F70;
      if (v6)
      {

        v8 = [swift_unknownObjectRetain() serializedRepresentation];
        v9 = objc_allocWithZone(MEMORY[0x277D79EC0]);
        v10 = OUTLINED_FUNCTION_3_5();
        v12 = sub_27493BABC(v10, v11, v5, v6, v3, v4, v8);
        swift_unknownObjectRelease();
      }

      else
      {
        objc_allocWithZone(MEMORY[0x277D79EC0]);

        v21 = OUTLINED_FUNCTION_3_5();
        v12 = sub_27493B9E4(v21, v22, 0, 0, v3, v4, 1);
      }

      *(v46 + 32) = v12;
      v23 = *(v7 + 16);
      v24 = MEMORY[0x277D84F90];
      if (v23)
      {
        v49 = MEMORY[0x277D84F90];
        sub_2749FDA14();
        v25 = (v7 + 112);
        do
        {
          v26 = *(v25 - 10);
          v27 = *(v25 - 9);
          v28 = *(v25 - 5);
          v29 = *(v25 - 1);
          v30 = *v25;
          if (v28)
          {
            v31 = *(v25 - 2);
            v47 = *(v25 - 10);
            v32 = *(v25 - 6);

            v33 = OUTLINED_FUNCTION_41_12();
            sub_274772C44(v33, v34);

            v35 = OUTLINED_FUNCTION_41_12();
            sub_274772C44(v35, v36);

            v37 = [v31 serializedRepresentation];
            v38 = objc_allocWithZone(MEMORY[0x277D79EC0]);
            sub_27493BABC(v29, v30, v32, v28, v47, v27, v37);

            swift_unknownObjectRelease();
            v39 = OUTLINED_FUNCTION_41_12();
            sub_274772C94(v39, v40);
          }

          else
          {
            objc_allocWithZone(MEMORY[0x277D79EC0]);

            sub_27493B9E4(v29, v30, 0, 0, v26, v27, 1);
          }

          sub_2749FD9E4();
          sub_2749FDA24();
          sub_2749FDA34();
          sub_2749FD9F4();
          v25 += 11;
          --v23;
        }

        while (v23);
        v24 = v49;
      }

      v49 = v46;
      sub_274782AA4(v24);
      return v49;
    }

    else
    {
      v14 = CGSizeMake(__dst);
      v16 = *(v14 + 16);
      v15 = *(v14 + 24);
      v17 = *(v14 + 32);
      v18 = *(v14 + 48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_274A11F70;
      if (v18)
      {
        if (v18 != 1)
        {
          sub_27493D788();
          OUTLINED_FUNCTION_47_6();
          swift_willThrow();
          *(v13 + 16) = 0;

          return v13;
        }

        v19 = objc_allocWithZone(MEMORY[0x277D79F40]);

        v20 = [v19 initWithNamedQueryReference_];
      }

      else
      {
        sub_27471CF08(0, &unk_280970450);

        v41 = OUTLINED_FUNCTION_44();
        sub_2747E2DB4(v41, v42, 0);
        OUTLINED_FUNCTION_44();
        v20 = sub_274952604();
      }

      v43 = v20;
      v44 = objc_allocWithZone(MEMORY[0x277D79EC0]);
      *(v13 + 32) = sub_27493B81C(0x656D617261504657, 0xEB00000000726574, 0, 0, v16, v15, 1, v43);
    }
  }

  else
  {
    CGSizeMake(__dst);
    return MEMORY[0x277D84F90];
  }

  return v13;
}

uint64_t static SmartShortcutPickerActionConfiguration.== infix(_:_:)(void *__src, const void *a2)
{
  memcpy(__dst, __src, 0x81uLL);
  memcpy(v165, a2, 0x81uLL);
  memcpy(v166, __src, 0x81uLL);
  memcpy(v167, a2, sizeof(v167));
  memcpy(v168, __src, 0x81uLL);
  v4 = sub_274772C3C(v168);
  if (!v4)
  {
    v48 = CGSizeMake(v168);
    v49 = *v48;
    v50 = v48[1];
    v51 = v48[2];
    OUTLINED_FUNCTION_52_6(v48, v52, v53, v54, v55, v56, v57, v58, v119, v125, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5], v131[6], v131[7], v131[8], v131[9], v131[10], v132[0], v132[1], v132[2], v132[3], v132[4], v132[5], v132[6], v132[7], v132[8], v132[9], v132[10], v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);
    if (!sub_274772C3C(&v150))
    {
      v19 = CGSizeMake(&v150);
      v21 = *v19;
      v22 = *(v19 + 8);
      v59 = *(v19 + 16);
      v60 = v49 == *v19 && v50 == v22;
      if (v60 || (v19 = sub_2749FDCC4(), (v19 & 1) != 0))
      {
        v61 = OUTLINED_FUNCTION_67_4(v19, v20, v21, v22, v23, v24, v25, v26, v120, v126, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5], v131[6], v131[7], v131[8], v131[9], v131[10], v132[0], v132[1], v132[2], v132[3], v132[4], v132[5], v132[6], v132[7], v132[8], v132[9], v132[10], v133);
        v69 = OUTLINED_FUNCTION_63_2(v61, v62, v63, v64, v65, v66, v67, v68, v122, v128, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5], v131[6], v131[7], v131[8], v131[9], v131[10], v132[0], v132[1], v132[2], v132[3], v132[4], v132[5], v132[6], v132[7], v132[8], v132[9], v132[10], v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163);
        sub_274772B38(v69, v70);
        v46 = v51;
        v47 = v59;
        goto LABEL_23;
      }

      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (v4 != 1)
  {
    v72 = CGSizeMake(v168);
    v73 = *v72;
    v74 = *(v72 + 8);
    v75 = *(v72 + 16);
    v76 = *(v72 + 24);
    v77 = *(v72 + 32);
    v78 = *(v72 + 40);
    v79 = *(v72 + 48);
    OUTLINED_FUNCTION_52_6(v72, v80, v81, v82, v83, v84, v85, v86, v119, v125, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5], v131[6], v131[7], v131[8], v131[9], v131[10], v132[0], v132[1], v132[2], v132[3], v132[4], v132[5], v132[6], v132[7], v132[8], v132[9], v132[10], v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);
    if (sub_274772C3C(&v150) == 2)
    {
      v19 = CGSizeMake(&v150);
      v21 = *v19;
      v22 = *(v19 + 8);
      v87 = *(v19 + 16);
      v88 = *(v19 + 24);
      v120 = *(v19 + 40);
      v126 = *(v19 + 32);
      v89 = *(v19 + 48);
      v90 = v73 == *v19 && v74 == v22;
      if (v90 || (v19 = sub_2749FDCC4(), (v19 & 1) != 0))
      {
        v91 = v75 == v87 && v76 == v88;
        if (v91 || (v19 = sub_2749FDCC4(), (v19 & 1) != 0))
        {
          LOBYTE(v132[2]) = v79;
          v93 = v120;
          v92 = v126;
          LOBYTE(v131[2]) = v89;
          v94 = OUTLINED_FUNCTION_67_4(v19, v20, v21, v22, v23, v24, v25, v26, v120, v126, v126, v120, v131[2], v131[3], v131[4], v131[5], v131[6], v131[7], v131[8], v131[9], v131[10], v77, v78, v132[2], v132[3], v132[4], v132[5], v132[6], v132[7], v132[8], v132[9], v132[10], v133);
          v102 = OUTLINED_FUNCTION_63_2(v94, v95, v96, v97, v98, v99, v100, v101, v123, v129, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5], v131[6], v131[7], v131[8], v131[9], v131[10], v132[0], v132[1], v132[2], v132[3], v132[4], v132[5], v132[6], v132[7], v132[8], v132[9], v132[10], v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163);
          sub_274772B38(v102, v103);
          v104 = OUTLINED_FUNCTION_44();
          sub_2747E2DB4(v104, v105, v79);
          sub_2747E2DB4(v92, v93, v89);
          v71 = static SmartShortcutPickerActionConfiguration.CollectionIdentifer.== infix(_:_:)(v132, v131);
          sub_27493C1E0(v166, &qword_280970170);
          sub_2747D2EB8(v92, v93, v89);
          v106 = OUTLINED_FUNCTION_44();
          sub_2747D2EB8(v106, v107, v79);
          return v71 & 1;
        }
      }

      goto LABEL_37;
    }

LABEL_36:
    sub_274772B38(v165, &v150);
    v108 = __dst;
    v109 = &v150;
LABEL_38:
    sub_274772B38(v108, v109);
    goto LABEL_39;
  }

  v5 = CGSizeMake(v168);
  OUTLINED_FUNCTION_52_6(v5, v6, v7, v8, v9, v10, v11, v12, v119, v125, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5], v131[6], v131[7], v131[8], v131[9], v131[10], v132[0], v132[1], v132[2], v132[3], v132[4], v132[5], v132[6], v132[7], v132[8], v132[9], v132[10], v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);
  if (sub_274772C3C(&v150) != 1)
  {
    goto LABEL_36;
  }

  v13 = CGSizeMake(&v150);
  v14 = v5[2];
  v15 = v5[3];
  v16 = v13[2];
  v17 = v13[3];
  v18 = *v5 == *v13 && v5[1] == v13[1];
  if (!v18 && (v19 = sub_2749FDCC4(), (v19 & 1) == 0) || (v14 == v16 ? (v27 = v15 == v17) : (v27 = 0), !v27 && (v19 = sub_2749FDCC4(), (v19 & 1) == 0)))
  {
LABEL_37:
    v110 = OUTLINED_FUNCTION_67_4(v19, v20, v21, v22, v23, v24, v25, v26, v120, v126, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5], v131[6], v131[7], v131[8], v131[9], v131[10], v132[0], v132[1], v132[2], v132[3], v132[4], v132[5], v132[6], v132[7], v132[8], v132[9], v132[10], v133);
    v108 = OUTLINED_FUNCTION_63_2(v110, v111, v112, v113, v114, v115, v116, v117, v124, v130, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5], v131[6], v131[7], v131[8], v131[9], v131[10], v132[0], v132[1], v132[2], v132[3], v132[4], v132[5], v132[6], v132[7], v132[8], v132[9], v132[10], v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163);
    goto LABEL_38;
  }

  memcpy(v132, v5 + 4, sizeof(v132));
  v28 = memcpy(v131, v13 + 4, sizeof(v131));
  v36 = OUTLINED_FUNCTION_67_4(v28, v29, v30, v31, v32, v33, v34, v35, v120, v126, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5], v131[6], v131[7], v131[8], v131[9], v131[10], v132[0], v132[1], v132[2], v132[3], v132[4], v132[5], v132[6], v132[7], v132[8], v132[9], v132[10], v133);
  v44 = OUTLINED_FUNCTION_63_2(v36, v37, v38, v39, v40, v41, v42, v43, v121, v127, v131[0], v131[1], v131[2], v131[3], v131[4], v131[5], v131[6], v131[7], v131[8], v131[9], v131[10], v132[0], v132[1], v132[2], v132[3], v132[4], v132[5], v132[6], v132[7], v132[8], v132[9], v132[10], v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163);
  sub_274772B38(v44, v45);
  if ((static SmartShortcutPickerActionConfiguration.Parameter.== infix(_:_:)(v132, v131) & 1) == 0)
  {
LABEL_39:
    sub_27493C1E0(v166, &qword_280970170);
    v71 = 0;
    return v71 & 1;
  }

  v46 = v5[15];
  v47 = v13[15];
LABEL_23:
  v71 = sub_2747843DC(v46, v47);
  sub_27493C1E0(v166, &qword_280970170);
  return v71 & 1;
}

uint64_t static SmartShortcutPickerActionConfiguration.Parameter.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v31 = a1[5];
  v32 = a1[4];
  v4 = a1[7];
  v5 = a1[8];
  v27 = a1[10];
  v28 = a1[9];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[5];
  v29 = a2[4];
  v30 = a1[6];
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];
  v12 = *a1 == *a2 && a1[1] == a2[1];
  v25 = a2[10];
  v26 = a2[9];
  if (!v12 && (sub_2749FDCC4() & 1) == 0)
  {
    return 0;
  }

  if (v2 != v6 || v3 != v7)
  {
    OUTLINED_FUNCTION_57_3();
    if ((sub_2749FDCC4() & 1) == 0)
    {
      return 0;
    }
  }

  v34[0] = v32;
  v34[1] = v31;
  v34[2] = v30;
  v34[3] = v4;
  v34[4] = v5;
  v33[0] = v29;
  v33[1] = v8;
  v33[2] = v9;
  v33[3] = v10;
  v33[4] = v11;
  v14 = OUTLINED_FUNCTION_3_5();
  sub_274772C44(v14, v15);
  v16 = OUTLINED_FUNCTION_44_7();
  sub_274772C44(v16, v17);
  v24 = static SmartShortcutPickerActionConfiguration.Parameter.State.== infix(_:_:)(v34, v33);
  v18 = OUTLINED_FUNCTION_44_7();
  sub_274772C94(v18, v19);
  v20 = OUTLINED_FUNCTION_3_5();
  sub_274772C94(v20, v21);
  if (!v24)
  {
    return 0;
  }

  if (v28 == v26 && v27 == v25)
  {
    return 1;
  }

  return sub_2749FDCC4();
}

uint64_t sub_274937FE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656D726F66 && a2 == 0xE600000000000000;
  if (v4 || (sub_2749FDCC4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574656D61726170 && a2 == 0xED000064657A6972;
    if (v6 || (sub_2749FDCC4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6769626D61736964 && a2 == 0xEE00676E69746175)
    {

      return 2;
    }

    else
    {
      v8 = sub_2749FDCC4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_274938100(char a1)
{
  if (!a1)
  {
    return 0x64656D726F66;
  }

  if (a1 == 1)
  {
    return 0x6574656D61726170;
  }

  return 0x6769626D61736964;
}

uint64_t sub_27493816C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_2749FDCC4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574656D61726170 && a2 == 0xEC00000079654B72;
    if (v6 || (sub_2749FDCC4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000014 && 0x8000000274A33EB0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_2749FDCC4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_27493828C(char a1)
{
  if (!a1)
  {
    return 0x4E79616C70736964;
  }

  if (a1 == 1)
  {
    return 0x6574656D61726170;
  }

  return 0xD000000000000014;
}

uint64_t sub_2749382F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_2749FDCC4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000274A33F10 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_2749FDCC4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2749383CC(char a1)
{
  OUTLINED_FUNCTION_99_0();
  MEMORY[0x277C5FB60](a1 & 1);
  return sub_2749FDE44();
}

uint64_t sub_27493840C(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x4E79616C70736964;
  }
}

uint64_t sub_274938450(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x537972616D6D7573 && a2 == 0xED0000676E697274;
  if (v4 || (sub_2749FDCC4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x8000000274A33ED0 == a2;
    if (v6 || (sub_2749FDCC4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000013 && 0x8000000274A33EF0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_2749FDCC4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_274938574(char a1)
{
  if (!a1)
  {
    return 0x537972616D6D7573;
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0xD000000000000013;
}

uint64_t sub_2749385EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_274937FE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_274938614(uint64_t a1)
{
  v2 = sub_27493BCB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_274938650(uint64_t a1)
{
  v2 = sub_27493BCB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_274938694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27493816C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2749386BC(uint64_t a1)
{
  v2 = sub_27493BD0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2749386F8(uint64_t a1)
{
  v2 = sub_27493BD0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27493873C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2749382F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_274938764(uint64_t a1)
{
  v2 = sub_27493BEB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2749387A0(uint64_t a1)
{
  v2 = sub_27493BEB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2749387E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_274938450(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27493880C(uint64_t a1)
{
  v2 = sub_27493BDB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_274938848(uint64_t a1)
{
  v2 = sub_27493BDB4();

  return MEMORY[0x2821FE720](a1, v2);
}

void SmartShortcutPickerActionConfiguration.encode(to:)()
{
  OUTLINED_FUNCTION_32_13();
  v61 = v1;
  v3 = v0;
  v5 = v4;
  *&v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970178);
  OUTLINED_FUNCTION_43();
  v59 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14();
  v56 = v8;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970180);
  OUTLINED_FUNCTION_43();
  v57 = v9;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_22();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970188);
  OUTLINED_FUNCTION_43();
  v13 = v12;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  v16 = &v56 - v15;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970190);
  OUTLINED_FUNCTION_43();
  v62 = v17;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  v20 = &v56 - v19;
  OUTLINED_FUNCTION_50_9(v5, v5[3]);
  sub_27493BCB8();
  v63 = v20;
  sub_2749FDE94();
  memcpy(v66, v3, 0x81uLL);
  v21 = sub_274772C3C(v66);
  if (!v21)
  {
    CGSizeMake(v66);
    v34 = *(v33 + 16);
    v65[0] = 0;
    sub_27493BEB0();
    OUTLINED_FUNCTION_42_9();
    v36 = *(v35 - 256);
    sub_2749FDC04();
    OUTLINED_FUNCTION_43_6();
    v37 = v61;
    sub_2749FDC34();
    if (!v37)
    {
      *v65 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970098);
      OUTLINED_FUNCTION_13_25();
      sub_27493C000(v38, v39);
      OUTLINED_FUNCTION_39_12();
      sub_2749FDC44();
    }

    (*(v13 + 8))(v16, v11);
    OUTLINED_FUNCTION_8_32();
    v32 = v36;
    goto LABEL_13;
  }

  if (v21 == 1)
  {
    CGSizeMake(v66);
    v23 = v22;
    v60 = *v22;
    v24 = *(v22 + 2);
    v25 = *(v22 + 3);
    v65[0] = 1;
    sub_27493BDB4();
    OUTLINED_FUNCTION_42_9();
    v27 = *(v26 - 256);
    sub_2749FDC04();
    *v65 = v60;
    *&v65[16] = v24;
    *&v65[24] = v25;
    sub_27493BE08();
    OUTLINED_FUNCTION_39_12();
    v28 = v58;
    v29 = v61;
    sub_2749FDC44();
    if (v29)
    {
      OUTLINED_FUNCTION_40_5();
      v30(v2, v28);
      OUTLINED_FUNCTION_8_32();
      v32 = v27;
    }

    else
    {
      memcpy(v65, v23 + 2, sizeof(v65));
      sub_27493BE5C();
      OUTLINED_FUNCTION_39_12();
      sub_2749FDC44();
      *v65 = *(v23 + 15);
      OUTLINED_FUNCTION_54_9();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970098);
      OUTLINED_FUNCTION_13_25();
      sub_27493C000(v52, v53);
      OUTLINED_FUNCTION_39_12();
      OUTLINED_FUNCTION_33_11();
      sub_2749FDC44();
      OUTLINED_FUNCTION_40_5();
      v54(v2, v28);
      OUTLINED_FUNCTION_8_32();
      v32 = v63;
    }

LABEL_13:
    v51 = v20;
    goto LABEL_14;
  }

  CGSizeMake(v66);
  v41 = *(v40 + 24);
  v58 = *(v40 + 16);
  v57 = v41;
  v43 = *(v40 + 32);
  v42 = *(v40 + 40);
  v44 = *(v40 + 48);
  v65[0] = 2;
  sub_27493BD0C();
  v45 = v56;
  v46 = v64;
  v47 = v63;
  sub_2749FDC04();
  OUTLINED_FUNCTION_43_6();
  v48 = v60;
  v49 = v61;
  sub_2749FDC34();
  if (v49)
  {
    OUTLINED_FUNCTION_40_5();
    v50(v45, v48);
    OUTLINED_FUNCTION_8_32();
    v32 = v47;
    v51 = v46;
  }

  else
  {
    v65[0] = 1;
    sub_2749FDC34();
    *v65 = v43;
    *&v65[8] = v42;
    v65[16] = v44;
    OUTLINED_FUNCTION_54_9();
    sub_27493BD60();
    OUTLINED_FUNCTION_39_12();
    sub_2749FDC44();
    OUTLINED_FUNCTION_40_5();
    v55(v45, v48);
    OUTLINED_FUNCTION_8_32();
    v32 = v47;
    v51 = v64;
  }

LABEL_14:
  v31(v32, v51);
  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_31_15();
}

uint64_t SmartShortcutPickerActionConfiguration.hash(into:)(uint64_t a1)
{
  v2 = v1;
  memcpy(__dst, v2, 0x81uLL);
  v4 = sub_274772C3C(__dst);
  if (!v4)
  {
    CGSizeMake(__dst);
    MEMORY[0x277C5FB60](0);
    OUTLINED_FUNCTION_68();
    sub_2749FCE24();
    v6 = OUTLINED_FUNCTION_122();
    return sub_27478A14C(v6, v7);
  }

  if (v4 == 1)
  {
    v5 = CGSizeMake(__dst);
    v11 = v5[12];
    v12 = v5[9];
    MEMORY[0x277C5FB60](1);
    OUTLINED_FUNCTION_57_3();
    sub_2749FCE24();
    sub_2749FCE24();
    sub_2749FCE24();
    OUTLINED_FUNCTION_122();
    sub_2749FCE24();
    if (v12)
    {
      OUTLINED_FUNCTION_2_40();
      sub_2749FCE24();
      MEMORY[0x277C5FB60]([v11 hash]);
    }

    else
    {
      OUTLINED_FUNCTION_5_37();
      OUTLINED_FUNCTION_46_8();
      sub_2749FCE24();
    }

    v10 = v5[15];
    sub_2749FCE24();
    v6 = a1;
    v7 = v10;
    return sub_27478A14C(v6, v7);
  }

  v8 = *(CGSizeMake(__dst) + 48);
  MEMORY[0x277C5FB60](2);
  OUTLINED_FUNCTION_122();
  sub_2749FCE24();
  OUTLINED_FUNCTION_57_3();
  sub_2749FCE24();
  if (v8)
  {
    if (v8 == 1)
    {
      MEMORY[0x277C5FB60](1);
      return sub_2749FD614();
    }

    MEMORY[0x277C5FB60](2);
    OUTLINED_FUNCTION_4_39();
  }

  else
  {
    MEMORY[0x277C5FB60](0);
    OUTLINED_FUNCTION_68();
  }

  return sub_2749FCE24();
}

uint64_t SmartShortcutPickerActionConfiguration.hashValue.getter()
{
  OUTLINED_FUNCTION_99_0();
  SmartShortcutPickerActionConfiguration.hash(into:)(v1);
  return sub_2749FDE44();
}

void SmartShortcutPickerActionConfiguration.init(from:)()
{
  OUTLINED_FUNCTION_32_13();
  v4 = v3;
  v73 = v5;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809701E0);
  OUTLINED_FUNCTION_43();
  v68 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14();
  v72 = v8;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809701E8);
  OUTLINED_FUNCTION_43();
  v71 = v9;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v12 = v65 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809701F0);
  OUTLINED_FUNCTION_43();
  v67 = v14;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_20_3();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809701F8);
  OUTLINED_FUNCTION_43();
  v74 = v17;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_13_0();
  v19 = v4[3];
  v75 = v4;
  OUTLINED_FUNCTION_50_9(v4, v19);
  sub_27493BCB8();
  sub_2749FDE74();
  if (v0)
  {
    goto LABEL_9;
  }

  v66 = v2;
  v91 = v12;
  v20 = sub_2749FDBF4();
  v24 = sub_27493BB9C(v20, 0);
  if (v22 == v23 >> 1)
  {
LABEL_8:
    sub_2749FD9B4();
    OUTLINED_FUNCTION_47_6();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A0C8);
    *v36 = &type metadata for SmartShortcutPickerActionConfiguration;
    sub_2749FDBA4();
    OUTLINED_FUNCTION_65_4();
    OUTLINED_FUNCTION_9_3();
    (*(v37 + 104))(v36);
    swift_willThrow();
    swift_unknownObjectRelease();
    v38 = OUTLINED_FUNCTION_21_19();
    v39(v38, v16);
LABEL_9:
    v40 = v75;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_0(v40);
    OUTLINED_FUNCTION_31_15();
    return;
  }

  v65[0] = 0;
  if (v22 < (v23 >> 1))
  {
    v25 = v1;
    v26 = *(v21 + v22);
    v27 = sub_27493D70C(v22 + 1, v23 >> 1, v24, v21, v22, v23);
    v29 = v28;
    v31 = v30;
    swift_unknownObjectRelease();
    v65[1] = v27;
    v32 = v73;
    if (v29 == v31 >> 1)
    {
      if (v26)
      {
        if (v26 == 1)
        {
          LOBYTE(v84) = 1;
          sub_27493BDB4();
          OUTLINED_FUNCTION_16_17();
          v72 = v16;
          LOBYTE(v84) = 0;
          sub_27493BF58();
          v33 = v69;
          sub_2749FDBE4();
          v34 = v74;
          v42 = v81;
          v70 = v80;
          v43 = v83;
          v68 = v82;
          v78[95] = 1;
          sub_27493BFAC();
          sub_2749FDBE4();
          v44 = v71;
          v66 = v42;
          v67 = v43;
          memcpy(v78, v79, 0x58uLL);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970098);
          v76 = 2;
          OUTLINED_FUNCTION_12_27();
          sub_27493C000(v52, v53);
          sub_2749FDBE4();
          swift_unknownObjectRelease();
          (*(v44 + 8))(v91, v33);
          (*(v34 + 8))(v25, v72);
          memcpy(v88, v78, sizeof(v88));
          v84 = v70;
          v85 = v66;
          v86 = v68;
          v87 = v67;
          v89 = v77;
          sub_274860690(&v84);
        }

        else
        {
          LOBYTE(v84) = 2;
          sub_27493BD0C();
          OUTLINED_FUNCTION_16_17();
          LOBYTE(v84) = 0;
          v41 = v70;
          v48 = sub_2749FDBD4();
          v50 = v49;
          LOBYTE(v84) = 1;
          v51 = sub_2749FDBD4();
          v60 = v59;
          v93 = v51;
          v78[0] = 2;
          sub_27493BF04();
          OUTLINED_FUNCTION_37_12();
          sub_2749FDBE4();
          swift_unknownObjectRelease();
          v61 = OUTLINED_FUNCTION_21_19();
          v62(v61, v41);
          v63 = OUTLINED_FUNCTION_15_23();
          v64(v63, v16);
          v84 = v48;
          v85 = v50;
          v86 = v93;
          v87 = v60;
          *v88 = v79[0];
          v88[16] = v79[1];
          sub_2748AF4F0(&v84);
        }

        OUTLINED_FUNCTION_49_7();
        v58 = v75;
        v32 = v73;
      }

      else
      {
        LOBYTE(v84) = 0;
        sub_27493BEB0();
        OUTLINED_FUNCTION_16_17();
        LOBYTE(v84) = 0;
        v72 = sub_2749FDBD4();
        v92 = v45;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970098);
        v78[0] = 1;
        OUTLINED_FUNCTION_12_27();
        sub_27493C000(v46, v47);
        sub_2749FDBE4();
        swift_unknownObjectRelease();
        v54 = OUTLINED_FUNCTION_21_19();
        v55(v54, v13);
        v56 = OUTLINED_FUNCTION_3_5();
        v57(v56);
        v84 = v72;
        v85 = v92;
        v86 = *&v79[0];
        sub_2747EBF0C(&v84);
        OUTLINED_FUNCTION_49_7();
        v58 = v75;
      }

      memcpy(v32, v90, 0x81uLL);
      v40 = v58;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_274939A88(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (OUTLINED_FUNCTION_11_3() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = a1 == OUTLINED_FUNCTION_48_6() && a2 == v6;
    if (v7 || (OUTLINED_FUNCTION_11_3() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = a1 == 1701869940 && a2 == 0xE400000000000000;
      if (v8 || (OUTLINED_FUNCTION_11_3() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v9 = a1 == 0x7461446574617473 && a2 == 0xE900000000000061;
        if (v9 || (OUTLINED_FUNCTION_11_3() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v10 = a1 == 0x7461446574617473 && a2 == 0xEE007373616C4361;
          if (v10 || (OUTLINED_FUNCTION_11_3() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v11 = a1 == 0xD000000000000015 && 0x8000000274A33F30 == a2;
            if (v11 || (OUTLINED_FUNCTION_11_3() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v12 = a1 == 0xD000000000000012 && 0x8000000274A33F50 == a2;
              if (v12 || (OUTLINED_FUNCTION_11_3() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD00000000000001DLL && 0x8000000274A33DD0 == a2)
              {

                return 7;
              }

              else
              {
                v14 = OUTLINED_FUNCTION_11_3();

                if (v14)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_274939C9C(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_99_0();
  MEMORY[0x277C5FB60](a1);
  return sub_2749FDE44();
}

uint64_t sub_274939CDC(char a1)
{
  result = 7955819;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_48_6();
      break;
    case 2:
      result = 1701869940;
      break;
    case 3:
    case 4:
      result = 0x7461446574617473;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_274939DCC()
{
  sub_2749FDDF4();
  SmartShortcutPickerActionConfiguration.hash(into:)(v1);
  return sub_2749FDE44();
}

uint64_t sub_274939E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_274939A88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_274939E78(uint64_t a1)
{
  v2 = sub_27493C074();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_274939EB4(uint64_t a1)
{
  v2 = sub_27493C074();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static SmartShortcutPickerActionConfiguration.Parameter.State.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (!v2)
  {
    return v3 == 0;
  }

  v4 = a2[4];
  v5 = a1[4];
  v6 = *a1;
  sub_274772C44(*a2, a2[1]);
  sub_274772C44(v6, v2);

  if (v3)
  {

    v3 = [v5 isEqual_];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return v3;
}

uint64_t SmartShortcutPickerActionConfiguration.Parameter.State.hash(into:)()
{
  if (*(v0 + 8))
  {
    v1 = *(v0 + 32);
    OUTLINED_FUNCTION_2_40();
    sub_2749FCE24();
    return MEMORY[0x277C5FB60]([v1 hash]);
  }

  else
  {
    OUTLINED_FUNCTION_5_37();
    OUTLINED_FUNCTION_46_8();

    return sub_2749FCE24();
  }
}

uint64_t SmartShortcutPickerActionConfiguration.Parameter.State.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  OUTLINED_FUNCTION_99_0();
  if (v1)
  {
    OUTLINED_FUNCTION_2_40();
    sub_2749FCE24();
    MEMORY[0x277C5FB60]([v2 hash]);
  }

  else
  {
    OUTLINED_FUNCTION_5_37();
    OUTLINED_FUNCTION_46_8();
    sub_2749FCE24();
  }

  return sub_2749FDE44();
}

uint64_t sub_27493A0D8()
{
  sub_2749FDDF4();
  SmartShortcutPickerActionConfiguration.Parameter.State.hash(into:)();
  return sub_2749FDE44();
}

void SmartShortcutPickerActionConfiguration.Parameter.init(from:)()
{
  OUTLINED_FUNCTION_32_13();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970220);
  OUTLINED_FUNCTION_43();
  v8 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_3();
  v10 = OUTLINED_FUNCTION_41_12();
  OUTLINED_FUNCTION_50_9(v10, v11);
  sub_27493C074();
  sub_2749FDE74();
  if (!v0)
  {
    v14 = OUTLINED_FUNCTION_6_36();
    v16 = v15;
    v61 = OUTLINED_FUNCTION_6_36();
    v62 = v17;
    LOBYTE(v63) = 2;
    v59 = OUTLINED_FUNCTION_6_36();
    v60 = v18;
    sub_27493C0C8();
    OUTLINED_FUNCTION_37_12();
    sub_2749FDBC4();
    if (v64 >> 60 == 15)
    {
      v19 = OUTLINED_FUNCTION_1_43();
      v20(v19);
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
LABEL_6:
      *v5 = v14;
      v5[1] = v16;
      v5[2] = v61;
      v5[3] = v62;
      v5[4] = v21;
      v5[5] = v22;
      v5[6] = v23;
      v5[7] = v24;
      v5[8] = v25;
      v5[9] = v59;
      v5[10] = v60;
      goto LABEL_3;
    }

    v57 = v64;
    v58 = v63;
    sub_2747EC0F4(v63, v64);
    v55 = OUTLINED_FUNCTION_6_36();
    v56 = v26;
    LOBYTE(v63) = 5;
    v52 = OUTLINED_FUNCTION_6_36();
    v54 = v27;
    objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_2747EC0F4(v58, v64);
    v53 = sub_27493B908();
    v28 = WFAllPropertyListObjectTypes();
    sub_2749FD154();

    v29 = OUTLINED_FUNCTION_30_11();
    v32 = sub_274935590(v29, v30, v31);
    v33 = sub_274935734(v32);

    if (v33)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970240);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_274A0EF10;
      *(inited + 32) = sub_27471CF08(0, &unk_280970248);
      v66 = v33;
      sub_274782DE4(inited);
      sub_2749FD584();
      OUTLINED_FUNCTION_30_11();

      if (!v65)
      {

        sub_27493C1E0(&v63, &qword_28096D550);
        goto LABEL_13;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970258);
      if (swift_dynamicCast())
      {
        LOBYTE(v63) = 4;
        v48 = OUTLINED_FUNCTION_6_36();
        v49 = v34;
        v47 = sub_2749FCD64();
        v37 = NSClassFromString(v47);

        if (v37 && (swift_getObjCClassMetadata(), swift_dynamicCastTypeToObjCProtocolConditional()))
        {

          v50 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSerializedRepresentation:v66 variableProvider:0 parameter:0];
          if (v50)
          {
LABEL_18:
            v38 = *(v8 + 8);
            swift_unknownObjectRetain();
            v38(v1, v6);

            OUTLINED_FUNCTION_30_11();
            swift_unknownObjectRelease();
            v39 = OUTLINED_FUNCTION_70_1();
            sub_2747BD018(v39, v40);
            v41 = OUTLINED_FUNCTION_70_1();
            sub_2747BD018(v41, v42);
            v25 = v50;
            swift_unknownObjectRelease();
            v21 = v55;
            v22 = v56;
            v24 = v54;
            v23 = v52;
            goto LABEL_6;
          }

          sub_27471CF08(0, &qword_280970260);
          if (swift_dynamicCastMetatype())
          {
            objc_opt_self();
            v43 = OUTLINED_FUNCTION_30_11();
            v45 = sub_27493BBE4(v43, 0, 0, v52, v54, v44);
            if (v45)
            {
              v46 = v45;
              v50 = [objc_allocWithZone(MEMORY[0x277D7C5B0]) initWithValue_];

              swift_unknownObjectRetain();
              goto LABEL_18;
            }
          }

          LOBYTE(v63) = 3;
          sub_2749FD9B4();
          OUTLINED_FUNCTION_47_6();
          OUTLINED_FUNCTION_3_46(&qword_280970238, &qword_280970220);
          OUTLINED_FUNCTION_55_5();
          OUTLINED_FUNCTION_64_3();
        }

        else
        {

          sub_2749FD934();

          v63 = 0xD000000000000024;
          v64 = 0x8000000274A33DF0;
          MEMORY[0x277C5EBC0](v48, v49);

          sub_2749FD9B4();
          OUTLINED_FUNCTION_47_6();
          OUTLINED_FUNCTION_3_46(&qword_280970238, &qword_280970220);
          sub_2749FD994();
        }

        swift_willThrow();

        OUTLINED_FUNCTION_30_11();
        swift_unknownObjectRelease();
        v35 = v57;
        sub_2747BD018(v58, v57);
        v36 = v58;
LABEL_14:
        sub_2747BD018(v36, v35);
        v12 = OUTLINED_FUNCTION_1_43();
        v13(v12);
        goto LABEL_3;
      }
    }

LABEL_13:
    LOBYTE(v63) = 3;
    sub_2749FD9B4();
    OUTLINED_FUNCTION_47_6();
    OUTLINED_FUNCTION_3_46(&qword_280970238, &qword_280970220);
    OUTLINED_FUNCTION_55_5();
    OUTLINED_FUNCTION_64_3();
    swift_willThrow();

    v35 = v57;
    sub_2747BD018(v58, v57);
    v36 = v58;
    goto LABEL_14;
  }

LABEL_3:
  __swift_destroy_boxed_opaque_existential_0(v3);
  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_31_15();
}

void SmartShortcutPickerActionConfiguration.Parameter.encode(to:)()
{
  OUTLINED_FUNCTION_32_13();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970268);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14();
  v30 = *(v0 + 40);
  OUTLINED_FUNCTION_50_9(v3, v3[3]);
  sub_27493C074();
  sub_2749FDE94();
  sub_2749FDC34();
  if (!v1)
  {
    OUTLINED_FUNCTION_40_13(1);
    OUTLINED_FUNCTION_24_17();
    OUTLINED_FUNCTION_40_13(2);
    OUTLINED_FUNCTION_24_17();
    if (v30)
    {

      v7 = [swift_unknownObjectRetain() serializedRepresentation];
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        if (v7)
        {
          v9 = v8;
          objc_opt_self();
          v10 = swift_dynamicCastObjCClass();
          if (v10)
          {
            v11 = v10;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v12 = [v9 value];
            if (v12 && (v13 = v12, v14 = [v12 value], v13, v15 = objc_msgSend(v14, sel_valueType), v14, v15))
            {
              v16 = [v11 mutableCopy];
              if (v16)
              {
                v17 = v16;
                _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
                v18 = v17;
                v19 = v15;
                [v18 __swift_setObject_forKeyedSubscript_];
                swift_unknownObjectRelease();

                swift_unknownObjectRelease();
                swift_unknownObjectRelease();

                v7 = v18;
LABEL_15:
                v20 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
                v21 = sub_2749FCD64();
                [v20 encodeObject:v7 forKey:v21];
                swift_unknownObjectRelease();

                [v20 finishEncoding];
                OUTLINED_FUNCTION_40_13(6);
                OUTLINED_FUNCTION_24_17();

                OUTLINED_FUNCTION_40_13(5);
                OUTLINED_FUNCTION_24_17();

                v22 = [v20 encodedData];
                v23 = sub_2749F9094();
                v25 = v24;

                sub_27493C23C();
                sub_2749FDC44();
                sub_2747BD02C(v23, v25);
                swift_getObjectType();
                ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
                v27 = NSStringFromClass(ObjCClassFromMetadata);
                _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

                OUTLINED_FUNCTION_40_13(4);
                OUTLINED_FUNCTION_24_17();
                v28 = OUTLINED_FUNCTION_18_22();
                v29(v28);
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();

                goto LABEL_4;
              }

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
            }
          }
        }
      }

      swift_unknownObjectRetain_n();
      goto LABEL_15;
    }
  }

  v5 = OUTLINED_FUNCTION_18_22();
  v6(v5);
LABEL_4:
  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_31_15();
}

uint64_t SmartShortcutPickerActionConfiguration.Parameter.hash(into:)()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 64);
  sub_2749FCE24();
  OUTLINED_FUNCTION_57_3();
  sub_2749FCE24();
  if (v1)
  {
    OUTLINED_FUNCTION_2_40();
    sub_2749FCE24();
    MEMORY[0x277C5FB60]([v2 hash]);
  }

  else
  {
    OUTLINED_FUNCTION_5_37();
    OUTLINED_FUNCTION_46_8();
    sub_2749FCE24();
  }

  OUTLINED_FUNCTION_68();

  return sub_2749FCE24();
}

uint64_t SmartShortcutPickerActionConfiguration.Parameter.hashValue.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 64);
  OUTLINED_FUNCTION_99_0();
  sub_2749FCE24();
  sub_2749FCE24();
  if (v1)
  {
    OUTLINED_FUNCTION_2_40();
    sub_2749FCE24();
    MEMORY[0x277C5FB60]([v2 hash]);
  }

  else
  {
    OUTLINED_FUNCTION_5_37();
    OUTLINED_FUNCTION_46_8();
    sub_2749FCE24();
  }

  OUTLINED_FUNCTION_68();
  sub_2749FCE24();
  return sub_2749FDE44();
}

uint64_t sub_27493B1CC()
{
  sub_2749FDDF4();
  SmartShortcutPickerActionConfiguration.Parameter.hash(into:)();
  return sub_2749FDE44();
}

uint64_t SmartShortcutPickerActionConfiguration.displayString.getter()
{
  memcpy(__dst, v0, 0x81uLL);
  if (sub_274772C3C(__dst) != 1)
  {
    CGSizeMake(__dst);
LABEL_5:

    return OUTLINED_FUNCTION_44();
  }

  if (!*(CGSizeMake(__dst) + 72))
  {
    goto LABEL_5;
  }

  v1 = OUTLINED_FUNCTION_63();
  MEMORY[0x277C5EBC0](v1);
  MEMORY[0x277C5EBC0](125, 0xE100000000000000);
  sub_2748A5874();
  sub_2748A58C8();
  sub_2749FD204();

  return OUTLINED_FUNCTION_44();
}

uint64_t SmartShortcutPickerCodableWrapper.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_3_5();
  sub_2749FDE64();
  if (!v2)
  {
    OUTLINED_FUNCTION_50_9(v16, v16[3]);
    sub_27493C0C8();
    sub_2749FDCD4();
    sub_27471CF08(0, &qword_280970288);
    v5 = sub_2749FD3A4();
    v8 = v5;
    if (v5)
    {
      v9 = OUTLINED_FUNCTION_99();
      sub_2747BD02C(v9, v10);
      *a2 = v8;
    }

    else
    {
      sub_2749FD9B4();
      OUTLINED_FUNCTION_47_6();
      v13 = v12;
      sub_2749FD934();
      MEMORY[0x277C5EBC0](0xD000000000000031, 0x8000000274A33E70);
      v14 = sub_2749FDEE4();
      MEMORY[0x277C5EBC0](v14);

      sub_2749FD9A4();
      OUTLINED_FUNCTION_9_3();
      (*(v15 + 104))(v13);
      swift_willThrow();
      v6 = OUTLINED_FUNCTION_99();
      sub_2747BD02C(v6, v7);
    }

    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t SmartShortcutPickerCodableWrapper.encode(to:)(void *a1)
{
  v11[5] = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v11[0] = 0;
  v4 = [objc_opt_self() archivedDataWithRootObject:v3 requiringSecureCoding:1 error:v11];
  v5 = v11[0];
  if (v4)
  {
    v6 = sub_2749F9094();
    v8 = v7;

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2749FDE84();
    __swift_mutable_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_27493C23C();
    sub_2749FDCE4();
    sub_2747BD02C(v6, v8);
    return __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v10 = v5;
    sub_2749F8FE4();

    return swift_willThrow();
  }
}

void SmartShortcutPickerCodableWrapper.hash(into:)()
{
  v1 = *v0;
  sub_2749FD614();
}

uint64_t SmartShortcutPickerCodableWrapper.hashValue.getter()
{
  sub_2749FDDF4();
  SmartShortcutPickerCodableWrapper.hash(into:)();
  return sub_2749FDE44();
}

uint64_t sub_27493B7DC()
{
  sub_2749FDDF4();
  SmartShortcutPickerCodableWrapper.hash(into:)();
  return sub_2749FDE44();
}

id sub_27493B81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8)
{
  v13 = sub_2749FCD64();

  if (!a4)
  {
    v14 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  v14 = sub_2749FCD64();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = sub_2749FCD64();

LABEL_6:
  v16 = [v8 initWithType:v13 displayString:v14 wfParameterKey:v15 askEachTime:a7 & 1 askEachTimeCollectionFilter:a8];

  return v16;
}

id sub_27493B908()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2749F9074();
  v8[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v8];

  if (v2)
  {
    v3 = v8[0];
  }

  else
  {
    v4 = v8[0];
    sub_2749F8FE4();

    swift_willThrow();
  }

  v5 = OUTLINED_FUNCTION_70_1();
  sub_2747BD02C(v5, v6);
  return v2;
}

id sub_27493B9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v11 = sub_2749FCD64();

  if (!a4)
  {
    v12 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12 = sub_2749FCD64();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = sub_2749FCD64();

LABEL_6:
  v14 = [v7 initWithType:v11 displayString:v12 wfParameterKey:v13 askEachTime:a7 & 1];

  return v14;
}

id sub_27493BABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_2749FCD64();

  if (!a4)
  {
    v12 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12 = sub_2749FCD64();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = sub_2749FCD64();

LABEL_6:
  v14 = [v7 initWithType:v11 displayString:v12 wfParameterKey:v13 wfSerializedRepresentation:a7];

  swift_unknownObjectRelease();
  return v14;
}

uint64_t sub_27493BB9C(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

id sub_27493BBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_2749FCD64();
  v11 = [a6 valueFromSerializedRepresentation:a1 variableProvider:a2 parameter:a3 bundleIdentifier:v10];

  return v11;
}

unint64_t sub_27493BC64()
{
  result = qword_280970160;
  if (!qword_280970160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970160);
  }

  return result;
}

unint64_t sub_27493BCB8()
{
  result = qword_280970198;
  if (!qword_280970198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970198);
  }

  return result;
}

unint64_t sub_27493BD0C()
{
  result = qword_2809701A0;
  if (!qword_2809701A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809701A0);
  }

  return result;
}

unint64_t sub_27493BD60()
{
  result = qword_2809701A8;
  if (!qword_2809701A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809701A8);
  }

  return result;
}

unint64_t sub_27493BDB4()
{
  result = qword_2809701B0;
  if (!qword_2809701B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809701B0);
  }

  return result;
}

unint64_t sub_27493BE08()
{
  result = qword_2809701B8;
  if (!qword_2809701B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809701B8);
  }

  return result;
}

unint64_t sub_27493BE5C()
{
  result = qword_2809701C0;
  if (!qword_2809701C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809701C0);
  }

  return result;
}

unint64_t sub_27493BEB0()
{
  result = qword_2809701D8;
  if (!qword_2809701D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809701D8);
  }

  return result;
}

unint64_t sub_27493BF04()
{
  result = qword_280970200;
  if (!qword_280970200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970200);
  }

  return result;
}

unint64_t sub_27493BF58()
{
  result = qword_280970208;
  if (!qword_280970208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970208);
  }

  return result;
}

unint64_t sub_27493BFAC()
{
  result = qword_280970210;
  if (!qword_280970210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970210);
  }

  return result;
}

uint64_t sub_27493C000(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280970098);
    a2();
    OUTLINED_FUNCTION_122();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27493C074()
{
  result = qword_280970228;
  if (!qword_280970228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970228);
  }

  return result;
}

unint64_t sub_27493C0C8()
{
  result = qword_280970230;
  if (!qword_280970230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970230);
  }

  return result;
}

id WFAllPropertyListObjectTypes()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v0 setWithObjects:{v1, v2, v3, v4, v5, objc_opt_class(), 0}];

  return v6;
}

uint64_t sub_27493C1E0(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_9_3();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_27493C23C()
{
  result = qword_280970270;
  if (!qword_280970270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970270);
  }

  return result;
}

unint64_t sub_27493C294()
{
  result = qword_280970290;
  if (!qword_280970290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970290);
  }

  return result;
}

unint64_t sub_27493C2EC()
{
  result = qword_280970298;
  if (!qword_280970298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970298);
  }

  return result;
}

unint64_t sub_27493C344()
{
  result = qword_2809702A0;
  if (!qword_2809702A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809702A0);
  }

  return result;
}

unint64_t sub_27493C39C()
{
  result = qword_2809702A8;
  if (!qword_2809702A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809702A8);
  }

  return result;
}

unint64_t sub_27493C3F4()
{
  result = qword_2809702B0;
  if (!qword_2809702B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809702B0);
  }

  return result;
}

unint64_t sub_27493C44C()
{
  result = qword_2809702B8[0];
  if (!qword_2809702B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2809702B8);
  }

  return result;
}

uint64_t sub_27493C4C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 129))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 128);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27493C504(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
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
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 128) = -a2;
    }
  }

  return result;
}

uint64_t sub_27493C5B4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_27493C5F4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_27493C658(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27493C6A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_27493C704(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_27493C740()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for SmartShortcutPickerActionConfiguration.Parameter.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for SmartShortcutPickerActionConfiguration.Parameter.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_27493C938(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          result = OUTLINED_FUNCTION_6_29(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}